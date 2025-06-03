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
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
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
	li	t6, 0
	ld	a6, 424(sp)
	ld	t0, 416(sp)
	ld	t1, 408(sp)
	ld	t2, 400(sp)
	ld	t3, 392(sp)
	ld	t5, 384(sp)
	ld	t4, 376(sp)
	ld	s4, 144(sp)
	ld	s5, 304(sp)
	ld	s6, 224(sp)
	ld	s7, 264(sp)
	csrr	a4, vlenb
	li	s2, 99
	slli	s11, a4, 3
	vsetvli	a1, zero, e32, m4, ta, ma
	vid.v	v4
	li	s3, 800
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
	lwu	a5, 0(a1)
	lwu	s0, 12(a1)
	lwu	a1, 8(a1)
	slli	a3, a3, 32
	or	s9, a3, a5
	slli	s0, s0, 32
	or	s8, s0, a1
	mul	ra, t6, s3
	add	ra, ra, t5
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
	lwu	a5, 0(a3)
	lwu	a3, 4(a3)
	slli	a5, a5, 3
	slli	a3, a3, 35
	or	a3, a3, a5
	add	a3, a3, s6
	lwu	a5, 0(a3)
	lwu	s0, 4(a3)
	lwu	s1, 8(a3)
	lwu	a3, 12(a3)
	add	a1, a1, s4
	fld	fa5, 0(a1)
	slli	s0, s0, 32
	slli	a3, a3, 32
	or	s0, s0, a5
	or	s10, a3, s1
	slli	a3, s0, 3
	add	a5, s5, a3
	add	a3, a3, s7
	sub	a1, s10, s0
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vx	v0, v4, s1
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v8, 0
	vmv.v.i	v24, 0
	vle64.v	v24, (a3), v0.t
	vmv.v.i	v16, 0
	vsll.vi	v24, v24, 3
	vluxei64.v	v16, (ra), v24, v0.t
	vle64.v	v8, (a5), v0.t
	vfmul.vf	v8, v8, fa5
	vfadd.vv	v8, v16, v8
	vsoxei64.v	v8, (ra), v24, v0.t
	add	s0, s0, a4
	add	a3, a3, s11
	add	a5, a5, s11
	sub	a1, a1, a4
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	s0, s10, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	s1, a4
	blt	a4, a1, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	s1, a1
	j	.LBB1_7
.LBB1_11:
	sd	t4, 0(a0)
	sd	t5, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 112
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sparse_sparse_matmul, .Lfunc_end1-sparse_sparse_matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x41434af5087b677f              # double 2528746.0662659998
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
	.quad	5000                            # 0x1388
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	5000                            # 0x1388
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
	lui	a7, %hi(.L__constant_5000xindex)
	addi	a7, a7, %lo(.L__constant_5000xindex)
	lui	t0, %hi(.L__constant_5000xf64)
	addi	t0, t0, %lo(.L__constant_5000xf64)
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
	.quad	63                              # 0x3f
	.quad	103                             # 0x67
	.quad	142                             # 0x8e
	.quad	202                             # 0xca
	.quad	245                             # 0xf5
	.quad	281                             # 0x119
	.quad	344                             # 0x158
	.quad	387                             # 0x183
	.quad	433                             # 0x1b1
	.quad	492                             # 0x1ec
	.quad	545                             # 0x221
	.quad	586                             # 0x24a
	.quad	649                             # 0x289
	.quad	694                             # 0x2b6
	.quad	737                             # 0x2e1
	.quad	793                             # 0x319
	.quad	836                             # 0x344
	.quad	877                             # 0x36d
	.quad	941                             # 0x3ad
	.quad	977                             # 0x3d1
	.quad	1017                            # 0x3f9
	.quad	1078                            # 0x436
	.quad	1118                            # 0x45e
	.quad	1157                            # 0x485
	.quad	1225                            # 0x4c9
	.quad	1268                            # 0x4f4
	.quad	1313                            # 0x521
	.quad	1379                            # 0x563
	.quad	1432                            # 0x598
	.quad	1467                            # 0x5bb
	.quad	1527                            # 0x5f7
	.quad	1568                            # 0x620
	.quad	1616                            # 0x650
	.quad	1677                            # 0x68d
	.quad	1715                            # 0x6b3
	.quad	1768                            # 0x6e8
	.quad	1842                            # 0x732
	.quad	1878                            # 0x756
	.quad	1925                            # 0x785
	.quad	1985                            # 0x7c1
	.quad	2032                            # 0x7f0
	.quad	2069                            # 0x815
	.quad	2124                            # 0x84c
	.quad	2165                            # 0x875
	.quad	2209                            # 0x8a1
	.quad	2274                            # 0x8e2
	.quad	2318                            # 0x90e
	.quad	2359                            # 0x937
	.quad	2419                            # 0x973
	.quad	2465                            # 0x9a1
	.quad	2506                            # 0x9ca
	.quad	2568                            # 0xa08
	.quad	2614                            # 0xa36
	.quad	2658                            # 0xa62
	.quad	2718                            # 0xa9e
	.quad	2755                            # 0xac3
	.quad	2798                            # 0xaee
	.quad	2864                            # 0xb30
	.quad	2906                            # 0xb5a
	.quad	2951                            # 0xb87
	.quad	3011                            # 0xbc3
	.quad	3045                            # 0xbe5
	.quad	3089                            # 0xc11
	.quad	3151                            # 0xc4f
	.quad	3197                            # 0xc7d
	.quad	3235                            # 0xca3
	.quad	3299                            # 0xce3
	.quad	3346                            # 0xd12
	.quad	3384                            # 0xd38
	.quad	3448                            # 0xd78
	.quad	3489                            # 0xda1
	.quad	3534                            # 0xdce
	.quad	3589                            # 0xe05
	.quad	3641                            # 0xe39
	.quad	3682                            # 0xe62
	.quad	3745                            # 0xea1
	.quad	3789                            # 0xecd
	.quad	3841                            # 0xf01
	.quad	3895                            # 0xf37
	.quad	3936                            # 0xf60
	.quad	3988                            # 0xf94
	.quad	4048                            # 0xfd0
	.quad	4093                            # 0xffd
	.quad	4131                            # 0x1023
	.quad	4194                            # 0x1062
	.quad	4242                            # 0x1092
	.quad	4286                            # 0x10be
	.quad	4352                            # 0x1100
	.quad	4393                            # 0x1129
	.quad	4446                            # 0x115e
	.quad	4513                            # 0x11a1
	.quad	4554                            # 0x11ca
	.quad	4600                            # 0x11f8
	.quad	4664                            # 0x1238
	.quad	4716                            # 0x126c
	.quad	4762                            # 0x129a
	.quad	4824                            # 0x12d8
	.quad	4873                            # 0x1309
	.quad	4931                            # 0x1343
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
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
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
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
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
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
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
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
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
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
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
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
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x402020d1526d8b1e              # double 8.0640970000000003
	.quad	0x4019267c6b8b6955              # double 6.2875839999999998
	.quad	0x400501d4306e5cd5              # double 2.625893
	.quad	0x3fc7c6b8b69552e3              # double 0.185752
	.quad	0x40166bab21815a08              # double 5.6051450000000003
	.quad	0x402384545846e8f3              # double 9.7584560000000006
	.quad	0x3fd7df6124074645              # double 0.37300899999999998
	.quad	0x3fdaaf965b20b806              # double 0.41696699999999998
	.quad	0x401253708aac96cc              # double 4.5814839999999997
	.quad	0x40200b6c7a7c9de0              # double 8.0223119999999994
	.quad	0x3ff65352220bc383              # double 1.3953420000000001
	.quad	0x401a0e7b80a9de8b              # double 6.5141429999999998
	.quad	0x402358c79f666235              # double 9.6733980000000006
	.quad	0x4008bce28ed5f139              # double 3.0922290000000001
	.quad	0x401d98f92af9a8ce              # double 7.3993880000000001
	.quad	0x4019e5bfad299956              # double 6.4743639999999996
	.quad	0x4003f54eb13dfb0d              # double 2.4947789999999999
	.quad	0x4020e1018e757929              # double 8.4394650000000002
	.quad	0x40178d07852f7f4a              # double 5.8877240000000004
	.quad	0x400febac710cb296              # double 3.990075
	.quad	0x3fd49df548ecd8dc              # double 0.32214100000000001
	.quad	0x3fb63ad18d25edd0              # double 0.086834999999999995
	.quad	0x3fc46195464dc22b              # double 0.15922800000000001
	.quad	0x3fe084816f0068dc              # double 0.51617500000000005
	.quad	0x401aa95feda66128              # double 6.6654049999999998
	.quad	0x40141685985ad539              # double 5.0219940000000003
	.quad	0x4019a50a88effe2a              # double 6.4111729999999998
	.quad	0x4000bdad7518b0d1              # double 2.092616
	.quad	0x40109ab3edd8b60f              # double 4.1510769999999999
	.quad	0x3fe1ebce8533b107              # double 0.56003499999999995
	.quad	0x3ff198d1526d8b1e              # double 1.099809
	.quad	0x401b3cb923a29c78              # double 6.8093000000000004
	.quad	0x401623f7ced91687              # double 5.5351249999999999
	.quad	0x4020b13122b7baed              # double 8.3460780000000003
	.quad	0x401550852b4d8ba4              # double 5.328633
	.quad	0x401d5329c347e8cd              # double 7.3312140000000001
	.quad	0x4013825b317efe0d              # double 4.8773010000000001
	.quad	0x40210e8ec52a411c              # double 8.5284329999999997
	.quad	0x400234855da27286              # double 2.2756449999999999
	.quad	0x40217b37867f0aa2              # double 8.7406579999999998
	.quad	0x401fec829cfdd228              # double 7.9809669999999997
	.quad	0x3ff1d3ee5eedcc21              # double 1.114241
	.quad	0x40113e414e7ee914              # double 4.3107959999999999
	.quad	0x401a9bb05faebc41              # double 6.6520400000000004
	.quad	0x40208829cfdd2285              # double 8.2659439999999993
	.quad	0x4007c0895d0b73d2              # double 2.9690120000000002
	.quad	0x40118f394b7b2895              # double 4.3898669999999997
	.quad	0x3ff71e15ca6ca03c              # double 1.4448449999999999
	.quad	0x4005118b93469942              # double 2.6335670000000002
	.quad	0x3feb757f737da61e              # double 0.85809299999999999
	.quad	0x4005416a48733659              # double 2.6569410000000002
	.quad	0x4012764cb5bb3850              # double 4.6155270000000002
	.quad	0x4019851b4fe79ee0              # double 6.3799869999999999
	.quad	0x400745e4e69f05ea              # double 2.9091279999999999
	.quad	0x401843dbc23315d7              # double 6.066268
	.quad	0x3ff44e4430b178b3              # double 1.2691079999999999
	.quad	0x400dde81cb46bacf              # double 3.7336459999999998
	.quad	0x4009e0cf9e3864cb              # double 3.2347709999999998
	.quad	0x401559d12cadddf4              # double 5.3377119999999998
	.quad	0x40117431bde82d7b              # double 4.3634709999999997
	.quad	0x3fe495b573eab368              # double 0.64327500000000004
	.quad	0x4017d23bbc6eb0b8              # double 5.9553060000000002
	.quad	0x4015d3886594af4f              # double 5.456575
	.quad	0x3fea973fb7a5f41b              # double 0.83096300000000001
	.quad	0x40135dfa871a3b15              # double 4.8417760000000003
	.quad	0x40218c7eae5bc87e              # double 8.7744040000000005
	.quad	0x3fa1e2de8709741d              # double 0.034934
	.quad	0x3ff60195cc857f30              # double 1.3753869999999999
	.quad	0x401a21327243137b              # double 6.532419
	.quad	0x4022056abde3fbbd              # double 9.0105799999999991
	.quad	0x401c1544fe36d224              # double 7.0207709999999999
	.quad	0x401b046e08f21709              # double 6.7543259999999998
	.quad	0x401228f10a99b6f6              # double 4.5399820000000002
	.quad	0x4000374927913e81              # double 2.0269949999999999
	.quad	0x401a25bff04577d9              # double 6.5368649999999997
	.quad	0x40166f166e008e9b              # double 5.6084839999999998
	.quad	0x40120ff4fd6d7e89              # double 4.5155830000000003
	.quad	0x3ff831d2e0e30447              # double 1.5121640000000001
	.quad	0x40207cd898b2e9cd              # double 8.2438400000000005
	.quad	0x3fd77f2c3009b307              # double 0.36713699999999999
	.quad	0x400dc62fdfc19c17              # double 3.7217709999999999
	.quad	0x401223d1cc100e6b              # double 4.53498
	.quad	0x4006759ab6d00b46              # double 2.8074240000000001
	.quad	0x4014c809d495182b              # double 5.1953500000000004
	.quad	0x4004000da1a93294              # double 2.5000260000000001
	.quad	0x400b05edd052934b              # double 3.3778950000000001
	.quad	0x3fea30dd82fd75e2              # double 0.818465
	.quad	0x401d99029ae4f334              # double 7.3994239999999998
	.quad	0x4000c9424e592967              # double 2.098271
	.quad	0x400ac76d117b5287              # double 3.3473760000000001
	.quad	0x4000fc26dce39b45              # double 2.1231209999999998
	.quad	0x4015e17b95a29414              # double 5.4701979999999999
	.quad	0x40200c1f644955b4              # double 8.0236769999999992
	.quad	0x400dc03686a4ca4f              # double 3.7188539999999999
	.quad	0x4014040b780346dc              # double 5.0039499999999997
	.quad	0x400b426d4801f751              # double 3.407435
	.quad	0x4019bb7a5f41aef7              # double 6.433084
	.quad	0x401402eec7c957cd              # double 5.0028639999999998
	.quad	0x400144534bd76ee7              # double 2.1583619999999999
	.quad	0x4021cfd805e5f30e              # double 8.9059449999999991
	.quad	0x3fe02b430f49491f              # double 0.50528099999999998
	.quad	0x402170539fba450b              # double 8.7193880000000004
	.quad	0x4015abb8c32a8c9c              # double 5.4176970000000004
	.quad	0x3ffc0b32ce89656f              # double 1.752734
	.quad	0x400ca784a9478c87              # double 3.5817960000000002
	.quad	0x4021e10e8858ff76              # double 8.9395640000000007
	.quad	0x3fd1ffa3b9ae0c17              # double 0.28122799999999998
	.quad	0x401e3ee392e1ef74              # double 7.5614150000000002
	.quad	0x400ebba6698bb4d5              # double 3.8416260000000002
	.quad	0x3ff2c83ba3443d47              # double 1.1738850000000001
	.quad	0x3fcae17a02fb5d03              # double 0.210006
	.quad	0x4014cee88df3732a              # double 5.2020590000000002
	.quad	0x3ffeea582dbe7f2c              # double 1.932213
	.quad	0x3ff04b6a619da9ca              # double 1.0184120000000001
	.quad	0x4014cf1dc50ce4eb              # double 5.2022620000000002
	.quad	0x400f923b3636f3b2              # double 3.946402
	.quad	0x3fbb4b2fa93af74d              # double 0.106616
	.quad	0x40239026edaa92e6              # double 9.7815469999999998
	.quad	0x401084fbdad7518b              # double 4.129867
	.quad	0x4018be47dc37a3db              # double 6.1858209999999998
	.quad	0x40126377e1b8ed1c              # double 4.597137
	.quad	0x4023b98a009f6230              # double 9.8623809999999992
	.quad	0x401d11322f2734f8              # double 7.2667929999999998
	.quad	0x40155c5eb313be23              # double 5.3402050000000001
	.quad	0x4006434a87e38eb0              # double 2.7828569999999999
	.quad	0x40205b67e414e7ef              # double 8.1785270000000008
	.quad	0x40169e78e1932d6f              # double 5.6547580000000002
	.quad	0x4021e75e6362a5e8              # double 8.9518920000000008
	.quad	0x3ff99be8ff327aa7              # double 1.6005640000000001
	.quad	0x3fff1c15097c8084              # double 1.944356
	.quad	0x402166b313be22e6              # double 8.7005850000000002
	.quad	0x3fd2d4d4024b33db              # double 0.29424
	.quad	0x3fb9d8d79d0a6762              # double 0.100965
	.quad	0x402375ae81882adc              # double 9.7298469999999994
	.quad	0x4022590364388ebd              # double 9.1738540000000004
	.quad	0x4021b9b25f633ce6              # double 8.8626889999999996
	.quad	0x40206569b17481b2              # double 8.1980719999999998
	.quad	0x40129d21ff2e48e9              # double 4.6534500000000003
	.quad	0x401e43e24febd09e              # double 7.5662929999999999
	.quad	0x401e525b749adc90              # double 7.5804270000000002
	.quad	0x401dcf3d7d3910c3              # double 7.4523830000000002
	.quad	0x402366e136e71cda              # double 9.7009369999999997
	.quad	0x4007f82c2bd7f51f              # double 2.996178
	.quad	0x400001beb18116ec              # double 2.0008520000000001
	.quad	0x401e2ef0281ba7fc              # double 7.5458379999999998
	.quad	0x4021abcc2938de6e              # double 8.8355420000000002
	.quad	0x40202c63497b7415              # double 8.0866950000000006
	.quad	0x4017624febd09e13              # double 5.8460080000000003
	.quad	0x3fd747c73eee5259              # double 0.36375600000000002
	.quad	0x4002185f06f69446              # double 2.2618999999999998
	.quad	0x400d7cef240fa9c1              # double 3.6860029999999999
	.quad	0x401b4384fd2a62aa              # double 6.8159369999999999
	.quad	0x3fe804662bae03b4              # double 0.750537
	.quad	0x401c7709b738e6d1              # double 7.1162479999999997
	.quad	0x40238e9ced0b30b6              # double 9.7785410000000006
	.quad	0x40204aea3161a1dc              # double 8.1463180000000008
	.quad	0x3ff0c02d16b97fe9              # double 1.046918
	.quad	0x401d9800218def41              # double 7.3984379999999996
	.quad	0x4012d1715c63ae25              # double 4.7045339999999998
	.quad	0x400d66a3bddfca00              # double 3.6751170000000002
	.quad	0x401f6ea140570825              # double 7.8580370000000003
	.quad	0x3fd2302f72b45283              # double 0.28419100000000003
	.quad	0x401247570c564f98              # double 4.5696680000000001
	.quad	0x3ff318ec95bff045              # double 1.1935849999999999
	.quad	0x3fc383e8576cce5f              # double 0.15246299999999999
	.quad	0x3fe0e0dcb9a9da59              # double 0.52744899999999995
	.quad	0x401e759b3d07c84b              # double 7.6148499999999996
	.quad	0x4006b3b96af038e3              # double 2.8377560000000002
	.quad	0x401a6064a9cdc444              # double 6.5941340000000004
	.quad	0x4021851569f49060              # double 8.7599289999999996
	.quad	0x40193691212513b6              # double 6.3032880000000002
	.quad	0x400190f49491f2dc              # double 2.1957789999999999
	.quad	0x40121ab191dde376              # double 4.5260680000000004
	.quad	0x400b7cb252ce032e              # double 3.4358870000000001
	.quad	0x400fdd3aa369fcf4              # double 3.9830220000000001
	.quad	0x4003f9ed7c6fbd27              # double 2.4970349999999999
	.quad	0x4021c47b45f17bd9              # double 8.8837530000000005
	.quad	0x40197ee807bbb624              # double 6.3739319999999999
	.quad	0x401cd34091c08744              # double 7.2063009999999998
	.quad	0x4021ea276b7ed41b              # double 8.9573319999999992
	.quad	0x40093d9dba908a26              # double 3.1550859999999998
	.quad	0x4022ac0789613d32              # double 9.3359950000000005
	.quad	0x400a7c7c5260f5e4              # double 3.3107839999999999
	.quad	0x40215368ad688377              # double 8.6629079999999998
	.quad	0x3fc80ec743201041              # double 0.18795100000000001
	.quad	0x401ce51efb6dca08              # double 7.223751
	.quad	0x4014c8d045fe1112              # double 5.1961069999999996
	.quad	0x40022ec52a411c2a              # double 2.272837
	.quad	0x40172988094e5d5b              # double 5.7905579999999999
	.quad	0x401d12bba98eda23              # double 7.268294
	.quad	0x4023b9fe43675ddd              # double 9.8632679999999997
	.quad	0x401441f5be5d9e41              # double 5.0644140000000002
	.quad	0x4016ed0d49949e88              # double 5.7314959999999999
	.quad	0x401c4e73a365cb36              # double 7.076613
	.quad	0x4013ad16fc9bc771              # double 4.9190329999999998
	.quad	0x40171e89656eefa2              # double 5.7798210000000001
	.quad	0x3ffe8a116659d12d              # double 1.9087080000000001
	.quad	0x4006ec069e7fb268              # double 2.8652470000000001
	.quad	0x4010acb70ac3a861              # double 4.1686670000000001
	.quad	0x40120aeb3dd11be7              # double 4.5106630000000001
	.quad	0x4010a33a8a3f8983              # double 4.1594030000000002
	.quad	0x401baf6124074645              # double 6.9212689999999997
	.quad	0x40154b399f5dfeb9              # double 5.3234620000000001
	.quad	0x401d9a4c1ebc83a9              # double 7.4006809999999996
	.quad	0x4012e4ad794a6eb9              # double 4.7233179999999999
	.quad	0x3fe6444178705426              # double 0.69583200000000001
	.quad	0x40239a6d698fe692              # double 9.8016159999999992
	.quad	0x401a689118c197e5              # double 6.6021159999999997
	.quad	0x400dedb8348f53c5              # double 3.7410739999999998
	.quad	0x401b14c7f3493858              # double 6.7702939999999998
	.quad	0x4023c7253da72a7c              # double 9.8889560000000003
	.quad	0x3ff3787bdcf0307f              # double 1.216915
	.quad	0x4021050d0678c005              # double 8.5098649999999996
	.quad	0x4010f4e6e221c8a8              # double 4.2391620000000003
	.quad	0x401d1202d9cf13cf              # double 7.2675890000000001
	.quad	0x400e98f9b13165d4              # double 3.8246950000000002
	.quad	0x401f91ad2135daad              # double 7.8922619999999996
	.quad	0x40161f840181e03f              # double 5.5307769999999996
	.quad	0x401226bacf7446fa              # double 4.5378220000000002
	.quad	0x4014fa2c669057d1              # double 5.2443099999999996
	.quad	0x400d2c6822ff0889              # double 3.6466829999999999
	.quad	0x40106793dd97f62b              # double 4.1011499999999996
	.quad	0x400922adc4c9c90c              # double 3.1419329999999999
	.quad	0x400d67d34df04ddb              # double 3.6756959999999999
	.quad	0x40180ce91c8eac00              # double 6.0126080000000002
	.quad	0x40081c6088d6d3b7              # double 3.0138560000000001
	.quad	0x401b67481b21c476              # double 6.8508610000000001
	.quad	0x3fbfd31b9b66f933              # double 0.12431499999999999
	.quad	0x40123b3d8e000863              # double 4.5578519999999996
	.quad	0x401b676a7264a16a              # double 6.8509919999999997
	.quad	0x4022698bf7f06706              # double 9.2061460000000004
	.quad	0x4021269f2778140e              # double 8.5754330000000003
	.quad	0x3fdda57eaa2a0a96              # double 0.46322600000000003
	.quad	0x4013c03fb3743633              # double 4.9377430000000002
	.quad	0x401ed7a8d64d7f0f              # double 7.7106050000000001
	.quad	0x3fe9e7ec7863beec              # double 0.80956099999999997
	.quad	0x4009cecbfb15b574              # double 3.225975
	.quad	0x4023895cc857f306              # double 9.7682859999999998
	.quad	0x402171ed7c6fbd27              # double 8.7225149999999996
	.quad	0x401718d8a979e16d              # double 5.7742639999999996
	.quad	0x3fe4996312f4cf4a              # double 0.64372399999999996
	.quad	0x3ff35e34330d7386              # double 1.210499
	.quad	0x401957b352a84381              # double 6.3356450000000004
	.quad	0x401600214ad362e9              # double 5.500127
	.quad	0x401f1d1b71758e22              # double 7.7784250000000004
	.quad	0x4018a0346dc5d639              # double 6.1564500000000004
	.quad	0x401abcfede97d06c              # double 6.6845660000000002
	.quad	0x40134f840181e03f              # double 4.8276519999999996
	.quad	0x40224f59ee88df37              # double 9.1549829999999996
	.quad	0x402106c80c73abc9              # double 8.5132449999999995
	.quad	0x40133fb5d031055c              # double 4.8122170000000004
	.quad	0x40172c0096feb4a6              # double 5.7929709999999996
	.quad	0x4021acffa7eb6bf4              # double 8.8378879999999995
	.quad	0x401211a005c4651f              # double 4.5172119999999998
	.quad	0x3fecba92a3055326              # double 0.89777499999999999
	.quad	0x40132c154c985f07              # double 4.79305
	.quad	0x3f96013660e51d26              # double 0.021489000000000001
	.quad	0x402028f041461b6d              # double 8.0799579999999995
	.quad	0x400c5e2bcf91a32b              # double 3.545982
	.quad	0x40226aaae297396d              # double 9.2083349999999999
	.quad	0x4021ce2b8c75c4a8              # double 8.9026759999999996
	.quad	0x3ff27906466b1e5c              # double 1.154547
	.quad	0x40219785f8d2e515              # double 8.7959440000000004
	.quad	0x4010c2aa9f7b5aea              # double 4.1901039999999998
	.quad	0x4023965fb71fbc5e              # double 9.7936990000000002
	.quad	0x4013c32d6ece13f5              # double 4.9406030000000003
	.quad	0x3ff89b9b66f9335d              # double 1.53799
	.quad	0x401f560f5e41d4b7              # double 7.8340430000000003
	.quad	0x4017664e8b7e4de4              # double 5.8499090000000002
	.quad	0x4020ccb039ef0f17              # double 8.3997820000000001
	.quad	0x40208368f08461fa              # double 8.2566600000000001
	.quad	0x3fe0a0791c4b9021              # double 0.51958899999999997
	.quad	0x3fcba43fe5c91d15              # double 0.21595
	.quad	0x402082478854cdb8              # double 8.2544520000000006
	.quad	0x3ffe721e603d5779              # double 1.9028609999999999
	.quad	0x4022ecad9ad85dfb              # double 9.4622620000000008
	.quad	0x4015a5c422036007              # double 5.4118810000000002
	.quad	0x401c9c3ce2089e34              # double 7.1525759999999998
	.quad	0x3fd74e5929670197              # double 0.36415700000000001
	.quad	0x40211dbbbe878fac              # double 8.5580730000000002
	.quad	0x4009bf1b69121251              # double 3.2183139999999999
	.quad	0x4021aba860dcb9aa              # double 8.8352690000000003
	.quad	0x3fee520296b3354c              # double 0.94751099999999999
	.quad	0x4023253c792d1288              # double 9.5727270000000004
	.quad	0x4015bdde37585be2              # double 5.4354180000000003
	.quad	0x3ffeb89e774eebf6              # double 1.9200729999999999
	.quad	0x40177d362e903644              # double 5.8722770000000004
	.quad	0x40097ebaf102363b              # double 3.1868799999999999
	.quad	0x4023be45803cd142              # double 9.8716240000000006
	.quad	0x401097d955714b9d              # double 4.1482900000000003
	.quad	0x3ff01f57b41bfbdf              # double 1.007652
	.quad	0x4018846a5d6bebe1              # double 6.1293119999999996
	.quad	0x3fffc259e1f3a57f              # double 1.9849490000000001
	.quad	0x401394384ba0e842              # double 4.8947459999999996
	.quad	0x4019087fcb923a2a              # double 6.2583000000000002
	.quad	0x3ff1461f9f01b867              # double 1.07962
	.quad	0x401c380d3cff64d0              # double 7.0547380000000004
	.quad	0x401d4f9a49c2c1b1              # double 7.3277369999999999
	.quad	0x4014ecb35f3d7d39              # double 5.2311529999999999
	.quad	0x3ffa3fab10ba6267              # double 1.640544
	.quad	0x401dbf6c69b5a640              # double 7.4369370000000004
	.quad	0x3fed270b06c43f60              # double 0.91101600000000004
	.quad	0x40118e1049235f81              # double 4.3887340000000004
	.quad	0x401ad37154003255              # double 6.7064870000000001
	.quad	0x400d3e18efbb0e5e              # double 3.6553209999999998
	.quad	0x400f5542a23bff8b              # double 3.9166310000000002
	.quad	0x4013c0e736049ecb              # double 4.9383819999999998
	.quad	0x400eaf35e310dbf0              # double 3.8355519999999999
	.quad	0x40158c40d0aaa7df              # double 5.3869660000000001
	.quad	0x40111c3e3193f6c2              # double 4.2775809999999996
	.quad	0x400a9b46fdeb52ca              # double 3.3258190000000001
	.quad	0x402163882278d0cc              # double 8.6943979999999996
	.quad	0x4018994af4f0d845              # double 6.1497000000000002
	.quad	0x401fe9f77292c493              # double 7.9784829999999997
	.quad	0x3ff5857afea3df6e              # double 1.3450880000000001
	.quad	0x400739210385c67e              # double 2.902895
	.quad	0x4000175e2046c765              # double 2.0114100000000001
	.quad	0x40181c1871e6cd29              # double 6.0274369999999999
	.quad	0x401bbb256ffc115e              # double 6.93276
	.quad	0x4023ca16616b54e3              # double 9.8947020000000005
	.quad	0x401cc103c8e25c81              # double 7.188491
	.quad	0x401ec443914f483d              # double 7.6916640000000002
	.quad	0x401e12f01754b05b              # double 7.5184939999999995
	.quad	0x40029340d4dc65c7              # double 2.321901
	.quad	0x402106bb1290257d              # double 8.5131460000000008
	.quad	0x400b70ea18372e6a              # double 3.4301339999999998
	.quad	0x3fed5c5931ca7d67              # double 0.91752299999999998
	.quad	0x40157043e5321e60              # double 5.3596339999999998
	.quad	0x4022a92f901083dc              # double 9.3304410000000004
	.quad	0x401dfddd6e04c059              # double 7.4979149999999998
	.quad	0x4013d61fe21d96ea              # double 4.9591060000000002
	.quad	0x3fd4ba7b9170d62c              # double 0.323882
	.quad	0x40227a0e410b630b              # double 9.2383900000000008
	.quad	0x4016ad14e3bcd35b              # double 5.6690250000000004
	.quad	0x3ff5685b9e8c47a1              # double 1.3379779999999999
	.quad	0x4022822bbecaab8a              # double 9.2542399999999994
	.quad	0x3feef1fff79c8430              # double 0.96704100000000004
	.quad	0x401b5f78359bc340              # double 6.8432320000000004
	.quad	0x401d247baa9b499d              # double 7.285628
	.quad	0x40024ec52a411c2a              # double 2.288462
	.quad	0x4019da8049667b5f              # double 6.4633799999999999
	.quad	0x40169d5347a5b0ff              # double 5.6536379999999999
	.quad	0x40138de82d7b634e              # double 4.8885810000000003
	.quad	0x4021263d3e4ef028              # double 8.5746859999999998
	.quad	0x40128b2031ceaf25              # double 4.6358649999999999
	.quad	0x4022a4b4289118c2              # double 9.3216870000000007
	.quad	0x3ffd37f7be121ee6              # double 1.8261639999999999
	.quad	0x3ff776ab5807fed2              # double 1.466472
	.quad	0x3ff1b40d4dc65c70              # double 1.1064579999999999
	.quad	0x40052b2a6b0d9514              # double 2.646077
	.quad	0x40027c69f8c21e1d              # double 2.3107489999999999
	.quad	0x4021adb8561d4307              # double 8.8392970000000002
	.quad	0x4008bbc98a222d51              # double 3.0916929999999998
	.quad	0x3ffcae84ad794a6f              # double 1.7926070000000001
	.quad	0x401de3bc0a06e9ff              # double 7.472397
	.quad	0x4009f651b0ccbc06              # double 3.2452730000000001
	.quad	0x400e71f255f3519c              # double 3.8056380000000001
	.quad	0x40121b10fd7e4580              # double 4.5264319999999998
	.quad	0x401aea1ad6451b93              # double 6.728618
	.quad	0x401dff3e0370cdc8              # double 7.4992599999999995
	.quad	0x401a39774256bca5              # double 6.5561189999999998
	.quad	0x400cf4751ce28ed6              # double 3.619364
	.quad	0x4020e409e55c0fcb              # double 8.4453879999999995
	.quad	0x4001f63fdd65a145              # double 2.2452390000000002
	.quad	0x3fe9860bb2bba98f              # double 0.79761300000000002
	.quad	0x3ff7d68a50507a6c              # double 1.489878
	.quad	0x40215e696a26e547              # double 8.6843979999999998
	.quad	0x40176f49cf56eac8              # double 5.8586799999999997
	.quad	0x40147c0c1fc8f323              # double 5.1211399999999996
	.quad	0x4018efd2630ec311              # double 6.2342009999999997
	.quad	0x40131734f82f5126              # double 4.7726629999999997
	.quad	0x402089af9ebe9c88              # double 8.2689179999999993
	.quad	0x40104da122fad6cb              # double 4.0758099999999997
	.quad	0x3fa9c5e6ff7dfa01              # double 0.050338000000000001
	.quad	0x4011afa3b9ae0c17              # double 4.4215229999999996
	.quad	0x4023513be22e5de1              # double 9.6586599999999993
	.quad	0x4022cae8e1d6494d              # double 9.3963079999999994
	.quad	0x40035807789a4591              # double 2.417983
	.quad	0x4020ca3a8e71476b              # double 8.3949780000000001
	.quad	0x401851c9b4139863              # double 6.0798709999999998
	.quad	0x4023b1016ce789e7              # double 9.8457139999999991
	.quad	0x40217f31b152f3c3              # double 8.7484260000000003
	.quad	0x3fff7548ecd8dbcf              # double 1.966134
	.quad	0x40207287a072d1af              # double 8.2236910000000005
	.quad	0x3ff1c1e9af5ba2be              # double 1.109842
	.quad	0x400700b2c83ec893              # double 2.8753410000000001
	.quad	0x3ff492e946801712              # double 1.2858670000000001
	.quad	0x401374c3c18b502b              # double 4.8640280000000002
	.quad	0x3ff603393ab430f5              # double 1.3757870000000001
	.quad	0x3ff62600b0292817              # double 1.3842779999999999
	.quad	0x4022a06c00da1a93              # double 9.3133239999999997
	.quad	0x40055cd4ed2cbea5              # double 2.670328
	.quad	0x4016ec55432873bd              # double 5.7307940000000004
	.quad	0x4011c9ffd60e94ee              # double 4.4472649999999998
	.quad	0x4008e15b9a5a89b9              # double 3.1100379999999999
	.quad	0x40132e0ef99806f2              # double 4.7949789999999997
	.quad	0x4022f78e3ac0c62e              # double 9.4835069999999995
	.quad	0x400f3931ca7d6734              # double 3.902927
	.quad	0x400144b44a1f0803              # double 2.158547
	.quad	0x3ffb344c37e6f71a              # double 1.7002679999999999
	.quad	0x401b55f4a1272c95              # double 6.8339410000000003
	.quad	0x3f87718655193709              # double 0.011447000000000001
	.quad	0x4022e21a719b4dcf              # double 9.4416080000000004
	.quad	0x400acbb7f9d6f113              # double 3.349472
	.quad	0x40122564b662fdfc              # double 4.5365169999999999
	.quad	0x4015e1b823c85c25              # double 5.4704290000000002
	.quad	0x40006b68cef672b9              # double 2.0524460000000002
	.quad	0x400c5ab649d388a9              # double 3.5442930000000001
	.quad	0x400ea1b003686a4d              # double 3.8289490000000002
	.quad	0x4022ec0b9991361e              # double 9.4610260000000004
	.quad	0x401328b545c78a6e              # double 4.7897540000000003
	.quad	0x4022cff3f0fe047d              # double 9.4061579999999995
	.quad	0x400fbc5b4aa9717e              # double 3.966971
	.quad	0x400090ecb74ddf87              # double 2.070764
	.quad	0x401583083558a761              # double 5.377961
	.quad	0x4023b8c1333b96af              # double 9.8608489999999999
	.quad	0x40106a554b8bef8d              # double 4.1038410000000001
	.quad	0x401efac3a860dcba              # double 7.7448870000000003
	.quad	0x401885714b9cb685              # double 6.1303150000000004
	.quad	0x402259c90c4dec1c              # double 9.1753619999999997
	.quad	0x3ffefca643cc07ab              # double 1.936682
	.quad	0x401d877e1b8ed1bf              # double 7.3823169999999996
	.quad	0x4017e083126e978d              # double 5.9692499999999997
	.quad	0x4018c25f202107b8              # double 6.1898160000000004
	.quad	0x400152f123c42a67              # double 2.1654990000000001
	.quad	0x3fd82788db0574b4              # double 0.377413
	.quad	0x401e2e9c0229a5ec              # double 7.5455170000000003
	.quad	0x3ff0cda7f3cf7015              # double 1.0502089999999999
	.quad	0x4004f694467381d8              # double 2.6204000000000001
	.quad	0x3fd4454de7ea5f85              # double 0.31673000000000001
	.quad	0x4004f6fa82e87d2c              # double 2.6205949999999998
	.quad	0x4003110a99b6f5cb              # double 2.383321
	.quad	0x40235934267839ce              # double 9.6742260000000009
	.quad	0x4011bc985f06f694              # double 4.4341749999999998
	.quad	0x4018aeb8950763a2              # double 6.1706260000000004
	.quad	0x401a05aa2e3c536d              # double 6.5055319999999996
	.quad	0x4015022749f0e4da              # double 5.252103
	.quad	0x401dc82d38476f2a              # double 7.4454849999999997
	.quad	0x3fffedf505d0fa59              # double 1.995595
	.quad	0x4013914fce746cb9              # double 4.8919059999999996
	.quad	0x3ff849e98dcdb37d              # double 1.5180450000000001
	.quad	0x400abde6149c6f37              # double 3.342724
	.quad	0x401221f255f3519c              # double 4.5331510000000002
	.quad	0x4014eed45e9185cf              # double 5.2332320000000001
	.quad	0x4000dd91ab8e8ea4              # double 2.1081880000000002
	.quad	0x4014db4e54f7a919              # double 5.2141659999999996
	.quad	0x40089182a9930be1              # double 3.0710500000000001
	.quad	0x4019242a23bff8a9              # double 6.285317
	.quad	0x4020f5019f3c70ca              # double 8.4785280000000007
	.quad	0x401bd5857afea3df              # double 6.9585169999999996
	.quad	0x3f96b6177ea1c68f              # double 0.022179000000000001
	.quad	0x4018228134480629              # double 6.0336959999999999
	.quad	0x40164b0b7c3504c5              # double 5.5732860000000004
	.quad	0x40136bebe1650a46              # double 4.8553920000000002
	.quad	0x402137e45803cd14              # double 8.6091639999999998
	.quad	0x4023ea85caafbc1b              # double 9.9580520000000003
	.quad	0x40110b24638c9753              # double 4.2608810000000004
	.quad	0x40221cfb97bb7308              # double 9.0566069999999996
	.quad	0x401feb1fab96f21f              # double 7.9796129999999996
	.quad	0x4003b33e35c5b4ab              # double 2.4625210000000002
	.quad	0x40126afff36ac647              # double 4.6044919999999996
	.quad	0x4023a12af9a8cdea              # double 9.814781
	.quad	0x401c237f7be121ee              # double 7.0346659999999996
	.quad	0x401b15fc7e6b3fea              # double 6.771471
	.quad	0x4019b5814940bbb2              # double 6.427251
	.quad	0x400afdff3f0fe048              # double 3.3740220000000001
	.quad	0x3fcaf0bf1a5ca298              # double 0.21047199999999999
	.quad	0x4003067381d7dbf5              # double 2.3781500000000002
	.quad	0x3ff83503b81b64e0              # double 1.5129429999999999
	.quad	0x401504463065f959              # double 5.2541739999999999
	.quad	0x401ce3cf70153bd1              # double 7.2224709999999996
	.quad	0x3ff83afea3df6db9              # double 1.5144029999999999
	.quad	0x40027b36bd2b6f1a              # double 2.3101630000000002
	.quad	0x400e9362e9036439              # double 3.8219660000000002
	.quad	0x4017507d912556d2              # double 5.8286040000000003
	.quad	0x401bf699c7bcc294              # double 6.9908210000000004
	.quad	0x401c977ff151e753              # double 7.1479489999999997
	.quad	0x3fa204d12018a43c              # double 0.035193000000000002
	.quad	0x401e5ac3a860dcba              # double 7.5886370000000003
	.quad	0x401e601d9f4d37c1              # double 7.5938629999999998
	.quad	0x4022d5590c0ad03e              # double 9.4166950000000007
	.quad	0x4011e06466b1e5c1              # double 4.4691330000000002
	.quad	0x401b9cdb37c99ae9              # double 6.9031799999999999
	.quad	0x40112868fd199bb2              # double 4.2894629999999996
	.quad	0x4012bce5710880d8              # double 4.684469
	.quad	0x401fb9b738e6d15b              # double 7.9313630000000001
	.quad	0x401935d8d79d0a67              # double 6.3025849999999997
	.quad	0x4015e0f3cb3e5754              # double 5.4696800000000003
	.quad	0x401d6e279dd3bafe              # double 7.3575730000000004
	.quad	0x400281fa76534374              # double 2.313466
	.quad	0x402243003686a4ca              # double 9.1308609999999994
	.quad	0x400f8450acc0bdcb              # double 3.9396070000000001
	.quad	0x4003365907d91255              # double 2.4015369999999998
	.quad	0x3ff5b890d5a5b963              # double 1.3575600000000001
	.quad	0x40208dffa3b9ae0c              # double 8.2773409999999998
	.quad	0x4021f73bea91d9b2              # double 8.9828790000000005
	.quad	0x400b3041cc532a49              # double 3.3985629999999998
	.quad	0x400ef1f57b41bfbe              # double 3.868144
	.quad	0x400f757e670e2c13              # double 3.9323700000000001
	.quad	0x4023cce89656eefa              # double 9.9002119999999998
	.quad	0x3ffbabe48a58b3f6              # double 1.7294659999999999
	.quad	0x401241e0c5a8155d              # double 4.5643339999999997
	.quad	0x4002f3c925785f8d              # double 2.3690359999999999
	.quad	0x401ae789613d31ba              # double 6.7261100000000003
	.quad	0x400085a682b62846              # double 2.0652590000000002
	.quad	0x40234604c0592104              # double 9.6367550000000008
	.quad	0x3facf56eac860568              # double 0.056559999999999999
	.quad	0x40117cfe9b7bf1e9              # double 4.3720650000000001
	.quad	0x401a61450efdc9c5              # double 6.5949900000000001
	.quad	0x3ff75f69878316a0              # double 1.4607939999999999
	.quad	0x4023c55000c9539c              # double 9.8853760000000008
	.quad	0x4017a64628027d89              # double 5.9123770000000002
	.quad	0x40192e2da554b8bf              # double 6.295096
	.quad	0x40223a3400b88ca4              # double 9.1136780000000001
	.quad	0x3ffdf952d234eb9a              # double 1.87337
	.quad	0x4019c9fa54c55433              # double 6.4472440000000004
	.quad	0x401667bedb7281fe              # double 5.6013140000000003
	.quad	0x4020fb8c32a8c9b8              # double 8.4913039999999995
	.quad	0x3fed1f77292c4934              # double 0.91009099999999998
	.quad	0x40205d944aa53fc0              # double 8.1827719999999999
	.quad	0x4011d9ed7c6fbd27              # double 4.4628199999999998
	.quad	0x3fefe961c36976bc              # double 0.99723899999999998
	.quad	0x401509c7368ad688              # double 5.2595489999999998
	.quad	0x4020e0ded288ce70              # double 8.4391999999999996
	.quad	0x400c8708ede54b49              # double 3.5659350000000001
	.quad	0x40106f01b866e43b              # double 4.1084050000000003
	.quad	0x401c5b074a771c97              # double 7.0888949999999999
	.quad	0x40218c5176145953              # double 8.7740589999999994
	.quad	0x4003370c564f97ee              # double 2.4018790000000001
	.quad	0x3ff5bd82773e24ff              # double 1.3587670000000001
	.quad	0x3ff6798e97071822              # double 1.404677
	.quad	0x40236dcd4ed2cbea              # double 9.7144569999999995
	.quad	0x40215d36501e2585              # double 8.6820550000000001
	.quad	0x3fc2e019b0ab2e17              # double 0.14746400000000001
	.quad	0x3feca3a4b5568e82              # double 0.89497599999999999
	.quad	0x401a4e7fb267c6b9              # double 6.5766590000000003
	.quad	0x3ff62ec7c957cd46              # double 1.3864209999999999
	.quad	0x4017c44998d045fe              # double 5.9416869999999999
	.quad	0x3ffc0b1572580c31              # double 1.7527060000000001
	.quad	0x401d7c74b838c112              # double 7.3715390000000003
	.quad	0x402081378ee28672              # double 8.2523769999999992
	.quad	0x40206cb9ecf63800              # double 8.2123559999999998
	.quad	0x4023a7fbacb42891              # double 9.8280919999999998
	.quad	0x40176920c069e7fb              # double 5.8526639999999999
	.quad	0x4021ba369fcf3dc0              # double 8.8636979999999994
	.quad	0x4023d5fbd6a593a3              # double 9.9179370000000002
	.quad	0x4020465ecc3e3194              # double 8.137442
	.quad	0x401f584944ed6fdb              # double 7.8362170000000004
	.quad	0x401924f0d844d014              # double 6.2860750000000003
	.quad	0x4018550a88effe2a              # double 6.0830479999999998
	.quad	0x401368cda6e75ff6              # double 4.852347
	.quad	0x400eb22a6f3f52fc              # double 3.8369949999999999
	.quad	0x400fa268900c521e              # double 3.9543010000000001
	.quad	0x4016b7ed84d338f8              # double 5.6796170000000004
	.quad	0x4012839713ad5bee              # double 4.6285059999999998
	.quad	0x400956861e92923e              # double 3.1672479999999998
	.quad	0x40220c18f81e8a2f              # double 9.0236280000000004
	.quad	0x4011a323bbc6eb0b              # double 4.4093159999999996
	.quad	0x4021c169e3c96894              # double 8.8777609999999995
	.quad	0x3ff2976cce5f7404              # double 1.161969
	.quad	0x40089be76c8b4396              # double 3.0761250000000002
	.quad	0x401c6e2a80064a9d              # double 7.1075840000000001
	.quad	0x40037742dcf4623d              # double 2.433233
	.quad	0x401cbb5fa22706d5              # double 7.182982
	.quad	0x40141362e9036439              # double 5.0189320000000004
	.quad	0x40228806290eed03              # double 9.2656720000000004
	.quad	0x4023574f722e1ac5              # double 9.6705279999999991
	.quad	0x3ffa6ed6777079e6              # double 1.6520600000000001
	.quad	0x4003aac322291fb4              # double 2.45838
	.quad	0x401dce41919ac797              # double 7.451422
	.quad	0x401743c4b09e98dd              # double 5.8161800000000001
	.quad	0x40026c710cb295ea              # double 2.3029500000000001
	.quad	0x4004c35d67ba237d              # double 2.5953930000000001
	.quad	0x40221e3f359ff4fd              # double 9.0590759999999992
	.quad	0x3ffa2de33269df98              # double 1.6362030000000001
	.quad	0x3fbfb04ee7c49fd8              # double 0.12378400000000001
	.quad	0x40217acd39da1661              # double 8.7398469999999993
	.quad	0x40231f2734f82f51              # double 9.5608459999999997
	.quad	0x400328deb0fadf2f              # double 2.3949560000000001
	.quad	0x40238f0b28522ea1              # double 9.779382
	.quad	0x3fb0f7878b7a1c26              # double 0.066277000000000003
	.quad	0x401dda48301a79ff              # double 7.4631660000000002
	.quad	0x400f1143bf727137              # double 3.8834300000000002
	.quad	0x401eb3b645a1cac1              # double 7.6755000000000004
	.quad	0x40216012be48a58b              # double 8.6876429999999996
	.quad	0x402114230fcf80dc              # double 8.5393299999999996
	.quad	0x4018159af9ebe9c9              # double 6.0210990000000004
	.quad	0x4019a3f316e37154              # double 6.410107
	.quad	0x400930060780fdc1              # double 3.1484489999999998
	.quad	0x3ff606a2b1704ff4              # double 1.37662
	.quad	0x40221961804d9839              # double 9.0495719999999995
	.quad	0x40212e69f05ea24d              # double 8.5906520000000004
	.quad	0x4016b8f36694898f              # double 5.6806159999999997
	.quad	0x4002939a7c17a893              # double 2.3220719999999999
	.quad	0x401548e2e2b8c75c              # double 5.3211779999999997
	.quad	0x401fe93faf42784b              # double 7.9777820000000003
	.quad	0x40213393682730c6              # double 8.6007339999999992
	.quad	0x3fd7f92af9a8cdea              # double 0.374583
	.quad	0x4012a1c3ac929aa2              # double 4.6579730000000001
	.quad	0x3ff72d05f2884838              # double 1.4484919999999999
	.quad	0x40120c6d612c6ac2              # double 4.5121359999999999
	.quad	0x401ee89b951c5c57              # double 7.7271559999999999
	.quad	0x3fd26494d50ebaae              # double 0.28738900000000001
	.quad	0x3fb3588e368f0846              # double 0.075569999999999998
	.quad	0x4021c5d91ab8e8ea              # double 8.8864219999999996
	.quad	0x40008aa4b9884c6a              # double 2.0676969999999999
	.quad	0x40160c0053e2d624              # double 5.5117200000000004
	.quad	0x401844588a04d120              # double 6.0667439999999999
	.quad	0x3fe4ecce5f7403de              # double 0.65390700000000002
	.quad	0x400fd8a009f62307              # double 3.9807739999999998
	.quad	0x4008fff47735c183              # double 3.124978
	.quad	0x401c76d22424a277              # double 7.1160360000000003
	.quad	0x4023d80b02928177              # double 9.9219589999999993
	.quad	0x3fe429ef5232d2bb              # double 0.63011899999999998
	.quad	0x3fe81e81cb46bacf              # double 0.75372399999999995
	.quad	0x3ff6387ad080b674              # double 1.3887890000000001
	.quad	0x402371e40c8472c1              # double 9.7224430000000001
	.quad	0x3fe6da5daf07bfe8              # double 0.71415600000000001
	.quad	0x4015069270b06c44              # double 5.256418
	.quad	0x400052ddbdb5d895              # double 2.0404620000000002
	.quad	0x400130ba6266fd65              # double 2.148793
	.quad	0x401c587e7c06e19c              # double 7.0864200000000004
	.quad	0x401d1e3821af7d31              # double 7.2795110000000003
	.quad	0x402138e6afcce1c6              # double 8.6111350000000009
	.quad	0x3fc4a19c9d5a187a              # double 0.16118199999999999
	.quad	0x4012e1ae2da554b9              # double 4.7203910000000002
	.quad	0x4023c7d21ff2e48f              # double 9.8902750000000008
	.quad	0x3fce16616b54e2b0              # double 0.23505799999999999
	.quad	0x400a0f95d4e8fb01              # double 3.2576100000000001
	.quad	0x4005df5946c332f0              # double 2.734057
	.quad	0x4012d3d4ae429e0a              # double 4.7068659999999998
	.quad	0x401e687379746024              # double 7.6020029999999998
	.quad	0x3fe609a671ef30a5              # double 0.68867800000000001
	.quad	0x40215d65c2d27807              # double 8.6824169999999992
	.quad	0x401139707182235b              # double 4.3060929999999997
	.quad	0x4022223df6db9410              # double 9.0668790000000001
	.quad	0x4020668b3b320536              # double 8.2002810000000004
	.quad	0x4022654306e5cd4f              # double 9.1977770000000003
	.quad	0x40085f6b1a2a4db1              # double 3.0465909999999998
	.quad	0x40052906034f3fd9              # double 2.6450309999999999
	.quad	0x401ea76cce5f7404              # double 7.6635010000000001
	.quad	0x401790c8cd63cb81              # double 5.8913909999999996
	.quad	0x4008459f2ba9d1f6              # double 3.033995
	.quad	0x3fe9f681669ced0b              # double 0.81134099999999998
	.quad	0x3ff825492ff4ba52              # double 1.5091030000000001
	.quad	0x401d4eb9e492bc30              # double 7.3268810000000002
	.quad	0x3fe7baf533f42353              # double 0.74157200000000001
	.quad	0x40236a938de6ddf0              # double 9.7081569999999999
	.quad	0x401cb44f5d35653d              # double 7.1760840000000004
	.quad	0x401d10ee8d10f51b              # double 7.2665350000000002
	.quad	0x40043dd8f92af9a9              # double 2.5301990000000001
	.quad	0x40204e8e820e6299              # double 8.1534309999999994
	.quad	0x401c2ce9e5e24788              # double 7.0438609999999997
	.quad	0x4017b63cb8173322              # double 5.9279659999999996
	.quad	0x4011904295a6c5d2              # double 4.390879
	.quad	0x40045eb18116ebd5              # double 2.5462370000000001
	.quad	0x40096c426351def0              # double 3.177861
	.quad	0x401305f17bd8be73              # double 4.7558040000000004
	.quad	0x4023d1b328b6d86f              # double 9.9095700000000004
	.quad	0x4020fb1db445ed4a              # double 8.4904609999999998
	.quad	0x4012e843c3a42f1f              # double 4.7268210000000002
	.quad	0x402253d3c3611340              # double 9.1637249999999994
	.quad	0x401359a240314877              # double 4.8375329999999996
	.quad	0x4021ef401c4fc1df              # double 8.9672859999999996
	.quad	0x400559d6f112fd33              # double 2.6688670000000001
	.quad	0x3ffd85132f87ad08              # double 1.844989
	.quad	0x4018d10dbf0563ed              # double 6.2041539999999999
	.quad	0x4017905681ecd4aa              # double 5.8909549999999999
	.quad	0x4018cd9a52263d81              # double 6.2007839999999996
	.quad	0x401d542a66dbd72c              # double 7.3321930000000002
	.quad	0x401a87739f340d4e              # double 6.6322770000000002
	.quad	0x3ffe8f8c64fdb09a              # double 1.9100459999999999
	.quad	0x4022179830e3cd9a              # double 9.0460829999999994
	.quad	0x401093126e978d50              # double 4.1436250000000001
	.quad	0x40181378ee286727              # double 6.0190159999999997
	.quad	0x3ff572b3461309c8              # double 1.340503
	.quad	0x40173b545c78a6db              # double 5.8079390000000002
	.quad	0x40145d63022dd7aa              # double 5.0911980000000003
	.quad	0x4023f5ea67e846a6              # double 9.9803040000000003
	.quad	0x401edfb82c2bd7f5              # double 7.7184759999999998
	.quad	0x402290ba83f4eca7              # double 9.2826730000000008
	.quad	0x3ff321650a45d420              # double 1.1956530000000001
	.quad	0x40186f75536933a0              # double 6.1088459999999998
	.quad	0x4004709289dadfb5              # double 2.554967
	.quad	0x4020d2b777d0f1f5              # double 8.4115559999999991
	.quad	0x3fc475cd0bb6ed67              # double 0.15984499999999999
	.quad	0x40169e503fb37436              # double 5.6546029999999998
	.quad	0x402041ee02a77a2d              # double 8.1287690000000001
	.quad	0x3fde4d7add15f02c              # double 0.47347899999999998
	.quad	0x3ff5d669ced0b30b              # double 1.3648469999999999
	.quad	0x40011da8bd230b9e              # double 2.1394820000000001
	.quad	0x4016eea3161a1db8              # double 5.7330439999999996
	.quad	0x401e0c7a398201cd              # double 7.5121849999999996
	.quad	0x400b00f2becedd48              # double 3.3754629999999999
	.quad	0x401929e7fb267c6c              # double 6.2909240000000004
	.quad	0x400144ed6fda836f              # double 2.1586560000000001
	.quad	0x3ff83605ab3aabcd              # double 1.5131889999999999
	.quad	0x4013247fdc5931ca              # double 4.7856439999999996
	.quad	0x401cdc27e9531551              # double 7.2149960000000002
	.quad	0x40154e34330d7386              # double 5.326371
	.quad	0x3fd095e5aff2a173              # double 0.25914900000000002
	.quad	0x402160c9320d9946              # double 8.6890350000000005
	.quad	0x402158b45ae5ffa4              # double 8.6732510000000004
	.quad	0x401ecb7ed41b75a7              # double 7.6987259999999997
	.quad	0x401dbd0635a426bb              # double 7.4345939999999997
	.quad	0x400d7eb6bf444e0e              # double 3.6868720000000001
	.quad	0x401edae0c1765775              # double 7.7137479999999998
	.quad	0x40224c79f666234b              # double 9.1493680000000008
	.quad	0x401ebf8bdec5f395              # double 7.6870570000000002
	.quad	0x400c12d4d4024b34              # double 3.5091950000000001
	.quad	0x4021a706b37867f1              # double 8.8262230000000006
	.quad	0x40151d04e618ce2d              # double 5.2783389999999999
	.quad	0x40112da0168b5cc0              # double 4.294556
	.quad	0x401de1b75a74c09c              # double 7.4704259999999998
	.quad	0x4021b5cf2495e17e              # double 8.8550959999999996
	.quad	0x402356dd69d30271              # double 9.669658
	.quad	0x3fd4aa9f7b5aea31              # double 0.32291399999999998
	.quad	0x400eb132f87ad081              # double 3.8365230000000001
	.quad	0x3fd70eb67c286f8b              # double 0.36027300000000001
	.quad	0x3ffffb384fd2a62b              # double 1.9988330000000001
	.quad	0x3fd14f8726d04e62              # double 0.27047900000000002
	.quad	0x401e336ef8055fbb              # double 7.5502279999999997
	.quad	0x4001be0bd44998d0              # double 2.2177959999999999
	.quad	0x40234b4f61672325              # double 9.6470900000000003
	.quad	0x3fd66ddaceee0f3d              # double 0.35045500000000002
	.quad	0x3ff0ad27807789a4              # double 1.0422739999999999
	.quad	0x3fff3481b21c475e              # double 1.9503189999999999
	.quad	0x4004a7b5f1bef49d              # double 2.58189
	.quad	0x40064b30b5aa7158              # double 2.7867139999999999
	.quad	0x4021f506573215fd              # double 8.9785640000000004
	.quad	0x401f80813cab81f9              # double 7.8754929999999996
	.quad	0x3ff933700474d9c7              # double 1.5750580000000001
	.quad	0x4020af822bbecaac              # double 8.3427900000000008
	.quad	0x401b8f4f0d844d01              # double 6.8899499999999998
	.quad	0x40005ea1c68ec52a              # double 2.0462069999999999
	.quad	0x401ca3d0bfa09460              # double 7.1599760000000003
	.quad	0x4015f19c5a3e39f7              # double 5.4859479999999996
	.quad	0x40162583e8576cce              # double 5.5366359999999997
	.quad	0x4016d7a5b0ff10ed              # double 5.7105930000000003
	.quad	0x401f99ac79702e66              # double 7.9000719999999998
	.quad	0x402124942d490e67              # double 8.5714430000000004
	.quad	0x40222e410b630a91              # double 9.0903399999999994
	.quad	0x4022c34938583622              # double 9.381418
	.quad	0x4011dce52deca255              # double 4.4657179999999999
	.quad	0x400c15771001d5c3              # double 3.510481
	.quad	0x400cd9f01b866e44              # double 3.6064150000000001
	.quad	0x401f3a2b5a20ddc6              # double 7.8068059999999999
	.quad	0x400b482be8bc169c              # double 3.4102399999999999
	.quad	0x40126a66559f6ec6              # double 4.6039060000000003
	.quad	0x40192393682730c6              # double 6.2847419999999996
	.quad	0x4018ac422036006d              # double 6.168221
	.quad	0x400182b063e07a29              # double 2.1888130000000001
	.quad	0x3fefc72c0e7bc3c6              # double 0.99306300000000003
	.quad	0x400870db6a1e81cb              # double 3.0551059999999999
	.quad	0x40186822bbecaab9              # double 6.1016950000000003
	.quad	0x40177054ef459d99              # double 5.859699
	.quad	0x4006dd04a2fcefaa              # double 2.8579189999999999
	.quad	0x40111be2b4959e62              # double 4.2772319999999997
	.quad	0x3ff73ab10ba62670              # double 1.451829
	.quad	0x401590a137f38c54              # double 5.3912399999999998
	.quad	0x3ffe6e978d4fdf3b              # double 1.9019999999999999
	.quad	0x401375d249e44fa0              # double 4.8650599999999997
	.quad	0x40113740c4156e26              # double 4.3039579999999997
	.quad	0x4022aee82949a565              # double 9.3416149999999991
	.quad	0x402097763e4abe6a              # double 8.2958239999999996
	.quad	0x4011bea9e6eeb702              # double 4.4361949999999997
	.quad	0x40025e0589acbc8c              # double 2.295909
	.quad	0x40216f9ebe9c8861              # double 8.7180079999999993
	.quad	0x401509dece571088              # double 5.259639
	.quad	0x40177359791819d2              # double 5.8626459999999998
	.quad	0x401adbed740c4157              # double 6.7147730000000001
	.quad	0x4017df8ec0f88334              # double 5.968318
	.quad	0x3fff63a4b5568e82              # double 1.961827
	.quad	0x401a743aa79bbadc              # double 6.613505
	.quad	0x3fd9e1e71044f1a2              # double 0.40441300000000002
	.quad	0x401483cee9dd7ecc              # double 5.1287190000000002
	.quad	0x3ff7e56ffc115df6              # double 1.4935149999999999
	.quad	0x3ff9706e5cd4ed2d              # double 1.5899490000000001
	.quad	0x401a58194c016052              # double 6.5860339999999997
	.quad	0x401eff2dc2b0ea18              # double 7.7491979999999998
	.quad	0x40232527a20578e6              # double 9.5725680000000004
	.quad	0x3fda51654d61b2a2              # double 0.41121799999999997
	.quad	0x400b0a925fe974a3              # double 3.3801619999999999
	.quad	0x4009fc779a6b50b1              # double 3.248275
	.quad	0x401f8e74afd54541              # double 7.8891169999999997
	.quad	0x40035e6362a5e786              # double 2.4210880000000001
	.quad	0x401bef850df15a4b              # double 6.9839060000000002
	.quad	0x4022988f21709310              # double 9.2979669999999999
	.quad	0x40026d823422467c              # double 2.303471
	.quad	0x40231c23d9231c65              # double 9.5549610000000004
	.quad	0x401271c219eb6391              # double 4.6110920000000002
	.quad	0x3ff41d1e53a81dc1              # double 1.257109
	.quad	0x3f80f840181e03f7              # double 0.0082859999999999999
	.quad	0x3ff433f20a73f749              # double 1.2626820000000001
	.quad	0x3fe94fbfc6540cc8              # double 0.79098500000000005
	.quad	0x400b8027d88c1db0              # double 3.437576
	.quad	0x4021d21d323fee2d              # double 8.9103790000000007
	.quad	0x400b6114d2f5dbba              # double 3.4224030000000001
	.quad	0x4022ebcd78c436fc              # double 9.4605519999999998
	.quad	0x401bb008205ff1d8              # double 6.9219059999999999
	.quad	0x4010b23a29c779a7              # double 4.1740500000000003
	.quad	0x401ff5d206c8711d              # double 7.9900589999999995
	.quad	0x402308d8ec95bff0              # double 9.5172799999999995
	.quad	0x401533dfb0d51f82              # double 5.3006580000000003
	.quad	0x3f94d338f7985272              # double 0.020337000000000001
	.quad	0x401cdad794a6eb92              # double 7.2137130000000003
	.quad	0x40022e3a3a8e7147              # double 2.2725719999999998
	.quad	0x40151bf9830e3cda              # double 5.2773190000000003
	.quad	0x400ebb6cbd987c63              # double 3.8415159999999999
	.quad	0x401387470eb24a6b              # double 4.8821070000000004
	.quad	0x400507d5ed06fef8              # double 2.6288260000000001
	.quad	0x3fef48605681ecd5              # double 0.97758500000000003
	.quad	0x401a5ba2be0589ad              # double 6.5894880000000002
	.quad	0x3ffa073797460243              # double 1.626762
	.quad	0x4008ddfe32a0663c              # double 3.1083949999999998
	.quad	0x402016e525892685              # double 8.0447170000000003
	.quad	0x401762c7b890d5a6              # double 5.8464650000000002
	.quad	0x400985a9a8049668              # double 3.1902650000000001
	.quad	0x40052ad3e920c06a              # double 2.645912
	.quad	0x3fe077318fc50481              # double 0.51454999999999995
	.quad	0x401de57a786c2268              # double 7.4740999999999999
	.quad	0x3fe530ab2e1693c0              # double 0.66219099999999997
	.quad	0x4012ba17b0f6ad71              # double 4.6817310000000001
	.quad	0x3fef203a322af577              # double 0.97268399999999999
	.quad	0x3fff7b7c7820a30e              # double 1.9676480000000001
	.quad	0x400e86338b47c73f              # double 3.815528
	.quad	0x401d4f7ced916873              # double 7.3276250000000003
	.quad	0x4023932f87ad080b              # double 9.7874719999999992
	.quad	0x402002921ccd9620              # double 8.0050209999999993
	.quad	0x400bf80d3cff64d0              # double 3.4961190000000002
	.quad	0x4018141d084e831b              # double 6.0196420000000002
	.quad	0x4020727243137b07              # double 8.2235279999999999
	.quad	0x4023abbea91d9b1b              # double 9.8354389999999991
	.quad	0x40125c4eb56fb8f5              # double 4.5901439999999996
	.quad	0x4005a66ec9e236c1              # double 2.7062659999999998
	.quad	0x3ffbf778dd616f87              # double 1.7479180000000001
	.quad	0x401fb72cd7cf5f4e              # double 7.9288819999999998
	.quad	0x4023dd5582129457              # double 9.9322929999999995
	.quad	0x4014189b0ee49f51              # double 5.0240289999999996
	.quad	0x401b5bd1aa821f2a              # double 6.8396670000000004
	.quad	0x3ff4f18548a9bcfd              # double 1.3089649999999999
	.quad	0x401bcb7d41743e96              # double 6.9487199999999998
	.quad	0x402130485a0be511              # double 8.5943020000000008
	.quad	0x4019f220791c4b90              # double 6.4864519999999999
	.quad	0x4010916b54e2b064              # double 4.1420110000000001
	.quad	0x40127a92e62131a9              # double 4.6197010000000001
	.quad	0x402213bfb58d1527              # double 9.0385720000000003
	.quad	0x40119d933e35c5b5              # double 4.4038820000000003
	.quad	0x3ff3f3cd573647bb              # double 1.2470220000000001
	.quad	0x4016b68d32830a0b              # double 5.6782729999999999
	.quad	0x4007068986fcdee3              # double 2.8781919999999999
	.quad	0x3fc304ff43419e30              # double 0.14859
	.quad	0x401bce2f37fbefd0              # double 6.951352
	.quad	0x40104187a4a48f97              # double 4.0639940000000001
	.quad	0x40070070b8cfbfc6              # double 2.8752149999999999
	.quad	0x4021388dd1e53a82              # double 8.6104570000000002
	.quad	0x3fe208e368f08462              # double 0.563585
	.quad	0x40136bd2fa0d77b8              # double 4.8552970000000002
	.quad	0x400d5c49774256bd              # double 3.6700620000000002
	.quad	0x3ffd29478c868ba0              # double 1.822578
	.quad	0x40046dd69d30270f              # double 2.5536319999999999
	.quad	0x3fda9c90c4dec1c2              # double 0.41580600000000001
	.quad	0x402141c044284dfd              # double 8.6284200000000002
	.quad	0x402177177a7008a7              # double 8.7326010000000007
	.quad	0x4023db67a0f9096c              # double 9.9285250000000004
	.quad	0x40211b8c75c4a83b              # double 8.5538059999999998
	.quad	0x40082d834091c087              # double 3.0222229999999999
	.quad	0x3fd9c23b7952d235              # double 0.40248
	.quad	0x401c6a3df6db9410              # double 7.1037520000000001
	.quad	0x401177a7c9de0503              # double 4.3668509999999996
	.quad	0x40134a2403148777              # double 4.8224030000000004
	.quad	0x4020ef81c714fce7              # double 8.4677869999999995
	.quad	0x401a1bd7b2031ceb              # double 6.52719
	.quad	0x3ff0132b55ef1fde              # double 1.00468
	.quad	0x4016f676ea422899              # double 5.7406879999999996
	.quad	0x400d728e92d55a3a              # double 3.680936
	.quad	0x3ffad74e65bea0ba              # double 1.677565
	.quad	0x40161ba6efc371da              # double 5.5270039999999998
	.quad	0x4020c11d57ff9b56              # double 8.3771769999999997
	.quad	0x401fd413db7f1737              # double 7.9571069999999997
	.quad	0x4021413122b7baed              # double 8.6273280000000003
	.quad	0x40100244e93e1c9b              # double 4.0022159999999998
	.quad	0x3ff9f2788db0574b              # double 1.6216969999999999
	.quad	0x40212712a0ec7432              # double 8.576314
	.quad	0x401e155fbb517a46              # double 7.5208729999999999
	.quad	0x4003503fb3743633              # double 2.4141840000000001
	.quad	0x40137eebf65dbfcf              # double 4.8739470000000003
	.quad	0x401f2b6e935b91f7              # double 7.7924139999999999
	.quad	0x4012cc5154866a12              # double 4.6995290000000001
	.quad	0x4020d11622813448              # double 8.408372
	.quad	0x40236378ee286727              # double 9.6942819999999993
	.quad	0x401311c2a0232096              # double 4.7673439999999996
	.quad	0x401cf05814940bbb              # double 7.2347109999999999
	.quad	0x401708e6d15ad107              # double 5.7586930000000001
	.quad	0x3fd8790752da9867              # double 0.38238699999999998
	.quad	0x3ff9b6f2a5a469d7              # double 1.607165
	.quad	0x3ff72ba387592535              # double 1.4481539999999999
	.quad	0x40211b2314013ec4              # double 8.5530019999999993
	.quad	0x4020e6eefa1e3eaf              # double 8.4510419999999993
	.quad	0x402386cb31c219eb              # double 9.7632689999999993
	.quad	0x401af3c07ee0b0af              # double 6.7380389999999997
	.quad	0x401f01c2a0232096              # double 7.7517189999999996
	.quad	0x3fe80e8858ff7597              # double 0.75177400000000005
	.quad	0x40159c8de2ac3223              # double 5.4028850000000004
	.quad	0x4023d25657fb6998              # double 9.9108149999999994
	.quad	0x4020855885d31338              # double 8.2604410000000001
	.quad	0x400424eb56fb8f58              # double 2.518027
	.quad	0x4023bd9b1b79d90a              # double 9.8703240000000001
	.quad	0x401056e04c059210              # double 4.0848399999999998
	.quad	0x40228d7928e0c9da              # double 9.2763150000000003
	.quad	0x4023b59e1f3a57eb              # double 9.8547220000000006
	.quad	0x4011fed1bf7ad4b2              # double 4.4988469999999996
	.quad	0x401a1f705857afea              # double 6.5307019999999998
	.quad	0x4019b9cd8127b2cc              # double 6.4314479999999996
	.quad	0x40176980b242070c              # double 5.8530300000000004
	.quad	0x400e468c26139000              # double 3.7844470000000001
	.quad	0x4014832ebe596c83              # double 5.1281080000000001
	.quad	0x401145c63ae2541e              # double 4.3181390000000004
	.quad	0x4018192ddbdb5d89              # double 6.0245889999999997
	.quad	0x40061559b3d07c85              # double 2.7604250000000001
	.quad	0x4011146c764adff8              # double 4.2699449999999999
	.quad	0x3fd58051c9f72f77              # double 0.33595700000000001
	.quad	0x4003340a2877ee4e              # double 2.4004099999999999
	.quad	0x3fd224e9c4545847              # double 0.283503
	.quad	0x401a8240fa9c12f1              # double 6.6272010000000003
	.quad	0x401894df04ddb552              # double 6.1453819999999997
	.quad	0x4012bbfa4c61d862              # double 4.6835719999999998
	.quad	0x402343f4eca686e8              # double 9.6327280000000001
	.quad	0x401a64e592967019              # double 6.5985319999999996
	.quad	0x3ffb434d26fa3fcd              # double 1.7039310000000001
	.quad	0x401c9e3715400325              # double 7.1545069999999997
	.quad	0x401f944dca8e2e2c              # double 7.8948280000000004
	.quad	0x3fdbb7f1737542a2              # double 0.43310199999999999
	.quad	0x401103925bb7b6bb              # double 4.2534879999999999
	.quad	0x40079d66adb402d1              # double 2.9518559999999998
	.quad	0x3ffc0c3e3193f6c2              # double 1.7529889999999999
	.quad	0x40096b3bb83cf2d0              # double 3.1773600000000002
	.quad	0x40204680bed740c4              # double 8.1377009999999998
	.quad	0x401b4ab0856e696a              # double 6.8229389999999999
	.quad	0x3fe3a28997c3d684              # double 0.613591
	.quad	0x402130f6273929ed              # double 8.5956279999999996
	.quad	0x3fc56199780baa58              # double 0.167041
	.quad	0x400c5a1d323fee2d              # double 3.5440010000000002
	.quad	0x3fffa9d30270f388              # double 1.978961
	.quad	0x400ed76ab5807fed              # double 3.8551839999999999
	.quad	0x4023cd7060bb2bbb              # double 9.9012480000000007
	.quad	0x401bba48f96e1587              # double 6.9319189999999997
	.quad	0x400d291d14e3bcd3              # double 3.6450749999999998
	.quad	0x4021b4b641700cd8              # double 8.8529529999999994
	.quad	0x4023def8055fbb51              # double 9.9354859999999991
	.quad	0x40149032db1e9f27              # double 5.1408189999999996
	.quad	0x401afceaaf35e311              # double 6.7469890000000001
	.quad	0x3fde9cd8127b2cc7              # double 0.478323
	.quad	0x400c29845dc83233              # double 3.5202719999999998
	.quad	0x3ff774fe79ee02a7              # double 1.4660629999999999
	.quad	0x4015b3061c79b34a              # double 5.4248279999999998
	.quad	0x401080be9424e593              # double 4.1257270000000004
	.quad	0x401db4e8b7e4de3c              # double 7.4266690000000004
	.quad	0x401f22730c671690              # double 7.7836420000000004
	.quad	0x401c461522a6f3f5              # double 7.0684399999999998
	.quad	0x4022f7e175d13d75              # double 9.4841420000000002
	.quad	0x400ed67a0f9096bc              # double 3.8547250000000002
	.quad	0x401a297a67a52ac7              # double 6.5405059999999997
	.quad	0x400c4fb86f47b678              # double 3.538926
	.quad	0x401ebab3aabcd78c              # double 7.6823259999999998
	.quad	0x3fdc66490a350d28              # double 0.443743
	.quad	0x4006d9aae6c8f755              # double 2.8562829999999999
	.quad	0x3ff22c98e53eb39a              # double 1.135888
	.quad	0x401049795b35b0bc              # double 4.071752
	.quad	0x401734806290eed0              # double 5.8012709999999998
	.quad	0x3fcda9eb2074ea8e              # double 0.23174800000000001
	.quad	0x3fe5de939eadd591              # double 0.68342000000000003
	.quad	0x4019c499d0203e64              # double 6.4419930000000001
	.quad	0x4007afdb8fde2ef5              # double 2.9608680000000001
	.quad	0x40031c115df6555c              # double 2.3887049999999999
	.quad	0x4011e7607c4199fe              # double 4.4759539999999998
	.quad	0x400216e04c059210              # double 2.2611699999999999
	.quad	0x400ece3715400325              # double 3.8506909999999999
	.quad	0x3fdd4e9c4545846f              # double 0.45792300000000002
	.quad	0x4020a8d5c74751ce              # double 8.3297559999999997
	.quad	0x401a30acc0bdcad1              # double 6.5475339999999997
	.quad	0x4007a4d76ab58080              # double 2.955489
	.quad	0x40034a821f2990f3              # double 2.411381
	.quad	0x4023cf1a5ca29846              # double 9.9044980000000002
	.quad	0x3ff92ad9274e22a3              # double 1.5729610000000001
	.quad	0x4016c4c5974e65bf              # double 5.6921600000000003
	.quad	0x4023bbb85e80bed7              # double 9.8666409999999995
	.quad	0x3fe80066c2acb85a              # double 0.75004899999999997
	.quad	0x4002d2c386d2ed78              # double 2.3529119999999999
	.quad	0x4013ca2cecc814d7              # double 4.9474369999999999
	.quad	0x401a732e7b3d8e00              # double 6.612482
	.quad	0x4021f9e646f15619              # double 8.9880849999999999
	.quad	0x4006db927d45a5fc              # double 2.8572129999999998
	.quad	0x3fe24178705425f2              # double 0.570492
	.quad	0x3fe9c36b8f9b1316              # double 0.80510499999999996
	.quad	0x401cdb91f70de8f7              # double 7.2144240000000002
	.quad	0x40017eb851eb851f              # double 2.1868750000000001
	.quad	0x400346e8f29d40ee              # double 2.409624
	.quad	0x40231a7631b584b2              # double 9.5516830000000006
	.quad	0x401b49d451fc4c16              # double 6.8220989999999997
	.quad	0x40149e0e30446b6a              # double 5.1543510000000001
	.quad	0x3fdc96af038e29fa              # double 0.44669700000000001
	.quad	0x3fff6ccb3a2595bc              # double 1.9640610000000001
	.quad	0x40199804102ff8ec              # double 6.3984529999999999
	.quad	0x402033c05d52c16e              # double 8.1010770000000001
	.quad	0x4015faf709b738e7              # double 5.4950830000000002
	.quad	0x401352bf11f926c8              # double 4.8308070000000001
	.quad	0x4022ea450acc0bdd              # double 9.4575580000000005
	.quad	0x400600e410b630a9              # double 2.750435
	.quad	0x401d8c050bd87b57              # double 7.3867380000000002
	.quad	0x401e2ee136e71cda              # double 7.5457809999999998
	.quad	0x40135214ad362e90              # double 4.8301569999999998
	.quad	0x40222198aeb80ed0              # double 9.0656180000000006
	.quad	0x401199a38fbca106              # double 4.4000380000000003
	.quad	0x4012dd3e920c069e              # double 4.7160589999999996
	.quad	0x4014d5710880d802              # double 5.2084390000000003
	.quad	0x401c1d7c2ca148bb              # double 7.0287940000000004
	.quad	0x40224e6f71a7e308              # double 9.1531939999999991
	.quad	0x40185e9856a37ac4              # double 6.0923780000000001
	.quad	0x3ff5a977c88e79ab              # double 1.353874
	.quad	0x40019be7f2c3009b              # double 2.2011259999999999
	.quad	0x40074e39b456b442              # double 2.9131960000000001
	.quad	0x3fe63899392189be              # double 0.69440900000000005
	.quad	0x4016ec34c1a8ac5c              # double 5.7306699999999999
	.quad	0x40206cc9ea9a3d2e              # double 8.2124780000000008
	.quad	0x4022936006d0d499              # double 9.2878419999999995
	.quad	0x3ff8fc05d52c16df              # double 1.5615289999999999
	.quad	0x40028ff3ade225fa              # double 2.3202889999999998
	.quad	0x4020afbaa9b499d0              # double 8.3432209999999998
	.quad	0x3fffb6c2699c7bcc              # double 1.982119
	.quad	0x40163bba55d1c3ad              # double 5.5583280000000004
	.quad	0x4000d14983d79075              # double 2.1021909999999999
	.quad	0x401a73e2d6238da4              # double 6.6131700000000002
	.quad	0x401198effe2a3cea              # double 4.3993529999999996
	.quad	0x3fffba9f383f0baf              # double 1.9830620000000001
	.quad	0x401d12e126202539              # double 7.2684369999999996
	.quad	0x40207f5cd0bb6ed6              # double 8.2487549999999992
	.quad	0x3fdbd12018a43bb4              # double 0.434639
	.quad	0x4013a8709741d085              # double 4.9144920000000001
	.quad	0x40176d2d01c0ca60              # double 5.856617
	.quad	0x3fe1f6273929ed39              # double 0.56129799999999996
	.quad	0x40148ce8533b1077              # double 5.1376049999999998
	.quad	0x4007094141e9af5c              # double 2.8795190000000002
	.quad	0x4022a8d8665e02eb              # double 9.3297760000000007
	.quad	0x3fffaef911cf355d              # double 1.980218
	.quad	0x401312089e34330d              # double 4.7676109999999996
	.quad	0x401c8b8fde2ef4e0              # double 7.1362909999999999
	.quad	0x400088427418d691              # double 2.0665330000000002
	.quad	0x3fdb77a2cecc814d              # double 0.42917699999999998
	.quad	0x401b359791819d24              # double 6.8023360000000004
	.quad	0x4007a4638c975297              # double 2.9552679999999998
	.quad	0x3fe2fa02fb5d0310              # double 0.59301899999999996
	.quad	0x4010d545c78a6dad              # double 4.2082740000000003
	.quad	0x40180004b7f5a533              # double 6.0000179999999999
	.quad	0x4006df6e3f78bbd4              # double 2.8590970000000002
	.quad	0x4005eae31d712a0f              # double 2.7396910000000001
	.quad	0x401cd5a78f25a251              # double 7.208647
	.quad	0x40215e9680e06530              # double 8.684742
	.quad	0x4008289c1b54195d              # double 3.0198290000000001
	.quad	0x3fddccff21b3aeef              # double 0.46563700000000002
	.quad	0x4008ffeda6612839              # double 3.124965
	.quad	0x3ffd70c88a47ecff              # double 1.8400350000000001
	.quad	0x4010d63b256ffc11              # double 4.2092099999999997
	.quad	0x40168bcd78c436fc              # double 5.6365259999999999
	.quad	0x402205885d31337f              # double 9.0108060000000005
	.quad	0x3fded2a62aa1943a              # double 0.48160700000000001
	.quad	0x3ff9427631b584b2              # double 1.5787260000000001
	.quad	0x4017acc037931444              # double 5.9187019999999997
	.quad	0x4021299a847b2464              # double 8.5812570000000008
	.quad	0x400449f0e4da09cc              # double 2.5361039999999999
	.quad	0x3ff90ed6fda836eb              # double 1.5661229999999999
	.quad	0x401889a62ed35222              # double 6.134423
	.quad	0x4018693037d63023              # double 6.1027230000000001
	.quad	0x4021fcaada33bd9d              # double 8.9934910000000006
	.quad	0x401ee667b5f1bef5              # double 7.7250050000000003
	.quad	0x402208c77dd872f3              # double 9.0171469999999996
	.quad	0x401bc94f26aec072              # double 6.9465909999999997
	.quad	0x4019149235f80991              # double 6.2700889999999996
	.quad	0x40109fd50225742e              # double 4.1560860000000002
	.quad	0x401896c2efd438d2              # double 6.1472280000000001
	.quad	0x4020e9d5c31593e6              # double 8.456709
	.quad	0x4021658b827fa1a1              # double 8.6983300000000003
	.quad	0x401fb600f345069a              # double 7.9277379999999997
	.quad	0x400a1f077ccc0379              # double 3.2651509999999999
	.quad	0x401c4793dd97f62b              # double 7.0698999999999996
	.quad	0x4017fef49cf56ead              # double 5.9989800000000004
	.quad	0x401431c8216c6152              # double 5.0486149999999999
	.quad	0x3fcdef73c0c1fc8f              # double 0.23386999999999999
	.quad	0x401b1a832b990afe              # double 6.7758909999999997
	.quad	0x3fe6e86a4ca4f441              # double 0.71587100000000004
	.quad	0x401dedf6db940fed              # double 7.4823870000000001
	.quad	0x400bb5fd47bedb73              # double 3.4638620000000002
	.quad	0x3fc041c3efae7925              # double 0.12700700000000001
	.quad	0x4020eb04ee7c49fd              # double 8.4590219999999992
	.quad	0x4023d91ec918e326              # double 9.9240630000000003
	.quad	0x401ef70cdc8754f3              # double 7.7412599999999995
	.quad	0x401ebd26b723ee1c              # double 7.6847180000000002
	.quad	0x40222440d0aaa7df              # double 9.0708070000000003
	.quad	0x4021cbad18d25edd              # double 8.897805
	.quad	0x401771f18c9fb613              # double 5.8612729999999997
	.quad	0x4022809656eefa1e              # double 9.2511469999999996
	.quad	0x401a09f383f0bae9              # double 6.5097180000000003
	.quad	0x40201bf76a2f48c3              # double 8.0546220000000002
	.quad	0x4023a92a30553261              # double 9.8303999999999991
	.quad	0x401fd08ede54b48d              # double 7.9536699999999997
	.quad	0x3ff5c981beb18117              # double 1.361696
	.quad	0x3fe4fdb4cc250721              # double 0.65597000000000005
	.quad	0x401e1404a72ead92              # double 7.5195489999999996
	.quad	0x400be8858ff75968              # double 3.4885359999999999
	.quad	0x401530e6f2e8c048              # double 5.2977559999999997
	.quad	0x400f2e581cf7878b              # double 3.8976289999999998
	.quad	0x401e8c4651f3e89b              # double 7.6369870000000004
	.quad	0x4020dc86ad2dcb14              # double 8.4307149999999992
	.quad	0x401072428d434a02              # double 4.1115820000000003
	.quad	0x3ffdd5d80e496edf              # double 1.864708
	.quad	0x4020230ab2e1693c              # double 8.0684409999999999
	.quad	0x40035052934acaff              # double 2.4142199999999998
	.quad	0x3ff3ab7995ee136e              # double 1.2293639999999999
	.quad	0x402330427418d691              # double 9.5942570000000007
	.quad	0x4021c408d8ec95c0              # double 8.8828800000000001
	.quad	0x401de9c7bcc2938e              # double 7.4783010000000001
	.quad	0x4006028027d88c1e              # double 2.7512210000000001
	.quad	0x401385b573eab368              # double 4.8805750000000003
	.quad	0x3fe4577fae3608d1              # double 0.63568100000000005
	.quad	0x401d033482be8bc1              # double 7.2531299999999996
	.quad	0x40173c5436b8f9b1              # double 5.8089149999999998
	.quad	0x4022bcbf6e3f78bc              # double 9.3686480000000003
	.quad	0x40175570c564f97f              # double 5.8334380000000001
	.quad	0x4023811e215336df              # double 9.7521830000000004
	.quad	0x3ff99bf26f1dc50d              # double 1.600573
	.quad	0x400f5295e9e1b08a              # double 3.9153250000000002
	.quad	0x3fe4c2edbb59ddc2              # double 0.64879500000000001
	.quad	0x4023eba301216830              # double 9.9602280000000007
	.quad	0x40126da2f8bdec5f              # double 4.6070669999999998
	.quad	0x401d28754f3775b8              # double 7.2895099999999999
	.quad	0x401fdcd9e83e425b              # double 7.965675
	.quad	0x40201049ecb31c22              # double 8.0318140000000007
	.quad	0x400ab345069a4df4              # double 3.3375339999999998
	.quad	0x3fa1d57ff9b56324              # double 0.034832000000000002
	.quad	0x401a974751ce28ed              # double 6.6477329999999997
	.quad	0x40172bf65dbfceb8              # double 5.7929320000000004
	.quad	0x401385058dde7a74              # double 4.8799039999999998
	.quad	0x3fd55479d4d83409              # double 0.33328099999999999
	.quad	0x401fd6a5d6bebe16              # double 7.9596169999999997
	.quad	0x4002c8f96e158751              # double 2.3481320000000001
	.quad	0x401fbe0221426fe7              # double 7.9355549999999999
	.quad	0x401fd805a2d72ffd              # double 7.9609589999999998
	.quad	0x402336916440f239              # double 9.6065780000000007
	.quad	0x40045becaab8a5ce              # double 2.5448849999999998
	.quad	0x400fc1754b05b7d0              # double 3.969462
	.quad	0x401452f33ca31e7e              # double 5.0810060000000004
	.quad	0x401d670196d8f4f9              # double 7.3505919999999998
	.quad	0x3ff95704ff43419e              # double 1.583745
	.quad	0x400f25bc87db2b34              # double 3.8934259999999998
	.quad	0x400c4605681ecd4b              # double 3.5341900000000002
	.quad	0x401f3b91b3f20a74              # double 7.808173
	.quad	0x402345989df1172f              # double 9.6359300000000001
	.quad	0x40100e746cb966be              # double 4.0141159999999996
	.quad	0x402141e12a51e322              # double 8.6286710000000006
	.quad	0x4016264c729f59cd              # double 5.537401
	.quad	0x40233200e27e0efa              # double 9.5976630000000007
	.quad	0x4016c9695d91ab8f              # double 5.6966910000000004
	.quad	0x3fa29e0a41a261bf              # double 0.036361999999999998
	.quad	0x401214e7ab756430              # double 4.5204149999999998
	.quad	0x3ffbf124d099e0e7              # double 1.746373
	.quad	0x4019b571d1d4738a              # double 6.4271919999999998
	.quad	0x401e93b4f6167232              # double 7.6442449999999997
	.quad	0x401c409246bf0132              # double 7.0630579999999998
	.quad	0x40155490a350d280              # double 5.3325829999999996
	.quad	0x4013830b5aa71583              # double 4.8779729999999999
	.quad	0x400ea147ae147ae1              # double 3.8287499999999999
	.quad	0x401967a41e57d9dc              # double 6.3512120000000003
	.quad	0x4017d51372a38b8b              # double 5.9580820000000001
	.quad	0x40152a393ee5eedd              # double 5.2912340000000002
	.quad	0x3ff6e1b8ed1bf7ad              # double 1.4301079999999999
	.quad	0x4008fa3ec02f2f98              # double 3.1221899999999998
	.quad	0x4021192e83a109d0              # double 8.5491829999999993
	.quad	0x400f449906cca2db              # double 3.9084949999999998
	.quad	0x3fe5ac6ac215b9a6              # double 0.67729700000000004
	.quad	0x400535771001d5c3              # double 2.651106
	.quad	0x3fdc31769a91105e              # double 0.44051899999999999
	.quad	0x40235d0635a426bb              # double 9.6816879999999994
	.quad	0x4017bfbe76c8b439              # double 5.9372499999999997
	.quad	0x4005101754b05b7d              # double 2.632857
	.quad	0x40186d2e94680171              # double 6.1066229999999999
	.quad	0x3fe20793dd97f62b              # double 0.56342499999999995
	.quad	0x400c280303c07ee1              # double 3.5195370000000001
	.quad	0x3f762bf11f926c7f              # double 0.0054130000000000003
	.quad	0x402222c77574f723              # double 9.0679280000000002
	.quad	0x3ff86ecbfb15b574              # double 1.52705
	.quad	0x40129ef911cf355d              # double 4.6552470000000001
	.quad	0x400f7a43fe5c91d1              # double 3.9346999999999999
	.quad	0x4010676d117b5287              # double 4.1010020000000003
	.quad	0x3fe95af07bfe7e20              # double 0.79235100000000002
	.quad	0x4011f94bbe4473cd              # double 4.4934529999999997
	.quad	0x4020fe3150dae3e7              # double 8.4964700000000004
	.quad	0x401698ce2d1f1cfc              # double 5.6492240000000002
	.quad	0x3fd089bd8383ad9f              # double 0.258407
	.quad	0x40129af922962cfe              # double 4.6513410000000004
	.quad	0x4023203dff3f0fe0              # double 9.5629729999999995
	.quad	0x3ffced99cbee807c              # double 1.8080080000000001
	.quad	0x4020b772d5e071c5              # double 8.3582979999999996
	.quad	0x4022f70025bfad2a              # double 9.4824230000000007
	.quad	0x400aead70e6f2e8c              # double 3.364668
	.quad	0x40127ee88df3732a              # double 4.6239340000000002
	.quad	0x401c98909289dae0              # double 7.1489890000000003
	.quad	0x3ff329878316a055              # double 1.1976389999999999
	.quad	0x3feb460029f16b12              # double 0.85229500000000002
	.quad	0x400df29f59ccfaf0              # double 3.743468
	.quad	0x4000a4d1a6506141              # double 2.0804779999999998
	.quad	0x4016c6933a0407cc              # double 5.6939209999999996
	.quad	0x401bc26809d49518              # double 6.9398499999999999
	.quad	0x3ff3e7ab7564302b              # double 1.2440599999999999
	.quad	0x3fd41205bc01a36e              # double 0.31359999999999999
	.quad	0x4023ded7625204b0              # double 9.9352370000000008
	.quad	0x3fec89d495182a99              # double 0.89182499999999998
	.quad	0x4020c622c4502689              # double 8.386984
	.quad	0x4017e172ef0ae536              # double 5.9701649999999997
	.quad	0x4023e15ebfa8f7db              # double 9.9401759999999992
	.quad	0x3fcf7d1fe64f54d2              # double 0.246006
	.quad	0x3ff6cfb86f47b678              # double 1.425713
	.quad	0x401d460dcb9a9da6              # double 7.3184120000000004
	.quad	0x3ff0c78c868b9fdc              # double 1.048718
	.quad	0x401353c9abb01c93              # double 4.8318240000000001
	.quad	0x40140f8b1572580c              # double 5.0151789999999998
	.quad	0x401e7d19157abb88              # double 7.6221659999999999
	.quad	0x401be1d323fee2ca              # double 6.9705320000000004
	.quad	0x400925ecc3e3193f              # double 3.1435179999999998
	.quad	0x4006fa31a4bdba0a              # double 2.8721649999999999
	.quad	0x4011ee45803cd142              # double 4.4826870000000003
	.quad	0x400fc67f0aa21a72              # double 3.9719220000000002
	.quad	0x4015b06b37867f0b              # double 5.4222840000000003
	.quad	0x4020e1068986fcdf              # double 8.4395030000000002
	.quad	0x401c1d045fe11127              # double 7.0283369999999996
	.quad	0x40133cbf6e3f78bc              # double 4.8093240000000002
	.quad	0x4011b606317268d3              # double 4.4277579999999999
	.quad	0x400a2581cf7878b8              # double 3.2683140000000002
	.quad	0x401428efbb0e5e68              # double 5.0399770000000004
	.quad	0x402186dd48451330              # double 8.7634070000000008
	.quad	0x401549b8023a6ce3              # double 5.3219909999999997
	.quad	0x401f2e40420f6f09              # double 7.7951670000000001
	.quad	0x4020581450efdc9c              # double 8.1720299999999994
	.quad	0x3ff3eb9a176ddacf              # double 1.24502
	.quad	0x40110c436fc158fb              # double 4.2619759999999998
	.quad	0x4001648a58b3f63c              # double 2.1740919999999999
	.quad	0x40215e154434e337              # double 8.6837560000000007
	.quad	0x4011626e978d4fdf              # double 4.3461249999999998
	.quad	0x4012129c779a6b51              # double 4.5181750000000003
	.quad	0x3fd5fe004b7f5a53              # double 0.34362799999999999
	.quad	0x4004db0ccbc05d53              # double 2.6069580000000001
	.quad	0x3febb2e3821af7d3              # double 0.865587
	.quad	0x40202bbc6eb0b7c3              # double 8.0854219999999994
	.quad	0x4022810667f90d9d              # double 9.2520019999999992
	.quad	0x401d20346dc5d639              # double 7.2814500000000004
	.quad	0x40117fae7924af0c              # double 4.374689
	.quad	0x40171b549f94855e              # double 5.7766900000000003
	.quad	0x3ffe403eea209aaa              # double 1.8906849999999999
	.quad	0x402065805e5f30e8              # double 8.198245
	.quad	0x401ab054ac29bf16              # double 6.6721979999999999
	.quad	0x3ff0d73647baa9b5              # double 1.0525420000000001
	.quad	0x4017eee136e71cda              # double 5.9832809999999998
	.quad	0x4010933c1ce6c094              # double 4.1437840000000001
	.quad	0x40052f733a8a3f8a              # double 2.6481690000000002
	.quad	0x400474855da27286              # double 2.5568949999999999
	.quad	0x3fdf1f080303c07f              # double 0.48626900000000001
	.quad	0x400fff4ba51a005c              # double 3.9996559999999999
	.quad	0x402083fe1975f2cb              # double 8.2577979999999993
	.quad	0x3fe9c7000431bde8              # double 0.80554199999999998
	.quad	0x4022eeb50b0f27bb              # double 9.4662249999999996
	.quad	0x4022f42f837b4a23              # double 9.4769249999999995
	.quad	0x40228a87a072d1af              # double 9.2705660000000005
	.quad	0x401b52749f0e4da1              # double 6.8305230000000003
	.quad	0x3fea0cb8e086bdf5              # double 0.81405300000000003
	.quad	0x401c48ab4fa48302              # double 7.0709660000000003
	.quad	0x400f488df37329c3              # double 3.9104269999999999
	.quad	0x401283ff69014b5a              # double 4.6289040000000004
	.quad	0x40010d4bad7d7c2d              # double 2.1314920000000002
	.quad	0x3fea01d7dbf487fd              # double 0.81272500000000003
	.quad	0x40063b56323bbc6f              # double 2.7789730000000001
	.quad	0x40060369fcf3dc05              # double 2.7516669999999999
	.quad	0x402068b49e01de27              # double 8.2045030000000008
	.quad	0x401c0d22424a276b              # double 7.0128259999999996
	.quad	0x3ffd3d0aed99cbef              # double 1.8274030000000001
	.quad	0x400fea843808850a              # double 3.9895100000000001
	.quad	0x402257403dddb121              # double 9.1704120000000007
	.quad	0x401ea5fdcdf69878              # double 7.6621009999999998
	.quad	0x4020da9da597d49d              # double 8.4269839999999991
	.quad	0x401aed5ae1cde5d2              # double 6.7317920000000004
	.quad	0x4018218eb8950764              # double 6.0327710000000003
	.quad	0x4013bf5771001d5c              # double 4.9368569999999998
	.quad	0x402062dd590c0ad0              # double 8.1930949999999996
	.quad	0x3ff8be2d6238da3c              # double 1.54643
	.quad	0x401e820791c4b902              # double 7.6269819999999999
	.quad	0x402171693c03bc4d              # double 8.7215059999999998
	.quad	0x3fccfb1183b60286              # double 0.226412
	.quad	0x402302d0c3d25248              # double 9.5054990000000003
	.quad	0x40215ec764adff82              # double 8.6851149999999997
	.quad	0x4005ce7ee9142b30              # double 2.7258279999999999
	.quad	0x401fcf80dc33721d              # double 7.9526399999999997
	.quad	0x401787820a30db6a              # double 5.8823319999999999
	.quad	0x401fa5219a847b24              # double 7.9112609999999997
	.quad	0x4002b484d76ab580              # double 2.3381439999999998
	.quad	0x40151306e5cd4ed3              # double 5.2685810000000002
	.quad	0x401d2a4e379b77c0              # double 7.2913139999999999
	.quad	0x3ff80c5c9a34ca0c              # double 1.503018
	.quad	0x40139e0d66f0cfe1              # double 4.9043479999999997
	.quad	0x4010fa1e81cb46bb              # double 4.2442570000000002
	.quad	0x40081704790b8499              # double 3.0112390000000002
	.quad	0x40213a9e4d5d80e5              # double 8.6144890000000007
	.quad	0x40210a1f6cacd185              # double 8.5197710000000004
	.quad	0x40215232f4491299              # double 8.6605450000000008
	.quad	0x3fe0de82d7b634db              # double 0.52716200000000002
	.quad	0x3ff17ad5bee3d5fe              # double 1.092489
	.quad	0x3ff66c3547e06962              # double 1.4014180000000001
	.quad	0x3fed82ea960b6fa0              # double 0.92223100000000002
	.quad	0x3fe8df5cf2495e18              # double 0.77726600000000001
	.quad	0x3fe092146a1a500d              # double 0.51783199999999996
	.quad	0x401205c182ecaeea              # double 4.5056209999999997
	.quad	0x401458ed5f138bce              # double 5.086843
	.quad	0x4023fedf82b1f688              # double 9.9977990000000005
	.quad	0x400d4889c1b54196              # double 3.6604190000000001
	.quad	0x401622c7325918a0              # double 5.533963
	.quad	0x400a7437c5692b3d              # double 3.3067470000000001
	.quad	0x402091acde19fc2b              # double 8.2845220000000008
	.quad	0x401f2e29307af20f              # double 7.7950790000000003
	.quad	0x4023ece24bba12b6              # double 9.9626640000000002
	.quad	0x401c45247cb70ac4              # double 7.0675220000000003
	.quad	0x4019386fcdee34fc              # double 6.3051139999999997
	.quad	0x400c53660e51d25b              # double 3.5407220000000001
	.quad	0x401f5cadddf43c7d              # double 7.8405069999999996
	.quad	0x400fb3775b813016              # double 3.9626299999999999
	.quad	0x4022ff6f4be835df              # double 9.4988960000000002
	.quad	0x40147e536501e258              # double 5.1233649999999997
	.quad	0x401ad0f6ad70e6f3              # double 6.7040660000000001
	.quad	0x4003e73ffac1d29e              # double 2.4879150000000001
	.quad	0x3fe01be6e6538690              # double 0.50340600000000002
	.quad	0x401606dc5d638866              # double 5.5067000000000004
	.quad	0x401259f40a2877ee              # double 4.5878449999999997
	.quad	0x3ff89f7b5aea3162              # double 1.5389360000000001
	.quad	0x400b8916440f2389              # double 3.4419369999999998
	.quad	0x4016588db0574b40              # double 5.5864779999999996
	.quad	0x4010c24cc6822ff1              # double 4.1897460000000004
	.quad	0x4013140c8472c0e8              # double 4.7695790000000002
	.quad	0x3fe854a1ad6451b9              # double 0.76033099999999998
	.quad	0x401f5667f90d9d77              # double 7.8343809999999995
	.quad	0x3ff13bbb62413db8              # double 1.077083
	.quad	0x400aa14c660a2014              # double 3.3287589999999998
	.quad	0x40231219c9d5a188              # double 9.5353530000000006
	.quad	0x4011986f47b677f7              # double 4.3988620000000003
	.quad	0x40206b9756c93a71              # double 8.2101389999999999
	.quad	0x3ff0ec7a7c9de050              # double 1.057734
	.quad	0x401e9cc74b838c11              # double 7.6531039999999999
	.quad	0x402324b90214ad36              # double 9.5717239999999997
	.quad	0x40182864883fd502              # double 6.0394459999999999
	.quad	0x3fb670f3882278d1              # double 0.087661000000000003
	.quad	0x3ffe98a548238540              # double 1.9122669999999999
	.quad	0x40035bdad7518b0d              # double 2.419851
	.quad	0x401861d2e0e30447              # double 6.0955310000000003
	.quad	0x4022d373f316e371              # double 9.4129939999999994
	.quad	0x40136e1693c03bc5              # double 4.8575080000000002
	.quad	0x3feb79b994e1a3f4              # double 0.85860899999999995
	.quad	0x401c44edf6124074              # double 7.0673139999999997
	.quad	0x40223393ee5eedcc              # double 9.1007379999999997
	.quad	0x4015645846e8f29d              # double 5.3479929999999998
	.quad	0x40130bcd78c436fc              # double 4.7615259999999999
	.quad	0x40139c56d5cfaace              # double 4.9026750000000003
	.quad	0x400545bd944aa540              # double 2.6590530000000001
	.quad	0x4003da2403148777              # double 2.4815140000000002
	.quad	0x4007a8fa7a85015c              # double 2.9575089999999999
	.quad	0x4019056da0168b5d              # double 6.2553010000000002
	.quad	0x3fecc881e4712e41              # double 0.89947600000000005
	.quad	0x401b1edd48451330              # double 6.7801410000000004
	.quad	0x3ff5dca29845dc83              # double 1.366366
	.quad	0x401622be48a58b3f              # double 5.5339289999999997
	.quad	0x401ffc6a3bddfca0              # double 7.996499
	.quad	0x40044cb641700cd8              # double 2.5374569999999999
	.quad	0x4019a089e34330d7              # double 6.4067759999999998
	.quad	0x402114ab1d4f9c20              # double 8.5403680000000008
	.quad	0x4015d434e3369b9d              # double 5.4572329999999996
	.quad	0x401ae95faa8a82a5              # double 6.7279039999999997
	.quad	0x40208aa9d627bf62              # double 8.2708270000000006
	.quad	0x40033bd512ec6bcf              # double 2.4042150000000002
	.quad	0x3fe6c7d5ed06fef8              # double 0.71189400000000003
	.quad	0x4008f4ddf86e3b47              # double 3.119564
	.quad	0x3ff63f8b9baa1512              # double 1.390514
	.quad	0x3ff93bd7b2031ceb              # double 1.57711
	.quad	0x40142d872f33ca32              # double 5.0444610000000001
	.quad	0x3ff37c8f32378ab1              # double 1.21791
	.quad	0x4022c002c0a4a05e              # double 9.3750210000000003
	.quad	0x4001a44284dfce31              # double 2.2052049999999999
	.quad	0x401d707075b3e143              # double 7.3598039999999996
	.quad	0x3ffc7bcb1cc96463              # double 1.7802230000000001
	.quad	0x3ff446876e1deacd              # double 1.2672190000000001
	.quad	0x401738cd20afa2f0              # double 5.8054699999999997
	.quad	0x3fd50ce4ead0c3d2              # double 0.32891199999999998
	.quad	0x401ffad3e920c06a              # double 7.9949490000000001
	.quad	0x4023e6d1394317ad              # double 9.9508150000000004
	.quad	0x4014c6e6d9be4cd7              # double 5.1942399999999997
	.quad	0x4021bdaee631f8a1              # double 8.8704750000000008
	.quad	0x400226601bc98a22              # double 2.2687379999999999
	.quad	0x40011ed7c6fbd274              # double 2.1400600000000001
	.quad	0x401bc2c12ad81adf              # double 6.9401900000000003
	.quad	0x3ff6433f85510d39              # double 1.391418
	.quad	0x400ac5ef62f9ca5c              # double 3.3466480000000001
	.quad	0x40149ac6045baf53              # double 5.1511459999999998
	.quad	0x4009c196d8f4f93c              # double 3.2195260000000001
	.quad	0x401c63e5fb71fbc6              # double 7.0975570000000001
	.quad	0x400f3c286f8ad256              # double 3.9043739999999998
	.quad	0x4016594face67d78              # double 5.587218
	.quad	0x402272b3892ee84b              # double 9.2240260000000003
	.quad	0x400d4ea18372e6a7              # double 3.6633939999999998
	.quad	0x4012773c0c1fc8f3              # double 4.6164399999999999
	.quad	0x402009172ef0ae53              # double 8.0177549999999993
	.quad	0x3ff8e131a8ef77f2              # double 1.5549789999999999
	.quad	0x401b19dbec2480e9              # double 6.7752530000000002
	.quad	0x3ff9201ffb480a5b              # double 1.570343
	.quad	0x400036db0dd82fd7              # double 2.0267849999999998
	.quad	0x3ffa3ccd0fe8ab50              # double 1.6398440000000001
	.quad	0x3ff16aa2a0a95853              # double 1.0885339999999999
	.quad	0x401f9a1c68ec52a4              # double 7.9004989999999999
	.quad	0x4020a897e996312f              # double 8.3292839999999995
	.quad	0x401ae11cf355cd92              # double 6.7198370000000001
	.quad	0x401ebfcc9ea9a3d3              # double 7.6873040000000001
	.quad	0x4023ab9c304ccee6              # double 9.8351760000000006
	.quad	0x400936cce5f7403e              # double 3.1517580000000001
	.quad	0x401feba1f4b1ee24              # double 7.9801099999999998
	.quad	0x3fee331a08bfc222              # double 0.94373799999999997
	.quad	0x401123ac929aa1d7              # double 4.2848379999999997
	.quad	0x4002f944241c3efb              # double 2.371712
	.quad	0x4011f047d3d4280b              # double 4.4846490000000001
	.quad	0x401dd5feda661284              # double 7.4589800000000004
	.quad	0x4020ac6f587d6f97              # double 8.3367869999999993
	.quad	0x401a61d14e3bcd36              # double 6.5955250000000003
	.quad	0x3fe18c6b484d76ab              # double 0.54839099999999996
	.quad	0x401377839cd8127b              # double 4.8667129999999998
	.quad	0x401960b73d188f43              # double 6.344449
	.quad	0x4020837995ee136e              # double 8.2567869999999992
	.quad	0x4021436523704791              # double 8.6316310000000005
	.quad	0x400093dc8b86b160              # double 2.0721980000000002
	.quad	0x4020e0b30b5aa716              # double 8.4388660000000009
	.quad	0x40032ec9e236c15d              # double 2.3978459999999999
	.quad	0x4011678bbd380453              # double 4.3511189999999997
	.quad	0x40014ed4e4c942d5              # double 2.1634920000000002
	.quad	0x401d74c6e6d9be4d              # double 7.3640400000000001
	.quad	0x40204c8d9f9053a0              # double 8.1495180000000005
	.quad	0x3fff0dc443914f48              # double 1.9408609999999999
	.quad	0x40208c306e5cd4ed              # double 8.2738069999999997
	.quad	0x4010ebe8bc169c24              # double 4.2303800000000003
	.quad	0x4015f807bbb62414              # double 5.4922170000000001
	.quad	0x3ff77b45f17bd8be              # double 1.4675959999999999
	.quad	0x40233709310129cc              # double 9.6074920000000005
	.quad	0x400466801711947d              # double 2.550049
	.quad	0x400db6ac647778dd              # double 3.7141959999999998
	.quad	0x40053cc964628028              # double 2.6546810000000001
	.quad	0x401a0f840181e03f              # double 6.5151519999999996
	.quad	0x400b946455eaee20              # double 3.447457
	.quad	0x4017c4a6eb91b3f2              # double 5.942043
	.quad	0x40190bcad9ad85e0              # double 6.2615160000000003
	.quad	0x401cc3a2df9378ee              # double 7.1910509999999999
	.quad	0x400b3ec679cc74b8              # double 3.4056519999999999
	.quad	0x40100aee631f8a09              # double 4.010675
	.quad	0x4020ea8a82a5614e              # double 8.4580880000000001
	.quad	0x4020f463497b7415              # double 8.4773200000000006
	.quad	0x3fa820817fc7607c              # double 0.047122999999999998
	.quad	0x402024968943e100              # double 8.0714609999999993
	.quad	0x40227946c332f017              # double 9.2368679999999994
	.quad	0x402398b3d4ae429e              # double 9.7982469999999999
	.quad	0x401fdfad6cb53501              # double 7.9684350000000003
	.quad	0x3fc010be9424e593              # double 0.12551100000000001
	.quad	0x3faaa4fca42aed14              # double 0.052040000000000003
	.quad	0x4022a863beec397a              # double 9.3288860000000007
	.quad	0x4008ea42aed13943              # double 3.114385
	.quad	0x3ff7a0407cc7d1bb              # double 1.4766239999999999
	.quad	0x3ff484f3ba775fb3              # double 1.282459
	.quad	0x400bb2e2fbe33acd              # double 3.4623469999999998
	.quad	0x40234963fdd65a14              # double 9.6433409999999994
	.quad	0x3fe669a6f826edab              # double 0.70039700000000005
	.quad	0x4018d8c8259e1f3a              # double 6.2117009999999997
	.quad	0x3ff923897204295a              # double 1.5711759999999999
	.quad	0x40055e774eebf65e              # double 2.6711260000000001
	.quad	0x40160cbd987c6328              # double 5.5124420000000001
	.quad	0x400a6fc2eba27aea              # double 3.3045710000000001
	.quad	0x401cf651f3e89a89              # double 7.2405470000000003
	.quad	0x40138ecaab8a5ce6              # double 4.8894450000000003
	.quad	0x401522a4db163bac              # double 5.2838320000000003
	.quad	0x4003ce9dd7ecbb80              # double 2.4758870000000002
	.quad	0x4021e26e75ff609e              # double 8.9422490000000003
	.quad	0x400386a8fc0d2c38              # double 2.4407519999999998
	.quad	0x3ff1c1e2584f4c6e              # double 1.1098349999999999
	.quad	0x3fd0a6d2674080fa              # double 0.26018200000000002
	.quad	0x4020d3ed527e5215              # double 8.4139199999999992
	.quad	0x4018c758e219652c              # double 6.1946750000000002
	.quad	0x401eb26fa3fcc9eb              # double 7.6742540000000003
	.quad	0x401ee8793dd97f63              # double 7.7270250000000002
	.quad	0x40085c560c7c0f45              # double 3.045086
	.quad	0x4000265492ff4ba5              # double 2.018716
	.quad	0x401a325785f8d2e5              # double 6.5491619999999999
	.quad	0x4022ee51d25aab47              # double 9.4654679999999995
	.quad	0x3ff94aa9717df19d              # double 1.5807279999999999
	.quad	0x400bd206c8711d7a              # double 3.4775520000000002
	.quad	0x4013e7fd3f5b5fa2              # double 4.9765519999999999
	.quad	0x40149fe8ab4fa483              # double 5.156161
	.quad	0x3feb2ffb04ee7c4a              # double 0.849607
	.quad	0x40088e82949a5658              # double 3.069585
	.quad	0x4021d694ee392e1f              # double 8.9191050000000001
	.quad	0x4012a725c3dee782              # double 4.6632300000000004
	.quad	0x4020b4a98aa8650e              # double 8.3528559999999992
	.quad	0x4014d5bc01a36e2f              # double 5.2087250000000003
	.quad	0x401f09691a75cd0c              # double 7.7591900000000003
	.quad	0x401442ed783dff3f              # double 5.0653589999999999
	.quad	0x400dd67c286f8ad2              # double 3.7297289999999998
	.quad	0x4014aa7ac81d3aa3              # double 5.1664839999999996
	.quad	0x401871a79fec99f2              # double 6.1109910000000003
	.quad	0x400bfa42f1ed17c6              # double 3.497198
	.quad	0x3ff678705425f202              # double 1.404404
	.quad	0x400bef48c2e770bd              # double 3.491838
	.quad	0x3ff17059641f6449              # double 1.0899289999999999
	.quad	0x4020bc9f94855da2              # double 8.3684049999999992
	.quad	0x40215edf61240746              # double 8.6852979999999995
	.quad	0x401e08ed1bf7ad4b              # double 7.5087169999999998
	.quad	0x40122fbb0e5e6794              # double 4.5466119999999997
	.quad	0x3fea4dea033e78e2              # double 0.82201100000000005
	.quad	0x400bd234eb9a176e              # double 3.4776400000000001
	.quad	0x402186b4a66559f7              # double 8.7630970000000001
	.quad	0x4013225d8d79d0a6              # double 4.7835599999999996
	.quad	0x401683dd11be6e65              # double 5.6287729999999998
	.quad	0x4020e870329802c1              # double 8.4539810000000006
	.quad	0x3ff484f3ba775fb3              # double 1.282459
	.quad	0x4002e3d4f15e7c8d              # double 2.361246
	.quad	0x4020289ca18bd662              # double 8.0793199999999992
	.quad	0x401ef1cde5d18091              # double 7.7361370000000002
	.quad	0x40117b89d6adf71f              # double 4.3706430000000003
	.quad	0x40120c82e019b0ab              # double 4.5122179999999998
	.quad	0x401b2c4156e264e5              # double 6.7932180000000004
	.quad	0x402272e5ffa3b9ae              # double 9.2244109999999999
	.quad	0x40081003686a4ca5              # double 3.007819
	.quad	0x40148d8ba40d90e2              # double 5.1382279999999998
	.quad	0x4023b813ec460ed8              # double 9.8595269999999999
	.quad	0x401123dd97f62b6b              # double 4.2850250000000001
	.quad	0x401b795e5aff2a17              # double 6.8685239999999999
	.quad	0x401e4e80389f83be              # double 7.5766609999999996
	.quad	0x400e8cac4b4d056c              # double 3.8186879999999999
	.quad	0x3ffefdc486ad2dcb              # double 1.936955
	.quad	0x3fb5d57ff9b56324              # double 0.085289000000000004
	.quad	0x3ffb1d26b723ee1c              # double 1.694617
	.quad	0x4004a8a936c58eeb              # double 2.582354
	.quad	0x401a9663c74fb54a              # double 6.646865
	.quad	0x3fd0c94b380cb6c8              # double 0.26228600000000002
	.quad	0x400d4ffd1dcd7061              # double 3.6640570000000001
	.quad	0x401eba24463065f9              # double 7.6817789999999996
	.quad	0x4023ce219652bd3c              # double 9.9025999999999996
	.quad	0x400c56b228dc981c              # double 3.542332
	.quad	0x3ffc7b2bba98eda2              # double 1.780071
	.quad	0x402196787ce95fab              # double 8.7938880000000008
	.quad	0x4021ae7253da72a8              # double 8.8407160000000005
	.quad	0x40205211ec918e32              # double 8.1602929999999994
	.quad	0x402076920c069e80              # double 8.2315830000000005
	.quad	0x401a9ef5232d2bb2              # double 6.6552319999999998
	.quad	0x401d9909f1f14984              # double 7.3994520000000001
	.quad	0x40142c664d3bf2f5              # double 5.0433589999999997
	.quad	0x40167f06705c896e              # double 5.6240480000000002
	.quad	0x40228af640639d5e              # double 9.2714099999999995
	.quad	0x4021aca83b1d0c80              # double 8.8372209999999995
	.quad	0x401b9c2b51bd61f6              # double 6.9025090000000002
	.quad	0x4021a486ad2dcb14              # double 8.8213399999999992
	.quad	0x40229dacabc51548              # double 9.3079579999999992
	.quad	0x4001d92428d434a0              # double 2.231026
	.quad	0x400f370de8f6ceff              # double 3.9018820000000001
	.quad	0x3fef798b71b8aa00              # double 0.98358699999999998
	.quad	0x401892467be553ac              # double 6.1428469999999997
	.quad	0x3ff9993e5fb71fbc              # double 1.5999129999999999
	.quad	0x40058c1a048e043a              # double 2.6934089999999999
	.quad	0x3fc771da37ef5a96              # double 0.18316199999999999
	.quad	0x40117e23f24d8fd6              # double 4.3731840000000002
	.quad	0x401ba7a56de3326a              # double 6.9137170000000001
	.quad	0x3fce0bed740c4157              # double 0.234739
	.quad	0x4007aedaa92e6213              # double 2.960378
	.quad	0x4014a06961c36977              # double 5.1566520000000002
	.quad	0x3fefd844d013a92a              # double 0.99514999999999998
	.quad	0x40044bb6ed677708              # double 2.5369700000000002
	.quad	0x4015d93dd97f62b7              # double 5.4621500000000003
	.quad	0x400c77b8d3f1843c              # double 3.5584579999999999
	.quad	0x40028366d7a56de3              # double 2.3141609999999999
	.quad	0x40232a619da9c993              # double 9.5827760000000008
	.quad	0x4013d661ae70c133              # double 4.9593569999999998
	.quad	0x400b5cb5781c7150              # double 3.4202680000000001
	.quad	0x3ff985692b3cc4ac              # double 1.5950709999999999
	.quad	0x4014f456b441bb8c              # double 5.2386119999999998
	.quad	0x401ab8a548238540              # double 6.6803179999999998
	.quad	0x401ab58d1526d8b2              # double 6.6772960000000001
	.quad	0x4016b62aa19439de              # double 5.6778969999999997
	.quad	0x3ff895ee136e71ce              # double 1.5366040000000001
	.quad	0x4006d1287c200c0f              # double 2.852128
	.quad	0x3fe98b0079a2834d              # double 0.79821799999999998
	.quad	0x40114d2cbea4ebdd              # double 4.3253659999999998
	.quad	0x400138433d6c7219              # double 2.1524719999999999
	.quad	0x401a393faf42784b              # double 6.5559070000000004
	.quad	0x4006aa9f7b5aea31              # double 2.8333119999999998
	.quad	0x4019eca6ca03c4b1              # double 6.4811050000000003
	.quad	0x40058ce032db1e9f              # double 2.6937869999999999
	.quad	0x400f4fe3f359ff50              # double 3.9140090000000001
	.quad	0x400facf7caa7589f              # double 3.959457
	.quad	0x3ff0901b003686a5              # double 1.035182
	.quad	0x40222431593e5fb7              # double 9.0706889999999998
	.quad	0x401cac9b41398634              # double 7.1685610000000004
	.quad	0x4019bbfdb4cc2507              # double 6.4335849999999999
	.quad	0x400765f7403dddb1              # double 2.9247879999999999
	.quad	0x401c5fa333764f12              # double 7.0933960000000003
	.quad	0x400fda83f4eca687              # double 3.981697
	.quad	0x401e568e820e6299              # double 7.5845279999999997
	.quad	0x400ed9620685553f              # double 3.856144
	.quad	0x3fb1351159c49774              # double 0.067215999999999998
	.quad	0x3ffd24c2f837b4a2              # double 1.821475
	.quad	0x400612e59af9ebea              # double 2.7592270000000001
	.quad	0x402084271fff79c8              # double 8.2581109999999995
	.quad	0x401fece746cb966c              # double 7.9813510000000001
	.quad	0x40149441355475a3              # double 5.1447799999999999
	.quad	0x4009eb9884c6a3be              # double 3.2400370000000001
	.quad	0x3fe4e73a365cb35f              # double 0.65322599999999997
	.quad	0x40011274e22a2c23              # double 2.1340119999999998
	.quad	0x401d264d3bf2f556              # double 7.2874040000000004
	.quad	0x4022a21f2990f302              # double 9.3166440000000001
	.quad	0x401d96b8305d95dd              # double 7.3971869999999997
	.quad	0x402039351159c497              # double 8.1117329999999992
	.quad	0x4015f67dbb16c1e3              # double 5.4907139999999997
	.quad	0x401a120afa2f05a7              # double 6.51762
	.quad	0x401e26249a133c1d              # double 7.537249
	.quad	0x4020d969a0ad8a11              # double 8.4246339999999993
	.quad	0x40224bdf8f473040              # double 9.1481899999999995
	.quad	0x4023a1656eefa1e4              # double 9.8152270000000001
	.quad	0x3fdb8c26138fffbd              # double 0.43042900000000001
	.quad	0x4023bab862b27cbf              # double 9.8646879999999992
	.quad	0x400fc007570c5650              # double 3.9687640000000002
	.quad	0x400e65425f202108              # double 3.7994430000000001
	.quad	0x3fe8b8bef8ceb357              # double 0.77255200000000002
	.quad	0x4003aa9d627bf61b              # double 2.4583080000000002
	.quad	0x4020d032b990afe6              # double 8.4066369999999999
	.quad	0x40110b95e5aff2a1              # double 4.2613139999999996
	.quad	0x401972cd7cf5f4e4              # double 6.3621119999999998
	.quad	0x4008b97785729b28              # double 3.09056
	.quad	0x3ffcf9ef0f16f438              # double 1.8110189999999999
	.quad	0x40192cdab191dde3              # double 6.2938029999999996
	.quad	0x40173f78bbd38045              # double 5.8119839999999998
	.quad	0x401fca78af3e468d              # double 7.9477260000000002
	.quad	0x3ff71528f190d174              # double 1.442666
	.quad	0x4021e99934efcbd5              # double 8.9562469999999994
	.quad	0x4022c049ecb31c22              # double 9.3755640000000007
	.quad	0x400757995ee136e7              # double 2.9177729999999999
	.quad	0x4014641355475a32              # double 5.0977300000000003
	.quad	0x4002cedbb59ddc1e              # double 2.3510049999999998
	.quad	0x40204cca70d1fa33              # double 8.1499819999999996
	.quad	0x3fe6b8d60a633051              # double 0.710063
	.quad	0x40187ecdd0d8cb08              # double 6.1238320000000002
	.quad	0x3fedace032db1e9f              # double 0.92735299999999998
	.quad	0x4015ed145d851655              # double 5.4815230000000001
	.quad	0x4016138b47c73eee              # double 5.5190859999999997
	.quad	0x40208d3cff64cf8d              # double 8.2758559999999992
	.quad	0x401b37a02fb5d031              # double 6.804322
	.quad	0x3ff335c182ecaeea              # double 1.2006239999999999
	.quad	0x40197acb85a4f00f              # double 6.3699170000000001
	.quad	0x3fcd6427c7c5260f              # double 0.22961899999999999
	.quad	0x401a458c8eef1bac              # double 6.5679189999999998
	.quad	0x4002121dda059a74              # double 2.2588460000000001
	.quad	0x401d9c17ebaf1023              # double 7.4024349999999997
	.quad	0x4018f1b823c85c25              # double 6.2360540000000002
	.quad	0x3ffec214ad362e90              # double 1.922383
	.quad	0x3ff95855970b49e0              # double 1.584066
	.quad	0x4012e78c868b9fdc              # double 4.7261220000000002
	.quad	0x4012fb48909289db              # double 4.7453940000000001
	.quad	0x40204357603925bb              # double 8.1315259999999991
	.quad	0x400f8cecc814d728              # double 3.9438110000000002
	.quad	0x4022d9a048e043a2              # double 9.4250509999999998
	.quad	0x40228c17225b749b              # double 9.2736140000000002
	.quad	0x401851fcd24e160e              # double 6.0800660000000004
	.quad	0x4003261e0c5a8156              # double 2.3936120000000001
	.quad	0x4022a8aaa7ded6bb              # double 9.3294270000000008
	.quad	0x3ff7b9096bb98c7e              # double 1.482675
	.quad	0x4014812556d19ded              # double 5.1261190000000001
	.quad	0x4023e8e347629521              # double 9.9548590000000007
	.quad	0x3ff402eba27ae9ab              # double 1.250713
	.quad	0x3fed6d41b75a74c1              # double 0.91958700000000004
	.quad	0x401876f976790321              # double 6.1161859999999999
	.quad	0x3fcacbd987c6327f              # double 0.209346
	.quad	0x401456b7ed41b75a              # double 5.0846859999999996
	.quad	0x401b7f505d0fa58f              # double 6.8743299999999996
	.quad	0x401aebc6eb0b7c35              # double 6.730251
	.quad	0x40176386d2ed783e              # double 5.847194
	.quad	0x4011884b1ab0856e              # double 4.3830989999999996
	.quad	0x40196fdda8bd230c              # double 6.3592440000000003
	.quad	0x3ffce30121682f94              # double 1.8054209999999999
	.quad	0x401f41c68ec52a41              # double 7.8142339999999999
	.quad	0x401579fe43675ddd              # double 5.3691339999999999
	.quad	0x401598f6cefed634              # double 5.3993789999999997
	.quad	0x401248f25a250f84              # double 4.571237
	.quad	0x4001a168b5cbff47              # double 2.2038129999999998
	.quad	0x4019d04a2fcefaa4              # double 6.4534079999999996
	.quad	0x4011d9246bf01323              # double 4.462053
	.quad	0x40158fa5d28d002e              # double 5.3902809999999999
	.quad	0x400c6f69ca9ef523              # double 3.5544009999999999
	.quad	0x3ff1d55c52e72da1              # double 1.11459
	.quad	0x4018adc6195464dc              # double 6.1697009999999999
	.quad	0x401726e935b91f71              # double 5.7879990000000001
	.quad	0x3fef3be878fabda1              # double 0.97606300000000001
	.quad	0x4023ee1bd1ed9dfe              # double 9.9650560000000006
	.quad	0x40204343d89ce4a8              # double 8.1313770000000005
	.quad	0x401be119ce075f70              # double 6.9698250000000002
	.quad	0x4021f164628027d9              # double 8.9714690000000008
	.quad	0x3fe3b884406c00da              # double 0.61627399999999999
	.quad	0x3fe86e3715400325              # double 0.76345399999999997
	.quad	0x40075505d0fa58f7              # double 2.916515
	.quad	0x3fedc28d434a01ac              # double 0.92999900000000002
	.quad	0x402167c286f8ad25              # double 8.7026559999999993
	.quad	0x4009cddb5525cc42              # double 3.2255159999999998
	.quad	0x4016ba9eb2074ea9              # double 5.6822460000000001
	.quad	0x4020c669f05ea24d              # double 8.3875270000000004
	.quad	0x40123fb8f57f737e              # double 4.5622290000000003
	.quad	0x40212156e264e486              # double 8.5651159999999997
	.quad	0x401f8bb0a2ca9ac3              # double 7.8864159999999996
	.quad	0x401085c853c14834              # double 4.1306469999999997
	.quad	0x3fd6032db1e9f278              # double 0.34394400000000003
	.quad	0x40169cb8e086bdf5              # double 5.6530490000000002
	.quad	0x400e0723aafff36b              # double 3.7534860000000001
	.quad	0x401888bef8ceb357              # double 6.1335410000000001
	.quad	0x401fb40639d5e4a4              # double 7.9258050000000004
	.quad	0x3fecd77d955714ba              # double 0.90130500000000002
	.quad	0x3fd1d10b1feeb2d1              # double 0.27838400000000002
	.quad	0x40160b1422ccb3a2              # double 5.5108189999999997
	.quad	0x3ff820d130df9bdc              # double 1.5080119999999999
	.quad	0x3fd41a60d4562e0a              # double 0.31411
	.quad	0x4021f5b59578a2a9              # double 8.9799009999999999
	.quad	0x4011ffed634549b6              # double 4.4999289999999998
	.quad	0x401eae2d1f1cfbb9              # double 7.6700939999999997
	.quad	0x4019d75b81301648              # double 6.4603099999999998
	.quad	0x4014db9991361dc9              # double 5.2144529999999998
	.quad	0x3ffcce23af31b153              # double 1.800327
	.quad	0x4020453a604e1e71              # double 8.135211
	.quad	0x40181fc0096feb4a              # double 6.0310059999999996
	.quad	0x40130596c82e019b              # double 4.755458
	.quad	0x400e5b3c81908e58              # double 3.7945489999999999
	.quad	0x401b5a4df47f993d              # double 6.8381879999999997
	.quad	0x3ff50a98aa8650e7              # double 1.3150869999999999
	.quad	0x4010cbca1059ea57              # double 4.1990129999999999
	.quad	0x3fff71832fcac8e7              # double 1.9652130000000001
	.quad	0x4011037de939eadd              # double 4.2534099999999997
	.quad	0x3ffcf221858bc59c              # double 1.8091140000000001
	.quad	0x400f3914f483cafb              # double 3.9028719999999999
	.quad	0x40057fd694ccab3f              # double 2.6874210000000001
	.quad	0x4018bcc814d7279a              # double 6.1843570000000003
	.quad	0x4022882ecaeea63b              # double 9.2659819999999993
	.quad	0x40217591ab8e8ea4              # double 8.7296270000000006
	.quad	0x401e1985271bcdbc              # double 7.5249220000000001
	.quad	0x3fb3ab10ba6266fd              # double 0.076828999999999995
	.quad	0x40106bf338716095              # double 4.1054199999999996
	.quad	0x40205a2dd7a99fa1              # double 8.1761309999999998
	.quad	0x3ff1208d08919ef9              # double 1.0704469999999999
	.quad	0x401928151a437825              # double 6.2891430000000001
	.quad	0x3fd940bbb1f255f3              # double 0.39457599999999998
	.quad	0x4017d8cb8e086bdf              # double 5.9617139999999997
	.quad	0x3fef469728a61177              # double 0.97736699999999998
	.quad	0x401387c8d195896a              # double 4.8826020000000003
	.quad	0x400ed90c0ad03d9b              # double 3.8559800000000002
	.quad	0x40200bd2fa0d77b8              # double 8.0230940000000004
	.quad	0x3ff6b2617c1bda51              # double 1.41855
	.quad	0x40197a00e27e0efa              # double 6.3691440000000004
	.quad	0x4008858b3f63c31e              # double 3.065207
	.quad	0x4011109d495182aa              # double 4.2662250000000004
	.quad	0x400d064a9cdc4439              # double 3.628072
	.quad	0x40213ee008e9b38d              # double 8.6228029999999993
	.quad	0x40236d7f0ed3d85a              # double 9.7138600000000004
	.quad	0x4018385a4f00ef13              # double 6.0550319999999997
	.quad	0x401fde0b0af5fd48              # double 7.9668390000000002
	.quad	0x4022f61c58255b03              # double 9.4806849999999993
	.quad	0x401d23365881a155              # double 7.2843869999999997
	.quad	0x4011b8b1572580c3              # double 4.430364
	.quad	0x401fbda4052d666b              # double 7.9351960000000003
	.quad	0x401e342e557de0d6              # double 7.5509579999999996
	.quad	0x4023b9f83be6601c              # double 9.8632220000000003
	.quad	0x402154e09784ec63              # double 8.6657759999999993
	.quad	0x400a6d61b2a27f1b              # double 3.3034089999999998
	.quad	0x4017f57a355043e5              # double 5.9897239999999998
	.quad	0x3fcbcbe61cffeb07              # double 0.21715999999999999
	.quad	0x401c533c1ce6c094              # double 7.0812840000000001
	.quad	0x3feebbe22e5de15d              # double 0.96043500000000003
	.quad	0x4002e0cf9e3864cb              # double 2.3597709999999998
	.quad	0x3f9f4b1ee2435697              # double 0.03056
	.quad	0x4000754da4ce8102              # double 2.057277
	.quad	0x401ab0cb6c7a7c9e              # double 6.6726510000000001
	.quad	0x3fc3a67a52ac753e              # double 0.15351799999999999
	.quad	0x402178ede54b48d4              # double 8.7361900000000005
	.quad	0x3ff49f36262cba73              # double 1.28887
	.quad	0x400c8a02b841248d              # double 3.5673879999999998
	.quad	0x40228c73abc94706              # double 9.2743199999999995
	.quad	0x40102491afc04c8c              # double 4.0357120000000002
	.quad	0x401cd5da6a444178              # double 7.2088409999999996
	.quad	0x401e9bd2b6f19935              # double 7.652171
	.quad	0x4020740e7bc3c5bd              # double 8.2266729999999999
	.quad	0x401ed78c0053e2d6              # double 7.7104949999999999
	.quad	0x3fdfc53b0813cab8              # double 0.49641299999999999
	.quad	0x4013621ee675147f              # double 4.8458209999999999
	.quad	0x401ebcbaf965b20c              # double 7.6843070000000004
	.quad	0x3fc002ea960b6fa0              # double 0.12508900000000001
	.quad	0x4022f89d8c6d612c              # double 9.4855769999999992
	.quad	0x4022e23b57c4e2f3              # double 9.4418589999999991
	.quad	0x4014d7d2c7b890d6              # double 5.2107650000000003
	.quad	0x40160d7518b0d0ee              # double 5.5131420000000002
	.quad	0x4011ce874c8ffb8b              # double 4.4516879999999999
	.quad	0x400c57dfa00e27e1              # double 3.542907
	.quad	0x400fcdf71eafee70              # double 3.9755690000000001
	.quad	0x3ff0ac204f2ae07e              # double 1.0420229999999999
	.quad	0x4022a4ddd6e04c06              # double 9.3220050000000008
	.quad	0x401ac789613d31ba              # double 6.6948600000000003
	.quad	0x401c62ca57a786c2              # double 7.0964749999999999
	.quad	0x4018e9c4113c6866              # double 6.2282869999999999
	.quad	0x400dad9cf13cee9e              # double 3.7097720000000001
	.quad	0x4012222c881e4713              # double 4.5333730000000001
	.quad	0x4023888d4bad7d7c              # double 9.7667029999999996
	.quad	0x400ad3c3e74afd54              # double 3.3534009999999999
	.quad	0x401c8f0dc768dfbd              # double 7.1397009999999996
	.quad	0x4022e53bf2f55582              # double 9.4477229999999999
	.quad	0x40177a9478c868ba              # double 5.869707
	.quad	0x40017df5cf2495e1              # double 2.1865039999999998
	.quad	0x402178880d801b43              # double 8.7354129999999994
	.quad	0x3fe90e1719f7f8cb              # double 0.78297000000000005
	.quad	0x40125b33daf8df7a              # double 4.5890649999999997
	.quad	0x4022f531b9b66f93              # double 9.4788949999999996
	.quad	0x4003e1b328b6d86f              # double 2.4852050000000001
	.quad	0x40061bb40b34e768              # double 2.7635269999999998
	.quad	0x400577c243dccea3              # double 2.6834760000000002
	.quad	0x3fab0ee49f51697f              # double 0.052847999999999999
	.quad	0x401161cde5d18091              # double 4.3455120000000003
	.quad	0x401001b089a02752              # double 4.0016499999999997
	.quad	0x4015024bba12b5e5              # double 5.2522419999999999
	.quad	0x3ff56bd3c3611340              # double 1.3388249999999999
	.quad	0x3fdad60e94ee392e              # double 0.41931499999999999
	.quad	0x40221e61f18c9fb6              # double 9.0593409999999999
	.quad	0x3fca0f4d7add15f0              # double 0.203592
	.quad	0x4009b01eabbcb1cd              # double 3.2109960000000002
	.quad	0x40128e9a2c669058              # double 4.6392600000000002
	.quad	0x401e855432873bc9              # double 7.6302039999999999
	.quad	0x401895970b49e01e              # double 6.1460840000000001
	.quad	0x40173f6837f7be12              # double 5.8119209999999999
	.quad	0x3feb31ceaf251c19              # double 0.84982999999999997
	.quad	0x40238e6dbd72bcb6              # double 9.778181
	.quad	0x3fcf320d9945b6c3              # double 0.24371499999999999
	.quad	0x401b572f76e6106b              # double 6.8351420000000003
	.quad	0x4020011ba3ca7504              # double 8.0021640000000004
	.quad	0x401b13d07c84b5dd              # double 6.7693500000000002
	.quad	0x40176ed6fda836eb              # double 5.8582419999999997
	.quad	0x3fe3539fba450acc              # double 0.60395799999999999
	.quad	0x4022efbc7f77af64              # double 9.4682349999999999
	.quad	0x402320e8427418d7              # double 9.5642720000000007
	.quad	0x400923465625a683              # double 3.1422240000000001
	.quad	0x400cdf0b28522ea1              # double 3.608908
	.quad	0x401122e2b8c75c4b              # double 4.2840680000000004
	.quad	0x4019f3800218def4              # double 6.4877929999999999
	.quad	0x401a394d0dcfcc5c              # double 6.5559580000000004
	.quad	0x3ff5e24031487768              # double 1.367737
	.quad	0x4011bea3df6db941              # double 4.436172
	.quad	0x4021bc845132f87b              # double 8.8681970000000003
	.quad	0x40033518b0d0edc4              # double 2.4009260000000001
	.quad	0x3fd9b178b3700475              # double 0.40145700000000001
	.quad	0x3ff9421f2990f302              # double 1.578643
	.quad	0x3ff71ecf63800219              # double 1.445022
	.quad	0x401eafafc8b0079a              # double 7.6715689999999999
	.quad	0x401b904d12018a44              # double 6.8909190000000002
	.quad	0x401947baa9b499d0              # double 6.3200479999999999
	.quad	0x3fea035bd512ec6c              # double 0.81291000000000002
	.quad	0x4014bd4e8fb00bcc              # double 5.1848700000000001
	.quad	0x402109a47a9e2bd0              # double 8.5188330000000008
	.quad	0x3ff67cbe61cffeb0              # double 1.4054549999999999
	.quad	0x400bac34c1a8ac5c              # double 3.459085
	.quad	0x400cc04e1e71044f              # double 3.593899
	.quad	0x4017481a9b8cb8e1              # double 5.8204140000000004
	.quad	0x4013f3b7521144cc              # double 4.9880040000000001
	.quad	0x40164a65cf67b1c0              # double 5.572654
	.quad	0x401d3daf8df7a4e8              # double 7.3102400000000002
	.quad	0x4008928283d35eb7              # double 3.0715379999999999
	.quad	0x40160e004b7f5a53              # double 5.5136729999999998
	.quad	0x401e243419e30015              # double 7.535355
	.quad	0x3fec3c7d5ed06fef              # double 0.88238399999999995
	.quad	0x4017832fcac8e68e              # double 5.8781119999999998
	.quad	0x3fe9138bcdfefbf4              # double 0.78363599999999999
	.quad	0x401e219f3c70c997              # double 7.5328340000000002
	.quad	0x4004b8b502ababeb              # double 2.5901890000000001
	.quad	0x401285df2239e6ac              # double 4.6307340000000003
	.quad	0x401a6ee7c49fd7a1              # double 6.6083059999999998
	.quad	0x40025761cbccf28c              # double 2.2926669999999998
	.quad	0x400bbdff3f0fe048              # double 3.4677720000000001
	.quad	0x401e531769a91106              # double 7.5811440000000001
	.quad	0x402213441bb8c32b              # double 9.0376290000000008
	.quad	0x4020cfc371da37ef              # double 8.4057879999999994
	.quad	0x4011218dac258d58              # double 4.2827669999999998
	.quad	0x400118e29f9ce8d9              # double 2.1371509999999998
	.quad	0x4015fa333764f11b              # double 5.4943359999999997
	.quad	0x3fe3304039abf338              # double 0.59963999999999995
	.quad	0x401f4e71476af89c              # double 7.8266039999999997
	.quad	0x4022c3c68661ae71              # double 9.3823740000000004
	.quad	0x40200e6ba493c89f              # double 8.0281649999999996
	.quad	0x4015408b32ce8965              # double 5.3130309999999996
	.quad	0x4013de22a2c23748              # double 4.9669290000000004
	.quad	0x402185fe75bc44bf              # double 8.7617069999999995
	.quad	0x3fcb4ccab3edd8b6              # double 0.213281
	.quad	0x4003183cf2cf95d5              # double 2.386835
	.quad	0x3fef690bc7b45f18              # double 0.98157300000000002
	.quad	0x4021a6d99cbee808              # double 8.8258790000000005
	.quad	0x4018638ef34d6a16              # double 6.0972249999999999
	.quad	0x4021c53bf2f55582              # double 8.8852229999999999
	.quad	0x400b5061c79b34a4              # double 3.4142489999999999
	.quad	0x401ac71b47842310              # double 6.6944400000000002
	.quad	0x4014e806f262888b              # double 5.2265889999999997
	.quad	0x4010cd102bc72e27              # double 4.2002569999999997
	.quad	0x401c35b035bd512f              # double 7.0524300000000002
	.quad	0x401dc410b630a915              # double 7.4414699999999998
	.quad	0x402094280ae10492              # double 8.2893679999999996
	.quad	0x40234437a3db3bfb              # double 9.6332369999999993
	.quad	0x401e71bc126a65cf              # double 7.6110689999999996
	.quad	0x401c3a21ea359360              # double 7.0567700000000002
	.quad	0x401800d2c386d2ed              # double 6.0008039999999996
	.quad	0x4015b18fc504816f              # double 5.4234
	.quad	0x4015542edbb59ddc              # double 5.3322099999999999
	.quad	0x401cf439de481f54              # double 7.2385020000000004
	.quad	0x40223bec892ab68d              # double 9.1170390000000001
	.quad	0x401b6a24463065f9              # double 6.8536539999999997
	.quad	0x402054f9a06a6e33              # double 8.1659670000000002
	.quad	0x40034b7dc7abfb9c              # double 2.411861
	.quad	0x3ff4e2e6ea854478              # double 1.305396
	.quad	0x3fd1995ee136e71d              # double 0.27498600000000001
	.quad	0x40218f75d9a0f0a6              # double 8.7801960000000001
	.quad	0x3fd33b29a1b9f98b              # double 0.30048599999999998
	.quad	0x4022fec52a411c2a              # double 9.497598
	.quad	0x4013a702e6644d87              # double 4.9130969999999996
	.quad	0x401772e2b8c75c4b              # double 5.8621930000000004
	.quad	0x4004cd1c7de5082d              # double 2.600152
	.quad	0x400928e92d55a3a1              # double 3.1449760000000002
	.quad	0x401ff0c23fab10ba              # double 7.9851159999999997
	.quad	0x3feb35f1bef49cf5              # double 0.85033499999999995
	.quad	0x4014155b4677b396              # double 5.0208560000000002
	.quad	0x40024e0b912dba4d              # double 2.2881079999999998
	.quad	0x401ffa80064a9cdc              # double 7.9946289999999998
	.quad	0x401857a311e85fd0              # double 6.0855829999999997
	.quad	0x3fe9e1a60d4562e1              # double 0.80879500000000004
	.quad	0x4021bc4b4d056c51              # double 8.8677620000000008
	.quad	0x40161e03f705857b              # double 5.529312
	.quad	0x400e044b6e935b92              # double 3.752097
	.quad	0x4021985d0fa58f71              # double 8.7975849999999998
	.quad	0x401b5c98e53eb39a              # double 6.840427
	.quad	0x3fef3c536d655e29              # double 0.97611400000000003
	.quad	0x401fbd8e0008637c              # double 7.9351120000000002
	.quad	0x3ff47060bb2bba99              # double 1.277436
	.quad	0x4013e61ae70c1334              # double 4.9747120000000002
	.quad	0x40175ac6045baf53              # double 5.8386459999999998
	.quad	0x4013e47991bc5586              # double 4.9731199999999998
	.quad	0x40199db9841aac54              # double 6.4040280000000003
	.quad	0x401ec2962cfd8f0c              # double 7.6900259999999996
	.quad	0x3fc4371da37ef5a9              # double 0.15793199999999999
	.quad	0x4010e5054ac29bf1              # double 4.2236529999999997
	.quad	0x402391bc126a65cf              # double 9.7846379999999992
	.quad	0x40187946c332f017              # double 6.1184339999999997
	.quad	0x4012234acaff6d33              # double 4.534465
	.quad	0x4019d7c6fbd273d6              # double 6.4607200000000002
	.quad	0x40210d3fe1975f2d              # double 8.5258780000000005
	.quad	0x3fff00ee06d93815              # double 1.937727
	.quad	0x4013e4a90470a809              # double 4.9733010000000002
	.quad	0x401d43cddd6e04c0              # double 7.3162149999999997
	.quad	0x40133b6848beb5b3              # double 4.8080150000000001
	.quad	0x3fdb61ed5ae1cde6              # double 0.42785200000000001
	.quad	0x400e9be6601bc98a              # double 3.8261229999999999
	.quad	0x40164cad14a0a0f5              # double 5.5748790000000001
	.quad	0x400ec5100a393ee6              # double 3.846222
	.quad	0x4014388051c9f72f              # double 5.0551769999999996
	.quad	0x40139abb8800eae2              # double 4.9011060000000004
	.quad	0x4003e4b3c3e74afd              # double 2.4866709999999999
	.quad	0x3fbf8a6dacabc515              # double 0.123206
	.quad	0x3fe82c16df3f9618              # double 0.755382
	.quad	0x40112666234a87e4              # double 4.2874990000000004
	.quad	0x400dd28d002e2329              # double 3.727808
	.quad	0x40178992428d434a              # double 5.884347
	.quad	0x4010adbb9cf9a06a              # double 4.1696609999999996
	.quad	0x3fd39e30014f8b59              # double 0.30653000000000002
	.quad	0x3fc812be48a58b3f              # double 0.18807199999999999
	.quad	0x40207745bf26f1dc              # double 8.2329539999999994
	.quad	0x400fa9802c0a4a06              # double 3.9577640000000001
	.quad	0x401a041aac53b081              # double 6.5040079999999998
	.quad	0x3ff4827525460aa6              # double 1.2818499999999999
	.quad	0x4005238d1d8a5482              # double 2.6423589999999999
	.quad	0x3ff41b8023a6ce36              # double 1.2567140000000001
	.quad	0x401bfc4dec1c1d6d              # double 6.996391
	.quad	0x4005e0e51d25aab4              # double 2.7348119999999998
	.quad	0x40037d052934acb0              # double 2.436045
	.quad	0x401b4c1f42bb6673              # double 6.824338
	.quad	0x4013978d0cc35ce2              # double 4.8979990000000004
	.quad	0x3ffb8388ebcc6c55              # double 1.7196130000000001
	.quad	0x3ff9197d49d7ba67              # double 1.5687230000000001
	.quad	0x3fbf65ecc3e3193f              # double 0.12264899999999999
	.quad	0x40235e8a50507a6c              # double 9.6846490000000002
	.quad	0x40230e555c52e72e              # double 9.5279950000000007
	.quad	0x3ffe033c60029f17              # double 1.8757900000000001
	.quad	0x4020f98aa8650e78              # double 8.4873860000000008
	.quad	0x3ff2657b84db9c73              # double 1.1497759999999999
	.quad	0x40121d527e521577              # double 4.5286350000000004
	.quad	0x400ba6f36ef80560              # double 3.4565190000000001
	.quad	0x4023d43bd5992429              # double 9.9145190000000003
	.quad	0x3ff1798201cd5f9a              # double 1.0921650000000001
	.quad	0x401cdbd4067cf1c3              # double 7.2146759999999999
	.quad	0x402340e325d4a5df              # double 9.6267329999999997
	.quad	0x40025a22706d5065              # double 2.2940109999999998
	.quad	0x4019826916440f24              # double 6.3773540000000004
	.quad	0x4000456de33269e0              # double 2.0339010000000002
	.quad	0x4018fe3da2f8bdec              # double 6.2482819999999997
	.quad	0x4016369014b599aa              # double 5.5532839999999997
	.quad	0x3ff2163886594af5              # double 1.130425
	.quad	0x40230fcbb3c81909              # double 9.5308510000000001
	.quad	0x40164913e81450f0              # double 5.5713650000000001
	.quad	0x3fec84b5dcc63f14              # double 0.89119999999999999
	.quad	0x40090364bec679cc              # double 3.1266569999999998
	.quad	0x3fd3685db76b3bb8              # double 0.30324499999999999
	.quad	0x402118e4da09cc32              # double 8.5486210000000007
	.quad	0x40137254e6e221c9              # double 4.8616520000000003
	.quad	0x401ea044f1a1986c              # double 7.6565130000000003
	.quad	0x4013b3c81908e582              # double 4.9255680000000002
	.quad	0x4005e68986fcdee3              # double 2.7375669999999999
	.quad	0x40226f5ad96a6a01              # double 9.2174899999999997
	.quad	0x401d74a2b9d3cbc5              # double 7.3639020000000004
	.quad	0x4010398fe69270b0              # double 4.0562129999999996
	.quad	0x40234fadafd11383              # double 9.6556219999999992
	.quad	0x4023d3d230b9dc2f              # double 9.9137129999999995
	.quad	0x40136750c1b97354              # double 4.8508940000000003
	.quad	0x40216754d1e96c40              # double 8.7018190000000004
	.quad	0x4015a10624dd2f1b              # double 5.4072500000000003
	.quad	0x40012f9096bb98c8              # double 2.1482250000000001
	.quad	0x40055102bc72e276              # double 2.6645560000000001
	.quad	0x40215795703f2d3c              # double 8.6710619999999991
	.quad	0x402238a4a05dd8f9              # double 9.1106309999999997
	.quad	0x4013a3dab5c39bcc              # double 4.9100140000000003
	.quad	0x3fd8cdab191dde37              # double 0.38755299999999998
	.quad	0x4000b6af89c5e6ff              # double 2.0892019999999998
	.quad	0x4013d7b28954a7f8              # double 4.960642
	.quad	0x3fd44a3c64345cff              # double 0.31703100000000001
	.quad	0x3ff3d1cb039ef0f1              # double 1.2387189999999999
	.quad	0x40190d8cf398e970              # double 6.2632329999999996
	.quad	0x3fecc8b0079a2835              # double 0.89949800000000002
	.quad	0x3ffac21f2990f302              # double 1.672393
	.quad	0x401899680e065300              # double 6.1498109999999997
	.quad	0x4021adb0dd82fd76              # double 8.8392400000000002
	.quad	0x4011aba01eeed890              # double 4.4176029999999997
	.quad	0x3fc8a14057082492              # double 0.19242100000000001
	.quad	0x400d8db8bac710cb              # double 3.6941999999999999
	.quad	0x400b75cd0bb6ed67              # double 3.4325199999999998
	.quad	0x4020e3aafff36ac6              # double 8.4446639999999995
	.quad	0x4010432ebe596c83              # double 4.0656080000000001
	.quad	0x4016c2a94ff0025c              # double 5.690099
	.quad	0x4003a3632c1f42bb              # double 2.4547789999999998
	.quad	0x40017b5286b59147              # double 2.185216
	.quad	0x4010a07ee0b0af60              # double 4.1567340000000002
	.quad	0x4023d7fb267c6b8b              # double 9.9218379999999992
	.quad	0x40158d755bccaf71              # double 5.3881430000000003
	.quad	0x401cf2656abde3fc              # double 7.2367150000000002
	.quad	0x3ffdf1f46ed245b3              # double 1.8715710000000001
	.quad	0x401d12a38b8ae31d              # double 7.2682019999999996
	.quad	0x401a07a4e7ab7564              # double 6.5074649999999998
	.quad	0x3feabb05faebc409              # double 0.83533000000000002
	.quad	0x400e2234a87e38eb              # double 3.766702
	.quad	0x3fdece9a2c669058              # double 0.48136000000000001
	.quad	0x40195d1cc100e6b0              # double 6.3409300000000002
	.quad	0x40062d81adea8976              # double 2.7722199999999999
	.quad	0x401162862f5989df              # double 4.3462149999999999
	.quad	0x4022514317acc4f0              # double 9.1587150000000008
	.quad	0x4015ed1633482be9              # double 5.4815300000000002
	.quad	0x401baff21b3aeee9              # double 6.9218219999999997
	.quad	0x401aba28fe260b2d              # double 6.6817970000000004
	.quad	0x401e362456f75d9a              # double 7.5528729999999999
	.quad	0x402280d477bbf940              # double 9.251621
	.quad	0x4001955e6bc621b8              # double 2.1979340000000001
	.quad	0x400d67fe4bcad9ae              # double 3.6757780000000002
	.quad	0x4013542f1ed17c5f              # double 4.832211
	.quad	0x4023c5ca8e2e2b8c              # double 9.8863109999999991
	.quad	0x4015452a411c2a02              # double 5.3175439999999998
	.quad	0x401a7e90795f676f              # double 6.6235980000000003
	.quad	0x4009ad00b45ae600              # double 3.2094740000000002
	.quad	0x4023ee66ec9e236c              # double 9.9656289999999998
	.quad	0x40236eafcce1c582              # double 9.7161849999999994
	.quad	0x4013cd9a95421c04              # double 4.9507849999999998
	.quad	0x4014b022dd7a99fa              # double 5.1720079999999999
	.quad	0x401cc465e8922531              # double 7.1917949999999999
	.quad	0x401a4268900c521e              # double 6.5648520000000001
	.quad	0x3ffa5bca9691a75d              # double 1.64741
	.quad	0x402301b994e1a3f4              # double 9.5033689999999992
	.quad	0x401442d1aeb3dd12              # double 5.0652530000000002
	.quad	0x401df334c5da6a44              # double 7.4875059999999998
	.quad	0x3ff486a1a500d5e9              # double 1.282869
	.quad	0x401a63dd54da4ce8              # double 6.5975239999999999
	.quad	0x4001b717df19d66b              # double 2.2144010000000001
	.quad	0x400abd66277c45cc              # double 3.3424800000000001
	.quad	0x3fce58dde7a743a6              # double 0.23708699999999999
	.quad	0x400d84cdfaca361a              # double 3.6898460000000002
	.quad	0x3fe16f911cf355ce              # double 0.54486900000000005
	.quad	0x401b1d3f9e7b80aa              # double 6.7785630000000001
	.quad	0x4018d83d35eb7458              # double 6.2111710000000002
	.quad	0x3fda5308bb906467              # double 0.41131800000000002
	.quad	0x400ad342edbb59de              # double 3.3531550000000001
	.quad	0x3fe655ef1fddebd9              # double 0.69799
	.quad	0x4019cb1feeb2d0a2              # double 6.4483639999999998
	.quad	0x400bd9756c93a711              # double 3.4811809999999999
	.quad	0x4015311276fb0920              # double 5.2979219999999998
	.quad	0x400d69142b302f73              # double 3.6763080000000001
	.quad	0x401123ec02f2f987              # double 4.2850799999999998
	.quad	0x401591cffeb074a7              # double 5.3923949999999996
	.quad	0x4021c3986338b47c              # double 8.8820219999999991
	.quad	0x4022c058793dd97f              # double 9.3756749999999993
	.quad	0x3fe75efa615a8deb              # double 0.73034399999999999
	.quad	0x3fe9334e7685985b              # double 0.78751300000000002
	.quad	0x401e784a0e410b63              # double 7.6174699999999999
	.quad	0x4018f99a1fd1569f              # double 6.2437519999999997
	.quad	0x3fd6baa1511dffc5              # double 0.35514099999999998
	.quad	0x4000706573215fcc              # double 2.054881
	.quad	0x40077c4da9003eea              # double 2.9356949999999999
	.quad	0x402072839042d8c3              # double 8.2236600000000006
	.quad	0x40207f98d8a979e1              # double 8.2492129999999992
	.quad	0x400304cb5bb384fd              # double 2.3773409999999999
	.quad	0x40138c73eee52589              # double 4.8871609999999999
	.quad	0x401d975fb2edfe76              # double 7.3978260000000002
	.quad	0x401de3aeab7995ee              # double 7.4723459999999999
	.quad	0x40238289b951c5c5              # double 9.7549569999999992
	.quad	0x4021aad5bee3d5fe              # double 8.8336620000000003
	.quad	0x400f0d612c6ac216              # double 3.8815330000000001
	.quad	0x3ffbe5ffa3b9ae0c              # double 1.743652
	.quad	0x400e70d5a5b9628d              # double 3.8050950000000001
	.quad	0x401b0da1ec4e7254              # double 6.7633130000000001
	.quad	0x4015a79af1886df8              # double 5.4136769999999999
	.quad	0x40033f84cad57bc8              # double 2.406015
	.quad	0x40045a5fc7e6b3ff              # double 2.5441280000000002
	.quad	0x4006bf79420b3d4b              # double 2.843493
	.quad	0x3ffb61804d983947              # double 1.7113039999999999
	.quad	0x40123113404ea4a9              # double 4.5479250000000002
	.quad	0x3ff7bdf6db940fed              # double 1.483878
	.quad	0x4018c3bc4d22c882              # double 6.1911480000000001
	.quad	0x4021c2e536501e26              # double 8.8806550000000009
	.quad	0x3fe7cd530489d27c              # double 0.74381399999999998
	.quad	0x3ff6f7d0f1f57b42              # double 1.4355020000000001
	.quad	0x3ffe7ea704bc2763              # double 1.905921
	.quad	0x40162371971c10d8              # double 5.5346130000000002
	.quad	0x3ffd82528ae74f2f              # double 1.844317
	.quad	0x40200888509bf9c6              # double 8.0166649999999997
	.quad	0x400cb7446f9b994e              # double 3.589486
	.quad	0x40210635e74299d9              # double 8.5121300000000009
	.quad	0x400df2756861e929              # double 3.7433879999999999
	.quad	0x400f49731098d478              # double 3.9108640000000001
	.quad	0x400f389efd86a8fc              # double 3.902647
	.quad	0x4022b1bb2788db05              # double 9.3471309999999992
	.quad	0x3ff458c4bd33d295              # double 1.2716719999999999
	.quad	0x4023011afc04c8bd              # double 9.5021590000000006
	.quad	0x4020b19a847b2464              # double 8.3468820000000008
	.quad	0x40015302f72b4528              # double 2.1655329999999999
	.quad	0x40223a671ef30a4e              # double 9.1140679999999996
	.quad	0x3fe00e12e83a109d              # double 0.501718
	.quad	0x400b058cd20afa2f              # double 3.37771
	.quad	0x400171f57b41bfbe              # double 2.180644
	.quad	0x3ff68ca1cef240fb              # double 1.4093340000000001
	.quad	0x40020a7935760392              # double 2.2551139999999998
	.quad	0x40035049235f8099              # double 2.414202
	.quad	0x4007c4d8fd5cb791              # double 2.971117
	.quad	0x401017edc7ef177a              # double 4.0233679999999996
	.quad	0x401242e1693c03bc              # double 4.5653129999999997
	.quad	0x4010c7d2c7b890d6              # double 4.1951400000000003
	.quad	0x401c7a433508f649              # double 7.1193970000000002
	.quad	0x4021b49667b5f1bf              # double 8.8527100000000001
	.quad	0x4000d69984a0e411              # double 2.1047850000000001
	.quad	0x401c20f4d7add15f              # double 7.032184
	.quad	0x4000e4955b4677b4              # double 2.1116130000000002
	.quad	0x4001344dca8e2e2c              # double 2.1505390000000002
	.quad	0x3fd8efe4ffc9795b              # double 0.38964199999999999
	.quad	0x401dd8b652370479              # double 7.461633
	.quad	0x400fd00ef1348b22              # double 3.976591
	.quad	0x40220e111276fb09              # double 9.0274739999999998
	.quad	0x400625a250f84018              # double 2.7683759999999999
	.quad	0x400a42f166e008ea              # double 3.2826870000000001
	.quad	0x402122e5796bfca8              # double 8.5681569999999994
	.quad	0x4004ade8709741d1              # double 2.5849160000000002
	.quad	0x401f772bcb5fe543              # double 7.866378
	.quad	0x401d271ef30a4e38              # double 7.2882040000000003
	.quad	0x401e8cc6c54bcf0b              # double 7.6374769999999996
	.quad	0x4013af2c7325918a              # double 4.921068
	.quad	0x3ffe75a74c09c3ce              # double 1.903724
	.quad	0x400110c9107faa04              # double 2.1331959999999999
	.quad	0x401de946c332f017              # double 7.4778089999999997
	.quad	0x40111f8c64fdb09a              # double 4.2808089999999996
	.quad	0x3fffbf5b5fa22707              # double 1.984218
	.quad	0x402022cc2d6a9c56              # double 8.0679639999999999
	.quad	0x4009570bd017dae8              # double 3.167503
	.quad	0x401bc7d8cf398e97              # double 6.945163
	.quad	0x4015c44178705426              # double 5.441656
	.quad	0x401c4d441355475a              # double 7.0754549999999998
	.quad	0x401b086df82b1f68              # double 6.7582319999999996
	.quad	0x3fff8cd423d9231c              # double 1.9718819999999999
	.quad	0x400bb1337eb28d86              # double 3.4615239999999998
	.quad	0x3ff18372e6a76966              # double 1.094592
	.quad	0x40112909289dadfb              # double 4.2900739999999997
	.quad	0x4021774aba387592              # double 8.7329919999999994
	.quad	0x3fe01e7967caea74              # double 0.50371999999999995
	.quad	0x4018b1dd5d3dc8b8              # double 6.1736959999999996
	.quad	0x3ff1cbc05d52c16e              # double 1.112244
	.quad	0x4004c00c0f01fb83              # double 2.5937730000000001
	.quad	0x401028b9baa1511e              # double 4.039771
	.quad	0x3fdd12e83a109d06              # double 0.45427899999999999
	.quad	0x401f4fb480a5accd              # double 7.8278369999999997
	.quad	0x401a621f2990f302              # double 6.5958220000000001
	.quad	0x401319e34330d738              # double 4.7752809999999997
	.quad	0x3ff46f72b4528284              # double 1.277209
	.quad	0x4010b1d2178f68be              # double 4.1736529999999998
	.quad	0x4008d424e5929670              # double 3.103586
	.quad	0x40205312b1b36bd3              # double 8.1622520000000005
	.quad	0x400de9f7b5aea316              # double 3.739242
	.quad	0x4015be1e71044f1a              # double 5.4356629999999999
	.quad	0x40049c610f0e90bc              # double 2.5763569999999998
	.quad	0x401cf138bcdfefbf              # double 7.2355679999999998
	.quad	0x401da6bc621b7e0b              # double 7.4128280000000002
	.quad	0x401de89a88ace24c              # double 7.4771520000000002
	.quad	0x401766e47dc37a3e              # double 5.8504810000000003
	.quad	0x400cfe6d58c8eef2              # double 3.6242320000000001
	.quad	0x400411fd5885d313              # double 2.5087839999999999
	.quad	0x40200469728a6117              # double 8.0086169999999992
	.quad	0x4003351372a38b8b              # double 2.4009160000000001
	.quad	0x4009f47f993d5348              # double 3.2443840000000002
	.quad	0x40178a30984e3fff              # double 5.884951
	.quad	0x4023ce18266772d6              # double 9.9025280000000002
	.quad	0x3ff08372e6a76966              # double 1.032092
	.quad	0x4022d515f02c4d66              # double 9.4161830000000002
	.quad	0x401499652bd3c361              # double 5.1497999999999999
	.quad	0x401c08537e2c55c9              # double 7.0081309999999997
	.quad	0x401f74b5dcc63f14              # double 7.8639749999999999
	.quad	0x3ff7b2f33ca31e7e              # double 1.4811890000000001
	.quad	0x4016f672756861e9              # double 5.7406709999999999
	.quad	0x400e1fa97e132b56              # double 3.76546
	.quad	0x3ff012b90a782907              # double 1.0045710000000001
	.quad	0x4018b7446f9b994e              # double 6.1789719999999999
	.quad	0x401461b2a27f1b69              # double 5.0954079999999999
	.quad	0x3fdb2e557de0d66f              # double 0.424703
	.quad	0x3fe9681882adc4ca              # double 0.79395700000000002
	.quad	0x40132043e5321e60              # double 4.7815089999999998
	.quad	0x401429d27c393682              # double 5.0408419999999996
	.quad	0x4009c1919ac79703              # double 3.219516
	.quad	0x40040cdb7ae5796c              # double 2.506278
	.quad	0x40033611ba3ca750              # double 2.4014009999999999
	.quad	0x40113f1a1986b9c3              # double 4.311623
	.quad	0x40220c044284dfce              # double 9.0234699999999997
	.quad	0x4015fe06d938151a              # double 5.4980729999999998
	.quad	0x4021e77f498c3b0c              # double 8.9521429999999995
	.quad	0x3fec74927913e814              # double 0.88922999999999996
	.quad	0x401417518b0d0edc              # double 5.0227719999999998
	.quad	0x4007aef5ec80c73b              # double 2.9604300000000001
	.quad	0x402090d1958969a1              # double 8.2828490000000006
	.quad	0x401046f9b994e1a4              # double 4.069312
	.quad	0x401c2dbe3c105187              # double 7.0446710000000001
	.quad	0x400accb20fb224ab              # double 3.3499490000000001
	.quad	0x40005549f94855da              # double 2.0416449999999999
	.quad	0x4015f4b945308bb9              # double 5.488988
	.quad	0x3feded7c6fbd273d              # double 0.93523999999999996
	.quad	0x40115d77318fc505              # double 4.3412750000000004
	.quad	0x4004a9bf162ae4b0              # double 2.582884
	.quad	0x4014420d9945b6c3              # double 5.0645049999999996
	.quad	0x40170b6d86ec17ec              # double 5.7611600000000003
	.quad	0x401d146a1a500d5f              # double 7.2699360000000004
	.quad	0x401ae5a921ccd962              # double 6.724278
	.quad	0x4019fcedd4845133              # double 6.497001
	.quad	0x40176136a400fba9              # double 5.8449350000000004
	.quad	0x400046d1e108c3f4              # double 2.0345800000000001
	.quad	0x4022aa67e846a5d7              # double 9.3328240000000005
	.quad	0x40091437c5692b3d              # double 3.1348720000000001
	.quad	0x4020e1a32b12d341              # double 8.4406979999999994
	.quad	0x401f17e846a5d6bf              # double 7.7733470000000002
	.quad	0x3fe92a62aa19439e              # double 0.78642400000000001
	.quad	0x401c4014f8b588e3              # double 7.0625799999999996
	.quad	0x4022c57c6fbd273d              # double 9.3857149999999993
	.quad	0x3fe4148ba83f4eca              # double 0.62750799999999995
	.quad	0x3ffce734f82f5126              # double 1.8064469999999999
	.quad	0x401955579af1886e              # double 6.333342
	.quad	0x401c27c0b1359792              # double 7.0388210000000004
	.quad	0x4022d96ca46e08f2              # double 9.4246569999999998
	.quad	0x400f47eae5bc87db              # double 3.9101159999999999
	.quad	0x4020bb7f38c5436c              # double 8.3662050000000007
	.quad	0x400281e2584f4c6e              # double 2.3134199999999998
	.quad	0x400c5ec679cc74b8              # double 3.5462769999999999
	.quad	0x401f4dc2f405f6ba              # double 7.825939
	.quad	0x400edf8982cb20fb              # double 3.8591489999999999
	.quad	0x401d6a936c58eeaf              # double 7.3540780000000003
	.quad	0x401faa836eb4e981              # double 7.9165169999999998
	.quad	0x400b3fdd65a14489              # double 3.4061840000000001
	.quad	0x4016bdc69f8c21e2              # double 5.6853280000000002
	.quad	0x400a95810624dd2f              # double 3.323
	.quad	0x3ffa6df612407464              # double 1.6518459999999999
	.quad	0x3fcd9f2ba9d1f601              # double 0.23141999999999999
	.quad	0x401ea004fb1183b6              # double 7.656269
	.quad	0x4022268512231833              # double 9.075234
	.quad	0x401d49a0f0a5efe9              # double 7.3219029999999998
	.quad	0x3ff50e8ea39c51db              # double 1.3160540000000001
	.quad	0x4013b14445aa2e3c              # double 4.9231119999999997
	.quad	0x401f789656eefa1e              # double 7.8677609999999998
	.quad	0x3ff7e683c297bfa5              # double 1.4937780000000001
	.quad	0x4020b42d05f28848              # double 8.3519059999999996
	.quad	0x4002c267839cd812              # double 2.3449239999999998
	.quad	0x400469424e592967              # double 2.551396
	.quad	0x4006bf623076c051              # double 2.8434490000000001
	.quad	0x401f1cc5b8dc5500              # double 7.778098
	.quad	0x3fc5ab4b72c5197a              # double 0.16929
	.quad	0x400dd398e9707182              # double 3.7283189999999999
	.quad	0x40030e4f3343fa2b              # double 2.3819870000000001
	.quad	0x40207f7fae3608d1              # double 8.2490210000000008
	.quad	0x401a60f66a550870              # double 6.5946899999999999
	.quad	0x3ffed14c22ee4192              # double 1.9260980000000001
	.quad	0x3fd9ef672b884407              # double 0.40523700000000001
	.quad	0x40217f63c31df762              # double 8.7488080000000004
	.quad	0x40168189bd8383ae              # double 5.6265020000000003
	.quad	0x40013827fa1a0cf2              # double 2.1524200000000002
	.quad	0x400e7ead4f5903a7              # double 3.8118539999999999
	.quad	0x40120b2fa93af74d              # double 4.5109240000000002
	.quad	0x4020a1ce8d972cd8              # double 8.3160290000000003
	.quad	0x4020c0b652370479              # double 8.3763909999999999
	.quad	0x3fefe5492ff4ba52              # double 0.99673900000000004
	.quad	0x4017cde1e2de8709              # double 5.9510569999999996
	.quad	0x4008682f0e0a84be              # double 3.0508709999999999
	.quad	0x3ff15c304ccee5ac              # double 1.0850070000000001
	.quad	0x40229cc87980f55e              # double 9.3062170000000002
	.quad	0x4021539756c93a71              # double 8.6632639999999999
	.quad	0x401064ae429e0a42              # double 4.0983210000000003
	.quad	0x401151b584b1ab08              # double 4.3297939999999997
	.quad	0x4023fa873bc903ea              # double 9.9893129999999992
	.quad	0x40220ba98eda22f7              # double 9.0227780000000006
	.quad	0x4004036544fe36d2              # double 2.5016579999999999
	.quad	0x3fb46045baf533f4              # double 0.079593999999999998
	.quad	0x401090c7c0f45176              # double 4.1413869999999999
	.quad	0x4014e4202d9cf13d              # double 5.2227790000000001
	.quad	0x401ba9d66adb402d              # double 6.9158569999999999
	.quad	0x3ffc525247cb70ac              # double 1.7700979999999999
	.quad	0x401573f8982cb210              # double 5.3632530000000003
	.quad	0x4007572bcb5fe543              # double 2.917564
	.quad	0x400a359b3d07c84b              # double 3.2761749999999998
	.quad	0x3ff7434d26fa3fcd              # double 1.4539310000000001
	.quad	0x4022d02d16b97fe9              # double 9.4065940000000001
	.quad	0x400cc010c6f7a0b6              # double 3.593782
	.quad	0x401d0ec7c957cd46              # double 7.2644339999999996
	.quad	0x3fdb31b584b1ab08              # double 0.42490899999999998
	.quad	0x401d0bbd7b2031cf              # double 7.2614650000000003
	.quad	0x4003b2f449129889              # double 2.46238
	.quad	0x4017aed5f138bce0              # double 5.9207380000000001
	.quad	0x401633065f9591cd              # double 5.5498289999999999
	.quad	0x400afc74751ce28f              # double 3.3732690000000001
	.quad	0x401ea334c5da6a44              # double 7.6593809999999998
	.quad	0x401fd3b4b2fa93af              # double 7.9567439999999995
	.quad	0x4021401a1554fbdb              # double 8.6251990000000003
	.quad	0x4022ffa85015c209              # double 9.4993309999999997
	.quad	0x40076e5796bfca86              # double 2.9288780000000001
	.quad	0x4008f4b167ec7864              # double 3.1194790000000001
	.quad	0x4000927e5215768a              # double 2.0715300000000001
	.quad	0x40007a79fec99f1b              # double 2.0598030000000001
	.quad	0x4010c098d477bbf9              # double 4.1880829999999998
	.quad	0x4011555219a847b2              # double 4.3333209999999998
	.quad	0x400bb17507e9d94d              # double 3.461649
	.quad	0x4015923a29c779a7              # double 5.3928000000000003
	.quad	0x402199bcfd4bf099              # double 8.8002699999999994
	.quad	0x4021c23e9ea14057              # double 8.8793839999999999
	.quad	0x40206739085f4a12              # double 8.2016069999999992
	.quad	0x400eaa3b57c4e2f3              # double 3.8331209999999998
	.quad	0x401101897a67a52b              # double 4.2515010000000002
	.quad	0x402128ba40d90e24              # double 8.5795460000000005
	.quad	0x401f5cd1c7de5083              # double 7.8406440000000001
	.quad	0x3fe5321c475e6363              # double 0.66236700000000004
	.quad	0x3fef1d041cc532a5              # double 0.97229200000000004
	.quad	0x3ffc02539756c93a              # double 1.7505679999999999
	.quad	0x401c1b662fdfc19c              # double 7.0267569999999999
	.quad	0x4012caa9b499d020              # double 4.6979129999999998
	.quad	0x3fe204af922962d0              # double 0.56307200000000002
	.quad	0x400d6a0902de00d2              # double 3.6767750000000001
	.quad	0x401cc1aeb3dd11be              # double 7.1891429999999996
	.quad	0x401654228997c3d7              # double 5.5821630000000004
	.quad	0x4020f391b3f20a74              # double 8.475721
	.quad	0x4016a3b7d84901d2              # double 5.6598810000000004
	.quad	0x401631bda5119ce0              # double 5.5485749999999996
	.quad	0x4022edb1209edbf9              # double 9.4642420000000004
	.quad	0x3ff3a2e3c536d656              # double 1.227268
	.quad	0x4021a041cc532a49              # double 8.8130019999999991
	.quad	0x3fe768c8abd5dc40              # double 0.731541
	.quad	0x3fb801711947cfa2              # double 0.093771999999999994
	.quad	0x401d9b3fe9fadafd              # double 7.4016109999999999
	.quad	0x40021ede1198aeb8              # double 2.265072
	.quad	0x401acc610f0e90bc              # double 6.6995889999999996
	.quad	0x3ff1ba355043e532              # double 1.107961
	.quad	0x3fdb917507e9d94d              # double 0.430753
	.quad	0x3fe0b14013ec460f              # double 0.52163700000000002
	.quad	0x3fbf549f94855da2              # double 0.12238499999999999
	.quad	0x4015880d3cff64d0              # double 5.3828630000000004
	.quad	0x3ff652dfd694ccab              # double 1.3952329999999999
	.quad	0x400b53e4ef0281ba              # double 3.4159639999999998
	.quad	0x4020e1f4d37c1377              # double 8.4413210000000003
	.quad	0x401ce3797460242d              # double 7.222143
	.quad	0x401583b3a68b19a4              # double 5.3786149999999999
	.quad	0x40226c67381d7dbf              # double 9.2117249999999995
	.quad	0x40159e57d9dba909              # double 5.4046320000000003
	.quad	0x3feb6a5b530ced4e              # double 0.85673299999999997
	.quad	0x401519ae0c176577              # double 5.2750779999999997
	.quad	0x40183719b4dcebff              # double 6.0538090000000002
	.quad	0x40172e846a5d6bec              # double 5.7954270000000001
	.quad	0x40119ed1bf7ad4b2              # double 4.4050969999999996
	.quad	0x4022321405708249              # double 9.0978089999999998
	.quad	0x40059bc3c5bd0e13              # double 2.701057
	.quad	0x400c82afdda8bd23              # double 3.563812
	.quad	0x40197e30446b69db              # double 6.3732309999999996
	.quad	0x401b330f49491f2e              # double 6.7998630000000002
	.quad	0x3ff70ce703afb7e9              # double 1.44065
	.quad	0x3ff6f3d6c7219221              # double 1.434531
	.quad	0x3ffd08ffb8b26395              # double 1.814697
	.quad	0x40163433d6c72192              # double 5.5509789999999999
	.quad	0x401dfe889c1b5419              # double 7.4985679999999996
	.quad	0x4003ea771c970f7c              # double 2.4894850000000002
	.quad	0x40027650a45d41fa              # double 2.3077709999999998
	.quad	0x4012e023a6ce3583              # double 4.7188860000000004
	.quad	0x402064c9c90c4dec              # double 8.1968519999999998
	.quad	0x40183f865d7cb2d9              # double 6.062036
	.quad	0x3fe63c664d3bf2f5              # double 0.69487299999999996
	.quad	0x3ff63e45803cd142              # double 1.3902030000000001
	.quad	0x400f3a74c09c3ce2              # double 3.903543
	.quad	0x40110705425f2021              # double 4.256856
	.quad	0x401188ed5f138bce              # double 4.383718
	.quad	0x4001d14b9cb6848c              # double 2.227195
	.quad	0x400321fc8f32378b              # double 2.3915950000000001
	.quad	0x4016e22dd7a99fa1              # double 5.7208779999999999
	.quad	0x400f4e24bba12b5e              # double 3.9131559999999999
	.quad	0x4010e1bfbdf090f7              # double 4.2204579999999998
	.quad	0x402132500d5e8d54              # double 8.5982669999999998
	.quad	0x401e8049a9973d9f              # double 7.6252810000000001
	.quad	0x4017d020817fc760              # double 5.9532489999999996
	.quad	0x401686b723ee1bd2              # double 5.6315580000000001
	.quad	0x40218ed7a56de332              # double 8.7789889999999993
	.quad	0x4013e16b54e2b064              # double 4.9701360000000001
	.quad	0x40153c083126e979              # double 5.3086250000000001
	.quad	0x400e93c60029f16b              # double 3.822155
	.quad	0x401df38ef34d6a16              # double 7.4878499999999999
	.quad	0x401fc29e90795f67              # double 7.9400579999999996
	.quad	0x401ebab8a5ce5b42              # double 7.6823449999999998
	.quad	0x40234070110a137f              # double 9.6258549999999996
	.quad	0x40174856e696a26e              # double 5.8206439999999997
	.quad	0x401c35dc8323358f              # double 7.0525989999999998
	.quad	0x3ff4cdf37329c348              # double 1.300281
	.quad	0x40101ccc89b0ee4a              # double 4.028124
	.quad	0x4018301322f27350              # double 6.0469480000000004
	.quad	0x401d3cb9ecf63800              # double 7.3093029999999999
	.quad	0x4023dce8101f31f4              # double 9.9314579999999992
	.quad	0x4023af5dbb9cf9a0              # double 9.8425119999999993
	.quad	0x402134b3a2595bbc              # double 8.6029330000000001
	.quad	0x401d5650e779207d              # double 7.3342929999999997
	.quad	0x401d044417870542              # double 7.2541659999999997
	.quad	0x402020f92af9a8ce              # double 8.0644010000000002
	.quad	0x4021f1f212d77319              # double 8.97255
	.quad	0x401d3bf5946c332f              # double 7.308554
	.quad	0x40216fb395c42203              # double 8.7181669999999993
	.quad	0x40227a702a3486f0              # double 9.2391369999999995
	.quad	0x4019a764f11b60af              # double 6.4134710000000004
	.quad	0x40030658c4bd33d3              # double 2.3780990000000002
	.quad	0x40230f1a1986b9c3              # double 9.5294959999999999
	.quad	0x4017dfda836eb4ea              # double 5.9686070000000004
	.quad	0x402229cda2b5a20e              # double 9.0816470000000002
	.quad	0x3ff9f5bb384fd2a6              # double 1.622493
	.quad	0x4013bb6fe2e6ea85              # double 4.9330439999999998
	.quad	0x4010eab96f21f6cb              # double 4.2292230000000002
	.quad	0x4005dbd8383ad9f1              # double 2.7323460000000002
	.quad	0x401afbd987c6327f              # double 6.7459470000000001
	.quad	0x40184067cf1c3266              # double 6.0628960000000003
	.quad	0x40052bb7f9d6f113              # double 2.646347
	.quad	0x40102ecd8dbcec85              # double 4.045706
	.quad	0x401af422467be554              # double 6.7384120000000003
	.quad	0x40237eba493c89f4              # double 9.7475149999999999
	.quad	0x4019bc60cbf2b23a              # double 6.4339630000000003
	.quad	0x401c5a6dacabc515              # double 7.0883089999999997
	.quad	0x3ffa6ce789e774ef              # double 1.6515880000000001
	.quad	0x402107034b0e1b4c              # double 8.5136970000000005
	.quad	0x401652c8c5004fb1              # double 5.5808439999999999
	.quad	0x4013a63f572de43f              # double 4.9123510000000001
	.quad	0x40217984e3ffef39              # double 8.7373419999999999
	.quad	0x4002a92b3cc4ac6d              # double 2.3326020000000001
	.quad	0x3ff3e9131ec0b567              # double 1.2444029999999999
	.quad	0x4012c1f7d73c9258              # double 4.6894220000000004
	.quad	0x40153a2120e1f7d7              # double 5.3067669999999998
	.quad	0x400c9471715c63ae              # double 3.5724819999999999
	.quad	0x402032f87ad080b6              # double 8.0995519999999992
	.quad	0x40210b315d701d9f              # double 8.5218609999999995
	.quad	0x4019fd6b65a9a805              # double 6.4974800000000004
	.quad	0x3fe3056c508b32cf              # double 0.59441200000000005
	.quad	0x3ff2670196d8f4f9              # double 1.1501479999999999
	.quad	0x400c1ba237cdcca7              # double 3.513493
	.quad	0x4021d54195cc857f              # double 8.9165159999999997
	.quad	0x401dfa8c154c985f              # double 7.4946749999999999
	.quad	0x4012535c9e6687f4              # double 4.5814079999999997
	.quad	0x4022e1986b9c304d              # double 9.4406160000000003
	.quad	0x40220d9253543aeb              # double 9.0265070000000005
	.quad	0x40156b5e0f7fcfc4              # double 5.354851
	.quad	0x4001e7eae5bc87db              # double 2.2382409999999999
	.quad	0x4005c7064ece9a2c              # double 2.7221799999999998
	.quad	0x40119f71a7e30878              # double 4.4057069999999996
	.quad	0x4020745718eb8950              # double 8.2272269999999992
	.quad	0x401ab344c37e6f72              # double 6.6750670000000003
	.quad	0x401c844aa53fc009              # double 7.1291909999999996
	.quad	0x401b793ab430f495              # double 6.8683880000000004
	.quad	0x3fc9a0e8427418d7              # double 0.20022300000000001
	.quad	0x4018043e963dc487              # double 6.0041450000000003
	.quad	0x401cff63c31df762              # double 7.2494040000000002
	.quad	0x4018693d5347a5b1              # double 6.102773
	.quad	0x401d0e8a2ec28b2a              # double 7.2641989999999996
	.quad	0x3fde43201040bfe4              # double 0.47284700000000002
	.quad	0x40155ccb7d41743f              # double 5.3406200000000004
	.quad	0x40233e5d9e40c847              # double 9.6218079999999996
	.quad	0x401dd99bb2788db0              # double 7.4625079999999997
	.quad	0x401ad974e65bea0c              # double 6.7123600000000003
	.quad	0x400525fd8adab9f5              # double 2.6435499999999998
	.quad	0x3ff6623bff8a8f3b              # double 1.3989830000000001
	.quad	0x401d0506dd69d302              # double 7.2549089999999996
	.quad	0x401867735c182ecb              # double 6.1010260000000001
	.quad	0x40127b5781c714fd              # double 4.6204510000000001
	.quad	0x4022c3c925785f8d              # double 9.3823939999999996
	.quad	0x4022f5e3b8a19c9d              # double 9.4802529999999993
	.quad	0x4023a8507a6bd6e9              # double 9.8287390000000005
	.quad	0x401bf612c6ac215c              # double 6.9903060000000004
	.quad	0x3ff2558d9b5e95b8              # double 1.1458870000000001
	.quad	0x401a7214ad362e90              # double 6.6114069999999998
	.quad	0x4021efe542e557de              # double 8.9685459999999999
	.quad	0x4018ada87a072d1b              # double 6.1695880000000001
	.quad	0x4019ef8f8a4c1ebd              # double 6.4839460000000004
	.quad	0x402184ad57bc7f78              # double 8.7591350000000006
	.quad	0x4007281344806291              # double 2.894568
	.quad	0x402120ba6266fd65              # double 8.5639219999999998
	.quad	0x400cc92bc2fc6973              # double 3.5982280000000002
	.quad	0x4014692ccf6be37e              # double 5.1027100000000001
	.quad	0x401eb8c3b0c4588a              # double 7.680434
	.quad	0x4022752dcb1465e9              # double 9.2288650000000008
	.quad	0x401734434e3369ba              # double 5.8010380000000001
	.quad	0x401cf634117f8445              # double 7.2404330000000003
	.quad	0x40158d0e56041893              # double 5.3877499999999996
	.quad	0x40194ec679cc74b8              # double 6.3269289999999998
	.quad	0x3ffb6634117f8445              # double 1.7124520000000001
	.quad	0x3ff38cd530489d28              # double 1.2218830000000001
	.quad	0x401a5c0ce91c8eac              # double 6.589893
	.quad	0x401d414b599aa609              # double 7.3137639999999999
	.quad	0x401e690bc7b45f18              # double 7.6025840000000002
	.quad	0x401e40691ea78af4              # double 7.5629010000000001
	.quad	0x401cf5d63886594b              # double 7.240075
	.quad	0x40179c4827b6fe2e              # double 5.9026189999999996
	.quad	0x4012b088d6d3b6cc              # double 4.6723970000000001
	.quad	0x3fb5bbbe878fabda              # double 0.084895999999999999
	.quad	0x402015f633ce63a6              # double 8.0428940000000004
	.quad	0x401cf4d2f5dbb9d0              # double 7.2390860000000004
	.quad	0x400faf32378ab0c9              # double 3.9605450000000002
	.quad	0x40106e60c38f3669              # double 4.1077909999999997
	.quad	0x401e5ab21815a07b              # double 7.5885699999999998
	.quad	0x401e1f8a4c1ebc84              # double 7.5308010000000003
	.quad	0x401df3e4abe6a338              # double 7.4881770000000003
	.quad	0x400f17f84449dbec              # double 3.8867039999999999
	.quad	0x4013b5f4a1272c95              # double 4.9276910000000003
	.quad	0x40182d3996fa82e8              # double 6.0441649999999996
	.quad	0x3ff06ae297396d09              # double 1.026095
	.quad	0x4022627d24180d3d              # double 9.192361
	.quad	0x401339613d31b9b6              # double 4.8060349999999996
	.quad	0x40232adddf43c7d6              # double 9.5837240000000001
	.quad	0x40139ccc03793144              # double 4.9031219999999998
	.quad	0x401f9dadfb506dd7              # double 7.9039840000000003
	.quad	0x4021d5f6db940fed              # double 8.9178990000000002
	.quad	0x402125abc0e38a7e              # double 8.5735759999999992
	.quad	0x40171f5c6c11a112              # double 5.7806259999999998
	.quad	0x3fd79cd8127b2cc7              # double 0.368948
	.quad	0x401953a4b5568e82              # double 6.331683
	.quad	0x40125cee5abc0e39              # double 4.5907530000000003
	.quad	0x3ff3a8b4bf8fcd68              # double 1.228688
	.quad	0x4012de47991bc558              # double 4.7170699999999997
	.quad	0x3fec8307f23cc8de              # double 0.89099499999999998
	.quad	0x40106e27e0ef9980              # double 4.1075739999999996
	.quad	0x40205d88a04d1202              # double 8.1826830000000008
	.quad	0x40119c914b167ec8              # double 4.4028980000000004
	.quad	0x40220711d798d8a9              # double 9.0138079999999992
	.quad	0x401fb0ecb74ddf87              # double 7.922778
	.quad	0x40117676a7264a17              # double 4.3656870000000003
	.quad	0x40044bef06b37868              # double 2.537077
	.quad	0x4013b444e0daa0cb              # double 4.9260440000000001
	.quad	0x40238fb1183b6028              # double 9.7806479999999993
	.quad	0x402130ce2d1f1cfc              # double 8.5953230000000004
	.quad	0x3ff97519bd4067cf              # double 1.591089
	.quad	0x3ffea3d3e4ef0282              # double 1.9149970000000001
	.quad	0x4011b872b020c49c              # double 4.4301250000000003
	.quad	0x401599cdc443914f              # double 5.4001989999999997
	.quad	0x40234276d97b30f9              # double 9.6298130000000004
	.quad	0x401dc364388ebcc7              # double 7.4408120000000002
	.quad	0x401f42a62aa1943a              # double 7.8150870000000001
	.quad	0x4020f9908e581cf8              # double 8.4874310000000008
	.quad	0x4002b7aa25d8d79d              # double 2.33968
	.quad	0x4010ee6cd29131ec              # double 4.232837
	.quad	0x40115deb95e5aff3              # double 4.3417190000000003
	.quad	0x40062f4a558ea7ce              # double 2.773091
	.quad	0x400a730941c8216c              # double 3.3061699999999998
	.quad	0x402248858ff75968              # double 9.1416439999999994
	.quad	0x40109b30f8c64fdb              # double 4.151554
	.quad	0x4017db8e8ea39c52              # double 5.9644110000000001
	.quad	0x400d4ef566490a35              # double 3.663554
	.quad	0x40224a220bc382a1              # double 9.1447909999999997
	.quad	0x3fff100c521dda06              # double 1.9414180000000001
	.quad	0x40118582dbe7f2c3              # double 4.380382
	.quad	0x4023dc05b39e279e              # double 9.9297310000000003
	.quad	0x3fffc35371971c11              # double 1.985187
	.quad	0x400035696e58a32f              # double 2.0260799999999999
	.quad	0x40216cbb7f9d6f11              # double 8.7123679999999997
	.quad	0x40223520296b3355              # double 9.1037610000000004
	.quad	0x400135989df1172f              # double 2.15117
	.quad	0x40115b7521144cbe              # double 4.3393139999999999
	.quad	0x40118db9c7368ad7              # double 4.3884040000000004
	.quad	0x3fb90b417ca2120e              # double 0.097827999999999998
	.quad	0x401c3082cf52b90a              # double 7.0473739999999996
	.quad	0x3ff113a1d323fee3              # double 1.067293
	.quad	0x4023d86fac6045bb              # double 9.922727
	.quad	0x4014f36f3b213e3e              # double 5.2377289999999999
	.quad	0x400ef0a915379fa9              # double 3.8675099999999998
	.quad	0x4017c3ab862b27cc              # double 5.941084
	.quad	0x4022c0aa433508f6              # double 9.3762989999999995
	.quad	0x4010becd8dbcec85              # double 4.186331
	.quad	0x400cba272862f599              # double 3.5908950000000002
	.quad	0x4021162fdfc19c17              # double 8.5433339999999998
	.quad	0x40114889c1b54196              # double 4.3208380000000002
	.quad	0x3fbd274e22a2c237              # double 0.113881
	.quad	0x401aea39c51dabe2              # double 6.7287359999999996
	.quad	0x3fa53996fa82e87d              # double 0.041454999999999999
	.quad	0x401fda3875925354              # double 7.9631059999999998
	.quad	0x3ff09d2e0e30446b              # double 1.0383739999999999
	.quad	0x401ba1b2e59af9ec              # double 6.9079090000000001
	.quad	0x4005281fd9ba1b19              # double 2.6445919999999998
	.quad	0x40005064ece9a2c6              # double 2.0392549999999998
	.quad	0x400b2af9a8cdea03              # double 3.3959839999999999
	.quad	0x4015b8e581cf7879              # double 5.4305630000000003
	.quad	0x40070b45ae5ffa3c              # double 2.8805040000000002
	.quad	0x401779dd3bafd977              # double 5.869008
	.quad	0x400578372e6a7696              # double 2.6836989999999998
	.quad	0x401d36b11c6d1e11              # double 7.3034100000000004
	.quad	0x4020ba4d6e47dc38              # double 8.3638720000000006
	.quad	0x400b94c660a20147              # double 3.4476439999999999
	.quad	0x401d7ad7d7c2ca15              # double 7.3699640000000004
	.quad	0x401b6eb1c432ca58              # double 6.8581000000000003
	.quad	0x40046dd377e1b8ed              # double 2.553626
	.quad	0x400ccb97785729b3              # double 3.5994100000000002
	.quad	0x3fef6b9a176ddacf              # double 0.981885
	.quad	0x40137bd1ed9dfdac              # double 4.8709179999999996
	.quad	0x4020a12d3415b142              # double 8.3147979999999997
	.quad	0x40139c8259e1f3a5              # double 4.9028409999999996
	.quad	0x401ae94b7b28954a              # double 6.7278269999999996
	.quad	0x400067b1c0010c6f              # double 2.0506319999999998
	.quad	0x3ffe76e2eb1c432d              # double 1.9040250000000001
	.quad	0x4010f2b0a6fc58ac              # double 4.2370020000000004
	.quad	0x40167db61bb05faf              # double 5.6227650000000002
	.quad	0x401d03baba7b9171              # double 7.2536420000000001
	.quad	0x3ff9b97785729b28              # double 1.60778
	.quad	0x401d0bb83cf2cf96              # double 7.2614450000000001
	.quad	0x4003fc65c70435f0              # double 2.4982410000000002
	.quad	0x40020f672b884407              # double 2.2575210000000001
	.quad	0x400e3d7a99fa11a9              # double 3.7800189999999998
	.quad	0x4020e14a6eb91b3f              # double 8.4400209999999998
	.quad	0x4003d219220ff541              # double 2.4775870000000002
	.quad	0x401c2b65a9a80496              # double 7.0423799999999996
	.quad	0x4017ca60d4562e0a              # double 5.947635
	.quad	0x4017b02c0a4a05de              # double 5.9220430000000004
	.quad	0x3ffbee59af9ebe9d              # double 1.7456910000000001
	.quad	0x4016ab0e5e679464              # double 5.6670470000000002
	.quad	0x400d880d801b4352              # double 3.6914319999999998
	.quad	0x401fd113404ea4a9              # double 7.9541750000000002
	.quad	0x4010c72c0e7bc3c6              # double 4.1945040000000002
	.quad	0x4013b4fb549f9485              # double 4.9267399999999997
	.quad	0x400ceea960b6f9fd              # double 3.6165340000000001
	.quad	0x4022899d451fc4c1              # double 9.2687779999999993
	.quad	0x3ff4e21a719b4dcf              # double 1.3052010000000001
	.quad	0x40235244c7b02d5a              # double 9.6606810000000003
	.quad	0x40237a749f0e4da1              # double 9.7391710000000006
	.quad	0x4017259d55e6bc62              # double 5.7867329999999999
	.quad	0x401c11c864883fd5              # double 7.017366
	.quad	0x401c746994185059              # double 7.1136840000000001
	.quad	0x402072515ce9e5e2              # double 8.2232769999999995
	.quad	0x4013b03f705857b0              # double 4.9221170000000001
	.quad	0x40072ddf00abf76a              # double 2.8973979999999999
	.quad	0x3fddf2f9873ffac2              # double 0.46795500000000001
	.quad	0x4023d4299d883ba3              # double 9.9143799999999995
	.quad	0x400316d7625204b0              # double 2.3861530000000002
	.quad	0x400afd63886594af              # double 3.3737249999999999
	.quad	0x401b9ff69014b59a              # double 6.9062140000000003
	.quad	0x401a0c40d0aaa7df              # double 6.5119660000000001
	.quad	0x400899ec7000431c              # double 3.0751580000000001
	.quad	0x402388a958537e2c              # double 9.7669169999999994
	.quad	0x3fd40d349be8ff32              # double 0.31330599999999997
	.quad	0x40165829cfdd2285              # double 5.5860969999999996
	.quad	0x401808754f3775b8              # double 6.0082599999999999
	.quad	0x4022dc67dfe32a06              # double 9.4304799999999993
	.quad	0x401bd19008205ff2              # double 6.9546510000000001
	.quad	0x3fcd2cc70867ad8e              # double 0.22792899999999999
	.quad	0x4016140bbb1f255f              # double 5.5195759999999998
	.quad	0x402317a311e85fd0              # double 9.5461659999999995
	.quad	0x4013cfc115df6556              # double 4.9528850000000002
	.quad	0x400d619da9c99286              # double 3.6726640000000002
	.quad	0x400367000431bde8              # double 2.4252929999999999
	.quad	0x40238e97f1f9ad00              # double 9.7785030000000006
	.quad	0x4021e031055b8994              # double 8.9378740000000007
	.quad	0x3fd52b12d3415b14              # double 0.33075399999999999
	.quad	0x402264a8198f1d3f              # double 9.1965950000000003
	.quad	0x401247d49d7ba66a              # double 4.5701470000000004
	.quad	0x4018c1450efdc9c5              # double 6.1887400000000001
	.quad	0x4001671e6cd29132              # double 2.175351
	.quad	0x401ce07a6bd6e8b0              # double 7.2192170000000004
	.quad	0x400e3dcc63f14120              # double 3.7801749999999998
	.quad	0x400f82f0e0a84be4              # double 3.938936
	.quad	0x3fe705f28848387e              # double 0.719476
	.quad	0x4021c838c111ada7              # double 8.8910579999999992
	.quad	0x4019bb7995ee136e              # double 6.4330809999999996
	.quad	0x4014dd8be7296f65              # double 5.2163539999999999
	.quad	0x4015fa0a958537e3              # double 5.4941810000000002
	.quad	0x3ffadeefe4ffc979              # double 1.6794279999999999
	.quad	0x400c87ae9ab29e4d              # double 3.5662509999999998
	.quad	0x4015258c8eef1bac              # double 5.2866689999999998
	.quad	0x40226d188f42fe82              # double 9.2130779999999994
	.quad	0x40205007357e670e              # double 8.1563049999999997
	.quad	0x4017eedbf8b9baa1              # double 5.9832609999999997
	.quad	0x402206a2d2fe3f36              # double 9.0129610000000007
	.quad	0x4017503ea704bc27              # double 5.8283639999999997
	.quad	0x40056bfe3b03e20d              # double 2.6777310000000001
	.quad	0x4009e165907d9125              # double 3.2350569999999998
	.quad	0x401d94d6a161e4f7              # double 7.3953499999999996
	.quad	0x4014726fe718a86d              # double 5.1117549999999996
	.quad	0x401b07b28954a7f8              # double 6.757517
	.quad	0x402039d8409e55c1              # double 8.112978
	.quad	0x4009c72fba01eeee              # double 3.2222590000000002
	.quad	0x3ff558a65492ff4c              # double 1.3341430000000001
	.quad	0x40129a7f8012dfd7              # double 4.6508770000000004
	.quad	0x400ad856a37ac3eb              # double 3.3556339999999998
	.quad	0x4012382a12f90108              # double 4.5548479999999998
	.quad	0x401fda3f4666ec9e              # double 7.9631319999999999
	.quad	0x4016e906034f3fd9              # double 5.7275619999999998
	.quad	0x400c9d91ab8e8ea4              # double 3.5769380000000002
	.quad	0x401ed92641b328b7              # double 7.7120600000000001
	.quad	0x402387c9795b35b1              # double 9.7652090000000004
	.quad	0x4002ebc72e275ab8              # double 2.3651260000000001
	.quad	0x402355a661283904              # double 9.6672849999999996
	.quad	0x401243fe1975f2cb              # double 4.5663989999999997
	.quad	0x40102157689ca18c              # double 4.0325600000000001
	.quad	0x400c7a09cc319c5a              # double 3.5595889999999999
	.quad	0x401056ce358298cc              # double 4.0847709999999999
	.quad	0x4010522962cfd8f1              # double 4.0802360000000002
	.quad	0x3fd8041cc532a498              # double 0.375251
	.quad	0x4020a8fb65668c26              # double 8.3300429999999999
	.quad	0x3ffd026138fffbce              # double 1.8130809999999999
	.quad	0x3ff58185058dde7a              # double 1.3441209999999999
	.quad	0x40239e9bbf0dc769              # double 9.8097820000000002
	.quad	0x4006aad3e920c06a              # double 2.833412
	.quad	0x400c56f0068db8bb              # double 3.5424500000000001
	.quad	0x40141afb3b752114              # double 5.0263489999999997
	.quad	0x40172e368f084620              # double 5.7951300000000003
	.quad	0x401338eef1bac2df              # double 4.805599
	.quad	0x401b7105186db50f              # double 6.8603709999999998
	.quad	0x3fe5dbc87db2b346              # double 0.68307899999999999
	.quad	0x401c30635a426bb5              # double 7.0472539999999997
	.quad	0x401a430014f8b589              # double 6.5654300000000001
	.quad	0x401ef691ea78af3e              # double 7.7407909999999998
	.quad	0x3fe2f6640a6b93cd              # double 0.59257700000000002
	.quad	0x40008a055757d5aa              # double 2.067393
	.quad	0x401920c564f97edc              # double 6.2820029999999996
	.quad	0x401ae6f2e8c0485a              # double 6.725536
	.quad	0x40150f5d35653c9b              # double 5.2650040000000002
	.quad	0x3fe067c286f8ad25              # double 0.51266599999999996
	.quad	0x401c0961c36976bc              # double 7.0091619999999999
	.quad	0x4022ea6dce39b457              # double 9.4578690000000005
	.quad	0x3fbe2a0a958537e3              # double 0.117829
	.quad	0x3fffe40852b4d8ba              # double 1.9931719999999999
	.quad	0x3ff2f5515054ac2a              # double 1.1848920000000001
	.quad	0x401aaf2d3c792d13              # double 6.6710710000000004
	.quad	0x3ff22f262888b546              # double 1.136511
	.quad	0x400631bac2df0d41              # double 2.7742819999999999
	.quad	0x3febf2c5197a2489              # double 0.87338499999999997
	.quad	0x40092db50f40e5a3              # double 3.1473179999999998
	.quad	0x400fff58c08b75ea              # double 3.9996809999999998
	.quad	0x4000fcdee34fc611              # double 2.123472
	.quad	0x3fe1e58e64b23140              # double 0.55927199999999999
	.quad	0x400d197d49d7ba67              # double 3.6374460000000002
	.quad	0x401359641f644956              # double 4.8372960000000003
	.quad	0x4014d116ebd4cfd1              # double 5.2041890000000004
	.quad	0x4016c149c6f36ef8              # double 5.688758
	.quad	0x4023046c332f0175              # double 9.5086379999999994
	.quad	0x3fe00157eed45e92              # double 0.50016400000000005
	.quad	0x4022bc8a58b3f63c              # double 9.3682429999999996
	.quad	0x40092d634549b62c              # double 3.1471619999999998
	.quad	0x401a73a190082060              # double 6.612921
	.quad	0x4021100c9539b888              # double 8.5313459999999992
	.quad	0x3fee88e581cf7879              # double 0.95421100000000003
	.quad	0x401af04ea4a8c155              # double 6.7346750000000002
	.quad	0x40108b4edb2f661f              # double 4.1360429999999999
	.quad	0x4014f9856a37ac3f              # double 5.2436730000000003
	.quad	0x3fdcd6f112fd32c6              # double 0.45061899999999999
	.quad	0x3fdf61240746455f              # double 0.49030400000000002
	.quad	0x4014c93c03bc4d23              # double 5.1965180000000002
	.quad	0x4000c23af31b152f              # double 2.0948389999999999
	.quad	0x402256dbf8b9baa1              # double 9.1696469999999994
	.quad	0x401fa38c111ada77              # double 7.9097140000000001
	.quad	0x401a2308bb906467              # double 6.5342130000000003
	.quad	0x4011156a37ac3eb8              # double 4.2709130000000002
	.quad	0x40198dfeb8d82342              # double 6.3886669999999999
	.quad	0x3fcfa3d2d87f8876              # double 0.24718699999999999
	.quad	0x401d6f50a02b8412              # double 7.3587059999999997
	.quad	0x401fd826edaa92e6              # double 7.9610859999999999
	.quad	0x400b66fbd273d5bb              # double 3.4252850000000001
	.quad	0x4014b4185058dde8              # double 5.1758740000000003
	.quad	0x40125eb0318b9347              # double 4.5924690000000004
	.quad	0x3ff736c4827b6fe3              # double 1.450871
	.quad	0x400873ade225fa66              # double 3.0564840000000002
	.quad	0x4010c8f42fe82518              # double 4.1962440000000001
	.quad	0x4018f20c069e7fb2              # double 6.2363739999999996
	.quad	0x4014d66ec9e236c1              # double 5.2094069999999997
	.quad	0x401ac4bdfd2630ec              # double 6.6921309999999998
	.quad	0x40176beb5b2d4d40              # double 5.8553899999999999
	.quad	0x4011ef8d2e514c23              # double 4.4839370000000001
	.quad	0x4015270e2c12ad82              # double 5.2881400000000003
	.quad	0x3ff8d2ab68cef673              # double 1.5514330000000001
	.quad	0x40208ef4e0114d2f              # double 8.2792119999999993
	.quad	0x4020d11d798d8a98              # double 8.4084280000000007
	.quad	0x3ffe36c050bd87b5              # double 1.8883669999999999
	.quad	0x4009b39e279dd3bb              # double 3.212704
	.quad	0x3fd6f498c3b0c459              # double 0.35867900000000003
	.quad	0x3fe63ae89eba6aca              # double 0.69469099999999995
	.quad	0x401d2c7368ad6883              # double 7.2934089999999996
	.quad	0x4023dffc7607c41a              # double 9.9374730000000007
	.quad	0x401608576cce5f74              # double 5.508146
	.quad	0x3ff8aa8650e77920              # double 1.5416319999999999
	.quad	0x40113cda2b5a20de              # double 4.3094260000000002
	.quad	0x401ee4794ea07703              # double 7.7231189999999996
	.quad	0x3ff14b72c5197a25              # double 1.0809200000000001
	.quad	0x4021acc07aaef2c7              # double 8.8374059999999997
	.quad	0x3fd2815e39713ad6              # double 0.28914600000000001
	.quad	0x40067082491afc05              # double 2.8049360000000001
	.quad	0x3ff12a7ded6ba8c6              # double 1.0728740000000001
	.quad	0x400e48cef672b884              # double 3.7855509999999999
	.quad	0x4020f82a5614df8b              # double 8.4846979999999999
	.quad	0x4020eb198288051d              # double 8.4591790000000007
	.quad	0x3ff5af2734f82f51              # double 1.355262
	.quad	0x4005b068123810e9              # double 2.7111360000000002
	.quad	0x4022a97f62b6ae7d              # double 9.3310499999999994
	.quad	0x40160059210385c6              # double 5.5003399999999996
	.quad	0x401f2a3ec02f2f98              # double 7.7912549999999995
	.quad	0x4010c3e4ef0281ba              # double 4.1913029999999996
	.quad	0x401d8abc5154866a              # double 7.3854839999999999
	.quad	0x4015e86b59146e4c              # double 5.476972
	.quad	0x401d359c49774257              # double 7.3023540000000002
	.quad	0x4013e863beec397a              # double 4.9769430000000003
	.quad	0x3ff443b2dd377e1c              # double 1.2665280000000001
	.quad	0x4011bc8b43958106              # double 4.4341249999999999
	.quad	0x401e0ce39b456b44              # double 7.5125869999999999
	.quad	0x4015c3f9e7b80a9e              # double 5.4413830000000001
	.quad	0x401c7c0010c6f7a1              # double 7.1210940000000003
	.quad	0x3fe4480e8c8abd5e              # double 0.63379600000000003
	.quad	0x4010dc9afe1da7b1              # double 4.2154350000000003
	.quad	0x4018d5479d4d8341              # double 6.2082810000000004
	.quad	0x4023728198f1d3ed              # double 9.7236449999999994
	.quad	0x401e353a3ec02f30              # double 7.5519800000000004
	.quad	0x40213edaec4a4096              # double 8.6227640000000001
	.quad	0x4023ee8405b39e28              # double 9.9658510000000006
	.quad	0x4022c1815a07b353              # double 9.3779400000000006
	.quad	0x4002fedd052934ad              # double 2.3744450000000001
	.quad	0x40179d92fb19e732              # double 5.9038810000000002
	.quad	0x4011cd5cfaacd9e8              # double 4.4505499999999998
	.quad	0x3ff3d49c6f36ef80              # double 1.2394069999999999
	.quad	0x400a7adafd113837              # double 3.3099880000000002
	.quad	0x401f27589efd86a9              # double 7.788424
	.quad	0x4011e439de481f54              # double 4.4728770000000004
	.quad	0x4007d6f4384ba0e8              # double 2.9799579999999999
	.quad	0x402158800eae18ad              # double 8.6728520000000007
	.quad	0x401a844c37e6f71a              # double 6.6291969999999996
	.quad	0x3fff9420b3d4ae43              # double 1.9736640000000001
	.quad	0x4015188333fc86cf              # double 5.2739380000000002
	.quad	0x400b727c39368273              # double 3.430901
	.quad	0x40102e6ab9b23dd5              # double 4.0453289999999997
	.quad	0x3ffeab074a771c97              # double 1.916755
	.quad	0x3fed06162f166e01              # double 0.90699300000000005
	.quad	0x3fe661719f7f8ca8              # double 0.69939499999999999
	.quad	0x40140e1a3f4666ed              # double 5.0137720000000003
	.quad	0x3fe5550a88effe2a              # double 0.66663099999999997
	.quad	0x401fcfb480a5accd              # double 7.9528369999999997
	.quad	0x3fecb1a4bdba0a52              # double 0.89668499999999995
	.quad	0x4019bb6ed677707a              # double 6.4330400000000001
	.quad	0x3ff83e1fc08fa7a8              # double 1.5151669999999999
	.quad	0x3ff81a059a73b42d              # double 1.5063530000000001
	.quad	0x4021640f88333fc8              # double 8.6954309999999992
	.quad	0x3fe5aa68f4b61fe2              # double 0.67705199999999999
	.quad	0x401cfd97b30f8c65              # double 7.247649
	.quad	0x40047450efdc9c4e              # double 2.5567950000000002
	.quad	0x402195a33bd9cae2              # double 8.7922609999999999
	.quad	0x3fd5202539756c94              # double 0.33008700000000002
	.quad	0x3fe6f1971c10d7bf              # double 0.71699100000000004
	.quad	0x4006fbc903ea704c              # double 2.8729420000000001
	.quad	0x401100b3d4ae429e              # double 4.250686
	.quad	0x4022d868fd199bb2              # double 9.4226759999999992
	.quad	0x3ff2b79fa97e132b              # double 1.1698299999999999
	.quad	0x401e5660a2014728              # double 7.5843530000000001
	.quad	0x4017aa1b1960fa16              # double 5.9161190000000001
	.quad	0x400058bd66277c46              # double 2.0433300000000001
	.quad	0x400d8f0ae536501e              # double 3.6948449999999999
	.quad	0x400dbec892ab68cf              # double 3.718156
	.quad	0x4021bc56b441bb8c              # double 8.8678489999999996
	.quad	0x4021bea6a012599f              # double 8.8723650000000003
	.quad	0x402050d2806af46b              # double 8.1578560000000007
	.quad	0x400e4ce91c8eac00              # double 3.7875540000000001
	.quad	0x3fdb5460aa64c2f8              # double 0.42702499999999999
	.quad	0x40157d9c6b053198              # double 5.3726669999999999
	.quad	0x400e17f3061c79b3              # double 3.7616939999999999
	.quad	0x400011fa333764f1              # double 2.008778
	.quad	0x4000f0db6a1e81cb              # double 2.1176059999999999
	.quad	0x4017f5b6c3760bf6              # double 5.9899550000000001
	.quad	0x400a5f8b9baa1512              # double 3.2966530000000001
	.quad	0x4021a9a133c1ce6c              # double 8.8313079999999999
	.quad	0x40228c5bd0e12e84              # double 9.2741380000000006
	.quad	0x3f82378ab0c88a48              # double 0.0088950000000000001
	.quad	0x4016f7318fc50481              # double 5.7413999999999996
	.quad	0x3ff9208bfc2224ee              # double 1.570446
	.quad	0x400de2de00d1b717              # double 3.7357749999999998
	.quad	0x40207e0a63305101              # double 8.2461730000000006
	.quad	0x40040768dfbd6a59              # double 2.5036179999999999
	.quad	0x3fffe93af74cd317              # double 1.9944409999999999
	.quad	0x40230560e94ee393              # double 9.5105050000000002
	.quad	0x3ffb3ef9db22d0e5              # double 1.7028749999999999
	.quad	0x40196743632c1f43              # double 6.3508430000000002
	.quad	0x40152f3f52fc2657              # double 5.2961400000000003
	.quad	0x40193abe6a337a81              # double 6.3073670000000002
	.quad	0x4015116d6dc1a47b              # double 5.2670190000000003
	.quad	0x4011f70b49e01de2              # double 4.4912539999999996
	.quad	0x4023db78897e9963              # double 9.9286539999999998
	.quad	0x401b8e2b4959e625              # double 6.8888369999999997
	.quad	0x3ff7c474d9c6b053              # double 1.485463
	.quad	0x3fdd8676a7264a17              # double 0.46133200000000002
	.quad	0x400cd47e06961c37              # double 3.6037560000000002
	.quad	0x40059d99029ae4f3              # double 2.7019519999999999
	.quad	0x40234d8a116659d1              # double 9.6514439999999996
	.quad	0x40238594af4f0d84              # double 9.7608999999999994
	.quad	0x40062ec41dd1a21f              # double 2.7728350000000002
	.quad	0x400b659c065b63d4              # double 3.424614
	.quad	0x3ff14284dfce3151              # double 1.07874
	.quad	0x3fcb12b1b36bd2b7              # double 0.211508
	.quad	0x401f25a187a4a490              # double 7.7867490000000004
	.quad	0x401a1f88333fc86d              # double 6.5307930000000001
	.quad	0x401e710c2c5e2cdc              # double 7.610398
	.quad	0x401a78576cce5f74              # double 6.617521
	.quad	0x3fe855ffe6d58c8f              # double 0.76049800000000001
	.quad	0x3fe905553ef6b5d4              # double 0.78190099999999995
	.quad	0x40207a6351deefe5              # double 8.239039
	.quad	0x4022c7db8fde2ef5              # double 9.3903470000000002
	.quad	0x3ff1cbe7296f6513              # double 1.1122810000000001
	.quad	0x4022b092ccf6be38              # double 9.3448700000000002
	.quad	0x4002460dcb9a9da6              # double 2.2842060000000002
	.quad	0x4004141e9af5ba2c              # double 2.5098240000000001
	.quad	0x401af4a98aa8650e              # double 6.7389279999999996
	.quad	0x4020ba9930be0ded              # double 8.3644499999999997
	.quad	0x401330a4a05dd8f9              # double 4.7975029999999999
	.quad	0x400df2f6e82949a5              # double 3.7436349999999998
	.quad	0x40041f90d9d7774b              # double 2.5154130000000001
	.quad	0x402007a11a975afb              # double 8.0149010000000001
	.quad	0x400138d3f1843c3a              # double 2.1527479999999999
	.quad	0x4019b378ee286727              # double 6.4252659999999997
	.quad	0x3fd48b97785729b3              # double 0.32102000000000003
	.quad	0x3fdbd1a21ea35936              # double 0.43467
	.quad	0x4003162281344806              # double 2.3858079999999999
	.quad	0x3fc59f340d4dc65c              # double 0.16892099999999999
	.quad	0x400bee5bc87db2b3              # double 3.4913859999999999
	.quad	0x3fe72a411c2a0232              # double 0.723908
	.quad	0x3ff48373f316e371              # double 1.2820929999999999
	.quad	0x40088de1198aeb81              # double 3.069277
	.quad	0x400903efae7924af              # double 3.126922
	.quad	0x4022bd8750c1b973              # double 9.3701729999999994
	.quad	0x3ffd6480e8c8abd6              # double 1.837037
	.quad	0x3fd294812be48a59              # double 0.29031400000000002
	.quad	0x401469d30270f388              # double 5.1033439999999999
	.quad	0x40205620685553ef              # double 8.1682159999999993
	.quad	0x401132e9ccb7d417              # double 4.2997199999999998
	.quad	0x401fd219eb6390c9              # double 7.9551769999999999
	.quad	0x400632135daad602              # double 2.774451
	.quad	0x40122d056c508b33              # double 4.5439660000000002
	.quad	0x4018392b7fe08af0              # double 6.0558300000000003
	.quad	0x40142d19157abb88              # double 5.044041
	.quad	0x401e2bc23315d702              # double 7.5427330000000001
	.quad	0x4012a08c3f3e0371              # double 4.6567850000000002
	.quad	0x401a2e3de6149c6f              # double 6.5451579999999998
	.quad	0x4020aef9335d249e              # double 8.3417449999999995
	.quad	0x4000faa25d8d79d1              # double 2.1223800000000002
	.quad	0x400e5e6f71a7e308              # double 3.7961109999999998
	.quad	0x4023ccc165907d91              # double 9.8999129999999997
	.quad	0x401b13cb3e5753a4              # double 6.7693300000000001
	.quad	0x402148fb00bcbe62              # double 8.6425400000000003
	.quad	0x400cef16f4384ba1              # double 3.616743
	.quad	0x3ff5bfb267c6b8b7              # double 1.3593010000000001
	.quad	0x401473c0c1fc8f32              # double 5.1130399999999998
	.quad	0x4014278c868b9fdc              # double 5.0386220000000002
	.quad	0x402045faebc408d9              # double 8.1366800000000001
	.quad	0x40238c896dd26b72              # double 9.7744859999999996
	.quad	0x40138f32bdc26dce              # double 4.8898419999999998
	.quad	0x3ff63e3b03e20cd0              # double 1.390193
	.quad	0x4019deb67c286f8b              # double 6.4674930000000002
	.quad	0x400942784a9478c8              # double 3.1574559999999998
	.quad	0x3ff96ba387592535              # double 1.5887789999999999
	.quad	0x3ff2b4dbdf8f4730              # double 1.1691549999999999
	.quad	0x401d3769ec2ce465              # double 7.3041150000000004
	.quad	0x4020102645e4e69f              # double 8.031542
	.quad	0x401b5c59b8023a6d              # double 6.8401860000000001
	.quad	0x4006c523704790b8              # double 2.8462589999999999
	.quad	0x4011022962cfd8f1              # double 4.2521110000000002
	.quad	0x401c3d616f86a099              # double 7.0599420000000004
	.quad	0x4018c95703f2d3c8              # double 6.1966210000000004
	.quad	0x40095b23dd54da4d              # double 3.169502
	.quad	0x401c6141e9af5ba3              # double 7.0949780000000002
	.quad	0x3fca5de9c0229a5f              # double 0.20599100000000001
	.quad	0x4011dce0b912dba5              # double 4.4657010000000001
	.quad	0x4018260aa64c2f83              # double 6.0371499999999996
	.quad	0x4020364a7b4e54f8              # double 8.1060370000000006
	.quad	0x3ff1b5a31a4bdba1              # double 1.1068450000000001
	.quad	0x3ff94692f6e8294a              # double 1.5797300000000001
	.quad	0x4017a67a0f9096bc              # double 5.9125750000000004
	.quad	0x402365da48b65237              # double 9.6989309999999999
	.quad	0x4023c7574f722e1b              # double 9.8893380000000004
	.quad	0x40233e698bb4d489              # double 9.6218990000000008
	.quad	0x401dd5c0fcb4f1e5              # double 7.4587440000000003
	.quad	0x401086577531db44              # double 4.1311929999999997
	.quad	0x3fe5eedcc20d562a              # double 0.68540800000000002
	.quad	0x40200947cfa26a23              # double 8.0181260000000005
	.quad	0x400ac95c853c1483              # double 3.3483209999999999
	.quad	0x4023b5953586ca8a              # double 9.854654
	.quad	0x4019d4f3775b8130              # double 6.4579599999999999
	.quad	0x40212f54b05b7cfe              # double 8.5924429999999994
	.quad	0x3ffa43bb40b34e77              # double 1.6415360000000001
	.quad	0x401942f48c2e770c              # double 6.3153860000000002
	.quad	0x40109891e215336e              # double 4.1489940000000001
	.quad	0x40218c901d19157b              # double 8.7745370000000005
	.quad	0x40234a7807789a46              # double 9.6454470000000008
	.quad	0x40235e7bc3c5bd0e              # double 9.6845379999999999
	.quad	0x401ac6b873797460              # double 6.6940629999999999
	.quad	0x40210c199fe43676              # double 8.5236330000000002
	.quad	0x4020e27bd48cb4af              # double 8.4423510000000004
	.quad	0x3ffa75d56f32bdc2              # double 1.6537679999999999
	.quad	0x4015eb5b70691ea8              # double 5.4798410000000004
	.quad	0x4015b97c80841ede              # double 5.4311389999999999
	.quad	0x401fd75818c5c9a3              # double 7.9602969999999997
	.quad	0x4011fb00bcbe61d0              # double 4.49512
	.quad	0x402017af20ea5b53              # double 8.0462579999999999
	.quad	0x40036d8904f6dfc6              # double 2.4284840000000001
	.quad	0x4005894573a79789              # double 2.6920269999999999
	.quad	0x40205581cf7878b8              # double 8.1670060000000007
	.quad	0x3ff9bfc6540cc78f              # double 1.6093200000000001
	.quad	0x40199c729f59ccfb              # double 6.4027810000000001
	.quad	0x401c0b384fd2a62b              # double 7.0109570000000003
	.quad	0x40214d52c16df3f9              # double 8.6510219999999993
	.quad	0x3fe1c9a5657fb69a              # double 0.55586500000000005
	.quad	0x3fa9e96c3fc43b2e              # double 0.050609000000000001
	.quad	0x4016b5bb7b6bb129              # double 5.677473
	.quad	0x4022144b2b777d0f              # double 9.0396359999999998
	.quad	0x4019e88d6d3b6cbe              # double 6.4771020000000004
	.quad	0x402154e032db1e9f              # double 8.6657729999999997
	.quad	0x4021f12cf0f9d2bf              # double 8.9710459999999994
	.quad	0x4012299780baa583              # double 4.5406170000000001
	.quad	0x3fde377186551937              # double 0.472134
	.quad	0x40117e0a41a261bf              # double 4.3730859999999998
	.quad	0x402113009b30728f              # double 8.5371140000000008
	.quad	0x4003ad9f0a1be2b5              # double 2.4597760000000002
	.quad	0x4016e3ec892ab68d              # double 5.7225820000000001
	.quad	0x4010e91c4b90214b              # double 4.2276470000000002
	.quad	0x40150a0ad8a11666              # double 5.2598070000000003
	.quad	0x3ff08af3e468cac5              # double 1.0339240000000001
	.quad	0x400c6f850df15a4b              # double 3.5544530000000001
	.quad	0x400c06394face67d              # double 3.5030389999999998
	.quad	0x400eae6a76965f52              # double 3.8351639999999998
	.quad	0x400ea630ec311623              # double 3.8311480000000002
	.quad	0x40149c3009b30729              # double 5.1525270000000001
	.quad	0x401dfc7c5260f5e4              # double 7.4965679999999999
	.quad	0x40221dc6195464dc              # double 9.0581519999999997
	.quad	0x3fcc75c4a83b1d0d              # double 0.22234400000000001
	.quad	0x4020f6f06b37867f              # double 8.4823029999999999
	.quad	0x400e4a92e62131a9              # double 3.786413
	.quad	0x40197a52263d816b              # double 6.3694540000000002
	.quad	0x3ff5ac0e7bc3c5bd              # double 1.354506
	.quad	0x401c51e4f765fd8b              # double 7.0799750000000001
	.quad	0x401bc28fe260b2c8              # double 6.9400019999999998
	.quad	0x4004dc8c9320d994              # double 2.6076899999999998
	.quad	0x4013df0b28522ea1              # double 4.967816
	.quad	0x40130044f1a1986c              # double 4.7502630000000003
	.quad	0x401e724399b2c40d              # double 7.6115859999999999
	.quad	0x400dd6e158750c1c              # double 3.7299220000000002
	.quad	0x4011bfb58d1526d9              # double 4.4372160000000003
	.quad	0x4016ec61d8622c45              # double 5.730842
	.quad	0x3feb3005814940bc              # double 0.84961200000000003
	.quad	0x401f7ab474107315              # double 7.8698290000000001
	.quad	0x401a1f911cf355ce              # double 6.5308270000000004
	.quad	0x4002de9424e59296              # double 2.3586809999999998
	.quad	0x40223d1bf7ad4b27              # double 9.1193539999999995
	.quad	0x4016ceefa1e3eaf7              # double 5.7020860000000004
	.quad	0x4016d8a265f0f5a1              # double 5.711557
	.quad	0x401cbf284167a95d              # double 7.1866770000000004
	.quad	0x4016f042528ae74f              # double 5.7346279999999998
	.quad	0x40062957470eb24a              # double 2.7701859999999998
	.quad	0x40014295a6c5d207              # double 2.1575120000000001
	.quad	0x401684812be48a59              # double 5.6293990000000003
	.quad	0x40123988d2a1f8e4              # double 4.5561860000000003
	.quad	0x3ff949aaa3ad18d2              # double 1.5804849999999999
	.quad	0x401896ea854477ff              # double 6.1473789999999999
	.quad	0x40148000c9539b89              # double 5.1250030000000004
	.quad	0x4019e7f349385836              # double 6.4765139999999999
	.quad	0x4000205b39e279dd              # double 2.0157989999999999
	.quad	0x3ff0698dcdb37c9a              # double 1.0257700000000001
	.quad	0x401edb40f66a5508              # double 7.7141149999999996
	.quad	0x40050830a0b1bbcf              # double 2.6289989999999999
	.quad	0x40214adab9f559b4              # double 8.6462000000000003
	.quad	0x401bee3150dae3e7              # double 6.9826100000000002
	.quad	0x40071fb7a5f41aef              # double 2.8904869999999998
	.quad	0x4023c93a0c6b484d              # double 9.8930209999999991
	.quad	0x401269f01b866e44              # double 4.6034550000000003
	.quad	0x4017447f13059642              # double 5.816891
	.quad	0x40057eed45e9185d              # double 2.686976
	.quad	0x3ff1ba7daa4fca43              # double 1.1080300000000001
	.quad	0x401fcdbb9cf9a06a              # double 7.9509109999999996
	.quad	0x4009ef190d173fb8              # double 3.2417470000000002
	.quad	0x4016705e5f30e7ff              # double 5.6097349999999997
	.quad	0x4006a8d002e23290              # double 2.8324280000000002
	.quad	0x4020be8b9fdbd2fa              # double 8.3721589999999999
	.quad	0x402119e8c47a17f4              # double 8.5506039999999998
	.quad	0x4020af89c5e6ff7e              # double 8.342848
	.quad	0x4006d5432873bc90              # double 2.8541319999999999
	.quad	0x3ffa59a95421c044              # double 1.64689
	.quad	0x4023510b1feeb2d1              # double 9.6582880000000006
	.quad	0x40070344c37e6f72              # double 2.8765960000000002
	.quad	0x4023df727136a401              # double 9.93642
	.quad	0x4021ae5a57646ae4              # double 8.8405330000000006
	.quad	0x402057d3d4280ae1              # double 8.171538
	.quad	0x3febd7ba6698bb4d              # double 0.87008399999999997
	.quad	0x400fb23cc8de2ac3              # double 3.9620299999999999
	.quad	0x4015abe48a58b3f6              # double 5.4178639999999998
	.quad	0x40066c17ebaf1023              # double 2.8027799999999998
	.quad	0x401dccb89d6adf72              # double 7.4499230000000001
	.quad	0x40204ad0e5604189              # double 8.1461249999999996
	.quad	0x40083201040bfe3b              # double 3.024416
	.quad	0x4008230caa326e11              # double 3.0171139999999999
	.quad	0x40168f0f16f4384c              # double 5.6397060000000003
	.quad	0x4019bcdd50a88f00              # double 6.4344380000000001
	.quad	0x401ae6a161e4f766              # double 6.725225
	.quad	0x4019f7a8d64d7f0f              # double 6.4918550000000002
	.quad	0x40201cae429e0a42              # double 8.0560170000000006
	.quad	0x3fd853543aeab799              # double 0.38008599999999998
	.quad	0x3fe8465a57646ae4              # double 0.75858800000000004
	.quad	0x401381a500d5e8d5              # double 4.8766059999999998
	.quad	0x4001a6f694467382              # double 2.2065250000000001
	.quad	0x401e746412cf0f9d              # double 7.6136629999999998
	.quad	0x402082a369fcf3dc              # double 8.2551529999999999
	.quad	0x3fc47d4e09784ec6              # double 0.16007399999999999
	.quad	0x40203f3cf70153bd              # double 8.1235119999999998
	.quad	0x400afe6d58c8eef2              # double 3.3742320000000001
	.quad	0x4022cc111ada76d9              # double 9.3985679999999991
	.quad	0x3ff878e1932d6ece              # double 1.529512
	.quad	0x400d7ee99a62ed35              # double 3.6869689999999999
	.quad	0x401a79bf5946c333              # double 6.6188940000000001
	.quad	0x400d7a5d28d002e2              # double 3.6847479999999999
	.quad	0x3ff5d68e820e6299              # double 1.3648819999999999
	.quad	0x4014b7179bfdf7e8              # double 5.178801
	.quad	0x40148e8a71de69ad              # double 5.1391999999999998
	.quad	0x3fd27c88e79aae6d              # double 0.28885100000000002
	.quad	0x3fea88c3f3e0370d              # double 0.82919500000000002
	.quad	0x400b39f7f8ca8199              # double 3.403305
	.quad	0x401f142e9899bf59              # double 7.7697089999999997
	.quad	0x400e7c70c996b767              # double 3.810762
	.quad	0x401f0fa0945f9df5              # double 7.7652609999999997
	.quad	0x401e61847f562175              # double 7.5952320000000002
	.quad	0x400e4331e3a7daa5              # double 3.78281
	.quad	0x4021507b784662bb              # double 8.6571920000000002
	.quad	0x4015411ba3ca7504              # double 5.3135820000000002
	.quad	0x401a7580c308feac              # double 6.6147489999999998
	.quad	0x40103dc50ce4ead1              # double 4.0603220000000002
	.quad	0x401cbccbc05d52c1              # double 7.1843709999999996
	.quad	0x401dc40e1719f7f9              # double 7.4414600000000002
	.quad	0x4017e1eeaa6d2674              # double 5.970637
	.quad	0x40135d2630ec3116              # double 4.8409659999999999
	.quad	0x3ffc2c1a048e043a              # double 1.760767
	.quad	0x4021b6149c6f36f0              # double 8.8556260000000009
	.quad	0x4015d162ae4b0186              # double 5.4544779999999999
	.quad	0x4014c212513b5bf7              # double 5.1895230000000003
	.quad	0x40225a0d130df9be              # double 9.1758810000000004
	.quad	0x4006cfe3f359ff50              # double 2.8515090000000001
	.quad	0x3ff6483dbc23315d              # double 1.3926369999999999
	.quad	0x4020f37f1737542a              # double 8.4755789999999998
	.quad	0x4019c87229e90796              # double 6.445748
	.quad	0x40120f865d7cb2d9              # double 4.515161
	.quad	0x400f6f9b994e1a3f              # double 3.9294959999999999
	.quad	0x3fd1a9930be0ded3              # double 0.27597500000000003
	.quad	0x400453d29563a9f4              # double 2.5409290000000002
	.quad	0x400d230014f8b589              # double 3.64209
	.quad	0x4020d9491f2dc2b1              # double 8.4243860000000002
	.quad	0x401bd29d8409e55c              # double 6.9556789999999999
	.quad	0x4023bc1355475a32              # double 9.8673350000000006
	.quad	0x400ed58d9b5e95b8              # double 3.8542740000000002
	.quad	0x4020cff7be121ee6              # double 8.4061869999999992
	.quad	0x40185de0d66f0cfe              # double 6.0916779999999999
	.quad	0x402059c219eb6391              # double 8.1753090000000004
	.quad	0x4022c204af922963              # double 9.3789420000000003
	.quad	0x40107de657b84dba              # double 4.1229490000000002
	.quad	0x3ff6ff9830e3cd9a              # double 1.4374009999999999
	.quad	0x401f7463497b7415              # double 7.8636600000000003
	.quad	0x402041acbc8c0ce9              # double 8.1282709999999998
	.quad	0x4017577574f722e2              # double 5.8354090000000003
	.quad	0x4020d512cadddf44              # double 8.4161590000000003
	.quad	0x40140167ec7863bf              # double 5.0013730000000001
	.quad	0x4020b9a93293d103              # double 8.3626190000000005
	.quad	0x401646d58c8eef1c              # double 5.5691740000000003
	.quad	0x4021594c01605250              # double 8.6744079999999997
	.quad	0x4011f724b76f6d76              # double 4.4913509999999999
	.quad	0x40229b27ed84d339              # double 9.3030390000000001
	.quad	0x40216da09cc319c6              # double 8.7141160000000006
	.quad	0x3fddbf401c4fc1df              # double 0.46479799999999999
	.quad	0x4021bf11b60ae968              # double 8.8731819999999999
	.quad	0x402369858bc59b80              # double 9.7060969999999998
	.quad	0x40123092ccf6be38              # double 4.5474350000000001
	.quad	0x401cbb430f49491f              # double 7.1828729999999998
	.quad	0x40219c0a8d21bc12              # double 8.8047679999999993
	.quad	0x402354a87e38eb03              # double 9.6653479999999998
	.quad	0x3ff94ab1d4f9c1f8              # double 1.5807359999999999
	.quad	0x40228cc07aaef2c7              # double 9.2749059999999997
	.quad	0x40103fe36d22424a              # double 4.0623909999999999
	.quad	0x40236f23aafff36b              # double 9.7170690000000004
	.quad	0x40236ae2328f9f45              # double 9.7087570000000003
	.quad	0x40196f9f01b866e4              # double 6.3590049999999998
	.quad	0x4021dd8cb07d0aee              # double 8.9327140000000007
	.quad	0x40177d97f62b6ae8              # double 5.8726500000000001
	.quad	0x40233e394face67d              # double 9.6215309999999991
	.quad	0x400185bfad299956              # double 2.1903069999999998
	.quad	0x4021d380ecfa69be              # double 8.9130929999999999
	.quad	0x4020630984e3ffef              # double 8.1934319999999996
	.quad	0x4020a69f8c21e1d2              # double 8.3254359999999998
	.quad	0x40002e18ac9f2fdc              # double 2.0225080000000002
	.quad	0x4014dcf7878b7a1c              # double 5.2157879999999999
	.quad	0x3ff5a11233df2a9d              # double 1.3518239999999999
	.quad	0x401b7a450acc0bdd              # double 6.8694040000000003
	.quad	0x40211c2d490e66cb              # double 8.5550329999999999
	.quad	0x40213e872b020c4a              # double 8.6221250000000005
	.quad	0x40065876188b1141              # double 2.7931940000000002
	.quad	0x4012248f10a99b6f              # double 4.5357019999999997
	.quad	0x400d7b6805a2d730              # double 3.685257
	.quad	0x4013902363b25700              # double 4.8907600000000002
	.quad	0x4006f704790b8499              # double 2.8706140000000002
	.quad	0x4023063022dd7a9a              # double 9.512086
	.quad	0x4022a9dba908a266              # double 9.3317540000000001
	.quad	0x401a0c050bd87b57              # double 6.5117380000000002
	.quad	0x3ffbc8a58b3f63c3              # double 1.736486
	.quad	0x3fe08583621fafc9              # double 0.51629800000000003
	.quad	0x3fea08398a654930              # double 0.813504
	.quad	0x40220c122749f0e5              # double 9.0235760000000003
	.quad	0x4021aa7dcbddb984              # double 8.8329909999999998
	.quad	0x401337503b81b64e              # double 4.804017
	.quad	0x40160fc829cfdd23              # double 5.5154120000000004
	.quad	0x4019e0c521dda05a              # double 6.4695020000000003
	.quad	0x400fb7dae81882ae              # double 3.9647730000000001
	.quad	0x402078d77b7c7821              # double 8.2360190000000006
	.quad	0x401140a808c8259e              # double 4.3131409999999999
	.quad	0x4013404577d95571              # double 4.8127649999999997
	.quad	0x400e803361565c2d              # double 3.8125979999999999
	.quad	0x4011c949a5657fb7              # double 4.4465700000000004
	.quad	0x4010731b584b1ab1              # double 4.1124090000000004
	.quad	0x40220d0ebaade658              # double 9.0255030000000005
	.quad	0x4017889656eefa1e              # double 5.8833859999999998
	.quad	0x4023292c8c5004fb              # double 9.5804179999999998
	.quad	0x4022a87789a45910              # double 9.3290369999999996
	.quad	0x4012f12513b5bf6a              # double 4.735493
	.quad	0x401b9ab606b7aa26              # double 6.9010850000000001
	.quad	0x4023bece5710880e              # double 9.8726680000000009
	.quad	0x401ae9b4dcebfec1              # double 6.7282289999999998
	.quad	0x40007dd095af294e              # double 2.0614330000000001
	.quad	0x4021d521dda059a7              # double 8.9162739999999996
	.quad	0x400202cfd8f0c77e              # double 2.2513730000000001
	.quad	0x4023c67e1fc08fa8              # double 9.8876810000000006
	.quad	0x3ff42d080b673c4f              # double 1.2609939999999999
	.quad	0x4010e9ee02a77a2d              # double 4.2284470000000001
	.quad	0x401fc42070b8cfc0              # double 7.9415300000000002
	.quad	0x4003d2e59af9ebea              # double 2.4779770000000001
	.quad	0x3fb7fbacb4289119              # double 0.093684000000000003
	.quad	0x4020abc42a66dbd7              # double 8.3354809999999997
	.quad	0x401c7bf1e8e60807              # double 7.1210399999999998
	.quad	0x40023fc08fa7a850              # double 2.281129
	.quad	0x40042c2480e8c8ac              # double 2.5215540000000001
	.quad	0x3ff4351697f1f9ad              # double 1.262961
	.quad	0x40218aea0fd3b29a              # double 8.7713169999999998
	.quad	0x3ff3eeed8904f6e0              # double 1.2458320000000001
	.quad	0x4021bfe32a0663c7              # double 8.8747799999999994
	.quad	0x40210cf4a558ea7d              # double 8.5253040000000002
	.quad	0x402233d8e0008638              # double 9.1012640000000005
	.quad	0x4002680841ede11a              # double 2.3007970000000002
	.quad	0x3ff5d70f7b9e0610              # double 1.365005
	.quad	0x40215acdc011d367              # double 8.6773509999999998
	.quad	0x4023b7a26a22b389              # double 9.8586609999999996
	.quad	0x401d8eabbcb1cc96              # double 7.3893269999999998
	.quad	0x4013fb92c061847f              # double 4.9956769999999997
	.quad	0x400232f3c2dadb83              # double 2.2748789999999999
	.quad	0x3fd2f9767903211d              # double 0.29647600000000002
	.quad	0x4013dd6d7e889c1b              # double 4.9662379999999997
	.quad	0x40203777af64063a              # double 8.1083350000000003
	.quad	0x4008b4ab1d4f9c20              # double 3.0882170000000002
	.quad	0x3fede3fbbd7b2032              # double 0.93408000000000002
	.quad	0x4013bd9fd36f7e3d              # double 4.9351799999999999
	.quad	0x4011e707e175d13d              # double 4.4756159999999996
	.quad	0x3ff1ca36199780bb              # double 1.1118680000000001
	.quad	0x402341b5a63f9a4a              # double 9.6283390000000004
	.quad	0x40109254a3c64346              # double 4.1429010000000002
	.quad	0x402010ace24bba13              # double 8.0325690000000005
	.quad	0x40112f7403dddb12              # double 4.296341
	.quad	0x401a3aa8eb463498              # double 6.5572850000000003
	.quad	0x3ff1614ad362e903              # double 1.0862529999999999
	.quad	0x40208c69f8c21e1d              # double 8.2742459999999998
	.quad	0x40172a76965f5276              # double 5.7914680000000001
	.quad	0x4013f0d38cda6e76              # double 4.985182
	.quad	0x40098a8112ba16e8              # double 3.1926290000000002
	.quad	0x401dd3269df97aab              # double 7.4562020000000002
	.quad	0x40189ad8e4324420              # double 6.1512180000000001
	.quad	0x40016aada33bd9cb              # double 2.1770890000000001
	.quad	0x3fd4e7f6f4be835e              # double 0.326658
	.quad	0x3f9a550870110a13              # double 0.025714999999999998
	.quad	0x400a1f623076c051              # double 3.2653240000000001
	.quad	0x3ffed5171e29b6b3              # double 1.9270240000000001
	.quad	0x4011549129888f86              # double 4.3325849999999999
	.quad	0x401e6b7a1c25d074              # double 7.6049579999999999
	.quad	0x3fc9dc6195464dc2              # double 0.202038
	.quad	0x402178f14db59579              # double 8.7362160000000006
	.quad	0x400c6b40f66a5508              # double 3.5523699999999998
	.quad	0x3ff58df9bdc69f8c              # double 1.347162
	.quad	0x401303b213e3e293              # double 4.753609
	.quad	0x40076bedfa43fe5d              # double 2.9277000000000002
	.quad	0x4022732f23033a47              # double 9.2249689999999998
	.quad	0x400a58d5842b734b              # double 3.2933759999999999
	.quad	0x4002a6bbdbe3c105              # double 2.331413
	.quad	0x3fec140fecdd0d8d              # double 0.87744900000000003
	.quad	0x4020121426fe718b              # double 8.0353100000000008
	.quad	0x4009619da9c99286              # double 3.1726640000000002
	.quad	0x400e5c23315d701e              # double 3.7949890000000002
	.quad	0x401c6cb81733226c              # double 7.1061709999999998
	.quad	0x400604d983947497              # double 2.7523680000000001
	.quad	0x401d38f9f44d4456              # double 7.3056409999999996
	.quad	0x401b3c48f10a99b7              # double 6.808872
	.quad	0x40204531db445ed5              # double 8.1351460000000007
	.quad	0x401f8bcf0b6b6e0d              # double 7.8865319999999998
	.quad	0x4013bfc504816f00              # double 4.9372749999999996
	.quad	0x401bb1422ccb3a26              # double 6.9231040000000004
	.quad	0x3fd678140dd3fe19              # double 0.35107899999999997
	.quad	0x4009879a2834d270              # double 3.1912120000000002
	.quad	0x40137a5fc7e6b3ff              # double 4.8695060000000003
	.quad	0x4022108f42fe8251              # double 9.0323429999999991
	.quad	0x4005a534bd76ee74              # double 2.705667
	.quad	0x40171e4d5d80e497              # double 5.7795920000000001
	.quad	0x401fa7cd03537197              # double 7.9138679999999999
	.quad	0x3fa7e60c38f36695              # double 0.046677000000000003
	.quad	0x40096476f2a5a46a              # double 3.1740550000000001
	.quad	0x3ff2aa28fe260b2d              # double 1.1665430000000001
	.quad	0x3fe680e27e0ef998              # double 0.703233
	.quad	0x401f28f3eccc4695              # double 7.7899929999999999
	.quad	0x3ff893404ea4a8c1              # double 1.5359499999999999
	.quad	0x4017645fe1112770              # double 5.8480220000000003
	.quad	0x4016c08e15011905              # double 5.6880420000000003
	.quad	0x400598e29f9ce8d9              # double 2.6996509999999998
	.quad	0x3fe84e746cb966be              # double 0.75957699999999995
	.quad	0x40145a76d97b30f9              # double 5.0883440000000002
	.quad	0x401871f85d744f5d              # double 6.1112989999999998
	.quad	0x4020a02b40f66a55              # double 8.3128299999999999
	.quad	0x40100c22ee41919b              # double 4.0118520000000002
	.quad	0x4023accb5bb384fd              # double 9.8374889999999997
	.quad	0x3fea15703f2d3c79              # double 0.81511699999999998
	.quad	0x3ffdae86c6583e85              # double 1.8551089999999999
	.quad	0x3ff33ecfe9b7bf1f              # double 1.2028350000000001
	.quad	0x401c54cf4a558ea8              # double 7.0828220000000002
	.quad	0x401170e38a7e73a3              # double 4.3602429999999996
	.quad	0x401745347a5b0ff1              # double 5.8175829999999999
	.quad	0x40212ef9335d249e              # double 8.5917449999999995
	.quad	0x400624167a95c854              # double 2.7676210000000001
	.quad	0x4020fffd1dcd7061              # double 8.4999780000000005
	.quad	0x40223a528ae74f2f              # double 9.1139109999999999
	.quad	0x401afaeb3dd11be7              # double 6.7450380000000001
	.quad	0x40101e4b44a1f080              # double 4.0295839999999998
	.quad	0x4005052bd3c36113              # double 2.6275249999999999
	.quad	0x4011ca14cec41dd2              # double 4.4473450000000003
	.quad	0x4020164e48626f61              # double 8.0435660000000002
	.quad	0x4014adf3f961804e              # double 5.1698760000000004
	.quad	0x400e753586ca89fc              # double 3.8072309999999998
	.quad	0x400f22a90cd423d9              # double 3.8919239999999999
	.quad	0x401728c154c985f0              # double 5.7897999999999996
	.quad	0x4001dee2c98e53eb              # double 2.2338309999999999
	.quad	0x401e393a71151612              # double 7.5558870000000002
	.quad	0x3ff58e28ed5f138c              # double 1.347207
	.quad	0x3f96a2b1704ff434              # double 0.022105
	.quad	0x3fce75579af1886e              # double 0.237956
	.quad	0x401a36cce5f7403e              # double 6.5535160000000001
	.quad	0x400eabc5154866a1              # double 3.8338719999999999
	.quad	0x4022b8cc9a77e5eb              # double 9.3609360000000005
	.quad	0x4022f337c99ae925              # double 9.475035
	.quad	0x40228ba604e1e710              # double 9.2727509999999995
	.quad	0x401cd4a90470a809              # double 7.2076760000000002
	.quad	0x400e14ea8da7f3cf              # double 3.7602129999999998
	.quad	0x40190b2c83ec892b              # double 6.2609120000000003
	.quad	0x4013356eac860568              # double 4.8021799999999999
	.quad	0x4020b81a5870da5e              # double 8.3595760000000006
	.quad	0x402166f5a964e8b8              # double 8.7010930000000002
	.quad	0x401a779314445aa3              # double 6.6167720000000001
	.quad	0x400be40d90e23af3              # double 3.486354
	.quad	0x4022412556d19ded              # double 9.1272380000000002
	.quad	0x40026c308feac42f              # double 2.3028270000000002
	.quad	0x4011acc814d7279a              # double 4.4187320000000003
	.quad	0x3febf0b28522ea10              # double 0.87313200000000002
	.quad	0x3ff3fd5cb790fb65              # double 1.2493559999999999
	.quad	0x400a562c77574f72              # double 3.2920769999999999
	.quad	0x3ffb257b84db9c73              # double 1.6966509999999999
	.quad	0x401e9d549731098d              # double 7.6536429999999997
	.quad	0x400e30520d130dfa              # double 3.7735940000000001
	.quad	0x401f22b55ef1fddf              # double 7.7838950000000002
	.quad	0x3ff5732df505d0fa              # double 1.3406199999999999
	.quad	0x4005a6ef3d3a1d32              # double 2.7065109999999999
	.quad	0x402158867ad8e432              # double 8.6729009999999995
	.quad	0x4011e5be1a826245              # double 4.4743579999999996
	.quad	0x402076aa4b9884c7              # double 8.2317680000000006
	.quad	0x401202e09fe86834              # double 4.5028100000000002
	.quad	0x400e347bedb72820              # double 3.7756270000000001
	.quad	0x3ff388a265f0f5a1              # double 1.220858
	.quad	0x4023dae81882adc5              # double 9.9275520000000003
	.quad	0x400986fe718a86d7              # double 3.1909149999999999
	.quad	0x40050cb8e086bdf5              # double 2.6312120000000001
	.quad	0x40233b7154003255              # double 9.6160990000000001
	.quad	0x3ff5c0fba8826aa9              # double 1.359615
	.quad	0x40225ab734b51373              # double 9.1771790000000006
	.quad	0x40125faeff5c6c12              # double 4.5934410000000003
	.quad	0x401ec9b3d07c84b6              # double 7.6969750000000001
	.quad	0x401a224febd09e13              # double 6.5335080000000003
	.quad	0x4022a0763a190082              # double 9.313402
	.quad	0x4020b013cab81f97              # double 8.3439010000000007
	.quad	0x402107bfe7e1fc09              # double 8.515136
	.quad	0x401a95a07b352a84              # double 6.6461199999999998
	.quad	0x4009f599aa60913a              # double 3.2449219999999999
	.quad	0x40144475a31a4bdc              # double 5.0668550000000003
	.quad	0x4022043b2dd377e2              # double 9.0082640000000005
	.quad	0x401591322f2734f8              # double 5.3917929999999998
	.quad	0x4012b560c7c0f451              # double 4.6771269999999996
	.quad	0x3f9db0dd82fd75e2              # double 0.028995
	.quad	0x401e60d6b228dc98              # double 7.5945689999999999
	.quad	0x4009a95d91ab8e8f              # double 3.2076980000000002
	.quad	0x401e0eda22f6a50d              # double 7.5145039999999996
	.quad	0x3fea2730c67168f9              # double 0.81728400000000001
	.quad	0x4010f9c304ccee5b              # double 4.2439080000000002
	.quad	0x4022f967ec7863bf              # double 9.4871210000000001
	.quad	0x40229d3f1843c3a4              # double 9.3071219999999996
	.quad	0x401cb09edbf8b9bb              # double 7.1724810000000003
	.quad	0x4012db3f20a73f75              # double 4.7141080000000004
	.quad	0x400ea25d8d79d0a6              # double 3.8292799999999998
	.quad	0x4011c99bf5946c33              # double 4.4468839999999998
	.quad	0x4017ddcc20d5629e              # double 5.9665990000000004
	.quad	0x3fe1597f62b6ae7d              # double 0.54217499999999996
	.quad	0x40004f7c243dccea              # double 2.0388109999999999
	.quad	0x40228eef1bac2df1              # double 9.2791680000000003
	.quad	0x401342f23033a472              # double 4.8153769999999998
	.quad	0x40093daf07bfe7e2              # double 3.155119
	.quad	0x3ff3eb851eb851ec              # double 1.2450000000000001
	.quad	0x40074bfc2224edf6              # double 2.912102
	.quad	0x400514b380cb6c7a              # double 2.6351079999999998
	.quad	0x3fe26c2699c7bcc3              # double 0.57570200000000005
	.quad	0x400e6f75d9a0f0a6              # double 3.804424
	.quad	0x4019efd9fd36f7e4              # double 6.4842300000000002
	.quad	0x3fe2e071c53f39d2              # double 0.58989800000000003
	.quad	0x400120b242070b8d              # double 2.140965
	.quad	0x4012f6bf444e0daa              # double 4.740964
	.quad	0x401ad01e68a0d34a              # double 6.7032410000000002
	.quad	0x4009042b734b5137              # double 3.1270359999999999
	.quad	0x4017f4eb9a176ddb              # double 5.9891800000000002
	.quad	0x40082733ebbfd71b              # double 3.019142
	.quad	0x3fc464ece9a2c669              # double 0.15933
	.quad	0x400a35054ac29bf1              # double 3.2758889999999998
	.quad	0x40121fba450acc0c              # double 4.5309840000000001
	.quad	0x4012523f24d8fd5d              # double 4.5803190000000003
	.quad	0x3fea1c53f39d1b2e              # double 0.81595799999999996
	.quad	0x400f38e0008637bd              # double 3.902771
	.quad	0x4013d0a137f38c54              # double 4.9537399999999998
	.quad	0x401a32263d816acf              # double 6.5489740000000003
	.quad	0x40202573860999dd              # double 8.0731470000000005
	.quad	0x4023ced549731099              # double 9.9039710000000003
	.quad	0x400e01c1d6cf850e              # double 3.750858
	.quad	0x3ff20886162f166e              # double 1.127081
	.quad	0x400a538bcdfefbf4              # double 3.290794
	.quad	0x4023a916440f2389              # double 9.8302479999999992
	.quad	0x40168394face67d7              # double 5.6284979999999996
	.quad	0x3fe52dadb8348f54              # double 0.66182600000000003
	.quad	0x40186b2cc70867ae              # double 6.1046630000000004
	.quad	0x40138e9707182236              # double 4.8892480000000003
	.quad	0x400e778ee2867275              # double 3.8083779999999998
	.quad	0x40184640e9d51b50              # double 6.0686070000000001
	.quad	0x40227ca1272c94b4              # double 9.2434170000000008
	.quad	0x400b45931ca7d673              # double 3.4089719999999999
	.quad	0x3ffa90870110a138              # double 1.660285
	.quad	0x4023a0d7e02645e5              # double 9.8141470000000001
	.quad	0x4011851654d61b2a              # double 4.3799679999999999
	.quad	0x4010e806af46aa08              # double 4.2265879999999996
	.quad	0x4012a3fab10ba626              # double 4.6601359999999996
	.quad	0x401b85286b59146e              # double 6.8800369999999997
	.quad	0x401611abd1aa821f              # double 5.5172569999999999
	.quad	0x401c3293d102bc73              # double 7.0493920000000001
	.quad	0x401579ff92f2b66b              # double 5.3691389999999997
	.quad	0x401f9096feb4a665              # double 7.8912009999999996
	.quad	0x3fee85c03361565c              # double 0.95382699999999998
	.quad	0x401a35ab7dc7abfc              # double 6.5524120000000003
	.quad	0x40047dea465a5764              # double 2.5614819999999998
	.quad	0x400813a4723aafff              # double 3.0095909999999999
	.quad	0x40130b84db9c7369              # double 4.7612490000000003
	.quad	0x3ff1f17481b21c47              # double 1.1214489999999999
	.quad	0x40211eaad1d041cc              # double 8.5598969999999994
	.quad	0x4011612018a43bb4              # double 4.344849
	.quad	0x401656809d495183              # double 5.5844750000000003
	.quad	0x400f3f562174c4ce              # double 3.905926
	.quad	0x3fdb61b2a27f1b69              # double 0.427838
	.quad	0x3ff7935daad60200              # double 1.4734780000000001
	.quad	0x40036d4f5903a754              # double 2.4283739999999998
	.quad	0x3ffa4282c6ef3d3a              # double 1.641238
	.quad	0x4016f709310129cc              # double 5.7412460000000003
	.quad	0x3ff13dc69f8c21e2              # double 1.077582
	.quad	0x4023c7141205bc02              # double 9.8888250000000006
	.quad	0x401e4f1950331e3a              # double 7.5772449999999996
	.quad	0x400156f6512a94ff              # double 2.167462
	.quad	0x3fe172d5e071c53f              # double 0.54526799999999997
	.quad	0x400e6291fb3fa6df              # double 3.79813
	.quad	0x4011abfdf7e8038a              # double 4.417961
	.quad	0x400295d9a0f0a5f0              # double 2.323169
	.quad	0x40097e37585be1a8              # double 3.1866289999999999
	.quad	0x400dab5807fed203              # double 3.7086640000000002
	.quad	0x4006882d7b634dad              # double 2.8164929999999999
	.quad	0x4013433eff195033              # double 4.8156699999999999
	.quad	0x4022012ccf6be37e              # double 9.0022950000000002
	.quad	0x400a04180d3cff65              # double 3.2519990000000001
	.quad	0x401aec1871e6cd29              # double 6.7305619999999999
	.quad	0x401cb394face67d7              # double 7.1753729999999996
	.quad	0x4015ee34fc610f0f              # double 5.4826240000000004
	.quad	0x4021ee06748e4756              # double 8.964893
	.quad	0x3ff1417a89331a09              # double 1.0784860000000001
	.quad	0x4020af5b3e1437c5              # double 8.3424929999999993
	.quad	0x4012d055b8993922              # double 4.7034520000000004
	.quad	0x400c8237cdcca70d              # double 3.5635829999999999
	.quad	0x3ff11c5718eb8950              # double 1.0694189999999999
	.quad	0x40227bdddb1209ee              # double 9.2419270000000004
	.quad	0x40169fc9363f572e              # double 5.6560410000000001
	.quad	0x401a51d2e0e30447              # double 6.5799060000000003
	.quad	0x3f68eda22f6a50d7              # double 0.0030430000000000001
	.quad	0x40010154434e336a              # double 2.1256490000000001
	.quad	0x4002ba86940357a3              # double 2.3410769999999999
	.quad	0x4017182d7b634dad              # double 5.7736109999999998
	.quad	0x4022382de00d1b71              # double 9.1097249999999992
	.quad	0x400ed83c6c97d8cf              # double 3.8555839999999999
	.quad	0x3fd7165907d91255              # double 0.36073899999999998
	.quad	0x401a1e2ac3222920              # double 6.5294600000000003
	.quad	0x401439e236c15d2d              # double 5.056527
	.quad	0x3febc37a3db3bfb6              # double 0.86761200000000005
	.quad	0x3fed0ccff21b3aef              # double 0.90781400000000001
	.quad	0x4007276188b1140a              # double 2.8942290000000002
	.quad	0x40106f82f5126634              # double 4.1088979999999999
	.quad	0x4022b3e1650a45d4              # double 9.3513289999999997
	.quad	0x3fa28f7db6e503fb              # double 0.036250999999999999
	.quad	0x40159eebb341e14c              # double 5.4051960000000001
	.quad	0x4010d1d53cddd6e0              # double 4.2049149999999997
	.quad	0x3ff6045fe1112770              # double 1.3760680000000001
	.quad	0x400b8b4c7f349386              # double 3.4430170000000002
	.quad	0x4020efbf61aa3f03              # double 8.4682569999999995
	.quad	0x4023c53b8e4b87be              # double 9.8852200000000003
	.quad	0x3feae353f7ced917              # double 0.84025000000000005
	.quad	0x401fe75bc44bf4cb              # double 7.9759359999999999
	.quad	0x40109d8c6d612c6b              # double 4.1538560000000002
	.quad	0x400d1e175d13d74d              # double 3.6396929999999998
	.quad	0x400a68f3a9b06812              # double 3.3012459999999999
	.quad	0x400c1701d9f4d37c              # double 3.511234
	.quad	0x3fde985f06f69446              # double 0.47804999999999997
	.quad	0x401bf774eebf65dc              # double 6.991657
	.quad	0x401f0e453d20f2bf              # double 7.7639360000000001
	.quad	0x4023e3be6601bc99              # double 9.9448120000000006
	.quad	0x40204757f737da62              # double 8.1393430000000002
	.quad	0x4019ec2ca148ba84              # double 6.480639
	.quad	0x3ff2256abde3fbbd              # double 1.1341349999999999
	.quad	0x4018f8123810e886              # double 6.2422570000000004
	.quad	0x400be7607c4199fe              # double 3.4879769999999999
	.quad	0x4019b8a58b3f63c3              # double 6.4303189999999999
	.quad	0x401854998d045fe1              # double 6.0826169999999999
	.quad	0x40203f2d3c792d13              # double 8.1233920000000008
	.quad	0x4020ac9be8ff327b              # double 8.3371270000000006
	.quad	0x4023ea05ff1d81f1              # double 9.9570769999999999
	.quad	0x3ff430d73860999e              # double 1.261924
	.quad	0x3fba0ad8a116659d              # double 0.101728
	.quad	0x4014243675ddd2af              # double 5.0353640000000004
	.quad	0x401d7417ca2120e2              # double 7.363372
	.quad	0x40198ea077036c9c              # double 6.389284
	.quad	0x3ff51883ba3443d4              # double 1.3184849999999999
	.quad	0x4008c96787ce95fb              # double 3.0983420000000002
	.quad	0x4021b4e13f4a98ab              # double 8.8532810000000008
	.quad	0x4023bec2ce464990              # double 9.8725799999999992
	.quad	0x4014da365cb35f3d              # double 5.2130979999999996
	.quad	0x4014c4727dcbddba              # double 5.1918430000000004
	.quad	0x40107c9cd3e0bd45              # double 4.1216920000000004
	.quad	0x4016dbb23571d1d4              # double 5.7145469999999996
	.quad	0x401bbd823422467c              # double 6.9350670000000001
	.quad	0x401bcb81f969e3c9              # double 6.9487379999999996
	.quad	0x3ffcbf9c62a1b5c8              # double 1.79678
	.quad	0x401c971d1d4738a4              # double 7.1475720000000003
	.quad	0x3fed922d948dc11e              # double 0.92409399999999997
	.quad	0x4009170de8f6ceff              # double 3.1362570000000001
	.quad	0x4023e2a4fca42aed              # double 9.9426649999999998
	.quad	0x3ff6b37c99ae924f              # double 1.41882
	.quad	0x40229b356da0168b              # double 9.3031419999999994
	.quad	0x40070432441fea81              # double 2.877049
	.quad	0x401f2ebc83a96d4c              # double 7.7956409999999998
	.quad	0x4023cd0df15a4acf              # double 9.9004969999999996
	.quad	0x401fe7418d6909af              # double 7.9758360000000001
	.quad	0x4020cc0789613d32              # double 8.3984950000000005
	.quad	0x401a25e6ff7dfa01              # double 6.5370140000000001
	.quad	0x4022eef416bdb1a7              # double 9.4667060000000002
	.quad	0x4016d41c8216c615              # double 5.7071399999999999
	.quad	0x40229ac9d16fc9bc              # double 9.3023209999999991
	.quad	0x4013e659d12cadde              # double 4.974952
	.quad	0x401518ed1bf7ad4b              # double 5.2743419999999999
	.quad	0x401ab0fe047d3d43              # double 6.6728440000000004
	.quad	0x402231d96e9bbf0e              # double 9.0973620000000004
	.quad	0x401c2806af46aa08              # double 7.0390879999999996
	.quad	0x40143cd1c7de5083              # double 5.0593940000000002
	.quad	0x4023f9b3aeee9574              # double 9.9876989999999992
	.quad	0x4009bd7cb2d905c0              # double 3.2175229999999999
	.quad	0x4022fa5375c8d9f9              # double 9.4889179999999999
	.quad	0x401495b0ff10ecb7              # double 5.1461829999999997
	.quad	0x40152872b020c49c              # double 5.2895000000000003
	.quad	0x40078c57e23f24d9              # double 2.943527
	.quad	0x401eb0232096787d              # double 7.672009
	.quad	0x4022b39713ad5bee              # double 9.3507619999999996
	.quad	0x401beeab7995ee13              # double 6.9830759999999996
	.quad	0x401a1b1fab96f21f              # double 6.5264879999999996
	.quad	0x40164446b69db65f              # double 5.5666760000000002
	.quad	0x4002eb8066c2acb8              # double 2.3649909999999998
	.quad	0x4019fc74fb549f95              # double 6.4965400000000004
	.quad	0x3ffcea91d9b1b79e              # double 1.8072680000000001
	.quad	0x4022f4080f98fa37              # double 9.4766239999999992
	.quad	0x4022140bbb1f255f              # double 9.0391519999999996
	.quad	0x402130d3f1843c3a              # double 8.5953669999999995
	.quad	0x4012acdd50a88f00              # double 4.6688130000000001
	.quad	0x400e422036006d0d              # double 3.7822879999999999
	.quad	0x4012d1f4b1ee2435              # double 4.7050349999999996
	.quad	0x40141da597d49d7c              # double 5.0289520000000003
	.quad	0x401f0149c6f36ef8              # double 7.7512579999999999
	.quad	0x3fd77fdc5931ca7d              # double 0.36717899999999998
	.quad	0x3fe80feef5ec80c7              # double 0.75194499999999997
	.quad	0x40101e90795f676f              # double 4.0298480000000003
	.quad	0x4021199a847b2464              # double 8.5500070000000008
	.quad	0x3ff1bb09203a322b              # double 1.108163
	.quad	0x401cf8aa433508f6              # double 7.2428369999999997
	.quad	0x40217b37c99ae925              # double 8.7406600000000001
	.quad	0x401ec91afc04c8bd              # double 7.6963920000000003
	.quad	0x40231d8e0008637c              # double 9.5577240000000003
	.quad	0x3ff13d3a1d323fee              # double 1.077448
	.quad	0x401a8e7ddca4b125              # double 6.6391520000000002
	.quad	0x401cc8811b1d92b8              # double 7.195805
	.quad	0x3ff33ef6b5d462c3              # double 1.2028719999999999
	.quad	0x4010db87bdcf0308              # double 4.214385
	.quad	0x401c4394317acc4f              # double 7.065995
	.quad	0x401c7ff04577d955              # double 7.1249399999999996
	.quad	0x401db810a569b175              # double 7.4297510000000004
	.quad	0x3ffe1ecc3e3193f7              # double 1.8825190000000001
	.quad	0x401297d2849cb253              # double 4.6482640000000002
	.quad	0x400e2dda48b65237              # double 3.772389
	.quad	0x401658661ae70c13              # double 5.5863269999999998
	.quad	0x401abc6ef3d3a1d3              # double 6.6840169999999999
	.quad	0x401b0060bb2bba99              # double 6.7503690000000001
	.quad	0x400e991bc5586445              # double 3.8247599999999999
	.quad	0x4021c86d2ed783e0              # double 8.8914580000000001
	.quad	0x4016bb0d9513f8db              # double 5.6826689999999997
	.quad	0x3feea4463065f959              # double 0.95755299999999999
	.quad	0x40207b2a27f1b691              # double 8.2405559999999998
	.quad	0x3ffe73eccc469510              # double 1.903302
	.quad	0x3ffbe7f1b6912125              # double 1.744127
	.quad	0x40064575c0767d35              # double 2.7839160000000001
	.quad	0x4020762fdfc19c17              # double 8.2308339999999998
	.quad	0x40120b990afe60c4              # double 4.5113260000000004
	.quad	0x401745ff609dcf89              # double 5.8183569999999998
	.quad	0x4022697e34b94531              # double 9.2060410000000008
	.quad	0x40178921ccd96207              # double 5.8839180000000004
	.quad	0x40230100a393ee5f              # double 9.5019580000000001
	.quad	0x40230ee8f29d40ee              # double 9.529121
	.quad	0x402043250b52439a              # double 8.1311420000000005
	.quad	0x400ecce703afb7e9              # double 3.85005
	.quad	0x401424ce8101f31f              # double 5.0359439999999998
	.quad	0x4020e6aa2a0a9585              # double 8.4505169999999996
	.quad	0x401187ee0b0af5fd              # double 4.3827439999999998
	.quad	0x40075ead4f5903a7              # double 2.9212289999999999
	.quad	0x40214163992c8c50              # double 8.627713
	.quad	0x400fb3d3a1d323ff              # double 3.9628060000000001
	.quad	0x4020130db6a1e81d              # double 8.0372140000000005
	.quad	0x401fe26a65cf67b2              # double 7.9711090000000002
	.quad	0x40199596c82e019b              # double 6.396083
	.quad	0x401a6c8711d798d9              # double 6.6059840000000003
	.quad	0x4021b5b7281fd9ba              # double 8.8549129999999998
	.quad	0x401e7c79f666234b              # double 7.6215590000000004
	.quad	0x3ffa905f28848388              # double 1.660247
	.quad	0x40105f5946c332f0              # double 4.0931139999999999
	.quad	0x4013d6ef3d3a1d32              # double 4.9598969999999998
	.quad	0x400df5a4acf312b2              # double 3.7449430000000001
	.quad	0x4001ef2ae07e5a79              # double 2.241781
	.quad	0x4011491f70de8f6d              # double 4.3214090000000001
	.quad	0x4014946cb966be7b              # double 5.144946
	.quad	0x401fac7cd898b2ea              # double 7.9184450000000002
	.quad	0x3fdf40d90e23af32              # double 0.48833300000000002
	.quad	0x40219e81a9b8cb8e              # double 8.8095829999999999
	.quad	0x400156188b11409a              # double 2.1670389999999999
	.quad	0x4020e3d2b6f19935              # double 8.4449670000000001
	.quad	0x401114e7685985ad              # double 4.2704139999999997
	.quad	0x401d7ddbdb5d8948              # double 7.3729089999999999
	.quad	0x40150777d0f1f57b              # double 5.2572929999999998
	.quad	0x4011e43dccea28fe              # double 4.4728919999999999
	.quad	0x4011d7e77d523b36              # double 4.4608439999999998
	.quad	0x40136c560c7c0f45              # double 4.8557969999999999
	.quad	0x3ff2523f67f4dbe0              # double 1.1450800000000001
	.quad	0x401e880a5accd530              # double 7.6328519999999997
	.quad	0x3fcd9806f262888b              # double 0.23120199999999999
	.quad	0x401fe59e6256366d              # double 7.9742369999999995
	.quad	0x3ff5847e49b1fab9              # double 1.3448469999999999
	.quad	0x3ff45ce18266772d              # double 1.2726759999999999
	.quad	0x4017cc0053e2d624              # double 5.9492200000000004
	.quad	0x400b10247021d10b              # double 3.3828819999999999
	.quad	0x401cf42fe82517e7              # double 7.2384639999999996
	.quad	0x401b61ae70c1333c              # double 6.8453920000000004
	.quad	0x3ff25897a67a52ac              # double 1.1466289999999999
	.quad	0x401a19d451fc4c16              # double 6.5252239999999997
	.quad	0x401fe99c38b04ab6              # double 7.978135
	.quad	0x40168806290eed03              # double 5.6328360000000002
	.quad	0x40237ab841248d7e              # double 9.739687
	.quad	0x4022cc17ca2120e2              # double 9.3986190000000001
	.quad	0x4001c1e68a0d349c              # double 2.219678
	.quad	0x3ff442773e24febd              # double 1.266227
	.quad	0x4009e42aed139431              # double 3.2364099999999998
	.quad	0x3fe919f3c70c996b              # double 0.78441799999999995
	.quad	0x4023bbdcad14a0a1              # double 9.866918
	.quad	0x400d2dfdef8487ba              # double 3.6474570000000002
	.quad	0x4012002d16b97fe9              # double 4.5001720000000001
	.quad	0x4004c3d68405b39e              # double 2.5956239999999999
	.quad	0x401fd44806290eed              # double 7.9573059999999999
	.quad	0x3feb6047d3d4280b              # double 0.85550300000000001
	.quad	0x400ae55f3519bd40              # double 3.3619979999999998
	.quad	0x4016477ea1c68ec5              # double 5.5698189999999999
	.quad	0x400b86cca2db61bb              # double 3.44082
	.quad	0x4020b2619da9c993              # double 8.3484010000000008
	.quad	0x402299c304ccee5b              # double 9.3003160000000005
	.quad	0x401aabff04577d95              # double 6.6679649999999997
	.quad	0x3fffecaeea63b689              # double 1.9952840000000001
	.quad	0x40222819d2391d58              # double 9.078322
	.quad	0x401766c4c5974e66              # double 5.8503600000000002
	.quad	0x3ff1b76b3bb83cf3              # double 1.10728
	.quad	0x3fe7ea22b3892ee8              # double 0.74733099999999997
	.quad	0x4020bdbe7f2c300a              # double 8.3705940000000005
	.quad	0x40088bbfd71b0468              # double 3.0682369999999999
	.quad	0x3fcd2c1f42bb6673              # double 0.227909
	.quad	0x400cfcfbb949624a              # double 3.6235270000000002
	.quad	0x4021acf0d844d014              # double 8.8377750000000006
	.quad	0x4018a1c3efae7925              # double 6.1579740000000003
	.quad	0x401993721d53cddd              # double 6.3939899999999996
	.quad	0x401450ef566490a3              # double 5.0790379999999997
	.quad	0x3febc4178705425f              # double 0.86768699999999999
	.quad	0x401f019c17225b75              # double 7.7515720000000003
	.quad	0x4013f595feda6613              # double 4.9898300000000004
	.quad	0x40108d130df9bdc7              # double 4.1377680000000003
	.quad	0x401dd82a9930be0e              # double 7.4611000000000001
	.quad	0x40015e835dedf1e1              # double 2.1711490000000002
	.quad	0x3fe5b508f648c719              # double 0.67834899999999998
	.quad	0x400a1c99285a921d              # double 3.2639640000000001
	.quad	0x40158ba3ca7503b8              # double 5.3863669999999999
	.quad	0x4018a85a4f00ef13              # double 6.1644069999999997
	.quad	0x4019723076c050be              # double 6.3615130000000004
	.quad	0x4013c7414a4d2b2c              # double 4.944585
	.quad	0x4022d95054ac29bf              # double 9.4244409999999998
	.quad	0x401aa96d0917d6b6              # double 6.6654549999999997
	.quad	0x4007ddf548ecd8dc              # double 2.9833780000000001
	.quad	0x40206f9096bb98c8              # double 8.2179000000000002
	.quad	0x401075019f3c70ca              # double 4.1142640000000004
	.quad	0x3ff89707182235b5              # double 1.536872
	.quad	0x3ff217cd466f501a              # double 1.130811
	.quad	0x401fffe1da7b0b39              # double 7.9998849999999999
	.quad	0x3ff713b5bf6a0dbb              # double 1.442312
	.quad	0x4020a8ecd8dbcec8              # double 8.3299319999999994
	.quad	0x4016401040bfe3b0              # double 5.5625619999999998
	.quad	0x400876a161e4f766              # double 3.057925
	.quad	0x3fd918266772d5e0              # double 0.39209899999999998
	.quad	0x401c10b6b6e0d23d              # double 7.0163219999999997
	.quad	0x4012fb39192641b3              # double 4.7453349999999999
	.quad	0x4016f8c7e28240b8              # double 5.7429500000000004
	.quad	0x40219c3c5bd0e12f              # double 8.8051480000000009
	.quad	0x4021d68d10f51aca              # double 8.9190450000000006
	.quad	0x4023a344e50c5eb3              # double 9.8188849999999998
	.quad	0x40170ba3443d46b2              # double 5.7613649999999996
	.quad	0x4020a4a16a487336              # double 8.3215439999999994
	.quad	0x401b696feb4a6656              # double 6.8529660000000003
	.quad	0x4011c323bbc6eb0b              # double 4.4405659999999996
	.quad	0x401df5cd4ed2cbea              # double 7.4900409999999997
	.quad	0x3ff14dd50a88effe              # double 1.081502
	.quad	0x4020a02107b78466              # double 8.3127519999999997
	.quad	0x4006fe03f705857b              # double 2.874031
	.quad	0x40218db35b0bbf51              # double 8.7767590000000002
	.quad	0x3fe30d801b435265              # double 0.59539799999999998
	.quad	0x4009bf7a4e7ab756              # double 3.2184949999999999
	.quad	0x3ffc6fe4ffc9795b              # double 1.777318
	.quad	0x4023f7ca85caafbc              # double 9.9839669999999998
	.quad	0x402151fa54c55433              # double 8.6601130000000008
	.quad	0x401d425bfad29995              # double 7.3148039999999996
	.quad	0x400d1f56a7ac81d4              # double 3.6403020000000001
	.quad	0x4020d596a6a0125a              # double 8.4171650000000007
	.quad	0x3ff3d9bb2788db05              # double 1.2406569999999999
	.quad	0x4012b2b1f687b13a              # double 4.6745070000000002
	.quad	0x401fbc46d82ba5a0              # double 7.9338639999999998
	.quad	0x4023862ae4b01861              # double 9.7620459999999997
	.quad	0x4011ab2e1693c03c              # double 4.4171680000000002
	.quad	0x4022746b484d76ab              # double 9.2273809999999994
	.quad	0x401ee59d55e6bc62              # double 7.7242329999999999
	.quad	0x4014c91ea78af3e4              # double 5.1964059999999996
	.quad	0x401aa6195464dc23              # double 6.6622060000000003
	.quad	0x4022c02e2328f9f4              # double 9.3753519999999994
	.quad	0x401afdde37585be2              # double 6.7479180000000003
	.quad	0x401d232873bc903f              # double 7.2843340000000003
	.quad	0x400e2892ab68cef6              # double 3.7698109999999998
	.quad	0x3ff83000431bde83              # double 1.511719
	.quad	0x3ffc12e0e30446b7              # double 1.7546090000000001
	.quad	0x401a639c51dabe27              # double 6.5972759999999999
	.quad	0x401dde19fc2a886a              # double 7.4668960000000002
	.quad	0x40007c08fa7a8501              # double 2.0605639999999998
	.quad	0x4011eb61fe21d96f              # double 4.4798660000000003
	.quad	0x401738d823422468              # double 5.8055120000000002
	.quad	0x3fef7baecd07852f              # double 0.98384799999999994
	.quad	0x4019424e9c454584              # double 6.3147529999999996
	.quad	0x4014d56f32bdc26e              # double 5.2084320000000002
	.quad	0x40137f4dbdf8f473              # double 4.87432
	.quad	0x402058a86d71f362              # double 8.1731599999999993
	.quad	0x4007125f633ce63a              # double 2.8839709999999998
	.quad	0x4012c784a9478c87              # double 4.6948420000000004
	.quad	0x40191ca03c4b09ea              # double 6.2779550000000004
	.quad	0x3ffafddb9841aac5              # double 1.6869769999999999
	.quad	0x400e66bb55ac03ff              # double 3.8001619999999998
	.quad	0x3fdef1dc50ce4ead              # double 0.483512
	.quad	0x4022108509bf9c63              # double 9.0322650000000007
	.quad	0x401f42d16b97fe8f              # double 7.815252
	.quad	0x4017326a65cf67b2              # double 5.7992340000000002
	.quad	0x3fd2668c26139000              # double 0.28750900000000001
	.quad	0x40042225fa658c4c              # double 2.5166740000000001
	.quad	0x3fe23b2bba98eda2              # double 0.56972299999999998
	.quad	0x401cda376922d949              # double 7.2131020000000001
	.quad	0x400ac4f97edc7ef1              # double 3.3461789999999998
	.quad	0x401f3963dc486ad3              # double 7.8060450000000001
	.quad	0x401b1924f227d029              # double 6.7745550000000003
	.quad	0x40175fc71d606317              # double 5.8435329999999999
	.quad	0x402025716d2aa5c6              # double 8.0731310000000001
	.quad	0x401476cc5fbf8338              # double 5.1160139999999998
	.quad	0x40195de3b8a19c9d              # double 6.3416889999999997
	.quad	0x3ffcb22af5771002              # double 1.793498
	.quad	0x40047d3c36113405              # double 2.56115
	.quad	0x40087724fa8b4bf9              # double 3.058176
	.quad	0x4004c9f623076c05              # double 2.598614
	.quad	0x401e6a250f840182              # double 7.6036570000000001
	.quad	0x401e829f16b11c6d              # double 7.6275599999999998
	.quad	0x4006b17268d32831              # double 2.8366440000000002
	.quad	0x4021499029ae4f33              # double 8.6436779999999995
	.quad	0x401509ced0b30b5b              # double 5.2595780000000003
	.quad	0x4009bc0b9991361e              # double 3.2168190000000001
	.quad	0x3ff37065f9591cd2              # double 1.214941
	.quad	0x4013054a3c64345d              # double 4.755166
	.quad	0x401e621682f94424              # double 7.5957889999999999
	.quad	0x4005aa2014727dcc              # double 2.7080690000000001
	.quad	0x4022e4da09cc319c              # double 9.4469759999999993
	.quad	0x4008f0ee49f51698              # double 3.117642
	.quad	0x401f75b9628cbd12              # double 7.8649649999999998
	.quad	0x4013166d373affb0              # double 4.7719009999999997
	.quad	0x401da66234a87e39              # double 7.4124840000000001
	.quad	0x4012b3cb3e5753a4              # double 4.6755800000000001
	.quad	0x40204ef7a0b5ed8d              # double 8.1542329999999996
	.quad	0x401696490a350d28              # double 5.646763
	.quad	0x3ff40da3c21187e8              # double 1.2533300000000001
	.quad	0x40226359791819d2              # double 9.1940419999999996
	.quad	0x402200897e996313              # double 9.0010490000000001
	.quad	0x400a7314ca925fe9              # double 3.3061919999999998
	.quad	0x400fccbd1244a622              # double 3.9749699999999999
	.quad	0x40234290eed02cd4              # double 9.6300120000000006
	.quad	0x401ea05af6c69b5a              # double 7.6565969999999997
	.quad	0x3fdb426fe718a86d              # double 0.42592999999999998
	.quad	0x401a515ad106ee31              # double 6.5794480000000002
	.quad	0x40042b2a6b0d9514              # double 2.521077
	.quad	0x3fdbc729f59ccfaf              # double 0.434031
	.quad	0x3fe641e14bdfd263              # double 0.69554199999999999
	.quad	0x401ef91e646f1562              # double 7.7432800000000004
	.quad	0x4012f1dbca9691a7              # double 4.7361899999999997
	.quad	0x40197ef459d9902a              # double 6.3739790000000003
	.quad	0x401ac82c2bd7f51f              # double 6.695481
	.quad	0x40113f038e29f9cf              # double 4.3115370000000004
	.quad	0x40196c39bcba3012              # double 6.3556889999999999
	.quad	0x3fe75e7210be9425              # double 0.73027900000000001
	.quad	0x401a2b9cf9a06a6e              # double 6.5425909999999998
	.quad	0x401ff5ec3dab5c3a              # double 7.9901590000000002
	.quad	0x402236ed6777079e              # double 9.1072799999999994
	.quad	0x40127dab5c39bcba              # double 4.6227239999999998
	.quad	0x3fea85b18548a9bd              # double 0.82882
	.quad	0x40095def8487b99d              # double 3.1708669999999999
	.quad	0x4022e5a09cc319c6              # double 9.4484910000000006
	.quad	0x4020032a0663c750              # double 8.0061800000000005
	.quad	0x401e5e7d1351159c              # double 7.5922739999999997
	.quad	0x402002ce89656ef0              # double 8.0054820000000007
	.quad	0x4015e09d495182aa              # double 5.4693500000000004
	.quad	0x4014aa5870da5daf              # double 5.166353
	.quad	0x3ff0b0eb24a6a876              # double 1.043193
	.quad	0x3ff9242070b8cfc0              # double 1.5713200000000001
	.quad	0x3fef4a148ba83f4f              # double 0.97779300000000002
	.quad	0x400ba0fb224aada3              # double 3.4536039999999999
	.quad	0x4000445564b662fe              # double 2.033366
	.quad	0x4020f127913e8145              # double 8.4710049999999999
	.quad	0x40044779207d4e09              # double 2.5348989999999998
	.quad	0x401dc2617c1bda51              # double 7.4398249999999999
	.quad	0x40001cfede97d06c              # double 2.0141580000000001
	.quad	0x3fe90d49949e8816              # double 0.78287200000000001
	.quad	0x40115d2fa0d77b7c              # double 4.3410019999999996
	.quad	0x3fc55989df1172ef              # double 0.166795
	.quad	0x400473bc0a06e9ff              # double 2.556511
	.quad	0x401d8851a8694035              # double 7.3831239999999996
	.quad	0x3fe105015c209247              # double 0.53186100000000003
	.quad	0x401c8991ff7164c7              # double 7.1343459999999999
	.quad	0x400e8176ddaceee1              # double 3.813215
	.quad	0x400bcdeb0fadf2ed              # double 3.475546
	.quad	0x400fd290257c914b              # double 3.977814
	.quad	0x3fffc38d1d8a5482              # double 1.985242
	.quad	0x40160f7596851223              # double 5.5150969999999999
	.quad	0x400f2c100e6afcce              # double 3.896515
	.quad	0x4014b7b2cc70867b              # double 5.1793930000000001
	.quad	0x4023c7ed41b75a75              # double 9.8904820000000004
	.quad	0x3ffe6557de0d66f1              # double 1.899742
	.quad	0x3fe2c873365881a1              # double 0.58696899999999996
	.quad	0x3ff7bedb7281fd9c              # double 1.4840960000000001
	.quad	0x4010b40c4156e265              # double 4.1758280000000001
	.quad	0x401af1476af89c5e              # double 6.7356239999999996
	.quad	0x400d7547e06961c3              # double 3.6822659999999998
	.quad	0x4022fdeb52c9d170              # double 9.4959360000000004
	.quad	0x4009d05f28848388              # double 3.2267440000000001
	.quad	0x40217493ea2d2fe4              # double 8.727691
	.quad	0x401e80e4da09cc32              # double 7.6258730000000003
	.quad	0x3ff0fb4d48882f0e              # double 1.061353
	.quad	0x40162adc4c9c90c5              # double 5.5418560000000001
	.quad	0x401919c4545846e9              # double 6.275163
	.quad	0x4019299dcb5781c7              # double 6.2906409999999999
	.quad	0x4017e1eb4202d9cf              # double 5.9706239999999999
	.quad	0x3fe1a26c3b927d46              # double 0.55107700000000004
	.quad	0x401ec8c64fdb09a6              # double 7.6960689999999996
	.quad	0x400d1fac1d29dc72              # double 3.6404649999999998
	.quad	0x40218433f85510d4              # double 8.7582090000000007
	.quad	0x3ff3a3a3a8e71477              # double 1.2274510000000001
	.quad	0x4017bc35ce182667              # double 5.9337989999999996
	.quad	0x40140a89fc6da448              # double 5.0102919999999997
	.quad	0x400c09fa54c55433              # double 3.5048720000000002
	.quad	0x401ee003254e6e22              # double 7.7187619999999999
	.quad	0x3ff6fd0e12e83a11              # double 1.4367810000000001
	.quad	0x40206a5a038194c0              # double 8.2077179999999998
	.quad	0x40224a3fee2c98e5              # double 9.1450189999999996
	.quad	0x3ffd6ca793576039              # double 1.839027
	.quad	0x4022ee1c79b34a45              # double 9.4650610000000003
	.quad	0x4002069be09bb6aa              # double 2.2532269999999999
	.quad	0x400bfc6759ab6d01              # double 3.4982440000000001
	.quad	0x40121bafd976ff3b              # double 4.5270380000000001
	.quad	0x3ff15413122b7baf              # double 1.083026
	.quad	0x4011eeefe4ffc979              # double 4.4833369999999997
	.quad	0x3ffe1d56f32bdc27              # double 1.882163
	.quad	0x400881d4b6a619db              # double 3.0633940000000002
	.quad	0x4023632f23033a47              # double 9.6937189999999997
	.quad	0x402162938de6ddf0              # double 8.6925319999999999
	.quad	0x401d928134480629              # double 7.3930709999999999
	.quad	0x401b84545846e8f3              # double 6.8792280000000003
	.quad	0x4001940dd3fe1976              # double 2.197292
	.quad	0x4011857f3061c79b              # double 4.3803679999999998
	.quad	0x3ff6f2b884406c01              # double 1.434258
	.quad	0x400c9cde5d18090b              # double 3.5765959999999999
	.quad	0x3ff5504e618ce2d2              # double 1.332106
	.quad	0x40047aa369fcf3dc              # double 2.559882
	.quad	0x4020526bd6e8af81              # double 8.1609789999999993
	.quad	0x4020355b035bd513              # double 8.1042100000000001
	.quad	0x40063252ce032db2              # double 2.774572
	.quad	0x40109d68405b39e2              # double 4.1537179999999996
	.quad	0x402292f5dbb9cf9a              # double 9.287032
	.quad	0x401e292189bd8384              # double 7.5401670000000003
	.quad	0x40222e25e99e94ab              # double 9.0901329999999998
	.quad	0x3ff4d00a393ee5ef              # double 1.300791
	.quad	0x4007af533f42352f              # double 2.9606080000000001
	.quad	0x3ffb66aca7935760              # double 1.712567
	.quad	0x400c71f687b139c9              # double 3.5556459999999999
	.quad	0x3fea1363f572de44              # double 0.814867
	.quad	0x401662eb1c432ca5              # double 5.5965999999999996
	.quad	0x4013be924f227d03              # double 4.9361050000000004
	.quad	0x4016496a26e54717              # double 5.5716939999999999
	.quad	0x40003cc7d1bb4917              # double 2.0296780000000001
	.quad	0x4013226f60e0eb68              # double 4.7836280000000002
	.quad	0x40006428d434a01b              # double 2.0489060000000001
	.quad	0x401989dc725c3dee              # double 6.3846299999999996
	.quad	0x40156a06a6e32e38              # double 5.3535409999999999
	.quad	0x4020bb9ecf638002              # double 8.3664459999999998
	.quad	0x4016d7082491afc0              # double 5.7099919999999997
	.quad	0x401dd57fb69984a1              # double 7.4584950000000001
	.quad	0x401f5fba450acc0c              # double 7.8434840000000001
	.quad	0x40101dbf8b9baa15              # double 4.0290509999999999
	.quad	0x40185703f2d3c793              # double 6.0849760000000002
	.quad	0x402187a1a0cf1801              # double 8.7649050000000006
	.quad	0x401217acc4ef88b9              # double 4.5231199999999996
	.quad	0x4005158e219652bd              # double 2.6355249999999999
	.quad	0x4000fdb65ecc3e32              # double 2.1238830000000002
	.quad	0x3fd7011904b3c3e7              # double 0.35944199999999998
	.quad	0x400496787ce95fab              # double 2.5734720000000002
	.quad	0x4020bab40f66a551              # double 8.3646550000000008
	.quad	0x3faa53111f0c34c2              # double 0.051415000000000002
	.quad	0x40203cf765fd8adb              # double 8.1190750000000005
	.quad	0x4016546e08f21709              # double 5.5824509999999998
	.quad	0x400f2a6a875d56f3              # double 3.8957109999999999
	.quad	0x3fce535c9e6687f4              # double 0.23691899999999999
	.quad	0x40210ebf8769ec2d              # double 8.5288050000000002
	.quad	0x401ad2f0e0a84be4              # double 6.705997
	.quad	0x3ffdf459d99029ae              # double 1.8721559999999999
	.quad	0x401939ff0cbaf966              # double 6.3066370000000003
	.quad	0x3ff1af08cc575c07              # double 1.1052329999999999
	.quad	0x400135360d024702              # double 2.1509819999999999
	.quad	0x40114cd573647bab              # double 4.3250330000000003
	.quad	0x4013ce4b44a1f080              # double 4.9514589999999998
	.quad	0x401fb84b1ab0856e              # double 7.9299739999999996
	.quad	0x401a2f1d3ed527e5              # double 6.5460099999999999
	.quad	0x400f7fb69984a0e4              # double 3.93736
	.quad	0x3fff35d56f32bdc2              # double 1.9506429999999999
	.quad	0x400989ed3953dea4              # double 3.1923469999999998
	.quad	0x4002cb6c7a7c9de0              # double 2.3493279999999999
	.quad	0x3ff5713f077ccc03              # double 1.3401479999999999
	.quad	0x4017bc47a17f4129              # double 5.9338670000000002
	.quad	0x3fefb73affb04ee8              # double 0.99111700000000002
	.quad	0x401ef99b6f5caf2d              # double 7.7437569999999995
	.quad	0x4008e9b9d7fd8277              # double 3.1141239999999999
	.quad	0x4019f8cb8e086bdf              # double 6.4929639999999997
	.quad	0x40185be5109070fc              # double 6.0897410000000001
	.quad	0x3ffc955c52e72da1              # double 1.786465
	.quad	0x3ffb97e34b945309              # double 1.7245820000000001
	.quad	0x4000e3b9ae0c1765              # double 2.1111939999999998
	.quad	0x4021c83a322af577              # double 8.8910689999999999
	.quad	0x40228f70bd017daf              # double 9.2801570000000009
	.quad	0x401c4191148fd9fd              # double 7.0640299999999998
	.quad	0x401353c07ee0b0af              # double 4.8317889999999997
	.quad	0x40208c894c447c31              # double 8.2744850000000003
	.quad	0x401b401b866e43aa              # double 6.8126049999999996
	.quad	0x401893bf2f555821              # double 6.1442839999999999
	.quad	0x3ffe96b228dc981c              # double 1.911791
	.quad	0x401f8d549731098d              # double 7.8880179999999997
	.quad	0x401f18383ad9f0a2              # double 7.7736520000000002
	.quad	0x4020e1b1fab96f22              # double 8.4408110000000001
	.quad	0x400418ce2d1f1cfc              # double 2.5121120000000001
	.quad	0x40173e24febd09e1              # double 5.8106879999999999
	.quad	0x400a8a747d805e5f              # double 3.3176049999999999
	.quad	0x3fd2b26bf8769ec3              # double 0.29214000000000001
	.quad	0x400c0d58c8eef1bb              # double 3.5065170000000001
	.quad	0x4002ec1ebc83a96d              # double 2.3652929999999999
	.quad	0x400d080d801b4352              # double 3.6289319999999998
	.quad	0x4013ec158fb43d8a              # double 4.9805510000000002
	.quad	0x401b6feeb2d0a244              # double 6.8593089999999997
	.quad	0x402183d577963993              # double 8.7574880000000004
	.quad	0x3ffc80a6b93ccd10              # double 1.781409
	.quad	0x40207451fc4c1659              # double 8.2271879999999999
	.quad	0x401bf2c4d65e4606              # double 6.9870789999999996
	.quad	0x3fbd8a979e16d6dc              # double 0.115396
	.quad	0x4009fa29c779a6b5              # double 3.24715
	.quad	0x401f13f9e7b80a9e              # double 7.7695080000000001
	.quad	0x400f66d2ed783dff              # double 3.9252069999999999
	.quad	0x3fb99d2391d57ffa              # double 0.100054
	.quad	0x401ba31337eb28d8              # double 6.9092529999999996
	.quad	0x4019c9d0203e63e9              # double 6.4470830000000001
	.quad	0x4010099dcb5781c7              # double 4.0093909999999999
	.quad	0x40222bc74fb549f9              # double 9.0855049999999995
	.quad	0x4016454003254e6e              # double 5.5676269999999999
	.quad	0x40128c725c3dee78              # double 4.6371549999999999
	.quad	0x4020e35c39bcba30              # double 8.4440629999999999
	.quad	0x4017489331a08bfc              # double 5.8208739999999999
	.quad	0x401c9ed8904f6dfc              # double 7.1551229999999997
	.quad	0x40046ba94bbe4474              # double 2.5525690000000001
	.quad	0x401d92e2fbe33acd              # double 7.3934439999999997
	.quad	0x40210c6ef3d3a1d3              # double 8.5242839999999998
	.quad	0x4013e1e0c5a8155d              # double 4.9705839999999997
	.quad	0x402345b20b8066c3              # double 9.6361240000000005
	.quad	0x40217a38da3c2118              # double 8.7387149999999991
	.quad	0x40194ed41b75a74c              # double 6.326981
	.quad	0x4023a4fa8b4bf8fd              # double 9.8222240000000002
	.quad	0x40125012599ed7c7              # double 4.578195
	.quad	0x3ffbb9d3cbc48f11              # double 1.7328680000000001
	.quad	0x401fc3ffac1d29dc              # double 7.9414049999999996
	.quad	0x3fcfdd97f62b6ae8              # double 0.24895
	.quad	0x3ff683419e300150              # double 1.4070450000000001
	.quad	0x40140d4c76d117b5              # double 5.0129869999999999
	.quad	0x4021565d18090b41              # double 8.6686789999999991
	.quad	0x40100cd573647bab              # double 4.0125330000000003
	.quad	0x4016c36cdf266ba5              # double 5.6908450000000004
	.quad	0x4022fef9b994e1a4              # double 9.497999
	.quad	0x40117aef2c732592              # double 4.3700530000000004
	.quad	0x401693b96af038e3              # double 5.6442620000000003
	.quad	0x4007c31f03d145d8              # double 2.9702739999999999
	.quad	0x4002f06466b1e5c1              # double 2.3673790000000001
	.quad	0x3fefcf722e1ac57e              # double 0.99407299999999998
	.quad	0x402037ae3608d089              # double 8.1087509999999998
	.quad	0x4011a4dcebfec13c              # double 4.4109990000000003
	.quad	0x402363882278d0cc              # double 9.6943979999999996
	.quad	0x40130676a7264a17              # double 4.7563120000000003
	.quad	0x3ff9609784ec636b              # double 1.586082
	.quad	0x401c2f5dbb9cf9a0              # double 7.0462559999999996
	.quad	0x4020c1a240314877              # double 8.3781909999999993
	.quad	0x4010efd113836a83              # double 4.2341959999999998
	.quad	0x4023dca9cdc44391              # double 9.9309829999999994
	.quad	0x4021065ecc3e3194              # double 8.512442
	.quad	0x401a900da1a93294              # double 6.6406770000000002
	.quad	0x402184cab3edd8b6              # double 8.7593589999999999
	.quad	0x4007a0713f077ccc              # double 2.953341
	.quad	0x401c42c625e99e95              # double 7.0652090000000003
	.quad	0x401da02eec7c957d              # double 7.4064290000000002
	.quad	0x401d104816f0068e              # double 7.2659000000000002
	.quad	0x3fdde2c12ad81adf              # double 0.46696500000000002
	.quad	0x400f483d35eb7458              # double 3.9102730000000001
	.quad	0x3fee034091c08744              # double 0.93789699999999998
	.quad	0x401020a915379fa9              # double 4.0318949999999996
	.quad	0x401c06aca7935760              # double 7.0065179999999998
	.quad	0x4014dfe82517e77d              # double 5.2186589999999997
	.quad	0x3ff78766c6de7642              # double 1.4705569999999999
	.quad	0x402366f5ec80c73b              # double 9.7010950000000004
	.quad	0x402162c1b10fd7e4              # double 8.6928839999999993
	.quad	0x4014b6d9be4cd749              # double 5.1785649999999999
	.quad	0x3ffcf2d0a2446306              # double 1.8092809999999999
	.quad	0x3ffe532f87ad080b              # double 1.8953089999999999
	.quad	0x401675bee3d5fdce              # double 5.614986
	.quad	0x40047933e35c5b4b              # double 2.5591810000000002
	.quad	0x400fa8049667b5f2              # double 3.9570400000000001
	.quad	0x401255e679463cfb              # double 4.5838869999999998
	.quad	0x40201aa172abef07              # double 8.0520130000000005
	.quad	0x3fecb3e9a6f826ee              # double 0.89696200000000004
	.quad	0x3ffaa3da2f8bdec6              # double 1.665003
	.quad	0x400b893af74cd317              # double 3.4420069999999998
	.quad	0x4011226202539757              # double 4.2835770000000002
	.quad	0x401566af46aa087d              # double 5.3502780000000003
	.quad	0x40008d58c8eef1bb              # double 2.0690170000000001
	.quad	0x40219057082491b0              # double 8.7819140000000004
	.quad	0x400e2e514c22ee42              # double 3.7726160000000002
	.quad	0x4021e05553ef6b5d              # double 8.9381509999999995
	.quad	0x3fee322af5771002              # double 0.94362400000000002
	.quad	0x4014da797891e215              # double 5.2133539999999998
	.quad	0x3fee100e6afcce1c              # double 0.93945999999999996
	.quad	0x3ffa0a8198f1d3ed              # double 1.6275649999999999
	.quad	0x401ee43fe5c91d15              # double 7.7229
	.quad	0x401d05a9a8049668              # double 7.2555300000000003
	.quad	0x3ff856df3f961805              # double 1.521209
	.quad	0x400783608d08919f              # double 2.939149
	.quad	0x40133383f0bae89f              # double 4.8003080000000002
	.quad	0x3ff4728e92d55a3a              # double 1.277968
	.quad	0x4003150ebaade658              # double 2.3852820000000001
	.quad	0x400b0cc814d7279a              # double 3.3812410000000002
	.quad	0x40211dc63ae2541e              # double 8.5581530000000008
	.quad	0x40058bcdfefbf402              # double 2.6932640000000001
	.quad	0x4021ce4f54d1e96c              # double 8.9029489999999995
	.quad	0x401f8e83a109d063              # double 7.8891739999999996
	.quad	0x400de9c347e8ccde              # double 3.7391420000000002
	.quad	0x3ffedfd9ba1b1961              # double 1.929651
	.quad	0x402275972cd7cf5f              # double 9.2296689999999995
	.quad	0x400571600f34506a              # double 2.6803590000000002
	.quad	0x400b32b55ef1fddf              # double 3.3997600000000001
	.quad	0x4011b45f17bd8be7              # double 4.4261439999999999
	.quad	0x4004684be40420f7              # double 2.550926
	.quad	0x3fe3f60bf5d78812              # double 0.62378500000000003
	.quad	0x4008ef9d2bf55150              # double 3.1169989999999999
	.quad	0x402387ace67d77fb              # double 9.7649910000000001
	.quad	0x40109b0ea18372e7              # double 4.1514230000000003
	.quad	0x4021d4ead0c3d252              # double 8.9158539999999995
	.quad	0x4022c570a3d70a3d              # double 9.3856249999999992
	.quad	0x3fe5802c0a4a05de              # double 0.67189600000000005
	.quad	0x400109539b888723              # double 2.1295540000000002
	.quad	0x4021f254e6e221c9              # double 8.9733040000000006
	.quad	0x4011e8c436fc1590              # double 4.4773110000000003
	.quad	0x401b6c1ca3a4b557              # double 6.8555780000000004
	.quad	0x3fc5ea35935fc3b5              # double 0.17121
	.quad	0x4016a158fb43d89d              # double 5.6575660000000001
	.quad	0x4014a054ef459d99              # double 5.156574
	.quad	0x401ceafea3df6db9              # double 7.2294869999999998
	.quad	0x4009d2c061847f56              # double 3.2279059999999999
	.quad	0x40168198f1d3ed52              # double 5.6265599999999996
	.quad	0x401b1854477ff152              # double 6.7737590000000001
	.quad	0x40147c7d5ed06fef              # double 5.1215719999999996
	.quad	0x401eb9f87f023e9f              # double 7.6816120000000003
	.quad	0x4011c40cc78e9f6b              # double 4.4414550000000004
	.quad	0x40037552e2fbe33b              # double 2.4322870000000001
	.quad	0x3ff87b2cc70867ae              # double 1.5300720000000001
	.quad	0x4023d2f3e468cac5              # double 9.9120170000000005
	.quad	0x4014dd2d01c0ca60              # double 5.215992
	.quad	0x401d7fa05143bf72              # double 7.3746349999999996
	.quad	0x3ff2529bae46cfc8              # double 1.145168
	.quad	0x40117429e0a41a26              # double 4.3634409999999999
	.quad	0x4022b3ba12b5e52a              # double 9.3510290000000005
	.quad	0x4022cc0c62e4d1a6              # double 9.3985319999999994
	.quad	0x401c8823c85c24c4              # double 7.132949
	.quad	0x401a8de82d7b634e              # double 6.6385810000000003
	.quad	0x40210a085b18548b              # double 8.5195950000000007
	.quad	0x3ff036e935b91f71              # double 1.013406
	.quad	0x4000a4f3343fa2ad              # double 2.0805419999999999
	.quad	0x3fd6eebb341e14be              # double 0.358321
	.quad	0x401650dd3fe1975f              # double 5.5789689999999998
	.quad	0x401694d056c508b3              # double 5.6453259999999998
	.quad	0x402367b24638c975              # double 9.7025319999999997
	.quad	0x40082f0739b024f6              # double 3.0229629999999998
	.quad	0x3ff4949c6f36ef80              # double 1.2862819999999999
	.quad	0x400864b6e935b91f              # double 3.0491769999999998
	.quad	0x40063f127f5e84f1              # double 2.7807970000000002
	.quad	0x401ac3a9f383f0bb              # double 6.6910780000000001
	.quad	0x400e96390c9107fb              # double 3.8233510000000002
	.quad	0x4020a67e62dc6e2b              # double 8.3251830000000009
	.quad	0x401a462c77574f72              # double 6.5685289999999998
	.quad	0x40152c39bcba3012              # double 5.2931889999999999
	.quad	0x40054cb9ecf63800              # double 2.6624639999999999
	.quad	0x40235ff540895d0b              # double 9.6874179999999991
	.quad	0x40129aff2a172abf              # double 4.6513640000000001
	.quad	0x3fd12fcefaa4766c              # double 0.26854299999999998
	.quad	0x3fd2e379b77c02b0              # double 0.29513400000000001
	.quad	0x4021b26506141637              # double 8.8484269999999992
	.quad	0x400b76af038e29fa              # double 3.4329510000000001
	.quad	0x4012d044f1a1986c              # double 4.7033880000000003
	.quad	0x400881b75a74c09c              # double 3.0633379999999999
	.quad	0x4010a5275ee99a63              # double 4.1612830000000001
	.quad	0x40186cec41dd1a22              # double 6.1063700000000001
	.quad	0x401084d2b2bfdb4d              # double 4.1297100000000002
	.quad	0x40213352220bc383              # double 8.6002360000000007
	.quad	0x401066638433d6c7              # double 4.0999889999999999
	.quad	0x3ff20cf8d716d2aa              # double 1.1281669999999999
	.quad	0x401d7ee392e1ef74              # double 7.3739150000000002
	.quad	0x4019f4f7ec3547e0              # double 6.4892269999999996
	.quad	0x401af2cf0f9d2bf5              # double 6.7371179999999997
	.quad	0x400bf4267839cd81              # double 3.4942139999999999
	.quad	0x4002a40c8472c0e8              # double 2.3301020000000001
	.quad	0x40028456f75d9a0f              # double 2.314619
	.quad	0x4023852674080f99              # double 9.760059
	.quad	0x4012a8b439581062              # double 4.6647499999999997
	.quad	0x4010d54152b0a6fc              # double 4.2082569999999997
	.quad	0x3ffa0b08dd1e53a8              # double 1.627694
	.quad	0x4008bee78183f91e              # double 3.0932149999999998
	.quad	0x40224c3ce2089e34              # double 9.1489019999999996
	.quad	0x4003c2a6f3f52fc2              # double 2.4700449999999998
	.quad	0x4002fafd113836a8              # double 2.3725529999999999
	.quad	0x400b73c60029f16b              # double 3.43153
	.quad	0x402238ffda4052d6              # double 9.1113269999999993
	.quad	0x40187fb3fa6defc8              # double 6.1247100000000003
	.quad	0x40039cb4f1e4b44a              # double 2.4515169999999999
	.quad	0x4020963c74fb54a0              # double 8.2934300000000007
	.quad	0x4022ec660a201472              # double 9.4617159999999991
	.quad	0x4018e8b827fa1a0d              # double 6.2272650000000001
	.quad	0x401c59207d4e0978              # double 7.0870379999999997
	.quad	0x401313a0407cc7d2              # double 4.7691660000000002
	.quad	0x4003d7b0f6ad70e7              # double 2.480318
	.quad	0x4009bcf2495e17e3              # double 3.2172589999999999
	.quad	0x3ffe47304039abf3              # double 1.89238
	.quad	0x401737ee0b0af5fd              # double 5.8046189999999998
	.quad	0x4022c7ecfe9b7bf2              # double 9.3904800000000002
	.quad	0x400bd700474d9c6b              # double 3.479981
	.quad	0x3fed7f1f9acffa7f              # double 0.92176800000000003
	.quad	0x40110b502ababead              # double 4.2610479999999997
	.quad	0x400d778dd616f86a              # double 3.683376
	.quad	0x40101ba3ca7503b8              # double 4.0269919999999999
	.quad	0x3ff8fcf80dc33722              # double 1.56176
	.quad	0x40077f70de8f6cf0              # double 2.937227
	.quad	0x3ffb568a50507a6c              # double 1.708628
	.quad	0x3fe294c447c30d30              # double 0.58065999999999995
	.quad	0x4016842d8c2a454e              # double 5.6290800000000001
	.quad	0x401f458793dd97f6              # double 7.8178999999999998
	.quad	0x40060541d8e86402              # double 2.752567
	.quad	0x4012eee84ad794a7              # double 4.7333080000000001
	.quad	0x40223f4b61fe21d9              # double 9.1236219999999992
	.quad	0x402129fec99f1ae3              # double 8.5820220000000003
	.quad	0x40209afaf8594291              # double 8.3026959999999992
	.quad	0x40215e659d12cade              # double 8.6843690000000002
	.quad	0x401f0e86833c6003              # double 7.7641850000000003
	.quad	0x40171f9591cd1c7e              # double 5.7808440000000001
	.quad	0x3ffc2856605ee569              # double 1.7598480000000001
	.quad	0x4014410a99b6f5cb              # double 5.063517
	.quad	0x3fe747607c4199fe              # double 0.72746299999999997
	.quad	0x4010940a6b93ccd1              # double 4.144571
	.quad	0x40073bb2788db057              # double 2.9041489999999999
	.quad	0x4021acea4a8c154d              # double 8.8377250000000007
	.quad	0x401d78b8ae31d713              # double 7.3678920000000003
	.quad	0x3fc5f644955b4678              # double 0.17157800000000001
	.quad	0x40025df43c7d5ed0              # double 2.2958759999999998
	.quad	0x401e129670196d8f              # double 7.5181519999999997
	.quad	0x3ffaeb484d76ab58              # double 1.682442
	.quad	0x4023cbee5eedcc21              # double 9.8983030000000002
	.quad	0x400dd256798958da              # double 3.7277040000000001
	.quad	0x4011fa91d9b1b79e              # double 4.4946970000000004
	.quad	0x4023a06034f3fd93              # double 9.8132339999999995
	.quad	0x4020d33a8a3f8983              # double 8.4125560000000004
	.quad	0x3fc2a1be2b4959e6              # double 0.145561
	.quad	0x401d3da6a4441787              # double 7.310206
	.quad	0x4011e98a65492ff5              # double 4.4780670000000002
	.quad	0x4002c14488c60cbf              # double 2.3443689999999999
	.quad	0x40200873365881a1              # double 8.0165039999999994
	.quad	0x4011c1276fb09204              # double 4.4386270000000003
	.quad	0x401a521101b00368              # double 6.5801429999999996
	.quad	0x3ff3aa737110e454              # double 1.229114
	.quad	0x3fb4642396073de2              # double 0.079653000000000001
	.quad	0x400e5a76534373f3              # double 3.794171
	.quad	0x40145c8711d798d9              # double 5.0903590000000003
	.quad	0x400b1bac2df0d413              # double 3.388512
	.quad	0x40205b702602c908              # double 8.1785899999999998
	.quad	0x40179c49ba5e353f              # double 5.9026249999999996
	.quad	0x4023191c4b90214b              # double 9.5490440000000003
	.quad	0x4023224fca42aed1              # double 9.5670149999999996
	.quad	0x401fe6ea854477ff              # double 7.9755039999999999
	.quad	0x400a892684cf073a              # double 3.3169680000000001
	.quad	0x40217a1b5c7cd899              # double 8.7384900000000005
	.quad	0x40145beb18116ebd              # double 5.0897639999999997
	.quad	0x401c2256798958da              # double 7.0335330000000003
	.quad	0x3ffd3e78e1932d6f              # double 1.827752
	.quad	0x3ff4555a3a08398a              # double 1.2708379999999999
	.quad	0x4014058a32f44913              # double 5.0054100000000004
	.quad	0x4008f6b3354c1227              # double 3.1204589999999999
	.quad	0x4006ee5de15ca6ca              # double 2.86639
	.quad	0x3ff32fc04c8bc9cd              # double 1.1991579999999999
	.quad	0x4000d3bfb58d1527              # double 2.1033930000000001
	.quad	0x40227fb677f6b1a3              # double 9.2494390000000006
	.quad	0x400adcf67b1c0011              # double 3.3578920000000001
	.quad	0x4018daba7b9170d6              # double 6.2136019999999998
	.quad	0x400bb1a32b12d341              # double 3.4617369999999998
	.quad	0x400bdd2fa0d77b7c              # double 3.4830009999999998
	.quad	0x40123c6c11a11234              # double 4.5590060000000001
	.quad	0x4023dc65c70435f0              # double 9.9304640000000006
	.quad	0x401ed16aceaaf35e              # double 7.7045089999999998
	.quad	0x401d7e26916440f2              # double 7.3731939999999998
	.quad	0x3fa5cebfec13b9f1              # double 0.042592999999999999
	.quad	0x3fe7952d234eb9a1              # double 0.73695999999999995
	.quad	0x401f36616b54e2b0              # double 7.8031059999999997
	.quad	0x400dd9439de481f5              # double 3.7310859999999999
	.quad	0x3fe4b50092ccf6be              # double 0.64709499999999998
	.quad	0x40210e20685553ef              # double 8.5275909999999993
	.quad	0x4012b1ab0856e697              # double 4.6735040000000003
	.quad	0x401007b4a2339c0f              # double 4.0075250000000002
	.quad	0x400a364bec679cc7              # double 3.2765119999999999
	.quad	0x400e6289118c197e              # double 3.7981129999999999
	.quad	0x400b9024f6598e11              # double 3.4453830000000001
	.quad	0x400907dbb16c1e36              # double 3.1288369999999999
	.quad	0x40055045fe111277              # double 2.664196
	.quad	0x401bd270b06c43f6              # double 6.955508
	.quad	0x4014c885d31337eb              # double 5.1958229999999999
	.quad	0x400c20d1b71758e2              # double 3.516025
	.quad	0x402131de05037500              # double 8.5973970000000008
	.quad	0x4020689b738e6d16              # double 8.2043110000000006
	.quad	0x4014467c286f8ad2              # double 5.0688329999999997
	.quad	0x4020629f9ce8d973              # double 8.1926240000000004
	.quad	0x401faa1a93293d10              # double 7.9161169999999998
	.quad	0x40215c27c7c5260f              # double 8.6799909999999993
	.quad	0x400f9729b280f12c              # double 3.9488099999999999
	.quad	0x400208c7192ea52f              # double 2.254286
	.quad	0x4023bab9f559b3d0              # double 9.8646999999999991
	.quad	0x3ffa09b30728e92d              # double 1.6273679999999999
	.quad	0x3fd59acffa7eb6bf              # double 0.33757399999999999
	.quad	0x3ffd49a459103c8e              # double 1.830479
	.quad	0x4009d17b5286b591              # double 3.2272859999999999
	.quad	0x400c6e008e9b38d6              # double 3.553712
	.quad	0x3f963e4abe6a337b              # double 0.021722000000000002
	.quad	0x40064c093d966384              # double 2.7871269999999999
	.quad	0x4013088fc9363f57              # double 4.7583609999999998
	.quad	0x4011170110a137f4              # double 4.2724650000000004
	.quad	0x401c6c7192ea52f0              # double 7.1059020000000004
	.quad	0x40013d3910c2c5e3              # double 2.1548940000000001
	.quad	0x3ff153404ea4a8c1              # double 1.0828249999999999
	.quad	0x400f9fc3b4f61672              # double 3.9530099999999999
	.quad	0x40173ffcdab191de              # double 5.8124880000000001
	.quad	0x40219c6de76427c8              # double 8.8055260000000004
	.quad	0x402159b5c7cd898b              # double 8.6752149999999997
	.quad	0x3fdfbd05af6c69b6              # double 0.49591200000000002
	.quad	0x400665fc7e6b3fea              # double 2.799798
	.quad	0x401205e99e94ab1d              # double 4.5057739999999997
	.quad	0x3ff346df82b1f688              # double 1.2048030000000001
	.quad	0x401487546d3f9e7c              # double 5.1321580000000004
	.quad	0x3ffbd1633482be8c              # double 1.7386200000000001
	.quad	0x3fecd379fa97e133              # double 0.90081500000000003
	.quad	0x3ff1f526527a2058              # double 1.1223510000000001
	.quad	0x400d66d82ba5a038              # double 3.675217
	.quad	0x3fd7946801711948              # double 0.36843300000000001
	.quad	0x4021fdd56f32bdc2              # double 8.9957689999999992
	.quad	0x400e5b30728e92d5              # double 3.7945259999999998
	.quad	0x40229bc254a3c643              # double 9.3042169999999995
	.quad	0x4017177574f722e2              # double 5.7729090000000003
	.quad	0x4015d87ca643cc08              # double 5.4614130000000003
	.quad	0x401a587485e3da30              # double 6.5863820000000004
	.quad	0x3ff0cad46f587d70              # double 1.0495190000000001
	.quad	0x4023c71cb89d6adf              # double 9.8888909999999992
	.quad	0x3fffb807789a4591              # double 1.982429
	.quad	0x3ffbb9b34a44c7b0              # double 1.732837
	.quad	0x40218c562e09fe87              # double 8.7740950000000009
	.quad	0x400b85d9e40c8473              # double 3.4403570000000001
	.quad	0x402114200c0f01fc              # double 8.5393070000000008
	.quad	0x401f0271fff79c84              # double 7.7523879999999998
	.quad	0x401c0b673c4f3ba7              # double 7.0111359999999996
	.quad	0x4023ecf227d028a2              # double 9.9627850000000002
	.quad	0x3fd912b5e529bae4              # double 0.39176699999999998
	.quad	0x4022a46de76427c8              # double 9.3211510000000004
	.quad	0x3fe3f24d8fd5cb79              # double 0.62332799999999999
	.quad	0x40171f88333fc86d              # double 5.7807930000000001
	.quad	0x4021950c80410300              # double 8.7911110000000008
	.quad	0x4013d6d1e108c3f4              # double 4.9597850000000001
	.quad	0x40160485e3da2f8c              # double 5.5044170000000001
	.quad	0x40206c061847f562              # double 8.2109839999999998
	.quad	0x40146aec8d5c7475              # double 5.1044179999999999
	.quad	0x40216df1bef49cf5              # double 8.7147349999999992
	.quad	0x40230099bf5946c3              # double 9.5011729999999996
	.quad	0x40177320d9945b6c              # double 5.8624299999999998
	.quad	0x401dcdf5cf2495e1              # double 7.4511329999999996
	.quad	0x40017cab81f969e4              # double 2.1858740000000001
	.quad	0x4017a3f034b0e1b5              # double 5.9100960000000002
	.quad	0x3fd8268d32830a0b              # double 0.37735299999999999
	.quad	0x4019661f5be5d9e4              # double 6.349729
	.quad	0x40221e0ded288ce7              # double 9.0587
	.quad	0x400475c5b4aa9718              # double 2.5575060000000001
	.quad	0x4001913dfb0d51f8              # double 2.195919
	.quad	0x4019508919ef954f              # double 6.3286480000000003
	.quad	0x3ff20199fe43675e              # double 1.125391
	.quad	0x40193f533f42352f              # double 6.3118410000000003
	.quad	0x3ff60ab2e1693c04              # double 1.3776120000000001
	.quad	0x4016b4e831ad2136              # double 5.6766670000000001
	.quad	0x400d5e84f09528f2              # double 3.6711520000000002
	.quad	0x3ff89f42bb6672fc              # double 1.5388820000000001
	.quad	0x4003e0d4dc65c704              # double 2.4847809999999999
	.quad	0x4016152bd3c36113              # double 5.5206749999999998
	.quad	0x3fc93dea465a5764              # double 0.19720199999999999
	.quad	0x4019554da4ce8102              # double 6.333304
	.quad	0x40116997c3d68406              # double 4.3531180000000003
	.quad	0x40109c5ac471b478              # double 4.1526899999999998
	.quad	0x400a8edcc20d562a              # double 3.3197570000000001
	.quad	0x4002338d60a63305              # double 2.275172
	.quad	0x4020103c4b09e98e              # double 8.0317100000000003
	.quad	0x4011cc62e4d1a650              # double 4.4495959999999997
	.quad	0x401b87ced916872b              # double 6.882625
	.quad	0x40115eaa2a0a9585              # double 4.3424459999999998
	.quad	0x40195aa19439de48              # double 6.3385069999999999
	.quad	0x40149f63c31df762              # double 5.1556540000000002
	.quad	0x4010577c88e79aae              # double 4.0854359999999996
	.quad	0x400aa023a6ce3583              # double 3.3281930000000002
	.quad	0x402315bd944aa540              # double 9.5424620000000004
	.quad	0x402229b845564b66              # double 9.0814839999999997
	.quad	0x402109420b3d4ae4              # double 8.5180819999999997
	.quad	0x3fdb955f78359bc3              # double 0.43099199999999999
	.quad	0x4006c9e55c0fcb4f              # double 2.8485819999999999
	.quad	0x4023264b2314013f              # double 9.5747920000000004
	.quad	0x401360d51f81a587              # double 4.844563
	.quad	0x401f1f04ddb5525d              # double 7.7802920000000002
	.quad	0x40151bc5154866a1              # double 5.2771189999999999
	.quad	0x40174d7c6fbd273d              # double 5.8256699999999997
	.quad	0x401d674080f98fa3              # double 7.3508319999999996
	.quad	0x4021e3f5d78811b2              # double 8.9452350000000003
	.quad	0x402097a82e87d2c8              # double 8.2962050000000005
	.quad	0x4013665061416378              # double 4.8499160000000003
	.quad	0x3ff52ca25529fe00              # double 1.3233969999999999
	.quad	0x3ff1b996fa82e87d              # double 1.10781
	.quad	0x40138e5eaab04253              # double 4.8890330000000004
	.quad	0x40027af640639d5e              # double 2.3100399999999999
	.quad	0x3fefc9eecbfb15b5              # double 0.99339999999999994
	.quad	0x3ff8fbd6a593a2e0              # double 1.5614840000000001
	.quad	0x401afeae9ee45c36              # double 6.7487130000000004
	.quad	0x4015ec74b838c112              # double 5.4809140000000003
	.quad	0x4017c3201040bfe4              # double 5.9405520000000003
	.quad	0x4021a58a54823854              # double 8.8233209999999999
	.quad	0x4015cfcc1871e6cd              # double 5.4529269999999999
	.quad	0x3ffdf01c92ddbdb6              # double 1.871121
	.quad	0x400ce672fba01eef              # double 3.6125240000000001
	.quad	0x4020a800eae18aca              # double 8.3281320000000001
	.quad	0x400a5d25247cb70b              # double 3.2954810000000001
	.quad	0x400f735d249e44fa              # double 3.93133
	.quad	0x4010da500d5e8d54              # double 4.2131959999999999
	.quad	0x4023864a9cdc4439              # double 9.7622879999999998
	.quad	0x3fe88856e696a26e              # double 0.76664299999999996
	.quad	0x3fe40e0a84be4042              # double 0.62671399999999999
	.quad	0x401fe9c5e6ff7dfa              # double 7.978294
	.quad	0x3ff2db76b3bb83cf              # double 1.17858
	.quad	0x401b23e425aee632              # double 6.78505
	.quad	0x3fc1c4f3ba775fb3              # double 0.138823
	.quad	0x4000290a350d2807              # double 2.0200390000000001
	.quad	0x40053b107746887b              # double 2.6538400000000002
	.quad	0x400da066c2acb85a              # double 3.7033209999999999
	.quad	0x4003c10cf5b1c865              # double 2.4692630000000002
	.quad	0x4021134f1e4b44a2              # double 8.5377130000000001
	.quad	0x4023c263f9a49c2c              # double 9.8796689999999998
	.quad	0x401929949e8815e4              # double 6.2906060000000004
	.quad	0x400ad79e16d6dc1a              # double 3.3552819999999999
	.quad	0x40232acd184c2720              # double 9.583596
	.quad	0x4020fa32b12d3416              # double 8.4886680000000005
	.quad	0x4011bababead4f59              # double 4.432353
	.quad	0x400acb252ce032db              # double 3.3491919999999999
	.quad	0x4023c61650a45d42              # double 9.886889
	.quad	0x40032bb3c81908e6              # double 2.3963390000000002
	.quad	0x4004569ec2ce464a              # double 2.5422950000000002
	.quad	0x4023d9f5dfeb8d82              # double 9.9257039999999996
	.quad	0x40075d377e1b8ed2              # double 2.9205160000000001
	.quad	0x40152363b256ffc1              # double 5.2845599999999999
	.quad	0x40114152b0a6fc59              # double 4.3137920000000003
	.quad	0x4023bb31c219eb64              # double 9.8656140000000007
	.quad	0x4007c15a07b352a8              # double 2.9694099999999999
	.quad	0x401d5feac42e989a              # double 7.3436690000000002
	.quad	0x402321ab8e8ea39c              # double 9.5657619999999994
	.quad	0x400edfbacb428912              # double 3.8592430000000002
	.quad	0x3ffbec6ac215b9a6              # double 1.7452190000000001
	.quad	0x4020ca0ab7132724              # double 8.3946129999999996
	.quad	0x4010a8ebcc6c54bd              # double 4.1649620000000001
	.quad	0x3fe99e12a51e321a              # double 0.80054599999999998
	.quad	0x4021fddf43c7d5ed              # double 8.995844
	.quad	0x401f9dfe75bc44bf              # double 7.9042909999999997
	.quad	0x401d562d83c6c97e              # double 7.3341580000000004
	.quad	0x3ff09203a322af57              # double 1.0356479999999999
	.quad	0x4023759c49774257              # double 9.7297080000000004
	.quad	0x4005ecf6be37de94              # double 2.7407050000000002
	.quad	0x402096043a2163fe              # double 8.2930010000000003
	.quad	0x4018574ea8da7f3d              # double 6.085261
	.quad	0x4022a3866e43aa7a              # double 9.3193850000000005
	.quad	0x401c2748a159817c              # double 7.0383630000000004
	.quad	0x40154c197e564734              # double 5.3243159999999996
	.quad	0x401a84c22ee4191a              # double 6.6296470000000003
	.quad	0x400e793708aac96d              # double 3.8091870000000001
	.quad	0x3ff2b5dfeb8d8234              # double 1.169403
	.quad	0x3fdf7a89331a08c0              # double 0.49185400000000001
	.quad	0x3fe3835dedf1e083              # double 0.60978600000000005
	.quad	0x4010e22ab25b317f              # double 4.220866
	.quad	0x4013b8a43bb40b35              # double 4.9303140000000001
	.quad	0x400da358298cc144              # double 3.704758
	.quad	0x402095d82fd75e20              # double 8.2926649999999995
	.quad	0x402347ce0fc2eba2              # double 9.6402439999999991
	.quad	0x401264f8f8a4c1ec              # double 4.5986060000000002
	.quad	0x3ffedd0b73d188f4              # double 1.928966
	.quad	0x401136516db0dd83              # double 4.303045
	.quad	0x400ec2374794ea07              # double 3.8448319999999998
	.quad	0x401446ca46e08f21              # double 5.0691309999999996
	.quad	0x3ff74e30446b69db              # double 1.4565889999999999
	.quad	0x3ff481b21c475e63              # double 1.2816639999999999
	.quad	0x402083d4067cf1c3              # double 8.2574769999999997
	.quad	0x3fca45c358afc47e              # double 0.20525399999999999
	.quad	0x4023dca90470a809              # double 9.9309770000000003
	.quad	0x40209e7296f6512b              # double 8.3094680000000007
	.quad	0x400138d9b5e95b79              # double 2.1527590000000001
	.quad	0x401eba30984e3fff              # double 7.681826
	.quad	0x400fffb69984a0e4              # double 3.99986
	.quad	0x4010353111f0c34c              # double 4.0519449999999999
	.quad	0x401a1655e28aa433              # double 6.5218119999999997
	.quad	0x3ffffc243dccea29              # double 1.999058
	.quad	0x4010d9e59f2ba9d2              # double 4.21279
	.quad	0x401447bbb62413db              # double 5.0700519999999996
	.quad	0x401d548238540464              # double 7.3325279999999999
	.quad	0x4022fe5cf67b1c00              # double 9.4968029999999999
	.quad	0x40012ff540895d0b              # double 2.1484169999999998
	.quad	0x4003d4a90470a809              # double 2.4788380000000001
	.quad	0x401283f9e7b80a9e              # double 4.6288830000000001
	.quad	0x400082d6a9c560c8              # double 2.0638860000000001
	.quad	0x401ae75d56f32bdc              # double 6.7259419999999999
	.quad	0x4016f8cef672b884              # double 5.7429769999999998
	.quad	0x4015e82a9930be0e              # double 5.4767250000000001
	.quad	0x400d34a7f8012dfd              # double 3.6507109999999998
	.quad	0x3fc5362e90364389              # double 0.165716
	.quad	0x400c6d2ed783dff4              # double 3.553312
	.quad	0x3ff220913a4f8727              # double 1.132951
	.quad	0x4011d0b2c83ec893              # double 4.4538070000000003
	.quad	0x3fd676640a6b93cd              # double 0.35097600000000001
	.quad	0x4001b3f077ccc038              # double 2.2128610000000002
	.quad	0x40223be0157eed46              # double 9.1169440000000002
	.quad	0x402281359791819d              # double 9.2523619999999998
	.quad	0x40217cacaff6d331              # double 8.7435050000000007
	.quad	0x40214f325918a00a              # double 8.6546810000000001
	.quad	0x400070fd7e45803d              # double 2.0551710000000001
	.quad	0x401151d4738a3b58              # double 4.3299120000000002
	.quad	0x4023e1c62a1b5c7d              # double 9.9409650000000002
	.quad	0x3ff69ed8d36b4c7f              # double 1.413781
	.quad	0x400191b823c85c25              # double 2.1961520000000001
	.quad	0x40045825e13b18db              # double 2.5430410000000001
	.quad	0x4020cf525460aa65              # double 8.4049250000000004
	.quad	0x401bda8deb0fadf3              # double 6.9634320000000001
	.quad	0x402356ca686e7e63              # double 9.6695130000000002
	.quad	0x401063c5bd0e12e8              # double 4.0974339999999998
	.quad	0x400bd8e4b87bdcf0              # double 3.4809049999999999
	.quad	0x40233795703f2d3c              # double 9.6085619999999991
	.quad	0x4018ed9ec7000432              # double 6.2320510000000002
	.quad	0x4012022b7baecd08              # double 4.5021190000000004
	.quad	0x4023df294dd72368              # double 9.9358620000000001
	.quad	0x3ff2bd5ed06fef7c              # double 1.171233
	.quad	0x4023b3f1c75818c6              # double 9.8514540000000004
	.quad	0x4012f60d0247021d              # double 4.7402839999999999
	.quad	0x4022d15c63ae2542              # double 9.4089080000000003
	.quad	0x401ffea747d805e6              # double 7.998685
	.quad	0x400c3f85d744f5d3              # double 3.5310169999999999
	.quad	0x401d3d052934acb0              # double 7.30959
	.quad	0x400078b7a1c25d07              # double 2.0589439999999999
	.quad	0x3fd87c243dccea29              # double 0.382577
	.quad	0x40168fdb4cc25072              # double 5.640485
	.quad	0x401d0edb2f661f19              # double 7.2645080000000002
	.quad	0x4015ff69014b599b              # double 5.4994240000000003
	.quad	0x401eb0ee06d93815              # double 7.6727829999999999
	.quad	0x4018b3e425aee632              # double 6.175675
	.quad	0x401df1c8216c6152              # double 7.4861149999999999
	.quad	0x40093fb506dd69d3              # double 3.156107
	.quad	0x401ca0ef99806f26              # double 7.1571639999999999
	.quad	0x3fdf01a36e2eb1c4              # double 0.48447499999999999
	.quad	0x40212fc504816f00              # double 8.5932999999999993
	.quad	0x40056d1d8a548238              # double 2.6782789999999999
	.quad	0x40142aa25d8d79d1              # double 5.0416350000000003
	.quad	0x40009862b27cbf6e              # double 2.0744069999999999
	.quad	0x400246266fd651b1              # double 2.2842530000000001
	.quad	0x4023d896787ce960              # double 9.9230230000000006
	.quad	0x40218550a88effe3              # double 8.7603810000000006
	.quad	0x4005d42f61ed5ae2              # double 2.7286060000000001
	.quad	0x4015de41d4b6a61a              # double 5.4670480000000001
	.quad	0x4000082a5614df8b              # double 2.003987
	.quad	0x3ff96a19439de482              # double 1.588403
	.quad	0x401394cdb7ae5797              # double 4.8953160000000002
	.quad	0x40225acd39da1661              # double 9.1773469999999993
	.quad	0x4001e811b1d92b80              # double 2.2383150000000001
	.quad	0x4023d84b5dcc63f1              # double 9.9224499999999995
	.quad	0x4019bd99029ae4f3              # double 6.4351539999999998
	.quad	0x400c4e28ed5f138c              # double 3.5381640000000001
	.quad	0x4016d648c7192ea5              # double 5.7092619999999998
	.quad	0x4021f725e56cd6c3              # double 8.9827110000000001
	.quad	0x3fef02602c9081c3              # double 0.96904000000000001
	.quad	0x40000faeff5c6c12              # double 2.0076580000000002
	.quad	0x4021d3d188f42fe8              # double 8.9137079999999997
	.quad	0x3fe55712a0ec7432              # double 0.666879
	.quad	0x402245553ef6b5d4              # double 9.1354159999999993
	.quad	0x401533f5b5fa2270              # double 5.3007419999999996
	.quad	0x401411f080303c08              # double 5.0175190000000001
	.quad	0x3fcb0129cbab649d              # double 0.21097299999999999
	.quad	0x401fc94dd72367e4              # double 7.9465859999999999
	.quad	0x4009d5a07b352a84              # double 3.2293099999999999
	.quad	0x4022b549949e8816              # double 9.3540770000000002
	.quad	0x3ffeb5be5d9e40c8              # double 1.9193709999999999
	.quad	0x401d0151e75360d0              # double 7.2512889999999999
	.quad	0x40236ba301216830              # double 9.7102280000000007
	.quad	0x401aef66e86c6584              # double 6.7337910000000001
	.quad	0x40206eb8305d95dd              # double 8.2162489999999995
	.quad	0x401ddd1ed9dfdac7              # double 7.4659380000000004
	.quad	0x4006aaf709b738e7              # double 2.8334790000000001
	.quad	0x401ba76295208e15              # double 6.913462
	.quad	0x401e4743e963dc48              # double 7.5695949999999996
	.quad	0x401066b873797460              # double 4.1003129999999999
	.quad	0x401aa4eb13dfb0d5              # double 6.6610529999999999
	.quad	0x4016dc17ebaf1023              # double 5.7149349999999997
	.quad	0x3ff353f077ccc038              # double 1.2079930000000001
	.quad	0x401a8661ae70c133              # double 6.6312319999999998
	.quad	0x4021fd6861e92924              # double 8.9949370000000001
	.quad	0x401ff2e1ac57e23f              # double 7.9871889999999998
	.quad	0x400982b063e07a29              # double 3.1888130000000001
	.quad	0x3fa070329802c0a5              # double 0.032106000000000003
	.quad	0x401e513a4f8726d0              # double 7.5793239999999997
	.quad	0x3fd7832fcac8e68e              # double 0.36738199999999999
	.quad	0x400126d2ed783dff              # double 2.1439569999999999
	.quad	0x4020a8daa0cae643              # double 8.3297930000000004
	.quad	0x3ffd1a8cdea033e8              # double 1.8189820000000001
	.quad	0x40084d5ae1cde5d2              # double 3.0377710000000002
	.quad	0x3ff610df15a4acf3              # double 1.379119
	.quad	0x4015cc81d3aa36a0              # double 5.4497140000000002
	.quad	0x3ff99049235f8099              # double 1.597726
	.quad	0x400c45069a4df480              # double 3.5337040000000002
	.quad	0x4023412f901083dc              # double 9.6273160000000004
	.quad	0x400eedef416bdb1a              # double 3.8661789999999998
	.quad	0x4019548882f0e0a8              # double 6.3325519999999997
	.quad	0x40169193708aac97              # double 5.6421640000000002
	.quad	0x4000ae6f2e8c0486              # double 2.0851730000000002
	.quad	0x400805e99e94ab1d              # double 3.0028869999999999
	.quad	0x3ff4d2a51e321a2e              # double 1.3014269999999999
	.quad	0x400f70d38cda6e76              # double 3.930091
	.quad	0x40221683e425aee6              # double 9.0439749999999997
	.quad	0x401462089e34330d              # double 5.0957359999999996
	.quad	0x40088e379b77c02b              # double 3.069442
	.quad	0x401b965a9a804966              # double 6.8968299999999996
	.quad	0x400d4ec0724b76f7              # double 3.6634530000000001
	.quad	0x401b91550ca1cef2              # double 6.8919259999999998
	.quad	0x3fdc3df2a9d627bf              # double 0.44128099999999998
	.quad	0x4022649e236c15d3              # double 9.1965190000000003
	.quad	0x401795e28aa43351              # double 5.8963720000000004
	.quad	0x4021b0986fcdee35              # double 8.844913
	.quad	0x401c306ab14ec205              # double 7.047282
	.quad	0x401b6bb62413db7f              # double 6.8551869999999999
	.quad	0x400525e4e69f05ea              # double 2.6435029999999999
	.quad	0x402147008a697aee              # double 8.6386760000000002
	.quad	0x401c3667b5f1bef5              # double 7.0531300000000003
	.quad	0x3fda1b71758e2196              # double 0.40792499999999998
	.quad	0x40180cfdd2285660              # double 6.0126869999999997
	.quad	0x40038c7f34938583              # double 2.4436019999999998
	.quad	0x401666d9be4cd749              # double 5.6004399999999999
	.quad	0x401c624bba12b5e5              # double 7.0959919999999999
	.quad	0x3ffe624894c447c3              # double 1.898995
	.quad	0x3f8cdfefbf401c50              # double 0.014099
	.quad	0x401758954a7f8013              # double 5.8365070000000001
	.quad	0x4010d0c9107faa04              # double 4.2038919999999997
	.quad	0x400d05bd944aa540              # double 3.6278030000000001
	.quad	0x401972ab25b317f0              # double 6.3619810000000001
	.quad	0x401d3ce6c093d966              # double 7.3094739999999998
	.quad	0x40156566cf41f213              # double 5.3490250000000001
	.quad	0x4021c8fde2ef4e01              # double 8.8925619999999999
	.quad	0x40201c523f67f4dc              # double 8.0553150000000002
	.quad	0x4018144f5d35653d              # double 6.0198340000000004
	.quad	0x401e852c59fb1e19              # double 7.630052
	.quad	0x3ffc4ee8d10f51ad              # double 1.7692650000000001
	.quad	0x401f6af1455219a8              # double 7.8544359999999997
	.quad	0x400d11dde37585be              # double 3.633724
	.quad	0x40203198d045fe11              # double 8.0968689999999999
	.quad	0x4005f51372a38b8b              # double 2.7446660000000001
	.quad	0x400dffc9ff92f2b6              # double 3.7498969999999998
	.quad	0x3ff86133c1ce6c09              # double 1.5237309999999999
	.quad	0x402220bd87b56b87              # double 9.0639459999999996
	.quad	0x3fdbcd20afa2f05a              # double 0.43439499999999998
	.quad	0x3ff0c51654d61b2a              # double 1.048117
	.quad	0x400bc9ff0cbaf966              # double 3.4736310000000001
	.quad	0x4020b9fa97e132b5              # double 8.3632399999999993
	.quad	0x400b75e8d5410f95              # double 3.4325730000000001
	.quad	0x40217edacabc5155              # double 8.7477630000000008
	.quad	0x3fef14573a797892              # double 0.97123300000000001
	.quad	0x3ff5b7b07075b3e1              # double 1.3573459999999999
	.quad	0x3ff4d5410f94c87a              # double 1.3020640000000001
	.quad	0x3ff08817fc7607c4              # double 1.033226
	.quad	0x40169d3458cd20b0              # double 5.6535200000000003
	.quad	0x3fe58ab0c88a47ed              # double 0.67318
	.quad	0x4014766cf41f212d              # double 5.1156499999999996
	.quad	0x40091c02afdda8bd              # double 3.1386769999999999
	.quad	0x40141adff822bbed              # double 5.0262450000000003
	.quad	0x3ff8e88051c9f72f              # double 1.5567629999999999
	.quad	0x401a6e06d938151a              # double 6.6074479999999998
	.quad	0x40012192a737110e              # double 2.1413929999999999
	.quad	0x401bc8cda6e75ff6              # double 6.946097
	.quad	0x3fd257c0b1359792              # double 0.28660600000000003
	.quad	0x400b701754b05b7d              # double 3.429732
	.quad	0x4021435935fc3b4f              # double 8.6315399999999993
	.quad	0x4023252a411c2a02              # double 9.5725879999999997
	.quad	0x401afaf31b152f3c              # double 6.7450679999999998
	.quad	0x40143fe974a3400c              # double 5.0624140000000004
	.quad	0x401d0fd438d1d8a5              # double 7.2654579999999997
	.quad	0x40108191148fd9fd              # double 4.1265299999999998
	.quad	0x4023093af74cd317              # double 9.5180279999999992
	.quad	0x400e929f59ccfaf0              # double 3.821593
	.quad	0x3fd047d3d4280ae1              # double 0.254384
	.quad	0x3ffa0d32830a0b1c              # double 1.6282220000000001
	.quad	0x40210613b18dac26              # double 8.5118690000000008
	.quad	0x4020733354c12275              # double 8.2250010000000007
	.quad	0x4012cb6134ce3de6              # double 4.6986129999999999
	.quad	0x40150f7403dddb12              # double 5.265091
	.quad	0x3ffd07000431bde8              # double 1.814209
	.quad	0x40239a055757d5aa              # double 9.8008220000000001
	.quad	0x40138290abb44e51              # double 4.8775050000000002
	.quad	0x4011d8ae31d712a1              # double 4.4616020000000001
	.quad	0x40192c93ea2d2fe4              # double 6.293533
	.quad	0x401eddb1e9f27781              # double 7.7164989999999997
	.quad	0x401523e5321e603d              # double 5.2850539999999997
	.quad	0x3ff2d903a7546d40              # double 1.1779820000000001
	.quad	0x401929b77c02afde              # double 6.2907390000000003
	.quad	0x4015088b9778572a              # double 5.2583450000000003
	.quad	0x4022ba7ed84d338f              # double 9.3642489999999991
	.quad	0x401b6f91600f3450              # double 6.8589529999999996
	.quad	0x400c50f49491f2dc              # double 3.5395289999999999
	.quad	0x40199c42a66dbd73              # double 6.4025980000000002
	.quad	0x4017a47064ece9a3              # double 5.9105850000000002
	.quad	0x401f7e8af81626b3              # double 7.873577
	.quad	0x4023c2d538ac18f8              # double 9.8805329999999997
	.quad	0x40117ace67d77fae              # double 4.3699279999999998
	.quad	0x4010237542a23c00              # double 4.0346270000000004
	.quad	0x4002c0817fc7607c              # double 2.3439969999999999
	.quad	0x3ffd855a7d24180d              # double 1.8450569999999999
	.quad	0x4023424e7ab75643              # double 9.6295049999999999
	.quad	0x401ef4ef88b97785              # double 7.7391949999999996
	.quad	0x400932367e414e7f              # double 3.149518
	.quad	0x401b5f22c01e68a1              # double 6.8429060000000002
	.quad	0x40112f954eb13dfb              # double 4.296468
	.quad	0x402231a048e043a2              # double 9.0969259999999998
	.quad	0x40179432441fea81              # double 5.8947229999999999
	.quad	0x4007783f91e646f1              # double 2.9337149999999999
	.quad	0x4019afd3b29a1ba0              # double 6.4217060000000004
	.quad	0x4014127ed84d338f              # double 5.0180619999999996
	.quad	0x401c2aa8a82a5615              # double 7.0416590000000001
	.quad	0x4021038f9b13165d              # double 8.5069549999999996
	.quad	0x3fe6b87379746024              # double 0.71001599999999998
	.quad	0x400465814940bbb2              # double 2.549563
	.quad	0x402132de8709741d              # double 8.5993539999999999
	.quad	0x400ae6aec0724b77              # double 3.362638
	.quad	0x4012454cdb7ae579              # double 4.5676759999999996
	.quad	0x3fe314a4d2b2bfdb              # double 0.59626999999999997
	.quad	0x40217b81d7dbf488              # double 8.741225
	.quad	0x4021c48cd63cb817              # double 8.8838869999999996
	.quad	0x400c993250b5243a              # double 3.5748030000000002
	.quad	0x401e15b35b0bbf51              # double 7.521192
	.quad	0x400a83369b9d7fd8              # double 3.3140689999999999
	.quad	0x400be459103c8e26              # double 3.4864980000000001
	.quad	0x3ff54e5e679463d0              # double 1.3316330000000001
	.quad	0x400ed6ad70e6f2e9              # double 3.8548230000000001
	.quad	0x3ff9d3dfb0d51f82              # double 1.6142270000000001
	.quad	0x3ffe0a5ce5b4245f              # double 1.8775299999999999
	.quad	0x40163f91e646f156              # double 5.5620799999999999
	.quad	0x3ff1d8a65492ff4c              # double 1.1153930000000001
	.quad	0x401c9c4e2f37fbf0              # double 7.1526420000000002
	.quad	0x4010781a5870da5e              # double 4.1172880000000003
	.quad	0x400f004b7f5a5333              # double 3.8751440000000001
	.quad	0x401131e8a2ec28b3              # double 4.2987390000000003
	.quad	0x3ff9eb5a20ddc619              # double 1.6199589999999999
	.quad	0x4011588bda9435ad              # double 4.3364710000000004
	.quad	0x3fe8f0c1333b96af              # double 0.779389
	.quad	0x4023bc883fd50225              # double 9.8682269999999991
	.quad	0x4019b13b9f127f5f              # double 6.4230790000000004
	.quad	0x4021e829cfdd2285              # double 8.9534439999999993
	.quad	0x40211aa5a469d734              # double 8.5520449999999996
	.quad	0x400b21a6937d1fe6              # double 3.3914309999999999
	.quad	0x4018ff0068db8bac              # double 6.2490249999999996
	.quad	0x3ffdaee631f8a090              # double 1.8552
	.quad	0x3ff986a5d6bebe16              # double 1.5953729999999999
	.quad	0x401c319652bd3c36              # double 7.0484249999999999
	.quad	0x3ff768283d35eb74              # double 1.4629289999999999
	.quad	0x4022ecfdb09a671f              # double 9.462873
	.quad	0x3ff3ae45c358afc4              # double 1.2300469999999999
	.quad	0x401ae7620ee8d10f              # double 6.7259599999999997
	.quad	0x40140d5d3dc8b86b              # double 5.0130509999999999
	.quad	0x4012a5d1c3ac929b              # double 4.6619330000000003
	.quad	0x400fe7b352a84381              # double 3.9881350000000002
	.quad	0x401e7cee17a02fb6              # double 7.6220020000000002
	.quad	0x401b217a02fb5d03              # double 6.7826919999999999
	.quad	0x400b36df3f961805              # double 3.4017930000000001
	.quad	0x400675a4acf312b2              # double 2.8074430000000001
	.quad	0x401f69057d1782d4              # double 7.8525600000000004
	.quad	0x40105eb1c432ca58              # double 4.0924750000000003
	.quad	0x4020c4b2314013ec              # double 8.3841719999999995
	.quad	0x3ff17eb5b2d4d402              # double 1.0934349999999999
	.quad	0x40233e8ee6b8305e              # double 9.6221840000000007
	.quad	0x3ff1582ba5a03819              # double 1.0840259999999999
	.quad	0x401a4c70435efa61              # double 6.5746469999999997
	.quad	0x3ff2e0daa0cae643              # double 1.1798960000000001
	.quad	0x40238a58f7121ab5              # double 9.7702100000000005
	.quad	0x3ff66050374ff866              # double 1.398514
	.quad	0x401c463779e9d0ea              # double 7.0685710000000004
	.quad	0x401e6c80c73abc94              # double 7.6059599999999996
	.quad	0x4006219008205ff2              # double 2.7663880000000001
	.quad	0x4006dfe5c91d14e4              # double 2.8593250000000001
	.quad	0x40233b5dedf1e083              # double 9.6159510000000008
	.quad	0x4011be77d523b363              # double 4.4360039999999996
	.quad	0x4020fa3161a1db87              # double 8.4886579999999991
	.quad	0x401c5eacc92146a2              # double 7.0924560000000003
	.quad	0x402105171e29b6b3              # double 8.5099420000000006
	.quad	0x4023c53cddd6e04c              # double 9.8852299999999999
	.quad	0x401780ea9e6eeb70              # double 5.8758949999999999
	.quad	0x4022483b81b64e05              # double 9.1410789999999995
	.quad	0x40207646ae3a3a8e              # double 8.2310079999999992
	.quad	0x40136a72a7bd48cb              # double 4.8539529999999997
	.quad	0x3ffa6dcb1465e892              # double 1.651805
	.quad	0x40221f6965f5275f              # double 9.0613510000000002
	.quad	0x400e9bc01a36e2eb              # double 3.82605
	.quad	0x401852d01c0ca601              # double 6.0808720000000003
	.quad	0x401e8e44fa05143c              # double 7.638935
	.quad	0x4001837c5692b3cc              # double 2.1892019999999999
	.quad	0x4021f525892684cf              # double 8.9788019999999999
	.quad	0x401c1b6ae7d566cf              # double 7.0267749999999998
	.quad	0x40146ddf86e3b470              # double 5.1072980000000001
	.quad	0x400db62cfd8f0c78              # double 3.7139530000000001
	.quad	0x4008222ab25b317f              # double 3.016683
	.quad	0x3ff03e6b3fe9fadb              # double 1.015239
	.quad	0x401638101f31f46f              # double 5.5547490000000002
	.quad	0x400e5d462c343b71              # double 3.795544
	.quad	0x40210bac2df0d413              # double 8.5227979999999999
	.quad	0x4007aedfe75bc44c              # double 2.960388
	.quad	0x3fe9e308787485e4              # double 0.80896400000000001
	.quad	0x400e557c4e2f37fc              # double 3.791741
	.quad	0x3ff3580b242070b9              # double 1.208995
	.quad	0x4020a8fc504816f0              # double 8.33005
	.quad	0x4014d8e043a21640              # double 5.2117930000000001
	.quad	0x400fa01711947cfa              # double 3.9531689999999999
	.quad	0x4020e0c7c0f45176              # double 8.4390239999999999
	.quad	0x3febad57bc7f77af              # double 0.86490999999999996
	.quad	0x402382f4f0d844d0              # double 9.7557749999999999
	.quad	0x4004e6ce358298cc              # double 2.612698
	.quad	0x3ffab9463cfb3312              # double 1.6702330000000001
	.quad	0x4023f15b78cc9a78              # double 9.9714010000000001
	.quad	0x400c25a038194c01              # double 3.5183719999999998
	.quad	0x401eaaf038e29f9d              # double 7.666932
	.quad	0x401105fcc1871e6d              # double 4.2558470000000002
	.quad	0x4016392ee84ad795              # double 5.5558430000000003
	.quad	0x401549695d91ab8f              # double 5.3216910000000004
	.quad	0x400b635a426bb55b              # double 3.4235120000000001
	.quad	0x402154c2f837b4a2              # double 8.6655499999999996
	.quad	0x40164021d10b1fef              # double 5.5626290000000003
	.quad	0x40125a2be0589acc              # double 4.5880580000000002
	.quad	0x400197564302b40f              # double 2.1988949999999998
	.quad	0x400c5150dae3e6c5              # double 3.5397050000000001
	.quad	0x401c36aad1d041cc              # double 7.0533859999999997
	.quad	0x4000ac5c13fd0d06              # double 2.0841599999999998
	.quad	0x3fe2c0db2702a348              # double 0.58604199999999995
	.quad	0x4011660c7c0f4517              # double 4.3496569999999997
	.quad	0x40211cfb1183b603              # double 8.5566030000000008
	.quad	0x4023322c669057d1              # double 9.5979949999999991
	.quad	0x40104bddb9841aac              # double 4.0740879999999997
	.quad	0x400211b71758e219              # double 2.2586499999999998
	.quad	0x40188a9c12f09d8c              # double 6.1353609999999996
	.quad	0x3ff8db0468448cf8              # double 1.553471
	.quad	0x4012fc6045baf534              # double 4.746461
	.quad	0x401ae801b4352652              # double 6.7265689999999996
	.quad	0x40150763e4abe6a3              # double 5.2572169999999998
	.quad	0x400ba5e4606748e4              # double 3.4560019999999998
	.quad	0x3ff9145e9185cee1              # double 1.5674729999999999
	.quad	0x40208bca1059ea57              # double 8.2730259999999998
	.quad	0x40165beb9e492bc3              # double 5.589766
	.quad	0x401e9ea9e6eeb702              # double 7.6549449999999997
	.quad	0x4015ff44d4456712              # double 5.4992859999999997
	.quad	0x3fd2cd5b6805a2d7              # double 0.29378399999999999
	.quad	0x40216ab239a38fbd              # double 8.7083910000000007
	.quad	0x4013f39ffd60e94f              # double 4.9879150000000001
	.quad	0x401d052deca2552a              # double 7.255058
	.quad	0x4022fe9bbf0dc769              # double 9.4972820000000002
	.quad	0x4010703b81b64e05              # double 4.1096019999999998
	.quad	0x4010747e49b1fab9              # double 4.1137629999999996
	.quad	0x40019cdf69878317              # double 2.2015980000000002
	.quad	0x400f72a94ff0025c              # double 3.930987
	.quad	0x40138b688bda9436              # double 4.8861410000000003
	.quad	0x4021b8bd230b9dc3              # double 8.8608180000000001
	.quad	0x402028533b107747              # double 8.0787600000000008
	.quad	0x4023d196d8f4f93c              # double 9.9093540000000004
	.quad	0x40112f2e48e8a71e              # double 4.2960750000000001
	.quad	0x3ff7e7bc3c5bd0e1              # double 1.494076
	.quad	0x3f9332acfb762d84              # double 0.018748000000000001
	.quad	0x4020fca2db61bb06              # double 8.49343
	.quad	0x401ae2f405f6ba06              # double 6.7216339999999999
	.quad	0x40152c9e6687f456              # double 5.2935730000000003
	.quad	0x3ff47b8d3f1843c4              # double 1.2801640000000001
	.quad	0x3fa556084a515cea              # double 0.041672000000000001
	.quad	0x401ca9ec7000431c              # double 7.1659410000000001
	.quad	0x4007258d5842b735              # double 2.8933360000000001
	.quad	0x401b182c2bd7f51f              # double 6.773606
	.quad	0x401a271971c10d7c              # double 6.5381830000000001
	.quad	0x401a043e5321e604              # double 6.5041440000000001
	.quad	0x4013e52a84380885              # double 4.973795
	.quad	0x4013f840e1719f80              # double 4.9924350000000004
	.quad	0x4013f80d801b4352              # double 4.9922389999999996
	.quad	0x401f9355cd91eeaa              # double 7.8938819999999996
	.quad	0x402163a775fb2ee0              # double 8.6946370000000002
	.quad	0x3fdee26916440f24              # double 0.48256900000000003
	.quad	0x400495dbb9cf9a07              # double 2.5731730000000002
	.quad	0x3ff1bd566cf41f21              # double 1.108725
	.quad	0x3fbdb499d0203e64              # double 0.116037
	.quad	0x3fe590e8858ff759              # double 0.67393899999999995
	.quad	0x3febbf9830e3cd9a              # double 0.86713799999999996
	.quad	0x4021f2915379fa98              # double 8.9737650000000002
	.quad	0x401f8b17ce52deca              # double 7.8858329999999999
	.quad	0x400224463065f959              # double 2.267712
	.quad	0x4023f0244e93e1ca              # double 9.9690270000000005
	.quad	0x3fecaf46aa087ca6              # double 0.89639599999999997
	.quad	0x4018b88b9778572a              # double 6.1802200000000003
	.quad	0x401a15bc44bf4cb2              # double 6.5212260000000004
	.quad	0x40235172474538ef              # double 9.6590749999999996
	.quad	0x40178968d759ee89              # double 5.8841890000000001
	.quad	0x4019ac968943e100              # double 6.4185429999999997
	.quad	0x4022b50f6273929f              # double 9.3536330000000003
	.quad	0x4016b55b89939219              # double 5.6771070000000003
	.quad	0x40202a3d2d87f887              # double 8.0824979999999993
	.quad	0x4010b39042d8c2a4              # double 4.1753549999999997
	.quad	0x3ff01882adc4c9c9              # double 1.005984
	.quad	0x4022f9cc74b838c1              # double 9.4878879999999998
	.quad	0x4010de4a7b4e54f8              # double 4.2170810000000003
	.quad	0x3ff06efe4ffc9796              # double 1.0270980000000001
	.quad	0x401b896a26e54717              # double 6.8841939999999999
	.quad	0x4017afd933e35c5b              # double 5.9217269999999997
	.quad	0x400adc0d2c386d2f              # double 3.3574470000000001
	.quad	0x3ffa4b8ae31d712a              # double 1.643443
	.quad	0x4001da5119ce075f              # double 2.2315999999999998
	.quad	0x4023aa8d8665e02f              # double 9.8331110000000006
	.quad	0x40191526d8b1dd5d              # double 6.2706559999999998
	.quad	0x400b853d20f2becf              # double 3.4400580000000001
	.quad	0x40113cf7446f9b99              # double 4.3095369999999997
	.quad	0x401b3a012599ed7c              # double 6.8066449999999996
	.quad	0x401eabfdf7e8038a              # double 7.667961
	.quad	0x401aa5568e820e63              # double 6.6614630000000004
	.quad	0x40175a16a4873366              # double 5.8379770000000004
	.quad	0x4005b6a6a012599f              # double 2.7141850000000001
	.quad	0x4015c97c80841ede              # double 5.4467639999999999
	.quad	0x40104abde3fbbd7b              # double 4.0729899999999999
	.quad	0x3ff77e9856a37ac4              # double 1.468407
	.quad	0x400c2d30f062d40b              # double 3.5220660000000001
	.quad	0x401d1877ee4e26d5              # double 7.2738950000000004
	.quad	0x400b01ecd4aa10e0              # double 3.3759399999999999
	.quad	0x401fbe3a7daa4fca              # double 7.9357699999999998
	.quad	0x401a333e78e1932d              # double 6.5500429999999996
	.quad	0x401fd76a2f48c2e7              # double 7.9603659999999996
	.quad	0x400890a1be2b495a              # double 3.070621
	.quad	0x40222f878b7a1c26              # double 9.0928310000000003
	.quad	0x4003e3e425aee632              # double 2.486275
	.quad	0x4021b6577531db44              # double 8.8561359999999993
	.quad	0x3fc045fe111276fb              # double 0.127136
	.quad	0x401e854fbdad7519              # double 7.6301870000000002
	.quad	0x401c78854cdb7ae5              # double 7.1176959999999996
	.quad	0x3fb70ae536501e26              # double 0.090010000000000006
	.quad	0x3ff268ab4fa48302              # double 1.1505540000000001
	.quad	0x400b5acbc8c0ce92              # double 3.4193340000000001
	.quad	0x401bb2e946801712              # double 6.9247180000000004
	.quad	0x3ff3e54d61b2a27f              # double 1.243482
	.quad	0x40198904f6dfc5ce              # double 6.3838080000000001
	.quad	0x3fc93ca31e7d9989              # double 0.197163
	.quad	0x4015e71865519371              # double 5.4756790000000004
	.quad	0x400fe0f345069a4e              # double 3.984839
	.quad	0x402073f4cb1897a6              # double 8.2264769999999992
	.quad	0x3ff181d3aa369fcf              # double 1.0941959999999999
	.quad	0x402075add9c27e95              # double 8.2298419999999997
	.quad	0x3ff15f00abf76a2f              # double 1.0856939999999999
	.quad	0x4012eba51a005c46              # double 4.7301219999999997
	.quad	0x3fe5e99c7bcc2939              # double 0.68476700000000001
	.quad	0x40212324c8366517              # double 8.5686400000000003
	.quad	0x3ff1b476295208e1              # double 1.1065579999999999
	.quad	0x4017f64345cfede9              # double 5.9904909999999996
	.quad	0x4016ddc8754f3776              # double 5.7165850000000002
	.quad	0x4015638a3b57c4e3              # double 5.347207
	.quad	0x3fe2528d002e2329              # double 0.572577
	.quad	0x4005910a99b6f5cb              # double 2.695821
	.quad	0x4019c0bbf50e3476              # double 6.4382169999999999
	.quad	0x4001c1b8ed1bf7ad              # double 2.2195909999999999
	.size	.L__constant_5000xf64, 40000

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
