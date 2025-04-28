	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	sparse_dense_matmul             # -- Begin function sparse_dense_matmul
	.p2align	1
	.type	sparse_dense_matmul,@function
sparse_dense_matmul:                    # @sparse_dense_matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	.cfi_offset s9, -80
	.cfi_offset s10, -88
	li	s2, 0
	li	t5, 0
	ld	s7, 208(sp)
	ld	a6, 304(sp)
	ld	t0, 296(sp)
	ld	t1, 288(sp)
	ld	t2, 280(sp)
	ld	t3, 272(sp)
	ld	s8, 264(sp)
	ld	t4, 256(sp)
	ld	s3, 128(sp)
	csrr	a1, vlenb
	li	t6, 3
	slli	s9, a1, 2
	srli	s10, a1, 1
	li	s6, 2
	vsetvli	a3, zero, e32, m2, ta, ma
	vid.v	v8
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	s2, s2, 24
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	t6, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a3, t5, 3
	add	a3, a3, a2
	lwu	a4, 4(a3)
	lwu	a5, 0(a3)
	lwu	s0, 12(a3)
	lwu	a3, 8(a3)
	slli	a4, a4, 32
	or	s5, a4, a5
	slli	s0, s0, 32
	or	s4, s0, a3
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	slli	a3, s5, 3
	add	a4, a7, a3
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a3, a3, s3
	fld	fa5, 0(a3)
	slli	a5, a5, 32
	or	a4, a4, a5
	slli	a3, a4, 3
	slli	a4, a4, 5
	sub	s0, a4, a3
	li	a3, 3
	mv	a1, s2
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a5
	add	a5, s8, s0
	vmv4r.v	v16, v12
	add	a4, s7, a1
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v16, (a5), v0.t
	vle64.v	v20, (a4), v0.t
	add	s1, s1, s10
	add	s0, s0, s9
	add	a1, a1, s9
	vfmul.vf	v20, v20, fa5
	vfadd.vv	v16, v16, v20
	vse64.v	v16, (a5), v0.t
	sub	a3, a3, s10
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, s1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a5, a3
	blt	a3, s10, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a5, s10
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sparse_dense_matmul, .Lfunc_end0-sparse_dense_matmul
	.cfi_endproc
                                        # -- End function
	.globl	compute_sum                     # -- Begin function compute_sum
	.p2align	1
	.type	compute_sum,@function
compute_sum:                            # @compute_sum
	.cfi_startproc
# %bb.0:
	li	a7, 0
	li	a2, 0
	fmv.d.x	fa0, zero
	li	a6, 3
	li	a4, 2
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	a2, a2, 1
	addi	a7, a7, 24
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	blt	a6, a2, .LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	li	a5, 0
	mv	a3, a7
	bltz	a4, .LBB1_1
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, a1, a3
	fld	fa5, 0(a0)
	addi	a5, a5, 1
	fadd.d	fa0, fa0, fa5
	addi	a3, a3, 8
	bge	a4, a5, .LBB1_4
	j	.LBB1_1
.LBB1_5:
	ret
