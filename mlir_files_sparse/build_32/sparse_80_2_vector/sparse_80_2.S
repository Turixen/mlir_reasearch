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
	.quad	0x413f46a235e236c1              # double 2049698.2104829999
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
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
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
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_1999xindex_0)
	addi	a7, a7, %lo(.L__constant_1999xindex_0)
	lui	t0, %hi(.L__constant_1999xf64_0)
	addi	t0, t0, %lo(.L__constant_1999xf64_0)
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
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
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
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
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
	.size	.L__constant_1999xf64_0, 15992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	42                              # 0x2a
	.quad	42                              # 0x2a
	.quad	80                              # 0x50
	.quad	80                              # 0x50
	.quad	122                             # 0x7a
	.quad	122                             # 0x7a
	.quad	160                             # 0xa0
	.quad	160                             # 0xa0
	.quad	197                             # 0xc5
	.quad	197                             # 0xc5
	.quad	243                             # 0xf3
	.quad	243                             # 0xf3
	.quad	280                             # 0x118
	.quad	280                             # 0x118
	.quad	318                             # 0x13e
	.quad	318                             # 0x13e
	.quad	359                             # 0x167
	.quad	359                             # 0x167
	.quad	401                             # 0x191
	.quad	401                             # 0x191
	.quad	436                             # 0x1b4
	.quad	436                             # 0x1b4
	.quad	478                             # 0x1de
	.quad	478                             # 0x1de
	.quad	520                             # 0x208
	.quad	520                             # 0x208
	.quad	560                             # 0x230
	.quad	560                             # 0x230
	.quad	600                             # 0x258
	.quad	600                             # 0x258
	.quad	640                             # 0x280
	.quad	640                             # 0x280
	.quad	681                             # 0x2a9
	.quad	681                             # 0x2a9
	.quad	719                             # 0x2cf
	.quad	719                             # 0x2cf
	.quad	765                             # 0x2fd
	.quad	765                             # 0x2fd
	.quad	805                             # 0x325
	.quad	805                             # 0x325
	.quad	847                             # 0x34f
	.quad	847                             # 0x34f
	.quad	886                             # 0x376
	.quad	886                             # 0x376
	.quad	925                             # 0x39d
	.quad	925                             # 0x39d
	.quad	971                             # 0x3cb
	.quad	971                             # 0x3cb
	.quad	1006                            # 0x3ee
	.quad	1006                            # 0x3ee
	.quad	1051                            # 0x41b
	.quad	1051                            # 0x41b
	.quad	1089                            # 0x441
	.quad	1089                            # 0x441
	.quad	1130                            # 0x46a
	.quad	1130                            # 0x46a
	.quad	1165                            # 0x48d
	.quad	1165                            # 0x48d
	.quad	1204                            # 0x4b4
	.quad	1204                            # 0x4b4
	.quad	1246                            # 0x4de
	.quad	1246                            # 0x4de
	.quad	1286                            # 0x506
	.quad	1286                            # 0x506
	.quad	1323                            # 0x52b
	.quad	1323                            # 0x52b
	.quad	1364                            # 0x554
	.quad	1364                            # 0x554
	.quad	1398                            # 0x576
	.quad	1398                            # 0x576
	.quad	1435                            # 0x59b
	.quad	1435                            # 0x59b
	.quad	1474                            # 0x5c2
	.quad	1474                            # 0x5c2
	.quad	1512                            # 0x5e8
	.quad	1512                            # 0x5e8
	.quad	1553                            # 0x611
	.quad	1553                            # 0x611
	.quad	1590                            # 0x636
	.quad	1590                            # 0x636
	.quad	1631                            # 0x65f
	.quad	1631                            # 0x65f
	.quad	1673                            # 0x689
	.quad	1673                            # 0x689
	.quad	1712                            # 0x6b0
	.quad	1712                            # 0x6b0
	.quad	1747                            # 0x6d3
	.quad	1747                            # 0x6d3
	.quad	1787                            # 0x6fb
	.quad	1787                            # 0x6fb
	.quad	1825                            # 0x721
	.quad	1825                            # 0x721
	.quad	1868                            # 0x74c
	.quad	1868                            # 0x74c
	.quad	1909                            # 0x775
	.quad	1909                            # 0x775
	.quad	1950                            # 0x79e
	.quad	1950                            # 0x79e
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
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
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	74                              # 0x4a
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
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
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
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
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
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
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	92                              # 0x5c
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	42                              # 0x2a
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
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
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
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
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
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	48                              # 0x30
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	24                              # 0x18
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
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x4021d72756861e93              # double 8.9202220000000008
	.quad	0x4018e014f8b588e3              # double 6.2188299999999996
	.quad	0x4020e13d96638434              # double 8.4399230000000002
	.quad	0x40040c7000431bdf              # double 2.5060730000000002
	.quad	0x4018336933a0407d              # double 6.0502060000000002
	.quad	0x400b0a854477ff15              # double 3.3801369999999999
	.quad	0x4020358afc47e49b              # double 8.1045759999999998
	.quad	0x401c0d72799a1fd1              # double 7.0131319999999997
	.quad	0x3ff5b3b5393250b5              # double 1.356374
	.quad	0x400036295208e150              # double 2.026446
	.quad	0x401984dd72367e41              # double 6.3797509999999997
	.quad	0x40021a5657fb6998              # double 2.2628599999999999
	.quad	0x3ffa49de05037500              # double 1.6430340000000001
	.quad	0x4019423f67f4dbe0              # double 6.3146950000000004
	.quad	0x40189febd09e12a5              # double 6.1561729999999999
	.quad	0x402039e81cb46bad              # double 8.1130990000000001
	.quad	0x3ffd0dc981beb181              # double 1.815866
	.quad	0x4004aa0902de00d2              # double 2.5830250000000001
	.quad	0x401359af1886df83              # double 4.8375820000000003
	.quad	0x3ff039b13165d399              # double 1.0140849999999999
	.quad	0x40159add9c27e953              # double 5.4012359999999999
	.quad	0x40100860dcb9a9da              # double 4.0081819999999997
	.quad	0x4002f89374bc6a7f              # double 2.371375
	.quad	0x401327dfa00e27e1              # double 4.7889390000000001
	.quad	0x40066cf7446f9b99              # double 2.8032059999999999
	.quad	0x4016719bd4067cf2              # double 5.6109460000000002
	.quad	0x401d78ed1bf7ad4b              # double 7.3680919999999999
	.quad	0x40237116872b020c              # double 9.7208749999999994
	.quad	0x3fe8b85a4f00ef13              # double 0.77250399999999997
	.quad	0x4020ece4649906cd              # double 8.4626800000000006
	.quad	0x3fddef30a4e379b7              # double 0.46772399999999997
	.quad	0x40036523704790b8              # double 2.4243839999999999
	.quad	0x402087075b3e1438              # double 8.2637280000000004
	.quad	0x401519285a921cce              # double 5.2745680000000004
	.quad	0x400b89d627bf61aa              # double 3.4423029999999999
	.quad	0x401649cd8127b2cc              # double 5.5720729999999996
	.quad	0x40207cea077036ca              # double 8.2439730000000004
	.quad	0x4011bc93a7115161              # double 4.4341569999999999
	.quad	0x40041ff8a8f3a9b0              # double 2.5156109999999998
	.quad	0x4010b7ae147ae148              # double 4.1793750000000003
	.quad	0x4020ec855da27286              # double 8.4619549999999997
	.quad	0x4014d2745bf26f1e              # double 5.2055220000000002
	.quad	0x4011a8869c66d374              # double 4.4145760000000003
	.quad	0x4012e93ea2d2fe3f              # double 4.7277779999999998
	.quad	0x4021527c39368273              # double 8.6611039999999999
	.quad	0x40186091c087442c              # double 6.0943059999999996
	.quad	0x4007bd388a8b08dd              # double 2.9673929999999999
	.quad	0x400b0aab042528ae              # double 3.3802089999999998
	.quad	0x4022ca2b5a20ddc6              # double 9.3948619999999998
	.quad	0x3fe33c558644523f              # double 0.60111499999999995
	.quad	0x401616c8b4395810              # double 5.5222499999999997
	.quad	0x4023d85e1c15097d              # double 9.9225930000000008
	.quad	0x401225653c9abb02              # double 4.5365190000000002
	.quad	0x400a1d44998d0460              # double 3.2642910000000001
	.quad	0x3fe723f8982cb210              # double 0.72314100000000003
	.quad	0x3ff248a9bcfd4bf1              # double 1.1427400000000001
	.quad	0x400b5c5ac471b478              # double 3.4200949999999999
	.quad	0x4020e1c7368ad688              # double 8.4409729999999996
	.quad	0x3ff2f47e8ccdd93c              # double 1.1846909999999999
	.quad	0x4022d7b7e90ff972              # double 9.4213249999999995
	.quad	0x400132999567dbb1              # double 2.1497069999999998
	.quad	0x400227f23cc8de2b              # double 2.2695050000000001
	.quad	0x401c9ff64cf8d717              # double 7.1562130000000002
	.quad	0x40164aaf35e310dc              # double 5.5729340000000001
	.quad	0x3fe26ab367a0f909              # double 0.57552499999999995
	.quad	0x400e4a5bd944aa54              # double 3.786308
	.quad	0x3ff9d6f75d9a0f0a              # double 1.6149819999999999
	.quad	0x401b15c78a6dacac              # double 6.7712690000000002
	.quad	0x40122b1fab96f21f              # double 4.5421129999999996
	.quad	0x40147ac03ff69015              # double 5.1198740000000003
	.quad	0x401f2a936c58eeaf              # double 7.7915780000000003
	.quad	0x401117c8d195896a              # double 4.2732270000000003
	.quad	0x4015d17268d32831              # double 5.4545380000000003
	.quad	0x4010ec1871e6cd29              # double 4.2305619999999999
	.quad	0x3fa4d940789613d3              # double 0.040719999999999999
	.quad	0x3fe46ad4f5903a75              # double 0.63804099999999997
	.quad	0x400e54b61fe21d97              # double 3.791363
	.quad	0x40205f6e3f78bbd4              # double 8.1863880000000008
	.quad	0x3feffeb28d8665e0              # double 0.99984099999999997
	.quad	0x401b21d4b6a619db              # double 6.7830380000000003
	.quad	0x401e1e2f37fbefd0              # double 7.529477
	.quad	0x40001c4199fe4367              # double 2.0137969999999998
	.quad	0x4000b7fae3608d09              # double 2.0898340000000002
	.quad	0x40153c36da87a073              # double 5.3088030000000002
	.quad	0x40134ad31fcd24e1              # double 4.8230709999999997
	.quad	0x3fe33c9eecbfb15b              # double 0.60114999999999996
	.quad	0x4021b2339c0ebee0              # double 8.8480500000000006
	.quad	0x4018277186551937              # double 6.038519
	.quad	0x40120ebfec13b9f1              # double 4.5144039999999999
	.quad	0x4001390afe60c38f              # double 2.1528529999999999
	.quad	0x4016a2328f9f44d4              # double 5.6583959999999998
	.quad	0x3fff9b994e1a3f46              # double 1.9754879999999999
	.quad	0x401e79e774eebf66              # double 7.6190470000000001
	.quad	0x401223b2dd377e1c              # double 4.5348620000000004
	.quad	0x3ffe364bec679cc7              # double 1.8882559999999999
	.quad	0x401583b42cc2d6aa              # double 5.3786170000000002
	.quad	0x4022e622a2c23748              # double 9.4494830000000007
	.quad	0x400385bd0e12e83a              # double 2.440302
	.quad	0x3fd6f8c64fdb09a6              # double 0.35893399999999998
	.quad	0x401a76fa3fcc9eaa              # double 6.6161890000000003
	.quad	0x4020ad2ac753e708              # double 8.3382170000000002
	.quad	0x40203f3ffac1d29e              # double 8.1235350000000004
	.quad	0x400bb689ca18bd66              # double 3.4641299999999999
	.quad	0x3ff2d870da5daf08              # double 1.1778420000000001
	.quad	0x401bf0639d5e4a38              # double 6.9847549999999998
	.quad	0x4003ff0025bfad2a              # double 2.4995120000000002
	.quad	0x40225630a91537a0              # double 9.1683400000000006
	.quad	0x4023373300de4c51              # double 9.6078109999999998
	.quad	0x3fb717efe0ce0b91              # double 0.090208999999999998
	.quad	0x4010ae3ef284167b              # double 4.1701620000000004
	.quad	0x40178029f16b11c7              # double 5.8751600000000002
	.quad	0x401f863c74fb54a0              # double 7.8810900000000004
	.quad	0x400253a0407cc7d2              # double 2.2908330000000001
	.quad	0x400d539192641b33              # double 3.6658050000000002
	.quad	0x401cf852b4d8ba41              # double 7.2425030000000001
	.quad	0x3ff8004fb1183b60              # double 1.500076
	.quad	0x4020a86a8fc0d2c4              # double 8.3289380000000008
	.quad	0x4002a40c8472c0e8              # double 2.3301020000000001
	.quad	0x3ff329ced0b30b5b              # double 1.1977070000000001
	.quad	0x4022d8a32f44912a              # double 9.4231200000000008
	.quad	0x401f7387160956c1              # double 7.8628200000000001
	.quad	0x40179a921ccd9620              # double 5.9009479999999996
	.quad	0x4022addca4b124d1              # double 9.3395740000000007
	.quad	0x401df3ec02f2f987              # double 7.4882049999999997
	.quad	0x3ff5e473471f7942              # double 1.368274
	.quad	0x40078a077036c9c1              # double 2.9423970000000002
	.quad	0x3ff56c82e019b0ab              # double 1.338992
	.quad	0x401a9798958d9b5f              # double 6.6480430000000004
	.quad	0x3ff5cd67fd3f5b60              # double 1.3626480000000001
	.quad	0x401d748e043a2164              # double 7.363823
	.quad	0x3ff4ee1049235f81              # double 1.3081210000000001
	.quad	0x40239ba9b0681238              # double 9.8040289999999998
	.quad	0x402329a8ac5c13fd              # double 9.5813649999999999
	.quad	0x4014be4b87bdcf03              # double 5.185835
	.quad	0x40213ed30f062d41              # double 8.6227040000000006
	.quad	0x400090bf1a5ca298              # double 2.0706769999999999
	.quad	0x40109dda8bd230ba              # double 4.1541540000000001
	.quad	0x401039274e22a2c2              # double 4.0558139999999998
	.quad	0x40208ad0c3d25248              # double 8.2711240000000004
	.quad	0x400af7a56de3326a              # double 3.3709210000000001
	.quad	0x3fff02aed1394318              # double 1.9381550000000001
	.quad	0x4008a9a91105e1c1              # double 3.0828419999999999
	.quad	0x40130d5885d31338              # double 4.7630330000000001
	.quad	0x3ffebfb69984a0e4              # double 1.921805
	.quad	0x401a3e3369b9d7fe              # double 6.5607430000000004
	.quad	0x40236b04ab606b7b              # double 9.7090200000000006
	.quad	0x40027a5c1c6088d7              # double 2.3097460000000001
	.quad	0x4014743aa79bbadc              # double 5.113505
	.quad	0x400ff5feda661284              # double 3.9951150000000002
	.quad	0x401234d834091c08              # double 4.5516059999999996
	.quad	0x400a6d7b634dad32              # double 3.303458
	.quad	0x401d64e65bea0ba2              # double 7.348535
	.quad	0x401344ce3de6149c              # double 4.8171929999999996
	.quad	0x3ffd30e6f2e8c048              # double 1.8244389999999999
	.quad	0x40040053e2d6238e              # double 2.5001600000000002
	.quad	0x401194af4f0d844d              # double 4.3952
	.quad	0x400311d68c692f6f              # double 2.3837100000000002
	.quad	0x3fe8059ea57214f0              # double 0.75068599999999996
	.quad	0x4002b49a5657fb6a              # double 2.3381850000000002
	.quad	0x3ff5173b85e80bed              # double 1.3181719999999999
	.quad	0x4021de28240b7803              # double 8.9338999999999995
	.quad	0x3ff960ec74320104              # double 1.586163
	.quad	0x3ffe4ff43419e300              # double 1.89452
	.quad	0x3ff277164c729f5a              # double 1.154074
	.quad	0x3fda92f2b66b6178              # double 0.415219
	.quad	0x3fed8b6d86ec17ec              # double 0.92327000000000003
	.quad	0x40143020817fc760              # double 5.0469989999999996
	.quad	0x401d288f861a60d4              # double 7.2896099999999997
	.quad	0x3ffc125cc426351e              # double 1.754483
	.quad	0x3fee4117f84449dc              # double 0.945446
	.quad	0x3fcaa53fc0096feb              # double 0.20816799999999999
	.quad	0x401680b5675579af              # double 5.6256919999999999
	.quad	0x4015ca05dd8f92b0              # double 5.4472880000000004
	.quad	0x402082a25d8d79d1              # double 8.2551450000000006
	.quad	0x3fe9a4af0bf1a5ca              # double 0.80135299999999998
	.quad	0x400c551697f1f9ad              # double 3.541547
	.quad	0x400916a055757d5b              # double 3.1360480000000002
	.quad	0x3fc2df71eafee6fb              # double 0.14744399999999999
	.quad	0x40000ee286727568              # double 2.0072679999999998
	.quad	0x4012b33269df97ab              # double 4.6749970000000003
	.quad	0x4010fe974a3400b9              # double 4.2486240000000004
	.quad	0x401ffdd72367e415              # double 7.997891
	.quad	0x40230906466b1e5c              # double 9.5176259999999999
	.quad	0x4014a82e019b0ab3              # double 5.1642380000000001
	.quad	0x401f1730c67168f9              # double 7.772647
	.quad	0x40223ce3ffef3908              # double 9.1189269999999993
	.quad	0x401bfd2ae8e1d649              # double 6.9972339999999997
	.quad	0x402241611ba3ca75              # double 9.127694
	.quad	0x3fed9bc33f85510d              # double 0.92526399999999998
	.quad	0x40211239e6ab9b24              # double 8.5355980000000002
	.quad	0x40059c2b0ea18373              # double 2.701254
	.quad	0x401230b8066c2acc              # double 4.5475770000000004
	.quad	0x3ff65bad3a604e1e              # double 1.3973819999999999
	.quad	0x40106e2de8709742              # double 4.1075970000000002
	.quad	0x3fc42845996744b3              # double 0.15747900000000001
	.quad	0x4023c19780baa583              # double 9.8781090000000002
	.quad	0x4007467be553ac4f              # double 2.9094159999999998
	.quad	0x400e8b6e935b91f7              # double 3.818082
	.quad	0x401602fb5d031056              # double 5.5029120000000002
	.quad	0x401c64944ed6fda8              # double 7.0982219999999998
	.quad	0x400e946994185059              # double 3.8224670000000001
	.quad	0x401559f51697f1fa              # double 5.3378490000000003
	.quad	0x3ffc81ba7fc32ebe              # double 1.7816719999999999
	.quad	0x4016e887229e9079              # double 5.7270779999999997
	.quad	0x3ff40379314445aa              # double 1.250848
	.quad	0x4022c9d8622c4502              # double 9.3942289999999993
	.quad	0x401bdd4801f75105              # double 6.9660950000000001
	.quad	0x400e53affb04ee7c              # double 3.7908629999999999
	.quad	0x40127e74f2f123c4              # double 4.6234929999999999
	.quad	0x4015383dbc23315d              # double 5.3049229999999996
	.quad	0x3ffeca697aeddce8              # double 1.924417
	.quad	0x401ff01d9f4d37c1              # double 7.9844879999999998
	.quad	0x4013701e68a0d34a              # double 4.8594910000000002
	.quad	0x4020f6f21f6cacd2              # double 8.4823160000000009
	.quad	0x401a98787485e3da              # double 6.6488969999999998
	.quad	0x4023143dccea28fe              # double 9.5395339999999997
	.quad	0x3fd8a4acf312b1b3              # double 0.38505099999999998
	.quad	0x40187072d1aeb3dd              # double 6.1098129999999999
	.quad	0x40030af2d7f950b9              # double 2.3803459999999999
	.quad	0x4011d4623d0bfa09              # double 4.4574059999999998
	.quad	0x4017f32441fea811              # double 5.9874429999999998
	.quad	0x4016989ca18bd662              # double 5.6490349999999996
	.quad	0x3ff5a5b20b8066c3              # double 1.3529530000000001
	.quad	0x400467570c564f98              # double 2.550459
	.quad	0x3ff4ffa5d28d002e              # double 1.312414
	.quad	0x3ff7c6cfc829cfdd              # double 1.486038
	.quad	0x4007bc3504c48adf              # double 2.966898
	.quad	0x40183db9841aac54              # double 6.0602780000000003
	.quad	0x401117abfb9bed31              # double 4.2731170000000001
	.quad	0x3fee45b6c3760bf6              # double 0.94601000000000002
	.quad	0x40228f5232d2bb23              # double 9.2799239999999994
	.quad	0x4003489656eefa1e              # double 2.4104429999999999
	.quad	0x4017393469941850              # double 5.8058639999999997
	.quad	0x40204bc89f40a287              # double 8.1480149999999991
	.quad	0x401c4586013660e5              # double 7.0678939999999999
	.quad	0x4018d5b2d4d4024b              # double 6.2086899999999998
	.quad	0x4016f1fc8f32378b              # double 5.7363150000000003
	.quad	0x4022ecafb3b75211              # double 9.4622779999999995
	.quad	0x4010aea67e846a5d              # double 4.1705569999999996
	.quad	0x4021d0e79aae6c8f              # double 8.9080169999999992
	.quad	0x4009b5c74751ce29              # double 3.213759
	.quad	0x3ff15769a91105e2              # double 1.0838410000000001
	.quad	0x4013332a8c9b8455              # double 4.7999669999999997
	.quad	0x4013c85f06f69446              # double 4.9456749999999996
	.quad	0x40202be100607810              # double 8.0857010000000002
	.quad	0x400838c75c4a83b2              # double 3.0277240000000001
	.quad	0x4013a7192ea52ef9              # double 4.9131819999999999
	.quad	0x401674a4095f2453              # double 5.6139070000000002
	.quad	0x401f24ccab3edd8b              # double 7.7859369999999996
	.quad	0x401fd60c38f36695              # double 7.9590310000000004
	.quad	0x3fe2ae429e0a41a2              # double 0.58377199999999996
	.quad	0x401e1f8a4c1ebc84              # double 7.5308010000000003
	.quad	0x40212845132f87ad              # double 8.5786519999999999
	.quad	0x402372b042528ae7              # double 9.7240009999999994
	.quad	0x400831cda2b5a20e              # double 3.0243180000000001
	.quad	0x3ffa56b441bb8c33              # double 1.6461680000000001
	.quad	0x402124fa05143bf7              # double 8.5722199999999997
	.quad	0x4012c53ef6b5d463              # double 4.6926230000000002
	.quad	0x401ff234eb9a176e              # double 7.9865300000000001
	.quad	0x400914c22ee4191a              # double 3.1351360000000001
	.quad	0x40157a2df9378ee3              # double 5.3693160000000004
	.quad	0x401595d5b24e9c45              # double 5.3963229999999998
	.quad	0x3fcb42917507e9d9              # double 0.21296899999999999
	.quad	0x4022256c2efd438d              # double 9.0730909999999998
	.quad	0x400f7090f733a8a4              # double 3.929964
	.quad	0x401da6d3b6cbd988              # double 7.4129170000000002
	.quad	0x400ddb57c4e2f380              # double 3.7321010000000001
	.quad	0x400e09d0635a426c              # double 3.7547920000000001
	.quad	0x3ffbf928e0c9d9d3              # double 1.7483299999999999
	.quad	0x3ffc73ffac1d29dc              # double 1.7783199999999999
	.quad	0x3ffa35d78811b1d9              # double 1.638145
	.quad	0x40015817b95a2941              # double 2.1680139999999999
	.quad	0x40157ab7564302b4              # double 5.3698399999999999
	.quad	0x40202face67d77fb              # double 8.0931160000000002
	.quad	0x40200b6e2eb1c433              # double 8.0223250000000004
	.quad	0x402301a6b50b0f28              # double 9.5032250000000004
	.quad	0x40233e3779e9d0ea              # double 9.6215170000000008
	.quad	0x40185b4289118c19              # double 6.0891209999999996
	.quad	0x3ffe5b9a5a89b952              # double 1.8973640000000001
	.quad	0x3ffa2ab367a0f909              # double 1.6354249999999999
	.quad	0x401283404ea4a8c1              # double 4.6281749999999997
	.quad	0x4022bbdf8f473040              # double 9.3669399999999995
	.quad	0x400cf9dece571088              # double 3.622007
	.quad	0x401fceb702602c91              # double 7.9518700000000004
	.quad	0x40202275ee99a62f              # double 8.0673060000000003
	.quad	0x401fed7b2031ceaf              # double 7.9819149999999998
	.quad	0x3ffaa9ca9ef5232d              # double 1.666453
	.quad	0x40235cc9a77e5eab              # double 9.6812260000000005
	.quad	0x401a0d4306e5cd4f              # double 6.5129510000000002
	.quad	0x3ffb2393ee5eedcc              # double 1.696186
	.quad	0x4014c64b662fdfc2              # double 5.1936470000000003
	.quad	0x4022a2ad601ffb48              # double 9.3177289999999999
	.quad	0x40168fb7a5f41aef              # double 5.6403489999999996
	.quad	0x40056bffcdab191e              # double 2.6777340000000001
	.quad	0x4013a9a7c17a8933              # double 4.9156789999999999
	.quad	0x401f5df69878316a              # double 7.841761
	.quad	0x401a6965b20b8067              # double 6.6029270000000002
	.quad	0x40143cabc5154867              # double 5.0592490000000003
	.quad	0x4023005f4a1272c9              # double 9.5007269999999994
	.quad	0x4010d586013660e5              # double 4.2085189999999999
	.quad	0x4022ebcc2938de6e              # double 9.4605420000000002
	.quad	0x402093c64345cfee              # double 8.2886220000000002
	.quad	0x400345c5f7c6759b              # double 2.4090690000000001
	.quad	0x4021651761459536              # double 8.6974440000000008
	.quad	0x40214ba7546d3f9e              # double 8.6477609999999991
	.quad	0x402244b9cb6848bf              # double 9.1342300000000005
	.quad	0x4000751a437824d5              # double 2.0571790000000001
	.quad	0x40135d08d4bad7d8              # double 4.8408540000000002
	.quad	0x4015c3e89a88ace2              # double 5.4413169999999997
	.quad	0x401273419e300150              # double 4.6125550000000004
	.quad	0x4019d2031ceaf252              # double 6.4550900000000002
	.quad	0x401db9741d084e83              # double 7.4311069999999999
	.quad	0x4020515bff04577e              # double 8.1589050000000007
	.quad	0x402315019f3c70ca              # double 9.5410280000000007
	.quad	0x3fefa95421c04428              # double 0.98941999999999996
	.quad	0x401301f926c7eae6              # double 4.7519270000000002
	.quad	0x3fffa6b6177ea1c7              # double 1.9782010000000001
	.quad	0x4018da265f0f5a10              # double 6.2130369999999999
	.quad	0x402045a5119ce076              # double 8.1360250000000001
	.quad	0x3ffe0024b33daf8e              # double 1.875035
	.quad	0x401a458c4bd33d29              # double 6.5679179999999997
	.quad	0x402235e8b3b32053              # double 9.1052909999999994
	.quad	0x4022fcf1e4b44a1f              # double 9.4940329999999999
	.quad	0x401fb1bc98a222d5              # double 7.9235709999999999
	.quad	0x400745154866a11f              # double 2.9087320000000001
	.quad	0x3fe639a9da597d4a              # double 0.69453900000000002
	.quad	0x400c7a072d1aeb3e              # double 3.5595840000000001
	.quad	0x401c495bbbe878fb              # double 7.0716390000000002
	.quad	0x3fec868db8bac711              # double 0.89142500000000002
	.quad	0x4022e5b4245f5ad9              # double 9.4486399999999992
	.quad	0x40141b79d909f1f1              # double 5.0268319999999997
	.quad	0x400583009b30728f              # double 2.6889660000000002
	.quad	0x3fb1e6bc621b7e0b              # double 0.069927000000000003
	.quad	0x3ff3832ebe596c83              # double 1.219527
	.quad	0x402280d5e8d54110              # double 9.2516320000000007
	.quad	0x40089a4c61d8622c              # double 3.0753409999999999
	.quad	0x401cf245b291b824              # double 7.2365940000000002
	.quad	0x401cc5ea67e846a6              # double 7.1932770000000001
	.quad	0x400e0d256798958e              # double 3.7564190000000002
	.quad	0x40112d5c31593e60              # double 4.2942970000000003
	.quad	0x40158697aeddce7d              # double 5.3814380000000002
	.quad	0x4008f4267839cd81              # double 3.1192139999999999
	.quad	0x401ffb28d8665e03              # double 7.995273
	.quad	0x4020bb1d92b7fe09              # double 8.3654600000000006
	.quad	0x40005b9496249a13              # double 2.0447169999999999
	.quad	0x4015f05dd8f92afa              # double 5.4847330000000003
	.quad	0x40201bcf4e874c90              # double 8.054316
	.quad	0x401ec5faa8a82a56              # double 7.6933389999999999
	.quad	0x40097082cf52b90a              # double 3.1799369999999998
	.quad	0x4014ce02645e4e6a              # double 5.2011810000000001
	.quad	0x40210031ad2135db              # double 8.5003790000000006
	.quad	0x4022102ababead4f              # double 9.0315759999999994
	.quad	0x4020db56da0168b6              # double 8.4283970000000004
	.quad	0x4004a9491f2dc2b1              # double 2.582659
	.quad	0x401f96c226809d49              # double 7.8972249999999997
	.quad	0x401ae121682f9442              # double 6.7198539999999998
	.quad	0x3ff336d97b30f8c6              # double 1.2008909999999999
	.quad	0x402154e0114d2f5e              # double 8.6657720000000005
	.quad	0x3ff862aa19439de5              # double 1.5240880000000001
	.quad	0x400b6ae85b9e8c48              # double 3.4272010000000002
	.quad	0x401abe2003ab862b              # double 6.6856689999999999
	.quad	0x401542d490e66cb1              # double 5.315264
	.quad	0x401b24141e9af5ba              # double 6.7852329999999998
	.quad	0x40078f23033a4724              # double 2.9448910000000001
	.quad	0x401ca3dc054ef45a              # double 7.1600190000000001
	.quad	0x40182694898f605b              # double 6.0376760000000003
	.quad	0x40226455a7d24181              # double 9.1959660000000003
	.quad	0x40137002e2328f9f              # double 4.8593859999999998
	.quad	0x4005fb0ccbc05d53              # double 2.7475830000000001
	.quad	0x401d56ab9b23dd55              # double 7.3346390000000001
	.quad	0x401f15b1c8648840              # double 7.7711860000000001
	.quad	0x400c04b44a1f0803              # double 3.502297
	.quad	0x402391491f2dc2b1              # double 9.7837610000000001
	.quad	0x40091323fee2c98e              # double 3.1343459999999999
	.quad	0x401084acaff6d331              # double 4.1295650000000004
	.quad	0x3f706cca2db61bb0              # double 0.0040099999999999997
	.quad	0x4019fdaa4fca42af              # double 6.4977200000000002
	.quad	0x4014982fd75e2047              # double 5.1486200000000002
	.quad	0x4021ae33269df97b              # double 8.8402340000000006
	.quad	0x402235c1e7967caf              # double 9.1049950000000006
	.quad	0x3fc89107faa044af              # double 0.19192600000000001
	.quad	0x40067000431bde83              # double 2.8046880000000001
	.quad	0x400787eae5bc87db              # double 2.9413659999999999
	.quad	0x4008fe77d523b363              # double 3.1242519999999998
	.quad	0x401a17ff9b56323c              # double 6.5234360000000002
	.quad	0x40138205bc01a36e              # double 4.8769749999999998
	.quad	0x401f1f2a9d627bf6              # double 7.7804359999999999
	.quad	0x4023d324c8366517              # double 9.9123900000000002
	.quad	0x4012ec692f6e8295              # double 4.7308700000000004
	.quad	0x402029d8a5482385              # double 8.0817309999999996
	.quad	0x3ff1908c3f3e0371              # double 1.09779
	.quad	0x40228c64dc22ab26              # double 9.2742070000000005
	.quad	0x400c937b07075b3e              # double 3.572012
	.quad	0x40210d85dfa871a4              # double 8.5264120000000005
	.quad	0x4009dcf2495e17e3              # double 3.2328839999999999
	.quad	0x3ff58ad688377186              # double 1.3463959999999999
	.quad	0x4002416bdb1a6d6a              # double 2.2819440000000002
	.quad	0x4018e02f2f987400              # double 6.2189300000000003
	.quad	0x401e15d91ab8e8ea              # double 7.5213359999999998
	.quad	0x3ff8e9e1b089a027              # double 1.5570999999999999
	.quad	0x40207c2dadb8348f              # double 8.2425359999999994
	.quad	0x4016ecddd6e04c06              # double 5.7313150000000004
	.quad	0x401eb916872b020c              # double 7.6807499999999997
	.quad	0x3ffc5cc857f3061c              # double 1.7726519999999999
	.quad	0x4013351e75360d02              # double 4.8018739999999998
	.quad	0x40201d492ff4ba52              # double 8.0571990000000007
	.quad	0x40038f75536933a0              # double 2.4450479999999999
	.quad	0x4022e10b417ca212              # double 9.4395389999999999
	.quad	0x4013828f9f44d445              # double 4.8775009999999996
	.quad	0x401cdfa43fe5c91d              # double 7.2183999999999999
	.quad	0x400ead03d9a95422              # double 3.8344800000000001
	.quad	0x40181e45c358afc4              # double 6.0295629999999996
	.quad	0x40207fc3d68405b4              # double 8.2495410000000006
	.quad	0x401ebf0dc768dfbd              # double 7.6865759999999996
	.quad	0x4022e0268900c522              # double 9.4377940000000002
	.quad	0x401b1fed20296b33              # double 6.7811779999999997
	.quad	0x400ff8d92fb19e73              # double 3.9965079999999999
	.quad	0x3ffb7c6540cc78ea              # double 1.71787
	.quad	0x3ff044bb1af3a14d              # double 1.01678
	.quad	0x4003dabfb9bed30f              # double 2.481811
	.quad	0x40055dd11be6e654              # double 2.6708090000000002
	.quad	0x401e10153bd16766              # double 7.5157059999999998
	.quad	0x3fe1f6f8f041461b              # double 0.56139799999999995
	.quad	0x40204e31b584b1ab              # double 8.1527229999999999
	.quad	0x40178e8101f31f47              # double 5.8891640000000001
	.quad	0x4020487d912556d2              # double 8.1415830000000007
	.quad	0x401e86d15ad106ee              # double 7.6316579999999998
	.quad	0x4004d06fef7c243e              # double 2.6017760000000001
	.quad	0x3ffc3d5a9eb2074f              # double 1.7649790000000001
	.quad	0x40016f48c2e770bd              # double 2.179338
	.quad	0x40214375a74c09c4              # double 8.6317570000000003
	.quad	0x401cda8e71476af9              # double 7.2134340000000003
	.quad	0x3fe13404ea4a8c15              # double 0.53759999999999997
	.quad	0x40129d21bc126a66              # double 4.6534490000000002
	.quad	0x4008b6b65a9a8049              # double 3.0892149999999998
	.quad	0x400b2d4bad7d7c2d              # double 3.3971170000000002
	.quad	0x402181bf37b8d3f2              # double 8.7534120000000009
	.quad	0x401be13404ea4a8c              # double 6.9699249999999999
	.quad	0x3ff51841aac53b08              # double 1.318422
	.quad	0x4016dec39799e519              # double 5.717543
	.quad	0x400ea89b0ee49f51              # double 3.8323269999999998
	.quad	0x401d9c60029f16b1              # double 7.4027099999999999
	.quad	0x40161873ffac1d2a              # double 5.5238800000000001
	.quad	0x402327bfc6540cc8              # double 9.5776350000000007
	.quad	0x4015f50dae3e6c4c              # double 5.4893099999999997
	.quad	0x4021a2ceee0f3cb4              # double 8.8179850000000001
	.quad	0x3fd0dd8b60f1b25f              # double 0.26352199999999998
	.quad	0x4020331d2e0e3044              # double 8.0998319999999992
	.quad	0x4016cb6ed677707a              # double 5.6986650000000001
	.quad	0x3ff68a5efe931876              # double 1.408782
	.quad	0x401cdc5ef62f9ca6              # double 7.2152060000000002
	.quad	0x4000613a0c6b484d              # double 2.0474739999999998
	.quad	0x40200ee08f217093              # double 8.0290569999999999
	.quad	0x401c99185cee17a0              # double 7.1495069999999998
	.quad	0x401eb79463cfb331              # double 7.6792769999999999
	.quad	0x40226c447c30d307              # double 9.2114600000000006
	.quad	0x4019e94dd72367e4              # double 6.4778359999999999
	.quad	0x40233e5b8561d430              # double 9.6217919999999992
	.quad	0x401b2a19008205ff              # double 6.7911109999999999
	.quad	0x401d78fc504816f0              # double 7.36815
	.quad	0x4022132db1e9f278              # double 9.0374580000000009
	.quad	0x402352235b4edb2f              # double 9.6604259999999992
	.quad	0x401c2e5bc87db2b3              # double 7.0452719999999998
	.quad	0x40130f359ff4fd6d              # double 4.7648529999999996
	.quad	0x3ff8e11dbca9691a              # double 1.5549599999999999
	.quad	0x4010fd46f587d6f9              # double 4.2473409999999996
	.quad	0x400dd10129cbab65              # double 3.7270530000000002
	.quad	0x401e44da4ce8101f              # double 7.5672389999999998
	.quad	0x3ffa52f4cf4a558f              # double 1.6452530000000001
	.quad	0x400bc03eea209aaa              # double 3.4688699999999999
	.quad	0x401f0214f0520d13              # double 7.7520329999999999
	.quad	0x4022f5b9e8c47a18              # double 9.479934
	.quad	0x401d4a0407cc7d1c              # double 7.3222810000000003
	.quad	0x4014edbe7f2c300a              # double 5.2321720000000003
	.quad	0x401070563ed0f627              # double 4.1097039999999998
	.quad	0x3ff35e603d577964              # double 1.2105410000000001
	.quad	0x40075de050374ff8              # double 2.9208379999999998
	.quad	0x401710691ea78af4              # double 5.7660260000000001
	.quad	0x401ca1e108c3f3e0              # double 7.1580849999999998
	.quad	0x40193d6cf850df16              # double 6.3099860000000003
	.quad	0x4021aaff8ec0f883              # double 8.8339809999999996
	.quad	0x3ff6d4a7f8012dfd              # double 1.4269179999999999
	.quad	0x3ffe59cbee807bbb              # double 1.8969229999999999
	.quad	0x40165d2cbea4ebdd              # double 5.5909909999999998
	.quad	0x4003b7036c9c0a8d              # double 2.4643619999999999
	.quad	0x401a529888f861a6              # double 6.58066
	.quad	0x400ee0ab71327243              # double 3.859702
	.quad	0x3ff54b1572580c31              # double 1.3308310000000001
	.quad	0x401b691fb3fa6df0              # double 6.8526600000000002
	.quad	0x3ffa4dfaca361998              # double 1.6440380000000001
	.quad	0x401cf214f0520d13              # double 7.236408
	.quad	0x40000f9335d249e4              # double 2.0076049999999999
	.quad	0x401eadea033e78e2              # double 7.6698380000000004
	.quad	0x401183ee5eedcc21              # double 4.3788390000000001
	.quad	0x400cac226809d495              # double 3.58405
	.quad	0x40125060780fdc16              # double 4.5784929999999999
	.quad	0x401758aeb80ecfa7              # double 5.8366040000000003
	.quad	0x3fdd235f80991794              # double 0.45528400000000002
	.quad	0x40131fc43b2dd378              # double 4.7810220000000001
	.quad	0x401e25e892253112              # double 7.5370200000000001
	.quad	0x401aadf69878316a              # double 6.669886
	.quad	0x400554d9c6b0531a              # double 2.6664310000000002
	.quad	0x3fb23571d1d4738a              # double 0.071127999999999997
	.quad	0x4001580ecfa69be1              # double 2.1679970000000002
	.quad	0x4000d6f21f6cacd2              # double 2.1049540000000002
	.quad	0x4002915054ac29bf              # double 2.320954
	.quad	0x4021063f9a49c2c2              # double 8.5122040000000005
	.quad	0x401ce308bb906467              # double 7.2217130000000003
	.quad	0x400272f01754b05b              # double 2.3061219999999998
	.quad	0x401031a86940357a              # double 4.0484939999999998
	.quad	0x4023e563ed0f6274              # double 9.9480280000000007
	.quad	0x401881f42bb66730              # double 6.1269080000000002
	.quad	0x401e31bde82d7b63              # double 7.5485759999999997
	.quad	0x4020437542a23c00              # double 8.1317540000000008
	.quad	0x40157f8fcd67fd3f              # double 5.3745719999999997
	.quad	0x401b8942d490e66d              # double 6.8840440000000003
	.quad	0x4016642528ae74f3              # double 5.5977980000000001
	.quad	0x3ffc18cb07d0aeda              # double 1.7560530000000001
	.quad	0x401347f84449dbec              # double 4.8202829999999999
	.quad	0x401b715d701d9f4d              # double 6.8607079999999998
	.quad	0x402350d887ebf22c              # double 9.6579019999999999
	.quad	0x3feafda61e0c5a81              # double 0.84346299999999996
	.quad	0x4014f2fcac8e68e4              # double 5.2372920000000001
	.quad	0x3fe12e924f227d03              # double 0.53693500000000005
	.quad	0x3f4a36e2eb1c432d              # double 8.0000000000000004E-4
	.quad	0x400411e85fd04a30              # double 2.5087440000000001
	.quad	0x40236ec39799e519              # double 9.716336
	.quad	0x4013f8c64fdb09a6              # double 4.9929439999999996
	.quad	0x4004475f6fd21ff3              # double 2.53485
	.quad	0x400c0d5410f94c88              # double 3.5065080000000002
	.quad	0x4023d41c8216c615              # double 9.9142799999999997
	.quad	0x400d5d7774aba387              # double 3.6706379999999998
	.quad	0x401a8108c3f3e037              # double 6.62601
	.quad	0x400f46a65cf67b1c              # double 3.909497
	.quad	0x3ffab77079e59f2c              # double 1.6697850000000001
	.quad	0x40213fb9170d62bf              # double 8.6244589999999999
	.quad	0x3fb29bf162ae4b02              # double 0.072692000000000007
	.quad	0x40226d22856605ee              # double 9.2131539999999994
	.quad	0x401deaf46aa087ca              # double 7.4794479999999997
	.quad	0x3ff35fdcdf698783              # double 1.210904
	.quad	0x4016330ad46f587d              # double 5.5498459999999996
	.quad	0x401bcd9e40c8472c              # double 6.9507989999999999
	.quad	0x40115d65e4606749              # double 4.3412090000000001
	.quad	0x401ca7460242d05f              # double 7.1633529999999999
	.quad	0x400a4b324851a869              # double 3.2867169999999999
	.quad	0x3ffcdf3300de4c51              # double 1.804492
	.quad	0x4006e351deefe500              # double 2.8609960000000001
	.quad	0x401a6ed8904f6dfc              # double 6.6082479999999997
	.quad	0x401e58655193708b              # double 7.5863240000000002
	.quad	0x4012a10385c67dfe              # double 4.6572399999999998
	.quad	0x3fc73c9abb01c92e              # double 0.181537
	.quad	0x40179ef0f16f4385              # double 5.9052160000000002
	.quad	0x4011e94898f605ab              # double 4.4778159999999998
	.quad	0x402028116ebd4cfd              # double 8.0782579999999999
	.quad	0x402277c393682731              # double 9.2339140000000004
	.quad	0x3ff991a86940357a              # double 1.598061
	.quad	0x4019d923a29c779a              # double 6.4620499999999996
	.quad	0x4002acbd987c6328              # double 2.334346
	.quad	0x401a059641f64495              # double 6.5054559999999997
	.quad	0x401dacb039ef0f17              # double 7.418641
	.quad	0x4012294141e9af5c              # double 4.5402880000000003
	.quad	0x4022750092ccf6be              # double 9.2285199999999996
	.quad	0x4012968661ae70c1              # double 4.6469969999999998
	.quad	0x402074b1ab0856e7              # double 8.2279180000000007
	.quad	0x401002ba5a038195              # double 4.0026640000000002
	.quad	0x3ffc0d66f0cfe154              # double 1.7532719999999999
	.quad	0x401883b3636f3b21              # double 6.1286139999999998
	.quad	0x401131db0142f61f              # double 4.2986870000000001
	.quad	0x4010c1cc532a4980              # double 4.1892560000000003
	.quad	0x40219a8b8f14db59              # double 8.8018459999999994
	.quad	0x40081da059a73b43              # double 3.0144660000000001
	.quad	0x4016932f01754b06              # double 5.6437340000000003
	.quad	0x400774afd5454153              # double 2.9319760000000001
	.quad	0x401f221ab4b72c52              # double 7.7833050000000004
	.quad	0x4015a84901d19158              # double 5.4143410000000003
	.quad	0x4017f1eb851eb852              # double 5.9862500000000001
	.quad	0x400615a07b352a84              # double 2.7605599999999999
	.quad	0x402288f7985271bd              # double 9.2675140000000003
	.quad	0x400d6cb74ddf86e4              # double 3.6780840000000001
	.quad	0x4015b62c77574f72              # double 5.4279039999999998
	.quad	0x401336d04e618ce3              # double 4.8035290000000002
	.quad	0x3fe6b28d8665e02f              # double 0.70929600000000004
	.quad	0x401fbf90d9d7774b              # double 7.9370760000000002
	.quad	0x3ff0a39e6ab9b23e              # double 1.039946
	.quad	0x400a3587d6f97679              # double 3.276138
	.quad	0x40086c9fb6134ce4              # double 3.0530390000000001
	.quad	0x400a30574b407033              # double 3.2736040000000002
	.quad	0x401bd1b823c85c25              # double 6.9548040000000002
	.quad	0x4008eb91b3f20a74              # double 3.115024
	.quad	0x3ff9cadeebb341e1              # double 1.6120289999999999
	.quad	0x4021c7c6540cc78f              # double 8.8901850000000007
	.quad	0x401a496b3354c122              # double 6.5716979999999996
	.quad	0x401d7c3efae7924b              # double 7.3713340000000001
	.quad	0x402194be61cffeb0              # double 8.7905149999999992
	.quad	0x401b70e560418937              # double 6.8602499999999997
	.quad	0x3ff69a3a08398a65              # double 1.4126529999999999
	.quad	0x4020a96ce789e775              # double 8.3309090000000001
	.quad	0x400769bae46cfc83              # double 2.9266260000000002
	.quad	0x4020899c38b04ab6              # double 8.26877
	.quad	0x40066e4f3343fa2b              # double 2.8038620000000001
	.quad	0x401700fbeb9e492c              # double 5.7509610000000002
	.quad	0x3ff4e7ac81d3aa37              # double 1.3065610000000001
	.quad	0x3fbd5379fa97e133              # double 0.114555
	.quad	0x401ad570c564f97f              # double 6.7084380000000001
	.quad	0x400d705af6c69b5a              # double 3.6798609999999998
	.quad	0x401705fd47bedb73              # double 5.7558490000000004
	.quad	0x40054372606fac60              # double 2.6579329999999999
	.quad	0x40138b8023a6ce36              # double 4.8862310000000004
	.quad	0x40124420f6f08cc5              # double 4.5665319999999996
	.quad	0x4020cd90e23af31b              # double 8.4014959999999999
	.quad	0x4014c4bb1af3a14d              # double 5.1921200000000001
	.quad	0x401e7ed5f138bce0              # double 7.6238630000000001
	.quad	0x401a1599aa60913a              # double 6.5210939999999997
	.quad	0x4020c66fb4c3c18b              # double 8.3875709999999994
	.quad	0x40203728e92d55a4              # double 8.1077340000000006
	.quad	0x401588d2e514c22f              # double 5.3836170000000001
	.quad	0x3ff74d5410f94c88              # double 1.4563790000000001
	.quad	0x401de17720c8cd64              # double 7.4701810000000002
	.quad	0x400e26b2f23033a4              # double 3.7688959999999998
	.quad	0x4011ef5c28f5c28f              # double 4.4837499999999997
	.quad	0x4006cddaceee0f3d              # double 2.8505150000000001
	.quad	0x40131fad6cb53501              # double 4.7809350000000004
	.quad	0x400d66338b47c73f              # double 3.674903
	.quad	0x400ee2bcf91a32b1              # double 3.8607119999999999
	.quad	0x401678c9b845564b              # double 5.6179569999999996
	.quad	0x4017eae147ae147b              # double 5.9793750000000001
	.quad	0x3fe2f41f212d7732              # double 0.59230000000000005
	.quad	0x40101fe3b03e20cd              # double 4.031142
	.quad	0x3ff6b3471f79420b              # double 1.4187689999999999
	.quad	0x3ff6b8e3ac0c62e5              # double 1.420139
	.quad	0x4003c016052502ef              # double 2.4687920000000001
	.quad	0x3ffe053f39d1b2e6              # double 1.8762810000000001
	.quad	0x402352af9a8cdea0              # double 9.6614959999999996
	.quad	0x401f584f4c6e6d9c              # double 7.8362400000000001
	.quad	0x3ffb406c00da1a93              # double 1.703228
	.quad	0x40165af42784a948              # double 5.5888220000000004
	.quad	0x3ff6b80cb6c7a7ca              # double 1.419934
	.quad	0x3fe33f65dbfceb79              # double 0.60148900000000005
	.quad	0x400b0afbc1acde1a              # double 3.380363
	.quad	0x4021686cebbba55d              # double 8.7039559999999998
	.quad	0x3fefd4f3775b8130              # double 0.99474499999999999
	.quad	0x4014f2189bd8383b              # double 5.2364220000000001
	.quad	0x401015b2d4d4024b              # double 4.0211899999999998
	.quad	0x3feb1ec0b567557a              # double 0.84750400000000004
	.quad	0x4021813f290abb45              # double 8.7524350000000002
	.quad	0x401948c5004fb118              # double 6.3210639999999998
	.quad	0x4014d67f90d9d777              # double 5.2094709999999997
	.quad	0x3ffe0489d27c3937              # double 1.8761080000000001
	.quad	0x4023cdc4007570c5              # double 9.9018859999999992
	.quad	0x402252322af57710              # double 9.160539
	.quad	0x40234674f2f123c4              # double 9.6376109999999997
	.quad	0x4017168cac4b4d05              # double 5.7720209999999996
	.quad	0x3ff741a9b8cb8e08              # double 1.4535309999999999
	.quad	0x400061e364bec67a              # double 2.0477970000000001
	.quad	0x401eda6e75ff609e              # double 7.7133120000000002
	.quad	0x40107eca686e7e63              # double 4.1238190000000001
	.quad	0x40232fea3df6db94              # double 9.5935839999999998
	.quad	0x4010d1ef30a4e37a              # double 4.2050140000000003
	.quad	0x401537e34b945309              # double 5.3045780000000002
	.quad	0x400a001040bfe3b0              # double 3.2500309999999999
	.quad	0x401d9d04e618ce2d              # double 7.4033389999999999
	.quad	0x4007f0153bd16766              # double 2.9922279999999999
	.quad	0x401ebbe1650a45d4              # double 7.6834769999999999
	.quad	0x4005e52ce032db1f              # double 2.7369020000000002
	.quad	0x401cbb68cef672b9              # double 7.1830170000000004
	.quad	0x4021d385c67dfe33              # double 8.9131300000000007
	.quad	0x3ff0bae9ab29e4d6              # double 1.045633
	.quad	0x401baa9f383f0baf              # double 6.9166230000000004
	.quad	0x4021f36523704791              # double 8.9753810000000005
	.quad	0x4020058793dd97f6              # double 8.0107999999999997
	.quad	0x3fde008637bd05af              # double 0.46878199999999998
	.quad	0x3ffb5183b60285ec              # double 1.7074009999999999
	.quad	0x40212f2ead9274e2              # double 8.5921529999999997
	.quad	0x401ab3e0bd44998d              # double 6.675662
	.quad	0x400840d1b71758e2              # double 3.03165
	.quad	0x3fefeeac8605681f              # double 0.99788500000000002
	.quad	0x4017430446b69db6              # double 5.8154459999999997
	.quad	0x40039f7f8ca8198f              # double 2.4528799999999999
	.quad	0x4018e84ba0e84274              # double 6.2268509999999999
	.quad	0x3fde3dd97f62b6ae              # double 0.47252499999999997
	.quad	0x401380c4dec1c1d7              # double 4.8757510000000002
	.quad	0x401eb4b838c111ae              # double 7.6764840000000003
	.quad	0x401632afdda8bd23              # double 5.549499
	.quad	0x400a30b84988094e              # double 3.2737889999999998
	.quad	0x4015533b10774688              # double 5.3312799999999996
	.quad	0x400c350092ccf6be              # double 3.5258799999999999
	.quad	0x40082d7a56de3327              # double 3.0222060000000002
	.quad	0x4007dc7e6b3fe9fb              # double 2.9826630000000001
	.quad	0x3fd988c60cbf2b24              # double 0.39897300000000002
	.quad	0x3ff4ed20296b3355              # double 1.3078920000000001
	.quad	0x401e275360d02470              # double 7.5384039999999999
	.quad	0x402317e2c55c9603              # double 9.5466519999999999
	.quad	0x4010557eaa2a0a96              # double 4.0834910000000004
	.quad	0x40009f43419e3001              # double 2.0777649999999999
	.quad	0x40169bf0995aaf79              # double 5.652285
	.quad	0x40077aeff5c6c11a              # double 2.935028
	.quad	0x400500bdcad14a0a              # double 2.625362
	.quad	0x401b161ed5ae1cde              # double 6.7716019999999997
	.quad	0x4017acb9ecf63800              # double 5.9186779999999999
	.quad	0x4010704039abf338              # double 4.1096199999999996
	.quad	0x401416b15f88fc93              # double 5.0221609999999997
	.quad	0x402024842fa50939              # double 8.0713209999999993
	.quad	0x4023a9d40ee06d94              # double 9.8316960000000008
	.quad	0x402306c4a4095f24              # double 9.5132189999999994
	.quad	0x4013c6d8b1dd5d3e              # double 4.9441860000000002
	.quad	0x3ff26b7ed41b75a7              # double 1.1512439999999999
	.quad	0x400cf8676a7264a1              # double 3.6212909999999998
	.quad	0x40221ba775fb2ee0              # double 9.0540120000000002
	.quad	0x3ff1917c5ef62f9d              # double 1.0980190000000001
	.quad	0x40092e6c8f755369              # double 3.1476679999999999
	.quad	0x401df398201cd5fa              # double 7.4878850000000003
	.quad	0x40194ccf6be37de9              # double 6.3250099999999998
	.quad	0x402108bf7f06705d              # double 8.5170860000000008
	.quad	0x40135b8bef8ceb35              # double 4.8394009999999996
	.quad	0x40130d61f5be5d9e              # double 4.7630689999999998
	.quad	0x4001beb9e492bc30              # double 2.2181280000000001
	.quad	0x401acf0f9d2bf551              # double 6.7022079999999997
	.quad	0x4022e931a8ef77f2              # double 9.4554569999999991
	.quad	0x4016db0292817764              # double 5.7138770000000001
	.quad	0x400ae87b99d451fc              # double 3.3635169999999999
	.quad	0x401cc57de0d66f0d              # double 7.192863
	.quad	0x4019b88ce703afb8              # double 6.4302250000000001
	.quad	0x40221147ae147ae1              # double 9.0337499999999995
	.quad	0x4017f1e68a0d349c              # double 5.9862310000000001
	.quad	0x4010f8f605ab3aac              # double 4.2431260000000002
	.quad	0x40069891e215336e              # double 2.824497
	.quad	0x4022c6c093d96638              # double 9.3881879999999995
	.quad	0x3ff08bcbe61cffeb              # double 1.03413
	.quad	0x3fef17b30f8c64fe              # double 0.97164300000000003
	.quad	0x3fb8e94ee392e1ef              # double 0.097309999999999994
	.quad	0x402215f71eafee70              # double 9.0429010000000005
	.quad	0x4013601bc98a222d              # double 4.8438559999999997
	.quad	0x401348dbcec84f90              # double 4.8211510000000004
	.quad	0x3fe8aebe596c82e0              # double 0.77133099999999998
	.quad	0x401f38d5410f94c8              # double 7.8055009999999995
	.quad	0x40213064ece9a2c6              # double 8.5945199999999993
	.quad	0x3ff5cfbeb9e492bc              # double 1.363219
	.quad	0x4022de8d32830a0b              # double 9.4346709999999998
	.quad	0x401a64067cf1c326              # double 6.5976809999999997
	.quad	0x3ff1781626b2f230              # double 1.091818
	.quad	0x40001f6f4be835df              # double 2.0153490000000001
	.quad	0x3ffcf775b8130165              # double 1.8104150000000001
	.quad	0x3fe0b9ef0f16f438              # double 0.52269699999999997
	.quad	0x401e648387df5cf2              # double 7.5981579999999997
	.quad	0x401a7b32ce89656f              # double 6.6203110000000001
	.quad	0x40111bd72bcb5fe5              # double 4.2771879999999998
	.quad	0x401a757d1782d384              # double 6.6147349999999996
	.quad	0x40176cffeb074a77              # double 5.8564449999999999
	.quad	0x40225cb2745bf26f              # double 9.1810489999999998
	.quad	0x401e200abf76a2f5              # double 7.5312910000000004
	.quad	0x40011084e831ad21              # double 2.1330659999999999
	.quad	0x40226b404ea4a8c1              # double 9.2094749999999994
	.quad	0x4014e0af5fd47bee              # double 5.2194190000000003
	.quad	0x401e943ed959a30a              # double 7.6447710000000004
	.quad	0x401d2f79420b3d4b              # double 7.2963610000000001
	.quad	0x3fd32c6ef3d3a1d3              # double 0.29958699999999999
	.quad	0x400ff4330d73860a              # double 3.9942380000000002
	.quad	0x3fff1d0b73d188f4              # double 1.944591
	.quad	0x40036a854477ff15              # double 2.4270119999999999
	.quad	0x4001727dcbddb984              # double 2.180904
	.quad	0x401388954a7f8013              # double 4.8833820000000001
	.quad	0x402258ee8d10f51b              # double 9.1736950000000004
	.quad	0x40202c4cdfaca362              # double 8.0865240000000007
	.quad	0x3ffebf2c3009b307              # double 1.921673
	.quad	0x3fe1bd31b9b66f93              # double 0.55434499999999998
	.quad	0x400f89bc77143394              # double 3.9422540000000001
	.quad	0x400bdf727136a401              # double 3.484105
	.quad	0x40094b0c026cc1ca              # double 3.1616439999999999
	.quad	0x3ff86e3821af7d31              # double 1.5269090000000001
	.quad	0x40126269595feda6              # double 4.5961049999999997
	.quad	0x3fc2372606fac604              # double 0.14230799999999999
	.quad	0x3ffb8012dfd694cd              # double 1.7187680000000001
	.quad	0x40236ea747d805e6              # double 9.7161200000000001
	.quad	0x401c5acc4ef88b97              # double 7.0886699999999996
	.quad	0x3ff906eb0b7c3505              # double 1.5641890000000001
	.quad	0x401b1a3a08398a65              # double 6.7756119999999997
	.quad	0x3fec73365881a155              # double 0.88906399999999997
	.quad	0x400e74c22ee4191a              # double 3.8070110000000001
	.quad	0x3ffb1113836a832c              # double 1.6916690000000001
	.quad	0x4012ad6b228dc982              # double 4.6693540000000002
	.quad	0x401dc83a109d0636              # double 7.4455340000000003
	.quad	0x4011e0539fba450b              # double 4.4690690000000002
	.quad	0x4004601abd1aa822              # double 2.546926
	.quad	0x3ffe3380cb6c7a7d              # double 1.8875740000000001
	.quad	0x4022e0e5a35d67ba              # double 9.4392519999999998
	.quad	0x3f956c0d6f544bb2              # double 0.020920000000000001
	.quad	0x400553f9e7b80a9e              # double 2.666004
	.quad	0x400e931a8ef77f28              # double 3.821828
	.quad	0x3fa9212513b5bf6a              # double 0.049081
	.quad	0x40101e831ad2135e              # double 4.0297970000000003
	.quad	0x4022e5f1172ef0ae              # double 9.4491049999999994
	.quad	0x400bb4d0dcfcc5b9              # double 3.4632890000000001
	.quad	0x4022d93532e7b3d9              # double 9.4242340000000002
	.quad	0x401dc7b7c7820a31              # double 7.4450370000000001
	.quad	0x4019cb8800eae18b              # double 6.4487610000000002
	.quad	0x401743cc8de2ac32              # double 5.8162099999999999
	.quad	0x401c0f5c6c11a112              # double 7.0150009999999998
	.quad	0x40208c8d5c74751d              # double 8.2745160000000002
	.quad	0x402027202107b784              # double 8.0764169999999992
	.quad	0x40238a02b841248d              # double 9.7695519999999991
	.quad	0x3ffe1ec5f394b7b3              # double 1.8825130000000001
	.quad	0x401cb8c9fb6134ce              # double 7.1804579999999998
	.quad	0x3ff42b3bb83cf2d0              # double 1.2605550000000001
	.quad	0x402118d844d013a9              # double 8.5485249999999997
	.quad	0x401b5afd113836a8              # double 6.8388559999999998
	.quad	0x40151819d2391d58              # double 5.273536
	.quad	0x401943810e8858ff              # double 6.3159219999999996
	.quad	0x402232cba732df50              # double 9.0992099999999994
	.quad	0x4011408e581cf788              # double 4.3130430000000004
	.quad	0x401c2ee0b0af5fd4              # double 7.0457789999999996
	.quad	0x401077cb70ac3a86              # double 4.116987
	.quad	0x401d2d5d80e496ee              # double 7.2943020000000001
	.quad	0x4019dfb09203a323              # double 6.4684470000000003
	.quad	0x40201d9ec7000432              # double 8.0578520000000005
	.quad	0x3fb452934acaff6d              # double 0.079384999999999997
	.quad	0x4011de4430b178b3              # double 4.4670569999999996
	.quad	0x4002c897e996312f              # double 2.3479459999999999
	.quad	0x401ae9930be0ded3              # double 6.7281000000000004
	.quad	0x3ff99014b599aa61              # double 1.5976760000000001
	.quad	0x401ebe7fb267c6b9              # double 7.6860340000000002
	.quad	0x40183bf5d78811b2              # double 6.0585550000000001
	.quad	0x402177822bbecaac              # double 8.7334150000000008
	.quad	0x4013fd38cda6e760              # double 4.997287
	.quad	0x4013ad31b9b66f93              # double 4.9191349999999998
	.quad	0x401792e2fbe33acd              # double 5.8934439999999997
	.quad	0x4014139799e518f4              # double 5.0191330000000001
	.quad	0x401578123810e886              # double 5.3672570000000004
	.quad	0x40229bfbbd7b2032              # double 9.3046550000000003
	.quad	0x3ff835ce18266773              # double 1.513136
	.quad	0x40201dd72367e415              # double 8.0582820000000002
	.quad	0x401e04b09e98dcdb              # double 7.5045799999999998
	.quad	0x3fa12a0ec7432010              # double 0.033523999999999998
	.quad	0x4013bd31fcd24e16              # double 4.934761
	.quad	0x4000ccd8dbcec850              # double 2.1000230000000002
	.quad	0x3fe384406c00da1b              # double 0.60989400000000005
	.quad	0x401e8851eb851eb8              # double 7.6331249999999997
	.quad	0x3fd0bcd78c436fc1              # double 0.26152599999999998
	.quad	0x40069d87b56b8738              # double 2.8269190000000002
	.quad	0x4012f2799a1fd157              # double 4.7367920000000003
	.quad	0x4021e6c7a7c9de05              # double 8.950742
	.quad	0x40200ad59d55e6bc              # double 8.0211609999999993
	.quad	0x3ff1be8ab4fa4830              # double 1.109019
	.quad	0x400c0f4517614595              # double 3.5074559999999999
	.quad	0x3ffe7bd8be7296f6              # double 1.9052359999999999
	.quad	0x3ffa2da4484944ed              # double 1.6361429999999999
	.quad	0x400d12dfd694ccab              # double 3.6342159999999999
	.quad	0x401984e8b7e4de3c              # double 6.3797940000000004
	.quad	0x40139b10fd7e4580              # double 4.9014319999999998
	.quad	0x4020516ebd4cfd09              # double 8.1590480000000003
	.quad	0x401a89a1fd1569f5              # double 6.6344070000000004
	.quad	0x4021af59ab6d00b4              # double 8.8424809999999993
	.quad	0x401dd6d330941c82              # double 7.4597899999999999
	.quad	0x400a3609dcf893fb              # double 3.276386
	.quad	0x40179d80e496edee              # double 5.9038120000000003
	.quad	0x40215010c6f7a0b6              # double 8.6563780000000001
	.quad	0x400724816f0068dc              # double 2.8928250000000002
	.quad	0x40082493c89f40a3              # double 3.0178600000000002
	.quad	0x400953f0fe047d3d              # double 3.1659869999999999
	.quad	0x401f034ce3de614a              # double 7.7532230000000002
	.quad	0x40193fdd22856606              # double 6.3123670000000001
	.quad	0x401fae1a8262456f              # double 7.9200229999999995
	.quad	0x3ffb23486f049a99              # double 1.6961139999999999
	.quad	0x401ec42fe82517e7              # double 7.6915889999999995
	.quad	0x401b27ca2120e1f8              # double 6.7888570000000001
	.quad	0x401f93da2f8bdec6              # double 7.894387
	.quad	0x401204e8b7e4de3c              # double 4.5047940000000004
	.quad	0x4015740b780346dc              # double 5.3633249999999997
	.quad	0x4011b308feac42ea              # double 4.4248390000000004
	.quad	0x401420196d8f4f94              # double 5.0313470000000002
	.quad	0x401c6e368f084620              # double 7.1076300000000003
	.quad	0x4001f3e9a6f826ee              # double 2.2440980000000001
	.quad	0x4023522b1704ff43              # double 9.6604849999999995
	.quad	0x40204ae2fbe33acd              # double 8.1462629999999994
	.quad	0x3fa9da16616b54e3              # double 0.050492000000000002
	.quad	0x40017dee78183f92              # double 2.18649
	.quad	0x400fc1e71044f1a2              # double 3.9696790000000002
	.quad	0x401bb7778dd616f8              # double 6.9291669999999996
	.quad	0x401ae0364388ebcc              # double 6.7189569999999996
	.quad	0x400ca0902de00d1b              # double 3.5783999999999998
	.quad	0x400a509d0635a427              # double 3.2893620000000001
	.quad	0x401627214f0520d1              # double 5.5382129999999998
	.quad	0x40050088509bf9c6              # double 2.6252599999999999
	.quad	0x400c1ac1d29dc726              # double 3.5130650000000001
	.quad	0x3ff2f97fe8ee6b83              # double 1.185913
	.quad	0x400b2497fa5d28d0              # double 3.392868
	.quad	0x40214b3df2a9d628              # double 8.6469570000000004
	.quad	0x4021012ab68cef67              # double 8.5022789999999997
	.quad	0x400cd9d0a67620ef              # double 3.6063550000000002
	.quad	0x3ffb67503b81b64e              # double 1.712723
	.quad	0x3fefd5e071c53f3a              # double 0.99485800000000002
	.quad	0x3ff62ca46e08f217              # double 1.385899
	.quad	0x40167a558ea7ce10              # double 5.6194670000000002
	.quad	0x400cfb2a27f1b691              # double 3.6226389999999999
	.quad	0x40098ea747d805e6              # double 3.194655
	.quad	0x4012a66d7a56de33              # double 4.6625269999999999
	.quad	0x3ffe716e37154003              # double 1.902693
	.quad	0x401864927913e814              # double 6.0982149999999997
	.quad	0x3fff771fbc5de9c0              # double 1.966583
	.quad	0x3f7523b3636f3b21              # double 0.0051609999999999998
	.quad	0x40221b14ec204f2b              # double 9.0528940000000002
	.quad	0x400f5d1351159c49              # double 3.9204469999999998
	.quad	0x40221a7e0ef99807              # double 9.0517430000000001
	.quad	0x3fe3b369b9d7fd82              # double 0.61565099999999995
	.quad	0x3ffe05d851654d62              # double 1.8764270000000001
	.quad	0x4014aeabbcb1cc96              # double 5.1705769999999998
	.quad	0x401dd15097c80842              # double 7.4544090000000001
	.quad	0x40221b775b813016              # double 9.0536449999999995
	.quad	0x400ce36f3b213e3e              # double 3.6110519999999999
	.quad	0x40081136a400fba9              # double 3.0084050000000002
	.quad	0x400e391148fd9fd3              # double 3.7778649999999998
	.quad	0x40197d36f7e3d1cc              # double 6.3722799999999999
	.quad	0x4022f9d68c692f6f              # double 9.4879650000000008
	.quad	0x4012a92ee84ad795              # double 4.6652180000000003
	.quad	0x401bd0247021d10b              # double 6.9532639999999999
	.quad	0x40207fcfa26a22b4              # double 8.2496310000000008
	.quad	0x400fd5e6bc621b7e              # double 3.979444
	.quad	0x3fdfe364bec679cc              # double 0.49825399999999997
	.quad	0x401c7318fc504817              # double 7.1124000000000001
	.quad	0x400eac3dab5c39bd              # double 3.8341020000000001
	.quad	0x40103bcd35a85879              # double 4.0583999999999998
	.quad	0x4001e98e53eb399f              # double 2.2390409999999998
	.quad	0x401a4eb313be22e6              # double 6.5768550000000001
	.quad	0x4005a7b99d451fc5              # double 2.7068970000000001
	.quad	0x4017ae6256366d7a              # double 5.9202969999999997
	.quad	0x4013e0a808c8259e              # double 4.9693909999999999
	.quad	0x400b53d4ae429e0a              # double 3.4159329999999999
	.quad	0x3fc787b56b873797              # double 0.18382899999999999
	.quad	0x400c043c3a42f1ed              # double 3.502068
	.quad	0x4007ebfb9bed30f0              # double 2.9902259999999998
	.quad	0x400fed0d49949e88              # double 3.990748
	.quad	0x401bba737110e454              # double 6.9320810000000002
	.quad	0x401fed944aa53fc0              # double 7.982011
	.quad	0x40235150331e3a7e              # double 9.6588150000000006
	.quad	0x4013dbc8c0ce91c9              # double 4.9646330000000001
	.quad	0x3fdeb48d3ae685db              # double 0.47976999999999997
	.quad	0x401a06e32e3821af              # double 6.5067259999999996
	.quad	0x400e57f38c5436b9              # double 3.792945
	.quad	0x3fb1322f2734f82f              # double 0.067171999999999996
	.quad	0x4009c298cc144029              # double 3.220018
	.quad	0x400794280ae10492              # double 2.9473419999999999
	.quad	0x3fee539fba450acc              # double 0.94770799999999999
	.quad	0x3fe6b126e978d4fe              # double 0.70912500000000001
	.quad	0x4015b58c4bd33d29              # double 5.4272929999999997
	.quad	0x4023c02e2328f9f4              # double 9.8753519999999994
	.quad	0x3fe2fa76534373f3              # double 0.59307399999999999
	.quad	0x40188a2c2374794f              # double 6.1349340000000003
	.quad	0x40144202d9cf13cf              # double 5.0644640000000001
	.quad	0x4022ba0791c4b902              # double 9.3633389999999999
	.quad	0x4021a3e5b8561d43              # double 8.820112
	.quad	0x4023624b33daf8df              # double 9.6919799999999991
	.quad	0x4017fb77c02afddb              # double 5.9955740000000004
	.quad	0x4023b15feda66128              # double 9.8464349999999996
	.quad	0x401d62d1287c200c              # double 7.3465009999999999
	.quad	0x3feb79ca5bd944aa              # double 0.85861699999999996
	.quad	0x4023ee603d577964              # double 9.9655780000000007
	.quad	0x401de675ddd2ae8e              # double 7.4750589999999999
	.quad	0x4022149774256bca              # double 9.0402179999999994
	.quad	0x4001fca5375c8da0              # double 2.2483620000000002
	.quad	0x3ff9abb8800eae19              # double 1.6044240000000001
	.quad	0x4014d6c226809d49              # double 5.2097249999999997
	.quad	0x401e976188b1140a              # double 7.6478330000000003
	.quad	0x40238a4b33daf8df              # double 9.7701049999999991
	.quad	0x40016aa7589efd87              # double 2.1770770000000002
	.quad	0x3fff39a8cdea033e              # double 1.9515769999999999
	.quad	0x3ff2f98958d9b5e9              # double 1.1859219999999999
	.quad	0x401e3f22c01e68a1              # double 7.5616560000000001
	.quad	0x40009f9378ee2867              # double 2.0779179999999999
	.quad	0x3ff0d2e514c22ee4              # double 1.051488
	.quad	0x401ddd8f4f93bc0a              # double 7.466367
	.quad	0x4014f8e864020818              # double 5.243074
	.quad	0x4008731876188b11              # double 3.0561989999999999
	.quad	0x3ff8873797460243              # double 1.533012
	.quad	0x40138692b3cc4ac7              # double 4.8814190000000002
	.quad	0x40079a02fb5d0310              # double 2.9502009999999999
	.quad	0x401b9521dda059a7              # double 6.8956369999999998
	.quad	0x40033b8f57f737da              # double 2.4040819999999998
	.quad	0x401887325918a00a              # double 6.132028
	.quad	0x40036ad81adea897              # double 2.4271699999999998
	.quad	0x3febd8eeae9ee45c              # double 0.87023099999999997
	.quad	0x401b5b5a63f9a49c              # double 6.8392119999999998
	.quad	0x40205f2324c83665              # double 8.1858149999999998
	.quad	0x40015c45cbbc2b95              # double 2.1700550000000001
	.quad	0x401e55ae1cde5d18              # double 7.5836719999999999
	.quad	0x4019bd4801f75105              # double 6.4348450000000001
	.quad	0x400cb1b93037d630              # double 3.5867789999999999
	.quad	0x4015da90cd423d92              # double 5.4634429999999998
	.quad	0x401b964dc22ab25b              # double 6.8967809999999998
	.quad	0x401aea8d21bc126a              # double 6.7290539999999996
	.quad	0x401799c5e6ff7dfa              # double 5.900169
	.quad	0x40230d5e4a383276              # double 9.5261099999999992
	.quad	0x3fdd8088509bf9c6              # double 0.46096999999999999
	.quad	0x40005b9170d62bf1              # double 2.0447109999999999
	.quad	0x3fde52502eec7c95              # double 0.47377399999999997
	.quad	0x4023e5e7c8d19589              # double 9.9490339999999992
	.quad	0x40031c84b5dcc63f              # double 2.388925
	.quad	0x4021f58afc47e49b              # double 8.9795759999999998
	.quad	0x401887d2c7b890d6              # double 6.1326400000000003
	.quad	0x401eca2c2374794f              # double 7.6974340000000003
	.quad	0x40158aa3f034b0e2              # double 5.3853910000000003
	.quad	0x401405eaab042529              # double 5.0057780000000003
	.quad	0x401a8b6c7a7c9de0              # double 6.6361559999999997
	.quad	0x40216f22e1ac57e2              # double 8.7170629999999996
	.quad	0x4002ef9fcb0c026d              # double 2.3670040000000001
	.quad	0x401e1117720c8cd6              # double 7.5166909999999998
	.quad	0x40202222f6a50d6b              # double 8.0666729999999998
	.quad	0x3fd821f2990f301f              # double 0.37707200000000002
	.quad	0x40160886df82b1f7              # double 5.5083270000000004
	.quad	0x3fc01f53825e13b2              # double 0.12595600000000001
	.quad	0x400ddb6ed677707a              # double 3.732145
	.quad	0x4013168a936c58ef              # double 4.7720130000000003
	.quad	0x400fd901083dbc23              # double 3.9809589999999999
	.quad	0x4021b6cacd184c27              # double 8.8570159999999998
	.quad	0x3ffe6b6284599674              # double 1.9012169999999999
	.quad	0x3febafd75e2046c7              # double 0.86521499999999996
	.quad	0x4011e6defc7a3982              # double 4.47546
	.quad	0x3fe890f51ac9afe2              # double 0.76769500000000002
	.quad	0x3ff2ba2df9378ee3              # double 1.1704540000000001
	.quad	0x40007eccc46950fc              # double 2.0619139999999998
	.quad	0x4011402539756c94              # double 4.3126420000000003
	.quad	0x3fe4fb0d51f81a58              # double 0.65564599999999995
	.quad	0x4010a1d8622c4502              # double 4.1580519999999996
	.quad	0x3fd5ebc408d8ec96              # double 0.34251500000000001
	.quad	0x3f61b1d92b7fe08b              # double 0.00216
	.quad	0x3ffc59ba1b1960fa              # double 1.771906
	.quad	0x3ff58f5e41d4b6a6              # double 1.347502
	.quad	0x400558f3eccc4695              # double 2.668434
	.quad	0x402068262456f75e              # double 8.2034160000000007
	.quad	0x4016056191148fda              # double 5.505255
	.quad	0x400326ba493c89f4              # double 2.39391
	.quad	0x40018cc46950fc72              # double 2.1937340000000001
	.quad	0x401bd0fdc1615ec0              # double 6.9540930000000003
	.quad	0x3fe4298aa8650e78              # double 0.63007100000000005
	.quad	0x401b50a808c8259e              # double 6.8287659999999999
	.quad	0x401c352263d816ad              # double 7.0518890000000001
	.quad	0x3fd1d1a21ea35936              # double 0.27842
	.quad	0x3fb9f91600f34507              # double 0.10145700000000001
	.quad	0x40115143bf727137              # double 4.3293600000000003
	.quad	0x401ae5421c044285              # double 6.7238850000000001
	.quad	0x40131724b76f6d76              # double 4.7726009999999999
	.quad	0x40179440f2389720              # double 5.8947789999999998
	.quad	0x4001c9a027525461              # double 2.2234500000000001
	.quad	0x401a552a84380885              # double 6.58317
	.quad	0x4016ca6117720c8d              # double 5.6976360000000001
	.quad	0x401a2c26138fffbd              # double 6.5431140000000001
	.quad	0x4018da6e32e3821b              # double 6.213311
	.quad	0x40052b73d188f430              # double 2.646217
	.quad	0x4019557bc7f77af6              # double 6.3334799999999998
	.quad	0x4015b68db8bac711              # double 5.4282750000000002
	.quad	0x401526ee30caa327              # double 5.2880180000000001
	.quad	0x401b84c165907d91              # double 6.8796439999999999
	.quad	0x401959a4df47f994              # double 6.3375430000000001
	.quad	0x400a98726d04e619              # double 3.3244370000000001
	.quad	0x401a1f01b866e43b              # double 6.5302800000000003
	.quad	0x40209763c31df762              # double 8.2956830000000004
	.quad	0x40214704ddb5525d              # double 8.6387090000000004
	.quad	0x4008970a3d70a3d7              # double 3.07375
	.quad	0x4012ed35653c9abb              # double 4.731649
	.quad	0x3fc88e043a2163fe              # double 0.191834
	.quad	0x401909945b6c3761              # double 6.2593550000000002
	.quad	0x40226d92fb19e732              # double 9.2140120000000003
	.quad	0x3fc495208e150119              # double 0.160801
	.quad	0x400fcf0e0a84be40              # double 3.9761009999999999
	.quad	0x4012f7381d7dbf48              # double 4.7414249999999996
	.quad	0x3fe286a4ca4f440b              # double 0.57893600000000001
	.quad	0x3ff0deabbcb1cc96              # double 1.0543629999999999
	.quad	0x3fe54f355cd91eeb              # double 0.66591900000000004
	.quad	0x4020ffda836eb4ea              # double 8.4997140000000009
	.quad	0x3ff665247cb70ac4              # double 1.3996930000000001
	.quad	0x400ab3bc903ea705              # double 3.3377620000000001
	.quad	0x401bb00218def417              # double 6.9218830000000002
	.quad	0x401bd9d30270f388              # double 6.9627189999999999
	.quad	0x3fd71f3a57eaa2a1              # double 0.36128100000000002
	.quad	0x401d05d28d002e23              # double 7.2556859999999999
	.quad	0x400513f1843c3a43              # double 2.634738
	.quad	0x3fb640c8472c0e7c              # double 0.086926000000000003
	.quad	0x400df9b8887229e9              # double 3.746934
	.quad	0x402172f0bf1a5ca3              # double 8.7244930000000007
	.quad	0x4018148e4755ffe7              # double 6.0200740000000001
	.quad	0x401520763a190082              # double 5.281701
	.quad	0x40030aa4b9884c6a              # double 2.3801969999999999
	.quad	0x400e0a9bcfd4bf0a              # double 3.7551800000000002
	.quad	0x40015fc86cebbba5              # double 2.1717689999999998
	.quad	0x401acd35a858793e              # double 6.7004000000000001
	.quad	0x401f6ab21815a07b              # double 7.8541949999999998
	.quad	0x40092647778dd617              # double 3.143691
	.quad	0x401df94680171194              # double 7.4934329999999996
	.quad	0x4005b22f2734f82f              # double 2.7120039999999999
	.quad	0x401090b39192641b              # double 4.1413099999999998
	.quad	0x402363e9ea140571              # double 9.6951440000000008
	.quad	0x4023777c88e79aae              # double 9.7333719999999992
	.quad	0x400184b124d099e1              # double 2.189791
	.quad	0x401cab06c43f5f91              # double 7.1670179999999997
	.quad	0x401f86809d495183              # double 7.8813500000000002
	.quad	0x3ffceb3edd8b60f2              # double 1.8074330000000001
	.quad	0x3fd3ee30caa326e1              # double 0.311413
	.quad	0x4018029b6b2af145              # double 6.0025459999999997
	.quad	0x4021145132f87ad1              # double 8.5396820000000009
	.quad	0x4000dfb69984a0e4              # double 2.109235
	.quad	0x401938de2ac32229              # double 6.3055349999999999
	.quad	0x4000fac9afe1da7b              # double 2.122455
	.quad	0x4012541fa7653437              # double 4.5821519999999998
	.quad	0x3ff8d39da16616b5              # double 1.5516639999999999
	.quad	0x3fdfa8155d5f56a8              # double 0.49463400000000002
	.quad	0x4022bb90a7829069              # double 9.3663380000000007
	.quad	0x4010c013a92a3055              # double 4.1875749999999998
	.quad	0x401824028e4fb97c              # double 6.0351660000000003
	.quad	0x4023f159e6256367              # double 9.9713890000000002
	.quad	0x400d8829cfdd2285              # double 3.6914859999999998
	.quad	0x3ffac9de05037500              # double 1.6742840000000001
	.quad	0x400add206c8711d8              # double 3.3579720000000002
	.quad	0x40038b19a415f45e              # double 2.44292
	.quad	0x40144bf2f5558213              # double 5.0741690000000004
	.quad	0x401a2c7da1ec4e72              # double 6.5434479999999997
	.quad	0x4014219da9c99286              # double 5.0328280000000003
	.quad	0x4023119aa60913a5              # double 9.534383
	.quad	0x40127827b6fe2e6f              # double 4.6173390000000003
	.quad	0x4013d95182a9930c              # double 4.9622250000000001
	.quad	0x4012fb441bb8c32b              # double 4.7453770000000004
	.quad	0x401186ef8055fbb5              # double 4.3817729999999999
	.quad	0x401c278897e99631              # double 7.0386069999999998
	.quad	0x4023e31ca7d6733f              # double 9.9435780000000004
	.quad	0x3ff1db8887229e90              # double 1.1160969999999999
	.quad	0x4020d1f57b41bfbe              # double 8.4100760000000001
	.quad	0x40200b3e9a6f826f              # double 8.0219620000000003
	.quad	0x3fe1e8b19a415f46              # double 0.55965500000000001
	.quad	0x40147b430f49491f              # double 5.1203729999999998
	.quad	0x401e8c0053e2d624              # double 7.6367200000000004
	.quad	0x40067c01a36e2eb2              # double 2.8105500000000001
	.quad	0x4019e376d5497311              # double 6.4721330000000004
	.quad	0x4023a42bb6672fba              # double 9.820646
	.quad	0x3ff6fc02afdda8bd              # double 1.436526
	.quad	0x402043a68b19a416              # double 8.1321300000000001
	.quad	0x4015272c5197a249              # double 5.2882550000000004
	.quad	0x3ff2cf57f737da62              # double 1.175621
	.quad	0x3ffce797891e2153              # double 1.806541
	.quad	0x40034bcdfefbf402              # double 2.4120140000000001
	.quad	0x402035f7e80389f8              # double 8.1054069999999996
	.quad	0x401f26c093d96638              # double 7.7878439999999997
	.quad	0x400f1e8f6cefed63              # double 3.8899219999999999
	.quad	0x40231744f5d35654              # double 9.5454480000000003
	.quad	0x3ff6a231832fcac9              # double 1.414598
	.quad	0x3ff75e9c0229a5ec              # double 1.4605980000000001
	.quad	0x40012a9b499d0204              # double 2.145804
	.quad	0x40091adc8fb86f48              # double 3.1381160000000001
	.quad	0x400f26c4c5974e66              # double 3.8939300000000001
	.quad	0x3fdae1693c03bc4d              # double 0.42000799999999999
	.quad	0x40012c8d5c74751d              # double 2.1467540000000001
	.quad	0x4014db6177ea1c69              # double 5.2142390000000001
	.quad	0x4019c56e696a26e5              # double 6.4428039999999998
	.quad	0x40204e2b063e07a3              # double 8.1526720000000008
	.quad	0x4011b0db2702a348              # double 4.4227109999999996
	.quad	0x401679acffa7eb6c              # double 5.618824
	.quad	0x4023a20902de00d2              # double 9.8164750000000005
	.quad	0x3ff16e6b8305d95e              # double 1.089458
	.quad	0x401d3107b784662c              # double 7.2978810000000003
	.quad	0x4007d05d0fa58f71              # double 2.9767399999999999
	.quad	0x400518efbb0e5e68              # double 2.6371760000000002
	.quad	0x402321904b3c3e75              # double 9.5655540000000005
	.quad	0x40214bbc4d22c882              # double 8.6479210000000002
	.quad	0x402009c79b34a44c              # double 8.0191009999999991
	.quad	0x3ff32045baf533f4              # double 1.195379
	.quad	0x400653f39d1b2e5a              # double 2.7909920000000001
	.quad	0x4013ad13d74d594f              # double 4.9190209999999999
	.quad	0x400186c5d206c871              # double 2.1908069999999999
	.quad	0x3febb161a1db877b              # double 0.86540300000000003
	.quad	0x3ff5275bc44bf4cb              # double 1.322109
	.quad	0x402380fdc1615ec0              # double 9.7519360000000006
	.quad	0x40073a0ad8a11666              # double 2.9033410000000002
	.quad	0x401389780baa582e              # double 4.8842470000000002
	.quad	0x401928cc9a77e5eb              # double 6.2898430000000003
	.quad	0x40214d8c2a454de8              # double 8.6514600000000002
	.quad	0x401b26b228dc981c              # double 6.7877890000000001
	.quad	0x401e6679cc74b839              # double 7.6000740000000002
	.quad	0x40186b124d099e0e              # double 6.1045619999999996
	.quad	0x4021bb879c4113c7              # double 8.8662690000000008
	.quad	0x3fe1a5b9628cbd12              # double 0.55147999999999997
	.quad	0x400b8b11409a2403              # double 3.442904
	.quad	0x4003a0181e03f706              # double 2.4531710000000002
	.quad	0x400eefa1e3eaf683              # double 3.8670079999999998
	.quad	0x401dd183f91e646f              # double 7.4546049999999999
	.quad	0x4022741743e963dc              # double 9.2267399999999994
	.quad	0x4020c2a2c2374795              # double 8.3801480000000002
	.quad	0x401cfcfd08d4bad8              # double 7.2470590000000001
	.quad	0x40043f36262cba73              # double 2.5308649999999999
	.quad	0x4018dac710cb295f              # double 6.2136500000000003
	.quad	0x401ff3b3636f3b21              # double 7.9879889999999997
	.quad	0x402290a6b93ccd10              # double 9.2825220000000002
	.quad	0x40116ad080b673c5              # double 4.354311
	.quad	0x4023aeeb91b3f20a              # double 9.8416409999999992
	.quad	0x400be9eecbfb15b5              # double 3.4892249999999998
	.quad	0x3fb681a9b8cb8e08              # double 0.087915999999999994
	.quad	0x40213fef9db22d0e              # double 8.6248749999999994
	.quad	0x40181ad8e4324420              # double 6.0262180000000001
	.quad	0x3fc3688bda9435ad              # double 0.15162800000000001
	.quad	0x401f8b641700cd85              # double 7.8861239999999996
	.quad	0x401f8589efd86a90              # double 7.8804090000000002
	.quad	0x4012137542a23c00              # double 4.5190020000000004
	.quad	0x3ff7cad57bc7f77b              # double 1.48702
	.quad	0x4005cabf76a2f48c              # double 2.7239979999999999
	.quad	0x402253f162ae4b02              # double 9.1639510000000008
	.quad	0x3fe2404c8bc9cd3e              # double 0.57034899999999999
	.quad	0x4021ba9691a75cd1              # double 8.8644300000000005
	.quad	0x4023f0055fbb517a              # double 9.9687909999999995
	.quad	0x4013b698bb4d4888              # double 4.9283169999999998
	.quad	0x3fddd3415b1422cd              # double 0.46601900000000002
	.quad	0x3fde8a222d5171e3              # double 0.47718100000000002
	.quad	0x3ff72a5e785b5b70              # double 1.4478439999999999
	.quad	0x40027e9fadafd114              # double 2.3118280000000002
	.quad	0x40230bfc6540cc79              # double 9.5234100000000001
	.quad	0x401ec26aa8eb4635              # double 7.6898600000000003
	.quad	0x401a869728a61177              # double 6.6314359999999999
	.quad	0x40186e8b7e4de3b9              # double 6.1079540000000003
	.quad	0x4022c9e9d0e991ff              # double 9.3943619999999992
	.quad	0x40138f6512a94ff0              # double 4.890034
	.quad	0x40234a46e08f2171              # double 9.6450720000000007
	.quad	0x40165f623076c051              # double 5.5931480000000002
	.quad	0x40154e731d2e0e30              # double 5.3266109999999998
	.quad	0x4020dc49ba5e353f              # double 8.4302499999999991
	.quad	0x4023e28dc981beb2              # double 9.9424880000000009
	.quad	0x3ff00c7d1bb4916d              # double 1.0030490000000001
	.quad	0x401beeabbcb1cc96              # double 6.9830769999999998
	.quad	0x4004dc45cbbc2b95              # double 2.6075550000000001
	.quad	0x400002a6f3f52fc2              # double 2.0012949999999998
	.quad	0x3ff332c625e99e95              # double 1.1998960000000001
	.quad	0x402018487b99d452              # double 8.047428
	.quad	0x3fd84167a95c853c              # double 0.378992
	.quad	0x40203be9c886162f              # double 8.1170179999999998
	.quad	0x401b799c7bcc2939              # double 6.8687610000000001
	.quad	0x401b3aebc408d8ed              # double 6.8075400000000004
	.quad	0x40230b8bef8ceb35              # double 9.5225519999999992
	.quad	0x4012aa5efe931876              # double 4.6663779999999999
	.quad	0x4001a404a72ead92              # double 2.2050869999999998
	.quad	0x3fe8ee2eb1c432ca              # double 0.77907499999999996
	.quad	0x40156f3300de4c51              # double 5.3585929999999999
	.quad	0x3febf7b5aea3161a              # double 0.87398799999999999
	.quad	0x3ff143b70ef56649              # double 1.079032
	.quad	0x3ff14f3eccc46951              # double 1.081847
	.quad	0x400003419e300150              # double 2.0015900000000002
	.quad	0x40233da07b352a84              # double 9.6203649999999996
	.quad	0x3fe46bebe1650a46              # double 0.63817400000000002
	.quad	0x40215404c8bc9cd4              # double 8.6640990000000002
	.quad	0x401ab41fea8112ba              # double 6.6759029999999999
	.quad	0x4015c92b3cc4ac6d              # double 5.4464540000000001
	.quad	0x4013d9756c93a711              # double 4.9623619999999997
	.quad	0x3ff3ea400fba8827              # double 1.2446900000000001
	.quad	0x3ff080f01fb82c2c              # double 1.031479
	.quad	0x401c3ea140570825              # double 7.0611620000000004
	.quad	0x40233765fd8adaba              # double 9.6082000000000001
	.quad	0x401b58c08b75ea68              # double 6.8366720000000001
	.quad	0x400a1419e30014f9              # double 3.2598150000000001
	.quad	0x40137e2ac3222920              # double 4.8732100000000003
	.quad	0x3fea76f08cc575c0              # double 0.82701899999999995
	.quad	0x3fd9b5286b59146e              # double 0.40168199999999998
	.quad	0x3ff0037a3db3bfb6              # double 1.0008490000000001
	.quad	0x401f66c508b32ce9              # double 7.8503610000000003
	.quad	0x3ff7b3df2a9d627c              # double 1.481414
	.quad	0x4018061f18c9fb61              # double 6.0059779999999998
	.quad	0x402391cc319c5a3e              # double 9.7847609999999996
	.quad	0x401e43061c79b34a              # double 7.5654529999999998
	.quad	0x4023809b951c5c57              # double 9.7511869999999998
	.quad	0x4010372c5197a249              # double 4.0538800000000004
	.quad	0x4020c3c33f85510d              # double 8.3823489999999996
	.quad	0x3febe76c8b439581              # double 0.872
	.quad	0x40185956c0d6f545              # double 6.0872450000000002
	.quad	0x400c1980f55de58e              # double 3.5124529999999998
	.quad	0x401900af5fd47bee              # double 6.2506690000000003
	.quad	0x401e43d35eb7457c              # double 7.566236
	.quad	0x401d9556d19dece5              # double 7.3958389999999996
	.quad	0x401ff4a0e410b631              # double 7.9888950000000003
	.quad	0x4010672bcb5fe543              # double 4.1007530000000001
	.quad	0x4009c7c4199fe436              # double 3.2225419999999998
	.quad	0x400094f1e4b44a1f              # double 2.072727
	.quad	0x40220b599aa60914              # double 9.0221680000000006
	.quad	0x401eba1a500d5e8d              # double 7.6817409999999997
	.quad	0x400b75158b827fa2              # double 3.4321700000000002
	.quad	0x400e03b14a90470b              # double 3.7518030000000002
	.quad	0x400d292ddbdb5d89              # double 3.6451069999999999
	.quad	0x4022b149a5657fb7              # double 9.3462650000000007
	.quad	0x400c33343fa2ad3f              # double 3.5250020000000002
	.quad	0x40070f48c2e770bd              # double 2.882463
	.quad	0x402102ac322291fb              # double 8.5052199999999996
	.quad	0x40237a21426fe719              # double 9.7385350000000006
	.quad	0x40115d7f950b955f              # double 4.3413069999999996
	.quad	0x3ffe5a8262456f76              # double 1.897097
	.quad	0x401e171c10d7be98              # double 7.5225679999999996
	.quad	0x4017f112fd32c626              # double 5.9854240000000001
	.quad	0x4020f51611ba3ca7              # double 8.4786839999999994
	.quad	0x40198ba6698bb4d5              # double 6.3863770000000004
	.quad	0x4014a11ec918e326              # double 5.1573440000000002
	.quad	0x401f5baf533f4235              # double 7.8395359999999998
	.quad	0x401d1d1cc100e6b0              # double 7.2784300000000002
	.quad	0x400b7fd5885d3133              # double 3.4374189999999998
	.quad	0x3ff801b97353b4b3              # double 1.500421
	.quad	0x40055c3ce2089e34              # double 2.6700379999999999
	.quad	0x3ffdb785729b280f              # double 1.857305
	.quad	0x40072eb78897e996              # double 2.8978109999999999
	.quad	0x4018afea3df6db94              # double 6.1717919999999999
	.quad	0x40233f36049ecb32              # double 9.6234590000000004
	.quad	0x40224e299524bfd3              # double 9.1526610000000002
	.quad	0x401c6ab29e4d5d81              # double 7.1041970000000001
	.quad	0x40133da9435ac8a3              # double 4.8102159999999996
	.quad	0x40207147496aad1d              # double 8.221247
	.quad	0x400bf1ae2da554b9              # double 3.4930080000000001
	.quad	0x401858fb43d89ce5              # double 6.0868960000000003
	.quad	0x4007cfb1183b6028              # double 2.9764119999999998
	.quad	0x3fe5374ff865d7cb              # double 0.66300199999999998
	.quad	0x401ea1cda2b5a20e              # double 7.6580110000000001
	.quad	0x40222e5f0f5a1017              # double 9.0905690000000003
	.quad	0x400d30a02b841249              # double 3.6487430000000001
	.quad	0x4021858b827fa1a1              # double 8.7608300000000003
	.quad	0x400c110880d801b4              # double 3.5083169999999999
	.quad	0x40217de529bae46d              # double 8.745889
	.quad	0x40227c4eb56fb8f5              # double 9.2427879999999991
	.quad	0x4018385dfa871a3b              # double 6.0550459999999999
	.quad	0x40148578e5c4eb57              # double 5.130344
	.quad	0x3fef11fd5885d313              # double 0.97094599999999997
	.quad	0x3fed505af6c69b5a              # double 0.91605899999999996
	.quad	0x3ffc47e38eb0318c              # double 1.7675510000000001
	.quad	0x3ffaeed45e9185cf              # double 1.683308
	.quad	0x40076d5c74751ce3              # double 2.9283990000000002
	.quad	0x400c31e108c3f3e0              # double 3.5243549999999999
	.quad	0x4010a1212513b5bf              # double 4.1573529999999996
	.quad	0x4022195b1422ccb4              # double 9.0495230000000006
	.quad	0x4021e4549b62c775              # double 8.9459579999999992
	.quad	0x401ebb2031ceaf25              # double 7.6827399999999999
	.quad	0x3ff8b660e51d25ab              # double 1.5445260000000001
	.quad	0x4013cf4128bf3beb              # double 4.9523970000000004
	.quad	0x40170fd04a2fcefb              # double 5.7654430000000003
	.quad	0x4020af1eafee6fb5              # double 8.3420310000000004
	.quad	0x3feaa0d349be8ff3              # double 0.83213199999999998
	.quad	0x400b2c87980f55de              # double 3.3967429999999998
	.quad	0x40134d12cadddf44              # double 4.8252670000000002
	.quad	0x400b259e1f3a57eb              # double 3.3933680000000002
	.quad	0x4020c41aef6f8f04              # double 8.3830179999999998
	.quad	0x402217a4a48f96e1              # double 9.0461779999999994
	.quad	0x4008da1986b9c305              # double 3.1064940000000001
	.quad	0x401a4a569b17481b              # double 6.5725959999999999
	.quad	0x3ff0406c00da1a93              # double 1.015728
	.quad	0x40238a3c85c24c40              # double 9.7699929999999994
	.quad	0x402009cf13cee9dd              # double 8.0191579999999991
	.quad	0x40062544fe36d224              # double 2.7681979999999999
	.quad	0x401446f694467382              # double 5.0693000000000001
	.quad	0x4015e101b003686a              # double 5.4697329999999997
	.quad	0x3ff029e7fb267c6c              # double 1.0102310000000001
	.quad	0x40095897a67a52ac              # double 3.1682579999999998
	.quad	0x4006d56da0168b5d              # double 2.8542130000000001
	.quad	0x3ff5dd3cbc48f10b              # double 1.3665130000000001
	.quad	0x401be2f3c2dadb83              # double 6.9716329999999997
	.quad	0x40006198f1d3ed52              # double 2.0476549999999998
	.quad	0x4023dd13b5bf6a0e              # double 9.9317910000000005
	.quad	0x401d140d90e23af3              # double 7.2695829999999999
	.quad	0x401415ff1d81f106              # double 5.0214809999999996
	.quad	0x4010059ee88df373              # double 4.0054889999999999
	.quad	0x4014becfe9b7bf1f              # double 5.1863400000000004
	.quad	0x3fcf8127b2cc7086              # double 0.24612899999999999
	.quad	0x40185ea8112ba16e              # double 6.0924379999999996
	.quad	0x401484241c3efae8              # double 5.1290440000000004
	.quad	0x4008a4934267839d              # double 3.0803590000000001
	.quad	0x4002357eed45e918              # double 2.2761209999999998
	.quad	0x401270e1719f7f8d              # double 4.6102350000000003
	.quad	0x401ad2a0663c74fb              # double 6.7056899999999997
	.quad	0x4021b7340d4dc65c              # double 8.8578189999999992
	.quad	0x40151ecedd484513              # double 5.2800859999999998
	.quad	0x401e3d6d3b6cbd98              # double 7.5599869999999995
	.quad	0x3ffea9ca9ef5232d              # double 1.916453
	.quad	0x4003d59b3d07c84b              # double 2.4792999999999998
	.quad	0x4015e1c087442c80              # double 5.4704610000000002
	.quad	0x3ff314f26aec0725              # double 1.1926140000000001
	.quad	0x402356ad70e6f2e9              # double 9.6692920000000004
	.quad	0x400c82a454de7ea6              # double 3.56379
	.quad	0x4022963f141205bc              # double 9.2934499999999999
	.quad	0x4018e924f227d029              # double 6.2276800000000003
	.quad	0x4013d96312f4cf4a              # double 4.9622919999999997
	.quad	0x400096cf850df15a              # double 2.0736379999999999
	.quad	0x3fcfe90795f676ea              # double 0.24929899999999999
	.quad	0x400abcfede97d06c              # double 3.3422830000000001
	.quad	0x400575cfaacd9e84              # double 2.682525
	.quad	0x4022d0ae536501e2              # double 9.4075799999999994
	.quad	0x4014bcd4aa10e022              # double 5.1844049999999999
	.quad	0x40077ea3df6db941              # double 2.936836
	.quad	0x400236c8b4395810              # double 2.2767499999999998
	.quad	0x40158bd1244a6224              # double 5.3865400000000001
	.quad	0x3ff7c52a411c2a02              # double 1.485636
	.quad	0x4003f37c99ae924f              # double 2.4938899999999999
	.quad	0x401195a1016ce78a              # double 4.3961220000000001
	.quad	0x4013966b6177ea1c              # double 4.8968939999999996
	.quad	0x3ff4563779e9d0ea              # double 1.2710490000000001
	.quad	0x4017f12599ed7c70              # double 5.9854950000000002
	.quad	0x40137e56cd6c2efd              # double 4.8733779999999998
	.quad	0x40139497b7414a4d              # double 4.8951099999999999
	.quad	0x3fe56d00b45ae600              # double 0.66955600000000004
	.quad	0x3ff27f6e3f78bbd4              # double 1.1561110000000001
	.quad	0x3fed83686a4ca4f4              # double 0.92229099999999997
	.quad	0x3fefdf37329c347f              # double 0.99599800000000004
	.quad	0x40189b1b36bd2b6f              # double 6.1514709999999999
	.quad	0x4021877403dddb12              # double 8.7645569999999999
	.quad	0x401dd36049ecb31c              # double 7.4564219999999999
	.quad	0x400b1c792d1287c2              # double 3.388903
	.quad	0x4021264abe6a337b              # double 8.5747890000000009
	.quad	0x3fa85a2d72ffd1dd              # double 0.047563000000000001
	.quad	0x4022b704ddb5525d              # double 9.3574590000000004
	.quad	0x40147b317efe0ce1              # double 5.1203060000000002
	.quad	0x40206445aa2e3c53              # double 8.1958439999999992
	.quad	0x401386c8b4395810              # double 4.8816249999999997
	.quad	0x40142fcfc3f811f5              # double 5.046691
	.quad	0x40025c5c5718eb89              # double 2.2950979999999999
	.quad	0x400e8864883fd502              # double 3.8165979999999999
	.quad	0x40022be37de939eb              # double 2.2714300000000001
	.quad	0x3ffcad3a604e1e71              # double 1.792292
	.quad	0x4017f04ddb5525cc              # double 5.9846719999999998
	.quad	0x401c91919ac79703              # double 7.1421570000000001
	.quad	0x4014eb7414a4d2b3              # double 5.2299350000000002
	.quad	0x4022a7160956c0d7              # double 9.3263400000000001
	.quad	0x40147ed959a30985              # double 5.1238760000000001
	.quad	0x4010213db7f17375              # double 4.0324619999999998
	.quad	0x3fe528a82a5614e0              # double 0.66121300000000005
	.quad	0x40156b662fdfc19c              # double 5.3548819999999999
	.quad	0x4011d0ee8d10f51b              # double 4.4540350000000002
	.quad	0x4007e2b94d940789              # double 2.9857049999999998
	.quad	0x4010fb81733226c4              # double 4.2456110000000002
	.quad	0x401089bb6aa4b988              # double 4.1345039999999997
	.quad	0x4016e9934efcbd55              # double 5.7281009999999997
	.quad	0x4022cffe08aefb2b              # double 9.4062350000000005
	.quad	0x401b2fb506dd69d3              # double 6.796589
	.quad	0x401d79310129cbab              # double 7.3683509999999997
	.quad	0x40200ab6f19934f0              # double 8.0209270000000004
	.quad	0x401adc2e770bd018              # double 6.7150210000000001
	.quad	0x401522ce89656ef0              # double 5.2839910000000003
	.quad	0x401f35247cb70ac4              # double 7.8018970000000003
	.quad	0x401e67b99d451fc5              # double 7.6012940000000002
	.quad	0x4017ecc74b838c11              # double 5.9812289999999999
	.quad	0x40169dee78183f92              # double 5.6542300000000001
	.quad	0x4020da7a63736cdf              # double 8.4267149999999997
	.quad	0x40238659af9ebe9d              # double 9.7624030000000008
	.quad	0x40144c4c9c90c4df              # double 5.0745110000000002
	.quad	0x401cb8c79f666235              # double 7.1804490000000003
	.quad	0x401206bca5375c8e              # double 4.5065790000000003
	.quad	0x4022938476f2a5a4              # double 9.2881199999999992
	.quad	0x4018e0867ad8e432              # double 6.2192629999999998
	.quad	0x4008b90539fba451              # double 3.0903420000000001
	.quad	0x401d514983d79075              # double 7.3293819999999998
	.quad	0x402304fe36d22425              # double 9.5097520000000006
	.quad	0x4019a6bd6e8af816              # double 6.4128319999999999
	.quad	0x4019f4ed2cbea4ec              # double 6.4891860000000001
	.quad	0x402187075b3e1438              # double 8.7637280000000004
	.quad	0x401fb58dde7a743a              # double 7.9272989999999997
	.quad	0x402381fa333764f1              # double 9.7538619999999998
	.quad	0x4020da5a89b951c6              # double 8.4264720000000004
	.quad	0x40209c061847f562              # double 8.3047339999999998
	.quad	0x40224a543f1c7582              # double 9.1451740000000008
	.quad	0x400a82aed1394318              # double 3.3138100000000001
	.quad	0x40009d909f1f1498              # double 2.0769359999999999
	.quad	0x3fe7b49be8ff327b              # double 0.74079700000000004
	.quad	0x4023f4d7060bb2bc              # double 9.9782030000000005
	.quad	0x40065ff609dcf894              # double 2.796856
	.quad	0x4023d4fca42aed14              # double 9.9159900000000007
	.quad	0x3ffcd67ec7863bef              # double 1.8023670000000001
	.quad	0x4017cce4a7b4e54f              # double 5.9500909999999996
	.quad	0x400cd868fd199bb2              # double 3.6056689999999998
	.quad	0x4015fee0b0af5fd4              # double 5.4989039999999996
	.quad	0x4020b3547e06961c              # double 8.3502539999999996
	.quad	0x402394c2d6a9c561              # double 9.7905490000000003
	.quad	0x3ff4e38eb0318b93              # double 1.3055559999999999
	.quad	0x40124c4d22c881e4              # double 4.5745129999999996
	.quad	0x402276f0068db8bb              # double 9.2323000000000004
	.quad	0x40109b6bb1290258              # double 4.1517780000000002
	.quad	0x400f9cda2b5a20de              # double 3.9515880000000001
	.quad	0x400360b135979182              # double 2.4222130000000002
	.quad	0x401f585f4a1272c9              # double 7.8363009999999997
	.quad	0x3fdd34f82f512663              # double 0.45635799999999999
	.quad	0x3ffb93586ca89fc7              # double 1.723473
	.quad	0x4022279c1f85d745              # double 9.0773630000000001
	.quad	0x40053e835dedf1e1              # double 2.6555240000000002
	.quad	0x3fc3596851223183              # double 0.15116599999999999
	.quad	0x401394473cd57364              # double 4.8948029999999996
	.quad	0x400ee298cc144029              # double 3.860643
	.quad	0x40006af5fd47bedb              # double 2.0522269999999998
	.quad	0x4021b7442c7fbacb              # double 8.8579419999999995
	.quad	0x401e3ae7924af0bf              # double 7.5575239999999999
	.quad	0x401042074ea8da7f              # double 4.0644809999999998
	.quad	0x3ff8e7d6733ebbfd              # double 1.5566009999999999
	.quad	0x401c3106ab14ec20              # double 7.0478769999999997
	.quad	0x401313e7d135115a              # double 4.7694390000000002
	.quad	0x401c5c60cbf2b23a              # double 7.0902130000000003
	.quad	0x400e4542e557de0d              # double 3.7838189999999998
	.quad	0x40177b37867f0aa2              # double 5.8703289999999999
	.quad	0x401b4fa97e132b56              # double 6.8277950000000001
	.quad	0x4010582c2bd7f51f              # double 4.086106
	.quad	0x3fe90331e3a7daa5              # double 0.78164
	.quad	0x401be4ddf86e3b47              # double 6.973503
	.quad	0x401b96612839042e              # double 6.8968550000000004
	.quad	0x401a313cee9dd7ed              # double 6.5480840000000002
	.quad	0x401765536933a040              # double 5.8489509999999996
	.quad	0x4003c7a311e85fd0              # double 2.4724789999999999
	.quad	0x401ef699c7bcc294              # double 7.7408210000000004
	.quad	0x4020bea98244e93e              # double 8.3723869999999998
	.quad	0x4023f19285a921cd              # double 9.9718210000000002
	.quad	0x400afb480a5accd5              # double 3.3726959999999999
	.quad	0x4014c2b628459967              # double 5.1901479999999998
	.quad	0x401134fdb09a671f              # double 4.301749
	.quad	0x4020390f94c87981              # double 8.1114470000000001
	.quad	0x40068c22ee41919b              # double 2.8184260000000001
	.quad	0x40086d03d9a95422              # double 3.0532300000000001
	.quad	0x4016c641b328b6d8              # double 5.6936099999999996
	.quad	0x4002e130164840e1              # double 2.3599549999999998
	.quad	0x40106ff0025bfad3              # double 4.1093140000000004
	.quad	0x402398780fdc1616              # double 9.7977910000000001
	.quad	0x401e91f2990f301f              # double 7.6425270000000002
	.quad	0x401b4887229e9079              # double 6.8208279999999997
	.quad	0x3fe045ed4a1ad645              # double 0.50853599999999999
	.quad	0x4019f92189bd8384              # double 6.4932920000000003
	.quad	0x40156e4712e40853              # double 5.3576930000000003
	.quad	0x4022a02a5614df8b              # double 9.3128229999999999
	.quad	0x401739df97aaac11              # double 5.8065170000000004
	.quad	0x40163ebb7739f341              # double 5.5612620000000001
	.quad	0x4012d3532e7b3d8e              # double 4.706372
	.quad	0x4008c2413db7f173              # double 3.0948509999999998
	.quad	0x4012fb2af145521a              # double 4.7452810000000003
	.quad	0x3ff29d4845132f88              # double 1.1633990000000001
	.quad	0x3fc8dcfcc5b8dc55              # double 0.194244
	.quad	0x4022547d805e5f31              # double 9.1650200000000002
	.quad	0x3fe9cf13cee9dd7f              # double 0.80652800000000002
	.quad	0x4004506c43f5f916              # double 2.539269
	.quad	0x3ff3504c48adeebb              # double 1.207104
	.quad	0x401db1919ac79703              # double 7.4234070000000001
	.quad	0x401bfa6223e18698              # double 6.9945149999999998
	.quad	0x401b71d19157abb9              # double 6.8611510000000004
	.quad	0x3ff6f705857afea4              # double 1.435308
	.quad	0x40100af2d7f950b9              # double 4.0106919999999997
	.quad	0x3ff15d9a0f0a5eff              # double 1.0853520000000001
	.quad	0x40061e596c82e01a              # double 2.7648190000000001
	.quad	0x3fb9b79d909f1f15              # double 0.10045800000000001
	.quad	0x40232a68d32830a1              # double 9.5828310000000005
	.quad	0x4014534efcbd5561              # double 5.0813560000000004
	.quad	0x3fffb23dd54da4cf              # double 1.9810160000000001
	.quad	0x3fed4e7ab7564303              # double 0.91583000000000003
	.quad	0x401f9f0995aaf790              # double 7.9053100000000001
	.quad	0x4003c6687f455a7d              # double 2.4718789999999999
	.quad	0x400d5265add9c27f              # double 3.6652330000000002
	.quad	0x400de86f049a9974              # double 3.7384930000000001
	.quad	0x4016bb242070b8d0              # double 5.6827550000000002
	.quad	0x3ff1033508f648c7              # double 1.063283
	.quad	0x40135113c68661ae              # double 4.8291769999999996
	.quad	0x4000eeddce7cd035              # double 2.1166339999999999
	.quad	0x4021e2c881e4712e              # double 8.9429359999999996
	.quad	0x3ff28e27e0ef9980              # double 1.1597059999999999
	.quad	0x4022c9c1f85d744f              # double 9.3940579999999993
	.quad	0x400cf0d49949e881              # double 3.6175929999999998
	.quad	0x40108adea897635e              # double 4.1356149999999996
	.quad	0x4014df7caa7589f0              # double 5.2182490000000001
	.quad	0x401e1bc6a7ef9db2              # double 7.5271249999999998
	.quad	0x4022d1f72f76e610              # double 9.4100889999999993
	.quad	0x400f696feb4a6656              # double 3.9264830000000002
	.quad	0x40004a9930be0ded              # double 2.0364249999999999
	.quad	0x40089f87f023e9ea              # double 3.077896
	.quad	0x4015cb5525cc4263              # double 5.4485669999999997
	.quad	0x40234168943e1006              # double 9.6277509999999999
	.quad	0x3feff3929ed3953e              # double 0.99848300000000001
	.quad	0x402391578a2a90cd              # double 9.7838709999999995
	.quad	0x401626e371540032              # double 5.5379769999999997
	.quad	0x40151810a569b175              # double 5.2735010000000004
	.quad	0x401801769a91105e              # double 6.0014289999999999
	.quad	0x4001278e9f6a93f3              # double 2.1443150000000002
	.quad	0x401d42923e5b8562              # double 7.3150110000000002
	.quad	0x4008d4d1e96c3fc4              # double 3.1039159999999999
	.quad	0x40123a39c51dabe2              # double 4.5568609999999996
	.quad	0x4023ed10d38cda6e              # double 9.9630189999999992
	.quad	0x400c51971c10d7bf              # double 3.5398390000000002
	.quad	0x4019bc0bdcad14a1              # double 6.4336390000000003
	.quad	0x40100e0d66f0cfe1              # double 4.0137229999999997
	.quad	0x4020b4ce3de6149c              # double 8.3531359999999992
	.quad	0x400fa94dd72367e4              # double 3.957668
	.quad	0x4023e713cee9dd7f              # double 9.9513230000000003
	.quad	0x401924245f5ad96a              # double 6.2852949999999996
	.quad	0x401cc408d8ec95c0              # double 7.1914400000000001
	.quad	0x3ffc005e5f30e7ff              # double 1.7500899999999999
	.quad	0x3fe44a1ad6451b93              # double 0.634046
	.quad	0x40051ae5796bfca8              # double 2.6381329999999998
	.quad	0x3ff2a3c968943e10              # double 1.164987
	.quad	0x40235af1886df82b              # double 9.6776239999999997
	.quad	0x40182a7fc32ebe59              # double 6.0415029999999996
	.quad	0x4017337bd05af6c7              # double 5.8002770000000003
	.quad	0x400094a44c7b02d6              # double 2.0725790000000002
	.quad	0x40128b6523704791              # double 4.6361280000000002
	.quad	0x4015859d99029ae5              # double 5.380484
	.quad	0x40209fdb2b346131              # double 8.3122190000000007
	.quad	0x4020f54e09784ec6              # double 8.4791109999999996
	.quad	0x40010b063e07a28c              # double 2.1303830000000001
	.quad	0x4000147d805e5f31              # double 2.010005
	.quad	0x401fce9ea1405708              # double 7.9517769999999998
	.quad	0x3ff8c37e6f71a7e3              # double 1.547728
	.quad	0x401360807357e671              # double 4.8442400000000001
	.quad	0x40212d4477ff151e              # double 8.5884129999999992
	.quad	0x4012bd86ec17ebaf              # double 4.6850849999999999
	.quad	0x40097eaee2003ab8              # double 3.1868569999999998
	.quad	0x400b7823c85c24c4              # double 3.433662
	.quad	0x4023d22339c0ebee              # double 9.910425
	.quad	0x4004d599aa60913a              # double 2.6042969999999999
	.quad	0x3fdcd80e496ededb              # double 0.450687
	.quad	0x400016145953586d              # double 2.0107810000000002
	.quad	0x40144de54b48d3ae              # double 5.0760699999999996
	.quad	0x40195b4aec8d5c74              # double 6.3391529999999996
	.quad	0x3fb1df3300de4c51              # double 0.069811999999999999
	.quad	0x401c19b17481b21c              # double 7.0250909999999998
	.quad	0x4020c9ea9a3d2d88              # double 8.3943680000000001
	.quad	0x400f118d25edd053              # double 3.8835700000000002
	.quad	0x3fd0525892684cf0              # double 0.25502599999999997
	.quad	0x3ff01080b673c4f4              # double 1.0040290000000001
	.quad	0x40095b20b8066c2b              # double 3.1694960000000001
	.quad	0x4016269e7fb267c7              # double 5.5377140000000002
	.quad	0x3ffe8295a6c5d207              # double 1.906881
	.quad	0x3fff32e59af9ebea              # double 1.949926
	.quad	0x4010fcfede97d06c              # double 4.2470660000000002
	.quad	0x3ff163e186983516              # double 1.0868850000000001
	.quad	0x401e80980b242071              # double 7.6255800000000002
	.quad	0x401b83b96af038e3              # double 6.8786370000000003
	.quad	0x40239ceb78897e99              # double 9.8064839999999993
	.quad	0x40015481b21c475e              # double 2.1662629999999998
	.quad	0x4015f0ecb74ddf87              # double 5.4852780000000001
	.quad	0x3ff56f74cd31769b              # double 1.3397110000000001
	.quad	0x3feaf5536933a040              # double 0.84244699999999995
	.quad	0x401ba6f2a5a469d7              # double 6.9130349999999998
	.quad	0x40068814d72799a2              # double 2.816446
	.quad	0x4020fc5931ca7d67              # double 8.4928679999999996
	.quad	0x401549ee02a77a2d              # double 5.3221970000000001
	.quad	0x3fe5908e581cf788              # double 0.67389600000000005
	.quad	0x4011941fa7653437              # double 4.3946519999999998
	.quad	0x40010605681ecd4b              # double 2.1279400000000002
	.quad	0x401a02cc2d6a9c56              # double 6.502732
	.quad	0x4020c57be9856a38              # double 8.3857110000000006
	.quad	0x4023480a9de8b3b3              # double 9.6407059999999997
	.quad	0x400ce65b63d3e4ef              # double 3.612479
	.quad	0x4002b1bde82d7b63              # double 2.3367879999999999
	.quad	0x3ff87777d0f1f57b              # double 1.5291669999999999
	.quad	0x401322c669057d18              # double 4.7839600000000004
	.quad	0x400f7ea24cc68230              # double 3.936833
	.quad	0x401338b439581062              # double 4.8053749999999997
	.quad	0x400f9f6b1a2a4db1              # double 3.9528409999999998
	.quad	0x401201beb18116ec              # double 4.5017040000000001
	.quad	0x4022e9f2fdb8fde3              # double 9.4569320000000001
	.quad	0x401c87403dddb121              # double 7.1320810000000003
	.quad	0x4000f503b81b64e0              # double 2.1196359999999999
	.quad	0x4004d2c27a63736d              # double 2.6029100000000001
	.quad	0x40108c9e236c15d3              # double 4.1373220000000002
	.quad	0x40145f4666ec9e23              # double 5.0930419999999996
	.quad	0x401dce6d15ad106f              # double 7.4515880000000001
	.quad	0x4002839c51dabe27              # double 2.314263
	.quad	0x40157f3dc054ef46              # double 5.3742590000000003
	.quad	0x401266f826edaa93              # double 4.6005560000000001
	.quad	0x4020bd9d3458cd21              # double 8.3703400000000006
	.quad	0x40188ac322291fb4              # double 6.13551
	.quad	0x401cb31c64ba94bc              # double 7.1749130000000001
	.quad	0x400913d4280ae105              # double 3.1346820000000002
	.quad	0x401c38dbcec84f90              # double 7.0555260000000004
	.quad	0x4023c972abef06b3              # double 9.8934529999999991
	.quad	0x4023c25c810a569b              # double 9.8796119999999998
	.quad	0x401d498676a7264a              # double 7.3218019999999999
	.quad	0x40202c4a6223e187              # double 8.0865050000000007
	.quad	0x401fdb2f23033a47              # double 7.9640469999999998
	.quad	0x40222b02f72b4528              # double 9.0840069999999997
	.quad	0x401d24284dfce315              # double 7.28531
	.quad	0x401b951c5c5718ec              # double 6.8956160000000004
	.quad	0x401618f68be2f7b1              # double 5.5243779999999996
	.quad	0x400c5187e7c06e1a              # double 3.5398100000000001
	.quad	0x40230bbc0a06e9ff              # double 9.5229189999999999
	.quad	0x401afeaee2003ab8              # double 6.7487139999999997
	.quad	0x3ff9a9df97aaac11              # double 1.6039730000000001
	.quad	0x402316cdf266ba49              # double 9.5445399999999995
	.quad	0x400277bf1e8e6080              # double 2.3084699999999998
	.quad	0x40108fce3150dae4              # double 4.1404350000000001
	.quad	0x40197e19fc2a886a              # double 6.3731460000000002
	.quad	0x401c62ef911cf356              # double 7.0966170000000002
	.quad	0x3ff53a41e57d9dbb              # double 1.3267230000000001
	.quad	0x4009ffbf83382e45              # double 3.2498770000000001
	.quad	0x4007c3b46fdeb52d              # double 2.9705590000000002
	.quad	0x3ffd756da0168b5d              # double 1.8411690000000001
	.quad	0x4003de878fabda0e              # double 2.483657
	.quad	0x401e71c8216c6152              # double 7.6111149999999999
	.quad	0x401682a5e785b5b7              # double 5.627586
	.quad	0x400903a860dcb9aa              # double 3.1267860000000001
	.quad	0x3fc6ffc115df6556              # double 0.17968000000000001
	.quad	0x3fdab14ec204f2ae              # double 0.417072
	.quad	0x40035c59b8023a6d              # double 2.420093
	.quad	0x4006551611ba3ca7              # double 2.7915459999999999
	.quad	0x3ff297abb8800eae              # double 1.162029
	.quad	0x400379335d249e45              # double 2.43418
	.quad	0x400f14cfd08d4bad              # double 3.8851619999999998
	.quad	0x3fc523810e8858ff              # double 0.16514599999999999
	.quad	0x40165b823c85c24c              # double 5.5893639999999998
	.quad	0x40044afe60c38f36              # double 2.5366179999999998
	.quad	0x40238cbdba0a5269              # double 9.7748849999999993
	.quad	0x4001bcf56eac8605              # double 2.2172649999999998
	.quad	0x401d7ec3547e0696              # double 7.3737919999999999
	.quad	0x40053acc4ef88b97              # double 2.6537099999999998
	.quad	0x40081823c85c24c4              # double 3.011787
	.quad	0x4015c3543aeab799              # double 5.4407509999999997
	.quad	0x4012ad73c9257860              # double 4.6693870000000004
	.quad	0x40237b7ae5796bfd              # double 9.7411720000000006
	.quad	0x4022a3a5c1c6088d              # double 9.3196239999999992
	.quad	0x401a1881a1554fbe              # double 6.5239320000000003
	.quad	0x3ff3d3b7d84901d2              # double 1.2391890000000001
	.quad	0x3feb7dc5931ca7d6              # double 0.85910299999999995
	.quad	0x3fcfb7521144cbe2              # double 0.247782
	.quad	0x401aeec636b09635              # double 6.7331779999999997
	.quad	0x40152e79aae6c8f7              # double 5.2953859999999997
	.quad	0x40123632c1f42bb6              # double 4.5529279999999996
	.quad	0x4023ac6ac215b9a6              # double 9.8367520000000006
	.quad	0x400ab933e35c5b4b              # double 3.3404310000000002
	.quad	0x401d8890d5a5b963              # double 7.3833650000000004
	.quad	0x4001f34b51372a39              # double 2.2437960000000001
	.quad	0x400c6c996b7670a0              # double 3.5530270000000002
	.quad	0x401d811c2a023209              # double 7.3760839999999996
	.quad	0x401ccdcf4623d0c0              # double 7.2009860000000003
	.quad	0x4016bf7b17ce52df              # double 5.6869930000000002
	.quad	0x3fe957cb2d905c03              # double 0.79196699999999998
	.quad	0x400c8ec52a411c2a              # double 3.569712
	.quad	0x4009f481b21c475e              # double 3.2443879999999998
	.quad	0x3fe9cbb5e0f7fcfc              # double 0.80611699999999997
	.quad	0x40129ea465a57647              # double 4.6549240000000003
	.quad	0x401404806290eed0              # double 5.0043959999999998
	.quad	0x40225b890d5a5b96              # double 9.1787799999999997
	.quad	0x3fdbee45c358afc4              # double 0.43641799999999997
	.quad	0x40105ee675147f13              # double 4.092676
	.quad	0x40144bef49cf56eb              # double 5.0741550000000002
	.quad	0x401f2d0a24463066              # double 7.793984
	.quad	0x40228ca1ad6451b9              # double 9.2746709999999997
	.quad	0x3fefc8adeebb341e              # double 0.99324699999999999
	.quad	0x4017f20ccff21b3b              # double 5.9863770000000001
	.quad	0x401efdb2f661f18d              # double 7.7477530000000003
	.quad	0x40173bfbdf090f73              # double 5.8085779999999998
	.quad	0x400a86601bc98a22              # double 3.3156129999999999
	.quad	0x401606d4801f7510              # double 5.5066699999999997
	.quad	0x4021450e12e83a11              # double 8.6348730000000007
	.quad	0x401910385c67dfe3              # double 6.2658399999999999
	.quad	0x401f1342edbb59de              # double 7.7688100000000002
	.quad	0x3ff8a2fbe33acd5b              # double 1.5397909999999999
	.quad	0x402169105e1c1509              # double 8.7052029999999991
	.quad	0x400dd2ddbdb5d895              # double 3.7279620000000002
	.quad	0x3ff8cc62e4d1a650              # double 1.5498989999999999
	.quad	0x3fd093964a59c066              # double 0.25900800000000002
	.quad	0x3ff1090d5a5b9629              # double 1.06471
	.quad	0x402276eac8605682              # double 9.2322600000000001
	.quad	0x3ffd343b70ef5665              # double 1.8252520000000001
	.quad	0x40212cacaff6d331              # double 8.5872550000000007
	.quad	0x401c273083558a76              # double 7.0382709999999999
	.quad	0x4022b302d59d55e7              # double 9.3496310000000005
	.quad	0x400997e45803cd14              # double 3.199166
	.quad	0x401d37c06e19b90f              # double 7.3044450000000003
	.quad	0x40220fb28954a7f8              # double 9.030659
	.quad	0x401e926a22b3892f              # double 7.642983
	.quad	0x400df5db3397dd01              # double 3.745047
	.quad	0x402168abb44e50c6              # double 8.7044350000000001
	.quad	0x4020e67ad8e43244              # double 8.4501559999999997
	.quad	0x3ff329478c868ba0              # double 1.197578
	.quad	0x4015106748e47560              # double 5.266019
	.quad	0x401f593ea2d2fe3f              # double 7.8371529999999998
	.quad	0x40141c17ebaf1023              # double 5.0274349999999997
	.quad	0x402154866a11ec92              # double 8.6650880000000008
	.quad	0x40227f6f08cc575c              # double 9.2488939999999999
	.quad	0x3ffa30ec31162281              # double 1.636944
	.quad	0x4016b76640a6b93d              # double 5.6791010000000002
	.quad	0x401a8597d49d7ba6              # double 6.6304619999999996
	.quad	0x401dc2849cb252ce              # double 7.439959
	.quad	0x4014954ac29bf163              # double 5.1457930000000003
	.quad	0x4005d36deb95e5b0              # double 2.728237
	.quad	0x400ddd5cb790fb65              # double 3.7330869999999998
	.quad	0x4001232096787ce9              # double 2.1421519999999998
	.quad	0x4010f8d4bad7d7c3              # double 4.2429990000000002
	.quad	0x3ffe3644955b4678              # double 1.8882490000000001
	.quad	0x3fd51cf355cd91ef              # double 0.32989200000000002
	.quad	0x4022e50092ccf6be              # double 9.4472699999999996
	.quad	0x401bc90ea9e6eeb7              # double 6.946345
	.quad	0x401f3612839042d9              # double 7.8028050000000002
	.quad	0x401cbf3343fa2ad4              # double 7.1867190000000001
	.quad	0x4016aaf1886df82b              # double 5.6669369999999999
	.quad	0x3fe97ea8112ba16e              # double 0.79671099999999995
	.quad	0x3fc14940bbb1f256              # double 0.135048
	.quad	0x4009a9c99285a922              # double 3.2079040000000001
	.quad	0x40019f08893b7d85              # double 2.2026530000000002
	.quad	0x3ffeacb10342aa9f              # double 1.9171609999999999
	.quad	0x4022ae71ac14c661              # double 9.3407110000000007
	.quad	0x40092318b9346994              # double 3.142137
	.quad	0x40125e071c53f39d              # double 4.5918239999999999
	.quad	0x4020c06e19b90eaa              # double 8.3758400000000002
	.quad	0x401a3fb7a5f41aef              # double 6.5622239999999996
	.quad	0x3ff0d774256bca53              # double 1.0526009999999999
	.quad	0x3fd9e5c4eb56fb8f              # double 0.40464899999999998
	.quad	0x400ec91fb3fa6df0              # double 3.8482050000000001
	.quad	0x3fe5d30ced4e4c94              # double 0.68201299999999998
	.quad	0x3fd2b8bef8ceb357              # double 0.29252600000000001
	.quad	0x401a4da5daf07bfe              # double 6.5758279999999996
	.quad	0x4021975b1c864884              # double 8.795617
	.quad	0x402237f151e75361              # double 9.1092630000000003
	.quad	0x4018e3c3a42f1ed1              # double 6.2224259999999996
	.quad	0x3ffde95b78cc9a78              # double 1.869472
	.quad	0x40167c23b7952d23              # double 5.6212299999999997
	.quad	0x40221bc0e38a7e74              # double 9.0542060000000006
	.quad	0x3fb7545c78a6dacb              # double 0.091131000000000004
	.quad	0x401ba73d188f42ff              # double 6.9133190000000004
	.quad	0x4020f7c7c5260f5e              # double 8.4839459999999995
	.quad	0x3ffaacd07852f7f5              # double 1.6671910000000001
	.quad	0x4013b4d65e460675              # double 4.9265990000000004
	.quad	0x40011d3458cd20b0              # double 2.1392600000000002
	.quad	0x40166a7e30878748              # double 5.6039969999999997
	.quad	0x4015df38c5436b90              # double 5.4679900000000004
	.quad	0x40052c8c5004fb12              # double 2.6467520000000002
	.quad	0x4020ea11cb039ef1              # double 8.4571670000000001
	.quad	0x3fe03fc2224edf61              # double 0.50778299999999998
	.quad	0x400560407cc7d1bb              # double 2.6719979999999999
	.quad	0x401b0e62dc6e2a80              # double 6.764049
	.quad	0x4020cf8c64fdb09a              # double 8.4053679999999993
	.quad	0x402170ee49f51698              # double 8.7205680000000001
	.quad	0x400827de5082cf53              # double 3.0194670000000001
	.quad	0x4020e11f0c34c1a9              # double 8.4396900000000006
	.quad	0x402333cdbbe0157f              # double 9.6011790000000001
	.quad	0x401df787ce95faa9              # double 7.4917290000000003
	.quad	0x3feaf544bb1af3a1              # double 0.84243999999999997
	.quad	0x401ea759253543af              # double 7.6634260000000002
	.quad	0x40019e1c15097c81              # double 2.2022020000000002
	.quad	0x401ed52977c88e7a              # double 7.7081660000000003
	.quad	0x401453387160956c              # double 5.08127
	.quad	0x4003b5147f130596              # double 2.4634179999999999
	.quad	0x401ade1b089a0275              # double 6.7168999999999999
	.quad	0x4021e553cddd6e05              # double 8.9479050000000004
	.quad	0x400f93a14cec41dd              # double 3.947085
	.quad	0x4023ef1151611ba4              # double 9.9669290000000003
	.quad	0x4021fe02ea960b70              # double 8.9961160000000007
	.quad	0x4003193037d63023              # double 2.3872990000000001
	.quad	0x4023953a3ec02f30              # double 9.7914600000000007
	.quad	0x40050e219652bd3c              # double 2.6318999999999999
	.quad	0x4018fb7e90ff9724              # double 6.2455999999999996
	.quad	0x4014a4588a04d120              # double 5.1604939999999999
	.quad	0x400e0868b9fdbd30              # double 3.7541060000000002
	.quad	0x4020f9b34a44c7b0              # double 8.4876959999999997
	.quad	0x3fafbeb9e492bc30              # double 0.062002000000000002
	.quad	0x3ffa6c16df3f9618              # double 1.651389
	.quad	0x401e549f94855da2              # double 7.5826399999999996
	.quad	0x3ff6706e5cd4ed2d              # double 1.4024490000000001
	.quad	0x402392795703f2d4              # double 9.7860820000000003
	.quad	0x402029878316a055              # double 8.0811119999999992
	.quad	0x3ff9576cce5f7404              # double 1.583844
	.quad	0x4002d87f023e9ea1              # double 2.3557109999999999
	.quad	0x4011b44b6e935b92              # double 4.426069
	.quad	0x4006e5fbf83382e4              # double 2.8622969999999999
	.quad	0x4014be69ad42c3ca              # double 5.1859500000000001
	.quad	0x400927b1c0010c6f              # double 3.1443819999999998
	.quad	0x401b8f4384ba0e84              # double 6.8899059999999999
	.quad	0x4018f54d1e96c3fc              # double 6.2395519999999998
	.quad	0x4014ea2ca9ac3654              # double 5.2286859999999997
	.quad	0x4017f6605ee568a5              # double 5.990602
	.quad	0x3fcbc6759ab6d00b              # double 0.21699399999999999
	.quad	0x40219f7ced916873              # double 8.8115000000000006
	.quad	0x3fe7ac2df0d41312              # double 0.73976799999999998
	.quad	0x4014e5f41aef6f8f              # double 5.224564
	.quad	0x400874eebf65dbfd              # double 3.057096
	.quad	0x4003ed056c508b33              # double 2.4907330000000001
	.quad	0x401ad938583621fb              # double 6.712129
	.quad	0x40224b2fec56d5d0              # double 9.1468500000000006
	.quad	0x4011ae85b9e8c47a              # double 4.4204319999999999
	.quad	0x400a4c729f59ccfb              # double 3.287328
	.quad	0x401ee6e115592d99              # double 7.7254680000000002
	.quad	0x400c6fe60c38f367              # double 3.5546380000000002
	.quad	0x3fd4e325d4a5df22              # double 0.32636399999999999
	.quad	0x40152615a8deb0fb              # double 5.2871920000000001
	.quad	0x3fc037cdcca70d20              # double 0.12670300000000001
	.quad	0x40194b72c5197a25              # double 6.3236800000000004
	.quad	0x3fde2c98e53eb39a              # double 0.471472
	.quad	0x3ff0ebf65dbfceb8              # double 1.0576080000000001
	.quad	0x401e9e3bcd35a858              # double 7.6545249999999995
	.quad	0x401fc90257c914b1              # double 7.9462979999999996
	.quad	0x40208ad7f950b956              # double 8.2711790000000001
	.quad	0x3fd551e321a2e7f7              # double 0.333123
	.quad	0x401c9a59c065b63d              # double 7.1507329999999998
	.quad	0x4013d5feda661284              # double 4.9589800000000004
	.quad	0x4021eef19934efcc              # double 8.9666870000000002
	.quad	0x4012803d145d8516              # double 4.6252329999999997
	.quad	0x400645c4651f3e8a              # double 2.7840660000000002
	.quad	0x401308d08919ef95              # double 4.7586079999999997
	.quad	0x400533415b1422cd              # double 2.6500270000000001
	.quad	0x4002c4988094e5d6              # double 2.3459940000000001
	.quad	0x4023b5ab191dde37              # double 9.8548209999999993
	.quad	0x40227fc04c8bc9cd              # double 9.2495139999999996
	.quad	0x401c3d0fe8ab4fa5              # double 7.0596310000000004
	.quad	0x40110964628027d9              # double 4.2591720000000004
	.quad	0x3ff52b2bfdb4cc25              # double 1.32304
	.quad	0x4023808a04d12019              # double 9.7510530000000006
	.quad	0x40162378ab0c88a4              # double 5.5346399999999996
	.quad	0x40020c56d5cfaace              # double 2.2560250000000002
	.quad	0x40136b0ee49f5169              # double 4.8545489999999996
	.quad	0x4018668cac4b4d05              # double 6.1001459999999996
	.quad	0x4019d1c714fce747              # double 6.4548610000000002
	.quad	0x3fe89832fcac8e69              # double 0.76857900000000001
	.quad	0x401ac54ef459d990              # double 6.6926839999999999
	.quad	0x40104676a7264a17              # double 4.0688120000000003
	.quad	0x40219bef06b37868              # double 8.8045580000000001
	.quad	0x40182ea704bc2763              # double 6.0455589999999999
	.quad	0x40199d4738a3b57c              # double 6.4035919999999997
	.quad	0x400766916440f239              # double 2.9250820000000002
	.quad	0x3ff78817fc7607c4              # double 1.470726
	.quad	0x4010812d3415b142              # double 4.1261489999999998
	.quad	0x3fc85b5b70691ea8              # double 0.19028800000000001
	.quad	0x4019a3fd0d0678c0              # double 6.410145
	.quad	0x4022287d0aed99cc              # double 9.0790790000000001
	.quad	0x4022ea3b57c4e2f3              # double 9.4574839999999991
	.quad	0x40130be0157eed46              # double 4.7615970000000001
	.quad	0x401abef4e0114d2f              # double 6.6864809999999997
	.quad	0x4018ee81450efdca              # double 6.2329150000000002
	.quad	0x401b2333764f11b6              # double 6.784376
	.quad	0x401c429670196d8f              # double 7.0650269999999997
	.quad	0x3ff69740c4156e26              # double 1.4119269999999999
	.quad	0x4009018d6909aed5              # double 3.1257579999999998
	.quad	0x4020b73f961804da              # double 8.3579070000000009
	.quad	0x4014c9abb01c92de              # double 5.1969440000000002
	.quad	0x4000874d1633482c              # double 2.066065
	.quad	0x3fe0254c55432874              # double 0.50455300000000003
	.quad	0x4016e1eeed8904f7              # double 5.7206380000000001
	.quad	0x401b63775b813016              # double 6.8471349999999997
	.quad	0x3ff2c5b5b70691ea              # double 1.1732689999999999
	.quad	0x4018dc94f69ca9ef              # double 6.2154119999999997
	.quad	0x4003717614595358              # double 2.4304009999999998
	.quad	0x4001ae8640208180              # double 2.2102170000000001
	.quad	0x401db47f13059642              # double 7.426266
	.quad	0x40178ee41919ac79              # double 5.8895419999999996
	.quad	0x4023aa4228997c3d              # double 9.8325359999999992
	.quad	0x402200537e2c55c9              # double 9.0006369999999993
	.quad	0x4009cf640639d5e5              # double 3.2262650000000002
	.quad	0x400c31e321a2e7f7              # double 3.524359
	.quad	0x400daef88b977857              # double 3.7104349999999999
	.quad	0x401c370cdc8754f3              # double 7.0537599999999996
	.quad	0x40239f15e7c8d196              # double 9.8107140000000008
	.quad	0x400374cd31769a91              # double 2.432032
	.quad	0x4012d545c78a6dad              # double 4.7082740000000003
	.quad	0x402313e5109070fc              # double 9.5388570000000001
	.quad	0x3ff6f8ca8198f1d4              # double 1.43574
	.quad	0x3fe9b4a66559f6ec              # double 0.80330199999999996
	.quad	0x401f63cc8de2ac32              # double 7.8474599999999999
	.quad	0x40216c55219a847b              # double 8.7115869999999997
	.quad	0x40176ba1f4b1ee24              # double 5.8551099999999998
	.quad	0x400a110fd7e45804              # double 3.2583310000000001
	.quad	0x4020eff349385836              # double 8.4686529999999998
	.quad	0x40120136e71cda2b              # double 4.5011859999999997
	.quad	0x3f977681669ced0b              # double 0.022912999999999999
	.quad	0x4002e3369b9d7fd8              # double 2.3609439999999999
	.quad	0x401cc21682f94424              # double 7.1895389999999999
	.quad	0x3ff83f8fcd67fd3f              # double 1.5155179999999999
	.quad	0x401a6fa1e3eaf683              # double 6.6090159999999996
	.quad	0x4016acf80dc33722              # double 5.6689150000000001
	.quad	0x3fe4eab14ec204f3              # double 0.65364900000000004
	.quad	0x400f5d1c3ac929aa              # double 3.9204639999999999
	.quad	0x3fb6c7b890d5a5b9              # double 0.088984999999999995
	.quad	0x3fb22b9d3cbc48f1              # double 0.070977999999999999
	.quad	0x4021e81d9f4d37c1              # double 8.9533509999999996
	.quad	0x3ffb53cab81f969e              # double 1.7079569999999999
	.quad	0x3fd3cd7cf5f4e443              # double 0.309417
	.quad	0x400929c23b7952d2              # double 3.1453899999999999
	.quad	0x3ff690aed99cbee8              # double 1.410323
	.quad	0x4006ab912dba4d6e              # double 2.8337729999999999
	.quad	0x3ffc2453d20f2bed              # double 1.758869
	.quad	0x40092465a57646ae              # double 3.1427719999999999
	.quad	0x40228a454de7ea60              # double 9.2700600000000009
	.quad	0x3ff57e7afa722186              # double 1.3433790000000001
	.quad	0x40202f77079e59f3              # double 8.0927050000000005
	.quad	0x40220bb927d45a60              # double 9.0228970000000004
	.quad	0x40236e8986fcdee3              # double 9.7158929999999994
	.quad	0x4000313165d39970              # double 2.0240200000000002
	.quad	0x400f35a3a08398a6              # double 3.9011909999999999
	.quad	0x40226fee0b0af5fd              # double 9.2186129999999995
	.quad	0x401854317acc4ef9              # double 6.0822200000000004
	.quad	0x40201c6c97d8cf3a              # double 8.0555160000000008
	.quad	0x400ec1f080303c08              # double 3.844697
	.quad	0x3fefd90c0ad03d9b              # double 0.99524500000000004
	.quad	0x4016fa550870110a              # double 5.7444649999999999
	.quad	0x4017b4f440af1cb9              # double 5.9267130000000003
	.quad	0x401373e24febd09e              # double 4.8631679999999999
	.quad	0x401487b784662bae              # double 5.132536
	.quad	0x4023cf922962cfd9              # double 9.9054120000000001
	.quad	0x400ffc1c6088d6d4              # double 3.9981010000000001
	.quad	0x401c1cc92146a1a5              # double 7.028111
	.quad	0x401e5b0ea18372e7              # double 7.5889230000000003
	.quad	0x3fff54b48d3ae686              # double 1.95818
	.quad	0x401be546d3f9e7b8              # double 6.973903
	.quad	0x3ffea2d83c6c97d9              # double 1.914757
	.quad	0x401373eaf6837f7c              # double 4.8632010000000001
	.quad	0x401093b0c4588a05              # double 4.1442290000000002
	.quad	0x4022853cbc48f10b              # double 9.2602290000000007
	.quad	0x402346b2d0a24463              # double 9.6380829999999999
	.quad	0x40139b8800eae18b              # double 4.9018860000000002
	.quad	0x40193737542a23c0              # double 6.303922
	.quad	0x3fec75b813016484              # double 0.88936999999999999
	.quad	0x4022fcfbfc6540cc              # double 9.4941099999999991
	.quad	0x401082c5e2cdc012              # double 4.1277080000000002
	.quad	0x4019f6c58eeae9ee              # double 6.4909879999999998
	.quad	0x40119f062d40aaeb              # double 4.405297
	.quad	0x4020afa7008a697b              # double 8.3430710000000001
	.quad	0x4020cd43aeab7996              # double 8.4009070000000001
	.quad	0x4015ff112fd32c62              # double 5.4990889999999997
	.quad	0x400978e970718223              # double 3.1840389999999998
	.quad	0x40237481b21c475e              # double 9.7275519999999993
	.quad	0x401ffb6e935b91f7              # double 7.9955389999999999
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
