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
	.quad	0x4136de6dfa98676a              # double 1498733.9788879999
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
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
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
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
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
	.quad	32                              # 0x20
	.quad	66                              # 0x42
	.quad	95                              # 0x5f
	.quad	125                             # 0x7d
	.quad	156                             # 0x9c
	.quad	184                             # 0xb8
	.quad	216                             # 0xd8
	.quad	243                             # 0xf3
	.quad	272                             # 0x110
	.quad	312                             # 0x138
	.quad	345                             # 0x159
	.quad	377                             # 0x179
	.quad	402                             # 0x192
	.quad	435                             # 0x1b3
	.quad	463                             # 0x1cf
	.quad	495                             # 0x1ef
	.quad	529                             # 0x211
	.quad	561                             # 0x231
	.quad	590                             # 0x24e
	.quad	620                             # 0x26c
	.quad	650                             # 0x28a
	.quad	681                             # 0x2a9
	.quad	705                             # 0x2c1
	.quad	735                             # 0x2df
	.quad	757                             # 0x2f5
	.quad	792                             # 0x318
	.quad	823                             # 0x337
	.quad	852                             # 0x354
	.quad	886                             # 0x376
	.quad	918                             # 0x396
	.quad	947                             # 0x3b3
	.quad	982                             # 0x3d6
	.quad	1011                            # 0x3f3
	.quad	1036                            # 0x40c
	.quad	1070                            # 0x42e
	.quad	1110                            # 0x456
	.quad	1145                            # 0x479
	.quad	1172                            # 0x494
	.quad	1197                            # 0x4ad
	.quad	1229                            # 0x4cd
	.quad	1255                            # 0x4e7
	.quad	1281                            # 0x501
	.quad	1316                            # 0x524
	.quad	1344                            # 0x540
	.quad	1376                            # 0x560
	.quad	1400                            # 0x578
	.quad	1427                            # 0x593
	.quad	1451                            # 0x5ab
	.quad	1475                            # 0x5c3
	.quad	1500                            # 0x5dc
	.quad	1527                            # 0x5f7
	.quad	1560                            # 0x618
	.quad	1586                            # 0x632
	.quad	1627                            # 0x65b
	.quad	1653                            # 0x675
	.quad	1685                            # 0x695
	.quad	1707                            # 0x6ab
	.quad	1740                            # 0x6cc
	.quad	1766                            # 0x6e6
	.quad	1794                            # 0x702
	.quad	1824                            # 0x720
	.quad	1858                            # 0x742
	.quad	1885                            # 0x75d
	.quad	1919                            # 0x77f
	.quad	1959                            # 0x7a7
	.quad	1989                            # 0x7c5
	.quad	2024                            # 0x7e8
	.quad	2059                            # 0x80b
	.quad	2087                            # 0x827
	.quad	2121                            # 0x849
	.quad	2138                            # 0x85a
	.quad	2169                            # 0x879
	.quad	2194                            # 0x892
	.quad	2228                            # 0x8b4
	.quad	2253                            # 0x8cd
	.quad	2286                            # 0x8ee
	.quad	2315                            # 0x90b
	.quad	2347                            # 0x92b
	.quad	2383                            # 0x94f
	.quad	2411                            # 0x96b
	.quad	2440                            # 0x988
	.quad	2476                            # 0x9ac
	.quad	2509                            # 0x9cd
	.quad	2537                            # 0x9e9
	.quad	2567                            # 0xa07
	.quad	2597                            # 0xa25
	.quad	2631                            # 0xa47
	.quad	2649                            # 0xa59
	.quad	2679                            # 0xa77
	.quad	2710                            # 0xa96
	.quad	2736                            # 0xab0
	.quad	2763                            # 0xacb
	.quad	2794                            # 0xaea
	.quad	2820                            # 0xb04
	.quad	2855                            # 0xb27
	.quad	2882                            # 0xb42
	.quad	2912                            # 0xb60
	.quad	2940                            # 0xb7c
	.quad	2972                            # 0xb9c
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x40169c0bdcad14a1              # double 5.6523890000000003
	.quad	0x401602bc2fc69729              # double 5.5026710000000003
	.quad	0x3ffc7daa4fca42af              # double 1.78068
	.quad	0x401fef11b60ae968              # double 7.9834659999999999
	.quad	0x4022695f88fc9364              # double 9.205807
	.quad	0x3fefda8bd230b9dc              # double 0.99542799999999997
	.quad	0x3fc72849cb252ce0              # double 0.18091699999999999
	.quad	0x40001d96638433d7              # double 2.0144470000000001
	.quad	0x401a98c64fdb09a6              # double 6.6491939999999996
	.quad	0x401257125dd095af              # double 4.5850309999999999
	.quad	0x400159ee88df3733              # double 2.1689120000000002
	.quad	0x40131af8df7a4e7b              # double 4.7763400000000003
	.quad	0x4016550bd87b56b8              # double 5.5830529999999996
	.quad	0x401652dadb8348f5              # double 5.5809129999999998
	.quad	0x40155f08893b7d85              # double 5.3428060000000004
	.quad	0x3ffaa82949a56580              # double 1.6660550000000001
	.quad	0x40076ae8e1d6494d              # double 2.9272019999999999
	.quad	0x400340eb67c286f9              # double 2.4066990000000001
	.quad	0x40214f414a4d2b2c              # double 8.654795
	.quad	0x4012335f3d7d3911              # double 4.5501680000000002
	.quad	0x400c085c24c404a7              # double 3.5040819999999999
	.quad	0x3fd4f92af9a8cdea              # double 0.327708
	.quad	0x4021ad9f0a1be2b5              # double 8.8391040000000007
	.quad	0x400d09cf56eac860              # double 3.6297899999999998
	.quad	0x400d66fb4c3c18b5              # double 3.675284
	.quad	0x400c9151611ba3ca              # double 3.5709559999999998
	.quad	0x402265ebfa8f7db7              # double 9.1990660000000002
	.quad	0x40099bb1f255f352              # double 3.2010230000000002
	.quad	0x4010d780baa582dc              # double 4.2104520000000001
	.quad	0x401e49b5e95b78cd              # double 7.5719830000000003
	.quad	0x4020e1572580c309              # double 8.440118
	.quad	0x401be2ce89656ef0              # double 6.9714910000000003
	.quad	0x401d5dd15f02c4d6              # double 7.3416189999999997
	.quad	0x3ff3461a60d4562e              # double 1.204615
	.quad	0x4019114db59578a3              # double 6.2668980000000003
	.quad	0x400f37507e9d94d1              # double 3.9020090000000001
	.quad	0x4014a980f55de58e              # double 5.1655309999999997
	.quad	0x3ffbd71f36262cba              # double 1.7400199999999999
	.quad	0x4005d6ac647778dd              # double 2.7298209999999998
	.quad	0x3fb76b1a2a4db164              # double 0.091478000000000004
	.quad	0x401ac76ab5807fed              # double 6.6947429999999999
	.quad	0x4014dc5ef62f9ca6              # double 5.2152060000000002
	.quad	0x401553e20ccff21b              # double 5.3319169999999998
	.quad	0x4006a79ee02a77a3              # double 2.8318460000000001
	.quad	0x40041fc8f32378ab              # double 2.51552
	.quad	0x401bbb37867f0aa2              # double 6.9328289999999999
	.quad	0x40126ef73c0c1fc9              # double 4.608365
	.quad	0x4006d06573215fcc              # double 2.851756
	.quad	0x4017152c59fb1e19              # double 5.7706770000000001
	.quad	0x3ff4e38fbca1059f              # double 1.3055570000000001
	.quad	0x40051df548ecd8dc              # double 2.6396280000000001
	.quad	0x3ffb9de7a743a648              # double 1.726051
	.quad	0x3fd2fac1d29dc726              # double 0.29655500000000001
	.quad	0x3ff5662456f75d9a              # double 1.337437
	.quad	0x401d7d29dc725c3e              # double 7.3722300000000001
	.quad	0x400bff97aaac1095              # double 3.4998010000000002
	.quad	0x3ff316bca5375c8e              # double 1.1930510000000001
	.quad	0x4021d61c79b34a45              # double 8.9181860000000004
	.quad	0x3fd7c4ef88b97785              # double 0.37139499999999998
	.quad	0x3fda250f840181e0              # double 0.40851199999999999
	.quad	0x40177d4280ae1049              # double 5.8723239999999999
	.quad	0x401c4a52ac753e70              # double 7.0725809999999996
	.quad	0x4010d21144cbe1eb              # double 4.2051439999999998
	.quad	0x3fdd9d2391d57ffa              # double 0.46271600000000002
	.quad	0x401ec4545846e8f3              # double 7.6917280000000003
	.quad	0x400acd6238da3c21              # double 3.350285
	.quad	0x40054453d20f2bed              # double 2.658363
	.quad	0x3ff2761ed5ae1cde              # double 1.1538379999999999
	.quad	0x4008a8d10f51ac9b              # double 3.08243
	.quad	0x4005f5c74751ce29              # double 2.745009
	.quad	0x402084054ef459da              # double 8.2578530000000008
	.quad	0x4022f30f27bb2fec              # double 9.4747249999999993
	.quad	0x4019821e1d2178f7              # double 6.3770680000000004
	.quad	0x4005850acc0bdcad              # double 2.689962
	.quad	0x401691cb46bacf74              # double 5.6423769999999998
	.quad	0x400b3dc69f8c21e2              # double 3.4051640000000001
	.quad	0x3fea3ad18d25edd0              # double 0.81967999999999996
	.quad	0x401aeabe27179bfe              # double 6.729241
	.quad	0x40013e2cdc011d36              # double 2.1553589999999998
	.quad	0x40178348f53c579f              # double 5.8782079999999999
	.quad	0x400ae13cab81f96a              # double 3.359979
	.quad	0x401289d7342edbb6              # double 4.6346100000000003
	.quad	0x401c5eefe4ffc979              # double 7.0927119999999997
	.quad	0x400bcc21e1d2178f              # double 3.4746739999999998
	.quad	0x3fe798e970718223              # double 0.73741599999999996
	.quad	0x40112096bb98c7e3              # double 4.2818250000000004
	.quad	0x4023dcc78e9f6a94              # double 9.93121
	.quad	0x400f0f398e970718              # double 3.8824339999999999
	.quad	0x3ffd26be7afa7222              # double 1.8219590000000001
	.quad	0x4014f02602c9081c              # double 5.2345199999999998
	.quad	0x401c03497b7414a5              # double 7.0032100000000002
	.quad	0x40123ff04577d955              # double 4.5624399999999996
	.quad	0x4021338c32a8c9b8              # double 8.6006789999999995
	.quad	0x40202549731098d4              # double 8.0728259999999991
	.quad	0x4023aa756861e929              # double 9.8329269999999997
	.quad	0x401f1c20d5629d84              # double 7.777469
	.quad	0x40201a435696e58a              # double 8.0512949999999996
	.quad	0x401c756c93a71151              # double 7.1146719999999997
	.quad	0x400ac6dd69d30271              # double 3.347102
	.quad	0x40088c28b2a6b0d9              # double 3.0684369999999999
	.quad	0x401736f32bdc26dd              # double 5.8036620000000001
	.quad	0x402271591cd1c7de              # double 9.2213829999999994
	.quad	0x4010d2888b545c79              # double 4.2055990000000003
	.quad	0x3fca45f5ad96a6a0              # double 0.20526
	.quad	0x4023a998288051ca              # double 9.8312390000000001
	.quad	0x401b0e75bc44bf4d              # double 6.7641210000000003
	.quad	0x3ff28e325d4a5df2              # double 1.159716
	.quad	0x4021f9b823c85c25              # double 8.9877330000000004
	.quad	0x4017360999dcb578              # double 5.8027709999999999
	.quad	0x401c9c7e6b3fe9fb              # double 7.1528260000000001
	.quad	0x3fed8b30b5aa7158              # double 0.92324099999999998
	.quad	0x401b0c78e9f6a93f              # double 6.7621799999999999
	.quad	0x400f9577963992c9              # double 3.9479820000000001
	.quad	0x402163ba3443d46b              # double 8.6947799999999997
	.quad	0x400bb9cd8127b2cc              # double 3.4657239999999998
	.quad	0x4015ec0f88333fc8              # double 5.4805279999999996
	.quad	0x40187a12f901083e              # double 6.1192130000000002
	.quad	0x4020bc8f96e15875              # double 8.3682829999999999
	.quad	0x40162260b2c83ec9              # double 5.5335720000000004
	.quad	0x401194bb5e0f7fd0              # double 4.3952460000000002
	.quad	0x3ff00feac42e989a              # double 1.0038860000000001
	.quad	0x401167fb267c6b8b              # double 4.3515439999999996
	.quad	0x401ea01eabbcb1cd              # double 7.6563670000000003
	.quad	0x3fddedc3bd599243              # double 0.46763700000000002
	.quad	0x400a3e1da7b0b392              # double 3.2803300000000002
	.quad	0x401c925a682b6284              # double 7.1429229999999997
	.quad	0x40169fdd65a14489              # double 5.6561180000000002
	.quad	0x4003a249a133c1ce              # double 2.4542419999999998
	.quad	0x4008c2645e4e69f0              # double 3.0949179999999998
	.quad	0x4010e9e34330d738              # double 4.2284059999999997
	.quad	0x401bc9613d31b9b6              # double 6.9466599999999996
	.quad	0x3fe9cc660a201472              # double 0.80620099999999995
	.quad	0x400c0e008e9b38d6              # double 3.506837
	.quad	0x400941bf37b8d3f2              # double 3.1571030000000002
	.quad	0x4022d53b6cbd987c              # double 9.4164689999999993
	.quad	0x4019d8c9752977c9              # double 6.4617060000000004
	.quad	0x40117a9e2bcf91a3              # double 4.3697439999999999
	.quad	0x3fd72fbe33acd5b7              # double 0.36228900000000003
	.quad	0x4021c4cb5bb384fd              # double 8.8843639999999997
	.quad	0x4019a743a647fdc6              # double 6.4133440000000004
	.quad	0x3ffb8ac29bf162ae              # double 1.7213769999999999
	.quad	0x3ffcc41355475a32              # double 1.7978700000000001
	.quad	0x4020eb9c94f69caa              # double 8.4601790000000001
	.quad	0x4015fb7fe08aefb3              # double 5.4956050000000003
	.quad	0x401fb28bf3bea91e              # double 7.9243620000000004
	.quad	0x4012f9afe1da7b0b              # double 4.7438349999999998
	.quad	0x40056f4f0d844d01              # double 2.6793499999999999
	.quad	0x402263295e9e1b09              # double 9.1936750000000007
	.quad	0x400bf7785729b281              # double 3.495835
	.quad	0x40190da1a93293d1              # double 6.263312
	.quad	0x4019e4d2b2bfdb4d              # double 6.4734600000000002
	.quad	0x402383009b30728f              # double 9.7558640000000007
	.quad	0x40222d0331e3a7db              # double 9.0879150000000006
	.quad	0x401482a1f8e3ac0c              # double 5.1275709999999997
	.quad	0x3fec035bd512ec6c              # double 0.87541000000000002
	.quad	0x4021921ff2e48e8a              # double 8.7853999999999992
	.quad	0x3ff83947496aad1d              # double 1.513984
	.quad	0x401e2e2d1f1cfbb9              # double 7.5450939999999997
	.quad	0x4018f482be8bc16a              # double 6.2387800000000002
	.quad	0x3fc5384fd2a62aa2              # double 0.16578100000000001
	.quad	0x40116029ae4f3344              # double 4.343909
	.quad	0x3fea2f1a9fbe76c9              # double 0.81825000000000003
	.quad	0x3fb82b40f66a5508              # double 0.094409999999999994
	.quad	0x401285970b49e01e              # double 4.6304590000000001
	.quad	0x40177e032db1e9f2              # double 5.8730589999999996
	.quad	0x3fa01a79fec99f1b              # double 0.031452000000000001
	.quad	0x400cb736cdf266ba              # double 3.5894599999999999
	.quad	0x3fe8701d9f4d37c1              # double 0.76368599999999998
	.quad	0x3ff7d72799a1fd15              # double 1.4900279999999999
	.quad	0x3ff73eb4a66559f7              # double 1.452809
	.quad	0x400b4e17a02fb5d0              # double 3.4131309999999999
	.quad	0x3ff18cdc8754f377              # double 1.0968899999999999
	.quad	0x3ff28a3f8982cb21              # double 1.158752
	.quad	0x40112e1975f2cb64              # double 4.2950189999999999
	.quad	0x400e0e84ad794a6f              # double 3.7570890000000001
	.quad	0x401f33c5bd0e12e8              # double 7.8005589999999997
	.quad	0x40216b704790b84a              # double 8.7098410000000008
	.quad	0x400b01b97353b4b3              # double 3.375842
	.quad	0x40215bd66277c45d              # double 8.6793700000000005
	.quad	0x401a551c5c5718ec              # double 6.5831160000000004
	.quad	0x401c83f359ff4fd7              # double 7.1288580000000001
	.quad	0x401694b1ab0856e7              # double 5.6452090000000004
	.quad	0x401dbd987c6327ee              # double 7.4351520000000004
	.quad	0x3ffdffc6540cc78f              # double 1.8749450000000001
	.quad	0x3fec2d31fcd24e16              # double 0.88051699999999999
	.quad	0x40140ec39799e519              # double 5.014418
	.quad	0x401e850763a19008              # double 7.6299109999999998
	.quad	0x3fec6362a5e785b6              # double 0.88713200000000003
	.quad	0x3fe948c5004fb118              # double 0.79013299999999997
	.quad	0x3ff6dd80e496edee              # double 1.4290780000000001
	.quad	0x3ff4677d523b3637              # double 1.275266
	.quad	0x4021e2e9ccb7d417              # double 8.9431899999999995
	.quad	0x4010d8bfc2224edf              # double 4.2116689999999997
	.quad	0x4011e9e55c0fcb4f              # double 4.4784139999999999
	.quad	0x401b29fcf3dc054f              # double 6.791004
	.quad	0x401fd9b56323bbc7              # double 7.962606
	.quad	0x4023e438088509c0              # double 9.9457400000000006
	.quad	0x3ff558f81e8a2ec3              # double 1.3342210000000001
	.quad	0x3fdd3736cdf266ba              # double 0.45649499999999998
	.quad	0x402305e76427c7c5              # double 9.5115309999999997
	.quad	0x401ff9cfdd228566              # double 7.993957
	.quad	0x4014dc67168f8e7e              # double 5.2152370000000001
	.quad	0x4010764f11b60ae9              # double 4.1155359999999996
	.quad	0x400330e4da09cc32              # double 2.3988740000000002
	.quad	0x3ff9202d9cf13cef              # double 1.5703560000000001
	.quad	0x400e37ca2120e1f8              # double 3.7772410000000001
	.quad	0x4022a35fc3b4f616              # double 9.3190899999999992
	.quad	0x400d931fcd24e161              # double 3.6968380000000001
	.quad	0x400663fbbd7b2032              # double 2.7988200000000001
	.quad	0x4023ee5bc87db2b3              # double 9.9655439999999995
	.quad	0x4010f112ba16e7a3              # double 4.2354229999999999
	.quad	0x4022bcedf6124074              # double 9.3690029999999993
	.quad	0x3ff8720d9945b6c3              # double 1.5278449999999999
	.quad	0x3fa1d29dc725c3df              # double 0.034810000000000001
	.quad	0x4013c00c0f01fb83              # double 4.9375460000000002
	.quad	0x401e7b1704ff4342              # double 7.6202050000000003
	.quad	0x4010d7f2c3009b30              # double 4.2108869999999996
	.quad	0x401ed2456f75d9a1              # double 7.705343
	.quad	0x402213d44998d046              # double 9.038729
	.quad	0x4021c50ca1cef241              # double 8.884862
	.quad	0x4011feeb702602c9              # double 4.498945
	.quad	0x401e3f301eabbcb2              # double 7.5617070000000002
	.quad	0x4021f9a7c17a8933              # double 8.9876079999999998
	.quad	0x401c3953dea465a5              # double 7.0559839999999996
	.quad	0x400efc579f234656              # double 3.8732139999999999
	.quad	0x4009566be7afa722              # double 3.167198
	.quad	0x4023e9cd8127b2cc              # double 9.9566459999999992
	.quad	0x4008a8eb463497b7              # double 3.0824799999999999
	.quad	0x3fa1376d5497310a              # double 0.033626000000000003
	.quad	0x4006d7b28954a7f8              # double 2.855321
	.quad	0x4022529e4d5d80e5              # double 9.1613640000000007
	.quad	0x40145052934acaff              # double 5.0784399999999996
	.quad	0x401a9e9af5ba2be0              # double 6.6548879999999997
	.quad	0x4012f72c94b380cb              # double 4.7413809999999996
	.quad	0x40099321e603d578              # double 3.1968420000000002
	.quad	0x400e35371971c10d              # double 3.7759839999999998
	.quad	0x40183f9767903212              # double 6.0621010000000002
	.quad	0x40201b135979181a              # double 8.0528820000000003
	.quad	0x400a1fea8112ba17              # double 3.265584
	.quad	0x4011058537e2c55d              # double 4.2553910000000004
	.quad	0x402327c58ab92c06              # double 9.5776789999999998
	.quad	0x400f2c2699c7bcc3              # double 3.8965580000000002
	.quad	0x4012cf6dfc5cdd51              # double 4.7025680000000003
	.quad	0x401a5e9dd7ecbb80              # double 6.5923990000000003
	.quad	0x4004d04ccee5abc1              # double 2.601709
	.quad	0x4021f51f601797cc              # double 8.9787549999999995
	.quad	0x401dbc929aa1d756              # double 7.4341530000000002
	.quad	0x4015cf5b1c864884              # double 5.452496
	.quad	0x40056c5c13fd0d06              # double 2.6779099999999998
	.quad	0x4006a8333fc86cec              # double 2.8321290000000001
	.quad	0x401e828f5c28f5c3              # double 7.6275000000000003
	.quad	0x3fff14d4024b33db              # double 1.942585
	.quad	0x40204c254a3c6434              # double 8.1487219999999993
	.quad	0x40105afd113836a8              # double 4.0888559999999998
	.quad	0x401249f4906034f4              # double 4.572222
	.quad	0x3ff8628bb0a2ca9b              # double 1.5240590000000001
	.quad	0x4020e45197a24895              # double 8.4459350000000004
	.quad	0x3ffaf254e6e221c9              # double 1.6841630000000001
	.quad	0x40212706b37867f1              # double 8.5762230000000006
	.quad	0x40214c8de2ac3223              # double 8.6495200000000008
	.quad	0x401bcbc01a36e2eb              # double 6.9489749999999999
	.quad	0x402218232096787d              # double 9.0471430000000002
	.quad	0x401ca1dde37585be              # double 7.1580729999999999
	.quad	0x40128152f3c2dadc              # double 4.6262930000000004
	.quad	0x4023077fcfc3f812              # double 9.5146470000000001
	.quad	0x401bad0678c0053e              # double 6.9189699999999998
	.quad	0x4013a682730c6717              # double 4.9126070000000004
	.quad	0x40039f78359bc340              # double 2.4528660000000002
	.quad	0x4016da00e27e0efa              # double 5.7128940000000004
	.quad	0x4008d4528283d35f              # double 3.1036730000000001
	.quad	0x40237d0dae3e6c4c              # double 9.7442449999999993
	.quad	0x3ff1e733ebbfd71b              # double 1.118946
	.quad	0x40014433508f648c              # double 2.1583009999999998
	.quad	0x4012c6e158750c1c              # double 4.6942190000000004
	.quad	0x40168317efe0ce0c              # double 5.6280210000000004
	.quad	0x4004a8aac96cc5fc              # double 2.582357
	.quad	0x3ffdd4dc65c70436              # double 1.864468
	.quad	0x401e8a48301a79ff              # double 7.6350410000000001
	.quad	0x4020cb2fec56d5d0              # double 8.3968500000000006
	.quad	0x40200a6809d49518              # double 8.0203249999999997
	.quad	0x400e46a337a80cfa              # double 3.784491
	.quad	0x3ff19d10b1feeb2d              # double 1.100846
	.quad	0x4005b0f733a8a3f9              # double 2.7114090000000002
	.quad	0x401a2a5a89b951c6              # double 6.5413610000000002
	.quad	0x4007617a89331a09              # double 2.9225970000000001
	.quad	0x40106b0ccbc05d53              # double 4.1045410000000002
	.quad	0x4019c4873365881a              # double 6.4419219999999999
	.quad	0x401e58c586876e1e              # double 7.5866910000000001
	.quad	0x40128d00f776c482              # double 4.6376989999999996
	.quad	0x4004fde7a743a648              # double 2.623977
	.quad	0x4008553f7ced9168              # double 3.0416249999999998
	.quad	0x401c8e0ce0b912dc              # double 7.1387210000000003
	.quad	0x401ad8383ad9f0a2              # double 6.7111520000000002
	.quad	0x401dd6c43f5f9160              # double 7.4597329999999999
	.quad	0x4012db1cc9646280              # double 4.7139769999999999
	.quad	0x40116c63ae2541d9              # double 4.3558490000000001
	.quad	0x4021ea7b9170d62c              # double 8.9579740000000001
	.quad	0x4014aab21815a07b              # double 5.1666949999999998
	.quad	0x401372352eb5f5f1              # double 4.8615310000000003
	.quad	0x3ff8092ccf6be37e              # double 1.50224
	.quad	0x3fe0d8127b2cc708              # double 0.52637599999999996
	.quad	0x400ab29ed3953dea              # double 3.3372169999999999
	.quad	0x4020a6468cac4b4d              # double 8.324757
	.quad	0x402301c23b7952d2              # double 9.5034349999999996
	.quad	0x4002da74c09c3ce2              # double 2.356668
	.quad	0x401e0310129cbab6              # double 7.5029909999999997
	.quad	0x4002fbedb7281fda              # double 2.3730120000000001
	.quad	0x4002f0b630a91538              # double 2.3675350000000002
	.quad	0x4011b3f6c2699c7c              # double 4.4257460000000002
	.quad	0x40112ecbfb15b574              # double 4.2957000000000001
	.quad	0x3fe7d31fcd24e161              # double 0.74452200000000002
	.quad	0x401f340d0aaa7ded              # double 7.8008309999999996
	.quad	0x4023b52263d816ad              # double 9.8537780000000001
	.quad	0x401dc67d77fae361              # double 7.4438380000000004
	.quad	0x40117f359ff4fd6d              # double 4.3742279999999996
	.quad	0x401d8ff3f0fe047d              # double 7.3905789999999998
	.quad	0x4010c604e1e71045              # double 4.193378
	.quad	0x401a5201cd5f99c4              # double 6.5800850000000004
	.quad	0x401c94ae429e0a42              # double 7.1451960000000003
	.quad	0x4017fa836eb4e981              # double 5.9946419999999998
	.quad	0x3ffd6a5b530ced4e              # double 1.8384659999999999
	.quad	0x401b4162f166e009              # double 6.8138540000000001
	.quad	0x3ff31f83be6601bd              # double 1.1951940000000001
	.quad	0x400f94c3c18b502b              # double 3.9476390000000001
	.quad	0x401781151611ba3d              # double 5.8760570000000003
	.quad	0x4017dc08fa7a8501              # double 5.9648779999999997
	.quad	0x4001a56e696a26e5              # double 2.2057769999999999
	.quad	0x3fcab8950763a190              # double 0.208758
	.quad	0x4015d036006d0d4a              # double 5.4533310000000004
	.quad	0x40159d12018a43bb              # double 5.4033889999999998
	.quad	0x401decd63cb81733              # double 7.4812859999999999
	.quad	0x4003ed0678c0053e              # double 2.4907349999999999
	.quad	0x4020a64a16a48733              # double 8.3247839999999993
	.quad	0x3ff7807aaef2c732              # double 1.4688669999999999
	.quad	0x401ef2ebe596c82e              # double 7.737228
	.quad	0x400c5789a459103d              # double 3.5427430000000002
	.quad	0x4013778e1932d6ed              # double 4.8667530000000001
	.quad	0x401f125d4a5df224              # double 7.7679340000000003
	.quad	0x4012f769ec2ce465              # double 4.7416150000000004
	.quad	0x4017f5c182ecaeea              # double 5.9899959999999997
	.quad	0x40167616b54e2b06              # double 5.6153209999999998
	.quad	0x4018e43201040bfe              # double 6.2228469999999998
	.quad	0x40132ac96cc5fbf8              # double 4.7917839999999998
	.quad	0x401806f8f041461b              # double 6.0068089999999996
	.quad	0x3ff4f1359791819d              # double 1.308889
	.quad	0x4005ab97785729b3              # double 2.7087850000000002
	.quad	0x402296820e629952              # double 9.2939609999999995
	.quad	0x40117904f6dfc5ce              # double 4.3681830000000001
	.quad	0x40181c1ebc83a96d              # double 6.0274609999999997
	.quad	0x4021c0da7f3cf701              # double 8.8766669999999994
	.quad	0x400d4424a276b7ed              # double 3.6582729999999999
	.quad	0x40151f316e371540              # double 5.280462
	.quad	0x4020365f30e7ff58              # double 8.1061949999999996
	.quad	0x4009b8611fd5885d              # double 3.2150289999999999
	.quad	0x4016b586876e1deb              # double 5.6772710000000002
	.quad	0x40237c5c78a6dacb              # double 9.7428930000000004
	.quad	0x3fc788b11409a240              # double 0.18385899999999999
	.quad	0x4006e817763e4abe              # double 2.8633259999999998
	.quad	0x401de5a57646ae3a              # double 7.4742639999999998
	.quad	0x4008aadbc664d3bf              # double 3.0834269999999999
	.quad	0x3ff47785729b280f              # double 1.27918
	.quad	0x400f8eb91b3f20a7              # double 3.9446889999999999
	.quad	0x3ff3fa98eda22f6a              # double 1.2486809999999999
	.quad	0x400ea090b417ca21              # double 3.8284009999999999
	.quad	0x4015f1d19157abb9              # double 5.4861510000000004
	.quad	0x400fe9107faa044b              # double 3.988801
	.quad	0x3ff296de33269df9              # double 1.1618329999999999
	.quad	0x4013aecd07852f7f              # double 4.9207039999999997
	.quad	0x402370e8427418d7              # double 9.7205220000000007
	.quad	0x40176ae297396d09              # double 5.8543799999999999
	.quad	0x3fe39713ad5bee3d              # double 0.61219199999999996
	.quad	0x400f96a50d6b228e              # double 3.9485570000000001
	.quad	0x4023dfb3311a543f              # double 9.9369139999999998
	.quad	0x4000f6a6a012599f              # double 2.1204350000000001
	.quad	0x3fde1f46ed245b29              # double 0.47065899999999999
	.quad	0x3fe34ca70d1fa333              # double 0.60310699999999995
	.quad	0x402340941c8216c6              # double 9.6261299999999999
	.quad	0x4018a3415b1422cd              # double 6.1594290000000003
	.quad	0x4013a523b3636f3b              # double 4.9112689999999999
	.quad	0x4011ea3df6db9410              # double 4.4787520000000001
	.quad	0x400cc8787485e3da              # double 3.5978859999999999
	.quad	0x401272a38b8ae31d              # double 4.6119519999999996
	.quad	0x3fe6aec28b2a6b0e              # double 0.70883300000000005
	.quad	0x401658a82a5614e0              # double 5.5865790000000004
	.quad	0x400a5e40c8472c0e              # double 3.2960219999999998
	.quad	0x40228e394face67d              # double 9.2777809999999992
	.quad	0x40003bbf93ff25e5              # double 2.0291739999999998
	.quad	0x4022596312f4cf4a              # double 9.1745839999999994
	.quad	0x3fcaf7985271bcdc              # double 0.21068100000000001
	.quad	0x3ffb5668c2613900              # double 1.708596
	.quad	0x401f59d7ba6698bb              # double 7.8377369999999997
	.quad	0x4011ac087442c7fc              # double 4.4180010000000003
	.quad	0x3ff9522ea0fd3b2a              # double 1.5825640000000001
	.quad	0x4012daa3ad18d25f              # double 4.7135150000000001
	.quad	0x400db566cf41f213              # double 3.7135750000000001
	.quad	0x3febfa22706d5065              # double 0.87428399999999995
	.quad	0x4021a8c2c5e2cdc0              # double 8.8296109999999999
	.quad	0x3fef74b407032980              # double 0.98299599999999998
	.quad	0x3fda2b4d8ba40d91              # double 0.40889300000000001
	.quad	0x400b16f4be835dee              # double 3.386209
	.quad	0x4010c3a647fdc593              # double 4.1910639999999999
	.quad	0x401234b407032980              # double 4.5514679999999998
	.quad	0x40140935fc3b4f61              # double 5.0089949999999996
	.quad	0x3ffaf5a964e8b7e5              # double 1.684976
	.quad	0x401e27a56de3326a              # double 7.5387170000000001
	.quad	0x4016fb5d894812be              # double 5.7454739999999997
	.quad	0x4018fc8bc9cd3e0c              # double 6.2466270000000002
	.quad	0x4023681c92ddbdb6              # double 9.7033430000000003
	.quad	0x40102093d9663843              # double 4.0318139999999998
	.quad	0x4007236a832b990b              # double 2.892293
	.quad	0x40197697aeddce7d              # double 6.3658130000000002
	.quad	0x40124fce3150dae4              # double 4.5779350000000001
	.quad	0x40161be1a8262457              # double 5.527228
	.quad	0x40110ab14ec204f3              # double 4.2604420000000003
	.quad	0x402196d17c5ef630              # double 8.7945670000000007
	.quad	0x4005778dd616f86a              # double 2.683376
	.quad	0x4015be075f6fd220              # double 5.435575
	.quad	0x40207b3c81908e58              # double 8.2406959999999998
	.quad	0x4022d7ceb78897ea              # double 9.4214990000000007
	.quad	0x40117aa00192a737              # double 4.3697509999999999
	.quad	0x401bb9439de481f5              # double 6.9309219999999998
	.quad	0x40216a645e4e69f0              # double 8.7077969999999993
	.quad	0x401d9fa5d28d002e              # double 7.4059059999999999
	.quad	0x4022acc6a3bddfca              # double 9.337453
	.quad	0x4005458dde7a743a              # double 2.6589619999999998
	.quad	0x40216151c5c5718f              # double 8.6900770000000005
	.quad	0x4017d8e6d15ad107              # double 5.9618180000000001
	.quad	0x40046bf338716095              # double 2.5527099999999998
	.quad	0x40016747d805e5f3              # double 2.17543
	.quad	0x3fef73f961804d98              # double 0.98290699999999997
	.quad	0x401a92f7f498c3b1              # double 6.6435240000000002
	.quad	0x401932f61ed5ae1d              # double 6.2997670000000001
	.quad	0x402082c12ad81adf              # double 8.2553800000000006
	.quad	0x4014ccc4ef88b978              # double 5.1999700000000004
	.quad	0x4023660913a4f872              # double 9.6992879999999992
	.quad	0x401dcde26916440f              # double 7.4510589999999999
	.quad	0x3faec80c73abc947              # double 0.06012
	.quad	0x401f0c14c660a201              # double 7.7617979999999997
	.quad	0x4013d9057d1782d4              # double 4.9619350000000004
	.quad	0x3fd74dd72367e415              # double 0.36412600000000001
	.quad	0x4013a3e24febd09e              # double 4.9100429999999999
	.quad	0x401762f661f18ca0              # double 5.8466430000000003
	.quad	0x3ff8f985271bcdbc              # double 1.560918
	.quad	0x3fc4a0ba1f4b1ee2              # double 0.16115499999999999
	.quad	0x40013588e368f084              # double 2.1511399999999998
	.quad	0x3ffb48d2a1f8e3ac              # double 1.705279
	.quad	0x4007fccfaeff5c6c              # double 2.998443
	.quad	0x40217173fb7a5f42              # double 8.7215880000000006
	.quad	0x401d4403dddb120a              # double 7.3164210000000001
	.quad	0x401ef938151a4378              # double 7.7433779999999998
	.quad	0x4021cec0724b76f7              # double 8.9038120000000003
	.quad	0x4006d9389b52007e              # double 2.8560650000000001
	.quad	0x3ff528bb0a2ca9ac              # double 1.322444
	.quad	0x400b2bddb9841aac              # double 3.3964189999999999
	.quad	0x3fa86d2ed783dff4              # double 0.047708
	.quad	0x40039d2b6f19934f              # double 2.451743
	.quad	0x40127368f08461fa              # double 4.6127050000000001
	.quad	0x401bfd14a0a0f4d8              # double 6.9971490000000003
	.quad	0x4023b492ddbdb5d9              # double 9.8526830000000007
	.quad	0x3ffbe3897204295a              # double 1.7430509999999999
	.quad	0x4011cd64d7f0ed3e              # double 4.4505800000000004
	.quad	0x400fe98676a7264a              # double 3.989026
	.quad	0x40125f727136a401              # double 4.59321
	.quad	0x401a5ac4b4d056c5              # double 6.588641
	.quad	0x3ff8e9b38d60a633              # double 1.557056
	.quad	0x400f2e4755ffe6d6              # double 3.8975970000000002
	.quad	0x401141fddebd9019              # double 4.3144450000000001
	.quad	0x401712949a5657fb              # double 5.7681449999999996
	.quad	0x4012cc2480e8c8ac              # double 4.6993580000000001
	.quad	0x3fe3ae6a76965f52              # double 0.61504099999999995
	.quad	0x4018b460aa64c2f8              # double 6.1761499999999998
	.quad	0x400d03e20ccff21b              # double 3.6268959999999999
	.quad	0x4005e691ea78af3e              # double 2.7375829999999999
	.quad	0x400f5b320535c9e6              # double 3.9195289999999998
	.quad	0x4015423422467be5              # double 5.3146519999999997
	.quad	0x3ff25ea24cc68230              # double 1.148104
	.quad	0x4015f97c3d68405b              # double 5.4936379999999998
	.quad	0x40197122fad6cb53              # double 6.3604849999999997
	.quad	0x3fc702de00d1b717              # double 0.17977499999999999
	.quad	0x40212f961804d984              # double 8.5929420000000007
	.quad	0x4023edd80e496edf              # double 9.9645390000000002
	.quad	0x3ff1e98cc144028e              # double 1.1195189999999999
	.quad	0x400dc5b317efe0ce              # double 3.721533
	.quad	0x401b54b5dcc63f14              # double 6.8327249999999999
	.quad	0x402387b99d451fc5              # double 9.7650880000000004
	.quad	0x400925abc0e38a7e              # double 3.1433939999999998
	.quad	0x4022f324638c9753              # double 9.4748870000000007
	.quad	0x401eec0e38a7e73a              # double 7.7305229999999998
	.quad	0x401d4aecd07852f8              # double 7.323169
	.quad	0x4022d34fc610f0e9              # double 9.4127179999999999
	.quad	0x4023fe4c942d490e              # double 9.9966779999999993
	.quad	0x3ffc2dd26b723ee2              # double 1.7611870000000001
	.quad	0x40239eb3fe9fadb0              # double 9.8099670000000003
	.quad	0x400aa4fc1df3300e              # double 3.330559
	.quad	0x4003268e3ef28416              # double 2.3938259999999998
	.quad	0x4022fa0407cc7d1c              # double 9.4883120000000005
	.quad	0x401366801711947d              # double 4.850098
	.quad	0x3fbf05857afea3df              # double 0.12117799999999999
	.quad	0x40000ef459d9902a              # double 2.0073020000000001
	.quad	0x401173af31b152f4              # double 4.3629730000000002
	.quad	0x40209bef8ceb356e              # double 8.3045620000000007
	.quad	0x401a926fe718a86d              # double 6.6430049999999996
	.quad	0x40090241c3efae79              # double 3.1261019999999999
	.quad	0x40232f1a1986b9c3              # double 9.5919959999999999
	.quad	0x4002f498c3b0c459              # double 2.3694320000000002
	.quad	0x400cf0129cbab64a              # double 3.6172230000000001
	.quad	0x4017f8f53c579f23              # double 5.9931229999999998
	.quad	0x4014791b3f20a73f              # double 5.1182679999999996
	.quad	0x401c1209edbf8b9c              # double 7.0176160000000003
	.quad	0x401a6e05ccc89b0f              # double 6.6074440000000001
	.quad	0x4023b0e38a7e73a3              # double 9.8454859999999992
	.quad	0x4010cfaf85942917              # double 4.2028179999999997
	.quad	0x401639806f262889              # double 5.5561540000000003
	.quad	0x40089efc7a398202              # double 3.0776300000000001
	.quad	0x3ffb8fb549f94856              # double 1.722585
	.quad	0x4001d062d40aaeb0              # double 2.2267510000000001
	.quad	0x4018d0c9107faa04              # double 6.2038919999999997
	.quad	0x4021c1e2584f4c6e              # double 8.8786799999999992
	.quad	0x401021d3ed527e52              # double 4.0330349999999999
	.quad	0x40147158fb43d89d              # double 5.1106910000000001
	.quad	0x402168ca1cef2410              # double 8.7046670000000006
	.quad	0x3feff6be37de939f              # double 0.99887000000000003
	.quad	0x4022182b1f687b14              # double 9.0472040000000006
	.quad	0x401c2ccb3a2595bc              # double 7.0437440000000002
	.quad	0x401b7f2734f82f51              # double 6.8741729999999999
	.quad	0x40032d373affb04f              # double 2.397078
	.quad	0x401367c45cbbc2b9              # double 4.8513349999999997
	.quad	0x4003e1083dbc2331              # double 2.4848789999999998
	.quad	0x4001010e8858ff76              # double 2.1255160000000002
	.quad	0x40002a7a41e57d9e              # double 2.0207410000000001
	.quad	0x3fae644d87724fa9              # double 0.059359000000000002
	.quad	0x40167867ad8e4324              # double 5.6175829999999998
	.quad	0x3fe39b3f20a73f75              # double 0.61270100000000005
	.quad	0x3fe162d40aaeafab              # double 0.54331399999999996
	.quad	0x402204996b7670a0              # double 9.0089830000000006
	.quad	0x4014fe8533b10774              # double 5.2485549999999996
	.quad	0x400f78fc504816f0              # double 3.934075
	.quad	0x40014b790fb65669              # double 2.1618520000000001
	.quad	0x40237e50a45d41fa              # double 9.7467089999999992
	.quad	0x3ffc8d76ab5807ff              # double 1.784537
	.quad	0x4021d7d7e45803cd              # double 8.9215689999999999
	.quad	0x4021bb9a38fbca10              # double 8.8664109999999994
	.quad	0x4023b0c38f366949              # double 9.8452420000000007
	.quad	0x40035d145d851655              # double 2.4204490000000001
	.quad	0x4002ad490e66cb10              # double 2.3346119999999999
	.quad	0x3fe5a50d6b228dca              # double 0.67639800000000005
	.quad	0x4021e23a8e71476b              # double 8.9418530000000001
	.quad	0x401c2b0f6ad70e6f              # double 7.0420509999999998
	.quad	0x4010d4c122749f0e              # double 4.2077679999999997
	.quad	0x3fb7965b20b8066c              # double 0.092137999999999998
	.quad	0x4013894ccab3edd9              # double 4.8840820000000003
	.quad	0x402006d8f4f93bc1              # double 8.0133740000000007
	.quad	0x400d28e2e2b8c75c              # double 3.6449639999999999
	.quad	0x3ffa206fac6045bb              # double 1.632919
	.quad	0x3ff4e860dcb9a9da              # double 1.3067329999999999
	.quad	0x40223ddfeb8d8234              # double 9.1208489999999997
	.quad	0x4021773fd933e35c              # double 8.7329089999999993
	.quad	0x3fe8f8726d04e619              # double 0.78032800000000002
	.quad	0x401c628b2a6b0d95              # double 7.0962339999999999
	.quad	0x3fdf59ea57214f05              # double 0.48986299999999999
	.quad	0x400cb81e8a2ec28b              # double 3.5899019999999999
	.quad	0x400202e7f6f4be83              # double 2.2514189999999998
	.quad	0x402271be6e653869              # double 9.222156
	.quad	0x401b15ec3dab5c3a              # double 6.7714090000000002
	.quad	0x3ff3671bcdbbe015              # double 1.2126729999999999
	.quad	0x400d6ba7b9170d63              # double 3.6775660000000001
	.quad	0x400486b484d76ab6              # double 2.5657740000000002
	.quad	0x40150a6fc58ab92c              # double 5.260192
	.quad	0x4000fe4ffc9795b3              # double 2.1241759999999998
	.quad	0x400aa4241c3efae8              # double 3.3301470000000002
	.quad	0x4014f578e5c4eb57              # double 5.239719
	.quad	0x40236a584f4c6e6e              # double 9.7077050000000007
	.quad	0x4011e60e94ee392e              # double 4.4746649999999999
	.quad	0x3fc0906034f3fd93              # double 0.12940599999999999
	.quad	0x4013e73ffac1d29e              # double 4.9758300000000002
	.quad	0x4020cf91e646f156              # double 8.4054099999999998
	.quad	0x401a3d330941c821              # double 6.5597649999999996
	.quad	0x4002825529fe004b              # double 2.3136389999999998
	.quad	0x401e5aa9b499d020              # double 7.5885379999999998
	.quad	0x3fee9871e6cd2913              # double 0.95610899999999999
	.quad	0x40180d31337eb28e              # double 6.0128830000000004
	.quad	0x3ff80691ea78af3e              # double 1.5016039999999999
	.quad	0x402183b2bba98eda              # double 8.7572229999999998
	.quad	0x4011f6940357a355              # double 4.490799
	.quad	0x40129312b1b36bd3              # double 4.6436260000000003
	.quad	0x40101108c3f3e037              # double 4.016635
	.quad	0x40102c7d5ed06fef              # double 4.0434469999999996
	.quad	0x400257de939eadd6              # double 2.2929050000000002
	.quad	0x401d2319c5a3e39f              # double 7.2842779999999996
	.quad	0x4011944b2b777d0f              # double 4.3948179999999999
	.quad	0x4019178bbd380453              # double 6.2729939999999997
	.quad	0x400953dc8b86b160              # double 3.1659480000000002
	.quad	0x3ffadff0cbaf965b              # double 1.679673
	.quad	0x400a0049667b5f1c              # double 3.25014
	.quad	0x4021b10d173fb7a6              # double 8.8458030000000001
	.quad	0x402240614163779f              # double 9.1257420000000007
	.quad	0x4010714d2f5dbb9d              # double 4.110646
	.quad	0x40051f9e7b80a9df              # double 2.6404390000000002
	.quad	0x3fc02e44b6e935b9              # double 0.126412
	.quad	0x3fc42a8869c66d37              # double 0.15754799999999999
	.quad	0x3ff41d56f32bdc27              # double 1.257163
	.quad	0x40232de3b8a19c9d              # double 9.5896279999999993
	.quad	0x4022eef566490a35              # double 9.4667159999999999
	.quad	0x4022672de43ed95a              # double 9.2015220000000006
	.quad	0x401b3ea78af3e469              # double 6.8111860000000002
	.quad	0x4006286cebbba55d              # double 2.769739
	.quad	0x4017c15d701d9f4d              # double 5.9388329999999998
	.quad	0x401154877681669d              # double 4.3325480000000001
	.quad	0x401da41248d7e026              # double 7.4102259999999998
	.quad	0x3fe07264a16a4873              # double 0.51396399999999998
	.quad	0x40229d1f601797cc              # double 9.3068799999999995
	.quad	0x400b54f15e7c8d19              # double 3.4164759999999998
	.quad	0x4015286ec17ebaf1              # double 5.289485
	.quad	0x4012f1960fa15db3              # double 4.7359239999999998
	.quad	0x4014c534bd76ee74              # double 5.1925840000000001
	.quad	0x4016406a2b1704ff              # double 5.5629049999999998
	.quad	0x401b4754f3775b81              # double 6.8196599999999998
	.quad	0x400897e5eaab0425              # double 3.0741689999999999
	.quad	0x3fe8eeac8605681f              # double 0.77913500000000002
	.quad	0x401d691f70de8f6d              # double 7.3526590000000001
	.quad	0x400a9b6a1e81cb47              # double 3.3258860000000001
	.quad	0x4017e0b6b6e0d23d              # double 5.9694469999999997
	.quad	0x40021cf91a32b12d              # double 2.2641469999999999
	.quad	0x401de0d3cff64cf9              # double 7.4695580000000001
	.quad	0x401c97a56de3326a              # double 7.1480920000000001
	.quad	0x4013870d62bf11f9              # double 4.8818869999999999
	.quad	0x40217f3f316e3715              # double 8.7485289999999996
	.quad	0x4018fa2fcefaa476              # double 6.2443229999999996
	.quad	0x401426d0d49949e9              # double 5.0379060000000004
	.quad	0x400343704790b84a              # double 2.4079290000000002
	.quad	0x4017cb3461309c80              # double 5.948442
	.quad	0x3ff16554b8bef8cf              # double 1.0872390000000001
	.quad	0x4017c21b3aeee957              # double 5.9395569999999998
	.quad	0x402026221c8a7a42              # double 8.0744790000000002
	.quad	0x3fc9add9c27e9531              # double 0.20061799999999999
	.quad	0x4018d78d0cc35ce2              # double 6.2104990000000004
	.quad	0x4001914fce746cb9              # double 2.1959529999999998
	.quad	0x401695a469d7342f              # double 5.6461350000000001
	.quad	0x402144d4aa10e022              # double 8.6344349999999999
	.quad	0x3fe0da20ddc61954              # double 0.52662699999999996
	.quad	0x402318769ec2ce46              # double 9.5477799999999995
	.quad	0x4022261a1db877ab              # double 9.0744179999999997
	.quad	0x402177aacd9e83e4              # double 8.7337249999999997
	.quad	0x4019f9c7ffde7211              # double 6.4939270000000002
	.quad	0x4022b7008a697aee              # double 9.3574260000000002
	.quad	0x4020d0b26394face              # double 8.4076109999999993
	.quad	0x4022774d9c6b0532              # double 9.2330140000000007
	.quad	0x400fc2584f4c6e6e              # double 3.9698950000000002
	.quad	0x402039d4b6a619db              # double 8.1129510000000007
	.quad	0x4018459f6ec5b079              # double 6.0679910000000001
	.quad	0x40207f0f7b9e0610              # double 8.2481650000000002
	.quad	0x4014a32ebe596c83              # double 5.1593580000000001
	.quad	0x40159d2bf5515055              # double 5.4034880000000003
	.quad	0x400b4f8487b99d45              # double 3.4138269999999999
	.quad	0x4012c8b545c78a6e              # double 4.6960040000000003
	.quad	0x40202686a4ca4f44              # double 8.0752459999999999
	.quad	0x3ffee04c05921038              # double 1.9297599999999999
	.quad	0x4023d1e12a51e322              # double 9.9099210000000006
	.quad	0x4023bc0dd3fe1976              # double 9.8672930000000001
	.quad	0x4012458c4bd33d29              # double 4.5679179999999997
	.quad	0x4020410a7829068a              # double 8.1270330000000008
	.quad	0x400c47c17a89331a              # double 3.535037
	.quad	0x3ffe92c493426784              # double 1.9108320000000001
	.quad	0x401ab21682f94424              # double 6.6739139999999999
	.quad	0x4021fa311e85fd05              # double 8.9886560000000006
	.quad	0x401ee74107314ca9              # double 7.7258339999999998
	.quad	0x401d8064a9cdc444              # double 7.3753840000000004
	.quad	0x4023dc343b70ef56              # double 9.9300859999999993
	.quad	0x400ba97204295a6c              # double 3.4577369999999998
	.quad	0x3ff71cbddb9841ab              # double 1.4445170000000001
	.quad	0x401e15b91f70de8f              # double 7.5212139999999996
	.quad	0x401f89392189bd84              # double 7.8840070000000004
	.quad	0x4012b71ef30a4e38              # double 4.6788290000000003
	.quad	0x3ffb71d92b7fe08b              # double 1.715295
	.quad	0x4016a95703f2d3c8              # double 5.6653710000000004
	.quad	0x3ff722014727dcbe              # double 1.445802
	.quad	0x402009a75cd0bb6f              # double 8.0188550000000003
	.quad	0x4008c764adff822c              # double 3.0973600000000001
	.quad	0x400ef04e618ce2d2              # double 3.867337
	.quad	0x4019b1c2a0232096              # double 6.4235939999999996
	.quad	0x4019b26d4801f751              # double 6.424245
	.quad	0x4016546412cf0f9d              # double 5.5824129999999998
	.quad	0x40149dcd2d44dca9              # double 5.1541030000000001
	.quad	0x401d37314ca925ff              # double 7.3038990000000004
	.quad	0x3ff9f74ddf86e3b4              # double 1.6228769999999999
	.quad	0x4009e17a89331a09              # double 3.2350970000000001
	.quad	0x40000e2b8c75c4a8              # double 2.0069189999999999
	.quad	0x400e4cf312b1b36c              # double 3.7875730000000001
	.quad	0x3fff24e592967019              # double 1.9465079999999999
	.quad	0x401305f02c4d65e4              # double 4.7557989999999997
	.quad	0x3fea0b11409a2403              # double 0.81385099999999999
	.quad	0x4013000bcbe61d00              # double 4.7500450000000001
	.quad	0x4018eed6ba8c5868              # double 6.2332409999999996
	.quad	0x400154141e9af5ba              # double 2.1660539999999999
	.quad	0x401fb84ba0e84274              # double 7.9299759999999999
	.quad	0x3fe87b480a5accd5              # double 0.76504899999999998
	.quad	0x4019c3a29c779a6b              # double 6.4410499999999997
	.quad	0x401502e3c536d656              # double 5.2528220000000001
	.quad	0x401d441e9af5ba2c              # double 7.3165230000000001
	.quad	0x3ff9e41700cd8559              # double 1.6181859999999999
	.quad	0x401e720296b3354c              # double 7.6113379999999999
	.quad	0x3fe88d60a6330510              # double 0.767258
	.quad	0x4019312620253975              # double 6.2979969999999996
	.quad	0x4001c7d34df04ddb              # double 2.2225709999999999
	.quad	0x40219f5afaf85943              # double 8.8112410000000008
	.quad	0x401e565300581494              # double 7.584301
	.quad	0x401f71fc4c165908              # double 7.8613140000000001
	.quad	0x401a7ee6fb4c3c19              # double 6.6239280000000003
	.quad	0x3ff767daa4fca42b              # double 1.462855
	.quad	0x40008204f2ae07e6              # double 2.0634860000000002
	.quad	0x400c97f84449dbec              # double 3.5742039999999999
	.quad	0x4009f10667f90d9d              # double 3.2426879999999998
	.quad	0x4021532702a3486f              # double 8.662407
	.quad	0x401aebcd35a85879              # double 6.7302749999999998
	.quad	0x401bc74107314ca9              # double 6.9445839999999999
	.quad	0x3ff637a80cf9e386              # double 1.3885879999999999
	.quad	0x40047c5ef62f9ca6              # double 2.5607280000000001
	.quad	0x40135b1704ff4342              # double 4.8389550000000003
	.quad	0x3fe01e492bc2fc69              # double 0.50369699999999995
	.quad	0x40184b4e11dbca97              # double 6.0735400000000004
	.quad	0x401743fe1975f2cb              # double 5.8163989999999997
	.quad	0x40146168f8e7ddca              # double 5.0951269999999997
	.quad	0x4022a6ae7d566cf4              # double 9.3255499999999997
	.quad	0x401a9f7ced916873              # double 6.6557500000000003
	.quad	0x3fb0f13cee9dd7ed              # double 0.066181000000000004
	.quad	0x4000b1876188b114              # double 2.086684
	.quad	0x3fef3bd5992428d4              # double 0.97605399999999997
	.quad	0x4021d5ff609dcf89              # double 8.9179639999999996
	.quad	0x4023541205bc01a3              # double 9.6641999999999992
	.quad	0x4003f207d4e09785              # double 2.493179
	.quad	0x401fbc9f72f76e61              # double 7.9342019999999999
	.quad	0x3ff0fd2e94680171              # double 1.061812
	.quad	0x401b0add15f02c4d              # double 6.7606089999999996
	.quad	0x40203880f98fa377              # double 8.1103590000000008
	.quad	0x3fe83e8bc169c23b              # double 0.75763499999999995
	.quad	0x400c3839cd8127b3              # double 3.5274540000000001
	.quad	0x4022fa8997c3d684              # double 9.4893309999999999
	.quad	0x40204ae6c8f75537              # double 8.1462920000000008
	.quad	0x4014022c881e4713              # double 5.0021230000000001
	.quad	0x400e2ee49f51697f              # double 3.7728969999999999
	.quad	0x40219a01abd1aa82              # double 8.8007939999999998
	.quad	0x400a4bdcad14a0a1              # double 3.287042
	.quad	0x4015fbc77143393b              # double 5.4958780000000003
	.quad	0x3fe7abe27179bfdf              # double 0.73973199999999995
	.quad	0x4020382be8bc169c              # double 8.1097099999999997
	.quad	0x3fead2263d816acf              # double 0.83815300000000004
	.quad	0x3ff5c42528ae74f3              # double 1.360387
	.quad	0x3fb0a0b1bbcf4e87              # double 0.064951999999999996
	.quad	0x40239d6f544bb1af              # double 9.8074899999999995
	.quad	0x3fcd220791c4b902              # double 0.227601
	.quad	0x400eaadf71eafee7              # double 3.833434
	.quad	0x40137ea140570825              # double 4.8736620000000004
	.quad	0x3ff639fba450acc1              # double 1.3891560000000001
	.quad	0x40128e11dbca9692              # double 4.6387400000000003
	.quad	0x4016ef4a558ea7ce              # double 5.7336819999999999
	.quad	0x3ff80216c61522a7              # double 1.50051
	.quad	0x40043709310129cc              # double 2.5268730000000001
	.quad	0x401a76d97b30f8c6              # double 6.6160639999999997
	.quad	0x401a1d627bf61aa4              # double 6.5286960000000001
	.quad	0x4015c63ae2541d8f              # double 5.4435840000000004
	.quad	0x401f0d6ba8c58687              # double 7.7631059999999996
	.quad	0x40063fc6540cc78f              # double 2.7811400000000002
	.quad	0x4007f23e5b8561d4              # double 2.9932829999999999
	.quad	0x400894af4f0d844d              # double 3.0726
	.quad	0x4021afbdf090f734              # double 8.8432460000000006
	.quad	0x4009dc8754f3775c              # double 3.2326800000000002
	.quad	0x4020f68e60807358              # double 8.4815550000000002
	.quad	0x401203c6c97d8cf4              # double 4.5036880000000004
	.quad	0x400cd32c625e99e9              # double 3.6031119999999999
	.quad	0x3ff9702f72b45283              # double 1.5898890000000001
	.quad	0x3ff773aeee957471              # double 1.465743
	.quad	0x3ff9dcdc443914f5              # double 1.6164210000000001
	.quad	0x4006f0a569b17482              # double 2.8675030000000001
	.quad	0x401eefa7a85015c2              # double 7.734038
	.quad	0x4009784d338f7985              # double 3.1837409999999999
	.quad	0x3ff2d47bedb72820              # double 1.176876
	.quad	0x40128815e39713ad              # double 4.6328959999999997
	.quad	0x3ff7ff23cc8de2ac              # double 1.49979
	.quad	0x4012205b39e279dd              # double 4.5315979999999998
	.quad	0x40194fdc5931ca7d              # double 6.3279889999999996
	.quad	0x4023e3810e8858ff              # double 9.9443439999999991
	.quad	0x3fd394e5d5b24e9c              # double 0.30596299999999998
	.quad	0x3fcc59a73b42cc2d              # double 0.22148599999999999
	.quad	0x3fcc333fc86cebbc              # double 0.22031400000000001
	.quad	0x401967214f0520d1              # double 6.3507129999999998
	.quad	0x4015f23571d1d474              # double 5.4865320000000004
	.quad	0x3ffd9df1172ef0ae              # double 1.8510599999999999
	.quad	0x4011d38d1d8a5482              # double 4.4565929999999998
	.quad	0x402397f8ec0f8833              # double 9.7968209999999995
	.quad	0x401c1fa43fe5c91d              # double 7.0308999999999999
	.quad	0x401715c9a34ca0c3              # double 5.7712770000000004
	.quad	0x3ff4c54477ff151e              # double 1.2981609999999999
	.quad	0x40026fa9c12f09d9              # double 2.3045230000000001
	.quad	0x401d3e1ef73c0c20              # double 7.3106650000000002
	.quad	0x402010583621fafd              # double 8.0319230000000008
	.quad	0x401ba24e160d887f              # double 6.9085010000000002
	.quad	0x400c448301a79fed              # double 3.5334530000000002
	.quad	0x401001f75104d552              # double 4.0019200000000001
	.quad	0x4006964f97edc7ef              # double 2.823394
	.quad	0x3ff2a595bbbe8790              # double 1.1654260000000001
	.quad	0x4000c174c4cdfaca              # double 2.0944609999999999
	.quad	0x401b0fbacb428912              # double 6.7653610000000004
	.quad	0x4003dc69f8c21e1d              # double 2.4826239999999999
	.quad	0x400ac6a22b3892ef              # double 3.3469890000000002
	.quad	0x3ff4f7aa25d8d79d              # double 1.310465
	.quad	0x4013ebb906466b1e              # double 4.9801979999999997
	.quad	0x401f48ba40d90e24              # double 7.8210230000000003
	.quad	0x3f83a0c6b484d76b              # double 0.0095840000000000005
	.quad	0x3ff399a30984e400              # double 1.225009
	.quad	0x4006179fa97e132b              # double 2.7615349999999999
	.quad	0x401f508a265f0f5a              # double 7.8286519999999999
	.quad	0x4022d33c3e74afd5              # double 9.4125689999999995
	.quad	0x401102f9873ffac2              # double 4.2529050000000002
	.quad	0x400852c16df3f962              # double 3.0404080000000002
	.quad	0x40152a5482385404              # double 5.2913379999999997
	.quad	0x4013644fa05143bf              # double 4.8479599999999996
	.quad	0x4020d2222d5171e3              # double 8.4104170000000007
	.quad	0x4011db845564b663              # double 4.464372
	.quad	0x4011a7b4a2339c0f              # double 4.4137750000000002
	.quad	0x400311e8e6080735              # double 2.3837449999999998
	.quad	0x401c1a98aa8650e7              # double 7.0259729999999996
	.quad	0x40142c7da1ec4e72              # double 5.0434479999999997
	.quad	0x4011ab4b2fa93af7              # double 4.4172789999999997
	.quad	0x4015e9363f572de4              # double 5.4777459999999998
	.quad	0x40122d78c436fc16              # double 4.5444060000000004
	.quad	0x40075160956c0d6f              # double 2.9147349999999999
	.quad	0x4020c9c7ffde7211              # double 8.3941040000000005
	.quad	0x401bd0e560418937              # double 6.9539999999999997
	.quad	0x401657739f340d4e              # double 5.5854020000000002
	.quad	0x4022bf8140dd3fe2              # double 9.3740330000000007
	.quad	0x4021e6e08f217093              # double 8.9509319999999999
	.quad	0x401a005af6c69b5a              # double 6.5003469999999997
	.quad	0x40103c39bcba3012              # double 4.0588139999999999
	.quad	0x401e743fe5c91d15              # double 7.613525
	.quad	0x402251e57d9dba91              # double 9.1599540000000008
	.quad	0x402303eee5258927              # double 9.5076820000000008
	.quad	0x3fe0800431bde82d              # double 0.51562699999999995
	.quad	0x402290198f1d3ed5              # double 9.2814449999999997
	.quad	0x4023c33fc86cebbc              # double 9.8813460000000006
	.quad	0x3fe8f3519bd4067d              # double 0.77970200000000001
	.quad	0x4016edfa43fe5c92              # double 5.7324000000000002
	.quad	0x401d8b23dd54da4d              # double 7.3858790000000001
	.quad	0x3ff18ca600b02928              # double 1.096838
	.quad	0x4023570739b024f6              # double 9.6699769999999994
	.quad	0x3fe1b59ff4fd6d7f              # double 0.55342100000000005
	.quad	0x3f9c0d6f544bb1af              # double 0.027394999999999999
	.quad	0x4020105510d38cda              # double 8.0318989999999992
	.quad	0x4009dfd933e35c5b              # double 3.2343009999999999
	.quad	0x400e2a27f1b69121              # double 3.7705839999999999
	.quad	0x3fede17e34b94531              # double 0.93377600000000005
	.quad	0x400e378c436fc159              # double 3.777123
	.quad	0x4023e71737542a24              # double 9.9513490000000004
	.quad	0x3ff77f5b5fa22707              # double 1.468593
	.quad	0x401d3e9142b302f7              # double 7.3111009999999998
	.quad	0x402202fdda8bd231              # double 9.0058430000000005
	.quad	0x40212786e3b46fdf              # double 8.5772010000000005
	.quad	0x40209d2fe3f359ff              # double 8.3070059999999994
	.quad	0x40221e6299524bfd              # double 9.0593459999999997
	.quad	0x3ff1dae70c1333b9              # double 1.1159429999999999
	.quad	0x4020f019f3c70c99              # double 8.4689479999999993
	.quad	0x40192f28c79f6662              # double 6.2960539999999998
	.quad	0x401a3a16616b54e3              # double 6.5567260000000003
	.quad	0x3ffad45c78a6dacb              # double 1.6768460000000001
	.quad	0x3ff56d245b291b82              # double 1.3391459999999999
	.quad	0x4016b9a459103c8e              # double 5.6812909999999999
	.quad	0x400183315d701d9f              # double 2.1890589999999999
	.quad	0x4009b342edbb59de              # double 3.2125300000000001
	.quad	0x4022316c82e019b1              # double 9.0965310000000006
	.quad	0x40199247cb70ac3b              # double 6.3928520000000004
	.quad	0x4023df2ffd1dcd70              # double 9.9359129999999993
	.quad	0x3fddb3e5753a3ec0              # double 0.46410499999999999
	.quad	0x401cc39f340d4dc6              # double 7.1910369999999997
	.quad	0x40136a43fe5c91d1              # double 4.8537749999999997
	.quad	0x4022e9fc8f32378b              # double 9.4570050000000005
	.quad	0x40072895d0b73d19              # double 2.8948170000000002
	.quad	0x401d3a2e3c536d65              # double 7.3068169999999997
	.quad	0x40218ce2b063e07a              # double 8.7751669999999997
	.quad	0x4015732f01754b06              # double 5.3624840000000003
	.quad	0x400c7c286f8ad256              # double 3.5606239999999998
	.quad	0x40034cbfb15b573f              # double 2.4124750000000001
	.quad	0x401b75b7cfe58601              # double 6.8649589999999998
	.quad	0x4010f99bf5946c33              # double 4.2437589999999998
	.quad	0x40115a3ad18d25ee              # double 4.3381150000000002
	.quad	0x40211ada33bd9cae              # double 8.5524459999999998
	.quad	0x3ff1e6ec9e236c16              # double 1.118878
	.quad	0x4021976ec5b078d9              # double 8.7957669999999997
	.quad	0x4008358c08b75ea6              # double 3.0261459999999998
	.quad	0x4021893165d39970              # double 8.7679550000000006
	.quad	0x40208d8f0c77dd87              # double 8.2764819999999997
	.quad	0x4019490a350d2807              # double 6.3213280000000003
	.quad	0x40228d5f138bcdff              # double 9.276116
	.quad	0x4011ad5e8d5410f9              # double 4.4193059999999997
	.quad	0x40063c13fd0d0679              # double 2.7793350000000001
	.quad	0x4021b654d61b2a28              # double 8.8561160000000001
	.quad	0x4021ec7e49b1fab9              # double 8.9619009999999992
	.quad	0x4020098a43bb40b3              # double 8.0186329999999995
	.quad	0x40168c4c9c90c4df              # double 5.6370110000000002
	.quad	0x40203864ece9a2c6              # double 8.1101449999999993
	.quad	0x3fff43760bf5d788              # double 1.95397
	.quad	0x401a063e4abe6a33              # double 6.5060969999999996
	.quad	0x401ef786c226809d              # double 7.7417249999999997
	.quad	0x4020e73797460243              # double 8.4515960000000003
	.quad	0x4011c1337eb28d86              # double 4.4386729999999996
	.quad	0x40129996fa82e87d              # double 4.6499899999999998
	.quad	0x401230a41a261bf3              # double 4.5475009999999996
	.quad	0x401a79878316a055              # double 6.6186809999999996
	.quad	0x40232c942d490e67              # double 9.5870680000000003
	.quad	0x401c0eacc92146a2              # double 7.0143310000000003
	.quad	0x40194b1422ccb3a2              # double 6.3233189999999997
	.quad	0x3fef791600f34507              # double 0.98353100000000004
	.quad	0x400567b2cc70867b              # double 2.6756340000000001
	.quad	0x4023ec7de5082cf5              # double 9.9618979999999996
	.quad	0x4021cc49dbec2481              # double 8.8990010000000002
	.quad	0x40110e6cd29131ec              # double 4.264087
	.quad	0x3ffa79e6ab9b23dd              # double 1.6547609999999999
	.quad	0x4011148beb5b2d4d              # double 4.2700649999999998
	.quad	0x401ec65cf67b1c00              # double 7.6937139999999999
	.quad	0x4010d7b5286b5914              # double 4.2106519999999996
	.quad	0x401d179f666234a8              # double 7.2730689999999996
	.quad	0x4023fe68c2613900              # double 9.996893
	.quad	0x40237da9a8049668              # double 9.7454350000000005
	.quad	0x3ff8ef9ebe9c8861              # double 1.5585009999999999
	.quad	0x400fa151a437824d              # double 3.9537689999999999
	.quad	0x400469e55c0fcb4f              # double 2.5517069999999999
	.quad	0x401c0e24febd09e1              # double 7.0138129999999999
	.quad	0x3ff1f8e8ea39c51e              # double 1.1232690000000001
	.quad	0x3ffa04b7f5a5332b              # double 1.626152
	.quad	0x4003da41e57d9dbb              # double 2.4815710000000002
	.quad	0x3fe27de0d66f0cfe              # double 0.57786599999999999
	.quad	0x3fecb280f12c27a6              # double 0.89678999999999998
	.quad	0x3fe862cdc011d367              # double 0.76206099999999999
	.quad	0x4007bcd5f99c38b0              # double 2.9672049999999999
	.quad	0x4014bafaf8594291              # double 5.1825979999999996
	.quad	0x40209f6d97b30f8c              # double 8.3113829999999992
	.quad	0x4012bf7878b7a1c2              # double 4.6869829999999997
	.quad	0x401ecece5710880e              # double 7.7019590000000004
	.quad	0x40189a133c1ce6c1              # double 6.1504640000000004
	.quad	0x4011fec0724b76f7              # double 4.4987810000000001
	.quad	0x4014a5bd0e12e83a              # double 5.1618539999999999
	.quad	0x40231c77574f722e              # double 9.5555979999999998
	.quad	0x4013cdc9c4da9004              # double 4.9509650000000001
	.quad	0x4014fae9680e0653              # double 5.245031
	.quad	0x402088dd1e53a81e              # double 8.2673120000000004
	.quad	0x3fd8b517a46173b8              # double 0.38605299999999998
	.quad	0x402213854046412d              # double 9.0381260000000001
	.quad	0x40132b734b51372a              # double 4.7924319999999998
	.quad	0x3feab3e35c5b4aa9              # double 0.83445899999999995
	.quad	0x4021ba441fea8113              # double 8.8638010000000005
	.quad	0x40233f8055fbb518              # double 9.6240260000000006
	.quad	0x401e29e01de26916              # double 7.5408939999999998
	.quad	0x400f13f748a15981              # double 3.8847489999999998
	.quad	0x3fc71ee2435696e6              # double 0.18063000000000001
	.quad	0x40221a454de7ea60              # double 9.0513100000000009
	.quad	0x3ff676d117b5286b              # double 1.4040079999999999
	.quad	0x40227914f483cafb              # double 9.2364879999999996
	.quad	0x400d18def416bdb2              # double 3.6371440000000002
	.quad	0x400788626f60e0eb              # double 2.9415939999999998
	.quad	0x401623fd50225743              # double 5.5351460000000001
	.quad	0x3fe4375a74c09c3d              # double 0.63175700000000001
	.quad	0x3ff9ce5710880d80              # double 1.612876
	.quad	0x40238fd06bbdbe3c              # double 9.7808869999999998
	.quad	0x400e5a37ef5a964f              # double 3.7940520000000002
	.quad	0x401e6bdcf0307f24              # double 7.6053350000000002
	.quad	0x400c2d04e618ce2d              # double 3.5219819999999999
	.quad	0x401b7ef7c243dccf              # double 6.8739920000000003
	.quad	0x40144987c6327ed8              # double 5.0718069999999997
	.quad	0x40228ca558ea7ce1              # double 9.274699
	.quad	0x3ff4845132f87ad1              # double 1.2823040000000001
	.quad	0x40136810624dd2f2              # double 4.8516250000000003
	.quad	0x40231e11fd5885d3              # double 9.5587309999999998
	.quad	0x400929118c197e56              # double 3.1450529999999999
	.quad	0x4023e9dece571088              # double 9.9567779999999999
	.quad	0x4019d51c9f72f76e              # double 6.4581169999999997
	.quad	0x400aa3dddb1209ee              # double 3.3300130000000001
	.quad	0x401681e646f15619              # double 5.6268549999999999
	.quad	0x3ff8516440f23897              # double 1.519871
	.quad	0x4013f2bf11f926c8              # double 4.9870570000000001
	.quad	0x40013b57c4e2f380              # double 2.1539760000000001
	.quad	0x4016be33acd5b680              # double 5.6857439999999997
	.quad	0x3fff529670196d8f              # double 1.9576629999999999
	.quad	0x400367839cd8127b              # double 2.4255439999999999
	.quad	0x400825eb313be22e              # double 3.0185149999999998
	.quad	0x401345171e29b6b3              # double 4.8174710000000003
	.quad	0x4019eb9e060fe47a              # double 6.4800950000000004
	.quad	0x4023d9209edbf8ba              # double 9.9240770000000005
	.quad	0x3ffcfca9691a75cd              # double 1.811685
	.quad	0x400b04228997c3d7              # double 3.3770190000000002
	.quad	0x401c75ed06fef7c2              # double 7.1151619999999998
	.quad	0x4022194573a79789              # double 9.0493579999999998
	.quad	0x4004944dca8e2e2c              # double 2.5724140000000002
	.quad	0x40238cff0025bfad              # double 9.7753829999999997
	.quad	0x3faaec6bce8533b1              # double 0.052585
	.quad	0x40175b0ff10ecb75              # double 5.8389280000000001
	.quad	0x3fedbe81450efdca              # double 0.92950500000000003
	.quad	0x40235edf3f961805              # double 9.6852970000000002
	.quad	0x4010bc4b09e98dce              # double 4.1838800000000003
	.quad	0x402154dc8754f377              # double 8.6657449999999994
	.quad	0x40212ba16e7a311f              # double 8.5852160000000008
	.quad	0x3fce9057d1782d38              # double 0.23877999999999999
	.quad	0x3ff9389613d31b9b              # double 1.5763149999999999
	.quad	0x4022347b24638c97              # double 9.1025019999999994
	.quad	0x3ffa7d77fae3608d              # double 1.655632
	.quad	0x40235509e12a51e3              # double 9.6660909999999997
	.quad	0x4012961804d98394              # double 4.6465759999999996
	.quad	0x400867d6f9767903              # double 3.0507029999999999
	.quad	0x4010d0232096787d              # double 4.2032590000000001
	.quad	0x401851cde5d18091              # double 6.0798870000000003
	.quad	0x401b9b5cbff47736              # double 6.9017210000000002
	.quad	0x40127cdea033e78e              # double 4.6219429999999999
	.quad	0x40152afd113836a8              # double 5.2919809999999998
	.quad	0x3fe2526fa3fcc9eb              # double 0.57256300000000004
	.quad	0x4004c860dcb9a9da              # double 2.5978409999999998
	.quad	0x401f26da0168b5cc              # double 7.787941
	.quad	0x4023bc84944ed6fe              # double 9.8681990000000006
	.quad	0x4011e473471f7942              # double 4.473096
	.quad	0x40132e0fc2eba27b              # double 4.7949820000000001
	.quad	0x401741233df2a9d6              # double 5.8136109999999999
	.quad	0x4019bf0025bfad2a              # double 6.4365240000000004
	.quad	0x3ff3ba16e7a311e8              # double 1.2329319999999999
	.quad	0x4023d6f5232d2bb2              # double 9.9198389999999996
	.quad	0x4019c8dac258d584              # double 6.4461469999999998
	.quad	0x40163757d5a9eb20              # double 5.5540459999999996
	.quad	0x400a6cd184c27200              # double 3.303134
	.quad	0x400c426fe718a86d              # double 3.5324399999999998
	.quad	0x401b86b76709fa55              # double 6.8815590000000002
	.quad	0x400794aa9717df1a              # double 2.9475910000000001
	.quad	0x4015900abf76a2f5              # double 5.3906660000000004
	.quad	0x3ffa36c7a7c9de05              # double 1.638374
	.quad	0x4022a0561d4306e6              # double 9.3131570000000004
	.quad	0x401c273d188f42ff              # double 7.0383190000000004
	.quad	0x40119386d2ed783e              # double 4.394069
	.quad	0x3ff67d63022dd7aa              # double 1.4056120000000001
	.quad	0x40223c100e6afcce              # double 9.1173099999999998
	.quad	0x401eb9b5e95b78cd              # double 7.6813580000000003
	.quad	0x3faeb3dd11be6e65              # double 0.059965999999999998
	.quad	0x401fe97e132b55ef              # double 7.9780199999999998
	.quad	0x40210fd6f9767903              # double 8.5309369999999998
	.quad	0x3ffb79d4d834091c              # double 1.717244
	.quad	0x3ffb1b4677b395c4              # double 1.694159
	.quad	0x401ad01083dbc233              # double 6.7031879999999999
	.quad	0x4010157f737da61e              # double 4.020994
	.quad	0x40226c22ee41919b              # double 9.2112040000000004
	.quad	0x402093a1d323fee3              # double 8.2883440000000004
	.quad	0x3ffcfcfb3311a544              # double 1.811763
	.quad	0x3ffca6b8305d95dd              # double 1.7907029999999999
	.quad	0x40069b00bcbe61d0              # double 2.825685
	.quad	0x4018403d145d8516              # double 6.0627329999999997
	.quad	0x401d48b3f63c31df              # double 7.3209989999999996
	.quad	0x40141e22e5de15ca              # double 5.0294299999999996
	.quad	0x4014b4b87bdcf030              # double 5.1764849999999996
	.quad	0x40185f2239e6ab9b              # double 6.0929039999999999
	.quad	0x3fda9e3864cb5bb4              # double 0.41590700000000003
	.quad	0x4013c5dbb9cf9a07              # double 4.9432210000000003
	.quad	0x401d523358f2e05d              # double 7.3302740000000002
	.quad	0x4014174d1633482c              # double 5.0227550000000001
	.quad	0x401947bc7f77af64              # double 6.320055
	.quad	0x40140ce91c8eac00              # double 5.0126080000000002
	.quad	0x40130d612c6ac216              # double 4.7630660000000002
	.quad	0x3fce074ea8da7f3d              # double 0.234598
	.quad	0x40221cff0025bfad              # double 9.0566329999999997
	.quad	0x402334cc46950fc7              # double 9.6031209999999997
	.quad	0x4017a944241c3efb              # double 5.9152990000000001
	.quad	0x40212ccb1897a67a              # double 8.5874869999999994
	.quad	0x4020281f75104d55              # double 8.0783649999999998
	.quad	0x3ff2bc2eba27ae9b              # double 1.1709430000000001
	.quad	0x3fea95bbbe878fac              # double 0.83077800000000001
	.quad	0x40204c197e564734              # double 8.1486319999999992
	.quad	0x3ffac6c54bcf0b6b              # double 1.6735279999999999
	.quad	0x3ff4851761459536              # double 1.2824930000000001
	.quad	0x3ffd5bd0e12e83a1              # double 1.834916
	.quad	0x4004f8e6d15ad107              # double 2.621534
	.quad	0x4013f54d1e96c3fc              # double 4.9895519999999998
	.quad	0x40013ce0fc2eba28              # double 2.1547260000000001
	.quad	0x40092372e6a76966              # double 3.142309
	.quad	0x4009b4dd72367e41              # double 3.2133129999999999
	.quad	0x3fed9c2a02320968              # double 0.92531300000000005
	.quad	0x3ff1b7b5aea3161a              # double 1.107351
	.quad	0x40226b743632c1f4              # double 9.2098709999999996
	.quad	0x4005977d0f1f57b4              # double 2.698969
	.quad	0x401b50c8472c0e7c              # double 6.8288890000000002
	.quad	0x3ffaa7503b81b64e              # double 1.665848
	.quad	0x3fdac83a96d4c33b              # double 0.41847099999999998
	.quad	0x40189a82e87d2c7c              # double 6.1508900000000004
	.quad	0x401c9cefed63454a              # double 7.1532590000000003
	.quad	0x3ff06f1ed17c5ef6              # double 1.027129
	.quad	0x3febd0a244630660              # double 0.86921800000000004
	.quad	0x402315ddf43c7d5f              # double 9.5427090000000003
	.quad	0x4017cdadfb506dd7              # double 5.9508590000000003
	.quad	0x40234bdddb1209ee              # double 9.6481770000000004
	.quad	0x40161c6f36ef8056              # double 5.527768
	.quad	0x4013c6a0dbad3a60              # double 4.9439729999999997
	.quad	0x401b0c26138fffbd              # double 6.7618640000000001
	.quad	0x4019fe39b456b442              # double 6.4982670000000002
	.quad	0x3ffd02ce4649906d              # double 1.813185
	.quad	0x4012c723ee1bd1ee              # double 4.6944730000000003
	.quad	0x401d3037d63022dd              # double 7.2970879999999996
	.quad	0x4023f18aeb80ecfa              # double 9.9717629999999993
	.quad	0x400d834a01abd1ab              # double 3.6891060000000002
	.quad	0x401e7fc9795b35b1              # double 7.6247920000000002
	.quad	0x4023a2dbc664d3bf              # double 9.8180829999999996
	.quad	0x4011fafdda8bd231              # double 4.4951090000000002
	.quad	0x401b56e7a311e860              # double 6.8348680000000002
	.quad	0x4012e25a682b6284              # double 4.7210479999999997
	.quad	0x4002f78f68be2f7b              # double 2.370879
	.quad	0x401ea06f69446738              # double 7.6566749999999998
	.quad	0x4022db0984e3ffef              # double 9.4278069999999996
	.quad	0x401767b677f6b1a3              # double 5.8512820000000003
	.quad	0x4009a9aa1d755bcd              # double 3.2078440000000001
	.quad	0x3ff769cdc443914f              # double 1.4633309999999999
	.quad	0x3f9aa92e62131a8f              # double 0.026036
	.quad	0x40228342edbb59de              # double 9.2563700000000004
	.quad	0x40089a921ccd9620              # double 3.0754739999999998
	.quad	0x4009513be22e5de1              # double 3.1646649999999998
	.quad	0x400d7f77292c4934              # double 3.6872389999999999
	.quad	0x4012368512231833              # double 4.553242
	.quad	0x40051ecdd0d8cb08              # double 2.6400410000000001
	.quad	0x401cd74aba387592              # double 7.2102459999999997
	.quad	0x40200d19bd4067cf              # double 8.0255869999999998
	.quad	0x400deb96f21f6cad              # double 3.7400340000000001
	.quad	0x402212253111f0c3              # double 9.0354399999999995
	.quad	0x401972eba27ae9ab              # double 6.3622269999999999
	.quad	0x401fe0025bfad29a              # double 7.9687590000000004
	.quad	0x4013121d96e9bbf1              # double 4.7676910000000001
	.quad	0x3ffc03a2163fdd66              # double 1.7508870000000001
	.quad	0x402276c764adff82              # double 9.2319899999999997
	.quad	0x3ff90f776c4827b7              # double 1.566276
	.quad	0x401863ab862b27cc              # double 6.097334
	.quad	0x4015b4cf4a558ea8              # double 5.4265720000000002
	.quad	0x40148ba5a038194c              # double 5.136374
	.quad	0x402031c9d5a187a5              # double 8.0972430000000006
	.quad	0x40206e53eb399f5e              # double 8.215484
	.quad	0x3fd56030c23fab11              # double 0.33399600000000002
	.quad	0x4014de29b6b2af14              # double 5.2169559999999997
	.quad	0x401af07b784662bb              # double 6.7348460000000001
	.quad	0x401f8d32830a0b1c              # double 7.8878880000000002
	.quad	0x400453c1ce6c093e              # double 2.5408970000000002
	.quad	0x400bed1958969a0b              # double 3.4907710000000001
	.quad	0x400941919ac79703              # double 3.157016
	.quad	0x3fe4a2014727dcbe              # double 0.64477600000000002
	.quad	0x4017a2df0d413123              # double 5.9090540000000003
	.quad	0x4017b7418d6909af              # double 5.9289610000000001
	.quad	0x40167d462c343b71              # double 5.6223380000000001
	.quad	0x400b23571d1d4739              # double 3.3922560000000002
	.quad	0x402239fff79c8430              # double 9.1132810000000006
	.quad	0x3fd153825e13b18e              # double 0.27072200000000002
	.quad	0x4014f7cc7d1bb491              # double 5.2419909999999996
	.quad	0x400f254a3c64345d              # double 3.893208
	.quad	0x3fe149a77e5eaab0              # double 0.54024099999999997
	.quad	0x40123cf3dc054ef4              # double 4.5595239999999997
	.quad	0x401e6dda8bd230ba              # double 7.6072790000000001
	.quad	0x401d807fed20296b              # double 7.3754879999999998
	.quad	0x3ff22a550870110a              # double 1.135335
	.quad	0x401864c122749f0e              # double 6.0983929999999997
	.quad	0x401837ee0b0af5fd              # double 6.0546189999999998
	.quad	0x4007553cddd6e04c              # double 2.91662
	.quad	0x40232986db50f40e              # double 9.5811069999999994
	.quad	0x401eeb0d9513f8db              # double 7.7295439999999997
	.quad	0x401030f51ac9afe2              # double 4.0478100000000001
	.quad	0x40196f2452c59fb2              # double 6.3585370000000001
	.quad	0x3fb03bc4d22c881e              # double 0.063411999999999996
	.quad	0x400a8cd29131ec0b              # double 3.3187609999999999
	.quad	0x400e3edaec4a4096              # double 3.780691
	.quad	0x40219f4b61fe21d9              # double 8.8111219999999992
	.quad	0x4013eb4677b395c4              # double 4.9797609999999999
	.quad	0x3fd4381d7dbf4880              # double 0.31592500000000001
	.quad	0x3fd67c6327ed84d3              # double 0.35134199999999999
	.quad	0x4014ed1a21ea3593              # double 5.2315449999999997
	.quad	0x4018aec0b567557a              # double 6.1706570000000003
	.quad	0x4013b33ebbfd71b0              # double 4.9250439999999998
	.quad	0x4016c0d0edc3bd5a              # double 5.6882970000000004
	.quad	0x3fbf80baa582dbe8              # double 0.123058
	.quad	0x3feb2b367a0f9097              # double 0.84902500000000003
	.quad	0x4017ad3415b1422d              # double 5.9191440000000002
	.quad	0x3fe2b632c1f42bb6              # double 0.58474099999999996
	.quad	0x401b3d27c3936827              # double 6.8097219999999998
	.quad	0x4011ffcdab191dde              # double 4.4998079999999998
	.quad	0x3fd69ad42c3c9eed              # double 0.35320000000000001
	.quad	0x3feb66b1e5c0b999              # double 0.85628599999999999
	.quad	0x4022091ec918e326              # double 9.0178130000000003
	.quad	0x401cccdd0d8cb07d              # double 7.200062
	.quad	0x40184694898f605b              # double 6.0689260000000003
	.quad	0x4022cfafea3df6dc              # double 9.4056390000000007
	.quad	0x4009660780fdc161              # double 3.1748189999999998
	.quad	0x4012118d25edd053              # double 4.5171400000000004
	.quad	0x400c6b11c6d1e109              # double 3.5522800000000001
	.quad	0x40204fbe9856a37b              # double 8.1557510000000004
	.quad	0x4020b505f2884838              # double 8.3535609999999991
	.quad	0x4015032f44912989              # double 5.2531100000000004
	.quad	0x401cff587d6f9768              # double 7.2493610000000004
	.quad	0x4022c99d2391d580              # double 9.393777
	.quad	0x401bb2df9378ee28              # double 6.9246809999999996
	.quad	0x400385b749adc8fc              # double 2.4402910000000002
	.quad	0x400d352977c88e7a              # double 3.6509580000000001
	.quad	0x402398bdcad14a0a              # double 9.7983229999999999
	.quad	0x400bc96aad1d041d              # double 3.4733480000000001
	.quad	0x401adbf6e3f78bbd              # double 6.7148089999999998
	.quad	0x401ada8ac5c13fd1              # double 6.7134200000000002
	.quad	0x4007bc981beb1811              # double 2.9670869999999998
	.quad	0x3feba367e414e7ef              # double 0.86369700000000005
	.quad	0x4003b2c40d0aaa7e              # double 2.462288
	.quad	0x40119698bb4d4888              # double 4.3970669999999998
	.quad	0x400f4d87f88765ba              # double 3.9128569999999998
	.quad	0x3ffb3bce4217d285              # double 1.7021010000000001
	.quad	0x4020d34395810625              # double 8.4126250000000002
	.quad	0x3feed9578a2a90cd              # double 0.96403099999999997
	.quad	0x4016771a7e308787              # double 5.6163119999999997
	.quad	0x401f0abef06b3786              # double 7.7604939999999996
	.quad	0x40225efc158fb43e              # double 9.1855170000000008
	.quad	0x400f17739f340d4e              # double 3.8864510000000001
	.quad	0x402135759ee88df3              # double 8.6044129999999992
	.quad	0x402109018e757929              # double 8.5175900000000002
	.quad	0x4011ac996b7670a0              # double 4.4185540000000003
	.quad	0x40212fd6b65a9a80              # double 8.5934349999999995
	.quad	0x3ffa5d5f56a7ac82              # double 1.647796
	.quad	0x3fb3b44e50c5eb31              # double 0.076969999999999997
	.quad	0x3fe90919ef954eb1              # double 0.78236099999999997
	.quad	0x4013a2fcefaa4767              # double 4.9091680000000002
	.quad	0x401a057bc7f77af6              # double 6.5053549999999998
	.quad	0x40012b8f14db5958              # double 2.1462690000000002
	.quad	0x3fd5880d801b4352              # double 0.33642899999999998
	.quad	0x4013fe9bbf0dc769              # double 4.9986410000000001
	.quad	0x3ff8a007dd441355              # double 1.5390699999999999
	.quad	0x401a7d8cb07d0aee              # double 6.6226070000000004
	.quad	0x3ff5a3da2f8bdec6              # double 1.352503
	.quad	0x3ff81a294141e9af              # double 1.5063869999999999
	.quad	0x400062d0e5604189              # double 2.0482499999999999
	.quad	0x401f90f4d7add15f              # double 7.8915589999999999
	.quad	0x401dbd3b6cbd987c              # double 7.4347969999999997
	.quad	0x40018c2f837b4a23              # double 2.1934499999999999
	.quad	0x40176312b1b36bd3              # double 5.8467510000000003
	.quad	0x401acb94d9407896              # double 6.6988099999999999
	.quad	0x400ab5ffe6d58c8f              # double 3.338867
	.quad	0x40179cba732df506              # double 5.9030550000000002
	.quad	0x4004d00ffda4052d              # double 2.6015929999999998
	.quad	0x4005625742dcf462              # double 2.6730179999999999
	.quad	0x40232c779a6b50b1              # double 9.58685
	.quad	0x3fd330f8c64fdb0a              # double 0.29986400000000002
	.quad	0x40088151a437824d              # double 3.0631439999999999
	.quad	0x4015efc6540cc78f              # double 5.4841550000000003
	.quad	0x3feb0ec743201041              # double 0.84555400000000003
	.quad	0x401663476295208e              # double 5.5969519999999999
	.quad	0x40205edd8b60f1b2              # double 8.1852839999999993
	.quad	0x4021124a8c154c98              # double 8.5357249999999993
	.quad	0x40195c810a569b17              # double 6.3403359999999997
	.quad	0x4018f405b39e279e              # double 6.2383030000000002
	.quad	0x402308d08919ef95              # double 9.5172159999999994
	.quad	0x4006103ea704bc27              # double 2.7579319999999998
	.quad	0x4023f0dc981beb18              # double 9.9704329999999998
	.quad	0x40108cfe154434e3              # double 4.1376879999999998
	.quad	0x400bbdaa4fca42af              # double 3.4676100000000001
	.quad	0x4011f2f2f9873ffb              # double 4.4872550000000002
	.quad	0x4018b0296b3354c1              # double 6.1720329999999999
	.quad	0x4011da99fa11a976              # double 4.4634780000000003
	.quad	0x40055bf6a0dbad3a              # double 2.6699039999999998
	.quad	0x401553721d53cddd              # double 5.3314899999999996
	.quad	0x3ff03fb69984a0e4              # double 1.015555
	.quad	0x3fece694898f605b              # double 0.90314700000000003
	.quad	0x402013e89a88ace2              # double 8.0388839999999995
	.quad	0x402056f8055fbb51              # double 8.1698609999999992
	.quad	0x4006c85d31337eb3              # double 2.8478340000000002
	.quad	0x401f780baa582dbe              # double 7.8672319999999996
	.quad	0x4009c4c2f837b4a2              # double 3.2210749999999999
	.quad	0x4023a0c1b97353b5              # double 9.8139780000000005
	.quad	0x4022ac545846e8f3              # double 9.3365810000000007
	.quad	0x3fe580f12c27a637              # double 0.67198999999999998
	.quad	0x40068fc1df3300de              # double 2.8201939999999999
	.quad	0x401e3dae3e6c4c59              # double 7.5602349999999995
	.quad	0x401f4a0b1bbcf4e8              # double 7.8223079999999995
	.quad	0x40228275ab7dc7ac              # double 9.254804
	.quad	0x3ffb248626f60e0f              # double 1.6964170000000001
	.quad	0x3febe798958d9b5f              # double 0.87202100000000005
	.quad	0x401ca2817763e4ac              # double 7.1586970000000001
	.quad	0x3fd7784ec636b096              # double 0.36671799999999999
	.quad	0x401d77d6b65a9a80              # double 7.3670299999999997
	.quad	0x401afd7add15f02c              # double 6.7475389999999997
	.quad	0x40156afab53d640f              # double 5.3544720000000003
	.quad	0x401191287c200c0f              # double 4.391756
	.quad	0x3ff27151e75360d0              # double 1.152666
	.quad	0x4002ab1572580c31              # double 2.3335370000000002
	.quad	0x402263775b813016              # double 9.1942699999999995
	.quad	0x4003ff1172ef0ae5              # double 2.4995449999999999
	.quad	0x3fc5992428d434a0              # double 0.168736
	.quad	0x4015e1bf7ad4b274              # double 5.4704569999999997
	.quad	0x4015c6c8f7553693              # double 5.4441259999999998
	.quad	0x400e080cf9e3864d              # double 3.7539310000000001
	.quad	0x4021b9e7fb267c6c              # double 8.8630980000000008
	.quad	0x400cc2adc4c9c90c              # double 3.5950579999999999
	.quad	0x400b85931ca7d673              # double 3.4402219999999999
	.quad	0x40187e047d3d4281              # double 6.1230640000000003
	.quad	0x3fc820f6f08cc576              # double 0.18850600000000001
	.quad	0x40051e58e64b2314              # double 2.639818
	.quad	0x3fc46dacabc51548              # double 0.15959699999999999
	.quad	0x40162b2cc70867ae              # double 5.5421630000000004
	.quad	0x4001134699418506              # double 2.1344120000000002
	.quad	0x400a2468cac4b4d0              # double 3.2677779999999998
	.quad	0x4014023e9ea14057              # double 5.002192
	.quad	0x401f6e90bc7b45f1              # double 7.8579739999999995
	.quad	0x4017ccc532a497fa              # double 5.9499709999999997
	.quad	0x401fae2fbe33acd6              # double 7.9201040000000003
	.quad	0x401f0ea9a3d2d880              # double 7.7643190000000004
	.quad	0x400e1f498c3b0c46              # double 3.7652770000000002
	.quad	0x4015c801b4352652              # double 5.4453189999999996
	.quad	0x40153d1b71758e22              # double 5.3096750000000004
	.quad	0x4015b7546d3f9e7c              # double 5.4290330000000004
	.quad	0x40010b11409a2403              # double 2.130404
	.quad	0x4014b0e7bc3c5bd1              # double 5.1727590000000001
	.quad	0x40038686e7e62dc7              # double 2.4406870000000001
	.quad	0x3fe67fd1dcd7060c              # double 0.70310300000000003
	.quad	0x400d0cff21b3aeef              # double 3.6313460000000002
	.quad	0x40196d0fe8ab4fa5              # double 6.3565060000000004
	.quad	0x3fc216bdb1a6d699              # double 0.141319
	.quad	0x400c8c36544fe36d              # double 3.5684629999999999
	.quad	0x40055adea897635e              # double 2.6693699999999998
	.quad	0x3ffeb1c64ba94bbe              # double 1.9184019999999999
	.quad	0x4004b4e54f7a9197              # double 2.5883280000000002
	.quad	0x40207fda1ec4e725              # double 8.2497109999999996
	.quad	0x4009691c087442c8              # double 3.176323
	.quad	0x4021864840e1719f              # double 8.7622699999999991
	.quad	0x4011c99e94ab1d50              # double 4.4468940000000003
	.quad	0x3fe59c8c9320d994              # double 0.67535999999999996
	.quad	0x401e1798958d9b5f              # double 7.5230430000000003
	.quad	0x40148daf07bfe7e2              # double 5.138363
	.quad	0x401ba70153bd1676              # double 6.9130909999999997
	.quad	0x40208e1f7d73c925              # double 8.2775839999999992
	.quad	0x402006060fe47992              # double 8.0117650000000005
	.quad	0x40120d36f7e3d1cc              # double 4.5129049999999999
	.quad	0x40171093964a59c0              # double 5.7661879999999996
	.quad	0x400160bc382a12f9              # double 2.172234
	.quad	0x3fe13c5bd0e12e84              # double 0.53861800000000004
	.quad	0x4014a42396073de2              # double 5.1602920000000001
	.quad	0x40196d34df04ddb5              # double 6.3566469999999997
	.quad	0x401866f1dc50ce4f              # double 6.1005320000000003
	.quad	0x400509f9ce8d972d              # double 2.6298710000000001
	.quad	0x3ffac804102ff8ec              # double 1.673832
	.quad	0x3fff99d0203e63e9              # double 1.975052
	.quad	0x4020fe317268d328              # double 8.4964709999999997
	.quad	0x4007e5553ef6b5d4              # double 2.9869789999999998
	.quad	0x401b568a936c58ef              # double 6.8345130000000003
	.quad	0x401835aee631f8a1              # double 6.0524250000000004
	.quad	0x40113f141205bc02              # double 4.3116000000000003
	.quad	0x4022db8066c2acb8              # double 9.4287139999999993
	.quad	0x401d45cfede97d07              # double 7.3181760000000002
	.quad	0x3ff709656eefa1e4              # double 1.439794
	.quad	0x40111134ce3de615              # double 4.2668030000000003
	.quad	0x4009cc41dd1a21ea              # double 3.2247349999999999
	.quad	0x401447bc3c5bd0e1              # double 5.0700539999999998
	.quad	0x3ff206de76427c7c              # double 1.1266769999999999
	.quad	0x4012db1fab96f21f              # double 4.7139879999999996
	.quad	0x3fab0164840e171a              # double 0.052745
	.quad	0x401883059641f645              # double 6.1279510000000004
	.quad	0x401ac083dbc23316              # double 6.6880030000000001
	.quad	0x401aebcd78c436fc              # double 6.7302759999999999
	.quad	0x4023bbec892ab68d              # double 9.8670390000000001
	.quad	0x401f1b5cbff47736              # double 7.7767210000000002
	.quad	0x4023dfc6759ab6d0              # double 9.9370609999999999
	.quad	0x400e71a437824d4d              # double 3.8054890000000001
	.quad	0x401e72a5614df8b1              # double 7.6119589999999996
	.quad	0x40184d83c6c97d8d              # double 6.075698
	.quad	0x4023c5851654d61b              # double 9.8857809999999997
	.quad	0x3fb42bd7f51efb6e              # double 0.078794000000000002
	.quad	0x40120a0ad8a11666              # double 4.5098070000000003
	.quad	0x4023198a86d71f36              # double 9.5498849999999997
	.quad	0x401229b1fab96f22              # double 4.540718
	.quad	0x401a48dc11e42e12              # double 6.5711519999999997
	.quad	0x401cf93a2df9378f              # double 7.2433860000000001
	.quad	0x4021e6872b020c4a              # double 8.9502500000000005
	.quad	0x4015f5e28aa43351              # double 5.4901220000000004
	.quad	0x4022e2671ef30a4e              # double 9.4421929999999996
	.quad	0x4008ecb966be7afa              # double 3.1155879999999998
	.quad	0x40212f5360d02470              # double 8.5924329999999998
	.quad	0x3fefe523704790b8              # double 0.99672099999999996
	.quad	0x3feb2e2541d8e864              # double 0.84938299999999999
	.quad	0x40202354c122749f              # double 8.0690059999999999
	.quad	0x40148ae147ae147b              # double 5.1356250000000001
	.quad	0x3fc0b5aa715831f0              # double 0.13054399999999999
	.quad	0x40206749f0e4da0a              # double 8.2017360000000004
	.quad	0x4022042b302f72b4              # double 9.0081419999999994
	.quad	0x3ff20420f6f08cc5              # double 1.1260079999999999
	.quad	0x401f87f349385836              # double 7.8827639999999999
	.quad	0x4002695e9e1b089a              # double 2.30145
	.quad	0x401a87995ee136e7              # double 6.6324209999999999
	.quad	0x3fef8346dc5d6388              # double 0.98477499999999995
	.quad	0x40197d4d4024b33e              # double 6.3723650000000003
	.quad	0x400f163e4abe6a33              # double 3.8858609999999998
	.quad	0x4005187ad080b674              # double 2.6369530000000001
	.quad	0x4019b08f21709310              # double 6.4224209999999999
	.quad	0x400494ee392e1ef7              # double 2.5727199999999999
	.quad	0x3fdfca7935760392              # double 0.49673299999999998
	.quad	0x40222b32ce89656f              # double 9.0843720000000001
	.quad	0x4003ecd29131ec0b              # double 2.4906359999999999
	.quad	0x401f2fa0d77b7c78              # double 7.7965119999999998
	.quad	0x401f362b27cbf6e4              # double 7.802899
	.quad	0x3fe22799a1fd156a              # double 0.567334
	.quad	0x400c97ecbb7f9d6f              # double 3.574182
	.quad	0x4000d95dd4c76d11              # double 2.1061359999999998
	.quad	0x4020495421c04428              # double 8.1432199999999995
	.quad	0x4005d762d83c6c98              # double 2.7301690000000001
	.quad	0x4003179420b3d4ae              # double 2.3865129999999999
	.quad	0x4010e11dbca9691a              # double 4.2198399999999996
	.quad	0x40171a0d349be8ff              # double 5.7754409999999998
	.quad	0x401c10870110a138              # double 7.01614
	.quad	0x3fe63c87db2b3461              # double 0.69488899999999998
	.quad	0x402254c144028e50              # double 9.1655370000000005
	.quad	0x4011c7eae5bc87db              # double 4.4452319999999999
	.quad	0x4015cc5ef62f9ca6              # double 5.4495810000000002
	.quad	0x3ff4f1e0828c36db              # double 1.3090520000000001
	.quad	0x401698eb8950763a              # double 5.6493359999999999
	.quad	0x400ea5ab3aabcd79              # double 3.8308930000000001
	.quad	0x4015cb691212513b              # double 5.4486429999999997
	.quad	0x40212b9f98b71b8b              # double 8.5852020000000007
	.quad	0x401c0c5974e65bea              # double 7.01206
	.quad	0x401a0114d2f5dbba              # double 6.5010560000000002
	.quad	0x4020e76d5497310a              # double 8.4520060000000008
	.quad	0x3fce517614595358              # double 0.23686099999999999
	.quad	0x3fe53d188f42fe82              # double 0.66370799999999996
	.quad	0x4023e23f8982cb21              # double 9.941891
	.quad	0x40148a05dd8f92b0              # double 5.1347880000000004
	.quad	0x3fe54792d1287c20              # double 0.66498699999999999
	.quad	0x400a43358f2e05cd              # double 3.2828170000000001
	.quad	0x400358fd5cb790fb              # double 2.4184519999999998
	.quad	0x40021a82e87d2c7c              # double 2.2629450000000002
	.quad	0x4011697204295a6c              # double 4.3529739999999997
	.quad	0x400c36adf71eafee              # double 3.5266989999999998
	.quad	0x3ff6182ecaeea63b              # double 1.3809039999999999
	.quad	0x40071ed288ce703b              # double 2.89005
	.quad	0x4013cf5b1c864884              # double 4.952496
	.quad	0x4005f6323bbc6eb1              # double 2.7452130000000001
	.quad	0x400cccba732df506              # double 3.5999650000000001
	.quad	0x3fdb9949e8815e39              # double 0.43123099999999998
	.quad	0x4023923e18698351              # double 9.7856299999999993
	.quad	0x401c2fef7c243dcd              # double 7.0468120000000001
	.quad	0x40135630a91537a0              # double 4.8341700000000003
	.quad	0x4022a2c1094a2b9d              # double 9.3178789999999996
	.quad	0x3fa57afea3df6db9              # double 0.041953999999999998
	.quad	0x401e8e9185cee17a              # double 7.639227
	.quad	0x400d7f28848387df              # double 3.6870889999999998
	.quad	0x3ffda3161a1db878              # double 1.8523160000000001
	.quad	0x4017f049667b5f1c              # double 5.9846550000000001
	.quad	0x401b282cb20fb225              # double 6.7892330000000003
	.quad	0x3ff88e64b2314014              # double 1.534764
	.quad	0x3ff3cf16f4384ba1              # double 1.238059
	.quad	0x401959bf162ae4b0              # double 6.3376429999999999
	.quad	0x40227913c68661ae              # double 9.2364789999999992
	.quad	0x400292bf5515054b              # double 2.3216540000000001
	.quad	0x401ef4bb1af3a14d              # double 7.738995
	.quad	0x401a9c42a66dbd73              # double 6.6525980000000002
	.quad	0x401d65942917507f              # double 7.3491980000000003
	.quad	0x4022ef3e89a88ace              # double 9.4672739999999997
	.quad	0x401ab0fba8826aa9              # double 6.6728350000000001
	.quad	0x400d612620253975              # double 3.6724359999999998
	.quad	0x400b256a37ac3eb8              # double 3.3932690000000001
	.quad	0x40018e4b87bdcf03              # double 2.19448
	.quad	0x3ff1a90abb44e50c              # double 1.1037699999999999
	.quad	0x400d33cee9dd7ecc              # double 3.6502970000000001
	.quad	0x3ff86239e6ab9b24              # double 1.523981
	.quad	0x40050cb5350092cd              # double 2.631205
	.quad	0x401e823dd54da4cf              # double 7.6271890000000004
	.quad	0x40217d606317268d              # double 8.7448759999999996
	.quad	0x400d2e9707182236              # double 3.6477490000000001
	.quad	0x400aa81fd9ba1b19              # double 3.3320919999999998
	.quad	0x40217d970b49e01e              # double 8.7452930000000002
	.quad	0x401ef5c13fd0d068              # double 7.7399950000000004
	.quad	0x3ff14fede97d06bc              # double 1.082014
	.quad	0x401f1f12c27a6373              # double 7.7803449999999996
	.quad	0x3fd6b95e5aff2a17              # double 0.35506399999999999
	.quad	0x3fe41fc8f32378ab              # double 0.62887999999999999
	.quad	0x4008ce53eb399f5e              # double 3.100746
	.quad	0x4021134b2fa93af7              # double 8.5376829999999995
	.quad	0x400a17ac3eb7cbb4              # double 3.2615590000000001
	.quad	0x4022eb584b1ab085              # double 9.4596579999999992
	.quad	0x401d35460aa64c30              # double 7.3020250000000004
	.quad	0x401c5ec28b2a6b0e              # double 7.0925390000000004
	.quad	0x401cb75b81301648              # double 7.1790599999999998
	.quad	0x3fed6807bbb62414              # double 0.91894900000000001
	.quad	0x40231c067cf1c326              # double 9.5547369999999994
	.quad	0x3fd2515054ac29bf              # double 0.286213
	.quad	0x3ff81ae0c1765775              # double 1.506562
	.quad	0x40220801d5c31594              # double 9.0156390000000001
	.quad	0x401bfe820e629952              # double 6.9985429999999997
	.quad	0x4010c0fa58f7121b              # double 4.1884550000000003
	.quad	0x3ffea249a133c1ce              # double 1.9146209999999999
	.quad	0x400b61ecd4aa10e0              # double 3.4228149999999999
	.quad	0x40172beb5b2d4d40              # double 5.7928899999999999
	.quad	0x402010a88effe2a4              # double 8.0325360000000003
	.quad	0x401a911c2a023209              # double 6.6417089999999996
	.quad	0x40126b7e4de3b8a2              # double 4.6049740000000003
	.quad	0x400cffc7607c419a              # double 3.624892
	.quad	0x40168a02b841248d              # double 5.6347759999999996
	.quad	0x401e37ebaf102364              # double 7.5546100000000003
	.quad	0x401e6287c200c0f0              # double 7.5962209999999999
	.quad	0x4012445d41fa7653              # double 4.5667619999999998
	.quad	0x3ff911c7de5082cf              # double 1.5668409999999999
	.quad	0x4020ae516db0dd83              # double 8.340465
	.quad	0x4021884f8f8a4c1f              # double 8.7662320000000005
	.quad	0x401227b3d8e00086              # double 4.5387719999999998
	.quad	0x3ffa2a077036c9c1              # double 1.6352610000000001
	.quad	0x4013e7dbb16c1e36              # double 4.9764239999999997
	.quad	0x3fe8b677f6b1a2a5              # double 0.77227400000000002
	.quad	0x401eefdfc19c1722              # double 7.7342519999999997
	.quad	0x4020d689a88ace25              # double 8.4190190000000005
	.quad	0x40123992428d434a              # double 4.556222
	.quad	0x4021370691ea78af              # double 8.6074719999999996
	.quad	0x40102b18548a9bd0              # double 4.0420850000000002
	.quad	0x401d3b29a1b9f98b              # double 7.3077759999999996
	.quad	0x401b1713ad5bee3d              # double 6.7725359999999997
	.quad	0x3fe7e2c98e53eb3a              # double 0.74643400000000004
	.quad	0x400e737867f0aa22              # double 3.8063820000000002
	.quad	0x3fe0b9a9da597d4a              # double 0.52266400000000002
	.quad	0x400454ec204f2ae0              # double 2.5414659999999998
	.quad	0x402190eb463497b7              # double 8.7830449999999995
	.quad	0x4014333e78e1932d              # double 5.0500429999999996
	.quad	0x4001816a48733659              # double 2.1881910000000002
	.quad	0x40106bb8c32a8c9c              # double 4.1051970000000004
	.quad	0x3fc0fd5454152b0a              # double 0.13273099999999999
	.quad	0x401ab2e557de0d67              # double 6.6747030000000001
	.quad	0x40233b46bacf7447              # double 9.615774
	.quad	0x4016abd7b2031ceb              # double 5.667815
	.quad	0x4009aa148ba83f4f              # double 3.2080470000000001
	.quad	0x401a0332f01754b0              # double 6.5031239999999997
	.quad	0x401be56d5cfaacda              # double 6.9740500000000001
	.quad	0x401ed84230fcf80e              # double 7.7111900000000002
	.quad	0x40041ba0a5269596              # double 2.51349
	.quad	0x3fe8fbfe7e1fc090              # double 0.78076100000000004
	.quad	0x402044f7caa7589f              # double 8.134703
	.quad	0x401bb802c0a4a05e              # double 6.9296980000000001
	.quad	0x4022a28b2a6b0d95              # double 9.3174679999999999
	.quad	0x4014c7dcbddb9842              # double 5.1951780000000003
	.quad	0x4002678290689870              # double 2.3005420000000001
	.quad	0x40225b5e310dbf05              # double 9.1784529999999993
	.quad	0x4007c5ff1d81f106              # double 2.9716779999999998
	.quad	0x40228f77f27fe4bd              # double 9.2802120000000006
	.quad	0x40122fe6d58c8eef              # double 4.5467789999999999
	.quad	0x3fea9a73b42cc2d7              # double 0.83135400000000004
	.quad	0x40144cab81f969e4              # double 5.0748730000000002
	.quad	0x401783a109d0635a              # double 5.8785439999999998
	.quad	0x401e60aa64c2f838              # double 7.5944000000000002
	.quad	0x3fff78f041461b6d              # double 1.9670259999999999
	.quad	0x400b6817763e4abe              # double 3.4258259999999998
	.quad	0x3fe57d7c2ca148bb              # double 0.67156800000000005
	.quad	0x4013e8b934699418              # double 4.9772689999999997
	.quad	0x4020b51394317acc              # double 8.3536649999999994
	.quad	0x3ff90ba732df505d              # double 1.565345
	.quad	0x4019aa333764f11b              # double 6.4162109999999997
	.quad	0x3ff835b3e1437c57              # double 1.5131110000000001
	.quad	0x3ffb21272c94b381              # double 1.695594
	.quad	0x3ff2c148344c37e7              # double 1.172188
	.quad	0x4021cbc2fc69728a              # double 8.8979719999999993
	.quad	0x402399a6b50b0f28              # double 9.8001000000000004
	.quad	0x402037542a23bff9              # double 8.1080640000000006
	.quad	0x4001396d8f4f93bc              # double 2.153041
	.quad	0x401e932378ab0c89              # double 7.6436900000000003
	.quad	0x40070088509bf9c6              # double 2.8752599999999999
	.quad	0x4012f0dcb9a9da59              # double 4.7352169999999996
	.quad	0x4023e220bc382a13              # double 9.941656
	.quad	0x40105322af577100              # double 4.0811869999999999
	.quad	0x3fd5a38fbca1059f              # double 0.33810800000000002
	.quad	0x40145a400fba8827              # double 5.0881350000000003
	.quad	0x400115a6c5d206c8              # double 2.1355719999999998
	.quad	0x4016af87ad080b67              # double 5.6714159999999998
	.quad	0x4010a5ac8a372607              # double 4.161791
	.quad	0x40124a8a82a5614e              # double 4.572794
	.quad	0x401e6ed41b75a74c              # double 7.608231
	.quad	0x4021d764cf8d716d              # double 8.9206909999999997
	.quad	0x40160ab474107315              # double 5.5104540000000002
	.quad	0x4013ea20578e5c4f              # double 4.9786390000000003
	.quad	0x400e8ce1c58255b0              # double 3.8187899999999999
	.quad	0x401a6bcc6c54bcf1              # double 6.6052720000000003
	.quad	0x401f8a771c970f7c              # double 7.8852200000000003
	.quad	0x40067abe27179bfe              # double 2.809933
	.quad	0x4003dce8d972cd7d              # double 2.482866
	.quad	0x401418986fcdee35              # double 5.024019
	.quad	0x401c337867f0aa22              # double 7.0502640000000003
	.quad	0x400724db163baba8              # double 2.8929960000000001
	.quad	0x4012517e77d523b3              # double 4.5795839999999997
	.quad	0x400ddfa1a0cf1801              # double 3.7341950000000002
	.quad	0x3ffb1cac083126e9              # double 1.6944999999999999
	.quad	0x40186277c45cbbc3              # double 6.0961600000000002
	.quad	0x401d5bb05faebc41              # double 7.3395400000000004
	.quad	0x40217baba7b9170d              # double 8.7415439999999993
	.quad	0x40080473cd573648              # double 3.0021740000000001
	.quad	0x4006f5885d31337f              # double 2.8698890000000001
	.quad	0x400ee0f451761459              # double 3.8598409999999999
	.quad	0x4018bd794a6eb91b              # double 6.1850329999999998
	.quad	0x40222cc9c90c4dec              # double 9.0874769999999998
	.quad	0x40157737542a23c0              # double 5.366422
	.quad	0x401826f156191149              # double 6.03803
	.quad	0x401b0bc382a12f90              # double 6.7614879999999999
	.quad	0x401df0e6299524c0              # double 7.4852530000000002
	.quad	0x4010f1704ff4341a              # double 4.2357800000000001
	.quad	0x401b38b652370479              # double 6.805383
	.quad	0x401390e560418937              # double 4.8914999999999997
	.quad	0x40228e4a38327675              # double 9.2779100000000003
	.quad	0x401dfea8112ba16e              # double 7.4986879999999996
	.quad	0x3fd57e5a78f25a25              # double 0.335837
	.quad	0x4004cfb224aada34              # double 2.6014140000000001
	.quad	0x4019a6dc1a47a9e3              # double 6.4129490000000002
	.quad	0x40116be121ee6751              # double 4.3553509999999998
	.quad	0x40134c03ff69014b              # double 4.8242339999999997
	.quad	0x401f3067cf1c3266              # double 7.7972710000000003
	.quad	0x3fdab6b6e0d23d4f              # double 0.417402
	.quad	0x400d0ac8e68e3ef3              # double 3.6302660000000002
	.quad	0x400004934267839d              # double 2.0022340000000001
	.quad	0x40186f84449dbec2              # double 6.1089029999999998
	.quad	0x3ff0c5d851654d62              # double 1.0483020000000001
	.quad	0x4016341c8216c615              # double 5.5508899999999999
	.quad	0x4020ef6a7264a16a              # double 8.4676089999999995
	.quad	0x3fec48ba83f4eca7              # double 0.88387800000000005
	.quad	0x401e221815a07b35              # double 7.5332949999999998
	.quad	0x4021e98b2e9ccb7d              # double 8.9561399999999995
	.quad	0x400acebcc6c54bcf              # double 3.350946
	.quad	0x4002450f840181e0              # double 2.2837209999999999
	.quad	0x3fc131769a91105e              # double 0.134322
	.quad	0x3ffc145b6c3760bf              # double 1.7549699999999999
	.quad	0x3fefc0a06e9ff0cc              # double 0.99226400000000003
	.quad	0x40222bb6aa4b9885              # double 9.0853780000000004
	.quad	0x401b1aa1511dffc5              # double 6.7760059999999998
	.quad	0x401189ea57214f05              # double 4.3846829999999999
	.quad	0x4016bb81733226c4              # double 5.6831110000000002
	.quad	0x40210aab25b317f0              # double 8.5208370000000002
	.quad	0x4016027525460aa6              # double 5.5023999999999997
	.quad	0x401d87570c564f98              # double 7.382168
	.quad	0x3fecf6ea4228997c              # double 0.90514099999999997
	.quad	0x4009d9bc33f85511              # double 3.2313160000000001
	.quad	0x4019549f51697f20              # double 6.3326390000000004
	.quad	0x40222455eaee2004              # double 9.0709680000000005
	.quad	0x3fef2aed1394317b              # double 0.97399000000000002
	.quad	0x3ff59672324c8366              # double 1.3492299999999999
	.quad	0x4007d245b291b824              # double 2.9776720000000001
	.quad	0x401c63369b9d7fd8              # double 7.0968879999999999
	.quad	0x40043a69be09bb6b              # double 2.5285220000000002
	.quad	0x3fecc4e50c5eb314              # double 0.89903500000000002
	.quad	0x402129409a240315              # double 8.5805710000000008
	.quad	0x40137ae3e6c4c597              # double 4.8700099999999997
	.quad	0x4002b16db0dd82fd              # double 2.3366349999999998
	.quad	0x4012f94812be48a6              # double 4.7434390000000004
	.quad	0x401da26916440f24              # double 7.4086040000000004
	.quad	0x40232e3800218def              # double 9.5902709999999995
	.quad	0x4022a6ce9a2c6690              # double 9.3257949999999994
	.quad	0x3fe4b065f9591cd2              # double 0.64653300000000002
	.quad	0x40157e6e221c8a7a              # double 5.3734669999999998
	.quad	0x40071f972474538f              # double 2.890425
	.quad	0x40092b4202d9cf14              # double 3.1461220000000001
	.quad	0x3ff457aaac1094a3              # double 1.2714030000000001
	.quad	0x4022d335b0bbf50e              # double 9.4125189999999996
	.quad	0x3fff1a11233df2aa              # double 1.943864
	.quad	0x3ff14067cf1c3266              # double 1.0782240000000001
	.quad	0x4020e70f3882278d              # double 8.4512879999999999
	.quad	0x400f15f5f0b28523              # double 3.885723
	.quad	0x3fee187e7c06e19c              # double 0.94049000000000004
	.quad	0x4022cd2977c88e7a              # double 9.4007070000000006
	.quad	0x3fe9167ec7863bef              # double 0.78399600000000003
	.quad	0x3fe8f0068db8bac7              # double 0.77929999999999999
	.quad	0x40207713ad5bee3d              # double 8.2325719999999993
	.quad	0x400a65add9c27e95              # double 3.2996479999999999
	.quad	0x4004e2a12f901084              # double 2.6106590000000001
	.quad	0x4023f1eeaa6d2674              # double 9.9725239999999999
	.quad	0x3ff4a66a98244e94              # double 1.290629
	.quad	0x3fffb99f5dfeb8d8              # double 1.982818
	.quad	0x4014acb46bacf744              # double 5.1686569999999996
	.quad	0x4017737867f0aa22              # double 5.8627640000000003
	.quad	0x401bc6612839042e              # double 6.9437300000000004
	.quad	0x401b91f53825e13b              # double 6.8925369999999999
	.quad	0x3ff6b1704ff4341a              # double 1.41832
	.quad	0x40217c0b5675579b              # double 8.7422740000000001
	.quad	0x40223268900c521e              # double 9.0984540000000003
	.quad	0x40153563a9f383f1              # double 5.3021380000000002
	.quad	0x4023e6202539756d              # double 9.9494640000000007
	.quad	0x401d878854cdb7ae              # double 7.3823559999999997
	.quad	0x401c1d5d80e496ee              # double 7.0286770000000001
	.quad	0x400b988ca3e7d135              # double 3.449487
	.quad	0x401e387e38eb0319              # double 7.5551690000000002
	.quad	0x3ffd610f0e90bc7b              # double 1.8361959999999999
	.quad	0x3fdfcd7cf5f4e443              # double 0.496917
	.quad	0x40127a7935760392              # double 4.6196029999999997
	.quad	0x401df4bf8fcd67fd              # double 7.4890119999999997
	.quad	0x40118caafbc1acde              # double 4.3873709999999999
	.quad	0x40005e414e7ee914              # double 2.0460229999999999
	.quad	0x3ffd19806f262889              # double 1.8187260000000001
	.quad	0x3fefea4873365882              # double 0.99734900000000004
	.quad	0x401a8ef0f16f4385              # double 6.6395910000000002
	.quad	0x4004677bbf93ff26              # double 2.550529
	.quad	0x4014c5f2cb641701              # double 5.1933090000000002
	.quad	0x4012d96e158750c2              # double 4.7123340000000002
	.quad	0x40223d66490a350d              # double 9.1199209999999997
	.quad	0x401bd0f1b25f633d              # double 6.9540470000000001
	.quad	0x4001d8a0902de00d              # double 2.230775
	.quad	0x402173b8a19c9d5a              # double 8.7260179999999998
	.quad	0x3ff9860242d05f29              # double 1.5952170000000001
	.quad	0x40233c028e4fb97c              # double 9.6172070000000005
	.quad	0x4009430caa326e11              # double 3.1577389999999999
	.quad	0x40025ce18266772d              # double 2.2953519999999998
	.quad	0x40131bffcdab191e              # double 4.7773430000000001
	.quad	0x400b6ed2cbea4ebe              # double 3.4291130000000001
	.quad	0x4013e12dfd694ccb              # double 4.9699020000000003
	.quad	0x4001b9c9d5a187a5              # double 2.2157170000000002
	.quad	0x4019d4855da27286              # double 6.4575399999999998
	.quad	0x4021334a01abd1ab              # double 8.6001740000000009
	.quad	0x40134f00ef1348b2              # double 4.8271519999999999
	.quad	0x3fe22f901083dbc2              # double 0.56830599999999998
	.quad	0x4000b37542a23c00              # double 2.0876260000000002
	.quad	0x40218dc91d14e3bd              # double 8.7769250000000003
	.quad	0x4018843fa2ad3e92              # double 6.129149
	.quad	0x4010d06705c896dd              # double 4.2035179999999999
	.quad	0x401758c7192ea52f              # double 5.836697
	.quad	0x401d2b3c3e74afd5              # double 7.2922219999999998
	.quad	0x4002f11f926c7eae              # double 2.3677359999999998
	.quad	0x3ff6f98c7e28240b              # double 1.4359249999999999
	.quad	0x40215f6577531db4              # double 8.6863209999999995
	.quad	0x4012c821af7d30ad              # double 4.6954409999999998
	.quad	0x4020200a5accd530              # double 8.0625789999999995
	.quad	0x3ff095d91ab8e8ea              # double 1.0365839999999999
	.quad	0x402148dc33721d54              # double 8.6423050000000003
	.quad	0x3fe1b1e5c0b99913              # double 0.55296599999999996
	.quad	0x40073381d7dbf488              # double 2.90015
	.quad	0x3fd0461b6d43d039              # double 0.25427899999999998
	.quad	0x40070d82ba5a0382              # double 2.8815970000000002
	.quad	0x401608da7f3cf701              # double 5.5086459999999997
	.quad	0x3fdcb75a74c09c3d              # double 0.44869100000000001
	.quad	0x400286f47b677f6b              # double 2.315896
	.quad	0x401849c4da9003ef              # double 6.0720400000000003
	.quad	0x4002fb7f1737542a              # double 2.3728009999999999
	.quad	0x3ff44d77b7c7820a              # double 1.268913
	.quad	0x4001ac1ebc83a96d              # double 2.2090429999999999
	.quad	0x401427d2c7b890d6              # double 5.0388900000000003
	.quad	0x401b2bd9cae21102              # double 6.7928230000000003
	.quad	0x400a860fe47991bc              # double 3.3154599999999999
	.quad	0x4004d04bc27631b6              # double 2.6017070000000002
	.quad	0x4012658a32f44913              # double 4.5991600000000004
	.quad	0x40109001d5c31594              # double 4.1406320000000001
	.quad	0x402175e8d5410f95              # double 8.7302920000000004
	.quad	0x401af7a85015c209              # double 6.7418529999999999
	.quad	0x4010d793dd97f62b              # double 4.2105249999999996
	.quad	0x3ff695a7d24180d4              # double 1.411537
	.quad	0x400d97f51efb6dca              # double 3.699198
	.quad	0x3ffff8012dfd694d              # double 1.998048
	.quad	0x4012d6ee30caa327              # double 4.7098930000000001
	.quad	0x4023232fcac8e68e              # double 9.5687239999999996
	.quad	0x400067da1ec4e725              # double 2.0507089999999999
	.quad	0x40068c4c5974e65c              # double 2.818505
	.quad	0x400834bf8fcd67fd              # double 3.0257559999999999
	.quad	0x4021938a3b57c4e3              # double 8.7881640000000001
	.quad	0x401497d1bb4916ca              # double 5.1482609999999998
	.quad	0x401388a372606fac              # double 4.8834359999999997
	.quad	0x400848787485e3da              # double 3.0353859999999999
	.quad	0x401a9b9f98b71b8b              # double 6.6519760000000003
	.quad	0x4019c28b6d86ec18              # double 6.4399850000000001
	.quad	0x40160eca686e7e63              # double 5.5144440000000001
	.quad	0x4017a80ecfa69be1              # double 5.9141190000000003
	.quad	0x40125ee807bbb624              # double 4.5926819999999999
	.quad	0x4021904bc27631b6              # double 8.7818280000000009
	.quad	0x400e9736cdf266ba              # double 3.8238349999999999
	.quad	0x401902acb85a4f01              # double 6.2526120000000001
	.quad	0x400c796fa82e87d3              # double 3.5592950000000001
	.quad	0x4021f3702602c908              # double 8.9754649999999998
	.quad	0x3fff4f1800a7c5ac              # double 1.9568099999999999
	.quad	0x400ba13b18dac259              # double 3.4537260000000001
	.quad	0x3fff320ea5b530cf              # double 1.949721
	.quad	0x401d86b0d9513f8e              # double 7.3815340000000003
	.quad	0x40238c32441fea81              # double 9.7738209999999998
	.quad	0x4015f7507e9d94d1              # double 5.4915180000000001
	.quad	0x401e2ae81882adc5              # double 7.5419010000000001
	.quad	0x400987dc37a3db3c              # double 3.191338
	.quad	0x401efa82e87d2c7c              # double 7.7446400000000004
	.quad	0x400d7f5946c332f0              # double 3.687182
	.quad	0x401f9253da72a7bd              # double 7.8928979999999997
	.quad	0x401b333eff195033              # double 6.8000449999999999
	.quad	0x400a067ad8e43244              # double 3.2531639999999999
	.quad	0x4020ceee73e681aa              # double 8.4041630000000005
	.quad	0x3ffe2f2c7325918a              # double 1.886517
	.quad	0x401cccd0fe8ab4fa              # double 7.2000159999999997
	.quad	0x402161a6f826edab              # double 8.6907270000000008
	.quad	0x3fba7381d7dbf488              # double 0.103325
	.quad	0x40157cc814d7279a              # double 5.3718570000000003
	.quad	0x40111f71eafee6fb              # double 4.2807079999999997
	.quad	0x4021cb3636f3b214              # double 8.8968980000000001
	.quad	0x3fff608bfc2224ee              # double 1.961071
	.quad	0x40001a52ac753e70              # double 2.0128529999999998
	.quad	0x40139b51bd61f5be              # double 4.9016789999999997
	.quad	0x4015b265add9c27f              # double 5.4242160000000004
	.quad	0x40239fc73eee5259              # double 9.8120670000000007
	.quad	0x3ff83b3311a543f2              # double 1.514453
	.quad	0x4012973e24febd0a              # double 4.6476980000000001
	.quad	0x401d6d2c7b890d5a              # double 7.3566149999999997
	.quad	0x402291c99285a922              # double 9.2847410000000004
	.quad	0x401e1a9930be0ded              # double 7.5259749999999998
	.quad	0x401d9035bd512ec7              # double 7.3908300000000002
	.quad	0x3ff3afcce1c58256              # double 1.2304200000000001
	.quad	0x40114b7f9d6f1130              # double 4.3237290000000002
	.quad	0x4023b4bbc2b94d94              # double 9.8529949999999999
	.quad	0x4006e1fb82c2bd7f              # double 2.8603429999999999
	.quad	0x401e1449129888f8              # double 7.5198099999999996
	.quad	0x401c19531550ca1d              # double 7.0247310000000001
	.quad	0x3ff5859210385c68              # double 1.34511
	.quad	0x3fe0633ce63a5c1c              # double 0.51211399999999996
	.quad	0x3ff25450efdc9c4e              # double 1.1455850000000001
	.quad	0x4016b87485e3da30              # double 5.6801320000000004
	.quad	0x40116388a8b08dd2              # double 4.3472010000000001
	.quad	0x40104a64c2f837b5              # double 4.0726500000000003
	.quad	0x40232d6e8af81627              # double 9.5887340000000005
	.quad	0x401135efa615a8df              # double 4.3026720000000003
	.quad	0x4022a250b524399b              # double 9.3170219999999997
	.quad	0x3ff8f6c2699c7bcc              # double 1.560244
	.quad	0x4010d254e6e221c9              # double 4.2054020000000003
	.quad	0x401ddb2788db0575              # double 7.4640180000000003
	.quad	0x40018be596c82e02              # double 2.1933090000000002
	.quad	0x4022e5b0ff10ecb7              # double 9.4486159999999994
	.quad	0x401acd63022dd7aa              # double 6.7005730000000003
	.quad	0x401e52da554b8bf0              # double 7.5809110000000004
	.quad	0x401172ed352220bc              # double 4.3622329999999998
	.quad	0x3fded62bf11f926c              # double 0.48182199999999997
	.quad	0x402328a0902de00d              # double 9.5793499999999998
	.quad	0x3ff332617c1bda51              # double 1.1998
	.quad	0x401b9bf5515054ac              # double 6.9023029999999999
	.quad	0x400c14aa10e02214              # double 3.5100899999999999
	.quad	0x400991d81f106680              # double 3.1962130000000002
	.quad	0x40227790b8498809              # double 9.2335259999999995
	.quad	0x4011065cf67b1c00              # double 4.2562139999999999
	.quad	0x401126045baf533f              # double 4.2871259999999998
	.quad	0x40169ee4e26d4802              # double 5.65517
	.quad	0x3ffd6c881e4712e4              # double 1.838997
	.quad	0x4012d71971c10d7c              # double 4.7100580000000001
	.quad	0x400686412cf0f9d3              # double 2.8155540000000001
	.quad	0x401961843c3a42f2              # double 6.3452310000000001
	.quad	0x401e779d4d834092              # double 7.6168110000000002
	.quad	0x40160dfe32a0663c              # double 5.5136649999999996
	.quad	0x401f3cc25072085b              # double 7.8093349999999999
	.quad	0x40203ceee0f3cb3e              # double 8.1190099999999994
	.quad	0x3fd10270f3882279              # double 0.26577400000000001
	.quad	0x3fd3426fe718a86d              # double 0.30092999999999998
	.quad	0x400cde2f7b17ce53              # double 3.6084890000000001
	.quad	0x4021539628cbd124              # double 8.6632549999999994
	.quad	0x3fec458cd20afa2f              # double 0.88349
	.quad	0x40145e02a77a2ced              # double 5.0918070000000002
	.quad	0x40112394317acc4f              # double 4.284745
	.quad	0x4010ca6937d1fe65              # double 4.197667
	.quad	0x402294c059210386              # double 9.2905300000000004
	.quad	0x3fe71d6f112fd32c              # double 0.72234299999999996
	.quad	0x4009c1522a6f3f53              # double 3.219395
	.quad	0x4007c5bc01a36e2f              # double 2.9715500000000001
	.quad	0x3ffd7edb7281fd9c              # double 1.8434710000000001
	.quad	0x40220e2003ab862b              # double 9.0275879999999997
	.quad	0x401b2faca3619978              # double 6.796557
	.quad	0x400c0b6d00b45ae6              # double 3.505579
	.quad	0x401509e55c0fcb4f              # double 5.2596639999999999
	.quad	0x4021313b18dac259              # double 8.5961540000000003
	.quad	0x4003e821f2990f30              # double 2.4883459999999999
	.quad	0x4016d9c4113c6866              # double 5.7126619999999999
	.quad	0x4022c6b9a176ddad              # double 9.3881350000000001
	.quad	0x3ff656638433d6c7              # double 1.396091
	.quad	0x4000f83382e44b6f              # double 2.1211920000000002
	.quad	0x3ff0927c39368273              # double 1.035763
	.quad	0x40136355043e5322              # double 4.8470040000000001
	.quad	0x3ff731960fa15db3              # double 1.449606
	.quad	0x4001c61d8622c450              # double 2.2217359999999999
	.quad	0x40098621b7e0ac7e              # double 3.1904940000000002
	.quad	0x3ff908c9320d9946              # double 1.5646450000000001
	.quad	0x3ff66f284167a95d              # double 1.4021380000000001
	.quad	0x40008dcb1465e892              # double 2.0692349999999999
	.quad	0x3feb3f8769ec2ce4              # double 0.85150499999999995
	.quad	0x401ae7e846a5d6bf              # double 6.7264720000000002
	.quad	0x3feb35350092ccf7              # double 0.85024500000000003
	.quad	0x40106f7e3d1cc101              # double 4.1088800000000001
	.quad	0x400eb8d1526d8b1e              # double 3.8402430000000001
	.quad	0x4013103c4b09e98e              # double 4.7658550000000002
	.quad	0x401bad5a5b9628cc              # double 6.9192900000000002
	.quad	0x401a55f02c4d65e4              # double 6.5839239999999997
	.quad	0x4007d5fdcdf69878              # double 2.9794879999999999
	.quad	0x3fd694dd72367e41              # double 0.35283599999999998
	.quad	0x4019d8ae74f2f124              # double 6.4616030000000002
	.quad	0x3ffd94ff0025bfad              # double 1.848876
	.quad	0x401ef1e03f705858              # double 7.7362070000000002
	.quad	0x40119e4217d2849d              # double 4.4045490000000003
	.quad	0x4019e734f82f5126              # double 6.4757879999999997
	.quad	0x3fc66d4801f75105              # double 0.17521
	.quad	0x3feba7e308787486              # double 0.86424400000000001
	.quad	0x40198e1fc08fa7a8              # double 6.3887929999999997
	.quad	0x40133c5d63886595              # double 4.8089500000000003
	.quad	0x401d6972cd7cf5f5              # double 7.3529770000000001
	.quad	0x3feae8ab4fa48302              # double 0.84090200000000004
	.quad	0x3ff4f14fce746cb9              # double 1.3089139999999999
	.quad	0x402186049ecb31c2              # double 8.7617539999999998
	.quad	0x4017d6e7a311e860              # double 5.9598680000000002
	.quad	0x40012b89d6adf71f              # double 2.1462590000000001
	.quad	0x401b228a6117720d              # double 6.7837310000000004
	.quad	0x4017e3de6149c6f3              # double 5.9725279999999996
	.quad	0x401b89d7ba6698bb              # double 6.8846119999999997
	.quad	0x400cc0e6299524c0              # double 3.5941890000000001
	.quad	0x400ef88b9778572a              # double 3.8713600000000001
	.quad	0x401c42e2b8c75c4b              # double 7.0653180000000004
	.quad	0x400431526d8b1dd6              # double 2.5240830000000001
	.quad	0x3fe7a2a2c2374795              # double 0.73860300000000001
	.quad	0x3fd1ac8a372606fb              # double 0.27615600000000001
	.quad	0x4005b89613d31b9b              # double 2.7151299999999998
	.quad	0x40210199fe43675e              # double 8.5031280000000002
	.quad	0x3fe4e9ab29e4d5d8              # double 0.65352399999999999
	.quad	0x401c579fa97e132b              # double 7.0855699999999997
	.quad	0x3fdc7dfe32a0663c              # double 0.44518999999999997
	.quad	0x3fdba0168b5cbff4              # double 0.43164599999999997
	.quad	0x40217f15c63ae254              # double 8.7482129999999997
	.quad	0x4013e6d00b45ae60              # double 4.975403
	.quad	0x4010baeb3dd11be7              # double 4.1825380000000001
	.quad	0x4014812fd32c625f              # double 5.1261590000000004
	.quad	0x401f556861e92924              # double 7.8334060000000001
	.quad	0x3fe44102ff8ec0f9              # double 0.63293600000000005
	.quad	0x400f2aef2c732592              # double 3.8959640000000002
	.quad	0x401fc543aeab7996              # double 7.9426410000000001
	.quad	0x401f22d1f1cfbb95              # double 7.7840040000000003
	.quad	0x3fba40746455eaee              # double 0.102546
	.quad	0x4022bc0f45176146              # double 9.3673040000000007
	.quad	0x3ffac14d72799a20              # double 1.672193
	.quad	0x4021c63779e9d0ea              # double 8.8871420000000008
	.quad	0x3fe07969e3c96894              # double 0.51482099999999997
	.quad	0x401d532d2bb23572              # double 7.3312270000000002
	.quad	0x4014163a9f383f0c              # double 5.0217080000000003
	.quad	0x401ba4ca0c282c6f              # double 6.910927
	.quad	0x400c40f88333fc87              # double 3.5317240000000001
	.quad	0x3fd62d7f950b955f              # double 0.34652699999999997
	.quad	0x3feb8e4b87bdcf03              # double 0.86112
	.quad	0x40111cce1c58255b              # double 4.27813
	.quad	0x3ff4015e39713ad6              # double 1.2503340000000001
	.quad	0x401b9713ad5bee3d              # double 6.8975359999999997
	.quad	0x4011585b18548a9c              # double 4.3362850000000002
	.quad	0x4022686ab14ec205              # double 9.2039390000000001
	.quad	0x400aa9d1f601797d              # double 3.3329200000000001
	.quad	0x40227dfe974a3401              # double 9.2460830000000005
	.quad	0x4019733a8a3f8983              # double 6.3625280000000002
	.quad	0x4012a1c4b90214ad              # double 4.6579769999999998
	.quad	0x4014421f2990f302              # double 5.0645720000000001
	.quad	0x401fb55043e5321e              # double 7.9270639999999997
	.quad	0x401e81858bc59b80              # double 7.6264859999999999
	.quad	0x40104b9628cbd124              # double 4.0738149999999997
	.quad	0x4020567caea747d8              # double 8.16892
	.quad	0x40217ef1fddebd90              # double 8.7479399999999998
	.quad	0x40036d20296b3355              # double 2.4282840000000001
	.quad	0x40232be4abe6a338              # double 9.5857290000000006
	.quad	0x3ff0fc06e19b90eb              # double 1.0615300000000001
	.quad	0x4020dce5d5b24e9c              # double 8.4314409999999995
	.quad	0x3fffbe61cffeb075              # double 1.9839800000000001
	.quad	0x40003caf2d7f950c              # double 2.0296310000000002
	.quad	0x4022e6cc814d727a              # double 9.4507790000000007
	.quad	0x401e820535c9e668              # double 7.6269729999999995
	.quad	0x4010557f737da61e              # double 4.083494
	.quad	0x4019c533b1077469              # double 6.4425800000000004
	.quad	0x402367c243dccea3              # double 9.7026540000000007
	.quad	0x4023a123a29c779a              # double 9.8147249999999993
	.quad	0x40164d70a3d70a3d              # double 5.5756249999999996
	.quad	0x40114e5b8561d430              # double 4.3265209999999996
	.quad	0x3ff927ddca4b124d              # double 1.572233
	.quad	0x4012da96d4c33b54              # double 4.7134660000000004
	.quad	0x3fd504b7f5a5332b              # double 0.32841300000000001
	.quad	0x3ffe54a1ad6451b9              # double 1.895662
	.quad	0x401725171e29b6b3              # double 5.7862210000000003
	.quad	0x400536a26e547171              # double 2.6516769999999998
	.quad	0x4012392fb19e731d              # double 4.5558459999999998
	.quad	0x4019d9b068123811              # double 6.4625870000000001
	.quad	0x3ff977da61e0c5a8              # double 1.591761
	.quad	0x3ffd7463497b7415              # double 1.8409150000000001
	.quad	0x40124cee9dd7ecbb              # double 4.5751289999999996
	.quad	0x3ff1d5e6bc621b7e              # double 1.114722
	.quad	0x3fd29f623076c051              # double 0.29097800000000001
	.quad	0x40141f5ec80c73ac              # double 5.0306350000000002
	.quad	0x40076a3c64345cff              # double 2.9268730000000001
	.quad	0x402399b13165d399              # double 9.8001799999999992
	.quad	0x401ae8461f9f01b8              # double 6.7268299999999996
	.quad	0x3fec7e0ce0b912dc              # double 0.89038700000000003
	.quad	0x401e0b97bb730835              # double 7.5113209999999996
	.quad	0x4021710342aa9f7b              # double 8.7207279999999994
	.quad	0x4004ce90bc7b45f1              # double 2.6008619999999998
	.quad	0x400b20980b242071              # double 3.3909150000000001
	.quad	0x4021cdc91d14e3bd              # double 8.9019250000000003
	.quad	0x4023ffb4c3c18b50              # double 9.9994259999999997
	.quad	0x40139d3910c2c5e3              # double 4.9035380000000002
	.quad	0x3fefdcdf69878317              # double 0.99571200000000004
	.quad	0x4021959b3d07c84b              # double 8.7921999999999993
	.quad	0x40105a6a012599ed              # double 4.0882949999999996
	.quad	0x4023d49ecb31c21a              # double 9.9152740000000001
	.quad	0x401797fae3608d09              # double 5.8984180000000004
	.quad	0x3f6ec4e7253da72a              # double 0.0037559999999999998
	.quad	0x4011515b1422ccb4              # double 4.3294490000000003
	.quad	0x40005785729b280f              # double 2.042735
	.quad	0x4000e36d22424a27              # double 2.1110479999999998
	.quad	0x400aa9741d084e83              # double 3.332741
	.quad	0x3ffd93e707e175d1              # double 1.8486089999999999
	.quad	0x4022a3317efe0ce1              # double 9.3187370000000005
	.quad	0x4022cb9abf338716              # double 9.3976649999999999
	.quad	0x40159b4f61672325              # double 5.4016700000000002
	.quad	0x401f2ccd96206855              # double 7.7937529999999997
	.quad	0x40237fad4b2745bf              # double 9.7493689999999997
	.quad	0x40156d330941c821              # double 5.3566399999999996
	.quad	0x401ba7eae5bc87db              # double 6.9139819999999999
	.quad	0x400abeaa2a0a9585              # double 3.3430979999999999
	.quad	0x4019e84167a95c85              # double 6.4768119999999998
	.quad	0x401214cf4a558ea8              # double 4.5203220000000002
	.quad	0x3fe9a34a87e38eb0              # double 0.80118299999999998
	.quad	0x4007c209246bf013              # double 2.9697439999999999
	.quad	0x400fb85271bcdbbe              # double 3.965001
	.quad	0x40194d84901d1915              # double 6.3257009999999996
	.quad	0x4020b469b5a63f9a              # double 8.3523689999999995
	.quad	0x3fa7e7c06e19b90f              # double 0.046690000000000002
	.quad	0x3fcf6deb95e5aff3              # double 0.24554200000000001
	.quad	0x401ceaa60913a4f8              # double 7.2291489999999996
	.quad	0x4000aeeae9ee45c3              # double 2.0854089999999998
	.quad	0x40226b36deb95e5b              # double 9.209403
	.quad	0x400d1f7be121ee67              # double 3.6403729999999999
	.quad	0x401c48d434a01abd              # double 7.0711219999999999
	.quad	0x4021f2bbcb1cc964              # double 8.9740889999999993
	.quad	0x4018103b3e9a6f82              # double 6.0158509999999996
	.quad	0x40165cb20fb224ab              # double 5.5905230000000001
	.quad	0x3ff587f88765ba6f              # double 1.345696
	.quad	0x401e9619da9c9928              # double 7.6465829999999996
	.quad	0x3fd9e9d51b4fe79f              # double 0.40489700000000001
	.quad	0x401cdc814d72799a              # double 7.2153369999999999
	.quad	0x400aef190d173fb8              # double 3.3667470000000002
	.quad	0x40139db6a1e81cb4              # double 4.9040169999999996
	.quad	0x40154e80bed740c4              # double 5.3266629999999999
	.quad	0x3ff990c804102ff9              # double 1.597847
	.quad	0x401c73b927d45a60              # double 7.1130110000000002
	.quad	0x40225afb19e731d3              # double 9.1776970000000002
	.quad	0x4008b0ea18372e6a              # double 3.0863839999999998
	.quad	0x3ff6e7ec7863beec              # double 1.431622
	.quad	0x402139c10d7be985              # double 8.6128009999999993
	.quad	0x401c139a7c17a893              # double 7.0191439999999998
	.quad	0x4023d8a936c58eeb              # double 9.9231660000000001
	.quad	0x401de7aa68f4b620              # double 7.4762360000000001
	.quad	0x3fecdb70691ea78b              # double 0.90178700000000001
	.quad	0x400d366be7afa722              # double 3.651573
	.quad	0x3ffed198aeb80ed0              # double 1.9261710000000001
	.quad	0x400c028aa433508f              # double 3.5012409999999998
	.quad	0x40076dda48b65237              # double 2.928639
	.quad	0x401014e0daa0cae6              # double 4.0203889999999998
	.quad	0x3fd384f8f8a4c1ec              # double 0.30499100000000001
	.quad	0x401b45bf6a0dbad4              # double 6.8181130000000003
	.quad	0x4022c2cdc011d367              # double 9.3804759999999998
	.quad	0x3ffccb90214ad363              # double 1.799698
	.quad	0x3fc88f75536933a0              # double 0.19187799999999999
	.quad	0x3fdf45d851654d62              # double 0.48863800000000002
	.quad	0x40223e42e1262025              # double 9.1216039999999996
	.quad	0x4023e6c58eeae9ee              # double 9.9507259999999995
	.quad	0x40095558a7610279              # double 3.1666729999999998
	.quad	0x400ab78e5c4eb570              # double 3.3396270000000001
	.quad	0x401cbeccc46950fc              # double 7.1863279999999996
	.quad	0x402274c76d117b53              # double 9.2280840000000008
	.quad	0x401c4e047d3d4281              # double 7.0761890000000003
	.quad	0x402373b98c7e2824              # double 9.7260249999999999
	.quad	0x401935f56a7ac81d              # double 6.3026939999999998
	.quad	0x3fdaac9afe1da7b1              # double 0.41678500000000002
	.quad	0x40225afd113836a8              # double 9.1777119999999996
	.quad	0x3ff62528ae74f2f1              # double 1.384072
	.quad	0x40205aefb2aae297              # double 8.1776099999999996
	.quad	0x4015575ab7dc7ac0              # double 5.3353070000000002
	.quad	0x402034a83b1d0c80              # double 8.1028459999999995
	.quad	0x40060fbeb9e492bc              # double 2.7576879999999999
	.quad	0x4002d99dcb5781c7              # double 2.356258
	.quad	0x4020bbfbdf090f73              # double 8.3671559999999996
	.quad	0x4021c4228997c3d7              # double 8.8830760000000009
	.quad	0x40237ccd0fe8ab50              # double 9.7437520000000006
	.quad	0x3fff5ecf63800219              # double 1.960647
	.quad	0x401b5f9f44d44567              # double 6.8433809999999999
	.quad	0x40153460ed80a17b              # double 5.3011509999999999
	.quad	0x4021d0e496ededaf              # double 8.9079940000000004
	.quad	0x3fe6346fdeb52c9d              # double 0.69390099999999999
	.quad	0x400cd2ac753e707e              # double 3.602868
	.quad	0x401ed4ead0c3d252              # double 7.7079269999999998
	.quad	0x400584c5974e65bf              # double 2.6898300000000002
	.quad	0x3fe4ad05f2884838              # double 0.64612099999999995
	.quad	0x400db2f2b66b6178              # double 3.712377
	.quad	0x4014ce62131a8ef7              # double 5.2015459999999996
	.quad	0x3ff8b2a7bd48cb4b              # double 1.543617
	.quad	0x400a671a3b14a904              # double 3.3003429999999998
	.quad	0x3ff67d0f1f57b41c              # double 1.405532
	.quad	0x3fd61205bc01a36e              # double 0.34484999999999999
	.quad	0x40141927913e8145              # double 5.0245649999999999
	.quad	0x4003f543aeab7996              # double 2.494758
	.quad	0x4019c7403dddb121              # double 6.4445810000000003
	.quad	0x40185272862f598a              # double 6.0805150000000001
	.quad	0x4005a6aec0724b77              # double 2.706388
	.quad	0x401d7848beb5b2d5              # double 7.3674650000000002
	.quad	0x4021d2f2d7f950b9              # double 8.9120089999999994
	.quad	0x400e36d5cfaacd9f              # double 3.7767750000000002
	.quad	0x40197fc3b4f61672              # double 6.3747699999999998
	.quad	0x401217f7be121ee6              # double 4.5234059999999996
	.quad	0x40209211cb039ef1              # double 8.2852920000000001
	.quad	0x4016cca686e7e62e              # double 5.6998540000000002
	.quad	0x401121105e1c1509              # double 4.2822889999999996
	.quad	0x4001c896dd26b724              # double 2.222944
	.quad	0x4022a3f65dbfceb8              # double 9.3202390000000008
	.quad	0x400fb81adea89763              # double 3.9648949999999998
	.quad	0x40141b178b370047              # double 5.0264569999999997
	.quad	0x40171a0e8427418d              # double 5.7754459999999996
	.quad	0x40229ef47b677f6b              # double 9.3104589999999998
	.quad	0x3ff2d21bc126a65d              # double 1.176296
	.quad	0x3ff5a3b688bda943              # double 1.3524689999999999
	.quad	0x401bb033e78e1933              # double 6.9220730000000001
	.quad	0x400cdc914b167ec8              # double 3.6076990000000002
	.quad	0x401d5940fecdd0d9              # double 7.3371620000000002
	.quad	0x401928f53c579f23              # double 6.2899979999999998
	.quad	0x40116cab3edd8b61              # double 4.356122
	.quad	0x4017eea35935fc3b              # double 5.9830449999999997
	.quad	0x4013784be40420f7              # double 4.8674770000000001
	.quad	0x3fcebbdbe3c10518              # double 0.24010799999999999
	.quad	0x40222e7f90d9d777              # double 9.0908169999999995
	.quad	0x40220f2d5e071c54              # double 9.029643
	.quad	0x400992e1693c03bc              # double 3.1967189999999999
	.quad	0x3fff73edd8b60f1b              # double 1.965803
	.quad	0x40202064883fd502              # double 8.0632669999999997
	.quad	0x400c59b13165d399              # double 3.5437949999999998
	.quad	0x3fd2991ff7164c73              # double 0.29059600000000002
	.quad	0x3ff89e7fb267c6b9              # double 1.5386960000000001
	.quad	0x400a596638433d6c              # double 3.2936519999999998
	.quad	0x3ff9a37585be1a82              # double 1.6024069999999999
	.quad	0x401ec5f84cad57bc              # double 7.6933299999999996
	.quad	0x3fe706b37867f0aa              # double 0.71956799999999999
	.quad	0x400de8feac42e98a              # double 3.7387670000000002
	.quad	0x3ff88a4c1ebc83a9              # double 1.5337639999999999
	.quad	0x401578a936c58eeb              # double 5.3678330000000001
	.quad	0x4003613122b7baed              # double 2.4224570000000001
	.quad	0x4006e9185cee17a0              # double 2.8638159999999999
	.quad	0x3ffd2c8d5c74751d              # double 1.823377
	.quad	0x40233ea35935fc3b              # double 9.6223399999999994
	.quad	0x4015773c0c1fc8f3              # double 5.3664399999999999
	.quad	0x401fde6ea8544780              # double 7.9672190000000001
	.quad	0x3fd972ead9274e23              # double 0.39763900000000002
	.quad	0x401384185058dde8              # double 4.8789990000000003
	.quad	0x401c4ffb04ee7c4a              # double 7.078106
	.quad	0x4023157625204af9              # double 9.5419169999999997
	.quad	0x40211f6f2a5a469d              # double 8.5613949999999992
	.quad	0x401ea66cf41f212d              # double 7.6625249999999995
	.quad	0x401cedc7ef177a70              # double 7.232208
	.quad	0x400fd0e453d20f2c              # double 3.976998
	.quad	0x4014e74ddf86e3b4              # double 5.2258829999999996
	.quad	0x400074aec8d5c747              # double 2.0569739999999999
	.quad	0x3ff81bad3a604e1e              # double 1.5067569999999999
	.quad	0x401a2dc5d6388659              # double 6.5446999999999997
	.quad	0x4018e07789a45910              # double 6.2192059999999998
	.quad	0x401ad25aee631f8a              # double 6.705425
	.quad	0x401d176188b1140a              # double 7.2728330000000003
	.quad	0x40223ef47b677f6b              # double 9.1229589999999998
	.quad	0x4015940af1cb89d7              # double 5.3945730000000003
	.quad	0x4006822467be553b              # double 2.8135460000000001
	.quad	0x3fd4f449129888f8              # double 0.32740999999999998
	.quad	0x3ffe2817763e4abe              # double 1.8847879999999999
	.quad	0x402364f2ae07e5a8              # double 9.6971640000000007
	.quad	0x4022a839ef0f16f4              # double 9.3285669999999996
	.quad	0x402070e27e0ef998              # double 8.220478
	.quad	0x4007d62413db7f17              # double 2.9795609999999999
	.quad	0x401c684f8f8a4c1f              # double 7.1018660000000002
	.quad	0x400c9ddb9841aac5              # double 3.5770789999999999
	.quad	0x3ffded5ae1cde5d2              # double 1.8704480000000001
	.quad	0x4021b29c560c7c0f              # double 8.8488489999999995
	.quad	0x3fe5cf0520d130e0              # double 0.68152100000000004
	.quad	0x3fdd888b545c78a7              # double 0.46145900000000001
	.quad	0x40218f43201040c0              # double 8.7798090000000002
	.quad	0x400aafbb9496249a              # double 3.335807
	.quad	0x3ff241f212d77319              # double 1.1411
	.quad	0x401942d1aeb3dd12              # double 6.3152530000000002
	.quad	0x3ff9b0f16f4384ba              # double 1.605699
	.quad	0x4012255043e5321e              # double 4.5364389999999997
	.quad	0x4020022b9d3cbc49              # double 8.0042390000000001
	.quad	0x40204fba6698bb4d              # double 8.1557189999999995
	.quad	0x4008c02107b78466              # double 3.0938129999999999
	.quad	0x4007383dff3f0fe0              # double 2.9024619999999999
	.quad	0x4001cf6837f7be12              # double 2.2262729999999999
	.quad	0x4018ae66cb10342b              # double 6.1703140000000003
	.quad	0x400b067f0aa21a72              # double 3.3781720000000002
	.quad	0x4007162174c4cdfb              # double 2.8858060000000001
	.quad	0x40230de225fa658c              # double 9.5271159999999994
	.quad	0x3ffe1a8ac5c13fd1              # double 1.88148
	.quad	0x4014ce9680e06530              # double 5.201746
	.quad	0x3ffaae8c0485a0be              # double 1.6676139999999999
	.quad	0x3ff9be56473471f8              # double 1.6089690000000001
	.quad	0x401db0f238972043              # double 7.4227990000000004
	.quad	0x3fec1ab8e8ea39c5              # double 0.87826199999999999
	.quad	0x400a6de3b8a19c9d              # double 3.3036569999999998
	.quad	0x4023b45ef62f9ca6              # double 9.8522870000000005
	.quad	0x40219b86b15f88fd              # double 8.8037620000000008
	.quad	0x3ffafc59b8023a6d              # double 1.686609
	.quad	0x40125d2a1f8e3ac1              # double 4.5909810000000002
	.quad	0x400999ce075f6fd2              # double 3.2000999999999999
	.quad	0x3ffcdd76683c297c              # double 1.804068
	.quad	0x4017f0956c0d6f54              # double 5.9849449999999997
	.quad	0x40101b4d056c508b              # double 4.0266609999999998
	.quad	0x3ff715f3519bd406              # double 1.4428589999999999
	.quad	0x40223ddc4007570c              # double 9.1208209999999994
	.quad	0x4010539b024f6599              # double 4.0816460000000001
	.quad	0x4014a634549b62c7              # double 5.1623089999999996
	.quad	0x401b9a3f8982cb21              # double 6.900633
	.quad	0x4020ab4d26fa3fcd              # double 8.3345730000000007
	.quad	0x40083177a7008a69              # double 3.0241539999999998
	.quad	0x40234e718a86d71f              # double 9.6532099999999996
	.quad	0x3fe7d041cc532a49              # double 0.74417199999999994
	.quad	0x3ff03a2be0589acc              # double 1.014202
	.quad	0x401768372e6a7696              # double 5.8517729999999997
	.quad	0x3ff1e70f3882278d              # double 1.118911
	.quad	0x400320ff540895d1              # double 2.3911120000000001
	.quad	0x40186620ab713272              # double 6.0997339999999998
	.quad	0x401e6af2d7f950b9              # double 7.6044419999999997
	.quad	0x4017b9bc77143394              # double 5.9313830000000003
	.quad	0x4018333a8a3f8983              # double 6.0500280000000002
	.quad	0x4014f794ea077037              # double 5.2417790000000002
	.quad	0x4017b817b95a2941              # double 5.9297779999999998
	.quad	0x4022b93b3a68b19a              # double 9.3617799999999995
	.quad	0x40160b1e5c0b9991              # double 5.5108579999999998
	.quad	0x40210084c6a3bde0              # double 8.5010130000000004
	.quad	0x400a1ca643cc07ab              # double 3.263989
	.quad	0x401f0974e65bea0c              # double 7.7592350000000003
	.quad	0x401a5c8d1958969a              # double 6.590382
	.quad	0x400d225e13b18dac              # double 3.6417809999999999
	.quad	0x402125d031055b8a              # double 8.5738540000000008
	.quad	0x4002e4bba12b5e53              # double 2.3616860000000002
	.quad	0x40238cd61b2a27f2              # double 9.7750710000000005
	.quad	0x401e70e30446b69e              # double 7.6102410000000003
	.quad	0x40046aea747d805e              # double 2.5522049999999998
	.quad	0x4017418ac9f2fdb9              # double 5.814006
	.quad	0x401ce1dde37585be              # double 7.2205729999999999
	.quad	0x3fe0c74b838c111b              # double 0.52432800000000002
	.quad	0x402370a65492ff4c              # double 9.7200190000000006
	.quad	0x4010daff2a172abf              # double 4.2138640000000001
	.quad	0x400475054ac29bf1              # double 2.5571389999999998
	.quad	0x400a294a2b9d3cbc              # double 3.2701609999999999
	.quad	0x3fe99d0e991ff716              # double 0.80042199999999997
	.quad	0x4013eff1950331e4              # double 4.9843200000000003
	.quad	0x400617060bb2bbaa              # double 2.7612420000000002
	.quad	0x3ff72328f9f44d44              # double 1.4460839999999999
	.quad	0x400112849cb252ce              # double 2.134042
	.quad	0x40171e3f78bbd380              # double 5.7795389999999998
	.quad	0x4017c41bb8c32a8d              # double 5.9415120000000003
	.quad	0x3fef993f6c2699c8              # double 0.98745700000000002
	.quad	0x40200e33482be8bc              # double 8.0277349999999998
	.quad	0x400eca3400b88ca4              # double 3.848732
	.quad	0x401aa050bd87b56c              # double 6.6565580000000004
	.quad	0x40231382a12f9011              # double 9.5381060000000008
	.quad	0x3fe737de939eadd6              # double 0.72557000000000005
	.quad	0x4023ed2e72da1230              # double 9.9632450000000006
	.quad	0x3fd25e74299d883c              # double 0.28701500000000002
	.quad	0x401b04c5da6a4441              # double 6.7546609999999996
	.quad	0x401f6515054ac29c              # double 7.8487130000000001
	.quad	0x4023d6f3b213e3e3              # double 9.9198280000000007
	.quad	0x4013dab3aabcd78c              # double 4.9635759999999998
	.quad	0x3fed1461b6d43d04              # double 0.90873800000000004
	.quad	0x401c11b9f98b71b9              # double 7.0173110000000003
	.quad	0x40232752977c88e8              # double 9.5768020000000007
	.quad	0x3fe7bec460ed80a1              # double 0.74203699999999995
	.quad	0x3ffc198f1d3ed528              # double 1.75624
	.quad	0x40201ece13f4a98b              # double 8.0601660000000006
	.quad	0x4012ac4b90214ad3              # double 4.6682569999999997
	.quad	0x3ff29ff4fd6d7e89              # double 1.1640520000000001
	.quad	0x4014dd9c6b053198              # double 5.2164169999999999
	.quad	0x401e5dfa43fe5c92              # double 7.5917750000000002
	.quad	0x3ff6e31d712a0ec7              # double 1.4304479999999999
	.quad	0x4020df8e7ddca4b1              # double 8.4366339999999997
	.quad	0x3fec5095af294dd7              # double 0.88483699999999998
	.quad	0x3feab8348f53c57a              # double 0.83498600000000001
	.quad	0x401a79cae21101b0              # double 6.618938
	.quad	0x400a4eef1bac2df1              # double 3.2885420000000001
	.quad	0x3ff2a63305100a39              # double 1.1655759999999999
	.quad	0x4006e5cdd50a88f0              # double 2.862209
	.quad	0x400cffb8b26394fb              # double 3.6248640000000001
	.quad	0x400d8260b2c83ec9              # double 3.6886610000000002
	.quad	0x400ad6ec5b078d93              # double 3.354943
	.quad	0x3ff6ae44b6e935b9              # double 1.417546
	.quad	0x402388370cdc8755              # double 9.766045
	.quad	0x40237d1611ba3ca7              # double 9.7443089999999994
	.quad	0x40120589acbc8c0d              # double 4.5054080000000001
	.quad	0x4010862d83c6c97e              # double 4.1310330000000004
	.quad	0x3fb89f623076c051              # double 0.096182000000000004
	.quad	0x401cd0e8c8abd5dc              # double 7.2040129999999998
	.quad	0x4010305e1c15097d              # double 4.0472340000000004
	.quad	0x3fbefe60c38f3669              # double 0.121069
	.quad	0x3ffcf775b8130165              # double 1.8104150000000001
	.quad	0x3fee682517e77d52              # double 0.95021299999999997
	.quad	0x401542d2fe3f35a0              # double 5.315258
	.quad	0x3ffa2daa92e62132              # double 1.6361490000000001
	.quad	0x402323e89a88ace2              # double 9.5701339999999995
	.quad	0x401b1233df2a9d62              # double 6.7677759999999996
	.quad	0x401915c853c14834              # double 6.2712719999999997
	.quad	0x4016be03f705857b              # double 5.685562
	.quad	0x401f93a81dc0db27              # double 7.8941959999999999
	.quad	0x4022a28bf3bea91e              # double 9.3174740000000007
	.quad	0x3ffc4ed916872b02              # double 1.76925
	.quad	0x4013292d55a3a084              # double 4.7902120000000004
	.quad	0x40178e38a7e73a36              # double 5.8888879999999997
	.quad	0x400bf77318fc5048              # double 3.495825
	.quad	0x3ff727d77fae3609              # double 1.447227
	.quad	0x3fbab55ef1fddebe              # double 0.10433000000000001
	.quad	0x40229f73e24febd1              # double 9.3114310000000007
	.quad	0x40152bf6e3f78bbd              # double 5.2929339999999998
	.quad	0x401be185058dde7a              # double 6.9702339999999996
	.quad	0x3ff81e8f6cefed63              # double 1.5074609999999999
	.quad	0x401a34be40420f6f              # double 6.551507
	.quad	0x40122b688bda9436              # double 4.5423910000000003
	.quad	0x4018a8dcdb37c99b              # double 6.1649050000000001
	.quad	0x4013517dae81882b              # double 4.8295810000000001
	.quad	0x4020d72dc2b0ea18              # double 8.4202709999999996
	.quad	0x4021ed3825e13b19              # double 8.9633190000000003
	.quad	0x400e1b4bb5e0f7fd              # double 3.763328
	.quad	0x4023d5bc23315d70              # double 9.9174509999999998
	.quad	0x4000a3b927d45a60              # double 2.0799430000000001
	.quad	0x4020f58f4f93bc0a              # double 8.479609
	.quad	0x402313e425aee632              # double 9.5388500000000001
	.quad	0x400139f559b3d07d              # double 2.1533000000000002
	.quad	0x401eb1c75818c5ca              # double 7.6736120000000003
	.quad	0x3ffa00b673c4f3ba              # double 1.6251739999999999
	.quad	0x4007b7a355043e53              # double 2.9646669999999999
	.quad	0x3ff915e17e34b945              # double 1.567842
	.quad	0x3ffb534ce3de614a              # double 1.707837
	.quad	0x402214b3a2595bbc              # double 9.0404330000000001
	.quad	0x3ff541eabbcb1cc9              # double 1.3285929999999999
	.quad	0x3ffbfc06e19b90eb              # double 1.7490300000000001
	.quad	0x3ffccc857f3061c8              # double 1.7999320000000001
	.quad	0x4012468c692f6e83              # double 4.5688950000000004
	.quad	0x3fe0eed45e9185cf              # double 0.52915400000000001
	.quad	0x400ec158750c1b97              # double 3.8444069999999999
	.quad	0x4010a0eb67c286f9              # double 4.1571480000000003
	.quad	0x40211daea3161a1e              # double 8.5579730000000005
	.quad	0x4015b31337eb28d8              # double 5.4248779999999996
	.quad	0x4010dc254a3c6434              # double 4.2149859999999997
	.quad	0x4020b94855da2728              # double 8.3618799999999993
	.quad	0x401b8ad03d9a9542              # double 6.8855599999999999
	.quad	0x401db52bd3c36113              # double 7.4269249999999998
	.quad	0x3fd457d1782d3847              # double 0.31785999999999998
	.quad	0x3fef26fa3fcc9eaa              # double 0.97350800000000004
	.quad	0x402353d4067cf1c3              # double 9.6637269999999997
	.quad	0x401b73422467be55              # double 6.8625569999999998
	.quad	0x4000f31a8ef77f28              # double 2.118703
	.quad	0x4006b38a3b57c4e3              # double 2.837666
	.quad	0x3ffe8d3e0bd44999              # double 1.909483
	.quad	0x401910e12e83a10a              # double 6.2664840000000002
	.quad	0x40050b7ed41b75a7              # double 2.6306129999999999
	.quad	0x40043ebaf102363b              # double 2.5306299999999999
	.quad	0x3fdabe5d9e40c847              # double 0.41786899999999999
	.quad	0x3ff238f57f737da6              # double 1.138906
	.quad	0x400229930be0ded3              # double 2.2703000000000002
	.quad	0x400972bc2fc69729              # double 3.1810230000000002
	.quad	0x40172f062d40aaeb              # double 5.795922
	.quad	0x4015baa6d2674081              # double 5.432277
	.quad	0x400073ef6b5d462c              # double 2.0566089999999999
	.quad	0x400c4f8f8a4c1ebd              # double 3.5388480000000002
	.quad	0x400e29014b599aa6              # double 3.770022
	.quad	0x401ae9b6b2af1455              # double 6.7282359999999999
	.quad	0x40209d12231832fd              # double 8.3067790000000006
	.quad	0x401600079a2834d2              # double 5.5000289999999996
	.quad	0x4022e5ed8d36b4c8              # double 9.449078
	.quad	0x3ff40ad256798959              # double 1.252642
	.quad	0x400cba27ae9ab29e              # double 3.5908959999999999
	.quad	0x4022c99008205ff2              # double 9.3936770000000003
	.quad	0x40157de4c51116a9              # double 5.3729430000000002
	.quad	0x3fe0e1672324c836              # double 0.52751499999999996
	.quad	0x40224572367e414e              # double 9.1356369999999991
	.quad	0x3ffb9ffa3b9ae0c1              # double 1.7265569999999999
	.quad	0x4020d4b407032980              # double 8.4154359999999997
	.quad	0x402392ee2003ab86              # double 9.7869729999999997
	.quad	0x3ffba685db76b3bc              # double 1.7281550000000001
	.quad	0x3ffed5fcc1871e6d              # double 1.927243
	.quad	0x3ff5e0f5e41d4b6a              # double 1.3674219999999999
	.quad	0x401cab0c026cc1ca              # double 7.1670379999999998
	.quad	0x3ff394a6eb91b3f2              # double 1.223792
	.quad	0x3fe223cea6c1a049              # double 0.56687100000000001
	.quad	0x3ff61c011d3671ac              # double 1.381837
	.quad	0x3fc2834d26fa3fcd              # double 0.14463200000000001
	.quad	0x3fdc58d5842b734b              # double 0.44292199999999998
	.quad	0x3fd95aea3161a1dc              # double 0.39617400000000003
	.quad	0x4001b2c0e7bc3c5c              # double 2.2122820000000001
	.quad	0x40040b71b8aa0019              # double 2.5055879999999999
	.quad	0x4000d29cbab649d4              # double 2.1028380000000002
	.quad	0x4020e670e2c12ad8              # double 8.4500799999999998
	.quad	0x401caf9ca5bd944b              # double 7.1714960000000003
	.quad	0x40209efe718a86d7              # double 8.3105349999999998
	.quad	0x401847a80cf9e386              # double 6.0699769999999997
	.quad	0x4014743201040bfe              # double 5.1134719999999998
	.quad	0x401a578d92fb19e7              # double 6.5855009999999998
	.quad	0x4011053868fd199c              # double 4.2550980000000003
	.quad	0x4022164c0df58c09              # double 9.0435490000000005
	.quad	0x3ff2d9b2c40d0aaa              # double 1.1781489999999999
	.quad	0x402001c58255b036              # double 8.0034600000000005
	.quad	0x401aac8a7a41e57e              # double 6.6684970000000003
	.quad	0x401a327a20578e5c              # double 6.5492939999999997
	.quad	0x4018b5818c5c9a35              # double 6.1772520000000002
	.quad	0x4017aa7264a16a48              # double 5.9164519999999996
	.quad	0x40043ae2da554b8c              # double 2.528753
	.quad	0x4005694e5d5b24ea              # double 2.6764190000000001
	.quad	0x40054663c74fb54a              # double 2.65937
	.quad	0x40186e8d5410f94d              # double 6.1079610000000004
	.quad	0x3ffb63b9ae0c1765              # double 1.7118469999999999
	.quad	0x40211b83ad9f0a1c              # double 8.5537390000000002
	.quad	0x401cc46cb966be7b              # double 7.191821
	.quad	0x4018637329c347e9              # double 6.0971190000000002
	.quad	0x3fe4b5b2d4d4024b              # double 0.64717999999999998
	.quad	0x4019a14a4d2b2bfe              # double 6.4075100000000003
	.quad	0x4012077ea1c68ec5              # double 4.5073189999999999
	.quad	0x401af38bcdfefbf4              # double 6.737838
	.quad	0x401e81f57b41bfbe              # double 7.6269130000000001
	.quad	0x400b6c77dd872f34              # double 3.4279630000000001
	.quad	0x3fbc55eaee2003ac              # double 0.11068600000000001
	.quad	0x40200f04bc27631b              # double 8.0293329999999994
	.quad	0x40134a7ef9db22d1              # double 4.8227500000000001
	.quad	0x3fb8488c60cbf2b2              # double 0.094856999999999996
	.quad	0x3ff3723bbc6eb0b8              # double 1.2153890000000001
	.quad	0x401555a9a8049668              # double 5.3336550000000003
	.quad	0x40224b8fbca1059f              # double 9.1475810000000006
	.quad	0x400e5666a98244e9              # double 3.7921879999999999
	.quad	0x4003bc4007570c56              # double 2.4669189999999999
	.quad	0x401c19767903211d              # double 7.0248660000000003
	.quad	0x4006d5675579af19              # double 2.8542010000000002
	.quad	0x4016656f75d9a0f1              # double 5.5990580000000003
	.quad	0x40234ea5d6bebe16              # double 9.6536089999999994
	.quad	0x4023a3161a1db878              # double 9.8185280000000005
	.quad	0x3ffdfd4f15e7c8d2              # double 1.8743430000000001
	.quad	0x4015031098d477bc              # double 5.252993
	.quad	0x4013c4bf0995aaf8              # double 4.9421350000000004
	.quad	0x402073b42cc2d6aa              # double 8.2259840000000004
	.quad	0x3ffddc5931ca7d67              # double 1.866296
	.quad	0x3ff1656cd6c2efd4              # double 1.087262
	.quad	0x40176ac1d29dc726              # double 5.8542550000000002
	.quad	0x4017e0d9d7774aba              # double 5.9695809999999998
	.quad	0x3ff752839042d8c3              # double 1.4576450000000001
	.quad	0x40237248301a79ff              # double 9.7232070000000003
	.quad	0x401ebce2089e3433              # double 7.6844559999999999
	.quad	0x402098eda22f6a51              # double 8.2986880000000003
	.quad	0x401e601083dbc233              # double 7.5938129999999999
	.quad	0x4011bad256798959              # double 4.4324430000000001
	.quad	0x401d74f8b588e369              # double 7.3642300000000001
	.quad	0x3ffcf8da3c21187e              # double 1.8107549999999999
	.quad	0x4021f1d96e9bbf0e              # double 8.9723620000000004
	.quad	0x3fc1f28848387df6              # double 0.14021400000000001
	.quad	0x4023086317268d33              # double 9.5163810000000008
	.quad	0x4017a711d798d8a9              # double 5.9131539999999996
	.quad	0x4017d32f01754b06              # double 5.9562340000000003
	.quad	0x4011086ca89fc6da              # double 4.2582269999999998
	.quad	0x40148ae03b3e9a70              # double 5.1356210000000004
	.quad	0x3fd2256ffc115df6              # double 0.28353499999999998
	.quad	0x4017ade7a743a648              # double 5.919829
	.quad	0x3fe3e19fc2a8869c              # double 0.62129199999999996
	.quad	0x40012f648c7192ea              # double 2.1481409999999999
	.quad	0x3fb0c35ce1826677              # double 0.065480999999999998
	.quad	0x401d15132f87ad08              # double 7.270581
	.quad	0x401da7924af0bf1a              # double 7.4136439999999997
	.quad	0x40211d7082491afc              # double 8.5574989999999999
	.quad	0x40222c61d8622c45              # double 9.086684
	.quad	0x4013c0620ab71327              # double 4.9378739999999999
	.quad	0x401ef0092ccf6be3              # double 7.7344099999999995
	.quad	0x40162cd1c7de5083              # double 5.5437690000000002
	.quad	0x401cc634117f8445              # double 7.1935580000000003
	.quad	0x3ff41e9f2778140e              # double 1.257476
	.quad	0x400c905d0fa58f71              # double 3.5704899999999999
	.quad	0x3fea134acaff6d33              # double 0.814855
	.quad	0x3ff4effd1dcd7061              # double 1.3085910000000001
	.quad	0x3fd079420b3d4ae4              # double 0.25740099999999999
	.quad	0x4006c898f605ab3b              # double 2.8479480000000001
	.quad	0x400c587379746024              # double 3.5431889999999999
	.quad	0x3ffcf202107b7846              # double 1.8090839999999999
	.quad	0x4006749c6f36ef80              # double 2.8069389999999999
	.quad	0x4020d93fd0d0678c              # double 8.4243149999999999
	.quad	0x402371526d8b1dd6              # double 9.7213320000000003
	.quad	0x40231fe02645e4e7              # double 9.5622570000000006
	.quad	0x3ff2fd76ee73e682              # double 1.1868810000000001
	.quad	0x3ffd00d90e23af32              # double 1.8127070000000001
	.quad	0x401700e1f7d73c92              # double 5.7508619999999997
	.quad	0x402085903a7546d4              # double 8.260866
	.quad	0x40194c03361565c3              # double 6.3242310000000002
	.quad	0x40144d15ad106ee3              # double 5.075278
	.quad	0x3fdfffcdab191dde              # double 0.49998799999999999
	.quad	0x40129c158fb43d8a              # double 4.6524260000000002
	.quad	0x4022538e4b87bdcf              # double 9.163195
	.quad	0x4010ca62ed352221              # double 4.1976430000000002
	.quad	0x3fca5accd530489d              # double 0.205896
	.quad	0x401dae50c5eb313c              # double 7.4202300000000001
	.quad	0x4022707ce95faa8b              # double 9.2197030000000009
	.quad	0x3ff1edcd2d44dca9              # double 1.120557
	.quad	0x401930917d6b65aa              # double 6.2974300000000003
	.quad	0x3ff3e9cfdd228566              # double 1.244583
	.quad	0x40025ef954eb13e0              # double 2.2963740000000001
	.quad	0x400034ca925fe975              # double 2.0257770000000002
	.quad	0x40116e14bdfd2631              # double 4.3575010000000001
	.quad	0x3fe329888f861a61              # double 0.59882000000000002
	.quad	0x40187872b020c49c              # double 6.1176250000000003
	.quad	0x3fedba94bbe4473d              # double 0.92902600000000002
	.quad	0x4021d1a500d5e8d5              # double 8.9094619999999995
	.quad	0x401c25baf533f423              # double 7.0368459999999997
	.quad	0x4011ae6256366d7a              # double 4.4202969999999997
	.quad	0x40022f51ac9afe1e              # double 2.2731050000000002
	.quad	0x3fc8fadf2ecf2064              # double 0.195156
	.quad	0x401c6e2da554b8bf              # double 7.107596
	.quad	0x40013933e35c5b4b              # double 2.1529310000000002
	.quad	0x40163e0221426fe7              # double 5.5605549999999999
	.quad	0x3fe77724fa8b4bf9              # double 0.733294
	.quad	0x400c6d2fe3f359ff              # double 3.5533139999999999
	.quad	0x4020cc52a411c2a0              # double 8.3990679999999998
	.quad	0x4020d3ea704bc276              # double 8.4138979999999997
	.quad	0x401e7e1b8ed1bf7b              # double 7.6231520000000001
	.quad	0x4015eda2b5a20ddc              # double 5.4820659999999997
	.quad	0x401c805d0fa58f71              # double 7.1253549999999999
	.quad	0x402371dc2f405f6c              # double 9.7223830000000006
	.quad	0x4010f2007dd44135              # double 4.2363299999999997
	.quad	0x3ff7bfe3b03e20cd              # double 1.484348
	.quad	0x402093e07a28bb0a              # double 8.2888219999999997
	.quad	0x401dc2617c1bda51              # double 7.4398249999999999
	.quad	0x400044662bae03b4              # double 2.033398
	.quad	0x4010e325918a009f              # double 4.2218229999999997
	.quad	0x4015bbc5de9c022a              # double 5.4333720000000003
	.quad	0x401dd3a42f1ed17c              # double 7.4566809999999997
	.quad	0x4013f16aceaaf35e              # double 4.9857589999999998
	.quad	0x4011ab7bf1e8e608              # double 4.417465
	.quad	0x3fd7198f1d3ed528              # double 0.36093500000000001
	.quad	0x3fea38023a6ce358              # double 0.81933699999999998
	.quad	0x400b39873ffac1d3              # double 3.4030900000000002
	.quad	0x3fda241c3efae792              # double 0.40845399999999998
	.quad	0x401884a9478c868c              # double 6.1295520000000003
	.quad	0x40148bed740c4157              # double 5.1366480000000001
	.quad	0x4010c8a159817b96              # double 4.1959280000000003
	.quad	0x4015bd98bf7f0670              # double 5.4351529999999997
	.quad	0x40192887ebf22c02              # double 6.2895810000000001
	.quad	0x400baba301216830              # double 3.4588070000000002
	.quad	0x401eb6073de1e2df              # double 7.6777620000000004
	.quad	0x400171c64ba94bbe              # double 2.1805539999999999
	.quad	0x400922cecc814d72              # double 3.1419959999999998
	.quad	0x402019eeed8904f7              # double 8.0506510000000002
	.quad	0x40171afa2f05a709              # double 5.7763450000000001
	.quad	0x3ff5ce7cd0353719              # double 1.3629119999999999
	.quad	0x3ff3c623d0bfa094              # double 1.2358739999999999
	.quad	0x3f9324c8366516db              # double 0.018695
	.quad	0x4000cb37867f0aa2              # double 2.099227
	.quad	0x401b0371da37ef5b              # double 6.7533640000000004
	.quad	0x4005ca38b8ae31d7              # double 2.723741
	.quad	0x4004ebd4cfd08d4c              # double 2.6151520000000001
	.quad	0x401753ed0f627393              # double 5.8319590000000003
	.quad	0x401006dacabc5155              # double 4.0066940000000004
	.quad	0x400d0a18372e6a77              # double 3.6299290000000002
	.quad	0x400ce7c49fd7a13c              # double 3.6131679999999999
	.quad	0x4018ea743a647fdc              # double 6.2289589999999997
	.quad	0x3ffb6806af46aa08              # double 1.7128969999999999
	.quad	0x40164254a3c64346              # double 5.5647760000000002
	.quad	0x3ff9d2a737110e45              # double 1.6139289999999999
	.quad	0x401fc2328f9f44d4              # double 7.9396459999999998
	.quad	0x40184739f340d4dc              # double 6.0695569999999996
	.quad	0x400a47fb267c6b8b              # double 3.2851469999999998
	.quad	0x401c86efc371da38              # double 7.1317740000000001
	.quad	0x3ff9793bc0a06ea0              # double 1.592098
	.quad	0x401158b75ea67e84              # double 4.3366369999999996
	.quad	0x3ff9e03e63e8dda5              # double 1.6172470000000001
	.quad	0x401ea1d53cddd6e0              # double 7.6580399999999997
	.quad	0x4017fe846a5d6bec              # double 5.9985520000000001
	.quad	0x400e250efdc9c4db              # double 3.7680950000000002
	.quad	0x4020d311a543f1c7              # double 8.4122439999999994
	.quad	0x3ff027b4e54f7a92              # double 1.0096940000000001
	.quad	0x4003177ea1c68ec5              # double 2.3864719999999999
	.quad	0x4021799e731d2e0e              # double 8.7375369999999997
	.quad	0x40234cf312b1b36c              # double 9.6502920000000003
	.quad	0x40108fd3f5b5fa22              # double 4.1404569999999996
	.quad	0x401dace4a7b4e54f              # double 7.4188409999999996
	.quad	0x4018beecbfb15b57              # double 6.1864499999999998
	.quad	0x3fff86e3b46fdeb5              # double 1.970432
	.quad	0x401b32a1f8e3ac0c              # double 6.7994459999999997
	.quad	0x4020799bb2788db0              # double 8.2375159999999994
	.quad	0x3feca018a43bb40b              # double 0.89454299999999998
	.quad	0x401c83311a543f1c              # double 7.1281169999999996
	.quad	0x401ab0d77b7c7821              # double 6.6726970000000003
	.quad	0x401d7f7b9e060fe4              # double 7.3744949999999996
	.quad	0x401c5bd9018e7579              # double 7.0896949999999999
	.quad	0x4019eff9b56323bc              # double 6.4843510000000002
	.quad	0x3ff3496aad1d041d              # double 1.2054240000000001
	.quad	0x3fd4b24e9c454584              # double 0.32338299999999998
	.quad	0x3ff4f2314013ec46              # double 1.309129
	.quad	0x4005aaa3ad18d25f              # double 2.7083200000000001
	.quad	0x402252b5807fed20              # double 9.1615409999999997
	.quad	0x3fd1db8fde2ef4e0              # double 0.279026
	.quad	0x40099449129888f8              # double 3.1974049999999998
	.quad	0x402308d6b228dc98              # double 9.5172629999999998
	.quad	0x4021ca077036c9c1              # double 8.8945880000000006
	.quad	0x4001ae82949a5658              # double 2.21021
	.quad	0x3fe2161804d98394              # double 0.56519699999999995
	.quad	0x401cb2845996744b              # double 7.1743329999999998
	.quad	0x4007a0c8472c0e7c              # double 2.9535070000000001
	.quad	0x40216d80a17b0f6b              # double 8.7138720000000003
	.quad	0x3fe123ca7503b81b              # double 0.53561899999999996
	.quad	0x401c7736049ecb32              # double 7.1164170000000002
	.quad	0x402363a8e71476b0              # double 9.6946480000000008
	.quad	0x3ffb219fc2a8869c              # double 1.6957089999999999
	.quad	0x3fb2778140dd3fe2              # double 0.072136000000000006
	.quad	0x4012978183f91e64              # double 4.6479549999999996
	.quad	0x4012ec93ea2d2fe4              # double 4.731033
	.quad	0x401d5befd00713f0              # double 7.3397819999999996
	.quad	0x400bb351159c4977              # double 3.4625569999999999
	.quad	0x3fee727dcbddb984              # double 0.95147599999999998
	.quad	0x3fcaa7a41e57d9dc              # double 0.20824100000000001
	.quad	0x3ff42ad0c3d25248              # double 1.260453
	.quad	0x4020a734b51372a4              # double 8.3265740000000008
	.quad	0x4021551aa821f299              # double 8.6662189999999999
	.quad	0x401d9fba450acc0c              # double 7.4059840000000001
	.quad	0x400c2cc3e3193f6c              # double 3.5218579999999999
	.quad	0x401f89d3458cd20b              # double 7.884595
	.quad	0x3fd1ec80c73abc94              # double 0.28005999999999998
	.quad	0x4016b7cbb3c81909              # double 5.6794880000000001
	.quad	0x3ffb97b634dad320              # double 1.724539
	.quad	0x4023f701754b05b8              # double 9.9824330000000003
	.quad	0x4014f106ab14ec20              # double 5.2353769999999997
	.quad	0x40228dc011d3671b              # double 9.2768560000000004
	.quad	0x40206a1405708249              # double 8.2071839999999998
	.quad	0x401181869835158c              # double 4.3764900000000004
	.quad	0x40222288effe2a3d              # double 9.0674510000000001
	.quad	0x40012c3d25247cb7              # double 2.146601
	.quad	0x40214d9be4cd7492              # double 8.6515799999999992
	.quad	0x4008a173b85e80bf              # double 3.0788340000000001
	.quad	0x4022df891e215337              # double 9.4365930000000002
	.quad	0x3fb97a56de33269e              # double 0.099523
	.quad	0x3fef50d2806af46b              # double 0.97861600000000004
	.quad	0x40212ec6bce8533b              # double 8.5913599999999999
	.quad	0x4002bc8d9f9053a0              # double 2.3420670000000001
	.quad	0x3ffebcd466f5019f              # double 1.9211009999999999
	.quad	0x4000419220ff5409              # double 2.0320170000000002
	.quad	0x401ea0cf1800a7c6              # double 7.6570400000000003
	.quad	0x4020a88e581cf788              # double 8.3292110000000008
	.quad	0x4018e4b51372a38c              # double 6.2233470000000004
	.quad	0x3ff716b97fe8ee6c              # double 1.4430480000000001
	.quad	0x3ff2041fea8112ba              # double 1.126007
	.quad	0x401a5240746455eb              # double 6.5803240000000001
	.quad	0x3ff42d02cd39da16              # double 1.2609889999999999
	.quad	0x400b168c692f6e83              # double 3.3860100000000002
	.quad	0x3fe9c61d8622c450              # double 0.80543399999999998
	.quad	0x401aa90a350d2807              # double 6.6650780000000003
	.quad	0x402178c868b9fdbd              # double 8.7359039999999997
	.quad	0x4017a18f3eccc469              # double 5.9077729999999997
	.quad	0x401193c31df761cc              # double 4.3942990000000002
	.quad	0x40178585be1a8262              # double 5.8803929999999998
	.quad	0x4011b4bc6a7ef9db              # double 4.4264999999999999
	.quad	0x401d74da09cc319c              # double 7.3641129999999997
	.quad	0x4005605e5f30e7ff              # double 2.6720549999999998
	.quad	0x4012d57928e0c9da              # double 4.7084700000000002
	.quad	0x401856bb55ac03ff              # double 6.0846989999999996
	.quad	0x4018a3779e9d0e99              # double 6.1596359999999999
	.quad	0x401f75dbb9cf9a07              # double 7.8650960000000003
	.quad	0x3ff5d30270f38822              # double 1.3640159999999999
	.quad	0x3fd63b7521144cbe              # double 0.34737899999999999
	.quad	0x402157cdcca70d20              # double 8.6714920000000006
	.quad	0x401caab8e8ea39c5              # double 7.1667209999999999
	.quad	0x40011b445ed4a1ad              # double 2.1383139999999998
	.quad	0x401ecf2452c59fb2              # double 7.7022870000000001
	.quad	0x3fdf52502eec7c95              # double 0.48939899999999997
	.quad	0x4001fe7afa722186              # double 2.2492580000000002
	.quad	0x4023f55dc4007571              # double 9.9792310000000004
	.quad	0x40237425f202107b              # double 9.7268519999999991
	.quad	0x400d1fb1e18efbb1              # double 3.640476
	.quad	0x4002efec56d5cfab              # double 2.3671500000000001
	.quad	0x40216b8fbca1059f              # double 8.7100810000000006
	.quad	0x4006ecdb7ae5796c              # double 2.865653
	.quad	0x4020a177ea1c68ec              # double 8.3153679999999994
	.quad	0x40137d16b97fe8ee              # double 4.8721569999999996
	.quad	0x400c54a2339c0ebf              # double 3.5413250000000001
	.quad	0x401b1e50c5eb313c              # double 6.7796050000000001
	.quad	0x4007b82a12f90108              # double 2.9649239999999999
	.quad	0x401bbdb76b3bb83d              # double 6.93527
	.quad	0x401b60121682f944              # double 6.8438189999999999
	.quad	0x401f91376d549731              # double 7.8918129999999999
	.quad	0x400d256cd6c2efd4              # double 3.6432739999999999
	.quad	0x402308a761027957              # double 9.5169019999999999
	.quad	0x3ffd1129888f861a              # double 1.8166899999999999
	.quad	0x400a5f601797cc3a              # double 3.29657
	.quad	0x4007d4f3775b8130              # double 2.97898
	.quad	0x3ff6e525892684cf              # double 1.430944
	.quad	0x3ffd0489d27c3937              # double 1.8136080000000001
	.quad	0x4007e90de093532e              # double 2.9887959999999998
	.quad	0x40231290eed02cd4              # double 9.5362620000000006
	.quad	0x4023b854690de093              # double 9.8600189999999994
	.quad	0x401740ad46f587d7              # double 5.813161
	.quad	0x401796b15f88fc93              # double 5.8971609999999997
	.quad	0x3ff3742aa9f7b5af              # double 1.2158610000000001
	.quad	0x401356f5019f3c71              # double 4.8349190000000002
	.quad	0x4023b56abde3fbbd              # double 9.8543299999999991
	.quad	0x4023b8dc55000c95              # double 9.8610559999999995
	.quad	0x3ffacb7f5a5332ad              # double 1.674682
	.quad	0x4019037d1fe64f55              # double 6.2534070000000002
	.quad	0x3fd2504c48adeebb              # double 0.28615099999999999
	.quad	0x401d82c7b890d5a6              # double 7.3777150000000002
	.quad	0x401b938ef34d6a16              # double 6.8940999999999999
	.quad	0x400f681d3aa369fd              # double 3.925837
	.quad	0x40158ef5232d2bb2              # double 5.3896069999999998
	.quad	0x3feb816ce789e775              # double 0.85954900000000001
	.quad	0x4021885cee17a030              # double 8.7663340000000005
	.quad	0x400adef06b37867f              # double 3.358857
	.quad	0x401fb8bda9435ac9              # double 7.9304110000000003
	.quad	0x402272c36544fe37              # double 9.2241470000000003
	.quad	0x4014d672324c8366              # double 5.2094199999999997
	.quad	0x3fdef63800218def              # double 0.48377799999999999
	.quad	0x401a7c43f5f91601              # double 6.621353
	.quad	0x4023e84c6a3bddfd              # double 9.9537080000000006
	.quad	0x401eae731d2e0e30              # double 7.6703609999999998
	.quad	0x401057f3cf70153c              # double 4.0858910000000002
	.quad	0x400e6307f23cc8de              # double 3.7983549999999999
	.quad	0x40110e8a2ec28b2a              # double 4.2641989999999996
	.quad	0x400eb3a4723aafff              # double 3.8377159999999999
	.quad	0x40169fe154434e33              # double 5.6561329999999996
	.quad	0x3ffdecd9e83e425b              # double 1.870325
	.quad	0x401bf2ab25b317f0              # double 6.9869810000000001
	.quad	0x400cabd987c6327f              # double 3.5839110000000001
	.quad	0x402160d3cff64cf9              # double 8.6891160000000003
	.quad	0x4016a605681ecd4b              # double 5.6621300000000003
	.quad	0x3fe8440f23897204              # double 0.75830799999999998
	.quad	0x40015c148344c37e              # double 2.1699609999999998
	.quad	0x402228198f1d3ed5              # double 9.0783199999999997
	.quad	0x4021eb723ee1bd1f              # double 8.9598560000000003
	.quad	0x3ff7a0ae9680e065              # double 1.476729
	.quad	0x40220ee3f78bbd38              # double 9.029083
	.quad	0x4023bc33f85510d4              # double 9.8675840000000007
	.quad	0x401a1acd184c2720              # double 6.526173
	.quad	0x402360e7ddca4b12              # double 9.6892689999999995
	.quad	0x400ef906cca2db62              # double 3.8715950000000001
	.quad	0x3ff2a4e48626f60e              # double 1.165257
	.quad	0x402323c1eff9f87f              # double 9.5698389999999999
	.quad	0x400d4f0f9d2bf551              # double 3.6636039999999999
	.quad	0x40237a38da3c2118              # double 9.7387149999999991
	.quad	0x401a80eb24a6a876              # double 6.6258970000000001
	.quad	0x400fe0008637bd06              # double 3.9843760000000001
	.quad	0x3fe9d2deca2552a0              # double 0.80699100000000001
	.quad	0x4016245803cd141a              # double 5.5354919999999996
	.quad	0x40204283d35eb745              # double 8.1299119999999991
	.quad	0x40220cd20afa2f06              # double 9.0250400000000006
	.quad	0x4011d2f449129889              # double 4.45601
	.quad	0x400cee8b7e4de3b9              # double 3.6164770000000002
	.quad	0x40046c4ac6cdaf4b              # double 2.5528770000000001
	.quad	0x3fccde4c51116a8c              # double 0.22553400000000001
	.quad	0x40153a28bb0a2caa              # double 5.3067960000000003
	.quad	0x3ff47f3061c79b35              # double 1.2810520000000001
	.quad	0x4020ef5e41d4b6a6              # double 8.4675159999999998
	.quad	0x401cb7110e453d21              # double 7.178776
	.quad	0x3fd777ccc0379314              # double 0.36668699999999999
	.quad	0x401e42b55ef1fddf              # double 7.5651450000000002
	.quad	0x4009773860999dcb              # double 3.1832129999999998
	.quad	0x3fd43760bf5d7881              # double 0.31587999999999999
	.quad	0x4010d959e6256367              # double 4.2122570000000001
	.quad	0x401b655bccaf709b              # double 6.8489829999999996
	.quad	0x40231e327ed84d34              # double 9.5589790000000007
	.quad	0x40128af251c193b4              # double 4.6356900000000003
	.quad	0x4022df42dcf4623d              # double 9.4360569999999999
	.quad	0x402008472c0e7bc4              # double 8.0161680000000004
	.quad	0x401a9bf7ad4b2746              # double 6.6523120000000002
	.quad	0x40040087ca643cc0              # double 2.5002589999999998
	.quad	0x4001e6045baf533f              # double 2.2373129999999999
	.quad	0x400cb27674d16335              # double 3.5871400000000002
	.quad	0x401635aa2e3c536d              # double 5.5524069999999996
	.quad	0x40158ec7863beec4              # double 5.3894330000000004
	.quad	0x400e60639d5e4a38              # double 3.7970649999999999
	.quad	0x401c744998d045fe              # double 7.1135619999999999
	.quad	0x40131011d3671ac1              # double 4.7656929999999997
	.quad	0x4022fbc7d5ed06ff              # double 9.491759
	.quad	0x4014f3892ee84ad8              # double 5.2378280000000004
	.quad	0x401ff9f51697f1fa              # double 7.9940990000000003
	.quad	0x401c348fd9fd36f8              # double 7.0513300000000001
	.quad	0x400c7437c5692b3d              # double 3.5567470000000001
	.quad	0x3fe5836a832b990b              # double 0.672292
	.quad	0x40192fc43b2dd378              # double 6.2966470000000001
	.quad	0x402165870da5daf0              # double 8.6982959999999991
	.quad	0x402345c39bcba301              # double 9.6362579999999997
	.quad	0x401428d5c74751ce              # double 5.0398779999999999
	.quad	0x4019b6b9c304ccee              # double 6.4284429999999997
	.quad	0x401ba7de5082cf53              # double 6.9139340000000002
	.quad	0x3fd8a497fa5d28d0              # double 0.385046
	.quad	0x40236c1e7967caea              # double 9.7111699999999992
	.quad	0x4016edf2239e6aba              # double 5.7323690000000003
	.quad	0x400977f0ed3d859d              # double 3.1835650000000002
	.quad	0x3ff551e646f15619              # double 1.332495
	.quad	0x400a72b7fe08aefb              # double 3.3060149999999999
	.quad	0x4014d1de69ad42c4              # double 5.2049500000000002
	.quad	0x401ba7b890d5a5b9              # double 6.9137899999999997
	.quad	0x40087172ef0ae536              # double 3.0553949999999999
	.quad	0x40191e9ccb7d4174              # double 6.2798949999999998
	.quad	0x3fedadbc664d3bf3              # double 0.927458
	.quad	0x3ff1b12e40852b4e              # double 1.1057570000000001
	.quad	0x401de18fc504816f              # double 7.470275
	.quad	0x401dbe2ef4e0114d              # double 7.4357259999999998
	.quad	0x401cd44b6e935b92              # double 7.207319
	.quad	0x4004a0eae18ac9f3              # double 2.578573
	.quad	0x40200a47a9e2bcf9              # double 8.0200779999999998
	.quad	0x401affed634549b6              # double 6.7499289999999998
	.quad	0x3fdb68900c521dda              # double 0.428257
	.quad	0x401ba04ee7c49fd8              # double 6.9065510000000003
	.quad	0x400652580c308feb              # double 2.7902070000000001
	.quad	0x401f2b0ab2e1693c              # double 7.792033
	.quad	0x4016ed634549b62c              # double 5.7318239999999996
	.quad	0x401c1e27179bfdf8              # double 7.0294460000000001
	.quad	0x4023f74538ef34d7              # double 9.9829500000000006
	.quad	0x401b0e2e2b8c75c5              # double 6.7638480000000003
	.quad	0x3fc5844d013a92a3              # double 0.1681
	.quad	0x3fd4e40852b4d8ba              # double 0.32641799999999999
	.quad	0x40002897635e742a              # double 2.0198200000000002
	.quad	0x3ff194db59578a2b              # double 1.0988420000000001
	.quad	0x400062962cfd8f0c              # double 2.0481379999999998
	.quad	0x400242c77574f723              # double 2.2826070000000001
	.quad	0x40202cc2d6a9c561              # double 8.0874240000000004
	.quad	0x400f5e37585be1a8              # double 3.9210039999999999
	.quad	0x4011f0574b407033              # double 4.4847080000000004
	.quad	0x400fd082491afc05              # double 3.9768110000000001
	.quad	0x401fb80d3cff64d0              # double 7.9297380000000004
	.quad	0x4013e03c07ee0b0b              # double 4.968979
	.quad	0x400ac094e5d5b24f              # double 3.3440340000000002
	.quad	0x40216874a771c971              # double 8.7040150000000001
	.quad	0x4021ae33ce63a5c2              # double 8.8402390000000004
	.quad	0x3fe723e186983516              # double 0.72313000000000005
	.quad	0x401d5def8487b99d              # double 7.3417339999999998
	.quad	0x3ffba13b18dac259              # double 1.726863
	.quad	0x3fb9bd4067cf1c32              # double 0.10054399999999999
	.quad	0x4003cb0ea18372e7              # double 2.4741490000000002
	.quad	0x401108d9b5e95b79              # double 4.2586430000000002
	.quad	0x4015b13122b7baed              # double 5.4230390000000002
	.quad	0x402310d6d3b6cbda              # double 9.5328890000000008
	.quad	0x4021d814f8b588e3              # double 8.9220349999999993
	.quad	0x4016792f2b66b617              # double 5.6183439999999996
	.quad	0x400d2c426351def0              # double 3.646611
	.quad	0x3fe617204295a6c6              # double 0.69032300000000002
	.quad	0x402122d9f0a1be2b              # double 8.5680689999999995
	.quad	0x401434bec679cc75              # double 5.0515090000000002
	.quad	0x4020198b2e9ccb7d              # double 8.0498899999999995
	.quad	0x4013bb75a74c09c4              # double 4.9330660000000002
	.quad	0x401a1d61b2a27f1b              # double 6.5286929999999996
	.quad	0x3fffcf0b6b6e0d24              # double 1.988048
	.quad	0x4021de362a5e785b              # double 8.9340069999999994
	.quad	0x402351de26916441              # double 9.659898
	.quad	0x400bdf82b1f687b1              # double 3.4841359999999999
	.quad	0x3fcef5e41d4b6a62              # double 0.24187900000000001
	.quad	0x3fe2b1dd5d3dc8b8              # double 0.58421199999999995
	.quad	0x40210230121682f9              # double 8.5042729999999995
	.quad	0x4020f5d462c343b7              # double 8.4801359999999999
	.quad	0x400702ff08893b7e              # double 2.8764630000000002
	.quad	0x401b66501e2584f5              # double 6.8499150000000002
	.quad	0x401d6046412cf0fa              # double 7.3440180000000002
	.quad	0x401f407a28bb0a2d              # double 7.8129660000000002
	.quad	0x40018d2999567dbb              # double 2.193927
	.quad	0x4012e02f2f987400              # double 4.7189300000000003
	.quad	0x40157625e99e94ab              # double 5.3653789999999999
	.quad	0x4023ab97fe8ee6b8              # double 9.8351439999999996
	.quad	0x3ffa911dffc5479d              # double 1.6604289999999999
	.quad	0x4021ee0a84be4042              # double 8.9649239999999999
	.quad	0x40183a17f4128bf4              # double 6.0567320000000002
	.quad	0x4020630a4e379b78              # double 8.1934380000000004
	.quad	0x400681a47a9e2bd0              # double 2.8133020000000002
	.quad	0x3fbd1a543f1c7582              # double 0.11368300000000001
	.quad	0x3ff7516ca46e08f2              # double 1.457379
	.quad	0x3fb5634549b62c77              # double 0.083545999999999995
	.quad	0x401bd944241c3efb              # double 6.9621740000000001
	.quad	0x3fe44a686e7e62dc              # double 0.63408299999999995
	.quad	0x401594c76d117b53              # double 5.3952920000000004
	.quad	0x4007331fcd24e161              # double 2.8999630000000001
	.quad	0x400d671e6cd29132              # double 3.675351
	.quad	0x40212564f97edc7f              # double 8.5730360000000001
	.quad	0x4013c199fe43675e              # double 4.9390640000000001
	.quad	0x4002856473471f79              # double 2.3151329999999999
	.quad	0x4021e7e0ce0b912e              # double 8.9528870000000005
	.quad	0x3fc2ca89fc6da448              # double 0.14680599999999999
	.quad	0x401b4b1c432ca57a              # double 6.8233499999999996
	.quad	0x4021df31f46ed246              # double 8.9359280000000005
	.quad	0x400666d71f36262d              # double 2.8002150000000001
	.quad	0x4013ed373affb04f              # double 4.9816560000000001
	.quad	0x4013d973d9ec7000              # double 4.9623559999999998
	.quad	0x400c235610adcd2d              # double 3.5172539999999999
	.quad	0x4020326e5471715c              # double 8.0984979999999993
	.quad	0x400609c3ce2089e3              # double 2.7547679999999999
	.quad	0x40120ae5bc87db2b              # double 4.5106419999999998
	.quad	0x400214784230fcf8              # double 2.259995
	.quad	0x401f230728e92d56              # double 7.7842070000000003
	.quad	0x401c8959e6256367              # double 7.1341320000000001
	.quad	0x3ff75cc426351def              # double 1.460148
	.quad	0x4021ff4eca686e7e              # double 8.9986479999999993
	.quad	0x401718605681ecd5              # double 5.7738050000000003
	.quad	0x4023d0ce0b912dba              # double 9.9078219999999995
	.quad	0x40176b71fbc5de9c              # double 5.854927
	.quad	0x4018df5a964e8b7e              # double 6.2181189999999997
	.quad	0x401498ef34d6a162              # double 5.1493500000000001
	.quad	0x4014bfc3b4f61672              # double 5.1872699999999998
	.quad	0x3fb3da4052d666aa              # double 0.077549000000000006
	.quad	0x40177a62ed352221              # double 5.8695180000000002
	.quad	0x400b603254e6e222              # double 3.4219710000000001
	.quad	0x3fffb8cda6e75ff6              # double 1.982618
	.quad	0x400dbc158fb43d8a              # double 3.7168380000000001
	.quad	0x402212d0c3d25248              # double 9.0367490000000004
	.quad	0x3ff2ea22b3892ee8              # double 1.1821619999999999
	.quad	0x40132b107746887b              # double 4.7920550000000004
	.quad	0x4002c934acaff6d3              # double 2.3482449999999999
	.quad	0x400ce374ff865d7d              # double 3.6110630000000001
	.quad	0x401a78a7a41e57da              # double 6.6178270000000001
	.quad	0x402340cbf2b239a4              # double 9.6265560000000007
	.quad	0x3fe2566cf41f212d              # double 0.57304999999999995
	.quad	0x4004d52eb5f5f0b3              # double 2.6040930000000002
	.quad	0x3fccf19934efcbd5              # double 0.22612299999999999
	.quad	0x3fe9c504816f0069              # double 0.80530000000000002
	.quad	0x3ff636e3f78bbd38              # double 1.388401
	.quad	0x4021f888d6d3b6cc              # double 8.9854190000000002
	.quad	0x4021e85a4f00ef13              # double 8.9538139999999995
	.quad	0x40121b1c864883fd              # double 4.5264759999999997
	.quad	0x4008c5204af92296              # double 3.0962529999999999
	.quad	0x40064fdc1615ebfb              # double 2.7889940000000002
	.quad	0x40210003eea209ab              # double 8.5000300000000006
	.quad	0x4016f4a1f080303c              # double 5.738899
	.quad	0x3ff244178705425f              # double 1.141624
	.quad	0x4010324b76f6d762              # double 4.0491159999999997
	.quad	0x4023a1a8049667b6              # double 9.8157350000000001
	.quad	0x4005a4fa05143bf7              # double 2.7055549999999999
	.quad	0x401caacd5b6805a3              # double 7.1667990000000001
	.quad	0x402143e7296f6513              # double 8.6326230000000006
	.quad	0x4013cd334c5da6a4              # double 4.9503909999999998
	.quad	0x401df1733226c3b9              # double 7.4857909999999998
	.quad	0x4016f46d3f9e7b81              # double 5.7386980000000003
	.quad	0x4020fba322af5771              # double 8.491479
	.quad	0x3ff08060780fdc16              # double 1.031342
	.quad	0x4010bc3dee781840              # double 4.1838300000000004
	.quad	0x400fd207d4e09785              # double 3.977554
	.quad	0x402259de26916441              # double 9.1755230000000001
	.quad	0x4022f4a8198f1d3f              # double 9.4778450000000002
	.quad	0x3ff14d8a979e16d7              # double 1.081431
	.quad	0x4023d9b845564b66              # double 9.9252339999999997
	.quad	0x4022f8a1be2b495a              # double 9.4856090000000002
	.quad	0x400f95c0767d34df              # double 3.948121
	.quad	0x3fe5e21fafc8b008              # double 0.68385300000000004
	.quad	0x40208f50e3476295              # double 8.2799139999999998
	.quad	0x401910b28522ea10              # double 6.2663060000000002
	.quad	0x40000ca03c4b09ea              # double 2.0061650000000002
	.quad	0x400a8777079e59f3              # double 3.3161450000000001
	.quad	0x400513f6c2699c7c              # double 2.6347480000000001
	.quad	0x40132a5f41aef6f9              # double 4.7913790000000001
	.quad	0x40204f8a0902de01              # double 8.1553500000000003
	.quad	0x40222a456f75d9a1              # double 9.0825610000000001
	.quad	0x3fcc799a1fd1569f              # double 0.22246099999999999
	.quad	0x4014b40181e03f70              # double 5.1757869999999997
	.quad	0x3fe62ec6bce8533b              # double 0.69320999999999999
	.quad	0x3ff06e653868fd1a              # double 1.0269520000000001
	.quad	0x3fff050df15a4acf              # double 1.938734
	.quad	0x3fd289656eefa1e4              # double 0.289636
	.quad	0x3fedd9d99029ae4f              # double 0.93284299999999998
	.quad	0x40030b5fe542e558              # double 2.3805540000000001
	.quad	0x40201a314013ec46              # double 8.0511569999999999
	.quad	0x4016f94680171194              # double 5.7434329999999996
	.quad	0x3ff60a808c8259e2              # double 1.377564
	.quad	0x40123a37ef5a964f              # double 4.5568540000000004
	.quad	0x40148980b242070c              # double 5.1342800000000004
	.quad	0x40167933e35c5b4b              # double 5.6183620000000003
	.quad	0x4017ef2170931013              # double 5.9835260000000003
	.quad	0x4023658e86402081              # double 9.6983529999999991
	.quad	0x402047f950b955f8              # double 8.1405740000000009
	.quad	0x401ef2f6a50d6b23              # double 7.7372690000000003
	.quad	0x4017f70de8f6ceff              # double 5.9912640000000001
	.quad	0x400e2cfaeff5c6c1              # double 3.771963
	.quad	0x40201b8c75c4a83b              # double 8.0538059999999998
	.quad	0x401a6553ac4f7ec3              # double 6.5989519999999997
	.quad	0x40234c317acc4ef9              # double 9.6488150000000008
	.quad	0x4017d20ee8d10f52              # double 5.9551350000000003
	.quad	0x4014d66b1e5c0b9a              # double 5.2093930000000004
	.quad	0x400159e6256366d8              # double 2.1688960000000002
	.quad	0x401db374bc6a7efa              # double 7.4252500000000001
	.quad	0x401ec212d77318fc              # double 7.6895249999999997
	.quad	0x400c75e95b78cc9a              # double 3.5575739999999998
	.quad	0x401514f0520d130e              # double 5.270448
	.quad	0x401f19a9da597d4a              # double 7.7750620000000001
	.quad	0x4010047cb70ac3a8              # double 4.0043819999999997
	.quad	0x3fff755043e5321e              # double 1.9661409999999999
	.quad	0x400bde0589acbc8c              # double 3.483409
	.quad	0x3ff7d394317acc4f              # double 1.489155
	.quad	0x40204dcc857f3062              # double 8.1519510000000004
	.quad	0x4018de0d23d4f15e              # double 6.2168469999999996
	.quad	0x40204c48cf7caa76              # double 8.1489930000000008
	.quad	0x3fef8b60f1b25f63              # double 0.98576399999999997
	.quad	0x4009b9cb6848beb6              # double 3.2157200000000001
	.quad	0x3fb30d73860999dd              # double 0.074424000000000004
	.quad	0x3ff5f939a7c17a89              # double 1.373346
	.quad	0x401d115ebfa8f7db              # double 7.2669629999999996
	.quad	0x3fe998548a9bcfd5              # double 0.79984500000000003
	.quad	0x4021092c061847f5              # double 8.5179139999999993
	.quad	0x3fb468123810e886              # double 0.079713000000000006
	.quad	0x4020d0a63305100a              # double 8.4075179999999996
	.quad	0x3fda0b780346dc5d              # double 0.40694999999999998
	.quad	0x401c07b07075b3e1              # double 7.0075089999999998
	.quad	0x401a836c9c0a8d22              # double 6.6283440000000002
	.quad	0x3fe411be6e653869              # double 0.627166
	.quad	0x4002bdcf0307f23d              # double 2.3426800000000001
	.quad	0x3ff4e19c9d5a187a              # double 1.3050809999999999
	.quad	0x40205b068123810f              # double 8.1777840000000008
	.quad	0x3fd785cee17a02fb              # double 0.36754199999999998
	.quad	0x40233c5d851654d6              # double 9.6179009999999998
	.quad	0x40124d12018a43bb              # double 4.5752639999999998
	.quad	0x4013770f3882278d              # double 4.866269
	.quad	0x4016150507a6bd6f              # double 5.5205270000000004
	.quad	0x401c497d49d7ba67              # double 7.0717670000000004
	.quad	0x40047075b3e1437c              # double 2.5549119999999998
	.quad	0x401363df6db940ff              # double 4.8475320000000002
	.quad	0x400f38bb4d48882f              # double 3.902701
	.quad	0x4014f49ba5e353f8              # double 5.2388750000000002
	.quad	0x40229c666ec9e237              # double 9.3054690000000004
	.quad	0x3ff6ea90cd423d92              # double 1.432267
	.quad	0x40159da122fad6cb              # double 5.4039349999999997
	.quad	0x4023c80d3cff64d0              # double 9.8907260000000008
	.quad	0x4003d21ab4b72c52              # double 2.4775900000000002
	.quad	0x40177779207d4e09              # double 5.8666729999999996
	.quad	0x402350f66a550870              # double 9.6581299999999999
	.quad	0x401bf0f8c64fdb0a              # double 6.9853240000000003
	.quad	0x4019c90e66cb1034              # double 6.4463439999999999
	.quad	0x4012b9ba5e353f7d              # double 4.6813750000000001
	.quad	0x3febdafd113836a8              # double 0.87048199999999998
	.quad	0x4020b329c347e8cd              # double 8.3499280000000002
	.quad	0x4016063497b7414a              # double 5.5060599999999997
	.quad	0x3f99fa97e132b55f              # double 0.02537
	.quad	0x400fe27418d6909b              # double 3.985573
	.quad	0x4014da398201cd60              # double 5.2131100000000004
	.quad	0x401974095f2452c6              # double 6.3633170000000003
	.quad	0x401d4014727dcbde              # double 7.3125780000000002
	.size	.L__constant_3000xf64, 24000

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
