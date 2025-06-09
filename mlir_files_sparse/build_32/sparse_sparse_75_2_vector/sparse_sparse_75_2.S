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
	.quad	0x41433e59e157b41c              # double 2522291.760489
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
	.quad	50                              # 0x32
	.quad	50                              # 0x32
	.quad	100                             # 0x64
	.quad	100                             # 0x64
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	200                             # 0xc8
	.quad	200                             # 0xc8
	.quad	250                             # 0xfa
	.quad	250                             # 0xfa
	.quad	300                             # 0x12c
	.quad	300                             # 0x12c
	.quad	350                             # 0x15e
	.quad	350                             # 0x15e
	.quad	400                             # 0x190
	.quad	400                             # 0x190
	.quad	450                             # 0x1c2
	.quad	450                             # 0x1c2
	.quad	500                             # 0x1f4
	.quad	500                             # 0x1f4
	.quad	550                             # 0x226
	.quad	550                             # 0x226
	.quad	600                             # 0x258
	.quad	600                             # 0x258
	.quad	650                             # 0x28a
	.quad	650                             # 0x28a
	.quad	700                             # 0x2bc
	.quad	700                             # 0x2bc
	.quad	750                             # 0x2ee
	.quad	750                             # 0x2ee
	.quad	800                             # 0x320
	.quad	800                             # 0x320
	.quad	850                             # 0x352
	.quad	850                             # 0x352
	.quad	900                             # 0x384
	.quad	900                             # 0x384
	.quad	950                             # 0x3b6
	.quad	950                             # 0x3b6
	.quad	1000                            # 0x3e8
	.quad	1000                            # 0x3e8
	.quad	1050                            # 0x41a
	.quad	1050                            # 0x41a
	.quad	1100                            # 0x44c
	.quad	1100                            # 0x44c
	.quad	1150                            # 0x47e
	.quad	1150                            # 0x47e
	.quad	1200                            # 0x4b0
	.quad	1200                            # 0x4b0
	.quad	1250                            # 0x4e2
	.quad	1250                            # 0x4e2
	.quad	1300                            # 0x514
	.quad	1300                            # 0x514
	.quad	1350                            # 0x546
	.quad	1350                            # 0x546
	.quad	1400                            # 0x578
	.quad	1400                            # 0x578
	.quad	1450                            # 0x5aa
	.quad	1450                            # 0x5aa
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.quad	1550                            # 0x60e
	.quad	1550                            # 0x60e
	.quad	1600                            # 0x640
	.quad	1600                            # 0x640
	.quad	1650                            # 0x672
	.quad	1650                            # 0x672
	.quad	1700                            # 0x6a4
	.quad	1700                            # 0x6a4
	.quad	1750                            # 0x6d6
	.quad	1750                            # 0x6d6
	.quad	1800                            # 0x708
	.quad	1800                            # 0x708
	.quad	1850                            # 0x73a
	.quad	1850                            # 0x73a
	.quad	1900                            # 0x76c
	.quad	1900                            # 0x76c
	.quad	1950                            # 0x79e
	.quad	1950                            # 0x79e
	.quad	2000                            # 0x7d0
	.quad	2000                            # 0x7d0
	.quad	2050                            # 0x802
	.quad	2050                            # 0x802
	.quad	2100                            # 0x834
	.quad	2100                            # 0x834
	.quad	2150                            # 0x866
	.quad	2150                            # 0x866
	.quad	2200                            # 0x898
	.quad	2200                            # 0x898
	.quad	2250                            # 0x8ca
	.quad	2250                            # 0x8ca
	.quad	2300                            # 0x8fc
	.quad	2300                            # 0x8fc
	.quad	2350                            # 0x92e
	.quad	2350                            # 0x92e
	.quad	2400                            # 0x960
	.quad	2400                            # 0x960
	.quad	2450                            # 0x992
	.quad	2450                            # 0x992
	.quad	2500                            # 0x9c4
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
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
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x3fecf06d50657321              # double 0.90434899999999996
	.quad	0x4010a6c8711d798e              # double 4.1628740000000004
	.quad	0x4000960b6f9fcb0c              # double 2.073264
	.quad	0x400b872c0e7bc3c6              # double 3.4410020000000001
	.quad	0x401e55ccc89b0ee5              # double 7.5837890000000003
	.quad	0x4010eecaeea63b69              # double 4.2331960000000004
	.quad	0x4018a1b4784230fd              # double 6.157915
	.quad	0x3fc48db8bac710cb              # double 0.160575
	.quad	0x401e5b09635610ae              # double 7.5889030000000002
	.quad	0x400ae84d76ab5808              # double 3.363429
	.quad	0x4019578811b1d92b              # double 6.3354799999999996
	.quad	0x4013adca8e2e2b8c              # double 4.9197179999999996
	.quad	0x4021b818c5c9a34d              # double 8.8595640000000007
	.quad	0x40180aabcd78c437              # double 6.010421
	.quad	0x4015d5bd512ec6bd              # double 5.4587300000000001
	.quad	0x4021946088d6d3b7              # double 8.7897990000000004
	.quad	0x40233952f3c2dadc              # double 9.6119610000000008
	.quad	0x4023ccf11b60ae97              # double 9.9002770000000008
	.quad	0x401fe1cc96462802              # double 7.9705069999999996
	.quad	0x40175a3a4b5568e8              # double 5.8381129999999999
	.quad	0x3fe89ab6d00b45ae              # double 0.76888599999999996
	.quad	0x40191db9841aac54              # double 6.2790280000000003
	.quad	0x3ffb33dc054ef45a              # double 1.700161
	.quad	0x401bcff1950331e4              # double 6.9530700000000003
	.quad	0x401355e0f7fcfc40              # double 4.8338660000000004
	.quad	0x3fe9678183f91e64              # double 0.79388499999999995
	.quad	0x402252686e7e62dc              # double 9.1609529999999992
	.quad	0x402103c7b45f17be              # double 8.5073830000000008
	.quad	0x40234fb2aae29739              # double 9.6556599999999992
	.quad	0x40151f922962cfd9              # double 5.2808310000000001
	.quad	0x40161a52ac753e70              # double 5.5257059999999996
	.quad	0x4020696a8b8f14db              # double 8.2058909999999994
	.quad	0x402304fa69be09bb              # double 9.5097229999999992
	.quad	0x4013ec061847f562              # double 4.9804919999999999
	.quad	0x40049e29307af20f              # double 2.5772270000000002
	.quad	0x3fd0c76d117b5287              # double 0.26217200000000002
	.quad	0x40106eea63b688be              # double 4.1083160000000003
	.quad	0x4003c623d0bfa094              # double 2.4717479999999998
	.quad	0x3fffcc09c3ce208a              # double 1.987314
	.quad	0x3fa11cd1c7de5083              # double 0.033423000000000001
	.quad	0x401033382e44b6e9              # double 4.0500189999999998
	.quad	0x3ff4668f4b61fe22              # double 1.275039
	.quad	0x4003b0364388ebcc              # double 2.4610409999999998
	.quad	0x401761697f1f9ad0              # double 5.845129
	.quad	0x4023ddaf6c69b5a6              # double 9.9329789999999996
	.quad	0x401f9cb7d41743e9              # double 7.9030449999999996
	.quad	0x4020dffa3b9ae0c1              # double 8.4374559999999992
	.quad	0x401c72595bbbe879              # double 7.111669
	.quad	0x4016e3393ab430f5              # double 5.7218980000000004
	.quad	0x40204b87bdcf0308              # double 8.1475200000000001
	.quad	0x3ff0f3aeee957471              # double 1.059493
	.quad	0x40047f359ff4fd6d              # double 2.5621139999999998
	.quad	0x401db03d9a95421c              # double 7.42211
	.quad	0x3ff7b2c83ec892ab              # double 1.4811479999999999
	.quad	0x400c2cb3a2595bbc              # double 3.521827
	.quad	0x40229268b19a415f              # double 9.2859549999999995
	.quad	0x4023da32d2bb2357              # double 9.9261689999999997
	.quad	0x4022863a3a8e7147              # double 9.2621629999999993
	.quad	0x3ffc7fe5c91d14e4              # double 1.7812250000000001
	.quad	0x401b9ef6b5d462c3              # double 6.9052379999999998
	.quad	0x401fcb6a1e81cb47              # double 7.9486470000000002
	.quad	0x4007b885d31337eb              # double 2.9650989999999999
	.quad	0x401cf3de1e2de871              # double 7.2381520000000004
	.quad	0x40005c5de9c0229a              # double 2.0451009999999998
	.quad	0x3fa4e1c58255b036              # double 0.040785000000000002
	.quad	0x4015698f605ab3ab              # double 5.3530860000000002
	.quad	0x401375a1016ce78a              # double 4.8648720000000001
	.quad	0x400df8622c450269              # double 3.7462810000000002
	.quad	0x3fe6a21a719b4dcf              # double 0.70728800000000003
	.quad	0x4010921f6cacd185              # double 4.1426980000000002
	.quad	0x3fe943cc07aaef2c              # double 0.78952599999999995
	.quad	0x4007f3e681a9b8cc              # double 2.9940920000000002
	.quad	0x402331fe21d96e9c              # double 9.5976420000000004
	.quad	0x40144ccf6be37de9              # double 5.0750099999999998
	.quad	0x401ca7774aba3876              # double 7.1635410000000004
	.quad	0x401415e071c53f3a              # double 5.0213640000000002
	.quad	0x401e287d2c7b890d              # double 7.5395399999999996
	.quad	0x40208f9a06a6e32e              # double 8.2804719999999996
	.quad	0x400032452c59fb1e              # double 2.024546
	.quad	0x4023d06fac6045bb              # double 9.907102
	.quad	0x40147d330941c821              # double 5.1222649999999996
	.quad	0x402326047d3d4281              # double 9.5742530000000005
	.quad	0x400c813122b7baed              # double 3.5630820000000001
	.quad	0x40223abf9830e3ce              # double 9.1147430000000007
	.quad	0x401a053cddd6e04c              # double 6.505115
	.quad	0x3fe27961804d9839              # double 0.57731699999999997
	.quad	0x4009489e34330d74              # double 3.1604580000000002
	.quad	0x4014e8151a437825              # double 5.2266430000000001
	.quad	0x401bf4651f3e89a9              # double 6.9886670000000004
	.quad	0x401332239e6ab9b2              # double 4.7989639999999998
	.quad	0x3fd3ad96a6a0125a              # double 0.30747000000000002
	.quad	0x3fffbfbce4217d28              # double 1.9843109999999999
	.quad	0x400a813b18dac259              # double 3.3131010000000001
	.quad	0x4022e4a643cc07ab              # double 9.4465810000000001
	.quad	0x4022925d8d79d0a6              # double 9.2858699999999992
	.quad	0x4023add28d002e23              # double 9.8394969999999997
	.quad	0x4021652b0a6fc58b              # double 8.6975940000000005
	.quad	0x4008b99aa60913a5              # double 3.090627
	.quad	0x402173d4280ae105              # double 8.7262280000000008
	.quad	0x4000a408d8ec95c0              # double 2.080095
	.quad	0x3fce62888b545c79              # double 0.23738200000000001
	.quad	0x401228de2ac32229              # double 4.5399099999999999
	.quad	0x4022d982cb20fb22              # double 9.4248259999999995
	.quad	0x3ff32fc58ab92c06              # double 1.199163
	.quad	0x401363dddb1209ee              # double 4.8475260000000002
	.quad	0x40004ace24bba12b              # double 2.0365259999999998
	.quad	0x401622cd7cf5f4e4              # double 5.5339869999999998
	.quad	0x40106d8383ad9f0a              # double 4.1069469999999999
	.quad	0x3fe1147496aad1d0              # double 0.53374699999999997
	.quad	0x3ff255f88fc9363f              # double 1.1459889999999999
	.quad	0x3ff07f42352eb5f6              # double 1.031069
	.quad	0x3ff2b6b1a2a4db16              # double 1.1696029999999999
	.quad	0x401a3468448cf7cb              # double 6.5511790000000003
	.quad	0x40167aca36199781              # double 5.6199120000000002
	.quad	0x400ffd0d8cb07d0b              # double 3.998561
	.quad	0x3fe4b4d056c508b3              # double 0.64707199999999998
	.quad	0x4023242edbb59ddc              # double 9.5706699999999997
	.quad	0x3fe723ec02f2f987              # double 0.72313499999999997
	.quad	0x3fe2998288051c9f              # double 0.58123899999999995
	.quad	0x3fed6d6777079e5a              # double 0.91960500000000001
	.quad	0x4021b4ec41dd1a22              # double 8.8533650000000002
	.quad	0x401d09fa54c55433              # double 7.2597440000000004
	.quad	0x4023f1d53cddd6e0              # double 9.9723299999999995
	.quad	0x4021cd39756c93a7              # double 8.9008289999999999
	.quad	0x4021f5ba2be0589b              # double 8.9799360000000004
	.quad	0x4022cb2830a0b1bc              # double 9.3967910000000003
	.quad	0x401cda337a80cf9e              # double 7.2130869999999998
	.quad	0x401f1562174c4ce0              # double 7.7708820000000003
	.quad	0x400db59685122318              # double 3.7136659999999999
	.quad	0x401eea47ecfe9b7c              # double 7.72879
	.quad	0x402317f62b6ae7d5              # double 9.5467999999999992
	.quad	0x40198efb2aae2974              # double 6.3896300000000004
	.quad	0x3fe722f8bdec5f39              # double 0.72301899999999997
	.quad	0x3fe2d51d68c692f7              # double 0.58851500000000001
	.quad	0x3fba7c06e19b90eb              # double 0.10345500000000001
	.quad	0x3ff54a1be2b4959e              # double 1.3305929999999999
	.quad	0x40224297396d0918              # double 9.1300600000000003
	.quad	0x401523c31df761cc              # double 5.2849240000000002
	.quad	0x3ff445f17bd8be73              # double 1.2670760000000001
	.quad	0x4023d0f53c579f23              # double 9.9081209999999995
	.quad	0x4021c641700cd856              # double 8.8872180000000007
	.quad	0x3fab305100a393ee              # double 0.053102999999999997
	.quad	0x3ffecf8e7ddca4b1              # double 1.925673
	.quad	0x3ff3723fee2c98e5              # double 1.2153929999999999
	.quad	0x40125d89ce4a7b4e              # double 4.5913459999999997
	.quad	0x40127fab96f21f6d              # double 4.6246780000000003
	.quad	0x401072f23033a472              # double 4.1122519999999998
	.quad	0x401c1acbc8c0ce92              # double 7.0261680000000002
	.quad	0x4010ad887ebf22c0              # double 4.1694659999999999
	.quad	0x4016b759253543af              # double 5.6790510000000003
	.quad	0x4008a31ad2135dab              # double 3.0796410000000001
	.quad	0x401a1e3608d0891a              # double 6.5295030000000001
	.quad	0x402299b0ab2e1694              # double 9.3001760000000004
	.quad	0x4001d868fd199bb2              # double 2.2306689999999998
	.quad	0x4020581adea89763              # double 8.1720799999999993
	.quad	0x40239e40c8472c0e              # double 9.8090879999999991
	.quad	0x4010ad1a65061416              # double 4.1690459999999998
	.quad	0x4020d6e6b8305d96              # double 8.4197290000000002
	.quad	0x40123299d883ba34              # double 4.5494149999999998
	.quad	0x4007e260b2c83ec9              # double 2.9855360000000002
	.quad	0x401ab395810624dd              # double 6.6753749999999998
	.quad	0x4021ffb17ce52ded              # double 8.9994010000000006
	.quad	0x4016e7442c7fbacb              # double 5.7258459999999998
	.quad	0x402236006d0d4995              # double 9.1054720000000007
	.quad	0x4011cc97d8cf398f              # double 4.4497980000000004
	.quad	0x4014805dd8f92afa              # double 5.1253580000000003
	.quad	0x3f7d4d834091c087              # double 0.0071539999999999998
	.quad	0x3ffa708787485e3e              # double 1.6524730000000001
	.quad	0x40112cbc48f10a9a              # double 4.2936870000000003
	.quad	0x4004f3aabcd78c43              # double 2.6189779999999998
	.quad	0x40107760bf5d7881              # double 4.1165799999999999
	.quad	0x4018ca93f290abb4              # double 6.1978299999999997
	.quad	0x40206b3700474d9c              # double 8.2094039999999992
	.quad	0x3fb7fb3743632c1f              # double 0.093676999999999996
	.quad	0x3f8a7c17a89331a1              # double 0.012932000000000001
	.quad	0x4021b60d4562e0a0              # double 8.8555700000000002
	.quad	0x40180a5332acfb76              # double 6.0100829999999998
	.quad	0x400b8d634549b62c              # double 3.4440369999999998
	.quad	0x3fe2d60e94ee392e              # double 0.58862999999999999
	.quad	0x40225b4d056c508b              # double 9.1783219999999996
	.quad	0x4022cb3bb83cf2d0              # double 9.3969400000000007
	.quad	0x40140ea2d2fe3f36              # double 5.0142930000000003
	.quad	0x3ff2aabcd78c4370              # double 1.1666840000000001
	.quad	0x4021f9cf7878b7a2              # double 8.9879110000000004
	.quad	0x40123e0daa0cae64              # double 4.5605989999999998
	.quad	0x400bc55a7d24180d              # double 3.4713639999999999
	.quad	0x4017e187a4a48f97              # double 5.9702440000000001
	.quad	0x400b9d1f601797cc              # double 3.4517199999999999
	.quad	0x40161157689ca18c              # double 5.5169350000000001
	.quad	0x4023dd1dabe2717a              # double 9.9318670000000004
	.quad	0x401d4e53eb399f5e              # double 7.326492
	.quad	0x3ff9b57b41bfbdf1              # double 1.6068070000000001
	.quad	0x40011e492bc2fc69              # double 2.1397879999999998
	.quad	0x401a354eb13dfb0d              # double 6.5520579999999997
	.quad	0x3ff025edd052934b              # double 1.00926
	.quad	0x4003070fbeb9e493              # double 2.3784480000000001
	.quad	0x3ffa6a619da9c993              # double 1.6509720000000001
	.quad	0x4023b537c1376d55              # double 9.8539410000000007
	.quad	0x402190a19c9d5a18              # double 8.7824829999999992
	.quad	0x400cb2af1455219b              # double 3.5872480000000002
	.quad	0x40233882491afc05              # double 9.6103690000000003
	.quad	0x3ff7c3504c48adef              # double 1.4851840000000001
	.quad	0x4006fbba55d1c3ad              # double 2.8729140000000002
	.quad	0x401365caafbc1ace              # double 4.8494060000000001
	.quad	0x4003be931876188b              # double 2.468054
	.quad	0x401732e1ef73c0c2              # double 5.79969
	.quad	0x400e4333764f11b6              # double 3.782813
	.quad	0x3fd6076c050bd87b              # double 0.34420299999999998
	.quad	0x402084fe58601366              # double 8.2597529999999999
	.quad	0x400c8ea9e6eeb702              # double 3.5696599999999998
	.quad	0x401bbefdc9c4da90              # double 6.936515
	.quad	0x402207d86a8fc0d3              # double 9.0153230000000004
	.quad	0x3fffe8a82a5614e0              # double 1.9943010000000001
	.quad	0x4014e45baf533f42              # double 5.2230059999999998
	.quad	0x3ff07fc7607c419a              # double 1.031196
	.quad	0x4019854f7a919696              # double 6.3801860000000001
	.quad	0x401ab127b2cc7086              # double 6.6730029999999996
	.quad	0x4011659b3d07c84b              # double 4.3492249999999997
	.quad	0x3ff3740e5a35d67c              # double 1.2158340000000001
	.quad	0x401bd715c63ae254              # double 6.9600439999999999
	.quad	0x4016e80b242070b9              # double 5.7266050000000002
	.quad	0x40127f8bdec5f395              # double 4.6245570000000003
	.quad	0x4021ce5fd8adab9f              # double 8.9030749999999994
	.quad	0x3ff0ff69014b599b              # double 1.0623560000000001
	.quad	0x40046c1ebc83a96d              # double 2.5527929999999999
	.quad	0x401193fdd65a1449              # double 4.3945230000000004
	.quad	0x401f73721d53cddd              # double 7.8627399999999996
	.quad	0x401335e529bae46d              # double 4.802632
	.quad	0x4016ed80a17b0f6b              # double 5.7319360000000001
	.quad	0x402341e71044f1a2              # double 9.6287160000000007
	.quad	0x4020026efc371da3              # double 8.0047529999999991
	.quad	0x3fec25247cb70ac4              # double 0.87953400000000003
	.quad	0x401d09dcf893faf4              # double 7.2596319999999999
	.quad	0x401be2b5e529bae4              # double 6.9713969999999996
	.quad	0x3fe3175afaf85943              # double 0.59660100000000005
	.quad	0x401e9b8e8ea39c52              # double 7.6519110000000001
	.quad	0x3fc69e5e2478854d              # double 0.176708
	.quad	0x4001cee0f3cb3e57              # double 2.2260149999999999
	.quad	0x4023de7381d7dbf5              # double 9.9344750000000008
	.quad	0x401f8af46aa087ca              # double 7.8856979999999997
	.quad	0x401357aa25d8d79d              # double 4.83561
	.quad	0x3fc5ad538ac18f82              # double 0.169352
	.quad	0x3ff944b2b777d0f2              # double 1.579272
	.quad	0x400d336b4c7f3494              # double 3.6501070000000002
	.quad	0x3ff5fcc2938de6de              # double 1.374209
	.quad	0x3ff0b4bb5e0f7fd0              # double 1.0441240000000001
	.quad	0x400d473bc903ea70              # double 3.6597819999999999
	.quad	0x401bdc5d63886595              # double 6.9652000000000003
	.quad	0x401e0ea4228997c4              # double 7.5142980000000001
	.quad	0x400bbc1acde19fc3              # double 3.4668480000000002
	.quad	0x4018b2e3821af7d3              # double 6.174696
	.quad	0x40187b5568e820e6              # double 6.1204429999999999
	.quad	0x3ffc09741d084e83              # double 1.752308
	.quad	0x40212e40420f6f09              # double 8.5903340000000004
	.quad	0x4000860b2c83ec89              # double 2.0654509999999999
	.quad	0x4016f287c200c0f0              # double 5.7368459999999999
	.quad	0x4011d3bc0a06e9ff              # double 4.456772
	.quad	0x40173cf67b1c0011              # double 5.8095340000000002
	.quad	0x4004f677f6b1a2a5              # double 2.6203460000000001
	.quad	0x4008554434e3369c              # double 3.0416340000000002
	.quad	0x3ff65e01de269164              # double 1.3979509999999999
	.quad	0x3ff8a94467381d7e              # double 1.5413250000000001
	.quad	0x401855e39713ad5c              # double 6.0838760000000001
	.quad	0x40234cddf86e3b47              # double 9.650131
	.quad	0x4019df02c4d65e46              # double 6.467784
	.quad	0x3ff4055a7d24180d              # double 1.2513069999999999
	.quad	0x40239c3e74afd545              # double 9.8051639999999995
	.quad	0x400a5476295208e1              # double 3.2912409999999999
	.quad	0x40201c63065f9592              # double 8.0554430000000004
	.quad	0x3ff7280389f83be6              # double 1.4472689999999999
	.quad	0x4022b88a47ecfe9b              # double 9.3604299999999991
	.quad	0x40184e24bba12b5e              # double 6.0763119999999997
	.quad	0x401b9996744b2b77              # double 6.8999879999999996
	.quad	0x3ff7ddaad601ffb5              # double 1.4916180000000001
	.quad	0x3ff3f0dd82fd75e2              # double 1.246305
	.quad	0x400b786d2ed783e0              # double 3.433802
	.quad	0x3ff21a1ec4e7253e              # double 1.1313770000000001
	.quad	0x4019a78e1932d6ed              # double 6.4136280000000001
	.quad	0x40238776a2f48c2e              # double 9.7645769999999992
	.quad	0x4015eacf312b1b37              # double 5.4793060000000002
	.quad	0x402161235f809918              # double 8.6897230000000008
	.quad	0x40164777d0f1f57b              # double 5.5697929999999998
	.quad	0x401dc352a8438088              # double 7.4407449999999997
	.quad	0x401854e160d887ec              # double 6.082891
	.quad	0x4002c0c7c0f45176              # double 2.344131
	.quad	0x40001074a771c971              # double 2.008035
	.quad	0x40069c219eb6390d              # double 2.8262360000000002
	.quad	0x401296db940fecdd              # double 4.647322
	.quad	0x401a5d0d49949e88              # double 6.5908709999999999
	.quad	0x400e47546d3f9e7c              # double 3.7848290000000002
	.quad	0x40152c054ef459da              # double 5.2929890000000004
	.quad	0x4022d8aa8650e779              # double 9.4231759999999997
	.quad	0x40155474538ef34d              # double 5.3324749999999996
	.quad	0x4012f1450efdc9c5              # double 4.7356150000000001
	.quad	0x3ffd02a9930be0df              # double 1.81315
	.quad	0x40037bd0e12e83a1              # double 2.435457
	.quad	0x3ffec0980b242071              # double 1.9220200000000001
	.quad	0x400a6c59fb1e18f0              # double 3.3029060000000001
	.quad	0x3ff5e44d87724fa9              # double 1.3682380000000001
	.quad	0x400160c176577532              # double 2.1722440000000001
	.quad	0x4022f087442c7fbb              # double 9.4697820000000003
	.quad	0x401bb0f2becedd48              # double 6.9228009999999998
	.quad	0x40133db50f40e5a3              # double 4.8102609999999997
	.quad	0x40141b851eb851ec              # double 5.0268750000000004
	.quad	0x401745f80991793a              # double 5.8183290000000003
	.quad	0x40143d50a88effe3              # double 5.0598780000000003
	.quad	0x402042f1a9fbe76d              # double 8.1307500000000008
	.quad	0x401325d5b24e9c45              # double 4.7869479999999998
	.quad	0x4021ab47e8ccdd94              # double 8.8345330000000004
	.quad	0x400e21d2178f68be              # double 3.7665139999999999
	.quad	0x4005bf6e3f78bbd4              # double 2.7184720000000002
	.quad	0x401664003254e6e2              # double 5.5976569999999999
	.quad	0x4009b355475a31a5              # double 3.2125650000000001
	.quad	0x4021afe2c55c9603              # double 8.8435269999999999
	.quad	0x4016e02539756c94              # double 5.7188920000000003
	.quad	0x4002bc0db2702a35              # double 2.3418230000000002
	.quad	0x4001efb2aae29739              # double 2.2420399999999998
	.quad	0x400bc76534373f31              # double 3.4723609999999998
	.quad	0x40226a1b7e0ac7da              # double 9.2072409999999998
	.quad	0x40162e5c91d14e3c              # double 5.5452750000000002
	.quad	0x40102743632c1f43              # double 4.0383430000000002
	.quad	0x4006c79bbadc0981              # double 2.8474650000000001
	.quad	0x40139c5d206c8712              # double 4.9026990000000001
	.quad	0x40128a83f4eca687              # double 4.6352690000000001
	.quad	0x40161eff1950331e              # double 5.5302699999999998
	.quad	0x4021140314877681              # double 8.5390859999999993
	.quad	0x4011b5df6555c52e              # double 4.4276099999999996
	.quad	0x401af1882adc4c9d              # double 6.7358710000000004
	.quad	0x400561669ced0b31              # double 2.6725590000000001
	.quad	0x400e4ca25529fe00              # double 3.7874189999999999
	.quad	0x4022220b1bbcf4e8              # double 9.0664909999999992
	.quad	0x3fadbccaf709b739              # double 0.058081000000000001
	.quad	0x401bd77d0f1f57b4              # double 6.9604379999999999
	.quad	0x3feafaf42784a948              # double 0.84313400000000005
	.quad	0x4014e63497b7414a              # double 5.2248099999999997
	.quad	0x401bb17a02fb5d03              # double 6.9233169999999999
	.quad	0x401762cd39da1661              # double 5.8464859999999996
	.quad	0x3fc1f30e7ff583a5              # double 0.14022999999999999
	.quad	0x401dddb2b346130a              # double 7.4665020000000002
	.quad	0x40054ebdd334c5da              # double 2.6634479999999998
	.quad	0x401468d60a633051              # double 5.102379
	.quad	0x402016b67c286f8b              # double 8.0443610000000003
	.quad	0x401a13b14a90470b              # double 6.5192310000000004
	.quad	0x3f4f7d73c9257860              # double 9.6100000000000005E-4
	.quad	0x4022db72606fac60              # double 9.4286069999999995
	.quad	0x401445c9a34ca0c3              # double 5.0681520000000004
	.quad	0x4022109ca18bd662              # double 9.0324449999999992
	.quad	0x40209103ea704bc2              # double 8.2832329999999992
	.quad	0x402341142b302f73              # double 9.6271070000000005
	.quad	0x40103e90bc7b45f1              # double 4.0610989999999996
	.quad	0x4010c033a4723ab0              # double 4.187697
	.quad	0x4020f035bd512ec7              # double 8.4691600000000005
	.quad	0x401b6ca9691a75cd              # double 6.856115
	.quad	0x401bcb1dd5d3dc8c              # double 6.9483560000000004
	.quad	0x4009e4a8c154c986              # double 3.23665
	.quad	0x40204b951c5c5719              # double 8.1476220000000001
	.quad	0x401de1600f34506a              # double 7.4700930000000003
	.quad	0x3ffc5651b0ccbc06              # double 1.771074
	.quad	0x4020af8a4c1ebc84              # double 8.3428520000000006
	.quad	0x4005ae15011904b4              # double 2.7100010000000001
	.quad	0x3ff5d71b0468448d              # double 1.365016
	.quad	0x4007105d0fa58f71              # double 2.8829899999999999
	.quad	0x40113f7446f9b995              # double 4.3119670000000001
	.quad	0x3febb06e5cd4ed2d              # double 0.86528700000000003
	.quad	0x3ff78e8b7e4de3b9              # double 1.4723010000000001
	.quad	0x3ff7e67839cd8128              # double 1.4937670000000001
	.quad	0x40056ccd530489d2              # double 2.6781259999999998
	.quad	0x3fc93037d63022dd              # double 0.19678399999999999
	.quad	0x40205d49731098d4              # double 8.1822009999999991
	.quad	0x4002c4ce8101f31f              # double 2.3460969999999999
	.quad	0x4013c80e8c8abd5e              # double 4.9453680000000002
	.quad	0x3fe31cc100e6afcd              # double 0.59726000000000001
	.quad	0x3ffd989efd86a8fc              # double 1.849761
	.quad	0x4019d20b8066c2ad              # double 6.4551220000000002
	.quad	0x40209293d102bc73              # double 8.2862840000000002
	.quad	0x4016c601ffb480a6              # double 5.6933670000000003
	.quad	0x3ff1771da37ef5a9              # double 1.0915809999999999
	.quad	0x4010661bf37b8d3f              # double 4.0997159999999999
	.quad	0x4021d44f1a1986ba              # double 8.9146660000000004
	.quad	0x3fe0c725c3dee782              # double 0.52431000000000005
	.quad	0x40223c069e7fb268              # double 9.1172380000000004
	.quad	0x40120a237cdcca71              # double 4.5099010000000002
	.quad	0x4011d97e132b55ef              # double 4.4623949999999999
	.quad	0x3fff8c447c30d307              # double 1.9717450000000001
	.quad	0x401a6e2b063e07a3              # double 6.6075860000000004
	.quad	0x402076809d495183              # double 8.2314500000000006
	.quad	0x401f037eb28d8666              # double 7.7534130000000001
	.quad	0x4023e8221426fe72              # double 9.9533850000000008
	.quad	0x402137c04c8bc9cd              # double 8.6088889999999996
	.quad	0x40176f8487b99d45              # double 5.8589039999999999
	.quad	0x401810d38cda6e76              # double 6.016432
	.quad	0x401dd62fdfc19c17              # double 7.4591669999999999
	.quad	0x3fe04f1e4b44a1f1              # double 0.50965800000000006
	.quad	0x3ffc38359bc33f85              # double 1.7637229999999999
	.quad	0x40201978d4fdf3b6              # double 8.0497499999999995
	.quad	0x401035f0b28522ea              # double 4.0526759999999999
	.quad	0x3ffcb0307f23cc8e              # double 1.793015
	.quad	0x40223a81ba7fc32f              # double 9.1142710000000005
	.quad	0x4021a2d1f1cfbb95              # double 8.8180080000000007
	.quad	0x40111b4070329803              # double 4.2766130000000002
	.quad	0x3ff49a671ef30a4e              # double 1.287696
	.quad	0x4022953ac4f7ec35              # double 9.2914639999999995
	.quad	0x401d32ca9ac36545              # double 7.299601
	.quad	0x3ff61780baa582dc              # double 1.380738
	.quad	0x3fe688787485e3da              # double 0.70415899999999998
	.quad	0x3fdedb6a1e81cb47              # double 0.48214200000000002
	.quad	0x401f551372a38b8b              # double 7.8330820000000001
	.quad	0x401623d102bc72e2              # double 5.5349769999999996
	.quad	0x3fdcc4588a04d120              # double 0.44948399999999999
	.quad	0x401bbb81f969e3c9              # double 6.9331129999999996
	.quad	0x40062231832fcac9              # double 2.766696
	.quad	0x401c04db59578a2b              # double 7.0047430000000004
	.quad	0x4015194e1a3f4667              # double 5.2747120000000001
	.quad	0x4005aa23bff8a8f4              # double 2.7080760000000001
	.quad	0x402193b81b64e054              # double 8.7885139999999992
	.quad	0x3ff2f71971c10d7c              # double 1.185327
	.quad	0x401dd394317acc4f              # double 7.45662
	.quad	0x401db0f94c87980f              # double 7.4228259999999997
	.quad	0x401b03543aeab799              # double 6.7532509999999997
	.quad	0x402293a6efc371da              # double 9.2883829999999996
	.quad	0x4015417c5ef62f9d              # double 5.3139510000000003
	.quad	0x400033de1e2de871              # double 2.0253260000000002
	.quad	0x4019314940bbb1f2              # double 6.2981309999999997
	.quad	0x3fff230984e3ffef              # double 1.946054
	.quad	0x40134b2aae297397              # double 4.8234050000000002
	.quad	0x401db7ca643cc07b              # double 7.4294830000000003
	.quad	0x3fd6b8561d4306e6              # double 0.35500100000000001
	.quad	0x402024964628027e              # double 8.0714590000000008
	.quad	0x401a45bb7b6bb129              # double 6.568098
	.quad	0x3ff20432ca57a787              # double 1.1260250000000001
	.quad	0x400426d8b1dd5d3e              # double 2.5189680000000001
	.quad	0x3ff7717efe0ce0b9              # double 1.465209
	.quad	0x4023d8ae9680e065              # double 9.9232069999999996
	.quad	0x401613dea465a576              # double 5.5194039999999998
	.quad	0x402170f190d173fb              # double 8.7205929999999992
	.quad	0x4003ea7589efd86b              # double 2.4894820000000002
	.quad	0x401a2af5771001d6              # double 6.5419520000000002
	.quad	0x400cd0e991ff7165              # double 3.6020080000000001
	.quad	0x40075d5a9eb2074f              # double 2.9205830000000002
	.quad	0x40216a684cf0739b              # double 8.707827
	.quad	0x400a5ffbce4217d3              # double 3.2968670000000002
	.quad	0x4023229e4d5d80e5              # double 9.5676140000000007
	.quad	0x4010db441bb8c32b              # double 4.2141270000000004
	.quad	0x401bc69ad42c3c9f              # double 6.9439500000000001
	.quad	0x401d2e9856a37ac4              # double 7.2955030000000001
	.quad	0x4017beebb341e14c              # double 5.9364460000000001
	.quad	0x40167314ca925fe9              # double 5.6123839999999996
	.quad	0x40163d9f4d37c137              # double 5.5601779999999996
	.quad	0x400356c7219220ff              # double 2.4173719999999999
	.quad	0x3ff854c122749f0e              # double 1.5206919999999999
	.quad	0x3ffaa0ee8d10f51b              # double 1.66429
	.quad	0x4015ef91600f3450              # double 5.4839529999999996
	.quad	0x401f68954a7f8013              # double 7.8521320000000001
	.quad	0x40112ace24bba12b              # double 4.2918019999999997
	.quad	0x4013580c308feac4              # double 4.8359839999999998
	.quad	0x4023f7ba237cdcca              # double 9.9838419999999992
	.quad	0x401603cf2cf95d4f              # double 5.5037200000000004
	.quad	0x3fff496aad1d041d              # double 1.9554240000000001
	.quad	0x401142ead9274e23              # double 4.3153490000000003
	.quad	0x4006626aa8eb4635              # double 2.7980550000000002
	.quad	0x4018c32ca57a786c              # double 6.1905999999999999
	.quad	0x4005622c45026890              # double 2.672936
	.quad	0x4017e3c536d655e3              # double 5.9724320000000004
	.quad	0x4016b070329802c1              # double 5.6723030000000003
	.quad	0x4016d37de939eadd              # double 5.7065349999999997
	.quad	0x400a7e047d3d4281              # double 3.3115320000000001
	.quad	0x40204a7008a697af              # double 8.1453860000000002
	.quad	0x401a07c5260f5e42              # double 6.5075880000000002
	.quad	0x401c08f47304039b              # double 7.0087450000000002
	.quad	0x4023d30b5aa71583              # double 9.9121959999999997
	.quad	0x4018061e92923e5c              # double 6.0059760000000004
	.quad	0x401cd5de15ca6ca0              # double 7.2088549999999998
	.quad	0x4018e2749f0e4da1              # double 6.2211480000000003
	.quad	0x3fa29e4d5d80e497              # double 0.036364
	.quad	0x4020f948fd9fd36f              # double 8.4868849999999991
	.quad	0x4020fca1f080303c              # double 8.4934229999999999
	.quad	0x3fecc23fab10ba62              # double 0.89871199999999996
	.quad	0x4010beaa2a0a9585              # double 4.1861959999999998
	.quad	0x401ee01d19157abc              # double 7.7188610000000004
	.quad	0x4010531ec0b56755              # double 4.0811719999999996
	.quad	0x401651f10667f90e              # double 5.5800210000000003
	.quad	0x4012ad698fe69271              # double 4.6693480000000003
	.quad	0x4021435f5f0b2852              # double 8.6315869999999997
	.quad	0x40036f77f27fe4bd              # double 2.4294280000000001
	.quad	0x3fecd2fe3f359ff5              # double 0.900756
	.quad	0x40202d814940bbb2              # double 8.0888770000000001
	.quad	0x401ec4afd5454153              # double 7.6920770000000002
	.quad	0x401dccbd556084a5              # double 7.4499409999999999
	.quad	0x4020fc69b5a63f9a              # double 8.4929939999999995
	.quad	0x4017100c9539b888              # double 5.7656729999999996
	.quad	0x4021a69142b302f7              # double 8.8253269999999997
	.quad	0x40181c165907d912              # double 6.0274289999999997
	.quad	0x4014fce39b456b44              # double 5.2469619999999999
	.quad	0x3ffba8986fcdee35              # double 1.728661
	.quad	0x400bed1e108c3f3e              # double 3.49078
	.quad	0x3ffc6d22424a276b              # double 1.7766439999999999
	.quad	0x3ffe06ec17ebaf10              # double 1.87669
	.quad	0x4010a22467be553b              # double 4.1583420000000002
	.quad	0x3fc715054ac29bf1              # double 0.18032899999999999
	.quad	0x4020bcc07aaef2c7              # double 8.3686559999999997
	.quad	0x4020ec107314ca92              # double 8.4610629999999993
	.quad	0x40102822ff08893b              # double 4.0391959999999996
	.quad	0x402200ef34d6a162              # double 9.0018250000000002
	.quad	0x400af2452c59fb1e              # double 3.368296
	.quad	0x40095c9795b35b0c              # double 3.1702110000000001
	.quad	0x4019a3b256ffc116              # double 6.4098600000000001
	.quad	0x400e36d0917d6b66              # double 3.7767650000000001
	.quad	0x401780a8d21bc127              # double 5.8756440000000003
	.quad	0x40050028e4fb97bb              # double 2.6250779999999998
	.quad	0x401277a2cecc814d              # double 4.6168319999999996
	.quad	0x400445d9e40c8473              # double 2.5341070000000001
	.quad	0x401dbef62f9ca5be              # double 7.4364860000000004
	.quad	0x401842e1693c03bc              # double 6.0653129999999997
	.quad	0x401eb610adcd2d45              # double 7.6777980000000001
	.quad	0x40195c59fb1e18f0              # double 6.3401870000000002
	.quad	0x4012df40e5a35d68              # double 4.7180210000000002
	.quad	0x401acceb356da017              # double 6.7001160000000004
	.quad	0x40148c5da6a44418              # double 5.1370760000000004
	.quad	0x4021363864cb5bb4              # double 8.6058990000000008
	.quad	0x40143523f67f4dbe              # double 5.051895
	.quad	0x40210bf1c75818c6              # double 8.5233290000000004
	.quad	0x400fc23e18698351              # double 3.9698449999999998
	.quad	0x401145f06f694467              # double 4.3182999999999998
	.quad	0x3ffb91287c200c0f              # double 1.722939
	.quad	0x400408fc0d2c386d              # double 2.5043869999999999
	.quad	0x40125ed6ba8c5868              # double 4.5926159999999996
	.quad	0x402178e0008637bd              # double 8.736084
	.quad	0x4016bfa2f05a708f              # double 5.6871450000000001
	.quad	0x4023208a265f0f5a              # double 9.5635539999999999
	.quad	0x4014074e65bea0ba              # double 5.0071349999999999
	.quad	0x402302250f840182              # double 9.5041890000000002
	.quad	0x40151cf6be37de94              # double 5.2782850000000003
	.quad	0x40236656cd6c2efd              # double 9.6998809999999995
	.quad	0x4007b5e95b78cc9a              # double 2.9638239999999998
	.quad	0x400f14677b395c42              # double 3.8849629999999999
	.quad	0x40061784662bae04              # double 2.7614830000000001
	.quad	0x401cc01fb82c2bd8              # double 7.187621
	.quad	0x4017ca2339c0ebee              # double 5.9474
	.quad	0x4020d2606fac6046              # double 8.4108920000000005
	.quad	0x4022bd4823854046              # double 9.3696909999999995
	.quad	0x401825f41aef6f8f              # double 6.037064
	.quad	0x401528f14db59579              # double 5.2899830000000003
	.quad	0x40108c52a411c2a0              # double 4.1370339999999999
	.quad	0x4014bfc7a398201d              # double 5.1872850000000001
	.quad	0x4017638d1d8a5482              # double 5.8472179999999998
	.quad	0x4022009c7ffde721              # double 9.0011939999999999
	.quad	0x400f235ac8a37260              # double 3.8922629999999998
	.quad	0x4011744fa05143bf              # double 4.3635849999999996
	.quad	0x402183cfb3311a54              # double 8.7574439999999995
	.quad	0x40032561d4306e5d              # double 2.3932530000000001
	.quad	0x4022866516db0dd8              # double 9.2624899999999996
	.quad	0x4023222a6f3f52fc              # double 9.5667299999999997
	.quad	0x400dff2dc2b0ea18              # double 3.7495989999999999
	.quad	0x400e8e6c093d9664              # double 3.8195420000000002
	.quad	0x4013671bcdbbe015              # double 4.8506919999999996
	.quad	0x40215fbd05af6c6a              # double 8.6869890000000005
	.quad	0x400e387c6327ed85              # double 3.7775810000000001
	.quad	0x4011b39da16616b5              # double 4.4254059999999997
	.quad	0x4023f3361565c2d2              # double 9.9750219999999992
	.quad	0x402306b8305d95dd              # double 9.5131239999999994
	.quad	0x402307141205bc02              # double 9.5138250000000006
	.quad	0x400928461f9f01b8              # double 3.1446649999999998
	.quad	0x3fe133e1437c5693              # double 0.53758300000000003
	.quad	0x3ff80c9a77e5eaab              # double 1.503077
	.quad	0x3fd701b43526527a              # double 0.35947899999999999
	.quad	0x4020a036006d0d4a              # double 8.3129120000000007
	.quad	0x40168476af89c5e7              # double 5.629359
	.quad	0x4023416d4c33b539              # double 9.6277869999999996
	.quad	0x4013f3b0813cab82              # double 4.987978
	.quad	0x4011b39a7c17a893              # double 4.4253939999999998
	.quad	0x3fd9450efdc9c4db              # double 0.39484000000000002
	.quad	0x3ff30a276b7ed41b              # double 1.1899789999999999
	.quad	0x401d08b75ea67e84              # double 7.2585119999999996
	.quad	0x401457357e670e2c              # double 5.0851649999999999
	.quad	0x4018c420f6f08cc5              # double 6.1915319999999996
	.quad	0x3fed75f91600f345              # double 0.920651
	.quad	0x4006bb256ffc115e              # double 2.84138
	.quad	0x400d4e67d77fae36              # double 3.663284
	.quad	0x400917e23f24d8fd              # double 3.1366619999999998
	.quad	0x3ffb7e7afa722186              # double 1.7183790000000001
	.quad	0x4007327e5215768a              # double 2.8996550000000001
	.quad	0x402289337eb28d86              # double 9.2679709999999993
	.quad	0x4011ae09784ec637              # double 4.4199580000000003
	.quad	0x4004dea140570825              # double 2.6087060000000002
	.quad	0x401811dc93ea2d30              # double 6.0174430000000001
	.quad	0x400102ec28b2a6b1              # double 2.1264270000000001
	.quad	0x4012cd9a95421c04              # double 4.7007849999999998
	.quad	0x40168f56eac86057              # double 5.6399800000000004
	.quad	0x3ff4b355cd91eeaa              # double 1.2937829999999999
	.quad	0x402195536933a040              # double 8.7916519999999991
	.quad	0x40224c6f587d6f97              # double 9.1492869999999993
	.quad	0x400681a9b8cb8e08              # double 2.8133119999999998
	.quad	0x3f7ab29e4d5d80e5              # double 0.0065180000000000004
	.quad	0x3fd8a854477ff152              # double 0.38527400000000001
	.quad	0x4021a65a14488c61              # double 8.8249060000000004
	.quad	0x40173c26dce39b45              # double 5.8087419999999996
	.quad	0x3ffddb7cfe586013              # double 1.8660859999999999
	.quad	0x401500ecfa69be0a              # double 5.2509040000000002
	.quad	0x3fd88bef8ceb356e              # double 0.38354100000000002
	.quad	0x4013e685985ad539              # double 4.9751190000000003
	.quad	0x400594983d790753              # double 2.6975560000000001
	.quad	0x400bdf7c6759ab6d              # double 3.484124
	.quad	0x401005460aa64c30              # double 4.0051500000000004
	.quad	0x3fe9d67125dd095b              # double 0.80742700000000001
	.quad	0x40031994e1a3f466              # double 2.3874909999999998
	.quad	0x401eb20d5629d841              # double 7.6738790000000003
	.quad	0x402014db163baba8              # double 8.0407340000000005
	.quad	0x40190ebe9c886163              # double 6.2643990000000001
	.quad	0x4012bad5bee3d5fe              # double 4.6824560000000002
	.quad	0x400b2c093d966384              # double 3.3965019999999999
	.quad	0x401dfcb4f1e4b44a              # double 7.4967839999999999
	.quad	0x3fff690ff9724745              # double 1.96315
	.quad	0x3fdd82a12f901084              # double 0.46109800000000001
	.quad	0x401ad0379314445b              # double 6.7033370000000003
	.quad	0x3ff406b8b69552e3              # double 1.251641
	.quad	0x3ff38e8427418d69              # double 1.222294
	.quad	0x40065b6672fba01f              # double 2.794629
	.quad	0x4021d0984e3ffef4              # double 8.9074120000000007
	.quad	0x3fe30d7e02645e4e              # double 0.59539699999999995
	.quad	0x401f727b2cc70868              # double 7.8617980000000002
	.quad	0x3ff123ed0f627393              # double 1.0712710000000001
	.quad	0x400dc0c1fc8f3238              # double 3.7191200000000002
	.quad	0x40207abfdb4cc250              # double 8.2397449999999992
	.quad	0x40028225fa658c4c              # double 2.3135490000000001
	.quad	0x40150a0dbad3a605              # double 5.2598180000000001
	.quad	0x3fd462a5e785b5b7              # double 0.318521
	.quad	0x40038852b4d8ba41              # double 2.4415640000000001
	.quad	0x40001727136a4010              # double 2.0113050000000001
	.quad	0x4003e363b256ffc1              # double 2.48603
	.quad	0x4022e086594af4f1              # double 9.4385250000000002
	.quad	0x4011455043e5321e              # double 4.3176889999999997
	.quad	0x400435c63ae2541e              # double 2.5262570000000002
	.quad	0x40170e6299524bfd              # double 5.7640479999999998
	.quad	0x4018631f8a0902de              # double 6.0968
	.quad	0x400ce9aed56b0100              # double 3.6141030000000001
	.quad	0x4022aa854477ff15              # double 9.3330479999999998
	.quad	0x40224b6bb1290258              # double 9.1473060000000003
	.quad	0x4017cea897635e74              # double 5.9518149999999999
	.quad	0x40211276fb09203a              # double 8.5360639999999997
	.quad	0x4021b503968d759f              # double 8.8535430000000002
	.quad	0x4023af7e3d1cc101              # double 9.8427600000000001
	.quad	0x4016f594af4f0d84              # double 5.7398249999999997
	.quad	0x3ff48c319c5a3e3a              # double 1.284227
	.quad	0x401f25a1cac08312              # double 7.7867499999999996
	.quad	0x401d1196d8f4f93c              # double 7.2671770000000002
	.quad	0x4023d2bd5dc40075              # double 9.9116009999999992
	.quad	0x3ff806cca2db61bb              # double 1.50166
	.quad	0x40133a23bff8a8f4              # double 4.8067770000000003
	.quad	0x40143f4ba51a005c              # double 5.0618119999999998
	.quad	0x400287ab7564302b              # double 2.3162449999999999
	.quad	0x401cc90b84988095              # double 7.1963330000000001
	.quad	0x402325d00f776c48              # double 9.5738529999999997
	.quad	0x401278d7e02645e5              # double 4.6180110000000001
	.quad	0x4010713c254a3c64              # double 4.1105809999999998
	.quad	0x4014299bf5946c33              # double 5.0406339999999998
	.quad	0x40109d113836a833              # double 4.1533860000000002
	.quad	0x4023234a87e38eb0              # double 9.5689279999999997
	.quad	0x4001b2b990afe60c              # double 2.2122679999999999
	.quad	0x3fe77e64f54d1e97              # double 0.73417900000000003
	.quad	0x3ff00ccee5abc0e4              # double 1.0031270000000001
	.quad	0x4004d97460242d06              # double 2.606179
	.quad	0x4023e2c753e707e1              # double 9.9429269999999991
	.quad	0x3ff5937b07075b3e              # double 1.348506
	.quad	0x402237264a16a487              # double 9.1077139999999996
	.quad	0x4020468858ff7597              # double 8.1377590000000009
	.quad	0x402254f52b90a783              # double 9.1659330000000008
	.quad	0x400c7ac4f7ec3548              # double 3.5599460000000001
	.quad	0x4023f3b18dac258d              # double 9.9759639999999993
	.quad	0x401ee9e0a41a261c              # double 7.728396
	.quad	0x401d05df6555c52e              # double 7.2557349999999996
	.quad	0x40127d0e991ff716              # double 4.6221259999999997
	.quad	0x3ff8ca57a786c227              # double 1.5494000000000001
	.quad	0x401883804534bd77              # double 6.1284190000000001
	.quad	0x3ffbfc3e74afd545              # double 1.7490829999999999
	.quad	0x401a5958d9b5e95b              # double 6.5872529999999996
	.quad	0x3ffc09e98dcdb37d              # double 1.7524200000000001
	.quad	0x3ffb7aeff5c6c11a              # double 1.717514
	.quad	0x4021703a7546d3fa              # double 8.7191960000000002
	.quad	0x3ff7a32d2bb23572              # double 1.477338
	.quad	0x400ed533f42352eb              # double 3.8541029999999998
	.quad	0x401be6bd6e8af816              # double 6.9753319999999999
	.quad	0x4013ce53eb399f5e              # double 4.951492
	.quad	0x3ffef8066c2acb86              # double 1.9355530000000001
	.quad	0x40081c810a569b17              # double 3.0139179999999999
	.quad	0x401d1c78e9f6a93f              # double 7.2778049999999999
	.quad	0x4004f003686a4ca5              # double 2.617194
	.quad	0x401432291fb3fa6e              # double 5.0489850000000001
	.quad	0x401794e379b77c03              # double 5.8953990000000003
	.quad	0x40104647778dd617              # double 4.068632
	.quad	0x4006f806f262888b              # double 2.8711069999999999
	.quad	0x40155d6c2efd438d              # double 5.3412329999999999
	.quad	0x40224ae536501e26              # double 9.1462800000000009
	.quad	0x40218117f84449dc              # double 8.7521360000000001
	.quad	0x401c05b91f70de8f              # double 7.0055889999999996
	.quad	0x3ff9f7531db445ed              # double 1.6228819999999999
	.quad	0x3fe5f71a7e308787              # double 0.68641399999999997
	.quad	0x3fee7cfa26a22b39              # double 0.95275600000000005
	.quad	0x4015486940357a35              # double 5.3207139999999997
	.quad	0x3ffd606530058149              # double 1.8360339999999999
	.quad	0x3ffd7262888b545c              # double 1.8404259999999999
	.quad	0x401d4f69878316a0              # double 7.3275509999999997
	.quad	0x4023a469f8c21e1d              # double 9.8211209999999997
	.quad	0x3fe60cf398e97072              # double 0.68908100000000005
	.quad	0x401dc49ecb31c21a              # double 7.4420120000000001
	.quad	0x4009d13d74d594f2              # double 3.2271679999999998
	.quad	0x401bd312f4cf4a56              # double 6.9561270000000004
	.quad	0x3fdd7ced916872b0              # double 0.46074999999999999
	.quad	0x401479439de481f5              # double 5.1184219999999998
	.quad	0x40196534373f316e              # double 6.3488319999999998
	.quad	0x40227780346dc5d6              # double 9.2333999999999996
	.quad	0x401e6bc23315d702              # double 7.6052330000000001
	.quad	0x3ff57c621b7e0ac8              # double 1.342867
	.quad	0x3fcbaa582dbe7f2c              # double 0.21613599999999999
	.quad	0x3fdfb0ab2e1693c0              # double 0.49515799999999999
	.quad	0x3ff983b0c4588a05              # double 1.594651
	.quad	0x401bd1800a7c5ac4              # double 6.9545899999999996
	.quad	0x401461b8ed1bf7ad              # double 5.0954319999999997
	.quad	0x3feba0a30db6a1e8              # double 0.86335899999999999
	.quad	0x401bf15f88fc9364              # double 6.985716
	.quad	0x4017f9656eefa1e4              # double 5.9935510000000001
	.quad	0x4001c0e9d51b4fe8              # double 2.2191960000000002
	.quad	0x400d42278d0cc35d              # double 3.6573020000000001
	.quad	0x4013295703f2d3c8              # double 4.7903710000000004
	.quad	0x3fa3e920c069e7fb              # double 0.038887999999999999
	.quad	0x400197ac3eb7cbb4              # double 2.1990590000000001
	.quad	0x4021c73bc903ea70              # double 8.8891279999999995
	.quad	0x4015cd1e96c3fc44              # double 5.4503120000000003
	.quad	0x400b70c564f97edc              # double 3.4300639999999998
	.quad	0x400200218def416c              # double 2.2500640000000001
	.quad	0x4000d43e963dc487              # double 2.1036350000000001
	.quad	0x4015dab3edd8b60f              # double 5.4635769999999999
	.quad	0x40158f8a4c1ebc84              # double 5.3901760000000003
	.quad	0x400bfdabe27179c0              # double 3.4988630000000001
	.quad	0x40215505af6c69b6              # double 8.6660590000000006
	.quad	0x401361ec0b567558              # double 4.8456270000000004
	.quad	0x4010730164840e17              # double 4.1123099999999999
	.quad	0x4022356adf71eaff              # double 9.1043310000000002
	.quad	0x3ffa72f661f18ca0              # double 1.6530670000000001
	.quad	0x4008f85271bcdbbe              # double 3.121251
	.quad	0x401f451b4fe79ee0              # double 7.8174869999999999
	.quad	0x40190cbc48f10a9a              # double 6.2624370000000003
	.quad	0x3fd7783dff3f0fe0              # double 0.36671399999999998
	.quad	0x401fc6a4ca4f440b              # double 7.943988
	.quad	0x40113045fe111277              # double 4.297142
	.quad	0x402086b851eb851f              # double 8.2631250000000005
	.quad	0x40224bc3a42f1ed1              # double 9.1479769999999991
	.quad	0x4000deab367a0f91              # double 2.1087250000000002
	.quad	0x4018455eaee2003b              # double 6.0677440000000002
	.quad	0x4010a7fa5d28d003              # double 4.1640410000000001
	.quad	0x3ff50c996b7670a0              # double 1.3155760000000001
	.quad	0x402008ded288ce70              # double 8.0173249999999996
	.quad	0x401abd49949e8816              # double 6.6848510000000001
	.quad	0x40227d9513f8db49              # double 9.2452780000000008
	.quad	0x400e7aeab7995ee1              # double 3.8100179999999999
	.quad	0x3fd6fe08aefb2aae              # double 0.35925499999999999
	.quad	0x40076adf71eafee7              # double 2.927184
	.quad	0x40184ea4a8c154ca              # double 6.0768000000000004
	.quad	0x401c992c061847f5              # double 7.1495819999999997
	.quad	0x400e778897e99631              # double 3.8083659999999999
	.quad	0x401a140dd3fe1976              # double 6.519584
	.quad	0x401d40ec74320104              # double 7.313402
	.quad	0x402184df47f993d5              # double 8.7595159999999996
	.quad	0x4013f9e7b80a9de9              # double 4.9940480000000003
	.quad	0x3fff2db0dd82fd76              # double 1.948655
	.quad	0x3ffbe41d4b6a619e              # double 1.7431920000000001
	.quad	0x40017a30121682f9              # double 2.1846619999999999
	.quad	0x4010f523b3636f3b              # double 4.2393939999999999
	.quad	0x40194508f648c719              # double 6.3174169999999998
	.quad	0x401aa54477ff151e              # double 6.6613939999999996
	.quad	0x4010b20afa2f05a7              # double 4.17387
	.quad	0x4023760f1b25f634              # double 9.7305840000000003
	.quad	0x402093d2fa0d77b8              # double 8.2887190000000004
	.quad	0x3ff1c620ab713272              # double 1.1108709999999999
	.quad	0x4016d57646ae3a3b              # double 5.7084590000000004
	.quad	0x401526cca2db61bb              # double 5.28789
	.quad	0x4006411fd5885d31              # double 2.7817989999999999
	.quad	0x40226eae7d566cf4              # double 9.2161749999999997
	.quad	0x401da85e80bed741              # double 7.4144230000000002
	.quad	0x400964a1f080303c              # double 3.174137
	.quad	0x401f707e9d94d0dd              # double 7.859858
	.quad	0x400dcbff47735c18              # double 3.7246079999999999
	.quad	0x401780203e63e8de              # double 5.8751230000000003
	.quad	0x400f3752977c88e8              # double 3.9020130000000002
	.quad	0x4000251d25aab474              # double 2.018122
	.quad	0x40215880f98fa377              # double 8.6728590000000008
	.quad	0x401251a261bf37b9              # double 4.5797210000000002
	.quad	0x401c71116a8b8f15              # double 7.1104180000000001
	.quad	0x40231264a16a4873              # double 9.5359239999999996
	.quad	0x401740e453d20f2c              # double 5.8133710000000001
	.quad	0x4002a2d0e5604189              # double 2.3294999999999999
	.quad	0x4014af3a57eaa2a1              # double 5.1711210000000003
	.quad	0x40208d8298cc1440              # double 8.2763869999999997
	.quad	0x401aad7b2031ceaf              # double 6.6694149999999999
	.quad	0x401337d30ad46f58              # double 4.8045159999999996
	.quad	0x401679a52263d817              # double 5.6187940000000003
	.quad	0x40167cff21b3aeef              # double 5.6220670000000004
	.quad	0x40193f6273929ed4              # double 6.3118990000000004
	.quad	0x4012f7de939eadd6              # double 4.7420600000000004
	.quad	0x401891fff79c8430              # double 6.1425780000000003
	.quad	0x40119cf80dc33722              # double 4.4032900000000001
	.quad	0x400615b78cc9a77e              # double 2.7606039999999998
	.quad	0x40217744b2b777d1              # double 8.7329460000000001
	.quad	0x4002277ccc037931              # double 2.2692809999999999
	.quad	0x4003d349be8ff328              # double 2.4781680000000001
	.quad	0x4011347c73eee526              # double 4.3012560000000004
	.quad	0x40204cda9003eea2              # double 8.1501049999999999
	.quad	0x4012d3c07ee0b0af              # double 4.7067889999999997
	.quad	0x4017327136a400fc              # double 5.7992600000000003
	.quad	0x3fddb48909289dae              # double 0.464144
	.quad	0x3fe02c0a4a05dd90              # double 0.50537600000000005
	.quad	0x4012d61b6d43d039              # double 4.7090889999999996
	.quad	0x3ff11d53cddd6e05              # double 1.0696600000000001
	.quad	0x402276c54bcf0b6b              # double 9.2319739999999992
	.quad	0x40192c4dec1c1d6d              # double 6.293266
	.quad	0x3fe8aa9f7b5aea31              # double 0.77082799999999996
	.quad	0x4007c52e72da1230              # double 2.9712800000000001
	.quad	0x3fe04f0b6b6e0d24              # double 0.50964900000000002
	.quad	0x400a1359791819d2              # double 3.2594479999999999
	.quad	0x40156858bc59b802              # double 5.3519009999999998
	.quad	0x3ff2dc17225b749b              # double 1.178733
	.quad	0x4022dfb4a2339c0f              # double 9.4369250000000004
	.quad	0x401f6656eefa1e3f              # double 7.8499410000000002
	.quad	0x3fea132d6ece13f5              # double 0.81484100000000004
	.quad	0x401384bfd2e94680              # double 4.8796379999999999
	.quad	0x400ac8f08461f9f0              # double 3.348115
	.quad	0x3fd41ed17c5ef630              # double 0.31438100000000002
	.quad	0x401e45d5b24e9c45              # double 7.5681979999999997
	.quad	0x3ff8a527a20578e6              # double 1.5403210000000001
	.quad	0x401c3c74fb549f95              # double 7.0590400000000004
	.quad	0x40126c886162f167              # double 4.6059890000000001
	.quad	0x4006d25d4a5df224              # double 2.8527170000000002
	.quad	0x3ffaf2cf95d4e8fb              # double 1.68428
	.quad	0x3fe59cde5d18090b              # double 0.67539899999999997
	.quad	0x401ef904b3c3e74b              # double 7.743182
	.quad	0x400226ec9e236c16              # double 2.2690060000000001
	.quad	0x4022a0a2a90cd424              # double 9.3137410000000002
	.quad	0x4015cb6bf444e0db              # double 5.4486540000000003
	.quad	0x40201f87ad080b67              # double 8.0615819999999996
	.quad	0x40117bd72bcb5fe5              # double 4.3709379999999998
	.quad	0x401ce31db445ed4a              # double 7.2217929999999999
	.quad	0x40204beee5258927              # double 8.1483070000000009
	.quad	0x4015cf9591cd1c7e              # double 5.4527190000000001
	.quad	0x402068283d35eb74              # double 8.2034319999999993
	.quad	0x4005ec5b8dc55001              # double 2.7404090000000001
	.quad	0x40157f416bdb1a6d              # double 5.3742729999999996
	.quad	0x401aab3b320535ca              # double 6.6672180000000001
	.quad	0x400f3ecdd0d8cb08              # double 3.9056660000000001
	.quad	0x3ff24a6117720c8d              # double 1.143159
	.quad	0x4018e86c226809d5              # double 6.2269750000000004
	.quad	0x40206cd5f99c38b0              # double 8.2125699999999995
	.quad	0x401efdb8348f53c5              # double 7.7477729999999995
	.quad	0x4015de82517e77d5              # double 5.4672939999999999
	.quad	0x3ff8e46ae3a3a8e7              # double 1.555766
	.quad	0x40220a90470a808d              # double 9.0206320000000009
	.quad	0x4001cb5807fed203              # double 2.2242890000000002
	.quad	0x40144cc89b0ee49f              # double 5.0749839999999997
	.quad	0x40179160d887ebf2              # double 5.8919709999999998
	.quad	0x40237333b96af039              # double 9.7250040000000002
	.quad	0x400fc9c90c4dec1c              # double 3.9735279999999999
	.quad	0x4012b2b7baecd078              # double 4.6745289999999997
	.quad	0x4014fb30f8c64fdb              # double 5.245304
	.quad	0x4010eab8e8ea39c5              # double 4.2292209999999999
	.quad	0x400feaefb2aae297              # double 3.9897149999999999
	.quad	0x401038dda48b6523              # double 4.0555329999999996
	.quad	0x40206d07a6bd6e8b              # double 8.2129490000000001
	.quad	0x4016b7121ab4b72c              # double 5.6787799999999997
	.quad	0x402138fd9fd36f7e              # double 8.6113099999999996
	.quad	0x40219b05100a393f              # double 8.8027730000000002
	.quad	0x40239533b1077469              # double 9.7914100000000008
	.quad	0x401991b0468448cf              # double 6.3922739999999996
	.quad	0x4021b05f06f69446              # double 8.8444749999999992
	.quad	0x402158624dd2f1aa              # double 8.672625
	.quad	0x4022a674afd54541              # double 9.3251089999999994
	.quad	0x3ff382fc69728a61              # double 1.219479
	.quad	0x401ac913e81450f0              # double 6.6963650000000001
	.quad	0x40230dfa00e27e0f              # double 9.527298
	.quad	0x3fefe2a1b5c7cd8a              # double 0.99641500000000005
	.quad	0x40137b2031ceaf25              # double 4.8702399999999999
	.quad	0x40180c03ff69014b              # double 6.0117339999999997
	.quad	0x4023f83dbc23315d              # double 9.9848459999999992
	.quad	0x3febada33bd9cae2              # double 0.86494599999999999
	.quad	0x4013e1cf355cd91f              # double 4.9705170000000001
	.quad	0x401e04538ef34d6a              # double 7.5042249999999999
	.quad	0x40077eeed8904f6e              # double 2.936979
	.quad	0x401b02d2fe3f35a0              # double 6.752758
	.quad	0x401b5e7e1fc08fa8              # double 6.8422780000000003
	.quad	0x3ff9e5aee631f8a1              # double 1.6185750000000001
	.quad	0x3ff84e71476af89c              # double 1.5191509999999999
	.quad	0x40030bfb15b573eb              # double 2.3808500000000001
	.quad	0x4017c42c3c9eecc0              # double 5.9415750000000003
	.quad	0x401e80e410b630a9              # double 7.6258699999999999
	.quad	0x402217ad6cb53501              # double 9.0462450000000008
	.quad	0x401576683c297bfa              # double 5.3656319999999997
	.quad	0x40179357603925bb              # double 5.8938879999999996
	.quad	0x401c1975afaf8594              # double 7.0248629999999999
	.quad	0x401894606748e475              # double 6.1448989999999997
	.quad	0x3fe49da16616b54e              # double 0.64424199999999998
	.quad	0x4023b6ebf65dbfcf              # double 9.8572690000000005
	.quad	0x401bd40639d5e4a4              # double 6.9570550000000004
	.quad	0x3fc4bffcdab191de              # double 0.162109
	.quad	0x3fd754bcf0b6b6e1              # double 0.36454700000000001
	.quad	0x4017deb78897e996              # double 5.9674969999999998
	.quad	0x401bfa1d323fee2d              # double 6.9942520000000004
	.quad	0x40230bb3c81908e6              # double 9.5228560000000009
	.quad	0x3fedce8533b10774              # double 0.93145999999999995
	.quad	0x4021d8800eae18ad              # double 8.9228520000000007
	.quad	0x4022a447e49b1fac              # double 9.3208610000000007
	.quad	0x3fbcc271fff79c84              # double 0.112342
	.quad	0x40239206e9ff0cbb              # double 9.785209
	.quad	0x400e75610adcd2d4              # double 3.8073139999999999
	.quad	0x4010203afb7e9100              # double 4.0314750000000004
	.quad	0x3ffa1841aac53b08              # double 1.630922
	.quad	0x4010f26b2f23033a              # double 4.2367369999999998
	.quad	0x400952324c836651              # double 3.1651349999999998
	.quad	0x4020caf102363b25              # double 8.3963699999999992
	.quad	0x3ff4927d45a5fc7e              # double 1.2857639999999999
	.quad	0x401ef3065f9591cd              # double 7.7373289999999999
	.quad	0x4016a6a3bddfca00              # double 5.6627340000000004
	.quad	0x4020e9e8e6080735              # double 8.4568549999999991
	.quad	0x401cd96d8f4f93bc              # double 7.212332
	.quad	0x3ffd0307f23cc8de              # double 1.81324
	.quad	0x3fe28fbca1059ea5              # double 0.58004599999999995
	.quad	0x3fe56696a26e5471              # double 0.66877299999999995
	.quad	0x4003ab9c304ccee6              # double 2.4587940000000001
	.quad	0x400f00b135979182              # double 3.8753380000000002
	.quad	0x40101ed527e52157              # double 4.0301099999999996
	.quad	0x401c016bdb1a6d6a              # double 7.0013880000000004
	.quad	0x400236f4be835dee              # double 2.276834
	.quad	0x4018f52ef911cf35              # double 6.2394369999999997
	.quad	0x401530ff10ecb74e              # double 5.2978480000000001
	.quad	0x3fd6cf3dc054ef46              # double 0.35639900000000002
	.quad	0x3fc5cee9dd7ecbb8              # double 0.170377
	.quad	0x4020c88c60cbf2b2              # double 8.3916959999999996
	.quad	0x3ffac34a01abd1ab              # double 1.6726780000000001
	.quad	0x3fcd27b2cc70867b              # double 0.227774
	.quad	0x4018d86f47b677f7              # double 6.2113620000000003
	.quad	0x4012381908e581cf              # double 4.5547829999999996
	.quad	0x4008b73affb04ee8              # double 3.0894680000000001
	.quad	0x401e5b152f3c2dae              # double 7.5889480000000002
	.quad	0x402348e25c810a57              # double 9.6423520000000007
	.quad	0x401f19abf3387161              # double 7.7750700000000003
	.quad	0x401ec5247cb70ac4              # double 7.6925220000000003
	.quad	0x4008b8ec95bff045              # double 3.0902949999999998
	.quad	0x3ff3d82cb20fb225              # double 1.2402770000000001
	.quad	0x3fd25b24e9c45458              # double 0.28681299999999998
	.quad	0x4020cc23b7952d23              # double 8.3987099999999995
	.quad	0x400b1c054ef459da              # double 3.3886820000000002
	.quad	0x4021e16872b020c5              # double 8.9402500000000007
	.quad	0x401307e7c06e19b9              # double 4.7577199999999999
	.quad	0x400fe3d0bfa09460              # double 3.9862380000000002
	.quad	0x401d355f78359bc3              # double 7.3021219999999998
	.quad	0x4020fefef7c243dd              # double 8.4980390000000003
	.quad	0x401ec7d30ad46f58              # double 7.6951409999999995
	.quad	0x401187e62dc6e2a8              # double 4.382714
	.quad	0x3fe9be5753a3ec03              # double 0.80448500000000001
	.quad	0x4023a659f2ba9d1f              # double 9.8249049999999993
	.quad	0x4011834330d73861              # double 4.3781860000000004
	.quad	0x4011f903a7546d40              # double 4.4931780000000003
	.quad	0x40101923e5b8561d              # double 4.0245509999999998
	.quad	0x401a1e31d712a0ec              # double 6.5294869999999996
	.quad	0x4008742aa9f7b5af              # double 3.0567220000000002
	.quad	0x400d8f70153bd167              # double 3.6950379999999998
	.quad	0x4006dfa1a0cf1801              # double 2.8591950000000002
	.quad	0x40226da1ec4e7254              # double 9.2141260000000002
	.quad	0x4013dea854477ff1              # double 4.9674389999999997
	.quad	0x402129a240314877              # double 8.5813159999999993
	.quad	0x3fec2fc69728a611              # double 0.88083199999999995
	.quad	0x402115410f94c87a              # double 8.5415120000000009
	.quad	0x40140a88ace24bba              # double 5.0102869999999999
	.quad	0x3ff845fbf83382e4              # double 1.5170859999999999
	.quad	0x4012e3a7546d3f9e              # double 4.7223179999999996
	.quad	0x3ff78d3cff64cf8d              # double 1.4719819999999999
	.quad	0x4010a116a8b8f14e              # double 4.1573130000000003
	.quad	0x4012ce0eb67c2870              # double 4.7012280000000004
	.quad	0x401c85fa658c4bd3              # double 7.1308379999999998
	.quad	0x4023bc306e5cd4ed              # double 9.8675569999999996
	.quad	0x4023d7ea5f84cad5              # double 9.9217099999999991
	.quad	0x401956f262888b54              # double 6.3349089999999997
	.quad	0x4014f99fa11a975b              # double 5.243773
	.quad	0x4005cfd00713f078              # double 2.7264710000000001
	.quad	0x401242977c88e79b              # double 4.5650310000000003
	.quad	0x4019900d5e8d5411              # double 6.390676
	.quad	0x400ee338b47c73ef              # double 3.860948
	.quad	0x4021cf3300de4c51              # double 8.9046859999999999
	.quad	0x4006f68a50507a6c              # double 2.8703810000000001
	.quad	0x40173b239a38fbca              # double 5.8077529999999999
	.quad	0x40105429e0a41a26              # double 4.0821909999999999
	.quad	0x4020308aac96cc60              # double 8.0948080000000004
	.quad	0x4002bda0dfdef848              # double 2.3425919999999998
	.quad	0x4023c09f1f14983d              # double 9.8762139999999991
	.quad	0x3ffe268c26139000              # double 1.8844110000000001
	.quad	0x3fffe2845996744b              # double 1.992802
	.quad	0x3ff1c57082491afc              # double 1.110703
	.quad	0x3fedc5953586ca8a              # double 0.930369
	.quad	0x401a9ed0b30b5aa7              # double 6.6550929999999999
	.quad	0x401aeac3a860dcba              # double 6.7292620000000003
	.quad	0x4000a858793dd97f              # double 2.0821999999999998
	.quad	0x4023fac2df0d4131              # double 9.9897679999999997
	.quad	0x4020c4332f01754b              # double 8.383203
	.quad	0x40228572ffd1dcd7              # double 9.260643
	.quad	0x4017669a4df47f99              # double 5.8501979999999998
	.quad	0x4007fba55d1c3ac9              # double 2.9978739999999999
	.quad	0x402169e7d9988d2a              # double 8.7068469999999998
	.quad	0x40138ef77f27fe4c              # double 4.8896160000000002
	.quad	0x3ffac780fdc1615f              # double 1.6737070000000001
	.quad	0x3fa63e6c4c5974e6              # double 0.043444999999999998
	.quad	0x3f40f0e90bc7b45f              # double 5.1699999999999999E-4
	.quad	0x401f68611fd5885d              # double 7.8519329999999998
	.quad	0x40094face67d77fb              # double 3.163904
	.quad	0x40135e8576cce5f7              # double 4.8423059999999998
	.quad	0x400ab5bd512ec6bd              # double 3.33874
	.quad	0x401fec508b32ce89              # double 7.9807759999999996
	.quad	0x401e4d8a116659d1              # double 7.5757219999999998
	.quad	0x4010448ecd8dbced              # double 4.0669510000000004
	.quad	0x40192299d883ba34              # double 6.2837899999999998
	.quad	0x40222a74c09c3ce2              # double 9.0829219999999999
	.quad	0x3fff3da1ec4e7254              # double 1.952547
	.quad	0x401d33c925785f8d              # double 7.3005719999999998
	.quad	0x40228b48d3ae685e              # double 9.2720400000000005
	.quad	0x3faefaa4766c6de7              # double 0.060505999999999997
	.quad	0x40132f7be121ee67              # double 4.7963709999999997
	.quad	0x3ff8c2dcf4623d0c              # double 1.547574
	.quad	0x4019ae47dc37a3db              # double 6.4201959999999998
	.quad	0x40000b69db65ecc4              # double 2.0055730000000001
	.quad	0x401f89856a37ac3f              # double 7.8842980000000002
	.quad	0x400f1551d68c692f              # double 3.8854099999999998
	.quad	0x400626e9ff0cbaf9              # double 2.7690009999999998
	.quad	0x4021c45d41fa7653              # double 8.8835239999999995
	.quad	0x4019a2c0e7bc3c5c              # double 6.4089390000000002
	.quad	0x4012f394face67d7              # double 4.7378729999999996
	.quad	0x400f8415f45e0b4e              # double 3.939495
	.quad	0x4018552a84380885              # double 6.08317
	.quad	0x401c936bd2b6f199              # double 7.1439659999999998
	.quad	0x400089003eea209b              # double 2.0668950000000001
	.quad	0x401c08d60a633051              # double 7.008629
	.quad	0x401703be22e5de16              # double 5.7536550000000002
	.quad	0x4012d698fe69270b              # double 4.709568
	.quad	0x4012d9d388a8b08e              # double 4.7127210000000002
	.quad	0x3fad2b2bfdb4cc25              # double 0.05697
	.quad	0x3ff1007bbb62413e              # double 1.0626180000000001
	.quad	0x4001f6d43d03968d              # double 2.2455219999999998
	.quad	0x40133d3f5b5fa227              # double 4.809812
	.quad	0x401e6a6223e18698              # double 7.6038899999999998
	.quad	0x400950cc35ce1826              # double 3.1644519999999998
	.quad	0x40233a046c764ae0              # double 9.6133150000000001
	.quad	0x400d9d5b24e9c454              # double 3.7018339999999998
	.quad	0x401f56256366d7a5              # double 7.8341269999999996
	.quad	0x4010e30ced4e4c94              # double 4.2217289999999998
	.quad	0x400f9a30121682f9              # double 3.9502869999999999
	.quad	0x3ffa2759ab6d00b4              # double 1.6346069999999999
	.quad	0x4004353ef6b5d463              # double 2.5259990000000001
	.quad	0x401675604189374c              # double 5.6146250000000002
	.quad	0x400b9d2178f68be3              # double 3.451724
	.quad	0x4005b4202d9cf13d              # double 2.712952
	.quad	0x40013dd54da4ce81              # double 2.155192
	.quad	0x40119e78e1932d6f              # double 4.4047580000000002
	.quad	0x4020165dbfceb789              # double 8.0436840000000007
	.quad	0x401b004c48adeebb              # double 6.7502909999999998
	.quad	0x3fff244e93e1c9b4              # double 1.946364
	.quad	0x400e07f77af64064              # double 3.7538900000000002
	.quad	0x4023f201abd1aa82              # double 9.9726689999999998
	.quad	0x400608bd230b9dc3              # double 2.754267
	.quad	0x400c37b7414a4d2b              # double 3.5272049999999999
	.quad	0x3ff85018e757928e              # double 1.519555
	.quad	0x4020d79fcb0c026d              # double 8.4211410000000004
	.quad	0x4022d8c197e56473              # double 9.4233519999999995
	.quad	0x400894289118c198              # double 3.072343
	.quad	0x3ff41a543f1c7582              # double 1.2564280000000001
	.quad	0x401a97110e453d21              # double 6.647526
	.quad	0x4009830b9dc2f406              # double 3.188987
	.quad	0x4022c4e9e5e24788              # double 9.3845969999999994
	.quad	0x401807dc37a3db3c              # double 6.007676
	.quad	0x4011b5f2cb641701              # double 4.4276840000000002
	.quad	0x3fecd91ab8e8ea3a              # double 0.90150200000000003
	.quad	0x40207beccc469510              # double 8.2420410000000004
	.quad	0x40210351159c4977              # double 8.5064779999999995
	.quad	0x401b8a7d6733ebc0              # double 6.8852440000000001
	.quad	0x4012d80389f83be6              # double 4.7109509999999997
	.quad	0x3fe19103c8e25c81              # double 0.548952
	.quad	0x401e06b5d462c344              # double 7.5065530000000003
	.quad	0x3ff45cd91eeaa6d2              # double 1.2726679999999999
	.quad	0x3ff5ed98bf7f0670              # double 1.3705069999999999
	.quad	0x40101bc558644524              # double 4.02712
	.quad	0x401bd7dcbddb9842              # double 6.9608030000000003
	.quad	0x40012ab4fa48301a              # double 2.1458529999999998
	.quad	0x402300919ef954eb              # double 9.5011109999999998
	.quad	0x4016e2391d57ff9b              # double 5.7209209999999997
	.quad	0x3fe1c3c18b502abb              # double 0.55514600000000003
	.quad	0x4023ea96d4c33b54              # double 9.9581820000000007
	.quad	0x4013c26e978d4fdf              # double 4.9398749999999998
	.quad	0x3fe71b30728e92d5              # double 0.72206899999999996
	.quad	0x40055230b9dc2f40              # double 2.6651319999999998
	.quad	0x400a569878316a05              # double 3.2922829999999998
	.quad	0x401ff7ee9142b303              # double 7.992121
	.quad	0x40130797891e2153              # double 4.7574139999999998
	.quad	0x401a1bacf7446f9c              # double 6.5270270000000004
	.quad	0x40200e40a6b93ccd              # double 8.0278369999999999
	.quad	0x4003db1209edbf8c              # double 2.4819680000000002
	.quad	0x401cd019b0ab2e17              # double 7.2032230000000004
	.quad	0x401d8c764adff823              # double 7.3871700000000002
	.quad	0x400b5c5260f5e41d              # double 3.4200789999999999
	.quad	0x3fe44febd09e12a5              # double 0.63475599999999999
	.quad	0x40138062d40aaeb0              # double 4.8753770000000003
	.quad	0x4011ffd82773e250              # double 4.4998480000000001
	.quad	0x3ff32012599ed7c7              # double 1.19533
	.quad	0x401a457c0b135979              # double 6.5678559999999999
	.quad	0x4013b60b6f9fcb0c              # double 4.927778
	.quad	0x40165c39bcba3012              # double 5.5900639999999999
	.quad	0x3fff13cee9dd7ecc              # double 1.9423360000000001
	.quad	0x401ccb7414a4d2b3              # double 7.1986850000000002
	.quad	0x3fb06cb966be7afa              # double 0.064158999999999994
	.quad	0x400e22fb5d031056              # double 3.7670810000000001
	.quad	0x400c2bcf0b6b6e0d              # double 3.5213909999999999
	.quad	0x4002d3b5393250b5              # double 2.3533729999999999
	.quad	0x4020d6542e557de1              # double 8.4186110000000003
	.quad	0x4020a1e55c0fcb4f              # double 8.3162029999999998
	.quad	0x401506d2ed783dff              # double 5.2566639999999998
	.quad	0x401b6723ee1bd1ee              # double 6.8507230000000003
	.quad	0x402199950331e3a8              # double 8.7999650000000003
	.quad	0x4022c38f57f737da              # double 9.3819529999999993
	.quad	0x401381f3a57eaa2a              # double 4.876906
	.quad	0x3fe651a86940357a              # double 0.69746799999999998
	.quad	0x401c0599ed7c6fbd              # double 7.0054699999999999
	.quad	0x4012dace24bba12b              # double 4.7136769999999997
	.quad	0x4018aaccd530489d              # double 6.1667969999999999
	.quad	0x3ffff0e4da09cc32              # double 1.9963120000000001
	.quad	0x4013f9784ec636b1              # double 4.9936230000000004
	.quad	0x40133c1b10fd7e46              # double 4.8086970000000004
	.quad	0x4014ac8cd63cb817              # double 5.1685059999999998
	.quad	0x4023b0e60807357e              # double 9.8455049999999993
	.quad	0x4002a34a01abd1ab              # double 2.3297310000000002
	.quad	0x3ff5df88fc9363f5              # double 1.3670739999999999
	.quad	0x3fee1044f1a1986c              # double 0.93948600000000004
	.quad	0x400d76c8b4395810              # double 3.6829999999999998
	.quad	0x4013b2f76e6106ab              # double 4.9247719999999999
	.quad	0x4023eca0a0f4d7ae              # double 9.9621630000000003
	.quad	0x4018a68dfbd6a594              # double 6.1626510000000003
	.quad	0x401f3bd1aa821f2a              # double 7.8084170000000004
	.quad	0x3ffb3c17a89331a1              # double 1.7021710000000001
	.quad	0x401b07164c729f5a              # double 6.7569210000000002
	.quad	0x4012dd72799a1fd1              # double 4.7162569999999997
	.quad	0x4003030b178b3700              # double 2.3764859999999999
	.quad	0x3ffff7e6f71a7e31              # double 1.9980230000000001
	.quad	0x4000b3e35c5b4aa9              # double 2.0878359999999998
	.quad	0x3ff65eb7457c0b13              # double 1.3981239999999999
	.quad	0x40233893964a59c0              # double 9.6105009999999992
	.quad	0x4017da7b4e54f7a9              # double 5.9633609999999999
	.quad	0x401f6ea9a3d2d880              # double 7.8580690000000004
	.quad	0x40228fbacb428912              # double 9.2807220000000008
	.quad	0x40218031055b8994              # double 8.7503740000000007
	.quad	0x40164e6a76965f52              # double 5.5765779999999996
	.quad	0x401ce6c58eeae9ee              # double 7.2253629999999998
	.quad	0x3fe5fb7e90ff9724              # double 0.68694999999999995
	.quad	0x401446d0917d6b66              # double 5.0691550000000003
	.quad	0x4017fdda48b65237              # double 5.997903
	.quad	0x4001eb72c5197a25              # double 2.2399650000000002
	.quad	0x400e22014727dcbe              # double 3.7666040000000001
	.quad	0x4014226dce39b457              # double 5.0336220000000003
	.quad	0x4022eaecf2064239              # double 9.4588389999999993
	.quad	0x3fde19e30014f8b6              # double 0.47033000000000003
	.quad	0x4022d299d883ba34              # double 9.4113299999999995
	.quad	0x3fe0f02a3486f04a              # double 0.52931700000000004
	.quad	0x40066e696a26e547              # double 2.803912
	.quad	0x400e0f09528f190d              # double 3.757342
	.quad	0x401b0831f03d145e              # double 6.7580030000000004
	.quad	0x40124d798d8a979e              # double 4.5756589999999999
	.quad	0x401d542dcf4623d1              # double 7.3322060000000002
	.quad	0x40211f91e646f156              # double 8.5616599999999998
	.quad	0x401b4a98eda22f6a              # double 6.8228489999999997
	.quad	0x40222de1e2de8709              # double 9.0896139999999992
	.quad	0x3fe550678c0053e3              # double 0.66606500000000002
	.quad	0x40054f6e82949a56              # double 2.6637849999999998
	.quad	0x401564245f5ad96a              # double 5.3477949999999996
	.quad	0x400f796d8f4f93bc              # double 3.934291
	.quad	0x400785b291b823c8              # double 2.9402819999999998
	.quad	0x40189ae297396d09              # double 6.1512549999999999
	.quad	0x40175980f55de58e              # double 5.8374059999999997
	.quad	0x40215432441fea81              # double 8.6644459999999999
	.quad	0x3fe8e4a7b4e54f7b              # double 0.77791200000000005
	.quad	0x400d3918a009f623              # double 3.652879
	.quad	0x3fd9bbd3804534bd              # double 0.40208899999999997
	.quad	0x400ab22fad6cb535              # double 3.337005
	.quad	0x4020e1b9f98b71b9              # double 8.4408720000000006
	.quad	0x3fee4e4430b178b3              # double 0.94705399999999995
	.quad	0x4022d75ea67e846a              # double 9.4206439999999994
	.quad	0x3ff29bb7b6bb1290              # double 1.163017
	.quad	0x40225640c8472c0e              # double 9.1684629999999991
	.quad	0x40229242f1ed17c6              # double 9.2856670000000001
	.quad	0x4015002602c9081c              # double 5.2501449999999998
	.quad	0x401d3f969e3c9689              # double 7.3120979999999998
	.quad	0x3ff500d2c386d2ed              # double 1.3127009999999999
	.quad	0x401b482949a56580              # double 6.8204700000000003
	.quad	0x401bf7db2b346131              # double 6.9920470000000003
	.quad	0x3fbad99cbee807bc              # double 0.104883
	.quad	0x40212236c15d2d02              # double 8.5668240000000004
	.quad	0x401b9bbf50e34763              # double 6.9020970000000004
	.quad	0x3ff92d02cd39da16              # double 1.5734889999999999
	.quad	0x401f21e42e126202              # double 7.7830969999999997
	.quad	0x401a13e7d135115a              # double 6.5194390000000002
	.quad	0x3fe9567dbb16c1e3              # double 0.79180799999999996
	.quad	0x4007abf5d78811b2              # double 2.9589650000000001
	.quad	0x40163b8561d4306e              # double 5.5581259999999997
	.quad	0x4016132d2bb23572              # double 5.5187270000000002
	.quad	0x3fe8bc1acde19fc3              # double 0.77296200000000004
	.quad	0x4019b2888b545c79              # double 6.4243490000000003
	.quad	0x3fe5aec4a4095f24              # double 0.67758399999999996
	.quad	0x4022e10be9424e59              # double 9.4395439999999997
	.quad	0x401d50c996b7670a              # double 7.328894
	.quad	0x3fd672de43ed959a              # double 0.35076099999999999
	.quad	0x3fff866e43aa79bc              # double 1.9703200000000001
	.quad	0x400dc3ec02f2f987              # double 3.7206649999999999
	.quad	0x401d4088d6d3b6cc              # double 7.3130220000000001
	.quad	0x401621de69ad42c4              # double 5.5330750000000002
	.quad	0x401aa404a72ead92              # double 6.6601739999999996
	.quad	0x4022a77dd872f33d              # double 9.3271320000000006
	.quad	0x401f119c17225b75              # double 7.7671970000000003
	.quad	0x401d9bc408d8ec96              # double 7.4021150000000002
	.quad	0x4007be1a8262456f              # double 2.9678239999999998
	.quad	0x3ff7e0b8066c2acc              # double 1.4923630000000001
	.quad	0x40116d5629d8409e              # double 4.3567739999999997
	.quad	0x40209c7f34938583              # double 8.3056579999999993
	.quad	0x40224398e9707182              # double 9.1320259999999998
	.quad	0x4018db18116ebd4d              # double 6.213959
	.quad	0x401cd55757d5a9eb              # double 7.2083409999999999
	.quad	0x401d2774aba38759              # double 7.2885309999999999
	.quad	0x4012118dac258d58              # double 4.5171419999999998
	.quad	0x4017fe9531550ca2              # double 5.9986160000000002
	.quad	0x400ba9ee45c358b0              # double 3.4579740000000001
	.quad	0x4014559ee88df373              # double 5.0836139999999999
	.quad	0x401807082491afc0              # double 6.0068669999999997
	.quad	0x401337c3d68405b4              # double 4.8044580000000003
	.quad	0x401b6ccb3a2595bc              # double 6.8562440000000002
	.quad	0x401609dcf893faf4              # double 5.5096319999999999
	.quad	0x4010f94898f605ab              # double 4.2434409999999998
	.quad	0x401cecb5350092cd              # double 7.23116
	.quad	0x4013f41f644955b4              # double 4.9884009999999996
	.quad	0x4012a3c03bc4d22d              # double 4.6599130000000004
	.quad	0x3fe7e045baf533f4              # double 0.74612699999999998
	.quad	0x3ff50cc78e9f6a94              # double 1.31562
	.quad	0x401bdd5a187a4a49              # double 6.966164
	.quad	0x3fe884d12018a43c              # double 0.76621300000000003
	.quad	0x40228b72606fac60              # double 9.2723569999999995
	.quad	0x3ffd12d55a3a083a              # double 1.8170980000000001
	.quad	0x401009057d1782d4              # double 4.0088100000000004
	.quad	0x401edd7e45803cd1              # double 7.7163019999999997
	.quad	0x401038ccdd93c46e              # double 4.0554690000000004
	.quad	0x401d0227d028a1e0              # double 7.2521050000000002
	.quad	0x3fe59b54195cc858              # double 0.67521100000000001
	.quad	0x400a21d3aa369fcf              # double 3.2665169999999999
	.quad	0x4003eb734b51372a              # double 2.4899659999999999
	.quad	0x40154b2fa93af74d              # double 5.3234240000000002
	.quad	0x40171c03ff69014b              # double 5.7773589999999997
	.quad	0x3fffd40cc78e9f6b              # double 1.9892700000000001
	.quad	0x4021fe362a5e785b              # double 8.9965069999999994
	.quad	0x3fc120535c9e6688              # double 0.133799
	.quad	0x3ff676ad70e6f2e9              # double 1.4039740000000001
	.quad	0x40228917b5286b59              # double 9.2677589999999999
	.quad	0x401af11f926c7eae              # double 6.7354719999999997
	.quad	0x4022d58f92af9a8d              # double 9.4171110000000002
	.quad	0x40145d3f1843c3a4              # double 5.0910609999999998
	.quad	0x3ffbc04c8bc9cd3e              # double 1.734448
	.quad	0x4019e79314445aa3              # double 6.4761470000000001
	.quad	0x40225086162f166e              # double 9.157273
	.quad	0x401a9fd36f7e3d1d              # double 6.6560800000000002
	.quad	0x4021b97460242d06              # double 8.8622160000000001
	.quad	0x40144db65ecc3e32              # double 5.0758910000000004
	.quad	0x3ffc4610f0e90bc8              # double 1.7671060000000001
	.quad	0x3ff84e0a84be4042              # double 1.519053
	.quad	0x401699a7c17a8933              # double 5.6500539999999999
	.quad	0x400210de8f6cefed              # double 2.2582369999999998
	.quad	0x400cc1b8ed1bf7ad              # double 3.5945909999999999
	.quad	0x40056baf102363b2              # double 2.6775799999999998
	.quad	0x400e3b0d51f81a58              # double 3.7788339999999998
	.quad	0x400dc362a5e785b6              # double 3.7204030000000001
	.quad	0x40209b6e935b91f7              # double 8.3035779999999999
	.quad	0x4017fe8c0485a0be              # double 5.9985809999999997
	.quad	0x401769fd7a13c255              # double 5.8535060000000003
	.quad	0x4018a0e453d20f2c              # double 6.1571210000000001
	.quad	0x3ff24fa69be09bb7              # double 1.1444460000000001
	.quad	0x40227f9a2834d270              # double 9.2492230000000006
	.quad	0x4017c0a84be40421              # double 5.938142
	.quad	0x40107ea6c1a048e0              # double 4.1236829999999998
	.quad	0x3fe38c47a17f4129              # double 0.61087400000000003
	.quad	0x3ffb00b88ca3e7d1              # double 1.687676
	.quad	0x40069be8ff327aa7              # double 2.8261280000000002
	.quad	0x40159fa76534373f              # double 5.4059119999999998
	.quad	0x401bc9d12cadddf4              # double 6.9470869999999998
	.quad	0x40141c9afe1da7b1              # double 5.0279350000000003
	.quad	0x3ff36bf5515054ac              # double 1.213857
	.quad	0x400df40895d0b73d              # double 3.744157
	.quad	0x3fe7dd590c0ad03e              # double 0.74577000000000004
	.quad	0x4021e9d755bccaf7              # double 8.9567209999999999
	.quad	0x401a5ec84f8f8a4c              # double 6.5925609999999999
	.quad	0x4015a0a45d41fa76              # double 5.4068769999999997
	.quad	0x4021da0ff540895d              # double 8.9259029999999999
	.quad	0x401f9e0b4e11dbcb              # double 7.9043400000000003
	.quad	0x40197e10060780fe              # double 6.3731080000000002
	.quad	0x40230ecfa69be09c              # double 9.5289280000000005
	.quad	0x40238ce592967019              # double 9.7751889999999992
	.quad	0x4021b729b280f12c              # double 8.8577399999999997
	.quad	0x3feb4944ed6fda83              # double 0.85269399999999995
	.quad	0x402163d944aa53fc              # double 8.6950169999999999
	.quad	0x400b924851a86940              # double 3.4464269999999999
	.quad	0x4021d93c68661ae7              # double 8.9242889999999999
	.quad	0x400d228f5c28f5c3              # double 3.6418750000000002
	.quad	0x4020548abd5dc400              # double 8.1651209999999992
	.quad	0x4023d4f7ec3547e0              # double 9.9159539999999993
	.quad	0x401c8d273d5bab22              # double 7.1378450000000004
	.quad	0x3fff8c0bdcad14a1              # double 1.9716910000000001
	.quad	0x3f9ca4b124d099e1              # double 0.027972
	.quad	0x40098d91eeaa6d26              # double 3.1941259999999998
	.quad	0x401974306e5cd4ed              # double 6.3634659999999998
	.quad	0x4013a6030c23fab1              # double 4.912121
	.quad	0x40181d612c6ac216              # double 6.0286910000000002
	.quad	0x40199e9185cee17a              # double 6.404852
	.quad	0x3fc989f83be6601c              # double 0.19952300000000001
	.quad	0x4012289d27c39368              # double 4.5396619999999999
	.quad	0x3ffeea0ec7432010              # double 1.9321429999999999
	.quad	0x4019ded5ae1cde5d              # double 6.4676119999999999
	.quad	0x4015ad573647baaa              # double 5.4192780000000003
	.quad	0x401909e83e425aee              # double 6.2596749999999997
	.quad	0x3fe9d12a94ff0026              # double 0.80678300000000003
	.quad	0x400a9db5525cc426              # double 3.3270059999999999
	.quad	0x3fe62f20ea5b530d              # double 0.69325300000000001
	.quad	0x3ff861144cbe1eb4              # double 1.523701
	.quad	0x4012fbf8769ec2ce              # double 4.7460649999999998
	.quad	0x4013f151e75360d0              # double 4.9856639999999999
	.quad	0x40201b6501e2584f              # double 8.0535049999999995
	.quad	0x3fe8ff8a8f3a9b07              # double 0.78119400000000006
	.quad	0x400d42dc6e2a8006              # double 3.6576469999999999
	.quad	0x4021fae48e8a71de              # double 8.9900249999999993
	.quad	0x40110a1554fbdad7              # double 4.2598469999999997
	.quad	0x40159ed3953dea46              # double 5.4051039999999997
	.quad	0x400ddcd24e160d88              # double 3.7328229999999998
	.quad	0x3ff26f81626b2f23              # double 1.152223
	.quad	0x400acb441bb8c32b              # double 3.3492510000000002
	.quad	0x3ffa4ceb356da017              # double 1.6437790000000001
	.quad	0x4011ff2f55582129              # double 4.4992039999999998
	.quad	0x400ed2df505d0fa6              # double 3.8529650000000002
	.quad	0x401d45a8deb0fadf              # double 7.3180269999999998
	.quad	0x400ee357a355043e              # double 3.8610069999999999
	.quad	0x400b7f3519bd4068              # double 3.4371130000000001
	.quad	0x3ff34f8e7ddca4b1              # double 1.206923
	.quad	0x3ff869ec2ce46499              # double 1.52586
	.quad	0x402303f077ccc038              # double 9.5076940000000007
	.quad	0x401f34199fe43676              # double 7.8008790000000001
	.quad	0x401554bf4cb1897a              # double 5.3327609999999996
	.quad	0x4022d9973d9ec700              # double 9.424982
	.quad	0x4016335371971c11              # double 5.5501230000000001
	.quad	0x40205d6b441bb8c3              # double 8.1824589999999997
	.quad	0x3fb379b77c02afde              # double 0.076076000000000005
	.quad	0x401e6c1f85d744f6              # double 7.6055890000000002
	.quad	0x4019286cebbba55d              # double 6.2894779999999999
	.quad	0x401c44af0bf1a5ca              # double 7.0670739999999999
	.quad	0x4014d638c9752978              # double 5.2092010000000002
	.quad	0x401814934267839d              # double 6.0200930000000001
	.quad	0x4018d6eeb702602d              # double 6.2098950000000004
	.quad	0x401d06bc621b7e0b              # double 7.2565780000000002
	.quad	0x4021eb688bda9436              # double 8.9597820000000006
	.quad	0x40212c4178705426              # double 8.5864370000000001
	.quad	0x4016e3b688bda943              # double 5.7223759999999997
	.quad	0x4022d0ecb74ddf87              # double 9.4080560000000001
	.quad	0x4011f8255b035bd5              # double 4.4923299999999999
	.quad	0x400dfc947064ecea              # double 3.7483300000000002
	.quad	0x4011d0a7c5ac471b              # double 4.4537649999999998
	.quad	0x4006137110e453d2              # double 2.759493
	.quad	0x401e24577d955715              # double 7.5354900000000002
	.quad	0x4011da9e6eeb7026              # double 4.463495
	.quad	0x40070cb85a4f00ef              # double 2.881211
	.quad	0x4005ed0f6273929f              # double 2.7407520000000001
	.quad	0x401b9a261bf37b8d              # double 6.9005359999999998
	.quad	0x402381ef0f16f438              # double 9.7537769999999994
	.quad	0x401e8f7164c729f6              # double 7.6400810000000003
	.quad	0x401e5b790fb65669              # double 7.5893290000000002
	.quad	0x40031584b1ab0857              # double 2.385507
	.quad	0x4021b92253111f0c              # double 8.8615899999999996
	.quad	0x3ff8a68f4b61fe22              # double 1.540664
	.quad	0x40198c77dd872f34              # double 6.3871760000000002
	.quad	0x3ff76bb6672fba02              # double 1.463797
	.quad	0x4013056084a515cf              # double 4.7552510000000003
	.quad	0x401e0189374bc6a8              # double 7.5015
	.quad	0x3ff9a49b1fab96f2              # double 1.602687
	.quad	0x4021366fd651b0cd              # double 8.6063220000000005
	.quad	0x401f629bf162ae4b              # double 7.8462979999999999
	.quad	0x40037d26b723ee1c              # double 2.4361090000000001
	.quad	0x4016a1e108c3f3e0              # double 5.6580849999999998
	.quad	0x40089fec13b9f128              # double 3.078087
	.quad	0x3fe1b75ea67e846a              # double 0.55363399999999996
	.quad	0x40166debd9018e75              # double 5.6073449999999996
	.quad	0x40111d87724fa8b5              # double 4.2788370000000002
	.quad	0x3ff13151e75360d0              # double 1.074541
	.quad	0x3ff9c49a9973d9ec              # double 1.6104989999999999
	.quad	0x4020580474d9c6b0              # double 8.1719089999999994
	.quad	0x3ff6f3df2a9d627c              # double 1.434539
	.quad	0x3fd4580c308feac4              # double 0.31787399999999999
	.quad	0x40223fef5a964e8b              # double 9.1248729999999991
	.quad	0x4022b70e4da09cc3              # double 9.3575309999999998
	.quad	0x401e9f972474538f              # double 7.65585
	.quad	0x401411fb3fa6defc              # double 5.0175599999999996
	.quad	0x4022012b7fe08af0              # double 9.0022850000000005
	.quad	0x3fff850efdc9c4db              # double 1.9699850000000001
	.quad	0x40229723033a4724              # double 9.2951890000000005
	.quad	0x3ff7a04f2ae07e5a              # double 1.4766379999999999
	.quad	0x3ffb3f7be121ee67              # double 1.7029989999999999
	.quad	0x4019612a94ff0026              # double 6.3448890000000002
	.quad	0x401b9706d5065732              # double 6.8974869999999999
	.quad	0x4019c49cf56eac86              # double 6.442005
	.quad	0x401ee9118c197e56              # double 7.7276059999999998
	.quad	0x4022dbfec13b9f12              # double 9.4296779999999991
	.quad	0x40139a012599ed7c              # double 4.9003949999999996
	.quad	0x40130a9fbe76c8b4              # double 4.7603749999999998
	.quad	0x40220b55ef1fddec              # double 9.0221400000000002
	.quad	0x40185fdc5931ca7d              # double 6.0936139999999996
	.quad	0x401469a06a6e32e4              # double 5.1031510000000004
	.quad	0x401c357abb8800eb              # double 7.0522260000000001
	.quad	0x400b73bd1676640a              # double 3.4315129999999998
	.quad	0x402316df61240746              # double 9.5446729999999995
	.quad	0x40202bfdb4cc2507              # double 8.0859199999999998
	.quad	0x401342702a3486f0              # double 4.8148809999999997
	.quad	0x4002a3126e978d50              # double 2.3296250000000001
	.quad	0x40196cba732df506              # double 6.3561800000000002
	.quad	0x401f5d3bf2f55582              # double 7.8410489999999999
	.quad	0x4023f6fbf401c4fc              # double 9.9823909999999997
	.quad	0x3feba5a89b951c5c              # double 0.86397199999999996
	.quad	0x401af4894c447c31              # double 6.7388050000000002
	.quad	0x4022cd59f6ec5b08              # double 9.4010770000000007
	.quad	0x3fc7004fb1183b60              # double 0.179697
	.quad	0x400b5355475a31a5              # double 3.4156900000000001
	.quad	0x4007f03ea704bc27              # double 2.9923069999999998
	.quad	0x3ff0dd8d79d0a676              # double 1.05409
	.quad	0x400db68f08461f9f              # double 3.71414
	.quad	0x400860ccff21b3af              # double 3.047266
	.quad	0x40114b59578a2a91              # double 4.3235830000000002
	.quad	0x401f6f2a9d627bf6              # double 7.8585609999999999
	.quad	0x401eb6501e2584f5              # double 7.6780400000000001
	.quad	0x3feed6a7ac81d3aa              # double 0.96370299999999998
	.quad	0x400c151266341180              # double 3.5102890000000002
	.quad	0x401fae789e774eec              # double 7.920382
	.quad	0x3ffd2e935b91f70e              # double 1.823871
	.quad	0x402211ac14c660a2              # double 9.034516
	.quad	0x4021ffe931876189              # double 8.9998260000000005
	.quad	0x401507357e670e2c              # double 5.2570399999999999
	.quad	0x40156e4d1a650614              # double 5.3577159999999999
	.quad	0x401c8cb252ce032e              # double 7.1373990000000003
	.quad	0x3ff703a322af5771              # double 1.438388
	.quad	0x3ffc1a3f4666ec9e              # double 1.756408
	.quad	0x40218963992c8c50              # double 8.768338
	.quad	0x4014d25e56cd6c2f              # double 5.205438
	.quad	0x40193e310dbf0564              # double 6.3107340000000001
	.quad	0x3ff62a3ad18d25ee              # double 1.38531
	.quad	0x3fd1d4b6a619da9d              # double 0.27860800000000002
	.quad	0x4006f3ad5bee3d60              # double 2.8689830000000001
	.quad	0x401c4209aaa3ad19              # double 7.0644900000000002
	.quad	0x401baad1d041cc53              # double 6.9168159999999999
	.quad	0x40064a7ac81d3aa3              # double 2.7863669999999998
	.quad	0x40219115592d98bf              # double 8.7833659999999991
	.quad	0x4020a73e681a9b8d              # double 8.3266480000000005
	.quad	0x40144c58255b035c              # double 5.0745550000000001
	.quad	0x3ff5770de8f6ceff              # double 1.341566
	.quad	0x4023367d1351159c              # double 9.6064229999999994
	.quad	0x40107ff1950331e4              # double 4.1249450000000003
	.quad	0x40184332acfb762e              # double 6.0656230000000004
	.quad	0x401cc547e06961c3              # double 7.1926569999999996
	.quad	0x40191be596c82e02              # double 6.2772430000000004
	.quad	0x40200601ffb480a6              # double 8.0117340000000006
	.quad	0x402241d5c31593e6              # double 9.128584
	.quad	0x4016bfbbd7b2031d              # double 5.6872400000000001
	.quad	0x40136b56b8737974              # double 4.8548229999999997
	.quad	0x400e734f82f51266              # double 3.8063039999999999
	.quad	0x4021eb111f0c34c2              # double 8.9591150000000006
	.quad	0x401f9ff2a172abef              # double 7.9061989999999999
	.quad	0x40210672b884406c              # double 8.5125939999999999
	.quad	0x4021b246173b85e8              # double 8.8481909999999999
	.quad	0x3feea75cd0bb6ed6              # double 0.95792999999999995
	.quad	0x401754e1e71044f2              # double 5.8328930000000003
	.quad	0x40201e81a9b8cb8e              # double 8.0595829999999999
	.quad	0x40223e4f11b60ae9              # double 9.1216969999999993
	.quad	0x40229413fd0d0679              # double 9.2892150000000004
	.quad	0x400e8d2bb23571d2              # double 3.8189310000000001
	.quad	0x401a54bf4cb1897a              # double 6.5827609999999996
	.quad	0x400dee38a7e73a36              # double 3.7413189999999998
	.quad	0x3fb8c521dda059a7              # double 0.096757999999999997
	.quad	0x4023b132f87ad081              # double 9.8460920000000005
	.quad	0x401fe7546d3f9e7c              # double 7.9759080000000004
	.quad	0x40154603d577963a              # double 5.3183740000000004
	.quad	0x3fff1b43526527a2              # double 1.944156
	.quad	0x401434afd5454153              # double 5.0514520000000003
	.quad	0x4014c7d3d4280ae1              # double 5.195144
	.quad	0x3fdfee8d10f51aca              # double 0.49893500000000002
	.quad	0x401debc27631b585              # double 7.4802340000000003
	.quad	0x401d89f0e4da09cc              # double 7.3847079999999998
	.quad	0x401c72135daad602              # double 7.111402
	.quad	0x400d0cfbfc6540cc              # double 3.6313399999999998
	.quad	0x3ffe6a3cea6c1a05              # double 1.9009370000000001
	.quad	0x40203fcd466f501a              # double 8.1246130000000001
	.quad	0x4021851958969a0b              # double 8.7599590000000003
	.quad	0x401c3785729b280f              # double 7.0542199999999999
	.quad	0x40121c970f7b9e06              # double 4.5279199999999999
	.quad	0x40229314ca925fe9              # double 9.2872679999999992
	.quad	0x400adffcdab191de              # double 3.359369
	.quad	0x4020791a75cd0bb7              # double 8.2365300000000001
	.quad	0x40171f74cd31769b              # double 5.7807190000000004
	.quad	0x40118e0ce0b912dc              # double 4.3887210000000003
	.quad	0x400f60d0aaa7ded7              # double 3.9222730000000001
	.quad	0x4022b18b502ababf              # double 9.3467660000000006
	.quad	0x4015e05af6c69b5a              # double 5.4690969999999997
	.quad	0x3ffbcc0053e2d624              # double 1.7373050000000001
	.quad	0x4015f925fe974a34              # double 5.493309
	.quad	0x3ffea991ff7164c7              # double 1.916399
	.quad	0x3fd8709310129cbb              # double 0.38187100000000002
	.quad	0x3fe96d740c4156e2              # double 0.79461099999999996
	.quad	0x40017aa3f034b0e2              # double 2.1848830000000001
	.quad	0x40232535653c9abb              # double 9.5726729999999999
	.quad	0x400495c9e6687f45              # double 2.5731389999999998
	.quad	0x40158c5974e65bea              # double 5.38706
	.quad	0x401f26102795703f              # double 7.7871709999999998
	.quad	0x40174fc9363f572e              # double 5.8279160000000001
	.quad	0x4022734b2fa93af7              # double 9.2251829999999995
	.quad	0x401fb5019f3c70ca              # double 7.9267640000000004
	.quad	0x4023aa55b035bd51              # double 9.8326849999999996
	.quad	0x40226cf0520d130e              # double 9.212771
	.quad	0x3ffd62fad6cb5350              # double 1.836665
	.quad	0x4018513660e51d26              # double 6.0793090000000003
	.quad	0x3fda2845996744b3              # double 0.40870800000000002
	.quad	0x3fe530014f8b588e              # double 0.66210999999999998
	.quad	0x4022e233bd9cae21              # double 9.4418009999999998
	.quad	0x400b0b884406c00e              # double 3.3806310000000002
	.quad	0x3fd2db8348f53c58              # double 0.29464800000000002
	.quad	0x400065cb35f3d7d4              # double 2.0497040000000002
	.quad	0x4019f468cac4b4d0              # double 6.4886809999999997
	.quad	0x402120e0c9d9d346              # double 8.5642150000000008
	.quad	0x3fb97646ae3a3a8e              # double 0.099460999999999993
	.quad	0x401559949e8815e4              # double 5.3374810000000004
	.quad	0x4021fbea704bc276              # double 8.9920229999999997
	.quad	0x40066310dbf0563f              # double 2.7983720000000001
	.quad	0x402238900c521dda              # double 9.110474
	.quad	0x3ff839b66f9335d2              # double 1.5140899999999999
	.quad	0x4013122036006d0d              # double 4.7677009999999997
	.quad	0x40152cf0739b024f              # double 5.2938859999999996
	.quad	0x4017e59a30984e40              # double 5.974221
	.quad	0x3ff7807fed20296b              # double 1.468872
	.quad	0x40198f5275ee99a6              # double 6.3899629999999998
	.quad	0x4014c1dffc5479d5              # double 5.1893310000000001
	.quad	0x40148e48e8a71de7              # double 5.1389500000000004
	.quad	0x4004a4d013a92a30              # double 2.5804749999999999
	.quad	0x4000b36cdf266ba5              # double 2.0876100000000002
	.quad	0x4013112be48a58b4              # double 4.766769
	.quad	0x4023f70d844d013b              # double 9.9825250000000007
	.quad	0x401b1851654d61b3              # double 6.7737480000000003
	.quad	0x400ab284167a95c8              # double 3.3371659999999999
	.quad	0x4014cadf71eafee7              # double 5.198118
	.quad	0x4004f4ef459d9903              # double 2.6195970000000002
	.quad	0x400ad4dd72367e41              # double 3.3539379999999999
	.quad	0x401b122d5171e29b              # double 6.7677509999999996
	.quad	0x40183576cce5f740              # double 6.0522109999999998
	.quad	0x4003f930be0ded29              # double 2.4966750000000002
	.quad	0x4021ec996b7670a0              # double 8.9621080000000006
	.quad	0x401a32f9ca5bd945              # double 6.5497810000000003
	.quad	0x401ef0e410b630a9              # double 7.7352449999999999
	.quad	0x4021cf67d34df04e              # double 8.9050890000000003
	.quad	0x4006c6c7eae5bc88              # double 2.8470610000000001
	.quad	0x400b8f5903a7546d              # double 3.4449939999999999
	.quad	0x4018b854046412cf              # double 6.1800079999999999
	.quad	0x400b38b827fa1a0d              # double 3.402695
	.quad	0x4018aa8b8f14db59              # double 6.1665479999999997
	.quad	0x400d7bb517a46174              # double 3.6854040000000001
	.quad	0x40074ea077036c9c              # double 2.913392
	.quad	0x3fccf95d4e8fb00c              # double 0.22636000000000001
	.quad	0x401229c62a1b5c7d              # double 4.5407950000000001
	.quad	0x40205f0cdc8754f3              # double 8.1856449999999992
	.quad	0x4005691c8eabffce              # double 2.6763240000000001
	.quad	0x400e3b5525cc4263              # double 3.7789709999999999
	.quad	0x401bc2c061847f56              # double 6.9401869999999999
	.quad	0x3ff9dbcba3012168              # double 1.616161
	.quad	0x4021760e736049ed              # double 8.7305790000000005
	.quad	0x400c236199780baa              # double 3.5172759999999998
	.quad	0x401bd9df548ecd8e              # double 6.9627660000000002
	.quad	0x400d7940fecdd0d9              # double 3.6842060000000001
	.quad	0x400c9336deb95e5b              # double 3.571882
	.quad	0x401dd42f1ed17c5f              # double 7.457211
	.quad	0x40155d7ba6698bb5              # double 5.3412920000000002
	.quad	0x4018b6006d0d4995              # double 6.1777360000000003
	.quad	0x4017d564b662fdfc              # double 5.9583919999999999
	.quad	0x3fee61ed5ae1cde6              # double 0.94945400000000002
	.quad	0x3ffb16a6a012599f              # double 1.69303
	.quad	0x401935b7cfe58601              # double 6.3024589999999998
	.quad	0x40120ad96a6a0126              # double 4.5105950000000004
	.quad	0x3ff1b9335d249e45              # double 1.107715
	.quad	0x4010780c73abc947              # double 4.117235
	.quad	0x400db71e29b6b2af              # double 3.714413
	.quad	0x3fd3425f202107b8              # double 0.30092600000000003
	.quad	0x4008b2cbea4ebdd3              # double 3.0873029999999999
	.quad	0x4012aed0f627392a              # double 4.6707190000000001
	.quad	0x40040aa9717df19d              # double 2.5052059999999998
	.quad	0x402350247021d10b              # double 9.6565279999999997
	.quad	0x40167ab191dde376              # double 5.6198180000000004
	.quad	0x4017384a9478c869              # double 5.8049720000000002
	.quad	0x402178cc78e9f6a9              # double 8.7359349999999996
	.quad	0x4004654b48d3ae68              # double 2.5494599999999998
	.quad	0x3fc16494d50ebaae              # double 0.135882
	.quad	0x3ff4769b9d7fd827              # double 1.2789569999999999
	.quad	0x3ff04927913e8145              # double 1.01786
	.quad	0x402319ed3953dea4              # double 9.5506379999999992
	.quad	0x4019fa0232096788              # double 6.4941490000000002
	.quad	0x401483f316e37154              # double 5.128857
	.quad	0x4001fd4ae429e0a4              # double 2.248678
	.quad	0x400a94d9c6b0531a              # double 3.3226810000000002
	.quad	0x401335a5332acfb7              # double 4.8023879999999997
	.quad	0x401389cf13cee9dd              # double 4.8845789999999996
	.quad	0x4020a1f4f50a02b8              # double 8.3163219999999995
	.quad	0x400ba9f2778140dd              # double 3.4579819999999999
	.quad	0x3fe63ead4f5903a7              # double 0.69515099999999996
	.quad	0x401fc8ac5c13fd0d              # double 7.9459699999999999
	.quad	0x400c02962cfd8f0c              # double 3.5012629999999998
	.quad	0x401a99b2c40d0aaa              # double 6.6500959999999996
	.quad	0x40006cb31c219eb6              # double 2.0530759999999999
	.quad	0x401d458c8eef1bac              # double 7.3179189999999998
	.quad	0x4010b236c15d2d02              # double 4.1740370000000002
	.quad	0x3ff8ef6a50d6b229              # double 1.558451
	.quad	0x4001498fe69270b0              # double 2.1609189999999998
	.quad	0x3ff3c9c5e6ff7dfa              # double 1.236761
	.quad	0x4010c84167a95c85              # double 4.1955619999999998
	.quad	0x40196ef954eb13e0              # double 6.3583730000000003
	.quad	0x400fa34c1a8ac5c1              # double 3.9547349999999999
	.quad	0x3feaaf01754b05b8              # double 0.83386300000000002
	.quad	0x4008b63886594af5              # double 3.088975
	.quad	0x40209a2fad6cb535              # double 8.301145
	.quad	0x40193b7e4de3b8a2              # double 6.3080990000000003
	.quad	0x3f8269595feda661              # double 0.0089899999999999997
	.quad	0x402274e0fc2eba28              # double 9.2282790000000005
	.quad	0x402365d18090b418              # double 9.6988640000000003
	.quad	0x3ffb9616f86a0989              # double 1.724143
	.quad	0x400c3e5c0b999136              # double 3.5304489999999999
	.quad	0x40114b5c7cd898b3              # double 4.3235950000000001
	.quad	0x401834bd33d29564              # double 6.0515030000000003
	.quad	0x401b5d8e432441ff              # double 6.8413630000000003
	.quad	0x400be3526527a205              # double 3.4859969999999998
	.quad	0x400d691d9b1b79d9              # double 3.676326
	.quad	0x401f9101f31f46ed              # double 7.8916089999999998
	.quad	0x40003b34a44c7b03              # double 2.0289090000000001
	.quad	0x4017605143bf7271              # double 5.8440599999999998
	.quad	0x40213940bbb1f256              # double 8.6118220000000001
	.quad	0x40109113c68661ae              # double 4.1416769999999996
	.quad	0x40158967caea747e              # double 5.3841850000000004
	.quad	0x401fb3c60029f16b              # double 7.9255599999999999
	.quad	0x401d5da48b652370              # double 7.3414479999999998
	.quad	0x4004484944ed6fdb              # double 2.5352960000000002
	.quad	0x401861bd61f5be5e              # double 6.0954490000000003
	.quad	0x40225af81626b2f2              # double 9.1776739999999997
	.quad	0x3fd8b6dca07f66e8              # double 0.38616099999999998
	.quad	0x3fe81af1886df82b              # double 0.75328899999999999
	.quad	0x40196029ae4f3344              # double 6.343909
	.quad	0x40015307af20ea5b              # double 2.1655419999999999
	.quad	0x400a4b2e1693c03c              # double 3.2867090000000001
	.quad	0x401f9388ebcc6c55              # double 7.8940770000000002
	.quad	0x40200946c332f017              # double 8.0181179999999994
	.quad	0x40227c76f2a5a46a              # double 9.2430950000000003
	.quad	0x401a513f8db48909              # double 6.5793439999999999
	.quad	0x40161f826edaa92e              # double 5.5307709999999997
	.quad	0x4023de92b3cc4ac7              # double 9.9347130000000003
	.quad	0x3ff28deb0fadf2ed              # double 1.159648
	.quad	0x402229c8216c6152              # double 9.0816049999999997
	.quad	0x3fe3fd30ad46f588              # double 0.62465700000000002
	.quad	0x40217a41a261bf38              # double 8.7387820000000005
	.quad	0x401a2532a497fa5d              # double 6.5363259999999999
	.quad	0x3ff241cf7878b7a2              # double 1.1410670000000001
	.quad	0x400629dd7ecbb7fa              # double 2.7704420000000001
	.quad	0x40213f52977c88e8              # double 8.6236770000000007
	.quad	0x40219e41700cd856              # double 8.8090930000000007
	.quad	0x401db8d36b4c7f35              # double 7.4304940000000004
	.quad	0x40203b7f5a5332ad              # double 8.116206
	.quad	0x402117b41bfbdf09              # double 8.5462959999999999
	.quad	0x401ed008a697aede              # double 7.7031580000000002
	.quad	0x3ff46e3c536d655e              # double 1.276913
	.quad	0x40196d816aceaaf3              # double 6.3569389999999997
	.quad	0x401ffd4a5df2239e              # double 7.9973539999999996
	.quad	0x400654e65bea0ba2              # double 2.791455
	.quad	0x401b2b45ae5ffa3c              # double 6.7922580000000004
	.quad	0x40181a0a52695960              # double 6.0254300000000001
	.quad	0x400afc90c4dec1c2              # double 3.3733230000000001
	.quad	0x4003aadcd2d44dcb              # double 2.4584290000000002
	.quad	0x400ef16a055757d6              # double 3.8678780000000001
	.quad	0x400b56006d0d4995              # double 3.4169930000000002
	.quad	0x4003f360d0247022              # double 2.4938370000000001
	.quad	0x4012a3821af7d30b              # double 4.6596760000000002
	.quad	0x3fc9da9c99285a92              # double 0.201984
	.quad	0x3fe7f0cdc8754f37              # double 0.74814499999999995
	.quad	0x4020210ff9724745              # double 8.0645749999999996
	.quad	0x4010c3cd573647bb              # double 4.1912130000000003
	.quad	0x40114c6b05319829              # double 4.3246270000000004
	.quad	0x40023343fa2ad3e9              # double 2.2750319999999999
	.quad	0x40079d7b2031ceaf              # double 2.9518949999999999
	.quad	0x4013659ff4fd6d7f              # double 4.8492430000000004
	.quad	0x400bc45e4e69f05f              # double 3.4708830000000002
	.quad	0x3fe59e215336deb9              # double 0.67555299999999996
	.quad	0x401765e529bae46d              # double 5.849507
	.quad	0x4021ed2b90a78290              # double 8.9632229999999993
	.quad	0x40042b524399b2c4              # double 2.521153
	.quad	0x40191ae18ac9f2fe              # double 6.2762510000000002
	.quad	0x401f28ee6b8305d9              # double 7.7899719999999996
	.quad	0x400a42d40aaeafab              # double 3.2826309999999999
	.quad	0x40232fd7a13c254a              # double 9.5934419999999996
	.quad	0x401f497fe8ee6b83              # double 7.8217769999999999
	.quad	0x3fcb082491afc04d              # double 0.21118600000000001
	.quad	0x401cfda5119ce076              # double 7.2477
	.quad	0x4006233ce63a5c1c              # double 2.7672059999999998
	.quad	0x4012f78359bc33f8              # double 4.7417119999999997
	.quad	0x4015aa81dc0db270              # double 5.4165109999999999
	.quad	0x40174497fa5d28d0              # double 5.816986
	.quad	0x401b0a5ebb7739f3              # double 6.7601269999999998
	.quad	0x40137becedd48451              # double 4.8710209999999998
	.quad	0x401693d6c7219221              # double 5.644374
	.quad	0x3ff1a453d20f2bed              # double 1.102619
	.quad	0x3ff8dce075f6fd22              # double 1.553925
	.quad	0x3fe4bff25e56cd6c              # double 0.64843099999999998
	.quad	0x40007974e65bea0c              # double 2.0593050000000002
	.quad	0x401c5d00b45ae600              # double 7.0908230000000003
	.quad	0x400d7724fa8b4bf9              # double 3.683176
	.quad	0x401ec862b27cbf6e              # double 7.6956889999999998
	.quad	0x4014e16b11c6d1e1              # double 5.220135
	.quad	0x40189364388ebcc7              # double 6.1439370000000002
	.quad	0x40163a2339c0ebee              # double 5.556775
	.quad	0x400d43137b07075b              # double 3.6577519999999999
	.quad	0x3fffc24f6598e10d              # double 1.984939
	.quad	0x40143be6601bc98a              # double 5.0584959999999999
	.quad	0x401ce7eb6bf444e1              # double 7.2264840000000001
	.quad	0x3fc3fd71b0468449              # double 0.15617200000000001
	.quad	0x40214a70b06c43f6              # double 8.645391
	.quad	0x40229841cc532a49              # double 9.2973769999999991
	.quad	0x400bf1e42e126202              # double 3.4931109999999999
	.quad	0x40163980f55de58e              # double 5.5561559999999997
	.quad	0x4020fed15ad106ee              # double 8.4976909999999997
	.quad	0x4001ca9bcfd4bf0a              # double 2.2239300000000002
	.quad	0x401ebe1262025397              # double 7.6856169999999996
	.quad	0x4023c3fab10ba626              # double 9.8827719999999992
	.quad	0x3fd93bafd976ff3b              # double 0.39426800000000001
	.quad	0x3ff1fb267c6b8b69              # double 1.1238159999999999
	.quad	0x4000191eeaa6d267              # double 2.0122659999999999
	.quad	0x400a5a8f7db6e504              # double 3.294219
	.quad	0x40212a88051c9f73              # double 8.5830690000000001
	.quad	0x40160ea6c1a048e0              # double 5.5143079999999998
	.quad	0x40110abd1aa821f3              # double 4.2604870000000004
	.quad	0x401b6af859429175              # double 6.854463
	.quad	0x4021a263d816aceb              # double 8.8171680000000006
	.quad	0x4023d51f1cfbb949              # double 9.9162529999999993
	.quad	0x401e61f42bb66730              # double 7.5956580000000002
	.quad	0x400cd4ff865d7cb3              # double 3.6040030000000001
	.quad	0x4013363e8dda48b6              # double 4.8029729999999997
	.quad	0x40171af2d7f950b9              # double 5.7763169999999997
	.quad	0x40238669270b06c4              # double 9.7625209999999995
	.quad	0x4021040420f6f08d              # double 8.5078440000000004
	.quad	0x400ce9bae46cfc83              # double 3.6141260000000002
	.quad	0x40125cb1cc964628              # double 4.590522
	.quad	0x4023256c0d6f544c              # double 9.5730900000000005
	.quad	0x40150a38fbca105a              # double 5.2599830000000001
	.quad	0x40142d701d9f4d38              # double 5.0443730000000002
	.quad	0x3ff393f39d1b2e5a              # double 1.2236210000000001
	.quad	0x3fff0c5eb313be23              # double 1.94052
	.quad	0x400ccae74f2f123c              # double 3.5990739999999999
	.quad	0x3fd9bdcf0307f23d              # double 0.40221000000000001
	.quad	0x400f5f81a5870da6              # double 3.9216340000000001
	.quad	0x4021fe0370cdc875              # double 8.9961199999999995
	.quad	0x4008d93250b5243a              # double 3.1060530000000002
	.quad	0x40168a8a82a5614e              # double 5.635294
	.quad	0x3ff378b9baa1511e              # double 1.216974
	.quad	0x3ff77fca85caafbc              # double 1.468699
	.quad	0x400c922424a276b8              # double 3.571358
	.quad	0x3ff6d635610adcd3              # double 1.427297
	.quad	0x40219df1172ef0ae              # double 8.8084799999999994
	.quad	0x3feb58750c1b9735              # double 0.85454799999999997
	.quad	0x4021cd2a84380885              # double 8.9007149999999999
	.quad	0x4020049d16fc9bc7              # double 8.0090109999999992
	.quad	0x4023ea35d67ba238              # double 9.9574420000000003
	.quad	0x4010761e92923e5c              # double 4.1153510000000004
	.quad	0x3ff2701b866e43aa              # double 1.1523699999999999
	.quad	0x40199afee6fb4c3c              # double 6.4013629999999999
	.quad	0x3ffaa6d15ad106ee              # double 1.665727
	.quad	0x4009cffa7eb6bf44              # double 3.2265519999999999
	.quad	0x3fe2394face67d78              # double 0.569496
	.quad	0x400a890f733a8a40              # double 3.3169240000000002
	.quad	0x40209f2e05ccc89b              # double 8.3108979999999999
	.quad	0x4020371151611ba4              # double 8.1075540000000003
	.quad	0x400cabce8533b107              # double 3.5838899999999998
	.quad	0x40210bf077ccc038              # double 8.5233190000000008
	.quad	0x40203107faa044af              # double 8.0957640000000008
	.quad	0x3fc43d0bfa0945fa              # double 0.158113
	.quad	0x3ff5c8ca3e7d1351              # double 1.361521
	.quad	0x3ffbbce0fc2eba28              # double 1.7336130000000001
	.quad	0x4022026fa3fcc9eb              # double 9.0047580000000007
	.quad	0x40164b841248d7e0              # double 5.5737459999999999
	.quad	0x40226c3aeab7995f              # double 9.2113870000000002
	.quad	0x3ff5f1cc96462802              # double 1.3715329999999999
	.quad	0x40054a2ec28b2a6b              # double 2.661222
	.quad	0x4013f0431bde82d8              # double 4.9846310000000003
	.quad	0x400e927cbf6e3f79              # double 3.8215270000000001
	.quad	0x401efbbf93ff25e5              # double 7.7458479999999996
	.quad	0x40089e6e653868fd              # double 3.077359
	.quad	0x40032d7060bb2bbb              # double 2.3971870000000002
	.quad	0x4011c02cd39da166              # double 4.4376709999999999
	.quad	0x40070a8c154c985f              # double 2.88015
	.quad	0x4015d6b26bf8769f              # double 5.4596650000000002
	.quad	0x3fe9bca5375c8da0              # double 0.80427800000000004
	.quad	0x4019057214f0520d              # double 6.2553179999999999
	.quad	0x4002796bfca85cab              # double 2.309288
	.quad	0x4019e567dbb16c1e              # double 6.4740289999999998
	.quad	0x4020556f97679032              # double 8.1668669999999999
	.quad	0x401f28793dd97f63              # double 7.7895250000000002
	.quad	0x400ae7a8d64d7f0f              # double 3.3631150000000001
	.quad	0x40222ae7d566cf42              # double 9.0838000000000001
	.quad	0x4010a94898f605ab              # double 4.1653159999999998
	.quad	0x3fde6d7e889c1b54              # double 0.47543299999999999
	.quad	0x4004ac5436b8f9b1              # double 2.5841449999999999
	.quad	0x40167220ff540896              # double 5.6114540000000002
	.quad	0x3fe2c4588a04d120              # double 0.58646799999999999
	.quad	0x4020bff1b6912125              # double 8.3748909999999999
	.quad	0x3ff626b0d9513f8e              # double 1.3844460000000001
	.quad	0x3fffa71ac14c660a              # double 1.978297
	.quad	0x4020428954a7f801              # double 8.1299539999999997
	.quad	0x3fff88b652370479              # double 1.970877
	.quad	0x40141774256bca53              # double 5.0229039999999996
	.quad	0x4014233c1ce6c094              # double 5.0344090000000001
	.quad	0x400de45dc8323359              # double 3.736507
	.quad	0x4011f9e9d0e991ff              # double 4.4940559999999996
	.quad	0x401d806d0d49949f              # double 7.3754160000000004
	.quad	0x401e22830a0b1bbd              # double 7.533703
	.quad	0x3ff09b36bd2b6f1a              # double 1.0378940000000001
	.quad	0x3ffdb8f68be2f7b1              # double 1.8576569999999999
	.quad	0x3ff5da07b352a844              # double 1.3657300000000001
	.quad	0x401aed2e94680171              # double 6.7316229999999999
	.quad	0x4021897ebaf10236              # double 8.7685449999999996
	.quad	0x40234e8900c521de              # double 9.6533890000000007
	.quad	0x401b8e2003ab862b              # double 6.8887939999999999
	.quad	0x40124a554b8bef8d              # double 4.5725910000000001
	.quad	0x40200a8a6117720d              # double 8.0205870000000008
	.quad	0x3fee40a6b93ccd10              # double 0.94539200000000001
	.quad	0x40147bb1290257c9              # double 5.1207929999999999
	.quad	0x400dad4562e09fe8              # double 3.7096049999999998
	.quad	0x3fe90fecdd0d8cb0              # double 0.78319399999999995
	.quad	0x3fcd7b9e060fe47a              # double 0.23033500000000001
	.quad	0x40050e5f7403dddb              # double 2.632018
	.quad	0x40200c0cc78e9f6b              # double 8.0235350000000007
	.quad	0x401a2dee34fc610f              # double 6.5448539999999999
	.quad	0x40170409a2403148              # double 5.7539429999999996
	.quad	0x4010b0d2c386d2ed              # double 4.1726789999999996
	.quad	0x401cb9070fbeb9e5              # double 7.1806910000000004
	.quad	0x402313aa582dbe7f              # double 9.5384089999999996
	.quad	0x3fe90f94c87980f5              # double 0.78315199999999996
	.quad	0x401399752977c88e              # double 4.8998609999999996
	.quad	0x40238af038e29f9d              # double 9.7713640000000001
	.quad	0x3ff65973d9ec7000              # double 1.3968389999999999
	.quad	0x3ffe7255f3519bd4              # double 1.902914
	.quad	0x400f06bbdbe3c105              # double 3.878288
	.quad	0x400925d31337eb29              # double 3.1434690000000001
	.quad	0x402113d2b6f19935              # double 8.5387170000000001
	.quad	0x4005247d3d4280ae              # double 2.642817
	.quad	0x4010d74538ef34d7              # double 4.2102250000000003
	.quad	0x4015fc4e7253da73              # double 5.4963930000000003
	.quad	0x3fe4fe64f54d1e97              # double 0.65605400000000003
	.quad	0x40163aabcd78c437              # double 5.557296
	.quad	0x4018ebbc2b94d940              # double 6.2302099999999996
	.quad	0x400383f811f4f50a              # double 2.439438
	.quad	0x3ffd830e3cd9a522              # double 1.8444959999999999
	.quad	0x401eabf61aa3f035              # double 7.6679310000000002
	.quad	0x4015fea24cc68230              # double 5.4986660000000001
	.quad	0x400934d50ebaade6              # double 3.1507969999999998
	.quad	0x400b46256366d7a5              # double 3.4092509999999998
	.quad	0x4011843914f483cb              # double 4.379124
	.quad	0x3ff03adc0980b242              # double 1.01437
	.quad	0x402004ed2cbea4ec              # double 8.0096220000000002
	.quad	0x4012babcd78c4370              # double 4.6823610000000002
	.quad	0x4015b56b00ffda40              # double 5.4271659999999997
	.quad	0x4006c88bda9435ad              # double 2.8479230000000002
	.quad	0x400b98f1d3ed527e              # double 3.4496799999999999
	.quad	0x400c3b8fde2ef4e0              # double 3.529083
	.quad	0x4021ae8c692f6e83              # double 8.8409150000000007
	.quad	0x401f5ca3e7d13511              # double 7.8404689999999996
	.quad	0x402094070329802c              # double 8.2891159999999999
	.quad	0x4014b8f4b61fe21e              # double 5.1806210000000004
	.quad	0x40205eb6177ea1c7              # double 8.1849830000000008
	.quad	0x401700e8c8abd5dc              # double 5.7508879999999998
	.quad	0x400aeaec8d5c7475              # double 3.3647089999999999
	.quad	0x4017e9ffd60e94ee              # double 5.9785149999999998
	.quad	0x4020e55e8d5410f9              # double 8.4479869999999995
	.quad	0x4021eacc4ef88b97              # double 8.9585899999999992
	.quad	0x401ade631f8a0903              # double 6.7171750000000001
	.quad	0x400539aa60913a50              # double 2.6531570000000002
	.quad	0x401979e98dcdb37d              # double 6.3690550000000004
	.quad	0x40120bca1059ea57              # double 4.5115129999999999
	.quad	0x3ff96d1287c200c1              # double 1.589129
	.quad	0x402066d2674080fa              # double 8.2008240000000008
	.quad	0x400796e158750c1c              # double 2.9486720000000002
	.quad	0x40115ef284167a96              # double 4.3427220000000002
	.quad	0x402097f865d7cb2e              # double 8.2968170000000008
	.quad	0x401cebacb4289119              # double 7.2301510000000002
	.quad	0x401d8887229e9079              # double 7.3833279999999997
	.quad	0x40155cf0739b024f              # double 5.3407609999999996
	.quad	0x400e1320d9945b6c              # double 3.7593399999999999
	.quad	0x40094610f0e90bc8              # double 3.1592120000000001
	.quad	0x3ff1b6683c297bfa              # double 1.1070329999999999
	.quad	0x4021431704ff4342              # double 8.6310350000000007
	.quad	0x3ffc7ba450acc0be              # double 1.780186
	.quad	0x400de163779e9d0f              # double 3.7350530000000002
	.quad	0x401bf2f512663411              # double 6.9872629999999996
	.quad	0x402312af78feef5f              # double 9.5364950000000003
	.quad	0x3ff055219a847b24              # double 1.0207839999999999
	.quad	0x400d617a02fb5d03              # double 3.672596
	.quad	0x40214b1422ccb3a2              # double 8.6466379999999994
	.quad	0x40111a5b530ced4e              # double 4.2757389999999997
	.quad	0x401585db3397dd01              # double 5.380719
	.quad	0x4020dba4b5568e82              # double 8.4289909999999999
	.quad	0x4020df7878b7a1c2              # double 8.4364659999999994
	.quad	0x3ff59e8b3b320536              # double 1.351207
	.quad	0x401266523704790c              # double 4.5999230000000004
	.quad	0x4015b3cee9dd7ecc              # double 5.4255940000000002
	.quad	0x3f996bb98c7e2824              # double 0.024825
	.quad	0x4008d8eb0318b934              # double 3.1059169999999998
	.quad	0x4023915a4acf312b              # double 9.7838919999999998
	.quad	0x400c45eaab042529              # double 3.5341390000000001
	.quad	0x402083c01a36e2eb              # double 8.2573249999999998
	.quad	0x400f072b020c49ba              # double 3.8784999999999998
	.quad	0x3ff4cb49e01de269              # double 1.299631
	.quad	0x40218f65fd8adaba              # double 8.7800750000000001
	.quad	0x402373aba7b9170d              # double 9.7259189999999993
	.quad	0x401d3245f5ad96a7              # double 7.2990950000000003
	.quad	0x40124ce3de6149c7              # double 4.575088
	.quad	0x402060e347629521              # double 8.1892340000000008
	.quad	0x4021507b784662bb              # double 8.6571920000000002
	.quad	0x4005698915bdd767              # double 2.6765310000000002
	.quad	0x4017028e4fb97bb7              # double 5.7524959999999998
	.quad	0x3fe7e05ee568a505              # double 0.746139
	.quad	0x4014b84b1ab0856e              # double 5.1799739999999996
	.quad	0x401ecadd590c0ad0              # double 7.6981099999999998
	.quad	0x3fb7243137b07076              # double 0.090396000000000004
	.quad	0x4022a158b827fa1a              # double 9.3151299999999999
	.quad	0x4017d861e92923e6              # double 5.9613110000000002
	.quad	0x401af7fbefd00714              # double 6.7421720000000001
	.quad	0x401c3046c764ae00              # double 7.0471450000000004
	.quad	0x40200c85c24c404a              # double 8.0244579999999992
	.quad	0x3ff24a8c154c985f              # double 1.1432
	.quad	0x3ffb8f67b1c0010c              # double 1.7225109999999999
	.quad	0x4021741c6088d6d4              # double 8.7267790000000005
	.quad	0x40221cd0dcfcc5b9              # double 9.0562810000000002
	.quad	0x401e01322f2734f8              # double 7.5011679999999998
	.quad	0x400918ab0c88a47f              # double 3.1370450000000001
	.quad	0x401886a6a012599f              # double 6.1314950000000001
	.quad	0x40113494d50ebaae              # double 4.3013490000000001
	.quad	0x401de852f7f498c4              # double 7.4768790000000003
	.quad	0x4020d571b0468449              # double 8.4168830000000003
	.quad	0x3fe47177a7008a69              # double 0.63885099999999995
	.quad	0x4023f36b09635611              # double 9.9754260000000005
	.quad	0x402076876e1deacd              # double 8.2315020000000008
	.quad	0x4010da5870da5daf              # double 4.213228
	.quad	0x4006427d028a1dfc              # double 2.7824650000000002
	.quad	0x4012da2be0589acc              # double 4.7130580000000002
	.quad	0x3ff84bcbe61cffeb              # double 1.518505
	.quad	0x401298dfbd6a593a              # double 4.6492909999999998
	.quad	0x400d77446f9b994e              # double 3.683236
	.quad	0x3ff61cfede97d06c              # double 1.3820790000000001
	.quad	0x3ff6aa012599ed7c              # double 1.4165049999999999
	.quad	0x401fa11c2a023209              # double 7.9073339999999996
	.quad	0x401767c8d195896a              # double 5.8513520000000003
	.quad	0x3fe6703f2d3c792d              # double 0.70120199999999999
	.quad	0x400d05132f87ad08              # double 3.627478
	.quad	0x4012205857afea3e              # double 4.531587
	.quad	0x40101d71f36262cc              # double 4.0287550000000003
	.quad	0x401c1b588e368f08              # double 7.0267049999999998
	.quad	0x3fe292ec6bce8534              # double 0.58043500000000003
	.quad	0x400015ce9e5e2479              # double 2.0106480000000002
	.quad	0x402191e92923e5b8              # double 8.7849819999999994
	.quad	0x40012a48f96e1587              # double 2.1456469999999999
	.quad	0x3ffdd15bdd76683c              # double 1.863613
	.quad	0x3fe4f6709fa54c55              # double 0.65508299999999997
	.quad	0x40197ead4f5903a7              # double 6.3737079999999997
	.quad	0x4012a1700cd85597              # double 4.657654
	.quad	0x3ffd7381d7dbf488              # double 1.8407
	.quad	0x401eaa7008a697af              # double 7.6664430000000001
	.quad	0x4001d151e75360d0              # double 2.2272069999999999
	.quad	0x3feaf28c79f66623              # double 0.84210799999999997
	.quad	0x4017f1f70de8f6cf              # double 5.986294
	.quad	0x401c0d80e496edee              # double 7.0131870000000003
	.quad	0x4023ad32617c1bda              # double 9.8382749999999994
	.quad	0x4023d1ae70c1333c              # double 9.9095340000000007
	.quad	0x3fda8c5c9a34ca0c              # double 0.41481699999999999
	.quad	0x401ab3bd9cae2110              # double 6.6755279999999999
	.quad	0x4013cdf9378ee286              # double 4.9511459999999996
	.quad	0x3fef0e29f9ce8d97              # double 0.97047899999999998
	.quad	0x40157b5d894812be              # double 5.3704739999999997
	.quad	0x4021dcdd0d8cb07d              # double 8.9313739999999999
	.quad	0x3ff934d26fa3fcca              # double 1.575396
	.quad	0x401d502ff8ec0f88              # double 7.3283079999999998
	.quad	0x40182ea3161a1db8              # double 6.0455439999999996
	.quad	0x3ff838df7a4e7ab7              # double 1.5138849999999999
	.quad	0x400ca09e55c0fcb5              # double 3.578427
	.quad	0x402259fff79c8430              # double 9.1757810000000006
	.quad	0x401a6474538ef34d              # double 6.5980999999999996
	.quad	0x4021c31ee2435697              # double 8.8810950000000002
	.quad	0x400d0812be48a58b              # double 3.6289419999999999
	.quad	0x40238c50ce4ead0c              # double 9.7740539999999995
	.quad	0x4014f3afb7e90ff9              # double 5.2379749999999996
	.quad	0x40182d823422467c              # double 6.0444420000000001
	.quad	0x40208be835dedf1e              # double 8.2732559999999999
	.quad	0x4008cd14a0a0f4d8              # double 3.1001370000000001
	.quad	0x40237c4a6223e187              # double 9.7427550000000007
	.quad	0x40084bc5154866a1              # double 3.0369969999999999
	.quad	0x3fed978d4fdf3b64              # double 0.92474999999999996
	.quad	0x400c11244a6223e2              # double 3.5083700000000002
	.quad	0x40205a0c49ba5e35              # double 8.1758749999999996
	.quad	0x400b353cddd6e04c              # double 3.400995
	.quad	0x401d502ff8ec0f88              # double 7.3283079999999998
	.quad	0x401f4126e978d4fe              # double 7.813625
	.quad	0x4015db21c475e636              # double 5.4639959999999999
	.quad	0x401147c243dccea3              # double 4.3200770000000004
	.quad	0x3ffe5393250b5244              # double 1.8954040000000001
	.quad	0x4011262d83c6c97e              # double 4.2872830000000004
	.quad	0x401b376c4827b6fe              # double 6.8041239999999998
	.quad	0x3ff77005814940bc              # double 1.4648490000000001
	.quad	0x401b2c12ad81adeb              # double 6.7930400000000004
	.quad	0x402237204295a6c6              # double 9.1076680000000003
	.quad	0x400ae7cd898b2e9d              # double 3.3631850000000001
	.quad	0x400f6450acc0bdcb              # double 3.9239820000000001
	.quad	0x3fb4c3c18b502abb              # double 0.081112000000000004
	.quad	0x3ff20180d3cff64d              # double 1.125367
	.quad	0x401f0a2a4db163bb              # double 7.7599270000000002
	.quad	0x4015631df761cbcd              # double 5.346794
	.quad	0x4022fcc426351def              # double 9.493684
	.quad	0x401610e30446b69e              # double 5.5164910000000003
	.quad	0x3ff8b3cc4ac6cdaf              # double 1.5438959999999999
	.quad	0x4002cae85b9e8c48              # double 2.3490760000000002
	.quad	0x4003c77c45cbbc2c              # double 2.4724050000000002
	.quad	0x4012204b7f5a5333              # double 4.5315380000000003
	.quad	0x402062bc0e38a7e7              # double 8.1928409999999996
	.quad	0x401e51e7d9988d2a              # double 7.5799859999999999
	.quad	0x4007293d102bc72e              # double 2.8951359999999999
	.quad	0x4015759ddc1e7968              # double 5.3648600000000002
	.quad	0x40120da554b8bef9              # double 4.5133260000000002
	.quad	0x4017dbff47735c18              # double 5.9648409999999998
	.quad	0x401f479420b3d4ae              # double 7.8199009999999998
	.quad	0x4023bc0b5675579b              # double 9.8672740000000001
	.quad	0x3fe0c9949e8815e4              # double 0.52460700000000005
	.quad	0x4023b9185cee17a0              # double 9.8615139999999997
	.quad	0x4015b834d26fa3fd              # double 5.4298890000000002
	.quad	0x3ff2c28d434a01ac              # double 1.172498
	.quad	0x3fda3a9f383f0baf              # double 0.40982800000000003
	.quad	0x400807852f7f498c              # double 3.0036719999999999
	.quad	0x40239caada33bd9d              # double 9.8059910000000005
	.quad	0x4010cdd0d8cb07d1              # double 4.2009920000000003
	.quad	0x3ffcb6aa4b9884c7              # double 1.7945960000000001
	.quad	0x400307bcc2938de7              # double 2.3787780000000001
	.quad	0x401ea8a0d349be90              # double 7.664676
	.quad	0x4019b0c1b97353b5              # double 6.4226140000000003
	.quad	0x4005250e779207d5              # double 2.6430940000000001
	.quad	0x400b9210be9424e6              # double 3.4463210000000002
	.quad	0x4020f80346dc5d64              # double 8.4844000000000008
	.quad	0x4015798a222d5172              # double 5.3686910000000001
	.quad	0x401fe944ed6fda83              # double 7.9778019999999996
	.quad	0x3ffdb5b1c8648840              # double 1.856859
	.quad	0x401fe8216c61522a              # double 7.9766899999999996
	.quad	0x401d4aabcd78c437              # double 7.322921
	.quad	0x4009525a250f8402              # double 3.1652110000000002
	.quad	0x3fec432873bc903f              # double 0.88319800000000004
	.quad	0x4003844523f67f4e              # double 2.4395850000000001
	.quad	0x40201697d06bbdbe              # double 8.0441269999999996
	.quad	0x40227380ecfa69be              # double 9.2255929999999999
	.quad	0x40206a220bc382a1              # double 8.2072909999999997
	.quad	0x4022e841cc532a49              # double 9.4536269999999991
	.quad	0x401ef73d5bab2181              # double 7.7414449999999996
	.quad	0x4013f2cdc011d367              # double 4.9871129999999999
	.quad	0x3ffa1ac36544fe37              # double 1.631534
	.quad	0x4020826d04e618ce              # double 8.2547379999999997
	.quad	0x4022e7de5082cf53              # double 9.4528680000000004
	.quad	0x4001bb163baba7b9              # double 2.216351
	.quad	0x401e11b21c475e63              # double 7.5172809999999996
	.quad	0x4021f6fa615a8deb              # double 8.9823789999999999
	.quad	0x4014e91bc5586445              # double 5.2276449999999999
	.quad	0x3ff941dd1a21ea36              # double 1.5785800000000001
	.quad	0x401e065f5275ee9a              # double 7.5062230000000003
	.quad	0x4004b9f01b866e44              # double 2.5907900000000001
	.quad	0x4016d01c4fc1df33              # double 5.703233
	.quad	0x40000dca07f66e87              # double 2.0067330000000001
	.quad	0x400b026edaa92e62              # double 3.376188
	.quad	0x4005caee2003ab86              # double 2.7240869999999999
	.quad	0x401be5004fb1183b              # double 6.9736339999999997
	.quad	0x3f94a72ead9274e2              # double 0.020168999999999999
	.quad	0x4014638d1d8a5482              # double 5.0972179999999998
	.quad	0x400a6add590c0ad0              # double 3.3021799999999999
	.quad	0x4023537e4de3b8a2              # double 9.6630730000000007
	.quad	0x4018dd71f36262cc              # double 6.2162550000000003
	.quad	0x4015d7507e9d94d1              # double 5.4602680000000001
	.quad	0x401ddaaac1094a2c              # double 7.4635420000000003
	.quad	0x4014e9fa11a975b0              # double 5.2284930000000003
	.quad	0x40119ccd0fe8ab50              # double 4.4031260000000003
	.quad	0x400952ebe596c82e              # double 3.165489
	.quad	0x401c80a2014727dd              # double 7.1256180000000002
	.quad	0x401f94c8366516db              # double 7.8952949999999999
	.quad	0x3fc874107314ca92              # double 0.19104199999999999
	.quad	0x3ffee93c03bc4d23              # double 1.931942
	.quad	0x401267bc7f77af64              # double 4.601305
	.quad	0x400299999999999a              # double 2.3250000000000002
	.quad	0x3ffa670196d8f4f9              # double 1.6501479999999999
	.quad	0x4010e5b8dc55000d              # double 4.2243380000000004
	.quad	0x400d9c18b502abac              # double 3.701219
	.quad	0x402351e060fe4799              # double 9.6599149999999998
	.quad	0x400e4d6909aed56b              # double 3.787798
	.quad	0x3fedf64adff822bc              # double 0.936315
	.quad	0x401ca1001d5c3159              # double 7.1572269999999998
	.quad	0x400d9e2d6238da3c              # double 3.7022349999999999
	.quad	0x3ff3eca793576039              # double 1.245277
	.quad	0x3ff689363f572de4              # double 1.4084989999999999
	.quad	0x401a50f94c87980f              # double 6.5790759999999997
	.quad	0x4022d12fb19e731d              # double 9.4085669999999996
	.quad	0x3ff394ad362e9036              # double 1.2237979999999999
	.quad	0x3fbcd7f0ed3d859d              # double 0.11267000000000001
	.quad	0x400ddfaca3619978              # double 3.734216
	.quad	0x3fc55eaee2003ab8              # double 0.16695199999999999
	.quad	0x401f86fda836eb4f              # double 7.8818270000000003
	.quad	0x3ff61791819d2392              # double 1.380754
	.quad	0x3fc39841aac53b08              # double 0.153084
	.quad	0x4017eb1d4f9c1f86              # double 5.9796040000000001
	.quad	0x401ed3aa369fcf3e              # double 7.7067040000000002
	.quad	0x402063be878fabda              # double 8.1948129999999999
	.quad	0x401fba9478c868ba              # double 7.932207
	.quad	0x3fe31bc33f85510d              # double 0.59713899999999998
	.quad	0x40129a5a89b951c6              # double 4.6507360000000002
	.quad	0x401a60f5a1016ce8              # double 6.5946870000000004
	.quad	0x402368e736049ecb              # double 9.7048889999999996
	.quad	0x40152b43526527a2              # double 5.292249
	.quad	0x4017d3a96d4c33b5              # double 5.9567009999999998
	.quad	0x40160e004b7f5a53              # double 5.5136729999999998
	.quad	0x4001f62bf11f926c              # double 2.2452009999999998
	.quad	0x3ffa946b26bf876a              # double 1.661235
	.quad	0x4013cbfc2224edf6              # double 4.9492039999999999
	.quad	0x400ea649906cca2e              # double 3.8311950000000001
	.quad	0x401c0d2806af46aa              # double 7.012848
	.quad	0x3fe0216616b54e2b              # double 0.504077
	.quad	0x3fffacc814d7279a              # double 1.9796830000000001
	.quad	0x40222e199780baa6              # double 9.0900390000000009
	.quad	0x3fb53682730c6717              # double 0.082863000000000006
	.quad	0x4011c73affb04ee8              # double 4.4445610000000002
	.quad	0x4001389efd86a8fc              # double 2.152647
	.quad	0x3fbf52eb5f5f0b28              # double 0.122359
	.quad	0x4006adafd113836b              # double 2.8348080000000002
	.quad	0x4006fc065b63d3e5              # double 2.873059
	.quad	0x4016a6aceaaf35e3              # double 5.6627689999999999
	.quad	0x4018d2c16df3f962              # double 6.2058160000000004
	.quad	0x3fef2be0589acbc9              # double 0.97410600000000002
	.quad	0x4012e9a3d2d87f88              # double 4.7281639999999996
	.quad	0x4011e0331e3a7daa              # double 4.4689449999999997
	.quad	0x3ffa353825e13b19              # double 1.637993
	.quad	0x4012d4141e9af5ba              # double 4.7071079999999998
	.quad	0x3ff753f9e7b80a9e              # double 1.458002
	.quad	0x401500ea18372e6a              # double 5.2508929999999996
	.quad	0x40141fb8b26394fb              # double 5.0309780000000002
	.quad	0x3fe616ca46e08f21              # double 0.69028199999999995
	.quad	0x3feb92ccf6be37df              # double 0.86167000000000005
	.quad	0x4019578f25a250f8              # double 6.3355069999999998
	.quad	0x401b6c6d612c6ac2              # double 6.8558859999999999
	.quad	0x4010167a0f9096bc              # double 4.0219500000000004
	.quad	0x401e5b606b7aa25e              # double 7.5892350000000004
	.quad	0x401ecaf42784a948              # double 7.6981970000000004
	.quad	0x401ec6805a2d7300              # double 7.6938490000000002
	.quad	0x400a57dfa00e27e1              # double 3.292907
	.quad	0x40184baade657b85              # double 6.0738940000000001
	.quad	0x40124bb23571d1d4              # double 4.5739219999999996
	.quad	0x401ee8fe260b2c84              # double 7.7275320000000001
	.quad	0x3ff72fb2aae29739              # double 1.4491449999999999
	.quad	0x3fe9feef5ec80c74              # double 0.81237000000000003
	.quad	0x401bf55f78359bc3              # double 6.9896219999999998
	.quad	0x401de9fc2a8869c6              # double 7.4785009999999996
	.quad	0x401aee8101f31f47              # double 6.7329140000000001
	.quad	0x3fd95c810a569b17              # double 0.39627099999999998
	.quad	0x4014712599ed7c70              # double 5.1104950000000002
	.quad	0x401962e44b6e935c              # double 6.3465740000000004
	.quad	0x4016eca4b124d09a              # double 5.7310970000000001
	.quad	0x400be167a95c853c              # double 3.485061
	.quad	0x402053c0e38a7e74              # double 8.1635810000000006
	.quad	0x401e3679cc74b839              # double 7.5531990000000002
	.quad	0x401b3f8b1572580c              # double 6.8120539999999998
	.quad	0x401c527fa1a0cf18              # double 7.080565
	.quad	0x3ff4a04295a6c5d2              # double 1.289126
	.quad	0x4003ba12b5e529bb              # double 2.465856
	.quad	0x3fced601ffb480a6              # double 0.24090600000000001
	.quad	0x4017a3f034b0e1b5              # double 5.9100960000000002
	.quad	0x4023f5ca6ca03c4b              # double 9.9800599999999999
	.quad	0x401a0a0d349be8ff              # double 6.5098159999999998
	.quad	0x4010da8869c66d37              # double 4.2134109999999998
	.quad	0x4022c1b8aa00192a              # double 9.3783619999999992
	.quad	0x402337ca85caafbc              # double 9.6089669999999998
	.quad	0x40109508f648c719              # double 4.1455419999999998
	.quad	0x401dcdb7f1737543              # double 7.4508970000000003
	.quad	0x40207cf2f123c42a              # double 8.2440409999999993
	.quad	0x40239ab8a5ce5b42              # double 9.8021899999999995
	.quad	0x400bb206c8711d7a              # double 3.4619270000000002
	.quad	0x4010420f6f08cc57              # double 4.0645119999999997
	.quad	0x40161caf2d7f950c              # double 5.5280120000000004
	.quad	0x4020f8d173fb7a5f              # double 8.4859729999999995
	.quad	0x402202599ed7c6fc              # double 9.0045900000000003
	.quad	0x3ffcccdd93c46d83              # double 1.8000160000000001
	.quad	0x401308409e55c0fd              # double 4.7580590000000003
	.quad	0x4011985c67dfe32a              # double 4.39879
	.quad	0x4020190cf5b1c865              # double 8.0489270000000008
	.quad	0x400cdc02afdda8bd              # double 3.6074269999999999
	.quad	0x400e1b9c7368ad69              # double 3.7634820000000002
	.quad	0x3fc06d5065732160              # double 0.12833600000000001
	.quad	0x401ad94ccab3edd9              # double 6.7122070000000003
	.quad	0x400efb035bd512ec              # double 3.8725649999999998
	.quad	0x4021da925fe974a3              # double 8.9268979999999996
	.quad	0x4013ec27e9531551              # double 4.9806210000000002
	.quad	0x40171f483cafb3b7              # double 5.7805489999999997
	.quad	0x4015ac5a8155d5f5              # double 5.4183139999999996
	.quad	0x3ff7cd551d68c693              # double 1.48763
	.quad	0x3ffa9e30014f8b59              # double 1.6636200000000001
	.quad	0x3ffc29ad42c3c9ef              # double 1.760175
	.quad	0x400719513f8db489              # double 2.887362
	.quad	0x3fd1e3a3a8e71477              # double 0.27951900000000002
	.quad	0x3fe4bcc2938de6de              # double 0.64804200000000001
	.quad	0x4008702602c9081c              # double 3.0547599999999999
	.quad	0x401f04b838c111ae              # double 7.7546090000000003
	.quad	0x4020953996fa82e8              # double 8.2914549999999991
	.quad	0x401b32d5e071c53f              # double 6.7996439999999998
	.quad	0x40070a41a261bf38              # double 2.8800080000000001
	.quad	0x4013663c31df761d              # double 4.8498390000000002
	.quad	0x401daef39085f4a1              # double 7.4208509999999999
	.quad	0x400b9e7fb267c6b9              # double 3.4523920000000001
	.quad	0x3ffe3342edbb59de              # double 1.8875150000000001
	.quad	0x400ed072085b1855              # double 3.8517800000000002
	.quad	0x400d2497fa5d28d0              # double 3.642868
	.quad	0x402070130164840e              # double 8.2188949999999998
	.quad	0x4020c7151e75360d              # double 8.388833
	.quad	0x4000fa719b4dcec0              # double 2.122287
	.quad	0x400491055b899392              # double 2.570811
	.quad	0x3fe658e219652bd4              # double 0.69835000000000003
	.quad	0x401ba6a2f48c2e77              # double 6.912731
	.quad	0x401b8f99806f2629              # double 6.8902340000000004
	.quad	0x4011ae7ab7564303              # double 4.4203900000000003
	.quad	0x3ff616b54e2b063e              # double 1.380544
	.quad	0x401d3b7d84901d19              # double 7.3080959999999999
	.quad	0x40202d0edc3bd599              # double 8.0880039999999997
	.quad	0x400a2b6848beb5b3              # double 3.2711950000000001
	.quad	0x401e0685553ef6b6              # double 7.5063680000000002
	.quad	0x402156f9335d249e              # double 8.6698699999999995
	.quad	0x40208437e6f71a7e              # double 8.2582389999999997
	.quad	0x3fc78da3c21187e8              # double 0.18401000000000001
	.quad	0x4022301d19157abc              # double 9.0939720000000008
	.quad	0x40238d1351159c49              # double 9.7755379999999991
	.quad	0x4015cf01b866e43b              # double 5.4521550000000003
	.quad	0x40125040bfe3b03e              # double 4.5783719999999999
	.quad	0x3ff24aab8a5ce5b4              # double 1.14323
	.quad	0x402055074213a0c7              # double 8.1660710000000005
	.quad	0x4001c2cf52b90a78              # double 2.2201219999999999
	.quad	0x3ffb755de58e64b2              # double 1.716154
	.quad	0x401608b8f14db595              # double 5.5085179999999996
	.quad	0x4012a9c5a3e39f77              # double 4.6657929999999999
	.quad	0x3fe8e53c9abb01c9              # double 0.77798299999999998
	.quad	0x400e937867f0aa22              # double 3.8220070000000002
	.quad	0x4009462f5989df11              # double 3.1592699999999998
	.quad	0x400103afb7e90ff9              # double 2.1267999999999998
	.quad	0x400ffe920c069e80              # double 3.9993020000000001
	.quad	0x401475a20ddc6195              # double 5.1148759999999998
	.quad	0x4023e3a6266fd652              # double 9.9446270000000005
	.quad	0x3fe1a92c49342678              # double 0.55190099999999997
	.quad	0x400c45c13fd0d068              # double 3.5340600000000002
	.quad	0x400052d55a3a083a              # double 2.0404460000000002
	.quad	0x40134b645a1cac08              # double 4.8236249999999998
	.quad	0x40147999dcb5781c              # double 5.1187509999999996
	.quad	0x40102bc2b94d9408              # double 4.0427350000000004
	.quad	0x4022c6a8fc0d2c38              # double 9.3880079999999992
	.quad	0x4012868f8e7ddca5              # double 4.6314070000000003
	.quad	0x4022b1eb2074ea8e              # double 9.3474970000000006
	.quad	0x4000b7214f0520d1              # double 2.0894189999999999
	.quad	0x400f234f3fd933e3              # double 3.8922409999999998
	.quad	0x400dd929ed3953df              # double 3.7310370000000002
	.quad	0x4023217460242d06              # double 9.5653410000000001
	.quad	0x40103267c6b8b695              # double 4.0492239999999997
	.quad	0x4014c92ddbdb5d89              # double 5.1964639999999997
	.quad	0x40234ea4ebdd334c              # double 9.6536019999999993
	.quad	0x400cef47b677f6b2              # double 3.6168360000000002
	.quad	0x40109a47a9e2bcf9              # double 4.1506639999999999
	.quad	0x400a0985f06f6944              # double 3.2546499999999998
	.quad	0x40014c2374794ea0              # double 2.1621769999999998
	.quad	0x4020835610adcd2d              # double 8.2565159999999995
	.quad	0x400c0e7253da72a8              # double 3.5070540000000001
	.quad	0x40221f7079e59f2c              # double 9.0614050000000005
	.quad	0x3ff1bc243dccea29              # double 1.108433
	.quad	0x4020bfc957cd466f              # double 8.3745829999999994
	.quad	0x3ff0e8ec52a411c3              # double 1.0568660000000001
	.quad	0x3ff267b6fe2e6ea8              # double 1.1503209999999999
	.quad	0x3fdb7a89331a08c0              # double 0.42935400000000001
	.quad	0x401147b5286b5914              # double 4.3200269999999996
	.quad	0x3ffe273b42cc2d6b              # double 1.8845780000000001
	.quad	0x4002e0c1fc8f3238              # double 2.3597450000000002
	.quad	0x401140cd855970b5              # double 4.3132840000000003
	.quad	0x4022041094a2b9d4              # double 9.0079390000000003
	.quad	0x4019f7f562174c4d              # double 6.4921470000000001
	.quad	0x401b208a265f0f5a              # double 6.7817769999999999
	.quad	0x402250b28522ea10              # double 9.1576120000000003
	.quad	0x401f40318b934699              # double 7.8126889999999997
	.quad	0x3ffc5fb0d51f81a6              # double 1.7733620000000001
	.quad	0x4011da8fc0d2c387              # double 4.4634390000000002
	.quad	0x4023a9e9af5ba2be              # double 9.831861
	.quad	0x401c8925785f8d2e              # double 7.1339319999999997
	.quad	0x40232d8fd5cb7910              # double 9.5889880000000005
	.quad	0x3ffad3bc0a06e9ff              # double 1.676693
	.quad	0x40237dd69d30270f              # double 9.7457779999999996
	.quad	0x3fdff761cbccf28c              # double 0.49947399999999997
	.quad	0x401d10474d9c6b05              # double 7.2658969999999998
	.quad	0x402207c610f0e90c              # double 9.0151830000000003
	.quad	0x40228854ef459d99              # double 9.266273
	.quad	0x400f8d3ae685db77              # double 3.9439600000000001
	.quad	0x401669b6b2af1455              # double 5.6032359999999999
	.quad	0x4022ff6ea4228998              # double 9.4988910000000004
	.quad	0x4023a96787ce95fb              # double 9.8308680000000006
	.quad	0x4013be1eb4202d9d              # double 4.9356640000000001
	.quad	0x400f0ef5ec80c73b              # double 3.8823050000000001
	.quad	0x3fffdd1c3ac929aa              # double 1.991482
	.quad	0x402369ca5bd944aa              # double 9.7066219999999994
	.quad	0x3fe9a48f96e15875              # double 0.80133799999999999
	.quad	0x40236640a6b93ccd              # double 9.6997119999999998
	.quad	0x3fd5f9c1f85d744f              # double 0.34336899999999998
	.quad	0x4013ba61e0c5a815              # double 4.9320139999999997
	.quad	0x4017d3b3e9a6f827              # double 5.9567410000000001
	.quad	0x401e6de54b48d3ae              # double 7.6073199999999996
	.quad	0x401b72d6a9c560c8              # double 6.8621470000000002
	.quad	0x3ffb4bbf50e34763              # double 1.7059930000000001
	.quad	0x401444b5568e820e              # double 5.0670979999999997
	.quad	0x4013f912556d19df              # double 4.9932340000000002
	.quad	0x400e673d5bab2181              # double 3.8004099999999998
	.quad	0x4023b396af038e2a              # double 9.850759
	.quad	0x4020af8055fbb518              # double 8.3427760000000006
	.quad	0x40097e4a38327675              # double 3.1866650000000001
	.quad	0x401a2d25aab47410              # double 6.5440889999999996
	.quad	0x40225317efe0ce0c              # double 9.1622920000000007
	.quad	0x3ff7c052d666a982              # double 1.4844539999999999
	.quad	0x400eb62174c4cdfb              # double 3.8389310000000001
	.quad	0x400d0845132f87ad              # double 3.629038
	.quad	0x4004321dda059a74              # double 2.5244710000000001
	.quad	0x401bebbf93ff25e5              # double 6.9802229999999996
	.quad	0x3fe1df9378ee2867              # double 0.55854199999999998
	.quad	0x40230bb55ac03ff7              # double 9.5228680000000007
	.quad	0x40096523704790b8              # double 3.1743839999999999
	.quad	0x3ff7fe3d1cc100e7              # double 1.4995700000000001
	.quad	0x401b33c85c24c405              # double 6.8005690000000003
	.quad	0x3fff93e707e175d1              # double 1.9736089999999999
	.quad	0x4022b4816f0068dc              # double 9.3525500000000008
	.quad	0x4023fe86c6583e85              # double 9.9971219999999991
	.quad	0x402051cf9a06a6e3              # double 8.1597869999999997
	.quad	0x400bdf6ec5b078d9              # double 3.4840979999999999
	.quad	0x4013b601ffb480a6              # double 4.9277420000000003
	.quad	0x400109c0229a5ebb              # double 2.1297609999999998
	.quad	0x40061e892253111f              # double 2.76491
	.quad	0x4016bb33daf8df7a              # double 5.6828149999999997
	.quad	0x400af78705425f20              # double 3.3708629999999999
	.quad	0x4016467b1c0010c7              # double 5.568829
	.quad	0x4011a7f8012dfd69              # double 4.4140319999999997
	.quad	0x40212401e68a0d35              # double 8.5703270000000007
	.quad	0x4020e6cf63800219              # double 8.4508010000000002
	.quad	0x3fecd2f5dbb9cf9a              # double 0.900752
	.quad	0x3ff5c305d95dd4c7              # double 1.3601129999999999
	.quad	0x400bf21e603d5779              # double 3.4932219999999998
	.quad	0x40161ab8a5ce5b42              # double 5.5260949999999998
	.quad	0x3fe54b85a4f00ef1              # double 0.66546899999999998
	.quad	0x400fe14057082492              # double 3.9849860000000001
	.quad	0x40010b4d056c508b              # double 2.1305179999999999
	.quad	0x3fff1ef30a4e379b              # double 1.9450559999999999
	.quad	0x4020649ba5e353f8              # double 8.1965000000000003
	.quad	0x401d118f3eccc469              # double 7.2671479999999997
	.quad	0x401214ee7c49fd7a              # double 4.5204409999999999
	.quad	0x4020b4a925fe974a              # double 8.3528529999999996
	.quad	0x4018197edc7ef178              # double 6.0248980000000003
	.quad	0x40237d9578a2a90d              # double 9.7452810000000003
	.quad	0x4016e17f4128bf3c              # double 5.7202120000000001
	.quad	0x400a0e4a7b4e54f8              # double 3.2569780000000002
	.quad	0x4020a611dbca9692              # double 8.3243550000000006
	.quad	0x3fd89767903211cb              # double 0.384241
	.quad	0x401114eb9a176ddb              # double 4.2704300000000002
	.quad	0x40040e675147f130              # double 2.5070329999999998
	.quad	0x402061782d38476f              # double 8.1903699999999997
	.quad	0x40153e7e1fc08fa8              # double 5.3110280000000003
	.quad	0x400fed801b435265              # double 3.9909669999999999
	.quad	0x3fcc0e736049ecb3              # double 0.219191
	.quad	0x400b062c343b70ef              # double 3.3780139999999999
	.quad	0x402371958969a0ae              # double 9.7218440000000008
	.quad	0x3ff5606961c36977              # double 1.3360380000000001
	.quad	0x402188d21bc126a6              # double 8.7672279999999994
	.quad	0x4008fa554b8bef8d              # double 3.122233
	.quad	0x400fa77bbf93ff26              # double 3.956779
	.quad	0x40093b5aea3161a2              # double 3.1539820000000001
	.quad	0x401cfa85015c2092              # double 7.2446479999999998
	.quad	0x4016341fa7653437              # double 5.5509019999999998
	.quad	0x40206160d887ebf2              # double 8.1901919999999997
	.quad	0x401a223d0bfa0946              # double 6.533436
	.quad	0x401854e160d887ec              # double 6.082891
	.quad	0x4016f2ea0fd3b29a              # double 5.7372209999999999
	.quad	0x3ff1fcb2d905c033              # double 1.1241939999999999
	.quad	0x4010c9a6b50b0f28              # double 4.1969250000000002
	.quad	0x4016b9320d9945b7              # double 5.6808550000000002
	.quad	0x401550f6273929ed              # double 5.3290639999999998
	.quad	0x40068e6fb4c3c18b              # double 2.8195489999999999
	.quad	0x401697c0f4517614              # double 5.6481969999999997
	.quad	0x40040794ea077037              # double 2.5037020000000001
	.quad	0x40163ee84ad794a7              # double 5.5614330000000001
	.quad	0x3feb169c23b7952d              # double 0.84650999999999998
	.quad	0x4018825bb7b6bb13              # double 6.1273030000000004
	.quad	0x4020054ae429e0a4              # double 8.0103369999999998
	.quad	0x402264666ec9e237              # double 9.1960940000000004
	.quad	0x4022177ad4b2745c              # double 9.045859
	.quad	0x402358b5cbff4773              # double 9.6732619999999993
	.quad	0x3ffe93d5347a5b10              # double 1.911092
	.quad	0x3fe085b18548a9bd              # double 0.51632
	.quad	0x40206d5c74751ce3              # double 8.2135960000000008
	.quad	0x4023afb506dd69d3              # double 9.8431779999999999
	.quad	0x4017f4b48d3ae686              # double 5.9889700000000001
	.quad	0x401684cc6822ff09              # double 5.6296860000000004
	.quad	0x400e380a17b0f6ad              # double 3.7773629999999998
	.quad	0x4021fd1c3ac929aa              # double 8.9943559999999998
	.quad	0x40237c49ba5e353f              # double 9.7427499999999991
	.quad	0x3ffa433f85510d39              # double 1.641418
	.quad	0x4010a37ef5a964e9              # double 4.1596640000000003
	.quad	0x401e1bd556084a51              # double 7.5271809999999996
	.quad	0x400fdd7ba6698bb5              # double 3.9831460000000001
	.quad	0x400bb9f7f8ca8199              # double 3.465805
	.quad	0x401788e043a21640              # double 5.8836680000000001
	.quad	0x3fe9e0eb67c286f9              # double 0.80870600000000004
	.quad	0x3ff01cb5781c7150              # double 1.007009
	.quad	0x3fd82ecf20642396              # double 0.377857
	.quad	0x401c714a90470a81              # double 7.1106360000000004
	.quad	0x401f682a9930be0e              # double 7.8517250000000001
	.quad	0x401c33682730c671              # double 7.0502019999999996
	.quad	0x401454107314ca92              # double 5.0820939999999997
	.quad	0x402289bc98a222d5              # double 9.2690169999999998
	.quad	0x4012b0474d9c6b05              # double 4.6721469999999998
	.quad	0x4023d49320d9945b              # double 9.9151849999999992
	.quad	0x4020c7601797cc3a              # double 8.389405
	.quad	0x400a26ac215b9a5b              # double 3.2688830000000002
	.quad	0x4014a080b673c4f4              # double 5.1567410000000002
	.quad	0x402027485e3da2f9              # double 8.0767240000000005
	.quad	0x401a9774256bca53              # double 6.6479039999999996
	.quad	0x4008a3fe5c91d14e              # double 3.0800749999999999
	.quad	0x3feb1a6b50b0f27c              # double 0.84697500000000003
	.quad	0x4014a66234a87e39              # double 5.1624840000000001
	.quad	0x40110d477bbf93ff              # double 4.2629679999999999
	.quad	0x40074edc3bd59924              # double 2.9135059999999999
	.quad	0x3fecb545c78a6dad              # double 0.89712800000000004
	.quad	0x4014b5ffe6d58c8f              # double 5.1777340000000001
	.quad	0x4022b88377186552              # double 9.3603780000000008
	.quad	0x3fda29dc725c3dee              # double 0.40880499999999997
	.quad	0x40055b69984a0e41              # double 2.669635
	.quad	0x4015b2c1b10fd7e4              # double 5.4245669999999997
	.quad	0x4014b3f748a15981              # double 5.1757479999999996
	.quad	0x401a0c96cc5fbf83              # double 6.5122939999999998
	.quad	0x401bc4a2fcefaa47              # double 6.9420279999999996
	.quad	0x40222bf338716095              # double 9.0858399999999993
	.quad	0x402186ff1950331e              # double 8.7636649999999996
	.quad	0x401d1ab7dc7abfba              # double 7.2760920000000002
	.quad	0x402066b9e492bc30              # double 8.2006370000000004
	.quad	0x3ff7b4c09c3ce209              # double 1.4816290000000001
	.quad	0x4001326202539757              # double 2.1496010000000001
	.quad	0x40193a7f3cf70154              # double 6.3071260000000002
	.quad	0x4008a4ba94bbe447              # double 3.0804339999999999
	.quad	0x3fa6b87379746024              # double 0.044375999999999999
	.quad	0x4003c305532617c2              # double 2.4702250000000001
	.quad	0x402313760bf5d788              # double 9.5380099999999998
	.quad	0x400f3cdfefbf401c              # double 3.9047239999999999
	.quad	0x3fa9bcfd4bf0995b              # double 0.050270000000000002
	.quad	0x4020e0431bde82d8              # double 8.4380120000000005
	.quad	0x401288a3f8982cb2              # double 4.6334379999999999
	.quad	0x4005b1001d5c3159              # double 2.7114259999999999
	.quad	0x400222ae4b018612              # double 2.266934
	.quad	0x3fc478fabda0dfdf              # double 0.159942
	.quad	0x401e64a66559f6ec              # double 7.5982909999999997
	.quad	0x3ff7592a737110e4              # double 1.4592689999999999
	.quad	0x402314a4f440af1d              # double 9.5403210000000004
	.quad	0x3fe3fb30f8c64fdb              # double 0.624413
	.quad	0x3fe1a706d5065732              # double 0.55163899999999999
	.quad	0x4012ddd1a21ea359              # double 4.7166199999999998
	.quad	0x40220ed30f062d41              # double 9.0289540000000006
	.quad	0x3fdbcb1cc9646280              # double 0.43427199999999999
	.quad	0x402174855da27286              # double 8.7275799999999997
	.quad	0x401cbea3df6db941              # double 7.186172
	.quad	0x4016b75c0767d34e              # double 5.6790620000000001
	.quad	0x40008f5a964e8b7e              # double 2.0699969999999999
	.quad	0x4015415f02c4d65e              # double 5.3138389999999998
	.quad	0x3ff5dc7de5082cf5              # double 1.366331
	.quad	0x40030df612407464              # double 2.3818169999999999
	.quad	0x40177398201cd5fa              # double 5.8628850000000003
	.quad	0x3fd5aeea63b688be              # double 0.33880100000000002
	.quad	0x4021467d1351159c              # double 8.6376729999999994
	.quad	0x401732ab68cef673              # double 5.7994820000000002
	.quad	0x3ff3025072085b18              # double 1.1880649999999999
	.quad	0x4007a36e2eb1c433              # double 2.9548000000000001
	.quad	0x400d9a9eb2074ea9              # double 3.7004980000000001
	.quad	0x3ffe99392189bd84              # double 1.9124080000000001
	.quad	0x40105e95b78cc9a7              # double 4.0923679999999996
	.quad	0x3ffa0db163baba7c              # double 1.6283430000000001
	.quad	0x3ff47d63022dd7aa              # double 1.2806120000000001
	.quad	0x4016acdea033e78e              # double 5.6688179999999999
	.quad	0x401be463065f9592              # double 6.9730340000000002
	.quad	0x4023352b6f19934f              # double 9.603847
	.quad	0x401ba91ea78af3e4              # double 6.9151559999999996
	.quad	0x4023b4c8de2ac322              # double 9.8530949999999997
	.quad	0x401c123465625a68              # double 7.0177779999999998
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
