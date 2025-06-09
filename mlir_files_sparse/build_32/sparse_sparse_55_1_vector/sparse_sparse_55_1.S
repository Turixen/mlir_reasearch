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
	.quad	0x41414901bd7f1f9b              # double 2265603.4804420001
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
	.quad	4499                            # 0x1193
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4499                            # 0x1193
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
	lui	a7, %hi(.L__constant_4499xindex)
	addi	a7, a7, %lo(.L__constant_4499xindex)
	lui	t0, %hi(.L__constant_4499xf64)
	addi	t0, t0, %lo(.L__constant_4499xf64)
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
	.quad	35                              # 0x23
	.quad	75                              # 0x4b
	.quad	131                             # 0x83
	.quad	185                             # 0xb9
	.quad	230                             # 0xe6
	.quad	275                             # 0x113
	.quad	319                             # 0x13f
	.quad	357                             # 0x165
	.quad	397                             # 0x18d
	.quad	440                             # 0x1b8
	.quad	484                             # 0x1e4
	.quad	530                             # 0x212
	.quad	565                             # 0x235
	.quad	603                             # 0x25b
	.quad	649                             # 0x289
	.quad	699                             # 0x2bb
	.quad	739                             # 0x2e3
	.quad	784                             # 0x310
	.quad	840                             # 0x348
	.quad	887                             # 0x377
	.quad	937                             # 0x3a9
	.quad	981                             # 0x3d5
	.quad	1025                            # 0x401
	.quad	1073                            # 0x431
	.quad	1124                            # 0x464
	.quad	1163                            # 0x48b
	.quad	1206                            # 0x4b6
	.quad	1253                            # 0x4e5
	.quad	1298                            # 0x512
	.quad	1341                            # 0x53d
	.quad	1388                            # 0x56c
	.quad	1431                            # 0x597
	.quad	1476                            # 0x5c4
	.quad	1513                            # 0x5e9
	.quad	1565                            # 0x61d
	.quad	1613                            # 0x64d
	.quad	1666                            # 0x682
	.quad	1709                            # 0x6ad
	.quad	1754                            # 0x6da
	.quad	1809                            # 0x711
	.quad	1849                            # 0x739
	.quad	1896                            # 0x768
	.quad	1938                            # 0x792
	.quad	1984                            # 0x7c0
	.quad	2040                            # 0x7f8
	.quad	2093                            # 0x82d
	.quad	2139                            # 0x85b
	.quad	2185                            # 0x889
	.quad	2218                            # 0x8aa
	.quad	2266                            # 0x8da
	.quad	2309                            # 0x905
	.quad	2353                            # 0x931
	.quad	2401                            # 0x961
	.quad	2445                            # 0x98d
	.quad	2493                            # 0x9bd
	.quad	2533                            # 0x9e5
	.quad	2569                            # 0xa09
	.quad	2612                            # 0xa34
	.quad	2651                            # 0xa5b
	.quad	2693                            # 0xa85
	.quad	2735                            # 0xaaf
	.quad	2780                            # 0xadc
	.quad	2827                            # 0xb0b
	.quad	2877                            # 0xb3d
	.quad	2919                            # 0xb67
	.quad	2961                            # 0xb91
	.quad	2996                            # 0xbb4
	.quad	3041                            # 0xbe1
	.quad	3078                            # 0xc06
	.quad	3123                            # 0xc33
	.quad	3171                            # 0xc63
	.quad	3210                            # 0xc8a
	.quad	3258                            # 0xcba
	.quad	3305                            # 0xce9
	.quad	3350                            # 0xd16
	.quad	3400                            # 0xd48
	.quad	3442                            # 0xd72
	.quad	3486                            # 0xd9e
	.quad	3531                            # 0xdcb
	.quad	3574                            # 0xdf6
	.quad	3618                            # 0xe22
	.quad	3666                            # 0xe52
	.quad	3704                            # 0xe78
	.quad	3758                            # 0xeae
	.quad	3805                            # 0xedd
	.quad	3849                            # 0xf09
	.quad	3886                            # 0xf2e
	.quad	3922                            # 0xf52
	.quad	3973                            # 0xf85
	.quad	4020                            # 0xfb4
	.quad	4064                            # 0xfe0
	.quad	4111                            # 0x100f
	.quad	4160                            # 0x1040
	.quad	4214                            # 0x1076
	.quad	4265                            # 0x10a9
	.quad	4312                            # 0x10d8
	.quad	4363                            # 0x110b
	.quad	4405                            # 0x1135
	.quad	4447                            # 0x115f
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x401a2cecc814d728              # double 6.5438720000000004
	.quad	0x40214dd5b24e9c45              # double 8.6520209999999995
	.quad	0x3ff7483ba3443d47              # double 1.4551350000000001
	.quad	0x40100e757928e0ca              # double 4.0141200000000001
	.quad	0x401144267839cd81              # double 4.3165529999999999
	.quad	0x3fff2c53b0813cac              # double 1.9483220000000001
	.quad	0x400078ea7ce0fc2f              # double 2.0590410000000001
	.quad	0x401d2eebb341e14c              # double 7.2958210000000001
	.quad	0x3ffd45b291b823c8              # double 1.8295159999999999
	.quad	0x40234b5b91f70de9              # double 9.647183
	.quad	0x400a5f23465625a7              # double 3.2964540000000002
	.quad	0x4004bb3a68b19a41              # double 2.5914199999999998
	.quad	0x4023b936c58eeaea              # double 9.8617460000000001
	.quad	0x4017cbea91d9b1b8              # double 5.9491370000000003
	.quad	0x4015398b2e9ccb7d              # double 5.3061949999999998
	.quad	0x4002b952d234eb9a              # double 2.34049
	.quad	0x402269be09bb6aa5              # double 9.2065280000000005
	.quad	0x401faa704bc27632              # double 7.9164440000000003
	.quad	0x3ffd427631b584b2              # double 1.8287260000000001
	.quad	0x401b7cffeb074a77              # double 6.8720699999999999
	.quad	0x3ff91e85fd04a2fd              # double 1.569952
	.quad	0x401f59e40c8472c1              # double 7.837784
	.quad	0x4012ff45e0b4e11e              # double 4.7492900000000002
	.quad	0x4012cc1b97353b4b              # double 4.6993239999999998
	.quad	0x401bd2c7fbacb429              # double 6.9558410000000004
	.quad	0x3ff10dc33721d53d              # double 1.06586
	.quad	0x4021ea732df505d1              # double 8.95791
	.quad	0x4023781eeed8904f              # double 9.7346109999999992
	.quad	0x4005b0e0221426fe              # double 2.7113649999999998
	.quad	0x4023f582773e24ff              # double 9.9795110000000004
	.quad	0x4013f2b239a38fbd              # double 4.9870080000000003
	.quad	0x3ffa097635e7429a              # double 1.62731
	.quad	0x3fed4386d2ed783e              # double 0.914493
	.quad	0x400d96eefa1e3eaf              # double 3.6986979999999998
	.quad	0x4001266559f6ec5b              # double 2.143748
	.quad	0x40176c204f2ae07e              # double 5.8555919999999997
	.quad	0x401f38b32ce89657              # double 7.805371
	.quad	0x401cbbef8ceb356e              # double 7.1835310000000003
	.quad	0x40089a4a48f96e16              # double 3.0753370000000002
	.quad	0x3fddf23465625a68              # double 0.46790799999999999
	.quad	0x4015f736049ecb32              # double 5.4914170000000002
	.quad	0x4022bf0d413122b8              # double 9.3731480000000004
	.quad	0x4019385d31337eb3              # double 6.3050430000000004
	.quad	0x4000dd074213a0c7              # double 2.1079240000000001
	.quad	0x4012d04ddb5525cc              # double 4.7034219999999998
	.quad	0x401e2b649d388a8b              # double 7.5423759999999999
	.quad	0x3fe603f91e646f15              # double 0.68798499999999996
	.quad	0x4011e172ef0ae536              # double 4.4701649999999997
	.quad	0x400d40ccff21b3af              # double 3.656641
	.quad	0x3fe6e0fa15db3398              # double 0.71496300000000002
	.quad	0x4012f504c48adeec              # double 4.7392760000000003
	.quad	0x4022da31a4bdba0a              # double 9.4261599999999994
	.quad	0x4006b2bdc26dce3a              # double 2.8372760000000001
	.quad	0x400419652bd3c361              # double 2.5124
	.quad	0x400ffb5286b59147              # double 3.997716
	.quad	0x401674649906cca3              # double 5.6136650000000001
	.quad	0x40202034b0e1b4bb              # double 8.0629019999999993
	.quad	0x402095525cc42635              # double 8.2916439999999998
	.quad	0x4008378ee2867275              # double 3.0271279999999998
	.quad	0x4022924b76f6d762              # double 9.2857319999999994
	.quad	0x400b07357e670e2c              # double 3.37852
	.quad	0x3fd45f45e0b4e11e              # double 0.31831500000000001
	.quad	0x4021ad3b29a1b9fa              # double 8.8383420000000008
	.quad	0x4017c48238540464              # double 5.9419029999999999
	.quad	0x40167774aba38759              # double 5.6166559999999999
	.quad	0x4009fc73eee52589              # double 3.2482679999999999
	.quad	0x400f7719f7f8ca82              # double 3.9331550000000002
	.quad	0x40237f826edaa92e              # double 9.7490419999999993
	.quad	0x3fec76555c52e72e              # double 0.88944500000000004
	.quad	0x4018dde8b3b32053              # double 6.2167079999999997
	.quad	0x40140ade657b84dc              # double 5.0106140000000003
	.quad	0x3ffc43ac929aa1d7              # double 1.7665219999999999
	.quad	0x40184d1c3ac929aa              # double 6.0753029999999999
	.quad	0x3fbbd06bbdbe3c10              # double 0.108649
	.quad	0x400e23bf727136a4              # double 3.767455
	.quad	0x3ffd29b38d60a633              # double 1.822681
	.quad	0x40048ff972474539              # double 2.5703
	.quad	0x40200f4d594f26af              # double 8.0298870000000004
	.quad	0x40209f3647baa9b5              # double 8.3109610000000007
	.quad	0x401c52e83a109d06              # double 7.0809639999999998
	.quad	0x3ffec374ff865d7d              # double 1.9227190000000001
	.quad	0x401267e996312f4d              # double 4.601477
	.quad	0x401be5bff04577d9              # double 6.9743649999999997
	.quad	0x401a6437824d4cba              # double 6.5978680000000001
	.quad	0x40086f69ca9ef523              # double 3.0544009999999999
	.quad	0x40219e28cbd1244a              # double 8.8089049999999993
	.quad	0x3ff47a7a85015c21              # double 1.2799020000000001
	.quad	0x401312231832fcad              # double 4.7677120000000004
	.quad	0x401cb46a1a500d5f              # double 7.1761860000000004
	.quad	0x401fe5aa715831f0              # double 7.9742829999999998
	.quad	0x401dd174c4cdfaca              # double 7.4545469999999998
	.quad	0x4021f3b7739f340d              # double 8.9760089999999995
	.quad	0x401354a9478c868c              # double 4.8326770000000003
	.quad	0x4021f2ab25b317f0              # double 8.9739620000000002
	.quad	0x4013def1fddebd90              # double 4.9677199999999999
	.quad	0x4003372b4528283d              # double 2.4019379999999999
	.quad	0x40038ce5f7403dde              # double 2.4437980000000001
	.quad	0x400b66277c45cbbc              # double 3.4248799999999999
	.quad	0x3ff1f6273929ed39              # double 1.1225959999999999
	.quad	0x401e1d1aa821f299              # double 7.5284219999999999
	.quad	0x3fe3089e34330d74              # double 0.59480200000000005
	.quad	0x4012498915bdd767              # double 4.5718120000000004
	.quad	0x400c01a8262456f7              # double 3.5008089999999998
	.quad	0x3fc7a1db877ab325              # double 0.18462700000000001
	.quad	0x3fd33d5fdcdf6988              # double 0.30062100000000003
	.quad	0x40155dd93c46d82c              # double 5.3416490000000003
	.quad	0x400705cc426351df              # double 2.877831
	.quad	0x4007454bcf0b6b6e              # double 2.908836
	.quad	0x400358ac18f81e8a              # double 2.4182969999999999
	.quad	0x400c8e2eb1c432ca              # double 3.5694249999999998
	.quad	0x3fe658afc47e49b2              # double 0.698326
	.quad	0x3fefe696a26e5471              # double 0.99689799999999995
	.quad	0x4005e84ad794a6ec              # double 2.7384240000000002
	.quad	0x4012a679cc74b839              # double 4.6625740000000002
	.quad	0x402376c3dab5c39c              # double 9.7319630000000003
	.quad	0x401e759d55e6bc62              # double 7.6148579999999999
	.quad	0x4022675ddd2ae8e2              # double 9.2018880000000003
	.quad	0x40083d4bf0995aaf              # double 3.0299299999999998
	.quad	0x3fffc1ce6c093d96              # double 1.9848159999999999
	.quad	0x4018a6473471f794              # double 6.1623809999999999
	.quad	0x401581858bc59b80              # double 5.3764859999999999
	.quad	0x4012a4dc65c70436              # double 4.6609970000000001
	.quad	0x4022483e63e8dda5              # double 9.1411010000000008
	.quad	0x40116b09e98dcdb3              # double 4.3545299999999996
	.quad	0x400a0b15f88fc936              # double 3.2554129999999999
	.quad	0x401e03b9ae0c1765              # double 7.5036379999999995
	.quad	0x4007c90ff9724745              # double 2.9731749999999999
	.quad	0x401979314445aa2e              # double 6.3683519999999998
	.quad	0x40205e2e6ea85447              # double 8.1839479999999991
	.quad	0x402013e8ff327aa7              # double 8.0388870000000008
	.quad	0x400948d10f51ac9b              # double 3.160555
	.quad	0x40196aee631f8a09              # double 6.354425
	.quad	0x3fb292a305532618              # double 0.072550000000000003
	.quad	0x4020dd16db0dd830              # double 8.4318150000000003
	.quad	0x4022df4d37c1376d              # double 9.4361359999999994
	.quad	0x4001a8c26138fffc              # double 2.2074020000000001
	.quad	0x40116bdc26dce39b              # double 4.3553319999999998
	.quad	0x4021cf8e7ddca4b1              # double 8.9053839999999997
	.quad	0x4008f0068db8bac7              # double 3.1172
	.quad	0x3ff199f5dfeb8d82              # double 1.100088
	.quad	0x400efc2a02320968              # double 3.8731270000000002
	.quad	0x4010ef062d40aaeb              # double 4.233422
	.quad	0x3fe8a4e379b77c03              # double 0.77012800000000003
	.quad	0x40135ed288ce703b              # double 4.8426
	.quad	0x4008e9aa1d755bcd              # double 3.1140940000000001
	.quad	0x4022e859641f6449              # double 9.4538069999999994
	.quad	0x40220d0092ccf6be              # double 9.0253949999999996
	.quad	0x401d897e996312f5              # double 7.3842720000000002
	.quad	0x400a9104d551d68c              # double 3.3208099999999998
	.quad	0x4011da355043e532              # double 4.4630939999999999
	.quad	0x40145f911cf355ce              # double 5.0933270000000004
	.quad	0x4011d6798958d9b6              # double 4.4594480000000001
	.quad	0x4010fee392e1ef74              # double 4.2489150000000002
	.quad	0x4022c9e7d9988d2a              # double 9.3943469999999998
	.quad	0x400a54488c60cbf3              # double 3.2911540000000001
	.quad	0x400165f17bd8be73              # double 2.1747770000000002
	.quad	0x4003314445aa2e3c              # double 2.3990559999999999
	.quad	0x3fe3e2888b545c79              # double 0.62140300000000004
	.quad	0x3ffa9e00d1b71759              # double 1.663575
	.quad	0x3ff09bf37b8d3f18              # double 1.0380739999999999
	.quad	0x3ff9670e2c12ad82              # double 1.5876600000000001
	.quad	0x4004b6f21f6cacd2              # double 2.5893290000000002
	.quad	0x400b8d3d859c8c93              # double 3.4439649999999999
	.quad	0x3ffd996d8f4f93bc              # double 1.849958
	.quad	0x401d6b7e90ff9724              # double 7.3549749999999996
	.quad	0x4000e2f166e008ea              # double 2.1108120000000001
	.quad	0x4011d61d8622c450              # double 4.4590969999999999
	.quad	0x4020de2a3cea6c1a              # double 8.433916
	.quad	0x40200f50c1b97354              # double 8.0299130000000005
	.quad	0x4004306c43f5f916              # double 2.523644
	.quad	0x40009579af1886e0              # double 2.0729860000000002
	.quad	0x40213b05b7cfe586              # double 8.615278
	.quad	0x402264202d9cf13d              # double 9.1955580000000001
	.quad	0x3fe964c942d490e6              # double 0.79355299999999995
	.quad	0x401aed117b5286b6              # double 6.7315120000000004
	.quad	0x402242788db0574b              # double 9.1298259999999996
	.quad	0x400dee3608d0891a              # double 3.741314
	.quad	0x4012dd04e618ce2d              # double 4.7158389999999999
	.quad	0x40164c7c957cd467              # double 5.574694
	.quad	0x3ff9884f8f8a4c1f              # double 1.5957790000000001
	.quad	0x401456fef7c243dd              # double 5.0849570000000002
	.quad	0x401db8cc575c0768              # double 7.4304670000000001
	.quad	0x3ffab4a87e38eb03              # double 1.669106
	.quad	0x401b8d2849cb252d              # double 6.8878490000000001
	.quad	0x401f7dd8b60f1b26              # double 7.872897
	.quad	0x4021040053e2d624              # double 8.5078150000000007
	.quad	0x40238d8b3f63c31e              # double 9.7764530000000001
	.quad	0x40091b6bb1290258              # double 3.1383890000000001
	.quad	0x401c02b27cbf6e3f              # double 7.0026339999999996
	.quad	0x4022b2df0d413123              # double 9.3493580000000005
	.quad	0x402214fa05143bf7              # double 9.0409699999999997
	.quad	0x401d5ec17ebaf102              # double 7.3425349999999998
	.quad	0x4003333333333333              # double 2.3999999999999999
	.quad	0x40210f4b61fe21d9              # double 8.5298719999999992
	.quad	0x40018e29f9ce8d97              # double 2.1944159999999999
	.quad	0x3ff9596312f4cf4a              # double 1.5843229999999999
	.quad	0x40229f583a53b8e5              # double 9.3112200000000005
	.quad	0x401b2ab606b7aa26              # double 6.7917100000000001
	.quad	0x401493387160956c              # double 5.14377
	.quad	0x401c36b7aa25d8d8              # double 7.0534350000000003
	.quad	0x40136007570c5650              # double 4.8437780000000004
	.quad	0x3ff3373d188f42ff              # double 1.2009860000000001
	.quad	0x3ffa5fe004b7f5a5              # double 1.648407
	.quad	0x4022ab3743632c1f              # double 9.3344059999999995
	.quad	0x3fd34ff43419e300              # double 0.301755
	.quad	0x4004fce5b4245f5b              # double 2.6234850000000001
	.quad	0x40093d68c692f6e8              # double 3.1549849999999999
	.quad	0x3fcae9707182235b              # double 0.21024899999999999
	.quad	0x40220a9845dc8323              # double 9.0206929999999996
	.quad	0x401ac33f42352eb6              # double 6.690671
	.quad	0x3fcf81626b2f2303              # double 0.24613599999999999
	.quad	0x401eb48cf7caa759              # double 7.6763190000000003
	.quad	0x3fe89ab29e4d5d81              # double 0.76888400000000001
	.quad	0x4016d0813cab81f9              # double 5.7036179999999996
	.quad	0x4018ee75360d0247              # double 6.232869
	.quad	0x4000099e94ab1d50              # double 2.0046970000000002
	.quad	0x401ee3f52fc2656b              # double 7.7226150000000002
	.quad	0x402157d88c1db014              # double 8.6715739999999996
	.quad	0x3ff964388ebcc6c5              # double 1.5869679999999999
	.quad	0x401be51efb6dca08              # double 6.973751
	.quad	0x401861bc98a222d5              # double 6.0954459999999999
	.quad	0x401dfad601ffb481              # double 7.4949570000000003
	.quad	0x402291a47a9e2bd0              # double 9.2844580000000008
	.quad	0x3fff8db0574b4070              # double 1.972092
	.quad	0x3fd5ccf28c79f666              # double 0.34063399999999999
	.quad	0x401d592e62131a8f              # double 7.337091
	.quad	0x4022fd5d80e496ee              # double 9.4948540000000001
	.quad	0x3ff2d50fc71d6063              # double 1.177017
	.quad	0x401505ae5ffa3b9b              # double 5.2555480000000001
	.quad	0x40193e19b90ea9e7              # double 6.3106450000000001
	.quad	0x401bf6113404ea4b              # double 6.9903000000000004
	.quad	0x4016f4a7b4e54f7b              # double 5.7389210000000004
	.quad	0x4022d069c66d373b              # double 9.407057
	.quad	0x4022922f2734f82f              # double 9.2855159999999994
	.quad	0x40230264a16a4873              # double 9.5046739999999996
	.quad	0x40118bb01c92ddbe              # double 4.3864140000000003
	.quad	0x3ffc5b845564b663              # double 1.772343
	.quad	0x401e9502eec7c958              # double 7.6455190000000001
	.quad	0x40123ae07e5a78f2              # double 4.5574969999999997
	.quad	0x4020f56b87379746              # double 8.479336
	.quad	0x4012bc083126e979              # double 4.6836250000000001
	.quad	0x401353c3e74afd54              # double 4.8318019999999997
	.quad	0x401b1977c88e79ab              # double 6.7748710000000001
	.quad	0x400942d05f288484              # double 3.1576240000000002
	.quad	0x401f0ad601ffb481              # double 7.7605820000000003
	.quad	0x3ff425c4eb56fb8f              # double 1.2592209999999999
	.quad	0x4007bc0a8d21bc12              # double 2.9668169999999998
	.quad	0x402282350d2806af              # double 9.2543109999999995
	.quad	0x402352a8650e7792              # double 9.6614409999999999
	.quad	0x401cae3d5fdcdf6a              # double 7.1701560000000004
	.quad	0x3ffcb1a6d698fe69              # double 1.793372
	.quad	0x4020f8a6dacabc51              # double 8.4856479999999994
	.quad	0x3fff12c8c5004fb1              # double 1.942086
	.quad	0x40088495e17e34b9              # double 3.0647389999999999
	.quad	0x4017eff4fd6d7e89              # double 5.9843330000000003
	.quad	0x40146e1e71044f1a              # double 5.1075379999999999
	.quad	0x40116098915bdd76              # double 4.3443319999999996
	.quad	0x400c403686a4ca4f              # double 3.5313539999999999
	.quad	0x401639b4dcebfec1              # double 5.5563539999999998
	.quad	0x400dcb2745bf26f2              # double 3.7241960000000001
	.quad	0x4009e8344c37e6f7              # double 3.238381
	.quad	0x401befe0ce0b912e              # double 6.9842560000000002
	.quad	0x4000a58793dd97f6              # double 2.0808249999999999
	.quad	0x400fcb356da0168b              # double 3.9742229999999998
	.quad	0x3fe9253543aeab7a              # double 0.78579200000000005
	.quad	0x3fc6ed352220bc38              # double 0.179114
	.quad	0x4022152007dd4413              # double 9.0412599999999994
	.quad	0x4010a90fb65668c2              # double 4.1650989999999997
	.quad	0x4021d19d2391d580              # double 8.909402
	.quad	0x4002981cf7878b7a              # double 2.324274
	.quad	0x400417e56473471f              # double 2.5116679999999998
	.quad	0x4022b9253543aeab              # double 9.3616119999999991
	.quad	0x401ee197a24894c4              # double 7.7203049999999998
	.quad	0x4021c55842b734b5              # double 8.8854389999999999
	.quad	0x3fcd4a0a0f4d7add              # double 0.228822
	.quad	0x3ff41a5870da5daf              # double 1.256432
	.quad	0x401a4c6195464dc2              # double 6.5745909999999999
	.quad	0x40159a77a2cecc81              # double 5.4008469999999997
	.quad	0x400a911947cfa26a              # double 3.3208489999999999
	.quad	0x4012c44f1a1986ba              # double 4.6917080000000002
	.quad	0x40058d3c792d1288              # double 2.6939630000000001
	.quad	0x40109262888b545c              # double 4.1429539999999996
	.quad	0x4007992189bd8384              # double 2.9497710000000001
	.quad	0x40232706b37867f1              # double 9.5762230000000005
	.quad	0x4012ac49774256bd              # double 4.6682490000000003
	.quad	0x40213eab9b23dd55              # double 8.6224030000000003
	.quad	0x401420c73abc9470              # double 5.0320099999999996
	.quad	0x40084e1ef73c0c20              # double 3.0381450000000001
	.quad	0x3ffe31800a7c5ac4              # double 1.8870849999999999
	.quad	0x3ff0819c17225b75              # double 1.0316430000000001
	.quad	0x3fd5a65492ff4ba5              # double 0.33827699999999999
	.quad	0x4009c1815a07b353              # double 3.2194850000000002
	.quad	0x3fe280baa582dbe8              # double 0.57821400000000001
	.quad	0x4022ac0c1fc8f323              # double 9.3360299999999992
	.quad	0x4007f4a558ea7ce1              # double 2.994456
	.quad	0x40083d1d4738a3b5              # double 3.0298409999999998
	.quad	0x3fe4a122fad6cb53              # double 0.64466999999999997
	.quad	0x3ffcc3fe5c91d14e              # double 1.7978499999999999
	.quad	0x4022517dae81882b              # double 9.1591620000000002
	.quad	0x3fdeabfb9bed30f0              # double 0.47924699999999998
	.quad	0x4018ad30f062d40b              # double 6.1691320000000003
	.quad	0x401c08a6dacabc51              # double 7.0084489999999997
	.quad	0x400469dcf893faf4              # double 2.5516909999999999
	.quad	0x401b254823854046              # double 6.7864079999999998
	.quad	0x3fec5faa8a82a561              # double 0.88667799999999997
	.quad	0x40127d451fc4c166              # double 4.6223340000000004
	.quad	0x40206107d912556d              # double 8.1895129999999998
	.quad	0x4023e1bcfd4bf099              # double 9.9408949999999993
	.quad	0x3fe98e4755ffe6d6              # double 0.79861800000000005
	.quad	0x401774e7253da72a              # double 5.8641629999999996
	.quad	0x4007ff8db4890929              # double 2.9997820000000002
	.quad	0x401e110d7be9856a              # double 7.5166529999999998
	.quad	0x4011d29cbab649d4              # double 4.4556760000000004
	.quad	0x40236ec0f88333fd              # double 9.7163160000000008
	.quad	0x401e1f8d716d2aa6              # double 7.5308130000000002
	.quad	0x400a28a8b08dd1e5              # double 3.2698529999999999
	.quad	0x3ffaea4766c6de76              # double 1.6821969999999999
	.quad	0x400cfd7ba6698bb5              # double 3.6237710000000001
	.quad	0x401871a08bfc2225              # double 6.1109640000000001
	.quad	0x401bdb09a671ef31              # double 6.9639040000000003
	.quad	0x3f77a46173b85e81              # double 0.0057720000000000002
	.quad	0x3ffb877dd872f33d              # double 1.7205790000000001
	.quad	0x3fd030d306a2b170              # double 0.25297999999999998
	.quad	0x3fe698201cd5f99c              # double 0.70606999999999998
	.quad	0x40185f79420b3d4b              # double 6.0932360000000001
	.quad	0x401665ba6efc371e              # double 5.5993440000000003
	.quad	0x401abbb0e5e67946              # double 6.6832919999999998
	.quad	0x402124d22c881e47              # double 8.5719159999999999
	.quad	0x4009d51efb6dca08              # double 3.229063
	.quad	0x40080f73c0c1fc8f              # double 3.0075449999999999
	.quad	0x400d4e21101b0037              # double 3.6631490000000002
	.quad	0x3ffc408e9b38d60a              # double 1.7657609999999999
	.quad	0x3fc861522a6f3f53              # double 0.19047
	.quad	0x4018a548a9bcfd4c              # double 6.1614100000000001
	.quad	0x4007f99567dbb16c              # double 2.9968669999999999
	.quad	0x40239bb46fdeb52d              # double 9.8041110000000006
	.quad	0x3ffaa15ca6ca03c5              # double 1.6643950000000001
	.quad	0x4019ae529bae46d0              # double 6.4202370000000002
	.quad	0x400c66eb91b3f20a              # double 3.5502539999999998
	.quad	0x4003592af9a8cdea              # double 2.418539
	.quad	0x40215a68900c521e              # double 8.6765790000000003
	.quad	0x40178f69878316a0              # double 5.8900509999999997
	.quad	0x401c87125dd095af              # double 7.1319059999999999
	.quad	0x40141049ecb31c22              # double 5.0159070000000003
	.quad	0x3ffdb98b71b8aa00              # double 1.857799
	.quad	0x4011b606317268d3              # double 4.4277579999999999
	.quad	0x3ff165b749adc8fc              # double 1.0873330000000001
	.quad	0x401c6bea91d9b1b8              # double 7.1053870000000003
	.quad	0x401b3ce13f4a98ab              # double 6.8094530000000004
	.quad	0x40097e5a78f25a25              # double 3.186696
	.quad	0x402380eda22f6a51              # double 9.7518130000000002
	.quad	0x4016d865d7cb2d90              # double 5.7113259999999997
	.quad	0x40117e6afcce1c58              # double 4.3734549999999999
	.quad	0x3fd9ac753e707e17              # double 0.40115099999999998
	.quad	0x402345ed6ba8c587              # double 9.6365770000000008
	.quad	0x3ff7e4345cfede98              # double 1.493214
	.quad	0x4021b36bd2b6f199              # double 8.8504319999999996
	.quad	0x401f641205bc01a3              # double 7.8477249999999996
	.quad	0x40208bf9e7b80a9e              # double 8.2733910000000002
	.quad	0x401afc88a47ecfea              # double 6.7466150000000003
	.quad	0x3fdbfcc5b8dc5500              # double 0.437303
	.quad	0x400ac10cf5b1c865              # double 3.3442630000000002
	.quad	0x3fd8c63f141205bc              # double 0.3871
	.quad	0x400796b8f9b13166              # double 2.9485950000000001
	.quad	0x400e51c219eb6391              # double 3.7899210000000001
	.quad	0x400dfecb31c219eb              # double 3.7494109999999998
	.quad	0x401f6b328b6d86ec              # double 7.8546849999999999
	.quad	0x4001f0446b69db66              # double 2.242318
	.quad	0x4019809edbf8b9bb              # double 6.3756060000000003
	.quad	0x40227454152b0a70              # double 9.2272040000000004
	.quad	0x3feb1ef0f16f4385              # double 0.84752700000000003
	.quad	0x40165df266ba493d              # double 5.5917450000000004
	.quad	0x40176f8c64fdb09a              # double 5.8589339999999996
	.quad	0x4022fcc3e3193f6c              # double 9.4936819999999997
	.quad	0x401b37ef5a964e8b              # double 6.8046239999999996
	.quad	0x3f9a1ec4e7253da7              # double 0.025507999999999999
	.quad	0x4022399b6f5caf2d              # double 9.1125139999999991
	.quad	0x40218a294141e9af              # double 8.7698459999999994
	.quad	0x401ab7603925bb7b              # double 6.6790779999999996
	.quad	0x4023ce9fadafd114              # double 9.9035620000000008
	.quad	0x402096ece13f4a99              # double 8.2947760000000006
	.quad	0x40025464dc22ab26              # double 2.2912080000000001
	.quad	0x401707c6b8b69553              # double 5.7575940000000001
	.quad	0x3feb0298cc144029              # double 0.84406700000000001
	.quad	0x4012ecb1897a67a5              # double 4.7311459999999999
	.quad	0x3fa7e43675ddd2af              # double 0.046663000000000003
	.quad	0x401dccb6848beb5b              # double 7.4499149999999998
	.quad	0x3ffd0e9e5e247885              # double 1.8160689999999999
	.quad	0x40099c36113404ea              # double 3.2012749999999999
	.quad	0x3fd712d77318fc50              # double 0.36052499999999998
	.quad	0x3fbf17ce52deca25              # double 0.121457
	.quad	0x402067d2c7b890d6              # double 8.2027800000000006
	.quad	0x401ea8be2f7b17ce              # double 7.6647879999999997
	.quad	0x401143bea91d9b1b              # double 4.3161569999999996
	.quad	0x40019471715c63ae              # double 2.1974819999999999
	.quad	0x4013a0ec74320104              # double 4.907152
	.quad	0x3fccb88ca3e7d135              # double 0.224382
	.quad	0x4008375afaf85943              # double 3.0270290000000002
	.quad	0x40051d616f86a099              # double 2.6393460000000002
	.quad	0x4016302602c9081c              # double 5.5470199999999998
	.quad	0x4020c6175d13d74d              # double 8.3868969999999994
	.quad	0x3ff3572cd7cf5f4e              # double 1.2087829999999999
	.quad	0x400ca8848387df5d              # double 3.582284
	.quad	0x4000edb37c99ae92              # double 2.1160649999999999
	.quad	0x4022b6ed45e9185d              # double 9.3572790000000001
	.quad	0x401ee0eae18ac9f3              # double 7.719646
	.quad	0x402045eca25529fe              # double 8.136571
	.quad	0x3fd9d68405b39e28              # double 0.40371800000000002
	.quad	0x3fe800c521dda05a              # double 0.75009400000000004
	.quad	0x401a232b55ef1fde              # double 6.5343450000000001
	.quad	0x3fe03ecedd484513              # double 0.50766699999999998
	.quad	0x402394b35f3d7d39              # double 9.7904309999999998
	.quad	0x3ff75f99c38b04ab              # double 1.4608399999999999
	.quad	0x40134af0bf1a5ca3              # double 4.8231840000000004
	.quad	0x402113b4916ca46e              # double 8.5384869999999999
	.quad	0x400dcc69b5a63f9a              # double 3.7248109999999999
	.quad	0x401467a80cf9e386              # double 5.1012269999999997
	.quad	0x400b916ca46e08f2              # double 3.446008
	.quad	0x40084f8d716d2aa6              # double 3.0388440000000001
	.quad	0x4022b687b139c94f              # double 9.3565039999999992
	.quad	0x4008a76427c7c526              # double 3.081734
	.quad	0x3ff2fd9ec7000432              # double 1.1869190000000001
	.quad	0x400b22c2374794ea              # double 3.391972
	.quad	0x40205eb91b3f20a7              # double 8.1850059999999996
	.quad	0x40210d1e53a81dc1              # double 8.5256220000000003
	.quad	0x3ff3b1bbcf4e874d              # double 1.2308920000000001
	.quad	0x3fe802278d0cc35d              # double 0.75026300000000001
	.quad	0x401ccabef06b3786              # double 7.1979939999999996
	.quad	0x400d0c25072085b2              # double 3.6309300000000002
	.quad	0x401cbcebfec13b9f              # double 7.1844939999999999
	.quad	0x40230e3864cb5bb4              # double 9.5277740000000008
	.quad	0x40236df69878316a              # double 9.714772
	.quad	0x3f9572de43ed959a              # double 0.020945999999999999
	.quad	0x401ab1550ca1cef2              # double 6.6731759999999998
	.quad	0x40172bcba3012168              # double 5.7927689999999998
	.quad	0x401738676a7264a1              # double 5.8050819999999996
	.quad	0x400c7fe64f54d1e9              # double 3.5624509999999998
	.quad	0x3ff6192428d434a0              # double 1.381138
	.quad	0x40196d2c386d2ed8              # double 6.3566140000000004
	.quad	0x40019a9a8049667b              # double 2.2004899999999998
	.quad	0x401b49e3864cb5bb              # double 6.8221569999999998
	.quad	0x40180eee0f3cb3e5              # double 6.0145799999999996
	.quad	0x40203eaad1d041cc              # double 8.1223969999999994
	.quad	0x40017a1fd1569f49              # double 2.184631
	.quad	0x3fdb46994185058e              # double 0.42618400000000001
	.quad	0x3fe7e58c4bd33d29              # double 0.74677099999999996
	.quad	0x402271210385c67e              # double 9.220955
	.quad	0x3fd4a6ca03c4b09f              # double 0.32268000000000002
	.quad	0x3ffdf547e06961c3              # double 1.8723829999999999
	.quad	0x40011443d46b26c0              # double 2.1348950000000002
	.quad	0x40028400fba8826b              # double 2.3144550000000002
	.quad	0x402077ec3547e069              # double 8.2342239999999993
	.quad	0x4019ac764adff823              # double 6.4184200000000002
	.quad	0x4000e2a12f901084              # double 2.1106590000000001
	.quad	0x40119cd962068555              # double 4.4031729999999998
	.quad	0x401f208f648c7193              # double 7.781797
	.quad	0x4016209784ec636b              # double 5.531828
	.quad	0x3fee976145953587              # double 0.95597900000000002
	.quad	0x3ff62b9e492bc2fc              # double 1.3856489999999999
	.quad	0x4004463497b7414a              # double 2.5342799999999999
	.quad	0x4020cfd976ff3ade              # double 8.4059559999999998
	.quad	0x401200ca1cef2410              # double 4.5007710000000003
	.quad	0x4022e72799a1fd15              # double 9.4514739999999992
	.quad	0x3ff2812be48a58b4              # double 1.156536
	.quad	0x401a37aaef2c7326              # double 6.5543630000000004
	.quad	0x3fe7102363b25700              # double 0.72072000000000003
	.quad	0x4011f6030c23fab1              # double 4.490246
	.quad	0x401deeab7995ee13              # double 7.4830759999999996
	.quad	0x400a8812be48a58b              # double 3.3164419999999999
	.quad	0x400275992428d435              # double 2.3074210000000002
	.quad	0x400238e325d4a5df              # double 2.2777769999999999
	.quad	0x401858cda6e75ff6              # double 6.086722
	.quad	0x400227b3d8e00086              # double 2.2693859999999999
	.quad	0x401970214ad362e9              # double 6.359502
	.quad	0x400a6fdb8fde2ef5              # double 3.3046180000000001
	.quad	0x4006d8eeae9ee45c              # double 2.8559239999999999
	.quad	0x401bebc6eb0b7c35              # double 6.980251
	.quad	0x3ffd42cb20fb224b              # double 1.8288070000000001
	.quad	0x4016dfff36ac6477              # double 5.7187469999999996
	.quad	0x401b2b677f6b1a2a              # double 6.7923869999999997
	.quad	0x40216f39b024f65a              # double 8.7172370000000008
	.quad	0x3ffba47cb70ac3a8              # double 1.7276579999999999
	.quad	0x3ffec4ff43419e30              # double 1.923095
	.quad	0x4022822c2374794f              # double 9.2542430000000007
	.quad	0x400a59be4cd74928              # double 3.2938200000000002
	.quad	0x3ff8a55e28aa4335              # double 1.540373
	.quad	0x401389a847b24639              # double 4.8844310000000002
	.quad	0x4001a7c0f4517614              # double 2.2069109999999998
	.quad	0x402097d9fd36f7e4              # double 8.2965850000000003
	.quad	0x40227c8dc11e42e1              # double 9.2432689999999997
	.quad	0x401107ccc0379314              # double 4.2576169999999998
	.quad	0x401e52220bc382a1              # double 7.5802079999999998
	.quad	0x4011ee27179bfdf8              # double 4.4825710000000001
	.quad	0x401077878b7a1c26              # double 4.1167280000000002
	.quad	0x4018c1198aeb80ed              # double 6.188574
	.quad	0x4010b688bda9435b              # double 4.1782560000000002
	.quad	0x3feadc3dee781840              # double 0.83938500000000005
	.quad	0x40093dd4c76d117b              # double 3.1551909999999999
	.quad	0x3ff8ce48626f60e1              # double 1.550362
	.quad	0x40067a860dcb9a9e              # double 2.8098260000000002
	.quad	0x401377efe0ce0b91              # double 4.8671259999999998
	.quad	0x4019f75ee99a62ed              # double 6.4915729999999998
	.quad	0x3ff4c33f85510d39              # double 1.297668
	.quad	0x4016a6861e92923e              # double 5.6626209999999997
	.quad	0x401122ae4b018612              # double 4.283868
	.quad	0x40149c46950fc71d              # double 5.1526129999999997
	.quad	0x4015c9fd36f7e3d2              # double 5.4472550000000002
	.quad	0x40118304ccee5abc              # double 4.377948
	.quad	0x4020cd7e45803cd1              # double 8.4013539999999995
	.quad	0x3fe743e963dc486b              # double 0.72704000000000002
	.quad	0x4019da0f0a5efe93              # double 6.4629479999999999
	.quad	0x401ad86e7e62dc6e              # double 6.7113589999999999
	.quad	0x4022e24a48f96e16              # double 9.4419730000000008
	.quad	0x402022ff6d330942              # double 8.0683550000000004
	.quad	0x4000ee49f51697f2              # double 2.116352
	.quad	0x401e63fcc9ea9a3d              # double 7.5976439999999998
	.quad	0x402021f5dfeb8d82              # double 8.0663289999999996
	.quad	0x4019ba604e1e7104              # double 6.4320079999999997
	.quad	0x40106871a3b14a90              # double 4.1019959999999998
	.quad	0x401fc4a276b7ed42              # double 7.9420260000000003
	.quad	0x3ff8f0c77dd872f3              # double 1.5587839999999999
	.quad	0x4021be85b9e8c47a              # double 8.8721139999999998
	.quad	0x40019d1c3ac929aa              # double 2.2017139999999999
	.quad	0x4020cdb530ced4e5              # double 8.4017730000000004
	.quad	0x400758c21e1d2179              # double 2.918339
	.quad	0x4001fb05faebc409              # double 2.2475700000000001
	.quad	0x400c503211cb039f              # double 3.539158
	.quad	0x40203bdc26dce39b              # double 8.1169139999999995
	.quad	0x401b260fe47991bc              # double 6.7871699999999997
	.quad	0x402235b1422ccb3a              # double 9.1048679999999997
	.quad	0x3ff015a4acf312b2              # double 1.0052840000000001
	.quad	0x4011dd7be9856a38              # double 4.4662930000000003
	.quad	0x3ff01352220bc383              # double 1.0047170000000001
	.quad	0x401a04299d883ba3              # double 6.5040649999999998
	.quad	0x4015252e72da1230              # double 5.2863100000000003
	.quad	0x4015b6b8b69552e3              # double 5.428439
	.quad	0x4014d32096787ce9              # double 5.2061789999999997
	.quad	0x40235940bbb1f256              # double 9.6743220000000001
	.quad	0x401a3f5f0b28522f              # double 6.5618860000000003
	.quad	0x4010785729b280f1              # double 4.1175199999999998
	.quad	0x4017d68d32830a0b              # double 5.9595229999999999
	.quad	0x401cf7d63022dd7b              # double 7.2420280000000004
	.quad	0x3fef743c7d5ed070              # double 0.98293900000000001
	.quad	0x40222bee807bbb62              # double 9.0858039999999995
	.quad	0x401408151a437825              # double 5.0078930000000001
	.quad	0x3fd773e681a9b8cc              # double 0.36644900000000002
	.quad	0x4020b37110e453d2              # double 8.3504719999999999
	.quad	0x3ffc9707182235b5              # double 1.786872
	.quad	0x4006fcfcc5b8dc55              # double 2.873529
	.quad	0x3fdb06b7aa25d8d8              # double 0.42228500000000002
	.quad	0x401a657928e0c9da              # double 6.5990950000000002
	.quad	0x401ed85015c20924              # double 7.7112429999999996
	.quad	0x4015033c60029f17              # double 5.2531600000000003
	.quad	0x402197503b81b64e              # double 8.795534
	.quad	0x400c1324851a8694              # double 3.509347
	.quad	0x4020d6d6777079e6              # double 8.4196050000000007
	.quad	0x40112691ea78af3e              # double 4.2876659999999998
	.quad	0x3ff7a848beb5b2d5              # double 1.478585
	.quad	0x4021dd23d4f15e7d              # double 8.9319140000000008
	.quad	0x40189a90cd423d92              # double 6.1509429999999998
	.quad	0x4012778e9f6a93f3              # double 4.6167550000000004
	.quad	0x3fe5847d3d4280ae              # double 0.67242299999999999
	.quad	0x4023c75bc44bf4cb              # double 9.8893719999999998
	.quad	0x3fe092b5e529bae4              # double 0.51790899999999995
	.quad	0x3ff85096bb98c7e3              # double 1.5196750000000001
	.quad	0x40151a7c5ac471b4              # double 5.2758649999999996
	.quad	0x40214501e2584f4c              # double 8.6347799999999992
	.quad	0x40203b8ae31d712a              # double 8.1162939999999999
	.quad	0x3f7d63886594af4f              # double 0.007175
	.quad	0x3ffb0c0ad03d9a95              # double 1.6904399999999999
	.quad	0x3fffc36a832b990b              # double 1.985209
	.quad	0x4013c75ddd2ae8e2              # double 4.9446940000000001
	.quad	0x401ef7c286f8ad25              # double 7.7419529999999996
	.quad	0x4022427a85015c21              # double 9.1298410000000008
	.quad	0x40230bf077ccc038              # double 9.5233190000000007
	.quad	0x401a05182a9930be              # double 6.504975
	.quad	0x4014ec896dd26b72              # double 5.2309929999999998
	.quad	0x40219064a9cdc444              # double 8.7820180000000007
	.quad	0x401f9fdeb52c9d17              # double 7.906123
	.quad	0x40186f38c5436b90              # double 6.1086150000000004
	.quad	0x400669307af20ea6              # double 2.8013620000000001
	.quad	0x4017f5019f3c70ca              # double 5.9892640000000004
	.quad	0x3ff46a012599ed7c              # double 1.2758799999999999
	.quad	0x40120bee807bbb62              # double 4.5116519999999998
	.quad	0x401b493af74cd317              # double 6.8215139999999996
	.quad	0x402078d801b43526              # double 8.2360229999999994
	.quad	0x4023ba3bff8a8f3b              # double 9.8637390000000007
	.quad	0x40196d06fef7c244              # double 6.3564720000000001
	.quad	0x4012e72580c308ff              # double 4.7257290000000003
	.quad	0x40191b75ea67e847              # double 6.2768170000000003
	.quad	0x400b3c6a7ef9db23              # double 3.4045000000000001
	.quad	0x4020c875f6fd21ff              # double 8.3915249999999997
	.quad	0x4014ee43675ddd2b              # double 5.2326790000000001
	.quad	0x3fe79a2403148777              # double 0.73756600000000005
	.quad	0x4001edeebb341e15              # double 2.2411780000000001
	.quad	0x402009e6256366d8              # double 8.0193340000000006
	.quad	0x401a82773e24febd              # double 6.627408
	.quad	0x3fdb703afb7e9100              # double 0.42872500000000002
	.quad	0x401d2c93a7115161              # double 7.2935319999999999
	.quad	0x4004b425f202107b              # double 2.5879629999999998
	.quad	0x401690285ec3dab6              # double 5.6407790000000002
	.quad	0x3ffd22b3892ee84b              # double 1.820972
	.quad	0x3fd46c9c0a8d21bc              # double 0.319129
	.quad	0x40222d21bc126a66              # double 9.0881480000000003
	.quad	0x3fd462b6ae7d566d              # double 0.318525
	.quad	0x4021be974a3400b9              # double 8.8722480000000008
	.quad	0x4012e2b55ef1fddf              # double 4.7213950000000002
	.quad	0x4021f9aa821f2991              # double 8.9876290000000001
	.quad	0x40162ae924f227d0              # double 5.5419049999999999
	.quad	0x40214503968d759f              # double 8.6347930000000002
	.quad	0x4023a6f8055fbb51              # double 9.8261109999999991
	.quad	0x401dc92428d434a0              # double 7.4464269999999999
	.quad	0x400e2ac5c13fd0d0              # double 3.7708849999999998
	.quad	0x4004565ecc3e3194              # double 2.542173
	.quad	0x3fe7eabbcb1cc964              # double 0.74740399999999996
	.quad	0x40177333b96af039              # double 5.8625020000000001
	.quad	0x401fb13660e51d26              # double 7.9230590000000003
	.quad	0x3ffd18eeae9ee45c              # double 1.818587
	.quad	0x400ad42fe82517e7              # double 3.3536069999999998
	.quad	0x4022a80218def417              # double 9.3281410000000005
	.quad	0x400ad70cdc8754f3              # double 3.3550049999999998
	.quad	0x4015a542a23bff8b              # double 5.4113870000000004
	.quad	0x3ff914cfd08d4bad              # double 1.5675809999999999
	.quad	0x4004747c73eee526              # double 2.5568780000000002
	.quad	0x401982d1aeb3dd12              # double 6.3777530000000002
	.quad	0x402345fd8adab9f5              # double 9.6366999999999993
	.quad	0x3fdbab7132724313              # double 0.43233899999999997
	.quad	0x402035887ebf22c0              # double 8.1045569999999998
	.quad	0x3ff8f19d66adb403              # double 1.558988
	.quad	0x402286ed6777079e              # double 9.2635299999999994
	.quad	0x4010ddef416bdb1a              # double 4.2167329999999996
	.quad	0x400e7675579af188              # double 3.8078409999999998
	.quad	0x401f171151611ba4              # double 7.7725270000000002
	.quad	0x40014d07852f7f4a              # double 2.1626120000000002
	.quad	0x401926a37ac3eb7d              # double 6.2877330000000002
	.quad	0x40235ac0c62e4d1a              # double 9.6772519999999993
	.quad	0x40146cdf266ba494              # double 5.1063200000000002
	.quad	0x3ff84cda6e75ff61              # double 1.5187630000000001
	.quad	0x401156ec9e236c16              # double 4.3348870000000002
	.quad	0x4021abf0dc768dfc              # double 8.8358220000000002
	.quad	0x401444528283d35f              # double 5.0667210000000003
	.quad	0x4003a7008a697aee              # double 2.4565440000000001
	.quad	0x401b3d373affb04f              # double 6.8097810000000001
	.quad	0x402236fb8f57f738              # double 9.1073880000000003
	.quad	0x3ffb21272c94b381              # double 1.695594
	.quad	0x3fe0c0bdcad14a0a              # double 0.52352799999999999
	.quad	0x40129163fdd65a14              # double 4.6419829999999997
	.quad	0x40028e3369b9d7fe              # double 2.3194340000000002
	.quad	0x402395a22f6a50d7              # double 9.7922530000000005
	.quad	0x4022e9ef5232d2bb              # double 9.4569039999999997
	.quad	0x401620079a2834d2              # double 5.5312789999999996
	.quad	0x4023ea00c0f01fb8              # double 9.9570369999999996
	.quad	0x400fc137f38c5437              # double 3.9693450000000001
	.quad	0x40114d1cc100e6b0              # double 4.3253050000000002
	.quad	0x3fde86d2ed783dff              # double 0.47697899999999999
	.quad	0x4020b0893b7d8490              # double 8.3447969999999998
	.quad	0x40165c621b7e0ac8              # double 5.5902180000000001
	.quad	0x40209beb7cbb3c82              # double 8.3045310000000008
	.quad	0x4014e691ea78af3e              # double 5.2251659999999998
	.quad	0x401e5378ab0c88a4              # double 7.5815149999999996
	.quad	0x401fe039abf33871              # double 7.9689699999999996
	.quad	0x4011f894c447c30d              # double 4.4927549999999998
	.quad	0x400511819d2391d5              # double 2.6335479999999998
	.quad	0x3fdddc6e2a80064b              # double 0.46657900000000002
	.quad	0x401aae5aff2a172b              # double 6.6702690000000002
	.quad	0x40010ef672b88440              # double 2.1323059999999998
	.quad	0x40225bbb83cf2cf9              # double 9.1791649999999994
	.quad	0x400e36965f5275ef              # double 3.7766540000000002
	.quad	0x3ff5e9ec2ce46499              # double 1.36961
	.quad	0x402121f2778140dd              # double 8.5663029999999996
	.quad	0x40004706d5065732              # double 2.034681
	.quad	0x4017e2d16b97fe8f              # double 5.9715020000000001
	.quad	0x3ffb1e0a41a261bf              # double 1.694834
	.quad	0x400a927136a400fc              # double 3.3215050000000002
	.quad	0x4014b451b93037d6              # double 5.1760929999999998
	.quad	0x3ffb823c85c24c40              # double 1.7192959999999999
	.quad	0x40153df82b1f687b              # double 5.3105169999999999
	.quad	0x40176399b2c40d0b              # double 5.8472660000000003
	.quad	0x40074d0b30b5aa71              # double 2.9126189999999998
	.quad	0x3fe8a1187e7c06e2              # double 0.76966500000000004
	.quad	0x3fb792189bd8383b              # double 0.092073000000000002
	.quad	0x400782bb6672fba0              # double 2.9388339999999999
	.quad	0x4012dc6c97d8cf3a              # double 4.7152580000000004
	.quad	0x401485f4a1272c95              # double 5.1308160000000003
	.quad	0x400a64b87bdcf030              # double 3.2991799999999998
	.quad	0x3ffee0afa2f05a71              # double 1.9298550000000001
	.quad	0x4015d9a415f45e0b              # double 5.4625399999999997
	.quad	0x401e93d29563a9f4              # double 7.6443580000000004
	.quad	0x4022804ee7c49fd8              # double 9.2506020000000006
	.quad	0x4016bacd184c2720              # double 5.682423
	.quad	0x40146e1198aeb80f              # double 5.1074890000000002
	.quad	0x40109cc575c0767d              # double 4.1530969999999998
	.quad	0x40149b73d188f430              # double 5.1518090000000001
	.quad	0x3fc361804d983947              # double 0.15141299999999999
	.quad	0x401d69d4d834091c              # double 7.353351
	.quad	0x400021d10b1feeb3              # double 2.0165120000000001
	.quad	0x4011654b8bef8ceb              # double 4.3489209999999998
	.quad	0x402222c3009b3073              # double 9.0678940000000008
	.quad	0x4022bba55d1c3ac9              # double 9.3664959999999997
	.quad	0x40141c8e68e3ef28              # double 5.0278869999999998
	.quad	0x4002f73647baa9b5              # double 2.3707090000000002
	.quad	0x3fed5894812be48a              # double 0.91706299999999996
	.quad	0x400d3a0b5ed8d36b              # double 3.6533419999999999
	.quad	0x3ff999b3d07c84b6              # double 1.600025
	.quad	0x401fd70d1fa33376              # double 7.9600109999999997
	.quad	0x4022394bbe4473cd              # double 9.1119059999999994
	.quad	0x400d09d6adf71eb0              # double 3.629804
	.quad	0x401e54449dbec248              # double 7.5822929999999999
	.quad	0x3fe55dc6195464dc              # double 0.66769699999999998
	.quad	0x401627739f340d4e              # double 5.5385270000000002
	.quad	0x4011a040bfe3b03e              # double 4.4064969999999999
	.quad	0x4013e164840e171a              # double 4.97011
	.quad	0x40217757f737da62              # double 8.7330930000000002
	.quad	0x3feb998d045fe111              # double 0.86249399999999998
	.quad	0x4019bc8ffb8b2639              # double 6.4341429999999997
	.quad	0x40227a0b3d4ae42a              # double 9.2383670000000002
	.quad	0x3fd8e36d22424a27              # double 0.38888099999999998
	.quad	0x4013771c53f39d1b              # double 4.8663189999999998
	.quad	0x401ccbb44e50c5eb              # double 7.1989299999999998
	.quad	0x3ff0721b3aeee957              # double 1.0278579999999999
	.quad	0x400d7f559b3d07c8              # double 3.6871749999999999
	.quad	0x401e4a17b0f6ad71              # double 7.572356
	.quad	0x4019fab042528ae7              # double 6.4948129999999997
	.quad	0x40148b0ab2e1693c              # double 5.135783
	.quad	0x40230e3992c8c500              # double 9.5277829999999994
	.quad	0x401f6c30d306a2b1              # double 7.8556549999999996
	.quad	0x401979db22d0e560              # double 6.3689999999999998
	.quad	0x3fe5ede97d06bbdc              # double 0.68529200000000001
	.quad	0x4011fcc07aaef2c7              # double 4.4968279999999998
	.quad	0x40119d55a3a08399              # double 4.4036470000000003
	.quad	0x40200a8c9b845565              # double 8.0206040000000005
	.quad	0x3fe2403361565c2d              # double 0.57033699999999998
	.quad	0x400432324c836651              # double 2.5245099999999998
	.quad	0x3fee6540cc78e9f7              # double 0.94986000000000004
	.quad	0x400a3e5e2478854d              # double 3.2804530000000001
	.quad	0x4019cd12018a43bb              # double 6.4502639999999998
	.quad	0x4018015db3397dd0              # double 6.0013339999999999
	.quad	0x40196f47304039ac              # double 6.35867
	.quad	0x3ff7bd0aed99cbef              # double 1.4836530000000001
	.quad	0x40146dbc664d3bf3              # double 5.107164
	.quad	0x3ff04b7d41743e96              # double 1.0184299999999999
	.quad	0x3ff2f228dc981beb              # double 1.184121
	.quad	0x401393ac4f7ec354              # double 4.8942119999999996
	.quad	0x4003268900c521de              # double 2.3938160000000002
	.quad	0x4012c1a1986b9c30              # double 4.6890929999999997
	.quad	0x3fefab239a38fbca              # double 0.98964099999999999
	.quad	0x40022b3461309c80              # double 2.271096
	.quad	0x402174e69f05ea25              # double 8.7283220000000004
	.quad	0x40238d4da4ce8102              # double 9.7759830000000001
	.quad	0x401e08a0902de00d              # double 7.5084249999999999
	.quad	0x401e73f4eca686e8              # double 7.613239
	.quad	0x402020d1958969a1              # double 8.0640990000000006
	.quad	0x401c0ae46cfc829d              # double 7.010637
	.quad	0x4019bca07f66e86c              # double 6.4342059999999996
	.quad	0x4018f6559f6ec5b0              # double 6.2405609999999996
	.quad	0x400248e4fb97bb73              # double 2.285593
	.quad	0x4007fa3ca7503b82              # double 2.9971860000000001
	.quad	0x402365c3bd599243              # double 9.6987590000000007
	.quad	0x3fee17d49d7ba66a              # double 0.94040900000000005
	.quad	0x4017c0614163779f              # double 5.9378710000000003
	.quad	0x400168c60cbf2b24              # double 2.1761590000000002
	.quad	0x40206a8a1dfb938a              # double 8.2080850000000005
	.quad	0x401ab0da1a93293d              # double 6.6727069999999999
	.quad	0x40012b8f9b13165d              # double 2.1462699999999999
	.quad	0x4021de4ef0281ba8              # double 8.934196
	.quad	0x4021238cfbfc6541              # double 8.5694350000000004
	.quad	0x3ff88e3bcd35a858              # double 1.5347249999999999
	.quad	0x4020a4d1633482bf              # double 8.3219100000000008
	.quad	0x400f5559b3d07c85              # double 3.9166750000000001
	.quad	0x4001ac92146a1a50              # double 2.209263
	.quad	0x3ff3e9e2bcf91a33              # double 1.2446010000000001
	.quad	0x401de7e80389f83c              # double 7.4764710000000001
	.quad	0x4022e7b139c94f6a              # double 9.4525240000000004
	.quad	0x402037739f340d4e              # double 8.1083040000000004
	.quad	0x401bbbc382a12f90              # double 6.9333629999999999
	.quad	0x4010dd1d4738a3b5              # double 4.2159319999999996
	.quad	0x400cf90a7829068a              # double 3.6216020000000002
	.quad	0x3ffe6b2e1693c03c              # double 1.9011670000000001
	.quad	0x4010c37fbefd0071              # double 4.1909169999999998
	.quad	0x3ff29a2834d26fa4              # double 1.162636
	.quad	0x401068c5436b8f9b              # double 4.1023149999999999
	.quad	0x400d714013ec460f              # double 3.6802980000000001
	.quad	0x3ff012ab68cef673              # double 1.0045580000000001
	.quad	0x400fbe6d58c8eef2              # double 3.9679820000000001
	.quad	0x4020d579f2346562              # double 8.4169459999999994
	.quad	0x40174bf8769ec2ce              # double 5.8241899999999998
	.quad	0x401308012dfd694d              # double 4.7578170000000002
	.quad	0x4014d7e9531550ca              # double 5.2108509999999999
	.quad	0x4017dd8d36b4c7f3              # double 5.9663589999999997
	.quad	0x4017ca1554fbdad7              # double 5.9473469999999997
	.quad	0x401735b9628cbd12              # double 5.8024649999999998
	.quad	0x401656eb0b7c3505              # double 5.5848810000000002
	.quad	0x4013461aa3f034b1              # double 4.8184610000000001
	.quad	0x3ffaf9378ee28672              # double 1.6858439999999999
	.quad	0x4022f803254e6e22              # double 9.4843989999999998
	.quad	0x401e983558a76102              # double 7.6486409999999996
	.quad	0x4023a61d2178f68c              # double 9.8244410000000002
	.quad	0x401b662ae4b01861              # double 6.8497729999999999
	.quad	0x3fd8557de0d66f0d              # double 0.380218
	.quad	0x401fb78a2a90cd42              # double 7.9292379999999998
	.quad	0x401a213d74d594f2              # double 6.5324609999999996
	.quad	0x3ffe1fb9389b5200              # double 1.8827449999999999
	.quad	0x4021f02ecaeea63b              # double 8.9691069999999993
	.quad	0x3ffff6177ea1c68f              # double 1.9975810000000001
	.quad	0x3fd790795f676ea4              # double 0.36819299999999999
	.quad	0x401f5e1b089a0275              # double 7.8418999999999998
	.quad	0x401fda2ad3e920c0              # double 7.9630539999999996
	.quad	0x40108daf07bfe7e2              # double 4.138363
	.quad	0x3fc384cad57bc7f7              # double 0.15248999999999999
	.quad	0x401976f262888b54              # double 6.3661589999999997
	.quad	0x40140eb399f5dfec              # double 5.0143570000000004
	.quad	0x3fd4628027d88c1e              # double 0.31851200000000002
	.quad	0x401bdce0b912dba5              # double 6.9657010000000001
	.quad	0x40160b28d8665e03              # double 5.5108980000000001
	.quad	0x401d5e019b0ab2e1              # double 7.3418029999999996
	.quad	0x3ffbc2efd438d1d9              # double 1.7350920000000001
	.quad	0x3fe75c422036006d              # double 0.73001199999999999
	.quad	0x4020c710880d801b              # double 8.3887979999999995
	.quad	0x4001e80c73abc947              # double 2.238305
	.quad	0x40041ac0c62e4d1a              # double 2.5130629999999998
	.quad	0x401bc859c8c9320e              # double 6.9456550000000004
	.quad	0x4004ee807bbb6241              # double 2.6164559999999999
	.quad	0x40236b215fcc1872              # double 9.7092390000000002
	.quad	0x4012354152b0a6fc              # double 4.5520069999999997
	.quad	0x40099aeab7995ee1              # double 3.2006429999999999
	.quad	0x3fed94b167ec7864              # double 0.92440100000000002
	.quad	0x4010124638c97529              # double 4.0178459999999996
	.quad	0x4003067ad8e43244              # double 2.3781639999999999
	.quad	0x4005cfdc1615ebfb              # double 2.7264940000000002
	.quad	0x401284178705425f              # double 4.6289959999999999
	.quad	0x4023a92a51e321a3              # double 9.8304010000000001
	.quad	0x40225f922962cfd9              # double 9.1866620000000001
	.quad	0x3feea749f0e4da0a              # double 0.95792100000000002
	.quad	0x401e654cdb7ae579              # double 7.5989259999999996
	.quad	0x40167ce8d972cd7d              # double 5.621982
	.quad	0x4018dd9a52263d81              # double 6.2164089999999996
	.quad	0x4017bf95d4e8fb01              # double 5.9370950000000002
	.quad	0x3ff621f8e3ac0c63              # double 1.383294
	.quad	0x40153c9f2fdb8fde              # double 5.3092009999999998
	.quad	0x3ff4bc2a8869c66d              # double 1.295939
	.quad	0x400566a22b3892ef              # double 2.6751140000000002
	.quad	0x401471d3aa369fcf              # double 5.1111589999999998
	.quad	0x401e0f2389720429              # double 7.5147839999999996
	.quad	0x400f0fb09203a323              # double 3.8826610000000001
	.quad	0x40163fc158fb43d9              # double 5.5622610000000003
	.quad	0x4017fcc2938de6de              # double 5.9968360000000001
	.quad	0x400a5b5b70691ea8              # double 3.2946080000000002
	.quad	0x401ede0370cdc875              # double 7.7168099999999997
	.quad	0x40117682f944241c              # double 4.3657339999999998
	.quad	0x400074c33b539325              # double 2.057013
	.quad	0x4010d34a87e38eb0              # double 4.2063389999999998
	.quad	0x40206d67fd3f5b60              # double 8.2136840000000007
	.quad	0x3fffa411c2a02321              # double 1.9775560000000001
	.quad	0x3ff62615a8deb0fb              # double 1.384298
	.quad	0x3fcef5caf2d7f951              # double 0.24187600000000001
	.quad	0x401825f41aef6f8f              # double 6.037064
	.quad	0x4000c2b40f66a551              # double 2.0950700000000002
	.quad	0x401b25269595feda              # double 6.7862799999999996
	.quad	0x3ffc02c5e2cdc012              # double 1.750677
	.quad	0x4017978897e99631              # double 5.8979819999999998
	.quad	0x401b05e39713ad5c              # double 6.7557510000000001
	.quad	0x40108bb341e14be0              # double 4.1364260000000002
	.quad	0x400924f6dfc5cdd5              # double 3.143049
	.quad	0x4010facd9e83e426              # double 4.2449250000000003
	.quad	0x3ffd5dc2f405f6ba              # double 1.835391
	.quad	0x40239b05b7cfe586              # double 9.802778
	.quad	0x402307d3910c2c5e              # double 9.5152859999999997
	.quad	0x3ffb7b384fd2a62b              # double 1.7175830000000001
	.quad	0x401b022813448063              # double 6.7521060000000004
	.quad	0x402388ecfa69be0a              # double 9.7674330000000005
	.quad	0x4018674d594f26af              # double 6.1008810000000002
	.quad	0x4016c778dd616f87              # double 5.6947970000000003
	.quad	0x401000a1be2b495a              # double 4.0006170000000001
	.quad	0x4016f161e4f765fe              # double 5.7357250000000004
	.quad	0x400914afd5454153              # double 3.1351010000000001
	.quad	0x401318f605ab3aac              # double 4.7743760000000002
	.quad	0x3ff6a75ee99a62ed              # double 1.415862
	.quad	0x4017b36c9c0a8d22              # double 5.9252190000000002
	.quad	0x3ff2ec6ac215b9a6              # double 1.1827190000000001
	.quad	0x401f4b5dcc63f141              # double 7.8235999999999998
	.quad	0x400be55193708aad              # double 3.4869720000000002
	.quad	0x401e9b18dac258d6              # double 7.6514620000000004
	.quad	0x4023f870b8cfbfc6              # double 9.9852349999999994
	.quad	0x40149f0c34c1a8ac              # double 5.1553199999999997
	.quad	0x4013be0c5a8155d6              # double 4.935594
	.quad	0x40215d63ed0f6274              # double 8.6824030000000007
	.quad	0x400c60d66f0cfe15              # double 3.5472839999999999
	.quad	0x402250d8665e02eb              # double 9.1579010000000007
	.quad	0x40145807bbb62414              # double 5.0859670000000001
	.quad	0x4022d322f2734f83              # double 9.412376
	.quad	0x402373c4b09e98dd              # double 9.7261100000000002
	.quad	0x4019f5b70691ea79              # double 6.4899560000000003
	.quad	0x401cbc04c8bc9cd4              # double 7.1836120000000001
	.quad	0x401de86b59146e4c              # double 7.476972
	.quad	0x40026e7a311e85fd              # double 2.303944
	.quad	0x401f2996fa82e87d              # double 7.7906149999999998
	.quad	0x4020fb4070329803              # double 8.4907260000000004
	.quad	0x401258383ad9f0a2              # double 4.5861520000000002
	.quad	0x4021ed2263d816ad              # double 8.9631530000000001
	.quad	0x3ff9f40c4156e265              # double 1.622082
	.quad	0x3ff523a7daa4fca4              # double 1.321205
	.quad	0x40170f8055fbb518              # double 5.7651380000000003
	.quad	0x401089a240314877              # double 4.1344079999999996
	.quad	0x4013a66dbd72bcb6              # double 4.912528
	.quad	0x401001adea897636              # double 4.0016400000000001
	.quad	0x400ca163fdd65a14              # double 3.5788039999999999
	.quad	0x3fd4c23315d701da              # double 0.324353
	.quad	0x3fe4f0dc768dfbd7              # double 0.65440200000000004
	.quad	0x402335de37585be2              # double 9.6052110000000006
	.quad	0x3feaef4e0114d2f6              # double 0.84171200000000002
	.quad	0x400b2d97b30f8c65              # double 3.397262
	.quad	0x40116cb89d6adf72              # double 4.3561730000000001
	.quad	0x4023a18d8a979e17              # double 9.8155330000000002
	.quad	0x4019c18ac9f2fdb9              # double 6.439006
	.quad	0x401b30bbb1f255f3              # double 6.7975909999999997
	.quad	0x401ecbc8c0ce91c9              # double 7.699008
	.quad	0x400da4db163baba8              # double 3.7054960000000001
	.quad	0x3fd34d4024b33db0              # double 0.30159000000000002
	.quad	0x3ff3d753a3ec02f3              # double 1.24007
	.quad	0x4021a89e98dcdb38              # double 8.8293350000000004
	.quad	0x4010cf7b17ce52df              # double 4.2026180000000002
	.quad	0x400bde95b78cc9a7              # double 3.4836839999999998
	.quad	0x4022168d5410f94d              # double 9.0440470000000008
	.quad	0x3ff9a2c12ad81adf              # double 1.6022350000000001
	.quad	0x4010ba87e38eb032              # double 4.1821590000000004
	.quad	0x4012a0053e2d6239              # double 4.6562700000000001
	.quad	0x401809af9ebe9c88              # double 6.0094589999999997
	.quad	0x40214f1eafee6fb5              # double 8.6545310000000004
	.quad	0x4021db8e29f9ce8e              # double 8.9288190000000007
	.quad	0x401029dcf893faf4              # double 4.0408819999999999
	.quad	0x401909f0e4da09cc              # double 6.2597079999999998
	.quad	0x40000060780fdc16              # double 2.000184
	.quad	0x3f9b31c219eb6391              # double 0.026557000000000001
	.quad	0x4011df8ad2567989              # double 4.4683029999999997
	.quad	0x400e3bdcf0307f24              # double 3.7792300000000001
	.quad	0x40189ce358298cc1              # double 6.1532109999999998
	.quad	0x4020b9f4906034f4              # double 8.363194
	.quad	0x401abe5eaab04253              # double 6.6859080000000004
	.quad	0x4007be7fb267c6b9              # double 2.9680170000000001
	.quad	0x401c8d67fd3f5b60              # double 7.1380920000000003
	.quad	0x401e511e85fd04a3              # double 7.579218
	.quad	0x401d83dee78183f9              # double 7.3787799999999999
	.quad	0x4009fbbd7b2031cf              # double 3.2479200000000001
	.quad	0x40187a8b08dd1e54              # double 6.1196710000000003
	.quad	0x3ff4dfb0d51f81a6              # double 1.3046120000000001
	.quad	0x4004732f01754b06              # double 2.5562420000000001
	.quad	0x3ff8f143393ab431              # double 1.558902
	.quad	0x401b42a454de7ea6              # double 6.81508
	.quad	0x3fde3860999dcb58              # double 0.47219100000000003
	.quad	0x4004eb81f969e3c9              # double 2.6149939999999998
	.quad	0x4004e067cf1c3266              # double 2.6095730000000001
	.quad	0x4017f243dccea290              # double 5.9865870000000001
	.quad	0x4012f5b1c8648840              # double 4.7399360000000001
	.quad	0x4022a018e757928e              # double 9.3126899999999999
	.quad	0x40019d3d4280ae10              # double 2.2017769999999999
	.quad	0x4013102b841248d8              # double 4.7657910000000001
	.quad	0x4020f7db09a671ef              # double 8.4840929999999997
	.quad	0x402225186db50f41              # double 9.0724520000000002
	.quad	0x4009859af9ebe9c9              # double 3.1902370000000002
	.quad	0x3fb1de7a743a6480              # double 0.069801000000000002
	.quad	0x4009c5942917507f              # double 3.2214740000000002
	.quad	0x402217bf1e8e6080              # double 9.0463799999999992
	.quad	0x400681871e6cd291              # double 2.8132459999999999
	.quad	0x4022120232096788              # double 9.0351730000000003
	.quad	0x3fe7d371971c10d8              # double 0.74456100000000003
	.quad	0x4022fdfeb8d82342              # double 9.4960839999999997
	.quad	0x4014b1e75360d024              # double 5.1737339999999996
	.quad	0x4017e10a137f38c5              # double 5.9697649999999998
	.quad	0x3ffc014727dcbddc              # double 1.7503120000000001
	.quad	0x3ff20eebf65dbfcf              # double 1.1286430000000001
	.quad	0x4021e2c9f2fdb8fe              # double 8.9429470000000002
	.quad	0x3fef26612839042e              # double 0.97343500000000005
	.quad	0x4000dd0aed99cbef              # double 2.1079310000000002
	.quad	0x3ff4b644955b4678              # double 1.2944990000000001
	.quad	0x3fe51d5e4a383276              # double 0.65983499999999995
	.quad	0x400ab8800eae18ad              # double 3.3400880000000002
	.quad	0x401bcb5b70691ea8              # double 6.9485910000000004
	.quad	0x400eb63ed0f62739              # double 3.8389869999999999
	.quad	0x3fe1feb6bf444e0e              # double 0.56234300000000004
	.quad	0x4000592ea52ef912              # double 2.0435460000000001
	.quad	0x401f48cb4aec8d5c              # double 7.8210879999999996
	.quad	0x402095955714b9cb              # double 8.2921549999999993
	.quad	0x4004ac0485a0be51              # double 2.583993
	.quad	0x401cc8aefb2aae29              # double 7.1959799999999996
	.quad	0x401cb24c404a72eb              # double 7.1741190000000001
	.quad	0x402039d66adb402d              # double 8.1129639999999998
	.quad	0x3ff6de0b4e11dbcb              # double 1.4292100000000001
	.quad	0x3ff9984c271fff7a              # double 1.599682
	.quad	0x4021631098d477bc              # double 8.693486
	.quad	0x402236c02f2f9874              # double 9.106935
	.quad	0x4020659ccfaeff5c              # double 8.1984619999999992
	.quad	0x402354f1e4b44a1f              # double 9.6659079999999999
	.quad	0x400b2f49491f2dc3              # double 3.3980890000000001
	.quad	0x40075fa2ad3e920c              # double 2.921697
	.quad	0x3fd840bbb1f255f3              # double 0.37895099999999998
	.quad	0x4013455ac03ff690              # double 4.8177289999999999
	.quad	0x40229c9dbec2480f              # double 9.3058910000000008
	.quad	0x40025974e65bea0c              # double 2.2936800000000002
	.quad	0x40216889e34330d7              # double 8.7041769999999996
	.quad	0x4019e319c5a3e39f              # double 6.4717779999999996
	.quad	0x40034e7ee9142b30              # double 2.4133279999999999
	.quad	0x3fd2ee631f8a0903              # double 0.29580000000000001
	.quad	0x3fe5acffa7eb6bf4              # double 0.67736799999999997
	.quad	0x4020ac27418d690a              # double 8.3362370000000006
	.quad	0x4008b4b9cb6848bf              # double 3.0882450000000001
	.quad	0x3fba65bea0ba1f4b              # double 0.103115
	.quad	0x3fd4ad538ac18f82              # double 0.32307900000000001
	.quad	0x401ed6e008e9b38d              # double 7.7098389999999996
	.quad	0x40222d1bf7ad4b27              # double 9.0881039999999995
	.quad	0x40101d823422467c              # double 4.0288170000000001
	.quad	0x400a1a8b4bf8fcd6              # double 3.2629609999999998
	.quad	0x401451c58255b036              # double 5.0798550000000002
	.quad	0x3ffd68b2a6b0d951              # double 1.8380609999999999
	.quad	0x400093986338b47c              # double 2.0720679999999998
	.quad	0x401cb90ea9e6eeb7              # double 7.18072
	.quad	0x401ce776c4827b70              # double 7.2260390000000001
	.quad	0x4021da50d6b228dd              # double 8.9263980000000007
	.quad	0x4022b9ba3ca7503c              # double 9.3627490000000008
	.quad	0x4015b0795f676ea4              # double 5.4223379999999999
	.quad	0x402093a7b9170d63              # double 8.2883890000000005
	.quad	0x401d621a2e7f6f4c              # double 7.3458030000000001
	.quad	0x4019186c6583e857              # double 6.2738509999999996
	.quad	0x401764b90214ad36              # double 5.8483619999999998
	.quad	0x401199a62ed35222              # double 4.400048
	.quad	0x401d8f0f16f4384c              # double 7.3897060000000003
	.quad	0x40008352eb5f5f0b              # double 2.0641229999999999
	.quad	0x4011980c308feac4              # double 4.3984839999999998
	.quad	0x40094228997c3d68              # double 3.1573039999999999
	.quad	0x4007646f15619115              # double 2.9240400000000002
	.quad	0x4009163a9f383f0c              # double 3.1358540000000001
	.quad	0x400fc5510d38cda7              # double 3.971346
	.quad	0x3ffc7a4e7ab75643              # double 1.77986
	.quad	0x3ffbb256ffc115df              # double 1.7310399999999999
	.quad	0x40217531fcd24e16              # double 8.7288969999999999
	.quad	0x40100fdef8487b9a              # double 4.0154990000000002
	.quad	0x40151cfd8f0c77de              # double 5.2783110000000004
	.quad	0x401600abf76a2f49              # double 5.5006560000000002
	.quad	0x3ff29ba4d6e47dc3              # double 1.1629989999999999
	.quad	0x3ffd2dfe75bc44bf              # double 1.8237289999999999
	.quad	0x401b12235b4edb2f              # double 6.7677129999999996
	.quad	0x4020c5818c5c9a35              # double 8.3857540000000004
	.quad	0x4021dfafea3df6dc              # double 8.9368890000000007
	.quad	0x401c38e4b87bdcf0              # double 7.0555599999999998
	.quad	0x40182858ff759685              # double 6.0394019999999999
	.quad	0x401f0bc7b45f17be              # double 7.7615040000000004
	.quad	0x3fee9b97353b4b30              # double 0.95649300000000004
	.quad	0x401df4a66559f6ec              # double 7.4889159999999997
	.quad	0x4021b9455219a848              # double 8.8618570000000005
	.quad	0x40212f225b749add              # double 8.5920590000000008
	.quad	0x4017496073de1e2e              # double 5.8216570000000001
	.quad	0x400b1ecbb7f9d6f1              # double 3.390037
	.quad	0x401368fe69270b07              # double 4.8525330000000002
	.quad	0x3fe932d2bb23571d              # double 0.78745399999999999
	.quad	0x40137ee631f8a090              # double 4.8739249999999998
	.quad	0x400dc861e92923e6              # double 3.7228430000000001
	.quad	0x402373dff3f0fe04              # double 9.7263179999999991
	.quad	0x3f8ceaf251c193b4              # double 0.014120000000000001
	.quad	0x4023a2b3892ee84b              # double 9.8177760000000002
	.quad	0x4021335cbff47736              # double 8.6003170000000004
	.quad	0x40201b69552e2fbe              # double 8.0535379999999996
	.quad	0x4006ac93a7115161              # double 2.834266
	.quad	0x40199d373affb04f              # double 6.4035310000000001
	.quad	0x400b2cd07852f7f5              # double 3.3968820000000002
	.quad	0x400188ebcc6c54bd              # double 2.191856
	.quad	0x40198e4217d2849d              # double 6.3889240000000003
	.quad	0x401f631c64ba94bc              # double 7.8467880000000001
	.quad	0x4020e1a34ca0c283              # double 8.4406990000000004
	.quad	0x4005f250b524399b              # double 2.7433179999999999
	.quad	0x400da620ab713272              # double 3.7061169999999999
	.quad	0x40229a7cbf6e3f79              # double 9.3017330000000005
	.quad	0x402045bf26f1dc51              # double 8.1362240000000003
	.quad	0x3fe9f4afd5454153              # double 0.81111900000000003
	.quad	0x402300d08919ef95              # double 9.5015909999999994
	.quad	0x4021dd60e94ee393              # double 8.9323800000000002
	.quad	0x401cbc7bcc2938de              # double 7.1840659999999996
	.quad	0x4013654a3c64345d              # double 4.848916
	.quad	0x40127642bf9830e4              # double 4.6154890000000002
	.quad	0x401a2f5a964e8b7e              # double 6.5462439999999997
	.quad	0x3fe9de657b84db9c              # double 0.80839799999999994
	.quad	0x4023f702e6644d87              # double 9.9824439999999992
	.quad	0x401c6c1615ebfa8f              # double 7.1055529999999996
	.quad	0x4021aa778140dd40              # double 8.8329430000000002
	.quad	0x4007129802c0a4a0              # double 2.8840789999999998
	.quad	0x3feed790752da986              # double 0.96381399999999995
	.quad	0x401351aef6f8f041              # double 4.8297689999999998
	.quad	0x3fff90f6273929ed              # double 1.972891
	.quad	0x401e62c5e2cdc012              # double 7.5964580000000002
	.quad	0x40089fa871a3b14b              # double 3.0779580000000002
	.quad	0x401be99d451fc4c1              # double 6.9781389999999996
	.quad	0x4014f24bfd2e9468              # double 5.236618
	.quad	0x401e7d0203e63e8e              # double 7.6220780000000001
	.quad	0x3fff163022dd7a9a              # double 1.942917
	.quad	0x4023a22ec28b2a6b              # double 9.8167629999999999
	.quad	0x4011073b42cc2d6b              # double 4.2570620000000003
	.quad	0x401779702e6644d8              # double 5.8685919999999996
	.quad	0x40210bcdfefbf402              # double 8.5230560000000004
	.quad	0x3fbc5b39e279dd3c              # double 0.110767
	.quad	0x400a3f36ac647779              # double 3.2808660000000001
	.quad	0x402151e90795f677              # double 8.6599810000000002
	.quad	0x3ffb9beb18116ebd              # double 1.7255659999999999
	.quad	0x400bc1672324c836              # double 3.4694349999999998
	.quad	0x4016a2fc69728a61              # double 5.6591659999999999
	.quad	0x401326ddaceee0f4              # double 4.7879550000000002
	.quad	0x4010000eae18ac9f              # double 4.0000559999999998
	.quad	0x4020a0913a4f8727              # double 8.3136080000000003
	.quad	0x4010239d1b2e59b0              # double 4.0347790000000003
	.quad	0x3fffe474538ef34d              # double 1.9932749999999999
	.quad	0x401e1ff7dfa00e28              # double 7.5312190000000001
	.quad	0x3ff7c0e38a7e73a3              # double 1.4845919999999999
	.quad	0x400fe28b2a6b0d95              # double 3.985617
	.quad	0x3fd2e2b8c75c4a84              # double 0.29508800000000002
	.quad	0x401e87dfe32a0664              # double 7.6326900000000002
	.quad	0x3ff6e7589efd86a9              # double 1.431481
	.quad	0x402133da72a7bd49              # double 8.6012760000000004
	.quad	0x4019178bbd380453              # double 6.2729939999999997
	.quad	0x400403f811f4f50a              # double 2.501938
	.quad	0x401e5abbcb1cc964              # double 7.5886069999999997
	.quad	0x4013e01e2584f4c7              # double 4.9688650000000001
	.quad	0x3ff5f6ac647778dd              # double 1.3727229999999999
	.quad	0x401e896bfca85cab              # double 7.634201
	.quad	0x40147b5c7cd898b3              # double 5.1204700000000001
	.quad	0x402126c5d206c871              # double 8.5757279999999998
	.quad	0x40019a250f840182              # double 2.2002660000000001
	.quad	0x4021716638433d6c              # double 8.7214829999999992
	.quad	0x4001043bb40b34e7              # double 2.1270669999999998
	.quad	0x3fd3a07b352a8438              # double 0.30667
	.quad	0x4020b7caa7589efe              # double 8.3589680000000008
	.quad	0x4020dd6605ee568a              # double 8.4324189999999994
	.quad	0x402325855970b49e              # double 9.573283
	.quad	0x402230c111ada76e              # double 9.0952230000000007
	.quad	0x400040f3cb3e5754              # double 2.0317150000000002
	.quad	0x400a4704bc27631b              # double 3.2846769999999998
	.quad	0x402284b1ab0856e7              # double 9.2591680000000007
	.quad	0x40223bd7d3910c2c              # double 9.1168809999999993
	.quad	0x401758db8bac710d              # double 5.8367750000000003
	.quad	0x400bf59578a2a90d              # double 3.4949140000000001
	.quad	0x3ff2711d798d8a98              # double 1.1526160000000001
	.quad	0x3ffe230db6a1e81d              # double 1.8835580000000001
	.quad	0x400e9fee2c98e53f              # double 3.8280910000000001
	.quad	0x3ff14114d2f5dbba              # double 1.078389
	.quad	0x40151ee2003ab863              # double 5.2801590000000003
	.quad	0x400b54fdf3b645a2              # double 3.4165000000000001
	.quad	0x3ff2cb46bacf7447              # double 1.174628
	.quad	0x3feb668e3ef28416              # double 0.85626899999999995
	.quad	0x40232595dd4c76d1              # double 9.5734089999999998
	.quad	0x40167a543f1c7582              # double 5.6194620000000004
	.quad	0x3fe6629307af20ea              # double 0.69953299999999996
	.quad	0x3faf05ea24cc6823              # double 0.060592
	.quad	0x401c794467381d7e              # double 7.1184250000000002
	.quad	0x4017db82c2bd7f52              # double 5.9643660000000001
	.quad	0x3fdec9d9d3458cd2              # double 0.48107
	.quad	0x400ef93c46d82ba6              # double 3.8716970000000002
	.quad	0x3fc8f92af9a8cdea              # double 0.195104
	.quad	0x402305989df1172f              # double 9.5109300000000001
	.quad	0x401c3acd5b6805a3              # double 7.0574240000000001
	.quad	0x4023d56605ee568a              # double 9.9167939999999994
	.quad	0x40238665bea0ba1f              # double 9.7624949999999994
	.quad	0x4014eb71b8aa0019              # double 5.2299259999999999
	.quad	0x40225d7fd82773e2              # double 9.1826159999999994
	.quad	0x40137cf9a06a6e33              # double 4.8720460000000001
	.quad	0x4019b76d5497310a              # double 6.4291280000000004
	.quad	0x40019c1b54195cc8              # double 2.2012239999999998
	.quad	0x401efcd0fe8ab4fa              # double 7.7468909999999997
	.quad	0x40134682f944241c              # double 4.8188589999999998
	.quad	0x401e05da6a444178              # double 7.5057159999999996
	.quad	0x401bbb252ce032db              # double 6.9327589999999999
	.quad	0x401b1f0ed3d859c9              # double 6.7803300000000002
	.quad	0x401a88c21e1d2179              # double 6.633553
	.quad	0x401648d8665e02eb              # double 5.5711380000000004
	.quad	0x4016cdeacc92146a              # double 5.7010909999999999
	.quad	0x401b7032db1e9f27              # double 6.8595689999999996
	.quad	0x400a0b1465e89225              # double 3.2554099999999999
	.quad	0x4011e567dbb16c1e              # double 4.4740289999999998
	.quad	0x40129a06e9ff0cbb              # double 4.650417
	.quad	0x40024fc158fb43d9              # double 2.2889430000000002
	.quad	0x3ff7524399b2c40d              # double 1.457584
	.quad	0x40081049a9973d9f              # double 3.0079530000000001
	.quad	0x3ff14768dfbd6a59              # double 1.0799339999999999
	.quad	0x402272ac322291fb              # double 9.2239699999999996
	.quad	0x4010863a5c1c6089              # double 4.1310820000000001
	.quad	0x4021e6d4c33b5393              # double 8.9508419999999997
	.quad	0x4023461e71044f1a              # double 9.6369509999999998
	.quad	0x4023dc27e9531551              # double 9.9299920000000003
	.quad	0x4010e554fbdad752              # double 4.2239570000000004
	.quad	0x40089ada76d97b31              # double 3.075612
	.quad	0x4021c75b5fa22707              # double 8.8893690000000003
	.quad	0x40185ff609dcf894              # double 6.093712
	.quad	0x4015871d1d4738a4              # double 5.3819470000000003
	.quad	0x400be72756861e93              # double 3.4878680000000002
	.quad	0x401df7f51efb6dca              # double 7.492146
	.quad	0x400afa2e7f6f4be8              # double 3.3721589999999999
	.quad	0x40229984e3ffef39              # double 9.2998419999999999
	.quad	0x401f1753a3ec02f3              # double 7.77278
	.quad	0x401f1656abde3fbc              # double 7.7718150000000001
	.quad	0x40050bff47735c18              # double 2.6308579999999999
	.quad	0x40020a9930be0ded              # double 2.2551749999999999
	.quad	0x401c9de6ddf00abf              # double 7.1542009999999996
	.quad	0x4000837f7be121ee              # double 2.0642079999999998
	.quad	0x40105de97d06bbdc              # double 4.0917110000000001
	.quad	0x4022b4185058dde8              # double 9.3517480000000006
	.quad	0x401f409784ec636b              # double 7.8130779999999999
	.quad	0x3fd6382a12f90108              # double 0.34717799999999999
	.quad	0x400e511622813448              # double 3.789593
	.quad	0x401fd7fae3608d09              # double 7.9609180000000003
	.quad	0x402256b93ccd0fe9              # double 9.1693820000000006
	.quad	0x401137fbefd00714              # double 4.3046720000000001
	.quad	0x401a56af46aa087d              # double 6.5846530000000003
	.quad	0x401b6a6d26740810              # double 6.8539320000000004
	.quad	0x400dfd6494d50ebb              # double 3.7487270000000001
	.quad	0x401cd9b845564b66              # double 7.2126169999999998
	.quad	0x4023b69a0ad8a116              # double 9.8566439999999993
	.quad	0x4012784f09528f19              # double 4.617489
	.quad	0x4018b59ccfaeff5c              # double 6.1773559999999996
	.quad	0x401986f1dc50ce4f              # double 6.3817820000000003
	.quad	0x401183f39d1b2e5a              # double 4.3788590000000003
	.quad	0x4001e256366d7a57              # double 2.2355160000000001
	.quad	0x3ff082f2f9873ffb              # double 1.0319700000000001
	.quad	0x401cab45ae5ffa3c              # double 7.1672580000000004
	.quad	0x40037f06f6944674              # double 2.4370250000000002
	.quad	0x401cbca57a786c22              # double 7.1842249999999996
	.quad	0x4022058f7121ab4b              # double 9.0108599999999992
	.quad	0x401c1b2031ceaf25              # double 7.0264899999999999
	.quad	0x401187b5f1bef49d              # double 4.38253
	.quad	0x4023c16fa82e87d3              # double 9.8778050000000003
	.quad	0x4014c64a59c065b6              # double 5.1936429999999998
	.quad	0x3fc25ccc89b0ee4a              # double 0.143457
	.quad	0x400e8f5019f3c70d              # double 3.8199770000000002
	.quad	0x4023f2e07e5a78f2              # double 9.9743689999999994
	.quad	0x3fc9fcc1871e6cd3              # double 0.20302600000000001
	.quad	0x401cd8e6d15ad107              # double 7.2118180000000001
	.quad	0x400b6473cd573648              # double 3.4240490000000001
	.quad	0x3ff62f177a7008a7              # double 1.3864970000000001
	.quad	0x400661f080303c08              # double 2.797822
	.quad	0x40155c90c4dec1c2              # double 5.3403960000000001
	.quad	0x40014da1a93293d1              # double 2.162906
	.quad	0x4017c0e410b630a9              # double 5.9383699999999999
	.quad	0x4016d117f84449dc              # double 5.7041930000000001
	.quad	0x401ae3afb7e90ff9              # double 6.7223499999999996
	.quad	0x4008529f59ccfaf0              # double 3.040343
	.quad	0x3fbd831f03d145d8              # double 0.115282
	.quad	0x401388958d9b5e96              # double 4.8833830000000003
	.quad	0x3fc8b50b0f27bb30              # double 0.193025
	.quad	0x40014eae18ac9f30              # double 2.1634180000000001
	.quad	0x4021cf8359bc33f8              # double 8.9052989999999994
	.quad	0x401f9ccd530489d2              # double 7.9031269999999996
	.quad	0x40220b2f01754b06              # double 9.0218430000000005
	.quad	0x401b37a85015c209              # double 6.8043529999999999
	.quad	0x3ffbb28f9f44d445              # double 1.7310939999999999
	.quad	0x40203fae147ae148              # double 8.1243750000000006
	.quad	0x400e4c0ce91c8eac              # double 3.787134
	.quad	0x3ffab3bea91d9b1b              # double 1.6688829999999999
	.quad	0x4023fca4d2b2bfdb              # double 9.9934449999999994
	.quad	0x400c1d6c72192210              # double 3.514367
	.quad	0x40111c01e68a0d35              # double 4.2773510000000003
	.quad	0x400c6eefa1e3eaf7              # double 3.5541680000000002
	.quad	0x402287733a8a3f8a              # double 9.2645510000000009
	.quad	0x401b03c8e25c810a              # double 6.7536959999999997
	.quad	0x4018c24cc6822ff1              # double 6.1897460000000004
	.quad	0x40119e703afb7e91              # double 4.404725
	.quad	0x4003dfce3150dae4              # double 2.48428
	.quad	0x3ff80adeebb341e1              # double 1.5026539999999999
	.quad	0x401ea739f340d4dc              # double 7.6633069999999996
	.quad	0x4010cc4113c68662              # double 4.1994670000000003
	.quad	0x40126399f5dfeb8e              # double 4.5972670000000004
	.quad	0x401dde18266772d6              # double 7.4668890000000001
	.quad	0x401d6038e29f9ce9              # double 7.3439670000000001
	.quad	0x4011dd76ee73e682              # double 4.4662740000000003
	.quad	0x40034bbe4473cd57              # double 2.4119839999999999
	.quad	0x401f65b813016484              # double 7.849335
	.quad	0x400901dda059a73b              # double 3.1259109999999999
	.quad	0x401ab68900c521de              # double 6.6782570000000003
	.quad	0x401171f2dc2b0ea2              # double 4.3612780000000004
	.quad	0x400575b1c8648840              # double 2.6824680000000001
	.quad	0x40221f722e1ac57e              # double 9.0614179999999998
	.quad	0x4017e6188b11409a              # double 5.9747029999999999
	.quad	0x4002fce2089e3433              # double 2.373478
	.quad	0x401d28b75ea67e84              # double 7.2897619999999996
	.quad	0x3fe3aba9d1f60179              # double 0.61470499999999995
	.quad	0x40235e994185058e              # double 9.6847630000000002
	.quad	0x4022d4a9ef5232d3              # double 9.4153590000000004
	.quad	0x3fe893293d102bc7              # double 0.76796399999999998
	.quad	0x4000413986338b48              # double 2.0318480000000001
	.quad	0x40115c2656abde40              # double 4.3399900000000002
	.quad	0x3ff86e71cda2b5a2              # double 1.526964
	.quad	0x3fe77ad6cb535009              # double 0.73374499999999998
	.quad	0x3ff6402f2f987400              # double 1.3906700000000001
	.quad	0x40109c5da6a44418              # double 4.1527010000000004
	.quad	0x3ff8088c60cbf2b2              # double 1.502087
	.quad	0x401bd502ababead5              # double 6.958018
	.quad	0x40195522a6f3f530              # double 6.3331400000000002
	.quad	0x4011696744b2b778              # double 4.3529330000000002
	.quad	0x40198f3a57eaa2a1              # double 6.3898710000000003
	.quad	0x400299af9ebe9c88              # double 2.3250419999999998
	.quad	0x40069d0bfa0945fa              # double 2.8266830000000001
	.quad	0x4015f71cda2b5a21              # double 5.4913210000000001
	.quad	0x401ba6e86c6583e8              # double 6.9129959999999997
	.quad	0x401fc136a400fba9              # double 7.9386850000000004
	.quad	0x401ef48f53c579f2              # double 7.7388279999999998
	.quad	0x4019e450acc0bdcb              # double 6.4729640000000002
	.quad	0x401049b5e95b78cd              # double 4.0719830000000004
	.quad	0x401b510adcd2d44e              # double 6.8291430000000002
	.quad	0x401a6751ce28ed5f              # double 6.6008979999999999
	.quad	0x3fcaf5ba2be0589b              # double 0.21062400000000001
	.quad	0x401c1ba9d1f60179              # double 7.0270149999999996
	.quad	0x3fe47cb70ac3a861              # double 0.64022400000000002
	.quad	0x40149aa9f7b5aea3              # double 5.1510389999999999
	.quad	0x400db19157abb880              # double 3.711703
	.quad	0x401f568e3ef28416              # double 7.8345269999999996
	.quad	0x4022b3a16e7a311f              # double 9.3508410000000008
	.quad	0x402108f96e158751              # double 8.5175280000000004
	.quad	0x3ff15add9c27e953              # double 1.084684
	.quad	0x401102fdfc19c172              # double 4.2529219999999999
	.quad	0x4011d54bcf0b6b6e              # double 4.458297
	.quad	0x4012306a6e32e382              # double 4.5472809999999999
	.quad	0x40014345cfede97d              # double 2.157848
	.quad	0x4015365492ff4ba5              # double 5.3030569999999999
	.quad	0x40144a2b9d3cbc49              # double 5.0724320000000001
	.quad	0x400a95043e5321e6              # double 3.322762
	.quad	0x401bcf811f4f50a0              # double 6.9526409999999998
	.quad	0x40222083ba3443d4              # double 9.0635049999999992
	.quad	0x400d39d4d834091c              # double 3.653238
	.quad	0x40125f06b37867f1              # double 4.5927990000000003
	.quad	0x40171e1f3a57eaa3              # double 5.7794160000000003
	.quad	0x3fea4896dd26b724              # double 0.821361
	.quad	0x400d1824d4cb9ecf              # double 3.6367889999999998
	.quad	0x3ff8d34ce3de614a              # double 1.551587
	.quad	0x401ca12dfd694ccb              # double 7.1574020000000003
	.quad	0x401460c7c0f45176              # double 5.0945119999999999
	.quad	0x3ffe5de050374ff8              # double 1.8979189999999999
	.quad	0x40168a6fc58ab92c              # double 5.635192
	.quad	0x40135da272862f5a              # double 4.8414400000000004
	.quad	0x4021b7bbd7b2031d              # double 8.8588550000000001
	.quad	0x4004f6555c52e72e              # double 2.6202800000000002
	.quad	0x401df07e5a78f25a              # double 7.4848569999999999
	.quad	0x4012ac72e275ab7e              # double 4.6684070000000002
	.quad	0x400f8d887ebf22c0              # double 3.9441079999999999
	.quad	0x4018f12ba16e7a31              # double 6.2355179999999999
	.quad	0x4007a7674d163348              # double 2.9567399999999999
	.quad	0x400c8c2e770bd018              # double 3.5684480000000001
	.quad	0x401b35fb2edfe75c              # double 6.8027160000000002
	.quad	0x3ff999817b95a294              # double 1.599977
	.quad	0x40089919ac79702e              # double 3.0747559999999998
	.quad	0x40208b14013ec461              # double 8.2716370000000001
	.quad	0x40220100a393ee5f              # double 9.0019580000000001
	.quad	0x402296772d5e071c              # double 9.2938779999999994
	.quad	0x402127f5e84f0953              # double 8.5780480000000008
	.quad	0x4022bb6d22424a27              # double 9.3660669999999992
	.quad	0x400b240bfe3b03e2              # double 3.392601
	.quad	0x40228f06d5065732              # double 9.2793489999999998
	.quad	0x3ff117bd8be7296f              # double 1.0682959999999999
	.quad	0x401c4b6dca07f66f              # double 7.0736610000000004
	.quad	0x4023249f2fdb8fde              # double 9.5715269999999997
	.quad	0x4010a8d5842b734b              # double 4.1648769999999997
	.quad	0x40108bd1244a6224              # double 4.1365400000000001
	.quad	0x4022c80cd855970b              # double 9.3907229999999994
	.quad	0x401646de76427c7c              # double 5.5692079999999997
	.quad	0x40165d712a0ec743              # double 5.5912519999999999
	.quad	0x401f929e90795f67              # double 7.8931829999999996
	.quad	0x402306cca2db61bb              # double 9.5132799999999999
	.quad	0x4020ca0642396074              # double 8.3945790000000002
	.quad	0x4013b1e53a81dc0e              # double 4.9237260000000003
	.quad	0x401318cef672b884              # double 4.7742269999999998
	.quad	0x4020c6f459d9902a              # double 8.3885830000000006
	.quad	0x4019dd76ab5807ff              # double 6.4662730000000002
	.quad	0x400e7db8fde2ef4e              # double 3.811388
	.quad	0x3fef923810e88590              # double 0.986599
	.quad	0x400f131fcd24e161              # double 3.8843380000000001
	.quad	0x40196ddf00abf76a              # double 6.3572959999999998
	.quad	0x40235817fc7607c4              # double 9.6720579999999998
	.quad	0x4001b9a06a6e32e4              # double 2.2156380000000002
	.quad	0x400db5e9e1b089a0              # double 3.7138249999999999
	.quad	0x4013d27e0ef99807              # double 4.955559
	.quad	0x3ff6260913a4f872              # double 1.3842859999999999
	.quad	0x4000cbe8bc169c24              # double 2.0995650000000001
	.quad	0x3ff31db65ecc3e32              # double 1.1947540000000001
	.quad	0x40095c903ea704bc              # double 3.1701969999999999
	.quad	0x4023e79a6b50b0f2              # double 9.9523499999999991
	.quad	0x401acc18f81e8a2f              # double 6.6993140000000002
	.quad	0x401f71b54195cc85              # double 7.8610429999999995
	.quad	0x4014cfcac8e68e3f              # double 5.202922
	.quad	0x40155dddb1209edc              # double 5.341666
	.quad	0x40150085b18548aa              # double 5.2505100000000002
	.quad	0x401ea952d234eb9a              # double 7.6653549999999999
	.quad	0x402267470eb24a6b              # double 9.2017140000000008
	.quad	0x3feebf141205bc02              # double 0.96082500000000004
	.quad	0x40103fa615a8deb1              # double 4.062157
	.quad	0x3ff9657646ae3a3b              # double 1.5872710000000001
	.quad	0x401e9440af1cb89d              # double 7.6447779999999996
	.quad	0x4008a5b20b8066c3              # double 3.0809060000000001
	.quad	0x40107aa369fcf3dc              # double 4.119764
	.quad	0x401ea73b85e80bed              # double 7.6633129999999995
	.quad	0x4001b7b17ce52ded              # double 2.2146940000000002
	.quad	0x3ffa5e785b5b7069              # double 1.648064
	.quad	0x40154521dda059a7              # double 5.3175119999999998
	.quad	0x3fff03f4eca686e8              # double 1.938466
	.quad	0x40218160956c0d6f              # double 8.7526899999999994
	.quad	0x401c8e736049ecb3              # double 7.1391119999999999
	.quad	0x401e64c729f59cd0              # double 7.5984160000000003
	.quad	0x40230f396d0917d7              # double 9.5297350000000005
	.quad	0x401a32d9cf13ceea              # double 6.5496590000000001
	.quad	0x400c0841ede1198b              # double 3.504032
	.quad	0x3fe226dce39b456b              # double 0.56724399999999997
	.quad	0x40092efaa4766c6e              # double 3.147939
	.quad	0x4004d9f666234a88              # double 2.606427
	.quad	0x3fecbe2d6238da3c              # double 0.89821499999999998
	.quad	0x401b18f217093101              # double 6.7743609999999999
	.quad	0x401817546d3f9e7c              # double 6.0227830000000004
	.quad	0x40107b30f8c64fdb              # double 4.120304
	.quad	0x40061dd1a21ea359              # double 2.7645599999999999
	.quad	0x401082ab68cef673              # double 4.1276070000000002
	.quad	0x401d2f61aa3f034b              # double 7.296271
	.quad	0x40211ffae3608d09              # double 8.5624610000000008
	.quad	0x4021b3ca1059ea57              # double 8.8511509999999998
	.quad	0x401ff6d3b6cbd988              # double 7.9910420000000002
	.quad	0x40192206c8711d7a              # double 6.2832290000000004
	.quad	0x40156640e9d51b50              # double 5.3498570000000001
	.quad	0x401fcd5992428d43              # double 7.9505369999999997
	.quad	0x4006d25edd052935              # double 2.8527200000000001
	.quad	0x401c28d3ae685db7              # double 7.0398699999999996
	.quad	0x401763fe5c91d14e              # double 5.8476499999999998
	.quad	0x3fe20deb0fadf2ed              # double 0.56419900000000001
	.quad	0x40173fe154434e33              # double 5.8123829999999996
	.quad	0x4020c72085b18549              # double 8.3889200000000006
	.quad	0x401a5b1cc9646280              # double 6.5889769999999999
	.quad	0x3ff1f9bcba301217              # double 1.1234710000000001
	.quad	0x402194f227d028a2              # double 8.7909100000000002
	.quad	0x402088ad46f587d7              # double 8.266947
	.quad	0x4017d27d45a5fc7e              # double 5.9555559999999996
	.quad	0x3fe6877ab324851b              # double 0.70403800000000005
	.quad	0x4022fcb4f1e4b44a              # double 9.4935679999999998
	.quad	0x4001cc4dec1c1d6d              # double 2.224758
	.quad	0x3fe6476af89c5e70              # double 0.696218
	.quad	0x400095e8d5410f95              # double 2.0731980000000001
	.quad	0x402070c692f6e829              # double 8.2202649999999995
	.quad	0x3ff5fe2e6ea85447              # double 1.3745559999999999
	.quad	0x4011f80d801b4352              # double 4.4922389999999996
	.quad	0x4011cc6c97d8cf3a              # double 4.4496330000000004
	.quad	0x3fd7899bf5946c33              # double 0.36777399999999999
	.quad	0x3fe2cc07aaef2c73              # double 0.58740599999999998
	.quad	0x3ff75666a98244e9              # double 1.4585939999999999
	.quad	0x4014bb7e0ac7da1f              # double 5.1830980000000002
	.quad	0x402031ed3953dea4              # double 8.0975129999999992
	.quad	0x401f1a6aca793576              # double 7.775798
	.quad	0x4003fab0856e696a              # double 2.4974069999999999
	.quad	0x4012c599aa60913a              # double 4.6929689999999997
	.quad	0x4023283c4b09e98e              # double 9.5785850000000003
	.quad	0x4017c4df8b157258              # double 5.942259
	.quad	0x4016a60d887ebf23              # double 5.6621610000000002
	.quad	0x401323b9ae0c1765              # double 4.7848879999999996
	.quad	0x401ad9c23b7952d2              # double 6.7126549999999998
	.quad	0x4007c54152b0a6fc              # double 2.9713159999999998
	.quad	0x400f5a72a7bd48cb              # double 3.9191639999999999
	.quad	0x3fe2ae74f2f123c4              # double 0.58379599999999998
	.quad	0x4018955d1c3ac92a              # double 6.1458630000000003
	.quad	0x4022180a393ee5ef              # double 9.0469530000000002
	.quad	0x40027c065b63d3e5              # double 2.310559
	.quad	0x400ea087442c7fbb              # double 3.8283830000000001
	.quad	0x401ec9e12a51e322              # double 7.6971480000000003
	.quad	0x401b062e09fe8683              # double 6.7560349999999998
	.quad	0x40117aa1511dffc5              # double 4.3697559999999998
	.quad	0x4023e32702a3486f              # double 9.9436569999999999
	.quad	0x3ff2ceae18ac9f30              # double 1.175459
	.quad	0x40221f04577d9557              # double 9.0605799999999999
	.quad	0x400eb3037d63022e              # double 3.8374090000000001
	.quad	0x401865336deb95e6              # double 6.0988290000000003
	.quad	0x4005e2dbe7f2c301              # double 2.7357710000000002
	.quad	0x400d0180d3cff64d              # double 3.625734
	.quad	0x4004a34091c08744              # double 2.5797129999999999
	.quad	0x400c7b19e731d2e1              # double 3.5601080000000001
	.quad	0x3ff6a2456f75d9a1              # double 1.414617
	.quad	0x402296fe0ce0b913              # double 9.2949070000000003
	.quad	0x3ff72837f7be121f              # double 1.447319
	.quad	0x401e8ac753e707e1              # double 7.6355259999999995
	.quad	0x3ffd5ad31fcd24e1              # double 1.8346739999999999
	.quad	0x401f168512231833              # double 7.771992
	.quad	0x40072acb85a4f00f              # double 2.895896
	.quad	0x40193cd8dbcec850              # double 6.3094210000000004
	.quad	0x4014d2ac322291fb              # double 5.2057349999999998
	.quad	0x4022a49ecb31c21a              # double 9.3215240000000001
	.quad	0x4019ab46fdeb52ca              # double 6.4172630000000002
	.quad	0x4009b2fa93af74cd              # double 3.2123919999999999
	.quad	0x3ff9864020817fc7              # double 1.5952759999999999
	.quad	0x4014c53825e13b19              # double 5.1925970000000001
	.quad	0x3fff5cb252ce032e              # double 1.9601310000000001
	.quad	0x40173637bd05af6c              # double 5.8029469999999996
	.quad	0x401838d477bbf940              # double 6.055498
	.quad	0x400afd0d8cb07d0b              # double 3.373561
	.quad	0x4002d15bdd76683c              # double 2.3522259999999999
	.quad	0x401c72ddbdb5d895              # double 7.1121740000000004
	.quad	0x40013754b05b7cfe              # double 2.1520169999999998
	.quad	0x40118bb7739f340d              # double 4.3864419999999997
	.quad	0x4000791819d2391d              # double 2.0591279999999998
	.quad	0x401aca9435ac8a37              # double 6.6978309999999999
	.quad	0x4000a33df2a9d628              # double 2.0797080000000001
	.quad	0x402107325918a00a              # double 8.5140560000000001
	.quad	0x40224807789a4591              # double 9.140682
	.quad	0x3fee164840e1719f              # double 0.94021999999999994
	.quad	0x40207a00192a7371              # double 8.2382819999999999
	.quad	0x402197840181e03f              # double 8.7959289999999992
	.quad	0x40137ee02a77a2cf              # double 4.8739020000000002
	.quad	0x401e421858bc59b8              # double 7.5645459999999999
	.quad	0x40149c91d14e3bcd              # double 5.1528999999999998
	.quad	0x401577268d32830a              # double 5.366358
	.quad	0x401c34e874c8ffb9              # double 7.0516680000000003
	.quad	0x4016ca35d67ba238              # double 5.6974710000000002
	.quad	0x4016c25c810a569b              # double 5.6898059999999999
	.quad	0x40231211233df2aa              # double 9.5352870000000003
	.quad	0x402324b5fe542e55              # double 9.5717009999999991
	.quad	0x4008242d05f28848              # double 3.0176639999999999
	.quad	0x4010369fcf3dc055              # double 4.0533440000000001
	.quad	0x401178c21e1d2179              # double 4.367928
	.quad	0x3ff9a28997c3d684              # double 1.602182
	.quad	0x40168f7446f9b995              # double 5.6400920000000001
	.quad	0x4009a1248d7e0264              # double 3.2036829999999998
	.quad	0x40217e48e8a71de7              # double 8.7466500000000007
	.quad	0x401b5adf71eafee7              # double 6.838743
	.quad	0x401327a398201cd6              # double 4.78871
	.quad	0x40146b0e5e679464              # double 5.1045470000000002
	.quad	0x4012326fa3fcc9eb              # double 4.5492540000000004
	.quad	0x401355653c9abb02              # double 4.8333940000000002
	.quad	0x3fe271cfbb949625              # double 0.57639300000000004
	.quad	0x3fe6b8a5ce5b4246              # double 0.71004
	.quad	0x40175556d19dece5              # double 5.8333389999999996
	.quad	0x400dd85b5b70691f              # double 3.7306430000000002
	.quad	0x4012cffe2a3cea6c              # double 4.7031179999999999
	.quad	0x400caedb2f661f19              # double 3.5853790000000001
	.quad	0x40130fd2630ec311              # double 4.7654509999999997
	.quad	0x402346cc1ca3a4b5              # double 9.6382759999999993
	.quad	0x400041ef73c0c1fd              # double 2.0321950000000002
	.quad	0x40190ee1bd1ed9e0              # double 6.2645330000000001
	.quad	0x3fffdaad601ffb48              # double 1.990888
	.quad	0x4000ee9dd7ecbb80              # double 2.1165120000000002
	.quad	0x40134dd26b723ee2              # double 4.8259980000000002
	.quad	0x4010995dd4c76d11              # double 4.1497719999999996
	.quad	0x40096dd377e1b8ed              # double 3.178626
	.quad	0x401a9df2a9d627bf              # double 6.6542459999999997
	.quad	0x4012303ea704bc27              # double 4.5471139999999997
	.quad	0x4010dabe27179bfe              # double 4.213616
	.quad	0x4011c5a708ede54b              # double 4.4430199999999997
	.quad	0x4010bf0e0a84be40              # double 4.1865769999999998
	.quad	0x4022bebd6e8af816              # double 9.3725389999999997
	.quad	0x401936b1a2a4db16              # double 6.3034119999999998
	.quad	0x400f838c9752977d              # double 3.9392330000000002
	.quad	0x40201ca59c065b64              # double 8.0559510000000003
	.quad	0x4020c1693c03bc4d              # double 8.3777559999999998
	.quad	0x3ff4598288051c9f              # double 1.2718529999999999
	.quad	0x401121da37ef5a96              # double 4.2830589999999997
	.quad	0x401f1601bc98a223              # double 7.7714910000000001
	.quad	0x401f2b56323bbc6f              # double 7.7923210000000002
	.quad	0x3ff3d97f62b6ae7d              # double 1.2405999999999999
	.quad	0x4005b5feda661284              # double 2.7138650000000002
	.quad	0x40020d23d4f15e7d              # double 2.2564160000000002
	.quad	0x3ff3e2b8c75c4a84              # double 1.2428520000000001
	.quad	0x4011f95b35b0bbf5              # double 4.493512
	.quad	0x3fea98eda22f6a51              # double 0.83116800000000002
	.quad	0x401e8831ad2135db              # double 7.6330020000000002
	.quad	0x4021c68f08461f9f              # double 8.88781
	.quad	0x401aeb0d0edc3bd6              # double 6.7295420000000004
	.quad	0x4007d80dc33721d5              # double 2.9804949999999999
	.quad	0x4001807fed20296b              # double 2.1877439999999999
	.quad	0x4015eb8066c2acb8              # double 5.4799819999999997
	.quad	0x3fed0a45d41fa765              # double 0.90750399999999998
	.quad	0x4013ea36e2eb1c43              # double 4.9787249999999998
	.quad	0x40239abe48a58b3f              # double 9.8022329999999993
	.quad	0x4023452e94680171              # double 9.6351209999999998
	.quad	0x4020377d73c92578              # double 8.1083789999999993
	.quad	0x40007784ec636b09              # double 2.0583589999999998
	.quad	0x400cd882adc4c9c9              # double 3.605718
	.quad	0x402003ea91d9b1b8              # double 8.0076490000000007
	.quad	0x401e06db0dd82fd7              # double 7.5066949999999996
	.quad	0x4021362da554b8bf              # double 8.605817
	.quad	0x4021716d4c33b539              # double 8.7215369999999997
	.quad	0x3ff0395b35b0bbf5              # double 1.014003
	.quad	0x401e233daf8df7a5              # double 7.534415
	.quad	0x4017ab384fd2a62b              # double 5.9172070000000003
	.quad	0x40070fd86a8fc0d3              # double 2.8827370000000001
	.quad	0x400f251eb851eb85              # double 3.8931249999999999
	.quad	0x401833aa369fcf3e              # double 6.0504540000000002
	.quad	0x4020f9711947cfa2              # double 8.4871909999999993
	.quad	0x40057f51efb6dca0              # double 2.6871679999999998
	.quad	0x401d81b54195cc85              # double 7.3766679999999996
	.quad	0x4021559146e4c0df              # double 8.6671239999999994
	.quad	0x3ff2840e1719f7f9              # double 1.15724
	.quad	0x4013983771865519              # double 4.8986489999999998
	.quad	0x3ff85b4dcebfec14              # double 1.5222910000000001
	.quad	0x40194e52157689ca              # double 6.3264849999999999
	.quad	0x40059cc1871e6cd3              # double 2.7015410000000002
	.quad	0x401cfe69ad42c3ca              # double 7.2484500000000001
	.quad	0x401eab352a843809              # double 7.6671950000000004
	.quad	0x4017f12a51e321a3              # double 5.9855130000000001
	.quad	0x4006fe2c55c96031              # double 2.8741080000000001
	.quad	0x402221bde82d7b63              # double 9.0659019999999995
	.quad	0x3f7a4484944ed6fe              # double 0.0064130000000000003
	.quad	0x3fecec093d966384              # double 0.90381299999999997
	.quad	0x40037dbf487fcb92              # double 2.4363999999999999
	.quad	0x40218b6f5caf2d80              # double 8.7723340000000007
	.quad	0x4000a0cf9e3864cb              # double 2.0785209999999998
	.quad	0x402125edf1e0828c              # double 8.5740809999999996
	.quad	0x401834f483cafb3b              # double 6.0517139999999996
	.quad	0x40214413122b7baf              # double 8.6329580000000004
	.quad	0x3ff1aaac1094a2ba              # double 1.104168
	.quad	0x4020ec8abd5dc400              # double 8.4619959999999992
	.quad	0x401bd0e1f7d73c92              # double 6.9539869999999997
	.quad	0x4015a148344c37e7              # double 5.407502
	.quad	0x4023660eb67c2870              # double 9.6993310000000008
	.quad	0x3ff1362b6ae7d567              # double 1.075725
	.quad	0x401ed82fd75e2047              # double 7.7111200000000001
	.quad	0x40183d73c9257860              # double 6.0600120000000004
	.quad	0x402326b9a176ddad              # double 9.5756350000000001
	.quad	0x3feedeb0fadf2ecf              # double 0.96468399999999998
	.quad	0x4008134938583622              # double 3.009417
	.quad	0x4006868d32830a0b              # double 2.815699
	.quad	0x401c6233df2a9d62              # double 7.0959009999999996
	.quad	0x3fee1003eea209ab              # double 0.93945500000000004
	.quad	0x3fb881d3aa369fcf              # double 0.095730999999999997
	.quad	0x400b0ae429e0a41a              # double 3.3803179999999999
	.quad	0x4022dc62c343b70f              # double 9.430441
	.quad	0x400a2af6837f7be1              # double 3.2709779999999999
	.quad	0x3fdfac322291fb40              # double 0.49488500000000002
	.quad	0x401939eba6aca793              # double 6.3065629999999997
	.quad	0x4012785d31337eb3              # double 4.6175430000000004
	.quad	0x3ffc6e0d23d4f15e              # double 1.7768679999999999
	.quad	0x401c8d04e618ce2d              # double 7.1377139999999999
	.quad	0x3ff29b0ff10ecb75              # double 1.162857
	.quad	0x400f8327ed84d339              # double 3.939041
	.quad	0x3ff3c1083dbc2331              # double 1.2346269999999999
	.quad	0x40204bfc86cebbba              # double 8.1484109999999994
	.quad	0x4022a1df1172ef0b              # double 9.3161550000000002
	.quad	0x4020679c1f85d745              # double 8.2023630000000001
	.quad	0x402118de093532e8              # double 8.5485690000000005
	.quad	0x400b78a009f62307              # double 3.4338989999999998
	.quad	0x4008a4f3ba775fb3              # double 3.080543
	.quad	0x4023649e01de2691              # double 9.6965179999999993
	.quad	0x3ffbff487fcb923a              # double 1.749825
	.quad	0x402234d7060bb2bc              # double 9.1032030000000005
	.quad	0x4023b828e4fb97bb              # double 9.8596869999999992
	.quad	0x4021402a12f90108              # double 8.6253209999999996
	.quad	0x4012523897204296              # double 4.5802940000000003
	.quad	0x3ffde56798958d9b              # double 1.8685069999999999
	.quad	0x3ff03f5d78811b1e              # double 1.0154700000000001
	.quad	0x401d5ddf86e3b470              # double 7.3416730000000001
	.quad	0x401f9a9d1f601798              # double 7.9009900000000001
	.quad	0x4015b5d4e8fb00bd              # double 5.4275700000000002
	.quad	0x4015dc31df761cbd              # double 5.4650340000000002
	.quad	0x401bd96b3354c122              # double 6.9623229999999996
	.quad	0x401f06705c896dd2              # double 7.7562879999999996
	.quad	0x4007541fa7653437              # double 2.9160759999999999
	.quad	0x401287dfe32a0664              # double 4.6326900000000002
	.quad	0x400c476d117b5287              # double 3.5348760000000001
	.quad	0x401d988765ba6efc              # double 7.3989539999999998
	.quad	0x4020ecc100e6afcd              # double 8.4624100000000002
	.quad	0x40096ed5f138bce0              # double 3.179119
	.quad	0x3fea084a515ce9e6              # double 0.81351200000000001
	.quad	0x4018ae69270b06c4              # double 6.1703229999999998
	.quad	0x40180c1376d54973              # double 6.0117929999999999
	.quad	0x4013ce736049ecb3              # double 4.9516119999999999
	.quad	0x4014fc88a47ecfea              # double 5.2466150000000003
	.quad	0x4021290d38cda6e7              # double 8.5801789999999993
	.quad	0x4013226b723ee1bd              # double 4.7836129999999999
	.quad	0x40067702e6644d87              # double 2.8081109999999998
	.quad	0x4016f88fc9363f57              # double 5.7427359999999998
	.quad	0x401f32917507e9d9              # double 7.7993829999999997
	.quad	0x400819abf3387161              # double 3.0125350000000002
	.quad	0x40107a71151611ba              # double 4.1195719999999998
	.quad	0x401963c9abb01c93              # double 6.3474490000000001
	.quad	0x40236ff455a7d242              # double 9.7186610000000009
	.quad	0x40064ee631f8a090              # double 2.7885249999999999
	.quad	0x40118983947496ab              # double 4.3842910000000002
	.quad	0x4003beabbcb1cc96              # double 2.4681009999999999
	.quad	0x400d7d0bfa0945fa              # double 3.6860580000000001
	.quad	0x4012a213a0c6b485              # double 4.6582780000000001
	.quad	0x4018930db6a1e81d              # double 6.1436070000000003
	.quad	0x401a415df6555c53              # double 6.5638350000000001
	.quad	0x4020161198aeb80f              # double 8.0431030000000003
	.quad	0x4000569e3c968944              # double 2.0422940000000001
	.quad	0x4003c11e42e12620              # double 2.4692959999999999
	.quad	0x3fc13f290abb44e5              # double 0.13474
	.quad	0x40072c7c0f451761              # double 2.8967209999999999
	.quad	0x401af068db8bac71              # double 6.734775
	.quad	0x4023a25d8d79d0a6              # double 9.8171199999999992
	.quad	0x401d4cce1c58255b              # double 7.325005
	.quad	0x402271a9da597d4a              # double 9.2219990000000003
	.quad	0x401057d5a9eb2075              # double 4.0857760000000001
	.quad	0x3ff0c42fa5093965              # double 1.0478970000000001
	.quad	0x401059f1f14983d8              # double 4.0878370000000004
	.quad	0x401fe390c9107faa              # double 7.972232
	.quad	0x40022636b0963561              # double 2.268659
	.quad	0x402393c87db2b346              # double 9.7886389999999999
	.quad	0x3ff3e433508f648c              # double 1.2432129999999999
	.quad	0x4009f292c4934268              # double 3.2434440000000002
	.quad	0x401da8bcdfefbf40              # double 7.4147829999999999
	.quad	0x401fce603d577964              # double 7.9515390000000004
	.quad	0x400c10c3d25247cb              # double 3.5081859999999998
	.quad	0x401e76a8b8f14db6              # double 7.6158780000000004
	.quad	0x4021cb107746887b              # double 8.8966100000000008
	.quad	0x401237e80389f83c              # double 4.5545960000000001
	.quad	0x40203e9728a61177              # double 8.1222469999999998
	.quad	0x400de3f2d3c792d1              # double 3.7363029999999999
	.quad	0x4007926202539757              # double 2.9464760000000001
	.quad	0x4023788ca3e7d135              # double 9.7354479999999998
	.quad	0x3fbeafff36ac6477              # double 0.11987299999999999
	.quad	0x40027e2b4959e625              # double 2.3116059999999998
	.quad	0x40196f0aa21a719b              # double 6.3584389999999997
	.quad	0x401c8f1e0828c36e              # double 7.1397630000000003
	.quad	0x401f741d084e831b              # double 7.8633920000000001
	.quad	0x401a77ed84d338f8              # double 6.6171170000000004
	.quad	0x40089ebaf102363b              # double 3.0775049999999999
	.quad	0x3ff8707af20ea5b5              # double 1.527461
	.quad	0x40106db1e9f27781              # double 4.1071239999999998
	.quad	0x3fbf43d89ce4a7b5              # double 0.122129
	.quad	0x40077c67dfe32a06              # double 2.9357449999999998
	.quad	0x4020390d38cda6e7              # double 8.1114289999999993
	.quad	0x40152a5870da5daf              # double 5.291353
	.quad	0x3fecc1355475a31a              # double 0.89858499999999997
	.quad	0x40238ac471b47842              # double 9.7710299999999997
	.quad	0x40179c6b484d76ab              # double 5.9027529999999997
	.quad	0x4019ab8cb8e086be              # double 6.417529
	.quad	0x40027c4545846e8f              # double 2.3106789999999999
	.quad	0x40136b8c32a8c9b8              # double 4.8550269999999998
	.quad	0x40220b5b70691ea8              # double 9.0221820000000008
	.quad	0x3fece047d3d4280b              # double 0.90237800000000001
	.quad	0x40164221858bc59c              # double 5.5645810000000004
	.quad	0x4013ab441bb8c32b              # double 4.9172520000000004
	.quad	0x3ff63ac4f7ec3548              # double 1.389348
	.quad	0x402372ccb3a2595c              # double 9.7242180000000004
	.quad	0x4000da109d0635a4              # double 2.1064769999999999
	.quad	0x401e55abc0e38a7e              # double 7.5836629999999996
	.quad	0x4015f62ed352220c              # double 5.4904130000000002
	.quad	0x400a18c6d612c6ac              # double 3.2620979999999999
	.quad	0x4020f45b6c3760bf              # double 8.4772599999999994
	.quad	0x3fd42a9d627bf61b              # double 0.31510100000000002
	.quad	0x4022659ff4fd6d7f              # double 9.1984860000000008
	.quad	0x3ff6877681669ced              # double 1.408072
	.quad	0x401a167ec7863bef              # double 6.5219680000000002
	.quad	0x401848622c450269              # double 6.0706870000000004
	.quad	0x3ff7e8b7e4de3b8a              # double 1.494316
	.quad	0x4022c3b107746888              # double 9.3822100000000006
	.quad	0x3fd2c679cc74b839              # double 0.29336400000000001
	.quad	0x40228e162f166e01              # double 9.2775130000000008
	.quad	0x401b6660e51d25ab              # double 6.8499790000000003
	.quad	0x40163d3a1d323fee              # double 5.5597919999999998
	.quad	0x400c18d823422468              # double 3.5121310000000001
	.quad	0x3fe75f86e3b46fdf              # double 0.73041100000000003
	.quad	0x4022c8198f1d3ed5              # double 9.3908199999999997
	.quad	0x401a8fdd65a14489              # double 6.6404930000000002
	.quad	0x3fc90574b407032a              # double 0.19547900000000001
	.quad	0x3fe1f23aafff36ac              # double 0.56081899999999996
	.quad	0x401a36612839042e              # double 6.5531050000000004
	.quad	0x4012b3e4abe6a338              # double 4.6756770000000003
	.quad	0x402195a7b0b39192              # double 8.7922949999999993
	.quad	0x401f6a2a4db163bb              # double 7.8536770000000002
	.quad	0x4023670bf1a5ca2a              # double 9.7012630000000009
	.quad	0x3ff04067cf1c3266              # double 1.0157240000000001
	.quad	0x400693d102bc72e2              # double 2.8221759999999998
	.quad	0x401c64dcebfec13c              # double 7.0984990000000003
	.quad	0x3fe77a2ad3e920c0              # double 0.73366299999999995
	.quad	0x4008aba6266fd652              # double 3.0838130000000001
	.quad	0x4014ef7f498c3b0c              # double 5.2338839999999998
	.quad	0x400da856e696a26e              # double 3.7071969999999999
	.quad	0x4001e9ee45c358b0              # double 2.2392240000000001
	.quad	0x3fdbd1d8a5482385              # double 0.43468299999999999
	.quad	0x401f2e18efbb0e5e              # double 7.7950169999999996
	.quad	0x3fdae3369b9d7fd8              # double 0.42011799999999999
	.quad	0x401f7409a2403148              # double 7.8633179999999995
	.quad	0x400f39841aac53b1              # double 3.9030840000000002
	.quad	0x401f9fe1da7b0b39              # double 7.9061349999999999
	.quad	0x3ff4eb21815a07b3              # double 1.3074049999999999
	.quad	0x40214e0b0af5fd48              # double 8.6524280000000005
	.quad	0x401df811b1d92b80              # double 7.4922550000000001
	.quad	0x40129383ad9f0a1c              # double 4.6440570000000001
	.quad	0x3ffb3dd97f62b6ae              # double 1.7025999999999999
	.quad	0x400a46dc5d638866              # double 3.2846000000000002
	.quad	0x401380b28522ea10              # double 4.8756810000000002
	.quad	0x4004bb2aae297397              # double 2.5913900000000001
	.quad	0x40005685985ad539              # double 2.0422470000000001
	.quad	0x400400cf9e3864cb              # double 2.5003959999999998
	.quad	0x3fe1bed740c4156e              # double 0.55454599999999998
	.quad	0x3ff28202d9cf13cf              # double 1.156741
	.quad	0x4001483c297bfa4c              # double 2.1602709999999998
	.quad	0x400efdbdb5d89481              # double 3.8738969999999999
	.quad	0x4011b7e3d1cc100e              # double 4.4295799999999996
	.quad	0x402266ddaceee0f4              # double 9.2009100000000003
	.quad	0x400e0e27e0ef9980              # double 3.7569119999999998
	.quad	0x40193bbe878fabda              # double 6.308344
	.quad	0x4018c28e92d55a3a              # double 6.189997
	.quad	0x3ffee4cf8d716d2b              # double 1.9308620000000001
	.quad	0x401c3f0fe047d3d4              # double 7.0615839999999999
	.quad	0x401380f301eabbcb              # double 4.8759269999999999
	.quad	0x3ff6d14c22ee4192              # double 1.4260980000000001
	.quad	0x401fb2cf95d4e8fb              # double 7.9246199999999999
	.quad	0x40163460ed80a17b              # double 5.5511509999999999
	.quad	0x40186a237cdcca71              # double 6.1036510000000002
	.quad	0x40132fc3f811f4f5              # double 4.796646
	.quad	0x4021e98c197e5647              # double 8.9561469999999996
	.quad	0x401f0e96c3fc43b3              # double 7.7642470000000001
	.quad	0x4014ace746cb966c              # double 5.1688510000000001
	.quad	0x4005a80ae1049236              # double 2.707052
	.quad	0x401a1572580c3090              # double 6.5209440000000001
	.quad	0x400d14e9813879c4              # double 3.635211
	.quad	0x4015e924af0bf1a6              # double 5.4776790000000002
	.quad	0x3fe55f633ce63a5c              # double 0.66789399999999999
	.quad	0x401935fbb517a461              # double 6.3027179999999996
	.quad	0x401a00de8f6cefed              # double 6.5008489999999997
	.quad	0x4013a65a9a804966              # double 4.9124549999999996
	.quad	0x3fd48c7e28240b78              # double 0.321075
	.quad	0x40159d462c343b71              # double 5.4035880000000001
	.quad	0x40061fdc5931ca7d              # double 2.7655569999999998
	.quad	0x40154b1c0010c6f8              # double 5.3233490000000003
	.quad	0x3fdd94ff0025bfad              # double 0.46221899999999999
	.quad	0x4012de9899bf5947              # double 4.7173790000000002
	.quad	0x400d9e02ea960b70              # double 3.7021540000000002
	.quad	0x400859756c93a711              # double 3.0436809999999999
	.quad	0x4022a469f8c21e1d              # double 9.3211209999999998
	.quad	0x3fe3e4a59c065b64              # double 0.62166100000000002
	.quad	0x3ffaaa5e785b5b70              # double 1.6665939999999999
	.quad	0x4020a63800218def              # double 8.3246459999999995
	.quad	0x4020143504c48adf              # double 8.0394670000000001
	.quad	0x4022d6820e629952              # double 9.4189609999999995
	.quad	0x3fe07585be1a8262              # double 0.51434599999999997
	.quad	0x4019adb7281fd9ba              # double 6.4196439999999999
	.quad	0x4023a708aac96cc6              # double 9.826238
	.quad	0x400c3c31593e5fb7              # double 3.5293909999999999
	.quad	0x401a0bfdf7e8038a              # double 6.511711
	.quad	0x400eadee34fc610f              # double 3.834927
	.quad	0x40225cdb37c99ae9              # double 9.1813599999999997
	.quad	0x4018b3fbbd7b2032              # double 6.1757650000000002
	.quad	0x40102bf01322f273              # double 4.0429079999999997
	.quad	0x40082a350d2806af              # double 3.0206089999999999
	.quad	0x4013bee02a77a2cf              # double 4.9364020000000002
	.quad	0x401144649906cca3              # double 4.3167900000000001
	.quad	0x401b58a43bb40b35              # double 6.8365640000000001
	.quad	0x40039c792d1287c2              # double 2.451403
	.quad	0x4020cb0fadf2ecf2              # double 8.396604
	.quad	0x40127a2d2fe3f35a              # double 4.619313
	.quad	0x4010cecb31c219eb              # double 4.2019469999999997
	.quad	0x401020e23af31b15              # double 4.0321129999999998
	.quad	0x4022b922b7baecd0              # double 9.3615929999999992
	.quad	0x40174e7253da72a8              # double 5.8266080000000002
	.quad	0x3ffc18d79d0a6762              # double 1.756065
	.quad	0x40174ee73e681a9c              # double 5.8270540000000004
	.quad	0x40172e02645e4e6a              # double 5.7949310000000001
	.quad	0x401cc71cda2b5a21              # double 7.1944460000000001
	.quad	0x400b1bd5992428d4              # double 3.3885909999999999
	.quad	0x401efa11a975afb0              # double 7.7442080000000004
	.quad	0x402261b21c475e63              # double 9.1908119999999993
	.quad	0x4023d883126e978d              # double 9.9228749999999994
	.quad	0x401e027631b584b2              # double 7.5024040000000003
	.quad	0x3fddb8ae31d712a1              # double 0.464397
	.quad	0x401a4d3f9e7b80aa              # double 6.5754380000000001
	.quad	0x40101e3715400325              # double 4.0295069999999997
	.quad	0x401ebc83a96d4c34              # double 7.6840960000000003
	.quad	0x40198458cd20afa3              # double 6.3792450000000001
	.quad	0x401734d1a6506141              # double 5.8015809999999997
	.quad	0x4014b551d68c692f              # double 5.1770699999999996
	.quad	0x4012f34373f316e3              # double 4.7375619999999996
	.quad	0x40216f166e008e9b              # double 8.7169679999999996
	.quad	0x400b4797891e2153              # double 3.4099569999999999
	.quad	0x4012470a808c825a              # double 4.5693760000000001
	.quad	0x401470dc33721d54              # double 5.1102150000000002
	.quad	0x400e0451b93037d6              # double 3.7521089999999999
	.quad	0x401e6b1960fa15db              # double 7.6045889999999998
	.quad	0x400eebac710cb296              # double 3.865075
	.quad	0x401d6df612407464              # double 7.3573839999999997
	.quad	0x4020b1192641b329              # double 8.3458950000000005
	.quad	0x400eb3bea91d9b1b              # double 3.8377659999999998
	.quad	0x401264152b0a6fc6              # double 4.5977370000000004
	.quad	0x400223e7d135115a              # double 2.2675320000000001
	.quad	0x401f8b7aa25d8d7a              # double 7.8862100000000002
	.quad	0x401d3b7a5f41aef7              # double 7.308084
	.quad	0x400c31572580c309              # double 3.524092
	.quad	0x40169cd4ed2cbea5              # double 5.6531560000000001
	.quad	0x4012d9e774eebf66              # double 4.7127970000000001
	.quad	0x401c4904f6dfc5ce              # double 7.0713080000000001
	.quad	0x40210fb41bfbdf09              # double 8.5306709999999999
	.quad	0x40231e11fd5885d3              # double 9.5587309999999998
	.quad	0x3ffd861f9f01b867              # double 1.845245
	.quad	0x3fe39b5e95b78cca              # double 0.61271600000000004
	.quad	0x4001a62e4d1a6506              # double 2.206143
	.quad	0x3ff703c8e25c810a              # double 1.4384239999999999
	.quad	0x4012680e06530058              # double 4.6016159999999999
	.quad	0x4005bf37b8d3f184              # double 2.7183679999999999
	.quad	0x402311ffb480a5ad              # double 9.5351540000000003
	.quad	0x402017de7210be94              # double 8.0466189999999997
	.quad	0x40150c86cebbba56              # double 5.2622330000000002
	.quad	0x40182923a29c779a              # double 6.0401749999999996
	.quad	0x40057c054ef459da              # double 2.6855570000000002
	.quad	0x40016f3eccc46951              # double 2.179319
	.quad	0x4020a78cc9a77e5f              # double 8.3272460000000006
	.quad	0x40148611ba3ca750              # double 5.1309269999999998
	.quad	0x401d1283d35eb745              # double 7.2680809999999996
	.quad	0x400d11327243137b              # double 3.633397
	.quad	0x3ff07544bb1af3a1              # double 1.0286299999999999
	.quad	0x401fe3543aeab799              # double 7.9720009999999996
	.quad	0x40058e8ea39c51db              # double 2.6946080000000001
	.quad	0x4023ecdaf4adbc66              # double 9.9626079999999995
	.quad	0x3f95ad538ac18f82              # double 0.021169
	.quad	0x401373c536d655e3              # double 4.8630570000000004
	.quad	0x40150830a0b1bbcf              # double 5.2579979999999997
	.quad	0x4014a84f8f8a4c1f              # double 5.1643660000000002
	.quad	0x4023421426fe718b              # double 9.6290600000000008
	.quad	0x4020d7ba450acc0c              # double 8.4213430000000002
	.quad	0x40201220ddc61954              # double 8.0354069999999993
	.quad	0x3f7769a91105e1c1              # double 0.0057159999999999997
	.quad	0x402061e0c5a8155d              # double 8.1911679999999993
	.quad	0x4003ed794a6eb91b              # double 2.4909539999999999
	.quad	0x4022ea5c810a569b              # double 9.4577369999999998
	.quad	0x401bb14940bbb1f2              # double 6.9231309999999997
	.quad	0x4015f0a137f38c54              # double 5.4849899999999998
	.quad	0x40102d438d1d8a55              # double 4.0442030000000004
	.quad	0x4005267cf1c3265b              # double 2.6437930000000001
	.quad	0x402218e0c9d9d346              # double 9.0485900000000008
	.quad	0x401019e7fb267c6c              # double 4.0252990000000004
	.quad	0x4018dab21815a07b              # double 6.2135699999999998
	.quad	0x4020a9b13165d399              # double 8.3314299999999992
	.quad	0x4010132a497fa5d3              # double 4.0187160000000004
	.quad	0x401e4ad42c3c9eed              # double 7.5730750000000002
	.quad	0x401ce63f141205bc              # double 7.22485
	.quad	0x40210f648c7192ea              # double 8.5300639999999994
	.quad	0x4011cafc47e49b20              # double 4.4482280000000003
	.quad	0x3fd92435696e58a3              # double 0.39283499999999999
	.quad	0x400fd374bc6a7efa              # double 3.9782500000000001
	.quad	0x401f9d35653c9abb              # double 7.9035239999999999
	.quad	0x3fd8ff64cf8d716d              # double 0.39058799999999999
	.quad	0x3fded19dece57109              # double 0.48154400000000003
	.quad	0x3fea6525892684cf              # double 0.824847
	.quad	0x401fbb2b777d0f1f              # double 7.9327829999999996
	.quad	0x40092a593a2df938              # double 3.1456780000000002
	.quad	0x4023cef0ae536502              # double 9.9041800000000002
	.quad	0x40022a3e7d135116              # double 2.2706270000000002
	.quad	0x401e0b53d640e9d5              # double 7.5110619999999999
	.quad	0x401cb3a71151611c              # double 7.1754420000000003
	.quad	0x400fb17720c8cd64              # double 3.9616530000000001
	.quad	0x40220ea161e4f766              # double 9.028575
	.quad	0x40236f16d2aa5c5f              # double 9.7169709999999991
	.quad	0x3fff5f4d37c1376d              # double 1.9607669999999999
	.quad	0x401294c37e6f71a8              # double 4.6452770000000001
	.quad	0x3fedd72580c308ff              # double 0.93251300000000004
	.quad	0x401279ea9a3d2d88              # double 4.619059
	.quad	0x401d8453d20f2bed              # double 7.3792260000000001
	.quad	0x4020817bfa4c61d8              # double 8.2528989999999993
	.quad	0x40138c6d1e108c3f              # double 4.8871349999999998
	.quad	0x3fc0a30db6a1e81d              # double 0.12997600000000001
	.quad	0x401895b35b0bbf51              # double 6.1461920000000001
	.quad	0x4013a7807789a459              # double 4.9135759999999999
	.quad	0x3ff749c3ce2089e3              # double 1.4555089999999999
	.quad	0x40218c30f49491f3              # double 8.7738110000000002
	.quad	0x4018dc17225b749b              # double 6.2149320000000001
	.quad	0x3ff27b5bf6a0dbad              # double 1.1551169999999999
	.quad	0x401c51c193b3a68b              # double 7.0798399999999999
	.quad	0x4001664c2f837b4a              # double 2.1749499999999999
	.quad	0x401ad2d98bf7f067              # double 6.705908
	.quad	0x3fd96573215fcc18              # double 0.39681699999999998
	.quad	0x401f25b1422ccb3a              # double 7.7868089999999999
	.quad	0x40119894812be48a              # double 4.3990039999999997
	.quad	0x40066cf63800218e              # double 2.803204
	.quad	0x3fe3ff1737542a24              # double 0.62488900000000003
	.quad	0x4019a0f2becedd48              # double 6.4071759999999998
	.quad	0x40237c245f5ad96a              # double 9.7424649999999993
	.quad	0x4021f486cebbba56              # double 8.9775910000000003
	.quad	0x3fdb7cdcca70d1fa              # double 0.42949599999999999
	.quad	0x4016da02fb5d0310              # double 5.7129019999999997
	.quad	0x3fe63d68405b39e2              # double 0.69499599999999995
	.quad	0x400105eedcc20d56              # double 2.1278969999999999
	.quad	0x40159e4d1a650614              # double 5.4045909999999999
	.quad	0x4023b4d0dcfcc5b9              # double 9.8531560000000002
	.quad	0x3f82be48a58b3f64              # double 0.0091520000000000004
	.quad	0x400df1904b3c3e75              # double 3.7429510000000001
	.quad	0x40217e4345cfede9              # double 8.7466069999999991
	.quad	0x40227639d5e4a383              # double 9.2309099999999997
	.quad	0x401ea1782d38476f              # double 7.6576849999999998
	.quad	0x400da425aee631f9              # double 3.7051500000000002
	.quad	0x4005921ee675147f              # double 2.696348
	.quad	0x400a7506573215fd              # double 3.3071410000000001
	.quad	0x3fe2929aa1d755bd              # double 0.58039600000000002
	.quad	0x4013f277c45cbbc3              # double 4.9867850000000002
	.quad	0x401afc5d206c8712              # double 6.7464490000000001
	.quad	0x401528eb0318b934              # double 5.2899589999999996
	.quad	0x40227217d2849cb2              # double 9.2228379999999994
	.quad	0x400b0a4ebdd334c6              # double 3.3800330000000001
	.quad	0x3fd3bbe4473cd573              # double 0.30834299999999998
	.quad	0x400f54eebf65dbfd              # double 3.916471
	.quad	0x40214c245f5ad96a              # double 8.6487149999999993
	.quad	0x4019d1633482be8c              # double 6.4544800000000002
	.quad	0x3ffb7168f8e7ddca              # double 1.7151879999999999
	.quad	0x3fe4b71da37ef5a9              # double 0.64735299999999996
	.quad	0x4021f672da122fad              # double 8.9813449999999992
	.quad	0x4017937c1376d549              # double 5.8940279999999996
	.quad	0x400bcd25edd05293              # double 3.4751699999999999
	.quad	0x4020232745bf26f2              # double 8.0686590000000002
	.quad	0x402084f67b1c0011              # double 8.2596930000000004
	.quad	0x3ff6686d71f36263              # double 1.400495
	.quad	0x3ff31bf7ad4b2746              # double 1.1943280000000001
	.quad	0x40013ee9142b302f              # double 2.1557179999999998
	.quad	0x4008b40fecdd0d8d              # double 3.0879210000000001
	.quad	0x401047a89331a08c              # double 4.069979
	.quad	0x4021cfb5aea3161a              # double 8.9056829999999998
	.quad	0x4019433e78e1932d              # double 6.3156679999999996
	.quad	0x3fe501754b05b7d0              # double 0.65642800000000001
	.quad	0x402338d045fe1112              # double 9.6109639999999992
	.quad	0x3ff833e24febd09e              # double 1.512667
	.quad	0x3fe986c6583e8577              # double 0.79770200000000002
	.quad	0x40204b8bac710cb3              # double 8.1475500000000007
	.quad	0x4014df76e6106ab1              # double 5.2182269999999997
	.quad	0x3fd2eea209aaa3ad              # double 0.29581499999999999
	.quad	0x4018e379314445aa              # double 6.2221419999999998
	.quad	0x402147398e970718              # double 8.6391109999999998
	.quad	0x401afda3c21187e8              # double 6.7476950000000002
	.quad	0x402272604e1e7104              # double 9.2233909999999994
	.quad	0x4001102b40f66a55              # double 2.132895
	.quad	0x3ff75527e5215769              # double 1.4582900000000001
	.quad	0x402064ad14a0a0f5              # double 8.1966330000000003
	.quad	0x4022ebf444e0daa1              # double 9.4608480000000003
	.quad	0x40201f9b56323bbc              # double 8.0617319999999992
	.quad	0x3fc55703f2d3c793              # double 0.16671800000000001
	.quad	0x4011c0e90bc7b45f              # double 4.4383889999999999
	.quad	0x400ab2f123c42a67              # double 3.3373740000000001
	.quad	0x4013c2817763e4ac              # double 4.9399470000000001
	.quad	0x3ff85057d1782d38              # double 1.5196149999999999
	.quad	0x3fd40867ad8e4324              # double 0.31301299999999999
	.quad	0x400359c4113c6866              # double 2.418831
	.quad	0x4006b059641f6449              # double 2.8361079999999999
	.quad	0x3fe2652157689ca2              # double 0.57484500000000005
	.quad	0x401e90e38a7e73a3              # double 7.6414929999999996
	.quad	0x4014c05c4651f3e9              # double 5.1878520000000004
	.quad	0x400a75efa615a8df              # double 3.3075860000000001
	.quad	0x401de9656eefa1e4              # double 7.4779260000000001
	.quad	0x3ff4a36199780baa              # double 1.2898879999999999
	.quad	0x4008b8793dd97f63              # double 3.0900750000000001
	.quad	0x40042e9ab29e4d5e              # double 2.5227560000000002
	.quad	0x40142ec0b567557a              # double 5.0456570000000003
	.quad	0x3ff8af533f42352f              # double 1.5428040000000001
	.quad	0x402171b4dcebfec1              # double 8.7220829999999996
	.quad	0x40225390a7829069              # double 9.1632130000000007
	.quad	0x4012e29aa1d755bd              # double 4.7212930000000002
	.quad	0x400cb6bebe1650a4              # double 3.5892309999999998
	.quad	0x40214f546d3f9e7c              # double 8.6549410000000008
	.quad	0x400710a782906898              # double 2.8831319999999998
	.quad	0x401c63dbc23315d7              # double 7.097518
	.quad	0x4019bbeb18116ebd              # double 6.4335139999999997
	.quad	0x401afcd6c2efd439              # double 6.7469130000000002
	.quad	0x3ffaa0ce0b912dba              # double 1.6642589999999999
	.quad	0x3ff97e670e2c12ae              # double 1.5933600000000001
	.quad	0x401a631769a91106              # double 6.5967690000000001
	.quad	0x4013d65ecc3e3194              # double 4.959346
	.quad	0x3ffdf1f36262cba7              # double 1.87157
	.quad	0x4012cc27e9531551              # double 4.6993710000000002
	.quad	0x400f47ee9142b303              # double 3.910123
	.quad	0x401c12f9ca5bd945              # double 7.0185310000000003
	.quad	0x3fc53415b1422ccb              # double 0.16565199999999999
	.quad	0x402264ffeb074a77              # double 9.1972649999999998
	.quad	0x4021d395e5aff2a1              # double 8.9132529999999992
	.quad	0x3ffd5113836a832c              # double 1.8322940000000001
	.quad	0x401ac253543aeab8              # double 6.6897710000000004
	.quad	0x4023175968512232              # double 9.5456040000000009
	.quad	0x3fd4a658c4bd33d3              # double 0.32265300000000002
	.quad	0x40222549731098d4              # double 9.0728259999999991
	.quad	0x401f01c8a7a41e58              # double 7.7517420000000001
	.quad	0x3ffc2fd32c625e9a              # double 1.761676
	.quad	0x402222d5e071c53f              # double 9.0680379999999996
	.quad	0x3ff879767903211d              # double 1.5296540000000001
	.quad	0x40097eaee2003ab8              # double 3.1868569999999998
	.quad	0x401d6dd4845132f8              # double 7.3572559999999995
	.quad	0x401bf2ec28b2a6b1              # double 6.9872290000000001
	.quad	0x401a86ec9e236c16              # double 6.6317620000000002
	.quad	0x400578904f6dfc5d              # double 2.6838690000000001
	.quad	0x401771fbc5de9c02              # double 5.8613119999999999
	.quad	0x401a3c00da1a9329              # double 6.5585969999999998
	.quad	0x4012063b256ffc11              # double 4.5060849999999997
	.quad	0x401fd16f86a09891              # double 7.9545269999999996
	.quad	0x401a442b734b5137              # double 6.5665719999999999
	.quad	0x4010913879c4113c              # double 4.1418169999999996
	.quad	0x40178977c88e79ab              # double 5.8842460000000001
	.quad	0x4003c45ed4a1ad64              # double 2.4708839999999999
	.quad	0x401d90ce91c8eac0              # double 7.391413
	.quad	0x4021d89b738e6d16              # double 8.9230610000000006
	.quad	0x40141c04c8bc9cd4              # double 5.0273620000000001
	.quad	0x4016396030c23fab              # double 5.5560309999999999
	.quad	0x401474ef88b97785              # double 5.1141949999999996
	.quad	0x3fd47296f6512a95              # double 0.319494
	.quad	0x40232695b78cc9a7              # double 9.5753609999999991
	.quad	0x4001979a6b50b0f2              # double 2.1990249999999998
	.quad	0x4017493532e7b3d9              # double 5.8214920000000001
	.quad	0x4021aebacf7446fa              # double 8.8412690000000005
	.quad	0x401148915bdd7668              # double 4.3208669999999998
	.quad	0x3febcc122749f0e5              # double 0.86866100000000002
	.quad	0x4021637da61e0c5b              # double 8.6943180000000009
	.quad	0x40225b90ea9e6eeb              # double 9.1788399999999992
	.quad	0x401fc5abc0e38a7e              # double 7.9430379999999996
	.quad	0x3ff5f359ff4fd6d8              # double 1.371912
	.quad	0x400bbdfa00e27e0f              # double 3.467762
	.quad	0x40155990f301eabc              # double 5.3374670000000002
	.quad	0x3fee2f31b152f3c3              # double 0.94326100000000002
	.quad	0x40209bb03e20ccff              # double 8.3040789999999998
	.quad	0x4009888df37329c3              # double 3.1916769999999999
	.quad	0x401ee294573a7979              # double 7.7212690000000003
	.quad	0x4016edc3bd599243              # double 5.7321920000000004
	.quad	0x3fe3cd4aa10e0221              # double 0.61880999999999997
	.quad	0x3ff05d66adb402d1              # double 1.0228029999999999
	.quad	0x400d5c87db2b3461              # double 3.6701809999999999
	.quad	0x401223675ddd2ae9              # double 4.5345740000000001
	.quad	0x4015d769ec2ce465              # double 5.4603650000000004
	.quad	0x400521ffb480a5ad              # double 2.6416010000000001
	.quad	0x400b2b8cfbfc6541              # double 3.3962650000000001
	.quad	0x4015b3e5753a3ec0              # double 5.4256799999999998
	.quad	0x400504db9c7368ad              # double 2.6273719999999998
	.quad	0x40162e37de939eae              # double 5.5451350000000001
	.quad	0x3ff33c07ee0b0af6              # double 1.202156
	.quad	0x3ff20a5bd944aa54              # double 1.127529
	.quad	0x40231b7d1fe64f55              # double 9.5536890000000003
	.quad	0x3fed238fbca1059f              # double 0.91059100000000004
	.quad	0x401ff5668c261390              # double 7.989649
	.quad	0x3fda1e8e60807358              # double 0.40811500000000001
	.quad	0x3ff60fb3311a543f              # double 1.378833
	.quad	0x4009cf7446f9b995              # double 3.2262960000000001
	.quad	0x400264f6dfc5cdd5              # double 2.299299
	.quad	0x401a5e6299524bfd              # double 6.5921729999999998
	.quad	0x4022f203e63e8dda              # double 9.4726859999999995
	.quad	0x401a742d490e66cb              # double 6.6134539999999999
	.quad	0x40233119ef954eb1              # double 9.5959009999999995
	.quad	0x4023a565c2d27807              # double 9.8230419999999991
	.quad	0x401d37f66e86c658              # double 7.3046509999999998
	.quad	0x40140afe60c38f36              # double 5.0107359999999996
	.quad	0x4018f41a261bf37c              # double 6.2383810000000004
	.quad	0x401f6bff8a8f3a9b              # double 7.8554669999999999
	.quad	0x3ffdaccd530489d2              # double 1.8546879999999999
	.quad	0x4022918cc144028e              # double 9.2842769999999994
	.quad	0x40007a0945f9df55              # double 2.0595880000000002
	.quad	0x4001a940bbb1f256              # double 2.207643
	.quad	0x4017a26fa3fcc9eb              # double 5.9086290000000004
	.quad	0x4017dcd466f5019f              # double 5.9656539999999998
	.quad	0x4022640010c6f7a1              # double 9.1953130000000005
	.quad	0x400965b63d3e4ef0              # double 3.1746639999999999
	.quad	0x400758ad25679896              # double 2.9182990000000002
	.quad	0x40118718eb895076              # double 4.3819309999999998
	.quad	0x402312f4f0d844d0              # double 9.5370249999999999
	.quad	0x4017c034f3fd933e              # double 5.9377019999999998
	.quad	0x3f997e56473471f8              # double 0.024896000000000001
	.quad	0x4000d8e8ea39c51e              # double 2.1059130000000001
	.quad	0x4010873cd573647c              # double 4.1320680000000003
	.quad	0x4014674d1633482c              # double 5.1008800000000001
	.quad	0x4015e666234a87e4              # double 5.4749990000000004
	.quad	0x400011337eb28d86              # double 2.0083989999999998
	.quad	0x3fdf2d948dc11e43              # double 0.48715700000000001
	.quad	0x3ff5fa00e27e0efa              # double 1.3735360000000001
	.quad	0x4015a84c6a3bddfd              # double 5.4143540000000003
	.quad	0x40225b5d462c343b              # double 9.1784459999999992
	.quad	0x3ff6ac386d2ed784              # double 1.417046
	.quad	0x4008d9b0ab2e1694              # double 3.1062940000000001
	.quad	0x3ff01929670196d9              # double 1.006143
	.quad	0x400abdd4c76d117b              # double 3.3426909999999999
	.quad	0x40018639d5e4a383              # double 2.1905399999999999
	.quad	0x40018427c7c5260f              # double 2.1895289999999998
	.quad	0x40133846e8f29d41              # double 4.8049580000000001
	.quad	0x4015fd38476f2a5a              # double 5.4972849999999998
	.quad	0x40171a17b0f6ad71              # double 5.7754810000000001
	.quad	0x40095eff9f87f024              # double 3.171386
	.quad	0x401f9fce746cb967              # double 7.9060610000000002
	.quad	0x401c5dd93c46d82c              # double 7.0916490000000003
	.quad	0x3fe390a782906898              # double 0.61140799999999995
	.quad	0x3ffca3d0bfa09460              # double 1.7899940000000001
	.quad	0x3ff38e432441fea8              # double 1.222232
	.quad	0x3ffde5eaab042529              # double 1.8686320000000001
	.quad	0x3fe44ef672b88440              # double 0.63463899999999995
	.quad	0x40219835158b8280              # double 8.7972800000000007
	.quad	0x400674e6e221c8a8              # double 2.8070810000000002
	.quad	0x3fb6a6e32e3821af              # double 0.088483999999999993
	.quad	0x40193b220791c4b9              # double 6.307747
	.quad	0x40163748e4755ffe              # double 5.5539889999999996
	.quad	0x400f320535c9e668              # double 3.8994239999999998
	.quad	0x4023ef459d99029b              # double 9.9673280000000001
	.quad	0x40177761cbccf28c              # double 5.8665839999999996
	.quad	0x3ffc5dbb9cf9a06a              # double 1.7728839999999999
	.quad	0x401aa6edaa92e621              # double 6.6630159999999998
	.quad	0x4023915b1422ccb4              # double 9.7838980000000006
	.quad	0x3ff9f0be0ded288d              # double 1.621275
	.quad	0x4012bbf9c62a1b5c              # double 4.6835699999999996
	.quad	0x4019e4a7f8012dfd              # double 6.4732969999999996
	.quad	0x401c760ed80a17b1              # double 7.115291
	.quad	0x4005a09aaa3ad18d              # double 2.7034199999999999
	.quad	0x4019227e5215768a              # double 6.2836850000000002
	.quad	0x4012745846e8f29d              # double 4.6136179999999998
	.quad	0x4007230121682f94              # double 2.8920919999999999
	.quad	0x3ff6641a261bf37c              # double 1.3994390000000001
	.quad	0x40206851eb851eb8              # double 8.2037499999999994
	.quad	0x40140605ab3aabcd              # double 5.0058809999999996
	.quad	0x3ff99c422036006d              # double 1.600649
	.quad	0x4023cffef39085f5              # double 9.9062420000000006
	.quad	0x400995393250b524              # double 3.1978629999999999
	.quad	0x3fe6d50a88effe2a              # double 0.71350599999999997
	.quad	0x3ff44f82f5126634              # double 1.269412
	.quad	0x3f961c79b34a44c8              # double 0.021593000000000001
	.quad	0x4002d657fb69984a              # double 2.35466
	.quad	0x401a13d31b9b66f9              # double 6.5193599999999998
	.quad	0x4017f8bbd3804535              # double 5.9929040000000002
	.quad	0x401a6cc964628028              # double 6.6062370000000001
	.quad	0x4005c7db2b346131              # double 2.7225860000000002
	.quad	0x40161f8a0902de01              # double 5.5308000000000002
	.quad	0x402193b3a68b19a4              # double 8.7884799999999998
	.quad	0x40229b96f21f6cad              # double 9.3038860000000003
	.quad	0x3ff9a1693c03bc4d              # double 1.601907
	.quad	0x4019f5c74751ce29              # double 6.4900180000000001
	.quad	0x40178b80a9de8b3b              # double 5.8862329999999998
	.quad	0x400fb9f2ba9d1f60              # double 3.965795
	.quad	0x4004d3860999dcb5              # double 2.6032829999999998
	.quad	0x401671fe21d96e9c              # double 5.6113210000000002
	.quad	0x402319fb1e18efbb              # double 9.5507439999999999
	.quad	0x3ff6f993d5347a5b              # double 1.435932
	.quad	0x3fe27c6fbd273d5c              # double 0.57769000000000004
	.quad	0x4022c56238da3c21              # double 9.3855149999999998
	.quad	0x3fb2b0a6fc58ab93              # double 0.073008000000000003
	.quad	0x401c15aa2e3c536d              # double 7.0211569999999996
	.quad	0x3ffc8a6117720c8d              # double 1.783784
	.quad	0x3ffe68427418d691              # double 1.9004540000000001
	.quad	0x4014afb3fa6defc8              # double 5.1715850000000003
	.quad	0x400ef04ab606b7aa              # double 3.8673299999999999
	.quad	0x401f81e3eaf6837f              # double 7.8768459999999995
	.quad	0x40024548a9bcfd4c              # double 2.28383
	.quad	0x401b8df86e3b46fe              # double 6.8886430000000001
	.quad	0x40009939a7c17a89              # double 2.0748169999999999
	.quad	0x401b36b7aa25d8d8              # double 6.8034350000000003
	.quad	0x400e0df612407464              # double 3.7568169999999999
	.quad	0x400de8a58b3f63c3              # double 3.7385969999999999
	.quad	0x4021d591eeaa6d26              # double 8.9171289999999992
	.quad	0x40185e75360d0247              # double 6.092244
	.quad	0x3fe035fe542e557e              # double 0.50659100000000001
	.quad	0x4018cafdda8bd231              # double 6.1982340000000002
	.quad	0x401f6d612c6ac216              # double 7.8568160000000002
	.quad	0x3fad634549b62c77              # double 0.057397999999999998
	.quad	0x4013aeabbcb1cc96              # double 4.9205769999999998
	.quad	0x40171a433508f649              # double 5.7756470000000002
	.quad	0x400921309c7ffde7              # double 3.1412059999999999
	.quad	0x4017c986fcdee350              # double 5.9468040000000002
	.quad	0x4022ce3f141205bc              # double 9.4028249999999999
	.quad	0x4013fbdec5f394b8              # double 4.9959670000000003
	.quad	0x401972a0a958537e              # double 6.3619409999999998
	.quad	0x401b7bb4916ca46e              # double 6.870806
	.quad	0x40205dc26dce39b4              # double 8.1831239999999993
	.quad	0x3ff24aab8a5ce5b4              # double 1.14323
	.quad	0x4010325785f8d2e5              # double 4.0491619999999999
	.quad	0x401037ea5f84cad5              # double 4.0546049999999996
	.quad	0x4002e549b62c7757              # double 2.3619569999999999
	.quad	0x4020f1fd7a13c255              # double 8.4726370000000006
	.quad	0x3fe32265f0f5a101              # double 0.59794899999999995
	.quad	0x40186be40420f6f1              # double 6.1053620000000004
	.quad	0x400764606748e475              # double 2.9240119999999998
	.quad	0x40100cecc814d728              # double 4.0126220000000004
	.quad	0x4023058a32f44913              # double 9.5108200000000007
	.quad	0x3ff1403cd141a693              # double 1.0781829999999999
	.quad	0x4007f3a0c6b484d7              # double 2.9939589999999998
	.quad	0x4017c70bd017dae8              # double 5.9443809999999999
	.quad	0x40229d944aa53fc0              # double 9.3077719999999999
	.quad	0x401d43b9ae0c1765              # double 7.3161379999999996
	.quad	0x3ff0e04c05921038              # double 1.0547599999999999
	.quad	0x4016baa00192a737              # double 5.6822509999999999
	.quad	0x3ffac241c3efae79              # double 1.672426
	.quad	0x401011bde82d7b63              # double 4.0173259999999997
	.quad	0x4014aa38fbca105a              # double 5.1662330000000001
	.quad	0x401c3788db0574b4              # double 7.054233
	.quad	0x4016622f2734f82f              # double 5.5958829999999997
	.quad	0x401b7686e7e62dc7              # double 6.8657490000000001
	.quad	0x3ff7435ce1826677              # double 1.453946
	.quad	0x401e9ad7d7c2ca15              # double 7.6512140000000004
	.quad	0x402036dca07f66e8              # double 8.1071519999999992
	.quad	0x40178df2a9d627bf              # double 5.8886209999999997
	.quad	0x3ff5c9f2fdb8fde3              # double 1.361804
	.quad	0x40187492ff4ba51a              # double 6.113842
	.quad	0x40182ab0c88a47ed              # double 6.04169
	.quad	0x4009a3a96d4c33b5              # double 3.2049129999999999
	.quad	0x401d6e221c8a7a42              # double 7.3575520000000001
	.quad	0x4019bc475e6362a6              # double 6.4338660000000001
	.quad	0x4017ad31b9b66f93              # double 5.9191349999999998
	.quad	0x401ed60b2c83ec89              # double 7.7090269999999998
	.quad	0x4019361a60d4562e              # double 6.302835
	.quad	0x4015a7ac3eb7cbb4              # double 5.4137430000000002
	.quad	0x400be5a14488c60d              # double 3.4871240000000001
	.quad	0x40202868123810e9              # double 8.0789190000000008
	.quad	0x3fd9beb18116ebd5              # double 0.40226400000000001
	.quad	0x402006496ededaec              # double 8.0122789999999994
	.quad	0x402069511dffc548              # double 8.2056970000000007
	.quad	0x4020700a393ee5ef              # double 8.2188280000000002
	.quad	0x40123666ec9e236c              # double 4.5531269999999999
	.quad	0x4007c4cf8d716d2b              # double 2.9710990000000002
	.quad	0x40107a18bd66277c              # double 4.1192349999999998
	.quad	0x3fff779e9d0e9920              # double 1.966704
	.quad	0x4020c8366516db0e              # double 8.3910400000000003
	.quad	0x401fe0a06e9ff0cc              # double 7.9693620000000003
	.quad	0x3fd459e1f3a57eaa              # double 0.31798599999999999
	.quad	0x3ff093da72a7bd49              # double 1.036097
	.quad	0x3ff221049235f80a              # double 1.1330610000000001
	.quad	0x400698023a6ce358              # double 2.8242229999999999
	.quad	0x4000933c1ce6c094              # double 2.0718920000000001
	.quad	0x401431f36262cba7              # double 5.0487799999999998
	.quad	0x400ddea140570825              # double 3.7337060000000002
	.quad	0x4021ff1d1d4738a4              # double 8.9982690000000005
	.quad	0x4022487cc7d1bb49              # double 9.1415769999999998
	.quad	0x3ff5ca3e7d135116              # double 1.3618760000000001
	.quad	0x40195b395c422036              # double 6.339086
	.quad	0x3fda2ae4b0186120              # double 0.40886800000000001
	.quad	0x4005602a77a2cecd              # double 2.6719560000000002
	.quad	0x3fb5d16fc9bc7714              # double 0.085226999999999997
	.quad	0x3fbf077ccc037931              # double 0.121208
	.quad	0x400cd6787ce95fab              # double 3.6047220000000002
	.quad	0x401085c853c14834              # double 4.1306469999999997
	.quad	0x3fd6e7c49fd7a13c              # double 0.35789599999999999
	.quad	0x3fe021fd1569f490              # double 0.50414899999999996
	.quad	0x3ff554ad362e9036              # double 1.3331729999999999
	.quad	0x4000ab649d388a8b              # double 2.083688
	.quad	0x4023a7d06bbdbe3c              # double 9.8277619999999998
	.quad	0x402132c55c96030c              # double 8.5991619999999997
	.quad	0x400d7f1cfbb94962              # double 3.6870669999999999
	.quad	0x3ffe6a172abef06b              # double 1.900901
	.quad	0x4012bd4bad7d7c2d              # double 4.6848590000000003
	.quad	0x3fee3074a771c971              # double 0.943415
	.quad	0x4014fb5807fed203              # double 5.2454530000000004
	.quad	0x3ffc907faa044ae8              # double 1.7852779999999999
	.quad	0x4015c59af9ebe9c9              # double 5.4429740000000004
	.quad	0x3fffb55582129457              # double 1.9817709999999999
	.quad	0x3ff5c9784ec636b1              # double 1.3616870000000001
	.quad	0x40167764f11b60af              # double 5.6165960000000004
	.quad	0x40170dd8f92af9a9              # double 5.7635230000000002
	.quad	0x3fc9bcb1cc964628              # double 0.201071
	.quad	0x40222b10129cbab6              # double 9.0841069999999995
	.quad	0x40067421c044284e              # double 2.806705
	.quad	0x4007978140dd3fe2              # double 2.9489770000000002
	.quad	0x4017b15f02c4d65e              # double 5.9232139999999998
	.quad	0x40209b6199780baa              # double 8.3034789999999994
	.quad	0x4021fced0b30b5aa              # double 8.9939959999999992
	.quad	0x3fcb2c8c5004fb12              # double 0.21229700000000001
	.quad	0x4017badddf43c7d6              # double 5.9324870000000001
	.quad	0x3ffe07fcb923a29c              # double 1.8769499999999999
	.quad	0x40201f694467381d              # double 8.0613499999999991
	.quad	0x40153c714fce746d              # double 5.3090260000000002
	.quad	0x4022f76b3bb83cf3              # double 9.4832400000000003
	.quad	0x4006f36a400fba88              # double 2.8688549999999999
	.quad	0x3feeaa80064a9cdc              # double 0.95831299999999997
	.quad	0x4023f8e30446b69e              # double 9.9861070000000005
	.quad	0x401773892ee84ad8              # double 5.8628280000000004
	.quad	0x3fed4f7446f9b995              # double 0.91594900000000001
	.quad	0x4001774c4cdfaca3              # double 2.1832509999999998
	.quad	0x402277cd898b2e9d              # double 9.2339900000000004
	.quad	0x4021022d948dc11e              # double 8.5042539999999995
	.quad	0x40205603b3e9a6f8              # double 8.1679969999999997
	.quad	0x4012f93e1c9b413a              # double 4.7434010000000004
	.quad	0x401f8bc05d52c16e              # double 7.886476
	.quad	0x4020a8ed3d859c8d              # double 8.3299350000000008
	.quad	0x400d558969a0ad8a              # double 3.666766
	.quad	0x4011d9fec99f1ae3              # double 4.4628860000000001
	.quad	0x40090d551d68c693              # double 3.13151
	.quad	0x4015d76922d948dc              # double 5.4603619999999999
	.quad	0x402395ed8d36b4c8              # double 9.792828
	.quad	0x401f8960b6f9fcb1              # double 7.8841580000000002
	.quad	0x3ff84b790fb65669              # double 1.5184260000000001
	.quad	0x400b17342edbb59e              # double 3.3863300000000001
	.quad	0x401cba832b990afe              # double 7.1821409999999997
	.quad	0x4016f709b738e6d1              # double 5.7412479999999997
	.quad	0x40173f8fcd67fd3f              # double 5.8120719999999997
	.quad	0x4022c41df3300de5              # double 9.3830410000000004
	.quad	0x40028c20d5629d84              # double 2.318422
	.quad	0x3fff0bf3bea91d9b              # double 1.940418
	.quad	0x3fe9faa4766c6de7              # double 0.81184599999999996
	.quad	0x4022b131a8ef77f2              # double 9.3460819999999991
	.quad	0x401a11ceaf251c19              # double 6.5173899999999998
	.quad	0x3fd4c3efae7924af              # double 0.324459
	.quad	0x4018ca14488c60cc              # double 6.197343
	.quad	0x40229508919ef955              # double 9.2910810000000001
	.quad	0x400cc908a265f0f6              # double 3.5981610000000002
	.quad	0x4021d2b4b72c5198              # double 8.9115350000000007
	.quad	0x3ff31fe43675ddd3              # double 1.1952860000000001
	.quad	0x400e977a7008a698              # double 3.8239640000000001
	.quad	0x3ffb564b662fdfc2              # double 1.7085680000000001
	.quad	0x401c1c1d6cf850df              # double 7.0274559999999999
	.quad	0x40238f5b81301648              # double 9.7799949999999995
	.quad	0x3fca7ed84d338f7a              # double 0.20699600000000001
	.quad	0x4000f93ccd0fe8ab              # double 2.1216979999999999
	.quad	0x40148f69878316a0              # double 5.1400509999999997
	.quad	0x400e7e6601bc98a2              # double 3.8117179999999999
	.quad	0x4014f43cc07aaef3              # double 5.2385130000000002
	.quad	0x40174d45a5fc7e6b              # double 5.8254609999999998
	.quad	0x401d15970b49e01e              # double 7.2710840000000001
	.quad	0x3ff4dbc558644524              # double 1.303655
	.quad	0x3ff2d321e603d578              # double 1.1765460000000001
	.quad	0x4003c7357e670e2c              # double 2.47227
	.quad	0x3fd94a2b9d3cbc49              # double 0.395152
	.quad	0x3ff5dbad3a604e1e              # double 1.3661319999999999
	.quad	0x4021d37457c0b136              # double 8.9129970000000007
	.quad	0x4020e700ef1348b2              # double 8.4511789999999998
	.quad	0x401815f6ba0620ab              # double 6.0214489999999996
	.quad	0x401dd030c23fab11              # double 7.4533110000000002
	.quad	0x3ff90cc6822ff089              # double 1.5656190000000001
	.quad	0x3ff9c067cf1c3266              # double 1.6094740000000001
	.quad	0x401a4d0aaa7ded6c              # double 6.5752360000000003
	.quad	0x40070f483cafb3b7              # double 2.8824619999999999
	.quad	0x4023bf077ccc0379              # double 9.8731039999999996
	.quad	0x4013c7b634dad320              # double 4.9450310000000002
	.quad	0x401ea7d523b3636f              # double 7.6638989999999997
	.quad	0x4015aaa5c5f7c676              # double 5.4166480000000004
	.quad	0x401292363b256ffc              # double 4.6427849999999999
	.quad	0x401f465d7cb2d906              # double 7.8187160000000002
	.quad	0x4022bb10129cbab6              # double 9.3653569999999995
	.quad	0x40195c4c165907d9              # double 6.3401339999999999
	.quad	0x40215baeee957471              # double 8.6790690000000001
	.quad	0x4013b061c79b34a4              # double 4.9222479999999997
	.quad	0x401d1cb89d6adf72              # double 7.2780480000000001
	.quad	0x3fe1c2aa9f7b5aea              # double 0.55501299999999998
	.quad	0x402096e807bbb624              # double 8.2947389999999998
	.quad	0x3ff2fce95faa8a83              # double 1.1867460000000001
	.quad	0x40044f5c28f5c28f              # double 2.5387499999999998
	.quad	0x400cbc5ef62f9ca6              # double 3.5919780000000001
	.quad	0x4011ef345069a4df              # double 4.4835979999999998
	.quad	0x4009c2bbecaab8a6              # double 3.2200850000000001
	.quad	0x4015c5f0b28522ea              # double 5.4433009999999999
	.quad	0x401230f5e41d4b6a              # double 4.5478129999999997
	.quad	0x4000da836eb4e981              # double 2.1066959999999999
	.quad	0x401fa0d6f544bb1b              # double 7.90707
	.quad	0x4004bcffeb074a77              # double 2.592285
	.quad	0x401899d7774aba38              # double 6.1502359999999996
	.quad	0x401358f190d173fb              # double 4.8368589999999996
	.quad	0x401f8a3486f049aa              # double 7.8849660000000004
	.quad	0x40224e6e008e9b39              # double 9.1531830000000003
	.quad	0x401021f81a5870da              # double 4.0331729999999997
	.quad	0x4007ddf86e3b46fe              # double 2.983384
	.quad	0x401ea5cd0bb6ed67              # double 7.6619149999999995
	.quad	0x401471950331e3a8              # double 5.1109200000000001
	.quad	0x401b7a1b5c7cd899              # double 6.8692450000000003
	.quad	0x401cd70867ad8e43              # double 7.2099929999999999
	.quad	0x400e63bf727136a4              # double 3.798705
	.quad	0x3fbb93bc0a06e9ff              # double 0.107723
	.quad	0x400b6c197e564734              # double 3.4277829999999998
	.quad	0x4012206a2b1704ff              # double 4.5316549999999998
	.quad	0x401f297d06bbdbe4              # double 7.7905160000000002
	.quad	0x3ff72aeafab53d64              # double 1.447978
	.quad	0x400bcb12d3415b14              # double 3.4741569999999999
	.quad	0x401ce9c3ce2089e3              # double 7.2282859999999998
	.quad	0x3fe85db9841aac54              # double 0.76144100000000003
	.quad	0x400927243137b070              # double 3.1441119999999998
	.quad	0x3ff96b54e2b063e0              # double 1.5887039999999999
	.quad	0x4008808fa7a85016              # double 3.0627740000000001
	.quad	0x4021549b62c77575              # double 8.6652480000000001
	.quad	0x401bed6dc1a47a9e              # double 6.9818639999999998
	.quad	0x400ac1f31f46ed24              # double 3.3447019999999998
	.quad	0x401b7f123c42a66e              # double 6.8740930000000002
	.quad	0x400c50d0678c0054              # double 3.5394600000000001
	.quad	0x401fa66234a87e39              # double 7.912484
	.quad	0x3fea5c2f405f6ba0              # double 0.82375299999999995
	.quad	0x4007edc3bd599243              # double 2.9910960000000002
	.quad	0x400b84f6598e10cf              # double 3.4399229999999998
	.quad	0x3fe8ff1d81f10668              # double 0.781142
	.quad	0x4018013b5bf6a0dc              # double 6.0012030000000003
	.quad	0x40210cf61672324d              # double 8.5253150000000009
	.quad	0x3fcfd102bc72e276              # double 0.24856600000000001
	.quad	0x40137baf102363b2              # double 4.8707849999999997
	.quad	0x401a085f06f69446              # double 6.5081749999999996
	.quad	0x3fe5a8650e779208              # double 0.67680600000000002
	.quad	0x4022d78b3700474e              # double 9.4209840000000007
	.quad	0x4020f0954a7f8013              # double 8.4698890000000002
	.quad	0x3ffff980f55de58e              # double 1.9984139999999999
	.quad	0x4003a54823854046              # double 2.4557039999999999
	.quad	0x4015e059641f6449              # double 5.4690909999999997
	.quad	0x3fe3ef3b213e3e29              # double 0.62295299999999998
	.quad	0x40216c5e9185cee1              # double 8.7116589999999992
	.quad	0x401e0aeddce7cd03              # double 7.5106729999999997
	.quad	0x401812d948dc11e4              # double 6.0184069999999998
	.quad	0x40181ed30f062d41              # double 6.0301020000000003
	.quad	0x40116122b7baecd0              # double 4.3448589999999996
	.quad	0x402065d3996fa82f              # double 8.1988800000000008
	.quad	0x40224b584b1ab085              # double 9.1471579999999992
	.quad	0x4020cfe60c38f367              # double 8.4060520000000007
	.quad	0x4015f5f30e7ff584              # double 5.4901850000000003
	.quad	0x4012cb0ff10ecb75              # double 4.6983030000000001
	.quad	0x40207682d7b634db              # double 8.2314670000000003
	.quad	0x401e8ecfa69be09c              # double 7.6394640000000003
	.quad	0x401883e89a88ace2              # double 6.1288169999999997
	.quad	0x4003612599ed7c70              # double 2.4224350000000001
	.quad	0x3ff10343b70ef566              # double 1.0632969999999999
	.quad	0x4005c9070fbeb9e5              # double 2.7231580000000002
	.quad	0x4020b5b0574b4070              # double 8.3548609999999996
	.quad	0x40202d017dae8188              # double 8.0879019999999997
	.quad	0x400aca67620ee8d1              # double 3.34883
	.quad	0x401824c1a8ac5c14              # double 6.035895
	.quad	0x40180489d27c3937              # double 6.0044320000000004
	.quad	0x4017347d805e5f31              # double 5.8012600000000001
	.quad	0x3ff0997b30f8c650              # double 1.037471
	.quad	0x4022289a88ace24c              # double 9.0793040000000004
	.quad	0x40235327aa68f4b6              # double 9.6624119999999998
	.quad	0x400d46eb0b7c3505              # double 3.6596280000000001
	.quad	0x401d87c0b1359792              # double 7.3825710000000004
	.quad	0x40202a355043e532              # double 8.0824379999999998
	.quad	0x402307913e81450f              # double 9.51478
	.quad	0x401f658c4bd33d29              # double 7.8491679999999997
	.quad	0x3fb8110a137f38c5              # double 0.094009999999999996
	.quad	0x4014abed30f062d4              # double 5.167897
	.quad	0x4005b06705c896dd              # double 2.7111339999999999
	.quad	0x401a9935b91f70df              # double 6.6496190000000004
	.quad	0x401a8fec56d5cfab              # double 6.6405500000000002
	.quad	0x400a485f4a1272c9              # double 3.2853379999999999
	.quad	0x3f9089e34330d738              # double 0.016150999999999999
	.quad	0x40078792d1287c20              # double 2.941198
	.quad	0x40208f9378ee2867              # double 8.2804219999999997
	.quad	0x3febd95feda66128              # double 0.87028499999999998
	.quad	0x401704117f84449e              # double 5.7539730000000002
	.quad	0x40210e047d3d4281              # double 8.5273780000000006
	.quad	0x3fc599999999999a              # double 0.16875000000000001
	.quad	0x401c7ef8055fbb51              # double 7.1239929999999996
	.quad	0x4000dd912556d19e              # double 2.108187
	.quad	0x40061991361dc93f              # double 2.7624840000000002
	.quad	0x4002114e3bcd35a8              # double 2.2584499999999998
	.quad	0x40094810a569b175              # double 3.1601880000000002
	.quad	0x4001725edd052935              # double 2.1808450000000001
	.quad	0x4007fd4738a3b57c              # double 2.9986709999999999
	.quad	0x3fadbf26f1dc50ce              # double 0.058098999999999998
	.quad	0x40213dbf487fcb92              # double 8.6205999999999996
	.quad	0x401d157c0b135979              # double 7.2709809999999999
	.quad	0x4010d3b8a19c9d5a              # double 4.2067589999999999
	.quad	0x4021b0c692f6e829              # double 8.8452649999999995
	.quad	0x3ff3f6dca07f66e8              # double 1.2477689999999999
	.quad	0x3fe76f5caf2d7f95              # double 0.73234399999999999
	.quad	0x3ff1e4a6a875d56f              # double 1.118323
	.quad	0x3fe6f0b28522ea10              # double 0.71688200000000002
	.quad	0x3fd210a137f38c54              # double 0.28226499999999999
	.quad	0x400ce7c8d195896a              # double 3.6131760000000002
	.quad	0x401613cff64cf8d7              # double 5.5193479999999999
	.quad	0x401b9fa26a22b389              # double 6.9058929999999998
	.quad	0x400c91172ef0ae53              # double 3.5708449999999998
	.quad	0x4020aa849cb252ce              # double 8.333043
	.quad	0x4001837ac3eb7cbb              # double 2.1891989999999999
	.quad	0x4022af83382e44b7              # double 9.3427980000000002
	.quad	0x3ff599d7774aba38              # double 1.3500589999999999
	.quad	0x4014f0ad46f587d7              # double 5.235036
	.quad	0x401c0f70153bd167              # double 7.0150759999999996
	.quad	0x3fd21709310129cc              # double 0.28265600000000002
	.quad	0x400111148fd9fd37              # double 2.13334
	.quad	0x402006ad9274e22a              # double 8.0130429999999997
	.quad	0x4010a78feef5ec81              # double 4.1636350000000002
	.quad	0x4007c1711947cfa2              # double 2.9694539999999998
	.quad	0x401aa88a47ecfe9b              # double 6.6645899999999996
	.quad	0x3ff2146d3f9e7b81              # double 1.1299870000000001
	.quad	0x3ff385fd04a2fcf0              # double 1.2202120000000001
	.quad	0x3ff21d57ff9b5632              # double 1.1321639999999999
	.quad	0x401c65bf26f1dc51              # double 7.0993620000000002
	.quad	0x401da04ab606b7aa              # double 7.4065349999999999
	.quad	0x4007254de7ea5f85              # double 2.8932150000000001
	.quad	0x400ff3532e7b3d8e              # double 3.993811
	.quad	0x401649a34ca0c283              # double 5.5719120000000002
	.quad	0x3fe8ac6ac215b9a6              # double 0.77104700000000004
	.quad	0x400a58c4bd33d295              # double 3.2933439999999998
	.quad	0x401885a7d24180d4              # double 6.1305230000000002
	.quad	0x3fe2e0f3cb3e5754              # double 0.58996000000000004
	.quad	0x40134e7ee9142b30              # double 4.8266559999999998
	.quad	0x40223ae946801712              # double 9.1150610000000007
	.quad	0x400541e03f705858              # double 2.6571660000000001
	.quad	0x40061e22e5de15ca              # double 2.7647149999999998
	.quad	0x40118531db445ed5              # double 4.3800730000000003
	.quad	0x3fd670e2c12ad81b              # double 0.35064000000000001
	.quad	0x3fed9c6f36ef8056              # double 0.925346
	.quad	0x4022c72734f82f51              # double 9.3889709999999997
	.quad	0x400c873de1e2de87              # double 3.566036
	.quad	0x401193b320535c9e              # double 4.3942379999999996
	.quad	0x400d62d8c2a454de              # double 3.6732649999999998
	.quad	0x3ffa1b994e1a3f46              # double 1.6317379999999999
	.quad	0x401405171e29b6b3              # double 5.0049710000000003
	.quad	0x401b659a73b42cc3              # double 6.8492220000000001
	.quad	0x400f0c9b845564b6              # double 3.8811559999999998
	.quad	0x40215b9346994185              # double 8.678858
	.quad	0x4010d2e946801712              # double 4.2059680000000004
	.quad	0x40048c23fab10ba6              # double 2.5684279999999999
	.quad	0x40222f060bb2bbaa              # double 9.0918430000000008
	.quad	0x400ed210385c67e0              # double 3.8525700000000001
	.quad	0x40031f138bcdfefc              # double 2.390174
	.quad	0x40091bbf0dc768e0              # double 3.1385480000000001
	.quad	0x3fee6583e8576cce              # double 0.94989199999999996
	.quad	0x40189aeddce7cd03              # double 6.1512979999999997
	.quad	0x401b694ccab3edd9              # double 6.8528320000000003
	.quad	0x400fca2339c0ebee              # double 3.9737
	.quad	0x40178029f16b11c7              # double 5.8751600000000002
	.quad	0x402224bdba0a5269              # double 9.0717599999999994
	.quad	0x4023ff2c5197a249              # double 9.9983850000000007
	.quad	0x4017470ac3a860dd              # double 5.8193770000000002
	.quad	0x3ff34b0d0edc3bd6              # double 1.2058230000000001
	.quad	0x4011bfbb9496249a              # double 4.4372389999999999
	.quad	0x40220ce1e71044f2              # double 9.0251610000000007
	.quad	0x402052db61bb05fb              # double 8.1618300000000001
	.quad	0x40195ff21b3aeee9              # double 6.3436969999999997
	.quad	0x400bf1f57b41bfbe              # double 3.493144
	.quad	0x4023e1f36262cba7              # double 9.9413099999999996
	.quad	0x401681a543f1c758              # double 5.6266069999999999
	.quad	0x401ff1a47a9e2bd0              # double 7.9859790000000004
	.quad	0x400cbfb3fa6defc8              # double 3.5936050000000002
	.quad	0x402047bdad7518b1              # double 8.1401190000000003
	.quad	0x400a3dea465a5764              # double 3.2802319999999998
	.quad	0x4022eaab68cef673              # double 9.4583390000000004
	.quad	0x400a1a0d77b7c782              # double 3.262721
	.quad	0x40176f705857afea              # double 5.8588269999999998
	.quad	0x4022921e3eaf6838              # double 9.285387
	.quad	0x3fe7b88ebcc6c54c              # double 0.74127900000000002
	.quad	0x3fe82e0e30446b6a              # double 0.75562200000000002
	.quad	0x4016627d45a5fc7e              # double 5.5961809999999996
	.quad	0x401bbaa821f2990f              # double 6.9322819999999998
	.quad	0x40166e8f29d40ee0              # double 5.6079679999999996
	.quad	0x40060e1e71044f1a              # double 2.756894
	.quad	0x4009c9c6f36ef805              # double 3.2235239999999998
	.quad	0x401221572580c309              # double 4.532559
	.quad	0x40126301a79fec9a              # double 4.596686
	.quad	0x401ddae9680e0653              # double 7.463781
	.quad	0x3ff45f1ae2da554c              # double 1.2732190000000001
	.quad	0x3feda4399b2c40d1              # double 0.92629700000000004
	.quad	0x3ffbdec1c1d6cf85              # double 1.741884
	.quad	0x4023de74080f98fa              # double 9.9344789999999996
	.quad	0x3fdb970b49e01de2              # double 0.43109399999999998
	.quad	0x40178041461b6d44              # double 5.8752490000000002
	.quad	0x40167b3aabcd78c4              # double 5.6203409999999998
	.quad	0x400ec26b2f23033a              # double 3.8449309999999999
	.quad	0x400e87296f6512a9              # double 3.8159969999999999
	.quad	0x3ff9549e8815e397              # double 1.583159
	.quad	0x40218c128bf3bea9              # double 8.7735789999999998
	.quad	0x40210257214f0521              # double 8.5045710000000003
	.quad	0x3ff55d2d01c0ca60              # double 1.335248
	.quad	0x4018e9b62c77574f              # double 6.2282339999999996
	.quad	0x3ff61e3da2f8bdec              # double 1.3823829999999999
	.quad	0x3fe3202fb5d03105              # double 0.59767899999999996
	.quad	0x401b94ec204f2ae0              # double 6.8954319999999996
	.quad	0x4023ad58ea7ce0fc              # double 9.8385689999999996
	.quad	0x4004b870da5daf08              # double 2.5900590000000001
	.quad	0x4009380a9de8b3b3              # double 3.1523639999999999
	.quad	0x4018e933e35c5b4b              # double 6.2277370000000003
	.quad	0x4016860bb2bba98f              # double 5.6309040000000001
	.quad	0x401eda9c12f09d8c              # double 7.7134859999999996
	.quad	0x4006c20c49ba5e35              # double 2.8447499999999999
	.quad	0x4010a7b02d59d55e              # double 4.1637579999999996
	.quad	0x4022362ed352220c              # double 9.1058260000000004
	.quad	0x40179abead4f5904              # double 5.9011180000000003
	.quad	0x400dd8ad25679896              # double 3.7307990000000002
	.quad	0x4019ae3fbbd7b203              # double 6.4201649999999999
	.quad	0x3ff06cd7cf5f4e44              # double 1.026573
	.quad	0x4008fe718a86d71f              # double 3.1242399999999999
	.quad	0x3ff46889c1b54196              # double 1.275522
	.quad	0x4006a4f7ec3547e0              # double 2.8305509999999998
	.quad	0x401b41183b60285f              # double 6.8135690000000002
	.quad	0x401d12f61ed5ae1d              # double 7.2685170000000001
	.quad	0x401542cf0f9d2bf5              # double 5.3152429999999997
	.quad	0x4006fc13fd0d0679              # double 2.8730850000000001
	.quad	0x401de39799e518f4              # double 7.4722580000000001
	.quad	0x401e3c27a63736ce              # double 7.558745
	.quad	0x401625f2cb641701              # double 5.5370590000000002
	.quad	0x400cac026cc1ca3a              # double 3.5839889999999999
	.quad	0x401ea83ba3443d47              # double 7.6642900000000002
	.quad	0x40089ef5a964e8b8              # double 3.077617
	.quad	0x401ed9c4da9003ef              # double 7.7126650000000003
	.quad	0x400613cc4ac6cdaf              # double 2.7596669999999999
	.quad	0x3faa6dce39b456b4              # double 0.051618999999999998
	.quad	0x400a1b04ee7c49fd              # double 3.2631929999999998
	.quad	0x401dcbb0e5e67946              # double 7.4489169999999998
	.quad	0x400ace33eff19503              # double 3.3506849999999999
	.quad	0x3ffbbd987c6327ee              # double 1.7337880000000001
	.quad	0x401978c6d612c6ac              # double 6.3679459999999999
	.quad	0x401d581c714fce74              # double 7.3360459999999996
	.quad	0x4021541e7967caea              # double 8.6642949999999992
	.quad	0x3ff009c5e6ff7dfa              # double 1.002386
	.quad	0x3fdd5e4e69f05ea2              # double 0.45888099999999998
	.quad	0x4018490de093532e              # double 6.0713419999999996
	.quad	0x40070fd2a62aa194              # double 2.8827259999999999
	.quad	0x4021598201cd5f9a              # double 8.6748200000000004
	.quad	0x40167052d666a982              # double 5.6096909999999998
	.quad	0x402099f03d145d85              # double 8.3006609999999998
	.quad	0x40122069e7fb267c              # double 4.5316539999999996
	.quad	0x4022ae878fabda0e              # double 9.340878
	.quad	0x40195f0aa21a719b              # double 6.3428139999999997
	.quad	0x40001f394b7b2895              # double 2.0152459999999999
	.quad	0x3fe9033e78e1932d              # double 0.78164599999999995
	.quad	0x4023f7991bc55864              # double 9.9835899999999995
	.quad	0x40210656473471f8              # double 8.5123770000000007
	.quad	0x4005ec2c5e2cdc01              # double 2.7403189999999999
	.quad	0x401f4e453d20f2bf              # double 7.8264360000000001
	.quad	0x4005d1116a8b8f15              # double 2.7270840000000001
	.quad	0x4023cbdab5c39bcc              # double 9.8981530000000006
	.quad	0x401e33f9a49c2c1b              # double 7.5507569999999999
	.quad	0x4014b3c81908e582              # double 5.1755680000000002
	.quad	0x4022492a94ff0026              # double 9.1429030000000004
	.quad	0x4012f192641b328b              # double 4.7359099999999996
	.quad	0x401ef63f572de43f              # double 7.7404760000000001
	.quad	0x401f03929ed3953e              # double 7.7534890000000001
	.quad	0x4017f7ff9b56323c              # double 5.9921860000000002
	.quad	0x3ff7f61bb05faebc              # double 1.4975849999999999
	.quad	0x401e6225b749adc9              # double 7.595847
	.quad	0x4020307faa044ae8              # double 8.0947239999999994
	.quad	0x401a6f87f023e9ea              # double 6.6089169999999999
	.quad	0x401be47a9e2bcf92              # double 6.9731240000000003
	.quad	0x401015ab3aabcd79              # double 4.0211610000000002
	.quad	0x4022e5b24e9c4546              # double 9.4486260000000009
	.quad	0x401f6fe0ce0b912e              # double 7.8592560000000002
	.quad	0x401533a96d4c33b5              # double 5.3004509999999998
	.quad	0x4013d7318fc50481              # double 4.9601499999999996
	.quad	0x401ce182ecaeea64              # double 7.2202260000000003
	.quad	0x400fef31b152f3c3              # double 3.9917940000000001
	.quad	0x401981ab8e8ea39c              # double 6.3766309999999997
	.quad	0x40166657fb69984a              # double 5.599945
	.quad	0x401f112e40852b4e              # double 7.7667780000000004
	.quad	0x4012e90bc7b45f18              # double 4.7275840000000002
	.quad	0x401e2e5604189375              # double 7.5452500000000002
	.quad	0x3feea88ace24bba1              # double 0.95807399999999998
	.quad	0x3ff3ba7b9170d62c              # double 1.233028
	.quad	0x3ff1625fa658c4bd              # double 1.086517
	.quad	0x401c5c0010c6f7a1              # double 7.0898440000000003
	.quad	0x3ffe9e646f156191              # double 1.91367
	.quad	0x40176b13165d3997              # double 5.854565
	.quad	0x400917e56473471f              # double 3.1366679999999998
	.quad	0x40238830e3cd9a52              # double 9.7659979999999997
	.quad	0x40060d7060bb2bbb              # double 2.7565620000000002
	.quad	0x4020ddf0f5a1016d              # double 8.4334790000000002
	.quad	0x4021fa1c8a7a41e5              # double 8.9884989999999991
	.quad	0x3ff798d36b4c7f35              # double 1.4748110000000001
	.quad	0x40201a4399b2c40d              # double 8.0512969999999999
	.quad	0x40006c9d9d3458cd              # double 2.0530349999999999
	.quad	0x401867a1c25d0742              # double 6.1012029999999999
	.quad	0x400153a8a3f8982d              # double 2.1658490000000001
	.quad	0x401cf4a48f96e158              # double 7.2389089999999996
	.quad	0x400bd99cbee807bc              # double 3.4812560000000001
	.quad	0x40127e40852b4d8c              # double 4.6232930000000003
	.quad	0x3ff6fc49fd7a13c2              # double 1.4365939999999999
	.quad	0x3fe96d8904f6dfc6              # double 0.79462100000000002
	.quad	0x401bd1b8aa00192a              # double 6.9548059999999996
	.quad	0x40086ed99cbee808              # double 3.0541260000000001
	.quad	0x4015aa4228997c3d              # double 5.4162679999999996
	.quad	0x40227f31f46ed246              # double 9.2484280000000005
	.quad	0x401cf39f340d4dc6              # double 7.2379119999999997
	.quad	0x402250afc47e49b2              # double 9.157591
	.quad	0x400cb09e12a51e32              # double 3.586239
	.quad	0x401a836cdf266ba5              # double 6.6283450000000004
	.quad	0x4008ea5482385404              # double 3.1144189999999998
	.quad	0x3ffc519157abb880              # double 1.769914
	.quad	0x400cf06f69446738              # double 3.6173999999999999
	.quad	0x4011c1897a67a52b              # double 4.4390010000000002
	.quad	0x40118694467381d8              # double 4.3814250000000001
	.quad	0x4020f35e95b78cca              # double 8.4753310000000006
	.quad	0x40136a33bd9cae21              # double 4.8537129999999999
	.quad	0x40235e4c2f837b4a              # double 9.6841749999999998
	.quad	0x401563faf42784a9              # double 5.3476369999999998
	.quad	0x401877268d32830a              # double 6.116358
	.quad	0x402136cb5350092d              # double 8.6070200000000003
	.quad	0x401a9db0142f61ed              # double 6.6539919999999997
	.quad	0x4022ae731d2e0e30              # double 9.3407219999999995
	.quad	0x3ffe1fa76534373f              # double 1.882728
	.quad	0x402257dd44135547              # double 9.1716099999999994
	.quad	0x40221d06fef7c244              # double 9.0566940000000002
	.quad	0x401a457d9dba908a              # double 6.5678619999999999
	.quad	0x40183a8262456f76              # double 6.0571380000000001
	.quad	0x401deb2f661f18ca              # double 7.479673
	.quad	0x3fd05f5275ee99a6              # double 0.25581799999999999
	.quad	0x4011d769a91105e2              # double 4.4603640000000002
	.quad	0x4007ee2867275686              # double 2.9912879999999999
	.quad	0x4009a1f85d744f5d              # double 3.2040869999999999
	.quad	0x3faf2367e414e7ef              # double 0.060817000000000003
	.quad	0x4008f6134ce3de61              # double 3.1201539999999999
	.quad	0x401826d8b1dd5d3e              # double 6.0379360000000002
	.quad	0x3fe78dc55000c954              # double 0.73605600000000004
	.quad	0x3ffc72d3c792d128              # double 1.7780339999999999
	.quad	0x4018586a8fc0d2c4              # double 6.0863440000000004
	.quad	0x3ffd1cf0307f23cd              # double 1.8195650000000001
	.quad	0x4010412dba4d6e48              # double 4.0636510000000001
	.quad	0x3fe76cc814d7279a              # double 0.73202900000000004
	.quad	0x40010c575c0767d3              # double 2.1310259999999999
	.quad	0x40136790fb65668c              # double 4.8511389999999999
	.quad	0x40173bf0995aaf79              # double 5.808535
	.quad	0x40214148dc11e42e              # double 8.6275089999999999
	.quad	0x4016f734f82f5126              # double 5.7414129999999997
	.quad	0x401bafc9795b35b1              # double 6.9216670000000002
	.quad	0x3fe9a25d8d79d0a6              # double 0.80106999999999995
	.quad	0x401e694ee392e1ef              # double 7.6028399999999995
	.quad	0x3fd1edaa92e62132              # double 0.28013100000000002
	.quad	0x4019d97e56473472              # double 6.462396
	.quad	0x401465c8d9f9053a              # double 5.099399
	.quad	0x3fc43076c050bd88              # double 0.15772900000000001
	.quad	0x3ff1f7cbb3c81909              # double 1.122997
	.quad	0x3ff69f4d37c1376d              # double 1.4138919999999999
	.quad	0x4021f48626f60e0f              # double 8.9775860000000005
	.quad	0x4011be26d4801f75              # double 4.4356949999999999
	.quad	0x400bc4e26d4801f7              # double 3.4711349999999999
	.quad	0x40232477dd872f34              # double 9.5712270000000003
	.quad	0x4010cd477bbf93ff              # double 4.2004679999999999
	.quad	0x4022c224edf61240              # double 9.3791879999999991
	.quad	0x4017770ef566490a              # double 5.8662679999999998
	.quad	0x40184d117b5286b6              # double 6.0752620000000004
	.quad	0x3fcf0ee49f51697f              # double 0.242642
	.quad	0x3fef14f26aec0725              # double 0.97130700000000003
	.quad	0x4019fa4f440af1cc              # double 6.4944430000000004
	.quad	0x3fc24ece9a2c6690              # double 0.14302999999999999
	.quad	0x3ff2ab0318b9346a              # double 1.1667510000000001
	.quad	0x400e347f993d5348              # double 3.7756340000000002
	.quad	0x40190867ad8e4324              # double 6.2582079999999998
	.quad	0x4011cbfdb4cc2507              # double 4.4492099999999999
	.quad	0x4012259146e4c0df              # double 4.5366869999999997
	.quad	0x40079f127f5e84f1              # double 2.9526720000000002
	.quad	0x401013d96638433d              # double 4.0193839999999996
	.quad	0x3fe5760e0eb67c28              # double 0.67066099999999995
	.quad	0x3fd55f88fc9363f5              # double 0.33395599999999998
	.quad	0x401946defc7a3982              # double 6.31921
	.quad	0x4023398244e93e1d              # double 9.6123220000000006
	.quad	0x3ff25475a31a4bdc              # double 1.1456200000000001
	.quad	0x4004c5e3da2f8bdf              # double 2.5966260000000001
	.quad	0x4007e877ee4e26d5              # double 2.9885100000000002
	.quad	0x401c6abcd78c4370              # double 7.1042360000000002
	.quad	0x4001a1dfb9389b52              # double 2.20404
	.quad	0x4004bb0dd82fd75e              # double 2.5913349999999999
	.quad	0x40173cb81733226c              # double 5.8092959999999998
	.quad	0x401322c386d2ed78              # double 4.7839489999999998
	.quad	0x40203976ddaceee1              # double 8.1122350000000001
	.quad	0x401e17ee4e26d480              # double 7.5233699999999999
	.quad	0x3ffd69a2c669057d              # double 1.83829
	.quad	0x401fbb71fbc5de9c              # double 7.933052
	.quad	0x3fffb893faf42785              # double 1.9825630000000001
	.quad	0x4023f91d14e3bcd3              # double 9.9865499999999993
	.quad	0x401c8ee286727568              # double 7.1395359999999997
	.quad	0x40225fb7414a4d2b              # double 9.1869449999999997
	.quad	0x4013e1ce28ed5f14              # double 4.9705130000000004
	.quad	0x3ff08964628027d9              # double 1.0335430000000001
	.quad	0x3ff51454152b0a70              # double 1.3174630000000001
	.quad	0x4015833b5393250b              # double 5.3781559999999997
	.quad	0x40228a2a2c237479              # double 9.2698529999999995
	.quad	0x3ff896a9c560c7c1              # double 1.536783
	.quad	0x40110ad03d9a9542              # double 4.2605599999999999
	.quad	0x4005afe154434e33              # double 2.7108789999999998
	.quad	0x401a948a58b3f63c              # double 6.6450589999999998
	.quad	0x401aa42f61ed5ae2              # double 6.6603370000000002
	.quad	0x4015a4cad57bc7f7              # double 5.4109299999999996
	.quad	0x4021d0296b3354c1              # double 8.9065659999999998
	.quad	0x4012ed5885d31338              # double 4.7317830000000001
	.quad	0x3fd364020817fc76              # double 0.302979
	.quad	0x401be471715c63ae              # double 6.9730889999999999
	.quad	0x402003ae03b3e9a7              # double 8.0071870000000001
	.quad	0x4008002c0a4a05de              # double 3.0000840000000002
	.quad	0x4023ea1e3eaf6838              # double 9.957262
	.quad	0x3fdc8cda6e75ff61              # double 0.44609700000000002
	.quad	0x401f8221426fe719              # double 7.8770800000000003
	.quad	0x3ff292f1a9fbe76d              # double 1.1608750000000001
	.quad	0x4022f793dd97f62b              # double 9.4835499999999992
	.quad	0x40211aea52ef911d              # double 8.5525690000000001
	.quad	0x401bac044284dfce              # double 6.9179849999999998
	.quad	0x401ccfb224aada34              # double 7.2028280000000002
	.quad	0x40227bead4f5903a              # double 9.2420259999999992
	.quad	0x4007083e425aee63              # double 2.8790249999999999
	.quad	0x401d6d6d3b6cbd98              # double 7.3568619999999995
	.quad	0x400e48900c521dda              # double 3.785431
	.quad	0x40223ba9d1f60179              # double 9.1165299999999991
	.quad	0x3ff6d2e72da122fb              # double 1.42649
	.quad	0x4022961198aeb80f              # double 9.2931030000000003
	.quad	0x3fb7253da72a7bd5              # double 0.090412000000000006
	.quad	0x4016d16d2aa5c5f8              # double 5.7045180000000002
	.quad	0x401cfa5870da5daf              # double 7.244478
	.quad	0x401579e90795f677              # double 5.3690530000000001
	.quad	0x3ff21e00d1b71759              # double 1.132325
	.quad	0x400c32cc70867ad9              # double 3.524804
	.quad	0x401a370b49e01de2              # double 6.5537539999999996
	.quad	0x40041d5885d31338              # double 2.514329
	.quad	0x4019d544bb1af3a1              # double 6.4582699999999997
	.quad	0x400c84a515ce9e5e              # double 3.5647679999999999
	.quad	0x400b66b6177ea1c7              # double 3.4251520000000002
	.quad	0x4020a1e6ab9b23dd              # double 8.3162129999999994
	.quad	0x400f4e874c8ffb8b              # double 3.9133439999999999
	.quad	0x3ff7a1d10b1feeb3              # double 1.477006
	.quad	0x401236b6e0d23d4f              # double 4.5534319999999999
	.quad	0x4018a666234a87e4              # double 6.1624990000000004
	.quad	0x3ffb275ff609dcf9              # double 1.6971130000000001
	.quad	0x3fe456494d50ebab              # double 0.63553300000000001
	.quad	0x401edf72f76e6107              # double 7.7182120000000002
	.quad	0x3ffd32085b18548b              # double 1.8247150000000001
	.quad	0x4020e7adafd11383              # double 8.4524969999999993
	.quad	0x400f86b6177ea1c7              # double 3.9407770000000002
	.quad	0x4000be603d577964              # double 2.0929570000000002
	.quad	0x40181b3e9a6f826f              # double 6.0266060000000001
	.quad	0x3ff1124d099e0e73              # double 1.0669679999999999
	.quad	0x4005015097c80842              # double 2.625642
	.quad	0x40065104d551d68c              # double 2.7895599999999998
	.quad	0x402191ec7000431c              # double 8.7850070000000002
	.quad	0x4019f4a7b4e54f7b              # double 6.4889210000000004
	.quad	0x3ff11f17bd8be729              # double 1.0700909999999999
	.quad	0x4023746cdaf4adbc              # double 9.7273929999999992
	.quad	0x401823868fd199bb              # double 6.0346929999999999
	.quad	0x4017eec28b2a6b0e              # double 5.9831640000000004
	.quad	0x401dcbc382a12f90              # double 7.4489879999999999
	.quad	0x4013cac29bf162ae              # double 4.9480079999999997
	.quad	0x400004f97edc7ef1              # double 2.0024289999999998
	.quad	0x3ffdea51e321a2e8              # double 1.869707
	.quad	0x401aa5796bfca85d              # double 6.6615960000000003
	.quad	0x40201ad16b97fe8f              # double 8.0523790000000002
	.quad	0x400d308c3f3e0371              # double 3.6487050000000001
	.quad	0x4023676d7625204b              # double 9.702007
	.quad	0x400e37995ee136e7              # double 3.7771479999999999
	.quad	0x3fccef566490a351              # double 0.226054
	.quad	0x40097f9bdc69f8c2              # double 3.1873089999999999
	.quad	0x401312be48a58b3f              # double 4.7683039999999997
	.quad	0x40226db18548a9bd              # double 9.214245
	.quad	0x401221ac14c660a2              # double 4.532883
	.quad	0x4022e38f36694899              # double 9.444452
	.quad	0x3fed8333fc86cebc              # double 0.92226600000000003
	.quad	0x40212ec1c1d6cf85              # double 8.5913219999999999
	.quad	0x3ffe743b70ef5665              # double 1.9033770000000001
	.quad	0x3ff03a797891e215              # double 1.014276
	.quad	0x3fec0537e2c55c96              # double 0.875637
	.quad	0x401a25d3dc8b86b1              # double 6.5369409999999997
	.quad	0x4022efb3d8e00086              # double 9.4681689999999996
	.quad	0x400a9c886162f167              # double 3.3264320000000001
	.quad	0x4014d1e364bec67a              # double 5.2049690000000002
	.quad	0x401594b124d099e1              # double 5.3952070000000001
	.quad	0x4013dca4b124d09a              # double 4.9654720000000001
	.quad	0x3ffb389f83be6602              # double 1.7013240000000001
	.quad	0x40178ab25b317efe              # double 5.885446
	.quad	0x3ffaa84f09528f19              # double 1.666091
	.quad	0x3fe814b599aa6091              # double 0.75252799999999997
	.quad	0x4020faacd9e83e42              # double 8.4895999999999994
	.quad	0x4010fd96a6a0125a              # double 4.2476450000000003
	.quad	0x4019018372e6a769              # double 6.2514779999999996
	.quad	0x401d674ff865d7cb              # double 7.3508909999999998
	.quad	0x40100ff540895d0b              # double 4.0155839999999996
	.quad	0x4006e5ffa3b9ae0c              # double 2.862304
	.quad	0x3fc5bd72bcb5fe54              # double 0.16984399999999999
	.quad	0x40066af709b738e7              # double 2.8022290000000001
	.quad	0x40115c2bd7f51efb              # double 4.3400109999999996
	.quad	0x3ff9526d8b1dd5d4              # double 1.582624
	.quad	0x3ff26e2da554b8bf              # double 1.151899
	.quad	0x4023a809b30728e9              # double 9.8281989999999996
	.quad	0x3ff69db5525cc426              # double 1.413503
	.quad	0x40122fe154434e33              # double 4.5467579999999996
	.quad	0x3ff38b2b777d0f1f              # double 1.2214769999999999
	.quad	0x401c10ce0b912dba              # double 7.0164109999999997
	.quad	0x40050a63305100a4              # double 2.6300720000000002
	.quad	0x40228f1b47842310              # double 9.2795050000000003
	.quad	0x4014482dbe7f2c30              # double 5.070487
	.quad	0x401a6c25d074213a              # double 6.605613
	.quad	0x40176c8ffb8b2639              # double 5.8560179999999997
	.quad	0x4020aa6d4801f751              # double 8.332865
	.quad	0x3fe9589efd86a8fc              # double 0.79206799999999999
	.quad	0x402217661f18c9fb              # double 9.0457009999999993
	.quad	0x3f58e757928e0c9e              # double 0.0015200000000000001
	.quad	0x40170d2b2bfdb4cc              # double 5.7628599999999999
	.quad	0x4013657214f0520d              # double 4.8490679999999999
	.quad	0x4022a96db0dd82fd              # double 9.3309149999999992
	.quad	0x40235f70de8f6cf0              # double 9.6864080000000001
	.quad	0x4017887442c7fbad              # double 5.8832560000000003
	.quad	0x400d8b72c5197a25              # double 3.6930900000000002
	.quad	0x400998958d9b5e96              # double 3.1995040000000001
	.quad	0x40191fe9fadafd11              # double 6.2811659999999998
	.quad	0x401f2a16616b54e3              # double 7.7911010000000002
	.quad	0x3feedb3397dd00f7              # double 0.96425799999999994
	.quad	0x4021c57c2ca148bb              # double 8.8857130000000009
	.quad	0x40103636b0963561              # double 4.052943
	.quad	0x4016156b441bb8c3              # double 5.5209169999999999
	.quad	0x4022f9f75104d552              # double 9.4882150000000003
	.quad	0x3ffd6c93a7115161              # double 1.839008
	.quad	0x402399a4bdba0a52              # double 9.8000849999999993
	.quad	0x4010c2a8c9b84556              # double 4.1900969999999997
	.quad	0x402285c9c4da9004              # double 9.2613050000000001
	.quad	0x3ffbe63b688bda94              # double 1.743709
	.quad	0x4019411a11233df3              # double 6.3135760000000003
	.quad	0x401ccfd694ccab3f              # double 7.2029670000000001
	.quad	0x40023c64ba94bbe4              # double 2.2794889999999999
	.quad	0x40030b93ccd0fe8b              # double 2.3806530000000001
	.quad	0x4015282adc4c9c91              # double 5.2892260000000002
	.quad	0x401a1b823c85c24c              # double 6.5268639999999998
	.quad	0x3ff04a1cef240faa              # double 1.0180940000000001
	.quad	0x3fe3e71cda2b5a21              # double 0.62196200000000001
	.quad	0x3fcdc83a96d4c33b              # double 0.23267299999999999
	.quad	0x3fdff7be121ee675              # double 0.499496
	.quad	0x40212d78811b1d93              # double 8.5888100000000005
	.quad	0x40061b2aae297397              # double 2.7632650000000001
	.quad	0x40219becedd48451              # double 8.8045419999999996
	.quad	0x40216cf6be37de94              # double 8.7128200000000006
	.quad	0x401eaedb2f661f19              # double 7.6707580000000001
	.quad	0x4012875147f13059              # double 4.6321459999999997
	.quad	0x4011c0d0678c0054              # double 4.4382950000000001
	.quad	0x40211f6dfc5cdd51              # double 8.5613860000000006
	.quad	0x4022adcb9a9da598              # double 9.3394440000000003
	.quad	0x3ffa12ccf6be37df              # double 1.6295900000000001
	.quad	0x4014c30fcf80dc33              # double 5.1904899999999996
	.quad	0x4018d79357603926              # double 6.2105230000000002
	.quad	0x401857d4e09784ec              # double 6.0857729999999997
	.quad	0x401105992428d435              # double 4.2554670000000003
	.quad	0x40115a24463065f9              # double 4.3380289999999997
	.quad	0x3fdad19dece57109              # double 0.41904400000000003
	.quad	0x401cd2517e77d524              # double 7.2053890000000003
	.quad	0x40141a0d77b7c782              # double 5.025442
	.quad	0x4000c999dcb5781c              # double 2.0984379999999998
	.quad	0x4020580f12c27a63              # double 8.1719899999999992
	.quad	0x40050a47ecfe9b7c              # double 2.63002
	.quad	0x3ff975dfeb8d8234              # double 1.591278
	.quad	0x401a798c7e28240b              # double 6.6186999999999996
	.quad	0x4013fcc63f141206              # double 4.9968500000000002
	.quad	0x40110eb356da0169              # double 4.2643560000000003
	.quad	0x3fe5a38b8ae31d71              # double 0.67621399999999998
	.quad	0x401ff5610adcd2d4              # double 7.9896279999999997
	.quad	0x40172ab92c061848              # double 5.791722
	.quad	0x400350bc7b45f17c              # double 2.4144220000000001
	.quad	0x401bb71a3b14a904              # double 6.9288109999999996
	.quad	0x4000e3c18b502abb              # double 2.1112090000000001
	.quad	0x3ffe7f1737542a24              # double 1.9060280000000001
	.quad	0x402156351deefe50              # double 8.668374
	.quad	0x4016d68448cf7caa              # double 5.7094889999999996
	.quad	0x4022dcbec679cc75              # double 9.4311430000000004
	.quad	0x40180765ba6efc37              # double 6.0072239999999999
	.quad	0x4017ed19157abb88              # double 5.981541
	.quad	0x401711e7d9988d2a              # double 5.7674859999999999
	.quad	0x401db728a6117721              # double 7.4288660000000002
	.quad	0x4022e055da272863              # double 9.438155
	.quad	0x4011e6e0d23d4f16              # double 4.4754670000000001
	.quad	0x40214dbc87db2b34              # double 8.6518289999999993
	.quad	0x4021873bea91d9b2              # double 8.7641290000000005
	.quad	0x40115164c729f59d              # double 4.3294860000000002
	.quad	0x4012cc925785f8d3              # double 4.6997770000000001
	.quad	0x4009b6683c297bfa              # double 3.2140659999999999
	.quad	0x3fe34ac8e68e3ef3              # double 0.60287900000000005
	.quad	0x3ff710b1feeb2d0a              # double 1.441576
	.quad	0x40197a88effe2a3d              # double 6.3696630000000001
	.quad	0x4004b9c8c9320d99              # double 2.5907149999999999
	.quad	0x3fb4dd3fe1975f2d              # double 0.081501000000000004
	.quad	0x400348ba83f4eca7              # double 2.4105120000000002
	.quad	0x401d51da7b0b3919              # double 7.3299349999999999
	.quad	0x400cfbafd976ff3b              # double 3.6228940000000001
	.quad	0x3fe2da2b5a20ddc6              # double 0.58913199999999999
	.quad	0x401aae093532e7b4              # double 6.6699570000000001
	.quad	0x4016be73e681a9b9              # double 5.6859890000000002
	.quad	0x3ffa402c0a4a05de              # double 1.6406670000000001
	.quad	0x401ab0b0af5fd47c              # double 6.6725490000000001
	.quad	0x3ff9a2d948dc11e4              # double 1.602258
	.quad	0x4023b2d1f1cfbb95              # double 9.8492580000000007
	.quad	0x3fffb395c4220360              # double 1.981344
	.quad	0x401706df3f961805              # double 5.7567110000000001
	.quad	0x3fba95e9e1b089a0              # double 0.10385
	.quad	0x4015831769a91106              # double 5.3780190000000001
	.quad	0x4008d1b691212514              # double 3.1023990000000001
	.quad	0x401c2d976ff3ade2              # double 7.0445229999999999
	.quad	0x3ffbbf24d8fd5cb8              # double 1.7341660000000001
	.quad	0x402278ca600b0293              # double 9.2359190000000009
	.quad	0x4014239a38fbca10              # double 5.0347679999999997
	.quad	0x40231d9f6ec5b079              # double 9.5578570000000002
	.quad	0x4013e3fc0096feb5              # double 4.9726410000000003
	.quad	0x3fa7965b20b8066c              # double 0.046068999999999999
	.quad	0x40098b26bf8769ec              # double 3.1929449999999999
	.quad	0x3fd306b7aa25d8d8              # double 0.29728500000000002
	.quad	0x4021e8a9bcfd4bf1              # double 8.9544200000000007
	.quad	0x4007ff9e7b80a9df              # double 2.9998140000000002
	.quad	0x3fe562328f9f44d4              # double 0.66823699999999997
	.quad	0x402051a6937d1fe6              # double 8.1594739999999994
	.quad	0x401d099524bfd2e9              # double 7.2593579999999998
	.quad	0x401b5a63b688bda9              # double 6.8382709999999998
	.quad	0x4021e630ec311623              # double 8.9495920000000009
	.quad	0x3fd7bdd334c5da6a              # double 0.37096099999999999
	.quad	0x4020aa630ec31162              # double 8.3327869999999997
	.quad	0x4000b8a009f62307              # double 2.0901489999999998
	.quad	0x3ff05c7de5082cf5              # double 1.022581
	.quad	0x401d65bb7b6bb129              # double 7.349348
	.quad	0x4012a5fe974a3401              # double 4.6621040000000002
	.quad	0x4007e3f24d8fd5cb              # double 2.9863019999999998
	.quad	0x40074e6ea8544780              # double 2.913297
	.quad	0x4014aed45e9185cf              # double 5.1707320000000001
	.quad	0x3fee8f1f57b41bfc              # double 0.95497100000000001
	.quad	0x40143d173fb7a5f4              # double 5.0596589999999999
	.quad	0x3fe999c9d5a187a5              # double 0.80002300000000004
	.quad	0x4021cfc6540cc78f              # double 8.9058100000000007
	.quad	0x401e269a0ad8a116              # double 7.5376969999999996
	.quad	0x4022a12e40852b4e              # double 9.3148060000000008
	.quad	0x3ff366d58c8eef1c              # double 1.2126060000000001
	.quad	0x4003edea033e78e2              # double 2.4911690000000002
	.quad	0x401752a0663c74fb              # double 5.8306899999999997
	.quad	0x400d1e5321e603d5              # double 3.6398069999999998
	.quad	0x4014d35371971c11              # double 5.2063730000000001
	.quad	0x401f74d7f0ed3d86              # double 7.8641050000000003
	.quad	0x400956199780baa6              # double 3.1670410000000002
	.quad	0x4017e6c61522a6f4              # double 5.975365
	.quad	0x40231682949a5658              # double 9.543965
	.quad	0x4001a534bd76ee74              # double 2.205667
	.quad	0x40037bad3a604e1e              # double 2.4353889999999998
	.quad	0x401691d68c692f6f              # double 5.6424200000000004
	.quad	0x401164806290eed0              # double 4.3481459999999998
	.quad	0x4016007b784662bb              # double 5.5004710000000001
	.quad	0x4011fb256ffc115e              # double 4.49526
	.quad	0x4004bf748a159818              # double 2.5934840000000001
	.quad	0x402357ee0b0af5fd              # double 9.6717379999999995
	.quad	0x400fa4463065f959              # double 3.955212
	.quad	0x401ff5f30e7ff584              # double 7.9901850000000003
	.quad	0x4018ed4d834091c1              # double 6.2317410000000004
	.quad	0x400c6639d5e4a383              # double 3.5499149999999999
	.quad	0x4020dc24e5929670              # double 8.4299689999999998
	.quad	0x4021723bddfc9ff9              # double 8.7231129999999997
	.quad	0x40203534373f316e              # double 8.1039139999999996
	.quad	0x4010a51c9f72f76e              # double 4.1612419999999997
	.quad	0x400a44a6a875d56f              # double 3.2835209999999999
	.quad	0x40030c1a8ac5c140              # double 2.3809100000000001
	.quad	0x4023240c8472c0e8              # double 9.5704080000000004
	.quad	0x40234103a7546d40              # double 9.6269810000000006
	.quad	0x3fc387b56b873797              # double 0.15257899999999999
	.quad	0x4014958f7121ab4b              # double 5.1460549999999996
	.quad	0x3ff90cb07d0aed9a              # double 1.565598
	.quad	0x3ffea33eff195033              # double 1.914855
	.quad	0x401a613b5bf6a0dc              # double 6.5949530000000003
	.quad	0x3fe26631f8a0902e              # double 0.57497500000000001
	.quad	0x40207ca01abd1aa8              # double 8.2434089999999998
	.quad	0x40218e92923e5b85              # double 8.7784619999999993
	.quad	0x40083c6088d6d3b7              # double 3.0294810000000001
	.quad	0x4021ac178705425f              # double 8.8361169999999998
	.quad	0x3fd3723ee1bd1eda              # double 0.30384800000000001
	.quad	0x401a62b94d940789              # double 6.5964099999999997
	.quad	0x401d284449dbec25              # double 7.2893230000000004
	.quad	0x40208eb7457c0b13              # double 8.2787419999999994
	.quad	0x3ff11bc23315d702              # double 1.069277
	.quad	0x40039d640e9d51b5              # double 2.451851
	.quad	0x40213a7fe4bcad9b              # double 8.6142570000000003
	.quad	0x40178593a2df9379              # double 5.8804460000000001
	.quad	0x4002a0c308feac43              # double 2.328497
	.quad	0x4018b4a16a487336              # double 6.1763969999999997
	.quad	0x40203d6dc1a47a9e              # double 8.1199779999999997
	.quad	0x401a65a469d7342f              # double 6.5992600000000001
	.quad	0x40205276fb09203a              # double 8.1610639999999997
	.quad	0x3fd88c436fc158fb              # double 0.38356099999999999
	.quad	0x4020fc8cf7caa759              # double 8.4932630000000007
	.quad	0x40009d7dbf487fcc              # double 2.0769000000000002
	.quad	0x401fafd47bedb728              # double 7.9217089999999998
	.quad	0x400a5eaee2003ab8              # double 3.2962319999999998
	.quad	0x401a6a46e08f2171              # double 6.6037860000000004
	.quad	0x4014773c0c1fc8f3              # double 5.1164399999999999
	.quad	0x400c7342edbb59de              # double 3.5562800000000001
	.quad	0x400fc22ee41919ac              # double 3.9698159999999998
	.quad	0x4021f4e4217d284a              # double 8.9783030000000004
	.quad	0x4022ce872b020c4a              # double 9.4033750000000005
	.quad	0x4016c9cc319c5a3e              # double 5.6970679999999998
	.quad	0x402334471b478423              # double 9.6021049999999998
	.quad	0x4000187ce95faa8b              # double 2.0119570000000002
	.quad	0x40073e32a0663c75              # double 2.90537
	.quad	0x4001938476f2a5a4              # double 2.1970299999999998
	.quad	0x3ff926c6de76427c              # double 1.5719669999999999
	.quad	0x40210b1960fa15db              # double 8.5216779999999996
	.quad	0x40224783be6601bd              # double 9.1396770000000007
	.quad	0x4012d069a4df47fa              # double 4.7035280000000004
	.quad	0x401cbcad9ad85dfb              # double 7.1842560000000004
	.quad	0x40041f7e80389f84              # double 2.5153780000000001
	.quad	0x4015a5af6c69b5a6              # double 5.4118019999999998
	.quad	0x3ff48b662fdfc19c              # double 1.284033
	.quad	0x4019ca68b19a415f              # double 6.4476649999999998
	.quad	0x401c2437c5692b3d              # double 7.0353690000000002
	.quad	0x4015ae6f2e8c0486              # double 5.4203460000000003
	.quad	0x401f710e02214270              # double 7.8604050000000001
	.quad	0x4006626edaa92e62              # double 2.798063
	.quad	0x3fcc60242d05f288              # double 0.22168399999999999
	.quad	0x400703e9ea140571              # double 2.8769110000000002
	.quad	0x4020d00d3cff64d0              # double 8.4063510000000008
	.quad	0x4022518d477bbf94              # double 9.159281
	.quad	0x3ff448fc9363f573              # double 1.267819
	.quad	0x401b3f4491298890              # double 6.8117850000000004
	.quad	0x40018e297396d091              # double 2.1944149999999998
	.quad	0x401ed14983d79075              # double 7.7043819999999998
	.quad	0x4023d002e2328f9f              # double 9.9062719999999995
	.quad	0x400c4e06d938151a              # double 3.5380989999999999
	.quad	0x4004f774256bca53              # double 2.6208269999999998
	.quad	0x4023ac38d1d8a548              # double 9.8363709999999997
	.quad	0x4011bbb4916ca46e              # double 4.433306
	.quad	0x4014fcd8dbcec850              # double 5.2469210000000004
	.quad	0x4015093c89f40a28              # double 5.2590199999999996
	.quad	0x4023e62e4d1a6506              # double 9.9495719999999999
	.quad	0x4016694d94078961              # double 5.6028349999999998
	.quad	0x400e995bbbe878fb              # double 3.8248820000000001
	.quad	0x3fe7f7164c729f5a              # double 0.74891200000000002
	.quad	0x40201827b6fe2e6f              # double 8.0471780000000006
	.quad	0x3ffdd3cff64cf8d7              # double 1.864212
	.quad	0x40035a1986b9c305              # double 2.4189940000000001
	.quad	0x3ff66113404ea4a9              # double 1.3987000000000001
	.quad	0x4016a71c10d7be98              # double 5.6631929999999997
	.quad	0x401ba3882278d0cc              # double 6.9096989999999998
	.quad	0x3ffc88f10a99b6f6              # double 1.783433
	.quad	0x401739e55c0fcb4f              # double 5.8065389999999999
	.quad	0x4020577ccc037931              # double 8.1708739999999995
	.quad	0x4021fd50a88effe3              # double 8.9947560000000006
	.quad	0x400a8445aa2e3c53              # double 3.3145859999999998
	.quad	0x4016be3a7daa4fca              # double 5.6857699999999998
	.quad	0x401309930be0ded3              # double 4.7593500000000004
	.quad	0x4020108d4bad7d7c              # double 8.0323279999999996
	.quad	0x400751327243137b              # double 2.914647
	.quad	0x401e349ecb31c21a              # double 7.5513870000000001
	.quad	0x4008e05681ecd4aa              # double 3.10954
	.quad	0x401db7674d163348              # double 7.4291049999999998
	.quad	0x401b940af1cb89d7              # double 6.8945730000000003
	.quad	0x40016ccee5abc0e4              # double 2.1781290000000002
	.quad	0x401c67913e81450f              # double 7.10114
	.quad	0x4023dcf8b588e369              # double 9.9315850000000001
	.quad	0x401d825a682b6284              # double 7.3772979999999997
	.quad	0x3ff3f23dd54da4cf              # double 1.2466410000000001
	.quad	0x3ff040fecdd0d8cb              # double 1.015868
	.quad	0x4008a16d6dc1a47b              # double 3.0788220000000002
	.quad	0x4022687f23cc8de3              # double 9.2040950000000006
	.quad	0x401d474e65bea0ba              # double 7.3196349999999999
	.quad	0x4012b96c82e019b1              # double 4.6810780000000003
	.quad	0x401c379fec99f1ae              # double 7.0543209999999998
	.quad	0x401b9a68f4b61fe2              # double 6.9007909999999999
	.quad	0x40181a88ace24bba              # double 6.0259119999999999
	.quad	0x4022a357e670e2c1              # double 9.3190299999999997
	.quad	0x40203ec69b5a63fa              # double 8.1226090000000006
	.quad	0x4014414488c60cbf              # double 5.0637379999999999
	.quad	0x40177e670e2c12ae              # double 5.8734400000000004
	.quad	0x400dfbcec84f8f8a              # double 3.7479529999999999
	.quad	0x40217370cdc8754f              # double 8.7254699999999996
	.quad	0x3fcdb46fdeb52c9d              # double 0.232069
	.quad	0x402275f090f733a9              # double 9.2303510000000006
	.quad	0x3ffdd21682f94424              # double 1.863791
	.quad	0x3ffcf6fc158fb43e              # double 1.8102990000000001
	.quad	0x401eb9f7b5aea316              # double 7.6816089999999999
	.quad	0x400e8a71de69ad43              # double 3.8176000000000001
	.quad	0x4012621dda059a74              # double 4.5958170000000003
	.quad	0x40157b4aec8d5c74              # double 5.3704029999999996
	.quad	0x402373c31df761cc              # double 9.7260980000000003
	.quad	0x3fc9694467381d7e              # double 0.19852500000000001
	.quad	0x400eaf09d8c6d613              # double 3.8354680000000001
	.quad	0x401a41de69ad42c4              # double 6.5643250000000002
	.quad	0x4022f162cfd8f0c7              # double 9.4714569999999991
	.quad	0x40207b9f340d4dc6              # double 8.2414489999999994
	.quad	0x4015c99ed7c6fbd2              # double 5.4468949999999996
	.quad	0x4018d4562e09fe87              # double 6.2073600000000004
	.quad	0x40208d696e58a32f              # double 8.2761949999999995
	.quad	0x3ff589f83be6601c              # double 1.346184
	.quad	0x4006f72474538ef3              # double 2.8706749999999999
	.quad	0x401b32bf11f926c8              # double 6.7995570000000001
	.quad	0x40176b9389b52008              # double 5.8550550000000001
	.quad	0x40046d10f51ac9b0              # double 2.5532550000000001
	.quad	0x4019b41f644955b4              # double 6.4259009999999996
	.quad	0x3ff673f0fe047d3d              # double 1.4033059999999999
	.quad	0x4022f6afcce1c582              # double 9.4818099999999994
	.quad	0x4002af37fbefd007              # double 2.335556
	.quad	0x401f7555c52e72da              # double 7.8645849999999999
	.quad	0x3ff89dfeb8d82342              # double 1.538573
	.quad	0x3fec4914b167ec78              # double 0.88392099999999996
	.quad	0x402100b5cbff4773              # double 8.5013869999999994
	.quad	0x3fb19a1fd1569f49              # double 0.068758
	.quad	0x4020a859a73b42cc              # double 8.3288089999999996
	.quad	0x401c0e931876188b              # double 7.0142329999999999
	.quad	0x400e65dbfceb7889              # double 3.7997359999999998
	.quad	0x401c8e35c5b4aa97              # double 7.1388769999999999
	.quad	0x401e21c970f7b9e0              # double 7.5329949999999997
	.quad	0x3ff198efbb0e5e68              # double 1.0998380000000001
	.quad	0x401272ae4b018612              # double 4.611993
	.quad	0x4011850f840181e0              # double 4.3799419999999998
	.quad	0x3fbc203e63e8dda5              # double 0.10986700000000001
	.quad	0x402329014b599aa6              # double 9.5800879999999999
	.quad	0x3fcb89374bc6a7f0              # double 0.21512500000000001
	.quad	0x401d117df19d66ae              # double 7.2670820000000003
	.quad	0x4003d02ababead4f              # double 2.4766439999999998
	.quad	0x4010d0c1333b96af              # double 4.203862
	.quad	0x40186abf33871609              # double 6.1042449999999997
	.quad	0x401266fac6045baf              # double 4.6005659999999997
	.quad	0x4004337b07075b3e              # double 2.525137
	.quad	0x3ff19eb52c9d16fd              # double 1.1012470000000001
	.quad	0x401b144b2b777d0f              # double 6.7698179999999999
	.quad	0x3fb44d76ab5807ff              # double 0.079307000000000002
	.quad	0x3fd5df8b1572580c              # double 0.34176899999999999
	.quad	0x402008b2a6b0d951              # double 8.0169879999999996
	.quad	0x401143519bd4067d              # double 4.315741
	.quad	0x3fefe43675ddd2af              # double 0.99660800000000004
	.quad	0x400b55653c9abb02              # double 3.4166970000000001
	.quad	0x3ffefa919695d91b              # double 1.9361740000000001
	.quad	0x401311f1cfbb9496              # double 4.7675239999999999
	.quad	0x401b26b6e0d23d4f              # double 6.7878069999999999
	.quad	0x401a807852f7f499              # double 6.6254590000000002
	.quad	0x3fe925614df8b157              # double 0.78581299999999998
	.quad	0x3fe84625e99e94ab              # double 0.75856299999999999
	.quad	0x400a197a24894c44              # double 3.2624399999999998
	.quad	0x4023b41c3efae792              # double 9.8517779999999995
	.quad	0x40232793ff25e56d              # double 9.5773010000000002
	.quad	0x3ff378b1572580c3              # double 1.216966
	.quad	0x3ffe98eeae9ee45c              # double 1.912337
	.quad	0x40205cf483cafb3b              # double 8.1815529999999992
	.quad	0x3fed5e5d18090b41              # double 0.91776899999999995
	.quad	0x4014d631b584b1ab              # double 5.209174
	.quad	0x4010af85510d38ce              # double 4.1714070000000003
	.quad	0x4008cd84d338f798              # double 3.1003509999999999
	.quad	0x3fd8d0cc35ce1826              # double 0.38774399999999998
	.quad	0x40213bb8c32a8c9c              # double 8.6166440000000008
	.quad	0x3fca6a5d6bebe165              # double 0.206371
	.quad	0x40238f14fce746cc              # double 9.7794570000000007
	.quad	0x3ff8104d551d68c7              # double 1.5039800000000001
	.quad	0x402047255f3519bd              # double 8.1389569999999996
	.quad	0x402220bbf50e3476              # double 9.0639339999999997
	.quad	0x402025fa658c4bd3              # double 8.0741759999999996
	.quad	0x400d5f75104d551d              # double 3.6716099999999998
	.quad	0x4016af609dcf8940              # double 5.6712670000000003
	.quad	0x3fdd7e56473471f8              # double 0.46083600000000002
	.quad	0x400fabf8fcd67fd4              # double 3.958971
	.quad	0x3ffd6f20ea5b530d              # double 1.839631
	.quad	0x401ab09289dadfb5              # double 6.672434
	.quad	0x401023c03bc4d22d              # double 4.0349130000000004
	.quad	0x4009cb5568e820e6              # double 3.2242839999999999
	.quad	0x401b31bf7ad4b274              # double 6.7985819999999997
	.quad	0x401d960b2c83ec89              # double 7.3965269999999999
	.quad	0x4018427631b584b2              # double 6.0649040000000003
	.quad	0x402190c23fab10ba              # double 8.7827319999999993
	.quad	0x401106b723ee1bd2              # double 4.2565580000000001
	.quad	0x4015117763e4abe7              # double 5.2670570000000003
	.quad	0x3ffbc4028e4fb97c              # double 1.7353540000000001
	.quad	0x4014daf9a8cdea03              # double 5.2138429999999998
	.quad	0x4016a27a63736cdf              # double 5.6586699999999999
	.quad	0x3fea640c8472c0e8              # double 0.82471300000000003
	.quad	0x3fff5d1e53a81dc1              # double 1.960234
	.quad	0x3ff8a737110e453d              # double 1.540824
	.quad	0x4014afa3fcc9ea9a              # double 5.1715239999999998
	.quad	0x4021e9e4f765fd8b              # double 8.9568250000000003
	.quad	0x401fd7318fc50481              # double 7.9601499999999996
	.quad	0x4002c2a0a958537e              # double 2.3450329999999999
	.quad	0x401ca2aae297396d              # double 7.158855
	.quad	0x400c0372e6a76966              # double 3.501684
	.quad	0x4023cf03f2d3c793              # double 9.9043270000000003
	.quad	0x400bfc13fd0d0679              # double 3.4980850000000001
	.quad	0x4021f0af1cb89d6b              # double 8.9700860000000002
	.quad	0x4022ef225b749add              # double 9.4670590000000007
	.quad	0x40234aa62aa1943a              # double 9.6457990000000002
	.quad	0x40168f2b239a38fc              # double 5.6398130000000002
	.quad	0x40194c33b5393251              # double 6.3244160000000003
	.quad	0x40133973d9ec7000              # double 4.8061059999999998
	.quad	0x3ff46b3bb83cf2d0              # double 1.2761800000000001
	.quad	0x3fe4ea747d805e5f              # double 0.65361999999999998
	.quad	0x401724241c3efae8              # double 5.7852940000000004
	.quad	0x40124579f2346562              # double 4.5678479999999997
	.quad	0x401e19c560c7c0f4              # double 7.5251669999999997
	.quad	0x4021d8f238972043              # double 8.9237230000000007
	.quad	0x400e49057d1782d4              # double 3.7856550000000002
	.quad	0x400a253b8e4b87be              # double 3.2681800000000001
	.quad	0x401d61669ced0b31              # double 7.3451180000000003
	.quad	0x400a95432873bc90              # double 3.3228819999999999
	.quad	0x40131f91600f3450              # double 4.7808279999999996
	.quad	0x3fd34a6a875d56f3              # double 0.30141699999999999
	.quad	0x401ffafff36ac647              # double 7.9951169999999995
	.quad	0x40137fbb9496249a              # double 4.8747389999999999
	.quad	0x3febca925fe974a3              # double 0.86847799999999997
	.quad	0x4014bb499d0203e6              # double 5.1828979999999998
	.quad	0x3ffa79bed30f062d              # double 1.6547229999999999
	.quad	0x4023ac63ae2541d9              # double 9.8366980000000001
	.quad	0x402259680e065300              # double 9.1746219999999994
	.quad	0x4003c557de0d66f1              # double 2.4713590000000001
	.quad	0x40015b2aae297397              # double 2.1695150000000001
	.quad	0x40164c70435efa61              # double 5.5746469999999997
	.quad	0x4012a8140dd3fe19              # double 4.6641389999999996
	.quad	0x3ff47b352a843809              # double 1.2800800000000001
	.quad	0x401dfd4e4c942d49              # double 7.4973689999999999
	.quad	0x4014c862f5989df1              # double 5.1956899999999999
	.quad	0x3ff3267b5f1bef4a              # double 1.196895
	.quad	0x402009b77c02afde              # double 8.0189780000000006
	.quad	0x40028bc382a12f90              # double 2.318244
	.quad	0x4017c5332acfb763              # double 5.9425780000000001
	.quad	0x40218cb10342aa9f              # double 8.7747879999999991
	.quad	0x4019171151611ba4              # double 6.2725270000000002
	.quad	0x401f74e6e221c8a8              # double 7.8641620000000003
	.quad	0x40016815e39713ad              # double 2.1758229999999998
	.quad	0x4022535b0bbf50e3              # double 9.1628039999999995
	.quad	0x4021e5e3b8a19c9d              # double 8.9490029999999994
	.quad	0x400a253c9abb01c9              # double 3.2681819999999999
	.quad	0x4006de83e425aee6              # double 2.8586499999999999
	.quad	0x4000ac5fbf83382e              # double 2.0841669999999999
	.quad	0x4021ba6698bb4d49              # double 8.8640640000000008
	.quad	0x40212ef86a098916              # double 8.5917390000000005
	.quad	0x400007264a16a487              # double 2.0034909999999999
	.quad	0x4018583a96d4c33b              # double 6.0861609999999997
	.quad	0x401b43b213e3e293              # double 6.816109
	.quad	0x401ad7fbefd00714              # double 6.7109220000000001
	.quad	0x40149a30121682f9              # double 5.1505739999999998
	.quad	0x401e4dc981beb181              # double 7.5759639999999999
	.quad	0x4008bc0e38a7e73a              # double 3.0918239999999999
	.quad	0x400c853c9abb01c9              # double 3.5650569999999999
	.quad	0x4005bcfc3f811f4f              # double 2.7172779999999999
	.quad	0x4014dafaf8594291              # double 5.2138479999999996
	.quad	0x4021816a6a01259a              # double 8.7527650000000001
	.quad	0x40209a62456f75da              # double 8.3015310000000007
	.quad	0x4022214e3bcd35a8              # double 9.0650499999999994
	.quad	0x4023d3e0bd44998d              # double 9.9138239999999999
	.quad	0x3ff1cddc6195464e              # double 1.1127590000000001
	.quad	0x4012efb86f47b678              # double 4.734102
	.quad	0x401fda1b9f98b71c              # double 7.9629960000000004
	.quad	0x3fe321ff2e48e8a7              # double 0.59789999999999999
	.quad	0x4023fb8de6ddf00b              # double 9.9913170000000004
	.quad	0x4000f4ad362e9036              # double 2.1194709999999999
	.quad	0x401c430a4e379b78              # double 7.0654690000000002
	.quad	0x3ff9c1e7967caea7              # double 1.6098399999999999
	.quad	0x4021fa0a958537e3              # double 8.9883620000000004
	.quad	0x4021dc4241c3efae              # double 8.9301929999999992
	.quad	0x3fe5d2c9d16fc9bc              # double 0.68198099999999995
	.quad	0x4010febe1650a45d              # double 4.2487719999999998
	.quad	0x401cb0e12e83a10a              # double 7.1727340000000002
	.quad	0x40234f89a459103d              # double 9.6553470000000007
	.quad	0x3fd4e6c4c5974e66              # double 0.32658500000000001
	.quad	0x40072d99cbee807c              # double 2.8972660000000001
	.quad	0x3ff1907746887a8d              # double 1.0977699999999999
	.quad	0x4017d259e1f3a57f              # double 5.9554210000000003
	.quad	0x3feaf25c3dee7818              # double 0.84208499999999997
	.quad	0x401e014db59578a3              # double 7.5012730000000003
	.quad	0x4018ea33bd9cae21              # double 6.2287129999999999
	.quad	0x3fb309528f190d17              # double 0.074360999999999997
	.quad	0x3ff2875b3e1437c5              # double 1.1580459999999999
	.quad	0x4016bd50ebaade65              # double 5.6848789999999996
	.quad	0x401cc25d8d79d0a6              # double 7.1898099999999996
	.quad	0x400dedf9bdc69f8c              # double 3.7411989999999999
	.quad	0x4014a8d21bc126a6              # double 5.1648639999999997
	.quad	0x401d3bae89eba6ad              # double 7.3082830000000003
	.quad	0x3ffef483cafb3b75              # double 1.934696
	.quad	0x4000136b4c7f3494              # double 2.0094820000000002
	.quad	0x4018d74107314ca9              # double 6.2102089999999999
	.quad	0x4021e2085b18548b              # double 8.9414700000000007
	.quad	0x4019d296f6512a95              # double 6.455654
	.quad	0x400a46a11ec918e3              # double 3.2844869999999999
	.quad	0x40119925bb7b6bb1              # double 4.3995579999999999
	.quad	0x4018e8bb0a2ca9ac              # double 6.2272759999999998
	.quad	0x40150cc857f3061c              # double 5.2624829999999996
	.quad	0x402286889c1b5419              # double 9.2627609999999994
	.quad	0x40209e30ec311623              # double 8.3089670000000009
	.quad	0x40018aafbc1acde2              # double 2.1927180000000002
	.quad	0x3fe57e586013660e              # double 0.67167299999999996
	.quad	0x401530318b934699              # double 5.2970639999999998
	.quad	0x4016bce4a7b4e54f              # double 5.6844659999999996
	.quad	0x401e3c99f1ae2da5              # double 7.5591809999999997
	.quad	0x3ffeabd5dc400757              # double 1.916952
	.quad	0x400f0bd7f51efb6e              # double 3.8807830000000001
	.quad	0x3fdf0fa58f7121ab              # double 0.48532999999999998
	.quad	0x3ff2926b723ee1bd              # double 1.160747
	.quad	0x400e382ba5a03819              # double 3.7774269999999999
	.quad	0x3ff41614df8b1572              # double 1.2553909999999999
	.quad	0x3fefd3953dea465a              # double 0.99457799999999996
	.quad	0x4020ce47778dd617              # double 8.4028890000000001
	.quad	0x4022c321c475e636              # double 9.3811169999999997
	.quad	0x3ff0e452c59fb1e2              # double 1.0557430000000001
	.quad	0x4022d85e80bed741              # double 9.4225960000000004
	.quad	0x3ffaf037d63022dd              # double 1.6836469999999999
	.quad	0x4010fdad7518b0d1              # double 4.2477320000000001
	.quad	0x4022ce06317268d3              # double 9.4023909999999997
	.quad	0x3ffb8e8640208180              # double 1.722296
	.quad	0x40228b6e0d23d4f1              # double 9.2723239999999993
	.quad	0x3fd387a4a48f96e1              # double 0.30515399999999998
	.quad	0x400971ed17c5ef63              # double 3.180628
	.quad	0x3ffca10cf5b1c865              # double 1.7893190000000001
	.quad	0x401de1044f1a1987              # double 7.4697430000000002
	.quad	0x40221c08b75ea67f              # double 9.0547540000000009
	.quad	0x402264eaf251c194              # double 9.1971050000000005
	.quad	0x400536733ebbfd72              # double 2.6515870000000001
	.quad	0x402357644955b467              # double 9.6706869999999991
	.quad	0x4017dbcec84f8f8a              # double 5.9646559999999997
	.quad	0x3fdd0578e5c4eb57              # double 0.453459
	.quad	0x40109cc6822ff089              # double 4.1531010000000004
	.quad	0x400aab1cc9646280              # double 3.3335509999999999
	.quad	0x4018e85985ad538b              # double 6.2269040000000002
	.quad	0x3fb9273d5bab2181              # double 0.098254999999999995
	.quad	0x400ce5b18548a9bd              # double 3.612155
	.quad	0x3fe06f911cf355ce              # double 0.51361900000000005
	.quad	0x40132ec3dab5c39c              # double 4.7956690000000002
	.quad	0x40040123810e8859              # double 2.500556
	.quad	0x4016e76640a6b93d              # double 5.7259760000000002
	.quad	0x4000e528283d35eb              # double 2.1118929999999998
	.quad	0x401f99c66d373b00              # double 7.9001710000000003
	.quad	0x4019d2e3821af7d3              # double 6.455946
	.quad	0x401beddc1e7967cb              # double 6.9822850000000001
	.quad	0x401493f7ced91687              # double 5.1444999999999999
	.quad	0x4008b2314013ec46              # double 3.087008
	.quad	0x3ff704be40420f6f              # double 1.438658
	.quad	0x401ca45fe1112770              # double 7.1605220000000003
	.quad	0x4008a0f0a5efe932              # double 3.0785840000000002
	.quad	0x3fd652ac753e707e              # double 0.34879599999999999
	.quad	0x3fe004d551d68c69              # double 0.50058999999999998
	.quad	0x401fd422467be554              # double 7.9571620000000003
	.quad	0x402249ad42c3c9ef              # double 9.1439000000000004
	.quad	0x3ff2648e8a71de6a              # double 1.1495500000000001
	.quad	0x40025c45cbbc2b95              # double 2.2950550000000001
	.quad	0x3fe6bd4f15e7c8d2              # double 0.71060900000000005
	.quad	0x4020df55bccaf70a              # double 8.4362010000000005
	.quad	0x40219289331a08c0              # double 8.7862030000000004
	.quad	0x401e9cb5781c7150              # double 7.6530360000000002
	.quad	0x40219798958d9b5f              # double 8.7960860000000007
	.quad	0x40216320535c9e67              # double 8.6936060000000008
	.quad	0x3ff6fc84b5dcc63f              # double 1.43665
	.quad	0x4009c0791c4b9021              # double 3.2189809999999999
	.quad	0x401a89d883ba3444              # double 6.6346150000000002
	.quad	0x3ffd1fbf83382e45              # double 1.8202510000000001
	.quad	0x4013a0de8f6cefed              # double 4.9070989999999997
	.quad	0x4023a1691a75cd0c              # double 9.8152550000000005
	.quad	0x4006f40bbb1f255f              # double 2.8691629999999999
	.quad	0x3ffcbad5bee3d5fe              # double 1.795614
	.quad	0x4006cb90a7829069              # double 2.8493970000000002
	.quad	0x401dec2a454de7ea              # double 7.4806299999999997
	.quad	0x40219f2cb641700d              # double 8.8108880000000003
	.quad	0x3fe3324e9c454584              # double 0.59989099999999995
	.quad	0x3fe63e48a58b3f64              # double 0.69510300000000003
	.quad	0x4017ba747d805e5f              # double 5.9320849999999998
	.quad	0x40195ac4b4d056c5              # double 6.338641
	.quad	0x4018cae3608d0892              # double 6.1981330000000003
	.quad	0x4016bed5f138bce0              # double 5.6863630000000001
	.quad	0x3fe9b1ec0b567558              # double 0.80296900000000004
	.quad	0x400820b0af5fd47c              # double 3.015962
	.quad	0x400cf26bf8769ec3              # double 3.6183700000000001
	.quad	0x402311dcf893faf4              # double 9.5348889999999997
	.quad	0x3fe0b7cfe5860136              # double 0.52243799999999996
	.quad	0x40018ddaceee0f3d              # double 2.1942650000000001
	.quad	0x3ff53666234a87e4              # double 1.3257810000000001
	.quad	0x4021cf81c714fce7              # double 8.9052869999999995
	.quad	0x4000a33d6c721922              # double 2.079707
	.quad	0x401cc52deca2552a              # double 7.192558
	.quad	0x4011aac4b4d056c5              # double 4.416766
	.quad	0x4002046e8f29d40f              # double 2.2521640000000001
	.quad	0x3ff6dcd91eeaa6d2              # double 1.4289179999999999
	.quad	0x400ecb3cc4ac6cdb              # double 3.849237
	.quad	0x4018ca83b1d0c804              # double 6.1977679999999999
	.quad	0x400bc6a7ef9db22d              # double 3.472
	.quad	0x3ff2bf52fc2656ac              # double 1.17171
	.quad	0x4018723422467be5              # double 6.1115269999999997
	.quad	0x401f7265add9c27f              # double 7.8617160000000003
	.quad	0x401d63c297bfa4c6              # double 7.3474219999999999
	.quad	0x3fe4b63b256ffc11              # double 0.64724499999999996
	.quad	0x3ff212157689ca19              # double 1.1294150000000001
	.quad	0x401f94f8726d04e6              # double 7.8954789999999999
	.quad	0x402123686a4ca4f4              # double 8.5691559999999995
	.quad	0x4016124dd2f1a9fc              # double 5.5178750000000001
	.quad	0x3fc512dba4d6e47e              # double 0.16463800000000001
	.quad	0x40070d6c2efd438d              # double 2.8815539999999999
	.quad	0x4016b41d084e831b              # double 5.6758920000000002
	.quad	0x401f1b83cf2cf95d              # double 7.7768699999999997
	.quad	0x40018c4bd33d2956              # double 2.1935039999999999
	.quad	0x40230434c1a8ac5c              # double 9.5082149999999998
	.quad	0x3fffa451b93037d6              # double 1.977617
	.quad	0x401e17253da72a7c              # double 7.5226030000000002
	.quad	0x3fe06e3b46fdeb53              # double 0.51345600000000002
	.quad	0x401ee8fd5cb790fb              # double 7.7275289999999996
	.quad	0x401cb7a5f41aef70              # double 7.1793440000000004
	.quad	0x4001ebff47735c18              # double 2.2402329999999999
	.quad	0x4018418e325d4a5e              # double 6.064019
	.quad	0x4009f327243137b0              # double 3.2437269999999998
	.quad	0x4011517507e9d94d              # double 4.329548
	.quad	0x401d1feeb2d0a244              # double 7.2811839999999997
	.quad	0x40200e74afd54541              # double 8.0282339999999994
	.quad	0x3fb8d9f90539fba4              # double 0.097075999999999995
	.quad	0x40217c13986338b4              # double 8.7423369999999991
	.quad	0x40207cd2d44dca8e              # double 8.2437959999999997
	.quad	0x40120b024f6598e1              # double 4.510751
	.quad	0x4009d2684cf0739b              # double 3.227738
	.quad	0x3ff26fe931876189              # double 1.1523220000000001
	.quad	0x40094c59fb1e18f0              # double 3.1622810000000001
	.quad	0x40221e191148fda0              # double 9.0587850000000003
	.quad	0x4009e679463cfb33              # double 3.237536
	.quad	0x40192fb5d031055c              # double 6.2965920000000004
	.quad	0x40120578e5c4eb57              # double 4.505344
	.quad	0x40065f04ddb5525d              # double 2.7963960000000001
	.quad	0x3fe4bb57c4e2f380              # double 0.64786900000000003
	.quad	0x3ff92935b91f70df              # double 1.5725610000000001
	.quad	0x4010ec182ecaeea6              # double 4.2305609999999998
	.quad	0x401753fe1975f2cb              # double 5.8320239999999997
	.quad	0x4019667620ee8d11              # double 6.35006
	.quad	0x400497be121ee675              # double 2.574093
	.quad	0x3fce10385c67dfe3              # double 0.23487
	.quad	0x4003222dd7a99fa1              # double 2.391689
	.quad	0x4021415054ac29bf              # double 8.6275659999999998
	.quad	0x402195f04ddb5526              # double 8.7928490000000004
	.quad	0x401a5c0d2c386d2f              # double 6.5898940000000001
	.quad	0x400ea80a5accd530              # double 3.8320509999999999
	.quad	0x4000e624dd2f1aa0              # double 2.1123750000000001
	.quad	0x3fedd8383ad9f0a2              # double 0.93264400000000003
	.quad	0x4014085e80bed741              # double 5.0081730000000002
	.quad	0x401abc1ca3a4b557              # double 6.6837030000000004
	.quad	0x4002f2ed783dff3f              # double 2.368617
	.quad	0x3ffb57a67a52ac75              # double 1.7088989999999999
	.quad	0x3ff20bb2bba98eda              # double 1.127856
	.quad	0x4010c7c17a89331a              # double 4.195074
	.quad	0x401e669835158b82              # double 7.6001899999999996
	.quad	0x4022bc484944ed70              # double 9.3677390000000003
	.quad	0x401b419da9c99286              # double 6.8140780000000003
	.quad	0x3fe923c42a66dbd7              # double 0.78561599999999998
	.quad	0x401567574f722e1b              # double 5.3509190000000002
	.quad	0x4001ba4484944ed7              # double 2.215951
	.quad	0x400878665e02ea96              # double 3.058789
	.quad	0x400e06d2ed783dff              # double 3.7533319999999999
	.quad	0x40157bf11f926c7f              # double 5.3710370000000003
	.quad	0x3ffc21437c5692b4              # double 1.758121
	.quad	0x4002162ae4b01861              # double 2.2608239999999999
	.quad	0x400650fa58f7121b              # double 2.7895400000000001
	.quad	0x4019ab524399b2c4              # double 6.417306
	.quad	0x401c7bd6e8af8162              # double 7.1209369999999996
	.quad	0x3ffa61e81cb46bad              # double 1.648903
	.quad	0x3ffa1394317acc4f              # double 1.62978
	.quad	0x4019156b441bb8c3              # double 6.2709169999999999
	.quad	0x40128d71f36262cc              # double 4.6381300000000003
	.quad	0x400897c3504c48ae              # double 3.074103
	.quad	0x4011c37c99ae924f              # double 4.4409049999999999
	.quad	0x401eb9bf9c62a1b6              # double 7.6813950000000002
	.quad	0x40115999567dbb17              # double 4.3374990000000002
	.quad	0x4023f7dac68a936c              # double 9.9840909999999993
	.quad	0x401c7ca4f440af1d              # double 7.1217230000000002
	.quad	0x3fce4fca42aed139              # double 0.23680999999999999
	.quad	0x3fe119e30014f8b6              # double 0.53441000000000005
	.quad	0x401b299d451fc4c1              # double 6.7906389999999996
	.quad	0x3fab910c2c5e2cdc              # double 0.053841
	.quad	0x400240fdc1615ec0              # double 2.2817340000000002
	.quad	0x402050b630a91538              # double 8.1576400000000007
	.quad	0x4021874aba387592              # double 8.7642419999999994
	.quad	0x3fd20ac7da1ec4e7              # double 0.28190799999999999
	.quad	0x401febd66277c45d              # double 7.9803100000000002
	.quad	0x4021ef86c226809d              # double 8.9678249999999995
	.quad	0x401e9b9f127f5e85              # double 7.651974
	.quad	0x3ff1bfeb074a771d              # double 1.1093550000000001
	.quad	0x4014349ba5e353f8              # double 5.0513750000000002
	.quad	0x4010006b7aa25d8d              # double 4.0004099999999996
	.quad	0x401ddae46cfc829d              # double 7.463762
	.quad	0x4021dc4284dfce31              # double 8.9301949999999994
	.quad	0x401f45d9a0f0a5f0              # double 7.8182130000000001
	.quad	0x3ff8b923a29c779a              # double 1.5451999999999999
	.quad	0x3ff2b15b573eab36              # double 1.1682999999999999
	.quad	0x401e3cdf266ba494              # double 7.5594450000000002
	.quad	0x3fc5a61e0c5a8156              # double 0.169132
	.quad	0x3ffa633bd9cae211              # double 1.649227
	.quad	0x4013cd894812be49              # double 4.9507190000000003
	.quad	0x4018e32f01754b06              # double 6.2218590000000003
	.quad	0x40194928e0c9d9d3              # double 6.3214449999999998
	.quad	0x3fc75f02c4d65e46              # double 0.182587
	.quad	0x400e059af9ebe9c9              # double 3.7527370000000002
	.quad	0x40056d12018a43bb              # double 2.6782569999999999
	.quad	0x3fee219a847b2464              # double 0.94160200000000005
	.quad	0x400a47e5a78f25a2              # double 3.2851059999999999
	.quad	0x4020daaac1094a2c              # double 8.4270840000000006
	.quad	0x4010b29a1b9f98b7              # double 4.1744159999999999
	.quad	0x4003c13ec460ed81              # double 2.4693580000000002
	.quad	0x40173f0dc768dfbd              # double 5.8115759999999996
	.quad	0x4012fe935b91f70e              # double 4.7486090000000001
	.quad	0x4018037bd05af6c7              # double 6.0034020000000003
	.quad	0x4022b354195cc858              # double 9.350251
	.quad	0x400514e22a2c2374              # double 2.6351969999999998
	.quad	0x401e6bf8b9baa151              # double 7.6054409999999998
	.quad	0x3ff58f9e3864cb5c              # double 1.3475630000000001
	.quad	0x4017d733ebbfd71b              # double 5.960159
	.quad	0x3ff88f840181e03f              # double 1.5350379999999999
	.quad	0x4018e4d1e96c3fc4              # double 6.2234569999999998
	.quad	0x400f531f46ed245b              # double 3.9155869999999999
	.quad	0x40170d12cadddf44              # double 5.7627670000000002
	.quad	0x4023008d6d3b6cbe              # double 9.5010790000000007
	.quad	0x3fe642dadb8348f5              # double 0.69566099999999997
	.quad	0x3ffb7f7596851223              # double 1.718618
	.quad	0x40155a7503b81b65              # double 5.3383370000000001
	.quad	0x402185c768dfbd6a              # double 8.7612869999999994
	.quad	0x4020b17460242d06              # double 8.3465910000000001
	.quad	0x4018e97aaac1094a              # double 6.2280069999999998
	.quad	0x400815d35653c9ac              # double 3.0106570000000001
	.quad	0x401f50d2c386d2ed              # double 7.8289289999999995
	.quad	0x400fb50dae3e6c4c              # double 3.9634049999999998
	.quad	0x40044605ee568a50              # double 2.5341909999999999
	.quad	0x4020e518d25edd05              # double 8.4474549999999997
	.quad	0x40114fabda0dfdf0              # double 4.3278040000000004
	.quad	0x3f96c764adff822c              # double 0.022245000000000001
	.quad	0x40223776c4827b70              # double 9.1083280000000002
	.quad	0x3fe1a8da7f3cf701              # double 0.55186199999999996
	.quad	0x40132c6195464dc2              # double 4.7933409999999999
	.quad	0x4020bb9192641b33              # double 8.3663450000000008
	.quad	0x4016ca4db163baba              # double 5.6975619999999996
	.quad	0x401352eba27ae9ab              # double 4.8309769999999999
	.quad	0x3fe3a938de6ddf01              # double 0.61440700000000004
	.quad	0x4019d2862f5989df              # double 6.4555899999999999
	.quad	0x401715f676ea4229              # double 5.7714480000000004
	.quad	0x3fe0e0b0af5fd47c              # double 0.52742800000000001
	.quad	0x3fdf72cd7cf5f4e4              # double 0.49138199999999999
	.quad	0x3ffc3bf727136a40              # double 1.76464
	.quad	0x401714d1633482bf              # double 5.7703300000000004
	.quad	0x401aad87f88765ba              # double 6.6694639999999996
	.quad	0x40167fbe76c8b439              # double 5.6247499999999997
	.quad	0x3ff4c226809d4952              # double 1.2974000000000001
	.quad	0x400a035a426bb55b              # double 3.2516370000000001
	.quad	0x40196d106ee30caa              # double 6.3565079999999998
	.quad	0x401dac43b2dd377e              # double 7.4182269999999999
	.quad	0x40210f5f91600f34              # double 8.5300259999999994
	.quad	0x40172f32bdc26dce              # double 5.7960919999999998
	.quad	0x40022b5f5f0b2852              # double 2.2711779999999999
	.quad	0x401f954c985f06f7              # double 7.8958000000000003
	.quad	0x4020a9ee02a77a2d              # double 8.3318940000000001
	.quad	0x3fe84c271fff79c8              # double 0.75929599999999997
	.quad	0x401c9f926c7eae5c              # double 7.1558320000000002
	.quad	0x4014c78c436fc159              # double 5.194871
	.quad	0x40115eb851eb851f              # double 4.3425000000000002
	.quad	0x400b853d20f2becf              # double 3.4400580000000001
	.quad	0x40157a4a8c154c98              # double 5.3694249999999997
	.quad	0x402304881e4712e4              # double 9.5088509999999999
	.quad	0x3ff84a372606fac6              # double 1.518119
	.quad	0x400a39af9ebe9c88              # double 3.2781669999999998
	.quad	0x401c47b41bfbdf09              # double 7.0700229999999999
	.quad	0x401ab0c5eb313be2              # double 6.6726299999999998
	.quad	0x400283c64345cfee              # double 2.314343
	.quad	0x401c59b66f9335d2              # double 7.0876099999999997
	.quad	0x402273a1b1960fa1              # double 9.2258429999999993
	.quad	0x40100044284dfce3              # double 4.0002599999999999
	.quad	0x400fe4df47f993d5              # double 3.9867539999999999
	.quad	0x401cb85f06f69446              # double 7.1800499999999996
	.quad	0x4023ac3e5321e604              # double 9.8364130000000002
	.quad	0x401b0af9ebe9c886              # double 6.7607189999999999
	.quad	0x40193f77292c4934              # double 6.3119779999999999
	.quad	0x4015a9f87f023e9f              # double 5.4159870000000003
	.quad	0x40198c5c9a34ca0c              # double 6.3870719999999999
	.quad	0x400cfeed45e9185d              # double 3.624476
	.quad	0x3fd82d9cf13cee9e              # double 0.37778400000000001
	.quad	0x3fe7de02ea960b70              # double 0.74585100000000004
	.quad	0x40072580c308feac              # double 2.8933119999999999
	.quad	0x4014dfaa8a82a561              # double 5.2184239999999997
	.quad	0x40160c8fb86f47b6              # double 5.5122669999999996
	.quad	0x3fe946d3f9e7b80b              # double 0.78989600000000004
	.quad	0x401641c4fc1df330              # double 5.564228
	.quad	0x4016111e85fd04a3              # double 5.516718
	.quad	0x401db9a176ddacef              # double 7.4312800000000001
	.quad	0x401914f3343fa2ad              # double 6.2704589999999998
	.quad	0x401473af74cd3177              # double 5.1129740000000004
	.quad	0x4018cb31c219eb64              # double 6.1984320000000004
	.quad	0x40160f9d2bf55150              # double 5.5152479999999997
	.quad	0x400c37c1376d5497              # double 3.5272239999999999
	.quad	0x400aa25bfad29995              # double 3.3292769999999998
	.quad	0x3ffd14046412cf10              # double 1.8173870000000001
	.quad	0x401ce7cfe5860136              # double 7.2263789999999997
	.quad	0x401b18f57f737da6              # double 6.7743739999999999
	.quad	0x4023d8867ad8e432              # double 9.9229009999999995
	.quad	0x4021430142f61ed6              # double 8.6308690000000006
	.quad	0x3fe634528283d35f              # double 0.69388700000000003
	.quad	0x401fdb499d0203e6              # double 7.9641479999999998
	.quad	0x40205364bec679cc              # double 8.1628779999999991
	.quad	0x4020a6fef7c243dd              # double 8.3261640000000003
	.quad	0x4004c931876188b1              # double 2.598239
	.quad	0x401e8877ab324852              # double 7.6332690000000003
	.quad	0x40068d72799a1fd1              # double 2.8190659999999998
	.quad	0x401e64b7f5a5332b              # double 7.5983580000000001
	.quad	0x4023acfe79ee02a7              # double 9.8378789999999991
	.quad	0x40110726d04e618d              # double 4.2569840000000001
	.quad	0x4002a8f6cefed634              # double 2.3325019999999999
	.quad	0x3fef145d851654d6              # double 0.97123599999999999
	.quad	0x40200905c0336156              # double 8.0176219999999994
	.quad	0x401228f81e8a2ec3              # double 4.5400090000000004
	.quad	0x40221d8f4f93bc0a              # double 9.057734
	.quad	0x4001995feda66128              # double 2.1998899999999999
	.quad	0x4020f55a7d24180d              # double 8.4792059999999996
	.quad	0x401adddebd9018e7              # double 6.7166699999999997
	.quad	0x4016aed6ba8c5868              # double 5.6707409999999996
	.quad	0x4022578ceb356da0              # double 9.1709969999999998
	.quad	0x4012ef9bdc69f8c2              # double 4.7339929999999999
	.quad	0x401ecd606317268d              # double 7.7005629999999998
	.quad	0x401dfd82ba5a0382              # double 7.4975690000000004
	.quad	0x402189600f34506a              # double 8.7683110000000006
	.quad	0x40168c85c24c404a              # double 5.6372289999999996
	.quad	0x3ff0be1eb4202d9d              # double 1.046416
	.quad	0x40227c66d373affb              # double 9.242972
	.quad	0x400f53f1843c3a43              # double 3.915988
	.quad	0x401357dc37a3db3c              # double 4.835801
	.quad	0x40053ae685db76b4              # double 2.6537600000000001
	.quad	0x4015fe685db76b3c              # double 5.4984450000000002
	.quad	0x401004662bae03b4              # double 4.0042960000000001
	.quad	0x400da9e55c0fcb4f              # double 3.7079569999999999
	.quad	0x3ffe46a098915bdd              # double 1.8922429999999999
	.quad	0x401e27c6fbd273d6              # double 7.5388450000000002
	.quad	0x4016d8e6d15ad107              # double 5.7118180000000001
	.quad	0x3ffb752977c88e7a              # double 1.7161040000000001
	.quad	0x401fe20b3d4ae42a              # double 7.9707460000000001
	.quad	0x4020d655c0fcb4f2              # double 8.4186230000000002
	.quad	0x3ff26bfdb4cc2507              # double 1.151365
	.quad	0x4019104d551d68c7              # double 6.2659200000000004
	.quad	0x40023e82517e77d5              # double 2.2805219999999999
	.quad	0x4005dcd5f99c38b0              # double 2.7328299999999999
	.quad	0x400822e4d1a65061              # double 3.0170379999999999
	.quad	0x4021a4a66559f6ec              # double 8.8215819999999993
	.quad	0x3ffc135c9e6687f4              # double 1.7547269999999999
	.quad	0x3ffb4691ea78af3e              # double 1.7047289999999999
	.quad	0x4020507f66e86c66              # double 8.1572220000000009
	.quad	0x40201d0331e3a7db              # double 8.0566650000000006
	.quad	0x401d154eb13dfb0d              # double 7.2708079999999997
	.quad	0x4021ad347a5b0ff1              # double 8.8382909999999999
	.quad	0x3ffdfa76534373f3              # double 1.873648
	.quad	0x3ff41d441355475a              # double 1.257145
	.quad	0x3ff60aed99cbee80              # double 1.3776679999999999
	.quad	0x401e1c67dfe32a06              # double 7.5277399999999997
	.quad	0x4020c360f1b25f63              # double 8.3815989999999996
	.quad	0x40112800eae18aca              # double 4.289066
	.quad	0x40197f15a4acf313              # double 6.3741060000000003
	.quad	0x40047a908a265f0f              # double 2.5598459999999998
	.quad	0x3ffdaa715831f03d              # double 1.854112
	.quad	0x402079bfdf7e8039              # double 8.2377920000000007
	.quad	0x402388c34c1a8ac6              # double 9.7671150000000004
	.quad	0x401fcbe121ee6751              # double 7.9491009999999997
	.quad	0x3fd30f51ac9afe1e              # double 0.29781000000000002
	.quad	0x401d7732df505d10              # double 7.3664050000000003
	.quad	0x400074e4c942d491              # double 2.057077
	.quad	0x4023051eb851eb85              # double 9.5099999999999997
	.quad	0x40031737da61e0c6              # double 2.3863370000000002
	.quad	0x40138fbdf090f734              # double 4.8903730000000003
	.quad	0x401a17e414e7ee91              # double 6.5233309999999998
	.quad	0x4023ef60bf5d7881              # double 9.9675349999999998
	.quad	0x3ffa07000431bde8              # double 1.626709
	.quad	0x3ffb0dc22ab25b31              # double 1.6908589999999999
	.quad	0x4018a40789613d32              # double 6.1601850000000002
	.quad	0x40158f6598e10cf6              # double 5.3900360000000003
	.quad	0x401aab2bfdb4cc25              # double 6.66716
	.quad	0x4015c959a30984e4              # double 5.446631
	.quad	0x401cfbc126a65cf6              # double 7.2458539999999996
	.quad	0x40212b6f5caf2d80              # double 8.5848340000000007
	.quad	0x4016172085b18549              # double 5.5225850000000003
	.quad	0x401493fee2c98e54              # double 5.1445270000000001
	.quad	0x401c7677b395c422              # double 7.115691
	.quad	0x3ffb031bde82d7b6              # double 1.688259
	.quad	0x401a5c0980b24207              # double 6.58988
	.quad	0x4002e662bae03b3f              # double 2.3624930000000002
	.quad	0x4011e936c58eeaea              # double 4.4777480000000001
	.quad	0x40149def416bdb1a              # double 5.1542329999999996
	.quad	0x4009b1105e1c1509              # double 3.2114569999999998
	.quad	0x4012468cac4b4d05              # double 4.5688959999999996
	.quad	0x401311ec918e325d              # double 4.7675039999999997
	.quad	0x4022edb5fa22706d              # double 9.4642789999999994
	.quad	0x3fe8b163baba7b91              # double 0.77165399999999995
	.quad	0x4009bed527e52157              # double 3.2181799999999998
	.quad	0x402325e6ddf00abf              # double 9.5740269999999991
	.quad	0x3ff45085f4a1272d              # double 1.2696590000000001
	.quad	0x3ff3de96c3fc43b3              # double 1.241843
	.quad	0x400027c286f8ad25              # double 2.0194139999999998
	.quad	0x3ff31dcf893faf42              # double 1.1947779999999999
	.quad	0x3fe50feac42e989a              # double 0.65819300000000003
	.quad	0x401691df3300de4c              # double 5.6424529999999997
	.quad	0x401cf80f55de58e6              # double 7.2422459999999997
	.quad	0x401832fa5093964a              # double 6.0497829999999997
	.quad	0x4022202f72b45283              # double 9.0628620000000009
	.quad	0x40208185cee17a03              # double 8.252974
	.quad	0x402275106ee30caa              # double 9.2286409999999997
	.quad	0x40237d66277c45cc              # double 9.7449200000000004
	.quad	0x400c9830e3cd9a52              # double 3.5743119999999999
	.quad	0x3feba24031487768              # double 0.86355599999999999
	.quad	0x401dc7ac3eb7cbb4              # double 7.4449930000000002
	.quad	0x400e8d3e0bd44999              # double 3.8189660000000001
	.quad	0x401655729b280f13              # double 5.5834450000000002
	.quad	0x40174bb6672fba02              # double 5.8239380000000001
	.quad	0x4022c0d9d7774aba              # double 9.3766619999999996
	.quad	0x40201b5286b59147              # double 8.0533640000000002
	.quad	0x401b6019b0ab2e17              # double 6.8438480000000004
	.quad	0x400e99f5dfeb8d82              # double 3.8251759999999999
	.quad	0x3fbbc5154866a11f              # double 0.108476
	.quad	0x3ff7899e0e73604a              # double 1.471098
	.quad	0x400256f8f041461b              # double 2.2924669999999998
	.quad	0x3fe6e9ab29e4d5d8              # double 0.71602399999999999
	.quad	0x3febb0ccbc05d52c              # double 0.86533199999999999
	.quad	0x4021bec0d6f544bb              # double 8.8725649999999998
	.quad	0x4023e8ed5f138bce              # double 9.954936
	.quad	0x4011ec55432873bd              # double 4.4807940000000004
	.quad	0x400579dcb5781c71              # double 2.6845029999999999
	.quad	0x401c0049ecb31c22              # double 7.0002820000000003
	.quad	0x400078b04ab606b8              # double 2.0589300000000001
	.quad	0x40105ae70c1333b9              # double 4.0887719999999996
	.quad	0x4018f61cffeb074a              # double 6.2403449999999996
	.quad	0x4005f9e731d2e0e3              # double 2.747023
	.quad	0x40170d2dcb1465e9              # double 5.7628700000000004
	.quad	0x40117ba0e8427419              # double 4.3707310000000001
	.quad	0x3ff32e6106ab14ec              # double 1.198823
	.quad	0x3fff01ce6c093d96              # double 1.9379409999999999
	.quad	0x4022980c73abc947              # double 9.29697
	.quad	0x4007e2f8bdec5f39              # double 2.9858259999999999
	.quad	0x401aee53eb399f5e              # double 6.732742
	.quad	0x4021d9f8a0902de0              # double 8.9257249999999999
	.quad	0x401a8c925785f8d3              # double 6.6372770000000001
	.quad	0x401f71e53a81dc0e              # double 7.8612260000000003
	.quad	0x3feebd512ec6bce8              # double 0.96060999999999996
	.quad	0x4015f3201040bfe4              # double 5.4874270000000003
	.quad	0x401a6e050374ff86              # double 6.6074409999999997
	.quad	0x4017a03f705857b0              # double 5.9064920000000001
	.quad	0x3ff1265bea0ba1f5              # double 1.0718650000000001
	.quad	0x400ccd42c3c9eecc              # double 3.600225
	.quad	0x3ffb3ac710cb295f              # double 1.7018500000000001
	.quad	0x401b35feda661284              # double 6.8027300000000004
	.quad	0x3ff1641f644955b4              # double 1.0869439999999999
	.quad	0x402300fcd67fd3f6              # double 9.5019290000000005
	.quad	0x3fe8ca05dd8f92b0              # double 0.77466100000000004
	.quad	0x4020dc6eb0b7c350              # double 8.4305319999999995
	.quad	0x40228af4adbc664d              # double 9.2713979999999996
	.quad	0x40038f29d40ee06e              # double 2.4449040000000002
	.quad	0x40234c896dd26b72              # double 9.6494859999999996
	.quad	0x3fdcfa333764f11b              # double 0.45277099999999998
	.quad	0x4011d116659d12cb              # double 4.4541870000000001
	.quad	0x3ff223d4f15e7c8d              # double 1.133748
	.quad	0x4019f87fcb923a2a              # double 6.4926750000000002
	.quad	0x4020f757928e0c9e              # double 8.4830900000000007
	.quad	0x4012376fb09203a3              # double 4.5541369999999999
	.quad	0x401fc8066c2acb86              # double 7.9453370000000003
	.quad	0x4020670f5a1016ce              # double 8.2012889999999992
	.quad	0x40218ce160d887ec              # double 8.775157
	.quad	0x4019dd24e160d888              # double 6.4659610000000001
	.quad	0x3fc907182235b4ee              # double 0.19552900000000001
	.quad	0x401437368ad68837              # double 5.0539189999999996
	.quad	0x3fdabb7f9d6f1130              # double 0.41769400000000001
	.quad	0x3fda039abf338716              # double 0.40647
	.quad	0x4023879b56323bbc              # double 9.7648569999999992
	.quad	0x3fd99dadfb506dd7              # double 0.40024900000000002
	.quad	0x40195693c03bc4d2              # double 6.3345479999999998
	.quad	0x4005da0e8427418d              # double 2.7314729999999998
	.quad	0x400372edfe75bc45              # double 2.4311180000000001
	.quad	0x4020d285a921ccd9              # double 8.4111759999999993
	.quad	0x3ff972170931012a              # double 1.590354
	.quad	0x4002aff7dfa00e28              # double 2.3359220000000001
	.quad	0x402352b734b51373              # double 9.6615540000000006
	.quad	0x401be86833c6002a              # double 6.9769600000000001
	.quad	0x4021a951e75360d0              # double 8.8307029999999997
	.quad	0x3fe345b078d92fb2              # double 0.60225700000000004
	.quad	0x3ffb6c43f5f91601              # double 1.713932
	.quad	0x3fdf58ea7ce0fc2f              # double 0.48980200000000002
	.quad	0x401c98ab4fa48302              # double 7.1490910000000003
	.quad	0x4018d972cd7cf5f5              # double 6.2123520000000001
	.quad	0x4006a03cd141a693              # double 2.8282409999999998
	.quad	0x401fd0cbaf965b21              # double 7.9539020000000002
	.quad	0x401e74662bae03b4              # double 7.6136710000000001
	.quad	0x401245953586ca8a              # double 4.567952
	.quad	0x40146b22d0e56042              # double 5.1046250000000004
	.quad	0x4023c3c23315d702              # double 9.8823410000000003
	.quad	0x3fe1d6de33269df9              # double 0.55747899999999995
	.quad	0x4010a100e6afcce2              # double 4.1572300000000002
	.quad	0x402063fb15b573eb              # double 8.1952750000000005
	.quad	0x40127afd5454152b              # double 4.620107
	.quad	0x401873f42352eb5f              # double 6.1132359999999997
	.quad	0x3fa0bfc2224edf61              # double 0.032712999999999999
	.quad	0x402089f2ba9d1f60              # double 8.2694299999999998
	.quad	0x400cd2220bc382a1              # double 3.6026039999999999
	.quad	0x401932fa5093964a              # double 6.2997829999999997
	.quad	0x3ff7cbd017dae819              # double 1.4872590000000001
	.quad	0x4020300389f83be6              # double 8.0937769999999993
	.quad	0x4023098d477bbf94              # double 9.518656
	.quad	0x4010402d16b97fe9              # double 4.0626720000000001
	.quad	0x4011f65a57646ae4              # double 4.4905790000000003
	.quad	0x3fd793682730c671              # double 0.36837199999999998
	.quad	0x40133fdb8fde2ef5              # double 4.8123610000000001
	.quad	0x4015bd8adab9f55a              # double 5.4351000000000003
	.quad	0x400e6cc70867ad8e              # double 3.8031139999999999
	.quad	0x4019ab8023a6ce36              # double 6.4174810000000004
	.quad	0x40133bc72e275ab8              # double 4.8083770000000001
	.quad	0x4019fb39e279dd3c              # double 6.4953380000000003
	.quad	0x3fdb690de093532e              # double 0.42828699999999997
	.quad	0x40005de5082cf52c              # double 2.0458470000000002
	.quad	0x40103994e1a3f466              # double 4.0562319999999996
	.quad	0x401d6e4abe6a337b              # double 7.3577070000000004
	.quad	0x40237a8d8665e02f              # double 9.7393610000000006
	.quad	0x400be1c8216c6152              # double 3.4852449999999999
	.quad	0x3ffcbdaa4fca42af              # double 1.796305
	.quad	0x401e00ce4ead0c3d              # double 7.5007869999999998
	.quad	0x3ff33ed30f062d41              # double 1.2028380000000001
	.quad	0x4010f5c4eb56fb8f              # double 4.2400089999999997
	.quad	0x40227c6583e8576d              # double 9.2429620000000003
	.quad	0x3ff7450ce4ead0c4              # double 1.454358
	.quad	0x4013f7aa68f4b620              # double 4.9918610000000001
	.quad	0x402100cef672b884              # double 8.5015789999999995
	.quad	0x3f6f7b5aea3161a2              # double 0.0038430000000000001
	.quad	0x401e1b7564302b41              # double 7.526815
	.quad	0x401e6d898b2e9ccb              # double 7.6069699999999995
	.quad	0x401b00329802c0a5              # double 6.7501930000000003
	.quad	0x3fb8d423d9231c65              # double 0.096987000000000004
	.quad	0x4015508e15011905              # double 5.3286670000000003
	.quad	0x4010675cd0bb6ed6              # double 4.1009399999999996
	.quad	0x401ee6202539756d              # double 7.7247320000000003
	.quad	0x4012063baba7b917              # double 4.506087
	.quad	0x4014a3c85c24c405              # double 5.1599440000000003
	.quad	0x4022412f09d8c6d6              # double 9.1273119999999999
	.quad	0x40061c842fa50939              # double 2.7639239999999998
	.quad	0x4012429f59ccfaf0              # double 4.565061
	.quad	0x3ff486c226809d49              # double 1.2828999999999999
	.quad	0x40105ac6cdaf4adc              # double 4.0886490000000002
	.quad	0x401d20f9d2bf5515              # double 7.282203
	.quad	0x4003c39e6ab9b23e              # double 2.4705170000000001
	.quad	0x401bcdd8f92af9a9              # double 6.9510230000000002
	.quad	0x401b19a2c669057d              # double 6.7750349999999999
	.quad	0x400f2e79aae6c8f7              # double 3.8976929999999999
	.quad	0x4007155043e5321e              # double 2.8854069999999998
	.quad	0x4011e97cc39ffd61              # double 4.4780150000000001
	.quad	0x401b518655193709              # double 6.8296140000000003
	.quad	0x401680a88effe2a4              # double 5.6256430000000002
	.quad	0x401229357603925c              # double 4.5402430000000003
	.quad	0x3ffb0840e1719f80              # double 1.6895150000000001
	.quad	0x3ffca87f455a7d24              # double 1.791137
	.quad	0x40214e831ad2135e              # double 8.6533440000000006
	.quad	0x401af5a5fc7e6b40              # double 6.7398910000000001
	.quad	0x4020ff3797460243              # double 8.4984710000000003
	.quad	0x40227a1d96e9bbf1              # double 9.2385070000000002
	.quad	0x40232fd7a13c254a              # double 9.5934419999999996
	.quad	0x3ff3817b95a29414              # double 1.219112
	.quad	0x4020dc0bfe3b03e2              # double 8.4297789999999999
	.quad	0x401ff51bd61f5be6              # double 7.9893640000000001
	.quad	0x3ff35144cbe1eb42              # double 1.207341
	.quad	0x401752e1693c03bc              # double 5.8309379999999997
	.quad	0x400f6fde2ef4e011              # double 3.9296229999999999
	.quad	0x4020ec2fc69728a6              # double 8.4613019999999999
	.quad	0x40172b29a1b9f98b              # double 5.7921509999999996
	.quad	0x401c2d0a67620ee9              # double 7.0439850000000002
	.quad	0x401ade6c4c5974e6              # double 6.7172099999999997
	.quad	0x4008d8d477bbf940              # double 3.105874
	.quad	0x40217597f62b6ae8              # double 8.7296750000000003
	.quad	0x4022d7cb4f1e4b45              # double 9.4214730000000006
	.quad	0x401adefd438d1d8a              # double 6.7177629999999997
	.quad	0x401b8382e44b6e93              # double 6.8784289999999997
	.quad	0x40160778dd616f87              # double 5.5072970000000003
	.quad	0x3ff3713dfb0d51f8              # double 1.215147
	.quad	0x401137e80389f83c              # double 4.3045960000000001
	.quad	0x4007aabef06b3786              # double 2.9583719999999998
	.quad	0x4002497204295a6c              # double 2.2858619999999998
	.quad	0x400549528f190d17              # double 2.6608019999999999
	.quad	0x401b183e8576cce6              # double 6.773676
	.quad	0x401204f11b60ae97              # double 4.5048260000000004
	.quad	0x3fe0ed3f9e7b80aa              # double 0.52896100000000001
	.quad	0x401e50b06c43f5f9              # double 7.5787979999999999
	.quad	0x401983dc486ad2dd              # double 6.3787700000000003
	.quad	0x40214f0a5efe9318              # double 8.6543759999999992
	.quad	0x401798f57f737da6              # double 5.8993739999999999
	.quad	0x3ff5d3b7d84901d2              # double 1.3641890000000001
	.quad	0x4014670d62bf11f9              # double 5.1006369999999999
	.quad	0x3fc2157689ca18bd              # double 0.14127999999999999
	.quad	0x402059bb4916ca47              # double 8.1752570000000002
	.quad	0x3febc5a1cac08312              # double 0.86787499999999995
	.quad	0x40182bd05af6c69b              # double 6.0427869999999997
	.quad	0x40202c9fd7a13c25              # double 8.0871569999999995
	.quad	0x400defdc9c4da900              # double 3.7421199999999999
	.quad	0x40162fa54c554328              # double 5.5465289999999996
	.quad	0x401c3bb44e50c5eb              # double 7.0583049999999998
	.quad	0x4019428240b78034              # double 6.3149499999999996
	.quad	0x3fe3f75968512232              # double 0.62394400000000005
	.quad	0x40152bdec5f394b8              # double 5.2928420000000003
	.quad	0x40220cb81733226c              # double 9.0248419999999995
	.quad	0x40137d15ad106ee3              # double 4.872153
	.quad	0x400266a6e32e3822              # double 2.3001230000000001
	.quad	0x401d2c560c7c0f45              # double 7.2932969999999999
	.quad	0x40233663a5c1c609              # double 9.6062290000000007
	.quad	0x4022314face67d78              # double 9.096311
	.quad	0x401b43eb399f5dff              # double 6.8163270000000002
	.quad	0x4020e6dc5d638866              # double 8.4509000000000007
	.quad	0x4000dd7e45803cd1              # double 2.1081509999999999
	.quad	0x4016ecc1871e6cd3              # double 5.7312070000000004
	.quad	0x401eca84be40420f              # double 7.6977719999999996
	.quad	0x40147320535c9e67              # double 5.1124280000000004
	.quad	0x3fe0dd9c27e95315              # double 0.52705199999999996
	.quad	0x401f4f865d7cb2d9              # double 7.8276609999999999
	.quad	0x400a729ed3953dea              # double 3.3059669999999999
	.quad	0x3fdcf77f27fe4bcb              # double 0.45260600000000001
	.quad	0x401022b9d3cbc48f              # double 4.0339119999999999
	.quad	0x401f27b3d8e00086              # double 7.7887719999999998
	.quad	0x4020ef8d2e514c23              # double 8.4678740000000001
	.quad	0x400f40ccff21b3af              # double 3.906641
	.quad	0x401a42513b5bf6a1              # double 6.5647630000000001
	.quad	0x3ffd59ec7000431c              # double 1.834454
	.quad	0x401b2da5119ce076              # double 6.794575
	.quad	0x3feef03d145d8516              # double 0.96682599999999996
	.quad	0x402188c6d612c6ac              # double 8.7671419999999997
	.quad	0x40005a5657fb6998              # double 2.0441099999999999
	.quad	0x401d60d3cff64cf9              # double 7.3445580000000001
	.quad	0x3ffa77f8ca8198f2              # double 1.65429
	.quad	0x3ff21903a7546d40              # double 1.1311070000000001
	.quad	0x402064ba732df506              # double 8.1967350000000003
	.quad	0x40191f2fdb8fde2f              # double 6.280456
	.quad	0x401a3345cfede97d              # double 6.550071
	.quad	0x4006492817763e4b              # double 2.7857210000000001
	.quad	0x3fffabb1290257c9              # double 1.979417
	.quad	0x401874256bca5376              # double 6.1134240000000002
	.quad	0x402334aafbc1acde              # double 9.6028669999999998
	.quad	0x3fe70f12c27a6373              # double 0.72058999999999995
	.quad	0x401ab5e071c53f3a              # double 6.6776140000000002
	.quad	0x3ff7700ffda4052d              # double 1.4648589999999999
	.quad	0x4016cc9b41398634              # double 5.6998110000000004
	.quad	0x4023b1c9d5a187a5              # double 9.8472430000000006
	.quad	0x3ff23505d0fa58f7              # double 1.137945
	.quad	0x40152ac79702e664              # double 5.2917769999999997
	.quad	0x402027214f0520d1              # double 8.0764259999999997
	.quad	0x401860d62bf11f92              # double 6.0945669999999996
	.quad	0x400147e28240b780              # double 2.1600999999999999
	.quad	0x4021c5755bccaf71              # double 8.8856610000000007
	.quad	0x401e8b6d00b45ae6              # double 7.636158
	.quad	0x3ff0921144cbe1eb              # double 1.0356609999999999
	.quad	0x401518d8ec95bff0              # double 5.2742649999999998
	.quad	0x40182a0e410b630b              # double 6.0410700000000004
	.quad	0x40217f000431bde8              # double 8.7480469999999997
	.quad	0x40234d8afc47e49b              # double 9.6514509999999997
	.quad	0x401c8feb074a771d              # double 7.1405450000000004
	.quad	0x401a8365cb35f3d8              # double 6.6283180000000002
	.quad	0x401ed7bf1e8e6080              # double 7.7106899999999996
	.quad	0x40235281fd9ba1b2              # double 9.6611480000000007
	.quad	0x4018b72abef06b38              # double 6.1788740000000004
	.quad	0x400296922d948dc1              # double 2.3235209999999999
	.quad	0x40202cadbc664d3c              # double 8.087263
	.quad	0x40183138fffbce42              # double 6.0480689999999999
	.quad	0x4016b71fbc5de9c0              # double 5.6788319999999999
	.quad	0x4020b1713ad5bee4              # double 8.3465670000000002
	.quad	0x3fead76ee73e681b              # double 0.83879800000000004
	.quad	0x401883033a4723ab              # double 6.127942
	.quad	0x401f71ea35935fc4              # double 7.8612450000000003
	.quad	0x401d9b51372a38b9              # double 7.4016770000000003
	.quad	0x4008f16ebd4cfd09              # double 3.1178870000000001
	.quad	0x4005b7a56de3326a              # double 2.7146710000000001
	.quad	0x3ff112c493426784              # double 1.0670820000000001
	.quad	0x401d33e425aee632              # double 7.300675
	.quad	0x3ff4a54d61b2a27f              # double 1.290357
	.quad	0x3ff69a1554fbdad7              # double 1.4126179999999999
	.quad	0x401d5bcfd4bf0996              # double 7.3396600000000003
	.quad	0x3fd129dc725c3dee              # double 0.26817999999999997
	.quad	0x3ff762f6a50d6b23              # double 1.4616610000000001
	.quad	0x4023add13d74d595              # double 9.839487
	.quad	0x401c2923e5b8561d              # double 7.0401759999999998
	.quad	0x40110ea63b688bdb              # double 4.2643060000000004
	.quad	0x401e80ecfa69be0a              # double 7.6259040000000002
	.quad	0x401ef8576cce5f74              # double 7.742521
	.quad	0x40230d771001d5c3              # double 9.5262989999999998
	.quad	0x40059b50f40e5a36              # double 2.7008380000000001
	.quad	0x400e1606317268d3              # double 3.7607539999999999
	.quad	0x400e1dd095af294e              # double 3.7645580000000001
	.quad	0x40129fc610f0e90c              # double 4.6560290000000002
	.quad	0x40160fb0d51f81a6              # double 5.5153230000000004
	.quad	0x3ff061240746455f              # double 1.0237160000000001
	.quad	0x4022c0df37329c34              # double 9.3767029999999991
	.quad	0x400635da272862f6              # double 2.7762950000000002
	.quad	0x4006845fe1112770              # double 2.8146360000000001
	.quad	0x4023b3f1a5ca2984              # double 9.8514529999999993
	.quad	0x401af5b5fa22706d              # double 6.7399519999999997
	.quad	0x40203b90c9107faa              # double 8.116339
	.quad	0x401034d22c881e47              # double 4.0515829999999999
	.quad	0x4008cb2074ea8da8              # double 3.099183
	.quad	0x401388919ef954eb              # double 4.8833679999999999
	.quad	0x40222b8066c2acb8              # double 9.0849639999999994
	.quad	0x3ff4483771865519              # double 1.267631
	.quad	0x4012722706d50657              # double 4.6114769999999998
	.quad	0x40126767d34df04e              # double 4.6009820000000001
	.quad	0x401547179bfdf7e8              # double 5.319426
	.quad	0x4001ccfd8f0c77de              # double 2.2250930000000002
	.quad	0x4021cf9f01b866e4              # double 8.9055099999999995
	.quad	0x40146f9096bb98c8              # double 5.1089500000000001
	.quad	0x4012d17268d32831              # double 4.7045380000000003
	.quad	0x3fea57e45803cd14              # double 0.82322899999999998
	.quad	0x3ff834cb1897a67a              # double 1.5128889999999999
	.quad	0x40010625e99e94ab              # double 2.1280019999999999
	.quad	0x40146b777d0f1f58              # double 5.1049480000000003
	.quad	0x4003bf05ea24cc68              # double 2.4682729999999999
	.quad	0x401bee71476af89c              # double 6.9828539999999997
	.quad	0x401d2a7daa4fca43              # double 7.2914950000000003
	.quad	0x40099718eb895076              # double 3.1987779999999999
	.quad	0x401ad90f301eabbd              # double 6.7119720000000003
	.quad	0x400df12d3415b142              # double 3.7427619999999999
	.quad	0x40112e071c53f39d              # double 4.2949489999999999
	.quad	0x40116591cd1c7de5              # double 4.349189
	.quad	0x401f718e757928e1              # double 7.8608950000000001
	.quad	0x4021e99da9c99286              # double 8.9562810000000006
	.quad	0x400b3d52c16df3f9              # double 3.4049429999999998
	.quad	0x3ff27dfa00e27e0f              # double 1.155756
	.quad	0x400fc1eb4202d9cf              # double 3.969687
	.quad	0x400ebbbadc0980b2              # double 3.8416649999999999
	.quad	0x401e898bf7f06706              # double 7.6343230000000002
	.quad	0x400411bbcf4e874d              # double 2.5086590000000002
	.quad	0x40206b8433d6c722              # double 8.2099930000000008
	.quad	0x3fee0e368f084620              # double 0.93923500000000004
	.quad	0x40108e31d712a0ec              # double 4.1388619999999996
	.quad	0x400d7a2d72ffd1dd              # double 3.6846570000000001
	.quad	0x402389e7d9988d2a              # double 9.7693469999999998
	.quad	0x4022313c46d82ba6              # double 9.0961630000000007
	.quad	0x40080f47b677f6b2              # double 3.0074610000000002
	.quad	0x3ff6c4806290eed0              # double 1.422974
	.quad	0x3fee892ab68cef67              # double 0.95424399999999998
	.quad	0x400cfec13b9f127f              # double 3.6243919999999998
	.quad	0x3ff5d58d9b5e95b8              # double 1.3646370000000001
	.quad	0x3fcaf9ebe9c88616              # double 0.21075199999999999
	.quad	0x4002984c271fff7a              # double 2.3243640000000001
	.quad	0x40194e33eff19503              # double 6.3263699999999998
	.quad	0x40170956c0d6f545              # double 5.7591200000000002
	.quad	0x3fff90b1feeb2d0a              # double 1.972826
	.quad	0x400344180d3cff65              # double 2.4082490000000001
	.quad	0x401af0f16f4384ba              # double 6.7352959999999999
	.quad	0x40219325f633ce64              # double 8.7873990000000006
	.quad	0x4021059af9ebe9c9              # double 8.5109480000000008
	.quad	0x3fe071b4784230fd              # double 0.51388
	.quad	0x402108cbf2b239a4              # double 8.5171810000000007
	.quad	0x40201299b6f5caf3              # double 8.0363290000000003
	.quad	0x40222e7c6b8b6955              # double 9.0907929999999997
	.quad	0x401f54c3c18b502b              # double 7.8327780000000002
	.quad	0x3ff7ee3f78bbd380              # double 1.4956659999999999
	.quad	0x401f7c436fc158fb              # double 7.8713509999999997
	.quad	0x400dd5842b734b51              # double 3.7292559999999999
	.quad	0x4021f97e77d523b3              # double 8.9872929999999993
	.quad	0x4014c4bfd2e94680              # double 5.1921379999999999
	.quad	0x401562e946801712              # double 5.3465930000000004
	.quad	0x400b9564302b40f6              # double 3.4479449999999998
	.quad	0x40100a3ca7503b82              # double 4.0099970000000003
	.quad	0x3fc7856a37ac3eb8              # double 0.18375900000000001
	.quad	0x40233f57d5a9eb20              # double 9.6237169999999992
	.quad	0x40005089a0275254              # double 2.0393249999999998
	.quad	0x3ff056fc9bc77143              # double 1.021237
	.quad	0x4001f14013ec460f              # double 2.2427980000000001
	.quad	0x401e8c536d655e29              # double 7.6370370000000002
	.quad	0x401ad4dec1c1d6d0              # double 6.7078810000000004
	.quad	0x400759d6f112fd33              # double 2.9188670000000001
	.quad	0x400308c36da87a07              # double 2.3792789999999999
	.quad	0x3fb8e5c4eb56fb8f              # double 0.097255999999999995
	.quad	0x401f2103c8e25c81              # double 7.7822409999999999
	.quad	0x3fee03f0bae89eba              # double 0.93798099999999995
	.quad	0x3ffb62e90364388f              # double 1.7116480000000001
	.quad	0x4023ce523704790c              # double 9.9029710000000008
	.quad	0x40154438d1d8a548              # double 5.3166229999999999
	.quad	0x400706f47b677f6b              # double 2.878396
	.quad	0x400899c7368ad688              # double 3.0750869999999999
	.quad	0x3fe78fcf80dc3372              # double 0.73630499999999999
	.quad	0x3ff479f98b71b8aa              # double 1.279779
	.quad	0x401c10e51d25aab4              # double 7.0164989999999996
	.quad	0x4020eba6efc371da              # double 8.4602579999999996
	.quad	0x4000dc1df3300de5              # double 2.1074790000000001
	.quad	0x400a6bb8800eae19              # double 3.3025980000000001
	.quad	0x3ff3065625a682b6              # double 1.189047
	.quad	0x4021e2517e77d524              # double 8.9420280000000005
	.quad	0x4011e9a5657fb69a              # double 4.4781700000000004
	.quad	0x4013e8fd199bb279              # double 4.9775280000000004
	.quad	0x4010378cc9a77e5f              # double 4.0542480000000003
	.quad	0x40192bf401c4fc1e              # double 6.292923
	.quad	0x40047cfa26a22b39              # double 2.5610240000000002
	.quad	0x4008b470eb24a6a8              # double 3.0881059999999998
	.quad	0x4022be5e89225311              # double 9.3718149999999997
	.quad	0x4010b95c853c1483              # double 4.1810169999999998
	.quad	0x401b4d6883771865              # double 6.8255939999999997
	.quad	0x401f1a76534373f3              # double 7.7758419999999999
	.quad	0x401c25f394b7b289              # double 7.0370619999999997
	.quad	0x4016a122b7baecd0              # double 5.6573589999999996
	.quad	0x401d3c27631b584b              # double 7.3087439999999999
	.quad	0x401c96e7e62dc6e3              # double 7.1473690000000003
	.quad	0x401f10813cab81f9              # double 7.7661179999999996
	.quad	0x3ffda219652bd3c3              # double 1.8520749999999999
	.quad	0x401c7b417ca2120e              # double 7.1203669999999999
	.quad	0x401ea00218def417              # double 7.6562580000000002
	.quad	0x40202ae74f2f123c              # double 8.0837959999999995
	.quad	0x401f8c0053e2d624              # double 7.8867200000000004
	.quad	0x401d60852b4d8ba4              # double 7.344258
	.quad	0x3fec2bc72e275ab8              # double 0.88034400000000002
	.quad	0x401cedba908a265f              # double 7.2321569999999999
	.quad	0x4022b7ebf22c01e7              # double 9.3592220000000008
	.quad	0x401413198288051d              # double 5.0186520000000003
	.quad	0x4002ba122fad6cb5              # double 2.3408549999999999
	.quad	0x401e4d14e3bcd35b              # double 7.5752750000000004
	.quad	0x3fc50e1b4bb5e0f8              # double 0.164493
	.quad	0x3ff107e9d94d0dd0              # double 1.064432
	.quad	0x401dc2c450268901              # double 7.4402020000000002
	.quad	0x401fcdd15f02c4d6              # double 7.9509939999999997
	.quad	0x40200d5410f94c88              # double 8.0260320000000007
	.quad	0x401a68c75c4a83b2              # double 6.6023230000000002
	.quad	0x4004f7a919695d92              # double 2.6209280000000001
	.quad	0x401edc9107faa045              # double 7.7153970000000002
	.quad	0x4013f938583621fb              # double 4.993379
	.quad	0x400e68a936c58eeb              # double 3.801104
	.quad	0x3fd2a28bb0a2ca9b              # double 0.29117100000000001
	.quad	0x400dd02363b25700              # double 3.7266300000000001
	.quad	0x40151d31fcd24e16              # double 5.278511
	.quad	0x4008c55e28aa4335              # double 3.096371
	.quad	0x3ff3fa871a3b14a9              # double 1.248664
	.quad	0x40211043a2163fdd              # double 8.5317659999999993
	.quad	0x3fed5f5f0b28522f              # double 0.91789200000000004
	.quad	0x3ff2f94b7b28954a              # double 1.1858629999999999
	.quad	0x401137d1fe64f54d              # double 4.3045119999999999
	.quad	0x3fffa1b6d43d0397              # double 1.9769810000000001
	.quad	0x401d3e221c8a7a42              # double 7.3106770000000001
	.quad	0x3ff3a03d57796399              # double 1.226621
	.quad	0x40142adc4c9c90c5              # double 5.0418560000000001
	.quad	0x3ff797eed45e9186              # double 1.474593
	.quad	0x4023aede76427c7c              # double 9.8415409999999994
	.quad	0x4015c2f7f498c3b1              # double 5.4403990000000002
	.quad	0x401f65daad601ffb              # double 7.8494669999999997
	.quad	0x3ff944f09528f191              # double 1.579331
	.quad	0x40217c73abc94706              # double 8.7430699999999995
	.quad	0x3febb892ee84ad79              # double 0.86628099999999997
	.quad	0x3fdeaaa7ded6ba8c              # double 0.47916599999999998
	.quad	0x4020451dabe2717a              # double 8.1349920000000004
	.quad	0x40094508b32ce896              # double 3.1587079999999998
	.quad	0x400337ebaf102364              # double 2.4023050000000001
	.quad	0x4013a1947cfa26a2              # double 4.9077929999999999
	.quad	0x3fdf54b8bef8ceb3              # double 0.48954599999999998
	.quad	0x401eab877ab32485              # double 7.6675089999999999
	.quad	0x3fea88f217093101              # double 0.82921699999999998
	.quad	0x40220a8e2e2b8c76              # double 9.0206160000000004
	.quad	0x40197ce39b456b44              # double 6.3719619999999999
	.quad	0x4018dab5807fed20              # double 6.2135829999999999
	.quad	0x401272fa5093964a              # double 4.6122829999999997
	.quad	0x400ef7481b21c476              # double 3.870743
	.quad	0x40108973d9ec7000              # double 4.1342309999999998
	.quad	0x4010e2e126202539              # double 4.2215619999999996
	.quad	0x4006a9ff0cbaf966              # double 2.8330060000000001
	.quad	0x3fc856de33269df9              # double 0.19015099999999999
	.quad	0x4014fbf83382e44b              # double 5.2460639999999996
	.quad	0x400724d44567125e              # double 2.8929830000000001
	.quad	0x40052f2c7325918a              # double 2.648034
	.quad	0x3ff903f811f4f50a              # double 1.563469
	.quad	0x40219a3315d701da              # double 8.8011710000000001
	.quad	0x3ff31d14e3bcd35b              # double 1.1946000000000001
	.quad	0x3ff036f7e3d1cc10              # double 1.01342
	.quad	0x400ad1526d8b1dd6              # double 3.3522080000000001
	.quad	0x40111f92af9a8cdf              # double 4.2808330000000003
	.quad	0x40224ea854477ff1              # double 9.1536279999999994
	.quad	0x402120aeb80ecfa7              # double 8.5638330000000007
	.quad	0x3fcf641700cd8559              # double 0.24524199999999999
	.quad	0x3fec3413986338b4              # double 0.88135699999999994
	.quad	0x4013ed1e53a81dc1              # double 4.9815610000000001
	.quad	0x4018fb23dd54da4d              # double 6.2452540000000001
	.quad	0x40204daf8df7a4e8              # double 8.1517300000000006
	.quad	0x4017e97e132b55ef              # double 5.9780199999999999
	.quad	0x4008ea2fcefaa476              # double 3.1143489999999998
	.quad	0x401f0e071c53f39d              # double 7.7636989999999999
	.quad	0x4010ed3804534bd7              # double 4.2316589999999996
	.quad	0x40217f8e9f6a93f3              # double 8.7491350000000008
	.quad	0x3ff97e846a5d6bec              # double 1.593388
	.quad	0x4021000d1b71758e              # double 8.5000999999999998
	.quad	0x40161625204af923              # double 5.5216260000000004
	.quad	0x3ff0ee59af9ebe9d              # double 1.0581910000000001
	.quad	0x40217a8869c66d37              # double 8.7393219999999996
	.quad	0x40204b0ea18372e7              # double 8.1465960000000006
	.quad	0x401af0d0edc3bd5a              # double 6.7351720000000004
	.quad	0x400ae29bf162ae4b              # double 3.360649
	.quad	0x400e6d35a858793e              # double 3.8033250000000001
	.quad	0x4018d88df37329c3              # double 6.2114789999999998
	.quad	0x4020534bd76ee73e              # double 8.1626879999999993
	.quad	0x401d11e364bec67a              # double 7.2674690000000002
	.quad	0x40217ffac1d29dc7              # double 8.7499599999999997
	.quad	0x401e602539756c94              # double 7.5938920000000003
	.quad	0x401d1f4ba51a005c              # double 7.2805619999999998
	.quad	0x4011f08c8259e1f4              # double 4.4849110000000003
	.quad	0x4009f7110e453d21              # double 3.245638
	.quad	0x400c5285a921ccd9              # double 3.5402939999999998
	.quad	0x4020e237cdcca70d              # double 8.4418319999999998
	.quad	0x400bbf162ae4b018              # double 3.4683039999999998
	.quad	0x4011f3361565c2d2              # double 4.4875109999999996
	.quad	0x401e3dd54da4ce81              # double 7.5603839999999999
	.quad	0x401cd1c087442c80              # double 7.2048360000000002
	.quad	0x4009266a98244e94              # double 3.1437580000000001
	.quad	0x40179ff21b3aeee9              # double 5.9061969999999997
	.quad	0x4021b0ab0c88a47f              # double 8.8450550000000003
	.quad	0x400dc1beb18116ec              # double 3.7196020000000001
	.quad	0x3fea6d8f4f93bc0a              # double 0.825874
	.quad	0x4011fa3d70a3d70a              # double 4.4943749999999998
	.quad	0x40100b94d9407896              # double 4.0113099999999999
	.quad	0x3ffaf404ea4a8c15              # double 1.6845749999999999
	.quad	0x40144e54b48d3ae7              # double 5.0764950000000004
	.quad	0x401644463065f959              # double 5.5666739999999999
	.quad	0x4023c9bc33f85511              # double 9.8940140000000003
	.quad	0x401f6d0a24463066              # double 7.856484
	.quad	0x400ade56473471f8              # double 3.3585630000000002
	.quad	0x40078c23fab10ba6              # double 2.9434279999999999
	.quad	0x40184dad31fcd24e              # double 6.0758559999999999
	.quad	0x3ffda7c17a89331a              # double 1.853456
	.quad	0x401a2c6cdaf4adbc              # double 6.5433839999999996
	.quad	0x4011cf8a4c1ebc84              # double 4.4526760000000003
	.quad	0x3fed578a2a90cd42              # double 0.91693599999999997
	.quad	0x401df231832fcac9              # double 7.486517
	.quad	0x401f806d50657321              # double 7.8754169999999996
	.quad	0x401cc88fc9363f57              # double 7.1958609999999998
	.quad	0x402166f459d9902a              # double 8.7010830000000006
	.quad	0x4019702a77a2cecd              # double 6.3595370000000004
	.quad	0x3ff5a2ae4b018612              # double 1.352217
	.quad	0x4019b00d5e8d5411              # double 6.421926
	.quad	0x4002a42f1ed17c5f              # double 2.330168
	.quad	0x40142229e90795f6              # double 5.0333629999999996
	.quad	0x40129126634117f8              # double 4.6417479999999998
	.quad	0x400cf07bfe7e1fc1              # double 3.6174240000000002
	.quad	0x400a2d4b2745bf27              # double 3.272116
	.quad	0x4014a18d25edd053              # double 5.1577650000000004
	.quad	0x4022e68123810e88              # double 9.4502039999999993
	.quad	0x4021e1c304ccee5b              # double 8.9409410000000005
	.quad	0x400e366f0cfe1544              # double 3.7765789999999999
	.quad	0x401b0af709b738e7              # double 6.7607080000000002
	.quad	0x4021393165d39970              # double 8.6117050000000006
	.quad	0x40161f850df15a4b              # double 5.5307810000000002
	.quad	0x402011f3a57eaa2a              # double 8.0350619999999999
	.quad	0x40078e358298cc14              # double 2.9444379999999999
	.quad	0x40148ff540895d0b              # double 5.1405839999999996
	.quad	0x4015f6559f6ec5b0              # double 5.4905609999999996
	.quad	0x4008a514c22ee419              # double 3.080606
	.quad	0x3ffd8fd6d7e889c2              # double 1.8476170000000001
	.quad	0x402318813cab81f9              # double 9.5478609999999992
	.quad	0x4019de642bf9830e              # double 6.4671789999999998
	.quad	0x4009f06cca2db61c              # double 3.2423950000000001
	.quad	0x401189e16d6dc1a4              # double 4.3846489999999996
	.quad	0x401c981d3aa369fd              # double 7.148549
	.quad	0x3fd5ecbfb15b573f              # double 0.34257500000000002
	.quad	0x400acbd76ee73e68              # double 3.349532
	.quad	0x40085c792d1287c2              # double 3.045153
	.quad	0x402348f42fe82518              # double 9.6424880000000001
	.quad	0x3ff607a17f4128bf              # double 1.3768629999999999
	.quad	0x3fffbb19e731d2e1              # double 1.983179
	.quad	0x4022d9ecd4aa10e0              # double 9.4256349999999998
	.quad	0x40084262cba732df              # double 3.0324149999999999
	.quad	0x400623b1d0c80410              # double 2.7674289999999999
	.quad	0x4020f9e8a2ec28b3              # double 8.4881030000000006
	.quad	0x401002e87d2c7b89              # double 4.00284
	.quad	0x4016d21294573a79              # double 5.7051489999999996
	.quad	0x401f951654d61b2a              # double 7.8955929999999999
	.quad	0x3ffe67c393682731              # double 1.900333
	.quad	0x400a204d98394749              # double 3.2657729999999998
	.quad	0x4008bab9f559b3d0              # double 3.0911749999999998
	.quad	0x3fe3dbb9cf9a06a7              # double 0.62057200000000001
	.quad	0x4016bea35935fc3b              # double 5.6861699999999997
	.quad	0x4023e5b5b70691ea              # double 9.9486519999999992
	.quad	0x401a979e16d6dc1a              # double 6.6480639999999998
	.quad	0x3ff3a2ee41919ac8              # double 1.2272780000000001
	.quad	0x40214889e34330d7              # double 8.6416769999999996
	.quad	0x400addbc23315d70              # double 3.3582689999999999
	.quad	0x400333e81450efdd              # double 2.4003450000000002
	.quad	0x40207fa15db3397e              # double 8.2492780000000003
	.quad	0x401933c536d655e3              # double 6.3005570000000004
	.quad	0x400078adab9f559b              # double 2.0589249999999999
	.quad	0x40219c024b33daf9              # double 8.8047050000000002
	.quad	0x400099ac79702e66              # double 2.0750359999999999
	.quad	0x401924873365881a              # double 6.2856719999999999
	.quad	0x401dc1e85fd04a30              # double 7.4393630000000002
	.quad	0x4015ae6d9be4cd75              # double 5.4203400000000004
	.quad	0x40068cf6be37de94              # double 2.8188300000000002
	.quad	0x4018a9e236c15d2d              # double 6.165902
	.quad	0x401374b61fe21d97              # double 4.8639760000000001
	.quad	0x3fedd8e64b231401              # double 0.93272699999999997
	.quad	0x3ff5b160956c0d6f              # double 1.3558049999999999
	.quad	0x3fc30f16f4384ba1              # double 0.148898
	.quad	0x401cf948dc11e42e              # double 7.2434419999999999
	.quad	0x400542e44b6e935c              # double 2.6576620000000002
	.quad	0x3fdc54c985f06f69              # double 0.44267499999999999
	.quad	0x3ff48327674d1633              # double 1.2820199999999999
	.quad	0x40222d948dc11e43              # double 9.0890240000000002
	.quad	0x401bbcfaeff5c6c1              # double 6.9345509999999999
	.quad	0x3fe92396073de1e3              # double 0.78559400000000001
	.quad	0x40218b571d1d4739              # double 8.7721490000000006
	.quad	0x40200121ccd96207              # double 8.0022110000000009
	.quad	0x3fda531550ca1cef              # double 0.41132099999999999
	.quad	0x4022e00a7c5ac472              # double 9.4375800000000005
	.quad	0x402373c2fc69728a              # double 9.7260969999999993
	.quad	0x400479e83e425aee              # double 2.5595249999999998
	.quad	0x40120f4b1ee24357              # double 4.5149350000000004
	.quad	0x402052ad1d041cc5              # double 8.1614769999999996
	.quad	0x4012126aec0724b7              # double 4.5179859999999996
	.quad	0x4020059d99029ae5              # double 8.0109680000000001
	.quad	0x4021e3dd97f62b6b              # double 8.9450500000000002
	.quad	0x40221efed634549b              # double 9.0605379999999993
	.quad	0x40225367c286f8ad              # double 9.1629009999999997
	.quad	0x4020ee20ab713272              # double 8.4650929999999995
	.quad	0x3ff697de0d66f0d0              # double 1.412077
	.quad	0x40169ec3547e0696              # double 5.6550419999999999
	.quad	0x40216f23cc8de2ac              # double 8.7170699999999996
	.quad	0x3ff065668c261390              # double 1.024756
	.quad	0x4001bf9830e3cd9a              # double 2.2185519999999999
	.quad	0x4017735935fc3b4f              # double 5.8626449999999997
	.quad	0x40212310129cbab6              # double 8.5684819999999995
	.quad	0x40127ff4ba51a006              # double 4.6249570000000002
	.quad	0x3ff795e9e1b089a0              # double 1.4741
	.quad	0x40118d4ae429e0a4              # double 4.3879809999999999
	.quad	0x40221ccdfaca361a              # double 9.0562590000000007
	.quad	0x4013ef8d2e514c23              # double 4.9839370000000001
	.quad	0x401faf123c42a66e              # double 7.9209680000000002
	.quad	0x401cddb877ab3248              # double 7.2165239999999997
	.quad	0x40220a44a6223e18              # double 9.0200549999999993
	.quad	0x401e54d940789614              # double 7.5828600000000002
	.quad	0x4022f62b4959e625              # double 9.4807989999999993
	.quad	0x4022f59a30984e40              # double 9.479692
	.quad	0x40238b3a0407cc7d              # double 9.7719269999999998
	.quad	0x400a05d3996fa82f              # double 3.2528450000000002
	.quad	0x400f65931ca7d673              # double 3.9245969999999999
	.quad	0x4021a18b71b8aa00              # double 8.8155169999999998
	.quad	0x400db3c36113404f              # double 3.7127750000000002
	.quad	0x4019305ccc89b0ee              # double 6.2972289999999997
	.quad	0x40235b3482be8bc1              # double 9.6781349999999992
	.quad	0x40206fe08aefb2ab              # double 8.2185100000000002
	.quad	0x4023d1322f2734f8              # double 9.9085859999999996
	.quad	0x3ff30e054690de09              # double 1.190923
	.quad	0x400b5f9f01b866e4              # double 3.4216899999999999
	.quad	0x401540e065300581              # double 5.3133559999999997
	.quad	0x400101309c7ffde7              # double 2.1255809999999999
	.quad	0x4010e36f3b213e3e              # double 4.2221039999999999
	.quad	0x4020453671ac14c6              # double 8.1351809999999993
	.quad	0x4015b88765ba6efc              # double 5.4302039999999998
	.quad	0x402398d2c386d2ed              # double 9.7984829999999991
	.quad	0x4022de6256366d7a              # double 9.4343439999999994
	.quad	0x4011c83e425aee63              # double 4.4455499999999999
	.quad	0x3ff79f7e80389f84              # double 1.4764390000000001
	.quad	0x4017967be553ac4f              # double 5.8969569999999996
	.quad	0x3fd7e553ac4f7ec3              # double 0.37337199999999998
	.quad	0x40062c2bd7f51efb              # double 2.7715679999999998
	.quad	0x40123d3a604e1e71              # double 4.559793
	.quad	0x3ff5c101f31f46ed              # double 1.359621
	.quad	0x40046dc55000c954              # double 2.5535990000000002
	.quad	0x4015c5d28d002e23              # double 5.4431859999999999
	.quad	0x400da0956c0d6f54              # double 3.7034099999999999
	.quad	0x401ea85ec3dab5c4              # double 7.6644240000000003
	.quad	0x40137049235f8099              # double 4.8596539999999999
	.quad	0x3fd85f56a7ac81d4              # double 0.38081900000000002
	.quad	0x401b8ba6266fd652              # double 6.8863760000000003
	.quad	0x40019e225fa658c5              # double 2.2022140000000001
	.quad	0x401b599d883ba344              # double 6.8375149999999998
	.quad	0x3ff40366516db0de              # double 1.2508300000000001
	.quad	0x3fea0012dfd694cd              # double 0.81250900000000004
	.quad	0x4010101c0ca600b0              # double 4.0157319999999999
	.quad	0x40206d0f1f57b41c              # double 8.213006
	.quad	0x40212ea22b3892ef              # double 8.5910810000000009
	.quad	0x402252d14a0a0f4d              # double 9.1617529999999991
	.quad	0x400dc9ca9ef5232d              # double 3.7235309999999999
	.quad	0x402223c1acde19fc              # double 9.0698369999999997
	.quad	0x400f6ca89fc6da45              # double 3.9280560000000002
	.quad	0x40230a2749f0e4da              # double 9.5198309999999999
	.quad	0x3ffe8c660a201472              # double 1.9092769999999999
	.quad	0x40168afb7e90ff97              # double 5.6357249999999999
	.quad	0x40011171e29b6b2b              # double 2.133518
	.quad	0x40148f162ae4b018              # double 5.1397329999999997
	.quad	0x400da24f6598e10d              # double 3.704253
	.quad	0x40212e5f30e7ff58              # double 8.5905699999999996
	.quad	0x4003427a63736cdf              # double 2.4074599999999999
	.quad	0x4003380ecfa69be1              # double 2.4023720000000002
	.quad	0x3fdf9491f2dc2b0f              # double 0.49344300000000002
	.quad	0x40200cbb5e0f7fd0              # double 8.0248670000000004
	.quad	0x401c1b940fecdd0e              # double 7.0269320000000004
	.quad	0x3ff6c86162f166e0              # double 1.423921
	.quad	0x40170afee6fb4c3c              # double 5.7607379999999999
	.quad	0x3fd9c17225b749ae              # double 0.40243200000000001
	.quad	0x40203db7ae5796c0              # double 8.1205420000000004
	.quad	0x3ff8887db2b34613              # double 1.533323
	.quad	0x3fe99c219eb6390d              # double 0.80030900000000005
	.quad	0x3ff52bebe1650a46              # double 1.323223
	.quad	0x40225a6d26740810              # double 9.1766140000000007
	.quad	0x4015bbaecd07852f              # double 5.4332839999999996
	.quad	0x3fa1d1b2e59af9ec              # double 0.034803000000000001
	.quad	0x4023a47cb70ac3a8              # double 9.8212639999999993
	.size	.L__constant_4499xf64, 35992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	41                              # 0x29
	.quad	41                              # 0x29
	.quad	81                              # 0x51
	.quad	81                              # 0x51
	.quad	120                             # 0x78
	.quad	120                             # 0x78
	.quad	161                             # 0xa1
	.quad	161                             # 0xa1
	.quad	196                             # 0xc4
	.quad	196                             # 0xc4
	.quad	232                             # 0xe8
	.quad	232                             # 0xe8
	.quad	277                             # 0x115
	.quad	277                             # 0x115
	.quad	315                             # 0x13b
	.quad	315                             # 0x13b
	.quad	355                             # 0x163
	.quad	355                             # 0x163
	.quad	391                             # 0x187
	.quad	391                             # 0x187
	.quad	428                             # 0x1ac
	.quad	428                             # 0x1ac
	.quad	473                             # 0x1d9
	.quad	473                             # 0x1d9
	.quad	518                             # 0x206
	.quad	518                             # 0x206
	.quad	565                             # 0x235
	.quad	565                             # 0x235
	.quad	603                             # 0x25b
	.quad	603                             # 0x25b
	.quad	644                             # 0x284
	.quad	644                             # 0x284
	.quad	682                             # 0x2aa
	.quad	682                             # 0x2aa
	.quad	721                             # 0x2d1
	.quad	721                             # 0x2d1
	.quad	760                             # 0x2f8
	.quad	760                             # 0x2f8
	.quad	803                             # 0x323
	.quad	803                             # 0x323
	.quad	845                             # 0x34d
	.quad	845                             # 0x34d
	.quad	879                             # 0x36f
	.quad	879                             # 0x36f
	.quad	914                             # 0x392
	.quad	914                             # 0x392
	.quad	953                             # 0x3b9
	.quad	953                             # 0x3b9
	.quad	994                             # 0x3e2
	.quad	994                             # 0x3e2
	.quad	1039                            # 0x40f
	.quad	1039                            # 0x40f
	.quad	1080                            # 0x438
	.quad	1080                            # 0x438
	.quad	1118                            # 0x45e
	.quad	1118                            # 0x45e
	.quad	1159                            # 0x487
	.quad	1159                            # 0x487
	.quad	1194                            # 0x4aa
	.quad	1194                            # 0x4aa
	.quad	1234                            # 0x4d2
	.quad	1234                            # 0x4d2
	.quad	1274                            # 0x4fa
	.quad	1274                            # 0x4fa
	.quad	1312                            # 0x520
	.quad	1312                            # 0x520
	.quad	1353                            # 0x549
	.quad	1353                            # 0x549
	.quad	1394                            # 0x572
	.quad	1394                            # 0x572
	.quad	1433                            # 0x599
	.quad	1433                            # 0x599
	.quad	1470                            # 0x5be
	.quad	1470                            # 0x5be
	.quad	1515                            # 0x5eb
	.quad	1515                            # 0x5eb
	.quad	1553                            # 0x611
	.quad	1553                            # 0x611
	.quad	1590                            # 0x636
	.quad	1590                            # 0x636
	.quad	1632                            # 0x660
	.quad	1632                            # 0x660
	.quad	1671                            # 0x687
	.quad	1671                            # 0x687
	.quad	1712                            # 0x6b0
	.quad	1712                            # 0x6b0
	.quad	1757                            # 0x6dd
	.quad	1757                            # 0x6dd
	.quad	1796                            # 0x704
	.quad	1796                            # 0x704
	.quad	1835                            # 0x72b
	.quad	1835                            # 0x72b
	.quad	1877                            # 0x755
	.quad	1877                            # 0x755
	.quad	1918                            # 0x77e
	.quad	1918                            # 0x77e
	.quad	1959                            # 0x7a7
	.quad	1959                            # 0x7a7
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	74                              # 0x4a
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
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
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	4                               # 0x4
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
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
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
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
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	96                              # 0x60
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
	.quad	28                              # 0x1c
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	98                              # 0x62
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x401131240746455f              # double 4.2979890000000003
	.quad	0x40202bea2d2fe3f3              # double 8.0857709999999994
	.quad	0x4022a3519bd4067d              # double 9.3189820000000001
	.quad	0x3fc5c5d63886594b              # double 0.1701
	.quad	0x3fb83ff69014b59a              # double 0.094726000000000004
	.quad	0x4017b804534bd76f              # double 5.9297040000000001
	.quad	0x400b0b0a6fc58ab9              # double 3.3803909999999999
	.quad	0x40057d1244a6223e              # double 2.68607
	.quad	0x401cf583a53b8e4c              # double 7.2397600000000004
	.quad	0x40089f10ecb74de0              # double 3.0776690000000002
	.quad	0x401ec37e6f71a7e3              # double 7.6909119999999999
	.quad	0x3ff14e7ab7564303              # double 1.0816600000000001
	.quad	0x40128e60807357e6              # double 4.6390399999999996
	.quad	0x4003745cfede97d0              # double 2.4318179999999998
	.quad	0x4021740357a35504              # double 8.7265879999999995
	.quad	0x3ffe39dc2f405f6c              # double 1.8891260000000001
	.quad	0x40219536501e2585              # double 8.7914300000000001
	.quad	0x3ffe45cee17a02fb              # double 1.8920429999999999
	.quad	0x401c572756861e93              # double 7.0851110000000004
	.quad	0x401bc0df15a4acf3              # double 6.9383509999999999
	.quad	0x4014ccbee807bbb6              # double 5.1999469999999999
	.quad	0x3ff509203a322af5              # double 1.3147279999999999
	.quad	0x4013abfd71b04684              # double 4.9179589999999997
	.quad	0x3ff9b8e5c4eb56fc              # double 1.6076410000000001
	.quad	0x400ea85fd04a2fcf              # double 3.832214
	.quad	0x4003dbd512ec6bcf              # double 2.4823400000000002
	.quad	0x40202207b352a844              # double 8.0664650000000008
	.quad	0x400fa5e2cdc011d3              # double 3.9559989999999998
	.quad	0x3ffbcfce746cb967              # double 1.7382340000000001
	.quad	0x40073b80a9de8b3b              # double 2.9040539999999999
	.quad	0x401b542c7fbacb43              # double 6.8322010000000004
	.quad	0x401658ee28672757              # double 5.5868460000000004
	.quad	0x4014121294573a79              # double 5.0176489999999996
	.quad	0x40186127f5e84f09              # double 6.0948789999999997
	.quad	0x4019d66dbd72bcb6              # double 6.459403
	.quad	0x4020b5cb9a9da598              # double 8.3550690000000003
	.quad	0x40192304ccee5abc              # double 6.284198
	.quad	0x40002e685db76b3c              # double 2.0226600000000001
	.quad	0x401ee39042d8c2a4              # double 7.7222299999999997
	.quad	0x4021592ccf6be37e              # double 8.6741700000000002
	.quad	0x4002c8c0485a0be5              # double 2.348023
	.quad	0x3ff1b1465e892253              # double 1.10578
	.quad	0x400a10468448cf7d              # double 3.2579470000000001
	.quad	0x3ffff94317acc4f0              # double 1.9983550000000001
	.quad	0x4015a7ba237cdcca              # double 5.4137959999999996
	.quad	0x4016ef8ec0f88334              # double 5.733943
	.quad	0x3ff66eed8904f6e0              # double 1.4020820000000001
	.quad	0x40037ebf22c01e69              # double 2.4368880000000002
	.quad	0x3fddf3cb3e5753a4              # double 0.468005
	.quad	0x40195f07bfe7e1fc              # double 6.342803
	.quad	0x40231cbad7d7c2ca              # double 9.5561129999999999
	.quad	0x3ffdfc947064ecea              # double 1.8741650000000001
	.quad	0x402033d48cb4aec9              # double 8.1012310000000003
	.quad	0x401a9b549f94855e              # double 6.6516900000000003
	.quad	0x400b51a1986b9c30              # double 3.4148589999999999
	.quad	0x400673a2595bbbe8              # double 2.8064619999999998
	.quad	0x3fcc642396073de2              # double 0.221806
	.quad	0x40211aa433508f65              # double 8.5520340000000008
	.quad	0x401ef333b96af039              # double 7.7375020000000001
	.quad	0x401fe79e59f2ba9d              # double 7.9761899999999998
	.quad	0x40015f20a73f748a              # double 2.171449
	.quad	0x401ef7082491afc0              # double 7.7412419999999997
	.quad	0x401ab875d56f32be              # double 6.6801370000000002
	.quad	0x402066f7a0b5ed8d              # double 8.2011079999999996
	.quad	0x400289331a08bfc2              # double 2.3169919999999999
	.quad	0x400a073a365cb35f              # double 3.2535289999999999
	.quad	0x4018511ba3ca7504              # double 6.0792070000000002
	.quad	0x4018ae2eb1c432ca              # double 6.1700999999999997
	.quad	0x401ee5e8d5410f95              # double 7.7245210000000001
	.quad	0x40213ad2135daad6              # double 8.614884
	.quad	0x3fecd0c1b97353b5              # double 0.90048300000000003
	.quad	0x400ef3d96638433d              # double 3.8690669999999998
	.quad	0x40148cdea033e78e              # double 5.1375679999999999
	.quad	0x40101f3387160957              # double 4.0304700000000002
	.quad	0x40141661f18c9fb6              # double 5.0218579999999999
	.quad	0x402024bbe4473cd5              # double 8.0717459999999992
	.quad	0x400d0ad362e90364              # double 3.6302859999999999
	.quad	0x401e4bd4cfd08d4c              # double 7.5740540000000003
	.quad	0x401721116a8b8f15              # double 5.7822930000000001
	.quad	0x3ff7cb19a415f45e              # double 1.487085
	.quad	0x40065a9f383f0baf              # double 2.7942490000000002
	.quad	0x402098c0ce91c8eb              # double 8.2983460000000004
	.quad	0x40033cc532a497fa              # double 2.4046729999999998
	.quad	0x402025436b8f9b13              # double 8.0727799999999998
	.quad	0x40177f2dc2b0ea18              # double 5.8741979999999998
	.quad	0x401cbfbd273d5bab              # double 7.1872449999999999
	.quad	0x40205169c23b7953              # double 8.1590100000000003
	.quad	0x4002871cda2b5a21              # double 2.3159730000000001
	.quad	0x40159bfe7e1fc090              # double 5.4023380000000003
	.quad	0x400a99c62a1b5c7d              # double 3.3250850000000001
	.quad	0x40188712e40852b5              # double 6.1319080000000001
	.quad	0x402096bf8769ec2d              # double 8.2944300000000002
	.quad	0x400fa61bf37b8d3f              # double 3.956108
	.quad	0x400985bd944aa540              # double 3.1903030000000001
	.quad	0x3fe5d0dae3e6c4c6              # double 0.68174500000000005
	.quad	0x401585eedcc20d56              # double 5.3807939999999999
	.quad	0x3f8b0d51f81a5871              # double 0.013209
	.quad	0x3ff0b3d3a1d323ff              # double 1.043903
	.quad	0x4008e2bf9830e3ce              # double 3.1107170000000002
	.quad	0x3ff31b8dc55000c9              # double 1.1942269999999999
	.quad	0x402070fd3b29a1ba              # double 8.220682
	.quad	0x401cec0fcb4f1e4b              # double 7.2305289999999998
	.quad	0x40174cfe58601366              # double 5.825189
	.quad	0x4018762f166e008f              # double 6.1154140000000003
	.quad	0x4018ae136e71cda3              # double 6.1699960000000003
	.quad	0x40125bdc26dce39b              # double 4.5897069999999998
	.quad	0x3fff5f83be6601bd              # double 1.9608190000000001
	.quad	0x40142c5eb313be23              # double 5.0433300000000001
	.quad	0x40193fd2a62aa194              # double 6.3123269999999998
	.quad	0x401441044f1a1987              # double 5.0634930000000002
	.quad	0x401228e15011904b              # double 4.5399219999999998
	.quad	0x4004305f28848388              # double 2.5236190000000001
	.quad	0x401a386d2ed783e0              # double 6.555104
	.quad	0x401b66084a515cea              # double 6.8496410000000001
	.quad	0x401ea2014727dcbe              # double 7.6582080000000001
	.quad	0x401d5154434e336a              # double 7.3294230000000002
	.quad	0x3fb74c09c3ce208a              # double 0.091004000000000001
	.quad	0x4017e6dc5d638866              # double 5.9754500000000004
	.quad	0x400f2fbd273d5bab              # double 3.8983099999999999
	.quad	0x401035df6555c52e              # double 4.0526099999999996
	.quad	0x401e0b7457c0b136              # double 7.5111860000000004
	.quad	0x4007fd6a593a2df9              # double 2.9987379999999999
	.quad	0x4019d51ac9afe1da              # double 6.4581099999999996
	.quad	0x40079f090f733a8a              # double 2.9526539999999999
	.quad	0x40207f090f733a8a              # double 8.2481159999999996
	.quad	0x400f1743632c1f43              # double 3.8863590000000001
	.quad	0x4020102d38476f2a              # double 8.0315949999999994
	.quad	0x40119e25c810a56a              # double 4.4044410000000003
	.quad	0x4011932ce89656ef              # double 4.393726
	.quad	0x3f932873bc903ea7              # double 0.018709
	.quad	0x40072e4c942d490e              # double 2.8976069999999998
	.quad	0x3fd54e379b77c02b              # double 0.332899
	.quad	0x3fe6fbacb4289119              # double 0.71822200000000003
	.quad	0x400aebf7f06705c9              # double 3.3652190000000002
	.quad	0x4017aecfa69be09c              # double 5.9207140000000003
	.quad	0x401c3c70867ad8e4              # double 7.0590229999999998
	.quad	0x4022853005814941              # double 9.2601320000000005
	.quad	0x40221cf206423960              # double 9.0565339999999992
	.quad	0x40065c0a06e9ff0d              # double 2.7949410000000001
	.quad	0x4011f696e58a32f4              # double 4.4908099999999997
	.quad	0x3ff901abd1aa821f              # double 1.562908
	.quad	0x3ffd431ad2135dab              # double 1.828883
	.quad	0x400cacc9a77e5eab              # double 3.5843690000000001
	.quad	0x40211fe34b945309              # double 8.5622810000000005
	.quad	0x400fc7e9d94d0dd0              # double 3.9726140000000001
	.quad	0x4012ad4f15e7c8d2              # double 4.6692470000000004
	.quad	0x402397485e3da2f9              # double 9.7954740000000004
	.quad	0x4010e909289dadfb              # double 4.2275739999999997
	.quad	0x4020a6fdeb52c9d1              # double 8.3261559999999992
	.quad	0x401a3c9e6687f456              # double 6.5591980000000003
	.quad	0x3fe4e6ddf00abf77              # double 0.65318200000000004
	.quad	0x40068f37fbefd007              # double 2.819931
	.quad	0x402140e8a71de69b              # double 8.6267750000000003
	.quad	0x4010c8112ba16e7a              # double 4.1953779999999998
	.quad	0x4013da9ef5232d2c              # double 4.9634970000000003
	.quad	0x3ff96fef7c243dcd              # double 1.589828
	.quad	0x4000bf5b5fa22707              # double 2.0934360000000001
	.quad	0x4017cf77292c4934              # double 5.9526029999999999
	.quad	0x402146df61240746              # double 8.6384229999999995
	.quad	0x401b6dd2ae8e1d65              # double 6.8572490000000004
	.quad	0x401e3a04d12018a4              # double 7.5566589999999998
	.quad	0x401900121682f944              # double 6.2500689999999999
	.quad	0x3fb2c58eeae9ee46              # double 0.073327000000000003
	.quad	0x4022e8a159817b96              # double 9.4543560000000006
	.quad	0x402058c5436b8f9b              # double 8.1733799999999999
	.quad	0x400dd20afa2f05a7              # double 3.72756
	.quad	0x400adfa658c4bd34              # double 3.3592040000000001
	.quad	0x4012cc0df58c08b7              # double 4.6992719999999997
	.quad	0x401aeb2a6b0d9514              # double 6.729654
	.quad	0x400562be0589acbd              # double 2.6732140000000002
	.quad	0x40239c1b10fd7e46              # double 9.8048940000000009
	.quad	0x4020ed82fd75e204              # double 8.4638899999999992
	.quad	0x40020358afc47e4a              # double 2.2516340000000001
	.quad	0x400db8a2a90cd424              # double 3.7151540000000001
	.quad	0x3ff976512a94ff00              # double 1.591386
	.quad	0x4006f186db50f40e              # double 2.8679329999999998
	.quad	0x401ac1244a6223e2              # double 6.6886150000000004
	.quad	0x40027aacd9e83e42              # double 2.3098999999999998
	.quad	0x4012434e7685985b              # double 4.5657290000000001
	.quad	0x3ffb4780fdc1615f              # double 1.7049570000000001
	.quad	0x401e682f51266341              # double 7.6017429999999999
	.quad	0x4021721d96e9bbf1              # double 8.7228820000000002
	.quad	0x401506efc371da38              # double 5.2567740000000001
	.quad	0x40076e8fb00bcbe6              # double 2.9289849999999999
	.quad	0x3ff8379fa97e132b              # double 1.5135799999999999
	.quad	0x4019c36c15d2d01c              # double 6.440842
	.quad	0x401f90ce0b912dba              # double 7.8914109999999997
	.quad	0x3ffbd88f42fe8251              # double 1.7403709999999999
	.quad	0x4001df67f4dbdf8f              # double 2.2340849999999999
	.quad	0x401f825072085b18              # double 7.8772599999999997
	.quad	0x4001da34ca0c282c              # double 2.2315459999999998
	.quad	0x4008586ec17ebaf1              # double 3.04318
	.quad	0x4023b7eaa2a0a958              # double 9.8592119999999994
	.quad	0x4008eba732df505d              # double 3.115065
	.quad	0x4011cf7b17ce52df              # double 4.4526180000000002
	.quad	0x401a59420b3d4ae4              # double 6.5871659999999999
	.quad	0x3feb5cc857f3061c              # double 0.85507599999999994
	.quad	0x3fd1e22e5de15ca7              # double 0.27943000000000001
	.quad	0x400a94d594f26aec              # double 3.322673
	.quad	0x4018223b7952d235              # double 6.0334300000000001
	.quad	0x4021dc5c9a34ca0c              # double 8.9303939999999997
	.quad	0x3fc9d9fd36f7e3d2              # double 0.20196500000000001
	.quad	0x400ba8e4fb97bb73              # double 3.457468
	.quad	0x3fe7fa0f9096bb99              # double 0.74927500000000002
	.quad	0x40178b61fe21d96f              # double 5.8861160000000003
	.quad	0x401dce8fb00bcbe6              # double 7.4517199999999999
	.quad	0x400e3f0fe047d3d4              # double 3.7807919999999999
	.quad	0x401cada5daf07bfe              # double 7.1695779999999996
	.quad	0x40014fb5d031055c              # double 2.1639210000000002
	.quad	0x40221878fabda0e0              # double 9.0477980000000002
	.quad	0x4011ddf15a4acf31              # double 4.4667409999999999
	.quad	0x4005eb8066c2acb8              # double 2.7399909999999998
	.quad	0x4023a70739b024f6              # double 9.8262269999999994
	.quad	0x401ea34d6a161e4f              # double 7.6594749999999995
	.quad	0x4014bcaab8a5ce5b              # double 5.1842449999999998
	.quad	0x400e8c5197a24895              # double 3.8185150000000001
	.quad	0x401729b994e1a3f4              # double 5.7907469999999996
	.quad	0x401a58b0d0edc3bd              # double 6.5866119999999997
	.quad	0x3fe703fd50225743              # double 0.71923700000000002
	.quad	0x40030ec0f88333fd              # double 2.3822040000000002
	.quad	0x400b3f83382e44b7              # double 3.406012
	.quad	0x400692a9d627bf62              # double 2.8216130000000001
	.quad	0x3fb9620685553ef7              # double 0.099152000000000004
	.quad	0x400e6a88effe2a3d              # double 3.802019
	.quad	0x401ec7d6733ebbfd              # double 7.6951539999999996
	.quad	0x4011e27913e81451              # double 4.4711650000000001
	.quad	0x400c0e81882adc4d              # double 3.5070830000000002
	.quad	0x3feb6685db76b3bc              # double 0.85626500000000005
	.quad	0x3fe70583621fafc9              # double 0.71942300000000003
	.quad	0x4022c81e68a0d34a              # double 9.3908570000000005
	.quad	0x4013c0bf1a5ca298              # double 4.9382289999999998
	.quad	0x4012d42784a9478d              # double 4.7071820000000004
	.quad	0x4020691105e1c151              # double 8.2052080000000007
	.quad	0x4014d3d7d3910c2c              # double 5.2068779999999997
	.quad	0x4010221c475e6363              # double 4.0333110000000003
	.quad	0x3fe504ba0e842742              # double 0.65682700000000005
	.quad	0x401835061416377a              # double 6.0517810000000001
	.quad	0x4016f5942917507f              # double 5.7398230000000003
	.quad	0x401d690afe60c38f              # double 7.3525809999999998
	.quad	0x3fde2ee84ad794a7              # double 0.471613
	.quad	0x4020840724b76f6d              # double 8.2578669999999992
	.quad	0x400af5ca6ca03c4b              # double 3.370015
	.quad	0x3ff339cb6848beb6              # double 1.2016100000000001
	.quad	0x4013cb6e0d23d4f1              # double 4.9486619999999997
	.quad	0x4022523e18698351              # double 9.1606299999999994
	.quad	0x4020ca6698bb4d49              # double 8.3953140000000008
	.quad	0x40198bd512ec6bcf              # double 6.3865550000000004
	.quad	0x4022c0bd44998d04              # double 9.3764439999999993
	.quad	0x4023aff62b6ae7d5              # double 9.8436749999999992
	.quad	0x401a498aa8650e78              # double 6.5718180000000004
	.quad	0x3ff8dadc8fb86f48              # double 1.5534330000000001
	.quad	0x401b50d77b7c7821              # double 6.8289470000000003
	.quad	0x4001f569f4906035              # double 2.244831
	.quad	0x40234e4dc22ab25b              # double 9.6529369999999996
	.quad	0x400127b24638c975              # double 2.1443829999999999
	.quad	0x4013783e425aee63              # double 4.8674249999999999
	.quad	0x4012c304ccee5abc              # double 4.690448
	.quad	0x402181f1f14983d8              # double 8.7537990000000008
	.quad	0x3fe0ccfd08d4bad8              # double 0.52502300000000002
	.quad	0x400b726aec0724b7              # double 3.4308679999999998
	.quad	0x3fc56aceaaf35e31              # double 0.167322
	.quad	0x3ffe087442c7fbad              # double 1.8770640000000001
	.quad	0x400dcfe3f359ff50              # double 3.7265090000000001
	.quad	0x3fecd8d5842b734b              # double 0.90146899999999996
	.quad	0x40234be5d9e40c84              # double 9.6482379999999992
	.quad	0x3fff0feef5ec80c7              # double 1.9413899999999999
	.quad	0x40073dc9c4da9004              # double 2.90517
	.quad	0x4023eead2dcb1466              # double 9.9661650000000002
	.quad	0x40115583e8576cce              # double 4.3335109999999997
	.quad	0x4012f9731098d478              # double 4.7436030000000002
	.quad	0x40096c61522a6f3f              # double 3.1779199999999999
	.quad	0x3fe5e00b02928177              # double 0.68359899999999996
	.quad	0x3fa5bc23315d701e              # double 0.042451000000000003
	.quad	0x401a21a21ea35936              # double 6.532845
	.quad	0x4001342352eb5f5f              # double 2.150458
	.quad	0x401057c6fbd273d6              # double 4.0857200000000002
	.quad	0x40233352eb5f5f0b              # double 9.6002419999999997
	.quad	0x401c2a1b1960fa16              # double 7.0411190000000001
	.quad	0x4009ed4ed2cbea4f              # double 3.2408730000000001
	.quad	0x400676fda836eb4f              # double 2.8081010000000002
	.quad	0x4018b157689ca18c              # double 6.1731850000000001
	.quad	0x4003041fea8112ba              # double 2.377014
	.quad	0x40085fa2ad3e920c              # double 3.046697
	.quad	0x400fcbf444e0daa1              # double 3.9745870000000001
	.quad	0x4020096ca46e08f2              # double 8.0184069999999998
	.quad	0x4023ed18f3eccc47              # double 9.9630810000000007
	.quad	0x4006418372e6a769              # double 2.7819889999999998
	.quad	0x4004a2d83c6c97d9              # double 2.5795140000000001
	.quad	0x401c1c929aa1d756              # double 7.0279030000000002
	.quad	0x401dd710880d801b              # double 7.4600239999999998
	.quad	0x401fc8af81626b2f              # double 7.9459819999999998
	.quad	0x40222fa072d1aeb4              # double 9.0930210000000002
	.quad	0x401235553ef6b5d4              # double 4.5520829999999997
	.quad	0x401fdd18090b417d              # double 7.9659120000000003
	.quad	0x4008ea0c282c6ef4              # double 3.1142810000000001
	.quad	0x3fe12abef06b3786              # double 0.53646799999999994
	.quad	0x3fde80b673c4f3ba              # double 0.47660599999999997
	.quad	0x401ff34ca0c282c7              # double 7.987597
	.quad	0x4010d04534bd76ee              # double 4.2033889999999996
	.quad	0x400019841aac53b1              # double 2.0124590000000002
	.quad	0x3ffe63f034b0e1b5              # double 1.8993990000000001
	.quad	0x4021724c404a72eb              # double 8.7232380000000003
	.quad	0x3ff462a2c2374795              # double 1.274081
	.quad	0x401002be0589acbd              # double 4.0026780000000004
	.quad	0x4012c13404ea4a8c              # double 4.6886749999999999
	.quad	0x40138f2e05ccc89b              # double 4.8898239999999999
	.quad	0x40154c1b54195cc8              # double 5.3243229999999997
	.quad	0x401841b1d92b7fe1              # double 6.0641550000000004
	.quad	0x401f36134ce3de61              # double 7.8028079999999997
	.quad	0x4023486e19b90eaa              # double 9.6414650000000002
	.quad	0x40102e6a337a80d0              # double 4.0453270000000003
	.quad	0x3feb6698bb4d4888              # double 0.85627399999999998
	.quad	0x3fd7402d16b97fe9              # double 0.363292
	.quad	0x401805e353f7ced9              # double 6.0057499999999999
	.quad	0x4014f54b05b7cfe6              # double 5.2395440000000004
	.quad	0x400130c1b97353b5              # double 2.1488070000000001
	.quad	0x4020ca3161a1db87              # double 8.3949079999999991
	.quad	0x4001f79d0a67620f              # double 2.245905
	.quad	0x401fe9cb6848beb6              # double 7.9783150000000003
	.quad	0x4015f69728a61177              # double 5.4908109999999999
	.quad	0x4007fe14bdfd2631              # double 2.999063
	.quad	0x40209535c9e6687f              # double 8.2914259999999995
	.quad	0x4015e1c10d7be985              # double 5.4704629999999996
	.quad	0x4021077ced916873              # double 8.5146250000000006
	.quad	0x3fffb4d1633482bf              # double 1.9816450000000001
	.quad	0x3ff398969a0ad8a1              # double 1.224753
	.quad	0x3ff88f25a250f840              # double 1.534948
	.quad	0x401195e13b18dac2              # double 4.3963669999999997
	.quad	0x4021963b688bda94              # double 8.7934219999999996
	.quad	0x4018ca51e321a2e8              # double 6.197578
	.quad	0x4018705faebc408e              # double 6.1097400000000004
	.quad	0x4001fb84db9c7369              # double 2.2478120000000001
	.quad	0x3fd337867f0aa21a              # double 0.30026399999999998
	.quad	0x401e0c0ebedfa440              # double 7.5117750000000001
	.quad	0x4021544ae85b9e8c              # double 8.6646339999999995
	.quad	0x40199cc63f141206              # double 6.4031000000000002
	.quad	0x401b6ed20296b335              # double 6.8582229999999997
	.quad	0x40149e1e2de87097              # double 5.1544119999999998
	.quad	0x400e10b0f27bb2ff              # double 3.7581500000000001
	.quad	0x4020a8d6909aed57              # double 8.3297620000000006
	.quad	0x40192ec679cc74b8              # double 6.2956789999999998
	.quad	0x3ffea18bd66277c4              # double 1.9144399999999999
	.quad	0x40231fe5a78f25a2              # double 9.5622989999999994
	.quad	0x401ea3cf70153bd1              # double 7.6599709999999996
	.quad	0x4006989bd8383ada              # double 2.824516
	.quad	0x401ee621b7e0ac7e              # double 7.7247380000000003
	.quad	0x40161c9a77e5eaab              # double 5.527933
	.quad	0x4022133f42352eb6              # double 9.0375920000000001
	.quad	0x3fea1a7e30878748              # double 0.81573399999999996
	.quad	0x400c4954a7f8012e              # double 3.535806
	.quad	0x4016c19b0ab2e169              # double 5.6890679999999998
	.quad	0x3fe6461f9f01b867              # double 0.69606000000000001
	.quad	0x40154cd573647bab              # double 5.3250330000000003
	.quad	0x4017118ce2d1f1d0              # double 5.7671390000000002
	.quad	0x4009b4623d0bfa09              # double 3.2130779999999999
	.quad	0x401e0d67ba237cdd              # double 7.5130910000000001
	.quad	0x402141c1d6cf850e              # double 8.6284320000000001
	.quad	0x4013c458cd20afa3              # double 4.9417450000000001
	.quad	0x400977995ee136e7              # double 3.1833979999999999
	.quad	0x3fca51f3e89a88ad              # double 0.205626
	.quad	0x40220ded6ba8c587              # double 9.0272020000000008
	.quad	0x40190e7ff583a53c              # double 6.2641600000000004
	.quad	0x4021901cd5f99c39              # double 8.7814700000000006
	.quad	0x4006b587d6f97679              # double 2.838638
	.quad	0x400408c5004fb118              # double 2.5042819999999999
	.quad	0x3ffb4303c07ee0b1              # double 1.7038610000000001
	.quad	0x401f9db37c99ae92              # double 7.9040049999999997
	.quad	0x401efc4c5974e65c              # double 7.7463850000000001
	.quad	0x3fd7453d20f2becf              # double 0.36360100000000001
	.quad	0x4012b6e2eb1c432d              # double 4.6786000000000003
	.quad	0x40206c94d50ebaae              # double 8.2120730000000002
	.quad	0x4022930446b69db6              # double 9.2871419999999993
	.quad	0x40162071c53f39d2              # double 5.5316840000000003
	.quad	0x3ffe19f1ae2da555              # double 1.8813340000000001
	.quad	0x4012b91d57ff9b56              # double 4.6807759999999998
	.quad	0x40125af20ea5b531              # double 4.5888140000000002
	.quad	0x40091ec02f2f9874              # double 3.140015
	.quad	0x40165efc371da37f              # double 5.592759
	.quad	0x401c71fc8f32378b              # double 7.1113150000000003
	.quad	0x4019172324c83665              # double 6.2725949999999999
	.quad	0x401f796b3354c122              # double 7.8685729999999996
	.quad	0x4011f77292c49342              # double 4.4916479999999996
	.quad	0x3ffa79ee02a77a2d              # double 1.654768
	.quad	0x401969c1b54195cd              # double 6.3532780000000004
	.quad	0x4021cba29c779a6b              # double 8.8977249999999994
	.quad	0x401af7b634dad320              # double 6.7419060000000002
	.quad	0x402149ce8d972cd8              # double 8.6441540000000003
	.quad	0x40141541d8e86402              # double 5.020759
	.quad	0x4023972b884406c0              # double 9.7952539999999999
	.quad	0x4000be28aa433509              # double 2.092851
	.quad	0x402148438088509c              # double 8.64114
	.quad	0x4022239f127f5e85              # double 9.0695730000000001
	.quad	0x40058804102ff8ec              # double 2.691414
	.quad	0x4007814b599aa609              # double 2.938132
	.quad	0x40220dd76683c298              # double 9.0270340000000004
	.quad	0x401ba8bf7f06705d              # double 6.9147930000000004
	.quad	0x3ff42459103c8e26              # double 1.258874
	.quad	0x400cd6c2efd438d2              # double 3.6048640000000001
	.quad	0x401ab93b7d84901d              # double 6.6808909999999999
	.quad	0x40222538476f2a5a              # double 9.0726949999999995
	.quad	0x3ff3ebc408d8ec96              # double 1.2450600000000001
	.quad	0x3fcc4295a6c5d207              # double 0.22078200000000001
	.quad	0x40211cf93bc0a06f              # double 8.5565890000000007
	.quad	0x401d6ce24bba12b6              # double 7.3563320000000001
	.quad	0x3fff328848387df6              # double 1.949837
	.quad	0x401c2028e4fb97bb              # double 7.0314059999999996
	.quad	0x4022d7f92f2b66b6              # double 9.4218229999999998
	.quad	0x402028767d34df05              # double 8.0790290000000002
	.quad	0x4018260e51d25aab              # double 6.0371639999999998
	.quad	0x3fc8ccee5abc0e39              # double 0.19375400000000001
	.quad	0x4005bc810a569b17              # double 2.7170429999999999
	.quad	0x4023ce596c82e01a              # double 9.9030260000000006
	.quad	0x3feaf0aa21a719b5              # double 0.84187800000000002
	.quad	0x402141bf9c62a1b6              # double 8.6284150000000004
	.quad	0x40067294573a7979              # double 2.8059470000000002
	.quad	0x3ff7e6e221c8a7a4              # double 1.493868
	.quad	0x4018a387df5cf249              # double 6.1596979999999997
	.quad	0x4001a205ff1d81f1              # double 2.204113
	.quad	0x4020e00f776c4828              # double 8.4376180000000005
	.quad	0x3ffd1cc20d5629d8              # double 1.8195209999999999
	.quad	0x400dd54003254e6e              # double 3.7291259999999999
	.quad	0x401007efe0ce0b91              # double 4.0077509999999998
	.quad	0x401af57928e0c9da              # double 6.7397200000000002
	.quad	0x401b43f4a98aa865              # double 6.8163629999999999
	.quad	0x401174b72c5197a2              # double 4.3639799999999997
	.quad	0x4012c9da9c99285b              # double 4.6971230000000004
	.quad	0x40137b52c9d16fca              # double 4.8704330000000002
	.quad	0x40239f4ea8da7f3d              # double 9.811147
	.quad	0x3ff9b074a771c971              # double 1.60558
	.quad	0x4012404f2ae07e5a              # double 4.5628019999999996
	.quad	0x4014ede2ac322292              # double 5.23231
	.quad	0x4009052157689ca2              # double 3.1275050000000002
	.quad	0x4015106b37867f0b              # double 5.2660340000000003
	.quad	0x4014740fecdd0d8d              # double 5.1133420000000003
	.quad	0x4011d5e28aa43351              # double 4.4588720000000004
	.quad	0x4011a73c925785f9              # double 4.4133170000000002
	.quad	0x4011720817fc7608              # double 4.3613590000000002
	.quad	0x3ff7b5653c9abb02              # double 1.481786
	.quad	0x402101f5dfeb8d82              # double 8.5038289999999996
	.quad	0x401ba1dde37585be              # double 6.9080729999999999
	.quad	0x401e0f8fcd67fd3f              # double 7.5151969999999996
	.quad	0x401e428a1dfb938a              # double 7.5649800000000003
	.quad	0x4005e75360d02470              # double 2.7379519999999999
	.quad	0x40131e3ef284167b              # double 4.7795370000000004
	.quad	0x400d84db9c7368ad              # double 3.6898719999999998
	.quad	0x3fe68a6fc58ab92c              # double 0.704399
	.quad	0x40193d96638433d7              # double 6.3101440000000002
	.quad	0x3ffc1eaab042528b              # double 1.757487
	.quad	0x40116b4289118c19              # double 4.3547459999999996
	.quad	0x400acd16b97fe8ee              # double 3.3501409999999998
	.quad	0x40219474b838c112              # double 8.7899530000000006
	.quad	0x4022135b2d4d4025              # double 9.0378050000000005
	.quad	0x3fe92a1f8e3ac0c6              # double 0.78639199999999998
	.quad	0x401c6872b020c49c              # double 7.1020000000000003
	.quad	0x401545100a393ee6              # double 5.3174440000000001
	.quad	0x401aeb59578a2a91              # double 6.7298330000000002
	.quad	0x40235e0a84be4042              # double 9.6836739999999999
	.quad	0x40054845996744b3              # double 2.6602890000000001
	.quad	0x401d008919ef954f              # double 7.2505230000000003
	.quad	0x3fe11c6b05319829              # double 0.53471900000000006
	.quad	0x40176fbce4217d28              # double 5.8591189999999997
	.quad	0x401ff99f1ae2da55              # double 7.9937709999999997
	.quad	0x40232c47c30d306a              # double 9.5864849999999997
	.quad	0x401be0ed3d859c8d              # double 6.9696550000000004
	.quad	0x400639439de481f5              # double 2.7779609999999999
	.quad	0x3fe0ab4b72c5197a              # double 0.52090999999999998
	.quad	0x40206b7e2c55c960              # double 8.2099469999999997
	.quad	0x401df7f62b6ae7d5              # double 7.4921499999999996
	.quad	0x4020052135daad60              # double 8.0100189999999998
	.quad	0x40215928e0c9d9d3              # double 8.6741399999999995
	.quad	0x3fd70c2c5e2cdc01              # double 0.36011799999999999
	.quad	0x3f7e353f7ced9168              # double 0.0073749999999999996
	.quad	0x401b89b13165d399              # double 6.8844649999999996
	.quad	0x4016c26fa3fcc9eb              # double 5.6898790000000004
	.quad	0x400a2a29845dc832              # double 3.2705869999999999
	.quad	0x401f6f583a53b8e5              # double 7.8587350000000002
	.quad	0x4012c7b07075b3e1              # double 4.6950089999999998
	.quad	0x400bb14ec204f2ae              # double 3.461576
	.quad	0x3ff8aa3f034b0e1b              # double 1.5415639999999999
	.quad	0x4020d45e4e69f05f              # double 8.4147820000000007
	.quad	0x3ff8125460aa64c3              # double 1.504475
	.quad	0x4022921be2b4959e              # double 9.2853689999999993
	.quad	0x40230f264a16a487              # double 9.5295889999999996
	.quad	0x400805a0be510907              # double 3.002748
	.quad	0x40235621d96e9bbf              # double 9.6682269999999999
	.quad	0x3fd61b1960fa15db              # double 0.34540399999999999
	.quad	0x401263c148344c38              # double 4.5974170000000001
	.quad	0x4010e1d96e9bbf0e              # double 4.2205560000000002
	.quad	0x401865375c8d9f90              # double 6.0988439999999997
	.quad	0x4016aef8055fbb51              # double 5.6708679999999996
	.quad	0x401eff2c3009b307              # double 7.7491919999999998
	.quad	0x400da5197a24894c              # double 3.7056149999999999
	.quad	0x400161f212d77319              # double 2.172825
	.quad	0x3fcf36d655e28aa4              # double 0.24386099999999999
	.quad	0x4007821d96e9bbf1              # double 2.9385330000000001
	.quad	0x3ff6527e5215768a              # double 1.39514
	.quad	0x401a2180d3cff64d              # double 6.532718
	.quad	0x401fccae642bf983              # double 7.9498839999999999
	.quad	0x40117dc768dfbd6a              # double 4.3728309999999997
	.quad	0x4020ef5dbb9cf9a0              # double 8.4675119999999993
	.quad	0x4019aa7f8012dfd7              # double 6.4165020000000004
	.quad	0x402161129888f862              # double 8.6895950000000006
	.quad	0x3ff39b30728e92d5              # double 1.2253879999999999
	.quad	0x40039e18efbb0e5e              # double 2.4521959999999998
	.quad	0x4004fbeb18116ebd              # double 2.6230069999999999
	.quad	0x3ffabd1aa821f299              # double 1.671168
	.quad	0x401262630ec31162              # double 4.5960809999999999
	.quad	0x4023059641f64495              # double 9.5109119999999993
	.quad	0x401e3730c67168f9              # double 7.553897
	.quad	0x40121f1a5ca29846              # double 4.5303740000000001
	.quad	0x4009cd9c6b053198              # double 3.2253959999999999
	.quad	0x402201cb039ef0f1              # double 9.0035019999999992
	.quad	0x4017e1ec4e7253da              # double 5.9706279999999996
	.quad	0x40220a07b352a844              # double 9.0195900000000008
	.quad	0x400717a4e7ab7564              # double 2.8865449999999999
	.quad	0x4001e3cafb3b7521              # double 2.236227
	.quad	0x4018cac083126e98              # double 6.1980000000000004
	.quad	0x4014dec5f394b7b3              # double 5.2175520000000004
	.quad	0x4021812f4cf4a559              # double 8.7523140000000001
	.quad	0x401190c804102ff9              # double 4.3913880000000001
	.quad	0x3fca98b2e9ccb7d4              # double 0.207785
	.quad	0x40104834d26fa3fd              # double 4.0705140000000002
	.quad	0x40070ef2c7325919              # double 2.8822990000000002
	.quad	0x3ff08245f5ad96a7              # double 1.0318050000000001
	.quad	0x4019bf9fcb0c026d              # double 6.4371330000000002
	.quad	0x4019e5375c8d9f90              # double 6.4738439999999997
	.quad	0x4020bc65a57646ae              # double 8.3679629999999996
	.quad	0x401a2e18efbb0e5e              # double 6.5450169999999996
	.quad	0x4006e58dde7a743a              # double 2.8620869999999998
	.quad	0x400d5f02c4d65e46              # double 3.671392
	.quad	0x40182021d10b1fef              # double 6.0313790000000003
	.quad	0x3fa098915bdd7668              # double 0.032413999999999998
	.quad	0x401170795f676ea4              # double 4.3598379999999999
	.quad	0x40215da9003eea21              # double 8.6829300000000007
	.quad	0x3fd4a28bb0a2ca9b              # double 0.32242100000000001
	.quad	0x401b9f284167a95d              # double 6.9054270000000004
	.quad	0x3ff170b39192641b              # double 1.090015
	.quad	0x401a14bba12b5e53              # double 6.5202470000000003
	.quad	0x40164d905c033615              # double 5.5757459999999996
	.quad	0x4023d50bfa0945fa              # double 9.9161070000000002
	.quad	0x4007c46412cf0f9d              # double 2.9708939999999999
	.quad	0x40237fc6da448494              # double 9.7495639999999994
	.quad	0x401b42f72b452828              # double 6.8153959999999998
	.quad	0x401e15eb7457c0b1              # double 7.5214059999999998
	.quad	0x40150df2ecf20642              # double 5.2636219999999998
	.quad	0x400f80d887ebf22c              # double 3.937913
	.quad	0x400579a5a89b951c              # double 2.6843979999999998
	.quad	0x401fd44241c3efae              # double 7.9572839999999996
	.quad	0x401be6d2aa5c5f7c              # double 6.9754129999999996
	.quad	0x4004d65881a15550              # double 2.6046610000000001
	.quad	0x402064db9c7368ad              # double 8.1969879999999993
	.quad	0x402013f39d1b2e5a              # double 8.0389680000000006
	.quad	0x4016349cb252ce03              # double 5.5513789999999998
	.quad	0x4018793faf42784b              # double 6.1184070000000004
	.quad	0x4020863fbbd7b203              # double 8.2622049999999998
	.quad	0x4014b62ed352220c              # double 5.1779130000000002
	.quad	0x3ff4c35371971c11              # double 1.297687
	.quad	0x40194956c0d6f545              # double 6.3216200000000002
	.quad	0x4016730ced4e4c94              # double 5.6123539999999998
	.quad	0x401e76473471f794              # double 7.6155059999999999
	.quad	0x3ff79666a98244e9              # double 1.4742189999999999
	.quad	0x3ff95c7cd898b2ea              # double 1.58508
	.quad	0x40207e0d66f0cfe1              # double 8.2461959999999994
	.quad	0x3feb814727dcbddc              # double 0.85953100000000004
	.quad	0x401c53a2595bbbe8              # double 7.0816739999999996
	.quad	0x40001e83e425aee6              # double 2.0148999999999999
	.quad	0x4021b58fd5cb7910              # double 8.8546130000000005
	.quad	0x3fd8100a393ee5ef              # double 0.37597900000000001
	.quad	0x401256c8711d798e              # double 4.5847490000000004
	.quad	0x3fec83d35eb7457c              # double 0.89109199999999999
	.quad	0x4021e7aeddce7cd0              # double 8.9525059999999996
	.quad	0x40206dcb790fb656              # double 8.2144429999999993
	.quad	0x401fdad5bee3d5fe              # double 7.9637060000000002
	.quad	0x3fe000e065300581              # double 0.50010699999999997
	.quad	0x3fa4ccab3edd8b61              # double 0.040624
	.quad	0x4003fdbdb5d89481              # double 2.4988969999999999
	.quad	0x4023a5c0767d34df              # double 9.8237339999999999
	.quad	0x4001d34df04ddb55              # double 2.2281759999999999
	.quad	0x401306cf41f212d7              # double 4.7566499999999996
	.quad	0x401a3fb3b7521145              # double 6.5622090000000002
	.quad	0x4000a86f8ad2567a              # double 2.0822440000000002
	.quad	0x400a82bc72e275ab              # double 3.3138359999999998
	.quad	0x3ff3eb042528ae75              # double 1.244877
	.quad	0x401ae15c63ae2542              # double 6.7200790000000001
	.quad	0x400dd37a80cf9e38              # double 3.7282609999999998
	.quad	0x400e3cd24e160d88              # double 3.7796979999999998
	.quad	0x40236a6cc1ca3a4b              # double 9.7078609999999994
	.quad	0x401125aea3161a1e              # double 4.2867990000000002
	.quad	0x401119656eefa1e4              # double 4.2748010000000001
	.quad	0x400878897e996313              # double 3.058856
	.quad	0x40158f2e05ccc89b              # double 5.3898239999999999
	.quad	0x40216a94141e9af6              # double 8.7081610000000005
	.quad	0x400b7c99285a921d              # double 3.4358390000000001
	.quad	0x401100fe47991bc5              # double 4.2509699999999997
	.quad	0x401346bb98c7e282              # double 4.8190749999999998
	.quad	0x401cc82a12f90108              # double 7.1954729999999998
	.quad	0x40048a960b6f9fcb              # double 2.567669
	.quad	0x400a90d49949e881              # double 3.3207179999999998
	.quad	0x401bae586013660e              # double 6.9202589999999997
	.quad	0x401d5d4e4c942d49              # double 7.341119
	.quad	0x40208ce48626f60e              # double 8.2751809999999999
	.quad	0x40072cf41f212d77              # double 2.8969499999999999
	.quad	0x40156a450acc0bdd              # double 5.3537790000000003
	.quad	0x401edf86a098915c              # double 7.7182870000000001
	.quad	0x4022d2a66dbd72bd              # double 9.4114260000000005
	.quad	0x401be0ded288ce70              # double 6.9695999999999998
	.quad	0x401282170931012a              # double 4.6270410000000002
	.quad	0x401fbb7b28954a80              # double 7.9330870000000004
	.quad	0x3ff2ce68e3ef2841              # double 1.1753929999999999
	.quad	0x4021b7d8cf398e97              # double 8.859076
	.quad	0x4023d1a9fbe76c8b              # double 9.9094999999999995
	.quad	0x40201beb5b2d4d40              # double 8.0545299999999997
	.quad	0x401114677b395c42              # double 4.2699259999999999
	.quad	0x400b837de939eadd              # double 3.4392049999999998
	.quad	0x401b75e6ff7dfa01              # double 6.8651390000000001
	.quad	0x402136922d948dc1              # double 8.6065839999999998
	.quad	0x3fda1437c5692b3d              # double 0.40748400000000001
	.quad	0x4021d63fbbd7b203              # double 8.9184549999999998
	.quad	0x400a6b97785729b3              # double 3.3025350000000002
	.quad	0x4009c84f09528f19              # double 3.222807
	.quad	0x4015b4a2b9d3cbc5              # double 5.4264020000000004
	.quad	0x3ff4f94d94078961              # double 1.3108649999999999
	.quad	0x3ffaa5e679463cfb              # double 1.665503
	.quad	0x4018a178705425f2              # double 6.157686
	.quad	0x4003f3226c3b927d              # double 2.4937179999999999
	.quad	0x40212264e48626f6              # double 8.5671759999999999
	.quad	0x40147e468cac4b4d              # double 5.123316
	.quad	0x3ffdac2acb85a4f0              # double 1.854533
	.quad	0x4023f7c3b4f61672              # double 9.9839149999999997
	.quad	0x4012a09e98dcdb38              # double 4.6568550000000002
	.quad	0x4014e7204295a6c6              # double 5.2257090000000002
	.quad	0x4020b05ad538ac19              # double 8.3444430000000001
	.quad	0x4014c8eb463497b7              # double 5.1962099999999998
	.quad	0x4019bb4f61672325              # double 6.4329200000000002
	.quad	0x40007413122b7baf              # double 2.0566770000000001
	.quad	0x3fe4a070b8cfbfc6              # double 0.64458499999999996
	.quad	0x4006da3a8e71476b              # double 2.856557
	.quad	0x401c7d466f5019f4              # double 7.1223390000000002
	.quad	0x401409e30014f8b6              # double 5.0096550000000004
	.quad	0x402191f666234a88              # double 8.7850830000000002
	.quad	0x401f843c3a42f1ed              # double 7.8791359999999999
	.quad	0x3fad4de7ea5f84cb              # double 0.057235000000000001
	.quad	0x4019bd41fa765343              # double 6.4348219999999996
	.quad	0x4016a1b75a74c09c              # double 5.6579259999999998
	.quad	0x40202f04790b8499              # double 8.0918310000000009
	.quad	0x4021d5b3e1437c57              # double 8.9173880000000008
	.quad	0x4011d9af5ba2be06              # double 4.4625830000000004
	.quad	0x402228eeae9ee45c              # double 9.0799459999999996
	.quad	0x401e62120e1f7d74              # double 7.5957720000000002
	.quad	0x401f84fb97bb7308              # double 7.8798659999999998
	.quad	0x401872c8c5004fb1              # double 6.1120939999999999
	.quad	0x3ff43a58f7121ab5              # double 1.2642450000000001
	.quad	0x3ffa3cb4f1e4b44a              # double 1.639821
	.quad	0x401ccdd6e04c0592              # double 7.2010149999999999
	.quad	0x40078b0fadf2ecf2              # double 2.942901
	.quad	0x401ce3a9f383f0bb              # double 7.2223280000000001
	.quad	0x40199c664d3bf2f5              # double 6.4027339999999997
	.quad	0x4023fc955b4677b4              # double 9.9933270000000007
	.quad	0x4021e9a32b12d341              # double 8.9563229999999994
	.quad	0x4023fbbdbe3c1052              # double 9.9916820000000008
	.quad	0x3fd5e18266772d5e              # double 0.341889
	.quad	0x400491bc55864452              # double 2.5711599999999999
	.quad	0x4023fa3b9ae0c176              # double 9.9887359999999994
	.quad	0x4022e3910c2c5e2d              # double 9.4444660000000002
	.quad	0x4015309d0635a427              # double 5.2974740000000002
	.quad	0x3fb9feb8d8234224              # double 0.10154299999999999
	.quad	0x40074faa4766c6de              # double 2.9138989999999998
	.quad	0x3fa81f969e3c9689              # double 0.047115999999999998
	.quad	0x3ffc2f1bac2df0d4              # double 1.761501
	.quad	0x3fc13f4a98aa8651              # double 0.134744
	.quad	0x40132348b220791c              # double 4.7844569999999997
	.quad	0x3ff64ea39c51dabe              # double 1.394199
	.quad	0x401cc3bea91d9b1b              # double 7.1911569999999996
	.quad	0x40212206e9ff0cbb              # double 8.566459
	.quad	0x400b992428d434a0              # double 3.449776
	.quad	0x401c8b9d3cbc48f1              # double 7.136342
	.quad	0x4010397e132b55ef              # double 4.0561449999999999
	.quad	0x400f7b79d909f1f1              # double 3.9352909999999999
	.quad	0x40166ae642bf9831              # double 5.6043940000000001
	.quad	0x3f88ac9f2fdb8fde              # double 0.012048
	.quad	0x401797fcb923a29c              # double 5.8984249999999996
	.quad	0x4015f012dfd694cd              # double 5.4844470000000003
	.quad	0x4020c6134ce3de61              # double 8.3868659999999995
	.quad	0x401f64202d9cf13d              # double 7.847779
	.quad	0x4009fc58ab92c062              # double 3.2482160000000002
	.quad	0x401543a3ec02f2fa              # double 5.3160550000000004
	.quad	0x400a612f901083dc              # double 3.2974540000000001
	.quad	0x402379b866e43aa8              # double 9.7377350000000006
	.quad	0x4018e7a072d1aeb4              # double 6.2261980000000001
	.quad	0x4021e0913a4f8727              # double 8.9386080000000003
	.quad	0x401af7db6e503fb3              # double 6.7420479999999996
	.quad	0x400065532617c1be              # double 2.0494750000000002
	.quad	0x3fd734e7685985ad              # double 0.36260399999999998
	.quad	0x4022d235f8099179              # double 9.4105679999999995
	.quad	0x4008979c842fa509              # double 3.0740289999999999
	.quad	0x400f0fdb8fde2ef5              # double 3.8827430000000001
	.quad	0x400bf5f02c4d65e4              # double 3.4950869999999998
	.quad	0x40208a8c9b845565              # double 8.2706040000000005
	.quad	0x40043c51dabe2718              # double 2.5294530000000002
	.quad	0x3fe9302d59d55e6c              # double 0.78713100000000002
	.quad	0x4015dababead4f59              # double 5.463603
	.quad	0x401dff0cbaf965b2              # double 7.499072
	.quad	0x3fb94163779e9d0f              # double 0.098654000000000006
	.quad	0x4006eefb2aae2974              # double 2.8666900000000002
	.quad	0x3ff1a478854cdb7b              # double 1.102654
	.quad	0x4019f33f85510d39              # double 6.4875470000000002
	.quad	0x401f0a1be2b4959e              # double 7.7598719999999997
	.quad	0x40109711947cfa27              # double 4.1475280000000003
	.quad	0x3fe636fe2e6ea854              # double 0.69421299999999997
	.quad	0x400110af5fd47bee              # double 2.1331470000000001
	.quad	0x40203a01cd5f99c4              # double 8.1132950000000008
	.quad	0x402253b1af3a14cf              # double 9.1634650000000004
	.quad	0x401658dda48b6523              # double 5.5867829999999996
	.quad	0x401331932d6ece14              # double 4.798413
	.quad	0x400d3d4f9c1f85d7              # double 3.6549369999999999
	.quad	0x4023b555e6bc621b              # double 9.8541709999999991
	.quad	0x40218af2d7f950b9              # double 8.7713839999999994
	.quad	0x3ff62d8b1dd5d3dd              # double 1.3861190000000001
	.quad	0x400d4bc83a96d4c3              # double 3.6620029999999999
	.quad	0x4003b45953586ca9              # double 2.4630610000000002
	.quad	0x40004a1be2b4959e              # double 2.0361859999999998
	.quad	0x3ff29a22f6a50d6b              # double 1.162631
	.quad	0x40078a087ca643cc              # double 2.942399
	.quad	0x400548b545c78a6e              # double 2.6605020000000001
	.quad	0x4015439d1b2e59b0              # double 5.3160290000000003
	.quad	0x400e9d8383ad9f0a              # double 3.826911
	.quad	0x3feacc87980f55de              # double 0.83746699999999996
	.quad	0x3ff580f88333fc87              # double 1.343987
	.quad	0x401f4ffda4052d66              # double 7.8281159999999996
	.quad	0x401e8c68ec52a412              # double 7.6371190000000002
	.quad	0x40183ababead4f59              # double 6.057353
	.quad	0x4022ffa11a975afb              # double 9.499276
	.quad	0x4020da16a4873366              # double 8.4259540000000008
	.quad	0x401585fdcdf69878              # double 5.3808509999999998
	.quad	0x4004b4eebf65dbfd              # double 2.588346
	.quad	0x401ec7c8d195896a              # double 7.6951020000000003
	.quad	0x402102e2541d8e86              # double 8.5056329999999996
	.quad	0x401e3e1f3a57eaa3              # double 7.5606660000000003
	.quad	0x401221f70de8f6cf              # double 4.533169
	.quad	0x4001dc1a47a9e2bd              # double 2.232472
	.quad	0x4014bf52b90a7829              # double 5.186839
	.quad	0x401132bd7f51efb7              # double 4.2995510000000001
	.quad	0x401cacae21101b00              # double 7.1686329999999998
	.quad	0x3ff675360d024702              # double 1.403616
	.quad	0x4015d98d045fe111              # double 5.4624519999999999
	.quad	0x4011acc037931444              # double 4.4187019999999997
	.quad	0x40068c58eeae9ee4              # double 2.8185289999999998
	.quad	0x3fdebc72e275ab7e              # double 0.48025200000000001
	.quad	0x3ffc601eeed8904f              # double 1.7734669999999999
	.quad	0x401f0a80cf9e3865              # double 7.7602570000000001
	.quad	0x401f9123c42a66dc              # double 7.8917380000000001
	.quad	0x40206a12513b5bf7              # double 8.2071710000000007
	.quad	0x3ff589f2fdb8fde3              # double 1.346179
	.quad	0x4021c7f27fe4bcae              # double 8.8905220000000007
	.quad	0x4023b487db2b3461              # double 9.8525989999999996
	.quad	0x40208a378ab0c88a              # double 8.2699549999999995
	.quad	0x40057b2cc70867ae              # double 2.6851440000000002
	.quad	0x401120be0ded288d              # double 4.2819750000000001
	.quad	0x401607b28954a7f8              # double 5.507517
	.quad	0x4023d9b4784230fd              # double 9.925205
	.quad	0x4023f471d6063172              # double 9.9774309999999993
	.quad	0x4003cdbd72bcb5fe              # double 2.4754589999999999
	.quad	0x401e3ff865d7cb2e              # double 7.5624710000000004
	.quad	0x40158de6ddf00abf              # double 5.3885759999999996
	.quad	0x401a658ab92c0618              # double 6.5991619999999998
	.quad	0x401b7d45e9185cee              # double 6.8723369999999999
	.quad	0x401c478feef5ec81              # double 7.0698850000000002
	.quad	0x4017564a59c065b6              # double 5.8342679999999998
	.quad	0x401a26d04e618ce3              # double 6.5379040000000002
	.quad	0x40228fabfb9bed31              # double 9.2806090000000001
	.quad	0x401d94eb13dfb0d5              # double 7.3954279999999999
	.quad	0x3fff9dda059a73b4              # double 1.976038
	.quad	0x4021cc76295208e1              # double 8.8993389999999994
	.quad	0x4011cdc768dfbd6a              # double 4.4509559999999997
	.quad	0x40186c2df0d41312              # double 6.1056439999999998
	.quad	0x401b630014f8b589              # double 6.8466800000000001
	.quad	0x40123f266ba493c9              # double 4.5616700000000003
	.quad	0x4015203a7546d3fa              # double 5.2814730000000001
	.quad	0x40056d056c508b33              # double 2.6782330000000001
	.quad	0x4000e8af81626b2f              # double 2.1136159999999999
	.quad	0x40238034d26fa3fd              # double 9.7504030000000003
	.quad	0x40172328b6d86ec1              # double 5.7843349999999996
	.quad	0x4022639bed30f063              # double 9.1945490000000003
	.quad	0x401cf409a2403148              # double 7.2383179999999996
	.quad	0x400608101f31f46f              # double 2.7539370000000001
	.quad	0x3fc57e0ac7da1ec5              # double 0.167909
	.quad	0x400d6f2d7f950b95              # double 3.6792859999999998
	.quad	0x401c6fd36f7e3d1d              # double 7.1092050000000002
	.quad	0x3ff74d4aa10e0221              # double 1.4563699999999999
	.quad	0x4022f92c49342678              # double 9.4866659999999995
	.quad	0x3feefc49fd7a13c2              # double 0.96829699999999996
	.quad	0x401220c34c1a8ac6              # double 4.5319950000000002
	.quad	0x401fefecdd0d8cb0              # double 7.9843019999999996
	.quad	0x40080c13b9f127f6              # double 3.005897
	.quad	0x4016f2ab68cef673              # double 5.7369820000000002
	.quad	0x4007c69595feda66              # double 2.971965
	.quad	0x401248b827fa1a0d              # double 4.5710150000000001
	.quad	0x4015bedd052934ad              # double 5.4363900000000003
	.quad	0x3ff59650a45d41fa              # double 1.3491979999999999
	.quad	0x40161b762d83c6c9              # double 5.5268179999999996
	.quad	0x4023ef04790b8499              # double 9.9668310000000008
	.quad	0x401213e4ef0281ba              # double 4.5194279999999996
	.quad	0x400dc51eb851eb85              # double 3.7212499999999999
	.quad	0x4021e3ebe1650a46              # double 8.9451590000000003
	.quad	0x4011760c7c0f4517              # double 4.3652819999999997
	.quad	0x4017393532e7b3d9              # double 5.8058670000000001
	.quad	0x4014be779207d4e1              # double 5.1860030000000004
	.quad	0x400438dc55000c95              # double 2.5277639999999999
	.quad	0x401b07967caea748              # double 6.7574100000000001
	.quad	0x40161e32a0663c75              # double 5.52949
	.quad	0x3ff7536a400fba88              # double 1.457865
	.quad	0x4022399a415f45e1              # double 9.1125050000000005
	.quad	0x3ffe55b78cc9a77e              # double 1.8959269999999999
	.quad	0x40225a437824d4cc              # double 9.1762960000000006
	.quad	0x401d6bc59b8023a7              # double 7.3552460000000002
	.quad	0x3ff92dddf43c7d5f              # double 1.573698
	.quad	0x40232ec6583e8577              # double 9.5913570000000003
	.quad	0x401cae96c3fc43b3              # double 7.1704970000000001
	.quad	0x40103264a16a4873              # double 4.0492119999999998
	.quad	0x40169b890d5a5b96              # double 5.6518899999999999
	.quad	0x3fcb57f737da61e1              # double 0.21362200000000001
	.quad	0x401982d0e5604189              # double 6.3777499999999998
	.quad	0x3fb30dc768dfbd6a              # double 0.074428999999999995
	.quad	0x400f313d74d594f2              # double 3.8990429999999998
	.quad	0x3fac73cd573647bb              # double 0.055571000000000002
	.quad	0x40156a0c6b484d77              # double 5.3535630000000003
	.quad	0x400f2275ab7dc7ac              # double 3.891826
	.quad	0x4012f9ef954eb13e              # double 4.744078
	.quad	0x401b459578a2a90d              # double 6.8179530000000002
	.quad	0x4019cc8d9f9053a0              # double 6.4497590000000002
	.quad	0x401df57470eb24a7              # double 7.4897020000000003
	.quad	0x400116598e10cf5b              # double 2.135913
	.quad	0x4012b9307af20ea6              # double 4.6808490000000003
	.quad	0x40106c33f85510d4              # double 4.1056670000000004
	.quad	0x402100f12c27a637              # double 8.5018399999999996
	.quad	0x4013f8ba40d90e24              # double 4.9928980000000003
	.quad	0x401e95058dde7a74              # double 7.6455289999999998
	.quad	0x4021b46bce8533b1              # double 8.8523849999999999
	.quad	0x3ff7b939a7c17a89              # double 1.482721
	.quad	0x4020e6555c52e72e              # double 8.4498700000000007
	.quad	0x4016c398e9707182              # double 5.6910129999999999
	.quad	0x400449906cca2db6              # double 2.53592
	.quad	0x4021a3415b1422cd              # double 8.8188580000000005
	.quad	0x40210651f3e89a89              # double 8.5123440000000006
	.quad	0x40199c59fb1e18f0              # double 6.4026870000000002
	.quad	0x401387aa25d8d79d              # double 4.882485
	.quad	0x3ff157d49d7ba66a              # double 1.0839430000000001
	.quad	0x401e1e34b945308c              # double 7.5294980000000002
	.quad	0x401d04d3bf2f5558              # double 7.2547139999999999
	.quad	0x3ff394801f75104d              # double 1.2237549999999999
	.quad	0x401415ff609dcf89              # double 5.0214819999999998
	.quad	0x3ff139df548ecd8e              # double 1.0766290000000001
	.quad	0x401106f0068db8bb              # double 4.2567750000000002
	.quad	0x401ac1b823c85c25              # double 6.6891790000000002
	.quad	0x4002de004b7f5a53              # double 2.3583989999999999
	.quad	0x4002ec625e99e94b              # double 2.3654220000000001
	.quad	0x40151e8bc169c23b              # double 5.2798299999999996
	.quad	0x401f26c0d6f544bb              # double 7.7878449999999999
	.quad	0x3ff84c8de2ac3223              # double 1.5186900000000001
	.quad	0x4006078d92fb19e7              # double 2.7536879999999999
	.quad	0x400739e492bc2fc7              # double 2.9032680000000002
	.quad	0x40231dd4845132f8              # double 9.5582619999999991
	.quad	0x4019cb35f3d7d391              # double 6.448448
	.quad	0x4014e2b9d3cbc48f              # double 5.2214119999999999
	.quad	0x400bf307af20ea5b              # double 3.4936669999999999
	.quad	0x40237ac5e2cdc012              # double 9.7397910000000003
	.quad	0x4017dbb8800eae19              # double 5.9645710000000003
	.quad	0x401a85fc3b4f6167              # double 6.6308449999999999
	.quad	0x401770a45d41fa76              # double 5.8600019999999997
	.quad	0x3fedb2074ea8da7f              # double 0.92798199999999997
	.quad	0x40139daceee0f3cb              # double 4.9039799999999998
	.quad	0x3fe23b4d48882f0e              # double 0.569739
	.quad	0x401de92d98bf7f06              # double 7.4777129999999996
	.quad	0x3fbfbaa9b499d020              # double 0.123942
	.quad	0x4006e749f0e4da0a              # double 2.8629340000000001
	.quad	0x400f0d477bbf93ff              # double 3.8814839999999999
	.quad	0x4013fa311e85fd05              # double 4.9943280000000003
	.quad	0x40030c9752977c89              # double 2.381148
	.quad	0x3ff18471b4784231              # double 1.094835
	.quad	0x4023520e6299524c              # double 9.660266
	.quad	0x4012ed27c3936827              # double 4.7315969999999998
	.quad	0x4019a0ebaade657c              # double 6.4071490000000004
	.quad	0x401f222962cfd8f1              # double 7.7833610000000001
	.quad	0x3fd6c49fd7a13c25              # double 0.35575099999999998
	.quad	0x3ff6a6a76965f527              # double 1.4156869999999999
	.quad	0x401e7c083126e979              # double 7.6211250000000001
	.quad	0x3ff353c89f40a287              # double 1.2079549999999999
	.quad	0x4023cc4ef88b9778              # double 9.8990399999999993
	.quad	0x4016a5ae1cde5d18              # double 5.661797
	.quad	0x400006887a8d64d8              # double 2.00319
	.quad	0x3fd7e96c3fc43b2e              # double 0.37362200000000001
	.quad	0x40201c4b2b777d0f              # double 8.0552609999999998
	.quad	0x400dd778dd616f87              # double 3.7302110000000002
	.quad	0x3fadd851654d61b3              # double 0.058291000000000003
	.quad	0x3fc92dfd694ccab4              # double 0.196716
	.quad	0x40179f5232d2bb23              # double 5.9055869999999997
	.quad	0x3fc7a89b951c5c57              # double 0.184833
	.quad	0x3fdcbaecd07852f8              # double 0.448909
	.quad	0x4021cc5308bb9064              # double 8.8990709999999992
	.quad	0x40185fa2ad3e920c              # double 6.093394
	.quad	0x401d7f14db59578a              # double 7.3741029999999999
	.quad	0x401cd250b524399b              # double 7.2053859999999998
	.quad	0x3ff51014b599aa61              # double 1.3164260000000001
	.quad	0x4010a0c9539b8887              # double 4.1570179999999999
	.quad	0x40158423d9231c65              # double 5.3790430000000002
	.quad	0x40129d651b0ccbc0              # double 4.6537059999999997
	.quad	0x402318fe260b2c84              # double 9.5488140000000001
	.quad	0x4003a80cf9e3864d              # double 2.4570560000000001
	.quad	0x40217213e3e29308              # double 8.7228080000000006
	.quad	0x400064bd33d29564              # double 2.0491890000000001
	.quad	0x401b55171e29b6b3              # double 6.8330960000000003
	.quad	0x400d695d0b73d189              # double 3.676447
	.quad	0x400ac96030c23fab              # double 3.348328
	.quad	0x400caed245b291b8              # double 3.5853619999999999
	.quad	0x401f94f3343fa2ad              # double 7.8954589999999997
	.quad	0x401d3a919695d91b              # double 7.3071960000000002
	.quad	0x401fe48b65237048              # double 7.9731880000000003
	.quad	0x40001fb2edfe75bc              # double 2.0154779999999999
	.quad	0x3ff078854cdb7ae5              # double 1.0294239999999999
	.quad	0x401ba1e3a7daa4fd              # double 6.9080950000000003
	.quad	0x3ff2c47f562174c5              # double 1.172973
	.quad	0x40189bd273d5bab2              # double 6.1521699999999999
	.quad	0x4011e99ed7c6fbd2              # double 4.4781449999999996
	.quad	0x3ffd2d57bc7f77af              # double 1.8235699999999999
	.quad	0x401b800cd855970b              # double 6.8750489999999997
	.quad	0x4013f7a13c254a3c              # double 4.9918259999999997
	.quad	0x40225b25f633ce64              # double 9.1780240000000006
	.quad	0x4021d4a2db61bb06              # double 8.915305
	.quad	0x4023e767903211cb              # double 9.9519619999999999
	.quad	0x3fd5f19934efcbd5              # double 0.34287099999999998
	.quad	0x401df96a6a01259a              # double 7.4935700000000001
	.quad	0x4010734267839cd8              # double 4.1125579999999999
	.quad	0x3fe03430f49491f3              # double 0.50637100000000002
	.quad	0x401880d1fa333765              # double 6.1258010000000001
	.quad	0x4020dafd75e2046c              # double 8.4277149999999991
	.quad	0x40233ccb9ecf6380              # double 9.618741
	.quad	0x400fec2acb85a4f0              # double 3.990316
	.quad	0x401e90624dd2f1aa              # double 7.641
	.quad	0x4010912c27a63737              # double 4.1417700000000002
	.quad	0x3ffd99be4cd74928              # double 1.8500350000000001
	.quad	0x401ade53a81dc0db              # double 6.7171159999999999
	.quad	0x400b9e3864cb5bb4              # double 3.4522560000000002
	.quad	0x4022070e90bc7b46              # double 9.0137830000000001
	.quad	0x401c07c0b1359792              # double 7.0075710000000004
	.quad	0x4016ac02f2f98740              # double 5.66798
	.quad	0x40021d883ba3443d              # double 2.2644199999999999
	.quad	0x401afbd1676640a7              # double 6.7459160000000002
	.quad	0x3fef67bc3c5bd0e1              # double 0.98141299999999997
	.quad	0x4004dfc115df6556              # double 2.6092550000000001
	.quad	0x401f4d234eb9a177              # double 7.8253300000000001
	.quad	0x3fd1e779207d4e09              # double 0.27975299999999997
	.quad	0x401409c12f09d8c7              # double 5.0095260000000001
	.quad	0x402162363b256ffc              # double 8.6918199999999998
	.quad	0x4015dafc8b0079a3              # double 5.4638540000000004
	.quad	0x3fea540cc78e9f6b              # double 0.82276000000000005
	.quad	0x401b391f70de8f6d              # double 6.8057840000000001
	.quad	0x4023a934267839ce              # double 9.8304760000000009
	.quad	0x400d8053e2d6238e              # double 3.6876600000000002
	.quad	0x4006549f0e4da09d              # double 2.7913190000000001
	.quad	0x4015c3e8dda48b65              # double 5.4413179999999999
	.quad	0x401b92b3461309c8              # double 6.893262
	.quad	0x3ffb58409e55c0fd              # double 1.7090460000000001
	.quad	0x4010debbfd71b047              # double 4.2175140000000004
	.quad	0x401f58051c9f72f7              # double 7.8359569999999996
	.quad	0x40126af20ea5b531              # double 4.6044390000000002
	.quad	0x40218df9bdc69f8c              # double 8.7772959999999997
	.quad	0x400281e603d57796              # double 2.3134269999999999
	.quad	0x40170d06bbdbe3c1              # double 5.762721
	.quad	0x4010932df505d0fa              # double 4.1437299999999997
	.quad	0x3fe423ad18d25edd              # double 0.629355
	.quad	0x4023aa4180d3cff6              # double 9.8325309999999995
	.quad	0x4023245a8155d5f5              # double 9.5710029999999992
	.quad	0x401bdca57a786c22              # double 6.9654749999999996
	.quad	0x4020aea550870111              # double 8.3411050000000007
	.quad	0x40211b29c347e8cd              # double 8.5530530000000002
	.quad	0x401868b71b8aa002              # double 6.1022610000000004
	.quad	0x3fd68beb5b2d4d40              # double 0.35228999999999999
	.quad	0x401253df6db940ff              # double 4.5819070000000002
	.quad	0x401bf2089e34330d              # double 6.9863609999999996
	.quad	0x400836abde3fbbd8              # double 3.0266950000000001
	.quad	0x4017085d744f5d35              # double 5.7581689999999996
	.quad	0x400f0624dd2f1aa0              # double 3.8780000000000001
	.quad	0x400f5ebaf102363b              # double 3.9212549999999999
	.quad	0x40135cca70d1fa33              # double 4.8406159999999998
	.quad	0x400f276e1deacc92              # double 3.894253
	.quad	0x4001fb5286b59147              # double 2.247716
	.quad	0x40132b9d7fd82774              # double 4.7925930000000001
	.quad	0x400d0f038e29f9cf              # double 3.6323310000000002
	.quad	0x400a01c475e6362a              # double 3.2508629999999998
	.quad	0x4021922c881e4713              # double 8.7854960000000002
	.quad	0x3ff283c18b502abb              # double 1.1571670000000001
	.quad	0x3ff0ae935b91f70e              # double 1.042621
	.quad	0x3ff48b0e1b4bb5e1              # double 1.283949
	.quad	0x401335f45e0b4e12              # double 4.8026900000000001
	.quad	0x402035adfb506dd7              # double 8.1048430000000007
	.quad	0x402043d987c6327f              # double 8.1325190000000003
	.quad	0x402351b584b1ab08              # double 9.6595879999999993
	.quad	0x3ffaa15336deb95e              # double 1.6643859999999999
	.quad	0x401dcf398e970718              # double 7.4523679999999998
	.quad	0x4001480b673c4f3c              # double 2.1601780000000002
	.quad	0x3ff55cde5d18090b              # double 1.3351729999999999
	.quad	0x4021163d3e4ef028              # double 8.5434359999999998
	.quad	0x401d0aed99cbee80              # double 7.2606719999999996
	.quad	0x401fde5753a3ec03              # double 7.96713
	.quad	0x40016cfe9b7bf1e9              # double 2.17822
	.quad	0x4011fdbcec84f8f9              # double 4.4977910000000003
	.quad	0x3fffdba7fc32ebe6              # double 1.9911270000000001
	.quad	0x4020f60008637bd0              # double 8.4804689999999994
	.quad	0x401bebce8533b107              # double 6.9802799999999996
	.quad	0x4003707faa044ae8              # double 2.4299309999999998
	.quad	0x3ff147b677f6b1a3              # double 1.0800080000000001
	.quad	0x40202b0489d27c39              # double 8.0840189999999996
	.quad	0x3ffc76d97b30f8c6              # double 1.7790159999999999
	.quad	0x40203ffcdab191de              # double 8.1249760000000002
	.quad	0x3fbcd4ed2cbea4ec              # double 0.112624
	.quad	0x3ff1a01de2691644              # double 1.101591
	.quad	0x40126c88e79aae6d              # double 4.6059910000000004
	.quad	0x402167b506dd69d3              # double 8.702553
	.quad	0x4018694ccab3edd9              # double 6.1028320000000003
	.quad	0x4016693682730c67              # double 5.6027469999999999
	.quad	0x3fe0bd4f15e7c8d2              # double 0.52310900000000005
	.quad	0x3fd2baf102363b25              # double 0.29265999999999998
	.quad	0x401495821294573a              # double 5.1460039999999996
	.quad	0x40060da661283904              # double 2.7566649999999999
	.quad	0x40213dd7ecbb7f9d              # double 8.6207879999999992
	.quad	0x4022057dbf487fcc              # double 9.0107250000000007
	.quad	0x3ffb705b7cfe5860              # double 1.714931
	.quad	0x4015eec204f2ae08              # double 5.4831620000000001
	.quad	0x40228c2699c7bcc3              # double 9.2737320000000008
	.quad	0x401df9b8887229e9              # double 7.4938679999999999
	.quad	0x402034968943e100              # double 8.1027109999999993
	.quad	0x4022850763a19008              # double 9.2598219999999997
	.quad	0x401bcdcebfec13ba              # double 6.9509840000000001
	.quad	0x40238ead4f5903a7              # double 9.7786659999999994
	.quad	0x4000bddfc9ff92f3              # double 2.0927120000000001
	.quad	0x4021b46f15619115              # double 8.8524100000000008
	.quad	0x3fd0d8cb07d0aeda              # double 0.26323200000000002
	.quad	0x400f3e28aa433509              # double 3.905351
	.quad	0x4010b2cc70867ad9              # double 4.1746080000000001
	.quad	0x401c6accd530489d              # double 7.1042969999999999
	.quad	0x401d4290eed02cd4              # double 7.3150060000000003
	.quad	0x4001eca9ac365450              # double 2.240558
	.quad	0x40108347a5b0ff11              # double 4.1282030000000001
	.quad	0x4015c0331e3a7daa              # double 5.4376949999999997
	.quad	0x40162507e9d94d0e              # double 5.5361630000000002
	.quad	0x40113cd78c436fc1              # double 4.3094159999999997
	.quad	0x3ffcc9ecb31c219f              # double 1.7992980000000001
	.quad	0x40233d28ae74f2f1              # double 9.6194509999999997
	.quad	0x4015264ece9a2c67              # double 5.2874100000000004
	.quad	0x3fefe6687f455a7d              # double 0.99687599999999998
	.quad	0x401ed0b9dc2f405f              # double 7.7038339999999996
	.quad	0x40114623d0bfa094              # double 4.3184959999999997
	.quad	0x3fdefbe76c8b4396              # double 0.48412500000000003
	.quad	0x40210851654d61b3              # double 8.5162460000000006
	.quad	0x400d8308787485e4              # double 3.6889810000000001
	.quad	0x40200a3ca7503b82              # double 8.0199940000000005
	.quad	0x4013a25529fe004b              # double 4.9085279999999996
	.quad	0x3fdc9bbadc0980b2              # double 0.44700499999999999
	.quad	0x3ffd82e9899bf594              # double 1.8444609999999999
	.quad	0x4020129c347e8cce              # double 8.0363480000000003
	.quad	0x3ff2963cb8173322              # double 1.1616789999999999
	.quad	0x400ef6c7a7c9de05              # double 3.870498
	.quad	0x401409e774eebf66              # double 5.0096720000000001
	.quad	0x401c0821294573a8              # double 7.0079390000000004
	.quad	0x3ffb8b9dc2f405f7              # double 1.7215860000000001
	.quad	0x402213dfd2630ec3              # double 9.0388169999999999
	.quad	0x4018d41461b6d43d              # double 6.207109
	.quad	0x3ffaa6e115592d99              # double 1.6657420000000001
	.quad	0x400a240d90e23af3              # double 3.267604
	.quad	0x401a06256366d7a5              # double 6.5060019999999996
	.quad	0x4014b6e32e3821af              # double 5.1786009999999996
	.quad	0x4015889c5e6ff7e0              # double 5.3834090000000003
	.quad	0x40110ba94bbe4474              # double 4.2613880000000002
	.quad	0x40223584f4c6e6da              # double 9.1045300000000005
	.quad	0x401433ce2089e343              # double 5.0505909999999998
	.quad	0x3ffbbaa044ae85ba              # double 1.733063
	.quad	0x4023e3bc6eb0b7c3              # double 9.9447969999999994
	.quad	0x401b9a0ba1f4b1ee              # double 6.9004349999999999
	.quad	0x4009135daad60200              # double 3.1344560000000001
	.quad	0x40119a3ec02f2f98              # double 4.4006299999999996
	.quad	0x401b84d4024b33db              # double 6.879715
	.quad	0x400ed07af20ea5b5              # double 3.8517969999999999
	.quad	0x401d839eadd590c1              # double 7.3785350000000003
	.quad	0x3ff3f6b3bb83cf2d              # double 1.24773
	.quad	0x4018e6c8711d798e              # double 6.2253740000000004
	.quad	0x3ff948d6d3b6cbda              # double 1.5802830000000001
	.quad	0x401f1bfad2999568              # double 7.7773240000000001
	.quad	0x4007f3de1e2de871              # double 2.9940760000000002
	.quad	0x40125dbbe0157eed              # double 4.5915369999999998
	.quad	0x40108e2cdc011d36              # double 4.1388429999999996
	.quad	0x3ff60b945308bb90              # double 1.3778269999999999
	.quad	0x401457d1351159c5              # double 5.0857590000000004
	.quad	0x4020768900c521de              # double 8.2315140000000007
	.quad	0x40239bf42352eb5f              # double 9.8045969999999993
	.quad	0x3ffa300de4c51117              # double 1.6367320000000001
	.quad	0x4023ee2de8709742              # double 9.9651940000000003
	.quad	0x402095d334c5da6a              # double 8.2926269999999995
	.quad	0x40126e542e557de1              # double 4.6077430000000001
	.quad	0x40207742bb6672fc              # double 8.2329310000000006
	.quad	0x3ff75cde5d18090b              # double 1.4601729999999999
	.quad	0x3ff5014a4d2b2bfe              # double 1.3128150000000001
	.quad	0x4021dbd35eb7457c              # double 8.9293469999999999
	.quad	0x4023a26d698fe692              # double 9.8172409999999992
	.quad	0x40226cf1a1986b9c              # double 9.2127809999999996
	.quad	0x3faf6683c297bfa5              # double 0.061329000000000002
	.quad	0x4023e35aa715831f              # double 9.9440509999999999
	.quad	0x3fc7308bb906466b              # double 0.181169
	.quad	0x4019b315d701d9f5              # double 6.4248880000000002
	.quad	0x3ff94afd5454152b              # double 1.580808
	.quad	0x4022aa52263d816b              # double 9.3326580000000003
	.quad	0x40193083126e978d              # double 6.2973749999999997
	.quad	0x401b21acde19fc2b              # double 6.7828860000000004
	.quad	0x4015a77e1b8ed1bf              # double 5.4135669999999996
	.quad	0x401e022bbecaab8a              # double 7.5021199999999997
	.quad	0x4016267f0aa21a72              # double 5.5375940000000003
	.quad	0x401ca7e56473471f              # double 7.1639609999999996
	.quad	0x4013258d1526d8b2              # double 4.7866710000000001
	.quad	0x401d92ec6bce8534              # double 7.3934800000000003
	.quad	0x4007a6fd651b0ccc              # double 2.9565380000000001
	.quad	0x3fcfe3f359ff4fd7              # double 0.249144
	.quad	0x40076f8a4c1ebc84              # double 2.9294630000000002
	.quad	0x401b21dc50ce4ead              # double 6.783067
	.quad	0x401fa9ecf6380022              # double 7.9159430000000004
	.quad	0x4012bba55d1c3ac9              # double 4.6832479999999999
	.quad	0x4023473f748a1598              # double 9.6391559999999998
	.quad	0x40204023e9ea1405              # double 8.1252739999999992
	.quad	0x402270eed02cd39e              # double 9.2205720000000007
	.quad	0x4019194b380cb6c8              # double 6.2747010000000003
	.quad	0x40207a6c3b927d46              # double 8.2391070000000006
	.quad	0x40225da426bb55ac              # double 9.1828929999999999
	.quad	0x4023d455432873bd              # double 9.9147130000000007
	.quad	0x4022537c99ae924f              # double 9.1630599999999998
	.quad	0x40195cd3e0bd449a              # double 6.3406520000000004
	.quad	0x3ff29be6e6538690              # double 1.163062
	.quad	0x400103c105186db5              # double 2.126833
	.quad	0x4023b492ddbdb5d9              # double 9.8526830000000007
	.quad	0x40218cd22c881e47              # double 8.7750409999999999
	.quad	0x40198a055757d5aa              # double 6.3847860000000001
	.quad	0x401718e5c4eb56fc              # double 5.7743140000000004
	.quad	0x40106a6ce358298d              # double 4.1039310000000002
	.quad	0x400a0188b11409a2              # double 3.2507489999999999
	.quad	0x4013f467be553ac5              # double 4.988677
	.quad	0x40239cbe40420f6f              # double 9.8061389999999999
	.quad	0x400a645b291b823d              # double 3.2990020000000002
	.quad	0x40135cb70ac3a861              # double 4.8405420000000001
	.quad	0x3ffef64adff822bc              # double 1.93513
	.quad	0x401052c16df3f962              # double 4.0808160000000004
	.quad	0x4010e9f2ba9d1f60              # double 4.2284649999999999
	.quad	0x401d34d551d68c69              # double 7.3015949999999998
	.quad	0x3fe81294573a7979              # double 0.75226800000000005
	.quad	0x402150769ec2ce46              # double 8.6571549999999995
	.quad	0x401dbf28c79f6662              # double 7.4366789999999998
	.quad	0x400f35f3519bd406              # double 3.9013429999999998
	.quad	0x401ad28672756862              # double 6.7055910000000001
	.quad	0x400f1542a23bff8b              # double 3.8853810000000002
	.quad	0x401a6f78bbd38045              # double 6.6088589999999998
	.quad	0x4018cc343b70ef56              # double 6.1994179999999997
	.quad	0x401b06ba493c89f4              # double 6.75657
	.quad	0x400fdcc6c54bcf0b              # double 3.9828009999999998
	.quad	0x4020ff8a0902de01              # double 8.4991000000000003
	.quad	0x401b2b6177ea1c69              # double 6.7923640000000001
	.quad	0x40176fcd67fd3f5b              # double 5.8591819999999997
	.quad	0x4015af33ca31e7da              # double 5.4210960000000004
	.quad	0x401551f601797cc4              # double 5.3300400000000003
	.quad	0x4021e37fbefd0071              # double 8.9443339999999996
	.quad	0x3faa363b256ffc11              # double 0.051194999999999997
	.quad	0x3ff9a1c58255b036              # double 1.6019950000000001
	.quad	0x400e3004fb1183b6              # double 3.773447
	.quad	0x3ffa53d5347a5b10              # double 1.645467
	.quad	0x3ffa783f0bae89ec              # double 1.6543570000000001
	.quad	0x40158baa9b499d02              # double 5.386393
	.quad	0x401c570d62bf11f9              # double 7.0850119999999999
	.quad	0x40012af5771001d6              # double 2.1459760000000001
	.quad	0x400d2e95faa8a82a              # double 3.6477469999999999
	.quad	0x400b6e6c093d9664              # double 3.4289170000000002
	.quad	0x3fb4a4f440af1cb9              # double 0.080642000000000005
	.quad	0x402186aad1d041cc              # double 8.7630219999999994
	.quad	0x401bce820e629952              # double 6.9516679999999997
	.quad	0x40205396af038e2a              # double 8.163259
	.quad	0x401b23bd9cae2110              # double 6.7849029999999999
	.quad	0x3fe2fc914b167ec8              # double 0.59333100000000005
	.quad	0x4017b09f623076c0              # double 5.9224829999999997
	.quad	0x401397fa1a0cf180              # double 4.898415
	.quad	0x4017487c6327ed85              # double 5.8207870000000002
	.quad	0x4016da7c5ac471b4              # double 5.7133649999999996
	.quad	0x4022e7be121ee675              # double 9.4526219999999998
	.quad	0x401ac8eb8950763a              # double 6.6962109999999999
	.quad	0x40221ba29c779a6b              # double 9.0539749999999994
	.quad	0x4012108a265f0f5a              # double 4.5161519999999999
	.quad	0x3fedc443914f483d              # double 0.93020800000000003
	.quad	0x4020dc3f811f4f51              # double 8.4301720000000007
	.quad	0x401a886cebbba55d              # double 6.6332279999999999
	.quad	0x40015a7f3cf70154              # double 2.1691880000000001
	.quad	0x40202f03d145d851              # double 8.0918259999999993
	.quad	0x3ffac199fe43675e              # double 1.672266
	.quad	0x3fd863779e9d0e99              # double 0.38107099999999999
	.quad	0x401cdb5e95b78cca              # double 7.2142280000000003
	.quad	0x4006e800eae18aca              # double 2.863283
	.quad	0x4020bb88a8b08dd2              # double 8.3662770000000002
	.quad	0x4020ff3c0c1fc8f3              # double 8.4985049999999998
	.quad	0x4022b7969e3c9689              # double 9.3585709999999995
	.quad	0x40112d6e04c05921              # double 4.294365
	.quad	0x401ddbc44bf4cb19              # double 7.4646160000000004
	.quad	0x401cc8383ad9f0a2              # double 7.1955270000000002
	.quad	0x4002ca8eb463497b              # double 2.3489049999999998
	.quad	0x401079b413986339              # double 4.1188510000000003
	.quad	0x402054df8b157258              # double 8.1657679999999999
	.quad	0x40054f9e3864cb5c              # double 2.6638760000000001
	.quad	0x401b4acb85a4f00f              # double 6.8230420000000001
	.quad	0x40201c58ab92c062              # double 8.0553640000000009
	.quad	0x4022a9f57b41bfbe              # double 9.3319510000000001
	.quad	0x40104a13c254a3c6              # double 4.0723409999999998
	.quad	0x401f1d5f99c38b05              # double 7.7786850000000002
	.quad	0x4020e357603925bb              # double 8.4440259999999991
	.quad	0x3fc6c9d9d3458cd2              # double 0.178035
	.quad	0x3fef944ed6fda837              # double 0.986854
	.quad	0x400c0ce5710880d8              # double 3.506297
	.quad	0x400a1ed7c6fbd274              # double 3.2650600000000001
	.quad	0x401506687f455a7d              # double 5.2562579999999999
	.quad	0x4006bb6aa4b9884c              # double 2.8415119999999998
	.quad	0x4020136d22424a27              # double 8.0379419999999993
	.quad	0x3f8af6c69b5a63fa              # double 0.013166000000000001
	.quad	0x4014643c7d5ed070              # double 5.0978870000000001
	.quad	0x3ff9a21a719b4dcf              # double 1.6020760000000001
	.quad	0x401bec2b0ea18373              # double 6.9806330000000001
	.quad	0x401c9aa7ded6ba8c              # double 7.1510309999999997
	.quad	0x400be9fd7a13c255              # double 3.4892530000000002
	.quad	0x400b52c83ec892ab              # double 3.4154209999999998
	.quad	0x40101df9378ee286              # double 4.0292709999999996
	.quad	0x4009e62888b545c8              # double 3.2373820000000002
	.quad	0x3ff8de8f6cefed63              # double 1.5543359999999999
	.quad	0x400e2cc3e3193f6c              # double 3.7718579999999999
	.quad	0x402070ae74f2f124              # double 8.2200810000000004
	.quad	0x40216651d25aab47              # double 8.6998429999999995
	.quad	0x4023f90214ad362f              # double 9.9863440000000007
	.quad	0x4011fd035371971c              # double 4.4970829999999999
	.quad	0x4012605dd8f92afa              # double 4.5941080000000003
	.quad	0x4008a845996744b3              # double 3.0821640000000001
	.quad	0x4016451f3e89a88b              # double 5.5675020000000002
	.quad	0x4020e9cd8127b2cc              # double 8.4566459999999992
	.quad	0x3fd98d1d8a548238              # double 0.39923799999999998
	.quad	0x40109ee0b0af5fd4              # double 4.1551539999999996
	.quad	0x4023f943bf727137              # double 9.9868450000000006
	.quad	0x400b8550870110a1              # double 3.4400949999999999
	.quad	0x40177ed740c4156e              # double 5.8738679999999999
	.quad	0x4020828b8f14db59              # double 8.2549709999999994
	.quad	0x401a9d698fe69271              # double 6.6537230000000003
	.quad	0x3feeba109d0635a4              # double 0.96021299999999998
	.quad	0x40191714fce746cc              # double 6.2725410000000004
	.quad	0x4019d29a5ebb773a              # double 6.455667
	.quad	0x40019161a1db877b              # double 2.1959870000000001
	.quad	0x4021d940789613d3              # double 8.9243199999999998
	.quad	0x4008738cda6e75ff              # double 3.0564209999999998
	.quad	0x40028213a0c6b485              # double 2.3135140000000001
	.quad	0x3ffec53e2d6238da              # double 1.9231549999999999
	.quad	0x4021774cf4a558ea              # double 8.7330089999999991
	.quad	0x4016b22962cfd8f1              # double 5.6739860000000002
	.quad	0x40220519bd4067cf              # double 9.0099619999999998
	.quad	0x40237f7c243dccea              # double 9.7489939999999997
	.quad	0x3ff5a2ab25b317f0              # double 1.352214
	.quad	0x402393cf0b6b6e0d              # double 9.7886889999999997
	.quad	0x40205c82be8bc16a              # double 8.1806850000000004
	.quad	0x401a69841aac53b1              # double 6.6030430000000004
	.quad	0x3ff795c31593e5fb              # double 1.4740629999999999
	.quad	0x401f9e8101f31f47              # double 7.904789
	.quad	0x4001ca4e379b77c0              # double 2.2237819999999999
	.quad	0x40224d7214f0520d              # double 9.1512609999999999
	.quad	0x4010819ef954eb14              # double 4.1265830000000001
	.quad	0x40143d0c80410300              # double 5.0596180000000004
	.quad	0x4023e9719f7f8ca8              # double 9.9559449999999998
	.quad	0x4020c98aeb80ecfa              # double 8.3936379999999993
	.quad	0x401b302ff8ec0f88              # double 6.7970579999999998
	.quad	0x4016a76709fa54c5              # double 5.6634789999999997
	.quad	0x401d9efb2aae2974              # double 7.4052550000000004
	.quad	0x401959068986fcdf              # double 6.3369390000000001
	.quad	0x400c0ffda4052d66              # double 3.5078079999999998
	.quad	0x400623be6601bc99              # double 2.7674530000000002
	.quad	0x3ff9d454152b0a70              # double 1.6143380000000001
	.quad	0x4016c92c061847f5              # double 5.6964569999999997
	.quad	0x400659999999999a              # double 2.7937500000000002
	.quad	0x40227d6ece13f4aa              # double 9.2449860000000008
	.quad	0x4019a3d3e4ef0282              # double 6.4099880000000002
	.quad	0x40230efd21ff2e49              # double 9.5292750000000001
	.quad	0x4014057d9dba908a              # double 5.0053619999999999
	.quad	0x4016d70329802c0a              # double 5.7099729999999997
	.quad	0x4011b48f96e15875              # double 4.426329
	.quad	0x402387d805e5f30e              # double 9.7653199999999991
	.quad	0x4007e5985ad538ac              # double 2.987107
	.quad	0x4022a847d3d4280b              # double 9.3286730000000002
	.quad	0x401a8f0a5efe9318              # double 6.6396879999999996
	.quad	0x3ffbddc93ea2d2fe              # double 1.7416469999999999
	.quad	0x401bee90364388ec              # double 6.9829720000000002
	.quad	0x400f1260f5e41d4b              # double 3.8839739999999998
	.quad	0x40139e4473cd5736              # double 4.9045579999999998
	.quad	0x401a355e6bc621b8              # double 6.5521180000000001
	.quad	0x40223beab367a0f9              # double 9.1170249999999999
	.quad	0x3fa0624dd2f1a9fc              # double 0.032000000000000001
	.quad	0x40221cf9e3864cb6              # double 9.0565940000000005
	.quad	0x402101bf5946c333              # double 8.5034130000000001
	.quad	0x401fe7f38c5436b9              # double 7.976515
	.quad	0x4022a7991bc55864              # double 9.3273399999999995
	.quad	0x4023428c586876e2              # double 9.6299770000000002
	.quad	0x402207ff151e7536              # double 9.0156179999999999
	.quad	0x4003736b4c7f3494              # double 2.4313570000000002
	.quad	0x400b3963992c8c50              # double 3.403022
	.quad	0x40196fb2aae29739              # double 6.3590799999999996
	.quad	0x400b7701d9f4d37c              # double 3.433109
	.quad	0x401b9cd184c27200              # double 6.903143
	.quad	0x40177163fdd65a14              # double 5.8607329999999997
	.quad	0x401ef098d477bbf9              # double 7.7349579999999997
	.quad	0x400f61426fe718a8              # double 3.9224899999999998
	.quad	0x401f37de939eadd6              # double 7.8045600000000004
	.quad	0x401a3a7f8012dfd7              # double 6.5571270000000004
	.quad	0x4021c56f112fd32c              # double 8.8856129999999993
	.quad	0x4023c88effe2a3cf              # double 9.8917160000000006
	.quad	0x3f8820a30db6a1e8              # double 0.011781
	.quad	0x40225d8d5842b735              # double 9.1827190000000005
	.quad	0x40235b5eb7457c0b              # double 9.6784569999999998
	.quad	0x3ff58a5269595fee              # double 1.3462700000000001
	.quad	0x3fdc091c087442c8              # double 0.438056
	.quad	0x40056ed3d859c8c9              # double 2.6791149999999999
	.quad	0x4021aae44b6e935c              # double 8.8337730000000007
	.quad	0x3fd228848387df5d              # double 0.283723
	.quad	0x40211951e75360d0              # double 8.5494529999999997
	.quad	0x3ffdb504c48adeec              # double 1.8566940000000001
	.quad	0x4021886e3b46fdeb              # double 8.7664659999999994
	.quad	0x401b821815a07b35              # double 6.8770449999999999
	.quad	0x4018cf3387160957              # double 6.2023450000000002
	.quad	0x3ff8443e5321e604              # double 1.516661
	.quad	0x40151138fffbce42              # double 5.2668189999999999
	.quad	0x40146ff2a172abef              # double 5.109324
	.quad	0x4005466559f6ec5b              # double 2.659373
	.quad	0x40075f63c31df762              # double 2.9215770000000001
	.quad	0x401f1a7589efd86b              # double 7.7758390000000003
	.quad	0x400ef67d34df04de              # double 3.8703560000000001
	.quad	0x4011ca5b0ff10ecb              # double 4.4476129999999996
	.quad	0x40175cf9a06a6e33              # double 5.8407960000000001
	.quad	0x4001f9d909f1f14a              # double 2.2469960000000002
	.quad	0x4021068f6cefed63              # double 8.5128129999999995
	.quad	0x4023f250b524399b              # double 9.9732719999999996
	.quad	0x4010a64e054690de              # double 4.162407
	.quad	0x3ff1fdea465a5764              # double 1.1244909999999999
	.quad	0x3ff6bd6733ebbfd7              # double 1.421241
	.quad	0x3ffc6ecbfb15b574              # double 1.77705
	.quad	0x40146f041461b6d4              # double 5.1084139999999998
	.quad	0x4003316872b020c5              # double 2.3991250000000002
	.quad	0x4021fcaf2d7f950c              # double 8.9935240000000007
	.quad	0x4021a8420f6f08cc              # double 8.8286289999999993
	.quad	0x4018ac70c996b767              # double 6.168399
	.quad	0x4005b77c02afdda9              # double 2.7145920000000001
	.quad	0x40022a0fd3b29a1c              # double 2.2705380000000002
	.quad	0x400bb53cddd6e04c              # double 3.463495
	.quad	0x40161b7952d234ec              # double 5.5268300000000004
	.quad	0x3ff70c6b484d76ab              # double 1.4405319999999999
	.quad	0x3fffe222d5171e2a              # double 1.9927090000000001
	.quad	0x4015d8aa00192a73              # double 5.4615859999999996
	.quad	0x401c2cf312b1b36c              # double 7.0438960000000002
	.quad	0x400e617a89331a09              # double 3.7975970000000001
	.quad	0x3fdfa26e5471715c              # double 0.49428899999999998
	.quad	0x4002f0c9107faa04              # double 2.3675709999999999
	.quad	0x40214e295208e150              # double 8.6526589999999999
	.quad	0x3fe07625204af923              # double 0.51442200000000005
	.quad	0x4017764fdb09a672              # double 5.8655390000000001
	.quad	0x401243da72a7bd49              # double 4.5662630000000002
	.quad	0x40235e3992c8c500              # double 9.6840329999999994
	.quad	0x401d978705425f20              # double 7.3979759999999999
	.quad	0x4002a52f7f498c3b              # double 2.330657
	.quad	0x4010a5e2478854ce              # double 4.1619960000000003
	.quad	0x4018b08b32ce8965              # double 6.1724059999999996
	.quad	0x4017fa250f840182              # double 5.9942820000000001
	.quad	0x4002940bbb1f255f              # double 2.3222879999999999
	.quad	0x3ffcba92a3055326              # double 1.79555
	.quad	0x4021e013879c4114              # double 8.9376490000000003
	.quad	0x4009d8ff75968512              # double 3.2309559999999999
	.quad	0x40199b00ffda4053              # double 6.4013710000000001
	.quad	0x401719a9973d9ec7              # double 5.775061
	.quad	0x400ad1159c497742              # double 3.3520919999999998
	.quad	0x4011d2d490e66cb1              # double 4.455889
	.quad	0x4009fa51a005c465              # double 3.2472259999999999
	.quad	0x401341f53825e13b              # double 4.8144119999999999
	.quad	0x40083d9ec7000432              # double 3.0300880000000001
	.quad	0x401ee141a6937d20              # double 7.7199770000000001
	.quad	0x401c6e62131a8ef7              # double 7.1077959999999996
	.quad	0x4020db7e0ac7da1f              # double 8.4286960000000004
	.quad	0x3ffcb6d43d03968d              # double 1.7946359999999999
	.quad	0x4011f6412cf0f9d3              # double 4.4904830000000002
	.quad	0x401ba0e1f7d73c92              # double 6.9071119999999997
	.quad	0x401e080d3cff64d0              # double 7.5078630000000004
	.quad	0x4021503e20ccff22              # double 8.6567240000000005
	.quad	0x3ff26fee6fb4c3c2              # double 1.1523270000000001
	.quad	0x3ff4269ad42c3c9f              # double 1.259425
	.quad	0x4022188ce703afb8              # double 9.0479500000000002
	.quad	0x40122634117f8445              # double 4.5373080000000003
	.quad	0x401c111ba3ca7504              # double 7.0167070000000002
	.quad	0x400acb0531982880              # double 3.3491309999999999
	.quad	0x402260d9b5e95b79              # double 9.1891610000000004
	.quad	0x4011e1d323fee2ca              # double 4.4705320000000004
	.quad	0x40141dba908a265f              # double 5.0290319999999999
	.quad	0x3fe51795b35b0bbf              # double 0.65912899999999996
	.quad	0x40013fc115df6556              # double 2.1561300000000001
	.quad	0x400d81b97353b4b3              # double 3.688342
	.quad	0x401962730c671690              # double 6.3461420000000004
	.quad	0x400d0d1526d8b1dd              # double 3.6313879999999998
	.quad	0x3ff3d25aab474107              # double 1.238856
	.quad	0x401619c842fa5094              # double 5.5251780000000004
	.quad	0x401a0c6da4484945              # double 6.5121370000000001
	.quad	0x400196b8f9b13166              # double 2.1985950000000001
	.quad	0x3fef1fd5885d3133              # double 0.97263599999999994
	.quad	0x3fef188094e5d5b2              # double 0.97174099999999997
	.quad	0x40177654d61b2a28              # double 5.865558
	.quad	0x3ffb6b2f23033a47              # double 1.713668
	.quad	0x401b4950fc71d606              # double 6.8215979999999998
	.quad	0x401ca8d6d3b6cbda              # double 7.1648820000000004
	.quad	0x402130cbf2b239a4              # double 8.5953060000000007
	.quad	0x40020883fd502257              # double 2.2541579999999999
	.quad	0x4013ddc4007570c5              # double 4.9665679999999996
	.quad	0x401bc0d5629d840a              # double 6.9383140000000001
	.quad	0x4017f2877ee4e26d              # double 5.9868449999999998
	.quad	0x3ff01d55e6bc621b              # double 1.0071619999999999
	.quad	0x3ff225a250f84018              # double 1.134188
	.quad	0x3fcc64b2314013ec              # double 0.22182299999999999
	.quad	0x4023a1a437824d4d              # double 9.8157060000000004
	.quad	0x401f9fc3b4f61672              # double 7.9060199999999998
	.quad	0x3fa056c508b32ce9              # double 0.031912000000000003
	.quad	0x4001e8aac96cc5fc              # double 2.238607
	.quad	0x4004b79af1886df8              # double 2.5896509999999999
	.quad	0x40138d8904f6dfc6              # double 4.8882180000000002
	.quad	0x401645c209246bf0              # double 5.5681229999999999
	.quad	0x3fa3161a1db877ab              # double 0.037277999999999999
	.quad	0x401daa7264a16a48              # double 7.4164519999999996
	.quad	0x400ab3b18dac258d              # double 3.3377409999999998
	.quad	0x40000ca686e7e62e              # double 2.0061770000000001
	.quad	0x4021a004b7f5a533              # double 8.8125359999999997
	.quad	0x400fa26e5471715c              # double 3.9543119999999998
	.quad	0x400acf3dc054ef46              # double 3.3511920000000002
	.quad	0x401aa1cef240fa9c              # double 6.6580159999999999
	.quad	0x4014f383ad9f0a1c              # double 5.2378070000000001
	.quad	0x4022f040bfe3b03e              # double 9.4692439999999998
	.quad	0x40077b6aa4b9884c              # double 2.9352619999999998
	.quad	0x401e1eb78897e996              # double 7.5299969999999998
	.quad	0x401830f01fb82c2c              # double 6.0477910000000001
	.quad	0x401a2b55ef1fddec              # double 6.5423200000000001
	.quad	0x401f2528f190d174              # double 7.786289
	.quad	0x4010a55b89939219              # double 4.1614820000000003
	.quad	0x3ff901ede1198aec              # double 1.5629710000000001
	.quad	0x401b51522a6f3f53              # double 6.829415
	.quad	0x4019c9496249a134              # double 6.4465690000000002
	.quad	0x40227b68cef672b9              # double 9.2410340000000009
	.quad	0x3fe5231c64ba94bc              # double 0.66053600000000001
	.quad	0x402275c7ef177a70              # double 9.2300409999999999
	.quad	0x4015c220bc382a13              # double 5.439578
	.quad	0x4021537a5f41aef7              # double 8.663043
	.quad	0x40076cdd93c46d83              # double 2.9281570000000001
	.quad	0x401407da1ec4e725              # double 5.0076679999999998
	.quad	0x400ba3e7d135115a              # double 3.4550320000000001
	.quad	0x401695629d8409e5              # double 5.6458839999999997
	.quad	0x4022a123a29c779a              # double 9.3147249999999993
	.quad	0x40158fb7a5f41aef              # double 5.3903489999999996
	.quad	0x3fe1a37cdcca70d2              # double 0.551207
	.quad	0x3fcfc77143393ab4              # double 0.24827399999999999
	.quad	0x400e16c3760bf5d8              # double 3.7611150000000002
	.quad	0x401c24c51116a8b9              # double 7.0359080000000001
	.quad	0x402137d00713f078              # double 8.6090090000000004
	.quad	0x3fe5267e846a5d6c              # double 0.66094900000000001
	.quad	0x3f829bae46cfc82a              # double 0.0090860000000000003
	.quad	0x401dca176ddaceee              # double 7.4473549999999999
	.quad	0x402359813879c411              # double 9.6748139999999995
	.quad	0x4023609f1f14983d              # double 9.6887139999999991
	.quad	0x4020164bec679cc7              # double 8.0435479999999995
	.quad	0x40203fef39085f4a              # double 8.1248719999999999
	.quad	0x3fe594855da27286              # double 0.67437999999999998
	.quad	0x400d880c73abc947              # double 3.69143
	.quad	0x401ef16b54e2b064              # double 7.7357610000000001
	.quad	0x402203a8826aa8eb              # double 9.0071449999999995
	.quad	0x3fbca7d6733ebbfd              # double 0.11193599999999999
	.quad	0x4016af666234a87e              # double 5.6712889999999998
	.quad	0x40168e9ccb7d4174              # double 5.6392699999999998
	.quad	0x400eb23c42a66dbd              # double 3.8370289999999998
	.quad	0x401a55e41d4b6a62              # double 6.5838780000000003
	.quad	0x402221276fb09204              # double 9.0647540000000006
	.quad	0x401a0b630a91537a              # double 6.51112
	.quad	0x40197996744b2b77              # double 6.3687379999999996
	.quad	0x4022fc97fa5d28d0              # double 9.493347
	.quad	0x401a484f09528f19              # double 6.570614
	.quad	0x3ffc1eeed8904f6e              # double 1.757552
	.quad	0x4012e17b0f6ad70e              # double 4.7201959999999996
	.quad	0x40159f2fdb8fde2f              # double 5.405456
	.quad	0x4021e4e2b063e07a              # double 8.9470419999999997
	.quad	0x400c7b44e50c5eb3              # double 3.56019
	.quad	0x401ef0ef99806f26              # double 7.7352889999999999
	.quad	0x40215bffcdab191e              # double 8.6796860000000002
	.quad	0x3fee95c63ae2541e              # double 0.95578300000000005
	.quad	0x4020e1afe1da7b0b              # double 8.4407949999999996
	.quad	0x401b5c297bfa4c62              # double 6.8400020000000001
	.quad	0x4016b10129cbab65              # double 5.6728560000000003
	.quad	0x4012bc60cbf2b23a              # double 4.6839630000000003
	.quad	0x400683dab5c39bcc              # double 2.8143820000000002
	.quad	0x3fde327674d16335              # double 0.47183000000000003
	.quad	0x3fa69a2c669057d1              # double 0.044144999999999997
	.quad	0x40161706d5065732              # double 5.5224869999999999
	.quad	0x4009b244a6223e18              # double 3.2120449999999998
	.quad	0x3fff8b220791c4b9              # double 1.971468
	.quad	0x401f0fb2aae29739              # double 7.7653299999999996
	.quad	0x4021cd91cd1c7de5              # double 8.9015029999999999
	.quad	0x40065ef5a964e8b8              # double 2.796367
	.quad	0x4017ed8ec95bff04              # double 5.9819899999999997
	.quad	0x3ff10c404a72ead9              # double 1.065491
	.quad	0x401820bdcad14a0a              # double 6.0319739999999999
	.quad	0x401fd9a49c2c1b11              # double 7.962542
	.quad	0x401e5b63d3e4ef03              # double 7.5892480000000004
	.quad	0x401c20dd3fe1975f              # double 7.0320939999999998
	.quad	0x401d3fe111276fb1              # double 7.3123820000000004
	.quad	0x3fef85a4f00ef135              # double 0.98506400000000005
	.quad	0x4023a12cadddf43c              # double 9.8147939999999991
	.quad	0x4017c72c0e7bc3c6              # double 5.9445040000000002
	.quad	0x3ff820817fc7607c              # double 1.5079359999999999
	.quad	0x40129a3b14a90471              # double 4.6506160000000003
	.quad	0x401d9c105186db51              # double 7.402406
	.quad	0x40063e2bcf91a32b              # double 2.780357
	.quad	0x3fe4ffa5d28d002e              # double 0.65620699999999998
	.quad	0x4021c68a71de69ad              # double 8.8877749999999995
	.quad	0x4008e2af5771001d              # double 3.1106859999999998
	.quad	0x3ffa9676640a6b94              # double 1.661734
	.quad	0x4008c06d938151a4              # double 3.0939589999999999
	.quad	0x40225df548ecd8dc              # double 9.1835120000000003
	.quad	0x400b09e1b089a027              # double 3.3798249999999999
	.quad	0x40175cf4e874c900              # double 5.8407780000000002
	.quad	0x400e83476295208e              # double 3.814101
	.quad	0x3ff06106ab14ec20              # double 1.0236879999999999
	.quad	0x40069a7d24180d3d              # double 2.825434
	.quad	0x4014a71865519371              # double 5.1631790000000004
	.quad	0x4014575b81301648              # double 5.0853099999999998
	.quad	0x3fff4e410b630a91              # double 1.9566049999999999
	.quad	0x3ffa289fc6da4485              # double 1.6349180000000001
	.quad	0x40203c2480e8c8ac              # double 8.1174660000000002
	.quad	0x3fb129131ec0b567              # double 0.067032999999999995
	.quad	0x4004bc8d9f9053a0              # double 2.5920670000000001
	.quad	0x40163bcf0b6b6e0d              # double 5.5584069999999999
	.quad	0x400de4934267839d              # double 3.7366090000000001
	.quad	0x401025f99c38b04b              # double 4.0370850000000003
	.quad	0x4014f0c6f7a0b5ee              # double 5.2351340000000004
	.quad	0x4021c8e29f9ce8d9              # double 8.8923539999999992
	.quad	0x4014a87db2b34613              # double 5.164542
	.quad	0x4023159146e4c0df              # double 9.5421239999999993
	.quad	0x3ffd85b4aa9717df              # double 1.845143
	.quad	0x4010b47a17f4128c              # double 4.176247
	.quad	0x40222631f8a0902e              # double 9.0746000000000002
	.quad	0x4019d266fd651b0d              # double 6.4554710000000002
	.quad	0x3fd82749f0e4da0a              # double 0.37739800000000001
	.quad	0x40200e861e92923e              # double 8.0283669999999994
	.quad	0x3ff0a45a1cac0831              # double 1.040125
	.quad	0x4006abedfa43fe5d              # double 2.8339500000000002
	.quad	0x3ff7b4e22a2c2374              # double 1.4816609999999999
	.quad	0x400140b912dba4d7              # double 2.156603
	.quad	0x4016b5d41fa76534              # double 5.6775669999999998
	.quad	0x3ff93687b139c94f              # double 1.5758129999999999
	.quad	0x4023870435efa616              # double 9.7637040000000006
	.quad	0x4003f1ca7d6733ec              # double 2.4930620000000001
	.quad	0x4009929802c0a4a0              # double 3.1965789999999998
	.quad	0x401bdb26394face6              # double 6.9640129999999996
	.quad	0x40146d5171e29b6b              # double 5.1067559999999999
	.quad	0x401170fb224aada3              # double 4.3603329999999998
	.quad	0x3ff08d338f798527              # double 1.034473
	.quad	0x3feac5154866a11f              # double 0.83655800000000002
	.quad	0x401c3b80a9de8b3b              # double 7.0581079999999998
	.quad	0x40059803cd141a69              # double 2.6992259999999999
	.quad	0x4001eef240fa9c13              # double 2.241673
	.quad	0x401ed1e3a7daa4fd              # double 7.7049700000000003
	.quad	0x3fc5a52ac753e708              # double 0.169103
	.quad	0x4008d4af4f0d844d              # double 3.10385
	.quad	0x401d409a671ef30a              # double 7.3130889999999997
	.quad	0x4002a73de1e2de87              # double 2.331661
	.quad	0x400a40c73abc9470              # double 3.2816299999999998
	.quad	0x4019e44f5d35653d              # double 6.4729590000000004
	.quad	0x4023df36cdf266ba              # double 9.9359649999999995
	.quad	0x400a99ca5bd944aa              # double 3.3250929999999999
	.quad	0x402271ab6d00b45b              # double 9.2220110000000002
	.quad	0x4016c251c193b3a7              # double 5.6897650000000004
	.quad	0x401422e7f6f4be83              # double 5.0340879999999997
	.quad	0x40134cac4b4d056c              # double 4.8248759999999997
	.quad	0x3fe322f48c2e770c              # double 0.59801700000000002
	.quad	0x4011cc33f85510d4              # double 4.4494170000000004
	.quad	0x40097b530ced4e4d              # double 3.1852170000000002
	.quad	0x40220157abb8800f              # double 9.0026220000000006
	.quad	0x4020e36c7a7c9de0              # double 8.4441869999999994
	.quad	0x3ffb4cc9a77e5eab              # double 1.7062470000000001
	.quad	0x402061bf162ae4b0              # double 8.1909109999999998
	.quad	0x400669d5a187a4a5              # double 2.8016770000000002
	.quad	0x4001812dfd694ccb              # double 2.1880760000000001
	.quad	0x4020b34a44c7b02d              # double 8.3501759999999994
	.quad	0x4014c233df2a9d62              # double 5.1896509999999996
	.quad	0x400dc197e5647347              # double 3.7195279999999999
	.quad	0x4023ecf1800a7c5b              # double 9.9627800000000004
	.quad	0x3fe4bfad2999567e              # double 0.64839800000000003
	.quad	0x3fff437d63022dd8              # double 1.9539770000000001
	.quad	0x401d3f609dcf8940              # double 7.3118920000000003
	.quad	0x401f1d21bc126a66              # double 7.7784490000000002
	.quad	0x3fe1211ec918e326              # double 0.53529300000000002
	.quad	0x400983de6149c6f3              # double 3.1893889999999998
	.quad	0x4022a40df58c08b7              # double 9.3204189999999993
	.quad	0x400cfcbccf28c79f              # double 3.6234069999999998
	.quad	0x3ff6f649d388a8b1              # double 1.4351290000000001
	.quad	0x401cf41e9af5ba2c              # double 7.2383980000000001
	.quad	0x401c4dae81882adc              # double 7.0758609999999997
	.quad	0x40223f75fb2edfe7              # double 9.1239469999999994
	.quad	0x3ffeb2e7b3d8e001              # double 1.9186780000000001
	.quad	0x401b4fa48301a7a0              # double 6.8277760000000001
	.quad	0x40113246bf01322f              # double 4.2990979999999999
	.quad	0x3ffdb152f3c2dadc              # double 1.8557920000000001
	.quad	0x3fd3bf444e0daa0d              # double 0.30854900000000002
	.quad	0x3fed3aa1511dffc5              # double 0.91340699999999997
	.quad	0x400b456ffc115df6              # double 3.4089049999999999
	.quad	0x401202424a276b7f              # double 4.5022060000000002
	.quad	0x401b29b3d07c84b6              # double 6.7907250000000001
	.quad	0x401186a7ac81d3aa              # double 4.3814989999999998
	.quad	0x401970d66f0cfe15              # double 6.3601929999999998
	.quad	0x40207d054ac29bf1              # double 8.2441809999999993
	.quad	0x4006c6df82b1f688              # double 2.8471060000000001
	.quad	0x400ee1a1554fbdad              # double 3.8601709999999998
	.quad	0x4020321ee675147f              # double 8.0978919999999999
	.quad	0x4013c6b37867f0aa              # double 4.9440439999999999
	.quad	0x4020549e44fa0514              # double 8.1652699999999995
	.quad	0x4001ba31a4bdba0a              # double 2.2159149999999999
	.quad	0x400ad6aad1d041cc              # double 3.3548179999999999
	.quad	0x40175057082491b0              # double 5.8284570000000002
	.quad	0x3ff7edc3bd599243              # double 1.4955480000000001
	.quad	0x4006933fc86cebbc              # double 2.8218990000000002
	.quad	0x40048c1fc8f32379              # double 2.5684200000000001
	.quad	0x401524384ba0e842              # double 5.2853709999999996
	.quad	0x402378e8858ff759              # double 9.7361489999999992
	.quad	0x40116f7a4e7ab756              # double 4.3588649999999998
	.quad	0x4014fd38cda6e760              # double 5.247287
	.quad	0x402212c83ec892ab              # double 9.0366839999999993
	.quad	0x4017de93e1c9b414              # double 5.9673610000000004
	.quad	0x3ff778ac18f81e8a              # double 1.466961
	.quad	0x4020e6c764adff82              # double 8.4507399999999997
	.quad	0x401a66555c52e72e              # double 6.5999350000000003
	.quad	0x4021e5ba0a526959              # double 8.9486849999999993
	.quad	0x40230d5de58e64b2              # double 9.5261069999999997
	.quad	0x3ffc0c2f837b4a23              # double 1.7529749999999999
	.quad	0x3ffd12934acaff6d              # double 1.817035
	.quad	0x401eebf0dc768dfc              # double 7.7304110000000001
	.quad	0x3fe11c5a3e39f773              # double 0.53471100000000005
	.quad	0x4015bdcbddb9841b              # double 5.4353480000000003
	.quad	0x3ff529ad42c3c9ef              # double 1.322675
	.quad	0x3fecce93e1c9b414              # double 0.90021700000000004
	.quad	0x4020f8b029281776              # double 8.4857189999999996
	.quad	0x401d3c16df3f9618              # double 7.3086809999999999
	.quad	0x40021b7ae5796bfd              # double 2.2634180000000002
	.quad	0x3ff511cc100e6afd              # double 1.316845
	.quad	0x400df1bcdbbe0158              # double 3.743036
	.quad	0x40165f10a99b6f5d              # double 5.5928370000000003
	.quad	0x4011f98e53eb399f              # double 4.4937069999999997
	.quad	0x402231cc96462802              # double 9.0972639999999991
	.quad	0x3fff55410f94c87a              # double 1.9583140000000001
	.quad	0x3fed2459103c8e26              # double 0.91068700000000002
	.quad	0x400d5041cc532a49              # double 3.6641879999999998
	.quad	0x4016694c87980f56              # double 5.6028310000000001
	.quad	0x3fecd145d851654d              # double 0.90054599999999996
	.quad	0x40105d0635a426bb              # double 4.0908439999999997
	.quad	0x3ff5e68b19a415f4              # double 1.3687849999999999
	.quad	0x4022b3320535c9e6              # double 9.3499909999999993
	.quad	0x3fe6b9d1b2e59afa              # double 0.71018300000000001
	.quad	0x400022bbecaab8a6              # double 2.0169600000000001
	.quad	0x3fe98642396073de              # double 0.79763899999999999
	.quad	0x401fb73ffac1d29e              # double 7.9289550000000002
	.quad	0x3ff67bb40b34e768              # double 1.4052009999999999
	.quad	0x400b9eb18116ebd5              # double 3.4524870000000001
	.quad	0x401a742784a9478d              # double 6.6134320000000004
	.quad	0x401a2e2eb1c432ca              # double 6.5450999999999997
	.quad	0x401dba9ac36544fe              # double 7.4322309999999998
	.quad	0x401d336c15d2d01c              # double 7.300217
	.quad	0x4011ef2f9873ffac              # double 4.4835799999999999
	.quad	0x4013efb8b26394fb              # double 4.9841030000000002
	.quad	0x4023734acaff6d33              # double 9.7251799999999999
	.quad	0x40223ea39c51dabe              # double 9.1223419999999997
	.quad	0x3fc11dde37585be2              # double 0.13372400000000001
	.quad	0x400f2f49491f2dc3              # double 3.8980890000000001
	.quad	0x40162b56b8737974              # double 5.5423229999999997
	.quad	0x4022a7d1569f4906              # double 9.327769
	.quad	0x401cd100e6afcce2              # double 7.2041050000000002
	.quad	0x401cb51e321a2e7f              # double 7.1768729999999996
	.quad	0x400d364adff822bc              # double 3.65151
	.quad	0x401bd1d4b6a619db              # double 6.9549130000000003
	.quad	0x4022e840bfe3b03e              # double 9.4536189999999998
	.quad	0x401627a3db3bfb59              # double 5.5387110000000002
	.quad	0x4001d7d9dba908a2              # double 2.2303959999999998
	.quad	0x400940b34e768598              # double 3.1565919999999998
	.quad	0x3fe8d530489d27c4              # double 0.77602400000000004
	.quad	0x3feef28848387df6              # double 0.96710600000000002
	.quad	0x400832d234eb9a17              # double 3.0248149999999998
	.quad	0x401ecb44a1f08030              # double 7.6985039999999998
	.quad	0x4003e53d20f2becf              # double 2.4869330000000001
	.quad	0x4016df75d9a0f0a6              # double 5.7182230000000001
	.quad	0x40215a28dc981beb              # double 8.6760929999999998
	.quad	0x3fda8ce2d1f1cfbc              # double 0.41484900000000002
	.quad	0x3ff6833a4723ab00              # double 1.407038
	.quad	0x3ff25d99029ae4f3              # double 1.147851
	.quad	0x4022318b71b8aa00              # double 9.0967669999999998
	.quad	0x401144e48626f60e              # double 4.3172779999999999
	.quad	0x401c8d9c27e95315              # double 7.1382909999999997
	.quad	0x3ffc24a16a487336              # double 1.7589429999999999
	.quad	0x4020f131ec0b5675              # double 8.4710839999999994
	.quad	0x3ff97d5bab21815a              # double 1.593105
	.quad	0x40144382a12f9011              # double 5.0659280000000004
	.quad	0x3ff0a95b78cc9a78              # double 1.041347
	.quad	0x4021b21db877ab32              # double 8.8478829999999995
	.quad	0x4005fbae46cfc82a              # double 2.7478910000000001
	.quad	0x4021d46455eaee20              # double 8.914828
	.quad	0x40211a584f4c6e6e              # double 8.5514550000000007
	.quad	0x401b703a322af577              # double 6.8595969999999999
	.quad	0x402076b484d76ab6              # double 8.2318460000000009
	.quad	0x4023b279dd3bafd9              # double 9.8485859999999991
	.quad	0x4020f0cc144028e5              # double 8.470307
	.quad	0x40010baa582dbe7f              # double 2.1306959999999999
	.quad	0x4020dd07852f7f4a              # double 8.4316980000000008
	.quad	0x3ffae70196d8f4f9              # double 1.6813979999999999
	.quad	0x4022f0ed5f138bce              # double 9.470561
	.quad	0x3fed1611ba3ca750              # double 0.90894399999999997
	.quad	0x401eae84ad794a6f              # double 7.6704280000000002
	.quad	0x40009f26f1dc50ce              # double 2.0777109999999999
	.quad	0x4021052da98676a7              # double 8.5101139999999997
	.quad	0x40044f049a9973da              # double 2.538583
	.quad	0x40125eaf251c193b              # double 4.5924649999999998
	.quad	0x3ffec92253111f0c              # double 1.924105
	.quad	0x4007611ba3ca7504              # double 2.9224160000000001
	.quad	0x3fc52fba01eeed89              # double 0.165519
	.quad	0x4022e5653c9abb02              # double 9.4480380000000004
	.quad	0x401453beec39799e              # double 5.0817829999999997
	.quad	0x3fdf5d35653c9abb              # double 0.490064
	.quad	0x401ba43aa79bbadc              # double 6.91038
	.quad	0x4015603f2d3c792d              # double 5.3439909999999999
	.quad	0x4021f7bc1acde1a0              # double 8.9838570000000004
	.quad	0x40108d3e4ef0281c              # double 4.1379330000000003
	.quad	0x4014b28e4fb97bb7              # double 5.1743709999999998
	.quad	0x4021ee3ed0f62739              # double 8.9653229999999997
	.quad	0x3ff1f63b256ffc11              # double 1.1226149999999999
	.quad	0x401301e18efbb0e6              # double 4.7518370000000001
	.quad	0x3ffa8168b5cbff47              # double 1.6565939999999999
	.quad	0x40204093faf42785              # double 8.1261290000000006
	.quad	0x4011b962cfd8f0c7              # double 4.4310409999999996
	.quad	0x401c59335d249e45              # double 7.08711
	.quad	0x401da53b0813cab8              # double 7.4113579999999998
	.quad	0x400cbf0a1be2b496              # double 3.5932810000000002
	.quad	0x401e412dfd694ccb              # double 7.5636520000000002
	.quad	0x4019feb463497b74              # double 6.4987349999999999
	.quad	0x401724e6e221c8a8              # double 5.7860370000000003
	.quad	0x401f64acf312b1b3              # double 7.8483159999999996
	.quad	0x3ff15426fe718a87              # double 1.083045
	.quad	0x3ff1b2ca57a786c2              # double 1.10615
	.quad	0x4017dd82773e24ff              # double 5.9663180000000002
	.quad	0x4017cae5ffa3b9ae              # double 5.948143
	.quad	0x401d7ecd4aa10e02              # double 7.3738299999999999
	.quad	0x3fd1ced916872b02              # double 0.27825
	.quad	0x4020bc195cc857f3              # double 8.367381
	.quad	0x4005b5c52e72da12              # double 2.7137549999999999
	.quad	0x3ff6dbed30f062d4              # double 1.428693
	.quad	0x402343c903ea704c              # double 9.6323930000000004
	.quad	0x3ff85c0ebedfa440              # double 1.522475
	.quad	0x4007e5b6c3760bf6              # double 2.9871650000000001
	.quad	0x4014a422467be554              # double 5.1602870000000003
	.quad	0x40103ae7d566cf42              # double 4.057525
	.quad	0x3fe6c32ca57a786c              # double 0.71132499999999999
	.quad	0x4010718655193709              # double 4.1108640000000003
	.quad	0x400f49fa54c55433              # double 3.9111220000000002
	.quad	0x4022abbb40b34e77              # double 9.3354130000000008
	.quad	0x400b33708aac96cc              # double 3.4001169999999998
	.quad	0x401badf8f4730404              # double 6.9198950000000004
	.quad	0x40146c95bff04578              # double 5.1060400000000001
	.quad	0x4014e5109070fbec              # double 5.2236960000000003
	.quad	0x400c3c70c996b767              # double 3.529512
	.quad	0x400e840852b4d8ba              # double 3.8144689999999999
	.quad	0x4014c6dacabc5155              # double 5.1941940000000004
	.quad	0x4010a2b66b6177ea              # double 4.1588989999999999
	.quad	0x4010529bae46cfc8              # double 4.0806719999999999
	.quad	0x401d44ce8101f31f              # double 7.3171939999999998
	.quad	0x401dae1da7b0b392              # double 7.4200350000000004
	.quad	0x40216a32b12d3416              # double 8.7074180000000005
	.quad	0x401e559641f64495              # double 7.5835809999999996
	.quad	0x401ad1bf7ad4b274              # double 6.7048319999999997
	.quad	0x4007cc322291fb40              # double 2.9747050000000002
	.quad	0x3ff5c94f69ca9ef5              # double 1.361648
	.quad	0x40206fad080b673c              # double 8.2181169999999994
	.quad	0x4005cf74cd31769b              # double 2.7262970000000002
	.quad	0x3fb0df15a4acf313              # double 0.065904000000000004
	.quad	0x40109c985f06f694              # double 4.1529249999999998
	.quad	0x3fe8cea077036c9c              # double 0.77522299999999999
	.quad	0x401b6e28aa433509              # double 6.857577
	.quad	0x4017cae3608d0892              # double 5.9481330000000003
	.quad	0x3ff51ca3a4b5568f              # double 1.3194920000000001
	.quad	0x4023eddf43c7d5ed              # double 9.9645939999999999
	.quad	0x402095334c5da6a4              # double 8.2914069999999995
	.quad	0x400a0c197e564734              # double 3.2559079999999998
	.quad	0x40192b10ba6266fd              # double 6.2920559999999996
	.quad	0x40223201040bfe3b              # double 9.097664
	.quad	0x3ff9c97fa5d28d00              # double 1.611694
	.quad	0x401b067b1c0010c7              # double 6.756329
	.quad	0x401ff1351159c497              # double 7.9855539999999995
	.quad	0x4010ce26916440f2              # double 4.2013189999999998
	.quad	0x401b57f0aa21a71a              # double 6.8358790000000003
	.quad	0x401e485b9e8c47a1              # double 7.5706619999999995
	.quad	0x401ebcc74b838c11              # double 7.6843539999999999
	.quad	0x4011f43d46b26bf8              # double 4.4885149999999996
	.quad	0x3fe4ebaf102363b2              # double 0.65376999999999996
	.quad	0x400d5d859c8c9321              # double 3.6706650000000001
	.quad	0x4011c90752da9867              # double 4.4463169999999996
	.quad	0x4022006594af4f0e              # double 9.0007750000000009
	.quad	0x3ff1ce91c8eabffd              # double 1.112932
	.quad	0x3fedcd24e160d888              # double 0.93129200000000001
	.quad	0x401fe0da1a93293d              # double 7.9695819999999999
	.quad	0x40112cae642bf983              # double 4.293634
	.quad	0x401f7177ea1c68ec              # double 7.8608089999999997
	.quad	0x401b40cc78e9f6a9              # double 6.8132799999999998
	.quad	0x3ff1233269df97ab              # double 1.0710930000000001
	.quad	0x400016e7a311e860              # double 2.0111840000000001
	.quad	0x3ff6114f483cafb4              # double 1.3792260000000001
	.quad	0x40210d536933a040              # double 8.5260269999999991
	.quad	0x3ff9c4e831ad2136              # double 1.610573
	.quad	0x3ffebc9363f572de              # double 1.9210389999999999
	.quad	0x4017984e831ad213              # double 5.8987369999999997
	.quad	0x40178ea747d805e6              # double 5.88931
	.quad	0x4003eec7c957cd46              # double 2.4915919999999998
	.quad	0x3fec1edbf8b9baa1              # double 0.87876699999999996
	.quad	0x3fd75b91f70de8f7              # double 0.36496400000000001
	.quad	0x4010eeb13dfb0d52              # double 4.233098
	.quad	0x4011da8bd230b9dc              # double 4.4634239999999998
	.quad	0x402351dc50ce4ead              # double 9.6598839999999999
	.quad	0x4022040c62e4d1a6              # double 9.0079069999999994
	.quad	0x40199831f03d145e              # double 6.3986280000000004
	.quad	0x3ffd132e7b3d8e00              # double 1.817183
	.quad	0x4005339b8887229f              # double 2.6501990000000002
	.quad	0x40148edb7281fd9c              # double 5.1395090000000003
	.quad	0x401776cb5350092d              # double 5.8660100000000002
	.quad	0x40148375c8d9f905              # double 5.1283789999999998
	.quad	0x3ffa53ab430f4949              # double 1.645427
	.quad	0x40080b8f9b13165d              # double 3.0056449999999999
	.quad	0x4022f7a376922d95              # double 9.4836690000000007
	.quad	0x40009187e7c06e1a              # double 2.0710600000000001
	.quad	0x3fe47c158fb43d8a              # double 0.64014700000000002
	.quad	0x401bc6a4ca4f440b              # double 6.943988
	.quad	0x40018422036006d1              # double 2.1895180000000001
	.quad	0x401d495d0b73d189              # double 7.321644
	.quad	0x4006bd50a88effe3              # double 2.8424390000000002
	.quad	0x400952ea52ef911d              # double 3.165486
	.quad	0x401e54cad57bc7f7              # double 7.5828049999999995
	.quad	0x402264bf6e3f78bc              # double 9.1967730000000003
	.quad	0x4023e8c5004fb118              # double 9.9546279999999995
	.quad	0x4013848cf7caa759              # double 4.8794440000000003
	.quad	0x3fe0158750c1b973              # double 0.50262799999999996
	.quad	0x4010e45803cd141a              # double 4.2229919999999996
	.quad	0x4016b2a9d627bf62              # double 5.6744760000000003
	.quad	0x401ca02fb5d03105              # double 7.1564319999999997
	.quad	0x40091f5b5fa22707              # double 3.1403110000000001
	.quad	0x400db266ba493c8a              # double 3.71211
	.quad	0x400a8b3354c12275              # double 3.3179690000000002
	.quad	0x4013716d6dc1a47b              # double 4.8607690000000003
	.quad	0x3ffb4d4fdf3b645a              # double 1.706375
	.quad	0x400a13953dea465a              # double 3.2595619999999998
	.quad	0x4014a14f8b588e37              # double 5.1575300000000004
	.quad	0x40173efc371da37f              # double 5.811509
	.quad	0x3ff36821f2990f30              # double 1.212923
	.quad	0x4012eb88ca3e7d13              # double 4.7300139999999997
	.quad	0x402014d3e0bd449a              # double 8.0406790000000008
	.quad	0x3ffa6450acc0bdcb              # double 1.649491
	.quad	0x3ff5ea8869c66d37              # double 1.3697589999999999
	.quad	0x3ffc3841248d7e02              # double 1.7637339999999999
	.quad	0x400da02ea960b6fa              # double 3.703214
	.quad	0x4021add5d3dc8b87              # double 8.8395220000000005
	.quad	0x4019a70153bd1676              # double 6.4130909999999997
	.quad	0x400592e275ab7dc8              # double 2.6967210000000001
	.quad	0x4006f0813cab81f9              # double 2.8674339999999998
	.quad	0x4016cd31769a9110              # double 5.7003839999999997
	.quad	0x400696e04c059210              # double 2.8236699999999999
	.quad	0x40012bd2b6f19935              # double 2.146398
	.quad	0x3fe64806290eed03              # double 0.69629200000000002
	.quad	0x4011384dfce3150e              # double 4.3049850000000003
	.quad	0x402011b25f633ce6              # double 8.0345639999999996
	.quad	0x40059893faf42785              # double 2.6995010000000002
	.quad	0x40085d084e831ad2              # double 3.045426
	.quad	0x40125d3671ac14c6              # double 4.5910279999999997
	.quad	0x4018e6e7e62dc6e3              # double 6.2254940000000003
	.quad	0x4021866e653868fd              # double 8.7625609999999998
	.quad	0x4023e8cd855970b5              # double 9.9546930000000006
	.quad	0x401530bf1a5ca298              # double 5.2976039999999998
	.quad	0x3fa3e4cd74927914              # double 0.038855000000000001
	.quad	0x4020dd3953dea466              # double 8.4320780000000006
	.quad	0x40185c46d82ba5a0              # double 6.0901139999999998
	.quad	0x40218a2b7baecd08              # double 8.7698630000000009
	.quad	0x40200a7b4e54f7a9              # double 8.0204719999999998
	.quad	0x402169843c3a42f2              # double 8.7060870000000001
	.quad	0x400763c297bfa4c6              # double 2.9237109999999999
	.quad	0x400e214b599aa609              # double 3.766257
	.quad	0x3fef083ba3443d47              # double 0.96975500000000003
	.quad	0x3ff3ba22706d5065              # double 1.2329429999999999
	.quad	0x402211bdc69f8c22              # double 9.0346510000000002
	.quad	0x402180244e93e1ca              # double 8.7502770000000005
	.quad	0x400ff253da72a7bd              # double 3.9933239999999999
	.quad	0x401cdc2f405f6ba0              # double 7.2150239999999997
	.quad	0x3ff2311b60ae9681              # double 1.136989
	.quad	0x4011332ce89656ef              # double 4.299976
	.quad	0x4018f72799a1fd15              # double 6.2413619999999996
	.quad	0x3ff9c79e59f2ba9d              # double 1.611235
	.quad	0x40020014f8b588e3              # double 2.2500399999999998
	.quad	0x4023865c2d278078              # double 9.7624220000000008
	.quad	0x402044258d5842b7              # double 8.1330989999999996
	.quad	0x401c053f7ced9168              # double 7.0051249999999996
	.quad	0x401cedc443914f48              # double 7.2321939999999998
	.quad	0x4023e289b951c5c5              # double 9.9424569999999992
	.quad	0x400903ef284167a9              # double 3.1269209999999998
	.quad	0x3fe7fdd872f33ca3              # double 0.74973699999999999
	.quad	0x401a34bdba0a5269              # double 6.5515049999999997
	.quad	0x4015588ca3e7d135              # double 5.3364739999999999
	.quad	0x400f6c753e707e17              # double 3.9279579999999998
	.quad	0x4003d47c73eee526              # double 2.4787530000000002
	.quad	0x401ebe5d9e40c847              # double 7.6859039999999998
	.quad	0x4020a73365881a15              # double 8.3265639999999994
	.quad	0x400fc35ce1826677              # double 3.9703919999999999
	.quad	0x3fefad6451b93038              # double 0.98991600000000001
	.quad	0x4016d2a0ec743201              # double 5.705692
	.quad	0x401dc204f2ae07e6              # double 7.4394720000000003
	.quad	0x401a01ea78af3e47              # double 6.5018710000000004
	.quad	0x4017586d2ed783e0              # double 5.836354
	.quad	0x40209905c0336156              # double 8.2988719999999994
	.quad	0x3ff6cef88b977857              # double 1.42553
	.quad	0x400257d1782d3847              # double 2.2928799999999998
	.quad	0x40221a036006d0d5              # double 9.0508070000000007
	.quad	0x400055c74751ce29              # double 2.041884
	.quad	0x4012b7c200c0f020              # double 4.6794510000000002
	.quad	0x4018634267839cd8              # double 6.0969329999999999
	.quad	0x4016fe5d18090b41              # double 5.7484019999999996
	.quad	0x401d44ea4a8c154d              # double 7.3173000000000004
	.quad	0x402033167ec7863c              # double 8.0997810000000001
	.quad	0x4011c6fb8f57f738              # double 4.4443190000000001
	.quad	0x3fd8a960b6f9fcb1              # double 0.38533800000000001
	.quad	0x40086eb56fb8f57f              # double 3.0540569999999998
	.quad	0x40015a5a038194c0              # double 2.169117
	.quad	0x3fe8441dd1a21ea3              # double 0.75831499999999996
	.quad	0x401764a6a875d56f              # double 5.8482919999999998
	.quad	0x4011ec99ae924f22              # double 4.4810549999999996
	.quad	0x4007611ec918e326              # double 2.9224220000000001
	.quad	0x40195077ccc03793              # double 6.3285819999999999
	.quad	0x4022c77c6759ab6d              # double 9.3896209999999999
	.quad	0x400f79aa60913a50              # double 3.9344070000000002
	.quad	0x401cc46b69db65ed              # double 7.1918160000000002
	.quad	0x400f73636f3b213e              # double 3.9313419999999999
	.quad	0x40194e3ac0c62e4d              # double 6.3263959999999999
	.quad	0x4013413165d39970              # double 4.8136650000000003
	.quad	0x4011fe1cde5d1809              # double 4.498157
	.quad	0x4002f193f6c2699c              # double 2.3679579999999998
	.quad	0x3fe655b6805a2d73              # double 0.697963
	.quad	0x401158dda48b6523              # double 4.3367829999999996
	.quad	0x40177988d2a1f8e4              # double 5.8686860000000003
	.quad	0x401e6dddb1209edc              # double 7.607291
	.quad	0x4020cdddd2ae8e1d              # double 8.4020829999999993
	.quad	0x4020c3ccd0fe8ab5              # double 8.382422
	.quad	0x3ff4d39eadd590c1              # double 1.3016650000000001
	.quad	0x4013440420f6f08d              # double 4.8164220000000002
	.quad	0x400f9f401c4fc1df              # double 3.9527589999999999
	.quad	0x4015f22c01e68a0d              # double 5.4864959999999998
	.quad	0x4021ce29d8409e56              # double 8.9026630000000004
	.quad	0x401b2e5471715c64              # double 6.7952440000000003
	.quad	0x4010eca5bd944aa5              # double 4.2311009999999998
	.quad	0x402050383ad9f0a2              # double 8.1566790000000005
	.quad	0x3fc67c8d1958969a              # double 0.175676
	.quad	0x40140a16a4873366              # double 5.0098520000000004
	.quad	0x400baeabffcdab19              # double 3.4602889999999999
	.quad	0x4020790a7829068a              # double 8.2364080000000008
	.quad	0x401ac4bb1af3a14d              # double 6.6921200000000001
	.quad	0x401efc5154866a12              # double 7.7464040000000001
	.quad	0x4023b564b662fdfc              # double 9.8542839999999998
	.quad	0x400107e28240b780              # double 2.1288499999999999
	.quad	0x401db6822ff08894              # double 7.4282310000000003
	.quad	0x3fddfd8f0c77dd87              # double 0.46860099999999999
	.quad	0x3fe3ebca5375c8da              # double 0.622533
	.quad	0x3fe399a1fd1569f5              # double 0.61250400000000005
	.quad	0x400c1eed45e9185d              # double 3.515101
	.quad	0x40228e0dcb9a9da6              # double 9.2774490000000007
	.quad	0x402269c62a1b5c7d              # double 9.2065900000000003
	.quad	0x40152fb97bb73083              # double 5.2966059999999997
	.quad	0x40107dc768dfbd6a              # double 4.1228309999999997
	.quad	0x401f7c892ab68cef              # double 7.8716169999999996
	.quad	0x4001b4b2745bf26f              # double 2.2132309999999999
	.quad	0x401c3a09cc319c5a              # double 7.0566779999999998
	.quad	0x401d469df97aaac1              # double 7.318962
	.quad	0x400d73775b813016              # double 3.6813799999999999
	.quad	0x40190175d13d74d6              # double 6.2514260000000004
	.quad	0x4005cb26bf8769ec              # double 2.7241949999999999
	.quad	0x3ff4a5aff2a172ac              # double 1.290451
	.quad	0x3ffa0fca42aed139              # double 1.6288549999999999
	.quad	0x4014c8fb86f47b67              # double 5.1962719999999996
	.quad	0x4021bdbd2fa0d77b              # double 8.8705839999999991
	.quad	0x40231806af46aa08              # double 9.5469259999999991
	.quad	0x40173f66a5508701              # double 5.8119149999999999
	.quad	0x3fce7160956c0d6f              # double 0.23783499999999999
	.quad	0x4006e39e6ab9b23e              # double 2.8611420000000001
	.quad	0x40190578e5c4eb57              # double 6.255344
	.quad	0x40213859641f6449              # double 8.6100569999999994
	.quad	0x40227edd26b723ee              # double 9.2477809999999998
	.quad	0x402161c864883fd5              # double 8.690982
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
