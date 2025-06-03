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
	.quad	0x4133081dd6934acb              # double 1247261.838185
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
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	108                             # 0x6c
	.quad	125                             # 0x7d
	.quad	140                             # 0x8c
	.quad	183                             # 0xb7
	.quad	194                             # 0xc2
	.quad	213                             # 0xd5
	.quad	254                             # 0xfe
	.quad	271                             # 0x10f
	.quad	288                             # 0x120
	.quad	333                             # 0x14d
	.quad	346                             # 0x15a
	.quad	362                             # 0x16a
	.quad	403                             # 0x193
	.quad	416                             # 0x1a0
	.quad	436                             # 0x1b4
	.quad	479                             # 0x1df
	.quad	494                             # 0x1ee
	.quad	509                             # 0x1fd
	.quad	549                             # 0x225
	.quad	563                             # 0x233
	.quad	579                             # 0x243
	.quad	622                             # 0x26e
	.quad	638                             # 0x27e
	.quad	659                             # 0x293
	.quad	707                             # 0x2c3
	.quad	727                             # 0x2d7
	.quad	743                             # 0x2e7
	.quad	787                             # 0x313
	.quad	797                             # 0x31d
	.quad	816                             # 0x330
	.quad	856                             # 0x358
	.quad	871                             # 0x367
	.quad	884                             # 0x374
	.quad	929                             # 0x3a1
	.quad	944                             # 0x3b0
	.quad	962                             # 0x3c2
	.quad	1006                            # 0x3ee
	.quad	1022                            # 0x3fe
	.quad	1035                            # 0x40b
	.quad	1075                            # 0x433
	.quad	1087                            # 0x43f
	.quad	1103                            # 0x44f
	.quad	1151                            # 0x47f
	.quad	1166                            # 0x48e
	.quad	1188                            # 0x4a4
	.quad	1236                            # 0x4d4
	.quad	1248                            # 0x4e0
	.quad	1263                            # 0x4ef
	.quad	1306                            # 0x51a
	.quad	1320                            # 0x528
	.quad	1333                            # 0x535
	.quad	1383                            # 0x567
	.quad	1395                            # 0x573
	.quad	1405                            # 0x57d
	.quad	1453                            # 0x5ad
	.quad	1471                            # 0x5bf
	.quad	1485                            # 0x5cd
	.quad	1530                            # 0x5fa
	.quad	1545                            # 0x609
	.quad	1559                            # 0x617
	.quad	1605                            # 0x645
	.quad	1618                            # 0x652
	.quad	1633                            # 0x661
	.quad	1678                            # 0x68e
	.quad	1688                            # 0x698
	.quad	1702                            # 0x6a6
	.quad	1750                            # 0x6d6
	.quad	1766                            # 0x6e6
	.quad	1776                            # 0x6f0
	.quad	1818                            # 0x71a
	.quad	1841                            # 0x731
	.quad	1858                            # 0x742
	.quad	1902                            # 0x76e
	.quad	1916                            # 0x77c
	.quad	1936                            # 0x790
	.quad	1986                            # 0x7c2
	.quad	2000                            # 0x7d0
	.quad	2019                            # 0x7e3
	.quad	2063                            # 0x80f
	.quad	2080                            # 0x820
	.quad	2095                            # 0x82f
	.quad	2134                            # 0x856
	.quad	2148                            # 0x864
	.quad	2167                            # 0x877
	.quad	2209                            # 0x8a1
	.quad	2225                            # 0x8b1
	.quad	2239                            # 0x8bf
	.quad	2283                            # 0x8eb
	.quad	2296                            # 0x8f8
	.quad	2312                            # 0x908
	.quad	2356                            # 0x934
	.quad	2369                            # 0x941
	.quad	2383                            # 0x94f
	.quad	2429                            # 0x97d
	.quad	2442                            # 0x98a
	.quad	2454                            # 0x996
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
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
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
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
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	37                              # 0x25
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	71                              # 0x47
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
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	18                              # 0x12
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
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
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
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
	.quad	8                               # 0x8
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	35                              # 0x23
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	99                              # 0x63
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	75                              # 0x4b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	99                              # 0x63
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x401e125c3dee7818              # double 7.5179299999999997
	.quad	0x4020eeeaa6d26741              # double 8.4666340000000009
	.quad	0x40157b838c111ada              # double 5.3706189999999996
	.quad	0x40227b81733226c4              # double 9.2412220000000004
	.quad	0x3fffb7d523b3636f              # double 1.9823809999999999
	.quad	0x4010dd0bfa0945fa              # double 4.2158660000000001
	.quad	0x4006ee08f2170931              # double 2.866228
	.quad	0x3ff6dc7abfb9bed3              # double 1.428828
	.quad	0x40236be1437c5693              # double 9.7107030000000005
	.quad	0x4000d146e4c0df59              # double 2.1021860000000001
	.quad	0x4004801e68a0d34a              # double 2.5625580000000001
	.quad	0x401ce1ba7fc32ebe              # double 7.2204379999999997
	.quad	0x40220a1cef240faa              # double 9.0197520000000004
	.quad	0x4019df90539fba45              # double 6.468324
	.quad	0x401eaaf965b20b80              # double 7.6669669999999996
	.quad	0x4021f1dfb9389b52              # double 8.97241
	.quad	0x401f8122fad6cb53              # double 7.8761099999999997
	.quad	0x401dcc63ae2541d9              # double 7.4495990000000001
	.quad	0x4015ddffc5479d4e              # double 5.4667960000000004
	.quad	0x4015118b0d0edc3c              # double 5.2671320000000001
	.quad	0x402028225742dcf4              # double 8.0783869999999993
	.quad	0x3fbed7a56de3326a              # double 0.120478
	.quad	0x40212e62bae03b3f              # double 8.5905970000000007
	.quad	0x40203ef86a098916              # double 8.1229890000000005
	.quad	0x4000a2c4d65e4606              # double 2.0794769999999998
	.quad	0x4021ad651b0ccbc0              # double 8.8386619999999994
	.quad	0x400ed5bc44bf4cb2              # double 3.8543630000000002
	.quad	0x3fffbf1d81f10668              # double 1.984159
	.quad	0x40222eb0318b9347              # double 9.0911880000000007
	.quad	0x3fb377c02afdda8c              # double 0.076046000000000002
	.quad	0x401def0520d130e0              # double 7.4834180000000003
	.quad	0x4019c780346dc5d6              # double 6.4448249999999998
	.quad	0x3ff9ec753e707e17              # double 1.6202289999999999
	.quad	0x402305ad106ee30d              # double 9.5110860000000005
	.quad	0x40054286f8ad2568              # double 2.6574840000000002
	.quad	0x40154e3da2f8bdec              # double 5.3264069999999997
	.quad	0x3fdf871a3b14a904              # double 0.49262099999999998
	.quad	0x401b1e9142b302f7              # double 6.7798509999999998
	.quad	0x3fec8cc575c0767d              # double 0.89218399999999998
	.quad	0x401d986ec17ebaf1              # double 7.39886
	.quad	0x401ae1a500d5e8d5              # double 6.7203559999999998
	.quad	0x401428c26138fffc              # double 5.0398040000000002
	.quad	0x4021d63ef284167b              # double 8.9184490000000007
	.quad	0x3fd8d00b45ae5ffa              # double 0.38769799999999999
	.quad	0x3fefc0a06e9ff0cc              # double 0.99226400000000003
	.quad	0x4020534549b62c77              # double 8.1626379999999994
	.quad	0x401b981450efdc9c              # double 6.8985149999999997
	.quad	0x400784473cd57364              # double 2.9395889999999998
	.quad	0x4016d8cda6e75ff6              # double 5.711722
	.quad	0x40008d823422467c              # double 2.069096
	.quad	0x40203964c729f59d              # double 8.1120970000000003
	.quad	0x401503b14a90470b              # double 5.2536060000000004
	.quad	0x4016b5db76b3bb84              # double 5.6775950000000002
	.quad	0x4013856d5cfaacda              # double 4.8803000000000001
	.quad	0x400fa8427418d691              # double 3.9571580000000002
	.quad	0x40148c95bff04578              # double 5.1372900000000001
	.quad	0x401ec0b30b5aa716              # double 7.6881830000000004
	.quad	0x400afe18efbb0e5e              # double 3.3740709999999998
	.quad	0x402132ba38759253              # double 8.5990769999999994
	.quad	0x4021eb18b9346994              # double 8.9591729999999998
	.quad	0x401c407d912556d2              # double 7.0629790000000003
	.quad	0x401e3140dd3fe197              # double 7.5480989999999996
	.quad	0x4011d9a671ef30a5              # double 4.4625490000000001
	.quad	0x40106dc1e7967caf              # double 4.1071850000000003
	.quad	0x4007473b42cc2d6b              # double 2.9097810000000002
	.quad	0x401b95b35b0bbf51              # double 6.8961920000000001
	.quad	0x40234323dd54da4d              # double 9.6311330000000001
	.quad	0x3fe7d68c692f6e83              # double 0.74494000000000005
	.quad	0x40233b70ac3a860e              # double 9.6160940000000004
	.quad	0x4008a437824d4cba              # double 3.080184
	.quad	0x4011b11c2a023209              # double 4.4229589999999996
	.quad	0x401e49984a0e410b              # double 7.5718699999999996
	.quad	0x401cb16c1e364bec              # double 7.1732639999999996
	.quad	0x400f852934acaff7              # double 3.9400200000000001
	.quad	0x401d1e3a7daa4fca              # double 7.2795199999999998
	.quad	0x401fb606748e4756              # double 7.927759
	.quad	0x4002e5d851654d62              # double 2.3622290000000001
	.quad	0x402120cae642bf98              # double 8.5640479999999997
	.quad	0x4019994573a79789              # double 6.3996789999999999
	.quad	0x4021e12f2b66b617              # double 8.9398129999999991
	.quad	0x401290b5ed8d36b5              # double 4.6413190000000002
	.quad	0x3fb1b1422ccb3a26              # double 0.069111000000000006
	.quad	0x4017dc2b0ea18373              # double 5.9650080000000001
	.quad	0x4004cb55ef1fddec              # double 2.5992850000000001
	.quad	0x40202bb14a90470b              # double 8.0853370000000009
	.quad	0x40028a0ba1f4b1ee              # double 2.3174049999999999
	.quad	0x401fc13c68661ae7              # double 7.9387069999999999
	.quad	0x3fe0a4e160d887ec              # double 0.52012700000000001
	.quad	0x400a98904f6dfc5d              # double 3.3244940000000001
	.quad	0x4001e62bae03b3ea              # double 2.2373880000000002
	.quad	0x3ffe6a593a2df938              # double 1.9009640000000001
	.quad	0x401a67470eb24a6b              # double 6.6008570000000004
	.quad	0x4011f4a8c154c986              # double 4.4889250000000001
	.quad	0x4014028bb0a2ca9b              # double 5.0024860000000002
	.quad	0x40155c08b75ea67f              # double 5.3398770000000004
	.quad	0x401dec36da87a073              # double 7.4806780000000002
	.quad	0x4021fd5065732160              # double 8.9947540000000004
	.quad	0x401938cef672b884              # double 6.3054769999999998
	.quad	0x3fec37d84901d191              # double 0.88181699999999996
	.quad	0x401037075b3e1438              # double 4.0537390000000002
	.quad	0x40023471f79420b4              # double 2.2756080000000001
	.quad	0x400aaf765fd8adac              # double 3.3356750000000002
	.quad	0x4013fcbee807bbb6              # double 4.9968219999999999
	.quad	0x4013abda9435ac8a              # double 4.9178259999999998
	.quad	0x4012be6afcce1c58              # double 4.6859549999999999
	.quad	0x40237ab302f72b45              # double 9.7396469999999997
	.quad	0x4013546aa087ca64              # double 4.8324379999999998
	.quad	0x40239b5b70691ea8              # double 9.8034320000000008
	.quad	0x4023a51bf7ad4b27              # double 9.8224789999999995
	.quad	0x400cc03d57796399              # double 3.5938669999999999
	.quad	0x4022d612839042d9              # double 9.4181100000000004
	.quad	0x4016a6f049a9973e              # double 5.6630260000000003
	.quad	0x4010a256ffc115df              # double 4.1585349999999996
	.quad	0x40205edf3f961805              # double 8.1852970000000003
	.quad	0x401e524aada33bda              # double 7.5803630000000002
	.quad	0x3ffbacf52b90a783              # double 1.7297260000000001
	.quad	0x4018c692f6e8294a              # double 6.1939200000000003
	.quad	0x401e4bf401c4fc1e              # double 7.574173
	.quad	0x400d1b584b1ab085              # double 3.6383519999999998
	.quad	0x402124141e9af5ba              # double 8.5704659999999997
	.quad	0x4021d6134ce3de61              # double 8.9181159999999995
	.quad	0x3fc9532e7b3d8e00              # double 0.197851
	.quad	0x401ab305100a393f              # double 6.6748240000000001
	.quad	0x401710e1f7d73c92              # double 5.7664869999999997
	.quad	0x3ffedc896dd26b72              # double 1.9288419999999999
	.quad	0x40057a20ddc61954              # double 2.6846329999999998
	.quad	0x40163e7296f6512b              # double 5.5609840000000004
	.quad	0x4018589eba6aca79              # double 6.0865429999999998
	.quad	0x3ffb069835158b82              # double 1.6891099999999999
	.quad	0x401965564b662fe0              # double 6.3489620000000002
	.quad	0x4021043d25247cb7              # double 8.5082789999999999
	.quad	0x4016e04ccee5abc1              # double 5.7190430000000001
	.quad	0x4022a087229e9079              # double 9.3135309999999993
	.quad	0x3fc4250f840181e0              # double 0.15738099999999999
	.quad	0x40138f59ccfaeff6              # double 4.8899910000000002
	.quad	0x4020c75be5d9e40d              # double 8.3893730000000009
	.quad	0x4011af36262cba73              # double 4.4211049999999998
	.quad	0x40094e7cd0353719              # double 3.1633239999999998
	.quad	0x3ff78d3e0bd44999              # double 1.471983
	.quad	0x402393f727136a40              # double 9.7889949999999998
	.quad	0x401e8c8cd63cb817              # double 7.6372559999999998
	.quad	0x3fd903b3e9a6f827              # double 0.390851
	.quad	0x40040f3ba775fb2f              # double 2.5074380000000001
	.quad	0x400909b499d0203e              # double 3.1297389999999998
	.quad	0x401cbb2702a3486f              # double 7.182766
	.quad	0x400f56ac647778dd              # double 3.9173209999999998
	.quad	0x401d79d94d0dcfcc              # double 7.3689929999999997
	.quad	0x401a4a2a4db163bb              # double 6.5724270000000002
	.quad	0x401da05d0fa58f71              # double 7.4066049999999999
	.quad	0x4023443d25247cb7              # double 9.6332789999999999
	.quad	0x4003c273929ed395              # double 2.4699469999999999
	.quad	0x4017fcdb37c99ae9              # double 5.9969299999999999
	.quad	0x3fe40d38cda6e760              # double 0.626614
	.quad	0x401afb1e9f277814              # double 6.745234
	.quad	0x400e158afc47e49b              # double 3.7605189999999999
	.quad	0x3fa283f4eca686e8              # double 0.036163000000000001
	.quad	0x401bfe07e5a78f26              # double 6.9980770000000003
	.quad	0x401fce18efbb0e5e              # double 7.9512669999999996
	.quad	0x400a3ea67e846a5d              # double 3.2805909999999998
	.quad	0x4011c7ed41b75a75              # double 4.4452410000000002
	.quad	0x3ffa12817763e4ac              # double 1.629518
	.quad	0x401cfa52ac753e70              # double 7.2444559999999996
	.quad	0x400cf1ed9dfdac69              # double 3.6181290000000002
	.quad	0x4011ebbe878fabda              # double 4.480219
	.quad	0x401e699567dbb16c              # double 7.6031089999999999
	.quad	0x401fc0535c9e6688              # double 7.937818
	.quad	0x4010e2bfdb4cc250              # double 4.2214349999999996
	.quad	0x401701a21ea35936              # double 5.751595
	.quad	0x3ffca618ce2d1f1d              # double 1.790551
	.quad	0x3fe4982ecaeea63b              # double 0.64357699999999995
	.quad	0x401bdba301216830              # double 6.9644890000000004
	.quad	0x4023cd6733ebbfd7              # double 9.9011779999999998
	.quad	0x4011992fb19e731d              # double 4.3995959999999998
	.quad	0x3fedc5eb313be22e              # double 0.93040999999999996
	.quad	0x401d5eb8d8234224              # double 7.3425019999999996
	.quad	0x400170795f676ea4              # double 2.1799189999999999
	.quad	0x4015a14cec41dd1a              # double 5.4075199999999999
	.quad	0x401395821294573a              # double 4.8960039999999996
	.quad	0x400bf61d4306e5cd              # double 3.4951729999999999
	.quad	0x401d110f94c87981              # double 7.266661
	.quad	0x401d81cac083126f              # double 7.3767500000000004
	.quad	0x4021f076c050bd88              # double 8.9696560000000005
	.quad	0x401a396af038e2a0              # double 6.5560720000000003
	.quad	0x401ccbd2b6f19935              # double 7.1990460000000001
	.quad	0x40170a9bcfd4bf0a              # double 5.7603600000000004
	.quad	0x401b55d5f56a7ac8              # double 6.8338239999999999
	.quad	0x401aa09bf9c62a1b              # double 6.6568449999999997
	.quad	0x401cf68d32830a0b              # double 7.2407729999999999
	.quad	0x3feb41094a2b9d3d              # double 0.85168900000000003
	.quad	0x400605b7cfe58601              # double 2.7527919999999999
	.quad	0x4007119c5a3e39f7              # double 2.8835989999999998
	.quad	0x3ff388882f0e0a85              # double 1.2208330000000001
	.quad	0x401fbba3ca7503b8              # double 7.9332419999999999
	.quad	0x3ff497481b21c476              # double 1.286934
	.quad	0x401bbde97d06bbdc              # double 6.9354610000000001
	.quad	0x401852f7b17ce52e              # double 6.0810230000000001
	.quad	0x401413b7952d234f              # double 5.0192550000000002
	.quad	0x4023d88333fc86cf              # double 9.9228760000000004
	.quad	0x40211b27cbf6e3f8              # double 8.5530380000000008
	.quad	0x4016d7dbf487fcb9              # double 5.7107999999999999
	.quad	0x40017a35d67ba238              # double 2.1846730000000001
	.quad	0x4021c300ffda4053              # double 8.8808670000000003
	.quad	0x40011829068986fd              # double 2.1367970000000001
	.quad	0x3fb4faeff5c6c11a              # double 0.081953999999999999
	.quad	0x3fe9f80346dc5d64              # double 0.81152500000000005
	.quad	0x3fedd143bf727137              # double 0.93179500000000004
	.quad	0x4012652ac753e708              # double 4.5987960000000001
	.quad	0x3fbe9930be0ded29              # double 0.11952500000000001
	.quad	0x4017ab07075b3e14              # double 5.9170189999999998
	.quad	0x4014e97aeddce7cd              # double 5.228008
	.quad	0x40186d5e8d5410f9              # double 6.1068059999999997
	.quad	0x3ff7db8561d4306e              # double 1.4910939999999999
	.quad	0x401f675d56f32bdc              # double 7.8509419999999999
	.quad	0x4023f944aa53fc01              # double 9.9868520000000007
	.quad	0x4022a5362e903644              # double 9.3226790000000008
	.quad	0x400a9ef8487b99d4              # double 3.3276219999999999
	.quad	0x4011e780346dc5d6              # double 4.4760749999999998
	.quad	0x3fed8b47c73eee52              # double 0.92325199999999996
	.quad	0x4011876ff3ade226              # double 4.382263
	.quad	0x3fdd94a6eb91b3f2              # double 0.462198
	.quad	0x401dbbb2bba98eda              # double 7.4332989999999999
	.quad	0x3ff877f5a5332ad0              # double 1.5292870000000001
	.quad	0x40136253111f0c35              # double 4.8460200000000002
	.quad	0x401620b0f27bb2ff              # double 5.5319250000000002
	.quad	0x400e1c73eee52589              # double 3.7638929999999999
	.quad	0x401e34dbdf8f4730              # double 7.5516199999999998
	.quad	0x401036833c60029f              # double 4.0532349999999999
	.quad	0x4020c638a7e73a36              # double 8.3871509999999994
	.quad	0x401bb34c1a8ac5c1              # double 6.9250949999999998
	.quad	0x4006407357e670e3              # double 2.7814700000000001
	.quad	0x3ff7624dd2f1a9fc              # double 1.4615
	.quad	0x3fd51094a2b9d3cc              # double 0.32913700000000001
	.quad	0x401b6c193b3a68b2              # double 6.8555650000000004
	.quad	0x40237f9e59f2ba9d              # double 9.7492549999999997
	.quad	0x4021ec6801711948              # double 8.9617310000000003
	.quad	0x4011560780fdc161              # double 4.3340129999999997
	.quad	0x4018862f166e008f              # double 6.1310390000000003
	.quad	0x3ff89f548ecd8dbd              # double 1.538899
	.quad	0x4008db8ed1bf7ad5              # double 3.1072060000000001
	.quad	0x3ffddfcf3dc054ef              # double 1.8671409999999999
	.quad	0x4023a98676a7264a              # double 9.8311039999999998
	.quad	0x3ff866d58c8eef1c              # double 1.5251060000000001
	.quad	0x40099e1437c5692b              # double 3.2021869999999999
	.quad	0x401d5247021d10b2              # double 7.330349
	.quad	0x401fb031055b8994              # double 7.9220620000000004
	.quad	0x3ff560a0f4d7add1              # double 1.3360909999999999
	.quad	0x401b90a2ca9ac365              # double 6.8912459999999998
	.quad	0x401dd70e2c12ad82              # double 7.4600150000000003
	.quad	0x4020f24f227d028a              # double 8.4732599999999998
	.quad	0x4013b02107b78466              # double 4.9220009999999998
	.quad	0x402324c25072085b              # double 9.5717949999999998
	.quad	0x3fe7b3f85510d38d              # double 0.74071900000000002
	.quad	0x3f916d2aa5c5f7c6              # double 0.017017999999999998
	.quad	0x402331b21c475e63              # double 9.5970619999999993
	.quad	0x4014c2b841248d7e              # double 5.190156
	.quad	0x40211a6a44417870              # double 8.5515919999999994
	.quad	0x401575fe542e557e              # double 5.3652280000000001
	.quad	0x3fdc160d887ebf23              # double 0.43884600000000001
	.quad	0x401591333b96af04              # double 5.3917970000000004
	.quad	0x401cc10f0e90bc7b              # double 7.1885339999999998
	.quad	0x401b30c62e4d1a65              # double 6.797631
	.quad	0x3fdc097c80841ede              # double 0.438079
	.quad	0x4016fabb01c92ddc              # double 5.7448540000000001
	.quad	0x3ff1a8e60807357e              # double 1.1037349999999999
	.quad	0x400cd7ce52deca25              # double 3.6053739999999999
	.quad	0x40108a7503b81b65              # double 4.1352120000000001
	.quad	0x3ff6010f94c87981              # double 1.375259
	.quad	0x400ab86876e1dead              # double 3.3400430000000001
	.quad	0x4017bd898b2e9ccb              # double 5.9350949999999996
	.quad	0x3ff774efcbd55608              # double 1.4660489999999999
	.quad	0x4022ee90ff972474              # double 9.4659499999999994
	.quad	0x401ae44417870542              # double 6.7229159999999997
	.quad	0x400167cb70ac3a86              # double 2.175681
	.quad	0x401b555d5f56a7ad              # double 6.8333640000000004
	.quad	0x40071695d91ab8e9              # double 2.886028
	.quad	0x40132409a2403148              # double 4.7851929999999996
	.quad	0x401717789a459104              # double 5.7729210000000002
	.quad	0x3feed32e7b3d8e00              # double 0.96327899999999999
	.quad	0x4003005b39e279dd              # double 2.3751739999999999
	.quad	0x401c66f5019f3c71              # double 7.1005440000000002
	.quad	0x3fc6fbeb9e492bc3              # double 0.179563
	.quad	0x40185427c7c5260f              # double 6.0821829999999997
	.quad	0x401ad238da3c2118              # double 6.7052949999999996
	.quad	0x4022056a161e4f76              # double 9.0105749999999993
	.quad	0x400b78359bc33f85              # double 3.4336959999999999
	.quad	0x400e03800218def4              # double 3.751709
	.quad	0x3fca281ba7fc32ec              # double 0.204349
	.quad	0x3ff1d104d551d68c              # double 1.1135299999999999
	.quad	0x4007907f23cc8de3              # double 2.9455550000000001
	.quad	0x4021dff865d7cb2e              # double 8.9374420000000008
	.quad	0x4018c75ff609dcf9              # double 6.1947020000000004
	.quad	0x402135e33269df98              # double 8.6052490000000006
	.quad	0x4001c342aa9f7b5b              # double 2.220342
	.quad	0x40217f97cc39ffd6              # double 8.7492049999999999
	.quad	0x3ff5123b3636f3b2              # double 1.316951
	.quad	0x4017a22467be553b              # double 5.9083420000000002
	.quad	0x40052d31769a9110              # double 2.6470669999999998
	.quad	0x4014ffc9bc771434              # double 5.2497930000000004
	.quad	0x400adead4f5903a7              # double 3.3587289999999999
	.quad	0x3ff94c521dda059a              # double 1.5811329999999999
	.quad	0x3fed2a3cea6c1a05              # double 0.91140600000000005
	.quad	0x401b25ef62f9ca5c              # double 6.7870460000000001
	.quad	0x40106fcfc3f811f5              # double 4.109191
	.quad	0x400ac1af7d30ad47              # double 3.344573
	.quad	0x400fc1797cc39ffd              # double 3.9694699999999998
	.quad	0x401c3eca25529fe0              # double 7.061318
	.quad	0x401ad3cc8de2ac32              # double 6.7068349999999999
	.quad	0x4007bb0b39192642              # double 2.9663300000000001
	.quad	0x40148693c03bc4d2              # double 5.1314229999999998
	.quad	0x400c6aff6d330942              # double 3.5522450000000001
	.quad	0x4020476ddaceee0f              # double 8.1395099999999996
	.quad	0x3ff57cdee34fc611              # double 1.342986
	.quad	0x401d71fd9ba1b196              # double 7.3613189999999999
	.quad	0x3fe007e175d13d75              # double 0.50096200000000002
	.quad	0x400ee3b4f6167232              # double 3.8611849999999999
	.quad	0x401e6288ce703afb              # double 7.5962249999999995
	.quad	0x400e04a05dd8f92b              # double 3.752259
	.quad	0x4022b08e79aae6c9              # double 9.3448370000000001
	.quad	0x400b07fbacb42891              # double 3.378898
	.quad	0x401877ed41b75a75              # double 6.1171160000000002
	.quad	0x4006f2e7b3d8e001              # double 2.8686060000000002
	.quad	0x4012a2bba98eda23              # double 4.658919
	.quad	0x4012606af46aa088              # double 4.5941580000000002
	.quad	0x40164a697aeddce8              # double 5.5726680000000002
	.quad	0x401e9141205bc01a              # double 7.6418499999999998
	.quad	0x4023182de00d1b71              # double 9.5472249999999991
	.quad	0x4021bd59f6ec5b08              # double 8.8698270000000008
	.quad	0x3fec54a1ad6451b9              # double 0.88533099999999998
	.quad	0x3fcb418d6909aed5              # double 0.21293799999999999
	.quad	0x4019c78f25a250f8              # double 6.4448819999999998
	.quad	0x40229363b256ffc1              # double 9.2878699999999998
	.quad	0x40012ff7dfa00e28              # double 2.1484220000000001
	.quad	0x3fddafc04c8bc9cd              # double 0.46385199999999999
	.quad	0x3ff913879c4113c7              # double 1.5672680000000001
	.quad	0x400d77774aba3876              # double 3.6833330000000002
	.quad	0x402346e08f217093              # double 9.6384319999999998
	.quad	0x401a2ebbfd71b047              # double 6.5456390000000004
	.quad	0x4021993a0c6b484d              # double 8.7992709999999992
	.quad	0x3fc366c6de76427c              # double 0.15157399999999999
	.quad	0x4011d4927913e814              # double 4.4575899999999997
	.quad	0x401438259e1f3a58              # double 5.0548310000000001
	.quad	0x402131c475e6362a              # double 8.5972019999999993
	.quad	0x4021f807570c5650              # double 8.9844310000000007
	.quad	0x4023ca5e99e94ab2              # double 9.8952530000000003
	.quad	0x4017738c5436b8fa              # double 5.8628400000000003
	.quad	0x3ff7e53da72a7bd5              # double 1.4934670000000001
	.quad	0x40003d57ff9b5632              # double 2.0299529999999999
	.quad	0x401858c586876e1e              # double 6.0866910000000001
	.quad	0x400366583e8576cd              # double 2.424973
	.quad	0x4001d220791c4b90              # double 2.2276009999999999
	.quad	0x401b30c282c6ef3d              # double 6.7976169999999998
	.quad	0x400d8ff7dfa00e28              # double 3.6952970000000001
	.quad	0x401ab73bc903ea70              # double 6.6789389999999997
	.quad	0x40142f01754b05b8              # double 5.0459040000000002
	.quad	0x40214d929670196e              # double 8.6515090000000008
	.quad	0x400fd2253111f0c3              # double 3.9776099999999999
	.quad	0x4015371f36262cba              # double 5.3038299999999996
	.quad	0x401bf34091c08744              # double 6.9875509999999998
	.quad	0x40227abffcdab192              # double 9.2397460000000002
	.quad	0x401bb6b09635610b              # double 6.9284080000000001
	.quad	0x3ff1d41205bc01a3              # double 1.1142749999999999
	.quad	0x3ffb9f82b1f687b1              # double 1.7264429999999999
	.quad	0x3ffe8c122749f0e5              # double 1.909197
	.quad	0x4008273365881a15              # double 3.0191409999999999
	.quad	0x3ff9b4a771c970f8              # double 1.6066050000000001
	.quad	0x4003a008e9b38d61              # double 2.4531420000000002
	.quad	0x4012b48adeebb342              # double 4.6763110000000001
	.quad	0x40202dc725c3dee8              # double 8.0894100000000009
	.quad	0x3fe4999567dbb16c              # double 0.64374799999999999
	.quad	0x3ffffb1e18efbb0e              # double 1.9988079999999999
	.quad	0x4021876f4be835df              # double 8.7645210000000002
	.quad	0x401bf1cef240fa9c              # double 6.9861409999999999
	.quad	0x400559791819d239              # double 2.6686879999999999
	.quad	0x4023f4f09528f191              # double 9.9783980000000003
	.quad	0x402087fe08aefb2b              # double 8.2656100000000006
	.quad	0x401e13bc903ea705              # double 7.5192740000000002
	.quad	0x4017f56de33269e0              # double 5.9896770000000004
	.quad	0x40230f7f8ca8198f              # double 9.5302699999999997
	.quad	0x3ff0d06fef7c243e              # double 1.050888
	.quad	0x40134984e3ffef39              # double 4.821796
	.quad	0x3fef2eee957470eb              # double 0.97447899999999998
	.quad	0x40014489d27c3937              # double 2.1584660000000002
	.quad	0x40008234a87e38eb              # double 2.063577
	.quad	0x402110e30446b69e              # double 8.5329820000000005
	.quad	0x4004cfa2f05a708f              # double 2.6013850000000001
	.quad	0x3ff0b4ca0c282c6f              # double 1.044138
	.quad	0x401c5551d68c692f              # double 7.0833199999999996
	.quad	0x3fe6b0164840e172              # double 0.70899500000000004
	.quad	0x401a52363b256ffc              # double 6.5802849999999999
	.quad	0x400e4e3b46fdeb53              # double 3.7881990000000001
	.quad	0x3ff2c0f55de58e65              # double 1.1721090000000001
	.quad	0x4018c7243137b070              # double 6.1944739999999996
	.quad	0x402070dcdb37c99b              # double 8.2204350000000002
	.quad	0x40160c77574f722e              # double 5.5121739999999999
	.quad	0x40101a12b5e529bb              # double 4.0254620000000001
	.quad	0x400d5717df19d66b              # double 3.6675260000000001
	.quad	0x3ff7e3d9231c64bb              # double 1.4931270000000001
	.quad	0x4006b8e3ac0c62e5              # double 2.8402780000000001
	.quad	0x401762328f9f44d4              # double 5.8458959999999998
	.quad	0x4023d05729b280f1              # double 9.9069149999999996
	.quad	0x401063c5bd0e12e8              # double 4.0974339999999998
	.quad	0x40218cb44a1f0803              # double 8.774813
	.quad	0x40200008205ff1d8              # double 8.0000619999999998
	.quad	0x4012dabc947064ed              # double 4.7136100000000001
	.quad	0x3f510e453d20f2bf              # double 0.001041
	.quad	0x401aa5553ef6b5d4              # double 6.6614579999999997
	.quad	0x401e03910c2c5e2d              # double 7.5034830000000001
	.quad	0x4007df2a172abef0              # double 2.9839669999999998
	.quad	0x401c02fd75e2046c              # double 7.0029199999999996
	.quad	0x3ff5441fea8112ba              # double 1.329132
	.quad	0x400de0221426fe72              # double 3.7344400000000002
	.quad	0x40132b242070b8d0              # double 4.7921300000000002
	.quad	0x3ff15eb7457c0b13              # double 1.0856239999999999
	.quad	0x3ff7be154434e337              # double 1.4839070000000001
	.quad	0x400ad73d9ec70004              # double 3.3550979999999999
	.quad	0x40200fe64f54d1e9              # double 8.0310539999999992
	.quad	0x40233ab68cef672c              # double 9.6146740000000008
	.quad	0x4022358eeae9ee46              # double 9.1046060000000004
	.quad	0x3fbec4f7ec3547e0              # double 0.12019299999999999
	.quad	0x3fe0568837718655              # double 0.51056299999999999
	.quad	0x401bdc1d6cf850df              # double 6.9649559999999999
	.quad	0x400743608d08919f              # double 2.907899
	.quad	0x40165a597d49d7ba              # double 5.5882319999999996
	.quad	0x4021270da5daf07c              # double 8.576276
	.quad	0x401282ca57a786c2              # double 4.6277249999999999
	.quad	0x400fa10f0e90bc7b              # double 3.9536419999999999
	.quad	0x3ff01b21c475e636              # double 1.006624
	.quad	0x3ff1cbed740c4157              # double 1.112287
	.quad	0x40203075f6fd21ff              # double 8.0946499999999997
	.quad	0x3ffe7c1ce6c093d9              # double 1.9053009999999999
	.quad	0x401424944ed6fda8              # double 5.0357219999999998
	.quad	0x3fdaf2778140dd40              # double 0.42104900000000001
	.quad	0x3ff188d7e02645e5              # double 1.095909
	.quad	0x3fe3bb7739f340d5              # double 0.61663400000000002
	.quad	0x4013976d5497310a              # double 4.8978780000000004
	.quad	0x400d5f04ddb5525d              # double 3.6713960000000001
	.quad	0x3fede2a5e785b5b7              # double 0.933917
	.quad	0x401cf7585be1a826              # double 7.2415479999999999
	.quad	0x3ff014df8b157258              # double 1.005096
	.quad	0x4013f814940bbb1f              # double 4.9922659999999999
	.quad	0x4020ce9c886162f1              # double 8.4035379999999993
	.quad	0x40182a71de69ad43              # double 6.0414500000000002
	.quad	0x401d9591cd1c7de5              # double 7.396064
	.quad	0x401e78b32ce89657              # double 7.617871
	.quad	0x40070cb31c219eb6              # double 2.8812009999999999
	.quad	0x4000b48d3ae685db              # double 2.0881599999999998
	.quad	0x400715e7c8d19589              # double 2.8856959999999998
	.quad	0x401f353586ca89fc              # double 7.8019619999999996
	.quad	0x401b4f112fd32c62              # double 6.8272139999999997
	.quad	0x4023689118c197e5              # double 9.7042319999999993
	.quad	0x400d92f09d8c6d61              # double 3.6967479999999999
	.quad	0x4012cb8348f53c58              # double 4.6987430000000003
	.quad	0x4022990c0ad03d9b              # double 9.2989200000000007
	.quad	0x401264f5903a7547              # double 4.5985930000000002
	.quad	0x4021d244c7b02d5a              # double 8.9106810000000003
	.quad	0x4012a5553ef6b5d4              # double 4.6614579999999997
	.quad	0x3fe53bc903ea704c              # double 0.66354800000000003
	.quad	0x3fe1c69b5a63f9a5              # double 0.55549400000000004
	.quad	0x402085d13d74d595              # double 8.2613620000000001
	.quad	0x40130f301eabbcb2              # double 4.7648320000000002
	.quad	0x3ff01a426bb55ac0              # double 1.0064109999999999
	.quad	0x400463ad9f0a1be3              # double 2.5486710000000001
	.quad	0x401272014727dcbe              # double 4.6113330000000001
	.quad	0x401fb49c6f36ef80              # double 7.9263779999999997
	.quad	0x401c3cfc829cfdd2              # double 7.0595569999999999
	.quad	0x401cc21144cbe1eb              # double 7.1895189999999998
	.quad	0x40211ad2135daad6              # double 8.552384
	.quad	0x4011383e425aee63              # double 4.3049249999999999
	.quad	0x40226c7b45f17bd9              # double 9.2118780000000005
	.quad	0x40214c1fc8f32379              # double 8.6486800000000006
	.quad	0x400935525cc42635              # double 3.1510359999999999
	.quad	0x401891094a2b9d3d              # double 6.1416370000000002
	.quad	0x401bc4b7b28954a8              # double 6.942107
	.quad	0x3fefa5460aa64c30              # double 0.98892500000000005
	.quad	0x3ffb7e80389f83be              # double 1.7183839999999999
	.quad	0x401b6bb517a46174              # double 6.8551830000000002
	.quad	0x3fec1a38fbca105a              # double 0.87820100000000001
	.quad	0x400309ff0cbaf966              # double 2.3798810000000001
	.quad	0x401f96e8f29d40ee              # double 7.897373
	.quad	0x3fe74a1cef240faa              # double 0.72779700000000003
	.quad	0x40236b10342aa9f8              # double 9.7091080000000005
	.quad	0x3ffdbe82517e77d5              # double 1.859011
	.quad	0x4015dbbba55d1c3b              # double 5.4645830000000002
	.quad	0x4019557646ae3a3b              # double 6.3334590000000004
	.quad	0x400b4eee957470eb              # double 3.4135409999999999
	.quad	0x4022c9374bc6a7f0              # double 9.3930000000000007
	.quad	0x401eb7079e59f2bb              # double 7.6787400000000003
	.quad	0x4021dae4b0186120              # double 8.9275260000000003
	.quad	0x3ff6090b417ca212              # double 1.377208
	.quad	0x402238f14db59579              # double 9.1112160000000006
	.quad	0x402376ac215b9a5b              # double 9.7317820000000008
	.quad	0x3fcf44241c3efae8              # double 0.24426700000000001
	.quad	0x3ff953660e51d25b              # double 1.5828610000000001
	.quad	0x3ff60f227d028a1e              # double 1.378695
	.quad	0x400eabb55ac03ff7              # double 3.8338420000000002
	.quad	0x40184886162f166e              # double 6.070824
	.quad	0x400576ed6777079e              # double 2.6830699999999998
	.quad	0x401860dbf0563ed1              # double 6.094589
	.quad	0x401ccdd69d30270f              # double 7.2010139999999998
	.quad	0x4022e89acbc8c0cf              # double 9.4543060000000007
	.quad	0x3ffa46e4c0df58c1              # double 1.6423080000000001
	.quad	0x400dfbb0e5e67946              # double 3.7478959999999999
	.quad	0x400840232096787d              # double 3.031317
	.quad	0x40007700cd855971              # double 2.0581070000000001
	.quad	0x401b02ead9274e23              # double 6.7528490000000003
	.quad	0x402396976bc1effa              # double 9.7941240000000001
	.quad	0x4000a4a276b7ed42              # double 2.0803880000000001
	.quad	0x401163f5f91600f3              # double 4.3476179999999998
	.quad	0x3fff64adff822bbf              # double 1.96208
	.quad	0x401124f3fd933e36              # double 4.2860870000000002
	.quad	0x4019dcbab649d389              # double 6.4655560000000003
	.quad	0x3ff2b46aa087ca64              # double 1.1690469999999999
	.quad	0x3ffc43e100607810              # double 1.766572
	.quad	0x4006f2556d19dece              # double 2.8683269999999998
	.quad	0x4022c0941c8216c6              # double 9.3761299999999999
	.quad	0x401c95785f8d2e51              # double 7.1459669999999997
	.quad	0x4000c7c0f4517614              # double 2.0975359999999998
	.quad	0x401494806290eed0              # double 5.1450209999999998
	.quad	0x402379363f572de4              # double 9.7367419999999995
	.quad	0x4019432f01754b06              # double 6.3156090000000003
	.quad	0x4021eae685db76b4              # double 8.9587900000000004
	.quad	0x4001ca209aaa3ad2              # double 2.2236950000000002
	.quad	0x40234d01c0ca600b              # double 9.6504039999999999
	.quad	0x40219ab0ea18372e              # double 8.8021309999999993
	.quad	0x3fd936d655e28aa4              # double 0.39397199999999999
	.quad	0x4010cb9d7fd82774              # double 4.1988430000000001
	.quad	0x401bd3d4ae429e0a              # double 6.9568659999999998
	.quad	0x3ff4598aeb80ecfa              # double 1.2718609999999999
	.quad	0x40103f04577d9557              # double 4.0615399999999999
	.quad	0x3ffb332bdc26dce4              # double 1.6999930000000001
	.quad	0x401fdbb5e0f7fcfc              # double 7.9645609999999998
	.quad	0x4017a0bae89eba6b              # double 5.9069630000000002
	.quad	0x4021d70867ad8e43              # double 8.9199859999999997
	.quad	0x401d5d2f5dbb9cfa              # double 7.3410010000000003
	.quad	0x3fe2dda8bd230b9e              # double 0.58955800000000003
	.quad	0x3ff5e06e9ff0cbb0              # double 1.3672930000000001
	.quad	0x401b2e4755ffe6d6              # double 6.7951940000000004
	.quad	0x4017ce9d0e991ff7              # double 5.9517709999999999
	.quad	0x40202f7f8ca8198f              # double 8.0927699999999998
	.quad	0x402265cb9a9da598              # double 9.1988190000000003
	.quad	0x40121361dc93ea2d              # double 4.5189279999999998
	.quad	0x40051989df1172ef              # double 2.63747
	.quad	0x401878f4f93bc0a0              # double 6.1181219999999996
	.quad	0x401b8806af46aa08              # double 6.8828379999999996
	.quad	0x401fd277c45cbbc3              # double 7.9555350000000002
	.quad	0x401f7765fd8adaba              # double 7.8666
	.quad	0x402194a925fe974a              # double 8.7903529999999996
	.quad	0x4021d7cfe5860136              # double 8.9215079999999993
	.quad	0x402038d32830a0b2              # double 8.1109860000000005
	.quad	0x4022ca15b9a5a89c              # double 9.3946970000000007
	.quad	0x3ff836544fe36d22              # double 1.5132639999999999
	.quad	0x401f8014b599aa61              # double 7.8750790000000003
	.quad	0x400c3ec2480e8c8b              # double 3.5306440000000001
	.quad	0x401fcf6db940fece              # double 7.9525670000000002
	.quad	0x40116782d38476f3              # double 4.3510850000000003
	.quad	0x401f58e219652bd4              # double 7.8368000000000002
	.quad	0x3ff2ba072d1aeb3e              # double 1.170417
	.quad	0x4022112b7fe08af0              # double 9.0335350000000005
	.quad	0x3ff6d64b662fdfc2              # double 1.4273180000000001
	.quad	0x3ff27ab430f49492              # double 1.154957
	.quad	0x401aeeff9f87f024              # double 6.7333970000000001
	.quad	0x401e94fdb09a671f              # double 7.645499
	.quad	0x3fdecf4a558ea7ce              # double 0.481402
	.quad	0x401676a161e4f766              # double 5.61585
	.quad	0x3ff8c6583e8576cd              # double 1.548424
	.quad	0x4019c03a7546d3fa              # double 6.4377230000000001
	.quad	0x3fffa7685985ad54              # double 1.9783710000000001
	.quad	0x400b2bd66277c45d              # double 3.3964050000000001
	.quad	0x401da15b573eab36              # double 7.4075749999999996
	.quad	0x3fe207980f55de59              # double 0.56342700000000001
	.quad	0x3fd8e72da122fad7              # double 0.38911000000000001
	.quad	0x3fe79d8409e55c10              # double 0.73797800000000002
	.quad	0x401a8a8a3f8982cb              # double 6.6352929999999999
	.quad	0x3ff611fd5885d313              # double 1.379392
	.quad	0x401193201040bfe4              # double 4.3936770000000003
	.quad	0x3ff5652ce032db1f              # double 1.3372010000000001
	.quad	0x3fde563a9f383f0c              # double 0.47401300000000002
	.quad	0x4005906d50657321              # double 2.6955209999999998
	.quad	0x4023eedbf8b9baa1              # double 9.9665219999999994
	.quad	0x4020f0a02b841249              # double 8.4699720000000003
	.quad	0x401da09784ec636b              # double 7.406828
	.quad	0x3ff7078c868b9fdc              # double 1.439343
	.quad	0x401b62b841248d7e              # double 6.846406
	.quad	0x40200f8c0053e2d6              # double 8.0303649999999998
	.quad	0x4001b8c197e56473              # double 2.2152129999999999
	.quad	0x400f16f6512a94ff              # double 3.886212
	.quad	0x40104f47304039ac              # double 4.07742
	.quad	0x401830f0a5efe932              # double 6.0477930000000004
	.quad	0x401facd855970b4a              # double 7.9187940000000001
	.quad	0x401b02ef911cf356              # double 6.7528670000000002
	.quad	0x401885ae5ffa3b9b              # double 6.1305480000000001
	.quad	0x400a1939a7c17a89              # double 3.2623169999999999
	.quad	0x400db4f9c1f85d74              # double 3.7133669999999999
	.quad	0x3ff20ac083126e98              # double 1.1276250000000001
	.quad	0x3fffa52ce032db1f              # double 1.9778260000000001
	.quad	0x4021141461b6d43d              # double 8.539218
	.quad	0x402387fde7210be9              # double 9.7656089999999995
	.quad	0x4006d4467381d7dc              # double 2.85365
	.quad	0x4011026d04e618ce              # double 4.2523689999999998
	.quad	0x401c757eed45e918              # double 7.1147419999999997
	.quad	0x4020deaa6d267408              # double 8.4348939999999999
	.quad	0x401a1320535c9e67              # double 6.5186780000000004
	.quad	0x40032a715831f03d              # double 2.395724
	.quad	0x4019d329802c0a4a              # double 6.456213
	.quad	0x402341d81f106680              # double 9.6286020000000008
	.quad	0x3ff9bd1244a6223e              # double 1.60866
	.quad	0x4015e67f0aa21a72              # double 5.4750940000000003
	.quad	0x40153ce8533b1077              # double 5.3094799999999998
	.quad	0x40119b71fbc5de9c              # double 4.401802
	.quad	0x40114b1e9f277814              # double 4.323359
	.quad	0x400d7e5c0b999136              # double 3.6866989999999999
	.quad	0x4014eb9f559b3d08              # double 5.2301000000000002
	.quad	0x4023df5ff609dcf9              # double 9.9362790000000007
	.quad	0x3fd7496ededaec4a              # double 0.36385699999999999
	.quad	0x3ffdb632c1f42bb6              # double 1.8569819999999999
	.quad	0x3fd010adcd2d44dd              # double 0.25101800000000002
	.quad	0x401dcf5e84f09529              # double 7.4525090000000001
	.quad	0x4021b01626b2f230              # double 8.8439189999999996
	.quad	0x4021311dde37585c              # double 8.5959310000000002
	.quad	0x401f2583e8576cce              # double 7.7866359999999997
	.quad	0x401474894c447c31              # double 5.1138050000000002
	.quad	0x3fdef840181e03f7              # double 0.483902
	.quad	0x4012d46e4c0df58c              # double 4.707452
	.quad	0x401c4d8ec95bff04              # double 7.0757399999999997
	.quad	0x4017568ec52a411c              # double 5.8345289999999999
	.quad	0x400e75d1c3ac929b              # double 3.8075290000000002
	.quad	0x400877268d32830a              # double 3.058179
	.quad	0x401c9f822bbecaac              # double 7.1557700000000004
	.quad	0x4019c1fd1569f490              # double 6.4394419999999997
	.quad	0x4015703148776816              # double 5.3595629999999996
	.quad	0x40192fdbd2fa0d78              # double 6.2967370000000003
	.quad	0x4004fb3636f3b214              # double 2.622662
	.quad	0x400e573f316e3715              # double 3.7926009999999999
	.quad	0x4021480e496ededb              # double 8.6407340000000001
	.quad	0x4003e5d63886594b              # double 2.487225
	.quad	0x400b3ea0ba1f4b1f              # double 3.4055800000000001
	.quad	0x4002d620685553ef              # double 2.3545539999999998
	.quad	0x3ffabc5479d4d834              # double 1.670979
	.quad	0x40199c2c5e2cdc01              # double 6.4025129999999999
	.quad	0x3fed873de1e2de87              # double 0.922759
	.quad	0x3fcae64b2314013f              # double 0.21015300000000001
	.quad	0x4000d9b66f9335d2              # double 2.1063049999999999
	.quad	0x4015d54b48d3ae68              # double 5.4582949999999997
	.quad	0x400b54a98aa8650e              # double 3.4163389999999998
	.quad	0x3fe4aa087ca643cc              # double 0.645756
	.quad	0x3fe4db35b0bbf50e              # double 0.65175899999999998
	.quad	0x401ec85be1a82624              # double 7.6956629999999997
	.quad	0x40169ed06fef7c24              # double 5.6550919999999998
	.quad	0x401241efb6dca07f              # double 4.5643909999999996
	.quad	0x3ffa2dba4d6e47dc              # double 1.636164
	.quad	0x4021416249a133c2              # double 8.6277030000000003
	.quad	0x4019ab28522ea0fd              # double 6.4171459999999998
	.quad	0x40224f820a30db6a              # double 9.1552889999999998
	.quad	0x40210267c6b8b695              # double 8.5046979999999994
	.quad	0x400752778140dd40              # double 2.9152670000000001
	.quad	0x40163704790b8499              # double 5.5537280000000004
	.quad	0x401db52c16df3f96              # double 7.4269259999999999
	.quad	0x40211f2495e17e35              # double 8.5608260000000005
	.quad	0x4022697aeddce7cd              # double 9.206016
	.quad	0x4021119157abb880              # double 8.5343119999999999
	.quad	0x3ff362541d8e8640              # double 1.211506
	.quad	0x3fac0dd3fe1975f3              # double 0.054793000000000001
	.quad	0x4017dcec41dd1a22              # double 5.9657450000000001
	.quad	0x3ff5bfdb4cc25072              # double 1.35934
	.quad	0x40099eca25529fe0              # double 3.202534
	.quad	0x401e634b51372a39              # double 7.5969670000000002
	.quad	0x40124c768dfbd6a6              # double 4.5746710000000004
	.quad	0x4020dc75a31a4bdc              # double 8.4305850000000006
	.quad	0x4005c2528ae74f2f              # double 2.719884
	.quad	0x401fb77b7c7820a3              # double 7.9291819999999999
	.quad	0x401330fba8826aa9              # double 4.7978350000000001
	.quad	0x401b2e3bcd35a858              # double 6.7951499999999996
	.quad	0x401a3893faf42785              # double 6.5552520000000003
	.quad	0x402358b71b8aa002              # double 9.6732720000000008
	.quad	0x4008eb2074ea8da8              # double 3.114808
	.quad	0x401c1ba8c586876e              # double 7.0270109999999999
	.quad	0x3fc0fc158fb43d8a              # double 0.13269300000000001
	.quad	0x40226eb3bb83cf2d              # double 9.216215
	.quad	0x400ca472c0e7bc3c              # double 3.5802969999999998
	.quad	0x40150902de00d1b7              # double 5.2587999999999999
	.quad	0x4015279fec99f1ae              # double 5.2886959999999998
	.quad	0x401b13e35c5b4aa9              # double 6.7694219999999996
	.quad	0x401e564dc22ab25b              # double 7.5842809999999998
	.quad	0x4017af2495e17e35              # double 5.9210380000000002
	.quad	0x4022128d434a01ac              # double 9.0362340000000003
	.quad	0x401fda0e410b630b              # double 7.9629450000000003
	.quad	0x400a9f8fcd67fd3f              # double 3.3279109999999998
	.quad	0x4023dee807bbb624              # double 9.9353639999999998
	.quad	0x3fe98fe69270b06c              # double 0.79881599999999997
	.quad	0x3fcc0dc33721d53d              # double 0.21917
	.quad	0x4010d9ea57214f05              # double 4.2128079999999999
	.quad	0x4021b84f8f8a4c1f              # double 8.8599820000000005
	.quad	0x40173b6dca07f66f              # double 5.8080360000000004
	.quad	0x4017dc842fa50939              # double 5.9653479999999997
	.quad	0x401ef0f301eabbcb              # double 7.7353019999999999
	.quad	0x4000956e264e4862              # double 2.0729639999999998
	.quad	0x400df48e4755ffe7              # double 3.7444120000000001
	.quad	0x401f138eb0318b93              # double 7.7690989999999997
	.quad	0x402327d805e5f30e              # double 9.5778199999999991
	.quad	0x40223414c660a201              # double 9.1017209999999995
	.quad	0x400fff4f50a02b84              # double 3.999663
	.quad	0x401d47acc4ef88b9              # double 7.3199949999999996
	.quad	0x40219ea24cc68230              # double 8.8098320000000001
	.quad	0x4016f8909289dae0              # double 5.7427390000000003
	.quad	0x40134e0370cdc875              # double 4.8261849999999997
	.quad	0x401ccfa48301a7a0              # double 7.2027760000000001
	.quad	0x4012d0de093532e8              # double 4.7039720000000003
	.quad	0x40221d8537e2c55d              # double 9.0576570000000007
	.quad	0x40203344c37e6f72              # double 8.1001340000000006
	.quad	0x4003cc4ac6cdaf4b              # double 2.4747520000000001
	.quad	0x4022a67c286f8ad2              # double 9.3251659999999994
	.quad	0x401036202539756d              # double 4.0528570000000004
	.quad	0x4008ecc0bdcad14a              # double 3.115602
	.quad	0x3ffa91276fb09204              # double 1.6604380000000001
	.quad	0x40012feef5ec80c7              # double 2.1484049999999999
	.quad	0x401704845132f87b              # double 5.7544110000000002
	.quad	0x3fd759ab6d00b45b              # double 0.36484800000000001
	.quad	0x402123a190082060              # double 8.5695920000000001
	.quad	0x4022f8750c1b9735              # double 9.4852679999999995
	.quad	0x401cefe3b03e20cd              # double 7.234267
	.quad	0x400516ddaceee0f4              # double 2.6361650000000001
	.quad	0x3ffeff65dbfceb79              # double 1.9373530000000001
	.quad	0x40213fc4e2f37fbf              # double 8.624549
	.quad	0x400912db1e9f2778              # double 3.134207
	.quad	0x3fdd60bb2bba98ee              # double 0.45902900000000002
	.quad	0x4022cb6deb95e5b0              # double 9.3973230000000001
	.quad	0x4015ddbb9cf9a06a              # double 5.4665359999999996
	.quad	0x400702d40aaeafab              # double 2.8763809999999999
	.quad	0x400603beec39799e              # double 2.7518289999999999
	.quad	0x4020c3bfb58d1527              # double 8.3823220000000003
	.quad	0x4009455757d5a9eb              # double 3.1588579999999999
	.quad	0x401118eeae9ee45c              # double 4.2743479999999998
	.quad	0x400b1358f2e05ccd              # double 3.3844470000000002
	.quad	0x3fae98dcdb37c99b              # double 0.059760000000000001
	.quad	0x400781248d7e0264              # double 2.9380579999999998
	.quad	0x4017088a47ecfe9b              # double 5.7583399999999996
	.quad	0x4018f60f1b25f634              # double 6.2402920000000002
	.quad	0x3ff35bdf8f473040              # double 1.2099299999999999
	.quad	0x401999463cfb3312              # double 6.3996820000000003
	.quad	0x3ff35c12f09d8c6d              # double 1.2099789999999999
	.quad	0x3ffddae4f3343fa3              # double 1.8659410000000001
	.quad	0x3fe3c91d14e3bcd3              # double 0.61829999999999996
	.quad	0x3fdceeb702602c91              # double 0.45207000000000003
	.quad	0x40205b77e1b8ed1c              # double 8.178649
	.quad	0x3fd6992428d434a0              # double 0.35309699999999999
	.quad	0x402186d959a30985              # double 8.7633770000000002
	.quad	0x3ff2211233df2a9d              # double 1.1330739999999999
	.quad	0x400c47b02d59d55e              # double 3.5350039999999998
	.quad	0x3ffd6e5471715c64              # double 1.8394360000000001
	.quad	0x401b5133c1ce6c09              # double 6.8292989999999998
	.quad	0x400f930ad46f587d              # double 3.9467979999999998
	.quad	0x400441b089a02752              # double 2.5320749999999999
	.quad	0x400a16fb09203a32              # double 3.2612209999999999
	.quad	0x400ba16aceaaf35e              # double 3.4538169999999999
	.quad	0x40236fcaea747d80              # double 9.7183449999999993
	.quad	0x40091aa25d8d79d1              # double 3.1380050000000002
	.quad	0x402344baf965b20c              # double 9.6342390000000008
	.quad	0x4019a823422467be              # double 6.4141969999999997
	.quad	0x400338bb4d48882f              # double 2.402701
	.quad	0x4012baf859429175              # double 4.682588
	.quad	0x401557cfa26a22b4              # double 5.3357530000000004
	.quad	0x400c34bc6a7ef9db              # double 3.5257499999999999
	.quad	0x4020160bf5d78812              # double 8.0430600000000005
	.quad	0x401c8bee807bbb62              # double 7.1366519999999998
	.quad	0x400f6cf5b1c86488              # double 3.9282029999999999
	.quad	0x4019f7f0aa21a71a              # double 6.4921290000000003
	.quad	0x4016f322291fb3fa              # double 5.7374349999999996
	.quad	0x401b31bbcf4e874d              # double 6.7985680000000004
	.quad	0x3fe1e390c9107faa              # double 0.559029
	.quad	0x4018d210be9424e6              # double 6.2051420000000004
	.quad	0x401c36b3fe9fadb0              # double 7.0534210000000002
	.quad	0x401a25be5d9e40c8              # double 6.5368589999999998
	.quad	0x401686c6de76427c              # double 5.6316179999999996
	.quad	0x401a05e39713ad5c              # double 6.5057510000000001
	.quad	0x4009beb4202d9cf1              # double 3.2181169999999999
	.quad	0x3fefe1f3a57eaa2a              # double 0.996332
	.quad	0x401552fad6cb5350              # double 5.331035
	.quad	0x3fea17635e74299e              # double 0.81535500000000005
	.quad	0x40138b8b26394fad              # double 4.8862730000000001
	.quad	0x401af5b035bd512f              # double 6.7399300000000002
	.quad	0x4023f8bd66277c46              # double 9.9858200000000004
	.quad	0x3ffb286f8ad2567a              # double 1.6973720000000001
	.quad	0x4020d13faf42784b              # double 8.4086890000000007
	.quad	0x4002006e19b90eaa              # double 2.25021
	.quad	0x40224c8f96e15875              # double 9.1495329999999999
	.quad	0x3fe1ac343b70ef56              # double 0.55227099999999996
	.quad	0x3ff66db2f661f18d              # double 1.4017820000000001
	.quad	0x40028f1f57b41bfc              # double 2.3198840000000001
	.quad	0x401704e7ee9142b3              # double 5.754791
	.quad	0x4006ff2ecf206424              # double 2.8746010000000002
	.quad	0x4001ebf11f926c7f              # double 2.2402060000000001
	.quad	0x4013ea3ec02f2f98              # double 4.9787549999999996
	.quad	0x3fd83be6601bc98a              # double 0.37865599999999999
	.quad	0x401d47f38c5436b9              # double 7.320265
	.quad	0x4023aa839042d8c3              # double 9.8330350000000006
	.quad	0x40170779207d4e09              # double 5.7572979999999996
	.quad	0x400b4bb7739f340d              # double 3.4119709999999999
	.quad	0x4017d360d0247022              # double 5.9564240000000002
	.quad	0x401f124af0bf1a5d              # double 7.7678640000000003
	.quad	0x4020664840e1719f              # double 8.1997699999999991
	.quad	0x40093ef8487b99d4              # double 3.1557469999999999
	.quad	0x400663c8e25c810a              # double 2.7987229999999998
	.quad	0x401a79d909f1f14a              # double 6.6189920000000004
	.quad	0x4021d31593e5fb72              # double 8.912274
	.quad	0x3f88e0008637bd06              # double 0.012146000000000001
	.quad	0x401e731f8a0902de              # double 7.612425
	.quad	0x401704be40420f6f              # double 5.754632
	.quad	0x3ff9f2b12d3415b1              # double 1.6217509999999999
	.quad	0x401b044e0daa0cae              # double 6.7542039999999997
	.quad	0x4000e2a23bff8a8f              # double 2.1106609999999999
	.quad	0x40123e39f77292c5              # double 4.5607680000000004
	.quad	0x4006ee6c8f755369              # double 2.8664179999999999
	.quad	0x40183544bb1af3a1              # double 6.0520199999999997
	.quad	0x4023fcc964628028              # double 9.9937240000000002
	.quad	0x402394f355cd91ef              # double 9.7909190000000005
	.quad	0x400b560d887ebf23              # double 3.4170180000000001
	.quad	0x4022d9d5c31593e6              # double 9.425459
	.quad	0x401008900c521dda              # double 4.008362
	.quad	0x401ebde2ac322292              # double 7.685435
	.quad	0x40133f09528f190d              # double 4.8115589999999999
	.quad	0x40222a756861e929              # double 9.0829269999999998
	.quad	0x4002ad90e23af31b              # double 2.334749
	.quad	0x400c81ccd9620685              # double 3.5633789999999999
	.quad	0x4020b3161a1db878              # double 8.3497780000000006
	.quad	0x40198315d701d9f5              # double 6.3780130000000002
	.quad	0x4019136694898f60              # double 6.2689459999999997
	.quad	0x4008ad85dfa871a4              # double 3.0847280000000001
	.quad	0x400f3b75a74c09c4              # double 3.9040330000000001
	.quad	0x400a0f5989df1173              # double 3.257495
	.quad	0x3ff7dbb4916ca46e              # double 1.491139
	.quad	0x4021aa9a1b9f98b7              # double 8.8332069999999998
	.quad	0x4019d57c4e2f37fc              # double 6.4584820000000001
	.quad	0x4021771bcdbbe015              # double 8.7326339999999991
	.quad	0x40163be40420f6f1              # double 5.5584870000000004
	.quad	0x400a7a5332acfb76              # double 3.3097289999999999
	.quad	0x401b106dd69d3027              # double 6.7660439999999999
	.quad	0x3ffacf8e7ddca4b1              # double 1.675673
	.quad	0x4022f12e40852b4e              # double 9.4710560000000008
	.quad	0x4020e0b9dc2f405f              # double 8.4389179999999993
	.quad	0x4022f46dc5d63886              # double 9.4773999999999994
	.quad	0x401c37ca643cc07b              # double 7.0544830000000003
	.quad	0x4008147304039abf              # double 3.0099849999999999
	.quad	0x3ff9622706d50657              # double 1.586463
	.quad	0x4004ab9b23dd54da              # double 2.5837919999999999
	.quad	0x3ff92921ccd96207              # double 1.5725420000000001
	.quad	0x400cbf9378ee2867              # double 3.5935429999999999
	.quad	0x401c8305532617c2              # double 7.1279500000000002
	.quad	0x4023964b44a1f080              # double 9.7935429999999997
	.quad	0x40236513d74d594f              # double 9.6974169999999997
	.quad	0x4020401450efdc9c              # double 8.1251549999999994
	.quad	0x401aec2224edf612              # double 6.7305989999999998
	.quad	0x401c2e596c82e01a              # double 7.0452630000000003
	.quad	0x40138b44e50c5eb3              # double 4.8860049999999999
	.quad	0x3ffd992641b328b7              # double 1.84989
	.quad	0x4023283126e978d5              # double 9.5785
	.quad	0x40103d1fe64f54d2              # double 4.0596920000000001
	.quad	0x3fe86c4e7253da73              # double 0.76322100000000004
	.quad	0x3ffb93ab430f4949              # double 1.723552
	.quad	0x4006f5f99c38b04b              # double 2.8701050000000001
	.quad	0x4023c7b762d83c6d              # double 9.8900710000000007
	.quad	0x400b94e1a3f4666f              # double 3.4476960000000001
	.quad	0x40070a4766c6de76              # double 2.8800189999999999
	.quad	0x3fdec2a023209678              # double 0.48062899999999997
	.quad	0x4003ef6598e10cf6              # double 2.4918930000000001
	.quad	0x40207c6887a8d64d              # double 8.2429849999999991
	.quad	0x4002b8644523f67f              # double 2.3400349999999999
	.quad	0x401927a17f4128bf              # double 6.2887019999999998
	.quad	0x4018f70d62bf11f9              # double 6.2412619999999999
	.quad	0x3ff1faecd07852f8              # double 1.123761
	.quad	0x4010d192ea52ef91              # double 4.2046619999999999
	.quad	0x40212a47a9e2bcf9              # double 8.5825779999999998
	.quad	0x3fd829131ec0b567              # double 0.37750699999999998
	.quad	0x400a7374bc6a7efa              # double 3.3063750000000001
	.quad	0x4023e8c47a17f413              # double 9.9546240000000008
	.quad	0x4012b5b8dc55000d              # double 4.6774630000000004
	.quad	0x3fcf26634117f844              # double 0.24335899999999999
	.quad	0x40000cca2db61bb0              # double 2.0062449999999998
	.quad	0x40138dce39b456b4              # double 4.8884819999999998
	.quad	0x400d753cddd6e04c              # double 3.682245
	.quad	0x402214165907d912              # double 9.0392329999999994
	.quad	0x402020d0247021d1              # double 8.0640879999999999
	.quad	0x4007ef3882278d0d              # double 2.9918070000000001
	.quad	0x401723f034b0e1b5              # double 5.7850960000000002
	.quad	0x4020be44955b4678              # double 8.3716170000000005
	.quad	0x4020bcfc610f0e91              # double 8.3691130000000005
	.quad	0x3ff9b2fcac8e68e4              # double 1.606198
	.quad	0x400a2c729f59ccfb              # double 3.271703
	.quad	0x400e7c432ca57a78              # double 3.8106749999999998
	.quad	0x400ed1b1d92b7fe1              # double 3.8523900000000002
	.quad	0x4009c4d6e47dc37a              # double 3.2211129999999999
	.quad	0x401c9c1f85d744f6              # double 7.1524640000000002
	.quad	0x3fdbab5807fed203              # double 0.43233300000000002
	.quad	0x401cbe4755ffe6d6              # double 7.1858190000000004
	.quad	0x400494c55432873c              # double 2.5726420000000001
	.quad	0x4004f2630ec31162              # double 2.6183529999999999
	.quad	0x3ffdddaceee0f3cb              # double 1.8666199999999999
	.quad	0x3fea3dcf0307f23d              # double 0.82004500000000002
	.quad	0x3fac0cc78e9f6a94              # double 0.054785
	.quad	0x401a726aa8eb4635              # double 6.6117350000000004
	.quad	0x4016beb7cbb3c819              # double 5.686248
	.quad	0x40054a1a500d5e8d              # double 2.6611829999999999
	.quad	0x40236840e1719f80              # double 9.7036200000000008
	.quad	0x40239675360d0247              # double 9.7938629999999999
	.quad	0x401cd1a8262456f7              # double 7.2047429999999997
	.quad	0x4014fb2cc70867ae              # double 5.2452880000000004
	.quad	0x4020fc968943e100              # double 8.4933359999999993
	.quad	0x4016591a32b12d34              # double 5.5870139999999999
	.quad	0x402224ddb5525cc4              # double 9.0720039999999997
	.quad	0x40162a9ac36544fe              # double 5.5416059999999998
	.quad	0x3ff6cc6b484d76ab              # double 1.4249069999999999
	.quad	0x4014f1a543f1c758              # double 5.2359819999999999
	.quad	0x3fb69e3c968943e1              # double 0.088352
	.quad	0x402023ed740c4157              # double 8.0701710000000002
	.quad	0x4004671a3b14a904              # double 2.5503429999999998
	.quad	0x4018043f1c75818c              # double 6.0041469999999997
	.quad	0x4019812cf0f9d2bf              # double 6.3761479999999997
	.quad	0x40239a2120e1f7d7              # double 9.8010339999999995
	.quad	0x400708ae74f2f124              # double 2.8792390000000001
	.quad	0x4003c8a7a41e57da              # double 2.4729760000000001
	.quad	0x3ff2aa90cd423d92              # double 1.166642
	.quad	0x401b4e4fb97bb731              # double 6.8264760000000004
	.quad	0x4021ebc7d5ed06ff              # double 8.9605090000000001
	.quad	0x40052b7a1c25d074              # double 2.6462289999999999
	.quad	0x3ffbf07e175d13d7              # double 1.7462139999999999
	.quad	0x402179bc126a65cf              # double 8.7377629999999993
	.quad	0x4021129670196d8f              # double 8.5363039999999994
	.quad	0x3fb747c73eee5259              # double 0.090939000000000006
	.quad	0x3ff53dc8b86b15f9              # double 1.3275840000000001
	.quad	0x401886ba0620ab71              # double 6.1315689999999998
	.quad	0x40119e4217d2849d              # double 4.4045490000000003
	.quad	0x401f71758e219653              # double 7.8608000000000002
	.quad	0x4017fcaafbc1acde              # double 5.9967459999999999
	.quad	0x4023a7521144cbe2              # double 9.8267980000000001
	.quad	0x40089afc8b0079a3              # double 3.0756770000000002
	.quad	0x3ff1a4e69f05ea25              # double 1.102759
	.quad	0x3fd066b6177ea1c7              # double 0.25626900000000002
	.quad	0x40120db445ed4a1b              # double 4.5133830000000001
	.quad	0x400e0f7985271bce              # double 3.7575560000000001
	.quad	0x401c27995ee136e7              # double 7.0386709999999999
	.quad	0x400f40663c74fb55              # double 3.9064450000000002
	.quad	0x40045ee88df3732a              # double 2.5463420000000001
	.quad	0x4022f12ea52ef912              # double 9.4710590000000003
	.quad	0x40088f1561911490              # double 3.0698650000000001
	.quad	0x4023f37281fd9ba2              # double 9.9754830000000005
	.quad	0x40194bb4d48882f1              # double 6.3239320000000001
	.quad	0x4021b9d755bccaf7              # double 8.8629709999999999
	.quad	0x40096bda9435ac8a              # double 3.1776629999999999
	.quad	0x3fe248605681ecd5              # double 0.57133500000000004
	.quad	0x3ffbea5a469d7343              # double 1.744715
	.quad	0x400c01e4712e4085              # double 3.5009239999999999
	.quad	0x400c2158fb43d89d              # double 3.516283
	.quad	0x4022663cb8173322              # double 9.1996819999999992
	.quad	0x40230e29307af20f              # double 9.5276580000000006
	.quad	0x401074666ec9e237              # double 4.1136720000000002
	.quad	0x3fdc3e5753a3ec03              # double 0.441305
	.quad	0x401b7205bc01a36e              # double 6.8613499999999998
	.quad	0x40143864cb5bb385              # double 5.055072
	.quad	0x40149b5ed8d36b4c              # double 5.1517289999999996
	.quad	0x402306b5f5f0b285              # double 9.5131069999999997
	.quad	0x400a6dd72367e415              # double 3.303633
	.quad	0x400abe37585be1a8              # double 3.3428789999999999
	.quad	0x3fdd8240b780346e              # double 0.46107500000000001
	.quad	0x3fe25be5d9e40c84              # double 0.57371799999999995
	.quad	0x4003b492ff4ba51a              # double 2.463171
	.quad	0x400eec1333b96af0              # double 3.8652709999999999
	.quad	0x4021b58d9b5e95b8              # double 8.8545960000000008
	.quad	0x4015a2702a3486f0              # double 5.4086309999999997
	.quad	0x3ffe8f3dc054ef46              # double 1.9099710000000001
	.quad	0x4016e35c5b4aa971              # double 5.7220319999999996
	.quad	0x400224cf8d716d2b              # double 2.2679740000000002
	.quad	0x3ff52cc70867ad8e              # double 1.3234319999999999
	.quad	0x3ff974e9813879c4              # double 1.591043
	.quad	0x401f328f9f44d445              # double 7.7993759999999996
	.quad	0x401213f63c31df76              # double 4.5194939999999999
	.quad	0x40063fa43fe5c91d              # double 2.781075
	.quad	0x40089a0ad8a11666              # double 3.0752160000000002
	.quad	0x40148fa9c12f09d9              # double 5.1402960000000002
	.quad	0x40213c35ac8a3726              # double 8.617597
	.quad	0x4010df601797cc3a              # double 4.21814
	.quad	0x402207127f5e84f1              # double 9.0138130000000007
	.quad	0x401f698e10cf5b1d              # double 7.8530810000000004
	.quad	0x401c488b9778572a              # double 7.0708450000000003
	.quad	0x401033cc07aaef2c              # double 4.0505829999999996
	.quad	0x400fe2e770bd017e              # double 3.9857930000000001
	.quad	0x40025baecd07852f              # double 2.2947669999999998
	.quad	0x40206d7fb69984a1              # double 8.2138650000000002
	.quad	0x4017421f2990f302              # double 5.8145720000000001
	.quad	0x4023e90b417ca212              # double 9.9551639999999999
	.quad	0x401b3fdac68a936c              # double 6.8123579999999997
	.quad	0x400edbae46cfc82a              # double 3.8572660000000001
	.quad	0x40103606748e4756              # double 4.052759
	.quad	0x4023dd99cbee807c              # double 9.9328140000000004
	.quad	0x4019c0d2c386d2ed              # double 6.4383039999999996
	.quad	0x4001fdcdf6987831              # double 2.2489279999999998
	.quad	0x40237268900c521e              # double 9.7234540000000003
	.quad	0x400a3a8826aa8eb4              # double 3.2785799999999998
	.quad	0x4013ae453d20f2bf              # double 4.9201860000000002
	.quad	0x400b34024b33daf9              # double 3.4003950000000001
	.quad	0x40210b67e414e7ef              # double 8.5222770000000008
	.quad	0x4019f2291fb3fa6e              # double 6.4864850000000001
	.quad	0x4012af42bb6672fc              # double 4.6711530000000003
	.quad	0x40165b85e80bed74              # double 5.589378
	.quad	0x40221f739f340d4e              # double 9.0614290000000004
	.quad	0x40163a7503b81b65              # double 5.5570870000000001
	.quad	0x40216829ae4f3344              # double 8.703443
	.quad	0x4004d9fe43675ddd              # double 2.6064419999999999
	.quad	0x40204c2bf9830e3d              # double 8.1487730000000003
	.quad	0x3ff72d3953dea466              # double 1.4485410000000001
	.quad	0x3fe0b33fc86cebbc              # double 0.52188100000000004
	.quad	0x3fed328954a7f801              # double 0.91241899999999998
	.quad	0x4020ab1e7d9988d3              # double 8.3342170000000007
	.quad	0x4011244a1f080304              # double 4.2854390000000002
	.quad	0x4000a7cd03537197              # double 2.081934
	.quad	0x4022d78a8f3a9b07              # double 9.4209790000000008
	.quad	0x4018b7531db445ed              # double 6.1790279999999997
	.quad	0x4020da9b06812381              # double 8.4269639999999999
	.quad	0x401b4032db1e9f27              # double 6.8126939999999996
	.quad	0x401de41b328b6d87              # double 7.4727600000000001
	.quad	0x40170b042528ae75              # double 5.760758
	.quad	0x401382bae03b3e9a              # double 4.8776659999999996
	.quad	0x3fec95ebfa8f7db7              # double 0.89330100000000001
	.quad	0x3fcdb5e0f7fcfc40              # double 0.23211300000000001
	.quad	0x3fdb6bbdbe3c1052              # double 0.42845100000000003
	.quad	0x40168506dd69d302              # double 5.6299089999999996
	.quad	0x400842b8c75c4a84              # double 3.0325790000000001
	.quad	0x400b0ce24bba12b6              # double 3.381291
	.quad	0x3ffa18b71b8aa002              # double 1.6310340000000001
	.quad	0x3fc7675ddd2ae8e2              # double 0.182842
	.quad	0x400c18433d6c7219              # double 3.5118469999999999
	.quad	0x401ddf22c01e68a1              # double 7.4679060000000002
	.quad	0x400e0b7132724313              # double 3.7555869999999998
	.quad	0x4019b0d2c386d2ed              # double 6.4226789999999996
	.quad	0x40115614df8b1572              # double 4.3340639999999997
	.quad	0x401dd5b7cfe58601              # double 7.4587089999999998
	.quad	0x3ffb2a8eb463497b              # double 1.6978899999999999
	.quad	0x3ff6a71ef30a4e38              # double 1.4158010000000001
	.quad	0x400928405b39e27a              # double 3.1446540000000001
	.quad	0x4023c655c0fcb4f2              # double 9.8873730000000002
	.quad	0x3ff921272c94b381              # double 1.570594
	.quad	0x4023f3395c422036              # double 9.975047
	.quad	0x3ff6610cf5b1c865              # double 1.3986940000000001
	.quad	0x40072279dd3bafd9              # double 2.8918339999999998
	.quad	0x3fd1b430f49491f3              # double 0.27662300000000001
	.quad	0x40038f68be2f7b18              # double 2.4450240000000001
	.quad	0x400034b0e1b4bb5e              # double 2.025728
	.quad	0x40170e81450efdca              # double 5.7641650000000002
	.quad	0x4019432d6ece13f5              # double 6.3156030000000003
	.quad	0x4013dd872f33ca32              # double 4.9663360000000001
	.quad	0x3ff8cf0739b024f6              # double 1.5505439999999999
	.quad	0x4023b70b8cfbfc65              # double 9.8575099999999995
	.quad	0x401e4f2f55582129              # double 7.5773289999999997
	.quad	0x4020f6b7cbb3c819              # double 8.4818709999999999
	.quad	0x3ffcec061847f562              # double 1.807623
	.quad	0x400d9b2aae297397              # double 3.7007650000000001
	.quad	0x401fce7296f6512b              # double 7.9516090000000003
	.quad	0x400b182773e24fec              # double 3.3867940000000001
	.quad	0x401d9b6dca07f66f              # double 7.4017860000000004
	.quad	0x401c2a63b688bda9              # double 7.0413959999999998
	.quad	0x401b46b484d76ab6              # double 6.8190480000000004
	.quad	0x4023f9cfdd228566              # double 9.987914
	.quad	0x4008d7b4a2339c0f              # double 3.1053250000000001
	.quad	0x4006be6bc621b7e1              # double 2.8429790000000001
	.quad	0x401d20168b5cbff4              # double 7.2813359999999996
	.quad	0x3fe49845dc832336              # double 0.64358800000000005
	.quad	0x4023af928e0c9d9d              # double 9.8429149999999996
	.quad	0x3ffc8e5d5b24e9c4              # double 1.7847569999999999
	.quad	0x4012c5c78a6dacac              # double 4.6931440000000002
	.quad	0x401fd074213a0c6b              # double 7.9535679999999997
	.quad	0x4004b5992428d435              # double 2.5886710000000002
	.quad	0x401c5eac8605681f              # double 7.0924550000000002
	.quad	0x4012cb3c3e74afd5              # double 4.6984719999999998
	.quad	0x3ffb224031487768              # double 1.695862
	.quad	0x4015918ac9f2fdb9              # double 5.392131
	.quad	0x401ac296b3354c12              # double 6.6900279999999999
	.quad	0x400d6226809d4952              # double 3.6729250000000002
	.quad	0x401675436b8f9b13              # double 5.6145149999999999
	.quad	0x4023771f36262cba              # double 9.7326599999999992
	.quad	0x3ff5804a72ead927              # double 1.3438209999999999
	.quad	0x40211555c52e72da              # double 8.5416699999999999
	.quad	0x401ce74eebf65dc0              # double 7.2258870000000002
	.quad	0x4022484167a95c85              # double 9.1411239999999996
	.quad	0x402161711947cfa2              # double 8.6903159999999993
	.quad	0x4014ff733a8a3f8a              # double 5.2494630000000004
	.quad	0x400afe07a28bb0a3              # double 3.3740380000000001
	.quad	0x4018bd5065732160              # double 6.1848770000000002
	.quad	0x400b58a43bb40b35              # double 3.418282
	.quad	0x40168ced0b30b5aa              # double 5.6376229999999996
	.quad	0x40172bbdbe3c1052              # double 5.7927160000000004
	.quad	0x3fd76b5d462c343b              # double 0.36592799999999998
	.quad	0x3f90ced4e4c942d5              # double 0.016414000000000002
	.quad	0x4022951c3ac929aa              # double 9.2912309999999998
	.quad	0x40075fdb4cc25072              # double 2.921805
	.quad	0x3ffd6b6d00b45ae6              # double 1.838727
	.quad	0x40222fc371da37ef              # double 9.0932879999999994
	.quad	0x401353beec39799e              # double 4.8317829999999997
	.quad	0x4010efc71d606317              # double 4.2341579999999999
	.quad	0x400e0a4e379b77c0              # double 3.7550319999999999
	.quad	0x4013012cadddf43c              # double 4.7511469999999996
	.quad	0x3ff1780fdc1615ec              # double 1.091812
	.quad	0x40184dfa871a3b15              # double 6.0761510000000003
	.quad	0x401907ba237cdcca              # double 6.2575459999999996
	.quad	0x4023304cf0739b02              # double 9.5943369999999994
	.quad	0x401aab024f6598e1              # double 6.667001
	.quad	0x3fed7082491afc05              # double 0.91998400000000002
	.quad	0x401f3792d1287c20              # double 7.804271
	.quad	0x401dcf6b1a2a4db1              # double 7.4525569999999997
	.quad	0x3ff23f85510d38ce              # double 1.1405080000000001
	.quad	0x4001fddb1209edc0              # double 2.2489530000000002
	.quad	0x3fd7e2e2b8c75c4b              # double 0.37322300000000003
	.quad	0x401b899ae924f228              # double 6.8843800000000002
	.quad	0x400180a73f748a16              # double 2.1878190000000002
	.quad	0x3f727913e81450f0              # double 0.0045100000000000001
	.quad	0x40029da8bd230b9e              # double 2.3269820000000001
	.quad	0x3fcab8f14db59579              # double 0.20876900000000001
	.quad	0x401856d22424a277              # double 6.0847860000000003
	.quad	0x3ff8bcbe61cffeb0              # double 1.5460799999999999
	.quad	0x40200ad2135daad6              # double 8.021134
	.quad	0x4007e09b30728e93              # double 2.9846710000000001
	.quad	0x401f78f7985271bd              # double 7.8681320000000001
	.quad	0x401a727e5215768a              # double 6.6118100000000002
	.quad	0x40099fa8f7db6e50              # double 3.2029589999999999
	.quad	0x3ff0f1d4f9c1f85d              # double 1.0590409999999999
	.quad	0x400212bd3c361134              # double 2.25915
	.quad	0x40228ce5710880d8              # double 9.2751879999999999
	.quad	0x40092de4c51116a9              # double 3.1474090000000001
	.quad	0x402088405b39e27a              # double 8.2661160000000002
	.quad	0x401addef8487b99d              # double 6.7167339999999998
	.quad	0x3ff902b302f72b45              # double 1.563159
	.quad	0x401bbc625e99e94b              # double 6.9339690000000003
	.quad	0x400c5c536d655e29              # double 3.5450810000000001
	.quad	0x4010c281ba7fc32f              # double 4.1899480000000002
	.quad	0x40235075f6fd21ff              # double 9.6571499999999996
	.quad	0x4016e0d4562e09ff              # double 5.7195600000000004
	.quad	0x4021b346dc5d6388              # double 8.8501499999999993
	.quad	0x4019beb074a771c9              # double 6.4362199999999996
	.quad	0x400bb484d76ab580              # double 3.4631439999999998
	.quad	0x400305f28848387e              # double 2.377904
	.quad	0x3ff873215fcc1872              # double 1.528108
	.quad	0x402362e74f2f123c              # double 9.6931709999999995
	.quad	0x4021fe7ec7863bef              # double 8.9970610000000004
	.quad	0x4021279e16d6dc1a              # double 8.5773779999999995
	.quad	0x3fbe1426fe718a87              # double 0.117495
	.quad	0x400f81b9f98b71b9              # double 3.9383430000000001
	.quad	0x402021cd5f99c38b              # double 8.06602
	.quad	0x3feaa9fe004b7f5a              # double 0.83325099999999996
	.quad	0x4014f25e56cd6c2f              # double 5.236688
	.quad	0x40197af859429175              # double 6.370088
	.quad	0x4020f962cfd8f0c7              # double 8.4870819999999991
	.quad	0x40055178b3700475              # double 2.6647810000000001
	.quad	0x400d17ab324851a8              # double 3.6365569999999998
	.quad	0x4021f61d6494d50f              # double 8.9806930000000005
	.quad	0x3ffbaa8da7f3cf70              # double 1.729139
	.quad	0x400ad6bfca85cab0              # double 3.3548580000000001
	.quad	0x401ec4a48f96e158              # double 7.6920339999999995
	.quad	0x40114ebedfa43fe6              # double 4.3269000000000002
	.quad	0x401e5922d948dc12              # double 7.5870470000000001
	.quad	0x40108a95421c0443              # double 4.1353350000000004
	.quad	0x4006abec679cc74c              # double 2.8339470000000002
	.quad	0x4002a858ff759685              # double 2.332201
	.quad	0x3f8a7008a697aede              # double 0.012909
	.quad	0x401363760bf5d788              # double 4.8471299999999999
	.quad	0x402165616f86a099              # double 8.6980090000000008
	.quad	0x4011774d1633482c              # double 4.3665050000000001
	.quad	0x4023500bed740c41              # double 9.6563409999999993
	.quad	0x400bb3b7521144cc              # double 3.4627520000000001
	.quad	0x401e9ea57214f052              # double 7.654928
	.quad	0x4002ce7bc3c5bd0e              # double 2.350822
	.quad	0x4011b80baa582dbe              # double 4.4297319999999996
	.quad	0x4014bb317efe0ce1              # double 5.1828060000000002
	.quad	0x4012321144cbe1eb              # double 4.5488939999999998
	.quad	0x4016835d67ba237d              # double 5.6282860000000001
	.quad	0x4023917efe0ce0b9              # double 9.7841719999999998
	.quad	0x400bc8f648c7192f              # double 3.4731260000000002
	.quad	0x4013b7913e81450f              # double 4.929265
	.quad	0x3fec212b5e529bae              # double 0.87904899999999997
	.quad	0x402033a8826aa8eb              # double 8.1008949999999995
	.quad	0x401ae6af89c5e6ff              # double 6.7252789999999996
	.quad	0x3fc0282c6ef3d3a2              # double 0.126226
	.quad	0x4002e77dd872f33d              # double 2.3630330000000002
	.quad	0x3ff4bdb6e503fb37              # double 1.2963169999999999
	.quad	0x401919a5ebb7739f              # double 6.2750469999999998
	.quad	0x3ff4daa2e3c536d6              # double 1.3033779999999999
	.quad	0x400659c4113c6866              # double 2.793831
	.quad	0x3ffd989efd86a8fc              # double 1.849761
	.quad	0x3ffd86ac215b9a5b              # double 1.8453790000000001
	.quad	0x402079600f34506a              # double 8.2370610000000006
	.quad	0x4015dbb5e0f7fcfc              # double 5.4645609999999998
	.quad	0x400656c050bd87b5              # double 2.7923589999999998
	.quad	0x3ff0d73eab367a10              # double 1.0525500000000001
	.quad	0x3fee396af038e2a0              # double 0.94450900000000004
	.quad	0x401ef0a808c8259e              # double 7.7350159999999999
	.quad	0x3fb61f080303c07f              # double 0.086411000000000002
	.quad	0x4022c5234eb9a177              # double 9.3850350000000002
	.quad	0x4010e0e23af31b15              # double 4.2196129999999998
	.quad	0x40044075f6fd21ff              # double 2.5314749999999999
	.quad	0x401498c0485a0be5              # double 5.1491709999999999
	.quad	0x40009a2cecc814d7              # double 2.0752809999999999
	.quad	0x400f7f77292c4934              # double 3.9372389999999999
	.quad	0x400936523704790c              # double 3.1515240000000002
	.quad	0x401610ef1348b220              # double 5.5165369999999996
	.quad	0x402254567125dd09              # double 9.1647219999999994
	.quad	0x4022fe516db0dd83              # double 9.496715
	.quad	0x401025ccc89b0ee5              # double 4.0369140000000003
	.quad	0x3ff71070fbeb9e49              # double 1.441514
	.quad	0x40204efbd273d5bb              # double 8.1542650000000005
	.quad	0x4006b2990f301eac              # double 2.8372060000000001
	.quad	0x401458b71b8aa002              # double 5.0866360000000004
	.quad	0x40020448cf7caa76              # double 2.2520920000000002
	.quad	0x3fe9b4d8ba40d90e              # double 0.80332599999999998
	.quad	0x4003623a6ce3582a              # double 2.4229630000000002
	.quad	0x401eefb8b26394fb              # double 7.7341030000000001
	.quad	0x401ee8b0079a2835              # double 7.7272340000000001
	.quad	0x3ff02502eec7c958              # double 1.009036
	.quad	0x40111e7cd0353719              # double 4.2797729999999996
	.quad	0x3fef63886594af4f              # double 0.98089999999999999
	.quad	0x40232f2990f301eb              # double 9.5921140000000004
	.quad	0x4015070ac3a860dd              # double 5.2568770000000002
	.quad	0x400e2bc27631b585              # double 3.7713670000000001
	.quad	0x3fecf96e158750c2              # double 0.90544800000000003
	.quad	0x4014a066c2acb85a              # double 5.1566419999999997
	.quad	0x4013963f141205bc              # double 4.896725
	.quad	0x401906262cba732e              # double 6.256005
	.quad	0x4016e3e5fb71fbc6              # double 5.7225570000000001
	.quad	0x40044ba0e8427419              # double 2.5369280000000001
	.quad	0x3ff37e8ccdd93c47              # double 1.218396
	.quad	0x400c35935fc3b4f6              # double 3.52616
	.quad	0x4013a0a5efe93187              # double 4.9068829999999997
	.quad	0x3ff7388a8b08dd1e              # double 1.4513039999999999
	.quad	0x40119f14db59578a              # double 4.4053529999999999
	.quad	0x401ce007dd441355              # double 7.2187799999999998
	.quad	0x4006d5e2046c764b              # double 2.8544350000000001
	.quad	0x4013b5072085b185              # double 4.9267849999999997
	.quad	0x3ff19f83be6601bd              # double 1.1014440000000001
	.quad	0x401fefadafd11383              # double 7.9840609999999996
	.quad	0x400a0d373affb04f              # double 3.256453
	.quad	0x3fff9c52e72da123              # double 1.975665
	.quad	0x402055ad96a6a012              # double 8.1673399999999994
	.quad	0x3fb6074ea8da7f3d              # double 0.086049
	.quad	0x3fe53a6266fd651b              # double 0.66337699999999999
	.quad	0x401c103b3e9a6f82              # double 7.0158509999999996
	.quad	0x401c272ef0ae5365              # double 7.038265
	.quad	0x4021fb2031ceaf25              # double 8.9904799999999998
	.quad	0x4022e9d96e9bbf0e              # double 9.4567370000000004
	.quad	0x3fe94b07d0aed99d              # double 0.79040900000000003
	.quad	0x4007f44998d045fe              # double 2.994281
	.quad	0x40107ea0fd3b29a2              # double 4.1236610000000002
	.quad	0x400db762d83c6c98              # double 3.7145440000000001
	.quad	0x40107c100e6afcce              # double 4.1211549999999999
	.quad	0x3ffa76f5caf2d7f9              # double 1.6540429999999999
	.quad	0x40064b5568e820e6              # double 2.7867839999999999
	.quad	0x4022f106ee30caa3              # double 9.4707559999999997
	.quad	0x400e04f8726d04e6              # double 3.752427
	.quad	0x401f16bf444e0daa              # double 7.772214
	.quad	0x3fc69c2c1b10fd7e              # double 0.17664099999999999
	.quad	0x40228d83c6c97d8d              # double 9.2763960000000001
	.quad	0x4022220945f9df55              # double 9.0664770000000008
	.quad	0x4005ced56b00ffda              # double 2.7259929999999999
	.quad	0x3ff7c096feb4a665              # double 1.4845189999999999
	.quad	0x3fb7e37de939eadd              # double 0.093314999999999995
	.quad	0x40107e670e2c12ae              # double 4.1234400000000004
	.quad	0x401d6602c9081c2e              # double 7.3496199999999998
	.quad	0x3ff4ffa8f7db6e50              # double 1.3124169999999999
	.quad	0x401f203e20ccff22              # double 7.7814870000000003
	.quad	0x3fe9a6dce39b456b              # double 0.80161899999999997
	.quad	0x3ff649b0ee49f517              # double 1.3929910000000001
	.quad	0x4011cd56f32bdc27              # double 4.4505270000000001
	.quad	0x4015bd8409e55c10              # double 5.4350740000000002
	.quad	0x3fd90baa582dbe7f              # double 0.39133699999999999
	.quad	0x401208fd9fd36f7e              # double 4.5087799999999998
	.quad	0x400a176ddaceee0f              # double 3.2614399999999999
	.quad	0x3fe15e3fbbd7b203              # double 0.54275499999999999
	.quad	0x4020f5744f5d3565              # double 8.4794029999999996
	.quad	0x4023ccedd4845133              # double 9.900252
	.quad	0x3fde9eba6aca7935              # double 0.47843799999999997
	.quad	0x4013598676a7264a              # double 4.8374269999999999
	.quad	0x3fe093d31b9b66f9              # double 0.51804499999999998
	.quad	0x3fe2bb1f255f351a              # double 0.58534200000000003
	.quad	0x401392a411c2a023              # double 4.8932039999999999
	.quad	0x4006baf1886df82b              # double 2.8412809999999999
	.quad	0x400c2f61ed5ae1ce              # double 3.523136
	.quad	0x402112122fad6cb5              # double 8.5352949999999996
	.quad	0x40188c75818c5c9a              # double 6.1371669999999998
	.quad	0x401e7a91105e1c15              # double 7.6196939999999999
	.quad	0x400a56a832b990b0              # double 3.292313
	.quad	0x3ff2e606fac6045c              # double 1.1811590000000001
	.quad	0x4010b77036c9c0a9              # double 4.1791390000000002
	.quad	0x401eef32378ab0c9              # double 7.7335900000000004
	.quad	0x4003b78e5c4eb570              # double 2.4646270000000001
	.quad	0x40200123810e8859              # double 8.002224
	.quad	0x3ffce78183f91e64              # double 1.8065199999999999
	.quad	0x3ffc247baa9b499d              # double 1.758907
	.quad	0x4013243f1c75818c              # double 4.7853969999999997
	.quad	0x400f07381d7dbf48              # double 3.8785249999999998
	.quad	0x40162e38eb0318b9              # double 5.5451389999999998
	.quad	0x40127f7e3d1cc101              # double 4.6245050000000001
	.quad	0x401d6b1704ff4342              # double 7.3545800000000003
	.quad	0x4021cd872f33ca32              # double 8.9014220000000002
	.quad	0x4011c2856605ee57              # double 4.4399620000000004
	.quad	0x40049562174c4ce0              # double 2.5729410000000001
	.quad	0x401e115336deb95e              # double 7.5169189999999997
	.quad	0x40095bf37b8d3f18              # double 3.1698979999999999
	.quad	0x401a96c69b5a63fa              # double 6.6472420000000003
	.quad	0x4022166f5019f3c7              # double 9.0438179999999999
	.quad	0x3febb62413db7f17              # double 0.86598399999999998
	.quad	0x3ff66cffa7eb6bf4              # double 1.4016109999999999
	.quad	0x4020e5d7a99fa11b              # double 8.4489110000000007
	.quad	0x401040b9dc2f405f              # double 4.0632089999999996
	.quad	0x40221059ea57214f              # double 9.031936
	.quad	0x40110779e9d0e992              # double 4.257301
	.quad	0x4013dfe64f54d1e9              # double 4.9686519999999996
	.quad	0x4012f1b6d43d0397              # double 4.7360490000000004
	.quad	0x40220ca18bd66278              # double 9.0246700000000004
	.quad	0x4001a08e15011905              # double 2.2033960000000001
	.quad	0x4015ea11233df2aa              # double 5.4785810000000001
	.quad	0x402097da836eb4ea              # double 8.2965890000000009
	.quad	0x400dc0c9539b8887              # double 3.7191339999999999
	.quad	0x4020d47f77af6406              # double 8.4150349999999996
	.quad	0x4014537a80cf9e38              # double 5.0815219999999997
	.quad	0x400168e4755ffe6d              # double 2.1762169999999998
	.quad	0x401d334b51372a39              # double 7.3000920000000002
	.quad	0x40113ae03b3e9a70              # double 4.3074960000000004
	.quad	0x4012eebb341e14be              # double 4.733136
	.quad	0x401fe5e892253112              # double 7.9745200000000001
	.quad	0x400dc04ea4a8c155              # double 3.7189000000000001
	.quad	0x401302d40aaeafab              # double 4.7527619999999997
	.quad	0x4019a7689ca18bd6              # double 6.4134849999999997
	.quad	0x4020b049cb252ce0              # double 8.3443129999999996
	.quad	0x40238e996312f4cf              # double 9.7785139999999994
	.quad	0x4021fc091c087443              # double 8.9922570000000004
	.quad	0x401aef687b139c95              # double 6.733797
	.quad	0x4020e3704790b84a              # double 8.4442160000000008
	.quad	0x3fee9960fa15db34              # double 0.95622300000000004
	.quad	0x4004616052502eec              # double 2.5475469999999998
	.quad	0x4004cf94c87980f5              # double 2.6013579999999998
	.quad	0x401d02b302f72b45              # double 7.2526359999999999
	.quad	0x3feac7496aad1d04              # double 0.83682699999999998
	.quad	0x401cd0ffda4052d6              # double 7.2041009999999996
	.quad	0x4022fe7ba237cdcd              # double 9.4970370000000006
	.quad	0x3ff84c0bdcad14a1              # double 1.5185660000000001
	.quad	0x401be8123810e886              # double 6.9766320000000004
	.quad	0x401e9b5aea3161a2              # double 7.6517140000000001
	.quad	0x401f548e4755ffe7              # double 7.8325740000000001
	.quad	0x4023a746aa087ca6              # double 9.8267109999999995
	.quad	0x401e464388ebcc6c              # double 7.5686169999999997
	.quad	0x400cc5119ce075f7              # double 3.596225
	.quad	0x40117c1b54195cc8              # double 4.3711979999999997
	.quad	0x4019e7cb70ac3a86              # double 6.476362
	.quad	0x40236223bff8a8f4              # double 9.6916790000000005
	.quad	0x402227763e4abe6a              # double 9.0770739999999996
	.quad	0x401e684901d19158              # double 7.6018410000000002
	.quad	0x4014222c45026890              # double 5.033372
	.quad	0x400720f55de58e65              # double 2.8910930000000001
	.quad	0x4020c65f30e7ff58              # double 8.3874449999999996
	.quad	0x400e795f676ea423              # double 3.8092640000000002
	.quad	0x3fe699da9c99285b              # double 0.70628100000000005
	.quad	0x3fe04ab1d4f9c1f8              # double 0.50911799999999996
	.quad	0x4011d95208e15012              # double 4.4622270000000004
	.quad	0x401dd7d24180d3d0              # double 7.460763
	.quad	0x4010d21d96e9bbf1              # double 4.2051910000000001
	.quad	0x400da33eff195033              # double 3.7047099999999999
	.quad	0x40136527a20578e6              # double 4.8487840000000002
	.quad	0x40108c03bc4d22c9              # double 4.1367330000000004
	.quad	0x4013165dbfceb789              # double 4.7718420000000004
	.quad	0x401d6c5da6a44418              # double 7.3558260000000004
	.quad	0x40219315d701d9f5              # double 8.7872760000000003
	.quad	0x4021ab23dd54da4d              # double 8.8342580000000002
	.quad	0x3fd7c504816f0069              # double 0.37140000000000001
	.quad	0x401320c521dda05a              # double 4.7820020000000003
	.quad	0x400dc72d1aeb3dd1              # double 3.722254
	.quad	0x40191777d0f1f57b              # double 6.2729179999999998
	.quad	0x401494e65bea0ba2              # double 5.14541
	.quad	0x401c8fab53d640ea              # double 7.1403020000000001
	.quad	0x401593de1e2de871              # double 5.3944020000000004
	.quad	0x4021dc666ec9e237              # double 8.9304690000000004
	.quad	0x3fcc821f2990f302              # double 0.222721
	.quad	0x3fb1aea3161a1db8              # double 0.069070999999999994
	.quad	0x401c7d2e514c22ee              # double 7.1222469999999998
	.quad	0x4023eda964e8b7e5              # double 9.9641830000000002
	.quad	0x3fbf5fd47bedb728              # double 0.122556
	.quad	0x4004aabe6a337a81              # double 2.5833710000000001
	.quad	0x40233083fd502257              # double 9.5947569999999995
	.quad	0x4003f1782d38476f              # double 2.4929049999999999
	.quad	0x40099bb517a46174              # double 3.2010290000000001
	.quad	0x40194fa8f7db6e50              # double 6.3277929999999998
	.quad	0x401c868cac4b4d05              # double 7.1313959999999996
	.quad	0x40012d19dece5711              # double 2.1470220000000002
	.quad	0x40103e646f156191              # double 4.0609299999999999
	.quad	0x4008f686a4ca4f44              # double 3.120374
	.quad	0x401966ec9e236c16              # double 6.3505120000000002
	.quad	0x3ff8f1df761cbccf              # double 1.559051
	.quad	0x40018e33eff19503              # double 2.1944349999999999
	.quad	0x3ffa71f57b41bfbe              # double 1.652822
	.quad	0x4021580f12c27a63              # double 8.6719899999999992
	.quad	0x40131b0ab2e1693c              # double 4.776408
	.quad	0x401a3c39bcba3012              # double 6.5588139999999999
	.quad	0x3ffd307af20ea5b5              # double 1.824336
	.quad	0x40235b400b88ca3e              # double 9.6782229999999991
	.quad	0x4001e2a3486f049b              # double 2.2356630000000002
	.quad	0x401dcc3ce2089e34              # double 7.4494509999999998
	.quad	0x400b570e6f2e8c05              # double 3.4175080000000002
	.quad	0x401e448909289dae              # double 7.566929
	.quad	0x40082301a79fec9a              # double 3.017093
	.quad	0x3ffed37f38c5436c              # double 1.9266350000000001
	.quad	0x4020ac3675ddd2af              # double 8.3363530000000008
	.quad	0x401e67dcbddb9842              # double 7.6014280000000003
	.quad	0x4011ade7a743a648              # double 4.419829
	.quad	0x4010a04f6dfc5cdd              # double 4.1565529999999997
	.quad	0x4011cb0ea18372e7              # double 4.4482980000000003
	.quad	0x4021a8e29f9ce8d9              # double 8.8298539999999992
	.quad	0x401aa0a915379fa9              # double 6.6568949999999996
	.quad	0x400ed56b87379746              # double 3.854209
	.quad	0x400a5e7b80a9de8b              # double 3.2961339999999999
	.quad	0x3fd4887ebf22c01e              # double 0.32083099999999998
	.quad	0x3fe6970b49e01de2              # double 0.70593799999999995
	.quad	0x3ff523b03e20ccff              # double 1.321213
	.quad	0x3fe295831f03d146              # double 0.58075100000000002
	.quad	0x4017596af038e2a0              # double 5.8373220000000003
	.quad	0x3ff71c4545846e8f              # double 1.444402
	.quad	0x4012d83558a76102              # double 4.7111409999999996
	.quad	0x400eb815a07b352b              # double 3.8398850000000002
	.quad	0x40191cd466f5019f              # double 6.2781539999999998
	.quad	0x40228181beb18117              # double 9.2529430000000001
	.quad	0x4010344e0daa0cae              # double 4.0510789999999997
	.quad	0x400626cc1ca3a4b5              # double 2.7689439999999998
	.quad	0x4021b5adfb506dd7              # double 8.8548430000000007
	.quad	0x40124553ac4f7ec3              # double 4.5677019999999997
	.quad	0x3fe726f60e0eb67c              # double 0.72350599999999998
	.quad	0x4012075b81301648              # double 4.5071849999999998
	.quad	0x40201e0956c0d6f5              # double 8.0586649999999995
	.quad	0x401e78897e996313              # double 7.617712
	.quad	0x400b3eb074a771c9              # double 3.4056099999999998
	.quad	0x400577268d32830a              # double 2.683179
	.quad	0x3fe0aa497fa5d28d              # double 0.520787
	.quad	0x3fd7f47f993d5348              # double 0.37429800000000002
	.quad	0x400faf82f5126634              # double 3.960699
	.quad	0x400e4fa82e87d2c8              # double 3.7888950000000001
	.quad	0x3fdacfe9b7bf1e8e              # double 0.41893999999999998
	.quad	0x4023434117f8444a              # double 9.6313560000000003
	.quad	0x401d81697f1f9ad0              # double 7.376379
	.quad	0x4016047b24638c97              # double 5.5043759999999997
	.quad	0x401a5d7a99fa11a9              # double 6.5912879999999996
	.quad	0x401cc6de33269df9              # double 7.1942069999999996
	.quad	0x401bfd82773e24ff              # double 6.9975680000000002
	.quad	0x401a3d0f6273929f              # double 6.5596290000000002
	.quad	0x402211cb89d6adf7              # double 9.0347559999999998
	.quad	0x4006ae6106ab14ec              # double 2.8351459999999999
	.quad	0x4020e908c3f3e037              # double 8.4551449999999999
	.quad	0x3ff5297bfa4c61d8              # double 1.3226279999999999
	.quad	0x4022365b63d3e4ef              # double 9.106166
	.quad	0x401f5ed245b291b8              # double 7.8425989999999998
	.quad	0x4013f77ab324851b              # double 4.9916790000000004
	.quad	0x401065c03361565c              # double 4.0993659999999998
	.quad	0x4011530db6a1e81d              # double 4.3311070000000003
	.quad	0x400c21187e7c06e2              # double 3.5161600000000002
	.quad	0x40168ab0c88a47ed              # double 5.63544
	.quad	0x40042b8e8ea39c52              # double 2.5212680000000001
	.quad	0x4010f22a2c237479              # double 4.2364889999999997
	.quad	0x400df2b884406c01              # double 3.7435160000000001
	.quad	0x4015a52d666a9824              # double 5.4113059999999997
	.quad	0x40144914f483cafb              # double 5.0713689999999998
	.quad	0x4020963b688bda94              # double 8.2934219999999996
	.quad	0x4002ebdf4c2b51bd              # double 2.3651719999999998
	.quad	0x3ff0b829068986fd              # double 1.044961
	.quad	0x402139f46ed245b3              # double 8.6131930000000008
	.quad	0x401a11908e581cf8              # double 6.5171530000000004
	.quad	0x40081940fecdd0d9              # double 3.0123310000000001
	.quad	0x3fe4670196d8f4f9              # double 0.63757399999999997
	.quad	0x400bb883ba3443d4              # double 3.4650949999999998
	.quad	0x401a341f644955b4              # double 6.5509009999999996
	.quad	0x4005d6dd26b723ee              # double 2.729914
	.quad	0x4000dbeec39799e5              # double 2.107389
	.quad	0x401d9b7bf1e8e608              # double 7.4018399999999999
	.quad	0x401a27c5ac471b48              # double 6.5388400000000004
	.quad	0x40220b7c5692b3cc              # double 9.0224329999999994
	.quad	0x4010c199bb2788db              # double 4.189063
	.quad	0x4008de1869835159              # double 3.1084450000000001
	.quad	0x401db3bf2f555821              # double 7.4255339999999999
	.quad	0x401fd781c714fce7              # double 7.9604559999999997
	.quad	0x400de67381d7dbf5              # double 3.7375250000000002
	.quad	0x401c7905c0336156              # double 7.1181859999999997
	.quad	0x401f4734f82f5126              # double 7.8195379999999997
	.quad	0x3fe5d8904f6dfc5d              # double 0.68268600000000002
	.quad	0x4022efcc1871e6cd              # double 9.4683539999999997
	.quad	0x4013dcfa26a22b39              # double 4.9657980000000004
	.quad	0x3ff4d2d666a98245              # double 1.301474
	.quad	0x4021e737110e453d              # double 8.9515919999999998
	.quad	0x4018c0257c914b16              # double 6.1876429999999996
	.quad	0x400f8dc22ab25b31              # double 3.9442179999999998
	.quad	0x3fd8a80cf9e3864d              # double 0.38525700000000002
	.quad	0x3ff95043e5321e60              # double 1.5820959999999999
	.quad	0x4013b001d5c31594              # double 4.9218820000000001
	.quad	0x3ff08486ad2dcb14              # double 1.0323549999999999
	.quad	0x4003d1f70de8f6cf              # double 2.477522
	.quad	0x401010cf1800a7c6              # double 4.0164150000000003
	.quad	0x401f70c23fab10ba              # double 7.8601159999999997
	.quad	0x402291552e2fbe34              # double 9.2838530000000005
	.quad	0x3fe6f76c4827b6fe              # double 0.71770299999999998
	.quad	0x4021aaf6a50d6b23              # double 8.8339130000000008
	.quad	0x4007ff71eafee6fb              # double 2.9997289999999999
	.quad	0x402398915bdd7668              # double 9.7979839999999995
	.quad	0x3fb6e136e71cda2b              # double 0.089373999999999995
	.quad	0x40139d87724fa8b5              # double 4.9038370000000002
	.quad	0x401c3db1209edbf9              # double 7.0602460000000002
	.quad	0x4021ac3f5f91600f              # double 8.8364209999999996
	.quad	0x4007234a01abd1ab              # double 2.8922310000000002
	.quad	0x400debf11f926c7f              # double 3.7402060000000001
	.quad	0x4017ae2d1f1cfbb9              # double 5.9200939999999997
	.quad	0x400c0cc2d6a9c561              # double 3.5062310000000001
	.quad	0x40095cddd6e04c06              # double 3.1703450000000002
	.quad	0x3ff6ac97d8cf398f              # double 1.4171370000000001
	.quad	0x4021f41e57d9dba9              # double 8.9767939999999999
	.quad	0x3ff3cc271fff79c8              # double 1.2373419999999999
	.quad	0x40139691ea78af3e              # double 4.8970409999999998
	.quad	0x402327e7e1fc08fa              # double 9.5779409999999991
	.quad	0x3fff747735c182ed              # double 1.9659340000000001
	.quad	0x400db98e10cf5b1d              # double 3.7156030000000002
	.quad	0x4010255d1c3ac92a              # double 4.0364880000000003
	.quad	0x3ffbcfbfc6540cc8              # double 1.7382200000000001
	.quad	0x40227a52ac753e70              # double 9.2389119999999991
	.quad	0x40100655193708ab              # double 4.0061840000000002
	.quad	0x4013d336deb95e5b              # double 4.956264
	.quad	0x4023498372e6a769              # double 9.6435809999999992
	.quad	0x3ffcdf0d413122b8              # double 1.8044560000000001
	.quad	0x4007d76c4827b6fe              # double 2.9801869999999999
	.quad	0x40202d49f94855da              # double 8.0884549999999997
	.quad	0x4022d9526d8b1dd6              # double 9.4244570000000003
	.quad	0x401b931b9b66f933              # double 6.8936599999999997
	.quad	0x4020f08fc9363f57              # double 8.4698469999999997
	.quad	0x3fed470eb24a6a87              # double 0.91492399999999996
	.quad	0x400dcdee34fc610f              # double 3.725552
	.quad	0x400fbffcdab191de              # double 3.968744
	.quad	0x4017d4095f2452c6              # double 5.9570670000000003
	.quad	0x401a1789613d31ba              # double 6.5229850000000003
	.quad	0x401cf72085b18549              # double 7.2413350000000003
	.quad	0x401943bafd976ff4              # double 6.3161430000000003
	.quad	0x40209a28dc981beb              # double 8.3010929999999998
	.quad	0x401b84e22a2c2374              # double 6.8797689999999996
	.quad	0x402101b9d7fd8277              # double 8.5033709999999996
	.quad	0x40158fb3b7521145              # double 5.3903340000000002
	.quad	0x401aa2d40aaeafab              # double 6.6590119999999997
	.quad	0x3ff66d2ed783dff4              # double 1.401656
	.quad	0x4011fbd987c6327f              # double 4.4959470000000001
	.quad	0x402024f722e1ac58              # double 8.0721980000000002
	.quad	0x40073c3504c48adf              # double 2.904398
	.quad	0x400b276b7ed41b76              # double 3.3942480000000002
	.quad	0x3fdc9cbee807bbb6              # double 0.44706699999999999
	.quad	0x400a5980f55de58e              # double 3.2937029999999998
	.quad	0x40194f0b6b6e0d24              # double 6.3271920000000001
	.quad	0x40192b35b0bbf50e              # double 6.2921969999999998
	.quad	0x402233968d759ee9              # double 9.1007580000000008
	.quad	0x4012684e3ffef391              # double 4.6018610000000004
	.quad	0x3ff2cebcc6c54bcf              # double 1.175473
	.quad	0x401f05f91600f345              # double 7.7558329999999999
	.quad	0x4023f603925bb7b7              # double 9.9804960000000004
	.quad	0x400ab2e2fbe33acd              # double 3.3373469999999998
	.quad	0x3fea685122318330              # double 0.82523400000000002
	.quad	0x40106bbe0157eed4              # double 4.1052169999999997
	.quad	0x40225ce746cb966c              # double 9.1814520000000001
	.quad	0x3f9cd74927913e81              # double 0.028164999999999999
	.quad	0x40108f9767903212              # double 4.1402260000000002
	.quad	0x4005e89118c197e5              # double 2.7385579999999998
	.quad	0x4022218372e6a769              # double 9.0654559999999993
	.quad	0x4023961f7d73c925              # double 9.7932089999999991
	.quad	0x400e50d73860999e              # double 3.7894730000000001
	.quad	0x402023fc43b2dd37              # double 8.0702839999999991
	.quad	0x40222635e74299d9              # double 9.0746300000000009
	.quad	0x3ff3390a7829068a              # double 1.2014260000000001
	.quad	0x4018e090f733a8a4              # double 6.219303
	.quad	0x3feb8c6f7a0b5ed9              # double 0.86089300000000002
	.quad	0x3fefe52bd3c36113              # double 0.99672499999999997
	.quad	0x40206554b8bef8cf              # double 8.1979120000000005
	.quad	0x40062314013ec461              # double 2.767128
	.quad	0x4020e8b5cbff4773              # double 8.4545119999999994
	.quad	0x401597bbf93ff25e              # double 5.3981779999999997
	.quad	0x400de0589acbc8c1              # double 3.7345440000000001
	.quad	0x40130a311e85fd05              # double 4.7599530000000003
	.quad	0x40206ed4a1ad6452              # double 8.2164660000000005
	.quad	0x3ffc858ff7596851              # double 1.782608
	.quad	0x4016132db1e9f278              # double 5.5187290000000004
	.quad	0x4018ef893faf4278              # double 6.2339219999999997
	.quad	0x401edf0307f23cc9              # double 7.7177850000000001
	.quad	0x400e560e94ee392e              # double 3.7920199999999999
	.quad	0x400e79b13165d399              # double 3.8094199999999998
	.quad	0x4015ad0bfa0945fa              # double 5.4189910000000001
	.quad	0x4008f3215fcc1872              # double 3.118716
	.quad	0x40226eaa087ca644              # double 9.2161410000000003
	.quad	0x401fe068123810e9              # double 7.9691470000000004
	.quad	0x4000fc2a02320968              # double 2.1231270000000002
	.quad	0x4010fba387592535              # double 4.2457409999999998
	.quad	0x401da35935fc3b4f              # double 7.4095199999999997
	.quad	0x401239d9d3458cd2              # double 4.556495
	.quad	0x402300e864020818              # double 9.501773
	.quad	0x3fdcaa64c2f837b5              # double 0.44790000000000002
	.quad	0x401943797460242d              # double 6.315893
	.quad	0x4017421dda059a74              # double 5.8145670000000003
	.quad	0x3fe8c26351deefe5              # double 0.773729
	.quad	0x402120b2a6b0d951              # double 8.5638629999999996
	.quad	0x401f50cc78e9f6a9              # double 7.8289049999999997
	.quad	0x4015176102795704              # double 5.272831
	.quad	0x3fd5df2a9d627bf6              # double 0.34174599999999999
	.quad	0x401c0d9cae21101b              # double 7.013293
	.quad	0x401a424180d3cff6              # double 6.5647029999999997
	.quad	0x40148a2ec28b2a6b              # double 5.134944
	.quad	0x401f5ce0fc2eba28              # double 7.8407020000000002
	.quad	0x401971e5c0b99913              # double 6.3612279999999997
	.quad	0x401f9121682f9442              # double 7.8917289999999998
	.quad	0x40233016f0068db9              # double 9.5939250000000004
	.quad	0x40068525892684cf              # double 2.815013
	.quad	0x4016ec4ac6cdaf4b              # double 5.7307540000000001
	.quad	0x4012d8854cdb7ae5              # double 4.7114459999999996
	.quad	0x401100e66cb10343              # double 4.2508790000000003
	.quad	0x400853061c79b34a              # double 3.0405389999999999
	.quad	0x3fc183a53b8e4b88              # double 0.13683000000000001
	.quad	0x3ff20c6c54bcf0b7              # double 1.1280330000000001
	.quad	0x3ffe5cc100e6afcd              # double 1.897645
	.quad	0x4015d4c87980f55e              # double 5.4577960000000001
	.quad	0x3fe3d8665e02ea96              # double 0.620166
	.quad	0x401717baa9b499d0              # double 5.7731729999999999
	.quad	0x40238ae83a109d06              # double 9.7713029999999996
	.quad	0x4008fcb5781c7150              # double 3.1233930000000001
	.quad	0x3fdbe2d1f1cfbb95              # double 0.43571900000000002
	.quad	0x401802224edf6124              # double 6.002084
	.quad	0x401b809f623076c0              # double 6.8756079999999997
	.quad	0x3f943526527a2058              # double 0.019734000000000002
	.quad	0x40203d97f62b6ae8              # double 8.1203000000000003
	.quad	0x40052e8a71de69ad              # double 2.6477249999999999
	.quad	0x4016f5e84f09528f              # double 5.7401439999999999
	.quad	0x40142142f61ed5ae              # double 5.0324819999999999
	.quad	0x401e14d551d68c69              # double 7.5203449999999998
	.quad	0x4018b096feb4a665              # double 6.1724509999999997
	.quad	0x401ac1fd1569f490              # double 6.6894419999999997
	.quad	0x40221f54f3775b81              # double 9.0611949999999997
	.quad	0x4018543b2dd377e2              # double 6.0822570000000002
	.quad	0x401d9904b3c3e74b              # double 7.399432
	.quad	0x4005baff2a172abf              # double 2.716307
	.quad	0x40216ed5cfaacd9f              # double 8.7164750000000009
	.quad	0x3ff081e4712e4085              # double 1.031712
	.quad	0x4022b03c8e25c811              # double 9.3442120000000006
	.quad	0x401081f42bb66730              # double 4.1269080000000002
	.quad	0x401bda8eb463497b              # double 6.9634349999999996
	.quad	0x3ff22595bbbe8790              # double 1.1341760000000001
	.quad	0x3fe847325918a00a              # double 0.758691
	.quad	0x3ffd15054ac29bf1              # double 1.8176319999999999
	.quad	0x4006116e37154003              # double 2.7585109999999999
	.quad	0x400130257c914b16              # double 2.1485089999999998
	.quad	0x3fd23a2163fdd65a              # double 0.284798
	.quad	0x401917f1b6912125              # double 6.2733829999999999
	.quad	0x401a0bfc2224edf6              # double 6.5117039999999999
	.quad	0x3ffd1ae81882adc5              # double 1.819069
	.quad	0x400b5b17ce52deca              # double 3.4194789999999999
	.quad	0x400f711409a24031              # double 3.9302139999999999
	.quad	0x401fc65f9591cd1c              # double 7.9437239999999996
	.quad	0x4020b7f43419e300              # double 8.3592849999999999
	.quad	0x401d92a7bd48cb4b              # double 7.3932180000000001
	.quad	0x400a1c243dccea29              # double 3.263741
	.quad	0x4023baf3e468cac5              # double 9.8651420000000005
	.quad	0x3ff82cdd0d8cb07d              # double 1.510953
	.quad	0x3ff37340d4dc65c7              # double 1.215638
	.quad	0x3fbbebe1650a45d4              # double 0.109068
	.quad	0x4011b5232d2bb235              # double 4.4268919999999996
	.quad	0x401355e4a3832767              # double 4.8338799999999997
	.quad	0x3ff9fdfa00e27e0f              # double 1.624506
	.quad	0x401b00357a355044              # double 6.7502040000000001
	.quad	0x3feb2e514c22ee42              # double 0.84940400000000005
	.quad	0x4015e039abf33871              # double 5.4689699999999997
	.quad	0x40143b9f559b3d08              # double 5.0582250000000002
	.quad	0x4008e0852b4d8ba4              # double 3.109629
	.quad	0x4020ad4024b33db0              # double 8.3383800000000008
	.quad	0x3ff4ba919695d91b              # double 1.2955490000000001
	.quad	0x3ff1d273d5bab218              # double 1.11388
	.quad	0x40204f3abc947065              # double 8.1547450000000001
	.quad	0x4004ba3e39f77293              # double 2.5909390000000001
	.quad	0x4020252fc2656abe              # double 8.0726300000000002
	.quad	0x402191efd86a8fc1              # double 8.7850330000000003
	.quad	0x40239fc19c17225b              # double 9.8120239999999991
	.quad	0x40234b27aa68f4b6              # double 9.6467869999999998
	.quad	0x3fd4f5f0b28522ea              # double 0.327511
	.quad	0x4016c68ec52a411c              # double 5.6939039999999999
	.quad	0x3fc548909289dae0              # double 0.16627700000000001
	.quad	0x400e3fc2224edf61              # double 3.7811319999999999
	.quad	0x4021971ef30a4e38              # double 8.7951580000000007
	.quad	0x3ff6561d4306e5cd              # double 1.3960239999999999
	.quad	0x400f548a9bcfd4bf              # double 3.91628
	.quad	0x4012ccefaa4766c7              # double 4.7001330000000001
	.quad	0x3fee8ea18372e6a7              # double 0.95491099999999995
	.quad	0x401c825fe974a340              # double 7.127319
	.quad	0x4013b2b8c75c4a84              # double 4.9245330000000003
	.quad	0x4016d332f01754b0              # double 5.7062489999999997
	.quad	0x4006a934acaff6d3              # double 2.8326199999999999
	.quad	0x402134013ec460ee              # double 8.6015720000000009
	.quad	0x4015d1eff9f87f02              # double 5.4550169999999998
	.quad	0x3ffbd48dc11e42e1              # double 1.739393
	.quad	0x4017f50b524399b3              # double 5.9893010000000002
	.quad	0x400190014f8b588e              # double 2.1953149999999999
	.quad	0x4010f0de8f6cefed              # double 4.2352239999999997
	.quad	0x4022621ee675147f              # double 9.1916419999999999
	.quad	0x4020f47778dd6170              # double 8.4774740000000008
	.quad	0x402261c25d074214              # double 9.1909360000000006
	.quad	0x4015d6a9c560c7c1              # double 5.459632
	.quad	0x401b98ac5c13fd0d              # double 6.899095
	.quad	0x40150940357a3550              # double 5.2590339999999998
	.quad	0x40217251e321a2e8              # double 8.7232810000000001
	.quad	0x402375e4e69f05ea              # double 9.7302619999999997
	.quad	0x40204ff43419e300              # double 8.1561599999999999
	.quad	0x4014c6f3b213e3e3              # double 5.1942890000000004
	.quad	0x401d2bf22c01e68a              # double 7.292916
	.quad	0x3fd1a2f05a708ede              # double 0.27556999999999998
	.quad	0x4019145803cd141a              # double 6.2698669999999996
	.quad	0x40190d9231c64ba9              # double 6.2632529999999997
	.quad	0x3ff4f700474d9c6b              # double 1.310303
	.quad	0x4015c9142b302f73              # double 5.4463660000000003
	.quad	0x401114fd2a62aa19              # double 4.2704969999999998
	.quad	0x3ffdd3836a832b99              # double 1.864139
	.quad	0x402264c9ea9a3d2e              # double 9.1968530000000008
	.quad	0x401b7af102363b25              # double 6.8700599999999996
	.quad	0x4014339eadd590c1              # double 5.0504100000000003
	.quad	0x401fdd6fda836eb5              # double 7.966247
	.quad	0x4022fcc8bc9cd3e1              # double 9.4937190000000004
	.quad	0x400cb2806af46aa1              # double 3.5871590000000002
	.quad	0x401db41b328b6d87              # double 7.4258850000000001
	.quad	0x4013611947cfa26a              # double 4.8448229999999999
	.quad	0x3fed48c7192ea52f              # double 0.915134
	.quad	0x401c1b02d59d55e7              # double 7.0263780000000002
	.quad	0x3ff954c33b539325              # double 1.583194
	.quad	0x401228461f9f01b8              # double 4.5393299999999996
	.quad	0x3fe3c4fe36d22425              # double 0.61779700000000004
	.quad	0x40235d5432873bc9              # double 9.6822829999999999
	.quad	0x40126a2e3c536d65              # double 4.6036919999999997
	.quad	0x402335b7f1737543              # double 9.6049190000000006
	.quad	0x401643947496aad2              # double 5.5659960000000002
	.quad	0x401987a743a647fe              # double 6.3824740000000002
	.quad	0x4023920d5629d841              # double 9.7852580000000006
	.quad	0x4019cbeec39799e5              # double 6.4491529999999999
	.quad	0x401d2c0bdcad14a1              # double 7.2930140000000003
	.quad	0x40143b21c475e636              # double 5.0577459999999999
	.quad	0x4002047b24638c97              # double 2.2521879999999999
	.quad	0x4001955ef1fddebe              # double 2.1979350000000002
	.quad	0x3ffd29878316a055              # double 1.8226389999999999
	.quad	0x4020abf01322f273              # double 8.3358159999999994
	.quad	0x4010e4af0bf1a5ca              # double 4.2233239999999999
	.quad	0x401caa7610279570              # double 7.1664659999999998
	.quad	0x401f9c88e79aae6d              # double 7.9028660000000003
	.quad	0x4014d21682f94424              # double 5.2051639999999999
	.quad	0x40128fa7221858bc              # double 4.6402859999999997
	.quad	0x3ffe725d4a5df224              # double 1.9029210000000001
	.quad	0x401c6438088509c0              # double 7.0978700000000003
	.quad	0x3ff051be6e653869              # double 1.019957
	.quad	0x400f7ccc89b0ee4a              # double 3.935937
	.quad	0x4016d30a0b1bbcf5              # double 5.7060930000000001
	.quad	0x4022bdc8323358f3              # double 9.3706680000000002
	.quad	0x4016e52c16df3f96              # double 5.7238009999999999
	.quad	0x3ff710acc0bdcad1              # double 1.4415709999999999
	.quad	0x4021048b65237048              # double 8.5088760000000008
	.quad	0x4022d17f84449dbf              # double 9.4091760000000004
	.quad	0x400e78c2a454de7f              # double 3.8089650000000002
	.quad	0x4013c849cb252ce0              # double 4.9455939999999998
	.quad	0x3fe0d5de58e64b23              # double 0.52610699999999999
	.quad	0x401b43b320535c9e              # double 6.8161129999999996
	.quad	0x3ffba6ff7dfa00e2              # double 1.7282709999999999
	.quad	0x40216d4f7a919696              # double 8.7134970000000003
	.quad	0x4020009fe86833c6              # double 8.00122
	.quad	0x3ff784aa53fc0097              # double 1.469889
	.quad	0x4020fec2ce464990              # double 8.4975799999999992
	.quad	0x4010fccd0fe8ab50              # double 4.2468760000000003
	.quad	0x402074c3e3193f6c              # double 8.2280569999999997
	.quad	0x3ff9fc86cebbba56              # double 1.624152
	.quad	0x4021378897e99631              # double 8.6084639999999997
	.quad	0x4012117763e4abe7              # double 4.5170570000000003
	.quad	0x400a33c4f3ba7760              # double 3.2752780000000001
	.quad	0x401ceb65a9a80496              # double 7.2298799999999996
	.quad	0x4010ded84d338f7a              # double 4.2176220000000004
	.quad	0x4013fcd4ed2cbea5              # double 4.9969060000000001
	.quad	0x401ded27807789a4              # double 7.4815959999999997
	.quad	0x400628f53c579f23              # double 2.7699989999999999
	.quad	0x40133b784662bae0              # double 4.8080759999999998
	.quad	0x401e9c792d1287c2              # double 7.652806
	.quad	0x3ff66cc70867ad8e              # double 1.4015569999999999
	.quad	0x4003b2f555821294              # double 2.4623819999999998
	.quad	0x400c751bd61f5be6              # double 3.5571820000000001
	.quad	0x4010df9591cd1c7e              # double 4.2183440000000001
	.quad	0x401c182d38476f2a              # double 7.0236099999999997
	.quad	0x3fd9676640a6b93d              # double 0.39693600000000001
	.quad	0x4016d60d887ebf23              # double 5.7090360000000002
	.quad	0x401bbca70d1fa333              # double 6.9342309999999996
	.quad	0x3ff81625a682b628              # double 1.5054069999999999
	.quad	0x401d7a437824d4cc              # double 7.3693980000000003
	.quad	0x400d924af0bf1a5d              # double 3.6964320000000002
	.quad	0x40106a719b4dcec0              # double 4.1039490000000001
	.quad	0x4002f2b0a6fc58ac              # double 2.3685010000000002
	.quad	0x40169f28848387df              # double 5.6554279999999997
	.quad	0x4011b26b2f23033a              # double 4.4242369999999998
	.quad	0x4018a0df9bdc69f9              # double 6.1571030000000002
	.quad	0x402129f623076c05              # double 8.5819559999999999
	.quad	0x40202eaceaaf35e3              # double 8.0911629999999999
	.quad	0x4011f5db76b3bb84              # double 4.4900950000000002
	.quad	0x401a208205ff1d82              # double 6.5317460000000001
	.quad	0x401ccf562174c4ce              # double 7.202477
	.quad	0x401329691a75cd0c              # double 4.7904400000000003
	.quad	0x4010b7c243dccea3              # double 4.1794520000000004
	.quad	0x4020c100a393ee5f              # double 8.3769580000000001
	.quad	0x402103b8c32a8c9c              # double 8.5072690000000008
	.quad	0x3fda601ffb480a5b              # double 0.41211700000000001
	.quad	0x40204ed288ce703b              # double 8.15395
	.quad	0x400b23126e978d50              # double 3.3921250000000001
	.quad	0x401b9427418d690a              # double 6.8946810000000003
	.quad	0x4016a4f0520d130e              # double 5.661073
	.quad	0x401b10de8f6cefed              # double 6.7664739999999997
	.quad	0x400cf3bafd976ff4              # double 3.6190090000000001
	.quad	0x401130fa58f7121b              # double 4.2978300000000003
	.quad	0x40037475a31a4bdc              # double 2.4318650000000002
	.quad	0x4016a24edf612407              # double 5.6585039999999998
	.quad	0x4012a467381d7dbf              # double 4.6605499999999997
	.quad	0x40149fd82773e250              # double 5.1560980000000001
	.quad	0x3ff3329f59ccfaf0              # double 1.199859
	.quad	0x3ffa5dcc63f14120              # double 1.6478999999999999
	.quad	0x401c257646ae3a3b              # double 7.0365840000000004
	.quad	0x3fe1afd75e2046c7              # double 0.55271499999999996
	.quad	0x4004fa4acf312b1b              # double 2.6222129999999999
	.quad	0x401ae68b5cbff477              # double 6.7251409999999998
	.quad	0x401be1ae70c1333c              # double 6.9703920000000004
	.quad	0x4018769014b599aa              # double 6.1157839999999997
	.quad	0x4020baacb85a4f01              # double 8.3645990000000001
	.quad	0x401821f70de8f6cf              # double 6.033169
	.quad	0x3fc1fc4c165907d9              # double 0.140512
	.quad	0x4010184662bae03b              # double 4.0237059999999998
	.quad	0x401c9c1db0142f62              # double 7.1524570000000001
	.quad	0x4010eb3f63c31df7              # double 4.2297339999999997
	.quad	0x3ff432b239a38fbd              # double 1.2623770000000001
	.quad	0x4007e9c5e6ff7dfa              # double 2.989147
	.quad	0x40170c69b5a63f9a              # double 5.7621219999999997
	.quad	0x40058398a65492ff              # double 2.6892559999999999
	.quad	0x401d5986338b47c7              # double 7.3374259999999998
	.quad	0x401569314445aa2e              # double 5.3527269999999998
	.quad	0x400862070b8cfbfc              # double 3.0478649999999998
	.quad	0x4014b8522ea0fd3b              # double 5.1800009999999999
	.quad	0x400af9f44d445671              # double 3.3720479999999999
	.quad	0x4012c46c764adff8              # double 4.6918199999999999
	.quad	0x40077fd694ccab3f              # double 2.9374210000000001
	.quad	0x40230a788db0574b              # double 9.5204509999999995
	.quad	0x3fe1b87df5cf2496              # double 0.55377100000000001
	.quad	0x4019223e18698351              # double 6.2834399999999997
	.quad	0x40134d1e96c3fc44              # double 4.8253120000000003
	.quad	0x40088d97b30f8c65              # double 3.069137
	.quad	0x400f94280ae10492              # double 3.9473419999999999
	.quad	0x401d3b4a2339c0ec              # double 7.3079000000000001
	.quad	0x4021da0f0a5efe93              # double 8.9258959999999998
	.quad	0x40207691212513b6              # double 8.2315760000000004
	.quad	0x40232fb71fbc5dea              # double 9.5931940000000004
	.quad	0x3fc3f1c75818c5ca              # double 0.15581600000000001
	.quad	0x4010cc3547e06962              # double 4.1994220000000002
	.quad	0x3ff25f548ecd8dbd              # double 1.148274
	.quad	0x402385b3e1437c57              # double 9.7611380000000007
	.quad	0x401d85ed4a1ad645              # double 7.3807879999999999
	.quad	0x401feca643cc07ab              # double 7.981103
	.quad	0x4011bc4b4d056c51              # double 4.4338810000000004
	.quad	0x401e1647fdc5931d              # double 7.5217590000000003
	.quad	0x3fc8d70e6f2e8c05              # double 0.19406300000000001
	.quad	0x401f2f10ecb74de0              # double 7.7959630000000004
	.quad	0x400376f544bb1af4              # double 2.4330850000000002
	.quad	0x4021ee89eba6aca8              # double 8.9658960000000008
	.quad	0x400e91b79d909f1f              # double 3.821151
	.quad	0x4023c1c2e33eff19              # double 9.8784399999999994
	.quad	0x4012c9780baa582e              # double 4.6967470000000002
	.quad	0x4018d7c30d306a2b              # double 6.2107049999999999
	.quad	0x3fe0c957cd466f50              # double 0.52457799999999999
	.quad	0x402246e5cd4ed2cc              # double 9.1384720000000001
	.quad	0x402202148ba83f4f              # double 9.0040630000000004
	.quad	0x402225017dae8188              # double 9.0722769999999997
	.quad	0x401b41d323fee2ca              # double 6.8142820000000004
	.quad	0x40224ed86ec17ebb              # double 9.1539950000000001
	.quad	0x4023ce8d10f51aca              # double 9.9034200000000006
	.quad	0x402138a548238540              # double 8.6106359999999995
	.quad	0x400e2913a4f8726d              # double 3.770057
	.quad	0x400d985a4f00ef13              # double 3.6993909999999999
	.quad	0x40174ee392e1ef74              # double 5.8270400000000002
	.quad	0x4001a32c1f42bb66              # double 2.2046739999999998
	.quad	0x40098f68be2f7b18              # double 3.1950240000000001
	.quad	0x40133a5df2239e6b              # double 4.8069990000000002
	.quad	0x40126ef5a964e8b8              # double 4.6083590000000001
	.quad	0x4018724a276b7ed4              # double 6.1116109999999999
	.quad	0x40123cb20fb224ab              # double 4.5592730000000001
	.quad	0x3fcb881a1554fbdb              # double 0.215091
	.quad	0x40221b91d57ff9b5              # double 9.0538469999999993
	.quad	0x400ffc86cebbba56              # double 3.9983040000000001
	.quad	0x40223920e1f7d73d              # double 9.1115790000000008
	.quad	0x40213ee2003ab863              # double 8.6228180000000005
	.quad	0x4020320168b5cbff              # double 8.0976669999999995
	.quad	0x401ededcc20d562a              # double 7.7176390000000001
	.quad	0x40112ab606b7aa26              # double 4.2917100000000001
	.quad	0x4012b10624dd2f1b              # double 4.6728750000000003
	.quad	0x3fc2ef5ec80c73ac              # double 0.14793000000000001
	.quad	0x3feeb4d48882f0e1              # double 0.95957400000000003
	.quad	0x4003744998d045fe              # double 2.431781
	.quad	0x401416013660e51d              # double 5.0214889999999999
	.quad	0x401d077ea1c68ec5              # double 7.2573189999999999
	.quad	0x401884bd33d29564              # double 6.1296280000000003
	.quad	0x4019e21a719b4dcf              # double 6.4708040000000002
	.quad	0x4014c125dd095af3              # double 5.1886210000000004
	.quad	0x40160744f5d35654              # double 5.5070990000000002
	.quad	0x3fe67a658c4bd33d              # double 0.70244099999999998
	.quad	0x40104c6ac215b9a6              # double 4.0746260000000003
	.quad	0x4010513b18dac259              # double 4.0793270000000001
	.quad	0x4002c87c200c0f02              # double 2.347893
	.quad	0x4015fcb5bb384fd3              # double 5.4967870000000003
	.quad	0x40140985ad538ac2              # double 5.0092990000000004
	.quad	0x40141e5753a3ec03              # double 5.02963
	.quad	0x400fb615ebfa8f7e              # double 3.9639090000000001
	.quad	0x4022b5935fc3b4f6              # double 9.3546399999999998
	.quad	0x40181be878fabda1              # double 6.0272540000000001
	.quad	0x400eb106ee30caa3              # double 3.8364389999999999
	.quad	0x4018c25204af9229              # double 6.1897659999999997
	.quad	0x400d4fbb9496249a              # double 3.663932
	.quad	0x400eccf5b1c86488              # double 3.8500779999999999
	.quad	0x40031496aad1d042              # double 2.3850530000000001
	.quad	0x4012985c24c404a7              # double 4.6487889999999998
	.quad	0x3feac07cc7d1bb49              # double 0.83599699999999999
	.quad	0x40134ea28fe260b3              # double 4.8267920000000002
	.quad	0x4013e862f5989df1              # double 4.9769399999999999
	.quad	0x4021ccf0520d130e              # double 8.900271
	.quad	0x3fd11d606317268d              # double 0.26741799999999999
	.quad	0x401710b39192641b              # double 5.7663099999999998
	.quad	0x40082296b3354c12              # double 3.0168889999999999
	.quad	0x3ffbdeecbfb15b57              # double 1.7419249999999999
	.quad	0x4019547baa9b499d              # double 6.332503
	.quad	0x402161290257c915              # double 8.6897660000000005
	.quad	0x4023c388ca3e7d13              # double 9.8819029999999994
	.quad	0x3ffc263b688bda94              # double 1.759334
	.quad	0x4016c025bfad2999              # double 5.6876439999999997
	.quad	0x40071f5d78811b1e              # double 2.8903150000000002
	.quad	0x40214662fdfc19c1              # double 8.6374739999999992
	.quad	0x40211d21144cbe1f              # double 8.5568930000000005
	.quad	0x4011186c6583e857              # double 4.2738509999999996
	.quad	0x3ff2984a0e410b63              # double 1.16218
	.quad	0x3fb6cd07852f7f4a              # double 0.089066000000000006
	.quad	0x40218a4d4cb9ecf6              # double 8.7701209999999996
	.quad	0x400e1d3c36113405              # double 3.764275
	.quad	0x4006a1f2990f301f              # double 2.8290760000000001
	.quad	0x40127784230fcf81              # double 4.6167150000000001
	.quad	0x401ea3365881a155              # double 7.6593869999999997
	.quad	0x401142e2328f9f45              # double 4.3153160000000002
	.quad	0x401abcc07aaef2c7              # double 6.6843279999999998
	.quad	0x400d7e4de3b8a19d              # double 3.6866720000000002
	.quad	0x40216a9bf162ae4b              # double 8.708221
	.quad	0x4013a1ca3a4b5569              # double 4.9079980000000001
	.quad	0x3fe1f6837f7be122              # double 0.56134200000000001
	.quad	0x3ff9a6aa8eb46349              # double 1.6031899999999999
	.quad	0x4023505100a393ee              # double 9.6568679999999993
	.quad	0x4020df44b2b777d1              # double 8.4360710000000001
	.quad	0x3ff26ce5710880d8              # double 1.151586
	.quad	0x402155388a8b08dd              # double 8.6664469999999998
	.quad	0x3fcb1904b3c3e74b              # double 0.211701
	.quad	0x3fea49f72f76e610              # double 0.82152899999999995
	.quad	0x4002a8d6d3b6cbda              # double 2.3324410000000002
	.quad	0x3fcd59d55e6bc622              # double 0.22930400000000001
	.quad	0x3fff5e8c47a17f41              # double 1.960583
	.quad	0x401a2e746cb966be              # double 6.5453659999999996
	.quad	0x3ffc4247021d10b2              # double 1.766181
	.quad	0x3ff1dc4651f3e89b              # double 1.1162780000000001
	.quad	0x400bfe3f359ff4fd              # double 3.4991439999999998
	.quad	0x3fff4e054690de09              # double 1.956548
	.quad	0x3fb1ca5bd944aa54              # double 0.069494
	.quad	0x401a5c84f8f8a4c2              # double 6.5903510000000001
	.quad	0x4011fd612c6ac216              # double 4.4974410000000002
	.quad	0x401ba49b1fab96f2              # double 6.9107479999999999
	.quad	0x3ffc1acde19fc2a9              # double 1.7565440000000001
	.quad	0x4023d92684cf073a              # double 9.9241220000000006
	.quad	0x3fe1c3f3e0370cdd              # double 0.55517000000000005
	.quad	0x40142f91600f3450              # double 5.0464529999999996
	.quad	0x4015adab191dde37              # double 5.4195979999999997
	.quad	0x4003ac7c0f451761              # double 2.4592209999999999
	.quad	0x401ffbd3c3611340              # double 7.9959249999999997
	.quad	0x401b4b07075b3e14              # double 6.8232689999999998
	.quad	0x3fa26fa3fcc9ea9a              # double 0.036007999999999998
	.quad	0x401654db59578a2b              # double 5.5828680000000004
	.quad	0x4016a11dbca9691a              # double 5.6573399999999996
	.quad	0x401c7c343b70ef56              # double 7.1212929999999997
	.quad	0x401e6532617c1bda              # double 7.5988249999999997
	.quad	0x401798151a437825              # double 5.8985180000000001
	.quad	0x3f7bc01a36e2eb1c              # double 0.0067749999999999998
	.quad	0x3fea6872b020c49c              # double 0.82525000000000003
	.quad	0x40234d4bad7d7c2d              # double 9.6509680000000006
	.quad	0x400bb99567dbb16c              # double 3.4656169999999999
	.quad	0x40114cb8e086bdf5              # double 4.3249240000000002
	.quad	0x402195870da5daf0              # double 8.7920459999999991
	.quad	0x401e361aa3f034b1              # double 7.5528360000000001
	.quad	0x4003d1c193b3a68b              # double 2.47742
	.quad	0x3ff9e644d87724fb              # double 1.6187180000000001
	.quad	0x3ffb19b0ab2e1694              # double 1.6937720000000001
	.quad	0x3fe809070fbeb9e5              # double 0.75110200000000005
	.quad	0x40092dca07f66e87              # double 3.1473580000000001
	.quad	0x40146cc532a497fa              # double 5.1062209999999997
	.quad	0x40206b14013ec461              # double 8.2091370000000001
	.quad	0x4001074d1633482c              # double 2.128565
	.quad	0x3ff21b2e59af9ebf              # double 1.1316360000000001
	.quad	0x40220dc65c70435f              # double 9.026904
	.quad	0x4015962888b545c8              # double 5.3966390000000004
	.quad	0x4018805e1c15097d              # double 6.1253590000000004
	.quad	0x401b0cd035371972              # double 6.7625130000000002
	.quad	0x40088ce2d1f1cfbc              # double 3.0687920000000002
	.quad	0x3fc16d6dc1a47a9e              # double 0.136152
	.quad	0x40189d288ce703b0              # double 6.1534750000000003
	.quad	0x3febd1b2e59af9ec              # double 0.869348
	.quad	0x3fde6188b11409a2              # double 0.47470299999999999
	.quad	0x40181e6d9be4cd75              # double 6.0297150000000004
	.quad	0x400ddcf355cd91ef              # double 3.7328860000000001
	.quad	0x400beb0af5fd47bf              # double 3.4897670000000001
	.quad	0x4011d04b7f5a5333              # double 4.4534130000000003
	.quad	0x4006d674d1633483              # double 2.8547150000000001
	.quad	0x402387bb73083559              # double 9.7651020000000006
	.quad	0x3ff132c94b380cb7              # double 1.074899
	.quad	0x401bbd5629d8409e              # double 6.9348989999999997
	.quad	0x4021a15f2452c5a0              # double 8.8151790000000005
	.quad	0x3ff1994c01605250              # double 1.099926
	.quad	0x401a56e115592d99              # double 6.5848430000000002
	.quad	0x4019a8ef77f27fe5              # double 6.4149760000000002
	.quad	0x4010289dadfb506e              # double 4.0396640000000001
	.quad	0x402057444e0daa0d              # double 8.1704430000000006
	.quad	0x3ff41e7c8d195897              # double 1.2574430000000001
	.quad	0x3fcda8cdea033e79              # double 0.231714
	.quad	0x401c51ba3ca7503c              # double 7.0798120000000004
	.quad	0x40130387160956c1              # double 4.7534450000000001
	.quad	0x3fcd9e518f3eccc4              # double 0.23139399999999999
	.quad	0x40175c122749f0e5              # double 5.8399130000000001
	.quad	0x401398e1d6494d51              # double 4.8992990000000001
	.quad	0x4020a89ca18bd662              # double 8.3293199999999992
	.quad	0x400772d3415b1423              # double 2.9310670000000001
	.quad	0x40076ee73e681a9c              # double 2.9291520000000002
	.quad	0x400f38244e93e1ca              # double 3.9024130000000001
	.quad	0x40077f0fe047d3d4              # double 2.9370419999999999
	.quad	0x4008690eed02cd3a              # double 3.0512980000000001
	.quad	0x4002fb41bfbdf091              # double 2.372684
	.quad	0x40168cd3e0bd449a              # double 5.6375270000000004
	.quad	0x401d13ee5eedcc21              # double 7.2694640000000001
	.quad	0x3ff63d44998d0460              # double 1.389958
	.quad	0x4022c7ecbb7f9d6f              # double 9.3904779999999998
	.quad	0x401d2e6fb4c3c18b              # double 7.2953479999999997
	.quad	0x4022d364e054690e              # double 9.4128790000000002
	.quad	0x400531a4bdba0a52              # double 2.6492399999999998
	.quad	0x4010be154434e337              # double 4.1856280000000003
	.quad	0x4013a3022dd7a9a0              # double 4.9091880000000003
	.quad	0x4021af5d78811b1e              # double 8.8425100000000008
	.quad	0x3ff7e5df2239e6ac              # double 1.4936210000000001
	.quad	0x401d84f11b60ae97              # double 7.3798260000000004
	.quad	0x400605cee17a02fb              # double 2.7528359999999998
	.quad	0x400f9cbccf28c79f              # double 3.9515319999999998
	.quad	0x4018bbe8ff327aa7              # double 6.1835060000000004
	.quad	0x401d545e0b4e11dc              # double 7.3323900000000002
	.quad	0x401284e6e221c8a8              # double 4.6297870000000003
	.quad	0x402010e991ff7165              # double 8.0330320000000004
	.quad	0x400c915ce9e5e248              # double 3.5709780000000002
	.quad	0x400a9dba0a526959              # double 3.3270149999999998
	.quad	0x40045bd6a593a2e0              # double 2.5448430000000002
	.quad	0x400a3917939a7c18              # double 3.2778770000000002
	.quad	0x3ffeefb8f57f737e              # double 1.9335260000000001
	.quad	0x4016f22d0e560419              # double 5.7365000000000004
	.quad	0x3fe3da6c5d206c87              # double 0.62041299999999999
	.quad	0x3ff460e410b630a9              # double 1.273655
	.quad	0x3ffb878e9f6a93f3              # double 1.7205950000000001
	.quad	0x400744a6a875d56f              # double 2.9085209999999999
	.quad	0x3feb7681669ced0b              # double 0.85821599999999998
	.quad	0x3ff6a1101b003687              # double 1.4143220000000001
	.quad	0x3ffccba1f4b1ee24              # double 1.799715
	.quad	0x401ad90364388ebd              # double 6.7119270000000002
	.quad	0x40124163779e9d0f              # double 4.5638560000000004
	.quad	0x4016d0c62e4d1a65              # double 5.703881
	.quad	0x4022062ef4e0114d              # double 9.0120769999999997
	.quad	0x401eddd3bafd9770              # double 7.716628
	.quad	0x401a4c5f394b7b29              # double 6.5745820000000004
	.quad	0x40161a7daa4fca43              # double 5.5258700000000003
	.quad	0x40111a5119ce075f              # double 4.2756999999999996
	.quad	0x4001ece24bba12b6              # double 2.240666
	.quad	0x4019d9c6b0531983              # double 6.4626720000000004
	.quad	0x3ff44432ca57a787              # double 1.2666500000000001
	.quad	0x40210b966be7afa7              # double 8.5226319999999998
	.quad	0x4016278dd616f86a              # double 5.538627
	.quad	0x401a5a43bb40b34e              # double 6.5881489999999996
	.quad	0x4010e37e2c55c960              # double 4.2221609999999998
	.quad	0x400ac63a5c1c6089              # double 3.3467910000000001
	.quad	0x4017483f91e646f1              # double 5.8205549999999997
	.quad	0x400d70c77dd872f3              # double 3.6800679999999999
	.quad	0x4002320e1f7d73c9              # double 2.2744409999999999
	.quad	0x4021d8a6117720c9              # double 8.9231420000000004
	.quad	0x401a345f5ad96a6a              # double 6.551145
	.quad	0x3ff436e71cda2b5a              # double 1.263404
	.quad	0x4023e187a4a48f97              # double 9.9404880000000002
	.quad	0x401229f44d445671              # double 4.5409709999999999
	.quad	0x3fe4740c4156e265              # double 0.63916600000000001
	.quad	0x402157763e4abe6a              # double 8.6708239999999996
	.quad	0x40223bbc2b94d940              # double 9.1166699999999991
	.quad	0x400c3f91e646f156              # double 3.53104
	.quad	0x3ff680895d0b73d2              # double 1.4063810000000001
	.quad	0x4010c8bf3bea91da              # double 4.1960420000000003
	.quad	0x3fd29d2bf5515055              # double 0.29084300000000002
	.quad	0x401cd64ece9a2c67              # double 7.2092850000000004
	.quad	0x400419ae924f227d              # double 2.51254
	.quad	0x3ff75ad42c3c9eed              # double 1.4596750000000001
	.quad	0x4013b20ab7132724              # double 4.9238689999999998
	.quad	0x4010bafd113836a8              # double 4.1826059999999998
	.quad	0x4021b05e5f30e7ff              # double 8.8444699999999994
	.quad	0x40104ff972474539              # double 4.0781000000000001
	.quad	0x4023498f1d3ed528              # double 9.6436700000000001
	.quad	0x401f6931ca7d6734              # double 7.8527290000000001
	.quad	0x40230118c197e564              # double 9.5021419999999992
	.quad	0x400e9790752da986              # double 3.8240059999999998
	.quad	0x400cbd04a2fcefaa              # double 3.5922939999999999
	.quad	0x40026447c30d306a              # double 2.2989649999999999
	.quad	0x400c8e6fb4c3c18b              # double 3.5695489999999999
	.quad	0x4002325247cb70ac              # double 2.2745709999999999
	.quad	0x3ff857d3910c2c5e              # double 1.521442
	.quad	0x401dcc98a222d517              # double 7.4498009999999999
	.quad	0x401ee6ab5807fed2              # double 7.725263
	.quad	0x401cd24f227d028a              # double 7.2053799999999999
	.quad	0x3ff09dde37585be2              # double 1.0385420000000001
	.quad	0x401b8a6117720c8d              # double 6.8851360000000001
	.quad	0x4006c6772d5e071c              # double 2.8469069999999999
	.quad	0x4008ffaa8a82a561              # double 3.1248369999999999
	.quad	0x3fc2ae5bc87db2b3              # double 0.14594599999999999
	.quad	0x401e43005814940c              # double 7.5654310000000002
	.quad	0x402175e6362a5e78              # double 8.7302719999999994
	.quad	0x401c3e004b7f5a53              # double 7.0605479999999998
	.quad	0x400e77dd00f776c5              # double 3.8085270000000002
	.quad	0x402353384fd2a62b              # double 9.6625390000000006
	.quad	0x3fe6fd9988d2a1f9              # double 0.71845700000000001
	.quad	0x400c6fe8ab4fa483              # double 3.554643
	.quad	0x400bea875d56f32c              # double 3.4895160000000001
	.quad	0x40213bd29563a9f4              # double 8.6168410000000008
	.quad	0x401a70fb224aada3              # double 6.6103329999999998
	.quad	0x40151450268900c5              # double 5.2698369999999999
	.quad	0x40033e32a0663c75              # double 2.40537
	.quad	0x4001b343fa2ad3e9              # double 2.2125319999999999
	.quad	0x401f4873bc903ea7              # double 7.8207539999999999
	.quad	0x401932e7b3d8e001              # double 6.2997120000000004
	.quad	0x40167a4441787054              # double 5.6194009999999999
	.quad	0x3fdc969a0ad8a116              # double 0.44669199999999998
	.quad	0x3fda3cf70153bd16              # double 0.40997099999999997
	.quad	0x40232da921ccd962              # double 9.589181
	.quad	0x401987d41743e964              # double 6.3826450000000001
	.quad	0x40123de1198aeb81              # double 4.5604290000000001
	.quad	0x40114c6a3bddfca0              # double 4.324624
	.quad	0x4011a970f7b9e061              # double 4.41547
	.quad	0x3fc6666666666666              # double 0.17499999999999999
	.quad	0x3ff94180d3cff64d              # double 1.578492
	.quad	0x401b1ffc9795b35b              # double 6.781237
	.quad	0x401692a62aa1943a              # double 5.6432120000000001
	.quad	0x401f5d9b1b79d90a              # double 7.841412
	.quad	0x40157730c67168f9              # double 5.3663970000000001
	.quad	0x401557e90ff97247              # double 5.3358499999999998
	.quad	0x4007309070fbeb9e              # double 2.8987129999999999
	.quad	0x401a4f46ed245b29              # double 6.5774189999999999
	.quad	0x4019147c30d306a3              # double 6.2700050000000003
	.quad	0x40159f316e371540              # double 5.405462
	.quad	0x3fea4b2745bf26f2              # double 0.82167400000000002
	.quad	0x401fe81733226c3c              # double 7.9766510000000004
	.quad	0x4010da3c21187e7c              # double 4.21312
	.quad	0x4023c3d2d87f8876              # double 9.8824679999999994
	.quad	0x401636de33269df9              # double 5.5535819999999996
	.quad	0x3feb660e51d25aab              # double 0.85620799999999997
	.quad	0x4020f9c5c5718eb9              # double 8.4878370000000007
	.quad	0x400be01de2691644              # double 3.484432
	.quad	0x401a6c26dce39b45              # double 6.6056169999999996
	.quad	0x401e8ae536501e26              # double 7.6356400000000004
	.quad	0x4006974cd31769a9              # double 2.823877
	.quad	0x4021cb4289118c19              # double 8.8969919999999991
	.quad	0x4008d951c5c5718f              # double 3.1061130000000001
	.quad	0x400cf9abf3387161              # double 3.6219100000000002
	.quad	0x4020959ddc1e7968              # double 8.2922200000000004
	.quad	0x4010a67125dd095b              # double 4.162541
	.quad	0x400353b42cc2d6aa              # double 2.4158710000000001
	.quad	0x3feb984e3ffef391              # double 0.86234200000000005
	.quad	0x4003d5675579af19              # double 2.4792010000000002
	.quad	0x40127126a65cf67b              # double 4.6104989999999999
	.quad	0x4023890e453d20f3              # double 9.7676870000000004
	.quad	0x3ffb82e44b6e935c              # double 1.7194560000000001
	.quad	0x401c13e9ea140571              # double 7.0194470000000004
	.quad	0x3feab6fe2e6ea854              # double 0.83483799999999996
	.quad	0x401a2e4473cd5736              # double 6.5451829999999998
	.quad	0x3ffbc3ea704bc276              # double 1.735331
	.quad	0x4010cfc2a8869c67              # double 4.2028910000000002
	.quad	0x401ac315d701d9f5              # double 6.6905130000000002
	.quad	0x40129a148ba83f4f              # double 4.6504690000000002
	.quad	0x4012ba8a3f8982cb              # double 4.6821679999999999
	.quad	0x402292bbecaab8a6              # double 9.2865900000000003
	.quad	0x3ff6d9eb6390c910              # double 1.4282029999999999
	.quad	0x40170c475e6362a6              # double 5.7619910000000001
	.quad	0x3fe1062f5989df11              # double 0.53200499999999995
	.quad	0x40227234eb9a176e              # double 9.2230600000000003
	.quad	0x4012844e93e1c9b4              # double 4.6292059999999999
	.quad	0x3ff8a4c1ebc83a97              # double 1.540224
	.quad	0x400162174c4cdfad              # double 2.1728960000000002
	.quad	0x40078b0c026cc1ca              # double 2.9428939999999999
	.quad	0x400885846e8f29d4              # double 3.065194
	.quad	0x40149bba12b5e52a              # double 5.1520770000000002
	.quad	0x4015022af5771002              # double 5.2521170000000001
	.quad	0x40210830a0b1bbcf              # double 8.5159959999999995
	.quad	0x4003ed0678c0053e              # double 2.4907349999999999
	.quad	0x4008c0b88ca3e7d1              # double 3.0941019999999999
	.quad	0x401937396d0917d7              # double 6.3039300000000003
	.quad	0x3ffc784db9c7368b              # double 1.779371
	.quad	0x401b3a6e75ff609e              # double 6.8070620000000002
	.quad	0x4022e8427418d691              # double 9.4536320000000007
	.quad	0x401003c3e74afd54              # double 4.0036769999999997
	.quad	0x4021c9116a8b8f15              # double 8.8927110000000003
	.quad	0x3fffa22813448063              # double 1.9770890000000001
	.quad	0x401788ec0f883340              # double 5.8837130000000002
	.quad	0x40108265add9c27f              # double 4.1273410000000004
	.quad	0x40173a9c99285a92              # double 5.8072379999999999
	.quad	0x402185f5cf2495e1              # double 8.7616409999999991
	.quad	0x400882b734b51373              # double 3.0638260000000002
	.quad	0x401e575d56f32bdc              # double 7.5853169999999999
	.quad	0x4023e4e67d77fae3              # double 9.9470709999999993
	.quad	0x401410303c07ee0b              # double 5.015809
	.quad	0x3fe273343fa2ad3f              # double 0.57656300000000005
	.quad	0x401ab3da72a7bd49              # double 6.6756380000000002
	.quad	0x401be6c7219220ff              # double 6.9753689999999997
	.quad	0x400118f7121ab4b7              # double 2.1371899999999999
	.quad	0x3fe6d76cce5f7404              # double 0.71379700000000001
	.quad	0x40218cd983947497              # double 8.7750970000000006
	.quad	0x3fd8ee2003ab862b              # double 0.38953399999999999
	.quad	0x40039de8b3b32053              # double 2.4521039999999998
	.quad	0x4021f1c90c4dec1c              # double 8.9722369999999997
	.quad	0x402391ce8d972cd8              # double 9.7847790000000003
	.quad	0x40225baa369fcf3e              # double 9.1790330000000004
	.quad	0x40022a36199780bb              # double 2.2706110000000002
	.quad	0x4021267b80a9de8b              # double 8.5751609999999996
	.quad	0x4001315592d98bf8              # double 2.149089
	.quad	0x400e36440f238972              # double 3.776497
	.quad	0x4020685814940bbb              # double 8.2037969999999998
	.quad	0x4014751d68c692f7              # double 5.1143700000000001
	.quad	0x4018f1a2a4db163c              # double 6.2359720000000003
	.quad	0x40159af7d30ad46f              # double 5.4013359999999997
	.quad	0x4020663886594af5              # double 8.1996500000000001
	.quad	0x3fe7e54d61b2a27f              # double 0.74674099999999999
	.quad	0x401215e4e69f05ea              # double 4.5213809999999999
	.quad	0x4014811904b3c3e7              # double 5.1260719999999997
	.quad	0x402298ca1cef2410              # double 9.2984170000000006
	.quad	0x401b91f46ed245b3              # double 6.8925340000000004
	.quad	0x401ab94185058dde              # double 6.6809139999999996
	.quad	0x3ff7fa0b5ed8d36b              # double 1.4985459999999999
	.quad	0x4022a1e060fe4799              # double 9.3161649999999998
	.quad	0x4017eabf76a2f48c              # double 5.9792459999999998
	.quad	0x4017df7121ab4b73              # double 5.9682050000000002
	.quad	0x40225740a2877ee5              # double 9.1704150000000002
	.quad	0x4020211f4f50a02c              # double 8.0646920000000008
	.quad	0x400f180f55de58e6              # double 3.8867479999999999
	.quad	0x4017dc7192ea52f0              # double 5.9652770000000004
	.quad	0x4023809b52007dd4              # double 9.7511849999999995
	.quad	0x400da90cd423d923              # double 3.707544
	.quad	0x4023f7cd466f501a              # double 9.9839880000000001
	.quad	0x4018f3fd50225743              # double 6.2382710000000001
	.quad	0x4001cd2135daad60              # double 2.2251609999999999
	.quad	0x4007557eed45e918              # double 2.9167459999999998
	.quad	0x3ffcb163baba7b91              # double 1.7933079999999999
	.quad	0x40013cb1465e8922              # double 2.1546349999999999
	.quad	0x4011d85985ad538b              # double 4.4612790000000002
	.quad	0x401eca593a2df938              # double 7.6976060000000003
	.quad	0x401d9d1fe64f54d2              # double 7.4034420000000001
	.quad	0x3ff56df1e0828c37              # double 1.339342
	.quad	0x3ff0cfd8f0c77dd8              # double 1.0507439999999999
	.quad	0x40235749f0e4da0a              # double 9.6704860000000004
	.quad	0x401031769a91105e              # double 4.0483039999999999
	.quad	0x3ff3fccaf709b739              # double 1.249217
	.quad	0x400298e7ddca4b12              # double 2.3246609999999999
	.quad	0x4005c8509bf9c62a              # double 2.72281
	.quad	0x4006d66cf41f212d              # double 2.8546999999999998
	.quad	0x4018b95810624dd3              # double 6.181
	.quad	0x402118813cab81f9              # double 8.5478609999999993
	.quad	0x3feef57b41bfbdf1              # double 0.96746600000000004
	.quad	0x402119af7d30ad47              # double 8.5501670000000001
	.quad	0x3ff33ae5796bfca8              # double 1.2018789999999999
	.quad	0x401df0e6afcce1c6              # double 7.4852550000000004
	.quad	0x4016c601bc98a223              # double 5.6933660000000001
	.quad	0x4011d9afe1da7b0b              # double 4.4625849999999998
	.quad	0x401cebe4cd749279              # double 7.2303649999999999
	.quad	0x4021fde481f53826              # double 8.9958840000000002
	.quad	0x401a5f16b11c6d1e              # double 6.5928599999999999
	.quad	0x4016e59c065b63d4              # double 5.7242280000000001
	.quad	0x3fd9c03ff69014b6              # double 0.40235900000000002
	.quad	0x40059cfc3f811f4f              # double 2.7016529999999999
	.quad	0x4021e93f6c2699c8              # double 8.9555620000000005
	.quad	0x3ff5b460242d05f3              # double 1.3565370000000001
	.quad	0x4018a1e364bec67a              # double 6.1580940000000002
	.quad	0x4018189eba6aca79              # double 6.0240429999999998
	.quad	0x4020ae65e02ea961              # double 8.3406210000000005
	.quad	0x40064869c66d373b              # double 2.785358
	.quad	0x3ff13666234a87e4              # double 1.0757810000000001
	.quad	0x3ff847368ad68837              # double 1.5173859999999999
	.quad	0x401c5221426fe719              # double 7.0802050000000003
	.quad	0x40142ce7cd035372              # double 5.0438530000000004
	.quad	0x3ffc5fe43675ddd3              # double 1.7734110000000001
	.quad	0x4007e290eed02cd4              # double 2.9856280000000002
	.quad	0x40208b22f2734f83              # double 8.2717510000000001
	.quad	0x400df8012dfd694d              # double 3.7460960000000001
	.quad	0x4022a299b6f5caf3              # double 9.3175790000000003
	.quad	0x4011a79207d4e098              # double 4.4136430000000004
	.quad	0x4017579e16d6dc1a              # double 5.8355639999999998
	.quad	0x4012d0b524399b2c              # double 4.7038159999999998
	.quad	0x400f2113404ea4a9              # double 3.8911500000000001
	.quad	0x4002a84cf0739b02              # double 2.3321779999999999
	.quad	0x4022a3cb5fe542e5              # double 9.3199109999999994
	.quad	0x401141876188b114              # double 4.313993
	.quad	0x3fff3e0370cdc875              # double 1.9526399999999999
	.quad	0x40125d37c1376d55              # double 4.5910330000000004
	.quad	0x400c06299524bfd3              # double 3.503009
	.quad	0x40234dc7abfb9bed              # double 9.6519139999999996
	.quad	0x401fd2c12ad81adf              # double 7.9558150000000003
	.quad	0x4022e9fea8112ba1              # double 9.4570209999999992
	.quad	0x4023d9f8c21e1d21              # double 9.9257259999999991
	.quad	0x3fe8b6ef8055fbb5              # double 0.77233099999999999
	.quad	0x4021d61bf37b8d3f              # double 8.9181819999999998
	.quad	0x401021dd1a21ea36              # double 4.0330700000000004
	.quad	0x40117cd74927913f              # double 4.3719150000000004
	.quad	0x3ff06ac42e9899bf              # double 1.0260659999999999
	.quad	0x40219dbd944aa540              # double 8.8080870000000004
	.quad	0x40039b8bac710cb3              # double 2.4509500000000002
	.quad	0x401ad7b9170d62bf              # double 6.7106669999999999
	.quad	0x40093b291b823c86              # double 3.1538870000000001
	.quad	0x3ff4df4b1ee24357              # double 1.3045150000000001
	.quad	0x401db6540cc78e9f              # double 7.4280549999999996
	.quad	0x40075c65c70435f0              # double 2.9201160000000002
	.quad	0x4012111f0c34c1a9              # double 4.5167200000000003
	.quad	0x3ffdd3db7f173754              # double 1.864223
	.quad	0x4010018d6909aed5              # double 4.0015159999999996
	.quad	0x402301acde19fc2b              # double 9.5032720000000008
	.quad	0x4023c6eb0b7c3505              # double 9.8885120000000004
	.quad	0x401d30941c8216c6              # double 7.2974399999999999
	.quad	0x401b39eb6390c910              # double 6.8065619999999996
	.quad	0x400aff3e89a88ace              # double 3.3746309999999999
	.quad	0x401adf23cc8de2ac              # double 6.7179099999999998
	.quad	0x4003d9253543aeab              # double 2.4810279999999998
	.quad	0x4007c7724fa8b4c0              # double 2.9723860000000002
	.quad	0x400b18705425f202              # double 3.386933
	.quad	0x4002a8ff327aa68f              # double 2.3325179999999999
	.quad	0x401e9ba5a038194c              # double 7.651999
	.quad	0x400d95fdcdf69878              # double 3.6982379999999999
	.quad	0x40052be1eb4202da              # double 2.6464270000000001
	.quad	0x3fb97e77d523b363              # double 0.099585999999999994
	.quad	0x4014046ae3a3a8e7              # double 5.0043139999999999
	.quad	0x3ff97c4199fe4367              # double 1.5928359999999999
	.quad	0x3ff2b30f8c64fdb1              # double 1.1687160000000001
	.quad	0x3feb78fcd67fd3f6              # double 0.85851900000000003
	.quad	0x3fefa9aa1d755bcd              # double 0.98946100000000003
	.quad	0x401e414c22ee4192              # double 7.5637670000000004
	.quad	0x40113d71b0468449              # double 4.3100040000000002
	.quad	0x401b367dfe32a066              # double 6.8032149999999998
	.quad	0x3fc25c5f7c6759ab              # double 0.14344399999999999
	.quad	0x401d174c09c3ce21              # double 7.2727510000000004
	.quad	0x40160f19d66adb40              # double 5.5147469999999998
	.quad	0x401f6f3d7d3910c3              # double 7.8586330000000002
	.quad	0x4019c8b9fdbd2fa1              # double 6.4460220000000001
	.quad	0x40118eff9f87f024              # double 4.3896470000000001
	.quad	0x4016d8f3a9b06812              # double 5.7118669999999998
	.quad	0x4020a398201cd5fa              # double 8.3195200000000007
	.quad	0x401b2a34ca0c282c              # double 6.7912169999999996
	.quad	0x40073a9eb2074ea9              # double 2.9036230000000001
	.quad	0x401a4632c1f42bb6              # double 6.5685529999999996
	.quad	0x40148edf61240746              # double 5.1395239999999998
	.quad	0x40224b547e06961c              # double 9.1471289999999996
	.quad	0x40021d3671ac14c6              # double 2.2642639999999998
	.quad	0x40235e5907d91255              # double 9.6842729999999992
	.quad	0x401b02c40d0aaa7e              # double 6.7527010000000001
	.quad	0x4023d13b5bf6a0dc              # double 9.9086560000000005
	.quad	0x40046fffbce4217d              # double 2.5546869999999999
	.quad	0x402331f98b71b8aa              # double 9.597607
	.quad	0x3ff94dde7a743a64              # double 1.5815109999999999
	.quad	0x3fddd05af6c69b5a              # double 0.46584199999999998
	.quad	0x3ff4d003eea209ab              # double 1.3007850000000001
	.quad	0x40146cf1800a7c5b              # double 5.1063900000000002
	.quad	0x401e1ec743201041              # double 7.5300570000000002
	.quad	0x401e699cbee807bc              # double 7.6031370000000003
	.quad	0x4017edeb0fadf2ed              # double 5.982342
	.quad	0x4018defe0ce0b913              # double 6.2177660000000001
	.quad	0x401fbe410b630a91              # double 7.9357949999999997
	.quad	0x400254477ff151e7              # double 2.2911519999999999
	.quad	0x3fb0286f8ad2567a              # double 0.063117000000000006
	.quad	0x3fd607d4e09784ec              # double 0.34422799999999998
	.quad	0x40061d07c84b5dcc              # double 2.7641749999999998
	.quad	0x4023f1fb1e18efbb              # double 9.9726189999999999
	.quad	0x400b338c5436b8fa              # double 3.4001700000000001
	.quad	0x400ced39da16616b              # double 3.6158329999999999
	.quad	0x4023e75c28f5c28f              # double 9.9518749999999993
	.quad	0x401d04f00ef1348b              # double 7.2548219999999999
	.quad	0x402089d627bf61aa              # double 8.2692119999999996
	.quad	0x3ff44b1ab0856e69              # double 1.2683359999999999
	.quad	0x40198e670e2c12ae              # double 6.3890650000000004
	.quad	0x4013b89a88ace24c              # double 4.9302770000000002
	.quad	0x40208445cbbc2b95              # double 8.2583450000000003
	.quad	0x4011ff240fa9c12f              # double 4.499161
	.quad	0x401b4019f3c70c99              # double 6.8125989999999996
	.quad	0x3ff3aaaf35e310dc              # double 1.229171
	.quad	0x40119c7a398201cd              # double 4.4028099999999997
	.quad	0x40228f0c996b7671              # double 9.2793930000000007
	.quad	0x4023e55ed06fef7c              # double 9.9479889999999997
	.quad	0x3ff4fdb1a6d698fe              # double 1.3119369999999999
	.quad	0x3fe24e1a3f4666ed              # double 0.57203400000000004
	.quad	0x4020d29d1f601798              # double 8.4113550000000004
	.quad	0x400483d25247cb71              # double 2.5643660000000001
	.quad	0x3fd28c0053e2d624              # double 0.28979500000000002
	.quad	0x401039118c197e56              # double 4.0557309999999998
	.quad	0x3ff76e514c22ee42              # double 1.4644330000000001
	.quad	0x3ff4a426bb55ac04              # double 1.290076
	.quad	0x40027cf7878b7a1c              # double 2.3110189999999999
	.quad	0x400c681fd9ba1b19              # double 3.5508419999999998
	.quad	0x3fe8c840e1719f80              # double 0.77444500000000005
	.quad	0x40202f09310129cc              # double 8.0918670000000005
	.quad	0x3f8d095af294dd72              # double 0.014178
	.quad	0x401fd9d883ba3444              # double 7.9627400000000002
	.quad	0x40226f70bd017daf              # double 9.2176570000000009
	.quad	0x401a5d2b2bfdb4cc              # double 6.5909849999999999
	.quad	0x401ee0fe47991bc5              # double 7.7197199999999996
	.quad	0x401955b4edb2f662              # double 6.3336980000000001
	.quad	0x4022c325918a009f              # double 9.3811459999999993
	.quad	0x401c047a9e2bcf92              # double 7.0043740000000003
	.quad	0x401b1c6ac215b9a6              # double 6.7777510000000003
	.quad	0x4010b3400b88ca3e              # double 4.1750489999999996
	.quad	0x4002faf20ea5b531              # double 2.3725320000000001
	.quad	0x3fffd0d8cb07d0af              # double 1.988488
	.quad	0x401b8d9988d2a1f9              # double 6.8882810000000001
	.quad	0x401c0abf76a2f48c              # double 7.0104959999999998
	.quad	0x400e93ce63a5c1c6              # double 3.822171
	.quad	0x4002c6b2f23033a4              # double 2.3470209999999998
	.quad	0x3ffef5ff609dcf89              # double 1.9350579999999999
	.quad	0x401e14adbc664d3c              # double 7.520194
	.quad	0x4001d9f01b866e44              # double 2.2314150000000001
	.quad	0x4014f134ce3de615              # double 5.2355530000000003
	.quad	0x401984c51116a8b9              # double 6.3796580000000001
	.quad	0x400c79335d249e45              # double 3.55918
	.quad	0x401a3b1209edbf8c              # double 6.5576860000000003
	.quad	0x3ff414a4d2b2bfdb              # double 1.2550399999999999
	.quad	0x40166ddc6195464e              # double 5.6072860000000002
	.quad	0x400ba5b63d3e4ef0              # double 3.4559139999999999
	.quad	0x400dbf88fc9363f5              # double 3.7185229999999998
	.quad	0x401a30fb224aada3              # double 6.5478329999999998
	.quad	0x40108123c42a66dc              # double 4.1261130000000001
	.quad	0x401455eaee2003ac              # double 5.0839040000000004
	.quad	0x4013c8d5842b734b              # double 4.9461269999999997
	.quad	0x4019147c73eee526              # double 6.2700060000000004
	.quad	0x4017b028e4fb97bb              # double 5.9220309999999996
	.quad	0x401d09b8023a6ce3              # double 7.2594909999999997
	.quad	0x40119372e6a76966              # double 4.393993
	.quad	0x3feca63305100a39              # double 0.89528799999999997
	.quad	0x4010d42a66dbd72c              # double 4.2071930000000002
	.quad	0x3ffb2a22b3892ee8              # double 1.6977869999999999
	.quad	0x401ef4a9cdc44391              # double 7.7389289999999997
	.quad	0x4016029f16b11c6d              # double 5.5025599999999999
	.quad	0x40222a2d948dc11e              # double 9.0823789999999995
	.quad	0x3fdd3d70a3d70a3d              # double 0.45687499999999998
	.quad	0x401740dbf0563ed1              # double 5.813339
	.quad	0x401b53254e6e221d              # double 6.8311970000000004
	.quad	0x400d9adafd113837              # double 3.7006130000000002
	.quad	0x4023b63baba7b917              # double 9.8559239999999999
	.quad	0x40080b1465e89225              # double 3.0054099999999999
	.quad	0x3fe24fce746cb967              # double 0.57224200000000003
	.quad	0x3ff6c6c54bcf0b6b              # double 1.4235279999999999
	.quad	0x40189dddf43c7d5f              # double 6.1541670000000002
	.quad	0x3fb8b9991361dc94              # double 0.096582000000000001
	.quad	0x40207711d798d8a9              # double 8.2325579999999992
	.quad	0x4008b2c061847f56              # double 3.0872809999999999
	.quad	0x4016836c15d2d01c              # double 5.628342
	.quad	0x402281c970f7b9e0              # double 9.2534899999999993
	.quad	0x401c39a5a89b951c              # double 7.0562959999999997
	.quad	0x3fe215831f03d146              # double 0.56512600000000002
	.quad	0x4009e955b4677b39              # double 3.2389329999999998
	.quad	0x4016efcdee34fc61              # double 5.7341839999999999
	.quad	0x3fe7834d26fa3fcd              # double 0.73477800000000004
	.quad	0x4004edfdef8487ba              # double 2.6162070000000002
	.quad	0x4023c0f6273929ed              # double 9.8768779999999996
	.quad	0x40069b0dd82fd75e              # double 2.8257099999999999
	.quad	0x401efba0a5269596              # double 7.74573
	.quad	0x401df5d9e40c8473              # double 7.4900890000000002
	.quad	0x4021e284dfce3151              # double 8.9424200000000003
	.quad	0x401d15fd47bedb73              # double 7.2714740000000004
	.quad	0x3ff894db59578a2b              # double 1.5363420000000001
	.quad	0x401606837f7be122              # double 5.5063610000000001
	.quad	0x4022ad3e0bd44999              # double 9.3383640000000003
	.quad	0x401f51059ea57215              # double 7.829123
	.quad	0x3fe44988094e5d5b              # double 0.63397599999999998
	.quad	0x401f82aed1394318              # double 7.8776200000000002
	.quad	0x3fe66f5caf2d7f95              # double 0.70109399999999999
	.quad	0x4011d3886594af4f              # double 4.456575
	.quad	0x40029b5c7cd898b3              # double 2.32586
	.quad	0x4012f9ce4a7b4e55              # double 4.743951
	.quad	0x4022890342aa9f7b              # double 9.2676029999999994
	.quad	0x401027f993d5347a              # double 4.0390379999999997
	.quad	0x400cea747d805e5f              # double 3.6144799999999999
	.quad	0x40105f7d73c92578              # double 4.0932519999999997
	.quad	0x3ff2d3dea465a576              # double 1.1767259999999999
	.quad	0x400db21dda059a74              # double 3.7119710000000001
	.quad	0x401914bba12b5e53              # double 6.2702470000000003
	.quad	0x40145896dd26b724              # double 5.0865130000000001
	.quad	0x402167cfc3f811f5              # double 8.7027570000000001
	.quad	0x402117ff9b56323c              # double 8.5468720000000004
	.quad	0x40159cc6c54bcf0b              # double 5.4031019999999996
	.quad	0x4014033a8a3f8983              # double 5.0031530000000002
	.quad	0x4003c95bff04577e              # double 2.4733200000000002
	.quad	0x401c9ab0856e696a              # double 7.1510639999999999
	.quad	0x401e2d34df04ddb5              # double 7.5441469999999997
	.quad	0x401741e603d57796              # double 5.8143539999999998
	.quad	0x3fe9fec56d5cfaad              # double 0.81235000000000002
	.quad	0x401fe037d63022dd              # double 7.9689629999999995
	.quad	0x40098dc2b0ea1837              # double 3.1942189999999999
	.size	.L__constant_2500xf64, 20000

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
