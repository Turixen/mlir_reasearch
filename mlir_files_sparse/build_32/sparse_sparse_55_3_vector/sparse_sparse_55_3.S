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
	.quad	0x4141047ce8c857f3              # double 2230521.818614
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
	.quad	55                              # 0x37
	.quad	92                              # 0x5c
	.quad	128                             # 0x80
	.quad	188                             # 0xbc
	.quad	235                             # 0xeb
	.quad	269                             # 0x10d
	.quad	328                             # 0x148
	.quad	367                             # 0x16f
	.quad	404                             # 0x194
	.quad	461                             # 0x1cd
	.quad	490                             # 0x1ea
	.quad	531                             # 0x213
	.quad	590                             # 0x24e
	.quad	632                             # 0x278
	.quad	677                             # 0x2a5
	.quad	736                             # 0x2e0
	.quad	769                             # 0x301
	.quad	809                             # 0x329
	.quad	868                             # 0x364
	.quad	909                             # 0x38d
	.quad	946                             # 0x3b2
	.quad	1011                            # 0x3f3
	.quad	1060                            # 0x424
	.quad	1103                            # 0x44f
	.quad	1159                            # 0x487
	.quad	1200                            # 0x4b0
	.quad	1237                            # 0x4d5
	.quad	1292                            # 0x50c
	.quad	1332                            # 0x534
	.quad	1376                            # 0x560
	.quad	1435                            # 0x59b
	.quad	1492                            # 0x5d4
	.quad	1530                            # 0x5fa
	.quad	1585                            # 0x631
	.quad	1619                            # 0x653
	.quad	1652                            # 0x674
	.quad	1710                            # 0x6ae
	.quad	1752                            # 0x6d8
	.quad	1795                            # 0x703
	.quad	1850                            # 0x73a
	.quad	1882                            # 0x75a
	.quad	1921                            # 0x781
	.quad	1983                            # 0x7bf
	.quad	2016                            # 0x7e0
	.quad	2056                            # 0x808
	.quad	2119                            # 0x847
	.quad	2151                            # 0x867
	.quad	2194                            # 0x892
	.quad	2257                            # 0x8d1
	.quad	2295                            # 0x8f7
	.quad	2335                            # 0x91f
	.quad	2393                            # 0x959
	.quad	2438                            # 0x986
	.quad	2473                            # 0x9a9
	.quad	2535                            # 0x9e7
	.quad	2577                            # 0xa11
	.quad	2619                            # 0xa3b
	.quad	2671                            # 0xa6f
	.quad	2703                            # 0xa8f
	.quad	2745                            # 0xab9
	.quad	2802                            # 0xaf2
	.quad	2834                            # 0xb12
	.quad	2867                            # 0xb33
	.quad	2928                            # 0xb70
	.quad	2964                            # 0xb94
	.quad	3000                            # 0xbb8
	.quad	3065                            # 0xbf9
	.quad	3110                            # 0xc26
	.quad	3155                            # 0xc53
	.quad	3213                            # 0xc8d
	.quad	3251                            # 0xcb3
	.quad	3293                            # 0xcdd
	.quad	3349                            # 0xd15
	.quad	3386                            # 0xd3a
	.quad	3423                            # 0xd5f
	.quad	3489                            # 0xda1
	.quad	3524                            # 0xdc4
	.quad	3561                            # 0xde9
	.quad	3618                            # 0xe22
	.quad	3655                            # 0xe47
	.quad	3690                            # 0xe6a
	.quad	3750                            # 0xea6
	.quad	3789                            # 0xecd
	.quad	3822                            # 0xeee
	.quad	3876                            # 0xf24
	.quad	3915                            # 0xf4b
	.quad	3948                            # 0xf6c
	.quad	4003                            # 0xfa3
	.quad	4033                            # 0xfc1
	.quad	4070                            # 0xfe6
	.quad	4125                            # 0x101d
	.quad	4147                            # 0x1033
	.quad	4180                            # 0x1054
	.quad	4239                            # 0x108f
	.quad	4273                            # 0x10b1
	.quad	4303                            # 0x10cf
	.quad	4360                            # 0x1108
	.quad	4394                            # 0x112a
	.quad	4436                            # 0x1154
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
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
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x402336ae5bc87db3              # double 9.6067990000000005
	.quad	0x4020b6bfa8f7db6e              # double 8.3569309999999994
	.quad	0x400b2d5065732160              # double 3.3971260000000001
	.quad	0x4004ff93ff25e56d              # double 2.6247940000000001
	.quad	0x402177e542e557de              # double 8.7341709999999999
	.quad	0x4013dff36ac64778              # double 4.9687020000000004
	.quad	0x4017189df1172ef1              # double 5.7740400000000003
	.quad	0x40235b23dd54da4d              # double 9.6780080000000001
	.quad	0x4022b04039abf338              # double 9.3442399999999992
	.quad	0x40152d80e496edee              # double 5.2944370000000003
	.quad	0x40223ee3d5fdcdf7              # double 9.1228320000000007
	.quad	0x40035f7ad4b2745c              # double 2.421621
	.quad	0x3ff700431bde82d8              # double 1.4375640000000001
	.quad	0x400148650e779208              # double 2.1603490000000001
	.quad	0x401d0ffac1d29dc7              # double 7.2656049999999999
	.quad	0x40081faca3619978              # double 3.015466
	.quad	0x40217f69ca9ef523              # double 8.7488539999999997
	.quad	0x400a7908e581cf78              # double 3.3090989999999998
	.quad	0x3feef46aa087ca64              # double 0.96733599999999997
	.quad	0x400febcbe61cffeb              # double 3.990135
	.quad	0x400a92d905c03361              # double 3.3217029999999999
	.quad	0x4011332378ab0c89              # double 4.2999400000000003
	.quad	0x40237ad3c792d128              # double 9.7398969999999991
	.quad	0x3ffded5bee3d5fdd              # double 1.870449
	.quad	0x4020d223e1869835              # double 8.4104299999999999
	.quad	0x40063cef240fa9c1              # double 2.7797529999999999
	.quad	0x4004270eb24a6a87              # double 2.5190709999999998
	.quad	0x3ff8eb6bf444e0db              # double 1.5574760000000001
	.quad	0x401eb5c853c14834              # double 7.6775219999999997
	.quad	0x4023acc9a77e5eab              # double 9.8374760000000005
	.quad	0x401fdf00ef1348b2              # double 7.9677769999999999
	.quad	0x40201f6f8f041462              # double 8.0613980000000005
	.quad	0x4021decbfb15b574              # double 8.9351500000000001
	.quad	0x40238a0b8066c2ad              # double 9.7696190000000004
	.quad	0x402001934efcbd55              # double 8.0030769999999993
	.quad	0x402042b29e4d5d81              # double 8.1302690000000002
	.quad	0x4007039ffd60e94f              # double 2.87677
	.quad	0x4020d561d4306e5d              # double 8.4167620000000003
	.quad	0x4023f9276fb09204              # double 9.9866290000000006
	.quad	0x3fe24d39da16616b              # double 0.57192699999999996
	.quad	0x3fdbb66b6177ea1c              # double 0.43300899999999998
	.quad	0x4020aae1cde5d181              # double 8.3337540000000008
	.quad	0x400f54c76d117b53              # double 3.9163960000000002
	.quad	0x401e42c6ef3d3a1d              # double 7.5652119999999998
	.quad	0x40147623076c050c              # double 5.1153680000000001
	.quad	0x40065cc39ffd60e9              # double 2.7952949999999999
	.quad	0x402171695d91ab8f              # double 8.7215070000000008
	.quad	0x3fd8caf709b738e7              # double 0.38738800000000001
	.quad	0x3fe6c560c7c0f451              # double 0.71159399999999995
	.quad	0x401133b70ef56649              # double 4.300503
	.quad	0x3ffa099f1ae2da55              # double 1.6273489999999999
	.quad	0x4020bd9fd36f7e3d              # double 8.3703599999999998
	.quad	0x4013e143bf727137              # double 4.9699850000000003
	.quad	0x400b81e364bec67a              # double 3.4384220000000001
	.quad	0x3fea15aaf78feef6              # double 0.81514500000000001
	.quad	0x3ff8aa8da7f3cf70              # double 1.541639
	.quad	0x40214717df19d66b              # double 8.6388540000000003
	.quad	0x401373be6601bc99              # double 4.8630310000000003
	.quad	0x4020af46cb966be8              # double 8.3423370000000006
	.quad	0x4009b16ebd4cfd09              # double 3.2116370000000001
	.quad	0x40176c532a497fa6              # double 5.8557860000000002
	.quad	0x40015316e3715400              # double 2.1655709999999999
	.quad	0x40028e1a3f4666ed              # double 2.3193860000000002
	.quad	0x40090b2d905c0336              # double 3.130458
	.quad	0x4023c675147f1306              # double 9.8876120000000007
	.quad	0x4014e2fd75e2046c              # double 5.2216699999999996
	.quad	0x401c1f39d1b2e59b              # double 7.030494
	.quad	0x3ff15d3ed527e521              # double 1.0852649999999999
	.quad	0x401d68198f1d3ed5              # double 7.3516599999999999
	.quad	0x402361550ca1cef2              # double 9.6901019999999995
	.quad	0x401652fc69728a61              # double 5.5810409999999999
	.quad	0x400fd6a1e81cb46c              # double 3.9798010000000001
	.quad	0x4021bddd2ae8e1d6              # double 8.8708279999999995
	.quad	0x3ff59b280f12c27a              # double 1.3503799999999999
	.quad	0x400d3b4f61672325              # double 3.6539600000000001
	.quad	0x401c6d29dc725c3e              # double 7.1066050000000001
	.quad	0x401c0020817fc760              # double 7.0001239999999996
	.quad	0x401ac36694898f60              # double 6.6908209999999997
	.quad	0x400b5cf4e874c900              # double 3.4203890000000001
	.quad	0x4012b78e1932d6ed              # double 4.6792530000000001
	.quad	0x401577fed20296b3              # double 5.3671829999999998
	.quad	0x4023b235f8099179              # double 9.8480679999999995
	.quad	0x400abdb7f1737543              # double 3.3426360000000002
	.quad	0x3fe8fb1c0010c6f8              # double 0.78065300000000004
	.quad	0x3ff6888a47ecfe9b              # double 1.4083349999999999
	.quad	0x401397f023e9ea14              # double 4.898377
	.quad	0x401ffa0c282c6ef4              # double 7.9941870000000002
	.quad	0x401878800eae18ad              # double 6.1176760000000003
	.quad	0x402294662bae03b4              # double 9.2898420000000001
	.quad	0x400f8c215b9a5a8a              # double 3.9434230000000001
	.quad	0x401a74302b40f66a              # double 6.6134649999999997
	.quad	0x3fe5f3cf70153bd1              # double 0.68601199999999996
	.quad	0x3fbb0b9dc2f405f7              # double 0.105646
	.quad	0x4021c6b074a771c9              # double 8.8880649999999992
	.quad	0x400f2f1c3265adda              # double 3.8980030000000001
	.quad	0x40207e37de939eae              # double 8.2465200000000003
	.quad	0x401fe0d8cb07d0af              # double 7.9695770000000001
	.quad	0x400f8ebc408d8ec9              # double 3.9446949999999998
	.quad	0x40049ec0b567557a              # double 2.5775160000000001
	.quad	0x40234c0e7bc3c5bd              # double 9.6485479999999999
	.quad	0x4022a39fba450acc              # double 9.3195779999999999
	.quad	0x3fe1c4a1f080303c              # double 0.555253
	.quad	0x401d0c868b9fdbd3              # double 7.262232
	.quad	0x400d27ddca4b124d              # double 3.644466
	.quad	0x4002cbd017dae819              # double 2.3495180000000002
	.quad	0x3ffc2f7d30ad46f6              # double 1.7615940000000001
	.quad	0x40035152f3c2dadc              # double 2.4147090000000002
	.quad	0x40239039ef0f16f4              # double 9.7816919999999996
	.quad	0x3fff8b84988094e6              # double 1.971562
	.quad	0x3feecbf2b239a390              # double 0.96239600000000003
	.quad	0x4001ca63b688bda9              # double 2.2238229999999999
	.quad	0x401f0f62b6ae7d56              # double 7.7650249999999996
	.quad	0x400157cbb3c81909              # double 2.167869
	.quad	0x401b79b280f12c28              # double 6.8688450000000003
	.quad	0x4016671fff79c843              # double 5.600708
	.quad	0x4004f9e8c47a17f4              # double 2.622026
	.quad	0x4007e049ecb31c22              # double 2.9845160000000002
	.quad	0x3fed68ee6b8305d9              # double 0.91905899999999996
	.quad	0x40145837b4a2339c              # double 5.0861499999999999
	.quad	0x401cd1919ac79703              # double 7.2046570000000001
	.quad	0x400fecb5350092cd              # double 3.99058
	.quad	0x3fdb5c0fcb4f1e4b              # double 0.42749399999999999
	.quad	0x40223dd8b60f1b26              # double 9.1207940000000001
	.quad	0x3ffb3d86a8fc0d2c              # double 1.702521
	.quad	0x401f59806f262889              # double 7.8374040000000002
	.quad	0x40169928e0c9d9d3              # double 5.6495699999999998
	.quad	0x4005ed834091c087              # double 2.7409729999999999
	.quad	0x40109615ebfa8f7e              # double 4.1465680000000003
	.quad	0x4022d95ad106ee31              # double 9.4245210000000003
	.quad	0x3feee872b020c49c              # double 0.96587500000000003
	.quad	0x401fae2003ab862b              # double 7.9200439999999998
	.quad	0x40208f4cf4a558ea              # double 8.2798839999999991
	.quad	0x400c25d6bebe1651              # double 3.5184760000000002
	.quad	0x4003b475a31a4bdc              # double 2.4631150000000002
	.quad	0x3ff193a81dc0db27              # double 1.098549
	.quad	0x4012f3953dea465a              # double 4.7378739999999997
	.quad	0x402046b56fb8f57f              # double 8.1381029999999992
	.quad	0x4019ec7c0f451761              # double 6.4809419999999998
	.quad	0x3fee76145953586d              # double 0.95191400000000004
	.quad	0x4003e68a936c58ef              # double 2.4875690000000001
	.quad	0x401e3992c8c50050              # double 7.5562240000000003
	.quad	0x401fb800218def41              # double 7.9296879999999996
	.quad	0x4002d8bac710cb29              # double 2.3558249999999998
	.quad	0x40153955f78359bc              # double 5.3059919999999998
	.quad	0x400fe12839042d8c              # double 3.9849399999999999
	.quad	0x4004169fcf3dc055              # double 2.511047
	.quad	0x402206bd9018e758              # double 9.0131650000000008
	.quad	0x4000a5553ef6b5d4              # double 2.0807289999999998
	.quad	0x40166033e78e1933              # double 5.5939480000000001
	.quad	0x400531409a240315              # double 2.6490490000000002
	.quad	0x4022c238327674d1              # double 9.3793349999999993
	.quad	0x4008f71e29b6b2af              # double 3.120663
	.quad	0x401eedd4845132f8              # double 7.7322559999999995
	.quad	0x4020db65881a1555              # double 8.428509
	.quad	0x401a9148fd9fd36f              # double 6.6418799999999996
	.quad	0x4015815097c80842              # double 5.3762840000000001
	.quad	0x4016d426351deefe              # double 5.7071769999999997
	.quad	0x4023e91afc04c8bd              # double 9.9552840000000006
	.quad	0x401e5b37c99ae925              # double 7.58908
	.quad	0x400a7a86940357a3              # double 3.3098269999999999
	.quad	0x3fed0c2a454de7ea              # double 0.90773499999999996
	.quad	0x3ff16ea747d805e6              # double 1.089515
	.quad	0x3fe408787485e3da              # double 0.62603399999999998
	.quad	0x401e0d184c271fff              # double 7.5127879999999995
	.quad	0x40152aa087ca643d              # double 5.2916280000000002
	.quad	0x4010bc1ce6c093d9              # double 4.1837039999999996
	.quad	0x400e3f2b239a38fc              # double 3.7808440000000001
	.quad	0x400a099392189bd8              # double 3.2546759999999999
	.quad	0x4023e7620ee8d10f              # double 9.9519199999999994
	.quad	0x401e26d7625204b0              # double 7.5379310000000004
	.quad	0x4002f674d1633483              # double 2.3703400000000001
	.quad	0x3fe5af166e008e9b              # double 0.67762299999999998
	.quad	0x4020aa91b823c85c              # double 8.3331429999999997
	.quad	0x400ec48adeebb342              # double 3.8459680000000001
	.quad	0x3ff7a5375c8d9f90              # double 1.4778359999999999
	.quad	0x3fceba8c586876e2              # double 0.240068
	.quad	0x400075e95b78cc9a              # double 2.0575739999999998
	.quad	0x4022adeb0fadf2ed              # double 9.3396840000000001
	.quad	0x4020a17d06bbdbe4              # double 8.3154070000000004
	.quad	0x4006bcad9ad85dfb              # double 2.8421280000000002
	.quad	0x400cbabe27179bfe              # double 3.591183
	.quad	0x4011cac6cdaf4adc              # double 4.4480240000000002
	.quad	0x4023443bd5992429              # double 9.6332690000000003
	.quad	0x402057ff9b56323c              # double 8.1718720000000004
	.quad	0x4018bb6b6e0d23d5              # double 6.1830270000000001
	.quad	0x4022d0247021d10b              # double 9.4065279999999997
	.quad	0x4012a1476af89c5e              # double 4.6574989999999996
	.quad	0x4012b33508f648c7              # double 4.6750069999999999
	.quad	0x4017d08aefb2aae3              # double 5.9536550000000004
	.quad	0x4004c04c8bc9cd3e              # double 2.593896
	.quad	0x4019ea8155d5f56a              # double 6.4790089999999996
	.quad	0x40235a1ee675147f              # double 9.6760169999999998
	.quad	0x402060d92fb19e73              # double 8.1891569999999998
	.quad	0x402232dd7a99fa12              # double 9.0993460000000006
	.quad	0x401649c4545846e9              # double 5.572038
	.quad	0x40117763a1900820              # double 4.3665909999999997
	.quad	0x4020c42d6a9c560c              # double 8.3831589999999991
	.quad	0x400fb31db445ed4a              # double 3.962459
	.quad	0x400409728a611772              # double 2.504613
	.quad	0x3fd3bb8800eae18b              # double 0.30832100000000001
	.quad	0x3fe23482be8bc16a              # double 0.56891000000000003
	.quad	0x4011176ee73e681b              # double 4.2728840000000003
	.quad	0x3fe37d3d4280ae10              # double 0.60903799999999997
	.quad	0x4022fb686a4ca4f4              # double 9.4910309999999995
	.quad	0x402209b951c5c572              # double 9.0189920000000008
	.quad	0x4019e7082491afc0              # double 6.4756169999999997
	.quad	0x3fec498e53eb399f              # double 0.88397899999999996
	.quad	0x40061ed959a30985              # double 2.765063
	.quad	0x4011d22f2734f82f              # double 4.4552579999999997
	.quad	0x4020707fcb923a2a              # double 8.2197250000000004
	.quad	0x4018982d38476f2a              # double 6.1486099999999997
	.quad	0x401a8b267c6b8b69              # double 6.6358889999999997
	.quad	0x40228d04816f0069              # double 9.2754250000000003
	.quad	0x402203966be7afa7              # double 9.0070069999999998
	.quad	0x40232a92c4934268              # double 9.5831510000000008
	.quad	0x3ffbd145d851654d              # double 1.7385919999999999
	.quad	0x4001f8da3c21187e              # double 2.2465099999999998
	.quad	0x40104d02cd39da16              # double 4.0752059999999997
	.quad	0x401404cc6822ff09              # double 5.0046860000000004
	.quad	0x40033249e44fa051              # double 2.3995549999999999
	.quad	0x401ebda8bd230b9e              # double 7.6852140000000002
	.quad	0x402154254a3c6434              # double 8.6643469999999993
	.quad	0x3fff2edbb59ddc1e              # double 1.9489399999999999
	.quad	0x401fe00474d9c6b0              # double 7.9687669999999997
	.quad	0x401bba4d2b2bfdb5              # double 6.9319350000000002
	.quad	0x40239a42070b8cfc              # double 9.801285
	.quad	0x3ff8d693c03bc4d2              # double 1.552387
	.quad	0x3fc981beb18116ec              # double 0.199272
	.quad	0x40164e69ad42c3ca              # double 5.5765750000000001
	.quad	0x400647210be9424e              # double 2.7847309999999998
	.quad	0x401f2d5a187a4a49              # double 7.794289
	.quad	0x4015d868b9fdbd30              # double 5.4613370000000003
	.quad	0x400deafd5454152b              # double 3.739741
	.quad	0x401f2cb1465e8922              # double 7.7936449999999997
	.quad	0x4020bfe56473471f              # double 8.3747969999999992
	.quad	0x401d9b923a29c77a              # double 7.4019250000000003
	.quad	0x3fe04cf8d716d2aa              # double 0.50939599999999996
	.quad	0x401c9f81626b2f23              # double 7.155767
	.quad	0x4016702ababead4f              # double 5.6095379999999997
	.quad	0x40232f4256bca537              # double 9.5923029999999993
	.quad	0x401a8682b6284599              # double 6.6313579999999996
	.quad	0x401bb93b3a68b19a              # double 6.9308899999999998
	.quad	0x401aaaa4fca42aed              # double 6.6666449999999999
	.quad	0x3ffe02a3486f049b              # double 1.8756440000000001
	.quad	0x400c9fdb4cc25072              # double 3.578055
	.quad	0x400d4d78c436fc16              # double 3.6628280000000002
	.quad	0x40131f90d9d7774b              # double 4.7808260000000002
	.quad	0x4015759253543aeb              # double 5.3648160000000003
	.quad	0x40185df2a9d627bf              # double 6.0917459999999997
	.quad	0x400a5cc20d5629d8              # double 3.2952919999999999
	.quad	0x4020230a2ca9ac36              # double 8.0684369999999994
	.quad	0x401ed4b48d3ae686              # double 7.7077200000000001
	.quad	0x40014d5bee3d5fdd              # double 2.1627730000000001
	.quad	0x4023da0cae642bfa              # double 9.9258780000000009
	.quad	0x4020555e4a383276              # double 8.1667349999999992
	.quad	0x401d5d1e96c3fc44              # double 7.3409370000000003
	.quad	0x3fbf1b584b1ab085              # double 0.12151099999999999
	.quad	0x401416e503fb3743              # double 5.0223579999999997
	.quad	0x3ff03b384fd2a62b              # double 1.0144580000000001
	.quad	0x3ff966559f6ec5b0              # double 1.5874839999999999
	.quad	0x400088943e100608              # double 2.0666890000000002
	.quad	0x400478958d9b5e96              # double 2.5588790000000001
	.quad	0x401886013660e51d              # double 6.1308639999999999
	.quad	0x401282f661f18ca0              # double 4.6278930000000003
	.quad	0x401e481a9b8cb8e1              # double 7.5704140000000004
	.quad	0x4014f281ba7fc32f              # double 5.2368230000000002
	.quad	0x4018b86876e1dead              # double 6.1800860000000002
	.quad	0x4011e0d62bf11f92              # double 4.4695669999999996
	.quad	0x4023cd68e820e62a              # double 9.9011910000000007
	.quad	0x4016fc2f405f6ba0              # double 5.7462739999999997
	.quad	0x401e587ca643cc08              # double 7.5864130000000002
	.quad	0x3ff30116ebd4cfd1              # double 1.1877660000000001
	.quad	0x3ffd0fa48301a7a0              # double 1.816319
	.quad	0x4022031098d477bc              # double 9.005986
	.quad	0x3fc8ea18372e6a77              # double 0.19464400000000001
	.quad	0x3fc816616b54e2b0              # double 0.18818299999999999
	.quad	0x4021c32378ab0c89              # double 8.8811300000000006
	.quad	0x3fcd29fe004b7f5a              # double 0.22784399999999999
	.quad	0x3ff2610060780fdc              # double 1.148682
	.quad	0x40110c9d9d3458cd              # double 4.2623199999999999
	.quad	0x4004c432ca57a787              # double 2.5958000000000001
	.quad	0x402329ee02a77a2d              # double 9.5818940000000001
	.quad	0x4012efe3b03e20cd              # double 4.734267
	.quad	0x40208e6fd651b0cd              # double 8.2781970000000005
	.quad	0x40144f9b994e1a3f              # double 5.0777419999999998
	.quad	0x401642131a8ef77f              # double 5.5645259999999999
	.quad	0x3fe9534bd76ee73e              # double 0.79141799999999995
	.quad	0x401741569f490603              # double 5.8138069999999997
	.quad	0x40100b2a27f1b691              # double 4.0109029999999999
	.quad	0x401f89235f809918              # double 7.8839240000000003
	.quad	0x400c07b45f17bd8c              # double 3.503762
	.quad	0x3ffac7442c7fbacb              # double 1.6736489999999999
	.quad	0x40230b3f85510d39              # double 9.5219690000000003
	.quad	0x401e72bba98eda23              # double 7.612044
	.quad	0x4011bf394b7b2895              # double 4.4367419999999997
	.quad	0x40111e5471715c64              # double 4.2796190000000003
	.quad	0x401dbf38c5436b90              # double 7.4367400000000004
	.quad	0x3fa031055b899392              # double 0.031623999999999999
	.quad	0x40084c41dd1a21ea              # double 3.0372349999999999
	.quad	0x40099479d4d83409              # double 3.197498
	.quad	0x3ff6454cdb7ae579              # double 1.3919189999999999
	.quad	0x3ff061d4306e5cd5              # double 1.023884
	.quad	0x4020e41f42bb6673              # double 8.445551
	.quad	0x3ffb695421c04428              # double 1.7132149999999999
	.quad	0x401ca0c0ad03d9a9              # double 7.1569849999999997
	.quad	0x400cfce95faa8a83              # double 3.6234920000000002
	.quad	0x4020738e6d15ad10              # double 8.2256959999999992
	.quad	0x3fdbe2ac322291fb              # double 0.43570999999999999
	.quad	0x401811dd1a21ea36              # double 6.0174450000000004
	.quad	0x4023b69ccb7d4174              # double 9.8566649999999995
	.quad	0x4023c73c0c1fc8f3              # double 9.8891299999999997
	.quad	0x40169586ca89fc6e              # double 5.6460220000000003
	.quad	0x3ff83318fc504817              # double 1.512475
	.quad	0x4007900b45ae5ffa              # double 2.9453339999999999
	.quad	0x4023efde0d66f0d0              # double 9.9684910000000002
	.quad	0x400a894ee392e1ef              # double 3.3170449999999998
	.quad	0x400d01cd5f99c38b              # double 3.62588
	.quad	0x401f27af20ea5b53              # double 7.7887539999999999
	.quad	0x40217761aa3f034b              # double 8.7331669999999999
	.quad	0x401634e7253da72a              # double 5.5516629999999996
	.quad	0x401ac6f2e8c0485a              # double 6.694286
	.quad	0x4022b2999567dbb1              # double 9.3488279999999992
	.quad	0x40142bb8800eae19              # double 5.0426960000000003
	.quad	0x3fec7b3fa6defc7a              # double 0.89004499999999998
	.quad	0x40212f2799a1fd15              # double 8.5920989999999993
	.quad	0x40051fe86833c600              # double 2.6405799999999999
	.quad	0x3fe05ba0a5269596              # double 0.511185
	.quad	0x3ff695c74751ce29              # double 1.411567
	.quad	0x401f5cf13cee9dd8              # double 7.840764
	.quad	0x401484267839cd81              # double 5.1290529999999999
	.quad	0x4004d95aaf78feef              # double 2.6061299999999998
	.quad	0x40210e8ff327aa69              # double 8.5284420000000001
	.quad	0x401aa4959e625636              # double 6.6607269999999996
	.quad	0x40193e6ff7dfa00e              # double 6.3109739999999999
	.quad	0x3fe761ef73c0c1fd              # double 0.73070500000000005
	.quad	0x40113c04c8bc9cd4              # double 4.3086120000000001
	.quad	0x400a67e175d13d75              # double 3.3007230000000001
	.quad	0x3ffe8e38a7e73a36              # double 1.9097219999999999
	.quad	0x401421a0cf1800a8              # double 5.0328400000000002
	.quad	0x40014af1cb89d6ae              # double 2.161594
	.quad	0x401219591cd1c7de              # double 4.5247539999999997
	.quad	0x3fb49539b888722a              # double 0.080402000000000001
	.quad	0x4010fa98676a7265              # double 4.2447220000000003
	.quad	0x3fcd351159c49774              # double 0.228182
	.quad	0x401b8c49ba5e353f              # double 6.8869999999999996
	.quad	0x4022fa76534373f3              # double 9.4891839999999998
	.quad	0x4010c11ba3ca7504              # double 4.1885820000000002
	.quad	0x400cac226809d495              # double 3.58405
	.quad	0x401c27d4e09784ec              # double 7.0388979999999997
	.quad	0x401c9ac929aa1d75              # double 7.1511579999999997
	.quad	0x40108c50ce4ead0c              # double 4.1370269999999998
	.quad	0x4007b1fbc5de9c02              # double 2.9619059999999999
	.quad	0x4003c1db0142f61f              # double 2.4696560000000001
	.quad	0x402273dc26dce39b              # double 9.2262889999999995
	.quad	0x4020daff4ba51a00              # double 8.4277289999999994
	.quad	0x4010333c1ce6c094              # double 4.0500340000000001
	.quad	0x401b091bc5586445              # double 6.7588949999999999
	.quad	0x3fd2e24febd09e13              # double 0.29506300000000002
	.quad	0x4023a26a44417870              # double 9.8172169999999994
	.quad	0x4011974e22a2c237              # double 4.3977589999999998
	.quad	0x40115fdc1615ebfb              # double 4.3436130000000004
	.quad	0x3ff38dcb9a9da598              # double 1.222118
	.quad	0x4019656d5cfaacda              # double 6.3490500000000001
	.quad	0x401502aae297396d              # double 5.252605
	.quad	0x401f13dc054ef45a              # double 7.7693940000000001
	.quad	0x3fe70b7e4de3b8a2              # double 0.72015300000000004
	.quad	0x3fd5601797cc3a00              # double 0.33399000000000001
	.quad	0x401238d36b4c7f35              # double 4.5554940000000004
	.quad	0x401e9d6e47dc37a4              # double 7.6537410000000001
	.quad	0x3ffe01d19157abb9              # double 1.8754440000000001
	.quad	0x40039ee02a77a2cf              # double 2.4525760000000001
	.quad	0x4023b76db940fece              # double 9.8582590000000003
	.quad	0x40231005e5f30e80              # double 9.5312950000000001
	.quad	0x3fedaedbb59ddc1e              # double 0.92759499999999995
	.quad	0x4016ff3bea91d9b2              # double 5.7492520000000003
	.quad	0x3fe1829f16b11c6d              # double 0.54719499999999999
	.quad	0x401db2d9cf13ceea              # double 7.4246590000000001
	.quad	0x3fd96ff3ade225fa              # double 0.39745799999999998
	.quad	0x400d1248d7e02646              # double 3.633928
	.quad	0x40227ae2541d8e86              # double 9.2400079999999996
	.quad	0x40113c08b75ea67f              # double 4.3086270000000004
	.quad	0x402267485e3da2f9              # double 9.2017240000000005
	.quad	0x4022f05100a393ee              # double 9.4693679999999993
	.quad	0x3fe207075b3e1438              # double 0.56335800000000003
	.quad	0x401fcf69878316a0              # double 7.9525509999999997
	.quad	0x40205d1d68c692f7              # double 8.1818650000000002
	.quad	0x3fe08f8e7ddca4b1              # double 0.51752399999999998
	.quad	0x4021e82730c67169              # double 8.953424
	.quad	0x401c5ce032db1e9f              # double 7.0906989999999999
	.quad	0x400632eb5f5f0b28              # double 2.7748629999999999
	.quad	0x4020d27e30878748              # double 8.4111189999999993
	.quad	0x40107c80c73abc94              # double 4.1215849999999996
	.quad	0x3fff57b0f6ad70e7              # double 1.958909
	.quad	0x4010d2374794ea07              # double 4.2052889999999996
	.quad	0x401bb721d53cddd7              # double 6.9288400000000001
	.quad	0x4022dc3c5bd0e12f              # double 9.4301480000000008
	.quad	0x4020e29e0a41a262              # double 8.4426120000000004
	.quad	0x400db63992c8c500              # double 3.7139769999999999
	.quad	0x401e3477bbf93ff2              # double 7.5512379999999997
	.quad	0x4020b22f6a50d6b2              # double 8.3480179999999997
	.quad	0x401bf4bad7d7c2ca              # double 6.9889939999999999
	.quad	0x3fe4675ddd2ae8e2              # double 0.63761800000000002
	.quad	0x4018f59af9ebe9c9              # double 6.2398490000000004
	.quad	0x400fa9f8c21e1d21              # double 3.9579939999999998
	.quad	0x3fea5c33721d53ce              # double 0.82375500000000001
	.quad	0x4016eccbc05d52c1              # double 5.7312459999999996
	.quad	0x400727442c7fbacb              # double 2.8941729999999999
	.quad	0x40201b1d712a0ec7              # double 8.0529589999999995
	.quad	0x4014354d61b2a27f              # double 5.0520529999999999
	.quad	0x3ffc729e4d5d80e5              # double 1.7779830000000001
	.quad	0x401c2079e59f2baa              # double 7.0317150000000002
	.quad	0x400d26a4ca4f440b              # double 3.643869
	.quad	0x3fe1653868fd199c              # double 0.54360600000000003
	.quad	0x3fcd2abef06b3786              # double 0.22786699999999999
	.quad	0x4008e1f080303c08              # double 3.110322
	.quad	0x400c73f748a15981              # double 3.5566239999999998
	.quad	0x40225c8adeebb342              # double 9.1807470000000002
	.quad	0x3ff0f7fae3608d09              # double 1.0605420000000001
	.quad	0x4017f3ea2d2fe3f3              # double 5.9881979999999997
	.quad	0x401174f26aec0725              # double 4.3642060000000003
	.quad	0x3fdb4fe36d22424a              # double 0.42675099999999999
	.quad	0x3fdcd8d36b4c7f35              # double 0.45073400000000002
	.quad	0x401991af7d30ad47              # double 6.392271
	.quad	0x401da6e935b91f71              # double 7.4129990000000001
	.quad	0x4018a24bfd2e9468              # double 6.158493
	.quad	0x3ffddf2fdb8fde2f              # double 1.866989
	.quad	0x4023195bff04577e              # double 9.5495300000000007
	.quad	0x3ffcadba4d6e47dc              # double 1.792414
	.quad	0x401f8882278d0cc3              # double 7.8833089999999996
	.quad	0x400570b417ca2121              # double 2.6800310000000001
	.quad	0x401868b71b8aa002              # double 6.1022610000000004
	.quad	0x40093acabc515486              # double 3.1537069999999998
	.quad	0x401b130c67168f8e              # double 6.7686019999999996
	.quad	0x3fd213f077ccc038              # double 0.28246700000000002
	.quad	0x4005ce83a109d063              # double 2.7258369999999998
	.quad	0x401f2f2170931013              # double 7.7960260000000003
	.quad	0x401d1c332f01754b              # double 7.277539
	.quad	0x3fedbae03b3e9a70              # double 0.92906200000000005
	.quad	0x4019e5675579af19              # double 6.4740270000000004
	.quad	0x4021bb250b52439a              # double 8.8655170000000005
	.quad	0x3fc77a2cecc814d7              # double 0.183416
	.quad	0x402154f850df15a5              # double 8.6659570000000006
	.quad	0x40025457c0b13598              # double 2.2911830000000002
	.quad	0x401d50ea18372e6a              # double 7.3290179999999996
	.quad	0x400e2a393ee5eedd              # double 3.7706170000000001
	.quad	0x4007cdeb0fadf2ed              # double 2.975546
	.quad	0x401210420f6f08cc              # double 4.5158769999999997
	.quad	0x3fe80e779207d4e1              # double 0.75176600000000005
	.quad	0x40210c76295208e1              # double 8.5243389999999994
	.quad	0x3fef5f090f733a8a              # double 0.98035099999999997
	.quad	0x4020af23cc8de2ac              # double 8.3420699999999996
	.quad	0x4020dfc2ca148ba8              # double 8.4370329999999996
	.quad	0x40108e6ea8544780              # double 4.1390940000000001
	.quad	0x3ff4ffe3b03e20cd              # double 1.312473
	.quad	0x400d0175d13d74d6              # double 3.6257130000000002
	.quad	0x401834a2fcefaa47              # double 6.0514029999999996
	.quad	0x3fdc2784a9478c87              # double 0.43991200000000003
	.quad	0x401397b24638c975              # double 4.8981409999999999
	.quad	0x40134c8eef1bac2e              # double 4.8247640000000001
	.quad	0x401c7c9c90c4dec2              # double 7.1216910000000002
	.quad	0x401c3ededaec4a41              # double 7.0613970000000004
	.quad	0x401c53764f11b60b              # double 7.0815060000000001
	.quad	0x3fe24864883fd502              # double 0.57133699999999998
	.quad	0x4010053ef6b5d463              # double 4.0051230000000002
	.quad	0x401258f5c28f5c29              # double 4.586875
	.quad	0x3ffdec6bce8533b1              # double 1.87022
	.quad	0x4020b4bad7d7c2ca              # double 8.3529879999999999
	.quad	0x3fde355475a31a4c              # double 0.47200500000000001
	.quad	0x3ffa124bfd2e9468              # double 1.629467
	.quad	0x4000ed9be4cd7492              # double 2.1160199999999998
	.quad	0x401adfa3fcc9ea9a              # double 6.7183989999999998
	.quad	0x40107642bf9830e4              # double 4.1154890000000002
	.quad	0x400a791361dc93ea              # double 3.3091189999999999
	.quad	0x401d7dc37a3db3c0              # double 7.3728160000000003
	.quad	0x40163117720c8cd6              # double 5.5479409999999998
	.quad	0x400d534a44c7b02d              # double 3.6656689999999998
	.quad	0x40202db813016484              # double 8.0892949999999999
	.quad	0x401ecf4128bf3beb              # double 7.7023970000000003
	.quad	0x401be379314445aa              # double 6.9721419999999998
	.quad	0x4014aa7589efd86b              # double 5.1664640000000004
	.quad	0x401125a3a08398a6              # double 4.2867569999999997
	.quad	0x4001a189374bc6a8              # double 2.203875
	.quad	0x40227b10129cbab6              # double 9.2403569999999995
	.quad	0x400addc37a3db3c0              # double 3.3582830000000001
	.quad	0x400ab3a0c6b484d7              # double 3.3377089999999998
	.quad	0x4012dbf444e0daa1              # double 4.7147990000000002
	.quad	0x401ce9bc77143394              # double 7.2282580000000003
	.quad	0x40209d7bc7f77af6              # double 8.3075849999999996
	.quad	0x402368ebcc6c54bd              # double 9.7049240000000001
	.quad	0x3ff8168943e10060              # double 1.5055019999999999
	.quad	0x401363fa6defc7a4              # double 4.8476350000000004
	.quad	0x4020826edaa92e62              # double 8.2547519999999999
	.quad	0x402286deb95e5aff              # double 9.2634179999999997
	.quad	0x401dd6ef8055fbb5              # double 7.4598979999999999
	.quad	0x40229ec8b4395810              # double 9.3101249999999993
	.quad	0x40218b0ced4e4c94              # double 8.7715829999999996
	.quad	0x4022f56c508b32cf              # double 9.4793420000000008
	.quad	0x40073dd5d3dc8b87              # double 2.9051930000000001
	.quad	0x402132c386d2ed78              # double 8.5991479999999996
	.quad	0x40209513b5bf6a0e              # double 8.2911660000000005
	.quad	0x4020d4432ca57a78              # double 8.4145749999999992
	.quad	0x4022172f33ca31e8              # double 9.0452820000000003
	.quad	0x400e54877681669d              # double 3.791274
	.quad	0x4015458f2e05ccc9              # double 5.3179290000000004
	.quad	0x40091b3aeee95747              # double 3.138296
	.quad	0x401be5308bb90646              # double 6.9738179999999996
	.quad	0x401c1c49774256bd              # double 7.0276240000000003
	.quad	0x400d77e1b8ed1bf8              # double 3.6835360000000001
	.quad	0x4006d182235b4edb              # double 2.8522989999999999
	.quad	0x40183573215fcc18              # double 6.0521969999999996
	.quad	0x3fc5c664d3bf2f55              # double 0.17011699999999999
	.quad	0x40039a858793dd98              # double 2.45045
	.quad	0x40141fc69728a611              # double 5.0310309999999996
	.quad	0x401bddaf8df7a4e8              # double 6.9664900000000003
	.quad	0x4003efb4c3c18b50              # double 2.4920439999999999
	.quad	0x3fe6cc4ac6cdaf4b              # double 0.71243800000000002
	.quad	0x40173374794ea077              # double 5.800249
	.quad	0x4010dde939eadd59              # double 4.21671
	.quad	0x4021d810c6f7a0b6              # double 8.9220030000000001
	.quad	0x4014d28b6d86ec18              # double 5.2056100000000001
	.quad	0x3ff696ebd4cfd08d              # double 1.4118459999999999
	.quad	0x40060676a7264a17              # double 2.7531560000000002
	.quad	0x400f97b17ce52ded              # double 3.9490690000000002
	.quad	0x401776138fffbce4              # double 5.8653089999999999
	.quad	0x4007fb2702a3486f              # double 2.997633
	.quad	0x4012f9d388a8b08e              # double 4.7439710000000002
	.quad	0x3fe2ecb966be7afa              # double 0.59139699999999995
	.quad	0x40106a6efc371da3              # double 4.1039389999999996
	.quad	0x4021036bd2b6f199              # double 8.5066819999999996
	.quad	0x401b62170931012a              # double 6.8457910000000002
	.quad	0x401dbce5b4245f5b              # double 7.4344700000000001
	.quad	0x40202c4ac6cdaf4b              # double 8.0865080000000003
	.quad	0x3fe839d7fd82773e              # double 0.75706099999999998
	.quad	0x3ff5b05faebc408e              # double 1.3555600000000001
	.quad	0x4022460780fdc161              # double 9.1367759999999993
	.quad	0x400db76f6d762520              # double 3.7145679999999999
	.quad	0x400ced5cfaacd9e8              # double 3.6158999999999999
	.quad	0x3ffd97268d32830a              # double 1.849402
	.quad	0x4013c0d38cda6e76              # double 4.938307
	.quad	0x401de20ddc619546              # double 7.4707559999999997
	.quad	0x4000da22706d5065              # double 2.1065109999999998
	.quad	0x4020e69c66d373b0              # double 8.450412
	.quad	0x401340e6f2e8c048              # double 4.8133809999999997
	.quad	0x4022e9ad42c3c9ef              # double 9.4564000000000003
	.quad	0x401de7f06705c897              # double 7.4765030000000001
	.quad	0x401e33b81b64e054              # double 7.5505069999999996
	.quad	0x400e5463497b7415              # double 3.7912050000000002
	.quad	0x4014c5a294141e9b              # double 5.193003
	.quad	0x400fc5436b8f9b13              # double 3.97132
	.quad	0x40045bb2fec56d5d              # double 2.544775
	.quad	0x4013602cd39da166              # double 4.8439209999999999
	.quad	0x3fe6b1ad2135daad              # double 0.70918899999999996
	.quad	0x40196368f08461fa              # double 6.3470800000000001
	.quad	0x3feb4a7935760392              # double 0.85284099999999996
	.quad	0x3ffff3b85e80bed7              # double 1.9970019999999999
	.quad	0x401fdc9b845564b6              # double 7.9654369999999997
	.quad	0x401673671ac14c66              # double 5.612698
	.quad	0x4023f61650a45d42              # double 9.980639
	.quad	0x3f93a4f8726d04e6              # double 0.019184
	.quad	0x401ba86d2ed783e0              # double 6.914479
	.quad	0x401d0708aac96cc6              # double 7.256869
	.quad	0x401ccd55e6bc621b              # double 7.2005229999999996
	.quad	0x401169f4d37c1377              # double 4.3534730000000001
	.quad	0x40138a8da7f3cf70              # double 4.8853059999999999
	.quad	0x3ffb74395810624e              # double 1.715875
	.quad	0x401162c1f42bb667              # double 4.3464429999999998
	.quad	0x3ff81549731098d4              # double 1.5051969999999999
	.quad	0x40129bf11f926c7f              # double 4.6522870000000003
	.quad	0x4000e1d6494d50ec              # double 2.1102720000000001
	.quad	0x401cb5f1bef49cf5              # double 7.1776799999999996
	.quad	0x40119a077036c9c1              # double 4.4004190000000003
	.quad	0x401d61a048e043a2              # double 7.3453379999999999
	.quad	0x4011c4c87980f55e              # double 4.4421710000000001
	.quad	0x401fe18f81e8a2ec              # double 7.9702739999999999
	.quad	0x4021fa2ff08893b8              # double 8.9886470000000003
	.quad	0x401b3cc35ce18266              # double 6.8093389999999996
	.quad	0x4013da11a975afb0              # double 4.9629580000000004
	.quad	0x402080a159817b96              # double 8.2512310000000006
	.quad	0x400e925b317efe0d              # double 3.8214630000000001
	.quad	0x40238489f40a2878              # double 9.7588650000000001
	.quad	0x4014fbb7739f340d              # double 5.2458169999999997
	.quad	0x4022f8a265f0f5a1              # double 9.4856139999999999
	.quad	0x401d036ac647778e              # double 7.2533370000000001
	.quad	0x40142b83cf2cf95d              # double 5.0424949999999997
	.quad	0x40227f727136a401              # double 9.24892
	.quad	0x402121949e8815e4              # double 8.5655870000000007
	.quad	0x4004697e132b55ef              # double 2.5515099999999999
	.quad	0x400378df7a4e7ab7              # double 2.4340199999999999
	.quad	0x40133fbb0e5e6794              # double 4.8122369999999997
	.quad	0x4010b07b352a8438              # double 4.172345
	.quad	0x40125d3996fa82e8              # double 4.5910399999999996
	.quad	0x4017d76188b1140a              # double 5.9603330000000003
	.quad	0x40018c93a7115161              # double 2.193641
	.quad	0x400fc65300581494              # double 3.971838
	.quad	0x40119dfc5cdd50a9              # double 4.4042830000000004
	.quad	0x4022fe9a91105e1c              # double 9.4972729999999998
	.quad	0x3fffd83621fafc8b              # double 1.990286
	.quad	0x3ff58e93e1c9b414              # double 1.3473090000000001
	.quad	0x3fe38b827fa1a0cf              # double 0.61077999999999999
	.quad	0x400bf8c2a454de7f              # double 3.4964650000000002
	.quad	0x4019628c36da87a0              # double 6.3462379999999996
	.quad	0x40118b9884c6a3be              # double 4.3863240000000001
	.quad	0x4001e7f1b6912125              # double 2.238254
	.quad	0x4014bac18f81e8a3              # double 5.1823790000000001
	.quad	0x400624cd74927914              # double 2.76797
	.quad	0x402351fbe76c8b44              # double 9.6601250000000007
	.quad	0x3fe14b4d056c508b              # double 0.54044199999999998
	.quad	0x3fe1b71327243138              # double 0.55359800000000003
	.quad	0x400de8b8f14db595              # double 3.7386339999999998
	.quad	0x400b95bab21815a0              # double 3.4481099999999998
	.quad	0x4015acbf6e3f78bc              # double 5.4186990000000002
	.quad	0x4021e0d2c386d2ed              # double 8.9391079999999992
	.quad	0x402229c432ca57a8              # double 9.0815750000000008
	.quad	0x40061ec3dab5c39c              # double 2.7650220000000001
	.quad	0x3ffb49aaa3ad18d2              # double 1.7054849999999999
	.quad	0x3ffa0393682730c6              # double 1.6258729999999999
	.quad	0x3fcc3b2dd377e1b9              # double 0.220556
	.quad	0x40208d4fbdad7519              # double 8.2759990000000005
	.quad	0x40190f0c77dd872f              # double 6.2646959999999998
	.quad	0x401e075360d02470              # double 7.5071539999999999
	.quad	0x40218453d20f2bed              # double 8.7584520000000001
	.quad	0x401bf496aad1d042              # double 6.9888560000000002
	.quad	0x401a3de4c51116a9              # double 6.5604430000000002
	.quad	0x401f431ec0b56755              # double 7.8155469999999995
	.quad	0x4018e6c3b927d45a              # double 6.2253559999999997
	.quad	0x4021d63497b7414a              # double 8.9183699999999995
	.quad	0x3ffaeb6e0d23d4f1              # double 1.6824779999999999
	.quad	0x4000c46a5d6bebe1              # double 2.0959059999999998
	.quad	0x4003b2af9a8cdea0              # double 2.4622489999999999
	.quad	0x401f3db445ed4a1b              # double 7.8102580000000001
	.quad	0x40218e008e9b38d6              # double 8.7773479999999999
	.quad	0x4019f595bbbe8790              # double 6.4898290000000003
	.quad	0x4012875e2046c765              # double 4.6321950000000003
	.quad	0x4014e4195cc857f3              # double 5.222753
	.quad	0x401802e05ccc89b1              # double 6.0028090000000001
	.quad	0x4015e240746455eb              # double 5.4709490000000001
	.quad	0x4016e3e74afd5454              # double 5.7225619999999999
	.quad	0x400b4c753e707e17              # double 3.4123329999999998
	.quad	0x402214adddf43c7d              # double 9.0403889999999993
	.quad	0x400c4f9f44d44567              # double 3.538878
	.quad	0x401e0c0ce91c8eac              # double 7.511768
	.quad	0x40202996312f4cf5              # double 8.0812240000000006
	.quad	0x4011c2bcb5fe542e              # double 4.4401729999999997
	.quad	0x3fd6bd2fa0d77b7c              # double 0.35529699999999997
	.quad	0x400da564f97edc7f              # double 3.705759
	.quad	0x4008b9ce8d972cd8              # double 3.0907260000000001
	.quad	0x402183cba3012168              # double 8.7574129999999997
	.quad	0x40238d5432873bc9              # double 9.7760329999999999
	.quad	0x40151784a9478c87              # double 5.2729670000000004
	.quad	0x401b64a59c065b64              # double 6.8482880000000002
	.quad	0x400a4d6c2efd438d              # double 3.2878039999999999
	.quad	0x3fd9fcd24e160d88              # double 0.40605599999999997
	.quad	0x401d2848beb5b2d5              # double 7.2893400000000002
	.quad	0x4022fbe7296f6513              # double 9.4919980000000006
	.quad	0x40205485a0be5109              # double 8.165082
	.quad	0x4012852c59fb1e19              # double 4.6300520000000001
	.quad	0x3fd2d2bb23571d1d              # double 0.29411199999999998
	.quad	0x40202682949a5658              # double 8.075215
	.quad	0x401fd1eb4202d9cf              # double 7.9549989999999999
	.quad	0x400ca55fbb517a46              # double 3.580749
	.quad	0x40042438088509c0              # double 2.5176850000000002
	.quad	0x401e0d2c7b890d5a              # double 7.5128649999999997
	.quad	0x3fd9d78811b1d92b              # double 0.40377999999999997
	.quad	0x4016dcfa69be09bb              # double 5.7157989999999996
	.quad	0x401a02dcb1465e89              # double 6.5027949999999999
	.quad	0x401437136a400fbb              # double 5.0537850000000004
	.quad	0x3fd4c4b09e98dcdb              # double 0.32450499999999999
	.quad	0x40208b74794ea077              # double 8.272373
	.quad	0x3ff188216c61522a              # double 1.0957349999999999
	.quad	0x401f66fb09203a32              # double 7.8505669999999999
	.quad	0x3fdf56b441bb8c33              # double 0.48966700000000002
	.quad	0x3fe7c75a31a4bdba              # double 0.743085
	.quad	0x40152adab9f559b4              # double 5.2918500000000002
	.quad	0x400495232d2bb235              # double 2.5728209999999998
	.quad	0x402068dfbd6a593a              # double 8.2048319999999997
	.quad	0x40129193b3a68b1a              # double 4.6421650000000003
	.quad	0x3ff4ad6cb5350093              # double 1.29234
	.quad	0x3fec8be9424e5929              # double 0.89207899999999996
	.quad	0x401e427c39368273              # double 7.5649269999999999
	.quad	0x40210d55e6bc621b              # double 8.5260459999999991
	.quad	0x3ff70fa9c12f09d9              # double 1.441324
	.quad	0x402078303c07ee0b              # double 8.2347429999999999
	.quad	0x4010a24bfd2e9468              # double 4.158493
	.quad	0x401290f2becedd48              # double 4.6415509999999998
	.quad	0x401102fdb8fde2ef              # double 4.2529209999999997
	.quad	0x402108168b5cbff4              # double 8.5157969999999991
	.quad	0x3fff871e6cd29132              # double 1.970488
	.quad	0x401cd61bb05faebc              # double 7.2090899999999998
	.quad	0x400c5ed20296b335              # double 3.5462989999999999
	.quad	0x40135eba27ae9ab3              # double 4.8425070000000003
	.quad	0x401cc32b990afe61              # double 7.1905960000000002
	.quad	0x40058054ef459d99              # double 2.687662
	.quad	0x3ff8530ad46f587d              # double 1.5202739999999999
	.quad	0x4010cd2849cb252d              # double 4.2003490000000001
	.quad	0x3feff1a7e3087875              # double 0.99824900000000005
	.quad	0x40179b8a19c9d5a2              # double 5.9018940000000004
	.quad	0x401856fda836eb4f              # double 6.0849520000000004
	.quad	0x4011b22fad6cb535              # double 4.42401
	.quad	0x4022e1392189bd84              # double 9.4398890000000008
	.quad	0x402258bf5d78811b              # double 9.1733349999999998
	.quad	0x4002a4e0daa0cae6              # double 2.3305069999999999
	.quad	0x40225f95703f2d3c              # double 9.1866869999999991
	.quad	0x401da111f0c34c1b              # double 7.4072950000000004
	.quad	0x40186faa044ae85c              # double 6.1090470000000003
	.quad	0x4000e441fea8112c              # double 2.1114540000000002
	.quad	0x3ffcaecd07852f7f              # double 1.7926759999999999
	.quad	0x4016d0c6f7a0b5ee              # double 5.7038840000000004
	.quad	0x4001dda1ec4e7254              # double 2.2332190000000001
	.quad	0x40236484944ed6fe              # double 9.6963240000000006
	.quad	0x4021dcff0025bfad              # double 8.9316329999999997
	.quad	0x40218ebd4cfd08d5              # double 8.7787880000000005
	.quad	0x40221f166e008e9b              # double 9.0607179999999996
	.quad	0x401fadf3f961804e              # double 7.9198760000000004
	.quad	0x400a0e65bea0ba1f              # double 3.2570299999999999
	.quad	0x401e8c8f75536934              # double 7.6372660000000003
	.quad	0x40031912dba4d6e4              # double 2.3872429999999998
	.quad	0x4022a95464dc22ab              # double 9.3307219999999997
	.quad	0x3fef0fde2ef4e011              # double 0.97068699999999996
	.quad	0x40222bd1676640a7              # double 9.0855820000000005
	.quad	0x40010db1e9f27781              # double 2.1316869999999999
	.quad	0x4021486df82b1f68              # double 8.6414639999999991
	.quad	0x401c43636f3b213e              # double 7.0658089999999998
	.quad	0x4008cbd1aa821f2a              # double 3.0995210000000002
	.quad	0x4016db1feeb2d0a2              # double 5.7139889999999998
	.quad	0x401c126c7eae5bc8              # double 7.0179919999999996
	.quad	0x401297603925bb7b              # double 4.6478279999999996
	.quad	0x400f52eb5f5f0b28              # double 3.9154879999999999
	.quad	0x40172232096787cf              # double 5.7833940000000004
	.quad	0x401c6f633ce63a5c              # double 7.1087769999999999
	.quad	0x40105cc46950fc72              # double 4.0905930000000001
	.quad	0x3fdb34f3fd933e36              # double 0.42510700000000001
	.quad	0x40092c6583e8576d              # double 3.1466780000000001
	.quad	0x3fddf809917939a8              # double 0.46826400000000001
	.quad	0x40150838c111ada7              # double 5.2580289999999996
	.quad	0x40204a8d8665e02f              # double 8.1456110000000006
	.quad	0x4019fba450acc0be              # double 6.4957440000000002
	.quad	0x3ff134fb549f9485              # double 1.0754349999999999
	.quad	0x3ffd49edbf8b9baa              # double 1.830549
	.quad	0x3fe15a1a93293d10              # double 0.54224899999999998
	.quad	0x4022d632c1f42bb6              # double 9.4183559999999993
	.quad	0x3ff0a158750c1b97              # double 1.039391
	.quad	0x4021866c093d9664              # double 8.7625430000000008
	.quad	0x4014fc5260f5e41d              # double 5.2464079999999997
	.quad	0x40018960b6f9fcb1              # double 2.1920790000000001
	.quad	0x4020b69e3c968944              # double 8.3566760000000002
	.quad	0x3fe211ea78af3e47              # double 0.56468700000000005
	.quad	0x401155d701d9f4d3              # double 4.3338279999999996
	.quad	0x400d7c903ea704bc              # double 3.6858219999999999
	.quad	0x40221870329802c1              # double 9.0477310000000006
	.quad	0x40184c1ebc83a96d              # double 6.0743359999999997
	.quad	0x401fdc8259e1f3a5              # double 7.9653409999999995
	.quad	0x401f22f05a708ede              # double 7.7841199999999997
	.quad	0x40154564f97edc7f              # double 5.3177680000000001
	.quad	0x400a80e5a35d67ba              # double 3.3129379999999999
	.quad	0x401b080064a9cdc4              # double 6.7578139999999998
	.quad	0x401d83558a761028              # double 7.3782560000000003
	.quad	0x3ff3fc9363f572de              # double 1.2491639999999999
	.quad	0x401d076922d948dc              # double 7.2572369999999999
	.quad	0x4022522c881e4713              # double 9.1604960000000002
	.quad	0x402300a3d70a3d71              # double 9.5012500000000006
	.quad	0x40196929aa1d755c              # double 6.3526980000000002
	.quad	0x401f90e8858ff759              # double 7.8915119999999996
	.quad	0x400eb5bf6a0dbad4              # double 3.8387440000000002
	.quad	0x3ff7cda2b5a20ddc              # double 1.4877039999999999
	.quad	0x4009c223e1869835              # double 3.219795
	.quad	0x4005b009b30728e9              # double 2.7109559999999999
	.quad	0x3ff5400431bde82d              # double 1.3281289999999999
	.quad	0x3ff701a048e043a2              # double 1.437897
	.quad	0x400663c18b502abb              # double 2.7987090000000001
	.quad	0x4013fc422036006d              # double 4.996346
	.quad	0x4015cd801b435265              # double 5.4506839999999999
	.quad	0x4021e05e3da2f8be              # double 8.9382190000000001
	.quad	0x402229372a38b8ae              # double 9.0804989999999997
	.quad	0x4002b1351159c497              # double 2.3365269999999998
	.quad	0x40234281fd9ba1b2              # double 9.6298980000000007
	.quad	0x40059063e07a28bb              # double 2.695503
	.quad	0x3fc5b6aa4b9884c7              # double 0.16963700000000001
	.quad	0x40120a847b24638d              # double 4.5102710000000004
	.quad	0x401102dadb8348f5              # double 4.2527879999999998
	.quad	0x4020cb82e44b6e93              # double 8.3974829999999994
	.quad	0x3ff7a26916440f24              # double 1.4771510000000001
	.quad	0x40156097c80841ee              # double 5.3443290000000001
	.quad	0x401364666ec9e237              # double 4.8480470000000002
	.quad	0x4015ac87db2b3461              # double 5.4184869999999998
	.quad	0x401ab47c30d306a3              # double 6.6762550000000003
	.quad	0x3ffadf53825e13b2              # double 1.6795230000000001
	.quad	0x3fe070520d130dfa              # double 0.51371100000000003
	.quad	0x3fec522424a276b8              # double 0.88502700000000001
	.quad	0x4022cd25247cb70b              # double 9.4006740000000004
	.quad	0x3ffe03cf2cf95d4f              # double 1.8759300000000001
	.quad	0x40199911cf355cd9              # double 6.3994819999999999
	.quad	0x40131df86e3b46fe              # double 4.7792680000000001
	.quad	0x401e3198f1d3ed52              # double 7.5484349999999996
	.quad	0x3fffba0a52695960              # double 1.98292
	.quad	0x4012392ab68cef67              # double 4.5558269999999998
	.quad	0x40203425f202107b              # double 8.1018519999999992
	.quad	0x4019c6b7ed41b75a              # double 6.4440609999999996
	.quad	0x400b3132f87ad081              # double 3.3990230000000001
	.quad	0x3ff90ed916872b02              # double 1.566125
	.quad	0x40053f0b28522ea1              # double 2.655783
	.quad	0x400dafc7a398201d              # double 3.7108300000000001
	.quad	0x400a43fc43b2dd37              # double 3.2831959999999998
	.quad	0x4018ec3d68405b3a              # double 6.2307030000000001
	.quad	0x3fb38b47c73eee52              # double 0.076343999999999995
	.quad	0x3fd2eeaa6d267408              # double 0.295817
	.quad	0x4016dd523b3636f4              # double 5.7161340000000003
	.quad	0x40235e0c5a8155d6              # double 9.6836880000000001
	.quad	0x400c7d16fc9bc771              # double 3.5610789999999999
	.quad	0x400f89ea14057082              # double 3.9423409999999999
	.quad	0x401fa6b4c7f34938              # double 7.9127989999999996
	.quad	0x401f970691ea78af              # double 7.8974859999999997
	.quad	0x401adf6cacd184c2              # double 6.7181879999999996
	.quad	0x401917f1b6912125              # double 6.2733829999999999
	.quad	0x40150436b8f9b131              # double 5.2541149999999996
	.quad	0x4005079d4d834092              # double 2.6287180000000001
	.quad	0x4022fc60029f16b1              # double 9.4929199999999998
	.quad	0x400680c282c6ef3d              # double 2.8128709999999999
	.quad	0x40107a6d26740810              # double 4.1195570000000004
	.quad	0x401a87cd898b2e9d              # double 6.6326200000000002
	.quad	0x4010889613d31b9b              # double 4.1333849999999996
	.quad	0x4010d8537e2c55c9              # double 4.2112559999999997
	.quad	0x4001813a0c6b484d              # double 2.1880989999999998
	.quad	0x400de3992c8c5005              # double 3.736132
	.quad	0x400660dcb9a9da59              # double 2.7972959999999998
	.quad	0x4021c58b3f63c31e              # double 8.8858280000000001
	.quad	0x40067928e0c9d9d3              # double 2.8091599999999999
	.quad	0x401d45f676ea4229              # double 7.3183230000000004
	.quad	0x40109c970f7b9e06              # double 4.1529199999999999
	.quad	0x400474e7ee9142b3              # double 2.557083
	.quad	0x4011dcbccf28c79f              # double 4.4655639999999996
	.quad	0x4013db4916ca46e1              # double 4.9641460000000004
	.quad	0x401caaceee0f3cb4              # double 7.1668050000000001
	.quad	0x40152ae2541d8e86              # double 5.2918789999999998
	.quad	0x4021eefe93187619              # double 8.9667860000000008
	.quad	0x3ff0b780346dc5d6              # double 1.0448
	.quad	0x4016296249a133c2              # double 5.5404140000000002
	.quad	0x4023b4abc5154867              # double 9.8528730000000006
	.quad	0x401d7d32830a0b1c              # double 7.3722630000000002
	.quad	0x400e6fd6d7e889c2              # double 3.8046090000000001
	.quad	0x401ab311e85fd04a              # double 6.6748729999999998
	.quad	0x401f80ad46f587d7              # double 7.875661
	.quad	0x401d34ed2cbea4ec              # double 7.3016860000000001
	.quad	0x40230e47991bc558              # double 9.5278899999999993
	.quad	0x401aab417ca2120e              # double 6.6672419999999999
	.quad	0x4021e689ca18bd66              # double 8.9502699999999997
	.quad	0x3ff26fd5454152b1              # double 1.1523030000000001
	.quad	0x40197f07bfe7e1fc              # double 6.374053
	.quad	0x400ca4a8c154c986              # double 3.5804
	.quad	0x40152f284167a95d              # double 5.2960520000000004
	.quad	0x4009cd7b634dad32              # double 3.225333
	.quad	0x4021dd2502eec7c9              # double 8.9319229999999994
	.quad	0x401d513b9f127f5f              # double 7.3293290000000004
	.quad	0x401ad5ef62f9ca5c              # double 6.7089210000000001
	.quad	0x40103ea747d805e6              # double 4.061185
	.quad	0x40200b56b8737974              # double 8.0221459999999993
	.quad	0x400e824cc6822ff1              # double 3.8136230000000002
	.quad	0x401977c9de050375              # double 6.366981
	.quad	0x401202c7325918a0              # double 4.502713
	.quad	0x400d2324c8366517              # double 3.6421600000000001
	.quad	0x401fd3bd5992428d              # double 7.9567769999999997
	.quad	0x401675abc0e38a7e              # double 5.6149129999999996
	.quad	0x4014efa82e87d2c8              # double 5.2340400000000002
	.quad	0x3fe525c5f7c6759b              # double 0.66086100000000003
	.quad	0x4019444a6223e187              # double 6.3166900000000004
	.quad	0x3fdd14b167ec7864              # double 0.45438800000000001
	.quad	0x40228a31832fcac9              # double 9.2699090000000002
	.quad	0x402208984e3ffef4              # double 9.0167870000000007
	.quad	0x401a399ed7c6fbd2              # double 6.5562699999999996
	.quad	0x402176c43f5f9160              # double 8.7319659999999999
	.quad	0x4002e8ad68837718              # double 2.3636119999999998
	.quad	0x4020c01344806291              # double 8.3751470000000001
	.quad	0x401d7e96c3fc43b3              # double 7.3736220000000001
	.quad	0x40133a3e7d135116              # double 4.8068790000000003
	.quad	0x3ff6e225fa658c4c              # double 1.430212
	.quad	0x3ff1b8da3c21187e              # double 1.1076299999999999
	.quad	0x3fe13d1aa821f299              # double 0.53870899999999999
	.quad	0x3ffe86f049a9973e              # double 1.9079440000000001
	.quad	0x40118dc5931ca7d6              # double 4.3884489999999996
	.quad	0x3ff2af46aa087ca6              # double 1.1677919999999999
	.quad	0x3fd7b21c475e6363              # double 0.37024600000000002
	.quad	0x4006ffc08fa7a850              # double 2.874879
	.quad	0x40158dfa00e27e0f              # double 5.388649
	.quad	0x402368d4fdf3b646              # double 9.7047500000000007
	.quad	0x4021654e4c942d49              # double 8.6978629999999999
	.quad	0x40133ec743201041              # double 4.8113070000000002
	.quad	0x402038904f6dfc5d              # double 8.1104760000000002
	.quad	0x40219e7a52ac753e              # double 8.8095269999999992
	.quad	0x400ba0e8c8abd5dc              # double 3.4535689999999999
	.quad	0x40147232d2bb2357              # double 5.1115219999999999
	.quad	0x40177a3d2d87f887              # double 5.8693739999999996
	.quad	0x40225248b6523704              # double 9.1607109999999991
	.quad	0x4014a8ed5f138bce              # double 5.164968
	.quad	0x4022e8c8eef1bac3              # double 9.4546580000000002
	.quad	0x401a06a7264a16a5              # double 6.5064970000000004
	.quad	0x40239626916440f2              # double 9.7932629999999996
	.quad	0x3ffa87219220ff54              # double 1.657991
	.quad	0x40020f041461b6d4              # double 2.2573319999999999
	.quad	0x401d556a37ac3eb8              # double 7.3334130000000001
	.quad	0x4001d1e53a81dc0e              # double 2.2274880000000001
	.quad	0x3ffdeed45e9185cf              # double 1.870808
	.quad	0x4021c6cdaf4adbc6              # double 8.8882879999999993
	.quad	0x40190644955b4678              # double 6.2561210000000003
	.quad	0x402103b6ed677708              # double 8.5072550000000007
	.quad	0x401fb39a38fbca10              # double 7.9253929999999997
	.quad	0x3ff8a35935fc3b4f              # double 1.5398799999999999
	.quad	0x4022a5610adcd2d4              # double 9.3230059999999994
	.quad	0x4019274c8ffb8b26              # double 6.2883779999999998
	.quad	0x4020d7878b7a1c26              # double 8.4209560000000003
	.quad	0x40123059641f6449              # double 4.5472159999999997
	.quad	0x401adfa54c554328              # double 6.7184039999999996
	.quad	0x3ff7f9ffd60e94ee              # double 1.498535
	.quad	0x3f60257c914b167f              # double 0.0019710000000000001
	.quad	0x3fef96d0917d6b66              # double 0.98716000000000004
	.quad	0x401f2d00713f077d              # double 7.7939470000000001
	.quad	0x40232e13f4a98aa8              # double 9.5899959999999992
	.quad	0x401d34b167ec7864              # double 7.3014580000000002
	.quad	0x4021cf3d5bab2181              # double 8.9047649999999994
	.quad	0x4020737867f0aa22              # double 8.2255280000000006
	.quad	0x3fd419a415f45e0b              # double 0.31406499999999998
	.quad	0x401d8032db1e9f27              # double 7.3751939999999996
	.quad	0x401a9491afc04c8c              # double 6.6450870000000002
	.quad	0x3ff36523704790b8              # double 1.2121919999999999
	.quad	0x4018b7724fa8b4c0              # double 6.1791470000000004
	.quad	0x401796a8fc0d2c38              # double 5.8971289999999996
	.quad	0x3fe98bdcad14a0a1              # double 0.798323
	.quad	0x40042f67b1c0010c              # double 2.5231469999999998
	.quad	0x4003bd3bafd976ff              # double 2.4673989999999999
	.quad	0x3fe06f36ef8055fc              # double 0.51357600000000003
	.quad	0x4022dfde2ef4e011              # double 9.4372419999999994
	.quad	0x401cd841ede1198b              # double 7.2111890000000001
	.quad	0x401b7a919695d91b              # double 6.8696960000000002
	.quad	0x3fe3790752da9867              # double 0.60852399999999995
	.quad	0x4012514727dcbddc              # double 4.5793730000000004
	.quad	0x3feebc925785f8d3              # double 0.96051900000000001
	.quad	0x4015f734f82f5126              # double 5.4914129999999997
	.quad	0x4022ba435696e58a              # double 9.3637949999999996
	.quad	0x40127e5a35d67ba2              # double 4.6233909999999998
	.quad	0x4022f7ab7564302b              # double 9.4837299999999995
	.quad	0x401bbdadb8348f54              # double 6.9352330000000002
	.quad	0x401a1f53c579f234              # double 6.5305929999999996
	.quad	0x3fc2637bd05af6c7              # double 0.14366100000000001
	.quad	0x3ff3d333b96af039              # double 1.239063
	.quad	0x4020bd1c7de5082d              # double 8.3693580000000001
	.quad	0x401ca436b8f9b131              # double 7.1603649999999996
	.quad	0x3fcc56bca5375c8e              # double 0.22139700000000001
	.quad	0x4014726202539757              # double 5.1117020000000002
	.quad	0x40171d7cb2d905c0              # double 5.7787959999999998
	.quad	0x3fe9793dd97f62b7              # double 0.79605000000000004
	.quad	0x3fede4b44a1f0803              # double 0.934168
	.quad	0x40092e6299524bfd              # double 3.1476489999999999
	.quad	0x40238bcc07aaef2c              # double 9.7730409999999992
	.quad	0x4022bb31c219eb64              # double 9.3656140000000007
	.quad	0x40191cb5350092cd              # double 6.278035
	.quad	0x4023cc2c3c9eecc0              # double 9.8987750000000005
	.quad	0x401b93e0370cdc87              # double 6.8944099999999997
	.quad	0x40204e35e74299d9              # double 8.1527550000000009
	.quad	0x40199435efa615a9              # double 6.3947370000000001
	.quad	0x4012bcd9a52263d8              # double 4.6844239999999999
	.quad	0x401f4feb4a66559f              # double 7.8280459999999996
	.quad	0x401dd69595feda66              # double 7.4595549999999999
	.quad	0x4015e0ea5b530ced              # double 5.4696439999999997
	.quad	0x4009927c39368273              # double 3.196526
	.quad	0x4019782d7b634dad              # double 6.3673609999999998
	.quad	0x4005cd16b97fe8ee              # double 2.7251409999999998
	.quad	0x401e1149c6f36ef8              # double 7.5168829999999999
	.quad	0x40030ef911cf355d              # double 2.3823110000000001
	.quad	0x401c6ab474107315              # double 7.1042040000000002
	.quad	0x402006f4be835dee              # double 8.0135860000000001
	.quad	0x3fc09b9d7fd82774              # double 0.129749
	.quad	0x3ff27ec892ab68cf              # double 1.155953
	.quad	0x401743d9ec700043              # double 5.8162609999999999
	.quad	0x40152ff4fd6d7e89              # double 5.2968330000000003
	.quad	0x4007a007570c5650              # double 2.9531390000000002
	.quad	0x40224f6512a94ff0              # double 9.155068
	.quad	0x400a79f44d445671              # double 3.3095479999999999
	.quad	0x4013910a137f38c5              # double 4.8916399999999998
	.quad	0x4021d839042d8c2a              # double 8.9223099999999995
	.quad	0x4018c48adeebb342              # double 6.1919360000000001
	.quad	0x4023284ddb5525cc              # double 9.5787189999999995
	.quad	0x400fbee3d5fdcdf7              # double 3.9682080000000002
	.quad	0x401c53b81b64e054              # double 7.0817569999999996
	.quad	0x402034f483cafb3b              # double 8.1034279999999992
	.quad	0x4020a45f7c6759ab              # double 8.3210409999999992
	.quad	0x400555c39bcba301              # double 2.6668769999999999
	.quad	0x4010a65061416378              # double 4.1624160000000003
	.quad	0x4021b1105e1c1509              # double 8.8458279999999991
	.quad	0x40075f080303c07f              # double 2.9214020000000001
	.quad	0x4016f4c6e6d9be4d              # double 5.7390400000000001
	.quad	0x40158888f861a60d              # double 5.3833349999999998
	.quad	0x3ff8a24463065f96              # double 1.5396160000000001
	.quad	0x4009430f49491f2e              # double 3.1577440000000001
	.quad	0x400ae0cf9e3864cb              # double 3.3597709999999998
	.quad	0x400f3d206c8711d8              # double 3.9048470000000002
	.quad	0x3fe5a2706d506573              # double 0.67607899999999999
	.quad	0x3fe3d3fc0096feb5              # double 0.61962700000000004
	.quad	0x401cdb3edd8b60f2              # double 7.2141070000000003
	.quad	0x4012a3cb81733227              # double 4.6599560000000002
	.quad	0x4008d2c40d0aaa7e              # double 3.102913
	.quad	0x401236709fa54c55              # double 4.5531639999999998
	.quad	0x3ff8e8fd199bb279              # double 1.5568820000000001
	.quad	0x4015ff82b1f687b1              # double 5.4995219999999998
	.quad	0x401a73cc07aaef2c              # double 6.6130829999999996
	.quad	0x40109b48909289db              # double 4.1516440000000001
	.quad	0x3fffbdaf8df7a4e8              # double 1.9838100000000001
	.quad	0x40191a3875925354              # double 6.2756059999999998
	.quad	0x400a13db7f173754              # double 3.2596959999999999
	.quad	0x3ff2020a30db6a1f              # double 1.1254980000000001
	.quad	0x3febb124d099e0e7              # double 0.86537399999999998
	.quad	0x401865a5b9628cbd              # double 6.0992649999999999
	.quad	0x3ff9822036006d0d              # double 1.5942689999999999
	.quad	0x3ffa8c25072085b2              # double 1.6592150000000001
	.quad	0x4013b07d0aed99cc              # double 4.9223520000000001
	.quad	0x401d4e26d4801f75              # double 7.3263199999999999
	.quad	0x4011ca4db163baba              # double 4.4475619999999996
	.quad	0x40219119ef954eb1              # double 8.7834009999999996
	.quad	0x4020544007570c56              # double 8.1645509999999994
	.quad	0x4020f1e7b80a9de9              # double 8.4724710000000005
	.quad	0x401034549b62c775              # double 4.0511039999999996
	.quad	0x40216daff2a172ac              # double 8.7142330000000001
	.quad	0x401e0e33269df97b              # double 7.5138670000000002
	.quad	0x401fce0d66f0cfe1              # double 7.9512229999999997
	.quad	0x402310795f676ea4              # double 9.5321759999999997
	.quad	0x401567ebaf102364              # double 5.3514850000000003
	.quad	0x3ff0c6a5d6bebe16              # double 1.0484979999999999
	.quad	0x40232e5abc0e38a8              # double 9.5905360000000001
	.quad	0x401c656a37ac3eb8              # double 7.0990380000000002
	.quad	0x40028f8e7ddca4b1              # double 2.3200959999999999
	.quad	0x4003882b62845996              # double 2.4414889999999998
	.quad	0x3fe014057082491b              # double 0.502444
	.quad	0x3ffa31800a7c5ac4              # double 1.6370849999999999
	.quad	0x3fefd6a593a2df93              # double 0.99495199999999994
	.quad	0x3fff92fb19e731d3              # double 1.973384
	.quad	0x40045a0945f9df55              # double 2.5439630000000002
	.quad	0x3ff5f3bd9cae2110              # double 1.372007
	.quad	0x3fec4886162f166e              # double 0.883853
	.quad	0x4000cf7f498c3b0c              # double 2.1013169999999999
	.quad	0x40151de8f6cefed6              # double 5.2792089999999998
	.quad	0x3fd3a0f9096bb98c              # double 0.30669999999999997
	.quad	0x3fef3966be7afa72              # double 0.97575699999999999
	.quad	0x401d9dcb5781c715              # double 7.404096
	.quad	0x400d961cbccf28c8              # double 3.6982970000000002
	.quad	0x401d72e44b6e935c              # double 7.3621990000000004
	.quad	0x401fa188f42fe825              # double 7.9077489999999999
	.quad	0x401a5fddebd9018e              # double 6.5936199999999996
	.quad	0x40217ca4095f2453              # double 8.7434390000000004
	.quad	0x3ffcfb3d8e000863              # double 1.8113379999999999
	.quad	0x4022b37824d4cb9f              # double 9.3505260000000003
	.quad	0x40206ccc25072086              # double 8.2124950000000005
	.quad	0x3fc37ced916872b0              # double 0.15225
	.quad	0x4012682385404641              # double 4.6016979999999998
	.quad	0x401e0432873bc904              # double 7.5040990000000001
	.quad	0x401c17e38eb0318c              # double 7.0233290000000004
	.quad	0x4021ad5714b9cb68              # double 8.8385549999999995
	.quad	0x401207dcbddb9842              # double 4.5076780000000003
	.quad	0x3ff9ef1886df82b2              # double 1.620873
	.quad	0x3fe10e8858ff7597              # double 0.53302400000000005
	.quad	0x400976473471f794              # double 3.1827529999999999
	.quad	0x40108a1fd1569f49              # double 4.134887
	.quad	0x40185f2e48e8a71e              # double 6.0929500000000001
	.quad	0x3fcbeb6390c91080              # double 0.21812100000000001
	.quad	0x400e66b15f88fc93              # double 3.8001429999999998
	.quad	0x4023fca1272c94b4              # double 9.9934170000000008
	.quad	0x3ff264cb5bb384fd              # double 1.149608
	.quad	0x40231e162f166e01              # double 9.5587630000000007
	.quad	0x40143d1fe64f54d2              # double 5.0596920000000001
	.quad	0x3ffbcdd72367e415              # double 1.737754
	.quad	0x40132eed45e9185d              # double 4.7958270000000001
	.quad	0x3fe38f75536933a0              # double 0.61126199999999997
	.quad	0x4018fec95bff0457              # double 6.2488149999999996
	.quad	0x401ad069a4df47fa              # double 6.7035280000000004
	.quad	0x4020ace7ab756430              # double 8.3377049999999997
	.quad	0x4014c7eb6bf444e1              # double 5.1952340000000001
	.quad	0x401d65bc01a36e2f              # double 7.3493500000000003
	.quad	0x400257b6bb129025              # double 2.2928289999999998
	.quad	0x4021720ff540895d              # double 8.7227779999999999
	.quad	0x401cc26dce39b457              # double 7.1898720000000003
	.quad	0x401958c5004fb118              # double 6.3366889999999998
	.quad	0x3ffe9188f42fe825              # double 1.910531
	.quad	0x3fecf5ad96a6a012              # double 0.90498999999999996
	.quad	0x401a697dd00f776c              # double 6.6030189999999997
	.quad	0x401e31743e963dc5              # double 7.5482950000000004
	.quad	0x401732fd32c625ea              # double 5.7997940000000003
	.quad	0x401716f5019f3c71              # double 5.7724190000000002
	.quad	0x3ff0c113c68661ae              # double 1.0471379999999999
	.quad	0x40226403361565c3              # double 9.1953370000000003
	.quad	0x3ff478f9b13165d4              # double 1.2795350000000001
	.quad	0x400be82b62845996              # double 3.4883639999999998
	.quad	0x401fa2378ab0c88a              # double 7.9084149999999998
	.quad	0x3fc5455219a847b2              # double 0.16617799999999999
	.quad	0x400a6a76965f5276              # double 3.301984
	.quad	0x3ff1e6fd651b0ccc              # double 1.1188940000000001
	.quad	0x4016706290eed02d              # double 5.6097510000000002
	.quad	0x400127d5ed06fef8              # double 2.1444510000000001
	.quad	0x40209d02cd39da16              # double 8.3066619999999993
	.quad	0x402341f3c70c996b              # double 9.6288129999999991
	.quad	0x40238d529fe004b8              # double 9.776021
	.quad	0x40146e0c17657753              # double 5.1074679999999999
	.quad	0x400f5b4cc2507208              # double 3.9195799999999998
	.quad	0x40015ce8533b1077              # double 2.1703649999999999
	.quad	0x4016d19e731d2e0e              # double 5.7047059999999998
	.quad	0x401cc3a4723aafff              # double 7.1910569999999998
	.quad	0x401e8f861a60d456              # double 7.6401599999999998
	.quad	0x3ffdbfeb074a771d              # double 1.8593550000000001
	.quad	0x40238b29802c0a4a              # double 9.771801
	.quad	0x4022b96cc5fbf834              # double 9.3621580000000008
	.quad	0x3fd6682b62845996              # double 0.35010799999999997
	.quad	0x3ffcd234eb9a176e              # double 1.80132
	.quad	0x4005e9a133c1ce6c              # double 2.739077
	.quad	0x401e5c5d63886595              # double 7.5902000000000002
	.quad	0x401ea5492ff4ba52              # double 7.6614120000000003
	.quad	0x400b01a60d4562e1              # double 3.3758050000000002
	.quad	0x401c28eb463497b7              # double 7.0399599999999998
	.quad	0x4010e94f26aec072              # double 4.2278409999999997
	.quad	0x40131fe154434e33              # double 4.7811329999999996
	.quad	0x40210440af1cb89d              # double 8.5083059999999993
	.quad	0x400ab06a2b1704ff              # double 3.3361399999999999
	.quad	0x401359888f861a61              # double 4.8374350000000002
	.quad	0x40136ebe596c82e0              # double 4.8581479999999999
	.quad	0x4011d635610adcd3              # double 4.4591880000000002
	.quad	0x4013958d1526d8b2              # double 4.8960460000000001
	.quad	0x4009a8ca3e7d1351              # double 3.207417
	.quad	0x3fe33d987c6327ee              # double 0.60126900000000005
	.quad	0x40160a2b5a20ddc6              # double 5.5099309999999999
	.quad	0x3ff1ff3493858362              # double 1.124806
	.quad	0x4020b21ab4b72c52              # double 8.3478600000000007
	.quad	0x3ff8218def416bdb              # double 1.508192
	.quad	0x3ffffa7daa4fca43              # double 1.9986550000000001
	.quad	0x401841d3671ac14c              # double 6.0642829999999996
	.quad	0x40239ca01abd1aa8              # double 9.8059089999999997
	.quad	0x3fffefc2656abde4              # double 1.996035
	.quad	0x4021b63a7daa4fca              # double 8.8559149999999995
	.quad	0x401e429888f861a6              # double 7.565035
	.quad	0x401511c15097c808              # double 5.2673389999999998
	.quad	0x4023c13165d39970              # double 9.8773300000000006
	.quad	0x4023574b61fe21d9              # double 9.6704969999999992
	.quad	0x401ceecc3e3193f7              # double 7.2332010000000002
	.quad	0x402255b0dd82fd76              # double 9.1673650000000002
	.quad	0x3ff263ec02f2f987              # double 1.1493949999999999
	.quad	0x4020e1797cc39ffd              # double 8.4403799999999993
	.quad	0x40219db2f661f18d              # double 8.8080060000000007
	.quad	0x40230dfd2630ec31              # double 9.5273219999999998
	.quad	0x3fe3902de00d1b71              # double 0.61134999999999995
	.quad	0x4012f30a4e379b78              # double 4.7373440000000002
	.quad	0x3ff87d5cb790fb65              # double 1.5306059999999999
	.quad	0x3ff04997c3d68406              # double 1.0179670000000001
	.quad	0x401ecb3b7521144d              # double 7.6984690000000002
	.quad	0x4015b9ae4f3343fa              # double 5.4313289999999999
	.quad	0x4006aabbcb1cc964              # double 2.8333659999999998
	.quad	0x401add00b45ae600              # double 6.7158230000000003
	.quad	0x401f05ac03ff6901              # double 7.7555389999999997
	.quad	0x40202988f42fe825              # double 8.0811229999999998
	.quad	0x400db1654d61b2a2              # double 3.7116189999999998
	.quad	0x4021727ce0fc2eba              # double 8.7236089999999997
	.quad	0x3f8e47991bc55864              # double 0.014785
	.quad	0x3ffec950763a1901              # double 1.9241490000000001
	.quad	0x400618ae31d712a1              # double 2.762051
	.quad	0x3fdcecd8dbcec850              # double 0.45195600000000002
	.quad	0x4004af42fe82517e              # double 2.5855769999999998
	.quad	0x40165c061847f562              # double 5.5898669999999999
	.quad	0x40191b6b6e0d23d5              # double 6.2767770000000001
	.quad	0x40221b8561d4306e              # double 9.0537519999999994
	.quad	0x3fec78e9f6a93f29              # double 0.88976
	.quad	0x3ff239335d249e45              # double 1.138965
	.quad	0x402395992428d435              # double 9.7921840000000006
	.quad	0x400de28a1dfb938a              # double 3.7356150000000001
	.quad	0x3fd418a86d71f362              # double 0.31400499999999998
	.quad	0x40232c054ef459da              # double 9.5859780000000008
	.quad	0x40219bd188f42fe8              # double 8.8043329999999997
	.quad	0x3febced2cbea4ebe              # double 0.86899700000000002
	.quad	0x402258ea39c51dac              # double 9.1736620000000002
	.quad	0x400b171d1d4738a4              # double 3.3862860000000001
	.quad	0x4010fac1d29dc726              # double 4.2448800000000002
	.quad	0x4021ad64302b40f6              # double 8.8386549999999993
	.quad	0x401f9472c0e7bc3c              # double 7.8949689999999997
	.quad	0x4014bf71a7e30878              # double 5.1869569999999996
	.quad	0x401c563d3e4ef028              # double 7.0842179999999999
	.quad	0x3ffba0d77b7c7821              # double 1.7267680000000001
	.quad	0x4020753ef6b5d463              # double 8.2289960000000004
	.quad	0x4018aadbc664d3bf              # double 6.1668539999999998
	.quad	0x4010af4cb1897a68              # double 4.1711910000000003
	.quad	0x3ffb2a80064a9cdc              # double 1.6978759999999999
	.quad	0x40237629b6b2af14              # double 9.7307869999999994
	.quad	0x401edddf43c7d5ed              # double 7.7166719999999999
	.quad	0x3fcb14ec204f2ae0              # double 0.21157599999999999
	.quad	0x3fe61e59f2ba9d1f              # double 0.69120499999999996
	.quad	0x4007a8509bf9c62a              # double 2.957185
	.quad	0x4017f4ad794a6eb9              # double 5.9889429999999999
	.quad	0x40175020c49ba5e3              # double 5.8282499999999997
	.quad	0x40129da33bd9cae2              # double 4.6539429999999999
	.quad	0x3fdfda8bd230b9dc              # double 0.49771399999999999
	.quad	0x4016a42f1ed17c5f              # double 5.660336
	.quad	0x3ff7b126e978d4fe              # double 1.48075
	.quad	0x401b746e08f21709              # double 6.8637009999999998
	.quad	0x4015e1e2584f4c6e              # double 5.4705899999999996
	.quad	0x401d23acd5b6805a              # double 7.2848389999999998
	.quad	0x3ffa9ada76d97b31              # double 1.662806
	.quad	0x401de34b51372a39              # double 7.4719670000000002
	.quad	0x3ff9435efa615a8e              # double 1.578948
	.quad	0x400c7b2b3461309c              # double 3.5601409999999998
	.quad	0x401f2af78feef5ed              # double 7.7919600000000004
	.quad	0x401ad9fadafd1138              # double 6.7128709999999998
	.quad	0x401cf43c3a42f1ed              # double 7.2385109999999999
	.quad	0x40203987a4a48f97              # double 8.1123630000000002
	.quad	0x40156f4b61fe21d9              # double 5.3586859999999996
	.quad	0x4008a4f3343fa2ad              # double 3.0805419999999999
	.quad	0x401284a5df2239e7              # double 4.6295390000000003
	.quad	0x4002c6801711947d              # double 2.346924
	.quad	0x401eb51efb6dca08              # double 7.676876
	.quad	0x3fff20008637bd06              # double 1.9453130000000001
	.quad	0x4004163a19008206              # double 2.510853
	.quad	0x4020ff0e90bc7b46              # double 8.4981580000000001
	.quad	0x400256deb95e5aff              # double 2.2924169999999999
	.quad	0x401d46dfc5cdd50b              # double 7.3192130000000004
	.quad	0x4021b6d3f9e7b80b              # double 8.8570860000000007
	.quad	0x40193b9f559b3d08              # double 6.3082250000000002
	.quad	0x401000f733a8a3f9              # double 4.0009430000000004
	.quad	0x4016654c122749f1              # double 5.5989230000000001
	.quad	0x4020271e4b44a1f1              # double 8.0764030000000009
	.quad	0x400645d18090b418              # double 2.7840910000000001
	.quad	0x4023f97e56473472              # double 9.9872920000000001
	.quad	0x401a6e0eb67c2870              # double 6.6074780000000004
	.quad	0x3fc626dce39b456b              # double 0.17306099999999999
	.quad	0x400e96ec5b078d93              # double 3.823693
	.quad	0x40138372e6a76966              # double 4.878368
	.quad	0x402240b97785729b              # double 9.1264149999999997
	.quad	0x4023f95ce9e5e248              # double 9.9870370000000008
	.quad	0x4022f3686a4ca4f4              # double 9.4754059999999995
	.quad	0x400a577ea1c68ec5              # double 3.2927219999999999
	.quad	0x401ab51116a8b8f1              # double 6.6768229999999997
	.quad	0x402314a57a786c22              # double 9.5403249999999993
	.quad	0x401b9c7820a30db7              # double 6.9028020000000003
	.quad	0x4018da3400b88ca4              # double 6.2130890000000001
	.quad	0x4021881d3aa369fd              # double 8.7658480000000001
	.quad	0x401dc3d0bfa09460              # double 7.4412260000000003
	.quad	0x401c62339c0ebee0              # double 7.0959000000000003
	.quad	0x401cc47021d10b20              # double 7.1918340000000001
	.quad	0x4023e2ccb3a2595c              # double 9.9429680000000004
	.quad	0x401abf2cf95d4e90              # double 6.6866950000000003
	.quad	0x4011e605681ecd4b              # double 4.4746300000000003
	.quad	0x400f85269595feda              # double 3.9400149999999998
	.quad	0x4012a00ffda4052d              # double 4.6563109999999996
	.quad	0x4002ba187a4a48f9              # double 2.3408669999999998
	.quad	0x402277ad080b673c              # double 9.2337419999999994
	.quad	0x401a1a686e7e62dc              # double 6.5257889999999996
	.quad	0x402193f22c01e68a              # double 8.7889569999999999
	.quad	0x40136533b1077469              # double 4.8488300000000004
	.quad	0x40125f62f9ca5bd9              # double 4.5931509999999998
	.quad	0x400a3b5a63f9a49c              # double 3.2789809999999999
	.quad	0x3fea5e8f6cefed63              # double 0.82404299999999997
	.quad	0x4014b33b5393250b              # double 5.1750309999999997
	.quad	0x402182c42e9899bf              # double 8.7554029999999994
	.quad	0x401203dddb1209ee              # double 4.5037760000000002
	.quad	0x40125c93ea2d2fe4              # double 4.590408
	.quad	0x4022985db76b3bb8              # double 9.2975899999999995
	.quad	0x4021a21c68ec52a4              # double 8.8166229999999998
	.quad	0x4014816616b54e2b              # double 5.126366
	.quad	0x402223cf91a32b13              # double 9.0699430000000003
	.quad	0x40217e21b7e0ac7e              # double 8.7463510000000007
	.quad	0x40073e69ad42c3ca              # double 2.905475
	.quad	0x402294fc1df3300e              # double 9.2909860000000002
	.quad	0x401248644523f67f              # double 4.5706949999999997
	.quad	0x400402d0e5604189              # double 2.5013749999999999
	.quad	0x4006d21f6cacd185              # double 2.8525990000000001
	.quad	0x40137f1172ef0ae5              # double 4.8740899999999998
	.quad	0x40149f533f42352f              # double 5.1555910000000003
	.quad	0x4023a88e368f0846              # double 9.8292099999999998
	.quad	0x40184d5e8d5410f9              # double 6.0755559999999997
	.quad	0x40204f5d35653c9b              # double 8.1550080000000005
	.quad	0x401a602a77a2cecd              # double 6.5939120000000004
	.quad	0x401d869fcf3dc055              # double 7.3814690000000001
	.quad	0x401ddd601ffb480a              # double 7.4661869999999997
	.quad	0x3ffdf5a964e8b7e5              # double 1.872476
	.quad	0x400721693c03bc4d              # double 2.8913139999999999
	.quad	0x401db2599ed7c6fc              # double 7.4241700000000002
	.quad	0x401a17b139c94f6a              # double 6.5231370000000002
	.quad	0x3ff85b0ee49f5169              # double 1.5222309999999999
	.quad	0x3ff547724fa8b4c0              # double 1.3299430000000001
	.quad	0x3f9a5d28d002e233              # double 0.025746000000000002
	.quad	0x401dffc5479d4d83              # double 7.4997759999999997
	.quad	0x400ac16052502eec              # double 3.3444219999999998
	.quad	0x40137d887ebf22c0              # double 4.8725909999999999
	.quad	0x401dd2dc6e2a8006              # double 7.4559189999999997
	.quad	0x4014355bccaf709b              # double 5.0521079999999996
	.quad	0x401e68d1958969a1              # double 7.6023620000000002
	.quad	0x4002ada87a072d1b              # double 2.334794
	.quad	0x3fbb9f98b71b8aa0              # double 0.107904
	.quad	0x4003645ed4a1ad64              # double 2.4240089999999999
	.quad	0x4001889dadfb506e              # double 2.1917070000000001
	.quad	0x4003aacfb762d83c              # double 2.4584039999999998
	.quad	0x401c4597d49d7ba6              # double 7.0679619999999996
	.quad	0x3fcc4abe6a337a81              # double 0.22103100000000001
	.quad	0x4017f054ac29bf16              # double 5.9846979999999999
	.quad	0x3ffa586ec17ebaf1              # double 1.64659
	.quad	0x401ecdcf4623d0c0              # double 7.7009860000000003
	.quad	0x4014b4f7ec3547e0              # double 5.1767269999999996
	.quad	0x3fde6cb5350092cd              # double 0.475385
	.quad	0x401fff3f961804da              # double 7.9992660000000004
	.quad	0x3ff7ecde19fc2a88              # double 1.4953289999999999
	.quad	0x4017a259e1f3a57f              # double 5.9085460000000003
	.quad	0x3ff3e36f3b213e3e              # double 1.243026
	.quad	0x401e65432873bc90              # double 7.5988889999999998
	.quad	0x40126d6238da3c21              # double 4.6068199999999999
	.quad	0x4017498f1d3ed528              # double 5.8218350000000001
	.quad	0x4021bb80ecfa69be              # double 8.8662179999999999
	.quad	0x401ceaae297396d1              # double 7.2291800000000004
	.quad	0x4012e23f67f4dbe0              # double 4.7209450000000004
	.quad	0x4001c75a31a4bdba              # double 2.22234
	.quad	0x4016edc22ab25b31              # double 5.7321859999999996
	.quad	0x3ff013b5bf6a0dbb              # double 1.004812
	.quad	0x400418c436fc1590              # double 2.5120930000000001
	.quad	0x401696b4c7f34938              # double 5.6471739999999997
	.quad	0x40106fcd24e160d9              # double 4.1091810000000004
	.quad	0x3ffa2e8af81626b3              # double 1.636363
	.quad	0x40212d0a67620ee9              # double 8.5879700000000003
	.quad	0x4004e979e16d6dc2              # double 2.6140020000000002
	.quad	0x401363ef284167a9              # double 4.8475919999999997
	.quad	0x4009d6616b54e2b0              # double 3.2296779999999998
	.quad	0x401d125f633ce63a              # double 7.2679419999999997
	.quad	0x401751f03d145d85              # double 5.8300179999999999
	.quad	0x401ca21dda059a74              # double 7.1583170000000003
	.quad	0x4019dc5479d4d834              # double 6.465166
	.quad	0x4020fb0f6ad70e6f              # double 8.4903519999999997
	.quad	0x400a6253111f0c35              # double 3.2980100000000001
	.quad	0x401f542917507e9e              # double 7.8321880000000004
	.quad	0x401be940789613d3              # double 6.9777849999999999
	.quad	0x401520c282c6ef3d              # double 5.2819919999999998
	.quad	0x4021e408fa7a8501              # double 8.9453809999999994
	.quad	0x401561682f944242              # double 5.3451240000000002
	.quad	0x400e787160956c0d              # double 3.8088099999999998
	.quad	0x40195f5c6c11a112              # double 6.3431259999999998
	.quad	0x40089097c80841ee              # double 3.0706020000000001
	.quad	0x4018f137f38c5437              # double 6.2355650000000002
	.quad	0x401894a4095f2453              # double 6.1451570000000002
	.quad	0x40078386d2ed783e              # double 2.939222
	.quad	0x401c68e2e2b8c75c              # double 7.1024279999999997
	.quad	0x4005637154003255              # double 2.673556
	.quad	0x401ca3b46fdeb52d              # double 7.1598680000000003
	.quad	0x401755410f94c87a              # double 5.8332560000000004
	.quad	0x3f92edfe75bc44bf              # double 0.018485999999999999
	.quad	0x40215a25d8d79d0a              # double 8.6760699999999993
	.quad	0x4018d036c9c0a8d2              # double 6.2033339999999999
	.quad	0x40201a415f45e0b5              # double 8.0512800000000002
	.quad	0x4018922ea0fd3b2a              # double 6.1427560000000003
	.quad	0x4012b2c5197a2489              # double 4.6745799999999997
	.quad	0x40218811f4f50a03              # double 8.7657620000000005
	.quad	0x401958943e100608              # double 6.3365030000000004
	.quad	0x401f98e60807357e              # double 7.8993149999999996
	.quad	0x40225ae1693c03bc              # double 9.1775009999999994
	.quad	0x401bf405b39e279e              # double 6.9883030000000002
	.quad	0x401d6093532e7b3e              # double 7.3443120000000004
	.quad	0x4008b4a66559f6ec              # double 3.0882079999999998
	.quad	0x4020003eea209aaa              # double 8.0004799999999996
	.quad	0x4009f34bd76ee73e              # double 3.2437969999999998
	.quad	0x401723a81dc0db27              # double 5.784821
	.quad	0x3ff0234dad31fcd2              # double 1.0086189999999999
	.quad	0x4022c671cda2b5a2              # double 9.3875869999999999
	.quad	0x3ffce0a63305100a              # double 1.804846
	.quad	0x3ffc471c53f39d1b              # double 1.767361
	.quad	0x3fe038f57f737da6              # double 0.50695299999999999
	.quad	0x4012275e6362a5e8              # double 4.5384460000000004
	.quad	0x4015a532a497fa5d              # double 5.4113259999999999
	.quad	0x4019b45cfede97d0              # double 6.4261359999999996
	.quad	0x4021dbce8533b107              # double 8.9293099999999992
	.quad	0x3fd15ab3aabcd78c              # double 0.27116099999999999
	.quad	0x3fbb29d40ee06d94              # double 0.10610700000000001
	.quad	0x40000ab606b7aa26              # double 2.0052300000000001
	.quad	0x4004af227d028a1e              # double 2.585515
	.quad	0x40233943bf727137              # double 9.6118450000000006
	.quad	0x3fe21ea57214f052              # double 0.56624099999999999
	.quad	0x401e9b4202d9cf14              # double 7.6516190000000002
	.quad	0x4002e784230fcf81              # double 2.3630450000000001
	.quad	0x4021d05c03361566              # double 8.9069520000000004
	.quad	0x3ff8dd4d834091c1              # double 1.5540290000000001
	.quad	0x401d6a437824d4cc              # double 7.3537730000000003
	.quad	0x40226f5ddd2ae8e2              # double 9.2175130000000003
	.quad	0x40065496249a133c              # double 2.7913019999999999
	.quad	0x400353c68661ae71              # double 2.4159060000000001
	.quad	0x3ff8ccb6c7a7c9de              # double 1.549979
	.quad	0x40026f4491298890              # double 2.3043300000000002
	.quad	0x4021dc6b484d76ab              # double 8.9305059999999994
	.quad	0x40221c0bbb1f255f              # double 9.0547769999999996
	.quad	0x4021c10f733a8a40              # double 8.8770710000000008
	.quad	0x4011a784a9478c87              # double 4.4135920000000004
	.quad	0x40191e2328f9f44d              # double 6.2794309999999998
	.quad	0x4015127fe4bcad9b              # double 5.2680660000000001
	.quad	0x402027ee0b0af5fd              # double 8.0779879999999995
	.quad	0x40154b634dad31fd              # double 5.3236210000000002
	.quad	0x4003c9731098d478              # double 2.4733640000000001
	.quad	0x4022b7ae147ae148              # double 9.3587500000000005
	.quad	0x401300a2014727dd              # double 4.7506180000000002
	.quad	0x3ff405a921ccd962              # double 1.251382
	.quad	0x40219e1ef73c0c20              # double 8.8088300000000004
	.quad	0x40216d7fd82773e2              # double 8.7138659999999994
	.quad	0x40112dd3fe1975f3              # double 4.2947540000000002
	.quad	0x401b8b723ee1bd1f              # double 6.8861780000000001
	.quad	0x402330c67168f8e8              # double 9.5952640000000002
	.quad	0x4015b393ee5eedcc              # double 5.4253689999999999
	.quad	0x3ff160bb2bba98ee              # double 1.0861160000000001
	.quad	0x3fbb4f82f5126634              # double 0.106682
	.quad	0x401bb65d7cb2d906              # double 6.9280910000000002
	.quad	0x400208711d798d8b              # double 2.2541220000000002
	.quad	0x4021280cd855970b              # double 8.5782229999999995
	.quad	0x402115718eb89507              # double 8.5418819999999993
	.quad	0x4010c43a647fdc59              # double 4.1916289999999998
	.quad	0x4010ec7e6b3fe9fb              # double 4.2309510000000001
	.quad	0x4022164883fd5022              # double 9.0435219999999994
	.quad	0x402150cc35ce1826              # double 8.6578079999999993
	.quad	0x4011c176ddaceee1              # double 4.43893
	.quad	0x401fa58ab92c0618              # double 7.9116619999999997
	.quad	0x3fec4b4d056c508b              # double 0.88419199999999998
	.quad	0x3fde85d744f5d356              # double 0.47691899999999998
	.quad	0x401ab98244e93e1d              # double 6.6811610000000003
	.quad	0x40151d2b6f19934f              # double 5.278486
	.quad	0x401b7266772d5e07              # double 6.8617189999999999
	.quad	0x40164760bf5d7881              # double 5.5697049999999999
	.quad	0x400ef9c8c9320d99              # double 3.8719649999999999
	.quad	0x401d5761cbccf28c              # double 7.3353339999999996
	.quad	0x4002774e65bea0ba              # double 2.3082549999999999
	.quad	0x401b41a6937d1fe6              # double 6.8141119999999997
	.quad	0x401b4c9795b35b0c              # double 6.8247970000000002
	.quad	0x401aed1351159c49              # double 6.7315189999999996
	.quad	0x4014820ab7132724              # double 5.1269939999999998
	.quad	0x40034ab0c88a47ed              # double 2.41147
	.quad	0x3feb74fd6d7e889c              # double 0.85803099999999998
	.quad	0x401c386ca89fc6da              # double 7.0551019999999998
	.quad	0x3fef4399b2c40d0b              # double 0.97700200000000003
	.quad	0x402212b8a5ce5b42              # double 9.0365649999999995
	.quad	0x40235335d249e450              # double 9.6625200000000007
	.quad	0x4023725870da5daf              # double 9.7233309999999999
	.quad	0x40210c488c60cbf3              # double 8.5239910000000005
	.quad	0x4022149f72f76e61              # double 9.040279
	.quad	0x401aa85b18548a9c              # double 6.6644100000000002
	.quad	0x401765379fa97e13              # double 5.8488449999999998
	.quad	0x3fe5d8f7121ab4b7              # double 0.68273499999999998
	.quad	0x402155907d912557              # double 8.6671180000000003
	.quad	0x401a8c6b05319829              # double 6.6371270000000004
	.quad	0x402275aee631f8a1              # double 9.2298500000000008
	.quad	0x3ff0328f9f44d445              # double 1.0123439999999999
	.quad	0x401cc601797cc3a0              # double 7.193365
	.quad	0x4022c06af46aa088              # double 9.3758160000000003
	.quad	0x3fe6a76fb09203a3              # double 0.70793899999999998
	.quad	0x4020324d4cb9ecf6              # double 8.0982459999999996
	.quad	0x4006c750c1b97354              # double 2.8473220000000001
	.quad	0x4018bcfc829cfdd2              # double 6.1845569999999999
	.quad	0x3fb85931ca7d6734              # double 0.095111000000000001
	.quad	0x401a4c69728a6117              # double 6.5746209999999996
	.quad	0x4015fbf8fcd67fd4              # double 5.496067
	.quad	0x4016f68c26139000              # double 5.7407690000000002
	.quad	0x4023f717bd8be729              # double 9.9826029999999992
	.quad	0x3ffdd6f6512a94ff              # double 1.864981
	.quad	0x40011fda4052d667              # double 2.1405530000000002
	.quad	0x400a11676640a6b9              # double 3.2584979999999999
	.quad	0x40076767d34df04e              # double 2.9254910000000001
	.quad	0x3ff3d74c4cdfaca3              # double 1.2400629999999999
	.quad	0x401c50a782906898              # double 7.0787639999999996
	.quad	0x4011b2db61bb05fb              # double 4.4246650000000001
	.quad	0x400779c4113c6866              # double 2.934456
	.quad	0x3fe6dcd0bb6ed677              # double 0.71445499999999995
	.quad	0x4022fc87b99d4520              # double 9.4932230000000004
	.quad	0x401f18cac4b4d057              # double 7.7742110000000002
	.quad	0x400661a36e2eb1c4              # double 2.7976749999999999
	.quad	0x402342702a3486f0              # double 9.6297619999999995
	.quad	0x4017467620ee8d11              # double 5.81881
	.quad	0x400b164a59c065b6              # double 3.3858839999999999
	.quad	0x40204b3a2595bbbf              # double 8.1469280000000008
	.quad	0x4019f53dea465a57              # double 6.4894939999999997
	.quad	0x401ae06034f3fd93              # double 6.7191169999999998
	.quad	0x401950a958537e2c              # double 6.3287709999999997
	.quad	0x40103d245b291b82              # double 4.0597089999999998
	.quad	0x401e97f349385836              # double 7.6483889999999999
	.quad	0x400466ee30caa327              # double 2.5502590000000001
	.quad	0x400d6281ba7fc32f              # double 3.6730990000000001
	.quad	0x400382036006d0d5              # double 2.4384830000000002
	.quad	0x40170eac42e9899c              # double 5.764329
	.quad	0x40233b9b024f6599              # double 9.6164170000000002
	.quad	0x400f62f48c2e770c              # double 3.9233180000000001
	.quad	0x40173c5e6ff7dfa0              # double 5.808954
	.quad	0x3fdf020817fc7608              # double 0.48449900000000001
	.quad	0x40208c97d8cf398f              # double 8.2745960000000007
	.quad	0x3ff4ac58eeae9ee4              # double 1.2920769999999999
	.quad	0x401c4caa326e1156              # double 7.0748680000000004
	.quad	0x400cc4b662fdfc1a              # double 3.5960510000000001
	.quad	0x4016495810624dd3              # double 5.571625
	.quad	0x4020f6bf01322f27              # double 8.4819259999999996
	.quad	0x4018cadb8348f53c              # double 6.1981029999999997
	.quad	0x3ff3e7e9531550ca              # double 1.244119
	.quad	0x4018f848beb5b2d5              # double 6.2424650000000002
	.quad	0x400b368837718655              # double 3.401627
	.quad	0x401f30fd3b29a1ba              # double 7.797841
	.quad	0x4020dfeda6612839              # double 8.43736
	.quad	0x4005b22c01e68a0d              # double 2.7119979999999999
	.quad	0x3ff796ebd4cfd08d              # double 1.4743459999999999
	.quad	0x400d0d77b7c7820a              # double 3.6315759999999999
	.quad	0x402171fc8f32378b              # double 8.7226300000000005
	.quad	0x4023ed818c5c9a35              # double 9.9638790000000003
	.quad	0x3ff36ea4228997c4              # double 1.214512
	.quad	0x401c7220ff540896              # double 7.1114540000000002
	.quad	0x40203abc2fc69729              # double 8.1147170000000006
	.quad	0x40133b69db65ecc4              # double 4.8080210000000001
	.quad	0x401365a20ddc6195              # double 4.8492509999999998
	.quad	0x401b1a0620ab7132              # double 6.7754139999999996
	.quad	0x4021c18372e6a769              # double 8.8779559999999993
	.quad	0x3fdbad3e920c069e              # double 0.43244899999999997
	.quad	0x4018762c77574f72              # double 6.1154039999999998
	.quad	0x4023382a77a2cecd              # double 9.6096990000000008
	.quad	0x400b859a73b42cc3              # double 3.4402360000000001
	.quad	0x4023da305532617c              # double 9.9261499999999998
	.quad	0x400468826aa8eb46              # double 2.5510299999999999
	.quad	0x3fe372fdb8fde2ef              # double 0.60778699999999997
	.quad	0x40232cfb1183b603              # double 9.5878530000000008
	.quad	0x400db758e219652c              # double 3.7145250000000001
	.quad	0x401d2089e34330d7              # double 7.2817759999999998
	.quad	0x4020a16a48733659              # double 8.3152640000000009
	.quad	0x3febb862b27cbf6e              # double 0.86625799999999997
	.quad	0x3fe8531fcd24e161              # double 0.76014700000000002
	.quad	0x401ad3c03bc4d22d              # double 6.7067880000000004
	.quad	0x40001c7820a30db7              # double 2.0139010000000002
	.quad	0x3ff46a582dbe7f2c              # double 1.275963
	.quad	0x4004c254a3c64346              # double 2.5948880000000001
	.quad	0x3ff101fb82c2bd7f              # double 1.0629839999999999
	.quad	0x4014ff5cf2495e18              # double 5.2493780000000001
	.quad	0x40225e9d51b4fe7a              # double 9.1847940000000001
	.quad	0x4020e2d0c3d25248              # double 8.4429990000000004
	.quad	0x40102ccb7d41743f              # double 4.0437450000000004
	.quad	0x4008f5568e820e63              # double 3.1197940000000002
	.quad	0x400e4853c148344c              # double 3.7853159999999999
	.quad	0x4002653b0813cab8              # double 2.2994289999999999
	.quad	0x400d4bd556084a51              # double 3.6620279999999998
	.quad	0x401879d12cadddf4              # double 6.1189619999999998
	.quad	0x400dac9539b88872              # double 3.7092689999999999
	.quad	0x4023e62c98e53eb4              # double 9.9495590000000007
	.quad	0x400891de69ad42c4              # double 3.0712250000000001
	.quad	0x40118804534bd76f              # double 4.3828290000000001
	.quad	0x40219084a515ce9e              # double 8.7822619999999993
	.quad	0x4018e65a9a804966              # double 6.2249549999999996
	.quad	0x401a2f7fcfc3f812              # double 6.546386
	.quad	0x40177c1376d54973              # double 5.8711679999999999
	.quad	0x3ffbef23033a4724              # double 1.7458830000000001
	.quad	0x4011e20ab7132724              # double 4.4707439999999998
	.quad	0x4014fea140570825              # double 5.2486620000000004
	.quad	0x400e3bb40b34e768              # double 3.7791519999999998
	.quad	0x400d84edf6124074              # double 3.6899069999999998
	.quad	0x401c11fb82c2bd7f              # double 7.0175609999999997
	.quad	0x4020548cd63cb817              # double 8.1651369999999996
	.quad	0x3fe8fe23f24d8fd6              # double 0.78102300000000002
	.quad	0x4020174cd31769a9              # double 8.0455079999999999
	.quad	0x3fe871886df82b1f              # double 0.76385899999999995
	.quad	0x401fee28240b7803              # double 7.9825749999999997
	.quad	0x400e750ebaade658              # double 3.8071570000000001
	.quad	0x401bc6d612c6ac21              # double 6.9441759999999997
	.quad	0x40090e9707182236              # double 3.1321240000000001
	.quad	0x4022ad3ac4f7ec35              # double 9.3383389999999995
	.quad	0x3fdb23cc8de2ac32              # double 0.42405999999999999
	.quad	0x4020023ee1bd1eda              # double 8.0043860000000002
	.quad	0x401e758f2e05ccc9              # double 7.6148040000000003
	.quad	0x4015110f0e90bc7b              # double 5.2666589999999998
	.quad	0x3fc450a45d41fa76              # double 0.15871099999999999
	.quad	0x40227b673c4f3ba7              # double 9.2410219999999992
	.quad	0x401a53bafd976ff4              # double 6.5817680000000003
	.quad	0x400072fe3f359ff5              # double 2.056149
	.quad	0x3fcd4d940789613d              # double 0.22892999999999999
	.quad	0x4018c2c7b890d5a6              # double 6.1902150000000002
	.quad	0x400b439f77292c49              # double 3.4080189999999999
	.quad	0x3ffb4766c6de7642              # double 1.7049319999999999
	.quad	0x4007d8537e2c55c9              # double 2.9806279999999998
	.quad	0x400fe1e9af5ba2be              # double 3.985309
	.quad	0x401958027d88c1db              # double 6.335947
	.quad	0x401bc840181e03f7              # double 6.945557
	.quad	0x401434f26aec0725              # double 5.0517060000000003
	.quad	0x3fbbc4c165907d91              # double 0.108471
	.quad	0x4022bc9adc8fb86f              # double 9.3683689999999995
	.quad	0x40218ceb356da017              # double 8.7752320000000008
	.quad	0x4005e3a6ce358299              # double 2.7361580000000001
	.quad	0x3ff613005814940c              # double 1.3796390000000001
	.quad	0x400858023a6ce358              # double 3.0429729999999999
	.quad	0x4004818c5c9a34ca              # double 2.563256
	.quad	0x3ffb4f5e41d4b6a6              # double 1.706877
	.quad	0x4022d44e50c5eb31              # double 9.4146599999999995
	.quad	0x4015934d6a161e4f              # double 5.3938499999999996
	.quad	0x4014c45dc8323359              # double 5.191764
	.quad	0x40047b6dca07f66f              # double 2.5602680000000002
	.quad	0x3fee4faacd9e83e4              # double 0.94722499999999998
	.quad	0x401f925e99e94ab2              # double 7.8929390000000001
	.quad	0x4015a96a6a01259a              # double 5.4154450000000001
	.quad	0x40140e1650a45d42              # double 5.013757
	.quad	0x3fe32c0e7bc3c5bd              # double 0.59912799999999999
	.quad	0x3fd0821294573a79              # double 0.25793899999999997
	.quad	0x4023c7f69014b59a              # double 9.8905530000000006
	.quad	0x3feef7681669ced1              # double 0.96770100000000003
	.quad	0x40218536d655e28b              # double 8.7601840000000006
	.quad	0x3fe4badc0980b242              # double 0.64781
	.quad	0x401f345f9df548ed              # double 7.8011460000000001
	.quad	0x4021628954a7f801              # double 8.6924539999999997
	.quad	0x4005bc58ab92c062              # double 2.7169660000000002
	.quad	0x402048e820e62995              # double 8.1423959999999997
	.quad	0x401b61e75360d024              # double 6.8456089999999996
	.quad	0x401acabb01c92ddc              # double 6.6979790000000001
	.quad	0x4022022339c0ebee              # double 9.004175
	.quad	0x4022def976790321              # double 9.4354969999999998
	.quad	0x401e523b7952d235              # double 7.580305
	.quad	0x4005510667f90d9d              # double 2.6645629999999998
	.quad	0x4003fa3b9ae0c176              # double 2.4971839999999998
	.quad	0x401a28f5c28f5c29              # double 6.54
	.quad	0x4020d4486ad2dcb1              # double 8.4146149999999995
	.quad	0x4013ac714fce746d              # double 4.9184010000000002
	.quad	0x4017fe63e8dda48b              # double 5.9984279999999996
	.quad	0x40226674afd54541              # double 9.2001089999999994
	.quad	0x3fca0724b76f6d76              # double 0.203343
	.quad	0x3fe15ae3e6c4c597              # double 0.54234499999999997
	.quad	0x402163e468cac4b5              # double 8.6951020000000003
	.quad	0x402384d013a92a30              # double 9.7593999999999994
	.quad	0x4016e9578a2a90cd              # double 5.7278729999999998
	.quad	0x3fca3f67f4dbdf8f              # double 0.20505999999999999
	.quad	0x40228ffcb923a29c              # double 9.2812249999999991
	.quad	0x401bad45e9185cee              # double 6.9192119999999999
	.quad	0x3fec39496249a134              # double 0.88199300000000002
	.quad	0x40219fc30d306a2b              # double 8.8120349999999998
	.quad	0x4014307dd4413554              # double 5.0473549999999996
	.quad	0x4012dc0ce91c8eac              # double 4.714893
	.quad	0x3ff60def416bdb1a              # double 1.3784019999999999
	.quad	0x4005903f2d3c792d              # double 2.695433
	.quad	0x3fb6d7518b0d0edc              # double 0.089222999999999997
	.quad	0x40184f44d4456712              # double 6.0774109999999997
	.quad	0x3fe5b0e7ff583a54              # double 0.67784500000000003
	.quad	0x400673ba775fb2ee              # double 2.806508
	.quad	0x401b3974e65bea0c              # double 6.8061100000000003
	.quad	0x401a2f7a0b5ed8d3              # double 6.5463639999999996
	.quad	0x40111a369fcf3dc0              # double 4.2755989999999997
	.quad	0x4018b9f77292c493              # double 6.1816079999999998
	.quad	0x40106394b7b28955              # double 4.0972470000000003
	.quad	0x4021ff6e6106ab15              # double 8.9988890000000001
	.quad	0x4003c5e80bed740c              # double 2.4716339999999999
	.quad	0x4023bd5cb790fb65              # double 9.8698479999999992
	.quad	0x40156344c37e6f72              # double 5.3469420000000003
	.quad	0x40232dbf6a0dbad4              # double 9.5893510000000006
	.quad	0x40206427e9531551              # double 8.1956170000000004
	.quad	0x4012fe2e6ea85447              # double 4.7482239999999996
	.quad	0x40204aa8a82a5615              # double 8.1458180000000002
	.quad	0x40198de7ea5f84cb              # double 6.3885800000000001
	.quad	0x3ff94e9b38d60a63              # double 1.581691
	.quad	0x40189bb906466b1e              # double 6.1520729999999997
	.quad	0x40237463f141205c              # double 9.7273250000000004
	.quad	0x40217068123810e9              # double 8.7195440000000008
	.quad	0x4014fbe37de939eb              # double 5.2459850000000001
	.quad	0x401c46de76427c7c              # double 7.0692079999999997
	.quad	0x3f4c044284dfce31              # double 8.5499999999999996E-4
	.quad	0x40001eadd590c0ad              # double 2.01498
	.quad	0x3ff6408fa7a85016              # double 1.3907620000000001
	.quad	0x40227173d9ec7000              # double 9.2215869999999995
	.quad	0x401493161a1db878              # double 5.1436390000000003
	.quad	0x3fe369856a37ac3f              # double 0.60663100000000003
	.quad	0x4022758f92af9a8d              # double 9.2296110000000002
	.quad	0x3fe17ec13b9f127f              # double 0.54672299999999996
	.quad	0x401244185058dde8              # double 4.5664990000000003
	.quad	0x3fe66fa615a8deb1              # double 0.701129
	.quad	0x4002bc2a8869c66d              # double 2.3418779999999999
	.quad	0x4021bb0a915379fb              # double 8.8653150000000007
	.quad	0x3ffb51904b3c3e75              # double 1.7074130000000001
	.quad	0x4022f01d9f4d37c1              # double 9.4689759999999996
	.quad	0x4023c1d66adb402d              # double 9.8785889999999998
	.quad	0x402158cf398e9707              # double 8.6734559999999998
	.quad	0x3ff2fd08d4bad7d8              # double 1.1867760000000001
	.quad	0x3ff688e9b38d60a6              # double 1.408426
	.quad	0x4011b04790b84988              # double 4.422148
	.quad	0x402316b76709fa55              # double 9.5443680000000004
	.quad	0x3facfd08d4bad7d8              # double 0.056618000000000002
	.quad	0x40054f345069a4df              # double 2.6636739999999999
	.quad	0x3feb520f2becedd5              # double 0.85376700000000005
	.quad	0x4013014f483cafb4              # double 4.7512790000000003
	.quad	0x40231845996744b3              # double 9.5474060000000005
	.quad	0x4014bb6b6e0d23d5              # double 5.1830270000000001
	.quad	0x401724b6a619da9d              # double 5.7858530000000004
	.quad	0x4012a7ccc0379314              # double 4.6638669999999998
	.quad	0x3ffde3ae2541d8e8              # double 1.8680859999999999
	.quad	0x400a0f42fe82517e              # double 3.2574519999999998
	.quad	0x402023cec84f8f8a              # double 8.0699369999999995
	.quad	0x402182d8c2a454de              # double 8.7555599999999991
	.quad	0x4020e68a50507a6c              # double 8.4502740000000002
	.quad	0x401ec4ba51a005c4              # double 7.6921169999999996
	.quad	0x40007ff7164c729f              # double 2.0624829999999998
	.quad	0x4020da49e44fa051              # double 8.4263449999999995
	.quad	0x401d27c5260f5e42              # double 7.2888380000000002
	.quad	0x4021ba70f3882279              # double 8.8641430000000003
	.quad	0x401a46848beb5b2d              # double 6.5688649999999997
	.quad	0x3ff74789613d31ba              # double 1.4549650000000001
	.quad	0x4019c16ebd4cfd09              # double 6.4388990000000002
	.quad	0x401e2c4b4d056c51              # double 7.5432560000000004
	.quad	0x4023b281dc0db270              # double 9.8486469999999997
	.quad	0x4022554801f75105              # double 9.1665650000000003
	.quad	0x4005a5add9c27e95              # double 2.7058979999999999
	.quad	0x4023779207d4e098              # double 9.7335360000000008
	.quad	0x400914245f5ad96a              # double 3.1348349999999998
	.quad	0x4022c2e536501e26              # double 9.3806550000000009
	.quad	0x40090f1cb89d6adf              # double 3.1323789999999998
	.quad	0x401a32934acaff6d              # double 6.5493899999999998
	.quad	0x400214f483cafb3b              # double 2.2602319999999998
	.quad	0x40093190d173fb7a              # double 3.1492019999999998
	.quad	0x4022b9426fe718a8              # double 9.3618349999999992
	.quad	0x40146b178b370047              # double 5.1045819999999997
	.quad	0x3fe74b9a9da597d5              # double 0.72797900000000004
	.quad	0x400b4ab92c061848              # double 3.411486
	.quad	0x3fee1b75a74c09c4              # double 0.94085200000000002
	.quad	0x3fedadf71eafee70              # double 0.92748600000000003
	.quad	0x4001b71e29b6b2af              # double 2.214413
	.quad	0x400b2a9ef5232d2c              # double 3.3958110000000001
	.quad	0x401be2745bf26f1e              # double 6.9711470000000002
	.quad	0x4008fcb9a9da597d              # double 3.1234009999999999
	.quad	0x40024e746cb966be              # double 2.2883079999999998
	.quad	0x3fe347219220ff54              # double 0.602433
	.quad	0x40089635e74299d9              # double 3.0733450000000002
	.quad	0x4010540420f6f08d              # double 4.0820470000000002
	.quad	0x40189512231832fd              # double 6.1455770000000003
	.quad	0x4016c45996744b2b              # double 5.6917479999999996
	.quad	0x4006c183f91e646f              # double 2.84449
	.quad	0x40153616b54e2b06              # double 5.3028209999999998
	.quad	0x4009ec0c62e4d1a6              # double 3.2402579999999999
	.quad	0x401f6fab53d640ea              # double 7.8590520000000001
	.quad	0x4017aa7f3cf70154              # double 5.9165010000000002
	.quad	0x401fad7f51efb6dd              # double 7.9194310000000003
	.quad	0x3ff1750e34762952              # double 1.091078
	.quad	0x4023d9abb01c92de              # double 9.9251380000000005
	.quad	0x400625c810a569b1              # double 2.7684479999999998
	.quad	0x3ff78a0c282c6ef4              # double 1.471203
	.quad	0x3ffdc5fbf83382e4              # double 1.8608359999999999
	.quad	0x401d0cb295e9e1b1              # double 7.2624000000000004
	.quad	0x401f4f0f9d2bf551              # double 7.8272079999999997
	.quad	0x4010c47dc37a3db4              # double 4.1918860000000002
	.quad	0x3ffaf8bcdfefbf40              # double 1.685727
	.quad	0x40218358d1526d8b              # double 8.7565369999999998
	.quad	0x3ffa9d712a0ec743              # double 1.663438
	.quad	0x40071ac929aa1d75              # double 2.8880789999999998
	.quad	0x401835d80e496edf              # double 6.0525820000000001
	.quad	0x401a2113404ea4a9              # double 6.5323000000000002
	.quad	0x40212156c0d6f545              # double 8.5651150000000005
	.quad	0x400b098dcdb37c9a              # double 3.3796650000000001
	.quad	0x4008d9cae21101b0              # double 3.106344
	.quad	0x40074d7a56de3327              # double 2.9128310000000002
	.quad	0x3ff9aa5f84cad57c              # double 1.604095
	.quad	0x40134216c61522a7              # double 4.81454
	.quad	0x40230a089e34330d              # double 9.5195969999999991
	.quad	0x3ff0c38f36694899              # double 1.047744
	.quad	0x3ffef3bc903ea705              # double 1.9345060000000001
	.quad	0x401e9e978d4fdf3b              # double 7.6548749999999996
	.quad	0x401470789613d31c              # double 5.1098350000000003
	.quad	0x401205add9c27e95              # double 4.5055459999999998
	.quad	0x4011e2795703f2d4              # double 4.4711660000000002
	.quad	0x40095bc44bf4cb19              # double 3.1698080000000002
	.quad	0x4021c601bc98a223              # double 8.8867320000000003
	.quad	0x40209b54e2b063e0              # double 8.3033819999999992
	.quad	0x4015e0f1b25f633d              # double 5.4696720000000001
	.quad	0x401e01dbca9691a7              # double 7.5018149999999996
	.quad	0x3fe0e89656eefa1e              # double 0.52839199999999997
	.quad	0x400640cb6c7a7c9e              # double 2.7816380000000001
	.quad	0x401a3cd39da16617              # double 6.5594010000000003
	.quad	0x4017e732df505d10              # double 5.9757800000000003
	.quad	0x40107213a0c6b485              # double 4.1114030000000001
	.quad	0x4023df3f0fe047d4              # double 9.9360280000000003
	.quad	0x401c06f86a098916              # double 7.0068070000000002
	.quad	0x401586fa82e87d2c              # double 5.3818149999999996
	.quad	0x4008c4f765fd8adb              # double 3.0961750000000001
	.quad	0x402185d872f33ca3              # double 8.7614169999999998
	.quad	0x3fe34406c00da1a9              # double 0.60205399999999998
	.quad	0x400a321d53cddd6e              # double 3.27447
	.quad	0x401a99f51697f1fa              # double 6.6503490000000003
	.quad	0x4007ebcf91a32b13              # double 2.9901420000000001
	.quad	0x3feb0181e03f7058              # double 0.84393399999999996
	.quad	0x4011413d31b9b670              # double 4.3137100000000004
	.quad	0x40144cdf69878317              # double 5.0750710000000003
	.quad	0x401d95b5fa22706d              # double 7.3962019999999997
	.quad	0x3fff422467be553b              # double 1.9536480000000001
	.quad	0x4022babc72e275ab              # double 9.3647189999999991
	.quad	0x401f6242d05f2885              # double 7.8459580000000004
	.quad	0x4019b29ed3953dea              # double 6.4244339999999998
	.quad	0x401bc158fb43d89d              # double 6.9388160000000001
	.quad	0x4004bf93ff25e56d              # double 2.5935440000000001
	.quad	0x40032fc47e49b1fb              # double 2.3983240000000001
	.quad	0x4020eecc5fbf8338              # double 8.4664029999999997
	.quad	0x4020d857afea3df7              # double 8.4225440000000003
	.quad	0x40213a4fa8b4bf90              # double 8.6138890000000004
	.quad	0x401bcfb1183b6028              # double 6.9528239999999997
	.quad	0x4022c8aeb80ecfa7              # double 9.3919580000000006
	.quad	0x3ff6f6bb1290257d              # double 1.4352370000000001
	.quad	0x4011eb6e935b91f7              # double 4.479914
	.quad	0x4016c082491afc05              # double 5.6879970000000002
	.quad	0x40106582dbe7f2c3              # double 4.099132
	.quad	0x3ffca3f24d8fd5cb              # double 1.7900259999999999
	.quad	0x4009dfa0945f9df5              # double 3.2341929999999999
	.quad	0x400283f811f4f50a              # double 2.314438
	.quad	0x401e597a67a52ac7              # double 7.5873809999999997
	.quad	0x3ffabd30ad46f588              # double 1.671189
	.quad	0x3fca1e9af5ba2be0              # double 0.20405899999999999
	.quad	0x3fd135653c9abb02              # double 0.26888400000000001
	.quad	0x3ff0ce746cb966be              # double 1.0504039999999999
	.quad	0x4006bb18dac258d6              # double 2.8413560000000002
	.quad	0x401cdde2ac322292              # double 7.216685
	.quad	0x4010af59ccfaeff6              # double 4.1712410000000002
	.quad	0x3fff8cc144028e50              # double 1.9718640000000001
	.quad	0x401c00b49e01de27              # double 7.0006890000000004
	.quad	0x3fe98626f60e0eb6              # double 0.79762599999999995
	.quad	0x4020ee86833c6003              # double 8.4658700000000007
	.quad	0x3ff85a059a73b42d              # double 1.5219780000000001
	.quad	0x4016ef89c5e6ff7e              # double 5.733924
	.quad	0x4015f4b124d099e1              # double 5.4889570000000001
	.quad	0x40235afc47e49b20              # double 9.6777060000000006
	.quad	0x4017acad9ad85dfb              # double 5.9186310000000004
	.quad	0x3ff138e7ddca4b12              # double 1.0763929999999999
	.quad	0x401ff5ed4a1ad645              # double 7.9901629999999999
	.quad	0x401f76a2f48c2e77              # double 7.8658559999999999
	.quad	0x3fecadf9378ee286              # double 0.89623699999999995
	.quad	0x401b7fd5cb790fb6              # double 6.8748389999999997
	.quad	0x400232a51e321a2e              # double 2.2747289999999998
	.quad	0x3ffa2f284167a95d              # double 1.6365130000000001
	.quad	0x401d34c2f837b4a2              # double 7.3015249999999998
	.quad	0x40143917d6b65a9b              # double 5.0557550000000004
	.quad	0x402037383f0bae8a              # double 8.1078510000000001
	.quad	0x401cad9988d2a1f9              # double 7.1695310000000001
	.quad	0x3feaf49f0e4da09d              # double 0.84236100000000003
	.quad	0x401c5315d701d9f5              # double 7.0811380000000002
	.quad	0x4012e080f98fa377              # double 4.7192420000000004
	.quad	0x3ffe4ca70d1fa333              # double 1.8937139999999999
	.quad	0x3ff52f3b213e3e29              # double 1.324031
	.quad	0x4003c3854046412d              # double 2.470469
	.quad	0x400a34f93bc0a06f              # double 3.2758660000000002
	.quad	0x400f51ada76d97b3              # double 3.914882
	.quad	0x40182c16df3f9618              # double 6.043056
	.quad	0x40228c0a06e9ff0d              # double 9.2735140000000005
	.quad	0x401166145953586d              # double 4.3496870000000003
	.quad	0x40106e603d577964              # double 4.1077890000000004
	.quad	0x3fe919999999999a              # double 0.78437500000000004
	.quad	0x3fffcf4d7add15f0              # double 1.988111
	.quad	0x401e15c24c404a73              # double 7.521249
	.quad	0x4012a5fa658c4bd3              # double 4.6620879999999998
	.quad	0x40034302b40f66a5              # double 2.4077199999999999
	.quad	0x401d1a03c4b09e99              # double 7.2754050000000001
	.quad	0x3ff15d441355475a              # double 1.08527
	.quad	0x40201f0b49e01de2              # double 8.0606329999999993
	.quad	0x40040d6a161e4f76              # double 2.5065499999999998
	.quad	0x40232c47e49b1fac              # double 9.5864860000000007
	.quad	0x401ca743e963dc48              # double 7.1633449999999996
	.quad	0x400ff754b05b7cfe              # double 3.9957669999999998
	.quad	0x4020a8db0574b407              # double 8.329796
	.quad	0x3ff54a6a875d56f3              # double 1.330668
	.quad	0x4014da0dfdef8488              # double 5.2129440000000002
	.quad	0x40142441355475a3              # double 5.0354049999999999
	.quad	0x4022fb6d22424a27              # double 9.4910669999999992
	.quad	0x3ffa576683c297c0              # double 1.6463380000000001
	.quad	0x40198ae642bf9831              # double 6.3856440000000001
	.quad	0x40236ede97d06bbe              # double 9.7165420000000005
	.quad	0x402376ec5b078d93              # double 9.732272
	.quad	0x40208ecebbba55d2              # double 8.2789210000000004
	.quad	0x401ca549f94855da              # double 7.1614149999999999
	.quad	0x4020d7353b4b2fa9              # double 8.4203279999999996
	.quad	0x401e74e1a3f4666f              # double 7.6141420000000001
	.quad	0x401fe0f16f4384ba              # double 7.9696709999999999
	.quad	0x4023ab63b256ffc1              # double 9.8347449999999998
	.quad	0x40161c5e6ff7dfa0              # double 5.527704
	.quad	0x401f0af709b738e7              # double 7.7607080000000001
	.quad	0x3fd54aa9717df19d              # double 0.33268199999999998
	.quad	0x401044141e9af5ba              # double 4.0664829999999998
	.quad	0x4017717ebaf10236              # double 5.8608349999999998
	.quad	0x401b9941c8216c61              # double 6.8996649999999997
	.quad	0x4023a224aada33be              # double 9.8166860000000007
	.quad	0x4020119d883ba344              # double 8.0344049999999995
	.quad	0x3fcb63c31df761cc              # double 0.21398200000000001
	.quad	0x4013d20c49ba5e35              # double 4.9551249999999998
	.quad	0x401d227807789a46              # double 7.2836610000000004
	.quad	0x3fc32e7b3d8e0008              # double 0.14985599999999999
	.quad	0x4001e16c61522a6f              # double 2.2350699999999999
	.quad	0x3fc36af038e29f9d              # double 0.151701
	.quad	0x4023bad2dcb1465f              # double 9.8648900000000008
	.quad	0x3ff53d5992428d43              # double 1.3274779999999999
	.quad	0x401acd5c74751ce3              # double 6.7005480000000004
	.quad	0x401e740bfe3b03e2              # double 7.613327
	.quad	0x4020db1487768167              # double 8.4278910000000007
	.quad	0x401a4f20a73f748a              # double 6.5772729999999999
	.quad	0x401ab5b6c3760bf6              # double 6.6774550000000001
	.quad	0x401ce4c729f59cd0              # double 7.2234160000000003
	.quad	0x400296fc158fb43e              # double 2.3237230000000002
	.quad	0x40042a0fd3b29a1c              # double 2.5205380000000002
	.quad	0x40097ccf28c79f66              # double 3.1859419999999998
	.quad	0x4020f710ecb74de0              # double 8.4825510000000008
	.quad	0x40197ac8e68e3ef3              # double 6.3699070000000004
	.quad	0x3ff91a7c17a89332              # double 1.5689660000000001
	.quad	0x401f530014f8b589              # double 7.831055
	.quad	0x401759f559b3d07d              # double 5.8378500000000004
	.quad	0x3fc7704790b84988              # double 0.183114
	.quad	0x40009c19c17225b7              # double 2.0762209999999999
	.quad	0x4018219157abb880              # double 6.0327809999999999
	.quad	0x3fa3cd9a52263d81              # double 0.038677999999999997
	.quad	0x400b7565c2d27807              # double 3.4323229999999998
	.quad	0x3ffded2cbea4ebdd              # double 1.870404
	.quad	0x401a8b9f98b71b8b              # double 6.6363510000000003
	.quad	0x40045cdee34fc611              # double 2.545347
	.quad	0x4002358b827fa1a1              # double 2.2761450000000001
	.quad	0x40167e2867275686              # double 5.6232009999999999
	.quad	0x3ffacffc9795b35b              # double 1.675778
	.quad	0x4014d3879c4113c7              # double 5.2065720000000004
	.quad	0x4001968c692f6e83              # double 2.1985100000000002
	.quad	0x40060b4070329803              # double 2.7554940000000001
	.quad	0x401e9829cfdd2285              # double 7.6485969999999996
	.quad	0x3fa8f776c4827b70              # double 0.048763000000000001
	.quad	0x400dc26edaa92e62              # double 3.719938
	.quad	0x3fff3b05faebc409              # double 1.95191
	.quad	0x40239bd68405b39e              # double 9.8043709999999997
	.quad	0x401b0d5b24e9c454              # double 6.7630429999999997
	.quad	0x402237182235b4ee              # double 9.1076060000000005
	.quad	0x401486ba493c89f4              # double 5.13157
	.quad	0x4016855eaee2003b              # double 5.6302440000000002
	.quad	0x401b5343b70ef566              # double 6.8313129999999997
	.quad	0x3ff1757928e0c9da              # double 1.09118
	.quad	0x4020c24031487768              # double 8.3793959999999998
	.quad	0x401e075968512232              # double 7.5071770000000004
	.quad	0x401ae0c9107faa04              # double 6.7195169999999997
	.quad	0x3fd632a497fa5d29              # double 0.34684100000000001
	.quad	0x3ffbf5dedf1e0829              # double 1.7475270000000001
	.quad	0x4017a53ac4f7ec35              # double 5.9113569999999998
	.quad	0x400b32d7f950b956              # double 3.399826
	.quad	0x3fb7dac68a936c59              # double 0.093182000000000001
	.quad	0x400aa35e74299d88              # double 3.3297699999999999
	.quad	0x4022d1f90539fba4              # double 9.4101029999999994
	.quad	0x40171d9c27e95315              # double 5.7789159999999997
	.quad	0x400cb9c065b63d3e              # double 3.5906989999999999
	.quad	0x4020042070b8cfc0              # double 8.0080600000000004
	.quad	0x3fed2c42e9899bf6              # double 0.91165300000000005
	.quad	0x3ff23e8576cce5f7              # double 1.1402639999999999
	.quad	0x4001091c8eabffce              # double 2.1294490000000001
	.quad	0x3fd77fb267c6b8b7              # double 0.36716900000000002
	.quad	0x3fd7d8a548238540              # double 0.37259799999999998
	.quad	0x40085262888b545c              # double 3.0402269999999998
	.quad	0x3ff534e65bea0ba2              # double 1.325415
	.quad	0x401d3c9eecbfb15b              # double 7.3091999999999997
	.quad	0x401d3b1209edbf8c              # double 7.3076860000000003
	.quad	0x4010cdadb8348f54              # double 4.2008580000000002
	.quad	0x4018a0cc78e9f6a9              # double 6.1570299999999998
	.quad	0x4021dba0e8427419              # double 8.9289620000000003
	.quad	0x401928997c3d6840              # double 6.2896479999999997
	.quad	0x4019c63886594af5              # double 6.4435750000000001
	.quad	0x402135c0767d34df              # double 8.604984
	.quad	0x401f38d9f90539fc              # double 7.8055190000000003
	.quad	0x4022b36848beb5b3              # double 9.3504050000000003
	.quad	0x4012be8815e39714              # double 4.6860660000000003
	.quad	0x40207529dc725c3e              # double 8.2288350000000001
	.quad	0x3fbcb1feeb2d0a24              # double 0.112091
	.quad	0x4015af2a9d627bf6              # double 5.4210609999999999
	.quad	0x400feae642bf9831              # double 3.989697
	.quad	0x40229641f644955b              # double 9.2934719999999995
	.quad	0x400b69a88ace24bc              # double 3.4265910000000002
	.quad	0x4011dfa1a0cf1801              # double 4.4683900000000003
	.quad	0x401bfdd2f1a9fbe7              # double 6.9978749999999996
	.quad	0x3fdd2edbb59ddc1e              # double 0.45598499999999997
	.quad	0x400b4745bf26f1dc              # double 3.4098009999999999
	.quad	0x401ada82e87d2c7c              # double 6.7133900000000004
	.quad	0x40081cc7d1bb4917              # double 3.0140530000000001
	.quad	0x4007ec669057d178              # double 2.9904299999999999
	.quad	0x3fea865b63d3e4ef              # double 0.828901
	.quad	0x4018d3e78e1932d7              # double 6.2069380000000001
	.quad	0x401aba25529fe005              # double 6.6817830000000002
	.quad	0x40138545846e8f2a              # double 4.8801480000000002
	.quad	0x3ff0f8cfbfc6540d              # double 1.060745
	.quad	0x401b7f6555c52e73              # double 6.8744100000000001
	.quad	0x401fb1932d6ece14              # double 7.923413
	.quad	0x40094cd855970b4a              # double 3.1625220000000001
	.quad	0x3ff64ac29bf162ae              # double 1.3932519999999999
	.quad	0x400dc28997c3d684              # double 3.719989
	.quad	0x3ffee0c8cd63cb81              # double 1.9298789999999999
	.quad	0x4020ec60cbf2b23a              # double 8.4616760000000006
	.quad	0x3ff7c77bbf93ff26              # double 1.486202
	.quad	0x4021f04a72ead927              # double 8.9693179999999995
	.quad	0x4022bb62e9036439              # double 9.3659890000000007
	.quad	0x3fe7efa82e87d2c8              # double 0.74800500000000003
	.quad	0x3ff7b8cfbfc6540d              # double 1.48262
	.quad	0x40081c9f72f76e61              # double 3.013976
	.quad	0x40223d33b1077469              # double 9.1195350000000008
	.quad	0x3ffe07e9d94d0dd0              # double 1.876932
	.quad	0x3fc2d7cf5f4e4431              # double 0.14721100000000001
	.quad	0x4005bf7ad4b2745c              # double 2.718496
	.quad	0x400b323358f2e05d              # double 3.3995120000000001
	.quad	0x3fc4e18ac9f2fdb9              # double 0.163133
	.quad	0x401ed61d8622c450              # double 7.7090969999999999
	.quad	0x3ffb0d4ed2cbea4f              # double 1.6907490000000001
	.quad	0x4002b47bedb72820              # double 2.3381270000000001
	.quad	0x4023114ec204f2ae              # double 9.5338039999999999
	.quad	0x3fdc1dc0db2702a3              # double 0.43931599999999998
	.quad	0x400c7c5de9c0229a              # double 3.5607259999999998
	.quad	0x3fe1481f53825e14              # double 0.54005400000000003
	.quad	0x400201e2de870974              # double 2.2509209999999999
	.quad	0x3fc94f5903a7546d              # double 0.19773399999999999
	.quad	0x3fd943bf727136a4              # double 0.39476
	.quad	0x40209ee04c059210              # double 8.3103049999999996
	.quad	0x4018a1ea35935fc4              # double 6.1581200000000003
	.quad	0x40234129cbab649d              # double 9.6272719999999996
	.quad	0x4011081626b2f230              # double 4.2578969999999998
	.quad	0x4010eaab47410731              # double 4.2291689999999997
	.quad	0x400f55a964e8b7e5              # double 3.9168270000000001
	.quad	0x401d9137f38c5437              # double 7.3918150000000002
	.quad	0x3fa5275ee99a62ed              # double 0.041315999999999999
	.quad	0x3ff8b660e51d25ab              # double 1.5445260000000001
	.quad	0x40188ad2dcb1465f              # double 6.1355700000000004
	.quad	0x4011b7470eb24a6b              # double 4.4289820000000004
	.quad	0x400f81da7b0b3919              # double 3.9384049999999999
	.quad	0x401fa659d12cadde              # double 7.912452
	.quad	0x3ff383bf727136a4              # double 1.219665
	.quad	0x3fd216f86a098916              # double 0.28265200000000001
	.quad	0x401a41e215336dec              # double 6.5643390000000004
	.quad	0x4002716fc9bc7714              # double 2.3053889999999999
	.quad	0x4016ece8533b1077              # double 5.7313549999999998
	.quad	0x401d34c122749f0e              # double 7.3015179999999997
	.quad	0x400e0fd7e45803cd              # double 3.757736
	.quad	0x4000eebb341e14be              # double 2.116568
	.quad	0x402394c70867ad8e              # double 9.7905809999999995
	.quad	0x40201ddd8f92af9b              # double 8.0583310000000008
	.quad	0x3fe3eb78897e9963              # double 0.62249399999999999
	.quad	0x402200f1b25f633d              # double 9.0018440000000002
	.quad	0x4012f68b9fdbd2fa              # double 4.740767
	.quad	0x3fedf96bfca85cab              # double 0.936697
	.quad	0x401c9b7d84901d19              # double 7.1518459999999999
	.quad	0x3ff8f1e8e6080735              # double 1.5590599999999999
	.quad	0x3fe2b4091c087443              # double 0.58447700000000002
	.quad	0x3fe88d92fb19e732              # double 0.76728200000000002
	.quad	0x40102d51b4fe79ee              # double 4.044257
	.quad	0x4022741376d54973              # double 9.2267109999999999
	.quad	0x401ce95af294dd72              # double 7.2278859999999998
	.quad	0x402260b06c43f5f9              # double 9.1888459999999998
	.quad	0x40232d1e96c3fc44              # double 9.5881240000000005
	.quad	0x4014e2cfd8f0c77e              # double 5.2214960000000001
	.quad	0x3fe76dbb59ddc1e8              # double 0.73214500000000005
	.quad	0x401ef8d08919ef95              # double 7.7429829999999997
	.quad	0x3ff73af20ea5b531              # double 1.451891
	.quad	0x400a8b7b28954a80              # double 3.3181060000000002
	.quad	0x4013800e6afcce1c              # double 4.8750549999999997
	.quad	0x40014073de1e2de8              # double 2.1564709999999998
	.quad	0x4021abf0dc768dfc              # double 8.8358220000000002
	.quad	0x400d51886df82b1f              # double 3.6648109999999998
	.quad	0x400e29fcf3dc054f              # double 3.770502
	.quad	0x3fc337c1376d5497              # double 0.15013899999999999
	.quad	0x401a6cae21101b00              # double 6.6061329999999998
	.quad	0x40073984a0e410b6              # double 2.9030849999999999
	.quad	0x40152f455a7d2418              # double 5.296163
	.quad	0x4020a76598e10cf6              # double 8.3269470000000005
	.quad	0x401038f4f93bc0a0              # double 4.0556219999999996
	.quad	0x3fe3eff9f87f023f              # double 0.62304400000000004
	.quad	0x3ffc92b4d8ba40d9              # double 1.785817
	.quad	0x4020a535eb7457c1              # double 8.3226770000000005
	.quad	0x40197d63022dd7aa              # double 6.3724480000000003
	.quad	0x4020bcdd2f1a9fbe              # double 8.3688749999999992
	.quad	0x40206e4bcad9ad86              # double 8.2154220000000002
	.quad	0x3fcd8d1d8a548238              # double 0.23086899999999999
	.quad	0x3fdd04577d955715              # double 0.45339000000000002
	.quad	0x3ff050b0f27bb2ff              # double 1.0197000000000001
	.quad	0x40173bab649d388b              # double 5.8082710000000004
	.quad	0x40110fac6045baf5              # double 4.2653059999999998
	.quad	0x4000f2d87f88765c              # double 2.1185770000000002
	.quad	0x4022a82235b4edb3              # double 9.3283860000000001
	.quad	0x4004635935fc3b4f              # double 2.5485099999999998
	.quad	0x40155ab68cef672c              # double 5.3385870000000004
	.quad	0x40228bb62413db7f              # double 9.2728739999999998
	.quad	0x401d144fe36d2242              # double 7.2698359999999997
	.quad	0x400ffc23315d701e              # double 3.9981140000000002
	.quad	0x400de298cc144029              # double 3.735643
	.quad	0x4021b3b05faebc41              # double 8.8509550000000008
	.quad	0x4020ffb549f94856              # double 8.4994300000000003
	.quad	0x400b3097c80841ee              # double 3.3987270000000001
	.quad	0x4018ff5b5fa22707              # double 6.2493720000000001
	.quad	0x4019c305100a393f              # double 6.4404490000000001
	.quad	0x4022bb08feac42ea              # double 9.3653030000000008
	.quad	0x3fe064da09cc319c              # double 0.51231099999999996
	.quad	0x3ff7ce0eb67c2870              # double 1.4878070000000001
	.quad	0x402031a437824d4d              # double 8.0969560000000005
	.quad	0x401916cb966be7b0              # double 6.2722610000000003
	.quad	0x4021bffb480a5acd              # double 8.8749640000000003
	.quad	0x3fe2727dcbddb984              # double 0.57647599999999999
	.quad	0x401eb3e9ea140571              # double 7.6756970000000004
	.quad	0x402091dffc5479d5              # double 8.2849120000000003
	.quad	0x40180d352220bc38              # double 6.0128979999999999
	.quad	0x40116a747d805e5f              # double 4.3539599999999998
	.quad	0x400153f7ced91687              # double 2.1659999999999999
	.quad	0x4020f15bdd76683c              # double 8.4714039999999997
	.quad	0x3fec22036006d0d5              # double 0.87915200000000004
	.quad	0x3fd5dafd113836a8              # double 0.34149099999999999
	.quad	0x40156c6c11a11234              # double 5.3558810000000001
	.quad	0x40140020c49ba5e3              # double 5.0001249999999997
	.quad	0x40114e65bea0ba1f              # double 4.3265599999999997
	.quad	0x401f1e8c8abd5dc4              # double 7.779833
	.quad	0x401af8301a79feca              # double 6.7423710000000003
	.quad	0x3ff6aaca79357604              # double 1.4166970000000001
	.quad	0x40130547e06961c3              # double 4.7551569999999996
	.quad	0x3fdc8f29d40ee06e              # double 0.44623800000000002
	.quad	0x40229d73215fcc18              # double 9.3075189999999992
	.quad	0x3fd9fa7a85015c21              # double 0.40591300000000002
	.quad	0x4013ed1c3ac929aa              # double 4.9815529999999999
	.quad	0x40152ba27ae9ab2a              # double 5.2926120000000001
	.quad	0x402111e774eebf66              # double 8.5349690000000002
	.quad	0x401a72391d57ff9b              # double 6.6115459999999997
	.quad	0x402242cba732df50              # double 9.1304599999999994
	.quad	0x400a10f5a1016ce8              # double 3.2582810000000002
	.quad	0x3fc7546d3f9e7b81              # double 0.18226400000000001
	.quad	0x3fd23293d102bc73              # double 0.28433700000000001
	.quad	0x401df65a9a804966              # double 7.4905799999999996
	.quad	0x4014f2b3461309c8              # double 5.237012
	.quad	0x401206f36ef80560              # double 4.5067880000000002
	.quad	0x40008cbfb15b573f              # double 2.0687250000000001
	.quad	0x40215ccd31769a91              # double 8.6812529999999999
	.quad	0x400246e08f217093              # double 2.284608
	.quad	0x400daeec7c957cd4              # double 3.7104119999999998
	.quad	0x3fdaa9973d9ec700              # double 0.416601
	.quad	0x401757924af0bf1a              # double 5.8355189999999997
	.quad	0x40063a719b4dcec0              # double 2.778537
	.quad	0x4015c99bf5946c33              # double 5.4468839999999998
	.quad	0x3ff0ade54b48d3ae              # double 1.0424549999999999
	.quad	0x3ff4cd4cb9ecf638              # double 1.300122
	.quad	0x4018fa6c5d206c87              # double 6.2445539999999999
	.quad	0x4010ac6a7ef9db23              # double 4.1683750000000002
	.quad	0x4017298288051c9f              # double 5.7905369999999996
	.quad	0x402390b7c3504c49              # double 9.7826520000000005
	.quad	0x401494178705425f              # double 5.1446209999999999
	.quad	0x40178240fa9c12f1              # double 5.8772010000000003
	.quad	0x3ff09b328b6d86ec              # double 1.03789
	.quad	0x3fd029845dc83233              # double 0.25253399999999998
	.quad	0x3fcee7b3d8e00086              # double 0.24144599999999999
	.quad	0x4020931f8a0902de              # double 8.28735
	.quad	0x40194ba0e8427419              # double 6.3238560000000001
	.quad	0x4014a436fc158fb4              # double 5.1603659999999998
	.quad	0x401fd9c0a8d21bc1              # double 7.9626489999999998
	.quad	0x4021eb50d2806af4              # double 8.9596009999999992
	.quad	0x4022cbffef39085f              # double 9.3984369999999994
	.quad	0x400c0c625e99e94b              # double 3.5060470000000001
	.quad	0x3fc9d6e8af81626b              # double 0.20187099999999999
	.quad	0x4020c710a99b6f5d              # double 8.3887990000000006
	.quad	0x4019023e5b8561d4              # double 6.2521909999999998
	.quad	0x4023d49a9973d9ec              # double 9.9152419999999992
	.quad	0x3fe5862f5989df11              # double 0.67262999999999995
	.quad	0x401e9fd2630ec311              # double 7.6560759999999996
	.quad	0x4015fafdda8bd231              # double 5.4951090000000002
	.quad	0x401c979bfdf7e804              # double 7.1480560000000004
	.quad	0x401c1da09cc319c6              # double 7.0289330000000003
	.quad	0x401229eadd590c0b              # double 4.5409350000000002
	.quad	0x4020f4532a497fa6              # double 8.4771970000000003
	.quad	0x3ff7de14bdfd2631              # double 1.491719
	.quad	0x401157281fd9ba1b              # double 4.3351139999999999
	.quad	0x3fed8a84be40420f              # double 0.92315899999999995
	.quad	0x401cd88094e5d5b2              # double 7.2114279999999997
	.quad	0x400b56fc158fb43e              # double 3.4174730000000002
	.quad	0x4013b1ba3ca7503c              # double 4.9235620000000004
	.quad	0x400e11a8ef77f280              # double 3.758623
	.quad	0x40226e7ec7863bef              # double 9.2158110000000004
	.quad	0x3fe379db22d0e560              # double 0.60862499999999997
	.quad	0x3ffba7fa1a0cf180              # double 1.72851
	.quad	0x402251248d7e0264              # double 9.1584819999999993
	.quad	0x3fdff2ecf2064239              # double 0.49920199999999998
	.quad	0x4014943ed959a30a              # double 5.1447710000000004
	.quad	0x40120801b4352652              # double 4.5078189999999996
	.quad	0x3ff5df4e4430b179              # double 1.3670180000000001
	.quad	0x3ff8401d5c31593e              # double 1.5156529999999999
	.quad	0x401bdd273d5bab22              # double 6.9659700000000004
	.quad	0x4007e2584f4c6e6e              # double 2.9855200000000002
	.quad	0x4016ba5bd944aa54              # double 5.681991
	.quad	0x4009ed2cbea4ebdd              # double 3.2408079999999999
	.quad	0x401b2b7dc7abfb9c              # double 6.7924720000000001
	.quad	0x400f3fb6134ce3de              # double 3.9061089999999998
	.quad	0x3fee3cfd4bf0995b              # double 0.94494500000000003
	.quad	0x40040b242070b8d0              # double 2.5054400000000001
	.quad	0x3fa4cbc05d52c16e              # double 0.040617
	.quad	0x3ffd235f80991794              # double 1.8211360000000001
	.quad	0x401fe9f90539fba4              # double 7.9784889999999997
	.quad	0x400efc99ae924f22              # double 3.8733399999999998
	.quad	0x4019efbf401c4fc2              # double 6.4841280000000001
	.quad	0x400e7e2478854cdb              # double 3.8115929999999998
	.quad	0x40154098d477bbf9              # double 5.3130829999999998
	.quad	0x4015eaae6c8f7553              # double 5.4791809999999996
	.quad	0x401417f27fe4bcae              # double 5.0233860000000004
	.quad	0x402131cd5f99c38b              # double 8.59727
	.quad	0x401478726d04e619              # double 5.1176240000000002
	.quad	0x3fa760bf5d78811b              # double 0.045659999999999999
	.quad	0x4010e43137b07076              # double 4.2228440000000003
	.quad	0x400da2ba5a038195              # double 3.7044570000000001
	.quad	0x4001db317efe0ce1              # double 2.2320280000000001
	.quad	0x4008d192641b328b              # double 3.1023299999999998
	.quad	0x401dcb73083558a7              # double 7.4486809999999997
	.quad	0x3fe580bcbe61cfff              # double 0.67196500000000003
	.quad	0x4017d318fc504817              # double 5.9561500000000001
	.quad	0x400b2c6f7a0b5ed9              # double 3.3966970000000001
	.quad	0x401a0afd5454152b              # double 6.510732
	.quad	0x400138aeb80ecfa7              # double 2.1526770000000002
	.quad	0x4014d95b35b0bbf5              # double 5.212262
	.quad	0x402345a31a4bdba1              # double 9.6360100000000006
	.quad	0x40135e603d577964              # double 4.8421640000000004
	.quad	0x401d5b9ae0c17657              # double 7.3394579999999996
	.quad	0x3ffac1f75104d552              # double 1.672355
	.quad	0x401cf79fa97e132b              # double 7.2418199999999997
	.quad	0x400aa5bd944aa540              # double 3.3309280000000001
	.quad	0x400231cda2b5a20e              # double 2.2743180000000001
	.quad	0x400e18183f91e647              # double 3.761765
	.quad	0x40165c3b0c4588a0              # double 5.5900689999999997
	.quad	0x40135abd5dc40075              # double 4.8386129999999996
	.quad	0x40214f0c564f97ee              # double 8.6543910000000004
	.quad	0x400614801f75104d              # double 2.7600099999999999
	.quad	0x401198f9b13165d4              # double 4.3993900000000004
	.quad	0x401e35bc44bf4cb2              # double 7.5524760000000004
	.quad	0x4008567a95c853c1              # double 3.0422259999999999
	.quad	0x402309d755bccaf7              # double 9.5192209999999999
	.quad	0x4014589c1b54195d              # double 5.0865330000000002
	.quad	0x4020dce52deca255              # double 8.4314359999999997
	.quad	0x40182317268d3283              # double 6.034268
	.quad	0x3ffc3c2fc69728a6              # double 1.764694
	.quad	0x401184545846e8f3              # double 4.3792280000000003
	.quad	0x4023833e5753a3ec              # double 9.7563349999999999
	.quad	0x40173b068123810f              # double 5.8076420000000004
	.quad	0x4021bb51372a38b9              # double 8.8658540000000006
	.quad	0x401bc97fe8ee6b83              # double 6.946777
	.quad	0x3fee9ca7d6733ebc              # double 0.956623
	.quad	0x4022f64ead0c3d25              # double 9.4810689999999997
	.quad	0x4018c0807357e671              # double 6.1879900000000001
	.quad	0x3fe354067cf1c326              # double 0.60400699999999996
	.quad	0x401471fd9ba1b196              # double 5.1113189999999999
	.quad	0x401cdc942d490e67              # double 7.2154090000000002
	.quad	0x3ffc88bc9cd3e0bd              # double 1.7833829999999999
	.quad	0x3f96aec0724b76f7              # double 0.022151000000000001
	.quad	0x400f38066c2acb86              # double 3.9023560000000002
	.quad	0x4020ada187a4a490              # double 8.3391230000000007
	.quad	0x401acc061847f562              # double 6.6992419999999999
	.quad	0x400285b9e8c47a18              # double 2.315296
	.quad	0x3ff4d814940bbb1f              # double 1.302754
	.quad	0x401fb4a276b7ed42              # double 7.9264010000000003
	.quad	0x40066dd72367e415              # double 2.803633
	.quad	0x40054e8c0485a0be              # double 2.6633529999999999
	.quad	0x400f021af7d30ad4              # double 3.8760279999999998
	.quad	0x3fde958537e2c55d              # double 0.47787600000000002
	.quad	0x40190192641b328b              # double 6.2515349999999996
	.quad	0x400333a4f8726d05              # double 2.400217
	.quad	0x401e101e2584f4c7              # double 7.51574
	.quad	0x4018ece13f4a98ab              # double 6.2313280000000004
	.quad	0x40127cc814d7279a              # double 4.6218570000000003
	.quad	0x400dc5814940bbb2              # double 3.721438
	.quad	0x4020a8678c0053e3              # double 8.3289150000000003
	.quad	0x401631a36e2eb1c4              # double 5.5484749999999998
	.quad	0x401cfc53f39d1b2e              # double 7.2464139999999997
	.quad	0x4018c779e9d0e992              # double 6.194801
	.quad	0x3fe7baf31b152f3c              # double 0.74157099999999998
	.quad	0x401070f7fcfc3f81              # double 4.1103209999999999
	.quad	0x401e112a51e321a3              # double 7.516763
	.quad	0x4010efb8f57f737e              # double 4.2341040000000003
	.quad	0x3fde40f238972043              # double 0.47271400000000002
	.quad	0x4013706748e47560              # double 4.859769
	.quad	0x400c23d145d85165              # double 3.5174889999999999
	.quad	0x3ff650d2806af46b              # double 1.3947320000000001
	.quad	0x40073edd052934ad              # double 2.9056950000000001
	.quad	0x4002b69e3c968944              # double 2.3391690000000001
	.quad	0x400749c12f09d8c7              # double 2.9110130000000001
	.quad	0x401900468448cf7d              # double 6.2502690000000003
	.quad	0x400b19a6b50b0f28              # double 3.3875250000000001
	.quad	0x40206c70eb24a6a8              # double 8.2117989999999992
	.quad	0x400b90f840181e04              # double 3.445786
	.quad	0x40122f23033a4724              # double 4.5460320000000003
	.quad	0x4007bf0a1be2b496              # double 2.9682810000000002
	.quad	0x400a1d56f32bdc27              # double 3.2643260000000001
	.quad	0x3fdae34fc610f0e9              # double 0.420124
	.quad	0x40167b00ffda4053              # double 5.6201210000000001
	.quad	0x3ff7e15011904b3c              # double 1.4925079999999999
	.quad	0x3fedf080303c07ee              # double 0.935608
	.quad	0x4010ba9cdc443915              # double 4.182239
	.quad	0x40206cb9cb6848bf              # double 8.2123550000000005
	.quad	0x4008b4eca686e7e6              # double 3.0883419999999999
	.quad	0x3fee24d099e0e736              # double 0.941994
	.quad	0x400691958969a0ae              # double 2.8210860000000002
	.quad	0x4014e71b47842310              # double 5.2256900000000002
	.quad	0x4023be8af81626b3              # double 9.872154
	.quad	0x4022a380ecfa69be              # double 9.3193429999999999
	.quad	0x4014bb280f12c27a              # double 5.1827699999999997
	.quad	0x402218ebedfa43fe              # double 9.0486749999999994
	.quad	0x401000ce4ead0c3d              # double 4.0007869999999999
	.quad	0x401b6a1b1960fa16              # double 6.8536190000000001
	.quad	0x3fc47f3cf70153bd              # double 0.160133
	.quad	0x3fe566f2e8c0485a              # double 0.66881699999999999
	.quad	0x400f35831f03d146              # double 3.9011290000000001
	.quad	0x401ee851eb851eb8              # double 7.7268749999999997
	.quad	0x40069d8e86402081              # double 2.8269319999999998
	.quad	0x401bffb7e90ff972              # double 6.9997249999999998
	.quad	0x3ff846961c36976c              # double 1.5172330000000001
	.quad	0x3ff26468cac4b4d0              # double 1.1495139999999999
	.quad	0x40022ac7da1ec4e7              # double 2.2708889999999999
	.quad	0x4000c986fcdee350              # double 2.0984020000000001
	.quad	0x401aca9ef5232d2c              # double 6.6978720000000003
	.quad	0x3ffadcac083126e9              # double 1.6788749999999999
	.quad	0x4021d607e5a78f26              # double 8.9180290000000007
	.quad	0x400efc7820a30db7              # double 3.8732760000000002
	.quad	0x4019a77ff151e753              # double 6.4135739999999997
	.quad	0x400aeb5fe542e558              # double 3.3649290000000001
	.quad	0x4014f1b7e0ac7da2              # double 5.2360530000000001
	.quad	0x4015defdc9c4da90              # double 5.467765
	.quad	0x4020d04d76ab5808              # double 8.406841
	.quad	0x4004b1600f34506a              # double 2.5866090000000002
	.quad	0x401302f8bdec5f39              # double 4.7529019999999997
	.quad	0x40156884c6a3bde0              # double 5.3520690000000002
	.quad	0x3fd22e6ea8544780              # double 0.284084
	.quad	0x401760ccbc05d52c              # double 5.8445309999999999
	.quad	0x401334c059210386              # double 4.8015150000000002
	.quad	0x4015e54a7f8012e0              # double 5.4739170000000001
	.quad	0x3feb189bd8383ada              # double 0.84675400000000001
	.quad	0x402062d6cb535009              # double 8.1930449999999997
	.quad	0x400e48f53c579f23              # double 3.7856239999999999
	.quad	0x4020b769ca9ef523              # double 8.3582289999999997
	.quad	0x3ff4ea18372e6a77              # double 1.3071520000000001
	.quad	0x40165ab1d4f9c1f8              # double 5.5885689999999997
	.quad	0x401be9e01de26916              # double 6.9783939999999998
	.quad	0x40043739f340d4dc              # double 2.5269659999999998
	.quad	0x400e797edc7ef178              # double 3.8093240000000002
	.quad	0x40036390c9107faa              # double 2.423616
	.quad	0x400218aa8650e779              # double 2.2620439999999999
	.quad	0x401c941dd1a21ea3              # double 7.1446449999999997
	.quad	0x400cf2d5e071c53f              # double 3.6185719999999999
	.quad	0x40206426fe718a87              # double 8.1956100000000003
	.quad	0x4022c4f15e7c8d19              # double 9.3846539999999993
	.quad	0x401c863b256ffc11              # double 7.1310849999999997
	.quad	0x40175d2f1a9fbe77              # double 5.8410000000000002
	.quad	0x40016807357e670e              # double 2.1757949999999999
	.quad	0x401ec8f29d40ee07              # double 7.6962380000000001
	.quad	0x40165db2f661f18d              # double 5.5915030000000003
	.quad	0x4015249a133c1ce7              # double 5.2857440000000002
	.quad	0x3fe52089e34330d7              # double 0.66022199999999998
	.quad	0x401e3513f8db4891              # double 7.5518340000000003
	.quad	0x4001227631b584b2              # double 2.1418270000000001
	.quad	0x4019d6eeb702602d              # double 6.4598950000000004
	.quad	0x400204e48626f60e              # double 2.252389
	.quad	0x4014adf612407464              # double 5.1698839999999997
	.quad	0x402321d1b2e59afa              # double 9.5660530000000001
	.quad	0x402019b34a44c7b0              # double 8.0501959999999997
	.quad	0x402116c7c957cd46              # double 8.5444929999999992
	.quad	0x40216029ae4f3344              # double 8.687818
	.quad	0x3f8af31b152f3c2e              # double 0.013159000000000001
	.quad	0x401b93e2d6238da4              # double 6.8944200000000002
	.quad	0x4011a63779e9d0ea              # double 4.4123210000000004
	.quad	0x400436cd6c2efd44              # double 2.5267590000000002
	.quad	0x4002757bc7f77af6              # double 2.3073649999999999
	.quad	0x3fe1206a6e32e382              # double 0.53520699999999999
	.quad	0x4022d1ecd4aa10e0              # double 9.4100099999999998
	.quad	0x401f49d3458cd20b              # double 7.822095
	.quad	0x400bf53a3ec02f30              # double 3.4947400000000002
	.quad	0x400287ca643cc07b              # double 2.3163040000000001
	.quad	0x4011c3a5c1c6088d              # double 4.4410619999999996
	.quad	0x400cec5974e65bea              # double 3.615405
	.quad	0x4022fb022dd7a9a0              # double 9.4902510000000007
	.quad	0x4009abfa8f7db6e5              # double 3.208974
	.quad	0x40060625e99e94ab              # double 2.7530019999999999
	.quad	0x4004beb95e5aff2a              # double 2.593127
	.quad	0x401729945b6c3761              # double 5.7906050000000002
	.quad	0x400f7a4d6e47dc38              # double 3.9347180000000002
	.quad	0x4012672c5197a249              # double 4.6007550000000004
	.quad	0x401a04128bf3bea9              # double 6.5039769999999999
	.quad	0x3ff4f461309c7ffe              # double 1.309663
	.quad	0x4000da604e1e7104              # double 2.1066289999999999
	.quad	0x4023510e8858ff76              # double 9.6583140000000007
	.quad	0x3ff0d96851223183              # double 1.053078
	.quad	0x40215f1c970f7b9e              # double 8.685765
	.quad	0x4010b8f3eccc4695              # double 4.1806179999999999
	.quad	0x4013feaaf35e310e              # double 4.9986990000000002
	.quad	0x3ffccae429e0a41a              # double 1.799534
	.quad	0x3ff8ef5126634118              # double 1.558427
	.quad	0x4000a8c9320d9946              # double 2.0824150000000001
	.quad	0x402323660e51d25b              # double 9.5691380000000005
	.quad	0x40101f7a4e7ab756              # double 4.0307399999999998
	.quad	0x40235a7a63736cdf              # double 9.6767149999999997
	.quad	0x4011d8dc55000c95              # double 4.4617779999999998
	.quad	0x40232de310dbf056              # double 9.5896229999999996
	.quad	0x4007a6a65cf67b1c              # double 2.956372
	.quad	0x4014c029f16b11c7              # double 5.1876600000000002
	.quad	0x4020e4113c68661b              # double 8.4454440000000002
	.quad	0x4017e0e0eb67c287              # double 5.969608
	.quad	0x40116705857afea4              # double 4.3506070000000001
	.quad	0x40190437c5692b3d              # double 6.2541190000000002
	.quad	0x400ccfa82e87d2c8              # double 3.6013950000000001
	.quad	0x401dbfb480a5accd              # double 7.4372119999999997
	.quad	0x401ddf91a32b12d3              # double 7.4683289999999998
	.quad	0x402298d10f51ac9b              # double 9.29847
	.quad	0x40220d08b32ce896              # double 9.0254569999999994
	.quad	0x4011ee032db1e9f2              # double 4.4824339999999996
	.quad	0x3fa8b0292817763e              # double 0.048218999999999998
	.quad	0x4022fa8b6d86ec18              # double 9.4893450000000001
	.quad	0x4021365e2478854d              # double 8.6061870000000003
	.quad	0x4022d951611ba3ca              # double 9.4244489999999992
	.quad	0x401e7756c93a7115              # double 7.6165419999999999
	.quad	0x40120cc4ef88b978              # double 4.5124700000000004
	.quad	0x4017d66b1e5c0b9a              # double 5.9593930000000004
	.quad	0x40170f3cf70153bd              # double 5.7648809999999999
	.quad	0x3ff43d199bb2788e              # double 1.2649170000000001
	.quad	0x3ff0bbdcf0307f24              # double 1.045865
	.quad	0x401471f8a0902de0              # double 5.1113
	.quad	0x3fc43aa79bbadc0a              # double 0.15804000000000001
	.quad	0x400d5dd095af294e              # double 3.6708080000000001
	.quad	0x402335d54da4ce81              # double 9.6051429999999999
	.quad	0x40136657b84db9c7              # double 4.8499439999999998
	.quad	0x400fbc42a66dbd73              # double 3.9669240000000001
	.quad	0x40235ea50d6b228e              # double 9.6848530000000004
	.quad	0x4003183dff3f0fe0              # double 2.3868369999999999
	.quad	0x3ffad5dc4007570c              # double 1.6772119999999999
	.quad	0x4002fc4113c68662              # double 2.3731710000000001
	.quad	0x402079ea9a3d2d88              # double 8.2381180000000001
	.quad	0x400124b09e98dcdb              # double 2.1429149999999999
	.quad	0x4010b1bef49cf56f              # double 4.1735800000000003
	.quad	0x3ffebbe553ac4f7f              # double 1.9208730000000001
	.quad	0x402364bab649d389              # double 9.6967370000000006
	.quad	0x4006a70d1fa33376              # double 2.8315679999999999
	.quad	0x4010250f840181e0              # double 4.0361919999999998
	.quad	0x4021f3b3a68b19a4              # double 8.9759799999999998
	.quad	0x4008e4577d955715              # double 3.1114950000000001
	.quad	0x400b18d1d8a54824              # double 3.3871190000000002
	.quad	0x40223aead9274e23              # double 9.1150730000000006
	.quad	0x401109e1b089a027              # double 4.2596499999999997
	.quad	0x401bd2a497fa5d29              # double 6.9557060000000002
	.quad	0x400501cb46bacf74              # double 2.6258759999999999
	.quad	0x4023d72580c308ff              # double 9.9202080000000005
	.quad	0x400667daa4fca42b              # double 2.80071
	.quad	0x4014f39fba450acc              # double 5.237914
	.quad	0x40070ff4ba51a006              # double 2.8827910000000001
	.quad	0x401c85fd47bedb73              # double 7.1308490000000004
	.quad	0x3ff65a847b24638d              # double 1.3970990000000001
	.quad	0x401fa0114d2f5dbc              # double 7.9063160000000003
	.quad	0x4016ef47735c182f              # double 5.7336710000000002
	.quad	0x401ca18b93469942              # double 7.1577590000000004
	.quad	0x4013cd53cddd6e05              # double 4.9505150000000002
	.quad	0x40100adc8fb86f48              # double 4.0106070000000003
	.quad	0x40227d31337eb28e              # double 9.2445160000000008
	.quad	0x4019dcbff47735c2              # double 6.4655760000000004
	.quad	0x401d70d90e23af32              # double 7.3602030000000003
	.quad	0x3ff75eedcc20d563              # double 1.4606760000000001
	.quad	0x4014a5aa2e3c536d              # double 5.1617819999999996
	.quad	0x40075dd4c76d117b              # double 2.9208159999999999
	.quad	0x400aea07f66e86c6              # double 3.3642729999999998
	.quad	0x400b2469d7342edc              # double 3.3927800000000001
	.quad	0x3ffcc2a66dbd72bd              # double 1.7975220000000001
	.quad	0x4008737eb28d8666              # double 3.0563940000000001
	.quad	0x4011d44fa05143bf              # double 4.4573349999999996
	.quad	0x3fd6d3671ac14c66              # double 0.356653
	.quad	0x401d5921ccd96207              # double 7.3370430000000004
	.quad	0x4019d178705425f2              # double 6.454561
	.quad	0x4010246412cf0f9d              # double 4.0355379999999998
	.quad	0x401c19bbf0dc768e              # double 7.025131
	.quad	0x40202adbe7f2c301              # double 8.0837090000000007
	.quad	0x401d64aec8d5c747              # double 7.3483229999999997
	.quad	0x3fef731d2e0e3044              # double 0.98280199999999995
	.quad	0x40201db6c3760bf6              # double 8.0580350000000003
	.quad	0x40162e47dc37a3db              # double 5.5451959999999998
	.quad	0x401d340f23897204              # double 7.3008389999999999
	.quad	0x40206e68e3ef2841              # double 8.2156439999999993
	.quad	0x40200e774eebf65e              # double 8.0282540000000004
	.quad	0x40086dcfcc5b8dc5              # double 3.0536189999999999
	.quad	0x3fec5b4edb2f661f              # double 0.88614599999999999
	.quad	0x3fd3110e453d20f3              # double 0.29791600000000001
	.quad	0x401dfde54b48d3ae              # double 7.4979449999999996
	.quad	0x4023bcc857f3061c              # double 9.8687159999999991
	.quad	0x401debd8383ad9f1              # double 7.4803170000000003
	.quad	0x401ef988094e5d5b              # double 7.7436829999999998
	.quad	0x4019b802c0a4a05e              # double 6.4296980000000001
	.quad	0x40151b6bb1290258              # double 5.2767780000000002
	.quad	0x4004c14c660a2014              # double 2.5943839999999998
	.quad	0x40047e8bc169c23b              # double 2.5617899999999998
	.quad	0x3ff03baecd07852f              # double 1.0145709999999999
	.quad	0x4021ace592967019              # double 8.8376889999999992
	.quad	0x3fe477ea1c68ec53              # double 0.63963800000000004
	.quad	0x40193e670e2c12ae              # double 6.3109400000000004
	.quad	0x400d6193b3a68b1a              # double 3.6726450000000002
	.quad	0x401c7db3bfb58d15              # double 7.1227559999999999
	.quad	0x40181b59578a2a91              # double 6.0267080000000002
	.quad	0x4010acfc829cfdd2              # double 4.1689319999999999
	.quad	0x3ff0dc768dfbd6a6              # double 1.0538240000000001
	.quad	0x4013fff583a53b8e              # double 4.9999599999999997
	.quad	0x4020460cbf2b239a              # double 8.1368159999999996
	.quad	0x402123f705857aff              # double 8.5702440000000006
	.quad	0x4020150e779207d5              # double 8.0411260000000002
	.quad	0x4007be34330d7386              # double 2.967873
	.quad	0x40044fc371da37ef              # double 2.5389469999999998
	.quad	0x401a85604189374c              # double 6.6302500000000002
	.quad	0x4020e96f6512a950              # double 8.4559280000000001
	.quad	0x400a9d188f42fe82              # double 3.3267069999999999
	.quad	0x400c98d1d8a54824              # double 3.5746190000000002
	.quad	0x401d4d1569f49060              # double 7.3252769999999998
	.quad	0x4017dbb384fd2a63              # double 5.9645520000000003
	.quad	0x4013fe0b4e11dbcb              # double 4.9980900000000004
	.quad	0x4015258c4bd33d29              # double 5.2866679999999997
	.quad	0x4023b197e5647347              # double 9.8468619999999997
	.quad	0x4012e685553ef6b6              # double 4.7251180000000002
	.quad	0x4022fbbdbe3c1052              # double 9.4916820000000008
	.quad	0x3ff233d3a1d323ff              # double 1.137653
	.quad	0x4023fcd4024b33db              # double 9.993805
	.quad	0x3ff3212b5e529bae              # double 1.1955979999999999
	.quad	0x401cae8dda48b652              # double 7.1704629999999998
	.quad	0x401f749e8815e397              # double 7.8638859999999999
	.quad	0x3fe344b09e98dcdb              # double 0.60213499999999998
	.quad	0x40153de19fc2a887              # double 5.3104310000000003
	.quad	0x400e82e557de0d67              # double 3.813914
	.quad	0x401a92abef06b378              # double 6.6432339999999996
	.quad	0x3fab239a38fbca10              # double 0.053005999999999998
	.quad	0x40026623d0bfa094              # double 2.2998729999999998
	.quad	0x3feedece5710880e              # double 0.96469800000000006
	.quad	0x3fd0ce8533b10774              # double 0.26260499999999998
	.quad	0x3feed3cddd6e04c0              # double 0.96335499999999996
	.quad	0x3fe26f86a098915c              # double 0.57611400000000001
	.quad	0x401b56d3b6cbd988              # double 6.8347920000000002
	.quad	0x40214f99806f2629              # double 8.6554680000000008
	.quad	0x3ffd3ccd0fe8ab50              # double 1.8273440000000001
	.quad	0x3ffc3c7e6b3fe9fb              # double 1.764769
	.quad	0x4020948eabffcdab              # double 8.2901509999999998
	.quad	0x400e5d113836a833              # double 3.7954430000000001
	.quad	0x4012bb0531982880              # double 4.6826369999999997
	.quad	0x3fe0a276b7ed41b7              # double 0.51983199999999996
	.quad	0x40142972cd7cf5f5              # double 5.0404770000000001
	.quad	0x4013850092ccf6be              # double 4.8798849999999998
	.quad	0x4016c298cc144029              # double 5.6900360000000001
	.quad	0x4013234d6a161e4f              # double 4.7844749999999996
	.quad	0x3fbcba6266fd651b              # double 0.112219
	.quad	0x401efce18266772d              # double 7.7469539999999996
	.quad	0x400da7229e90795f              # double 3.7066089999999998
	.quad	0x401884677b395c42              # double 6.1293009999999999
	.quad	0x401c87d41743e964              # double 7.1326450000000001
	.quad	0x400ee8e71476af8a              # double 3.8637220000000001
	.quad	0x401dd8c7e28240b8              # double 7.4617000000000004
	.quad	0x40183271fff79c84              # double 6.0492629999999998
	.quad	0x4000fae70c1333b9              # double 2.1225109999999998
	.quad	0x40149b6672fba01f              # double 5.1517580000000001
	.quad	0x400526b93ccd0fe9              # double 2.6439080000000001
	.quad	0x401355dd095af295              # double 4.8338510000000001
	.quad	0x40104ebedfa43fe6              # double 4.0769000000000002
	.quad	0x4022d41df3300de5              # double 9.4142910000000004
	.quad	0x401389478c868ba0              # double 4.8840620000000001
	.quad	0x400dbe4abe6a337b              # double 3.7179160000000002
	.quad	0x401aa9717df19d67              # double 6.6654720000000003
	.quad	0x4022dd66277c45cc              # double 9.4324200000000004
	.quad	0x3fec921682f94424              # double 0.89283299999999998
	.quad	0x401ec9fec99f1ae3              # double 7.6972610000000001
	.quad	0x400abadd9c27e953              # double 3.341243
	.quad	0x401dd7e670e2c12b              # double 7.4608400000000001
	.quad	0x402328aac96cc5fc              # double 9.579428
	.quad	0x3fcae368f08461fa              # double 0.210065
	.quad	0x4021c7a355043e53              # double 8.8899179999999998
	.quad	0x401e43621fafc8b0              # double 7.565804
	.quad	0x4021cde529bae46d              # double 8.902139
	.quad	0x401d1b020c49ba5e              # double 7.2763749999999998
	.quad	0x3ffe669057d1782d              # double 1.90004
	.quad	0x40088aa19439de48              # double 3.0676909999999999
	.quad	0x401215918a009f62              # double 4.5210629999999998
	.quad	0x400bf350092ccf6c              # double 3.493805
	.quad	0x401269a88ace24bc              # double 4.6031820000000003
	.quad	0x401e436262cba733              # double 7.5658050000000001
	.quad	0x4003d2a1f8e3ac0c              # double 2.4778479999999998
	.quad	0x3fecf35e310dbf05              # double 0.90470799999999996
	.quad	0x401713e1c9b41398              # double 5.7694159999999997
	.quad	0x4021c86013660e52              # double 8.8913580000000003
	.quad	0x4001e6455eaee200              # double 2.2374369999999999
	.quad	0x40222f43419e3001              # double 9.0923099999999994
	.quad	0x40121a6bd6e8af81              # double 4.5258019999999997
	.quad	0x401634f3fd933e36              # double 5.5517120000000002
	.quad	0x40230edaec4a4096              # double 9.5290140000000001
	.quad	0x4022c8d7be9856a3              # double 9.3922709999999991
	.quad	0x400dd357e670e2c1              # double 3.7281949999999999
	.quad	0x3fe37449129888f8              # double 0.60794499999999996
	.quad	0x4019c77b7c7820a3              # double 6.444807
	.quad	0x401dde5e2478854d              # double 7.4671560000000001
	.quad	0x401ac47ae147ae14              # double 6.6918749999999996
	.quad	0x40155d590c0ad03e              # double 5.3411600000000004
	.quad	0x400a6cefed63454a              # double 3.3031920000000001
	.quad	0x400586e115592d99              # double 2.6908590000000001
	.quad	0x40027b4cc2507208              # double 2.3102049999999998
	.quad	0x3f168b5cbff47736              # double 8.6000000000000003E-5
	.quad	0x400002089e34330d              # double 2.0009929999999998
	.quad	0x400954eb9a176ddb              # double 3.1664650000000001
	.quad	0x400ba29ae4f33440              # double 3.4543970000000002
	.quad	0x4012d087442c7fbb              # double 4.7036410000000002
	.quad	0x400f2fd438d1d8a5              # double 3.8983539999999999
	.quad	0x400eda187a4a48f9              # double 3.8564919999999998
	.quad	0x40219b62e9036439              # double 8.8034890000000008
	.quad	0x4021577ee4e26d48              # double 8.67089
	.quad	0x40100c176577531e              # double 4.0118080000000003
	.quad	0x4015e6ca03c4b09f              # double 5.4753800000000004
	.quad	0x40202f811f4f50a0              # double 8.0927819999999997
	.quad	0x401a83354c12274a              # double 6.6281330000000001
	.quad	0x401b8146e4c0df59              # double 6.8762470000000002
	.quad	0x40229ca7b4e54f7b              # double 9.3059670000000008
	.quad	0x40157d6c72192210              # double 5.372484
	.quad	0x4011b721d53cddd7              # double 4.4288400000000001
	.quad	0x4021974f722e1ac5              # double 8.7955279999999991
	.quad	0x3fd6f35e310dbf05              # double 0.35860399999999998
	.quad	0x401c6dae81882adc              # double 7.1071109999999997
	.quad	0x40125f64cf8d716d              # double 4.5931579999999999
	.quad	0x401829613d31b9b6              # double 6.0404099999999996
	.quad	0x400ca235b4edb2f6              # double 3.5792039999999998
	.quad	0x401b06dc1a47a9e3              # double 6.7566990000000002
	.quad	0x400e7e6687f455a8              # double 3.8117190000000001
	.quad	0x4006e19b0ab2e169              # double 2.8601589999999999
	.quad	0x40107365cb35f3d8              # double 4.1126930000000002
	.quad	0x3ff4e6e32e3821af              # double 1.3063689999999999
	.quad	0x401cfd377e1b8ed2              # double 7.2472820000000002
	.quad	0x401e00867ad8e432              # double 7.5005129999999998
	.quad	0x4010107f23cc8de3              # double 4.0161100000000003
	.quad	0x400b1e9a6f826edb              # double 3.3899430000000002
	.quad	0x400b3109070fbeba              # double 3.398943
	.quad	0x3fc7aab474107315              # double 0.18489700000000001
	.quad	0x40085d1fe64f54d2              # double 3.045471
	.quad	0x4019213fd0d0678c              # double 6.28247
	.quad	0x400defed634549b6              # double 3.7421519999999999
	.quad	0x4021747b24638c97              # double 8.7275019999999994
	.quad	0x401ae093964a59c0              # double 6.7193129999999996
	.quad	0x401623382e44b6e9              # double 5.5343939999999998
	.quad	0x401f85ffe6d58c8f              # double 7.880859
	.quad	0x400ab42dcf4623d1              # double 3.3379780000000001
	.quad	0x401ea810a569b175              # double 7.6641260000000004
	.quad	0x401bb260b2c83ec9              # double 6.9241970000000004
	.quad	0x401299f127f5e84f              # double 4.650334
	.quad	0x401b4edbf8b9baa1              # double 6.8270109999999997
	.quad	0x40132ab9b23dd54e              # double 4.7917240000000003
	.quad	0x40168de8f6cefed6              # double 5.6385839999999998
	.quad	0x40228158fb43d89d              # double 9.2526320000000002
	.quad	0x4021b0342aa9f7b6              # double 8.8441480000000006
	.quad	0x40171008a697aede              # double 5.7656580000000002
	.quad	0x3ff5df6a93f290ac              # double 1.3670450000000001
	.quad	0x4023177be121ee67              # double 9.5458669999999994
	.quad	0x4017dffc115df655              # double 5.9687349999999997
	.quad	0x40211dc2b0ea1837              # double 8.5581259999999997
	.quad	0x401ef29bae46cfc8              # double 7.7369219999999998
	.quad	0x4018cb4aec8d5c74              # double 6.1985279999999996
	.quad	0x40152d074213a0c7              # double 5.2939730000000003
	.quad	0x401f950e779207d5              # double 7.8955630000000001
	.quad	0x3ffedcebfec13b9f              # double 1.928936
	.quad	0x401c605ccc89b0ee              # double 7.0941039999999997
	.quad	0x4019ff8b9baa1512              # double 6.4995560000000001
	.quad	0x40172a7ac81d3aa3              # double 5.7914839999999996
	.quad	0x3ffff9abf3387161              # double 1.9984550000000001
	.quad	0x3fe8e8c26138fffc              # double 0.77841300000000002
	.quad	0x4020bf2cd7cf5f4e              # double 8.3733889999999995
	.quad	0x40221d36b4c7f349              # double 9.0570579999999996
	.quad	0x400d776bc1eff9f8              # double 3.6833109999999998
	.quad	0x402281aef6f8f041              # double 9.2532879999999995
	.quad	0x4015586b59146e4c              # double 5.336347
	.quad	0x4010157f737da61e              # double 4.020994
	.quad	0x40017c37a3db3bfb              # double 2.1856529999999998
	.quad	0x401f1db5525cc426              # double 7.7790119999999998
	.quad	0x3fec6b6e0d23d4f1              # double 0.88811399999999996
	.quad	0x40121957cd466f50              # double 4.5247489999999999
	.quad	0x3ff7e5a14488c60d              # double 1.4935620000000001
	.quad	0x3fe1ef416bdb1a6d              # double 0.56045599999999995
	.quad	0x4020c7262888b546              # double 8.3889630000000004
	.quad	0x3ff9136f7e3d1cc1              # double 1.567245
	.quad	0x40120c68a936c58f              # double 4.5121180000000001
	.quad	0x40204e1565c2d278              # double 8.1525069999999999
	.quad	0x4012f60d4562e0a0              # double 4.7402850000000001
	.quad	0x40021cefaa4766c7              # double 2.2641290000000001
	.quad	0x401debe48a58b3f6              # double 7.4803639999999998
	.quad	0x4018eb3fa6defc7a              # double 6.2297349999999998
	.quad	0x400b447a9e2bcf92              # double 3.4084370000000002
	.quad	0x401f9d46b26bf877              # double 7.9035900000000003
	.quad	0x4010e539fba450ad              # double 4.2238540000000002
	.quad	0x40203e2174c4cdfb              # double 8.1213490000000004
	.quad	0x4003731ca7d6733f              # double 2.4312070000000001
	.quad	0x3fe11c0ca600b029              # double 0.53467399999999998
	.quad	0x4023da7d028a1dfc              # double 9.9267350000000007
	.quad	0x4022126a22b3892f              # double 9.0359660000000002
	.quad	0x4019712e83a109d0              # double 6.3605289999999997
	.quad	0x40209647778dd617              # double 8.2935140000000001
	.quad	0x40144fdc1615ebfb              # double 5.0779880000000004
	.quad	0x401b79db65ecc3e3              # double 6.8690009999999999
	.quad	0x3ff26060fe47991c              # double 1.1485300000000001
	.quad	0x4020879378ee2867              # double 8.2647969999999997
	.quad	0x4013e69f4906034f              # double 4.9752169999999998
	.quad	0x3ff70ba6266fd652              # double 1.4403440000000001
	.quad	0x4022e14e1a3f4667              # double 9.4400490000000001
	.quad	0x40218b0bbf50e347              # double 8.7715739999999993
	.quad	0x400193a3ec02f2fa              # double 2.1970900000000002
	.quad	0x401b3ae685db76b4              # double 6.8075200000000002
	.quad	0x40167ff583a53b8e              # double 5.6249599999999997
	.quad	0x400d3b4d48882f0e              # double 3.653956
	.quad	0x4005f3d9ec700043              # double 2.744068
	.quad	0x402233d31b9b66f9              # double 9.1012199999999996
	.quad	0x40162c7820a30db7              # double 5.5434270000000003
	.quad	0x400f7300de4c5111              # double 3.9311539999999998
	.quad	0x40010b8950763a19              # double 2.130633
	.quad	0x3fe1897e996312f5              # double 0.54803400000000002
	.quad	0x401d41a4bdba0a52              # double 7.3141049999999996
	.quad	0x40040bd7f51efb6e              # double 2.5057830000000001
	.quad	0x40153f64cf8d716d              # double 5.3119079999999999
	.quad	0x400e1e093532e7b4              # double 3.7646660000000001
	.quad	0x40151b2788db0575              # double 5.2765180000000003
	.quad	0x401f72235b4edb2f              # double 7.8614629999999996
	.quad	0x40161d50ebaade65              # double 5.5286289999999996
	.quad	0x400f9bf162ae4b02              # double 3.9511440000000002
	.quad	0x401e170c1333b96b              # double 7.522507
	.quad	0x40040e48626f60e1              # double 2.506974
	.quad	0x4017628240b78034              # double 5.8461999999999996
	.quad	0x40117917939a7c18              # double 4.3682540000000003
	.quad	0x40082bc9cd3e0bd4              # double 3.0213809999999999
	.quad	0x4004733fc86cebbc              # double 2.5562740000000002
	.quad	0x401dfd199bb2788e              # double 7.4971680000000003
	.quad	0x401440c521dda05a              # double 5.0632520000000003
	.quad	0x4014ce71cda2b5a2              # double 5.201606
	.quad	0x3ffb8b8066c2acb8              # double 1.7215579999999999
	.quad	0x40168187e7c06e1a              # double 5.6264950000000002
	.quad	0x4021279aae6c8f75              # double 8.5773519999999994
	.quad	0x40089335d249e450              # double 3.0718800000000002
	.quad	0x40026e08f2170931              # double 2.303728
	.quad	0x401b4a222d5171e3              # double 6.8223960000000003
	.quad	0x402242bef06b3786              # double 9.1303629999999991
	.quad	0x4021519ac79702e6              # double 8.6593839999999993
	.quad	0x4013a2b55ef1fddf              # double 4.9088950000000002
	.quad	0x4021ca862f5989df              # double 8.8955549999999999
	.quad	0x40182fe64f54d1e9              # double 6.0467769999999996
	.quad	0x4018f9285a921cce              # double 6.2433180000000004
	.quad	0x3ff3b3cf70153bd1              # double 1.2313989999999999
	.quad	0x4010ebe8bc169c24              # double 4.2303800000000003
	.quad	0x400a308f648c7193              # double 3.273711
	.quad	0x400b47ca643cc07b              # double 3.4100540000000001
	.quad	0x3fefc68cac4b4d05              # double 0.99298699999999995
	.quad	0x3ff81693c03bc4d2              # double 1.505512
	.quad	0x4022fecb74ddf86e              # double 9.4976459999999996
	.quad	0x4021bd204af92296              # double 8.8693869999999997
	.quad	0x400522730c671690              # double 2.6418210000000002
	.quad	0x4022767cd0353719              # double 9.2314209999999992
	.quad	0x401c1cd2d44dca8e              # double 7.0281479999999998
	.quad	0x3fea6353f7ced917              # double 0.82462500000000005
	.quad	0x4000ad36b4c7f349              # double 2.0845769999999999
	.quad	0x401dc7f950b955f8              # double 7.4452870000000004
	.quad	0x400284c165907d91              # double 2.3148219999999999
	.quad	0x400f941a6937d1fe              # double 3.9473159999999998
	.quad	0x3ffac43e5321e604              # double 1.672911
	.quad	0x402294a600b02928              # double 9.2903289999999998
	.quad	0x401194959e625636              # double 4.3951019999999996
	.quad	0x402132a369fcf3dc              # double 8.5989029999999999
	.quad	0x401c7934efcbd556              # double 7.118366
	.quad	0x40068c4c5974e65c              # double 2.818505
	.quad	0x4016d4345cfede98              # double 5.7072310000000002
	.quad	0x3ff8c40f23897204              # double 1.547866
	.quad	0x400f8235b4edb2f6              # double 3.9385789999999998
	.quad	0x4017e09d0635a427              # double 5.9693490000000002
	.quad	0x4023315379fa97e1              # double 9.5963399999999996
	.quad	0x40236fa48301a7a0              # double 9.7180520000000001
	.quad	0x3ff72f9db22d0e56              # double 1.449125
	.quad	0x4021fd98bf7f0670              # double 8.9953059999999994
	.quad	0x40060470a808c826              # double 2.7521680000000002
	.quad	0x3fe3228dc981beb2              # double 0.59796800000000006
	.quad	0x40063204295a6c5d              # double 2.7744219999999999
	.quad	0x400c0fd9fd36f7e4              # double 3.5077400000000001
	.quad	0x3fde23c85c24c405              # double 0.47093400000000002
	.quad	0x4007fcfb3311a544              # double 2.998526
	.quad	0x400a3ea5f84cad58              # double 3.2805900000000001
	.quad	0x3ff9d0f1f57b41c0              # double 1.6135120000000001
	.quad	0x400f85baf533f423              # double 3.9402979999999999
	.quad	0x401335fe111276fb              # double 4.802727
	.quad	0x401e94ea8da7f3cf              # double 7.6454259999999996
	.quad	0x4010293faf42784b              # double 4.0402820000000004
	.quad	0x40236f67903211cb              # double 9.7175869999999999
	.quad	0x401278c6d612c6ac              # double 4.6179459999999999
	.quad	0x401459680e065300              # double 5.0873109999999997
	.quad	0x4013b209246bf013              # double 4.9238629999999999
	.quad	0x4014832c1f42bb66              # double 5.1280979999999996
	.quad	0x40001d701d9f4d38              # double 2.0143740000000001
	.quad	0x401f9ccfaeff5c6c              # double 7.9031359999999999
	.quad	0x40070d8c2a454de8              # double 2.881615
	.quad	0x401cb5be1a826245              # double 7.1774829999999996
	.quad	0x4010913e81450efe              # double 4.1418400000000002
	.quad	0x401681f42bb66730              # double 5.6269080000000002
	.quad	0x4022bf1d81f10668              # double 9.373272
	.quad	0x402110f66a550870              # double 8.5331299999999999
	.quad	0x4008ca1dfb9389b5              # double 3.0986899999999999
	.quad	0x3fd1484d76ab5808              # double 0.270038
	.quad	0x401d1ad080b673c5              # double 7.276186
	.quad	0x402088359bc33f85              # double 8.2660339999999994
	.quad	0x401a7c5e6ff7dfa0              # double 6.621454
	.quad	0x40207f381d7dbf48              # double 8.2484749999999991
	.quad	0x401c4e83e425aee6              # double 7.0766749999999998
	.quad	0x4023583e425aee63              # double 9.6723499999999997
	.quad	0x400ab163baba7b91              # double 3.3366159999999998
	.quad	0x401da0b417ca2121              # double 7.4069370000000001
	.quad	0x4022d87aaef2c732              # double 9.4228109999999994
	.quad	0x40223198f1d3ed52              # double 9.0968699999999991
	.quad	0x3fd0480a5accd530              # double 0.25439699999999998
	.quad	0x40006a0232096788              # double 2.0517620000000001
	.quad	0x40222faf640639d6              # double 9.0931350000000002
	.quad	0x40153a16a4873366              # double 5.3067270000000004
	.quad	0x400fc8e3ef284168              # double 3.9730910000000002
	.quad	0x401c97cbf6e3f78c              # double 7.1482390000000002
	.quad	0x400d16cce5f7403e              # double 3.6361330000000001
	.quad	0x4015c11a11233df3              # double 5.4385760000000003
	.quad	0x400dc196d8f4f93c              # double 3.7195260000000001
	.quad	0x400b65a9a8049668              # double 3.4246400000000001
	.quad	0x3ff0130df9bdc6a0              # double 1.0046520000000001
	.quad	0x402204b7f5a5332b              # double 9.0092160000000003
	.quad	0x401bb194c0160525              # double 6.923419
	.quad	0x3fd35ab3aabcd78c              # double 0.30241099999999999
	.quad	0x401e2a7f3cf70154              # double 7.5415010000000002
	.quad	0x3fe05bc664d3bf2f              # double 0.51120299999999996
	.quad	0x4010231bde82d7b6              # double 4.0342859999999998
	.quad	0x3ffbdc6088d6d3b7              # double 1.741303
	.quad	0x3fee23db3bfb58d1              # double 0.94187699999999996
	.quad	0x4016894ab1d4f9c2              # double 5.634074
	.quad	0x401eed8dbcec84f9              # double 7.731986
	.quad	0x4014a5a921ccd962              # double 5.161778
	.quad	0x3ff937c243dccea3              # double 1.5761130000000001
	.quad	0x4021d8e94ee392e2              # double 8.9236550000000001
	.quad	0x400bf4a44c7b02d6              # double 3.4944540000000002
	.quad	0x400e8fa05143bf72              # double 3.8201299999999998
	.quad	0x40217b9628cbd124              # double 8.7413799999999994
	.quad	0x4023d646f1561911              # double 9.9185099999999994
	.quad	0x4020124cc6822ff1              # double 8.0357420000000008
	.quad	0x4000e4052d666a98              # double 2.1113379999999999
	.quad	0x4016ed31fcd24e16              # double 5.731636
	.quad	0x3fd617acc4ef88b9              # double 0.34519499999999997
	.quad	0x3ffcba40d90e23af              # double 1.795472
	.quad	0x40215f97edc7ef17              # double 8.6867059999999992
	.quad	0x401e2ddd6e04c059              # double 7.5447899999999998
	.quad	0x40224708cc575c07              # double 9.1387389999999993
	.quad	0x3feb460aa64c2f83              # double 0.85229999999999995
	.quad	0x401948333fc86cec              # double 6.3205080000000002
	.quad	0x401a621fafc8b008              # double 6.5958240000000004
	.quad	0x40079b1d0c804103              # double 2.950739
	.quad	0x40196ab7dc7abfba              # double 6.3542170000000002
	.quad	0x4002f803cd141a69              # double 2.3711009999999999
	.quad	0x40166f02c4d65e46              # double 5.608409
	.quad	0x4002f13ad5bee3d6              # double 2.367788
	.quad	0x401da41dd1a21ea3              # double 7.4102699999999997
	.quad	0x3fff276ea4228998              # double 1.9471270000000001
	.quad	0x4021ab3d6c721922              # double 8.8344529999999999
	.quad	0x401d213165d39970              # double 7.2824150000000003
	.quad	0x4017240bbb1f255f              # double 5.7852009999999998
	.quad	0x3ffad75f2cb64170              # double 1.677581
	.quad	0x4022bb24851a8694              # double 9.3655129999999999
	.quad	0x40141e94ab1d4f9c              # double 5.0298639999999999
	.quad	0x4006a999dcb5781c              # double 2.8328129999999998
	.quad	0x400ad907d912556d              # double 3.355972
	.quad	0x4022be5ffa3b9ae1              # double 9.3718260000000004
	.quad	0x4016d67a52ac753e              # double 5.7094509999999996
	.quad	0x3fffb0468448cf7d              # double 1.9805360000000001
	.quad	0x4016448dc11e42e1              # double 5.5669469999999999
	.quad	0x4000afcbd556084a              # double 2.0858379999999999
	.quad	0x3fd1bc5de9c0229a              # double 0.27712199999999998
	.quad	0x400a926d04e618ce              # double 3.3214969999999999
	.quad	0x401a2f74cd31769b              # double 6.5463440000000004
	.quad	0x40221b4fc610f0e9              # double 9.0533429999999999
	.quad	0x401bdd1e53a81dc1              # double 6.9659360000000001
	.quad	0x40167be553ac4f7f              # double 5.6209920000000002
	.quad	0x4021ab126e978d50              # double 8.8341250000000002
	.quad	0x40055b2b3461309c              # double 2.6695159999999998
	.quad	0x3ff3bd04a2fcefaa              # double 1.2336469999999999
	.quad	0x401b49ca18bd6627              # double 6.8220599999999996
	.quad	0x401a4f1950331e3a              # double 6.5772449999999996
	.quad	0x4010d9bd8383ad9f              # double 4.212637
	.quad	0x4018de43ed959a31              # double 6.2170560000000004
	.quad	0x400d5a0168b5cbff              # double 3.6689479999999999
	.quad	0x40230218def416be              # double 9.5040960000000005
	.quad	0x4016620817fc7608              # double 5.5957340000000002
	.quad	0x400401ad6451b930              # double 2.5008189999999999
	.quad	0x40159a979e16d6dc              # double 5.4009689999999999
	.quad	0x3fd145846e8f29d4              # double 0.269868
	.quad	0x4015a7dd00f776c5              # double 5.4139290000000004
	.quad	0x4020fbbba55d1c3b              # double 8.4916660000000004
	.quad	0x4020cc58ab92c062              # double 8.3991140000000009
	.quad	0x3fecd23d4f15e7c9              # double 0.90066400000000002
	.quad	0x4023bb32acfb762e              # double 9.8656210000000009
	.quad	0x3ff5f7f06705c897              # double 1.373032
	.quad	0x402252af35e310dc              # double 9.1614930000000001
	.quad	0x400695781c714fce              # double 2.8229829999999998
	.quad	0x4003922c881e4713              # double 2.446374
	.quad	0x401cb1615ebfa8f8              # double 7.1732230000000001
	.quad	0x4014a1e85fd04a30              # double 5.1581130000000002
	.quad	0x4006d5bd512ec6bd              # double 2.854365
	.quad	0x4014b96f6512a950              # double 5.1810890000000001
	.quad	0x4000101a79fec99f              # double 2.007863
	.quad	0x3ffef15a4acf312b              # double 1.933924
	.quad	0x401f44ebdd334c5e              # double 7.8173060000000003
	.quad	0x40063e004b7f5a53              # double 2.7802739999999999
	.quad	0x3ff88793dd97f62b              # double 1.5330999999999999
	.quad	0x4002a71ef30a4e38              # double 2.3316020000000002
	.quad	0x401acbc87db2b346              # double 6.6990069999999999
	.quad	0x4012f2a1b5c7cd8a              # double 4.7369450000000004
	.quad	0x400b6010c6f7a0b6              # double 3.421907
	.quad	0x400ba58cd20afa2f              # double 3.455835
	.quad	0x400a54b51372a38c              # double 3.2913610000000002
	.quad	0x4006c0f98fa37692              # double 2.8442259999999999
	.quad	0x4022995bbbe878fb              # double 9.2995280000000005
	.quad	0x401f91198aeb80ed              # double 7.891699
	.quad	0x40134e1437c5692b              # double 4.8262489999999998
	.quad	0x401e21016ce789e7              # double 7.5322319999999995
	.quad	0x3fe2a76d97b30f8c              # double 0.58293799999999996
	.quad	0x400cbeb5b2d4d402              # double 3.5931199999999999
	.quad	0x401f0bddb9841aac              # double 7.7615879999999997
	.quad	0x3ffe3ff69014b59a              # double 1.8906160000000001
	.quad	0x4010d9a9da597d4a              # double 4.2125620000000001
	.quad	0x3ffbe78f25a250f8              # double 1.7440329999999999
	.quad	0x40040a350d2806af              # double 2.5049839999999999
	.quad	0x3fcab4e9813879c4              # double 0.208646
	.quad	0x4009ccb7d41743e9              # double 3.2249599999999998
	.quad	0x40185b0f27bb2fec              # double 6.0889249999999997
	.quad	0x401e68dfbd6a593a              # double 7.6024159999999998
	.quad	0x4019f0fecdd0d8cb              # double 6.485347
	.quad	0x4010fc8259e1f3a5              # double 4.2465909999999996
	.quad	0x401dd4cad57bc7f7              # double 7.4578049999999996
	.quad	0x3fe36f99806f2629              # double 0.60737300000000005
	.quad	0x40151f81a5870da6              # double 5.2807680000000001
	.quad	0x401ea5881a1554fc              # double 7.6616520000000001
	.quad	0x3fdd36933a0407cc              # double 0.45645599999999997
	.quad	0x401e02becedd4845              # double 7.5026809999999999
	.quad	0x400b3a22706d5065              # double 3.4033859999999998
	.quad	0x4017aab5c39bcba3              # double 5.916709
	.quad	0x4016e495e17e34b9              # double 5.7232279999999998
	.quad	0x4012d8c79f666235              # double 4.7116990000000003
	.quad	0x4014bacd9e83e426              # double 5.1824250000000003
	.quad	0x3fef65492ff4ba52              # double 0.98111400000000004
	.quad	0x401c05058dde7a74              # double 7.0049039999999998
	.quad	0x4016e0c9539b8887              # double 5.7195179999999999
	.quad	0x4001e6c3b927d45a              # double 2.2376779999999998
	.quad	0x4011d78e5c4eb570              # double 4.4605040000000002
	.quad	0x3fd727f5e84f0953              # double 0.36181400000000002
	.quad	0x4013b2be0589acbd              # double 4.9245530000000004
	.quad	0x40206548ecd8dbcf              # double 8.1978220000000004
	.quad	0x4020f78316a05575              # double 8.4834219999999991
	.quad	0x4023d8e864020818              # double 9.923648
	.quad	0x4001c4da9003eea2              # double 2.22112
	.quad	0x4018b088d6d3b6cc              # double 6.1723970000000001
	.quad	0x401b511e85fd04a3              # double 6.829218
	.quad	0x402227bedb7281fe              # double 9.0776280000000007
	.quad	0x401de30121682f94              # double 7.4716839999999998
	.quad	0x4017dec80c73abc9              # double 5.9675599999999998
	.quad	0x4023d0008637bd06              # double 9.9062540000000006
	.quad	0x40144a350d2806af              # double 5.0724679999999998
	.quad	0x40087fb506dd69d3              # double 3.062357
	.quad	0x40203ab27cbf6e3f              # double 8.1146429999999992
	.quad	0x40028a6f3f52fc26              # double 2.3175949999999998
	.quad	0x4002760285ec3dab              # double 2.3076219999999998
	.quad	0x4008b64a59c065b6              # double 3.0890089999999999
	.quad	0x401735cd91eeaa6d              # double 5.8025419999999999
	.quad	0x40227b9e8c47a17f              # double 9.2414439999999995
	.quad	0x40007ad7518b0d0f              # double 2.0599810000000001
	.quad	0x401d88de2ac32229              # double 7.3836599999999999
	.quad	0x3fd31b64e054690e              # double 0.29854700000000001
	.quad	0x40180661ae70c133              # double 6.0062319999999998
	.quad	0x400981a47a9e2bd0              # double 3.1883020000000002
	.quad	0x4007a8826aa8eb46              # double 2.9572799999999999
	.quad	0x40233571b0468449              # double 9.6043830000000003
	.quad	0x40109e30caa326e1              # double 4.1544829999999999
	.quad	0x40198d987c6327ee              # double 6.3882770000000004
	.quad	0x401c9ff327aa68f5              # double 7.1562010000000003
	.quad	0x3fb66dbd72bcb5fe              # double 0.087611999999999995
	.quad	0x401f6d90e23af31b              # double 7.8569979999999999
	.quad	0x401d02df0d413123              # double 7.2528040000000003
	.quad	0x3fe9842fa5093965              # double 0.79738600000000004
	.quad	0x4021194b7b28954a              # double 8.5494039999999991
	.quad	0x4013d0121682f944              # double 4.9531939999999999
	.quad	0x4011555b4677b396              # double 4.3333560000000002
	.quad	0x4016a14a4d2b2bfe              # double 5.6575100000000003
	.quad	0x400e65abc0e38a7e              # double 3.7996439999999998
	.quad	0x40129c62a1b5c7ce              # double 4.6527200000000004
	.quad	0x4017e2a737110e45              # double 5.9713409999999998
	.quad	0x3ff7db2f661f18ca              # double 1.491012
	.quad	0x400229185cee17a0              # double 2.2700659999999999
	.quad	0x401cac29bf162ae5              # double 7.1681280000000003
	.quad	0x3ff777ad4b2745bf              # double 1.466718
	.quad	0x40238a4f8726d04e              # double 9.7701379999999993
	.quad	0x40192ab8a5ce5b42              # double 6.2917199999999998
	.quad	0x3ffefb82c2bd7f52              # double 1.936404
	.quad	0x4021b49be8ff327b              # double 8.8527520000000006
	.quad	0x401c8357e670e2c1              # double 7.1282649999999999
	.quad	0x400cc6149c6f36f0              # double 3.5967190000000002
	.quad	0x4013ae1d6494d50f              # double 4.9200340000000002
	.quad	0x40021721d53cddd7              # double 2.2612950000000001
	.quad	0x3ff837824d4cb9ed              # double 1.513552
	.quad	0x40040c892ab68cef              # double 2.5061209999999998
	.quad	0x402020cd855970b5              # double 8.0640680000000007
	.quad	0x4012afbd273d5bab              # double 4.6716199999999999
	.quad	0x4019f413122b7baf              # double 6.4883540000000002
	.quad	0x401aa8b11409a240              # double 6.6647379999999998
	.quad	0x3ff9d35daad60200              # double 1.6141030000000001
	.quad	0x4002b9cb6848beb6              # double 2.3407200000000001
	.quad	0x4007339c94f69caa              # double 2.900201
	.quad	0x401c36598e10cf5b              # double 7.0530759999999999
	.quad	0x400a22a0a958537e              # double 3.2669079999999999
	.quad	0x40037b7281fd9ba2              # double 2.4352770000000001
	.quad	0x40136541d8e86402              # double 4.848884
	.quad	0x40024100e6afcce2              # double 2.2817400000000001
	.quad	0x40234969e3c96894              # double 9.6433859999999995
	.quad	0x4022a2fe1da7b0b4              # double 9.3183450000000007
	.quad	0x4022531337eb28d8              # double 9.1622559999999992
	.quad	0x401f0f922962cfd9              # double 7.765206
	.quad	0x400935d5f56a7ac8              # double 3.1512869999999999
	.quad	0x401830c069e7fb26              # double 6.0476089999999996
	.quad	0x3fe8b395c4220360              # double 0.77192199999999999
	.quad	0x40053f19d66adb40              # double 2.6558109999999999
	.quad	0x401fe796bfca85cb              # double 7.9761610000000002
	.quad	0x400c583d790752db              # double 3.5430860000000002
	.quad	0x402049e236c15d2d              # double 8.144304
	.quad	0x401fc8f190d173fb              # double 7.9462339999999995
	.quad	0x4012014057082492              # double 4.5012220000000003
	.quad	0x401a5fe69270b06c              # double 6.5936529999999998
	.quad	0x4009960285ec3dab              # double 3.1982469999999998
	.quad	0x4020f01d9f4d37c1              # double 8.4689759999999996
	.quad	0x3fab17efe0ce0b91              # double 0.052916999999999999
	.quad	0x4001b6c4827b6fe3              # double 2.214242
	.quad	0x401790d0678c0054              # double 5.8914200000000001
	.quad	0x40001709310129cc              # double 2.0112480000000001
	.quad	0x3fd5466f5019f3c7              # double 0.332424
	.quad	0x40218b7fbefd0071              # double 8.7724589999999996
	.quad	0x40234881a1554fbe              # double 9.6416140000000006
	.quad	0x4020f3f705857aff              # double 8.4764940000000006
	.quad	0x4022bcc7d1bb4917              # double 9.3687120000000003
	.quad	0x40230453f39d1b2e              # double 9.5084529999999994
	.quad	0x401e9e53eb399f5e              # double 7.654617
	.quad	0x4021248626f60e0f              # double 8.5713360000000005
	.quad	0x401ba5629d8409e5              # double 6.9115089999999997
	.quad	0x40187e8a71de69ad              # double 6.1235749999999998
	.quad	0x4021fbe0ded288ce              # double 8.9919499999999992
	.quad	0x4022586940357a35              # double 9.1726779999999994
	.quad	0x4008a8a265f0f5a1              # double 3.082341
	.quad	0x3ff1d12231832fcb              # double 1.113558
	.quad	0x4002afd4bf0995ab              # double 2.335855
	.quad	0x4022a15464dc22ab              # double 9.3150969999999997
	.quad	0x401923d816aceaaf              # double 6.2850039999999998
	.quad	0x3fcfe3864cb5bb38              # double 0.24913099999999999
	.quad	0x401054abe6a337a8              # double 4.082687
	.quad	0x40225ee75ff609dd              # double 9.1853590000000001
	.quad	0x3fe78abb44e50c5f              # double 0.73568500000000003
	.quad	0x401b0081c2e33eff              # double 6.7504949999999999
	.quad	0x40225293af74cd31              # double 9.1612829999999992
	.quad	0x4018020d5629d841              # double 6.0020040000000003
	.quad	0x401f6e4d5d80e497              # double 7.857717
	.quad	0x400454c22ee4191a              # double 2.5413860000000001
	.quad	0x3f85e6bc621b7e0b              # double 0.010694
	.quad	0x40211869a4df47fa              # double 8.5476810000000008
	.quad	0x400b947064ece9a3              # double 3.4474800000000001
	.quad	0x3ff260bc382a12f9              # double 1.148617
	.quad	0x4014d52c59fb1e19              # double 5.2081770000000001
	.quad	0x4010e01e2584f4c7              # double 4.2188650000000001
	.quad	0x3ffe8f5903a7546d              # double 1.9099969999999999
	.quad	0x3fead1f1cfbb9496              # double 0.83812799999999998
	.quad	0x4010874e22a2c237              # double 4.1321339999999998
	.quad	0x401dc4bf8fcd67fd              # double 7.4421369999999998
	.quad	0x401cd168f8e7ddca              # double 7.2045019999999997
	.quad	0x400d2e49f51697f2              # double 3.647602
	.quad	0x402085b0142f61ed              # double 8.2611089999999994
	.quad	0x400a43cd141a6938              # double 3.2831060000000001
	.quad	0x3fcc07aaef2c7326              # double 0.21898400000000001
	.quad	0x4020c25aab474107              # double 8.3795979999999997
	.quad	0x4000b93f6c2699c8              # double 2.0904530000000001
	.quad	0x4011bc0d2c386d2f              # double 4.4336440000000001
	.quad	0x40176bec2480e8c9              # double 5.8553930000000003
	.quad	0x401d406e19b90eaa              # double 7.3129200000000001
	.quad	0x400b4795703f2d3c              # double 3.4099529999999998
	.quad	0x401eb05814940bbb              # double 7.6722109999999998
	.quad	0x401288711d798d8b              # double 4.6332440000000004
	.quad	0x40104e8e60807358              # double 4.0767150000000001
	.quad	0x4018b5d95dd4c76d              # double 6.1775869999999999
	.quad	0x401be2e1693c03bc              # double 6.9715629999999997
	.quad	0x402020d7e02645e5              # double 8.0641470000000002
	.quad	0x4022715df6555c53              # double 9.2214200000000002
	.quad	0x4008604534bd76ee              # double 3.0470069999999998
	.quad	0x401b21efb6dca07f              # double 6.7831409999999996
	.quad	0x40193b45ae5ffa3c              # double 6.3078830000000004
	.quad	0x400c852a411c2a02              # double 3.5650219999999999
	.quad	0x40215efef7c243dd              # double 8.6855390000000003
	.quad	0x401810a393ee5eee              # double 6.0162490000000002
	.quad	0x40231febaf102364              # double 9.5623450000000005
	.quad	0x3ffbb53b4b2fa93b              # double 1.731746
	.quad	0x40125cb5781c7150              # double 4.5905360000000002
	.quad	0x3ff871b4784230fd              # double 1.52776
	.quad	0x401aa8bbd3804535              # double 6.6647790000000002
	.quad	0x401a105857afea3e              # double 6.515962
	.quad	0x401184d76ab58080              # double 4.3797280000000001
	.quad	0x401a80945f9df549              # double 6.6255660000000001
	.quad	0x401dd468448cf7cb              # double 7.4574290000000003
	.quad	0x401dc6c9c0a8d21c              # double 7.4441290000000002
	.quad	0x40211da98676a726              # double 8.5579339999999995
	.quad	0x4000fe108c3f3e03              # double 2.1240549999999998
	.quad	0x3ff1ae696a26e547              # double 1.105081
	.quad	0x3fc718a009f62307              # double 0.18043899999999999
	.quad	0x401ae119ce075f70              # double 6.7198250000000002
	.quad	0x4007041bb8c32a8d              # double 2.8770060000000002
	.quad	0x40036b69552e2fbe              # double 2.4274469999999999
	.quad	0x401b02da122fad6d              # double 6.7527850000000003
	.quad	0x3fe9f7ff151e7536              # double 0.81152299999999999
	.quad	0x400ce6fbd273d5bb              # double 3.6127850000000001
	.quad	0x400cc5710880d802              # double 3.5964070000000001
	.quad	0x400f41deacc92147              # double 3.9071630000000002
	.quad	0x3ff1adff822bbecb              # double 1.1049800000000001
	.quad	0x401af8fd199bb279              # double 6.7431530000000004
	.quad	0x4008535fc3b4f616              # double 3.0407099999999998
	.quad	0x40190810e8858ff7              # double 6.2578769999999997
	.quad	0x40153af20ea5b531              # double 5.3075640000000002
	.quad	0x3fe18fbca1059ea5              # double 0.54879599999999995
	.quad	0x4002f0b73d188f43              # double 2.367537
	.quad	0x40210d60c7c0f451              # double 8.5261289999999992
	.quad	0x4013927dcbddb984              # double 4.8930579999999999
	.quad	0x3ffc89a9973d9ec7              # double 1.783609
	.quad	0x4016f93708aac96d              # double 5.7433740000000002
	.quad	0x4014cab191dde376              # double 5.1979430000000004
	.quad	0x401017a072d1aeb4              # double 4.0230730000000001
	.quad	0x401fb420b3d4ae43              # double 7.9259060000000003
	.quad	0x40234258d5842b73              # double 9.6295839999999994
	.quad	0x3fc43ee1bd1ed9e0              # double 0.158169
	.quad	0x3ffb0914b167ec78              # double 1.6897169999999999
	.quad	0x402177fb480a5acd              # double 8.7343390000000003
	.quad	0x4020996f6512a950              # double 8.2996780000000001
	.quad	0x402051a75cd0bb6f              # double 8.1594800000000003
	.quad	0x400659ec7000431c              # double 2.7939080000000001
	.quad	0x3fb15a187a4a48f9              # double 0.067780999999999994
	.quad	0x4021157bc7f77af6              # double 8.5419599999999996
	.quad	0x40092817fc7607c4              # double 3.144577
	.quad	0x4022fd5e8d5410f9              # double 9.4948619999999994
	.quad	0x4017846a1a500d5f              # double 5.8793110000000004
	.quad	0x3fc481f53825e13b              # double 0.160216
	.quad	0x400886a7ef9db22d              # double 3.06575
	.quad	0x402124a44c7b02d6              # double 8.5715660000000007
	.quad	0x4015423422467be5              # double 5.3146519999999997
	.quad	0x400de053e2d6238e              # double 3.7345350000000002
	.quad	0x4011e4e0daa0cae6              # double 4.4735139999999998
	.quad	0x4015a2528ae74f2f              # double 5.4085179999999999
	.quad	0x400be9f6a93f290b              # double 3.4892400000000001
	.quad	0x3ffcba9e2bcf91a3              # double 1.795561
	.quad	0x4022d5f6db940fed              # double 9.4178990000000002
	.quad	0x401bdbe1a8262457              # double 6.964728
	.quad	0x40223a8fc0d2c387              # double 9.1143780000000003
	.quad	0x40200cb85a4f00ef              # double 8.0248439999999999
	.quad	0x40057db65ecc3e32              # double 2.6863830000000002
	.quad	0x4016ad056c508b33              # double 5.6689660000000002
	.quad	0x400be60c38f36695              # double 3.4873280000000002
	.quad	0x4015d3f24d8fd5cb              # double 5.4569789999999996
	.quad	0x401887963992c8c5              # double 6.132409
	.quad	0x400a7bb8c32a8c9c              # double 3.3104110000000002
	.quad	0x402398fa376922d9              # double 9.7987839999999994
	.quad	0x4018fababead4f59              # double 6.244853
	.quad	0x400b4f861a60d456              # double 3.4138299999999999
	.quad	0x3fcbf822bbecaab9              # double 0.21851000000000001
	.quad	0x401c7ae0c1765775              # double 7.1199979999999998
	.quad	0x4002ec7b890d5a5c              # double 2.3654700000000002
	.quad	0x40085af6c69b5a64              # double 3.044416
	.quad	0x3ffc6990f301eabc              # double 1.775773
	.quad	0x4011d3126e978d50              # double 4.4561250000000001
	.quad	0x3ffb357c4e2f37fc              # double 1.700558
	.quad	0x3ffe6264e48626f6              # double 1.899022
	.quad	0x400ebdd65a14488c              # double 3.8426939999999998
	.quad	0x4020794c01605250              # double 8.2369079999999997
	.quad	0x401f27b9170d62bf              # double 7.7887919999999999
	.quad	0x3fecb8800eae18ad              # double 0.89752200000000004
	.quad	0x4023caa2c2374795              # double 9.8957730000000001
	.quad	0x401b3fe2e6ea8544              # double 6.8123889999999996
	.quad	0x3ff38759253543af              # double 1.2205440000000001
	.quad	0x3fa83947496aad1d              # double 0.047312
	.quad	0x4004c84c6a3bddfd              # double 2.5978020000000002
	.quad	0x4005edb7281fd9ba              # double 2.741072
	.quad	0x40136a8112ba16e8              # double 4.8540080000000003
	.quad	0x3ff278eb0318b934              # double 1.1545209999999999
	.quad	0x40002fecdd0d8cb0              # double 2.0234009999999998
	.quad	0x40232c016052502f              # double 9.5859480000000001
	.quad	0x401c70fadf2ecf20              # double 7.1103319999999997
	.quad	0x3ff5c56e696a26e5              # double 1.3607009999999999
	.quad	0x4011abca5375c8da              # double 4.417764
	.quad	0x40187e978d4fdf3b              # double 6.1236249999999997
	.quad	0x40037d3f5b5fa227              # double 2.436156
	.quad	0x4009d6d655e28aa4              # double 3.2299009999999999
	.quad	0x4011d1932d6ece14              # double 4.454663
	.quad	0x4020c49774256bca              # double 8.3839679999999994
	.quad	0x402316e1deacc921              # double 9.5446919999999995
	.quad	0x402110c3b0c4588a              # double 8.532743
	.quad	0x401fd9207d4e0978              # double 7.9620379999999997
	.quad	0x3fc7ba01eeed8905              # double 0.185364
	.quad	0x401370e1f7d73c92              # double 4.8602369999999997
	.quad	0x40218a39e6ab9b24              # double 8.7699730000000002
	.quad	0x3ff1c301a79fec9a              # double 1.110109
	.quad	0x3fe894ccab3edd8b              # double 0.76816399999999996
	.quad	0x401abf3a9b068124              # double 6.6867470000000004
	.quad	0x401d33c0c1fc8f32              # double 7.3005399999999998
	.quad	0x40214e490a350d28              # double 8.652901
	.quad	0x402186d04e618ce3              # double 8.7633080000000003
	.quad	0x3fed07789a459104              # double 0.90716200000000002
	.quad	0x4019e8bda9435ac9              # double 6.4772860000000003
	.quad	0x402258d32830a0b2              # double 9.1734860000000005
	.quad	0x400af147f1305964              # double 3.3678129999999999
	.quad	0x40184869835158b8              # double 6.0707149999999999
	.quad	0x401af3ac0c62e4d2              # double 6.7379610000000003
	.quad	0x4022b44241c3efae              # double 9.3520679999999992
	.quad	0x4006ccaf709b738e              # double 2.8499439999999998
	.quad	0x4023aad31fcd24e1              # double 9.8336419999999993
	.quad	0x3fda0728e92d55a4              # double 0.40668700000000002
	.quad	0x401da0c176577532              # double 7.4069880000000001
	.quad	0x40078999567dbb17              # double 2.9421870000000001
	.quad	0x4021aa5e13b18dac              # double 8.8327489999999997
	.quad	0x4020506dd69d3027              # double 8.1570879999999999
	.quad	0x3ffffc1df3300de5              # double 1.9990520000000001
	.quad	0x401896e2a80064aa              # double 6.1473490000000002
	.quad	0x40158fd5cb790fb6              # double 5.3904639999999997
	.quad	0x401c2e503fb37436              # double 7.0452279999999998
	.quad	0x40234dc209246bf0              # double 9.6518709999999999
	.quad	0x3ffc3db6e503fb37              # double 1.7650669999999999
	.quad	0x4022e15810624dd3              # double 9.440125
	.quad	0x40202f268d32830a              # double 8.0920909999999999
	.quad	0x3fda07357e670e2c              # double 0.40669
	.quad	0x402377a1a0cf1801              # double 9.7336550000000006
	.quad	0x400baa276b7ed41b              # double 3.4580829999999998
	.quad	0x400e677b395c4220              # double 3.8005279999999999
	.quad	0x402148e065300581              # double 8.6423369999999995
	.quad	0x4012461b2a27f1b7              # double 4.5684630000000004
	.quad	0x4004eb40f66a5508              # double 2.6148699999999998
	.quad	0x4016a97d8cf398e9              # double 5.6655179999999996
	.quad	0x4014876d117b5287              # double 5.1322520000000003
	.quad	0x3ffb4196d8f4f93c              # double 1.7035130000000001
	.quad	0x401503471f79420b              # double 5.2532009999999998
	.quad	0x4013603ff69014b6              # double 4.8439940000000004
	.quad	0x401f47f1b6912125              # double 7.8202579999999999
	.quad	0x402095de7a743a64              # double 8.2927129999999991
	.quad	0x402120d306a2b170              # double 8.5641099999999994
	.quad	0x401db7fb267c6b8b              # double 7.4296689999999996
	.quad	0x400dc826aa8eb463              # double 3.7227299999999999
	.quad	0x3fe4de2ac3222920              # double 0.65212000000000003
	.quad	0x3ff1e64f54d1e96c              # double 1.1187279999999999
	.quad	0x4018a83e425aee63              # double 6.1642999999999999
	.quad	0x4013778cc9a77e5f              # double 4.8667480000000003
	.quad	0x401a035bd512ec6c              # double 6.5032800000000002
	.quad	0x3fda75c8d9f9053a              # double 0.413439
	.quad	0x4021cea52ef911cf              # double 8.9036039999999996
	.quad	0x4007f816aceaaf36              # double 2.9961370000000001
	.quad	0x4011eb4e54f7a919              # double 4.4797909999999996
	.quad	0x3ff7eb2d0a244630              # double 1.4949159999999999
	.quad	0x40148d32830a0b1c              # double 5.1378880000000002
	.quad	0x402312c9d16fc9bc              # double 9.5366959999999991
	.quad	0x4023480eae18ac9f              # double 9.6407369999999996
	.quad	0x4023f816ce789e77              # double 9.9845489999999994
	.quad	0x3fcc1e2de8709742              # double 0.21967100000000001
	.quad	0x40040e27e0ef9980              # double 2.5069119999999998
	.quad	0x401c666a98244e94              # double 7.1000160000000001
	.quad	0x401041e0c5a8155d              # double 4.0643339999999997
	.quad	0x4021da8a1dfb938a              # double 8.9268350000000005
	.quad	0x401b09dcb5781c71              # double 6.7596309999999997
	.quad	0x40226957eed45e92              # double 9.2057490000000008
	.quad	0x40178d6adf71eaff              # double 5.8881030000000001
	.quad	0x401285b7cfe58601              # double 4.6305839999999998
	.quad	0x3fe9b9841aac53b1              # double 0.80389600000000005
	.quad	0x4010712dba4d6e48              # double 4.1105260000000001
	.quad	0x4020d929888f861a              # double 8.4241449999999993
	.quad	0x4023f5ff822bbecb              # double 9.9804650000000005
	.quad	0x401c92a023209678              # double 7.1431889999999996
	.quad	0x40224e7cf1c3265b              # double 9.1532970000000002
	.quad	0x4002c018a43bb40b              # double 2.3437969999999999
	.quad	0x400b54855da27286              # double 3.4162699999999999
	.quad	0x400257fbefd00714              # double 2.292961
	.quad	0x400b016a48733659              # double 3.3756910000000002
	.quad	0x40233473abc94706              # double 9.6024449999999995
	.quad	0x4011c93c46d82ba6              # double 4.4465190000000003
	.quad	0x4008f81d7dbf4880              # double 3.1211500000000001
	.quad	0x40186c31593e5fb7              # double 6.1056569999999999
	.quad	0x40122d9ba1b19610              # double 4.5445390000000003
	.quad	0x40239bdee78183f9              # double 9.8044349999999997
	.quad	0x3ff9e1f5be5d9e41              # double 1.617666
	.quad	0x4007d72ffd1dcd70              # double 2.9800719999999998
	.quad	0x400a7132f87ad081              # double 3.3052730000000001
	.quad	0x3fd14ea8da7f3cf7              # double 0.270426
	.quad	0x40185a91d9b1b79e              # double 6.0884470000000004
	.quad	0x4020eb341e14bdfd              # double 8.4593819999999997
	.quad	0x401903abc947064f              # double 6.2535850000000002
	.quad	0x401d85f91600f345              # double 7.380833
	.quad	0x402181758e219653              # double 8.7528500000000005
	.quad	0x402182cb4289118c              # double 8.7554569999999998
	.quad	0x402321c2e33eff19              # double 9.5659399999999994
	.quad	0x3fdf5a038194c016              # double 0.489869
	.quad	0x40214dc768dfbd6a              # double 8.6519119999999994
	.quad	0x4007a6dd69d30271              # double 2.956477
	.quad	0x400b46527a20578e              # double 3.4093369999999998
	.quad	0x4015f3d35eb7457c              # double 5.488111
	.quad	0x401355592d98bf7f              # double 4.833348
	.quad	0x3ff6b1183b60285f              # double 1.4182360000000001
	.quad	0x3ff3de279dd3bafe              # double 1.2417370000000001
	.quad	0x40065f737da61e0c              # double 2.7966069999999998
	.quad	0x4023221101b00368              # double 9.5665359999999992
	.quad	0x3fd855b035bd512f              # double 0.38023000000000001
	.quad	0x400621d8622c4502              # double 2.7665259999999998
	.quad	0x4020a24d4cb9ecf6              # double 8.3169959999999996
	.quad	0x400921f85d744f5d              # double 3.1415869999999999
	.quad	0x401316cbd987c632              # double 4.7722619999999996
	.quad	0x3ff0de55c0fcb4f2              # double 1.054281
	.quad	0x40212d71d1d4738a              # double 8.5887589999999996
	.quad	0x4021fe3cfb3311a5              # double 8.9965589999999995
	.quad	0x3fc3951c5c5718ec              # double 0.15298800000000001
	.quad	0x400aef355cd91eeb              # double 3.3668010000000002
	.quad	0x4012f8055fbb517a              # double 4.7422079999999998
	.quad	0x40111e4cd7492791              # double 4.2795899999999998
	.quad	0x401ce8a372606fac              # double 7.2271859999999997
	.quad	0x401f248301a79fed              # double 7.7856560000000003
	.quad	0x4017530be0ded289              # double 5.8311000000000002
	.quad	0x4002e31bde82d7b6              # double 2.3608929999999999
	.quad	0x400f2213a0c6b485              # double 3.8916390000000001
	.quad	0x40152777d0f1f57b              # double 5.2885429999999998
	.quad	0x3fb5f1bef49cf56f              # double 0.085720000000000005
	.quad	0x402135d0b73d188f              # double 8.6051079999999995
	.quad	0x401be8509bf9c62a              # double 6.9768699999999999
	.quad	0x40131e05ccc89b0f              # double 4.7793190000000001
	.quad	0x4019142d490e66cb              # double 6.2697039999999999
	.quad	0x3fe6aabcd78c4370              # double 0.70834200000000003
	.quad	0x400e3e76c8b43958              # double 3.7805
	.quad	0x4010a02a77a2cecd              # double 4.1564120000000004
	.quad	0x4007ad2135daad60              # double 2.9595359999999999
	.quad	0x40083baba7b9170d              # double 3.0291359999999998
	.quad	0x402063fa2ad3e921              # double 8.1952680000000004
	.quad	0x3ff83315d701d9f5              # double 1.512472
	.quad	0x401195d9e40c8473              # double 4.3963390000000002
	.quad	0x400922d1f1cfbb95              # double 3.1420020000000002
	.quad	0x401af45846e8f29d              # double 6.7386179999999998
	.quad	0x401cc76188b1140a              # double 7.1947080000000003
	.quad	0x401ca393682730c6              # double 7.1597419999999996
	.quad	0x4021594c22ee4192              # double 8.6744090000000007
	.quad	0x401c5ad46f587d70              # double 7.0887010000000004
	.quad	0x3fff691d9b1b79d9              # double 1.963163
	.quad	0x401f3cf9a06a6e33              # double 7.809546
	.quad	0x401825219a847b24              # double 6.0362609999999997
	.quad	0x4011b76922d948dc              # double 4.4291119999999999
	.quad	0x402387e0ac7da1ec              # double 9.7653859999999994
	.quad	0x40232ff455a7d242              # double 9.5936610000000009
	.quad	0x401ce7b45f17bd8c              # double 7.2262740000000001
	.quad	0x401a51682f944242              # double 6.5794990000000002
	.quad	0x401f9976ff3ade22              # double 7.8998679999999997
	.quad	0x4015a86a098915be              # double 5.4144670000000001
	.quad	0x4000bd566cf41f21              # double 2.0924499999999999
	.quad	0x40028fc04c8bc9cd              # double 2.3201909999999999
	.quad	0x401b0968943e1006              # double 6.759188
	.quad	0x40206ba01eeed890              # double 8.2102059999999994
	.quad	0x4010844d013a92a3              # double 4.1292
	.quad	0x40042e3cd9a52264              # double 2.5225770000000001
	.quad	0x400a619f3c70c997              # double 3.2976670000000001
	.quad	0x3fe54e54f7a91969              # double 0.66581199999999996
	.quad	0x40061c054ef459da              # double 2.7636820000000002
	.quad	0x3fe569f4906034f4              # double 0.669184
	.quad	0x402136dd69d30271              # double 8.6071580000000001
	.quad	0x3ff6544028e4fb98              # double 1.3955690000000001
	.quad	0x3ff134e0114d2f5e              # double 1.0754090000000001
	.quad	0x3fdfe115592d98bf              # double 0.49811299999999997
	.quad	0x4021ac29e0a41a26              # double 8.8362569999999998
	.quad	0x3ff86c3760bf5d79              # double 1.5264200000000001
	.quad	0x4023b90e453d20f3              # double 9.8614370000000004
	.quad	0x401f132c625e99e9              # double 7.7687239999999997
	.quad	0x3ff22a68f4b61fe2              # double 1.135354
	.quad	0x401f8cab3edd8b61              # double 7.887372
	.quad	0x400e208205ff1d82              # double 3.765873
	.quad	0x400f6c74b838c112              # double 3.9279570000000001
	.quad	0x4016ad495182a993              # double 5.669225
	.quad	0x4014818dac258d58              # double 5.1265169999999998
	.quad	0x4011b1ac14c660a2              # double 4.423508
	.quad	0x401821569f490603              # double 6.0325569999999997
	.quad	0x4022c89c5e6ff7e0              # double 9.3918180000000007
	.quad	0x40230afd75e2046c              # double 9.5214649999999991
	.quad	0x401fa1682f944242              # double 7.9076240000000002
	.quad	0x40209def416bdb1a              # double 8.3084659999999992
	.quad	0x40064ca46e08f217              # double 2.787423
	.quad	0x40222970b49e01de              # double 9.0809379999999997
	.quad	0x40130226809d4952              # double 4.7521000000000004
	.quad	0x3fc4fd32c625e99f              # double 0.16397700000000001
	.quad	0x4006ff0cbaf965b2              # double 2.874536
	.quad	0x401114b9cb6848bf              # double 4.2702400000000003
	.quad	0x4020c36dca07f66f              # double 8.3816970000000008
	.quad	0x4008212b5e529bae              # double 3.0161959999999999
	.quad	0x40155ce3de6149c7              # double 5.340713
	.quad	0x3fd96bc621b7e0ac              # double 0.39720299999999997
	.quad	0x4015f29e4d5d80e5              # double 5.4869320000000004
	.quad	0x3ffb84e50c5eb314              # double 1.7199450000000001
	.quad	0x4006db1f255f351a              # double 2.8569930000000001
	.quad	0x40174728e92d55a4              # double 5.8194920000000003
	.quad	0x4012da9c12f09d8c              # double 4.7134859999999996
	.quad	0x4005c950763a1901              # double 2.7232980000000002
	.quad	0x40221d32e7b3d8e0              # double 9.057029
	.quad	0x401e2bf1e8e60807              # double 7.5429149999999998
	.quad	0x4017decfe9b7bf1f              # double 5.9675900000000004
	.quad	0x3ff8630db6a1e81d              # double 1.5241830000000001
	.quad	0x4001821e1d2178f7              # double 2.1885340000000002
	.quad	0x4006021294573a79              # double 2.7510119999999998
	.quad	0x4019d003254e6e22              # double 6.4531369999999999
	.quad	0x40052a6223e18698              # double 2.6456949999999999
	.quad	0x3fea972ef0ae5365              # double 0.830955
	.quad	0x40179aaac1094a2c              # double 5.9010420000000003
	.quad	0x4011811904b3c3e7              # double 4.3760719999999997
	.quad	0x402233417ca2120e              # double 9.1001089999999998
	.quad	0x3ff25e4d5d80e497              # double 1.148023
	.quad	0x3fe3e7e414e7ee91              # double 0.62205699999999997
	.quad	0x40110e5eedcc20d5              # double 4.2640339999999997
	.quad	0x3fe0186fcdee34fc              # double 0.50298299999999996
	.quad	0x40104e503fb37436              # double 4.0764779999999998
	.quad	0x40089547e06961c3              # double 3.0728909999999998
	.quad	0x3fe1bfd2e9468017              # double 0.55466599999999999
	.quad	0x4019d3ea704bc276              # double 6.4569489999999998
	.quad	0x4015ba322af57710              # double 5.431832
	.quad	0x401f784cad57bc7f              # double 7.8674799999999995
	.quad	0x400aa96feb4a6656              # double 3.3327330000000002
	.quad	0x4023a7e670e2c12b              # double 9.8279300000000002
	.quad	0x401dfc669057d178              # double 7.4964849999999998
	.quad	0x40221d3a81dc0db2              # double 9.0570869999999992
	.quad	0x4005f22e1ac57e24              # double 2.743252
	.quad	0x3ffbcb33daf8df7a              # double 1.7371099999999999
	.quad	0x402180ba6266fd65              # double 8.7514219999999998
	.quad	0x4021193c46d82ba6              # double 8.5492880000000007
	.quad	0x400e7817b95a2941              # double 3.8086389999999999
	.quad	0x4023e5271bcdbbe0              # double 9.9475639999999999
	.quad	0x400dcb3edd8b60f2              # double 3.7242410000000001
	.quad	0x40217470435efa61              # double 8.7274189999999994
	.quad	0x40115806af46aa08              # double 4.3359629999999996
	.quad	0x4003b7281fd9ba1b              # double 2.464432
	.quad	0x4007f3c60029f16b              # double 2.99403
	.quad	0x4009ecd6c2efd439              # double 3.2406440000000001
	.quad	0x4001580ecfa69be1              # double 2.1679970000000002
	.quad	0x3fdba5a469d7342f              # double 0.43198500000000001
	.quad	0x401fa935b91f70df              # double 7.9152440000000003
	.quad	0x4023312ddbdb5d89              # double 9.5960529999999994
	.quad	0x3fe479f01b866e44              # double 0.63988500000000004
	.quad	0x4007e6db50f40e5a              # double 2.9877229999999999
	.quad	0x4015ade69ad42c3d              # double 5.4198250000000003
	.quad	0x402114a85caafbc2              # double 8.5403470000000006
	.quad	0x401fc87a4a48f96e              # double 7.9457789999999999
	.quad	0x401b1054ef459d99              # double 6.765949
	.quad	0x401909f2fdb8fde3              # double 6.2597160000000001
	.quad	0x3fe066e653868fd2              # double 0.51256100000000004
	.quad	0x402273dc486ad2dd              # double 9.2262900000000005
	.quad	0x400631159c497742              # double 2.7739669999999998
	.quad	0x400342a8869c66d3              # double 2.4075479999999998
	.quad	0x401129c90c4dec1c              # double 4.2908059999999999
	.quad	0x400173300de4c511              # double 2.181244
	.quad	0x3ff52adf71eafee7              # double 1.322967
	.quad	0x4017160f1b25f634              # double 5.7715420000000002
	.quad	0x40108512a94ff002              # double 4.1299539999999997
	.quad	0x3fe3538476f2a5a4              # double 0.60394499999999995
	.quad	0x4017f44f1a1986ba              # double 5.9885830000000002
	.quad	0x402312c471b47842              # double 9.5366549999999997
	.quad	0x3f8bdd76683c297c              # double 0.013606
	.quad	0x4018fc054ef459da              # double 6.2461140000000004
	.quad	0x4021a4f0307f23cd              # double 8.8221450000000008
	.quad	0x4006d95464dc22ab              # double 2.8561179999999999
	.quad	0x4003cadddf43c7d6              # double 2.474056
	.quad	0x4012cd45e9185cee              # double 4.7004619999999999
	.quad	0x4014645bf26f1dc5              # double 5.098007
	.quad	0x4002d590c0ad03da              # double 2.3542800000000002
	.quad	0x40117b76709fa54c              # double 4.3705689999999997
	.quad	0x3fc915831f03d146              # double 0.195969
	.quad	0x40003ef0f16f4385              # double 2.0307330000000001
	.quad	0x4014a66b6177ea1c              # double 5.1625189999999996
	.quad	0x400fe2b628459967              # double 3.9856989999999999
	.quad	0x4017edcfcc5b8dc5              # double 5.9822379999999997
	.quad	0x3ff18906034f3fd9              # double 1.095953
	.quad	0x4000153a3ec02f30              # double 2.0103650000000002
	.quad	0x40213c193b3a68b2              # double 8.6173800000000007
	.quad	0x4021ef8ab0c88a48              # double 8.9678550000000001
	.quad	0x400016ffc115df65              # double 2.0112299999999999
	.quad	0x4007ecd9e83e425b              # double 2.99065
	.quad	0x4021ce034f3fd934              # double 8.9023690000000001
	.quad	0x4008934ce3de614a              # double 3.0719240000000001
	.quad	0x400ed67ec7863bef              # double 3.8547340000000001
	.quad	0x401ac01322f27350              # double 6.6875730000000004
	.quad	0x401cb85fd04a2fcf              # double 7.180053
	.quad	0x401b64f15e7c8d19              # double 6.8485769999999997
	.quad	0x4012be0e30446b6a              # double 4.6856010000000001
	.quad	0x4020668d972cd7cf              # double 8.2002989999999993
	.quad	0x401ce1b8ed1bf7ad              # double 7.2204319999999997
	.quad	0x401576173b85e80c              # double 5.3653230000000001
	.quad	0x4000aa82a5614df9              # double 2.0832570000000001
	.quad	0x40037b0dd82fd75e              # double 2.4350849999999999
	.quad	0x401ee2c6ef3d3a1d              # double 7.7214619999999998
	.quad	0x3fea5d1e53a81dc1              # double 0.82386700000000002
	.quad	0x4012e6bc1eff9f88              # double 4.7253270000000001
	.quad	0x4021347b890d5a5c              # double 8.6025050000000007
	.quad	0x3ff6c870110a137f              # double 1.423935
	.quad	0x40152a31e7d9988d              # double 5.2912059999999999
	.quad	0x40019d7774aba387              # double 2.2018879999999998
	.quad	0x3fef1769a91105e2              # double 0.97160800000000003
	.quad	0x40218cd35a858794              # double 8.7750500000000002
	.quad	0x401b123fee2c98e5              # double 6.7678219999999998
	.quad	0x4020440ad03d9a95              # double 8.1328949999999995
	.quad	0x400e3a9b8cb8e087              # double 3.7786170000000001
	.quad	0x401acd3671ac14c6              # double 6.7004029999999997
	.quad	0x40086be8bc169c24              # double 3.0526900000000001
	.quad	0x4022d8e410b630a9              # double 9.4236149999999998
	.quad	0x40226d46b26bf877              # double 9.2134300000000007
	.quad	0x401fb672324c8366              # double 7.9281699999999997
	.quad	0x400d09930be0ded3              # double 3.6296750000000002
	.quad	0x400268d08919ef95              # double 2.3011789999999999
	.quad	0x4005007bbb62413e              # double 2.6252360000000001
	.quad	0x401c49210385c67e              # double 7.071415
	.quad	0x401d46045baf533f              # double 7.3183759999999998
	.quad	0x40175af4f0d844d0              # double 5.8388249999999999
	.quad	0x4004de3da2f8bdec              # double 2.6085159999999998
	.quad	0x4009aadddf43c7d6              # double 3.208431
	.quad	0x3fb8cf7caa7589f0              # double 0.096916000000000002
	.quad	0x400bfe2bcf91a32b              # double 3.499107
	.quad	0x401a2e2b063e07a3              # double 6.5450860000000004
	.quad	0x40117a3f4666ec9e              # double 4.3693819999999999
	.quad	0x4015ab66b6177ea2              # double 5.4173840000000002
	.quad	0x3fe875be5d9e40c8              # double 0.76437299999999997
	.quad	0x40060c1a048e043a              # double 2.7559089999999999
	.quad	0x401ed4662bae03b4              # double 7.7074210000000001
	.quad	0x401722ec6bce8534              # double 5.7841050000000003
	.quad	0x4004b9a847b24639              # double 2.5906530000000001
	.quad	0x400d7ab10ba62670              # double 3.6849080000000001
	.quad	0x401f9825e13b18db              # double 7.8985820000000002
	.quad	0x4008717efe0ce0b9              # double 3.055418
	.quad	0x4004b947496aad1d              # double 2.590468
	.quad	0x4008e21b7e0ac7da              # double 3.1104039999999999
	.quad	0x401a27f455a7d242              # double 6.5390180000000004
	.quad	0x40093f1e0828c36e              # double 3.1558190000000002
	.quad	0x4022b701b866e43b              # double 9.3574350000000006
	.quad	0x400a2b4289118c19              # double 3.2711229999999998
	.quad	0x401029d7ba6698bb              # double 4.0408619999999997
	.quad	0x401dd146a1a500d6              # double 7.4543710000000001
	.quad	0x40054518f3eccc47              # double 2.6587390000000002
	.quad	0x401f40ef99806f26              # double 7.8134139999999999
	.quad	0x4014af44d4456712              # double 5.1711609999999997
	.quad	0x4007de3193f6c26a              # double 2.9834930000000002
	.quad	0x401b27baa9b499d0              # double 6.7887979999999999
	.quad	0x40220a5529fe004b              # double 9.0201809999999991
	.quad	0x401c688a04d12019              # double 7.1020890000000003
	.quad	0x40158889c1b54196              # double 5.3833380000000002
	.quad	0x40152ff9b56323bc              # double 5.2968510000000002
	.quad	0x40106922d948dc12              # double 4.1026720000000001
	.quad	0x401e78eef1bac2df              # double 7.6180989999999999
	.quad	0x4022169d94d0dcfd              # double 9.0441710000000004
	.quad	0x400e4650e779207d              # double 3.7843339999999999
	.quad	0x400edd9231c64ba9              # double 3.8581889999999999
	.quad	0x4012452a84380885              # double 4.567545
	.quad	0x4015927807789a46              # double 5.3930360000000004
	.quad	0x401842edfe75bc45              # double 6.0653610000000002
	.quad	0x3fe065f30e7ff584              # double 0.51244500000000004
	.quad	0x401c5cc25072085b              # double 7.0905849999999999
	.quad	0x40209dfb9389b520              # double 8.3085599999999999
	.quad	0x401f9e4e69f05ea2              # double 7.9045959999999997
	.quad	0x400cae9d51b4fe7a              # double 3.585261
	.quad	0x401a6d27807789a4              # double 6.6065959999999997
	.quad	0x4009142a23bff8a9              # double 3.134846
	.quad	0x40158c09c3ce208a              # double 5.3867560000000001
	.quad	0x4022e0e23af31b15              # double 9.4392259999999996
	.quad	0x4016d72c0e7bc3c6              # double 5.7101290000000002
	.quad	0x40157460aa64c2f8              # double 5.3636499999999998
	.quad	0x3ff891e646f15619              # double 1.53562
	.quad	0x400ccb2745bf26f2              # double 3.5991960000000001
	.quad	0x3fed941a6937d1fe              # double 0.92432899999999996
	.quad	0x401d4d1aeb3dd11c              # double 7.3252980000000001
	.quad	0x4020376b5d462c34              # double 8.1082409999999995
	.quad	0x40219d0763a19008              # double 8.8066969999999998
	.quad	0x4022cb22d0e56042              # double 9.3967500000000008
	.quad	0x3fe4dae1cde5d181              # double 0.65171900000000005
	.quad	0x3fe91886df82b1f7              # double 0.78424400000000005
	.quad	0x3fe2c8b86b15f890              # double 0.58700200000000002
	.quad	0x401e463497b7414a              # double 7.5685599999999997
	.quad	0x3ffc75fd47bedb73              # double 1.7788060000000001
	.quad	0x4004e9f6a93f290b              # double 2.6142400000000001
	.quad	0x401910a808c8259e              # double 6.2662659999999999
	.quad	0x4013ef93ff25e56d              # double 4.9839630000000001
	.quad	0x40032b838c111ada              # double 2.3962469999999998
	.quad	0x401b59085f4a1273              # double 6.8369460000000002
	.quad	0x40196a98eda22f6a              # double 6.3540989999999997
	.quad	0x40208cb35f3d7d39              # double 8.2748059999999999
	.quad	0x400f0aefb2aae297              # double 3.8803399999999999
	.quad	0x401d1ca3e7d13511              # double 7.2779689999999997
	.quad	0x3ff65c8b86b15f89              # double 1.397594
	.quad	0x401443ad18d25edd              # double 5.06609
	.quad	0x40199c80841ede12              # double 6.4028340000000004
	.quad	0x4001e558ea7ce0fc              # double 2.2369859999999999
	.quad	0x401b7b6f9fcb0c02              # double 6.8705429999999996
	.quad	0x4007000c0f01fb83              # double 2.8750230000000001
	.quad	0x40043bdcf0307f24              # double 2.5292300000000001
	.quad	0x4021fac061847f56              # double 8.9897489999999998
	.quad	0x4023d5ab9f559b3d              # double 9.9173249999999999
	.quad	0x4022b663c74fb54a              # double 9.35623
	.quad	0x401747d7c2ca148c              # double 5.8201590000000003
	.quad	0x3ffac2c2bd7f51f0              # double 1.6725490000000001
	.quad	0x40226bca9691a75d              # double 9.2105300000000003
	.quad	0x400ce25fa658c4bd              # double 3.6105339999999999
	.quad	0x40161acde19fc2a9              # double 5.5261760000000004
	.quad	0x402218d92fb19e73              # double 9.0485319999999998
	.quad	0x401da154003254e7              # double 7.4075470000000001
	.quad	0x401db9578a2a90cd              # double 7.4309979999999998
	.quad	0x40232e149c6f36f0              # double 9.5900010000000009
	.quad	0x4015fa400fba8827              # double 5.4943850000000003
	.quad	0x4011e8e864020818              # double 4.477449
	.quad	0x402177fa5d28d003              # double 8.7343320000000002
	.quad	0x401186deb95e5aff              # double 4.3817089999999999
	.quad	0x3fb9100a393ee5ef              # double 0.097901000000000002
	.quad	0x3ff33a8c586876e2              # double 1.201794
	.quad	0x401223fbbd7b2032              # double 4.5351400000000002
	.quad	0x401d53c925785f8d              # double 7.3318219999999998
	.quad	0x400de5de9c0229a6              # double 3.737241
	.quad	0x3fe034549b62c775              # double 0.50638799999999995
	.quad	0x40120202539756c9              # double 4.5019619999999998
	.quad	0x40221aec0724b76f              # double 9.0525819999999992
	.quad	0x4021ce75bc44bf4d              # double 8.9032420000000005
	.quad	0x4017f14cec41dd1a              # double 5.9856449999999999
	.quad	0x402365ff609dcf89              # double 9.6992139999999995
	.quad	0x4013ffdef8487b9a              # double 4.9998740000000002
	.quad	0x401c48ca8198f1d4              # double 7.0710850000000001
	.quad	0x400fa9b0ee49f517              # double 3.9578570000000002
	.quad	0x3ff0656abde3fbbd              # double 1.0247599999999999
	.quad	0x3fe2a94ff0025bfb              # double 0.58316800000000002
	.quad	0x3ffdebce8533b107              # double 1.8700699999999999
	.quad	0x401c1d3804534bd7              # double 7.0285339999999996
	.quad	0x40232504816f0069              # double 9.5723000000000002
	.quad	0x401b98d477bbf940              # double 6.899248
	.quad	0x401bd1b60ae9680e              # double 6.954796
	.quad	0x3fbe01de26916441              # double 0.117216
	.quad	0x3ff83f2c3009b307              # double 1.515423
	.quad	0x401dad3458cd20b0              # double 7.4191450000000003
	.quad	0x4017b0eb67c286f9              # double 5.9227730000000003
	.quad	0x3ff1e8943e100608              # double 1.1192820000000001
	.quad	0x401eca51a005c465              # double 7.6975769999999998
	.quad	0x400503f359ff4fd7              # double 2.6269290000000001
	.quad	0x40093ca42aed1394              # double 3.1546099999999999
	.quad	0x3fc0aec0724b76f7              # double 0.130333
	.quad	0x40210e1ac57e23f2              # double 8.5275479999999995
	.quad	0x4010476bc1eff9f8              # double 4.0697469999999996
	.quad	0x400dcbcc6c54bcf1              # double 3.7245110000000001
	.quad	0x3f9fd199bb2788db              # double 0.031073
	.quad	0x4023334fa48301a8              # double 9.6002170000000006
	.quad	0x4012626d04e618ce              # double 4.5961189999999998
	.quad	0x4000dd9c27e95315              # double 2.1082079999999999
	.quad	0x4021b0af81626b2f              # double 8.8450889999999998
	.quad	0x4023f0d1526d8b1e              # double 9.9703470000000003
	.quad	0x4017879d909f1f15              # double 5.8824370000000004
	.quad	0x40007db5525cc426              # double 2.0613809999999999
	.quad	0x400233dd11be6e65              # double 2.2753239999999999
	.quad	0x4000a23c85c24c40              # double 2.0792169999999999
	.quad	0x401c8c6759ab6d01              # double 7.1371130000000003
	.quad	0x40080121682f9442              # double 3.0005519999999999
	.quad	0x4023cd872f33ca32              # double 9.9014220000000002
	.quad	0x400f16d19dece571              # double 3.886142
	.quad	0x401424d099e0e736              # double 5.035952
	.quad	0x4021d05a708ede55              # double 8.9069400000000005
	.quad	0x401873b1d0c80410              # double 6.1129829999999998
	.quad	0x401859be4cd74928              # double 6.0876400000000004
	.quad	0x4020b8c26138fffc              # double 8.3608580000000003
	.quad	0x4021ffd86a8fc0d3              # double 8.9996980000000004
	.quad	0x40215f6577531db4              # double 8.6863209999999995
	.quad	0x4018706b37867f0b              # double 6.1097840000000003
	.quad	0x40162f79c842fa51              # double 5.5463630000000004
	.quad	0x40058caeea63b689              # double 2.6936930000000001
	.quad	0x401b20d844d013a9              # double 6.7820749999999999
	.quad	0x401f35f30e7ff584              # double 7.8026850000000003
	.quad	0x401be61bf37b8d3f              # double 6.9747159999999999
	.quad	0x40076a7f8012dfd7              # double 2.9270010000000002
	.quad	0x401ab1c68ec52a41              # double 6.6736089999999999
	.quad	0x401399e6256366d8              # double 4.9002920000000003
	.quad	0x401cbe3f359ff4fd              # double 7.1857879999999996
	.quad	0x400c373e24febd0a              # double 3.5269740000000001
	.quad	0x4014a20ff540895d              # double 5.158264
	.quad	0x40191a6117720c8d              # double 6.2757610000000001
	.quad	0x4010b093532e7b3e              # double 4.1724370000000004
	.quad	0x4014c14f8b588e37              # double 5.1887800000000004
	.quad	0x4017f1d2178f68be              # double 5.9861529999999998
	.quad	0x40198071c53f39d2              # double 6.3754340000000003
	.quad	0x4010be0ce0b912dc              # double 4.1855960000000003
	.quad	0x4015086338b47c74              # double 5.2581910000000001
	.quad	0x400689bbf0dc768e              # double 2.817253
	.quad	0x3fea6bedfa43fe5d              # double 0.82567500000000005
	.quad	0x401e28e9f6a93f29              # double 7.5399549999999999
	.quad	0x4015459641f64495              # double 5.3179559999999997
	.quad	0x3fff6e09fe86833c              # double 1.9643649999999999
	.quad	0x4012d44998d045fe              # double 4.7073119999999999
	.quad	0x401d3b99d451fc4c              # double 7.3082039999999999
	.quad	0x4014052157689ca2              # double 5.0050100000000004
	.quad	0x3ff7a0780fdc1616              # double 1.476677
	.quad	0x3ffcf49cf56eac86              # double 1.80972
	.quad	0x40166335d249e450              # double 5.5968850000000003
	.quad	0x401aa352220bc383              # double 6.6594930000000003
	.quad	0x402129e518f3eccc              # double 8.5818259999999995
	.quad	0x40220864ece9a2c6              # double 9.0163949999999993
	.quad	0x400fd93c46d82ba6              # double 3.9810720000000002
	.quad	0x40228be5b8561d43              # double 9.273237
	.quad	0x3fc61355475a31a5              # double 0.17246500000000001
	.quad	0x4022673343fa2ad4              # double 9.2015630000000001
	.quad	0x40144f0e0a84be40              # double 5.0772019999999998
	.quad	0x4015754e6e221c8a              # double 5.3645569999999996
	.quad	0x400a878e9f6a93f3              # double 3.3161900000000002
	.quad	0x3fed6eefa1e3eaf7              # double 0.91979200000000005
	.quad	0x40219115592d98bf              # double 8.7833659999999991
	.quad	0x402221235f809918              # double 9.0647230000000008
	.quad	0x401590b88ca3e7d1              # double 5.3913289999999998
	.quad	0x4016ad2bb23571d2              # double 5.6691120000000002
	.quad	0x4006765a9a804966              # double 2.8077899999999998
	.quad	0x4009e6634117f844              # double 3.2374939999999999
	.quad	0x4002d4317acc4ef9              # double 2.3536100000000002
	.quad	0x4004eece13f4a98b              # double 2.6166040000000002
	.quad	0x4010ce731d2e0e30              # double 4.2016109999999998
	.quad	0x401df8b3b320535d              # double 7.4928730000000003
	.quad	0x401c379dd3bafd97              # double 7.0543129999999996
	.quad	0x4009f7efe0ce0b91              # double 3.2460629999999999
	.quad	0x402079b52007dd44              # double 8.2377099999999998
	.quad	0x4015c2a3486f049b              # double 5.4400760000000004
	.quad	0x3feb280064a9cdc4              # double 0.84863299999999997
	.quad	0x400882cb20fb224b              # double 3.0638640000000001
	.quad	0x3fff65daf07bfe7e              # double 1.962367
	.quad	0x40218e34fc610f0f              # double 8.7777480000000008
	.quad	0x3ffedabd1aa821f3              # double 1.9284030000000001
	.quad	0x3ff4208f21709310              # double 1.257949
	.quad	0x3fc4e264e48626f6              # double 0.163159
	.quad	0x4010bfcb4f1e4b45              # double 4.1872990000000003
	.quad	0x4010d29b280f12c2              # double 4.2056699999999996
	.quad	0x4019303686a4ca4f              # double 6.2970829999999998
	.quad	0x3fe74aec8d5c7475              # double 0.72789599999999999
	.quad	0x401f61a5870da5db              # double 7.845358
	.quad	0x402087db4cc25072              # double 8.2653449999999999
	.quad	0x4023686ad2dcb146              # double 9.7039399999999993
	.quad	0x40174d29dc725c3e              # double 5.8253550000000001
	.quad	0x4016093293d102bc              # double 5.5089819999999996
	.quad	0x4020732096787ce9              # double 8.2248579999999993
	.quad	0x4021cf765fd8adac              # double 8.9052000000000006
	.quad	0x4020c7f9b56323bc              # double 8.3905770000000003
	.quad	0x40160433508f648c              # double 5.5041019999999996
	.quad	0x4018681a9b8cb8e1              # double 6.1016640000000004
	.quad	0x40190afa7221858c              # double 6.2607210000000002
	.quad	0x4017890a7829068a              # double 5.8838290000000004
	.quad	0x40029e6256366d7a              # double 2.3273359999999998
	.quad	0x3ffa204af922962d              # double 1.632884
	.quad	0x3fc6e297396d0918              # double 0.17879
	.quad	0x3ff3fd9ba1b19610              # double 1.2494160000000001
	.quad	0x3fdd43ed959a3098              # double 0.45727099999999998
	.quad	0x400abae5796bfca8              # double 3.3412579999999998
	.quad	0x3fe3c43d46b26bf8              # double 0.61770499999999995
	.quad	0x401750fb65668c26              # double 5.8290839999999999
	.quad	0x40095f25e56cd6c3              # double 3.171459
	.quad	0x40028298cc144029              # double 2.313768
	.quad	0x400417ff9b56323c              # double 2.5117180000000001
	.quad	0x4007cf75d9a0f0a6              # double 2.976299
	.quad	0x40238f993d5347a6              # double 9.7804660000000005
	.quad	0x40085707182235b5              # double 3.042494
	.quad	0x3fd0ee2003ab862b              # double 0.26453399999999999
	.quad	0x4018f2ba5a038195              # double 6.2370390000000002
	.quad	0x4013f068986fcdee              # double 4.9847739999999998
	.quad	0x401bd155d5f56a7b              # double 6.9544290000000002
	.quad	0x400f8de8709741d1              # double 3.9442910000000002
	.quad	0x401ff2452c59fb1e              # double 7.9865919999999999
	.quad	0x40051e004b7f5a53              # double 2.6396489999999999
	.quad	0x402309ebe9c88616              # double 9.5193779999999997
	.quad	0x4016c9acbc8c0ce9              # double 5.6969479999999999
	.quad	0x40150aeb80ecfa6a              # double 5.2606640000000002
	.quad	0x400f7e57d9dba909              # double 3.9366910000000002
	.quad	0x4000fe1d2178f68c              # double 2.1240790000000001
	.quad	0x4012370fbeb9e493              # double 4.5537710000000002
	.quad	0x4015f5410f94c87a              # double 5.4895060000000004
	.quad	0x40136953586ca8a0              # double 4.8528570000000002
	.quad	0x400d688df37329c3              # double 3.6760519999999999
	.quad	0x402102d81adea897              # double 8.5055549999999993
	.quad	0x4013806e9ff0cbb0              # double 4.8754220000000004
	.quad	0x3fff8a90470a808d              # double 1.9713290000000001
	.quad	0x400b7d933e35c5b5              # double 3.4363160000000001
	.quad	0x3ff7b727136a4010              # double 1.4822150000000001
	.quad	0x40155c9ea9a3d2d8              # double 5.3404489999999996
	.quad	0x4022d70f5a1016ce              # double 9.4200389999999992
	.quad	0x3ff38b827fa1a0cf              # double 1.22156
	.quad	0x401b594e1a3f4667              # double 6.8372120000000001
	.quad	0x4016264b2314013f              # double 5.5373960000000002
	.quad	0x3ffd0b1ee2435697              # double 1.815215
	.quad	0x40097a46173b85e8              # double 3.184704
	.quad	0x4023c8672756861f              # double 9.8914120000000007
	.quad	0x4010bcbddb9841ab              # double 4.1843180000000002
	.quad	0x3fee9c347e8ccdd9              # double 0.95656799999999997
	.quad	0x40148f4b1ee24357              # double 5.1399350000000004
	.quad	0x40182e40852b4d8c              # double 6.0451680000000003
	.quad	0x40216f80346dc5d6              # double 8.7177749999999996
	.quad	0x400db0025bfad29a              # double 3.7109420000000002
	.quad	0x401708a86d71f362              # double 5.7584549999999997
	.quad	0x3ff935bd512ec6bd              # double 1.57562
	.quad	0x40204065f9591cd2              # double 8.1257780000000004
	.quad	0x401b8317268d3283              # double 6.878018
	.quad	0x3fe463c105186db5              # double 0.63717699999999999
	.quad	0x3fe211cf355cd91f              # double 0.56467400000000001
	.quad	0x401d61cb89d6adf7              # double 7.3455029999999999
	.quad	0x401c47674d163348              # double 7.0697299999999998
	.quad	0x401c64873365881a              # double 7.0981719999999999
	.quad	0x40225361bb05faec              # double 9.1628550000000004
	.quad	0x40201b10129cbab6              # double 8.0528569999999995
	.quad	0x3ff1489b0ee49f51              # double 1.0802259999999999
	.quad	0x401cab4e11dbca97              # double 7.1672900000000004
	.quad	0x4019217a02fb5d03              # double 6.2826919999999999
	.quad	0x4011bc8259e1f3a5              # double 4.4340909999999996
	.quad	0x4012780e496ededb              # double 4.6172420000000001
	.quad	0x402100980b242071              # double 8.5011600000000005
	.quad	0x401de78a2a90cd42              # double 7.4761129999999998
	.quad	0x401085c13fd0d068              # double 4.1306200000000004
	.quad	0x400f12d4d4024b34              # double 3.8841950000000001
	.quad	0x401052174c4cdfad              # double 4.0801670000000003
	.quad	0x3fea8f345069a4df              # double 0.82998099999999997
	.quad	0x40224c906034f3fe              # double 9.1495390000000008
	.quad	0x3ff0bb7c7820a30e              # double 1.0457730000000001
	.quad	0x40204c1a8ac5c140              # double 8.1486400000000003
	.quad	0x40167e2584f4c6e7              # double 5.6231900000000001
	.quad	0x4023b4057082491b              # double 9.851604
	.quad	0x3ff0c3361565c2d2              # double 1.0476589999999999
	.quad	0x40217f1b69121251              # double 8.7482559999999996
	.quad	0x401616fac6045baf              # double 5.5224409999999997
	.quad	0x4010a3d07c84b5dd              # double 4.1599750000000002
	.quad	0x4020e9758e219653              # double 8.4559750000000005
	.quad	0x4008f85c67dfe32a              # double 3.12127
	.quad	0x402370bfe3b03e21              # double 9.7202140000000003
	.quad	0x3fe796ebd4cfd08d              # double 0.73717299999999997
	.quad	0x3fdbb8bac710cb29              # double 0.43314999999999998
	.quad	0x4008d32acfb762d8              # double 3.1031089999999999
	.quad	0x3fc79b77c02afddb              # double 0.18443200000000001
	.quad	0x4003d3bb83cf2cf9              # double 2.4783849999999998
	.quad	0x4010ce008e9b38d6              # double 4.201174
	.quad	0x4021f79f01b866e4              # double 8.9836349999999995
	.quad	0x3fb96440f2389720              # double 0.099185999999999996
	.quad	0x40169ec0b567557a              # double 5.6550320000000003
	.quad	0x4022d611fd5885d3              # double 9.4181059999999998
	.quad	0x40105e96c3fc43b3              # double 4.0923720000000001
	.quad	0x400e1b402d16b980              # double 3.763306
	.quad	0x401ca2235b4edb2f              # double 7.1583379999999996
	.quad	0x3ffe92ce032db1ea              # double 1.910841
	.quad	0x402020a137f38c54              # double 8.0637299999999996
	.quad	0x4011f46ed245b292              # double 4.4887040000000002
	.quad	0x3fd285015c209247              # double 0.28936800000000001
	.quad	0x40178ef5232d2bb2              # double 5.8896069999999998
	.quad	0x400c4ff865d7cb2e              # double 3.5390480000000002
	.quad	0x401d68754f3775b8              # double 7.3520099999999999
	.quad	0x402363ab430f4949              # double 9.6946659999999997
	.quad	0x401ecd8f0c77dd87              # double 7.7007409999999998
	.quad	0x3fe0538ef34d6a16              # double 0.51019999999999999
	.quad	0x40181fa26a22b389              # double 6.0308929999999998
	.quad	0x3ff6cb9baa1511e0              # double 1.424709
	.quad	0x40113a5f84cad57c              # double 4.3070050000000002
	.quad	0x401bc41205bc01a3              # double 6.9414749999999996
	.quad	0x401afe47991bc558              # double 6.7483199999999997
	.quad	0x3fed3a775fb2edfe              # double 0.91338699999999995
	.quad	0x401e2132b55ef1fe              # double 7.5324200000000001
	.quad	0x401601bef49cf56f              # double 5.5017050000000003
	.quad	0x401a2d6dc1a47a9e              # double 6.5443639999999998
	.quad	0x401f01f85d744f5d              # double 7.7519239999999998
	.quad	0x40201c55432873bd              # double 8.0553380000000008
	.quad	0x4013a5bc01a36e2f              # double 4.9118500000000003
	.quad	0x401e5d173fb7a5f4              # double 7.5909089999999999
	.quad	0x4022d55065732160              # double 9.4166290000000004
	.quad	0x3fe49a6d698fe692              # double 0.64385099999999995
	.quad	0x40211985f06f6944              # double 8.5498499999999992
	.quad	0x400e96177ea1c68f              # double 3.8232870000000001
	.quad	0x3ff9e8d10f51ac9b              # double 1.61934
	.quad	0x402218691ea78af4              # double 9.0476770000000001
	.quad	0x40219289dadfb507              # double 8.7862080000000002
	.quad	0x4008b2aae297396d              # double 3.08724
	.quad	0x401c8ccee5abc0e4              # double 7.1375080000000004
	.quad	0x4014696f6512a950              # double 5.1029640000000001
	.quad	0x402204b966be7afa              # double 9.0092269999999992
	.quad	0x3ffba27f1b691212              # double 1.7271719999999999
	.quad	0x401d76f0068db8bb              # double 7.3661500000000002
	.quad	0x40033f162ae4b018              # double 2.4058039999999998
	.quad	0x402197aa25d8d79d              # double 8.7962199999999999
	.quad	0x3ff3d86ca89fc6da              # double 1.2403379999999999
	.quad	0x401ee1476af89c5e              # double 7.7199989999999996
	.quad	0x40229c0ee06d9381              # double 9.3048009999999994
	.quad	0x401ba67dbb16c1e3              # double 6.9125889999999997
	.quad	0x4020a6594af4f0d8              # double 8.3248999999999995
	.quad	0x3fe13a3875925354              # double 0.53835699999999997
	.quad	0x4022a97b7414a4d3              # double 9.3310200000000005
	.quad	0x3feedde9c0229a5f              # double 0.96458900000000002
	.quad	0x401728769ec2ce46              # double 5.7895149999999997
	.quad	0x40143497fa5d28d0              # double 5.051361
	.quad	0x40238a5b0ff10ecb              # double 9.7702259999999991
	.quad	0x4020e7357e670e2c              # double 8.4515799999999998
	.quad	0x40157b224aada33c              # double 5.3702480000000001
	.quad	0x40204e87b139c94f              # double 8.1533789999999993
	.quad	0x4023d9da7b0b3919              # double 9.9254949999999997
	.quad	0x401d62b1f687b13a              # double 7.3463820000000002
	.quad	0x4020407e175d13d7              # double 8.1259619999999995
	.quad	0x40182bad7d7c2ca1              # double 6.0426539999999997
	.quad	0x401381682f944242              # double 4.8763740000000002
	.quad	0x40204e939eadd591              # double 8.1534700000000004
	.quad	0x40008c11a11233df              # double 2.0683929999999999
	.quad	0x40136ba6266fd652              # double 4.8551260000000003
	.quad	0x3fd9da61e0c5a815              # double 0.40395399999999998
	.quad	0x401e6266772d5e07              # double 7.5960939999999999
	.quad	0x401140dcb9a9da59              # double 4.3133419999999996
	.quad	0x40028a5efe931876              # double 2.317564
	.quad	0x4019379d0a67620f              # double 6.3043100000000001
	.quad	0x401fdcbfb15b573f              # double 7.9655750000000002
	.quad	0x4013909dcf893faf              # double 4.8912269999999998
	.quad	0x4017bad70e6f2e8c              # double 5.932461
	.quad	0x40031da597d49d7c              # double 2.3894760000000002
	.quad	0x3fe0ab9b23dd54da              # double 0.52094799999999997
	.quad	0x3ff8871a3b14a904              # double 1.5329839999999999
	.quad	0x3fff7d8adab9f55a              # double 1.9681500000000001
	.quad	0x401f78c3f3e0370d              # double 7.8679350000000001
	.quad	0x400efc77143393ab              # double 3.8732739999999999
	.quad	0x3fe45710880d801b              # double 0.63562799999999997
	.quad	0x40183e5a78f25a25              # double 6.0608919999999999
	.quad	0x3fd773c925785f8d              # double 0.36644199999999999
	.quad	0x401d8071c53f39d2              # double 7.3754340000000003
	.quad	0x4022f59d7774aba4              # double 9.4797170000000008
	.quad	0x4017e3929ed3953e              # double 5.9722390000000001
	.quad	0x401541fddebd9019              # double 5.3144450000000001
	.quad	0x402069f75104d552              # double 8.2069650000000003
	.quad	0x4017d7c06e19b90f              # double 5.9606950000000003
	.quad	0x400309f59ccfaeff              # double 2.3798629999999998
	.quad	0x401d025892684cf0              # double 7.2522909999999996
	.quad	0x4014c9ea14057082              # double 5.1971819999999997
	.quad	0x401f0108c3f3e037              # double 7.7510099999999999
	.quad	0x401fd4228997c3d7              # double 7.9571630000000004
	.quad	0x4015bcd63cb81733              # double 5.4344109999999999
	.quad	0x401faf2cb641700d              # double 7.9210690000000001
	.quad	0x40187800218def41              # double 6.1171879999999996
	.quad	0x4018a9acffa7eb6c              # double 6.165699
	.quad	0x4018094e5d5b24ea              # double 6.0090880000000002
	.quad	0x3fd8b1960fa15db3              # double 0.38583899999999999
	.quad	0x401c180cb6c7a7ca              # double 7.0234860000000001
	.quad	0x4004b45846e8f29d              # double 2.5880589999999999
	.quad	0x4002813d31b9b670              # double 2.3131050000000002
	.quad	0x40160dd5d3dc8b87              # double 5.5135110000000003
	.quad	0x401f596d4c33b539              # double 7.8373309999999998
	.quad	0x400c3a450acc0bdd              # double 3.5284520000000001
	.quad	0x400442ff08893b7e              # double 2.5327130000000002
	.quad	0x3fef6cd6c2efd439              # double 0.98203600000000002
	.quad	0x401bea8ef77f27fe              # double 6.9790609999999997
	.quad	0x4023b8d002e23290              # double 9.8609620000000007
	.quad	0x3ff59e8d5410f94d              # double 1.3512090000000001
	.quad	0x4010e16db0dd82fd              # double 4.2201449999999996
	.quad	0x4022335350092ccf              # double 9.1002449999999993
	.quad	0x401e09f4d37c1377              # double 7.5097230000000001
	.quad	0x400db1f8a0902de0              # double 3.7119
	.quad	0x3ff3ad634549b62c              # double 1.2298309999999999
	.quad	0x401cf47baa9b499d              # double 7.238753
	.quad	0x40201c22036006d1              # double 8.0549470000000003
	.quad	0x402197a3b9ae0c17              # double 8.7961709999999993
	.quad	0x400d7aecd07852f8              # double 3.685022
	.quad	0x40029605ab3aabcd              # double 2.3232529999999998
	.quad	0x4021b5a57646ae3a              # double 8.8547779999999996
	.quad	0x40224f5f2cb64170              # double 9.1550229999999999
	.quad	0x401db76188b1140a              # double 7.4290830000000003
	.quad	0x3ff5d192641b328b              # double 1.3636649999999999
	.quad	0x3fff31a7e3087875              # double 1.9496230000000001
	.quad	0x400fe3fbbd7b2032              # double 3.9863200000000001
	.quad	0x4013bd5c31593e60              # double 4.9349220000000003
	.quad	0x4018f447c30d306a              # double 6.2385549999999999
	.quad	0x3feb9f0a1be2b496              # double 0.86316400000000004
	.quad	0x40203dc2d2780779              # double 8.1206270000000007
	.quad	0x401a3a8155d5f56a              # double 6.5571339999999996
	.quad	0x401bc5d4a5df223a              # double 6.9431940000000001
	.quad	0x4022d15b573eab36              # double 9.4088999999999992
	.quad	0x4021f673e681a9b9              # double 8.9813530000000004
	.quad	0x4008517a46173b86              # double 3.039784
	.quad	0x40168dcb9a9da598              # double 5.6384720000000002
	.quad	0x400153b9f127f5e8              # double 2.1658819999999999
	.quad	0x40221f8cc9a77e5f              # double 9.0616210000000006
	.quad	0x401feb7132724313              # double 7.9799239999999995
	.quad	0x40162328f9f44d44              # double 5.5343359999999997
	.quad	0x40192ae74f2f123c              # double 6.2918979999999998
	.quad	0x4022af4e65bea0ba              # double 9.3423949999999998
	.quad	0x3ffe273f748a1598              # double 1.884582
	.quad	0x4021ee0e736049ed              # double 8.9649540000000005
	.quad	0x3fe159988d2a1f8e              # double 0.54218699999999997
	.quad	0x40202f8f4730403a              # double 8.0928900000000006
	.quad	0x401fce07a28bb0a3              # double 7.9512010000000001
	.quad	0x40218d62bf11f927              # double 8.7761440000000004
	.quad	0x401cd3358f2e05cd              # double 7.2062590000000002
	.quad	0x40164e22e5de15ca              # double 5.5763049999999996
	.quad	0x3ff3fe35c5b4aa97              # double 1.249563
	.quad	0x4015bfa5093964a6              # double 5.4371530000000003
	.quad	0x4017b7a24894c448              # double 5.9293300000000002
	.quad	0x402282c1f42bb667              # double 9.2553859999999997
	.quad	0x401d3be2f7b17ce5              # double 7.3084829999999998
	.quad	0x3ff5ad8a116659d1              # double 1.354868
	.quad	0x40101bea91d9b1b8              # double 4.0272620000000003
	.quad	0x401a13f85510d38d              # double 6.5195020000000001
	.quad	0x4023a0d32830a0b2              # double 9.8141110000000005
	.quad	0x3ff51f3f961804da              # double 1.3201290000000001
	.quad	0x40103d16b97fe8ee              # double 4.0596569999999996
	.quad	0x4012c17dae81882b              # double 4.6889560000000001
	.quad	0x3ff7490a350d2807              # double 1.4553320000000001
	.quad	0x3ffe5774256bca53              # double 1.8963509999999999
	.quad	0x3ff0df202107b784              # double 1.0544739999999999
	.quad	0x40175e08aefb2aae              # double 5.8418299999999999
	.quad	0x4018ea98aa8650e7              # double 6.2290979999999996
	.quad	0x40182f8a4c1ebc84              # double 6.0464260000000003
	.quad	0x40117b24e9c45458              # double 4.3702579999999998
	.quad	0x401fecaafbc1acde              # double 7.9811209999999999
	.quad	0x4010e1950331e3a8              # double 4.2202950000000001
	.quad	0x4022fe8c0485a0be              # double 9.4971619999999994
	.quad	0x401af2c5197a2489              # double 6.7370799999999997
	.quad	0x3febb925bb7b6bb1              # double 0.86635099999999998
	.quad	0x400dbf45e0b4e11e              # double 3.7183950000000001
	.quad	0x402126b93ccd0fe9              # double 8.5756320000000006
	.quad	0x4018046f15619115              # double 6.0043300000000004
	.quad	0x40233d694ccab3ee              # double 9.6199440000000003
	.quad	0x40237fbb2fec56d6              # double 9.7494750000000003
	.quad	0x4015c8626f60e0eb              # double 5.4456879999999996
	.quad	0x400d2963dc486ad3              # double 3.6452100000000001
	.quad	0x4004d414a4d2b2c0              # double 2.6035550000000001
	.quad	0x401d69be09bb6aa5              # double 7.3532640000000002
	.quad	0x40230d1e53a81dc1              # double 9.5256220000000002
	.quad	0x400beeee0f3cb3e5              # double 3.4916649999999998
	.quad	0x40188845564b6630              # double 6.1330770000000001
	.quad	0x401ee427418d690a              # double 7.7228060000000003
	.quad	0x400c480b673c4f3c              # double 3.5351780000000002
	.quad	0x401c10079a2834d2              # double 7.0156539999999996
	.quad	0x40208c853c148345              # double 8.2744540000000004
	.quad	0x40184620ab713272              # double 6.0684839999999998
	.quad	0x4020bb1876188b11              # double 8.3654209999999996
	.quad	0x4023f128e0c9d9d3              # double 9.9710149999999995
	.quad	0x400cc7967caea748              # double 3.5974550000000001
	.quad	0x3fffc8f53c579f23              # double 1.9865619999999999
	.quad	0x4013dcc2d6a9c561              # double 4.9655870000000002
	.quad	0x401413c68661ae71              # double 5.0193120000000002
	.quad	0x4013ac0724b76f6d              # double 4.9179959999999996
	.quad	0x40045573eab367a1              # double 2.541725
	.quad	0x4023cd36501e2585              # double 9.900805
	.quad	0x40233459d99029ae              # double 9.6022479999999995
	.quad	0x401b4bbcb1cc9646              # double 6.8239619999999999
	.quad	0x4013404a2fcefaa4              # double 4.8127829999999996
	.quad	0x4020715d701d9f4d              # double 8.2214159999999996
	.quad	0x4020ea450acc0bdd              # double 8.4575580000000006
	.quad	0x3ffecc7b02d59d56              # double 1.924922
	.quad	0x402008e10cf5b1c8              # double 8.0173419999999993
	.quad	0x3fe61cda2b5a20de              # double 0.69102200000000003
	.quad	0x4012ecd20afa2f06              # double 4.7312700000000003
	.quad	0x4004f632c1f42bb6              # double 2.6202139999999998
	.quad	0x401329fe86833c60              # double 4.79101
	.quad	0x400cda87a072d1af              # double 3.6067040000000001
	.quad	0x401081e8e6080735              # double 4.1268649999999996
	.quad	0x4001f9f44d445671              # double 2.2470479999999999
	.quad	0x401217a28bb0a2cb              # double 4.5230810000000004
	.quad	0x3ff8cce703afb7e9              # double 1.550025
	.quad	0x4005ba4e7ab75643              # double 2.71597
	.quad	0x40200ed22424a277              # double 8.0289470000000005
	.quad	0x40193d712a0ec743              # double 6.3100019999999999
	.quad	0x40171d2d87f88766              # double 5.7784940000000002
	.quad	0x4022acd940789614              # double 9.3375950000000003
	.quad	0x3fd71fab96f21f6d              # double 0.36130800000000002
	.quad	0x40099d99029ae4f3              # double 3.2019519999999999
	.quad	0x4007c169c23b7953              # double 2.9694400000000001
	.quad	0x401f753868fd199c              # double 7.8644730000000003
	.quad	0x4014b63e8dda48b6              # double 5.1779729999999997
	.quad	0x401ee7de5082cf53              # double 7.7264340000000002
	.quad	0x401761882adc4c9d              # double 5.8452460000000004
	.quad	0x401e128240b78034              # double 7.5180749999999996
	.quad	0x400ed0c77dd872f3              # double 3.8519429999999999
	.quad	0x40102ddd2ae8e1d6              # double 4.0447889999999997
	.quad	0x4023cf4666ec9e23              # double 9.9048339999999992
	.quad	0x40047d0bfa0945fa              # double 2.5610580000000001
	.quad	0x40162589acbc8c0d              # double 5.5366580000000001
	.quad	0x40184ff08893b7d8              # double 6.0780659999999997
	.quad	0x3ff5ac710cb295ea              # double 1.3546
	.quad	0x4011d1f42bb66730              # double 4.4550330000000002
	.quad	0x401f882c2bd7f51f              # double 7.882981
	.quad	0x401324e4c942d491              # double 4.7860290000000001
	.quad	0x400f310a99b6f5cb              # double 3.898946
	.quad	0x3febc2e9899bf594              # double 0.86754299999999995
	.quad	0x3fe19563a9f383f1              # double 0.54948600000000003
	.quad	0x4011aaa0cae642c0              # double 4.4166290000000004
	.quad	0x3fccb0d9513f8db5              # double 0.22414700000000001
	.quad	0x3fe2ebfa8f7db6e5              # double 0.591306
	.quad	0x3fe4ac55c96030c2              # double 0.64603699999999997
	.quad	0x400afe4ef0281ba8              # double 3.374174
	.quad	0x4022ac00fba8826b              # double 9.3359450000000006
	.quad	0x4023c8316a055758              # double 9.8910020000000002
	.quad	0x401a671b0468448d              # double 6.600689
	.quad	0x401871c219eb6391              # double 6.1110920000000002
	.quad	0x4015cdd6e04c0592              # double 5.4510149999999999
	.quad	0x40195369fcf3dc05              # double 6.3314589999999997
	.quad	0x400c91ceaf251c19              # double 3.5711949999999999
	.quad	0x40225118e325d4a6              # double 9.1583930000000002
	.quad	0x4013d0589acbc8c1              # double 4.9534630000000002
	.quad	0x401e6427418d690a              # double 7.5978060000000003
	.quad	0x3feab1183b60285f              # double 0.83411800000000003
	.quad	0x3ff1910f51ac9afe              # double 1.097915
	.quad	0x400f462aa19439de              # double 3.9092609999999999
	.quad	0x3fe67e3f359ff4fd              # double 0.70291099999999995
	.quad	0x3ffbce71476af89c              # double 1.7379009999999999
	.quad	0x40078faacd9e83e4              # double 2.9451499999999999
	.quad	0x401899e0a41a261c              # double 6.150271
	.quad	0x401f8b2bfdb4cc25              # double 7.8859099999999999
	.quad	0x401e9c6088d6d3b7              # double 7.6527120000000001
	.quad	0x402203474107314d              # double 9.0064030000000006
	.quad	0x40162f66a5508701              # double 5.5462899999999999
	.quad	0x4023446327ed84d3              # double 9.6335689999999996
	.quad	0x401ba4f7ec3547e0              # double 6.9111019999999996
	.quad	0x401ac7bdcf0307f2              # double 6.6950599999999998
	.quad	0x3ffdf24fa8b4bf90              # double 1.871658
	.quad	0x400e0e3ef284167b              # double 3.7569560000000002
	.quad	0x401580f12c27a637              # double 5.3759199999999998
	.quad	0x401ed388ebcc6c55              # double 7.7065770000000002
	.quad	0x401ca5e892253112              # double 7.1620200000000001
	.quad	0x401f09cb252ce033              # double 7.7595640000000001
	.quad	0x402207b5f1bef49d              # double 9.0150600000000001
	.quad	0x4021548d1958969a              # double 8.6651389999999999
	.quad	0x4015b70b49e01de2              # double 5.4287539999999996
	.quad	0x4002a9014b599aa6              # double 2.332522
	.quad	0x4021a093faf42785              # double 8.8136290000000006
	.quad	0x4021472b239a38fc              # double 8.6390010000000003
	.quad	0x40037ced916872b0              # double 2.4359999999999999
	.quad	0x401f893d102bc72e              # double 7.8840219999999999
	.quad	0x40033fbacb428912              # double 2.4061180000000002
	.quad	0x40136c84b5dcc63f              # double 4.8559749999999999
	.quad	0x4014c0e736049ecb              # double 5.1883819999999998
	.quad	0x401d675f6fd21ff3              # double 7.3509500000000001
	.quad	0x3ff30c63f141205c              # double 1.1905250000000001
	.quad	0x4023f5d31337eb29              # double 9.9801260000000002
	.quad	0x400a1239a38fbca1              # double 3.258899
	.quad	0x3ff5875d56f32bdc              # double 1.345548
	.quad	0x4019b471f79420b4              # double 6.4262160000000002
	.quad	0x4020f8e6299524c0              # double 8.4861310000000003
	.quad	0x402271e57d9dba91              # double 9.2224540000000008
	.quad	0x3ffcebf76a2f48c3              # double 1.807609
	.quad	0x40149456b441bb8c              # double 5.1448619999999998
	.quad	0x401ae137f38c5437              # double 6.7199400000000002
	.quad	0x400f3a0e8427418d              # double 3.9033479999999998
	.quad	0x3ff8a9552e2fbe34              # double 1.5413410000000001
	.quad	0x4012f8533b107747              # double 4.7425050000000004
	.quad	0x4012a308787485e4              # double 4.6592120000000001
	.quad	0x401af23076c050be              # double 6.7365130000000004
	.quad	0x3ff52aa8eb463498              # double 1.3229150000000001
	.quad	0x401261e3a7daa4fd              # double 4.5955950000000003
	.quad	0x4021b1e3eaf6837f              # double 8.8474419999999991
	.quad	0x400dedf82b1f687b              # double 3.741196
	.quad	0x4021b9c7ffde7211              # double 8.8628540000000005
	.quad	0x3fe127c9de050375              # double 0.536107
	.quad	0x400c00817fc7607c              # double 3.5002469999999999
	.quad	0x401715f8d2e514c2              # double 5.7714569999999998
	.quad	0x4011c5564b662fe0              # double 4.4427120000000002
	.quad	0x401a6541d8e86402              # double 6.598884
	.quad	0x4020410f0e90bc7b              # double 8.1270679999999995
	.quad	0x400c40af1cb89d6b              # double 3.5315840000000001
	.quad	0x401da4f440af1cb9              # double 7.4110880000000003
	.quad	0x40209881c2e33eff              # double 8.2978649999999998
	.quad	0x40094eabffcdab19              # double 3.1634139999999999
	.quad	0x4011d6dbd72bcb60              # double 4.4598230000000001
	.quad	0x40211422467be554              # double 8.5393240000000005
	.quad	0x40191a57646ae3a4              # double 6.2757240000000003
	.quad	0x4013e82f944241c4              # double 4.9767440000000001
	.quad	0x4021f996744b2b77              # double 8.9874759999999991
	.quad	0x40002c9081c2e33f              # double 2.02176
	.quad	0x40161b2e1693c03c              # double 5.5265430000000002
	.quad	0x402059c3265add9c              # double 8.1753169999999997
	.quad	0x3fdbd73c925785f9              # double 0.43501200000000001
	.quad	0x3fdb02ea960b6fa0              # double 0.42205300000000001
	.quad	0x4020bbb1d0c80410              # double 8.3665909999999997
	.quad	0x3fff6f6a50d6b229              # double 1.964701
	.quad	0x3febf2a9d627bf62              # double 0.87337200000000004
	.quad	0x4013d976bc1effa0              # double 4.9623670000000004
	.quad	0x400b821a719b4dcf              # double 3.4385270000000001
	.quad	0x3fe05ea465a57647              # double 0.51155300000000004
	.quad	0x4003ec0df58c08b7              # double 2.4902609999999998
	.quad	0x3ff1be670e2c12ae              # double 1.1089850000000001
	.quad	0x401fe1f080303c08              # double 7.970644
	.quad	0x40175ad5bee3d5fe              # double 5.8387060000000002
	.quad	0x401ebe468cac4b4d              # double 7.6858159999999999
	.quad	0x402079c347e8ccde              # double 8.2378180000000008
	.quad	0x401c4162f166e009              # double 7.0638540000000001
	.quad	0x401f8e48a58b3f64              # double 7.8889490000000002
	.quad	0x401a8e85b9e8c47a              # double 6.6391819999999999
	.quad	0x4013aedbf8b9baa1              # double 4.9207609999999997
	.quad	0x40065bccaf709b74              # double 2.7948240000000002
	.quad	0x4020e8adcd2d44dd              # double 8.4544510000000006
	.quad	0x400a2df15a4acf31              # double 3.2724329999999999
	.quad	0x40029a4723aafff3              # double 2.3253309999999998
	.quad	0x3fea22120e1f7d74              # double 0.81665900000000002
	.quad	0x4023c1a86940357a              # double 9.8782379999999996
	.quad	0x402289a1db877ab3              # double 9.2688129999999997
	.quad	0x4013f9888f861a61              # double 4.9936850000000002
	.quad	0x4018c394face67d7              # double 6.1909979999999996
	.quad	0x402347b6bb129025              # double 9.6400659999999991
	.quad	0x40053145d851654d              # double 2.6490589999999998
	.quad	0x4005c189374bc6a8              # double 2.7195
	.quad	0x3fc78a5482385404              # double 0.18390899999999999
	.quad	0x3fe449129888f862              # double 0.63392000000000004
	.quad	0x401bffba01eeed89              # double 6.999733
	.quad	0x4017402363b25700              # double 5.8126350000000002
	.quad	0x40037f23465625a7              # double 2.4370790000000002
	.quad	0x402088ed3d859c8d              # double 8.2674350000000008
	.quad	0x400a346b26bf876a              # double 3.275595
	.quad	0x3ffe45e1c15097c8              # double 1.892061
	.quad	0x4022fb34a44c7b03              # double 9.4906360000000002
	.quad	0x401c535e74299d88              # double 7.0814149999999998
	.quad	0x40143324851a8694              # double 5.049944
	.quad	0x400458c9752977c9              # double 2.5433530000000002
	.quad	0x40109d388a8b08dd              # double 4.1535359999999999
	.quad	0x3fee22a4db163bac              # double 0.94172900000000003
	.quad	0x40154ec5f394b7b3              # double 5.3269270000000004
	.quad	0x4007cdeb95e5aff3              # double 2.9755470000000002
	.quad	0x4006dc85c24c404a              # double 2.8576769999999998
	.quad	0x401382e05ccc89b1              # double 4.8778090000000001
	.quad	0x4009154c122749f1              # double 3.135399
	.quad	0x4016da4b124d099e              # double 5.7131769999999999
	.quad	0x4007940a2877ee4e              # double 2.9472849999999999
	.quad	0x3fde847f562174c5              # double 0.47683700000000001
	.quad	0x400955b35b0bbf51              # double 3.166846
	.quad	0x4016f2a411c2a023              # double 5.7369539999999999
	.quad	0x4003e8fa7a85015c              # double 2.4887589999999999
	.quad	0x4022c5992428d435              # double 9.3859340000000006
	.quad	0x400cd8def416bdb2              # double 3.6058940000000002
	.quad	0x40204af1886df82b              # double 8.1463739999999998
	.quad	0x4014f7204295a6c6              # double 5.2413340000000002
	.quad	0x401c19a73b42cc2d              # double 7.0250519999999996
	.quad	0x40220fb506dd69d3              # double 9.030678
	.quad	0x3fc05f28848387df              # double 0.12790399999999999
	.quad	0x4010ff969e3c9689              # double 4.2495979999999998
	.quad	0x40051858bc59b802              # double 2.6368879999999999
	.quad	0x3ffc993b3a68b19a              # double 1.7874099999999999
	.quad	0x4007074107314ca9              # double 2.8785419999999999
	.quad	0x401480fe047d3d43              # double 5.1259690000000004
	.quad	0x40225c59103c8e26              # double 9.1803670000000004
	.quad	0x40234598e10cf5b2              # double 9.6359320000000004
	.quad	0x4010d19ac79702e6              # double 4.2046919999999997
	.quad	0x3ff51b48909289db              # double 1.319161
	.quad	0x40208460aa64c2f8              # double 8.2585499999999996
	.quad	0x402009c4b90214ad              # double 8.0190789999999996
	.quad	0x4010545b291b823d              # double 4.0823790000000004
	.quad	0x40220f179bfdf7e8              # double 9.029477
	.quad	0x40236a1dda059a74              # double 9.7072590000000005
	.quad	0x40135bd09e12a51e              # double 4.8396629999999998
	.quad	0x4022652e94680171              # double 9.1976209999999998
	.quad	0x40202355ac03ff69              # double 8.069013
	.quad	0x400d221c044284e0              # double 3.6416550000000001
	.quad	0x401ff7abfb9bed31              # double 7.991867
	.quad	0x401c2bd4cfd08d4c              # double 7.0428040000000003
	.quad	0x4008bbcfd4bf0996              # double 3.0917050000000001
	.quad	0x3fff59008205ff1e              # double 1.9592290000000001
	.quad	0x3fc4f1cb89d6adf7              # double 0.163629
	.quad	0x400828bc9cd3e0bd              # double 3.0198909999999999
	.quad	0x401f073b42cc2d6b              # double 7.7570620000000003
	.quad	0x40232c92bc2fc697              # double 9.5870569999999997
	.quad	0x401b0b65ecc3e319              # double 6.7611309999999998
	.quad	0x40101826aa8eb463              # double 4.0235849999999997
	.quad	0x4023603d57796399              # double 9.6879679999999996
	.quad	0x3ffed36501e2584f              # double 1.9266099999999999
	.quad	0x4023028f190d1740              # double 9.5049980000000005
	.quad	0x4017eb691212513b              # double 5.9798929999999997
	.quad	0x401b2b90ea9e6eeb              # double 6.7925449999999996
	.quad	0x40017d52c16df3f9              # double 2.1861929999999998
	.quad	0x3fe92595bbbe8790              # double 0.78583800000000004
	.quad	0x4022b736ef8055fc              # double 9.3578410000000005
	.quad	0x40071f0025bfad2a              # double 2.8901370000000002
	.quad	0x401115f4e4430b18              # double 4.2714420000000004
	.quad	0x3ff473a68b19a416              # double 1.278235
	.quad	0x400a549d7ba6698c              # double 3.2913160000000001
	.quad	0x4012f160d887ebf2              # double 4.7357209999999998
	.quad	0x3fd6ec7863beec39              # double 0.35818299999999997
	.quad	0x401c91de26916441              # double 7.142449
	.quad	0x40075fdc5931ca7d              # double 2.9218069999999998
	.quad	0x401797fed20296b3              # double 5.8984329999999998
	.quad	0x3fdefbd6a593a2e0              # double 0.48412100000000002
	.quad	0x400731e4b44a1f08              # double 2.899362
	.quad	0x4022cb2ca57a786c              # double 9.3968249999999997
	.quad	0x4008acdfaca36199              # double 3.0844109999999998
	.quad	0x3fe2368f08461f9f              # double 0.56916
	.quad	0x3fdcafe1da7b0b39              # double 0.44823499999999999
	.quad	0x4016da4723aafff3              # double 5.7131619999999996
	.quad	0x40209ed373affb05              # double 8.3102070000000001
	.quad	0x40225708893b7d85              # double 9.1699870000000008
	.quad	0x4003fc9ff92f2b67              # double 2.4983520000000001
	.quad	0x3fe1211ec918e326              # double 0.53529300000000002
	.quad	0x4011cdedaec4a409              # double 4.4511019999999997
	.quad	0x4021429ed3953dea              # double 8.6301179999999995
	.quad	0x40164133c1ce6c09              # double 5.5636739999999998
	.quad	0x400dfca18bd66278              # double 3.7483550000000001
	.quad	0x4022a8aaa7ded6bb              # double 9.3294270000000008
	.quad	0x3ff6c2cc2d6a9c56              # double 1.422558
	.quad	0x3ffd2d740c4156e2              # double 1.8235969999999999
	.quad	0x4021b4bdba0a5269              # double 8.8530099999999994
	.quad	0x40010339c0ebedfa              # double 2.1265749999999999
	.quad	0x4019de2046c764ae              # double 6.46692
	.quad	0x402328e970718223              # double 9.5799059999999993
	.quad	0x3fffcc76d117b528              # double 1.9874179999999999
	.quad	0x3fc6b1d4f9c1f85d              # double 0.17730199999999999
	.quad	0x4021f3b40b34e768              # double 8.9759829999999994
	.quad	0x4020ec87b99d4520              # double 8.4619730000000004
	.quad	0x4022ec9b41398634              # double 9.4621220000000008
	.quad	0x401beebfec13b9f1              # double 6.9831539999999999
	.quad	0x4005055970b49e02              # double 2.6276120000000001
	.quad	0x4014c2478854cdb8              # double 5.1897260000000003
	.quad	0x4021c28ed5f138bd              # double 8.8799960000000002
	.quad	0x4008cdaa0cae642c              # double 3.100422
	.quad	0x4021344fc1df3301              # double 8.6021710000000002
	.quad	0x40177946c332f017              # double 5.8684339999999997
	.quad	0x401ad168f8e7ddca              # double 6.7045019999999997
	.quad	0x3fcf52c9d16fc9bc              # double 0.24471399999999999
	.quad	0x4023b26612839043              # double 9.8484350000000002
	.quad	0x3ffe1fd2630ec311              # double 1.8827689999999999
	.quad	0x40086b4e9813879c              # double 3.0523959999999999
	.quad	0x3ff8dcae21101b00              # double 1.553877
	.quad	0x401ac3821af7d30b              # double 6.6909260000000002
	.quad	0x401ab22f2734f82f              # double 6.6740079999999997
	.quad	0x402280ab71327243              # double 9.2513079999999999
	.quad	0x400e35c52e72da12              # double 3.7762549999999999
	.quad	0x401f210ecb74ddf8              # double 7.7822829999999996
	.quad	0x4005bac79702e664              # double 2.7162009999999999
	.quad	0x402210116ebd4cfd              # double 9.0313829999999999
	.quad	0x401a2294141e9af6              # double 6.5337680000000002
	.quad	0x401d69057d1782d4              # double 7.3525600000000004
	.quad	0x3ffc35b4edb2f662              # double 1.763112
	.quad	0x40017214f0520d13              # double 2.180704
	.quad	0x3fe80f8c64fdb09a              # double 0.75189799999999996
	.quad	0x3fe94710cb295e9e              # double 0.78992499999999999
	.quad	0x401def0995aaf790              # double 7.4834350000000001
	.quad	0x4022e04cad57bc7f              # double 9.4380849999999991
	.quad	0x3feb137b07075b3e              # double 0.84612799999999999
	.quad	0x400aa5dc8323358f              # double 3.3309869999999999
	.quad	0x4021bf6fd21ff2e5              # double 8.8739000000000008
	.quad	0x4012918c9fb6134d              # double 4.6421380000000001
	.quad	0x3ff94366516db0de              # double 1.5789550000000001
	.quad	0x4016a46cfc829cfe              # double 5.6605720000000002
	.quad	0x400823a190082060              # double 3.017398
	.quad	0x401cf1276fb09204              # double 7.2355020000000003
	.quad	0x400abd5347a5b0ff              # double 3.342444
	.quad	0x3ffaf05d95dd4c77              # double 1.683683
	.quad	0x40234ba8e71476b0              # double 9.6477730000000008
	.quad	0x40239cec41dd1a22              # double 9.8064900000000002
	.quad	0x401e14cf4a558ea8              # double 7.5203220000000001
	.quad	0x4017f1f7d73c9258              # double 5.9862970000000004
	.quad	0x4021e6a6e32e3822              # double 8.9504920000000006
	.quad	0x401cf6d3f9e7b80b              # double 7.2410430000000003
	.quad	0x401e3fe47991bc56              # double 7.5623950000000004
	.quad	0x4000b5cfaacd9e84              # double 2.088775
	.quad	0x400e7681669ced0b              # double 3.8078639999999999
	.quad	0x40038b09635610ae              # double 2.4428890000000001
	.quad	0x3fe5f7e3d1cc100e              # double 0.68650999999999995
	.quad	0x4003a5ac471b4784              # double 2.4558949999999999
	.quad	0x401b9059210385c6              # double 6.8909649999999996
	.quad	0x401464ff0025bfad              # double 5.0986289999999999
	.quad	0x40118f4c2b51bd62              # double 4.389939
	.quad	0x4017ca96d4c33b54              # double 5.9478410000000004
	.quad	0x4010e00c0f01fb83              # double 4.2187960000000002
	.quad	0x4009260029f16b12              # double 3.1435550000000001
	.quad	0x400bb9f559b3d07d              # double 3.4658000000000002
	.quad	0x4012fa33bd9cae21              # double 4.7443379999999999
	.quad	0x401796937d1fe64f              # double 5.8970469999999997
	.quad	0x4008cc16df3f9618              # double 3.099653
	.quad	0x3fde3dd97f62b6ae              # double 0.47252499999999997
	.quad	0x3fe6df91600f3450              # double 0.71479099999999995
	.quad	0x40181224aada33be              # double 6.0177180000000003
	.quad	0x4022bf81c714fce7              # double 9.3740369999999995
	.quad	0x401822a0663c74fb              # double 6.0338149999999997
	.quad	0x401ffa05dd8f92b0              # double 7.9941630000000004
	.quad	0x4016cb224aada33c              # double 5.6983730000000001
	.quad	0x3fe93d87b56b8738              # double 0.78876100000000005
	.quad	0x40125f102363b257              # double 4.592835
	.quad	0x401dd039ef0f16f4              # double 7.4533459999999998
	.quad	0x4013cb9b66f9335d              # double 4.9488349999999999
	.quad	0x40203b9dc2f405f7              # double 8.1164380000000005
	.quad	0x4018aa65cf67b1c0              # double 6.166404
	.quad	0x4020eceb9a176ddb              # double 8.4627350000000003
	.quad	0x4015d54a7f8012e0              # double 5.4582920000000001
	.quad	0x3fccf640639d5e4a              # double 0.22626499999999999
	.quad	0x401f1dfc5cdd50a9              # double 7.7792830000000003
	.quad	0x3fb91e85fd04a2fd              # double 0.098122000000000001
	.quad	0x4022a737fbefd007              # double 9.3265989999999999
	.quad	0x40020cc575c0767d              # double 2.2562359999999999
	.quad	0x4019d973d9ec7000              # double 6.4623559999999998
	.quad	0x3fd654b8bef8ceb3              # double 0.34892099999999998
	.quad	0x3ff4857082491afc              # double 1.282578
	.quad	0x4021d63a3a8e7147              # double 8.9184129999999993
	.quad	0x401926e935b91f71              # double 6.2879990000000001
	.quad	0x4016b2cb641700ce              # double 5.6746040000000004
	.quad	0x401dfac322291fb4              # double 7.494885
	.quad	0x3fd71ce28ed5f139              # double 0.36113800000000001
	.quad	0x401dd25a250f8402              # double 7.4554220000000004
	.quad	0x4012c9fb1e18efbb              # double 4.697247
	.quad	0x401c3ead9274e22a              # double 7.0612089999999998
	.quad	0x40184ff92f2b66b6              # double 6.0780989999999999
	.quad	0x401cf7aaef2c7326              # double 7.2418630000000004
	.quad	0x40026e618ce2d1f2              # double 2.3038970000000001
	.quad	0x401fa9c90c4dec1c              # double 7.9158059999999999
	.quad	0x40231500d5e8d541              # double 9.5410219999999998
	.quad	0x40234add377e1b8f              # double 9.6462190000000003
	.quad	0x402286158750c1b9              # double 9.2618829999999992
	.quad	0x4010ce2435696e59              # double 4.2013100000000003
	.quad	0x401fa5771001d5c3              # double 7.9115869999999999
	.quad	0x3ffacc7b02d59d56              # double 1.674922
	.quad	0x402000897e996313              # double 8.0010490000000001
	.quad	0x400204f54d1e96c4              # double 2.252421
	.quad	0x3ff9a67d77fae361              # double 1.6031470000000001
	.quad	0x40217a4a05dd8f93              # double 8.7388460000000006
	.quad	0x4012db2702a3486f              # double 4.714016
	.quad	0x40001b1183b60286              # double 2.013217
	.quad	0x40037ff69014b59a              # double 2.4374820000000001
	.quad	0x4007981e8a2ec28b              # double 2.9492769999999999
	.quad	0x4023d8ba83f4eca7              # double 9.9232980000000008
	.quad	0x401b0d7b2031ceaf              # double 6.7631649999999999
	.quad	0x3fde712e40852b4e              # double 0.47565800000000003
	.quad	0x401c3c5004fb1184              # double 7.0588990000000003
	.quad	0x40128577963992c9              # double 4.6303390000000002
	.quad	0x401e89b413986339              # double 7.6344760000000002
	.quad	0x401a7c7ffde7210c              # double 6.6215820000000001
	.quad	0x40197f43419e3001              # double 6.3742799999999997
	.quad	0x40053e99e94ab1d5              # double 2.655567
	.quad	0x4016ecc1ca3a4b55              # double 5.7312079999999996
	.quad	0x3ffc9e310dbf0564              # double 1.788621
	.quad	0x40134008a697aede              # double 4.8125330000000002
	.quad	0x401695fd8adab9f5              # double 5.6464749999999997
	.quad	0x40007d45a5fc7e6b              # double 2.0611679999999999
	.quad	0x4022da919695d91b              # double 9.4268920000000004
	.quad	0x401d14fc1df3300e              # double 7.2704930000000001
	.quad	0x4022256a7ac81d3b              # double 9.0730780000000006
	.quad	0x401d7224edf61240              # double 7.3614689999999996
	.quad	0x40176ce18266772d              # double 5.8563289999999997
	.quad	0x40199d3e920c069e              # double 6.4035589999999996
	.quad	0x40194bcad9ad85e0              # double 6.3240160000000003
	.quad	0x3ffc6856605ee569              # double 1.7754730000000001
	.quad	0x401ed293d102bc73              # double 7.7056420000000001
	.quad	0x401325529fe004b8              # double 4.786448
	.quad	0x40238d3ac4f7ec35              # double 9.7758389999999995
	.quad	0x3fef755ffe6d58c9              # double 0.983078
	.quad	0x4016d7d06bbdbe3c              # double 5.7107559999999999
	.quad	0x401dd9b5a63f9a4a              # double 7.4626070000000002
	.quad	0x402256a550870111              # double 9.1692300000000007
	.quad	0x3fe3d9c49774256c              # double 0.62033300000000002
	.quad	0x3ff299210385c67e              # double 1.162385
	.quad	0x3ff5b32acfb762d8              # double 1.3562419999999999
	.quad	0x401cd0389f83be66              # double 7.203341
	.quad	0x400d900de4c51117              # double 3.6953390000000002
	.quad	0x402083b96af038e3              # double 8.2572740000000007
	.quad	0x401d5fec99f1ae2e              # double 7.3436760000000003
	.quad	0x4008b9d2bf551505              # double 3.0907339999999999
	.quad	0x40056e1cde5d1809              # double 2.678766
	.quad	0x3ff1ae05ccc89b0f              # double 1.104986
	.quad	0x401510d801b43526              # double 5.2664489999999997
	.quad	0x4016d1e646f15619              # double 5.7049799999999999
	.quad	0x401ea9731098d478              # double 7.6654780000000002
	.quad	0x4004fc0b9991361e              # double 2.6230690000000001
	.quad	0x3fd6f151e75360d0              # double 0.35847899999999999
	.quad	0x40038d1f1cfbb949              # double 2.4439069999999998
	.quad	0x4018e3682730c671              # double 6.2220769999999996
	.quad	0x3ff43eb5b2d4d402              # double 1.2653099999999999
	.quad	0x3fe208f42fe82518              # double 0.56359300000000001
	.quad	0x4010a13f8db48909              # double 4.1574689999999999
	.quad	0x401727625204af92              # double 5.7884609999999999
	.quad	0x3fdcf37b8d3f1844              # double 0.45236100000000001
	.quad	0x400d05870da5daf0              # double 3.6276989999999998
	.quad	0x401289c90c4dec1c              # double 4.6345559999999999
	.quad	0x3fc0fa58f7121ab5              # double 0.13264000000000001
	.quad	0x401ca9d388a8b08e              # double 7.1658460000000002
	.quad	0x3ff143265add9c28              # double 1.078894
	.quad	0x4022d62ed352220c              # double 9.4183260000000004
	.quad	0x3ffc8fdb09a671ef              # double 1.785121
	.quad	0x4023365eaab04253              # double 9.6061910000000008
	.quad	0x4023dda3e39f7729              # double 9.9328909999999996
	.quad	0x4011277d0f1f57b4              # double 4.2885629999999999
	.quad	0x402259d9b1b79d91              # double 9.1754890000000007
	.quad	0x40223b198288051d              # double 9.1154290000000007
	.quad	0x4020d7b6dca07f67              # double 8.4213170000000002
	.quad	0x40018426351deefe              # double 2.1895259999999999
	.quad	0x4011fc39bcba3012              # double 4.4963139999999999
	.quad	0x4008b8bc59b8023a              # double 3.0902029999999998
	.quad	0x400ede9d94d0dcfd              # double 3.8586990000000001
	.quad	0x3fe8bb4916ca46e1              # double 0.77286200000000005
	.quad	0x401a27d0f1f57b42              # double 6.5388830000000002
	.quad	0x40135665e02ea961              # double 4.8343730000000003
	.quad	0x3fc9d5a187a4a490              # double 0.20183200000000001
	.quad	0x3ffb026138fffbce              # double 1.6880809999999999
	.quad	0x40225fb762d83c6d              # double 9.1869460000000007
	.quad	0x3ff116a9c560c7c1              # double 1.068033
	.quad	0x4001e330d738609a              # double 2.2359330000000002
	.quad	0x40100a3c21187e7c              # double 4.009995
	.quad	0x401206f112fd32c6              # double 4.5067789999999999
	.quad	0x400d2d527e521577              # double 3.6471300000000002
	.quad	0x402257f950b955f8              # double 9.1718240000000008
	.quad	0x3fe2da33bd9cae21              # double 0.58913599999999999
	.quad	0x40066e79aae6c8f7              # double 2.8039429999999999
	.quad	0x40075ad6cb535009              # double 2.9193549999999999
	.quad	0x40103e92d55a3a08              # double 4.0611069999999998
	.quad	0x401c075ee99a62ed              # double 7.0071979999999998
	.quad	0x40008655193708ab              # double 2.0655920000000001
	.quad	0x4023c6f5a964e8b8              # double 9.8885930000000001
	.quad	0x400ff4d48882f0e1              # double 3.9945460000000002
	.quad	0x4018a00b45ae5ffa              # double 6.1562929999999998
	.quad	0x401a1d801b435265              # double 6.5288089999999999
	.quad	0x400f075147f13059              # double 3.8785729999999998
	.quad	0x3fd546d82ba5a038              # double 0.33244899999999999
	.quad	0x3ff47de6149c6f37              # double 1.280737
	.quad	0x4023ae77d523b363              # double 9.8407579999999992
	.quad	0x40221dbb9cf9a06a              # double 9.0580719999999992
	.quad	0x4020678b1572580c              # double 8.2022329999999996
	.quad	0x4021eb47c73eee52              # double 8.9595319999999994
	.quad	0x40009676ea422899              # double 2.0734689999999998
	.quad	0x3ff1b4a44c7b02d6              # double 1.1066020000000001
	.quad	0x401b13ff25e56cd7              # double 6.7695280000000002
	.quad	0x402055b6a1e81cb4              # double 8.1674089999999992
	.quad	0x4011fd1cc100e6b0              # double 4.4971800000000002
	.quad	0x4011ff0cbaf965b2              # double 4.499072
	.quad	0x4010c49ba5e353f8              # double 4.1920000000000002
	.quad	0x400ece3c536d655e              # double 3.8507009999999999
	.quad	0x4019067a0f9096bc              # double 6.2563250000000004
	.quad	0x401b4b7a5f41aef7              # double 6.823709
	.quad	0x40147ad080b673c5              # double 5.119936
	.quad	0x40177f0739b024f6              # double 5.8740509999999997
	.quad	0x3fdf567dbb16c1e3              # double 0.48965399999999998
	.quad	0x4022e7cd24e160d9              # double 9.4527370000000008
	.quad	0x400276d3b6cbd988              # double 2.3080210000000001
	.quad	0x4012c58f2e05ccc9              # double 4.6929290000000004
	.quad	0x3ff663b14a90470b              # double 1.3993390000000001
	.quad	0x401d7e8dda48b652              # double 7.3735879999999998
	.quad	0x4000e5e99e94ab1d              # double 2.1122619999999999
	.quad	0x40134787485e3da3              # double 4.819852
	.quad	0x3ffa2efd438d1d8a              # double 1.6364719999999999
	.quad	0x3ff33503b81b64e0              # double 1.2004429999999999
	.quad	0x3fec80b242070b8d              # double 0.89071
	.quad	0x4014959d55e6bc62              # double 5.1461079999999999
	.quad	0x3ffec54de7ea5f85              # double 1.92317
	.quad	0x4023810214ad362f              # double 9.7519690000000007
	.quad	0x4008052ce032db1f              # double 3.0025270000000002
	.quad	0x401b4ca25529fe00              # double 6.8248379999999997
	.quad	0x40181af9ebe9c886              # double 6.0263439999999999
	.quad	0x40116892253111f1              # double 4.3521200000000002
	.quad	0x40055839cd8127b3              # double 2.6680790000000001
	.quad	0x40066ccc46950fc7              # double 2.8031239999999999
	.quad	0x400cebd987c6327f              # double 3.6151610000000001
	.quad	0x40236ede33269df9              # double 9.7165389999999991
	.quad	0x40145e4473cd5736              # double 5.0920579999999998
	.quad	0x4022d4be1eb4202e              # double 9.4155130000000007
	.quad	0x40237d03968d759f              # double 9.7441680000000001
	.quad	0x401d1c964628027e              # double 7.2779170000000004
	.quad	0x3ff067c9de050375              # double 1.025339
	.quad	0x3fc60956c0d6f545              # double 0.17216000000000001
	.quad	0x4022cfb2031ceaf2              # double 9.4056549999999994
	.size	.L__constant_4499xf64, 35992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	41                              # 0x29
	.quad	41                              # 0x29
	.quad	78                              # 0x4e
	.quad	78                              # 0x4e
	.quad	120                             # 0x78
	.quad	120                             # 0x78
	.quad	163                             # 0xa3
	.quad	163                             # 0xa3
	.quad	202                             # 0xca
	.quad	202                             # 0xca
	.quad	246                             # 0xf6
	.quad	246                             # 0xf6
	.quad	283                             # 0x11b
	.quad	283                             # 0x11b
	.quad	323                             # 0x143
	.quad	323                             # 0x143
	.quad	362                             # 0x16a
	.quad	362                             # 0x16a
	.quad	401                             # 0x191
	.quad	401                             # 0x191
	.quad	444                             # 0x1bc
	.quad	444                             # 0x1bc
	.quad	488                             # 0x1e8
	.quad	488                             # 0x1e8
	.quad	529                             # 0x211
	.quad	529                             # 0x211
	.quad	567                             # 0x237
	.quad	567                             # 0x237
	.quad	608                             # 0x260
	.quad	608                             # 0x260
	.quad	645                             # 0x285
	.quad	645                             # 0x285
	.quad	677                             # 0x2a5
	.quad	677                             # 0x2a5
	.quad	716                             # 0x2cc
	.quad	716                             # 0x2cc
	.quad	756                             # 0x2f4
	.quad	756                             # 0x2f4
	.quad	798                             # 0x31e
	.quad	798                             # 0x31e
	.quad	839                             # 0x347
	.quad	839                             # 0x347
	.quad	879                             # 0x36f
	.quad	879                             # 0x36f
	.quad	914                             # 0x392
	.quad	914                             # 0x392
	.quad	952                             # 0x3b8
	.quad	952                             # 0x3b8
	.quad	988                             # 0x3dc
	.quad	988                             # 0x3dc
	.quad	1028                            # 0x404
	.quad	1028                            # 0x404
	.quad	1067                            # 0x42b
	.quad	1067                            # 0x42b
	.quad	1110                            # 0x456
	.quad	1110                            # 0x456
	.quad	1152                            # 0x480
	.quad	1152                            # 0x480
	.quad	1184                            # 0x4a0
	.quad	1184                            # 0x4a0
	.quad	1224                            # 0x4c8
	.quad	1224                            # 0x4c8
	.quad	1265                            # 0x4f1
	.quad	1265                            # 0x4f1
	.quad	1307                            # 0x51b
	.quad	1307                            # 0x51b
	.quad	1349                            # 0x545
	.quad	1349                            # 0x545
	.quad	1393                            # 0x571
	.quad	1393                            # 0x571
	.quad	1434                            # 0x59a
	.quad	1434                            # 0x59a
	.quad	1479                            # 0x5c7
	.quad	1479                            # 0x5c7
	.quad	1517                            # 0x5ed
	.quad	1517                            # 0x5ed
	.quad	1551                            # 0x60f
	.quad	1551                            # 0x60f
	.quad	1590                            # 0x636
	.quad	1590                            # 0x636
	.quad	1630                            # 0x65e
	.quad	1630                            # 0x65e
	.quad	1675                            # 0x68b
	.quad	1675                            # 0x68b
	.quad	1717                            # 0x6b5
	.quad	1717                            # 0x6b5
	.quad	1756                            # 0x6dc
	.quad	1756                            # 0x6dc
	.quad	1795                            # 0x703
	.quad	1795                            # 0x703
	.quad	1837                            # 0x72d
	.quad	1837                            # 0x72d
	.quad	1880                            # 0x758
	.quad	1880                            # 0x758
	.quad	1921                            # 0x781
	.quad	1921                            # 0x781
	.quad	1963                            # 0x7ab
	.quad	1963                            # 0x7ab
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	30                              # 0x1e
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	38                              # 0x26
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	30                              # 0x1e
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
	.quad	54                              # 0x36
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x401e93a797891e21              # double 7.6441939999999997
	.quad	0x40218402afdda8bd              # double 8.7578329999999998
	.quad	0x401913111f0c34c2              # double 6.2686200000000003
	.quad	0x401ab9dbec2480e9              # double 6.6815030000000002
	.quad	0x3fe92a5a469d7343              # double 0.78642000000000001
	.quad	0x4015ed3804534bd7              # double 5.4816589999999996
	.quad	0x3fe66605ee568a50              # double 0.69995399999999997
	.quad	0x400d6c122749f0e5              # double 3.6777690000000001
	.quad	0x4003dd80e496edee              # double 2.4831560000000001
	.quad	0x40218663e8dda48b              # double 8.7624809999999993
	.quad	0x40171947064ece9a              # double 5.7746849999999998
	.quad	0x401fb34f3fd933e3              # double 7.9251069999999996
	.quad	0x4023c4e1c58255b0              # double 9.8845349999999996
	.quad	0x4019844fa05143bf              # double 6.3792099999999996
	.quad	0x3ff5b922962cfd8f              # double 1.357699
	.quad	0x4022bab628459967              # double 9.3646709999999995
	.quad	0x401be6e32e3821af              # double 6.9754759999999996
	.quad	0x401020813cab81f9              # double 4.0317429999999996
	.quad	0x4021a58a116659d1              # double 8.8233189999999997
	.quad	0x401a10520d130dfa              # double 6.5159380000000002
	.quad	0x4014cad106ee30cb              # double 5.1980630000000003
	.quad	0x401cb9641f644956              # double 7.1810460000000003
	.quad	0x3fd08d21bc126a66              # double 0.25861400000000001
	.quad	0x3ffe4344c37e6f72              # double 1.8914230000000001
	.quad	0x3ffc06f156191149              # double 1.751695
	.quad	0x4006381b64e05469              # double 2.777396
	.quad	0x402032c9081c2e34              # double 8.0991900000000001
	.quad	0x401a0e7a311e85fd              # double 6.514138
	.quad	0x4010df26aec0724b              # double 4.2179209999999996
	.quad	0x4013e5ccc89b0ee5              # double 4.9744140000000003
	.quad	0x401f6d759ee88df3              # double 7.8568939999999996
	.quad	0x4016dd556084a516              # double 5.7161460000000002
	.quad	0x4023dfeed45e9186              # double 9.9373690000000003
	.quad	0x3fb8b2d905c03361              # double 0.096478999999999995
	.quad	0x4006554b05b7cfe6              # double 2.7916470000000002
	.quad	0x401e3278d0cc35ce              # double 7.5492889999999999
	.quad	0x4012abb7739f340d              # double 4.6676919999999997
	.quad	0x4022c6779207d4e1              # double 9.3876310000000007
	.quad	0x4019da05143bf727              # double 6.4629099999999999
	.quad	0x400ed6672fba01ef              # double 3.854689
	.quad	0x3fec6935b91f70df              # double 0.88784300000000005
	.quad	0x4005876a7264a16a              # double 2.6911209999999999
	.quad	0x401e08359bc33f85              # double 7.5080169999999997
	.quad	0x3ff8337c99ae924f              # double 1.51257
	.quad	0x40205441bb8c32a9              # double 8.1645640000000004
	.quad	0x401c16e2eb1c432d              # double 7.0223500000000003
	.quad	0x401da4b2314013ec              # double 7.4108359999999998
	.quad	0x4020af79e9d0e992              # double 8.342727
	.quad	0x4022204b7f5a5333              # double 9.0630760000000006
	.quad	0x3fdc6049ecb31c22              # double 0.44337700000000002
	.quad	0x4011b3df2a9d627c              # double 4.425656
	.quad	0x4021049abb01c92e              # double 8.5089930000000003
	.quad	0x401eba17f4128bf4              # double 7.6817320000000002
	.quad	0x400dbd6a593a2df9              # double 3.7174879999999999
	.quad	0x401bbcc39ffd60e9              # double 6.9343399999999997
	.quad	0x40132710cb295e9e              # double 4.7881499999999999
	.quad	0x400b156eac860568              # double 3.3854649999999999
	.quad	0x401b5a12b5e529bb              # double 6.8379620000000001
	.quad	0x40065331a08bfc22              # double 2.7906219999999999
	.quad	0x4020cac881e4712e              # double 8.3960609999999996
	.quad	0x4005a4095f2452c6              # double 2.7050960000000002
	.quad	0x402136238da3c212              # double 8.6057400000000008
	.quad	0x401ec5100a393ee6              # double 7.6924440000000001
	.quad	0x40018f56eac86057              # double 2.1949900000000002
	.quad	0x3ffb0998d045fe11              # double 1.689843
	.quad	0x40181a00192a7371              # double 6.0253909999999999
	.quad	0x3fd36ec17ebaf102              # double 0.30363499999999999
	.quad	0x401788023a6ce358              # double 5.8828209999999999
	.quad	0x4010d59f6ec5b079              # double 4.2086160000000001
	.quad	0x3ff8456f75d9a0f1              # double 1.5169520000000001
	.quad	0x40132573eab367a1              # double 4.786575
	.quad	0x3ffb913b5bf6a0dc              # double 1.7229570000000001
	.quad	0x3ffdbba775fb2ee0              # double 1.858314
	.quad	0x401d1355cd91eeaa              # double 7.2688819999999996
	.quad	0x40209a26e5471716              # double 8.3010780000000004
	.quad	0x40157c1ca3a4b557              # double 5.3712030000000004
	.quad	0x4020ab764f11b60b              # double 8.3348870000000002
	.quad	0x4011a5fa658c4bd3              # double 4.4120879999999998
	.quad	0x3ff8b020c49ba5e3              # double 1.5429999999999999
	.quad	0x40126c0c62e4d1a6              # double 4.6055159999999997
	.quad	0x400afa2a4db163bb              # double 3.3721510000000001
	.quad	0x4023472990f301eb              # double 9.6389890000000004
	.quad	0x3ff148b75ea67e84              # double 1.0802529999999999
	.quad	0x40057490e66cb103              # double 2.6819169999999999
	.quad	0x3fe93b0e5e679464              # double 0.78845900000000002
	.quad	0x40225f59ccfaeff6              # double 9.1862320000000004
	.quad	0x4022fa66ba493c8a              # double 9.4890650000000001
	.quad	0x3fe0e102795703f3              # double 0.52746700000000002
	.quad	0x3ff2142f61ed5ae2              # double 1.129928
	.quad	0x3ff3a16c61522a6f              # double 1.2269099999999999
	.quad	0x4004a86f8ad2567a              # double 2.5822440000000002
	.quad	0x40119ea4228997c4              # double 4.4049230000000001
	.quad	0x4015535d249e44fa              # double 5.33141
	.quad	0x40051fd36f7e3d1d              # double 2.6405400000000001
	.quad	0x4020019ef954eb14              # double 8.0031660000000002
	.quad	0x4016cc48adeebb34              # double 5.6994959999999999
	.quad	0x40094a9b499d0204              # double 3.161429
	.quad	0x3ff56fbc1acde1a0              # double 1.3397790000000001
	.quad	0x401476b15f88fc93              # double 5.1159109999999997
	.quad	0x401bd90d173fb7a6              # double 6.961964
	.quad	0x40116974a3400b89              # double 4.3529840000000002
	.quad	0x401f740357a35504              # double 7.8632939999999998
	.quad	0x4002145308bb9064              # double 2.2599239999999998
	.quad	0x3ffcfbedb7281fda              # double 1.8115060000000001
	.quad	0x401928a0d349be90              # double 6.289676
	.quad	0x401324c7f3493858              # double 4.7859189999999998
	.quad	0x3fe104790b849881              # double 0.53179600000000005
	.quad	0x40186d3996fa82e8              # double 6.1066649999999996
	.quad	0x401fad19157abb88              # double 7.9190409999999999
	.quad	0x401098487b99d452              # double 4.148714
	.quad	0x3fdb2541d8e86402              # double 0.424149
	.quad	0x401da0ef566490a3              # double 7.4071629999999997
	.quad	0x402090f01fb82c2c              # double 8.2830820000000002
	.quad	0x401b89a30984e400              # double 6.8844110000000001
	.quad	0x4023d1af9ebe9c88              # double 9.9095429999999993
	.quad	0x3fff98eb8950763a              # double 1.974834
	.quad	0x3ffe17ff9b56323c              # double 1.8808590000000001
	.quad	0x40156fcd24e160d9              # double 5.3591810000000004
	.quad	0x402100954a7f8013              # double 8.5011390000000002
	.quad	0x3fd1003254e6e222              # double 0.26563700000000001
	.quad	0x401d2c7192ea52f0              # double 7.2934020000000004
	.quad	0x4016e5ed4a1ad645              # double 5.7245379999999999
	.quad	0x4020d2d98bf7f067              # double 8.411816
	.quad	0x400a0558ea7ce0fc              # double 3.2526109999999999
	.quad	0x4017ba4228997c3d              # double 5.9318929999999996
	.quad	0x400a75f99c38b04b              # double 3.3076050000000001
	.quad	0x40132a2f48c2e771              # double 4.7911960000000002
	.quad	0x40156d5fdcdf6988              # double 5.3568110000000004
	.quad	0x3ffeefe82517e77d              # double 1.9335709999999999
	.quad	0x4008d5e071c53f3a              # double 3.1044320000000001
	.quad	0x3ffc0ecc814d727a              # double 1.7536130000000001
	.quad	0x4017ac03bc4d22c9              # double 5.9179830000000004
	.quad	0x401453f077ccc038              # double 5.0819720000000004
	.quad	0x3fb02f2f9873ffac              # double 0.063219999999999998
	.quad	0x401a88f1d3ed527e              # double 6.6337349999999997
	.quad	0x40097fdd65a14489              # double 3.1874340000000001
	.quad	0x3feec42e9899bf59              # double 0.96144799999999996
	.quad	0x3fe4c1bfbdf090f7              # double 0.64865099999999998
	.quad	0x40205e27bf61aa3f              # double 8.183897
	.quad	0x3fc9e1c15097c808              # double 0.20220199999999999
	.quad	0x40162f5cf2495e18              # double 5.5462530000000001
	.quad	0x40213a398201cd60              # double 8.6137200000000007
	.quad	0x40226a53b8e4b87c              # double 9.2076700000000002
	.quad	0x40159efc371da37f              # double 5.405259
	.quad	0x4011722ab25b317f              # double 4.361491
	.quad	0x40110e62dc6e2a80              # double 4.264049
	.quad	0x400eb93ff25e56cd              # double 3.8404539999999998
	.quad	0x401cc02d9cf13cef              # double 7.1876740000000003
	.quad	0x400de1e2de870974              # double 3.7352959999999999
	.quad	0x4023fd7eaa2a0a96              # double 9.9951070000000009
	.quad	0x4020c7a0b5ed8d37              # double 8.3898980000000005
	.quad	0x3fb66cf41f212d77              # double 0.087599999999999997
	.quad	0x4020573d5bab2181              # double 8.1703899999999994
	.quad	0x3f88c9752977c88e              # double 0.012102999999999999
	.quad	0x4013465f5275ee9a              # double 4.8187230000000003
	.quad	0x400451d14e3bcd36              # double 2.5399500000000002
	.quad	0x4015462845996745              # double 5.3185130000000003
	.quad	0x400e49d0635a426c              # double 3.7860420000000001
	.quad	0x401e084e831ad213              # double 7.5081119999999996
	.quad	0x401b600000000000              # double 6.84375
	.quad	0x40118c9cd3e0bd45              # double 4.3873170000000004
	.quad	0x3ff7b4b1ee243569              # double 1.4816149999999999
	.quad	0x401cc897e996312f              # double 7.1958919999999997
	.quad	0x40238f8183f91e64              # double 9.7802849999999992
	.quad	0x40106a7c5ac471b4              # double 4.1039899999999996
	.quad	0x40189f3e0370cdc8              # double 6.1555099999999996
	.quad	0x400aaf26aec0724b              # double 3.3355229999999998
	.quad	0x4013ff0cbaf965b2              # double 4.999072
	.quad	0x3fe2c09c3ce2089e              # double 0.58601199999999998
	.quad	0x4016bfc504816f00              # double 5.6872749999999996
	.quad	0x402276a209aaa3ad              # double 9.2317049999999998
	.quad	0x402292ac753e707e              # double 9.2864719999999998
	.quad	0x3ff687304039abf3              # double 1.408005
	.quad	0x3ff1e74afd545415              # double 1.118968
	.quad	0x401daf54d1e96c40              # double 7.4212220000000002
	.quad	0x3ff987c30d306a2b              # double 1.595645
	.quad	0x401b8980f55de58e              # double 6.8842809999999997
	.quad	0x3ff74b1ab0856e69              # double 1.4558359999999999
	.quad	0x4011fa1be2b4959e              # double 4.4942469999999997
	.quad	0x400b6bebe1650a46              # double 3.4276960000000001
	.quad	0x4020d904f6dfc5ce              # double 8.4238660000000003
	.quad	0x40212dc4c9c90c4e              # double 8.5893920000000001
	.quad	0x4023bb4edb2f661f              # double 9.8658359999999998
	.quad	0x4019b27b2cc70868              # double 6.4242980000000003
	.quad	0x3fe723a6ce358299              # double 0.72310200000000002
	.quad	0x400adad2135daad6              # double 3.356846
	.quad	0x401a6ce5b4245f5b              # double 6.6063450000000001
	.quad	0x3ff8676fb09203a3              # double 1.525253
	.quad	0x402243124d099e0e              # double 9.1309989999999992
	.quad	0x40183436b8f9b131              # double 6.0509899999999996
	.quad	0x40234e922d948dc1              # double 9.6534589999999997
	.quad	0x4023d5ee99a62ed3              # double 9.9178359999999994
	.quad	0x40191415b1422ccb              # double 6.2696139999999998
	.quad	0x40134aed99cbee80              # double 4.8231719999999996
	.quad	0x401b19fba450acc1              # double 6.7753740000000002
	.quad	0x40204e5300581494              # double 8.1529769999999999
	.quad	0x40212055fbb517a4              # double 8.5631559999999993
	.quad	0x4005403e63e8dda5              # double 2.6563690000000002
	.quad	0x401be46c764adff8              # double 6.9730699999999999
	.quad	0x4022c6f75d9a0f0a              # double 9.3886059999999993
	.quad	0x4007dfa333764f12              # double 2.9841980000000001
	.quad	0x3fd71c9f72f76e61              # double 0.361122
	.quad	0x401bb8abd5dc4007              # double 6.9303429999999997
	.quad	0x40124cb1897a67a5              # double 4.5748959999999999
	.quad	0x3ff1b24b76f6d762              # double 1.1060289999999999
	.quad	0x401b2e56473471f8              # double 6.7952510000000004
	.quad	0x401046a37ac3eb7d              # double 4.0689830000000002
	.quad	0x4018433ebbfd71b0              # double 6.0656689999999998
	.quad	0x40110d02cd39da16              # double 4.2627059999999997
	.quad	0x401c5893b7d84902              # double 7.0865010000000002
	.quad	0x40050de54b48d3ae              # double 2.6317849999999998
	.quad	0x4012d9d7774aba38              # double 4.7127359999999996
	.quad	0x402365aad601ffb5              # double 9.6985690000000008
	.quad	0x3ffd769984a0e411              # double 1.8414550000000001
	.quad	0x4012512cf0f9d2bf              # double 4.5792729999999997
	.quad	0x400cc472c0e7bc3c              # double 3.5959219999999998
	.quad	0x3ffbecb10342aa9f              # double 1.7452859999999999
	.quad	0x40068fe260b2c83f              # double 2.8202560000000001
	.quad	0x40143c158fb43d8a              # double 5.0586760000000002
	.quad	0x4018ac47a17f4129              # double 6.1682420000000002
	.quad	0x4015244aa53fc009              # double 5.2854409999999996
	.quad	0x40210f31f46ed246              # double 8.5296780000000005
	.quad	0x4018a2135daad602              # double 6.158277
	.quad	0x3fec1c17225b749b              # double 0.87842900000000002
	.quad	0x4015c5e2cdc011d3              # double 5.4432479999999996
	.quad	0x400b7d3ed527e521              # double 3.4361549999999998
	.quad	0x401b58194c016052              # double 6.8360339999999997
	.quad	0x4010ac43f5f91601              # double 4.168228
	.quad	0x401445321e603d57              # double 5.0675739999999996
	.quad	0x4012b5350092ccf7              # double 4.6769600000000002
	.quad	0x3fec44998d045fe1              # double 0.88337399999999999
	.quad	0x401391b1d92b7fe1              # double 4.8922800000000004
	.quad	0x4003e01797cc3a00              # double 2.4844200000000001
	.quad	0x4015c16df3f96180              # double 5.4388959999999997
	.quad	0x3ff36351deefe500              # double 1.211748
	.quad	0x401015ea24cc6823              # double 4.021401
	.quad	0x3ff423baba7b9171              # double 1.258723
	.quad	0x4017ae008e9b38d6              # double 5.919924
	.quad	0x4006133b10774688              # double 2.7593899999999998
	.quad	0x40113d50ebaade65              # double 4.3098789999999996
	.quad	0x40006a11ec918e32              # double 2.0517919999999998
	.quad	0x4018c54b8bef8ceb              # double 6.1926709999999998
	.quad	0x4004105857afea3e              # double 2.507981
	.quad	0x401b38f57f737da6              # double 6.8056239999999999
	.quad	0x4011ca5df2239e6b              # double 4.4476240000000002
	.quad	0x40151883fd502257              # double 5.2739409999999998
	.quad	0x4012bd5454152b0a              # double 4.6848919999999996
	.quad	0x40163a033e78e193              # double 5.5566529999999998
	.quad	0x4015257e670e2c13              # double 5.2866150000000003
	.quad	0x401b5f401c4fc1df              # double 6.8430179999999998
	.quad	0x4011a9c6b0531983              # double 4.4157970000000004
	.quad	0x4021f44a4095f245              # double 8.9771289999999997
	.quad	0x4021bfc2224edf61              # double 8.8745279999999998
	.quad	0x401cf0b0af5fd47c              # double 7.2350490000000001
	.quad	0x401779b13165d399              # double 5.8688399999999996
	.quad	0x4013e7574f722e1b              # double 4.9759190000000002
	.quad	0x401c8858bc59b802              # double 7.1331509999999998
	.quad	0x402114dc443914f5              # double 8.5407430000000009
	.quad	0x3fdb8d045fe11127              # double 0.43048199999999998
	.quad	0x3fcdaa1511dffc54              # double 0.23175299999999999
	.quad	0x3fdf528283d35eb7              # double 0.48941099999999998
	.quad	0x4015083e8576cce6              # double 5.258051
	.quad	0x401a269df97aaac1              # double 6.537712
	.quad	0x40233c96aad1d042              # double 9.6183370000000004
	.quad	0x401d77314ca925ff              # double 7.3663990000000004
	.quad	0x4019731fcd24e161              # double 6.3624260000000001
	.quad	0x3fddcebbba55d1c4              # double 0.46574300000000002
	.quad	0x400a2e9ab29e4d5e              # double 3.2727560000000002
	.quad	0x400f16c1e364bec6              # double 3.8861119999999998
	.quad	0x401e475147f13059              # double 7.5696459999999996
	.quad	0x4012454ac29bf163              # double 4.5676680000000003
	.quad	0x40117577d955714c              # double 4.3647150000000003
	.quad	0x40128b9b66f9335d              # double 4.6363349999999999
	.quad	0x3ffdfc408d8ec95c              # double 1.874085
	.quad	0x40065f72f76e6107              # double 2.7966060000000001
	.quad	0x3facc016052502ef              # double 0.056153000000000002
	.quad	0x40238a376922d949              # double 9.7699540000000002
	.quad	0x401f9eb1c432ca58              # double 7.9049750000000003
	.quad	0x400e120535c9e668              # double 3.7587989999999998
	.quad	0x402361a3d2d87f88              # double 9.6907029999999991
	.quad	0x400b2b630a91537a              # double 3.396185
	.quad	0x4020c70e2c12ad82              # double 8.3887800000000006
	.quad	0x40140e1049235f81              # double 5.0137340000000004
	.quad	0x401e99008205ff1e              # double 7.6494160000000004
	.quad	0x3ff90331e3a7daa5              # double 1.56328
	.quad	0x40213a1294573a79              # double 8.6134229999999992
	.quad	0x40176b524399b2c4              # double 5.854806
	.quad	0x40006429e0a41a26              # double 2.048908
	.quad	0x402209c779a6b50b              # double 9.0190999999999999
	.quad	0x4008dad2135daad6              # double 3.106846
	.quad	0x3fff7d06bbdbe3c1              # double 1.968024
	.quad	0x4021a5d13d74d595              # double 8.8238620000000001
	.quad	0x3feda1ea35935fc4              # double 0.92601500000000003
	.quad	0x401fcffac1d29dc7              # double 7.9531049999999998
	.quad	0x401eb548ecd8dbcf              # double 7.6770360000000001
	.quad	0x3fc10635a426bb56              # double 0.13300200000000001
	.quad	0x3fce6bce8533b107              # double 0.23766499999999999
	.quad	0x4003a7b139c94f6a              # double 2.4568810000000001
	.quad	0x4021a0e6afcce1c6              # double 8.8142600000000009
	.quad	0x40218fc2eba27aea              # double 8.7807840000000006
	.quad	0x401875dfa871a3b1              # double 6.1151109999999997
	.quad	0x40218db035bd512f              # double 8.7767350000000004
	.quad	0x4012338e6d15ad10              # double 4.5503479999999996
	.quad	0x4015dc77574f722e              # double 5.4652989999999999
	.quad	0x4010980ecfa69be1              # double 4.1484940000000003
	.quad	0x3fe68fc504816f00              # double 0.70504999999999995
	.quad	0x3fffc41355475a32              # double 1.9853700000000001
	.quad	0x4002335b0bbf50e3              # double 2.2750759999999999
	.quad	0x400e1a294141e9af              # double 3.7627739999999998
	.quad	0x4020b93fd0d0678c              # double 8.3618149999999999
	.quad	0x4021a504a2fcefaa              # double 8.8223009999999995
	.quad	0x4023b75a1016ce79              # double 9.8581090000000006
	.quad	0x3ff84acd184c2720              # double 1.518262
	.quad	0x40225c0724b76f6d              # double 9.1797419999999992
	.quad	0x400b03ea704bc276              # double 3.3769119999999999
	.quad	0x3fe7fc06e19b90eb              # double 0.74951500000000004
	.quad	0x40229d536933a040              # double 9.3072769999999991
	.quad	0x401ce2977c88e79b              # double 7.2212810000000003
	.quad	0x3ff4675ff609dcf9              # double 1.2752380000000001
	.quad	0x4011cdc8323358f3              # double 4.4509590000000001
	.quad	0x4002fd48cb4aec8d              # double 2.3736739999999998
	.quad	0x3fe2f7c45cbbc2b9              # double 0.59274499999999997
	.quad	0x4011edf7a4e7ab75              # double 4.4823899999999997
	.quad	0x3f8940789613d31c              # double 0.012330000000000001
	.quad	0x400b25614df8b157              # double 3.3932519999999999
	.quad	0x3fd444e0daa0cae6              # double 0.31670399999999999
	.quad	0x4021eaa369fcf3dc              # double 8.9582779999999999
	.quad	0x40223e48626f60e1              # double 9.1216460000000001
	.quad	0x3ff8ab2074ea8da8              # double 1.541779
	.quad	0x4010b743201040c0              # double 4.1789670000000001
	.quad	0x3fef07f88765ba6f              # double 0.969723
	.quad	0x3f967168f8e7ddca              # double 0.021916999999999999
	.quad	0x3ffcc37d63022dd8              # double 1.7977270000000001
	.quad	0x3fe60767d34df04e              # double 0.68840400000000002
	.quad	0x4022e9ee45c358b0              # double 9.4568960000000004
	.quad	0x400cff98b71b8aa0              # double 3.624803
	.quad	0x3ff729e5e2478855              # double 1.447729
	.quad	0x400026d71f36262d              # double 2.0189650000000001
	.quad	0x3ffcd59c49774257              # double 1.8021510000000001
	.quad	0x4023489528f190d1              # double 9.6417629999999991
	.quad	0x4012e4528283d35f              # double 4.7229710000000003
	.quad	0x40235d0bd87b56b8              # double 9.6817309999999991
	.quad	0x401fefed20296b33              # double 7.9843029999999997
	.quad	0x401f06bbdbe3c105              # double 7.7565759999999999
	.quad	0x4007ae4c0df58c09              # double 2.9601060000000001
	.quad	0x4008d7f0ed3d859d              # double 3.1054400000000002
	.quad	0x401a93d96638433d              # double 6.6443839999999996
	.quad	0x3ffb74b72c5197a2              # double 1.7159949999999999
	.quad	0x3ffc2e8af81626b3              # double 1.761363
	.quad	0x401ab796bfca85cb              # double 6.6792860000000003
	.quad	0x4002e9b845564b66              # double 2.3641209999999999
	.quad	0x3ff3451654d61b2a              # double 1.204367
	.quad	0x401cd857f3061c7a              # double 7.2112730000000003
	.quad	0x3ff3c4cdfaca361a              # double 1.2355480000000001
	.quad	0x3ff779389b52007e              # double 1.467095
	.quad	0x3ff8266fd651b0cd              # double 1.5093840000000001
	.quad	0x4019fac57e23f24e              # double 6.4948940000000004
	.quad	0x40138d9be4cd7492              # double 4.8882899999999996
	.quad	0x3ff8000000000000              # double 1.5
	.quad	0x40227cd35a858794              # double 9.2438000000000002
	.quad	0x3ffe36b4c7f34938              # double 1.8883559999999999
	.quad	0x401a8af102363b25              # double 6.6356849999999996
	.quad	0x40027accd530489d              # double 2.3099609999999999
	.quad	0x4021ed1e75360d02              # double 8.9631229999999995
	.quad	0x40222f5cf2495e18              # double 9.0925060000000002
	.quad	0x3fceffb8b26394fb              # double 0.24217900000000001
	.quad	0x400d8ec39799e519              # double 3.694709
	.quad	0x4016cdaa92e62132              # double 5.7008460000000003
	.quad	0x4014e92fb19e731d              # double 5.2277209999999998
	.quad	0x4001966c6de76428              # double 2.1984490000000001
	.quad	0x401971cef240fa9c              # double 6.3611409999999999
	.quad	0x3fda2ba9d1f60179              # double 0.40891499999999997
	.quad	0x4014d743e963dc48              # double 5.2102199999999996
	.quad	0x401e964f11b60ae9              # double 7.6467859999999996
	.quad	0x40223e744b2b777d              # double 9.1219809999999999
	.quad	0x4023d75c0767d34e              # double 9.9206240000000001
	.quad	0x4014abe6e6538690              # double 5.1678730000000002
	.quad	0x401aecf13cee9dd8              # double 6.7313890000000001
	.quad	0x3ffa3d3910c2c5e3              # double 1.639947
	.quad	0x3fe3dea033e78e19              # double 0.62092599999999998
	.quad	0x4001d2ba9d1f6018              # double 2.2278950000000002
	.quad	0x4023ae019b0ab2e1              # double 9.8398559999999992
	.quad	0x40220963baba7b91              # double 9.0183389999999992
	.quad	0x40230a6e5471715c              # double 9.5203729999999993
	.quad	0x40145999dcb5781c              # double 5.0875009999999996
	.quad	0x401e3ab14ec204f3              # double 7.5573170000000002
	.quad	0x40188ddebd9018e7              # double 6.1385449999999997
	.quad	0x3ffb58201cd5f99c              # double 1.709015
	.quad	0x401fb0c38f366949              # double 7.9226210000000003
	.quad	0x40161ed02cd39da1              # double 5.5300909999999996
	.quad	0x401665cc426351df              # double 5.5994120000000001
	.quad	0x400c7fe542e557de              # double 3.562449
	.quad	0x401e528954a7f801              # double 7.5806019999999998
	.quad	0x4022ebb906466b1e              # double 9.4603959999999994
	.quad	0x402239cb252ce033              # double 9.1128780000000003
	.quad	0x401be4a8c154c986              # double 6.9733000000000001
	.quad	0x3fceffc115df6556              # double 0.24218000000000001
	.quad	0x40037903a7546d40              # double 2.4340890000000002
	.quad	0x3fb7fd1dcd7060bb              # double 0.093705999999999998
	.quad	0x4002ae2328f9f44d              # double 2.3350279999999999
	.quad	0x4016d0d3cff64cf9              # double 5.7039330000000001
	.quad	0x4016e30f49491f2e              # double 5.7217380000000002
	.quad	0x400059b8887229e9              # double 2.043809
	.quad	0x401a6bd61f5be5da              # double 6.6053090000000001
	.quad	0x4021d7b5d031055c              # double 8.9213090000000008
	.quad	0x40036102ff8ec0f9              # double 2.4223690000000002
	.quad	0x400dbabf33871609              # double 3.7161849999999998
	.quad	0x40011d4a5df2239e              # double 2.1393019999999998
	.quad	0x40117b2d4d4024b3              # double 4.3702899999999998
	.quad	0x402163bb1f255f35              # double 8.6947869999999998
	.quad	0x40214ea37ac3eb7d              # double 8.6535910000000005
	.quad	0x4023c46f9b994e1a              # double 9.8836639999999996
	.quad	0x401a1e7a743a6480              # double 6.5297640000000001
	.quad	0x3fed89b738e6d15b              # double 0.92306100000000002
	.quad	0x401a2b3bb83cf2d0              # double 6.5422200000000004
	.quad	0x401dc4ccee5abc0e              # double 7.4421879999999998
	.quad	0x400bb583a53b8e4c              # double 3.4636300000000002
	.quad	0x4023d72f33ca31e8              # double 9.9202820000000002
	.quad	0x4003cdd93c46d82c              # double 2.4755120000000002
	.quad	0x40182f633ce63a5c              # double 6.0462769999999999
	.quad	0x40114733a8a3f898              # double 4.3195329999999998
	.quad	0x4013ac96030c23fb              # double 4.9185410000000003
	.quad	0x400428c9320d9946              # double 2.5199150000000001
	.quad	0x4004adcfcc5b8dc5              # double 2.5848689999999999
	.quad	0x3fe604988094e5d6              # double 0.68806100000000003
	.quad	0x401b32bae03b3e9a              # double 6.7995409999999996
	.quad	0x401a7d783dff3f10              # double 6.6225290000000001
	.quad	0x402257b9389b5200              # double 9.1713349999999991
	.quad	0x3fe4747304039abf              # double 0.63921499999999998
	.quad	0x4010bc011d3671ac              # double 4.1835979999999999
	.quad	0x402003a53b8e4b88              # double 8.0071200000000005
	.quad	0x3fe162435696e58a              # double 0.54324499999999998
	.quad	0x400b06f0cfe15443              # double 3.3783889999999999
	.quad	0x400b3e6149c6f36f              # double 3.405459
	.quad	0x3ff6ed0917d6b65b              # double 1.4328700000000001
	.quad	0x401e7f74cd31769b              # double 7.6244690000000003
	.quad	0x3ff6779d909f1f15              # double 1.4042030000000001
	.quad	0x400de5119ce075f7              # double 3.73685
	.quad	0x4005eb838c111ada              # double 2.7399969999999998
	.quad	0x3fe94e13f4a98aa8              # double 0.79078099999999996
	.quad	0x3f9f20ea5b530ced              # double 0.030398999999999999
	.quad	0x4018fc88a47ecfea              # double 6.2466150000000003
	.quad	0x401a9a09cc319c5a              # double 6.6504279999999998
	.quad	0x4010892e62131a8f              # double 4.133966
	.quad	0x40231b630a91537a              # double 9.55349
	.quad	0x401243e8576cce5f              # double 4.5663159999999996
	.quad	0x40209ace032db1ea              # double 8.3023530000000001
	.quad	0x3febfb97bb730835              # double 0.87446199999999996
	.quad	0x40146caa326e1156              # double 5.1061180000000004
	.quad	0x4020de696a26e547              # double 8.4343979999999998
	.quad	0x40214638c9752978              # double 8.6371520000000004
	.quad	0x3fe2ec0d6f544bb2              # double 0.59131500000000004
	.quad	0x4003dd36f7e3d1cc              # double 2.483015
	.quad	0x4022add41fa76534              # double 9.3395089999999996
	.quad	0x401cb409a2403148              # double 7.1758179999999996
	.quad	0x3ff525aab4741073              # double 1.321696
	.quad	0x40144476f2a5a46a              # double 5.0668600000000001
	.quad	0x4022730af5fd47bf              # double 9.2246930000000003
	.quad	0x3ff82bfdb4cc2507              # double 1.51074
	.quad	0x401bd5c39bcba301              # double 6.9587539999999999
	.quad	0x401f2d883ba3443d              # double 7.7944649999999997
	.quad	0x4001bda48b652370              # double 2.2175989999999999
	.quad	0x400bdb4a2339c0ec              # double 3.482075
	.quad	0x400c969b9d7fd827              # double 3.5735389999999998
	.quad	0x40124b395c422036              # double 4.573461
	.quad	0x40145ec743201041              # double 5.0925570000000002
	.quad	0x4003881b21c475e6              # double 2.4414579999999999
	.quad	0x4013fb4a2339c0ec              # double 4.9954000000000001
	.quad	0x4007d805e5f30e80              # double 2.98048
	.quad	0x4002898f605ab3ab              # double 2.3171680000000001
	.quad	0x401fac64fdb09a67              # double 7.9183539999999998
	.quad	0x3ffed988d2a1f8e4              # double 1.9281090000000001
	.quad	0x40193d2d87f88766              # double 6.3097440000000002
	.quad	0x4004a2a23bff8a8f              # double 2.5794109999999999
	.quad	0x3fff3780346dc5d6              # double 1.95105
	.quad	0x401a359253543aeb              # double 6.5523160000000003
	.quad	0x3ff36f1fddebd902              # double 1.2146300000000001
	.quad	0x40172c98a222d517              # double 5.7935509999999999
	.quad	0x3fe8e7125dd095af              # double 0.77820699999999998
	.quad	0x40162eaf251c193b              # double 5.5455899999999998
	.quad	0x4019b8533b107747              # double 6.4300050000000004
	.quad	0x401c79420b3d4ae4              # double 7.1184159999999999
	.quad	0x401a3a3e39f77293              # double 6.5568780000000002
	.quad	0x400d519bd4067cf2              # double 3.6648480000000001
	.quad	0x401f52c01e68a0d3              # double 7.8308109999999997
	.quad	0x40142334c5da6a44              # double 5.0343809999999998
	.quad	0x401f23b3636f3b21              # double 7.7848639999999997
	.quad	0x3ff1dd084e831ad2              # double 1.116463
	.quad	0x4023d6e02a77a2cf              # double 9.9196790000000003
	.quad	0x4016e124d099e0e7              # double 5.7198669999999998
	.quad	0x40189585be1a8262              # double 6.1460179999999998
	.quad	0x400e182f51266341              # double 3.761809
	.quad	0x401e816d2aa5c5f8              # double 7.6263930000000001
	.quad	0x3ff238bac710cb29              # double 1.1388499999999999
	.quad	0x4022af8f8a4c1ebd              # double 9.3428920000000009
	.quad	0x40201a2f6a50d6b2              # double 8.0511429999999997
	.quad	0x4009ca172abef06b              # double 3.2236769999999999
	.quad	0x401bff37329c347f              # double 6.9992340000000004
	.quad	0x401165e84f09528f              # double 4.3495189999999999
	.quad	0x3fffa9cfdd228566              # double 1.978958
	.quad	0x400c7474107314cb              # double 3.5568620000000002
	.quad	0x401e6393682730c6              # double 7.5972419999999996
	.quad	0x402279da9c99285b              # double 9.2379960000000008
	.quad	0x401c0eb91b3f20a7              # double 7.0143779999999998
	.quad	0x400d2258d5842b73              # double 3.6417709999999999
	.quad	0x401bf954eb13dfb1              # double 6.9934880000000001
	.quad	0x40070be8bc169c24              # double 2.8808150000000001
	.quad	0x4013a2ee84ad794a              # double 4.9091129999999996
	.quad	0x401f6eba6aca7935              # double 7.8581329999999995
	.quad	0x3ff54621b7e0ac7e              # double 1.3296220000000001
	.quad	0x401e5e4bcad9ad86              # double 7.5920860000000001
	.quad	0x3ff4f21815a07b35              # double 1.309105
	.quad	0x40204ce50c5eb314              # double 8.1501850000000004
	.quad	0x401401c68ec52a41              # double 5.0017339999999999
	.quad	0x4001e916ca46e08f              # double 2.2388129999999999
	.quad	0x402322ea52ef911d              # double 9.568194
	.quad	0x4010b817763e4abe              # double 4.1797769999999996
	.quad	0x400a955714b9cb68              # double 3.3229199999999999
	.quad	0x401f1b33daf8df7a              # double 7.7765649999999997
	.quad	0x40176ca5375c8da0              # double 5.8560990000000004
	.quad	0x3ff7d7c2ca148ba8              # double 1.4901759999999999
	.quad	0x4017caf3a14cec42              # double 5.9481950000000001
	.quad	0x401aa93ff25e56cd              # double 6.6652829999999996
	.quad	0x3fc46149c6f36ef8              # double 0.159219
	.quad	0x402220dcb9a9da59              # double 9.0641839999999991
	.quad	0x400b13e89a88ace2              # double 3.3847209999999999
	.quad	0x40219b2788db0575              # double 8.8030360000000005
	.quad	0x3fb28a82a5614df9              # double 0.072426000000000004
	.quad	0x40220957eed45e92              # double 9.0182490000000008
	.quad	0x40126148fd9fd36f              # double 4.5950049999999996
	.quad	0x3ff004ef88b97785              # double 1.0012049999999999
	.quad	0x400f530728e92d56              # double 3.9155410000000002
	.quad	0x3ff8701eabbcb1cd              # double 1.5273730000000001
	.quad	0x402166115592d98c              # double 8.699351
	.quad	0x400f28893b7d8490              # double 3.8947929999999999
	.quad	0x3fd9fa26a22b3893              # double 0.405893
	.quad	0x4009010f94c87981              # double 3.125518
	.quad	0x4003c83b1d0c8041              # double 2.472769
	.quad	0x400eec5b078d92fb              # double 3.865408
	.quad	0x4011f564302b40f6              # double 4.4896399999999996
	.quad	0x402228f5c28f5c29              # double 9.0800000000000001
	.quad	0x40035a2df9378ee3              # double 2.4190330000000002
	.quad	0x3fe0a925fe974a34              # double 0.520648
	.quad	0x4020097a89331a09              # double 8.0185130000000004
	.quad	0x401035b1422ccb3a              # double 4.0524339999999999
	.quad	0x4020aea747d805e6              # double 8.3411200000000001
	.quad	0x4021e3c558644524              # double 8.944865
	.quad	0x401e9b2031ceaf25              # double 7.6514899999999999
	.quad	0x4017ce27e0ef9980              # double 5.9513239999999996
	.quad	0x4005398958d9b5e9              # double 2.6530939999999998
	.quad	0x401a4c2e770bd018              # double 6.5743960000000001
	.quad	0x4022fac8e68e3ef3              # double 9.4898140000000008
	.quad	0x400205c78a6dacac              # double 2.2528220000000001
	.quad	0x40117b4aec8d5c74              # double 4.3704029999999996
	.quad	0x4016883621fafc8b              # double 5.633019
	.quad	0x4021ea73f748a15a              # double 8.9579160000000009
	.quad	0x400b073a365cb35f              # double 3.3785289999999999
	.quad	0x4010f925fe974a34              # double 4.243309
	.quad	0x4012acb1cc964628              # double 4.668647
	.quad	0x400d98d9b5e95b79              # double 3.6996340000000001
	.quad	0x4018e2f3c2dadb83              # double 6.2216329999999997
	.quad	0x401562ecaeea63b7              # double 5.3466060000000004
	.quad	0x401b5791c4b90215              # double 6.8355170000000003
	.quad	0x401ab2f944241c3f              # double 6.674779
	.quad	0x4023f6e1deacc921              # double 9.9821919999999995
	.quad	0x4005af3d3a1d3240              # double 2.710566
	.quad	0x401bc001d5c31594              # double 6.9375070000000001
	.quad	0x401518305d95dd4c              # double 5.2736219999999996
	.quad	0x40208879c4113c68              # double 8.2665539999999993
	.quad	0x401c72595bbbe879              # double 7.111669
	.quad	0x4014a317efe0ce0c              # double 5.1592710000000004
	.quad	0x4014e1bda5119ce0              # double 5.2204499999999996
	.quad	0x3fef142d490e66cb              # double 0.97121299999999999
	.quad	0x401e549774256bca              # double 7.5826089999999997
	.quad	0x401b66c7219220ff              # double 6.8503689999999997
	.quad	0x40008a8c154c985f              # double 2.06765
	.quad	0x3ffee24031487768              # double 1.930237
	.quad	0x401ddfed634549b6              # double 7.4686789999999998
	.quad	0x401c5da9003eea21              # double 7.0914650000000004
	.quad	0x4013fcbc05d52c17              # double 4.9968110000000001
	.quad	0x3ff12817763e4abe              # double 1.0722879999999999
	.quad	0x401c2af89c5e6ff8              # double 7.0419640000000001
	.quad	0x40230877ccc03793              # double 9.5165389999999998
	.quad	0x4000f0a2ca9ac365              # double 2.1174979999999999
	.quad	0x4014a86f049a9974              # double 5.1644860000000001
	.quad	0x3ff961975f2cb641              # double 1.5863259999999999
	.quad	0x401db24af0bf1a5d              # double 7.4241140000000003
	.quad	0x40218eb053198288              # double 8.778689
	.quad	0x40231a49a133c1ce              # double 9.5513429999999993
	.quad	0x4012b6f86a098916              # double 4.6786820000000002
	.quad	0x3fd9d2135daad602              # double 0.403447
	.quad	0x3fea6ba6aca79357              # double 0.82564099999999996
	.quad	0x401db999dcb5781c              # double 7.4312509999999996
	.quad	0x40237c15f45e0b4e              # double 9.7423549999999999
	.quad	0x3ff2fc200c0f01fc              # double 1.1865540000000001
	.quad	0x4012ce9f6a93f291              # double 4.7017800000000003
	.quad	0x40155f79420b3d4b              # double 5.3432360000000001
	.quad	0x40160b599aa60914              # double 5.5110840000000003
	.quad	0x401d800bcbe61d00              # double 7.3750450000000001
	.quad	0x3ff71ea897635e74              # double 1.444985
	.quad	0x400c5deb52c9d170              # double 3.5458590000000001
	.quad	0x40057a2ad3e920c0              # double 2.6846519999999998
	.quad	0x4023aef60e0eb67c              # double 9.8417209999999997
	.quad	0x40038a07f66e86c6              # double 2.4423979999999998
	.quad	0x4015b4a1272c94b4              # double 5.4263960000000004
	.quad	0x40231b97353b4b30              # double 9.5538880000000006
	.quad	0x401440fd3b29a1ba              # double 5.063466
	.quad	0x40121f3775b81301              # double 4.5304849999999997
	.quad	0x401fd2617c1bda51              # double 7.9554499999999999
	.quad	0x4012f2a0ec743201              # double 4.736942
	.quad	0x3ff540c8472c0e7c              # double 1.3283160000000001
	.quad	0x401f8582dbe7f2c3              # double 7.8803819999999999
	.quad	0x3ff39a1a93293d10              # double 1.225123
	.quad	0x3ffbb863beec397a              # double 1.7325170000000001
	.quad	0x4003a1fc8f32378b              # double 2.4540950000000001
	.quad	0x3fe3af3e468cac4b              # double 0.61514199999999997
	.quad	0x400c1070fbeb9e49              # double 3.5080279999999999
	.quad	0x4015bc558644523f              # double 5.4339199999999996
	.quad	0x40214539b888722a              # double 8.6352060000000002
	.quad	0x4023e6b5f5f0b285              # double 9.9506069999999997
	.quad	0x4019ab068123810f              # double 6.4170170000000004
	.quad	0x402378d51f81a587              # double 9.7360009999999999
	.quad	0x401062491afc04c9              # double 4.0959820000000002
	.quad	0x3ff33f69014b599b              # double 1.2029810000000001
	.quad	0x402357229e90795f              # double 9.6701859999999992
	.quad	0x4012f634549b62c7              # double 4.7404339999999996
	.quad	0x40157964628027d9              # double 5.3685470000000004
	.quad	0x40134c73abc94706              # double 4.8246599999999997
	.quad	0x40118e414e7ee914              # double 4.3889209999999999
	.quad	0x40200eb0d9513f8e              # double 8.0286930000000005
	.quad	0x402298cfe154434e              # double 9.2984609999999996
	.quad	0x4022e5892684cf07              # double 9.4483119999999995
	.quad	0x4018e6e75ff609dd              # double 6.225492
	.quad	0x4022fb23fee2c98e              # double 9.4905089999999994
	.quad	0x401bbe215336deb9              # double 6.9356739999999997
	.quad	0x400cbe1c15097c81              # double 3.5928270000000002
	.quad	0x40069526d8b1dd5d              # double 2.8228279999999999
	.quad	0x3fea2921ccd96207              # double 0.81752100000000005
	.quad	0x401af55d1c3ac92a              # double 6.7396130000000003
	.quad	0x3fccd2ed783dff3f              # double 0.225187
	.quad	0x40097abead4f5904              # double 3.1849340000000002
	.quad	0x401233586ca89fc7              # double 4.5501420000000001
	.quad	0x401ebf4adbc664d4              # double 7.6868090000000002
	.quad	0x400bc548a9bcfd4c              # double 3.47133
	.quad	0x3fe2978d4fdf3b64              # double 0.58099999999999996
	.quad	0x3fe8627bf61aa3f0              # double 0.76202199999999998
	.quad	0x3ffd094b380cb6c8              # double 1.8147690000000001
	.quad	0x402236fbb0e5e679              # double 9.1073889999999995
	.quad	0x40087e41d4b6a61a              # double 3.0616490000000001
	.quad	0x4018e50ce4ead0c4              # double 6.2236820000000002
	.quad	0x401bd6412cf0f9d3              # double 6.9592330000000002
	.quad	0x4004e44f1a1986ba              # double 2.6114790000000001
	.quad	0x401047329c347e8d              # double 4.0695290000000002
	.quad	0x401bcb30728e92d5              # double 6.9484269999999997
	.quad	0x3ff77393ab430f49              # double 1.4657169999999999
	.quad	0x40108ea2d2fe3f36              # double 4.1392930000000003
	.quad	0x400866ed245b291c              # double 3.0502570000000002
	.quad	0x401b3b395c422036              # double 6.807836
	.quad	0x401f4cfd08d4bad8              # double 7.8251840000000001
	.quad	0x4007eecaeea63b69              # double 2.9915980000000002
	.quad	0x4015ec4f3ba775fb              # double 5.4807709999999998
	.quad	0x3ff8614ad362e903              # double 1.5237529999999999
	.quad	0x401ee0870110a138              # double 7.719265
	.quad	0x40207f7878b7a1c2              # double 8.2489659999999994
	.quad	0x40011c67dfe32a06              # double 2.1388699999999998
	.quad	0x4019b93b7d84901d              # double 6.4308909999999999
	.quad	0x4020c882cf52b90a              # double 8.3916229999999992
	.quad	0x3fdabab21815a07b              # double 0.41764499999999999
	.quad	0x401a566e008e9b39              # double 6.5844040000000001
	.quad	0x401558283d35eb74              # double 5.3360909999999997
	.quad	0x3fc38e5c4eb56fb9              # double 0.152782
	.quad	0x3fec8769ec2ce465              # double 0.89153000000000004
	.quad	0x3ff082de00d1b717              # double 1.0319499999999999
	.quad	0x3fc6ab81f969e3c9              # double 0.17710899999999999
	.quad	0x401507e28240b780              # double 5.2576999999999998
	.quad	0x40102e9f6a93f291              # double 4.0455300000000003
	.quad	0x4000d2bf5515054b              # double 2.1029040000000001
	.quad	0x4021bc84b5dcc63f              # double 8.8681999999999999
	.quad	0x3fec37bd05af6c6a              # double 0.88180400000000003
	.quad	0x401c0b7f5a5332ad              # double 7.011228
	.quad	0x3ff4a687f455a7d2              # double 1.2906569999999999
	.quad	0x40024f52b90a7829              # double 2.288732
	.quad	0x40045e8ab4fa4830              # double 2.546163
	.quad	0x401d9d8409e55c10              # double 7.4038240000000002
	.quad	0x40124269df97aaac              # double 4.5648569999999999
	.quad	0x400637f1f9acffa8              # double 2.777317
	.quad	0x4020e10b417ca212              # double 8.4395389999999999
	.quad	0x4020783eea209aaa              # double 8.2348549999999996
	.quad	0x3ff6cb49e01de269              # double 1.424631
	.quad	0x40235b98e9707182              # double 9.6789009999999998
	.quad	0x4020a0cf1800a7c6              # double 8.3140800000000006
	.quad	0x3fda876e1deacc92              # double 0.414516
	.quad	0x3fe5289fc6da4485              # double 0.66120900000000005
	.quad	0x400f2b9346994185              # double 3.896277
	.quad	0x4015b35610adcd2d              # double 5.4251329999999998
	.quad	0x401c358d9b5e95b8              # double 7.0522980000000004
	.quad	0x401641e0c5a8155d              # double 5.5643339999999997
	.quad	0x40065db65ecc3e32              # double 2.7957580000000002
	.quad	0x4015cb1cc9646280              # double 5.4483519999999999
	.quad	0x4020452849cb252d              # double 8.1350730000000002
	.quad	0x3ffea817763e4abe              # double 1.9160379999999999
	.quad	0x4012693708aac96d              # double 4.6027490000000002
	.quad	0x4004e6b2f23033a4              # double 2.6126459999999998
	.quad	0x40152320535c9e67              # double 5.2843030000000004
	.quad	0x3ff4b5c28f5c28f6              # double 1.2943750000000001
	.quad	0x40172e8576cce5f7              # double 5.7954309999999998
	.quad	0x3ff350abb44e50c6              # double 1.207195
	.quad	0x3ff7c0303c07ee0b              # double 1.484421
	.quad	0x40138d323fee2c99              # double 4.8878870000000001
	.quad	0x40205466d373affb              # double 8.164847
	.quad	0x402289633482be8c              # double 9.2683350000000004
	.quad	0x401685fb71fbc5df              # double 5.6308420000000003
	.quad	0x400612f449129889              # double 2.759255
	.quad	0x401438ede54b48d4              # double 5.0555950000000003
	.quad	0x4011262ed352220c              # double 4.2872880000000002
	.quad	0x4015fb841248d7e0              # double 5.4956209999999999
	.quad	0x400318e864020818              # double 2.387162
	.quad	0x4023dcdf69878317              # double 9.9313920000000006
	.quad	0x4002a8c60cbf2b24              # double 2.3324090000000002
	.quad	0x40185ef177a7008a              # double 6.0927179999999996
	.quad	0x4019348b65237048              # double 6.3013130000000004
	.quad	0x400075970b49e01e              # double 2.0574170000000001
	.quad	0x401f008bb906466b              # double 7.7505329999999998
	.quad	0x401a6e0653005815              # double 6.6074460000000004
	.quad	0x4023f5ba0a526959              # double 9.9799349999999993
	.quad	0x400ac327674d1633              # double 3.3452899999999999
	.quad	0x400cafbd273d5bab              # double 3.5858099999999999
	.quad	0x402297e670e2c12b              # double 9.2966800000000003
	.quad	0x400d89d6adf71eb0              # double 3.692304
	.quad	0x3fb1df43c7d5ed07              # double 0.069813
	.quad	0x401d06dc1a47a9e3              # double 7.2566990000000002
	.quad	0x401a9aa4766c6de7              # double 6.6510179999999997
	.quad	0x40109610adcd2d45              # double 4.1465480000000001
	.quad	0x3ff7fa30121682f9              # double 1.4985809999999999
	.quad	0x40201c447c30d307              # double 8.0552100000000006
	.quad	0x40232d48a9bcfd4c              # double 9.5884450000000001
	.quad	0x4017a4b9884c6a3c              # double 5.9108640000000001
	.quad	0x3fce83c297bfa4c6              # double 0.238396
	.quad	0x401ad8a159817b96              # double 6.7115530000000003
	.quad	0x40134fa4c61d8623              # double 4.8277770000000002
	.quad	0x40126ac2df0d4131              # double 4.6042589999999999
	.quad	0x40210615ebfa8f7e              # double 8.5118860000000005
	.quad	0x402207db2b346131              # double 9.0153440000000007
	.quad	0x4023ec59103c8e26              # double 9.9616170000000004
	.quad	0x40222e18ce2d1f1d              # double 9.090033
	.quad	0x401ea1bf7ad4b274              # double 7.6579569999999997
	.quad	0x4007f2ae07e5a78f              # double 2.9934959999999999
	.quad	0x40094d666a98244f              # double 3.1627930000000002
	.quad	0x40233e8576cce5f7              # double 9.6221119999999995
	.quad	0x4021e294bbe4473d              # double 8.9425410000000003
	.quad	0x40103dfc19c17226              # double 4.0605320000000003
	.quad	0x401247a95c853c15              # double 4.5699820000000004
	.quad	0x401ac0917d6b65aa              # double 6.6880550000000003
	.quad	0x40162efb2aae2974              # double 5.5458800000000004
	.quad	0x401333ebbfd71b04              # double 4.8007039999999996
	.quad	0x4021b227ae9ab29e              # double 8.8479589999999995
	.quad	0x40153bc169c23b79              # double 5.3083549999999997
	.quad	0x40110dd00f776c48              # double 4.2634889999999999
	.quad	0x3ff4eed02cd39da1              # double 1.3083039999999999
	.quad	0x402142d4d4024b34              # double 8.6305300000000002
	.quad	0x3fd44b018611fd59              # double 0.31707800000000003
	.quad	0x4013201f31f46ed2              # double 4.7813689999999998
	.quad	0x40169c853c148345              # double 5.6528520000000002
	.quad	0x40167c254a3c6434              # double 5.6212359999999997
	.quad	0x401ac0ff97247454              # double 6.6884750000000004
	.quad	0x40236f143393ab43              # double 9.7169509999999998
	.quad	0x401ef67f0aa21a72              # double 7.7407190000000003
	.quad	0x401970b88ca3e7d1              # double 6.3600789999999998
	.quad	0x4022a1c7ffde7211              # double 9.3159790000000005
	.quad	0x4020eafaf8594291              # double 8.4589459999999992
	.quad	0x4007b09d8c6d612c              # double 2.9612379999999998
	.quad	0x401faab191dde376              # double 7.9166930000000004
	.quad	0x401775ff609dcf89              # double 5.8652319999999998
	.quad	0x402205bff04577d9              # double 9.0112299999999994
	.quad	0x40223f29f59ccfaf              # double 9.123367
	.quad	0x401a33dddb1209ee              # double 6.5506510000000002
	.quad	0x3ffd617e34b94531              # double 1.8363020000000001
	.quad	0x4022df69ca9ef523              # double 9.4363539999999996
	.quad	0x401436a3bddfca00              # double 5.0533590000000004
	.quad	0x400096c7219220ff              # double 2.0736219999999999
	.quad	0x401bddb8348f53c5              # double 6.9665229999999996
	.quad	0x3ffbf2b12d3415b1              # double 1.7467509999999999
	.quad	0x3fe1183d790752db              # double 0.53420900000000004
	.quad	0x401ec7f0ed3d859d              # double 7.6952550000000004
	.quad	0x401f2c579f234656              # double 7.7933029999999999
	.quad	0x400e2b32ce89656f              # double 3.771093
	.quad	0x40232731098d477c              # double 9.5765460000000004
	.quad	0x4005dc8a7a41e57e              # double 2.7326860000000002
	.quad	0x40212340f66a5508              # double 8.5688549999999992
	.quad	0x3ff8afa93af74cd3              # double 1.542886
	.quad	0x3fed469b5a63f9a5              # double 0.91486900000000004
	.quad	0x40110f31f46ed246              # double 4.2648390000000003
	.quad	0x40219fd8cf398e97              # double 8.812201
	.quad	0x3ff323dc486ad2dd              # double 1.1962550000000001
	.quad	0x401152014727dcbe              # double 4.3300830000000001
	.quad	0x4020d9a60d4562e1              # double 8.4250950000000007
	.quad	0x4012e112ba16e7a3              # double 4.7197979999999999
	.quad	0x4012d2ef911cf356              # double 4.7059920000000002
	.quad	0x401949ee02a77a2d              # double 6.3221970000000001
	.quad	0x40104ff3f0fe047d              # double 4.0780789999999998
	.quad	0x4013697353b4b2fb              # double 4.8529790000000004
	.quad	0x4001146887a8d64d              # double 2.1349649999999998
	.quad	0x4019f23a29c779a7              # double 6.4865500000000003
	.quad	0x4020f74ddf86e3b4              # double 8.4830159999999992
	.quad	0x40006b474107314d              # double 2.0523820000000002
	.quad	0x401c5c2b51bd61f6              # double 7.0900090000000002
	.quad	0x4004ea8b8f14db59              # double 2.6145239999999998
	.quad	0x4021edb59578a2a9              # double 8.9642759999999999
	.quad	0x40196dfdef8487ba              # double 6.3574140000000003
	.quad	0x3fc4921ccd962068              # double 0.16070899999999999
	.quad	0x4010393dd97f62b7              # double 4.0559000000000003
	.quad	0x40223aa9b499d020              # double 9.1145759999999996
	.quad	0x4015b512a94ff002              # double 5.4268289999999997
	.quad	0x4019a2f0e0a84be4              # double 6.409122
	.quad	0x401b929bf162ae4b              # double 6.893173
	.quad	0x400d5dc93ea2d2fe              # double 3.6707939999999999
	.quad	0x40219c4806290eed              # double 8.805237
	.quad	0x4020e4f7caa7589f              # double 8.447203
	.quad	0x4008a5d4a5df223a              # double 3.080972
	.quad	0x40143f3c70c996b7              # double 5.0617539999999996
	.quad	0x4015723e5b8561d4              # double 5.3615659999999998
	.quad	0x40156c66d373affb              # double 5.355861
	.quad	0x402383445ed4a1ad              # double 9.7563809999999993
	.quad	0x40183e8815e39714              # double 6.0610660000000003
	.quad	0x4022ea459103c8e2              # double 9.4575619999999994
	.quad	0x40004698bb4d4888              # double 2.0344709999999999
	.quad	0x401b172de43ed95a              # double 6.7726360000000003
	.quad	0x40129250f840181e              # double 4.642887
	.quad	0x3fe4bda0dfdef848              # double 0.64814799999999995
	.quad	0x3ff90a1f080303c0              # double 1.5649709999999999
	.quad	0x4020bc77ff151e75              # double 8.3681029999999996
	.quad	0x401e2b7bf1e8e608              # double 7.5424649999999999
	.quad	0x400cd6a1e81cb46c              # double 3.6048010000000001
	.quad	0x3ff4b1eafee6fb4c              # double 1.2934369999999999
	.quad	0x4017c99392189bd8              # double 5.9468519999999998
	.quad	0x40116764f11b60af              # double 4.3509710000000004
	.quad	0x400928438088509c              # double 3.14466
	.quad	0x3ff9d34373f316e3              # double 1.6140779999999999
	.quad	0x401a46d549731099              # double 6.5691730000000002
	.quad	0x3fed8a5269595fee              # double 0.92313500000000004
	.quad	0x40200d8750c1b973              # double 8.0264229999999994
	.quad	0x401ced89ce4a7b4e              # double 7.2319709999999997
	.quad	0x3fc5d8d79d0a6762              # double 0.17068
	.quad	0x401f2049235f8099              # double 7.7815289999999999
	.quad	0x4020955821294574              # double 8.2916880000000006
	.quad	0x400a590a7829068a              # double 3.2934770000000002
	.quad	0x3ff5bfef39085f4a              # double 1.359359
	.quad	0x401d734d6a161e4f              # double 7.3625999999999996
	.quad	0x402074d1e96c3fc4              # double 8.2281639999999995
	.quad	0x401f89df1172ef0b              # double 7.88464
	.quad	0x4019a72606fac604              # double 6.4132309999999997
	.quad	0x401b71b003686a4d              # double 6.8610230000000003
	.quad	0x401fd2c94b380cb7              # double 7.9558460000000001
	.quad	0x4009a95faa8a82a5              # double 3.2077019999999998
	.quad	0x401997357e670e2c              # double 6.3976649999999999
	.quad	0x40102216c61522a7              # double 4.03329
	.quad	0x3ff5b164c729f59d              # double 1.355809
	.quad	0x40212f4b61fe21d9              # double 8.5923719999999992
	.quad	0x400953059641f645              # double 3.1655380000000002
	.quad	0x4011050092ccf6be              # double 4.2548849999999998
	.quad	0x3feff57b41bfbdf1              # double 0.99871600000000004
	.quad	0x40071c9bc7714339              # double 2.8889689999999999
	.quad	0x3fe18c0ce91c8eac              # double 0.548346
	.quad	0x40201ad01c0ca601              # double 8.0523690000000006
	.quad	0x40094cf41f212d77              # double 3.1625749999999999
	.quad	0x4003dec918e325d5              # double 2.4837820000000002
	.quad	0x40172fdcdf698783              # double 5.7967409999999999
	.quad	0x40090a0c282c6ef4              # double 3.1299060000000001
	.quad	0x40226953dea465a5              # double 9.2057179999999992
	.quad	0x3fe335286b59146e              # double 0.60023899999999997
	.quad	0x401fa831ad2135db              # double 7.9142520000000002
	.quad	0x3ff1daf9ebe9c886              # double 1.115961
	.quad	0x4018ad6a161e4f76              # double 6.1693499999999997
	.quad	0x4013c33333333333              # double 4.9406249999999998
	.quad	0x4022b5ad31fcd24e              # double 9.3548369999999998
	.quad	0x402037b19e731d2e              # double 8.1087769999999999
	.quad	0x4023f153586ca8a0              # double 9.9713390000000004
	.quad	0x3fffa6e5471715c6              # double 1.9782459999999999
	.quad	0x401d0d82fd75e204              # double 7.2631949999999996
	.quad	0x3fe82c386d2ed784              # double 0.75539800000000001
	.quad	0x401260fe047d3d43              # double 4.5947190000000004
	.quad	0x3ff27cea6c1a048e              # double 1.155497
	.quad	0x40167c714fce746d              # double 5.6215260000000002
	.quad	0x4010ab65a9a80496              # double 4.1673799999999996
	.quad	0x4004a34c1a8ac5c1              # double 2.5797349999999999
	.quad	0x4013205c896dd26b              # double 4.7816029999999996
	.quad	0x401539c66d373b00              # double 5.3064210000000003
	.quad	0x3ff207faa044ae86              # double 1.1269480000000001
	.quad	0x400c08094e5d5b25              # double 3.503924
	.quad	0x40224013ec460ed8              # double 9.1251519999999999
	.quad	0x3ff1c3aa79bbadc1              # double 1.1102700000000001
	.quad	0x400d72b3cc4ac6ce              # double 3.6810070000000001
	.quad	0x3fe1e3476295208e              # double 0.55899399999999999
	.quad	0x4023cc28b2a6b0d9              # double 9.8987479999999994
	.quad	0x40158fe60c38f367              # double 5.3905260000000004
	.quad	0x4020954e4c942d49              # double 8.2916129999999999
	.quad	0x4004187a4a48f96e              # double 2.511952
	.quad	0x4022e3f7f06705c9              # double 9.4452510000000007
	.quad	0x3fd2810a569b1748              # double 0.28912599999999999
	.quad	0x4001d63d3e4ef028              # double 2.229609
	.quad	0x40179851a8694035              # double 5.8987489999999996
	.quad	0x3feb5f6fd21ff2e5              # double 0.85540000000000005
	.quad	0x401d8430f49491f3              # double 7.3790930000000001
	.quad	0x3fee503968d759ef              # double 0.94729300000000005
	.quad	0x401e35475a31a4be              # double 7.5520300000000002
	.quad	0x40106aaf35e310dc              # double 4.1041840000000001
	.quad	0x40203008c8259e1f              # double 8.0938169999999996
	.quad	0x402151d9b1b79d91              # double 8.6598640000000007
	.quad	0x401b9ac710cb295f              # double 6.9011500000000003
	.quad	0x400ef625a682b628              # double 3.8701889999999999
	.quad	0x4008c13d31b9b670              # double 3.0943550000000002
	.quad	0x4003e68f4b61fe22              # double 2.4875780000000001
	.quad	0x401c7a808c8259e2              # double 7.119631
	.quad	0x401a75fe542e557e              # double 6.6152280000000001
	.quad	0x401bc050374ff866              # double 6.9378060000000001
	.quad	0x3fe833354c12274a              # double 0.75625100000000001
	.quad	0x3ffded0c3d25247d              # double 1.8703730000000001
	.quad	0x4021747d5ed06fef              # double 8.7275189999999991
	.quad	0x401404b2314013ec              # double 5.0045859999999998
	.quad	0x40211dc4eb56fb8f              # double 8.5581429999999994
	.quad	0x40149f4b1ee24357              # double 5.1555600000000004
	.quad	0x400385718eb89507              # double 2.4401579999999998
	.quad	0x400323e6c4c5974e              # double 2.3925299999999998
	.quad	0x40215f6640a6b93d              # double 8.6863270000000004
	.quad	0x3ffefa55d1c3ac93              # double 1.9361170000000001
	.quad	0x401f2c77dd872f34              # double 7.7934260000000002
	.quad	0x4015ef255f3519bd              # double 5.4835409999999998
	.quad	0x401dcc08fa7a8501              # double 7.4492529999999997
	.quad	0x4001442a66dbd72c              # double 2.1582840000000001
	.quad	0x4006432a0663c750              # double 2.7827950000000001
	.quad	0x40231e04e1e71045              # double 9.558631
	.quad	0x4023a1389b52007e              # double 9.8148850000000003
	.quad	0x4019dc7de5082cf5              # double 6.4653239999999998
	.quad	0x400eec493426783a              # double 3.8653740000000001
	.quad	0x40213d1d68c692f7              # double 8.6193650000000002
	.quad	0x401b5fcb4f1e4b45              # double 6.8435490000000003
	.quad	0x40140d9988d2a1f9              # double 5.0132810000000001
	.quad	0x4011c2da122fad6d              # double 4.4402850000000003
	.quad	0x4020a897635e742a              # double 8.3292800000000007
	.quad	0x4008064ba94bbe44              # double 3.0030739999999998
	.quad	0x4007f78c436fc159              # double 2.995873
	.quad	0x4016999a62ed3522              # double 5.6500029999999999
	.quad	0x401ebe32e3821af8              # double 7.6857410000000001
	.quad	0x4022e78705425f20              # double 9.4522019999999998
	.quad	0x4022a93f077ccc03              # double 9.3305589999999992
	.quad	0x3fc0c17ebaf10236              # double 0.13090499999999999
	.quad	0x40216628027d88c2              # double 8.6995240000000003
	.quad	0x4001a6c11a11233e              # double 2.206423
	.quad	0x40025a31a4bdba0a              # double 2.2940399999999999
	.quad	0x4002f9780baa582e              # double 2.3718110000000001
	.quad	0x401a6f6f8f041462              # double 6.6088240000000003
	.quad	0x3ff866cc1ca3a4b5              # double 1.5250969999999999
	.quad	0x401c429c779a6b51              # double 7.0650500000000003
	.quad	0x4021a69e1b089a02              # double 8.8254249999999992
	.quad	0x40183fe47991bc56              # double 6.0623950000000004
	.quad	0x40202d946c332f01              # double 8.0890229999999992
	.quad	0x3ffdd77b7c7820a3              # double 1.865108
	.quad	0x3ff6ba615a8deb10              # double 1.4205030000000001
	.quad	0x40069b5393250b52              # double 2.8258429999999999
	.quad	0x401ec4189374bc6a              # double 7.6914999999999996
	.quad	0x401bde62131a8ef7              # double 6.9671709999999996
	.quad	0x40178fe2a3cea6c2              # double 5.8905130000000003
	.quad	0x4018ba0945f9df55              # double 6.1816760000000004
	.quad	0x400479170d62bf12              # double 2.559126
	.quad	0x400de90f733a8a40              # double 3.7387990000000002
	.quad	0x40051775b8130165              # double 2.6364550000000002
	.quad	0x40155d81adea8976              # double 5.3413149999999998
	.quad	0x3feb44007570c565              # double 0.852051
	.quad	0x3ff629131ec0b567              # double 1.3850279999999999
	.quad	0x4020b2856605ee57              # double 8.3486740000000008
	.quad	0x4013b27d45a5fc7e              # double 4.9243059999999996
	.quad	0x3ffe67ed84d338f8              # double 1.9003730000000001
	.quad	0x400bd8ab0c88a47f              # double 3.4807950000000001
	.quad	0x4020ca9888f861a6              # double 8.3956949999999999
	.quad	0x400e338476f2a5a4              # double 3.7751549999999998
	.quad	0x400da222d5171e2a              # double 3.7041680000000001
	.quad	0x400111d1d4738a3b              # double 2.1337009999999998
	.quad	0x40207c940bbb1f25              # double 8.2433169999999993
	.quad	0x4015434549b62c77              # double 5.3156939999999997
	.quad	0x4011891d14e3bcd3              # double 4.3838999999999997
	.quad	0x4005886bdf4c2b52              # double 2.6916120000000001
	.quad	0x3ff23a0c6b484d77              # double 1.1391720000000001
	.quad	0x4010dc11a11233df              # double 4.2149109999999999
	.quad	0x3ff201205bc01a37              # double 1.125275
	.quad	0x400423193f6c269a              # double 2.5171380000000001
	.quad	0x3ffb86da4484944f              # double 1.720423
	.quad	0x401af9917939a7c1              # double 6.7437189999999996
	.quad	0x3ffcf738e6d15ad1              # double 1.810357
	.quad	0x4010ac200c0f01fc              # double 4.1680910000000004
	.quad	0x4021cbbecaab8a5d              # double 8.8979400000000002
	.quad	0x401329e279dd3bb0              # double 4.7909030000000001
	.quad	0x401b964a16a48733              # double 6.8967669999999996
	.quad	0x40015b2c40d0aaa8              # double 2.1695180000000001
	.quad	0x3ff07dc1615ebfa9              # double 1.030702
	.quad	0x4023eb404ea4a8c1              # double 9.9594749999999994
	.quad	0x3fac0b780346dc5d              # double 0.054774999999999997
	.quad	0x401c192a737110e4              # double 7.0245759999999997
	.quad	0x4007b8be7296f651              # double 2.9652069999999999
	.quad	0x40153210be9424e6              # double 5.2988920000000004
	.quad	0x3fffbeac42e9899c              # double 1.984051
	.quad	0x401372b12d3415b1              # double 4.8620039999999998
	.quad	0x40213b71b8aa0019              # double 8.6161019999999997
	.quad	0x4023e97635e7429a              # double 9.9559800000000003
	.quad	0x4017039a7c17a893              # double 5.7535189999999998
	.quad	0x401dbcb252ce032e              # double 7.4342740000000003
	.quad	0x4021ff2cb641700d              # double 8.9983880000000003
	.quad	0x401b5ae5bc87db2b              # double 6.8387669999999998
	.quad	0x40064537e2c55c96              # double 2.783798
	.quad	0x401aabc5de9c022a              # double 6.6677470000000003
	.quad	0x3ff966c6de76427c              # double 1.5875919999999999
	.quad	0x400081b97353b4b3              # double 2.063342
	.quad	0x401bd72ffd1dcd70              # double 6.9601439999999997
	.quad	0x4019153b4b2fa93b              # double 6.270734
	.quad	0x3feb19392189bd84              # double 0.84682900000000005
	.quad	0x3ffc4008637bd05b              # double 1.765633
	.quad	0x3ff65b4784230fd0              # double 1.3972850000000001
	.quad	0x3ff155ad106ee30d              # double 1.0834170000000001
	.quad	0x401d45bc87db2b34              # double 7.3181019999999997
	.quad	0x40204dcc426351df              # double 8.1519490000000001
	.quad	0x400b126a65cf67b2              # double 3.3839920000000001
	.quad	0x4015c0c4dec1c1d7              # double 5.4382510000000002
	.quad	0x4012090a350d2807              # double 4.5088280000000003
	.quad	0x3fe5089a02752546              # double 0.6573
	.quad	0x400dbf1d81f10668              # double 3.718318
	.quad	0x4015f49ecb31c21a              # double 5.4888870000000001
	.quad	0x401dc3361565c2d2              # double 7.4406359999999996
	.quad	0x400269fe004b7f5a              # double 2.3017539999999999
	.quad	0x401668c7e28240b8              # double 5.6023250000000004
	.quad	0x401c58d2a1f8e3ac              # double 7.086741
	.quad	0x3f95f394b7b28955              # double 0.021437000000000001
	.quad	0x400db9b2c40d0aaa              # double 3.7156729999999998
	.quad	0x402197a3b9ae0c17              # double 8.7961709999999993
	.quad	0x400828c36da87a07              # double 3.0199039999999999
	.quad	0x402207ebf22c01e7              # double 9.0154720000000008
	.quad	0x4000b0df15a4acf3              # double 2.086363
	.quad	0x4007e97d06bbdbe4              # double 2.9890080000000001
	.quad	0x402154532a497fa6              # double 8.6646970000000003
	.quad	0x4011f7bc3c5bd0e1              # double 4.4919289999999998
	.quad	0x4017d47baa9b499d              # double 5.957503
	.quad	0x40110f16f4384ba1              # double 4.2647360000000001
	.quad	0x4020cd219a847b24              # double 8.4006469999999993
	.quad	0x3ffb2a9d627bf61b              # double 1.6979040000000001
	.quad	0x4005b0d0678c0054              # double 2.7113350000000001
	.quad	0x401a91d9b1b79d91              # double 6.6424320000000003
	.quad	0x4000bc63ae2541d9              # double 2.091987
	.quad	0x4012f5cb35f3d7d4              # double 4.7400330000000004
	.quad	0x40204bf63c31df76              # double 8.1483629999999998
	.quad	0x3fe25028a1dfb939              # double 0.57228500000000004
	.quad	0x4016fe24bba12b5e              # double 5.7481869999999997
	.quad	0x400cfbd1ed9dfdac              # double 3.6229589999999998
	.quad	0x40001d0c80410300              # double 2.0141840000000002
	.quad	0x3fd88027d88c1db0              # double 0.382822
	.quad	0x40217774256bca53              # double 8.7333079999999992
	.quad	0x40026ec0f88333fd              # double 2.3040790000000002
	.quad	0x401736f049a9973e              # double 5.8036510000000003
	.quad	0x401795b5fa22706d              # double 5.8962019999999997
	.quad	0x402130dd82fd75e2              # double 8.59544
	.quad	0x401c4cd7cf5f4e44              # double 7.0750419999999998
	.quad	0x3ff26dd9c27e9531              # double 1.1518189999999999
	.quad	0x3fb96d19dece5711              # double 0.099321000000000007
	.quad	0x4022214573a79789              # double 9.0649829999999998
	.quad	0x3ffc29b17481b21c              # double 1.7601789999999999
	.quad	0x4002470435efa616              # double 2.2846760000000002
	.quad	0x401be8e4b87bdcf0              # double 6.9774349999999998
	.quad	0x402277de7210be94              # double 9.2341189999999997
	.quad	0x402233fec13b9f12              # double 9.1015529999999991
	.quad	0x4013071715c63ae2              # double 4.7569239999999997
	.quad	0x400fb9e060fe4799              # double 3.96576
	.quad	0x401286e82949a565              # double 4.6317449999999996
	.quad	0x4010e98b71b8aa00              # double 4.2280709999999999
	.quad	0x4013823422467be5              # double 4.8771519999999997
	.quad	0x400e0fbdad7518b1              # double 3.7576860000000001
	.quad	0x4006b77f27fe4bcb              # double 2.8395980000000001
	.quad	0x40200b3acd5b6806              # double 8.0219330000000006
	.quad	0x40059774256bca53              # double 2.6989519999999998
	.quad	0x3fa9394317acc4f0              # double 0.049265000000000003
	.quad	0x4013668f4b61fe22              # double 4.8501560000000001
	.quad	0x400bdc69728a6117              # double 3.4826229999999998
	.quad	0x3ffacf2064239607              # double 1.6755679999999999
	.quad	0x400957e6f71a7e31              # double 3.1679210000000002
	.quad	0x4000b9e8c47a17f4              # double 2.090776
	.quad	0x4012e29bf162ae4b              # double 4.721298
	.quad	0x400c0dc2b0ea1837              # double 3.5067189999999999
	.quad	0x401a7b1cc9646280              # double 6.6202269999999999
	.quad	0x401d14df47f993d5              # double 7.2703829999999998
	.quad	0x4014073cd573647c              # double 5.0070680000000003
	.quad	0x3ffb00b673c4f3ba              # double 1.6876739999999999
	.quad	0x401ece90bc7b45f1              # double 7.7017239999999995
	.quad	0x4002f93b3a68b19a              # double 2.3716949999999999
	.quad	0x401eecdc443914f5              # double 7.7313090000000004
	.quad	0x4014e8f75536933a              # double 5.227506
	.quad	0x3ff054f69ca9ef52              # double 1.020743
	.quad	0x4011a1d798d8a97a              # double 4.4080490000000001
	.quad	0x3ffd5899bf5946c3              # double 1.834131
	.quad	0x400a9b5fa22706d5              # double 3.325866
	.quad	0x4013d3b29a1b9f99              # double 4.9567360000000003
	.quad	0x3feb0f7985271bce              # double 0.84563900000000003
	.quad	0x40147eacc92146a2              # double 5.1237060000000003
	.quad	0x4021bee04c059210              # double 8.8728049999999996
	.quad	0x4014be02a77a2ced              # double 5.1855570000000002
	.quad	0x401522b0a6fc58ac              # double 5.2838770000000004
	.quad	0x4021ebc6a7ef9db2              # double 8.9604999999999997
	.quad	0x4021e6fd86a8fc0d              # double 8.9511529999999997
	.quad	0x4021fff2e48e8a72              # double 8.9999000000000002
	.quad	0x400b44f00ef1348b              # double 3.4086609999999999
	.quad	0x40105af3a14cec42              # double 4.0888200000000001
	.quad	0x401312135daad602              # double 4.767652
	.quad	0x3fd3b7c7820a30db              # double 0.30809199999999998
	.quad	0x3ff58625e99e94ab              # double 1.345251
	.quad	0x40072df47f993d53              # double 2.8974389999999999
	.quad	0x401f69c66d373b00              # double 7.8532960000000003
	.quad	0x3fef615011904b3c              # double 0.98062899999999997
	.quad	0x40211607e5a78f26              # double 8.5430290000000007
	.quad	0x3ff64d573647baaa              # double 1.3938820000000001
	.quad	0x400588fb86f47b67              # double 2.6918859999999998
	.quad	0x400c983dff3f0fe0              # double 3.5743369999999999
	.quad	0x3ff76f9ca5bd944b              # double 1.4647490000000001
	.quad	0x4004330489d27c39              # double 2.5249109999999999
	.quad	0x4014369ad42c3c9f              # double 5.0533250000000001
	.quad	0x401eca9fbe76c8b4              # double 7.6978749999999998
	.quad	0x401c92c98e53eb3a              # double 7.1433470000000003
	.quad	0x400423f359ff4fd7              # double 2.5175540000000001
	.quad	0x400bff572de43ed9              # double 3.4996779999999998
	.quad	0x401605d8d79d0a67              # double 5.5057099999999997
	.quad	0x401c5af5771001d6              # double 7.0888270000000002
	.quad	0x401a30e1b4bb5e0f              # double 6.5477359999999996
	.quad	0x401821ceaf251c19              # double 6.0330149999999998
	.quad	0x40166210be9424e6              # double 5.5957670000000004
	.quad	0x40236e7924af0bf2              # double 9.7157680000000006
	.quad	0x40059304039abf34              # double 2.6967850000000002
	.quad	0x40180d01c0ca600b              # double 6.012702
	.quad	0x401f0168f8e7ddca              # double 7.7513769999999997
	.quad	0x4007e1de26916441              # double 2.985287
	.quad	0x401da53a81dc0db2              # double 7.4113559999999996
	.quad	0x402304cff21b3aef              # double 9.5093990000000001
	.quad	0x3ff41320d9945b6c              # double 1.25467
	.quad	0x401c5593a2df9379              # double 7.0835710000000001
	.quad	0x4008d52fc2656abe              # double 3.104095
	.quad	0x3fe90e086bdf4c2b              # double 0.78296299999999996
	.quad	0x40013a7d24180d3d              # double 2.153559
	.quad	0x4020d25332acfb76              # double 8.4107909999999997
	.quad	0x401cbd76ee73e682              # double 7.1850240000000003
	.quad	0x402249c1b54195cd              # double 9.1440560000000009
	.quad	0x3fe2fc6759ab6d01              # double 0.59331100000000003
	.quad	0x4001ed2806af46aa              # double 2.240799
	.quad	0x3ffaf5696e58a32f              # double 1.6849149999999999
	.quad	0x40239937f38c5437              # double 9.7992550000000004
	.quad	0x3fcc3d3e4ef0281c              # double 0.22061900000000001
	.quad	0x401a65cbbc2b94d9              # double 6.5994099999999998
	.quad	0x400781700cd85597              # double 2.938202
	.quad	0x3fed2b990afe60c4              # double 0.91157200000000004
	.quad	0x401f8705425f2021              # double 7.8818559999999999
	.quad	0x40165389b52007dd              # double 5.5815799999999998
	.quad	0x3ff569f2778140dd              # double 1.3383659999999999
	.quad	0x400e6d72799a1fd1              # double 3.8034409999999998
	.quad	0x40022a697aeddce8              # double 2.2707090000000001
	.quad	0x40069b55ac03ff69              # double 2.825847
	.quad	0x4020c11148fd9fd3              # double 8.3770849999999992
	.quad	0x4022df61cbccf28c              # double 9.4362929999999991
	.quad	0x3ff0da3b14a90471              # double 1.0532790000000001
	.quad	0x400eed24e160d888              # double 3.865793
	.quad	0x3fcdc9eecbfb15b5              # double 0.23272499999999999
	.quad	0x401d4b4a66559f6f              # double 7.3235260000000002
	.quad	0x40114e2eb1c432ca              # double 4.3263499999999997
	.quad	0x400812cadddf43c8              # double 3.0091760000000001
	.quad	0x401df43526527a20              # double 7.4884839999999997
	.quad	0x401c29d2391d5800              # double 7.0408410000000003
	.quad	0x4021b7e08aefb2ab              # double 8.8591350000000002
	.quad	0x400b1a1b1960fa16              # double 3.3877470000000001
	.quad	0x4021ffca643cc07b              # double 8.9995910000000006
	.quad	0x4020d940357a3550              # double 8.4243179999999995
	.quad	0x4022f41bda5119ce              # double 9.4767749999999999
	.quad	0x3fe5c6b484d76ab6              # double 0.68050600000000006
	.quad	0x3ff82528ae74f2f1              # double 1.509072
	.quad	0x40202b44806290ef              # double 8.0845070000000003
	.quad	0x4017f0c996b7670a              # double 5.985144
	.quad	0x401aeb267c6b8b69              # double 6.7296389999999997
	.quad	0x402234f7446f9b99              # double 9.1034489999999995
	.quad	0x3fff8c21e1d2178f              # double 1.9717119999999999
	.quad	0x40178f19d66adb40              # double 5.8897469999999998
	.quad	0x4023bf4107314ca9              # double 9.8735429999999997
	.quad	0x40073f01b866e43b              # double 2.9057650000000002
	.quad	0x401514eca686e7e6              # double 5.2704339999999998
	.quad	0x400a8d22c881e471              # double 3.3189139999999999
	.quad	0x4013c9c5a3e39f77              # double 4.9470429999999999
	.quad	0x3ff3f6709fa54c55              # double 1.2476659999999999
	.quad	0x4013e916ca46e08f              # double 4.9776259999999999
	.quad	0x4014ba6698bb4d49              # double 5.1820320000000004
	.quad	0x40116109d0635a42              # double 4.3447639999999996
	.quad	0x4013ae2de8709742              # double 4.9200970000000002
	.quad	0x40185837b4a2339c              # double 6.0861499999999999
	.quad	0x3ff8283f4eca686e              # double 1.5098259999999999
	.quad	0x401b7caa7589efd8              # double 6.8717439999999996
	.quad	0x40237d347a5b0ff1              # double 9.7445409999999998
	.quad	0x4013cbd987c6327f              # double 4.9490720000000001
	.quad	0x4012eb0142f61ed6              # double 4.7294970000000003
	.quad	0x40176dba4d6e47dc              # double 5.8571559999999998
	.quad	0x4000128e92d55a3a              # double 2.009061
	.quad	0x40020983d790752e              # double 2.2546460000000002
	.quad	0x3ff15c10d7be9857              # double 1.0849770000000001
	.quad	0x400eb12ec6bce853              # double 3.8365149999999999
	.quad	0x401810c9539b8887              # double 6.0163929999999999
	.quad	0x4018be02645e4e6a              # double 6.1855560000000001
	.quad	0x4020b652bd3c3611              # double 8.3560999999999996
	.quad	0x40074d02cd39da16              # double 2.9126029999999998
	.quad	0x402114b70ac3a861              # double 8.5404590000000002
	.quad	0x401764bcad9ad85e              # double 5.848376
	.quad	0x400e56249a133c1d              # double 3.792062
	.quad	0x401c435c182ecaef              # double 7.0657810000000003
	.quad	0x4007e409e55c0fcb              # double 2.9863469999999999
	.quad	0x40223574d594f26b              # double 9.1044070000000001
	.quad	0x402395d1e53a81dc              # double 9.7926169999999999
	.quad	0x4004c31593e5fb72              # double 2.595256
	.quad	0x401bfe8c47a17f41              # double 6.9985819999999999
	.quad	0x401bcb877ab32485              # double 6.9487589999999999
	.quad	0x4012206a2b1704ff              # double 4.5316549999999998
	.quad	0x402196136e71cda3              # double 8.7931170000000005
	.quad	0x40027669ced0b30b              # double 2.3078189999999998
	.quad	0x402341878316a055              # double 9.6279869999999991
	.quad	0x40214db3e1437c57              # double 8.6517630000000008
	.quad	0x4010c36049ecb31c              # double 4.1907969999999999
	.quad	0x3fe024cc6822ff09              # double 0.50449200000000005
	.quad	0x40084b97fe8ee6b8              # double 3.0369109999999999
	.quad	0x40219ca0a0f4d7ae              # double 8.8059130000000003
	.quad	0x40129dff3f0fe048              # double 4.6542940000000002
	.quad	0x40118ffc5479d4d8              # double 4.3906109999999998
	.quad	0x40207016f0068db9              # double 8.2189250000000005
	.quad	0x3fb249c2c1b10fd8              # double 0.071438000000000001
	.quad	0x401a7f5126634118              # double 6.624333
	.quad	0x3ff08880d801b435              # double 1.033326
	.quad	0x4021d06af46aa088              # double 8.9070660000000004
	.quad	0x40238545a5fc7e6b              # double 9.7602969999999995
	.quad	0x3fc8e6644d877250              # double 0.19453100000000001
	.quad	0x4009cab0c88a47ed              # double 3.22397
	.quad	0x402282a68f4b61fe              # double 9.2551769999999998
	.quad	0x402114e9c4545847              # double 8.5408460000000002
	.quad	0x4017a8d8665e02eb              # double 5.9148880000000004
	.quad	0x401452b27cbf6e3f              # double 5.0807589999999996
	.quad	0x3ff0c2bf9830e3ce              # double 1.0475460000000001
	.quad	0x40108b9991361dc9              # double 4.1363279999999998
	.quad	0x4020637b4a2339c1              # double 8.1943000000000001
	.quad	0x3fe2c914b167ec78              # double 0.58704599999999996
	.quad	0x4015deb4e981387a              # double 5.4674870000000002
	.quad	0x402228e2e2b8c75c              # double 9.0798559999999994
	.quad	0x3ff670e1b4bb5e0f              # double 1.4025589999999999
	.quad	0x4023ad79af1886e0              # double 9.8388190000000009
	.quad	0x400ec78f25a250f8              # double 3.8474409999999999
	.quad	0x400eac764adff823              # double 3.8342100000000001
	.quad	0x3fec87746887a8d6              # double 0.89153499999999997
	.quad	0x400a5c9eecbfb15b              # double 3.2952249999999998
	.quad	0x3ff3f61672324c83              # double 1.2475799999999999
	.quad	0x40131e8ff327aa69              # double 4.779846
	.quad	0x400c2a3df6db9410              # double 3.520626
	.quad	0x3fe1e605ee568a50              # double 0.55932899999999997
	.quad	0x4011dfa97e132b56              # double 4.4684200000000001
	.quad	0x4004af68be2f7b18              # double 2.5856490000000001
	.quad	0x40121d71f36262cc              # double 4.5287550000000003
	.quad	0x4018cb2d4d4024b3              # double 6.1984149999999998
	.quad	0x400e14edb2f661f2              # double 3.7602190000000002
	.quad	0x4002759e6256366d              # double 2.3074309999999998
	.quad	0x40220b1832fcac8e              # double 9.0216689999999993
	.quad	0x402127112fd32c62              # double 8.5763029999999993
	.quad	0x400aba921ccd9620              # double 3.3410989999999998
	.quad	0x400341d7dbf487fd              # double 2.4071500000000001
	.quad	0x400763c968943e10              # double 2.923724
	.quad	0x40140089a0275254              # double 5.0005249999999997
	.quad	0x3fe6fb677f6b1a2a              # double 0.71818899999999997
	.quad	0x4000e4febd09e12a              # double 2.1118139999999999
	.quad	0x4020dc73abc94706              # double 8.4305699999999995
	.quad	0x4022ad744f5d3565              # double 9.3387779999999996
	.quad	0x4015890364388ebd              # double 5.3838020000000002
	.quad	0x400d72849cb252ce              # double 3.680917
	.quad	0x400f05197a24894c              # double 3.8774899999999999
	.quad	0x401cca6eb91b3f21              # double 7.1976880000000003
	.quad	0x4020fe2f166e008f              # double 8.4964530000000007
	.quad	0x4006d3fe1975f2cb              # double 2.8535119999999998
	.quad	0x4000f6e0d23d4f16              # double 2.120546
	.quad	0x40031800218def41              # double 2.3867189999999998
	.quad	0x4002983b60285ec4              # double 2.3243320000000001
	.quad	0x40207a26809d4952              # double 8.2385750000000009
	.quad	0x4007df562174c4ce              # double 2.984051
	.quad	0x4010c82cf52b90a8              # double 4.1954840000000004
	.quad	0x3fdbd49949e8815e              # double 0.43485099999999999
	.quad	0x40157709741d084f              # double 5.3662470000000004
	.quad	0x4021d9f340d4dc66              # double 8.9256840000000004
	.quad	0x3fece2003ab862b2              # double 0.90258799999999995
	.quad	0x4016fcf5b1c86488              # double 5.7470309999999998
	.quad	0x3ff71f9378ee2867              # double 1.445209
	.quad	0x3ff5ff36ac647779              # double 1.374808
	.quad	0x401ad4a9cdc44391              # double 6.7076789999999997
	.quad	0x401626bd2b6f1993              # double 5.5378309999999997
	.quad	0x4002bcbff47735c2              # double 2.3421630000000002
	.quad	0x4020e4e789e774ef              # double 8.4470790000000004
	.quad	0x40205d09e12a51e3              # double 8.1817159999999998
	.quad	0x3ff026772d5e071c              # double 1.0093909999999999
	.quad	0x401d415f88fc9364              # double 7.313841
	.quad	0x40086cc4ef88b978              # double 3.0531100000000002
	.quad	0x3fe31cf56eac8605              # double 0.59728499999999995
	.quad	0x4021e62c98e53eb4              # double 8.9495590000000007
	.quad	0x40238644955b4678              # double 9.7622420000000005
	.quad	0x401d41858bc59b80              # double 7.3139859999999999
	.quad	0x4010dfbefd00713f              # double 4.218502
	.quad	0x4008483f4eca686e              # double 3.0352769999999998
	.quad	0x40203c43f5f91601              # double 8.1177060000000001
	.quad	0x4020f8d6f544bb1b              # double 8.4860150000000001
	.quad	0x3ff01ddb1209edc0              # double 1.0072890000000001
	.quad	0x401f9b18548a9bd0              # double 7.9014600000000002
	.quad	0x4016f741d084e832              # double 5.7414620000000003
	.quad	0x3ff7e68f4b61fe22              # double 1.493789
	.quad	0x4016029aa1d755bd              # double 5.5025430000000002
	.quad	0x40110e5cd4ed2cbf              # double 4.2640260000000003
	.quad	0x401aef765fd8adac              # double 6.7338500000000003
	.quad	0x4008ca6b93ccd0ff              # double 3.0988380000000002
	.quad	0x401d9ef7c243dccf              # double 7.4052420000000003
	.quad	0x40141db163baba7c              # double 5.0289970000000004
	.quad	0x401845946c332f01              # double 6.0679489999999996
	.quad	0x4022ec2b94d94079              # double 9.4612700000000007
	.quad	0x40122057d1782d38              # double 4.5315849999999998
	.quad	0x40012d1633482be9              # double 2.1470150000000001
	.quad	0x4006f3c03bc4d22d              # double 2.8690190000000002
	.quad	0x4011315fcc1871e7              # double 4.2982170000000002
	.quad	0x401694bcad9ad85e              # double 5.645251
	.quad	0x40076b042528ae75              # double 2.927254
	.quad	0x4018fa4ebdd334c6              # double 6.2444410000000001
	.quad	0x3ff16bb1290257c9              # double 1.088792
	.quad	0x401ed0807357e671              # double 7.7036150000000001
	.quad	0x401aadfc5cdd50a9              # double 6.6699080000000004
	.quad	0x4020c2606fac6046              # double 8.3796420000000005
	.quad	0x4022479e7b80a9df              # double 9.1398810000000008
	.quad	0x4023d9f0e4da09cc              # double 9.9256659999999996
	.quad	0x4007f3faf42784a9              # double 2.9941309999999999
	.quad	0x400d24fca42aed14              # double 3.6430600000000002
	.quad	0x40158be6601bc98a              # double 5.3866209999999999
	.quad	0x3f667ec7863beec4              # double 0.0027460000000000002
	.quad	0x3ff332abef06b378              # double 1.1998709999999999
	.quad	0x4005e0ef1348b220              # double 2.7348309999999998
	.quad	0x400bfc48f10a99b7              # double 3.498186
	.quad	0x4019e706d5065732              # double 6.4756119999999999
	.quad	0x400cc19c17225b75              # double 3.5945360000000002
	.quad	0x3ffbf8f9b13165d4              # double 1.7482850000000001
	.quad	0x400457763e4abe6a              # double 2.5427059999999999
	.quad	0x400da4cc6822ff09              # double 3.7054680000000002
	.quad	0x3fc880389f83be66              # double 0.191413
	.quad	0x40158866e43aa79c              # double 5.3832050000000002
	.quad	0x401b097d06bbdbe4              # double 6.7592660000000002
	.quad	0x40011d0aed99cbef              # double 2.1391810000000002
	.quad	0x400c1f91e646f156              # double 3.515415
	.quad	0x401898db0574b407              # double 6.149273
	.quad	0x3ffbaed99cbee808              # double 1.7301880000000001
	.quad	0x3ff9b558a7610279              # double 1.6067739999999999
	.quad	0x401ce75104d551d7              # double 7.2258950000000004
	.quad	0x3ff50477ff151e75              # double 1.313591
	.quad	0x40143b549f94855e              # double 5.0579400000000003
	.quad	0x4014faf4adbc664d              # double 5.2450739999999998
	.quad	0x402372615a8deb10              # double 9.7233990000000006
	.quad	0x3ff7607c4199fe43              # double 1.4610559999999999
	.quad	0x4019058969a0ad8a              # double 6.2554069999999999
	.quad	0x40177e7c8d195897              # double 5.8735220000000004
	.quad	0x4020b0f9b13165d4              # double 8.3456550000000007
	.quad	0x40228951e75360d0              # double 9.2682029999999997
	.quad	0x401e6e0221426fe7              # double 7.6074299999999999
	.quad	0x3ff5bb213e3e2930              # double 1.3581859999999999
	.quad	0x4009e8fc9363f573              # double 3.2387630000000001
	.quad	0x4005819220ff5409              # double 2.6882670000000002
	.quad	0x400c38fd5cb790fb              # double 3.5278269999999998
	.quad	0x401e18b4bf8fcd68              # double 7.524127
	.quad	0x4007dc1bda5119ce              # double 2.982475
	.quad	0x401a843aa79bbadc              # double 6.62913
	.quad	0x40229394b7b28955              # double 9.2882440000000006
	.quad	0x4023ad288ce703b0              # double 9.8382000000000005
	.quad	0x3ffa332acfb762d8              # double 1.6374919999999999
	.quad	0x3fc017dae81882ae              # double 0.12572800000000001
	.quad	0x3fea8d3ae685db77              # double 0.82974000000000003
	.quad	0x40086b90214ad363              # double 3.052521
	.quad	0x3fdf398e97071822              # double 0.48788799999999999
	.quad	0x3fc2a915379fa97e              # double 0.145785
	.quad	0x40006adf71eafee7              # double 2.052184
	.quad	0x401f16e9ff0cbaf9              # double 7.7723769999999996
	.quad	0x401764e9c4545847              # double 5.8485480000000001
	.quad	0x402228e8ea39c51e              # double 9.0799020000000006
	.quad	0x4012e0e3cd9a5226              # double 4.7196189999999998
	.quad	0x400be83558a76102              # double 3.4883829999999998
	.quad	0x402211a38fbca106              # double 9.0344510000000007
	.quad	0x40159e820e629952              # double 5.4047929999999997
	.quad	0x401694a87e38eb03              # double 5.6451739999999999
	.quad	0x4014292b3cc4ac6d              # double 5.0402040000000001
	.quad	0x401e69b38d60a633              # double 7.6032239999999999
	.quad	0x3fba21fafc8b007a              # double 0.10208100000000001
	.quad	0x3fe7bdba0a526959              # double 0.74190999999999996
	.quad	0x40214ef4be835dee              # double 8.6542110000000001
	.quad	0x3fe22085b18548aa              # double 0.56647000000000003
	.quad	0x4007b63f572de43f              # double 2.9639880000000001
	.quad	0x3ff9a516db0dd830              # double 1.602805
	.quad	0x3fc061e92923e5b8              # double 0.12798799999999999
	.quad	0x3ff2973215fcc187              # double 1.161913
	.quad	0x40209228fe260b2d              # double 8.2854690000000009
	.quad	0x3ffdf52da98676a7              # double 1.872358
	.quad	0x402376f49cf56ead              # double 9.7323350000000008
	.quad	0x401aac11e42e1262              # double 6.668037
	.quad	0x4021c633ce63a5c2              # double 8.8871140000000004
	.quad	0x4016b6ec5b078d93              # double 5.678636
	.quad	0x4023fcccee5abc0e              # double 9.9937509999999996
	.quad	0x401f0b5e0f7fcfc4              # double 7.761101
	.quad	0x4021b7d694ccab3f              # double 8.8590590000000002
	.quad	0x40088165907d9125              # double 3.0631819999999998
	.quad	0x400af4898f605ab4              # double 3.3694030000000001
	.quad	0x4022a541fa765343              # double 9.3227689999999992
	.quad	0x4023cb1ca7d6733f              # double 9.8967030000000004
	.quad	0x40090319c5a3e39f              # double 3.1265139999999998
	.quad	0x4002ee1693c03bc5              # double 2.3662540000000001
	.quad	0x40039042d8c2a455              # double 2.4454400000000001
	.quad	0x4005233df2a9d628              # double 2.6422080000000001
	.quad	0x4013960aa64c2f83              # double 4.8965249999999996
	.quad	0x4019d013ec460ed8              # double 6.453201
	.quad	0x400f420ab7132724              # double 3.9072469999999999
	.quad	0x4022b20a30db6a1f              # double 9.3477340000000009
	.quad	0x401f247dc37a3db4              # double 7.7856360000000002
	.quad	0x401d43e920c069e8              # double 7.316319
	.quad	0x4020ea82e87d2c7c              # double 8.4580300000000008
	.quad	0x4009aee49f51697f              # double 3.2103969999999999
	.quad	0x3fd23632c1f42bb6              # double 0.28455799999999998
	.quad	0x4010fbf6a0dbad3a              # double 4.2460579999999997
	.quad	0x40229ae9ee45c359              # double 9.3025660000000006
	.quad	0x400f83ca7503b81b              # double 3.9393509999999998
	.quad	0x401083415b1422cd              # double 4.1281790000000003
	.quad	0x4000a83d35eb7458              # double 2.0821480000000001
	.quad	0x40196c36976bc1f0              # double 6.355677
	.quad	0x40200c52e72da123              # double 8.02407
	.quad	0x402073a7b9170d63              # double 8.2258890000000005
	.quad	0x3fede5e02ea960b7              # double 0.934311
	.quad	0x4005dde0d66f0cfe              # double 2.733339
	.quad	0x4006a88509bf9c63              # double 2.8322850000000002
	.quad	0x40007899392189be              # double 2.0588860000000002
	.quad	0x40139f2d7f950b95              # double 4.9054469999999997
	.quad	0x401ccba0e8427419              # double 7.1988560000000001
	.quad	0x401b6181e03f7058              # double 6.8452219999999997
	.quad	0x3fe031f8a0902de0              # double 0.50609999999999999
	.quad	0x4022f907b784662c              # double 9.4863870000000005
	.quad	0x400bacd423d9231c              # double 3.4593889999999998
	.quad	0x40236531769a9110              # double 9.6976429999999993
	.quad	0x3fc96d330941c821              # double 0.19864499999999999
	.quad	0x4006cc6bce8533b1              # double 2.849815
	.quad	0x401377b4e54f7a92              # double 4.8669010000000004
	.quad	0x401f66540cc78e9f              # double 7.8499299999999996
	.quad	0x4014101040bfe3b0              # double 5.0156869999999998
	.quad	0x400c3a6a44417870              # double 3.5285229999999999
	.quad	0x401ef5421c044285              # double 7.7395100000000001
	.quad	0x3fc8c460ed80a17b              # double 0.193493
	.quad	0x4002149e01de2691              # double 2.2600669999999998
	.quad	0x4002a509bf9c62a2              # double 2.3305850000000001
	.quad	0x3ff5e317268d3283              # double 1.367942
	.quad	0x401df878316a0557              # double 7.4926459999999996
	.quad	0x3fffaea63b688bdb              # double 1.9801390000000001
	.quad	0x4001e904f6dfc5ce              # double 2.2387790000000001
	.quad	0x4021a3fb7a5f41af              # double 8.8202780000000001
	.quad	0x400037af640639d6              # double 2.02719
	.quad	0x4010cf1886df82b2              # double 4.202242
	.quad	0x4023b8e0eb67c287              # double 9.861091
	.quad	0x3ff157c4e2f37fbf              # double 1.083928
	.quad	0x4020b9cda2b5a20e              # double 8.3628970000000002
	.quad	0x4022918c3b0c4589              # double 9.2842730000000007
	.quad	0x400b0f1ed17c5ef6              # double 3.3823829999999999
	.quad	0x3ff4a7c286f8ad25              # double 1.2909569999999999
	.quad	0x3ff8686c6583e857              # double 1.5254939999999999
	.quad	0x40133c126a65cf68              # double 4.8086640000000003
	.quad	0x3fcba68b19a415f4              # double 0.21601999999999999
	.quad	0x401ee945f9df548f              # double 7.7278060000000001
	.quad	0x3ff18b05b7cfe586              # double 1.096441
	.quad	0x401102bbecaab8a6              # double 4.2526700000000002
	.quad	0x4016550e34762952              # double 5.583062
	.quad	0x4011dc1d29dc725c              # double 4.4649549999999998
	.quad	0x4015d0589acbc8c1              # double 5.4534630000000002
	.quad	0x40125ad794a6eb92              # double 4.5887130000000003
	.quad	0x401ec8be2f7b17ce              # double 7.6960379999999997
	.quad	0x40103035371971c1              # double 4.047078
	.quad	0x3fe056798958d9b6              # double 0.51055600000000001
	.quad	0x4020775e41d4b6a6              # double 8.2331409999999998
	.quad	0x3fc3b6cbd987c632              # double 0.15401599999999999
	.quad	0x401012da122fad6d              # double 4.0184100000000003
	.quad	0x402039d883ba3444              # double 8.1129800000000003
	.quad	0x4023308fa7a85016              # double 9.5948460000000004
	.quad	0x4023127b2cc70868              # double 9.5360960000000005
	.quad	0x40215f3eee525892              # double 8.6860269999999993
	.quad	0x3fcb1c0010c6f7a1              # double 0.21179200000000001
	.quad	0x40201ddb3397dd01              # double 8.0583130000000001
	.quad	0x401ca94d50ebaade              # double 7.1653339999999996
	.quad	0x400f9c347e8ccdd9              # double 3.9512719999999999
	.quad	0x3ff142917507e9d9              # double 1.0787519999999999
	.quad	0x4002a3f0bae89eba              # double 2.3300489999999998
	.quad	0x400930f94c87980f              # double 3.1489129999999999
	.quad	0x400e3802c0a4a05e              # double 3.7773490000000001
	.quad	0x4022bebc408d8ec9              # double 9.3725299999999993
	.quad	0x401c09d7774aba38              # double 7.0096109999999996
	.quad	0x40226d974e65bea1              # double 9.2140450000000005
	.quad	0x40014120e1f7d73d              # double 2.1568010000000002
	.quad	0x402157b7c7820a31              # double 8.6713240000000003
	.quad	0x40113d8c2a454de8              # double 4.3101050000000001
	.quad	0x40181cacd184c272              # double 6.028003
	.quad	0x400ec5a1cac08312              # double 3.8464999999999998
	.quad	0x3ff26dd590c0ad04              # double 1.151815
	.quad	0x401732a023209678              # double 5.7994389999999996
	.quad	0x401d0f0739b024f6              # double 7.2646759999999997
	.quad	0x3fec9ff2e48e8a72              # double 0.89452500000000001
	.quad	0x40177906034f3fd9              # double 5.8681869999999998
	.quad	0x402395d4e8fb00bd              # double 9.7926400000000004
	.quad	0x40229c7dc37a3db4              # double 9.3056470000000004
	.quad	0x4010960b2c83ec89              # double 4.1465269999999999
	.quad	0x4021df3365881a15              # double 8.9359389999999994
	.quad	0x4003e02ea960b6fa              # double 2.484464
	.quad	0x4021c05319828805              # double 8.8756339999999998
	.quad	0x400456f4384ba0e8              # double 2.5424579999999999
	.quad	0x4005e3aeab7995ee              # double 2.736173
	.quad	0x4012fd4067cf1c32              # double 4.7473159999999996
	.quad	0x401a38ccdd93c46e              # double 6.5554690000000004
	.quad	0x401f0edb2f661f19              # double 7.7645080000000001
	.quad	0x4023a4f0520d130e              # double 9.822146
	.quad	0x3ff3f2a497fa5d29              # double 1.246739
	.quad	0x40220719f7f8ca82              # double 9.0138700000000007
	.quad	0x40155c19c17225b7              # double 5.3399419999999997
	.quad	0x4016b4588a04d120              # double 5.6761189999999999
	.quad	0x40140381d7dbf488              # double 5.003425
	.quad	0x4021456494d50ebb              # double 8.6355330000000006
	.quad	0x40142ae4b0186120              # double 5.0418880000000001
	.quad	0x4016bce703afb7e9              # double 5.6844749999999999
	.quad	0x3fe4c8ecd8dbcec8              # double 0.64952699999999997
	.quad	0x40229c2bf9830e3d              # double 9.3050230000000003
	.quad	0x400d72d1aeb3dd12              # double 3.6810640000000001
	.quad	0x4002f5f4e4430b18              # double 2.3700960000000002
	.quad	0x401a4492ff4ba51a              # double 6.566967
	.quad	0x4022da2467be553b              # double 9.4260590000000004
	.quad	0x400a5fd9ba1b1961              # double 3.296802
	.quad	0x4002060d4562e0a0              # double 2.252955
	.quad	0x4002da7008a697af              # double 2.3566590000000001
	.quad	0x40186d1351159c49              # double 6.1065189999999996
	.quad	0x40148165d3996fa8              # double 5.1263649999999998
	.quad	0x40205461b6d43d04              # double 8.1648080000000007
	.quad	0x3fec4aa10e022142              # double 0.88410999999999995
	.quad	0x4003480f12c27a63              # double 2.4101849999999998
	.quad	0x400d8f06b37867f1              # double 3.6948370000000001
	.quad	0x401a501e2584f4c7              # double 6.5782400000000001
	.quad	0x4008fdc725c3dee8              # double 3.1239150000000002
	.quad	0x401b1939eadd590c              # double 6.774635
	.quad	0x4008e0fdc1615ec0              # double 3.1098590000000002
	.quad	0x401c995a6c5d206d              # double 7.1497590000000004
	.quad	0x400d6647778dd617              # double 3.674941
	.quad	0x4005f07bfe7e1fc1              # double 2.7424240000000002
	.quad	0x402093e0ded288ce              # double 8.2888249999999992
	.quad	0x4022693b3a68b19a              # double 9.2055299999999995
	.quad	0x40141e2089e34331              # double 5.0294210000000001
	.quad	0x4001082adc4c9c91              # double 2.1289880000000001
	.quad	0x400631eafee6fb4c              # double 2.7743739999999999
	.quad	0x401ae003254e6e22              # double 6.7187619999999999
	.quad	0x400db609dcf893fb              # double 3.713886
	.quad	0x400782c881e4712e              # double 2.9388589999999999
	.quad	0x4014c55f78359bc3              # double 5.1927469999999998
	.quad	0x40173bd72bcb5fe5              # double 5.8084379999999998
	.quad	0x40135ae3a3a8e714              # double 4.8387589999999996
	.quad	0x3ff14cd962068555              # double 1.0812619999999999
	.quad	0x40187b63d3e4ef03              # double 6.1204980000000004
	.quad	0x3ff3c9070fbeb9e5              # double 1.2365790000000001
	.quad	0x401ecef5232d2bb2              # double 7.7021069999999998
	.quad	0x401a6a77e5eaab04              # double 6.6039729999999999
	.quad	0x4015e3dc8b86b160              # double 5.4725210000000004
	.quad	0x4016bf5fd47bedb7              # double 5.6868889999999999
	.quad	0x40069cd898b2e9cd              # double 2.8265850000000001
	.quad	0x4021d14d94078961              # double 8.9087949999999996
	.quad	0x401125104d551d69              # double 4.2861950000000002
	.quad	0x401fb59641f64495              # double 7.9273309999999996
	.quad	0x3fe0e9c886162f16              # double 0.52853799999999995
	.quad	0x4019b47f993d5348              # double 6.4262680000000003
	.quad	0x401b061804d98394              # double 6.7559509999999996
	.quad	0x4023beb97fe8ee6c              # double 9.8725090000000008
	.quad	0x400071ac9afe1da8              # double 2.0555050000000001
	.quad	0x402000c868b9fdbd              # double 8.0015289999999997
	.quad	0x401b923f67f4dbe0              # double 6.8928200000000004
	.quad	0x401a55109070fbec              # double 6.5830710000000003
	.quad	0x40033d0aed99cbef              # double 2.4048060000000002
	.quad	0x402178b673c4f3ba              # double 8.7357669999999992
	.quad	0x401de7b56b873797              # double 7.4762779999999998
	.quad	0x40149540cc78e9f7              # double 5.1457550000000003
	.quad	0x3fe410a99b6f5caf              # double 0.62703399999999998
	.quad	0x40187bfb9bed30f0              # double 6.1210769999999997
	.quad	0x401368ba40d90e24              # double 4.8522730000000003
	.quad	0x4017d0d62bf11f92              # double 5.9539419999999996
	.quad	0x4001ba58f7121ab5              # double 2.2159900000000001
	.quad	0x40074a1f8e3ac0c6              # double 2.9111929999999999
	.quad	0x3fd7427418d6909b              # double 0.363431
	.quad	0x401835e529bae46d              # double 6.052632
	.quad	0x401fde21d96e9bbf              # double 7.9669259999999999
	.quad	0x400afd87b56b8738              # double 3.3737940000000002
	.quad	0x401f4cf0b6b6e0d2              # double 7.8251369999999998
	.quad	0x4023fa36e2eb1c43              # double 9.9886999999999996
	.quad	0x4014f5cb790fb656              # double 5.2400339999999996
	.quad	0x4020788ce703afb8              # double 8.2354500000000002
	.quad	0x4016b71b0468448d              # double 5.678814
	.quad	0x3fe227179bfdf7e8              # double 0.567272
	.quad	0x4011f4c2f837b4a2              # double 4.4890249999999998
	.quad	0x3fe1f92d1287c201              # double 0.56166700000000003
	.quad	0x40189640639d5e4a              # double 6.1467299999999998
	.quad	0x401f442dcf4623d1              # double 7.8165810000000002
	.quad	0x4006de89a88ace25              # double 2.8586610000000001
	.quad	0x40206f9e9d0e9920              # double 8.2180070000000001
	.quad	0x40218d66277c45cc              # double 8.7761700000000004
	.quad	0x3ff53ce63a5c1c61              # double 1.3273680000000001
	.quad	0x3ffd94738a3b57c5              # double 1.848743
	.quad	0x3f983947496aad1d              # double 0.023656
	.quad	0x4021105e3da2f8be              # double 8.5319690000000001
	.quad	0x401352c7325918a0              # double 4.830838
	.quad	0x3fd5e6c093d96638              # double 0.34220899999999999
	.quad	0x4019bcdb37c99ae9              # double 6.4344299999999999
	.quad	0x4014f4228997c3d7              # double 5.2384130000000004
	.quad	0x401f7ca89fc6da45              # double 7.8717370000000004
	.quad	0x4009058ab92c0618              # double 3.1277059999999999
	.quad	0x401ce96a26e54717              # double 7.2279439999999999
	.quad	0x4014058644523f68              # double 5.005395
	.quad	0x4013a1b43526527a              # double 4.9079139999999999
	.quad	0x3fe6a6aca7935760              # double 0.70784599999999998
	.quad	0x4013178a6dacabc5              # double 4.7729889999999999
	.quad	0x401bc5d80e496edf              # double 6.9432070000000001
	.quad	0x401f694317acc4f0              # double 7.8527950000000004
	.quad	0x40122b413986338b              # double 4.5422409999999998
	.quad	0x40070ebbba55d1c4              # double 2.8821940000000001
	.quad	0x401e8ba5e353f7cf              # double 7.6363750000000001
	.quad	0x4021790d5a5b9629              # double 8.7364300000000004
	.quad	0x3ffef2e1693c03bc              # double 1.9342969999999999
	.quad	0x3ffa39f23465625a              # double 1.6391469999999999
	.quad	0x3ff4b5fb2edfe75c              # double 1.2944290000000001
	.quad	0x40200cae21101b00              # double 8.0247659999999996
	.quad	0x401e0f23cc8de2ac              # double 7.5147849999999998
	.quad	0x3fff1a9003eea20a              # double 1.9439850000000001
	.quad	0x3ff2241e57d9dba9              # double 1.133818
	.quad	0x3fef6af46aa087ca              # double 0.98180599999999996
	.quad	0x40228a2d948dc11e              # double 9.2698789999999995
	.quad	0x401e7b20fb224aae              # double 7.6202430000000003
	.quad	0x3ff89f8f4730403a              # double 1.5389550000000001
	.quad	0x40229061e92923e6              # double 9.2819970000000005
	.quad	0x402221d627bf61aa              # double 9.0660869999999996
	.quad	0x40143c664d3bf2f5              # double 5.0589839999999997
	.quad	0x400ec577531db446              # double 3.846419
	.quad	0x401bdf5d35653c9b              # double 6.9681290000000002
	.quad	0x401be06f69446738              # double 6.9691749999999999
	.quad	0x401e52014727dcbe              # double 7.5800830000000001
	.quad	0x4017b6ebd4cfd08d              # double 5.9286339999999997
	.quad	0x4023066e008e9b39              # double 9.5125580000000002
	.quad	0x401c733d6c721922              # double 7.1125389999999999
	.quad	0x40180cc037931444              # double 6.0124519999999997
	.quad	0x4012a5b813016484              # double 4.661835
	.quad	0x4020b01ba7fc32ec              # double 8.3439610000000001
	.quad	0x4005749f0e4da09d              # double 2.6819440000000001
	.quad	0x400c6a60913a4f87              # double 3.5519419999999999
	.quad	0x40061e718a86d71f              # double 2.7648649999999999
	.quad	0x4016243aa79bbadc              # double 5.53538
	.quad	0x40143d6fda836eb5              # double 5.0599970000000001
	.quad	0x4006aab1d4f9c1f8              # double 2.8333469999999998
	.quad	0x4011d1b328b6d86f              # double 4.4547850000000002
	.quad	0x4016282a9930be0e              # double 5.5392250000000001
	.quad	0x402295783dff3f10              # double 9.2919330000000002
	.quad	0x4017ff7dfa00e27e              # double 5.9995039999999999
	.quad	0x401aa1d1d4738a3b              # double 6.6580269999999997
	.quad	0x3ff84204f2ae07e6              # double 1.5161180000000001
	.quad	0x3fe5a9b6b2af1455              # double 0.67696699999999999
	.quad	0x401c66e9bbf0dc77              # double 7.1005010000000004
	.quad	0x401b1c5197a24895              # double 6.7776550000000002
	.quad	0x4022646c764adff8              # double 9.1961399999999997
	.quad	0x400aa8787485e3da              # double 3.3322609999999999
	.quad	0x3ff2cdee34fc610f              # double 1.175276
	.quad	0x3ffbdc6e2a80064b              # double 1.7413160000000001
	.quad	0x4015b0dc768dfbd7              # double 5.4227160000000003
	.quad	0x4015d65c70435efa              # double 5.4593369999999997
	.quad	0x40214605681ecd4b              # double 8.6367600000000007
	.quad	0x4020abab21815a08              # double 8.3352900000000005
	.quad	0x40207787ad080b67              # double 8.2334569999999996
	.quad	0x400730edc3bd5992              # double 2.8988909999999999
	.quad	0x4011ff71eafee6fb              # double 4.4994579999999997
	.quad	0x3fde3baba7b9170d              # double 0.47239199999999998
	.quad	0x3fd714983d790753              # double 0.36063200000000001
	.quad	0x4014bf5771001d5c              # double 5.1868569999999998
	.quad	0x4014ba8650e77920              # double 5.1821529999999996
	.quad	0x401e62a90cd423d9              # double 7.5963479999999998
	.quad	0x402301b6f5caf2d8              # double 9.503349
	.quad	0x40087b4784230fd0              # double 3.0601950000000002
	.quad	0x4020b37c5692b3cc              # double 8.3505579999999994
	.quad	0x40215c1d8e864021              # double 8.6799130000000009
	.quad	0x4023988dd1e53a82              # double 9.7979570000000002
	.quad	0x4013ec660a201472              # double 4.9808579999999996
	.quad	0x4018528c79f66623              # double 6.0806139999999997
	.quad	0x4022f7db09a671ef              # double 9.4840929999999996
	.quad	0x4020aa365cb35f3d              # double 8.3324459999999991
	.quad	0x3fed74e874c8ffb9              # double 0.92052100000000003
	.quad	0x3ff73ecedd484513              # double 1.452834
	.quad	0x4013df21f6cacd18              # double 4.9679029999999997
	.quad	0x3fdef1a9fbe76c8b              # double 0.48349999999999999
	.quad	0x4020b30df9bdc6a0              # double 8.3497160000000008
	.quad	0x4022b8b220791c4c              # double 9.3607340000000007
	.quad	0x3ff06a7bd48cb4af              # double 1.025997
	.quad	0x3fde7fa5d28d002e              # double 0.47654099999999999
	.quad	0x401ba61309c7ffde              # double 6.9121819999999996
	.quad	0x4023696787ce95fb              # double 9.7058680000000006
	.quad	0x3ff35c044284dfce              # double 1.209965
	.quad	0x4002593250b5243a              # double 2.2935530000000002
	.quad	0x401bb23571d1d474              # double 6.9240320000000004
	.quad	0x3f5372a38b8ae31d              # double 0.0011869999999999999
	.quad	0x4013f122749f0e4e              # double 4.9854830000000003
	.quad	0x401efcb31c219eb6              # double 7.7467769999999998
	.quad	0x40119c23315d701e              # double 4.4024780000000003
	.quad	0x3ff1d91dde37585c              # double 1.115507
	.quad	0x3fe78fe260b2c83f              # double 0.73631400000000002
	.quad	0x4010d6709fa54c55              # double 4.2094139999999998
	.quad	0x401a403fb3743633              # double 6.5627430000000002
	.quad	0x3ffac0d1b71758e2              # double 1.672075
	.quad	0x40156fcb4f1e4b45              # double 5.3591740000000003
	.quad	0x4021b183947496ab              # double 8.8467070000000003
	.quad	0x40109d6e47dc37a4              # double 4.1537410000000001
	.quad	0x4006109aed56b010              # double 2.758108
	.quad	0x3fe3f06b37867f0b              # double 0.62309800000000004
	.quad	0x4020d75d35653c9b              # double 8.4206330000000005
	.quad	0x401a2afff36ac647              # double 6.5419919999999996
	.quad	0x4011a68e3ef28416              # double 4.4126519999999996
	.quad	0x401ae24c404a72eb              # double 6.7209940000000001
	.quad	0x400c4a8fc0d2c387              # double 3.5364070000000001
	.quad	0x3ffbab92c061847f              # double 1.7293879999999999
	.quad	0x3fb93aa369fcf3dc              # double 0.098550999999999999
	.quad	0x3fe362ac322291fb              # double 0.60579499999999997
	.quad	0x3fdb77bbf93ff25e              # double 0.42918299999999998
	.quad	0x3fe59b5c7cd898b3              # double 0.67521500000000001
	.quad	0x3fc42f944241c3f0              # double 0.15770200000000001
	.quad	0x401fa7b0b3919264              # double 7.9137599999999999
	.quad	0x401323d74d594f27              # double 4.7850010000000003
	.quad	0x40230b4d6a161e4f              # double 9.5220749999999991
	.quad	0x400edbf6a0dbad3a              # double 3.8574039999999998
	.quad	0x4023a73affb04ee8              # double 9.8266220000000004
	.quad	0x3fd3013a92a30553              # double 0.29694999999999999
	.quad	0x40235ae1693c03bc              # double 9.6775009999999994
	.quad	0x4022652007dd4413              # double 9.1975099999999994
	.quad	0x4021bf5d35653c9b              # double 8.8737580000000005
	.quad	0x40139fa7a85015c2              # double 4.905913
	.quad	0x4009c06d938151a4              # double 3.2189589999999999
	.quad	0x4020d40e5a35d67c              # double 8.4141720000000006
	.quad	0x400ba6822ff08894              # double 3.4563030000000001
	.quad	0x40193c2b94d94079              # double 6.3087600000000004
	.quad	0x4004cd80a17b0f6b              # double 2.6003430000000001
	.quad	0x40113b22d0e56042              # double 4.3077500000000004
	.quad	0x40236b4aec8d5c74              # double 9.7095559999999991
	.quad	0x4002574ddf86e3b4              # double 2.2926289999999998
	.quad	0x3ff277f06705c897              # double 1.154282
	.quad	0x4020869a4df47f99              # double 8.2628959999999996
	.quad	0x3fc1f961804d9839              # double 0.14042299999999999
	.quad	0x401f7e6f71a7e308              # double 7.8734719999999995
	.quad	0x4014916fc9bc7714              # double 5.1420279999999998
	.quad	0x401b60f238972043              # double 6.8446740000000004
	.quad	0x401a27f993d5347a              # double 6.5390379999999997
	.quad	0x4013f473471f7942              # double 4.988721
	.quad	0x3fe899029ae4f334              # double 0.76867799999999997
	.quad	0x400e989bd8383ada              # double 3.824516
	.quad	0x401ef14d2f5dbb9d              # double 7.735646
	.quad	0x4023376188b1140a              # double 9.6081660000000007
	.quad	0x40227574b407032a              # double 9.2294060000000009
	.quad	0x4014b251c193b3a7              # double 5.1741400000000004
	.quad	0x40185c1b54195cc8              # double 6.0899479999999997
	.quad	0x40011ee99a62ed35              # double 2.1400939999999999
	.quad	0x3fd9410b630a9153              # double 0.39459499999999997
	.quad	0x40207037f7be121f              # double 8.2191770000000002
	.quad	0x401e22378ab0c88a              # double 7.5334149999999998
	.quad	0x40218160d887ebf2              # double 8.7526919999999997
	.quad	0x40203e66ec9e236c              # double 8.1218789999999998
	.quad	0x401a790b84988095              # double 6.6182080000000001
	.quad	0x400b4c5436b8f9b1              # double 3.4122699999999999
	.quad	0x401b116052502eec              # double 6.7669689999999996
	.quad	0x3fc3ed527e521577              # double 0.15568000000000001
	.quad	0x4020ab9e279dd3bb              # double 8.335191
	.quad	0x3fff460780fdc161              # double 1.9545969999999999
	.quad	0x4022d10adcd2d44e              # double 9.4082860000000004
	.quad	0x400eeabd5dc40075              # double 3.8646189999999998
	.quad	0x400a246f9b994e1a              # double 3.2677909999999999
	.quad	0x4010277963992c8c              # double 4.0385489999999997
	.quad	0x401809d12cadddf4              # double 6.0095869999999998
	.quad	0x400d9c169c23b795              # double 3.7012149999999999
	.quad	0x4013665bea0ba1f5              # double 4.8499600000000003
	.quad	0x40235367e414e7ef              # double 9.6629020000000007
	.quad	0x400d79c1f85d744f              # double 3.6844519999999998
	.quad	0x4020d73a14cec41e              # double 8.4203650000000003
	.quad	0x400abca7503b81b6              # double 3.3421159999999999
	.quad	0x4008b78359bc33f8              # double 3.0896059999999999
	.quad	0x40214bc05d52c16e              # double 8.6479520000000001
	.quad	0x401e27a311e85fd0              # double 7.5387079999999997
	.quad	0x4012eaa9717df19d              # double 4.7291619999999996
	.quad	0x400e5d694ccab3ee              # double 3.7956110000000001
	.quad	0x4020af9314445aa3              # double 8.3429190000000002
	.quad	0x402176c6bce8533b              # double 8.7319849999999999
	.quad	0x401923864cb5bb38              # double 6.2846919999999997
	.quad	0x3ff8b1a8ef77f280              # double 1.543374
	.quad	0x4015f90f301eabbd              # double 5.4932220000000003
	.quad	0x4012cfcefaa4766c              # double 4.7029379999999996
	.quad	0x3ff6a0157eed45e9              # double 1.414083
	.quad	0x402191cb6848beb6              # double 8.7847550000000005
	.quad	0x3ff1c9752977c88e              # double 1.1116839999999999
	.quad	0x401f153da72a7bd5              # double 7.7707430000000004
	.quad	0x40121e642bf9830e              # double 4.5296789999999998
	.quad	0x3fff037824d4cb9f              # double 1.938347
	.quad	0x40175d3bafd976ff              # double 5.8410479999999998
	.quad	0x401a09185cee17a0              # double 6.5088819999999998
	.quad	0x401dc774aba38759              # double 7.4447809999999999
	.quad	0x400387fdc5931ca8              # double 2.4414020000000001
	.quad	0x3ff237b8d3f1843c              # double 1.1386039999999999
	.quad	0x4022390257c914b1              # double 9.1113459999999993
	.quad	0x40051bc0a06e9ff1              # double 2.6385510000000001
	.quad	0x3fff0e7ab7564303              # double 1.9410350000000001
	.quad	0x401b484988094e5d              # double 6.8205929999999997
	.quad	0x4008ae0daa0cae64              # double 3.0849869999999999
	.quad	0x4002155de58e64b2              # double 2.2604329999999999
	.quad	0x402341945b6c3761              # double 9.6280850000000004
	.quad	0x40016eebf65dbfcf              # double 2.1791610000000001
	.quad	0x4010d77ea1c68ec5              # double 4.2104439999999999
	.quad	0x4019a6a161e4f766              # double 6.412725
	.quad	0x4021467b3d8e0008              # double 8.6376589999999993
	.quad	0x400d1b2031ceaf25              # double 3.638245
	.quad	0x401d4059a73b42cc              # double 7.3128419999999998
	.quad	0x40225525aab47410              # double 9.1663029999999992
	.quad	0x3ff9810c6f7a0b5f              # double 1.594006
	.quad	0x4021856e8af81627              # double 8.7606090000000005
	.quad	0x3fe3c877681669cf              # double 0.61822100000000002
	.quad	0x40044b3e5753a3ec              # double 2.53674
	.quad	0x401d168dfbd6a594              # double 7.2720260000000003
	.quad	0x40029e1b8ed1bf7b              # double 2.3272010000000001
	.quad	0x3fed818c5c9a34ca              # double 0.92206399999999999
	.quad	0x40173a6506141637              # double 5.8070259999999996
	.quad	0x3fff0cb295e9e1b1              # double 1.9406000000000001
	.quad	0x402140c111ada76e              # double 8.6264730000000007
	.quad	0x4010901bc98a222d              # double 4.1407309999999997
	.quad	0x3fee3b60285ec3db              # double 0.94474800000000003
	.quad	0x40216ec13b9f127f              # double 8.7163179999999993
	.quad	0x4018c389b52007dd              # double 6.1909549999999998
	.quad	0x400997d6b65a9a80              # double 3.1991399999999999
	.quad	0x3ff2c430b178b370              # double 1.172898
	.quad	0x40123d60e94ee393              # double 4.5599400000000001
	.quad	0x401496ec9e236c16              # double 5.1473870000000002
	.quad	0x4010c21294573a79              # double 4.1895239999999996
	.quad	0x400404827b6fe2e7              # double 2.502202
	.quad	0x3fe2e1cbccf28c7a              # double 0.590063
	.quad	0x4012f3b320535c9e              # double 4.7379879999999996
	.quad	0x401829b30728e92d              # double 6.0407219999999997
	.quad	0x401f1f5558212945              # double 7.7805989999999995
	.quad	0x4017efa54c554328              # double 5.9840289999999996
	.quad	0x400a18bb4d48882f              # double 3.262076
	.quad	0x3fda39fba450acc1              # double 0.40978900000000001
	.quad	0x3ffaa53868fd199c              # double 1.6653370000000001
	.quad	0x402275da059a73b4              # double 9.2301789999999996
	.quad	0x4011a12be48a58b4              # double 4.407394
	.quad	0x400ee0b8066c2acc              # double 3.8597260000000002
	.quad	0x4003cfbca1059ea5              # double 2.4764339999999998
	.quad	0x4016f95bbbe878fb              # double 5.7435140000000002
	.quad	0x40211893532e7b3e              # double 8.5479990000000008
	.quad	0x3ff21d2178f68be3              # double 1.132112
	.quad	0x4009531c219eb639              # double 3.165581
	.quad	0x3ffe54a0a0f4d7ae              # double 1.895661
	.quad	0x402260f3eccc4695              # double 9.1893609999999999
	.quad	0x401117d7c2ca148c              # double 4.2732840000000003
	.quad	0x4023ff37110e453d              # double 9.9984669999999997
	.quad	0x3fc414cec41dd1a2              # double 0.156885
	.quad	0x4022e8db4890928a              # double 9.4547980000000003
	.quad	0x3ffea775fb2edfe7              # double 1.9158839999999999
	.quad	0x3fef628027d88c1e              # double 0.98077400000000003
	.quad	0x40222456f75d9a0f              # double 9.0709759999999999
	.quad	0x3ff64887229e9079              # double 1.3927069999999999
	.quad	0x402338941c8216c6              # double 9.6105049999999999
	.quad	0x4021f0ecb74ddf87              # double 8.9705560000000002
	.quad	0x40016bc83a96d4c3              # double 2.1776279999999999
	.quad	0x401bba033e78e193              # double 6.9316529999999998
	.quad	0x4014fb3311a543f2              # double 5.2453120000000002
	.quad	0x401b1650e779207d              # double 6.7717929999999997
	.quad	0x40094bf444e0daa1              # double 3.1620870000000001
	.quad	0x3fdf4c942d490e67              # double 0.48904900000000001
	.quad	0x4021a0afa2f05a71              # double 8.8138400000000008
	.quad	0x3ffa9845dc832336              # double 1.6621760000000001
	.quad	0x400c78a009f62307              # double 3.5588989999999998
	.quad	0x401ac86db50f40e6              # double 6.6957310000000003
	.quad	0x401aba9de8b3b320              # double 6.6822429999999997
	.quad	0x3ff70a04d12018a4              # double 1.4399459999999999
	.quad	0x40153da5119ce076              # double 5.3102
	.quad	0x40147b18116ebd4d              # double 5.120209
	.quad	0x401e819f7f8ca81a              # double 7.6265850000000004
	.quad	0x400672aae297396d              # double 2.80599
	.quad	0x4015897d49d7ba67              # double 5.3842670000000004
	.quad	0x40180bdad7518b0d              # double 6.0115769999999999
	.quad	0x401f36887a8d64d8              # double 7.803255
	.quad	0x40191aab47410731              # double 6.2760439999999997
	.quad	0x4008c5154866a11f              # double 3.0962320000000001
	.quad	0x400c25af6c69b5a6              # double 3.5184009999999999
	.quad	0x40068b295e9e1b09              # double 2.8179500000000002
	.quad	0x40026130164840e1              # double 2.2974549999999998
	.quad	0x401efa38fbca105a              # double 7.7443580000000001
	.quad	0x4022c642e1262025              # double 9.3872289999999996
	.quad	0x400ba65a57646ae4              # double 3.4562270000000002
	.quad	0x4008d1843c3a42f2              # double 3.102303
	.quad	0x4010027179bfdf7f              # double 4.0023860000000004
	.quad	0x4022fed56b00ffda              # double 9.4977219999999996
	.quad	0x4014b2a9d627bf62              # double 5.1744760000000003
	.quad	0x401561151611ba3d              # double 5.3448070000000003
	.quad	0x40208b95e5aff2a1              # double 8.2726279999999992
	.quad	0x40198902de00d1b7              # double 6.3837999999999999
	.quad	0x3ff797ecbb7f9d6f              # double 1.474591
	.quad	0x40200e5bc87db2b3              # double 8.0280439999999995
	.quad	0x4019626aa8eb4635              # double 6.3461100000000004
	.quad	0x40147068db8bac71              # double 5.109775
	.quad	0x4023cf4fb549f948              # double 9.9049049999999994
	.quad	0x400dd7d41743e964              # double 3.7303850000000001
	.quad	0x3fbf4e7685985ad5              # double 0.122291
	.quad	0x3fe61f01b866e43b              # double 0.69128500000000004
	.quad	0x3ffe95464dc22ab2              # double 1.9114439999999999
	.quad	0x4019a18ce2d1f1d0              # double 6.4077640000000002
	.quad	0x40142ac57e23f24e              # double 5.0417690000000004
	.quad	0x40050229a5ebb774              # double 2.6260560000000002
	.quad	0x3ff24e15011904b4              # double 1.1440630000000001
	.quad	0x400a992e1ef73c0c              # double 3.3247949999999999
	.quad	0x401b518fc504816f              # double 6.82965
	.quad	0x40178a3161a1db87              # double 5.8849539999999996
	.quad	0x3fcc45dc8323358f              # double 0.220882
	.quad	0x3fe21680e0653006              # double 0.56524700000000005
	.quad	0x401c95dcc63f1412              # double 7.14635
	.quad	0x401ba7dae81882ae              # double 6.9139210000000002
	.quad	0x40043eeed8904f6e              # double 2.530729
	.quad	0x4017f12556d19ded              # double 5.9854940000000001
	.quad	0x40163dd3bafd9770              # double 5.560378
	.quad	0x40183d59d55e6bc6              # double 6.0599129999999999
	.quad	0x4001a6bf8769ec2d              # double 2.20642
	.quad	0x401ef0870110a138              # double 7.73489
	.quad	0x3fc5ccc037931444              # double 0.17031099999999999
	.quad	0x40223570a3d70a3d              # double 9.1043749999999992
	.quad	0x402327e8ccdd93c4              # double 9.5779479999999992
	.quad	0x400b1b4dcebfec14              # double 3.3883320000000001
	.quad	0x4003bec3dab5c39c              # double 2.4681470000000001
	.quad	0x3ff4824c404a72eb              # double 1.281811
	.quad	0x4021b141e9af5ba3              # double 8.8462060000000005
	.quad	0x3ffe12dfd694ccab              # double 1.8796079999999999
	.quad	0x400840296b3354c1              # double 3.0313289999999999
	.quad	0x4021536fe2e6ea85              # double 8.6629629999999995
	.quad	0x4011635ac8a37260              # double 4.3470259999999996
	.quad	0x40017e835dedf1e1              # double 2.1867740000000002
	.quad	0x401fa6922d948dc1              # double 7.9126669999999998
	.quad	0x3ff9391a32b12d34              # double 1.576441
	.quad	0x40192711d798d8a9              # double 6.2881539999999996
	.quad	0x40151d3ed527e521              # double 5.2785599999999997
	.quad	0x401518eb8950763a              # double 5.2743359999999999
	.quad	0x401243baba7b9171              # double 4.5661420000000001
	.quad	0x4007f30489d27c39              # double 2.9936609999999999
	.quad	0x400d261bf37b8d3f              # double 3.643608
	.quad	0x401d3cb4aec8d5c7              # double 7.3092829999999998
	.quad	0x4016a9cf9a06a6e3              # double 5.6658309999999998
	.quad	0x400d6e07e5a78f26              # double 3.6787260000000002
	.quad	0x402343cfd4bf0996              # double 9.6324450000000006
	.quad	0x400caf2c7325918a              # double 3.585534
	.quad	0x4017e4bcad9ad85e              # double 5.973376
	.quad	0x3f68372e6a76965f              # double 0.0029559999999999999
	.quad	0x401cc68dfbd6a594              # double 7.1939010000000003
	.quad	0x40168dffc5479d4e              # double 5.6386710000000004
	.quad	0x401edb1a6d698fe7              # double 7.7139680000000003
	.quad	0x4011b9c6b0531983              # double 4.4314220000000004
	.quad	0x40120d2aa5c5f7c6              # double 4.5128579999999996
	.quad	0x400b64a59c065b64              # double 3.4241440000000001
	.quad	0x4019e26d8b1dd5d4              # double 6.4711210000000001
	.quad	0x3fea9c36976bc1f0              # double 0.831569
	.quad	0x401e09fa97e132b5              # double 7.5097449999999996
	.quad	0x3fe15b8348f53c58              # double 0.54242100000000004
	.quad	0x401a49ce8d972cd8              # double 6.5720770000000002
	.quad	0x3feb3d3804534bd7              # double 0.85122299999999995
	.quad	0x3ffbbb44e50c5eb3              # double 1.73322
	.quad	0x40228cbab649d389              # double 9.2748620000000006
	.quad	0x40003304039abf34              # double 2.0249100000000002
	.quad	0x401293e81450efdd              # double 4.6444400000000003
	.quad	0x401515c422036007              # double 5.2712560000000002
	.quad	0x401f09888f861a61              # double 7.7593100000000001
	.quad	0x40125408d8ec95c0              # double 4.5820650000000001
	.quad	0x400bdc0ca600b029              # double 3.4824459999999999
	.quad	0x4019f7d1351159c5              # double 6.4920090000000004
	.quad	0x400b41d6494d50ec              # double 3.4071470000000001
	.quad	0x3ff2eb56fb8f57f7              # double 1.182456
	.quad	0x400ed170d62bf120              # double 3.8522660000000002
	.quad	0x3fd55edd052934ad              # double 0.33391500000000002
	.quad	0x3fee6de33269df98              # double 0.95091400000000003
	.quad	0x4021a434e3369b9d              # double 8.8207159999999991
	.quad	0x3fccf4c6e6d9be4d              # double 0.22622
	.quad	0x4012e97a24894c44              # double 4.7280049999999996
	.quad	0x4021c82c4d65e460              # double 8.8909629999999993
	.quad	0x401a40ce91c8eac0              # double 6.563288
	.quad	0x401bc983947496ab              # double 6.9467910000000002
	.quad	0x3fe527e0ef99806f              # double 0.66111799999999998
	.quad	0x3ff303526527a205              # double 1.1883109999999999
	.quad	0x4018bc3547e06962              # double 6.1837970000000002
	.quad	0x401f24dfce3150db              # double 7.78601
	.quad	0x4012896638433d6c              # double 4.6341789999999996
	.quad	0x400f2aa326e11559              # double 3.8958189999999999
	.quad	0x401597d73c925786              # double 5.398282
	.quad	0x3fea6d8f4f93bc0a              # double 0.825874
	.quad	0x4010dfb1e18efbb1              # double 4.2184520000000001
	.quad	0x4003c6e5cd4ed2cc              # double 2.472118
	.quad	0x40021c04c8bc9cd4              # double 2.2636810000000001
	.quad	0x4014a6030c23fab1              # double 5.162121
	.quad	0x40120799e518f3ed              # double 4.5074230000000002
	.quad	0x4000c617c1bda512              # double 2.0967250000000002
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
