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
	.quad	0x412e4acf49225311              # double 992615.64283999999
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_1999xindex_0)
	addi	a7, a7, %lo(.L__constant_1999xindex_0)
	lui	t0, %hi(.L__constant_1999xf64_0)
	addi	t0, t0, %lo(.L__constant_1999xf64_0)
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
	.quad	12                              # 0xc
	.quad	36                              # 0x24
	.quad	58                              # 0x3a
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	114                             # 0x72
	.quad	140                             # 0x8c
	.quad	159                             # 0x9f
	.quad	184                             # 0xb8
	.quad	202                             # 0xca
	.quad	228                             # 0xe4
	.quad	245                             # 0xf5
	.quad	260                             # 0x104
	.quad	277                             # 0x115
	.quad	303                             # 0x12f
	.quad	314                             # 0x13a
	.quad	332                             # 0x14c
	.quad	350                             # 0x15e
	.quad	367                             # 0x16f
	.quad	392                             # 0x188
	.quad	410                             # 0x19a
	.quad	433                             # 0x1b1
	.quad	454                             # 0x1c6
	.quad	472                             # 0x1d8
	.quad	487                             # 0x1e7
	.quad	507                             # 0x1fb
	.quad	522                             # 0x20a
	.quad	545                             # 0x221
	.quad	564                             # 0x234
	.quad	587                             # 0x24b
	.quad	609                             # 0x261
	.quad	628                             # 0x274
	.quad	647                             # 0x287
	.quad	665                             # 0x299
	.quad	676                             # 0x2a4
	.quad	695                             # 0x2b7
	.quad	708                             # 0x2c4
	.quad	728                             # 0x2d8
	.quad	753                             # 0x2f1
	.quad	784                             # 0x310
	.quad	797                             # 0x31d
	.quad	815                             # 0x32f
	.quad	831                             # 0x33f
	.quad	846                             # 0x34e
	.quad	864                             # 0x360
	.quad	874                             # 0x36a
	.quad	891                             # 0x37b
	.quad	908                             # 0x38c
	.quad	931                             # 0x3a3
	.quad	952                             # 0x3b8
	.quad	970                             # 0x3ca
	.quad	993                             # 0x3e1
	.quad	1008                            # 0x3f0
	.quad	1027                            # 0x403
	.quad	1042                            # 0x412
	.quad	1058                            # 0x422
	.quad	1074                            # 0x432
	.quad	1096                            # 0x448
	.quad	1123                            # 0x463
	.quad	1146                            # 0x47a
	.quad	1171                            # 0x493
	.quad	1204                            # 0x4b4
	.quad	1226                            # 0x4ca
	.quad	1242                            # 0x4da
	.quad	1263                            # 0x4ef
	.quad	1278                            # 0x4fe
	.quad	1300                            # 0x514
	.quad	1325                            # 0x52d
	.quad	1343                            # 0x53f
	.quad	1366                            # 0x556
	.quad	1387                            # 0x56b
	.quad	1406                            # 0x57e
	.quad	1426                            # 0x592
	.quad	1449                            # 0x5a9
	.quad	1477                            # 0x5c5
	.quad	1495                            # 0x5d7
	.quad	1513                            # 0x5e9
	.quad	1535                            # 0x5ff
	.quad	1554                            # 0x612
	.quad	1574                            # 0x626
	.quad	1604                            # 0x644
	.quad	1624                            # 0x658
	.quad	1649                            # 0x671
	.quad	1666                            # 0x682
	.quad	1687                            # 0x697
	.quad	1704                            # 0x6a8
	.quad	1722                            # 0x6ba
	.quad	1746                            # 0x6d2
	.quad	1761                            # 0x6e1
	.quad	1786                            # 0x6fa
	.quad	1806                            # 0x70e
	.quad	1827                            # 0x723
	.quad	1846                            # 0x736
	.quad	1871                            # 0x74f
	.quad	1889                            # 0x761
	.quad	1908                            # 0x774
	.quad	1934                            # 0x78e
	.quad	1954                            # 0x7a2
	.quad	1977                            # 0x7b9
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	37                              # 0x25
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	58                              # 0x3a
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	95                              # 0x5f
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
	.quad	0x3feb288051c9f72f              # double 0.84869399999999995
	.quad	0x4009227bf61aa3f0              # double 3.1418379999999999
	.quad	0x4022860b4e11dbcb              # double 9.2618050000000007
	.quad	0x4002ac49ba5e353f              # double 2.3341249999999998
	.quad	0x4014af5ba2be058a              # double 5.1712480000000003
	.quad	0x4022829e6eeb7026              # double 9.255115
	.quad	0x402200f25a250f84              # double 9.0018489999999999
	.quad	0x40113de7a743a648              # double 4.310454
	.quad	0x40122d57ff9b5632              # double 4.5442809999999998
	.quad	0x400d1d31b9b66f93              # double 3.6392549999999999
	.quad	0x4021500ecfa69be1              # double 8.6563630000000007
	.quad	0x3ff9f4213a0c6b48              # double 1.6221019999999999
	.quad	0x4021eb78ab0c88a4              # double 8.9599049999999991
	.quad	0x400d129bae46cfc8              # double 3.6340859999999999
	.quad	0x40173ca5375c8da0              # double 5.8092240000000004
	.quad	0x400df4b05b7cfe58              # double 3.7444769999999998
	.quad	0x3ffdebc0e38a7e74              # double 1.8700570000000001
	.quad	0x40231c8b65237048              # double 9.5557510000000007
	.quad	0x4011860ed80a17b1              # double 4.380916
	.quad	0x3ffe5f5be5d9e40d              # double 1.8982810000000001
	.quad	0x4014c990f301eabc              # double 5.1968420000000002
	.quad	0x3fd0fe2e6ea85447              # double 0.26551399999999997
	.quad	0x400a205dd8f92afa              # double 3.2658040000000002
	.quad	0x400dc00000000000              # double 3.71875
	.quad	0x3ffd1d95dd4c76d1              # double 1.819723
	.quad	0x401008f9f44d4456              # double 4.0087659999999996
	.quad	0x4022caedbb59ddc2              # double 9.3963450000000002
	.quad	0x4021d3ff69014b5a              # double 8.9140580000000007
	.quad	0x3ffd1ce28ed5f139              # double 1.8195520000000001
	.quad	0x3ff161d53cddd6e0              # double 1.0863849999999999
	.quad	0x400c8f416bdb1a6d              # double 3.5699489999999998
	.quad	0x40231c55eaee2004              # double 9.5553430000000005
	.quad	0x401b9205ff1d81f1              # double 6.892601
	.quad	0x400e31d92b7fe08b              # double 3.77434
	.quad	0x401b96e653868fd2              # double 6.8973630000000004
	.quad	0x402141693c03bc4d              # double 8.6277559999999998
	.quad	0x401424434e3369ba              # double 5.0354130000000001
	.quad	0x3fe7f02e6644d877              # double 0.74806899999999998
	.quad	0x4015ab76709fa54c              # double 5.4174439999999997
	.quad	0x400ae4b7f5a5332b              # double 3.3616790000000001
	.quad	0x402313a4d6e47dc3              # double 9.5383669999999991
	.quad	0x402078665e02ea96              # double 8.2351559999999999
	.quad	0x400bb2e3821af7d3              # double 3.462348
	.quad	0x401506ab14ec204f              # double 5.2565119999999999
	.quad	0x402031c044284dfd              # double 8.0971700000000002
	.quad	0x40210e7ad8e43244              # double 8.5282809999999997
	.quad	0x40115a682b62845a              # double 4.3382880000000004
	.quad	0x400746455eaee200              # double 2.9093119999999999
	.quad	0x402114a6ca03c4b1              # double 8.5403350000000007
	.quad	0x402143f5f91600f3              # double 8.6327359999999995
	.quad	0x4019933c1ce6c094              # double 6.3937840000000001
	.quad	0x40222f96bfca85cb              # double 9.0929470000000006
	.quad	0x40182192641b328b              # double 6.0327849999999996
	.quad	0x3fdd24b76f6d7625              # double 0.45536599999999999
	.quad	0x4021a61f9f01b867              # double 8.8244600000000002
	.quad	0x401bd11f0c34c1a9              # double 6.9542200000000003
	.quad	0x401c148e043a2164              # double 7.020073
	.quad	0x40196502ababead5              # double 6.348643
	.quad	0x3ff45f15a4acf313              # double 1.2732140000000001
	.quad	0x40089d0c80410300              # double 3.0766840000000002
	.quad	0x401c49ff4fd6d7e9              # double 7.0722630000000004
	.quad	0x4017b0a2ca9ac365              # double 5.9224959999999998
	.quad	0x402309081c2e33f0              # double 9.5176400000000001
	.quad	0x400ea881e4712e41              # double 3.8322790000000002
	.quad	0x3fff1d50a88effe3              # double 1.9446570000000001
	.quad	0x4021014db59578a3              # double 8.5025460000000006
	.quad	0x40117cb9a9da597d              # double 4.3718019999999997
	.quad	0x4018fc14c660a201              # double 6.2461729999999998
	.quad	0x401f902de00d1b71              # double 7.8907999999999995
	.quad	0x3ff65f0b28522ea1              # double 1.398204
	.quad	0x401e6cf0b6b6e0d2              # double 7.6063869999999998
	.quad	0x4006f5b70691ea79              # double 2.8699780000000001
	.quad	0x3ff9b02602c9081c              # double 1.605505
	.quad	0x401c7b6c7a7c9de0              # double 7.1205309999999997
	.quad	0x4017d1e29b6b2af1              # double 5.9549659999999998
	.quad	0x4023e1d9f4d37c13              # double 9.9411159999999991
	.quad	0x400237e02645e4e7              # double 2.2772830000000002
	.quad	0x4012f2a5e785b5b7              # double 4.736961
	.quad	0x3fff70270f388228              # double 1.9648810000000001
	.quad	0x4015805faebc408e              # double 5.3753650000000004
	.quad	0x4017726d04e618ce              # double 5.8617439999999998
	.quad	0x4010da6937d1fe65              # double 4.213292
	.quad	0x3ff67d66277c45cc              # double 1.4056150000000001
	.quad	0x3ffadeff9f87f024              # double 1.679443
	.quad	0x3fda06c00da1a933              # double 0.40666200000000002
	.quad	0x3fd631f03d145d85              # double 0.346798
	.quad	0x3fd6fe43675ddd2b              # double 0.35926900000000001
	.quad	0x3ffeb6c9c0a8d21c              # double 1.9196260000000001
	.quad	0x3fc896787ce95fab              # double 0.19209200000000001
	.quad	0x40104d017dae8188              # double 4.0752009999999999
	.quad	0x3ff9b5f5f0b28523              # double 1.606924
	.quad	0x400e680bed740c41              # double 3.8008039999999998
	.quad	0x3fc2e37154003255              # double 0.147566
	.quad	0x401aa17a02fb5d03              # double 6.6576919999999999
	.quad	0x40169a109d0635a4              # double 5.6504539999999999
	.quad	0x401a1cd9a52263d8              # double 6.5281739999999999
	.quad	0x400a7d5a9eb2074f              # double 3.3112080000000002
	.quad	0x4010bb356da0168b              # double 4.1828209999999997
	.quad	0x40104ed6ba8c5868              # double 4.0769909999999996
	.quad	0x3fd5ba0e8427418d              # double 0.33948099999999998
	.quad	0x400052074ea8da7f              # double 2.0400529999999999
	.quad	0x4023db8f9b13165d              # double 9.9288299999999996
	.quad	0x400bcef0ae536502              # double 3.4760450000000001
	.quad	0x4015b1a6937d1fe6              # double 5.4234869999999997
	.quad	0x4014740895d0b73d              # double 5.1133139999999999
	.quad	0x4006c66cb10342ab              # double 2.8468870000000002
	.quad	0x4020baaa5c5f7c67              # double 8.3645809999999994
	.quad	0x402362d96a6a0126              # double 9.6930650000000007
	.quad	0x4009ecbd987c6328              # double 3.240596
	.quad	0x4014ed08d4bad7d8              # double 5.2314790000000002
	.quad	0x400101e68a0d349c              # double 2.125928
	.quad	0x40171ae4b0186120              # double 5.7762630000000001
	.quad	0x3ffa0f5a1016ce79              # double 1.6287480000000001
	.quad	0x40087ba8826aa8eb              # double 3.0603799999999999
	.quad	0x4009e485a0be5109              # double 3.236583
	.quad	0x401dee02645e4e6a              # double 7.4824310000000001
	.quad	0x402138c4dec1c1d7              # double 8.6108770000000003
	.quad	0x400949845dc83233              # double 3.1608969999999998
	.quad	0x3fe965b63d3e4ef0              # double 0.79366599999999998
	.quad	0x400130a350d2806b              # double 2.148749
	.quad	0x400ffa647fdc5932              # double 3.9972620000000001
	.quad	0x3fff3ecedd484513              # double 1.952834
	.quad	0x40022746cb966be8              # double 2.2691780000000001
	.quad	0x4023828cdea033e8              # double 9.7549810000000007
	.quad	0x4020bed20296b335              # double 8.3726959999999995
	.quad	0x40178d6f97679032              # double 5.8881209999999999
	.quad	0x401c398d477bbf94              # double 7.056203
	.quad	0x401de44955b4677b              # double 7.4729359999999998
	.quad	0x401a35625a682b63              # double 6.5521330000000004
	.quad	0x40037d701d9f4d38              # double 2.4362490000000001
	.quad	0x40005182235b4edb              # double 2.0397989999999999
	.quad	0x40200e2a80064a9d              # double 8.0276680000000002
	.quad	0x3ff534d37c1376d5              # double 1.3253969999999999
	.quad	0x4019e195464dc22b              # double 6.4702960000000003
	.quad	0x40167cf67b1c0011              # double 5.6220340000000002
	.quad	0x401c10abf76a2f49              # double 7.0162810000000002
	.quad	0x401b1faf42784a94              # double 6.7809419999999996
	.quad	0x4014df0e0a84be40              # double 5.2178269999999998
	.quad	0x40121080f98fa377              # double 4.5161170000000004
	.quad	0x400e3a24894c447c              # double 3.7783899999999999
	.quad	0x4020cb8088509bfa              # double 8.3974650000000004
	.quad	0x4023b45f17bd8be7              # double 9.8522879999999997
	.quad	0x3ff5d9ee88df3733              # double 1.3657060000000001
	.quad	0x40142fd4bf0995ab              # double 5.04671
	.quad	0x4015f51116a8b8f1              # double 5.4893229999999997
	.quad	0x40232e5eedcc20d5              # double 9.5905679999999993
	.quad	0x4013f578a2a90cd4              # double 4.9897179999999999
	.quad	0x3ff8db9d7fd82774              # double 1.553617
	.quad	0x3ffe626f60e0eb68              # double 1.8990320000000001
	.quad	0x400e4fe586013661              # double 3.789012
	.quad	0x401c860d0247021d              # double 7.1309089999999999
	.quad	0x401bb0535c9e6688              # double 6.922193
	.quad	0x4018d7507e9d94d1              # double 6.2102680000000001
	.quad	0x401ceb60ae9680e0              # double 7.2298609999999996
	.quad	0x3fbbd4cfd08d4bad              # double 0.10871599999999999
	.quad	0x401369da597d49d8              # double 4.8533720000000002
	.quad	0x401b0fbefd00713f              # double 6.765377
	.quad	0x400380420f6f08cc              # double 2.4376259999999998
	.quad	0x401b7e0f7fcfc3f8              # double 6.8731059999999999
	.quad	0x402107ed634549b6              # double 8.5154829999999997
	.quad	0x400eefc0d2c386d3              # double 3.867067
	.quad	0x40158a6937d1fe65              # double 5.385167
	.quad	0x401a2225742dcf46              # double 6.5333459999999999
	.quad	0x3ffc85857afea3df              # double 1.7825979999999999
	.quad	0x401f80b3d4ae429e              # double 7.875686
	.quad	0x401fd372e6a76966              # double 7.956493
	.quad	0x3ffb3e1437c5692b              # double 1.7026559999999999
	.quad	0x402014a83b1d0c80              # double 8.0403459999999995
	.quad	0x3fee989bd8383ada              # double 0.95612900000000001
	.quad	0x4007587f023e9ea1              # double 2.9182109999999999
	.quad	0x400946162f166e01              # double 3.1592220000000002
	.quad	0x402008a782906898              # double 8.0169029999999992
	.quad	0x401a3126634117f8              # double 6.5479979999999998
	.quad	0x3ff0a5604189374c              # double 1.040375
	.quad	0x4007eed99cbee808              # double 2.9916260000000001
	.quad	0x40023c968943e100              # double 2.2795839999999998
	.quad	0x4004a053e2d6238e              # double 2.5782850000000002
	.quad	0x400ed68ad6883772              # double 3.8547570000000002
	.quad	0x401d67c6327ed84d              # double 7.3513419999999998
	.quad	0x40216438f366948a              # double 8.6957470000000008
	.quad	0x401129bbf0dc768e              # double 4.290756
	.quad	0x4019737585be1a82              # double 6.3627529999999997
	.quad	0x3fae43ed959a3098              # double 0.059111999999999998
	.quad	0x401fafadafd11383              # double 7.9215609999999996
	.quad	0x4021bf240fa9c12f              # double 8.8733219999999999
	.quad	0x4016f327ed84d339              # double 5.737457
	.quad	0x400e95b573eab368              # double 3.8231000000000002
	.quad	0x4014792d55a3a084              # double 5.1183370000000004
	.quad	0x4013f2acfb762d84              # double 4.9869880000000002
	.quad	0x4021606d71f36263              # double 8.6883350000000004
	.quad	0x4002df65dbfceb79              # double 2.3590810000000002
	.quad	0x402001cbccf28c7a              # double 8.0035080000000001
	.quad	0x3fd7d96e9bbf0dc7              # double 0.37264599999999998
	.quad	0x402014bab649d389              # double 8.0404870000000006
	.quad	0x401911dde37585be              # double 6.2674479999999999
	.quad	0x4012de874c8ffb8b              # double 4.7173129999999999
	.quad	0x3ff7a7c49fd7a13c              # double 1.478459
	.quad	0x4021e93a71151612              # double 8.9555240000000005
	.quad	0x3fe723f24d8fd5cb              # double 0.72313799999999995
	.quad	0x401b4c286f8ad256              # double 6.8243729999999996
	.quad	0x3fe70379314445aa              # double 0.71917399999999998
	.quad	0x400633c0c1fc8f32              # double 2.7752699999999999
	.quad	0x401f39767903211d              # double 7.8061160000000002
	.quad	0x400c78f25a250f84              # double 3.559056
	.quad	0x400f83e186983516              # double 3.9393950000000002
	.quad	0x40160e64f54d1e97              # double 5.5140570000000002
	.quad	0x401572645e4e69f0              # double 5.3617109999999997
	.quad	0x40112d2aa5c5f7c6              # double 4.2941079999999996
	.quad	0x402219b456b441bc              # double 9.0502040000000008
	.quad	0x4017fae429e0a41a              # double 5.9950109999999999
	.quad	0x4022f1cd8127b2cc              # double 9.4722709999999992
	.quad	0x40201700cd855971              # double 8.0449280000000005
	.quad	0x4012f78140dd3fe2              # double 4.7417040000000004
	.quad	0x4006bc8216c61523              # double 2.8420450000000002
	.quad	0x401990f1f57b41c0              # double 6.3915480000000002
	.quad	0x4022d6b76709fa55              # double 9.4193680000000004
	.quad	0x401dce0d66f0cfe1              # double 7.4512229999999997
	.quad	0x3fe0347c73eee526              # double 0.50640700000000005
	.quad	0x401506c764adff82              # double 5.2566199999999998
	.quad	0x40107215b9a5a89c              # double 4.1114110000000004
	.quad	0x4018cc8cd63cb817              # double 6.1997559999999998
	.quad	0x3fe6eb7cbb3c8191              # double 0.71624600000000005
	.quad	0x3ff1ea94ff0025c0              # double 1.1197710000000001
	.quad	0x4009ef3882278d0d              # double 3.2418070000000001
	.quad	0x4011efd438d1d8a5              # double 4.4842079999999997
	.quad	0x401ae67381d7dbf5              # double 6.7250500000000004
	.quad	0x401ff0c564f97edc              # double 7.9851279999999996
	.quad	0x4023de5753a3ec03              # double 9.93426
	.quad	0x401c0f40e5a35d68              # double 7.0148960000000002
	.quad	0x3fed4ee9dd7ecbb8              # double 0.915883
	.quad	0x3feaae019b0ab2e1              # double 0.83374099999999995
	.quad	0x400588b86b15f890              # double 2.6917580000000001
	.quad	0x401b9e30446b69db              # double 6.9044809999999996
	.quad	0x3ff0fd9fd36f7e3d              # double 1.06192
	.quad	0x401b91e646f15619              # double 6.8924799999999999
	.quad	0x401783c9abb01c93              # double 5.8786990000000001
	.quad	0x4000657d9dba908a              # double 2.0495559999999999
	.quad	0x4015e004b7f5a533              # double 5.4687679999999999
	.quad	0x3fd9547e06961c37              # double 0.39578200000000002
	.quad	0x3ffc710a99b6f5cb              # double 1.777598
	.quad	0x40228191bc558644              # double 9.2530649999999994
	.quad	0x40207663e8dda48b              # double 8.2312309999999993
	.quad	0x3ffb2718a86d71f3              # double 1.6970449999999999
	.quad	0x401e9deefe4ffc98              # double 7.6542320000000003
	.quad	0x3ff0dddd2ae8e1d6              # double 1.0541659999999999
	.quad	0x4018a417ca2120e2              # double 6.160247
	.quad	0x4023e2dc6e2a8006              # double 9.9430879999999995
	.quad	0x4022db71da37ef5b              # double 9.4286030000000007
	.quad	0x4018162281344806              # double 6.0216159999999999
	.quad	0x401a1e6ddf00abf7              # double 6.5297159999999996
	.quad	0x3ffdcd2d44dca8e3              # double 1.862592
	.quad	0x4014b272862f598a              # double 5.1742650000000001
	.quad	0x40123c9c0a8d21bc              # double 4.5591889999999999
	.quad	0x40141822bbecaab9              # double 5.0235700000000003
	.quad	0x4022c0c804102ff9              # double 9.3765260000000001
	.quad	0x400eb56c93a71151              # double 3.8385859999999998
	.quad	0x400f8690de093533              # double 3.940706
	.quad	0x40177bb44e50c5eb              # double 5.8708049999999998
	.quad	0x401a690ff9724745              # double 6.6025999999999998
	.quad	0x40070c8d5c74751d              # double 2.8811290000000001
	.quad	0x4022a3e4ef0281ba              # double 9.3201059999999991
	.quad	0x3fb2145953586ca9              # double 0.070623000000000005
	.quad	0x40139386d2ed783e              # double 4.894069
	.quad	0x3fcbe707e175d13d              # double 0.21798799999999999
	.quad	0x401e75a426bb55ac              # double 7.614884
	.quad	0x4014336e2eb1c433              # double 5.0502250000000002
	.quad	0x3fe8c75e6362a5e8              # double 0.77433700000000005
	.quad	0x3ff546bacf7446fa              # double 1.3297680000000001
	.quad	0x401f3e3150dae3e7              # double 7.8107350000000002
	.quad	0x401672845996744b              # double 5.6118329999999998
	.quad	0x4001c27e0ef99807              # double 2.219967
	.quad	0x401696052502eec8              # double 5.6465040000000002
	.quad	0x401bb760bf5d7881              # double 6.9290799999999999
	.quad	0x401768986fcdee35              # double 5.852144
	.quad	0x401a6c33f85510d4              # double 6.6056670000000004
	.quad	0x3fe5cce3de6149c7              # double 0.68126100000000001
	.quad	0x40015ce6c093d966              # double 2.1703619999999999
	.quad	0x3fe010539fba450b              # double 0.50199300000000002
	.quad	0x401728f2e05ccc8a              # double 5.7899890000000003
	.quad	0x3fe39cf7878b7a1c              # double 0.61291099999999998
	.quad	0x401ebe111276fb09              # double 7.6856119999999998
	.quad	0x40041020c49ba5e3              # double 2.5078749999999999
	.quad	0x4011cdc1e7967caf              # double 4.4509350000000003
	.quad	0x401c9744b2b777d1              # double 7.147723
	.quad	0x4021d379fa97e133              # double 8.9130400000000005
	.quad	0x40064c36544fe36d              # double 2.7872129999999999
	.quad	0x4021cbff8a8f3a9b              # double 8.898434
	.quad	0x4002fff3f0fe047d              # double 2.3749769999999999
	.quad	0x4010d2f9ca5bd945              # double 4.2060310000000003
	.quad	0x401cfa38327674d1              # double 7.2443549999999997
	.quad	0x401128672756861f              # double 4.2894560000000004
	.quad	0x3fec68858ff75968              # double 0.88775899999999996
	.quad	0x401f330941c8216c              # double 7.7998399999999997
	.quad	0x402035714b9cb685              # double 8.1043800000000008
	.quad	0x4021bce5710880d8              # double 8.868938
	.quad	0x4017e6b4c7f34938              # double 5.9752989999999997
	.quad	0x40109703f2d3c793              # double 4.1474760000000002
	.quad	0x3ff693005814940c              # double 1.4108890000000001
	.quad	0x4009f1244a6223e2              # double 3.2427450000000002
	.quad	0x4013ad972cd7cf5f              # double 4.9195219999999997
	.quad	0x401557b41bfbdf09              # double 5.3356479999999999
	.quad	0x3ffee096787ce960              # double 1.9298310000000001
	.quad	0x40216e71ac14c661              # double 8.7157110000000007
	.quad	0x4015103d145d8516              # double 5.2658579999999997
	.quad	0x3ff0d73215fcc187              # double 1.052538
	.quad	0x40219192428d434a              # double 8.784319
	.quad	0x3ff56e6d9be4cd75              # double 1.3394600000000001
	.quad	0x401e723571d1d474              # double 7.6115320000000004
	.quad	0x4010ff687b139c95              # double 4.249422
	.quad	0x4021574afd545415              # double 8.6704939999999997
	.quad	0x40232de99e94ab1d              # double 9.5896729999999994
	.quad	0x3ff165668c261390              # double 1.087256
	.quad	0x4012a3c5bd0e12e8              # double 4.6599339999999998
	.quad	0x400481a048e043a2              # double 2.563294
	.quad	0x40164d96e9bbf0dc              # double 5.5757709999999996
	.quad	0x40209869c66d373b              # double 8.297682
	.quad	0x4016d991361dc93f              # double 5.7124680000000003
	.quad	0x4002999bb2788db0              # double 2.3250039999999998
	.quad	0x4022cf9314445aa3              # double 9.4054190000000001
	.quad	0x40181a7ac81d3aa3              # double 6.0258589999999996
	.quad	0x3fe701669ced0b31              # double 0.71892100000000003
	.quad	0x401e80acc0bdcad1              # double 7.6256589999999997
	.quad	0x40213d9c27e95315              # double 8.6203319999999994
	.quad	0x400792220bc382a1              # double 2.9463539999999999
	.quad	0x401875c896dd26b7              # double 6.1150229999999999
	.quad	0x4021f102795703f3              # double 8.9707220000000003
	.quad	0x4020af4a1272c94b              # double 8.3423619999999996
	.quad	0x40172851eb851eb8              # double 5.7893749999999997
	.quad	0x40066e4b87bdcf03              # double 2.803855
	.quad	0x4017b66516db0dd8              # double 5.9281199999999998
	.quad	0x40107c3c9eecbfb1              # double 4.1213249999999997
	.quad	0x4015b3be6601bc99              # double 5.4255310000000003
	.quad	0x40086e54f7a91969              # double 3.0538729999999998
	.quad	0x4014d641700cd856              # double 5.2092340000000004
	.quad	0x4021a28f3a9b0681              # double 8.8174989999999998
	.quad	0x4011894e1a3f4667              # double 4.3840870000000001
	.quad	0x3ff6ff2f55582129              # double 1.4373009999999999
	.quad	0x401fc0370cdc8755              # double 7.93771
	.quad	0x4011b606fac6045c              # double 4.4277610000000003
	.quad	0x4020e03dddb1209f              # double 8.4379720000000002
	.quad	0x401d73b3636f3b21              # double 7.3629889999999998
	.quad	0x400cece24bba12b6              # double 3.615666
	.quad	0x3ffbe6ab9b23dd55              # double 1.743816
	.quad	0x3fffaaa8eb463498              # double 1.9791650000000001
	.quad	0x4002f525cc426352              # double 2.3697010000000001
	.quad	0x40114f2e05ccc89b              # double 4.3273239999999999
	.quad	0x4012a05d0fa58f71              # double 4.6566049999999999
	.quad	0x4018daab8a5ce5b4              # double 6.2135449999999999
	.quad	0x3ffcaf4e0114d2f6              # double 1.792799
	.quad	0x4014a567dbb16c1e              # double 5.1615289999999998
	.quad	0x40086938de6ddf01              # double 3.0513780000000001
	.quad	0x401ec4e65bea0ba2              # double 7.692285
	.quad	0x4005a329802c0a4a              # double 2.704669
	.quad	0x40053737542a23c0              # double 2.651961
	.quad	0x4012bbbf0dc768e0              # double 4.6833460000000002
	.quad	0x3ffdaa76965f5276              # double 1.854117
	.quad	0x400c7f138bcdfefc              # double 3.562049
	.quad	0x401bcff759685122              # double 6.9530919999999998
	.quad	0x4008362cfd8f0c78              # double 3.0264530000000001
	.quad	0x400a228e4fb97bb7              # double 3.2668729999999999
	.quad	0x401a52e2fbe33acd              # double 6.5809439999999997
	.quad	0x4015da172abef06b              # double 5.4629789999999998
	.quad	0x4011fee5abc0e38a              # double 4.4989229999999996
	.quad	0x4010a2480e8c8abd              # double 4.1584779999999997
	.quad	0x3fca9c0a8d21bc12              # double 0.20788699999999999
	.quad	0x3ff5e8ff327aa68f              # double 1.3693839999999999
	.quad	0x3fec609fe86833c6              # double 0.886795
	.quad	0x3ff06ee957470eb2              # double 1.0270779999999999
	.quad	0x4023a7c30d306a2b              # double 9.8276599999999998
	.quad	0x402049e1b089a027              # double 8.1442999999999994
	.quad	0x40202a69df97aaac              # double 8.0828389999999998
	.quad	0x40165abb01c92ddc              # double 5.5886040000000001
	.quad	0x4004c77f6b1a2a4e              # double 2.5974110000000001
	.quad	0x400f8a012599ed7c              # double 3.9423849999999998
	.quad	0x40167a3443d46b27              # double 5.6193400000000002
	.quad	0x400865460aa64c30              # double 3.0494500000000002
	.quad	0x401b809d0635a427              # double 6.8755990000000002
	.quad	0x3fc63ffef39085f5              # double 0.17382800000000001
	.quad	0x3ffd3b95a294141f              # double 1.8270470000000001
	.quad	0x401678b3700474da              # double 5.6178720000000002
	.quad	0x3f80292817763e4b              # double 0.0078910000000000004
	.quad	0x3fcd5525cc426352              # double 0.229161
	.quad	0x40192ecbb7f9d6f1              # double 6.2956989999999999
	.quad	0x40150ffb480a5acd              # double 5.2656070000000001
	.quad	0x4005ade6ddf00abf              # double 2.7099129999999998
	.quad	0x4020432f87ad080b              # double 8.1312219999999993
	.quad	0x40234adeebb341e1              # double 9.6462319999999994
	.quad	0x40216adf505d0fa6              # double 8.7087350000000008
	.quad	0x400808765ba6efc3              # double 3.0041319999999998
	.quad	0x4021b20dbad3a605              # double 8.8477610000000002
	.quad	0x4023c7bacb428912              # double 9.8900970000000008
	.quad	0x401250b912dba4d7              # double 4.5788310000000001
	.quad	0x3fc1245b291b823d              # double 0.13392200000000001
	.quad	0x3fe7c9752977c88e              # double 0.74334199999999995
	.quad	0x40213fbd273d5bab              # double 8.6244899999999998
	.quad	0x4000266b1e5c0b9a              # double 2.0187590000000002
	.quad	0x400fc8919ef954eb              # double 3.972934
	.quad	0x40150879c4113c68              # double 5.2582769999999996
	.quad	0x4007ba5119ce075f              # double 2.9659749999999998
	.quad	0x3fe345ae5ffa3b9b              # double 0.60225600000000001
	.quad	0x400aa437824d4cba              # double 3.330184
	.quad	0x4013ee618ce2d1f2              # double 4.9827940000000002
	.quad	0x4006346c332f0175              # double 2.7755969999999999
	.quad	0x401987820a30db6a              # double 6.3823319999999999
	.quad	0x401122795703f2d4              # double 4.2836660000000002
	.quad	0x4019f60a63305101              # double 6.4902740000000003
	.quad	0x4002c3f5f91600f3              # double 2.3456839999999999
	.quad	0x400929bf162ae4b0              # double 3.145384
	.quad	0x40196e2e6ea85447              # double 6.3575989999999996
	.quad	0x402127b17ce52ded              # double 8.5775260000000006
	.quad	0x4016bf79c842fa51              # double 5.6869880000000004
	.quad	0x3ff4ac8e68e3ef28              # double 1.2921279999999999
	.quad	0x4022966a55087011              # double 9.2937799999999999
	.quad	0x402292a38b8ae31d              # double 9.2864039999999992
	.quad	0x4022f8f25a250f84              # double 9.4862239999999999
	.quad	0x400b2868b9fdbd30              # double 3.3947310000000002
	.quad	0x3fea754d1e96c3fc              # double 0.82681899999999997
	.quad	0x40207dc55000c954              # double 8.2456460000000006
	.quad	0x40217c6eb0b7c350              # double 8.7430319999999995
	.quad	0x4004f15ce9e5e248              # double 2.6178530000000002
	.quad	0x401edaac53b0813d              # double 7.7135480000000002
	.quad	0x4015ae40c8472c0e              # double 5.4201689999999996
	.quad	0x401666c15d2d01c1              # double 5.6003470000000002
	.quad	0x3fe1dd97f62b6ae8              # double 0.55830000000000002
	.quad	0x3ff9694898f605ab              # double 1.5882039999999999
	.quad	0x401280d1b71758e2              # double 4.6257999999999999
	.quad	0x4011c80bed740c41              # double 4.4453579999999997
	.quad	0x40041b13165d3997              # double 2.51322
	.quad	0x401acfc32ebe596d              # double 6.7028930000000004
	.quad	0x3ffabd31b9b66f93              # double 1.67119
	.quad	0x4007a5321e603d57              # double 2.9556619999999998
	.quad	0x3fdb5425f202107b              # double 0.42701099999999997
	.quad	0x4010486940357a35              # double 4.0707139999999997
	.quad	0x401455ab7dc7abfc              # double 5.0836620000000003
	.quad	0x4021f1dcf893faf4              # double 8.9723889999999997
	.quad	0x3feca4f00ef1348b              # double 0.89513399999999999
	.quad	0x401796c15d2d01c1              # double 5.8972220000000002
	.quad	0x4013238e6d15ad10              # double 4.7847229999999996
	.quad	0x4001cc061847f562              # double 2.224621
	.quad	0x4015b1acde19fc2b              # double 5.4235110000000004
	.quad	0x400e0efed634549b              # double 3.7573219999999998
	.quad	0x401217d955714b9d              # double 4.5232900000000003
	.quad	0x4022abbc2b94d940              # double 9.3354199999999991
	.quad	0x401fb9f01b866e44              # double 7.9315800000000003
	.quad	0x401124ac6cdaf4ae              # double 4.2858140000000002
	.quad	0x4017dc23fab10ba6              # double 5.9649809999999999
	.quad	0x400f37329c347e8d              # double 3.9019520000000001
	.quad	0x4011d098d477bbf9              # double 4.4537079999999998
	.quad	0x400089a459103c8e              # double 2.0672079999999999
	.quad	0x402334178705425f              # double 9.6017419999999997
	.quad	0x3ff96e675147f130              # double 1.5894539999999999
	.quad	0x400cfd14e3bcd35b              # double 3.6235750000000002
	.quad	0x401f3f70153bd167              # double 7.8119509999999996
	.quad	0x401ed93c03bc4d23              # double 7.7121430000000001
	.quad	0x4004a2ee41919ac8              # double 2.5795560000000002
	.quad	0x3fcaaf35e310dbf0              # double 0.20847199999999999
	.quad	0x3fe8d4845132f87b              # double 0.77594200000000002
	.quad	0x4017709635610add              # double 5.8599480000000002
	.quad	0x4004163d3e4ef028              # double 2.510859
	.quad	0x40029f2e48e8a71e              # double 2.327725
	.quad	0x40075d82773e24ff              # double 2.9206590000000001
	.quad	0x4023823bff8a8f3b              # double 9.7543640000000007
	.quad	0x3feb65c2d2780779              # double 0.85617200000000004
	.quad	0x3ff2a9728a611772              # double 1.166369
	.quad	0x4008584f4c6e6d9c              # double 3.04312
	.quad	0x40113ac083126e98              # double 4.3073750000000004
	.quad	0x401672e3c536d656              # double 5.6121970000000001
	.quad	0x4010b5ad538ac190              # double 4.1774190000000004
	.quad	0x4021209b52007dd4              # double 8.5636849999999995
	.quad	0x4010aac3eb7cbb3d              # double 4.1667630000000004
	.quad	0x3fd8645e4e69f05f              # double 0.38112600000000002
	.quad	0x40227e1d8622c450              # double 9.2463189999999997
	.quad	0x4021154bf0995aaf              # double 8.5415949999999992
	.quad	0x3fee15aaf78feef6              # double 0.94014500000000001
	.quad	0x3fd4677b395c4220              # double 0.31881599999999999
	.quad	0x3ff8372e6a76965f              # double 1.5134719999999999
	.quad	0x40218dd0fa58f712              # double 8.7769849999999998
	.quad	0x401607b2031ceaf2              # double 5.5075149999999997
	.quad	0x3ff15ea35935fc3b              # double 1.0856049999999999
	.quad	0x4023d92d1287c201              # double 9.9241720000000004
	.quad	0x3fc28a50507a6bd7              # double 0.144846
	.quad	0x40112085f4a1272d              # double 4.2817610000000004
	.quad	0x4020466c093d9664              # double 8.1375430000000008
	.quad	0x4004c8576cce5f74              # double 2.597823
	.quad	0x40214f3d7d3910c3              # double 8.6547660000000004
	.quad	0x401ef27c7c5260f6              # double 7.7368030000000001
	.quad	0x3fe878a4c1ebc83b              # double 0.76472700000000005
	.quad	0x3fd2e84f09528f19              # double 0.295429
	.quad	0x4022b4243dccea29              # double 9.351839
	.quad	0x4011b246bf01322f              # double 4.4240979999999999
	.quad	0x40212cad794a6eb9              # double 8.5872609999999998
	.quad	0x4021807789a45910              # double 8.7509119999999996
	.quad	0x4016c4bf4cb1897a              # double 5.6921359999999996
	.quad	0x4022d80baa582dbe              # double 9.4219639999999991
	.quad	0x401eb5ca6ca03c4b              # double 7.6775299999999999
	.quad	0x401e061804d98394              # double 7.5059509999999996
	.quad	0x40122e5d5b24e9c4              # double 4.5452779999999997
	.quad	0x400bd61bb05faebc              # double 3.4795449999999999
	.quad	0x402183c925785f8d              # double 8.7573939999999997
	.quad	0x4020c1e8e6080735              # double 8.3787299999999991
	.quad	0x40208a63d816aceb              # double 8.2702930000000006
	.quad	0x4022211276fb0920              # double 9.0645939999999996
	.quad	0x401fbadd9c27e953              # double 7.9324859999999999
	.quad	0x402051791819d239              # double 8.1591269999999998
	.quad	0x40200d7d7c2ca149              # double 8.0263480000000005
	.quad	0x402184158fb43d8a              # double 8.7579770000000003
	.quad	0x400a4e1ef73c0c20              # double 3.2881450000000001
	.quad	0x400bdc422036006d              # double 3.482548
	.quad	0x40168020c49ba5e3              # double 5.6251249999999997
	.quad	0x401c43ef284167a9              # double 7.0663419999999997
	.quad	0x4001d33fc86cebbc              # double 2.2281490000000002
	.quad	0x4009ef4d7add15f0              # double 3.2418469999999999
	.quad	0x40051cc1871e6cd3              # double 2.6390410000000002
	.quad	0x40168719f7f8ca82              # double 5.6319350000000004
	.quad	0x4017fc204f2ae07e              # double 5.9962169999999997
	.quad	0x4016409bf9c62a1b              # double 5.5630949999999997
	.quad	0x40102bf5d78811b2              # double 4.0429300000000001
	.quad	0x4017d520d130df9c              # double 5.9581330000000001
	.quad	0x4003a61b6d43d039              # double 2.4561069999999998
	.quad	0x40219399b2c40d0b              # double 8.7882820000000006
	.quad	0x40125266fd651b0d              # double 4.5804710000000002
	.quad	0x3fe280bed740c415              # double 0.57821599999999995
	.quad	0x40233767b1c0010c              # double 9.6082129999999992
	.quad	0x401355bc87db2b34              # double 4.8337269999999997
	.quad	0x3fd6012dfd694ccb              # double 0.34382200000000002
	.quad	0x4020ab4d48882f0e              # double 8.3345739999999999
	.quad	0x3ffa355043e5321e              # double 1.6380159999999999
	.quad	0x4013eba732df505d              # double 4.9801299999999999
	.quad	0x4017042bb6672fba              # double 5.754073
	.quad	0x4020364f11b60ae9              # double 8.1060719999999993
	.quad	0x4012118fc504816f              # double 4.51715
	.quad	0x3fe495a8deb0fadf              # double 0.64326899999999998
	.quad	0x4010bafee6fb4c3c              # double 4.1826129999999999
	.quad	0x3feb0ec311622813              # double 0.84555199999999997
	.quad	0x3fffdb7bf1e8e608              # double 1.991085
	.quad	0x4022f26defc7a398              # double 9.4734949999999997
	.quad	0x4012773cd573647c              # double 4.6164430000000003
	.quad	0x40119774eebf65dc              # double 4.397907
	.quad	0x401e7f2a5a469d73              # double 7.6241849999999997
	.quad	0x3ff4b517a46173b8              # double 1.2942119999999999
	.quad	0x4019b9641f644956              # double 6.4310460000000003
	.quad	0x401379c0ebedfa44              # double 4.8689
	.quad	0x3ffd035158b827fa              # double 1.81331
	.quad	0x400a455970b49e02              # double 3.2838620000000001
	.quad	0x401e640789613d32              # double 7.5976850000000002
	.quad	0x401d2a63736cdf26              # double 7.2913949999999996
	.quad	0x4022c5132f87ad08              # double 9.3849119999999999
	.quad	0x4022e556d19dece5              # double 9.4479279999999992
	.quad	0x40079702602c9082              # double 2.9487350000000001
	.quad	0x402320887229e908              # double 9.5635410000000007
	.quad	0x4022cdc55000c954              # double 9.4018960000000006
	.quad	0x401208051c9f72f7              # double 4.5078319999999996
	.quad	0x400c3d54da4ce810              # double 3.5299469999999999
	.quad	0x4014a4aec8d5c747              # double 5.1608229999999997
	.quad	0x40158f3cb3e5753a              # double 5.3898799999999998
	.quad	0x401bdace67d77fae              # double 6.9636779999999998
	.quad	0x40235bf5515054ac              # double 9.6796059999999997
	.quad	0x3ff656da0168b5cc              # double 1.396204
	.quad	0x40128546d3f9e7b8              # double 4.630153
	.quad	0x40138a8a82a5614e              # double 4.885294
	.quad	0x4023340dd3fe1976              # double 9.6016680000000001
	.quad	0x40143fdf3b645a1d              # double 5.0623750000000003
	.quad	0x402349d4d834091c              # double 9.6442019999999999
	.quad	0x3fe8acc70867ad8e              # double 0.77109099999999997
	.quad	0x400b619008205ff2              # double 3.4226380000000001
	.quad	0x401efc46d82ba5a0              # double 7.7463639999999998
	.quad	0x40067b1209edbf8c              # double 2.8100930000000002
	.quad	0x40201bbadc0980b2              # double 8.0541599999999995
	.quad	0x3fe37e2c55c96031              # double 0.60915200000000003
	.quad	0x40165e90364388ec              # double 5.5923470000000002
	.quad	0x4019d2856605ee57              # double 6.4555870000000004
	.quad	0x4022f8adcd2d44dd              # double 9.4857010000000006
	.quad	0x402271986b9c304d              # double 9.2218660000000003
	.quad	0x400abdb2b346130a              # double 3.3426260000000001
	.quad	0x3fb66cb10342aa9f              # double 0.087595999999999993
	.quad	0x4012ca964e8b7e4e              # double 4.6978390000000001
	.quad	0x3ffecc9ea9a3d2d8              # double 1.9249559999999999
	.quad	0x3ffda797891e2153              # double 1.853416
	.quad	0x40215aa2e3c536d6              # double 8.6770239999999994
	.quad	0x4001e66a98244e94              # double 2.2375080000000001
	.quad	0x401960d1b71758e2              # double 6.3445499999999999
	.quad	0x400032f6e82949a5              # double 2.0248849999999998
	.quad	0x3ff62e9899bf5947              # double 1.3863760000000001
	.quad	0x40091a46173b85e8              # double 3.137829
	.quad	0x400ae26cc1ca3a4b              # double 3.3605589999999999
	.quad	0x4021f289dadfb507              # double 8.9737080000000002
	.quad	0x40226dd3fe1975f3              # double 9.2145080000000004
	.quad	0x401b63e468cac4b5              # double 6.8475510000000002
	.quad	0x401895d52c16df40              # double 6.1463210000000004
	.quad	0x401384bb5e0f7fd0              # double 4.8796210000000002
	.quad	0x3fd43c36113404ea              # double 0.31617499999999998
	.quad	0x40141c0c62e4d1a6              # double 5.0273909999999997
	.quad	0x401112c0a4a05dd9              # double 4.268313
	.quad	0x3fe7304ee7c49fd8              # double 0.72464700000000004
	.quad	0x3ffa01f75104d552              # double 1.62548
	.quad	0x4018ba393ee5eedd              # double 6.1818590000000002
	.quad	0x4013b1a8ac5c13fd              # double 4.923495
	.quad	0x4015e2cfd8f0c77e              # double 5.4714960000000001
	.quad	0x400ab71327243138              # double 3.3393920000000001
	.quad	0x4012fcfe154434e3              # double 4.7470629999999998
	.quad	0x40147f23033a4724              # double 5.1241570000000003
	.quad	0x3ffc2817763e4abe              # double 1.7597879999999999
	.quad	0x4015889df1172ef1              # double 5.3834150000000003
	.quad	0x4017e6dd69d30271              # double 5.975454
	.quad	0x40063d388a8b08dd              # double 2.7798929999999999
	.quad	0x3ffb6d15ad106ee3              # double 1.714132
	.quad	0x3ffa27d24180d3d0              # double 1.634722
	.quad	0x3fde8a7e73a365cb              # double 0.47720299999999999
	.quad	0x402010d10f51ac9b              # double 8.032845
	.quad	0x401f3ee49f51697f              # double 7.8114189999999998
	.quad	0x401d79c90c4dec1c              # double 7.3689309999999999
	.quad	0x401b5ef1bac2df0d              # double 6.8427189999999998
	.quad	0x4015734117f8444a              # double 5.3625530000000001
	.quad	0x401656ed245b291c              # double 5.5848890000000004
	.quad	0x40232408d8ec95c0              # double 9.5703800000000001
	.quad	0x400bff4eca686e7e              # double 3.4996619999999998
	.quad	0x4022d2fec56d5cfb              # double 9.4121000000000005
	.quad	0x40225bc2dadb8349              # double 9.1792210000000001
	.quad	0x40218ba9b0681238              # double 8.7727789999999999
	.quad	0x3ff7c58793dd97f6              # double 1.485725
	.quad	0x402179344806290f              # double 8.7367270000000001
	.quad	0x401383f7ced91687              # double 4.8788749999999999
	.quad	0x400f4b2af145521a              # double 3.9117030000000002
	.quad	0x40002f74cd31769b              # double 2.0231720000000002
	.quad	0x40177934efcbd556              # double 5.868366
	.quad	0x4021388509bf9c63              # double 8.6103900000000007
	.quad	0x4011c3682730c671              # double 4.4408269999999996
	.quad	0x4008ce78183f91e6              # double 3.1008149999999999
	.quad	0x400053415b1422cd              # double 2.0406520000000001
	.quad	0x4011ff0b6b6e0d24              # double 4.4990670000000001
	.quad	0x401c1cd962068555              # double 7.0281729999999998
	.quad	0x400dcbb0a2ca9ac3              # double 3.7244579999999998
	.quad	0x400fda14488c60cc              # double 3.981484
	.quad	0x4021027a41e57d9e              # double 8.5048390000000005
	.quad	0x401a1719b4dcebff              # double 6.5225590000000002
	.quad	0x4023af985271bcdc              # double 9.8429590000000004
	.quad	0x4001ac1333b96af0              # double 2.2090209999999999
	.quad	0x401c6e0221426fe7              # double 7.1074299999999999
	.quad	0x4022a66c2acb85a5              # double 9.3250440000000001
	.quad	0x4013d87ad080b674              # double 4.9614060000000002
	.quad	0x401181fea8112ba1              # double 4.3769479999999996
	.quad	0x401eb51f81a5870e              # double 7.6768780000000003
	.quad	0x401811b328b6d86f              # double 6.0172850000000002
	.quad	0x3ff5f51bd61f5be6              # double 1.372341
	.quad	0x4023934d056c508b              # double 9.7876969999999996
	.quad	0x4018526f1dc50ce5              # double 6.0805020000000001
	.quad	0x4017ed6b65a9a805              # double 5.9818550000000004
	.quad	0x401d21b1d92b7fe1              # double 7.2829050000000004
	.quad	0x3fd28c1db0142f62              # double 0.289802
	.quad	0x4007aeea63b688be              # double 2.9604080000000002
	.quad	0x400fbc115df6555c              # double 3.9668299999999999
	.quad	0x40163de4c51116a9              # double 5.5604430000000002
	.quad	0x40022130164840e1              # double 2.2662049999999998
	.quad	0x402262a3ad18d25f              # double 9.1926550000000002
	.quad	0x400b1a1db877ab32              # double 3.3877519999999999
	.quad	0x4009c83126e978d5              # double 3.22275
	.quad	0x3fee49c0a8d21bc1              # double 0.94650299999999998
	.quad	0x402262b53d640e9d              # double 9.1927889999999994
	.quad	0x400f16bb1290257d              # double 3.8860990000000002
	.quad	0x4019ca597d49d7ba              # double 6.4476069999999996
	.quad	0x400af1ec0b567558              # double 3.3681260000000002
	.quad	0x3ff24cd855970b4a              # double 1.143761
	.quad	0x40223e2e6ea85447              # double 9.1214479999999991
	.quad	0x40235bd6a593a2e0              # double 9.6793720000000008
	.quad	0x401d8971c10d7bea              # double 7.3842230000000004
	.quad	0x3fd2d0bfa0945f9e              # double 0.293991
	.quad	0x401c211ec918e326              # double 7.0323440000000002
	.quad	0x40141eb702602c91              # double 5.0299950000000004
	.quad	0x40221f5c8d9f9054              # double 9.0612530000000006
	.quad	0x4023a9628cbd1245              # double 9.8308300000000006
	.quad	0x400be88d6d3b6cbe              # double 3.4885510000000002
	.quad	0x4018ecc426351def              # double 6.231217
	.quad	0x3ff7055eaee2003b              # double 1.4388110000000001
	.quad	0x401653a14cec41dd              # double 5.5816699999999999
	.quad	0x401c871d1d4738a4              # double 7.1319470000000003
	.quad	0x4022f442e9899bf6              # double 9.4770730000000007
	.quad	0x401adbfad2999568              # double 6.7148240000000001
	.quad	0x40218f6709fa54c5              # double 8.7800829999999994
	.quad	0x3fb37f6b1a2a4db1              # double 0.076162999999999995
	.quad	0x4021e8cbf2b239a4              # double 8.9546810000000007
	.quad	0x40081e481f53825e              # double 3.014786
	.quad	0x4017e163779e9d0f              # double 5.9701060000000004
	.quad	0x4008bf7dfa00e27e              # double 3.093502
	.quad	0x40104eb2074ea8da              # double 4.0768509999999996
	.quad	0x40136cf893faf428              # double 4.8564170000000004
	.quad	0x4023a1e7fb267c6c              # double 9.8162230000000008
	.quad	0x401d939de481f538              # double 7.3941569999999998
	.quad	0x401b4feb8d823422              # double 6.8280469999999998
	.quad	0x40215d2849cb252d              # double 8.6819480000000002
	.quad	0x402173649d388a8b              # double 8.7253769999999999
	.quad	0x4022aa706d506573              # double 9.3328889999999998
	.quad	0x4007aa3a4b5568e8              # double 2.9581189999999999
	.quad	0x401edc8e68e3ef28              # double 7.7153869999999997
	.quad	0x40165eb0318b9347              # double 5.5924690000000004
	.quad	0x400f95f4e4430b18              # double 3.9482210000000002
	.quad	0x4012404102ff8ec1              # double 4.562748
	.quad	0x40204b5568e820e6              # double 8.1471359999999997
	.quad	0x401173a5c1c6088d              # double 4.3629369999999996
	.quad	0x3ff74c4ac6cdaf4b              # double 1.456126
	.quad	0x40042b3700474d9c              # double 2.5211009999999998
	.quad	0x4000ec319c5a3e3a              # double 2.115329
	.quad	0x40201c85e3da2f8c              # double 8.0557090000000002
	.quad	0x3ff171209edbf8ba              # double 1.0901190000000001
	.quad	0x401c8821af7d30ad              # double 7.1329409999999998
	.quad	0x4016a55ac03ff690              # double 5.6614789999999999
	.quad	0x401491908e581cf8              # double 5.1421530000000004
	.quad	0x4013971b8aa00193              # double 4.8975660000000003
	.quad	0x3ff36d15ad106ee3              # double 1.214132
	.quad	0x401f5b738e6d15ad              # double 7.8393079999999999
	.quad	0x402037bca1059ea5              # double 8.1088609999999992
	.quad	0x3ff76c6583e8576d              # double 1.463964
	.quad	0x400825e0b4e11dbd              # double 3.0184950000000002
	.quad	0x401b080ecfa69be1              # double 6.7578690000000003
	.quad	0x40187aa044ae85ba              # double 6.1197520000000001
	.quad	0x400944f5d35653ca              # double 3.1586720000000001
	.quad	0x40143c64fdb09a67              # double 5.0589789999999999
	.quad	0x4018bcff21b3aeef              # double 6.1845670000000004
	.quad	0x402003bf727136a4              # double 8.0073199999999999
	.quad	0x4014fe974a3400b9              # double 5.2486240000000004
	.quad	0x40220cd72799a1fd              # double 9.0250789999999999
	.quad	0x40069e83e425aee6              # double 2.8273999999999999
	.quad	0x4000fa13c254a3c6              # double 2.1221079999999999
	.quad	0x401ee64b2314013f              # double 7.7248960000000002
	.quad	0x4012fa25529fe005              # double 4.7442830000000002
	.quad	0x401bb3bd5992428d              # double 6.9255269999999998
	.quad	0x40163a597d49d7ba              # double 5.5569819999999996
	.quad	0x401e530b178b3700              # double 7.5810969999999998
	.quad	0x3ff5ba6698bb4d49              # double 1.3580080000000001
	.quad	0x40209b343fa2ad3f              # double 8.3031330000000008
	.quad	0x4019f45176145953              # double 6.4885919999999997
	.quad	0x401668205ff1d81f              # double 5.6016859999999999
	.quad	0x401361ae70c1333c              # double 4.8453920000000004
	.quad	0x4023f23e39f77293              # double 9.9731310000000004
	.quad	0x400ca7485e3da2f9              # double 3.5816810000000001
	.quad	0x402157aa4766c6de              # double 8.6712209999999992
	.quad	0x40133e6afcce1c58              # double 4.8109549999999999
	.quad	0x4017e2c4d65e4606              # double 5.9714539999999996
	.quad	0x400e8f0c77dd872f              # double 3.8198479999999999
	.quad	0x40233035371971c1              # double 9.5941559999999999
	.quad	0x400c9734b51372a4              # double 3.5738310000000002
	.quad	0x4023a3b03e20ccff              # double 9.8197039999999997
	.quad	0x400f7b5aea3161a2              # double 3.9352320000000001
	.quad	0x4021f8bcbe61cfff              # double 8.9858150000000006
	.quad	0x401e9ab8a5ce5b42              # double 7.6510949999999998
	.quad	0x3ff31426fe718a87              # double 1.19242
	.quad	0x40070c9c0a8d21bc              # double 2.881157
	.quad	0x3fe1c80841ede11a              # double 0.55566800000000005
	.quad	0x3fd943e100607810              # double 0.39476800000000001
	.quad	0x400d4fb97bb73083              # double 3.6639279999999999
	.quad	0x4000b6e0d23d4f16              # double 2.089296
	.quad	0x4020aae3a3a8e714              # double 8.3337679999999991
	.quad	0x3fefa90470a808c8              # double 0.98938199999999998
	.quad	0x3ff9391819d2391d              # double 1.5764389999999999
	.quad	0x400492bf5515054b              # double 2.5716540000000001
	.quad	0x401aa53bd1676641              # double 6.6613610000000003
	.quad	0x400880a393ee5eee              # double 3.0628120000000001
	.quad	0x40221631b584b1ab              # double 9.0433479999999999
	.quad	0x401e4cc2938de6de              # double 7.5749610000000001
	.quad	0x401fda01eeed8905              # double 7.962898
	.quad	0x401d6641b328b6d8              # double 7.3498599999999996
	.quad	0x4023e2ecf2064239              # double 9.9432139999999993
	.quad	0x3fff82cb20fb224b              # double 1.9694320000000001
	.quad	0x3feef90752da9867              # double 0.96789899999999995
	.quad	0x401b180c73abc947              # double 6.773485
	.quad	0x402190eb24a6a876              # double 8.7830440000000003
	.quad	0x400738e864020818              # double 2.902787
	.quad	0x400ae7442c7fbacb              # double 3.3629229999999999
	.quad	0x4012df316e371540              # double 4.717962
	.quad	0x4013f10adcd2d44e              # double 4.9853930000000002
	.quad	0x4018a76145953587              # double 6.1634570000000002
	.quad	0x40188681ecd4aa11              # double 6.1313550000000001
	.quad	0x4013f46cfc829cfe              # double 4.9886970000000002
	.quad	0x3fef092ee84ad795              # double 0.96987100000000003
	.quad	0x4010b067cf1c3266              # double 4.1722710000000003
	.quad	0x401a409bf9c62a1b              # double 6.5630949999999997
	.quad	0x401cc74f2f123c43              # double 7.1946380000000003
	.quad	0x4012fe50c5eb313c              # double 4.7483550000000001
	.quad	0x40231090d5a5b963              # double 9.5323550000000007
	.quad	0x3fe55989df1172ef              # double 0.66718
	.quad	0x4017f5c209246bf0              # double 5.9899979999999999
	.quad	0x4018523bbc6eb0b8              # double 6.0803060000000002
	.quad	0x401c285e80bed741              # double 7.0394230000000002
	.quad	0x400456f4be835dee              # double 2.542459
	.quad	0x401538ac5c13fd0d              # double 5.305345
	.quad	0x4021c49491f2dc2b              # double 8.8839459999999999
	.quad	0x401c8ec679cc74b8              # double 7.1394289999999998
	.quad	0x402007381d7dbf48              # double 8.0140999999999991
	.quad	0x402268f840181e04              # double 9.205019
	.quad	0x3fe9e3cd9a52263e              # double 0.80905800000000005
	.quad	0x401c65f88fc9363f              # double 7.0995809999999997
	.quad	0x4001081dc0db2703              # double 2.1289630000000002
	.quad	0x4015c54ac29bf163              # double 5.4426680000000003
	.quad	0x3ffdde3eaf6837f8              # double 1.8667590000000001
	.quad	0x3fda31f8a0902de0              # double 0.4093
	.quad	0x4009268cac4b4d05              # double 3.1438229999999998
	.quad	0x40057250b524399b              # double 2.6808179999999999
	.quad	0x4006ab945308bb90              # double 2.8337789999999998
	.quad	0x3ff2e096787ce960              # double 1.1798310000000001
	.quad	0x4013b4e48626f60e              # double 4.9266529999999999
	.quad	0x402278c21e1d2179              # double 9.2358560000000001
	.quad	0x401e410d7be9856a              # double 7.5635279999999998
	.quad	0x4003376683c297c0              # double 2.4020510000000002
	.quad	0x4018dc44bf4cb189              # double 6.2151059999999996
	.quad	0x3fea16744b2b777d              # double 0.81524099999999999
	.quad	0x40100fd113836a83              # double 4.0154459999999998
	.quad	0x3ff9ed6777079e5a              # double 1.62046
	.quad	0x40204a5df2239e6b              # double 8.1452480000000005
	.quad	0x40062bbfd71b0468              # double 2.7713619999999999
	.quad	0x4020fd7518b0d0ee              # double 8.4950340000000004
	.quad	0x401bb1cffeb074a7              # double 6.9236449999999996
	.quad	0x40191958537e2c56              # double 6.2747510000000002
	.quad	0x3ff960242d05f288              # double 1.5859719999999999
	.quad	0x401d7c1df3300de5              # double 7.3712080000000002
	.quad	0x401d9e4b018611fd              # double 7.4045829999999997
	.quad	0x400442fad6cb5350              # double 2.532705
	.quad	0x400b31a005c4651f              # double 3.3992309999999999
	.quad	0x4009c9363f572de4              # double 3.2232479999999999
	.quad	0x4005c8323358f2e0              # double 2.7227519999999998
	.quad	0x3ff987863beec398              # double 1.5955870000000001
	.quad	0x3fc018e757928e0d              # double 0.12576000000000001
	.quad	0x4020f40db2702a35              # double 8.4766670000000008
	.quad	0x4016ec49774256bd              # double 5.7307490000000003
	.quad	0x4023d3764f11b60b              # double 9.9130120000000001
	.quad	0x401551f9f01b866e              # double 5.3300549999999998
	.quad	0x40185300de4c5111              # double 6.0810579999999996
	.quad	0x401b2f71a7e30878              # double 6.7963319999999996
	.quad	0x401b4e4d5d80e497              # double 6.8264670000000001
	.quad	0x4008467381d7dbf5              # double 3.0344000000000002
	.quad	0x400381eeed8904f7              # double 2.4384440000000001
	.quad	0x3ff8afa93af74cd3              # double 1.542886
	.quad	0x4006db35b0bbf50e              # double 2.8570359999999999
	.quad	0x3fee6b11c6d1e109              # double 0.95057000000000003
	.quad	0x4017819439de481f              # double 5.8765419999999997
	.quad	0x400bd4e8fb00bcbe              # double 3.4789599999999998
	.quad	0x3ff5f50d2806af47              # double 1.3723270000000001
	.quad	0x40008ac53b0813cb              # double 2.0677590000000001
	.quad	0x3ffd61c58255b036              # double 1.8363700000000001
	.quad	0x40215325918a009f              # double 8.6623959999999993
	.quad	0x4021fabf76a2f48c              # double 8.9897419999999996
	.quad	0x4008afa2f05a708f              # double 3.0857600000000001
	.quad	0x400683af31b152f4              # double 2.8142990000000001
	.quad	0x400655a5332acfb7              # double 2.7918189999999998
	.quad	0x40033cad14a0a0f5              # double 2.4046270000000001
	.quad	0x400492b5e529bae4              # double 2.5716359999999998
	.quad	0x401a781ba7fc32ec              # double 6.6172930000000001
	.quad	0x3ff38c564f97edc8              # double 1.221762
	.quad	0x4022692e83a109d0              # double 9.2054329999999993
	.quad	0x400734538ef34d6a              # double 2.90055
	.quad	0x3fdca6eb91b3f20a              # double 0.44768799999999997
	.quad	0x40234871c53f39d2              # double 9.6414930000000005
	.quad	0x3ff7401711947cfa              # double 1.453147
	.quad	0x4018e817763e4abe              # double 6.2266519999999996
	.quad	0x402144aa7589efd8              # double 8.6341129999999993
	.quad	0x401cdb107746887b              # double 7.2139300000000004
	.quad	0x4022018eda22f6a5              # double 9.0030429999999999
	.quad	0x4023be3cb8173322              # double 9.8715569999999992
	.quad	0x3fd7558644523f68              # double 0.364595
	.quad	0x3ff4387f023e9ea1              # double 1.2637929999999999
	.quad	0x4004aa8fc0d2c387              # double 2.5832820000000001
	.quad	0x401f45bdd76683c3              # double 7.8181070000000003
	.quad	0x4019ddae81882adc              # double 6.4664859999999997
	.quad	0x40211d6f97679032              # double 8.5574919999999999
	.quad	0x4018bb67c286f8ad              # double 6.1830129999999999
	.quad	0x3fd95db76b3bb83d              # double 0.396345
	.quad	0x4015540aaeafab54              # double 5.3320720000000001
	.quad	0x4014c6d19dece571              # double 5.194159
	.quad	0x3fe4e364bec679cc              # double 0.65275799999999995
	.quad	0x401841f53825e13b              # double 6.0644119999999999
	.quad	0x40205474107314cb              # double 8.1649480000000008
	.quad	0x401667d0aed99cbf              # double 5.6013820000000001
	.quad	0x4012ef498c3b0c46              # double 4.7336790000000004
	.quad	0x4013c4c37e6f71a8              # double 4.9421520000000001
	.quad	0x400b3adafd113837              # double 3.4037380000000002
	.quad	0x400984d2b2bfdb4d              # double 3.1898550000000001
	.quad	0x40223904b3c3e74b              # double 9.111364
	.quad	0x4020a50f6273929f              # double 8.3223830000000003
	.quad	0x4022f5a7f3cf7015              # double 9.4797969999999995
	.quad	0x40127942d490e66d              # double 4.6184190000000003
	.quad	0x3fc1e84f09528f19              # double 0.139902
	.quad	0x3fcfd2d87f88765c              # double 0.24862200000000001
	.quad	0x401925069a4df480              # double 6.2861580000000004
	.quad	0x3fe128da7f3cf701              # double 0.53623699999999996
	.quad	0x40107c343b70ef56              # double 4.1212929999999997
	.quad	0x400be8f8e7ddca4b              # double 3.488756
	.quad	0x3ff282df0d413123              # double 1.1569510000000001
	.quad	0x4016555ef1fddebe              # double 5.5833700000000004
	.quad	0x401ed25892684cf0              # double 7.7054159999999996
	.quad	0x3ff6a5e353f7ced9              # double 1.4155
	.quad	0x40107e657b84db9c              # double 4.1234339999999996
	.quad	0x401a345c358afc48              # double 6.5511330000000001
	.quad	0x3ff805a2d72ffd1e              # double 1.501376
	.quad	0x401642bc72e275ab              # double 5.5651719999999996
	.quad	0x40201049a9973d9f              # double 8.0318120000000004
	.quad	0x401a90eed02cd39e              # double 6.6415360000000003
	.quad	0x401032e275ab7dc8              # double 4.0496920000000003
	.quad	0x40051f3b645a1cac              # double 2.64025
	.quad	0x401513e3e29307af              # double 5.2694239999999999
	.quad	0x40131a63736cdf26              # double 4.7757699999999996
	.quad	0x3fddfbbd7b2031cf              # double 0.46849000000000002
	.quad	0x4012bda1a93293d1              # double 4.685187
	.quad	0x40214e4a7b4e54f8              # double 8.6529120000000006
	.quad	0x3ff9218ac9f2fdb9              # double 1.570689
	.quad	0x4012a5f9591cd1c8              # double 4.6620840000000001
	.quad	0x40086f28c79f6662              # double 3.0542769999999999
	.quad	0x402182834d26fa40              # double 8.7549080000000004
	.quad	0x40201a83d35eb745              # double 8.0517869999999991
	.quad	0x3f99806f262888b5              # double 0.024903999999999999
	.quad	0x40090c88a47ecfea              # double 3.1311200000000001
	.quad	0x40098c0ad03d9a95              # double 3.1933799999999999
	.quad	0x40187992428d434a              # double 6.118722
	.quad	0x4015a9a4df47f994              # double 5.4156680000000001
	.quad	0x4009ae6f2e8c0486              # double 3.2101730000000002
	.quad	0x400f159685122318              # double 3.8855409999999999
	.quad	0x40123acaff6d3309              # double 4.5574149999999998
	.quad	0x3fe8c1e9af5ba2be              # double 0.773671
	.quad	0x4022e47cb70ac3a8              # double 9.4462639999999993
	.quad	0x401059e90795f677              # double 4.0878030000000001
	.quad	0x3f9bbd7b2031ceaf              # double 0.027089999999999999
	.quad	0x3ff30ca1cef240fb              # double 1.1905840000000001
	.quad	0x40128b7fe08aefb3              # double 4.6362300000000003
	.quad	0x3fc302363b256ffc              # double 0.148505
	.quad	0x3ff97a56de33269e              # double 1.592368
	.quad	0x3ff056b11c6d1e11              # double 1.0211650000000001
	.quad	0x40176479d4d83409              # double 5.8481209999999999
	.quad	0x4001eae6c8f75537              # double 2.2396980000000002
	.quad	0x401bb6188b11409a              # double 6.9278279999999999
	.quad	0x3ff3b214f0520d13              # double 1.230977
	.quad	0x40022a1e81cb46bb              # double 2.2705660000000001
	.quad	0x40181313be22e5de              # double 6.0186299999999999
	.quad	0x3fc9c6fbd273d5bb              # double 0.20138500000000001
	.quad	0x4021a11f0c34c1a9              # double 8.8146900000000006
	.quad	0x4017b0d9513f8db5              # double 5.9227040000000004
	.quad	0x4003436e2eb1c433              # double 2.4079250000000001
	.quad	0x401c4d230b9dc2f4              # double 7.075329
	.quad	0x40061c2a02320968              # double 2.7637520000000002
	.quad	0x400ea01abd1aa822              # double 3.828176
	.quad	0x3ff9bf51efb6dca0              # double 1.6092089999999999
	.quad	0x401c8dc443914f48              # double 7.1384439999999998
	.quad	0x4001f25edd052935              # double 2.2433450000000001
	.quad	0x40107d883ba3443d              # double 4.1225899999999998
	.quad	0x4017d81e8a2ec28b              # double 5.9610539999999999
	.quad	0x3fe133c1ce6c093e              # double 0.53756800000000005
	.quad	0x3feac99285a921cd              # double 0.83710600000000002
	.quad	0x4007f636f3b213e4              # double 2.9952220000000001
	.quad	0x4011cfce746cb967              # double 4.4529360000000002
	.quad	0x4017d3543aeab799              # double 5.9563759999999997
	.quad	0x401f01758e219653              # double 7.7514250000000002
	.quad	0x400fed0e56041893              # double 3.9907499999999998
	.quad	0x4005d27a20578e5c              # double 2.7277719999999999
	.quad	0x401e116ce789e775              # double 7.517017
	.quad	0x400526cc1ca3a4b5              # double 2.6439439999999998
	.quad	0x4022eefb09203a32              # double 9.4667589999999997
	.quad	0x401c6d4b2745bf27              # double 7.106732
	.quad	0x40061c6c97d8cf3a              # double 2.7638790000000002
	.quad	0x3fe2487980f55de6              # double 0.57134700000000005
	.quad	0x4020f523b3636f3b              # double 8.4787879999999998
	.quad	0x401a2abe27179bfe              # double 6.541741
	.quad	0x400971904b3c3e75              # double 3.1804510000000001
	.quad	0x402387f04577d955              # double 9.7655049999999992
	.quad	0x4014cbfdb4cc2507              # double 5.1992099999999999
	.quad	0x401df7e90ff97247              # double 7.4920999999999997
	.quad	0x4012fe1b8ed1bf7b              # double 4.7481520000000002
	.quad	0x4014205a708ede55              # double 5.0315950000000003
	.quad	0x40165dcfcc5b8dc5              # double 5.5916129999999997
	.quad	0x3fea49d7ba6698bb              # double 0.82151399999999997
	.quad	0x4003ccaeea63b689              # double 2.4749430000000001
	.quad	0x402299a1fd1569f5              # double 9.3000640000000008
	.quad	0x40105238da3c2118              # double 4.0802949999999996
	.quad	0x402384ba732df506              # double 9.7592350000000003
	.quad	0x400022d6a9c560c8              # double 2.0170110000000001
	.quad	0x400a9a5b0ff10ecb              # double 3.3253689999999998
	.quad	0x401f1f5232d2bb23              # double 7.7805869999999996
	.quad	0x402303519bd4067d              # double 9.506482
	.quad	0x4022ae8ec52a411c              # double 9.3409329999999997
	.quad	0x4012c8b97785729b              # double 4.6960199999999999
	.quad	0x3ff6544aa53fc009              # double 1.3955789999999999
	.quad	0x400ea2c77574f723              # double 3.8294820000000001
	.quad	0x401a252d666a9824              # double 6.5363059999999997
	.quad	0x3fad592d98bf7f06              # double 0.057320999999999997
	.quad	0x4016e37a80cf9e38              # double 5.7221469999999997
	.quad	0x4016c054690de093              # double 5.6878219999999997
	.quad	0x400c0f5b1c864884              # double 3.507498
	.quad	0x401e02528ae74f2f              # double 7.5022679999999999
	.quad	0x400ac1e8a2ec28b3              # double 3.3446820000000002
	.quad	0x401a1b8fde2ef4e0              # double 6.5269159999999999
	.quad	0x401b0503fb374363              # double 6.7548979999999998
	.quad	0x3ff670813cab81f9              # double 1.4024669999999999
	.quad	0x401e32888b545c79              # double 7.5493490000000003
	.quad	0x400f5f266ba493c9              # double 3.9214600000000002
	.quad	0x4018ae503fb37436              # double 6.1702279999999998
	.quad	0x4014db52c9d16fca              # double 5.2141830000000002
	.quad	0x4002154434e3369c              # double 2.2603840000000002
	.quad	0x401a71bc55864452              # double 6.6110699999999998
	.quad	0x40142cdee34fc611              # double 5.0438190000000001
	.quad	0x401e606290eed02d              # double 7.5941260000000001
	.quad	0x400494fd6d7e889c              # double 2.572749
	.quad	0x4011489e34330d74              # double 4.3209160000000004
	.quad	0x401e2aafbc1acde2              # double 7.5416860000000003
	.quad	0x401d144b6e935b92              # double 7.269819
	.quad	0x40225186338b47c7              # double 9.1592269999999996
	.quad	0x4021c23a6ce3582a              # double 8.8793520000000008
	.quad	0x4012997e56473472              # double 4.649896
	.quad	0x40155a775fb2edfe              # double 5.3383459999999996
	.quad	0x401c799dcb5781c7              # double 7.1187659999999999
	.quad	0x3febcc39ffd60e95              # double 0.86868000000000001
	.quad	0x402206fac6045baf              # double 9.0136319999999994
	.quad	0x401363a7daa4fca4              # double 4.8473199999999999
	.quad	0x400d0778140dd3fe              # double 3.628647
	.quad	0x4016e20ccff21b3b              # double 5.7207520000000001
	.quad	0x4023756a37ac3eb8              # double 9.7293260000000003
	.quad	0x400c359ab6d00b46              # double 3.5261740000000001
	.quad	0x401fd9f01b866e44              # double 7.9628300000000003
	.quad	0x400dbf6d330941c8              # double 3.7184699999999999
	.quad	0x3fd01d8a54823854              # double 0.251803
	.quad	0x4011e63a9f383f0c              # double 4.4748330000000003
	.quad	0x4023825332acfb76              # double 9.7545409999999997
	.quad	0x4005cf190d173fb8              # double 2.7261220000000002
	.quad	0x40201ec39799e519              # double 8.0600860000000001
	.quad	0x401c76fcdee34fc6              # double 7.1161989999999999
	.quad	0x401170a67620ee8d              # double 4.3600099999999999
	.quad	0x3ff48d413122b7bb              # double 1.284486
	.quad	0x400c39cd8127b2cc              # double 3.5282239999999998
	.quad	0x400ef68cef672b88              # double 3.8703859999999999
	.quad	0x3ff9ff572de43ed9              # double 1.6248389999999999
	.quad	0x40158c8fb86f47b6              # double 5.3872669999999996
	.quad	0x4014857a355043e5              # double 5.1303489999999998
	.quad	0x40029cd8127b2cc7              # double 2.326584
	.quad	0x4002cafee6fb4c3c              # double 2.349119
	.quad	0x400d9fd2630ec311              # double 3.7030379999999998
	.quad	0x401253beec39799e              # double 4.5817829999999997
	.quad	0x4013d1e646f15619              # double 4.9549799999999999
	.quad	0x40112b09a671ef31              # double 4.2920290000000003
	.quad	0x401f62d1287c200c              # double 7.8465009999999999
	.quad	0x400f302b40f66a55              # double 3.89852
	.quad	0x3fec0fc71d606317              # double 0.87692599999999998
	.quad	0x3feb0049667b5f1c              # double 0.843785
	.quad	0x401565b4edb2f662              # double 5.3493230000000001
	.quad	0x4009c2bbecaab8a6              # double 3.2200850000000001
	.quad	0x4019a55eaee2003b              # double 6.4114940000000002
	.quad	0x4017d26809d49518              # double 5.9554749999999999
	.quad	0x3fc4d9c6b0531983              # double 0.16289600000000001
	.quad	0x4021c64e26d4801f              # double 8.8873149999999992
	.quad	0x40213398a65492ff              # double 8.6007739999999995
	.quad	0x400c4e770bd017db              # double 3.538313
	.quad	0x401d9c94b380cb6c              # double 7.4029109999999996
	.quad	0x4001f8c111ada76e              # double 2.2464620000000002
	.quad	0x400f1ce39b456b44              # double 3.889106
	.quad	0x4009e9a0ad8a1166              # double 3.2390759999999998
	.quad	0x401c642edbb59ddc              # double 7.0978349999999999
	.quad	0x4007221d10b1feeb              # double 2.8916569999999999
	.quad	0x401596323bbc6eb1              # double 5.3966760000000003
	.quad	0x401d6fcd67fd3f5b              # double 7.3591819999999997
	.quad	0x3fefb93ee5eedcc2              # double 0.99136299999999999
	.quad	0x400da93faf42784b              # double 3.7076410000000002
	.quad	0x40116e136e71cda3              # double 4.3574960000000003
	.quad	0x3fd1e6a337a80cfa              # double 0.27970200000000001
	.quad	0x4023d36049ecb31c              # double 9.9128439999999997
	.quad	0x4002db4cc2507208              # double 2.3570799999999998
	.quad	0x4020ad104d551d69              # double 8.3380150000000004
	.quad	0x40212a224edf6124              # double 8.5822929999999999
	.quad	0x4023fda9435ac8a3              # double 9.9954319999999992
	.quad	0x40236536f7e3d1cc              # double 9.6976849999999998
	.quad	0x4015f8ff327aa68f              # double 5.4931609999999997
	.quad	0x3fe2db4cc2507208              # double 0.58926999999999996
	.quad	0x3ff02209aaa3ad19              # double 1.00831
	.quad	0x40148ccb7d41743f              # double 5.1374950000000004
	.quad	0x40119fafc8b0079a              # double 4.4059439999999999
	.quad	0x40157657fb69984a              # double 5.36557
	.quad	0x4012118f81e8a2ec              # double 4.5171489999999999
	.quad	0x401d1bad7d7c2ca1              # double 7.2770289999999997
	.quad	0x401274bba12b5e53              # double 4.6139970000000003
	.quad	0x40105b5c39bcba30              # double 4.0892189999999999
	.quad	0x40238c8d9f9053a0              # double 9.7745180000000005
	.quad	0x4022a065b63d3e4f              # double 9.3132760000000001
	.quad	0x40237ce1e71044f2              # double 9.7439110000000007
	.quad	0x40101ea6c1a048e0              # double 4.0299329999999998
	.quad	0x401d829563a9f384              # double 7.3775230000000001
	.quad	0x401ced34df04ddb5              # double 7.2316469999999997
	.quad	0x401fefaacd9e83e4              # double 7.9840499999999999
	.quad	0x40108dc7ef177a70              # double 4.138458
	.quad	0x401f67b6fe2e6ea8              # double 7.8512839999999997
	.quad	0x4011b0956c0d6f54              # double 4.4224449999999997
	.quad	0x4023a8b242070b8d              # double 9.829485
	.quad	0x4015977574f722e2              # double 5.3979090000000003
	.quad	0x401e65c39bcba301              # double 7.5993789999999998
	.quad	0x4015078fabda0dfe              # double 5.2573840000000001
	.quad	0x4002db43d89ce4a8              # double 2.3570630000000001
	.quad	0x40071c68661ae70c              # double 2.888871
	.quad	0x3ff91b1a6d698fe7              # double 1.5691170000000001
	.quad	0x3fea02cf52b90a78              # double 0.81284299999999998
	.quad	0x4001353f7ced9168              # double 2.1509999999999998
	.quad	0x401da9abb01c92de              # double 7.4156940000000002
	.quad	0x401ae692b3cc4ac7              # double 6.7251690000000002
	.quad	0x4000a3cc8de2ac32              # double 2.0799799999999999
	.quad	0x402383a8826aa8eb              # double 9.7571449999999995
	.quad	0x40189dd872f33ca3              # double 6.1541459999999999
	.quad	0x4020da465a57646b              # double 8.4263180000000002
	.quad	0x401cea582dbe7f2c              # double 7.2288519999999998
	.quad	0x40182f7c6759ab6d              # double 6.046373
	.quad	0x40159829cfdd2285              # double 5.3985969999999996
	.quad	0x4020c196fa82e87d              # double 8.3781049999999997
	.quad	0x400525bb7b6bb129              # double 2.643424
	.quad	0x401eccae21101b00              # double 7.6998829999999998
	.quad	0x400f973c0c1fc8f3              # double 3.9488449999999999
	.quad	0x4016e5c67dfe32a0              # double 5.7243899999999996
	.quad	0x3fda7dc37a3db3c0              # double 0.41392600000000002
	.quad	0x401d4b07d0aed99d              # double 7.3232720000000002
	.quad	0x40177c764adff823              # double 5.8715450000000002
	.quad	0x4015ee514c22ee42              # double 5.4827320000000004
	.quad	0x4011e984a0e410b6              # double 4.4780449999999998
	.quad	0x4019898e97071822              # double 6.3843329999999998
	.quad	0x3ff47bf61aa3f035              # double 1.2802640000000001
	.quad	0x401e290b417ca212              # double 7.540082
	.quad	0x401b7e3193f6c26a              # double 6.8732360000000003
	.quad	0x4022b2caff6d3309              # double 9.3492049999999995
	.quad	0x401ae6bc1eff9f88              # double 6.7253270000000001
	.quad	0x40205866c2acb85a              # double 8.1726589999999995
	.quad	0x400adc2224edf612              # double 3.3574869999999999
	.quad	0x401e2a2339c0ebee              # double 7.54115
	.quad	0x3ff79d1d4738a3b5              # double 1.4758579999999999
	.quad	0x4001a56abde3fbbd              # double 2.2057699999999998
	.quad	0x400d13ce63a5c1c6              # double 3.634671
	.quad	0x4010cd5347a5b0ff              # double 4.2005129999999999
	.quad	0x4022650092ccf6be              # double 9.1972699999999996
	.quad	0x4019f1f4b1ee2435              # double 6.4862849999999996
	.quad	0x4023bbb6ed677708              # double 9.8666300000000006
	.quad	0x4021a46ac215b9a6              # double 8.8211270000000006
	.quad	0x4023048f10a99b6f              # double 9.5089039999999993
	.quad	0x4006cd44567125dd              # double 2.850228
	.quad	0x4017d1f080303c08              # double 5.9550190000000001
	.quad	0x4008c9a027525461              # double 3.0984500000000001
	.quad	0x4014b95464dc22ab              # double 5.1809859999999999
	.quad	0x401c7416bdb1a6d7              # double 7.1133680000000004
	.quad	0x401e0ce67d77fae3              # double 7.5125979999999996
	.quad	0x401ab81e03f70585              # double 6.6798019999999996
	.quad	0x4001e8112ba16e7a              # double 2.2383139999999999
	.quad	0x4012767f4dbdf8f4              # double 4.6157199999999996
	.quad	0x400bff9a49c2c1b1              # double 3.499806
	.quad	0x401ebbfa0945f9df              # double 7.6835709999999997
	.quad	0x4014889eba6aca79              # double 5.1334179999999998
	.quad	0x4005a9d30270f388              # double 2.7079219999999999
	.quad	0x4004dfe32a0663c7              # double 2.6093199999999999
	.quad	0x401dcd19dece5711              # double 7.4502940000000004
	.quad	0x401f03675ddd2ae9              # double 7.7533240000000001
	.quad	0x400ed0e8858ff759              # double 3.8520059999999998
	.quad	0x3ff159da9c99285b              # double 1.0844370000000001
	.quad	0x4015ace67d77fae3              # double 5.4188479999999997
	.quad	0x402195fd04a2fcf0              # double 8.7929460000000006
	.quad	0x4004e8b5cbff4773              # double 2.6136279999999998
	.quad	0x401fdbd72bcb5fe5              # double 7.9646879999999997
	.quad	0x4012ddcdf6987831              # double 4.7166059999999996
	.quad	0x3fffffbbd7b2031d              # double 1.999935
	.quad	0x401fbad1d041cc53              # double 7.9324409999999998
	.quad	0x4017a63f9a49c2c2              # double 5.9123520000000003
	.quad	0x4017ea4f8726d04e              # double 5.9788189999999997
	.quad	0x40005a71151611ba              # double 2.0441609999999999
	.quad	0x400d1c9e6687f456              # double 3.6389740000000002
	.quad	0x3fe5f82b1f687b14              # double 0.68654400000000004
	.quad	0x3ffc7b1e18efbb0e              # double 1.7800579999999999
	.quad	0x40223dd18090b418              # double 9.1207390000000004
	.quad	0x401a857cd466f502              # double 6.6303590000000003
	.quad	0x401cd7b677f6b1a3              # double 7.2106570000000003
	.quad	0x4001bc0b13597918              # double 2.216818
	.quad	0x4001c677b395c422              # double 2.221908
	.quad	0x401d50afe60c38f3              # double 7.3287959999999996
	.quad	0x3fe55193708aac97              # double 0.66620800000000002
	.quad	0x40236d55e6bc621b              # double 9.7135459999999991
	.quad	0x4004a61f18c9fb61              # double 2.5811139999999999
	.quad	0x4021802be8bc169c              # double 8.7503349999999997
	.quad	0x3ff03fd60e94ee39              # double 1.015585
	.quad	0x3ff05be1a8262457              # double 1.022432
	.quad	0x40234e8e3ef28416              # double 9.6534289999999991
	.quad	0x401f9a9478c868ba              # double 7.900957
	.quad	0x4017753eb399f5e0              # double 5.8644970000000001
	.quad	0x3ffed7e45803cd14              # double 1.927708
	.quad	0x401c7187a4a48f97              # double 7.1108690000000001
	.quad	0x3f93a860dcb9a9da              # double 0.019196999999999999
	.quad	0x40028b2745bf26f2              # double 2.3179460000000001
	.quad	0x40211d3eb399f5e0              # double 8.5571190000000001
	.quad	0x4016283b60285ec4              # double 5.5392890000000001
	.quad	0x4005ab1d4f9c1f86              # double 2.7085520000000001
	.quad	0x4011ea5ce5b4245f              # double 4.4788699999999997
	.quad	0x40117ee06d938152              # double 4.3739030000000003
	.quad	0x402198ef566490a3              # double 8.7987009999999994
	.quad	0x401b9bf0563ed0f6              # double 6.9022839999999999
	.quad	0x3ff93540895d0b74              # double 1.575501
	.quad	0x3ffae1ab4b72c519              # double 1.6800949999999999
	.quad	0x4015dd8127b2cc71              # double 5.4663130000000004
	.quad	0x4019060b2c83ec89              # double 6.2559019999999999
	.quad	0x401145faa8a82a56              # double 4.3183389999999999
	.quad	0x4022ef18a86d71f3              # double 9.4669849999999993
	.quad	0x400e969b17481b22              # double 3.8235380000000001
	.quad	0x3fe034d26fa3fcca              # double 0.50644800000000001
	.quad	0x40103f861a60d456              # double 4.0620349999999998
	.quad	0x3fede94ab1d4f9c2              # double 0.934728
	.quad	0x3fff1d0c80410300              # double 1.9445920000000001
	.quad	0x401758815e39713b              # double 5.8364310000000001
	.quad	0x401ac7b5f1bef49d              # double 6.69503
	.quad	0x4001511be6e65387              # double 2.1646040000000002
	.quad	0x3fda3bafd976ff3b              # double 0.40989300000000001
	.quad	0x40235c117f84449e              # double 9.6798210000000005
	.quad	0x3ffe8940bbb1f256              # double 1.908509
	.quad	0x4012c1d53cddd6e0              # double 4.6892899999999997
	.quad	0x401a244a6223e187              # double 6.5354400000000004
	.quad	0x3fd7b36bd2b6f199              # double 0.37032599999999999
	.quad	0x40232c115df6555c              # double 9.5860699999999994
	.quad	0x401fa74794ea0770              # double 7.9133589999999998
	.quad	0x4015e64c2f837b4a              # double 5.4748999999999999
	.quad	0x401d639799e518f4              # double 7.3472580000000001
	.quad	0x401f138ac18f81e9              # double 7.7690840000000003
	.quad	0x4023a723465625a7              # double 9.8264410000000008
	.quad	0x4012f5b4aa9717df              # double 4.7399469999999999
	.quad	0x4019693e5fb71fbc              # double 6.3527769999999997
	.quad	0x4017671971c10d7c              # double 5.8506830000000001
	.quad	0x400ebd8622c45027              # double 3.8425410000000002
	.quad	0x4010731a08bfc222              # double 4.1124039999999997
	.quad	0x4021a5dfa871a3b1              # double 8.8239719999999995
	.quad	0x402308b11409a240              # double 9.5169759999999996
	.quad	0x4003ac3547e06962              # double 2.4590860000000001
	.quad	0x40235077036c9c0b              # double 9.6571580000000007
	.quad	0x401a599780baa583              # double 6.5874920000000001
	.quad	0x4022b1144cbe1eb4              # double 9.3458579999999997
	.quad	0x4023a25df2239e6b              # double 9.8171230000000004
	.quad	0x402035349be8ff32              # double 8.1039169999999991
	.quad	0x3ffa9309c7ffde72              # double 1.660898
	.quad	0x3ff97e2c55c96031              # double 1.5933040000000001
	.quad	0x3fddd2f1a9fbe76d              # double 0.46600000000000003
	.quad	0x401b2a2cecc814d7              # double 6.7911869999999999
	.quad	0x3ff190c1b97353b5              # double 1.0978410000000001
	.quad	0x400097baecd07853              # double 2.074087
	.quad	0x3fed4acd184c2720              # double 0.915381
	.quad	0x40194fd86a8fc0d3              # double 6.3279740000000002
	.quad	0x4000d9c9d5a187a5              # double 2.1063420000000002
	.quad	0x4004c2acb85a4f01              # double 2.595056
	.quad	0x3ff0a31832fcac8e              # double 1.0398179999999999
	.quad	0x40156a2fcefaa476              # double 5.3536979999999996
	.quad	0x4011889c5e6ff7e0              # double 4.3834090000000003
	.quad	0x4004f54eb13dfb0d              # double 2.6197789999999999
	.quad	0x4020f9d8622c4502              # double 8.4879789999999993
	.quad	0x3feb2a53fc0096ff              # double 0.84891700000000003
	.quad	0x3ff3e999567dbb17              # double 1.2445310000000001
	.quad	0x401201ebc83a96d5              # double 4.5018760000000002
	.quad	0x40124efed634549b              # double 4.5771439999999997
	.quad	0x401b7f30e7ff583a              # double 6.8742099999999997
	.quad	0x4023d04e831ad213              # double 9.9068489999999993
	.quad	0x3fd5065f9591cd1c              # double 0.32851399999999997
	.quad	0x4020e78b7a1c25d0              # double 8.4522359999999992
	.quad	0x3ff0bacc4ef88b97              # double 1.0456049999999999
	.quad	0x4021b10e02214270              # double 8.8458100000000002
	.quad	0x4016922ea0fd3b2a              # double 5.6427560000000003
	.quad	0x40101a36199780bb              # double 4.0255970000000003
	.quad	0x4002dd3f5b5fa227              # double 2.358031
	.quad	0x401e3eaee2003ab8              # double 7.5612139999999996
	.quad	0x4006972de43ed95a              # double 2.8238180000000002
	.quad	0x400e182a12f90108              # double 3.7617989999999999
	.quad	0x4007178ee2867275              # double 2.8865029999999998
	.quad	0x4016c698bb4d4888              # double 5.6939419999999998
	.quad	0x3ff80e7bc3c5bd0e              # double 1.503536
	.quad	0x40152d9a95421c04              # double 5.2945349999999998
	.quad	0x3fea6f416bdb1a6d              # double 0.82608099999999995
	.quad	0x401ef47d805e5f31              # double 7.73876
	.quad	0x4001f2b7fe08aefb              # double 2.2435149999999999
	.quad	0x4008a1cd5f99c38b              # double 3.079005
	.quad	0x3fe6d130df9bdc6a              # double 0.713036
	.quad	0x401109c27e953155              # double 4.259531
	.quad	0x401a2e5f30e7ff58              # double 6.5452849999999998
	.quad	0x400629ff92f2b66b              # double 2.7705069999999998
	.quad	0x3fe2da37ef5a964f              # double 0.58913800000000005
	.quad	0x402357525460aa65              # double 9.6705500000000004
	.quad	0x401cd97e132b55ef              # double 7.2123949999999999
	.quad	0x3ffa99567dbb16c2              # double 1.662436
	.quad	0x400bdd1351159c49              # double 3.4829469999999998
	.quad	0x4021d1c5e6ff7dfa              # double 8.909713
	.quad	0x4013a760bf5d7881              # double 4.9134549999999999
	.quad	0x3ff8e699c7bcc294              # double 1.5562990000000001
	.quad	0x401f2b2b3461309c              # double 7.7921569999999996
	.quad	0x3ffae379b77c02b0              # double 1.680536
	.quad	0x3ffad7c2ca148ba8              # double 1.6776759999999999
	.quad	0x4023e081c2e33eff              # double 9.9384899999999998
	.quad	0x401427075b3e1438              # double 5.0381140000000002
	.quad	0x4013eae7d566cf42              # double 4.9794
	.quad	0x3ff2fb634dad31fd              # double 1.186374
	.quad	0x40156ba7b9170d63              # double 5.3551320000000002
	.quad	0x4010622ee41919ac              # double 4.0958819999999996
	.quad	0x400524567125dd09              # double 2.6427429999999998
	.quad	0x4015e7318fc50481              # double 5.4757749999999996
	.quad	0x401cd836a832b991              # double 7.2111460000000003
	.quad	0x40221664f54d1e97              # double 9.0437390000000004
	.quad	0x40110b4d48882f0e              # double 4.261037
	.quad	0x4011bfe36d22424a              # double 4.4373909999999999
	.quad	0x4017ad2999567dbb              # double 5.9191039999999999
	.quad	0x3fcb1476af89c5e7              # double 0.211562
	.quad	0x4010ec197e564734              # double 4.2305659999999996
	.quad	0x401d778d92fb19e7              # double 7.3667509999999998
	.quad	0x400bb3daf8df7a4e              # double 3.4628199999999998
	.quad	0x40209bb85e80bed7              # double 8.3041409999999996
	.quad	0x401752467be553ac              # double 5.8303469999999997
	.quad	0x400d8d7e02645e4e              # double 3.6940879999999998
	.quad	0x4015ba415f45e0b5              # double 5.4318900000000001
	.quad	0x3ff189a027525461              # double 1.0961000000000001
	.quad	0x3ff61d4c76d117b5              # double 1.382153
	.quad	0x400fb0164840e172              # double 3.9609800000000002
	.quad	0x4020fd4b05b7cfe6              # double 8.4947130000000008
	.quad	0x400c472da122fad7              # double 3.5347550000000001
	.quad	0x3fec3f811f4f50a0              # double 0.88275199999999998
	.quad	0x4020d7c43b2dd378              # double 8.4214190000000002
	.quad	0x40220ff822bbecab              # double 9.0311900000000005
	.quad	0x401c90370cdc8755              # double 7.140835
	.quad	0x400f8b2bfdb4cc25              # double 3.942955
	.quad	0x400505269595feda              # double 2.6275149999999998
	.quad	0x4016a23c85c24c40              # double 5.6584339999999997
	.quad	0x40101becaab8a5ce              # double 4.0272699999999997
	.quad	0x3ff4403eea209aaa              # double 1.2656849999999999
	.quad	0x4003c557de0d66f1              # double 2.4713590000000001
	.quad	0x40122d96a6a0125a              # double 4.5445200000000003
	.quad	0x40196da09cc319c6              # double 6.3570580000000003
	.quad	0x4015b34373f316e3              # double 5.4250619999999996
	.quad	0x40201257214f0521              # double 8.0358210000000003
	.quad	0x400ef806f262888b              # double 3.8711069999999999
	.quad	0x401e469fcf3dc055              # double 7.568969
	.quad	0x400bdbbd7b2031cf              # double 3.4822950000000001
	.quad	0x400d230e3cd9a522              # double 3.6421169999999998
	.quad	0x4022a8c5c9a34ca1              # double 9.3296340000000004
	.quad	0x4016ba08398a6549              # double 5.6816719999999998
	.quad	0x4019db827fa1a0cf              # double 6.4643649999999999
	.quad	0x401f6f62f9ca5bd9              # double 7.8587759999999997
	.quad	0x402212962cfd8f0c              # double 9.0363019999999991
	.quad	0x40213cef88b97785              # double 8.6190149999999992
	.quad	0x4007ff676ea4228a              # double 2.9997090000000002
	.quad	0x401f76b873797460              # double 7.8659379999999999
	.quad	0x4001933daf8df7a5              # double 2.196895
	.quad	0x40236b29c347e8cd              # double 9.7093030000000002
	.quad	0x3fc6f922962cfd8f              # double 0.179478
	.quad	0x40205c0181e03f70              # double 8.1796989999999994
	.quad	0x401f4a1b1960fa16              # double 7.8223690000000001
	.quad	0x4009e0c8cd63cb81              # double 3.2347579999999998
	.quad	0x401f82c1b10fd7e4              # double 7.8776919999999997
	.quad	0x3fefb3482be8bc17              # double 0.99063500000000004
	.quad	0x40127ab324851a87              # double 4.6198240000000004
	.quad	0x401101abd1aa821f              # double 4.2516319999999999
	.quad	0x401f7ceaf251c194              # double 7.8719900000000003
	.quad	0x4004fb6ed677707a              # double 2.62277
	.quad	0x401fe32d2bb23572              # double 7.9718520000000002
	.quad	0x402176154434e337              # double 8.7306310000000007
	.quad	0x3faf284167a95c85              # double 0.060853999999999998
	.quad	0x4015e2f837b4a234              # double 5.4716500000000003
	.quad	0x4022957060bb2bbb              # double 9.2918730000000007
	.quad	0x4015500f776c4828              # double 5.3281840000000003
	.quad	0x401fb76ee73e681b              # double 7.9291340000000003
	.quad	0x4015864628027d89              # double 5.3811270000000002
	.quad	0x4011fc5cdd50a88f              # double 4.496448
	.quad	0x3fc15807fed20297              # double 0.13549900000000001
	.quad	0x40122f5ec80c73ac              # double 4.5462600000000002
	.quad	0x401b3a6fc58ab92c              # double 6.807067
	.quad	0x4012670867ad8e43              # double 4.6006179999999999
	.quad	0x40225577318fc505              # double 9.1669250000000009
	.quad	0x401456683c297bfa              # double 5.0843819999999997
	.quad	0x4022e368ad688377              # double 9.4441579999999998
	.quad	0x400d1a5e353f7cee              # double 3.6378750000000002
	.quad	0x401b40f9096bb98c              # double 6.8134499999999996
	.quad	0x40231ec1c1d6cf85              # double 9.5600719999999999
	.quad	0x401c7c87db2b3461              # double 7.1216119999999998
	.quad	0x400034ec204f2ae0              # double 2.0258409999999998
	.quad	0x3ffd4a0c282c6ef4              # double 1.830578
	.quad	0x4017aa8b8f14db59              # double 5.9165479999999997
	.quad	0x401d2b4fa48301a8              # double 7.2922960000000003
	.quad	0x4001fcbff47735c2              # double 2.2484130000000002
	.quad	0x3ffea8a936c58eeb              # double 1.916177
	.quad	0x401a0950763a1901              # double 6.5090960000000004
	.quad	0x40237af05a708ede              # double 9.7401149999999994
	.quad	0x4012083d790752db              # double 4.5080470000000004
	.quad	0x401a7e39b456b442              # double 6.6232670000000002
	.quad	0x3fc0c3a860dcb9aa              # double 0.130971
	.quad	0x4022213f6c2699c8              # double 9.0649370000000005
	.quad	0x3fe979767903211d              # double 0.79607700000000003
	.quad	0x3fc5adb8348f53c5              # double 0.16936399999999999
	.quad	0x400bf69c23b7952d              # double 3.4954149999999999
	.quad	0x40218496aad1d042              # double 8.7589620000000004
	.quad	0x4021f6540cc78e9f              # double 8.9811099999999993
	.quad	0x4011cb9170d62bf1              # double 4.4487969999999999
	.quad	0x401d9f9c1f85d745              # double 7.405869
	.quad	0x401a894c01605250              # double 6.6340789999999998
	.quad	0x40201d7a13c254a4              # double 8.0575720000000004
	.quad	0x401d7e425aee6320              # double 7.3733000000000004
	.quad	0x40154e35c5b4aa97              # double 5.3263769999999999
	.quad	0x40205f3387160957              # double 8.1859400000000004
	.quad	0x401a0d87f88765ba              # double 6.5132139999999996
	.quad	0x3fdf2c669057d178              # double 0.48708499999999999
	.quad	0x401a97531db445ed              # double 6.6477779999999997
	.quad	0x40080a71de69ad43              # double 3.0051000000000001
	.quad	0x4009b0cdc8754f37              # double 3.2113299999999998
	.quad	0x4012835610adcd2d              # double 4.6282579999999998
	.quad	0x4014f1b691212514              # double 5.2360480000000003
	.quad	0x40239e874c8ffb8b              # double 9.8096259999999997
	.quad	0x402386ff1950331e              # double 9.7636649999999996
	.quad	0x40133e2435696e59              # double 4.8106850000000003
	.quad	0x402355accd53048a              # double 9.6673340000000003
	.quad	0x401e5b2788db0575              # double 7.5890180000000002
	.quad	0x4023472de43ed95a              # double 9.6390220000000006
	.quad	0x40158ae81882adc5              # double 5.3856510000000002
	.quad	0x3fe870c996b7670a              # double 0.763768
	.quad	0x402331f8e3ac0c63              # double 9.5976020000000001
	.quad	0x400f5248d7e02646              # double 3.915178
	.quad	0x401eb0f51ac9afe2              # double 7.6728100000000001
	.quad	0x4023afb30f8c64fe              # double 9.8431630000000006
	.quad	0x3fc8c2b51bd61f5c              # double 0.193442
	.quad	0x3ffc40c8472c0e7c              # double 1.7658160000000001
	.quad	0x4002674213a0c6b5              # double 2.3004190000000002
	.quad	0x4012116052502eec              # double 4.5169689999999996
	.quad	0x40171f312b1b36bd              # double 5.7804609999999998
	.quad	0x401c980e06530058              # double 7.1484909999999999
	.quad	0x400d3b4245f5ad97              # double 3.6539350000000002
	.quad	0x3ff191dbca9691a7              # double 1.0981099999999999
	.quad	0x401c976577531db4              # double 7.1478479999999998
	.quad	0x4010fccc03793144              # double 4.2468719999999998
	.quad	0x4017c8e581cf7879              # double 5.9461880000000003
	.quad	0x4016641e9af5ba2c              # double 5.5977730000000001
	.quad	0x401e04d1a6506141              # double 7.5047059999999996
	.quad	0x40097c8b86b15f89              # double 3.185813
	.quad	0x40037d35653c9abb              # double 2.436137
	.quad	0x4019eab649d388a9              # double 6.4792110000000003
	.quad	0x4011ae05ccc89b0f              # double 4.4199440000000001
	.quad	0x4014f9da597d49d8              # double 5.2439970000000002
	.quad	0x40185093964a59c0              # double 6.0786879999999996
	.quad	0x4007ccc575c0767d              # double 2.9749859999999999
	.quad	0x40038d794a6eb91b              # double 2.4440789999999999
	.quad	0x401a56fc58ab92c0              # double 6.5849469999999997
	.quad	0x4020506b15f88fc9              # double 8.1570669999999996
	.quad	0x4021eab81f969e3d              # double 8.9584360000000007
	.quad	0x400164ead0c3d252              # double 2.1742759999999999
	.quad	0x401f72b90a782907              # double 7.8620340000000004
	.quad	0x3ffe52bd3c361134              # double 1.8952
	.quad	0x4009ed2a1f8e3ac1              # double 3.2408030000000001
	.quad	0x3fe798a222d5171e              # double 0.73738199999999998
	.quad	0x400351bd61f5be5e              # double 2.4149120000000002
	.quad	0x400fb2a7bd48cb4b              # double 3.962234
	.quad	0x40196b7739f340d5              # double 6.3549470000000001
	.quad	0x400579e7b80a9de9              # double 2.6845240000000001
	.quad	0x4013438b8ae31d71              # double 4.8159619999999999
	.quad	0x4001f3d102bc72e2              # double 2.2440509999999998
	.quad	0x40208d48ecd8dbcf              # double 8.2759470000000004
	.quad	0x4023feb441bb8c33              # double 9.9974690000000006
	.quad	0x400a888f861a60d4              # double 3.3166799999999999
	.quad	0x400fd1a9fbe76c8b              # double 3.9773749999999999
	.quad	0x4004f89d6adf71eb              # double 2.621394
	.quad	0x4015edfd2630ec31              # double 5.4824109999999999
	.quad	0x4012443f5f91600f              # double 4.5666479999999998
	.quad	0x40188d05af6c69b6              # double 6.1377170000000003
	.quad	0x3fc5533f42352eb6              # double 0.166603
	.quad	0x3ff5f603925bb7b7              # double 1.3725620000000001
	.quad	0x40132afb7e90ff97              # double 4.7919749999999999
	.quad	0x4012d5e84f09528f              # double 4.7088939999999999
	.quad	0x40163fd933e35c5b              # double 5.5623519999999997
	.quad	0x401f24d013a92a30              # double 7.7859499999999997
	.quad	0x40130ecb31c219eb              # double 4.7644469999999997
	.quad	0x40230222f6a50d6b              # double 9.5041729999999997
	.quad	0x401b5c74b838c112              # double 6.8402890000000003
	.quad	0x4004bd71b0468449              # double 2.5925020000000001
	.quad	0x401b1bdc26dce39b              # double 6.7772069999999998
	.quad	0x400afff1d81f1066              # double 3.3749729999999998
	.quad	0x401cb2495e17e34c              # double 7.1741080000000004
	.quad	0x401b85f3519bd406              # double 6.8808109999999996
	.quad	0x3fd71e57d9dba909              # double 0.36122700000000002
	.quad	0x3ff500d6f544bb1b              # double 1.312705
	.quad	0x3fdf515ce9e5e248              # double 0.48934100000000003
	.quad	0x40044a1511dffc54              # double 2.5361729999999998
	.quad	0x4002ba237cdcca71              # double 2.3408880000000001
	.quad	0x40138550870110a1              # double 4.8801899999999998
	.quad	0x4023c89dcf893faf              # double 9.8918289999999995
	.quad	0x40153539b888722a              # double 5.3019780000000001
	.quad	0x40022b7c3504c48b              # double 2.2712330000000001
	.quad	0x401781947cfa26a2              # double 5.8765429999999999
	.quad	0x3fd0b13dfb0d51f8              # double 0.26081799999999999
	.quad	0x40201da1016ce78a              # double 8.0578690000000002
	.quad	0x3ffa29835158b828              # double 1.635135
	.quad	0x3fd02474538ef34d              # double 0.25222499999999998
	.quad	0x3ff205308bb90646              # double 1.1262669999999999
	.quad	0x3ff165e02ea960b7              # double 1.087372
	.quad	0x3fe11704ff43419e              # double 0.53405999999999998
	.quad	0x400bc2a5e785b5b7              # double 3.470043
	.quad	0x402369fcb0c026cc              # double 9.7070059999999998
	.quad	0x401dd2089e34330d              # double 7.4551109999999996
	.quad	0x40183cf893faf428              # double 6.0595420000000004
	.quad	0x40025d2a62aa1944              # double 2.2954910000000002
	.quad	0x4020d4e2b063e07a              # double 8.4157919999999997
	.quad	0x40239ea24cc68230              # double 9.8098320000000001
	.quad	0x400f8660a2014728              # double 3.9406140000000001
	.quad	0x402216ca686e7e63              # double 9.0445130000000002
	.quad	0x4015a90ea9e6eeb7              # double 5.415095
	.quad	0x401c5c0a8d21bc12              # double 7.0898839999999996
	.quad	0x402379e6eeb70260              # double 9.7380899999999997
	.quad	0x4012f35696e58a33              # double 4.737635
	.quad	0x3ff3b677f6b1a2a5              # double 1.232048
	.quad	0x40190db7ae5796c0              # double 6.2633960000000002
	.quad	0x401d39ea14057082              # double 7.3065569999999997
	.quad	0x4015102795703f2d              # double 5.2657759999999998
	.quad	0x400d9d028a1dfb94              # double 3.7016650000000002
	.quad	0x4012e32a8c9b8455              # double 4.7218419999999997
	.quad	0x4006a9c560c7c0f4              # double 2.8328959999999999
	.quad	0x4004d42917507e9e              # double 2.6035940000000002
	.quad	0x3ffbff83382e44b7              # double 1.749881
	.quad	0x400a0a4db163baba              # double 3.2550309999999998
	.quad	0x401f536a832b990b              # double 7.831461
	.quad	0x401682f512663411              # double 5.6278879999999996
	.quad	0x40184e0589acbc8c              # double 6.076193
	.quad	0x400cab3dd11be6e6              # double 3.5836139999999999
	.quad	0x3fe64d8ba40d90e2              # double 0.69696599999999997
	.quad	0x401c7226c3b927d4              # double 7.1114759999999997
	.quad	0x4021004cf0739b02              # double 8.5005869999999994
	.quad	0x401e8ea960b6f9fd              # double 7.6393180000000002
	.quad	0x400e3c7607c419a0              # double 3.779522
	.quad	0x4016c4bcf0b6b6e1              # double 5.6921270000000002
	.quad	0x3ff1909bf9c62a1b              # double 1.0978049999999999
	.quad	0x4008f741d084e832              # double 3.1207310000000001
	.quad	0x4022da26e5471716              # double 9.4260780000000004
	.quad	0x3ffac98c3b0c4589              # double 1.6742060000000001
	.quad	0x3ff008b652370479              # double 1.002127
	.quad	0x400557a67a52ac75              # double 2.6677979999999999
	.quad	0x4022c7fe2a3cea6c              # double 9.3906109999999998
	.quad	0x40133e5082cf52b9              # double 4.810854
	.quad	0x401cafb3743632c2              # double 7.171583
	.quad	0x4012eaef2c732592              # double 4.7294280000000004
	.quad	0x3ff2abd5dc400757              # double 1.166952
	.quad	0x4011f883ba3443d4              # double 4.4926899999999996
	.quad	0x401451ceaf251c19              # double 5.0798899999999998
	.quad	0x3ffa302602c9081c              # double 1.636755
	.quad	0x3ffbfc536d655e29              # double 1.7491030000000001
	.quad	0x3fdc55b035bd512f              # double 0.44273000000000001
	.quad	0x40199c73eee52589              # double 6.4027859999999999
	.quad	0x401258e29f9ce8d9              # double 4.5868019999999996
	.quad	0x400b5894812be48a              # double 3.4182519999999998
	.quad	0x400985375c8d9f90              # double 3.1900469999999999
	.quad	0x40154fbefd00713f              # double 5.327877
	.quad	0x3fe5e4755ffe6d59              # double 0.68413800000000002
	.quad	0x400005d3996fa82f              # double 2.0028450000000002
	.quad	0x40200421e1d2178f              # double 8.0080709999999993
	.quad	0x401e10ec31162281              # double 7.5165259999999998
	.quad	0x40095cad14a0a0f5              # double 3.1702520000000001
	.quad	0x401492f76e6106ab              # double 5.1435219999999999
	.quad	0x40211834b0e1b4bb              # double 8.5472769999999993
	.quad	0x4022f9ed7c6fbd27              # double 9.4881399999999995
	.quad	0x401430221426fe72              # double 5.0470050000000004
	.quad	0x4012236694898f60              # double 4.5345709999999997
	.quad	0x4014ebbb1f255f35              # double 5.2302059999999999
	.quad	0x4022bb139c94f69d              # double 9.3653840000000005
	.quad	0x3fd22441fea8112c              # double 0.28346300000000002
	.quad	0x3ff93213e3e29308              # double 1.5747260000000001
	.quad	0x4008843cc07aaef3              # double 3.0645690000000001
	.quad	0x401b9fd3b29a1ba0              # double 6.9060810000000004
	.quad	0x40105db7ae5796c0              # double 4.0915210000000002
	.quad	0x40126838c111ada7              # double 4.6017789999999996
	.quad	0x3ff6cda9003eea21              # double 1.4252100000000001
	.quad	0x400e6b81733226c4              # double 3.8024930000000001
	.quad	0x3fed6fc58ab92c06              # double 0.91989399999999999
	.quad	0x3ffe5fb9389b5200              # double 1.8983699999999999
	.quad	0x3fffe1b7e0ac7da2              # double 1.992607
	.quad	0x4020368a71de69ad              # double 8.1065249999999995
	.quad	0x4012ce02645e4e6a              # double 4.7011810000000001
	.quad	0x40235f14db59578a              # double 9.6857059999999997
	.quad	0x402212f6e82949a5              # double 9.0370399999999993
	.quad	0x401dbc4ac6cdaf4b              # double 7.4338790000000001
	.quad	0x400dafd21ff2e48f              # double 3.7108500000000002
	.quad	0x3fd4305532617c1c              # double 0.31545000000000001
	.quad	0x401e6a39c51dabe2              # double 7.6037359999999996
	.quad	0x40074f1348b22079              # double 2.913611
	.quad	0x40044c9afe1da7b1              # double 2.5374050000000001
	.quad	0x40165a2cecc814d7              # double 5.5880619999999999
	.quad	0x40171b25f633ce64              # double 5.7765120000000003
	.quad	0x3fdaf27fe4bcad9b              # double 0.42105100000000001
	.quad	0x402083c89f40a287              # double 8.2573899999999991
	.quad	0x401ecdf505d0fa59              # double 7.70113
	.quad	0x3ff3949c6f36ef80              # double 1.2237819999999999
	.quad	0x4009b0a67620ee8d              # double 3.211255
	.quad	0x40177b3c3e74afd5              # double 5.8703469999999998
	.quad	0x3fe5f9f666234a88              # double 0.68676300000000001
	.quad	0x401935b7cfe58601              # double 6.3024589999999998
	.quad	0x4005ccdc8754f377              # double 2.7250299999999998
	.quad	0x4021afaf640639d6              # double 8.8431350000000002
	.quad	0x40095f4dbdf8f473              # double 3.171535
	.quad	0x4007f0c4dec1c1d7              # double 2.9925630000000001
	.quad	0x3fc7c7368ad68837              # double 0.18576699999999999
	.quad	0x40237afe82517e78              # double 9.7402230000000002
	.quad	0x40160135daad6020              # double 5.501182
	.quad	0x40034cd9e83e425b              # double 2.412525
	.quad	0x401342ce4649906d              # double 4.8152400000000002
	.quad	0x401136cc5fbf8338              # double 4.3035139999999998
	.quad	0x40184d10f51ac9b0              # double 6.0752600000000001
	.quad	0x40019c63ae2541d9              # double 2.201362
	.quad	0x3ffd9d6e04c05921              # double 1.850935
	.quad	0x401a8e9b7bf1e8e6              # double 6.639265
	.quad	0x4021c584b1ab0857              # double 8.8857780000000002
	.quad	0x401915f88fc9363f              # double 6.2714559999999997
	.quad	0x3fff13ff25e56cd7              # double 1.9423820000000001
	.quad	0x401f292c061847f5              # double 7.7902069999999996
	.quad	0x3ff57b2bba98eda2              # double 1.342571
	.quad	0x401f6cf80dc33722              # double 7.8564150000000001
	.quad	0x3fe4ea6e32e3821b              # double 0.653617
	.quad	0x4007c4dec1c1d6d0              # double 2.9711280000000002
	.quad	0x4017d2120e1f7d74              # double 5.9551470000000002
	.quad	0x40057b36bd2b6f1a              # double 2.6851630000000002
	.quad	0x3ff99c896dd26b72              # double 1.6007169999999999
	.quad	0x400c5b9841aac53b              # double 3.544724
	.quad	0x401d3bf5d78811b2              # double 7.3085550000000001
	.quad	0x40144324851a8694              # double 5.065569
	.quad	0x4005d8b60f1b25f6              # double 2.7308159999999999
	.quad	0x4021b446950fc71d              # double 8.8521009999999993
	.quad	0x401d54241c3efae8              # double 7.3321690000000003
	.quad	0x401e3c6fbd273d5c              # double 7.5590200000000003
	.quad	0x3fe5533b10774688              # double 0.66640999999999995
	.quad	0x40128f8f4730403a              # double 4.6401950000000003
	.quad	0x401248ba40d90e24              # double 4.5710230000000003
	.quad	0x401f6518b0d0edc4              # double 7.8487270000000002
	.quad	0x4011bf2a9d627bf6              # double 4.4366859999999999
	.quad	0x400e9bca9691a75d              # double 3.8260700000000001
	.quad	0x3fc780baa582dbe8              # double 0.183616
	.quad	0x401030d38cda6e76              # double 4.047682
	.quad	0x4022a7bb9496249a              # double 9.3276029999999999
	.quad	0x401e286c226809d5              # double 7.5394750000000003
	.quad	0x3ff4426dce39b457              # double 1.2662180000000001
	.quad	0x3ff5dce9e5e24788              # double 1.3664339999999999
	.quad	0x4021e5b70691ea79              # double 8.9486620000000006
	.quad	0x40203eae9ee45c36              # double 8.1224260000000008
	.quad	0x3fccc8b439581062              # double 0.22487499999999999
	.quad	0x4016058d1526d8b2              # double 5.5054210000000001
	.quad	0x401d70b73d188f43              # double 7.360074
	.quad	0x40201fa41e57d9dc              # double 8.0617990000000006
	.quad	0x3ff73239a38fbca1              # double 1.449762
	.quad	0x4023bf88fc9363f5              # double 9.8740919999999992
	.quad	0x40047a3c21187e7c              # double 2.559685
	.quad	0x3febd2bd3c361134              # double 0.86947499999999999
	.quad	0x40231fca42aed139              # double 9.5620899999999995
	.quad	0x3fe2fc6fbd273d5c              # double 0.59331500000000004
	.quad	0x401d7ca1cef240fb              # double 7.3717110000000003
	.quad	0x4022c9897a67a52b              # double 9.3936270000000003
	.quad	0x40161f6273929ed4              # double 5.5306490000000004
	.quad	0x401d8d6fda836eb5              # double 7.3881220000000001
	.quad	0x401defd50225742e              # double 7.4842110000000002
	.quad	0x4020c39ffd60e94f              # double 8.3820800000000002
	.quad	0x40238d23d4f15e7d              # double 9.7756640000000007
	.quad	0x40110d141a6937d2              # double 4.262772
	.quad	0x4022d8c2c5e2cdc0              # double 9.4233609999999998
	.quad	0x40118cdd0d8cb07d              # double 4.387562
	.quad	0x401acf4ba51a005c              # double 6.7024369999999998
	.quad	0x3ffc70079a2834d2              # double 1.7773509999999999
	.quad	0x4021f922749f0e4e              # double 8.9865910000000007
	.quad	0x40166efc7a398202              # double 5.6083850000000002
	.quad	0x3fefbca7503b81b6              # double 0.99177899999999997
	.quad	0x402388192a737111              # double 9.7658170000000001
	.quad	0x4022f29ac36544fe              # double 9.4738369999999996
	.quad	0x401debc3c5bd0e13              # double 7.4802390000000001
	.quad	0x40158b48909289db              # double 5.3860190000000001
	.quad	0x401b6a350d2806af              # double 6.8537179999999998
	.quad	0x401946049ecb31c2              # double 6.3183769999999999
	.quad	0x4014cd99cbee807c              # double 5.2007820000000002
	.quad	0x401daeb074a771c9              # double 7.4205949999999996
	.quad	0x401f9f0a5efe9318              # double 7.9053129999999995
	.quad	0x4023c7caa7589efe              # double 9.8902180000000008
	.quad	0x3ffcfe74afd54541              # double 1.8121229999999999
	.quad	0x401146a550870111              # double 4.3189900000000003
	.quad	0x4002727136a400fc              # double 2.3058800000000002
	.quad	0x401bb2f5989df117              # double 6.9247649999999998
	.quad	0x40229fa5d28d002e              # double 9.3118119999999998
	.quad	0x401be1d4738a3b58              # double 6.9705370000000002
	.quad	0x3fdaabe6a337a80d              # double 0.416742
	.quad	0x400037eaa2a0a958              # double 2.0273029999999999
	.quad	0x401a20bdcad14a0a              # double 6.5319739999999999
	.quad	0x4021d4bff47735c2              # double 8.9155270000000009
	.quad	0x4017450507a6bd6f              # double 5.8174020000000004
	.quad	0x400288216c61522a              # double 2.3164699999999998
	.quad	0x401a90c282c6ef3d              # double 6.6413669999999998
	.quad	0x4020d310dbf0563f              # double 8.4122380000000003
	.quad	0x40208eb3bb83cf2d              # double 8.278715
	.quad	0x401abfc9bc771434              # double 6.6872930000000004
	.quad	0x4009db6672fba01f              # double 3.232129
	.quad	0x40237c2d05f28848              # double 9.7425309999999996
	.quad	0x3fffc56c508b32cf              # double 1.9856990000000001
	.quad	0x400baadf71eafee7              # double 3.458434
	.quad	0x4020e54690de0935              # double 8.4478039999999996
	.quad	0x3ff573929ed3953e              # double 1.340716
	.quad	0x401186bce8533b10              # double 4.3815799999999996
	.quad	0x40212fb4a2339c0f              # double 8.5931750000000005
	.quad	0x4006d486f049a997              # double 2.8537729999999999
	.quad	0x3ff9b947496aad1d              # double 1.607734
	.quad	0x400ce62aa19439de              # double 3.6123859999999999
	.quad	0x402129f94855da27              # double 8.5819799999999997
	.quad	0x400c803686a4ca4f              # double 3.5626039999999999
	.quad	0x3ff09a9a8049667b              # double 1.0377449999999999
	.quad	0x401b2250f840181e              # double 6.783512
	.quad	0x400c1ac36544fe37              # double 3.5130680000000001
	.quad	0x40195f7e3d1cc101              # double 6.3432550000000001
	.quad	0x401e5a6c1a048e04              # double 7.5883029999999998
	.quad	0x3ff56096787ce960              # double 1.3360810000000001
	.quad	0x401edfeef5ec80c7              # double 7.7186849999999997
	.quad	0x3ff13a7008a697af              # double 1.076767
	.quad	0x40224523d4f15e7d              # double 9.1350390000000008
	.quad	0x3ffd6a5a469d7343              # double 1.838465
	.quad	0x4023b03a322af577              # double 9.8441939999999998
	.quad	0x40196c2f405f6ba0              # double 6.3556489999999997
	.quad	0x401a3cdaf4adbc66              # double 6.5594289999999997
	.quad	0x3febc901d19157ac              # double 0.86828700000000003
	.quad	0x3ff754b8bef8ceb3              # double 1.4581839999999999
	.quad	0x400d5d7d3910c2c6              # double 3.6706490000000001
	.quad	0x401a616f4384ba0f              # double 6.5951510000000004
	.quad	0x40226814f8b588e3              # double 9.2032849999999993
	.quad	0x401f34163779e9d1              # double 7.800866
	.quad	0x401be3482be8bc17              # double 6.9719550000000003
	.quad	0x4004c2f8bdec5f39              # double 2.5952009999999999
	.quad	0x3fd478c868b9fdbd              # double 0.31987199999999999
	.quad	0x3ffe9ce9e5e24788              # double 1.9133089999999999
	.quad	0x401a7c868b9fdbd3              # double 6.621607
	.quad	0x3fe5b71758e21965              # double 0.67859999999999998
	.quad	0x4012011dffc5479d              # double 4.5010909999999997
	.quad	0x3ff3b1e4b44a1f08              # double 1.230931
	.quad	0x40180d1ed9dfdac7              # double 6.0128130000000004
	.quad	0x40190640e9d51b50              # double 6.2561070000000001
	.quad	0x401ebfd71b046845              # double 7.6873440000000003
	.quad	0x400d0dfc5cdd50a9              # double 3.6318290000000002
	.quad	0x3f804ff43419e300              # double 0.0079649999999999999
	.quad	0x4023ed4d4024b33e              # double 9.9634800000000006
	.quad	0x40189f38c5436b90              # double 6.1554900000000004
	.quad	0x4023a7d6b65a9a80              # double 9.8278099999999995
	.quad	0x40077b3aeee95747              # double 2.935171
	.quad	0x3ff91c842fa50939              # double 1.5694619999999999
	.quad	0x4003d1fb3fa6defc              # double 2.4775299999999998
	.quad	0x3ffad4024b33daf9              # double 1.67676
	.quad	0x401ed7e06961c369              # double 7.7108169999999995
	.quad	0x401b76ea854477ff              # double 6.8661289999999999
	.quad	0x3fde7e34b945308c              # double 0.47645300000000002
	.quad	0x400f41b10fd7e458              # double 3.907076
	.quad	0x400946a98244e93e              # double 3.159503
	.quad	0x3ff8c58cd20afa2f              # double 1.54823
	.quad	0x40210baf965b20b8              # double 8.522824
	.quad	0x4004dd912556d19e              # double 2.608187
	.quad	0x3ffc2f74cd31769b              # double 1.7615860000000001
	.quad	0x4020dd5b6805a2d7              # double 8.4323379999999997
	.quad	0x3fd5d55a3a08398a              # double 0.34114699999999998
	.quad	0x401954549b62c775              # double 6.3323539999999996
	.quad	0x40158496aad1d042              # double 5.3794810000000002
	.quad	0x401d8aa7ded6ba8c              # double 7.3854059999999997
	.quad	0x4001f927d45a5fc8              # double 2.246658
	.quad	0x401035ce9e5e2479              # double 4.0525460000000004
	.quad	0x400842cfd8f0c77e              # double 3.0326230000000001
	.quad	0x4014cbf26f1dc50d              # double 5.1991670000000001
	.quad	0x4022558dde7a743a              # double 9.1670979999999993
	.quad	0x4020a344c37e6f72              # double 8.3188840000000006
	.quad	0x401a9330941c8217              # double 6.6437400000000002
	.quad	0x3ff077b8d3f1843c              # double 1.0292289999999999
	.quad	0x4022bf0b6b6e0d24              # double 9.3731340000000002
	.quad	0x4004da07b352a844              # double 2.6064600000000002
	.quad	0x400bc4cf0739b025              # double 3.471098
	.quad	0x3ff5f21a2e7f6f4c              # double 1.371607
	.quad	0x3feeb558a7610279              # double 0.95963699999999996
	.quad	0x40196b9e492bc2fc              # double 6.3550959999999996
	.quad	0x3ff39e050374ff86              # double 1.2260789999999999
	.quad	0x4011b73bc903ea70              # double 4.4289389999999997
	.quad	0x3fd573d5bab21816              # double 0.33519500000000002
	.quad	0x4008e6e6d9be4cd7              # double 3.1127449999999999
	.quad	0x400b6a45d41fa765              # double 3.4268909999999999
	.quad	0x3fff0aa9717df19d              # double 1.9401029999999999
	.quad	0x4008a2b3892ee84b              # double 3.0794440000000001
	.quad	0x3ff376b1a2a4db16              # double 1.2164779999999999
	.quad	0x402042f7b17ce52e              # double 8.1307960000000001
	.quad	0x3ff3864020817fc7              # double 1.2202759999999999
	.quad	0x401c520ff540895d              # double 7.080139
	.quad	0x4008a4a6a875d56f              # double 3.0803959999999999
	.quad	0x40216bd5bab21816              # double 8.7106150000000007
	.quad	0x4018e5a038194c01              # double 6.2242439999999997
	.quad	0x3fedc122749f0e4e              # double 0.92982600000000004
	.quad	0x400d1d7e45803cd1              # double 3.6394009999999999
	.quad	0x4013943c7d5ed070              # double 4.8947620000000001
	.quad	0x4017e55d5f56a7ad              # double 5.9739890000000004
	.quad	0x401877db6e503fb3              # double 6.1170479999999996
	.quad	0x4007221f2990f302              # double 2.891661
	.quad	0x40239728c79f6662              # double 9.7952329999999996
	.quad	0x40200da836eb4e98              # double 8.0266739999999999
	.quad	0x401c6739b024f65a              # double 7.1008060000000004
	.quad	0x4011061b2a27f1b7              # double 4.2559630000000004
	.quad	0x401d08e043a21640              # double 7.2586680000000001
	.quad	0x401bfde3b8a19c9d              # double 6.9979389999999997
	.quad	0x400ab985271bcdbc              # double 3.3405860000000001
	.quad	0x4014b0f9096bb98c              # double 5.1728249999999996
	.quad	0x4020ce72b884406c              # double 8.4032189999999999
	.quad	0x40189cdc8754f377              # double 6.1531849999999997
	.quad	0x40151851654d61b3              # double 5.2737480000000003
	.quad	0x4013f7fc7607c41a              # double 4.9921740000000003
	.quad	0x40227efa1e3eaf68              # double 9.2480019999999996
	.quad	0x401887021d10b1ff              # double 6.1318440000000001
	.quad	0x40148918e325d4a6              # double 5.1338840000000001
	.quad	0x401cf8448cf7caa7              # double 7.2424489999999997
	.quad	0x4021178769ec2ce4              # double 8.5459549999999993
	.quad	0x4023dc5bd0e12e84              # double 9.9303880000000006
	.quad	0x3ff7caa00192a737              # double 1.486969
	.quad	0x4010da0902de00d2              # double 4.2129250000000003
	.quad	0x402250909289dae0              # double 9.1573530000000005
	.quad	0x400839756c93a711              # double 3.0280559999999999
	.quad	0x401f636694898f60              # double 7.8470709999999997
	.quad	0x4012f47e8ccdd93c              # double 4.7387639999999998
	.quad	0x3ff6f36ef8055fbb              # double 1.4344319999999999
	.quad	0x4017d2be48a58b3f              # double 5.9558039999999997
	.quad	0x40164b96af038e2a              # double 5.573817
	.quad	0x3fc0ee6b8305d95e              # double 0.132276
	.quad	0x401c61ceaf251c19              # double 7.0955149999999998
	.quad	0x4017806d50657321              # double 5.8754169999999997
	.quad	0x400c2980b242070c              # double 3.5202650000000002
	.quad	0x4014c8d6d3b6cbda              # double 5.1961320000000004
	.quad	0x4003313a4f8726d0              # double 2.3990369999999999
	.quad	0x400cb97edc7ef178              # double 3.5905740000000002
	.quad	0x40218f1715c63ae2              # double 8.7794729999999994
	.quad	0x3ff360fb224aada3              # double 1.2111769999999999
	.quad	0x4012776af89c5e70              # double 4.616619
	.quad	0x3ffec3265add9c28              # double 1.922644
	.quad	0x4006f80346dc5d64              # double 2.8711000000000002
	.quad	0x401ca96787ce95fb              # double 7.1654340000000003
	.quad	0x4018c9b499d0203e              # double 6.1969779999999997
	.quad	0x40173e379b77c02b              # double 5.810759
	.quad	0x401dfb99d451fc4c              # double 7.4957039999999999
	.quad	0x4019ffb82c2bd7f5              # double 6.4997259999999999
	.quad	0x3fd3e310dbf0563f              # double 0.31073400000000001
	.quad	0x3ffc2534373f316e              # double 1.759083
	.quad	0x401df4c2b51bd61f              # double 7.4890239999999996
	.quad	0x400dc835dedf1e08              # double 3.7227589999999999
	.quad	0x3ff5decb31c219eb              # double 1.3668929999999999
	.quad	0x4010b76c4827b6fe              # double 4.1791239999999998
	.quad	0x400fd4a6eb91b3f2              # double 3.978834
	.quad	0x4021be16d6dc1a48              # double 8.8712680000000006
	.quad	0x400dc56eefa1e3eb              # double 3.721403
	.quad	0x4018b37c1376d549              # double 6.1752779999999996
	.quad	0x401aa99d451fc4c1              # double 6.6656389999999996
	.quad	0x4023f76d330941c8              # double 9.9832549999999997
	.quad	0x401ded0aed99cbef              # double 7.4814870000000004
	.quad	0x4023e65d3996fa83              # double 9.9499300000000001
	.quad	0x400a442c7fbacb43              # double 3.2832880000000002
	.quad	0x4023f711d798d8a9              # double 9.9825579999999991
	.quad	0x40169af5ba2be059              # double 5.6513280000000004
	.quad	0x4002cceb356da017              # double 2.3500580000000002
	.quad	0x4017a8a7a41e57da              # double 5.9147020000000001
	.quad	0x40229360f1b25f63              # double 9.2878489999999996
	.quad	0x4022503f2d3c792d              # double 9.1567319999999999
	.quad	0x402070155d5f56a8              # double 8.2189130000000006
	.quad	0x401eedd3fe1975f3              # double 7.7322540000000001
	.quad	0x4016f7ff583a53b9              # double 5.7421850000000001
	.quad	0x401a80a7c5ac471b              # double 6.6256399999999998
	.quad	0x4020f4f2f123c42a              # double 8.4784159999999993
	.quad	0x401ddc3c9eecbfb1              # double 7.4650749999999997
	.quad	0x4004b1d92b7fe08b              # double 2.58684
	.quad	0x3ffc6d56b00ffda4              # double 1.776694
	.quad	0x4019a23422467be5              # double 6.4084019999999997
	.quad	0x4013f8e71476af8a              # double 4.9930690000000002
	.quad	0x4009da95c853c148              # double 3.2317309999999999
	.quad	0x3ffe8c47a17f4129              # double 1.9092480000000001
	.quad	0x4018a5182a9930be              # double 6.161225
	.quad	0x401740a30db6a1e8              # double 5.8131219999999999
	.quad	0x4003c787485e3da3              # double 2.472426
	.quad	0x402192a64c2f837b              # double 8.7864249999999995
	.quad	0x4023253825e13b19              # double 9.5726940000000002
	.quad	0x4014a94b7b28954a              # double 5.1653269999999996
	.quad	0x4021ecf1800a7c5b              # double 8.9627800000000004
	.quad	0x4022a6e2435696e6              # double 9.3259450000000008
	.quad	0x3ffa9fdcdf698783              # double 1.664029
	.quad	0x40143bfb9bed30f0              # double 5.0585769999999997
	.quad	0x3fe012ff4ba51a00              # double 0.50231899999999996
	.quad	0x4001ca60913a4f87              # double 2.2238169999999999
	.quad	0x3ff532d1aeb3dd12              # double 1.3249070000000001
	.quad	0x40179e41d4b6a61a              # double 5.9045480000000001
	.quad	0x3ffecaeea63b688c              # double 1.924544
	.quad	0x4021a852502eec7d              # double 8.8287530000000007
	.quad	0x3fe9c35efa615a8e              # double 0.80509900000000001
	.quad	0x40121330d738609a              # double 4.5187410000000003
	.quad	0x4020c11105e1c151              # double 8.3770830000000007
	.quad	0x401d0b4aec8d5c74              # double 7.2610279999999996
	.quad	0x3fecf61672324c83              # double 0.90503999999999996
	.quad	0x4023e1a543f1c758              # double 9.9407139999999998
	.quad	0x401b8f62f9ca5bd9              # double 6.8900259999999998
	.quad	0x4016b7f1737542a2              # double 5.6796319999999998
	.quad	0x40037b21c475e636              # double 2.4351229999999999
	.quad	0x3fe5da6a44417870              # double 0.68291199999999996
	.quad	0x4002104816f0068e              # double 2.2579500000000001
	.quad	0x3ffd02e019b0ab2e              # double 1.813202
	.quad	0x3fe998611fd5885d              # double 0.79985099999999998
	.quad	0x400a80e5a35d67ba              # double 3.3129379999999999
	.quad	0x3ff05106ee30caa3              # double 1.019782
	.quad	0x401f962cba732df5              # double 7.8966549999999999
	.quad	0x400d05e4e69f05ea              # double 3.6278779999999999
	.quad	0x4014f28c36da87a0              # double 5.2368629999999996
	.quad	0x40151d30270f3882              # double 5.2785039999999999
	.quad	0x40146f9378ee2867              # double 5.1089609999999999
	.quad	0x4021baab8a5ce5b4              # double 8.8645899999999997
	.quad	0x40202e93c03bc4d2              # double 8.0909709999999997
	.quad	0x3ff04a2fcefaa476              # double 1.0181119999999999
	.quad	0x402222f87ad080b6              # double 9.0683019999999992
	.quad	0x4008e77ccc037931              # double 3.1130309999999999
	.quad	0x40174a21a719b4dd              # double 5.8223940000000001
	.quad	0x40207a71de69ad43              # double 8.2391500000000004
	.quad	0x4017613a4f8726d0              # double 5.8449489999999997
	.quad	0x4023a1fe21d96e9c              # double 9.8163920000000004
	.quad	0x40070e9f6a93f291              # double 2.8821400000000001
	.quad	0x4002542fe82517e7              # double 2.2911069999999998
	.quad	0x401b04dcebfec13c              # double 6.7547490000000003
	.quad	0x40211652bd3c3611              # double 8.5435999999999996
	.quad	0x3febde7210be9425              # double 0.87090400000000001
	.quad	0x4022df7e1b8ed1bf              # double 9.4365089999999991
	.quad	0x4021d77a2cecc815              # double 8.9208540000000003
	.quad	0x401a7df86e3b46fe              # double 6.6230180000000001
	.quad	0x401e2b54e2b063e0              # double 7.5423159999999996
	.quad	0x3fe86019b0ab2e17              # double 0.76173100000000005
	.quad	0x4021792b5e529bae              # double 8.7366589999999995
	.quad	0x4023019ef954eb14              # double 9.5031660000000002
	.quad	0x3fd64e8fb00bcbe6              # double 0.34854499999999999
	.quad	0x4021ee40639d5e4a              # double 8.9653349999999996
	.quad	0x3fe9cbdba0a52696              # double 0.80613500000000005
	.quad	0x40120f61672324c8              # double 4.5150199999999998
	.quad	0x4021b6fae7924af1              # double 8.8573830000000005
	.quad	0x4012792ab68cef67              # double 4.6183269999999998
	.quad	0x4022f30984e3ffef              # double 9.4746819999999996
	.quad	0x401a77e38eb0318c              # double 6.6170790000000004
	.quad	0x4015d5d28d002e23              # double 5.4588109999999999
	.quad	0x4022baca79357604              # double 9.3648260000000007
	.quad	0x40166cae21101b00              # double 5.6061329999999998
	.quad	0x401f5f1a1986b9c3              # double 7.8428729999999999
	.quad	0x400fab9fdbd2fa0d              # double 3.9588009999999998
	.quad	0x401504102ff8ec10              # double 5.2539680000000004
	.quad	0x4015a06466b1e5c1              # double 5.4066330000000002
	.quad	0x401dcfb09203a323              # double 7.4528220000000003
	.quad	0x4012b65e4606748e              # double 4.6780939999999998
	.quad	0x3fb49320d9945b6c              # double 0.080369999999999997
	.quad	0x3fb82aed1394317b              # double 0.094405000000000003
	.quad	0x4020bd78811b1d93              # double 8.3700600000000005
	.quad	0x3fe32220bc382a13              # double 0.597916
	.quad	0x3ff80d6e47dc37a4              # double 1.503279
	.quad	0x4015fc31593e5fb7              # double 5.4962819999999999
	.quad	0x400aa06d0d49949f              # double 3.3283330000000002
	.quad	0x401c6303c07ee0b1              # double 7.0966940000000003
	.quad	0x40227f125dd095af              # double 9.2481869999999997
	.quad	0x4019221294573a79              # double 6.2832739999999996
	.quad	0x401ba6922d948dc1              # double 6.9126669999999999
	.quad	0x400a0b3aabcd78c4              # double 3.2554829999999999
	.quad	0x40201155f78359bc              # double 8.0338589999999996
	.quad	0x40203c61522a6f3f              # double 8.1179299999999994
	.quad	0x40050c8bc9cd3e0c              # double 2.6311260000000001
	.quad	0x40203d653c9abb02              # double 8.1199130000000004
	.quad	0x401ac8bd230b9dc3              # double 6.696034
	.quad	0x40234b92c061847f              # double 9.6476039999999994
	.quad	0x400bf8d1d8a54824              # double 3.4964940000000002
	.quad	0x3fd6e19b90ea9e6f              # double 0.35752
	.quad	0x40215aa454de7ea6              # double 8.6770350000000001
	.quad	0x40104579f2346562              # double 4.0678479999999997
	.quad	0x400150331e3a7daa              # double 2.1641599999999999
	.quad	0x401c90d173fb7a5f              # double 7.1414239999999998
	.quad	0x401824cf0739b025              # double 6.035946
	.quad	0x3fd6551d68c692f7              # double 0.34894500000000001
	.quad	0x401601e3eaf6837f              # double 5.5018459999999996
	.quad	0x401c0a7503b81b65              # double 7.0102120000000001
	.quad	0x3ff29821294573a8              # double 1.1621410000000001
	.quad	0x401cafdc5931ca7d              # double 7.1717389999999996
	.quad	0x4013e8f1d3ed527e              # double 4.9774849999999997
	.quad	0x400708a3f8982cb2              # double 2.879219
	.quad	0x40016ab474107315              # double 2.1771020000000001
	.quad	0x40226682d7b634db              # double 9.2002170000000003
	.quad	0x4014fa3bddfc9ff9              # double 5.2443689999999998
	.quad	0x40191ff4fd6d7e89              # double 6.2812080000000003
	.quad	0x3fffc6961c36976c              # double 1.9859830000000001
	.quad	0x400059b3d07c84b6              # double 2.0438000000000001
	.quad	0x3ff398a222d5171e              # double 1.224764
	.quad	0x401ba5d13d74d595              # double 6.911931
	.quad	0x3ff246e5cd4ed2cc              # double 1.142309
	.quad	0x40039eda66128390              # double 2.4525649999999999
	.quad	0x40101d9c6b053198              # double 4.0289169999999999
	.quad	0x40207c6c11a11234              # double 8.2430120000000002
	.quad	0x40159481f53825e1              # double 5.3950269999999998
	.quad	0x401723d9a95421c0              # double 5.7850099999999998
	.quad	0x400ba2aa19439de5              # double 3.4544260000000002
	.quad	0x3ff9bf20a73f748a              # double 1.609162
	.quad	0x401f28dc11e42e12              # double 7.7899019999999997
	.quad	0x3ffaee2b8c75c4a8              # double 1.6831469999999999
	.quad	0x40124e8f6cefed63              # double 4.5767189999999998
	.quad	0x4000b887ebf22c02              # double 2.090103
	.quad	0x400b8ae31d712a0f              # double 3.4428160000000001
	.quad	0x4021f61fe21d96ea              # double 8.9807120000000005
	.quad	0x4003df6db940fece              # double 2.4840960000000001
	.quad	0x400dfdc2f405f6ba              # double 3.748907
	.quad	0x400c1c853c148345              # double 3.5139260000000001
	.quad	0x4000a0d801b43526              # double 2.0785369999999999
	.quad	0x401a7e1975f2cb64              # double 6.6231439999999999
	.quad	0x4004f8348f53c57a              # double 2.621194
	.quad	0x400e4a1c68ec52a4              # double 3.786187
	.quad	0x3fc30adcd2d44dcb              # double 0.14876900000000001
	.quad	0x401567c88e79aae7              # double 5.3513510000000002
	.quad	0x3fe52a8650e77920              # double 0.66144099999999995
	.quad	0x40124789613d31ba              # double 4.5698600000000003
	.quad	0x40212014727dcbde              # double 8.5626560000000005
	.quad	0x4002faf74cd3176a              # double 2.3725420000000002
	.quad	0x40153bf0995aaf79              # double 5.308535
	.quad	0x401b4b7132724313              # double 6.8236739999999996
	.quad	0x400b17c88e79aae7              # double 3.3866130000000001
	.quad	0x3ff26480e8c8abd6              # double 1.149537
	.quad	0x401a9982cb20fb22              # double 6.6499129999999997
	.quad	0x3fd315f88fc9363f              # double 0.29821599999999998
	.quad	0x4007280e06530058              # double 2.894558
	.quad	0x4023ac8259e1f3a5              # double 9.8369319999999991
	.size	.L__constant_1999xf64_0, 15992

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
