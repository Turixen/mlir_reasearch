# sparse_dense_matmul_with_comments.S
# --------------------------------------------------
# Sparse-Dense Matrix Multiply (RISC-V Vector Assembly)
# Fully commented, line-by-line
# --------------------------------------------------

sparse_dense_matmul:                    # Function entry point
    .cfi_startproc

# -- Prologue: save callee-saved registers and allocate stack --
    addi    sp, sp, -96                  # Allocate 96 bytes stack frame
    .cfi_def_cfa_offset 96
    sd      s0, 88(sp)                   # Save s0
    sd      s1, 80(sp)                   # Save s1
    sd      s2, 72(sp)                   # Save s2
    sd      s3, 64(sp)                   # Save s3
    sd      s4, 56(sp)                   # Save s4
    sd      s5, 48(sp)                   # Save s5
    sd      s6, 40(sp)                   # Save s6
    sd      s7, 32(sp)                   # Save s7
    sd      s8, 24(sp)                   # Save s8
    sd      s9, 16(sp)                   # Save s9
    sd      s10, 8(sp)                   # Save s10

# -- Initializations --
    li      t6, 0                        # t6 = 0 (row block index)
    li      t5, 0                        # t5 = 0 (outer loop counter)

# Load function parameters from stack
    ld      s7, 208(sp)                  # Load argument (output matrix pointer?)
    ld      a6, 304(sp)
    ld      t0, 296(sp)
    ld      t1, 288(sp)
    ld      t2, 280(sp)
    ld      t3, 272(sp)
    ld      s8, 264(sp)                  # Load pointer to dense matrix A
    ld      t4, 256(sp)
    ld      s3, 128(sp)                  # Load pointer to sparse matrix values

# Vector configuration
    csrr    a1, vlenb                    # Load vector length in bytes into a1
    li      s6, 99                       # s6 = 99 (maximum number of iterations)
    slli    s9, a1, 2                    # s9 = 4 * VLENB (vector advance stride)
    srli    s10, a1, 1                   # s10 = VLENB / 2 (half stride)
    li      s2, 800                      # s2 = 800 (row width or stride)

# Set up vector registers
    vsetvli  a3, zero, e32, m2, ta, ma    # Vector length for e32, m2
    vid.v    v8                           # Initialize v8 with index values [0,1,2,...]
    vsetvli  zero, zero, e64, m4, ta, ma   # Vector length for e64, m4
    vmv.v.i  v12, 0                       # Set all elements of v12 to 0

# Jump to main processing loop
    j       .LBB0_2

# -- Outer loop: over blocks of sparse matrix --
.LBB0_1:
    addi    t5, t5, 1                    # t5 += 1 (next block)
    addi    t6, t6, 800                  # t6 += 800 (move to next output block)

.LBB0_2:
    blt     s6, t5, .LBB0_11              # Exit if block index > 99

# Load block metadata
    slli    a3, t5, 3                    # a3 = t5 * 8 (offset)
    add     a3, a3, a2                   # a3 = pointer to block metadata
    lwu     a4, 4(a3)                    # Load upper 32 bits of start index
    lwu     a5, 0(a3)                    # Load lower 32 bits of start index
    lwu     s0, 12(a3)                   # Load upper 32 bits of end index
    lwu     a3, 8(a3)                    # Load lower 32 bits of end index

# Combine to 64-bit values
    slli    a4, a4, 32
    or      s5, a4, a5                   # s5 = start index
    slli    s0, s0, 32
    or      s4, s0, a3                   # s4 = end index

# Jump to inner block loop
    j       .LBB0_5

# -- Inner loop: over entries in the block --
.LBB0_4:
    addi    s5, s5, 1                    # s5 += 1 (next sparse entry)

.LBB0_5:
    bge     s5, s4, .LBB0_1               # If all entries processed, go to next block

# Process one sparse entry
    li      s1, 0                        # s1 = 0 (inner-inner loop counter)
    slli    a3, s5, 3                    # a3 = s5 * 8 (offset into sparse array)
    add     a4, a7, a3                   # a4 = pointer to index entry
    lwu     a5, 4(a4)                    # Load upper 32 bits of index
    lwu     a4, 0(a4)                    # Load lower 32 bits of index
    add     a3, a3, s3                   # a3 = pointer to matrix value
    fld     fa5, 0(a3)                   # Load floating point value

# Combine index into full address
    slli    a5, a5, 32
    or      a4, a4, a5
    mul     s0, a4, s2                   # s0 = index * 800

    li      a3, 100                      # a3 = 100 (iterations for inner-inner loop)
    mv      a1, t6                       # a1 = current output offset

# -- Inner-inner loop: Vector multiply-add --
.LBB0_8:
    vsetvli  zero, zero, e32, m2, ta, ma  # Set vector config
    vmslt.vx v0, v8, a5                  # Mask: (v8[i] < a5)

    add     a5, s8, s0                   # a5 = dense matrix pointer
    vmv4r.v v16, v12                     # v16 = 0 (accumulator)
    add     a4, s7, a1                   # a4 = output matrix pointer
    vmv4r.v v20, v12                     # v20 = 0

    vsetvli  zero, zero, e64, m4, ta, mu  # e64, m4
    vle64.v  v16, (a5), v0.t             # Load dense values from A with mask
    vle64.v  v20, (a4), v0.t             # Load output values from B with mask

    add     s1, s1, s10                  # Advance by half vector
    add     s0, s0, s9                   # Move A matrix pointer
    add     a1, a1, s9                   # Move B matrix pointer

    vfmul.vf v20, v20, fa5               # v20 = v20 * scalar (scale)
    vfadd.vv v16, v16, v20               # v16 = v16 + v20
    vse64.v  v16, (a5), v0.t             # Store back to dense matrix with mask

    sub     a3, a3, s10                  # Decrement iteration count

# Continue inner-inner loop
    blt     s6, s1, .LBB0_4               # If s1 > 99, finish
    mv      a5, a3
    blt     a3, s10, .LBB0_7
    mv      a5, s10
    j       .LBB0_7

# -- Function end: store back results --
.LBB0_11:
    sd      t4, 0(a0)                    # Save final output
    sd      s8, 8(a0)
    sd      t3, 16(a0)
    sd      t2, 24(a0)
    sd      t1, 32(a0)
    sd      t0, 40(a0)
    sd      a6, 48(a0)

# -- Epilogue: restore registers and return --
    ld      s0, 88(sp)
    ld      s1, 80(sp)
    ld      s2, 72(sp)
    ld      s3, 64(sp)
    ld      s4, 56(sp)
    ld      s5, 48(sp)
    ld      s6, 40(sp)
    ld      s7, 32(sp)
    ld      s8, 24(sp)
    ld      s9, 16(sp)
    ld      s10, 8(sp)

    .cfi_restore s0
    .cfi_restore s1
    .cfi_restore s2
    .cfi_restore s3
    .cfi_restore s4
    .cfi_restore s5
    .cfi_restore s6
    .cfi_restore s7
    .cfi_restore s8
    .cfi_restore s9
    .cfi_restore s10

    addi    sp, sp, 96                   # Deallocate stack frame
    .cfi_def_cfa_offset 0
    ret                                  # Return
