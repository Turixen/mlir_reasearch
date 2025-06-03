	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	compute_sum                     # -- Begin function compute_sum
	.p2align	1
	.type	compute_sum,@function
compute_sum:                            # @compute_sum
	.cfi_startproc
# %bb.0:
	li	a6, 0
	li	a2, 0
	fmv.d.x	fa0, zero
	li	a3, 99
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	a2, a2, 1
	addi	a6, a6, 800
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	blt	a3, a2, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	a4, 0
	mv	a0, a6
	bltz	a3, .LBB0_1
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, a1, a0
	fld	fa5, 0(a5)
	addi	a4, a4, 1
	fadd.d	fa0, fa0, fa5
	addi	a0, a0, 8
	bge	a3, a4, .LBB0_4
	j	.LBB0_1
.LBB0_5:
	ret
.Lfunc_end0:
	.size	compute_sum, .Lfunc_end0-compute_sum
	.cfi_endproc
                                        # -- End function
	.globl	sparse_sparse_matmul            # -- Begin function sparse_sparse_matmul
	.p2align	1
	.type	sparse_sparse_matmul,@function
sparse_sparse_matmul:                   # @sparse_sparse_matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -192
	.cfi_def_cfa_offset 192
	sd	ra, 184(sp)                     # 8-byte Folded Spill
	sd	s0, 176(sp)                     # 8-byte Folded Spill
	sd	s1, 168(sp)                     # 8-byte Folded Spill
	sd	s2, 160(sp)                     # 8-byte Folded Spill
	sd	s3, 152(sp)                     # 8-byte Folded Spill
	sd	s4, 144(sp)                     # 8-byte Folded Spill
	sd	s5, 136(sp)                     # 8-byte Folded Spill
	sd	s6, 128(sp)                     # 8-byte Folded Spill
	sd	s7, 120(sp)                     # 8-byte Folded Spill
	sd	s8, 112(sp)                     # 8-byte Folded Spill
	sd	s9, 104(sp)                     # 8-byte Folded Spill
	sd	s10, 96(sp)                     # 8-byte Folded Spill
	sd	s11, 88(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	.cfi_offset s11, -104
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0f, 0x72, 0x00, 0x11, 0xc0, 0x01, 0x22, 0x11, 0xdc, 0x00, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 192 + 92 * vlenb
	li	t6, 0
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 504(a1)
	sd	a1, 64(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 496(a1)
	sd	a1, 56(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 488(a1)
	sd	a1, 48(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 480(a1)
	sd	a1, 40(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 472(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t5, 464(a1)
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 456(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s3, 224(a1)
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s4, 384(a1)
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s5, 304(a1)
	csrr	a1, vlenb
	li	a3, 92
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a6, 344(a1)
	csrr	a1, vlenb
	li	s2, 99
	vsetvli	a3, zero, e32, m8, ta, ma
	vid.v	v8
	slli	s10, a1, 5
	slli	a4, a1, 2
	slli	a3, a1, 1
	slli	ra, a1, 4
	slli	t4, a1, 3
	vadd.vx	v8, v8, a3
	addi	a1, sp, 80
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	sub	t3, s10, t4
	li	s6, 800
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t6, t6, 1
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_8 Depth 3
	blt	s2, t6, .LBB1_11
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	slli	a3, t6, 3
	add	a3, a3, a2
	lwu	t0, 4(a3)
	lwu	s0, 0(a3)
	lwu	a5, 12(a3)
	lwu	a3, 8(a3)
	slli	t0, t0, 32
	or	s9, t0, s0
	slli	a5, a5, 32
	or	s8, a5, a3
	mul	a5, t6, s6
	add	a5, a5, t5
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	addi	s9, s9, 1
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
	bge	s9, s8, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	slli	s0, s9, 3
	add	a3, a7, s0
	lwu	t0, 0(a3)
	lwu	a3, 4(a3)
	slli	t0, t0, 3
	slli	a3, a3, 35
	or	a3, a3, t0
	add	a3, a3, s5
	lwu	t0, 0(a3)
	lwu	t1, 4(a3)
	lwu	s7, 8(a3)
	lwu	a3, 12(a3)
	add	s0, s0, s3
	fld	fa5, 0(s0)
	slli	t1, t1, 32
	slli	a3, a3, 32
	or	t1, t1, t0
	or	s11, a3, s7
	slli	s7, t1, 3
	add	a3, s4, s7
	add	s7, s7, a6
	sub	t0, s11, t1
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	vsetvli	t2, zero, e32, m8, ta, ma
	vmv.v.x	v8, s0
	csrr	a1, vlenb
	li	t2, 76
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	vsetvli	s0, zero, e64, m8, ta, ma
	vmv.v.i	v24, 0
	addi	a1, sp, 80
	vl8r.v	v16, (a1)                       # Unknown-size Folded Reload
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vv	v0, v16, v8
	csrr	a1, vlenb
	li	t2, 35
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs1r.v	v0, (a1)                        # Unknown-size Folded Spill
	add	s0, s7, ra
	vmv8r.v	v8, v24
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v8, (s0), v0.t
	csrr	a1, vlenb
	li	t2, 84
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	add	s1, s7, t3
	csrr	a1, vlenb
	li	t2, 76
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vv	v0, v20, v12
	csrr	a1, vlenb
	li	t2, 26
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs1r.v	v0, (a1)                        # Unknown-size Folded Spill
	vsetvli	s0, zero, e32, m8, ta, ma
	vid.v	v16
	vsetvli	s0, zero, e32, m4, ta, ma
	vmslt.vv	v7, v16, v8
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 80
	vs1r.v	v7, (a1)                        # Unknown-size Folded Spill
	vmslt.vv	v8, v20, v12
	csrr	a1, vlenb
	li	t2, 25
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs1r.v	v8, (a1)                        # Unknown-size Folded Spill
	vmv8r.v	v16, v24
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v16, (s1), v0.t
	add	a1, s7, t4
	vmv.v.i	v24, 0
	vmv1r.v	v0, v8
	vle64.v	v24, (a1), v0.t
	csrr	a1, vlenb
	li	t2, 60
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v24, (a1)                       # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	vmv.v.i	v24, 0
	vle64.v	v24, (s7), v0.t
	csrr	a1, vlenb
	li	t2, 84
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	vsll.vi	v0, v8, 3
	csrr	a1, vlenb
	li	t2, 68
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v0, (a1)                        # Unknown-size Folded Spill
	vsll.vi	v16, v16, 3
	csrr	a1, vlenb
	li	t2, 76
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v16, (a1)                       # Unknown-size Folded Spill
	vmv.v.i	v16, 0
	vsll.vi	v24, v24, 3
	csrr	a1, vlenb
	li	t2, 52
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v24, (a1)                       # Unknown-size Folded Spill
	vmv.v.i	v8, 0
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 80
	vl1r.v	v4, (a1)                        # Unknown-size Folded Reload
	vmv1r.v	v0, v4
	vluxei64.v	v8, (a5), v24, v0.t
	csrr	a1, vlenb
	li	t2, 44
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	csrr	a1, vlenb
	li	t2, 60
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	vsll.vi	v8, v8, 3
	csrr	a1, vlenb
	li	t2, 60
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	vmv.v.i	v24, 0
	csrr	a1, vlenb
	li	t2, 35
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl1r.v	v6, (a1)                        # Unknown-size Folded Reload
	vmv1r.v	v0, v6
	csrr	a1, vlenb
	li	t2, 68
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	vluxei64.v	v24, (a5), v8, v0.t
	csrr	a1, vlenb
	li	t2, 36
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v24, (a1)                       # Unknown-size Folded Spill
	csrr	a1, vlenb
	li	t2, 84
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v16, (a1)                       # Unknown-size Folded Spill
	csrr	a1, vlenb
	li	t2, 26
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl1r.v	v7, (a1)                        # Unknown-size Folded Reload
	vmv1r.v	v0, v7
	csrr	a1, vlenb
	li	t2, 76
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	csrr	a1, vlenb
	li	t2, 84
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v24, (a1)                       # Unknown-size Folded Reload
	vluxei64.v	v24, (a5), v8, v0.t
	csrr	a1, vlenb
	li	t2, 84
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v24, (a1)                       # Unknown-size Folded Spill
	vmv.v.i	v24, 0
	csrr	a1, vlenb
	li	t2, 25
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl1r.v	v5, (a1)                        # Unknown-size Folded Reload
	vmv1r.v	v0, v5
	csrr	a1, vlenb
	li	t2, 60
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	vluxei64.v	v24, (a5), v8, v0.t
	csrr	a1, vlenb
	slli	t2, a1, 4
	add	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v24, (a1)                       # Unknown-size Folded Spill
	add	a1, a3, t3
	vmv.v.i	v8, 0
	vmv1r.v	v0, v7
	vle64.v	v8, (a1), v0.t
	csrr	a1, vlenb
	li	t2, 27
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	add	a1, a3, ra
	vmv.v.i	v24, 0
	vmv1r.v	v0, v6
	vle64.v	v24, (a1), v0.t
	add	a1, a3, t4
	vmv.v.i	v8, 0
	vmv1r.v	v0, v5
	vle64.v	v8, (a1), v0.t
	vmv1r.v	v0, v4
	vle64.v	v16, (a3), v0.t
	vfmul.vf	v24, v24, fa5
	csrr	a1, vlenb
	slli	t2, a1, 3
	add	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vs8r.v	v24, (a1)                       # Unknown-size Folded Spill
	vfmul.vf	v8, v8, fa5
	vfmul.vf	v16, v16, fa5
	csrr	a1, vlenb
	slli	t2, a1, 4
	add	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v24, (a1)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	csrr	a1, vlenb
	li	t2, 44
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v24, (a1)                       # Unknown-size Folded Reload
	vfadd.vv	v16, v24, v16
	csrr	a1, vlenb
	li	t2, 52
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v24, (a1)                       # Unknown-size Folded Reload
	vsoxei64.v	v16, (a5), v24, v0.t
	vmv1r.v	v0, v5
	csrr	a1, vlenb
	li	t2, 60
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v16, (a1)                       # Unknown-size Folded Reload
	vsoxei64.v	v8, (a5), v16, v0.t
	csrr	a1, vlenb
	li	t2, 36
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	csrr	a1, vlenb
	slli	t2, a1, 3
	add	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v16, (a1)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v8, v16
	vmv1r.v	v0, v6
	csrr	a1, vlenb
	li	t2, 68
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v16, (a1)                       # Unknown-size Folded Reload
	vsoxei64.v	v8, (a5), v16, v0.t
	csrr	a1, vlenb
	li	t2, 27
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v8, (a1)                        # Unknown-size Folded Reload
	vfmul.vf	v8, v8, fa5
	csrr	a1, vlenb
	li	t2, 84
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v16, (a1)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v16, v8
	vmv1r.v	v0, v7
	csrr	a1, vlenb
	li	t2, 76
	mul	a1, a1, t2
	add	a1, a1, sp
	addi	a1, a1, 80
	vl8r.v	v16, (a1)                       # Unknown-size Folded Reload
	vsoxei64.v	v8, (a5), v16, v0.t
	add	t1, t1, a4
	add	s7, s7, s10
	add	a3, a3, s10
	sub	t0, t0, a4
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	t1, s11, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	s0, a4
	blt	a4, t0, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	s0, t0
	j	.LBB1_7
.LBB1_11:
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 0(a0)
	sd	t5, 8(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 16(a0)
	ld	a1, 40(sp)                      # 8-byte Folded Reload
	sd	a1, 24(a0)
	ld	a1, 48(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 56(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 64(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	li	a1, 92
	mul	a0, a0, a1
	add	sp, sp, a0
	.cfi_def_cfa sp, 192
	ld	ra, 184(sp)                     # 8-byte Folded Reload
	ld	s0, 176(sp)                     # 8-byte Folded Reload
	ld	s1, 168(sp)                     # 8-byte Folded Reload
	ld	s2, 160(sp)                     # 8-byte Folded Reload
	ld	s3, 152(sp)                     # 8-byte Folded Reload
	ld	s4, 144(sp)                     # 8-byte Folded Reload
	ld	s5, 136(sp)                     # 8-byte Folded Reload
	ld	s6, 128(sp)                     # 8-byte Folded Reload
	ld	s7, 120(sp)                     # 8-byte Folded Reload
	ld	s8, 112(sp)                     # 8-byte Folded Reload
	ld	s9, 104(sp)                     # 8-byte Folded Reload
	ld	s10, 96(sp)                     # 8-byte Folded Reload
	ld	s11, 88(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
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
	.cfi_restore s11
	addi	sp, sp, 192
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sparse_sparse_matmul, .Lfunc_end1-sparse_sparse_matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x413ba8cae18dde7a              # double 1812682.8810709999
	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -816
	.cfi_def_cfa_offset 816
	sd	ra, 808(sp)                     # 8-byte Folded Spill
	sd	s0, 800(sp)                     # 8-byte Folded Spill
	sd	s1, 792(sp)                     # 8-byte Folded Spill
	sd	s2, 784(sp)                     # 8-byte Folded Spill
	sd	s3, 776(sp)                     # 8-byte Folded Spill
	sd	s4, 768(sp)                     # 8-byte Folded Spill
	sd	s5, 760(sp)                     # 8-byte Folded Spill
	sd	s6, 752(sp)                     # 8-byte Folded Spill
	sd	s7, 744(sp)                     # 8-byte Folded Spill
	sd	s8, 736(sp)                     # 8-byte Folded Spill
	sd	s9, 728(sp)                     # 8-byte Folded Spill
	sd	s10, 720(sp)                    # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	csrr	a0, vlenb
	li	a1, 6
	mul	a0, a0, a1
	sub	sp, sp, a0
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xb0, 0x06, 0x22, 0x11, 0x06, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 816 + 6 * vlenb
	lui	a0, 20
	addiw	a0, a0, -1856
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s9, a0, -64
	addi	a0, sp, 560
	call	assemble_sparse_tensor1
	addi	a0, sp, 680
	addi	a1, sp, 616
	ld	s2, 592(sp)
	ld	s4, 600(sp)
	ld	s3, 608(sp)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	csrr	a0, vlenb
	slli	a0, a0, 2
	add	a0, a0, sp
	addi	a0, a0, 720
	vs2r.v	v8, (a0)                        # Unknown-size Folded Spill
	ld	s6, 560(sp)
	ld	s5, 568(sp)
	ld	s8, 576(sp)
	ld	s7, 584(sp)
	vsetivli	zero, 8, e64, m4, ta, ma
	vle64.v	v8, (a1)
	addi	a0, sp, 720
	vs4r.v	v8, (a0)                        # Unknown-size Folded Spill
	ld	s1, 712(sp)
	addi	a0, sp, 400
	addi	s10, sp, 400
	call	assemble_sparse_tensor2
	vsetivli	zero, 16, e64, m8, ta, ma
	vle64.v	v8, (s10)
	addi	a0, sp, 528
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v16, (a0)
	sd	s0, 264(sp)
	sd	s9, 272(sp)
	sd	zero, 280(sp)
	sd	s1, 96(sp)
	addi	a0, sp, 720
	vl4r.v	v20, (a0)                       # Unknown-size Folded Reload
	vsetivli	zero, 8, e64, m4, ta, ma
	vse64.v	v20, (sp)
	lui	a0, 5702
	addi	a1, sp, 288
	addi	a2, sp, 232
	addi	a0, a0, 1124
	vmv.s.x	v18, a0
	addi	a3, sp, 104
	vsetivli	zero, 4, e64, m2, ta, ma
	vsext.vf8	v20, v18
	vse64.v	v20, (a1)
	addi	a1, sp, 64
	vse64.v	v16, (a2)
	addi	a0, sp, 344
	vsetivli	zero, 16, e64, m8, ta, ma
	vse64.v	v8, (a3)
	csrr	a2, vlenb
	slli	a2, a2, 2
	add	a2, a2, sp
	addi	a2, a2, 720
	vl2r.v	v8, (a2)                        # Unknown-size Folded Reload
	vsetivli	zero, 4, e64, m2, ta, ma
	vse64.v	v8, (a1)
	mv	a1, s6
	mv	a2, s5
	mv	a3, s8
	mv	a4, s7
	mv	a5, s2
	mv	a6, s4
	mv	a7, s3
	call	sparse_sparse_matmul
	ld	a4, 376(sp)
	ld	a5, 384(sp)
	ld	a6, 392(sp)
	ld	a0, 344(sp)
	ld	a1, 352(sp)
	ld	a2, 360(sp)
	ld	a3, 368(sp)
	call	compute_sum
	lui	a0, %hi(.LCPI2_0)
	fld	fa5, %lo(.LCPI2_0)(a0)
	feq.d	a0, fa0, fa5
	xori	a0, a0, 1
	csrr	a1, vlenb
	li	a2, 6
	mul	a1, a1, a2
	add	sp, sp, a1
	.cfi_def_cfa sp, 816
	ld	ra, 808(sp)                     # 8-byte Folded Reload
	ld	s0, 800(sp)                     # 8-byte Folded Reload
	ld	s1, 792(sp)                     # 8-byte Folded Reload
	ld	s2, 784(sp)                     # 8-byte Folded Reload
	ld	s3, 776(sp)                     # 8-byte Folded Reload
	ld	s4, 768(sp)                     # 8-byte Folded Reload
	ld	s5, 760(sp)                     # 8-byte Folded Reload
	ld	s6, 752(sp)                     # 8-byte Folded Reload
	ld	s7, 744(sp)                     # 8-byte Folded Reload
	ld	s8, 736(sp)                     # 8-byte Folded Reload
	ld	s9, 728(sp)                     # 8-byte Folded Reload
	ld	s10, 720(sp)                    # 8-byte Folded Reload
	.cfi_restore ra
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
	addi	sp, sp, 816
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor1
.LCPI3_0:
	.quad	0                               # 0x0
	.quad	3500                            # 0xdac
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	3500                            # 0xdac
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI3_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor1
	.p2align	1
	.type	assemble_sparse_tensor1,@function
assemble_sparse_tensor1:                # @assemble_sparse_tensor1
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_3500xindex)
	addi	a7, a7, %lo(.L__constant_3500xindex)
	lui	t0, %hi(.L__constant_3500xf64)
	addi	t0, t0, %lo(.L__constant_3500xf64)
	li	a6, 101
	li	a5, 100
	lui	a4, 228023
	lui	a2, %hi(.LCPI3_0)
	addi	a2, a2, %lo(.LCPI3_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI3_1)
	addi	a2, a2, %lo(.LCPI3_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI3_2)
	addi	a1, a1, %lo(.LCPI3_2)
	sd	a5, 128(a0)
	sd	a6, 136(a0)
	sd	a2, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a1)
	addi	a1, a0, 56
	vse64.v	v10, (a1)
	addi	a0, a0, 16
	vse64.v	v8, (a0)
	ret
.Lfunc_end3:
	.size	assemble_sparse_tensor1, .Lfunc_end3-assemble_sparse_tensor1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor2
.LCPI4_0:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI4_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI4_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor2
	.p2align	1
	.type	assemble_sparse_tensor2,@function
assemble_sparse_tensor2:                # @assemble_sparse_tensor2
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
	li	a6, 101
	li	a5, 100
	lui	a4, 228023
	lui	a2, %hi(.LCPI4_0)
	addi	a2, a2, %lo(.LCPI4_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI4_1)
	addi	a2, a2, %lo(.LCPI4_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI4_2)
	addi	a1, a1, %lo(.LCPI4_2)
	sd	a5, 128(a0)
	sd	a6, 136(a0)
	sd	a2, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a1)
	addi	a1, a0, 56
	vse64.v	v10, (a1)
	addi	a0, a0, 16
	vse64.v	v8, (a0)
	ret
.Lfunc_end4:
	.size	assemble_sparse_tensor2, .Lfunc_end4-assemble_sparse_tensor2
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex_0,@object # @__constant_101xindex_0
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex_0:
	.quad	0                               # 0x0
	.quad	34                              # 0x22
	.quad	69                              # 0x45
	.quad	108                             # 0x6c
	.quad	142                             # 0x8e
	.quad	176                             # 0xb0
	.quad	208                             # 0xd0
	.quad	234                             # 0xea
	.quad	276                             # 0x114
	.quad	308                             # 0x134
	.quad	335                             # 0x14f
	.quad	370                             # 0x172
	.quad	402                             # 0x192
	.quad	436                             # 0x1b4
	.quad	471                             # 0x1d7
	.quad	511                             # 0x1ff
	.quad	547                             # 0x223
	.quad	592                             # 0x250
	.quad	631                             # 0x277
	.quad	672                             # 0x2a0
	.quad	709                             # 0x2c5
	.quad	741                             # 0x2e5
	.quad	776                             # 0x308
	.quad	812                             # 0x32c
	.quad	849                             # 0x351
	.quad	882                             # 0x372
	.quad	914                             # 0x392
	.quad	948                             # 0x3b4
	.quad	986                             # 0x3da
	.quad	1020                            # 0x3fc
	.quad	1059                            # 0x423
	.quad	1099                            # 0x44b
	.quad	1137                            # 0x471
	.quad	1174                            # 0x496
	.quad	1201                            # 0x4b1
	.quad	1232                            # 0x4d0
	.quad	1271                            # 0x4f7
	.quad	1310                            # 0x51e
	.quad	1347                            # 0x543
	.quad	1384                            # 0x568
	.quad	1415                            # 0x587
	.quad	1453                            # 0x5ad
	.quad	1487                            # 0x5cf
	.quad	1521                            # 0x5f1
	.quad	1564                            # 0x61c
	.quad	1595                            # 0x63b
	.quad	1625                            # 0x659
	.quad	1660                            # 0x67c
	.quad	1694                            # 0x69e
	.quad	1719                            # 0x6b7
	.quad	1750                            # 0x6d6
	.quad	1790                            # 0x6fe
	.quad	1827                            # 0x723
	.quad	1856                            # 0x740
	.quad	1893                            # 0x765
	.quad	1934                            # 0x78e
	.quad	1978                            # 0x7ba
	.quad	2006                            # 0x7d6
	.quad	2039                            # 0x7f7
	.quad	2071                            # 0x817
	.quad	2112                            # 0x840
	.quad	2142                            # 0x85e
	.quad	2179                            # 0x883
	.quad	2210                            # 0x8a2
	.quad	2246                            # 0x8c6
	.quad	2281                            # 0x8e9
	.quad	2314                            # 0x90a
	.quad	2349                            # 0x92d
	.quad	2379                            # 0x94b
	.quad	2417                            # 0x971
	.quad	2448                            # 0x990
	.quad	2481                            # 0x9b1
	.quad	2514                            # 0x9d2
	.quad	2546                            # 0x9f2
	.quad	2582                            # 0xa16
	.quad	2617                            # 0xa39
	.quad	2654                            # 0xa5e
	.quad	2694                            # 0xa86
	.quad	2726                            # 0xaa6
	.quad	2755                            # 0xac3
	.quad	2787                            # 0xae3
	.quad	2829                            # 0xb0d
	.quad	2868                            # 0xb34
	.quad	2902                            # 0xb56
	.quad	2937                            # 0xb79
	.quad	2970                            # 0xb9a
	.quad	3005                            # 0xbbd
	.quad	3034                            # 0xbda
	.quad	3068                            # 0xbfc
	.quad	3108                            # 0xc24
	.quad	3146                            # 0xc4a
	.quad	3184                            # 0xc70
	.quad	3223                            # 0xc97
	.quad	3257                            # 0xcb9
	.quad	3297                            # 0xce1
	.quad	3334                            # 0xd06
	.quad	3357                            # 0xd1d
	.quad	3389                            # 0xd3d
	.quad	3430                            # 0xd66
	.quad	3468                            # 0xd8c
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x401f98427418d691              # double 7.8986910000000003
	.quad	0x40211c57c0b13598              # double 8.5553570000000008
	.quad	0x400632178f68be2f              # double 2.7744589999999998
	.quad	0x40122c69728a6117              # double 4.5433709999999996
	.quad	0x401cb94f69ca9ef5              # double 7.1809669999999999
	.quad	0x401069c51dabe271              # double 4.1032909999999996
	.quad	0x4009bbc3c5bd0e13              # double 3.216682
	.quad	0x40183cad9ad85dfb              # double 6.0592560000000004
	.quad	0x4003dcfb3311a544              # double 2.482901
	.quad	0x4019182fd75e2047              # double 6.2736200000000002
	.quad	0x4023a093faf42785              # double 9.8136290000000006
	.quad	0x40212854477ff152              # double 8.5787680000000002
	.quad	0x4001d2745bf26f1e              # double 2.2277610000000001
	.quad	0x40188f34d6a161e5              # double 6.13985
	.quad	0x401b8737542a23c0              # double 6.882047
	.quad	0x400178904f6dfc5d              # double 2.1838690000000001
	.quad	0x3ffbbdcad14a0a0f              # double 1.7338359999999999
	.quad	0x40135b0ccbc05d53              # double 4.8389160000000002
	.quad	0x400f70fd7e45803d              # double 3.9301710000000001
	.quad	0x3ffba67a52ac753e              # double 1.7281439999999999
	.quad	0x3fe95718eb895076              # double 0.79188199999999997
	.quad	0x401a766772d5e072              # double 6.6156290000000002
	.quad	0x40135a398201cd60              # double 4.8381100000000004
	.quad	0x401455de58e64b23              # double 5.0838559999999999
	.quad	0x40019df090f733a9              # double 2.2021190000000002
	.quad	0x401f9a3ad18d25ee              # double 7.9006150000000002
	.quad	0x40089b93037d6302              # double 3.0759639999999999
	.quad	0x401290fb65668c26              # double 4.6415839999999999
	.quad	0x4021ddd462c343b7              # double 8.9332609999999999
	.quad	0x401bc9a62ed35222              # double 6.946923
	.quad	0x401a40a137f38c54              # double 6.5631149999999998
	.quad	0x401b043914f483cb              # double 6.754124
	.quad	0x3f9031ceaf251c19              # double 0.015814999999999999
	.quad	0x40209795f676ea42              # double 8.2960659999999997
	.quad	0x400ba75a31a4bdba              # double 3.456715
	.quad	0x40057215fcc1871e              # double 2.6807059999999998
	.quad	0x3ff3a38433d6c722              # double 1.2274210000000001
	.quad	0x3ffac6b37867f0aa              # double 1.673511
	.quad	0x3f985f06f6944674              # double 0.023800000000000002
	.quad	0x3fed3d790752da98              # double 0.91375399999999996
	.quad	0x3ff253c579f23465              # double 1.1454519999999999
	.quad	0x3fc24e054690de09              # double 0.14300599999999999
	.quad	0x40187d5b6805a2d7              # double 6.1224189999999998
	.quad	0x4021932ca57a786c              # double 8.7874499999999997
	.quad	0x40234626b2f23034              # double 9.6370140000000006
	.quad	0x3ffa303c07ee0b0b              # double 1.636776
	.quad	0x3fee14b7b28954a8              # double 0.940029
	.quad	0x40187a3875925354              # double 6.1193559999999998
	.quad	0x400f2acf312b1b37              # double 3.8959030000000001
	.quad	0x4014a6b93ccd0fe9              # double 5.1628160000000003
	.quad	0x401e606573215fcc              # double 7.5941369999999999
	.quad	0x4000a888b545c78a              # double 2.0822919999999998
	.quad	0x4022e2bfdb4cc250              # double 9.4428699999999992
	.quad	0x401453c31df761cc              # double 5.0817990000000002
	.quad	0x4012c7d0f1f57b42              # double 4.6951330000000002
	.quad	0x400d182ba5a03819              # double 3.6368019999999999
	.quad	0x3ff7771001d5c316              # double 1.4665680000000001
	.quad	0x3fff14f69ca9ef52              # double 1.942618
	.quad	0x4014713c68661ae7              # double 5.110582
	.quad	0x401cd88b11409a24              # double 7.211468
	.quad	0x3fd88705425f2021              # double 0.383241
	.quad	0x4000056605ee568a              # double 2.0026359999999999
	.quad	0x4019905bc01a36e3              # double 6.3909750000000001
	.quad	0x400314f8b588e369              # double 2.38524
	.quad	0x4023f7b549f94856              # double 9.9838050000000003
	.quad	0x40202c13db7f1737              # double 8.0860889999999994
	.quad	0x4017a1c044284dfd              # double 5.9079600000000001
	.quad	0x4017f1a048e043a2              # double 5.9859629999999999
	.quad	0x400e86b50b0f27bb              # double 3.8157749999999999
	.quad	0x3ff77d102bc72e27              # double 1.4680329999999999
	.quad	0x401aa73b85e80bed              # double 6.6633129999999996
	.quad	0x4006651dabe2717a              # double 2.7993730000000001
	.quad	0x4023872a9d627bf6              # double 9.7639969999999998
	.quad	0x401cdc087442c7fc              # double 7.2148760000000003
	.quad	0x401f84ed6fda836f              # double 7.8798120000000002
	.quad	0x40166041cc532a49              # double 5.5940009999999996
	.quad	0x4023077e5eaab042              # double 9.5146359999999994
	.quad	0x401510b3d4ae429e              # double 5.266311
	.quad	0x3fe0b675ddd2ae8e              # double 0.52227299999999999
	.quad	0x40115a600b029281              # double 4.3382569999999996
	.quad	0x3fcfd712a0ec7432              # double 0.248751
	.quad	0x401c6701d9f4d37c              # double 7.1005929999999999
	.quad	0x400a0d4a1ad6451c              # double 3.2564890000000002
	.quad	0x4022727631b584b2              # double 9.2235580000000006
	.quad	0x401a7cbab649d389              # double 6.6218060000000003
	.quad	0x401187d3d4280ae1              # double 4.382644
	.quad	0x400c185729b280f1              # double 3.5118849999999999
	.quad	0x4022394e5d5b24ea              # double 9.1119260000000004
	.quad	0x40043186db50f40e              # double 2.5241829999999998
	.quad	0x4012d80ae1049236              # double 4.710979
	.quad	0x4013a8c5004fb118              # double 4.9148139999999998
	.quad	0x40212dce18266773              # double 8.5894630000000003
	.quad	0x401bef4906034f40              # double 6.9836770000000001
	.quad	0x401c77d7c2ca148c              # double 7.1170340000000003
	.quad	0x3fe9f90b84988095              # double 0.81165100000000001
	.quad	0x40226a276b7ed41b              # double 9.2073319999999992
	.quad	0x40210ff7164c729f              # double 8.5311819999999994
	.quad	0x401163fbbd7b2032              # double 4.3476400000000002
	.quad	0x3fd6b5350092ccf7              # double 0.35481000000000001
	.quad	0x400f7c5931ca7d67              # double 3.9357169999999999
	.quad	0x401787ce95faa8a8              # double 5.8826239999999999
	.quad	0x401ea9a52263d817              # double 7.6656690000000002
	.quad	0x3ffb503c8e25c811              # double 1.7070890000000001
	.quad	0x401d549e44fa0514              # double 7.3326349999999998
	.quad	0x401204fdf3b645a2              # double 4.5048750000000002
	.quad	0x4021bf78feef5ec8              # double 8.8739699999999999
	.quad	0x3ffc7603925bb7b7              # double 1.7788120000000001
	.quad	0x40059f69878316a0              # double 2.7028379999999999
	.quad	0x4021e19e30014f8b              # double 8.9406599999999994
	.quad	0x400162c2bd7f51f0              # double 2.1732230000000001
	.quad	0x3ff8d1c5c5718eb9              # double 1.5512140000000001
	.quad	0x401438a222d5171e              # double 5.0553059999999999
	.quad	0x40119a08bfc2224f              # double 4.4004240000000001
	.quad	0x400c086a4ca4f441              # double 3.5041090000000001
	.quad	0x401dd5c63ae2541e              # double 7.4587640000000004
	.quad	0x4001727dcbddb984              # double 2.180904
	.quad	0x40010256366d7a57              # double 2.1261410000000001
	.quad	0x4017b0d49949e881              # double 5.9226859999999997
	.quad	0x401c69ccfaeff5c7              # double 7.1033210000000002
	.quad	0x3fe7fc6fbd273d5c              # double 0.74956500000000003
	.quad	0x4020e2c3009b3073              # double 8.4428940000000008
	.quad	0x40146760bf5d7881              # double 5.1009549999999999
	.quad	0x4023a957eed45e92              # double 9.8307490000000008
	.quad	0x4018bdedf1e0828c              # double 6.1854779999999998
	.quad	0x4018305ab3aabcd8              # double 6.0472210000000004
	.quad	0x4022d1b17481b21c              # double 9.4095569999999995
	.quad	0x400afdec5f394b7b              # double 3.3739859999999999
	.quad	0x401d19ef0f16f438              # double 7.2753259999999997
	.quad	0x400a42db61bb05fb              # double 3.282645
	.quad	0x400a49270b06c43f              # double 3.2857189999999998
	.quad	0x3fcfee136e71cda3              # double 0.24945300000000001
	.quad	0x401d2c5f7c6759ab              # double 7.2933329999999996
	.quad	0x40231f961804d984              # double 9.5616920000000007
	.quad	0x4023720f9096bb99              # double 9.7227750000000003
	.quad	0x40145eccc46950fc              # double 5.0925779999999996
	.quad	0x3fb391c4b90214ad              # double 0.076442999999999997
	.quad	0x40159e88df37329c              # double 5.4048189999999998
	.quad	0x40144044f1a1986c              # double 5.0627630000000003
	.quad	0x3ff81bb384fd2a63              # double 1.5067630000000001
	.quad	0x4015f6e6106ab14f              # double 5.4911120000000002
	.quad	0x401f51754b05b7d0              # double 7.8295490000000001
	.quad	0x4020bfae5796bfcb              # double 8.3743770000000008
	.quad	0x4023fbbddfc9ff93              # double 9.991683
	.quad	0x3fe843c5bd0e12e8              # double 0.75827299999999997
	.quad	0x4005370f7b9e0610              # double 2.651885
	.quad	0x4023a41fa7653437              # double 9.8205539999999995
	.quad	0x4020dfd523b3636f              # double 8.4371729999999996
	.quad	0x4000da52ac753e70              # double 2.1066029999999998
	.quad	0x4013b8ed1bf7ad4b              # double 4.9305919999999999
	.quad	0x3fe2b3f20a73f749              # double 0.58446600000000004
	.quad	0x402159adea897636              # double 8.6751550000000002
	.quad	0x4017cfda4052d667              # double 5.9529810000000003
	.quad	0x3ffa727674d16335              # double 1.6529450000000001
	.quad	0x4004d6b228dc981c              # double 2.604832
	.quad	0x400a497e996312f5              # double 3.2858860000000001
	.quad	0x4019f53868fd199c              # double 6.4894730000000003
	.quad	0x401096a1a500d5e9              # double 4.1471010000000001
	.quad	0x4016e61f5be5d9e4              # double 5.724729
	.quad	0x4018a5935fc3b4f6              # double 6.1616949999999999
	.quad	0x4006fc558644523f              # double 2.8732099999999998
	.quad	0x4022b8a393ee5eee              # double 9.3606230000000004
	.quad	0x401dd0d9d7774aba              # double 7.4539559999999998
	.quad	0x401e0d84d338f798              # double 7.5132019999999997
	.quad	0x3ffa7a3ec02f2f98              # double 1.6548449999999999
	.quad	0x40201e3e29307af2              # double 8.0590679999999999
	.quad	0x4022b0298cc14403              # double 9.3440670000000008
	.quad	0x401269d0a67620ef              # double 4.6033350000000004
	.quad	0x400401d323fee2ca              # double 2.5008910000000002
	.quad	0x4020a12231832fcb              # double 8.3147140000000004
	.quad	0x401169ba5e353f7d              # double 4.3532500000000001
	.quad	0x4021a23161a1db87              # double 8.8167829999999991
	.quad	0x3ff27078d92fb19e              # double 1.1524589999999999
	.quad	0x400a09320d9945b7              # double 3.2544900000000001
	.quad	0x3fede9af5ba2be06              # double 0.93477600000000005
	.quad	0x4004ad41b75a74c1              # double 2.5845980000000002
	.quad	0x4016c556d19dece5              # double 5.6927139999999996
	.quad	0x3ff4f3cd573647bb              # double 1.3095220000000001
	.quad	0x401395147f130596              # double 4.8955859999999998
	.quad	0x3fc04e160d887ebf              # double 0.127383
	.quad	0x4023bc156e264e48              # double 9.8673509999999993
	.quad	0x3ff85f3a57eaa2a1              # double 1.5232490000000001
	.quad	0x401c09da597d49d8              # double 7.0096220000000002
	.quad	0x4016bd45e9185cee              # double 5.6848369999999999
	.quad	0x401a5db7281fd9ba              # double 6.5915189999999999
	.quad	0x401e0e7cd0353719              # double 7.5141479999999996
	.quad	0x4009298676a7264a              # double 3.145276
	.quad	0x3ffc955c52e72da1              # double 1.786465
	.quad	0x4012cadb8348f53c              # double 4.6981029999999997
	.quad	0x401e964302b40f67              # double 7.6467400000000003
	.quad	0x3fcc893b7d84901d              # double 0.222938
	.quad	0x3ff91b6e503fb374              # double 1.569197
	.quad	0x401a317b5286b591              # double 6.5483219999999998
	.quad	0x400dff43c7d5ed07              # double 3.749641
	.quad	0x3ffe1d8a54823854              # double 1.882212
	.quad	0x401998787485e3da              # double 6.3988969999999998
	.quad	0x401962d666a98245              # double 6.3465210000000001
	.quad	0x4022eca0a0f4d7ae              # double 9.4621630000000003
	.quad	0x401835ddd2ae8e1d              # double 6.0526039999999997
	.quad	0x3ff554195cc857f3              # double 1.333032
	.quad	0x400d5093964a59c0              # double 3.6643439999999998
	.quad	0x4017ce97d06bbdbe              # double 5.9517509999999998
	.quad	0x40219e5796bfca86              # double 8.8092620000000004
	.quad	0x40220a1016ce789e              # double 9.0196539999999992
	.quad	0x401aa72da122fad7              # double 6.6632600000000002
	.quad	0x4005d3e2d6238da4              # double 2.7284600000000001
	.quad	0x4012d67f4dbdf8f4              # double 4.7094699999999996
	.quad	0x40213b53b4b2fa94              # double 8.6158730000000005
	.quad	0x4013011a975afaf8              # double 4.7510779999999997
	.quad	0x3ff52f8df7a4e7ab              # double 1.3241099999999999
	.quad	0x401552413db7f173              # double 5.3303269999999996
	.quad	0x3ff20b599aa60914              # double 1.1277710000000001
	.quad	0x4014c5fe542e557e              # double 5.1933530000000001
	.quad	0x4019f72ffd1dcd70              # double 6.4913939999999997
	.quad	0x4021bff3f0fe047d              # double 8.8749079999999996
	.quad	0x3ff50adddf43c7d6              # double 1.315153
	.quad	0x4015dd71f36262cc              # double 5.4662550000000003
	.quad	0x4021df12c27a6373              # double 8.9356899999999992
	.quad	0x3ff0e2d948dc11e4              # double 1.055383
	.quad	0x40156e2046c764ae              # double 5.357545
	.quad	0x4011267b1c0010c7              # double 4.287579
	.quad	0x401bbd045fe11127              # double 6.9345869999999996
	.quad	0x40216f1e0828c36e              # double 8.7170260000000006
	.quad	0x3ffcbc03bc4d22c9              # double 1.7959020000000001
	.quad	0x40163b074a771c97              # double 5.5576449999999999
	.quad	0x4021927807789a46              # double 8.7860720000000008
	.quad	0x3fd3e957470eb24a              # double 0.31111699999999998
	.quad	0x4013e3269df97aab              # double 4.9718270000000002
	.quad	0x402190dda48b6523              # double 8.7829409999999992
	.quad	0x400ded7e02645e4e              # double 3.7409629999999998
	.quad	0x40115769a91105e2              # double 4.3353640000000002
	.quad	0x3fe125614df8b157              # double 0.53581299999999998
	.quad	0x40015cfd4bf0995b              # double 2.1704050000000001
	.quad	0x400c902eec7c957d              # double 3.5704020000000001
	.quad	0x402155baf533f423              # double 8.6674419999999994
	.quad	0x402276d5f138bce0              # double 9.2321010000000001
	.quad	0x40226ff9d6f112fd              # double 9.2187029999999996
	.quad	0x401ce000c9539b89              # double 7.2187530000000004
	.quad	0x401ff23315d701da              # double 7.986523
	.quad	0x4000d8583621fafd              # double 2.1056370000000002
	.quad	0x40188717df19d66b              # double 6.1319270000000001
	.quad	0x40233e7f2c3009b3              # double 9.6220639999999999
	.quad	0x401b8e618ce2d1f2              # double 6.8890440000000002
	.quad	0x3fdb19c5a3e39f77              # double 0.42344799999999999
	.quad	0x401cdf47304039ac              # double 7.218045
	.quad	0x400e745cfede97d0              # double 3.8068179999999998
	.quad	0x3fe80c692f6e8295              # double 0.75151500000000004
	.quad	0x3fe80aa64c2f837b              # double 0.75129999999999997
	.quad	0x401736199780baa6              # double 5.8028320000000004
	.quad	0x3ff05289dadfb507              # double 1.020151
	.quad	0x401b7e874c8ffb8b              # double 6.8735629999999999
	.quad	0x4011cbba55d1c3ad              # double 4.4489530000000004
	.quad	0x40141b3bfb58d152              # double 5.0265959999999996
	.quad	0x4015aef8ceb356da              # double 5.420871
	.quad	0x400a96d7e889c1b5              # double 3.3236539999999999
	.quad	0x3feea88ce703afb8              # double 0.958075
	.quad	0x40058cbaf965b20c              # double 2.6937160000000002
	.quad	0x401abef1bac2df0d              # double 6.6864689999999998
	.quad	0x3fe05e2cdc011d36              # double 0.51149599999999995
	.quad	0x402326536501e258              # double 9.5748549999999994
	.quad	0x3feaf405f6ba0621              # double 0.84228800000000004
	.quad	0x40160ef6b5d462c3              # double 5.5146129999999998
	.quad	0x40227c6950fc71d6              # double 9.242991
	.quad	0x4011c92f6e82949a              # double 4.4464699999999997
	.quad	0x40227ea550870111              # double 9.2473550000000007
	.quad	0x40149a07b352a844              # double 5.1504200000000004
	.quad	0x400a73c254a3c643              # double 3.3065229999999999
	.quad	0x401f0e2541d8e864              # double 7.763814
	.quad	0x4020b42a8869c66d              # double 8.3518869999999996
	.quad	0x400269c66d373b00              # double 2.3016480000000001
	.quad	0x402223affb04ee7c              # double 9.0697019999999994
	.quad	0x4021cc5b8dc55001              # double 8.8991360000000004
	.quad	0x3fa03a322af57710              # double 0.031694
	.quad	0x401884095f2452c6              # double 6.1289420000000003
	.quad	0x3f9f822bbecaab8a              # double 0.030769999999999999
	.quad	0x3fe98140dd3fe197              # double 0.79702799999999996
	.quad	0x40131285ec3dab5c              # double 4.7680889999999998
	.quad	0x401d8756c93a7115              # double 7.3821669999999999
	.quad	0x4023bd9a73b42cc3              # double 9.8703190000000002
	.quad	0x40235ab0a6fc58ac              # double 9.6771290000000007
	.quad	0x4022396073de1e2e              # double 9.1120640000000002
	.quad	0x4017ae963dc486ad              # double 5.9204949999999998
	.quad	0x4011cfd694ccab3f              # double 4.4529670000000001
	.quad	0x4014b29845dc8323              # double 5.1744089999999998
	.quad	0x401e1bd2fa0d77b8              # double 7.5271720000000001
	.quad	0x3ffb6e08f2170931              # double 1.714364
	.quad	0x40096e8fb00bcbe6              # double 3.1789849999999999
	.quad	0x400c8ec28b2a6b0e              # double 3.5697070000000002
	.quad	0x401a6b089a027525              # double 6.6045249999999998
	.quad	0x4014428f190d1740              # double 5.0649990000000003
	.quad	0x401ea0dd82fd75e2              # double 7.657095
	.quad	0x40132ce7cd035372              # double 4.7938530000000004
	.quad	0x40181f0f16f4384c              # double 6.0303310000000003
	.quad	0x4016c210385c67e0              # double 5.6895150000000001
	.quad	0x4012609d495182aa              # double 4.5943500000000004
	.quad	0x4001cfd75e2046c7              # double 2.2264849999999998
	.quad	0x402062fe60c38f36              # double 8.1933469999999993
	.quad	0x401685536933a040              # double 5.6302009999999996
	.quad	0x40149338b47c73ef              # double 5.1437710000000001
	.quad	0x40227d86876e1deb              # double 9.2451670000000004
	.quad	0x401bce0c9d9d3459              # double 6.9512200000000002
	.quad	0x40217daceee0f3cb              # double 8.7454599999999996
	.quad	0x3ff2102363b25700              # double 1.1289400000000001
	.quad	0x401147ddca4b124d              # double 4.320182
	.quad	0x40135ab713272431              # double 4.8385889999999998
	.quad	0x3ff54b35f3d7d391              # double 1.330862
	.quad	0x3ffeee83a109d063              # double 1.9332309999999999
	.quad	0x3ffdad06fef7c244              # double 1.854743
	.quad	0x4014ad145d851655              # double 5.1690230000000001
	.quad	0x4001f63992c8c500              # double 2.2452269999999999
	.quad	0x400960aaeafab53d              # double 3.1722009999999998
	.quad	0x40231dcd0bb6ed67              # double 9.5582049999999991
	.quad	0x4021e164a59c065b              # double 8.9402209999999993
	.quad	0x3fb40f88333fc86d              # double 0.078362000000000001
	.quad	0x401d5d9620685554              # double 7.3413930000000001
	.quad	0x3ff0a8e92d55a3a1              # double 1.0412380000000001
	.quad	0x4013cea209aaa3ad              # double 4.9517899999999999
	.quad	0x4015968a50507a6c              # double 5.3970120000000001
	.quad	0x4010bbb98c7e2824              # double 4.183325
	.quad	0x402234fe36d22425              # double 9.1035020000000006
	.quad	0x4007635a426bb55b              # double 2.9235120000000001
	.quad	0x4023b122b7baecd0              # double 9.8459679999999992
	.quad	0x401c3f301eabbcb2              # double 7.0617070000000002
	.quad	0x3fe7b810e8858ff7              # double 0.74121899999999996
	.quad	0x40212096feb4a665              # double 8.5636519999999994
	.quad	0x400dd228dc981beb              # double 3.727617
	.quad	0x4023de52bd3c3611              # double 9.9342249999999996
	.quad	0x401f6188b11409a2              # double 7.8452479999999998
	.quad	0x402144c07aaef2c7              # double 8.6342809999999997
	.quad	0x3fcec144028e4fb9              # double 0.24027299999999999
	.quad	0x4021f9ef0f16f438              # double 8.9881519999999995
	.quad	0x4020f08b545c78a7              # double 8.4698130000000003
	.quad	0x400349de8b3b3205              # double 2.4110689999999999
	.quad	0x401dbfeb074a771d              # double 7.4374200000000004
	.quad	0x40228089c1b54196              # double 9.2510510000000004
	.quad	0x3ffacd844d013a93              # double 1.6751750000000001
	.quad	0x40217e5e2478854d              # double 8.7468120000000003
	.quad	0x3ff9d09e12a51e32              # double 1.613432
	.quad	0x401a050268900c52              # double 6.5048919999999999
	.quad	0x4012020ddc619546              # double 4.5020059999999997
	.quad	0x4011f1876188b114              # double 4.485868
	.quad	0x40171ecb74ddf86e              # double 5.7800729999999998
	.quad	0x3ff34242d05f2885              # double 1.2036770000000001
	.quad	0x4008ed59d55e6bc6              # double 3.1158939999999999
	.quad	0x40201096bb98c7e3              # double 8.0324000000000009
	.quad	0x3fe47ac81d3aa36a              # double 0.639988
	.quad	0x401883a9b0681238              # double 6.1285769999999999
	.quad	0x4020e091e215336e              # double 8.4386130000000001
	.quad	0x3ffc8a99b6f5caf3              # double 1.783838
	.quad	0x400e5b2aae297397              # double 3.7945150000000001
	.quad	0x4015a6a875d56f33              # double 5.4127520000000002
	.quad	0x400c20dbad3a604e              # double 3.5160439999999999
	.quad	0x401973721d53cddd              # double 6.3627399999999996
	.quad	0x400189f383f0bae9              # double 2.1923590000000002
	.quad	0x400f4cac4b4d056c              # double 3.9124379999999999
	.quad	0x4016cc447c30d307              # double 5.6994800000000003
	.quad	0x4019dad688377186              # double 6.4637089999999997
	.quad	0x4019f90ff9724745              # double 6.4932249999999998
	.quad	0x401bf8ceb356da01              # double 6.9929759999999996
	.quad	0x3fce8461f9f01b86              # double 0.23841499999999999
	.quad	0x401d699fa11a975b              # double 7.353148
	.quad	0x4021c58255b035bd              # double 8.8857599999999994
	.quad	0x40133c3c5bd0e12f              # double 4.8088240000000004
	.quad	0x3feb8b7e4de3b8a2              # double 0.86077800000000004
	.quad	0x401106933a0407cc              # double 4.2564209999999996
	.quad	0x3fea6249a133c1ce              # double 0.82449799999999995
	.quad	0x3fe372c0e7bc3c5c              # double 0.60775800000000002
	.quad	0x4002a055757d5a9f              # double 2.3282880000000001
	.quad	0x4011e37da61e0c5b              # double 4.4721590000000004
	.quad	0x4014649949e8815e              # double 5.0982409999999998
	.quad	0x401ff858ff759685              # double 7.9925269999999999
	.quad	0x4023470563ed0f62              # double 9.6387129999999992
	.quad	0x3ff6cd08919ef955              # double 1.425057
	.quad	0x4022ec2352eb5f5f              # double 9.4612069999999999
	.quad	0x4009ce432441fea8              # double 3.225714
	.quad	0x3ff2d03fb3743633              # double 1.1758420000000001
	.quad	0x40191a9cdc443915              # double 6.275989
	.quad	0x402134cd530489d2              # double 8.6031289999999991
	.quad	0x401d257abb8800eb              # double 7.2866010000000001
	.quad	0x400175f56a7ac81d              # double 2.1825969999999999
	.quad	0x3fe2fa7eb6bf444e              # double 0.59307799999999999
	.quad	0x40172f32bdc26dce              # double 5.7960919999999998
	.quad	0x401b66d330941c82              # double 6.8504149999999999
	.quad	0x4013c55e6bc621b8              # double 4.9427430000000001
	.quad	0x4000fb60285ec3db              # double 2.1227420000000001
	.quad	0x40126bd87b56b873              # double 4.6053179999999996
	.quad	0x401af2fdfc19c172              # double 6.7372969999999999
	.quad	0x40139a6defc7a398              # double 4.9008099999999999
	.quad	0x4021a4c74b838c11              # double 8.8218329999999998
	.quad	0x400c2e7d566cf41f              # double 3.5226999999999999
	.quad	0x3ff6c165907d9125              # double 1.4222159999999999
	.quad	0x4009ce008e9b38d6              # double 3.225587
	.quad	0x3fe52c753e707e17              # double 0.66167699999999996
	.quad	0x40033bc44bf4cb19              # double 2.4041830000000002
	.quad	0x4007f3b96af038e3              # double 2.9940060000000002
	.quad	0x40171503b81b64e0              # double 5.7705219999999997
	.quad	0x4018a848387df5cf              # double 6.1643379999999999
	.quad	0x3fff994d0dcfcc5c              # double 1.9749270000000001
	.quad	0x400e09cd3e0bd44a              # double 3.7547860000000002
	.quad	0x40118df6555c52e7              # double 4.3886349999999998
	.quad	0x4019a14727dcbddc              # double 6.4074980000000004
	.quad	0x4014bb4202d9cf14              # double 5.1828690000000002
	.quad	0x4002a628027d88c2              # double 2.3311310000000001
	.quad	0x401acdd095af294e              # double 6.7009910000000001
	.quad	0x4017fb7c3504c48b              # double 5.9955910000000001
	.quad	0x401bf41d084e831b              # double 6.9883920000000002
	.quad	0x3fce30b178b37004              # double 0.23586099999999999
	.quad	0x401bd3419e300150              # double 6.9563050000000004
	.quad	0x3ff30b9991361dc9              # double 1.1903319999999999
	.quad	0x401a7ce63a5c1c61              # double 6.6219720000000004
	.quad	0x40033b1f255f351a              # double 2.4038680000000001
	.quad	0x400b9b3636f3b214              # double 3.450787
	.quad	0x4013f342edbb59de              # double 4.9875600000000002
	.quad	0x3fe0f9314445aa2e              # double 0.53041899999999997
	.quad	0x401504373f316e37              # double 5.2541169999999999
	.quad	0x401d10578e5c4eb5              # double 7.2659589999999996
	.quad	0x401386ea854477ff              # double 4.8817539999999999
	.quad	0x401216c6583e8577              # double 4.5222410000000002
	.quad	0x40216d976ff3ade2              # double 8.7140459999999997
	.quad	0x3fcb0cfe154434e3              # double 0.21133399999999999
	.quad	0x40154f5126634118              # double 5.327458
	.quad	0x4013314df8b15726              # double 4.7981490000000004
	.quad	0x401cd013ec460ed8              # double 7.203201
	.quad	0x3fe774cb1897a67a              # double 0.73300699999999996
	.quad	0x4021f3f0fe047d3d              # double 8.9764479999999995
	.quad	0x401113d4ae429e0a              # double 4.2693659999999998
	.quad	0x401808537e2c55c9              # double 6.0081309999999997
	.quad	0x40009c6c11a11234              # double 2.0763780000000001
	.quad	0x4019c3ca31e7d999              # double 6.4412010000000004
	.quad	0x40187b30f8c64fdb              # double 6.120304
	.quad	0x40128b34e7685986              # double 4.6359440000000003
	.quad	0x3ff4142f61ed5ae2              # double 1.254928
	.quad	0x401e6b927d45a5fc              # double 7.6050509999999996
	.quad	0x4014917efe0ce0b9              # double 5.1420859999999999
	.quad	0x4019b67168f8e7de              # double 6.4281670000000002
	.quad	0x401297325918a00a              # double 4.647653
	.quad	0x3ff453cff64cf8d7              # double 1.270462
	.quad	0x400d6703afb7e910              # double 3.6753
	.quad	0x4021ecc144028e50              # double 8.9624120000000005
	.quad	0x3fdad323fee2c98e              # double 0.41913699999999998
	.quad	0x401026bebe1650a4              # double 4.0378369999999997
	.quad	0x3ffb95eaee2003ac              # double 1.7241010000000001
	.quad	0x40034bd1244a6224              # double 2.4120200000000001
	.quad	0x4022c99e94ab1d50              # double 9.3937880000000007
	.quad	0x40179d0635a426bb              # double 5.9033439999999997
	.quad	0x40200c7f993d5348              # double 8.0244110000000006
	.quad	0x3fd1b2d905c03361              # double 0.27654099999999998
	.quad	0x4017a6f08cc575c0              # double 5.9130269999999996
	.quad	0x4009bbfdf7e8038a              # double 3.216793
	.quad	0x402252a326e11559              # double 9.1614009999999997
	.quad	0x40084fe1da7b0b39              # double 3.039005
	.quad	0x401c02ef0ae53650              # double 7.0028649999999999
	.quad	0x4021c08a04d12019              # double 8.8760530000000006
	.quad	0x4001608d08919ef9              # double 2.1721439999999999
	.quad	0x400f81db877ab325              # double 3.9384070000000002
	.quad	0x3f9a469d7342edbb              # double 0.025659999999999999
	.quad	0x401263e681a9b8cc              # double 4.5975590000000004
	.quad	0x3ff6bf93ff25e56d              # double 1.421772
	.quad	0x4021de63e8dda48b              # double 8.9343559999999993
	.quad	0x401e5fa9c12f09d9              # double 7.5934210000000001
	.quad	0x4004e8d7e02645e5              # double 2.613693
	.quad	0x4022fd8a32f44913              # double 9.4951950000000007
	.quad	0x4019f09dcf893faf              # double 6.4849769999999998
	.quad	0x3ff807ae147ae148              # double 1.5018750000000001
	.quad	0x40203d90c0ad03da              # double 8.1202450000000006
	.quad	0x3fd570a808c8259e              # double 0.33500099999999999
	.quad	0x4016a4ef88b97785              # double 5.6610699999999996
	.quad	0x3fd329a5ebb7739f              # double 0.29941699999999999
	.quad	0x400fb177a7008a69              # double 3.9616539999999998
	.quad	0x401e3b7dc7abfb9c              # double 7.5580970000000001
	.quad	0x401d61c3ac929aa2              # double 7.3454730000000001
	.quad	0x3fe32f2734f82f51              # double 0.59950599999999998
	.quad	0x3fc305d95dd4c76d              # double 0.148616
	.quad	0x400129ff92f2b66b              # double 2.1455069999999998
	.quad	0x4013658b827fa1a1              # double 4.8491650000000002
	.quad	0x40232db6c3760bf6              # double 9.5892850000000003
	.quad	0x3ffad321e603d578              # double 1.6765460000000001
	.quad	0x402149f90539fba4              # double 8.6444779999999994
	.quad	0x4022faa2e3c536d6              # double 9.4895239999999994
	.quad	0x400710b417ca2121              # double 2.8831560000000001
	.quad	0x3fb6fec56d5cfaad              # double 0.089825000000000002
	.quad	0x400ef8d3f1843c3a              # double 3.8714979999999999
	.quad	0x40184fd2e9468017              # double 6.0779529999999999
	.quad	0x3fea0de4c51116a9              # double 0.81419600000000003
	.quad	0x40224c226809d495              # double 9.1486999999999998
	.quad	0x4010e2e6ea854478              # double 4.221584
	.quad	0x3fb8c804102ff8ec              # double 0.096801999999999999
	.quad	0x401c07789a459104              # double 7.0072960000000002
	.quad	0x4020f41fc8f32379              # double 8.4768050000000006
	.quad	0x4014f978d4fdf3b6              # double 5.2436249999999998
	.quad	0x4020bacb4289118c              # double 8.3648319999999998
	.quad	0x4020096440f23897              # double 8.0183429999999998
	.quad	0x4023b5e6bc621b7e              # double 9.8552759999999999
	.quad	0x4016952a84380885              # double 5.64567
	.quad	0x4004bf6c2699c7bd              # double 2.5934680000000001
	.quad	0x4016e5e84f09528f              # double 5.7245189999999999
	.quad	0x40201c0fecdd0d8d              # double 8.0548090000000006
	.quad	0x401110489d27c393              # double 4.2659019999999996
	.quad	0x3ff531d92b7fe08b              # double 1.32467
	.quad	0x3ff11a32b12d3416              # double 1.0688960000000001
	.quad	0x40111013ec460ed8              # double 4.265701
	.quad	0x4014e8fd9fd36f7e              # double 5.2275299999999998
	.quad	0x4021b7a072d1aeb4              # double 8.8586460000000002
	.quad	0x401e6be22e5de15d              # double 7.6053550000000003
	.quad	0x40194939eadd590c              # double 6.32151
	.quad	0x4012034e7685985b              # double 4.5032290000000001
	.quad	0x40220248b6523704              # double 9.0044609999999991
	.quad	0x401f9e3a7daa4fca              # double 7.9045199999999998
	.quad	0x401c52170931012a              # double 7.0801660000000002
	.quad	0x4015dc6088d6d3b7              # double 5.4652120000000002
	.quad	0x400303de6149c6f3              # double 2.3768889999999998
	.quad	0x400fd0db6a1e81cb              # double 3.9769809999999999
	.quad	0x3ff5c69c66d373b0              # double 1.360989
	.quad	0x3ff8fdccea28fe26              # double 1.561963
	.quad	0x4020e6920c069e80              # double 8.4503330000000005
	.quad	0x40106bcdbbe0157f              # double 4.1052770000000001
	.quad	0x401ea712a0ec7432              # double 7.663157
	.quad	0x4006571f36262cba              # double 2.7925399999999998
	.quad	0x402262fbc1acde1a              # double 9.193327
	.quad	0x400f3e3f359ff4fd              # double 3.9053939999999998
	.quad	0x4019f2a3cea6c1a0              # double 6.4869529999999997
	.quad	0x400808be2f7b17ce              # double 3.0042689999999999
	.quad	0x4022ea3358f2e05d              # double 9.4574230000000003
	.quad	0x400846644d877250              # double 3.0343710000000002
	.quad	0x4022e7e3f359ff50              # double 9.4529110000000003
	.quad	0x401b9c2a02320968              # double 6.9025040000000004
	.quad	0x3ffd051116a8b8f1              # double 1.8137369999999999
	.quad	0x3ffd794855da2728              # double 1.8421099999999999
	.quad	0x400e5c93ea2d2fe4              # double 3.795204
	.quad	0x4022a3ab862b27cc              # double 9.319668
	.quad	0x4017c4b61fe21d97              # double 5.9421010000000001
	.quad	0x40045a708ede54b5              # double 2.5441600000000002
	.quad	0x400f1d1f601797cc              # double 3.8892199999999999
	.quad	0x4014ebe9424e5929              # double 5.2303819999999996
	.quad	0x401713608d08919f              # double 5.768923
	.quad	0x401fd480a5accd53              # double 7.9575219999999999
	.quad	0x40201023e9ea1405              # double 8.0315239999999992
	.quad	0x401b25eb7457c0b1              # double 6.7870309999999998
	.quad	0x40236cd91eeaa6d2              # double 9.7125939999999993
	.quad	0x4023eaf8bdec5f39              # double 9.9589289999999994
	.quad	0x402160ab0c88a47f              # double 8.6888050000000003
	.quad	0x4018b7446f9b994e              # double 6.1789719999999999
	.quad	0x4015c89e774eebf6              # double 5.4459169999999997
	.quad	0x3ff7bcdee34fc611              # double 1.483611
	.quad	0x401745e28aa43351              # double 5.8182470000000004
	.quad	0x4022c06c00da1a93              # double 9.3758239999999997
	.quad	0x40022363b256ffc1              # double 2.26728
	.quad	0x4023afd2c7b890d6              # double 9.8434050000000006
	.quad	0x401c6e2ac3222920              # double 7.1075850000000003
	.quad	0x3ff39b9c7368ad69              # double 1.2254910000000001
	.quad	0x3f9a708ede54b48d              # double 0.025819999999999999
	.quad	0x4012b51b93037d63              # double 4.676863
	.quad	0x4018f6c3760bf5d8              # double 6.2409800000000004
	.quad	0x40113433d6c72192              # double 4.3009789999999999
	.quad	0x40079d6c72192210              # double 2.951867
	.quad	0x4022c51a21ea3593              # double 9.3849649999999993
	.quad	0x400f54a2339c0ebf              # double 3.9163250000000001
	.quad	0x4017bfa6defc7a3a              # double 5.9371600000000004
	.quad	0x3fde854477ff151e              # double 0.47688399999999997
	.quad	0x401b92f166e008ea              # double 6.8934990000000003
	.quad	0x401ed93c89f40a28              # double 7.7121449999999995
	.quad	0x401e419f3c70c997              # double 7.5640840000000002
	.quad	0x4020c415f45e0b4e              # double 8.3829799999999999
	.quad	0x4003654ac29bf163              # double 2.4244590000000001
	.quad	0x4002ebd33d29563b              # double 2.3651490000000002
	.quad	0x4023f38f57f737da              # double 9.9757029999999993
	.quad	0x4010992684cf073a              # double 4.1495610000000003
	.quad	0x3fe3d7fb69984a0e              # double 0.62011499999999997
	.quad	0x4018d89a459103c9              # double 6.2115260000000001
	.quad	0x401b63315d701d9f              # double 6.8468679999999997
	.quad	0x4009edfce3150dae              # double 3.2412049999999999
	.quad	0x4004ecc35ce18266              # double 2.6156069999999998
	.quad	0x3febbb688bda9436              # double 0.86662700000000004
	.quad	0x40164278d0cc35ce              # double 5.5649139999999999
	.quad	0x401c81ad2135daad              # double 7.1266369999999997
	.quad	0x40197e78183f91e6              # double 6.3735049999999998
	.quad	0x3ff0a3e07a28bb0a              # double 1.040009
	.quad	0x4009cb063e07a28c              # double 3.2241330000000001
	.quad	0x3ffdd1f70de8f6cf              # double 1.863761
	.quad	0x401a515ad106ee31              # double 6.5794480000000002
	.quad	0x3faa16a487336588              # double 0.050953999999999999
	.quad	0x4007555ef1fddebe              # double 2.9166850000000002
	.quad	0x40101ec311622813              # double 4.0300409999999998
	.quad	0x40117a8b4bf8fcd6              # double 4.3696719999999996
	.quad	0x40233fb7c7820a31              # double 9.6244490000000002
	.quad	0x4023c29131ec0b56              # double 9.8800139999999992
	.quad	0x40040f41f212d773              # double 2.50745
	.quad	0x4005aa6d26740810              # double 2.7082160000000002
	.quad	0x40122b8b26394fad              # double 4.5425230000000001
	.quad	0x4022fb4aa9717df2              # double 9.4908040000000007
	.quad	0x4007649cb252ce03              # double 2.9241269999999999
	.quad	0x4020e6e3d5fdcdf7              # double 8.4509570000000007
	.quad	0x402049919ac79703              # double 8.1436890000000002
	.quad	0x401c7a8650e77920              # double 7.1196529999999996
	.quad	0x4020f78bbd380453              # double 8.4834879999999995
	.quad	0x3fffa687f455a7d2              # double 1.9781569999999999
	.quad	0x4020d4e5d5b24e9c              # double 8.4158159999999995
	.quad	0x4017966ba493c89f              # double 5.8968949999999998
	.quad	0x401f4e48a58b3f64              # double 7.8264490000000002
	.quad	0x3fff3210be9424e6              # double 1.9497230000000001
	.quad	0x400b0321a2e7f6f5              # double 3.3765290000000001
	.quad	0x4020228ae74f2f12              # double 8.0674659999999996
	.quad	0x4010ce889c1b5419              # double 4.2016929999999997
	.quad	0x401e58d9b5e95b79              # double 7.5867680000000001
	.quad	0x4013cf55de58e64b              # double 4.9524759999999999
	.quad	0x40000d6b228dc982              # double 2.0065520000000001
	.quad	0x40225fa2ad3e920c              # double 9.1867879999999999
	.quad	0x4018294c87980f56              # double 6.0403310000000001
	.quad	0x400669c886162f16              # double 2.8016519999999998
	.quad	0x4022a64e26d4801f              # double 9.3248149999999992
	.quad	0x401c5372606fac60              # double 7.0814909999999998
	.quad	0x4011322ccb3a2596              # double 4.2989990000000002
	.quad	0x401f75fc3b4f6167              # double 7.8652199999999998
	.quad	0x4014d86e3b46fdeb              # double 5.2113579999999997
	.quad	0x401cdf84449dbec2              # double 7.2182779999999998
	.quad	0x4021cbf7ced91687              # double 8.8983749999999997
	.quad	0x40200d785f8d2e51              # double 8.0263089999999995
	.quad	0x400e0df71eafee70              # double 3.7568190000000001
	.quad	0x3fe290f51ac9afe2              # double 0.58019500000000002
	.quad	0x3fda0bdcad14a0a1              # double 0.406974
	.quad	0x40227222d5171e2a              # double 9.2229220000000005
	.quad	0x400ff8ceb356da01              # double 3.9964879999999998
	.quad	0x3ff66174c4cdfaca              # double 1.398793
	.quad	0x3ff54488c60cbf2b              # double 1.329232
	.quad	0x3ffcfc81908e581d              # double 1.811647
	.quad	0x40216e6f71a7e308              # double 8.7156939999999992
	.quad	0x4022c05857afea3e              # double 9.3756740000000001
	.quad	0x4010ec393682730c              # double 4.2306869999999996
	.quad	0x40029f540895d0b7              # double 2.3277969999999999
	.quad	0x400567fcb923a29c              # double 2.6757749999999998
	.quad	0x400fff359ff4fd6d              # double 3.9996139999999998
	.quad	0x4000cf7caa7589f0              # double 2.1013120000000001
	.quad	0x3fed2ddbdb5d8948              # double 0.91184799999999999
	.quad	0x4019bf7b5aea3162              # double 6.4369940000000003
	.quad	0x400393bc0a06e9ff              # double 2.447136
	.quad	0x4020fe44523f67f5              # double 8.4966150000000003
	.quad	0x4014e469d7342edc              # double 5.2230600000000003
	.quad	0x400497878b7a1c26              # double 2.5739890000000001
	.quad	0x401f2c65c70435f0              # double 7.7933570000000003
	.quad	0x4012d24aada33bda              # double 4.7053630000000002
	.quad	0x3fefd0b955f7835a              # double 0.99422900000000003
	.quad	0x402108c67168f8e8              # double 8.5171390000000002
	.quad	0x3ff2707075b3e143              # double 1.1524509999999999
	.quad	0x401ea2b3892ee84b              # double 7.6588880000000001
	.quad	0x3fd11344806290ef              # double 0.26680100000000001
	.quad	0x4020006c8711d799              # double 8.0008280000000003
	.quad	0x4017481fd9ba1b19              # double 5.8204339999999997
	.quad	0x3ff60c33b5393251              # double 1.3779790000000001
	.quad	0x401d235e74299d88              # double 7.2845399999999998
	.quad	0x400e8b790fb65669              # double 3.8181020000000001
	.quad	0x4009300f776c4828              # double 3.1484670000000001
	.quad	0x4007607789a45910              # double 2.9221029999999999
	.quad	0x4010c0ccff21b3af              # double 4.1882820000000001
	.quad	0x4006cda7f3cf7015              # double 2.8504179999999999
	.quad	0x401e2e63a5c1c609              # double 7.5453020000000003
	.quad	0x3fe5d73647baa9b5              # double 0.68252100000000004
	.quad	0x3ffab05ea24cc682              # double 1.668059
	.quad	0x3ff0927913e81451              # double 1.03576
	.quad	0x40113f6124074645              # double 4.3118939999999997
	.quad	0x401ba588a04d1202              # double 6.9116540000000004
	.quad	0x4022dccf4a558ea8              # double 9.4312690000000003
	.quad	0x4014f821af7d30ad              # double 5.2423159999999998
	.quad	0x4022f64345cfede9              # double 9.4809819999999991
	.quad	0x40193705857afea4              # double 6.3037320000000001
	.quad	0x3fe2877ab324851b              # double 0.57903800000000005
	.quad	0x3fcd758e219652bd              # double 0.23014999999999999
	.quad	0x4002a46e08f21709              # double 2.3302879999999999
	.quad	0x401b3a1ad6451b93              # double 6.806743
	.quad	0x400a76be37de939f              # double 3.3079800000000001
	.quad	0x4019a44284dfce31              # double 6.4104099999999997
	.quad	0x400c81f212d77319              # double 3.56345
	.quad	0x3fc98c436fc158fb              # double 0.19959299999999999
	.quad	0x401ad3e3e29307af              # double 6.7069239999999999
	.quad	0x40226fe9b7bf1e8e              # double 9.2185799999999993
	.quad	0x401a9cc0bdcad14a              # double 6.653079
	.quad	0x401d9052d666a982              # double 7.3909409999999998
	.quad	0x40089bfad2999568              # double 3.0761620000000001
	.quad	0x4016800a393ee5ef              # double 5.6250390000000001
	.quad	0x4008451116a8b8f1              # double 3.0337239999999999
	.quad	0x4011e4c76d117b53              # double 4.4734170000000004
	.quad	0x4011458c8eef1bac              # double 4.3179189999999998
	.quad	0x401cd121ee675148              # double 7.2042310000000001
	.quad	0x3ffabe9b7bf1e8e6              # double 1.671535
	.quad	0x4021ca0791c4b902              # double 8.8945889999999999
	.quad	0x4022819780baa583              # double 9.2531090000000003
	.quad	0x401c5bb1af3a14cf              # double 7.0895450000000002
	.quad	0x40193a89fc6da448              # double 6.3071669999999997
	.quad	0x4021e4d940789614              # double 8.9469700000000003
	.quad	0x401cc70a3d70a3d7              # double 7.194375
	.quad	0x4004b62bf11f926c              # double 2.5889509999999998
	.quad	0x4022658383ad9f0a              # double 9.1982689999999998
	.quad	0x40052193b3a68b1a              # double 2.6413950000000002
	.quad	0x401b5a276b7ed41b              # double 6.8380409999999996
	.quad	0x401146aa087ca644              # double 4.3190080000000002
	.quad	0x401ed27c7c5260f6              # double 7.7055530000000001
	.quad	0x4022bac083126e98              # double 9.3647500000000007
	.quad	0x4004e333764f11b6              # double 2.610938
	.quad	0x400d72ce89656ef0              # double 3.6810580000000002
	.quad	0x40201f0ae536501e              # double 8.0606299999999997
	.quad	0x402233cff64cf8d7              # double 9.1011959999999998
	.quad	0x4020310b630a9153              # double 8.0957899999999992
	.quad	0x4010359f2ba9d1f6              # double 4.052365
	.quad	0x3ffbd1904b3c3e75              # double 1.7386630000000001
	.quad	0x40009a8f7db6e504              # double 2.075469
	.quad	0x401588487b99d452              # double 5.383089
	.quad	0x401074a90470a809              # double 4.1139260000000002
	.quad	0x3fb3a99fa11a975b              # double 0.076807
	.quad	0x400f382a12f90108              # double 3.9024239999999999
	.quad	0x40200e27179bfdf8              # double 8.0276420000000002
	.quad	0x40100d31337eb28e              # double 4.0128830000000004
	.quad	0x3fd61ab4b72c5198              # double 0.34538000000000002
	.quad	0x4005e141e9af5ba3              # double 2.7349890000000001
	.quad	0x40049f9a49c2c1b1              # double 2.577931
	.quad	0x3ff573d4ae429e0a              # double 1.3407789999999999
	.quad	0x3ff46098915bdd76              # double 1.2735829999999999
	.quad	0x3ff2f2cf95d4e8fb              # double 1.18428
	.quad	0x40229b165d3996fb              # double 9.3029050000000009
	.quad	0x400db1f57b41bfbe              # double 3.711894
	.quad	0x4016dca7d6733ebc              # double 5.715484
	.quad	0x4020de0653005815              # double 8.4336420000000007
	.quad	0x4021ae56abde3fbc              # double 8.8405050000000002
	.quad	0x401898793dd97f63              # double 6.1489000000000003
	.quad	0x400b2c868b9fdbd3              # double 3.396741
	.quad	0x3fed501e2584f4c7              # double 0.91603000000000001
	.quad	0x402320f2e05ccc8a              # double 9.5643530000000005
	.quad	0x40147922962cfd8f              # double 5.118296
	.quad	0x401cf72a7bd48cb5              # double 7.2413730000000003
	.quad	0x3fda376d5497310a              # double 0.40963300000000002
	.quad	0x40147820e6299525              # double 5.1173130000000002
	.quad	0x3fe086ad2dcb1466              # double 0.51644000000000001
	.quad	0x401f63abc947064f              # double 7.8473350000000001
	.quad	0x401b6bb7f9d6f113              # double 6.855194
	.quad	0x3ff6a456f75d9a0f              # double 1.415122
	.quad	0x4010bc7d1bb4916d              # double 4.1840710000000003
	.quad	0x401ddbd6e8af8162              # double 7.4646869999999996
	.quad	0x401de19c5a3e39f7              # double 7.4703229999999996
	.quad	0x402295080b673c4f              # double 9.2910769999999996
	.quad	0x4021d40a2877ee4e              # double 8.9141399999999997
	.quad	0x402371d7fd82773e              # double 9.7223509999999997
	.quad	0x402168fa7a85015c              # double 8.7050359999999997
	.quad	0x40232e86e7e62dc7              # double 9.5908730000000002
	.quad	0x40051d4d834091c1              # double 2.6393080000000002
	.quad	0x401b15c4651f3e8a              # double 6.7712570000000003
	.quad	0x400aeb35f3d7d391              # double 3.364849
	.quad	0x4022121af7d30ad4              # double 9.0353619999999992
	.quad	0x401232003ab862b2              # double 4.5488289999999996
	.quad	0x4016749fd7a13c25              # double 5.6138909999999997
	.quad	0x400ac0c49ba5e354              # double 3.344125
	.quad	0x3fe2ec11a11233df              # double 0.59131699999999998
	.quad	0x401fe62413db7f17              # double 7.9747469999999998
	.quad	0x401b2b99d451fc4c              # double 6.7925789999999999
	.quad	0x4007346aa087ca64              # double 2.9005939999999999
	.quad	0x40127732df505d10              # double 4.6164050000000003
	.quad	0x400cad5a5b9628cc              # double 3.5846450000000001
	.quad	0x40223f077ccc0379              # double 9.1231039999999997
	.quad	0x401fb16c1e364bec              # double 7.9232639999999996
	.quad	0x4015524af0bf1a5d              # double 5.3303640000000003
	.quad	0x4015000a393ee5ef              # double 5.2500390000000001
	.quad	0x40209ba7fc32ebe6              # double 8.3040160000000007
	.quad	0x3fd8b2bba98eda23              # double 0.385909
	.quad	0x40230ac929aa1d75              # double 9.5210659999999993
	.quad	0x40072fd651b0ccbc              # double 2.898358
	.quad	0x4021473eee525892              # double 8.6391519999999993
	.quad	0x402270027d88c1db              # double 9.218769
	.quad	0x401968d002e23290              # double 6.3523560000000003
	.quad	0x3fe833508f648c72              # double 0.75626400000000005
	.quad	0x401d2357a355043e              # double 7.2845139999999997
	.quad	0x3ffd8025bfad2999              # double 1.8437859999999999
	.quad	0x40157e0c5a8155d6              # double 5.373094
	.quad	0x40162d7060bb2bbb              # double 5.5443740000000004
	.quad	0x4019b4d834091c08              # double 6.4266059999999996
	.quad	0x401c42c0e7bc3c5c              # double 7.0651890000000002
	.quad	0x40082238da3c2118              # double 3.0167099999999998
	.quad	0x401d0c87980f55de              # double 7.2622359999999997
	.quad	0x401f693ab430f495              # double 7.8527630000000003
	.quad	0x401b9500d5e8d541              # double 6.8955109999999999
	.quad	0x4023b2146a1a500d              # double 9.8478119999999993
	.quad	0x401f711c6d1e108c              # double 7.8604599999999998
	.quad	0x400f2ce3de6149c7              # double 3.896919
	.quad	0x40215dc55000c954              # double 8.6831460000000006
	.quad	0x3fbfe718a86d71f3              # double 0.12461999999999999
	.quad	0x4022731e7d9988d3              # double 9.2248420000000007
	.quad	0x401f59e774eebf66              # double 7.8377970000000001
	.quad	0x3fe8d04816f0068e              # double 0.77542500000000003
	.quad	0x401dcafaf8594291              # double 7.4482229999999996
	.quad	0x4009cada33bd9cae              # double 3.2240489999999999
	.quad	0x40054fc1df3300de              # double 2.6639439999999999
	.quad	0x40200d8bc59b8024              # double 8.0264570000000006
	.quad	0x4021654c55432874              # double 8.6978480000000004
	.quad	0x401a14790b849881              # double 6.5199930000000004
	.quad	0x401165785f8d2e51              # double 4.3490919999999997
	.quad	0x3ff92c8f75536934              # double 1.5733790000000001
	.quad	0x40224e1c15097c81              # double 9.1525580000000009
	.quad	0x40238324c8366517              # double 9.7561400000000002
	.quad	0x3f9a0e8427418d69              # double 0.025446
	.quad	0x3fde19b90ea9e6ef              # double 0.47032000000000002
	.quad	0x40055886df82b1f7              # double 2.6682260000000002
	.quad	0x401a0d5b6805a2d7              # double 6.5130439999999998
	.quad	0x4005de7b80a9de8b              # double 2.7336339999999999
	.quad	0x400ea4723aafff37              # double 3.8302960000000001
	.quad	0x400e15f78359bc34              # double 3.760726
	.quad	0x3fff62b6ae7d566d              # double 1.9616
	.quad	0x4005995bbbe878fb              # double 2.6998820000000001
	.quad	0x3fceb69db65ecc3e              # double 0.23994799999999999
	.quad	0x40164e0ef99806f2              # double 5.5762289999999997
	.quad	0x3ff51edbf8b9baa1              # double 1.3200339999999999
	.quad	0x4019c147ae147ae1              # double 6.4387499999999998
	.quad	0x3feeb543aeab7996              # double 0.95962700000000001
	.quad	0x401df0fe047d3d43              # double 7.4853440000000004
	.quad	0x3ff72c69b5a63f9a              # double 1.4483429999999999
	.quad	0x4007f5aaf78feef6              # double 2.994955
	.quad	0x4012158e64b23140              # double 4.5210509999999999
	.quad	0x400e3c065b63d3e5              # double 3.779309
	.quad	0x3fe2608f21709310              # double 0.57428699999999999
	.quad	0x4017196bfca85cab              # double 5.774826
	.quad	0x4018bb59146e4c0e              # double 6.182957
	.quad	0x4002aae9ee45c359              # double 2.3334540000000001
	.quad	0x3fec287e38eb0319              # double 0.87994300000000003
	.quad	0x401620e0a84be404              # double 5.5321069999999999
	.quad	0x3fe49f70de8f6cf0              # double 0.64446300000000001
	.quad	0x4023ef0329802c0a              # double 9.9668209999999995
	.quad	0x400b909d8c6d612c              # double 3.4456129999999998
	.quad	0x4019a07f66e86c66              # double 6.4067360000000004
	.quad	0x401b87bdcf0307f2              # double 6.8825599999999998
	.quad	0x400d3445ed4a1ad6              # double 3.6505239999999999
	.quad	0x40120dcd2d44dca9              # double 4.5134780000000001
	.quad	0x3fbf5d462c343b71              # double 0.122517
	.quad	0x40195ad688377186              # double 6.3387089999999997
	.quad	0x4020c2f09d8c6d61              # double 8.3807419999999997
	.quad	0x4019968dfbd6a594              # double 6.3970260000000003
	.quad	0x401e0c6583e8576d              # double 7.5121060000000001
	.quad	0x402386ed245b291c              # double 9.7635280000000008
	.quad	0x40044714fce746cc              # double 2.5347080000000002
	.quad	0x401b234fc610f0e9              # double 6.784484
	.quad	0x4020127e0ef99807              # double 8.0361180000000001
	.quad	0x4023d786e3b46fdf              # double 9.9209510000000005
	.quad	0x40233d7dbf487fcc              # double 9.6201000000000007
	.quad	0x4020481b21c475e6              # double 8.1408319999999996
	.quad	0x402008a58b3f63c3              # double 8.0168879999999998
	.quad	0x401a8c0229a5ebb7              # double 6.6367269999999996
	.quad	0x402329fa54c55433              # double 9.5819880000000008
	.quad	0x4003e322291fb3fa              # double 2.4859049999999998
	.quad	0x401ad634117f8445              # double 6.7091830000000003
	.quad	0x401c708f648c7193              # double 7.1099220000000001
	.quad	0x4016cf4fd6d7e88a              # double 5.7024530000000002
	.quad	0x4020f33743632c1f              # double 8.4750309999999995
	.quad	0x400f0afab53d640f              # double 3.8803610000000002
	.quad	0x3ff6d8b71b8aa002              # double 1.4279090000000001
	.quad	0x40134806f262888b              # double 4.8203389999999997
	.quad	0x400c9c621b7e0ac8              # double 3.5763590000000001
	.quad	0x3fc5440af1cb89d7              # double 0.16613900000000001
	.quad	0x401b85d206c8711d              # double 6.8806839999999996
	.quad	0x4013b45d851654d6              # double 4.9261379999999999
	.quad	0x400d47c0f4517614              # double 3.6600359999999998
	.quad	0x40152d05f2884838              # double 5.2939679999999996
	.quad	0x400b09aed56b0100              # double 3.3797280000000001
	.quad	0x400c71fc4c165908              # double 3.5556570000000001
	.quad	0x401adc122749f0e5              # double 6.7149130000000001
	.quad	0x40130b8ed1bf7ad5              # double 4.7612870000000003
	.quad	0x3ffaba30121682f9              # double 1.6704559999999999
	.quad	0x401b57225b749add              # double 6.8350920000000004
	.quad	0x401c25cb35f3d7d4              # double 7.0369080000000004
	.quad	0x401444fc610f0e91              # double 5.0673690000000002
	.quad	0x4001268ec52a411c              # double 2.1438269999999999
	.quad	0x40155c39bcba3012              # double 5.3400639999999999
	.quad	0x401c2de6149c6f37              # double 7.0448230000000001
	.quad	0x3ffd9d041cc532a5              # double 1.8508340000000001
	.quad	0x4022ae2fbe33acd6              # double 9.3402080000000005
	.quad	0x4020511be6e65387              # double 8.1584160000000008
	.quad	0x3ff4fb762d83c6c9              # double 1.3113919999999999
	.quad	0x4013e305100a393f              # double 4.9716990000000001
	.quad	0x4016989c1b54195d              # double 5.6490330000000002
	.quad	0x400ee7d5ed06fef8              # double 3.8632010000000001
	.quad	0x3fb8c404a72ead92              # double 0.096740999999999993
	.quad	0x4010c75d9a0f0a5f              # double 4.194693
	.quad	0x4008ebffcdab191e              # double 3.1152340000000001
	.quad	0x3fc2dbdf8f473040              # double 0.14733499999999999
	.quad	0x402305651b0ccbc0              # double 9.5105369999999993
	.quad	0x401796a9c560c7c1              # double 5.897132
	.quad	0x402247807789a459              # double 9.1396519999999999
	.quad	0x401f9e26916440f2              # double 7.9044439999999998
	.quad	0x4012d5b78cc9a77e              # double 4.7087079999999997
	.quad	0x400901815a07b353              # double 3.1257350000000002
	.quad	0x40016044ae85b9e9              # double 2.1720060000000001
	.quad	0x3ff6a31a4bdba0a5              # double 1.41482
	.quad	0x40078cf0f9d2bf55              # double 2.943819
	.quad	0x400ab73fb7a5f41b              # double 3.339477
	.quad	0x3ff2a78c0053e2d6              # double 1.165905
	.quad	0x401e845aa2e3c537              # double 7.6292520000000001
	.quad	0x3ffef36ef8055fbb              # double 1.9344319999999999
	.quad	0x3ff806bdf4c2b51c              # double 1.501646
	.quad	0x401724bc6a7ef9db              # double 5.7858749999999999
	.quad	0x400f46d1e108c3f4              # double 3.9095800000000001
	.quad	0x400cd966be7afa72              # double 3.6061529999999999
	.quad	0x40111f0e4da09cc3              # double 4.2803279999999999
	.quad	0x40139052502eec7d              # double 4.8909390000000004
	.quad	0x4014ed9b5e95b78d              # double 5.2320380000000002
	.quad	0x3fd6ae9ab29e4d5e              # double 0.35440700000000003
	.quad	0x4014949a5657fb6a              # double 5.1451200000000004
	.quad	0x40121b1e18efbb0e              # double 4.5264819999999997
	.quad	0x400abfa11a975afb              # double 3.343569
	.quad	0x401e349e44fa0514              # double 7.5513849999999998
	.quad	0x3ff5e0589acbc8c1              # double 1.367272
	.quad	0x401ab3b3636f3b21              # double 6.6754889999999998
	.quad	0x40117bc33f85510d              # double 4.3708619999999998
	.quad	0x3ff51fc5cdd50a89              # double 1.320257
	.quad	0x400710bd017dae82              # double 2.8831730000000002
	.quad	0x4013c3e78e1932d7              # double 4.9413130000000001
	.quad	0x4018fb641700cd85              # double 6.2454989999999997
	.quad	0x3ffe618def416bdb              # double 1.898817
	.quad	0x401a0a78af3e468d              # double 6.5102260000000003
	.quad	0x4023e2b990afe60c              # double 9.9428219999999996
	.quad	0x3fde6f36ef8055fc              # double 0.47553800000000002
	.quad	0x4021237824d4cb9f              # double 8.5692760000000003
	.quad	0x401d69cd8127b2cc              # double 7.3533229999999996
	.quad	0x4010f1eafee6fb4c              # double 4.2362479999999998
	.quad	0x40043eed45e9185d              # double 2.530726
	.quad	0x4004b034b0e1b4bb              # double 2.5860379999999998
	.quad	0x4013da80cf9e3865              # double 4.9633820000000002
	.quad	0x4014223dd54da4cf              # double 5.0334390000000004
	.quad	0x401ef91148fd9fd3              # double 7.7432299999999996
	.quad	0x40011ba01eeed890              # double 2.1384889999999999
	.quad	0x4020f3a27ae9ab2a              # double 8.4758490000000002
	.quad	0x400d810f0e90bc7b              # double 3.6880169999999999
	.quad	0x40166a4f00ef1349              # double 5.6038170000000003
	.quad	0x4011b14d2f5dbb9d              # double 4.423146
	.quad	0x4008d966be7afa72              # double 3.1061529999999999
	.quad	0x401ba821294573a8              # double 6.9141890000000004
	.quad	0x4014360242d05f29              # double 5.0527430000000004
	.quad	0x3fcf074a771c970f              # double 0.24240999999999999
	.quad	0x4008e94467381d7e              # double 3.1139000000000001
	.quad	0x3fff7b8800eae18b              # double 1.967659
	.quad	0x3ffaae158750c1b9              # double 1.6675009999999999
	.quad	0x401ca5f394b7b289              # double 7.1620619999999997
	.quad	0x3fe612ee84ad794a              # double 0.68981099999999995
	.quad	0x400e7ee675147f13              # double 3.811963
	.quad	0x3ffb1a8bd230b9dc              # double 1.693981
	.quad	0x400ee9ecb31c219f              # double 3.8642210000000001
	.quad	0x4019f45846e8f29d              # double 6.4886179999999998
	.quad	0x3ff935f91600f345              # double 1.575677
	.quad	0x4010d86cebbba55d              # double 4.2113529999999999
	.quad	0x400936273929ed39              # double 3.1514419999999999
	.quad	0x3ff0605dd8f92afa              # double 1.0235270000000001
	.quad	0x3fdf781c714fce74              # double 0.49170599999999998
	.quad	0x4017cf4906034f40              # double 5.9524270000000001
	.quad	0x40210d2eb5f5f0b3              # double 8.5257470000000009
	.quad	0x40130c768dfbd6a6              # double 4.7621710000000004
	.quad	0x4018bdd052934acb              # double 6.185365
	.quad	0x3ff1fcc6c54bcf0b              # double 1.1242129999999999
	.quad	0x40220ea7ce0fc2ec              # double 9.0286240000000006
	.quad	0x402220090b417ca2              # double 9.0625689999999999
	.quad	0x401332f2734f82f5              # double 4.7997529999999999
	.quad	0x4011896dd26b723f              # double 4.3842080000000001
	.quad	0x4012081adea89763              # double 4.5079149999999997
	.quad	0x4002757a355043e5              # double 2.3073619999999999
	.quad	0x4020c51159c49774              # double 8.3848979999999997
	.quad	0x40113d5629d8409e              # double 4.3098989999999997
	.quad	0x3f6ba1b1960fa15e              # double 0.0033730000000000001
	.quad	0x4015403e63e8dda5              # double 5.3127380000000004
	.quad	0x401f90f51ac9afe2              # double 7.8915600000000001
	.quad	0x4012381beb18116f              # double 4.5547940000000002
	.quad	0x3fffdf44d4456712              # double 1.9920089999999999
	.quad	0x4023f103211cb03a              # double 9.9707270000000001
	.quad	0x3ff9cf80dc33721d              # double 1.6131599999999999
	.quad	0x40234fd7e45803cd              # double 9.6559439999999998
	.quad	0x401775a2d72ffd1e              # double 5.8648790000000002
	.quad	0x3fe24662bae03b3f              # double 0.57109200000000004
	.quad	0x4023c9105e1c1509              # double 9.8927029999999991
	.quad	0x4014b7ba6698bb4d              # double 5.1794219999999997
	.quad	0x401b9c0b13597918              # double 6.9023859999999999
	.quad	0x401d5188b11409a2              # double 7.3296229999999998
	.quad	0x40083b6f5caf2d80              # double 3.0290210000000002
	.quad	0x3ff62fff36ac6477              # double 1.3867179999999999
	.quad	0x4019ab9346994185              # double 6.417554
	.quad	0x40209a38fbca105a              # double 8.3012160000000002
	.quad	0x400971cc96462802              # double 3.1805659999999998
	.quad	0x400c2feef5ec80c7              # double 3.5234049999999999
	.quad	0x40228d90e23af31b              # double 9.2764959999999999
	.quad	0x401ae2934acaff6d              # double 6.7212649999999998
	.quad	0x3ff14bd33d29563b              # double 1.0810120000000001
	.quad	0x3fd2fbb9496249a1              # double 0.29661399999999999
	.quad	0x402260cc575c0768              # double 9.1890590000000003
	.quad	0x4021f2b2bfdb4cc2              # double 8.9740199999999994
	.quad	0x401e64d6e47dc37a              # double 7.5984759999999998
	.quad	0x400b1844d013a92a              # double 3.3868499999999999
	.quad	0x4020653e707e175d              # double 8.1977419999999999
	.quad	0x4013869a91105e1c              # double 4.8814489999999999
	.quad	0x4004a2ef4e0114d3              # double 2.579558
	.quad	0x3fc3c19c17225b75              # double 0.15434600000000001
	.quad	0x4015e43e963dc487              # double 5.4728950000000003
	.quad	0x402002f74cd3176a              # double 8.0057930000000006
	.quad	0x4016626bb55ac040              # double 5.596114
	.quad	0x400267418d6909af              # double 2.3004180000000001
	.quad	0x4012592684cf073a              # double 4.5870610000000003
	.quad	0x4009c97a67a52ac7              # double 3.2233779999999999
	.quad	0x401b62962cfd8f0c              # double 6.8462759999999996
	.quad	0x4012ce5753a3ec03              # double 4.701505
	.quad	0x40180aeea63b688c              # double 6.0106760000000001
	.quad	0x4005dd441355475a              # double 2.7330399999999999
	.quad	0x401a594e1a3f4667              # double 6.5872120000000001
	.quad	0x402270bcdfefbf40              # double 9.2201909999999998
	.quad	0x402090dc768dfbd7              # double 8.2829320000000006
	.quad	0x4014f0edc3bd5992              # double 5.2352819999999998
	.quad	0x4013ad9c27e95315              # double 4.9195409999999997
	.quad	0x3ff389a240314877              # double 1.2211019999999999
	.quad	0x401ae02c4d65e460              # double 6.7189189999999996
	.quad	0x3ff7af240fa9c12f              # double 1.480259
	.quad	0x400507075b3e1438              # double 2.6284320000000001
	.quad	0x40010dcdb37c99af              # double 2.1317400000000002
	.quad	0x40081471f79420b4              # double 3.0099830000000001
	.quad	0x3fe18b8066c2acb8              # double 0.54827899999999996
	.quad	0x40057ffcdab191de              # double 2.687494
	.quad	0x3ffd330d7386099a              # double 1.824964
	.quad	0x40202a5cc426351e              # double 8.0827390000000001
	.quad	0x4019d6aceaaf35e3              # double 6.4596439999999999
	.quad	0x4018d90795f676ea              # double 6.2119429999999998
	.quad	0x401530574b407033              # double 5.2972080000000004
	.quad	0x4011a3854046412d              # double 4.4096880000000001
	.quad	0x4017d652bd3c3611              # double 5.9592999999999998
	.quad	0x400fb2e05ccc89b1              # double 3.962342
	.quad	0x40213a1101b00368              # double 8.6134109999999993
	.quad	0x400b9bf5946c332f              # double 3.451152
	.quad	0x4016009dcf893faf              # double 5.5006019999999998
	.quad	0x401f9776c4827b70              # double 7.8979140000000001
	.quad	0x401f80dfdef8487c              # double 7.8758540000000004
	.quad	0x40218779420b3d4b              # double 8.7645970000000002
	.quad	0x4013df141205bc02              # double 4.9678500000000003
	.quad	0x401a7131ec0b5675              # double 6.6105419999999997
	.quad	0x401c979fec99f1ae              # double 7.1480709999999998
	.quad	0x400839991361dc94              # double 3.028124
	.quad	0x4001471476af89c6              # double 2.159707
	.quad	0x402126d2674080fa              # double 8.5758240000000008
	.quad	0x3ff3b167ec7863bf              # double 1.230812
	.quad	0x400def4b61fe21d9              # double 3.7418429999999998
	.quad	0x401831d7dbf487fd              # double 6.0486750000000002
	.quad	0x4012acf2495e17e3              # double 4.6688929999999997
	.quad	0x40124ee8d10f51ad              # double 4.5770600000000004
	.quad	0x3fe281908e581cf8              # double 0.57831600000000005
	.quad	0x4006388a04d12019              # double 2.7776070000000002
	.quad	0x401ede707e175d14              # double 7.7172260000000001
	.quad	0x4022ede892253112              # double 9.4646650000000001
	.quad	0x401bf9b1b79d909f              # double 6.9938419999999999
	.quad	0x4007bff2e48e8a72              # double 2.9687250000000001
	.quad	0x4015283c6c97d8cf              # double 5.2892929999999998
	.quad	0x4018087bdcf0307f              # double 6.0082849999999999
	.quad	0x400c04c7b02d59d5              # double 3.5023339999999998
	.quad	0x3ff1916fc9bc7714              # double 1.098007
	.quad	0x3fe6e249a133c1ce              # double 0.71512299999999995
	.quad	0x401b39e6eeb70260              # double 6.8065449999999998
	.quad	0x401cbb6390c91080              # double 7.1829970000000003
	.quad	0x3fe0d66277c45cbc              # double 0.52617000000000003
	.quad	0x4020ff1cda2b5a21              # double 8.4982670000000002
	.quad	0x40231c76af89c5e7              # double 9.555593
	.quad	0x3ff94bcad9ad85e0              # double 1.5810040000000001
	.quad	0x4012c1cef240fa9c              # double 4.6892659999999999
	.quad	0x4019ce21d96e9bbf              # double 6.451301
	.quad	0x4019a32ebe596c83              # double 6.4093580000000001
	.quad	0x40233308dd1e53a8              # double 9.5996769999999997
	.quad	0x4009bd577963992d              # double 3.2174520000000002
	.quad	0x40151af20ea5b531              # double 5.2763140000000002
	.quad	0x3fea39d1b2e59afa              # double 0.81955800000000001
	.quad	0x402305a038194c01              # double 9.5109879999999993
	.quad	0x4012a9d5a187a4a5              # double 4.6658540000000004
	.quad	0x3ff658c6d612c6ac              # double 1.396674
	.quad	0x4021be30ec311623              # double 8.8714670000000009
	.quad	0x3ff97e2f7b17ce53              # double 1.593307
	.quad	0x3ff49a2e7f6f4be8              # double 1.287642
	.quad	0x4021c079c4113c68              # double 8.8759289999999993
	.quad	0x3fcea71de69ad42c              # double 0.23947499999999999
	.quad	0x3fc7daf8df7a4e7b              # double 0.18637000000000001
	.quad	0x40032afb3b752114              # double 2.3959869999999999
	.quad	0x4011a9eecbfb15b5              # double 4.4159499999999996
	.quad	0x400549081c2e33f0              # double 2.66066
	.quad	0x40239e4cb5bb3850              # double 9.8091790000000003
	.quad	0x402176f0f16f4385              # double 8.7323070000000005
	.quad	0x3ffc77fbefd00714              # double 1.779293
	.quad	0x4000ebf65dbfceb8              # double 2.1152160000000002
	.quad	0x3ffc2014727dcbde              # double 1.7578320000000001
	.quad	0x40076425aee631f9              # double 2.9239000000000002
	.quad	0x40208a6b2f23033a              # double 8.2703489999999995
	.quad	0x4000c4d76ab58080              # double 2.096114
	.quad	0x4015cd45a5fc7e6b              # double 5.4504609999999998
	.quad	0x40066b4395810625              # double 2.8023750000000001
	.quad	0x3ffd7a365cb35f3d              # double 1.8423369999999999
	.quad	0x40200b0ccbc05d53              # double 8.0215820000000004
	.quad	0x401e371fff79c843              # double 7.553833
	.quad	0x4023020d130df9be              # double 9.5040060000000004
	.quad	0x40220385e80bed74              # double 9.0068809999999999
	.quad	0x4018d8255b035bd5              # double 6.2110799999999999
	.quad	0x401b8bd230b9dc2f              # double 6.8865439999999998
	.quad	0x40204ec82e019b0b              # double 8.1538710000000005
	.quad	0x400cf444e0daa0cb              # double 3.619272
	.quad	0x400ca77e5eaab042              # double 3.5817839999999999
	.quad	0x4015c099e0e73605              # double 5.4380870000000003
	.quad	0x3ff5a8d64d7f0ed4              # double 1.35372
	.quad	0x401d3757928e0c9e              # double 7.3040450000000003
	.quad	0x400e427c7c5260f6              # double 3.782464
	.quad	0x4018a3a4723aafff              # double 6.1598069999999998
	.quad	0x4011404534bd76ee              # double 4.3127639999999996
	.quad	0x4022ef1800a7c5ac              # double 9.4669799999999995
	.quad	0x3f9dcd2d44dca8e3              # double 0.029103
	.quad	0x4020f9a8ac5c13fd              # double 8.4876149999999999
	.quad	0x400d8da5daf07bfe              # double 3.6941639999999998
	.quad	0x4015b177a7008a69              # double 5.4233079999999996
	.quad	0x401b327b6fe2e6eb              # double 6.7992990000000004
	.quad	0x4022fe2413db7f17              # double 9.4963689999999996
	.quad	0x40221f2fdb8fde2f              # double 9.0609120000000001
	.quad	0x4022888205ff1d82              # double 9.2666170000000001
	.quad	0x401036f75d9a0f0a              # double 4.0536779999999997
	.quad	0x401aa8bac710cb29              # double 6.6647749999999997
	.quad	0x401dc518b0d0edc4              # double 7.4424770000000002
	.quad	0x4015ca27ae9ab29e              # double 5.4474169999999997
	.quad	0x4004b8800eae18ad              # double 2.5900880000000002
	.quad	0x401ea04d98394749              # double 7.6565459999999996
	.quad	0x401246db0dd82fd7              # double 4.5691949999999997
	.quad	0x4015b0bd44998d04              # double 5.4225969999999997
	.quad	0x4010ed373affb04f              # double 4.2316560000000001
	.quad	0x4022c25d6bebe165              # double 9.3796189999999999
	.quad	0x3ff8f62a5e785b5b              # double 1.5600989999999999
	.quad	0x40168d65e4606749              # double 5.6380840000000001
	.quad	0x401209eadd590c0b              # double 4.5096850000000002
	.quad	0x3fd2c764adff822c              # double 0.29342000000000001
	.quad	0x401f87a95c853c15              # double 7.8824820000000004
	.quad	0x4004975968512232              # double 2.5739010000000002
	.quad	0x40228c1fea8112ba              # double 9.2736809999999998
	.quad	0x40036a4b124d099e              # double 2.426901
	.quad	0x3ff2007aaef2c732              # double 1.1251169999999999
	.quad	0x4010e2d40aaeafab              # double 4.2215119999999997
	.quad	0x40209795703f2d3c              # double 8.2960619999999991
	.quad	0x40114545c78a6dad              # double 4.3176490000000003
	.quad	0x4021e3dfb0d51f82              # double 8.9450660000000006
	.quad	0x4020f90f94c87981              # double 8.4864470000000001
	.quad	0x40122c46d82ba5a0              # double 4.5432389999999998
	.quad	0x401b7518f3eccc47              # double 6.8643530000000004
	.quad	0x401a77485e3da2f9              # double 6.6164870000000002
	.quad	0x401700bf5d78811b              # double 5.7507299999999999
	.quad	0x3ff6e3a29c779a6b              # double 1.4305749999999999
	.quad	0x4019d44c7b02d59d              # double 6.4573229999999997
	.quad	0x3fe3d1b71758e219              # double 0.61934999999999996
	.quad	0x4013dd2178f68be3              # double 4.965948
	.quad	0x402147405f6ba062              # double 8.6391629999999999
	.quad	0x401492d6238da3c2              # double 5.1433949999999999
	.quad	0x4020aaec0724b76f              # double 8.3338319999999992
	.quad	0x3ff6d54a7f8012e0              # double 1.427073
	.quad	0x4000efa26a22b389              # double 2.1170089999999999
	.quad	0x3ff34be835dedf1e              # double 1.206032
	.quad	0x4020e4ea077036ca              # double 8.4470980000000004
	.quad	0x3fe284e3ffef3908              # double 0.57872199999999996
	.quad	0x401d0cdd0d8cb07d              # double 7.262562
	.quad	0x400b43c5bd0e12e8              # double 3.4080919999999999
	.quad	0x401e04c985f06f69              # double 7.5046749999999997
	.quad	0x401e57f38c5436b9              # double 7.58589
	.quad	0x4002663a5c1c6089              # double 2.2999160000000001
	.quad	0x401235004fb1183b              # double 4.5517589999999997
	.quad	0x3ff07e5109070fbf              # double 1.0308390000000001
	.quad	0x40191f1b25f633ce              # double 6.2803769999999997
	.quad	0x401b1972474538ef              # double 6.7748499999999998
	.quad	0x40212b64e054690e              # double 8.5847540000000002
	.quad	0x4014138e29f9ce8e              # double 5.0190970000000004
	.quad	0x401c0ca1cef240fb              # double 7.0123360000000003
	.quad	0x3fc53a1d323fee2d              # double 0.16583600000000001
	.quad	0x401f5779e9d0e992              # double 7.835426
	.quad	0x401be1ca3a4b5569              # double 6.9704980000000001
	.quad	0x401005e785b5b707              # double 4.0057660000000004
	.quad	0x40182c753e707e17              # double 6.0434159999999997
	.quad	0x40187f038e29f9cf              # double 6.1240370000000004
	.quad	0x400d40e7bc3c5bd1              # double 3.6566920000000001
	.quad	0x3ff115e28aa43351              # double 1.0678430000000001
	.quad	0x400a897d8cf398e9              # double 3.3171339999999998
	.quad	0x3ff9825f202107b8              # double 1.5943290000000001
	.quad	0x3fee1565c2d27807              # double 0.94011199999999995
	.quad	0x40230ae81882adc5              # double 9.5213020000000003
	.quad	0x3ff5e55b035bd513              # double 1.368495
	.quad	0x4019199fa11a975b              # double 6.275023
	.quad	0x400493a71151611c              # double 2.5720960000000002
	.quad	0x4021f4069e7fb268              # double 8.9766130000000004
	.quad	0x40224b8d60a63305              # double 9.1475629999999999
	.quad	0x4021392e83a109d0              # double 8.6116829999999993
	.quad	0x400f37785729b281              # double 3.902085
	.quad	0x4021e79b994e1a3f              # double 8.9523589999999995
	.quad	0x4019ff69ca9ef523              # double 6.4994269999999998
	.quad	0x4006109310129cbb              # double 2.7580930000000001
	.quad	0x400d7a2f05a708ee              # double 3.68466
	.quad	0x400b7b9e060fe47a              # double 3.4353600000000002
	.quad	0x401b39f51697f1fa              # double 6.8065990000000003
	.quad	0x4001f680e0653006              # double 2.2453630000000002
	.quad	0x400aeb1e5c0b9991              # double 3.3648039999999999
	.quad	0x4001678fabda0dfe              # double 2.175567
	.quad	0x401d4960b6f9fcb1              # double 7.3216580000000002
	.quad	0x401824028e4fb97c              # double 6.0351660000000003
	.quad	0x3ff58cb7d41743e9              # double 1.3468549999999999
	.quad	0x3fd354b48d3ae686              # double 0.30204500000000001
	.quad	0x40082deb0fadf2ed              # double 3.022421
	.quad	0x4010034d6a161e4f              # double 4.0032249999999996
	.quad	0x402342c7b890d5a6              # double 9.6304300000000005
	.quad	0x40215ef2e8c0485a              # double 8.6854469999999999
	.quad	0x3feb987c6327ed85              # double 0.86236400000000002
	.quad	0x40210673c4f3ba77              # double 8.5126019999999993
	.quad	0x401ee79a2834d270              # double 7.7261740000000003
	.quad	0x4008dd53cddd6e05              # double 3.1080700000000001
	.quad	0x3ff019c17225b74a              # double 1.0062880000000001
	.quad	0x40236747304039ac              # double 9.701715
	.quad	0x4017555d1c3ac92a              # double 5.8333630000000003
	.quad	0x402291c0ebedfa44              # double 9.284675
	.quad	0x401e375147f13059              # double 7.5540209999999996
	.quad	0x40137bf8769ec2ce              # double 4.8710649999999998
	.quad	0x40173582dbe7f2c3              # double 5.802257
	.quad	0x40166f840181e03f              # double 5.6089019999999996
	.quad	0x400f3d75e2046c76              # double 3.9050099999999999
	.quad	0x400cf689ca18bd66              # double 3.6203799999999999
	.quad	0x401fc52d234eb9a1              # double 7.9425549999999995
	.quad	0x4015f0763a190082              # double 5.484826
	.quad	0x401dac853c148345              # double 7.4184770000000002
	.quad	0x4020ba24aada33be              # double 8.3635610000000007
	.quad	0x40202f646ae3a3a9              # double 8.0925630000000002
	.quad	0x401e50cc78e9f6a9              # double 7.5789049999999997
	.quad	0x401a778854cdb7ae              # double 6.6167309999999997
	.quad	0x4003142d490e66cb              # double 2.384852
	.quad	0x3ffcfbeb9e492bc3              # double 1.811504
	.quad	0x3fdf8db48909289e              # double 0.49302400000000002
	.quad	0x4021db825e13b18e              # double 8.9287290000000006
	.quad	0x401f6e7296f6512b              # double 7.8578590000000003
	.quad	0x400cb1359791819d              # double 3.5865279999999999
	.quad	0x3fde697aeddce7cd              # double 0.475188
	.quad	0x4011c54195cc857f              # double 4.4426329999999998
	.quad	0x40023c25d074213a              # double 2.279369
	.quad	0x401461cd1c7de508              # double 5.0955089999999998
	.quad	0x40107aa2a0a95853              # double 4.1197609999999996
	.quad	0x3ffe2f49cf56eac8              # double 1.8865449999999999
	.quad	0x401bd855da272863              # double 6.961265
	.quad	0x402041adc8fb86f4              # double 8.1282789999999991
	.quad	0x40164931ca7d6734              # double 5.5714790000000001
	.quad	0x4023276b3bb83cf3              # double 9.5769900000000003
	.quad	0x401bb9d6f112fd33              # double 6.9314840000000002
	.quad	0x401854845132f87b              # double 6.0825360000000002
	.quad	0x400a5a3ca7503b82              # double 3.2940610000000001
	.quad	0x402106c226809d49              # double 8.5131999999999994
	.quad	0x40173bc77143393b              # double 5.8083780000000003
	.quad	0x40205a3bbc6eb0b8              # double 8.1762370000000004
	.quad	0x3fff950ebaade658              # double 1.9738910000000001
	.quad	0x400a35818c5c9a35              # double 3.2761260000000001
	.quad	0x400ce405b39e279e              # double 3.6113390000000001
	.quad	0x401a50f3882278d1              # double 6.5790540000000002
	.quad	0x400f753a3ec02f30              # double 3.9322400000000002
	.quad	0x400219fb1e18efbb              # double 2.262686
	.quad	0x40230a949a5657fb              # double 9.5206649999999992
	.quad	0x401e1f06705c896e              # double 7.5302980000000002
	.quad	0x3fff6b78897e9963              # double 1.963738
	.quad	0x40197b00ffda4053              # double 6.3701210000000001
	.quad	0x401bb2d948dc11e4              # double 6.9246569999999998
	.quad	0x401617ab7564302b              # double 5.5231149999999998
	.quad	0x3ff5722c01e68a0d              # double 1.340374
	.quad	0x4020a5e28aa43351              # double 8.3239940000000008
	.quad	0x3fbbca643cc07aaf              # double 0.108557
	.quad	0x4015b7fd3f5b5fa2              # double 5.4296769999999999
	.quad	0x401305803cd141a7              # double 4.7553720000000004
	.quad	0x40016c83ec892ab7              # double 2.1779860000000002
	.quad	0x400b0fae7924af0c              # double 3.382657
	.quad	0x4023de675147f130              # double 9.9343819999999994
	.quad	0x4021ad2da98676a7              # double 8.8382389999999997
	.quad	0x401e57164c729f5a              # double 7.5850460000000002
	.quad	0x3ff4b5cf2495e17e              # double 1.294387
	.quad	0x400417c914b167ec              # double 2.5116139999999998
	.quad	0x3febbc903ea704bc              # double 0.86676799999999998
	.quad	0x40114817b95a2941              # double 4.3204029999999998
	.quad	0x3fabd5347a5b0ff1              # double 0.054361
	.quad	0x40239cb5781c7150              # double 9.8060720000000003
	.quad	0x3fd5a92a30553261              # double 0.33844999999999997
	.quad	0x3fdcad4f5903a754              # double 0.44807799999999998
	.quad	0x4022af89a459103d              # double 9.3428470000000008
	.quad	0x40040034f3fd933e              # double 2.5001009999999999
	.quad	0x401fb4dd2f1a9fbe              # double 7.9266249999999996
	.quad	0x40163b003686a4ca              # double 5.5576179999999997
	.quad	0x3ffae4f11b60ae97              # double 1.6808940000000001
	.quad	0x401348db0574b407              # double 4.821148
	.quad	0x401239c0229a5ebb              # double 4.5563969999999996
	.quad	0x4020f4d31769a911              # double 8.478173
	.quad	0x3ff05dba908a265f              # double 1.022883
	.quad	0x4012feb851eb851f              # double 4.7487500000000002
	.quad	0x401decfd08d4bad8              # double 7.4814340000000001
	.quad	0x40196612839042d9              # double 6.3496800000000002
	.quad	0x4023fede76427c7c              # double 9.9977909999999994
	.quad	0x4006a5a682b62846              # double 2.8308840000000002
	.quad	0x401aa2b8c75c4a84              # double 6.6589080000000003
	.quad	0x4009281e4712e408              # double 3.1445889999999999
	.quad	0x3fdc8a936c58eeaf              # double 0.44595800000000002
	.quad	0x3fe02ce67d77fae3              # double 0.50548099999999996
	.quad	0x3fb63bff8a8f3a9b              # double 0.086853
	.quad	0x40019528f190d174              # double 2.197832
	.quad	0x400c947d805e5f31              # double 3.572505
	.quad	0x40055625204af923              # double 2.6670630000000002
	.quad	0x4022c70995aaf790              # double 9.3887450000000001
	.quad	0x3fe052d666a98245              # double 0.51011200000000001
	.quad	0x400d2c2df0d41312              # double 3.6465719999999999
	.quad	0x40114bf1e8e60807              # double 4.3241649999999998
	.quad	0x3fff257214f0520d              # double 1.946642
	.quad	0x40139c8323358f2e              # double 4.902844
	.quad	0x3ff72b51bd61f5be              # double 1.4480759999999999
	.quad	0x4021796b3354c122              # double 8.7371459999999992
	.quad	0x3fd7438088509bfa              # double 0.36349500000000001
	.quad	0x401afd0f1f57b41c              # double 6.747128
	.quad	0x4004ce221c8a7a42              # double 2.600651
	.quad	0x40211174c4cdfaca              # double 8.5340939999999996
	.quad	0x40223f2d5e071c54              # double 9.123393
	.quad	0x401ed2b94d940789              # double 7.7057849999999996
	.quad	0x401247e2c55c9603              # double 4.570201
	.quad	0x401f4fc2a8869c67              # double 7.8278910000000001
	.quad	0x402313f290abb44e              # double 9.5389599999999994
	.quad	0x4021c28262456f76              # double 8.8799010000000003
	.quad	0x4013629f9ce8d973              # double 4.8463120000000002
	.quad	0x40167ddce7cd0353              # double 5.6229129999999996
	.quad	0x401b45692b3cc4ac              # double 6.8177839999999996
	.quad	0x401319de05037500              # double 4.7752610000000004
	.quad	0x401453810e8858ff              # double 5.0815469999999996
	.quad	0x4011eaf20ea5b531              # double 4.4794390000000002
	.quad	0x40146994185058de              # double 5.1031040000000001
	.quad	0x40236a1ea35935fc              # double 9.7072649999999995
	.quad	0x402135d744f5d356              # double 8.6051579999999994
	.quad	0x400baf9e3864cb5c              # double 3.4607510000000001
	.quad	0x400b0f893faf4278              # double 3.3825859999999999
	.quad	0x4011f6dce39b456b              # double 4.4910769999999998
	.quad	0x401937e28240b780              # double 6.3045749999999998
	.quad	0x401dc264e48626f6              # double 7.439838
	.quad	0x4015d1b43526527a              # double 5.4547889999999999
	.quad	0x401176f9335d249e              # double 4.3661849999999998
	.quad	0x3ff0bb3fa6defc7a              # double 1.045715
	.quad	0x400c141205bc01a3              # double 3.5097999999999998
	.quad	0x4007e1b5c7cd898b              # double 2.9852099999999999
	.quad	0x3fdb697aeddce7cd              # double 0.428313
	.quad	0x4017a4cb9ecf6380              # double 5.910933
	.quad	0x3ff9b9cf9a06a6e3              # double 1.607864
	.quad	0x400b8dad31fcd24e              # double 3.444178
	.quad	0x40223d18090b417d              # double 9.1193240000000007
	.quad	0x400a2b4e11dbca97              # double 3.2711450000000002
	.quad	0x401c8e5d9e40c847              # double 7.1390289999999998
	.quad	0x4018c90fb65668c2              # double 6.1963489999999997
	.quad	0x4016992146a1a501              # double 5.6495410000000001
	.quad	0x4017915e7c8d1959              # double 5.8919620000000004
	.quad	0x40220cc857f3061c              # double 9.0249659999999991
	.quad	0x3ff6d17939a7c17b              # double 1.4261410000000001
	.quad	0x40218c1f85d744f6              # double 8.7736780000000003
	.quad	0x401ec68943e10060              # double 7.6938829999999996
	.quad	0x400539d1b2e59afa              # double 2.653232
	.quad	0x401e725f633ce63a              # double 7.6116919999999997
	.quad	0x3fd662131a8ef77f              # double 0.34973599999999999
	.quad	0x401f469be09bb6aa              # double 7.8189539999999997
	.quad	0x40204674f2f123c4              # double 8.1376109999999997
	.quad	0x3fd984f8f8a4c1ec              # double 0.39874100000000001
	.quad	0x3ff13a05143bf727              # double 1.076665
	.quad	0x40153855970b49e0              # double 5.3050139999999999
	.quad	0x4019bcf52b90a783              # double 6.4345290000000004
	.quad	0x4016f1c0ca600b03              # double 5.7360870000000004
	.quad	0x4018b6c11a11233e              # double 6.178471
	.quad	0x3ffb7d1dcd7060bb              # double 1.718046
	.quad	0x40118a2ec28b2a6b              # double 4.384944
	.quad	0x3fd4256366d7a56e              # double 0.31478200000000001
	.quad	0x4014c51159c49774              # double 5.1924489999999999
	.quad	0x3fff57c2ca148ba8              # double 1.9589259999999999
	.quad	0x401f41b9f98b71b9              # double 7.8141860000000002
	.quad	0x402186f459d9902a              # double 8.7635830000000006
	.quad	0x4007623c85c24c40              # double 2.9229669999999999
	.quad	0x3ff7bf92f2b66b61              # double 1.4842709999999999
	.quad	0x4020dd58644523f6              # double 8.4323149999999991
	.quad	0x3fe648216c61522a              # double 0.69630499999999995
	.quad	0x3fe98d887ebf22c0              # double 0.79852699999999999
	.quad	0x40213e3f359ff4fd              # double 8.6215759999999992
	.quad	0x401d2fa0945f9df5              # double 7.2965109999999997
	.quad	0x40160f080303c07f              # double 5.5146790000000001
	.quad	0x4020d52849cb252d              # double 8.4163230000000002
	.quad	0x4022b7c9ff92f2b6              # double 9.3589629999999993
	.quad	0x4009089dadfb506e              # double 3.1292070000000001
	.quad	0x3feb1198aeb80ed0              # double 0.84589800000000004
	.quad	0x400f1819d2391d58              # double 3.886768
	.quad	0x4016a48301a79fed              # double 5.6606560000000004
	.quad	0x400f151266341180              # double 3.8852890000000002
	.quad	0x4017cc1871e6cd29              # double 5.9493119999999999
	.quad	0x4000b3d3a1d323ff              # double 2.0878060000000001
	.quad	0x4022bfaa8a82a561              # double 9.3743479999999994
	.quad	0x40076b4e11dbca97              # double 2.9273950000000002
	.quad	0x400b5767903211cb              # double 3.417678
	.quad	0x4023bc2656abde40              # double 9.8674800000000004
	.quad	0x3fff9344806290ef              # double 1.973454
	.quad	0x401aebc903ea704c              # double 6.7302590000000002
	.quad	0x3ffbc15e39713ad6              # double 1.7347090000000001
	.quad	0x3fe2d5219a847b24              # double 0.58851699999999996
	.quad	0x401ed6145953586d              # double 7.7090620000000003
	.quad	0x40140214ad362e90              # double 5.0020319999999998
	.quad	0x4022cdc054ef459e              # double 9.4018580000000007
	.quad	0x4009c05e5f30e7ff              # double 3.2189299999999998
	.quad	0x4020669d30270f39              # double 8.2004180000000009
	.quad	0x40209c6f15619115              # double 8.3055350000000008
	.quad	0x3fff8b502ababead              # double 1.9715119999999999
	.quad	0x4011dded288ce704              # double 4.4667250000000003
	.quad	0x401e6cf52b90a783              # double 7.6064040000000003
	.quad	0x401e6d2bf5515055              # double 7.6066130000000002
	.quad	0x40180c68661ae70c              # double 6.0121169999999999
	.quad	0x40053927d45a5fc8              # double 2.652908
	.quad	0x40115fc47e49b1fb              # double 4.3435230000000002
	.quad	0x401a9dbe3c105187              # double 6.6540460000000001
	.quad	0x3fe55fe75bc44bf5              # double 0.66795700000000002
	.quad	0x401d078140dd3fe2              # double 7.2573290000000004
	.quad	0x4010a6f3f52fc265              # double 4.1630399999999996
	.quad	0x400deac083126e98              # double 3.7396250000000002
	.quad	0x401dd04f6dfc5cdd              # double 7.4534279999999997
	.quad	0x402175883ba3443d              # double 8.7295549999999995
	.quad	0x401fe6cefed63455              # double 7.9753990000000003
	.quad	0x4020b826edaa92e6              # double 8.3596719999999998
	.quad	0x4014ccecc814d728              # double 5.2001220000000004
	.quad	0x401d705ea24cc682              # double 7.3597359999999998
	.quad	0x401701e68a0d349c              # double 5.7518560000000001
	.quad	0x3ffd09b845564b66              # double 1.814873
	.quad	0x402032a8a82a5615              # double 8.0989430000000002
	.quad	0x401d221187e7c06e              # double 7.2832699999999999
	.quad	0x402158f5e41d4b6a              # double 8.6737509999999993
	.quad	0x401bdfa615a8deb1              # double 6.968407
	.quad	0x40203f6d330941c8              # double 8.1238799999999998
	.quad	0x4018064302b40f67              # double 6.0061150000000003
	.quad	0x4006addce7cd0353              # double 2.8348939999999998
	.quad	0x401c1ec892ab68cf              # double 7.030062
	.quad	0x40182f327aa68f4b              # double 6.0460909999999997
	.quad	0x4023e6ddce7cd035              # double 9.9509109999999996
	.quad	0x4020f39f559b3d08              # double 8.4758250000000004
	.quad	0x401ab13879c4113c              # double 6.6730669999999996
	.quad	0x40235426138fffbd              # double 9.6643530000000001
	.quad	0x402287c80841ede1              # double 9.2651979999999998
	.quad	0x3ffe6bd4cfd08d4c              # double 1.9013260000000001
	.quad	0x40178c176577531e              # double 5.8868080000000003
	.quad	0x4016c5c853c14834              # double 5.6931469999999997
	.quad	0x401ef3a109d0635a              # double 7.7379189999999998
	.quad	0x3fe24c2f837b4a23              # double 0.57179999999999997
	.quad	0x400f8fb5d031055c              # double 3.9451710000000002
	.quad	0x402108fba8826aa9              # double 8.5175450000000001
	.quad	0x401d0f3061c79b35              # double 7.2648330000000003
	.quad	0x3fdc06c43f5f9160              # double 0.437913
	.quad	0x401239ad85dfa872              # double 4.5563260000000003
	.quad	0x400dbe2cdc011d36              # double 3.7178589999999998
	.quad	0x40056fae7924af0c              # double 2.679532
	.quad	0x40117a83b1d0c804              # double 4.3696429999999999
	.quad	0x3ff09666a98244e9              # double 1.0367189999999999
	.quad	0x4005e4d8fd5cb791              # double 2.736742
	.quad	0x3fd4f8df7a4e7ab7              # double 0.32768999999999998
	.quad	0x400b6c97d8cf398f              # double 3.4280240000000002
	.quad	0x3ffc217b0f6ad70e              # double 1.7581739999999999
	.quad	0x4016a48adeebb342              # double 5.6606860000000001
	.quad	0x401da3de6149c6f3              # double 7.4100279999999996
	.quad	0x3ff8b2ebe596c82e              # double 1.543682
	.quad	0x4019b99dcb5781c7              # double 6.4312659999999999
	.quad	0x3ff4b994e1a3f466              # double 1.2953079999999999
	.quad	0x401aa047d3d4280b              # double 6.6565240000000001
	.quad	0x40112f45e0b4e11e              # double 4.2961650000000002
	.quad	0x401228dfbd6a593a              # double 4.5399159999999998
	.quad	0x400aba786c22680a              # double 3.3410500000000001
	.quad	0x40239fe8ccdd93c4              # double 9.8123229999999992
	.quad	0x3ff08b0292817764              # double 1.033938
	.quad	0x4012005b7cfe5860              # double 4.5003489999999999
	.quad	0x4016cb2bba98eda2              # double 5.6984089999999998
	.quad	0x4018ea14488c60cc              # double 6.228593
	.quad	0x40162db50f40e5a3              # double 5.5446359999999997
	.quad	0x40170ce032db1e9f              # double 5.7625739999999999
	.quad	0x40200408d8ec95c0              # double 8.0078800000000001
	.quad	0x402002684cf0739b              # double 8.004702
	.quad	0x401ccc460ed80a18              # double 7.1994860000000003
	.quad	0x4015973083558a76              # double 5.3976459999999999
	.quad	0x40178ef284167a96              # double 5.8895970000000002
	.quad	0x400142aa9f7b5aea              # double 2.1575519999999999
	.quad	0x40213c8711d798d9              # double 8.6182180000000006
	.quad	0x40082bb44e50c5eb              # double 3.0213399999999999
	.quad	0x401c82ecaeea63b7              # double 7.1278560000000004
	.quad	0x401669096bb98c7e              # double 5.6025749999999999
	.quad	0x4006ccbb7f9d6f11              # double 2.8499669999999999
	.quad	0x402232a433508f65              # double 9.0989090000000008
	.quad	0x401fc0008637bd06              # double 7.9375020000000003
	.quad	0x40148e42e1262025              # double 5.1389269999999998
	.quad	0x400f38bf7f06705d              # double 3.9027090000000002
	.quad	0x401afbdf4c2b51bd              # double 6.7459689999999997
	.quad	0x4006420ab7132724              # double 2.7822469999999999
	.quad	0x4014ea4e7ab75643              # double 5.228815
	.quad	0x40068877681669cf              # double 2.8166340000000001
	.quad	0x4021572799a1fd15              # double 8.6702239999999993
	.quad	0x4023b08aac96cc60              # double 9.8448080000000004
	.quad	0x402324aa7589efd8              # double 9.5716129999999992
	.quad	0x400a23c6c97d8cf4              # double 3.2674690000000002
	.quad	0x4016e333764f11b6              # double 5.721876
	.quad	0x40140a6f826edaa9              # double 5.0101909999999998
	.quad	0x4014cc3c18b502ac              # double 5.1994480000000003
	.quad	0x3fcf354c122749f1              # double 0.243814
	.quad	0x400ac331e3a7daa5              # double 3.34531
	.quad	0x402106536501e258              # double 8.5123549999999994
	.quad	0x40180868b9fdbd30              # double 6.0082120000000003
	.quad	0x3feeb72e6a76965f              # double 0.95986099999999996
	.quad	0x401f747c73eee526              # double 7.8637560000000004
	.quad	0x400c65cbbc2b94d9              # double 3.5497049999999999
	.quad	0x401706f9b994e1a4              # double 5.756812
	.quad	0x4012fe679463cfb3              # double 4.7484419999999998
	.quad	0x402337a072d1aeb4              # double 9.6086460000000002
	.quad	0x4020d9791819d239              # double 8.4247519999999998
	.quad	0x3ffaa8c8abd5dc40              # double 1.666207
	.quad	0x401af06c00da1a93              # double 6.7347869999999999
	.quad	0x40139822bbecaab9              # double 4.8985700000000003
	.quad	0x40177baf965b20b8              # double 5.870787
	.quad	0x40223c50ce4ead0c              # double 9.1178039999999995
	.quad	0x400daa400fba8827              # double 3.7081300000000001
	.quad	0x3fecb925bb7b6bb1              # double 0.89760099999999998
	.quad	0x3ffd74fc610f0e91              # double 1.8410610000000001
	.quad	0x3ff5e69ced0b30b6              # double 1.3688020000000001
	.quad	0x4018dc1f42bb6673              # double 6.214963
	.quad	0x401f3297bfa4c61e              # double 7.7994070000000004
	.quad	0x40234ac929aa1d75              # double 9.6460659999999993
	.quad	0x40033ce075f6fd22              # double 2.404725
	.quad	0x4007f30a4e379b78              # double 2.9936720000000001
	.quad	0x4010764345cfede9              # double 4.1154909999999996
	.quad	0x400360b1bbcf4e87              # double 2.4222139999999999
	.quad	0x401c312d77318fc5              # double 7.048025
	.quad	0x401731cda2b5a20e              # double 5.7986360000000001
	.quad	0x3ffda709fa54c554              # double 1.853281
	.quad	0x400ef4de7ea5f84d              # double 3.8695650000000001
	.quad	0x401983b9f127f5e8              # double 6.3786389999999997
	.quad	0x402326577531db44              # double 9.5748859999999993
	.quad	0x40238ae8e1d6494d              # double 9.7713079999999994
	.quad	0x401f70de8f6cefed              # double 7.8602239999999996
	.quad	0x40148c382a12f901              # double 5.136933
	.quad	0x401ae144cbe1eb42              # double 6.719989
	.quad	0x401b6f71eafee6fb              # double 6.8588329999999997
	.quad	0x40184aafbc1acde2              # double 6.0729360000000003
	.quad	0x401cfb8c32a8c9b8              # double 7.2456519999999998
	.quad	0x3ff2aaab042528ae              # double 1.1666669999999999
	.quad	0x401ee9c7ffde7211              # double 7.7283020000000002
	.quad	0x3fec8f7fcfc3f812              # double 0.892517
	.quad	0x401150025bfad29a              # double 4.3281340000000004
	.quad	0x400e0446b69db65f              # double 3.7520880000000001
	.quad	0x402305f71eafee70              # double 9.5116510000000005
	.quad	0x402385b09a671ef3              # double 9.7611129999999999
	.quad	0x4006139f340d4dc6              # double 2.7595809999999998
	.quad	0x400f13775b813016              # double 3.8845049999999999
	.quad	0x400a13dd11be6e65              # double 3.2596989999999999
	.quad	0x4021e2dcf4623d0c              # double 8.943092
	.quad	0x3ff64856e696a26e              # double 1.3926609999999999
	.quad	0x401b4213e3e29308              # double 6.8145290000000003
	.quad	0x40100e8858ff7597              # double 4.0141920000000004
	.quad	0x4012f16b11c6d1e1              # double 4.73576
	.quad	0x401757afea3df6dc              # double 5.8356320000000004
	.quad	0x4013e642bf9830e4              # double 4.9748640000000002
	.quad	0x402234ddd6e04c06              # double 9.1032550000000008
	.quad	0x3fe872a172abef07              # double 0.76399300000000003
	.quad	0x3fe73fc6540cc78f              # double 0.72653500000000004
	.quad	0x4011f0f5e41d4b6a              # double 4.4853129999999997
	.quad	0x4015bdde7a743a64              # double 5.4354189999999996
	.quad	0x3ff0424f6598e10d              # double 1.016189
	.quad	0x40234b691212513b              # double 9.6472859999999993
	.quad	0x401a232830a0b1bc              # double 6.5343330000000002
	.quad	0x401af981beb18117              # double 6.7436590000000001
	.quad	0x400113a8a3f8982d              # double 2.1345990000000001
	.quad	0x400bbcd9a52263d8              # double 3.467212
	.quad	0x40143a7f8012dfd7              # double 5.0571270000000004
	.quad	0x400030728e92d55a              # double 2.0236559999999999
	.quad	0x3ff63cf91a32b12d              # double 1.389886
	.quad	0x400137625204af92              # double 2.1520429999999999
	.quad	0x3ff29355475a31a5              # double 1.1609700000000001
	.quad	0x401b55714b9cb685              # double 6.8334400000000004
	.quad	0x4004ab76709fa54c              # double 2.5837219999999999
	.quad	0x401854db9c7368ad              # double 6.0828689999999996
	.quad	0x40229879c4113c68              # double 9.2978039999999992
	.quad	0x40218c0dd3fe1976              # double 8.7735430000000001
	.quad	0x401df0995aaf78ff              # double 7.48496
	.quad	0x40133b8ed1bf7ad5              # double 4.8081620000000003
	.quad	0x40232fbaecd07853              # double 9.593223
	.quad	0x3fc8d9e83e425aee              # double 0.19414999999999999
	.quad	0x4005d79af1886df8              # double 2.7302759999999999
	.quad	0x401bb22ff08893b8              # double 6.9240110000000001
	.quad	0x400272999567dbb1              # double 2.3059569999999998
	.quad	0x401ea3bafd976ff4              # double 7.6598930000000003
	.quad	0x402377d1dcd7060c              # double 9.7340230000000005
	.quad	0x401cff20ea5b530d              # double 7.2491490000000001
	.quad	0x40111dedf1e0828c              # double 4.2792279999999998
	.quad	0x401d0049ecb31c22              # double 7.2502820000000003
	.quad	0x40232fb5d031055c              # double 9.5931840000000008
	.quad	0x3ffbe9bf162ae4b0              # double 1.744567
	.quad	0x4019c0c282c6ef3d              # double 6.4382419999999998
	.quad	0x401803315d701d9f              # double 6.0031179999999997
	.quad	0x401b39ce075f6fd2              # double 6.8064499999999999
	.quad	0x3fb785d744f5d356              # double 0.091885999999999995
	.quad	0x4017e3ad18d25edd              # double 5.97234
	.quad	0x3ff9b12c27a63737              # double 1.605755
	.quad	0x4022b67839cd8128              # double 9.3563860000000005
	.quad	0x4011e3721d53cddd              # double 4.4721149999999996
	.quad	0x40131d8a979e16d7              # double 4.7788490000000001
	.quad	0x40213fa54c554328              # double 8.6243079999999992
	.quad	0x3fffcd2f5dbb9cfa              # double 1.9875940000000001
	.quad	0x401d62d40aaeafab              # double 7.3465119999999997
	.quad	0x4019d4c2b51bd61f              # double 6.4577739999999997
	.quad	0x4021309c1b54195d              # double 8.5949410000000004
	.quad	0x3fd79b994e1a3f46              # double 0.36887199999999998
	.quad	0x400df4c7f3493858              # double 3.7445219999999999
	.quad	0x401ce6cefed63455              # double 7.2253990000000003
	.quad	0x401b8b1b36bd2b6f              # double 6.8858459999999999
	.quad	0x401d9474d9c6b053              # double 7.3949769999999999
	.quad	0x401c2e5cd4ed2cbf              # double 7.0452760000000003
	.quad	0x40116d86ec17ebaf              # double 4.3569599999999999
	.quad	0x401c4480a5accd53              # double 7.066897
	.quad	0x400f2f893faf4278              # double 3.8982109999999999
	.quad	0x401835af294dd723              # double 6.0524259999999996
	.quad	0x3ff0970a3d70a3d7              # double 1.036875
	.quad	0x401dade76427c7c5              # double 7.4198279999999999
	.quad	0x4020a4e2b063e07a              # double 8.3220419999999997
	.quad	0x4012da6d698fe692              # double 4.7133079999999996
	.quad	0x401ed313be22e5de              # double 7.7061299999999999
	.quad	0x4020c874c8ffb8b2              # double 8.3915159999999993
	.quad	0x40172d8b1dd5d3dd              # double 5.7944760000000004
	.quad	0x4023a7ea1c68ec53              # double 9.8279580000000006
	.quad	0x40111d0cc35ce182              # double 4.2783689999999996
	.quad	0x4022ceb5f5f0b285              # double 9.4037319999999997
	.quad	0x401f73b81b64e054              # double 7.8630069999999996
	.quad	0x40123adcd2d44dcb              # double 4.5574830000000004
	.quad	0x3fb2c2df0d413123              # double 0.073286000000000004
	.quad	0x401d45814940bbb2              # double 7.317876
	.quad	0x4002c09edbf8b9bb              # double 2.3440530000000002
	.quad	0x3fe868a2ec28b2a7              # double 0.76277300000000003
	.quad	0x40187e2cdc011d36              # double 6.1232179999999996
	.quad	0x40207063beec397a              # double 8.2195110000000007
	.quad	0x40182abc0e38a7e7              # double 6.0417329999999998
	.quad	0x3fded72bcb5fe543              # double 0.48188300000000001
	.quad	0x401467f1b6912125              # double 5.1015079999999999
	.quad	0x40040bae89eba6ad              # double 2.5057040000000002
	.quad	0x4012c180d3cff64d              # double 4.688968
	.quad	0x4015eb3311a543f2              # double 5.4796870000000002
	.quad	0x3ff09d81f10667f9              # double 1.038454
	.quad	0x3fd2b3311a543f1c              # double 0.29218699999999997
	.quad	0x40110892684cf074              # double 4.2583710000000004
	.quad	0x4012c087442c7fbb              # double 4.6880160000000002
	.quad	0x40201c026cc1ca3a              # double 8.0547059999999995
	.quad	0x401006117720c8cd              # double 4.0059259999999997
	.quad	0x400b09e34330d738              # double 3.3798279999999998
	.quad	0x4017169057d1782d              # double 5.7720349999999998
	.quad	0x3ffaf8055fbb517a              # double 1.6855519999999999
	.quad	0x40054c964628027e              # double 2.6623960000000002
	.quad	0x40147410f94c8798              # double 5.1133459999999999
	.quad	0x402041bd1ed9dfdb              # double 8.1283960000000004
	.quad	0x401c561aa3f034b1              # double 7.0840860000000001
	.quad	0x4019e5182a9930be              # double 6.473725
	.quad	0x3ff6296c3fc43b2e              # double 1.385113
	.quad	0x4017e41205bc01a3              # double 5.9727249999999996
	.quad	0x401fb329c347e8cd              # double 7.9249640000000001
	.quad	0x40160ff04577d955              # double 5.5155649999999996
	.quad	0x401442f87ad080b6              # double 5.0654009999999996
	.quad	0x3fecd31337eb28d8              # double 0.90076599999999996
	.quad	0x4021eadab9f559b4              # double 8.9587000000000003
	.quad	0x3fff61cbccf28c7a              # double 1.961376
	.quad	0x401f6c7192ea52f0              # double 7.8559020000000004
	.quad	0x3fe566c4c5974e66              # double 0.66879500000000003
	.quad	0x3fb4e9f6a93f290b              # double 0.081695000000000004
	.quad	0x4019ce19b90ea9e7              # double 6.4512700000000001
	.quad	0x3ff1c768dfbd6a59              # double 1.1111839999999999
	.quad	0x40119b25f633ce64              # double 4.4015120000000003
	.quad	0x400a260c38f36695              # double 3.2685780000000002
	.quad	0x4020a477bbf93ff2              # double 8.3212259999999993
	.quad	0x401a3f345069a4df              # double 6.5617229999999998
	.quad	0x3f6e3c968943e100              # double 0.0036909999999999998
	.quad	0x401fc2af5771001d              # double 7.9401219999999996
	.quad	0x40014dea033e78e2              # double 2.1630440000000002
	.quad	0x400fd0b28522ea10              # double 3.9769030000000001
	.quad	0x4005ffd7a13c254a              # double 2.7499229999999999
	.quad	0x4012614cec41dd1a              # double 4.5950199999999999
	.quad	0x4012c3b81b64e054              # double 4.6911319999999996
	.quad	0x4003ed9dfdac68a9              # double 2.4910239999999999
	.quad	0x4000d17507e9d94d              # double 2.102274
	.quad	0x4005b392189bd838              # double 2.7126809999999999
	.quad	0x400441693c03bc4d              # double 2.5319389999999999
	.quad	0x401cba9ac36544fe              # double 7.1822309999999998
	.quad	0x4021178359bc33f8              # double 8.5459239999999994
	.quad	0x401e6afd976ff3ae              # double 7.6044830000000001
	.quad	0x4015015d2d01c0ca              # double 5.2513319999999997
	.quad	0x4019d4e8b7e4de3c              # double 6.4579190000000004
	.quad	0x4021e8fb00bcbe62              # double 8.9550400000000003
	.quad	0x401233cc8de2ac32              # double 4.5505849999999999
	.quad	0x401f871eafee6fb5              # double 7.8819530000000002
	.quad	0x4015b1832fcac8e7              # double 5.4233520000000004
	.quad	0x4020736284599674              # double 8.2253609999999994
	.quad	0x4021b24a05dd8f93              # double 8.8482210000000006
	.quad	0x40204a21858bc59c              # double 8.1447870000000008
	.quad	0x400f444178705426              # double 3.908328
	.quad	0x40185d7518b0d0ee              # double 6.0912670000000002
	.quad	0x401ba5f1bef49cf5              # double 6.9120549999999996
	.quad	0x40148c853c148345              # double 5.1372270000000002
	.quad	0x40236b213e3e2930              # double 9.7092379999999991
	.quad	0x40048ed99cbee808              # double 2.5697510000000001
	.quad	0x4011a00d1b71758e              # double 4.4062999999999999
	.quad	0x401c0ced916872b0              # double 7.0126249999999999
	.quad	0x4013aa9691a75cd1              # double 4.9165900000000002
	.quad	0x3ffa6a0a958537e3              # double 1.6508890000000001
	.quad	0x3ff9ac710cb295ea              # double 1.6046
	.quad	0x3fd2711947cfa26a              # double 0.28815299999999999
	.quad	0x3ff4c8765ba6efc3              # double 1.2989409999999999
	.quad	0x3ff4e3e29307af21              # double 1.305636
	.quad	0x3fe865cb35f3d7d4              # double 0.76242600000000004
	.quad	0x3fe4445aa2e3c537              # double 0.63334400000000002
	.quad	0x40118bbecaab8a5d              # double 4.3864700000000001
	.quad	0x4000fa4d6e47dc38              # double 2.1222180000000002
	.quad	0x400262d8c2a454de              # double 2.2982649999999998
	.quad	0x4014dd4f9c1f85d7              # double 5.2161239999999998
	.quad	0x401ac3ef6b5d462c              # double 6.6913429999999998
	.quad	0x401267c30d306a2b              # double 4.6013299999999999
	.quad	0x40168e957470eb25              # double 5.6392420000000003
	.quad	0x3fec532a497fa5d3              # double 0.88515200000000005
	.quad	0x4021f653a81dc0db              # double 8.9811069999999997
	.quad	0x40142f11b60ae968              # double 5.045966
	.quad	0x4013a8533b107747              # double 4.9143800000000004
	.quad	0x401f3849cb252ce0              # double 7.8049689999999998
	.quad	0x3fe6e9bbf0dc768e              # double 0.716032
	.quad	0x401bb0e1719f7f8d              # double 6.9227350000000003
	.quad	0x4016dc0010c6f7a1              # double 5.7148440000000003
	.quad	0x400ad1f57b41bfbe              # double 3.352519
	.quad	0x40225aeab7995ee1              # double 9.1775719999999996
	.quad	0x40098007dd441355              # double 3.1875149999999999
	.quad	0x3fe64c33b5393251              # double 0.69680200000000003
	.quad	0x40188413122b7baf              # double 6.1289790000000002
	.quad	0x3fefb0e3cd9a5226              # double 0.99034299999999997
	.quad	0x401a23c70c996b76              # double 6.5349389999999996
	.quad	0x3fb3d32c625e99e9              # double 0.077440999999999996
	.quad	0x4001f14d2f5dbb9d              # double 2.242823
	.quad	0x401467c7c5260f5e              # double 5.1013479999999998
	.quad	0x40032da554b8bef9              # double 2.3972880000000001
	.quad	0x4000833508f648c7              # double 2.064066
	.quad	0x4016c052934acaff              # double 5.6878149999999996
	.quad	0x4022fc60029f16b1              # double 9.4929199999999998
	.quad	0x402104430b178b37              # double 8.508324
	.quad	0x401b9e7d9988d2a2              # double 6.904776
	.quad	0x3ffafde939eadd59              # double 1.68699
	.quad	0x400bc789613d31ba              # double 3.4724300000000001
	.quad	0x40134b3edd8b60f2              # double 4.8234820000000003
	.quad	0x40217f7292c49342              # double 8.7489209999999993
	.quad	0x401dd080303c07ee              # double 7.453614
	.quad	0x40117d0b30b5aa71              # double 4.3721129999999997
	.quad	0x401f6f4666ec9e23              # double 7.8586669999999996
	.quad	0x3feb811d3671ac15              # double 0.85951100000000002
	.quad	0x402305e28aa43351              # double 9.5114940000000007
	.quad	0x4018ca98eda22f6a              # double 6.1978489999999997
	.quad	0x40225263b688bda9              # double 9.1609169999999995
	.quad	0x400365004fb1183b              # double 2.4243169999999998
	.quad	0x3fd79856a37ac3eb              # double 0.36867299999999997
	.quad	0x401d474c4cdfaca3              # double 7.3196269999999997
	.quad	0x4000a8e25c810a57              # double 2.0824630000000002
	.quad	0x401b4e225fa658c5              # double 6.8263030000000002
	.quad	0x40169eddce7cd035              # double 5.6551429999999998
	.quad	0x4013c765fd8adaba              # double 4.944725
	.quad	0x4016656b00ffda40              # double 5.5990409999999997
	.quad	0x4022143c9eecbfb1              # double 9.0395249999999994
	.quad	0x4015b23b7952d235              # double 5.4240550000000001
	.quad	0x400b5358f2e05ccd              # double 3.4156970000000002
	.quad	0x4020a05b9e8c47a1              # double 8.3131989999999991
	.quad	0x3fe145a1cac08312              # double 0.53974999999999995
	.quad	0x3ff3ff5c6c11a112              # double 1.249844
	.quad	0x4011ad2aa5c5f7c6              # double 4.4191079999999996
	.quad	0x401038e92d55a3a1              # double 4.0555770000000004
	.quad	0x3fbeb8305d95dd4c              # double 0.11999799999999999
	.quad	0x401c6dda8bd230ba              # double 7.1072790000000001
	.quad	0x400f30bc7b45f17c              # double 3.8987970000000001
	.quad	0x401dcc3116228134              # double 7.4494059999999998
	.quad	0x400087a743a647fe              # double 2.0662370000000001
	.quad	0x40225e37585be1a8              # double 9.1840159999999997
	.quad	0x400ccff0025bfad3              # double 3.6015320000000002
	.quad	0x4006b0342aa9f7b6              # double 2.8360370000000001
	.quad	0x40131615a8deb0fb              # double 4.7715670000000001
	.quad	0x401cb88ce703afb8              # double 7.1802250000000001
	.quad	0x401c823b7952d235              # double 7.1271800000000001
	.quad	0x40139cabc5154867              # double 4.9029990000000003
	.quad	0x40039ac36544fe37              # double 2.4505680000000001
	.quad	0x401e4a2f05a708ee              # double 7.5724450000000001
	.quad	0x3ffcb1fcd24e160e              # double 1.7934540000000001
	.quad	0x4004d1001d5c3159              # double 2.6020509999999999
	.quad	0x3ffd4563ed0f6274              # double 1.8294410000000001
	.quad	0x401a5f77f27fe4bd              # double 6.5932310000000003
	.quad	0x3fd1a38759253544              # double 0.27560600000000002
	.quad	0x400e6bb341e14be0              # double 3.8025880000000001
	.quad	0x40065963992c8c50              # double 2.793647
	.quad	0x40208dfdcdf69878              # double 8.2773269999999997
	.quad	0x40153065f9591cd2              # double 5.2972640000000002
	.quad	0x4022c00c308feac4              # double 9.3750929999999996
	.quad	0x40186fb3b7521145              # double 6.1090840000000002
	.quad	0x40226003cd141a69              # double 9.1875289999999996
	.quad	0x40185d5dc4007571              # double 6.0911780000000002
	.quad	0x401a722a2c237479              # double 6.6114889999999997
	.quad	0x3ff487de5082cf53              # double 1.2831710000000001
	.quad	0x4015d4cad57bc7f7              # double 5.4578049999999996
	.quad	0x400e711e85fd04a3              # double 3.805234
	.quad	0x4022dc8cf7caa759              # double 9.4307630000000006
	.quad	0x4013fba1b1960fa1              # double 4.9957339999999997
	.quad	0x401a7cc1ca3a4b55              # double 6.6218329999999996
	.quad	0x400638a7e73a365d              # double 2.7776640000000001
	.quad	0x3fe048f53c579f23              # double 0.50890599999999997
	.quad	0x4011c2be0589acbd              # double 4.4401780000000004
	.quad	0x3ff73ffac1d29dc7              # double 1.45312
	.quad	0x40073b267c6b8b69              # double 2.9038819999999999
	.quad	0x40113d19dece5711              # double 4.3096690000000004
	.quad	0x4021ef16b11c6d1e              # double 8.9669699999999999
	.quad	0x3ffcf3d4ae429e0a              # double 1.8095289999999999
	.quad	0x3ffa858eeae9ee46              # double 1.6576070000000001
	.quad	0x40111bdfd2630ec3              # double 4.2772209999999999
	.quad	0x401a6c2e770bd018              # double 6.6056460000000001
	.quad	0x4011434699418506              # double 4.3156990000000004
	.quad	0x4020eaacfb762d84              # double 8.4583510000000003
	.quad	0x400f16b441bb8c33              # double 3.8860860000000002
	.quad	0x40205a365cb35f3d              # double 8.1761959999999991
	.quad	0x402198f88333fc87              # double 8.7987710000000003
	.quad	0x40123b6cbd987c63              # double 4.5580319999999999
	.quad	0x3ff0aecf20642396              # double 1.042678
	.quad	0x401ec48dc11e42e1              # double 7.6919469999999998
	.quad	0x401d483dbc23315d              # double 7.3205479999999996
	.quad	0x40182e50c5eb313c              # double 6.0452300000000001
	.quad	0x40062db7281fd9ba              # double 2.772322
	.quad	0x401ecafdda8bd231              # double 7.6982340000000002
	.quad	0x402127396d0917d7              # double 8.5766100000000005
	.quad	0x401599c4da9003ef              # double 5.4001650000000003
	.quad	0x401c8ece9a2c6690              # double 7.1394599999999997
	.quad	0x4020a660807357e6              # double 8.3249549999999992
	.quad	0x4006472da122fad7              # double 2.7847550000000001
	.quad	0x4010b4c7b02d59d5              # double 4.1765429999999997
	.quad	0x401454e93e1c9b41              # double 5.0829209999999998
	.quad	0x3ff0f8c436fc1590              # double 1.0607340000000001
	.quad	0x4007cce2d1f1cfbc              # double 2.9750420000000002
	.quad	0x4020e8240b780347              # double 8.4534000000000002
	.quad	0x402240eef1bac2df              # double 9.1268229999999999
	.quad	0x401da5796bfca85d              # double 7.4115960000000003
	.quad	0x4003e59103c8e25d              # double 2.4870930000000002
	.quad	0x401b4cb9a9da597d              # double 6.8249269999999997
	.quad	0x400d7539b888722a              # double 3.682239
	.quad	0x400e8a4d2b2bfdb5              # double 3.8175300000000001
	.quad	0x4017c373affb04ee              # double 5.9408709999999996
	.quad	0x4021dbc87db2b346              # double 8.9292639999999999
	.quad	0x4016f68123810e88              # double 5.7407269999999997
	.quad	0x4016b7913e81450f              # double 5.679265
	.quad	0x4017dcfaacd9e83e              # double 5.9657999999999998
	.quad	0x402249b8aa00192a              # double 9.1439869999999992
	.quad	0x3feaa5247cb70ac4              # double 0.83265900000000003
	.quad	0x400254aba3875925              # double 2.2913429999999999
	.quad	0x3fc350ebaade657c              # double 0.15090700000000001
	.quad	0x4013eb1f255f351a              # double 4.9796110000000002
	.quad	0x4010e221c8a7a41e              # double 4.2208319999999997
	.quad	0x4005eba0620ab713              # double 2.7400519999999999
	.quad	0x400cadec1c1d6cf8              # double 3.5849229999999999
	.quad	0x401ddabc5154866a              # double 7.4636089999999999
	.quad	0x40115352220bc383              # double 4.3313680000000003
	.quad	0x40181831ad2135db              # double 6.0236270000000003
	.quad	0x4012d57f3061c79b              # double 4.7084929999999998
	.quad	0x4012eb324851a869              # double 4.7296839999999998
	.quad	0x3ffc58127b2cc708              # double 1.7715019999999999
	.quad	0x401055464dc22ab2              # double 4.0832759999999997
	.quad	0x4023aeb2074ea8da              # double 9.8412019999999991
	.quad	0x40110cee5abc0e39              # double 4.2626280000000003
	.quad	0x4017992428d434a0              # double 5.8995519999999999
	.quad	0x40063531550ca1cf              # double 2.775973
	.quad	0x402282ff6d330942              # double 9.2558550000000004
	.quad	0x40119be835dedf1e              # double 4.402253
	.quad	0x4003e3821af7d30b              # double 2.4860880000000001
	.quad	0x401a797891e21533              # double 6.6186239999999996
	.quad	0x3fd43ade225fa659              # double 0.31609300000000001
	.quad	0x401c0ac53b0813cb              # double 7.0105180000000002
	.quad	0x4002cd7add15f02c              # double 2.3503319999999999
	.quad	0x401e9b78cc9a77e6              # double 7.6518280000000001
	.quad	0x3ff36b4d8ba40d91              # double 1.213697
	.quad	0x3fd84d72799a1fd1              # double 0.37972699999999998
	.quad	0x401a376102795704              # double 6.554081
	.quad	0x3fb9944aa53fc009              # double 0.099918999999999994
	.quad	0x401375f06f694467              # double 4.8651749999999998
	.quad	0x4007344c37e6f71a              # double 2.9005359999999998
	.quad	0x400038ba40d90e24              # double 2.0276990000000001
	.quad	0x40080ed5f138bce0              # double 3.007244
	.quad	0x3fe817b7414a4d2b              # double 0.75289499999999998
	.quad	0x40118a63b688bda9              # double 4.3851459999999998
	.quad	0x3fe3525edd052935              # double 0.60380500000000004
	.quad	0x401838e1d6494d51              # double 6.0555490000000001
	.quad	0x40206a4acf312b1b              # double 8.2076019999999996
	.quad	0x400acda122fad6cb              # double 3.3504049999999999
	.quad	0x4010b28d8665e02f              # double 4.1743680000000003
	.quad	0x3fe07f23cc8de2ac              # double 0.51551999999999998
	.quad	0x40227fd5cb790fb6              # double 9.2496779999999994
	.quad	0x401cdcb0c026cc1d              # double 7.2155180000000003
	.quad	0x4020a84e831ad213              # double 8.3287239999999994
	.quad	0x401e78b9fdbd2fa1              # double 7.6178970000000001
	.quad	0x4014e6a012599ed8              # double 5.2252200000000002
	.quad	0x401c3596c82e019b              # double 7.052333
	.quad	0x3ff2215b9a5a89b9              # double 1.1331439999999999
	.quad	0x4018a0f451761459              # double 6.1571819999999997
	.quad	0x40024f63800218df              # double 2.288764
	.quad	0x40215eae9ee45c36              # double 8.6849260000000008
	.quad	0x400fe0d9945b6c37              # double 3.9847899999999998
	.quad	0x40099e01de269164              # double 3.2021519999999999
	.quad	0x400d59aae6c8f755              # double 3.6687829999999999
	.quad	0x3ffa8af5fd47bedb              # double 1.6589259999999999
	.quad	0x40206b20535c9e67              # double 8.2092310000000008
	.quad	0x401da425f202107b              # double 7.4103009999999996
	.quad	0x402148327674d163              # double 8.6410099999999996
	.quad	0x401480d2806af46b              # double 5.1258030000000003
	.quad	0x4021380a5accd530              # double 8.6094539999999995
	.quad	0x40161a7d24180d3d              # double 5.525868
	.quad	0x3fec6503fb374363              # double 0.88733099999999998
	.quad	0x3ff1a74afd545415              # double 1.103343
	.quad	0x400dff43419e3001              # double 3.7496399999999999
	.quad	0x3fe55506573215fd              # double 0.66662900000000003
	.quad	0x3fd07789a459103d              # double 0.25729600000000002
	.quad	0x400437b07075b3e1              # double 2.5271919999999999
	.quad	0x400e2aaf35e310dc              # double 3.770842
	.quad	0x4005f8a4c1ebc83b              # double 2.7464080000000002
	.quad	0x4001a95208e15012              # double 2.2076760000000002
	.quad	0x40198ecf20642396              # double 6.389462
	.quad	0x40034a9e6eeb7026              # double 2.411435
	.quad	0x401ebff6d330941d              # double 7.6874650000000004
	.quad	0x40208bc83a96d4c3              # double 8.2730119999999996
	.quad	0x401f7fac1d29dc72              # double 7.8746799999999997
	.quad	0x40144a1e81cb46bb              # double 5.0723820000000002
	.quad	0x3ff5ff0dc768dfbd              # double 1.3747689999999999
	.quad	0x401ec40fa9c12f0a              # double 7.6914660000000001
	.quad	0x4020c73c2dadb835              # double 8.3891310000000008
	.quad	0x4012f7d45a5fc7e7              # double 4.7420210000000003
	.quad	0x40192d5b6805a2d7              # double 6.2942939999999998
	.quad	0x4017c327243137b0              # double 5.9405789999999996
	.quad	0x401d46634117f844              # double 7.3187379999999997
	.quad	0x4004946e4c0df58c              # double 2.572476
	.quad	0x401979e6687f455a              # double 6.3690429999999996
	.quad	0x4013c863beec397a              # double 4.9456930000000003
	.quad	0x4017b88db0574b40              # double 5.9302279999999996
	.quad	0x4018cce8101f31f4              # double 6.2001039999999996
	.quad	0x402061806f262889              # double 8.1904330000000005
	.quad	0x3fd7cbea4ebdd335              # double 0.37182100000000001
	.quad	0x3fff91a543f1c758              # double 1.973058
	.quad	0x400f77d63022dd7b              # double 3.9335140000000002
	.quad	0x400b3f540895d0b7              # double 3.4059219999999999
	.quad	0x401081cc100e6afd              # double 4.1267550000000002
	.quad	0x401433a7daa4fca4              # double 5.0504449999999999
	.quad	0x3ffefcaa7589efd8              # double 1.9366859999999999
	.quad	0x401322cdc011d367              # double 4.7839879999999999
	.quad	0x400a4dbbe0157eed              # double 3.2879559999999999
	.quad	0x401d26a832b990b0              # double 7.2877510000000001
	.quad	0x401f27ad4b2745bf              # double 7.7887469999999998
	.quad	0x40236360d0247022              # double 9.6940980000000003
	.quad	0x40141774aba38759              # double 5.0229059999999999
	.quad	0x402208fc0d2c386d              # double 9.0175479999999997
	.quad	0x400dafb19e731d2e              # double 3.710788
	.quad	0x400ad107faa044af              # double 3.3520660000000002
	.quad	0x4022a9d451fc4c16              # double 9.3316979999999994
	.quad	0x401d3463cfb3311a              # double 7.3011619999999997
	.quad	0x3ff9cee7c49fd7a1              # double 1.6130139999999999
	.quad	0x3ff7fdfc19c17226              # double 1.4995080000000001
	.quad	0x401004f6dfc5cdd5              # double 4.004848
	.quad	0x40220e42396073de              # double 9.0278489999999998
	.quad	0x400b8a4fca42aed1              # double 3.4425349999999999
	.quad	0x4013b55714b9cb68              # double 4.9270899999999997
	.quad	0x401246bca5375c8e              # double 4.5690790000000003
	.quad	0x4015464f11b60ae9              # double 5.3186609999999996
	.quad	0x3fdefc829cfdd228              # double 0.48416199999999998
	.quad	0x40226b486f049a99              # double 9.2095369999999992
	.quad	0x3fe9d4c33b539325              # double 0.807222
	.quad	0x4016b77318fc5048              # double 5.6791499999999999
	.quad	0x4011b2b7fe08aefb              # double 4.4245299999999999
	.quad	0x401e79f6ec5b078e              # double 7.6191060000000004
	.quad	0x401c4a715831f03d              # double 7.0726979999999999
	.quad	0x3fe04523f67f4dbe              # double 0.50844
	.quad	0x3fd5987c6327ed85              # double 0.33743200000000001
	.quad	0x4013a5cd4ed2cbea              # double 4.9119159999999997
	.quad	0x402133e2b4959e62              # double 8.6013389999999994
	.quad	0x402370116ebd4cfd              # double 9.7188829999999999
	.quad	0x3ffb24edf6124074              # double 1.6965159999999999
	.quad	0x4023da0fd3b29a1c              # double 9.9259020000000006
	.quad	0x40209b17acc4ef89              # double 8.3029150000000005
	.quad	0x401e2e514c22ee42              # double 7.5452320000000004
	.quad	0x3fe4a51e321a2e7f              # double 0.64515599999999995
	.quad	0x400c5ff25e56cd6c              # double 3.5468489999999999
	.quad	0x4021249752977c89              # double 8.5714670000000002
	.quad	0x401a859ff4fd6d7f              # double 6.6304930000000004
	.quad	0x401bdfe3b03e20cd              # double 6.968642
	.quad	0x401e5a89b951c5c5              # double 7.5884159999999996
	.quad	0x3ffca7b6fe2e6ea8              # double 1.7909459999999999
	.quad	0x4021e3823c85c24c              # double 8.9443529999999995
	.quad	0x401d9c9b41398634              # double 7.4029360000000004
	.quad	0x40198d15ad106ee3              # double 6.387778
	.quad	0x400c74013ec460ee              # double 3.5566430000000002
	.quad	0x4022a641b328b6d8              # double 9.3247199999999992
	.quad	0x40167aa8a82a5615              # double 5.6197840000000001
	.quad	0x402325bdb5d89481              # double 9.5737129999999996
	.quad	0x3ff10a82a5614df9              # double 1.0650660000000001
	.quad	0x3ffd5846e8f29d41              # double 1.834052
	.quad	0x400fc1aa3f034b0e              # double 3.969563
	.quad	0x3fc3dd5d3dc8b86b              # double 0.155193
	.quad	0x4019511b1d92b7fe              # double 6.329205
	.quad	0x3ffbbbf0dc768dfc              # double 1.733384
	.quad	0x401b54e8fb00bcbe              # double 6.8329199999999997
	.quad	0x3ffea086bdf4c2b5              # double 1.914191
	.quad	0x40217969c23b7953              # double 8.7371350000000003
	.quad	0x4004f3cb3e5753a4              # double 2.61904
	.quad	0x4022aa34eb9a176e              # double 9.3324350000000003
	.quad	0x400eee3ef284167b              # double 3.8663310000000002
	.quad	0x3fe0cd8fd5cb7910              # double 0.52509300000000003
	.quad	0x4021a6a93f290abb              # double 8.8255099999999995
	.quad	0x4012f7cf1c3265ae              # double 4.7420010000000001
	.quad	0x4013bca8e2e2b8c7              # double 4.9342379999999997
	.quad	0x3f9290257c914b16              # double 0.018127999999999998
	.quad	0x4003c3211cb039ef              # double 2.470278
	.quad	0x400bca0902de00d2              # double 3.4736500000000001
	.quad	0x401ee7221858bc5a              # double 7.7257160000000002
	.quad	0x3fe8d94af4f0d845              # double 0.77652500000000002
	.quad	0x400c7a919695d91b              # double 3.5598480000000001
	.quad	0x401ad132f87ad081              # double 6.7042960000000003
	.quad	0x40237327aa68f4b6              # double 9.7249119999999998
	.quad	0x3ff8a0956c0d6f54              # double 1.5392049999999999
	.quad	0x401c87dbb16c1e36              # double 7.1326739999999997
	.quad	0x4011a467381d7dbf              # double 4.4105499999999997
	.quad	0x4013c726d04e618d              # double 4.9444840000000001
	.quad	0x400a6ac7da1ec4e7              # double 3.3021389999999999
	.quad	0x400c85271bcdbbe0              # double 3.565016
	.quad	0x4014cc74b838c112              # double 5.1996640000000003
	.quad	0x40217e8900c521de              # double 8.7471390000000007
	.quad	0x40162ec13b9f127f              # double 5.5456589999999997
	.quad	0x401cd5a63f9a49c3              # double 7.2086420000000002
	.quad	0x400bd64628027d89              # double 3.4796260000000001
	.quad	0x401083bc903ea705              # double 4.1286490000000002
	.quad	0x401fc42f1ed17c5f              # double 7.941586
	.quad	0x401613e468cac4b5              # double 5.5194260000000002
	.quad	0x4019c46d82ba5a04              # double 6.4418240000000004
	.quad	0x40158ae70c1333b9              # double 5.3856469999999996
	.quad	0x402390c32a8c9b84              # double 9.7827389999999994
	.quad	0x4000932830a0b1bc              # double 2.0718540000000001
	.quad	0x4019d12dba4d6e48              # double 6.4542760000000001
	.quad	0x3ff2af5dbb9cf9a0              # double 1.1678139999999999
	.quad	0x3fd9f9b13165d399              # double 0.40586499999999998
	.quad	0x4021363e8dda48b6              # double 8.6059459999999994
	.quad	0x400a58c868b9fdbd              # double 3.2933509999999999
	.quad	0x4020ec028e4fb97c              # double 8.4609570000000005
	.quad	0x401a0176ddaceee1              # double 6.50143
	.quad	0x401f116a055757d6              # double 7.7670060000000003
	.quad	0x40008820e6299525              # double 2.0664690000000001
	.quad	0x402057d0aed99cbf              # double 8.1715140000000002
	.quad	0x400b0a3161a1db87              # double 3.3799769999999998
	.quad	0x401313bd9cae2110              # double 4.7692779999999999
	.quad	0x40183c67dfe32a06              # double 6.0589899999999997
	.quad	0x40134e7e62dc6e2b              # double 4.8266540000000004
	.quad	0x3fda76295208e150              # double 0.413462
	.quad	0x3ff2d2e72da122fb              # double 1.17649
	.quad	0x4021639192641b33              # double 8.6944700000000008
	.quad	0x400d71bf7ad4b274              # double 3.6805409999999998
	.quad	0x3fe448d5c74751ce              # double 0.63389099999999998
	.quad	0x3fc4142f61ed5ae2              # double 0.15686600000000001
	.quad	0x3fe461e0c5a8155d              # double 0.63694799999999996
	.quad	0x3fc8030c23fab10c              # double 0.18759300000000001
	.quad	0x4008c84ad794a6ec              # double 3.0977990000000002
	.quad	0x4017b5e679463cfb              # double 5.9276369999999998
	.quad	0x3ff8e60913a4f872              # double 1.5561609999999999
	.quad	0x402219f51697f1fa              # double 9.0506980000000006
	.quad	0x4001e2edbb59ddc2              # double 2.235805
	.quad	0x40073bde82d7b635              # double 2.9042330000000001
	.quad	0x401448aac96cc5fc              # double 5.070964
	.quad	0x4022924723aafff3              # double 9.2856989999999993
	.quad	0x3ffada3e39f77293              # double 1.6782820000000001
	.quad	0x401bc8bcdfefbf40              # double 6.9460329999999999
	.quad	0x3fd34623d0bfa094              # double 0.30115599999999998
	.quad	0x4000012513b5bf6a              # double 2.000559
	.quad	0x401d7f6f08cc575c              # double 7.374447
	.quad	0x4010330121682f94              # double 4.0498089999999998
	.quad	0x4020ac881e4712e4              # double 8.3369759999999999
	.quad	0x401f042aa9f7b5af              # double 7.7540690000000003
	.quad	0x3ff544c7b02d59d5              # double 1.3292919999999999
	.quad	0x4015bddebd9018e7              # double 5.4354199999999997
	.quad	0x3ff32c460ed80a18              # double 1.1983090000000001
	.quad	0x401172d01c0ca601              # double 4.3621220000000003
	.quad	0x401c3e6c8f755369              # double 7.0609609999999998
	.quad	0x400cb4d50ebaade6              # double 3.5882969999999998
	.quad	0x40190f39085f4a12              # double 6.2648659999999996
	.quad	0x3ff6b967caea747e              # double 1.4202650000000001
	.quad	0x3ff59df43c7d5ed0              # double 1.3510629999999999
	.quad	0x40058d099e0e7360              # double 2.6938659999999999
	.quad	0x3fd9c8b439581062              # double 0.40287499999999998
	.quad	0x401560fd7e45803d              # double 5.3447170000000002
	.quad	0x3ff19805e5f30e80              # double 1.099615
	.quad	0x3fca5ce5b4245f5b              # double 0.20596
	.quad	0x4022055cd91eeaa7              # double 9.0104740000000003
	.quad	0x400cddfb9389b520              # double 3.60839
	.quad	0x4004e49dbec2480f              # double 2.6116290000000002
	.quad	0x4010db5f1bef49cf              # double 4.2142299999999997
	.quad	0x4010accd96206855              # double 4.1687529999999997
	.quad	0x3faa21858bc59b80              # double 0.051036999999999999
	.quad	0x4019448238540464              # double 6.3169029999999999
	.quad	0x40078e3e6c4c5975              # double 2.944455
	.quad	0x3ff0609dcf893faf              # double 1.0235879999999999
	.quad	0x401b593d5347a5b1              # double 6.837148
	.quad	0x3ffeaea63b688bdb              # double 1.9176390000000001
	.quad	0x40031b8cb8e086be              # double 2.388452
	.quad	0x4013f9103c8e25c8              # double 4.9932259999999999
	.quad	0x3ffc5b2f661f18ca              # double 1.772262
	.quad	0x4018220c069e7fb2              # double 6.0332489999999996
	.quad	0x4006ad5e071c53f4              # double 2.8346520000000002
	.quad	0x401c40f7b9e060fe              # double 7.0634449999999998
	.quad	0x401ff083558a7610              # double 7.9848759999999999
	.quad	0x400ce9e5e2478855              # double 3.6142080000000001
	.quad	0x40090be8bc169c24              # double 3.1308150000000001
	.quad	0x400ebeb313be22e6              # double 3.8431150000000001
	.quad	0x4011127dcbddb984              # double 4.2680579999999999
	.quad	0x401fff5275ee99a6              # double 7.9993379999999998
	.quad	0x400e35043e5321e6              # double 3.775887
	.quad	0x4019623854046413              # double 6.3459180000000002
	.quad	0x40192f601797cc3a              # double 6.296265
	.quad	0x4021cb474107314d              # double 8.8970280000000006
	.quad	0x4016bced0b30b5aa              # double 5.6844979999999996
	.quad	0x4012ab54e2b063e0              # double 4.6673159999999996
	.quad	0x40208f9e7b80a9df              # double 8.2805060000000008
	.quad	0x40020d3bf2f55582              # double 2.256462
	.quad	0x400a001de2691644              # double 3.250057
	.quad	0x40047aecd07852f8              # double 2.560022
	.quad	0x40082b588e368f08              # double 3.0211649999999999
	.quad	0x401ed6cacd184c27              # double 7.7097579999999998
	.quad	0x4017657eed45e918              # double 5.8491169999999997
	.quad	0x3fdd0ddc6195464e              # double 0.45397100000000001
	.quad	0x4017409b738e6d16              # double 5.8130930000000003
	.quad	0x3ff406a2b1704ff4              # double 1.25162
	.quad	0x402394471b478423              # double 9.7896049999999998
	.quad	0x4013a968d759ee89              # double 4.9154390000000001
	.quad	0x4022f8bdec5f394b              # double 9.4858239999999991
	.quad	0x3fd40053e2d6238e              # double 0.31252000000000002
	.quad	0x401c687f023e9ea1              # double 7.1020469999999998
	.quad	0x3ffdec0b5675579b              # double 1.870128
	.quad	0x402261a2c669057d              # double 9.1906949999999998
	.quad	0x4014f27243137b07              # double 5.236764
	.quad	0x3fc6e0f3cb3e5754              # double 0.17874000000000001
	.quad	0x3fe5ef826edaa92e              # double 0.68548699999999996
	.quad	0x402210baa582dbe8              # double 9.0326740000000001
	.quad	0x3ff5bef6b5d462c3              # double 1.3591219999999999
	.quad	0x40211404c8bc9cd4              # double 8.5390990000000002
	.quad	0x400431337eb28d86              # double 2.5240239999999998
	.quad	0x3ffb5aab47410731              # double 1.7096359999999999
	.quad	0x402352719b4dcec0              # double 9.6610230000000001
	.quad	0x401dac903ea704bc              # double 7.4185189999999999
	.quad	0x40003344806290ef              # double 2.0250330000000001
	.quad	0x3ff8e5e785b5b707              # double 1.5561290000000001
	.quad	0x402368eb0318b934              # double 9.7049179999999992
	.quad	0x4022b514e3bcd35b              # double 9.3536750000000008
	.quad	0x4012389b951c5c57              # double 4.5552809999999999
	.quad	0x3fe7fb02d59d55e7              # double 0.74939100000000003
	.quad	0x401f9295e9e1b08a              # double 7.8931500000000003
	.quad	0x4018ab224aada33c              # double 6.1671230000000001
	.quad	0x401bb3c9eecbfb16              # double 6.9255750000000003
	.quad	0x4016a71da37ef5a9              # double 5.6631989999999996
	.quad	0x40049738e6d15ad1              # double 2.573839
	.quad	0x401106af89c5e6ff              # double 4.2565289999999996
	.quad	0x3fcf7891e215336e              # double 0.245867
	.quad	0x4007a9e5e2478855              # double 2.9579580000000001
	.quad	0x3fcf6aa4b9884c6a              # double 0.24544199999999999
	.quad	0x3fdc5a858793dd98              # double 0.443025
	.quad	0x40169aa8a82a5615              # double 5.6510340000000001
	.quad	0x3fe13775b8130165              # double 0.53802000000000005
	.quad	0x401585e80bed740c              # double 5.3807679999999998
	.quad	0x3ff70e4fb97bb731              # double 1.4409940000000001
	.quad	0x40127045fe111277              # double 4.609642
	.quad	0x401bd7a56de3326a              # double 6.9605920000000001
	.quad	0x400d9252ce032db2              # double 3.696447
	.quad	0x3fa02d59d55e6bc6              # double 0.031595999999999999
	.quad	0x3fcab2d905c03361              # double 0.20858299999999999
	.quad	0x4015bcf91a32b12d              # double 5.4345439999999998
	.quad	0x4001dfe1975f2cb6              # double 2.2343169999999999
	.quad	0x3ffe109070fbeb9e              # double 1.8790439999999999
	.quad	0x40101ab21815a07b              # double 4.0260699999999998
	.quad	0x40093e78e1932d6f              # double 3.1555040000000001
	.quad	0x401fa81908e581cf              # double 7.9141579999999995
	.quad	0x3ff7c0053e2d6239              # double 1.48438
	.quad	0x4020861719f7f8cb              # double 8.2618950000000009
	.quad	0x4019cf993d5347a6              # double 6.4527330000000003
	.quad	0x401c1bdd334c5da7              # double 7.0272110000000003
	.quad	0x401b78887229e908              # double 6.8677080000000004
	.quad	0x3ffb3e586013660e              # double 1.7027209999999999
	.quad	0x4018f7785729b281              # double 6.2416700000000001
	.quad	0x40237ca7b4e54f7b              # double 9.7434670000000007
	.quad	0x4003025d8d79d0a6              # double 2.3761549999999998
	.quad	0x4015b2b239a38fbd              # double 5.4245080000000003
	.quad	0x3ffb205ff1d81f10              # double 1.6954039999999999
	.quad	0x40195aa087ca643d              # double 6.3385030000000002
	.quad	0x401342413db7f173              # double 4.8147019999999996
	.quad	0x40210dee99a62ed3              # double 8.5272109999999994
	.quad	0x40195894c447c30d              # double 6.3365049999999998
	.quad	0x40189c0ca600b029              # double 6.1523919999999999
	.quad	0x4016d606748e4756              # double 5.709009
	.quad	0x40183eb78897e996              # double 6.0612469999999998
	.quad	0x3ffba5dbfceb7889              # double 1.7279929999999999
	.quad	0x400bbe3fbbd7b203              # double 3.4678949999999999
	.quad	0x402040f1f57b41c0              # double 8.1268460000000005
	.quad	0x4015ba7daa4fca43              # double 5.4321200000000003
	.quad	0x4019203c07ee0b0b              # double 6.281479
	.quad	0x4018167b1c0010c7              # double 6.021954
	.quad	0x401b8d30f062d40b              # double 6.8878820000000003
	.quad	0x401ebce2089e3433              # double 7.6844559999999999
	.quad	0x4023933c1ce6c094              # double 9.7875680000000002
	.quad	0x3ff5ba17f4128bf4              # double 1.3579330000000001
	.quad	0x40221fd438d1d8a5              # double 9.0621659999999995
	.quad	0x401a8a875d56f32c              # double 6.6352820000000001
	.quad	0x40190c3a42f1ed18              # double 6.2619410000000002
	.quad	0x4021dbdaf8df7a4e              # double 8.9294049999999991
	.quad	0x402396052502eec8              # double 9.7930080000000003
	.quad	0x401967eae5bc87db              # double 6.3514819999999999
	.quad	0x40219ca03c4b09ea              # double 8.8059100000000008
	.quad	0x401fafe542e557de              # double 7.921773
	.quad	0x4014b8438088509c              # double 5.179945
	.quad	0x401886f587d6f976              # double 6.1317959999999996
	.quad	0x3fcd5ed8d36b4c7f              # double 0.22945699999999999
	.quad	0x3ffd9bda5119ce07              # double 1.8505499999999999
	.quad	0x4000b78c436fc159              # double 2.089623
	.quad	0x40185385c67dfe33              # double 6.0815650000000003
	.quad	0x40147fc86cebbba5              # double 5.1247879999999997
	.quad	0x3ff4b37fbefd0071              # double 1.2938229999999999
	.quad	0x401e87bfa4c61d86              # double 7.6325669999999999
	.quad	0x3ffa6b3dd11be6e6              # double 1.6511819999999999
	.quad	0x401472480e8c8abd              # double 5.1116029999999997
	.quad	0x400e76323bbc6eb1              # double 3.8077130000000001
	.quad	0x4009671bcdbbe015              # double 3.1753459999999998
	.quad	0x401a02cc70867ad9              # double 6.5027330000000001
	.quad	0x40229adea897635e              # double 9.3024799999999992
	.quad	0x4005604d12018a44              # double 2.6720220000000001
	.quad	0x401a42ca9ac36545              # double 6.565226
	.quad	0x4017d82adc4c9c91              # double 5.9611010000000002
	.quad	0x3fc03eaf6837f7be              # double 0.126913
	.quad	0x401aa1886df82b1f              # double 6.6577469999999996
	.quad	0x3fd234eb9a176ddb              # double 0.28448000000000001
	.quad	0x401cc6dc1a47a9e3              # double 7.1941990000000002
	.quad	0x4006b34373f316e3              # double 2.8375309999999998
	.quad	0x3ff84322291fb3fa              # double 1.5163899999999999
	.quad	0x40023b64e054690e              # double 2.2790010000000001
	.quad	0x400e4a5482385404              # double 3.7862939999999998
	.quad	0x40211615ca6ca03c              # double 8.5431349999999994
	.quad	0x40228d71f36262cc              # double 9.2762600000000006
	.quad	0x3fefb8f7985271bd              # double 0.99132900000000001
	.quad	0x40210913a4f8726d              # double 8.517728
	.quad	0x400eaabffcdab192              # double 3.8333740000000001
	.quad	0x3ffa0b81733226c4              # double 1.6278090000000001
	.quad	0x400f1ef73c0c1fc9              # double 3.89012
	.quad	0x4013772580c308ff              # double 4.8663540000000003
	.quad	0x3feca28dc981beb2              # double 0.89484300000000006
	.quad	0x40212d145d851655              # double 8.5880460000000003
	.quad	0x4011dd6b65a9a805              # double 4.4662300000000004
	.quad	0x40017790752da986              # double 2.1833809999999998
	.quad	0x4023bf45bf26f1dc              # double 9.8735789999999994
	.quad	0x4005fc968943e100              # double 2.7483339999999998
	.quad	0x4015d1f969e3c969              # double 5.4550530000000004
	.quad	0x401536bd6e8af816              # double 5.3034569999999999
	.quad	0x3fd10b0af5fd47bf              # double 0.26629900000000001
	.quad	0x3fd069e7fb267c6c              # double 0.25646400000000003
	.quad	0x3ff302d9cf13ceea              # double 1.188196
	.quad	0x401915432873bc90              # double 6.2707639999999998
	.quad	0x4022810c4dec1c1d              # double 9.2520469999999992
	.quad	0x3ff40da5daf07bfe              # double 1.2533319999999999
	.quad	0x4022a05f28848388              # double 9.3132260000000002
	.quad	0x4021a408fa7a8501              # double 8.8203809999999994
	.quad	0x400631af3a14cec4              # double 2.7742599999999999
	.quad	0x3fc1378ee2867275              # double 0.13450799999999999
	.quad	0x400f9ae1cde5d181              # double 3.9506260000000002
	.quad	0x4001d61c36976bc2              # double 2.229546
	.quad	0x4021201d7dbf4880              # double 8.5627250000000004
	.quad	0x4020bb51deefe500              # double 8.3658590000000004
	.quad	0x4016a5432873bc90              # double 5.6613889999999998
	.quad	0x4016bdaceee0f3cb              # double 5.6852299999999998
	.quad	0x40228ca25529fe00              # double 9.2746759999999994
	.quad	0x401d09ecb31c219f              # double 7.2596920000000003
	.quad	0x4000f36b4c7f3494              # double 2.1188570000000002
	.quad	0x400b625f202107b8              # double 3.4230330000000002
	.quad	0x401cd38eb0318b93              # double 7.2065989999999998
	.quad	0x40216434c1a8ac5c              # double 8.6957149999999998
	.quad	0x400a5212d77318fc              # double 3.2900749999999999
	.quad	0x4018ac8216c61523              # double 6.1684650000000003
	.quad	0x40231c8f32378ab1              # double 9.5557800000000003
	.quad	0x4021d831ceaf251c              # double 8.9222549999999998
	.quad	0x400ca059a73b42cc              # double 3.5782959999999999
	.quad	0x401c1cca2db61bb0              # double 7.0281149999999997
	.quad	0x400afadd9c27e953              # double 3.372493
	.quad	0x4017be90bc7b45f1              # double 5.9360989999999996
	.quad	0x3fe684039abf3387              # double 0.70361499999999999
	.quad	0x401be2f3c2dadb83              # double 6.9716329999999997
	.quad	0x401beeb18116ebd5              # double 6.9830990000000002
	.quad	0x40120338b47c73ef              # double 4.5031460000000001
	.quad	0x3fee03a109d0635a              # double 0.93794299999999997
	.quad	0x400ee86f049a9974              # double 3.8634930000000001
	.quad	0x4001bd34df04ddb5              # double 2.2173859999999999
	.quad	0x4021ac67168f8e7e              # double 8.8367240000000002
	.quad	0x402150f7121ab4b7              # double 8.6581349999999997
	.quad	0x400b101b866e43aa              # double 3.3828649999999998
	.quad	0x40208925bb7b6bb1              # double 8.2678659999999997
	.quad	0x40236de5aff2a173              # double 9.7146430000000005
	.quad	0x401e64f0d844d014              # double 7.5985750000000003
	.quad	0x401cd39d1b2e59b0              # double 7.2066540000000003
	.quad	0x40238e50e779207d              # double 9.7779609999999994
	.quad	0x3ff28e3de6149c6f              # double 1.159727
	.quad	0x401aea2a0a958538              # double 6.7286760000000001
	.quad	0x40008df7a4e7ab75              # double 2.0693199999999998
	.quad	0x400ed6abde3fbbd8              # double 3.8548200000000001
	.quad	0x401ed8ff327aa68f              # double 7.7119109999999997
	.quad	0x402147090f733a8a              # double 8.6387409999999996
	.quad	0x4011984a0e410b63              # double 4.39872
	.quad	0x4010aae297396d09              # double 4.1668799999999999
	.quad	0x40194ab9b23dd54e              # double 6.3229740000000003
	.quad	0x4013092e62131a8f              # double 4.758966
	.quad	0x3fd5c8c5004fb118              # double 0.34037899999999999
	.quad	0x4004eba5a038194c              # double 2.615062
	.quad	0x4009a61c79b34a45              # double 3.2061090000000001
	.quad	0x40125c83a96d4c34              # double 4.5903460000000003
	.quad	0x4000d62e90364389              # double 2.104581
	.quad	0x3fe8a5918a009f62              # double 0.77021099999999998
	.quad	0x3ffac35696e58a33              # double 1.67269
	.quad	0x401d9bea91d9b1b8              # double 7.4022620000000003
	.quad	0x3ff7759253543aeb              # double 1.4662040000000001
	.quad	0x401191a650614163              # double 4.3922359999999996
	.quad	0x402017a1a0cf1801              # double 8.0461550000000006
	.quad	0x4016e47f13059642              # double 5.723141
	.quad	0x401ce6c050bd87b5              # double 7.2253429999999996
	.quad	0x4000d944241c3efb              # double 2.106087
	.quad	0x400489a0ad8a1166              # double 2.5672009999999998
	.quad	0x400272f555821294              # double 2.3061319999999998
	.quad	0x401c1e9142b302f7              # double 7.0298509999999998
	.quad	0x40239b95e5aff2a1              # double 9.8038779999999992
	.quad	0x402252e536501e26              # double 9.1619050000000009
	.quad	0x400a0eb4e981387a              # double 3.2571810000000001
	.quad	0x40230256de33269e              # double 9.504569
	.quad	0x4020b024f6598e11              # double 8.3440320000000003
	.quad	0x4014191fb3fa6df0              # double 5.0245350000000002
	.quad	0x4003f24f227d028a              # double 2.4933149999999999
	.quad	0x402116fa615a8deb              # double 8.5448789999999999
	.quad	0x400c0e6a76965f52              # double 3.5070389999999998
	.quad	0x3fcb2be48a58b3f6              # double 0.21227699999999999
	.quad	0x4002f24c8366516e              # double 2.3683100000000001
	.quad	0x3ff529e5e2478855              # double 1.322729
	.quad	0x401fcaa3f034b0e2              # double 7.9478910000000003
	.quad	0x40146161e4f765fe              # double 5.0951000000000004
	.quad	0x40187e0e30446b6a              # double 6.1231010000000001
	.quad	0x401bf843c3a42f1f              # double 6.9924460000000002
	.quad	0x401713b7952d234f              # double 5.7692550000000002
	.quad	0x402158afa2f05a71              # double 8.6732150000000008
	.quad	0x3ff8fb8800eae18b              # double 1.561409
	.quad	0x401a78bf7f06705d              # double 6.6179180000000004
	.quad	0x3ff6c79b34a44c7b              # double 1.423732
	.quad	0x4016656cd6c2efd4              # double 5.5990479999999998
	.quad	0x4008a21101b00368              # double 3.0791339999999998
	.quad	0x40194de8709741d1              # double 6.3260820000000004
	.quad	0x3fc681669ced0b31              # double 0.17582400000000001
	.quad	0x4005ffd9ba1b1961              # double 2.749927
	.quad	0x40084da0168b5cc0              # double 3.037903
	.quad	0x401a01a543f1c758              # double 6.5016069999999999
	.quad	0x401a32834d26fa40              # double 6.5493290000000002
	.quad	0x40067626b2f23034              # double 2.8076910000000002
	.quad	0x401666876e1deacd              # double 5.6001260000000004
	.quad	0x400d4f42784a9479              # double 3.6637010000000001
	.quad	0x400c4622c4502689              # double 3.534246
	.quad	0x4017ffd9ba1b1961              # double 5.999854
	.quad	0x3fcf121ab4b72c52              # double 0.24274000000000001
	.quad	0x3fc3a4d6e47dc37a              # double 0.15346799999999999
	.quad	0x400604b124d099e1              # double 2.752291
	.quad	0x401e217b95a29414              # double 7.5326979999999999
	.quad	0x401c2f4c6e6d9be5              # double 7.0461900000000002
	.quad	0x401d314a4d2b2bfe              # double 7.2981350000000003
	.quad	0x401a6005c4651f3f              # double 6.5937720000000004
	.quad	0x40202078b7a1c25d              # double 8.0634209999999999
	.quad	0x400aadc8754f3776              # double 3.3348550000000001
	.quad	0x4021a24c61d8622c              # double 8.8169889999999995
	.quad	0x401ad88a8b08dd1e              # double 6.7114659999999997
	.quad	0x4017911fd5885d31              # double 5.8917229999999998
	.quad	0x4023947cb70ac3a8              # double 9.7900139999999993
	.quad	0x4019ad1569f49060              # double 6.4190269999999998
	.quad	0x4015b548ecd8dbcf              # double 5.4270360000000002
	.quad	0x40120c426351def0              # double 4.5119720000000001
	.quad	0x40189c7abfb9bed3              # double 6.1528119999999999
	.quad	0x40115b13dfb0d520              # double 4.3389430000000004
	.quad	0x40177caa326e1156              # double 5.8717430000000004
	.quad	0x4020abf6a0dbad3a              # double 8.3358659999999993
	.quad	0x3ffa1d616f86a099              # double 1.6321730000000001
	.quad	0x400e39873ffac1d3              # double 3.7780900000000002
	.quad	0x400db21bc126a65d              # double 3.711967
	.quad	0x4011650acc0bdcad              # double 4.3486739999999999
	.quad	0x40092b4aec8d5c74              # double 3.1461389999999998
	.quad	0x4015edd22856605f              # double 5.4822470000000001
	.quad	0x401dc3e78e1932d7              # double 7.4413130000000001
	.quad	0x400acd666a98244f              # double 3.3502930000000002
	.quad	0x401ef63779e9d0ea              # double 7.7404460000000004
	.quad	0x40223dbee3d5fdce              # double 9.1205970000000001
	.quad	0x3ff57415b1422ccb              # double 1.3408409999999999
	.quad	0x400369b738e6d15b              # double 2.4266190000000001
	.quad	0x4017429802c0a4a0              # double 5.8150329999999997
	.quad	0x4011d4b2745bf26f              # double 4.4577119999999999
	.quad	0x3ffe4bb906466b1e              # double 1.8934869999999999
	.quad	0x4015415d2d01c0ca              # double 5.3138319999999997
	.quad	0x4014580e8c8abd5e              # double 5.0859930000000002
	.quad	0x3ffca0b2c83ec893              # double 1.7892330000000001
	.quad	0x3ffb0db59578a2a9              # double 1.690847
	.quad	0x400568bf3bea91da              # double 2.6761460000000001
	.quad	0x40210e49906cca2e              # double 8.5279050000000005
	.quad	0x4020617b7414a4d3              # double 8.1903950000000005
	.quad	0x3fdaf41aef6f8f04              # double 0.421149
	.quad	0x401f210129cbab65              # double 7.7822310000000003
	.quad	0x400e736d655e28aa              # double 3.8063609999999999
	.quad	0x400f6ad2dcb1465f              # double 3.9271600000000002
	.quad	0x3ff4a5fe974a3401              # double 1.2905260000000001
	.quad	0x401b738b47c73eee              # double 6.8628359999999997
	.quad	0x3ff3bd6b65a9a805              # double 1.2337450000000001
	.quad	0x4023cdbd72bcb5fe              # double 9.9018359999999994
	.quad	0x401c7cc4ef88b978              # double 7.1218450000000004
	.quad	0x3fece5c91d14e3bd              # double 0.90305000000000002
	.quad	0x400d65aee631f8a1              # double 3.6746500000000002
	.quad	0x401452107b784663              # double 5.0801410000000002
	.quad	0x3ff0c484944ed6fe              # double 1.0479780000000001
	.quad	0x40238c15097c8084              # double 9.7735979999999997
	.quad	0x4014ce7967caea74              # double 5.2016349999999996
	.quad	0x4018b7c393682731              # double 6.1794570000000002
	.quad	0x401f4a2f05a708ee              # double 7.8224450000000001
	.quad	0x401e3920c069e7fb              # double 7.5557889999999998
	.quad	0x401ee789a459103d              # double 7.7261110000000003
	.quad	0x3fff8fe36d22424a              # double 1.972629
	.quad	0x3ff1fdc26dce39b4              # double 1.1244529999999999
	.quad	0x3fec6c8711d798d9              # double 0.88824800000000004
	.quad	0x400afe4ffc9795b3              # double 3.3741759999999998
	.quad	0x401e90fadf2ecf20              # double 7.6415819999999997
	.quad	0x40238969c23b7953              # double 9.7683850000000003
	.quad	0x40013c12f09d8c6d              # double 2.1543329999999998
	.quad	0x4012598d8a979e17              # double 4.5874540000000001
	.quad	0x3ffc10d7be9856a3              # double 1.7541119999999999
	.quad	0x401e1139c94f69cb              # double 7.5168220000000003
	.quad	0x40010c63f141205c              # double 2.1310500000000001
	.quad	0x4022b568a50507a7              # double 9.3543140000000004
	.quad	0x402178685553ef6b              # double 8.7351709999999994
	.quad	0x3ffe9613d31b9b67              # double 1.91164
	.quad	0x3ffe769014b599aa              # double 1.9039459999999999
	.quad	0x401975cf67b1c001              # double 6.365049
	.quad	0x40195e5fb71fbc5e              # double 6.3421620000000001
	.quad	0x40060ada33bd9cae              # double 2.7552989999999999
	.quad	0x400451715c63ae25              # double 2.5397669999999999
	.quad	0x3fbbeb28d8665e03              # double 0.109057
	.quad	0x40179aa92e62131b              # double 5.9010360000000004
	.quad	0x402300fb00bcbe62              # double 9.5019150000000003
	.quad	0x40210a7c7c5260f6              # double 8.5204810000000002
	.quad	0x3ffa915ad106ee31              # double 1.660487
	.quad	0x40208b51372a38b9              # double 8.2721040000000006
	.quad	0x3ff9f506dd69d302              # double 1.6223209999999999
	.quad	0x40180c8b0079a283              # double 6.0122489999999997
	.quad	0x4011fe6687f455a8              # double 4.4984380000000002
	.quad	0x401751886df82b1f              # double 5.8296219999999996
	.quad	0x40178d30270f3882              # double 5.8878789999999999
	.quad	0x3fed00192a737111              # double 0.90626200000000001
	.quad	0x4006209fe86833c6              # double 2.76593
	.quad	0x40194be76c8b4396              # double 6.3241250000000004
	.quad	0x400a96a93f290abb              # double 3.3235649999999999
	.quad	0x402269131ec0b567              # double 9.2052239999999994
	.quad	0x40012ca8198f1d3f              # double 2.1468050000000001
	.quad	0x4011e1d323fee2ca              # double 4.4705320000000004
	.quad	0x4017ac044284dfce              # double 5.9179849999999998
	.quad	0x401e82ee84ad794a              # double 7.6278629999999996
	.quad	0x4012f2b12d3415b1              # double 4.7370039999999998
	.quad	0x4023cd32c625e99f              # double 9.9007780000000007
	.quad	0x401367c0b1359792              # double 4.8513210000000004
	.quad	0x40029cd466f5019f              # double 2.3265769999999999
	.quad	0x4005efe718a86d72              # double 2.74214
	.quad	0x4022c22d948dc11e              # double 9.3792539999999995
	.quad	0x4010b3e100607810              # double 4.1756630000000001
	.quad	0x402032949a5657fb              # double 8.0987899999999993
	.quad	0x4016e73d9ec70004              # double 5.7258209999999998
	.quad	0x401fe4755ffe6d59              # double 7.9731040000000001
	.quad	0x401a0a4a05dd8f93              # double 6.5100480000000003
	.quad	0x4023801f31f46ed2              # double 9.7502379999999995
	.quad	0x401d22178f68be2f              # double 7.2832929999999996
	.quad	0x402389183b60285f              # double 9.7677630000000004
	.quad	0x3ffc4532a497fa5d              # double 1.766894
	.quad	0x401dc5ba2be0589b              # double 7.4430930000000002
	.quad	0x40159e1a8262456f              # double 5.4043979999999996
	.quad	0x3ff8e25204af9229              # double 1.5552539999999999
	.quad	0x402191f127f5e84f              # double 8.7850429999999999
	.quad	0x400ffad538ac18f8              # double 3.9974769999999999
	.quad	0x40119101f31f46ed              # double 4.3916089999999999
	.quad	0x401ed639d5e4a383              # double 7.7092049999999998
	.quad	0x4022b21a500d5e8d              # double 9.3478569999999994
	.quad	0x40228c25d074213a              # double 9.2737259999999999
	.quad	0x401a8a7fc32ebe59              # double 6.6352529999999996
	.quad	0x4022f525460aa64c              # double 9.4787999999999996
	.quad	0x3fde9b8cb8e086be              # double 0.478244
	.quad	0x400b4bf338716095              # double 3.4120849999999998
	.quad	0x3ff6d2157689ca19              # double 1.4262900000000001
	.quad	0x40072574b407032a              # double 2.8932890000000002
	.quad	0x401aa775fb2edfe7              # double 6.6635359999999997
	.quad	0x3fe35f6124074645              # double 0.60539299999999996
	.quad	0x3ffe4624dd2f1aa0              # double 1.8921250000000001
	.quad	0x402050d1b71758e2              # double 8.1578499999999998
	.quad	0x40225c7f34938583              # double 9.1806579999999993
	.quad	0x401fe7c49fd7a13c              # double 7.9763359999999999
	.quad	0x401e621d96e9bbf1              # double 7.5958160000000001
	.quad	0x4021a7811f4f50a0              # double 8.8271569999999997
	.quad	0x401c10acc0bdcad1              # double 7.0162839999999997
	.quad	0x402278a4e379b77c              # double 9.2356329999999999
	.quad	0x4013cfae3608d089              # double 4.9528129999999999
	.quad	0x40012a1dfb9389b5              # double 2.1455649999999999
	.quad	0x40205e1869835159              # double 8.1837800000000005
	.quad	0x400608d8ec95bff0              # double 2.7543199999999999
	.quad	0x401afbfc6540cc79              # double 6.7460800000000001
	.quad	0x40188410f94c8798              # double 6.1289709999999999
	.quad	0x4011d4107314ca92              # double 4.4570939999999997
	.quad	0x40144aa9f7b5aea3              # double 5.0729139999999999
	.quad	0x4004f0c026cc1ca4              # double 2.6175540000000002
	.quad	0x3fcb0dcfcc5b8dc5              # double 0.21135899999999999
	.quad	0x4014de77d523b363              # double 5.2172539999999996
	.quad	0x400aeff43419e300              # double 3.367165
	.quad	0x4004bff609dcf894              # double 2.593731
	.quad	0x401e8676a7264a17              # double 7.6313120000000003
	.quad	0x400a2070b8cfbfc6              # double 3.2658399999999999
	.quad	0x402255834091c087              # double 9.1670169999999995
	.quad	0x4014e6d97b30f8c6              # double 5.2254389999999997
	.quad	0x40153c37a3db3bfb              # double 5.3088059999999997
	.quad	0x40136ced0b30b5aa              # double 4.8563729999999996
	.quad	0x3fea1bf7ad4b2746              # double 0.81591400000000003
	.quad	0x40200544998d0460              # double 8.0102890000000002
	.quad	0x3fdca365cb35f3d8              # double 0.44747300000000001
	.quad	0x4023a1b152f3c2db              # double 9.8158060000000002
	.quad	0x401e5abb8800eae2              # double 7.5886060000000004
	.quad	0x401e3b673c4f3ba7              # double 7.5580109999999995
	.quad	0x40174b92c061847f              # double 5.8238019999999997
	.quad	0x401b3bb341e14be0              # double 6.8083010000000002
	.quad	0x4020100f55de58e6              # double 8.0313669999999995
	.quad	0x4016106c00da1a93              # double 5.5160369999999999
	.quad	0x4020b8eb24a6a876              # double 8.3611690000000003
	.quad	0x40166bc98a222d51              # double 5.6052609999999996
	.quad	0x4023a01b43526528              # double 9.8127080000000006
	.quad	0x4020aa9eb2074ea9              # double 8.3332420000000003
	.quad	0x40174813879c4114              # double 5.8203870000000002
	.quad	0x3ff798266772d5e0              # double 1.4746459999999999
	.quad	0x3fed126e978d4fdf              # double 0.90849999999999997
	.quad	0x400ef47064ece9a3              # double 3.8693550000000001
	.quad	0x4002a3d4f15e7c8d              # double 2.329996
	.quad	0x3ff8aa4441787054              # double 1.541569
	.quad	0x4010347304039abf              # double 4.0512199999999998
	.quad	0x4015b4e2b063e07a              # double 5.4266459999999999
	.quad	0x400561094a2b9d3d              # double 2.6723810000000001
	.quad	0x401d92b2bfdb4cc2              # double 7.3932599999999997
	.quad	0x401fd28a1dfb938a              # double 7.9556050000000003
	.quad	0x401da0068db8bac7              # double 7.4062749999999999
	.quad	0x4023fc94b380cb6c              # double 9.9933219999999991
	.quad	0x3fea9f51697f1f9b              # double 0.83194800000000002
	.quad	0x4018ab220791c4b9              # double 6.167122
	.quad	0x4009b1e85fd04a30              # double 3.2118690000000001
	.quad	0x4023c9be8ff327aa              # double 9.8940319999999993
	.quad	0x4019b8637bd05af7              # double 6.4300670000000002
	.quad	0x3ff6a71ac14c660a              # double 1.415797
	.quad	0x4021d3ff69014b5a              # double 8.9140580000000007
	.quad	0x3ffbefbf401c4fc2              # double 1.746032
	.quad	0x402061ff0cbaf966              # double 8.1913990000000005
	.quad	0x400210a0b1bbcf4f              # double 2.2581190000000002
	.quad	0x4003f95cc857f306              # double 2.496759
	.quad	0x3fe6dc4651f3e89b              # double 0.71438900000000005
	.quad	0x40083fb9389b5200              # double 3.0311149999999998
	.quad	0x400dfbbb62413db8              # double 3.747916
	.quad	0x402133890d5a5b96              # double 8.6006549999999997
	.quad	0x401569a0ad8a1166              # double 5.3531519999999997
	.quad	0x3ffead5cfaacd9e8              # double 1.9173249999999999
	.quad	0x4023c90214ad362f              # double 9.8925940000000007
	.quad	0x3ffaa54e6e221c8a              # double 1.6653579999999999
	.quad	0x3fc03419e30014f9              # double 0.12659000000000001
	.quad	0x4021630079a2834d              # double 8.6933629999999997
	.quad	0x4021d31b584b1ab1              # double 8.9123180000000009
	.quad	0x4021f97aaac1094a              # double 8.9872639999999997
	.quad	0x401d7c4588a04d12              # double 7.371359
	.quad	0x40238a9930be0ded              # double 9.7706999999999997
	.quad	0x4022ead362e90364              # double 9.4586439999999996
	.quad	0x4022d52e72da1230              # double 9.4163700000000006
	.quad	0x401d2bd9cae21102              # double 7.2928230000000003
	.quad	0x401b2527e5215769              # double 6.7862850000000003
	.quad	0x4010116b54e2b064              # double 4.0170110000000001
	.quad	0x3fef2c386d2ed784              # double 0.97414800000000001
	.quad	0x400276b09635610b              # double 2.3079540000000001
	.quad	0x4003be121ee67514              # double 2.4678079999999998
	.quad	0x401f05c182ecaeea              # double 7.7556209999999997
	.quad	0x401ed79314445aa3              # double 7.710522
	.quad	0x4014c5ab7dc7abfc              # double 5.1930370000000003
	.quad	0x3fdd12d3415b1423              # double 0.45427400000000001
	.quad	0x4012f2235b4edb2f              # double 4.7364629999999996
	.quad	0x4002fb6134ce3de6              # double 2.372744
	.quad	0x40126e41919ac797              # double 4.607672
	.quad	0x40129c7b890d5a5c              # double 4.6528150000000004
	.quad	0x3fe1f53e707e175d              # double 0.56118699999999999
	.quad	0x4006b86f47b677f7              # double 2.8400560000000001
	.quad	0x40182b33daf8df7a              # double 6.0421899999999997
	.quad	0x3fe74a85caafbc1b              # double 0.72784700000000002
	.quad	0x4021b21294573a79              # double 8.8477979999999992
	.quad	0x40150fb71fbc5dea              # double 5.2653470000000002
	.quad	0x4019276a2f48c2e7              # double 6.2884909999999996
	.quad	0x3fcc059210385c68              # double 0.21892
	.quad	0x4023214cec41dd1a              # double 9.5650399999999998
	.quad	0x3ff096fc9bc77143              # double 1.036862
	.quad	0x4012a9db22d0e560              # double 4.6658749999999998
	.quad	0x40215c0b34e7685a              # double 8.6797730000000008
	.quad	0x402016e9dd7ecbb8              # double 8.044753
	.quad	0x4021c5ff1d81f106              # double 8.8867119999999993
	.quad	0x401e57a072d1aeb4              # double 7.5855730000000001
	.quad	0x3ff8e888b545c78a              # double 1.5567709999999999
	.quad	0x3ff6de7d9988d2a2              # double 1.429319
	.quad	0x400879c7bcc2938e              # double 3.059463
	.quad	0x400d26df82b1f688              # double 3.6439810000000001
	.quad	0x4017d0763a190082              # double 5.953576
	.quad	0x40193736cdf266ba              # double 6.3039199999999997
	.quad	0x40139b2e1693c03c              # double 4.9015430000000002
	.quad	0x40054478854cdb7b              # double 2.658433
	.quad	0x4015388fc9363f57              # double 5.3052359999999998
	.quad	0x4021d69e3c968944              # double 8.9191760000000002
	.quad	0x401ad1cb039ef0f1              # double 6.7048759999999996
	.quad	0x3ff338088509bf9c              # double 1.2011799999999999
	.quad	0x400a637824d4cb9f              # double 3.2985690000000001
	.quad	0x4021da3c64345cff              # double 8.9262420000000002
	.quad	0x402305564b662fe0              # double 9.5104240000000004
	.quad	0x401022f449129889              # double 4.034135
	.quad	0x3fd014a0a0f4d7ae              # double 0.25125900000000001
	.quad	0x3fc7d3458cd20afa              # double 0.18613499999999999
	.quad	0x3fe272d1aeb3dd12              # double 0.57651600000000003
	.quad	0x401bd32b12d3415b              # double 6.9562189999999999
	.quad	0x4006e737110e453d              # double 2.8628979999999999
	.quad	0x40226e5e679463d0              # double 9.2155640000000005
	.quad	0x4009f9628cbd1245              # double 3.2467700000000002
	.quad	0x4023b7fb69984a0e              # double 9.8593399999999995
	.quad	0x400ed2e514c22ee4              # double 3.852976
	.quad	0x40168464dc22ab26              # double 5.6292910000000003
	.quad	0x4014bcc74b838c11              # double 5.1843539999999999
	.quad	0x40237af37fbefd00              # double 9.7401389999999992
	.quad	0x3feb99934efcbd55              # double 0.86249699999999996
	.quad	0x3fd0189374bc6a7f              # double 0.2515
	.quad	0x40179f548ecd8dbd              # double 5.9055960000000001
	.quad	0x4001de2478854cdb              # double 2.2334679999999998
	.quad	0x40120e55c0fcb4f2              # double 4.5139990000000001
	.quad	0x3ffbac636b096356              # double 1.729587
	.quad	0x401149c94f69ca9f              # double 4.322057
	.quad	0x400fb3397dd00f77              # double 3.9625119999999998
	.quad	0x402178cb6c7a7c9e              # double 8.7359270000000002
	.quad	0x4000305425f20210              # double 2.0235979999999998
	.quad	0x3ff1e117720c8cd6              # double 1.1174539999999999
	.quad	0x4008af4be835dedf              # double 3.0855939999999999
	.quad	0x40086dfaca361998              # double 3.0537010000000002
	.quad	0x401e20f51ac9afe2              # double 7.5321850000000001
	.quad	0x3fe5ffeb074a771d              # double 0.68749000000000005
	.quad	0x3ff883c4b09e98dd              # double 1.53217
	.quad	0x3feeab063e07a28c              # double 0.95837700000000003
	.quad	0x402172e2b8c75c4b              # double 8.7243860000000009
	.quad	0x3faaa1511dffc548              # double 0.052012000000000003
	.quad	0x400784d5d80e496f              # double 2.9398610000000001
	.quad	0x40067613d31b9b67              # double 2.807655
	.quad	0x3fc1e60c38f36695              # double 0.13983300000000001
	.quad	0x4021b3884406c00e              # double 8.8506490000000007
	.quad	0x40209eaca7935760              # double 8.3099109999999996
	.quad	0x402292c343b70ef5              # double 9.2866459999999993
	.quad	0x401d3b4fa48301a8              # double 7.3079210000000003
	.quad	0x400f2a0f4d7add16              # double 3.895537
	.quad	0x4003105100a393ee              # double 2.3829669999999998
	.quad	0x40214531769a9110              # double 8.6351429999999993
	.quad	0x401d672474538ef3              # double 7.3507249999999997
	.quad	0x3fd378359bc33f85              # double 0.30421199999999998
	.quad	0x401273bf2f555821              # double 4.6130339999999999
	.quad	0x4021b3a68b19a416              # double 8.8508800000000001
	.quad	0x3f86fb8f57f737da              # double 0.011221999999999999
	.quad	0x4010543f5f91600f              # double 4.0822729999999998
	.quad	0x4020e14db59578a3              # double 8.4400460000000006
	.quad	0x4014b2c5e2cdc012              # double 5.1745830000000002
	.quad	0x3ff00bf4cb1897a6              # double 1.0029189999999999
	.quad	0x401d8159c4977425              # double 7.3763189999999996
	.quad	0x3fb48c0ce91c8eac              # double 0.080262
	.quad	0x4018003ff69014b6              # double 6.0002440000000004
	.quad	0x4020477a4e7ab756              # double 8.1396049999999995
	.quad	0x400f423e9ea14057              # double 3.907346
	.quad	0x3ff1602fb5d03105              # double 1.0859829999999999
	.quad	0x401c4a37ef5a964f              # double 7.0724790000000004
	.quad	0x4017b3022dd7a9a0              # double 5.9248130000000003
	.quad	0x40191130df9bdc6a              # double 6.266788
	.quad	0x4016559ab6d00b46              # double 5.5835980000000003
	.quad	0x4016ac7b02d59d56              # double 5.6684380000000001
	.quad	0x40235beab367a0f9              # double 9.6795249999999999
	.quad	0x4016c3892ee84ad8              # double 5.6909530000000004
	.quad	0x401c97c80841ede1              # double 7.1482239999999999
	.quad	0x401517a6bd6e8af8              # double 5.2730969999999999
	.quad	0x4020b4aba3875925              # double 8.3528719999999996
	.quad	0x3ffd20aa64c2f838              # double 1.8204750000000001
	.quad	0x402133a8c586876e              # double 8.6008969999999998
	.quad	0x40081a8deb0fadf3              # double 3.012966
	.quad	0x401a72c27a63736d              # double 6.6120700000000001
	.quad	0x4012e736cdf266ba              # double 4.7257949999999997
	.quad	0x400e113836a832ba              # double 3.7584080000000002
	.quad	0x4021c99439de481f              # double 8.8937089999999994
	.quad	0x401ab91819d2391d              # double 6.6807559999999997
	.quad	0x402388333fc86cec              # double 9.7660160000000004
	.quad	0x400d5b0f6ad70e6f              # double 3.6694629999999999
	.quad	0x401761ab4b72c519              # double 5.8453799999999996
	.quad	0x401a4ab430f49492              # double 6.572953
	.quad	0x4014174e22a2c237              # double 5.0227589999999998
	.quad	0x40011a5daf07bfe8              # double 2.1378740000000001
	.quad	0x4008156da0168b5d              # double 3.0104630000000001
	.quad	0x4020dafdb8fde2ef              # double 8.4277169999999995
	.quad	0x3fff12d44dca8e2e              # double 1.942097
	.quad	0x40048b56fb8f57f7              # double 2.5680369999999999
	.quad	0x3fd38897e996312f              # double 0.30521199999999998
	.quad	0x40001ca5bd944aa5              # double 2.0139879999999999
	.quad	0x40206b51bd61f5be              # double 8.2096079999999994
	.quad	0x4012166c2acb85a5              # double 4.5218970000000001
	.quad	0x400ee3fbbd7b2032              # double 3.8613200000000001
	.quad	0x3ff6753b4b2fa93b              # double 1.403621
	.quad	0x400a2c6ac215b9a6              # double 3.2716880000000002
	.quad	0x4015187b99d451fc              # double 5.2739089999999997
	.quad	0x3fc39d2391d57ffa              # double 0.15323300000000001
	.quad	0x4023e82f944241c4              # double 9.9534880000000001
	.quad	0x401cd0b1feeb2d0a              # double 7.2038039999999999
	.quad	0x3ff6eac647778dd6              # double 1.432318
	.quad	0x4023bf53c579f234              # double 9.8736859999999992
	.quad	0x3fed5c5f7c6759ab              # double 0.91752599999999995
	.quad	0x401590d5a5b9628d              # double 5.3914400000000002
	.quad	0x3fd8bbd7b2031ceb              # double 0.386465
	.quad	0x4019e51e75360d02              # double 6.4737489999999998
	.quad	0x4017bbcdfefbf402              # double 5.9334030000000002
	.quad	0x3ff88e53eb399f5e              # double 1.534748
	.quad	0x3fc99695d91ab8e9              # double 0.199908
	.quad	0x402053ef6b5d462c              # double 8.1639359999999996
	.quad	0x4018097dd00f776c              # double 6.0092689999999997
	.quad	0x4022c27e0ef99807              # double 9.379868
	.quad	0x400f08900c521dda              # double 3.879181
	.quad	0x401b4e6bc621b7e1              # double 6.8265830000000003
	.quad	0x3ff8767c286f8ad2              # double 1.5289269999999999
	.quad	0x3ff39858bc59b802              # double 1.2246939999999999
	.quad	0x3ffb11e53a81dc0e              # double 1.6918690000000001
	.quad	0x4023d6ededaec4a4              # double 9.9197839999999999
	.quad	0x401feb328b6d86ec              # double 7.9796849999999999
	.quad	0x3fde368ad6883772              # double 0.47207900000000003
	.quad	0x4022a0221426fe72              # double 9.3127600000000008
	.quad	0x401188a116659d13              # double 4.3834270000000002
	.quad	0x401f568a0d349be9              # double 7.834511
	.quad	0x40113d78811b1d93              # double 4.3100300000000002
	.quad	0x40158b1feeb2d0a2              # double 5.3858639999999998
	.quad	0x4011965907d91255              # double 4.3968239999999996
	.quad	0x400383aafff36ac6              # double 2.4392909999999999
	.quad	0x400a41b3aeee9574              # double 3.2820809999999998
	.quad	0x401b84c122749f0e              # double 6.8796429999999997
	.quad	0x3fffd34bd76ee73e              # double 1.9890859999999999
	.quad	0x40211a7c7c5260f6              # double 8.5517310000000002
	.quad	0x4023c8c154c985f0              # double 9.8920999999999992
	.quad	0x401a515e39713ad6              # double 6.5794610000000002
	.quad	0x3fe901e68a0d349c              # double 0.781482
	.quad	0x40201de8709741d1              # double 8.0584140000000009
	.quad	0x4023f35a426bb55b              # double 9.9752980000000004
	.quad	0x40092f605ab3aabd              # double 3.1481330000000001
	.quad	0x401df6b0d9513f8e              # double 7.4909090000000003
	.quad	0x4013a72799a1fd15              # double 4.9132369999999996
	.quad	0x3ff8bab53d640e9d              # double 1.5455829999999999
	.quad	0x3fd970ac3a860dcc              # double 0.39750200000000002
	.quad	0x4021325e353f7cee              # double 8.5983750000000008
	.quad	0x4015ea6b50b0f27c              # double 5.4789250000000003
	.quad	0x4020e3bcb1cc9646              # double 8.4447989999999997
	.quad	0x402211c51dabe271              # double 9.0347069999999992
	.quad	0x4022f1aae6c8f755              # double 9.4720069999999996
	.quad	0x3fe9c4241c3efae8              # double 0.80519300000000005
	.quad	0x4016186c6583e857              # double 5.5238509999999996
	.quad	0x40119623076c050c              # double 4.3966180000000001
	.quad	0x4000c64883fd5022              # double 2.0968179999999998
	.quad	0x402258c9fb6134ce              # double 9.1734159999999996
	.quad	0x3ff657e45803cd14              # double 1.396458
	.quad	0x40192fd36f7e3d1d              # double 6.2967050000000002
	.quad	0x401965104d551d69              # double 6.3486950000000002
	.quad	0x402233b0a2ca9ac3              # double 9.1009569999999993
	.quad	0x4022d92ab68cef67              # double 9.4241539999999996
	.quad	0x4009f61d4306e5cd              # double 3.2451729999999999
	.quad	0x400ebef9db22d0e5              # double 3.8432499999999998
	.quad	0x4007ebe9424e5929              # double 2.9901909999999998
	.quad	0x40162e28ed5f138c              # double 5.5450780000000002
	.quad	0x400072cb641700ce              # double 2.0560520000000002
	.quad	0x401bc2a38b8ae31d              # double 6.9400769999999996
	.quad	0x401a4189bd8383ae              # double 6.5640020000000003
	.quad	0x40163d9ad85dfa87              # double 5.5601609999999999
	.quad	0x401ab3e39f77292c              # double 6.6756729999999997
	.quad	0x3fd1190d173fb7a6              # double 0.267154
	.quad	0x402268639d5e4a38              # double 9.2038849999999996
	.quad	0x401134d056c508b3              # double 4.3015759999999998
	.quad	0x3faca87e38eb0319              # double 0.055973000000000002
	.quad	0x402247af42784a94              # double 9.1400089999999991
	.quad	0x401431351159c497              # double 5.0480539999999996
	.quad	0x40223dbccaf709b7              # double 9.1205809999999996
	.quad	0x40087918a009f623              # double 3.059129
	.quad	0x40084c56d5cfaace              # double 3.0372750000000002
	.quad	0x4019c43a647fdc59              # double 6.4416289999999998
	.quad	0x400ec8e71476af8a              # double 3.8480970000000001
	.quad	0x4014f835158b8280              # double 5.2423900000000003
	.quad	0x4023ce2cba732df5              # double 9.9026849999999999
	.quad	0x400ca07357e670e3              # double 3.5783450000000001
	.quad	0x402310583621fafd              # double 9.5319230000000008
	.quad	0x4009262a1b5c7cd9              # double 3.1436350000000002
	.quad	0x402112cb641700ce              # double 8.5367080000000009
	.quad	0x3ff64a87e38eb032              # double 1.3931960000000001
	.quad	0x3fe7c8cb4aec8d5c              # double 0.74326099999999995
	.quad	0x4019eee7c49fd7a1              # double 6.4833059999999998
	.quad	0x3ff6d1287c200c0f              # double 1.426064
	.quad	0x4014e8b26394face              # double 5.2272429999999996
	.quad	0x401fee86c6583e85              # double 7.9829359999999995
	.quad	0x4013d5e310dbf056              # double 4.9588739999999998
	.quad	0x400d36006d0d4995              # double 3.6513680000000002
	.quad	0x402382b239a38fbd              # double 9.7552660000000006
	.quad	0x401f8d9945b6c376              # double 7.88828
	.quad	0x4019ec45cbbc2b95              # double 6.4807350000000001
	.quad	0x4023db2378ab0c89              # double 9.9280050000000006
	.quad	0x401a569db65ecc3e              # double 6.5845859999999998
	.quad	0x400f2eae9ee45c36              # double 3.8977940000000002
	.quad	0x401c3c5b8dc55001              # double 7.0589430000000002
	.quad	0x3ff1b300de4c5111              # double 1.1062019999999999
	.quad	0x4000ee1bd1ed9dfe              # double 2.1162640000000001
	.quad	0x3fe36410b630a915              # double 0.60596499999999998
	.quad	0x40099ad3a604e1e7              # double 3.200599
	.quad	0x4005ccee5abc0e39              # double 2.7250640000000002
	.quad	0x3fdfdb7f1737542a              # double 0.49777199999999999
	.quad	0x400a2699c7bcc294              # double 3.2688480000000002
	.quad	0x401ca2a4db163bac              # double 7.1588320000000003
	.quad	0x40046d01c0ca600b              # double 2.553226
	.quad	0x400a3017dae81883              # double 3.2734830000000001
	.quad	0x3fbf74ff865d7cb3              # double 0.122879
	.quad	0x401f92e1ac57e23f              # double 7.8934389999999998
	.quad	0x4018a33482be8bc1              # double 6.1593799999999996
	.quad	0x401a0b8dc55000c9              # double 6.5112829999999997
	.quad	0x40202f54b05b7cfe              # double 8.0924429999999994
	.quad	0x40230988b11409a2              # double 9.5186209999999996
	.quad	0x40150fe2e6ea8544              # double 5.2655139999999996
	.quad	0x4021ef35c182ecaf              # double 8.9672070000000001
	.quad	0x401341b003686a4d              # double 4.8141480000000003
	.quad	0x3fc38b7a1c25d074              # double 0.152694
	.quad	0x401af7bd05af6c6a              # double 6.7419320000000003
	.quad	0x40044420f6f08cc5              # double 2.5332659999999998
	.quad	0x4015402fb5d03105              # double 5.3126819999999997
	.quad	0x3ffcf65ecc3e3194              # double 1.810149
	.quad	0x40194ad6451b9303              # double 6.3230829999999996
	.quad	0x402135d2d01c0ca6              # double 8.605124
	.quad	0x40099bc5de9c022a              # double 3.2010610000000002
	.quad	0x40129aeea63b688c              # double 4.6513010000000001
	.quad	0x400154c447c30d30              # double 2.1663899999999998
	.quad	0x4011a446b69db65f              # double 4.4104260000000002
	.quad	0x40210b471f79420b              # double 8.5220269999999996
	.quad	0x4023655432873bc9              # double 9.6979079999999999
	.quad	0x4009b388a8b08dd2              # double 3.212663
	.quad	0x400ba452c59fb1e2              # double 3.4552360000000002
	.quad	0x401a2c3eb7cbb3c8              # double 6.5432079999999999
	.quad	0x3ffe89081c2e33f0              # double 1.908455
	.quad	0x40230fbedb7281fe              # double 9.5307530000000007
	.quad	0x400fb4538ef34d6a              # double 3.96305
	.quad	0x3fc13a14cec41dd2              # double 0.13458500000000001
	.quad	0x40138f3c2dadb835              # double 4.8898780000000004
	.quad	0x3ff61310129cbab6              # double 1.3796539999999999
	.quad	0x3fe34280ae104923              # double 0.60186799999999996
	.quad	0x401f0a821f2990f3              # double 7.7602619999999999
	.quad	0x4001db7739f340d5              # double 2.2321610000000001
	.quad	0x401f2d074213a0c7              # double 7.7939730000000002
	.quad	0x3fe3d0dcfcc5b8dc              # double 0.61924599999999996
	.quad	0x3fed5710880d801b              # double 0.91687799999999997
	.quad	0x3ff7bd73c9257860              # double 1.4837530000000001
	.quad	0x400854f5903a7547              # double 3.0414840000000001
	.quad	0x4013fd3ed527e521              # double 4.9973099999999997
	.quad	0x401bbd0aaa7ded6c              # double 6.9346110000000003
	.quad	0x4008a93293d102bc              # double 3.0826159999999998
	.quad	0x40068fc04c8bc9cd              # double 2.8201909999999999
	.quad	0x400a9b1a6d698fe7              # double 3.3257340000000002
	.quad	0x4022d15aaf78feef              # double 9.4088949999999993
	.quad	0x401bea8f7db6e504              # double 6.979063
	.quad	0x401af540cc78e9f7              # double 6.7395050000000003
	.quad	0x4013a79463cfb331              # double 4.9136519999999999
	.quad	0x401e200b45ae5ffa              # double 7.5312929999999998
	.quad	0x3fcb60a63305100a              # double 0.21388699999999999
	.quad	0x3fdeb474107314cb              # double 0.47976400000000002
	.quad	0x401ec2d490e66cb1              # double 7.6902639999999999
	.quad	0x402345475a31a4be              # double 9.6353100000000005
	.quad	0x40234f2a7bd48cb5              # double 9.6546210000000005
	.quad	0x3fdbbee3d5fdcdf7              # double 0.43352600000000002
	.quad	0x402170fb224aada3              # double 8.7206659999999996
	.quad	0x3fe62d362e903644              # double 0.69301900000000005
	.quad	0x4008e1acde19fc2b              # double 3.1101930000000002
	.quad	0x401ada4b9884c6a4              # double 6.7131790000000002
	.quad	0x401c6eeaa6d26741              # double 7.1083170000000004
	.quad	0x401b21f70de8f6cf              # double 6.783169
	.quad	0x3ff021d6494d50ec              # double 1.0082610000000001
	.quad	0x401e033721d53cde              # double 7.5031400000000001
	.quad	0x3ffd80f238972043              # double 1.8439810000000001
	.quad	0x40011dfb0d51f81a              # double 2.1396389999999998
	.quad	0x3fe3a2834d26fa40              # double 0.61358800000000002
	.quad	0x401d5af102363b25              # double 7.3388099999999996
	.quad	0x4016b9f51697f1fa              # double 5.6815990000000003
	.quad	0x400b585e80bed741              # double 3.4181490000000001
	.quad	0x4012f845dc832336              # double 4.7424540000000004
	.quad	0x400f5720c8cd63cc              # double 3.9175430000000002
	.quad	0x401435b573eab368              # double 5.0524500000000003
	.quad	0x40075d798d8a979e              # double 2.920642
	.quad	0x401b3249a133c1ce              # double 6.7991089999999996
	.quad	0x4012ef77292c4934              # double 4.7338529999999999
	.quad	0x401884d9c6b0531a              # double 6.1297370000000004
	.quad	0x4020f6c97d8cf399              # double 8.4820060000000002
	.quad	0x3ff04373f316e371              # double 1.0164679999999999
	.quad	0x401750c1333b96af              # double 5.828862
	.quad	0x4004f041461b6d44              # double 2.6173120000000001
	.quad	0x400b6753e707e176              # double 3.4254530000000001
	.quad	0x3ff7f034b0e1b4bb              # double 1.4961439999999999
	.quad	0x402041e81cb46bad              # double 8.1287240000000001
	.quad	0x4020b472e275ab7e              # double 8.3524390000000004
	.quad	0x400c5ee34fc610f1              # double 3.546332
	.quad	0x400329fbe76c8b44              # double 2.3955000000000002
	.quad	0x401164712e40852b              # double 4.3480879999999997
	.quad	0x4005a1be2b4959e6              # double 2.7039759999999999
	.quad	0x3fe32c77574f722e              # double 0.59917799999999999
	.quad	0x401d1b6bb1290258              # double 7.2767780000000002
	.quad	0x4006060fe47991bc              # double 2.7529599999999999
	.quad	0x4021961437c5692b              # double 8.7931229999999996
	.quad	0x40232ade00d1b717              # double 9.5837249999999993
	.quad	0x3fe04faacd9e83e4              # double 0.50972499999999998
	.quad	0x40202f4bc6a7ef9e              # double 8.0923750000000005
	.quad	0x4023e467dfe32a06              # double 9.9461049999999993
	.quad	0x3fd34b05b7cfe586              # double 0.301454
	.quad	0x400e68bfc2224edf              # double 3.8011469999999998
	.quad	0x4017b91eeaa6d267              # double 5.9307819999999998
	.quad	0x3fe96fcdee34fc61              # double 0.79489799999999999
	.quad	0x401be49949e8815e              # double 6.9732409999999998
	.quad	0x40212d60c7c0f451              # double 8.5886289999999992
	.quad	0x4012bc5e2cdc011d              # double 4.6839529999999998
	.quad	0x3fe1d054ac29bf16              # double 0.55668099999999998
	.quad	0x4021d1b7bf1e8e61              # double 8.9096050000000009
	.quad	0x4022bbe48a58b3f6              # double 9.3669779999999996
	.quad	0x3ff0615fcc1871e7              # double 1.023773
	.quad	0x401edc286f8ad256              # double 7.7149979999999996
	.quad	0x40094afff36ac647              # double 3.1616209999999998
	.quad	0x4021673d7d3910c3              # double 8.7016410000000004
	.quad	0x3fc0f8f041461b6d              # double 0.13259699999999999
	.quad	0x4013ff345069a4df              # double 4.9992229999999998
	.quad	0x40219f446f9b994e              # double 8.8110689999999998
	.quad	0x401354528283d35f              # double 4.8323460000000003
	.quad	0x400aa2e2b8c75c4b              # double 3.3295340000000002
	.quad	0x4020defc7a398202              # double 8.4355200000000004
	.quad	0x401be819d2391d58              # double 6.976661
	.quad	0x3fe2b704790b8499              # double 0.58484100000000006
	.quad	0x4003efd199bb2789              # double 2.4920990000000001
	.quad	0x4019d4d7add15f03              # double 6.4578540000000002
	.quad	0x400601e0c5a8155d              # double 2.7509169999999998
	.quad	0x400ee606fac6045c              # double 3.8623180000000001
	.quad	0x400860379314445b              # double 3.0469810000000002
	.quad	0x3feaf023e9ea1405              # double 0.84181399999999995
	.quad	0x4023d84d338f7985              # double 9.9224639999999997
	.quad	0x4021899aa60913a5              # double 8.7687580000000001
	.quad	0x401ddf11f926c7eb              # double 7.4678420000000001
	.quad	0x4014bf98fa376923              # double 5.1871070000000001
	.quad	0x40028487b99d4520              # double 2.3147120000000001
	.quad	0x4015910a99b6f5cb              # double 5.391642
	.quad	0x4001570a3d70a3d7              # double 2.1675
	.quad	0x4005144c37e6f71a              # double 2.6349109999999998
	.quad	0x40060b47c73eee52              # double 2.7555079999999998
	.quad	0x3ff1d98e10cf5b1d              # double 1.1156140000000001
	.quad	0x400eee26d4801f75              # double 3.866285
	.quad	0x3fe66770bd017daf              # double 0.70012700000000005
	.quad	0x400786fbd273d5bb              # double 2.9409100000000001
	.quad	0x3fb135b91f70de8f              # double 0.067225999999999994
	.quad	0x4022f1c7bcc2938e              # double 9.4722270000000002
	.quad	0x40177d66f0cfe154              # double 5.8724629999999998
	.quad	0x4019c7d84901d191              # double 6.4451609999999997
	.quad	0x4015b8f0c77dd873              # double 5.430606
	.quad	0x40004ea747d805e6              # double 2.038405
	.quad	0x4008435c5b4aa971              # double 3.0328909999999998
	.quad	0x3fd7998d045fe111              # double 0.36874699999999999
	.quad	0x3ff96657b84db9c7              # double 1.587486
	.quad	0x402396a6e32e3822              # double 9.7942420000000006
	.quad	0x400683f67f4dbdf9              # double 2.814435
	.quad	0x4021564cb5bb3850              # double 8.6685540000000003
	.quad	0x401546787ce95fab              # double 5.3188190000000004
	.quad	0x40178a0d77b7c782              # double 5.884817
	.quad	0x4020aab0856e696a              # double 8.3333779999999997
	.quad	0x3fdd57689ca18bd6              # double 0.45845999999999998
	.quad	0x3fffbf2a172abef0              # double 1.9841709999999999
	.quad	0x40062cc5fbf83383              # double 2.771862
	.quad	0x3f98a58b3f63c31e              # double 0.024069
	.quad	0x3ff8e743a647fdc6              # double 1.5564610000000001
	.quad	0x3ff052253111f0c3              # double 1.0200549999999999
	.quad	0x401cdb8b26394fad              # double 7.2143980000000001
	.quad	0x400a1b5f1bef49cf              # double 3.2633649999999998
	.quad	0x401ec07b352a8438              # double 7.6879699999999999
	.quad	0x3ffc212d77318fc5              # double 1.7581
	.quad	0x400a601c4fc1df33              # double 3.296929
	.quad	0x401125a469d7342f              # double 4.2867600000000001
	.quad	0x401703d03968d75a              # double 5.7537240000000001
	.quad	0x401ee244e93e1c9b              # double 7.7209659999999997
	.quad	0x4017b64840e1719f              # double 5.9280099999999996
	.quad	0x401415a4acf312b2              # double 5.0211360000000003
	.quad	0x400e75989df1172f              # double 3.80742
	.quad	0x40213e76ea422899              # double 8.6220009999999991
	.quad	0x40178d23d4f15e7d              # double 5.8878320000000004
	.quad	0x40209dd334c5da6a              # double 8.3082519999999995
	.quad	0x40179e23f24d8fd6              # double 5.9044340000000002
	.quad	0x401b791f2dc2b0ea              # double 6.8682829999999999
	.quad	0x400b532830a0b1bc              # double 3.4156040000000001
	.quad	0x3ff864b33daf8df8              # double 1.5245850000000001
	.quad	0x400d6a7935760392              # double 3.6769889999999998
	.quad	0x40102baa9b499d02              # double 4.042643
	.quad	0x402340292817763e              # double 9.6253139999999995
	.quad	0x401416d6dc1a47aa              # double 5.0223040000000001
	.quad	0x40187f09d8c6d613              # double 6.1240610000000002
	.quad	0x4015b997c3d68406              # double 5.4312430000000003
	.quad	0x3fea8370cdc8754f              # double 0.82854499999999998
	.quad	0x3ffc4244e93e1c9b              # double 1.7661789999999999
	.quad	0x401a77e23f24d8fd              # double 6.6170739999999997
	.quad	0x3fda01322f2734f8              # double 0.40632299999999999
	.quad	0x40020f50a02b8412              # double 2.2574779999999999
	.quad	0x4016429670196d8f              # double 5.5650269999999997
	.quad	0x4001572ffd1dcd70              # double 2.1675719999999998
	.quad	0x4012a44bb1af3a15              # double 4.6604450000000002
	.quad	0x400a27ea5f84cad5              # double 3.2694899999999998
	.quad	0x401d89142b302f73              # double 7.3838660000000003
	.quad	0x4014a8461f9f01b8              # double 5.1643299999999996
	.quad	0x40101db3397dd00f              # double 4.0290039999999996
	.quad	0x401e9dd82fd75e20              # double 7.6541449999999998
	.quad	0x401bf79c842fa509              # double 6.9918079999999998
	.quad	0x4013b141205bc01a              # double 4.9230999999999998
	.quad	0x400a570d62bf11f9              # double 3.2925059999999999
	.quad	0x4001ab9a176ddacf              # double 2.20879
	.quad	0x401cc42917507e9e              # double 7.1915630000000004
	.quad	0x4003ae2c98e53eb4              # double 2.4600460000000002
	.quad	0x3fc3909f1f14983d              # double 0.15285099999999999
	.quad	0x401d73baba7b9171              # double 7.3630170000000001
	.quad	0x40011abead4f5904              # double 2.1380590000000002
	.quad	0x40156289dadfb507              # double 5.3462290000000001
	.quad	0x4001c145953586cb              # double 2.2193710000000002
	.quad	0x4022f218def416be              # double 9.4728460000000005
	.quad	0x4016c60bf5d78812              # double 5.6934050000000003
	.quad	0x401c559c49774257              # double 7.0836040000000002
	.quad	0x400655a07b352a84              # double 2.7918099999999999
	.quad	0x4019c2e770bd017e              # double 6.4403360000000003
	.quad	0x40029cff64cf8d71              # double 2.3266589999999998
	.quad	0x401315d8d79d0a67              # double 4.7713349999999997
	.quad	0x401381e5c0b99913              # double 4.8768529999999997
	.quad	0x4015f8da3c21187e              # double 5.4930199999999996
	.quad	0x401d48d5410f94c8              # double 7.3211259999999995
	.quad	0x40132252ce032db2              # double 4.7835190000000001
	.quad	0x401ac23897204296              # double 6.6896690000000003
	.quad	0x3ffccb97785729b3              # double 1.7997050000000001
	.quad	0x400ab8d3f1843c3a              # double 3.3402479999999999
	.quad	0x401491db877ab325              # double 5.1424390000000004
	.quad	0x4015b8e53eb399f6              # double 5.4305620000000001
	.quad	0x401ca574b407032a              # double 7.1615780000000004
	.quad	0x4014ebf5d78811b2              # double 5.2304300000000001
	.quad	0x4003563779e9d0ea              # double 2.4170980000000002
	.quad	0x3ffacce1c58255b0              # double 1.67502
	.quad	0x4015561804d98394              # double 5.3340759999999996
	.quad	0x400d7a9973d9ec70              # double 3.684863
	.quad	0x400faa63305100a4              # double 3.9581970000000002
	.quad	0x400ade5f30e7ff58              # double 3.3585799999999999
	.quad	0x4020e77ccc037931              # double 8.4521239999999995
	.quad	0x4005cd77b7c7820a              # double 2.7253259999999999
	.quad	0x3ffd42a8869c66d3              # double 1.8287739999999999
	.quad	0x400ad63cb8173322              # double 3.3546079999999998
	.quad	0x3fda4b1ab0856e69              # double 0.41083399999999998
	.quad	0x4011ff4be835dedf              # double 4.4993129999999999
	.quad	0x3fe6588c1db0142f              # double 0.69830899999999996
	.quad	0x4020026a012599ed              # double 8.0047149999999991
	.quad	0x40221b519bd4067d              # double 9.0533570000000001
	.quad	0x4023ec54bcf0b6b7              # double 9.9615840000000002
	.quad	0x3ffc6e3821af7d31              # double 1.7769090000000001
	.quad	0x4023b6bd2b6f1993              # double 9.8569119999999994
	.quad	0x3fe2a76965f5275f              # double 0.58293600000000001
	.quad	0x40137c215b9a5a8a              # double 4.8712210000000002
	.quad	0x3ff6bd4bf0995aaf              # double 1.4212149999999999
	.quad	0x40010092ccf6be38              # double 2.1252800000000001
	.quad	0x4013743d03968d76              # double 4.8635140000000003
	.quad	0x4012c8b0d0edc3bd              # double 4.6959869999999997
	.quad	0x4004ede6ddf00abf              # double 2.6161629999999998
	.quad	0x401858bd230b9dc3              # double 6.086659
	.quad	0x3fee9bd61f5be5da              # double 0.95652300000000001
	.quad	0x400a7e889c1b5419              # double 3.3117839999999998
	.quad	0x402325c4eb56fb8f              # double 9.5737679999999993
	.quad	0x400256c2699c7bcc              # double 2.2923629999999999
	.quad	0x401315f78359bc34              # double 4.771452
	.quad	0x401761e85fd04a30              # double 5.8456130000000002
	.quad	0x400d1e889c1b5419              # double 3.6399089999999998
	.quad	0x401444e3369b9d80              # double 5.0672730000000001
	.quad	0x4018c614df8b1572              # double 6.1934389999999997
	.quad	0x401899d7342edbb6              # double 6.1502350000000003
	.quad	0x4011a06ab14ec205              # double 4.406657
	.quad	0x4001ad117b5286b6              # double 2.2095060000000002
	.quad	0x3ffdcb04ab606b7b              # double 1.8620650000000001
	.quad	0x400032b020c49ba6              # double 2.02475
	.quad	0x402159695d91ab8f              # double 8.6746320000000008
	.quad	0x40220d2dcb1465e9              # double 9.0257400000000008
	.quad	0x4023dad18d25edd0              # double 9.9273799999999994
	.quad	0x40204ebd6e8af816              # double 8.1537889999999997
	.quad	0x401867c5692b3cc5              # double 6.1013390000000003
	.quad	0x4022c80ecfa69be1              # double 9.3907380000000006
	.quad	0x4012fb573eab367a              # double 4.7454499999999999
	.quad	0x401469c065b63d3e              # double 5.1032729999999997
	.quad	0x4016cfa97e132b56              # double 5.7027950000000001
	.quad	0x402356e84ad794a7              # double 9.6697410000000001
	.quad	0x402263f1a5ca2984              # double 9.1952029999999993
	.quad	0x4007227179bfdf7f              # double 2.8918180000000002
	.quad	0x401958f92af9a8ce              # double 6.3368880000000001
	.quad	0x3ff44548a9bcfd4c              # double 1.266915
	.quad	0x401fbfe047d3d428              # double 7.9373789999999999
	.quad	0x400c6cfc829cfdd2              # double 3.5532159999999999
	.quad	0x400618def416bdb2              # double 2.7621440000000002
	.quad	0x4001d774256bca53              # double 2.2302019999999998
	.quad	0x40222f2d7f950b95              # double 9.0921439999999993
	.quad	0x3fe87485e3da2f8c              # double 0.76422400000000001
	.quad	0x4022786530058149              # double 9.2351469999999996
	.quad	0x3f8a76534373f317              # double 0.012921
	.quad	0x4000a0767d34df05              # double 2.0783510000000001
	.quad	0x401de0642396073e              # double 7.4691320000000001
	.quad	0x4013649774256bca              # double 4.8482339999999997
	.quad	0x4010e60956c0d6f5              # double 4.2246449999999998
	.quad	0x4011f986338b47c7              # double 4.4936759999999998
	.quad	0x4006aea209aaa3ad              # double 2.83527
	.quad	0x40144814940bbb1f              # double 5.0703909999999999
	.quad	0x4003e1eb4202d9cf              # double 2.485312
	.quad	0x40221481908e581d              # double 9.0400510000000001
	.quad	0x3fe6fd566cf41f21              # double 0.71842499999999998
	.quad	0x40112dddb1209edc              # double 4.294791
	.quad	0x4001c647fdc5931d              # double 2.2218170000000002
	.quad	0x4020e26138fffbce              # double 8.4421479999999995
	.quad	0x401f98bc9cd3e0bd              # double 7.8991569999999997
	.quad	0x4023e35d249e44fa              # double 9.94407
	.quad	0x4020ce603d577964              # double 8.4030780000000007
	.quad	0x40137b994e1a3f46              # double 4.8707019999999996
	.quad	0x401ff3764f11b60b              # double 7.987756
	.quad	0x401f5b21c475e636              # double 7.8389959999999999
	.quad	0x40219723ee1bd1ee              # double 8.7951960000000007
	.quad	0x4022ffed41b75a75              # double 9.4998570000000004
	.quad	0x3ff33ee5eedcc20d              # double 1.2028559999999999
	.quad	0x401e0d5bab21815a              # double 7.513045
	.quad	0x40098dc4c9c90c4e              # double 3.194223
	.quad	0x40173cf4a558ea7d              # double 5.8095270000000001
	.quad	0x400c68661ae70c13              # double 3.5509759999999999
	.quad	0x3fc4bef8ceb356da              # double 0.162078
	.quad	0x40173ee1bd1ed9e0              # double 5.8114080000000001
	.quad	0x40206fb3b7521145              # double 8.2181680000000004
	.quad	0x400b79fd36f7e3d2              # double 3.4345650000000001
	.quad	0x400d2367e414e7ef              # double 3.6422880000000002
	.quad	0x4022cfb07075b3e1              # double 9.4056429999999995
	.quad	0x3fec711b60ae9681              # double 0.88880700000000001
	.quad	0x401c9b39192641b3              # double 7.1515849999999999
	.quad	0x4017839b8887229f              # double 5.8785230000000004
	.quad	0x401fdb76f6d76252              # double 7.964321
	.quad	0x4009ddcd7060bb2c              # double 3.2333020000000001
	.quad	0x3fc6626f60e0eb68              # double 0.17487900000000001
	.quad	0x4012cdd82fd75e20              # double 4.7010199999999998
	.quad	0x4018cd84901d1915              # double 6.2007009999999996
	.quad	0x400474163779e9d1              # double 2.556683
	.quad	0x401d71650a45d420              # double 7.3607370000000003
	.quad	0x4005d86338b47c74              # double 2.730658
	.quad	0x401151e215336dec              # double 4.3299640000000004
	.quad	0x401fe37c1376d549              # double 7.9721529999999996
	.quad	0x40112fba450acc0c              # double 4.2966090000000001
	.quad	0x401887160956c0d7              # double 6.13192
	.quad	0x3feb5594f26aec07              # double 0.85419699999999998
	.quad	0x4015bb0b7c3504c5              # double 5.4326610000000004
	.quad	0x401bdbc44bf4cb19              # double 6.9646160000000004
	.quad	0x4020205100a393ee              # double 8.0631179999999993
	.quad	0x3fe09ab29e4d5d81              # double 0.51888400000000001
	.quad	0x401e37f13059641f              # double 7.5546309999999996
	.quad	0x4010ba0407cc7d1c              # double 4.1816560000000003
	.quad	0x401ddcebfec13b9f              # double 7.4657439999999999
	.quad	0x401b5b4070329803              # double 6.8391130000000002
	.quad	0x4011f6744b2b777d              # double 4.4906779999999999
	.quad	0x40163346dc5d6388              # double 5.5500749999999996
	.quad	0x4015f7f6f4be835e              # double 5.4921530000000001
	.quad	0x401786d9be4cd749              # double 5.8816899999999999
	.quad	0x401dab6ae7d566cf              # double 7.4173999999999998
	.quad	0x3ff113e0bd44998d              # double 1.067353
	.quad	0x401fc71001d5c316              # double 7.9443970000000004
	.quad	0x401820d90e23af32              # double 6.0320780000000003
	.quad	0x401542da122fad6d              # double 5.3152850000000003
	.quad	0x401cbd834091c087              # double 7.1850709999999998
	.quad	0x40187c059210385c              # double 6.1211149999999996
	.quad	0x402145b0bbf50e34              # double 8.6361139999999991
	.quad	0x4011992641b328b7              # double 4.3995600000000001
	.quad	0x40088e2fbe33acd6              # double 3.0694270000000001
	.quad	0x4021efaca3619978              # double 8.9681139999999999
	.quad	0x4022bc662bae03b4              # double 9.3679670000000001
	.quad	0x401a1cc5fbf83383              # double 6.5280990000000001
	.quad	0x4019c1904b3c3e75              # double 6.4390270000000003
	.quad	0x4023e96f86a09891              # double 9.9559289999999993
	.quad	0x40064e21101b0037              # double 2.7881490000000002
	.quad	0x401fae86833c6003              # double 7.9204350000000003
	.quad	0x4020fa732df505d1              # double 8.48916
	.quad	0x3ff0177531db445f              # double 1.005727
	.quad	0x3fea52a62aa1943a              # double 0.82258900000000001
	.quad	0x4014f15336deb95e              # double 5.2356689999999997
	.quad	0x401a00b242070b8d              # double 6.50068
	.quad	0x401d3a1cac083127              # double 7.3067500000000001
	.quad	0x3ff3522962cfd8f1              # double 1.207559
	.quad	0x4004335d249e44fa              # double 2.52508
	.quad	0x401edf284167a95d              # double 7.7179270000000004
	.quad	0x4012a320535c9e67              # double 4.6593030000000004
	.quad	0x401c314983d79075              # double 7.0481319999999998
	.quad	0x40214bf76a2f48c3              # double 8.6483720000000002
	.quad	0x40124ee392e1ef74              # double 4.5770400000000002
	.quad	0x401e2512ec6bce85              # double 7.5362049999999998
	.quad	0x4010fc01a36e2eb2              # double 4.2461000000000002
	.quad	0x401aaca42aed1394              # double 6.6685949999999998
	.quad	0x40207f69014b599b              # double 8.2488480000000006
	.quad	0x40088b3700474d9c              # double 3.0679759999999998
	.quad	0x4015c2d0e5604189              # double 5.4402499999999998
	.quad	0x40111bddb9841aac              # double 4.2772129999999997
	.quad	0x3fe64d983947496b              # double 0.69697200000000004
	.quad	0x3fc15219a847b246              # double 0.13531799999999999
	.quad	0x3fe8cfd08d4bad7d              # double 0.77536799999999995
	.quad	0x401adb70ef566491              # double 6.7142980000000003
	.quad	0x4020822014727dcc              # double 8.2541510000000002
	.quad	0x4007075bc44bf4cb              # double 2.878593
	.quad	0x401ff857afea3df7              # double 7.9925220000000001
	.quad	0x4013b189374bc6a8              # double 4.9233750000000001
	.quad	0x401c7bbba55d1c3b              # double 7.1208330000000002
	.quad	0x40193a979e16d6dc              # double 6.3072189999999999
	.quad	0x401bfdba908a265f              # double 6.9977819999999999
	.quad	0x4015790d5a5b9629              # double 5.3682150000000002
	.quad	0x400e3c044284dfce              # double 3.7793049999999999
	.quad	0x4018af8982cb20fb              # double 6.1714229999999999
	.quad	0x401b210ecb74ddf8              # double 6.7822829999999996
	.quad	0x4021b10539fba451              # double 8.8457430000000006
	.quad	0x401a44ef459d9903              # double 6.5673190000000004
	.quad	0x3ffc8bfb15b573eb              # double 1.7841750000000001
	.quad	0x40213360f1b25f63              # double 8.6003489999999996
	.quad	0x400648ee6b8305d9              # double 2.7856109999999998
	.quad	0x3ff7eda122fad6cb              # double 1.4955149999999999
	.quad	0x3fff25b530ced4e5              # double 1.946706
	.quad	0x3ffc5a3e39f77293              # double 1.7720320000000001
	.quad	0x4015ab0079a2834d              # double 5.4169939999999999
	.quad	0x400ccec0f88333fd              # double 3.6009540000000002
	.quad	0x402278f75536933a              # double 9.236262
	.quad	0x401ccc126a65cf68              # double 7.1992890000000003
	.quad	0x401ae991ff7164c7              # double 6.7280959999999999
	.quad	0x4017bd36f7e3d1cc              # double 5.9347799999999999
	.quad	0x3fd3523b3636f3b2              # double 0.301894
	.quad	0x4020a98eda22f6a5              # double 8.3311679999999999
	.quad	0x4020624e9c454584              # double 8.1920059999999992
	.quad	0x3fef9dcd7060bb2c              # double 0.98801300000000003
	.quad	0x401ec91f70de8f6d              # double 7.696409
	.quad	0x401fcd651b0ccbc0              # double 7.9505809999999997
	.quad	0x401fb75e2046c765              # double 7.9290700000000002
	.quad	0x4002e1acde19fc2b              # double 2.3601930000000002
	.quad	0x4015238c9752977d              # double 5.2847160000000004
	.quad	0x3ff49b6c3760bf5d              # double 1.2879449999999999
	.quad	0x3ff735350092ccf7              # double 1.4504900000000001
	.quad	0x4018db4fa48301a8              # double 6.2141710000000003
	.quad	0x3ffb7ea5f84cad58              # double 1.7184200000000001
	.quad	0x3ffaef9b994e1a3f              # double 1.6834979999999999
	.quad	0x4014adfd2630ec31              # double 5.1699109999999999
	.quad	0x4018a3f316e37154              # double 6.160107
	.quad	0x3fea161e4f765fd9              # double 0.81520000000000004
	.quad	0x401464cf8d716d2b              # double 5.0984480000000003
	.quad	0x40061fa76534373f              # double 2.7654559999999999
	.quad	0x400a895e17e34b94              # double 3.3170739999999999
	.quad	0x40040d1287c200c1              # double 2.506383
	.quad	0x3fe3b4ce3de6149c              # double 0.61582099999999995
	.quad	0x4020a00a17b0f6ad              # double 8.3125769999999992
	.quad	0x3ff716605ee568a5              # double 1.442963
	.quad	0x401bb50e779207d5              # double 6.9268130000000001
	.quad	0x4020ebc27631b585              # double 8.4604680000000005
	.quad	0x40159fd2e9468017              # double 5.4060779999999999
	.quad	0x400268c1db0142f6              # double 2.3011509999999999
	.quad	0x401b36045baf533f              # double 6.8027509999999998
	.quad	0x401e49a459103c8e              # double 7.5719159999999999
	.quad	0x40141ca925fe974a              # double 5.0279889999999998
	.quad	0x400f8140dd3fe197              # double 3.9381119999999998
	.quad	0x401dc7a6bd6e8af8              # double 7.4449719999999999
	.quad	0x401f14ddf86e3b47              # double 7.770378
	.quad	0x4021cba5c1c6088d              # double 8.8977489999999992
	.quad	0x40203c434e3369ba              # double 8.1177010000000003
	.quad	0x401309813879c411              # double 4.7592819999999998
	.quad	0x4010c86b9c304ccf              # double 4.1957230000000001
	.quad	0x401a95c67dfe32a0              # double 6.6462649999999996
	.quad	0x400346ea854477ff              # double 2.409627
	.quad	0x3ffee2f5989df117              # double 1.93041
	.quad	0x401eefe60c38f367              # double 7.7342760000000003
	.quad	0x3fe76362a5e785b6              # double 0.73088200000000003
	.quad	0x3ffccd4bad7d7c2d              # double 1.8001210000000001
	.quad	0x3fe71ac57e23f24e              # double 0.72201800000000005
	.quad	0x400275ee136e71ce              # double 2.3075830000000002
	.quad	0x4022551aa821f299              # double 9.1662189999999999
	.quad	0x3fcea79bbadc0981              # double 0.23949000000000001
	.quad	0x40179f16f4384ba1              # double 5.9053610000000001
	.quad	0x401034db163baba8              # double 4.0516170000000002
	.quad	0x402148055fbb517a              # double 8.6406659999999995
	.quad	0x40229fabb8800eae              # double 9.3118569999999998
	.quad	0x3fe87fae3608d089              # double 0.76558599999999999
	.quad	0x3ffa01a261bf37b9              # double 1.625399
	.quad	0x401290b73d188f43              # double 4.641324
	.quad	0x40167881a1554fbe              # double 5.6176820000000003
	.quad	0x4015902d9cf13cef              # double 5.3907990000000003
	.quad	0x400a098dcdb37c9a              # double 3.2546650000000001
	.quad	0x4023a3e468cac4b5              # double 9.8201020000000003
	.quad	0x40230393682730c6              # double 9.5069839999999992
	.quad	0x401e7c947064ecea              # double 7.6216600000000003
	.quad	0x40147807789a4591              # double 5.117216
	.quad	0x401920bd017dae82              # double 6.2819710000000004
	.quad	0x400239702e6644d8              # double 2.2780459999999998
	.quad	0x3fd63b0813cab820              # double 0.34735300000000002
	.quad	0x4003efc0d2c386d3              # double 2.492067
	.quad	0x4015dae21101b003              # double 5.4637529999999996
	.quad	0x401613c792d1287c              # double 5.5193159999999999
	.quad	0x401fc4e7ee9142b3              # double 7.9422909999999999
	.quad	0x40214f13ad5bee3d              # double 8.6544469999999993
	.quad	0x400d0644523f67f5              # double 3.6280600000000001
	.quad	0x400395bbbe878fac              # double 2.4481120000000001
	.quad	0x40211c9ba5e353f8              # double 8.5558750000000003
	.quad	0x4023059018e75793              # double 9.5108650000000007
	.quad	0x401307afea3df6dc              # double 4.7575070000000004
	.quad	0x4008974b40703298              # double 3.073874
	.quad	0x401e44b407032980              # double 7.5670929999999998
	.quad	0x401aa9707182235b              # double 6.6654679999999997
	.quad	0x40225ffd1dcd7061              # double 9.1874780000000005
	.quad	0x402063b9496249a1              # double 8.1947729999999996
	.quad	0x4022a1973d9ec700              # double 9.315607
	.quad	0x4009096030c23fab              # double 3.129578
	.quad	0x3fa2f2b66b6177ea              # double 0.037007999999999999
	.quad	0x3ffbaa3f034b0e1b              # double 1.7290639999999999
	.quad	0x400a3ab7dc7abfba              # double 3.2786710000000001
	.quad	0x400ef4af4f0d844d              # double 3.869475
	.quad	0x3ff96d288ce703b0              # double 1.5891500000000001
	.quad	0x40189b862b27cbf7              # double 6.1518790000000001
	.quad	0x3fd3616f86a09891              # double 0.30282199999999998
	.quad	0x4013ea055757d5aa              # double 4.9785360000000001
	.quad	0x3fed4a4095f2452c              # double 0.91531399999999996
	.quad	0x3fb3b7d84901d191              # double 0.077023999999999995
	.quad	0x3feb0895d0b73d19              # double 0.84479800000000005
	.quad	0x4016549949e8815e              # double 5.5826159999999998
	.quad	0x40144cc575c0767d              # double 5.0749719999999998
	.quad	0x40103534373f316e              # double 4.0519569999999998
	.quad	0x3ffa11ed9dfdac69              # double 1.6293770000000001
	.quad	0x401603b4f6167232              # double 5.5036199999999997
	.quad	0x402341ced0b30b5b              # double 9.6285310000000006
	.quad	0x401f467381d7dbf5              # double 7.8188000000000004
	.quad	0x3ffcc5cfede97d07              # double 1.7982940000000001
	.quad	0x40097a732df505d1              # double 3.18479
	.quad	0x401d8ed634549b63              # double 7.3894890000000002
	.quad	0x400337c88e79aae7              # double 2.4022380000000001
	.quad	0x401eb2862f5989df              # double 7.6743399999999999
	.quad	0x4020f35d462c343b              # double 8.4753209999999992
	.quad	0x401e590752da9867              # double 7.5869419999999996
	.quad	0x40032ef2c7325919              # double 2.3979240000000002
	.quad	0x401a90f94c87980f              # double 6.6415759999999997
	.quad	0x401009513f8db489              # double 4.009099
	.quad	0x40130e108c3f3e03              # double 4.7637349999999996
	.quad	0x40236bb5bf6a0dbb              # double 9.7103710000000003
	.quad	0x401ee8dd616f86a1              # double 7.7274070000000003
	.quad	0x3ff6cd24e160d888              # double 1.425084
	.quad	0x3f961c36976bc1f0              # double 0.021592
	.quad	0x3fd1557de0d66f0d              # double 0.270843
	.quad	0x401d97ff9b56323c              # double 7.3984360000000002
	.quad	0x4021ce9d7342edbb              # double 8.9035449999999994
	.quad	0x3fe70678c0053e2d              # double 0.71953999999999996
	.quad	0x40184548a9bcfd4c              # double 6.0676600000000001
	.quad	0x40223b9799e518f4              # double 9.1163910000000001
	.quad	0x4011d16fc9bc7714              # double 4.4545279999999998
	.quad	0x401648bef8ceb357              # double 5.5710410000000001
	.quad	0x40217f6922d948dc              # double 8.7488489999999998
	.quad	0x402313ba775fb2ee              # double 9.538532
	.quad	0x401276c0d6f544bb              # double 4.6159699999999999
	.quad	0x4023a17a67a52ac7              # double 9.8153869999999994
	.quad	0x40166d2a1f8e3ac1              # double 5.6066060000000002
	.quad	0x3ffba80064a9cdc4              # double 1.7285159999999999
	.quad	0x401aa415f45e0b4e              # double 6.6602399999999999
	.quad	0x40061183b60285ec              # double 2.7585519999999999
	.quad	0x4019521e1d2178f7              # double 6.3301930000000004
	.quad	0x401b03779e9d0e99              # double 6.7533859999999999
	.quad	0x4020ad147f130596              # double 8.3380469999999995
	.quad	0x40239f7bbf93ff26              # double 9.8114910000000002
	.quad	0x3fe20f88333fc86d              # double 0.56439600000000001
	.quad	0x401561d6cf850df1              # double 5.3455459999999997
	.quad	0x40216ef6b5d462c3              # double 8.7167259999999995
	.quad	0x401cc697f1f9ad00              # double 7.1939390000000003
	.quad	0x401590b84988094e              # double 5.3913279999999997
	.quad	0x3fe198915bdd7668              # double 0.54987399999999997
	.quad	0x3ffbd86db50f40e6              # double 1.7403390000000001
	.quad	0x400d6f36ef8055fc              # double 3.6793040000000001
	.quad	0x4007c033e78e1933              # double 2.9688490000000001
	.quad	0x3fad3c579f234656              # double 0.057100999999999999
	.quad	0x4021cc5308bb9064              # double 8.8990709999999992
	.quad	0x4016ffec99f1ae2e              # double 5.7499260000000003
	.quad	0x3fe3c0f01fb82c2c              # double 0.61730200000000002
	.quad	0x3fd7b19a415f45e1              # double 0.37021500000000002
	.quad	0x40235f4c6e6d9be5              # double 9.6861300000000003
	.quad	0x4013fb9f559b3d08              # double 4.9957250000000002
	.quad	0x40207877ccc03793              # double 8.2352889999999999
	.quad	0x3fe5baba7b9170d6              # double 0.67904399999999998
	.quad	0x401d3039ef0f16f4              # double 7.2970959999999998
	.quad	0x401bf8cbd1244a62              # double 6.9929649999999999
	.quad	0x3ff343914f483cb0              # double 1.2039960000000001
	.quad	0x3ffc065625a682b6              # double 1.751547
	.quad	0x401f7d855970b49e              # double 7.872579
	.quad	0x40018de43ed959a3              # double 2.194283
	.quad	0x3fc8ca0c282c6ef4              # double 0.193666
	.quad	0x401922bae03b3e9a              # double 6.2839159999999996
	.quad	0x40179bfe3b03e20d              # double 5.9023370000000002
	.quad	0x3ff7c9331a08bfc2              # double 1.486621
	.quad	0x401c4c85c24c404a              # double 7.0747289999999996
	.quad	0x3fb43d790752da98              # double 0.079062999999999994
	.quad	0x4015efe2e6ea8544              # double 5.4842639999999996
	.quad	0x3ffb1c1d6cf850df              # double 1.694364
	.quad	0x4020494445aa2e3c              # double 8.1430989999999994
	.quad	0x402391de8b3b3205              # double 9.7849009999999996
	.quad	0x3fd63bd5992428d4              # double 0.34740199999999999
	.quad	0x3ffb154fbdad7519              # double 1.6927030000000001
	.quad	0x40116028e4fb97bb              # double 4.3439059999999996
	.quad	0x401da61565c2d278              # double 7.4121909999999999
	.quad	0x40030679463cfb33              # double 2.378161
	.quad	0x3ffec5b6c3760bf6              # double 1.92327
	.quad	0x40216e00d1b71759              # double 8.7148500000000002
	.quad	0x401e9ab4b72c5198              # double 7.6510800000000003
	.quad	0x401178cbd1244a62              # double 4.3679649999999999
	.quad	0x4014d28240b78034              # double 5.2055749999999996
	.quad	0x401a4ac96cc5fbf8              # double 6.5730339999999998
	.quad	0x4022d3547e06961c              # double 9.4127539999999996
	.quad	0x3ffafa28bb0a2caa              # double 1.6860740000000001
	.quad	0x3fe04bf4cb1897a6              # double 0.50927199999999995
	.quad	0x4021dd8cf398e970              # double 8.9327159999999992
	.quad	0x3ffc6d6dc1a47a9e              # double 1.776716
	.quad	0x3fffcffb8b263950              # double 1.9882770000000001
	.quad	0x3fff3b09203a322b              # double 1.951913
	.quad	0x40100fbca1059ea5              # double 4.0153679999999996
	.quad	0x40211488a47ecfea              # double 8.5401050000000005
	.quad	0x400a87bdcf0307f2              # double 3.3162799999999999
	.quad	0x3ffeacbb7f9d6f11              # double 1.917171
	.quad	0x40076b367a0f9097              # double 2.9273500000000001
	.quad	0x401b8a8f3a9b0681              # double 6.8853119999999999
	.quad	0x400d5a4f8726d04e              # double 3.6690969999999998
	.quad	0x402084ea28fe260b              # double 8.2595989999999997
	.quad	0x402084bfb15b573f              # double 8.2592750000000006
	.quad	0x4020a060999dcb58              # double 8.3132370000000009
	.quad	0x4007c96ededaec4a              # double 2.9733559999999999
	.quad	0x3ff043dbc23315d7              # double 1.016567
	.quad	0x4023681adea89763              # double 9.7033299999999993
	.quad	0x40234fe542e557de              # double 9.6560459999999999
	.quad	0x4021649b845564b6              # double 8.6964989999999993
	.quad	0x4015edbcec84f8f9              # double 5.4821660000000003
	.quad	0x4018fc53f39d1b2e              # double 6.2464139999999997
	.quad	0x40110f13cee9dd7f              # double 4.2647240000000002
	.quad	0x401e30cd423d9232              # double 7.5476580000000002
	.quad	0x4018eee0f3cb3e57              # double 6.2332799999999997
	.quad	0x3fd8ce52deca2553              # double 0.38759300000000002
	.quad	0x40194199fe43675e              # double 6.3140640000000001
	.quad	0x401d372606fac604              # double 7.3038559999999997
	.quad	0x401eaae9ee45c359              # double 7.6669080000000002
	.quad	0x401df3543aeab799              # double 7.4876259999999996
	.quad	0x40095869835158b8              # double 3.1681699999999999
	.quad	0x4011911b60ae9681              # double 4.3917060000000001
	.quad	0x4020f90c2c5e2cdc              # double 8.4864209999999999
	.quad	0x400b9a8826aa8eb4              # double 3.4504549999999998
	.quad	0x40211dcd7060bb2c              # double 8.5582080000000004
	.quad	0x401cbe75360d0247              # double 7.185994
	.quad	0x3feb38bcdfefbf40              # double 0.85067599999999999
	.quad	0x40014466b1e5c0ba              # double 2.1583990000000002
	.quad	0x4021944827b6fe2e              # double 8.7896129999999992
	.quad	0x3ffa1e2ac3222920              # double 1.6323650000000001
	.quad	0x40236662131a8ef7              # double 9.6999669999999991
	.quad	0x4021dae1049235f8              # double 8.9274979999999999
	.quad	0x400dd1dc50ce4ead              # double 3.727471
	.quad	0x3ffed42b302f72b4              # double 1.9267989999999999
	.quad	0x3ff8b12e40852b4e              # double 1.5432570000000001
	.quad	0x3ffac4c9c90c4dec              # double 1.673044
	.quad	0x401121e2584f4c6e              # double 4.2830899999999996
	.quad	0x401dc3996fa82e88              # double 7.4410150000000001
	.quad	0x3fe31b994e1a3f46              # double 0.59711899999999996
	.quad	0x3ff763b256ffc116              # double 1.46184
	.quad	0x40073667b5f1bef5              # double 2.9015650000000002
	.quad	0x4011ebb83cf2cf96              # double 4.4801950000000001
	.quad	0x401f2ea52ef911cf              # double 7.7955519999999998
	.quad	0x400bb5350092ccf7              # double 3.4634800000000001
	.quad	0x40142cacd184c272              # double 5.043628
	.quad	0x40173779a6b50b0f              # double 5.8041749999999999
	.quad	0x3ffb1a6b50b0f27c              # double 1.6939500000000001
	.quad	0x4018983ba3443d47              # double 6.1486650000000003
	.quad	0x3ff3ad698fe69271              # double 1.2298370000000001
	.quad	0x401d834c5da6a444              # double 7.3782209999999999
	.quad	0x4021e2df9378ee28              # double 8.9431119999999993
	.quad	0x3fd4519bd4067cf2              # double 0.31748100000000001
	.quad	0x4014023dd54da4cf              # double 5.0021890000000004
	.quad	0x3fc73e5753a3ec03              # double 0.18159
	.quad	0x401d9cdfaca36199              # double 7.4031969999999996
	.quad	0x4004a4b2314013ec              # double 2.5804179999999999
	.quad	0x3ff0a02c9081c2e3              # double 1.0391049999999999
	.quad	0x4021f2b239a38fbd              # double 8.9740160000000007
	.quad	0x4023be4e8b7e4de4              # double 9.8716930000000004
	.quad	0x4015fc0df58c08b7              # double 5.4961469999999997
	.quad	0x401ede21101b0037              # double 7.7169230000000004
	.quad	0x401ec27aa68f4b62              # double 7.689921
	.quad	0x400139bc33f85511              # double 2.1531910000000001
	.quad	0x401680bf1a5ca298              # double 5.6257289999999998
	.quad	0x401c75907d912557              # double 7.1148090000000002
	.quad	0x400ec7ad080b673c              # double 3.8474979999999999
	.quad	0x4007ede19fc2a887              # double 2.9911530000000002
	.quad	0x4000c161e4f765fe              # double 2.0944250000000002
	.quad	0x40021c36113404ea              # double 2.2637749999999999
	.quad	0x40147ab2e1693c04              # double 5.1198230000000002
	.quad	0x4021f2a326e11559              # double 8.9739009999999997
	.quad	0x4020856de33269e0              # double 8.2606040000000007
	.quad	0x40021325918a009f              # double 2.2593489999999998
	.quad	0x40188d549731098d              # double 6.1380179999999998
	.quad	0x4022b4588a04d120              # double 9.3522379999999998
	.quad	0x4022469f8c21e1d2              # double 9.1379359999999998
	.quad	0x401bb2107b784663              # double 6.9238910000000002
	.quad	0x3fe5fe52157689ca              # double 0.68729499999999999
	.quad	0x4006030a915379fb              # double 2.7514850000000002
	.quad	0x40086eee957470eb              # double 3.0541659999999999
	.quad	0x40226b69552e2fbe              # double 9.2097879999999996
	.quad	0x4008216c61522a6f              # double 3.0163199999999999
	.quad	0x40060de1198aeb81              # double 2.756777
	.quad	0x3fcb685985ad538b              # double 0.21412200000000001
	.quad	0x40217fde7210be94              # double 8.7497439999999997
	.quad	0x40230f66e86c6584              # double 9.5300820000000001
	.quad	0x401bffd4bf0995ab              # double 6.999835
	.quad	0x4022b4199fe43676              # double 9.3517580000000002
	.quad	0x3ff7ba3ca7503b82              # double 1.4829680000000001
	.quad	0x401c96d9be4cd749              # double 7.1473149999999999
	.quad	0x3ff7f5ce18266773              # double 1.497511
	.quad	0x401b3843c3a42f1f              # double 6.8049460000000002
	.quad	0x4023341ebc83a96d              # double 9.6017969999999994
	.quad	0x4009dcd2d44dca8e              # double 3.2328239999999999
	.size	.L__constant_3500xf64, 28000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	38                              # 0x26
	.quad	38                              # 0x26
	.quad	81                              # 0x51
	.quad	81                              # 0x51
	.quad	124                             # 0x7c
	.quad	124                             # 0x7c
	.quad	171                             # 0xab
	.quad	171                             # 0xab
	.quad	204                             # 0xcc
	.quad	204                             # 0xcc
	.quad	244                             # 0xf4
	.quad	244                             # 0xf4
	.quad	283                             # 0x11b
	.quad	283                             # 0x11b
	.quad	327                             # 0x147
	.quad	327                             # 0x147
	.quad	361                             # 0x169
	.quad	361                             # 0x169
	.quad	399                             # 0x18f
	.quad	399                             # 0x18f
	.quad	440                             # 0x1b8
	.quad	440                             # 0x1b8
	.quad	484                             # 0x1e4
	.quad	484                             # 0x1e4
	.quad	522                             # 0x20a
	.quad	522                             # 0x20a
	.quad	559                             # 0x22f
	.quad	559                             # 0x22f
	.quad	596                             # 0x254
	.quad	596                             # 0x254
	.quad	637                             # 0x27d
	.quad	637                             # 0x27d
	.quad	675                             # 0x2a3
	.quad	675                             # 0x2a3
	.quad	719                             # 0x2cf
	.quad	719                             # 0x2cf
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	801                             # 0x321
	.quad	801                             # 0x321
	.quad	836                             # 0x344
	.quad	836                             # 0x344
	.quad	872                             # 0x368
	.quad	872                             # 0x368
	.quad	913                             # 0x391
	.quad	913                             # 0x391
	.quad	953                             # 0x3b9
	.quad	953                             # 0x3b9
	.quad	996                             # 0x3e4
	.quad	996                             # 0x3e4
	.quad	1037                            # 0x40d
	.quad	1037                            # 0x40d
	.quad	1076                            # 0x434
	.quad	1076                            # 0x434
	.quad	1117                            # 0x45d
	.quad	1117                            # 0x45d
	.quad	1156                            # 0x484
	.quad	1156                            # 0x484
	.quad	1194                            # 0x4aa
	.quad	1194                            # 0x4aa
	.quad	1238                            # 0x4d6
	.quad	1238                            # 0x4d6
	.quad	1279                            # 0x4ff
	.quad	1279                            # 0x4ff
	.quad	1323                            # 0x52b
	.quad	1323                            # 0x52b
	.quad	1362                            # 0x552
	.quad	1362                            # 0x552
	.quad	1407                            # 0x57f
	.quad	1407                            # 0x57f
	.quad	1451                            # 0x5ab
	.quad	1451                            # 0x5ab
	.quad	1493                            # 0x5d5
	.quad	1493                            # 0x5d5
	.quad	1530                            # 0x5fa
	.quad	1530                            # 0x5fa
	.quad	1562                            # 0x61a
	.quad	1562                            # 0x61a
	.quad	1601                            # 0x641
	.quad	1601                            # 0x641
	.quad	1646                            # 0x66e
	.quad	1646                            # 0x66e
	.quad	1689                            # 0x699
	.quad	1689                            # 0x699
	.quad	1729                            # 0x6c1
	.quad	1729                            # 0x6c1
	.quad	1772                            # 0x6ec
	.quad	1772                            # 0x6ec
	.quad	1813                            # 0x715
	.quad	1813                            # 0x715
	.quad	1849                            # 0x739
	.quad	1849                            # 0x739
	.quad	1889                            # 0x761
	.quad	1889                            # 0x761
	.quad	1925                            # 0x785
	.quad	1925                            # 0x785
	.quad	1963                            # 0x7ab
	.quad	1963                            # 0x7ab
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x400d7a059a73b42d              # double 3.6845810000000001
	.quad	0x400419c0ebedfa44              # double 2.512575
	.quad	0x40145154866a11ed              # double 5.0794240000000004
	.quad	0x4000692ff4ba51a0              # double 2.051361
	.quad	0x4010af1a5ca29846              # double 4.1709990000000001
	.quad	0x4010bd3aa369fcf4              # double 4.1847940000000001
	.quad	0x4017154bcf0b6b6e              # double 5.770797
	.quad	0x4020d2326e115593              # double 8.4105410000000003
	.quad	0x400e0f6512a94ff0              # double 3.757517
	.quad	0x401d13e100607810              # double 7.2694130000000001
	.quad	0x4010aaec8d5c7475              # double 4.1669179999999999
	.quad	0x401e76b50b0f27bb              # double 7.6159249999999998
	.quad	0x3ff050092ccf6be3              # double 1.0195399999999999
	.quad	0x4023b984e3ffef39              # double 9.8623419999999999
	.quad	0x401a2c0ce91c8eac              # double 6.543018
	.quad	0x40224832db1e9f27              # double 9.1410129999999992
	.quad	0x3fe4883126e978d5              # double 0.641625
	.quad	0x3ff528f29d40ee07              # double 1.322497
	.quad	0x4002b4562e09fe87              # double 2.3380550000000002
	.quad	0x401b404e618ce2d2              # double 6.812799
	.quad	0x400292513b5bf6a1              # double 2.3214440000000001
	.quad	0x4018c102ff8ec0f9              # double 6.1884880000000004
	.quad	0x401705d6bebe1651              # double 5.7557020000000003
	.quad	0x400c95818c5c9a35              # double 3.5730010000000001
	.quad	0x3fff4ca0c282c6ef              # double 1.9562079999999999
	.quad	0x402245d851654d62              # double 9.1364160000000005
	.quad	0x40206154c985f06f              # double 8.1900999999999993
	.quad	0x4015d4c55432873c              # double 5.4577840000000002
	.quad	0x4011a40d90e23af3              # double 4.4102079999999999
	.quad	0x400d27c8d195896a              # double 3.6444260000000002
	.quad	0x4023b1a4df47f994              # double 9.8469610000000002
	.quad	0x4011cd2d87f88766              # double 4.4503690000000002
	.quad	0x4017493d102bc72e              # double 5.8215219999999999
	.quad	0x401bc107b784662c              # double 6.9385060000000003
	.quad	0x401b4dcebfec13ba              # double 6.8259840000000001
	.quad	0x40067dff3f0fe048              # double 2.8115220000000001
	.quad	0x3ff982938de6ddf0              # double 1.594379
	.quad	0x3fe8f329c347e8cd              # double 0.77968300000000001
	.quad	0x4023671f57b41bfc              # double 9.7014110000000002
	.quad	0x401fec343b70ef56              # double 7.9806679999999997
	.quad	0x40210b84ba0e8427              # double 8.5224969999999995
	.quad	0x4008e1a261bf37b9              # double 3.1101730000000001
	.quad	0x4014c87d6f976790              # double 5.1957909999999998
	.quad	0x40216f3cf70153bd              # double 8.7172619999999998
	.quad	0x4023a0a7a41e57da              # double 9.8137790000000003
	.quad	0x4013228522ea0fd4              # double 4.7837110000000003
	.quad	0x401658140dd3fe19              # double 5.5860139999999996
	.quad	0x40239c1bb8c32a8d              # double 9.8048990000000006
	.quad	0x3ffb8271fff79c84              # double 1.719347
	.quad	0x40221676640a6b94              # double 9.0438720000000003
	.quad	0x4011416c61522a6f              # double 4.3138899999999998
	.quad	0x400d159ddc1e7968              # double 3.6355550000000001
	.quad	0x4015eba16e7a311f              # double 5.4801080000000004
	.quad	0x40118424e5929670              # double 4.3790469999999999
	.quad	0x400138a4c1ebc83b              # double 2.1526580000000002
	.quad	0x3fccb7995ee136e7              # double 0.224353
	.quad	0x3ffacfffbce4217d              # double 1.675781
	.quad	0x4010f9a5a89b951c              # double 4.2437959999999997
	.quad	0x4021cbedfa43fe5d              # double 8.8983000000000008
	.quad	0x4017944bf4cb1898              # double 5.8948210000000003
	.quad	0x401638887229e908              # double 5.5552080000000004
	.quad	0x402127903211cb04              # double 8.5772720000000006
	.quad	0x400aca41a261bf38              # double 3.3487580000000001
	.quad	0x401bf38a7e73a366              # double 6.9878330000000002
	.quad	0x401e546f15619115              # double 7.5824550000000003
	.quad	0x402375477bbf93ff              # double 9.7290609999999997
	.quad	0x40117f8bdec5f395              # double 4.3745570000000003
	.quad	0x4016f78316a05575              # double 5.7417109999999996
	.quad	0x4014aec918e325d5              # double 5.1706890000000003
	.quad	0x4018d925fe974a34              # double 6.212059
	.quad	0x40209dd031055b8a              # double 8.3082290000000008
	.quad	0x40127146e4c0df59              # double 4.6106220000000002
	.quad	0x4019b4484944ed70              # double 6.4260570000000001
	.quad	0x400f9bb0e5e67946              # double 3.9510209999999999
	.quad	0x3ff95c75818c5c9a              # double 1.585073
	.quad	0x40136859c8c9320e              # double 4.8519050000000004
	.quad	0x40101d4024b33db0              # double 4.0285650000000004
	.quad	0x4013e8b220791c4c              # double 4.9772420000000004
	.quad	0x3ff5a7e846a5d6bf              # double 1.3534930000000001
	.quad	0x401daf2e8c0485a1              # double 7.4210760000000002
	.quad	0x401ea7353b4b2fa9              # double 7.6632889999999997
	.quad	0x400d6189374bc6a8              # double 3.672625
	.quad	0x4023db3bd9cae211              # double 9.9281909999999999
	.quad	0x401176fc158fb43e              # double 4.3661960000000004
	.quad	0x401e9c73abc94706              # double 7.6527849999999997
	.quad	0x4014bded288ce704              # double 5.1854750000000003
	.quad	0x402340e60807357e              # double 9.6267549999999993
	.quad	0x3fbf2ecf20642396              # double 0.121808
	.quad	0x402020e2e2b8c75c              # double 8.0642309999999994
	.quad	0x401224638c975297              # double 4.5355359999999996
	.quad	0x40197185cee17a03              # double 6.360862
	.quad	0x4020b04cad57bc7f              # double 8.3443349999999992
	.quad	0x3feb204af922962d              # double 0.847692
	.quad	0x3ffd5dd5d3dc8b87              # double 1.8354090000000001
	.quad	0x4015b955b4677b39              # double 5.4309909999999997
	.quad	0x40080b29e4d5d80e              # double 3.0054509999999999
	.quad	0x40224626916440f2              # double 9.1370129999999996
	.quad	0x3ff37c64345cfedf              # double 1.2178690000000001
	.quad	0x401605f3519bd406              # double 5.5058109999999996
	.quad	0x401e585510d38cda              # double 7.5862619999999996
	.quad	0x401ea9e7b80a9de9              # double 7.6659230000000002
	.quad	0x401eefc6da448494              # double 7.7341569999999997
	.quad	0x4019bc753e707e17              # double 6.4340409999999997
	.quad	0x401b2bda5119ce07              # double 6.7928249999999997
	.quad	0x401db24dd2f1a9fc              # double 7.4241250000000001
	.quad	0x4023ebcc8de2ac32              # double 9.9605449999999998
	.quad	0x40182414a4d2b2c0              # double 6.0352350000000001
	.quad	0x3fff3b0b39192642              # double 1.9519150000000001
	.quad	0x402149904b3c3e75              # double 8.6436790000000006
	.quad	0x402142f294dd7236              # double 8.6307569999999991
	.quad	0x40227372c5197a25              # double 9.2254850000000008
	.quad	0x3ffd3e07a28bb0a3              # double 1.827644
	.quad	0x400154bd76ee73e7              # double 2.1663770000000002
	.quad	0x401dcf8769ec2ce4              # double 7.4526649999999997
	.quad	0x4022f0eb0318b934              # double 9.4705429999999992
	.quad	0x4023c6faa4766c6e              # double 9.8886310000000002
	.quad	0x4001313ad5bee3d6              # double 2.149038
	.quad	0x40227f01fb82c2bd              # double 9.2480619999999991
	.quad	0x3fffc75d56f32bdc              # double 1.986173
	.quad	0x4015832d2bb23572              # double 5.3781020000000002
	.quad	0x3ff6ae4b018611fd              # double 1.4175519999999999
	.quad	0x40213c4f3ba775fb              # double 8.6177919999999997
	.quad	0x401f1f1dc50ce4eb              # double 7.7803870000000001
	.quad	0x401356b441bb8c33              # double 4.8346720000000003
	.quad	0x40169932d6ece13f              # double 5.6496079999999997
	.quad	0x402001ce075f6fd2              # double 8.0035249999999998
	.quad	0x4021f211cb039ef1              # double 8.9727920000000001
	.quad	0x3fe978140dd3fe19              # double 0.79590799999999995
	.quad	0x3fec067ad8e43244              # double 0.87579099999999998
	.quad	0x3fec16c82e019b0b              # double 0.87778100000000003
	.quad	0x4013c07faa044ae8              # double 4.9379869999999997
	.quad	0x4020aad948dc11e4              # double 8.3336889999999996
	.quad	0x4004a1ee675147f1              # double 2.5790679999999999
	.quad	0x4018ca47ecfe9b7c              # double 6.19754
	.quad	0x4019097635e7429a              # double 6.2592400000000001
	.quad	0x40204b2af145521a              # double 8.1468120000000006
	.quad	0x4020f1d4b6a619db              # double 8.4723260000000007
	.quad	0x401c656861e92924              # double 7.0990310000000001
	.quad	0x3ffea9b6b2af1455              # double 1.916434
	.quad	0x40140e88df37329c              # double 5.0141939999999998
	.quad	0x401fd9741d084e83              # double 7.9623569999999999
	.quad	0x3ffa0be7296f6513              # double 1.6279060000000001
	.quad	0x4008cda3c21187e8              # double 3.1004100000000001
	.quad	0x3ff70cf1800a7c5b              # double 1.4406600000000001
	.quad	0x401eac3c18b502ac              # double 7.6681980000000003
	.quad	0x3fd6e7d9988d2a20              # double 0.35790100000000002
	.quad	0x4019d577963992c9              # double 6.4584640000000002
	.quad	0x4017fd86a8fc0d2c              # double 5.9975839999999998
	.quad	0x3fffcd0dcfcc5b8e              # double 1.9875620000000001
	.quad	0x4020029aa1d755bd              # double 8.0050860000000004
	.quad	0x401c8009f623076c              # double 7.125038
	.quad	0x4009ef08cc575c07              # double 3.2417159999999998
	.quad	0x402204f227d028a2              # double 9.0096600000000002
	.quad	0x401ac2df9378ee28              # double 6.6903059999999996
	.quad	0x400aee0221426fe7              # double 3.366215
	.quad	0x40100a0407cc7d1c              # double 4.0097810000000003
	.quad	0x3fe29ae4f3343fa3              # double 0.58140800000000004
	.quad	0x401fd0b4e11dbca9              # double 7.9538149999999996
	.quad	0x4011934a01abd1ab              # double 4.3938370000000004
	.quad	0x3fd5e631f8a0902e              # double 0.34217500000000001
	.quad	0x401871be2b4959e6              # double 6.1110769999999999
	.quad	0x401c640a6b93ccd1              # double 7.097696
	.quad	0x402087240fa9c12f              # double 8.2639469999999999
	.quad	0x40185b530ced4e4d              # double 6.0891840000000004
	.quad	0x4015c0da5daf07c0              # double 5.4383330000000001
	.quad	0x4020037718655193              # double 8.0067679999999992
	.quad	0x40096f4d7add15f0              # double 3.1793469999999999
	.quad	0x400d793ff25e56cd              # double 3.6842039999999998
	.quad	0x4003d78897e99631              # double 2.4802409999999999
	.quad	0x40199c8c0ce91c8f              # double 6.4028780000000003
	.quad	0x4023bdb1422ccb3a              # double 9.8704929999999997
	.quad	0x401493e63e8dda49              # double 5.1444330000000003
	.quad	0x3ffe6c02f2f98740              # double 1.90137
	.quad	0x4006212c6ac215ba              # double 2.7661980000000002
	.quad	0x40223a63736cdf26              # double 9.1140399999999993
	.quad	0x3fb33ce63a5c1c61              # double 0.075148000000000006
	.quad	0x3ff2d48238540464              # double 1.176882
	.quad	0x40124b0e5e679464              # double 4.5732970000000002
	.quad	0x401fa6d2674080fa              # double 7.9129120000000004
	.quad	0x40180dd377e1b8ed              # double 6.0135019999999999
	.quad	0x4020e2a6b0d95140              # double 8.4426780000000008
	.quad	0x3fb128bf3bea91da              # double 0.067028000000000004
	.quad	0x40182a77e5eaab04              # double 6.0414729999999999
	.quad	0x3fdbc32a8c9b8455              # double 0.43378699999999998
	.quad	0x402256f7c243dccf              # double 9.1698590000000006
	.quad	0x3fe8c6e8f29d40ee              # double 0.774281
	.quad	0x4012f75ff609dcf9              # double 4.7415770000000004
	.quad	0x40135bb4d48882f1              # double 4.8395570000000001
	.quad	0x4015e08aefb2aae3              # double 5.4692800000000004
	.quad	0x40208cf893faf428              # double 8.2753340000000009
	.quad	0x3ffc935fc3b4f616              # double 1.7859799999999999
	.quad	0x40018b8a5ce5b424              # double 2.1931349999999998
	.quad	0x4020c27b2cc70868              # double 8.3798460000000006
	.quad	0x3ff52102795703f3              # double 1.320559
	.quad	0x40208ea11ec918e3              # double 8.2785729999999997
	.quad	0x3ffb2856605ee569              # double 1.6973480000000001
	.quad	0x40231a26a22b3893              # double 9.5510760000000001
	.quad	0x4012932c1f42bb66              # double 4.6437229999999996
	.quad	0x4021c06a098915be              # double 8.8758090000000003
	.quad	0x400fdc90c4dec1c2              # double 3.9826980000000001
	.quad	0x4013f9220ff54089              # double 4.9932939999999997
	.quad	0x401bc37e2c55c960              # double 6.9409109999999998
	.quad	0x3ffba0642396073e              # double 1.726658
	.quad	0x400cef533f42352f              # double 3.6168580000000001
	.quad	0x4022a5d8b60f1b26              # double 9.3239190000000001
	.quad	0x401efb1af3a14cec              # double 7.7452199999999998
	.quad	0x401733947496aad2              # double 5.8003710000000002
	.quad	0x40220a72ead9274e              # double 9.0204079999999998
	.quad	0x400ed1feeb2d0a24              # double 3.8525369999999999
	.quad	0x4012341bb8c32a8d              # double 4.5508870000000003
	.quad	0x401ad878fabda0e0              # double 6.7113990000000001
	.quad	0x3fc2145953586ca9              # double 0.14124600000000001
	.quad	0x40130a26e5471716              # double 4.7599140000000002
	.quad	0x400634289118c198              # double 2.775468
	.quad	0x401dfc2bd7f51efb              # double 7.4962609999999996
	.quad	0x401dc4bdba0a5269              # double 7.4421299999999997
	.quad	0x40132ea9e6eeb702              # double 4.7955699999999997
	.quad	0x40029e963dc486ad              # double 2.3274349999999999
	.quad	0x400f53910c2c5e2d              # double 3.9158040000000001
	.quad	0x402043b01c92ddbe              # double 8.1322030000000005
	.quad	0x401705ee99a62ed3              # double 5.7557929999999997
	.quad	0x401d61a11233df2b              # double 7.3453410000000003
	.quad	0x40044918e325d4a6              # double 2.5356920000000001
	.quad	0x401edcb10342aa9f              # double 7.7155189999999995
	.quad	0x3fe67f993d5347a6              # double 0.70307600000000003
	.quad	0x3fddb5a63f9a49c3              # double 0.46421200000000001
	.quad	0x40180baa9b499d02              # double 6.011393
	.quad	0x4020b126a65cf67b              # double 8.3459979999999998
	.quad	0x400e332df505d0fa              # double 3.7749899999999998
	.quad	0x4007095421c04428              # double 2.8795549999999999
	.quad	0x3fe88d4562e09fe8              # double 0.76724499999999995
	.quad	0x4019943d03968d76              # double 6.3947640000000003
	.quad	0x3feb163dc486ad2e              # double 0.84646500000000002
	.quad	0x401b6b17ce52deca              # double 6.8545829999999999
	.quad	0x3ffd86b7aa25d8d8              # double 1.8453900000000001
	.quad	0x401c379357603926              # double 7.0542730000000002
	.quad	0x40197b59146e4c0e              # double 6.370457
	.quad	0x401416cb966be7b0              # double 5.0222610000000003
	.quad	0x4018243c7d5ed070              # double 6.0353870000000001
	.quad	0x3ff7e90257c914b1              # double 1.4943869999999999
	.quad	0x4018b99fe43675de              # double 6.1812740000000002
	.quad	0x40134b1b79d909f2              # double 4.8233470000000001
	.quad	0x3ffad99cbee807bc              # double 1.6781280000000001
	.quad	0x4012f82cf52b90a8              # double 4.7423590000000004
	.quad	0x4021e6b6bf444e0e              # double 8.9506130000000006
	.quad	0x40136dddb1209edc              # double 4.857291
	.quad	0x3ff5c11a11233df3              # double 1.3596440000000001
	.quad	0x401edae3a3a8e714              # double 7.7137589999999996
	.quad	0x401f0ed288ce703b              # double 7.764475
	.quad	0x4015aae3608d0892              # double 5.4168830000000003
	.quad	0x40227243fe5c91d1              # double 9.2231749999999995
	.quad	0x4018373a365cb35f              # double 6.0539329999999998
	.quad	0x401711deefe4ffc9              # double 5.7674519999999996
	.quad	0x4020ff11f926c7eb              # double 8.4981840000000002
	.quad	0x401c25069a4df480              # double 7.0361580000000004
	.quad	0x4023393293d102bc              # double 9.6117139999999992
	.quad	0x401947542a23bff9              # double 6.3196570000000003
	.quad	0x400ae46e8f29d40f              # double 3.3615390000000001
	.quad	0x3f97af20ea5b530d              # double 0.023129
	.quad	0x4016dcff64cf8d71              # double 5.7158179999999996
	.quad	0x402180705425f202              # double 8.7508569999999999
	.quad	0x40049001d5c31594              # double 2.570316
	.quad	0x4015b99c7bcc2939              # double 5.4312610000000001
	.quad	0x4023384f8f8a4c1f              # double 9.6099820000000004
	.quad	0x4022a6ae18ac9f30              # double 9.3255470000000003
	.quad	0x4000cd7518b0d0ee              # double 2.1003210000000001
	.quad	0x4022dbeb399f5dff              # double 9.4295290000000004
	.quad	0x4017888ca3e7d135              # double 5.8833489999999999
	.quad	0x40225f80fdc1615f              # double 9.1865310000000004
	.quad	0x3febd12231832fcb              # double 0.86927900000000002
	.quad	0x402382314013ec46              # double 9.7542819999999999
	.quad	0x4015f861e92923e6              # double 5.4925610000000002
	.quad	0x4011ad9cf13cee9e              # double 4.4195440000000001
	.quad	0x40114c89b0ee49f5              # double 4.3247439999999999
	.quad	0x401f84228997c3d7              # double 7.8790380000000004
	.quad	0x40204e33eff19503              # double 8.1527399999999997
	.quad	0x4023d42cc2d6a9c5              # double 9.9144039999999993
	.quad	0x400263f8982cb210              # double 2.2988140000000001
	.quad	0x4006a8adeebb341e              # double 2.832363
	.quad	0x3fcc536d655e28aa              # double 0.22129599999999999
	.quad	0x4016e7214f0520d1              # double 5.7257129999999998
	.quad	0x400db1e96c3fc43b              # double 3.7118709999999999
	.quad	0x40002d5cfaacd9e8              # double 2.0221499999999999
	.quad	0x4018d505d0fa58f7              # double 6.2080299999999999
	.quad	0x401d974c8ffb8b26              # double 7.3977529999999998
	.quad	0x40115f3c2dadb835              # double 4.3430030000000004
	.quad	0x401b7cb4289118c2              # double 6.8717810000000004
	.quad	0x3ff736b3bb83cf2d              # double 1.450855
	.quad	0x4023714ff0025bfb              # double 9.7213130000000003
	.quad	0x40203cf1c3265ade              # double 8.1190320000000007
	.quad	0x401eb1758e219653              # double 7.6733000000000002
	.quad	0x3ffefa3875925354              # double 1.9360889999999999
	.quad	0x3fc34ddf86e3b470              # double 0.150814
	.quad	0x40171cdf69878317              # double 5.7781960000000003
	.quad	0x401a015ce9e5e248              # double 6.5013310000000004
	.quad	0x4000452d666a9824              # double 2.0337779999999999
	.quad	0x4017c3b4b2fa93af              # double 5.9411189999999996
	.quad	0x40162c6b8b69552e              # double 5.5433789999999998
	.quad	0x400e693af74cd317              # double 3.8013819999999998
	.quad	0x40123e7ddca4b125              # double 4.5610270000000002
	.quad	0x401576e9bbf0dc77              # double 5.3661260000000004
	.quad	0x3fffeb5f5f0b2852              # double 1.994964
	.quad	0x401f9dac68a936c6              # double 7.9039780000000004
	.quad	0x401cf6f4be835dee              # double 7.241168
	.quad	0x40199b2702a3486f              # double 6.401516
	.quad	0x3ff0a43ed959a30a              # double 1.0400990000000001
	.quad	0x4019ca74c09c3ce2              # double 6.447711
	.quad	0x400631455219a848              # double 2.7740580000000001
	.quad	0x401dc8262456f75e              # double 7.4454580000000004
	.quad	0x3fed0ff10ecb74de              # double 0.908196
	.quad	0x3ffaa4ece9a2c669              # double 1.665265
	.quad	0x401dcd627bf61aa4              # double 7.4505710000000001
	.quad	0x40069cb1cc964628              # double 2.826511
	.quad	0x4012efba01eeed89              # double 4.734108
	.quad	0x4013d05bc01a36e3              # double 4.9534750000000001
	.quad	0x40161674080f98fa              # double 5.5219269999999998
	.quad	0x3ff0909070fbeb9e              # double 1.0352939999999999
	.quad	0x3fecbb55ac03ff69              # double 0.897868
	.quad	0x401e5e6644d87725              # double 7.592187
	.quad	0x400b1694467381d8              # double 3.3860250000000001
	.quad	0x3ff4c11d3671ac15              # double 1.297147
	.quad	0x400fdcab81f969e4              # double 3.9827490000000001
	.quad	0x4013bbfa4c61d862              # double 4.9335719999999998
	.quad	0x3fd348626f60e0eb              # double 0.30129299999999998
	.quad	0x3ff9c5f28848387e              # double 1.610827
	.quad	0x4019e78d4fdf3b64              # double 6.4761249999999997
	.quad	0x4009a5d0fa58f712              # double 3.205965
	.quad	0x3fefae31d712a0ec              # double 0.99001399999999994
	.quad	0x400832849cb252ce              # double 3.024667
	.quad	0x40213a26c3b927d4              # double 8.6135769999999993
	.quad	0x4010e1ad6451b930              # double 4.2203879999999998
	.quad	0x402170183f91e647              # double 8.7189350000000001
	.quad	0x3fe185942917507f              # double 0.54755600000000004
	.quad	0x400e8f6b5d462c34              # double 3.8200289999999999
	.quad	0x40239a80064a9cdc              # double 9.8017579999999995
	.quad	0x401640b2c83ec893              # double 5.5631820000000003
	.quad	0x401a52df9378ee28              # double 6.5809309999999996
	.quad	0x3fe4d6a7ac81d3aa              # double 0.65120299999999998
	.quad	0x3febb5efa615a8df              # double 0.86595900000000003
	.quad	0x4022953c36113405              # double 9.2914750000000002
	.quad	0x40184b1ab0856e69              # double 6.0733439999999996
	.quad	0x401f1521dda059a7              # double 7.7706369999999997
	.quad	0x401a345132f87ad1              # double 6.5510910000000004
	.quad	0x401b44628027d88c              # double 6.8167819999999999
	.quad	0x401cd380cb6c7a7d              # double 7.2065460000000003
	.quad	0x4018f1dd1a21ea36              # double 6.2361950000000004
	.quad	0x400020c49ba5e354              # double 2.016
	.quad	0x40225070da5daf08              # double 9.1571110000000004
	.quad	0x402344117f84449e              # double 9.6329460000000005
	.quad	0x401c598f1d3ed528              # double 7.0874600000000001
	.quad	0x400fa60fe47991bc              # double 3.9560849999999999
	.quad	0x401b121d10b1feeb              # double 6.7676889999999998
	.quad	0x3ffeaab25b317efe              # double 1.916674
	.quad	0x3fe5421e1d2178f7              # double 0.66432100000000005
	.quad	0x4019e3a14cec41dd              # double 6.4722949999999999
	.quad	0x4016d6f1dc50ce4f              # double 5.7099070000000003
	.quad	0x4019308919ef954f              # double 6.2973980000000003
	.quad	0x400e155043e5321e              # double 3.7604069999999998
	.quad	0x401b7c11a11233df              # double 6.8711609999999999
	.quad	0x401c15fe111276fb              # double 7.021477
	.quad	0x4009b3dc8b86b160              # double 3.2128230000000002
	.quad	0x401d6c964628027e              # double 7.3560420000000004
	.quad	0x3ffd5ee675147f13              # double 1.835669
	.quad	0x3fd132096787ce96              # double 0.268679
	.quad	0x3fcccd9620685554              # double 0.225024
	.quad	0x401754cf4a558ea8              # double 5.8328220000000002
	.quad	0x40057754b05b7cfe              # double 2.6832669999999998
	.quad	0x40196ee957470eb2              # double 6.3583119999999997
	.quad	0x3fe3ebdf4c2b51bd              # double 0.62254299999999996
	.quad	0x3ff1c8461f9f01b8              # double 1.1113949999999999
	.quad	0x4019517763e4abe7              # double 6.3295570000000003
	.quad	0x400c902de00d1b71              # double 3.5703999999999998
	.quad	0x40214f0f5a1016ce              # double 8.6544139999999992
	.quad	0x401085f5275ee99a              # double 4.1308179999999997
	.quad	0x401ccc0fcb4f1e4b              # double 7.1992789999999998
	.quad	0x401c2df9378ee286              # double 7.0448959999999996
	.quad	0x40055de37585be1b              # double 2.6708440000000002
	.quad	0x4023e7314ca925ff              # double 9.9515480000000007
	.quad	0x3ff0b4df04ddb552              # double 1.0441579999999999
	.quad	0x4019e383ad9f0a1c              # double 6.4721820000000001
	.quad	0x401f7fbb517a4617              # double 7.8747379999999997
	.quad	0x3ff765625a682b63              # double 1.4622520000000001
	.quad	0x3fc9e9531550ca1d              # double 0.202433
	.quad	0x401c4bb5e0f7fcfc              # double 7.0739359999999998
	.quad	0x400c8452c59fb1e2              # double 3.5646110000000002
	.quad	0x4022571ac14c660a              # double 9.1701259999999998
	.quad	0x4017bfe047d3d428              # double 5.937379
	.quad	0x400484ca4f440af2              # double 2.5648390000000001
	.quad	0x4023325072085b18              # double 9.5982699999999994
	.quad	0x3ff4b02b40f66a55              # double 1.29301
	.quad	0x3feada4f00ef1349              # double 0.83914900000000003
	.quad	0x401f3694ccab3ede              # double 7.8033020000000004
	.quad	0x4019055c52e72da1              # double 6.2552349999999999
	.quad	0x4022b898b2e9ccb8              # double 9.3605400000000003
	.quad	0x4021ba7221858bc6              # double 8.8641520000000007
	.quad	0x4017aababead4f59              # double 5.916728
	.quad	0x4023d67f6f4be836              # double 9.9189410000000002
	.quad	0x3fffc87ca643cc08              # double 1.9864470000000001
	.quad	0x400a92f449129889              # double 3.321755
	.quad	0x3f9b84988094e5d6              # double 0.026873000000000001
	.quad	0x3ffa703f2d3c792d              # double 1.652404
	.quad	0x3ff11cda2b5a20de              # double 1.0695440000000001
	.quad	0x4021a72f76e6106b              # double 8.8265340000000005
	.quad	0x401d2f1ed17c5ef6              # double 7.2960159999999998
	.quad	0x400801fb82c2bd7f              # double 3.0009679999999999
	.quad	0x4021ad5347a5b0ff              # double 8.8385259999999999
	.quad	0x3ffcf9ca5bd944aa              # double 1.8109839999999999
	.quad	0x3fc406c8711d798e              # double 0.15645700000000001
	.quad	0x3ff523e39f77292c              # double 1.3212619999999999
	.quad	0x400ce97e132b55ef              # double 3.6140099999999999
	.quad	0x3fe1a65f0f5a1017              # double 0.55155900000000002
	.quad	0x40165e7685985ad5              # double 5.5922489999999998
	.quad	0x4014783f91e646f1              # double 5.1174299999999997
	.quad	0x4017b090f733a8a4              # double 5.922428
	.quad	0x3ff549adc8fb86f4              # double 1.3304879999999999
	.quad	0x401ab598e10cf5b2              # double 6.6773410000000002
	.quad	0x401cb9a847b24639              # double 7.1813060000000002
	.quad	0x401da2bd3c361134              # double 7.408925
	.quad	0x401992bfdb4cc250              # double 6.3933099999999996
	.quad	0x3fff2513b5bf6a0e              # double 1.9465520000000001
	.quad	0x3ffa5bfbdf090f73              # double 1.6474569999999999
	.quad	0x401d877531db445f              # double 7.3822830000000002
	.quad	0x4020d352c9d16fca              # double 8.4127410000000005
	.quad	0x3ff0b1172ef0ae53              # double 1.0432349999999999
	.quad	0x3ffa89b1fab96f22              # double 1.658617
	.quad	0x400363632c1f42bb              # double 2.4235289999999998
	.quad	0x3fe2bdfd2630ec31              # double 0.58569199999999999
	.quad	0x401d9e3a7daa4fca              # double 7.4045199999999998
	.quad	0x3fc556fb8f57f738              # double 0.166717
	.quad	0x3ff28919ef954eb1              # double 1.1584719999999999
	.quad	0x3fdd52934acaff6d              # double 0.45816499999999999
	.quad	0x401af03ab862b27d              # double 6.7345990000000002
	.quad	0x4010803b3e9a6f82              # double 4.1252259999999996
	.quad	0x401e8b5bb384fd2a              # double 7.6360919999999997
	.quad	0x4001da708ede54b5              # double 2.2316600000000002
	.quad	0x4008f551d68c692f              # double 3.1197849999999998
	.quad	0x401a0631b584b1ab              # double 6.506049
	.quad	0x40069b3f20a73f75              # double 2.8258040000000002
	.quad	0x4021701de2691644              # double 8.7189779999999998
	.quad	0x3fe9b3bd9cae2110              # double 0.80319099999999999
	.quad	0x3ffb3bf0dc768dfc              # double 1.702134
	.quad	0x40218be553ac4f7f              # double 8.7732340000000004
	.quad	0x401de876e1deacc9              # double 7.4770159999999999
	.quad	0x401118bdec5f394b              # double 4.2741619999999996
	.quad	0x3fed18f605ab3aac              # double 0.90929700000000002
	.quad	0x401268655193708b              # double 4.6019490000000003
	.quad	0x401daf8f8a4c1ebd              # double 7.4214460000000004
	.quad	0x4018a45f5ad96a6a              # double 6.16052
	.quad	0x4007e2107b784663              # double 2.9853830000000001
	.quad	0x4023fff69014b59a              # double 9.9999280000000006
	.quad	0x401c2def416bdb1a              # double 7.0448579999999996
	.quad	0x4011701eeed8904f              # double 4.3594929999999996
	.quad	0x400829a459103c8e              # double 3.0203329999999999
	.quad	0x401a2b588e368f08              # double 6.5423299999999998
	.quad	0x401a873365881a15              # double 6.6320319999999997
	.quad	0x4019921c8a7a41e5              # double 6.3926869999999996
	.quad	0x4020d6013660e51d              # double 8.4179779999999997
	.quad	0x4013ffc32ebe596d              # double 4.9997680000000004
	.quad	0x3fb5146e4c0df58c              # double 0.082343
	.quad	0x3ffb08323358f2e0              # double 1.6895009999999999
	.quad	0x4018f8f57f737da6              # double 6.2431239999999999
	.quad	0x3fdaf826edaa92e6              # double 0.42139599999999999
	.quad	0x402182be27179bfe              # double 8.7553570000000001
	.quad	0x4022c5fb0d51f81a              # double 9.3866809999999994
	.quad	0x400a94690de09353              # double 3.3224659999999999
	.quad	0x400f201abd1aa822              # double 3.890676
	.quad	0x40149051c9f72f77              # double 5.1409370000000001
	.quad	0x4009fbbb62413db8              # double 3.247916
	.quad	0x3fe3a2467be553ac              # double 0.61355899999999997
	.quad	0x3ff59973d9ec7000              # double 1.3499639999999999
	.quad	0x4007608d8ec95bff              # double 2.922145
	.quad	0x3fe7a5ebb7739f34              # double 0.73900399999999999
	.quad	0x4020517507e9d94d              # double 8.1590959999999999
	.quad	0x4015b7192ea52ef9              # double 5.4288069999999999
	.quad	0x401e8c432ca57a78              # double 7.6369749999999996
	.quad	0x4011510dbf0563ed              # double 4.3291539999999999
	.quad	0x3fbb76b3bb83cf2d              # double 0.10728
	.quad	0x4005b21ccd962068              # double 2.7119689999999999
	.quad	0x4023916312f4cf4a              # double 9.7839589999999994
	.quad	0x4012d4fdf3b645a2              # double 4.7080000000000002
	.quad	0x40206d069a4df480              # double 8.2129410000000007
	.quad	0x4005fe9af5ba2be0              # double 2.7493189999999998
	.quad	0x3fd53a4723aafff3              # double 0.33168199999999998
	.quad	0x4012433daf8df7a5              # double 4.5656650000000001
	.quad	0x4022bf3c4f3ba776              # double 9.373507
	.quad	0x400c2c46950fc71d              # double 3.5216189999999998
	.quad	0x401c2f359ff4fd6d              # double 7.0461029999999996
	.quad	0x3ffef2702a3486f0              # double 1.9341889999999999
	.quad	0x4019ebfad2999568              # double 6.4804490000000001
	.quad	0x40234b302f72b453              # double 9.6468520000000008
	.quad	0x400200c7c0f45176              # double 2.250381
	.quad	0x4017afcefaa4766c              # double 5.9216879999999996
	.quad	0x401c58b1572580c3              # double 7.086614
	.quad	0x40153a22b3892ee8              # double 5.3067729999999997
	.quad	0x401c4886df82b1f7              # double 7.0708270000000004
	.quad	0x4013b3022dd7a9a0              # double 4.9248130000000003
	.quad	0x401147778dd616f8              # double 4.3197919999999996
	.quad	0x40226640420f6f09              # double 9.1997090000000004
	.quad	0x4015fac36544fe37              # double 5.4948860000000002
	.quad	0x4023ceca25529fe0              # double 9.903886
	.quad	0x4005543fa2ad3e92              # double 2.666137
	.quad	0x402366f99806f263              # double 9.7011230000000008
	.quad	0x4000e76fb09203a3              # double 2.1130059999999999
	.quad	0x4009fe093532e7b4              # double 3.2490410000000001
	.quad	0x3ffbd818c5c9a34d              # double 1.7402580000000001
	.quad	0x40186116a8b8f14e              # double 6.0948130000000003
	.quad	0x40076ec95bff0457              # double 2.9290949999999998
	.quad	0x401f1e6a76965f52              # double 7.7797029999999996
	.quad	0x400fb124d099e0e7              # double 3.9614959999999999
	.quad	0x4022fddf2239e6ac              # double 9.4958430000000006
	.quad	0x401d5faeff5c6c12              # double 7.3434410000000003
	.quad	0x402084d3bf2f5558              # double 8.2594279999999998
	.quad	0x3fedfe28240b7803              # double 0.93727499999999997
	.quad	0x4018763ed0f62739              # double 6.1154739999999999
	.quad	0x400e33b96af038e3              # double 3.7752560000000002
	.quad	0x401a6ecaab8a5ce6              # double 6.6081950000000003
	.quad	0x401b9ab474107315              # double 6.9010790000000002
	.quad	0x4022f0dd82fd75e2              # double 9.47044
	.quad	0x4012168943e10060              # double 4.5220079999999996
	.quad	0x40111a4ebdd334c6              # double 4.2756910000000001
	.quad	0x401e6a0cf1800a7c              # double 7.6035649999999997
	.quad	0x3fb0b2745bf26f1e              # double 0.065223000000000003
	.quad	0x4022692599ed7c70              # double 9.2053650000000005
	.quad	0x401af77f27fe4bcb              # double 6.7416960000000001
	.quad	0x4021982645e4e69f              # double 8.797167
	.quad	0x4020545436b8f9b1              # double 8.1647049999999997
	.quad	0x3ff72dca07f66e87              # double 1.4486790000000001
	.quad	0x400f8007570c5650              # double 3.9375140000000002
	.quad	0x4019d7e34b945309              # double 6.4608280000000002
	.quad	0x4015141b75a74c0a              # double 5.2696360000000002
	.quad	0x40203329e4d5d80e              # double 8.0999289999999995
	.quad	0x4021851eb851eb85              # double 8.7599999999999998
	.quad	0x4011c0d2c386d2ed              # double 4.4383039999999996
	.quad	0x400a43fb3743632c              # double 3.2831939999999999
	.quad	0x4020c7e90ff97247              # double 8.3904499999999995
	.quad	0x401a99984a0e410b              # double 6.6499949999999997
	.quad	0x401c4ddbdb5d8948              # double 7.0760339999999999
	.quad	0x401e3f4a98aa8651              # double 7.561808
	.quad	0x4017d16a48733659              # double 5.9545070000000004
	.quad	0x4013548e8a71de6a              # double 4.8325750000000003
	.quad	0x4013abe7afa72218              # double 4.9178759999999997
	.quad	0x3fe1caff6d330942              # double 0.55603000000000002
	.quad	0x4016dbb6ed677708              # double 5.7145650000000003
	.quad	0x402361348b220792              # double 9.6898540000000004
	.quad	0x401561c219eb6391              # double 5.3454670000000002
	.quad	0x40239146a1a500d6              # double 9.7837420000000002
	.quad	0x40197b3e1437c569              # double 6.3703539999999998
	.quad	0x3ff1daf9ebe9c886              # double 1.115961
	.quad	0x3ffa2d4e4c942d49              # double 1.636061
	.quad	0x40216c562e09fe87              # double 8.7115950000000009
	.quad	0x400a445a1cac0831              # double 3.2833749999999999
	.quad	0x4022fb3f85510d39              # double 9.4907190000000003
	.quad	0x402207ab324851a8              # double 9.0149779999999993
	.quad	0x400a127807789a46              # double 3.2590180000000002
	.quad	0x400115feda661284              # double 2.1357400000000002
	.quad	0x40020b94d9407896              # double 2.255655
	.quad	0x40174f1886df82b2              # double 5.827242
	.quad	0x401b53f52fc2656b              # double 6.8319900000000002
	.quad	0x401f14827b6fe2e7              # double 7.770029
	.quad	0x401e87a02fb5d031              # double 7.6324469999999999
	.quad	0x40236f4e4430b179              # double 9.7173940000000005
	.quad	0x40133a82e87d2c7c              # double 4.8071400000000004
	.quad	0x401f4fd1dcd7060c              # double 7.8279490000000003
	.quad	0x40079f78359bc340              # double 2.9528660000000002
	.quad	0x4016e9d1b2e59afa              # double 5.7283390000000001
	.quad	0x40128077036c9c0b              # double 4.6254540000000004
	.quad	0x4016ee5de15ca6ca              # double 5.73278
	.quad	0x3feaac2bd7f51efb              # double 0.83351699999999995
	.quad	0x401f2ad9f0a1be2b              # double 7.7918469999999997
	.quad	0x400dec764adff823              # double 3.7404600000000001
	.quad	0x4020434b2fa93af7              # double 8.1314329999999995
	.quad	0x400b3e39f77292c5              # double 3.4053840000000002
	.quad	0x401348405b39e27a              # double 4.8205580000000001
	.quad	0x3ff09f6a93f290ac              # double 1.0389200000000001
	.quad	0x40127d2674080f99              # double 4.622217
	.quad	0x4017c219a847b246              # double 5.9395509999999998
	.quad	0x3ffbdcb46bacf744              # double 1.7413829999999999
	.quad	0x401300079a2834d2              # double 4.7500289999999996
	.quad	0x401fe5553ef6b5d4              # double 7.9739579999999997
	.quad	0x402110750c1b9735              # double 8.5321429999999996
	.quad	0x3fe41d25aab47410              # double 0.62855799999999995
	.quad	0x3fea08ebcc6c54bd              # double 0.81358900000000001
	.quad	0x4013a4ad362e9036              # double 4.9108169999999998
	.quad	0x401db8a82a5614e0              # double 7.4303290000000004
	.quad	0x4010fb0079a2834d              # double 4.2451189999999999
	.quad	0x4020c3779e9d0e99              # double 8.3817719999999998
	.quad	0x4021387075b3e143              # double 8.6102329999999991
	.quad	0x4020ae26d4801f75              # double 8.3401399999999999
	.quad	0x4019fa06e9ff0cbb              # double 6.494167
	.quad	0x40196c011d3671ac              # double 6.3554729999999999
	.quad	0x401546c97d8cf399              # double 5.3191280000000001
	.quad	0x4002f7995ee136e7              # double 2.3708979999999999
	.quad	0x40143383ad9f0a1c              # double 5.0503070000000001
	.quad	0x4023c742bb6672fc              # double 9.8891810000000006
	.quad	0x40232ed288ce703b              # double 9.59145
	.quad	0x4014757646ae3a3b              # double 5.1147090000000004
	.quad	0x4009f84c271fff7a              # double 3.2462390000000001
	.quad	0x40112a294141e9af              # double 4.2911729999999997
	.quad	0x40102295208e1501              # double 4.0337719999999999
	.quad	0x4010df3a9b068124              # double 4.2179970000000004
	.quad	0x400232c59fb1e18f              # double 2.274791
	.quad	0x401ba225742dcf46              # double 6.9083459999999999
	.quad	0x400674784230fcf8              # double 2.80687
	.quad	0x4000f4bad7d7c2ca              # double 2.119497
	.quad	0x3ff156fda836eb4f              # double 1.0837380000000001
	.quad	0x401cfa7829068987              # double 7.244599
	.quad	0x3ff8629845dc8323              # double 1.524071
	.quad	0x40128a372606fac6              # double 4.634976
	.quad	0x4001c0e1f7d73c92              # double 2.2191809999999998
	.quad	0x4013a5475a31a4be              # double 4.9114050000000002
	.quad	0x3ffb7734b51372a4              # double 1.7166030000000001
	.quad	0x401a7b5d462c343b              # double 6.6204729999999996
	.quad	0x40216787f023e9ea              # double 8.7022089999999999
	.quad	0x3ff0717ce52deca2              # double 1.0277069999999999
	.quad	0x3ffbb48e4755ffe7              # double 1.731581
	.quad	0x4010c4bc27631b58              # double 4.1921239999999997
	.quad	0x4019d4fa8b4bf8fd              # double 6.4579870000000001
	.quad	0x4020db92e1ef73c1              # double 8.4288550000000004
	.quad	0x4001485db76b3bb8              # double 2.1603349999999999
	.quad	0x4020e16b3354c122              # double 8.4402709999999992
	.quad	0x401524cc6822ff09              # double 5.2859360000000004
	.quad	0x4021a8dcfcc5b8dc              # double 8.8298109999999994
	.quad	0x40235aae6c8f7553              # double 9.6771119999999992
	.quad	0x3ff4c8a58b3f63c3              # double 1.298986
	.quad	0x40191b08dd1e53a8              # double 6.2764009999999999
	.quad	0x4018b7f51efb6dca              # double 6.179646
	.quad	0x400908feac42e98a              # double 3.1293920000000002
	.quad	0x400d1992c8c50050              # double 3.6374870000000001
	.quad	0x401716266fd651b1              # double 5.7716310000000002
	.quad	0x4023d8283d35eb74              # double 9.9221819999999993
	.quad	0x3fc9c18b502ababf              # double 0.20121900000000001
	.quad	0x40173fb9bed30f06              # double 5.8122319999999998
	.quad	0x3ff6624894c447c3              # double 1.398995
	.quad	0x4014a65f0f5a1017              # double 5.1624720000000002
	.quad	0x401998198f1d3ed5              # double 6.3985349999999999
	.quad	0x3fef5a8bd230b9dc              # double 0.97980299999999997
	.quad	0x401cb48cf7caa759              # double 7.1763190000000003
	.quad	0x3ff99e55c0fcb4f2              # double 1.601156
	.quad	0x4023eb56da0168b6              # double 9.9596470000000004
	.quad	0x401928958d9b5e96              # double 6.2896330000000003
	.quad	0x40016663c74fb54a              # double 2.174995
	.quad	0x40136cce5f7403de              # double 4.8562560000000001
	.quad	0x4017e620685553ef              # double 5.9747329999999996
	.quad	0x40227ce8b7e4de3c              # double 9.2439630000000008
	.quad	0x4005c8f8e7ddca4b              # double 2.723131
	.quad	0x402031709310129d              # double 8.0965620000000005
	.quad	0x3ff88c76d117b528              # double 1.5342929999999999
	.quad	0x401aeb23dd54da4d              # double 6.7296290000000001
	.quad	0x4013d441355475a3              # double 4.9572799999999999
	.quad	0x3ff0e35f80991794              # double 1.0555110000000001
	.quad	0x4016658c8eef1bac              # double 5.5991689999999998
	.quad	0x401f81351159c497              # double 7.8761789999999995
	.quad	0x401d455d1c3ac92a              # double 7.3177380000000003
	.quad	0x3fc98f68be2f7b18              # double 0.19968900000000001
	.quad	0x4021aa1ec4e7253e              # double 8.8322660000000006
	.quad	0x4009c0b6f9fcb0c0              # double 3.2190989999999999
	.quad	0x401d5822ff08893b              # double 7.3360709999999996
	.quad	0x401e35350092ccf7              # double 7.5519600000000002
	.quad	0x401b5dbe7f2c300a              # double 6.8415470000000003
	.quad	0x4002148cb4aec8d6              # double 2.2600340000000001
	.quad	0x4011ce83e425aee6              # double 4.4516749999999998
	.quad	0x401d84cd31769a91              # double 7.3796889999999999
	.quad	0x401f11ac57e23f25              # double 7.7672590000000001
	.quad	0x3fd96e2a80064a9d              # double 0.39734900000000001
	.quad	0x401f3dc1e7967caf              # double 7.8103100000000003
	.quad	0x4019a18266772d5e              # double 6.407724
	.quad	0x402011c0ca600b03              # double 8.0346740000000008
	.quad	0x4010c9ffd60e94ee              # double 4.1972649999999998
	.quad	0x3ffd926202539757              # double 1.848238
	.quad	0x3ff6e37de939eadd              # double 1.4305399999999999
	.quad	0x4022bd2ce032db1f              # double 9.3694830000000006
	.quad	0x4011a2ee84ad794a              # double 4.4091129999999996
	.quad	0x4023b499d0203e64              # double 9.8527360000000001
	.quad	0x3ff373860999dcb5              # double 1.2157039999999999
	.quad	0x4015d0d3cff64cf9              # double 5.4539330000000001
	.quad	0x3ff04e13f4a98aa8              # double 1.0190619999999999
	.quad	0x4005e33df2a9d628              # double 2.7359580000000001
	.quad	0x4011689b0ee49f51              # double 4.3521539999999996
	.quad	0x4014614d2f5dbb9d              # double 5.095021
	.quad	0x3fed045564b662fe              # double 0.906779
	.quad	0x3fe15308bb906467              # double 0.54138600000000003
	.quad	0x4023016ededaec4a              # double 9.5027989999999996
	.quad	0x400f144e50c5eb31              # double 3.8849149999999999
	.quad	0x400e4ee9dd7ecbb8              # double 3.788532
	.quad	0x4019832ce89656ef              # double 6.378101
	.quad	0x4021a2bb44e50c5f              # double 8.8178350000000005
	.quad	0x3fd7904b3c3e74b0              # double 0.36818200000000001
	.quad	0x40233bcbe61cffeb              # double 9.6167899999999999
	.quad	0x401a8b1ab0856e69              # double 6.6358439999999996
	.quad	0x402122b66b6177ea              # double 8.5677979999999998
	.quad	0x3f9ec31162281345              # double 0.030041000000000002
	.quad	0x401b4a50d6b228dd              # double 6.8225740000000004
	.quad	0x4008d09289dadfb5              # double 3.101842
	.quad	0x400ffc7d5ed06fef              # double 3.9982859999999998
	.quad	0x40054a0232096788              # double 2.6611370000000001
	.quad	0x40108a9f7b5aea31              # double 4.1353739999999997
	.quad	0x4020f723033a4724              # double 8.4826890000000005
	.quad	0x3fc3ce2089e34331              # double 0.154728
	.quad	0x402014985f06f694              # double 8.0402249999999995
	.quad	0x4017429f59ccfaf0              # double 5.815061
	.quad	0x4016f7ab324851a8              # double 5.7418639999999996
	.quad	0x401261eeaa6d2674              # double 4.595637
	.quad	0x4019e14a4d2b2bfe              # double 6.4700100000000003
	.quad	0x400095f99c38b04b              # double 2.0732300000000001
	.quad	0x40076f5fd47bedb7              # double 2.9293819999999999
	.quad	0x40136a7b0b391926              # double 4.8539849999999998
	.quad	0x401c7af533f42353              # double 7.1200760000000001
	.quad	0x401e8382a12f9011              # double 7.6284280000000004
	.quad	0x4004ad8ec95bff04              # double 2.5847449999999998
	.quad	0x4023d2400fba8827              # double 9.9106450000000005
	.quad	0x402179b3aeee9574              # double 8.7376989999999992
	.quad	0x4023d620ab713272              # double 9.9182179999999995
	.quad	0x40121616b54e2b06              # double 4.5215709999999998
	.quad	0x40239267e846a5d7              # double 9.7859490000000004
	.quad	0x401fa0c176577532              # double 7.9069880000000001
	.quad	0x40226afc69728a61              # double 9.2089569999999998
	.quad	0x3feeba8a3f8982cb              # double 0.96027099999999998
	.quad	0x4002b090f733a8a4              # double 2.336214
	.quad	0x3ff348c8259e1f3a              # double 1.2052689999999999
	.quad	0x401b4fbeb9e492bc              # double 6.8278759999999998
	.quad	0x4001e39e6ab9b23e              # double 2.2361420000000001
	.quad	0x401e9b3d07c84b5e              # double 7.6516000000000002
	.quad	0x402218f733a8a3f9              # double 9.0487610000000007
	.quad	0x40043c11e42e1262              # double 2.529331
	.quad	0x40170497fa5d28d0              # double 5.754486
	.quad	0x401e0fcdee34fc61              # double 7.5154339999999999
	.quad	0x401aecaf2d7f950c              # double 6.7311370000000004
	.quad	0x402074e746cb966c              # double 8.2283270000000001
	.quad	0x4003ba6d698fe692              # double 2.4660289999999998
	.quad	0x3fe67d41743e963e              # double 0.70279000000000003
	.quad	0x401ceb35f3d7d391              # double 7.229698
	.quad	0x3f87dbf487fcb924              # double 0.011650000000000001
	.quad	0x4011dfdb8fde2ef5              # double 4.4686110000000001
	.quad	0x400db43419e30015              # double 3.71299
	.quad	0x401cddc1615ebfa9              # double 7.216558
	.quad	0x40127167ec7863bf              # double 4.6107480000000001
	.quad	0x4015b01b43526528              # double 5.4219790000000003
	.quad	0x3fcf2e9ccb7d4174              # double 0.24360999999999999
	.quad	0x401b0f533f42352f              # double 6.7649660000000003
	.quad	0x401d7b60ae9680e0              # double 7.3704859999999996
	.quad	0x4020dec311622813              # double 8.4350819999999995
	.quad	0x401191aa821f2991              # double 4.392252
	.quad	0x400bd54195cc857f              # double 3.4791289999999999
	.quad	0x401a55043e5321e6              # double 6.583024
	.quad	0x400d8f9ca5bd944b              # double 3.6951230000000002
	.quad	0x4023cd1a21ea3593              # double 9.9005899999999993
	.quad	0x3ffb1df761cbccf3              # double 1.6948160000000001
	.quad	0x400a91c8eabffcdb              # double 3.3211840000000001
	.quad	0x3febf0bf1a5ca298              # double 0.87313799999999997
	.quad	0x40158f78feef5ec8              # double 5.39011
	.quad	0x40103189bd8383ae              # double 4.0483770000000003
	.quad	0x401d55f78359bc34              # double 7.333952
	.quad	0x4022f5188f42fe82              # double 9.4787029999999994
	.quad	0x40212cee5abc0e39              # double 8.5877560000000006
	.quad	0x400c38eeae9ee45c              # double 3.5277989999999999
	.quad	0x3fff6c13b9f127f6              # double 1.963886
	.quad	0x4014ccdc8754f377              # double 5.2000599999999997
	.quad	0x40151b11c6d1e109              # double 5.2764350000000002
	.quad	0x402034c76d117b53              # double 8.1030840000000008
	.quad	0x40163705425f2021              # double 5.553731
	.quad	0x3fc812e83a109d06              # double 0.18807699999999999
	.quad	0x401f6035371971c1              # double 7.8439529999999999
	.quad	0x3ff1f822bbecaab9              # double 1.1230800000000001
	.quad	0x4018835371971c11              # double 6.1282480000000001
	.quad	0x40111567125dd096              # double 4.2709010000000003
	.quad	0x3fe35ad106ee30cb              # double 0.60483600000000004
	.quad	0x3fe479c62a1b5c7d              # double 0.63986500000000002
	.quad	0x400914af4f0d844d              # double 3.1351
	.quad	0x400d4c450268900c              # double 3.6622409999999999
	.quad	0x3ff063b9ae0c1765              # double 1.0243469999999999
	.quad	0x40232ed0d49949e9              # double 9.5914370000000008
	.quad	0x40017018e757928e              # double 2.179735
	.quad	0x40057f865d7cb2d9              # double 2.687268
	.quad	0x3ff82774eebf65dc              # double 1.509633
	.quad	0x401a63c07ee0b0af              # double 6.5974139999999997
	.quad	0x3fe796e7a311e860              # double 0.73717100000000002
	.quad	0x3ff2193b3a68b19a              # double 1.1311599999999999
	.quad	0x3fc1c67dfe32a066              # double 0.13886999999999999
	.quad	0x4021d376922d948e              # double 8.9130140000000004
	.quad	0x4017729f59ccfaf0              # double 5.861936
	.quad	0x400efcb1465e8922              # double 3.8733849999999999
	.quad	0x3fce306e5cd4ed2d              # double 0.23585300000000001
	.quad	0x3ffdd1d798d8a97a              # double 1.863731
	.quad	0x3ffb59b8023a6ce3              # double 1.7094039999999999
	.quad	0x40111a116659d12d              # double 4.2754570000000003
	.quad	0x4023d2c450268901              # double 9.9116540000000004
	.quad	0x3fd7aa9717df19d6              # double 0.36978699999999998
	.quad	0x4012fc5718eb8950              # double 4.7464259999999996
	.quad	0x3fdbcd74927913e8              # double 0.434415
	.quad	0x40229f985271bcdc              # double 9.3117090000000004
	.quad	0x402134983d790753              # double 8.6027240000000003
	.quad	0x3fa058793dd97f63              # double 0.031925000000000002
	.quad	0x401fa47bedb72820              # double 7.9106290000000001
	.quad	0x40179faeff5c6c12              # double 5.9059410000000003
	.quad	0x4023a1a0ad8a1166              # double 9.8156789999999994
	.quad	0x401a97518b0d0edc              # double 6.6477719999999998
	.quad	0x3fe2c17225b749ae              # double 0.58611400000000002
	.quad	0x400a7e518f3eccc4              # double 3.3116789999999998
	.quad	0x3ffe07b890d5a5b9              # double 1.8768849999999999
	.quad	0x40126da1a93293d1              # double 4.607062
	.quad	0x4020c2a411c2a023              # double 8.3801579999999998
	.quad	0x401daf29d40ee06e              # double 7.4210580000000004
	.quad	0x3fad50ca1cef2410              # double 0.057257000000000002
	.quad	0x4015322d948dc11e              # double 5.2990019999999998
	.quad	0x40069dccea28fe26              # double 2.827051
	.quad	0x3feac10b630a9153              # double 0.83606499999999995
	.quad	0x3fd6f30e7ff583a5              # double 0.35858499999999999
	.quad	0x40222f02602c9082              # double 9.0918150000000004
	.quad	0x3ffbd1212513b5bf              # double 1.7385569999999999
	.quad	0x4002de2046c764ae              # double 2.35846
	.quad	0x3ff49e03f705857b              # double 1.288578
	.quad	0x400a99620685553f              # double 3.324894
	.quad	0x40038a9ac36544fe              # double 2.4426779999999999
	.quad	0x3ffc4854cdb7ae58              # double 1.7676590000000001
	.quad	0x4022521fd1569f49              # double 9.160399
	.quad	0x401c97e56473471f              # double 7.1483359999999996
	.quad	0x3ffcd37e2c55c960              # double 1.801634
	.quad	0x3fe3b3fc86cebbba              # double 0.61572099999999996
	.quad	0x400779841aac53b1              # double 2.9343340000000002
	.quad	0x401a0c8eef1bac2e              # double 6.5122640000000001
	.quad	0x3ff77c7607c419a0              # double 1.467886
	.quad	0x4010c5675579af19              # double 4.1927770000000004
	.quad	0x401ac00b45ae5ffa              # double 6.6875429999999998
	.quad	0x4021606bbdbe3c10              # double 8.6883219999999994
	.quad	0x401d2e6ab9b23dd5              # double 7.2953289999999997
	.quad	0x40238eece13f4a99              # double 9.7791510000000005
	.quad	0x40078955b4677b39              # double 2.9420579999999998
	.quad	0x401f0f533f42352f              # double 7.7649660000000002
	.quad	0x4003064c2f837b4a              # double 2.3780749999999999
	.quad	0x4003531337eb28d8              # double 2.4155639999999998
	.quad	0x40237d9bc33f8551              # double 9.7453289999999999
	.quad	0x40227eb356da0169              # double 9.2474620000000005
	.quad	0x4007da187a4a48f9              # double 2.9814919999999998
	.quad	0x4019b446b69db65f              # double 6.4260510000000002
	.quad	0x4012cde33269df98              # double 4.7010620000000003
	.quad	0x40022ba6aca79357              # double 2.2713139999999998
	.quad	0x3ff25a6a44417870              # double 1.1470739999999999
	.quad	0x40147ff1950331e4              # double 5.1249450000000003
	.quad	0x40115640a6b93ccd              # double 4.3342309999999999
	.quad	0x4016701a79fec99f              # double 5.6094759999999999
	.quad	0x401564998d045fe1              # double 5.3482419999999999
	.quad	0x3febaa8c9b845565              # double 0.86456900000000003
	.quad	0x4021ee7685985ad5              # double 8.9657479999999996
	.quad	0x401068f75536933a              # double 4.102506
	.quad	0x40236ad666a98245              # double 9.7086670000000001
	.quad	0x402217727136a401              # double 9.045795
	.quad	0x40021d72bcb5fe54              # double 2.2643789999999999
	.quad	0x40209f16b11c6d1e              # double 8.3107199999999999
	.quad	0x4011f6801711947d              # double 4.490723
	.quad	0x402388d2a1f8e3ac              # double 9.7672319999999999
	.quad	0x4010c071c53f39d2              # double 4.1879340000000003
	.quad	0x401cb763e4abe6a3              # double 7.1790919999999998
	.quad	0x4014bb5aea3161a2              # double 5.1829640000000001
	.quad	0x40232b1209edbf8c              # double 9.5841220000000006
	.quad	0x4009ee5471715c64              # double 3.2413720000000001
	.quad	0x40223277c45cbbc3              # double 9.0985700000000005
	.quad	0x400c9ccfaeff5c6c              # double 3.576568
	.quad	0x3ffd04d76ab58080              # double 1.813682
	.quad	0x40165649906cca2e              # double 5.5842650000000003
	.quad	0x4013ade7ea5f84cb              # double 4.9198300000000001
	.quad	0x40081f162ae4b018              # double 3.0151789999999998
	.quad	0x400f241248d7e026              # double 3.8926129999999999
	.quad	0x400951e42e126202              # double 3.1649859999999999
	.quad	0x401a5c56d5cfaace              # double 6.5901750000000003
	.quad	0x4023d87a28bb0a2d              # double 9.9228070000000005
	.quad	0x4022a9409a240315              # double 9.3305710000000008
	.quad	0x401fff57f737da62              # double 7.9993590000000001
	.quad	0x401db52c9d16fc9c              # double 7.4269280000000002
	.quad	0x4015f6da0168b5cc              # double 5.491066
	.quad	0x40198311a543f1c7              # double 6.3779969999999997
	.quad	0x401a6b8cb8e086be              # double 6.605029
	.quad	0x40153a87e38eb032              # double 5.3071590000000004
	.quad	0x3fe0280cf9e3864d              # double 0.50488900000000003
	.quad	0x4022bf5b5fa22707              # double 9.3737440000000002
	.quad	0x4018a87f88765ba7              # double 6.1645490000000001
	.quad	0x3fdd25d4a5df223a              # double 0.45543400000000001
	.quad	0x40207fb24638c975              # double 8.2494069999999997
	.quad	0x4023ba9da597d49d              # double 9.8644839999999991
	.quad	0x40207a7b2cc70868              # double 8.2392210000000006
	.quad	0x401c44ca4f440af2              # double 7.0671780000000002
	.quad	0x3fd96b441bb8c32b              # double 0.39717200000000003
	.quad	0x4011aa4e7ab75643              # double 4.416315
	.quad	0x4020ca0d130df9be              # double 8.3946310000000004
	.quad	0x400b0a76965f5276              # double 3.380109
	.quad	0x401db93d102bc72e              # double 7.4308969999999999
	.quad	0x401f9996b76709fa              # double 7.8999889999999997
	.quad	0x4021904230fcf80e              # double 8.7817550000000004
	.quad	0x3ffa73f42352eb5f              # double 1.6533089999999999
	.quad	0x3fe4f952d234eb9a              # double 0.65543499999999999
	.quad	0x402122bde3fbbd7b              # double 8.5678549999999998
	.quad	0x40232e92f6e8294a              # double 9.5909650000000006
	.quad	0x4015079d909f1f15              # double 5.2574370000000004
	.quad	0x400dd33c1ce6c094              # double 3.7281420000000001
	.quad	0x4015971327243138              # double 5.3975340000000003
	.quad	0x3ff86801711947d0              # double 1.5253920000000001
	.quad	0x40002eba27ae9ab3              # double 2.0228160000000002
	.quad	0x4023a5f0d413122b              # double 9.8241029999999991
	.quad	0x3fff9ff0cbaf965b              # double 1.976548
	.quad	0x40200b9cb6848beb              # double 8.0226799999999994
	.quad	0x402145c9c4da9004              # double 8.6363050000000001
	.quad	0x4023de71cda2b5a2              # double 9.9344619999999999
	.quad	0x4020f0d2a1f8e3ac              # double 8.4703569999999999
	.quad	0x4020fd7a56de3327              # double 8.4950740000000007
	.quad	0x400f66466b1e5c0c              # double 3.9249390000000002
	.quad	0x3ff09529fe004b7f              # double 1.0364169999999999
	.quad	0x40238b2f44912989              # double 9.7718450000000007
	.quad	0x40209f640639d5e5              # double 8.3113100000000006
	.quad	0x401c0f1b69121251              # double 7.0147529999999998
	.quad	0x3fede8576cce5f74              # double 0.93461199999999999
	.quad	0x401b2494d50ebaae              # double 6.7857240000000001
	.quad	0x3ffec9d6adf71eb0              # double 1.924277
	.quad	0x4016be158750c1b9              # double 5.6856289999999996
	.quad	0x3ff93bafd976ff3b              # double 1.577072
	.quad	0x401e4b417ca2120e              # double 7.5734919999999999
	.quad	0x401f7e9424e59296              # double 7.8736119999999996
	.quad	0x402332bffcdab192              # double 9.5991210000000002
	.quad	0x4002f5e5aff2a173              # double 2.3700670000000001
	.quad	0x4020ebe3193f6c27              # double 8.4607170000000007
	.quad	0x3fb1351159c49774              # double 0.067215999999999998
	.quad	0x402112b1704ff434              # double 8.5365099999999998
	.quad	0x401d4759253543af              # double 7.3196760000000003
	.quad	0x400f3dba908a265f              # double 3.905141
	.quad	0x3feebd25247cb70b              # double 0.96058900000000002
	.quad	0x4009257c914b167f              # double 3.1433040000000001
	.quad	0x40236827b6fe2e6f              # double 9.7034280000000006
	.quad	0x3ffd28ccdd93c46e              # double 1.8224610000000001
	.quad	0x40091890d5a5b963              # double 3.1369950000000002
	.quad	0x4021fc9ea9a3d2d8              # double 8.9933979999999991
	.quad	0x40170a797891e215              # double 5.7602289999999998
	.quad	0x3ff6a25d8d79d0a6              # double 1.4146399999999999
	.quad	0x4007e2c98e53eb3a              # double 2.9857360000000002
	.quad	0x4014c7a5b0ff10ed              # double 5.1949680000000003
	.quad	0x4009748909289dae              # double 3.181902
	.quad	0x4021e754b05b7cfe              # double 8.9518179999999994
	.quad	0x4011de7ea5f84cad              # double 4.4672799999999997
	.quad	0x401fe438d1d8a548              # double 7.9728729999999998
	.quad	0x40231288051c9f73              # double 9.536194
	.quad	0x3ff775d56f32bdc2              # double 1.4662679999999999
	.quad	0x40079e468cac4b4d              # double 2.952283
	.quad	0x3ff403eb7cbb3c82              # double 1.2509570000000001
	.quad	0x402232e1049235f8              # double 9.0993729999999999
	.quad	0x4023b116a8b8f14e              # double 9.8458760000000005
	.quad	0x40209313165d3997              # double 8.287255
	.quad	0x401602602c9081c3              # double 5.5023200000000001
	.quad	0x4021f46759ab6d01              # double 8.9773510000000005
	.quad	0x40136f5d35653c9b              # double 4.8587540000000002
	.quad	0x3ffd357e670e2c13              # double 1.8255600000000001
	.quad	0x4023dd4152b0a6fc              # double 9.9321389999999993
	.quad	0x3ff253953dea465a              # double 1.1454059999999999
	.quad	0x4021f5cf67b1c001              # double 8.9800979999999999
	.quad	0x401aaf7121ab4b73              # double 6.6713300000000002
	.quad	0x400119ed7c6fbd27              # double 2.1376599999999999
	.quad	0x40119ea8112ba16e              # double 4.4049379999999996
	.quad	0x401798893b7d8490              # double 5.8989609999999999
	.quad	0x401d22fd75e2046c              # double 7.2841699999999996
	.quad	0x4012bff8ec0f8833              # double 4.6874729999999998
	.quad	0x401c06d82ba5a038              # double 7.0066839999999999
	.quad	0x401f7baba7b9170d              # double 7.8707719999999996
	.quad	0x40166523b3636f3b              # double 5.5987689999999999
	.quad	0x4000f930be0ded29              # double 2.1216750000000002
	.quad	0x3fd6387160956c0d              # double 0.34719499999999998
	.quad	0x4007311ada76d97b              # double 2.8989769999999999
	.quad	0x4021689d6adf71eb              # double 8.704326
	.quad	0x401ed60913a4f872              # double 7.7090189999999996
	.quad	0x3ff73193f6c2699c              # double 1.4496039999999999
	.quad	0x3fe5ed84d338f798              # double 0.68524399999999996
	.quad	0x401a022813448063              # double 6.5021060000000004
	.quad	0x400983382e44b6e9              # double 3.1890719999999999
	.quad	0x40131f48c2e770bd              # double 4.780551
	.quad	0x4019a0010c6f7a0b              # double 6.4062539999999997
	.quad	0x400992990f301eac              # double 3.1965810000000001
	.quad	0x40029cc1871e6cd3              # double 2.3265410000000002
	.quad	0x40012b7dc7abfb9c              # double 2.146236
	.quad	0x4014e014b599aa61              # double 5.2188290000000004
	.quad	0x401ec3d6c7219221              # double 7.691249
	.quad	0x402126b4c7f34938              # double 8.5755979999999994
	.quad	0x401074abe6a337a8              # double 4.113937
	.quad	0x401153cf70153bd1              # double 4.3318459999999996
	.quad	0x4019a8869c66d374              # double 6.4145760000000003
	.quad	0x40105d438d1d8a55              # double 4.0910780000000004
	.quad	0x40084084a515ce9e              # double 3.0315029999999998
	.quad	0x4023f61672324c83              # double 9.9806399999999992
	.quad	0x3fd314ca925fe975              # double 0.29814400000000002
	.quad	0x3ffe732acfb762d8              # double 1.9031169999999999
	.quad	0x3fe7fd9dba908a26              # double 0.74970899999999996
	.quad	0x401a08a6dacabc51              # double 6.5084489999999997
	.quad	0x40206eb52c9d16fd              # double 8.2162260000000007
	.quad	0x400e45d4a5df223a              # double 3.784097
	.quad	0x3fe69b994e1a3f46              # double 0.70649399999999996
	.quad	0x40154d15f02c4d66              # double 5.3252790000000001
	.quad	0x3fe522749f0e4da1              # double 0.66045600000000004
	.quad	0x3fe49a7e30878748              # double 0.64385899999999996
	.quad	0x4021b33e35c5b4ab              # double 8.8500840000000007
	.quad	0x40203dcdf6987831              # double 8.1207119999999993
	.quad	0x401b76ba0620ab71              # double 6.8659439999999998
	.quad	0x400e463d816aceab              # double 3.784297
	.quad	0x400e3bfc6540cc79              # double 3.77929
	.quad	0x3fdbe3eaf6837f7c              # double 0.43578600000000001
	.quad	0x3ff57c2656abde40              # double 1.3428100000000001
	.quad	0x3fb3a604e1e71045              # double 0.076752000000000001
	.quad	0x3fadc31593e5fb72              # double 0.058129
	.quad	0x4021697ebaf10236              # double 8.7060449999999996
	.quad	0x3fe964430b178b37              # double 0.793489
	.quad	0x4000919ef954eb14              # double 2.0711040000000001
	.quad	0x401ceec8d5c74752              # double 7.2331880000000002
	.quad	0x401996052502eec8              # double 6.3965040000000002
	.quad	0x400aaef34d6a161e              # double 3.3354249999999999
	.quad	0x4013038151a43782              # double 4.7534229999999997
	.quad	0x4018b6eac8605682              # double 6.1786300000000001
	.quad	0x4017c9ecb31c219f              # double 5.9471920000000003
	.quad	0x40193043e5321e60              # double 6.2971339999999998
	.quad	0x401d4c16df3f9618              # double 7.3243059999999999
	.quad	0x40191d2630ec3116              # double 6.2784659999999999
	.quad	0x4008615b9a5a89b9              # double 3.0475379999999999
	.quad	0x401a3046412cf0fa              # double 6.5471430000000002
	.quad	0x4022082a9930be0e              # double 9.0159500000000001
	.quad	0x4020afbeb9e492bc              # double 8.3432519999999996
	.quad	0x401390fcf80dc337              # double 4.8915899999999999
	.quad	0x401b811233df2a9d              # double 6.8760459999999997
	.quad	0x4018adc69f8c21e2              # double 6.1697030000000002
	.quad	0x4022d1fe86833c60              # double 9.410145
	.quad	0x401746798958d9b6              # double 5.8188230000000001
	.quad	0x40070a9691a75cd1              # double 2.8801700000000001
	.quad	0x400769b6b2af1455              # double 2.9266179999999999
	.quad	0x4016a755ffe6d58d              # double 5.6634140000000004
	.quad	0x401eebdd334c5da7              # double 7.7303360000000003
	.quad	0x4001323033a4723b              # double 2.1495060000000001
	.quad	0x4010f0d349be8ff3              # double 4.2351809999999999
	.quad	0x4000d074213a0c6b              # double 2.1017839999999999
	.quad	0x401f513986338b48              # double 7.8293210000000001
	.quad	0x4020c2f35e310dbf              # double 8.380763
	.quad	0x401bf3eccc469510              # double 6.9882080000000002
	.quad	0x401921a2e7f6f4bf              # double 6.2828480000000004
	.quad	0x4006cef0ae536502              # double 2.8510450000000001
	.quad	0x4010ba1a0cf1800a              # double 4.1817399999999996
	.quad	0x4015630caa326e11              # double 5.3467279999999997
	.quad	0x401e5c18b502abac              # double 7.5899380000000001
	.quad	0x400e6213a0c6b485              # double 3.7978890000000001
	.quad	0x4022c75cf2495e18              # double 9.3893810000000001
	.quad	0x4022f4e89656eefa              # double 9.4783369999999998
	.quad	0x400ce9be8ff327aa              # double 3.6141329999999998
	.quad	0x40229898d477bbf9              # double 9.2980409999999996
	.quad	0x4016124638c97529              # double 5.5178459999999996
	.quad	0x40214c5f17bd8be7              # double 8.6491629999999997
	.quad	0x40124e4de3b8a19d              # double 4.5764690000000003
	.quad	0x401b2342edbb59de              # double 6.7844350000000002
	.quad	0x402309a415f45e0b              # double 9.5188299999999994
	.quad	0x402346c8f7553693              # double 9.6382519999999995
	.quad	0x401d4096feb4a665              # double 7.3130759999999997
	.quad	0x400bc0f238972043              # double 3.4692120000000002
	.quad	0x400a369014b599aa              # double 3.2766419999999998
	.quad	0x3ff9f018611fd588              # double 1.6211169999999999
	.quad	0x4016a282c6ef3d3a              # double 5.6587019999999999
	.quad	0x3ffcfd987c6327ee              # double 1.8119130000000001
	.quad	0x3ff4693f290abb45              # double 1.275695
	.quad	0x4009b170d62bf120              # double 3.2116410000000002
	.quad	0x4019aa0407cc7d1c              # double 6.4160310000000003
	.quad	0x3ff2694680171194              # double 1.1507019999999999
	.quad	0x3ff6dbeb18116ebd              # double 1.4286909999999999
	.quad	0x4014815d701d9f4d              # double 5.1263329999999998
	.quad	0x401324b662fdfc1a              # double 4.7858520000000002
	.quad	0x4007ad63cb817332              # double 2.9596629999999999
	.quad	0x402249709310129d              # double 9.1434370000000005
	.quad	0x40223e81450efdca              # double 9.1220800000000004
	.quad	0x401de5f9df548ece              # double 7.4745860000000004
	.quad	0x401f4f166e008e9b              # double 7.8272339999999998
	.quad	0x4023f382c2bd7f52              # double 9.9756070000000001
	.quad	0x4002d1c75818c5ca              # double 2.3524310000000002
	.quad	0x40225ad85dfa871a              # double 9.1774319999999996
	.quad	0x4015deef5ec80c74              # double 5.4677100000000003
	.quad	0x40235e1e92923e5c              # double 9.6838270000000008
	.quad	0x4014845e9185cee1              # double 5.1292669999999996
	.quad	0x4002ace9a2c66905              # double 2.3344299999999998
	.quad	0x40229a3b9ae0c176              # double 9.3012359999999994
	.quad	0x401bfd4024b33db0              # double 6.9973150000000004
	.quad	0x400f4614163779ea              # double 3.9092180000000001
	.quad	0x3fed0055fbb517a4              # double 0.90629099999999995
	.quad	0x401bdc2699c7bcc3              # double 6.9649910000000004
	.quad	0x40227c3393ab430f              # double 9.2425809999999995
	.quad	0x3ff3ea60913a4f87              # double 1.244721
	.quad	0x4023138476f2a5a4              # double 9.5381199999999992
	.quad	0x3fe5e846a5d6bebe              # double 0.68460399999999999
	.quad	0x3fe9823a6ce3582a              # double 0.79714700000000005
	.quad	0x401e4682b6284599              # double 7.5688579999999996
	.quad	0x4020121272c94b38              # double 8.0352969999999999
	.quad	0x4021e8a2877ee4e2              # double 8.9543649999999992
	.quad	0x40162d66f0cfe154              # double 5.5443379999999998
	.quad	0x402090ce4ead0c3d              # double 8.2828239999999997
	.quad	0x401ba3ffef39085f              # double 6.9101559999999997
	.quad	0x40041fbd6a593a2e              # double 2.515498
	.quad	0x40237f5ec80c73ac              # double 9.7487700000000003
	.quad	0x402197763e4abe6a              # double 8.7958239999999996
	.quad	0x400bde542e557de1              # double 3.4835590000000001
	.quad	0x401da2aa19439de5              # double 7.4088520000000004
	.quad	0x40214270d1fa3337              # double 8.6297669999999993
	.quad	0x402133506dd69d30              # double 8.6002229999999997
	.quad	0x401979ba5e353f7d              # double 6.3688750000000001
	.quad	0x40238489d27c3937              # double 9.7588640000000008
	.quad	0x4023c4ed0b30b5aa              # double 9.8846209999999992
	.quad	0x3ffee427c7c5260f              # double 1.9307019999999999
	.quad	0x4002a09dcf893faf              # double 2.3284259999999999
	.quad	0x401c6d6c72192210              # double 7.106859
	.quad	0x401f53a5c1c6088d              # double 7.8316869999999996
	.quad	0x40149ce5f7403dde              # double 5.1532210000000003
	.quad	0x401f61b60ae9680e              # double 7.845421
	.quad	0x3ff8c0bfe3b03e21              # double 1.547058
	.quad	0x4004886e7e62dc6e              # double 2.5666169999999999
	.quad	0x400bdb2f661f18ca              # double 3.482024
	.quad	0x3fd15460aa64c2f8              # double 0.27077499999999999
	.quad	0x40023f2d3c792d13              # double 2.2808480000000002
	.quad	0x401d87460242d05f              # double 7.3821029999999999
	.quad	0x3ff99f080303c07f              # double 1.601326
	.quad	0x4018107bbb62413e              # double 6.0160970000000002
	.quad	0x401546ededaec4a4              # double 5.319267
	.quad	0x40125b7c7820a30e              # double 4.5893420000000003
	.quad	0x3fdb424e59296702              # double 0.42592200000000002
	.quad	0x401f4b1e18efbb0e              # double 7.8233569999999997
	.quad	0x401fb1287c200c0f              # double 7.9230059999999999
	.quad	0x40160ca9ac365450              # double 5.5123660000000001
	.quad	0x401b13baba7b9171              # double 6.7692670000000001
	.quad	0x400927d1bb4916ca              # double 3.1444429999999999
	.quad	0x401e17d77fae3609              # double 7.5232830000000001
	.quad	0x3ff49c8b86b15f89              # double 1.288219
	.quad	0x4008077d523b3637              # double 3.003657
	.quad	0x4011014f0520d131              # double 4.2512780000000001
	.quad	0x3feadb573eab367a              # double 0.83927499999999999
	.quad	0x400b3cd91eeaa6d2              # double 3.4047109999999998
	.quad	0x401b8fe2e6ea8544              # double 6.8905139999999996
	.quad	0x40138c9752977c89              # double 4.8872960000000001
	.quad	0x4015f6177ea1c68f              # double 5.4903240000000002
	.quad	0x3ffd6e6644d87725              # double 1.839453
	.quad	0x4015bd0d49949e88              # double 5.4346209999999999
	.quad	0x4011bcdf266ba494              # double 4.4344450000000002
	.quad	0x3feb60e736049ecb              # double 0.85557899999999998
	.quad	0x401e58240b780347              # double 7.5860750000000001
	.quad	0x40099ff8a8f3a9b0              # double 3.2031109999999998
	.quad	0x401509c065b63d3e              # double 5.2595229999999997
	.quad	0x401360c88a47ecff              # double 4.8445150000000003
	.quad	0x40138708ede54b49              # double 4.8818700000000002
	.quad	0x40180d04a2fcefaa              # double 6.0127129999999998
	.quad	0x401c2a3c21187e7c              # double 7.041245
	.quad	0x4012d17e34b94531              # double 4.7045830000000004
	.quad	0x4019c36a400fba88              # double 6.4408349999999999
	.quad	0x40210669ced0b30b              # double 8.5125259999999994
	.quad	0x3ff8549d7ba6698c              # double 1.5206580000000001
	.quad	0x4017ccf52b90a783              # double 5.9501540000000004
	.quad	0x400f00a2014727dd              # double 3.8753090000000001
	.quad	0x3ff543558a761028              # double 1.3289390000000001
	.quad	0x401dd6a26e547171              # double 7.4596039999999997
	.quad	0x4011312ec6bce853              # double 4.2980299999999998
	.quad	0x40081e2cdc011d36              # double 3.0147339999999998
	.quad	0x401abdd0d8cb07d1              # double 6.6853670000000003
	.quad	0x400ee33df2a9d628              # double 3.8609580000000001
	.quad	0x3fd4250b524399b3              # double 0.31476100000000001
	.quad	0x4016327e9531550d              # double 5.5493110000000003
	.quad	0x40217d37e2c55c96              # double 8.744567
	.quad	0x4022e54195cc857f              # double 9.4477659999999996
	.quad	0x402167cd03537197              # double 8.7027359999999998
	.quad	0x401d9cee9dd7ecbb              # double 7.4032539999999996
	.quad	0x401e3065f9591cd2              # double 7.5472640000000002
	.quad	0x3fed4dcca70d1fa3              # double 0.91574699999999998
	.quad	0x401024be835dedf2              # double 4.0358830000000001
	.quad	0x400f0f0cfe154435              # double 3.882349
	.quad	0x3fab3b320535c9e6              # double 0.053185999999999997
	.quad	0x40203034b0e1b4bb              # double 8.0941519999999993
	.quad	0x40229969a0ad8a11              # double 9.2996339999999993
	.quad	0x3ff44a7b4e54f7a9              # double 1.268184
	.quad	0x3fa6425aee631f8a              # double 0.043475
	.quad	0x401d5b890d5a5b96              # double 7.3393899999999999
	.quad	0x40132f4128bf3beb              # double 4.7961470000000004
	.quad	0x401a43c4b09e98dd              # double 6.5661800000000001
	.quad	0x401ba610f0e90bc8              # double 6.9121740000000003
	.quad	0x40071e0ef99806f2              # double 2.8896769999999998
	.quad	0x400d9869835158b8              # double 3.6994199999999999
	.quad	0x4016afd976ff3ade              # double 5.6717279999999999
	.quad	0x4014de86c6583e85              # double 5.2173109999999996
	.quad	0x4020604a515ce9e6              # double 8.1880670000000002
	.quad	0x40114f2e05ccc89b              # double 4.3273239999999999
	.quad	0x40202035158b8280              # double 8.0629050000000007
	.quad	0x3fed73929ed3953e              # double 0.92035800000000001
	.quad	0x401638c4bd33d295              # double 5.5554379999999997
	.quad	0x3fff51ec918e325d              # double 1.9575009999999999
	.quad	0x401dc79cc74b838c              # double 7.4449339999999999
	.quad	0x3ffd453e2d6238da              # double 1.8294049999999999
	.quad	0x40226571d1d4738a              # double 9.1981339999999996
	.quad	0x4003f894812be48a              # double 2.4963769999999998
	.quad	0x401169dece571088              # double 4.353389
	.quad	0x400bab4aec8d5c74              # double 3.4586389999999998
	.quad	0x4022aafad6cb5350              # double 9.3339449999999999
	.quad	0x4013d8fd9fd36f7e              # double 4.9619049999999998
	.quad	0x40138f648c7192ea              # double 4.8900319999999997
	.quad	0x402128efbb0e5e68              # double 8.5799540000000007
	.quad	0x3ffa27296f6512a9              # double 1.6345609999999999
	.quad	0x3fd54a558ea7ce10              # double 0.33266200000000001
	.quad	0x40070d362e903644              # double 2.8814510000000002
	.quad	0x400033c89f40a287              # double 2.0252849999999998
	.quad	0x402293675ddd2ae9              # double 9.2878980000000002
	.quad	0x400d83cfb3311a54              # double 3.6893609999999999
	.quad	0x4022227935760392              # double 9.0673309999999994
	.quad	0x3fb4405b39e279dd              # double 0.079106999999999997
	.quad	0x402342ff2a172abf              # double 9.6308530000000001
	.quad	0x40230271151611ba              # double 9.5047689999999996
	.quad	0x40213f0cdc8754f3              # double 8.6231449999999992
	.quad	0x4013cfc71d606317              # double 4.9529079999999999
	.quad	0x40216995aaf78fef              # double 8.7062200000000001
	.quad	0x4019cd8a116659d1              # double 6.4507219999999998
	.quad	0x3ff65f98b71b8aa0              # double 1.398339
	.quad	0x401163dccea28fe2              # double 4.3475219999999997
	.quad	0x402187b762d83c6d              # double 8.7650710000000007
	.quad	0x40010c11a11233df              # double 2.1308929999999999
	.quad	0x4019c56861e92924              # double 6.4427810000000001
	.quad	0x401b48d5410f94c8              # double 6.8211259999999996
	.quad	0x3fc19f666234a87e              # double 0.13767699999999999
	.quad	0x402326759ab6d00b              # double 9.5751159999999995
	.quad	0x402067e0ef99806f              # double 8.2028879999999997
	.quad	0x4010f923a29c779a              # double 4.2432999999999996
	.quad	0x3fa015c209246bf0              # double 0.031415999999999999
	.quad	0x4020d25f633ce63a              # double 8.4108839999999994
	.quad	0x401b9a32f4491299              # double 6.9005850000000004
	.quad	0x40137eae5bc87db3              # double 4.8737120000000003
	.quad	0x3ffb55cc857f3062              # double 1.708447
	.quad	0x4017e490e66cb103              # double 5.9732089999999998
	.quad	0x402058c23fab10ba              # double 8.1733569999999993
	.quad	0x40235b723ee1bd1f              # double 9.6786060000000002
	.quad	0x400fe5479d4d8341              # double 3.9869530000000002
	.quad	0x4020d588a04d1202              # double 8.4170580000000008
	.quad	0x4023a891c087442c              # double 9.8292369999999991
	.quad	0x401cde6afcce1c58              # double 7.2172049999999999
	.quad	0x3fd4e5a35d67ba23              # double 0.32651599999999997
	.quad	0x4020720bc382a130              # double 8.2227460000000008
	.quad	0x40011b20b8066c2b              # double 2.1382460000000001
	.quad	0x3fd7171e29b6b2af              # double 0.360786
	.quad	0x3fc25f0f5a1016ce              # double 0.14352599999999999
	.quad	0x40110875d56f32be              # double 4.2582620000000002
	.quad	0x4018609784ec636b              # double 6.094328
	.quad	0x401c4fe32a0663c7              # double 7.0780149999999997
	.quad	0x40234bfaf42784a9              # double 9.6483989999999995
	.quad	0x40185f8ec0f88334              # double 6.093318
	.quad	0x401f9fdb8fde2ef5              # double 7.9061110000000001
	.quad	0x3fff14bad7d7c2ca              # double 1.942561
	.quad	0x401ca3cd9a52263e              # double 7.1599640000000004
	.quad	0x4018d667f90d9d77              # double 6.2093809999999996
	.quad	0x3ffe7a3ec02f2f98              # double 1.9048449999999999
	.quad	0x401b22684cf0739b              # double 6.783601
	.quad	0x40092f1e4b44a1f1              # double 3.1480070000000002
	.quad	0x4022649ba5e353f8              # double 9.1965000000000003
	.quad	0x401c541b328b6d87              # double 7.0821350000000001
	.quad	0x401cf472c0e7bc3c              # double 7.2387189999999997
	.quad	0x4021a396073de1e3              # double 8.8195040000000002
	.quad	0x3ff04793dd97f62b              # double 1.0174749999999999
	.quad	0x401e5a0232096788              # double 7.5878990000000001
	.quad	0x402373cea6c1a049              # double 9.7261860000000002
	.quad	0x4002b62f9ca5bd94              # double 2.3389579999999999
	.quad	0x400e0dca8e2e2b8c              # double 3.7567339999999998
	.quad	0x4021d9934efcbd55              # double 8.9249519999999993
	.quad	0x400b64dca8e2e2b9              # double 3.4242490000000001
	.quad	0x40124dcd7060bb2c              # double 4.5759790000000002
	.quad	0x4012f830a0b1bbcf              # double 4.7423729999999997
	.quad	0x4022fb5dcc63f141              # double 9.4909499999999997
	.quad	0x4011f930be0ded29              # double 4.4933500000000004
	.quad	0x3ff0101f31f46ed2              # double 1.0039359999999999
	.quad	0x4020d93af74cd317              # double 8.4242779999999993
	.quad	0x400844b3c3e74afd              # double 3.0335459999999999
	.quad	0x400643d68405b39e              # double 2.7831239999999999
	.quad	0x401d85aaf78feef6              # double 7.3805350000000001
	.quad	0x4022fccb5bb384fd              # double 9.4937389999999997
	.quad	0x3fe81aa60913a4f8              # double 0.75325299999999995
	.quad	0x3fa9fa97e132b55f              # double 0.05074
	.quad	0x400df77186551937              # double 3.745822
	.quad	0x4022958622c45027              # double 9.2920390000000008
	.quad	0x4022b41205bc01a3              # double 9.3516999999999992
	.quad	0x400d83ef284167a9              # double 3.6894209999999998
	.quad	0x4017bff3ade225fa              # double 5.9374529999999996
	.quad	0x3fc2a2e3c536d656              # double 0.145596
	.quad	0x40062aeea63b688c              # double 2.7709630000000001
	.quad	0x40002920c069e7fb              # double 2.0200819999999999
	.quad	0x3f8d08d4bad7d7c3              # double 0.014177
	.quad	0x40103378ab0c88a4              # double 4.0502649999999996
	.quad	0x4020034070329803              # double 8.0063510000000004
	.quad	0x401d469a91105e1c              # double 7.3189489999999999
	.quad	0x4010647bedb72820              # double 4.0981290000000001
	.quad	0x3ff498aa8650e779              # double 1.287272
	.quad	0x3ff30816f0068db9              # double 1.1894750000000001
	.quad	0x401d92923e5b8562              # double 7.3931360000000002
	.quad	0x3fb470fbeb9e492c              # double 0.079849000000000003
	.quad	0x402249c432ca57a8              # double 9.1440750000000008
	.quad	0x401267f0aa21a71a              # double 4.6015040000000003
	.quad	0x401c0eb28d8665e0              # double 7.0143529999999998
	.quad	0x400c32e946801712              # double 3.5248590000000002
	.quad	0x40165ada33bd9cae              # double 5.5887229999999999
	.quad	0x4023695aaf78feef              # double 9.7057699999999993
	.quad	0x4022bb256ffc115e              # double 9.3655200000000001
	.quad	0x401c737154003255              # double 7.1127370000000001
	.quad	0x401a275360d02470              # double 6.5384039999999999
	.quad	0x3ff26db2f661f18d              # double 1.1517820000000001
	.quad	0x3fc7c7ef177a7009              # double 0.18578900000000001
	.quad	0x401e1e3b46fdeb53              # double 7.5295230000000001
	.quad	0x3fffdd72367e414e              # double 1.9915639999999999
	.quad	0x40154f383f0bae8a              # double 5.3273630000000001
	.quad	0x40093989df1172ef              # double 3.153095
	.quad	0x401c931ceaf251c2              # double 7.1436650000000004
	.quad	0x401b07aaef2c7326              # double 6.7574880000000004
	.quad	0x40030b93ccd0fe8b              # double 2.3806530000000001
	.quad	0x401de2d77318fc50              # double 7.4715249999999997
	.quad	0x4010f9d40ee06d94              # double 4.2439730000000004
	.quad	0x3fff519157abb880              # double 1.957414
	.quad	0x3ff7642070b8cfc0              # double 1.4619450000000001
	.quad	0x4009be586013660e              # double 3.2179419999999999
	.quad	0x4021a5c7abfb9bed              # double 8.8237889999999997
	.quad	0x400da6f36ef80560              # double 3.7065190000000001
	.quad	0x40171d68405b39e2              # double 5.7787179999999996
	.quad	0x401cb05b7cfe5860              # double 7.1722239999999999
	.quad	0x401f94eebf65dbfd              # double 7.895442
	.quad	0x4023f29d40ee06d9              # double 9.9738559999999996
	.quad	0x4011f1a21ea35936              # double 4.48597
	.quad	0x3fce4febd09e12a5              # double 0.236814
	.quad	0x4021f06d2ed783e0              # double 8.9695830000000001
	.quad	0x40195d9b1b79d90a              # double 6.341412
	.quad	0x4018d917939a7c18              # double 6.2120040000000003
	.quad	0x4001581626b2f230              # double 2.1680109999999999
	.quad	0x40125490e66cb103              # double 4.5825839999999998
	.quad	0x4022b64628027d89              # double 9.3560040000000004
	.quad	0x3ff8e5c0b9991362              # double 1.556092
	.quad	0x401a5c7192ea52f0              # double 6.5902770000000004
	.quad	0x401d73cc07aaef2c              # double 7.3630829999999996
	.quad	0x3ffbbc408d8ec95c              # double 1.73346
	.quad	0x400ada5ebb7739f3              # double 3.3566259999999999
	.quad	0x3ff74be0ded288ce              # double 1.4560249999999999
	.quad	0x40177fd00713f078              # double 5.8748170000000002
	.quad	0x40104d27807789a4              # double 4.0753459999999997
	.quad	0x3ff3d270b06c43f6              # double 1.238877
	.quad	0x4012ab8348f53c58              # double 4.6674930000000003
	.quad	0x400693d4280ae105              # double 2.8221820000000002
	.quad	0x4021a5b7281fd9ba              # double 8.8236629999999998
	.quad	0x401b252e72da1230              # double 6.7863100000000003
	.quad	0x3ff0e8f8e7ddca4b              # double 1.056878
	.quad	0x40128e1719f7f8cb              # double 4.6387600000000004
	.quad	0x3ffd144aa53fc009              # double 1.8174539999999999
	.quad	0x401e2a89b951c5c5              # double 7.5415409999999996
	.quad	0x4020e70cdc8754f3              # double 8.4512699999999992
	.quad	0x3ff5aaad1d041cc5              # double 1.354169
	.quad	0x3ff1c70eb24a6a87              # double 1.1110979999999999
	.quad	0x3feaf9bdc69f8c22              # double 0.84298600000000001
	.quad	0x4005888509bf9c63              # double 2.6916600000000002
	.quad	0x401346c2efd438d2              # double 4.8191030000000001
	.quad	0x401cf85cee17a030              # double 7.2425420000000003
	.quad	0x3ffab2c1f42bb667              # double 1.668642
	.quad	0x4023e395c4220360              # double 9.944502
	.quad	0x4021dc59b8023a6d              # double 8.9303720000000002
	.quad	0x4014b47cb70ac3a8              # double 5.1762569999999997
	.quad	0x400cfc2656abde40              # double 3.6231200000000001
	.quad	0x3fef8c8472c0e7bc              # double 0.98590299999999997
	.quad	0x401436a11ec918e3              # double 5.0533489999999999
	.quad	0x4005f89efd86a8fc              # double 2.746397
	.quad	0x40165e4649906cca              # double 5.5920649999999998
	.quad	0x400260c8472c0e7c              # double 2.2972570000000001
	.quad	0x400949db65ecc3e3              # double 3.161063
	.quad	0x4022137ae5796bfd              # double 9.0380470000000006
	.quad	0x4020d0a548238540              # double 8.4075109999999995
	.quad	0x40174ed288ce703b              # double 5.826975
	.quad	0x3fc9346994185059              # double 0.196912
	.quad	0x4008b50fc71d6063              # double 3.088409
	.quad	0x3feae06d938151a4              # double 0.83989599999999997
	.quad	0x40109275ab7dc7ac              # double 4.143027
	.quad	0x400106b053198288              # double 2.128266
	.quad	0x3ffbc07570c564f9              # double 1.7344869999999999
	.quad	0x401f937824d4cb9f              # double 7.8940130000000001
	.quad	0x4018a8c36da87a07              # double 6.1648079999999998
	.quad	0x401893c9eecbfb16              # double 6.1443250000000003
	.quad	0x3fdae06961c36977              # double 0.41994700000000001
	.quad	0x3ffeee297396d091              # double 1.9331449999999999
	.quad	0x3ffe0061847f5621              # double 1.8750929999999999
	.quad	0x400115f5f0b28523              # double 2.135723
	.quad	0x4019bfa5d28d002e              # double 6.4371559999999999
	.quad	0x401fa29068986fce              # double 7.9087540000000001
	.quad	0x400ce9d40ee06d94              # double 3.6141740000000002
	.quad	0x401366950fc71d60              # double 4.8501779999999997
	.quad	0x3ff0fadf2ecf2064              # double 1.061248
	.quad	0x400499ff4fd6d7e9              # double 2.5751940000000002
	.quad	0x40171c61d8622c45              # double 5.777717
	.quad	0x401341be2b4959e6              # double 4.8142019999999999
	.quad	0x4020a7c957cd466f              # double 8.3277079999999994
	.quad	0x3fedd4a5df2239e7              # double 0.93220800000000004
	.quad	0x3ff7bb02d59d55e7              # double 1.4831570000000001
	.quad	0x401c9ad03d9a9542              # double 7.1511849999999999
	.quad	0x4013d25b749adc90              # double 4.9554270000000002
	.quad	0x3ffdb1422ccb3a26              # double 1.8557760000000001
	.quad	0x3fe23bfb58d1526e              # double 0.56982200000000005
	.quad	0x4021f93986338b48              # double 8.9867670000000004
	.quad	0x401de597d49d7ba6              # double 7.4742119999999996
	.quad	0x4011ceee0f3cb3e5              # double 4.4520799999999996
	.quad	0x3fc35a3a08398a65              # double 0.15119099999999999
	.quad	0x401963708aac96cc              # double 6.3471089999999997
	.quad	0x4019895c853c1483              # double 6.3841419999999998
	.quad	0x400415568e820e63              # double 2.5104190000000002
	.quad	0x3ff9e604e1e71045              # double 1.618657
	.quad	0x401a71144cbe1eb4              # double 6.6104289999999999
	.quad	0x3ffac346dc5d6388              # double 1.6726749999999999
	.quad	0x4018b039ef0f16f4              # double 6.1720959999999998
	.quad	0x4012b48b220791c5              # double 4.6763120000000002
	.quad	0x3ff0d0e8858ff759              # double 1.0510029999999999
	.quad	0x40063740c4156e26              # double 2.7769789999999999
	.quad	0x401154af4f0d844d              # double 4.3327
	.quad	0x4002a6d8b1dd5d3e              # double 2.3314680000000001
	.quad	0x400667e38eb0318c              # double 2.8007270000000002
	.quad	0x40107e43ed959a31              # double 4.1233060000000004
	.quad	0x402262a582dbe7f3              # double 9.1926690000000004
	.quad	0x4023c398a65492ff              # double 9.8820239999999994
	.quad	0x4015a107b784662c              # double 5.4072560000000003
	.quad	0x4019a82f944241c4              # double 6.4142440000000001
	.quad	0x4023c4493426783a              # double 9.8833710000000004
	.quad	0x4023e138fffbce42              # double 9.9398879999999998
	.quad	0x40067f25e56cd6c3              # double 2.812084
	.quad	0x3ffcc04a72ead927              # double 1.7969459999999999
	.quad	0x402394d8ba40d90e              # double 9.7907159999999998
	.quad	0x400216073de1e2df              # double 2.2607560000000002
	.quad	0x400b7e5321e603d5              # double 3.4366819999999998
	.quad	0x4019f36b8f9b1316              # double 6.4877149999999997
	.quad	0x4011a3f0bae89eba              # double 4.4100979999999996
	.quad	0x4018fe047d3d4281              # double 6.2480640000000003
	.quad	0x4022b8507a6bd6e9              # double 9.3599890000000005
	.quad	0x4019e6bdf4c2b51c              # double 6.4753340000000001
	.quad	0x4014442d8c2a454e              # double 5.0665800000000001
	.quad	0x3fe30711d798d8a9              # double 0.59461299999999995
	.quad	0x40239f69a91105e2              # double 9.8113530000000004
	.quad	0x3fce72f33ca31e7e              # double 0.23788300000000001
	.quad	0x4020d6c17ebaf102              # double 8.4194449999999996
	.quad	0x400c3d3d4280ae10              # double 3.5299019999999999
	.quad	0x401eb20ff540895d              # double 7.6738889999999999
	.quad	0x401fe3d96638433d              # double 7.9725089999999996
	.quad	0x400e907c84b5dcc6              # double 3.8205499999999999
	.quad	0x401f2af20ea5b531              # double 7.7919390000000001
	.quad	0x3feabd48cb4aec8d              # double 0.83560599999999996
	.quad	0x402136cd29131ec1              # double 8.6070340000000005
	.quad	0x401ecc297bfa4c62              # double 7.6993770000000001
	.quad	0x4018909dcf893faf              # double 6.1412269999999998
	.quad	0x400ba40420f6f08d              # double 3.4550860000000001
	.quad	0x401326b4c7f34938              # double 4.7877989999999997
	.quad	0x40217a2af5771002              # double 8.7386090000000003
	.quad	0x4021317b7414a4d3              # double 8.5966450000000005
	.quad	0x4018b636f3b213e4              # double 6.1779440000000001
	.quad	0x3fe73aecd07852f8              # double 0.725943
	.quad	0x40008c093d966384              # double 2.0683769999999999
	.quad	0x40218851eb851eb8              # double 8.7662499999999994
	.quad	0x401cdb5286b59147              # double 7.2141820000000001
	.quad	0x40176436fc158fb4              # double 5.8478659999999998
	.quad	0x401b804f6dfc5cdd              # double 6.8753029999999997
	.quad	0x4001167903211cb0              # double 2.1359729999999999
	.quad	0x401d6c725c3dee78              # double 7.3559049999999999
	.quad	0x401b92328f9f44d4              # double 6.8927709999999998
	.quad	0x402199e3864cb5bb              # double 8.8005639999999996
	.quad	0x3fe068a0d349be90              # double 0.51277200000000001
	.quad	0x401557fcb923a29c              # double 5.3359249999999996
	.quad	0x401e197891e21533              # double 7.5248739999999996
	.quad	0x4014bebdd334c5da              # double 5.1862709999999996
	.quad	0x400b7e279dd3bafe              # double 3.4365990000000002
	.quad	0x40224db0bbf50e34              # double 9.1517389999999991
	.quad	0x4018fc3b4f616723              # double 6.2463199999999999
	.quad	0x40089d66adb402d1              # double 3.0768559999999998
	.quad	0x401fe341e14bdfd2              # double 7.9719309999999997
	.quad	0x4022ad783dff3f10              # double 9.3388080000000002
	.quad	0x401daa48f96e1587              # double 7.4162939999999997
	.quad	0x400cb347a5b0ff11              # double 3.587539
	.quad	0x40005fe974a3400c              # double 2.0468320000000002
	.quad	0x401098b934699418              # double 4.1491439999999997
	.quad	0x4023b5393250b524              # double 9.8539519999999996
	.quad	0x3ffe366e86c6583f              # double 1.8882890000000001
	.quad	0x401fb05d95dd4c77              # double 7.9222320000000001
	.quad	0x4019d9b30728e92d              # double 6.4625969999999997
	.quad	0x401590642396073e              # double 5.3910070000000001
	.quad	0x400572934acaff6d              # double 2.6809449999999999
	.quad	0x4018d436fc158fb4              # double 6.2072409999999998
	.quad	0x401ed7d9dba908a2              # double 7.7107919999999996
	.quad	0x3fd18bda9435ac8a              # double 0.27416099999999999
	.quad	0x4017ad74d594f26b              # double 5.9193910000000001
	.quad	0x40126b1960fa15db              # double 4.6045889999999998
	.quad	0x40174113404ea4a9              # double 5.8135500000000002
	.quad	0x3feabc21187e7c07              # double 0.83546500000000001
	.quad	0x3ffe87b890d5a5b9              # double 1.9081349999999999
	.quad	0x3ffb9c422036006d              # double 1.725649
	.quad	0x40141b456b441bb9              # double 5.0266320000000002
	.quad	0x4020125a250f8402              # double 8.0358440000000009
	.quad	0x4001b457c0b13598              # double 2.2130580000000002
	.quad	0x40008fe3f359ff50              # double 2.0702590000000001
	.quad	0x4007c77574f722e2              # double 2.9723920000000001
	.quad	0x4020dbffac1d29dc              # double 8.4296849999999992
	.quad	0x3fe044ed6fda836f              # double 0.50841400000000003
	.quad	0x40124379314445aa              # double 4.5658919999999998
	.quad	0x40139593e5fb71fc              # double 4.8960720000000002
	.quad	0x4020b47c957cd467              # double 8.3525130000000001
	.quad	0x400abc9abb01c92e              # double 3.3420920000000001
	.quad	0x40227e3d816aceab              # double 9.2465630000000001
	.quad	0x4011456f32bdc26e              # double 4.3178070000000002
	.quad	0x40045b2b3461309c              # double 2.5445159999999998
	.quad	0x401efc957cd466f5              # double 7.7466639999999999
	.quad	0x4017088b11409a24              # double 5.758343
	.quad	0x400dd9fcb0c026cc              # double 3.731439
	.quad	0x3fccfbd273d5bab2              # double 0.226435
	.quad	0x3ff52da98676a726              # double 1.3236479999999999
	.quad	0x4023e41fa7653437              # double 9.9455539999999995
	.quad	0x4016837bd05af6c7              # double 5.6284020000000003
	.quad	0x4000a65f0f5a1017              # double 2.0812360000000001
	.quad	0x401a9c8472c0e7bc              # double 6.6528489999999998
	.quad	0x401da997c3d68406              # double 7.4156180000000003
	.quad	0x4021fd8a76102795              # double 8.9951969999999992
	.quad	0x401fadfa871a3b15              # double 7.9199010000000003
	.quad	0x401810b0af5fd47c              # double 6.0162990000000001
	.quad	0x4020e0e8427418d7              # double 8.4392720000000008
	.quad	0x3fffdb4edb2f661f              # double 1.991042
	.quad	0x4018b84fd2a62aa2              # double 6.1799920000000004
	.quad	0x401fee7e62dc6e2b              # double 7.9829040000000004
	.quad	0x4015144c7b02d59d              # double 5.2698229999999997
	.quad	0x400205ccc89b0ee5              # double 2.2528320000000002
	.quad	0x400c4265f0f5a101              # double 3.5324209999999998
	.quad	0x400360d23d4f15e8              # double 2.4222760000000001
	.quad	0x401a747e8ccdd93c              # double 6.6137639999999998
	.quad	0x400917e45803cd14              # double 3.136666
	.quad	0x402321d2178f68be              # double 9.5660559999999997
	.quad	0x4013a8958d9b5e96              # double 4.9146330000000003
	.quad	0x3ff01042d8c2a455              # double 1.00397
	.quad	0x4009b6dfc5cdd50b              # double 3.2142940000000002
	.quad	0x401e7246bf01322f              # double 7.6115979999999998
	.quad	0x40176027d88c1db0              # double 5.8439019999999999
	.quad	0x4008b035371971c1              # double 3.086039
	.quad	0x401caa697aeddce8              # double 7.1664180000000002
	.quad	0x401ff96e58a32f45              # double 7.9935850000000003
	.quad	0x4021048de2ac3223              # double 8.5088950000000008
	.quad	0x40234cbe40420f6f              # double 9.6498889999999999
	.quad	0x40142738a3b57c4e              # double 5.0383019999999998
	.quad	0x401f5368ad688377              # double 7.8314539999999999
	.quad	0x401f7a3c64345cff              # double 7.8693710000000001
	.quad	0x4008e4c48adeebb3              # double 3.1117029999999999
	.quad	0x40207655c0fcb4f2              # double 8.2311230000000002
	.quad	0x3ff3b2cb641700ce              # double 1.2311510000000001
	.quad	0x400a9be9856a37ac              # double 3.3261289999999999
	.quad	0x401809a2c669057d              # double 6.0094099999999999
	.quad	0x4015c4dec1c1d6d0              # double 5.4422560000000004
	.quad	0x4023c789613d31ba              # double 9.8897200000000005
	.quad	0x400a5c72e275ab7e              # double 3.2951410000000001
	.quad	0x4016bdc55000c954              # double 5.6853230000000003
	.quad	0x4003b074213a0c6b              # double 2.4611589999999999
	.quad	0x400acbc1eff9f87f              # double 3.349491
	.quad	0x4023c3037d63022e              # double 9.8808860000000003
	.quad	0x401df2231832fcad              # double 7.4864620000000003
	.quad	0x4021b9ef73c0c1fd              # double 8.8631550000000008
	.quad	0x4017c02e6644d877              # double 5.9376769999999999
	.quad	0x4003ea6ca03c4b0a              # double 2.489465
	.quad	0x4010222036006d0d              # double 4.0333259999999997
	.quad	0x4022a1c3ac929aa2              # double 9.3159460000000003
	.quad	0x4023a5f761cbccf3              # double 9.8241530000000008
	.quad	0x4004ba79fec99f1b              # double 2.5910530000000001
	.quad	0x40163485e3da2f8c              # double 5.5512920000000001
	.quad	0x4023ac2fe82517e7              # double 9.8363029999999991
	.quad	0x3fec1a027525460b              # double 0.87817500000000004
	.quad	0x3fda074213a0c6b5              # double 0.40669300000000003
	.quad	0x3fe731a2a4db163c              # double 0.72480900000000004
	.quad	0x4010a75a74c09c3d              # double 4.1634310000000001
	.quad	0x401e7100e6afcce2              # double 7.6103550000000002
	.quad	0x401f6a0a958537e3              # double 7.8535560000000002
	.quad	0x400ca3be6601bc99              # double 3.5799530000000002
	.quad	0x3fd5806290eed02d              # double 0.33596100000000001
	.quad	0x402092ccb3a2595c              # double 8.2867180000000004
	.quad	0x400b27d1351159c5              # double 3.3944420000000002
	.quad	0x401f6c4dec1c1d6d              # double 7.855766
	.quad	0x401e6b430f49491f              # double 7.6047479999999998
	.quad	0x4017f2bf9830e3ce              # double 5.9870590000000004
	.quad	0x402195fe974a3401              # double 8.7929580000000005
	.quad	0x4003f4e4430b178b              # double 2.4945759999999999
	.quad	0x4016c2e0e30446b7              # double 5.6903110000000003
	.quad	0x401fa33f42352eb6              # double 7.909421
	.quad	0x4002d71eafee6fb5              # double 2.3550390000000001
	.quad	0x3fc4129cbab649d4              # double 0.15681800000000001
	.quad	0x4016116c61522a6f              # double 5.5170149999999998
	.quad	0x40194a821f2990f3              # double 6.322762
	.quad	0x401fbeb399f5dfec              # double 7.9362320000000004
	.quad	0x4003716a055757d6              # double 2.4303780000000001
	.quad	0x402210e219652bd4              # double 9.0329750000000004
	.quad	0x401a1435efa615a9              # double 6.5197370000000001
	.quad	0x40029e35c5b4aa97              # double 2.327251
	.quad	0x40058b8bef8ceb35              # double 2.6931379999999998
	.quad	0x40151babead4f590              # double 5.2770229999999998
	.quad	0x400f4623d0bfa094              # double 3.9092479999999998
	.quad	0x400caa5482385404              # double 3.5831689999999998
	.quad	0x3ffddeabbcb1cc96              # double 1.8668629999999999
	.quad	0x4022dfe718a86d72              # double 9.4373100000000001
	.quad	0x4000f3d7d3910c2c              # double 2.1190639999999998
	.quad	0x40030138fffbce42              # double 2.375597
	.quad	0x400a43f3e0370cdd              # double 3.2831800000000002
	.quad	0x401d7a272862f599              # double 7.3692900000000003
	.quad	0x401d45b1c8648840              # double 7.3180610000000001
	.quad	0x401b4ba6efc371da              # double 6.8238789999999998
	.quad	0x4011a31fcd24e161              # double 4.4093010000000001
	.quad	0x400eeccf6be37de9              # double 3.8656299999999999
	.quad	0x401a14067cf1c326              # double 6.5195559999999997
	.quad	0x3fd4b65668c26139              # double 0.323629
	.quad	0x3fd4587d6f976790              # double 0.31790099999999999
	.quad	0x4023f60a41a261bf              # double 9.9805469999999996
	.quad	0x3f9534373f316e37              # double 0.020707
	.quad	0x4023d15dd4c76d11              # double 9.9089189999999991
	.quad	0x402162af35e310dc              # double 8.6927430000000001
	.quad	0x40183764adff822c              # double 6.0540950000000002
	.quad	0x4006f586ca89fc6e              # double 2.8698860000000002
	.quad	0x401cef1886df82b2              # double 7.233492
	.quad	0x4010ffec56d5cfab              # double 4.2499250000000002
	.quad	0x3ffb576bc1eff9f8              # double 1.7088429999999999
	.quad	0x4005cf9335d249e4              # double 2.7263549999999999
	.quad	0x3ffdfdfb0d51f81a              # double 1.8745069999999999
	.quad	0x401eaece5710880e              # double 7.6707090000000004
	.quad	0x40206afec56d5cfb              # double 8.2089750000000006
	.quad	0x3ffe387ad080b674              # double 1.8887890000000001
	.quad	0x4023f207d4e09785              # double 9.9727160000000001
	.quad	0x40105564f97edc7f              # double 4.0833930000000001
	.quad	0x401ffdf4c2b51bd6              # double 7.9980039999999999
	.quad	0x40213f0196d8f4f9              # double 8.6230589999999996
	.quad	0x4011031fcd24e161              # double 4.2530510000000001
	.quad	0x40126b2d4d4024b3              # double 4.6046649999999998
	.quad	0x400cc368f08461fa              # double 3.595415
	.quad	0x3feb9fc6da448494              # double 0.86325399999999996
	.quad	0x3ff0d3a0c6b484d7              # double 1.0516669999999999
	.quad	0x4022024a8c154c98              # double 9.0044749999999993
	.quad	0x401f6b65a9a80496              # double 7.8548799999999996
	.quad	0x400e20578e5c4eb5              # double 3.7657919999999998
	.quad	0x4007407e5a78f25a              # double 2.9064909999999999
	.quad	0x4001be5c0b999136              # double 2.2179489999999999
	.quad	0x401b5d1351159c49              # double 6.8408939999999996
	.quad	0x40101524bfd2e947              # double 4.0206480000000004
	.quad	0x3ff25bc98a222d51              # double 1.1474089999999999
	.quad	0x4022e0e2c12ad81b              # double 9.4392300000000002
	.quad	0x4021894812be48a6              # double 8.7681280000000008
	.quad	0x401fb9f94855da27              # double 7.9316149999999998
	.quad	0x4023230a6fc58ab9              # double 9.5684389999999996
	.quad	0x40152bacb4289119              # double 5.2926510000000002
	.quad	0x4022ee39f77292c5              # double 9.4652860000000007
	.quad	0x400b2db37c99ae92              # double 3.3973149999999999
	.quad	0x401bac6b484d76ab              # double 6.9183779999999997
	.quad	0x3feed48238540464              # double 0.96344099999999999
	.quad	0x401d3d4e4c942d49              # double 7.309869
	.quad	0x401fd8db8bac710d              # double 7.9617750000000002
	.quad	0x3ff46b7995ee136e              # double 1.2762389999999999
	.quad	0x40159d31337eb28e              # double 5.4035080000000004
	.quad	0x40029995ee136e72              # double 2.3249930000000001
	.quad	0x40203ab6ae7d566d              # double 8.1146750000000001
	.quad	0x400407863beec398              # double 2.5036740000000002
	.quad	0x4021883558a76102              # double 8.7660319999999992
	.quad	0x3ff57049a9973d9f              # double 1.339914
	.quad	0x402084488c60cbf3              # double 8.2583660000000005
	.quad	0x4019335a426bb55b              # double 6.3001490000000002
	.quad	0x402236d99cbee808              # double 9.1071290000000005
	.quad	0x401b5ae2541d8e86              # double 6.8387539999999998
	.quad	0x40206c96249a133c              # double 8.2120829999999997
	.quad	0x401855f3d7d3910c              # double 6.0839379999999998
	.quad	0x401fa439de481f54              # double 7.9103770000000004
	.quad	0x402398c197e56473              # double 9.7983519999999995
	.quad	0x3ff5e2f8bdec5f39              # double 1.3679129999999999
	.quad	0x4016cedaec4a4096              # double 5.702007
	.quad	0x401166234a87e38f              # double 4.3497440000000003
	.quad	0x401feb76f6d76252              # double 7.979946
	.quad	0x400a15c74751ce29              # double 3.260634
	.quad	0x3feade4c51116a8c              # double 0.83963600000000004
	.quad	0x4020df240fa9c12f              # double 8.4358219999999999
	.quad	0x401b3b068123810f              # double 6.8076420000000004
	.quad	0x400e382ba5a03819              # double 3.7774269999999999
	.quad	0x400996501e2584f5              # double 3.1983950000000001
	.quad	0x401ffc23315d701e              # double 7.9962280000000003
	.quad	0x4018c822ff08893b              # double 6.1954459999999996
	.quad	0x4006ba3875925354              # double 2.8409279999999999
	.quad	0x40171535c9e6687f              # double 5.7707129999999998
	.quad	0x401660b9dc2f405f              # double 5.5944589999999996
	.quad	0x3ff02aad1d041cc5              # double 1.010419
	.quad	0x401e9ef30a4e379b              # double 7.6552239999999995
	.quad	0x40103528283d35eb              # double 4.0519109999999996
	.quad	0x40059835158b8280              # double 2.6993200000000002
	.quad	0x40156f8ec0f88334              # double 5.358943
	.quad	0x401bdc486ad2dcb1              # double 6.9651199999999998
	.quad	0x4011abfad2999568              # double 4.4179490000000001
	.quad	0x40153f2f9873ffac              # double 5.3117049999999999
	.quad	0x4015e3d7d3910c2c              # double 5.4725029999999997
	.quad	0x3ff7f51ce28ed5f1              # double 1.497342
	.quad	0x3fd3c27a63736cdf              # double 0.30874499999999999
	.quad	0x40072f9c1f85d745              # double 2.898247
	.quad	0x401981a1db877ab3              # double 6.3765939999999999
	.quad	0x4008cdc443914f48              # double 3.1004719999999999
	.quad	0x40164b56b8737974              # double 5.5735729999999997
	.quad	0x401053947496aad2              # double 4.0816210000000002
	.quad	0x401a3267c6b8b695              # double 6.5492239999999997
	.quad	0x3ff4cabb44e50c5f              # double 1.2994950000000001
	.quad	0x4023930f49491f2e              # double 9.7872260000000004
	.quad	0x400265e2cdc011d3              # double 2.2997489999999998
	.quad	0x401b190f301eabbd              # double 6.7744720000000003
	.quad	0x400e29bd8383ad9f              # double 3.770381
	.quad	0x4008e012599ed7c7              # double 3.10941
	.quad	0x4009c30b9dc2f406              # double 3.220237
	.quad	0x401421c0010c6f7a              # double 5.032959
	.quad	0x401651eeaa6d2674              # double 5.580012
	.quad	0x4004e1919ac79703              # double 2.610141
	.quad	0x3ffedcdc443914f5              # double 1.9289210000000001
	.quad	0x4022cfcd24e160d9              # double 9.4058620000000008
	.quad	0x3ffd66d9be4cd749              # double 1.83761
	.quad	0x401d6484d76ab580              # double 7.3481629999999996
	.quad	0x400fe78c868b9fdc              # double 3.9880610000000001
	.quad	0x400e0bedfa43fe5d              # double 3.7558250000000002
	.quad	0x400108d10f51ac9b              # double 2.129305
	.quad	0x4019a636f3b213e4              # double 6.4123190000000001
	.quad	0x4022db417ca2120e              # double 9.4282339999999998
	.quad	0x4022dc4827b6fe2e              # double 9.4302379999999992
	.quad	0x4022b0359bc33f85              # double 9.3441589999999994
	.quad	0x4016296fa82e87d3              # double 5.5404650000000002
	.quad	0x4021c72ae07e5a79              # double 8.8889990000000001
	.quad	0x4020a7b395c42203              # double 8.3275419999999993
	.quad	0x4023ad6adf71eaff              # double 9.8387060000000001
	.quad	0x4022827913e81451              # double 9.2548300000000001
	.quad	0x4018304c8bc9cd3e              # double 6.047167
	.quad	0x40213d2674080f99              # double 8.619434
	.quad	0x402171a8ef77f280              # double 8.7219920000000002
	.quad	0x4023c4330d73860a              # double 9.8832020000000007
	.quad	0x40117e32a0663c75              # double 4.37324
	.quad	0x4020e743c7d5ed07              # double 8.451689
	.quad	0x40064c929aa1d756              # double 2.7873890000000001
	.quad	0x40239c840e1719f8              # double 9.805695
	.quad	0x3fbde236c15d2d02              # double 0.116733
	.quad	0x401a57afa7221859              # double 6.5856310000000002
	.quad	0x401569a5a89b951c              # double 5.3531709999999997
	.quad	0x401ed5918a009f62              # double 7.7085629999999998
	.quad	0x402079bef49cf56f              # double 8.2377850000000006
	.quad	0x4023baa68f4b61fe              # double 9.8645519999999998
	.quad	0x3fdf566490a350d3              # double 0.48964800000000003
	.quad	0x401662745bf26f1e              # double 5.5961470000000002
	.quad	0x40225f192ea52ef9              # double 9.1857389999999999
	.quad	0x401c07481b21c476              # double 7.0071110000000001
	.quad	0x4020ff62b6ae7d56              # double 8.4987999999999992
	.quad	0x401824f2f123c42a              # double 6.0360829999999996
	.quad	0x4023bc8fd9fd36f8              # double 9.8682850000000001
	.quad	0x40166182235b4edb              # double 5.5952229999999998
	.quad	0x40186463497b7415              # double 6.0980350000000003
	.quad	0x4019b530489d27c4              # double 6.4269420000000004
	.quad	0x4014c7dae81882ae              # double 5.1951710000000002
	.quad	0x3fd4674d1633482c              # double 0.31880500000000001
	.quad	0x3ff95769a91105e2              # double 1.5838410000000001
	.quad	0x401cde0eb67c2870              # double 7.2168530000000004
	.quad	0x4012ec2e770bd018              # double 4.7306460000000001
	.quad	0x401ab033e78e1933              # double 6.6720730000000001
	.quad	0x3ff6f90214ad362f              # double 1.4357930000000001
	.quad	0x401f6154866a11ed              # double 7.8450490000000003
	.quad	0x3fe516c82e019b0b              # double 0.65903100000000003
	.quad	0x3ffab10880d801b4              # double 1.668221
	.quad	0x4001b9096bb98c7e              # double 2.2153499999999999
	.quad	0x3ffc2b8a5ce5b424              # double 1.7606299999999999
	.quad	0x4020316db0dd82fd              # double 8.0965399999999992
	.quad	0x401e60da5daf07c0              # double 7.5945830000000001
	.quad	0x4004bad31fcd24e1              # double 2.5912229999999998
	.quad	0x4011e00c0f01fb83              # double 4.4687960000000002
	.quad	0x3ffe74213a0c6b48              # double 1.9033519999999999
	.quad	0x401ae29d40ee06d9              # double 6.7213029999999998
	.quad	0x4015c62888b545c8              # double 5.4435140000000004
	.quad	0x401e349b62c77575              # double 7.551374
	.quad	0x40129a04d12018a4              # double 4.6504089999999998
	.quad	0x4001eb7aa25d8d7a              # double 2.2399800000000001
	.quad	0x4020017aeddce7cd              # double 8.002891
	.quad	0x401f68c111ada76e              # double 7.8522990000000004
	.quad	0x4021f3925bb7b6bb              # double 8.9757259999999999
	.quad	0x401907ebaf102364              # double 6.2577350000000003
	.quad	0x401656687f455a7d              # double 5.5843829999999999
	.quad	0x4021e1f1f14983d8              # double 8.9412990000000008
	.quad	0x4015fc11e42e1262              # double 5.496162
	.quad	0x3ffbfeed45e9185d              # double 1.749738
	.quad	0x3febf9d4d834091c              # double 0.87424699999999999
	.quad	0x401894a38327674d              # double 6.1451549999999999
	.quad	0x400fd963992c8c50              # double 3.981147
	.quad	0x401af8abd5dc4007              # double 6.7428429999999997
	.quad	0x4012ca322af57710              # double 4.697457
	.quad	0x4020a7e36d22424a              # double 8.3279069999999997
	.quad	0x3ff6276640a6b93d              # double 1.384619
	.quad	0x3f92c2374794ea07              # double 0.018318999999999998
	.quad	0x40175cdd93c46d83              # double 5.8406890000000002
	.quad	0x4013f743a647fdc6              # double 4.9914690000000004
	.quad	0x401ebf8a0902de01              # double 7.6870500000000001
	.quad	0x401be5e74299d884              # double 6.9745150000000002
	.quad	0x3ff3e29b6b2af145              # double 1.2428239999999999
	.quad	0x400e672da122fad7              # double 3.8003800000000001
	.quad	0x4011c4d26fa3fcca              # double 4.4422090000000001
	.quad	0x40215a3ee1bd1eda              # double 8.6762610000000002
	.quad	0x4022e550ebaade65              # double 9.4478829999999991
	.quad	0x40151abbcb1cc964              # double 5.2761069999999997
	.quad	0x400174280ae10492              # double 2.1817169999999999
	.quad	0x400e64a48f96e158              # double 3.7991419999999998
	.quad	0x4023b910a137f38c              # double 9.8614549999999994
	.quad	0x401b2e1c58255b03              # double 6.7950299999999997
	.quad	0x401d7774256bca53              # double 7.3666539999999996
	.quad	0x4011cd0a67620ee9              # double 4.4502350000000002
	.quad	0x4006575d9a0f0a5f              # double 2.792659
	.quad	0x4013255821294574              # double 4.7864690000000003
	.quad	0x4019caa326e11559              # double 6.4478879999999998
	.quad	0x4003441e57d9dba9              # double 2.408261
	.quad	0x402376f1348b2208              # double 9.7323090000000007
	.quad	0x3ff466e5471715c6              # double 1.2751209999999999
	.quad	0x401e2bf0995aaf79              # double 7.54291
	.quad	0x401a05d18090b418              # double 6.5056820000000002
	.quad	0x4022676a2f48c2e7              # double 9.2019819999999992
	.quad	0x400fa13cab81f96a              # double 3.953729
	.quad	0x4010f9c347e8ccde              # double 4.2439090000000004
	.quad	0x4020f4f6598e10cf              # double 8.4784419999999994
	.quad	0x40168c069e7fb268              # double 5.6367440000000002
	.quad	0x3fcb4057082491b0              # double 0.21290100000000001
	.quad	0x3fec28112ba16e7a              # double 0.87989099999999998
	.quad	0x3ff6614f0520d131              # double 1.398757
	.quad	0x402275f1e0828c37              # double 9.2303610000000003
	.quad	0x4022d9248d7e0264              # double 9.4241069999999993
	.quad	0x401a9e9707182236              # double 6.6548730000000003
	.quad	0x400e9e518f3eccc4              # double 3.8273039999999998
	.quad	0x401be1754b05b7d0              # double 6.9701740000000001
	.quad	0x401682e48e8a71de              # double 5.6278249999999996
	.quad	0x3fff7e5321e603d5              # double 1.9683409999999999
	.quad	0x4008bdffc5479d4e              # double 3.0927730000000002
	.quad	0x4020f733a8a3f898              # double 8.4828159999999997
	.quad	0x40114440af1cb89d              # double 4.3166529999999996
	.quad	0x4019822a6f3f52fc              # double 6.3771149999999999
	.quad	0x40226baa582dbe7f              # double 9.2102839999999997
	.quad	0x3ffdab1a2a4db164              # double 1.8542730000000001
	.quad	0x402283fa2ad3e921              # double 9.2577680000000004
	.quad	0x40190b4f1e4b44a2              # double 6.2610440000000001
	.quad	0x3fdd2c3c9eecbfb1              # double 0.45582499999999998
	.quad	0x401ec53b0813cab8              # double 7.6926079999999998
	.quad	0x401d948f53c579f2              # double 7.3950779999999998
	.quad	0x4016a6c8f7553693              # double 5.6628759999999998
	.quad	0x4015761847f56217              # double 5.3653269999999997
	.quad	0x4020af644955b467              # double 8.3425619999999991
	.quad	0x40191532e7b3d8e0              # double 6.270702
	.quad	0x4021b0c5a8155d5f              # double 8.8452579999999994
	.quad	0x4010318611fd5886              # double 4.0483630000000002
	.quad	0x40219d0225742dcf              # double 8.8066569999999995
	.quad	0x400dc79a2834d270              # double 3.7224620000000002
	.quad	0x3fa3e0370cdc8755              # double 0.03882
	.quad	0x400f02df9378ee28              # double 3.8764029999999998
	.quad	0x40233531337eb28e              # double 9.6038910000000008
	.quad	0x400aabd9018e7579              # double 3.3339099999999999
	.quad	0x3fc982b1f687b13a              # double 0.19930100000000001
	.quad	0x4017b164840e171a              # double 5.923235
	.quad	0x40234a8eb463497b              # double 9.6456199999999991
	.quad	0x40070a9cdc443915              # double 2.880182
	.quad	0x401e68c75c4a83b2              # double 7.6023230000000002
	.quad	0x4021dc80e8c8abd6              # double 8.9306710000000002
	.quad	0x4017f99d451fc4c1              # double 5.9937639999999996
	.quad	0x3fe2439bcba30121              # double 0.57075299999999995
	.quad	0x400b549f0e4da09d              # double 3.4163190000000001
	.quad	0x3fe4f3f961804d98              # double 0.65478199999999998
	.quad	0x3fa5604189374bc7              # double 0.041750000000000002
	.quad	0x4013b47baa9b499d              # double 4.926253
	.quad	0x3ff98c92146a1a50              # double 1.596819
	.quad	0x3ff11530489d27c4              # double 1.0676730000000001
	.quad	0x401e66a93f290abb              # double 7.6002549999999997
	.quad	0x401db060780fdc16              # double 7.4222429999999999
	.quad	0x4017ddbe7f2c300a              # double 5.9665470000000003
	.quad	0x4003c7a6bd6e8af8              # double 2.472486
	.quad	0x40117240fa9c12f1              # double 4.3615760000000003
	.quad	0x4021df0329802c0a              # double 8.9355709999999995
	.quad	0x4002718b93469942              # double 2.3054420000000002
	.quad	0x3ffc092ab68cef67              # double 1.752238
	.quad	0x401e174080f98fa3              # double 7.5227069999999995
	.quad	0x4014dca7503b81b6              # double 5.2154819999999997
	.quad	0x3ff067d1351159c5              # double 1.0253460000000001
	.quad	0x3ff2a81fd9ba1b19              # double 1.1660459999999999
	.quad	0x4003ef9e3864cb5c              # double 2.4920010000000001
	.quad	0x40174dd7a99fa11b              # double 5.8260180000000004
	.quad	0x3fd84f82f5126634              # double 0.379853
	.quad	0x400c2c81d3aa36a0              # double 3.5217320000000001
	.quad	0x400d088e79aae6c9              # double 3.629178
	.quad	0x3feeae642bf9830e              # double 0.95878799999999997
	.quad	0x40053b9a5a89b952              # double 2.6541030000000001
	.quad	0x4023c7bca1059ea5              # double 9.8901109999999992
	.quad	0x400c262dc6e2a800              # double 3.5186419999999998
	.quad	0x401a1d438d1d8a55              # double 6.5285780000000004
	.quad	0x3fff3c5479d4d834              # double 1.952229
	.quad	0x401e7cb6c7a7c9de              # double 7.621791
	.quad	0x40218e89a88ace25              # double 8.7783940000000005
	.quad	0x3fe0ad6451b93038              # double 0.52116600000000002
	.quad	0x4013820c49ba5e35              # double 4.8769999999999998
	.quad	0x40132c39bcba3012              # double 4.7931889999999999
	.quad	0x4016ffb86f47b678              # double 5.749727
	.quad	0x3fdd3586ca89fc6e              # double 0.45639200000000002
	.quad	0x4023105ad538ac19              # double 9.531943
	.quad	0x3fdcef06b37867f1              # double 0.45208900000000002
	.quad	0x40181a3b57c4e2f3              # double 6.0256169999999996
	.quad	0x400952f01754b05b              # double 3.1654969999999998
	.quad	0x40014a958537e2c5              # double 2.1614179999999998
	.quad	0x400539e59f2ba9d2              # double 2.65327
	.quad	0x3ff69019f3c70c99              # double 1.4101809999999999
	.quad	0x401c7a5870da5daf              # double 7.119478
	.quad	0x4010cdcb5781c715              # double 4.200971
	.quad	0x4013185122318330              # double 4.7737470000000002
	.quad	0x4017bf544bb1af3a              # double 5.9368449999999999
	.quad	0x4011d5e74299d884              # double 4.4588900000000002
	.quad	0x401a8840181e03f7              # double 6.633057
	.quad	0x402117bc3c5bd0e1              # double 8.5463579999999997
	.quad	0x4013221d10b1feeb              # double 4.7833139999999998
	.quad	0x3ff8b49385836220              # double 1.5440860000000001
	.quad	0x401c310e8858ff76              # double 7.0479070000000004
	.quad	0x40204250507a6bd7              # double 8.1295190000000002
	.quad	0x401e06c8f7553693              # double 7.5066259999999997
	.quad	0x4016db9628cbd124              # double 5.7144399999999997
	.quad	0x4008e04189374bc7              # double 3.1095000000000002
	.quad	0x4021c06c43f5f916              # double 8.875826
	.quad	0x3fe60476f2a5a46a              # double 0.68804500000000002
	.quad	0x3ff3765cb35f3d7d              # double 1.216397
	.quad	0x3ffba53005814941              # double 1.7278290000000001
	.quad	0x40197a9b06812381              # double 6.3697319999999999
	.quad	0x400c9b3d07c84b5e              # double 3.5758000000000001
	.quad	0x40156328b6d86ec1              # double 5.3468349999999996
	.quad	0x4014725d4a5df224              # double 5.1116840000000003
	.quad	0x401b07403dddb121              # double 6.7570810000000003
	.quad	0x401c68509bf9c62a              # double 7.1018699999999999
	.quad	0x4003a74afd545415              # double 2.4566859999999999
	.quad	0x40137931ca7d6734              # double 4.8683540000000001
	.quad	0x400943f1c75818c6              # double 3.1581760000000001
	.quad	0x4017c974e65bea0c              # double 5.9467350000000003
	.quad	0x40140f8b9baa1512              # double 5.0151810000000001
	.quad	0x40201d52e2fbe33b              # double 8.0572730000000004
	.quad	0x400c7a355043e532              # double 3.5596719999999999
	.quad	0x401ac5bab21815a0              # double 6.6930949999999996
	.quad	0x3ffc6b3461309c80              # double 1.776173
	.quad	0x401fdc3dab5c39bd              # double 7.9650790000000002
	.quad	0x3fc5f47735c182ed              # double 0.17152300000000001
	.quad	0x3ff54b75ea67e847              # double 1.3309230000000001
	.quad	0x3ff70aeea63b688c              # double 1.440169
	.quad	0x4020fac3eb7cbb3d              # double 8.4897760000000009
	.quad	0x40239eab7995ee13              # double 9.8099019999999992
	.quad	0x4013f9934efcbd55              # double 4.9937259999999997
	.quad	0x401c2ddc6195464e              # double 7.0447860000000002
	.quad	0x402200984e3ffef4              # double 9.0011620000000007
	.quad	0x40122a493c89f40a              # double 4.5412949999999999
	.quad	0x40098e3a3a8e7147              # double 3.1944469999999998
	.quad	0x400ddff36ac64778              # double 3.7343510000000002
	.quad	0x400a7ef39085f4a1              # double 3.3119879999999999
	.quad	0x401f0bc59b8023a7              # double 7.7614960000000001
	.quad	0x3fec9707182235b5              # double 0.89343600000000001
	.quad	0x4007315c63ae2542              # double 2.8991020000000001
	.quad	0x3fd449491f2dc2b1              # double 0.316973
	.quad	0x3ff01327243137b0              # double 1.0046759999999999
	.quad	0x401303382e44b6e9              # double 4.7531439999999998
	.quad	0x401815810624dd2f              # double 6.0209999999999999
	.quad	0x4022f195ee136e72              # double 9.4718470000000003
	.quad	0x40115ac68a936c59              # double 4.3386480000000001
	.quad	0x402082b7fe08aefb              # double 8.2553099999999997
	.quad	0x401616f4be835dee              # double 5.522418
	.quad	0x4022e86e7e62dc6e              # double 9.4539679999999997
	.quad	0x4003808d08919ef9              # double 2.4377689999999999
	.quad	0x3feb7a93af74cd31              # double 0.85871299999999995
	.quad	0x4013be368f084620              # double 4.9357550000000003
	.quad	0x40134ae07e5a78f2              # double 4.8231219999999997
	.quad	0x401e7e86c6583e85              # double 7.6235609999999995
	.quad	0x4012699d0203e63f              # double 4.6031380000000004
	.quad	0x3ff0f0941c8216c6              # double 1.058735
	.quad	0x3fea766c6de76428              # double 0.82695600000000002
	.quad	0x400461cd5f99c38b              # double 2.547755
	.quad	0x3ffc0f605ab3aabd              # double 1.753754
	.quad	0x4014a8f9b13165d4              # double 5.1650150000000004
	.quad	0x40101301a79fec9a              # double 4.018561
	.quad	0x40148907d912556d              # double 5.1338189999999999
	.quad	0x4019b9bd4067cf1c              # double 6.4313859999999998
	.quad	0x4002631ad2135dab              # double 2.2983910000000001
	.quad	0x3fe79cc532a497fa              # double 0.73788699999999996
	.quad	0x401659acbc8c0ce9              # double 5.5875729999999999
	.quad	0x401d4b1ee2435697              # double 7.3233600000000001
	.quad	0x3ff8b9756c93a711              # double 1.5452779999999999
	.quad	0x401fc02c9081c2e3              # double 7.9376699999999997
	.quad	0x401c2c7abfb9bed3              # double 7.0434369999999999
	.quad	0x4023ef644955b467              # double 9.9675619999999991
	.quad	0x4023dd70a3d70a3d              # double 9.9324999999999992
	.quad	0x4023de6e86c6583f              # double 9.9344370000000008
	.quad	0x3ff0286833c6002a              # double 1.009865
	.quad	0x400a299c7bcc2939              # double 3.2703180000000001
	.quad	0x400c4363b256ffc1              # double 3.532905
	.quad	0x4017acd39da16617              # double 5.9187760000000003
	.quad	0x4000d421c044284e              # double 2.10358
	.quad	0x401a6961c36976bc              # double 6.6029119999999999
	.quad	0x40220280cf9e3865              # double 9.0048890000000004
	.quad	0x3fe376d117b5286b              # double 0.60825399999999996
	.quad	0x4022fd27e5215769              # double 9.4944450000000006
	.quad	0x3ff57c87db2b3461              # double 1.342903
	.quad	0x40159575c0767d35              # double 5.3959570000000001
	.quad	0x4020209b30728e93              # double 8.0636840000000003
	.quad	0x401264178705425f              # double 4.5977459999999999
	.quad	0x401abc39ffd60e95              # double 6.6838150000000001
	.quad	0x4010ec471b478423              # double 4.2307399999999999
	.quad	0x4021b165d3996fa8              # double 8.8464799999999997
	.quad	0x401eaaad1d041cc5              # double 7.6666759999999998
	.quad	0x3feb9b3d07c84b5e              # double 0.86270000000000002
	.quad	0x40225153dea465a5              # double 9.1588429999999992
	.quad	0x402189c886162f16              # double 8.7691079999999992
	.quad	0x401c4b24638c9753              # double 7.0733810000000004
	.quad	0x402216481f53825e              # double 9.0435189999999999
	.quad	0x4002dea78af3e469              # double 2.3587180000000001
	.quad	0x4015b938151a4378              # double 5.4308779999999999
	.quad	0x401bfdafd113836b              # double 6.9977410000000004
	.quad	0x401e2cfc3f811f4f              # double 7.5439309999999997
	.quad	0x40206480841ede12              # double 8.1962930000000007
	.quad	0x4012c7c0f4517614              # double 4.6950719999999997
	.quad	0x4010756c0d6f544c              # double 4.1146700000000003
	.quad	0x40177d2999567dbb              # double 5.8722289999999999
	.quad	0x400397e80389f83c              # double 2.449173
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