.Lfunc_end1:
	.size	compute_sum, .Lfunc_end1-compute_sum
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x404f800000000000              # double 63
	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -464
	.cfi_def_cfa_offset 464
	sd	ra, 456(sp)                     # 8-byte Folded Spill
	sd	s0, 448(sp)                     # 8-byte Folded Spill
	sd	s1, 440(sp)                     # 8-byte Folded Spill
	sd	s2, 432(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	li	a0, 160
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 272
	call	assemble_sparse_tensor
	addi	a0, sp, 392
	addi	t0, sp, 328
	ld	a5, 304(sp)
	ld	a6, 312(sp)
	ld	a7, 320(sp)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	ld	a1, 272(sp)
	ld	a2, 280(sp)
	ld	a3, 288(sp)
	ld	a4, 296(sp)
	vsetivli	zero, 8, e64, m4, ta, ma
	vle64.v	v12, (t0)
	ld	t2, 424(sp)
	sd	s0, 160(sp)
	sd	s1, 168(sp)
	sd	zero, 176(sp)
	li	s2, 1
	lui	t0, %hi(.L__constant_4x3xf64_0)
	addi	t0, t0, %lo(.L__constant_4x3xf64_0)
	lui	t1, 228023
	lui	s1, 4144
	addi	s0, sp, 184
	slli	t1, t1, 2
	addi	s1, s1, 772
	addi	a0, t1, -273
	sd	t2, 96(sp)
	sd	a0, 104(sp)
	sd	t0, 112(sp)
	sd	s2, 152(sp)
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	lui	a0, 12336
	addi	a0, a0, 1024
	vmv.s.x	v11, a0
	addi	a0, sp, 120
	vsetivli	zero, 4, e64, m2, ta, ma
	vsext.vf8	v12, v10
	vse64.v	v12, (s0)
	addi	s1, sp, 64
	vsext.vf8	v12, v11
	vse64.v	v12, (a0)
	addi	a0, sp, 216
	vse64.v	v8, (s1)
	call	sparse_dense_matmul
	li	a7, 0
	li	t0, 0
	ld	a4, 248(sp)
	ld	a5, 256(sp)
	ld	a6, 264(sp)
	ld	a0, 216(sp)
	ld	a1, 224(sp)
	ld	a2, 232(sp)
	ld	a3, 240(sp)
	li	t1, 3
	li	t2, 2
	lui	t3, %hi(.L__constant_4x3xf64)
	addi	t3, t3, %lo(.L__constant_4x3xf64)
	j	.LBB2_2
.LBB2_1:                                #   in Loop: Header=BB2_2 Depth=1
	addi	t0, t0, 1
	addi	a7, a7, 24
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	blt	t1, t0, .LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	li	t4, 0
	mv	t5, a7
	bltz	t2, .LBB2_1
.LBB2_4:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	s1, a1, t5
	fld	fa5, 0(s1)
	add	s0, t3, t5
	fld	fa4, 0(s0)
	addi	t4, t4, 1
	feq.d	s1, fa5, fa4
	and	s2, s2, s1
	addi	t5, t5, 8
	bge	t2, t4, .LBB2_4
	j	.LBB2_1
.LBB2_5:
	call	compute_sum
	lui	a0, %hi(.LCPI2_0)
	fld	fa5, %lo(.LCPI2_0)(a0)
	feq.d	a0, fa0, fa5
	and	a0, s2, a0
	li	a1, 2
	sub	a0, a1, a0
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s0, 448(sp)                     # 8-byte Folded Reload
	ld	s1, 440(sp)                     # 8-byte Folded Reload
	ld	s2, 432(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 464
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor
.LCPI3_0:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor
	.p2align	1
	.type	assemble_sparse_tensor,@function
assemble_sparse_tensor:                 # @assemble_sparse_tensor
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_5xindex)
	lui	a7, %hi(.L__constant_6xindex)
	addi	a7, a7, %lo(.L__constant_6xindex)
	lui	t0, %hi(.L__constant_6xf64)
	addi	t0, t0, %lo(.L__constant_6xf64)
	li	a6, 5
	li	t1, 4
	lui	a4, 228023
	lui	a2, %hi(.LCPI3_0)
	addi	a2, a2, %lo(.LCPI3_0)
	addi	a3, a0, 56
	lui	a5, %hi(.LCPI3_1)
	addi	a5, a5, %lo(.LCPI3_1)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	addi	a2, a1, %lo(.L__constant_5xindex)
	ld	a1, %lo(.L__constant_5xindex+32)(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a2, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	addi	a2, a0, 16
	sd	t1, 128(a0)
	sd	a6, 136(a0)
	sd	a1, 144(a0)
	sd	a1, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a5)
	addi	a0, a0, 96
	lui	a1, 16400
	addi	a1, a1, 1536
	vse64.v	v8, (a2)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end3:
	.size	assemble_sparse_tensor, .Lfunc_end3-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.size	.L__constant_5xindex, 40

	.type	.L__constant_6xindex,@object    # @__constant_6xindex
	.p2align	6, 0x0
.L__constant_6xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.size	.L__constant_6xindex, 48

	.type	.L__constant_6xf64,@object      # @__constant_6xf64
	.p2align	6, 0x0
.L__constant_6xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4014000000000000              # double 5
	.quad	0x4008000000000000              # double 3
	.quad	0x4000000000000000              # double 2
	.quad	0x4010000000000000              # double 4
	.quad	0x4018000000000000              # double 6
	.size	.L__constant_6xf64, 48

	.type	.L__constant_4x3xf64_0,@object  # @__constant_4x3xf64_0
	.p2align	6, 0x0
.L__constant_4x3xf64_0:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_4x3xf64_0, 96

	.type	.L__constant_4x3xf64,@object    # @__constant_4x3xf64
	.p2align	6, 0x0
.L__constant_4x3xf64:
	.quad	0x4008000000000000              # double 3
	.quad	0x4008000000000000              # double 3
	.quad	0x4008000000000000              # double 3
	.quad	0x4008000000000000              # double 3
	.quad	0x4008000000000000              # double 3
	.quad	0x4008000000000000              # double 3
	.quad	0x4010000000000000              # double 4
	.quad	0x4010000000000000              # double 4
	.quad	0x4010000000000000              # double 4
	.quad	0x4026000000000000              # double 11
	.quad	0x4026000000000000              # double 11
	.quad	0x4026000000000000              # double 11
	.size	.L__constant_4x3xf64, 96

	.section	".note.GNU-stack","",@progbits
