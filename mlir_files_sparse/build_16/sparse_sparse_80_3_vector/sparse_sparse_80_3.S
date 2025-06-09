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
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
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
	li	a3, 34
	mul	a1, a1, a3
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xa0, 0x01, 0x22, 0x11, 0x22, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 160 + 34 * vlenb
	li	t6, 0
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 472(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 464(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	a1, 456(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t2, 448(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t3, 440(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t5, 432(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	t4, 424(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s3, 192(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s5, 352(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s6, 272(a1)
	csrr	a1, vlenb
	li	a3, 34
	mul	a1, a1, a3
	add	a1, a1, sp
	ld	s7, 312(a1)
	csrr	t1, vlenb
	li	s2, 99
	slli	s11, t1, 4
	slli	ra, t1, 1
	slli	t1, t1, 3
	li	s4, 800
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t6, t6, 1
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_8 Depth 3
	blt	s2, t6, .LBB1_11
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	slli	a1, t6, 3
	add	a1, a1, a2
	lwu	a3, 4(a1)
	lwu	a4, 0(a1)
	lwu	a5, 12(a1)
	lwu	a1, 8(a1)
	slli	a3, a3, 32
	or	s9, a3, a4
	slli	a5, a5, 32
	or	s8, a5, a1
	mul	a5, t6, s4
	add	a5, a5, t5
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	addi	s9, s9, 1
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
	bge	s9, s8, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	slli	a1, s9, 3
	add	a3, a7, a1
	lwu	a4, 0(a3)
	lwu	a3, 4(a3)
	slli	a4, a4, 3
	slli	a3, a3, 35
	or	a3, a3, a4
	add	a3, a3, s6
	lwu	a4, 0(a3)
	lwu	s0, 4(a3)
	lwu	s1, 8(a3)
	lwu	a3, 12(a3)
	add	a1, a1, s3
	fld	fa5, 0(a1)
	slli	s0, s0, 32
	slli	a3, a3, 32
	or	a6, s0, a4
	or	s10, a3, s1
	slli	a1, a6, 3
	add	s1, s5, a1
	add	a1, a1, s7
	sub	a3, s10, a6
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	vsetvli	t0, zero, e32, m8, ta, ma
	vmv.v.x	v8, a4
	csrr	a4, vlenb
	li	t0, 26
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v8, (a4)                        # Unknown-size Folded Spill
	add	a4, a1, t1
	vsetvli	s0, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	vmv.v.i	v24, 0
	csrr	t0, vlenb
	li	s0, 10
	mul	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vs8r.v	v8, (t0)                        # Unknown-size Folded Spill
	csrr	t0, vlenb
	li	s0, 26
	mul	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vl8r.v	v16, (t0)                       # Unknown-size Folded Reload
	vsetvli	s0, zero, e32, m8, ta, ma
	vid.v	v0
	vsetvli	s0, zero, e32, m4, ta, ma
	vmslt.vv	v0, v4, v20
	csrr	t0, vlenb
	li	s0, 26
	mul	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vl8r.v	v16, (t0)                       # Unknown-size Folded Reload
	vsetvli	s0, zero, e32, m8, ta, ma
	vid.v	v8
	vsetvli	s0, zero, e32, m4, ta, ma
	vmslt.vv	v6, v8, v16
	vmv1r.v	v7, v0
	csrr	t0, vlenb
	slli	s0, t0, 3
	add	t0, t0, s0
	add	t0, t0, sp
	addi	t0, t0, 48
	vs1r.v	v0, (t0)                        # Unknown-size Folded Spill
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v24, (a4), v0.t
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v24, (a4)                       # Unknown-size Folded Spill
	vmv1r.v	v0, v6
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v8, (a4)                        # Unknown-size Folded Reload
	vle64.v	v8, (a1), v0.t
	vmv.v.i	v16, 0
	vsll.vi	v24, v8, 3
	csrr	a4, vlenb
	li	t0, 26
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v24, (a4)                       # Unknown-size Folded Spill
	vmv.v.i	v8, 0
	csrr	a4, vlenb
	slli	a4, a4, 3
	add	a4, a4, sp
	addi	a4, a4, 48
	vs1r.v	v6, (a4)                        # Unknown-size Folded Spill
	vluxei64.v	v8, (a5), v24, v0.t
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v8, (a4)                        # Unknown-size Folded Spill
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v8, (a4)                        # Unknown-size Folded Reload
	vsll.vi	v8, v8, 3
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v8, (a4)                        # Unknown-size Folded Spill
	vmv.v.i	v24, 0
	vmv1r.v	v0, v7
	vluxei64.v	v24, (a5), v8, v0.t
	addi	a4, sp, 48
	vs8r.v	v24, (a4)                       # Unknown-size Folded Spill
	add	a4, s1, t1
	vmv.v.i	v8, 0
	vle64.v	v8, (a4), v0.t
	vmv1r.v	v0, v6
	vle64.v	v16, (s1), v0.t
	vfmul.vf	v16, v16, fa5
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v0, (a4)                        # Unknown-size Folded Reload
	vfadd.vv	v16, v0, v16
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v16, (a4)                       # Unknown-size Folded Spill
	csrr	a4, vlenb
	slli	a4, a4, 3
	add	a4, a4, sp
	addi	a4, a4, 48
	vl1r.v	v0, (a4)                        # Unknown-size Folded Reload
	csrr	a4, vlenb
	li	t0, 26
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v16, (a4)                       # Unknown-size Folded Reload
	csrr	a4, vlenb
	li	t0, 10
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v24, (a4)                       # Unknown-size Folded Reload
	vsoxei64.v	v24, (a5), v16, v0.t
	vfmul.vf	v8, v8, fa5
	addi	a4, sp, 48
	vl8r.v	v16, (a4)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v16, v8
	csrr	a4, vlenb
	slli	t0, a4, 3
	add	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl1r.v	v0, (a4)                        # Unknown-size Folded Reload
	csrr	a4, vlenb
	li	t0, 18
	mul	a4, a4, t0
	add	a4, a4, sp
	addi	a4, a4, 48
	vl8r.v	v16, (a4)                       # Unknown-size Folded Reload
	vsoxei64.v	v8, (a5), v16, v0.t
	add	a6, a6, ra
	add	a1, a1, s11
	add	s1, s1, s11
	sub	a3, a3, ra
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	a6, s10, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	a4, ra
	blt	ra, a3, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	a4, a3
	j	.LBB1_7
.LBB1_11:
	sd	t4, 0(a0)
	sd	t5, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	li	a1, 34
	mul	a0, a0, a1
	add	sp, sp, a0
	.cfi_def_cfa sp, 160
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
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
	addi	sp, sp, 160
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sparse_sparse_matmul, .Lfunc_end1-sparse_sparse_matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x412ecd07db250b52              # double 1009283.928017
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
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	102                             # 0x66
	.quad	140                             # 0x8c
	.quad	150                             # 0x96
	.quad	162                             # 0xa2
	.quad	198                             # 0xc6
	.quad	208                             # 0xd0
	.quad	218                             # 0xda
	.quad	263                             # 0x107
	.quad	275                             # 0x113
	.quad	287                             # 0x11f
	.quad	326                             # 0x146
	.quad	337                             # 0x151
	.quad	352                             # 0x160
	.quad	394                             # 0x18a
	.quad	401                             # 0x191
	.quad	411                             # 0x19b
	.quad	456                             # 0x1c8
	.quad	465                             # 0x1d1
	.quad	474                             # 0x1da
	.quad	517                             # 0x205
	.quad	529                             # 0x211
	.quad	543                             # 0x21f
	.quad	583                             # 0x247
	.quad	602                             # 0x25a
	.quad	619                             # 0x26b
	.quad	662                             # 0x296
	.quad	668                             # 0x29c
	.quad	674                             # 0x2a2
	.quad	713                             # 0x2c9
	.quad	717                             # 0x2cd
	.quad	725                             # 0x2d5
	.quad	766                             # 0x2fe
	.quad	779                             # 0x30b
	.quad	788                             # 0x314
	.quad	829                             # 0x33d
	.quad	837                             # 0x345
	.quad	846                             # 0x34e
	.quad	883                             # 0x373
	.quad	897                             # 0x381
	.quad	904                             # 0x388
	.quad	944                             # 0x3b0
	.quad	953                             # 0x3b9
	.quad	962                             # 0x3c2
	.quad	1001                            # 0x3e9
	.quad	1016                            # 0x3f8
	.quad	1025                            # 0x401
	.quad	1067                            # 0x42b
	.quad	1076                            # 0x434
	.quad	1086                            # 0x43e
	.quad	1121                            # 0x461
	.quad	1126                            # 0x466
	.quad	1133                            # 0x46d
	.quad	1171                            # 0x493
	.quad	1180                            # 0x49c
	.quad	1193                            # 0x4a9
	.quad	1232                            # 0x4d0
	.quad	1244                            # 0x4dc
	.quad	1253                            # 0x4e5
	.quad	1296                            # 0x510
	.quad	1305                            # 0x519
	.quad	1312                            # 0x520
	.quad	1350                            # 0x546
	.quad	1360                            # 0x550
	.quad	1371                            # 0x55b
	.quad	1410                            # 0x582
	.quad	1417                            # 0x589
	.quad	1424                            # 0x590
	.quad	1465                            # 0x5b9
	.quad	1474                            # 0x5c2
	.quad	1484                            # 0x5cc
	.quad	1526                            # 0x5f6
	.quad	1533                            # 0x5fd
	.quad	1545                            # 0x609
	.quad	1584                            # 0x630
	.quad	1596                            # 0x63c
	.quad	1607                            # 0x647
	.quad	1648                            # 0x670
	.quad	1653                            # 0x675
	.quad	1660                            # 0x67c
	.quad	1700                            # 0x6a4
	.quad	1704                            # 0x6a8
	.quad	1712                            # 0x6b0
	.quad	1751                            # 0x6d7
	.quad	1757                            # 0x6dd
	.quad	1765                            # 0x6e5
	.quad	1810                            # 0x712
	.quad	1818                            # 0x71a
	.quad	1832                            # 0x728
	.quad	1873                            # 0x751
	.quad	1889                            # 0x761
	.quad	1898                            # 0x76a
	.quad	1943                            # 0x797
	.quad	1949                            # 0x79d
	.quad	1959                            # 0x7a7
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	64                              # 0x40
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	23                              # 0x17
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	14                              # 0xe
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	65                              # 0x41
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	42                              # 0x2a
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	96                              # 0x60
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	73                              # 0x49
	.quad	5                               # 0x5
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	49                              # 0x31
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	48                              # 0x30
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	3                               # 0x3
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	77                              # 0x4d
	.quad	93                              # 0x5d
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	59                              # 0x3b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	36                              # 0x24
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	79                              # 0x4f
	.quad	3                               # 0x3
	.quad	24                              # 0x18
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	38                              # 0x26
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	65                              # 0x41
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
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
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	2                               # 0x2
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
	.quad	0x4020623cc8de2ac3              # double 8.1918699999999998
	.quad	0x401bf1244a6223e2              # double 6.9854900000000004
	.quad	0x4000057646ae3a3b              # double 2.0026670000000002
	.quad	0x4023b17614595358              # double 9.8466039999999992
	.quad	0x400b1904b3c3e74b              # double 3.387216
	.quad	0x4002890de093532e              # double 2.3169209999999998
	.quad	0x401929d8409e55c1              # double 6.290864
	.quad	0x4022d3504c48adef              # double 9.4127220000000004
	.quad	0x3ff03e5fb71fbc5e              # double 1.015228
	.quad	0x4023cf4517614595              # double 9.9048239999999996
	.quad	0x40200a6117720c8d              # double 8.0202720000000003
	.quad	0x3fec67c49fd7a13c              # double 0.88766699999999998
	.quad	0x401bb461f9f01b86              # double 6.9261549999999996
	.quad	0x400db5935fc3b4f6              # double 3.71366
	.quad	0x401f0273929ed395              # double 7.7523939999999997
	.quad	0x401281cd1c7de508              # double 4.6267589999999998
	.quad	0x40174164c729f59d              # double 5.8138610000000002
	.quad	0x400c62e90364388f              # double 3.5482960000000001
	.quad	0x40124e58a32f4491              # double 4.5765099999999999
	.quad	0x4022b2363b256ffc              # double 9.3480699999999998
	.quad	0x402347c7e6b3fea0              # double 9.6401970000000006
	.quad	0x4019b940357a3550              # double 6.4309089999999998
	.quad	0x400c973eab367a10              # double 3.5738500000000002
	.quad	0x400868869c66d374              # double 3.0510380000000001
	.quad	0x3ff42096787ce960              # double 1.2579560000000001
	.quad	0x401047d7c2ca148c              # double 4.0701590000000003
	.quad	0x4023ccaa9717df1a              # double 9.8997390000000003
	.quad	0x401f14cfd08d4bad              # double 7.7703239999999995
	.quad	0x401da0d38cda6e76              # double 7.407057
	.quad	0x3ffa509f1f14983d              # double 1.6446829999999999
	.quad	0x3ffab632c1f42bb6              # double 1.6694819999999999
	.quad	0x40198e4d5d80e497              # double 6.3889670000000001
	.quad	0x40158573a797891e              # double 5.3803239999999999
	.quad	0x3ff7c6f694467382              # double 1.486075
	.quad	0x4023bad83c6c97d9              # double 9.8649310000000003
	.quad	0x40170dc768dfbd6a              # double 5.7634559999999997
	.quad	0x4018caf3a14cec42              # double 6.1981950000000001
	.quad	0x4021c2e90364388f              # double 8.8806840000000005
	.quad	0x40175e3a7daa4fca              # double 5.8420199999999998
	.quad	0x3feaa817763e4abe              # double 0.83301899999999995
	.quad	0x4013fcc2938de6de              # double 4.9968360000000001
	.quad	0x4001cbd556084a51              # double 2.2245279999999998
	.quad	0x3ff5066c2acb85a5              # double 1.314068
	.quad	0x401cea2a0a958538              # double 7.2286760000000001
	.quad	0x40174474538ef34d              # double 5.8168499999999996
	.quad	0x402181d53cddd6e0              # double 8.7535799999999995
	.quad	0x4022827bf61aa3f0              # double 9.2548519999999996
	.quad	0x40221d1dabe2717a              # double 9.0568670000000004
	.quad	0x4014c995aaf78fef              # double 5.19686
	.quad	0x40129492ff4ba51a              # double 4.645092
	.quad	0x40174a0f4d7add16              # double 5.8223240000000001
	.quad	0x40228655193708ab              # double 9.2623680000000004
	.quad	0x401971a719b4dcec              # double 6.360989
	.quad	0x4016403f705857b0              # double 5.5627420000000001
	.quad	0x401b06c4827b6fe3              # double 6.7566090000000001
	.quad	0x4020883c4b09e98e              # double 8.2660850000000003
	.quad	0x3fe5232096787ce9              # double 0.66053799999999996
	.quad	0x40034670e2c12ad8              # double 2.409395
	.quad	0x400ee0bc382a12f9              # double 3.859734
	.quad	0x4014b75afaf85943              # double 5.1790580000000004
	.quad	0x401c22fe82517e78              # double 7.0341740000000001
	.quad	0x3ffde31f8a0902de              # double 1.86795
	.quad	0x40041d45a5fc7e6b              # double 2.5142929999999999
	.quad	0x3fe5896feb4a6656              # double 0.67302700000000004
	.quad	0x3fc862131a8ef77f              # double 0.190493
	.quad	0x400944ece9a2c669              # double 3.158655
	.quad	0x400f0e94ee392e1f              # double 3.88212
	.quad	0x3fd06b2f23033a47              # double 0.25654199999999999
	.quad	0x4007b50870110a13              # double 2.9633949999999998
	.quad	0x3ffdcbe2f7b17ce5              # double 1.862277
	.quad	0x4019b04bc27631b6              # double 6.4221640000000004
	.quad	0x4016e23e5b8561d4              # double 5.7209409999999998
	.quad	0x40040679cc74b839              # double 2.5031620000000001
	.quad	0x4021ec8eef1bac2e              # double 8.9620280000000001
	.quad	0x3fe7485e3da2f8be              # double 0.72758400000000001
	.quad	0x40067ef30a4e379b              # double 2.8119869999999998
	.quad	0x401ad681a9b8cb8e              # double 6.709479
	.quad	0x40181939a7c17a89              # double 6.0246339999999998
	.quad	0x3fd78bac710cb296              # double 0.3679
	.quad	0x4021bcefaa4766c7              # double 8.8690160000000002
	.quad	0x4013bc37e6f71a7e              # double 4.9338069999999998
	.quad	0x40212267c6b8b695              # double 8.5671979999999994
	.quad	0x400f0ed8904f6dfc              # double 3.8822489999999998
	.quad	0x40191b46fdeb52ca              # double 6.2766380000000002
	.quad	0x400dc09fe86833c6              # double 3.719055
	.quad	0x401afe53eb399f5e              # double 6.748367
	.quad	0x4018b2acb85a4f01              # double 6.1744870000000001
	.quad	0x401c53c03bc4d22d              # double 7.0817880000000004
	.quad	0x4011ec63ae2541d9              # double 4.4808490000000001
	.quad	0x4019ef45e0b4e11e              # double 6.4836650000000002
	.quad	0x3fed756a7ac81d3b              # double 0.92058300000000004
	.quad	0x3fe7b2c40d0aaa7e              # double 0.74057200000000001
	.quad	0x401e28d5410f94c8              # double 7.5398759999999995
	.quad	0x401b287a8d64d7f1              # double 6.7895300000000001
	.quad	0x401bbfeda6612839              # double 6.93743
	.quad	0x4019c86940357a35              # double 6.4457139999999997
	.quad	0x3fd80e6f2e8c0486              # double 0.37588100000000002
	.quad	0x401a7bf6e3f78bbd              # double 6.6210589999999998
	.quad	0x400b26bbdbe3c105              # double 3.393913
	.quad	0x3fc1b445ed4a1ad6              # double 0.13831399999999999
	.quad	0x400834c1a8ac5c14              # double 3.02576
	.quad	0x40229c588a04d120              # double 9.3053629999999998
	.quad	0x401322f405f6ba06              # double 4.7841339999999999
	.quad	0x400b80dfdef8487c              # double 3.4379270000000002
	.quad	0x40005fc19c17225b              # double 2.0467559999999998
	.quad	0x40224280cf9e3865              # double 9.1298890000000004
	.quad	0x3fe0fa1e3eaf6838              # double 0.530532
	.quad	0x4016ad462c343b71              # double 5.6692130000000001
	.quad	0x3ffa46162f166e01              # double 1.6421110000000001
	.quad	0x4016eba8c586876e              # double 5.7301359999999999
	.quad	0x401a2be76c8b4396              # double 6.5428750000000004
	.quad	0x3fd162cfd8f0c77e              # double 0.27165600000000001
	.quad	0x3ff50ce703afb7e9              # double 1.31565
	.quad	0x401012b3461309c8              # double 4.018262
	.quad	0x40108afea3df6db9              # double 4.1357369999999998
	.quad	0x4003d8ad25679896              # double 2.4807990000000002
	.quad	0x402318ad25679896              # double 9.5481960000000008
	.quad	0x3ffe8012dfd694cd              # double 1.9062680000000001
	.quad	0x3fe1185058dde7a7              # double 0.53421799999999997
	.quad	0x4020cfd7e45803cd              # double 8.4059439999999999
	.quad	0x401c38aa8650e779              # double 7.0553379999999999
	.quad	0x400c26583e8576cd              # double 3.518723
	.quad	0x401e12599ed7c6fc              # double 7.5179200000000002
	.quad	0x3ffc529bae46cfc8              # double 1.770168
	.quad	0x4002bd4cfd08d4bb              # double 2.3424320000000001
	.quad	0x3ff97fdb4cc25072              # double 1.593715
	.quad	0x400fc24e59296702              # double 3.9698760000000002
	.quad	0x3ffd86a098915bdd              # double 1.8453679999999999
	.quad	0x401805f7403dddb1              # double 6.0058259999999999
	.quad	0x400af65907d91255              # double 3.3702869999999998
	.quad	0x40112bb1af3a14cf              # double 4.2926700000000002
	.quad	0x3fdd9c304ccee5ac              # double 0.46265800000000001
	.quad	0x401d79bed30f062d              # double 7.3688919999999998
	.quad	0x4004ff25e56cd6c3              # double 2.624584
	.quad	0x4016ffe7e1fc08fa              # double 5.7499079999999996
	.quad	0x400a8d844d013a93              # double 3.3191000000000002
	.quad	0x401c81af3a14cec4              # double 7.1266449999999999
	.quad	0x40238059ea57214f              # double 9.7506859999999999
	.quad	0x3ff01cc532a497fa              # double 1.0070239999999999
	.quad	0x40222b6199780baa              # double 9.0847289999999994
	.quad	0x3fe8184e3ffef391              # double 0.75296700000000005
	.quad	0x401cbb11c6d1e109              # double 7.1826850000000002
	.quad	0x3ff54460ed80a17b              # double 1.329194
	.quad	0x4022dc7c957cd467              # double 9.430638
	.quad	0x4013e22a6f3f52fc              # double 4.9708649999999999
	.quad	0x402364564f97edc8              # double 9.6959710000000001
	.quad	0x401d4c9c4da9003f              # double 7.3248150000000001
	.quad	0x3fe02ac53b0813cb              # double 0.50522100000000003
	.quad	0x400c1e364bec679d              # double 3.5147520000000001
	.quad	0x401b51950331e3a8              # double 6.8296700000000001
	.quad	0x4023aded6ba8c587              # double 9.8397020000000008
	.quad	0x401ffb7aa25d8d7a              # double 7.9955850000000002
	.quad	0x401e61f687b139c9              # double 7.5956669999999997
	.quad	0x3ff8e3315d701d9f              # double 1.5554669999999999
	.quad	0x400e879bbadc0981              # double 3.8162150000000001
	.quad	0x4007379e9d0e9920              # double 2.902158
	.quad	0x4023be5e89225311              # double 9.8718149999999997
	.quad	0x3ff17845564b6630              # double 1.091863
	.quad	0x400b3a005c4651f4              # double 3.403321
	.quad	0x401d6c52a411c2a0              # double 7.3557839999999999
	.quad	0x40225bb5bf6a0dbb              # double 9.1791210000000003
	.quad	0x4014f9ce075f6fd2              # double 5.2439499999999999
	.quad	0x4020ac2d2780778a              # double 8.3362820000000006
	.quad	0x4015365907d91255              # double 5.3030739999999996
	.quad	0x4022ba8b8f14db59              # double 9.3643459999999993
	.quad	0x402361c193b3a68b              # double 9.6909299999999998
	.quad	0x401593fb7a5f41af              # double 5.394514
	.quad	0x400570795f676ea4              # double 2.6799189999999999
	.quad	0x40228361fe21d96f              # double 9.2566070000000007
	.quad	0x3ff1af5126634118              # double 1.105302
	.quad	0x401cd9d8409e55c1              # double 7.212739
	.quad	0x40128ce9e5e24788              # double 4.6376109999999997
	.quad	0x4023555fdcdf6988              # double 9.6667470000000008
	.quad	0x4002a35ce1826677              # double 2.3297669999999999
	.quad	0x401cfcdc443914f5              # double 7.2469340000000004
	.quad	0x4015754d1e96c3fc              # double 5.3645519999999998
	.quad	0x4023e9309c7ffde7              # double 9.9554489999999997
	.quad	0x4020e1cc100e6afd              # double 8.4410100000000003
	.quad	0x401905093964a59c              # double 6.254918
	.quad	0x402061691a75cd0c              # double 8.1902550000000005
	.quad	0x4023e7166e008e9b              # double 9.9513429999999996
	.quad	0x400a521bc126a65d              # double 3.290092
	.quad	0x4021edc443914f48              # double 8.9643879999999996
	.quad	0x40139635e74299d9              # double 4.8966900000000004
	.quad	0x401682d8c2a454de              # double 5.6277799999999996
	.quad	0x3fd7f41f212d7732              # double 0.37427500000000002
	.quad	0x40079940789613d3              # double 2.94983
	.quad	0x40222631b584b1ab              # double 9.0745979999999999
	.quad	0x4006eae1049235f8              # double 2.864687
	.quad	0x401af1dabe27179c              # double 6.736186
	.quad	0x4021b4606748e475              # double 8.8522979999999993
	.quad	0x4008613660e51d26              # double 3.0474670000000001
	.quad	0x4016b353b4b2fa94              # double 5.6751240000000003
	.quad	0x3fcca686e7e62dc7              # double 0.223832
	.quad	0x401a2893b7d84902              # double 6.5396260000000002
	.quad	0x4021188461f9f01c              # double 8.5478850000000008
	.quad	0x3fd46f0cfe154435              # double 0.31927800000000001
	.quad	0x400fc04a72ead927              # double 3.9688919999999999
	.quad	0x40069e34330d7386              # double 2.827248
	.quad	0x4001fa12b5e529bb              # double 2.247106
	.quad	0x4023dbafd976ff3b              # double 9.9290760000000002
	.quad	0x3fec03dddb1209ee              # double 0.87547200000000003
	.quad	0x40219a6fe718a86d              # double 8.8016349999999992
	.quad	0x401283215fcc1872              # double 4.6280570000000001
	.quad	0x3fe4b586ca89fc6e              # double 0.64715900000000004
	.quad	0x3ff20ed5f138bce0              # double 1.128622
	.quad	0x4020b7c06e19b90f              # double 8.3588900000000006
	.quad	0x40021ef30a4e379b              # double 2.2651119999999998
	.quad	0x3f7b0bbf50e34763              # double 0.0066030000000000004
	.quad	0x40118ad1d041cc53              # double 4.3855659999999999
	.quad	0x400eced6777079e6              # double 3.8509950000000002
	.quad	0x3f77e132b55ef1fe              # double 0.0058300000000000001
	.quad	0x40165ce9e5e24788              # double 5.5907359999999997
	.quad	0x401880c1b97353b5              # double 6.1257390000000003
	.quad	0x40205121ab4b72c5              # double 8.1584599999999998
	.quad	0x4022d26fe718a86d              # double 9.4110099999999992
	.quad	0x4016243675ddd2af              # double 5.5353640000000004
	.quad	0x401442263d816acf              # double 5.0645990000000003
	.quad	0x402072a715831f04              # double 8.2239310000000003
	.quad	0x3ffd9a426bb55ac0              # double 1.8501609999999999
	.quad	0x4023ee5ba6efc372              # double 9.9655430000000003
	.quad	0x4020a00d1b71758e              # double 8.3125999999999998
	.quad	0x4018e1fb82c2bd7f              # double 6.2206859999999997
	.quad	0x4016bb6390c91080              # double 5.6829970000000003
	.quad	0x40106913e81450f0              # double 4.1026150000000001
	.quad	0x401a838476f2a5a4              # double 6.6284349999999996
	.quad	0x40060ff9f87f023f              # double 2.7578010000000002
	.quad	0x401200364388ebcc              # double 4.5002069999999996
	.quad	0x4012ef32bdc26dce              # double 4.7335919999999998
	.quad	0x40199888f861a60d              # double 6.3989599999999998
	.quad	0x4023031d712a0ec7              # double 9.5060839999999995
	.quad	0x4016bf8b9baa1512              # double 5.6870560000000001
	.quad	0x4021395ce9e5e248              # double 8.6120370000000008
	.quad	0x3ff91f30e7ff583a              # double 1.5701149999999999
	.quad	0x3ff81e83e425aee6              # double 1.50745
	.quad	0x40176829068986fd              # double 5.8517190000000001
	.quad	0x3ff751bf7ad4b274              # double 1.4574579999999999
	.quad	0x3fd29b2c40d0aaa8              # double 0.29072100000000001
	.quad	0x40231a9e0a41a262              # double 9.5519870000000004
	.quad	0x40201bb8a19c9d5a              # double 8.0541429999999998
	.quad	0x3ff2a01de2691644              # double 1.164091
	.quad	0x40166856a37ac3eb              # double 5.6018929999999996
	.quad	0x401da64e054690de              # double 7.412407
	.quad	0x402272048e043a21              # double 9.2226909999999993
	.quad	0x3fe214b167ec7864              # double 0.56502600000000003
	.quad	0x3fe9a84167a95c85              # double 0.80178899999999997
	.quad	0x40233cb4f1e4b44a              # double 9.6185679999999998
	.quad	0x401c53c7d5ed06ff              # double 7.081817
	.quad	0x401c9285a921ccd9              # double 7.1430879999999997
	.quad	0x401a9a24cc6822ff              # double 6.650531
	.quad	0x401bafaca3619978              # double 6.921557
	.quad	0x3ff8cc319c5a3e3a              # double 1.549852
	.quad	0x3fd7ea63b688bda9              # double 0.37368099999999999
	.quad	0x401e822467be553b              # double 7.6270920000000002
	.quad	0x4019068986fcdee3              # double 6.2563839999999997
	.quad	0x401e7ccee5abc0e4              # double 7.6218830000000004
	.quad	0x40141d35eb7457c1              # double 5.0285260000000003
	.quad	0x40125929ed3953df              # double 4.5870740000000003
	.quad	0x3fe934b0e1b4bb5e              # double 0.78768199999999999
	.quad	0x40227d931ca7d673              # double 9.2452629999999996
	.quad	0x40156372606fac60              # double 5.3471159999999998
	.quad	0x401a1a41a261bf38              # double 6.5256410000000002
	.quad	0x402348c5436b8f9b              # double 9.6421299999999998
	.quad	0x400e1d3f5b5fa227              # double 3.764281
	.quad	0x40239da0168b5cc0              # double 9.807862
	.quad	0x400f77e80389f83c              # double 3.933548
	.quad	0x400336577531db44              # double 2.4015339999999998
	.quad	0x40151f676ea4228a              # double 5.2806680000000004
	.quad	0x40223e940357a355              # double 9.122223
	.quad	0x401daf3f0fe047d4              # double 7.4211390000000002
	.quad	0x4020a52263d816ad              # double 8.3225280000000001
	.quad	0x40210b254e6e221d              # double 8.5217690000000008
	.quad	0x4017df212d773190              # double 5.9679000000000002
	.quad	0x401a36295208e150              # double 6.5528919999999999
	.quad	0x401c7e4cd7492791              # double 7.1233399999999998
	.quad	0x40196ad9ad85dfa8              # double 6.3543459999999996
	.quad	0x4014b5464dc22ab2              # double 5.1770259999999997
	.quad	0x400239a7c17a8933              # double 2.278152
	.quad	0x3fdc86bdf4c2b51c              # double 0.44572400000000001
	.quad	0x400727418d6909af              # double 2.8941680000000001
	.quad	0x4019c3be22e5de16              # double 6.4411550000000002
	.quad	0x401b5d4cb9ecf638              # double 6.841113
	.quad	0x4023a05c24c404a7              # double 9.8132029999999996
	.quad	0x4009a2539756c93a              # double 3.2042609999999998
	.quad	0x40013604189374bc              # double 2.1513749999999998
	.quad	0x400cec4c5974e65c              # double 3.61538
	.quad	0x3fe329930be0ded3              # double 0.59882500000000005
	.quad	0x401fd099e0e73605              # double 7.9537120000000003
	.quad	0x401d89f51697f1fa              # double 7.3847240000000003
	.quad	0x3fc6ce91c8eabffd              # double 0.178179
	.quad	0x401389dbec2480e9              # double 4.8846280000000002
	.quad	0x40093e889c1b5419              # double 3.1555339999999998
	.quad	0x401e65bf6a0dbad4              # double 7.5993630000000003
	.quad	0x4018463ae2541d8f              # double 6.0685840000000004
	.quad	0x4018adf2a9d627bf              # double 6.1698709999999997
	.quad	0x4013e85c67dfe32a              # double 4.976915
	.quad	0x3fc7550ca1cef241              # double 0.182283
	.quad	0x4023a61ef73c0c20              # double 9.8244550000000004
	.quad	0x400db46cb966be7b              # double 3.713098
	.quad	0x4016420f2becedd5              # double 5.5645110000000004
	.quad	0x4003972474538ef3              # double 2.4487999999999999
	.quad	0x401b9253da72a7bd              # double 6.8928979999999997
	.quad	0x40150532a497fa5d              # double 5.2550759999999999
	.quad	0x401f52a023209678              # double 7.8306889999999995
	.quad	0x3fd9077036c9c0a9              # double 0.39107900000000001
	.quad	0x400c53b8e4b87bdd              # double 3.54088
	.quad	0x3fe794c447c30d30              # double 0.73690999999999995
	.quad	0x3fdd299524bfd2e9              # double 0.45566299999999998
	.quad	0x400a05de15ca6ca0              # double 3.2528649999999999
	.quad	0x4017ebb59ddc1e79              # double 5.9801849999999996
	.quad	0x40148ba908a265f1              # double 5.136387
	.quad	0x4009340b34e7685a              # double 3.1504120000000002
	.quad	0x401aab6e0d23d4f1              # double 6.6674119999999997
	.quad	0x4010f20b3d4ae42a              # double 4.2363710000000001
	.quad	0x3ff44bbe4473cd57              # double 1.268492
	.quad	0x402032d16b97fe8f              # double 8.0992540000000002
	.quad	0x40130dab5c39bcba              # double 4.7633489999999998
	.quad	0x4014b5d63886594b              # double 5.177575
	.quad	0x402181f340d4dc66              # double 8.7538090000000004
	.quad	0x4012198b71b8aa00              # double 4.5249459999999999
	.quad	0x40068977c88e79ab              # double 2.817123
	.quad	0x401bee22e5de15ca              # double 6.9825549999999996
	.quad	0x4005caef2c732592              # double 2.7240890000000002
	.quad	0x402226f9335d249e              # double 9.0761199999999995
	.quad	0x3fdcb9fdbd2fa0d7              # double 0.44885199999999997
	.quad	0x401acdd095af294e              # double 6.7009910000000001
	.quad	0x401f9b0dd82fd75e              # double 7.9014199999999999
	.quad	0x401b9cf9e3864cb6              # double 6.9032970000000002
	.quad	0x401c72ed783dff3f              # double 7.1122339999999999
	.quad	0x40101d8e0008637c              # double 4.0288620000000002
	.quad	0x3fccf251c193b3a7              # double 0.22614500000000001
	.quad	0x3ff7c65f9591cd1c              # double 1.4859309999999999
	.quad	0x40146a0ba1f4b1ee              # double 5.1035599999999999
	.quad	0x4015f9ccb7d41744              # double 5.4939450000000001
	.quad	0x3ff770ed3d859c8d              # double 1.4650700000000001
	.quad	0x401e976f2a5a469d              # double 7.6478849999999996
	.quad	0x40073a93af74cd31              # double 2.9036019999999998
	.quad	0x400cf604189374bc              # double 3.6201249999999998
	.quad	0x3fdefc8b0079a283              # double 0.48416399999999998
	.quad	0x4020d0427418d691              # double 8.4067570000000007
	.quad	0x40229f603925bb7b              # double 9.3112809999999993
	.quad	0x4020d115592d98bf              # double 8.4083659999999991
	.quad	0x3ff583efae7924af              # double 1.344711
	.quad	0x401efacaff6d3309              # double 7.7449149999999997
	.quad	0x4019b5810624dd2f              # double 6.4272499999999999
	.quad	0x4014b20642396074              # double 5.1738520000000001
	.quad	0x4002af566490a351              # double 2.3356140000000001
	.quad	0x40209d49f94855da              # double 8.3072049999999997
	.quad	0x401d083cafb3b752              # double 7.2580439999999999
	.quad	0x40160abf33871609              # double 5.5104949999999997
	.quad	0x401f9e8576cce5f7              # double 7.9048059999999997
	.quad	0x401f15ed4a1ad645              # double 7.7714129999999999
	.quad	0x401870e30446b69e              # double 6.1102410000000003
	.quad	0x3ff37ca31e7d9989              # double 1.217929
	.quad	0x401062c83ec892ab              # double 4.0964669999999996
	.quad	0x3ff90cf398e97072              # double 1.5656620000000001
	.quad	0x401c7137f38c5437              # double 7.1105650000000002
	.quad	0x401109cae21101b0              # double 4.259563
	.quad	0x4004a25072085b18              # double 2.5792549999999999
	.quad	0x4014320ee8d10f52              # double 5.0488850000000003
	.quad	0x4023002cb20fb225              # double 9.5003410000000005
	.quad	0x3fffc6ed245b291c              # double 1.9860660000000001
	.quad	0x401fe4c48adeebb3              # double 7.9734059999999997
	.quad	0x4022846b26bf876a              # double 9.2586300000000001
	.quad	0x3fce69f05ea24cc7              # double 0.23760800000000001
	.quad	0x4005a0b3d4ae429e              # double 2.703468
	.quad	0x4018c89e34330d74              # double 6.1959160000000004
	.quad	0x400a02e44b6e935c              # double 3.2514120000000002
	.quad	0x40158cd63cb81733              # double 5.3875359999999999
	.quad	0x4005eeb91b3f20a7              # double 2.7415639999999999
	.quad	0x40044b31c219eb64              # double 2.5367160000000002
	.quad	0x402268a63305100a              # double 9.2043929999999996
	.quad	0x401b3de481f53826              # double 6.8104420000000001
	.quad	0x401970e9d51b4fe8              # double 6.3602670000000003
	.quad	0x401601f6cacd184c              # double 5.5019179999999999
	.quad	0x401fa8aa00192a73              # double 7.9147109999999996
	.quad	0x401475e353f7ced9              # double 5.1151249999999999
	.quad	0x401f83343fa2ad3f              # double 7.8781290000000003
	.quad	0x40222089a0275254              # double 9.0635499999999993
	.quad	0x4012753bd1676641              # double 4.6144860000000003
	.quad	0x401e61886df82b1f              # double 7.5952469999999996
	.quad	0x4016a252ce032db2              # double 5.6585190000000001
	.quad	0x40186e553ac4f7ec              # double 6.1077469999999998
	.quad	0x4017a59f6ec5b079              # double 5.9117410000000001
	.quad	0x4011d7631b584b1b              # double 4.4603390000000003
	.quad	0x3ff93b2edfe75bc4              # double 1.5769489999999999
	.quad	0x40027631b584b1ab              # double 2.307712
	.quad	0x402151ff2e48e8a7              # double 8.6601499999999998
	.quad	0x3fed6c3116228134              # double 0.91945699999999996
	.quad	0x400eed855970b49e              # double 3.865977
	.quad	0x3fcbacd5b6805a2d              # double 0.21621199999999999
	.quad	0x4018584a0e410b63              # double 6.08622
	.quad	0x400cbbcec84f8f8a              # double 3.5917029999999999
	.quad	0x3ffa5c91d14e3bcd              # double 1.6476
	.quad	0x3ff8455fbb517a46              # double 1.516937
	.quad	0x401d66e43aa79bbb              # double 7.3504800000000001
	.quad	0x4012addc6195464e              # double 4.6697860000000002
	.quad	0x4004743bf727136a              # double 2.5567549999999999
	.quad	0x40119a1cef240faa              # double 4.4005010000000002
	.quad	0x4004586e3b46fdeb              # double 2.5431789999999999
	.quad	0x4014ee10060780fe              # double 5.2324830000000002
	.quad	0x4019a6a11ec918e3              # double 6.4127239999999999
	.quad	0x3ff77021d10b1fef              # double 1.4648760000000001
	.quad	0x3fe27a9e2bcf91a3              # double 0.57746799999999998
	.quad	0x400047ef177a7009              # double 2.0351240000000002
	.quad	0x3fa5197a24894c44              # double 0.041209999999999997
	.quad	0x4021359d3458cd21              # double 8.6047150000000006
	.quad	0x40107114d2f5dbba              # double 4.1104310000000002
	.quad	0x400560ae10492360              # double 2.6722070000000002
	.quad	0x4006ae0a84be4042              # double 2.834981
	.quad	0x3fdd18116ebd4cfd              # double 0.454594
	.quad	0x401f9f8012dfd695              # double 7.9057620000000001
	.quad	0x3fc2fa48301a79ff              # double 0.14826300000000001
	.quad	0x4006844417870542              # double 2.8145829999999998
	.quad	0x402122e2fbe33acd              # double 8.5681379999999994
	.quad	0x401d868a0d349be9              # double 7.381386
	.quad	0x3ffba3aafff36ac6              # double 1.7274579999999999
	.quad	0x3fea87e5a78f25a2              # double 0.82908899999999996
	.quad	0x400e5ebf22c01e69              # double 3.7962630000000002
	.quad	0x40187c55000c953a              # double 6.1214180000000002
	.quad	0x4007c8cf7caa758a              # double 2.973052
	.quad	0x401d578dd616f86a              # double 7.335502
	.quad	0x401faa14cec41dd2              # double 7.9160950000000003
	.quad	0x40006b75ea67e847              # double 2.0524710000000002
	.quad	0x4017cdb8fde2ef4e              # double 5.950901
	.quad	0x400809a9973d9ec7              # double 3.004718
	.quad	0x401dc21dda059a74              # double 7.4395670000000003
	.quad	0x40155cfb3311a544              # double 5.340802
	.quad	0x4023cfe49b1fab97              # double 9.906041
	.quad	0x400f3fd1dcd7060c              # double 3.9061620000000001
	.quad	0x402269dcd7060bb3              # double 9.2067630000000005
	.quad	0x40111285ec3dab5c              # double 4.2680889999999998
	.quad	0x3fec8815e39713ad              # double 0.89161199999999996
	.quad	0x400a98e864020818              # double 3.324662
	.quad	0x4015ea6eb91b3f21              # double 5.4789380000000003
	.quad	0x400b006c00da1a93              # double 3.3752059999999999
	.quad	0x401a933b96af038e              # double 6.6437819999999999
	.quad	0x400450d9d7774aba              # double 2.5394779999999999
	.quad	0x3fd57c6b8b69552e              # double 0.33571899999999999
	.quad	0x3fe52fb5d031055c              # double 0.66207400000000005
	.quad	0x40097c60029f16b1              # double 3.18573
	.quad	0x3ff42d6dc1a47a9e              # double 1.261091
	.quad	0x401131b8ed1bf7ad              # double 4.2985569999999997
	.quad	0x4022ac267839cd81              # double 9.3362309999999997
	.quad	0x4019441bb8c32a8d              # double 6.3165120000000003
	.quad	0x4012d1cac083126f              # double 4.7048750000000004
	.quad	0x3fd64e3ffef39086              # double 0.348526
	.quad	0x4019b1650a45d420              # double 6.4232370000000003
	.quad	0x3fc44840e1719f80              # double 0.15845500000000001
	.quad	0x40105dbf0563ed0f              # double 4.0915489999999997
	.quad	0x3ffc6072d1aeb3dd              # double 1.773547
	.quad	0x4013e681669ced0b              # double 4.9751029999999998
	.quad	0x40113c4007570c56              # double 4.3088379999999997
	.quad	0x40019a6d698fe692              # double 2.2004039999999998
	.quad	0x40235accd530489d              # double 9.6773439999999997
	.quad	0x401dbf151e75360d              # double 7.436604
	.quad	0x40228814727dcbde              # double 9.2657810000000005
	.quad	0x3ff6e327ed84d339              # double 1.430458
	.quad	0x400c627f1b691212              # double 3.5480939999999999
	.quad	0x3fd39d51b4fe79ee              # double 0.306477
	.quad	0x401c4ea6c1a048e0              # double 7.0768079999999998
	.quad	0x4023c9813879c411              # double 9.8935639999999995
	.quad	0x4020e7aca3619978              # double 8.4524889999999999
	.quad	0x401a175b81301648              # double 6.5228099999999998
	.quad	0x3fe8e97f1f9acffa              # double 0.77850299999999995
	.quad	0x3ff255208e150119              # double 1.145783
	.quad	0x401cc35e310dbf05              # double 7.1907889999999997
	.quad	0x401431b152f3c2db              # double 5.0485280000000001
	.quad	0x4019d1a9b8cb8e08              # double 6.4547489999999996
	.quad	0x40230b97fe8ee6b8              # double 9.5226439999999996
	.quad	0x401bab167ec7863c              # double 6.9170780000000001
	.quad	0x4010d80389f83be6              # double 4.2109509999999997
	.quad	0x4012e28d002e2329              # double 4.721241
	.quad	0x400ace115592d98c              # double 3.350619
	.quad	0x40065f705857afea              # double 2.7966009999999999
	.quad	0x401b51d9f4d37c13              # double 6.8299329999999996
	.quad	0x4010983947496aad              # double 4.1486559999999999
	.quad	0x40201d3ed527e521              # double 8.0571199999999994
	.quad	0x4020bbb1d0c80410              # double 8.3665909999999997
	.quad	0x401887e414e7ee91              # double 6.1327059999999998
	.quad	0x4015e0b955f7835a              # double 5.4694570000000002
	.quad	0x3fa17fc7607c419a              # double 0.034178
	.quad	0x40127fee6fb4c3c2              # double 4.6249330000000004
	.quad	0x3ffbba4e7ab75643              # double 1.732985
	.quad	0x3fe1c42a66dbd72c              # double 0.55519600000000002
	.quad	0x4015d59146e4c0df              # double 5.4585619999999997
	.quad	0x401cd6c7eae5bc88              # double 7.2097470000000001
	.quad	0x4012af4ba51a005c              # double 4.6711869999999998
	.quad	0x400d78d823422468              # double 3.6840060000000001
	.quad	0x400216bfca85cab0              # double 2.2611080000000001
	.quad	0x401735d4a5df223a              # double 5.8025690000000001
	.quad	0x3fd83b213e3e2930              # double 0.37860899999999997
	.quad	0x4004dfb480a5accd              # double 2.6092309999999999
	.quad	0x4015a1a08bfc2225              # double 5.4078390000000001
	.quad	0x402344db7ae5796c              # double 9.634487
	.quad	0x40192399b2c40d0b              # double 6.2847660000000003
	.quad	0x40225eb441bb8c33              # double 9.1849690000000006
	.quad	0x401da3bbc6eb0b7c              # double 7.4098959999999998
	.quad	0x40069a9d1f601798              # double 2.8254950000000001
	.quad	0x3fdb3cddd6e04c06              # double 0.42559000000000002
	.quad	0x401f350268900c52              # double 7.8017669999999999
	.quad	0x4016a9f87f023e9f              # double 5.6659870000000003
	.quad	0x400d60956c0d6f54              # double 3.6721599999999999
	.quad	0x4014a88e368f0846              # double 5.1646049999999999
	.quad	0x4015f4662bae03b4              # double 5.4886710000000001
	.quad	0x40221d4a7f8012e0              # double 9.0572090000000003
	.quad	0x401b26c6583e8577              # double 6.7878660000000002
	.quad	0x3fe0dddb1209edc0              # double 0.52708200000000005
	.quad	0x4016736da87a072d              # double 5.6127229999999999
	.quad	0x4005d3d29563a9f4              # double 2.7284290000000002
	.quad	0x40158a9c12f09d8c              # double 5.3853609999999996
	.quad	0x4021c77bbf93ff26              # double 8.8896160000000002
	.quad	0x400d058d5842b735              # double 3.6277110000000001
	.quad	0x3ffba9b8cb8e086c              # double 1.728936
	.quad	0x40177031055b8994              # double 5.8595620000000004
	.quad	0x40000af6837f7be1              # double 2.0053529999999999
	.quad	0x401d3432441fea81              # double 7.3009729999999999
	.quad	0x4018cf9d6f112fd3              # double 6.2027489999999998
	.quad	0x402034d65e460675              # double 8.1031980000000008
	.quad	0x3fecea9c560c7c0f              # double 0.90363899999999997
	.quad	0x4015f87b139c94f7              # double 5.4926570000000003
	.quad	0x4023789f40a2877f              # double 9.7355900000000001
	.quad	0x401faa1be2b4959e              # double 7.9161219999999997
	.quad	0x400073b6cbd987c6              # double 2.0565009999999999
	.quad	0x4017c95e17e34b94              # double 5.9466479999999997
	.quad	0x401c3d1351159c49              # double 7.0596439999999996
	.quad	0x40144acc92146a1a              # double 5.0730459999999997
	.quad	0x4022a5b2f661f18d              # double 9.3236310000000007
	.quad	0x40217ecfc829cfdd              # double 8.7476789999999998
	.quad	0x401815a07b352a84              # double 6.0211199999999998
	.quad	0x4006615ca6ca03c5              # double 2.7975400000000001
	.quad	0x40213a426bb55ac0              # double 8.6137879999999996
	.quad	0x3f7f91600f34506a              # double 0.0077070000000000003
	.quad	0x401913eb7cbb3c82              # double 6.2694530000000004
	.quad	0x40237ec4c5974e66              # double 9.7475950000000005
	.quad	0x4023475dbb9cf9a0              # double 9.6393869999999993
	.quad	0x3ff995d5f56a7ac8              # double 1.599081
	.quad	0x402343b0e5e67946              # double 9.6322089999999996
	.quad	0x401f89ecf6380022              # double 7.8846930000000004
	.quad	0x4021d076188b1141              # double 8.9071510000000007
	.quad	0x4019b28dc981beb2              # double 6.4243690000000004
	.quad	0x40202e1d8622c450              # double 8.0900689999999997
	.quad	0x3fed6cca2db61bb0              # double 0.91952999999999996
	.quad	0x401cdc200c0f01fc              # double 7.2149660000000004
	.quad	0x3fee34bd76ee73e7              # double 0.94393800000000005
	.quad	0x4018e0a4a05dd8f9              # double 6.2193779999999999
	.quad	0x4015d061c79b34a4              # double 5.4534979999999997
	.quad	0x400969eecbfb15b5              # double 3.1767249999999998
	.quad	0x402318759253543b              # double 9.5477720000000001
	.quad	0x3fe91728a6117721              # double 0.78407700000000002
	.quad	0x400cd4c3c18b502b              # double 3.6038890000000001
	.quad	0x400910e453d20f2c              # double 3.133248
	.quad	0x400756501e2584f5              # double 2.9171450000000001
	.quad	0x4004f3a14cec41dd              # double 2.61896
	.quad	0x40229f4c2b51bd62              # double 9.3111280000000001
	.quad	0x401e5bdb1a6d6990              # double 7.5897030000000001
	.quad	0x400a29e6687f455a              # double 3.2704589999999998
	.quad	0x4015301f31f46ed2              # double 5.2969939999999998
	.quad	0x401736d506573216              # double 5.803547
	.quad	0x400d98eda22f6a51              # double 3.6996720000000001
	.quad	0x4020224bba12b5e5              # double 8.0669839999999997
	.quad	0x400f7a4b5568e821              # double 3.934714
	.quad	0x400e834dad31fcd2              # double 3.8141129999999999
	.quad	0x401d77564302b40f              # double 7.3665399999999996
	.quad	0x3ff4599fe43675de              # double 1.271881
	.quad	0x400303a860dcb9aa              # double 2.3767860000000001
	.quad	0x4008952da98676a7              # double 3.0728409999999999
	.quad	0x400ad6323bbc6eb1              # double 3.3545880000000001
	.quad	0x401560d9d7774aba              # double 5.3445809999999998
	.quad	0x4014ea4052d666aa              # double 5.2287610000000004
	.quad	0x400f8f9335d249e4              # double 3.9451049999999999
	.quad	0x400e31ff7164c72a              # double 3.774413
	.quad	0x4014ca8b8f14db59              # double 5.1977979999999997
	.quad	0x4021367f6f4be836              # double 8.6064410000000002
	.quad	0x401f76fdeb52c9d1              # double 7.8662029999999996
	.quad	0x400780ab71327243              # double 2.937827
	.quad	0x401ca321e603d578              # double 7.1593090000000004
	.quad	0x4021f3de6149c6f3              # double 8.9763059999999992
	.quad	0x401e68a82a5614e0              # double 7.6022040000000004
	.quad	0x4020ce7253da72a8              # double 8.4032160000000005
	.quad	0x401827c3504c48ae              # double 6.0388310000000001
	.quad	0x3ff6b4666ec9e237              # double 1.4190430000000001
	.quad	0x4003b381d7dbf488              # double 2.46265
	.quad	0x4011fd4f15e7c8d2              # double 4.4973720000000004
	.quad	0x401a375c0767d34e              # double 6.5540620000000001
	.quad	0x402005771001d5c3              # double 8.0106739999999999
	.quad	0x40185883ba3443d4              # double 6.0864399999999996
	.quad	0x40175dddb1209edc              # double 5.841666
	.quad	0x3fa312b1b36bd2b7              # double 0.037252
	.quad	0x401c743dccea28fe              # double 7.1135169999999999
	.quad	0x4020a65b8561d430              # double 8.3249169999999992
	.quad	0x4010eb0f6ad70e6f              # double 4.2295509999999998
	.quad	0x4006cfe79ee02a78              # double 2.8515160000000002
	.quad	0x400d2d5e071c53f4              # double 3.6471520000000002
	.quad	0x4017a0aa64c2f838              # double 5.9069000000000003
	.quad	0x4007e35ce1826677              # double 2.9860169999999999
	.quad	0x4020c01cd5f99c39              # double 8.3752200000000006
	.quad	0x3fe04bc05d52c16e              # double 0.50924700000000001
	.quad	0x4019df3ade225fa6              # double 6.4679979999999997
	.quad	0x401f360242d05f29              # double 7.8027430000000004
	.quad	0x4003508919ef954f              # double 2.4143240000000001
	.quad	0x3fe0c47a17f4128c              # double 0.52398400000000001
	.quad	0x400cff99c38b04ab              # double 3.6248049999999998
	.quad	0x3fda2036006d0d4a              # double 0.40821600000000002
	.quad	0x40103bc59b8023a7              # double 4.0583710000000002
	.quad	0x401a145dc8323359              # double 6.519889
	.quad	0x400442d2fe3f35a0              # double 2.532629
	.quad	0x400059f23465625a              # double 2.0439189999999998
	.quad	0x4021b5c4007570c5              # double 8.8550109999999993
	.quad	0x4022d97353b4b2fb              # double 9.4247080000000007
	.quad	0x4009c7d9988d2a20              # double 3.2225830000000002
	.quad	0x401b49357603925c              # double 6.8214930000000003
	.quad	0x400c89d0635a426c              # double 3.5672920000000001
	.quad	0x3feda658c4bd33d3              # double 0.92655600000000005
	.quad	0x402148d306a2b170              # double 8.6422349999999994
	.quad	0x4018f5a5fc7e6b40              # double 6.2398910000000001
	.quad	0x4005a916440f2389              # double 2.7075619999999998
	.quad	0x3ff9ec15d2d01c0d              # double 1.6201380000000001
	.quad	0x40036660a2014728              # double 2.4249890000000001
	.quad	0x40165787485e3da3              # double 5.585477
	.quad	0x40202096787ce960              # double 8.0636480000000006
	.quad	0x40206efb6dca07f6              # double 8.2167619999999992
	.quad	0x40226aa6b0d95140              # double 9.2083030000000007
	.quad	0x401c200abf76a2f5              # double 7.0312910000000004
	.quad	0x4013a8cda6e75ff6              # double 4.914847
	.quad	0x400e2b85a4f00ef1              # double 3.7712509999999999
	.quad	0x4022afbfe7e1fc09              # double 9.343261
	.quad	0x4013bb9a5a89b952              # double 4.9332060000000002
	.quad	0x40032bd09e12a51e              # double 2.3963939999999999
	.quad	0x401264113c68661b              # double 4.5977220000000001
	.quad	0x3ffe4a569b17481b              # double 1.893149
	.quad	0x4006c5510d38cda7              # double 2.846346
	.quad	0x40202a05bc01a36e              # double 8.0820749999999997
	.quad	0x3fcf30e7ff583a54              # double 0.24368000000000001
	.quad	0x400489ca18bd6627              # double 2.5672799999999998
	.quad	0x40230b762d83c6c9              # double 9.5223859999999991
	.quad	0x401befa15db3397e              # double 6.9840140000000002
	.quad	0x4010f31f46ed245b              # double 4.2374239999999999
	.quad	0x4023fe44b6e935b9              # double 9.9966179999999997
	.quad	0x401a009289dadfb5              # double 6.500559
	.quad	0x400ffc3a42f1ed18              # double 3.9981580000000001
	.quad	0x400b34751ce28ed6              # double 3.400614
	.quad	0x401037e62dc6e2a8              # double 4.054589
	.quad	0x40179a47a9e2bcf9              # double 5.9006639999999999
	.quad	0x3fc2a8e2e2b8c75c              # double 0.14577899999999999
	.quad	0x4007067620ee8d11              # double 2.878155
	.quad	0x401c11a3f4666eca              # double 7.0172270000000001
	.quad	0x40063225b749adc9              # double 2.774486
	.quad	0x4021b2ec0724b76f              # double 8.8494569999999992
	.quad	0x400ff44ed6fda837              # double 3.994291
	.quad	0x4016be4c0df58c09              # double 5.6858370000000003
	.quad	0x40235c06c00da1a9              # double 9.6797389999999996
	.quad	0x401efac258d5842b              # double 7.7448819999999995
	.quad	0x3ff2e80e06530058              # double 1.181654
	.quad	0x40197f2f123c42a6              # double 6.3742029999999996
	.quad	0x4023b625e99e94ab              # double 9.8557579999999997
	.quad	0x4013dc2ce4649907              # double 4.9650150000000002
	.quad	0x401300cc35ce1826              # double 4.7507789999999996
	.quad	0x4019f3c9abb01c93              # double 6.4880740000000001
	.quad	0x4005ff969e3c9689              # double 2.7497989999999999
	.quad	0x401bdddb5525cc42              # double 6.9666569999999997
	.quad	0x4009fe4bcad9ad86              # double 3.2491680000000001
	.quad	0x40166995ee136e72              # double 5.6031110000000002
	.quad	0x4016a4aec8d5c747              # double 5.6608229999999997
	.quad	0x3ff21da16616b54e              # double 1.132234
	.quad	0x400541986b9c304d              # double 2.6570290000000001
	.quad	0x4010038088509bfa              # double 4.0034200000000002
	.quad	0x4002ecf52b90a783              # double 2.3657020000000002
	.quad	0x40146583621fafc9              # double 5.0991340000000003
	.quad	0x4020083f705857b0              # double 8.0161090000000002
	.quad	0x401f4a1059ea5721              # double 7.8223279999999997
	.quad	0x401fa256bca5375d              # double 7.9085340000000003
	.quad	0x40213aba38759253              # double 8.6147019999999994
	.quad	0x4020b92cadddf43c              # double 8.3616689999999991
	.quad	0x400513825e13b18e              # double 2.6345260000000001
	.quad	0x4012d6644d877250              # double 4.7093670000000003
	.quad	0x40180d73860999dd              # double 6.0131360000000003
	.quad	0x3fee8f36694898f6              # double 0.954982
	.quad	0x3fe2e90ff9724745              # double 0.59094999999999998
	.quad	0x3fadb8130164840e              # double 0.058044999999999999
	.quad	0x40122d1bf7ad4b27              # double 4.5440519999999998
	.quad	0x4012912e40852b4e              # double 4.6417780000000004
	.quad	0x40220afcce1c5825              # double 9.0214599999999994
	.quad	0x3fe08aac96cc5fc0              # double 0.51692800000000005
	.quad	0x40155bf444e0daa1              # double 5.3397990000000002
	.quad	0x401dcbe48a58b3f6              # double 7.4491139999999998
	.quad	0x4014e5edd052934b              # double 5.2245400000000002
	.quad	0x4001baac53b0813d              # double 2.2161490000000001
	.quad	0x400e1ad6451b9303              # double 3.7631039999999998
	.quad	0x4013be6a76965f52              # double 4.9359529999999996
	.quad	0x401e73e5753a3ec0              # double 7.6131799999999998
	.quad	0x4017729d40ee06d9              # double 5.8619279999999998
	.quad	0x40210845fe111277              # double 8.516159
	.quad	0x3fec85510d38cda7              # double 0.89127400000000001
	.quad	0x4000b9cbee807bbb              # double 2.0907209999999998
	.quad	0x400c466ba493c89f              # double 3.5343849999999999
	.quad	0x4017f2fcefaa4767              # double 5.9872930000000002
	.quad	0x3f92ed352220bc38              # double 0.018482999999999999
	.quad	0x4005ea2fcefaa476              # double 2.7393489999999998
	.quad	0x4011839b8887229f              # double 4.3785230000000004
	.quad	0x400944ddb5525cc4              # double 3.1586259999999999
	.quad	0x4014074d1633482c              # double 5.0071300000000001
	.quad	0x40118e4d1a650614              # double 4.3889659999999999
	.quad	0x401acbaf965b20b8              # double 6.698912
	.quad	0x4021eb0ec3116228              # double 8.9590969999999999
	.quad	0x3fffc87a8d64d7f1              # double 1.986445
	.quad	0x401f433b5393250b              # double 7.8156559999999997
	.quad	0x40212115bdd76684              # double 8.5646190000000004
	.quad	0x4006c358298cc144              # double 2.845383
	.quad	0x40032217d2849cb2              # double 2.3916469999999999
	.quad	0x4003e746cb966be8              # double 2.4879280000000001
	.quad	0x3ffde5c1c6088d6d              # double 1.8685929999999999
	.quad	0x3ffdc379314445aa              # double 1.860223
	.quad	0x401452a77a2cecc8              # double 5.0807169999999999
	.quad	0x40061248d7e02646              # double 2.758928
	.quad	0x3ffad6ebd4cfd08d              # double 1.6774709999999999
	.quad	0x40150004b7f5a533              # double 5.2500179999999999
	.quad	0x40223de939eadd59              # double 9.1209199999999999
	.quad	0x4012916d2aa5c5f8              # double 4.6420180000000002
	.quad	0x4006e74080f98fa3              # double 2.8629159999999998
	.quad	0x400fe0d23d4f15e8              # double 3.9847760000000001
	.quad	0x4018fcbab649d389              # double 6.2468060000000003
	.quad	0x4020da0afa2f05a7              # double 8.4258649999999999
	.quad	0x3ff47b320535c9e6              # double 1.2800769999999999
	.quad	0x4011384c271fff7a              # double 4.3049780000000002
	.quad	0x4016c9a2834d26fa              # double 5.6969089999999998
	.quad	0x40125e28240b7803              # double 4.5919499999999998
	.quad	0x3ff49a9003eea20a              # double 1.2877350000000001
	.quad	0x4020b1bbadc0980b              # double 8.3471349999999997
	.quad	0x40160c1f42bb6673              # double 5.511838
	.quad	0x3ff91f2452c59fb2              # double 1.570103
	.quad	0x40206411e42e1262              # double 8.195449
	.quad	0x401074906034f3fe              # double 4.1138320000000004
	.quad	0x3fefe8a0d349be90              # double 0.99714700000000001
	.quad	0x4009596312f4cf4a              # double 3.1686459999999999
	.quad	0x4008fdb3bfb58d15              # double 3.1238779999999999
	.quad	0x4001fc3b4f616723              # double 2.2481599999999999
	.quad	0x4015e69f8c21e1d2              # double 5.4752179999999999
	.quad	0x4020e1b024f6598e              # double 8.4407969999999999
	.quad	0x40232665bea0ba1f              # double 9.5749949999999994
	.quad	0x400fb2ddbdb5d895              # double 3.9623370000000002
	.quad	0x4015ccd7060bb2bc              # double 5.4500390000000003
	.quad	0x4008f94b7b28954a              # double 3.1217259999999998
	.quad	0x4005b1697f1f9ad0              # double 2.711627
	.quad	0x402330fcb4f1e4b4              # double 9.5956779999999994
	.quad	0x401bdbef49cf56eb              # double 6.9647800000000002
	.quad	0x3ff49c67dfe32a06              # double 1.2881849999999999
	.quad	0x4014fb1a6d698fe7              # double 5.2452180000000004
	.quad	0x40031ed9dfdac68b              # double 2.3900640000000002
	.quad	0x400da8f8e7ddca4b              # double 3.707506
	.quad	0x401b98fb00bcbe62              # double 6.8993950000000002
	.quad	0x3ffa474fb549f948              # double 1.6424099999999999
	.quad	0x40079d53cddd6e05              # double 2.9518200000000001
	.quad	0x401be7a7c9de0503              # double 6.9762259999999996
	.quad	0x4007d044f1a1986c              # double 2.9766940000000002
	.quad	0x3ffc6ac42e9899bf              # double 1.7760659999999999
	.quad	0x4022a51697f1f9ad              # double 9.322438
	.quad	0x40110178b3700475              # double 4.2514370000000001
	.quad	0x400373cb3e5753a4              # double 2.43154
	.quad	0x401da59ea57214f0              # double 7.4117379999999997
	.quad	0x40217ccfaeff5c6c              # double 8.7437719999999998
	.quad	0x401475d744f5d356              # double 5.1150789999999997
	.quad	0x4005f9c94f69ca9f              # double 2.746966
	.quad	0x401220d5629d840a              # double 4.5320640000000001
	.quad	0x3ffb4dfdef8487ba              # double 1.7065410000000001
	.quad	0x3fc4777079e59f2c              # double 0.15989500000000001
	.quad	0x401f01db0142f61f              # double 7.7518120000000001
	.quad	0x40035dbca9691a76              # double 2.4207700000000001
	.quad	0x400dd6c508b32ce9              # double 3.7298680000000002
	.quad	0x3fffc988094e5d5b              # double 1.986702
	.quad	0x4016ffbca1059ea5              # double 5.7497429999999996
	.quad	0x4017f28e4fb97bb7              # double 5.9868709999999998
	.quad	0x3fd501eeed8904f7              # double 0.32824300000000001
	.quad	0x3ff88ce91c8eac00              # double 1.534402
	.quad	0x400a6266772d5e07              # double 3.298047
	.quad	0x3fe46ca25529fe00              # double 0.63826099999999997
	.quad	0x4022774b1ee24357              # double 9.2329950000000007
	.quad	0x401767e5eaab0425              # double 5.8514629999999999
	.quad	0x4010c7d8cf398e97              # double 4.195163
	.quad	0x402156612839042e              # double 8.6687100000000008
	.quad	0x4011e6451b93037d              # double 4.4748729999999997
	.quad	0x3ff99a1b9f98b71c              # double 1.6001240000000001
	.quad	0x4020c6527a20578e              # double 8.3873479999999994
	.quad	0x401770fe47991bc5              # double 5.8603449999999997
	.quad	0x4018d54d1e96c3fc              # double 6.2083019999999998
	.quad	0x4012683cafb3b752              # double 4.6017939999999999
	.quad	0x4001f926c7eae5bd              # double 2.2466560000000002
	.quad	0x4003c2b734b51373              # double 2.4700760000000002
	.quad	0x4023d1dece571088              # double 9.9099029999999999
	.quad	0x3fee57e889c1b542              # double 0.94823100000000005
	.quad	0x3ff237574f722e1b              # double 1.1385110000000001
	.quad	0x401facaff6d33094              # double 7.9186399999999999
	.quad	0x401fc8611fd5885d              # double 7.9456829999999998
	.quad	0x40213c49fd7a13c2              # double 8.6177519999999994
	.quad	0x3ff408dc11e42e12              # double 1.2521629999999999
	.quad	0x401926c54bcf0b6b              # double 6.2878619999999996
	.quad	0x401d6b6f9fcb0c02              # double 7.3549179999999996
	.quad	0x401795ec3dab5c3a              # double 5.8964090000000002
	.quad	0x4018c65ecc3e3194              # double 6.193721
	.quad	0x401750f7b9e060fe              # double 5.8290699999999998
	.quad	0x40214086df82b1f7              # double 8.6260290000000008
	.quad	0x4023bd26b723ee1c              # double 9.8694360000000003
	.quad	0x3fde6965f5275eea              # double 0.47518300000000002
	.quad	0x3ff702f944241c3f              # double 1.438226
	.quad	0x4020e5350092ccf7              # double 8.4476700000000005
	.quad	0x4021bd07a6bd6e8b              # double 8.8691990000000001
	.quad	0x401df28e0c9d9d34              # double 7.4868699999999997
	.quad	0x3fd23a8a3f8982cb              # double 0.28482299999999999
	.quad	0x402075d441355476              # double 8.2301350000000006
	.quad	0x3fda95d4e8fb00bd              # double 0.41539500000000001
	.quad	0x40199310129cbab6              # double 6.3936159999999997
	.quad	0x4018dd6cb5350093              # double 6.2162350000000002
	.quad	0x401460d51f81a587              # double 5.094563
	.quad	0x400247219220ff54              # double 2.284732
	.quad	0x3ffff8ad25679896              # double 1.9982120000000001
	.quad	0x3ff0ec8b43958106              # double 1.05775
	.quad	0x4014d909aed56b01              # double 5.211951
	.quad	0x401d0290257c914b              # double 7.2525029999999999
	.quad	0x3ff97405f6ba0621              # double 1.5908260000000001
	.quad	0x3ff252be48a58b3f              # double 1.1452009999999999
	.quad	0x401b902e6644d877              # double 6.8908019999999999
	.quad	0x400154128bf3bea9              # double 2.1660509999999999
	.quad	0x4023ab00ffda4053              # double 9.8339920000000002
	.quad	0x3fe7772f76e6106b              # double 0.73329900000000003
	.quad	0x401fa20d130df9be              # double 7.9082530000000002
	.quad	0x4016bdc69f8c21e2              # double 5.6853280000000002
	.quad	0x40086b9c304ccee6              # double 3.0525440000000001
	.quad	0x401d0e2328f9f44d              # double 7.2638059999999998
	.quad	0x4007da8a3f8982cb              # double 2.9817089999999999
	.quad	0x40016c625e99e94b              # double 2.1779220000000001
	.quad	0x401f36cdaf4adbc6              # double 7.8035189999999997
	.quad	0x3fd6eb95e5aff2a1              # double 0.35812899999999998
	.quad	0x4014d80d801b4352              # double 5.2109889999999996
	.quad	0x4010585e3da2f8be              # double 4.0862970000000001
	.quad	0x4023279314445aa3              # double 9.5772940000000001
	.quad	0x400479591cd1c7de              # double 2.5592519999999999
	.quad	0x3fe7b20535c9e668              # double 0.74048099999999994
	.quad	0x4015467f0aa21a72              # double 5.3188440000000003
	.quad	0x400aaf47304039ac              # double 3.335585
	.quad	0x3fbe2c2374794ea0              # double 0.11786099999999999
	.quad	0x3fd37add15f02c4d              # double 0.30437399999999998
	.quad	0x4005b8a009f62307              # double 2.7151489999999998
	.quad	0x4002c6d0d49949e9              # double 2.3470780000000002
	.quad	0x401ef4ea8da7f3cf              # double 7.7391759999999996
	.quad	0x401ef8f8e7ddca4b              # double 7.7431369999999999
	.quad	0x400fc1e3eaf6837f              # double 3.9696729999999998
	.quad	0x40200fff36ac6477              # double 8.0312439999999992
	.quad	0x4016add377e1b8ed              # double 5.6697519999999999
	.quad	0x4019ac059210385c              # double 6.4179899999999996
	.quad	0x401701a975afaf86              # double 5.7516230000000004
	.quad	0x4002ed45e9185cee              # double 2.365856
	.quad	0x402230986fcdee35              # double 9.094913
	.quad	0x3fc4d9d7774aba38              # double 0.16289799999999999
	.quad	0x4002df3b645a1cac              # double 2.359
	.quad	0x401c513879c4113c              # double 7.0793169999999996
	.quad	0x3ff4a175d13d74d6              # double 1.2894190000000001
	.quad	0x401127b890d5a5b9              # double 4.2887899999999997
	.quad	0x401de3ba775fb2ee              # double 7.472391
	.quad	0x4005ac753e707e17              # double 2.7092079999999998
	.quad	0x4021be4ffc9795b3              # double 8.8717039999999994
	.quad	0x40095042528ae74f              # double 3.1641889999999999
	.quad	0x400ea6c6de76427c              # double 3.8314339999999998
	.quad	0x3feef5a1016ce78a              # double 0.96748400000000001
	.quad	0x4021219934efcbd5              # double 8.5656219999999994
	.quad	0x4020e416bdb1a6d7              # double 8.4454860000000007
	.quad	0x4017e733ebbfd71b              # double 5.975784
	.quad	0x4018bbddb9841aac              # double 6.1834629999999997
	.quad	0x401fcf1dc50ce4eb              # double 7.9522620000000001
	.quad	0x4008d1e85fd04a30              # double 3.1024940000000001
	.quad	0x401f7a237cdcca71              # double 7.8692760000000001
	.quad	0x400483dff3f0fe04              # double 2.5643919999999998
	.quad	0x400e3bad3a604e1e              # double 3.7791389999999998
	.quad	0x40099aaef2c73259              # double 3.200529
	.quad	0x401ecf52fc2656ac              # double 7.7024650000000001
	.quad	0x4019b10060780fdc              # double 6.4228529999999999
	.quad	0x4023f4901d19157b              # double 9.9776620000000004
	.quad	0x401f9b524399b2c4              # double 7.901681
	.quad	0x4022dfe974a3400c              # double 9.4373280000000008
	.quad	0x40212b775b813016              # double 8.5848949999999995
	.quad	0x4023fc07cc7d1bb5              # double 9.9922470000000007
	.quad	0x3fe61830e3cd9a52              # double 0.69045299999999998
	.quad	0x400636c2efd438d2              # double 2.7767390000000001
	.quad	0x400ca43137b07076              # double 3.5801720000000001
	.quad	0x4020476f4be835df              # double 8.1395210000000002
	.quad	0x3ff4d29cbab649d4              # double 1.3014190000000001
	.quad	0x40193ec892ab68cf              # double 6.311312
	.quad	0x4016a97fe8ee6b83              # double 5.665527
	.quad	0x401c7895d0b73d19              # double 7.1177590000000004
	.quad	0x3ff4336ef8055fbb              # double 1.2625569999999999
	.quad	0x401658bf3bea91da              # double 5.5866670000000003
	.quad	0x3fa84dfce3150dae              # double 0.047469999999999998
	.quad	0x4018448fd9fd36f8              # double 6.0669550000000001
	.quad	0x4012e4755ffe6d59              # double 4.7231040000000002
	.quad	0x401aae8c8abd5dc4              # double 6.670458
	.quad	0x4001a4b5568e820e              # double 2.2054239999999998
	.quad	0x402202bc72e275ab              # double 9.0053439999999991
	.quad	0x400379210385c67e              # double 2.434145
	.quad	0x3fd3fd4bf0995aaf              # double 0.31233499999999997
	.quad	0x4017dcaeea63b689              # double 5.9655110000000002
	.quad	0x401ef9cbee807bbb              # double 7.7439419999999996
	.quad	0x400f557603925bb8              # double 3.9167290000000001
	.quad	0x3fd2809917939a7c              # double 0.28909899999999999
	.quad	0x40230dc37a3db3c0              # double 9.5268820000000005
	.quad	0x4010c20296b3354c              # double 4.1894629999999999
	.quad	0x3fafd08d4bad7d7c              # double 0.062137999999999999
	.quad	0x3ffb47c0f4517614              # double 1.7050179999999999
	.quad	0x401d317a46173b86              # double 7.2983180000000001
	.quad	0x3ffa71e3a7daa4fd              # double 1.6528050000000001
	.quad	0x401b51b2a27f1b69              # double 6.8297829999999999
	.quad	0x401d2c2a454de7ea              # double 7.2931299999999997
	.quad	0x400b544cbe1eb420              # double 3.4161619999999999
	.quad	0x401ea60780fdc161              # double 7.6621379999999996
	.quad	0x401aa4c271fff79d              # double 6.6608980000000004
	.quad	0x4023af603925bb7b              # double 9.8425309999999992
	.quad	0x40224e6f71a7e308              # double 9.1531939999999991
	.quad	0x4021ef785729b281              # double 8.9677150000000001
	.quad	0x4000fc87db2b3461              # double 2.1233059999999999
	.quad	0x4020466c2acb85a5              # double 8.1375440000000001
	.quad	0x400e2f251c193b3a              # double 3.7730199999999998
	.quad	0x401a71b6d43d0397              # double 6.6110490000000004
	.quad	0x3fcca3bddfc9ff93              # double 0.223747
	.quad	0x40232872b020c49c              # double 9.5790000000000006
	.quad	0x401e07c393682731              # double 7.5075820000000001
	.quad	0x400d3d9a95421c04              # double 3.6550799999999999
	.quad	0x401d4d7774aba387              # double 7.3256509999999997
	.quad	0x40216a8f5c28f5c3              # double 8.7081250000000008
	.quad	0x3ffff37a80cf9e38              # double 1.9969429999999999
	.quad	0x401eeeb1c432ca58              # double 7.7331000000000003
	.quad	0x3ff1e84ad794a6ec              # double 1.1192120000000001
	.quad	0x40229ad8e4324420              # double 9.3024360000000001
	.quad	0x4022c8f6f08cc576              # double 9.3925090000000004
	.quad	0x40132c37e6f71a7e              # double 4.7931819999999998
	.quad	0x3ff62ccf6be37de9              # double 1.3859399999999999
	.quad	0x4020c61cffeb074a              # double 8.3869399999999992
	.quad	0x4021c818e757928e              # double 8.8908149999999999
	.quad	0x401e7b7e0ac7da1f              # double 7.6205980000000002
	.quad	0x40145702602c9082              # double 5.0849700000000002
	.quad	0x4015426f1dc50ce5              # double 5.3148770000000001
	.quad	0x400eb2ef0ae53650              # double 3.8373699999999999
	.quad	0x401fc7ddca4b124d              # double 7.9451819999999999
	.quad	0x4023a779a6b50b0f              # double 9.8270999999999997
	.quad	0x4018a47304039abf              # double 6.1605949999999998
	.quad	0x401e8999dcb5781c              # double 7.6343759999999996
	.quad	0x4022ad352220bc38              # double 9.3382959999999997
	.quad	0x3fa059a73b42cc2d              # double 0.031933999999999997
	.quad	0x3fd78288051c9f73              # double 0.367342
	.quad	0x401a0ae8e1d6494d              # double 6.5106539999999997
	.quad	0x401d22b12d3415b1              # double 7.2838789999999998
	.quad	0x401f9e779207d4e1              # double 7.9047530000000003
	.quad	0x401552ba9d1f6018              # double 5.3307900000000004
	.quad	0x401dc5271bcdbbe0              # double 7.4425319999999999
	.quad	0x40220c0b9991361e              # double 9.0235260000000004
	.quad	0x4021e93a92a30553              # double 8.9555249999999997
	.quad	0x4003c949a5657fb7              # double 2.4732850000000002
	.quad	0x3fec09f83be6601c              # double 0.87621700000000002
	.quad	0x3ffcbb5f1bef49cf              # double 1.7957449999999999
	.quad	0x40234e071c53f39d              # double 9.6523979999999998
	.quad	0x40226883ba3443d4              # double 9.2041299999999992
	.quad	0x3ff9be5109070fbf              # double 1.6089640000000001
	.quad	0x401881df3300de4c              # double 6.1268279999999997
	.quad	0x3fff9376d5497311              # double 1.9735020000000001
	.quad	0x401349841aac53b1              # double 4.8217930000000004
	.quad	0x40209d34df04ddb5              # double 8.3070439999999994
	.quad	0x401c357b41bfbdf1              # double 7.0522280000000004
	.quad	0x401b405532617c1c              # double 6.8128250000000001
	.quad	0x4017eadf71eafee7              # double 5.979368
	.quad	0x3ff2ae536501e258              # double 1.1675599999999999
	.quad	0x4023907d912556d2              # double 9.7822080000000007
	.quad	0x40097d2391d57ffa              # double 3.1861030000000001
	.quad	0x400c56be37de939f              # double 3.5423550000000001
	.quad	0x4018c066c2acb85a              # double 6.1878919999999997
	.quad	0x40090c493426783a              # double 3.1309990000000001
	.quad	0x3fbf952d234eb9a1              # double 0.12336999999999999
	.quad	0x3ffc3be33acd5b68              # double 1.764621
	.quad	0x400e963cb8173322              # double 3.8233579999999998
	.quad	0x4003000000000000              # double 2.375
	.quad	0x40127864cb5bb385              # double 4.617572
	.quad	0x40239bce4217d285              # double 9.8043080000000006
	.quad	0x400c55f91600f345              # double 3.541979
	.quad	0x3ff2414a4d2b2bfe              # double 1.1409400000000001
	.quad	0x401a4327aa68f4b6              # double 6.5655809999999999
	.quad	0x401df74299d883ba              # double 7.4914649999999998
	.quad	0x40112b6177ea1c69              # double 4.2923640000000001
	.quad	0x401c480b673c4f3c              # double 7.0703560000000003
	.quad	0x401f71a47a9e2bd0              # double 7.8609790000000004
	.quad	0x400bea0902de00d2              # double 3.4892750000000001
	.quad	0x40225d14e3bcd35b              # double 9.1818000000000008
	.quad	0x4020bfc2eba27aea              # double 8.3745340000000006
	.quad	0x40145d1fa333764f              # double 5.0909409999999999
	.quad	0x3ff82d916872b021              # double 1.5111250000000001
	.quad	0x3fd58c7192ea52f0              # double 0.33669700000000002
	.quad	0x4018fb61fe21d96f              # double 6.2454910000000003
	.quad	0x3ffb46cca2db61bb              # double 1.704785
	.quad	0x40036158fb43d89d              # double 2.422533
	.quad	0x3ff372aae297396d              # double 1.215495
	.quad	0x3ff9e2478854cdb8              # double 1.6177440000000001
	.quad	0x40164e6b8305d95e              # double 5.5765820000000001
	.quad	0x3fc745f17bd8be73              # double 0.18182200000000001
	.quad	0x401c539192641b33              # double 7.0816100000000004
	.quad	0x40048d234eb9a177              # double 2.5689150000000001
	.quad	0x4011cb10fd7e4580              # double 4.4483069999999998
	.quad	0x401fde7a311e85fd              # double 7.9672629999999999
	.quad	0x40207ca793576039              # double 8.2434659999999997
	.quad	0x4014b14b167ec786              # double 5.1731379999999998
	.quad	0x40237027d88c1db0              # double 9.7190539999999999
	.quad	0x3ff94f11b60ae968              # double 1.581804
	.quad	0x4014a26fe718a86d              # double 5.1586299999999996
	.quad	0x3fd06ed245b291b8              # double 0.25676399999999999
	.quad	0x40228a2ff08893b8              # double 9.2698970000000002
	.quad	0x4012f05a708ede55              # double 4.7347200000000003
	.quad	0x3ffd1af1886df82b              # double 1.819078
	.quad	0x4017d8be2f7b17ce              # double 5.9616629999999997
	.quad	0x401b1b2aae297397              # double 6.7765300000000002
	.quad	0x4001d8537e2c55c9              # double 2.2306279999999998
	.quad	0x4017a6d7625204b0              # double 5.9129310000000004
	.quad	0x4021939de481f538              # double 8.7883139999999997
	.quad	0x3ff9df6124074645              # double 1.6170359999999999
	.quad	0x400d0c5eb313be23              # double 3.63104
	.quad	0x402346ab14ec204f              # double 9.6380239999999997
	.quad	0x4018057c914b167f              # double 6.0053580000000002
	.quad	0x4023aa1101b00368              # double 9.8321609999999992
	.quad	0x400a2e429e0a41a2              # double 3.2725879999999998
	.quad	0x402357fef39085f5              # double 9.6718670000000006
	.quad	0x3ffd23cb81733227              # double 1.8212390000000001
	.quad	0x4021e85ee568a505              # double 8.9538489999999999
	.quad	0x40219ac96cc5fbf8              # double 8.8023179999999996
	.quad	0x3ffb03eb7cbb3c82              # double 1.6884570000000001
	.quad	0x4018c20ff540895d              # double 6.189514
	.quad	0x40113491f2dc2b0f              # double 4.3013380000000003
	.quad	0x3ff0cf5a1016ce79              # double 1.0506230000000001
	.quad	0x4016d64e48626f61              # double 5.7092830000000001
	.quad	0x4015430e3cd9a522              # double 5.3154839999999997
	.quad	0x400382339c0ebee0              # double 2.4385750000000002
	.quad	0x40233753e707e176              # double 9.6080620000000003
	.quad	0x3ff1613b18dac259              # double 1.086238
	.quad	0x4008d61804d98394              # double 3.1045379999999998
	.quad	0x401427ba6698bb4d              # double 5.0387969999999997
	.quad	0x401d62f901083dbc              # double 7.3466529999999999
	.quad	0x3ffac26138fffbce              # double 1.6724559999999999
	.quad	0x4000213b18dac259              # double 2.0162260000000001
	.quad	0x3ff48bddb9841aac              # double 1.2841469999999999
	.quad	0x401388b652370479              # double 4.883508
	.quad	0x40166113836a832c              # double 5.5948010000000004
	.quad	0x3ffe6b3354c12275              # double 1.9011720000000001
	.quad	0x4020455347a5b0ff              # double 8.1354009999999999
	.quad	0x4021513fd0d0678c              # double 8.6586899999999999
	.quad	0x401b1c56d5cfaace              # double 6.7776750000000003
	.quad	0x4011914cec41dd1a              # double 4.3918949999999999
	.quad	0x3ff5c181e03f7058              # double 1.3597429999999999
	.quad	0x401c8c1ce6c093d9              # double 7.1368289999999996
	.quad	0x4019fdb9c7368ad7              # double 6.4977790000000004
	.quad	0x400241fd9ba1b196              # double 2.282222
	.quad	0x4013128ed5f138bd              # double 4.7681230000000001
	.quad	0x401354117f84449e              # double 4.8320980000000002
	.quad	0x40239d606317268d              # double 9.8073759999999996
	.quad	0x401a517e77d523b3              # double 6.5795839999999997
	.quad	0x4023d2e9680e0653              # double 9.9119369999999999
	.quad	0x402151ed17c5ef63              # double 8.660012
	.quad	0x40060901d19157ac              # double 2.7543980000000001
	.quad	0x401cb897e996312f              # double 7.1802669999999997
	.quad	0x3ff15e18efbb0e5e              # double 1.0854729999999999
	.quad	0x40229271fff79c84              # double 9.2860259999999996
	.quad	0x400bdc9cd3e0bd45              # double 3.4827210000000002
	.quad	0x3fc06c332f01754b              # double 0.128302
	.quad	0x4019bd63022dd7aa              # double 6.4349480000000003
	.quad	0x4023b1695d91ab8f              # double 9.8465070000000007
	.quad	0x40081b7ae5796bfd              # double 3.0134180000000002
	.quad	0x400d6bb906466b1e              # double 3.6775989999999998
	.quad	0x400a484167a95c85              # double 3.2852809999999999
	.quad	0x401a68fffbce4218              # double 6.6025390000000002
	.quad	0x40203a8f5c28f5c3              # double 8.1143750000000008
	.quad	0x4019d11f926c7eae              # double 6.4542219999999997
	.quad	0x3ff16358298cc144              # double 1.086754
	.quad	0x401f6394317acc4f              # double 7.847245
	.quad	0x400a9bb517a46174              # double 3.3260290000000001
	.quad	0x4007b53586ca89fc              # double 2.9634809999999998
	.quad	0x40141584b1ab0857              # double 5.0210140000000001
	.quad	0x3ff129ca9ef5232d              # double 1.072703
	.quad	0x3ffcaea52ef911cf              # double 1.792638
	.quad	0x3fff7d523b3636f4              # double 1.9680960000000001
	.quad	0x401665b1422ccb3a              # double 5.5993089999999999
	.quad	0x400317ed41b75a75              # double 2.3866830000000001
	.quad	0x40178496aad1d042              # double 5.8794810000000002
	.quad	0x401f59d7fd82773e              # double 7.8377379999999999
	.quad	0x401360bfa0945f9e              # double 4.844481
	.quad	0x401147b9170d62bf              # double 4.3200419999999999
	.quad	0x3fc2b649d388a8b1              # double 0.14618800000000001
	.quad	0x4019166b1e5c0b9a              # double 6.2718930000000004
	.quad	0x3fe6bc60029f16b1              # double 0.71049499999999999
	.quad	0x3ff91ece5710880e              # double 1.5700210000000001
	.quad	0x3f97a3db3bfb58d1              # double 0.023085999999999999
	.quad	0x401ad4d87724fa8b              # double 6.7078569999999997
	.quad	0x4021fe2174c4cdfb              # double 8.9963490000000004
	.quad	0x4014399fe43675de              # double 5.0562740000000002
	.quad	0x3fc562e90364388f              # double 0.16708100000000001
	.quad	0x401a6cf67b1c0011              # double 6.6064090000000002
	.quad	0x401ea7778dd616f8              # double 7.6635419999999996
	.quad	0x3ffb0b6e935b91f7              # double 1.690291
	.quad	0x401fb430b178b370              # double 7.925967
	.quad	0x401dfa6612839043              # double 7.4945300000000001
	.quad	0x4010e754f3775b81              # double 4.2259099999999998
	.quad	0x3fd94a05dd8f92b0              # double 0.39514300000000002
	.quad	0x401d6e97d06bbdbe              # double 7.3580009999999998
	.quad	0x4017843aeab7995f              # double 5.8791310000000001
	.quad	0x401af136a400fba9              # double 6.7355600000000004
	.quad	0x4011a2e5de15ca6d              # double 4.4090800000000003
	.quad	0x4004b8a6dacabc51              # double 2.5901619999999999
	.quad	0x40085f37b8d3f184              # double 3.0464929999999999
	.quad	0x401ac6b723ee1bd2              # double 6.6940580000000001
	.quad	0x401713c64345cfee              # double 5.7693110000000001
	.quad	0x400cf605ab3aabcd              # double 3.6201279999999998
	.quad	0x40134da059a73b43              # double 4.8258070000000002
	.quad	0x400b23b9ae0c1765              # double 3.3924439999999998
	.quad	0x3ff286c54bcf0b6b              # double 1.1579029999999999
	.quad	0x3fe87ae9ab29e4d6              # double 0.76500400000000002
	.quad	0x40146ec99f1ae2da              # double 5.1081909999999997
	.quad	0x4015c643cc07aaef              # double 5.4436179999999998
	.quad	0x401b7f6ba0620ab7              # double 6.8744339999999999
	.quad	0x3ff1bfd3f5b5fa22              # double 1.1093329999999999
	.quad	0x40233989bd8383ae              # double 9.6123790000000007
	.quad	0x40062393ee5eedcc              # double 2.7673719999999999
	.quad	0x400185f30e7ff584              # double 2.1904050000000002
	.quad	0x40095d3996fa82e8              # double 3.1705199999999998
	.quad	0x401e2a9691a75cd1              # double 7.5415900000000002
	.quad	0x401fbea465a57647              # double 7.9361740000000002
	.quad	0x4013a699c7bcc294              # double 4.9126960000000004
	.quad	0x4001013e3e29307b              # double 2.125607
	.quad	0x3ff83ad2999567dc              # double 1.5143610000000001
	.quad	0x400c91cc100e6afd              # double 3.5711900000000001
	.quad	0x3ffe8b6d86ec17ec              # double 1.9090400000000001
	.quad	0x40136ad2dcb1465f              # double 4.8543200000000004
	.quad	0x4006d5e9e1b089a0              # double 2.8544499999999999
	.quad	0x4014c5cd0bb6ed67              # double 5.1931649999999996
	.quad	0x40227f7d73c92578              # double 9.2490039999999993
	.quad	0x40005944241c3efb              # double 2.043587
	.quad	0x401710dbad3a604e              # double 5.7664629999999999
	.quad	0x4007188d2a1f8e3b              # double 2.8869880000000001
	.quad	0x3ff8ab7cbb3c8191              # double 1.5418670000000001
	.quad	0x40107eddce7cd035              # double 4.1238929999999998
	.quad	0x4021d15097c80842              # double 8.9088180000000001
	.quad	0x4022c190d173fb7a              # double 9.3780579999999993
	.quad	0x40000efcbd556085              # double 2.0073180000000002
	.quad	0x40194a36e2eb1c43              # double 6.3224749999999998
	.quad	0x3fee5fc9ff92f2b6              # double 0.94919299999999995
	.quad	0x3fbe1c36976bc1f0              # double 0.117618
	.quad	0x3fa69fcf3dc054ef              # double 0.044187999999999998
	.quad	0x40183082cf52b90a              # double 6.0473739999999996
	.quad	0x402364a72ead9275              # double 9.6965880000000002
	.quad	0x401f549d7ba6698c              # double 7.8326320000000003
	.quad	0x40124382e44b6e93              # double 4.5659289999999997
	.quad	0x401307e414e7ee91              # double 4.7577059999999998
	.quad	0x400fdfcf3dc054ef              # double 3.9842819999999999
	.quad	0x401d86a832b990b0              # double 7.3815010000000001
	.quad	0x4010343675ddd2af              # double 4.0509890000000004
	.quad	0x400ef081c2e33eff              # double 3.867435
	.quad	0x400c8117720c8cd6              # double 3.5630329999999999
	.quad	0x40236bb3e9a6f827              # double 9.7103570000000001
	.quad	0x4015a9acffa7eb6c              # double 5.415699
	.quad	0x4017d09e12a51e32              # double 5.9537279999999999
	.quad	0x401f20ccff21b3af              # double 7.782032
	.quad	0x401e61f9acffa7eb              # double 7.5956789999999996
	.quad	0x3ffe37281fd9ba1b              # double 1.888466
	.quad	0x40227b354c12274a              # double 9.2406410000000001
	.quad	0x4014ea786c22680a              # double 5.2289750000000002
	.quad	0x4020e44f5d35653d              # double 8.4459180000000007
	.quad	0x40217c45aa2e3c53              # double 8.7427189999999992
	.quad	0x4002a6b37867f0aa              # double 2.3313969999999999
	.quad	0x3fe5bbc903ea704c              # double 0.67917300000000003
	.quad	0x40226cb039ef0f17              # double 9.2122820000000001
	.quad	0x4002590c0ad03d9b              # double 2.2934800000000002
	.quad	0x3fdc571d1d4738a4              # double 0.44281700000000002
	.quad	0x4017ebb62413db7f              # double 5.9801869999999999
	.quad	0x3ffa5aea3161a1dc              # double 1.6471960000000001
	.quad	0x40201bfa4c61d862              # double 8.0546439999999997
	.quad	0x400b59192641b329              # double 3.4185050000000001
	.quad	0x4019bca1059ea572              # double 6.4342079999999999
	.quad	0x3ffb921ff2e48e8a              # double 1.7231749999999999
	.quad	0x4016c4f8f8a4c1ec              # double 5.6923560000000002
	.quad	0x40189c7b890d5a5c              # double 6.1528150000000004
	.quad	0x400b1d2d01c0ca60              # double 3.389246
	.quad	0x4018aca18bd66278              # double 6.1685850000000002
	.quad	0x3ff841711947cfa2              # double 1.5159769999999999
	.quad	0x3ff917be9856a37b              # double 1.5682970000000001
	.quad	0x4002044ae85b9e8c              # double 2.2520959999999999
	.quad	0x400a8fd7e45803cd              # double 3.320236
	.quad	0x4022d67296f6512b              # double 9.4188430000000007
	.quad	0x401ae442c7fbacb4              # double 6.7229109999999999
	.quad	0x4021c4f5d35653ca              # double 8.8846880000000006
	.quad	0x401b7454152b0a70              # double 6.8636020000000002
	.quad	0x401ed8f217093101              # double 7.7118609999999998
	.quad	0x3ff4f620ee8d10f5              # double 1.31009
	.quad	0x3fed60e94ee392e2              # double 0.91808000000000001
	.quad	0x3ff87763e4abe6a3              # double 1.529148
	.quad	0x401d1b1bbcf4e875              # double 7.2764730000000002
	.quad	0x4019dea897635e74              # double 6.4674399999999999
	.quad	0x4019781ecd4aa10e              # double 6.367305
	.quad	0x401dbd0a67620ee9              # double 7.4346100000000002
	.quad	0x40012962cfd8f0c7              # double 2.1452079999999998
	.quad	0x40152bb44e50c5eb              # double 5.2926799999999998
	.quad	0x4009e98fe69270b0              # double 3.2390439999999998
	.quad	0x3fe40d25edd05293              # double 0.62660499999999997
	.quad	0x3feab93469941850              # double 0.83510799999999996
	.quad	0x40144018a43bb40b              # double 5.0625939999999998
	.quad	0x40023b63d3e4ef03              # double 2.2789990000000002
	.quad	0x4021996052502eec              # double 8.7995629999999991
	.quad	0x4001b5182a9930be              # double 2.213425
	.quad	0x3fe6310dbf0563ed              # double 0.69348799999999999
	.quad	0x4023e985058dde7a              # double 9.9560929999999992
	.quad	0x4021002539756c94              # double 8.5002840000000006
	.quad	0x4014eb152f3c2dae              # double 5.2295730000000002
	.quad	0x401dddcca70d1fa3              # double 7.4666009999999998
	.quad	0x402136db7281fd9c              # double 8.6071430000000006
	.quad	0x4013f79b77c02afe              # double 4.9918040000000001
	.quad	0x401d99a73b42cc2d              # double 7.4000519999999996
	.quad	0x3ff59c560c7c0f45              # double 1.350668
	.quad	0x4021344199fe4367              # double 8.6020629999999993
	.quad	0x402222c77574f723              # double 9.0679280000000002
	.quad	0x40168279dd3bafd9              # double 5.6274179999999996
	.quad	0x401a2068db8bac71              # double 6.53165
	.quad	0x401756fd21ff2e49              # double 5.8349500000000001
	.quad	0x40155dce39b456b4              # double 5.3416069999999998
	.quad	0x4013c731098d477c              # double 4.9445230000000002
	.quad	0x401a30fadf2ecf20              # double 6.5478319999999997
	.quad	0x3ffb8e3cd9a52264              # double 1.722226
	.quad	0x401843cf2cf95d4f              # double 6.0662200000000004
	.quad	0x4008144a1f080304              # double 3.0099070000000001
	.quad	0x402001bb6aa4b988              # double 8.0033829999999995
	.quad	0x401455946c332f01              # double 5.0835739999999996
	.quad	0x401c62ab25b317f0              # double 7.0963560000000001
	.quad	0x40142159817b95a3              # double 5.0325680000000004
	.quad	0x4008537e2c55c960              # double 3.0407679999999999
	.quad	0x3ffb44f6dfc5cdd5              # double 1.704337
	.quad	0x401c382730c67169              # double 7.054837
	.quad	0x4020e3b1d0c80410              # double 8.4447159999999997
	.quad	0x4020460114d2f5dc              # double 8.1367270000000004
	.quad	0x401544ba51a005c4              # double 5.3171169999999996
	.quad	0x401fe173fb7a5f42              # double 7.9701690000000003
	.quad	0x3ff2e90eed02cd3a              # double 1.181899
	.quad	0x4018440d90e23af3              # double 6.0664579999999999
	.quad	0x4022fd887ebf22c0              # double 9.4951819999999997
	.quad	0x40174736049ecb32              # double 5.8195420000000002
	.quad	0x3fc8267839cd8128              # double 0.18867400000000001
	.quad	0x401582c4d65e4606              # double 5.3777039999999996
	.quad	0x40154ba55d1c3ac9              # double 5.3238729999999999
	.quad	0x3ff971e18efbb0e6              # double 1.590303
	.quad	0x402275d8d79d0a67              # double 9.2301699999999993
	.quad	0x3ff171151611ba3d              # double 1.0901080000000001
	.quad	0x40074f1a9fbe76c9              # double 2.9136250000000001
	.quad	0x400ccc1b10fd7e46              # double 3.5996610000000002
	.quad	0x4021b2a369fcf3dc              # double 8.8489029999999999
	.quad	0x4019eb0b7c3504c5              # double 6.4795360000000004
	.quad	0x402239ddc1e7967d              # double 9.1130200000000006
	.quad	0x4019111dffc5479d              # double 6.2667159999999997
	.quad	0x4015f0afa2f05a71              # double 5.4850450000000004
	.quad	0x401304c2f837b4a2              # double 4.7546499999999998
	.quad	0x401a9437c5692b3d              # double 6.6447440000000002
	.quad	0x40226dc5d6388659              # double 9.2143999999999995
	.quad	0x400fa7c7c5260f5e              # double 3.9569239999999999
	.quad	0x40229509bf9c62a2              # double 9.2910900000000005
	.quad	0x40018a8112ba16e8              # double 2.1926290000000002
	.quad	0x400d759d55e6bc62              # double 3.682429
	.quad	0x402101ef30a4e37a              # double 8.5037780000000005
	.quad	0x4003530ced4e4c94              # double 2.4155519999999999
	.quad	0x401d94463065f959              # double 7.3947989999999999
	.quad	0x3fd6e43ed959a30a              # double 0.35768100000000003
	.quad	0x40119f251c193b3a              # double 4.4054149999999996
	.quad	0x400dc49a133c1ce7              # double 3.7209970000000001
	.quad	0x3ffd0e3150dae3e7              # double 1.8159650000000001
	.quad	0x4010d7304039abf3              # double 4.2101449999999998
	.quad	0x3ff70ff865d7cb2e              # double 1.4413990000000001
	.quad	0x402398b7a1c25d07              # double 9.7982759999999995
	.quad	0x40238cedd4845133              # double 9.775252
	.quad	0x3fefdd377e1b8ed2              # double 0.99575400000000003
	.quad	0x4023bf4751ce28ed              # double 9.8735909999999993
	.quad	0x40200e5d3996fa83              # double 8.0280550000000002
	.quad	0x40222b27ed84d339              # double 9.0842890000000001
	.quad	0x400de19a847b2464              # double 3.7351580000000002
	.quad	0x402151ad42c3c9ef              # double 8.6595250000000004
	.quad	0x3ff0323358f2e05d              # double 1.012256
	.quad	0x40226a2af5771002              # double 9.2073590000000003
	.quad	0x400edde8b3b32053              # double 3.8583539999999998
	.quad	0x3fd9f67b1c0010c7              # double 0.405669
	.quad	0x40182e0fc2eba27b              # double 6.0449820000000001
	.quad	0x401b1a919695d91b              # double 6.7759460000000002
	.quad	0x400f8c48adeebb34              # double 3.9434979999999999
	.quad	0x401cac8ffb8b2639              # double 7.1685179999999997
	.quad	0x40233ac8c5004fb1              # double 9.6148129999999998
	.quad	0x3fe0a8ac5c13fd0d              # double 0.52059
	.quad	0x3fc5d4c76d117b53              # double 0.17055600000000001
	.quad	0x4002e21c8a7a41e5              # double 2.3604059999999998
	.quad	0x402217c914b167ec              # double 9.0464559999999991
	.quad	0x402063ff47735c18              # double 8.1953069999999997
	.quad	0x4017954da4ce8102              # double 5.895804
	.quad	0x40110ebe1650a45d              # double 4.2643969999999998
	.quad	0x40177c95bff04578              # double 5.8716650000000001
	.quad	0x40129e514c22ee42              # double 4.6546070000000004
	.quad	0x4012389374bc6a7f              # double 4.55525
	.quad	0x400e90ba6266fd65              # double 3.820668
	.quad	0x4023402fb5d03105              # double 9.6253639999999993
	.quad	0x4020063f359ff4fd              # double 8.0122009999999992
	.quad	0x401d13f0fe047d3d              # double 7.2694739999999998
	.quad	0x3fd5495e17e34b94              # double 0.33260299999999998
	.quad	0x400fce3e6c4c5975              # double 3.975705
	.quad	0x401bc91fb3fa6df0              # double 6.9464100000000002
	.quad	0x401fff9096bb98c8              # double 7.9995750000000001
	.quad	0x4013fa515ce9e5e2              # double 4.9944509999999998
	.quad	0x401b915ca6ca03c5              # double 6.8919550000000003
	.quad	0x401f5bc0a06e9ff1              # double 7.8396020000000001
	.quad	0x3ff23f0ed3d859c9              # double 1.140395
	.quad	0x3ffbc271fff79c84              # double 1.734972
	.quad	0x4017a5b1c8648840              # double 5.9118110000000001
	.quad	0x402199ab0856e697              # double 8.8001330000000006
	.quad	0x40161ccf28c79f66              # double 5.5281339999999997
	.quad	0x4010eb2b777d0f1f              # double 4.2296579999999997
	.quad	0x4009a4c9c90c4dec              # double 3.205463
	.quad	0x3fc473de1e2de871              # double 0.15978600000000001
	.quad	0x3ff7963992c8c500              # double 1.4741759999999999
	.quad	0x401da1a36e2eb1c4              # double 7.4078499999999998
	.quad	0x401acce1c58255b0              # double 6.7000799999999998
	.quad	0x4008c47e49b1fab9              # double 3.0959439999999998
	.quad	0x3ff2b0739b024f66              # double 1.1680790000000001
	.quad	0x400e39439de481f5              # double 3.7779609999999999
	.quad	0x401637f993d5347a              # double 5.5546629999999997
	.quad	0x40168340d4dc65c7              # double 5.628177
	.quad	0x3fd3afe60c38f367              # double 0.30761100000000002
	.quad	0x400291d92b7fe08b              # double 2.321215
	.quad	0x401653f5f91600f3              # double 5.5819929999999998
	.quad	0x4012ad844d013a93              # double 4.6694500000000003
	.quad	0x4021b1f623076c05              # double 8.8475809999999999
	.quad	0x4023ca5f202107b8              # double 9.8952570000000008
	.quad	0x4013156eac860568              # double 4.7709299999999999
	.quad	0x401d9abf33871609              # double 7.4011199999999997
	.quad	0x4019957afea3df6e              # double 6.3959770000000002
	.quad	0x401dfd9f0a1be2b5              # double 7.4976770000000003
	.quad	0x40099f03d145d851              # double 3.2026439999999998
	.quad	0x401dfa29845dc832              # double 7.4942989999999998
	.quad	0x4003dd6cf850df16              # double 2.4831180000000002
	.quad	0x40054279dd3bafd9              # double 2.6574589999999998
	.quad	0x401cf0303c07ee0b              # double 7.234559
	.quad	0x401b6aa2e3c536d6              # double 6.8541369999999997
	.quad	0x4011cc92ddbdb5d9              # double 4.4497790000000004
	.quad	0x4019259d12cadddf              # double 6.2867319999999998
	.quad	0x401137ae9ab29e4d              # double 4.3043769999999997
	.quad	0x40205f8a0902de01              # double 8.1866000000000003
	.quad	0x3ff2d2deca2552a0              # double 1.176482
	.quad	0x401c13e24febd09e              # double 7.0194179999999999
	.quad	0x402346805a2d7300              # double 9.6376980000000003
	.quad	0x3fe19dc2f405f6ba              # double 0.550508
	.quad	0x4018b2e770bd017e              # double 6.1747110000000003
	.quad	0x401c78705425f202              # double 7.1176159999999999
	.quad	0x3fec11361dc93ea3              # double 0.87710100000000002
	.quad	0x4018c71758e21965              # double 6.1944249999999998
	.quad	0x401892046c764ae0              # double 6.142595
	.quad	0x401c66d2aa5c5f7c              # double 7.1004129999999996
	.quad	0x3ff77cbb3c81908e              # double 1.4679519999999999
	.quad	0x40221ebdf4c2b51c              # double 9.0600430000000002
	.quad	0x3fe46801711947d0              # double 0.63769600000000004
	.quad	0x40206eec9e236c16              # double 8.2166490000000003
	.quad	0x4021d8ecfa69be0a              # double 8.9236830000000005
	.quad	0x400df5f4e4430b18              # double 3.7450960000000002
	.quad	0x3ff8d8b0d0edc3bd              # double 1.5529029999999999
	.quad	0x3fb45f9df548ecd9              # double 0.079584000000000002
	.quad	0x3ff24b0d0edc3bd6              # double 1.1433230000000001
	.quad	0x400c4328f9f44d44              # double 3.5327929999999999
	.quad	0x4023bd18b0d0edc4              # double 9.8693290000000004
	.quad	0x400fef5126634118              # double 3.991854
	.quad	0x3fd965881a1554fc              # double 0.39682200000000001
	.quad	0x3ffe6d2ed783dff4              # double 1.901656
	.quad	0x40135147f1305964              # double 4.8293759999999999
	.quad	0x40206ffcfc3f811f              # double 8.2187269999999994
	.quad	0x401c699c38b04ab6              # double 7.103135
	.quad	0x3fffad2cbea4ebdd              # double 1.979779
	.quad	0x401fd437824d4cba              # double 7.9572430000000001
	.quad	0x4014dd912556d19e              # double 5.2163740000000001
	.quad	0x3ff31fe004b7f5a5              # double 1.195282
	.quad	0x401987d2c7b890d6              # double 6.3826400000000003
	.quad	0x4021b6fed634549b              # double 8.8574129999999993
	.quad	0x3fec1e6eeb702603              # double 0.87871500000000002
	.quad	0x4023e9a3f4666eca              # double 9.9563290000000002
	.quad	0x4000a3aafff36ac6              # double 2.0799159999999999
	.quad	0x3ff53ca5375c8da0              # double 1.3273060000000001
	.quad	0x40145c896dd26b72              # double 5.0903679999999998
	.quad	0x40123862f5989df1              # double 4.5550649999999999
	.quad	0x400b989374bc6a7f              # double 3.4495
	.quad	0x3ff0c0b45ae5ffa4              # double 1.0470470000000001
	.quad	0x401caa415f45e0b5              # double 7.1662650000000001
	.quad	0x3ff06a98244e93e2              # double 1.026024
	.quad	0x3fd99f51697f1f9b              # double 0.40034900000000001
	.quad	0x4013a938151a4378              # double 4.9152529999999999
	.quad	0x4018b19fc2a8869c              # double 6.1734609999999996
	.quad	0x401311682f944242              # double 4.7669990000000002
	.quad	0x401d0ff327aa68f5              # double 7.2655760000000003
	.quad	0x4011266be7afa722              # double 4.2875209999999999
	.quad	0x4008e26a22b3892f              # double 3.110554
	.quad	0x4007bbe7f2c3009b              # double 2.9667509999999999
	.quad	0x40112e59af9ebe9d              # double 4.2952640000000004
	.quad	0x3ff3905d0fa58f71              # double 1.222745
	.quad	0x40238c4fc1df3301              # double 9.7740460000000002
	.quad	0x40200932d6ece13f              # double 8.0179659999999995
	.quad	0x40132e1198aeb80f              # double 4.7949890000000002
	.quad	0x4013f0e51d25aab4              # double 4.9852489999999996
	.quad	0x4011f5f84cad57bc              # double 4.4902049999999996
	.quad	0x4011b64628027d89              # double 4.4280020000000002
	.quad	0x3fc61f53825e13b2              # double 0.17283100000000001
	.quad	0x4013d8c586876e1e              # double 4.9616910000000001
	.quad	0x40149a2c669057d1              # double 5.1505599999999996
	.quad	0x40072cea28fe260b              # double 2.8969309999999999
	.quad	0x400ab37fbefd0071              # double 3.3376459999999999
	.quad	0x401d71e75360d024              # double 7.3612339999999996
	.quad	0x4010936a832b990b              # double 4.143961
	.quad	0x3fef413fd0d0678c              # double 0.97671499999999999
	.quad	0x3fe66b09635610ae              # double 0.70056600000000002
	.quad	0x4011e230b9dc2f40              # double 4.4708889999999997
	.quad	0x400fcb09e98dcdb3              # double 3.9741399999999998
	.quad	0x401f5383f0bae89f              # double 7.8315580000000002
	.quad	0x4018a51d25aab474              # double 6.1612439999999999
	.quad	0x3fbc8461f9f01b86              # double 0.11139499999999999
	.quad	0x401416a7ac81d3aa              # double 5.0221239999999998
	.quad	0x4002a32d2bb23572              # double 2.3296760000000001
	.quad	0x400df5147f130596              # double 3.7446679999999999
	.quad	0x4012732f44912989              # double 4.6124850000000004
	.quad	0x4007b43419e30015              # double 2.96299
	.quad	0x40186b295e9e1b09              # double 6.1046500000000004
	.quad	0x3fff018b502ababf              # double 1.9378770000000001
	.quad	0x4018ec6088d6d3b7              # double 6.2308370000000002
	.quad	0x4009fe3193f6c26a              # double 3.2491180000000002
	.quad	0x3ffb1e603d577964              # double 1.6949160000000001
	.quad	0x4004f11a543f1c76              # double 2.6177260000000002
	.quad	0x400b8876e1deacc9              # double 3.4416329999999999
	.quad	0x40057a89b951c5c5              # double 2.6848329999999998
	.quad	0x4019cf5771001d5c              # double 6.4524819999999998
	.quad	0x401ad6d7e889c1b5              # double 6.7098079999999998
	.quad	0x4023a493a7115161              # double 9.8214389999999998
	.quad	0x3fc22f0e0a84be40              # double 0.14206099999999999
	.quad	0x4004e165907d9125              # double 2.6100569999999998
	.quad	0x3fd76df3f961804e              # double 0.36608600000000002
	.quad	0x4022c00baa582dbe              # double 9.3750889999999991
	.quad	0x400d46573215fcc2              # double 3.6593460000000002
	.quad	0x400a7abd1aa821f3              # double 3.3099310000000002
	.quad	0x40170dc1615ebfa9              # double 5.763433
	.quad	0x4019131a08bfc222              # double 6.2686539999999997
	.quad	0x4014cee17a02fb5d              # double 5.202032
	.quad	0x4022a92b7fe08af0              # double 9.3304100000000005
	.quad	0x4023eedbb59ddc1e              # double 9.9665199999999992
	.quad	0x4001df761cbccf29              # double 2.2341120000000001
	.quad	0x401b42e126202539              # double 6.8153119999999996
	.quad	0x3fd22b3892ee84ad              # double 0.28388799999999997
	.quad	0x400a0f89c5e6ff7e              # double 3.257587
	.quad	0x4017e5e28aa43351              # double 5.9744970000000004
	.quad	0x4007b22a6f3f52fc              # double 2.9619949999999999
	.quad	0x3ff11d2391d57ffa              # double 1.0696140000000001
	.quad	0x4021eb841248d7e0              # double 8.9599919999999997
	.quad	0x4012f7318fc50481              # double 4.7413999999999996
	.quad	0x401722c343b70ef5              # double 5.7839479999999996
	.quad	0x402101a60d4562e1              # double 8.5032200000000007
	.quad	0x4021982cb20fb225              # double 8.7972160000000006
	.quad	0x3fefd907d912556d              # double 0.99524299999999998
	.quad	0x3fdf77681669ced1              # double 0.49166300000000002
	.quad	0x4007ae5604189375              # double 2.9601250000000001
	.quad	0x40178733ebbfd71b              # double 5.882034
	.quad	0x4018895faa8a82a5              # double 6.1341539999999997
	.quad	0x4021d7caa7589efe              # double 8.9214680000000008
	.quad	0x401bf20ff540895d              # double 6.986389
	.quad	0x401c22aa19439de5              # double 7.0338520000000004
	.quad	0x401f565c70435efa              # double 7.8343369999999997
	.quad	0x4015920c8cd63cb8              # double 5.3926259999999999
	.quad	0x3feeaa90cd423d92              # double 0.95832099999999998
	.quad	0x3fdd9ec7000431be              # double 0.46281600000000001
	.quad	0x400a3e2c55c96031              # double 3.2803580000000001
	.quad	0x400dbf5275ee99a6              # double 3.7184189999999999
	.quad	0x40229282c6ef3d3a              # double 9.2861539999999998
	.quad	0x40207dec80c73abd              # double 8.2459450000000007
	.quad	0x40159b3743632c1f              # double 5.4015779999999998
	.quad	0x4005f5ac8a372607              # double 2.744958
	.quad	0x401eb67381d7dbf5              # double 7.6781750000000004
	.quad	0x402124fc3f811f4f              # double 8.5722369999999994
	.quad	0x401835b078d92fb2              # double 6.0524310000000003
	.quad	0x401b3a176ddaceee              # double 6.8067299999999999
	.quad	0x4008344dca8e2e2c              # double 3.0255390000000002
	.quad	0x401f4a05dd8f92b0              # double 7.8222880000000004
	.quad	0x40022af709b738e7              # double 2.2709790000000001
	.quad	0x4008d78705425f20              # double 3.1052379999999999
	.quad	0x4022efd75e2046c7              # double 9.4684399999999993
	.quad	0x40134f36262cba73              # double 4.8273549999999998
	.quad	0x3ff395ed06fef7c2              # double 1.2241029999999999
	.quad	0x4020386e7e62dc6e              # double 8.1102179999999997
	.quad	0x4000e3d03968d75a              # double 2.111237
	.quad	0x4004ba41e57d9dbb              # double 2.5909460000000002
	.quad	0x40157156e264e486              # double 5.3606829999999999
	.quad	0x40239d30ad46f588              # double 9.8070120000000002
	.quad	0x401f48aeb80ecfa7              # double 7.8209790000000003
	.quad	0x401337253da72a7c              # double 4.8038530000000002
	.quad	0x4013d4a0a0f4d7ae              # double 4.9576440000000002
	.quad	0x401617c6b8b69553              # double 5.5232190000000001
	.quad	0x3ff087df5cf2495e              # double 1.033172
	.quad	0x40200c804102ff8f              # double 8.0244160000000004
	.quad	0x40181dd4c76d117b              # double 6.0291319999999997
	.quad	0x3ffd90d49949e881              # double 1.8478589999999999
	.quad	0x401e989118c197e5              # double 7.6489909999999996
	.quad	0x4008af9d2bf55150              # double 3.0857489999999999
	.quad	0x401c4be22e5de15d              # double 7.0741050000000003
	.quad	0x4005daf965b20b80              # double 2.7319209999999998
	.quad	0x4019f3504c48adef              # double 6.4876110000000002
	.quad	0x4021d4bfb15b573f              # double 8.9155250000000006
	.quad	0x3ff02a012599ed7c              # double 1.0102549999999999
	.quad	0x401c0ff6d330941d              # double 7.0155900000000004
	.quad	0x40235b7cdcca70d2              # double 9.678687
	.quad	0x4017c5197a24894c              # double 5.9424799999999998
	.quad	0x401fcb606b7aa25e              # double 7.9486100000000004
	.quad	0x402018917d6b65aa              # double 8.0479850000000006
	.quad	0x40170df4c2b51bd6              # double 5.7636289999999999
	.quad	0x3fe0ca8e2e2b8c76              # double 0.52472600000000003
	.quad	0x401fb8f7db6e5040              # double 7.9306330000000003
	.quad	0x4023705ff1d81f10              # double 9.7194819999999993
	.quad	0x4001b790fb65668c              # double 2.2146319999999999
	.quad	0x4000609bb6aa4b99              # double 2.0471720000000002
	.quad	0x3fe6ab29e4d5d80e              # double 0.70839399999999997
	.quad	0x3fe8b8433d6c7219              # double 0.77249299999999999
	.quad	0x4023a474fb549f95              # double 9.8212050000000008
	.quad	0x4021c4caf709b739              # double 8.8843610000000002
	.quad	0x40236061847f5621              # double 9.6882439999999991
	.quad	0x4005c48626f60e0f              # double 2.7209590000000001
	.quad	0x401935b035bd512f              # double 6.3024300000000002
	.quad	0x3fa130df9bdc69f9              # double 0.033576000000000002
	.quad	0x3fece4020817fc76              # double 0.902833
	.quad	0x4016365e89225311              # double 5.5530949999999999
	.quad	0x4004451761459536              # double 2.5337360000000002
	.quad	0x401725a682b62846              # double 5.7867680000000004
	.quad	0x3fe5adf71eafee70              # double 0.67748600000000003
	.quad	0x401d99c560c7c0f4              # double 7.4001669999999997
	.quad	0x4009a8bb0a2ca9ac              # double 3.2073879999999999
	.quad	0x4010522a6f3f52fc              # double 4.0802399999999999
	.quad	0x3ffd4b8f14db5958              # double 1.8309470000000001
	.quad	0x4006cfa376922d95              # double 2.8513860000000002
	.quad	0x3fe248e68e3ef284              # double 0.57139899999999999
	.quad	0x3fd08094e5d5b24f              # double 0.25784800000000002
	.quad	0x401ce76ddaceee0f              # double 7.2260049999999998
	.quad	0x4014d78c868b9fdc              # double 5.2104970000000002
	.quad	0x401bace95faa8a83              # double 6.9188590000000003
	.quad	0x401477d34df04ddb              # double 5.1170169999999997
	.quad	0x400d0ad8a116659d              # double 3.630296
	.quad	0x4020104189374bc7              # double 8.0317500000000006
	.quad	0x4021b3e40420f6f1              # double 8.8513490000000008
	.quad	0x4019fa07f66e86c6              # double 6.4941709999999997
	.quad	0x40205d3b4b2fa93b              # double 8.1820930000000001
	.quad	0x3ff93005814940bc              # double 1.5742240000000001
	.quad	0x3ff382e2328f9f45              # double 1.219454
	.quad	0x401f85b9628cbd12              # double 7.8805899999999998
	.quad	0x4014fd34df04ddb5              # double 5.2472719999999997
	.quad	0x3fee6e807bbb6241              # double 0.95098899999999997
	.quad	0x4021d0e71476af8a              # double 8.9080130000000004
	.quad	0x401aad72367e414e              # double 6.6693809999999996
	.quad	0x4002e89a02752546              # double 2.363575
	.quad	0x4009ea2fcefaa476              # double 3.2393489999999998
	.quad	0x40115dcf893faf42              # double 4.3416119999999996
	.quad	0x3ff2045564b662fe              # double 1.126058
	.quad	0x3ff4049ba5e353f8              # double 1.251125
	.quad	0x40144b0d51f81a58              # double 5.0732929999999996
	.quad	0x4020f7c4199fe436              # double 8.4839179999999992
	.quad	0x4019fd5065732160              # double 6.4973770000000002
	.quad	0x40124e514c22ee42              # double 4.5764820000000004
	.quad	0x3ffe2ef0ae536502              # double 1.88646
	.quad	0x40115c84f8f8a4c2              # double 4.3403510000000001
	.quad	0x402050db4890928a              # double 8.1579230000000003
	.quad	0x3ffa0dad31fcd24e              # double 1.628339
	.quad	0x401b4d3e0bd44999              # double 6.8254320000000002
	.quad	0x3fea97e77d523b36              # double 0.83104299999999998
	.quad	0x3fd946f9b994e1a4              # double 0.394957
	.quad	0x4020fb9d5e4a3832              # double 8.4914349999999992
	.quad	0x401a18d3ae685db7              # double 6.5242449999999996
	.quad	0x401182f6e82949a5              # double 4.3778949999999996
	.quad	0x40181710880d801b              # double 6.0225239999999998
	.quad	0x4022a51633482be9              # double 9.3224350000000005
	.quad	0x4006a0980b242071              # double 2.8284150000000001
	.quad	0x40112ce9e5e24788              # double 4.2938609999999997
	.quad	0x3f2d7dbf487fcb92              # double 2.2499999999999999E-4
	.quad	0x4022c7ca85caafbc              # double 9.3902169999999998
	.quad	0x40116a915379fa98              # double 4.3540700000000001
	.quad	0x401ba8c79f666235              # double 6.9148240000000003
	.quad	0x4022e3343fa2ad3f              # double 9.4437580000000007
	.quad	0x400617d1782d3847              # double 2.7616299999999998
	.quad	0x4001f9f6ec5b078e              # double 2.2470530000000002
	.quad	0x400da6f0cfe15443              # double 3.7065139999999999
	.quad	0x3fdff81a5870da5e              # double 0.49951800000000002
	.quad	0x3fe4cafb3b752114              # double 0.64977799999999997
	.quad	0x40036c636b096356              # double 2.427924
	.quad	0x401924488c60cbf3              # double 6.2854330000000003
	.quad	0x3fd816b54e2b063e              # double 0.376386
	.quad	0x401dd5bc44bf4cb2              # double 7.4587260000000004
	.quad	0x40226ca85caafbc2              # double 9.2122220000000006
	.quad	0x401bb4c9c90c4dec              # double 6.9265509999999999
	.quad	0x4021ed14c22ee419              # double 8.9630489999999998
	.quad	0x4006067620ee8d11              # double 2.753155
	.quad	0x4013bccfaeff5c6c              # double 4.9343859999999999
	.quad	0x40014262cba732df              # double 2.1574149999999999
	.quad	0x4009f913e81450f0              # double 3.2466200000000001
	.quad	0x400ef7564302b40f              # double 3.8707699999999998
	.quad	0x40200ba8826aa8eb              # double 8.0227699999999995
	.quad	0x401c4a91105e1c15              # double 7.072819
	.quad	0x3fdd1ed9dfdac68b              # double 0.45500800000000002
	.quad	0x40118dc3bd599243              # double 4.3884420000000004
	.quad	0x40101d959a30984e              # double 4.0288909999999998
	.quad	0x402114bb5e0f7fd0              # double 8.5404920000000004
	.quad	0x401d13b6cbd987c6              # double 7.2692519999999998
	.quad	0x4015d154434e336a              # double 5.4544230000000002
	.quad	0x4011996ededaec4a              # double 4.3998369999999998
	.quad	0x3ffd993e5fb71fbc              # double 1.8499129999999999
	.quad	0x402339014b599aa6              # double 9.6113379999999999
	.quad	0x4006f0a350d2806b              # double 2.867499
	.quad	0x4005cd82ba5a0382              # double 2.7253470000000002
	.quad	0x3ffba67839cd8128              # double 1.7281420000000001
	.quad	0x40135a3db3bfb58d              # double 4.8381259999999999
	.quad	0x401adc71d6063172              # double 6.7152779999999996
	.quad	0x401c92af9a8cdea0              # double 7.1432479999999998
	.quad	0x4015c12b5e529bae              # double 5.4386419999999998
	.quad	0x400eda109d0635a4              # double 3.8564769999999999
	.quad	0x4020b84ea4a8c155              # double 8.3599750000000004
	.quad	0x3ff2fda4052d666b              # double 1.1869240000000001
	.quad	0x4017d2fad6cb5350              # double 5.956035
	.quad	0x3fd5752da98676a7              # double 0.33527699999999999
	.quad	0x4005fef7c243dccf              # double 2.7494960000000002
	.quad	0x401c3f1f9acffa7f              # double 7.0616440000000003
	.quad	0x400ee1b64e054691              # double 3.8602110000000001
	.quad	0x3fce41aac53b0814              # double 0.23637900000000001
	.quad	0x402027e6b3fe9fae              # double 8.0779320000000006
	.quad	0x40201ee9dd7ecbb8              # double 8.060378
	.quad	0x402313927d45a5fc              # double 9.5382269999999991
	.quad	0x401ab748a159817c              # double 6.6789880000000004
	.quad	0x400a89a77e5eaab0              # double 3.3172139999999999
	.quad	0x3fce216c61522a6f              # double 0.23539499999999999
	.quad	0x400f412a51e321a3              # double 3.906819
	.quad	0x400f8990f301eabc              # double 3.9421710000000001
	.quad	0x400d13a68b19a416              # double 3.634595
	.quad	0x401a0dee34fc610f              # double 6.5136039999999999
	.quad	0x401682c98e53eb3a              # double 5.6277220000000003
	.quad	0x3ff563ee1bd1ed9e              # double 1.336897
	.quad	0x401226940357a355              # double 4.537674
	.quad	0x3fdcef954eb13dfb              # double 0.452123
	.quad	0x4017205c03361566              # double 5.7816010000000002
	.quad	0x401fc07ee0b0af60              # double 7.9379840000000002
	.quad	0x400893743632c1f4              # double 3.0719989999999999
	.quad	0x401abdcc20d5629e              # double 6.6853490000000004
	.quad	0x401c33d816aceaaf              # double 7.0506289999999998
	.quad	0x4002c2a77a2cecc8              # double 2.345046
	.quad	0x401d1e7e62dc6e2b              # double 7.2797790000000004
	.quad	0x401a2c29bf162ae5              # double 6.5431280000000003
	.quad	0x3ff394434e3369ba              # double 1.223697
	.quad	0x402135530489d27c              # double 8.6041489999999996
	.quad	0x4010454ef459d990              # double 4.0676839999999999
	.quad	0x40042e0a84be4042              # double 2.522481
	.quad	0x4015bf47735c182f              # double 5.4367960000000002
	.quad	0x401d1a0fd3b29a1c              # double 7.2754510000000003
	.quad	0x4020a0763a190082              # double 8.313402
	.quad	0x4023803fd5022574              # double 9.7504869999999996
	.quad	0x4021c82ff8ec0f88              # double 8.8909909999999996
	.quad	0x40169a1cac083127              # double 5.6505000000000001
	.quad	0x400cc727dcbddb98              # double 3.5972439999999999
	.quad	0x402145e37585be1b              # double 8.6365010000000009
	.quad	0x4011bcc857f3061c              # double 4.4343579999999996
	.quad	0x3ffb93b6cbd987c6              # double 1.723563
	.quad	0x400a416f0068db8c              # double 3.2819500000000001
	.quad	0x400459ef0f16f438              # double 2.5439129999999999
	.quad	0x40092f7fcfc3f812              # double 3.148193
	.quad	0x40005847f562174c              # double 2.0431059999999999
	.quad	0x401458ee28672757              # double 5.0868460000000004
	.quad	0x401ed4944ed6fda8              # double 7.7075969999999998
	.quad	0x4019b2b239a38fbd              # double 6.4245080000000003
	.quad	0x401de830e3cd9a52              # double 7.4767489999999999
	.quad	0x4019300e6afcce1c              # double 6.2969299999999997
	.quad	0x40212ac9afe1da7b              # double 8.5835699999999999
	.quad	0x3fe29fdbd2fa0d78              # double 0.58201400000000003
	.quad	0x402110902de00d1b              # double 8.5323499999999992
	.quad	0x4022d6f7e3d1cc10              # double 9.4198599999999999
	.quad	0x401cf25460aa64c3              # double 7.23665
	.quad	0x4015c195cc857f30              # double 5.4390479999999997
	.quad	0x40203537c1376d55              # double 8.1039410000000007
	.quad	0x402098129cbab64a              # double 8.2970170000000003
	.quad	0x4017f8205ff1d81f              # double 5.9923109999999999
	.quad	0x3ffe6b80ecfa69be              # double 1.901246
	.quad	0x3ff776c69b5a63fa              # double 1.4664980000000001
	.quad	0x401a2ce032db1e9f              # double 6.5438239999999999
	.quad	0x401a537ac3eb7cbb              # double 6.5815229999999998
	.quad	0x40094af81626b2f2              # double 3.1616059999999999
	.quad	0x40048752da98676a              # double 2.5660759999999998
	.quad	0x4019b854046412cf              # double 6.4300079999999999
	.quad	0x40170fdfc19c1722              # double 5.7655019999999997
	.quad	0x40206ea52ef911cf              # double 8.2161039999999996
	.quad	0x40194e3a3a8e7147              # double 6.3263939999999996
	.quad	0x40210ec8b4395810              # double 8.5288749999999993
	.quad	0x400ccdf47f993d53              # double 3.6005639999999999
	.quad	0x4022782d9cf13cef              # double 9.2347230000000007
	.quad	0x402019b0ab2e1694              # double 8.0501760000000004
	.quad	0x4017da4441787054              # double 5.9631509999999999
	.quad	0x401419d6f112fd33              # double 5.0252340000000002
	.quad	0x4023e6ee957470eb              # double 9.9510389999999997
	.quad	0x401a7b951c5c5719              # double 6.6206860000000001
	.quad	0x4005840d0aaa7ded              # double 2.6894779999999998
	.quad	0x401f24da4ce8101f              # double 7.7859889999999998
	.quad	0x401c5f2f123c42a6              # double 7.0929529999999996
	.quad	0x401a2633ce63a5c2              # double 6.5373070000000002
	.quad	0x3ff0dfa658c4bd34              # double 1.054602
	.quad	0x401ff2ae07e5a78f              # double 7.9869919999999998
	.quad	0x4014dbd1244a6224              # double 5.2146650000000001
	.quad	0x400362c3c9eecbfb              # double 2.423225
	.quad	0x3ffad5bdd76683c3              # double 1.6771830000000001
	.quad	0x4020eed41b75a74c              # double 8.4664619999999999
	.quad	0x400779e492bc2fc7              # double 2.9345180000000002
	.quad	0x3fe30da5daf07bfe              # double 0.59541599999999995
	.quad	0x3fff32b239a38fbd              # double 1.9498770000000001
	.quad	0x3fde1e646f156191              # double 0.470605
	.quad	0x4013307f66e86c66              # double 4.7973610000000004
	.quad	0x4014441e57d9dba9              # double 5.066522
	.quad	0x401a18f7db6e5040              # double 6.5243830000000003
	.quad	0x4015d353f7ced917              # double 5.4563750000000004
	.quad	0x401422f05a708ede              # double 5.0341199999999997
	.quad	0x40197e9ccb7d4174              # double 6.3736449999999998
	.quad	0x401ae35ce1826677              # double 6.7220339999999998
	.quad	0x401d6ebc408d8ec9              # double 7.3581399999999997
	.quad	0x4017a9420b3d4ae4              # double 5.9152909999999999
	.quad	0x401b7a30984e3fff              # double 6.869326
	.quad	0x4014cc37e6f71a7e              # double 5.1994319999999998
	.quad	0x401016af89c5e6ff              # double 4.0221539999999996
	.quad	0x40154ebc83a96d4c              # double 5.3268909999999998
	.quad	0x400d599c38b04ab6              # double 3.668755
	.quad	0x4021e948dc11e42e              # double 8.9556339999999999
	.quad	0x401c0c2e33eff195              # double 7.011895
	.quad	0x4023bce789e774ef              # double 9.8689540000000004
	.quad	0x400ad0afe60c38f3              # double 3.3518979999999998
	.quad	0x401f94d2b2bfdb4d              # double 7.8953350000000002
	.quad	0x40112b7521144cbe              # double 4.2924389999999999
	.quad	0x401f4cb1cc964628              # double 7.8248969999999999
	.quad	0x4007dfe542e557de              # double 2.984324
	.quad	0x3ff1cbe835dedf1e              # double 1.112282
	.quad	0x401b38c6d612c6ac              # double 6.8054459999999999
	.quad	0x400b03cc8de2ac32              # double 3.3768549999999999
	.quad	0x400ca3d89ce4a7b5              # double 3.580003
	.quad	0x40193cf0b6b6e0d2              # double 6.3095119999999998
	.quad	0x401caf8df7a4e7ab              # double 7.1714399999999996
	.quad	0x400f5d72367e414e              # double 3.9206279999999998
	.quad	0x401b9654d61b2a28              # double 6.896808
	.quad	0x4016bc57e23f24d9              # double 5.683929
	.quad	0x3fec38ef34d6a162              # double 0.88195000000000001
	.quad	0x402127090f733a8a              # double 8.5762409999999996
	.quad	0x4020544199fe4367              # double 8.1645629999999993
	.quad	0x4014ee0d23d4f15e              # double 5.2324719999999996
	.quad	0x3ffadb9628cbd124              # double 1.6786099999999999
	.quad	0x3fe38ed80a17b0f7              # double 0.61118700000000004
	.quad	0x40234ea161e4f766              # double 9.653575
	.quad	0x401104cc25072086              # double 4.2546850000000003
	.quad	0x3fd223076c050bd8              # double 0.28338799999999997
	.quad	0x3f9ce703afb7e910              # double 0.028225
	.quad	0x401e94f440af1cb9              # double 7.6454630000000003
	.quad	0x4015972756861e93              # double 5.3976110000000004
	.quad	0x401c3db6e503fb37              # double 7.0602679999999998
	.quad	0x4021f449129888f8              # double 8.9771199999999993
	.quad	0x400b78f3eccc4695              # double 3.434059
	.quad	0x3fcbe49b1fab96f2              # double 0.217914
	.quad	0x40171126a65cf67b              # double 5.7667489999999999
	.quad	0x40218af87ad080b6              # double 8.7714269999999992
	.quad	0x3fde2e3c536d655e              # double 0.47157199999999999
	.quad	0x4020282491afc04d              # double 8.0784040000000008
	.quad	0x3fc4f1d3ed527e52              # double 0.16363
	.quad	0x3fc96d330941c821              # double 0.19864499999999999
	.quad	0x4013a7b139c94f6a              # double 4.9137620000000002
	.quad	0x4020a4449dbec248              # double 8.3208359999999999
	.quad	0x400608882f0e0a85              # double 2.7541660000000001
	.quad	0x40238dac8a372607              # double 9.776707
	.quad	0x4022254c985f06f7              # double 9.0728500000000007
	.quad	0x401d095feda66128              # double 7.2591549999999998
	.quad	0x3fed8318b9346994              # double 0.92225299999999998
	.quad	0x401d26694898f606              # double 7.2875110000000003
	.quad	0x4020de97f1f9ad00              # double 8.4347530000000006
	.quad	0x40145fed634549b6              # double 5.0936789999999998
	.quad	0x401f04267839cd81              # double 7.7540529999999998
	.quad	0x3fffc1355475a31a              # double 1.9846699999999999
	.quad	0x402134647778dd61              # double 8.6023289999999992
	.quad	0x40049ba6698bb4d5              # double 2.5760010000000002
	.quad	0x40221263f9a49c2c              # double 9.0359189999999998
	.quad	0x400243e963dc486b              # double 2.2831600000000001
	.quad	0x4002f846e8f29d41              # double 2.371229
	.quad	0x3f82d0a244630660              # double 0.0091870000000000007
	.quad	0x40229f993d5347a6              # double 9.3117160000000005
	.quad	0x40063e1da7b0b392              # double 2.7803300000000002
	.quad	0x3faee9dd7ecbb7fa              # double 0.060378000000000001
	.quad	0x4019e9af1886df83              # double 6.4782070000000003
	.quad	0x40083c03361565c3              # double 3.0293030000000001
	.quad	0x4017f4be40420f6f              # double 5.989007
	.quad	0x400758cf398e9707              # double 2.918364
	.quad	0x401c2cc814d7279a              # double 7.0437320000000003
	.quad	0x40146a8d64d7f0ed              # double 5.1040549999999998
	.quad	0x400e497b7414a4d3              # double 3.7858800000000001
	.quad	0x401174a276b7ed42              # double 4.3639010000000003
	.quad	0x3ff9aca57a786c22              # double 1.6046499999999999
	.quad	0x3fe9a6351deefe50              # double 0.801539
	.quad	0x402393524399b2c4              # double 9.7877369999999999
	.quad	0x4005a92ff4ba51a0              # double 2.707611
	.quad	0x402161a1fd1569f5              # double 8.6906890000000008
	.quad	0x3fe081908e581cf8              # double 0.51581600000000005
	.quad	0x3ff05d616f86a099              # double 1.0227980000000001
	.quad	0x401a5ba27ae9ab2a              # double 6.5894870000000001
	.quad	0x401819830e3cd9a5              # double 6.0249139999999999
	.quad	0x401dbb8800eae18b              # double 7.4331360000000002
	.quad	0x40145c0229a5ebb7              # double 5.0898519999999996
	.quad	0x401a7dc2f405f6ba              # double 6.622814
	.quad	0x4012d415b1422ccb              # double 4.7071139999999998
	.quad	0x3f7a31a4bdba0a52              # double 0.0063949999999999996
	.quad	0x3ff1316d2aa5c5f8              # double 1.074567
	.quad	0x4021e24b124d099e              # double 8.9419789999999999
	.quad	0x400992f449129889              # double 3.196755
	.quad	0x40150379b77c02b0              # double 5.2533940000000001
	.quad	0x40229a13e3e29308              # double 9.3009330000000005
	.quad	0x4010fc6a7ef9db23              # double 4.2465000000000002
	.quad	0x40200124af0bf1a6              # double 8.0022330000000004
	.quad	0x3ffac24e59296702              # double 1.6724380000000001
	.quad	0x400c29c0a8d21bc1              # double 3.5203869999999999
	.quad	0x40080875d56f32be              # double 3.0041310000000001
	.quad	0x4011a8b2e9ccb7d4              # double 4.4147449999999999
	.quad	0x401a2bb7f9d6f113              # double 6.542694
	.quad	0x40208340f66a5508              # double 8.2563549999999992
	.quad	0x4021c3a8826aa8eb              # double 8.8821449999999995
	.quad	0x400afba5e353f7cf              # double 3.3728750000000001
	.quad	0x401f90b28522ea10              # double 7.8913060000000002
	.quad	0x4019c219220ff541              # double 6.4395490000000004
	.quad	0x40040453d20f2bed              # double 2.502113
	.quad	0x3fd43e39f77292c5              # double 0.31629800000000002
	.quad	0x4023211f926c7eae              # double 9.5646939999999994
	.quad	0x401d5bc3c5bd0e13              # double 7.3396140000000001
	.quad	0x40003a0be5109071              # double 2.028343
	.quad	0x40220130164840e1              # double 9.0023199999999992
	.quad	0x400d145b6c3760bf              # double 3.6349399999999998
	.quad	0x40143925785f8d2e              # double 5.0558069999999997
	.quad	0x40211f3e681a9b8d              # double 8.5610230000000005
	.quad	0x4001c52ce032db1f              # double 2.2212770000000002
	.quad	0x4019b9fb6134ce3e              # double 6.4316230000000001
	.quad	0x4011eb5cbff47736              # double 4.4798460000000002
	.quad	0x400f59ab6d00b45b              # double 3.918784
	.quad	0x40080cdaf4adbc66              # double 3.0062769999999999
	.quad	0x400783a29c779a6b              # double 2.9392749999999999
	.quad	0x40018364388ebcc7              # double 2.1891560000000001
	.quad	0x3fea3111f0c34c1b              # double 0.81849000000000005
	.quad	0x4023a65c91d14e3c              # double 9.8249250000000003
	.quad	0x3ff6b59ccfaeff5c              # double 1.4193389999999999
	.quad	0x3fead75c0767d34e              # double 0.83878900000000001
	.quad	0x4022291600f34507              # double 9.0802460000000007
	.quad	0x4018386e3b46fdeb              # double 6.0551079999999997
	.quad	0x4003e8672756861f              # double 2.4884780000000002
	.quad	0x40214290470a808d              # double 8.6300070000000009
	.quad	0x4009a1797cc39ffd              # double 3.2038449999999998
	.quad	0x40071485e3da2f8c              # double 2.8850210000000001
	.quad	0x3ff3eecbfb15b574              # double 1.2458
	.quad	0x4002a58eeae9ee46              # double 2.3308390000000001
	.quad	0x40016877ee4e26d5              # double 2.1760100000000002
	.quad	0x4016b13b18dac259              # double 5.6730770000000001
	.quad	0x401050fb224aada3              # double 4.0790829999999998
	.quad	0x3fe94558644523f6              # double 0.78971499999999994
	.quad	0x4021e4148344c37e              # double 8.9454689999999992
	.quad	0x401362d6a9c560c8              # double 4.8465220000000002
	.quad	0x4023127136a400fc              # double 9.5360200000000006
	.quad	0x4012d569b17481b2              # double 4.7084109999999999
	.quad	0x400bc81c2e33eff2              # double 3.4727100000000002
	.quad	0x400b48815e39713b              # double 3.4104030000000001
	.quad	0x40085c382a12f901              # double 3.045029
	.quad	0x4011d487b99d4520              # double 4.4575490000000002
	.quad	0x3fd06a875d56f32c              # double 0.25650200000000001
	.quad	0x401d8a8bd230b9dc              # double 7.3852989999999998
	.quad	0x400de1bb8c32a8ca              # double 3.7352210000000001
	.quad	0x4013d0aa64c2f838              # double 4.9537750000000003
	.quad	0x4020a4e075f6fd22              # double 8.322025
	.quad	0x40225dc9c4da9004              # double 9.1831800000000001
	.quad	0x40233744f5d35654              # double 9.6079480000000003
	.quad	0x3ff841871e6cd291              # double 1.515998
	.quad	0x4020e1628cbd1245              # double 8.4402050000000006
	.quad	0x3ff1b809917939a8              # double 1.1074310000000001
	.quad	0x4017bd4024b33db0              # double 5.9348150000000004
	.quad	0x401b89e3c968943e              # double 6.8846579999999999
	.quad	0x4015e1361dc93ea3              # double 5.4699330000000002
	.quad	0x401efa604e1e7104              # double 7.7445079999999997
	.quad	0x4002d8140dd3fe19              # double 2.3555069999999998
	.quad	0x4020bd1ac9afe1da              # double 8.3693449999999991
	.quad	0x401efc62a1b5c7ce              # double 7.7464700000000004
	.quad	0x4015545176145953              # double 5.3323419999999997
	.quad	0x3ff6aca25529fe00              # double 1.4171469999999999
	.quad	0x40141cd184c27200              # double 5.028143
	.quad	0x3fcfbbcf4e874c90              # double 0.247919
	.quad	0x4022599c5a3e39f7              # double 9.1750209999999992
	.quad	0x401e3c564f97edc8              # double 7.558923
	.quad	0x3fb74d8ba40d90e2              # double 0.091026999999999996
	.quad	0x3feeaefd438d1d8a              # double 0.95886099999999996
	.quad	0x3ff577c45cbbc2b9              # double 1.3417399999999999
	.quad	0x40187f972474538f              # double 6.1246
	.quad	0x401c9d12018a43bb              # double 7.1533889999999998
	.quad	0x402395e28aa43351              # double 9.7927440000000007
	.quad	0x401dbb7e90ff9724              # double 7.4330999999999996
	.quad	0x401281d3ed527e52              # double 4.6267849999999999
	.quad	0x4018463992c8c500              # double 6.0685789999999997
	.quad	0x40061ea2d2fe3f36              # double 2.7649590000000002
	.quad	0x4023faa12f901084              # double 9.9895110000000002
	.quad	0x40129227d028a1e0              # double 4.6427300000000002
	.quad	0x3fec9b823c85c24c              # double 0.89398299999999997
	.quad	0x4006ea50507a6bd7              # double 2.864411
	.quad	0x400083137b07075b              # double 2.0640019999999999
	.quad	0x3fd31376d5497311              # double 0.29806300000000002
	.quad	0x400ba4295a6c5d20              # double 3.4551569999999998
	.quad	0x4021bb12f4cf4a56              # double 8.8653790000000008
	.quad	0x4001796d0917d6b6              # double 2.1842899999999998
	.quad	0x40072cf4a558ea7d              # double 2.8969510000000001
	.quad	0x401b2b8800eae18b              # double 6.7925110000000002
	.quad	0x400fe5918a009f62              # double 3.9870939999999999
	.quad	0x4019bcaa326e1156              # double 6.4342430000000004
	.quad	0x400a5b9170d62bf1              # double 3.2947109999999999
	.quad	0x401c65b813016484              # double 7.099335
	.quad	0x4023581908e581cf              # double 9.6720659999999991
	.quad	0x400b59231c64ba95              # double 3.4185240000000001
	.quad	0x3ffb5774256bca53              # double 1.7088509999999999
	.quad	0x40215947f1305964              # double 8.6743769999999997
	.quad	0x4022dd479d4d8341              # double 9.4321870000000007
	.quad	0x401ae542a23bff8b              # double 6.7238870000000004
	.quad	0x4005ce67d77fae36              # double 2.725784
	.quad	0x4003822bbecaab8a              # double 2.4385599999999998
	.quad	0x401cb9fdbd2fa0d7              # double 7.1816319999999996
	.quad	0x40152873ffac1d2a              # double 5.2895050000000001
	.quad	0x4014df865d7cb2d9              # double 5.218286
	.quad	0x3fccc9a77e5eaab0              # double 0.22490399999999999
	.quad	0x400f3f5cf2495e18              # double 3.905939
	.quad	0x3ffbcfba8826aa8f              # double 1.7382150000000001
	.quad	0x4013414983d79075              # double 4.8137569999999998
	.quad	0x40200013a92a3055              # double 8.0001499999999997
	.quad	0x401b340357a35504              # double 6.8007939999999998
	.quad	0x4006b16d2aa5c5f8              # double 2.8366340000000001
	.quad	0x40204dd52c16df40              # double 8.1520170000000007
	.quad	0x4002129dc725c3df              # double 2.25909
	.quad	0x401be2a62aa1943a              # double 6.9713370000000001
	.quad	0x40227cb5dcc63f14              # double 9.2435749999999998
	.quad	0x4021d75ea67e846a              # double 8.9206439999999994
	.quad	0x401cfc200c0f01fc              # double 7.2462160000000004
	.quad	0x3fdb41aac53b0814              # double 0.42588300000000001
	.quad	0x4011d5ae5ffa3b9b              # double 4.4586730000000001
	.quad	0x3fa50acc0bdcad15              # double 0.041098000000000003
	.quad	0x401524ac6cdaf4ae              # double 5.2858140000000002
	.quad	0x3fe4bf1c75818c5d              # double 0.64832900000000004
	.quad	0x40128991ff7164c7              # double 4.6343459999999999
	.quad	0x4022426a65cf67b2              # double 9.1297180000000004
	.quad	0x401c40342aa9f7b6              # double 7.0626990000000003
	.quad	0x3ff694c016052503              # double 1.411316
	.quad	0x4011157d1782d384              # double 4.2709849999999996
	.quad	0x401d5d4306e5cd4f              # double 7.3410760000000002
	.quad	0x402184a643cc07ab              # double 8.7590810000000001
	.quad	0x40208b96f21f6cad              # double 8.2726360000000003
	.quad	0x3fd7e28240b78034              # double 0.37319999999999998
	.quad	0x40121688bda9435b              # double 4.5220060000000002
	.quad	0x402352ed783dff3f              # double 9.6619679999999998
	.quad	0x4022525d4a5df224              # double 9.1608680000000006
	.quad	0x3ff3199dcb5781c7              # double 1.193754
	.quad	0x4017170e2c12ad82              # double 5.7725150000000003
	.quad	0x401ed6f2a5a469d7              # double 7.7099099999999998
	.quad	0x3fbf47c73eee5259              # double 0.12218900000000001
	.quad	0x4000a2e6644d8772              # double 2.0795409999999999
	.quad	0x401aec32ebe596c8              # double 6.7306629999999998
	.quad	0x40149972474538ef              # double 5.1498499999999998
	.quad	0x400466de76427c7c              # double 2.5502289999999999
	.quad	0x3fe28bd44998d046              # double 0.579569
	.quad	0x4009620685553ef7              # double 3.1728640000000001
	.quad	0x40032ebf65dbfceb              # double 2.3978259999999998
	.quad	0x4004c5b9e8c47a18              # double 2.596546
	.quad	0x3fff9439de481f54              # double 1.9736880000000001
	.quad	0x4017d388a8b08dd2              # double 5.9565760000000001
	.quad	0x401b4f8b588e368f              # double 6.82768
	.quad	0x3fd2214ad362e903              # double 0.28328199999999998
	.quad	0x40232248d7e02646              # double 9.5669620000000002
	.quad	0x4021fd5f3519bd40              # double 8.9948669999999992
	.quad	0x402068d7be9856a3              # double 8.2047709999999991
	.quad	0x3ff1da543f1c7582              # double 1.1158030000000001
	.quad	0x3fd6f5f0b28522ea              # double 0.358761
	.quad	0x401280de093532e8              # double 4.6258470000000003
	.quad	0x40145bdd76683c29              # double 5.0897119999999996
	.quad	0x401d2f56eac86057              # double 7.2962300000000004
	.quad	0x4001a7e846a5d6bf              # double 2.2069860000000001
	.quad	0x4022595379fa97e1              # double 9.1744649999999996
	.quad	0x401ff394317acc4f              # double 7.98787
	.quad	0x4001cf6837f7be12              # double 2.2262729999999999
	.quad	0x40231bdccea28fe2              # double 9.5544189999999993
	.quad	0x401bcc3a42f1ed18              # double 6.9494410000000002
	.quad	0x400dc522ea0fd3b3              # double 3.7212580000000002
	.quad	0x4012852d234eb9a1              # double 4.6300549999999996
	.quad	0x4020af79207d4e09              # double 8.3427209999999992
	.quad	0x400bd6ae7d566cf4              # double 3.4798249999999999
	.quad	0x401d1389f83be660              # double 7.2690809999999999
	.quad	0x3fda6744b2b777d1              # double 0.412553
	.quad	0x401c818d25edd053              # double 7.1265150000000004
	.quad	0x40219db1a6d698fe              # double 8.8079959999999993
	.quad	0x4008a8405b39e27a              # double 3.0821540000000001
	.quad	0x4012acdc011d3672              # double 4.6688080000000003
	.quad	0x400ab15b573eab36              # double 3.3365999999999998
	.quad	0x400cde529bae46d0              # double 3.6085560000000001
	.quad	0x40082a7e73a365cb              # double 3.0207489999999999
	.quad	0x3fec60956c0d6f54              # double 0.88678999999999996
	.quad	0x3feb625204af9229              # double 0.85575199999999996
	.quad	0x4016a70fbeb9e493              # double 5.6631460000000002
	.quad	0x40072160d887ebf2              # double 2.8912979999999999
	.size	.L__constant_1999xf64_0, 15992

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
