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
	.quad	0x41333397eda2d730              # double 1258391.928266
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
	.quad	2500                            # 0x9c4
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	2500                            # 0x9c4
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
	lui	a7, %hi(.L__constant_2500xindex)
	addi	a7, a7, %lo(.L__constant_2500xindex)
	lui	t0, %hi(.L__constant_2500xf64)
	addi	t0, t0, %lo(.L__constant_2500xf64)
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
	.quad	26                              # 0x1a
	.quad	59                              # 0x3b
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	126                             # 0x7e
	.quad	144                             # 0x90
	.quad	170                             # 0xaa
	.quad	197                             # 0xc5
	.quad	216                             # 0xd8
	.quad	244                             # 0xf4
	.quad	270                             # 0x10e
	.quad	294                             # 0x126
	.quad	317                             # 0x13d
	.quad	341                             # 0x155
	.quad	370                             # 0x172
	.quad	391                             # 0x187
	.quad	415                             # 0x19f
	.quad	444                             # 0x1bc
	.quad	477                             # 0x1dd
	.quad	508                             # 0x1fc
	.quad	534                             # 0x216
	.quad	567                             # 0x237
	.quad	595                             # 0x253
	.quad	615                             # 0x267
	.quad	639                             # 0x27f
	.quad	661                             # 0x295
	.quad	681                             # 0x2a9
	.quad	708                             # 0x2c4
	.quad	731                             # 0x2db
	.quad	755                             # 0x2f3
	.quad	774                             # 0x306
	.quad	807                             # 0x327
	.quad	825                             # 0x339
	.quad	857                             # 0x359
	.quad	875                             # 0x36b
	.quad	898                             # 0x382
	.quad	925                             # 0x39d
	.quad	955                             # 0x3bb
	.quad	980                             # 0x3d4
	.quad	1009                            # 0x3f1
	.quad	1035                            # 0x40b
	.quad	1063                            # 0x427
	.quad	1085                            # 0x43d
	.quad	1116                            # 0x45c
	.quad	1144                            # 0x478
	.quad	1160                            # 0x488
	.quad	1191                            # 0x4a7
	.quad	1218                            # 0x4c2
	.quad	1254                            # 0x4e6
	.quad	1280                            # 0x500
	.quad	1304                            # 0x518
	.quad	1325                            # 0x52d
	.quad	1350                            # 0x546
	.quad	1368                            # 0x558
	.quad	1394                            # 0x572
	.quad	1416                            # 0x588
	.quad	1443                            # 0x5a3
	.quad	1465                            # 0x5b9
	.quad	1501                            # 0x5dd
	.quad	1525                            # 0x5f5
	.quad	1554                            # 0x612
	.quad	1575                            # 0x627
	.quad	1604                            # 0x644
	.quad	1634                            # 0x662
	.quad	1653                            # 0x675
	.quad	1675                            # 0x68b
	.quad	1707                            # 0x6ab
	.quad	1730                            # 0x6c2
	.quad	1745                            # 0x6d1
	.quad	1768                            # 0x6e8
	.quad	1793                            # 0x701
	.quad	1813                            # 0x715
	.quad	1838                            # 0x72e
	.quad	1869                            # 0x74d
	.quad	1894                            # 0x766
	.quad	1915                            # 0x77b
	.quad	1939                            # 0x793
	.quad	1961                            # 0x7a9
	.quad	1978                            # 0x7ba
	.quad	1995                            # 0x7cb
	.quad	2020                            # 0x7e4
	.quad	2049                            # 0x801
	.quad	2068                            # 0x814
	.quad	2086                            # 0x826
	.quad	2109                            # 0x83d
	.quad	2133                            # 0x855
	.quad	2162                            # 0x872
	.quad	2185                            # 0x889
	.quad	2213                            # 0x8a5
	.quad	2243                            # 0x8c3
	.quad	2267                            # 0x8db
	.quad	2290                            # 0x8f2
	.quad	2311                            # 0x907
	.quad	2339                            # 0x923
	.quad	2372                            # 0x944
	.quad	2401                            # 0x961
	.quad	2429                            # 0x97d
	.quad	2454                            # 0x996
	.quad	2476                            # 0x9ac
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x3fc75360d0247022              # double 0.18223200000000001
	.quad	0x3ff00ae536501e26              # double 1.0026600000000001
	.quad	0x4020095aaf78feef              # double 8.0182699999999993
	.quad	0x40206b92189bd838              # double 8.2100989999999996
	.quad	0x4004f1d4738a3b58              # double 2.6180810000000001
	.quad	0x40216317268d3283              # double 8.6935359999999999
	.quad	0x401b95cd91eeaa6d              # double 6.8962919999999999
	.quad	0x400b05eaab042529              # double 3.3778890000000001
	.quad	0x3ffd90ca1cef2410              # double 1.8478490000000001
	.quad	0x4021ade76427c7c5              # double 8.8396559999999997
	.quad	0x401eaf3300de4c51              # double 7.6710929999999999
	.quad	0x400a8cf7446f9b99              # double 3.3188309999999999
	.quad	0x4022d72d1aeb3dd1              # double 9.4202659999999998
	.quad	0x40145dbd2fa0d77b              # double 5.0915419999999996
	.quad	0x3ff01cb5781c7150              # double 1.007009
	.quad	0x4019fb777d0f1f58              # double 6.4955730000000003
	.quad	0x3feed1d4738a3b58              # double 0.96311400000000002
	.quad	0x4015d76a2f48c2e7              # double 5.4603659999999996
	.quad	0x401021ee675147f1              # double 4.0331359999999998
	.quad	0x3ff037fbefd00714              # double 1.013668
	.quad	0x401351fea8112ba1              # double 4.8300729999999996
	.quad	0x401af97fa5d28d00              # double 6.7436509999999998
	.quad	0x4020ae358298cc14              # double 8.3402519999999995
	.quad	0x400dd682f944241c              # double 3.7297419999999999
	.quad	0x401a2bb2bba98eda              # double 6.5426739999999999
	.quad	0x3ff0c6df82b1f688              # double 1.0485530000000001
	.quad	0x401b3d3d4280ae10              # double 6.8098039999999997
	.quad	0x4020be7d77fae361              # double 8.3720510000000008
	.quad	0x4015c2c5197a2489              # double 5.4402049999999997
	.quad	0x40106287c200c0f0              # double 4.0962209999999999
	.quad	0x4006234b945308bc              # double 2.7672340000000002
	.quad	0x400263dab5c39bcc              # double 2.2987570000000002
	.quad	0x40139720c8cd63cc              # double 4.8975860000000004
	.quad	0x4018357f737da61e              # double 6.052244
	.quad	0x3feaae924f227d03              # double 0.83381000000000005
	.quad	0x40200c6b05319829              # double 8.0242540000000009
	.quad	0x401cd507a6bd6e8b              # double 7.208037
	.quad	0x40202bde82d7b635              # double 8.0856820000000003
	.quad	0x3fd82e6a76965f52              # double 0.37783299999999997
	.quad	0x401b1764f11b60af              # double 6.7728460000000004
	.quad	0x4001dd00713f077d              # double 2.2329110000000001
	.quad	0x3fd4e3476295208e              # double 0.326372
	.quad	0x402008385c67dfe3              # double 8.0160549999999997
	.quad	0x3fe7260d4562e0a0              # double 0.72339500000000001
	.quad	0x40220a1e81cb46bb              # double 9.0197640000000003
	.quad	0x400d961cbccf28c8              # double 3.6982970000000002
	.quad	0x3fb8cb3a2595bbbf              # double 0.096851000000000007
	.quad	0x4022786db50f40e6              # double 9.2352120000000006
	.quad	0x4022e952d234eb9a              # double 9.4557099999999998
	.quad	0x4011bc61d8622c45              # double 4.433967
	.quad	0x4023b8c3b0c4588a              # double 9.860868
	.quad	0x3ff66ade657b84dc              # double 1.4010910000000001
	.quad	0x4012da98244e93e2              # double 4.7134710000000002
	.quad	0x401a985122318330              # double 6.6487470000000002
	.quad	0x40130fdd22856606              # double 4.7654920000000001
	.quad	0x3ff864e26d4801f7              # double 1.5246299999999999
	.quad	0x4020b4165907d912              # double 8.3517329999999994
	.quad	0x4019c7dbf487fcb9              # double 6.4451749999999999
	.quad	0x401035810624dd2f              # double 4.0522499999999999
	.quad	0x4003f7b17ce52ded              # double 2.4959440000000002
	.quad	0x40030e63a5c1c609              # double 2.3820260000000002
	.quad	0x400025d5b24e9c45              # double 2.0184739999999999
	.quad	0x401094013ec460ee              # double 4.1445360000000004
	.quad	0x4008edca8e2e2b8c              # double 3.1161089999999998
	.quad	0x3ff2437a3db3bfb6              # double 1.1414740000000001
	.quad	0x3ffee63f9a49c2c2              # double 1.9312130000000001
	.quad	0x401e911dbca9691a              # double 7.6417149999999996
	.quad	0x40226891e215336e              # double 9.2042380000000001
	.quad	0x400a9d616f86a099              # double 3.3268460000000002
	.quad	0x4021c5058dde7a74              # double 8.8848079999999995
	.quad	0x4001730be0ded289              # double 2.1811750000000001
	.quad	0x40011127f5e84f09              # double 2.1333769999999999
	.quad	0x401e5d2178f68be3              # double 7.590948
	.quad	0x40221dae1cde5d18              # double 9.0579689999999999
	.quad	0x4020de8dda48b652              # double 8.4346759999999996
	.quad	0x401d333f42352eb6              # double 7.300046
	.quad	0x402184e5f7403dde              # double 8.7595670000000005
	.quad	0x40194266ba493c8a              # double 6.314845
	.quad	0x402219b90ea9e6ef              # double 9.0502400000000005
	.quad	0x401ee8fc9363f573              # double 7.7275260000000001
	.quad	0x40221933e35c5b4b              # double 9.0492240000000006
	.quad	0x3fe46d5ae1cde5d2              # double 0.63834900000000006
	.quad	0x3fcd1ab8e8ea39c5              # double 0.227378
	.quad	0x4013993ab430f495              # double 4.8996380000000004
	.quad	0x3feccfdf3b645a1d              # double 0.90037500000000004
	.quad	0x400e044ae85b9e8c              # double 3.7520959999999999
	.quad	0x4019e6d71f36262d              # double 6.4754300000000002
	.quad	0x401ddbb59ddc1e79              # double 7.4645599999999996
	.quad	0x4006a19b90ea9e6f              # double 2.82891
	.quad	0x4017abbb62413db8              # double 5.9177070000000001
	.quad	0x401c32ff4ba51a00              # double 7.0498019999999997
	.quad	0x4010b266fd651b0d              # double 4.1742210000000002
	.quad	0x401f6a8d64d7f0ed              # double 7.8540549999999997
	.quad	0x400c9d883ba3443d              # double 3.5769199999999999
	.quad	0x3fe63018611fd588              # double 0.69337099999999996
	.quad	0x4017b473471f7942              # double 5.926221
	.quad	0x40174ac36544fe37              # double 5.8230110000000002
	.quad	0x40130438088509c0              # double 4.7541200000000003
	.quad	0x401cadda8bd230ba              # double 7.1697790000000001
	.quad	0x4006ee525892684d              # double 2.866368
	.quad	0x400fca600b029281              # double 3.9738159999999998
	.quad	0x401dae1a3f4666ed              # double 7.4200220000000003
	.quad	0x401219c7368ad688              # double 4.5251739999999998
	.quad	0x4016fefe93187619              # double 5.7490180000000004
	.quad	0x40211afc8b0079a3              # double 8.5527080000000009
	.quad	0x401a3a647fdc5932              # double 6.5570240000000002
	.quad	0x40063e57d9dba909              # double 2.7804410000000002
	.quad	0x402195e28aa43351              # double 8.7927440000000008
	.quad	0x401b89d7ba6698bb              # double 6.8846119999999997
	.quad	0x400940c1fc8f3238              # double 3.1566200000000002
	.quad	0x40202a378ab0c88a              # double 8.0824549999999995
	.quad	0x401778c36da87a07              # double 5.8679329999999998
	.quad	0x402197765fd8adac              # double 8.7958250000000006
	.quad	0x3ff50e9a2c669058              # double 1.316065
	.quad	0x3fba934acaff6d33              # double 0.10381
	.quad	0x401f3a56de33269e              # double 7.806972
	.quad	0x4006729d40ee06d9              # double 2.8059639999999999
	.quad	0x4015cd97b30f8c65              # double 5.450774
	.quad	0x4018a88c1db0142f              # double 6.1645969999999997
	.quad	0x4014abddb9841aac              # double 5.1678379999999997
	.quad	0x401e65436b8f9b13              # double 7.5988899999999999
	.quad	0x402229ae0c176577              # double 9.0814059999999994
	.quad	0x40186869835158b8              # double 6.1019649999999999
	.quad	0x400383358f2e05cd              # double 2.4390670000000001
	.quad	0x4010ced56b00ffda              # double 4.2019859999999998
	.quad	0x4015b78e1932d6ed              # double 5.4292530000000001
	.quad	0x3ff7a158750c1b97              # double 1.476891
	.quad	0x4016da50d6b228dd              # double 5.7131990000000004
	.quad	0x401d556abde3fbbd              # double 7.3334149999999996
	.quad	0x4021c077036c9c0b              # double 8.8759080000000008
	.quad	0x3ff3045132f87ad1              # double 1.1885540000000001
	.quad	0x3fe2ea012599ed7c              # double 0.59106499999999995
	.quad	0x40095f950b955f78              # double 3.1716709999999999
	.quad	0x3ffcd9fe43675ddd              # double 1.803221
	.quad	0x40057c83a96d4c34              # double 2.6857980000000001
	.quad	0x401fdf9a49c2c1b1              # double 7.9683619999999999
	.quad	0x400f48c47a17f413              # double 3.9105310000000002
	.quad	0x4017853005814941              # double 5.8800660000000002
	.quad	0x401fab7414a4d2b3              # double 7.9174350000000002
	.quad	0x3fc92ba16e7a311f              # double 0.19664400000000001
	.quad	0x3ffa0ee5abc0e38a              # double 1.6286369999999999
	.quad	0x400438d79d0a6762              # double 2.527755
	.quad	0x3ff0804102ff8ec1              # double 1.031312
	.quad	0x40216fc6b8b69553              # double 8.7183130000000002
	.quad	0x401b92ff4ba51a00              # double 6.8935519999999997
	.quad	0x4012578290689870              # double 4.5854590000000002
	.quad	0x4014e382e44b6e93              # double 5.2221789999999997
	.quad	0x400c5f6a0dbad3a6              # double 3.546589
	.quad	0x4004f5208e150119              # double 2.619691
	.quad	0x4001ab12d3415b14              # double 2.2085319999999999
	.quad	0x402220183f91e647              # double 9.0626850000000001
	.quad	0x401aeb8d3f1843c4              # double 6.7300310000000003
	.quad	0x402352c55c96030c              # double 9.6616619999999997
	.quad	0x402196b59146e4c1              # double 8.7943540000000002
	.quad	0x401145e3da2f8bdf              # double 4.3182520000000002
	.quad	0x3feb956c0d6f544c              # double 0.86199000000000003
	.quad	0x4012e07789a45910              # double 4.7192059999999998
	.quad	0x401324e2f37fbefd              # double 4.786022
	.quad	0x400f14117f84449e              # double 3.8847990000000001
	.quad	0x4000356861e92924              # double 2.026078
	.quad	0x4023159210385c68              # double 9.5421300000000002
	.quad	0x40233207b352a844              # double 9.5977150000000008
	.quad	0x4008753c579f2346              # double 3.0572439999999999
	.quad	0x3fd63764f11b60af              # double 0.34713100000000002
	.quad	0x401a75a35d67ba23              # double 6.6148809999999996
	.quad	0x3fe0209aaa3ad18d              # double 0.50397999999999998
	.quad	0x3fae81cb46bacf74              # double 0.059583999999999998
	.quad	0x40181743a647fdc6              # double 6.0227190000000004
	.quad	0x40026ff10ecb74de              # double 2.304659
	.quad	0x3fd680e496ededaf              # double 0.35161700000000001
	.quad	0x400b1b03e20ccff2              # double 3.388191
	.quad	0x3fe24a42aed13943              # double 0.57156499999999999
	.quad	0x401ead3458cd20b0              # double 7.6691450000000003
	.quad	0x40018c1c1d6cf851              # double 2.1934130000000001
	.quad	0x40219ea67e846a5d              # double 8.8098639999999993
	.quad	0x4022b155b4677b39              # double 9.3463569999999994
	.quad	0x400eff7164c729f6              # double 3.8747280000000002
	.quad	0x401655710880d802              # double 5.5834390000000003
	.quad	0x401b0f35e310dbf0              # double 6.7648539999999997
	.quad	0x40040aac1094a2ba              # double 2.5052110000000001
	.quad	0x4018124b76f6d762              # double 6.0178659999999997
	.quad	0x3ffeab702602c908              # double 1.916855
	.quad	0x401e427a63736cdf              # double 7.5649199999999998
	.quad	0x3ff8c200c0f01fb8              # double 1.547364
	.quad	0x4022f74d37c1376d              # double 9.4830109999999994
	.quad	0x3ffdb21b3aeee957              # double 1.8559829999999999
	.quad	0x4022aac471b47842              # double 9.3335299999999997
	.quad	0x401ddb280f12c27a              # double 7.4640199999999997
	.quad	0x40172a04d12018a4              # double 5.7910339999999998
	.quad	0x400df03a7546d3fa              # double 3.742299
	.quad	0x402207c200c0f020              # double 9.0151520000000005
	.quad	0x401652f6a50d6b23              # double 5.5810190000000004
	.quad	0x401e79478c868ba0              # double 7.6184370000000001
	.quad	0x401d66a26e547171              # double 7.3502289999999997
	.quad	0x40074a009f623077              # double 2.9111340000000001
	.quad	0x4019a5d41fa76534              # double 6.4119419999999998
	.quad	0x4010226634117f84              # double 4.0335929999999998
	.quad	0x401b567c6b8b6955              # double 6.8344589999999998
	.quad	0x3fe5ebe7afa72218              # double 0.68504699999999996
	.quad	0x3fe5ddebd9018e75              # double 0.68333999999999995
	.quad	0x3fec541fa7653437              # double 0.88526899999999997
	.quad	0x40235eab14ec204f              # double 9.6848989999999997
	.quad	0x4002b02ff8ec0f88              # double 2.3360289999999999
	.quad	0x4021cdf99c38b04b              # double 8.9022950000000005
	.quad	0x4006982e44b6e936              # double 2.8243070000000001
	.quad	0x3fe69d8c6d612c6b              # double 0.70673200000000003
	.quad	0x401c8e581cf7878b              # double 7.1390079999999996
	.quad	0x3ff51eb313be22e6              # double 1.319995
	.quad	0x3ffe62f5989df117              # double 1.89916
	.quad	0x3ffa8a9cdc443915              # double 1.658841
	.quad	0x40183f20ea5b530d              # double 6.0616490000000001
	.quad	0x400ff7d1fe64f54d              # double 3.9960059999999999
	.quad	0x40150b4e9813879c              # double 5.2610419999999998
	.quad	0x401f98a86d71f362              # double 7.8990799999999997
	.quad	0x401be795b35b0bbf              # double 6.9761569999999997
	.quad	0x3fd3cf67b1c0010c              # double 0.30953399999999998
	.quad	0x4000de939eadd591              # double 2.1086800000000001
	.quad	0x4000c619da9c9928              # double 2.0967289999999998
	.quad	0x400396e371540032              # double 2.4486759999999999
	.quad	0x401f9606b7aa25d9              # double 7.8965100000000001
	.quad	0x4006fa250f840182              # double 2.8721410000000001
	.quad	0x40090864020817fc              # double 3.1290969999999998
	.quad	0x401f04cfd08d4bad              # double 7.7546989999999995
	.quad	0x3ffab5b91f70de8f              # double 1.6693659999999999
	.quad	0x3ff45dcb5781c715              # double 1.272899
	.quad	0x3f942aed1394317b              # double 0.019695000000000001
	.quad	0x4008afdc1615ebfb              # double 3.0858690000000002
	.quad	0x3fccdc3bd5992429              # double 0.225471
	.quad	0x40194ae46cfc829d              # double 6.323137
	.quad	0x4007cf9873ffac1d              # double 2.9763649999999999
	.quad	0x4023f896bb98c7e3              # double 9.9855250000000008
	.quad	0x40206bcfb3311a54              # double 8.2105689999999995
	.quad	0x4006c6612839042e              # double 2.8468650000000002
	.quad	0x3fd84a38327674d1              # double 0.37952999999999998
	.quad	0x40185323358f2e06              # double 6.0811890000000002
	.quad	0x40110abde3fbbd7b              # double 4.2604899999999999
	.quad	0x4012b3b7d84901d2              # double 4.6755060000000004
	.quad	0x401329f05ea24cc7              # double 4.7909560000000004
	.quad	0x40124b97353b4b30              # double 4.5738190000000003
	.quad	0x4020709aaa3ad18d              # double 8.2199299999999997
	.quad	0x4020de9f2778140e              # double 8.4348080000000003
	.quad	0x4013f5bff04577d9              # double 4.9899899999999997
	.quad	0x40032e147ae147ae              # double 2.3975
	.quad	0x40236a1554fbdad7              # double 9.7071939999999994
	.quad	0x40152751ce28ed5f              # double 5.2883979999999999
	.quad	0x401db0f98fa37692              # double 7.4228269999999998
	.quad	0x401ef0d1fa333765              # double 7.735176
	.quad	0x3ff062dd7a99fa12              # double 1.0241370000000001
	.quad	0x400bd79314445aa3              # double 3.480261
	.quad	0x4022c4a5375c8da0              # double 9.3840730000000008
	.quad	0x3ff1cc2d6a9c560c              # double 1.1123479999999999
	.quad	0x40080fb86f47b678              # double 3.007676
	.quad	0x3ff951e321a2e7f7              # double 1.582492
	.quad	0x400f60431bde82d8              # double 3.9220030000000001
	.quad	0x3fee1f0e4da09cc3              # double 0.94129099999999999
	.quad	0x3fee1a60d4562e0a              # double 0.94072
	.quad	0x4016f49129888f86              # double 5.7388349999999999
	.quad	0x40213d989df1172f              # double 8.6203050000000001
	.quad	0x401d16c093d96638              # double 7.2722189999999998
	.quad	0x40154c426351def0              # double 5.3244720000000001
	.quad	0x4022b3f2d3c792d1              # double 9.3514619999999997
	.quad	0x401344755ffe6d59              # double 4.8168540000000002
	.quad	0x4015fa5accd53049              # double 5.4944870000000003
	.quad	0x4020e3f748a15981              # double 8.4452459999999991
	.quad	0x4002e71d60631727              # double 2.3628490000000002
	.quad	0x3ff4da2c669057d1              # double 1.3032649999999999
	.quad	0x40238abcb5fe542e              # double 9.7709709999999994
	.quad	0x3ff9852a411c2a02              # double 1.595011
	.quad	0x40151bae46cfc82a              # double 5.2770320000000002
	.quad	0x4023d58255b035bd              # double 9.9170099999999994
	.quad	0x40211df99c38b04b              # double 8.5585450000000005
	.quad	0x3fa3328b6d86ec18              # double 0.037495000000000001
	.quad	0x40217c23b7952d23              # double 8.7424599999999995
	.quad	0x3fe15ee99a62ed35              # double 0.54283599999999999
	.quad	0x401c4bcf4e874c90              # double 7.074033
	.quad	0x401f624c8366516e              # double 7.8459950000000003
	.quad	0x3f948b220791c4b9              # double 0.020062
	.quad	0x3fd33aeab7995ee1              # double 0.30047099999999999
	.quad	0x4018fcf893faf428              # double 6.2470420000000004
	.quad	0x4008a450268900c5              # double 3.0802309999999999
	.quad	0x40198353f7ced917              # double 6.3782500000000004
	.quad	0x4021d3bb40b34e77              # double 8.9135380000000008
	.quad	0x3fe453e920c069e8              # double 0.635243
	.quad	0x400a0fdd22856606              # double 3.257746
	.quad	0x40169ab367a0f909              # double 5.6510749999999996
	.quad	0x4019f55d5f56a7ad              # double 6.4896140000000004
	.quad	0x4017e6c93a711516              # double 5.9753769999999999
	.quad	0x401b95892684cf07              # double 6.8960309999999998
	.quad	0x4015eb6fe2e6ea85              # double 5.4799189999999998
	.quad	0x40001955f78359bc              # double 2.0123709999999999
	.quad	0x3fe5e3193f6c269a              # double 0.68397200000000002
	.quad	0x401e8fdcdf698783              # double 7.6404909999999999
	.quad	0x401f15f1bef49cf5              # double 7.7714299999999996
	.quad	0x401d7f5a5332acfb              # double 7.3743679999999996
	.quad	0x401ea29aa1d755bd              # double 7.6587930000000001
	.quad	0x4014e2cfd8f0c77e              # double 5.2214960000000001
	.quad	0x3fd80f2389720429              # double 0.37592399999999998
	.quad	0x401b4193708aac97              # double 6.8140390000000002
	.quad	0x4021cc61f9f01b86              # double 8.8991849999999992
	.quad	0x4020005681ecd4aa              # double 8.0006599999999999
	.quad	0x400e0b649d388a8b              # double 3.755563
	.quad	0x3fd25c8d9f9053a0              # double 0.28689900000000002
	.quad	0x400def5c28f5c28f              # double 3.7418749999999998
	.quad	0x4022bfd0aed99cbf              # double 9.3746390000000001
	.quad	0x4020dbda0dfdef85              # double 8.4293980000000008
	.quad	0x401d0a3b14a90471              # double 7.2599910000000003
	.quad	0x3ff27bdcf0307f24              # double 1.15524
	.quad	0x402097ef9db22d0e              # double 8.2967499999999994
	.quad	0x40239c6f587d6f97              # double 9.8055369999999992
	.quad	0x400810c996b7670a              # double 3.008197
	.quad	0x400f37da61e0c5a8              # double 3.902272
	.quad	0x401b1efe0ce0b913              # double 6.7802660000000001
	.quad	0x401a1a11ec918e32              # double 6.5254589999999997
	.quad	0x401fae8ff327aa69              # double 7.920471
	.quad	0x3ff3c9363f572de4              # double 1.2366239999999999
	.quad	0x400c328848387df6              # double 3.5246740000000001
	.quad	0x401b37e62dc6e2a8              # double 6.804589
	.quad	0x40171e1c9b413986              # double 5.7794059999999998
	.quad	0x4019fbaecd07852f              # double 6.4957839999999996
	.quad	0x3ff82f32bdc26dce              # double 1.5115229999999999
	.quad	0x3ffe84f6dfc5cdd5              # double 1.907462
	.quad	0x401c4df7a4e7ab75              # double 7.0761399999999997
	.quad	0x3ff580d801b43526              # double 1.3439559999999999
	.quad	0x4015385ec3dab5c4              # double 5.3050490000000003
	.quad	0x40230cbcad9ad85e              # double 9.524877
	.quad	0x400dec47a17f4129              # double 3.7403710000000001
	.quad	0x401a899fa11a975b              # double 6.634398
	.quad	0x400a9d1cc100e6b0              # double 3.3267150000000001
	.quad	0x4004359ddc1e7968              # double 2.5261800000000001
	.quad	0x3ff4997f62b6ae7d              # double 1.2874749999999999
	.quad	0x4021f2fcefaa4767              # double 8.9745860000000004
	.quad	0x40208e76a7264a17              # double 8.2782490000000006
	.quad	0x3fecaf5126634118              # double 0.896401
	.quad	0x4020c30941c8216c              # double 8.3809299999999993
	.quad	0x401b22ca148ba83f              # double 6.7839739999999997
	.quad	0x4008e038194c0160              # double 3.1094819999999999
	.quad	0x4008a9f623076c05              # double 3.082989
	.quad	0x40177201cd5f99c4              # double 5.8613350000000004
	.quad	0x3fd4746cb966be7b              # double 0.319606
	.quad	0x400a30468448cf7d              # double 3.2735720000000001
	.quad	0x3faece13f4a98aa8              # double 0.060165999999999997
	.quad	0x3f82da122fad6cb5              # double 0.0092049999999999996
	.quad	0x40234ff79c842fa5              # double 9.6561859999999999
	.quad	0x400fb859c8c9320e              # double 3.9650150000000002
	.quad	0x4020af2452c59fb2              # double 8.3420740000000002
	.quad	0x4013d0f5e41d4b6a              # double 4.9540629999999997
	.quad	0x3febe92b3cc4ac6d              # double 0.87221300000000002
	.quad	0x401c0a4c61d8622c              # double 7.0100569999999998
	.quad	0x4012774a771c970f              # double 4.6164949999999996
	.quad	0x4021d0b73d188f43              # double 8.907648
	.quad	0x4019eda597d49d7c              # double 6.4820770000000003
	.quad	0x4020e065d7cb2d90              # double 8.4382769999999994
	.quad	0x40227c126a65cf68              # double 9.2423280000000005
	.quad	0x401b249ecb31c21a              # double 6.7857620000000001
	.quad	0x40145777079e59f3              # double 5.0854150000000002
	.quad	0x4003f8c9fb6134ce              # double 2.4964789999999999
	.quad	0x401301d755bccaf7              # double 4.751798
	.quad	0x3fdffa15db3397dd              # double 0.499639
	.quad	0x40152ede97d06bbe              # double 5.2957710000000002
	.quad	0x400edf559b3d07c8              # double 3.8590499999999999
	.quad	0x401db79a2834d270              # double 7.4292990000000003
	.quad	0x4005c84f09528f19              # double 2.722807
	.quad	0x4011491212513b5c              # double 4.321358
	.quad	0x401110e23af31b15              # double 4.2664879999999998
	.quad	0x3fdd82f944241c3f              # double 0.461119
	.quad	0x4005d4b380cb6c7a              # double 2.7288579999999998
	.quad	0x4009b3e78e1932d7              # double 3.212844
	.quad	0x40204babead4f590              # double 8.1477959999999996
	.quad	0x40050e9142b302f7              # double 2.6321129999999999
	.quad	0x401c3e1cde5d1809              # double 7.060657
	.quad	0x3fd0ebfec13b9f12              # double 0.26440399999999997
	.quad	0x4020440f88333fc8              # double 8.1329309999999992
	.quad	0x402108ca8198f1d4              # double 8.5171700000000001
	.quad	0x400f9138bcdfefbf              # double 3.9459089999999999
	.quad	0x4023d2b3461309c8              # double 9.911524
	.quad	0x4022efb8b26394fb              # double 9.4682060000000003
	.quad	0x401e2e553ac4f7ec              # double 7.5452469999999998
	.quad	0x401e0f5b5fa22707              # double 7.5149970000000001
	.quad	0x3ff1bf9e7b80a9df              # double 1.1092820000000001
	.quad	0x402336c13b9f127f              # double 9.6069429999999993
	.quad	0x3fd827fa1a0cf180              # double 0.37744
	.quad	0x40039d99029ae4f3              # double 2.4519519999999999
	.quad	0x400940b3d4ae429e              # double 3.156593
	.quad	0x400437f06705c897              # double 2.5273140000000001
	.quad	0x401c90fcf80dc337              # double 7.1415899999999999
	.quad	0x4022845931ca7d67              # double 9.2584929999999996
	.quad	0x4021b12839042d8c              # double 8.8460099999999997
	.quad	0x400ec17f4128bf3c              # double 3.844481
	.quad	0x4022b6d373affb05              # double 9.3570820000000001
	.quad	0x401adf0025bfad2a              # double 6.7177740000000004
	.quad	0x4020d6a0fd3b29a2              # double 8.4191970000000005
	.quad	0x400f6cdc8754f377              # double 3.9281549999999998
	.quad	0x401ceca2120e1f7d              # double 7.2310869999999996
	.quad	0x4005fb39e279dd3c              # double 2.7476690000000001
	.quad	0x401f1a05143bf727              # double 7.7754099999999999
	.quad	0x4020b1db0142f61f              # double 8.3473740000000003
	.quad	0x4011695a294141ea              # double 4.3528830000000003
	.quad	0x4021b0c67168f8e8              # double 8.8452640000000002
	.quad	0x4014d8b9fdbd2fa1              # double 5.2116470000000001
	.quad	0x4015ee974a3400b9              # double 5.4829990000000004
	.quad	0x401811fa76534374              # double 6.017557
	.quad	0x400ed8ac18f81e8a              # double 3.8557969999999999
	.quad	0x4017850331e3a7db              # double 5.8798950000000003
	.quad	0x401a333b5393250b              # double 6.5500309999999997
	.quad	0x400a11d0c8041030              # double 3.258699
	.quad	0x40027dc6195464dc              # double 2.3114129999999999
	.quad	0x3ff4f69a91105e1c              # double 1.310206
	.quad	0x4010f075b3e1437c              # double 4.2348239999999997
	.quad	0x400063065f9591cd              # double 2.048352
	.quad	0x401e4205bc01a36e              # double 7.5644749999999998
	.quad	0x40163f8e3ac0c62e              # double 5.5620659999999997
	.quad	0x4003d68943e10060              # double 2.4797539999999998
	.quad	0x3feca990f301eabc              # double 0.89569900000000002
	.quad	0x400ce51e321a2e7f              # double 3.6118739999999998
	.quad	0x3fdd61bf37b8d3f2              # double 0.45909100000000003
	.quad	0x401dcce789e774ef              # double 7.4501020000000002
	.quad	0x401ab7b3d8e00086              # double 6.6793969999999998
	.quad	0x4015fcc426351def              # double 5.496842
	.quad	0x40079143393ab431              # double 2.945929
	.quad	0x401b17f90d9d7775              # double 6.7734110000000003
	.quad	0x40081c7bcc2938de              # double 3.0139079999999998
	.quad	0x400cc55f3519bd40              # double 3.5963729999999998
	.quad	0x401323baba7b9171              # double 4.7848920000000001
	.quad	0x3ffbd275ee99a62f              # double 1.738882
	.quad	0x4022e1f1ae2da555              # double 9.4412970000000004
	.quad	0x401b4849cb252ce0              # double 6.8205939999999998
	.quad	0x3ffa7a4d6e47dc38              # double 1.6548590000000001
	.quad	0x4009d3059641f645              # double 3.2280380000000002
	.quad	0x3ffc0f2495e17e35              # double 1.7536970000000001
	.quad	0x4010738b47c73eee              # double 4.1128359999999997
	.quad	0x400a4610f0e90bc8              # double 3.2842120000000001
	.quad	0x3ff19336deb95e5b              # double 1.098441
	.quad	0x400826937d1fe64f              # double 3.0188359999999999
	.quad	0x4017b6de76427c7c              # double 5.9285829999999997
	.quad	0x400c399806f26289              # double 3.5281220000000002
	.quad	0x401024ed2cbea4ec              # double 4.0360610000000001
	.quad	0x4019e2f4cf4a558f              # double 6.4716370000000003
	.quad	0x4017647d805e5f31              # double 5.8481350000000001
	.quad	0x4022a61e0c5a8156              # double 9.3244480000000003
	.quad	0x4005679aae6c8f75              # double 2.6755879999999999
	.quad	0x3fd72c94b380cb6c              # double 0.36209599999999997
	.quad	0x401fe2c12ad81adf              # double 7.9714400000000003
	.quad	0x3ffc32fa93af74cd              # double 1.762446
	.quad	0x3ffcda62ed352221              # double 1.8033170000000001
	.quad	0x40117b9ecf638002              # double 4.3707229999999999
	.quad	0x3fe49b64e054690e              # double 0.64396900000000001
	.quad	0x3fde3a8e71476af9              # double 0.47232400000000002
	.quad	0x40185f2ae07e5a79              # double 6.092937
	.quad	0x4009ec521dda059a              # double 3.2403909999999998
	.quad	0x4020d7633ce63a5c              # double 8.4206789999999998
	.quad	0x401956394face67d              # double 6.3342029999999996
	.quad	0x3ff18f13cee9dd7f              # double 1.097431
	.quad	0x40111512a94ff002              # double 4.2705789999999997
	.quad	0x400f2a52ef911cf3              # double 3.8956659999999999
	.quad	0x3fbaffe2a3cea6c2              # double 0.10546700000000001
	.quad	0x400f0874c8ffb8b2              # double 3.8791289999999998
	.quad	0x40056b734b51372a              # double 2.6774659999999999
	.quad	0x402321adc8fb86f4              # double 9.5657789999999991
	.quad	0x3ff9fe132b55ef20              # double 1.62453
	.quad	0x4021e40724b76f6d              # double 8.9453669999999992
	.quad	0x401d2d7d7c2ca149              # double 7.2944240000000002
	.quad	0x40205abead4f5904              # double 8.1772360000000006
	.quad	0x3ff7a6256366d7a5              # double 1.4780629999999999
	.quad	0x3ff535147f130596              # double 1.3254589999999999
	.quad	0x40170c4e7253da73              # double 5.7620180000000003
	.quad	0x4020f1240746455f              # double 8.4709780000000006
	.quad	0x4011ef37329c347f              # double 4.4836090000000004
	.quad	0x401b497396d0917d              # double 6.8217299999999996
	.quad	0x400c769878316a05              # double 3.5579079999999998
	.quad	0x3ffaaa94ff0025c0              # double 1.6666460000000001
	.quad	0x4020fbcc6c54bcf1              # double 8.4917940000000005
	.quad	0x40217b990afe60c4              # double 8.7414020000000007
	.quad	0x4002be23f24d8fd6              # double 2.3428420000000001
	.quad	0x402211ee02a77a2d              # double 9.0350190000000001
	.quad	0x4017f970f7b9e061              # double 5.993595
	.quad	0x401a94edf6124074              # double 6.6454389999999997
	.quad	0x40229836a832b991              # double 9.2972920000000006
	.quad	0x4017eeecbfb15b57              # double 5.9833249999999998
	.quad	0x402177f6d330941d              # double 8.7343050000000009
	.quad	0x4017a529fe004b7f              # double 5.9112929999999997
	.quad	0x3ffea58f7121ab4b              # double 1.9154199999999999
	.quad	0x40170372606fac60              # double 5.7533659999999998
	.quad	0x401e842e12620254              # double 7.6290820000000004
	.quad	0x3fc4216c61522a6f              # double 0.15726999999999999
	.quad	0x400e7dd76683c298              # double 3.8114460000000001
	.quad	0x402115099e0e7360              # double 8.5410889999999995
	.quad	0x401d8ad85dfa871a              # double 7.3855909999999998
	.quad	0x400186bce8533b10              # double 2.1907899999999998
	.quad	0x401c7b67c286f8ad              # double 7.1205129999999999
	.quad	0x401b60e065300581              # double 6.8446059999999997
	.quad	0x3fe980b673c4f3ba              # double 0.79696199999999995
	.quad	0x40214ad59d55e6bc              # double 8.6461609999999993
	.quad	0x40159b324851a869              # double 5.4015589999999998
	.quad	0x4012e28bb0a2ca9b              # double 4.7212360000000002
	.quad	0x4012dc64fdb09a67              # double 4.7152289999999999
	.quad	0x4022e5d9c27e9531              # double 9.4489269999999994
	.quad	0x401c117763e4abe7              # double 7.0170570000000003
	.quad	0x400f9aa2e3c536d6              # double 3.9505059999999999
	.quad	0x401bbd4845132f88              # double 6.9348460000000003
	.quad	0x4023bb393ab430f5              # double 9.8656710000000007
	.quad	0x4000a13986338b48              # double 2.0787230000000001
	.quad	0x401dde10cf5b1c86              # double 7.4668609999999997
	.quad	0x400b129e4d5d80e5              # double 3.3840910000000002
	.quad	0x4011f55ac03ff690              # double 4.4896039999999999
	.quad	0x40214205bc01a36e              # double 8.6289499999999997
	.quad	0x402368e53eb399f6              # double 9.7048740000000002
	.quad	0x401b6531db445ed5              # double 6.8488230000000003
	.quad	0x40163a2834d26fa4              # double 5.556794
	.quad	0x40235d8383ad9f0a              # double 9.6826439999999998
	.quad	0x400f130270f38822              # double 3.8842819999999998
	.quad	0x40223c050bd87b57              # double 9.1172260000000005
	.quad	0x3ffa6e696a26e547              # double 1.651956
	.quad	0x401e72f5dbb9cf9a              # double 7.612266
	.quad	0x40051bbadc0980b2              # double 2.6385399999999999
	.quad	0x40021d61f5be5d9e              # double 2.2643469999999999
	.quad	0x400f25e5f30e7ff6              # double 3.8935050000000002
	.quad	0x4010e4e3369b9d80              # double 4.2235230000000001
	.quad	0x3fed396073de1e2e              # double 0.91325400000000001
	.quad	0x40191ccf28c79f66              # double 6.2781339999999997
	.quad	0x400bf83382e44b6f              # double 3.4961920000000002
	.quad	0x3ff9565907d91255              # double 1.5835809999999999
	.quad	0x40236eefa1e3eaf7              # double 9.7166720000000008
	.quad	0x4004ed8c2a454de8              # double 2.61599
	.quad	0x400341b7e0ac7da2              # double 2.407089
	.quad	0x3ff5efa0d77b7c78              # double 1.371003
	.quad	0x401fd2a6f3f52fc2              # double 7.9557149999999996
	.quad	0x40217461b6d43d04              # double 8.7273080000000007
	.quad	0x3fe64c4ac6cdaf4b              # double 0.69681300000000002
	.quad	0x4022b44c7b02d59d              # double 9.3521459999999994
	.quad	0x40232b3c60029f17              # double 9.5844450000000005
	.quad	0x401ed50e779207d5              # double 7.7080630000000001
	.quad	0x3fe075fb2edfe75c              # double 0.51440200000000003
	.quad	0x401b1df761cbccf3              # double 6.7792640000000004
	.quad	0x401d65f6ba0620ab              # double 7.3495739999999996
	.quad	0x401a5b5bb384fd2a              # double 6.5892169999999997
	.quad	0x4020275f4e4430b1              # double 8.0768989999999992
	.quad	0x4009a4c51116a8b9              # double 3.205454
	.quad	0x40214ee5cd4ed2cc              # double 8.6540970000000001
	.quad	0x3fff58ec95bff045              # double 1.9592099999999999
	.quad	0x40196dbf8b9baa15              # double 6.3571759999999999
	.quad	0x40129a22706d5065              # double 4.6505219999999996
	.quad	0x40029bb7b6bb1290              # double 2.3260339999999999
	.quad	0x40207cf1e4b44a1f              # double 8.2440329999999999
	.quad	0x401ba0bc7b45f17c              # double 6.9069690000000001
	.quad	0x401f72934acaff6d              # double 7.8618899999999998
	.quad	0x40027767903211cb              # double 2.308303
	.quad	0x400fa1919ac79703              # double 3.953891
	.quad	0x4001e34f3fd933e3              # double 2.2359909999999998
	.quad	0x4015691ea78af3e4              # double 5.3526559999999996
	.quad	0x3fecd3e2d6238da4              # double 0.90086500000000002
	.quad	0x3ff1c43d46b26bf8              # double 1.1104099999999999
	.quad	0x40223be5109070fc              # double 9.1169820000000001
	.quad	0x4022941ebc83a96d              # double 9.2892969999999995
	.quad	0x4016c8b6d86ec17f              # double 5.6960100000000002
	.quad	0x4020e7e62dc6e2a8              # double 8.452928
	.quad	0x3ff8036976bc1f00              # double 1.5008330000000001
	.quad	0x3ffa4c22ee41919b              # double 1.643588
	.quad	0x3ff7a0cbf2b239a4              # double 1.4767570000000001
	.quad	0x402310941c8216c6              # double 9.5323799999999999
	.quad	0x3fccf69ca9ef5233              # double 0.226276
	.quad	0x3fdf921ccd962068              # double 0.49329299999999998
	.quad	0x3ff235cf2495e17e              # double 1.138137
	.quad	0x402275fa658c4bd3              # double 9.2304259999999996
	.quad	0x3fe376922d948dc1              # double 0.60822399999999999
	.quad	0x400e5451fc4c1659              # double 3.791172
	.quad	0x4019d07314ca9260              # double 6.4535640000000001
	.quad	0x400de8f648c7192f              # double 3.7387510000000002
	.quad	0x4011f5ebb7739f34              # double 4.490157
	.quad	0x3fde19eb6390c910              # double 0.47033199999999997
	.quad	0x3fdf248d7e02645e              # double 0.48660599999999998
	.quad	0x3fe2ca07f66e86c6              # double 0.58716199999999996
	.quad	0x4022a6e568a50508              # double 9.3259690000000006
	.quad	0x4009d903211cb03a              # double 3.230963
	.quad	0x3feb0a3d70a3d70a              # double 0.84499999999999997
	.quad	0x4013919c5a3e39f7              # double 4.8921979999999996
	.quad	0x3f72630ec3116228              # double 0.0044889999999999999
	.quad	0x4010d9e8c47a17f4              # double 4.2128019999999999
	.quad	0x40067edd052934ad              # double 2.8119450000000001
	.quad	0x40152cc78e9f6a94              # double 5.29373
	.quad	0x3fd4b2fec56d5cfb              # double 0.32342500000000002
	.quad	0x40214e64b2314014              # double 8.6531120000000001
	.quad	0x4012941d084e831b              # double 4.6446420000000002
	.quad	0x4023e1f5dfeb8d82              # double 9.9413289999999996
	.quad	0x40235b22291fb3fa              # double 9.6779949999999992
	.quad	0x4022ccc532a497fa              # double 9.3999419999999994
	.quad	0x4023869856a37ac4              # double 9.7628810000000001
	.quad	0x401ee59d55e6bc62              # double 7.7242329999999999
	.quad	0x40094046412cf0fa              # double 3.1563840000000001
	.quad	0x3ffc30ea18372e6a              # double 1.7619419999999999
	.quad	0x40106e03f705857b              # double 4.107437
	.quad	0x3ff6deaab042528b              # double 1.429362
	.quad	0x402154d594f26aec              # double 8.6656919999999999
	.quad	0x40186016ce789e77              # double 6.0938369999999997
	.quad	0x401299f44d445671              # double 4.6503459999999999
	.quad	0x401615b317efe0ce              # double 5.521191
	.quad	0x40163c46d82ba5a0              # double 5.5588639999999998
	.quad	0x40095ef8ceb356da              # double 3.171373
	.quad	0x400b62c343b70ef5              # double 3.4232239999999998
	.quad	0x400efccaf709b739              # double 3.873434
	.quad	0x4016dbc87db2b346              # double 5.7146319999999999
	.quad	0x401ade008e9b38d6              # double 6.716799
	.quad	0x4021b06f049a9974              # double 8.8445970000000002
	.quad	0x3ff538e3ac0c62e5              # double 1.326389
	.quad	0x40044242d05f2885              # double 2.5323540000000002
	.quad	0x401c89335d249e45              # double 7.133985
	.quad	0x4019a9ca5bd944aa              # double 6.4158109999999997
	.quad	0x40188ea960b6f9fd              # double 6.1393180000000003
	.quad	0x3fdb9ffd60e94ee4              # double 0.43164000000000002
	.quad	0x401e748beb5b2d4d              # double 7.6138149999999997
	.quad	0x4023708b75ea67e8              # double 9.7198139999999995
	.quad	0x4020f7beb9e492bc              # double 8.4838769999999996
	.quad	0x4021a71001d5c316              # double 8.8262940000000008
	.quad	0x4016eec56d5cfaad              # double 5.7331750000000001
	.quad	0x4022d196312f4cf5              # double 9.4093490000000006
	.quad	0x4015f16a48733659              # double 5.4857570000000004
	.quad	0x3fe369ccb7d41744              # double 0.60666500000000001
	.quad	0x40188d477bbf93ff              # double 6.1379679999999999
	.quad	0x40228fc5692b3cc5              # double 9.2808030000000006
	.quad	0x40109f1c3265adda              # double 4.1553810000000002
	.quad	0x4015e484944ed6fe              # double 5.4731620000000003
	.quad	0x40234e4f765fd8ae              # double 9.6529500000000006
	.quad	0x4014c02de00d1b71              # double 5.1876749999999996
	.quad	0x40109c88e79aae6d              # double 4.1528660000000004
	.quad	0x40063c52e72da123              # double 2.779455
	.quad	0x401ca86b9c304ccf              # double 7.1644730000000001
	.quad	0x400931487768166a              # double 3.1490640000000001
	.quad	0x40201dfc9ff92f2b              # double 8.0585679999999993
	.quad	0x4005dacde19fc2a9              # double 2.7318380000000002
	.quad	0x402262e0c1765775              # double 9.1931209999999997
	.quad	0x4014b6501e2584f5              # double 5.1780400000000002
	.quad	0x40202a4463065f96              # double 8.0825530000000008
	.quad	0x401791ea78af3e47              # double 5.8924960000000004
	.quad	0x3fe3ab6d00b45ae6              # double 0.614676
	.quad	0x3fea4e4430b178b3              # double 0.82205399999999995
	.quad	0x401f58066c2acb86              # double 7.8359620000000003
	.quad	0x40104d76ee73e682              # double 4.0756490000000003
	.quad	0x3fb22c2374794ea0              # double 0.070985999999999994
	.quad	0x401d167168f8e7de              # double 7.2719170000000002
	.quad	0x401c941355475a32              # double 7.1446050000000003
	.quad	0x400125e80bed740c              # double 2.1435089999999999
	.quad	0x40094561d4306e5d              # double 3.1588780000000001
	.quad	0x401646b3354c1227              # double 5.5690429999999997
	.quad	0x3ff563fab10ba626              # double 1.3369089999999999
	.quad	0x3ffd106bbdbe3c10              # double 1.8165089999999999
	.quad	0x3fd10763a1900820              # double 0.26607599999999998
	.quad	0x40125ad9274e22a3              # double 4.5887190000000002
	.quad	0x4007538bcdfefbf4              # double 2.915794
	.quad	0x402052aa9f7b5aea              # double 8.1614579999999997
	.quad	0x40085bcb1cc96463              # double 3.0448210000000002
	.quad	0x401d25ec3dab5c3a              # double 7.2870340000000002
	.quad	0x4000d10ecb74ddf8              # double 2.1020789999999998
	.quad	0x401a0c0ebedfa440              # double 6.5117750000000001
	.quad	0x401c5756c93a7115              # double 7.0852919999999999
	.quad	0x4011ed1c3ac929aa              # double 4.4815529999999999
	.quad	0x402273ebbfd71b04              # double 9.2264079999999992
	.quad	0x401e433764f11b61              # double 7.5656410000000002
	.quad	0x401a00364388ebcc              # double 6.5002069999999996
	.quad	0x400eb65f5275ee9a              # double 3.8390490000000002
	.quad	0x40112d6d3b6cbd98              # double 4.2943619999999996
	.quad	0x3fed3a5e353f7cee              # double 0.91337500000000005
	.quad	0x4006250e779207d5              # double 2.7680940000000001
	.quad	0x4022a4d530489d28              # double 9.3219390000000004
	.quad	0x3ffec71c53f39d1b              # double 1.923611
	.quad	0x401f8fb15b573eab              # double 7.8903249999999998
	.quad	0x4021cb0ad46f587d              # double 8.8965669999999992
	.quad	0x400906b2f23033a4              # double 3.1282709999999998
	.quad	0x400d3d694ccab3ee              # double 3.6549860000000001
	.quad	0x400071a5ca29845e              # double 2.0554920000000001
	.quad	0x4008e97d8cf398e9              # double 3.1140089999999998
	.quad	0x402290b0079a2835              # double 9.2825930000000003
	.quad	0x4007c21ea35935fc              # double 2.9697849999999999
	.quad	0x3fff0cfd08d4bad8              # double 1.940671
	.quad	0x40116e1d2178f68c              # double 4.3575330000000001
	.quad	0x40126bf4cb1897a6              # double 4.6054259999999996
	.quad	0x4016e61f9f01b867              # double 5.7247300000000001
	.quad	0x40103b7cfe586013              # double 4.0580939999999996
	.quad	0x3fe905a4f00ef135              # double 0.78193900000000005
	.quad	0x40084d91eeaa6d26              # double 3.0378759999999998
	.quad	0x4021e298eda22f6a              # double 8.9425729999999994
	.quad	0x401f9284dfce3151              # double 7.8930850000000001
	.quad	0x401df68a936c58ef              # double 7.4907630000000002
	.quad	0x4012a7b7c7820a31              # double 4.6637870000000001
	.quad	0x401810270f388228              # double 6.0157740000000004
	.quad	0x3ff2554866a11ec9              # double 1.145821
	.quad	0x4022e7b3311a543f              # double 9.4525389999999998
	.quad	0x4018933acd5b6806              # double 6.1437790000000003
	.quad	0x40198e0e736049ed              # double 6.3887270000000003
	.quad	0x4013917efe0ce0b9              # double 4.8920859999999999
	.quad	0x40088eddce7cd035              # double 3.0697589999999999
	.quad	0x3fc79d4d834091c1              # double 0.18448800000000001
	.quad	0x4003593f6c2699c8              # double 2.4185780000000001
	.quad	0x40217df676ea4229              # double 8.7460210000000007
	.quad	0x4022feee52589268              # double 9.4979119999999994
	.quad	0x4019424c8366516e              # double 6.3147450000000003
	.quad	0x3ff212934acaff6d              # double 1.129535
	.quad	0x3ffabbcf4e874c90              # double 1.670852
	.quad	0x401fc6ededaec4a4              # double 7.944267
	.quad	0x4020b777292c4934              # double 8.3583309999999997
	.quad	0x40105d590c0ad03e              # double 4.0911600000000004
	.quad	0x3fee0635a426bb56              # double 0.93825800000000004
	.quad	0x4017c73fb7a5f41b              # double 5.9445790000000001
	.quad	0x4018ac6d612c6ac2              # double 6.1683859999999999
	.quad	0x4016110ecb74ddf8              # double 5.5166579999999996
	.quad	0x401e3fbeb9e492bc              # double 7.5622509999999998
	.quad	0x402213dc8b86b160              # double 9.0387920000000008
	.quad	0x3ff78f93bc0a06ea              # double 1.472553
	.quad	0x402106e5eedcc20d              # double 8.5134729999999994
	.quad	0x401d69f6a93f290b              # double 7.3534800000000002
	.quad	0x4022e709528f190d              # double 9.4512429999999998
	.quad	0x3ffa24766c6de764              # double 1.633902
	.quad	0x4011c7a99fa11a97              # double 4.4449829999999997
	.quad	0x4012a1e8a2ec28b3              # double 4.6581140000000003
	.quad	0x40123aefb2aae297              # double 4.5575549999999998
	.quad	0x40224e260b2c83ed              # double 9.1526340000000008
	.quad	0x3ffac07bbb62413e              # double 1.6719930000000001
	.quad	0x400ec8fd9fd36f7e              # double 3.8481399999999999
	.quad	0x3ff0708cc575c076              # double 1.0274779999999999
	.quad	0x40129c6c54bcf0b7              # double 4.6527570000000003
	.quad	0x4011a969e3c96894              # double 4.4154429999999998
	.quad	0x3ffe9c75818c5c9a              # double 1.913198
	.quad	0x3fe5309635610add              # double 0.66218100000000002
	.quad	0x4012c0746455eaee              # double 4.6879439999999999
	.quad	0x4010ecb5350092cd              # double 4.23116
	.quad	0x40151a337a80cf9e              # double 5.2755869999999998
	.quad	0x3ff48e53eb399f5e              # double 1.284748
	.quad	0x400d266cb10342ab              # double 3.6437620000000002
	.quad	0x4002f7aaac1094a3              # double 2.3709310000000001
	.quad	0x400dc534bd76ee74              # double 3.721292
	.quad	0x40157a24894c447c              # double 5.3692799999999998
	.quad	0x4021511622813448              # double 8.658372
	.quad	0x4014c87a8d64d7f1              # double 5.1957800000000001
	.quad	0x402061e12a51e322              # double 8.1911710000000006
	.quad	0x40185ca70d1fa333              # double 6.0904809999999996
	.quad	0x401ec1205bc01a37              # double 7.6886000000000001
	.quad	0x3ffda47dc37a3db4              # double 1.8526590000000001
	.quad	0x400c74cec41dd1a2              # double 3.5570349999999999
	.quad	0x401881d1d4738a3b              # double 6.1267769999999997
	.quad	0x4007c1d19157abb9              # double 2.9696380000000002
	.quad	0x3fbab26bf8769ec3              # double 0.104285
	.quad	0x4012ee831ad2135e              # double 4.7329220000000003
	.quad	0x402379693c03bc4d              # double 9.7371309999999997
	.quad	0x3fd01d53cddd6e05              # double 0.25179000000000001
	.quad	0x3fe9082cf52b90a8              # double 0.78224800000000005
	.quad	0x40169a5614df8b15              # double 5.6507189999999996
	.quad	0x3fc14013ec460ed8              # double 0.134768
	.quad	0x3ffca4c2f837b4a2              # double 1.790225
	.quad	0x4007401de2691644              # double 2.906307
	.quad	0x4022451d8a548238              # double 9.1349909999999994
	.quad	0x401a37d7c2ca148c              # double 6.5545340000000003
	.quad	0x3fffb77f27fe4bcb              # double 1.982299
	.quad	0x3ffeefb6dca07f67              # double 1.933524
	.quad	0x40235cee9dd7ecbb              # double 9.6815079999999991
	.quad	0x40081c621b7e0ac8              # double 3.0138590000000001
	.quad	0x3ffce656abde3fbc              # double 1.806235
	.quad	0x40155758e219652c              # double 5.3353000000000002
	.quad	0x3ff048aefb2aae29              # double 1.0177449999999999
	.quad	0x3fd2a58f7121ab4b              # double 0.29135499999999998
	.quad	0x3ff9502de00d1b71              # double 1.5820749999999999
	.quad	0x3fe318a86d71f362              # double 0.59675999999999996
	.quad	0x4020d9ebe9c88616              # double 8.4256279999999997
	.quad	0x4020ede26916440f              # double 8.4646179999999998
	.quad	0x3fe0f8a2a90cd424              # double 0.53035100000000002
	.quad	0x401eb8b08dd1e53b              # double 7.6803610000000004
	.quad	0x402010e4755ffe6d              # double 8.0329929999999994
	.quad	0x4011963497b7414a              # double 4.3966849999999997
	.quad	0x4021f5d11be6e654              # double 8.9801110000000008
	.quad	0x4023869680e06530              # double 9.762867
	.quad	0x40233bd0e12e83a1              # double 9.6168279999999999
	.quad	0x400c2f0bf1a5ca2a              # double 3.5229720000000002
	.quad	0x401a1d0b73d188f4              # double 6.5283639999999998
	.quad	0x3ffc4383ad9f0a1c              # double 1.766483
	.quad	0x401a07985271bcdc              # double 6.5074170000000002
	.quad	0x400060053e2d6239              # double 2.0468850000000001
	.quad	0x401d9d634549b62c              # double 7.4036989999999996
	.quad	0x3ff5f9e279dd3bb0              # double 1.373507
	.quad	0x401d4489d27c3937              # double 7.3169320000000004
	.quad	0x4021b4d4ed2cbea5              # double 8.8531870000000001
	.quad	0x402136ab367a0f91              # double 8.6067750000000007
	.quad	0x3ff2d41e9af5ba2c              # double 1.176787
	.quad	0x4016942d05f28848              # double 5.6447029999999998
	.quad	0x401c82c01e68a0d3              # double 7.1276859999999997
	.quad	0x3fc6204f2ae07e5a              # double 0.17286099999999999
	.quad	0x3fee99439de481f5              # double 0.95620899999999998
	.quad	0x402007b5f1bef49d              # double 8.0150600000000001
	.quad	0x3fd1c59b8023a6ce              # double 0.27768599999999999
	.quad	0x40170b480a5accd5              # double 5.7610169999999998
	.quad	0x401bef240fa9c12f              # double 6.983536
	.quad	0x3fe1f36049ecb31c              # double 0.56095899999999999
	.quad	0x4016342d05f28848              # double 5.5509529999999998
	.quad	0x40162f07bfe7e1fc              # double 5.545928
	.quad	0x3fe6c6088d6d3b6d              # double 0.71167400000000003
	.quad	0x402338b417ca2121              # double 9.6107490000000002
	.quad	0x4020af76e6106ab1              # double 8.3427039999999995
	.quad	0x4019c0663c74fb55              # double 6.4378900000000003
	.quad	0x40163107314ca926              # double 5.547879
	.quad	0x401a37531db445ed              # double 6.5540279999999997
	.quad	0x40144a1059ea5721              # double 5.0723279999999997
	.quad	0x4012bffeb074a772              # double 4.6874950000000002
	.quad	0x4018748c2e770bd0              # double 6.1138159999999999
	.quad	0x4000ddc1e7967caf              # double 2.1082800000000002
	.quad	0x401becf8d716d2aa              # double 6.9814179999999997
	.quad	0x401b8651b0ccbc06              # double 6.8811710000000001
	.quad	0x3fc32bfdb4cc2507              # double 0.14978
	.quad	0x40239438b04ab607              # double 9.7894950000000005
	.quad	0x4004f5fc3b4f6167              # double 2.6201099999999999
	.quad	0x4021064b44a1f080              # double 8.5122929999999997
	.quad	0x401bd7a9e2bcf91a              # double 6.9606089999999998
	.quad	0x4005705f28848388              # double 2.6798690000000001
	.quad	0x3fe5cffa7eb6bf44              # double 0.68163799999999997
	.quad	0x401ef1fe64f54d1f              # double 7.7363220000000003
	.quad	0x3fda57b41bfbdf09              # double 0.411603
	.quad	0x4005e672fba01eef              # double 2.7375240000000001
	.quad	0x4000e3675ddd2ae9              # double 2.1110370000000001
	.quad	0x4005d91d57ff9b56              # double 2.7310129999999999
	.quad	0x4021ec2b302f72b4              # double 8.9612669999999994
	.quad	0x4009e9d8c6d612c7              # double 3.2391830000000001
	.quad	0x3ff6a8e0c9d9d346              # double 1.4162300000000001
	.quad	0x40014a0ba1f4b1ee              # double 2.1611549999999999
	.quad	0x401a0fb43d89ce4a              # double 6.5153359999999996
	.quad	0x4013f01d5c31593e              # double 4.9844869999999997
	.quad	0x40053296f6512a95              # double 2.649702
	.quad	0x40088d794a6eb91b              # double 3.0690789999999999
	.quad	0x4000caf709b738e7              # double 2.0991040000000001
	.quad	0x400044e1e71044f2              # double 2.0336340000000002
	.quad	0x40234e35a426bb56              # double 9.6527530000000006
	.quad	0x400357b395c42203              # double 2.4178229999999998
	.quad	0x3fd598244e93e1ca              # double 0.33741100000000002
	.quad	0x4016fcd67fd3f5b6              # double 5.746912
	.quad	0x3fd35657fb69984a              # double 0.302145
	.quad	0x400807ea5f84cad5              # double 3.0038649999999998
	.quad	0x40236f3abc947065              # double 9.7172450000000001
	.quad	0x401d0ca31e7d9989              # double 7.2623410000000002
	.quad	0x40222f42fe82517e              # double 9.0923079999999992
	.quad	0x3ffd66b0d9513f8e              # double 1.8375710000000001
	.quad	0x401444d61b2a27f2              # double 5.0672230000000003
	.quad	0x401ec46e8f29d40f              # double 7.6918280000000001
	.quad	0x4010d516db0dd830              # double 4.2080950000000001
	.quad	0x401a4ca9ef5232d3              # double 6.5748670000000002
	.quad	0x401078f861a60d45              # double 4.1181349999999997
	.quad	0x40215ad1f1cfbb95              # double 8.6773830000000007
	.quad	0x40230d1a65061416              # double 9.5255919999999996
	.quad	0x3ff6fd9cae21101b              # double 1.436917
	.quad	0x3ff1d1deefe4ffc9              # double 1.1137379999999999
	.quad	0x4016cc3b0c4588a0              # double 5.6994439999999997
	.quad	0x3ff71f7e80389f84              # double 1.4451890000000001
	.quad	0x401d8d972cd7cf5f              # double 7.3882719999999997
	.quad	0x40216381f969e3c9              # double 8.6943509999999993
	.quad	0x4004864c2f837b4a              # double 2.5655749999999999
	.quad	0x40209ef34d6a161e              # double 8.3104499999999994
	.quad	0x3ffd7b320535c9e6              # double 1.8425769999999999
	.quad	0x4020e2148ba83f4f              # double 8.4415630000000004
	.quad	0x401b39988d2a1f8e              # double 6.8062459999999998
	.quad	0x401fad955714b9cb              # double 7.9195149999999996
	.quad	0x3fb34fb549f94856              # double 0.075435000000000002
	.quad	0x40210a21ea359360              # double 8.5197900000000004
	.quad	0x3ff0d72cd7cf5f4e              # double 1.0525329999999999
	.quad	0x40220d5e8d5410f9              # double 9.0261119999999995
	.quad	0x400861a6937d1fe6              # double 3.0476809999999999
	.quad	0x4021dd5c96030c24              # double 8.932347
	.quad	0x4002536ac647778e              # double 2.2907310000000001
	.quad	0x3ff7711c6d1e108c              # double 1.4651149999999999
	.quad	0x40216f6f8f041462              # double 8.7176480000000005
	.quad	0x40216be81450efdd              # double 8.7107550000000007
	.quad	0x402361f926c7eae6              # double 9.6913540000000005
	.quad	0x401e225a682b6284              # double 7.5335479999999997
	.quad	0x4001ff1cfbb94962              # double 2.2495669999999999
	.quad	0x401760a02b841249              # double 5.8443610000000001
	.quad	0x3fc28512231832fd              # double 0.14468600000000001
	.quad	0x401ff96638433d6c              # double 7.9935539999999996
	.quad	0x400c8305d95dd4c7              # double 3.5639759999999998
	.quad	0x3f786fcdee34fc61              # double 0.0059659999999999999
	.quad	0x40228861e92923e6              # double 9.2663720000000005
	.quad	0x400e13721d53cddd              # double 3.7594949999999998
	.quad	0x4007a85f4a1272c9              # double 2.9572129999999999
	.quad	0x400dd009b30728e9              # double 3.7265809999999999
	.quad	0x4001010624dd2f1b              # double 2.1255000000000002
	.quad	0x40177867ad8e4324              # double 5.8675829999999998
	.quad	0x401c974aba387592              # double 7.1477459999999997
	.quad	0x40166b506dd69d30              # double 5.6047989999999999
	.quad	0x401dda8869c66d37              # double 7.4634109999999998
	.quad	0x4000c4156e264e48              # double 2.0957439999999998
	.quad	0x40219378ab0c88a4              # double 8.7880299999999991
	.quad	0x3fe1599aa60913a5              # double 0.542188
	.quad	0x400a37f51efb6dca              # double 3.277323
	.quad	0x4020902b62845996              # double 8.2815809999999992
	.quad	0x3fda4ab1d4f9c1f8              # double 0.41080899999999998
	.quad	0x401717bdcf0307f2              # double 5.7731849999999998
	.quad	0x4017ba369fcf3dc0              # double 5.9318489999999997
	.quad	0x40228785510d38ce              # double 9.2646890000000006
	.quad	0x4003aa1c68ec52a4              # double 2.458062
	.quad	0x401128644523f67f              # double 4.2894449999999997
	.quad	0x401b298c3b0c4589              # double 6.7905740000000003
	.quad	0x401db57a786c2268              # double 7.4272249999999999
	.quad	0x3ffcd119ce075f70              # double 1.80105
	.quad	0x402389ff2e48e8a7              # double 9.7695249999999997
	.quad	0x4022bcb51372a38c              # double 9.3685690000000008
	.quad	0x40089b2bba98eda2              # double 3.0757669999999999
	.quad	0x4020efcbd556084a              # double 8.4683519999999994
	.quad	0x3ff489246bf01323              # double 1.283482
	.quad	0x3fecb55043e5321e              # double 0.89713299999999996
	.quad	0x3fed98c197e56473              # double 0.92489699999999997
	.quad	0x3fbdf212d77318fc              # double 0.116975
	.quad	0x40224bc8c0ce91c9              # double 9.1480160000000001
	.quad	0x3ff7a8a6117720c9              # double 1.478674
	.quad	0x402276d4801f7510              # double 9.2320899999999995
	.quad	0x402275640e9d51b5              # double 9.229279
	.quad	0x402176a747d805e6              # double 8.7317450000000001
	.quad	0x3ff9ad2ed783dff4              # double 1.604781
	.quad	0x4013fd9fd36f7e3d              # double 4.9976799999999999
	.quad	0x40186fa0d77b7c78              # double 6.1090119999999999
	.quad	0x40198756c93a7115              # double 6.3821669999999999
	.quad	0x3ff502df0d413123              # double 1.3132010000000001
	.quad	0x4012f33bd9cae211              # double 4.737533
	.quad	0x4016d2a2c2374795              # double 5.7056990000000001
	.quad	0x400cc90364388ebd              # double 3.5981510000000001
	.quad	0x401f8c74751ce28f              # double 7.8871630000000001
	.quad	0x3fe829930be0ded3              # double 0.75507500000000005
	.quad	0x3fd41ea78af3e469              # double 0.31437100000000001
	.quad	0x402019c0a8d21bc1              # double 8.0502979999999997
	.quad	0x4023e9ec2ce46499              # double 9.9568799999999999
	.quad	0x40025f84cad57bc8              # double 2.29664
	.quad	0x401c2e24bba12b5e              # double 7.0450619999999997
	.quad	0x40209b9389b52008              # double 8.3038600000000002
	.quad	0x4017ba2339c0ebee              # double 5.931775
	.quad	0x401f941ede1198af              # double 7.8946490000000002
	.quad	0x3ffad9ce075f6fd2              # double 1.678175
	.quad	0x40079315d701d9f5              # double 2.9468190000000001
	.quad	0x401855ac8a372607              # double 6.083666
	.quad	0x40233419e30014f9              # double 9.6017600000000005
	.quad	0x3fdd958537e2c55d              # double 0.46225100000000002
	.quad	0x400954e3369b9d80              # double 3.1664490000000001
	.quad	0x4017cfcd24e160d9              # double 5.9529310000000004
	.quad	0x4022888765ba6efc              # double 9.2666579999999996
	.quad	0x401e17abb8800eae              # double 7.5231159999999999
	.quad	0x40156ebe1650a45d              # double 5.3581469999999998
	.quad	0x4018c37e2c55c960              # double 6.1909109999999998
	.quad	0x40238fbaa9b499d0              # double 9.7807209999999998
	.quad	0x3ff41d78811b1d93              # double 1.2571950000000001
	.quad	0x3ffe264d3bf2f556              # double 1.8843510000000001
	.quad	0x3fdf7c88e79aae6d              # double 0.49197600000000002
	.quad	0x4017cdf69878316a              # double 5.951136
	.quad	0x3fff12f901083dbc              # double 1.942132
	.quad	0x3f87952d234eb9a1              # double 0.011514999999999999
	.quad	0x3ffcd7f62b6ae7d5              # double 1.8027249999999999
	.quad	0x3fc055b035bd512f              # double 0.12761500000000001
	.quad	0x4014912ec6bce853              # double 5.1417799999999998
	.quad	0x3fe92e07e5a78f26              # double 0.78686900000000004
	.quad	0x401d0413db7f1737              # double 7.2539819999999997
	.quad	0x4012add93c46d82c              # double 4.6697740000000003
	.quad	0x401048255b035bd5              # double 4.0704549999999999
	.quad	0x3ff5bf0cbaf965b2              # double 1.359143
	.quad	0x401d1919ef954eb1              # double 7.2745129999999998
	.quad	0x4020286f47b677f7              # double 8.0789740000000005
	.quad	0x401ec455eaee2004              # double 7.6917340000000003
	.quad	0x4020ded02cd39da1              # double 8.4351819999999993
	.quad	0x4016b86940357a35              # double 5.6800889999999997
	.quad	0x4014d496ededaec5              # double 5.2076070000000003
	.quad	0x3feba78af3e468cb              # double 0.86420200000000003
	.quad	0x400a99cb6848beb6              # double 3.3250950000000001
	.quad	0x4003b3e1437c5693              # double 2.4628320000000001
	.quad	0x3fc0fd86a8fc0d2c              # double 0.13273699999999999
	.quad	0x401d2aa087ca643d              # double 7.2916280000000002
	.quad	0x3ff466fd651b0ccc              # double 1.2751440000000001
	.quad	0x400f3512ec6bce85              # double 3.9009149999999999
	.quad	0x401cb4434e3369ba              # double 7.1760380000000001
	.quad	0x4010fc8366516db1              # double 4.2465950000000001
	.quad	0x4019346bf01322f2              # double 6.3011929999999996
	.quad	0x40039d71b0468449              # double 2.4518770000000001
	.quad	0x40173e2ef4e0114d              # double 5.8107259999999998
	.quad	0x40228a6fa3fcc9eb              # double 9.2703830000000007
	.quad	0x3ff5f682730c6717              # double 1.3726830000000001
	.quad	0x400a0e9d51b4fe7a              # double 3.257136
	.quad	0x401cd0ec74320104              # double 7.204027
	.quad	0x4012a4fce746cb96              # double 4.6611209999999996
	.quad	0x3fe21ad2135daad6              # double 0.565774
	.quad	0x401f742c3c9eecc0              # double 7.8634500000000003
	.quad	0x4013f090f733a8a4              # double 4.984928
	.quad	0x4006de5a78f25a25              # double 2.858571
	.quad	0x40237bb5bf6a0dbb              # double 9.7416210000000003
	.quad	0x3ffaa6698bb4d489              # double 1.6656280000000001
	.quad	0x401aaab324851a87              # double 6.6666990000000004
	.quad	0x40237d10d38cda6e              # double 9.7442689999999992
	.quad	0x40114cee9dd7ecbb              # double 4.3251289999999996
	.quad	0x4021a06f8ad2567a              # double 8.8133510000000008
	.quad	0x4003fa250f840182              # double 2.4971410000000001
	.quad	0x40102fc115df6556              # double 4.0466350000000002
	.quad	0x4009c084a515ce9e              # double 3.2190029999999998
	.quad	0x40215218372e6a77              # double 8.6603410000000007
	.quad	0x401d74bcad9ad85e              # double 7.364001
	.quad	0x3ff4880c73abc947              # double 1.283215
	.quad	0x400921c58255b036              # double 3.1414900000000001
	.quad	0x3fedb6cdf266ba49              # double 0.92856499999999997
	.quad	0x40211220ff540896              # double 8.5354080000000003
	.quad	0x4004c8eb463497b7              # double 2.5981049999999999
	.quad	0x3ff3f1c53f39d1b3              # double 1.246526
	.quad	0x40130ad31fcd24e1              # double 4.7605709999999997
	.quad	0x401eee8d5410f94d              # double 7.7329610000000004
	.quad	0x40234621fafc8b00              # double 9.6369779999999992
	.quad	0x4007709310129cbb              # double 2.9299680000000001
	.quad	0x401b93e4ef0281ba              # double 6.8944279999999996
	.quad	0x4022426a875d56f3              # double 9.1297189999999997
	.quad	0x4000ec4827b6fe2e              # double 2.1153719999999998
	.quad	0x4007b41bfbdf090f              # double 2.9629439999999998
	.quad	0x40037dd441355476              # double 2.4364400000000002
	.quad	0x4010e0d173fb7a5f              # double 4.2195489999999998
	.quad	0x3ffc865f9591cd1c              # double 1.7828059999999999
	.quad	0x400a39991361dc94              # double 3.278124
	.quad	0x4013e4c5da6a4441              # double 4.9734109999999996
	.quad	0x4006196e9bbf0dc7              # double 2.7624179999999998
	.quad	0x3fd5522ea0fd3b2a              # double 0.33314100000000002
	.quad	0x40055401c4fc1df3              # double 2.6660189999999999
	.quad	0x402315ca6ca03c4b              # double 9.5425599999999999
	.quad	0x401f3b25b317efe1              # double 7.8077610000000001
	.quad	0x4007f31fcd24e161              # double 2.9937130000000001
	.quad	0x400b7bb83cf2cf96              # double 3.4354100000000001
	.quad	0x401dac4a4095f245              # double 7.4182519999999998
	.quad	0x3ff94801f75104d5              # double 1.5800799999999999
	.quad	0x401e80fa9c12f09e              # double 7.6259560000000004
	.quad	0x4007100d5e8d5411              # double 2.882838
	.quad	0x40072cb20fb224ab              # double 2.8968240000000001
	.quad	0x40237cfb1183b603              # double 9.7441030000000008
	.quad	0x4021151b4fe79ee0              # double 8.5412239999999997
	.quad	0x401c79f6ec5b078e              # double 7.1191060000000004
	.quad	0x4001a978d4fdf3b6              # double 2.2077499999999999
	.quad	0x402396f1dc50ce4f              # double 9.7948140000000005
	.quad	0x4020ca159817b95a              # double 8.3946959999999997
	.quad	0x4011178e9f6a93f3              # double 4.2730050000000004
	.quad	0x401994a90470a809              # double 6.3951760000000002
	.quad	0x4018e9baa1511e00              # double 6.2282510000000002
	.quad	0x4016b1327243137b              # double 5.673044
	.quad	0x3fdae90bc7b45f18              # double 0.42047400000000001
	.quad	0x4021b25529fe004b              # double 8.8483059999999991
	.quad	0x4009e6afcce1c582              # double 3.2376399999999999
	.quad	0x4020fbf4cb1897a6              # double 8.4921019999999992
	.quad	0x40232d4003254e6e              # double 9.5883789999999998
	.quad	0x4023501322f27350              # double 9.6563960000000009
	.quad	0x4021957cf5f4e443              # double 8.7919689999999999
	.quad	0x401f07264a16a487              # double 7.7569819999999998
	.quad	0x4010cb4bf8fcd680              # double 4.1985320000000002
	.quad	0x4020ec144028e4fc              # double 8.4610920000000007
	.quad	0x4019b0c7c0f45176              # double 6.4226369999999999
	.quad	0x40191b13dfb0d520              # double 6.2764430000000004
	.quad	0x400f477036c9c0a9              # double 3.9098820000000001
	.quad	0x400008ffb8b26395              # double 2.004394
	.quad	0x40055eb0fadf2ecf              # double 2.6712359999999999
	.quad	0x4016b7fae3608d09              # double 5.6796680000000004
	.quad	0x401a5256366d7a57              # double 6.5804070000000001
	.quad	0x3fb9e9e1b089a027              # double 0.101225
	.quad	0x401f18605681ecd5              # double 7.7738050000000002
	.quad	0x402390fcd67fd3f6              # double 9.7831790000000005
	.quad	0x401936290eed02cd              # double 6.3028909999999998
	.quad	0x400c15b035bd512f              # double 3.5105900000000001
	.quad	0x3ff615de58e64b23              # double 1.380339
	.quad	0x40100e5de15ca6ca              # double 4.01403
	.quad	0x401f6b823c85c24c              # double 7.8549889999999998
	.quad	0x402103bfb58d1527              # double 8.5073220000000003
	.quad	0x401a2faacd9e83e4              # double 6.5465499999999999
	.quad	0x402085efe9318762              # double 8.2615960000000008
	.quad	0x40012e88df37329c              # double 2.1477219999999999
	.quad	0x4021af928e0c9d9d              # double 8.8429149999999996
	.quad	0x4008037585be1a82              # double 3.0016889999999998
	.quad	0x3fc24af922962cfe              # double 0.14291300000000001
	.quad	0x400cfcd035371972              # double 3.6234440000000001
	.quad	0x4008bc19c17225b7              # double 3.0918459999999999
	.quad	0x4009783d790752db              # double 3.1837110000000002
	.quad	0x4014c255f3519bd4              # double 5.189781
	.quad	0x3ffa2b0d9513f8db              # double 1.6355109999999999
	.quad	0x40201b8e29f9ce8e              # double 8.0538190000000007
	.quad	0x4021d0e8858ff759              # double 8.9080239999999993
	.quad	0x40229fd2849cb253              # double 9.3121530000000003
	.quad	0x4020dd2135daad60              # double 8.4318939999999998
	.quad	0x40208680e0653006              # double 8.2627020000000009
	.quad	0x4017f58b3f63c31e              # double 5.989789
	.quad	0x40163c9539b88872              # double 5.5591629999999999
	.quad	0x40106024b33daf8e              # double 4.09389
	.quad	0x3fed0cbaf965b20c              # double 0.90780400000000005
	.quad	0x4020cbd640e9d51b              # double 8.3981189999999994
	.quad	0x4013c2f87ad080b6              # double 4.9404009999999996
	.quad	0x400cb66adb402d17              # double 3.5890710000000001
	.quad	0x3ff69307af20ea5b              # double 1.4108959999999999
	.quad	0x3fdc79e16d6dc1a4              # double 0.44493899999999997
	.quad	0x3fdc79bbadc0980b              # double 0.44492999999999999
	.quad	0x40220d30ad46f588              # double 9.0257620000000003
	.quad	0x4014e161a1db877b              # double 5.2200990000000003
	.quad	0x3fef44588a04d120              # double 0.97709299999999998
	.quad	0x401815c03361565c              # double 6.0212409999999998
	.quad	0x3ffcd5336deb95e6              # double 1.8020510000000001
	.quad	0x40189163fdd65a14              # double 6.1419829999999997
	.quad	0x402270caa326e115              # double 9.2202959999999994
	.quad	0x4022bd117b5286b6              # double 9.3692740000000008
	.quad	0x3ff8d57689ca18bd              # double 1.5521149999999999
	.quad	0x401e94dcebfec13c              # double 7.6453740000000003
	.quad	0x3ff48959e6256367              # double 1.283533
	.quad	0x401e82ea52ef911d              # double 7.627847
	.quad	0x400240a17b0f6ad7              # double 2.281558
	.quad	0x3fc6432ca57a786c              # double 0.173925
	.quad	0x402015d11be6e654              # double 8.0426110000000008
	.quad	0x400ed4e3bcd35a86              # double 3.8539500000000002
	.quad	0x40081ff69014b59a              # double 3.0156070000000001
	.quad	0x3fff4f53c579f234              # double 1.9568669999999999
	.quad	0x402248aa64c2f838              # double 9.1419250000000005
	.quad	0x4013c15054ac29bf              # double 4.9387829999999999
	.quad	0x4023fc96ededaec5              # double 9.9933390000000006
	.quad	0x401adcaf709b738e              # double 6.7155129999999996
	.quad	0x400af2f6e82949a5              # double 3.3686349999999998
	.quad	0x400a15c7cd898b2f              # double 3.2606350000000002
	.quad	0x40107778140dd3fe              # double 4.1166689999999999
	.quad	0x401a28d6909aed57              # double 6.5398810000000003
	.quad	0x4022dafa5093964a              # double 9.4276909999999994
	.quad	0x400ac3f359ff4fd7              # double 3.3456790000000001
	.quad	0x4021018bb4d48883              # double 8.5030190000000001
	.quad	0x401704eb56fb8f58              # double 5.754804
	.quad	0x401e6a6a012599ed              # double 7.6039199999999995
	.quad	0x400595dd4c76d118              # double 2.6981760000000001
	.quad	0x400f7595feda6613              # double 3.9324150000000002
	.quad	0x4004f4eca686e7e6              # double 2.6195919999999999
	.quad	0x400ca2a2c2374795              # double 3.579412
	.quad	0x4015269be09bb6aa              # double 5.2877039999999997
	.quad	0x3feba95a6c5d206d              # double 0.86442300000000005
	.quad	0x40190f98fa376923              # double 6.2652320000000001
	.quad	0x40225c05d52c16df              # double 9.1797319999999996
	.quad	0x3fff5ecd4aa10e02              # double 1.960645
	.quad	0x4022efab324851a8              # double 9.4681029999999992
	.quad	0x4009f96fa82e87d3              # double 3.2467950000000001
	.quad	0x4015bbd2b6f19935              # double 5.4334210000000001
	.quad	0x401231cf7878b7a2              # double 4.5486430000000002
	.quad	0x3fe588333fc86cec              # double 0.67287600000000003
	.quad	0x401b961804d98394              # double 6.8965759999999996
	.quad	0x4010c818c5c9a34d              # double 4.1954070000000003
	.quad	0x4017ff36ef8055fc              # double 5.9992330000000003
	.quad	0x4014efb2aae29739              # double 5.2340799999999996
	.quad	0x401ad3c254a3c643              # double 6.7067959999999998
	.quad	0x400b5c9bc7714339              # double 3.4202189999999999
	.quad	0x401736aceaaf35e3              # double 5.8033939999999999
	.quad	0x400a25061416377a              # double 3.268078
	.quad	0x3ff414b380cb6c7a              # double 1.2550539999999999
	.quad	0x4020498611fd5886              # double 8.1436010000000003
	.quad	0x4017a78a2a90cd42              # double 5.9136129999999998
	.quad	0x401a156d5cfaacda              # double 6.5209250000000001
	.quad	0x401b28a1dfb9389b              # double 6.7896799999999997
	.quad	0x40201fa1a0cf1801              # double 8.0617800000000006
	.quad	0x400aa33d6c721922              # double 3.329707
	.quad	0x40159269df97aaac              # double 5.3929819999999999
	.quad	0x3ffd1abc0e38a7e7              # double 1.8190269999999999
	.quad	0x40218a1272c94b38              # double 8.7696719999999999
	.quad	0x400d5e0f7fcfc3f8              # double 3.670928
	.quad	0x3fc0c996b76709fa              # double 0.13115199999999999
	.quad	0x401967f9d6f112fd              # double 6.3515389999999998
	.quad	0x4018ce2bcf91a32b              # double 6.2013389999999999
	.quad	0x402148e496ededaf              # double 8.6423690000000004
	.quad	0x3fe9a1db877ab325              # double 0.80100800000000005
	.quad	0x4017910b630a9153              # double 5.8916449999999996
	.quad	0x400275454152b0a7              # double 2.307261
	.quad	0x40037f1d81f10668              # double 2.437068
	.quad	0x4020ae9f8c21e1d2              # double 8.3410609999999998
	.quad	0x401c46084a515cea              # double 7.0683910000000001
	.quad	0x40155a68b19a415f              # double 5.3382899999999998
	.quad	0x401e164c2f837b4a              # double 7.5217749999999999
	.quad	0x401a42352eb5f5f1              # double 6.5646560000000003
	.quad	0x4013bf4906034f40              # double 4.9368020000000001
	.quad	0x402295c31593e5fb              # double 9.2925039999999992
	.quad	0x40235cf3dc054ef4              # double 9.6815479999999993
	.quad	0x3fff41040bfe3b04              # double 1.953373
	.quad	0x400e9327243137b0              # double 3.8218519999999998
	.quad	0x40080012599ed7c7              # double 3.000035
	.quad	0x402101c4b90214ad              # double 8.5034539999999996
	.quad	0x40088c5f394b7b29              # double 3.0685410000000002
	.quad	0x4013f85271bcdbbe              # double 4.992502
	.quad	0x4001529fe004b7f6              # double 2.1653440000000002
	.quad	0x4018477d0f1f57b4              # double 6.0698129999999999
	.quad	0x4015a355475a31a5              # double 5.4095050000000002
	.quad	0x401098472c0e7bc4              # double 4.1487090000000002
	.quad	0x401e4e0653005815              # double 7.5761960000000003
	.quad	0x4020a8d64d7f0ed4              # double 8.3297600000000002
	.quad	0x401355b20b8066c3              # double 4.8336870000000003
	.quad	0x3fe8fc371da37ef6              # double 0.78078800000000004
	.quad	0x401ec4712e40852b              # double 7.6918379999999997
	.quad	0x401696e7e62dc6e3              # double 5.6473690000000003
	.quad	0x401882dbe7f2c301              # double 6.1277920000000003
	.quad	0x40214fc19c17225b              # double 8.6557739999999992
	.quad	0x401f8b5d031055b9              # double 7.8860970000000003
	.quad	0x401725992428d435              # double 5.7867170000000003
	.quad	0x3fef5c50ce4ead0c              # double 0.98001899999999997
	.quad	0x402324e075f6fd22              # double 9.572025
	.quad	0x4023a831055b8994              # double 9.8284990000000007
	.quad	0x40208a7829068987              # double 8.270448
	.quad	0x401bb436b8f9b131              # double 6.9259899999999996
	.quad	0x401ca1c219eb6391              # double 7.1579670000000002
	.quad	0x400456d43d03968d              # double 2.5423969999999998
	.quad	0x4017dfe8ee6b8306              # double 5.9686620000000001
	.quad	0x3fc59d66adb402d1              # double 0.16886599999999999
	.quad	0x4014932e3821af7d              # double 5.1437309999999998
	.quad	0x400eaf405f6ba062              # double 3.835572
	.quad	0x3ffd59695d91ab8f              # double 1.8343290000000001
	.quad	0x4020de7b3d8e0008              # double 8.4345339999999993
	.quad	0x401db6e0d23d4f16              # double 7.4285920000000001
	.quad	0x3ffcbed41b75a74c              # double 1.796589
	.quad	0x400155bee3d5fdce              # double 2.166868
	.quad	0x400a2eaf251c193b              # double 3.2727949999999999
	.quad	0x4021186af46aa088              # double 8.5476910000000004
	.quad	0x401030c4156e264e              # double 4.0476229999999997
	.quad	0x40029a15db3397dd              # double 2.325237
	.quad	0x401bba038194c016              # double 6.931654
	.quad	0x3ff5022ab25b317f              # double 1.313029
	.quad	0x4010dbb83cf2cf96              # double 4.2145700000000001
	.quad	0x3fecdd78811b1d93              # double 0.90203500000000003
	.quad	0x3ffe433a4723ab00              # double 1.891413
	.quad	0x3ffc9e4a38327675              # double 1.788645
	.quad	0x4014f53f7ced9168              # double 5.2394999999999996
	.quad	0x40048ac18f81e8a3              # double 2.567752
	.quad	0x401255bee3d5fdce              # double 4.583736
	.quad	0x4020d1b994e1a3f4              # double 8.4096189999999992
	.quad	0x402351d7774aba38              # double 9.6598469999999991
	.quad	0x4016b322af577100              # double 5.6749369999999999
	.quad	0x401608cbd1244a62              # double 5.5085899999999999
	.quad	0x401390dcfcc5b8dc              # double 4.8914679999999997
	.quad	0x401d09ed3953dea4              # double 7.2596939999999996
	.quad	0x3ffba3358f2e05cd              # double 1.727346
	.quad	0x3fe14df69878316a              # double 0.540767
	.quad	0x400901da7b0b3919              # double 3.1259049999999999
	.quad	0x3fe50bb6ed677708              # double 0.65768000000000004
	.quad	0x40227421187e7c07              # double 9.2268150000000002
	.quad	0x40003bfad2999568              # double 2.0292870000000001
	.quad	0x3fc24840e1719f80              # double 0.14283000000000001
	.quad	0x40122e35c5b4aa97              # double 4.5451269999999999
	.quad	0x3fd3365cb35f3d7d              # double 0.30019299999999999
	.quad	0x40086fcefaa4766c              # double 3.0545939999999998
	.quad	0x4013abcfd4bf0996              # double 4.9177850000000003
	.quad	0x40171b3bfb58d152              # double 5.7765959999999996
	.quad	0x40238fb762d83c6d              # double 9.7806960000000007
	.quad	0x401c07daa4fca42b              # double 7.0076700000000001
	.quad	0x3ffa291fb3fa6df0              # double 1.63504
	.quad	0x3ff4ef8055fbb518              # double 1.3084720000000001
	.quad	0x40069afe1da7b0b4              # double 2.8256800000000002
	.quad	0x4019bce8d972cd7d              # double 6.434482
	.quad	0x400fdd5347a5b0ff              # double 3.983069
	.quad	0x4000f9f90539fba4              # double 2.1220569999999999
	.quad	0x3ff7f1dd5d3dc8b8              # double 1.4965489999999999
	.quad	0x40045ddc1e7967cb              # double 2.54583
	.quad	0x4011874ea8da7f3d              # double 4.382136
	.quad	0x3ff31640e9d51b50              # double 1.192933
	.quad	0x401b4d556084a516              # double 6.8255210000000002
	.quad	0x402364b3c3e74afd              # double 9.6966839999999994
	.quad	0x4020326612839043              # double 8.0984350000000003
	.quad	0x401e7e41d4b6a61a              # double 7.6232980000000001
	.quad	0x401d0db37c99ae92              # double 7.2633799999999997
	.quad	0x400d99713ad5bee4              # double 3.6999230000000001
	.quad	0x4002a195464dc22b              # double 2.3288980000000001
	.quad	0x4017afd00713f078              # double 5.9216920000000002
	.quad	0x4004fb6c3760bf5d              # double 2.6227649999999998
	.quad	0x402174bbc2b94d94              # double 8.7279949999999999
	.quad	0x40206a65492ff4ba              # double 8.2078039999999994
	.quad	0x4007d341e14bdfd2              # double 2.9781529999999998
	.quad	0x4012eb1960fa15db              # double 4.7295889999999998
	.quad	0x401363e24febd09e              # double 4.8475429999999999
	.quad	0x401b1054ac29bf16              # double 6.7659479999999999
	.quad	0x4004fd6e8af81627              # double 2.6237460000000001
	.quad	0x40142f53825e13b2              # double 5.0462170000000004
	.quad	0x40228c4dec1c1d6d              # double 9.2740320000000001
	.quad	0x400acb6284599674              # double 3.3493089999999999
	.quad	0x3ff8148cb4aec8d6              # double 1.505017
	.quad	0x40163657b84db9c7              # double 5.5530689999999998
	.quad	0x3fdc2d2bb23571d2              # double 0.44025700000000001
	.quad	0x3ff3d7eed45e9186              # double 1.240218
	.quad	0x401fc004b7f5a533              # double 7.9375179999999998
	.quad	0x400f229e90795f67              # double 3.8919039999999998
	.quad	0x40087aacd9e83e42              # double 3.0598999999999998
	.quad	0x4023024c404a72eb              # double 9.5044880000000002
	.quad	0x40021d199bb2788e              # double 2.2642090000000001
	.quad	0x3fd802f2f9873ffb              # double 0.37518000000000001
	.quad	0x4021c7fcfc3f811f              # double 8.8906019999999994
	.quad	0x401ab1af7d30ad47              # double 6.673521
	.quad	0x3fdde34b945308bc              # double 0.46699800000000002
	.quad	0x401fb615ebfa8f7e              # double 7.9278180000000003
	.quad	0x3ff26719b4dcebff              # double 1.1501710000000001
	.quad	0x3fea559b3d07c84b              # double 0.82294999999999996
	.quad	0x400766cb966be7b0              # double 2.9251930000000002
	.quad	0x4016e1b7e0ac7da2              # double 5.7204280000000001
	.quad	0x401f77b0b3919264              # double 7.8668849999999999
	.quad	0x3fff2f944241c3f0              # double 1.9491160000000001
	.quad	0x4020576c8b439581              # double 8.17075
	.quad	0x4001ce807bbb6241              # double 2.2258309999999999
	.quad	0x4021c9806f262889              # double 8.8935580000000005
	.quad	0x3fe982f944241c3f              # double 0.797238
	.quad	0x400abe785b5b7069              # double 3.3430029999999999
	.quad	0x401a90303c07ee0b              # double 6.640809
	.quad	0x40123219652bd3c3              # double 4.5489249999999997
	.quad	0x40192c0e38a7e73a              # double 6.2930229999999998
	.quad	0x3fef33cc4ac6cdaf              # double 0.97507299999999996
	.quad	0x3fc3a3fcc9ea9a3d              # double 0.153442
	.quad	0x401b7a9973d9ec70              # double 6.869726
	.quad	0x3ff1074107314ca9              # double 1.064271
	.quad	0x400acaaeafab53d6              # double 3.3489659999999999
	.quad	0x4021fd349be8ff32              # double 8.9945419999999991
	.quad	0x400459f01b866e44              # double 2.5439150000000001
	.quad	0x40201fe3d1cc100e              # double 8.0622849999999993
	.quad	0x400c55ef1fddebd9              # double 3.54196
	.quad	0x3fe30ea7ce0fc2ec              # double 0.59553900000000004
	.quad	0x401706df3f961805              # double 5.7567110000000001
	.quad	0x3fe64690de093533              # double 0.69611400000000001
	.quad	0x40154e785b5b7069              # double 5.3266309999999999
	.quad	0x401b90fba8826aa9              # double 6.8915850000000001
	.quad	0x3ff20efaa4766c6e              # double 1.128657
	.quad	0x4022422ab25b317f              # double 9.129232
	.quad	0x40161d755bccaf71              # double 5.5287680000000003
	.quad	0x3ffd9fd36f7e3d1d              # double 1.8515200000000001
	.quad	0x401b1ded6ba8c587              # double 6.7792260000000004
	.quad	0x3ff47008a697aede              # double 1.277352
	.quad	0x40207af102363b25              # double 8.2401199999999992
	.quad	0x3fef738e6d15ad10              # double 0.98285599999999995
	.quad	0x400d4e4430b178b3              # double 3.6632159999999998
	.quad	0x40231307af20ea5b              # double 9.5371679999999994
	.quad	0x400096db0dd82fd7              # double 2.0736599999999998
	.quad	0x400305857afea3df              # double 2.3776959999999998
	.quad	0x4019b48d7e02645e              # double 6.4263209999999997
	.quad	0x3ffa0b09e98dcdb3              # double 1.6276949999999999
	.quad	0x401057ab7564302b              # double 4.0856149999999998
	.quad	0x4015640fecdd0d8d              # double 5.3477170000000003
	.quad	0x4022f27264a16a48              # double 9.4735289999999992
	.quad	0x4020d681a9b8cb8e              # double 8.4189579999999999
	.quad	0x401b61ed9dfdac69              # double 6.8456330000000003
	.quad	0x3ff6136501e2584f              # double 1.3797349999999999
	.quad	0x401f3043a2163fdd              # double 7.7971329999999996
	.quad	0x4016258ab92c0618              # double 5.5366619999999998
	.quad	0x4021e5f58c08b75f              # double 8.9491390000000006
	.quad	0x401fdf727136a401              # double 7.96821
	.quad	0x402201b328b6d86f              # double 9.0033200000000004
	.quad	0x401619b738e6d15b              # double 5.5251130000000002
	.quad	0x40118b367a0f9097              # double 4.3859500000000002
	.quad	0x401b023c85c24c40              # double 6.7521839999999997
	.quad	0x3fc28dc11e42e126              # double 0.144951
	.quad	0x3ffc6dab9f559b3d              # double 1.776775
	.quad	0x4015d71f36262cba              # double 5.4600799999999996
	.quad	0x4015da8869c66d37              # double 5.4634109999999998
	.quad	0x4021cb16a055757d              # double 8.8966569999999994
	.quad	0x3fc1e7d1351159c5              # double 0.13988700000000001
	.quad	0x4011b851eb851eb8              # double 4.4299999999999997
	.quad	0x3fdd7fe4bcad9ad8              # double 0.46093099999999998
	.quad	0x3fd3f9ca5bd944aa              # double 0.31212099999999998
	.quad	0x402321f5be5d9e41              # double 9.5663280000000003
	.quad	0x40013126634117f8              # double 2.1489989999999999
	.quad	0x3fcfeee525892685              # double 0.24947800000000001
	.quad	0x402373edb7281fda              # double 9.7264230000000005
	.quad	0x3fd0a775fb2edfe7              # double 0.26022099999999998
	.quad	0x401ea2917507e9d9              # double 7.6587579999999997
	.quad	0x401f250d2806af47              # double 7.7861830000000002
	.quad	0x402340b545c78a6e              # double 9.6263830000000006
	.quad	0x40065dd22856605f              # double 2.795811
	.quad	0x40143625204af923              # double 5.0528760000000004
	.quad	0x401595a31a4bdba1              # double 5.3961300000000003
	.quad	0x400db4a98aa8650e              # double 3.7132139999999998
	.quad	0x4019016b11c6d1e1              # double 6.251385
	.quad	0x400d9a038194c016              # double 3.700202
	.quad	0x4000f43b70ef5665              # double 2.1192540000000002
	.quad	0x400997b84db9c737              # double 3.1990820000000002
	.quad	0x40230a66dbd72bcb              # double 9.5203159999999993
	.quad	0x400a5c358afc47e5              # double 3.2950240000000002
	.quad	0x40132543f1c75819              # double 4.7863920000000002
	.quad	0x401b518372e6a769              # double 6.8296029999999996
	.quad	0x400944f227d028a2              # double 3.1586650000000001
	.quad	0x401beb0813cab820              # double 6.9795230000000004
	.quad	0x40215bfc86cebbba              # double 8.6796609999999994
	.quad	0x401c3e0f3cb3e575              # double 7.0606049999999998
	.quad	0x3ff70a4095f2452c              # double 1.4400029999999999
	.quad	0x3fd0305100a393ee              # double 0.25294899999999998
	.quad	0x3ffe57891e215337              # double 1.896371
	.quad	0x4010465cb35f3d7d              # double 4.0687129999999998
	.quad	0x3fd78de6ddf00abf              # double 0.36803599999999997
	.quad	0x400df7ff9b56323c              # double 3.7460930000000001
	.quad	0x401ccbe2f7b17ce5              # double 7.1991079999999998
	.quad	0x4018823854046413              # double 6.1271680000000002
	.quad	0x402390c64fdb09a6              # double 9.7827629999999992
	.quad	0x401fa94f26aec072              # double 7.9153409999999997
	.quad	0x3fd7426351deefe5              # double 0.363427
	.quad	0x4021451deefe4ffd              # double 8.6349940000000007
	.quad	0x400f8f7e3d1cc101              # double 3.945065
	.quad	0x4020a3e9856a37ac              # double 8.3201409999999995
	.quad	0x400877c5692b3cc5              # double 3.0584820000000001
	.quad	0x3ffa8d413122b7bb              # double 1.659486
	.quad	0x4011737c5692b3cc              # double 4.3627789999999997
	.quad	0x3fe390e23af31b15              # double 0.61143599999999998
	.quad	0x40228de0d66f0cfe              # double 9.2771059999999999
	.quad	0x4020e9e8e6080735              # double 8.4568549999999991
	.quad	0x401b1209aaa3ad19              # double 6.7676150000000002
	.quad	0x401e7c215b9a5a8a              # double 7.6212210000000002
	.quad	0x401c1949e8815e39              # double 7.0246959999999996
	.quad	0x401a9abe6a337a81              # double 6.6511170000000002
	.quad	0x3ffd68533b107747              # double 1.8379700000000001
	.quad	0x4003e9424e592967              # double 2.488896
	.quad	0x4008e2a5614df8b1              # double 3.1106669999999998
	.quad	0x4015597bb7308356              # double 5.3373860000000004
	.quad	0x4020bf162ae4b018              # double 8.3732159999999993
	.quad	0x400e83f8982cb210              # double 3.8144390000000001
	.quad	0x401bde2c55c96031              # double 6.9669660000000002
	.quad	0x3f93f1843c3a42f2              # double 0.019476
	.quad	0x401ebd2fa0d77b7c              # double 7.6847519999999996
	.quad	0x3fc18fa376922d95              # double 0.13719600000000001
	.quad	0x4011bc4113c68662              # double 4.4338420000000003
	.quad	0x400da559f6ec5b08              # double 3.7057380000000002
	.quad	0x3fd8e68e3ef28416              # double 0.38907199999999997
	.quad	0x3fe6202107b78466              # double 0.69142199999999998
	.quad	0x401bb95cc857f306              # double 6.9310179999999999
	.quad	0x401b2b49e01de269              # double 6.7922739999999999
	.quad	0x401c886bdf4c2b52              # double 7.1332240000000002
	.quad	0x40201e733ebbfd72              # double 8.0594730000000006
	.quad	0x4014a02de00d1b71              # double 5.1564249999999996
	.quad	0x4023979e59f2ba9d              # double 9.7961299999999997
	.quad	0x3fe9ad905c033615              # double 0.80243699999999996
	.quad	0x401dafb1183b6028              # double 7.4215739999999996
	.quad	0x400c6af35e310dbf              # double 3.552222
	.quad	0x4010147d3d4280ae              # double 4.0200089999999999
	.quad	0x401a4d44567125dd              # double 6.575456
	.quad	0x401731d4b6a619db              # double 5.7986630000000003
	.quad	0x4021daf9873ffac2              # double 8.9276850000000003
	.quad	0x4011be4c942d490e              # double 4.4358389999999996
	.quad	0x4017e82c6ef3d3a2              # double 5.9767320000000002
	.quad	0x4015a35fc3b4f616              # double 5.4095449999999996
	.quad	0x4004c2962cfd8f0c              # double 2.5950129999999998
	.quad	0x400d1c9d5a187a4a              # double 3.6389719999999999
	.quad	0x401596feb4a6655a              # double 5.397456
	.quad	0x3fba496ededaec4a              # double 0.102683
	.quad	0x4017b351deefe500              # double 5.9251170000000002
	.quad	0x40190668c2613900              # double 6.256259
	.quad	0x3ff0b255f3519bd4              # double 1.043539
	.quad	0x3ff66d601ffb480a              # double 1.4017029999999999
	.quad	0x3ff94cc25072085b              # double 1.58124
	.quad	0x400ccc226809d495              # double 3.599675
	.quad	0x4023acfebd09e12a              # double 9.8378809999999994
	.quad	0x40077714b9cb6849              # double 2.9331450000000001
	.quad	0x4020b8e3ac0c62e5              # double 8.3611120000000003
	.quad	0x4006f8afc47e49b2              # double 2.871429
	.quad	0x402154e5b4245f5b              # double 8.6658150000000003
	.quad	0x401bd074213a0c6b              # double 6.9535679999999997
	.quad	0x400d96555c52e72e              # double 3.6984050000000002
	.quad	0x4020886f8ad2567a              # double 8.2664760000000008
	.quad	0x401100c9107faa04              # double 4.2507669999999997
	.quad	0x3fe3a8f5c28f5c29              # double 0.614375
	.quad	0x3fcb36262cba732e              # double 0.21259
	.quad	0x40170adbc664d3bf              # double 5.7606039999999998
	.quad	0x4019082e44b6e936              # double 6.2579890000000002
	.quad	0x401482b40f66a551              # double 5.1276400000000004
	.quad	0x3ff5d5f45e0b4e12              # double 1.364735
	.quad	0x3ffdc71d60631727              # double 1.8611120000000001
	.quad	0x3ff786e7e62dc6e3              # double 1.4704360000000001
	.quad	0x4022aa40746455eb              # double 9.3325230000000001
	.quad	0x40211e6f2e8c0486              # double 8.5594420000000007
	.quad	0x401e77cd466f501a              # double 7.616994
	.quad	0x401a34ed2cbea4ec              # double 6.5516860000000001
	.quad	0x401a1b60285ec3db              # double 6.5267340000000003
	.quad	0x402361294573a798              # double 9.6897680000000008
	.quad	0x401a840bbb1f255f              # double 6.6289509999999998
	.quad	0x400f098dcdb37c9a              # double 3.8796650000000001
	.quad	0x401eb8c7e28240b8              # double 7.6804500000000004
	.quad	0x400e44ef0281ba80              # double 3.7836590000000001
	.quad	0x3ff6864345cfede9              # double 1.4077789999999999
	.quad	0x401a8c89b0ee49f5              # double 6.6372439999999999
	.quad	0x3fe57082491afc05              # double 0.66998400000000002
	.quad	0x40215cf5d35653ca              # double 8.6815630000000006
	.quad	0x401777a786c22681              # double 5.8668500000000003
	.quad	0x401005260f5e41d5              # double 4.0050280000000003
	.quad	0x401c6ddc1e7967cb              # double 7.1072850000000001
	.quad	0x3ff0f44a1f080304              # double 1.0596410000000001
	.quad	0x4012028bb0a2ca9b              # double 4.5024860000000002
	.quad	0x40189b3d8e000863              # double 6.1516019999999996
	.quad	0x4005c4167a95c854              # double 2.7207460000000001
	.quad	0x4012aec636b09635              # double 4.6706779999999997
	.quad	0x3ffbc75e6362a5e8              # double 1.7361740000000001
	.quad	0x3fb5b5b70691ea79              # double 0.084804000000000004
	.quad	0x4004a69835158b82              # double 2.5813449999999998
	.quad	0x401cdf7e80389f84              # double 7.2182560000000002
	.quad	0x3fe440010c6f7a0b              # double 0.63281299999999996
	.quad	0x3feab8ac18f81e8a              # double 0.83504299999999998
	.quad	0x400a6c7c0f451761              # double 3.3029709999999999
	.quad	0x401ca2324c836651              # double 7.1583949999999996
	.quad	0x40045402d16b97ff              # double 2.5410210000000002
	.quad	0x40020990f301eabc              # double 2.2546710000000001
	.quad	0x401a027ed84d338f              # double 6.5024369999999996
	.quad	0x3fe36f71a7e30878              # double 0.60735399999999995
	.quad	0x3fee21101b003687              # double 0.94153600000000004
	.quad	0x40157a808c8259e2              # double 5.369631
	.quad	0x400b8b6284599674              # double 3.4430589999999999
	.quad	0x3fe27d5454152b0a              # double 0.57779899999999995
	.quad	0x4012804f6dfc5cdd              # double 4.6253029999999997
	.quad	0x4011b013ec460ed8              # double 4.421951
	.quad	0x4009f2839042d8c3              # double 3.2434150000000002
	.quad	0x40068d2d44dca8e3              # double 2.8189340000000001
	.quad	0x3ffcbe4473cd5736              # double 1.7964519999999999
	.quad	0x3ff85eb851eb851f              # double 1.5231250000000001
	.quad	0x4003bd590c0ad03e              # double 2.4674550000000002
	.quad	0x4020318dac258d58              # double 8.0967839999999995
	.quad	0x3ff954de7ea5f84d              # double 1.5832200000000001
	.quad	0x4014b68661ae70c1              # double 5.1782469999999998
	.quad	0x40130e2e2b8c75c5              # double 4.7638480000000003
	.quad	0x40218e8d759ee88e              # double 8.7784230000000001
	.quad	0x4018094f69ca9ef5              # double 6.0090919999999999
	.quad	0x400ca820e6299525              # double 3.5820940000000001
	.quad	0x40222c927913e814              # double 9.0870549999999994
	.quad	0x3fd8fd71b0468449              # double 0.39046900000000001
	.quad	0x4022965e02ea960b              # double 9.2936859999999992
	.quad	0x4020707852f7f499              # double 8.2196680000000004
	.quad	0x4015dadc4c9c90c5              # double 5.4637310000000001
	.quad	0x3ffa864345cfede9              # double 1.6577789999999999
	.quad	0x4010714983d79075              # double 4.1106319999999998
	.quad	0x3fff3b59ddc1e796              # double 1.9519899999999999
	.quad	0x402220a17b0f6ad7              # double 9.0637319999999999
	.quad	0x3fee3ade225fa659              # double 0.94468600000000003
	.quad	0x4021b6ea209aaa3b              # double 8.8572550000000003
	.quad	0x40088e631f8a0903              # double 3.0695250000000001
	.quad	0x400b1045fe111277              # double 3.382946
	.quad	0x4015437eb28d8666              # double 5.3159130000000001
	.quad	0x3ff9168837718655              # double 1.568001
	.quad	0x40084e0b912dba4d              # double 3.0381079999999998
	.quad	0x40163ea140570825              # double 5.5611620000000004
	.quad	0x4018110624dd2f1b              # double 6.0166250000000003
	.quad	0x3fe8e6c6de76427c              # double 0.77817099999999994
	.quad	0x4007f1de69ad42c4              # double 2.9931000000000001
	.quad	0x402375072085b185              # double 9.7285699999999994
	.quad	0x3fdf178b3700474e              # double 0.48581200000000002
	.quad	0x3fe07af20ea5b531              # double 0.51500800000000002
	.quad	0x4018b88094e5d5b2              # double 6.1801779999999997
	.quad	0x3fddd102bc72e276              # double 0.46588200000000002
	.quad	0x401e713b9f127f5f              # double 7.6105790000000004
	.quad	0x40064281ba7fc32f              # double 2.7824740000000001
	.quad	0x4021a102ff8ec0f9              # double 8.8144760000000009
	.quad	0x401a774080f98fa3              # double 6.6164569999999996
	.quad	0x4011b6fd651b0ccc              # double 4.4287010000000002
	.quad	0x4006b14ca925fe97              # double 2.8365719999999999
	.quad	0x3fd8f316e3715400              # double 0.38983699999999999
	.quad	0x3ffbc053e2d6238e              # double 1.7344550000000001
	.quad	0x3fe0009d495182aa              # double 0.50007500000000005
	.quad	0x40103ae03b3e9a70              # double 4.0574960000000004
	.quad	0x40202d9e40c8472c              # double 8.0890979999999998
	.quad	0x4020b11dbca9691a              # double 8.3459299999999992
	.quad	0x3ffc96cd6c2efd44              # double 1.7868170000000001
	.quad	0x401f644aa53fc009              # double 7.8479409999999996
	.quad	0x401551682f944242              # double 5.3294990000000002
	.quad	0x3ffc1a5a89b951c6              # double 1.7564340000000001
	.quad	0x402218a958537e2c              # double 9.0481669999999994
	.quad	0x40235656cd6c2efd              # double 9.6686309999999995
	.quad	0x402007add15f02c5              # double 8.0149980000000003
	.quad	0x4010b80ae1049236              # double 4.179729
	.quad	0x40189b927d45a5fc              # double 6.1519259999999996
	.quad	0x40107cc4ac6cdaf5              # double 4.1218440000000003
	.quad	0x402139ce8d972cd8              # double 8.6129040000000003
	.quad	0x40128595bbbe8790              # double 4.6304540000000003
	.quad	0x4021f49e8815e397              # double 8.9777719999999999
	.quad	0x40227f88333fc86d              # double 9.2490860000000001
	.quad	0x3ffdc4db9c7368ad              # double 1.8605609999999999
	.quad	0x3ff89cef240fa9c1              # double 1.538314
	.quad	0x4019207b784662bb              # double 6.2817210000000001
	.quad	0x401bcd9dba908a26              # double 6.9507969999999997
	.quad	0x4019b6084a515cea              # double 6.4277660000000001
	.quad	0x4022d63c968943e1              # double 9.4184309999999999
	.quad	0x3ff78f2cf95d4e90              # double 1.4724550000000001
	.quad	0x401921248d7e0264              # double 6.2823659999999997
	.quad	0x3fe945b6c3760bf6              # double 0.78976000000000002
	.quad	0x401fc198288051ca              # double 7.939057
	.quad	0x401ecb5aa715831f              # double 7.6985879999999999
	.quad	0x4017fbd44998d046              # double 5.995927
	.quad	0x4013a33269df97ab              # double 4.9093720000000003
	.quad	0x3fd07d6733ebbfd7              # double 0.25765399999999999
	.quad	0x400df4f2f123c42a              # double 3.7446039999999998
	.quad	0x40150e1a3f4666ed              # double 5.2637720000000003
	.quad	0x4008fbd5992428d4              # double 3.1229659999999999
	.quad	0x4016bfdb8fde2ef5              # double 5.6873610000000001
	.quad	0x401581876188b114              # double 5.376493
	.quad	0x40230ea6c1a048e0              # double 9.5286159999999995
	.quad	0x4016ba30db6a1e82              # double 5.6818270000000002
	.quad	0x4001f206c8711d7a              # double 2.2431770000000002
	.quad	0x4009708919ef954f              # double 3.1799490000000001
	.quad	0x40225d72ffd1dcd7              # double 9.182518
	.quad	0x40220f852f7f498c              # double 9.0303129999999995
	.quad	0x40147b8737974602              # double 5.1206329999999998
	.quad	0x40121f0fe047d3d4              # double 4.5303339999999999
	.quad	0x40143d50a88effe3              # double 5.0598780000000003
	.quad	0x40068253111f0c35              # double 2.8136350000000001
	.quad	0x4019f582dbe7f2c3              # double 6.489757
	.quad	0x3ffbe745bf26f1dc              # double 1.7439629999999999
	.quad	0x40202fd7e45803cd              # double 8.0934439999999999
	.quad	0x4002bbdd76683c29              # double 2.3417309999999998
	.quad	0x402272b9b23dd54e              # double 9.2240730000000006
	.quad	0x40180cb6c7a7c9de              # double 6.012416
	.quad	0x40223b6e0d23d4f1              # double 9.1160739999999993
	.quad	0x4014df2389720429              # double 5.2179089999999997
	.quad	0x4009c1ea35935fc4              # double 3.2196850000000001
	.quad	0x3ff37fec13b9f128              # double 1.218731
	.quad	0x4013074751ce28ed              # double 4.7571079999999997
	.quad	0x401a988377186552              # double 6.6489390000000004
	.quad	0x402126cf41f212d7              # double 8.5757999999999992
	.quad	0x402328bf3bea91da              # double 9.5795840000000005
	.quad	0x4016dbc0a06e9ff1              # double 5.7146020000000002
	.quad	0x4020aca3c64345d0              # double 8.3371870000000001
	.quad	0x400c5f327aa68f4b              # double 3.5464829999999998
	.quad	0x40046857f3061c7a              # double 2.5509490000000001
	.quad	0x401ff9d0a67620ef              # double 7.9939600000000003
	.quad	0x40219f36cdf266ba              # double 8.8109649999999995
	.quad	0x40021312b1b36bd3              # double 2.2593130000000001
	.quad	0x4011d25e99e94ab2              # double 4.4554390000000001
	.quad	0x4002fad106ee30cb              # double 2.3724690000000002
	.quad	0x40100f0cfe154435              # double 4.0146980000000001
	.quad	0x4008968a50507a6c              # double 3.0735060000000001
	.quad	0x3fe9fa658c4bd33d              # double 0.81181599999999998
	.quad	0x401b8db163baba7c              # double 6.8883720000000004
	.quad	0x400a0659d12cadde              # double 3.253101
	.quad	0x3ffd9a3a08398a65              # double 1.8501529999999999
	.quad	0x401f40817fc7607c              # double 7.8129939999999998
	.quad	0x4008decdd0d8cb08              # double 3.1087910000000001
	.quad	0x40125aca79357604              # double 4.5886630000000004
	.quad	0x4023f15ce9e5e248              # double 9.9714120000000008
	.quad	0x3fff9b0142f61ed6              # double 1.9753430000000001
	.quad	0x40064379314445aa              # double 2.7829459999999999
	.quad	0x401ca78811b1d92b              # double 7.1636049999999996
	.quad	0x401a1c6a3bddfca0              # double 6.527749
	.quad	0x402380578e5c4eb5              # double 9.7506679999999992
	.quad	0x3ffa3fe7e1fc08fa              # double 1.6406019999999999
	.quad	0x40192c7f34938583              # double 6.2934539999999997
	.quad	0x3feacbb5e0f7fcfc              # double 0.83736699999999997
	.quad	0x4006240852b4d8ba              # double 2.7675939999999999
	.quad	0x40045014b599aa61              # double 2.5391020000000002
	.quad	0x3f8bd1ed9dfdac69              # double 0.013584000000000001
	.quad	0x40003d017dae8188              # double 2.0297879999999999
	.quad	0x40024114d2f5dbba              # double 2.2817780000000001
	.quad	0x400738583621fafd              # double 2.9025120000000002
	.quad	0x3fed5099e0e73605              # double 0.91608900000000004
	.quad	0x401237ec7863beec              # double 4.5546129999999998
	.quad	0x4020ef8feef5ec81              # double 8.4678950000000004
	.quad	0x3fff6bc72e275ab8              # double 1.963813
	.quad	0x400389e3c968943e              # double 2.442329
	.quad	0x401777a28bb0a2cb              # double 5.8668310000000004
	.quad	0x401bcb9841aac53b              # double 6.948823
	.quad	0x401498d8ec95bff0              # double 5.1492649999999998
	.quad	0x40166a7264a16a48              # double 5.6039519999999996
	.quad	0x4002dc55000c953a              # double 2.3575840000000001
	.quad	0x4020eea033e78e19              # double 8.4660659999999996
	.quad	0x402054eb56fb8f58              # double 8.1658580000000001
	.quad	0x401569a5ebb7739f              # double 5.3531719999999998
	.quad	0x402295b8fde2ef4e              # double 9.292427
	.quad	0x3ffd0f91a32b12d3              # double 1.8163009999999999
	.quad	0x40236f27136a4010              # double 9.7170950000000005
	.quad	0x40202591cd1c7de5              # double 8.0733779999999999
	.quad	0x40236f33226c3b92              # double 9.7171869999999991
	.quad	0x401ff86e7e62dc6e              # double 7.9926089999999999
	.quad	0x4019d6134ce3de61              # double 6.4590579999999997
	.quad	0x3ff8b878b7a1c25d              # double 1.545037
	.quad	0x4020d8c23fab10ba              # double 8.4233569999999993
	.quad	0x400dde28aa433509              # double 3.733476
	.quad	0x3fe0672da122fad7              # double 0.51259500000000002
	.quad	0x4023302b1f687b14              # double 9.5940790000000006
	.quad	0x40108a4acf312b1b              # double 4.1350509999999998
	.quad	0x401b40e90bc7b45f              # double 6.8133889999999999
	.quad	0x40025ae924f227d0              # double 2.2943899999999999
	.quad	0x4022fafc69728a61              # double 9.4902069999999998
	.quad	0x3fc7ea4ebdd334c6              # double 0.186838
	.quad	0x401ee28aa433508f              # double 7.7212319999999996
	.quad	0x3f95ab3aabcd78c4              # double 0.021160999999999999
	.quad	0x40199a6b93ccd0ff              # double 6.4008010000000004
	.quad	0x401ca528ae74f2f1              # double 7.1612879999999999
	.quad	0x3ff399b1b79d909f              # double 1.225023
	.quad	0x400d5cb81733226c              # double 3.6702729999999999
	.quad	0x4022cccfaeff5c6c              # double 9.4000219999999998
	.quad	0x4001af57f737da62              # double 2.2106170000000001
	.quad	0x40153ad8a116659d              # double 5.3074669999999999
	.quad	0x401151af7d30ad47              # double 4.329771
	.quad	0x4018fb317efe0ce1              # double 6.2453060000000002
	.quad	0x400edc0b9991361e              # double 3.8574440000000001
	.quad	0x40187a550870110a              # double 6.1194649999999999
	.quad	0x4019ba94ff0025c0              # double 6.4322090000000003
	.quad	0x3ff654d0dcfcc5b9              # double 1.395707
	.quad	0x40148807357e670e              # double 5.1328399999999998
	.quad	0x4022e7ee2c98e53f              # double 9.4529890000000005
	.quad	0x401e0e7fb267c6b9              # double 7.5141590000000002
	.quad	0x40107427418d690a              # double 4.1134310000000003
	.quad	0x4014d98c7e28240b              # double 5.2124499999999996
	.quad	0x3fe2e7d77fae3609              # double 0.59080100000000002
	.quad	0x400aa092ccf6be38              # double 3.3284050000000001
	.quad	0x402297e1b8ed1bf8              # double 9.2966440000000005
	.quad	0x4003b8a5ce5b4246              # double 2.46516
	.quad	0x4001828aa433508f              # double 2.1887409999999998
	.quad	0x4014a9707182235b              # double 5.1654679999999997
	.quad	0x4020008b32ce8965              # double 8.0010619999999992
	.quad	0x400df0984e3ffef4              # double 3.7424780000000002
	.quad	0x40067eaee2003ab8              # double 2.8118569999999998
	.quad	0x40189af922962cfe              # double 6.1513410000000004
	.quad	0x40172c9c4da9003f              # double 5.7935650000000001
	.quad	0x401c0eae18ac9f30              # double 7.0143360000000001
	.quad	0x4022c045564b6630              # double 9.3755290000000002
	.quad	0x401bd54b8bef8ceb              # double 6.9582959999999998
	.quad	0x40045ea35935fc3b              # double 2.5462099999999999
	.quad	0x4008b6598e10cf5b              # double 3.089038
	.quad	0x40208f9378ee2867              # double 8.2804219999999997
	.quad	0x40208d6d19dece57              # double 8.2762229999999999
	.quad	0x3ffd45a708ede54b              # double 1.8295049999999999
	.quad	0x401afe996312f4cf              # double 6.7486319999999997
	.quad	0x4005108919ef954f              # double 2.6330740000000001
	.quad	0x4023e3f11f926c7f              # double 9.9451990000000005
	.quad	0x40226f8b1572580c              # double 9.2178579999999996
	.quad	0x400293c925785f8d              # double 2.3221609999999999
	.quad	0x4007b1d2e0e30447              # double 2.9618280000000001
	.quad	0x402057648c7192ea              # double 8.1706889999999994
	.quad	0x401c771b47842310              # double 7.1163150000000002
	.quad	0x400914d940789614              # double 3.1351800000000001
	.quad	0x3ff9c779a6b50b0f              # double 1.6112
	.quad	0x4021098d477bbf94              # double 8.518656
	.quad	0x4007af98fa376923              # double 2.9607410000000001
	.quad	0x40073585be1a8262              # double 2.9011339999999999
	.quad	0x3fe5414e7ee9142b              # double 0.66422199999999998
	.quad	0x3fe4aa7589efd86b              # double 0.64580800000000005
	.quad	0x401afeebf65dbfcf              # double 6.7489470000000003
	.quad	0x401a0a450acc0bdd              # double 6.5100290000000003
	.quad	0x3ffbcda5daf07bfe              # double 1.7377069999999999
	.quad	0x401b692923e5b856              # double 6.8526959999999999
	.quad	0x4015e3b4f6167232              # double 5.4723699999999997
	.quad	0x401755cdd50a88f0              # double 5.833793
	.quad	0x4012d2036006d0d5              # double 4.7050910000000004
	.quad	0x400a8e3f78bbd380              # double 3.3194569999999999
	.quad	0x4015ee5aff2a172b              # double 5.4827690000000002
	.quad	0x4023c9f969e3c969              # double 9.8944810000000007
	.quad	0x4013be8bc169c23b              # double 4.9360799999999996
	.quad	0x3feb6b8737974602              # double 0.85687599999999997
	.quad	0x40211c2a23bff8a9              # double 8.5550090000000001
	.quad	0x3fe2bafb7e90ff97              # double 0.58532499999999998
	.quad	0x40212a4638c97529              # double 8.5825669999999992
	.quad	0x3ff5845baf533f42              # double 1.344814
	.quad	0x4012651dabe2717a              # double 4.5987460000000002
	.quad	0x401c70ef1348b220              # double 7.1102869999999996
	.quad	0x401a21e8a2ec28b3              # double 6.5331140000000003
	.quad	0x4022ebbff8a8f3aa              # double 9.4604490000000006
	.quad	0x3ff9417763e4abe7              # double 1.5784830000000001
	.quad	0x4021d54f5903a754              # double 8.9166209999999992
	.quad	0x4021544b4d056c51              # double 8.6646370000000008
	.quad	0x3fed952b0a6fc58b              # double 0.92445900000000003
	.quad	0x401eff190d173fb8              # double 7.7491190000000003
	.quad	0x400881d29dc725c4              # double 3.0633900000000001
	.quad	0x3ff83fd3f5b5fa22              # double 1.5155829999999999
	.quad	0x40225dc725c3dee8              # double 9.1831600000000008
	.quad	0x401ae28d8665e02f              # double 6.7212430000000003
	.quad	0x401bb7d30ad46f58              # double 6.9295159999999996
	.quad	0x3fb6fe1da7b0b392              # double 0.089815000000000005
	.quad	0x4013294dd72367e4              # double 4.7903359999999999
	.quad	0x402271e603d57796              # double 9.2224579999999996
	.quad	0x40077fa2ad3e920c              # double 2.937322
	.quad	0x400054e8fb00bcbe              # double 2.0414599999999998
	.quad	0x401be85122318330              # double 6.9768720000000002
	.quad	0x4020b395a294141f              # double 8.3507510000000007
	.quad	0x401325ac03ff6901              # double 4.7867889999999997
	.quad	0x40021b97bb730835              # double 2.2634729999999998
	.quad	0x3ff2aaa8eb463498              # double 1.1666650000000001
	.quad	0x401b2c0bdcad14a1              # double 6.7930140000000003
	.quad	0x40108163779e9d0f              # double 4.1263560000000004
	.quad	0x401250bae89eba6b              # double 4.5788380000000002
	.quad	0x402382645e4e69f0              # double 9.7546719999999993
	.quad	0x4014ce047d3d4281              # double 5.2011890000000003
	.quad	0x4020ae3b688bda94              # double 8.3402969999999996
	.quad	0x3ffc1ad7518b0d0f              # double 1.756553
	.quad	0x40116dc26dce39b4              # double 4.3571869999999997
	.quad	0x400d088b545c78a7              # double 3.6291720000000001
	.quad	0x3ffc0e27e0ef9980              # double 1.7534559999999999
	.quad	0x3fad2220bc382a13              # double 0.056901
	.quad	0x3ffe958ea7ce0fc3              # double 1.911513
	.quad	0x4014ecf5b1c86488              # double 5.2314059999999998
	.quad	0x400cd4d594f26aec              # double 3.603923
	.quad	0x3fe793c254a3c643              # double 0.73678699999999997
	.quad	0x401a3d51b4fe79ee              # double 6.559882
	.quad	0x40087443d46b26c0              # double 3.0567700000000002
	.quad	0x401c636bd2b6f199              # double 7.0970909999999998
	.quad	0x3ffdbb0e5e679464              # double 1.858168
	.quad	0x40139179bfdf7e80              # double 4.8920659999999998
	.quad	0x402188d51f81a587              # double 8.7672509999999999
	.quad	0x4021da146a1a500d              # double 8.9259369999999993
	.quad	0x402290b60f1b25f6              # double 9.2826389999999996
	.quad	0x4000c3c18b502abb              # double 2.0955840000000001
	.quad	0x3fe72dadb8348f54              # double 0.72432600000000003
	.quad	0x3fd4a2c669057d18              # double 0.32243500000000003
	.quad	0x400d9bbd7b2031cf              # double 3.7010450000000001
	.quad	0x40122edfe75bc44c              # double 4.545776
	.quad	0x401e55a294141e9b              # double 7.583628
	.quad	0x401e9c1615ebfa8f              # double 7.6524279999999995
	.quad	0x401c68637bd05af7              # double 7.1019420000000002
	.quad	0x4014aab1d4f9c1f8              # double 5.1666939999999997
	.quad	0x40158835dedf1e08              # double 5.3830179999999999
	.quad	0x4023151e321a2e7f              # double 9.5412459999999992
	.quad	0x40167fd21ff2e48f              # double 5.6248250000000004
	.quad	0x40203eddce7cd035              # double 8.1227859999999996
	.quad	0x40010383ad9f0a1c              # double 2.1267160000000001
	.quad	0x40121dbbe0157eed              # double 4.5290369999999998
	.quad	0x401fc254e6e221c9              # double 7.9397770000000003
	.quad	0x3fee4fb97bb73083              # double 0.94723199999999996
	.quad	0x400424712e40852b              # double 2.5177939999999999
	.quad	0x4015de7c8d195897              # double 5.4672720000000004
	.quad	0x4020fd91cd1c7de5              # double 8.4952529999999999
	.quad	0x4010f47735c182ed              # double 4.2387360000000003
	.quad	0x4013c4dfce3150db              # double 4.9422600000000001
	.quad	0x401882239e6ab9b2              # double 6.1270889999999998
	.quad	0x401e1550ca1cef24              # double 7.5208159999999999
	.quad	0x400f96f8f041461b              # double 3.9487169999999998
	.quad	0x4020c48216c61523              # double 8.3838050000000006
	.quad	0x40156ad3e920c06a              # double 5.3543240000000001
	.quad	0x401ab854477ff152              # double 6.6800090000000001
	.quad	0x401af20296b3354c              # double 6.7363379999999999
	.quad	0x3fb6f78feef5ec81              # double 0.089715000000000003
	.quad	0x401189f2ba9d1f60              # double 4.3847149999999999
	.quad	0x3fe6f9420b3d4ae4              # double 0.71792699999999998
	.quad	0x401d1c94f69ca9ef              # double 7.2779119999999997
	.quad	0x3ffe0fa8b4bf8fcd              # double 1.8788229999999999
	.quad	0x40214a396073de1e              # double 8.6449689999999997
	.quad	0x400b3476295208e1              # double 3.4006159999999999
	.quad	0x4012f81e03f70585              # double 4.7423019999999996
	.quad	0x4022077681669ced              # double 9.0145759999999999
	.quad	0x40095dadfb506dd7              # double 3.1707420000000002
	.quad	0x40200b0121682f94              # double 8.0214929999999995
	.quad	0x4005af648c7192ea              # double 2.7106409999999999
	.quad	0x400900d5629d840a              # double 3.125407
	.quad	0x400f3ce9e5e24788              # double 3.9047429999999999
	.quad	0x4018f9146e4c0df6              # double 6.2432420000000004
	.quad	0x40107422ccb3a259              # double 4.1134139999999997
	.quad	0x401c45ae1cde5d18              # double 7.068047
	.quad	0x4017179702e6644e              # double 5.7730370000000004
	.quad	0x400aae7ee9142b30              # double 3.3352029999999999
	.quad	0x4018ce2089e34331              # double 6.2012960000000001
	.quad	0x4020b987c6327ed8              # double 8.3623639999999995
	.quad	0x40234991148fd9fd              # double 9.6436849999999996
	.quad	0x401aa13ad5bee3d6              # double 6.657451
	.quad	0x4002e5aa2e3c536d              # double 2.3621409999999998
	.quad	0x4020960f3cb3e575              # double 8.2930849999999996
	.quad	0x3ff33b784662bae0              # double 1.2020189999999999
	.quad	0x3ffb1c66d373affb              # double 1.694434
	.quad	0x3ffaa0f0a5efe932              # double 1.6642920000000001
	.quad	0x401b36bf01322f27              # double 6.8034629999999998
	.quad	0x4009c95e17e34b94              # double 3.2233239999999999
	.quad	0x400a86994185058e              # double 3.3157220000000001
	.quad	0x3fc399f5dfeb8d82              # double 0.15313599999999999
	.quad	0x401e3645e4e69f06              # double 7.5530010000000001
	.quad	0x4018f58e219652bd              # double 6.2397999999999998
	.quad	0x4021acf50a02b841              # double 8.8378069999999997
	.quad	0x401a7dddb1209edc              # double 6.622916
	.quad	0x401b999b6f5caf2d              # double 6.9000069999999996
	.quad	0x4014bac57e23f24e              # double 5.1823940000000004
	.quad	0x4008afd3b29a1ba0              # double 3.0858530000000002
	.quad	0x4023f400da1a9329              # double 9.9765689999999995
	.quad	0x3ff76c892ab68cef              # double 1.4639979999999999
	.quad	0x4015794c01605250              # double 5.3684539999999998
	.quad	0x401a028b2a6b0d95              # double 6.5024839999999999
	.quad	0x4015c368f08461fa              # double 5.4408300000000001
	.quad	0x4005f82ba5a03819              # double 2.7461769999999999
	.quad	0x3ffe8e9707182236              # double 1.9098120000000001
	.quad	0x3fcb919ac79702e6              # double 0.21538099999999999
	.quad	0x4023c5173fb7a5f4              # double 9.8849429999999998
	.quad	0x401181e03f705858              # double 4.3768320000000003
	.quad	0x3fe925d8d79d0a67              # double 0.78586999999999996
	.quad	0x40071ac258d5842b              # double 2.8880659999999998
	.quad	0x401bc82517e77d52              # double 6.9454539999999998
	.quad	0x400d157cd466f502              # double 3.6354920000000002
	.quad	0x400858a3b57c4e2f              # double 3.0432809999999999
	.quad	0x4021c8f733a8a3f9              # double 8.8925110000000007
	.quad	0x4015877186551937              # double 5.382269
	.quad	0x40156e0b0af5fd48              # double 5.3574640000000002
	.quad	0x4004feabbcb1cc96              # double 2.6243509999999999
	.quad	0x40229f0563ed0f62              # double 9.3105879999999992
	.quad	0x3fedf6cacd184c27              # double 0.93637599999999999
	.quad	0x3fc4d338f7985272              # double 0.16269600000000001
	.quad	0x40082d31769a9110              # double 3.0220669999999998
	.quad	0x402071af7d30ad47              # double 8.2220420000000001
	.quad	0x40170b56323bbc6f              # double 5.7610710000000003
	.quad	0x3fef9afc04c8bc9d              # double 0.98766900000000001
	.quad	0x400f24b3c3e74afd              # double 3.8929209999999999
	.quad	0x40051775b8130165              # double 2.6364550000000002
	.quad	0x400dafcc5b8dc550              # double 3.710839
	.quad	0x40088d48882f0e0b              # double 3.0689860000000002
	.quad	0x3fa01b866e43aa7a              # double 0.031460000000000002
	.quad	0x4017a613d31b9b67              # double 5.912185
	.quad	0x4019892f2b66b617              # double 6.3839689999999996
	.quad	0x3ff4d27c39368273              # double 1.301388
	.quad	0x4010b2441fea8113              # double 4.1740880000000002
	.quad	0x3ffba7525460aa65              # double 1.7283500000000001
	.quad	0x40186c1ca3a4b557              # double 6.1055780000000004
	.quad	0x40205f6fd21ff2e5              # double 8.1864000000000008
	.quad	0x4023c52ef911cf35              # double 9.8851239999999993
	.quad	0x3fea53671ac14c66              # double 0.822681
	.quad	0x400ad272c94b380d              # double 3.3527580000000001
	.quad	0x4000a49f51697f20              # double 2.0803820000000002
	.quad	0x401b13a9b0681238              # double 6.7692019999999999
	.quad	0x402182ae6c8f7553              # double 8.7552369999999993
	.quad	0x3ffd0422036006d1              # double 1.813509
	.quad	0x3fff401d5c31593e              # double 1.9531529999999999
	.quad	0x40083c6da4484945              # double 3.029506
	.quad	0x4000c6e9ff0cbaf9              # double 2.0971259999999998
	.quad	0x3fc045cbbc2b94d9              # double 0.12712999999999999
	.quad	0x4010e2b884406c01              # double 4.2214070000000001
	.quad	0x40112414e7ee9143              # double 4.2852360000000003
	.quad	0x3f97221858bc59b8              # double 0.022591
	.quad	0x401652a51e321a2e              # double 5.5807079999999996
	.quad	0x3ff81b413986338b              # double 1.5066539999999999
	.quad	0x3fed06573215fcc2              # double 0.90702400000000005
	.quad	0x4012ecd0bb6ed677              # double 4.7312649999999996
	.quad	0x3fe6473cd573647c              # double 0.69619600000000004
	.quad	0x401941ca3a4b5569              # double 6.3142480000000001
	.quad	0x40222fb139c94f6a              # double 9.0931490000000004
	.quad	0x40151ed5ae1cde5d              # double 5.2801119999999999
	.quad	0x40025b4a2339c0ec              # double 2.294575
	.quad	0x4022bede54b48d3b              # double 9.3727900000000001
	.quad	0x4009f88d2a1f8e3b              # double 3.2463630000000001
	.quad	0x400a53d859c8c932              # double 3.29094
	.quad	0x401cd878fabda0e0              # double 7.2113990000000001
	.quad	0x401fa308feac42ea              # double 7.9092140000000004
	.quad	0x4015e1bac2df0d41              # double 5.4704389999999998
	.quad	0x4016256366d7a56e              # double 5.5365120000000001
	.quad	0x40178bfc2224edf6              # double 5.8867039999999999
	.quad	0x40038631f8a0902e              # double 2.4405250000000001
	.quad	0x400642a3cea6c1a0              # double 2.7825389999999999
	.quad	0x4005c9531550ca1d              # double 2.723303
	.quad	0x400d02f7b17ce52e              # double 3.626449
	.quad	0x3ffca3b8a19c9d5a              # double 1.789971
	.quad	0x3ff12e514c22ee42              # double 1.0738080000000001
	.quad	0x3fb1a5fc7e6b3fea              # double 0.068939
	.quad	0x40130d38476f2a5a              # double 4.7629099999999998
	.quad	0x401c1abe6a337a81              # double 7.0261170000000002
	.quad	0x401f006e5cd4ed2d              # double 7.7504210000000002
	.quad	0x401f19aaa3ad18d2              # double 7.7750649999999997
	.quad	0x4020ed097c80841f              # double 8.4629630000000002
	.quad	0x401052352eb5f5f1              # double 4.0802810000000003
	.quad	0x4000b8d25edd0529              # double 2.0902449999999999
	.quad	0x3fd780fdc1615ec0              # double 0.36724800000000002
	.quad	0x401b66238da3c212              # double 6.8497450000000004
	.quad	0x400e53f748a15981              # double 3.7909989999999998
	.quad	0x40223de0f7fcfc40              # double 9.1208570000000008
	.quad	0x40198e1d2178f68c              # double 6.3887830000000001
	.quad	0x401c96694898f606              # double 7.1468860000000003
	.quad	0x400d6e30caa326e1              # double 3.678804
	.quad	0x3fc767125dd095af              # double 0.182833
	.quad	0x4021685122318330              # double 8.7037440000000004
	.quad	0x40013bff8a8f3a9b              # double 2.154296
	.quad	0x3ffdeb7baecd0785              # double 1.869991
	.quad	0x3ffbb4ddf86e3b47              # double 1.731657
	.quad	0x40204b8aa00192a7              # double 8.1475419999999996
	.quad	0x401378cc144028e5              # double 4.867966
	.quad	0x401931c2e33eff19              # double 6.2985949999999997
	.quad	0x3ff7409c3ce2089e              # double 1.453274
	.quad	0x4020687182235b4f              # double 8.2039910000000003
	.quad	0x4021b4df266ba494              # double 8.8532650000000003
	.quad	0x4011128240b78034              # double 4.2680749999999996
	.quad	0x40217292817763e5              # double 8.7237740000000006
	.quad	0x3fe587f455a7d242              # double 0.67284600000000006
	.quad	0x3ffe609784ec636b              # double 1.898582
	.quad	0x400702eba27ae9ab              # double 2.8764259999999999
	.quad	0x40075506573215fd              # double 2.9165160000000001
	.quad	0x40157866e43aa79c              # double 5.3675800000000002
	.quad	0x401dd22fad6cb535              # double 7.45526
	.quad	0x40116111276fb092              # double 4.344792
	.quad	0x4020346d612c6ac2              # double 8.1023969999999998
	.quad	0x400c49246bf01323              # double 3.535714
	.quad	0x401ef918a009f623              # double 7.7432579999999999
	.quad	0x401b7fe718a86d72              # double 6.874905
	.quad	0x4015be52deca2553              # double 5.4358630000000003
	.quad	0x400f7e5d9e40c847              # double 3.9367019999999999
	.quad	0x4011839e279dd3bb              # double 4.378533
	.quad	0x4013ee9d51b4fe7a              # double 4.9830220000000001
	.quad	0x40148b6f9fcb0c02              # double 5.1361679999999996
	.quad	0x40123cf4a558ea7d              # double 4.5595270000000001
	.quad	0x40172ee631f8a090              # double 5.7957999999999998
	.quad	0x4015ac83ec892ab7              # double 5.4184720000000004
	.quad	0x4022fe25c810a56a              # double 9.4963820000000005
	.quad	0x3ffdc3fb3743632c              # double 1.860347
	.quad	0x401419203a322af5              # double 5.0245369999999996
	.quad	0x401f6079a2834d27              # double 7.844214
	.quad	0x4020943cc07aaef3              # double 8.2895260000000004
	.quad	0x40199b78cc9a77e6              # double 6.4018280000000001
	.quad	0x3ffe9c67dfe32a06              # double 1.9131849999999999
	.quad	0x40213bdab5c39bcc              # double 8.6169030000000006
	.quad	0x401155bff04577d9              # double 4.3337399999999997
	.quad	0x400880f5e41d4b6a              # double 3.0629689999999998
	.quad	0x3ff1e7967caea748              # double 1.11904
	.quad	0x4015a9df97aaac11              # double 5.4158920000000004
	.quad	0x4019685985ad538b              # double 6.3519040000000002
	.quad	0x400f8d3953dea466              # double 3.9439570000000002
	.quad	0x4019fbd944aa53fc              # double 6.495946
	.quad	0x4020659d7774aba4              # double 8.1984670000000008
	.quad	0x40174026cc1ca3a5              # double 5.8126480000000003
	.quad	0x4016da88effe2a3d              # double 5.7134130000000001
	.quad	0x4012c0d0edc3bd5a              # double 4.6882970000000004
	.quad	0x4016cdc5d6388659              # double 5.7009499999999997
	.quad	0x4010e5d13d74d595              # double 4.224431
	.quad	0x4010611276fb0920              # double 4.0947969999999998
	.quad	0x40239261e0c5a815              # double 9.7859029999999993
	.quad	0x401215336deb95e6              # double 4.5207040000000003
	.quad	0x401a3232d2bb2357              # double 6.5490219999999999
	.quad	0x3ff03bcf4e874c90              # double 1.014602
	.quad	0x400e94384ba0e842              # double 3.8223729999999998
	.quad	0x3ff8f8e1932d6ece              # double 1.560762
	.quad	0x40146d61b2a27f1b              # double 5.1068179999999996
	.quad	0x4023b121ee675148              # double 9.8459620000000001
	.quad	0x401c2724fa8b4bf9              # double 7.038227
	.quad	0x3fe3ce054690de09              # double 0.61889899999999998
	.quad	0x3fbe6a4441787054              # double 0.118809
	.quad	0x402051c087442c80              # double 8.1596720000000005
	.quad	0x3fb9e13b18dac259              # double 0.101093
	.quad	0x3fd01c79b34a44c8              # double 0.25173800000000002
	.quad	0x401fa5436b8f9b13              # double 7.9113899999999999
	.quad	0x40103707e175d13d              # double 4.0537409999999996
	.quad	0x4019b5b8dc55000d              # double 6.4274630000000004
	.quad	0x4015f97d49d7ba67              # double 5.4936420000000004
	.quad	0x400efbf6a0dbad3a              # double 3.8730289999999998
	.quad	0x4018972ead9274e2              # double 6.1476389999999999
	.quad	0x401675f0b28522ea              # double 5.6151759999999999
	.quad	0x402139ba3ca7503c              # double 8.6127490000000008
	.quad	0x401cc0ffda4052d6              # double 7.1884759999999996
	.quad	0x4006d3b18dac258d              # double 2.8533659999999998
	.quad	0x40136672b884406c              # double 4.850047
	.quad	0x401b08882f0e0a85              # double 6.7583320000000002
	.quad	0x40213634b945308c              # double 8.6058710000000004
	.quad	0x402059a261bf37b9              # double 8.1750670000000003
	.quad	0x4023840420f6f08d              # double 9.7578440000000004
	.quad	0x3fef9e2584f4c6e7              # double 0.98805500000000001
	.quad	0x4016ba9478c868ba              # double 5.682207
	.quad	0x400d6264e48626f6              # double 3.673044
	.quad	0x4023c54ae429e0a4              # double 9.8853369999999998
	.quad	0x401cd80cf9e3864d              # double 7.2109870000000003
	.quad	0x40197685553ef6b6              # double 6.3657430000000002
	.quad	0x3fdf564f97edc7ef              # double 0.48964299999999999
	.quad	0x4022e4a6eb91b3f2              # double 9.4465859999999999
	.quad	0x401fd63e8dda48b6              # double 7.9592229999999997
	.quad	0x401d55b573eab368              # double 7.3337000000000003
	.quad	0x3f66d8f4f93bc0a0              # double 0.0027889999999999998
	.quad	0x402032b649d388a9              # double 8.0990470000000006
	.quad	0x4020b3b60285ec3e              # double 8.3509980000000006
	.quad	0x3fff117614595358              # double 1.9417629999999999
	.quad	0x401c32c061847f56              # double 7.0495619999999999
	.quad	0x4005b765fd8adaba              # double 2.71455
	.quad	0x401bb3e7d135115a              # double 6.9256890000000002
	.quad	0x402361670196d8f5              # double 9.690239
	.quad	0x40146fea3df6db94              # double 5.1092919999999999
	.quad	0x3ffdc6f049a9973e              # double 1.8610690000000001
	.quad	0x40229f4906034f40              # double 9.3111040000000002
	.quad	0x3fcef6cefed63455              # double 0.24190700000000001
	.quad	0x4012f0c8cd63cb81              # double 4.7351409999999996
	.quad	0x400318348f53c57a              # double 2.386819
	.quad	0x3ff18dea033e78e2              # double 1.0971470000000001
	.quad	0x402199d1b2e59afa              # double 8.8004280000000001
	.quad	0x401c66bd2b6f1993              # double 7.1003309999999997
	.quad	0x4015b538ac18f81f              # double 5.4269740000000004
	.quad	0x400f774ddf86e3b4              # double 3.9332539999999998
	.quad	0x40150d249e44fa05              # double 5.2628349999999999
	.quad	0x4014d6cb10342aaa              # double 5.209759
	.quad	0x402368b588e368f1              # double 9.7045100000000008
	.quad	0x401b3db48909289e              # double 6.8102590000000003
	.quad	0x4022ef3471f79421              # double 9.4671970000000005
	.quad	0x3fe502eec7c957cd              # double 0.65660799999999997
	.quad	0x401a6023e9ea1405              # double 6.5938869999999996
	.quad	0x4020af6295208e15              # double 8.342549
	.quad	0x3fe69d3aa369fcf4              # double 0.70669300000000002
	.quad	0x401a5a63305100a4              # double 6.5882690000000004
	.quad	0x4017b0d77b7c7821              # double 5.9226970000000003
	.quad	0x4019e77ea1c68ec5              # double 6.4760689999999999
	.quad	0x401f1ad4f5903a75              # double 7.7762029999999997
	.quad	0x40112449dbec2481              # double 4.2854380000000001
	.quad	0x40151c8d5c74751d              # double 5.2778830000000001
	.quad	0x400f4dc3bd599243              # double 3.9129710000000002
	.quad	0x400ad059641f6449              # double 3.3517329999999999
	.quad	0x40224aa7589efd87              # double 9.1458080000000006
	.quad	0x4005be9424e59296              # double 2.7180559999999998
	.quad	0x4018d16052502eec              # double 6.2044689999999996
	.quad	0x4004723704790b85              # double 2.5557690000000002
	.quad	0x40180c4545846e8f              # double 6.0119829999999999
	.quad	0x4022edccea28fe26              # double 9.4644539999999999
	.quad	0x40163b19a415f45e              # double 5.557715
	.quad	0x400e523704790b85              # double 3.7901440000000002
	.quad	0x4002d2c6ac215b9a              # double 2.3529179999999998
	.quad	0x4010e0780fdc1616              # double 4.2192080000000001
	.quad	0x3fb96494d50ebaae              # double 0.099191000000000001
	.quad	0x4023fdec3dab5c3a              # double 9.9959430000000005
	.quad	0x4012335c5b4aa971              # double 4.5501569999999996
	.quad	0x4020d56d7e889c1b              # double 8.4168509999999994
	.quad	0x401caf23cc8de2ac              # double 7.1710349999999998
	.quad	0x400b0013ec460ed8              # double 3.375038
	.quad	0x400098a65492ff4c              # double 2.0745360000000002
	.quad	0x402167fb267c6b8b              # double 8.7030879999999993
	.quad	0x400f09667b5f1bef              # double 3.8795899999999999
	.quad	0x3ff80ee8d10f51ad              # double 1.5036400000000001
	.quad	0x400a1035371971c1              # double 3.257914
	.quad	0x3fe95629d8409e56              # double 0.79176800000000003
	.quad	0x4012c56d5cfaacda              # double 4.6928000000000001
	.quad	0x4012de64b2314014              # double 4.7171810000000001
	.quad	0x4021966ddf00abf7              # double 8.7938069999999993
	.quad	0x3ff8576bc1eff9f8              # double 1.5213429999999999
	.quad	0x400c9bedb7281fda              # double 3.5761370000000001
	.quad	0x3fc5b05faebc408e              # double 0.16944500000000001
	.quad	0x401bd4202d9cf13d              # double 6.9571540000000001
	.quad	0x4017996638433d6c              # double 5.8998039999999996
	.quad	0x401a152e72da1230              # double 6.5206850000000003
	.quad	0x4017f64020817fc7              # double 5.9904789999999997
	.quad	0x3fff75afaf859429              # double 1.966232
	.quad	0x4021c8d0aaa7ded7              # double 8.8922170000000005
	.quad	0x402117f1f9acffa8              # double 8.5467680000000001
	.quad	0x4019e7221858bc5a              # double 6.4757160000000002
	.quad	0x401d5b9496249a13              # double 7.3394339999999998
	.quad	0x40083dde37585be2              # double 3.0302090000000002
	.quad	0x401fcd20f2becedd              # double 7.9503209999999997
	.quad	0x3fd272e6a76965f5              # double 0.28826299999999999
	.quad	0x401217de5082cf53              # double 4.5233090000000002
	.quad	0x40138242d05f2885              # double 4.8772080000000004
	.quad	0x4021065bea0ba1f5              # double 8.5124200000000005
	.quad	0x40051c2fc69728a6              # double 2.638763
	.quad	0x4009f17df19d66ae              # double 3.2429160000000001
	.quad	0x3fe793a2df9378ee              # double 0.73677199999999998
	.quad	0x3fc05186db50f40e              # double 0.12748799999999999
	.quad	0x40215a4031487768              # double 8.6762709999999998
	.quad	0x401865de15ca6ca0              # double 6.0994799999999998
	.quad	0x4006eaac96cc5fc0              # double 2.8645870000000002
	.quad	0x401f6b46fdeb52ca              # double 7.8547630000000002
	.quad	0x400eb17e77d523b3              # double 3.8366669999999998
	.quad	0x40114d0b30b5aa71              # double 4.3252379999999997
	.quad	0x3ff54cb4aec8d5c7              # double 1.3312269999999999
	.quad	0x3fdaf2f9873ffac2              # double 0.42108000000000001
	.quad	0x40221264c2f837b5              # double 9.0359250000000007
	.quad	0x4020f1fb1e18efbb              # double 8.4726189999999999
	.quad	0x4018cd82fd75e204              # double 6.2006949999999996
	.quad	0x4010a0d173fb7a5f              # double 4.1570489999999998
	.quad	0x3fe59376d5497311              # double 0.67425100000000004
	.quad	0x4020b9ad2135daad              # double 8.3626489999999993
	.quad	0x40217f8769ec2ce4              # double 8.7490799999999993
	.quad	0x4023897fc7607c42              # double 9.7685530000000007
	.quad	0x4021156a9c560c7c              # double 8.5418289999999998
	.quad	0x40204957abb8800f              # double 8.1432470000000006
	.quad	0x40188b6b2af14552              # double 6.1361509999999999
	.quad	0x400a41f6cacd184c              # double 3.2822089999999999
	.quad	0x3ff4e79cc74b838c              # double 1.306546
	.quad	0x401639563a9f383f              # double 5.555993
	.quad	0x40164e3b8a19c9d6              # double 5.5763990000000003
	.quad	0x400f4e7ee9142b30              # double 3.9133279999999999
	.quad	0x3ff2a2ad3e920c07              # double 1.1647160000000001
	.quad	0x4014dd43d03968d7              # double 5.2160789999999997
	.quad	0x4023898f81e8a2ec              # double 9.7686729999999997
	.quad	0x40203519157abb88              # double 8.103707
	.quad	0x401fc55043e5321e              # double 7.9426889999999997
	.quad	0x40149c5fbf83382e              # double 5.1527089999999998
	.quad	0x40175a715831f03d              # double 5.8383229999999999
	.quad	0x401829f23465625a              # double 6.0409629999999996
	.quad	0x3fff929fe004b7f6              # double 1.9732970000000001
	.quad	0x401f58533b107747              # double 7.8362550000000004
	.quad	0x4011548cf7caa759              # double 4.3325690000000003
	.quad	0x401a1dc011d3671b              # double 6.5290530000000002
	.quad	0x402096b313be22e6              # double 8.2943350000000002
	.quad	0x401aad2a62aa1944              # double 6.6691070000000003
	.quad	0x400539b90ea9e6ef              # double 2.6531850000000001
	.quad	0x40135c6f7a0b5ed9              # double 4.8402690000000002
	.quad	0x401a6817763e4abe              # double 6.6016519999999996
	.quad	0x401234f09528f191              # double 4.5516990000000002
	.quad	0x402266af6837f7be              # double 9.2005569999999999
	.quad	0x3ff70c9fb6134ce4              # double 1.440582
	.quad	0x4018e8d79d0a6762              # double 6.2273849999999999
	.quad	0x40181ac0c62e4d1a              # double 6.0261259999999996
	.quad	0x402058ab0c88a47f              # double 8.1731800000000003
	.quad	0x40186f7f498c3b0c              # double 6.1088839999999998
	.quad	0x40211e5f30e7ff58              # double 8.5593199999999996
	.quad	0x401a7bf444e0daa1              # double 6.6210490000000002
	.quad	0x4022603f2d3c792d              # double 9.1879819999999999
	.quad	0x400e06bbdbe3c105              # double 3.753288
	.quad	0x4016996744b2b778              # double 5.6498080000000002
	.quad	0x3ff9ab5c39bcba30              # double 1.604336
	.quad	0x401b81159c497742              # double 6.8760589999999997
	.quad	0x4013788ace24bba1              # double 4.8677169999999998
	.quad	0x3fd7522ea0fd3b2a              # double 0.36439100000000002
	.quad	0x401a117a46173b86              # double 6.5170680000000001
	.quad	0x401b013be22e5de1              # double 6.7512049999999997
	.quad	0x4017c2e275ab7dc8              # double 5.9403170000000003
	.quad	0x4015ac6fbd273d5c              # double 5.4183950000000003
	.quad	0x4012c264a16a4873              # double 4.6898369999999998
	.quad	0x40163dc443914f48              # double 5.5603189999999998
	.quad	0x3f979357603925bb              # double 0.023022999999999998
	.quad	0x402377b1183b6028              # double 9.7337729999999993
	.quad	0x401390691ea78af4              # double 4.8910260000000001
	.quad	0x4014a5308bb90646              # double 5.1613179999999996
	.quad	0x400660f4d7add15f              # double 2.797342
	.quad	0x401233aafff36ac6              # double 4.5504569999999998
	.quad	0x401116adb402d16c              # double 4.2721470000000004
	.quad	0x40200120e1f7d73d              # double 8.0022040000000008
	.quad	0x4001bda2f8bdec5f              # double 2.2175959999999999
	.quad	0x3fe3cb09e98dcdb3              # double 0.61853499999999995
	.quad	0x4010559af9ebe9c9              # double 4.0835990000000004
	.quad	0x401d40578e5c4eb5              # double 7.3128339999999996
	.quad	0x4004c6f0cfe15443              # double 2.5971389999999999
	.quad	0x401a4d44567125dd              # double 6.575456
	.quad	0x40131ffc9795b35b              # double 4.781237
	.quad	0x400aab5d462c343b              # double 3.3336739999999998
	.quad	0x3ffab6a400fba882              # double 1.6695899999999999
	.quad	0x401c0bd4067cf1c3              # double 7.0115509999999999
	.quad	0x401158d1526d8b1e              # double 4.3367360000000001
	.quad	0x40140395c4220360              # double 5.003501
	.quad	0x4013caf922962cfe              # double 4.9482160000000004
	.quad	0x4023b19b90ea9e6f              # double 9.8468900000000001
	.quad	0x4020b54562e09fe8              # double 8.3540449999999993
	.quad	0x3ffc2ecaeea63b69              # double 1.7614240000000001
	.quad	0x40069aae6c8f7553              # double 2.8255279999999998
	.quad	0x4017f8672756861f              # double 5.9925810000000004
	.quad	0x401ac18d25edd053              # double 6.6890150000000004
	.quad	0x4017c523b3636f3b              # double 5.9425189999999999
	.quad	0x3fbc96787ce95fab              # double 0.11167100000000001
	.quad	0x4020e8a73f748a16              # double 8.4544010000000007
	.quad	0x3fea7c19c17225b7              # double 0.82764899999999997
	.quad	0x401ef1c6d1e108c4              # double 7.73611
	.quad	0x401c2909289dadfb              # double 7.0400739999999997
	.quad	0x4019c9595feda661              # double 6.4466299999999999
	.quad	0x3fee5ad31fcd24e1              # double 0.94858699999999996
	.quad	0x3ffebffac1d29dc7              # double 1.92187
	.quad	0x40204d74d594f26b              # double 8.1512820000000001
	.quad	0x3fe97b58d1526d8b              # double 0.79630699999999999
	.quad	0x400e2718a86d71f3              # double 3.7690899999999998
	.quad	0x4022cec743201041              # double 9.4038640000000004
	.quad	0x40025f81a5870da6              # double 2.2966340000000001
	.quad	0x401a5441fea8112c              # double 6.5822830000000003
	.quad	0x40170aa044ae85ba              # double 5.7603770000000001
	.quad	0x3fe8f74256bca537              # double 0.78018299999999996
	.quad	0x4011050b955f7836              # double 4.2549270000000003
	.quad	0x4010e84d338f7985              # double 4.2268569999999999
	.quad	0x4002715054ac29bf              # double 2.305329
	.quad	0x3ffc475e6362a5e8              # double 1.7674240000000001
	.quad	0x402219f2ba9d1f60              # double 9.0506799999999998
	.quad	0x401c1d655e28aa43              # double 7.0287069999999998
	.quad	0x40139352220bc383              # double 4.8938680000000003
	.quad	0x40201561f5be5d9e              # double 8.0417629999999996
	.quad	0x400654fb549f9485              # double 2.7914949999999998
	.quad	0x401daf5a5332acfb              # double 7.4212429999999996
	.quad	0x4004683126e978d5              # double 2.550875
	.quad	0x401bf0c38f366949              # double 6.9851210000000004
	.quad	0x40213ca6eb91b3f2              # double 8.6184609999999999
	.quad	0x401f66d3f9e7b80b              # double 7.8504180000000003
	.quad	0x4008fc91d14e3bcd              # double 3.1233249999999999
	.quad	0x40185e4606748e47              # double 6.0920639999999997
	.quad	0x40210d16db0dd830              # double 8.5255650000000003
	.quad	0x40191094a2b9d3cc              # double 6.2661920000000002
	.quad	0x400417214f0520d1              # double 2.5112939999999999
	.quad	0x4015b93c46d82ba6              # double 5.4308940000000003
	.quad	0x4011cd2135daad60              # double 4.4503219999999999
	.quad	0x401a3b352a843809              # double 6.5578200000000004
	.quad	0x400e48301a79feca              # double 3.7852480000000002
	.quad	0x4019439fba450acc              # double 6.316039
	.quad	0x3fe1a133c1ce6c09              # double 0.55092799999999997
	.quad	0x4014f5b573eab368              # double 5.2399500000000003
	.quad	0x4009025c810a569b              # double 3.126153
	.quad	0x40072c97d8cf398f              # double 2.8967740000000002
	.quad	0x3fb58a222d5171e3              # double 0.084139000000000005
	.quad	0x4022fd0b524399b3              # double 9.4942270000000004
	.quad	0x400b8b46bacf7447              # double 3.443006
	.quad	0x40148d08919ef955              # double 5.1377280000000001
	.quad	0x40234118c197e564              # double 9.6271419999999992
	.quad	0x3fe3016f0068db8c              # double 0.59392500000000004
	.quad	0x4019b58a32f44913              # double 6.4272850000000004
	.quad	0x401e61886df82b1f              # double 7.5952469999999996
	.quad	0x401e4539fba450ad              # double 7.5676040000000002
	.quad	0x3ff16ac647778dd6              # double 1.088568
	.quad	0x3fded8409e55c0fd              # double 0.48194900000000002
	.quad	0x4021784a9478c869              # double 8.7349440000000005
	.quad	0x40075d73c9257860              # double 2.9206310000000002
	.quad	0x40215e1a8262456f              # double 8.6837959999999992
	.quad	0x3ff7c92ccf6be37e              # double 1.486615
	.quad	0x4020e41d084e831b              # double 8.4455340000000003
	.quad	0x40209f6124074645              # double 8.3112879999999993
	.quad	0x3fc26ea854477ff1              # double 0.14400199999999999
	.quad	0x3ff3b6d117b5286b              # double 1.2321329999999999
	.quad	0x400655208e150119              # double 2.791566
	.quad	0x40159f141205bc02              # double 5.4053500000000003
	.quad	0x4018ea98aa8650e7              # double 6.2290979999999996
	.quad	0x400a715ad106ee31              # double 3.3053490000000001
	.quad	0x3fb9a1db877ab325              # double 0.10012600000000001
	.quad	0x4023c99d2391d580              # double 9.893777
	.quad	0x4022b6e84ad794a7              # double 9.3572410000000001
	.quad	0x4023760dcb9a9da6              # double 9.7305740000000007
	.quad	0x3feaf7b5aea3161a              # double 0.84273799999999999
	.quad	0x4018c0c6f7a0b5ee              # double 6.1882590000000004
	.quad	0x40083f8a0902de01              # double 3.0310250000000001
	.quad	0x400e1f1843c3a42f              # double 3.7651829999999999
	.quad	0x401f32c98e53eb3a              # double 7.7995970000000003
	.quad	0x4012501711947cfa              # double 4.5782129999999999
	.quad	0x402344e9e5e24788              # double 9.6345969999999994
	.quad	0x4011e30941c8216c              # double 4.4717149999999997
	.quad	0x3fe531769a91105e              # double 0.66228799999999999
	.quad	0x40157d23d4f15e7d              # double 5.3722070000000004
	.quad	0x4016b738a3b57c4e              # double 5.6789269999999998
	.quad	0x3feeb1d712a0ec74              # double 0.95920899999999997
	.quad	0x401b31522a6f3f53              # double 6.798165
	.quad	0x402077304039abf3              # double 8.2327899999999996
	.quad	0x401af79e59f2ba9d              # double 6.7418149999999999
	.quad	0x401b7ef99806f263              # double 6.8739990000000004
	.quad	0x402320fc504816f0              # double 9.564425
	.quad	0x40204048387df5cf              # double 8.1255509999999997
	.quad	0x40142e1c9b413986              # double 5.0450309999999998
	.quad	0x401426c58eeae9ee              # double 5.0378629999999998
	.quad	0x4022545d41fa7653              # double 9.1647739999999995
	.quad	0x3ff2424b33daf8df              # double 1.1411849999999999
	.quad	0x401d1b990afe60c4              # double 7.2769510000000004
	.quad	0x4012ba322af57710              # double 4.681832
	.quad	0x3f929bae46cfc82a              # double 0.018172000000000001
	.quad	0x4012535e310dbf05              # double 4.5814139999999997
	.quad	0x401fbfb97bb73083              # double 7.9372309999999997
	.quad	0x4020cb51159c4977              # double 8.3971029999999995
	.quad	0x3fd16683c297bfa5              # double 0.27188200000000001
	.quad	0x3ff2811a11233df3              # double 1.1565190000000001
	.quad	0x40223183f91e646f              # double 9.0967099999999999
	.quad	0x401507e6f71a7e31              # double 5.2577170000000004
	.quad	0x402251c8eabffcdb              # double 9.1597360000000005
	.quad	0x3fff48beb5b2d4d4              # double 1.95526
	.quad	0x3ff58f7ec3547e07              # double 1.3475330000000001
	.quad	0x401a51b2a27f1b69              # double 6.5797829999999999
	.quad	0x4018b616f86a0989              # double 6.1778219999999999
	.quad	0x4000e743a647fdc6              # double 2.1129220000000002
	.quad	0x40054e736049ecb3              # double 2.663306
	.quad	0x4021fb395c422036              # double 8.990672
	.quad	0x40008ec95bff0457              # double 2.0697199999999998
	.quad	0x401e49dc725c3dee              # double 7.5721299999999996
	.quad	0x40239b25d4a5df22              # double 9.8030229999999996
	.quad	0x400660d6f544bb1b              # double 2.797285
	.quad	0x40127f1737542a24              # double 4.6241120000000002
	.quad	0x40219faeff5c6c12              # double 8.8118820000000007
	.quad	0x401dec6e2a80064b              # double 7.4808890000000003
	.quad	0x400400fc2eba27af              # double 2.5004810000000002
	.quad	0x4014ce49b1fab96f              # double 5.2014529999999999
	.quad	0x40144bb59ddc1e79              # double 5.0739349999999996
	.quad	0x3ff2f94c87980f56              # double 1.185864
	.quad	0x400173f1843c3a43              # double 2.181613
	.quad	0x401e768943e10060              # double 7.6157579999999996
	.quad	0x4021adba4d6e47dc              # double 8.8393119999999996
	.quad	0x400f5edf1e0828c3              # double 3.9213239999999998
	.quad	0x40002b45ae5ffa3c              # double 2.0211290000000002
	.quad	0x3fe9e327ed84d339              # double 0.808979
	.quad	0x401bdb6e503fb374              # double 6.9642879999999998
	.quad	0x40110b2edfe75bc4              # double 4.2609209999999997
	.quad	0x3fef9f75104d551d              # double 0.98821499999999995
	.quad	0x4013b7e52157689d              # double 4.9295850000000003
	.quad	0x402029cbccf28c7a              # double 8.0816330000000001
	.quad	0x401748ebcc6c54bd              # double 5.8212120000000001
	.quad	0x4022fc8cb4aec8d6              # double 9.4932610000000004
	.quad	0x400b24a72ead9275              # double 3.3928970000000001
	.quad	0x4020efffbce4217d              # double 8.4687479999999997
	.quad	0x4021a5bd2fa0d77b              # double 8.8237089999999991
	.quad	0x401055b20b8066c3              # double 4.0836870000000003
	.quad	0x3ff1324e9c454584              # double 1.0747819999999999
	.quad	0x400269e1b089a027              # double 2.3016999999999999
	.quad	0x3ffd0cb5bb384fd3              # double 1.8156030000000001
	.quad	0x3ffef65a9a804966              # double 1.9351449999999999
	.quad	0x401fb37542a23c00              # double 7.9252520000000004
	.quad	0x3ffa7bb83cf2cf96              # double 1.655205
	.quad	0x3fbbafa7221858bc              # double 0.108149
	.quad	0x3fbbbe553ac4f7ec              # double 0.108373
	.quad	0x3ffb92dcb1465e89              # double 1.723355
	.quad	0x401b3e39b456b442              # double 6.8107670000000002
	.quad	0x4022cfabb8800eae              # double 9.4056069999999998
	.quad	0x3ff6153bd1676641              # double 1.3801840000000001
	.quad	0x4012cfe8ee6b8306              # double 4.7030370000000001
	.quad	0x402187d50225742e              # double 8.7652970000000003
	.quad	0x400be12c6ac215ba              # double 3.4849480000000002
	.quad	0x3ff307e49b1fab97              # double 1.189427
	.quad	0x3fbf6cacd184c272              # double 0.122752
	.quad	0x40022240b780346e              # double 2.2667250000000001
	.quad	0x3ff77a4b5568e821              # double 1.467357
	.quad	0x4020d70d62bf11f9              # double 8.4200239999999997
	.quad	0x3fca6601bc98a223              # double 0.206238
	.quad	0x40059ad85dfa871a              # double 2.7006079999999999
	.quad	0x4023afff9b56323c              # double 9.8437470000000004
	.quad	0x3fca683c297bfa4c              # double 0.20630599999999999
	.quad	0x40217ba7b9170d63              # double 8.7415140000000005
	.quad	0x4017acb295e9e1b1              # double 5.9186500000000004
	.quad	0x40221a9bcfd4bf0a              # double 9.0519700000000007
	.quad	0x4022f2133c1ce6c1              # double 9.4728030000000007
	.quad	0x40201741aef6f8f0              # double 8.0454229999999995
	.quad	0x40134b5a63f9a49c              # double 4.8235869999999998
	.quad	0x402244de7ea5f84d              # double 9.1345100000000006
	.quad	0x401441c3ac929aa2              # double 5.0642230000000001
	.quad	0x4012344aa53fc009              # double 4.5510659999999996
	.quad	0x4013e2c40d0aaa7e              # double 4.9714510000000001
	.quad	0x40229ecce5f7403e              # double 9.3101570000000002
	.quad	0x401f966e86c6583f              # double 7.8969060000000004
	.quad	0x3ff3ac0d6f544bb2              # double 1.2295050000000001
	.quad	0x4014a07c84b5dcc6              # double 5.1567249999999998
	.quad	0x401a6685985ad539              # double 6.6001190000000003
	.quad	0x400fbce4a7b4e54f              # double 3.9672329999999998
	.quad	0x400108d21bc126a6              # double 2.1293069999999998
	.quad	0x4020cf89613d31ba              # double 8.4053450000000005
	.quad	0x401401beb18116ec              # double 5.0017040000000001
	.quad	0x4015f757d5a9eb20              # double 5.4915459999999996
	.quad	0x40236160b6f9fcb1              # double 9.6901910000000004
	.quad	0x400fecbe1eb4202e              # double 3.9905970000000002
	.quad	0x3fee46dc5d638866              # double 0.94615000000000005
	.quad	0x4022adbf26f1dc51              # double 9.3393490000000003
	.quad	0x401fcd98bf7f0670              # double 7.9507779999999997
	.quad	0x40216d8f7121ab4b              # double 8.7139849999999992
	.quad	0x4019771f79420b3d              # double 6.3663309999999997
	.quad	0x401beb228dc981bf              # double 6.9796240000000003
	.quad	0x40230624febd09e1              # double 9.5120009999999997
	.quad	0x3fd461522a6f3f53              # double 0.31844
	.quad	0x400cbe2478854cdb              # double 3.5928429999999998
	.quad	0x40035dbd2fa0d77b              # double 2.4207709999999998
	.quad	0x4023689528f190d1              # double 9.7042629999999991
	.quad	0x40237ded06fef7c2              # double 9.7459489999999995
	.quad	0x401068d6d3b6cbda              # double 4.1023820000000004
	.quad	0x3ff3d65b20b8066c              # double 1.239833
	.quad	0x40034c9fb6134ce4              # double 2.4124140000000001
	.quad	0x4015252c9d16fc9c              # double 5.2863030000000002
	.quad	0x400c662f5989df11              # double 3.5498949999999998
	.quad	0x4022edf4a1272c95              # double 9.4647570000000005
	.quad	0x400f9e68a0d349bf              # double 3.9523480000000002
	.quad	0x400af75a74c09c3d              # double 3.3707780000000001
	.quad	0x401f11244a6223e2              # double 7.7667400000000004
	.quad	0x402222b9d3cbc48f              # double 9.0678239999999999
	.quad	0x400ae43dccea28fe              # double 3.3614459999999999
	.quad	0x401b23ae2541d8e8              # double 6.7848439999999997
	.quad	0x40165f7d30ad46f6              # double 5.5932510000000004
	.quad	0x4022c25ebb7739f3              # double 9.3796289999999995
	.quad	0x4008f33a8a3f8983              # double 3.1187640000000001
	.quad	0x4022bb5cbff47736              # double 9.3659420000000004
	.quad	0x3fe54f80dc33721d              # double 0.66595499999999996
	.quad	0x3fe1d5fbb517a461              # double 0.55737099999999995
	.quad	0x3ff880ad03d9a954              # double 1.531415
	.quad	0x401fd9fcb0c026cc              # double 7.9628779999999999
	.quad	0x3ff15daad601ffb5              # double 1.0853680000000001
	.quad	0x4010b008e9b38d61              # double 4.1719090000000003
	.quad	0x401020164840e172              # double 4.0313350000000003
	.quad	0x4004cb9a9da597d5              # double 2.5994160000000002
	.quad	0x400909c1b54195cd              # double 3.1297640000000002
	.quad	0x400f12756861e929              # double 3.8840129999999999
	.quad	0x400b2c343b70ef56              # double 3.3965839999999998
	.quad	0x3ff37897204295a7              # double 1.2169410000000001
	.quad	0x4009391c4b90214b              # double 3.1528860000000001
	.quad	0x3fb5905c03361566              # double 0.084234000000000003
	.quad	0x3ffd9011904b3c3e              # double 1.8476729999999999
	.quad	0x40172f6ec5b078d9              # double 5.7963209999999998
	.quad	0x4023af26aec0724b              # double 9.8420919999999991
	.quad	0x40211a9973d9ec70              # double 8.551952
	.quad	0x4020dd798d8a979e              # double 8.4325679999999998
	.quad	0x401ba06ee30caa32              # double 6.9066729999999996
	.quad	0x4014fca46e08f217              # double 5.246721
	.quad	0x4018dd6733ebbfd7              # double 6.2162139999999999
	.quad	0x4023b7cfe5860136              # double 9.8590079999999993
	.quad	0x4015b6a593a2df93              # double 5.4283659999999996
	.quad	0x4010a741d084e832              # double 4.1633370000000003
	.quad	0x4010fc54bcf0b6b7              # double 4.2464170000000001
	.quad	0x4020746540cc78ea              # double 8.2273350000000001
	.quad	0x3fe8a6d698fe6927              # double 0.770366
	.quad	0x4006b40d4dc65c70              # double 2.8379159999999999
	.quad	0x400b585b5b70691f              # double 3.4181430000000002
	.quad	0x400d891ea78af3e4              # double 3.6919529999999998
	.quad	0x4020cb42aa9f7b5b              # double 8.3969930000000002
	.quad	0x3fc0ada33bd9cae2              # double 0.130299
	.quad	0x400b21d96e9bbf0e              # double 3.3915280000000001
	.quad	0x40166ccd96206855              # double 5.6062529999999997
	.quad	0x3ff17c0096feb4a6              # double 1.0927739999999999
	.quad	0x401c4f972474538f              # double 7.077725
	.quad	0x400960789613d31c              # double 3.1721050000000002
	.quad	0x4019afd2a62aa194              # double 6.4217019999999998
	.quad	0x400b120d130df9be              # double 3.3838140000000001
	.quad	0x40209b21815a07b3              # double 8.3029899999999994
	.quad	0x401094f3fd933e36              # double 4.1454620000000002
	.quad	0x400f6e94ee392e1f              # double 3.928995
	.quad	0x402195e37585be1b              # double 8.7927510000000009
	.quad	0x401934845132f87b              # double 6.3012860000000002
	.quad	0x4020f0f217093101              # double 8.4705969999999997
	.quad	0x4014663ae2541d8f              # double 5.0998340000000004
	.quad	0x400ab3dd97f62b6b              # double 3.337825
	.quad	0x40152989df1172ef              # double 5.290565
	.quad	0x401d07afea3df6dc              # double 7.2575070000000004
	.quad	0x3fe7958537e2c55d              # double 0.73700200000000005
	.quad	0x40229e8a0d349be9              # double 9.309647
	.quad	0x4021ff2e6a76965f              # double 8.9984009999999994
	.quad	0x3fe56eb91b3f20a7              # double 0.66976599999999997
	.quad	0x4020559231c64ba9              # double 8.1671309999999995
	.quad	0x4021a6b441bb8c33              # double 8.8255940000000006
	.quad	0x3ff16647fdc5931d              # double 1.0874710000000001
	.quad	0x40175b03e20ccff2              # double 5.8388819999999999
	.quad	0x401d7924af0bf1a6              # double 7.3683040000000002
	.quad	0x4019bd0635a426bb              # double 6.4345939999999997
	.quad	0x3fbc50bd87b56b87              # double 0.110607
	.quad	0x400dd3508f648c72              # double 3.7281810000000002
	.quad	0x401179635610adcd              # double 4.3685429999999998
	.quad	0x401af600b0292817              # double 6.7402369999999996
	.quad	0x4015db59578a2a91              # double 5.4642080000000002
	.quad	0x401343547e06961c              # double 4.8157519999999998
	.quad	0x401e21d1d4738a3b              # double 7.5330269999999996
	.quad	0x4020f12641b328b7              # double 8.4709950000000003
	.quad	0x40237074c8ffb8b2              # double 9.7196409999999993
	.quad	0x4019927a20578e5c              # double 6.3930439999999997
	.quad	0x4020b2e6a76965f5              # double 8.3494159999999997
	.quad	0x4009d71c10d7be98              # double 3.2300339999999998
	.quad	0x402080a0902de00d              # double 8.2512249999999998
	.quad	0x400c25aff2a172ac              # double 3.518402
	.quad	0x401b5ab4b72c5198              # double 6.8385800000000003
	.quad	0x401523879c4113c7              # double 5.2846970000000004
	.quad	0x3fe05e69ad42c3ca              # double 0.51152500000000001
	.quad	0x4015625e56cd6c2f              # double 5.346063
	.quad	0x3ff9d5c853c14834              # double 1.6146929999999999
	.quad	0x3fef111cf355cd92              # double 0.97083900000000001
	.quad	0x400604189374bc6a              # double 2.7519999999999998
	.quad	0x400c46a012599ed8              # double 3.5344850000000001
	.quad	0x40103e5e2478854d              # double 4.0609060000000001
	.quad	0x3fd703ff69014b5a              # double 0.35961900000000002
	.quad	0x400465004fb1183b              # double 2.5493169999999998
	.quad	0x40185e18efbb0e5e              # double 6.0918919999999996
	.quad	0x4014e2e6ea854478              # double 5.221584
	.quad	0x40195e5cd4ed2cbf              # double 6.3421510000000003
	.quad	0x40189b7132724313              # double 6.1517989999999996
	.quad	0x40114732df505d10              # double 4.3195300000000003
	.quad	0x3fe3a9a3d2d87f88              # double 0.61445799999999995
	.quad	0x40006a4a8c154c98              # double 2.0518999999999998
	.size	.L__constant_2500xf64, 20000

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
