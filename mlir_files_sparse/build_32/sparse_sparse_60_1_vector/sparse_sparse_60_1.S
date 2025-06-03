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
	.quad	0x413efb24a1805e5f              # double 2030372.630865
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
	.quad	4000                            # 0xfa0
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4000                            # 0xfa0
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
	lui	a7, %hi(.L__constant_4000xindex)
	addi	a7, a7, %lo(.L__constant_4000xindex)
	lui	t0, %hi(.L__constant_4000xf64)
	addi	t0, t0, %lo(.L__constant_4000xf64)
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
	.quad	74                              # 0x4a
	.quad	109                             # 0x6d
	.quad	151                             # 0x97
	.quad	193                             # 0xc1
	.quad	230                             # 0xe6
	.quad	273                             # 0x111
	.quad	310                             # 0x136
	.quad	360                             # 0x168
	.quad	401                             # 0x191
	.quad	439                             # 0x1b7
	.quad	480                             # 0x1e0
	.quad	520                             # 0x208
	.quad	558                             # 0x22e
	.quad	593                             # 0x251
	.quad	642                             # 0x282
	.quad	687                             # 0x2af
	.quad	729                             # 0x2d9
	.quad	772                             # 0x304
	.quad	804                             # 0x324
	.quad	843                             # 0x34b
	.quad	882                             # 0x372
	.quad	923                             # 0x39b
	.quad	961                             # 0x3c1
	.quad	1004                            # 0x3ec
	.quad	1051                            # 0x41b
	.quad	1085                            # 0x43d
	.quad	1123                            # 0x463
	.quad	1167                            # 0x48f
	.quad	1203                            # 0x4b3
	.quad	1238                            # 0x4d6
	.quad	1275                            # 0x4fb
	.quad	1324                            # 0x52c
	.quad	1357                            # 0x54d
	.quad	1397                            # 0x575
	.quad	1431                            # 0x597
	.quad	1478                            # 0x5c6
	.quad	1512                            # 0x5e8
	.quad	1554                            # 0x612
	.quad	1592                            # 0x638
	.quad	1629                            # 0x65d
	.quad	1672                            # 0x688
	.quad	1709                            # 0x6ad
	.quad	1740                            # 0x6cc
	.quad	1773                            # 0x6ed
	.quad	1815                            # 0x717
	.quad	1858                            # 0x742
	.quad	1895                            # 0x767
	.quad	1946                            # 0x79a
	.quad	1986                            # 0x7c2
	.quad	2027                            # 0x7eb
	.quad	2072                            # 0x818
	.quad	2117                            # 0x845
	.quad	2151                            # 0x867
	.quad	2190                            # 0x88e
	.quad	2233                            # 0x8b9
	.quad	2275                            # 0x8e3
	.quad	2315                            # 0x90b
	.quad	2354                            # 0x932
	.quad	2392                            # 0x958
	.quad	2437                            # 0x985
	.quad	2477                            # 0x9ad
	.quad	2516                            # 0x9d4
	.quad	2557                            # 0x9fd
	.quad	2588                            # 0xa1c
	.quad	2629                            # 0xa45
	.quad	2668                            # 0xa6c
	.quad	2715                            # 0xa9b
	.quad	2756                            # 0xac4
	.quad	2802                            # 0xaf2
	.quad	2839                            # 0xb17
	.quad	2881                            # 0xb41
	.quad	2924                            # 0xb6c
	.quad	2969                            # 0xb99
	.quad	3009                            # 0xbc1
	.quad	3049                            # 0xbe9
	.quad	3083                            # 0xc0b
	.quad	3125                            # 0xc35
	.quad	3166                            # 0xc5e
	.quad	3206                            # 0xc86
	.quad	3247                            # 0xcaf
	.quad	3286                            # 0xcd6
	.quad	3325                            # 0xcfd
	.quad	3359                            # 0xd1f
	.quad	3401                            # 0xd49
	.quad	3439                            # 0xd6f
	.quad	3474                            # 0xd92
	.quad	3518                            # 0xdbe
	.quad	3561                            # 0xde9
	.quad	3603                            # 0xe13
	.quad	3641                            # 0xe39
	.quad	3688                            # 0xe68
	.quad	3725                            # 0xe8d
	.quad	3774                            # 0xebe
	.quad	3809                            # 0xee1
	.quad	3839                            # 0xeff
	.quad	3879                            # 0xf27
	.quad	3924                            # 0xf54
	.quad	3964                            # 0xf7c
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
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
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
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
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x4010769014b599aa              # double 4.1157839999999997
	.quad	0x40223f57b41bfbdf              # double 9.1237159999999999
	.quad	0x40230e34dad31fcd              # double 9.5277469999999997
	.quad	0x40206b8bef8ceb35              # double 8.2100519999999992
	.quad	0x4006b5e17e34b945              # double 2.8388089999999999
	.quad	0x40067eacc92146a2              # double 2.8118530000000002
	.quad	0x400f10a67620ee8d              # double 3.88313
	.quad	0x4003ce7ff583a53c              # double 2.4758300000000002
	.quad	0x400004523f67f4dc              # double 2.0021100000000001
	.quad	0x401e9d3bf2f55582              # double 7.6535489999999999
	.quad	0x400e3b23dd54da4d              # double 3.778877
	.quad	0x4010cbd5dc400757              # double 4.199058
	.quad	0x4018cbcbe61cffeb              # double 6.19902
	.quad	0x40108684cf0739b0              # double 4.1313659999999999
	.quad	0x3ffaf1b36bd2b6f2              # double 1.6840090000000001
	.quad	0x40130ab92c061848              # double 4.760472
	.quad	0x4016ae4712e40853              # double 5.6701930000000003
	.quad	0x401cbdea465a5764              # double 7.1854639999999996
	.quad	0x400be0e6299524c0              # double 3.4848140000000001
	.quad	0x400bef2a5a469d73              # double 3.4917799999999999
	.quad	0x401ad8e581cf7879              # double 6.7118130000000003
	.quad	0x3fff696f6512a950              # double 1.963241
	.quad	0x3fb4e0fc2eba27af              # double 0.081558000000000005
	.quad	0x400d2ddce7cd0353              # double 3.6473939999999998
	.quad	0x4013bf648c7192ea              # double 4.9369069999999997
	.quad	0x3fff81743e963dc5              # double 1.9691050000000001
	.quad	0x400d0d76ab5807ff              # double 3.6315740000000001
	.quad	0x4015cbd7f51efb6e              # double 5.4490660000000002
	.quad	0x401eebc87db2b346              # double 7.7302569999999999
	.quad	0x3fd818a43bb40b35              # double 0.37650400000000001
	.quad	0x3ff380b9991361dd              # double 1.2189270000000001
	.quad	0x401c02a7bd48cb4b              # double 7.0025930000000001
	.quad	0x401ce6805a2d7300              # double 7.2250990000000002
	.quad	0x3fff69131ec0b567              # double 1.9631529999999999
	.quad	0x40200f1886df82b2              # double 8.0294840000000001
	.quad	0x40227bb55ac03ff7              # double 9.2416180000000008
	.quad	0x401a4e39713ad5bf              # double 6.5763910000000001
	.quad	0x40042eed8904f6e0              # double 2.5229140000000001
	.quad	0x4023b8a63305100a              # double 9.8606429999999996
	.quad	0x401f8929ed3953df              # double 7.8839490000000003
	.quad	0x40101720c8cd63cc              # double 4.0225860000000004
	.quad	0x400e9cdcca70d1fa              # double 3.8265929999999999
	.quad	0x40036554b8bef8cf              # double 2.4244780000000001
	.quad	0x4021b577963992c9              # double 8.8544280000000004
	.quad	0x4023e62eb1c432ca              # double 9.9495749999999994
	.quad	0x401e365f5275ee9a              # double 7.5530980000000003
	.quad	0x4020b2cb641700ce              # double 8.3492080000000009
	.quad	0x401e7f6c69b5a640              # double 7.6244370000000004
	.quad	0x401c4aa19439de48              # double 7.0728819999999999
	.quad	0x401f34588a04d120              # double 7.8011189999999999
	.quad	0x4013a0096feb4a66              # double 4.9062859999999997
	.quad	0x40187be27179bfdf              # double 6.1209809999999996
	.quad	0x4014b023e9ea1405              # double 5.1720119999999996
	.quad	0x4005079dd3bafd97              # double 2.6287189999999998
	.quad	0x40222ea7ce0fc2ec              # double 9.0911240000000006
	.quad	0x400d8e7cd0353719              # double 3.6945739999999998
	.quad	0x401a88df7a4e7ab7              # double 6.6336649999999997
	.quad	0x3fc076fb09203a32              # double 0.128631
	.quad	0x400d18d1526d8b1e              # double 3.6371180000000001
	.quad	0x401258b8f14db595              # double 4.5866429999999996
	.quad	0x3fe261847f562175              # double 0.57440400000000003
	.quad	0x3ff3c8d08919ef95              # double 1.2365269999999999
	.quad	0x401d6ef39085f4a1              # double 7.3583509999999999
	.quad	0x402000b1bbcf4e87              # double 8.0013559999999995
	.quad	0x4012da9930be0ded              # double 4.7134749999999999
	.quad	0x401906d8f4f93bc1              # double 6.2566870000000003
	.quad	0x3ff8e961c36976bc              # double 1.556978
	.quad	0x401bb01d19157abc              # double 6.9219860000000004
	.quad	0x4011d5492ff4ba52              # double 4.4582870000000003
	.quad	0x4020f651b0ccbc06              # double 8.4810920000000003
	.quad	0x3ff09a4052d666aa              # double 1.0376590000000001
	.quad	0x400833d9ec700043              # double 3.025318
	.quad	0x3fc628e4fb97bb73              # double 0.173123
	.quad	0x40059b8887229e90              # double 2.7009439999999998
	.quad	0x40174a37ac3eb7cc              # double 5.8224780000000003
	.quad	0x4003271de69ad42c              # double 2.3940999999999999
	.quad	0x40136bcdbbe0157f              # double 4.8552770000000001
	.quad	0x40213f822bbecaac              # double 8.6240400000000008
	.quad	0x3fd92b12d3415b14              # double 0.39325399999999999
	.quad	0x402336ef8055fbb5              # double 9.6072959999999998
	.quad	0x401e755c96030c24              # double 7.614611
	.quad	0x401cc03f2d3c792d              # double 7.1877409999999999
	.quad	0x3fef5360d0247022              # double 0.97892800000000002
	.quad	0x400451f81a5870da              # double 2.5400239999999998
	.quad	0x3fbd5011904b3c3e              # double 0.11450299999999999
	.quad	0x4009804b7f5a5333              # double 3.1876440000000001
	.quad	0x3fe8c751ce28ed5f              # double 0.77433099999999999
	.quad	0x401b9023e9ea1405              # double 6.8907619999999996
	.quad	0x4011637154003255              # double 4.3471120000000001
	.quad	0x401070c9107faa04              # double 4.1101419999999997
	.quad	0x4010d2ad3e920c07              # double 4.2057390000000003
	.quad	0x401690c1333b96af              # double 5.641362
	.quad	0x4021a043c3a42f1f              # double 8.8130170000000003
	.quad	0x4012b7b8d3f1843c              # double 4.6794159999999998
	.quad	0x40213c804102ff8f              # double 8.6181660000000004
	.quad	0x4012d05dd8f92afa              # double 4.7034830000000003
	.quad	0x4011e4be40420f6f              # double 4.473382
	.quad	0x3fe4394317acc4f0              # double 0.63199000000000005
	.quad	0x401df8cb4aec8d5c              # double 7.4929629999999996
	.quad	0x4020d1beb18116ec              # double 8.4096580000000002
	.quad	0x400c69db65ecc3e3              # double 3.551688
	.quad	0x4023f04901d19158              # double 9.9693070000000005
	.quad	0x4017f0489d27c393              # double 5.9846519999999996
	.quad	0x4023601eeed8904f              # double 9.6877359999999992
	.quad	0x40210ac083126e98              # double 8.5210000000000008
	.quad	0x40189c426351def0              # double 6.1525970000000001
	.quad	0x40220c753e707e17              # double 9.0243319999999994
	.quad	0x4014b012599ed7c7              # double 5.171945
	.quad	0x400bde6ff7dfa00e              # double 3.4836119999999999
	.quad	0x40102d87b56b8738              # double 4.0444630000000004
	.quad	0x4018b9b5a63f9a4a              # double 6.1813570000000002
	.quad	0x401b8ff36ac64778              # double 6.8905770000000004
	.quad	0x40199d6451b93038              # double 6.4037030000000001
	.quad	0x400df32acfb762d8              # double 3.7437339999999999
	.quad	0x400b53660e51d25b              # double 3.4157220000000001
	.quad	0x4022f07b139c94f7              # double 9.4696890000000006
	.quad	0x401622756861e929              # double 5.5336509999999999
	.quad	0x3fd0c9abb01c92de              # double 0.26230900000000001
	.quad	0x3ff8443f5f91600f              # double 1.516662
	.quad	0x4022f9ec7000431c              # double 9.4881320000000002
	.quad	0x3ff8a68a0d349be9              # double 1.540659
	.quad	0x401ab266fd651b0d              # double 6.6742210000000002
	.quad	0x3fe64ac6cdaf4adc              # double 0.69662800000000002
	.quad	0x4014f2074ea8da7f              # double 5.2363559999999998
	.quad	0x400bb86b15f88fc9              # double 3.4650479999999999
	.quad	0x401e0edd8b60f1b2              # double 7.5145169999999997
	.quad	0x401a26f826edaa93              # double 6.5380560000000001
	.quad	0x4015f83dbc23315d              # double 5.4924229999999996
	.quad	0x3fef887442c7fbad              # double 0.98540700000000003
	.quad	0x400d36adf71eafee              # double 3.6516989999999998
	.quad	0x4012fffc9795b35b              # double 4.749987
	.quad	0x4013ec158fb43d8a              # double 4.9805510000000002
	.quad	0x40198a3db3bfb58d              # double 6.3850009999999999
	.quad	0x401139c8c9320d99              # double 4.3064299999999998
	.quad	0x4023e2f1cb89d6ae              # double 9.9432510000000001
	.quad	0x402266ba0620ab71              # double 9.2006379999999996
	.quad	0x3fdd2862f5989df1              # double 0.45558999999999999
	.quad	0x4020db8c75c4a83b              # double 8.4288059999999998
	.quad	0x3fe5572799a1fd15              # double 0.66688899999999995
	.quad	0x401c06527a20578e              # double 7.0061739999999997
	.quad	0x4002673b42cc2d6b              # double 2.3004060000000002
	.quad	0x4013f5dd095af295              # double 4.9901010000000001
	.quad	0x3fe99552e2fbe33b              # double 0.79947800000000002
	.quad	0x4015aa012599ed7c              # double 5.4160199999999996
	.quad	0x3fd252c16df3f962              # double 0.28630100000000003
	.quad	0x401b482949a56580              # double 6.8204700000000003
	.quad	0x3ff670d62bf11f92              # double 1.4025479999999999
	.quad	0x400c3d73c9257860              # double 3.5300060000000002
	.quad	0x400e102602c9081c              # double 3.7578849999999999
	.quad	0x40229af8df7a4e7b              # double 9.3026800000000005
	.quad	0x4008670110a137f4              # double 3.0502950000000002
	.quad	0x3fc91e42e1262025              # double 0.19623599999999999
	.quad	0x401f96145953586d              # double 7.8965620000000003
	.quad	0x400e177d0f1f57b4              # double 3.761469
	.quad	0x3ffc7b1183b60286              # double 1.780046
	.quad	0x4022b3a322af5771              # double 9.350854
	.quad	0x40231fd3b29a1ba0              # double 9.5621620000000007
	.quad	0x4011de2435696e59              # double 4.4669350000000003
	.quad	0x4013dc0485a0be51              # double 4.964861
	.quad	0x400ffc6f36ef8056              # double 3.998259
	.quad	0x40227a497fa5d28d              # double 9.238842
	.quad	0x3ffb34cd31769a91              # double 1.700391
	.quad	0x40163b0d9513f8db              # double 5.5576689999999997
	.quad	0x4008257afea3df6e              # double 3.0183010000000001
	.quad	0x401b168405b39e28              # double 6.7719880000000003
	.quad	0x3ffa08b0079a2835              # double 1.627121
	.quad	0x3ff53c47e49b1fac              # double 1.3272170000000001
	.quad	0x4010591bc5586445              # double 4.0870199999999999
	.quad	0x4015f5072085b185              # double 5.4892849999999997
	.quad	0x400038e086bdf4c3              # double 2.0277720000000001
	.quad	0x402232d0a2446306              # double 9.0992479999999993
	.quad	0x4012248a58b3f63c              # double 4.5356839999999998
	.quad	0x4019ca0e8427418d              # double 6.4473209999999996
	.quad	0x40237d4e4c942d49              # double 9.7447379999999999
	.quad	0x3fa845996744b2b7              # double 0.047405999999999997
	.quad	0x40125a4e7ab75643              # double 4.58819
	.quad	0x3fd68e3ac0c62e4d              # double 0.35243099999999999
	.quad	0x4016187f023e9ea1              # double 5.5239219999999998
	.quad	0x401fad63022dd7aa              # double 7.9193230000000003
	.quad	0x401d48e8ea39c51e              # double 7.3212010000000003
	.quad	0x4002ab990afe60c4              # double 2.3337880000000002
	.quad	0x400f5923a29c779a              # double 3.9185249999999998
	.quad	0x40207ea593a2df93              # double 8.2473569999999992
	.quad	0x40202e75147f1306              # double 8.0907370000000007
	.quad	0x401957546d3f9e7c              # double 6.3352830000000004
	.quad	0x402206ba8c586877              # double 9.0131420000000002
	.quad	0x4020588df37329c3              # double 8.1729579999999995
	.quad	0x40186a077036c9c1              # double 6.1035440000000003
	.quad	0x4020600f98fa3769              # double 8.1876189999999998
	.quad	0x400064a72ead9275              # double 2.0491470000000001
	.quad	0x40151597d49d7ba6              # double 5.2710869999999996
	.quad	0x4004283a109d0636              # double 2.5196420000000002
	.quad	0x40198184c271fff8              # double 6.3764830000000003
	.quad	0x401984ed6fda836f              # double 6.3798120000000003
	.quad	0x4016b55970b49e02              # double 5.6770990000000001
	.quad	0x4009751deefe4ffd              # double 3.1821860000000002
	.quad	0x4014062281344806              # double 5.0059909999999999
	.quad	0x401f57681669ced1              # double 7.8353580000000002
	.quad	0x401bac90c4dec1c2              # double 6.9185210000000001
	.quad	0x3fe576577531db44              # double 0.67069599999999996
	.quad	0x40087c579f234656              # double 3.0607139999999999
	.quad	0x400f1250b524399b              # double 3.8839429999999999
	.quad	0x401476705c896dd2              # double 5.1156629999999996
	.quad	0x4023454eb13dfb0d              # double 9.6353659999999994
	.quad	0x4017d481f53825e1              # double 5.9575269999999998
	.quad	0x40106705c896dd27              # double 4.1006080000000003
	.quad	0x401945c91d14e3bd              # double 6.3181500000000002
	.quad	0x401a879aae6c8f75              # double 6.6324259999999997
	.quad	0x40068f5c28f5c28f              # double 2.8199999999999998
	.quad	0x4014ae653868fd1a              # double 5.1703080000000003
	.quad	0x4015a1bd1ed9dfdb              # double 5.4079480000000002
	.quad	0x402285e2478854ce              # double 9.2614920000000005
	.quad	0x40046561d4306e5d              # double 2.5495030000000001
	.quad	0x4023b1a5657fb69a              # double 9.8469650000000009
	.quad	0x4012dc77574f722e              # double 4.7152989999999999
	.quad	0x401ff0ff10ecb74e              # double 7.9853480000000001
	.quad	0x4022c5035371971c              # double 9.3847909999999998
	.quad	0x400bdc3bd5992429              # double 3.4825360000000001
	.quad	0x401719b1b79d909f              # double 5.7750919999999999
	.quad	0x40117182235b4edb              # double 4.3608479999999998
	.quad	0x401b1fbce4217d28              # double 6.7809939999999997
	.quad	0x3fefae70c1333b97              # double 0.99004400000000003
	.quad	0x4022c40d6f544bb2              # double 9.3829150000000006
	.quad	0x4005859c8c9320da              # double 2.6902400000000002
	.quad	0x4016063ae2541d8f              # double 5.5060840000000004
	.quad	0x401857820a30db6a              # double 6.0854569999999999
	.quad	0x4023bb86d2ed783e              # double 9.866263
	.quad	0x4007d2e48e8a71de              # double 2.9779749999999998
	.quad	0x3ff969d7342edbb6              # double 1.5883400000000001
	.quad	0x4012cdedf1e0828c              # double 4.7011029999999998
	.quad	0x3fd7d490e66cb103              # double 0.37234899999999999
	.quad	0x3fd5f75d9a0f0a5f              # double 0.343223
	.quad	0x4021a3bfd71b0468              # double 8.8198229999999995
	.quad	0x4021eed02cd39da1              # double 8.9664319999999993
	.quad	0x401f56cf41f212d7              # double 7.8347749999999996
	.quad	0x402091b003686a4d              # double 8.2845460000000006
	.quad	0x3ff0e82730c67169              # double 1.056678
	.quad	0x3fe2f3eccc469510              # double 0.59227600000000002
	.quad	0x40218aa9930be0df              # double 8.7708250000000003
	.quad	0x4020c8b2a6b0d951              # double 8.3919879999999996
	.quad	0x3ffa2640a6b93ccd              # double 1.634339
	.quad	0x4018203e63e8dda5              # double 6.0314880000000004
	.quad	0x3fe020c6b484d76b              # double 0.50400100000000003
	.quad	0x40232c091c087443              # double 9.5860070000000003
	.quad	0x40038e379b77c02b              # double 2.444442
	.quad	0x3ffd2c3009b30729              # double 1.823288
	.quad	0x4020bb84988094e6              # double 8.3662460000000003
	.quad	0x401a62f9873ffac2              # double 6.5966550000000002
	.quad	0x4015219dece57109              # double 5.2828290000000004
	.quad	0x400d58c2a454de7f              # double 3.6683400000000002
	.quad	0x400a1202107b7846              # double 3.2587929999999998
	.quad	0x4018c575c0767d35              # double 6.1928320000000001
	.quad	0x4002738cda6e75ff              # double 2.3064209999999998
	.quad	0x40175b13dfb0d520              # double 5.8389430000000004
	.quad	0x4016d9e55c0fcb4f              # double 5.7127889999999999
	.quad	0x40233c5308bb9064              # double 9.6178209999999992
	.quad	0x40055f2ba9d1f601              # double 2.6714699999999998
	.quad	0x4022821e603d5779              # double 9.2541379999999993
	.quad	0x4013da7a85015c21              # double 4.9633580000000004
	.quad	0x400048feac42e98a              # double 2.0356420000000002
	.quad	0x40229ebf8769ec2d              # double 9.3100550000000002
	.quad	0x4011cc226809d495              # double 4.4493499999999999
	.quad	0x4003f26fa3fcc9eb              # double 2.4933770000000002
	.quad	0x3fd92deca25529fe              # double 0.393428
	.quad	0x400f359ee88df373              # double 3.9011819999999999
	.quad	0x3fe4269df97aaac1              # double 0.629714
	.quad	0x401a5b8b26394fad              # double 6.5893980000000001
	.quad	0x400e77b7414a4d2b              # double 3.8084549999999999
	.quad	0x402316c8d5c74752              # double 9.5445010000000003
	.quad	0x3ff29e39713ad5bf              # double 1.163629
	.quad	0x402172cbc8c0ce92              # double 8.7242110000000004
	.quad	0x3fb12157689ca18c              # double 0.066915000000000002
	.quad	0x400a8c0bdcad14a1              # double 3.3183820000000002
	.quad	0x401f402ababead4f              # double 7.8126629999999996
	.quad	0x40130e63a5c1c609              # double 4.7640520000000004
	.quad	0x401b5e414e7ee914              # double 6.8420459999999999
	.quad	0x4001c1db0142f61f              # double 2.2196560000000001
	.quad	0x401d8dc6e2a80065              # double 7.3884540000000003
	.quad	0x400ba9a3d2d87f88              # double 3.4578319999999998
	.quad	0x4017dd9dba908a26              # double 5.9664219999999997
	.quad	0x4021b52220bc382a              # double 8.8537759999999999
	.quad	0x40217986b9c304cd              # double 8.7373560000000001
	.quad	0x402263eaf6837f7c              # double 9.1951520000000002
	.quad	0x400df9ab6d00b45b              # double 3.746909
	.quad	0x4020ba9a8049667b              # double 8.3644599999999993
	.quad	0x3f6bde82d7b634db              # double 0.0034020000000000001
	.quad	0x401567353b4b2fa9              # double 5.3507889999999998
	.quad	0x40074e8533b10774              # double 2.9133399999999998
	.quad	0x40203669ced0b30b              # double 8.1062759999999994
	.quad	0x3ff66534373f316e              # double 1.399708
	.quad	0x4021523571d1d474              # double 8.6605640000000008
	.quad	0x4010c178b3700475              # double 4.1889370000000001
	.quad	0x40108891e215336e              # double 4.1333690000000001
	.quad	0x402168192a737111              # double 8.7033170000000002
	.quad	0x400f25e4e69f05ea              # double 3.8935029999999999
	.quad	0x3ff5d4f15e7c8d19              # double 1.3644879999999999
	.quad	0x401185ea67e846a6              # double 4.3807770000000001
	.quad	0x402182e9680e0653              # double 8.755687
	.quad	0x40143c768dfbd6a6              # double 5.0590460000000004
	.quad	0x400bb85d744f5d35              # double 3.4650219999999998
	.quad	0x4000191ff7164c73              # double 2.0122680000000002
	.quad	0x401eb63b256ffc11              # double 7.6779599999999996
	.quad	0x400aed1d8a548238              # double 3.3657789999999999
	.quad	0x401b7583621fafc9              # double 6.8647590000000003
	.quad	0x3fff1003eea209ab              # double 1.9414100000000001
	.quad	0x4023b8157eed45e9              # double 9.8595389999999998
	.quad	0x401afe3b03e20cd0              # double 6.748272
	.quad	0x401e7915bdd76684              # double 7.6182470000000002
	.quad	0x4016fb54e2b063e0              # double 5.7454409999999996
	.quad	0x3ffe3dd22856605f              # double 1.890093
	.quad	0x40021d8c6d612c6b              # double 2.2644280000000001
	.quad	0x401f299392189bd8              # double 7.7906019999999998
	.quad	0x40180cfc829cfdd2              # double 6.0126819999999999
	.quad	0x3ff932a172abef07              # double 1.5748610000000001
	.quad	0x40167dc725c3dee8              # double 5.6228300000000004
	.quad	0x400634b7b28954a8              # double 2.775741
	.quad	0x401a884230fcf80e              # double 6.6330650000000002
	.quad	0x400c3bc0a06e9ff1              # double 3.5291760000000001
	.quad	0x40227cc61d8622c4              # double 9.2436989999999994
	.quad	0x400132ab68cef673              # double 2.1497410000000001
	.quad	0x4021aec508b32ce9              # double 8.8413470000000007
	.quad	0x40223cf5d35653ca              # double 9.1190630000000006
	.quad	0x3fe94fb549f94856              # double 0.79098000000000002
	.quad	0x4023cb3edd8b60f2              # double 9.8969640000000005
	.quad	0x400cfe0c5a8155d6              # double 3.624047
	.quad	0x4017985d31337eb3              # double 5.8987930000000004
	.quad	0x3fea6c5b078d92fb              # double 0.82572699999999999
	.quad	0x401602a0ec743201              # double 5.502567
	.quad	0x3ff9219008205ff2              # double 1.570694
	.quad	0x401ffecbb7f9d6f1              # double 7.9988239999999999
	.quad	0x4014b08aefb2aae3              # double 5.1724050000000004
	.quad	0x401f1dc6e2a80065              # double 7.7790790000000002
	.quad	0x3ff284be40420f6f              # double 1.157408
	.quad	0x3ff3a06fac6045bb              # double 1.226669
	.quad	0x401d5b320535c9e6              # double 7.3390579999999996
	.quad	0x4020254280ae1049              # double 8.0727729999999998
	.quad	0x3fd0176577531db4              # double 0.25142799999999998
	.quad	0x400847ce0fc2eba2              # double 3.0350609999999998
	.quad	0x401635a038194c01              # double 5.5523689999999997
	.quad	0x3fd6abd5dc400757              # double 0.354238
	.quad	0x4008297bfa4c61d8              # double 3.0202559999999998
	.quad	0x3ffb15b89939218a              # double 1.6928030000000001
	.quad	0x401e1b1704ff4342              # double 7.5264550000000003
	.quad	0x40225697f1f9ad00              # double 9.1691280000000006
	.quad	0x401f58aa00192a73              # double 7.8365859999999996
	.quad	0x3fe0517614595358              # double 0.50994399999999995
	.quad	0x400c2092ccf6be38              # double 3.5159050000000001
	.quad	0x4009c9bd8383ad9f              # double 3.223506
	.quad	0x3ff8df6124074645              # double 1.5545359999999999
	.quad	0x3fe6e427c7c5260f              # double 0.71535099999999996
	.quad	0x4022a87980f55de6              # double 9.3290520000000008
	.quad	0x401f51a75cd0bb6f              # double 7.8297400000000001
	.quad	0x4020922339c0ebee              # double 8.285425
	.quad	0x401b245b291b823d              # double 6.7855040000000004
	.quad	0x40179cf0739b024f              # double 5.9032609999999996
	.quad	0x4020d59253543aeb              # double 8.4171320000000005
	.quad	0x4014a90eed02cd3a              # double 5.1650960000000001
	.quad	0x401ac779a6b50b0f              # double 6.6947999999999999
	.quad	0x40051781c714fce7              # double 2.6364779999999999
	.quad	0x40200b9e8c47a17f              # double 8.0226939999999995
	.quad	0x40103301eabbcb1d              # double 4.0498120000000002
	.quad	0x402253f9a49c2c1b              # double 9.1640139999999999
	.quad	0x401546c8f7553693              # double 5.3191259999999998
	.quad	0x4020710ea9e6eeb7              # double 8.220815
	.quad	0x40236b75a74c09c4              # double 9.7098820000000003
	.quad	0x40206942b302f72b              # double 8.2055869999999995
	.quad	0x40202bedfa43fe5d              # double 8.0858000000000008
	.quad	0x401e07d7c2ca148c              # double 7.5076590000000003
	.quad	0x401016c3fc43b2dd              # double 4.0222319999999998
	.quad	0x3ff015de58e64b23              # double 1.005339
	.quad	0x401e59ef0f16f438              # double 7.5878259999999997
	.quad	0x4012365f5275ee9a              # double 4.5530980000000003
	.quad	0x3ffe4ebbba55d1c4              # double 1.8942220000000001
	.quad	0x4003e1205bc01a37              # double 2.4849250000000001
	.quad	0x401813ed959a3098              # double 6.0194609999999997
	.quad	0x4021fe76a7264a17              # double 8.9969990000000006
	.quad	0x4022e84102ff8ec1              # double 9.453621
	.quad	0x4021e81e68a0d34a              # double 8.9533570000000005
	.quad	0x4018cb4202d9cf14              # double 6.1984940000000002
	.quad	0x3ff8f1da37ef5a96              # double 1.5590459999999999
	.quad	0x4002a5953586ca8a              # double 2.330851
	.quad	0x4018367e846a5d6c              # double 6.0532170000000001
	.quad	0x3ff1cfcb4f1e4b45              # double 1.1132310000000001
	.quad	0x3fe2162ae4b01861              # double 0.56520599999999999
	.quad	0x4015c40e9d51b4fe              # double 5.4414619999999996
	.quad	0x40143328f9f44d44              # double 5.0499609999999997
	.quad	0x3fecb9b8887229e9              # double 0.897671
	.quad	0x40057fefbf401c50              # double 2.6874690000000001
	.quad	0x40134785f8d2e515              # double 4.8198470000000002
	.quad	0x40185fe4ffc9795b              # double 6.0936469999999998
	.quad	0x40003cbd556084a5              # double 2.029658
	.quad	0x400738ba40d90e24              # double 2.9026990000000001
	.quad	0x40109ce13f4a98ab              # double 4.1532030000000004
	.quad	0x3ff8df7f8ca8198f              # double 1.554565
	.quad	0x4022d6b9e492bc30              # double 9.4193870000000004
	.quad	0x40101d759ee88df3              # double 4.0287689999999996
	.quad	0x402336c3b927d45a              # double 9.6069619999999993
	.quad	0x4007b65668c26139              # double 2.964032
	.quad	0x40194f42fe82517e              # double 6.3274039999999996
	.quad	0x400e09973d9ec700              # double 3.754683
	.quad	0x4020e0ced4e4c943              # double 8.4390780000000003
	.quad	0x4011141a261bf37c              # double 4.2696310000000004
	.quad	0x40056ae21101b003              # double 2.6771889999999998
	.quad	0x401af31337eb28d8              # double 6.7373779999999996
	.quad	0x401bd5ee99a62ed3              # double 6.9589179999999997
	.quad	0x401f457e23f24d90              # double 7.8178640000000001
	.quad	0x3fefffd60e94ee39              # double 0.99997999999999997
	.quad	0x4019d5be1a826245              # double 6.4587329999999996
	.quad	0x400bcd2a1f8e3ac1              # double 3.4751780000000001
	.quad	0x3fdc7a02fb5d0310              # double 0.44494699999999998
	.quad	0x40154fb506dd69d3              # double 5.327839
	.quad	0x401804430b178b37              # double 6.004162
	.quad	0x401f376922d948dc              # double 7.8041119999999999
	.quad	0x3fe72786c226809d              # double 0.72357499999999997
	.quad	0x401452df9378ee28              # double 5.0809309999999996
	.quad	0x401658ca3e7d1351              # double 5.5867089999999999
	.quad	0x4018fc36113404ea              # double 6.2462999999999997
	.quad	0x400fcfaf85942917              # double 3.9764089999999999
	.quad	0x40234b0270f38822              # double 9.6465029999999992
	.quad	0x40166304ccee5abc              # double 5.596698
	.quad	0x401f3b1c864883fd              # double 7.8077259999999997
	.quad	0x40134ef88b977857              # double 4.8271199999999999
	.quad	0x401764d056c508b3              # double 5.8484509999999998
	.quad	0x4014667839cd8128              # double 5.1000680000000003
	.quad	0x400fe4c059210386              # double 3.9866950000000001
	.quad	0x4021b153dea465a5              # double 8.8463429999999992
	.quad	0x40200f6cce5f7404              # double 8.0301270000000002
	.quad	0x40184b5393250b52              # double 6.0735609999999998
	.quad	0x401b1329802c0a4a              # double 6.768713
	.quad	0x4016dbadc0980b24              # double 5.7145299999999999
	.quad	0x4021b20fb224aada              # double 8.8477759999999996
	.quad	0x401ee9fb6134ce3e              # double 7.7284980000000001
	.quad	0x3ff1fbb83cf2cf96              # double 1.123955
	.quad	0x4010dca643cc07ab              # double 4.2154780000000001
	.quad	0x40104f89c5e6ff7e              # double 4.077674
	.quad	0x4023c55ffe6d58c9              # double 9.8854980000000001
	.quad	0x40228d3b0813cab8              # double 9.2758409999999997
	.quad	0x40160d373affb04f              # double 5.5129060000000001
	.quad	0x4007111be6e65387              # double 2.8833540000000002
	.quad	0x401b23e920c069e8              # double 6.785069
	.quad	0x4019b0e0eb67c287              # double 6.422733
	.quad	0x4017768be2f7b17d              # double 5.8657680000000001
	.quad	0x4005711f926c7eae              # double 2.6802359999999998
	.quad	0x40029fc43b2dd378              # double 2.3280110000000001
	.quad	0x4000416d6dc1a47b              # double 2.0319470000000002
	.quad	0x401294a1272c94b4              # double 4.6451460000000004
	.quad	0x401da37824d4cb9f              # double 7.4096380000000002
	.quad	0x4023b3affb04ee7c              # double 9.8509519999999994
	.quad	0x401b165bea0ba1f5              # double 6.7718350000000003
	.quad	0x4005398fa376922e              # double 2.6531060000000002
	.quad	0x3fe0c4eb56fb8f58              # double 0.524038
	.quad	0x4005e647778dd617              # double 2.737441
	.quad	0x4021904fd2a62aa2              # double 8.7818590000000007
	.quad	0x40142b167ec7863c              # double 5.0420780000000001
	.quad	0x4008649d388a8b09              # double 3.0491280000000001
	.quad	0x401ec5857afea3df              # double 7.6928919999999996
	.quad	0x400e6c82e019b0ab              # double 3.8029839999999999
	.quad	0x4019d958d9b5e95b              # double 6.4622529999999996
	.quad	0x40173b1960fa15db              # double 5.8077139999999998
	.quad	0x400f39ddc1e7967d              # double 3.9032550000000001
	.quad	0x4010d9e6eeb70260              # double 4.2127949999999998
	.quad	0x4003146fdeb52c9d              # double 2.384979
	.quad	0x40230f589efd86a9              # double 9.529973
	.quad	0x4020640053e2d624              # double 8.1953150000000007
	.quad	0x402123b83cf2cf96              # double 8.5697650000000003
	.quad	0x4012237e2c55c960              # double 4.5346609999999998
	.quad	0x4006511947cfa26a              # double 2.7895989999999999
	.quad	0x401911fea8112ba1              # double 6.2675729999999996
	.quad	0x40202daee631f8a1              # double 8.0892250000000008
	.quad	0x401f61016ce789e7              # double 7.8447319999999995
	.quad	0x400d2f8ceb356da0              # double 3.648218
	.quad	0x402204a85caafbc2              # double 9.0090970000000006
	.quad	0x4020074bc6a7ef9e              # double 8.0142500000000005
	.quad	0x3fd6a52ac753e708              # double 0.35383100000000001
	.quad	0x402329f255f3519c              # double 9.5819270000000003
	.quad	0x40056941c8216c61              # double 2.6763949999999999
	.quad	0x3ff64a4f440af1cc              # double 1.3931420000000001
	.quad	0x40231579d0a67621              # double 9.5419450000000001
	.quad	0x3ff9835efa615a8e              # double 1.594573
	.quad	0x401c9ca7d6733ebc              # double 7.152984
	.quad	0x3ff007f349385836              # double 1.001941
	.quad	0x40015c60029f16b1              # double 2.170105
	.quad	0x400efd1676640a6c              # double 3.8735780000000002
	.quad	0x40217180b242070c              # double 8.7216850000000007
	.quad	0x4013f9f0e4da09cc              # double 4.9940829999999998
	.quad	0x3fe85525cc426352              # double 0.76039400000000001
	.quad	0x400404944ed6fda8              # double 2.5022359999999999
	.quad	0x3fe5bc48f10a99b7              # double 0.679234
	.quad	0x4020e4e3369b9d80              # double 8.4470460000000003
	.quad	0x401f8f893faf4278              # double 7.8901719999999997
	.quad	0x402090d23d4f15e8              # double 8.2828540000000004
	.quad	0x4006944567125dd1              # double 2.8223980000000002
	.quad	0x401c73f316e37154              # double 7.113232
	.quad	0x3ff2812be48a58b4              # double 1.156536
	.quad	0x401e239fba450acc              # double 7.534789
	.quad	0x402199904b3c3e75              # double 8.7999290000000006
	.quad	0x4023a1a36e2eb1c4              # double 9.8156999999999996
	.quad	0x40008157689ca18c              # double 2.0631550000000001
	.quad	0x4017e677b395c422              # double 5.975066
	.quad	0x4023a932d6ece13f              # double 9.8304659999999994
	.quad	0x4020983d35eb7458              # double 8.2973420000000004
	.quad	0x4014b5ec3dab5c3a              # double 5.1776590000000002
	.quad	0x4019f628027d88c2              # double 6.4903870000000001
	.quad	0x4020c2efd438d1d9              # double 8.3807360000000006
	.quad	0x4016523dd54da4cf              # double 5.5803140000000004
	.quad	0x4005e96e58a32f45              # double 2.7389800000000002
	.quad	0x3fe6f9830e3cd9a5              # double 0.71795799999999999
	.quad	0x401d2f355cd91eeb              # double 7.2961020000000003
	.quad	0x4021e451116a8b8f              # double 8.9459309999999999
	.quad	0x40220b17ce52deca              # double 9.0216659999999997
	.quad	0x400733fc86cebbba              # double 2.9003839999999999
	.quad	0x3ff35935fc3b4f61              # double 1.2092799999999999
	.quad	0x400aa9fe86833c60              # double 3.333005
	.quad	0x3ffbc74213a0c6b5              # double 1.7361470000000001
	.quad	0x3ffe95011904b3c4              # double 1.911378
	.quad	0x401d93c536d655e3              # double 7.3943070000000004
	.quad	0x4010950df15a4acf              # double 4.1455609999999998
	.quad	0x4023dcc6822ff089              # double 9.9312020000000007
	.quad	0x4017e72324c83665              # double 5.9757199999999999
	.quad	0x3fec24e7ab756430              # double 0.87950499999999998
	.quad	0x3fdc6e3b46fdeb53              # double 0.44422800000000001
	.quad	0x4004e1094a2b9d3d              # double 2.6098810000000001
	.quad	0x40211a50f840181e              # double 8.551399
	.quad	0x3ff91e353f7ced91              # double 1.5698749999999999
	.quad	0x40059f316e371540              # double 2.702731
	.quad	0x40140333fc86cebc              # double 5.0031280000000002
	.quad	0x402055e4c51116a9              # double 8.1677610000000005
	.quad	0x400528b97785729b              # double 2.6448849999999999
	.quad	0x401f0ed8904f6dfc              # double 7.7644979999999997
	.quad	0x4020a7d73c925786              # double 8.327814
	.quad	0x402205171e29b6b3              # double 9.0099420000000006
	.quad	0x4023a26698bb4d49              # double 9.8171890000000008
	.quad	0x4022f3cec84f8f8a              # double 9.4761869999999995
	.quad	0x3fc1b5525cc42635              # double 0.138346
	.quad	0x40140413122b7baf              # double 5.0039790000000002
	.quad	0x4018424aada33bda              # double 6.0647380000000002
	.quad	0x40190f0c77dd872f              # double 6.2646959999999998
	.quad	0x3f9596c82e019b0b              # double 0.021083000000000001
	.quad	0x400ae8cef672b884              # double 3.3636759999999999
	.quad	0x3ffa1c93ea2d2fe4              # double 1.631977
	.quad	0x401f8e3ffef39086              # double 7.888916
	.quad	0x401446cbd987c632              # double 5.0691369999999996
	.quad	0x4009f8359bc33f85              # double 3.2461959999999999
	.quad	0x4011eb14ec204f2b              # double 4.4795720000000001
	.quad	0x401e58a2ec28b2a7              # double 7.5865590000000002
	.quad	0x401ee550870110a1              # double 7.7239399999999998
	.quad	0x4013b885d31337eb              # double 4.9301979999999999
	.quad	0x4015a8359bc33f85              # double 5.4142669999999997
	.quad	0x4005b3ade225fa66              # double 2.7127340000000002
	.quad	0x4020e814f8b588e3              # double 8.4532849999999993
	.quad	0x401367e3d1cc100e              # double 4.8514549999999996
	.quad	0x400756c8b4395810              # double 2.9173749999999998
	.quad	0x401920b49e01de27              # double 6.2819390000000004
	.quad	0x401e5f6dfc5cdd51              # double 7.5931930000000003
	.quad	0x3ff48fdc1615ebfb              # double 1.2851220000000001
	.quad	0x4004d8feef5ec80c              # double 2.6059549999999998
	.quad	0x40231e4840e1719f              # double 9.5591449999999991
	.quad	0x400820b8066c2acc              # double 3.0159760000000002
	.quad	0x40177238da3c2118              # double 5.8615449999999996
	.quad	0x3ffc36a400fba882              # double 1.7633399999999999
	.quad	0x40156301a79fec9a              # double 5.346686
	.quad	0x40213e3f78bbd380              # double 8.6215779999999995
	.quad	0x4013ca19008205ff              # double 4.9473609999999999
	.quad	0x4015c2cadddf43c8              # double 5.4402270000000001
	.quad	0x3fd596a6a012599f              # double 0.33732000000000001
	.quad	0x3ffc991ab8e8ea3a              # double 1.7873790000000001
	.quad	0x4017444178705426              # double 5.816656
	.quad	0x3ff4b776c4827b70              # double 1.294791
	.quad	0x401c36759ab6d00b              # double 7.0531829999999998
	.quad	0x4015175c4a83b1d1              # double 5.2728130000000002
	.quad	0x3ffc337867f0aa22              # double 1.7625660000000001
	.quad	0x400f12f449129889              # double 3.884255
	.quad	0x4003174a3400b88d              # double 2.3863720000000002
	.quad	0x40208107d912556d              # double 8.2520129999999998
	.quad	0x3ff3b4ca0c282c6f              # double 1.231638
	.quad	0x401c2bba55d1c3ad              # double 7.0427030000000004
	.quad	0x4011cbf7f06705c9              # double 4.4491880000000004
	.quad	0x3faf214f0520d131              # double 0.060801000000000001
	.quad	0x4000b34b51372a39              # double 2.0875460000000001
	.quad	0x3ffed0bd87b56b87              # double 1.925962
	.quad	0x3fc8f25a250f8402              # double 0.19489600000000001
	.quad	0x40210a23bff8a8f4              # double 8.5198040000000005
	.quad	0x4010e3e0bd44998d              # double 4.222537
	.quad	0x3ff0207f66e86c66              # double 1.0079340000000001
	.quad	0x40116c92146a1a50              # double 4.356026
	.quad	0x40068dfe75bc44bf              # double 2.8193329999999999
	.quad	0x4012f05ab3aabcd8              # double 4.7347210000000004
	.quad	0x4020d8027d88c1db              # double 8.421894
	.quad	0x402093d5347a5b10              # double 8.2887360000000001
	.quad	0x400bf43393ab430f              # double 3.4942389999999999
	.quad	0x4008392e1ef73c0c              # double 3.0279199999999999
	.quad	0x4015d024b33daf8e              # double 5.453265
	.quad	0x4016073647baa9b5              # double 5.5070430000000004
	.quad	0x4017a12839042d8c              # double 5.9073799999999999
	.quad	0x3fed828a1dfb938a              # double 0.92218500000000003
	.quad	0x3ff145b291b823c8              # double 1.0795159999999999
	.quad	0x400be7db2b346131              # double 3.4882110000000002
	.quad	0x401800270f388228              # double 6.0001490000000004
	.quad	0x40138e3da2f8bdec              # double 4.8889069999999997
	.quad	0x4022fa9cdc443915              # double 9.489478
	.quad	0x40136bf6a0dbad3a              # double 4.8554329999999997
	.quad	0x400492b90a782907              # double 2.5716420000000002
	.quad	0x4009b4dbdf8f4730              # double 3.2133099999999999
	.quad	0x401a6eb0318b9347              # double 6.6080940000000004
	.quad	0x402082a5614df8b1              # double 8.2551679999999994
	.quad	0x40209025bfad2999              # double 8.2815379999999994
	.quad	0x401be530ced4e4c9              # double 6.9738189999999998
	.quad	0x3fed2f5126634118              # double 0.912026
	.quad	0x4017e11233df2a9d              # double 5.9697959999999997
	.quad	0x401e47b7c7820a31              # double 7.5700370000000001
	.quad	0x40237e0f1b25f634              # double 9.7462090000000003
	.quad	0x4015e5d0fa58f712              # double 5.4744299999999999
	.quad	0x3ff113bf2f555821              # double 1.067321
	.quad	0x4016561e92923e5c              # double 5.5841010000000004
	.quad	0x3ff397d5a9eb2075              # double 1.224569
	.quad	0x3fd21c10d7be9857              # double 0.28296300000000002
	.quad	0x4017d0ce4ead0c3d              # double 5.9539119999999999
	.quad	0x40162cea28fe260b              # double 5.5438619999999998
	.quad	0x40083c3265add9c2              # double 3.0293929999999998
	.quad	0x400b29e01de26916              # double 3.3954469999999999
	.quad	0x3fc8c8366516db0e              # double 0.19361
	.quad	0x402352157689ca19              # double 9.6603200000000004
	.quad	0x4015772c0e7bc3c6              # double 5.3663790000000002
	.quad	0x401b24c7b02d59d5              # double 6.7859179999999997
	.quad	0x3ffe01205bc01a37              # double 1.875275
	.quad	0x4023d113a4f8726d              # double 9.9083529999999999
	.quad	0x40141c0f88333fc8              # double 5.0274029999999996
	.quad	0x4017eec4e7253da7              # double 5.9831729999999999
	.quad	0x400e7f43419e3001              # double 3.8121399999999999
	.quad	0x4010907d0aed99cc              # double 4.1411020000000001
	.quad	0x3ffa51a005c4651f              # double 1.6449279999999999
	.quad	0x3fd4790fb65668c2              # double 0.31988899999999998
	.quad	0x4023932dd377e1b9              # double 9.7874590000000001
	.quad	0x3ffa7ebf22c01e69              # double 1.6559440000000001
	.quad	0x4018f3ec460ed80a              # double 6.2382059999999999
	.quad	0x3ff1675cd0bb6ed6              # double 1.0877349999999999
	.quad	0x4005d621fafc8b00              # double 2.7295569999999998
	.quad	0x3ff9a5c0b9991362              # double 1.602967
	.quad	0x40102db61bb05faf              # double 4.0446400000000002
	.quad	0x400d42d6a9c560c8              # double 3.6576360000000001
	.quad	0x4006c534bd76ee74              # double 2.846292
	.quad	0x4001fe0157eed45f              # double 2.2490260000000002
	.quad	0x4018882730c67169              # double 6.132962
	.quad	0x402034057082491b              # double 8.101604
	.quad	0x401faf4e0114d2f6              # double 7.9211960000000001
	.quad	0x4018419439de481f              # double 6.0640419999999997
	.quad	0x40208cf3775b8130              # double 8.2752949999999998
	.quad	0x40143431bde82d7b              # double 5.0509709999999997
	.quad	0x3fe88a5ce5b4245f              # double 0.76688999999999996
	.quad	0x40093b9c7368ad69              # double 3.1541070000000002
	.quad	0x3fa330941c8216c6              # double 0.037479999999999999
	.quad	0x4023757689ca18bd              # double 9.7294199999999992
	.quad	0x400e03a6ce358299              # double 3.7517830000000001
	.quad	0x3ffc4724b76f6d76              # double 1.767369
	.quad	0x401f4d84901d1915              # double 7.8257009999999995
	.quad	0x4013d96fa82e87d3              # double 4.9623400000000002
	.quad	0x400566ed245b291c              # double 2.6752570000000002
	.quad	0x3ffb496bb98c7e28              # double 1.705425
	.quad	0x4005d6177ea1c68f              # double 2.7295370000000001
	.quad	0x401cc5e2046c764b              # double 7.1932450000000001
	.quad	0x4022263022dd7a9a              # double 9.074586
	.quad	0x4019c426fe718a87              # double 6.4415550000000001
	.quad	0x3ff05abd1aa821f3              # double 1.0221530000000001
	.quad	0x40146505d0fa58f7              # double 5.0986549999999999
	.quad	0x3fe5d9dfdac68a93              # double 0.68284599999999995
	.quad	0x40103a4ca4f440af              # double 4.0569329999999999
	.quad	0x4021160b4e11dbcb              # double 8.5430550000000007
	.quad	0x4007a17225b749ae              # double 2.9538310000000001
	.quad	0x4007b707182235b5              # double 2.964369
	.quad	0x3fc24430b178b370              # double 0.142706
	.quad	0x401fdf71eafee6fb              # double 7.9682079999999997
	.quad	0x4013ff9fcb0c026d              # double 4.9996330000000002
	.quad	0x401d95b1c8648840              # double 7.3961860000000001
	.quad	0x400ec9fb6134ce3e              # double 3.848624
	.quad	0x3ffbdc63ae2541d9              # double 1.741306
	.quad	0x4002b0318b934699              # double 2.3360319999999999
	.quad	0x3ff68a59c065b63d              # double 1.4087769999999999
	.quad	0x3f9f90539fba450b              # double 0.030824000000000001
	.quad	0x400bc8db0574b407              # double 3.473074
	.quad	0x40213fbefd00713f              # double 8.6245039999999999
	.quad	0x3fec06e9ff0cbaf9              # double 0.87584399999999996
	.quad	0x402034da6e75ff61              # double 8.1032290000000007
	.quad	0x40232b74ff865d7d              # double 9.5848770000000005
	.quad	0x3ff03343fa2ad3e9              # double 1.012516
	.quad	0x401ca15e39713ad6              # double 7.1575860000000002
	.quad	0x401c13cc8de2ac32              # double 7.0193349999999999
	.quad	0x400324c48adeebb3              # double 2.3929529999999999
	.quad	0x4012e19c17225b75              # double 4.7203220000000004
	.quad	0x401eb7e6b3fe9fae              # double 7.6795910000000003
	.quad	0x4015cf9fcb0c026d              # double 5.4527580000000002
	.quad	0x401337ccc0379314              # double 4.8044919999999998
	.quad	0x40212b0a4e379b78              # double 8.5840630000000004
	.quad	0x401e0c8bc9cd3e0c              # double 7.5122520000000002
	.quad	0x402307705857afea              # double 9.5145289999999996
	.quad	0x3ffa73743632c1f4              # double 1.653187
	.quad	0x4013d280f12c27a6              # double 4.9555699999999998
	.quad	0x400d8b0d9513f8db              # double 3.6928969999999999
	.quad	0x401b90f94c87980f              # double 6.8915759999999997
	.quad	0x40234f1b47842310              # double 9.6545050000000003
	.quad	0x401664628027d88c              # double 5.5980319999999999
	.quad	0x3ffa5cde5d18090b              # double 1.6476729999999999
	.quad	0x4019fdb2b346130a              # double 6.4977520000000002
	.quad	0x3fe5c8f10a99b6f6              # double 0.68077900000000002
	.quad	0x3fef7c30d306a2b1              # double 0.98390999999999995
	.quad	0x3ffb31d606317269              # double 1.699667
	.quad	0x3f752f3c2dadb835              # double 0.0051720000000000004
	.quad	0x40172e3b03e20cd0              # double 5.795147
	.quad	0x4012ff4623d0bfa1              # double 4.7492910000000004
	.quad	0x3ffe2e514c22ee42              # double 1.8863080000000001
	.quad	0x401d768661ae70c1              # double 7.3657469999999998
	.quad	0x40130937d1fe64f5              # double 4.7590019999999997
	.quad	0x400e1c0096feb4a6              # double 3.7636729999999998
	.quad	0x4010aac81d3aa36a              # double 4.166779
	.quad	0x401ff43cc07aaef3              # double 7.9885130000000001
	.quad	0x4021a64b662fdfc2              # double 8.8247940000000007
	.quad	0x400b50196d8f4f94              # double 3.4141110000000001
	.quad	0x401660c88a47ecff              # double 5.5945150000000003
	.quad	0x3fd3c4545846e8f3              # double 0.30885800000000002
	.quad	0x4012ca0cf1800a7c              # double 4.6973149999999997
	.quad	0x4011e0639d5e4a38              # double 4.4691299999999998
	.quad	0x40234a8cbd1244a6              # double 9.6456049999999998
	.quad	0x4021d0d3ae685db7              # double 8.9078649999999993
	.quad	0x4023bf162ae4b018              # double 9.8732159999999993
	.quad	0x4022afae9ab29e4d              # double 9.3431289999999994
	.quad	0x3ff1334d6a161e4f              # double 1.0750249999999999
	.quad	0x3fdb834d26fa3fcd              # double 0.42988900000000002
	.quad	0x3feaaa497fa5d28d              # double 0.833287
	.quad	0x40191f0c77dd872f              # double 6.2803209999999998
	.quad	0x3ffe78c5436b8f9b              # double 1.904485
	.quad	0x401941dfb9389b52              # double 6.31433
	.quad	0x4021f80b673c4f3c              # double 8.9844620000000006
	.quad	0x4003241aac53b081              # double 2.3926289999999999
	.quad	0x4021535c39bcba30              # double 8.6628129999999999
	.quad	0x3fde8eb463497b74              # double 0.47746
	.quad	0x4013bf72b4528284              # double 4.9369610000000002
	.quad	0x401cef1b25f633ce              # double 7.2335019999999997
	.quad	0x401885b1422ccb3a              # double 6.1305589999999999
	.quad	0x401a1fab53d640ea              # double 6.5309270000000001
	.quad	0x4017413b9f127f5f              # double 5.8137040000000004
	.quad	0x40154dfc19c17226              # double 5.3261570000000003
	.quad	0x3fd2252ce032db1f              # double 0.28351900000000002
	.quad	0x4007dd32c625e99f              # double 2.9830070000000002
	.quad	0x3fdecf4e874c8ffc              # double 0.48140300000000003
	.quad	0x4013a9b951c5c572              # double 4.9157460000000004
	.quad	0x4021da8a6117720d              # double 8.9268370000000008
	.quad	0x400c76238da3c212              # double 3.5576850000000002
	.quad	0x4014d6a619da9c99              # double 5.2096179999999999
	.quad	0x3ffe08b97785729b              # double 1.87713
	.quad	0x3ff946317268d328              # double 1.579637
	.quad	0x40001d5cb790fb65              # double 2.0143369999999998
	.quad	0x40005f04ddb5525d              # double 2.0463960000000001
	.quad	0x4019b70b06c43f60              # double 6.4287530000000004
	.quad	0x402231f94855da27              # double 9.0976049999999997
	.quad	0x40204f98d8a979e1              # double 8.1554629999999992
	.quad	0x3fe2926e978d4fdf              # double 0.58037499999999997
	.quad	0x3fe347d3d4280ae1              # double 0.602518
	.quad	0x4002334267839cd8              # double 2.275029
	.quad	0x3fc1e81450efdc9c              # double 0.13989499999999999
	.quad	0x401f02fad6cb5350              # double 7.75291
	.quad	0x40149456f75d9a0f              # double 5.144863
	.quad	0x40180103c8e25c81              # double 6.000991
	.quad	0x400527620ee8d10f              # double 2.6442299999999999
	.quad	0x401634da09cc319c              # double 5.5516129999999997
	.quad	0x401b71b97353b4b3              # double 6.861059
	.quad	0x3fdbbf5d78811b1e              # double 0.43355500000000002
	.quad	0x3fc996744b2b777d              # double 0.199904
	.quad	0x401274317acc4ef9              # double 4.6134700000000004
	.quad	0x40138feb074a771d              # double 4.8905450000000004
	.quad	0x40218ff51efb6dca              # double 8.7811669999999999
	.quad	0x3ff68685553ef6b6              # double 1.407842
	.quad	0x3ff47d77fae3608d              # double 1.280632
	.quad	0x40144cefaa4766c7              # double 5.0751330000000001
	.quad	0x401d6d87f88765ba              # double 7.3569639999999996
	.quad	0x4003673b42cc2d6b              # double 2.4254060000000002
	.quad	0x401aa06c00da1a93              # double 6.6566619999999999
	.quad	0x4023da47021d10b2              # double 9.926323
	.quad	0x401d7d66adb402d1              # double 7.3724619999999996
	.quad	0x40118df86e3b46fe              # double 4.3886430000000001
	.quad	0x400130aa21a719b5              # double 2.1487620000000001
	.quad	0x4010462281344806              # double 4.0684909999999999
	.quad	0x401fb2fd32c625ea              # double 7.9247940000000003
	.quad	0x4015dab25b317efe              # double 5.463571
	.quad	0x4016ff316e371540              # double 5.749212
	.quad	0x401766fac6045baf              # double 5.8505659999999997
	.quad	0x40199a6a875d56f3              # double 6.4007969999999998
	.quad	0x40218ad9ad85dfa8              # double 8.7711919999999992
	.quad	0x400c54784230fcf8              # double 3.541245
	.quad	0x401919ec7000431c              # double 6.2753160000000001
	.quad	0x4023ad2ae8e1d649              # double 9.8382179999999994
	.quad	0x40185c3c18b502ac              # double 6.0900730000000003
	.quad	0x401773c64345cfee              # double 5.8630610000000001
	.quad	0x4009d46d3f9e7b81              # double 3.2287240000000001
	.quad	0x4003478c0053e2d6              # double 2.4099349999999999
	.quad	0x3fab7c5692b3cc4b              # double 0.053683000000000002
	.quad	0x40195471715c63ae              # double 6.3324639999999999
	.quad	0x40063ba237cdcca7              # double 2.779118
	.quad	0x4002b82dbe7f2c30              # double 2.339931
	.quad	0x4020880d801b4352              # double 8.2657279999999993
	.quad	0x401f8988d2a1f8e4              # double 7.8843110000000003
	.quad	0x3ff0c794ea077037              # double 1.048726
	.quad	0x3ffca647fdc5931d              # double 1.7905960000000001
	.quad	0x40205f0c1333b96b              # double 8.1856390000000001
	.quad	0x401e17f27fe4bcae              # double 7.5233860000000004
	.quad	0x40051d4bf0995aaf              # double 2.6393049999999998
	.quad	0x3ffbc50acc0bdcad              # double 1.735606
	.quad	0x3fff37a2cecc814d              # double 1.9510829999999999
	.quad	0x40078763a1900820              # double 2.9411079999999998
	.quad	0x400a53faf42784a9              # double 3.2910059999999999
	.quad	0x4010fbda0dfdef85              # double 4.2459490000000004
	.quad	0x401e756473471f79              # double 7.6146409999999997
	.quad	0x4021e4bcf0b6b6e1              # double 8.9467540000000003
	.quad	0x400ad8012dfd694d              # double 3.3554710000000001
	.quad	0x402135ecc3e3193f              # double 8.6053219999999992
	.quad	0x3ff79fd47bedb728              # double 1.476521
	.quad	0x4004a26dce39b457              # double 2.5793110000000001
	.quad	0x401919884c6a3bde              # double 6.274934
	.quad	0x402036d7625204b0              # double 8.1071120000000008
	.quad	0x401d8f2e48e8a71e              # double 7.3898250000000001
	.quad	0x4022d5eb313be22e              # double 9.4178099999999993
	.quad	0x4009b082491afc05              # double 3.2111860000000001
	.quad	0x401359e55c0fcb4f              # double 4.8377889999999999
	.quad	0x4022b9fcf3dc054f              # double 9.363258
	.quad	0x401d578290689870              # double 7.3354590000000002
	.quad	0x4022ab10342aa9f8              # double 9.3341080000000005
	.quad	0x3fe8bd96638433d7              # double 0.77314300000000002
	.quad	0x402253e3193f6c27              # double 9.1638420000000007
	.quad	0x4021017bd8be7297              # double 8.5028980000000001
	.quad	0x40216bc8c0ce91c9              # double 8.7105160000000001
	.quad	0x4023eb1cc9646280              # double 9.9592039999999997
	.quad	0x402356f2c7325919              # double 9.6698210000000006
	.quad	0x40059adc0980b242              # double 2.700615
	.quad	0x40214983947496ab              # double 8.6435820000000003
	.quad	0x40225571f36262cc              # double 9.1668850000000006
	.quad	0x402108870110a138              # double 8.5166550000000001
	.quad	0x401e9df090f733a9              # double 7.6542380000000003
	.quad	0x40142aafbc1acde2              # double 5.0416860000000003
	.quad	0x4021320685553ef7              # double 8.5977060000000005
	.quad	0x3f7a30984e3ffef4              # double 0.0063940000000000004
	.quad	0x3ffcdd9c27e95315              # double 1.8041039999999999
	.quad	0x401be43d89ce4a7b              # double 6.9728909999999997
	.quad	0x400708fe260b2c84              # double 2.879391
	.quad	0x40155cbc05d52c17              # double 5.3405610000000001
	.quad	0x401d4bcc2938de6e              # double 7.3240210000000001
	.quad	0x4007dd50225742dd              # double 2.983063
	.quad	0x4014e415b1422ccb              # double 5.2227389999999998
	.quad	0x4020b8010c6f7a0b              # double 8.3593829999999993
	.quad	0x3ffaf5a31a4bdba1              # double 1.6849700000000001
	.quad	0x40047b1c0010c6f8              # double 2.5601120000000002
	.quad	0x4010ffb480a5accd              # double 4.2497119999999997
	.quad	0x401021d81f106680              # double 4.0330510000000004
	.quad	0x40208b441bb8c32b              # double 8.2720040000000008
	.quad	0x3fce5614df8b1572              # double 0.23700199999999999
	.quad	0x4001a3c74fb549f9              # double 2.2049699999999999
	.quad	0x4001f65881a15550              # double 2.2452860000000001
	.quad	0x4017244d013a92a3              # double 5.78545
	.quad	0x4018df3ba775fb2f              # double 6.2180010000000001
	.quad	0x4019819d2391d580              # double 6.376576
	.quad	0x401366db50f40e5a              # double 4.8504459999999998
	.quad	0x3ffb50b524399b2c              # double 1.7072039999999999
	.quad	0x4004f0fe8ab4fa48              # double 2.6176729999999999
	.quad	0x4022b69a6f826edb              # double 9.3566470000000006
	.quad	0x4018c70c996b7671              # double 6.1943840000000003
	.quad	0x4019a6d86ec17ebb              # double 6.4129350000000001
	.quad	0x3ffca72ead9274e2              # double 1.790816
	.quad	0x402161de05037500              # double 8.6911470000000008
	.quad	0x3fcadf3f961804da              # double 0.20993800000000001
	.quad	0x402226e49f51697f              # double 9.0759629999999998
	.quad	0x3ffe2f038e29f9cf              # double 1.8864780000000001
	.quad	0x4023d1a77e5eaab0              # double 9.9094809999999995
	.quad	0x4002a122749f0e4e              # double 2.3286790000000002
	.quad	0x401954467381d7dc              # double 6.3323
	.quad	0x4012a44567125dd1              # double 4.6604210000000004
	.quad	0x40170e618ce2d1f2              # double 5.7640440000000002
	.quad	0x4003f3f5b5fa2270              # double 2.4941209999999998
	.quad	0x3fce5004fb1183b6              # double 0.236817
	.quad	0x401c5b5d031055b9              # double 7.0892220000000004
	.quad	0x4011441b75a74c0a              # double 4.3165110000000002
	.quad	0x401e6ba775fb2ee0              # double 7.6051310000000001
	.quad	0x400f8a4a8c154c98              # double 3.9425249999999998
	.quad	0x401d14fa8b4bf8fd              # double 7.2704870000000001
	.quad	0x3ffae68e3ef28416              # double 1.6812879999999999
	.quad	0x4014c2d948dc11e4              # double 5.1902819999999998
	.quad	0x401ebbdc26dce39b              # double 7.6834569999999997
	.quad	0x4016682235b4edb3              # double 5.601693
	.quad	0x40183a2a90cd423e              # double 6.0568030000000004
	.quad	0x400f9c31593e5fb7              # double 3.9512659999999999
	.quad	0x4015b798958d9b5f              # double 5.4292930000000004
	.quad	0x401aee37585be1a8              # double 6.7326329999999999
	.quad	0x4023fb823c85c24c              # double 9.9912279999999995
	.quad	0x3ff99db877ab3248              # double 1.6010059999999999
	.quad	0x3ffab8583621fafd              # double 1.6700060000000001
	.quad	0x400bc0f88333fc87              # double 3.4692240000000001
	.quad	0x40125f37fbefd007              # double 4.5929869999999999
	.quad	0x3fa74adbc664d3bf              # double 0.045492999999999999
	.quad	0x400454927913e814              # double 2.5412949999999999
	.quad	0x40101ca70d1fa333              # double 4.0279809999999996
	.quad	0x40228f1eafee6fb5              # double 9.2795310000000004
	.quad	0x40182fee2c98e53f              # double 6.0468070000000003
	.quad	0x400d368f8e7ddca5              # double 3.6516410000000001
	.quad	0x3ff2ba3a8e71476b              # double 1.170466
	.quad	0x4003beee52589268              # double 2.4682279999999999
	.quad	0x401097c6759ab6d0              # double 4.148218
	.quad	0x3ffd45260f5e41d5              # double 1.8293820000000001
	.quad	0x400aea161e4f7660              # double 3.3643000000000001
	.quad	0x3ff39d0d8cb07d0b              # double 1.225843
	.quad	0x401b78c436fc1590              # double 6.8679360000000003
	.quad	0x40191f89c5e6ff7e              # double 6.280799
	.quad	0x3ff62da33bd9cae2              # double 1.386142
	.quad	0x402036086bdf4c2b              # double 8.1055329999999994
	.quad	0x40210e2c343b70ef              # double 8.5276809999999994
	.quad	0x402084c985f06f69              # double 8.2593499999999995
	.quad	0x3fe94ef672b88440              # double 0.79088899999999995
	.quad	0x4018268123810e88              # double 6.0376019999999997
	.quad	0x4023bf525460aa65              # double 9.8736750000000004
	.quad	0x4000d851eb851eb8              # double 2.1056249999999999
	.quad	0x3fed0800eae18aca              # double 0.90722700000000001
	.quad	0x4021ce113404ea4b              # double 8.9024750000000008
	.quad	0x4023dfee4e26d480              # double 9.9373649999999998
	.quad	0x3fea14013ec460ee              # double 0.81494200000000006
	.quad	0x4005e6d938151a43              # double 2.7377189999999998
	.quad	0x3fe6859641f64495              # double 0.70380699999999996
	.quad	0x4003141205bc01a3              # double 2.3847999999999998
	.quad	0x401f87caa7589efe              # double 7.8826090000000004
	.quad	0x401edc4588a04d12              # double 7.715109
	.quad	0x4015e50df15a4acf              # double 5.4736859999999998
	.quad	0x4023101adea89763              # double 9.5314549999999993
	.quad	0x40201d80a17b0f6b              # double 8.0576220000000003
	.quad	0x401a7d4a1ad6451c              # double 6.6223530000000004
	.quad	0x40239cf9e3864cb6              # double 9.8065940000000005
	.quad	0x4020be0d66f0cfe1              # double 8.3711959999999994
	.quad	0x400398b3f63c31df              # double 2.4495619999999998
	.quad	0x4020624873365882              # double 8.1919590000000007
	.quad	0x40150b4bb5e0f7fd              # double 5.261031
	.quad	0x40204ebf22c01e69              # double 8.1538020000000007
	.quad	0x40043db1209edbf9              # double 2.5301230000000001
	.quad	0x401c0c297bfa4c62              # double 7.0118770000000001
	.quad	0x3ffca2a0a958537e              # double 1.789704
	.quad	0x3fe53882278d0cc3              # double 0.66314799999999996
	.quad	0x401d1b8e8ea39c52              # double 7.2769110000000001
	.quad	0x4013eb6134ce3de6              # double 4.9798629999999999
	.quad	0x402118cb07d0aeda              # double 8.5484240000000007
	.quad	0x40132d35eb7457c1              # double 4.7941510000000003
	.quad	0x3ffde523704790b8              # double 1.8684419999999999
	.quad	0x3ff0ab11c6d1e109              # double 1.0417650000000001
	.quad	0x4005b00713f077cd              # double 2.7109510000000001
	.quad	0x3ffe9240746455eb              # double 1.910706
	.quad	0x3ff691f4f50a02b8              # double 1.4106339999999999
	.quad	0x40089c65c70435f0              # double 3.0763660000000002
	.quad	0x400d4174c4cdfaca              # double 3.6569609999999999
	.quad	0x3fd67fc7607c419a              # double 0.351549
	.quad	0x40066f0c77dd872f              # double 2.8042229999999999
	.quad	0x40222db749adc8fc              # double 9.0892890000000008
	.quad	0x401a582cf52b90a8              # double 6.5861090000000004
	.quad	0x4018ddba0a526959              # double 6.2165299999999997
	.quad	0x4012680841ede11a              # double 4.6015940000000004
	.quad	0x3fd52fd32c625e9a              # double 0.331044
	.quad	0x401b43d9231c64bb              # double 6.8162580000000004
	.quad	0x40220c0639d5e4a4              # double 9.0234850000000008
	.quad	0x3ff43927d45a5fc8              # double 1.263954
	.quad	0x4021d7944241c3f0              # double 8.9210530000000006
	.quad	0x3fdd5eaab042528b              # double 0.45890300000000001
	.quad	0x40221a90470a808d              # double 9.0518820000000009
	.quad	0x400b3a58f7121ab5              # double 3.4034900000000001
	.quad	0x40216a8bb0a2ca9b              # double 8.7080970000000004
	.quad	0x4023e2697aeddce8              # double 9.9422110000000003
	.quad	0x401158900c521dda              # double 4.336487
	.quad	0x4010b863beec397a              # double 4.1800680000000003
	.quad	0x40227a799a1fd157              # double 9.2392090000000007
	.quad	0x3ff4de40c8472c0e              # double 1.3042609999999999
	.quad	0x4002cc6ac215b9a6              # double 2.3498130000000002
	.quad	0x40215a49e44fa051              # double 8.6763449999999995
	.quad	0x400f638327674d16              # double 3.9235899999999999
	.quad	0x4011f9cb252ce033              # double 4.4939390000000001
	.quad	0x4020e29c12f09d8c              # double 8.4425969999999992
	.quad	0x401663ba3443d46b              # double 5.5973899999999999
	.quad	0x3fff3dae81882adc              # double 1.9525589999999999
	.quad	0x3ff3f4794ea07703              # double 1.2471859999999999
	.quad	0x401dbc1a47a9e2bd              # double 7.433694
	.quad	0x400ac2f512663411              # double 3.3451939999999998
	.quad	0x4020cc382a12f901              # double 8.3988659999999999
	.quad	0x4020aae4d1a65061              # double 8.3337769999999995
	.quad	0x4012e0a1be2b495a              # double 4.7193670000000001
	.quad	0x4016636ac647778e              # double 5.5970870000000001
	.quad	0x40124b6f9fcb0c02              # double 4.5736679999999996
	.quad	0x401ff6be37de939f              # double 7.9909600000000002
	.quad	0x40161176ddaceee1              # double 5.517055
	.quad	0x3fef78feef5ec80c              # double 0.98351999999999994
	.quad	0x4022f8e043a21640              # double 9.4860860000000002
	.quad	0x401f5804534bd76f              # double 7.835954
	.quad	0x4022c1b3d07c84b6              # double 9.3783250000000002
	.quad	0x401a2b62413db7f1              # double 6.5423669999999996
	.quad	0x40117ea465a57647              # double 4.3736740000000003
	.quad	0x4021c52eb5f5f0b3              # double 8.8851220000000009
	.quad	0x401f23a0407cc7d2              # double 7.7847910000000002
	.quad	0x400aa0945f9df549              # double 3.328408
	.quad	0x3ff19a5332acfb76              # double 1.100177
	.quad	0x4000157abb8800eb              # double 2.0104880000000001
	.quad	0x400f0d8dbcec84f9              # double 3.881618
	.quad	0x400490092ccf6be3              # double 2.5703299999999998
	.quad	0x4011beb6bf444e0e              # double 4.4362440000000003
	.quad	0x40212b43fa2ad3e9              # double 8.5845029999999998
	.quad	0x4018d7891e215337              # double 6.2104840000000001
	.quad	0x4016be8bc169c23b              # double 5.6860799999999996
	.quad	0x4022be523704790c              # double 9.3717210000000008
	.quad	0x4014585db76b3bb8              # double 5.0862949999999998
	.quad	0x401e797460242d06              # double 7.618608
	.quad	0x401faa643cc07aaf              # double 7.916398
	.quad	0x40179ab6d00b45ae              # double 5.9010879999999997
	.quad	0x4023034a01abd1ab              # double 9.5064240000000008
	.quad	0x40219aba16e7a312              # double 8.8022010000000002
	.quad	0x402228ed5f138bce              # double 9.079936
	.quad	0x40230ea50d6b228e              # double 9.5286030000000004
	.quad	0x401465d78811b1d9              # double 5.0994549999999998
	.quad	0x4023473300de4c51              # double 9.6390609999999998
	.quad	0x4022b9f0e4da09cc              # double 9.3631659999999996
	.quad	0x400c3903211cb03a              # double 3.527838
	.quad	0x4014c886162f166e              # double 5.195824
	.quad	0x4018cc11e42e1262              # double 6.199287
	.quad	0x40136306a2b17050              # double 4.846705
	.quad	0x4015aece9a2c6690              # double 5.4207099999999997
	.quad	0x400aada4484944ed              # double 3.3347859999999998
	.quad	0x401d47d1bb4916ca              # double 7.3201359999999998
	.quad	0x40139d31337eb28e              # double 4.9035080000000004
	.quad	0x401b2da661283904              # double 6.7945799999999998
	.quad	0x3fed02a9930be0df              # double 0.90657500000000002
	.quad	0x400aac67168f8e7e              # double 3.3341810000000001
	.quad	0x3fa5d1e53a81dc0e              # double 0.042617000000000002
	.quad	0x4020fa7c17a89332              # double 8.4892280000000007
	.quad	0x4020d7e414e7ee91              # double 8.4216619999999995
	.quad	0x401ceff08893b7d8              # double 7.2343159999999997
	.quad	0x40042f61672324c8              # double 2.5231349999999999
	.quad	0x401f01bc55864452              # double 7.7516949999999998
	.quad	0x4012614e7ee9142b              # double 4.5950259999999998
	.quad	0x402095debd9018e7              # double 8.2927149999999994
	.quad	0x400c374f722e1ac5              # double 3.5270069999999998
	.quad	0x3ffe99f4d37c1377              # double 1.912587
	.quad	0x3fed31960fa15db3              # double 0.91230299999999998
	.quad	0x40081df00abf76a3              # double 3.014618
	.quad	0x40221d21bc126a66              # double 9.0568980000000003
	.quad	0x40215544998d0460              # double 8.6665390000000002
	.quad	0x401e0c38b04ab607              # double 7.5119350000000002
	.quad	0x40131455a7d24181              # double 4.7698580000000002
	.quad	0x401ee92923e5b856              # double 7.7276959999999999
	.quad	0x40161d933e35c5b5              # double 5.5288820000000003
	.quad	0x40192c404a72ead9              # double 6.2932139999999999
	.quad	0x4004d7225b749add              # double 2.6050460000000002
	.quad	0x4012c6b76709fa55              # double 4.6940590000000002
	.quad	0x3ff72697aeddce7d              # double 1.446922
	.quad	0x40145c810a569b17              # double 5.0903359999999997
	.quad	0x4004a6a65cf67b1c              # double 2.581372
	.quad	0x40162137b07075b4              # double 5.5324390000000001
	.quad	0x3fe37bb0e5e67946              # double 0.60884899999999997
	.quad	0x400c148ba83f4eca              # double 3.5100319999999998
	.quad	0x4021efa7221858bc              # double 8.9680719999999993
	.quad	0x3fe71289dadfb507              # double 0.72101300000000001
	.quad	0x401470691ea78af4              # double 5.1097760000000001
	.quad	0x401ca5425f202108              # double 7.1613860000000003
	.quad	0x4011757bc7f77af6              # double 4.3647299999999998
	.quad	0x402180d4fdf3b646              # double 8.7516250000000007
	.quad	0x401411eb4202d9cf              # double 5.0174989999999999
	.quad	0x40210bb83cf2cf96              # double 8.5228900000000003
	.quad	0x3ffbff4fd6d7e88a              # double 1.7498320000000001
	.quad	0x400689b280f12c28              # double 2.8172350000000002
	.quad	0x4002b83f0bae89ec              # double 2.3399640000000002
	.quad	0x401c2653868fd19a              # double 7.0374280000000002
	.quad	0x3ff46e9ff0cbaf96              # double 1.2770079999999999
	.quad	0x3ffeca16a4873366              # double 1.9243380000000001
	.quad	0x4012a698fe69270b              # double 4.662693
	.quad	0x400ee963dc486ad3              # double 3.8639600000000001
	.quad	0x3ff489a9973d9ec7              # double 1.283609
	.quad	0x4019582adc4c9c91              # double 6.3361010000000002
	.quad	0x40024d013a92a305              # double 2.2875999999999999
	.quad	0x4021bfbb517a4617              # double 8.8744759999999996
	.quad	0x3ff2eda661283904              # double 1.18302
	.quad	0x3ff2c111ada76d98              # double 1.1721360000000001
	.quad	0x3fe095ce9e5e2479              # double 0.51828700000000005
	.quad	0x4012abb23571d1d4              # double 4.6676719999999996
	.quad	0x4013988a8b08dd1e              # double 4.8989659999999997
	.quad	0x3fe93b4916ca46e1              # double 0.78848700000000005
	.quad	0x40184f7985271bce              # double 6.0776120000000002
	.quad	0x40054ce67d77fae3              # double 2.6625489999999998
	.quad	0x40124215336deb96              # double 4.5645340000000001
	.quad	0x40079df090f733a9              # double 2.9521190000000002
	.quad	0x400950d0678c0054              # double 3.1644600000000001
	.quad	0x4020e9ad2135daad              # double 8.4563989999999993
	.quad	0x401b2b70ef566491              # double 6.7924230000000003
	.quad	0x3ffb8a265f0f5a10              # double 1.721228
	.quad	0x3fc86be7afa72218              # double 0.19079299999999999
	.quad	0x4023ead85dfa871a              # double 9.9586819999999996
	.quad	0x40171e0b4e11dbcb              # double 5.7793400000000004
	.quad	0x401ef2a80064a9ce              # double 7.7369690000000002
	.quad	0x400c0e536501e258              # double 3.5069949999999999
	.quad	0x40205da4484944ed              # double 8.1828939999999992
	.quad	0x3fdd7724fa8b4bf9              # double 0.460397
	.quad	0x4023ae2b6ae7d567              # double 9.8401750000000003
	.quad	0x40113da5119ce076              # double 4.3102
	.quad	0x4015a6b54e2b063e              # double 5.412801
	.quad	0x4003540c4156e265              # double 2.416039
	.quad	0x40045c2a02320968              # double 2.5450020000000002
	.quad	0x40082c2c5e2cdc01              # double 3.0215689999999999
	.quad	0x401c0e5de15ca6ca              # double 7.01403
	.quad	0x4006d5aea3161a1e              # double 2.8543370000000001
	.quad	0x3fe2b73d188f42ff              # double 0.58486800000000005
	.quad	0x4011fff47735c183              # double 4.4999560000000001
	.quad	0x401002467be553ac              # double 4.0022219999999997
	.quad	0x400f5944aa53fc01              # double 3.9185880000000002
	.quad	0x3ff5424e59296702              # double 1.3286880000000001
	.quad	0x3fec0e2c12ad81ae              # double 0.87673000000000001
	.quad	0x401f40029f16b11c              # double 7.8125099999999996
	.quad	0x4007d784ec636b09              # double 2.9802339999999998
	.quad	0x4020ea96b3354c12              # double 8.4581809999999997
	.quad	0x400bf1fddebd9019              # double 3.49316
	.quad	0x40005191dde37586              # double 2.0398290000000001
	.quad	0x3fe8a74e22a2c237              # double 0.77042299999999997
	.quad	0x40215e8b7e4de3b9              # double 8.6846580000000007
	.quad	0x40215d0e34762952              # double 8.6817489999999999
	.quad	0x3fd7c753e707e176              # double 0.37154100000000001
	.quad	0x400df3269df97aab              # double 3.7437260000000001
	.quad	0x3fff0856e696a26e              # double 1.9395359999999999
	.quad	0x402216672fba01ef              # double 9.0437560000000001
	.quad	0x401c19253543aeab              # double 7.0245559999999996
	.quad	0x401aadc4c9c90c4e              # double 6.6696960000000001
	.quad	0x40203bbafd976ff4              # double 8.1166610000000005
	.quad	0x40153666234a87e4              # double 5.3031240000000004
	.quad	0x401ab4523f67f4dc              # double 6.6760950000000001
	.quad	0x40167530ced4e4c9              # double 5.6144439999999998
	.quad	0x400f88869c66d374              # double 3.9416630000000001
	.quad	0x40212e6a55087011              # double 8.5906549999999999
	.quad	0x4008ba3875925354              # double 3.0909279999999999
	.quad	0x3ffe4cb7d41743e9              # double 1.8937299999999999
	.quad	0x3fcd3dfb0d51f81a              # double 0.22845399999999999
	.quad	0x3ff7f7154003254e              # double 1.4978229999999999
	.quad	0x401fda0ec7432010              # double 7.9629469999999998
	.quad	0x4021b3f8982cb210              # double 8.8515060000000005
	.quad	0x4001dec918e325d5              # double 2.2337820000000002
	.quad	0x3ffb768ad6883772              # double 1.7164410000000001
	.quad	0x401b08d21bc126a6              # double 6.7586139999999997
	.quad	0x4005c2c01e68a0d3              # double 2.7200929999999999
	.quad	0x4021d769014b599b              # double 8.9207230000000006
	.quad	0x4023fef0f16f4385              # double 9.9979320000000004
	.quad	0x3ff9657fb69984a1              # double 1.58728
	.quad	0x4013c13165d39970              # double 4.9386650000000003
	.quad	0x4003f3f8db489093              # double 2.4941270000000002
	.quad	0x3fe54afb3b752114              # double 0.66540299999999997
	.quad	0x40148c18f81e8a2f              # double 5.1368140000000002
	.quad	0x4017efa6defc7a3a              # double 5.9840350000000004
	.quad	0x401ca1919ac79703              # double 7.1577820000000001
	.quad	0x400cca7ac81d3aa3              # double 3.5988669999999998
	.quad	0x40005059ea57214f              # double 2.039234
	.quad	0x401f40fc2eba27af              # double 7.8134620000000003
	.quad	0x402133b7521144cc              # double 8.6010080000000002
	.quad	0x3fe175989df1172f              # double 0.54560500000000001
	.quad	0x401762de00d1b717              # double 5.8465499999999997
	.quad	0x4014651b0ccbc05d              # double 5.0987359999999997
	.quad	0x4021c28a6117720d              # double 8.8799620000000008
	.quad	0x401e67082491afc0              # double 7.6006169999999997
	.quad	0x3fc4371da37ef5a9              # double 0.15793199999999999
	.quad	0x4022cc6994185059              # double 9.3992430000000002
	.quad	0x400de4c2f837b4a2              # double 3.7366999999999999
	.quad	0x401f2610f0e90bc8              # double 7.7871740000000002
	.quad	0x4022758cf398e970              # double 9.2295909999999992
	.quad	0x4013ced8904f6dfc              # double 4.9519979999999997
	.quad	0x4022d1b499d0203e              # double 9.4095809999999993
	.quad	0x40024a32f4491299              # double 2.2862300000000002
	.quad	0x401613f316e37154              # double 5.519482
	.quad	0x4003d16c1e364bec              # double 2.4772569999999998
	.quad	0x400c36273929ed39              # double 3.5264419999999999
	.quad	0x4010d625204af923              # double 4.2091260000000004
	.quad	0x402280a979e16d6e              # double 9.2512930000000004
	.quad	0x400ce8d8ec95bff0              # double 3.6136949999999999
	.quad	0x402278fabda0dfdf              # double 9.2362880000000001
	.quad	0x3ff2e7b0b3919264              # double 1.181565
	.quad	0x402004ebbba55d1c              # double 8.0096109999999995
	.quad	0x401560ca600b0293              # double 5.3445220000000004
	.quad	0x3fc90f062d40aaeb              # double 0.195771
	.quad	0x3fc00ea5b530ced5              # double 0.125447
	.quad	0x402050b1bbcf4e87              # double 8.1576059999999995
	.quad	0x402217b506dd69d3              # double 9.046303
	.quad	0x4012e1cb46bacf74              # double 4.7205019999999998
	.quad	0x4019b8eda22f6a51              # double 6.4305940000000001
	.quad	0x4020b012dfd694cd              # double 8.3438940000000006
	.quad	0x4021600431bde82d              # double 8.6875319999999991
	.quad	0x4006edd052934acb              # double 2.86612
	.quad	0x4011efcefaa4766c              # double 4.4841879999999996
	.quad	0x4000f2c1f42bb667              # double 2.1185339999999999
	.quad	0x40071a95c853c148              # double 2.8879809999999999
	.quad	0x4008d56c93a71151              # double 3.1042109999999998
	.quad	0x3ff37bf2f5558213              # double 1.2177610000000001
	.quad	0x4010b90364388ebd              # double 4.1806770000000002
	.quad	0x40105c286f8ad256              # double 4.0899979999999996
	.quad	0x401afe3608d0891a              # double 6.7482530000000001
	.quad	0x4023d84e1e71044f              # double 9.9224709999999998
	.quad	0x40231c07ee0b0af6              # double 9.554748
	.quad	0x4023e2abef06b378              # double 9.9427179999999992
	.quad	0x401bb9ee45c358b0              # double 6.9315730000000002
	.quad	0x3fcb10ba6266fd65              # double 0.211448
	.quad	0x401e6a8b4bf8fcd6              # double 7.6040469999999996
	.quad	0x401a12480e8c8abd              # double 6.5178529999999997
	.quad	0x401b8d25edd05293              # double 6.8878399999999997
	.quad	0x3fe460221426fe72              # double 0.63673500000000005
	.quad	0x3ff3084b5dcc63f1              # double 1.1895249999999999
	.quad	0x400227b80a9de8b4              # double 2.2693940000000001
	.quad	0x40227caeea63b689              # double 9.2435220000000005
	.quad	0x400bb4666ec9e237              # double 3.4630860000000001
	.quad	0x400c5884c6a3bde0              # double 3.5432220000000001
	.quad	0x4009850268900c52              # double 3.1899459999999999
	.quad	0x40180a74c09c3ce2              # double 6.010211
	.quad	0x40012c9e236c15d3              # double 2.1467860000000001
	.quad	0x3ff0599780baa583              # double 1.021873
	.quad	0x3fe2d859c8c9320e              # double 0.58891000000000004
	.quad	0x401220d801b43526              # double 4.5320739999999997
	.quad	0x3ffe9f687b139c95              # double 1.913918
	.quad	0x3fa19ae924f227d0              # double 0.034384999999999999
	.quad	0x4017be52deca2553              # double 5.9358630000000003
	.quad	0x4000152da98676a7              # double 2.0103409999999999
	.quad	0x401b0eed02cd39da              # double 6.7645759999999999
	.quad	0x3ffc36188b11409a              # double 1.763207
	.quad	0x4018366c2acb85a5              # double 6.0531470000000001
	.quad	0x40009efd86a8fc0d              # double 2.0776319999999999
	.quad	0x4019c21e603d5779              # double 6.4395689999999997
	.quad	0x3feb403ff69014b6              # double 0.85159300000000004
	.quad	0x3ff7b7c5692b3cc5              # double 1.4823660000000001
	.quad	0x4001d82ba5a03819              # double 2.2305519999999999
	.quad	0x40142eee0f3cb3e5              # double 5.0458299999999996
	.quad	0x3ffbb77af640639d              # double 1.7322949999999999
	.quad	0x3ffcdf81a5870da6              # double 1.804567
	.quad	0x40173b0c026cc1ca              # double 5.8076629999999998
	.quad	0x40149253543aeab8              # double 5.1428960000000004
	.quad	0x4020509d8c6d612c              # double 8.1574519999999992
	.quad	0x3ffce909aed56b01              # double 1.806894
	.quad	0x3ff7a7bd48cb4aed              # double 1.4784520000000001
	.quad	0x401dbdc9c4da9004              # double 7.4353400000000001
	.quad	0x4020f307f23cc8de              # double 8.4746699999999997
	.quad	0x3fe7cbd987c6327f              # double 0.74363400000000002
	.quad	0x400d32a51e321a2e              # double 3.6497289999999998
	.quad	0x3ff5706d50657321              # double 1.3399479999999999
	.quad	0x4021f4f67b1c0011              # double 8.9784430000000004
	.quad	0x400a0d0b30b5aa71              # double 3.2563689999999998
	.quad	0x402351fa97e132b5              # double 9.6601149999999993
	.quad	0x4017e43f1c75818c              # double 5.9728969999999997
	.quad	0x4004640d90e23af3              # double 2.548854
	.quad	0x4005fe121ee67514              # double 2.7490579999999998
	.quad	0x40212142917507ea              # double 8.5649610000000003
	.quad	0x3ff02f1561911490              # double 1.011495
	.quad	0x3fa5f2452c59fb1e              # double 0.042863999999999999
	.quad	0x3ff23fb69984a0e4              # double 1.140555
	.quad	0x402307b7e90ff972              # double 9.5150749999999995
	.quad	0x401df8dd1e53a81e              # double 7.4930310000000002
	.quad	0x400a3043e5321e60              # double 3.2735669999999999
	.quad	0x4013e0ac7da1ec4e              # double 4.9694079999999996
	.quad	0x3ffbd434a01abd1b              # double 1.7393080000000001
	.quad	0x401e5e2046c764ae              # double 7.59192
	.quad	0x40147e9b7bf1e8e6              # double 5.12364
	.quad	0x3f869b9d7fd82774              # double 0.011039
	.quad	0x401cbe08f2170931              # double 7.185581
	.quad	0x3fc1fd7a13c254a4              # double 0.14054800000000001
	.quad	0x3f980f98fa376923              # double 0.023497000000000001
	.quad	0x4022f224463065f9              # double 9.4729329999999993
	.quad	0x4023f0f29d40ee07              # double 9.9706010000000002
	.quad	0x401e69f6ec5b078e              # double 7.6034810000000004
	.quad	0x4006a9d9d3458cd2              # double 2.832935
	.quad	0x40153b845564b663              # double 5.308122
	.quad	0x4017077e5eaab042              # double 5.7573179999999997
	.quad	0x400b4fd32c625e9a              # double 3.413977
	.quad	0x3fe6f93bc0a06ea0              # double 0.71792400000000001
	.quad	0x4006ef9fcb0c026d              # double 2.8670040000000001
	.quad	0x401ea7570c564f98              # double 7.663418
	.quad	0x3ffb21a719b4dcec              # double 1.695716
	.quad	0x400556da0168b5cc              # double 2.667408
	.quad	0x401ee179bfdf7e80              # double 7.7201909999999998
	.quad	0x40142451b93037d6              # double 5.0354679999999998
	.quad	0x401edc01a36e2eb2              # double 7.7148500000000002
	.quad	0x4013619dece57109              # double 4.8453290000000004
	.quad	0x40238f6640a6b93d              # double 9.7800770000000003
	.quad	0x3fcb34efcbd55608              # double 0.21255299999999999
	.quad	0x4011e4cf4a558ea8              # double 4.4734470000000002
	.quad	0x4023857082491afc              # double 9.7606239999999999
	.quad	0x4016ddb3397dd00f              # double 5.7165039999999996
	.quad	0x40126bb341e14be0              # double 4.6051760000000002
	.quad	0x401dff8f8a4c1ebd              # double 7.4995710000000004
	.quad	0x4000151ce28ed5f1              # double 2.0103089999999999
	.quad	0x3ffece874c8ffb8b              # double 1.925422
	.quad	0x401ae487fcb923a3              # double 6.7231750000000003
	.quad	0x3ff4f41aef6f8f04              # double 1.309596
	.quad	0x401d28db4890928a              # double 7.2898990000000001
	.quad	0x3fe50d6d3b6cbd98              # double 0.65788899999999995
	.quad	0x4012e4b0e1b4bb5e              # double 4.7233309999999999
	.quad	0x400ea005c4651f3f              # double 3.8281360000000002
	.quad	0x40215daff2a172ac              # double 8.6829830000000001
	.quad	0x3fc9661f18c9fb61              # double 0.19842899999999999
	.quad	0x401670d887ebf22c              # double 5.610201
	.quad	0x40191f8ceb356da0              # double 6.2808109999999999
	.quad	0x3ff7ef533f42352f              # double 1.4959290000000001
	.quad	0x4016492c8c5004fb              # double 5.5714589999999999
	.quad	0x4017c8b9fdbd2fa1              # double 5.9460220000000001
	.quad	0x40198e93e1c9b414              # double 6.3892360000000004
	.quad	0x40209db402d16b98              # double 8.308014
	.quad	0x400c941fa7653437              # double 3.5723259999999999
	.quad	0x3ff67a54c5543287              # double 1.4048659999999999
	.quad	0x401ae8711d798d8b              # double 6.7269940000000004
	.quad	0x40237d017dae8188              # double 9.7441519999999997
	.quad	0x401205aa715831f0              # double 4.5055329999999998
	.quad	0x3ffa4b545c78a6db              # double 1.643391
	.quad	0x3fe8571f36262cba              # double 0.76063499999999995
	.quad	0x4019ecbf2b239a39              # double 6.481198
	.quad	0x401cc4384ba0e842              # double 7.1916209999999996
	.quad	0x40222b254e6e221d              # double 9.0842690000000008
	.quad	0x401125c74751ce29              # double 4.2868930000000001
	.quad	0x40105c6583e8576d              # double 4.0902310000000002
	.quad	0x40201d2dcb1465e9              # double 8.0569900000000008
	.quad	0x401e63e07a28bb0a              # double 7.5975359999999998
	.quad	0x40160af46aa087ca              # double 5.5106979999999997
	.quad	0x402347967caea748              # double 9.6398200000000002
	.quad	0x401ce1212513b5bf              # double 7.2198529999999996
	.quad	0x4002508461f9f01c              # double 2.2893150000000002
	.quad	0x4020d6d6777079e6              # double 8.4196050000000007
	.quad	0x3fdfb6a1e81cb46c              # double 0.49552200000000002
	.quad	0x3fdff2d3c792d128              # double 0.49919599999999997
	.quad	0x401ad4c7f3493858              # double 6.7077939999999998
	.quad	0x40158e19fc2a886a              # double 5.3887710000000002
	.quad	0x3fd327e0ef99806f              # double 0.29930899999999999
	.quad	0x401744ea4a8c154d              # double 5.8173000000000004
	.quad	0x400320bfe3b03e21              # double 2.3909910000000001
	.quad	0x401eb2ba16e7a312              # double 7.6745380000000001
	.quad	0x400270d0678c0054              # double 2.3050850000000001
	.quad	0x40024ac3a860dcba              # double 2.2865060000000001
	.quad	0x4020d89aaa3ad18d              # double 8.4230549999999997
	.quad	0x3ff8d8c5c9a34ca1              # double 1.5529230000000001
	.quad	0x402166453d20f2bf              # double 8.6997470000000003
	.quad	0x4023c4241c3efae8              # double 9.8830880000000007
	.quad	0x3ff55a5a89b951c6              # double 1.3345590000000001
	.quad	0x401495e56cd6c2f0              # double 5.1463830000000002
	.quad	0x4006ed7518b0d0ee              # double 2.8659460000000001
	.quad	0x4014fc026cc1ca3a              # double 5.2461029999999997
	.quad	0x4023a586a8fc0d2c              # double 9.8232929999999996
	.quad	0x400994ff0025bfad              # double 3.1977519999999999
	.quad	0x401ca48882f0e0a8              # double 7.1606769999999997
	.quad	0x401a79d2bf551505              # double 6.6189679999999997
	.quad	0x401228ec52a411c3              # double 4.5399640000000003
	.quad	0x401a0987c6327ed8              # double 6.5093069999999997
	.quad	0x3ff9ff162ae4b018              # double 1.6247769999999999
	.quad	0x3ff16877ee4e26d5              # double 1.0880050000000001
	.quad	0x401eaec5b078d930              # double 7.6706760000000003
	.quad	0x40186a1059ea5721              # double 6.1035779999999997
	.quad	0x3ff5607f66e86c66              # double 1.3360590000000001
	.quad	0x400422fd75e2046c              # double 2.5170849999999998
	.quad	0x40233e1a8262456f              # double 9.6212959999999991
	.quad	0x4020e0e10cf5b1c8              # double 8.4392169999999993
	.quad	0x400e8c7c957cd467              # double 3.818597
	.quad	0x3ff501871e6cd291              # double 1.312873
	.quad	0x40236671ac14c661              # double 9.7000860000000006
	.quad	0x4013653f7ced9168              # double 4.8488749999999996
	.quad	0x4018db8cfbfc6541              # double 6.2144050000000002
	.quad	0x4001b8d5842b734b              # double 2.2152509999999999
	.quad	0x401ced3dc8b86b16              # double 7.231681
	.quad	0x400ce410b630a915              # double 3.6113599999999999
	.quad	0x402184c39ffd60e9              # double 8.7593049999999995
	.quad	0x40211f7036c9c0a9              # double 8.5614030000000003
	.quad	0x3ffd61932d6ece14              # double 1.836322
	.quad	0x3ffbf5a964e8b7e5              # double 1.747476
	.quad	0x401e2cd466f5019f              # double 7.5437789999999997
	.quad	0x40019be121ee6751              # double 2.2011129999999999
	.quad	0x402173ffef39085f              # double 8.7265619999999995
	.quad	0x4003ccb20fb224ab              # double 2.4749490000000001
	.quad	0x3ff4a9c99285a922              # double 1.291452
	.quad	0x401a5b89d6adf71f              # double 6.5893930000000003
	.quad	0x401d5878b7a1c25d              # double 7.336398
	.quad	0x401ed2c77574f723              # double 7.7058390000000001
	.quad	0x4016c46e08f21709              # double 5.6918259999999998
	.quad	0x4000233ce63a5c1c              # double 2.0172059999999998
	.quad	0x4006ee7a311e85fd              # double 2.866444
	.quad	0x402260e94ee392e2              # double 9.1892800000000001
	.quad	0x4022e298cc144029              # double 9.4425720000000001
	.quad	0x4015db76709fa54c              # double 5.4643189999999997
	.quad	0x401e0a20578e5c4f              # double 7.5098890000000002
	.quad	0x4011776709fa54c5              # double 4.3666039999999997
	.quad	0x4010cee957470eb2              # double 4.2020619999999997
	.quad	0x400bd6ca46e08f21              # double 3.4798779999999998
	.quad	0x4019c713f077ccc0              # double 6.4444119999999998
	.quad	0x3ff23efbf401c4fc              # double 1.140377
	.quad	0x402173b4916ca46e              # double 8.7259869999999999
	.quad	0x40053d0e991ff716              # double 2.6548129999999999
	.quad	0x401f57add15f02c5              # double 7.8356240000000001
	.quad	0x401ffd20f2becedd              # double 7.9971959999999997
	.quad	0x4015a69fcf3dc055              # double 5.4127190000000001
	.quad	0x3ffa9cd91eeaa6d2              # double 1.6632929999999999
	.quad	0x401eb3c46d82ba5a              # double 7.675554
	.quad	0x4009b89ce4a7b4e5              # double 3.2151429999999999
	.quad	0x3fe6a4894c447c31              # double 0.70758500000000002
	.quad	0x3ffd93cab81f969e              # double 1.8485819999999999
	.quad	0x4022358a32f44913              # double 9.1045700000000007
	.quad	0x400db869835158b8              # double 3.7150449999999999
	.quad	0x4019c023a6ce3583              # double 6.4376360000000004
	.quad	0x3fa4c165907d9125              # double 0.040537999999999998
	.quad	0x3fef15208e150119              # double 0.97132899999999999
	.quad	0x401eaffef39085f5              # double 7.6718710000000003
	.quad	0x3ff926cc1ca3a4b5              # double 1.5719719999999999
	.quad	0x401697edc7ef177a              # double 5.6483679999999996
	.quad	0x401132189bd8383b              # double 4.2989220000000001
	.quad	0x4002fafa7221858c              # double 2.3725480000000001
	.quad	0x3fe6336bd2b6f199              # double 0.69377699999999998
	.quad	0x401238259e1f3a58              # double 4.5548310000000001
	.quad	0x401b4320d9945b6c              # double 6.8155549999999998
	.quad	0x400afcd7060bb2bc              # double 3.3734570000000001
	.quad	0x4008a2f2734f82f5              # double 3.079564
	.quad	0x400775219a847b24              # double 2.9321929999999998
	.quad	0x40205708cc575c07              # double 8.1699889999999993
	.quad	0x4022269185cee17a              # double 9.075329
	.quad	0x4004f3804534bd77              # double 2.618897
	.quad	0x401caa04d12018a4              # double 7.1660339999999998
	.quad	0x4003b524399b2c41              # double 2.4634480000000001
	.quad	0x4022778f25a250f8              # double 9.2335139999999995
	.quad	0x401a80a73f748a16              # double 6.6256380000000004
	.quad	0x401db01f31f46ed2              # double 7.4219939999999998
	.quad	0x4000eff327aa68f5              # double 2.1171630000000001
	.quad	0x401492ac753e707e              # double 5.1432359999999999
	.quad	0x401882f72b452828              # double 6.1278959999999998
	.quad	0x4021601a36e2eb1c              # double 8.6876999999999995
	.quad	0x4020e082278d0cc3              # double 8.4384929999999994
	.quad	0x400f01b4bb5e0f80              # double 3.8758330000000001
	.quad	0x4022569d51b4fe7a              # double 9.1691690000000001
	.quad	0x3feac4b2b777d0f2              # double 0.836511
	.quad	0x4001ba5fc7e6b3ff              # double 2.2160030000000002
	.quad	0x400b2216c61522a7              # double 3.391645
	.quad	0x4018875818c5c9a3              # double 6.1321719999999997
	.quad	0x40103c126a65cf68              # double 4.0586640000000003
	.quad	0x4000c10e8858ff76              # double 2.0942660000000002
	.quad	0x3ff9dc2d2780778a              # double 1.6162540000000001
	.quad	0x4020773cd573647c              # double 8.2328860000000005
	.quad	0x4018356ffc115df6              # double 6.0521849999999997
	.quad	0x3fe734acaff6d331              # double 0.72518000000000005
	.quad	0x4014405a708ede55              # double 5.0628450000000003
	.quad	0x40041403dddb120a              # double 2.509773
	.quad	0x3fe9958750c1b973              # double 0.79950299999999996
	.quad	0x40221097204295a7              # double 9.0324030000000004
	.quad	0x3ff29fd1569f4906              # double 1.164018
	.quad	0x3fa278af3e468cac              # double 0.036076999999999998
	.quad	0x3fb23864cb5bb385              # double 0.071173
	.quad	0x3ff3fd21ff2e48e9              # double 1.2493000000000001
	.quad	0x40154129888f861a              # double 5.3136349999999997
	.quad	0x40157950763a1901              # double 5.3684710000000004
	.quad	0x40154cb4289118c2              # double 5.3249060000000004
	.quad	0x4011dddbdb5d8948              # double 4.4666589999999999
	.quad	0x400d601040bfe3b0              # double 3.6719059999999999
	.quad	0x4012560a2014727e              # double 4.5840230000000002
	.quad	0x40157b3fa6defc7a              # double 5.3703599999999998
	.quad	0x40198d73860999dd              # double 6.3881360000000003
	.quad	0x4022176cce5f7404              # double 9.0457520000000002
	.quad	0x40116830e3cd9a52              # double 4.3517489999999999
	.quad	0x401cedca07f66e87              # double 7.2322160000000002
	.quad	0x4023fc47a17f4129              # double 9.9927340000000004
	.quad	0x401344dca8e2e2b9              # double 4.8172480000000002
	.quad	0x40185acd184c2720              # double 6.088673
	.quad	0x40227ef284167a96              # double 9.2479440000000004
	.quad	0x400bed7cf5f4e443              # double 3.490961
	.quad	0x4022f6bd4cfd08d5              # double 9.4819130000000004
	.quad	0x40219fa17f4128bf              # double 8.8117789999999996
	.quad	0x4016275ff609dcf9              # double 5.5384520000000004
	.quad	0x401e5c3ac929aa1d              # double 7.5900679999999995
	.quad	0x401ed98eda22f6a5              # double 7.7124589999999999
	.quad	0x402151806f262889              # double 8.6591830000000005
	.quad	0x4009733e35c5b4ab              # double 3.1812710000000002
	.quad	0x4022064712e40853              # double 9.0122610000000005
	.quad	0x40185ee1bd1ed9e0              # double 6.0926580000000001
	.quad	0x3fde3dc486ad2dcb              # double 0.47252
	.quad	0x4021d5616f86a099              # double 8.9167590000000008
	.quad	0x4015923bbc6eb0b8              # double 5.3928060000000002
	.quad	0x40232e0ce0b912dc              # double 9.5899420000000006
	.quad	0x3fbf5610adcd2d45              # double 0.122407
	.quad	0x4023a8de2ac32229              # double 9.8298199999999997
	.quad	0x400ff606b7aa25d9              # double 3.9951300000000001
	.quad	0x400f79945b6c3761              # double 3.9343650000000001
	.quad	0x400a66afcce1c582              # double 3.3001399999999999
	.quad	0x400d4604e1e71045              # double 3.659189
	.quad	0x3fd5e219652bd3c3              # double 0.34192499999999998
	.quad	0x4006b9a847b24639              # double 2.8406530000000001
	.quad	0x401975dd4c76d118              # double 6.3651020000000003
	.quad	0x4003ae7ee9142b30              # double 2.4602029999999999
	.quad	0x400415193708aac9              # double 2.5103019999999998
	.quad	0x401fd2bbecaab8a6              # double 7.9557950000000002
	.quad	0x40160504816f0069              # double 5.5049000000000001
	.quad	0x3fddd3910c2c5e2d              # double 0.46603800000000001
	.quad	0x40149e33269df97b              # double 5.1544920000000003
	.quad	0x3ff43c5bd0e12e84              # double 1.2647360000000001
	.quad	0x401de4bc6a7ef9db              # double 7.4733749999999999
	.quad	0x4002a60780fdc161              # double 2.3310689999999998
	.quad	0x4006db2dd377e1b9              # double 2.857021
	.quad	0x401caf87f023e9ea              # double 7.1714169999999999
	.quad	0x40157db5d894812c              # double 5.3727640000000001
	.quad	0x40132e19fc2a886a              # double 4.7950210000000002
	.quad	0x3fe5262cba732df5              # double 0.66091
	.quad	0x3fe61f559b3d07c8              # double 0.69132499999999997
	.quad	0x3ffd935fc3b4f616              # double 1.8484799999999999
	.quad	0x4017c1550ca1cef2              # double 5.9388009999999998
	.quad	0x401ac18c9fb6134d              # double 6.6890130000000001
	.quad	0x400e41cc532a4980              # double 3.7821280000000002
	.quad	0x400b16dca07f66e8              # double 3.3861629999999998
	.quad	0x3fe11e731d2e0e30              # double 0.53496699999999997
	.quad	0x3ff39756c93a7115              # double 1.224448
	.quad	0x402106b5b2d4d402              # double 8.5131049999999995
	.quad	0x40197f93ff25e56d              # double 6.3745880000000001
	.quad	0x3fe4f3d3a1d323ff              # double 0.65476400000000001
	.quad	0x3fc83fee2c98e53f              # double 0.18945100000000001
	.quad	0x40104ad4f5903a75              # double 4.0730779999999998
	.quad	0x401080229a5ebb77              # double 4.1251319999999998
	.quad	0x40226ecf850df15a              # double 9.2164269999999995
	.quad	0x3ff13672b884406c              # double 1.075793
	.quad	0x3fd68359bc33f855              # double 0.351767
	.quad	0x400b7faa044ae85c              # double 3.4373360000000002
	.quad	0x401404c5da6a4441              # double 5.0046609999999996
	.quad	0x3fff36a832b990b0              # double 1.950844
	.quad	0x3fe5bdd76683c298              # double 0.67942400000000003
	.quad	0x40113d3bf2f55582              # double 4.3097989999999999
	.quad	0x402192cf7446f9ba              # double 8.7867390000000007
	.quad	0x4020aca2fcefaa47              # double 8.3371809999999993
	.quad	0x3ff69208e1501190              # double 1.4106529999999999
	.quad	0x4003726d8b1dd5d4              # double 2.4308730000000001
	.quad	0x4010d1b1d92b7fe1              # double 4.2047800000000004
	.quad	0x4021439c7368ad69              # double 8.6320530000000009
	.quad	0x4023d62131a8ef78              # double 9.918222
	.quad	0x401a2c4156e264e5              # double 6.5432180000000004
	.quad	0x401c7e1719f7f8cb              # double 7.1231350000000004
	.quad	0x40164499d0203e64              # double 5.5669930000000001
	.quad	0x4023c3ce63a5c1c6              # double 9.8824339999999999
	.quad	0x3fe8571d1d4738a4              # double 0.76063400000000003
	.quad	0x3ffa1b003686a4ca              # double 1.6315919999999999
	.quad	0x40206798b71b8aa0              # double 8.202337
	.quad	0x3ff67925bb7b6bb1              # double 1.404577
	.quad	0x402352014727dcbe              # double 9.6601660000000003
	.quad	0x401b22bd3c361134              # double 6.783925
	.quad	0x3ff1c04102ff8ec1              # double 1.109437
	.quad	0x3fe19fe21d96e9bc              # double 0.55076700000000001
	.quad	0x401ca31f03d145d8              # double 7.1592979999999997
	.quad	0x3ff40c016052502f              # double 1.252931
	.quad	0x4022f563ed0f6274              # double 9.4792780000000007
	.quad	0x40213f1f9acffa7f              # double 8.6232880000000005
	.quad	0x400a7e97d06bbdbe              # double 3.3118129999999999
	.quad	0x4009bb163baba7b9              # double 3.216351
	.quad	0x4020d0a137f38c54              # double 8.4074799999999996
	.quad	0x401b4bd6e8af8162              # double 6.8240619999999996
	.quad	0x3ffa34fa48301a7a              # double 1.637934
	.quad	0x40199df97aaac109              # double 6.4042719999999997
	.quad	0x3ffe0d002e2328fa              # double 1.878174
	.quad	0x40021fc5479d4d83              # double 2.2655129999999999
	.quad	0x4018ad3b29a1b9fa              # double 6.1691710000000004
	.quad	0x401126102795703f              # double 4.2871709999999998
	.quad	0x40118c144028e4fc              # double 4.3867960000000004
	.quad	0x400db7f1737542a2              # double 3.7148159999999999
	.quad	0x4021acd056c508b3              # double 8.8375269999999997
	.quad	0x400b218a43bb40b3              # double 3.3913769999999999
	.quad	0x400039e8c47a17f4              # double 2.028276
	.quad	0x4015f94b7b28954a              # double 5.4934519999999996
	.quad	0x401248bc169c23b8              # double 4.5710300000000004
	.quad	0x3fab686a4ca4f441              # double 0.053531000000000002
	.quad	0x40230a059a73b42d              # double 9.5195740000000004
	.quad	0x4012256c508b32cf              # double 4.5365460000000004
	.quad	0x400f6bd017dae819              # double 3.9276430000000002
	.quad	0x3ff99c1c6088d6d4              # double 1.6006130000000001
	.quad	0x400b5c47e49b1fac              # double 3.4200590000000002
	.quad	0x4012cced916872b0              # double 4.7001249999999999
	.quad	0x4016846f15619115              # double 5.6293300000000004
	.quad	0x3ffec790b8498809              # double 1.9237219999999999
	.quad	0x3fdd013a92a30553              # double 0.45319999999999999
	.quad	0x40124d9b5e95b78d              # double 4.5757880000000002
	.quad	0x400971569f490603              # double 3.1803409999999999
	.quad	0x40028ca925fe974a              # double 2.3186819999999999
	.quad	0x3ff49bab21815a08              # double 1.2880050000000001
	.quad	0x401d3966be7afa72              # double 7.3060559999999999
	.quad	0x4020808a697aeddd              # double 8.2510560000000002
	.quad	0x402368f3882278d1              # double 9.7049830000000003
	.quad	0x4023d1f559b3d07d              # double 9.9100750000000008
	.quad	0x3fe41cc100e6afcd              # double 0.62851000000000001
	.quad	0x3ffa5dbec2480e8d              # double 1.6478870000000001
	.quad	0x401476a76965f527              # double 5.1158729999999997
	.quad	0x3fddf08461f9f01c              # double 0.46780500000000003
	.quad	0x3fc2976bc1eff9f8              # double 0.14524599999999999
	.quad	0x4008ea1272c94b38              # double 3.114293
	.quad	0x4021bed916872b02              # double 8.8727499999999999
	.quad	0x401307d84901d191              # double 4.7576609999999997
	.quad	0x402394e8101f31f4              # double 9.7908329999999992
	.quad	0x401bd3265add9c28              # double 6.9562010000000001
	.quad	0x40113eca686e7e63              # double 4.3113190000000001
	.quad	0x400722be0589acbd              # double 2.8919640000000002
	.quad	0x4022745308bb9064              # double 9.2271959999999992
	.quad	0x40217f29b280f12c              # double 8.7483649999999997
	.quad	0x3fedb691212513b6              # double 0.92853600000000003
	.quad	0x401c736b4c7f3494              # double 7.1127140000000004
	.quad	0x401c3b1d92b7fe09              # double 7.0577300000000003
	.quad	0x40181884c6a3bde0              # double 6.0239440000000002
	.quad	0x400f53b107746888              # double 3.9158650000000002
	.quad	0x400bbcb81733226c              # double 3.4671479999999999
	.quad	0x401a4e86c6583e85              # double 6.5766859999999996
	.quad	0x401aaac57e23f24e              # double 6.6667690000000004
	.quad	0x40184737da61e0c6              # double 6.0695490000000003
	.quad	0x4020bb5daad60200              # double 8.3659490000000005
	.quad	0x3ff3ebe37de939eb              # double 1.24509
	.quad	0x4003132378ab0c89              # double 2.3843450000000002
	.quad	0x40055a89b951c5c5              # double 2.6692079999999998
	.quad	0x4019890d5a5b9629              # double 6.3838400000000002
	.quad	0x40184b9fdbd2fa0d              # double 6.0738519999999996
	.quad	0x400bc4ddb5525cc4              # double 3.4711259999999999
	.quad	0x4014c3c21187e7c0              # double 5.1911699999999996
	.quad	0x401b2dcb9a9da598              # double 6.7947220000000002
	.quad	0x40186fede97d06bc              # double 6.1093060000000001
	.quad	0x4022f568a50507a7              # double 9.4793140000000004
	.quad	0x3ffb246bf01322f2              # double 1.6963919999999999
	.quad	0x40225e7ddca4b125              # double 9.1845540000000003
	.quad	0x4010b9c49774256c              # double 4.1814140000000002
	.quad	0x4020928e4fb97bb7              # double 8.2862419999999997
	.quad	0x401d596fa82e87d3              # double 7.3373400000000002
	.quad	0x401838e10cf5b1c8              # double 6.0555459999999997
	.quad	0x4008b7342edbb59e              # double 3.0894550000000001
	.quad	0x401d2fc71d606317              # double 7.2966579999999999
	.quad	0x401619478c868ba0              # double 5.5246870000000001
	.quad	0x400c6537e2c55c96              # double 3.549423
	.quad	0x401c45d249e44fa0              # double 7.0681849999999997
	.quad	0x40090d6fda836eb5              # double 3.131561
	.quad	0x40214ea0dbad3a60              # double 8.6535709999999995
	.quad	0x3fd8c4e7253da72a              # double 0.38701799999999997
	.quad	0x401d8f7a0b5ed8d3              # double 7.3901139999999996
	.quad	0x40234c29e0a41a26              # double 9.6487569999999998
	.quad	0x401d333a0407cc7d              # double 7.3000259999999999
	.quad	0x3fe1fba450acc0be              # double 0.56196800000000002
	.quad	0x40182288ce703afb              # double 6.0337249999999996
	.quad	0x3ff5a61bf37b8d3f              # double 1.353054
	.quad	0x401b9e12e83a109d              # double 6.904369
	.quad	0x3f9a7e73a365cb36              # double 0.025873
	.quad	0x40212eadb402d16c              # double 8.5911690000000007
	.quad	0x4014cc2b51bd61f6              # double 5.1993840000000002
	.quad	0x401d63f961804d98              # double 7.3476309999999998
	.quad	0x40194f687b139c95              # double 6.327547
	.quad	0x3fe222be0589acbd              # double 0.56674100000000005
	.quad	0x4008b2f01754b05b              # double 3.0873719999999998
	.quad	0x4012587160956c0d              # double 4.5863699999999996
	.quad	0x40239a630ec31162              # double 9.8015369999999997
	.quad	0x402030e086bdf4c3              # double 8.0954630000000005
	.quad	0x4015fb68cef672b9              # double 5.4955170000000004
	.quad	0x4005ffab96f21f6d              # double 2.7498390000000001
	.quad	0x401c4024b33daf8e              # double 7.06264
	.quad	0x4010937de939eadd              # double 4.1440349999999997
	.quad	0x401a2fd71b046845              # double 6.5467190000000004
	.quad	0x40137bae89eba6ad              # double 4.8707830000000003
	.quad	0x3fea5f82b1f687b1              # double 0.82415899999999997
	.quad	0x401df2b239a38fbd              # double 7.4870080000000003
	.quad	0x4022d20a958537e3              # double 9.4102370000000004
	.quad	0x401e0460ed80a17b              # double 7.5042759999999999
	.quad	0x401694a16a487336              # double 5.6451469999999997
	.quad	0x4007d1b9b66f9336              # double 2.9774050000000001
	.quad	0x40203cd67fd3f5b6              # double 8.118824
	.quad	0x4001c6a1a500d5e9              # double 2.2219880000000001
	.quad	0x400c821294573a79              # double 3.5635119999999998
	.quad	0x3ff84f98fa376923              # double 1.519433
	.quad	0x3fffe0d887ebf22c              # double 1.992394
	.quad	0x40040b3a2595bbbf              # double 2.5054820000000002
	.quad	0x4006205a2d72ffd2              # double 2.7657970000000001
	.quad	0x4006efe4ffc9795b              # double 2.8671359999999999
	.quad	0x40236e8cef672b88              # double 9.7159189999999995
	.quad	0x4014004189374bc7              # double 5.0002500000000003
	.quad	0x4020fb078d92fb1a              # double 8.4902920000000002
	.quad	0x402301f666234a88              # double 9.5038330000000001
	.quad	0x4010ebb40b34e768              # double 4.2301789999999997
	.quad	0x4015951fc4c16590              # double 5.3956289999999996
	.quad	0x3ff60b417ca2120e              # double 1.377748
	.quad	0x3ff55288ce703afb              # double 1.3326499999999999
	.quad	0x400bfae46cfc829d              # double 3.497506
	.quad	0x40126fd7e45803cd              # double 4.6092219999999999
	.quad	0x400a6cb295e9e1b1              # double 3.3030750000000002
	.quad	0x3ffa9ba7fc32ebe6              # double 1.6630020000000001
	.quad	0x402181d7dbf487fd              # double 8.7536000000000005
	.quad	0x4016451deefe4ffd              # double 5.5674970000000004
	.quad	0x3fc4e46cfc829cfe              # double 0.163221
	.quad	0x4021aa9563a9f384              # double 8.8331710000000001
	.quad	0x402025c422036007              # double 8.0737620000000003
	.quad	0x3ff97b8c32a8c9b8              # double 1.5926629999999999
	.quad	0x4006fde0d66f0cfe              # double 2.873964
	.quad	0x400090c77dd872f3              # double 2.0706929999999999
	.quad	0x400d3c3ac929aa1d              # double 3.6544089999999998
	.quad	0x40232665bea0ba1f              # double 9.5749949999999994
	.quad	0x400956a832b990b0              # double 3.167313
	.quad	0x401d7cee17a02fb6              # double 7.3720020000000002
	.quad	0x40201b64388ebcc7              # double 8.0534990000000004
	.quad	0x4018b06b37867f0b              # double 6.1722840000000003
	.quad	0x3fe620902de00d1b              # double 0.69147499999999995
	.quad	0x4004ec52a411c2a0              # double 2.6153919999999999
	.quad	0x4022d9e14bdfd263              # double 9.4255469999999998
	.quad	0x4017a772d5e071c5              # double 5.9135239999999998
	.quad	0x4018fd551d68c693              # double 6.247395
	.quad	0x401c9cd9a52263d8              # double 7.1531739999999999
	.quad	0x4019f5b291b823c8              # double 6.4899389999999997
	.quad	0x40238288051c9f73              # double 9.754944
	.quad	0x40169c03361565c3              # double 5.6523560000000002
	.quad	0x402101802c0a4a06              # double 8.5029310000000002
	.quad	0x402318e92d55a3a1              # double 9.5486540000000008
	.quad	0x40213bb73083558a              # double 8.6166319999999992
	.quad	0x3ffc7517a46173b8              # double 1.7785869999999999
	.quad	0x40110961804d9839              # double 4.2591609999999998
	.quad	0x401d4ab5c39bcba3              # double 7.322959
	.quad	0x3fc24f09528f190d              # double 0.143037
	.quad	0x4023d97353b4b2fb              # double 9.9247080000000007
	.quad	0x400f068c26139000              # double 3.8781970000000001
	.quad	0x401f08e25c810a57              # double 7.7586760000000003
	.quad	0x400fbbc5de9c022a              # double 3.9666860000000002
	.quad	0x401094241c3efae8              # double 4.1446690000000004
	.quad	0x3fff8d5f99c38b05              # double 1.9720150000000001
	.quad	0x4019cb506dd69d30              # double 6.4485489999999999
	.quad	0x401e49bc77143394              # double 7.5720080000000003
	.quad	0x40061970b49e01de              # double 2.7624219999999999
	.quad	0x40017a6698bb4d49              # double 2.1847660000000002
	.quad	0x401f4829cfdd2285              # double 7.8204719999999996
	.quad	0x401510574b407033              # double 5.2659580000000004
	.quad	0x40194d40ee06d938              # double 6.3254429999999999
	.quad	0x4020c3239a38fbca              # double 8.3811309999999999
	.quad	0x3fd0452c59fb1e19              # double 0.254222
	.quad	0x40138be121ee6751              # double 4.8866009999999998
	.quad	0x401674c7f3493858              # double 5.6140439999999998
	.quad	0x401185f84cad57bc              # double 4.3808299999999996
	.quad	0x4018b7ecfe9b7bf2              # double 6.1796150000000001
	.quad	0x4002745f9df548ed              # double 2.3068230000000001
	.quad	0x3fed36e503fb3743              # double 0.91295099999999996
	.quad	0x3fd6c2bd7f51efb7              # double 0.35563600000000001
	.quad	0x400644a16a487336              # double 2.7835109999999998
	.quad	0x3ffd0ecc814d727a              # double 1.8161130000000001
	.quad	0x3fd8f761cbccf28c              # double 0.39009899999999997
	.quad	0x4023059d7774aba4              # double 9.5109670000000008
	.quad	0x402348060780fdc1              # double 9.6406709999999993
	.quad	0x401cb4b90214ad36              # double 7.1764869999999998
	.quad	0x401e38ecd8dbcec8              # double 7.5555909999999997
	.quad	0x400ae470a808c826              # double 3.3615430000000002
	.quad	0x40224d34373f316e              # double 9.1507889999999996
	.quad	0x4023375b5fa22707              # double 9.6081190000000002
	.quad	0x3ff4f6c050bd87b5              # double 1.3102419999999999
	.quad	0x4020f9a4df47f994              # double 8.4875860000000002
	.quad	0x3ffa7f69014b599b              # double 1.6561060000000001
	.quad	0x3ff9a94ff0025bfb              # double 1.603836
	.quad	0x3fda6ca46e08f217              # double 0.412881
	.quad	0x400df645a1cac083              # double 3.74525
	.quad	0x401b669b9d7fd827              # double 6.8502029999999996
	.quad	0x40209501c0ca600b              # double 8.291029
	.quad	0x3fe57b69984a0e41              # double 0.671315
	.quad	0x3fbceca686e7e62e              # double 0.112986
	.quad	0x4020e0d92fb19e73              # double 8.4391569999999998
	.quad	0x401e2b256ffc115e              # double 7.542135
	.quad	0x400522b0ea18372e              # double 2.6419389999999998
	.quad	0x3fffdcd1c7de5083              # double 1.991411
	.quad	0x3fcbc182ecaeea64              # double 0.21684300000000001
	.quad	0x400e953ef6b5d463              # double 3.8228740000000001
	.quad	0x401a1e69270b06c4              # double 6.5296979999999998
	.quad	0x4017f697f1f9ad00              # double 5.9908140000000003
	.quad	0x4022061cde5d1809              # double 9.0119389999999999
	.quad	0x400e69a2c669057d              # double 3.80158
	.quad	0x401a067dbb16c1e3              # double 6.5063389999999997
	.quad	0x3ffe40abf76a2f49              # double 1.8907890000000001
	.quad	0x40127dea897635e7              # double 4.6229649999999998
	.quad	0x401e65c896dd26b7              # double 7.5993979999999998
	.quad	0x401b79aa60913a50              # double 6.8688140000000004
	.quad	0x3ff4fc3c5bd0e12f              # double 1.3115810000000001
	.quad	0x3fe0d3e920c069e8              # double 0.525868
	.quad	0x401ea52f3c2dadb8              # double 7.6613129999999998
	.quad	0x3fea8eef1bac2df1              # double 0.82994800000000002
	.quad	0x402309ad85dfa872              # double 9.5189020000000006
	.quad	0x4019c4c447c30d30              # double 6.4421549999999996
	.quad	0x40063e7210be9425              # double 2.780491
	.quad	0x3fd1d206c8711d7a              # double 0.27844400000000002
	.quad	0x3ff9374ff865d7cb              # double 1.576004
	.quad	0x401a78e432441feb              # double 6.6180580000000004
	.quad	0x4023e1eba6aca793              # double 9.9412509999999993
	.quad	0x400ffb1d0c804103              # double 3.997614
	.quad	0x400146bd6e8af816              # double 2.1595409999999999
	.quad	0x3fffa9813879c411              # double 1.9788829999999999
	.quad	0x40108fcc9ea9a3d3              # double 4.1404290000000001
	.quad	0x401b77008a697aee              # double 6.8662130000000001
	.quad	0x3fcd3d102bc72e27              # double 0.22842599999999999
	.quad	0x3ff4f1a1986b9c30              # double 1.3089919999999999
	.quad	0x3fe728f7db6e5040              # double 0.72375100000000003
	.quad	0x3fea6b59146e4c0e              # double 0.825604
	.quad	0x40218da469d7342f              # double 8.7766450000000003
	.quad	0x4018c2aae297396d              # double 6.190105
	.quad	0x3fef922b7baecd08              # double 0.98659300000000005
	.quad	0x4019da276b7ed41b              # double 6.4630409999999996
	.quad	0x402165783dff3f10              # double 8.6981830000000002
	.quad	0x4015f1294573a798              # double 5.4855090000000004
	.quad	0x401862a77a2cecc8              # double 6.0963419999999999
	.quad	0x400d198958d9b5e9              # double 3.6374689999999998
	.quad	0x400b61869835158c              # double 3.4226200000000002
	.quad	0x4018f68cef672b88              # double 6.2407719999999998
	.quad	0x4004b33b10774688              # double 2.5875149999999998
	.quad	0x3ff310a45d41fa76              # double 1.1915629999999999
	.quad	0x40222aad1d041cc5              # double 9.0833519999999996
	.quad	0x40111b3e9a6f826f              # double 4.2766060000000001
	.quad	0x4004cc343b70ef56              # double 2.5997089999999998
	.quad	0x3ffa63a29c779a6b              # double 1.6493249999999999
	.quad	0x4010ca365cb35f3d              # double 4.1974729999999996
	.quad	0x400fbf79420b3d4b              # double 3.968493
	.quad	0x401027a63736cdf2              # double 4.0387199999999996
	.quad	0x400894677b395c42              # double 3.0724629999999999
	.quad	0x401dcb71b8aa0019              # double 7.4486759999999999
	.quad	0x3fde24e160d887ec              # double 0.471001
	.quad	0x40144e56cd6c2efd              # double 5.0765029999999998
	.quad	0x401deba5a038194c              # double 7.480124
	.quad	0x40215aea960b6fa0              # double 8.6775710000000004
	.quad	0x401a8be5d9e40c84              # double 6.6366189999999996
	.quad	0x4012b8ef77f27fe5              # double 4.6806010000000002
	.quad	0x401e0efbb0e5e679              # double 7.5146319999999997
	.quad	0x4021ed0acc0bdcad              # double 8.9629729999999999
	.quad	0x4020b2c710cb295f              # double 8.3491750000000007
	.quad	0x401e3d4a1ad6451c              # double 7.5598530000000004
	.quad	0x401ddc34c1a8ac5c              # double 7.4650449999999999
	.quad	0x401791361dc93ea3              # double 5.8918080000000002
	.quad	0x3fb324fa8b4bf8fd              # double 0.074783000000000002
	.quad	0x401bb7f84449dbec              # double 6.9296579999999999
	.quad	0x400c5656eefa1e3f              # double 3.5421580000000001
	.quad	0x40124c8b0079a283              # double 4.5747489999999997
	.quad	0x40199e075f6fd220              # double 6.404325
	.quad	0x401340bd87b56b87              # double 4.8132229999999998
	.quad	0x3fe5d9791819d239              # double 0.68279699999999999
	.quad	0x3ffacc1ebc83a96d              # double 1.6748339999999999
	.quad	0x401a6ba51a005c46              # double 6.6051219999999997
	.quad	0x3ff4ffc6540cc78f              # double 1.3124450000000001
	.quad	0x401a058298cc1440              # double 6.5053809999999999
	.quad	0x401b04db59578a2b              # double 6.7547430000000004
	.quad	0x4023e4a1cef240fb              # double 9.9465470000000006
	.quad	0x4004bb6dca07f66f              # double 2.5915180000000002
	.quad	0x3fe7b599aa60913a              # double 0.74091799999999997
	.quad	0x3fbc6455eaee2004              # double 0.110906
	.quad	0x401ccc282c6ef3d4              # double 7.1993720000000003
	.quad	0x401de1276fb09204              # double 7.4698770000000003
	.quad	0x400ea57eaa2a0a96              # double 3.8308080000000002
	.quad	0x40186d466f5019f4              # double 6.1067140000000002
	.quad	0x401967036c9c0a8d              # double 6.3505989999999999
	.quad	0x3ff5c8765ba6efc3              # double 1.3614409999999999
	.quad	0x40038caab8a5ce5b              # double 2.4436849999999999
	.quad	0x3fe8cb09e98dcdb3              # double 0.77478499999999995
	.quad	0x400f6ed1394317ad              # double 3.9291100000000001
	.quad	0x3ff45f601797cc3a              # double 1.273285
	.quad	0x40236152d234eb9a              # double 9.6900849999999998
	.quad	0x401c017a46173b86              # double 7.0014430000000001
	.quad	0x4023e7d21ff2e48f              # double 9.9527750000000008
	.quad	0x4023d3790fb65669              # double 9.9130330000000004
	.quad	0x3fc293c89f40a287              # double 0.14513499999999999
	.quad	0x4009b2788db0574b              # double 3.2121439999999999
	.quad	0x401166adf71eafee              # double 4.3502729999999996
	.quad	0x4018d102363b2570              # double 6.20411
	.quad	0x40234365a9a80496              # double 9.6316349999999993
	.quad	0x4022c3d96638433d              # double 9.3825179999999992
	.quad	0x40231d6dc1a47a9e              # double 9.5574779999999997
	.quad	0x40115acaff6d3309              # double 4.3386649999999998
	.quad	0x4022809eba6aca79              # double 9.2512109999999996
	.quad	0x40190c215b9a5a8a              # double 6.2618460000000002
	.quad	0x3fe008c8259e1f3a              # double 0.50107199999999996
	.quad	0x40062ad57bc7f77b              # double 2.770915
	.quad	0x400632cf95d4e8fb              # double 2.77481
	.quad	0x400f28db0574b407              # double 3.894949
	.quad	0x401efec39799e519              # double 7.748793
	.quad	0x3ff7d7342edbb59e              # double 1.49004
	.quad	0x402302a2c2374795              # double 9.5051480000000001
	.quad	0x4008c032db1e9f27              # double 3.0938469999999998
	.quad	0x401ed7891e215337              # double 7.7104840000000001
	.quad	0x402382374794ea07              # double 9.7543279999999992
	.quad	0x4020af7fae3608d1              # double 8.3427710000000008
	.quad	0x402225b35b0bbf51              # double 9.0736340000000002
	.quad	0x400a1434a01abd1b              # double 3.2598660000000002
	.quad	0x4019a233df2a9d62              # double 6.4084009999999996
	.quad	0x40235e262cba732e              # double 9.6838850000000001
	.quad	0x3fca48a58b3f63c3              # double 0.205342
	.quad	0x401d6099e0e73605              # double 7.3443370000000003
	.quad	0x4002302de00d1b71              # double 2.2735249999999998
	.quad	0x3fd7acffa7eb6bf4              # double 0.36993399999999999
	.quad	0x401983a2df9378ee              # double 6.3785509999999999
	.quad	0x400560b135979182              # double 2.6722130000000002
	.quad	0x3fb288df37329c34              # double 0.072400999999999993
	.quad	0x3fe2dcd0bb6ed677              # double 0.58945499999999995
	.quad	0x3ff8c9ea9a3d2d88              # double 1.549296
	.quad	0x4011827bb2fec56d              # double 4.3774249999999997
	.quad	0x402088027d88c1db              # double 8.265644
	.quad	0x4012b8644523f67f              # double 4.6800699999999997
	.quad	0x3ff88def416bdb1a              # double 1.5346519999999999
	.quad	0x400215097c80841f              # double 2.2602720000000001
	.quad	0x401983f4a98aa865              # double 6.3788629999999999
	.quad	0x4011372c94b380cb              # double 4.3038809999999996
	.quad	0x401f210be9424e59              # double 7.7822719999999998
	.quad	0x40202b98e9707182              # double 8.0851509999999998
	.quad	0x401c61fc08fa7a85              # double 7.095688
	.quad	0x401068323358f2e0              # double 4.1017539999999997
	.quad	0x401e79fb1e18efbb              # double 7.6191219999999999
	.quad	0x4023607f88765ba7              # double 9.6884730000000001
	.quad	0x3feb682b62845996              # double 0.85646599999999995
	.quad	0x3fdc71971c10d7bf              # double 0.44443300000000002
	.quad	0x3ff267d566cf41f2              # double 1.15035
	.quad	0x4012738e6d15ad10              # double 4.6128479999999996
	.quad	0x4014b2fb19e731d3              # double 5.1747860000000001
	.quad	0x40209bc4b09e98dd              # double 8.3042350000000003
	.quad	0x3ff4d86876e1dead              # double 1.302834
	.quad	0x401c594d94078961              # double 7.0872099999999998
	.quad	0x401b434c5da6a444              # double 6.8157209999999999
	.quad	0x4003c5ffa3b9ae0c              # double 2.471679
	.quad	0x400cc22ccb3a2596              # double 3.5948120000000001
	.quad	0x40148d9d3458cd21              # double 5.1382950000000003
	.quad	0x401e87aeddce7cd0              # double 7.6325029999999998
	.quad	0x40117c2ca148ba84              # double 4.371264
	.quad	0x4023bddbfceb7889              # double 9.8708189999999991
	.quad	0x40006d0dcfcc5b8e              # double 2.0532490000000001
	.quad	0x400beaa2a0a95853              # double 3.4895679999999998
	.quad	0x4021bb78ab0c88a4              # double 8.8661549999999991
	.quad	0x40194b5b70691ea8              # double 6.3235910000000004
	.quad	0x400eb5c209246bf0              # double 3.838749
	.quad	0x40203f02e6644d87              # double 8.1230689999999992
	.quad	0x4009f8c9752977c9              # double 3.2464780000000002
	.quad	0x4022e2ffb04ee7c5              # double 9.4433570000000006
	.quad	0x40129d790752da98              # double 4.6537819999999996
	.quad	0x40202d48ecd8dbcf              # double 8.0884470000000004
	.quad	0x401bdcac4b4d056c              # double 6.9655009999999997
	.quad	0x4019fde2ac322292              # double 6.497935
	.quad	0x3fdfce52deca2553              # double 0.49696800000000002
	.quad	0x400f05929670196e              # double 3.8777210000000002
	.quad	0x3fd206748e475600              # double 0.28164400000000001
	.quad	0x401ea601bc98a223              # double 7.6621160000000001
	.quad	0x3fc8158fb43d89ce              # double 0.18815799999999999
	.quad	0x4019202107b78466              # double 6.2813759999999998
	.quad	0x4023fd26fa3fcc9f              # double 9.9944380000000005
	.quad	0x4013be4a7b4e54f8              # double 4.9358310000000003
	.quad	0x401ed72e275ab7dc              # double 7.7101369999999996
	.quad	0x3ff87a732df505d1              # double 1.529895
	.quad	0x3feefb02d59d55e7              # double 0.96814100000000002
	.quad	0x40158af7d30ad46f              # double 5.3857109999999997
	.quad	0x4011b7008a697aee              # double 4.4287130000000001
	.quad	0x40132fcf80dc3372              # double 4.7966899999999999
	.quad	0x4018fba301216830              # double 6.2457390000000004
	.quad	0x4017d7778dd616f8              # double 5.9604169999999996
	.quad	0x402300c7e28240b8              # double 9.5015250000000008
	.quad	0x401621ac57e23f25              # double 5.5328840000000001
	.quad	0x4017385f8d2e514c              # double 5.8050519999999999
	.quad	0x4015eb866e43aa7a              # double 5.4800050000000002
	.quad	0x40160698fe69270b              # double 5.506443
	.quad	0x4019a7ad8e432442              # double 6.413748
	.quad	0x400c279bbadc0981              # double 3.5193400000000001
	.quad	0x402391bc77143394              # double 9.7846410000000005
	.quad	0x401521a79fec99f2              # double 5.2828660000000003
	.quad	0x40054b702602c908              # double 2.661835
	.quad	0x40158bdf8f473040              # double 5.3865949999999998
	.quad	0x3ff0a9af5ba2be06              # double 1.0414270000000001
	.quad	0x400f356fb8f57f73              # double 3.9010919999999998
	.quad	0x4010582730c67169              # double 4.086087
	.quad	0x3f457689ca18bd66              # double 6.5499999999999998E-4
	.quad	0x4019d5510d38cda7              # double 6.4583170000000001
	.quad	0x400bb3db7f173754              # double 3.4628209999999999
	.quad	0x400a16a161e4f766              # double 3.26105
	.quad	0x400610f8c64fdb0a              # double 2.7582870000000002
	.quad	0x40188c3fc43b2dd3              # double 6.1369619999999996
	.quad	0x402352f05a708ede              # double 9.6619899999999994
	.quad	0x402168f4f93bc0a0              # double 8.7049939999999992
	.quad	0x3ffea327ed84d339              # double 1.914833
	.quad	0x4022779d909f1f15              # double 9.2336240000000007
	.quad	0x400db865d7cb2d90              # double 3.7150379999999998
	.quad	0x401a7b13165d3997              # double 6.62019
	.quad	0x40176cb9a9da597d              # double 5.8561769999999997
	.quad	0x4015286162f166e0              # double 5.289434
	.quad	0x4001f4ea8da7f3cf              # double 2.2445879999999998
	.quad	0x401a764a16a48733              # double 6.6155169999999996
	.quad	0x401685a682b62846              # double 5.6305180000000004
	.quad	0x40208a5e99e94ab2              # double 8.2702530000000003
	.quad	0x401d12ed783dff3f              # double 7.2684839999999999
	.quad	0x4020b931876188b1              # double 8.3617059999999999
	.quad	0x4015928d002e2329              # double 5.393116
	.quad	0x3fe6e97d06bbdbe4              # double 0.71600200000000003
	.quad	0x4013f2b51bd61f5c              # double 4.9870190000000001
	.quad	0x4009ef36ef8055fc              # double 3.2418040000000001
	.quad	0x40025235f8099179              # double 2.2901419999999999
	.quad	0x401eef77af64063a              # double 7.7338550000000001
	.quad	0x3fdf7f84449dbec2              # double 0.49215799999999998
	.quad	0x3fc7945b6c3760bf              # double 0.18421499999999999
	.quad	0x400b870eb24a6a87              # double 3.4409459999999998
	.quad	0x3ff35844d013a92a              # double 1.20905
	.quad	0x4004b68d759ee88e              # double 2.589137
	.quad	0x4021e4202d9cf13d              # double 8.9455580000000001
	.quad	0x401ae05c4651f3e9              # double 6.7191020000000004
	.quad	0x402069819d2391d5              # double 8.2060669999999991
	.quad	0x400676c69b5a63fa              # double 2.8079960000000002
	.quad	0x400ce90de093532e              # double 3.6137959999999998
	.quad	0x4003304f6dfc5cdd              # double 2.3985889999999999
	.quad	0x40207c7bcc2938de              # double 8.2431319999999992
	.quad	0x4019acb3a2595bbc              # double 6.4186540000000001
	.quad	0x401b78aa433508f6              # double 6.8678369999999997
	.quad	0x4022bedfc5cdd50b              # double 9.3728010000000008
	.quad	0x4020fd568e820e63              # double 8.4948010000000007
	.quad	0x401c0faa044ae85c              # double 7.0152970000000003
	.quad	0x400c2de5d18090b4              # double 3.522411
	.quad	0x401279f51697f1fa              # double 4.6190990000000003
	.quad	0x40173886162f166e              # double 5.805199
	.quad	0x4021a71f79420b3d              # double 8.8264119999999995
	.quad	0x3ff857d5a9eb2075              # double 1.521444
	.quad	0x400773d96638433d              # double 2.9315669999999998
	.quad	0x3fb21c68ec52a412              # double 0.070746000000000003
	.quad	0x400318c7e28240b8              # double 2.3871000000000002
	.quad	0x4015a020817fc760              # double 5.4063739999999996
	.quad	0x400894a0a0f4d7ae              # double 3.0725720000000001
	.quad	0x4016ce6e221c8a7a              # double 5.7015919999999998
	.quad	0x4012f6a9c560c7c1              # double 4.740882
	.quad	0x4006088c60cbf2b2              # double 2.7541739999999999
	.quad	0x401942d9cf13ceea              # double 6.3152840000000001
	.quad	0x3ffdee7a311e85fd              # double 1.870722
	.quad	0x40191e4f765fd8ae              # double 6.2796000000000003
	.quad	0x4023d0a5efe93187              # double 9.9075159999999993
	.quad	0x4019cca5375c8da0              # double 6.4498490000000004
	.quad	0x400ad74b40703298              # double 3.355124
	.quad	0x3feb6e49f51697f2              # double 0.857213
	.quad	0x4023525ca29845dd              # double 9.6608630000000008
	.quad	0x402107f88765ba6f              # double 8.515568
	.quad	0x4022be514c22ee42              # double 9.3717140000000008
	.quad	0x401bd029f16b11c7              # double 6.9532850000000002
	.quad	0x4023cc4ae85b9e8c              # double 9.8990089999999995
	.quad	0x3fe18e29f9ce8d97              # double 0.54860399999999998
	.quad	0x3ff7e52157689ca2              # double 1.4934400000000001
	.quad	0x400df7318fc50481              # double 3.7456999999999998
	.quad	0x401693a08398a655              # double 5.6441670000000004
	.quad	0x402223c74fb549f9              # double 9.0698799999999995
	.quad	0x40159e55c0fcb4f2              # double 5.4046240000000001
	.quad	0x401fa224edf61240              # double 7.9083439999999996
	.quad	0x401ccfd4bf0995ab              # double 7.20296
	.quad	0x40158597d49d7ba6              # double 5.3804619999999996
	.quad	0x401ca9d0e991ff71              # double 7.1658359999999997
	.quad	0x3ff74057082491b0              # double 1.4532080000000001
	.quad	0x4013b5810624dd2f              # double 4.9272499999999999
	.quad	0x4000cd844d013a93              # double 2.1003500000000002
	.quad	0x3ff076f4be835dee              # double 1.029042
	.quad	0x3ff90054ef459d99              # double 1.562581
	.quad	0x4004fee1bd1ed9e0              # double 2.6244540000000001
	.quad	0x4012fcb1897a67a5              # double 4.7467709999999999
	.quad	0x4011bf5a1016ce79              # double 4.4368670000000003
	.quad	0x3ffea4bcad9ad85e              # double 1.915219
	.quad	0x401700af5fd47bee              # double 5.7506690000000003
	.quad	0x400d16c61522a6f4              # double 3.63612
	.quad	0x4021a6b4a66559f7              # double 8.8255970000000001
	.quad	0x401e37204295a6c6              # double 7.5538340000000002
	.quad	0x3fc202f2f9873ffb              # double 0.14071500000000001
	.quad	0x401aebc9cd3e0bd4              # double 6.7302619999999997
	.quad	0x40213d64d7f0ed3e              # double 8.6199100000000008
	.quad	0x3fd545564b662fe0              # double 0.33235700000000001
	.quad	0x400474070329802c              # double 2.556654
	.quad	0x3fead78c436fc159              # double 0.838812
	.quad	0x3fdd3c89f40a2878              # double 0.45682
	.quad	0x401088da3c21187e              # double 4.1336449999999996
	.quad	0x3fe3db7281fd9ba2              # double 0.62053800000000003
	.quad	0x400865d206c8711d              # double 3.0497169999999998
	.quad	0x40177465a57646ae              # double 5.8636689999999998
	.quad	0x401d21f75104d552              # double 7.2831700000000001
	.quad	0x4015171a3b14a904              # double 5.2725609999999996
	.quad	0x4022652c7b890d5a              # double 9.1976049999999994
	.quad	0x4022d938583621fb              # double 9.424258
	.quad	0x3fcd743e963dc487              # double 0.23011000000000001
	.quad	0x3ff125b9628cbd12              # double 1.0717099999999999
	.quad	0x4022e134efcbd556              # double 9.4398569999999999
	.quad	0x401d5c4d22c881e4              # double 7.3401379999999996
	.quad	0x401d128134480629              # double 7.2680709999999999
	.quad	0x400959d883ba3444              # double 3.1688700000000001
	.quad	0x3fe66798958d9b5f              # double 0.70014600000000005
	.quad	0x4023efd1bb4916ca              # double 9.9683969999999995
	.quad	0x401da1d57ff9b563              # double 7.4080409999999999
	.quad	0x401787481b21c476              # double 5.8821110000000001
	.quad	0x400237b2031ceaf2              # double 2.2771949999999999
	.quad	0x4018413f4a98aa86              # double 6.0637179999999997
	.quad	0x4020389dadfb506e              # double 8.1105780000000003
	.quad	0x4011533eff195033              # double 4.3312949999999999
	.quad	0x3fe13163baba7b91              # double 0.53727899999999995
	.quad	0x3ffd2fd32c625e9a              # double 1.824176
	.quad	0x4018a2cd39da1661              # double 6.1589859999999996
	.quad	0x401b7bcd35a85879              # double 6.8708999999999998
	.quad	0x4018ff202107b784              # double 6.2491459999999996
	.quad	0x401c2c60029f16b1              # double 7.0433349999999999
	.quad	0x400884bcad9ad85e              # double 3.064813
	.quad	0x3ffede321a2e7f6f              # double 1.9292469999999999
	.quad	0x402356aa6d267408              # double 9.6692689999999998
	.quad	0x4014830ced4e4c94              # double 5.1279789999999998
	.quad	0x401865ce18266773              # double 6.0994190000000001
	.quad	0x3ff4705c896dd26b              # double 1.2774319999999999
	.quad	0x401eaa30984e3fff              # double 7.666201
	.quad	0x401de3f52fc2656b              # double 7.4726150000000002
	.quad	0x40009f926c7eae5c              # double 2.0779160000000001
	.quad	0x401add19157abb88              # double 6.715916
	.quad	0x402358bda9435ac9              # double 9.6733220000000006
	.quad	0x3fa7911cf355cd92              # double 0.046029
	.quad	0x4020b9b328b6d86f              # double 8.3626950000000004
	.quad	0x3fe10ed1bf7ad4b2              # double 0.53305899999999995
	.quad	0x40215f8b1572580c              # double 8.6866079999999996
	.quad	0x4017b8d9f90539fc              # double 5.9305190000000003
	.quad	0x3ffb48509bf9c62a              # double 1.705155
	.quad	0x40198cb5fe542e55              # double 6.3874129999999996
	.quad	0x400f8098915bdd76              # double 3.9377909999999998
	.quad	0x4022a3599aa60914              # double 9.3190430000000006
	.quad	0x402018d4fdf3b646              # double 8.0485000000000007
	.quad	0x40235a4d8fd5cb79              # double 9.6763729999999998
	.quad	0x400ac73ffac1d29e              # double 3.3472900000000001
	.quad	0x40188c03361565c3              # double 6.1367310000000002
	.quad	0x40184813879c4114              # double 6.0703870000000002
	.quad	0x40009d816aceaaf3              # double 2.0769069999999998
	.quad	0x4004ec2acb85a4f0              # double 2.615316
	.quad	0x4016c10d7be9856a              # double 5.6885279999999998
	.quad	0x40138ed245b291b8              # double 4.8894739999999999
	.quad	0x402280e736049ecb              # double 9.2517639999999997
	.quad	0x400086e5471715c6              # double 2.0658669999999999
	.quad	0x3fe5d831f03d145e              # double 0.68264100000000005
	.quad	0x4021878c21e1d218              # double 8.7647410000000008
	.quad	0x40173df47f993d53              # double 5.8105029999999998
	.quad	0x401e16b723ee1bd2              # double 7.5221830000000001
	.quad	0x401fa111276fb092              # double 7.907292
	.quad	0x40101e1f3a57eaa3              # double 4.0294160000000003
	.quad	0x4012b00fba8826ab              # double 4.6719350000000004
	.quad	0x400bc573a797891e              # double 3.4714119999999999
	.quad	0x4021bebe9c886163              # double 8.8725480000000001
	.quad	0x400fd702602c9082              # double 3.9799850000000001
	.quad	0x401c84f765fd8adb              # double 7.1298500000000002
	.quad	0x401b6bb8c32a8c9c              # double 6.8551970000000004
	.quad	0x401f41aac53b0814              # double 7.8141280000000002
	.quad	0x4021a56a161e4f76              # double 8.8230749999999993
	.quad	0x402000b630a91538              # double 8.0013900000000007
	.quad	0x40130e18efbb0e5e              # double 4.7637669999999996
	.quad	0x401ebdda48b65237              # double 7.6854029999999999
	.quad	0x4020803a96d4c33b              # double 8.2504469999999994
	.quad	0x40211af37fbefd00              # double 8.5526389999999992
	.quad	0x4013ffe004b7f5a5              # double 4.9998779999999998
	.quad	0x4014f5cfaacd9e84              # double 5.2400500000000001
	.quad	0x40129f18c9fb6135              # double 4.6553680000000002
	.quad	0x401d91b71758e219              # double 7.3922999999999996
	.quad	0x4021c58dde7a743a              # double 8.8858479999999993
	.quad	0x3ff7c0852b4d8ba4              # double 1.484502
	.quad	0x3fecee3715400325              # double 0.90407899999999997
	.quad	0x4015d1e42e126202              # double 5.4549719999999997
	.quad	0x4018a01b003686a5              # double 6.1563530000000002
	.quad	0x402320fe260b2c84              # double 9.5644390000000001
	.quad	0x40216ea7ef9db22d              # double 8.7161249999999999
	.quad	0x4013a569b17481b2              # double 4.9115359999999999
	.quad	0x40183dbb9cf9a06a              # double 6.0602859999999996
	.quad	0x40157b341e14bdfd              # double 5.3703159999999999
	.quad	0x3ff9ca65492ff4ba              # double 1.6119129999999999
	.quad	0x401226af46aa087d              # double 4.5377780000000003
	.quad	0x40163791c4b90215              # double 5.5542670000000003
	.quad	0x400e5841248d7e02              # double 3.7930929999999998
	.quad	0x401e7ec311622813              # double 7.6237909999999997
	.quad	0x400ffe1869835159              # double 3.9990700000000001
	.quad	0x3fe03a08398a6549              # double 0.50708399999999998
	.quad	0x4022b61693c03bc5              # double 9.3556410000000003
	.quad	0x401fdc4d65e46067              # double 7.9651389999999997
	.quad	0x4018a6ece13f4a99              # double 6.1630130000000003
	.quad	0x401d229e0a41a262              # double 7.2838060000000002
	.quad	0x40106ef8055fbb51              # double 4.1083679999999996
	.quad	0x4008a561d4306e5d              # double 3.0807530000000001
	.quad	0x4023c9b413986339              # double 9.8939520000000005
	.quad	0x400dd9274e22a2c2              # double 3.7310319999999999
	.quad	0x40141bfb9bed30f0              # double 5.0273269999999997
	.quad	0x400908a7a41e57da              # double 3.1292260000000001
	.quad	0x402269919ac79703              # double 9.2061890000000002
	.quad	0x40037df2a9d627bf              # double 2.4364979999999998
	.quad	0x4020a7049a9973da              # double 8.3262070000000001
	.quad	0x4022029ed3953dea              # double 9.0051179999999995
	.quad	0x3fed83d577963993              # double 0.92234300000000002
	.quad	0x400ab39085f4a127              # double 3.3376779999999999
	.quad	0x3fef732df505d0fa              # double 0.98280999999999996
	.quad	0x3fdc9a7c17a89332              # double 0.44692900000000002
	.quad	0x4010497edc7ef178              # double 4.0717730000000003
	.quad	0x4012535efa615a8e              # double 4.5814170000000001
	.quad	0x402295aa715831f0              # double 9.2923159999999996
	.quad	0x401cfbda9435ac8a              # double 7.2459509999999998
	.quad	0x400474bcf0b6b6e1              # double 2.5570010000000001
	.quad	0x402198b2c83ec893              # double 8.7982390000000006
	.quad	0x401c2f284167a95d              # double 7.0460520000000004
	.quad	0x401967e9531550ca              # double 6.3514759999999999
	.quad	0x3ffc07a072d1aeb4              # double 1.751862
	.quad	0x401931e4b44a1f08              # double 6.298724
	.quad	0x400907e8ccdd93c4              # double 3.1288619999999998
	.quad	0x400b388ebcc6c54c              # double 3.4026160000000001
	.quad	0x4021565a14488c61              # double 8.6686560000000004
	.quad	0x40230c88c60cbf2b              # double 9.5244809999999997
	.quad	0x4022d4f4623d0bfa              # double 9.4159269999999999
	.quad	0x401297168f8e7ddd              # double 4.6475470000000003
	.quad	0x4001644f1a1986ba              # double 2.1739790000000001
	.quad	0x4010c04790b84988              # double 4.187773
	.quad	0x40156cb85a4f00ef              # double 5.3561719999999999
	.quad	0x40129358298cc144              # double 4.643891
	.quad	0x4019dce8533b1077              # double 6.4657299999999998
	.quad	0x4023e63497b7414a              # double 9.9496199999999995
	.quad	0x3ff54232096787cf              # double 1.3286610000000001
	.quad	0x40051cc20d5629d8              # double 2.6390419999999999
	.quad	0x40235571f36262cc              # double 9.6668850000000006
	.quad	0x401c0b7cbb3c8191              # double 7.0112180000000004
	.quad	0x40106267839cd812              # double 4.0960979999999996
	.quad	0x40202608aefb2aae              # double 8.0742849999999997
	.quad	0x3fe5b7457c0b1359              # double 0.67862199999999995
	.quad	0x4013445564b662fe              # double 4.816732
	.quad	0x40030a29845dc832              # double 2.3799619999999999
	.quad	0x4020007d6f976790              # double 8.0009569999999997
	.quad	0x4022a1876188b114              # double 9.3154859999999999
	.quad	0x3ffdf8c0053e2d62              # double 1.87323
	.quad	0x40060964e8b7e4de              # double 2.7545869999999999
	.quad	0x4000ebfd2e946801              # double 2.1152289999999998
	.quad	0x4003c40d0aaa7ded              # double 2.4707279999999998
	.quad	0x400c390752da9867              # double 3.5278459999999998
	.quad	0x401e9778140dd3fe              # double 7.6479189999999999
	.quad	0x400b7dfb0d51f81a              # double 3.4365139999999998
	.quad	0x40101c308feac42f              # double 4.0275290000000004
	.quad	0x401652bcb5fe542e              # double 5.5807979999999997
	.quad	0x401c0c215b9a5a8a              # double 7.0118460000000002
	.quad	0x401f339fba450acc              # double 7.800414
	.quad	0x3fe5c20f6f08cc57              # double 0.67993899999999996
	.quad	0x40014fe718a86d72              # double 2.164015
	.quad	0x401a7a2a90cd423e              # double 6.6193030000000004
	.quad	0x3faca42aed139431              # double 0.055939999999999997
	.quad	0x3ff3c1b866e43aa8              # double 1.2347950000000001
	.quad	0x401f9d948dc11e43              # double 7.9038870000000001
	.quad	0x3fe9f09fa54c5543              # double 0.81062299999999998
	.quad	0x4016a197e5647347              # double 5.6578059999999999
	.quad	0x4021872a38b8ae32              # double 8.7639940000000003
	.quad	0x4000b1950331e3a8              # double 2.0867100000000001
	.quad	0x401b3ddca4b124d1              # double 6.8104120000000004
	.quad	0x401f8cebbba55d1c              # double 7.8876179999999998
	.quad	0x400d65a1cac08312              # double 3.6746249999999998
	.quad	0x40000a1a500d5e8d              # double 2.0049329999999999
	.quad	0x400962467be553ac              # double 3.1729859999999999
	.quad	0x401103ce2089e343              # double 4.2537159999999998
	.quad	0x4013065dbfceb789              # double 4.7562170000000004
	.quad	0x4020810a350d2807              # double 8.2520310000000006
	.quad	0x4021551b2e59af9f              # double 8.6662230000000005
	.quad	0x4022bc0096feb4a6              # double 9.3671919999999993
	.quad	0x40231ade8709741d              # double 9.5524789999999999
	.quad	0x401565093964a59c              # double 5.348668
	.quad	0x400f4a7b4e54f7a9              # double 3.911368
	.quad	0x4012cbab649d388b              # double 4.6988960000000004
	.quad	0x3ff622bbecaab8a6              # double 1.38348
	.quad	0x402002bc72e275ab              # double 8.0053439999999991
	.quad	0x4011a6d97b30f8c6              # double 4.4129389999999997
	.quad	0x3ff7f01fb82c2bd8              # double 1.496124
	.quad	0x400bb58969a0ad8a              # double 3.463641
	.quad	0x401b45fe974a3401              # double 6.8183540000000002
	.quad	0x40235f609dcf8940              # double 9.6862840000000005
	.quad	0x4023cd06573215fd              # double 9.9004390000000004
	.quad	0x4017340e5a35d67c              # double 5.8008360000000003
	.quad	0x401a3d5cfaacd9e8              # double 6.5599249999999998
	.quad	0x4021e8e6f2e8c048              # double 8.9548869999999994
	.quad	0x40223a66fd651b0d              # double 9.1140670000000004
	.quad	0x40086b04ab606b7b              # double 3.0522550000000002
	.quad	0x3fc0fd21ff2e48e9              # double 0.13272500000000001
	.quad	0x40184f67b1c0010c              # double 6.0775439999999996
	.quad	0x4018b1769a91105e              # double 6.1733039999999999
	.quad	0x4016ab10ba6266fd              # double 5.6670559999999996
	.quad	0x4019929d40ee06d9              # double 6.3931779999999998
	.quad	0x4019be2bcf91a32b              # double 6.4357139999999999
	.quad	0x3ffc8eaaf35e310e              # double 1.7848310000000001
	.quad	0x3ff2c3c4b09e98dd              # double 1.172795
	.quad	0x4023440767d34df0              # double 9.6328689999999995
	.quad	0x401386672fba01ef              # double 4.8812530000000001
	.quad	0x40208c199fe43676              # double 8.2736330000000002
	.quad	0x4022475ff609dcf9              # double 9.1394040000000007
	.quad	0x40197cae21101b00              # double 6.3717579999999998
	.quad	0x3fec75c6c11a1123              # double 0.88937699999999997
	.quad	0x401e21832fcac8e7              # double 7.5327270000000003
	.quad	0x3ff1e3ac0c62e4d2              # double 1.1180840000000001
	.quad	0x4010a40895d0b73d              # double 4.1601889999999999
	.quad	0x40132c768dfbd6a6              # double 4.7934210000000004
	.quad	0x402257f4dbdf8f47              # double 9.1717899999999997
	.quad	0x3fe33845564b6630              # double 0.60061900000000001
	.quad	0x4010773797460243              # double 4.1164230000000002
	.quad	0x40146e37585be1a8              # double 5.1076329999999999
	.quad	0x401db20ddc619546              # double 7.4238809999999997
	.quad	0x401c777ab324851b              # double 7.1166790000000004
	.quad	0x4022f0a8b08dd1e5              # double 9.4700369999999995
	.quad	0x4011437f38c5436c              # double 4.3159150000000004
	.quad	0x3fee0986fcdee350              # double 0.93866300000000003
	.quad	0x4012803c07ee0b0b              # double 4.625229
	.quad	0x3ff44ecfa69be09c              # double 1.2692410000000001
	.quad	0x40110d2bb23571d2              # double 4.2628620000000002
	.quad	0x401d1b1c864883fd              # double 7.2764759999999997
	.quad	0x4021b0c176577532              # double 8.8452260000000003
	.quad	0x4022af10667f90da              # double 9.3419220000000003
	.quad	0x3feeda76d97b30f9              # double 0.96416800000000002
	.quad	0x40028dee34fc610f              # double 2.319302
	.quad	0x40097154003254e7              # double 3.1803360000000001
	.quad	0x40008fdf3b645a1d              # double 2.0702500000000001
	.quad	0x401de3700474d9c7              # double 7.4721070000000003
	.quad	0x3ff50fa48301a7a0              # double 1.316319
	.quad	0x402201e215336dec              # double 9.0036780000000007
	.quad	0x40220b05d95dd4c7              # double 9.0215289999999992
	.quad	0x400715992428d435              # double 2.8855460000000002
	.quad	0x402239950331e3a8              # double 9.1124650000000003
	.quad	0x40136935fc3b4f61              # double 4.8527449999999996
	.quad	0x4009ebf22c01e68a              # double 3.240208
	.quad	0x4013a98288051c9f              # double 4.9155369999999996
	.quad	0x3fc58c4bd33d2956              # double 0.16834399999999999
	.quad	0x3fdfc5c13fd0d068              # double 0.49644500000000003
	.quad	0x4017c065f9591cd2              # double 5.9378890000000002
	.quad	0x4023237952d234ec              # double 9.5692850000000007
	.quad	0x40200a1ad6451b93              # double 8.019736
	.quad	0x4021d39042d8c2a4              # double 8.9132099999999994
	.quad	0x40228ee696a26e54              # double 9.2791029999999992
	.quad	0x3f8a4723aafff36b              # double 0.012831
	.quad	0x4013c6a012599ed8              # double 4.9439700000000002
	.quad	0x3ff01c6b05319829              # double 1.0069380000000001
	.quad	0x400b76c93a711516              # double 3.433001
	.quad	0x3fd64057082491b0              # double 0.34767700000000001
	.quad	0x3fd80fd7e45803cd              # double 0.375967
	.quad	0x4002a5ebb7739f34              # double 2.331016
	.quad	0x4005968be2f7b17d              # double 2.698509
	.quad	0x401abd466f5019f4              # double 6.6848390000000002
	.quad	0x3fa6d3f9e7b80a9e              # double 0.044586000000000001
	.quad	0x401005f8d2e514c2              # double 4.0058319999999998
	.quad	0x3fe1aafbc1acde1a              # double 0.552122
	.quad	0x4022d8d66f0cfe15              # double 9.4235109999999995
	.quad	0x400db0257c914b16              # double 3.7110089999999998
	.quad	0x401bf44f5d35653d              # double 6.9885840000000004
	.quad	0x40203e121ee67514              # double 8.1212319999999991
	.quad	0x3fda4955b4677b39              # double 0.41072599999999998
	.quad	0x401df067cf1c3266              # double 7.4847710000000003
	.quad	0x4022f58dde7a743a              # double 9.4795979999999993
	.quad	0x401c5e66cb10342b              # double 7.0921890000000003
	.quad	0x3ff91450efdc9c4e              # double 1.5674600000000001
	.quad	0x40233de99e94ab1d              # double 9.6209229999999994
	.quad	0x402224447c30d307              # double 9.0708350000000006
	.quad	0x40218f9c1f85d745              # double 8.7804880000000001
	.quad	0x400a138583621fb0              # double 3.2595320000000001
	.quad	0x40117b7a5f41aef7              # double 4.370584
	.quad	0x400e502cd39da166              # double 3.789148
	.quad	0x401f6d0917d6b65b              # double 7.8564800000000003
	.quad	0x4023f891e215336e              # double 9.9854880000000001
	.quad	0x40236964c729f59d              # double 9.7058470000000003
	.quad	0x4021dfb9389b5200              # double 8.9369599999999991
	.quad	0x4023716b97fe8ee7              # double 9.7215240000000004
	.quad	0x402156fbd273d5bb              # double 8.6698900000000005
	.quad	0x400091aa821f2991              # double 2.071126
	.quad	0x3ff6ff0cbaf965b2              # double 1.437268
	.quad	0x401c53d35eb7457c              # double 7.081861
	.quad	0x4008321815a07b35              # double 3.0244599999999999
	.quad	0x4002a36c9c0a8d22              # double 2.3297970000000001
	.quad	0x3ffc6ce5710880d8              # double 1.776586
	.quad	0x40204701322f2735              # double 8.1386810000000001
	.quad	0x3feca42d05f28848              # double 0.89504099999999998
	.quad	0x401c840f66a55087              # double 7.128965
	.quad	0x4010850efdc9c4db              # double 4.1299400000000004
	.quad	0x4015925a250f8402              # double 5.3929220000000004
	.quad	0x4010ecc7d1bb4917              # double 4.2312310000000002
	.quad	0x4010beeb702602c9              # double 4.186445
	.quad	0x401f59b6f5caf2d8              # double 7.837612
	.quad	0x4017628027d88c1e              # double 5.8461920000000003
	.quad	0x3fd703968d759ee9              # double 0.35959400000000002
	.quad	0x400badf71eafee70              # double 3.4599440000000001
	.quad	0x3ff769a91105e1c1              # double 1.4632959999999999
	.quad	0x401084f2f123c42a              # double 4.1298329999999996
	.quad	0x3fb55464dc22ab26              # double 0.083319000000000004
	.quad	0x402128f9d2bf5515              # double 8.580031
	.quad	0x4018df7f8ca8198f              # double 6.2182599999999999
	.quad	0x4009acaff6d33094              # double 3.20932
	.quad	0x4003d35b0bbf50e3              # double 2.4782009999999999
	.quad	0x3ff1172474538ef3              # double 1.0681499999999999
	.quad	0x4023d51d4738a3b5              # double 9.9162389999999991
	.quad	0x400cdffcdab191de              # double 3.609369
	.quad	0x400ce768dfbd6a59              # double 3.6129929999999999
	.quad	0x40138b51bd61f5be              # double 4.8860539999999997
	.quad	0x4003830446b69db6              # double 2.4389729999999998
	.quad	0x401dd74e22a2c237              # double 7.4602589999999998
	.quad	0x401e1265add9c27f              # double 7.5179660000000003
	.quad	0x401bae7d566cf41f              # double 6.9203999999999999
	.quad	0x40208b5675579af2              # double 8.2721440000000008
	.quad	0x40066a569b17481b              # double 2.8019229999999999
	.quad	0x3ff6671bcdbbe015              # double 1.4001729999999999
	.quad	0x4014d20c069e7fb2              # double 5.2051239999999996
	.quad	0x3fc269a4df47f994              # double 0.143849
	.quad	0x401d8e83e425aee6              # double 7.3891749999999998
	.quad	0x4022bf8e1932d6ed              # double 9.3741310000000002
	.quad	0x4006df687b139c95              # double 2.859086
	.quad	0x3fee1d7fd82773e2              # double 0.94110099999999997
	.quad	0x4019d3e24febd09e              # double 6.4569179999999999
	.quad	0x40000adcd2d44dcb              # double 2.0053040000000002
	.quad	0x40085bbd7b2031cf              # double 3.0447950000000001
	.quad	0x4017f7e6b3fe9fae              # double 5.9920910000000003
	.quad	0x4011d5c3dee78184              # double 4.458755
	.quad	0x401a676683c297c0              # double 6.6009770000000003
	.quad	0x401b7c39bcba3012              # double 6.8713139999999999
	.quad	0x3ffb03ce2089e343              # double 1.688429
	.quad	0x3ffa52d44dca8e2e              # double 1.645222
	.quad	0x4016e1719f7f8ca8              # double 5.7201599999999999
	.quad	0x400c91055b899392              # double 3.570811
	.quad	0x3f7ec0b5675579af              # double 0.0075079999999999999
	.quad	0x402372cf52b90a78              # double 9.7242379999999997
	.quad	0x3fbe3dd54da4ce81              # double 0.118131
	.quad	0x3fd57b2cc70867ae              # double 0.33564300000000002
	.quad	0x40134ace67d77fae              # double 4.8230529999999998
	.quad	0x401c87839cd8127b              # double 7.1323379999999998
	.quad	0x4019464f54d1e96c              # double 6.3186619999999998
	.quad	0x401a4ef0ae536502              # double 6.5770900000000001
	.quad	0x3fe7288effe2a3cf              # double 0.72370100000000004
	.quad	0x401df85b18548a9c              # double 7.4925350000000002
	.quad	0x401c8c30d306a2b1              # double 7.1369049999999996
	.quad	0x401b5d22c881e471              # double 6.8409529999999998
	.quad	0x3fcd717df19d66ae              # double 0.23002600000000001
	.quad	0x3f8fa22706d50657              # double 0.015446
	.quad	0x40229ee78183f91e              # double 9.3103599999999993
	.quad	0x3fe932f87ad080b6              # double 0.78747199999999995
	.quad	0x4007675ab7dc7ac0              # double 2.9254660000000001
	.quad	0x3fdd9fd36f7e3d1d              # double 0.46288000000000001
	.quad	0x40109d2e514c22ee              # double 4.1534969999999998
	.quad	0x401977357e670e2c              # double 6.3664149999999999
	.quad	0x4003a6594af4f0d8              # double 2.4562249999999999
	.quad	0x402226045baf533f              # double 9.0742519999999995
	.quad	0x40101aa10e022142              # double 4.0260049999999996
	.quad	0x40193149c6f36ef8              # double 6.298133
	.quad	0x4014b1626b2f2303              # double 5.1732269999999998
	.quad	0x40118302f72b4528              # double 4.3779409999999999
	.quad	0x3fedf79207d4e098              # double 0.93647100000000005
	.quad	0x400e1df1172ef0ae              # double 3.7646199999999999
	.quad	0x3ff4d3fd0d0678c0              # double 1.301755
	.quad	0x3ff05847f562174c              # double 1.0215529999999999
	.quad	0x401f5899392189be              # double 7.8365220000000004
	.quad	0x4010b06e19b90eaa              # double 4.1722950000000001
	.quad	0x4020e86e7e62dc6e              # double 8.4539679999999997
	.quad	0x4016b32a497fa5d3              # double 5.6749660000000004
	.quad	0x4007514b9cb6848c              # double 2.914695
	.quad	0x4012fa0232096788              # double 4.7441490000000002
	.quad	0x400397f06705c897              # double 2.4491890000000001
	.quad	0x4013b5b1c8648840              # double 4.9274360000000001
	.quad	0x402254e11dbca969              # double 9.1657799999999998
	.quad	0x4022f707e175d13d              # double 9.4824819999999991
	.quad	0x3ffee832b990afe6              # double 1.931689
	.quad	0x40160105e1c15098              # double 5.5009990000000002
	.quad	0x3fe8476d117b5287              # double 0.75871900000000003
	.quad	0x40108a5df2239e6b              # double 4.1351240000000002
	.quad	0x3fe02e770bd017db              # double 0.50567200000000001
	.quad	0x40145014f8b588e3              # double 5.0782049999999996
	.quad	0x3ff3c1abd1aa821f              # double 1.234783
	.quad	0x400d91c432ca57a8              # double 3.6961750000000002
	.quad	0x402170746455eaee              # double 8.7196379999999998
	.quad	0x401883ec892ab68d              # double 6.1288320000000001
	.quad	0x401c1256798958da              # double 7.0179080000000003
	.quad	0x40118f15a4acf313              # double 4.3897310000000003
	.quad	0x4021f721f6cacd18              # double 8.9826809999999995
	.quad	0x3ff530995aaf78ff              # double 1.324365
	.quad	0x3ff6965f5275ee9a              # double 1.4117120000000001
	.quad	0x4003739fba450acc              # double 2.431457
	.quad	0x4021ad0e34762952              # double 8.8379989999999999
	.quad	0x3ffa19620685553f              # double 1.631197
	.quad	0x40227e9a2c669058              # double 9.2472700000000003
	.quad	0x3fff520e1f7d73c9              # double 1.957533
	.quad	0x401af7160956c0d7              # double 6.741295
	.quad	0x3fe58157eed45e92              # double 0.67203900000000005
	.quad	0x4013ef91a32b12d3              # double 4.9839539999999998
	.quad	0x3fee27b2cc70867b              # double 0.94234600000000002
	.quad	0x3fd60b0af5fd47bf              # double 0.34442400000000001
	.quad	0x3ff80a979e16d6dc              # double 1.502586
	.quad	0x401ff3508f648c72              # double 7.9876120000000004
	.quad	0x4021f36523704791              # double 8.9753810000000005
	.quad	0x401ee113c68661ae              # double 7.7198019999999996
	.quad	0x3ff2f87ad080b674              # double 1.1856640000000001
	.quad	0x4009cc3e3193f6c2              # double 3.2247279999999998
	.quad	0x400b484406c00da2              # double 3.4102860000000002
	.quad	0x4022f754f3775b81              # double 9.4830699999999996
	.quad	0x401d2193f6c2699c              # double 7.2827909999999996
	.quad	0x4023c0e8c8abd5dc              # double 9.8767759999999995
	.quad	0x3fdf45d41fa76534              # double 0.48863699999999999
	.quad	0x4015ab8130164841              # double 5.4174850000000001
	.quad	0x40005f572de43ed9              # double 2.0465529999999998
	.quad	0x4022134acaff6d33              # double 9.0376799999999999
	.quad	0x4020a5696e58a32f              # double 8.3230699999999995
	.quad	0x402123bf2f555821              # double 8.5698179999999997
	.quad	0x401e2e6c8f755369              # double 7.5453359999999998
	.quad	0x3ff1d6fc9bc77143              # double 1.114987
	.quad	0x3faa706d50657321              # double 0.051638999999999997
	.quad	0x40087cf2495e17e3              # double 3.0610089999999999
	.quad	0x40227e68a0d349bf              # double 9.2468920000000008
	.quad	0x401e23a53b8e4b88              # double 7.5348100000000002
	.quad	0x3f784f4c6e6d9be5              # double 0.0059350000000000002
	.quad	0x3fca9d8c6d612c6b              # double 0.20793300000000001
	.quad	0x401b161f9f01b867              # double 6.7716050000000001
	.quad	0x400c3ed9dfdac68b              # double 3.5306890000000002
	.quad	0x40040cffa7eb6bf4              # double 2.5063469999999999
	.quad	0x401ff005814940bc              # double 7.9843960000000003
	.quad	0x40163ebedfa43fe6              # double 5.5612750000000002
	.quad	0x400151f687b139c9              # double 2.1650209999999999
	.quad	0x402059f9f01b866e              # double 8.1757349999999995
	.quad	0x4021af9420b3d4ae              # double 8.8429269999999995
	.quad	0x401f105af6c69b5a              # double 7.7659719999999997
	.quad	0x400e6073de1e2de8              # double 3.7970959999999998
	.quad	0x40051cd8127b2cc7              # double 2.639084
	.quad	0x40065b28954a7f80              # double 2.794511
	.quad	0x40211a8a1dfb938a              # double 8.5518350000000005
	.quad	0x4022b0578e5c4eb5              # double 9.3444179999999992
	.quad	0x4012c1bcdbbe0158              # double 4.6891970000000001
	.quad	0x401cd39799e518f4              # double 7.2066330000000001
	.quad	0x401848a32f44912a              # double 6.0709350000000004
	.quad	0x400852817763e4ac              # double 3.040286
	.quad	0x3fdcee5abc0e38a8              # double 0.45204800000000001
	.quad	0x4022296ebd4cfd09              # double 9.0809230000000003
	.quad	0x401f735c9e6687f4              # double 7.8626579999999997
	.quad	0x401fab22d0e56042              # double 7.9171250000000004
	.quad	0x401d2a52ac753e70              # double 7.2913309999999996
	.quad	0x4014bf91600f3450              # double 5.1870779999999996
	.quad	0x40058d9a52263d81              # double 2.6941419999999998
	.quad	0x3fe06679463cfb33              # double 0.51250899999999999
	.quad	0x4015c4cf8d716d2b              # double 5.4421980000000003
	.quad	0x401a7131ec0b5675              # double 6.6105419999999997
	.quad	0x3ffd77f7be121ee6              # double 1.8417889999999999
	.quad	0x4016054c985f06f7              # double 5.5051750000000004
	.quad	0x4014af266ba493c9              # double 5.1710450000000003
	.quad	0x400fed3e920c069e              # double 3.9908419999999998
	.quad	0x3ffde73929ed3954              # double 1.868951
	.quad	0x3fdd61e4f765fd8b              # double 0.45910000000000001
	.quad	0x401748aeb80ecfa7              # double 5.8209790000000003
	.quad	0x40146ac03ff69015              # double 5.1042490000000003
	.quad	0x3fea820e6299524c              # double 0.828376
	.quad	0x3fec18a65492ff4c              # double 0.87800900000000003
	.quad	0x400cf2d3c792d128              # double 3.6185679999999998
	.quad	0x401064a5df2239e7              # double 4.0982890000000003
	.quad	0x3fe7ce8fb00bcbe6              # double 0.74396499999999999
	.quad	0x3ffb4dd0d8cb07d1              # double 1.7064980000000001
	.quad	0x400643fbbd7b2032              # double 2.7831950000000001
	.quad	0x4012031f8a0902de              # double 4.50305
	.quad	0x400cc50bd87b56b8              # double 3.5962139999999998
	.quad	0x4022be08aefb2aae              # double 9.3711599999999997
	.quad	0x4017154de7ea5f85              # double 5.7708050000000002
	.quad	0x401a998f1d3ed528              # double 6.6499600000000001
	.quad	0x401da1efb6dca07f              # double 7.4081409999999996
	.quad	0x3ff50bdfd2630ec3              # double 1.315399
	.quad	0x401cfcc1ca3a4b55              # double 7.2468329999999996
	.quad	0x400322edbb59ddc2              # double 2.392055
	.quad	0x4023f2550870110a              # double 9.9733049999999999
	.quad	0x40218e7e62dc6e2b              # double 8.7783080000000009
	.quad	0x3fdb4c48adeebb34              # double 0.42653099999999999
	.quad	0x3ff5fd1ed9dfdac7              # double 1.3742970000000001
	.quad	0x40119e40852b4d8c              # double 4.4045430000000003
	.quad	0x4022d1ec4e7253da              # double 9.4100059999999992
	.quad	0x4012ab0e1b4bb5e1              # double 4.667046
	.quad	0x3ff33acd5b6805a3              # double 1.201856
	.quad	0x40143ed5ae1cde5d              # double 5.0613619999999999
	.quad	0x4010f4ee7c49fd7a              # double 4.2391909999999999
	.quad	0x3feb1f05ea24cc68              # double 0.84753699999999998
	.quad	0x3ff6420a30db6a1f              # double 1.3911230000000001
	.quad	0x40093fbe76c8b439              # double 3.1561249999999998
	.quad	0x4010c4e48626f60e              # double 4.1922779999999999
	.quad	0x40020757928e0c9e              # double 2.2535850000000002
	.quad	0x3fc0cf52b90a7829              # double 0.131327
	.quad	0x4022db0ccbc05d53              # double 9.4278320000000004
	.quad	0x4023b23d2d87f887              # double 9.8481229999999992
	.quad	0x401539e6eeb70260              # double 5.3065449999999998
	.quad	0x40027a8b4bf8fcd6              # double 2.3098359999999998
	.quad	0x401aaee675147f13              # double 6.670801
	.quad	0x4023d45cfede97d0              # double 9.9147719999999993
	.quad	0x4019abe7afa72218              # double 6.4178759999999997
	.quad	0x3fc68aac96cc5fc0              # double 0.17610700000000001
	.quad	0x401037518b0d0edc              # double 4.0540219999999998
	.quad	0x4011fb5807fed203              # double 4.4954530000000004
	.quad	0x4018e9b3d07c84b6              # double 6.2282250000000001
	.quad	0x401c47a85015c209              # double 7.0699779999999999
	.quad	0x400a90f062d40aaf              # double 3.3207710000000001
	.quad	0x3ffd42a3486f049b              # double 1.8287690000000001
	.quad	0x402325f266ba493d              # double 9.5741150000000008
	.quad	0x3ff17c371da37ef6              # double 1.0928260000000001
	.quad	0x402263a1f4b1ee24              # double 9.1945949999999996
	.quad	0x4004cbda0dfdef85              # double 2.5995370000000002
	.quad	0x4022e658c4bd33d3              # double 9.4498960000000007
	.quad	0x40178d4cb9ecf638              # double 5.887988
	.quad	0x3ffd8bcbe61cffeb              # double 1.84663
	.quad	0x3fecf9357603925c              # double 0.90542100000000003
	.quad	0x401388709741d085              # double 4.8832420000000001
	.quad	0x3ffd8f96e158750c              # double 1.847556
	.quad	0x400f1440af1cb89d              # double 3.8848889999999998
	.quad	0x4021adeefe4ffc98              # double 8.8397140000000007
	.quad	0x401f5c84f8f8a4c2              # double 7.8403510000000001
	.quad	0x4010d80389f83be6              # double 4.2109509999999997
	.quad	0x3fadcfede97d06bc              # double 0.058227000000000001
	.quad	0x40124bdb1a6d6990              # double 4.5740780000000001
	.quad	0x3ff3750092ccf6be              # double 1.216065
	.quad	0x402298ec52a411c3              # double 9.2986780000000007
	.quad	0x401c2975afaf8594              # double 7.0404879999999999
	.quad	0x4013cc6bce8533b1              # double 4.94963
	.quad	0x401331a93293d103              # double 4.7984970000000002
	.quad	0x4018573affb04ee8              # double 6.0851860000000002
	.quad	0x4012136ef8055fbb              # double 4.5189779999999997
	.quad	0x400c94fdf3b645a2              # double 3.5727500000000001
	.quad	0x3fd22f09d8c6d613              # double 0.28412100000000001
	.quad	0x401ccd959a30984e              # double 7.2007659999999998
	.quad	0x401478cfbfc6540d              # double 5.1179800000000002
	.quad	0x40229b9884c6a3be              # double 9.3038980000000002
	.quad	0x401b1aebc408d8ed              # double 6.7762900000000004
	.quad	0x400fb008205ff1d8              # double 3.9609529999999999
	.quad	0x401b2524bfd2e947              # double 6.7862730000000004
	.quad	0x40165b68cef672b9              # double 5.5892670000000004
	.quad	0x400cbac471b47842              # double 3.5911949999999999
	.quad	0x40202bea91d9b1b8              # double 8.0857740000000007
	.quad	0x4016c632c1f42bb6              # double 5.6935529999999996
	.quad	0x4013dcdaf4adbc66              # double 4.9656789999999997
	.quad	0x401a678dd616f86a              # double 6.601127
	.quad	0x3ff9a71bcdbbe015              # double 1.6032979999999999
	.quad	0x400af48ecd8dbced              # double 3.3694130000000002
	.quad	0x4022363992c8c500              # double 9.1059079999999994
	.quad	0x401454d76ab58080              # double 5.0828530000000001
	.quad	0x3ff024abe6a337a8              # double 1.008953
	.quad	0x3fdd31ceaf251c19              # double 0.45616499999999999
	.quad	0x4020b36bf444e0db              # double 8.3504330000000007
	.quad	0x4022f8763a190082              # double 9.485277
	.quad	0x4010393469941850              # double 4.0558639999999997
	.quad	0x3fe2533b10774688              # double 0.57265999999999995
	.quad	0x401b31b3aeee9574              # double 6.7985369999999996
	.quad	0x400b16e04c059210              # double 3.3861699999999999
	.quad	0x3ff8860ed80a17b1              # double 1.532729
	.quad	0x401be8f4b61fe21e              # double 6.9774960000000004
	.quad	0x401cb06705c896dd              # double 7.1722679999999999
	.quad	0x3fe895c422036007              # double 0.76828200000000002
	.quad	0x4002e3897204295a              # double 2.3611019999999998
	.quad	0x402290aaa7ded6bb              # double 9.2825520000000008
	.quad	0x401a21a500d5e8d5              # double 6.5328559999999998
	.quad	0x40089d523b3636f4              # double 3.0768170000000001
	.quad	0x3ff2abe596c82e02              # double 1.1669670000000001
	.quad	0x40130f2495e17e35              # double 4.7647880000000002
	.quad	0x4023b49539b88872              # double 9.8527009999999997
	.quad	0x3ff4892146a1a501              # double 1.283479
	.quad	0x40104d39da16616b              # double 4.0754159999999997
	.quad	0x400d6bd33d29563b              # double 3.6776490000000002
	.quad	0x3fb3b9cf9a06a6e3              # double 0.077053999999999997
	.quad	0x4022cfc3b4f61672              # double 9.4057899999999997
	.quad	0x4017f996fa82e87d              # double 5.9937399999999998
	.quad	0x3fed428b2a6b0d95              # double 0.91437299999999999
	.quad	0x3ff4a979e16d6dc2              # double 1.2913760000000001
	.quad	0x3ff15ac8a3726070              # double 1.0846640000000001
	.quad	0x40128bb16c1e364c              # double 4.6364190000000001
	.quad	0x4014481adea89763              # double 5.0704149999999997
	.quad	0x4016a2c450268901              # double 5.6589520000000002
	.quad	0x40186fbe76c8b439              # double 6.1091249999999997
	.quad	0x40173d5c31593e60              # double 5.8099220000000003
	.quad	0x40153eb4a66559f7              # double 5.3112360000000001
	.quad	0x4002bda1ec4e7254              # double 2.3425940000000001
	.quad	0x4011d0663c74fb55              # double 4.4535150000000003
	.quad	0x40227005e5f30e80              # double 9.2187950000000001
	.quad	0x3ff3f9a7c17a8933              # double 1.248451
	.quad	0x401b52eb5f5f0b28              # double 6.8309759999999997
	.quad	0x3fc8312f4cf4a559              # double 0.189001
	.quad	0x40226ab27cbf6e3f              # double 9.2083929999999992
	.quad	0x401276cfc829cfdd              # double 4.6160269999999999
	.quad	0x40156a1ec4e7253e              # double 5.3536330000000003
	.quad	0x400f380ecfa69be1              # double 3.9023720000000002
	.quad	0x4021e0025bfad29a              # double 8.9375180000000007
	.quad	0x401f443e5321e604              # double 7.8166440000000001
	.quad	0x402189a8ef77f280              # double 8.7688670000000002
	.quad	0x4022c9dabe27179c              # double 9.394247
	.quad	0x401c565f0f5a1017              # double 7.0843470000000002
	.quad	0x402354a36199780c              # double 9.6653090000000005
	.quad	0x4008a8f08461f9f0              # double 3.08249
	.quad	0x400c909c7ffde721              # double 3.570611
	.quad	0x4023435ce1826677              # double 9.6315679999999996
	.quad	0x401a4ed959a30985              # double 6.5770010000000001
	.quad	0x4011220a73f748a1              # double 4.2832429999999997
	.quad	0x3fdd21a719b4dcec              # double 0.455179
	.quad	0x3fff0a7d6733ebc0              # double 1.940061
	.quad	0x3ff2669ad42c3c9f              # double 1.15005
	.quad	0x400c2abf76a2f48c              # double 3.5208729999999999
	.quad	0x4023399780baa583              # double 9.6124840000000002
	.quad	0x4013eac5c13fd0d0              # double 4.9792699999999996
	.quad	0x401c8209aaa3ad19              # double 7.1269900000000002
	.quad	0x40172a333764f11b              # double 5.7912109999999997
	.quad	0x4023fed2674080fa              # double 9.9976990000000008
	.quad	0x40151de2ef4e0115              # double 5.2791860000000002
	.quad	0x4011ed72799a1fd1              # double 4.4818819999999997
	.quad	0x4014ba0cf1800a7c              # double 5.1816899999999997
	.quad	0x3ff80a558ea7ce10              # double 1.5025230000000001
	.quad	0x401e0f96e158750c              # double 7.5152239999999999
	.quad	0x4020c9795b35b0bc              # double 8.393504
	.quad	0x4017302645e4e69f              # double 5.797021
	.quad	0x401250cd855970b5              # double 4.5789090000000003
	.quad	0x40109657fb69984a              # double 4.14682
	.quad	0x401405d249e44fa0              # double 5.0056849999999997
	.quad	0x4010af102363b257              # double 4.17096
	.quad	0x4020a4c6c54bcf0b              # double 8.3218289999999993
	.quad	0x400b5ad080b673c5              # double 3.419343
	.quad	0x3ff4b69a91105e1c              # double 1.294581
	.quad	0x40208bb7521144cc              # double 8.2728830000000002
	.quad	0x40188895d0b73d19              # double 6.1333840000000004
	.quad	0x401785197a24894c              # double 5.8799799999999998
	.quad	0x40221cf2cf95d4e9              # double 9.05654
	.quad	0x402249633482be8c              # double 9.1433350000000004
	.quad	0x4022127fa1a0cf18              # double 9.03613
	.quad	0x3ff674677b395c42              # double 1.403419
	.quad	0x4020a5e9185cee18              # double 8.3240440000000007
	.quad	0x4019c1059ea57215              # double 6.4384980000000001
	.quad	0x401b11847f562175              # double 6.7671070000000002
	.quad	0x40215ae90364388f              # double 8.6775590000000005
	.quad	0x3fe41565c2d27807              # double 0.62761199999999995
	.quad	0x3feb596e9bbf0dc7              # double 0.85466699999999995
	.quad	0x4015f364bec679cc              # double 5.4876889999999996
	.quad	0x4001021294573a79              # double 2.1260119999999998
	.quad	0x400573b4b2fa93af              # double 2.6814969999999998
	.quad	0x401bb50ca1cef241              # double 6.926806
	.quad	0x4001a5bc01a36e2f              # double 2.2059250000000001
	.quad	0x400c1df1172ef0ae              # double 3.5146199999999999
	.quad	0x401bb663c74fb54a              # double 6.928115
	.quad	0x40184bab21815a08              # double 6.0738950000000003
	.quad	0x401e8d49d7ba6699              # double 7.6379770000000002
	.quad	0x401d397cc39ffd61              # double 7.3061400000000001
	.quad	0x40164f13cee9dd7f              # double 5.5772240000000002
	.quad	0x4019ffaa044ae85c              # double 6.4996720000000003
	.quad	0x3ff8f41d084e831b              # double 1.559598
	.quad	0x400bd28522ea0fd4              # double 3.4777930000000001
	.quad	0x400cd07a6bd6e8b0              # double 3.6017960000000002
	.quad	0x3fe644ed6fda836f              # double 0.69591400000000003
	.quad	0x401f400b88ca3e7d              # double 7.8125439999999999
	.quad	0x401e8c0a8d21bc12              # double 7.6367589999999996
	.quad	0x4023d3a3ec02f2fa              # double 9.9133600000000008
	.quad	0x40022b502ababead              # double 2.2711489999999999
	.quad	0x4011048adeebb342              # double 4.2544360000000001
	.quad	0x401384ca925fe975              # double 4.8796790000000003
	.quad	0x4010db3a2595bbbf              # double 4.2140890000000004
	.quad	0x4013ea5870da5daf              # double 4.978853
	.quad	0x3fb5b749adc8fb87              # double 0.084828000000000001
	.quad	0x4003a651f3e89a89              # double 2.4562110000000001
	.quad	0x4018e04b7f5a5333              # double 6.2190380000000003
	.quad	0x40048f8487b99d45              # double 2.5700769999999999
	.quad	0x402294091c087443              # double 9.2891320000000004
	.quad	0x4017d0d9d7774aba              # double 5.9539559999999998
	.quad	0x4022f2e1ac57e23f              # double 9.4743779999999997
	.quad	0x400ae16aceaaf35e              # double 3.3600669999999999
	.quad	0x400f2c093d966384              # double 3.8965019999999999
	.quad	0x4020e86e7e62dc6e              # double 8.4539679999999997
	.quad	0x4012176f6d762520              # double 4.5228859999999997
	.quad	0x402035e785b5b707              # double 8.1052820000000008
	.quad	0x3fef314445aa2e3c              # double 0.97476399999999996
	.quad	0x401dbabda0dfdef8              # double 7.4323639999999997
	.quad	0x401c7bba12b5e52a              # double 7.1208270000000002
	.quad	0x40192ffb04ee7c4a              # double 6.296856
	.quad	0x40221789e774eebf              # double 9.0459739999999993
	.quad	0x4012bac258d5842b              # double 4.6823819999999996
	.quad	0x400addfeb8d82342              # double 3.3583959999999999
	.quad	0x3fea12189bd8383b              # double 0.81470900000000002
	.quad	0x3ffe0e2f37fbefd0              # double 1.878463
	.quad	0x4018bba6aca79357              # double 6.1832529999999997
	.quad	0x4012a09bb6aa4b99              # double 4.6568440000000004
	.quad	0x401c6530ced4e4c9              # double 7.0988189999999998
	.quad	0x4013740af1cb89d7              # double 4.8633230000000003
	.quad	0x4015e1e0828c36db              # double 5.4705830000000004
	.quad	0x3ff0820a30db6a1f              # double 1.0317480000000001
	.quad	0x4022f00064a9cdc4              # double 9.4687529999999995
	.quad	0x4002257b84db9c73              # double 2.2683019999999998
	.quad	0x4010b0f238972043              # double 4.1727990000000004
	.quad	0x401ac767903211cb              # double 6.694731
	.quad	0x3fc6e72da122fad7              # double 0.17893000000000001
	.quad	0x400b4eeae9ee45c3              # double 3.4135339999999998
	.quad	0x40129357a355043e              # double 4.6438889999999997
	.quad	0x402339f16b11c6d2              # double 9.6131700000000002
	.quad	0x400cc89e34330d74              # double 3.5979580000000002
	.quad	0x4013a792d1287c20              # double 4.913646
	.quad	0x40072f8594291750              # double 2.8982039999999998
	.quad	0x401d8b4d48882f0e              # double 7.386037
	.quad	0x401e96659d12cade              # double 7.6468720000000001
	.quad	0x4000a529bae46cfd              # double 2.0806460000000002
	.quad	0x3ff62603d577963a              # double 1.3842810000000001
	.quad	0x3fdd57eed45e9186              # double 0.45849200000000001
	.quad	0x4017677a2cecc815              # double 5.8510520000000001
	.quad	0x40239a038194c016              # double 9.800808
	.quad	0x4020e19c5a3e39f7              # double 8.4406459999999992
	.quad	0x4019f79ee02a77a3              # double 6.4918170000000002
	.quad	0x401c7893b7d84902              # double 7.1177510000000002
	.quad	0x40179a52ef911cf3              # double 5.9007069999999997
	.quad	0x401974666ec9e237              # double 6.3636720000000002
	.quad	0x4011a13d74d594f2              # double 4.4074609999999996
	.quad	0x40002d7518b0d0ee              # double 2.0221960000000001
	.quad	0x40187af89c5e6ff8              # double 6.1200890000000001
	.quad	0x3fd040e1719f7f8d              # double 0.25396000000000002
	.quad	0x40115d306a2b1705              # double 4.341005
	.quad	0x3fd90f0e90bc7b46              # double 0.391544
	.quad	0x400b956d19dece57              # double 3.447962
	.quad	0x4015f58969a0ad8a              # double 5.4897819999999999
	.quad	0x4021768f8e7ddca5              # double 8.7315640000000005
	.quad	0x3ff3cca4f440af1d              # double 1.2374620000000001
	.quad	0x40219df41aef6f8f              # double 8.808503
	.quad	0x401c27a85015c209              # double 7.0387279999999999
	.quad	0x4018efbb517a4617              # double 6.2341129999999998
	.quad	0x4013538bcdfefbf4              # double 4.831588
	.quad	0x3ff5a14488c60cbf              # double 1.351872
	.quad	0x3fdc3df2a9d627bf              # double 0.44128099999999998
	.quad	0x400bfe2584f4c6e7              # double 3.4990950000000001
	.quad	0x401f7e6d9be4cd75              # double 7.8734650000000003
	.quad	0x40023dc37a3db3c0              # double 2.2801580000000001
	.quad	0x3fd245f5ad96a6a0              # double 0.28552
	.quad	0x3fe0d62174c4cdfb              # double 0.52613900000000002
	.quad	0x40228fcf3dc054ef              # double 9.2808779999999995
	.quad	0x4020d6703afb7e91              # double 8.418825
	.quad	0x3ff75ebb7739f341              # double 1.460628
	.quad	0x4011ceea63b688be              # double 4.4520660000000003
	.quad	0x3ff8ca50507a6bd7              # double 1.549393
	.quad	0x4005027e0ef99807              # double 2.626217
	.quad	0x4023c2b7995ee137              # double 9.8803070000000001
	.quad	0x400ecac8605681ed              # double 3.8490150000000001
	.quad	0x401dc46994185059              # double 7.4418090000000001
	.quad	0x401202a23bff8a8f              # double 4.5025719999999998
	.quad	0x401cc6c15d2d01c1              # double 7.1940970000000002
	.quad	0x40137dbfceb78898              # double 4.8728020000000001
	.quad	0x3fd09873ffac1d2a              # double 0.25930500000000001
	.quad	0x4004900ef1348b22              # double 2.570341
	.quad	0x4004a9014b599aa6              # double 2.582522
	.quad	0x3ff6bda5119ce076              # double 1.4213
	.quad	0x40218f70153bd167              # double 8.7801519999999993
	.quad	0x401def10667f90da              # double 7.4834610000000001
	.quad	0x401c2d590c0ad03e              # double 7.0442850000000004
	.quad	0x401074488c60cbf3              # double 4.1135580000000003
	.quad	0x40132cb4289118c2              # double 4.7936560000000004
	.quad	0x400e6e86c6583e85              # double 3.8039679999999998
	.quad	0x4001b20642396074              # double 2.2119260000000001
	.quad	0x4023fa67a52ac754              # double 9.9890720000000001
	.quad	0x3fff72d7f950b956              # double 1.965538
	.quad	0x3f985dfa871a3b15              # double 0.023796000000000001
	.quad	0x4021281344806291              # double 8.5782720000000001
	.quad	0x4022cad9cf13ceea              # double 9.3961930000000002
	.quad	0x3fe21ff92f2b66b6              # double 0.56640299999999999
	.quad	0x40226f7a2cecc815              # double 9.2177290000000003
	.quad	0x3fe1570e6f2e8c05              # double 0.54187700000000005
	.quad	0x400099ee88df3733              # double 2.0751620000000002
	.quad	0x401e0228dc981beb              # double 7.5021089999999999
	.quad	0x401d78b04ab606b8              # double 7.3678600000000002
	.quad	0x40148bd5992428d4              # double 5.1365569999999998
	.quad	0x3ff3a55d1c3ac92a              # double 1.2278720000000001
	.quad	0x400bf8f041461b6d              # double 3.4965519999999999
	.quad	0x4016dcf0f9d2bf55              # double 5.7157629999999999
	.quad	0x40050dcdb37c99af              # double 2.6317400000000002
	.quad	0x40196e518f3eccc4              # double 6.3577329999999996
	.quad	0x40165991bc558644              # double 5.5874699999999997
	.quad	0x40200e6d373affb0              # double 8.0281769999999995
	.quad	0x3ffbdec80c73abc9              # double 1.7418899999999999
	.quad	0x40142e6c4c5974e6              # double 5.0453349999999997
	.quad	0x400e54edb2f661f2              # double 3.7914690000000002
	.quad	0x402008f733a8a3f9              # double 8.0175110000000007
	.quad	0x40062fd651b0ccbc              # double 2.773358
	.quad	0x3ff9329e4d5d80e5              # double 1.5748580000000001
	.quad	0x3fedd1fe64f54d1f              # double 0.93188400000000005
	.quad	0x4022fefbb0e5e679              # double 9.4980139999999995
	.quad	0x3ff498f4f93bc0a0              # double 1.2873429999999999
	.quad	0x4013b2fbe33acd5b              # double 4.9247889999999996
	.quad	0x4011fc964628027e              # double 4.4966670000000004
	.quad	0x400b7da9435ac8a3              # double 3.4363579999999998
	.quad	0x40167c4a83b1d0c8              # double 5.621378
	.quad	0x4020eae0e30446b7              # double 8.4587470000000007
	.quad	0x401d232d6ece13f5              # double 7.2843530000000003
	.quad	0x401f602f72b45283              # double 7.8439310000000004
	.quad	0x40218bc70c996b76              # double 8.7730029999999992
	.quad	0x3ff82f826edaa92e              # double 1.5115989999999999
	.quad	0x3feb83925bb7b6bb              # double 0.85981099999999999
	.quad	0x401e6d1b2e59af9f              # double 7.6065490000000002
	.quad	0x40132e40c8472c0e              # double 4.7951689999999996
	.quad	0x400d36ffc115df65              # double 3.6518549999999999
	.quad	0x400d44ba94bbe447              # double 3.6585589999999999
	.quad	0x4022245f5ad96a6a              # double 9.07104
	.quad	0x3fe3aa8650e77920              # double 0.61456599999999995
	.quad	0x402043474107314d              # double 8.1314030000000006
	.quad	0x3ffda92817763e4b              # double 1.8537980000000001
	.quad	0x4000202107b78466              # double 2.0156879999999999
	.quad	0x3ffa173d9ec70004              # double 1.630674
	.quad	0x401482b9d3cbc48f              # double 5.1276619999999999
	.quad	0x401bcfb97bb73083              # double 6.9528559999999997
	.quad	0x400cb892684cf074              # double 3.5901230000000002
	.quad	0x400936aad1d041cc              # double 3.1516929999999999
	.quad	0x4002455da272862f              # double 2.2838699999999998
	.quad	0x4013d778dd616f87              # double 4.9604220000000003
	.quad	0x401a7739b024f65a              # double 6.6164310000000004
	.quad	0x401004b662fdfc1a              # double 4.0046020000000002
	.quad	0x3ff6c692f6e8294a              # double 1.4234800000000001
	.quad	0x401f2e5e2478854d              # double 7.7952810000000001
	.quad	0x400cc55da272862f              # double 3.5963699999999998
	.quad	0x401576e2eb1c432d              # double 5.3661000000000003
	.quad	0x4005cbc5154866a1              # double 2.7244969999999999
	.quad	0x4010bbf338716095              # double 4.1835449999999996
	.quad	0x4016cd9cae21101b              # double 5.700793
	.quad	0x400891b25f633ce6              # double 3.0711409999999999
	.quad	0x4021eac14c660a20              # double 8.9585059999999999
	.quad	0x401561bde82d7b63              # double 5.3454509999999997
	.quad	0x3fe185186db50f41              # double 0.54749700000000001
	.quad	0x402188abb44e50c6              # double 8.7669350000000001
	.quad	0x40172f4384ba0e84              # double 5.7961559999999999
	.quad	0x40213b82a12f9011              # double 8.6162310000000009
	.quad	0x401a20ecb74ddf87              # double 6.5321530000000001
	.quad	0x4017915ca6ca03c5              # double 5.8919550000000003
	.quad	0x4018c061c79b34a4              # double 6.1878729999999997
	.quad	0x4008f60d887ebf23              # double 3.1201430000000001
	.quad	0x40224161a1db877b              # double 9.1276980000000005
	.quad	0x40228042d8c2a455              # double 9.2505100000000002
	.quad	0x3ff49f10667f90da              # double 1.288834
	.quad	0x401b454cdb7ae579              # double 6.8176759999999996
	.quad	0x400180e6afcce1c6              # double 2.1879400000000002
	.quad	0x3faf9f44d4456712              # double 0.061761999999999997
	.quad	0x4022af5104d551d7              # double 9.3424150000000008
	.quad	0x401053ac0c62e4d2              # double 4.0817110000000003
	.quad	0x3ffb14d72799a1fd              # double 1.692588
	.quad	0x4022f0f217093101              # double 9.4705969999999997
	.quad	0x400d961dc93ea2d3              # double 3.698299
	.quad	0x4023df0cfe154435              # double 9.9356460000000001
	.quad	0x4021be3e29307af2              # double 8.8715679999999999
	.quad	0x40203522424a276b              # double 8.1037769999999991
	.quad	0x40114dcad14a0a0f              # double 4.3259689999999997
	.quad	0x400d3eab367a0f91              # double 3.6556000000000002
	.quad	0x4014ac215b9a5a8a              # double 5.1680960000000002
	.quad	0x4003da14cec41dd2              # double 2.4814850000000002
	.quad	0x401512aae297396d              # double 5.26823
	.quad	0x400a4d898b2e9ccb              # double 3.2878599999999998
	.quad	0x4022ddc1615ebfa9              # double 9.433116
	.quad	0x401d5393250b5244              # double 7.3316160000000004
	.quad	0x4020ba107b784663              # double 8.3634070000000005
	.quad	0x40232a79fec99f1b              # double 9.5829620000000002
	.quad	0x3fe68980b242070c              # double 0.70428500000000005
	.quad	0x4014fecdd0d8cb08              # double 5.2488320000000002
	.quad	0x4022fad01c0ca601              # double 9.4898690000000005
	.quad	0x4022366516db0dd8              # double 9.1062399999999997
	.quad	0x400f4a0d349be8ff              # double 3.9111579999999999
	.quad	0x4021bb7ac3eb7cbb              # double 8.8661709999999996
	.quad	0x3ff3e2706d506573              # double 1.242783
	.quad	0x40215aebc408d8ed              # double 8.6775800000000007
	.quad	0x400bfda61e0c5a81              # double 3.4988519999999999
	.quad	0x402009f383f0bae9              # double 8.0194360000000007
	.quad	0x402087cb923a29c7              # double 8.2652249999999992
	.quad	0x400ac3571d1d4739              # double 3.3453810000000002
	.quad	0x40200ff8ca8198f2              # double 8.0311950000000003
	.quad	0x401f6c0053e2d624              # double 7.8554700000000004
	.quad	0x3fde96b3354c1227              # double 0.47794799999999998
	.quad	0x3ff0a9424e592967              # double 1.041323
	.quad	0x40131472c0e7bc3c              # double 4.7699689999999997
	.quad	0x4015018b93469942              # double 5.2515090000000004
	.quad	0x401bfced916872b0              # double 6.9969999999999999
	.quad	0x3ffb4ed3d859c8c9              # double 1.706745
	.quad	0x401005119ce075f7              # double 4.00495
	.quad	0x4002578359bc33f8              # double 2.2927309999999999
	.quad	0x3ff364b5568e820e              # double 1.2120869999999999
	.quad	0x40200749cf56eac8              # double 8.0142349999999993
	.quad	0x401697e2c55c9603              # double 5.648326
	.quad	0x400e722962cfd8f1              # double 3.8057430000000001
	.quad	0x400a8985f06f6944              # double 3.3171499999999998
	.quad	0x4014622fad6cb535              # double 5.095885
	.quad	0x4020b478e9f6a93f              # double 8.3524849999999997
	.quad	0x3ffdb6f2a5a469d7              # double 1.857165
	.quad	0x3fc0d39da16616b5              # double 0.13145799999999999
	.quad	0x40228808205ff1d8              # double 9.2656869999999997
	.quad	0x401d72b2bfdb4cc2              # double 7.3620099999999997
	.quad	0x4015ad60a6330510              # double 5.419314
	.quad	0x4001f35c182ecaef              # double 2.2438280000000002
	.quad	0x40129d4cfd08d4bb              # double 4.6536140000000001
	.quad	0x401d0f8d716d2aa6              # double 7.2651880000000002
	.quad	0x4001849774256bca              # double 2.1897419999999999
	.quad	0x402226ae7d566cf4              # double 9.0755499999999997
	.quad	0x4016cbfca85caafc              # double 5.6992060000000002
	.quad	0x4023310d173fb7a6              # double 9.5958030000000001
	.quad	0x400622a023209678              # double 2.7669069999999998
	.quad	0x3fb047d3d4280ae1              # double 0.063596
	.quad	0x3ff2b0d0edc3bd5a              # double 1.1681680000000001
	.quad	0x401ea27f1b691212              # double 7.6586879999999997
	.quad	0x40031cfa26a22b39              # double 2.3891490000000002
	.quad	0x401f16d7e889c1b5              # double 7.7723079999999997
	.quad	0x401dc4827b6fe2e7              # double 7.4419040000000001
	.quad	0x4020aa0dfdef8488              # double 8.3321380000000005
	.quad	0x4019cbf0563ed0f6              # double 6.4491589999999999
	.quad	0x400a8f5232d2bb23              # double 3.3199809999999998
	.quad	0x3ff80f648c7192ea              # double 1.5037579999999999
	.quad	0x3ffd3cd573647bab              # double 1.8273520000000001
	.quad	0x4020fa459103c8e2              # double 8.4888119999999994
	.quad	0x401c370196d8f4f9              # double 7.0537169999999998
	.quad	0x40083ec892ab68cf              # double 3.030656
	.quad	0x4023f03be6601bca              # double 9.9692070000000008
	.quad	0x3fea7dfc19c17226              # double 0.82787900000000003
	.quad	0x3fe5c32a8c9b8455              # double 0.68007399999999996
	.quad	0x4022958a54823854              # double 9.2920709999999999
	.quad	0x4015e130df9bdc6a              # double 5.469913
	.quad	0x401905b5fa22706d              # double 6.2555769999999997
	.quad	0x401357589efd86a9              # double 4.835299
	.quad	0x400bf722e1ac57e2              # double 3.4956719999999999
	.quad	0x401e62834d26fa40              # double 7.5962040000000002
	.quad	0x40211193d5347a5b              # double 8.5343309999999999
	.quad	0x4021054738a3b57c              # double 8.5103089999999994
	.quad	0x400af4e0114d2f5e              # double 3.3695680000000001
	.quad	0x402362699c7bcc29              # double 9.6922119999999996
	.quad	0x40201566f0cfe154              # double 8.0418009999999995
	.quad	0x3fe5ecfe9b7bf1e9              # double 0.68518000000000001
	.quad	0x401c1a4ca4f440af              # double 7.0256829999999999
	.quad	0x40140f5caf2d7f95              # double 5.015002
	.quad	0x4015b02795703f2d              # double 5.4220259999999998
	.quad	0x402169f31f46ed24              # double 8.7069329999999993
	.quad	0x3fee9733226c3b92              # double 0.95595699999999995
	.quad	0x4023856e04c05921              # double 9.7606049999999999
	.quad	0x4015af4e874c8ffc              # double 5.4211980000000004
	.quad	0x40185a81dc0db270              # double 6.0883859999999999
	.quad	0x4016dfe82517e77d              # double 5.7186589999999997
	.quad	0x401841bbcf4e874d              # double 6.0641930000000004
	.quad	0x3fe7a604e1e71045              # double 0.73901600000000001
	.quad	0x4001d761cbccf28c              # double 2.2301669999999998
	.quad	0x4008d4a2b9d3cbc5              # double 3.1038260000000002
	.quad	0x401565dc8323358f              # double 5.3494739999999998
	.quad	0x4002bb43526527a2              # double 2.341437
	.quad	0x4022aca9cdc44391              # double 9.3372329999999994
	.quad	0x400b363779e9d0ea              # double 3.4014730000000002
	.quad	0x401541f10667f90e              # double 5.3143960000000003
	.quad	0x40202baa369fcf3e              # double 8.0852830000000004
	.quad	0x4023eb311a543f1c              # double 9.9593589999999991
	.quad	0x402059e44fa05144              # double 8.1755700000000004
	.quad	0x40103a6b0d9513f9              # double 4.0570490000000001
	.quad	0x401015907d912557              # double 4.0210590000000002
	.quad	0x3fdc542a23bff8a9              # double 0.442637
	.quad	0x3ff83b645a1cac08              # double 1.5145
	.quad	0x401d31f3e89a88ad              # double 7.2987820000000001
	.quad	0x4010e0cf9e3864cb              # double 4.2195419999999997
	.quad	0x40202c49774256bd              # double 8.0864980000000006
	.quad	0x40212830a0b1bbcf              # double 8.5784959999999995
	.quad	0x401071bc98a222d5              # double 4.1110709999999999
	.quad	0x40209b543aeab799              # double 8.3033769999999993
	.quad	0x401f954b8bef8ceb              # double 7.8957959999999998
	.quad	0x4011c223e1869835              # double 4.4395899999999999
	.quad	0x4019e9e7b80a9de9              # double 6.4784230000000003
	.quad	0x40107c78e9f6a93f              # double 4.1215549999999999
	.quad	0x400fa023a6ce3583              # double 3.9531930000000002
	.quad	0x401c871971c10d7c              # double 7.1319330000000001
	.quad	0x401398387df5cf25              # double 4.8986530000000004
	.quad	0x3ffd44aa53fc0097              # double 1.829264
	.quad	0x401f822962cfd8f1              # double 7.8771110000000001
	.quad	0x401e579bbadc0981              # double 7.5855550000000002
	.quad	0x400ff1212513b5bf              # double 3.9927389999999998
	.quad	0x40223b7d84901d19              # double 9.1161919999999999
	.quad	0x4008c92bc2fc6973              # double 3.0982280000000002
	.quad	0x400502773e24febd              # double 2.626204
	.quad	0x3ffa63b256ffc116              # double 1.64934
	.quad	0x401cbcc964628028              # double 7.1843620000000001
	.quad	0x40061f36ac647779              # double 2.7652410000000001
	.quad	0x401e92c625e99e95              # double 7.6433340000000002
	.quad	0x4018823c42a66dbd              # double 6.1271829999999996
	.quad	0x3ffeb6b3bb83cf2d              # double 1.919605
	.quad	0x4022c1628cbd1245              # double 9.3777050000000006
	.quad	0x4006c01797cc3a00              # double 2.8437950000000001
	.quad	0x3ff2d3e707e175d1              # double 1.1767339999999999
	.quad	0x4021c6daa92e6213              # double 8.8883869999999998
	.quad	0x4001df7b5aea3162              # double 2.2341220000000002
	.quad	0x400933f077ccc038              # double 3.1503610000000002
	.quad	0x4022e7589efd86a9              # double 9.451848
	.quad	0x402238de093532e8              # double 9.1110690000000005
	.quad	0x401a57631b584b1b              # double 6.5853390000000003
	.quad	0x4017698e10cf5b1d              # double 5.8530810000000004
	.quad	0x40207e4473cd5736              # double 8.2466159999999995
	.quad	0x4020fcc037931444              # double 8.4936539999999993
	.quad	0x4023ee5668c26139              # double 9.965503
	.quad	0x402220bd66277c46              # double 9.0639450000000004
	.quad	0x400a2621b7e0ac7e              # double 3.2686190000000002
	.quad	0x401e8d82773e24ff              # double 7.6381930000000002
	.quad	0x40183cbddb9841ab              # double 6.0593180000000002
	.quad	0x3fcfd1569f490603              # double 0.24857599999999999
	.quad	0x3fed32a8c9b84556              # double 0.91243399999999997
	.quad	0x401331fff79c8430              # double 4.7988280000000003
	.quad	0x4021ae96c3fc43b3              # double 8.8409940000000002
	.quad	0x40191ad9ad85dfa8              # double 6.2762209999999996
	.quad	0x4010212a94ff0026              # double 4.0323890000000002
	.quad	0x4022e93836a832ba              # double 9.4555070000000008
	.quad	0x4018473bc903ea70              # double 6.0695639999999997
	.quad	0x400d407aaef2c732              # double 3.6564839999999998
	.quad	0x4010915b1422ccb4              # double 4.1419490000000003
	.quad	0x4011f4430b178b37              # double 4.488537
	.quad	0x401c24ac29bf162b              # double 7.0358130000000001
	.quad	0x3fb1a91105e1c151              # double 0.068986000000000006
	.quad	0x40099cea6c1a048e              # double 3.201619
	.quad	0x40150d6883771865              # double 5.2630939999999997
	.quad	0x40202cd31769a911              # double 8.087548
	.quad	0x4008c199780baa58              # double 3.0945309999999999
	.quad	0x400ce36fc158fb44              # double 3.6110530000000001
	.quad	0x4016ab2cc70867ae              # double 5.6671630000000004
	.quad	0x400d25796bfca85d              # double 3.6432980000000001
	.quad	0x3ff3742aa9f7b5af              # double 1.2158610000000001
	.quad	0x3fd9f3300de4c511              # double 0.405468
	.quad	0x40115cba30121683              # double 4.340554
	.quad	0x4000c24edf612407              # double 2.0948769999999999
	.quad	0x40008f944241c3f0              # double 2.0701070000000001
	.quad	0x40207470eb24a6a8              # double 8.2274239999999992
	.quad	0x4020a1884c6a3bde              # double 8.315493
	.quad	0x40193ec7c957cd46              # double 6.3113089999999996
	.quad	0x3ff91425f202107b              # double 1.5674189999999999
	.quad	0x4004c7e5a78f25a2              # double 2.5976059999999999
	.quad	0x401a2a087ca643cc              # double 6.541048
	.quad	0x4021cbb256ffc116              # double 8.8978450000000002
	.quad	0x4020b73493858362              # double 8.3578229999999998
	.quad	0x401d99cb6848beb6              # double 7.4001900000000003
	.quad	0x4001c262cba732df              # double 2.2199149999999999
	.quad	0x3fed8945f9df548f              # double 0.92300700000000002
	.quad	0x40060f5d35653c9b              # double 2.7575020000000001
	.quad	0x401d42f944241c3f              # double 7.315404
	.quad	0x40151daf8df7a4e8              # double 5.2789900000000003
	.quad	0x401dfe32e3821af8              # double 7.4982410000000001
	.quad	0x3ff0582235b4edb3              # double 1.021517
	.quad	0x3fe91deefe4ffc98              # double 0.78490400000000005
	.quad	0x4014db7d41743e96              # double 5.2143449999999998
	.quad	0x401ccca4b124d09a              # double 7.1998470000000001
	.quad	0x4009bf8f4730403a              # double 3.2185350000000001
	.quad	0x4015f9d1f601797d              # double 5.4939650000000002
	.quad	0x40206dd5d3dc8b87              # double 8.2145220000000005
	.quad	0x3ff06b7dc7abfb9c              # double 1.026243
	.quad	0x40205b5e529bae47              # double 8.1784540000000003
	.quad	0x401fcb7d84901d19              # double 7.9487209999999999
	.quad	0x401587efe0ce0b91              # double 5.3827509999999998
	.quad	0x401c2123c42a66dc              # double 7.0323630000000001
	.quad	0x401a5ad2999567dc              # double 6.5886940000000003
	.quad	0x3ff04d63cb817332              # double 1.018894
	.quad	0x40222d49f94855da              # double 9.0884549999999997
	.quad	0x4014d1758e219653              # double 5.2045500000000002
	.quad	0x3ff2ef9db22d0e56              # double 1.1835
	.quad	0x4022aee3d5fdcdf7              # double 9.3415820000000007
	.quad	0x4021412c8c5004fb              # double 8.6272929999999999
	.quad	0x3fd50f1f57b41bfc              # double 0.32904800000000001
	.quad	0x401cc58b827fa1a1              # double 7.1929150000000002
	.quad	0x402230e27e0ef998              # double 9.095478
	.quad	0x40200f6ff3ade226              # double 8.030151
	.quad	0x4005be71044f1a1a              # double 2.7179890000000002
	.quad	0x40220911cf355cd9              # double 9.0177139999999998
	.quad	0x400f8e631f8a0903              # double 3.9445250000000001
	.quad	0x401ac47021d10b20              # double 6.6918340000000001
	.quad	0x40193ced916872b0              # double 6.3094999999999999
	.quad	0x402064751ce28ed6              # double 8.1962060000000001
	.quad	0x40050188b11409a2              # double 2.6257489999999999
	.quad	0x401ce65f9591cd1c              # double 7.2249739999999996
	.quad	0x4012f34a01abd1ab              # double 4.7375870000000004
	.quad	0x3fe9226c3b927d46              # double 0.78545200000000004
	.quad	0x3fbed7c6fbd273d6              # double 0.12048
	.quad	0x3ffb90ff97247454              # double 1.7229000000000001
	.quad	0x400482c5e2cdc012              # double 2.5638540000000001
	.quad	0x402228b135979182              # double 9.0794770000000007
	.quad	0x4006be5082cf52b9              # double 2.842927
	.quad	0x40180ebd09e12a52              # double 6.0143930000000001
	.quad	0x3ff9867dfe32a066              # double 1.5953349999999999
	.quad	0x3fed8b6b6e0d23d5              # double 0.92326900000000001
	.quad	0x40233de2478854ce              # double 9.6208670000000005
	.quad	0x401a804816f0068e              # double 6.6252750000000002
	.quad	0x401a6470a808c826              # double 6.5980860000000003
	.quad	0x4019a7a56de3326a              # double 6.4137170000000001
	.quad	0x401d0440af1cb89d              # double 7.2541529999999996
	.quad	0x40163816f0068db9              # double 5.5547750000000002
	.quad	0x40176d81f10667f9              # double 5.856941
	.quad	0x3f83a57eaa2a0a96              # double 0.0095930000000000008
	.quad	0x401e62eb1c432ca5              # double 7.5965999999999995
	.quad	0x4020b94fce746cb9              # double 8.3619369999999993
	.quad	0x401eed0f1f57b41c              # double 7.731503
	.quad	0x400c74d056c508b3              # double 3.5570379999999999
	.quad	0x40086475e6362a5e              # double 3.0490529999999998
	.quad	0x4015af5a1016ce79              # double 5.4212420000000003
	.quad	0x4021ee134ce3de61              # double 8.9649909999999995
	.quad	0x401c29cfdd228566              # double 7.040832
	.quad	0x401cde757928e0ca              # double 7.2172450000000001
	.quad	0x3ff497eed45e9186              # double 1.287093
	.quad	0x40025b40b34e7686              # double 2.2945570000000002
	.quad	0x40212f77d0f1f57b              # double 8.5927109999999995
	.quad	0x4017ed3c36113405              # double 5.9816750000000001
	.quad	0x4022f98ac9f2fdb9              # double 9.487387
	.quad	0x40226c28f5c28f5c              # double 9.2112499999999997
	.quad	0x3fed55454152b0a7              # double 0.916659
	.quad	0x402216b1c432ca58              # double 9.0443250000000006
	.quad	0x4018ef91e646f156              # double 6.2339549999999999
	.quad	0x4014d61bb05faebc              # double 5.2090899999999998
	.quad	0x40169d8a54823854              # double 5.653848
	.quad	0x3fdb27d45a5fc7e7              # double 0.42430600000000002
	.quad	0x401ed864cb5bb385              # double 7.711322
	.quad	0x3fff78a7e73a365d              # double 1.9669570000000001
	.quad	0x4010e2378ab0c88a              # double 4.2209149999999998
	.quad	0x3fcbec918e325d4a              # double 0.21815699999999999
	.quad	0x40031057d1782d38              # double 2.3829799999999999
	.quad	0x401ad524bfd2e947              # double 6.7081480000000004
	.quad	0x40065a493c89f40a              # double 2.7940849999999999
	.quad	0x3fcfb0574b407033              # double 0.24756900000000001
	.quad	0x401f0f1d81f10668              # double 7.764761
	.quad	0x4022c89b52007dd4              # double 9.3918099999999995
	.quad	0x4021f643cc07aaef              # double 8.9809859999999997
	.quad	0x4002c650e779207d              # double 2.3468339999999999
	.quad	0x40182cf13cee9dd8              # double 6.0438890000000001
	.quad	0x40213fa7221858bc              # double 8.6243219999999993
	.quad	0x3ffd44b3c3e74afd              # double 1.8292729999999999
	.quad	0x40081292c4934268              # double 3.0090690000000002
	.quad	0x40174010c6f7a0b6              # double 5.8125640000000001
	.quad	0x4019858ab92c0618              # double 6.3804119999999998
	.quad	0x40239d98e10cf5b2              # double 9.8078070000000004
	.quad	0x4022a818c5c9a34d              # double 9.3283140000000007
	.quad	0x401bf1bbcf4e874d              # double 6.9860680000000004
	.quad	0x3ff3288bda9435ad              # double 1.1973990000000001
	.quad	0x402312d98bf7f067              # double 9.5368159999999999
	.quad	0x40223c532a497fa6              # double 9.1178220000000003
	.quad	0x4003b2b3461309c8              # double 2.462256
	.quad	0x4012e740c4156e26              # double 4.7258329999999997
	.quad	0x400595182a9930be              # double 2.6978
	.quad	0x401114289118c198              # double 4.2696860000000001
	.quad	0x3fdc3bcd35a85879              # double 0.44114999999999999
	.quad	0x401c109fe86833c6              # double 7.016235
	.quad	0x4021663ae2541d8f              # double 8.6996680000000008
	.quad	0x4022f8d66f0cfe15              # double 9.4860109999999995
	.quad	0x3ffcff91e646f156              # double 1.812395
	.quad	0x4006aba7b9170d63              # double 2.8338160000000001
	.quad	0x4001b365881a1555              # double 2.212596
	.quad	0x400bb28954a7f801              # double 3.4621759999999999
	.quad	0x3ff49a9a8049667b              # double 1.2877449999999999
	.quad	0x40211665bea0ba1f              # double 8.5437449999999995
	.quad	0x40125c4b90214ad3              # double 4.5901319999999997
	.quad	0x401cf0ca1cef2410              # double 7.2351460000000003
	.quad	0x401674c404a72eae              # double 5.6140290000000004
	.quad	0x401c12c625e99e95              # double 7.0183340000000003
	.quad	0x3fdb5ad96a6a0126              # double 0.42742000000000002
	.quad	0x4020625247cb70ac              # double 8.1920339999999995
	.quad	0x401f1c66d373affb              # double 7.7777359999999999
	.quad	0x40166efc7a398202              # double 5.6083850000000002
	.quad	0x3ff49072085b1855              # double 1.2852650000000001
	.quad	0x401abceaaf35e311              # double 6.6844890000000001
	.quad	0x401719ac36544fe3              # double 5.7750709999999996
	.quad	0x400446e86c6583e8              # double 2.5346229999999998
	.quad	0x4019f291b823c85c              # double 6.4868839999999999
	.quad	0x40217eff3ade2260              # double 8.7480410000000006
	.quad	0x401ad4d983947497              # double 6.7078610000000003
	.quad	0x3fd2e5e2478854ce              # double 0.29528100000000002
	.quad	0x400f1e73a365cb36              # double 3.889869
	.quad	0x40071d66277c45cc              # double 2.8893550000000001
	.quad	0x400a40ec74320104              # double 3.281701
	.quad	0x401cb3cb3e5753a4              # double 7.1755800000000001
	.quad	0x40219d3111f0c34c              # double 8.8070149999999998
	.quad	0x4001f75f2cb64170              # double 2.245787
	.quad	0x401a13d35eb7457c              # double 6.519361
	.quad	0x3ff5adc7ef177a70              # double 1.354927
	.quad	0x4022c384db9c7369              # double 9.3818730000000005
	.quad	0x4021d9fc8f32378b              # double 8.9257550000000005
	.quad	0x40029779e9d0e992              # double 2.323963
	.quad	0x40167fe69270b06c              # double 5.6249029999999998
	.quad	0x40034f0cfe154435              # double 2.413599
	.quad	0x401ece74afd54541              # double 7.7016169999999997
	.quad	0x3ffa29e0a41a261c              # double 1.635224
	.quad	0x4020293532e7b3d9              # double 8.0804840000000002
	.quad	0x4010598fe69270b0              # double 4.0874629999999996
	.quad	0x401efc054ef459da              # double 7.7461140000000004
	.quad	0x40239e6d15ad106f              # double 9.8094260000000002
	.quad	0x3ff3e13b18dac259              # double 1.242488
	.quad	0x3ff67a3db3bfb58d              # double 1.404844
	.quad	0x4022ded288ce703b              # double 9.4352
	.quad	0x40108ec0f88333fd              # double 4.1394080000000004
	.quad	0x3fb7cad9ad85dfa8              # double 0.092938999999999994
	.quad	0x401e974eebf65dc0              # double 7.6477620000000002
	.quad	0x4021f684cf0739b0              # double 8.9814819999999997
	.quad	0x4008b35c182ecaef              # double 3.0875780000000002
	.quad	0x40143e35c5b4aa97              # double 5.0607519999999999
	.quad	0x400d102a3486f04a              # double 3.6328930000000001
	.quad	0x40206e136e71cda3              # double 8.2149920000000005
	.quad	0x40156ff21b3aeee9              # double 5.3593219999999997
	.quad	0x40156e3de6149c6f              # double 5.3576579999999998
	.quad	0x40017096bb98c7e3              # double 2.1799750000000002
	.quad	0x4002182e44b6e936              # double 2.2618070000000001
	.quad	0x4022e836eb4e9814              # double 9.4535440000000008
	.quad	0x4004e861e92923e6              # double 2.6134680000000001
	.quad	0x3ffd91c193b3a68b              # double 1.848085
	.quad	0x40102814940bbb1f              # double 4.0391409999999999
	.quad	0x400e594185058dde              # double 3.7935819999999998
	.quad	0x4023294d50ebaade              # double 9.5806679999999993
	.quad	0x4010bf51ac9afe1e              # double 4.1868350000000003
	.quad	0x3ff642a8869c66d3              # double 1.3912739999999999
	.quad	0x3ff1508a265f0f5a              # double 1.082163
	.quad	0x4016731f46ed245b              # double 5.6124239999999999
	.quad	0x3ff9900c521dda06              # double 1.5976680000000001
	.quad	0x3ff6ff39d1b2e59b              # double 1.437311
	.quad	0x3fc1e2b4959e6256              # double 0.13973099999999999
	.quad	0x3ff9f4245f5ad96a              # double 1.6221049999999999
	.quad	0x4000241b328b6d87              # double 2.01763
	.quad	0x40117060780fdc16              # double 4.3597429999999999
	.quad	0x400bae58a32f4491              # double 3.4601299999999999
	.quad	0x40181d7c2ca148bb              # double 6.0287940000000004
	.quad	0x4003627d028a1dfc              # double 2.4230900000000002
	.quad	0x40173e33eff19503              # double 5.8107449999999998
	.quad	0x4023d42e9899bf59              # double 9.9144179999999995
	.quad	0x400e5e5e2478854d              # double 3.7960780000000001
	.quad	0x3fe9d6c2efd438d2              # double 0.80746600000000002
	.quad	0x40003f080303c07f              # double 2.0307770000000001
	.quad	0x40113d31fcd24e16              # double 4.309761
	.quad	0x4022e7f1d81f1066              # double 9.4530169999999991
	.quad	0x40237bad9f0a1be3              # double 9.7415590000000005
	.quad	0x400f27aaef2c7326              # double 3.8943690000000002
	.quad	0x400c367caea747d8              # double 3.526605
	.quad	0x401ef7ee0b0af5fd              # double 7.7421189999999997
	.quad	0x4013eb43d89ce4a8              # double 4.9797510000000003
	.quad	0x3ff3fd113836a833              # double 1.2492840000000001
	.quad	0x4019fddbdb5d8948              # double 6.4979089999999999
	.quad	0x40009b3c81908e58              # double 2.0757989999999999
	.quad	0x4020e3de82d7b635              # double 8.4450570000000003
	.quad	0x402368bc7b45f17c              # double 9.7045630000000002
	.quad	0x4023650b73d188f4              # double 9.6973529999999996
	.quad	0x4011af9fcb0c026d              # double 4.4215080000000002
	.quad	0x4020a7483cafb3b7              # double 8.3267229999999994
	.quad	0x4016df7985271bce              # double 5.7182370000000002
	.quad	0x40140e3193f6c26a              # double 5.0138610000000003
	.quad	0x4006124a6a875d57              # double 2.758931
	.quad	0x4021b43201040bfe              # double 8.8519439999999996
	.quad	0x400d5ea78af3e469              # double 3.6712180000000001
	.quad	0x401304df8b157258              # double 4.754759
	.quad	0x40171714fce746cc              # double 5.7725410000000004
	.quad	0x401b4c0980b24207              # double 6.824255
	.quad	0x4020a3d577963993              # double 8.3199880000000004
	.quad	0x3ff2919695d91ab9              # double 1.160544
	.quad	0x401d21ce6c093d96              # double 7.2830139999999997
	.quad	0x400d2214ad362e90              # double 3.6416409999999999
	.quad	0x4019fc3b927d45a6              # double 6.496321
	.quad	0x4021c149e8815e39              # double 8.8775169999999992
	.quad	0x402299a38fbca106              # double 9.3000760000000007
	.quad	0x401d50afe60c38f3              # double 7.3287959999999996
	.quad	0x4012f2d0e5604189              # double 4.7371249999999998
	.quad	0x401f076fb09203a3              # double 7.7572619999999998
	.quad	0x40196014b599aa61              # double 6.3438290000000004
	.quad	0x4015f88b9778572a              # double 5.4927200000000003
	.quad	0x4018d924af0bf1a6              # double 6.2120540000000002
	.quad	0x402376e503fb3743              # double 9.7322159999999993
	.quad	0x40175b0dd82fd75e              # double 5.8389199999999999
	.quad	0x402119b90ea9e6ef              # double 8.5502400000000005
	.quad	0x400085ebb7739f34              # double 2.065391
	.quad	0x4013c227d028a1e0              # double 4.9396050000000002
	.quad	0x40224a63f9a49c2c              # double 9.1452939999999998
	.quad	0x3fefd549731098d4              # double 0.99478599999999994
	.quad	0x40214e789e774eec              # double 8.653264
	.quad	0x3fff77ab324851a8              # double 1.9667159999999999
	.quad	0x400c8a2c2374794f              # double 3.5674670000000002
	.quad	0x401d16d0d49949e9              # double 7.2722810000000004
	.quad	0x40120fb1183b6028              # double 4.5153239999999997
	.quad	0x3ff1b49e01de2691              # double 1.1065959999999999
	.quad	0x400818feef5ec80c              # double 3.0122049999999998
	.quad	0x401275b8dc55000d              # double 4.6149630000000004
	.quad	0x3ffd6b26bf8769ec              # double 1.83866
	.quad	0x4001ed23d4f15e7d              # double 2.2407910000000002
	.quad	0x4023d4f4c6e6d9be              # double 9.9159299999999995
	.quad	0x3fd636f7e3d1cc10              # double 0.347105
	.quad	0x3ff2adf9378ee286              # double 1.1674739999999999
	.quad	0x3ff8e11dbca9691a              # double 1.5549599999999999
	.quad	0x400c7fe32a0663c7              # double 3.5624449999999999
	.quad	0x4009da4c61d8622c              # double 3.2315909999999999
	.quad	0x4017bd03968d759f              # double 5.9345840000000001
	.quad	0x4005c97204295a6c              # double 2.7233619999999998
	.quad	0x4012412e40852b4e              # double 4.5636530000000004
	.quad	0x401e2481b21c475e              # double 7.5356509999999997
	.quad	0x4021e5551d68c693              # double 8.9479150000000001
	.quad	0x40160ed99cbee808              # double 5.5145020000000002
	.quad	0x401e5f7b9e060fe4              # double 7.5932449999999996
	.quad	0x4023715ebfa8f7db              # double 9.7214259999999992
	.quad	0x401dfc729f59ccfb              # double 7.496531
	.quad	0x3ff85fd694ccab3f              # double 1.523398
	.quad	0x401722da554b8bf0              # double 5.7840360000000004
	.quad	0x3fd974cd31769a91              # double 0.397754
	.quad	0x400ad8f7121ab4b7              # double 3.3559399999999999
	.quad	0x401e0892ab68cef6              # double 7.5083719999999996
	.quad	0x400bb6db0dd82fd7              # double 3.4642849999999998
	.quad	0x40206129ed3953df              # double 8.1897730000000006
	.quad	0x4004013cab81f96a              # double 2.500604
	.quad	0x3ff4695faa8a82a5              # double 1.2757259999999999
	.quad	0x3fe6bab862b27cbf              # double 0.71029299999999995
	.quad	0x400bd4af4f0d844d              # double 3.47885
	.quad	0x40026e48626f60e1              # double 2.303849
	.quad	0x4009a116ebd4cfd1              # double 3.2036570000000002
	.quad	0x401ac4ccee5abc0e              # double 6.6921879999999998
	.quad	0x4010bc42a66dbd73              # double 4.1838480000000002
	.quad	0x40235e4f54d1e96c              # double 9.6841989999999995
	.quad	0x3fd18943e1006078              # double 0.274003
	.quad	0x3fda2c83ec892ab7              # double 0.40896700000000002
	.quad	0x401a55375c8d9f90              # double 6.5832189999999997
	.quad	0x401d002795703f2d              # double 7.2501509999999998
	.quad	0x40125c193b3a68b2              # double 4.5899400000000004
	.quad	0x4009904816f0068e              # double 3.1954500000000001
	.quad	0x3fbae9142b302f73              # double 0.105119
	.quad	0x3fe6a1fd1569f490              # double 0.70727399999999996
	.quad	0x3fe2658a32f44913              # double 0.57489500000000004
	.quad	0x401655d52c16df40              # double 5.5838210000000004
	.quad	0x401b4ceaaf35e311              # double 6.8251140000000001
	.quad	0x401fdeccc46950fc              # double 7.9675779999999996
	.quad	0x3fee1728a6117721              # double 0.94032700000000002
	.quad	0x4016b007570c5650              # double 5.6719030000000004
	.quad	0x402175bb7b6bb129              # double 8.729946
	.quad	0x40014f11b60ae968              # double 2.163608
	.quad	0x4006ace032db1e9f              # double 2.8344119999999999
	.quad	0x4001f63baba7b917              # double 2.245231
	.quad	0x40152db877ab3248              # double 5.2946489999999997
	.quad	0x3fc6431bde82d7b6              # double 0.17392299999999999
	.quad	0x401ad05d52c16df4              # double 6.703481
	.quad	0x401bf85dfa871a3b              # double 6.9925459999999999
	.quad	0x3ff69cbff47735c2              # double 1.4132690000000001
	.quad	0x401a7d9fd36f7e3d              # double 6.6226799999999999
	.quad	0x400013a8a3f8982d              # double 2.0095990000000001
	.quad	0x401c35c28f5c28f6              # double 7.0525000000000002
	.quad	0x4019fe9f2778140e              # double 6.4986540000000002
	.quad	0x3ff024883fd50225              # double 1.0089189999999999
	.quad	0x40209948fd9fd36f              # double 8.2993849999999991
	.quad	0x3fd466fd651b0ccc              # double 0.31878600000000001
	.quad	0x400e388b11409a24              # double 3.777609
	.quad	0x40084e8b7e4de3b9              # double 3.0383520000000002
	.quad	0x4021dda1ec4e7254              # double 8.9328760000000002
	.quad	0x4003840181e03f70              # double 2.4394559999999998
	.quad	0x3fd970691ea78af4              # double 0.39748600000000001
	.quad	0x4005b4d8ba40d90e              # double 2.7133039999999999
	.quad	0x3fd99ce075f6fd22              # double 0.4002
	.quad	0x4010cf22c01e68a1              # double 4.2022810000000002
	.quad	0x40233302f72b4528              # double 9.5996319999999997
	.quad	0x3fc8254a3c64345d              # double 0.188638
	.quad	0x401c54a558ea7ce1              # double 7.082662
	.quad	0x40082b4f1e4b44a2              # double 3.021147
	.quad	0x4021496c61522a6f              # double 8.6434049999999996
	.quad	0x400bae3476295209              # double 3.4600610000000001
	.quad	0x401eb4e65bea0ba2              # double 7.67666
	.quad	0x400bc89a02752546              # double 3.47295
	.quad	0x3ff6b30e7ff583a5              # double 1.4187149999999999
	.quad	0x401fb1f6cacd184c              # double 7.9237929999999999
	.quad	0x3fe86789e774eebf              # double 0.76263899999999996
	.quad	0x400c274e22a2c237              # double 3.5191919999999999
	.quad	0x40187ae9ee45c359              # double 6.1200330000000003
	.quad	0x401f52bcf91a32b1              # double 7.8307989999999998
	.quad	0x401bd21f2990f302              # double 6.9551970000000001
	.quad	0x401b9732df505d10              # double 6.8976550000000003
	.quad	0x3ff66b020c49ba5e              # double 1.401125
	.quad	0x400e82db61bb05fb              # double 3.813895
	.quad	0x4022ab13dfb0d520              # double 9.3341360000000009
	.quad	0x400018d045fe1112              # double 2.0121159999999998
	.quad	0x40206994e1a3f466              # double 8.2062139999999992
	.quad	0x4017b22706d50657              # double 5.9239769999999998
	.quad	0x401d3c70435efa61              # double 7.3090219999999997
	.quad	0x402305faa8a82a56              # double 9.5116779999999999
	.quad	0x402182ae8e1d6495              # double 8.7552380000000003
	.quad	0x400b4ac647778dd6              # double 3.411511
	.quad	0x401c9b5d462c343b              # double 7.1517229999999996
	.quad	0x401760995aaf78ff              # double 5.8443350000000001
	.quad	0x401cf9b56323bbc7              # double 7.2438560000000001
	.quad	0x4010ffede97d06bc              # double 4.2499310000000001
	.quad	0x401d54a66559f6ec              # double 7.3326659999999997
	.quad	0x401b9b34a44c7b03              # double 6.9015680000000001
	.quad	0x4020aa4e7ab75643              # double 8.33263
	.quad	0x400587a85015c209              # double 2.6912389999999999
	.quad	0x401c5173b85e80bf              # double 7.0795430000000001
	.quad	0x4019146f9b994e1a              # double 6.2699569999999998
	.quad	0x4004055a7d24180d              # double 2.5026139999999999
	.quad	0x400f540a2877ee4e              # double 3.9160349999999999
	.quad	0x40133bd230b9dc2f              # double 4.8084189999999998
	.quad	0x401966a93f290abb              # double 6.3502549999999998
	.quad	0x401433a4723aafff              # double 5.0504319999999998
	.quad	0x40221705ea24cc68              # double 9.0449669999999998
	.quad	0x401a48dbcec84f90              # double 6.5711510000000004
	.quad	0x4021528f9f44d445              # double 8.6612519999999993
	.quad	0x4013b70e2c12ad82              # double 4.9287650000000003
	.quad	0x4008ac32a8c9b845              # double 3.0840809999999999
	.quad	0x400cce99a62ed352              # double 3.6008789999999999
	.quad	0x4008832873bc903f              # double 3.0640420000000002
	.quad	0x401b1d4280ae1049              # double 6.7785739999999999
	.quad	0x4022d31162281345              # double 9.4122420000000008
	.quad	0x401bb6b15f88fc93              # double 6.9284109999999997
	.quad	0x4020a81cb46bacf7              # double 8.3283439999999995
	.quad	0x401725e2cdc011d3              # double 5.7869979999999996
	.quad	0x400b04fb97bb7308              # double 3.3774329999999999
	.quad	0x401f54007570c565              # double 7.832033
	.quad	0x402185dc4007570c              # double 8.7614459999999994
	.quad	0x4000047cb70ac3a8              # double 2.0021909999999998
	.quad	0x401835308bb90646              # double 6.0519429999999996
	.quad	0x400e8b25b317efe1              # double 3.8179430000000001
	.quad	0x40002272862f598a              # double 2.0168200000000001
	.quad	0x40044f14db59578a              # double 2.5386139999999999
	.quad	0x3ff22272862f598a              # double 1.13341
	.quad	0x3fd6271fff79c843              # double 0.346138
	.quad	0x3ff52ba8c586876e              # double 1.323159
	.quad	0x40211ba8e71476b0              # double 8.5540230000000008
	.quad	0x40115ef62f9ca5be              # double 4.3427360000000004
	.quad	0x401e89adc8fb86f4              # double 7.6344519999999996
	.quad	0x3ffa4c1871e6cd29              # double 1.643578
	.quad	0x3ff68d0247021d11              # double 1.4094260000000001
	.quad	0x3fe855454152b0a7              # double 0.760409
	.quad	0x400e35f78359bc34              # double 3.776351
	.quad	0x4021eeb851eb851f              # double 8.9662500000000005
	.quad	0x400bbbccaf709b74              # double 3.4666990000000002
	.quad	0x4022c309c7ffde72              # double 9.3809339999999999
	.quad	0x401e2c60029f16b1              # double 7.5433349999999999
	.quad	0x400d0ac083126e98              # double 3.6302500000000002
	.quad	0x4012f5e56cd6c2f0              # double 4.7401330000000002
	.quad	0x40105e596c82e01a              # double 4.0921380000000003
	.quad	0x4008150ebaade658              # double 3.0102820000000001
	.quad	0x400eae32e3821af8              # double 3.8350580000000001
	.quad	0x40204e4e26d4801f              # double 8.1529399999999992
	.quad	0x4016f65c2d278078              # double 5.7405860000000004
	.quad	0x4019462a1b5c7cd9              # double 6.3185200000000004
	.quad	0x400252c7325918a0              # double 2.290419
	.quad	0x3ff0f4927913e814              # double 1.0597099999999999
	.quad	0x401f48c26138fffc              # double 7.8210540000000002
	.quad	0x401349a1b9f98b72              # double 4.8219060000000002
	.quad	0x402006dd69d30271              # double 8.0134080000000001
	.quad	0x4021cde679463cfb              # double 8.9021489999999996
	.quad	0x401f058537e2c55d              # double 7.7553910000000003
	.quad	0x4020d27daa4fca43              # double 8.4111150000000006
	.quad	0x401caf62b6ae7d56              # double 7.1712749999999996
	.quad	0x3fe49a1986b9c305              # double 0.64381100000000002
	.quad	0x40208d3cff64cf8d              # double 8.2758559999999992
	.quad	0x400f17b8d3f1843c              # double 3.8865829999999999
	.quad	0x3fa46bce8533b107              # double 0.039884999999999997
	.quad	0x4017c191dde37586              # double 5.9390330000000002
	.quad	0x402292f01754b05b              # double 9.2869879999999991
	.quad	0x4011e2c2bd7f51f0              # double 4.4714460000000003
	.quad	0x3feee6c093d96638              # double 0.96566799999999997
	.quad	0x3fe6c8c9320d9946              # double 0.71201000000000003
	.quad	0x401155529fe004b8              # double 4.333323
	.quad	0x4023c5d82fd75e20              # double 9.8864149999999995
	.quad	0x400486961c36976c              # double 2.5657160000000001
	.quad	0x400005ca29845dc8              # double 2.0028269999999999
	.quad	0x40047314445aa2e4              # double 2.5561910000000001
	.quad	0x401255e41d4b6a62              # double 4.5838780000000003
	.quad	0x401bcc0f45176146              # double 6.9492770000000004
	.quad	0x4012c6fb09203a32              # double 4.6943169999999999
	.quad	0x3ffc3f26f1dc50ce              # double 1.7654179999999999
	.quad	0x3ff5a8815e39713b              # double 1.353639
	.quad	0x401bddb5525cc426              # double 6.9665119999999998
	.quad	0x400f9518b0d0edc4              # double 3.9478010000000001
	.quad	0x40074f42fe82517e              # double 2.9137019999999998
	.quad	0x401bb05681ecd4aa              # double 6.9222049999999999
	.quad	0x40178770bd017daf              # double 5.8822660000000004
	.quad	0x401f824463065f96              # double 7.8772140000000004
	.quad	0x3fe821c044284dfd              # double 0.75412000000000001
	.quad	0x40228af7f498c3b1              # double 9.2714230000000004
	.quad	0x3fde718eb8950764              # double 0.47568100000000002
	.quad	0x40119a36199780bb              # double 4.4005970000000003
	.quad	0x400abb0c4588a04d              # double 3.341332
	.quad	0x4022c4cb9ecf6380              # double 9.384366
	.quad	0x3ff37d805e5f30e8              # double 1.21814
	.quad	0x400e84a83b1d0c80              # double 3.8147739999999999
	.quad	0x4020129b8cb8e087              # double 8.0363430000000005
	.quad	0x3febf4906034f3fe              # double 0.87360400000000005
	.quad	0x402373f5946c332f              # double 9.7264829999999999
	.quad	0x401c44003254e6e2              # double 7.0664069999999999
	.quad	0x40237d5171e29b6b              # double 9.7447619999999997
	.quad	0x402307be553ac4f8              # double 9.5151240000000001
	.quad	0x4023aa923e5b8562              # double 9.8331470000000003
	.quad	0x3fde997c3d68405b              # double 0.47811799999999999
	.quad	0x400c4b07d0aed99d              # double 3.5366360000000001
	.quad	0x401a8554b8bef8cf              # double 6.6302060000000003
	.quad	0x401d775e2046c765              # double 7.3665700000000003
	.quad	0x400a6812be48a58b              # double 3.3008169999999999
	.quad	0x3fde7dd872f33ca3              # double 0.47643099999999999
	.quad	0x401eb7f9d6f112fd              # double 7.6796639999999998
	.quad	0x3fdc043a2163fdd6              # double 0.43775799999999998
	.quad	0x3fe7458eeae9ee46              # double 0.72724100000000003
	.quad	0x401609057d1782d4              # double 5.5088100000000004
	.quad	0x401df326e115592e              # double 7.4874530000000004
	.quad	0x40235d041cc532a5              # double 9.6816720000000007
	.quad	0x401dde6c093d9664              # double 7.4672090000000004
	.quad	0x40216fa41e57d9dc              # double 8.7180490000000006
	.quad	0x400d173e24febd0a              # double 3.6363490000000001
	.quad	0x4016fca5375c8da0              # double 5.7467240000000004
	.quad	0x4023aaa23bff8a8f              # double 9.8332689999999995
	.quad	0x401098d002e23290              # double 4.1492310000000003
	.quad	0x401fee9b7bf1e8e6              # double 7.983015
	.quad	0x4020fa4d6e47dc38              # double 8.4888720000000006
	.quad	0x401fd0afe60c38f3              # double 7.9537959999999996
	.quad	0x4010c27674d16335              # double 4.1899050000000004
	.quad	0x4019ce12e83a109d              # double 6.451244
	.quad	0x401aaeca686e7e63              # double 6.6706940000000001
	.quad	0x400586950fc71d60              # double 2.6907139999999998
	.quad	0x3ffba02107b78466              # double 1.726594
	.quad	0x401b0425aee631f9              # double 6.7540500000000003
	.quad	0x3fd156605ee568a5              # double 0.270897
	.quad	0x4022dbc947064ecf              # double 9.4292700000000007
	.quad	0x400876145953586d              # double 3.0576560000000002
	.quad	0x401709a4df47f994              # double 5.7594180000000001
	.quad	0x40220ba3ca7503b8              # double 9.0227339999999998
	.quad	0x40238c3f3e0370ce              # double 9.7739200000000004
	.quad	0x3ff92a8112ba16e8              # double 1.5728770000000001
	.quad	0x401286e1deacc921              # double 4.6317209999999998
	.quad	0x40220fe414e7ee91              # double 9.0310369999999995
	.quad	0x400be5425f202108              # double 3.4869430000000001
	.quad	0x40117395c4220360              # double 4.362876
	.quad	0x4018172a7bd48cb5              # double 6.0226230000000003
	.quad	0x400c4e46cfc829d0              # double 3.5382210000000001
	.quad	0x3ff0d25fe974a340              # double 1.051361
	.quad	0x40206ada33bd9cae              # double 8.2086959999999998
	.quad	0x401e27e8ccdd93c4              # double 7.5389739999999996
	.quad	0x4015e9c17225b74a              # double 5.4782770000000003
	.quad	0x4005a4f7ec3547e0              # double 2.7055509999999998
	.quad	0x400338a0902de00d              # double 2.40265
	.quad	0x400b5b4f61672325              # double 3.4195850000000001
	.quad	0x401fff36ef8055fc              # double 7.9992330000000003
	.quad	0x400cbbdbe3c10518              # double 3.5917279999999998
	.quad	0x3fcaa73f748a1598              # double 0.208229
	.quad	0x4021051e53a81dc1              # double 8.5099970000000003
	.quad	0x40106fb6134ce3de              # double 4.1090929999999997
	.quad	0x3fdecdab191dde37              # double 0.48130299999999998
	.quad	0x40116f34d6a161e5              # double 4.3586
	.quad	0x401986d0917d6b66              # double 6.3816550000000003
	.quad	0x40222baf74cd3177              # double 9.0853230000000007
	.quad	0x401d52fc2656abde              # double 7.3310399999999998
	.quad	0x3ff8798958d9b5e9              # double 1.5296719999999999
	.quad	0x40223e30ec311623              # double 9.1214670000000009
	.quad	0x4003b63dc486ad2e              # double 2.4639850000000001
	.quad	0x402092c18f81e8a3              # double 8.2866330000000001
	.quad	0x401fcc8de2ac3223              # double 7.9497600000000003
	.quad	0x40214b10fd7e4580              # double 8.6466139999999996
	.quad	0x401d4b89d6adf71f              # double 7.3237680000000003
	.quad	0x401e1122749f0e4e              # double 7.5167330000000003
	.quad	0x3fd56a2b1704ff43              # double 0.33460499999999999
	.quad	0x3ff9011d3671ac15              # double 1.562772
	.quad	0x3f94434e3369b9d8              # double 0.019788
	.quad	0x401805aff2a172ac              # double 6.0055540000000001
	.quad	0x40239dee99a62ed3              # double 9.8084609999999994
	.quad	0x402031b4fe79ee03              # double 8.0970840000000006
	.quad	0x400dc263d816aceb              # double 3.7199170000000001
	.quad	0x401a9b85e80bed74              # double 6.651878
	.quad	0x40183a9ac36544fe              # double 6.0572309999999998
	.quad	0x3fe3fde5082cf52c              # double 0.62474300000000005
	.quad	0x4022cd8d1526d8b2              # double 9.4014670000000002
	.quad	0x400c9e6a337a80d0              # double 3.5773510000000002
	.quad	0x3ff9fbc3c5bd0e13              # double 1.623966
	.quad	0x40136521dda059a7              # double 4.8487619999999998
	.quad	0x3fecbe5753a3ec03              # double 0.89823500000000001
	.quad	0x4022045de9c0229a              # double 9.0085289999999993
	.quad	0x3ffe3ddebd9018e7              # double 1.8901049999999999
	.quad	0x4023f6512a94ff00              # double 9.9810879999999997
	.quad	0x3fc9ae924f227d03              # double 0.20064000000000001
	.quad	0x402305bdf8f47304              # double 9.5112149999999999
	.quad	0x401f732c625e99e9              # double 7.8624739999999997
	.quad	0x4004b4cdb7ae5797              # double 2.5882830000000001
	.quad	0x4008d69ec2ce464a              # double 3.1047950000000002
	.quad	0x4020f4f2f123c42a              # double 8.4784159999999993
	.quad	0x3ff4fac1d29dc726              # double 1.3112200000000001
	.quad	0x4006646173b85e81              # double 2.7990140000000001
	.quad	0x4014897f62b6ae7d              # double 5.1342749999999997
	.quad	0x3fe271c53f39d1b3              # double 0.57638800000000001
	.quad	0x402318a45d41fa76              # double 9.5481289999999994
	.quad	0x401a25308bb90646              # double 6.5363179999999996
	.quad	0x400c4256366d7a57              # double 3.5323910000000001
	.quad	0x40102ff47735c183              # double 4.0468310000000001
	.quad	0x4021ea8e71476af9              # double 8.9581180000000007
	.quad	0x4016614d72799a20              # double 5.5950220000000002
	.quad	0x4019d0941c8216c6              # double 6.4536899999999999
	.quad	0x401bf76b3bb83cf3              # double 6.9916200000000002
	.quad	0x4022dec1c1d6cf85              # double 9.4350719999999999
	.quad	0x3ffdb1db445ed4a2              # double 1.8559220000000001
	.quad	0x3ff03eb4a66559f7              # double 1.015309
	.quad	0x400ffad3a604e1e7              # double 3.997474
	.quad	0x3fc356b00ffda405              # double 0.151083
	.quad	0x400890dae3e6c4c6              # double 3.0707300000000002
	.quad	0x3f947c73eee52589              # double 0.020005999999999999
	.quad	0x40100fbdf090f734              # double 4.0153730000000003
	.quad	0x401922c5e2cdc012              # double 6.2839580000000002
	.quad	0x402245c4c9c90c4e              # double 9.1362670000000001
	.quad	0x400eeedbb59ddc1e              # double 3.8666299999999998
	.quad	0x4010a51f81a5870e              # double 4.1612530000000003
	.quad	0x40028dd82fd75e20              # double 2.3192599999999999
	.quad	0x402267b7c7820a31              # double 9.2025740000000003
	.quad	0x400ce7d2c7b890d6              # double 3.6131950000000002
	.quad	0x400896c8b4395810              # double 3.0736249999999998
	.quad	0x401486501e2584f5              # double 5.1311650000000002
	.quad	0x40071ee78183f91e              # double 2.8900899999999998
	.quad	0x402194cfaeff5c6c              # double 8.7906469999999998
	.quad	0x400aa16e7a311e86              # double 3.328824
	.quad	0x4011716a8b8f14db              # double 4.3607579999999997
	.quad	0x401a45fa658c4bd3              # double 6.5683379999999998
	.quad	0x401ca66fd651b0cd              # double 7.1625360000000002
	.quad	0x401f2562174c4ce0              # double 7.7865070000000003
	.quad	0x4011762d40aaeafb              # double 4.3654070000000003
	.quad	0x40026e043a2163fe              # double 2.3037190000000001
	.quad	0x3ffb5f5f0b28522f              # double 1.7107840000000001
	.quad	0x401e337a80cf9e38              # double 7.5502719999999996
	.quad	0x4016f4bad7d7c2ca              # double 5.7389939999999999
	.quad	0x4023ee17c1bda512              # double 9.9650250000000007
	.quad	0x40233ec0724b76f7              # double 9.6225620000000002
	.quad	0x4022ca7cbf6e3f79              # double 9.3954830000000004
	.quad	0x4005a9b9d7fd8277              # double 2.7078739999999999
	.quad	0x3ff81f0c34c1a8ac              # double 1.5075799999999999
	.quad	0x400bba2b5a20ddc6              # double 3.465903
	.quad	0x401ec2ef911cf356              # double 7.6903670000000002
	.quad	0x401fcf1b25f633ce              # double 7.9522519999999997
	.quad	0x3fdbf3c2dadb8349              # double 0.436753
	.quad	0x4011b06f262888b5              # double 4.4222989999999998
	.quad	0x401e898f605ab3ab              # double 7.6343360000000002
	.quad	0x3ffab5fe542e557e              # double 1.669432
	.quad	0x400ab9207d4e0978              # double 3.3403939999999999
	.quad	0x4014ead4f5903a75              # double 5.2293279999999998
	.quad	0x4018db8dc55000c9              # double 6.2144079999999997
	.quad	0x40236a2ccb3a2596              # double 9.7073730000000005
	.quad	0x40229437e6f71a7e              # double 9.2894889999999997
	.quad	0x4023c2d3a604e1e7              # double 9.8805209999999998
	.quad	0x3ff8608f21709310              # double 1.523574
	.quad	0x40123fc2a8869c67              # double 4.5622660000000002
	.quad	0x401767baa9b499d0              # double 5.8512979999999999
	.quad	0x3ffafa14cec41dd2              # double 1.6860550000000001
	.quad	0x400972d7f950b956              # double 3.181076
	.quad	0x3fc540dd3fe1975f              # double 0.166042
	.quad	0x402047ebd09e12a5              # double 8.1404709999999998
	.quad	0x4020e5d76683c298              # double 8.4489090000000004
	.quad	0x402263a2be0589ad              # double 9.1946010000000005
	.quad	0x3feeb387160956c1              # double 0.95941500000000001
	.quad	0x4015d8c9320d9946              # double 5.4617050000000003
	.quad	0x40204793ff25e56d              # double 8.1398010000000003
	.quad	0x401eaad18d25edd0              # double 7.6668149999999997
	.quad	0x401c9d5347a5b0ff              # double 7.1536379999999999
	.quad	0x401febf8fcd67fd4              # double 7.980442
	.quad	0x40116de1198aeb81              # double 4.3573040000000001
	.quad	0x4016e32617c1bda5              # double 5.7218249999999999
	.quad	0x4003c9eba6aca793              # double 2.4735939999999998
	.quad	0x3ffa99274e22a2c2              # double 1.662391
	.quad	0x401eef4e0114d2f6              # double 7.7336960000000001
	.quad	0x40205857082491b0              # double 8.1725390000000004
	.quad	0x4018e2ccf6be37df              # double 6.2214850000000004
	.quad	0x400cf78a2a90cd42              # double 3.6208689999999999
	.quad	0x3fd8c79b34a44c7b              # double 0.387183
	.quad	0x3ff2c3e100607810              # double 1.172822
	.quad	0x40182fff79c842fa              # double 6.0468729999999997
	.quad	0x40090626f60e0eb6              # double 3.1280039999999998
	.quad	0x402376a57214f052              # double 9.7317309999999999
	.quad	0x4010bae9ee45c359              # double 4.1825330000000003
	.quad	0x402138a0b1bbcf4f              # double 8.6106010000000008
	.quad	0x4016dca7503b81b6              # double 5.7154819999999997
	.quad	0x400ae2e7f6f4be83              # double 3.3607939999999998
	.quad	0x401c4e9a6f826edb              # double 7.0767610000000003
	.quad	0x3ff895714b9cb685              # double 1.5364850000000001
	.quad	0x40204848e043a216              # double 8.1411809999999996
	.quad	0x400df3e9a6f826ee              # double 3.7440980000000001
	.quad	0x4022e8acc0bdcad1              # double 9.4544429999999994
	.quad	0x4023a193f6c2699c              # double 9.8155819999999991
	.quad	0x4002d543aeab7996              # double 2.354133
	.quad	0x401f94b7b28954a8              # double 7.895232
	.quad	0x4011a1be6e653869              # double 4.407953
	.quad	0x4022dd6eac860568              # double 9.4324849999999997
	.quad	0x401e9ec2ce464990              # double 7.6550399999999996
	.quad	0x4010ebc0a06e9ff1              # double 4.2302270000000002
	.quad	0x4011a60cbf2b239a              # double 4.4121579999999998
	.quad	0x3fe8e82b62845996              # double 0.77834099999999995
	.quad	0x40214ba1f4b1ee24              # double 8.6477199999999996
	.quad	0x4016e93f6c2699c8              # double 5.7277810000000002
	.quad	0x40100c9d16fc9bc7              # double 4.0123179999999996
	.quad	0x40119b7e4de3b8a2              # double 4.4018490000000003
	.quad	0x400d112ba16e7a31              # double 3.6333839999999999
	.quad	0x40142e7c8d195897              # double 5.0453970000000004
	.quad	0x400548f8e7ddca4b              # double 2.660631
	.quad	0x400f312c27a63737              # double 3.8990100000000001
	.quad	0x40109ca85caafbc2              # double 4.1529860000000003
	.quad	0x40200206c8711d7a              # double 8.0039580000000008
	.quad	0x3ff1a2ccb3a2595c              # double 1.1022460000000001
	.quad	0x4017dfe43675ddd3              # double 5.9686440000000003
	.quad	0x401bbe28ed5f138c              # double 6.9357030000000002
	.quad	0x4011a07a6bd6e8b0              # double 4.4067170000000004
	.quad	0x3fe108919ef954eb              # double 0.53229599999999999
	.quad	0x402291cf355cd91f              # double 9.2847840000000001
	.quad	0x402242686e7e62dc              # double 9.1297029999999992
	.quad	0x400fe73cd573647c              # double 3.9879090000000001
	.quad	0x3ff286455eaee200              # double 1.1577809999999999
	.quad	0x3fedd51d68c692f7              # double 0.93226500000000001
	.quad	0x4015802f72b45283              # double 5.3751810000000004
	.quad	0x4005890e66cb1034              # double 2.6919219999999999
	.quad	0x4009dec0b567557a              # double 3.2337660000000001
	.quad	0x4018591c087442c8              # double 6.087021
	.quad	0x40218403361565c3              # double 8.7578370000000003
	.quad	0x4014dc148344c37e              # double 5.2149219999999996
	.quad	0x4021246de76427c8              # double 8.5711510000000004
	.quad	0x4017b01d19157abc              # double 5.9219860000000004
	.quad	0x401e616f0068db8c              # double 7.5951500000000003
	.quad	0x401db6ca46e08f21              # double 7.4285059999999996
	.quad	0x40113ad42c3c9eed              # double 4.3074500000000002
	.quad	0x40230c0053e2d624              # double 9.5234400000000007
	.quad	0x4003a4052d666a98              # double 2.4550879999999999
	.quad	0x3ff3e8709741d085              # double 1.244248
	.quad	0x3fe4481908e581cf              # double 0.63380099999999995
	.quad	0x3ffeaf05a708ede5              # double 1.9177299999999999
	.quad	0x400d6e4c0df58c09              # double 3.6788560000000001
	.quad	0x4011d8abd5dc4007              # double 4.4615929999999997
	.quad	0x3ff624cb5bb384fd              # double 1.383983
	.quad	0x402259bf162ae4b0              # double 9.1752859999999998
	.quad	0x402215479d4d8341              # double 9.0415620000000008
	.quad	0x400bd641700cd856              # double 3.4796170000000002
	.quad	0x401d2fcd67fd3f5b              # double 7.2966819999999997
	.quad	0x4014513db7f17375              # double 5.0793369999999998
	.quad	0x3f3c0ca600b02928              # double 4.28E-4
	.quad	0x401fb4f0520d130e              # double 7.926698
	.quad	0x401055058dde7a74              # double 4.0830289999999998
	.quad	0x3ff020d130df9bdc              # double 1.0080119999999999
	.quad	0x3ff3b3de1e2de871              # double 1.2314130000000001
	.quad	0x4001d22962cfd8f1              # double 2.2276180000000001
	.quad	0x40231d810624dd2f              # double 9.5576249999999998
	.quad	0x400b8d538ac18f82              # double 3.444007
	.quad	0x3fe468e3ef284168              # double 0.63780400000000004
	.quad	0x40215e501e2584f5              # double 8.6842050000000004
	.quad	0x40195a3c21187e7c              # double 6.33812
	.quad	0x4017186df82b1f68              # double 5.7738569999999996
	.quad	0x4020a0676a7264a1              # double 8.3132889999999993
	.quad	0x40187a76534373f3              # double 6.1195919999999999
	.quad	0x40177cc814d7279a              # double 5.8718570000000003
	.quad	0x400c99cd8127b2cc              # double 3.5750989999999998
	.quad	0x3feb69ff0cbaf966              # double 0.85668900000000003
	.quad	0x402295538ac18f82              # double 9.2916530000000002
	.quad	0x4005c4998d045fe1              # double 2.720996
	.quad	0x40224e0029f16b12              # double 9.1523450000000004
	.quad	0x3feb9c7de5082cf5              # double 0.86285299999999998
	.quad	0x40136b15b573eab3              # double 4.8545749999999996
	.quad	0x401bfbc23315d702              # double 6.9958580000000001
	.quad	0x401d388c60cbf2b2              # double 7.3052229999999998
	.quad	0x40105940bbb1f256              # double 4.087161
	.quad	0x4019e8305d95dd4c              # double 6.4767469999999996
	.quad	0x3fe30d477bbf93ff              # double 0.59537099999999998
	.quad	0x401c2fc43b2dd378              # double 7.0466470000000001
	.quad	0x400f3314445aa2e4              # double 3.8999410000000001
	.quad	0x4013beeb702602c9              # double 4.936445
	.quad	0x3ff666117720c8cd              # double 1.3999189999999999
	.quad	0x3fa45803cd141a69              # double 0.039733999999999998
	.quad	0x401e567dbb16c1e3              # double 7.5844639999999996
	.quad	0x4014a259e1f3a57f              # double 5.1585460000000003
	.quad	0x401df892684cf074              # double 7.4927460000000004
	.quad	0x4007dde15ca6ca04              # double 2.9833400000000001
	.quad	0x401ea21ee675147f              # double 7.6583209999999999
	.quad	0x401e5eb851eb851f              # double 7.5925000000000002
	.quad	0x4022e75e84f09529              # double 9.4518930000000001
	.quad	0x401ed549f94855da              # double 7.7082899999999999
	.quad	0x4011496249a133c2              # double 4.3216640000000002
	.quad	0x4023dda78f25a251              # double 9.932919
	.quad	0x40213cbddb9841ab              # double 8.6186360000000004
	.quad	0x4019d251c193b3a7              # double 6.4553900000000004
	.quad	0x3fb34c1a8ac5c140              # double 0.075380000000000003
	.quad	0x3fc61f8e3ac0c62e              # double 0.17283799999999999
	.quad	0x4023e09c7ffde721              # double 9.9386939999999999
	.quad	0x401c4242070b8cfc              # double 7.064705
	.quad	0x4018f53fc0096feb              # double 6.2395009999999997
	.quad	0x4001e9a9973d9ec7              # double 2.239093
	.quad	0x3fdd4dca8e2e2b8c              # double 0.45787299999999997
	.quad	0x401db87a4a48f96e              # double 7.4301539999999999
	.quad	0x4015cfda836eb4ea              # double 5.4529820000000004
	.quad	0x3ff3d539b888722a              # double 1.239557
	.quad	0x400ec34ca0c282c7              # double 3.845361
	.quad	0x4011224399b2c40d              # double 4.283461
	.quad	0x4005e7f90d9d7775              # double 2.7382680000000001
	.quad	0x401be9fa97e132b5              # double 6.9784949999999997
	.quad	0x400064e93e1c9b41              # double 2.0492729999999999
	.quad	0x40138b7c3504c48b              # double 4.8862160000000001
	.quad	0x400669ed3953dea4              # double 2.8017219999999998
	.quad	0x4021aaf9a8cdea03              # double 8.8339359999999996
	.quad	0x400fd7d523b3636f              # double 3.9803869999999999
	.quad	0x402013161a1db878              # double 8.0372780000000006
	.quad	0x402106c311622813              # double 8.5132069999999995
	.quad	0x401bd0995aaf78ff              # double 6.9537100000000001
	.quad	0x4022bbc6c97d8cf4              # double 9.3667510000000007
	.quad	0x40180d627bf61aa4              # double 6.0130710000000001
	.quad	0x40230e496ededaec              # double 9.5279039999999994
	.quad	0x401eb708ede54b49              # double 7.6787450000000001
	.quad	0x402099f31f46ed24              # double 8.3006829999999993
	.quad	0x401a62d3c792d128              # double 6.5965109999999996
	.quad	0x402086bedfa43fe6              # double 8.2631750000000004
	.quad	0x401fc623d0bfa094              # double 7.9434959999999997
	.quad	0x4016f7008a697aee              # double 5.7412130000000001
	.quad	0x4016fa5a469d7343              # double 5.7444850000000001
	.quad	0x401461351159c497              # double 5.0949289999999996
	.quad	0x4014428134480629              # double 5.0649459999999999
	.quad	0x3ff1866e43aa79bc              # double 1.0953200000000001
	.quad	0x4010834efcbd5561              # double 4.1282310000000004
	.quad	0x40108c892ab68cef              # double 4.1372419999999996
	.quad	0x4002221e1d2178f7              # double 2.2666590000000002
	.quad	0x401eb27418d6909b              # double 7.674271
	.quad	0x401f1df04ddb5526              # double 7.7792370000000002
	.quad	0x4022f68640208180              # double 9.4814930000000004
	.quad	0x40076131a8ef77f2              # double 2.9224579999999998
	.quad	0x4000f48c2e770bd0              # double 2.119408
	.quad	0x3fd9cee5abc0e38a              # double 0.40325299999999997
	.quad	0x3ffc19f0a1be2b49              # double 1.7563329999999999
	.quad	0x40024558ea7ce0fc              # double 2.2838609999999999
	.quad	0x402071ac9afe1da8              # double 8.2220200000000006
	.quad	0x4017547b24638c97              # double 5.8325009999999997
	.quad	0x3ffba37cdcca70d2              # double 1.727414
	.quad	0x3fea13db7f173754              # double 0.81492399999999998
	.quad	0x40201daf294dd723              # double 8.0579769999999993
	.quad	0x401e5a7ac81d3aa3              # double 7.5883589999999996
	.quad	0x3fd53461309c7ffe              # double 0.33132200000000001
	.quad	0x40221afa0d77b7c8              # double 9.0526890000000009
	.quad	0x401d4aac96cc5fc0              # double 7.3229240000000004
	.quad	0x4021a8c4588a04d1              # double 8.8296229999999998
	.quad	0x40162b4fe79ee02a              # double 5.5422969999999996
	.quad	0x4001b2999567dbb1              # double 2.2122069999999998
	.quad	0x3ffe922fad6cb535              # double 1.91069
	.quad	0x3fb8845132f87ad1              # double 0.095769000000000007
	.quad	0x4021c80f12c27a63              # double 8.8907399999999992
	.quad	0x4013f965b20b8067              # double 4.9935520000000002
	.quad	0x40232a7f8012dfd7              # double 9.5830040000000007
	.quad	0x4023748bc9cd3e0c              # double 9.7276290000000003
	.quad	0x401cf79bbadc0981              # double 7.2418050000000003
	.quad	0x4000ed184c271fff              # double 2.1157689999999998
	.quad	0x3fe75c853c148345              # double 0.73004400000000003
	.quad	0x4023352c9d16fc9c              # double 9.6038560000000003
	.quad	0x4022f062d40aaeb0              # double 9.4695040000000006
	.quad	0x40200db5525cc426              # double 8.0267739999999996
	.quad	0x3febd4067cf1c326              # double 0.86963199999999996
	.quad	0x4011919b0ab2e169              # double 4.3921929999999998
	.quad	0x401b4de0d66f0cfe              # double 6.8260529999999999
	.quad	0x4017591eeaa6d267              # double 5.8370319999999998
	.quad	0x401f750c5eb313be              # double 7.8643049999999999
	.quad	0x40029f3c70c996b7              # double 2.3277519999999998
	.quad	0x400ac20ddc619546              # double 3.3447529999999999
	.quad	0x40199220bc382a13              # double 6.392703
	.quad	0x401c909e12a51e32              # double 7.1412279999999999
	.quad	0x40110f4517614595              # double 4.2649119999999998
	.quad	0x40154060fe47991c              # double 5.3128700000000002
	.quad	0x400584b2b777d0f2              # double 2.689794
	.quad	0x4018f51ac9afe1da              # double 6.2393599999999996
	.quad	0x3ff1aef3d3a1d324              # double 1.105213
	.quad	0x40228a4441787054              # double 9.2700519999999997
	.quad	0x4020dabe0589acbd              # double 8.4272310000000008
	.quad	0x40073d2e0e30446b              # double 2.9048729999999998
	.quad	0x401d49ab6d00b45b              # double 7.3219430000000001
	.quad	0x401511bef49cf56f              # double 5.2673300000000003
	.quad	0x3ffa7d9a95421c04              # double 1.6556649999999999
	.quad	0x401af3cf2cf95d4f              # double 6.7380950000000004
	.quad	0x400e2d9d7774aba4              # double 3.7722730000000002
	.quad	0x40023d6bebe1650a              # double 2.2799909999999999
	.quad	0x4002cc4d65e46067              # double 2.3497569999999999
	.quad	0x4023d81f53825e14              # double 9.9221140000000005
	.quad	0x3ff1f75a74c09c3d              # double 1.122889
	.quad	0x40118947496aad1d              # double 4.384061
	.quad	0x40182dbbe0157eed              # double 6.0446619999999998
	.quad	0x40146258d5842b73              # double 5.0960419999999997
	.quad	0x4023a271fff79c84              # double 9.8172759999999996
	.quad	0x4011166e86c6583f              # double 4.2719060000000004
	.quad	0x401fcfc158fb43d9              # double 7.9528860000000003
	.quad	0x3ff3b44b2b777d0f              # double 1.231517
	.quad	0x40237526b723ee1c              # double 9.7288110000000003
	.quad	0x402322775fb2edfe              # double 9.5673169999999992
	.quad	0x3ff1fe64f54d1e97              # double 1.1246080000000001
	.quad	0x400dfe63e8dda48b              # double 3.7492139999999998
	.quad	0x40181393250b5244              # double 6.0191160000000004
	.quad	0x400423ee1bd1ed9e              # double 2.517544
	.quad	0x3ffaf9f77292c493              # double 1.6860269999999999
	.quad	0x40234b66f9335d25              # double 9.6472700000000006
	.quad	0x4005757abb8800eb              # double 2.6823630000000001
	.quad	0x40201d3f9e7b80aa              # double 8.0571260000000002
	.quad	0x4011139da16616b5              # double 4.2691559999999997
	.quad	0x3ff82cc92146a1a5              # double 1.510934
	.quad	0x40045ab29e4d5d81              # double 2.544286
	.quad	0x40206db2d4d4024b              # double 8.2142549999999996
	.quad	0x40234c99ae924f22              # double 9.6496099999999991
	.quad	0x401facdb7ae5796c              # double 7.918806
	.quad	0x401a30b6f9fcb0c0              # double 6.5475729999999999
	.quad	0x400dbf9f01b866e4              # double 3.7185649999999999
	.quad	0x3fd0227d028a1dfc              # double 0.25210500000000002
	.quad	0x3fa6bbfd71b04684              # double 0.044402999999999998
	.quad	0x400be0e1719f7f8d              # double 3.4848050000000002
	.quad	0x3feef20a73f748a1              # double 0.96704599999999996
	.quad	0x401bb66f0cfe1544              # double 6.9281579999999998
	.quad	0x400a3c17225b749b              # double 3.2793410000000001
	.quad	0x4001eda9003eea21              # double 2.2410450000000002
	.quad	0x4022906338b47c74              # double 9.2820070000000001
	.quad	0x400d881a9b8cb8e1              # double 3.6914570000000002
	.quad	0x402140869c66d374              # double 8.6260270000000005
	.quad	0x400702ea0fd3b29a              # double 2.876423
	.quad	0x4005a42b734b5137              # double 2.7051609999999999
	.quad	0x400c11769a91105e              # double 3.508527
	.quad	0x40117502ababead5              # double 4.364268
	.quad	0x3ffd3bc1acde19fc              # double 1.827089
	.quad	0x401bf5e02ea960b7              # double 6.990113
	.quad	0x3fc3b40b34e7685a              # double 0.15393200000000001
	.quad	0x401ff7ded6ba8c58              # double 7.9920609999999996
	.quad	0x4020a4f13cee9dd8              # double 8.3221530000000001
	.quad	0x401f16d117b5286b              # double 7.7722819999999996
	.quad	0x401eabf444e0daa1              # double 7.6679240000000001
	.quad	0x401b71f18c9fb613              # double 6.8612729999999997
	.quad	0x40208d1b71758e22              # double 8.2756000000000007
	.quad	0x40191925fe974a34              # double 6.274559
	.quad	0x400c971b0468448d              # double 3.573782
	.quad	0x40197c55432873bd              # double 6.3714190000000004
	.quad	0x3fe85de15ca6ca04              # double 0.76146000000000002
	.quad	0x3ffc33365881a155              # double 1.7625029999999999
	.quad	0x40218f26aec0724b              # double 8.7795919999999992
	.quad	0x40203f91c4b90215              # double 8.1241590000000006
	.quad	0x3ffc09abb01c92de              # double 1.7523610000000001
	.quad	0x3fe860b2c83ec893              # double 0.76180400000000004
	.quad	0x4021efd50225742e              # double 8.9684220000000003
	.quad	0x400de0ee06d93815              # double 3.734829
	.quad	0x4000e95a6c5d206d              # double 2.1139420000000002
	.quad	0x400271c2a0232096              # double 2.3055469999999998
	.quad	0x3ff4aa1a500d5e8d              # double 1.2915289999999999
	.quad	0x40073dbb9cf9a06a              # double 2.9051429999999998
	.quad	0x40209e0999dcb578              # double 8.3086669999999998
	.quad	0x4016d02363b25700              # double 5.7032600000000002
	.quad	0x402200ceb356da01              # double 9.0015769999999993
	.quad	0x40229f0c34c1a8ac              # double 9.3106399999999993
	.quad	0x402172089e34330d              # double 8.7227219999999992
	.quad	0x4023a4ae21101b00              # double 9.8216409999999996
	.quad	0x3fe18153bd167664              # double 0.547037
	.quad	0x4002a85015c20924              # double 2.3321839999999998
	.quad	0x401a2831ad2135db              # double 6.5392520000000003
	.quad	0x401a2c99f1ae2da5              # double 6.5435559999999997
	.quad	0x3fede4d5d80e496f              # double 0.93418400000000001
	.quad	0x401deb96f21f6cad              # double 7.4800680000000002
	.quad	0x4006213b9f127f5f              # double 2.7662270000000002
	.quad	0x40185640e9d51b50              # double 6.0842320000000001
	.quad	0x4023226dce39b457              # double 9.5672440000000005
	.quad	0x40115775b8130165              # double 4.3354100000000004
	.quad	0x40162897204295a7              # double 5.5396390000000002
	.quad	0x40127674d1633483              # double 4.6156800000000002
	.quad	0x401d537da61e0c5b              # double 7.3315340000000004
	.quad	0x3fe8c881e4712e41              # double 0.77447600000000005
	.quad	0x4023c94f69ca9ef5              # double 9.8931839999999997
	.quad	0x40008cb20fb224ab              # double 2.0686990000000001
	.quad	0x400a2c93a7115161              # double 3.271766
	.quad	0x3ff1cc0f01fb82c3              # double 1.1123190000000001
	.quad	0x401914b76f6d7625              # double 6.2702309999999999
	.quad	0x4003729802c0a4a0              # double 2.4309539999999998
	.quad	0x4013eb78897e9963              # double 4.9799519999999999
	.quad	0x4002b4a7f8012dfd              # double 2.3382109999999998
	.quad	0x4013abbdbe3c1052              # double 4.9177160000000004
	.quad	0x401fa0e0221426fe              # double 7.9071049999999996
	.quad	0x3fe6c562e09fe868              # double 0.71159499999999998
	.quad	0x4022121af7d30ad4              # double 9.0353619999999992
	.quad	0x3ff35830e3cd9a52              # double 1.209031
	.quad	0x3ff2dfe21d96e9bc              # double 1.179659
	.quad	0x40167acabc515486              # double 5.6199139999999996
	.quad	0x401a96a832b990b0              # double 6.6471260000000001
	.quad	0x3ffab2d6ece13f4b              # double 1.6686620000000001
	.quad	0x4023981bc98a222d              # double 9.7970869999999994
	.quad	0x4004ebebe1650a46              # double 2.6151960000000001
	.quad	0x3ff3c17dae81882b              # double 1.234739
	.quad	0x400b5ed288ce703b              # double 3.4213
	.quad	0x4021ae736049ecb3              # double 8.8407239999999998
	.quad	0x3fcbd3c36113404f              # double 0.21740000000000001
	.quad	0x400e4aeea63b688c              # double 3.7865880000000001
	.quad	0x3fe20be5109070fc              # double 0.56395200000000001
	.quad	0x400977c6759ab6d0              # double 3.183484
	.quad	0x3fe6c764adff822c              # double 0.71184000000000003
	.quad	0x3fe14c20d5629d84              # double 0.540543
	.size	.L__constant_4000xf64, 32000

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
