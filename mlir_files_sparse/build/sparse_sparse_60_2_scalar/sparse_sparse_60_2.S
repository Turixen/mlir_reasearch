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
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	sd	s11, 0(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	.cfi_offset s9, -80
	.cfi_offset s10, -88
	.cfi_offset s11, -96
	li	t5, 0
	ld	a6, 408(sp)
	ld	t0, 400(sp)
	ld	t1, 392(sp)
	ld	t2, 384(sp)
	ld	t3, 376(sp)
	ld	s10, 368(sp)
	ld	t4, 360(sp)
	ld	t6, 128(sp)
	ld	s4, 288(sp)
	ld	s5, 208(sp)
	ld	s6, 248(sp)
	li	s3, 99
	li	s2, 100
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t5, t5, 1
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	blt	s3, t5, .LBB1_8
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	slli	a1, t5, 3
	add	a1, a1, a2
	lwu	a3, 4(a1)
	lwu	a5, 0(a1)
	lwu	s0, 12(a1)
	lwu	a1, 8(a1)
	slli	a3, a3, 32
	or	s8, a3, a5
	slli	s0, s0, 32
	or	s7, s0, a1
	mul	s11, t5, s2
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	addi	s8, s8, 1
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	bge	s8, s7, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	slli	a3, s8, 3
	add	a5, a7, a3
	lwu	s0, 0(a5)
	lwu	a5, 4(a5)
	slli	s0, s0, 3
	slli	a5, a5, 35
	or	a5, a5, s0
	add	a5, a5, s5
	lwu	s9, 0(a5)
	lwu	s1, 4(a5)
	lwu	s0, 8(a5)
	lwu	a5, 12(a5)
	add	a3, a3, t6
	fld	fa5, 0(a3)
	slli	s1, s1, 32
	slli	a3, a5, 32
	or	a5, s1, s9
	or	a3, a3, s0
	slli	s1, a5, 3
	add	s0, s4, s1
	add	s1, s1, s6
	bge	a5, a3, .LBB1_4
.LBB1_7:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lwu	a4, 4(s1)
	lwu	a1, 0(s1)
	fld	fa4, 0(s0)
	slli	a4, a4, 32
	or	a1, a1, a4
	add	a1, a1, s11
	slli	a1, a1, 3
	add	a1, a1, s10
	fld	fa3, 0(a1)
	addi	a5, a5, 1
	addi	s0, s0, 8
	fmul.d	fa4, fa5, fa4
	fadd.d	fa4, fa3, fa4
	fsd	fa4, 0(a1)
	addi	s1, s1, 8
	blt	a5, a3, .LBB1_7
	j	.LBB1_4
.LBB1_8:
	sd	t4, 0(a0)
	sd	s10, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
	ld	s11, 0(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sparse_sparse_matmul, .Lfunc_end1-sparse_sparse_matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x41478f8e3f3dea46              # double 3088156.4940769998
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
	.quad	61                              # 0x3d
	.quad	81                              # 0x51
	.quad	140                             # 0x8c
	.quad	154                             # 0x9a
	.quad	216                             # 0xd8
	.quad	241                             # 0xf1
	.quad	303                             # 0x12f
	.quad	327                             # 0x147
	.quad	387                             # 0x183
	.quad	407                             # 0x197
	.quad	465                             # 0x1d1
	.quad	487                             # 0x1e7
	.quad	543                             # 0x21f
	.quad	565                             # 0x235
	.quad	624                             # 0x270
	.quad	643                             # 0x283
	.quad	701                             # 0x2bd
	.quad	718                             # 0x2ce
	.quad	779                             # 0x30b
	.quad	798                             # 0x31e
	.quad	858                             # 0x35a
	.quad	879                             # 0x36f
	.quad	939                             # 0x3ab
	.quad	960                             # 0x3c0
	.quad	1016                            # 0x3f8
	.quad	1029                            # 0x405
	.quad	1087                            # 0x43f
	.quad	1104                            # 0x450
	.quad	1163                            # 0x48b
	.quad	1182                            # 0x49e
	.quad	1245                            # 0x4dd
	.quad	1273                            # 0x4f9
	.quad	1330                            # 0x532
	.quad	1350                            # 0x546
	.quad	1409                            # 0x581
	.quad	1424                            # 0x590
	.quad	1485                            # 0x5cd
	.quad	1509                            # 0x5e5
	.quad	1566                            # 0x61e
	.quad	1583                            # 0x62f
	.quad	1642                            # 0x66a
	.quad	1665                            # 0x681
	.quad	1726                            # 0x6be
	.quad	1742                            # 0x6ce
	.quad	1800                            # 0x708
	.quad	1821                            # 0x71d
	.quad	1880                            # 0x758
	.quad	1899                            # 0x76b
	.quad	1960                            # 0x7a8
	.quad	1988                            # 0x7c4
	.quad	2047                            # 0x7ff
	.quad	2066                            # 0x812
	.quad	2123                            # 0x84b
	.quad	2144                            # 0x860
	.quad	2201                            # 0x899
	.quad	2222                            # 0x8ae
	.quad	2285                            # 0x8ed
	.quad	2300                            # 0x8fc
	.quad	2361                            # 0x939
	.quad	2383                            # 0x94f
	.quad	2439                            # 0x987
	.quad	2455                            # 0x997
	.quad	2517                            # 0x9d5
	.quad	2533                            # 0x9e5
	.quad	2591                            # 0xa1f
	.quad	2617                            # 0xa39
	.quad	2680                            # 0xa78
	.quad	2703                            # 0xa8f
	.quad	2761                            # 0xac9
	.quad	2783                            # 0xadf
	.quad	2842                            # 0xb1a
	.quad	2863                            # 0xb2f
	.quad	2928                            # 0xb70
	.quad	2945                            # 0xb81
	.quad	3005                            # 0xbbd
	.quad	3021                            # 0xbcd
	.quad	3078                            # 0xc06
	.quad	3113                            # 0xc29
	.quad	3174                            # 0xc66
	.quad	3193                            # 0xc79
	.quad	3255                            # 0xcb7
	.quad	3273                            # 0xcc9
	.quad	3334                            # 0xd06
	.quad	3357                            # 0xd1d
	.quad	3415                            # 0xd57
	.quad	3428                            # 0xd64
	.quad	3491                            # 0xda3
	.quad	3515                            # 0xdbb
	.quad	3573                            # 0xdf5
	.quad	3593                            # 0xe09
	.quad	3655                            # 0xe47
	.quad	3679                            # 0xe5f
	.quad	3736                            # 0xe98
	.quad	3750                            # 0xea6
	.quad	3812                            # 0xee4
	.quad	3831                            # 0xef7
	.quad	3889                            # 0xf31
	.quad	3915                            # 0xf4b
	.quad	3977                            # 0xf89
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	71                              # 0x47
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	93                              # 0x5d
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	24                              # 0x18
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	39                              # 0x27
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	86                              # 0x56
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	41                              # 0x29
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	29                              # 0x1d
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x40192705857afea4              # double 6.2881070000000001
	.quad	0x3ffacf5903a7546d              # double 1.6756219999999999
	.quad	0x3fe0942f61ed5ae2              # double 0.51808900000000002
	.quad	0x401089374bc6a7f0              # double 4.1340000000000003
	.quad	0x4003f08aac96cc60              # double 2.4924520000000001
	.quad	0x3ffb13953dea465a              # double 1.6922809999999999
	.quad	0x40226ffbacb42891              # double 9.2187169999999998
	.quad	0x3ffc49acbc8c0ce9              # double 1.767987
	.quad	0x4020e24d2b2bfdb5              # double 8.4419950000000004
	.quad	0x4019e8255b035bd5              # double 6.4767049999999999
	.quad	0x3ff98213a0c6b485              # double 1.594257
	.quad	0x401fe3f4eca686e8              # double 7.972614
	.quad	0x4001a3f0bae89eba              # double 2.2050489999999998
	.quad	0x40180f0a5efe9318              # double 6.0146879999999996
	.quad	0x4022279b994e1a3f              # double 9.0773589999999995
	.quad	0x3fdfc3c18b502abb              # double 0.49632300000000001
	.quad	0x3fed5b749adc8fb8              # double 0.91741399999999995
	.quad	0x40107601bc98a223              # double 4.1152410000000001
	.quad	0x40115d97b30f8c65              # double 4.341399
	.quad	0x401d58e4b87bdcf0              # double 7.3368099999999998
	.quad	0x3fe7293293d102bc              # double 0.72377899999999995
	.quad	0x40151681669ced0b              # double 5.2719779999999998
	.quad	0x3fe3d019f3c70c99              # double 0.61915299999999995
	.quad	0x401f1717df19d66b              # double 7.7725520000000001
	.quad	0x401a952157689ca2              # double 6.6456350000000004
	.quad	0x401a362d83c6c97e              # double 6.5529080000000004
	.quad	0x40057cf3dc054ef4              # double 2.6860119999999998
	.quad	0x4009e7631b584b1b              # double 3.2379820000000001
	.quad	0x3ff5e54e6e221c8a              # double 1.3684829999999999
	.quad	0x400d83486f049a99              # double 3.6891029999999998
	.quad	0x4010637110e453d2              # double 4.0971109999999999
	.quad	0x3fd026d8b1dd5d3e              # double 0.25237100000000001
	.quad	0x40168e008e9b38d6              # double 5.638674
	.quad	0x3ffde4d8fd5cb791              # double 1.868371
	.quad	0x40149c4b90214ad3              # double 5.1526319999999997
	.quad	0x40212bca1059ea57              # double 8.5855259999999998
	.quad	0x400121e4712e4085              # double 2.1415489999999999
	.quad	0x4003669e7fb267c7              # double 2.4251070000000001
	.quad	0x402131a62ed35222              # double 8.5969709999999999
	.quad	0x3fe55158b827fa1a              # double 0.66617999999999999
	.quad	0x4019e4cc6822ff09              # double 6.4734360000000004
	.quad	0x3ff3b8d92fb19e73              # double 1.232629
	.quad	0x3ff593a71151611c              # double 1.3485480000000001
	.quad	0x4015d9d3458cd20b              # double 5.46272
	.quad	0x4007a348f53c579f              # double 2.9547289999999999
	.quad	0x4023beed8904f6e0              # double 9.8729060000000004
	.quad	0x3fcd0d7be9856a38              # double 0.22697400000000001
	.quad	0x40205bbcb1cc9646              # double 8.1791739999999997
	.quad	0x40142d2630ec3116              # double 5.0440909999999999
	.quad	0x401827ce52deca25              # double 6.0388729999999997
	.quad	0x3ffdcd0cc35ce182              # double 1.8625609999999999
	.quad	0x401e9917d6b65a9b              # double 7.6495050000000004
	.quad	0x4020ab6d43d03969              # double 8.3348180000000003
	.quad	0x4023aef1bac2df0d              # double 9.8416879999999995
	.quad	0x3ff518dac258d584              # double 1.318568
	.quad	0x3feebbe0157eed46              # double 0.96043400000000001
	.quad	0x3ff9dede1198aeb8              # double 1.616911
	.quad	0x400266950fc71d60              # double 2.3000889999999998
	.quad	0x3fff5f666234a87e              # double 1.960791
	.quad	0x40183a20ddc61954              # double 6.0567659999999997
	.quad	0x4011176965f5275f              # double 4.2728630000000001
	.quad	0x400c262cba732df5              # double 3.51864
	.quad	0x3ffd8522ea0fd3b3              # double 1.8450040000000001
	.quad	0x4013d4ab1d4f9c20              # double 4.9576840000000004
	.quad	0x40128b85a4f00ef1              # double 4.6362519999999998
	.quad	0x4023b6e84ad794a7              # double 9.8572410000000001
	.quad	0x401000fecdd0d8cb              # double 4.000972
	.quad	0x4018168900c521de              # double 6.0220070000000003
	.quad	0x4018d7939a7c17a9              # double 6.2105240000000004
	.quad	0x3fc30d8cb07d0aee              # double 0.14885100000000001
	.quad	0x402018438088509c              # double 8.04739
	.quad	0x400cd3c792d1287c              # double 3.6034079999999999
	.quad	0x4022d9055b899392              # double 9.4238689999999998
	.quad	0x402114a8c154c986              # double 8.5403500000000001
	.quad	0x4021bc78854cdb7b              # double 8.8681070000000002
	.quad	0x401d2ebd4cfd08d5              # double 7.2956440000000002
	.quad	0x4014a4fe36d22425              # double 5.1611260000000003
	.quad	0x401114f7ec3547e0              # double 4.2704769999999996
	.quad	0x401cfb0f6ad70e6f              # double 7.2451759999999998
	.quad	0x4021524a276b7ed4              # double 8.6607219999999998
	.quad	0x4017b49129888f86              # double 5.9263349999999999
	.quad	0x401ae4906034f3fe              # double 6.7232070000000004
	.quad	0x40012eb78897e996              # double 2.1478109999999999
	.quad	0x40172076c050bd88              # double 5.7817030000000003
	.quad	0x401e0fd5cb790fb6              # double 7.5154639999999997
	.quad	0x40161ffd1dcd7061              # double 5.5312390000000002
	.quad	0x3ff0b635e74299d9              # double 1.0444850000000001
	.quad	0x400e0049667b5f1c              # double 3.75014
	.quad	0x400ca7da1ec4e725              # double 3.5819589999999999
	.quad	0x400b7524bfd2e947              # double 3.4321990000000002
	.quad	0x40221a4f6598e10d              # double 9.0513870000000001
	.quad	0x4017b722e1ac57e2              # double 5.9288439999999998
	.quad	0x4021a1cf9a06a6e3              # double 8.8160369999999997
	.quad	0x401e52eba27ae9ab              # double 7.5809769999999998
	.quad	0x4017cbb01c92ddbe              # double 5.9489140000000003
	.quad	0x401242ed783dff3f              # double 4.5653589999999999
	.quad	0x400435f99c38b04b              # double 2.5263550000000001
	.quad	0x40231474d9c6b053              # double 9.5399539999999998
	.quad	0x4010310d38cda6e7              # double 4.0479019999999997
	.quad	0x401c607d912556d2              # double 7.0942290000000003
	.quad	0x40037cd466f5019f              # double 2.4359519999999999
	.quad	0x3ffe234117f8444a              # double 1.883607
	.quad	0x4018c8387df5cf25              # double 6.1955280000000004
	.quad	0x40198573eab367a1              # double 6.380325
	.quad	0x40030c0bdcad14a1              # double 2.3808820000000002
	.quad	0x402121b3d07c84b6              # double 8.5658250000000002
	.quad	0x4002be0e736049ed              # double 2.3428010000000001
	.quad	0x400e012d77318fc5              # double 3.750575
	.quad	0x40148397dd00f777              # double 5.1285090000000002
	.quad	0x400d9ff1d81f1066              # double 3.7030979999999998
	.quad	0x401d2689ca18bd66              # double 7.2876349999999999
	.quad	0x3ffbc8de2ac32229              # double 1.73654
	.quad	0x4005596af038e2a0              # double 2.6686610000000002
	.quad	0x4006fa42f1ed17c6              # double 2.872198
	.quad	0x3fc91cc964628028              # double 0.196191
	.quad	0x40122469d7342edc              # double 4.5355600000000003
	.quad	0x4005605bc01a36e3              # double 2.67205
	.quad	0x3fd6622c45026890              # double 0.349742
	.quad	0x3fe6ed373affb04f              # double 0.71645700000000001
	.quad	0x4008e436fc158fb4              # double 3.1114329999999999
	.quad	0x401e29752977c88e              # double 7.5404859999999996
	.quad	0x4021a35c7cd898b3              # double 8.8190650000000002
	.quad	0x3ff480baa582dbe8              # double 1.281428
	.quad	0x3f91960fa15db339              # double 0.017173999999999998
	.quad	0x4013b149c6f36ef8              # double 4.923133
	.quad	0x40086302b40f66a5              # double 3.0483449999999999
	.quad	0x401fdb3e5753a3ec              # double 7.964105
	.quad	0x4022c804d9839475              # double 9.3906620000000007
	.quad	0x4009da95421c0443              # double 3.2317300000000002
	.quad	0x3fffbd577963992d              # double 1.9837260000000001
	.quad	0x3ff7176bc1eff9f8              # double 1.4432179999999999
	.quad	0x4006037b4a2339c1              # double 2.7517
	.quad	0x40007592d98bf7f0              # double 2.0574089999999998
	.quad	0x4005634b945308bc              # double 2.6734840000000002
	.quad	0x4023b93a71151612              # double 9.8617740000000005
	.quad	0x4022be1eb4202d9d              # double 9.3713280000000001
	.quad	0x400d55ddd2ae8e1d              # double 3.6669269999999998
	.quad	0x3ff6b5b4edb2f662              # double 1.419362
	.quad	0x402174afb3b75211              # double 8.7279029999999995
	.quad	0x3fde99b6f5caf2d8              # double 0.478132
	.quad	0x3fb2542e557de0d6              # double 0.071596999999999994
	.quad	0x402039d10b1feeb3              # double 8.1129230000000003
	.quad	0x401d44998d045fe1              # double 7.3169919999999999
	.quad	0x3fd4a2df9378ee28              # double 0.32244099999999998
	.quad	0x4019b28c36da87a0              # double 6.4243629999999996
	.quad	0x40209db5b70691ea              # double 8.3080269999999992
	.quad	0x3ff9a038194c0160              # double 1.6016159999999999
	.quad	0x4022428bd230b9dc              # double 9.1299729999999996
	.quad	0x4003501b003686a5              # double 2.4141140000000001
	.quad	0x4023adc93ea2d2fe              # double 9.8394259999999996
	.quad	0x4016d75ab7dc7ac0              # double 5.7103070000000002
	.quad	0x40203fba450acc0c              # double 8.1244680000000002
	.quad	0x3ffbedb61bb05faf              # double 1.7455350000000001
	.quad	0x401dfedaec4a4096              # double 7.498882
	.quad	0x40218714b9cb6849              # double 8.7638300000000005
	.quad	0x401a444bb1af3a15              # double 6.5666950000000002
	.quad	0x3fcb2ce89656eefa              # double 0.212308
	.quad	0x4010f446f9b994e2              # double 4.2385520000000003
	.quad	0x40239f28a6117721              # double 9.8108570000000003
	.quad	0x400e09ff92f2b66b              # double 3.7548819999999998
	.quad	0x4001722ea0fd3b2a              # double 2.1807530000000002
	.quad	0x4021305942917508              # double 8.5944310000000002
	.quad	0x4022a57cb2d905c0              # double 9.3232169999999996
	.quad	0x4001cfe36d22424a              # double 2.2265079999999999
	.quad	0x4021308377186552              # double 8.5947530000000008
	.quad	0x3ff128dfbd6a593a              # double 1.072479
	.quad	0x3ffaca5df2239e6b              # double 1.6744060000000001
	.quad	0x4014405ccc89b0ee              # double 5.0628539999999997
	.quad	0x3fda88ace24bba13              # double 0.41459200000000002
	.quad	0x401fb43d46b26bf8              # double 7.9260149999999995
	.quad	0x401cfab6d00b45ae              # double 7.2448379999999997
	.quad	0x3ff75bcfd4bf0996              # double 1.4599150000000001
	.quad	0x40207f8726d04e62              # double 8.2490780000000008
	.quad	0x40230e3c74fb54a0              # double 9.5278050000000007
	.quad	0x402018f27bb2fec5              # double 8.0487249999999992
	.quad	0x4022237110e453d2              # double 9.0692219999999999
	.quad	0x4001430a0b1bbcf5              # double 2.157734
	.quad	0x4023f2b1704ff434              # double 9.9740099999999998
	.quad	0x401fcf7a4e7ab756              # double 7.9526149999999998
	.quad	0x4021124399b2c40d              # double 8.5356719999999999
	.quad	0x401018d823422468              # double 4.0242620000000002
	.quad	0x401148d6d3b6cbda              # double 4.3211320000000004
	.quad	0x3fd9b5bf6a0dbad4              # double 0.40171800000000002
	.quad	0x3fb24d2b2bfdb4cc              # double 0.071489999999999998
	.quad	0x4022b3a57eaa2a0b              # double 9.3508720000000007
	.quad	0x40163b2b777d0f1f              # double 5.5577829999999997
	.quad	0x3ff831f687b139c9              # double 1.5121979999999999
	.quad	0x4016b228997c3d68              # double 5.6739829999999998
	.quad	0x401491c714fce747              # double 5.1423610000000002
	.quad	0x401dae1650a45d42              # double 7.420007
	.quad	0x3fff6a033e78e193              # double 1.963382
	.quad	0x4021dcd5f99c38b0              # double 8.9313199999999995
	.quad	0x40140c842fa50939              # double 5.0122229999999997
	.quad	0x3fdb705857afea3e              # double 0.428732
	.quad	0x40106c0d2c386d2f              # double 4.1055190000000001
	.quad	0x4003c6876e1deacd              # double 2.4719380000000002
	.quad	0x40199fdb4cc25072              # double 6.40611
	.quad	0x401bb113836a832c              # double 6.9229260000000004
	.quad	0x401c9e9dd7ecbb80              # double 7.1548990000000003
	.quad	0x401944e2f37fbefd              # double 6.317272
	.quad	0x40099d11be6e6538              # double 3.2016939999999998
	.quad	0x3ff6b315d701d9f5              # double 1.418722
	.quad	0x402095942917507f              # double 8.2921460000000007
	.quad	0x40069e41d4b6a61a              # double 2.8272740000000001
	.quad	0x4018511dbca9691a              # double 6.0792149999999996
	.quad	0x3fdfd8be7296f651              # double 0.49760399999999999
	.quad	0x400ca178705425f2              # double 3.578843
	.quad	0x40050fdc1615ebfb              # double 2.6327440000000002
	.quad	0x3f9ad6451b93037d              # double 0.026207999999999999
	.quad	0x4005a746cb966be8              # double 2.7066780000000001
	.quad	0x4022283126e978d5              # double 9.0785
	.quad	0x401a0ee9142b302f              # double 6.5145609999999996
	.quad	0x40235e8661ae70c1              # double 9.6846189999999996
	.quad	0x4021a12817763e4b              # double 8.8147590000000005
	.quad	0x400ec845996744b3              # double 3.8477890000000001
	.quad	0x401895e17e34b945              # double 6.1463679999999998
	.quad	0x40221dfa43fe5c92              # double 9.0585500000000003
	.quad	0x40232117939a7c18              # double 9.5646330000000006
	.quad	0x4006fe6cd29131ec              # double 2.874231
	.quad	0x40044bae03b3e9a7              # double 2.536953
	.quad	0x3fd1b75a74c09c3d              # double 0.27681600000000001
	.quad	0x40215867f0aa21a7              # double 8.6726679999999998
	.quad	0x401c027c39368273              # double 7.002427
	.quad	0x3fd852c9d16fc9bc              # double 0.38005299999999997
	.quad	0x401da9157abb8801              # double 7.4151210000000001
	.quad	0x40212a39a38fbca1              # double 8.582471
	.quad	0x400afdd7ecbb7f9d              # double 3.3739469999999998
	.quad	0x400399b23dd54da5              # double 2.4500470000000001
	.quad	0x3fba6d4801f75105              # double 0.10323
	.quad	0x40201dd52c16df40              # double 8.0582670000000007
	.quad	0x400ece9142b302f7              # double 3.8508629999999999
	.quad	0x400f0957470eb24a              # double 3.8795609999999998
	.quad	0x4012276188b1140a              # double 4.5384580000000003
	.quad	0x40218a01eeed8905              # double 8.7695460000000001
	.quad	0x400bd80f55de58e6              # double 3.4804979999999999
	.quad	0x4002426c3b927d46              # double 2.2824330000000002
	.quad	0x4012a32ce89656ef              # double 4.659351
	.quad	0x4023d8a88effe2a4              # double 9.9231610000000003
	.quad	0x3fddba8c586876e2              # double 0.46451100000000001
	.quad	0x3fdf1eeed8904f6e              # double 0.486263
	.quad	0x4006b1e108c3f3e0              # double 2.8368549999999999
	.quad	0x401aac24c404a72f              # double 6.6681090000000003
	.quad	0x401ffd6238da3c21              # double 7.9974449999999999
	.quad	0x3fbeeb3dd11be6e6              # double 0.120777
	.quad	0x3fb18d6909aed56b              # double 0.068564
	.quad	0x3feb426bb55ac040              # double 0.851858
	.quad	0x4009adcb1465e892              # double 3.2098599999999999
	.quad	0x40148f5558212945              # double 5.1399739999999996
	.quad	0x4013a2fa93af74cd              # double 4.9091589999999998
	.quad	0x4003447a9e2bcf92              # double 2.4084370000000002
	.quad	0x4011cb7fe08aefb3              # double 4.4487300000000003
	.quad	0x400bcc625e99e94b              # double 3.4747970000000001
	.quad	0x4013195ee136e71d              # double 4.7747760000000001
	.quad	0x40113a1d323fee2d              # double 4.3067520000000004
	.quad	0x401fea00e27e0efa              # double 7.9785190000000004
	.quad	0x400b4fb549f94856              # double 3.4139200000000001
	.quad	0x4010536d22424a27              # double 4.0814709999999996
	.quad	0x4022853e707e175d              # double 9.2602419999999999
	.quad	0x4012009a24031487              # double 4.5005879999999996
	.quad	0x3ff075989df1172f              # double 1.02871
	.quad	0x40228901d19157ac              # double 9.2675920000000004
	.quad	0x4001bb3d8e000863              # double 2.2164259999999998
	.quad	0x401d4acb4289118c              # double 7.3230409999999999
	.quad	0x40221daf4adbc665              # double 9.0579780000000003
	.quad	0x3fe6b35f3d7d3911              # double 0.70939600000000003
	.quad	0x402113eec39799e5              # double 8.5389309999999998
	.quad	0x400a366516db0dd8              # double 3.2765599999999999
	.quad	0x3ff3cd64d7f0ed3e              # double 1.2376450000000001
	.quad	0x4021287aaef2c732              # double 8.5790609999999994
	.quad	0x4010835b4edb2f66              # double 4.1282779999999999
	.quad	0x40209a467be553ac              # double 8.3013189999999994
	.quad	0x401a2f42fe82517e              # double 6.5461539999999996
	.quad	0x4022638a7e73a366              # double 9.1944160000000004
	.quad	0x401471ac14c660a2              # double 5.111008
	.quad	0x3feff97cc39ffd61              # double 0.999205
	.quad	0x40210ba4723aafff              # double 8.5227389999999996
	.quad	0x400e7ae3e6c4c597              # double 3.8100049999999999
	.quad	0x401461522a6f3f53              # double 5.09504
	.quad	0x4010ffb2edfe75bc              # double 4.2497059999999998
	.quad	0x4020afaa25d8d79d              # double 8.3430949999999999
	.quad	0x400f7f633ce63a5c              # double 3.937201
	.quad	0x4020b84a515ce9e6              # double 8.3599420000000002
	.quad	0x4012ddb22d0e5604              # double 4.7164999999999999
	.quad	0x400e046bf01322f2              # double 3.7521589999999998
	.quad	0x401065aee631f8a1              # double 4.0993000000000004
	.quad	0x40013a9c12f09d8c              # double 2.1536179999999998
	.quad	0x4017da450acc0bdd              # double 5.9631540000000003
	.quad	0x401e139ef0f16f44              # double 7.5191610000000004
	.quad	0x400cf99780baa583              # double 3.6218710000000001
	.quad	0x40215257646ae3a4              # double 8.6608230000000006
	.quad	0x401e997fa5d28d00              # double 7.6499009999999998
	.quad	0x40094d362e903644              # double 3.1627010000000002
	.quad	0x4021ef8a2a90cd42              # double 8.9678509999999996
	.quad	0x40211876188b1141              # double 8.5477760000000007
	.quad	0x3ff6932617c1bda5              # double 1.410925
	.quad	0x4022dccbc05d52c1              # double 9.4312419999999992
	.quad	0x40205820e6299525              # double 8.1721260000000004
	.quad	0x40228f2fdb8fde2f              # double 9.2796620000000001
	.quad	0x3ff27b395c422036              # double 1.155084
	.quad	0x401d9d07852f7f4a              # double 7.4033490000000004
	.quad	0x401bf0b0af5fd47c              # double 6.9850490000000001
	.quad	0x4017ca57a786c227              # double 5.9476000000000004
	.quad	0x401d0efcbd556085              # double 7.2646360000000003
	.quad	0x4021f88f648c7193              # double 8.9854690000000002
	.quad	0x401391d041cc532a              # double 4.8923959999999997
	.quad	0x401e9873bc903ea7              # double 7.6488789999999999
	.quad	0x401db6b1a2a4db16              # double 7.4284119999999998
	.quad	0x4012168b19a415f4              # double 4.5220149999999997
	.quad	0x3fdbc91d14e3bcd3              # double 0.43414999999999998
	.quad	0x401b795e17e34b94              # double 6.8685229999999997
	.quad	0x40217817fc7607c4              # double 8.7345579999999998
	.quad	0x4022c8014f8b588e              # double 9.3906349999999996
	.quad	0x401981676640a6b9              # double 6.3763709999999998
	.quad	0x4013ebbb1f255f35              # double 4.9802059999999999
	.quad	0x4004929670196d8f              # double 2.5715759999999999
	.quad	0x400baaa4b9884c6a              # double 3.4583219999999999
	.quad	0x3ff0a2cdc011d367              # double 1.039747
	.quad	0x4001244d87724fa9              # double 2.1427260000000001
	.quad	0x3fe483f2d3c792d1              # double 0.64110699999999998
	.quad	0x3fff95ac03ff6901              # double 1.9740409999999999
	.quad	0x401d3edaa92e6213              # double 7.3113809999999999
	.quad	0x40185aaf78feef5f              # double 6.0885600000000002
	.quad	0x4019b1569f490603              # double 6.4231819999999997
	.quad	0x4023691c087442c8              # double 9.705292
	.quad	0x401f2c39bcba3012              # double 7.7931889999999999
	.quad	0x401c5be7f2c3009b              # double 7.0897519999999998
	.quad	0x3fb943aeab7995ee              # double 0.098688999999999998
	.quad	0x3fe0fae3608d0892              # double 0.53062600000000004
	.quad	0x4005161bb05faebc              # double 2.6357949999999999
	.quad	0x402121253543aeab              # double 8.5647369999999992
	.quad	0x401be69a0ad8a116              # double 6.9751969999999996
	.quad	0x3fff0ecc814d727a              # double 1.9411130000000001
	.quad	0x401d1d7c6fbd273d              # double 7.2787949999999997
	.quad	0x401f0a4095f2452c              # double 7.7600119999999997
	.quad	0x4010108893b7d849              # double 4.016146
	.quad	0x4012cf69878316a0              # double 4.7025509999999997
	.quad	0x4019907570c564f9              # double 6.3910729999999996
	.quad	0x3fecb7739f340d4e              # double 0.89739400000000002
	.quad	0x401a91869835158c              # double 6.6421150000000004
	.quad	0x4022282f2f987400              # double 9.0784850000000006
	.quad	0x4021d3cc2938de6e              # double 8.9136670000000002
	.quad	0x4009eb1897a67a53              # double 3.2397930000000001
	.quad	0x3fca545846e8f29d              # double 0.20569899999999999
	.quad	0x3ff542f1ed17c5ef              # double 1.3288439999999999
	.quad	0x3ff7820f6f08cc57              # double 1.4692529999999999
	.quad	0x3ffe657214f0520d              # double 1.899767
	.quad	0x402117d77fae3609              # double 8.5465660000000003
	.quad	0x3ff6bb9cf9a06a6e              # double 1.420804
	.quad	0x401351758e219653              # double 4.8295500000000002
	.quad	0x401fc2641b328b6e              # double 7.9398350000000004
	.quad	0x4020bbd3a1d323ff              # double 8.3668490000000002
	.quad	0x3ffac938583621fb              # double 1.674126
	.quad	0x401b02089e34330d              # double 6.7519859999999996
	.quad	0x4002a3d2d87f8876              # double 2.3299919999999998
	.quad	0x40084aaeafab53d6              # double 3.0364659999999999
	.quad	0x4021c564d7f0ed3e              # double 8.8855350000000008
	.quad	0x3ff29767903211cb              # double 1.161964
	.quad	0x402251f23465625a              # double 9.1600509999999993
	.quad	0x40084bf444e0daa1              # double 3.0370870000000001
	.quad	0x3fc01815a07b352b              # double 0.12573500000000001
	.quad	0x40231de58e64b231              # double 9.5583919999999995
	.quad	0x3fc9d9a95421c044              # double 0.201955
	.quad	0x3feabcea6c1a048e              # double 0.835561
	.quad	0x4020c615011904b4              # double 8.3868790000000004
	.quad	0x40127a222d5171e3              # double 4.6192710000000003
	.quad	0x40211a278d0cc35d              # double 8.5510830000000002
	.quad	0x4006694d50ebaade              # double 2.8014169999999998
	.quad	0x40109b9f127f5e85              # double 4.1519740000000001
	.quad	0x401fd33b5393250b              # double 7.9562809999999997
	.quad	0x401821b36bd2b6f2              # double 6.0329110000000004
	.quad	0x4005fc62a1b5c7ce              # double 2.7482350000000002
	.quad	0x400d128f190d1740              # double 3.6340620000000001
	.quad	0x4022a072085b1855              # double 9.3133700000000008
	.quad	0x4003a2f166e008ea              # double 2.4545620000000001
	.quad	0x401f93cf2cf95d4f              # double 7.8943450000000003
	.quad	0x4022a646cfc829d0              # double 9.3247590000000002
	.quad	0x401ac280f12c27a6              # double 6.6899449999999998
	.quad	0x3ff8627ae9ab29e5              # double 1.524043
	.quad	0x3fd6c6fbd273d5bb              # double 0.35589500000000002
	.quad	0x40183d9988d2a1f9              # double 6.0601560000000001
	.quad	0x4014a32096787ce9              # double 5.1593039999999997
	.quad	0x400ba6317268d328              # double 3.4561489999999999
	.quad	0x401227d6f9767903              # double 4.5389059999999999
	.quad	0x400e3958969a0ad9              # double 3.7780010000000002
	.quad	0x3ff46fb8f57f737e              # double 1.2772760000000001
	.quad	0x402041b089a02752              # double 8.1282999999999994
	.quad	0x402252a1f8e3ac0c              # double 9.1613919999999993
	.quad	0x401d05186db50f41              # double 7.2549760000000001
	.quad	0x3ff25e9d0e991ff7              # double 1.148099
	.quad	0x4005632b990afe61              # double 2.6734230000000001
	.quad	0x3fe630fcf80dc337              # double 0.69347999999999999
	.quad	0x4015485e80bed741              # double 5.3206730000000002
	.quad	0x401c9004fb1183b6              # double 7.140644
	.quad	0x3ffd7191dde37586              # double 1.8402270000000001
	.quad	0x401dbb34a44c7b03              # double 7.4328180000000001
	.quad	0x4014ae52deca2553              # double 5.1702380000000003
	.quad	0x40191f162ae4b018              # double 6.2803579999999997
	.quad	0x4009b0110a137f39              # double 3.2109700000000001
	.quad	0x3ffeef459d99029b              # double 1.933416
	.quad	0x40171f9ce8d972cd              # double 5.7808719999999996
	.quad	0x4020d634330d7386              # double 8.4183669999999999
	.quad	0x401b056c93a71151              # double 6.7552969999999997
	.quad	0x40030db7ae5796c0              # double 2.3816980000000001
	.quad	0x401d9314445aa2e4              # double 7.3936320000000002
	.quad	0x4001796b76709fa5              # double 2.1842869999999999
	.quad	0x400b415097c80842              # double 3.406892
	.quad	0x4022e125dd095af3              # double 9.4397420000000007
	.quad	0x400f66e978d4fdf4              # double 3.9252500000000001
	.quad	0x40178f687b139c95              # double 5.890047
	.quad	0x401a4bb4d48882f1              # double 6.5739320000000001
	.quad	0x401cfc39ffd60e95              # double 7.2463150000000001
	.quad	0x3fedbac0c62e4d1a              # double 0.92904699999999996
	.quad	0x40160060780fdc16              # double 5.5003679999999999
	.quad	0x3ffbfde2ef4e0115              # double 1.749484
	.quad	0x3fed5349be8ff328              # double 0.91641700000000004
	.quad	0x4023e2161e4f7660              # double 9.9415750000000003
	.quad	0x401aea858793dd98              # double 6.729025
	.quad	0x4011cbe6a337a80d              # double 4.449122
	.quad	0x4020459cf13cee9e              # double 8.1359630000000003
	.quad	0x3ffe9898b2e9ccb8              # double 1.912255
	.quad	0x401eb81c714fce74              # double 7.6797959999999996
	.quad	0x401607507e9d94d1              # double 5.5071430000000001
	.quad	0x401f9a433508f649              # double 7.9006470000000001
	.quad	0x400bb5d2d01c0ca6              # double 3.463781
	.quad	0x401f94fca42aed14              # double 7.8954950000000004
	.quad	0x401378feef5ec80c              # double 4.8681599999999996
	.quad	0x40034f7b17ce52df              # double 2.4138090000000001
	.quad	0x401e82f48c2e770c              # double 7.6278860000000002
	.quad	0x3fe8a5fa658c4bd3              # double 0.77026099999999997
	.quad	0x3ffa29e6eeb70260              # double 1.63523
	.quad	0x4006839de481f538              # double 2.8142659999999999
	.quad	0x40109f6d7625204b              # double 4.155691
	.quad	0x40157b139c94f69d              # double 5.3701920000000003
	.quad	0x4006085db76b3bb8              # double 2.7540849999999999
	.quad	0x40233070da5daf08              # double 9.5946110000000004
	.quad	0x3fd4597d49d7ba67              # double 0.31796200000000002
	.quad	0x4012173eee525892              # double 4.5227009999999996
	.quad	0x400a2b8a5ce5b424              # double 3.2712599999999998
	.quad	0x401579a4df47f994              # double 5.3687930000000001
	.quad	0x4017c46f9b994e1a              # double 5.9418319999999998
	.quad	0x401e822467be553b              # double 7.6270920000000002
	.quad	0x40186f9767903212              # double 6.1089760000000002
	.quad	0x401759752977c88e              # double 5.8373609999999996
	.quad	0x3fd96ab14ec204f3              # double 0.39713700000000002
	.quad	0x402026a4228997c4              # double 8.0754710000000002
	.quad	0x401bd5e5aff2a173              # double 6.9588840000000003
	.quad	0x40128f840181e03f              # double 4.6401519999999996
	.quad	0x4022f19d0203e63f              # double 9.4719010000000007
	.quad	0x400355821294573a              # double 2.4167519999999998
	.quad	0x401a511e42e12620              # double 6.5792169999999999
	.quad	0x401a238f36694899              # double 6.534726
	.quad	0x3fea18b0d0edc3bd              # double 0.81551399999999996
	.quad	0x401577ecbb7f9d6f              # double 5.3671139999999999
	.quad	0x4000b56a7ac81d3b              # double 2.0885820000000002
	.quad	0x3ff15b6e503fb374              # double 1.084822
	.quad	0x40205d3c9abb01c9              # double 8.1821029999999997
	.quad	0x402122becedd4845              # double 8.5678619999999999
	.quad	0x401ad66516db0dd8              # double 6.7093699999999998
	.quad	0x401623c60029f16b              # double 5.5349349999999999
	.quad	0x4020d957abb8800f              # double 8.4244970000000006
	.quad	0x401bddb76b3bb83d              # double 6.96652
	.quad	0x4021aa5f633ce63a              # double 8.8327589999999994
	.quad	0x401965b39e279dd4              # double 6.3493180000000002
	.quad	0x401c8293d102bc73              # double 7.1275170000000001
	.quad	0x401b626d4801f751              # double 6.84612
	.quad	0x400cd7e670e2c12b              # double 3.6054200000000001
	.quad	0x40231ffb480a5acd              # double 9.5624640000000002
	.quad	0x40115bffcdab191e              # double 4.3398430000000001
	.quad	0x400ea0c5a8155d5f              # double 3.8285019999999998
	.quad	0x402011b97353b4b3              # double 8.034618
	.quad	0x4014cc1fc8f32379              # double 5.1993400000000003
	.quad	0x401caf73c0c1fc8f              # double 7.1713399999999998
	.quad	0x4004cc39799e518f              # double 2.5997189999999999
	.quad	0x3ff0797dd00f776c              # double 1.0296609999999999
	.quad	0x3ff47cd141a6937d              # double 1.280473
	.quad	0x4017557bc7f77af6              # double 5.8334799999999998
	.quad	0x40100bdb1a6d6990              # double 4.0115780000000001
	.quad	0x4015ebacb4289119              # double 5.4801510000000002
	.quad	0x401a5ddca4b124d1              # double 6.5916620000000004
	.quad	0x40220c9667b5f1bf              # double 9.0245850000000001
	.quad	0x401ca438088509c0              # double 7.1603700000000003
	.quad	0x40219266772d5e07              # double 8.7859379999999998
	.quad	0x4013699392189bd8              # double 4.8531019999999998
	.quad	0x3feb8288051c9f73              # double 0.859684
	.quad	0x40236703d145d851              # double 9.7012009999999992
	.quad	0x400bb2b2bfdb4cc2              # double 3.4622549999999999
	.quad	0x400f0f30a4e379b7              # double 3.8824169999999998
	.quad	0x3ff36de00d1b7176              # double 1.2143250000000001
	.quad	0x40017a8cdea033e8              # double 2.1848390000000002
	.quad	0x400d59f559b3d07d              # double 3.6689250000000002
	.quad	0x401bdb6f19934efd              # double 6.9642910000000002
	.quad	0x40223cc33b539325              # double 9.1186769999999999
	.quad	0x3feedf5ad96a6a01              # double 0.96476499999999998
	.quad	0x3ffbfffac1d29dc7              # double 1.749995
	.quad	0x4022b3e4abe6a338              # double 9.3513540000000006
	.quad	0x40207a3c21187e7c              # double 8.2387399999999999
	.quad	0x40028c8cd63cb817              # double 2.3186279999999999
	.quad	0x402191f9acffa7eb              # double 8.7851079999999993
	.quad	0x400245b530ced4e5              # double 2.2840370000000001
	.quad	0x3fddc1f42bb66730              # double 0.46496300000000002
	.quad	0x3ffba43fe5c91d15              # double 1.7276
	.quad	0x4023144dca8e2e2c              # double 9.5396560000000008
	.quad	0x400d4774eebf65dc              # double 3.659891
	.quad	0x40203d86ec17ebaf              # double 8.1201699999999999
	.quad	0x40210672756861e9              # double 8.5125919999999997
	.quad	0x401aacd29131ec0b              # double 6.6687719999999997
	.quad	0x402018344c37e6f7              # double 8.0472739999999998
	.quad	0x3fe354fbdad7518b              # double 0.60412399999999999
	.quad	0x401bd87ca643cc08              # double 6.9614130000000003
	.quad	0x401aaadc4c9c90c5              # double 6.6668560000000001
	.quad	0x4018bb2c83ec892b              # double 6.1827870000000003
	.quad	0x4008d42e557de0d6              # double 3.1036039999999998
	.quad	0x3ffdc22ff08893b8              # double 1.859909
	.quad	0x401d2e86c6583e85              # double 7.2954359999999996
	.quad	0x4003ec7c0f451761              # double 2.4904709999999999
	.quad	0x4017a178705425f2              # double 5.907686
	.quad	0x4020ee3b688bda94              # double 8.4652969999999996
	.quad	0x3ff8b72606fac604              # double 1.5447139999999999
	.quad	0x3fcbca18bd66277c              # double 0.21710499999999999
	.quad	0x40098b7fe08aefb3              # double 3.1931150000000001
	.quad	0x401ba77318fc5048              # double 6.9135249999999999
	.quad	0x4002e1aef6f8f041              # double 2.3601969999999999
	.quad	0x3fecc8a159817b96              # double 0.89949100000000004
	.quad	0x40174967caea747e              # double 5.8216850000000004
	.quad	0x40086fbb0e5e6794              # double 3.0545559999999998
	.quad	0x401c700cd855970b              # double 7.1094239999999997
	.quad	0x4019f335d249e450              # double 6.4875100000000003
	.quad	0x4018ae80bed740c4              # double 6.1704129999999999
	.quad	0x40122dc8754f3776              # double 4.5447100000000002
	.quad	0x40219d89efd86a90              # double 8.8076930000000004
	.quad	0x4020b4988094e5d6              # double 8.3527260000000005
	.quad	0x401c8cfe154434e3              # double 7.1376879999999998
	.quad	0x40014ea9e6eeb702              # double 2.1634099999999998
	.quad	0x400a73c0c1fc8f32              # double 3.3065199999999999
	.quad	0x40194d5171e29b6b              # double 6.3255059999999999
	.quad	0x3fd50dc768dfbd6a              # double 0.32896599999999998
	.quad	0x4016543f1c75818c              # double 5.5822719999999997
	.quad	0x4010ba5657fb6998              # double 4.1819699999999997
	.quad	0x4020e815c209246c              # double 8.4532910000000001
	.quad	0x4014254046412cf1              # double 5.036378
	.quad	0x3fee4743201040c0              # double 0.94619900000000001
	.quad	0x4014c02f72b45283              # double 5.1876810000000004
	.quad	0x40101cf9a06a6e33              # double 4.0282960000000001
	.quad	0x4009b3d640e9d51b              # double 3.2128109999999999
	.quad	0x401f891819d2391d              # double 7.8838809999999996
	.quad	0x4021336694898f60              # double 8.6003919999999994
	.quad	0x40220281fd9ba1b2              # double 9.0048980000000007
	.quad	0x40215743c7d5ed07              # double 8.670439
	.quad	0x402190387df5cf25              # double 8.7816810000000007
	.quad	0x401fe22a2c237479              # double 7.9708639999999997
	.quad	0x40010edd48451330              # double 2.1322580000000002
	.quad	0x401781b8aa00192a              # double 5.8766809999999996
	.quad	0x400f734c5da6a444              # double 3.931298
	.quad	0x401cc31f8a0902de              # double 7.19055
	.quad	0x3fdd143bf727136a              # double 0.45435999999999999
	.quad	0x40226729b280f12c              # double 9.2014899999999997
	.quad	0x400da238da3c2118              # double 3.7042099999999998
	.quad	0x4018ae7c49fd7a14              # double 6.1703960000000002
	.quad	0x401f7e364bec679d              # double 7.8732540000000001
	.quad	0x40238e3a9f383f0c              # double 9.7777910000000005
	.quad	0x40114cee5abc0e39              # double 4.3251280000000003
	.quad	0x3fc3a0f0a5efe932              # double 0.15334900000000001
	.quad	0x401ca9e236c15d2d              # double 7.165902
	.quad	0x4014e7e5eaab0425              # double 5.2264629999999999
	.quad	0x401f093dd97f62b7              # double 7.7590250000000002
	.quad	0x400e8aa53fc00970              # double 3.817698
	.quad	0x4021c31337eb28d8              # double 8.8810059999999993
	.quad	0x400cd2a38b8ae31d              # double 3.6028509999999998
	.quad	0x40177f8012dfd695              # double 5.8745120000000002
	.quad	0x4018aff92f2b66b6              # double 6.1718489999999999
	.quad	0x40084f0e0a84be40              # double 3.0386009999999999
	.quad	0x401b79a9da597d4a              # double 6.8688120000000001
	.quad	0x401ccfd2630ec311              # double 7.2029509999999997
	.quad	0x401888b97785729b              # double 6.1335199999999999
	.quad	0x401a7109070fbeba              # double 6.6103860000000001
	.quad	0x4012863fdd65a145              # double 4.6311030000000004
	.quad	0x401e1a6f3f52fc26              # double 7.5258149999999997
	.quad	0x3fd0435ac8a37260              # double 0.25411099999999998
	.quad	0x40237a4f00ef1349              # double 9.7388840000000005
	.quad	0x401775cdd50a88f0              # double 5.865043
	.quad	0x40123cb641700cd8              # double 4.5592889999999997
	.quad	0x401665d4e8fb00bd              # double 5.5994450000000002
	.quad	0x40224667d77fae36              # double 9.1375109999999999
	.quad	0x400d39780baa582e              # double 3.6530610000000001
	.quad	0x40214c30d306a2b1              # double 8.6488099999999992
	.quad	0x3fe5a9cbab649d39              # double 0.67697700000000005
	.quad	0x4020b6a6c1a048e0              # double 8.3567409999999995
	.quad	0x4015a2734f82f512              # double 5.4086429999999996
	.quad	0x4020e1355475a31a              # double 8.4398599999999995
	.quad	0x3ffcbca1059ea572              # double 1.796052
	.quad	0x3ff758c3b0c4588a              # double 1.459171
	.quad	0x4023b62b27cbf6e4              # double 9.855798
	.quad	0x401e8990afe60c39              # double 7.634341
	.quad	0x400ae8a82a5614e0              # double 3.3636020000000002
	.quad	0x402327b2aae29739              # double 9.5775349999999992
	.quad	0x40046a715831f03d              # double 2.551974
	.quad	0x4018523e5b8561d4              # double 6.0803159999999998
	.quad	0x4017552b4d8ba40e              # double 5.8331730000000004
	.quad	0x401ea89c1b54195d              # double 7.6646580000000001
	.quad	0x3ffb4f850df15a4b              # double 1.706914
	.quad	0x400fa828c36da87a              # double 3.957109
	.quad	0x3fde4213a0c6b485              # double 0.47278300000000001
	.quad	0x401e1ecb31c219eb              # double 7.5300719999999996
	.quad	0x401c80e3cd9a5226              # double 7.1258689999999998
	.quad	0x4022f931a8ef77f2              # double 9.4867069999999991
	.quad	0x3febc3a42f1ed17c              # double 0.86763199999999995
	.quad	0x40205c6e4c0df58c              # double 8.1805289999999999
	.quad	0x400ef125dd095af3              # double 3.8677480000000002
	.quad	0x3ff2bfd3f5b5fa22              # double 1.1718329999999999
	.quad	0x3ff7254b48d3ae68              # double 1.4466049999999999
	.quad	0x4023d25bb7b6bb13              # double 9.9108560000000007
	.quad	0x400311c0010c6f7a              # double 2.383667
	.quad	0x4000ebcc6c54bcf1              # double 2.1151360000000001
	.quad	0x400d56199780baa6              # double 3.6670410000000002
	.quad	0x400095c8d9f9053a              # double 2.073137
	.quad	0x4020dcff64cf8d71              # double 8.4316359999999992
	.quad	0x401c455f78359bc3              # double 7.0677469999999998
	.quad	0x40199f2b239a38fc              # double 6.4054380000000002
	.quad	0x401cfd9a52263d81              # double 7.2476589999999996
	.quad	0x3ff56f9873ffac1d              # double 1.339745
	.quad	0x3fdc321a2e7f6f4c              # double 0.44055800000000001
	.quad	0x4008bcd5f99c38b0              # double 3.0922049999999999
	.quad	0x4015d8ab0c88a47f              # double 5.4615900000000002
	.quad	0x3fdc5fb71fbc5dea              # double 0.44334200000000001
	.quad	0x3fe556adf71eafee              # double 0.66683099999999995
	.quad	0x3fe2a56bca5375c9              # double 0.58269300000000002
	.quad	0x4009bf75104d551d              # double 3.2184849999999998
	.quad	0x40053f71eafee6fb              # double 2.6559789999999999
	.quad	0x3fa62cdc011d3672              # double 0.043311000000000002
	.quad	0x402078e9d51b4fe8              # double 8.2361590000000007
	.quad	0x3ff58bad7d7c2ca1              # double 1.3466009999999999
	.quad	0x401e656861e92924              # double 7.5990310000000001
	.quad	0x4013bd8c2a454de8              # double 4.9351050000000001
	.quad	0x3fffd015c209246c              # double 1.988302
	.quad	0x3ff53b45f17bd8be              # double 1.3269709999999999
	.quad	0x3ffe38cb8e086bdf              # double 1.8888659999999999
	.quad	0x40220fe62dc6e2a8              # double 9.031053
	.quad	0x3fe5303c07ee0b0b              # double 0.662138
	.quad	0x40139a9ac36544fe              # double 4.9009809999999998
	.quad	0x400e5e0157eed45f              # double 3.7959010000000002
	.quad	0x3fe39db65ecc3e32              # double 0.61300200000000005
	.quad	0x401da61cffeb074a              # double 7.4122199999999996
	.quad	0x401936dc1a47a9e3              # double 6.3035740000000002
	.quad	0x3fce7a311e85fd05              # double 0.23810400000000001
	.quad	0x401471da37ef5a96              # double 5.1111839999999997
	.quad	0x40217c62c343b70f              # double 8.7429410000000001
	.quad	0x400bb4784230fcf8              # double 3.46312
	.quad	0x40223ebb1290257d              # double 9.1225210000000008
	.quad	0x4023acc016052503              # double 9.8374030000000001
	.quad	0x4022be30caa326e1              # double 9.3714659999999998
	.quad	0x401ebf04ddb5525d              # double 7.6865420000000002
	.quad	0x40169758e219652c              # double 5.6478000000000002
	.quad	0x40006afe60c38f36              # double 2.0522429999999998
	.quad	0x3fd91c9f72f76e61              # double 0.392372
	.quad	0x401f99b66f9335d2              # double 7.9001099999999997
	.quad	0x401d1eff1950331e              # double 7.2802699999999998
	.quad	0x3ffac2afdda8bd23              # double 1.672531
	.quad	0x3fe63777d0f1f57b              # double 0.69427099999999997
	.quad	0x401f8ee8d10f51ad              # double 7.8895600000000003
	.quad	0x401bfb3aeee95747              # double 6.9953419999999999
	.quad	0x402031eb4202d9cf              # double 8.0974979999999999
	.quad	0x40202975d13d74d6              # double 8.0809770000000007
	.quad	0x4018094855da2728              # double 6.0090649999999997
	.quad	0x400dfdf5cf2495e1              # double 3.7490039999999998
	.quad	0x3ff638eb0318b934              # double 1.3888959999999999
	.quad	0x402051a6b50b0f28              # double 8.1594750000000005
	.quad	0x402337bbd7b2031d              # double 9.6088550000000001
	.quad	0x401fbfcac8e68e3f              # double 7.937297
	.quad	0x401b7a012599ed7c              # double 6.8691449999999996
	.quad	0x3ff5226f60e0eb68              # double 1.3209070000000001
	.quad	0x401971d4306e5cd5              # double 6.3611610000000001
	.quad	0x402205b8561d4307              # double 9.0111720000000002
	.quad	0x400e1e718a86d71f              # double 3.7648649999999999
	.quad	0x4006caad1d041cc5              # double 2.8489629999999999
	.quad	0x4007e330d738609a              # double 2.9859330000000002
	.quad	0x40227834d26fa3fd              # double 9.2347780000000004
	.quad	0x4020790364388ebd              # double 8.2363540000000004
	.quad	0x401ded3bf2f55582              # double 7.4816739999999999
	.quad	0x400d2ee17a02fb5d              # double 3.647891
	.quad	0x4014ea10e0221427              # double 5.22858
	.quad	0x4014c44b2b777d0f              # double 5.1916929999999999
	.quad	0x4014452e72da1230              # double 5.0675600000000003
	.quad	0x3feab4b945308bb9              # double 0.834561
	.quad	0x4022684c271fff7a              # double 9.2037060000000004
	.quad	0x401399ddc1e7967d              # double 4.9002600000000003
	.quad	0x4022fc7e8ccdd93c              # double 9.4931529999999995
	.quad	0x401920ea18372e6a              # double 6.2821429999999996
	.quad	0x3ff07bfa4c61d862              # double 1.030268
	.quad	0x40219eda4484944f              # double 8.8102590000000003
	.quad	0x40187a2834d26fa4              # double 6.119294
	.quad	0x4020c62ef4e0114d              # double 8.3870769999999997
	.quad	0x400ca14df8b15726              # double 3.5787620000000002
	.quad	0x4005618a43bb40b3              # double 2.6726269999999999
	.quad	0x401cec1e364bec68              # double 7.2305840000000003
	.quad	0x3ffcd0a569b17482              # double 1.8009390000000001
	.quad	0x400a3719f7f8ca82              # double 3.2769050000000002
	.quad	0x401a85ab7dc7abfc              # double 6.6305370000000003
	.quad	0x402302674080f990              # double 9.5046940000000006
	.quad	0x4022dbdb5d894813              # double 9.4294080000000004
	.quad	0x3fc958c08b75ea68              # double 0.198021
	.quad	0x401728e970718223              # double 5.7899529999999997
	.quad	0x402172dadb8348f5              # double 8.7243259999999996
	.quad	0x4016fa0a958537e3              # double 5.7441810000000002
	.quad	0x40231bc2fc69728a              # double 9.5542219999999993
	.quad	0x40117fd8adab9f56              # double 4.3748500000000003
	.quad	0x402003a322af5771              # double 8.007104
	.quad	0x40223d9af9ebe9c9              # double 9.1203230000000008
	.quad	0x401a2083dbc23316              # double 6.5317530000000001
	.quad	0x400a168b5cbff477              # double 3.2610079999999999
	.quad	0x3fd45c03361565c3              # double 0.31811600000000001
	.quad	0x40041fea8112ba17              # double 2.515584
	.quad	0x401bb915bdd76684              # double 6.9307470000000002
	.quad	0x401e031a8ef77f28              # double 7.503031
	.quad	0x40079974e65bea0c              # double 2.9499300000000002
	.quad	0x401ccc7cd898b2ea              # double 7.1996950000000002
	.quad	0x4023140229a5ebb7              # double 9.5390789999999991
	.quad	0x401eba3f034b0e1b              # double 7.6818809999999997
	.quad	0x40103c2938de6ddf              # double 4.058751
	.quad	0x401503f2d3c792d1              # double 5.2538559999999999
	.quad	0x401db2556d19dece              # double 7.4241539999999997
	.quad	0x402352f74cd3176a              # double 9.6620430000000006
	.quad	0x4006643f5f91600f              # double 2.7989489999999999
	.quad	0x400de38088509bfa              # double 3.7360850000000001
	.quad	0x40220325b317efe1              # double 9.0061470000000003
	.quad	0x4023bda35d67ba23              # double 9.8703869999999991
	.quad	0x3fe9f9df548ecd8e              # double 0.81175200000000003
	.quad	0x40216f39d1b2e59b              # double 8.717238
	.quad	0x40202908a265f0f6              # double 8.0801440000000007
	.quad	0x3fee7ba8826aa8eb              # double 0.95259499999999997
	.quad	0x3ffe2e82949a5658              # double 1.886355
	.quad	0x400ea74a771c970f              # double 3.8316849999999998
	.quad	0x401d60303c07ee0b              # double 7.343934
	.quad	0x40033ca4b124d09a              # double 2.4046110000000001
	.quad	0x4006e833c60029f1              # double 2.8633799999999998
	.quad	0x40166edbf8b9baa1              # double 5.6082609999999997
	.quad	0x4023a5e892253112              # double 9.8240400000000001
	.quad	0x4023a33892ee84ad              # double 9.8187909999999991
	.quad	0x40229e1d4306e5cd              # double 9.3088169999999995
	.quad	0x400871b25f633ce6              # double 3.0555159999999999
	.quad	0x4011eefc7a398202              # double 4.4833850000000002
	.quad	0x401efb8737974602              # double 7.7456329999999998
	.quad	0x401cd3265add9c28              # double 7.2062010000000001
	.quad	0x40192aca79357604              # double 6.2917880000000004
	.quad	0x4001caf922962cfe              # double 2.2241080000000002
	.quad	0x40092f227d028a1e              # double 3.148015
	.quad	0x4019c4f3343fa2ad              # double 6.4423339999999998
	.quad	0x4004aa337a80cf9e              # double 2.5831059999999999
	.quad	0x40209ee4c0df58c1              # double 8.3103390000000008
	.quad	0x40088c83ec892ab7              # double 3.0686110000000002
	.quad	0x40123ef1348b2208              # double 4.5614670000000004
	.quad	0x3fe3121682f94424              # double 0.59595799999999999
	.quad	0x3fe537ef5a964e8b              # double 0.66307799999999995
	.quad	0x4021240b9991361e              # double 8.5704010000000004
	.quad	0x4020b097e996312f              # double 8.3449089999999995
	.quad	0x401b30fa9c12f09e              # double 6.7978310000000004
	.quad	0x3fe5e1522a6f3f53              # double 0.683755
	.quad	0x400f5c84b5dcc63f              # double 3.920175
	.quad	0x401a9b36bd2b6f1a              # double 6.6515760000000004
	.quad	0x4019233acd5b6806              # double 6.2844040000000003
	.quad	0x4018e1aa3f034b0e              # double 6.2203759999999999
	.quad	0x4002f6b7ed41b75a              # double 2.3704679999999998
	.quad	0x401ad5935fc3b4f6              # double 6.7085699999999999
	.quad	0x3fd20d38cda6e760              # double 0.282057
	.quad	0x4022a8cd20afa2f0              # double 9.3296899999999994
	.quad	0x40209a1b7e0ac7da              # double 8.3009909999999998
	.quad	0x401af0c7c0f45176              # double 6.7351369999999999
	.quad	0x401b7a6efc371da3              # double 6.8695639999999996
	.quad	0x3ffd19934efcbd55              # double 1.8187439999999999
	.quad	0x401b5b2031ceaf25              # double 6.8389899999999999
	.quad	0x40163e6fb4c3c18b              # double 5.5609729999999997
	.quad	0x400112799a1fd157              # double 2.1340210000000002
	.quad	0x4020da276b7ed41b              # double 8.4260819999999992
	.quad	0x4018cfb2aae29739              # double 6.2028299999999996
	.quad	0x40126adb402d16b9              # double 4.6043519999999996
	.quad	0x401865881a1554fc              # double 6.0991520000000001
	.quad	0x40135c8ffb8b2639              # double 4.8403929999999997
	.quad	0x4020dccbe1eb4203              # double 8.4312430000000003
	.quad	0x4014f0813cab81f9              # double 5.2348679999999996
	.quad	0x4022ddd441355476              # double 9.4332600000000006
	.quad	0x3fdb588e368f0846              # double 0.42727999999999999
	.quad	0x401cf4b3c3e74afd              # double 7.2389669999999997
	.quad	0x400977ac3eb7cbb4              # double 3.1834340000000001
	.quad	0x400be3632c1f42bb              # double 3.4860289999999998
	.quad	0x40175dfd2630ec31              # double 5.8417859999999999
	.quad	0x4002eea077036c9c              # double 2.366517
	.quad	0x4022b6ca46e08f21              # double 9.3570119999999992
	.quad	0x4022dd188f42fe82              # double 9.4318279999999994
	.quad	0x3fe92dc4c9c90c4e              # double 0.78683700000000001
	.quad	0x4015b764f11b60af              # double 5.4290960000000004
	.quad	0x400750d9513f8db5              # double 2.9144770000000002
	.quad	0x4023861e0c5a8156              # double 9.7619480000000003
	.quad	0x4014b39085f4a127              # double 5.1753559999999998
	.quad	0x4006286a4ca4f441              # double 2.7697340000000001
	.quad	0x4023819bd4067cf2              # double 9.7531420000000004
	.quad	0x4002d742dcf4623d              # double 2.355108
	.quad	0x401ef56fb8f57f73              # double 7.7396839999999995
	.quad	0x400c0e5e679463d0              # double 3.5070160000000001
	.quad	0x4014da9c12f09d8c              # double 5.2134859999999996
	.quad	0x400fefd5cb790fb6              # double 3.9921069999999999
	.quad	0x401f7e225fa658c5              # double 7.8731780000000002
	.quad	0x400efc903ea704bc              # double 3.8733219999999999
	.quad	0x40188e3cd9a52264              # double 6.1389040000000001
	.quad	0x4006c5cbbc2b94d9              # double 2.8465799999999999
	.quad	0x401b655e28aa4335              # double 6.848992
	.quad	0x4011262b6ae7d567              # double 4.2872750000000002
	.quad	0x401f44cf8d716d2b              # double 7.8171980000000003
	.quad	0x400e6cd8dbcec850              # double 3.8031480000000002
	.quad	0x4013fe58a32f4491              # double 4.9983849999999999
	.quad	0x3ff46ee525892685              # double 1.277074
	.quad	0x4005be5a78f25a25              # double 2.717946
	.quad	0x401567fc7607c41a              # double 5.3515490000000003
	.quad	0x4017ee3a3a8e7147              # double 5.9826439999999996
	.quad	0x3fcd9d2391d57ffa              # double 0.23135800000000001
	.quad	0x402051d57ff9b563              # double 8.1598319999999998
	.quad	0x4017e0635a426bb5              # double 5.9691289999999997
	.quad	0x4017140fecdd0d8d              # double 5.7695920000000003
	.quad	0x4021482cd39da166              # double 8.6409669999999998
	.quad	0x4000b98201cd5f9a              # double 2.0905800000000001
	.quad	0x401f28e757928e0d              # double 7.7899450000000003
	.quad	0x4011c6da0168b5cc              # double 4.444191
	.quad	0x40163011d3671ac1              # double 5.5469429999999997
	.quad	0x40150fca85caafbc              # double 5.2654209999999999
	.quad	0x401b8a059a73b42d              # double 6.8847870000000002
	.quad	0x40232a428d434a02              # double 9.5825390000000006
	.quad	0x4014a5e1c15097c8              # double 5.161994
	.quad	0x3f7eca25529fe005              # double 0.0075170000000000002
	.quad	0x4019b47a9e2bcf92              # double 6.4262490000000003
	.quad	0x4012e2d77318fc50              # double 4.7215249999999997
	.quad	0x400c4686e7e62dc7              # double 3.5344370000000001
	.quad	0x401a02163fdd65a1              # double 6.5020379999999998
	.quad	0x40014f8a4c1ebc84              # double 2.1638380000000002
	.quad	0x400996a6a012599f              # double 3.1985600000000001
	.quad	0x401ecd50a88effe3              # double 7.7005030000000003
	.quad	0x400f54c55432873c              # double 3.9163920000000001
	.quad	0x3feab630a91537a0              # double 0.83474000000000003
	.quad	0x401fbadcd2d44dcb              # double 7.9324830000000003
	.quad	0x400678982cb20fb2              # double 2.8088839999999999
	.quad	0x401a35bea0ba1f4b              # double 6.5524849999999999
	.quad	0x40148bcc6c54bcf1              # double 5.1365220000000003
	.quad	0x401783d9231c64bb              # double 5.8787580000000004
	.quad	0x401d3ededaec4a41              # double 7.3113970000000004
	.quad	0x4022177f8ca8198f              # double 9.0458949999999998
	.quad	0x3ff186e7e62dc6e3              # double 1.0954360000000001
	.quad	0x4016b0ced4e4c943              # double 5.6726640000000002
	.quad	0x3fe9788db0574b40              # double 0.79596599999999995
	.quad	0x4020ce3f78bbd380              # double 8.4028279999999995
	.quad	0x3fe0d2c16df3f962              # double 0.52572700000000006
	.quad	0x401ff8c9fb6134ce              # double 7.9929579999999998
	.quad	0x402342eb1c432ca5              # double 9.6306999999999991
	.quad	0x3fe3efb8f57f737e              # double 0.62301300000000004
	.quad	0x400f8501e2584f4c              # double 3.9399449999999998
	.quad	0x401d7bbb62413db8              # double 7.370832
	.quad	0x401c6245f5ad96a7              # double 7.0959700000000003
	.quad	0x3fe086b7aa25d8d8              # double 0.51644500000000004
	.quad	0x40032493c89f40a3              # double 2.3928600000000002
	.quad	0x401187c393682731              # double 4.3825820000000002
	.quad	0x402172a9717df19d              # double 8.7239489999999993
	.quad	0x40229382e44b6e93              # double 9.2881079999999994
	.quad	0x4021ccd573647bab              # double 8.9000660000000007
	.quad	0x400c31ac14c660a2              # double 3.524254
	.quad	0x400d2bccf28c79f6              # double 3.6463869999999998
	.quad	0x402253d017dae819              # double 9.1636970000000009
	.quad	0x400df6b3354c1227              # double 3.7454589999999999
	.quad	0x4010425aee631f8a              # double 4.0648
	.quad	0x3fdd51e75360d024              # double 0.45812399999999998
	.quad	0x4022ce66a98244e9              # double 9.4031269999999995
	.quad	0x4022b88d08919ef9              # double 9.3604509999999994
	.quad	0x401e28d5842b734b              # double 7.5398769999999997
	.quad	0x40122a76534373f3              # double 4.5414669999999999
	.quad	0x401af58d5842b735              # double 6.7397970000000003
	.quad	0x3fda609dcf893faf              # double 0.41214699999999999
	.quad	0x4021c2ecf2064239              # double 8.8807139999999993
	.quad	0x40189e5bc87db2b3              # double 6.1546469999999998
	.quad	0x4015a11a543f1c76              # double 5.4073270000000004
	.quad	0x400e98f3eccc4695              # double 3.824684
	.quad	0x402034d056c508b3              # double 8.1031519999999997
	.quad	0x401445b9a5a89b95              # double 5.0680909999999999
	.quad	0x401be4373f316e37              # double 6.9728669999999999
	.quad	0x4012ff99806f2629              # double 4.7496090000000004
	.quad	0x401c2228997c3d68              # double 7.0333579999999998
	.quad	0x400bcddc6195464e              # double 3.4755180000000001
	.quad	0x401e8e603d577964              # double 7.6390390000000004
	.quad	0x4016c937d1fe64f5              # double 5.6965019999999997
	.quad	0x4018bf10ecb74de0              # double 6.1865880000000004
	.quad	0x402196c15d2d01c1              # double 8.7944440000000004
	.quad	0x3fea4e89656eefa2              # double 0.82208700000000001
	.quad	0x401c47d06bbdbe3c              # double 7.0701309999999999
	.quad	0x4001417ca2120e1f              # double 2.1569759999999998
	.quad	0x401419157abb8801              # double 5.0244960000000001
	.quad	0x4014d6922d948dc1              # double 5.2095419999999999
	.quad	0x400c248adeebb342              # double 3.5178430000000001
	.quad	0x401de4152b0a6fc6              # double 7.4727370000000004
	.quad	0x401f0681a9b8cb8e              # double 7.756354
	.quad	0x4014aa31e7d9988d              # double 5.1662059999999999
	.quad	0x40226e80bed740c4              # double 9.2158259999999998
	.quad	0x3ff6b6f3b213e3e3              # double 1.4196660000000001
	.quad	0x4011f4c2b51bd61f              # double 4.4890239999999997
	.quad	0x4007f98e97071822              # double 2.9968539999999999
	.quad	0x401f40af1cb89d6b              # double 7.8131680000000001
	.quad	0x40209174a3400b89              # double 8.2840930000000004
	.quad	0x401b50ebedfa43fe              # double 6.8290249999999997
	.quad	0x3fc67ae147ae147b              # double 0.175625
	.quad	0x40000013660e51d2              # double 2.0000369999999998
	.quad	0x4018e2d3415b1423              # double 6.2215090000000002
	.quad	0x4022997939a7c17b              # double 9.2997530000000008
	.quad	0x3ffcb6848beb5b2d              # double 1.7945599999999999
	.quad	0x3fc509e98dcdb37d              # double 0.16436500000000001
	.quad	0x3fe9829ae4f33440              # double 0.79719300000000004
	.quad	0x4018c48301a79fed              # double 6.1919060000000004
	.quad	0x4009940cc78e9f6b              # double 3.1972900000000002
	.quad	0x401515a57646ae3a              # double 5.2711389999999998
	.quad	0x401859e30014f8b6              # double 6.0877800000000004
	.quad	0x3fcfb0142f61ed5b              # double 0.247561
	.quad	0x40091780baa582dc              # double 3.136476
	.quad	0x3ff84c3c18b502ac              # double 1.5186120000000001
	.quad	0x3fedeb8305d95dd5              # double 0.93499900000000002
	.quad	0x40182e30446b69db              # double 6.0451059999999996
	.quad	0x401c6ad794a6eb92              # double 7.1043380000000003
	.quad	0x3fc10c4dec1c1d6d              # double 0.133188
	.quad	0x40229209edbf8b9c              # double 9.2852320000000005
	.quad	0x401a44a01abd1aa8              # double 6.5670169999999999
	.quad	0x4002bb96af038e2a              # double 2.341596
	.quad	0x40200bac929aa1d7              # double 8.0228009999999994
	.quad	0x3fd1f21f6cacd185              # double 0.28040300000000001
	.quad	0x3ff97d45a5fc7e6b              # double 1.5930839999999999
	.quad	0x400a9d41743e963e              # double 3.3267850000000001
	.quad	0x4005c4b7f5a5332b              # double 2.7210540000000001
	.quad	0x401dee01de269164              # double 7.4824289999999998
	.quad	0x402158ca8198f1d4              # double 8.6734200000000001
	.quad	0x4018a81a5870da5e              # double 6.1641630000000003
	.quad	0x40212fd651b0ccbc              # double 8.5934319999999999
	.quad	0x3fbb893faf42784b              # double 0.10756300000000001
	.quad	0x40165dd052934acb              # double 5.591615
	.quad	0x40083c9f72f76e61              # double 3.029601
	.quad	0x3fe77a02fb5d0310              # double 0.73364399999999996
	.quad	0x3fe981e4712e4085              # double 0.79710599999999998
	.quad	0x4009d4e0114d2f5e              # double 3.2289430000000001
	.quad	0x40086d41b75a74c1              # double 3.0533480000000002
	.quad	0x40027bb2788db057              # double 2.3103989999999999
	.quad	0x40025d955714b9cb              # double 2.2956949999999998
	.quad	0x40067c12f09d8c6d              # double 2.8105829999999998
	.quad	0x401a1ab1d4f9c1f8              # double 6.5260689999999997
	.quad	0x4008a7f1b6912125              # double 3.082004
	.quad	0x4023f43bf727136a              # double 9.9770199999999996
	.quad	0x3fdf91a75cd0bb6f              # double 0.49326500000000001
	.quad	0x40014f901083dbc2              # double 2.1638489999999999
	.quad	0x401f55ea67e846a6              # double 7.8339020000000001
	.quad	0x3ffad02ff8ec0f88              # double 1.675827
	.quad	0x3ff71676640a6b94              # double 1.442984
	.quad	0x3ff9df8d2e514c23              # double 1.617078
	.quad	0x40128b089a027525              # double 4.6357749999999998
	.quad	0x401323be6601bc99              # double 4.7849060000000003
	.quad	0x4021f1e68a0d349c              # double 8.9724620000000001
	.quad	0x4018231832fcac8e              # double 6.0342719999999996
	.quad	0x401cd6b2f23033a4              # double 7.2096669999999996
	.quad	0x3fe5756861e92924              # double 0.67058200000000001
	.quad	0x3ffbfca85caafbc2              # double 1.7491840000000001
	.quad	0x40223e5753a3ec03              # double 9.1217600000000001
	.quad	0x40171756861e9292              # double 5.7727909999999998
	.quad	0x401baf1e8e608073              # double 6.9210149999999997
	.quad	0x3fe0474d9c6b0532              # double 0.50870400000000005
	.quad	0x401522cdc011d367              # double 5.2839879999999999
	.quad	0x3ffa1c486ad2dcb1              # double 1.6319049999999999
	.quad	0x4022ebf1c75818c6              # double 9.4608290000000004
	.quad	0x4016509d0635a427              # double 5.5787240000000002
	.quad	0x3ff863c21187e7c0              # double 1.5243549999999999
	.quad	0x400ca672756861e9              # double 3.5812729999999999
	.quad	0x3fe186290eed02cd              # double 0.54762699999999997
	.quad	0x4014f72abef06b38              # double 5.2413740000000004
	.quad	0x400d8e3608d0891a              # double 3.694439
	.quad	0x401369b56323bbc7              # double 4.8532310000000001
	.quad	0x4002b606b7aa25d9              # double 2.3388800000000001
	.quad	0x3fdc95feda661284              # double 0.44665500000000002
	.quad	0x400cd76cce5f7404              # double 3.6051880000000001
	.quad	0x4014805faebc408e              # double 5.1253650000000004
	.quad	0x4020862cfd8f0c78              # double 8.2620620000000002
	.quad	0x401a7f041461b6d4              # double 6.6240389999999998
	.quad	0x4020c8ec95bff045              # double 8.3924299999999992
	.quad	0x4015d8372e6a7696              # double 5.4611479999999997
	.quad	0x402305d26b723ee2              # double 9.5113710000000005
	.quad	0x4001183f91e646f1              # double 2.1368399999999999
	.quad	0x402237a6bd6e8af8              # double 9.1086939999999998
	.quad	0x401343305100a394              # double 4.8156140000000001
	.quad	0x3ff468943e100608              # double 1.2755320000000001
	.quad	0x400b044417870542              # double 3.3770829999999998
	.quad	0x401b3848beb5b2d5              # double 6.8049650000000002
	.quad	0x401ccd987c6327ee              # double 7.2007770000000004
	.quad	0x401c8456b441bb8c              # double 7.1292369999999998
	.quad	0x402391e8e6080735              # double 9.7849799999999991
	.quad	0x40216549b62c7757              # double 8.6978279999999994
	.quad	0x3ff02eb4e981387a              # double 1.0114030000000001
	.quad	0x401c9f8d716d2aa6              # double 7.1558130000000002
	.quad	0x401e4c868b9fdbd3              # double 7.574732
	.quad	0x3ff6e94ee392e1ef              # double 1.4319599999999999
	.quad	0x401d26d15ad106ee              # double 7.2879079999999998
	.quad	0x3fc371001d5c3159              # double 0.15188599999999999
	.quad	0x3ff49784ec636b09              # double 1.2869919999999999
	.quad	0x401f3c6195464dc2              # double 7.8089659999999999
	.quad	0x4020b27d88c1db01              # double 8.3486139999999995
	.quad	0x3ffc112dba4d6e48              # double 1.754194
	.quad	0x3fe18d36b4c7f349              # double 0.54848799999999998
	.quad	0x40161858bc59b802              # double 5.5237759999999998
	.quad	0x400eed905c033615              # double 3.8659979999999998
	.quad	0x401602a737110e45              # double 5.5025909999999998
	.quad	0x40140d4280ae1049              # double 5.0129489999999999
	.quad	0x3ff990635a426bb5              # double 1.5977509999999999
	.quad	0x4013ed4801f75105              # double 4.9817200000000001
	.quad	0x400bab15f88fc936              # double 3.4585379999999999
	.quad	0x4014f2ffd1dcd706              # double 5.237304
	.quad	0x3ff4b5dedf1e0829              # double 1.2944020000000001
	.quad	0x400ed77d0f1f57b4              # double 3.855219
	.quad	0x401bb8661ae70c13              # double 6.9300769999999998
	.quad	0x40239752b90a7829              # double 9.7955529999999999
	.quad	0x3fad7be9856a37ac              # double 0.057585999999999998
	.quad	0x4018fc343b70ef56              # double 6.2462929999999997
	.quad	0x401e373471f79421              # double 7.5539110000000002
	.quad	0x4021f8bae89eba6b              # double 8.9858010000000004
	.quad	0x401b8352eb5f5f0b              # double 6.8782459999999999
	.quad	0x3ffdcc38f366948a              # double 1.8623590000000001
	.quad	0x4018a1815a07b353              # double 6.1577200000000003
	.quad	0x401eb13f077ccc03              # double 7.6730919999999995
	.quad	0x401407da61e0c5a8              # double 5.0076689999999999
	.quad	0x40127eca25529fe0              # double 4.623818
	.quad	0x3fc5dbfceb78897f              # double 0.17077600000000001
	.quad	0x401a0d17c5ef62fa              # double 6.5127860000000002
	.quad	0x4021d0281ba7fc33              # double 8.9065560000000001
	.quad	0x402023191dde3758              # double 8.0685509999999994
	.quad	0x400f570c564f97ee              # double 3.9175040000000001
	.quad	0x3fd44840e1719f80              # double 0.31691000000000003
	.quad	0x40112d1f601797cc              # double 4.2940649999999998
	.quad	0x4013b0614163779f              # double 4.9222460000000003
	.quad	0x40201c6412cf0f9d              # double 8.0554509999999997
	.quad	0x3febb445ed4a1ad6              # double 0.86575599999999997
	.quad	0x40225bb1290257c9              # double 9.1790859999999999
	.quad	0x40152bd7f51efb6e              # double 5.2928160000000002
	.quad	0x3fd2adafd113836b              # double 0.29185100000000003
	.quad	0x4021386b7aa25d8d              # double 8.6101949999999992
	.quad	0x401d9da87a072d1b              # double 7.4039630000000001
	.quad	0x401b1af294dd7236              # double 6.7763159999999996
	.quad	0x401eb8ad25679896              # double 7.6803480000000004
	.quad	0x401f901d5c31593e              # double 7.8907369999999997
	.quad	0x40111bf11f926c7f              # double 4.2772870000000003
	.quad	0x400568e043a21640              # double 2.6762090000000001
	.quad	0x4000d08c3f3e0371              # double 2.1018300000000001
	.quad	0x400710574b407033              # double 2.8829790000000002
	.quad	0x400b8a9b499d0204              # double 3.442679
	.quad	0x4022154e2b063e08              # double 9.0416120000000006
	.quad	0x401e8a515ce9e5e2              # double 7.6350759999999998
	.quad	0x400a2d3ae685db77              # double 3.2720850000000001
	.quad	0x400b52474538ef35              # double 3.4151750000000001
	.quad	0x4020bffe4bcad9ae              # double 8.3749870000000008
	.quad	0x400bee3f78bbd380              # double 3.4913319999999999
	.quad	0x3ff4e3b3636f3b21              # double 1.3055909999999999
	.quad	0x3ffa570f7b9e0610              # double 1.646255
	.quad	0x40230d50870110a1              # double 9.5260049999999996
	.quad	0x3ff4c637bd05af6c              # double 1.2983929999999999
	.quad	0x4008f504c48adeec              # double 3.1196380000000001
	.quad	0x4020a9014b599aa6              # double 8.3300879999999999
	.quad	0x400594fce746cb96              # double 2.6977479999999998
	.quad	0x3f9822bbecaab8a6              # double 0.023570000000000001
	.quad	0x40108df8b1572581              # double 4.1386440000000002
	.quad	0x4012297a67a52ac7              # double 4.5405059999999997
	.quad	0x3ffcdba908a265f1              # double 1.803628
	.quad	0x401dc1a500d5e8d5              # double 7.4391059999999998
	.quad	0x401902f837b4a234              # double 6.2529000000000003
	.quad	0x401b21426fe718a8              # double 6.7824799999999996
	.quad	0x401c3068986fcdee              # double 7.0472739999999998
	.quad	0x400ff2bf5515054b              # double 3.9935290000000001
	.quad	0x3ff650ce4ead0c3d              # double 1.394728
	.quad	0x401b285fd04a2fcf              # double 6.789428
	.quad	0x4018228ae74f2f12              # double 6.0337329999999998
	.quad	0x4011b40e1719f7f9              # double 4.4258350000000002
	.quad	0x40201c19c17225b7              # double 8.0548839999999995
	.quad	0x40131beec39799e5              # double 4.7772779999999999
	.quad	0x3fd657689ca18bd6              # double 0.34908499999999998
	.quad	0x3fc577d0f1f57b42              # double 0.16771900000000001
	.quad	0x3ff086c764adff82              # double 1.032905
	.quad	0x4021a8e29f9ce8d9              # double 8.8298539999999992
	.quad	0x4015e119ce075f70              # double 5.4698250000000002
	.quad	0x3ff0c5069a4df480              # double 1.0481020000000001
	.quad	0x40236c6b26bf876a              # double 9.7117550000000001
	.quad	0x40009ccc89b0ee4a              # double 2.076562
	.quad	0x4023d2b884406c01              # double 9.9115640000000002
	.quad	0x400852fa0d77b7c8              # double 3.0405160000000002
	.quad	0x400c0422036006d1              # double 3.5020180000000001
	.quad	0x401097fe4bcad9ae              # double 4.1484310000000004
	.quad	0x3ffea3ef284167a9              # double 1.9150229999999999
	.quad	0x4019a789613d31ba              # double 6.4136100000000003
	.quad	0x4020b90e8858ff76              # double 8.3614390000000007
	.quad	0x4009ed8ba40d90e2              # double 3.2409889999999999
	.quad	0x4019f26e115592da              # double 6.4867480000000004
	.quad	0x4020b94af4f0d845              # double 8.3619000000000003
	.quad	0x4011daa10e022142              # double 4.4635049999999996
	.quad	0x40214a3897204296              # double 8.6449630000000006
	.quad	0x4018beb4202d9cf1              # double 6.1862339999999998
	.quad	0x3fed8a58b3f63c32              # double 0.92313800000000001
	.quad	0x3fddf98b71b8aa00              # double 0.46835599999999999
	.quad	0x3ff462eb1c432ca5              # double 1.2741499999999999
	.quad	0x402295a72a7bd48d              # double 9.2922910000000005
	.quad	0x401bbd438d1d8a55              # double 6.9348280000000004
	.quad	0x40184606fac6045c              # double 6.0683860000000003
	.quad	0x4019a49f94855da2              # double 6.4107649999999996
	.quad	0x40226fb45f17bd8c              # double 9.2181730000000001
	.quad	0x4015b981beb18117              # double 5.4311590000000001
	.quad	0x401e4d434a01abd2              # double 7.5754520000000003
	.quad	0x4019a096787ce960              # double 6.4068240000000003
	.quad	0x400c5f340d4dc65c              # double 3.5464859999999998
	.quad	0x3fcae8858ff75968              # double 0.21022099999999999
	.quad	0x401ecc9107faa045              # double 7.6997720000000002
	.quad	0x401500828c36da88              # double 5.2504980000000003
	.quad	0x4007925247cb70ac              # double 2.9464459999999999
	.quad	0x4022ce31d712a0ec              # double 9.4027239999999991
	.quad	0x3ffa8443914f483d              # double 1.6572910000000001
	.quad	0x4022bf0a1be2b496              # double 9.3731240000000007
	.quad	0x40101e4fb97bb731              # double 4.0296010000000004
	.quad	0x3fbf7af640639d5e              # double 0.12297
	.quad	0x4020854866a11ec9              # double 8.2603179999999998
	.quad	0x400d42374794ea07              # double 3.6573319999999998
	.quad	0x40208158d9b5e95b              # double 8.2526309999999992
	.quad	0x4021680841ede11a              # double 8.7031880000000008
	.quad	0x40217fc08fa7a850              # double 8.7495159999999998
	.quad	0x402261e7d9988d2a              # double 9.1912219999999998
	.quad	0x401ae69595feda66              # double 6.7251799999999999
	.quad	0x4013aa1a500d5e8d              # double 4.9161159999999997
	.quad	0x400efe7a743a6480              # double 3.8742570000000001
	.quad	0x400bc5d7cb2d905c              # double 3.471603
	.quad	0x400987fbacb42891              # double 3.191398
	.quad	0x3ff5688df37329c3              # double 1.3380259999999999
	.quad	0x400a20b88ca3e7d1              # double 3.2659769999999999
	.quad	0x401b981ba7fc32ec              # double 6.8985430000000001
	.quad	0x400bb3a8a3f8982d              # double 3.4627240000000001
	.quad	0x3ff5beff1950331e              # double 1.3591299999999999
	.quad	0x3ffdce4217d2849d              # double 1.8628560000000001
	.quad	0x3ffc1ac9afe1da7b              # double 1.75654
	.quad	0x402119906cca2db6              # double 8.5499299999999998
	.quad	0x4023467e62dc6e2b              # double 9.6376830000000008
	.quad	0x4021c468ec52a412              # double 8.8836130000000004
	.quad	0x3fe7a37ef5a964e9              # double 0.73870800000000003
	.quad	0x3fff285ec3dab5c4              # double 1.9473560000000001
	.quad	0x400d75fdcdf69878              # double 3.6826129999999999
	.quad	0x401444e0daa0cae6              # double 5.0672639999999998
	.quad	0x3ff55c4c9c90c4df              # double 1.3350340000000001
	.quad	0x401174a515ce9e5e              # double 4.3639109999999999
	.quad	0x3ff470329802c0a5              # double 1.2773920000000001
	.quad	0x401422cf52b90a78              # double 5.0339939999999999
	.quad	0x401efeea63b688be              # double 7.7489410000000003
	.quad	0x40104c2d2780778a              # double 4.0743910000000003
	.quad	0x4012d70a808c825a              # double 4.7100010000000001
	.quad	0x3fc2007570c564f9              # double 0.14063899999999999
	.quad	0x402051f05ea24cc7              # double 8.1600370000000009
	.quad	0x3ffd677b395c4220              # double 1.837764
	.quad	0x401fd95dd4c76d11              # double 7.9622719999999995
	.quad	0x4010e83b1d0c8041              # double 4.226788
	.quad	0x3fd9da0dfdef8488              # double 0.40393400000000002
	.quad	0x4022156a37ac3eb8              # double 9.0418260000000004
	.quad	0x401033ae2541d8e8              # double 4.0504689999999997
	.quad	0x401c7eb24a6a875d              # double 7.1237269999999997
	.quad	0x4002dcdf69878317              # double 2.3578480000000002
	.quad	0x401f3e0114d2f5dc              # double 7.8105510000000002
	.quad	0x4020d776c4827b70              # double 8.4208280000000002
	.quad	0x4018a873bc903ea7              # double 6.164504
	.quad	0x4013895bbbe878fb              # double 4.8841390000000002
	.quad	0x400eee746cb966be              # double 3.8664329999999998
	.quad	0x401405d2d01c0ca6              # double 5.005687
	.quad	0x40110df43c7d5ed0              # double 4.2636269999999996
	.quad	0x401254d5d80e496f              # double 4.5828470000000001
	.quad	0x4004697c80841ede              # double 2.551507
	.quad	0x4012e0ff10ecb74e              # double 4.7197230000000001
	.quad	0x4016e2556d19dece              # double 5.7210289999999997
	.quad	0x3ff4b20fb224aada              # double 1.293472
	.quad	0x401c1ef459d9902a              # double 7.0302290000000003
	.quad	0x401f9c3e3193f6c2              # double 7.9025809999999996
	.quad	0x4012624463065f96              # double 4.5959640000000004
	.quad	0x401fcf14db59578a              # double 7.9522279999999999
	.quad	0x3ffd35f3d7d3910c              # double 1.825672
	.quad	0x4010287e7c06e19c              # double 4.0395450000000004
	.quad	0x4009f446f9b994e2              # double 3.2442760000000002
	.quad	0x40103be8bc169c24              # double 4.0585050000000003
	.quad	0x4019fa5375c8d9f9              # double 6.494459
	.quad	0x400ce4ed6fda836f              # double 3.6117810000000001
	.quad	0x3ffcb190d173fb7a              # double 1.7933509999999999
	.quad	0x3fe7ca18bd66277c              # double 0.74341999999999997
	.quad	0x4022e82d38476f2a              # double 9.4534699999999994
	.quad	0x402269e3864cb5bb              # double 9.2068139999999996
	.quad	0x401b2a4c61d8622c              # double 6.7913069999999998
	.quad	0x40099b499d0203e6              # double 3.2008239999999999
	.quad	0x4017adc5d6388659              # double 5.9196999999999997
	.quad	0x3ff52ecd07852f7f              # double 1.3239259999999999
	.quad	0x4005ff2ecf206424              # double 2.7496010000000002
	.quad	0x4022435e0f7fcfc4              # double 9.131577
	.quad	0x401c5d93c46d82ba              # double 7.0913839999999997
	.quad	0x4015e4b90214ad36              # double 5.4733619999999998
	.quad	0x401e15946c332f01              # double 7.5210739999999995
	.quad	0x4020760bf5d78812              # double 8.2305600000000005
	.quad	0x40194067cf1c3266              # double 6.3128960000000003
	.quad	0x4016123033a4723b              # double 5.5177620000000003
	.quad	0x400d738583621fb0              # double 3.6814070000000001
	.quad	0x3ff37a85015c2092              # double 1.2174119999999999
	.quad	0x3ffc756b87379746              # double 1.778667
	.quad	0x4021f344c37e6f72              # double 8.9751340000000006
	.quad	0x4002a03c4b09e98e              # double 2.3282400000000001
	.quad	0x401a2192ea52ef91              # double 6.5327869999999999
	.quad	0x4017fe7ff583a53c              # double 5.9985350000000004
	.quad	0x401249f5dfeb8d82              # double 4.5722269999999998
	.quad	0x402360ce0b912dba              # double 9.6890719999999995
	.quad	0x40030be40420f6f1              # double 2.3808060000000002
	.quad	0x40020dba4d6e47dc              # double 2.2567029999999999
	.quad	0x4012b29e4d5d80e5              # double 4.6744320000000004
	.quad	0x40190e3b03e20cd0              # double 6.263897
	.quad	0x401070b30b5aa716              # double 4.1100580000000004
	.quad	0x401a06149c6f36f0              # double 6.5059380000000004
	.quad	0x40219deb313be22e              # double 8.8084349999999993
	.quad	0x400bc4d1a6506141              # double 3.4711029999999998
	.quad	0x402042fa2f05a709              # double 8.1308150000000001
	.quad	0x4021d29930be0ded              # double 8.9113249999999997
	.quad	0x4016da871a3b14a9              # double 5.713406
	.quad	0x4002c7f23cc8de2b              # double 2.3476300000000001
	.quad	0x4012d9478c868ba0              # double 4.7121870000000001
	.quad	0x4020d2fe1da7b0b4              # double 8.4120950000000007
	.quad	0x40234b4a01abd1ab              # double 9.6470490000000008
	.quad	0x4015372b020c49ba              # double 5.3038749999999997
	.quad	0x4020381cd5f99c39              # double 8.1095950000000006
	.quad	0x402249ab8e8ea39c              # double 9.1438869999999994
	.quad	0x40196738a3b57c4e              # double 6.3508019999999998
	.quad	0x3ff4ea67e846a5d7              # double 1.3072280000000001
	.quad	0x3ffec03dddb1209f              # double 1.921934
	.quad	0x40207b456b441bb9              # double 8.2407640000000004
	.quad	0x3ff2224031487768              # double 1.133362
	.quad	0x4020a459103c8e26              # double 8.3209920000000004
	.quad	0x401cb291fb3fa6df              # double 7.174385
	.quad	0x4020b7ec3547e069              # double 8.3592239999999993
	.quad	0x400be5ac471b4784              # double 3.4871449999999999
	.quad	0x4004161804d98394              # double 2.5107879999999998
	.quad	0x4011d11d3671ac15              # double 4.4542130000000002
	.quad	0x4016d6a337a80cfa              # double 5.7096070000000001
	.quad	0x401544da09cc319c              # double 5.3172379999999997
	.quad	0x401641c4b90214ad              # double 5.5642269999999998
	.quad	0x400762541d8e8640              # double 2.9230119999999999
	.quad	0x4013b2c1b10fd7e4              # double 4.9245669999999997
	.quad	0x400e90bf1a5ca298              # double 3.8206769999999999
	.quad	0x40080b76f6d76252              # double 3.005598
	.quad	0x401bdb9884c6a3be              # double 6.9644490000000001
	.quad	0x4023defa615a8deb              # double 9.9355039999999998
	.quad	0x40147c957cd466f5              # double 5.121664
	.quad	0x400446106ab14ec2              # double 2.534211
	.quad	0x4023485fd04a2fcf              # double 9.641356
	.quad	0x3ffaefcac8e68e3f              # double 1.683543
	.quad	0x401c8b7a1c25d074              # double 7.1362079999999999
	.quad	0x4003d21c475e6363              # double 2.4775930000000002
	.quad	0x3fe4617a02fb5d03              # double 0.63689899999999999
	.quad	0x3ff79b6e503fb374              # double 1.475447
	.quad	0x3fe055da272862f6              # double 0.51048000000000004
	.quad	0x4023c89df1172ef1              # double 9.8918300000000005
	.quad	0x401e3067cf1c3266              # double 7.5472710000000003
	.quad	0x4021cdb1209edbf9              # double 8.9017420000000005
	.quad	0x4013fce3de6149c7              # double 4.996963
	.quad	0x4005bc1376d54973              # double 2.716834
	.quad	0x4003ffd7a13c254a              # double 2.4999229999999999
	.quad	0x401225fc3b4f6167              # double 4.5370949999999999
	.quad	0x4017aa6f826edaa9              # double 5.9164409999999998
	.quad	0x4023cd4bf0995aaf              # double 9.9009699999999991
	.quad	0x400adc393682730c              # double 3.3575309999999998
	.quad	0x40145e920c069e80              # double 5.0923540000000003
	.quad	0x4018ff1b25f633ce              # double 6.2491269999999997
	.quad	0x401300303c07ee0b              # double 4.750184
	.quad	0x4007cf3c2dadb835              # double 2.9761890000000002
	.quad	0x400a6aa9717df19d              # double 3.3020809999999998
	.quad	0x4014e0446b69db66              # double 5.2190110000000001
	.quad	0x4004c542e557de0d              # double 2.5963189999999998
	.quad	0x401e4fb6134ce3de              # double 7.5778429999999997
	.quad	0x40112e8ab4fa4830              # double 4.2954509999999999
	.quad	0x40206d49b62c7757              # double 8.2134529999999994
	.quad	0x40081c9f72f76e61              # double 3.013976
	.quad	0x40214f4a1272c94b              # double 8.6548619999999996
	.quad	0x4013872862f5989e              # double 4.8819900000000001
	.quad	0x401d79e8815e3971              # double 7.3690509999999998
	.quad	0x40224fec7863beec              # double 9.1561009999999996
	.quad	0x401d401797cc3a00              # double 7.3125900000000001
	.quad	0x401b3e2089e34331              # double 6.8106710000000001
	.quad	0x400ee4f11b60ae97              # double 3.8617880000000002
	.quad	0x401eed5c74751ce3              # double 7.7317980000000003
	.quad	0x401e1a8826aa8eb4              # double 7.5259099999999997
	.quad	0x40209378897e9963              # double 8.2880289999999999
	.quad	0x4014cb86f47b677f              # double 5.1987569999999996
	.quad	0x4012cccdd93c46d8              # double 4.7000039999999998
	.quad	0x401421c219eb6391              # double 5.0329670000000002
	.quad	0x401159c9d5a187a5              # double 4.3376840000000003
	.quad	0x40146a9fbe76c8b4              # double 5.1041249999999998
	.quad	0x400b97b4a2339c0f              # double 3.4490750000000001
	.quad	0x4020d92817763e4b              # double 8.4241340000000005
	.quad	0x40209c5931ca7d67              # double 8.3053679999999996
	.quad	0x4023004662bae03b              # double 9.5005369999999995
	.quad	0x401a33a29c779a6b              # double 6.5504249999999997
	.quad	0x401579d55e6bc622              # double 5.3689780000000003
	.quad	0x3fdd7a072d1aeb3e              # double 0.46057300000000001
	.quad	0x4016b405f6ba0621              # double 5.6758040000000003
	.quad	0x4000285ec3dab5c4              # double 2.0197120000000002
	.quad	0x40221bda2f8bdec6              # double 9.0543990000000001
	.quad	0x40199a5e785b5b70              # double 6.4007509999999996
	.quad	0x400116b09635610b              # double 2.1360790000000001
	.quad	0x400586013660e51d              # double 2.6904319999999999
	.quad	0x3ffe3ce3150dae3e              # double 1.8898649999999999
	.quad	0x4021581e8a2ec28b              # double 8.6721079999999997
	.quad	0x4021a0344c37e6f7              # double 8.8128989999999998
	.quad	0x400a68ace24bba13              # double 3.3011110000000001
	.quad	0x3ffdc7d912556d1a              # double 1.861291
	.quad	0x40029e892253111f              # double 2.32741
	.quad	0x3fef721b3aeee957              # double 0.98267899999999996
	.quad	0x4020ee6e008e9b39              # double 8.4656830000000003
	.quad	0x4008e073de1e2de8              # double 3.1095959999999998
	.quad	0x400716b3bb83cf2d              # double 2.886085
	.quad	0x401d0269df97aaac              # double 7.2523569999999999
	.quad	0x4013e5d1c3ac929b              # double 4.9744330000000003
	.quad	0x4021d12231832fcb              # double 8.9084640000000004
	.quad	0x4012152ac753e708              # double 4.5206710000000001
	.quad	0x3fdf28f9f44d4456              # double 0.48687599999999998
	.quad	0x4017331f8a0902de              # double 5.799925
	.quad	0x3fd11abd1aa821f3              # double 0.26725700000000002
	.quad	0x4023110bc7b45f18              # double 9.5332930000000004
	.quad	0x4010a96312f4cf4a              # double 4.1654169999999997
	.quad	0x40229c96cc5fbf83              # double 9.3058379999999996
	.quad	0x400725c03361565c              # double 2.8934329999999999
	.quad	0x4022387af20ea5b5              # double 9.1103129999999997
	.quad	0x400229eb2074ea8e              # double 2.2704680000000002
	.quad	0x4008417e34b94531              # double 3.0319790000000002
	.quad	0x401454f26aec0725              # double 5.0829560000000003
	.quad	0x401eca4723aafff3              # double 7.6975369999999996
	.quad	0x3fedfe36d22424a2              # double 0.93728199999999995
	.quad	0x402145080b673c4f              # double 8.6348269999999996
	.quad	0x4020cb0014f8b589              # double 8.3964850000000002
	.quad	0x3feec8e8a71de69b              # double 0.96202500000000001
	.quad	0x40174d2806af46aa              # double 5.825348
	.quad	0x4023eac1d29dc726              # double 9.9585100000000004
	.quad	0x400264b2b777d0f2              # double 2.299169
	.quad	0x4021e10f0e90bc7b              # double 8.9395679999999995
	.quad	0x400634f5903a7547              # double 2.7758590000000001
	.quad	0x3fe038fbca1059ea              # double 0.50695599999999996
	.quad	0x4023f904d551d68c              # double 9.9863649999999992
	.quad	0x40165f1bef49cf57              # double 5.5928800000000001
	.quad	0x3fefc76f2a5a469d              # double 0.99309499999999995
	.quad	0x3fee227ae9ab29e5              # double 0.94170900000000002
	.quad	0x4021c3dc26dce39b              # double 8.8825389999999995
	.quad	0x4023422c01e68a0d              # double 9.6292419999999996
	.quad	0x3ff7a40b780346dc              # double 1.4775499999999999
	.quad	0x3ffc9b6f5caf2d80              # double 1.7879480000000001
	.quad	0x3fee8fa9c12f09d9              # double 0.95503700000000002
	.quad	0x4006e6d506573216              # double 2.862711
	.quad	0x401be08637bd05af              # double 6.9692619999999996
	.quad	0x3fe614bdfd2630ec              # double 0.69003199999999998
	.quad	0x402348af5fd47bee              # double 9.6419630000000005
	.quad	0x402192ed783dff3f              # double 8.7869679999999999
	.quad	0x40143e279dd3bafe              # double 5.0606980000000004
	.quad	0x40106f141205bc02              # double 4.1084750000000003
	.quad	0x401c125fe974a340              # double 7.017944
	.quad	0x4022141aef6f8f04              # double 9.0392679999999998
	.quad	0x401cf3fbbd7b2032              # double 7.2382650000000002
	.quad	0x402112f9ebe9c886              # double 8.5370629999999998
	.quad	0x4020497268d32831              # double 8.1434510000000007
	.quad	0x4020fbab430f4949              # double 8.4915409999999998
	.quad	0x4015bacc92146a1a              # double 5.4324209999999997
	.quad	0x40175df71eafee70              # double 5.8417630000000003
	.quad	0x401435119ce075f7              # double 5.051825
	.quad	0x40097adf2ecf2064              # double 3.1849959999999999
	.quad	0x4022f4f56eac8605              # double 9.4784349999999992
	.quad	0x401c175360d02470              # double 7.0227789999999999
	.quad	0x401391deacc92147              # double 4.8924510000000003
	.quad	0x3fe94558644523f6              # double 0.78971499999999994
	.quad	0x40110a11ec918e32              # double 4.2598339999999997
	.quad	0x3ffd43c297bfa4c6              # double 1.829043
	.quad	0x3fffa8650e779208              # double 1.978612
	.quad	0x401d21ac14c660a2              # double 7.282883
	.quad	0x4008a09246bf0132              # double 3.0784039999999999
	.quad	0x4021de820e629952              # double 8.9345859999999995
	.quad	0x401fc5c74751ce29              # double 7.943143
	.quad	0x401a139da16616b5              # double 6.5191559999999997
	.quad	0x3fe1282c6ef3d3a2              # double 0.53615400000000002
	.quad	0x4019e107faa044af              # double 6.4697570000000004
	.quad	0x400bd06705c896dd              # double 3.4767589999999999
	.quad	0x401120728e92d55a              # double 4.2816869999999998
	.quad	0x3ffcf609dcf893fb              # double 1.810068
	.quad	0x4021601754b05b7d              # double 8.687678
	.quad	0x401dfe9a6f826edb              # double 7.4986360000000003
	.quad	0x4020d773c0c1fc8f              # double 8.4208049999999997
	.quad	0x401b36bd2b6f1993              # double 6.8034559999999997
	.quad	0x3ff1744806290eed              # double 1.090889
	.quad	0x4012b6e5471715c6              # double 4.6786089999999998
	.quad	0x40049ee34fc610f1              # double 2.577582
	.quad	0x400367a6bd6e8af8              # double 2.425611
	.quad	0x40049ce4a7b4e54f              # double 2.5766079999999998
	.quad	0x4023b1b90ea9e6ef              # double 9.8471150000000005
	.quad	0x40021d495182a993              # double 2.2643
	.quad	0x400e4e9bbf0dc769              # double 3.7883830000000001
	.quad	0x40147a6ce358298d              # double 5.1195560000000002
	.quad	0x4013da0f4d7add16              # double 4.9629490000000001
	.quad	0x3fe71871e6cd2913              # double 0.72173399999999999
	.quad	0x40139eb074a771c9              # double 4.9049699999999996
	.quad	0x401a26162f166e01              # double 6.5371940000000004
	.quad	0x3fed1ebe9c886163              # double 0.91000300000000001
	.quad	0x4023aaed783dff3f              # double 9.8338429999999998
	.quad	0x4010d3b46fdeb52d              # double 4.2067430000000003
	.quad	0x4011d739b024f65a              # double 4.4601810000000004
	.quad	0x401bcc026cc1ca3a              # double 6.9492279999999997
	.quad	0x401116a832b990b0              # double 4.2721260000000001
	.quad	0x4000259210385c68              # double 2.0183450000000001
	.quad	0x4023c78c21e1d218              # double 9.8897410000000007
	.quad	0x401d9b2fa93af74d              # double 7.4015490000000002
	.quad	0x3ff782dcf4623d0c              # double 1.469449
	.quad	0x401a6b08dd1e53a8              # double 6.6045259999999999
	.quad	0x4022261ef73c0c20              # double 9.0744550000000004
	.quad	0x401dcec56d5cfaad              # double 7.4519250000000001
	.quad	0x40154a06e9ff0cbb              # double 5.322292
	.quad	0x40045c7d5ed06fef              # double 2.5451609999999998
	.quad	0x3fc59f559b3d07c8              # double 0.16892499999999999
	.quad	0x40188e03f705857b              # double 6.138687
	.quad	0x400e47f77af64064              # double 3.7851400000000002
	.quad	0x401bf31bde82d7b6              # double 6.9874109999999998
	.quad	0x40235b24638c9753              # double 9.6780120000000007
	.quad	0x4023c9f926c7eae6              # double 9.8944790000000005
	.quad	0x40080e48e8a71de7              # double 3.0069750000000002
	.quad	0x40231e71ac14c661              # double 9.5594610000000006
	.quad	0x3ff68ab606b7aa26              # double 1.408865
	.quad	0x401dc42b302f72b4              # double 7.4415709999999997
	.quad	0x40132676a7264a17              # double 4.7875620000000003
	.quad	0x3ffd525bb7b6bb13              # double 1.8326070000000001
	.quad	0x3fe3f31d2e0e3044              # double 0.62342699999999995
	.quad	0x401c729ae4f33440              # double 7.1119190000000003
	.quad	0x4023acac6cdaf4ae              # double 9.8372530000000005
	.quad	0x401f3b5a63f9a49c              # double 7.8079619999999998
	.quad	0x400d74df04ddb552              # double 3.6820659999999998
	.quad	0x3fc3a0407cc7d1bb              # double 0.15332799999999999
	.quad	0x401c1ae4f3343fa3              # double 7.0262640000000003
	.quad	0x3fc849c2c1b10fd8              # double 0.189751
	.quad	0x3fe15eb313be22e6              # double 0.54281000000000001
	.quad	0x3ffba856605ee569              # double 1.7285980000000001
	.quad	0x400abfb15b573eab              # double 3.3435999999999999
	.quad	0x4020305a4f00ef13              # double 8.0944389999999995
	.quad	0x4021859620685554              # double 8.7609110000000001
	.quad	0x40103c3d68405b3a              # double 4.0588280000000001
	.quad	0x4004577d0f1f57b4              # double 2.542719
	.quad	0x3ff6ebba98eda22f              # double 1.4325509999999999
	.quad	0x40202dd31337eb29              # double 8.0895010000000003
	.quad	0x4009275ee99a62ed              # double 3.1442239999999999
	.quad	0x401c21ca3a4b5569              # double 7.0329980000000001
	.quad	0x4016df8e3ac0c62e              # double 5.7183159999999997
	.quad	0x401749f3c70c996b              # double 5.8222189999999996
	.quad	0x3ff536d86ec17ebb              # double 1.32589
	.quad	0x4008fd8a54823854              # double 3.123799
	.quad	0x40116c093d966384              # double 4.3555039999999998
	.quad	0x4004a28027d88c1e              # double 2.5793460000000001
	.quad	0x3ff1e702a3486f05              # double 1.1188990000000001
	.quad	0x401558c8abd5dc40              # double 5.336703
	.quad	0x4018120ff540895d              # double 6.017639
	.quad	0x40162cb46bacf744              # double 5.5436569999999996
	.quad	0x4018df9096bb98c8              # double 6.2183250000000001
	.quad	0x40137df2a9d627bf              # double 4.8729959999999997
	.quad	0x400ed09203a322af              # double 3.8518409999999998
	.quad	0x4022f5e657b84dba              # double 9.4802730000000004
	.quad	0x401c75d63886594b              # double 7.115075
	.quad	0x402044204f2ae07e              # double 8.1330589999999994
	.quad	0x40193edaec4a4096              # double 6.311382
	.quad	0x40113a9717df19d6              # double 4.3072169999999996
	.quad	0x400d9e8ccdd93c47              # double 3.7024170000000001
	.quad	0x4023068ccdd93c47              # double 9.5127930000000002
	.quad	0x4023fdd6bebe1651              # double 9.9957790000000006
	.quad	0x4022731bde82d7b6              # double 9.2248219999999996
	.quad	0x3ffe94a5df2239e7              # double 1.9112910000000001
	.quad	0x40147bff04577d95              # double 5.1210899999999997
	.quad	0x40224c24a276b7ed              # double 9.1487169999999995
	.quad	0x3ffaae89eba6aca8              # double 1.6676120000000001
	.quad	0x40212723aafff36b              # double 8.5764440000000004
	.quad	0x400b33fd0d0678c0              # double 3.400385
	.quad	0x4022635d249e44fa              # double 9.19407
	.quad	0x4014cd0f1f57b41c              # double 5.200253
	.quad	0x4017bf86e3b46fdf              # double 5.9370380000000003
	.quad	0x3fe8bb7b6bb12902              # double 0.77288599999999996
	.quad	0x3ff5f5771001d5c3              # double 1.372428
	.quad	0x400478c6d612c6ac              # double 2.5589729999999999
	.quad	0x401f8841aac53b08              # double 7.8830629999999999
	.quad	0x401c1d7cf5f4e443              # double 7.028797
	.quad	0x40021781c714fce7              # double 2.2614779999999999
	.quad	0x4018748a159817b9              # double 6.1138079999999997
	.quad	0x4017ac24c404a72f              # double 5.9181090000000003
	.quad	0x401bdf640639d5e5              # double 6.9681550000000003
	.quad	0x401716fc158fb43e              # double 5.7724460000000004
	.quad	0x401ef8a82a5614e0              # double 7.7428290000000004
	.quad	0x4005762d83c6c97e              # double 2.6827040000000002
	.quad	0x4018e28f190d1740              # double 6.2212490000000003
	.quad	0x401f6ece13f4a98b              # double 7.8582080000000003
	.quad	0x4019c78811b1d92b              # double 6.4448549999999996
	.quad	0x401106d7625204b0              # double 4.2566810000000004
	.quad	0x401119eadd590c0b              # double 4.2753100000000002
	.quad	0x4010cd65a14488c6              # double 4.200583
	.quad	0x4019239bcba30121              # double 6.2847739999999996
	.quad	0x401f1b762d83c6c9              # double 7.7768179999999995
	.quad	0x400a52cc70867ad9              # double 3.290429
	.quad	0x3ff5388ca3e7d135              # double 1.326306
	.quad	0x4008f6965f5275ef              # double 3.1204040000000002
	.quad	0x4012999e0e73604a              # double 4.6500170000000001
	.quad	0x400abee9142b302f              # double 3.3432179999999998
	.quad	0x4021a620ccff21b4              # double 8.8244690000000005
	.quad	0x4020b6fef7c243dd              # double 8.3574140000000003
	.quad	0x4022724e379b77c0              # double 9.2232529999999997
	.quad	0x400ed721d53cddd7              # double 3.8550450000000001
	.quad	0x40229bc169c23b79              # double 9.3042099999999994
	.quad	0x40053a1b1960fa16              # double 2.6533720000000001
	.quad	0x4016aea960b6f9fd              # double 5.6705680000000003
	.quad	0x4017792ea52ef912              # double 5.8683420000000002
	.quad	0x3ff20347e8ccdd94              # double 1.1258010000000001
	.quad	0x4010b5c810a569b1              # double 4.1775209999999996
	.quad	0x401c7a137f38c543              # double 7.1192149999999996
	.quad	0x4010dfd2e9468017              # double 4.2185779999999999
	.quad	0x401461f14983d790              # double 5.0956469999999996
	.quad	0x4017e8950763a190              # double 5.977131
	.quad	0x4020d84189374bc7              # double 8.4223750000000006
	.quad	0x4020a3430f49491f              # double 8.3188709999999997
	.quad	0x3feb7127f5e84f09              # double 0.85756299999999996
	.quad	0x4018169984a0e411              # double 6.0220700000000003
	.quad	0x4012ae42e1262025              # double 4.6701769999999998
	.quad	0x400c7cbd556084a5              # double 3.560908
	.quad	0x401eb6801711947d              # double 7.678223
	.quad	0x400b962f9ca5bd94              # double 3.4483329999999999
	.quad	0x4019497cc39ffd61              # double 6.3217650000000001
	.quad	0x402395bdd76683c3              # double 9.7924640000000007
	.quad	0x401bf09e98dcdb38              # double 6.9849800000000002
	.quad	0x4023928240b78034              # double 9.7861499999999992
	.quad	0x4022671bef49cf57              # double 9.2013850000000001
	.quad	0x4013c791c4b90215              # double 4.9448920000000003
	.quad	0x4002ed8ba40d90e2              # double 2.3659889999999999
	.quad	0x402118feac42e98a              # double 8.5488180000000007
	.quad	0x40226ed0b30b5aa7              # double 9.2164359999999999
	.quad	0x3ff108e581cf7879              # double 1.0646720000000001
	.quad	0x3fe0265492ff4ba5              # double 0.50467899999999999
	.quad	0x4022b87c200c0f02              # double 9.360322
	.quad	0x401a74677b395c42              # double 6.6136759999999999
	.quad	0x4021f6262cba732e              # double 8.9807600000000001
	.quad	0x40061532617c1bda              # double 2.7603499999999999
	.quad	0x40210e5b8561d430              # double 8.5280419999999992
	.quad	0x4014c4651f3e89a9              # double 5.1917920000000004
	.quad	0x4016a607c4199fe4              # double 5.6621389999999998
	.quad	0x40190966be7afa72              # double 6.2591809999999999
	.quad	0x401cc192ea52ef91              # double 7.1890369999999999
	.quad	0x401b581882adc4ca              # double 6.8360310000000002
	.quad	0x3feb178d4fdf3b64              # double 0.84662499999999996
	.quad	0x4004b526527a2058              # double 2.5884520000000002
	.quad	0x401ee95af294dd72              # double 7.7278859999999998
	.quad	0x3f77eed45e9185cf              # double 0.0058430000000000001
	.quad	0x401c72c6ef3d3a1d              # double 7.1120869999999998
	.quad	0x3ffbe91fb3fa6df0              # double 1.744415
	.quad	0x4011c38a3b57c4e3              # double 4.440957
	.quad	0x4011d7e56473471f              # double 4.4608359999999996
	.quad	0x401be89f83be6602              # double 6.9771710000000002
	.quad	0x3fd3397dd00f776c              # double 0.30038399999999998
	.quad	0x40215e646f156191              # double 8.6843599999999999
	.quad	0x400d5b499d0203e6              # double 3.6695739999999999
	.quad	0x40051dd76683c298              # double 2.6395710000000001
	.quad	0x3fe0cc6a3bddfca0              # double 0.524953
	.quad	0x400099873ffac1d3              # double 2.0749650000000002
	.quad	0x40230d52e2fbe33b              # double 9.5260230000000003
	.quad	0x3ffd5f9591cd1c7e              # double 1.835836
	.quad	0x401fda8c154c985f              # double 7.9634249999999999
	.quad	0x401473671ac14c66              # double 5.112698
	.quad	0x40160088d6d3b6cc              # double 5.5005220000000001
	.quad	0x3fef823854046413              # double 0.98464600000000002
	.quad	0x4008d3415b1422cd              # double 3.1031520000000001
	.quad	0x40094d16b97fe8ee              # double 3.1626409999999998
	.quad	0x401dc5015c209247              # double 7.4423880000000002
	.quad	0x3feb7a5f41aef6f9              # double 0.85868800000000001
	.quad	0x3fc3ef8487b99d45              # double 0.155747
	.quad	0x400aaed1bf7ad4b2              # double 3.3353609999999998
	.quad	0x3fec4a2db61bb060              # double 0.88405500000000003
	.quad	0x401a698b2e9ccb7d              # double 6.6030699999999998
	.quad	0x4013c7763e4abe6a              # double 4.9447869999999998
	.quad	0x401c6630a91537a0              # double 7.0997950000000003
	.quad	0x4013ac0a06e9ff0d              # double 4.9180070000000002
	.quad	0x4020d102795703f3              # double 8.4082220000000003
	.quad	0x402053a604e1e710              # double 8.1633759999999995
	.quad	0x401747913e81450f              # double 5.81989
	.quad	0x4023c23b9ae0c176              # double 9.8793609999999994
	.quad	0x3ffacac3a860dcba              # double 1.6745030000000001
	.quad	0x4008d75f2cb64170              # double 3.105162
	.quad	0x3fef455a7d24180d              # double 0.97721599999999997
	.quad	0x4010d414e7ee9143              # double 4.2071110000000003
	.quad	0x401794ce8101f31f              # double 5.8953189999999998
	.quad	0x4013994bbe4473cd              # double 4.8997029999999997
	.quad	0x4013ff9d6f112fd3              # double 4.9996239999999998
	.quad	0x400935cd91eeaa6d              # double 3.1512709999999999
	.quad	0x40081413986338b4              # double 3.0098029999999998
	.quad	0x4001e1dd1a21ea36              # double 2.2352850000000002
	.quad	0x3fdea67e846a5d6c              # double 0.478912
	.quad	0x3ff8447e49b1fab9              # double 1.5167219999999999
	.quad	0x3ff6658b3f63c31e              # double 1.399791
	.quad	0x400fa237cdcca70d              # double 3.9542079999999999
	.quad	0x4000d94855da2728              # double 2.1060949999999998
	.quad	0x401febf0995aaf79              # double 7.98041
	.quad	0x401e07f455a7d242              # double 7.5077680000000004
	.quad	0x40215d3dc8b86b16              # double 8.6821120000000001
	.quad	0x402357cc1871e6cd              # double 9.6714789999999997
	.quad	0x3ffb911f0c34c1a9              # double 1.7229300000000001
	.quad	0x4020a2fe3f359ff5              # double 8.318346
	.quad	0x40133c43b2dd377e              # double 4.8088519999999999
	.quad	0x40223a43dccea290              # double 9.1137990000000002
	.quad	0x4007a7f77af64064              # double 2.9570150000000002
	.quad	0x401d2f1fddebd902              # double 7.2960200000000004
	.quad	0x4019fcb252ce032e              # double 6.4967740000000003
	.quad	0x401ca0cf5b1c8649              # double 7.1570410000000004
	.quad	0x4023af5bc44bf4cb              # double 9.8424969999999998
	.quad	0x401f3c70435efa61              # double 7.8090219999999996
	.quad	0x4017e4d7f0ed3d86              # double 5.9734800000000003
	.quad	0x402284c964628028              # double 9.2593490000000002
	.quad	0x3ffda6a65cf67b1c              # double 1.853186
	.quad	0x4002690470a808c8              # double 2.3012779999999999
	.quad	0x3fe3a2c881e4712e              # double 0.61362099999999997
	.quad	0x4021b289fc6da448              # double 8.8487089999999995
	.quad	0x3ff6301b866e43aa              # double 1.3867449999999999
	.quad	0x401be666a98244e9              # double 6.9750009999999998
	.quad	0x401c43f5f91600f3              # double 7.0663679999999998
	.quad	0x3f9ae1cde5d18091              # double 0.026252000000000001
	.quad	0x3ff94549b62c7757              # double 1.5794159999999999
	.quad	0x3ff1079702e6644e              # double 1.0643530000000001
	.quad	0x4010ddbfceb78898              # double 4.2165520000000001
	.quad	0x40113fbacb428912              # double 4.3122360000000004
	.quad	0x400ab944aa53fc01              # double 3.3404630000000002
	.quad	0x3ff23240fa9c12f1              # double 1.1372690000000001
	.quad	0x401ef2b3892ee84b              # double 7.7370130000000001
	.quad	0x4021dd7fd82773e2              # double 8.9326159999999994
	.quad	0x3ff3f32f01754b06              # double 1.2468710000000001
	.quad	0x40034d7c6fbd273d              # double 2.4128349999999998
	.quad	0x4023eafa0d77b7c8              # double 9.9589390000000008
	.quad	0x40068f8b588e368f              # double 2.82009
	.quad	0x3ff06413db7f1737              # double 1.0244329999999999
	.quad	0x402302014727dcbe              # double 9.5039160000000003
	.quad	0x4017746ed245b292              # double 5.8637040000000002
	.quad	0x4021abc558644524              # double 8.83549
	.quad	0x3febce160d887ebf              # double 0.86890699999999998
	.quad	0x401886b1e5c0b999              # double 6.1315379999999999
	.quad	0x401453fcc9ea9a3d              # double 5.0820189999999998
	.quad	0x40207cde19fc2a88              # double 8.2438819999999993
	.quad	0x3fea82730c671690              # double 0.82842400000000005
	.quad	0x401a90ba1f4b1ee2              # double 6.6413349999999998
	.quad	0x402275faebc408d9              # double 9.2304300000000001
	.quad	0x40114c79f666234b              # double 4.3246840000000004
	.quad	0x4022f785510d38ce              # double 9.4834390000000006
	.quad	0x3ff519f4d37c1377              # double 1.318837
	.quad	0x3ff17d2849cb252d              # double 1.093056
	.quad	0x4022c3a450acc0be              # double 9.3821130000000004
	.quad	0x40230d1aa821f299              # double 9.5255939999999998
	.quad	0x4020f7ab96f21f6d              # double 8.4837310000000006
	.quad	0x3ff82a92e62131a9              # double 1.510394
	.quad	0x40056a25d8d79d0a              # double 2.6768299999999998
	.quad	0x40000010c6f7a0b6              # double 2.000032
	.quad	0x401a8671ac14c661              # double 6.6312930000000003
	.quad	0x3ffdcc942d490e67              # double 1.862446
	.quad	0x3ff2a5f633ce63a6              # double 1.1655180000000001
	.quad	0x4021315336deb95e              # double 8.5963379999999994
	.quad	0x3fc945bf26f1dc51              # double 0.19744100000000001
	.quad	0x3fe4475c4a83b1d1              # double 0.63371100000000002
	.quad	0x40123d794a6eb91b              # double 4.5600329999999998
	.quad	0x401f73760bf5d788              # double 7.8627549999999999
	.quad	0x4015eab21815a07b              # double 5.4791949999999998
	.quad	0x40019c393682730c              # double 2.2012809999999998
	.quad	0x400cfc8f32378ab1              # double 3.6233200000000001
	.quad	0x401df329802c0a4a              # double 7.487463
	.quad	0x4016ea8650e77920              # double 5.7290279999999996
	.quad	0x401c3fd82773e250              # double 7.0623480000000001
	.quad	0x401cc9ae4f3343fa              # double 7.1969539999999999
	.quad	0x3fe5af5989df1173              # double 0.67765500000000001
	.quad	0x401b7933e35c5b4b              # double 6.8683620000000003
	.quad	0x3ffb9a7f3cf70154              # double 1.7252190000000001
	.quad	0x400676a37ac3eb7d              # double 2.8079290000000001
	.quad	0x401e14f3ba775fb3              # double 7.520461
	.quad	0x4023c23b9ae0c176              # double 9.8793609999999994
	.quad	0x3fd1faeff5c6c11a              # double 0.280941
	.quad	0x401a9b8cfbfc6541              # double 6.6519050000000002
	.quad	0x400d946801711948              # double 3.6974640000000001
	.quad	0x4021e5df6555c52e              # double 8.9489699999999992
	.quad	0x4020ae37585be1a8              # double 8.3402659999999997
	.quad	0x3ff3ace358298cc1              # double 1.2297089999999999
	.quad	0x40238bc297bfa4c6              # double 9.7729689999999998
	.quad	0x4009a8a82a5614e0              # double 3.2073520000000002
	.quad	0x4015ccb1897a67a5              # double 5.4498959999999999
	.quad	0x400e09aed56b0100              # double 3.7547280000000001
	.quad	0x3ff67a7a85015c21              # double 1.4049020000000001
	.quad	0x4000725bb7b6bb13              # double 2.0558390000000002
	.quad	0x40220305532617c2              # double 9.0059000000000005
	.quad	0x400cb729b280f12c              # double 3.5894349999999999
	.quad	0x4018e40fa9c12f0a              # double 6.2227160000000001
	.quad	0x4004b4d37c1376d5              # double 2.5882939999999999
	.quad	0x3fdd11409a240315              # double 0.45417800000000003
	.quad	0x40215970f7b9e061              # double 8.67469
	.quad	0x40215f1c3265adda              # double 8.6857620000000004
	.quad	0x4020259dba908a26              # double 8.0734689999999993
	.quad	0x4022c37521144cbe              # double 9.3817529999999998
	.quad	0x40092b86b15f88fd              # double 3.1462530000000002
	.quad	0x3ffc157ff9b56324              # double 1.7552490000000001
	.quad	0x401f1e807bbb6241              # double 7.7797869999999997
	.quad	0x40238ace24bba12b              # double 9.7711039999999993
	.quad	0x40206f40a2877ee5              # double 8.2172900000000002
	.quad	0x3ff6f61cbccf28c8              # double 1.4350860000000001
	.quad	0x3fa8bf1a5ca29846              # double 0.048333000000000001
	.quad	0x401128eeae9ee45c              # double 4.2899729999999998
	.quad	0x3ffa544dca8e2e2c              # double 1.6455820000000001
	.quad	0x402087403dddb121              # double 8.2641620000000007
	.quad	0x4021b2541d8e8640              # double 8.8482979999999998
	.quad	0x40232f2de43ed95a              # double 9.5921470000000006
	.quad	0x3fa4a9cdc443914f              # double 0.040357999999999998
	.quad	0x40105ea209aaa3ad              # double 4.0924149999999999
	.quad	0x400c2c39ffd60e95              # double 3.521595
	.quad	0x40126836eb4e9814              # double 4.6017720000000004
	.quad	0x40210ee136e71cda              # double 8.5290619999999997
	.quad	0x4021cc4bd33d2956              # double 8.8990159999999996
	.quad	0x401687f62b6ae7d5              # double 5.6327749999999996
	.quad	0x4018fcd8127b2cc7              # double 6.246918
	.quad	0x4020478726d04e62              # double 8.1397030000000008
	.quad	0x4015f851a8694035              # double 5.4924989999999996
	.quad	0x40061cf7878b7a1c              # double 2.7641439999999999
	.quad	0x400826d3f9e7b80b              # double 3.0189590000000002
	.quad	0x40178496aad1d042              # double 5.8794810000000002
	.quad	0x400d94c1a8ac5c14              # double 3.697635
	.quad	0x400bca9e6eeb7026              # double 3.473935
	.quad	0x401f9b1c0010c6f8              # double 7.9014740000000003
	.quad	0x40146a832b990afe              # double 5.1040159999999997
	.quad	0x4007dbd2fa0d77b8              # double 2.9823360000000001
	.quad	0x401709ce8d972cd8              # double 5.7595770000000002
	.quad	0x401066c93a711516              # double 4.1003769999999999
	.quad	0x4020f2d46f587d70              # double 8.4742770000000007
	.quad	0x4013a9e7fb267c6c              # double 4.9159240000000004
	.quad	0x401b7d084e831ad2              # double 6.8721019999999999
	.quad	0x3fefa2749f0e4da1              # double 0.98858100000000004
	.quad	0x4017424aada33bda              # double 5.8147380000000002
	.quad	0x40227f609dcf8940              # double 9.2487840000000005
	.quad	0x4020a44b4d056c51              # double 8.3208870000000008
	.quad	0x4015a77e5eaab042              # double 5.4135679999999997
	.quad	0x4001c0e5a35d67ba              # double 2.2191879999999999
	.quad	0x4021e816f0068db9              # double 8.9533000000000005
	.quad	0x40064e39b456b442              # double 2.7881960000000001
	.quad	0x3fc2f73c0c1fc8f3              # double 0.14817
	.quad	0x401d5c5c5718eb89              # double 7.3401959999999997
	.quad	0x401ec0e5a35d67ba              # double 7.6883759999999999
	.quad	0x401e39c38b04ab60              # double 7.5564099999999996
	.quad	0x400a38a548238540              # double 3.2776589999999999
	.quad	0x4019f92bc2fc6973              # double 6.4933310000000004
	.quad	0x4020e5a964e8b7e5              # double 8.4485580000000002
	.quad	0x401479bed30f062d              # double 5.1188919999999998
	.quad	0x4012ba1405708249              # double 4.6817169999999999
	.quad	0x3ffc8a2b9d3cbc49              # double 1.783733
	.quad	0x40130c864883fd50              # double 4.7622309999999999
	.quad	0x40239f082491afc0              # double 9.8106089999999994
	.quad	0x401539f16b11c6d2              # double 5.3065850000000001
	.quad	0x3fdd1b64e054690e              # double 0.45479700000000001
	.quad	0x4020bbc64345cfee              # double 8.3667470000000002
	.quad	0x400f592428d434a0              # double 3.918526
	.quad	0x40170d46b26bf877              # double 5.7629650000000003
	.quad	0x401cfc28f5c28f5c              # double 7.2462499999999999
	.quad	0x400e36030c23fab1              # double 3.776373
	.quad	0x3f617939a7c17a89              # double 0.0021329999999999999
	.quad	0x4020e4521dda059a              # double 8.4459389999999992
	.quad	0x4013dea854477ff1              # double 4.9674389999999997
	.quad	0x400b3ea3df6db941              # double 3.405586
	.quad	0x4022b5e56cd6c2f0              # double 9.3552660000000003
	.quad	0x40180c98a222d517              # double 6.0123009999999999
	.quad	0x401a8e48626f60e1              # double 6.6389480000000001
	.quad	0x3fdefd0d0678c005              # double 0.48419499999999999
	.quad	0x4022cee392e1ef74              # double 9.4040800000000004
	.quad	0x40239fd4e09784ec              # double 9.8121709999999993
	.quad	0x40239ca83b1d0c80              # double 9.8059709999999995
	.quad	0x4015421f2990f302              # double 5.3145720000000001
	.quad	0x3ff02e5eedcc20d5              # double 1.0113209999999999
	.quad	0x4012c9085f4a1273              # double 4.6963210000000002
	.quad	0x3ff29fb71fbc5dea              # double 1.1639930000000001
	.quad	0x4016b538ef34d6a1              # double 5.6769749999999997
	.quad	0x4008498eda22f6a5              # double 3.035917
	.quad	0x3ff77c47e49b1fac              # double 1.4678420000000001
	.quad	0x40130ccccccccccd              # double 4.7625000000000002
	.quad	0x400c410cf5b1c865              # double 3.5317630000000002
	.quad	0x3fff59eb6390c910              # double 1.9594529999999999
	.quad	0x401f7cbff47735c2              # double 7.8718260000000004
	.quad	0x3ff850a99b6f5caf              # double 1.519693
	.quad	0x4003402c0a4a05de              # double 2.4063340000000002
	.quad	0x400037891e215337              # double 2.0271170000000001
	.quad	0x4014a58b827fa1a1              # double 5.1616650000000002
	.quad	0x401452702a3486f0              # double 5.0805059999999997
	.quad	0x401d2ef672b88440              # double 7.2958619999999996
	.quad	0x40050333764f11b6              # double 2.626563
	.quad	0x3fff2102795703f3              # double 1.945559
	.quad	0x4020d880f98fa377              # double 8.4228590000000008
	.quad	0x4003b000431bde83              # double 2.4609380000000001
	.quad	0x40014c122749f0e5              # double 2.1621440000000001
	.quad	0x40159ef6b5d462c3              # double 5.4052379999999998
	.quad	0x401a9b3d8e000863              # double 6.6516019999999996
	.quad	0x401c910667f90d9d              # double 7.1416259999999996
	.quad	0x401db2bcb5fe542e              # double 7.4245479999999997
	.quad	0x4015f9bd4067cf1c              # double 5.4938859999999998
	.quad	0x4009587724fa8b4c              # double 3.168196
	.quad	0x40231527e5215769              # double 9.5413200000000006
	.quad	0x4017f9f1f14983d8              # double 5.9940870000000004
	.quad	0x400d4f54d1e96c40              # double 3.6637360000000001
	.quad	0x3fee2012599ed7c7              # double 0.941415
	.quad	0x401e478183f91e64              # double 7.5698299999999996
	.quad	0x3fe3c8cf7caa758a              # double 0.61826300000000001
	.quad	0x40208efa1e3eaf68              # double 8.2792519999999996
	.quad	0x401c895af294dd72              # double 7.1341359999999998
	.quad	0x4010e1c9f72f76e6              # double 4.2204969999999999
	.quad	0x3fe474fd6d7e889c              # double 0.63928099999999999
	.quad	0x40167e69270b06c4              # double 5.6234479999999998
	.quad	0x401293d4f15e7c8d              # double 4.6443669999999999
	.quad	0x4022f0620ab71327              # double 9.4694979999999997
	.quad	0x3fd6906466b1e5c1              # double 0.35256300000000002
	.quad	0x3fb337a80cf9e386              # double 0.075067999999999996
	.quad	0x400203d816aceaaf              # double 2.2518769999999999
	.quad	0x401f13382e44b6e9              # double 7.7687689999999998
	.quad	0x400298372e6a7696              # double 2.3243239999999998
	.quad	0x40178cbc48f10a9a              # double 5.8874370000000003
	.quad	0x4020faaf78feef5f              # double 8.4896200000000004
	.quad	0x401e53e1c9b41398              # double 7.5819159999999996
	.quad	0x3ffc240746455eaf              # double 1.758796
	.quad	0x4006f720c8cd63cc              # double 2.8706680000000002
	.quad	0x4008e9afe1da7b0b              # double 3.1141049999999999
	.quad	0x4015aae9ee45c359              # double 5.4169080000000003
	.quad	0x4018892684cf073a              # double 6.1339360000000003
	.quad	0x4010980cb6c7a7ca              # double 4.1484860000000001
	.quad	0x3fe998201cd5f99c              # double 0.79981999999999997
	.quad	0x400340b5675579af              # double 2.406596
	.quad	0x4022a6672fba01ef              # double 9.3250060000000001
	.quad	0x402263f20a73f749              # double 9.1952060000000007
	.quad	0x40165a58b3f63c32              # double 5.5882290000000001
	.quad	0x40198085f4a1272d              # double 6.3755110000000004
	.quad	0x401315d80e496edf              # double 4.7713320000000001
	.quad	0x4010523897204296              # double 4.0802940000000003
	.quad	0x4014777a2cecc815              # double 5.1166770000000001
	.quad	0x40189711d798d8a9              # double 6.1475289999999996
	.quad	0x4021708f648c7193              # double 8.7198440000000002
	.quad	0x4006f653c9abb01d              # double 2.8702770000000002
	.quad	0x400972da98676a72              # double 3.1810809999999998
	.quad	0x40078117720c8cd6              # double 2.9380329999999999
	.quad	0x3fec942b302f72b4              # double 0.89308699999999996
	.quad	0x4023372367e414e8              # double 9.6076920000000001
	.quad	0x3ff4af62f9ca5bd9              # double 1.2928189999999999
	.quad	0x3fff284ad794a6ec              # double 1.9473370000000001
	.quad	0x3fff13e920c069e8              # double 1.942361
	.quad	0x4016d7c6fbd273d6              # double 5.7107200000000002
	.quad	0x400fc0010c6f7a0b              # double 3.9687519999999998
	.quad	0x40147394b7b28955              # double 5.1128720000000003
	.quad	0x4022d86d938151a4              # double 9.4227109999999996
	.quad	0x402391971c10d7bf              # double 9.7843560000000007
	.quad	0x400965cfede97d07              # double 3.1747130000000001
	.quad	0x40229565e4606749              # double 9.2917930000000002
	.quad	0x401414cbe1eb4203              # double 5.0203090000000001
	.quad	0x401fc36f7e3d1cc1              # double 7.9408549999999999
	.quad	0x3fe2dab9f559b3d0              # double 0.58919999999999995
	.quad	0x4011a413122b7baf              # double 4.4102290000000002
	.quad	0x40062a43bb40b34e              # double 2.7706369999999998
	.quad	0x40000ad9ad85dfa8              # double 2.0052979999999998
	.quad	0x3fdf5b8561d4306e              # double 0.48996099999999998
	.quad	0x401c55fd04a2fcf0              # double 7.0839730000000003
	.quad	0x4011ae2e6ea85447              # double 4.4200989999999996
	.quad	0x3fff53ec460ed80a              # double 1.957989
	.quad	0x4017ebc1acde19fc              # double 5.9802309999999999
	.quad	0x4011b54f7a919696              # double 4.4270610000000001
	.quad	0x401416c61522a6f4              # double 5.02224
	.quad	0x4006b912556d19df              # double 2.8403670000000001
	.quad	0x40096979e16d6dc2              # double 3.1765020000000002
	.quad	0x401fe05425f20210              # double 7.9690709999999996
	.quad	0x4011fff4ba51a006              # double 4.4999570000000002
	.quad	0x401f3ddebd9018e7              # double 7.8104199999999996
	.quad	0x40121b899392189c              # double 4.5268920000000001
	.quad	0x3ffe28dc981beb18              # double 1.884976
	.quad	0x4015ed041cc532a5              # double 5.4814610000000004
	.quad	0x40209fc9de050375              # double 8.312087
	.quad	0x400aba1c25d07421              # double 3.3408739999999999
	.quad	0x4001d1fd5885d313              # double 2.2275339999999999
	.quad	0x400c478e1932d6ed              # double 3.5349390000000001
	.quad	0x402291d96e9bbf0e              # double 9.2848620000000004
	.quad	0x40024185058dde7a              # double 2.2819919999999998
	.quad	0x40120d0917d6b65b              # double 4.5127300000000004
	.quad	0x4014fadf71eafee7              # double 5.244993
	.quad	0x401f81fe64f54d1f              # double 7.8769470000000003
	.quad	0x4012c1f46ed245b3              # double 4.6894090000000004
	.quad	0x4021fe7e62dc6e2b              # double 8.9970580000000009
	.quad	0x4010ffddebd9018e              # double 4.2498699999999996
	.quad	0x402096d6777079e6              # double 8.2946050000000007
	.quad	0x40218a8c586876e2              # double 8.7706020000000002
	.quad	0x4007d5d462c343b7              # double 2.979409
	.quad	0x40185c896dd26b72              # double 6.0903679999999998
	.quad	0x4009090ff9724745              # double 3.1294249999999999
	.quad	0x40107a6b0d9513f9              # double 4.1195490000000001
	.quad	0x40230414e7ee9143              # double 9.5079720000000005
	.quad	0x4004229f16b11c6d              # double 2.5169049999999999
	.quad	0x3fe7f1fff79c8430              # double 0.74829100000000004
	.quad	0x4017246e4c0df58c              # double 5.785577
	.quad	0x40213468cac4b4d0              # double 8.6023619999999994
	.quad	0x400eef61ed5ae1ce              # double 3.866886
	.quad	0x401ad1a60d4562e1              # double 6.7047350000000003
	.quad	0x4017a838c111ada7              # double 5.9142789999999996
	.quad	0x3ffca4e054690de1              # double 1.7902530000000001
	.quad	0x401918d8ec95bff0              # double 6.2742649999999998
	.quad	0x40130ce032db1e9f              # double 4.7625739999999999
	.quad	0x40230d616f86a099              # double 9.5261340000000007
	.quad	0x4019fb4784230fd0              # double 6.4953900000000004
	.quad	0x3ff4aaef2c732592              # double 1.2917320000000001
	.quad	0x3f9a7221858bc59c              # double 0.025826000000000002
	.quad	0x4009799cbee807bc              # double 3.1843810000000001
	.quad	0x4018ef5019f3c70d              # double 6.2337040000000004
	.quad	0x401514e3bcd35a86              # double 5.2704000000000004
	.quad	0x40084cec41dd1a22              # double 3.03756
	.quad	0x40041700cd855971              # double 2.5112320000000001
	.quad	0x40207ccee5abc0e4              # double 8.2437660000000008
	.quad	0x3ffdfb9ae0c17657              # double 1.8739269999999999
	.quad	0x40217ec332f01755              # double 8.7475830000000006
	.quad	0x3ffb53f290abb44e              # double 1.7079949999999999
	.quad	0x40070d21bc126a66              # double 2.8814120000000001
	.quad	0x401a9cb5350092cd              # double 6.653035
	.quad	0x401d3dbad3a604e2              # double 7.3102830000000001
	.quad	0x3ffd9601ffb480a6              # double 1.8491230000000001
	.quad	0x40007ba1b1960fa1              # double 2.0603669999999998
	.quad	0x3fe7b61bb05faebc              # double 0.74097999999999997
	.quad	0x401e9cd855970b4a              # double 7.6531690000000001
	.quad	0x400da47ecfe9b7bf              # double 3.7053199999999999
	.quad	0x4000985ad538ac19              # double 2.074392
	.quad	0x3fc8e160d887ebf2              # double 0.194378
	.quad	0x3fff5056c508b32d              # double 1.957114
	.quad	0x3fe2975afaf85943              # double 0.58097600000000005
	.quad	0x401c06534373f317              # double 7.0061770000000001
	.quad	0x3ff5931769a91106              # double 1.348411
	.quad	0x4003acca2db61bb0              # double 2.4593699999999998
	.quad	0x400ddc49774256bd              # double 3.7325620000000002
	.quad	0x401b6361dc93ea2d              # double 6.8470529999999998
	.quad	0x401be8a222d5171e              # double 6.9771809999999999
	.quad	0x40053816aceaaf36              # double 2.6523870000000001
	.quad	0x3fd96e978d4fdf3b              # double 0.39737499999999998
	.quad	0x4011373471f79421              # double 4.3039110000000003
	.quad	0x4004b5e2046c764b              # double 2.5888100000000001
	.quad	0x40149ca42aed1394              # double 5.1529699999999998
	.quad	0x40045e43675ddd2b              # double 2.546027
	.quad	0x4020a9919ac79703              # double 8.3311890000000002
	.quad	0x4015a1a437824d4d              # double 5.4078530000000002
	.quad	0x40230e90ff972474              # double 9.5284499999999994
	.quad	0x3ff87d933e35c5b5              # double 1.5306580000000001
	.quad	0x401168b5cbff4773              # double 4.3522559999999997
	.quad	0x40210cd834091c08              # double 8.5250869999999992
	.quad	0x4023c644523f67f5              # double 9.8872400000000002
	.quad	0x401e7052934acaff              # double 7.6096899999999996
	.quad	0x4021943b927d45a6              # double 8.789517
	.quad	0x401b085b5b70691f              # double 6.7581610000000003
	.quad	0x3fb16d7e889c1b54              # double 0.068076999999999999
	.quad	0x4010b16b11c6d1e1              # double 4.17326
	.quad	0x400b4f544bb1af3a              # double 3.413735
	.quad	0x40199b9b23dd54da              # double 6.4019589999999997
	.quad	0x3fe4e3476295208e              # double 0.65274399999999999
	.quad	0x3fced844d013a92a              # double 0.24097499999999999
	.quad	0x3ff993f39d1b2e5a              # double 1.5986210000000001
	.quad	0x400b6bf9830e3cda              # double 3.4277220000000002
	.quad	0x4016e29dc725c3df              # double 5.7213050000000001
	.quad	0x3fd9e7c06e19b90f              # double 0.40477000000000002
	.quad	0x4006c3aa79bbadc1              # double 2.8455400000000002
	.quad	0x400306e978d4fdf4              # double 2.3783750000000001
	.quad	0x401158537e2c55c9              # double 4.3362559999999997
	.quad	0x401c7569f4906035              # double 7.114662
	.quad	0x401a4d44567125dd              # double 6.575456
	.quad	0x401eb8b6d86ec17f              # double 7.6803850000000002
	.quad	0x4018ebb23571d1d4              # double 6.2301719999999996
	.quad	0x400f5fe32a0663c7              # double 3.9218199999999999
	.quad	0x401311a9b8cb8e08              # double 4.7672489999999996
	.quad	0x3ffe6e02a77a2ced              # double 1.901858
	.quad	0x4022fdd074213a0c              # double 9.4957309999999992
	.quad	0x4021db2ce89656ef              # double 8.928077
	.quad	0x3fdd5f6ba0620ab7              # double 0.458949
	.quad	0x4023db05faebc409              # double 9.9277800000000002
	.quad	0x40233ab606b7aa26              # double 9.6146700000000003
	.quad	0x401afd8409e55c10              # double 6.7475740000000002
	.quad	0x4010404ea4a8c155              # double 4.0628000000000002
	.quad	0x40236f9fec99f1ae              # double 9.7180169999999997
	.quad	0x40222da3a08398a6              # double 9.0891389999999994
	.quad	0x40107e2867275686              # double 4.1232009999999999
	.quad	0x4012b0f733a8a3f9              # double 4.6728180000000004
	.quad	0x40006e1b4bb5e0f8              # double 2.053763
	.quad	0x3fff52135daad602              # double 1.957538
	.quad	0x400e8c4d65e46067              # double 3.8185069999999999
	.quad	0x3ffae47cb70ac3a8              # double 1.6807829999999999
	.quad	0x401f675818c5c9a3              # double 7.8509219999999997
	.quad	0x401d58c1db0142f6              # double 7.3366769999999999
	.quad	0x4016227e0ef99807              # double 5.533684
	.quad	0x401d78b9fdbd2fa1              # double 7.3678970000000001
	.quad	0x402100eb24a6a876              # double 8.5017940000000003
	.quad	0x4009a7f6f4be835e              # double 3.207014
	.quad	0x3fe934f1e4b44a1f              # double 0.787713
	.quad	0x401b3233df2a9d62              # double 6.7990259999999996
	.quad	0x400390c77dd872f3              # double 2.4456929999999999
	.quad	0x4014cdfe32a0663c              # double 5.2011649999999996
	.quad	0x4022094b167ec786              # double 9.0181509999999996
	.quad	0x4019623d0bfa0946              # double 6.345936
	.quad	0x3ffeec493426783a              # double 1.932687
	.quad	0x401357589efd86a9              # double 4.835299
	.quad	0x401c115ebfa8f7db              # double 7.0169629999999996
	.quad	0x40042e0eb67c2870              # double 2.5224890000000002
	.quad	0x401c26b09635610b              # double 7.0377830000000001
	.quad	0x4020acb252ce032e              # double 8.3372980000000005
	.quad	0x40221f266ba493c9              # double 9.0608400000000007
	.quad	0x40133564f97edc7f              # double 4.8021430000000001
	.quad	0x4022bdefa615a8df              # double 9.3709690000000005
	.quad	0x400cf0f3882278d1              # double 3.6176520000000001
	.quad	0x3feca5892684cf07              # double 0.89520699999999997
	.quad	0x3fe368709741d085              # double 0.60649900000000001
	.quad	0x40156c804102ff8f              # double 5.3559580000000002
	.quad	0x4018f9e6256366d8              # double 6.2440420000000003
	.quad	0x3fc49d51b4fe79ee              # double 0.161051
	.quad	0x40233bab430f4949              # double 9.6165409999999997
	.quad	0x4001cd86ec17ebaf              # double 2.225355
	.quad	0x3fdad7c6fbd273d6              # double 0.41942000000000002
	.quad	0x401f96d0917d6b66              # double 7.8972800000000003
	.quad	0x40233fe4de3b8a1a              # double 9.6247930000000004
	.quad	0x40239c297bfa4c62              # double 9.8050040000000003
	.quad	0x40172c42e9899bf6              # double 5.7932240000000004
	.quad	0x4015d39eadd590c1              # double 5.4566600000000003
	.quad	0x4023055eaee2003b              # double 9.5104880000000004
	.quad	0x4021ce89a88ace25              # double 8.9033940000000005
	.quad	0x4022efd1351159c5              # double 9.4683930000000007
	.quad	0x402330bb4d48882f              # double 9.5951789999999999
	.quad	0x401a092428d434a0              # double 6.5089269999999999
	.quad	0x400856aa4b9884c7              # double 3.0423170000000002
	.quad	0x402156e5471715c6              # double 8.6697179999999996
	.quad	0x3fd5d4d834091c08              # double 0.34111599999999997
	.quad	0x4022c8a41a261bf3              # double 9.3918769999999991
	.quad	0x4003f6d655e28aa4              # double 2.4955259999999999
	.quad	0x40127625204af923              # double 4.6153760000000004
	.quad	0x4020497dd00f776c              # double 8.1435379999999994
	.quad	0x3fecfc49fd7a13c2              # double 0.90579699999999996
	.quad	0x4016545dc8323359              # double 5.582389
	.quad	0x40218d10b1feeb2d              # double 8.7755179999999999
	.quad	0x4009a69057d1782d              # double 3.2063299999999999
	.quad	0x401177a52ac753e7              # double 4.366841
	.quad	0x4020162131a8ef78              # double 8.0432220000000001
	.quad	0x3fdfaf533f42352f              # double 0.49507600000000002
	.quad	0x4019a4e054690de1              # double 6.4110120000000004
	.quad	0x40200396073de1e3              # double 8.0070040000000002
	.quad	0x40207171c10d7bea              # double 8.2215710000000009
	.quad	0x402307080303c07f              # double 9.5137330000000002
	.quad	0x401fed8a979e16d7              # double 7.9819740000000001
	.quad	0x4006978feef5ec81              # double 2.8240050000000001
	.quad	0x4023b60a41a261bf              # double 9.8555469999999996
	.quad	0x3ff72e9468017119              # double 1.4488719999999999
	.quad	0x4013c37154003255              # double 4.9408620000000001
	.quad	0x4021454fbdad7519              # double 8.6353740000000005
	.quad	0x40218272862f598a              # double 8.7547800000000002
	.quad	0x3ff4abdb1a6d6990              # double 1.291957
	.quad	0x3fe0e9d94d0dcfcc              # double 0.52854599999999996
	.quad	0x3fcd166e008e9b39              # double 0.227247
	.quad	0x4015974299d883ba              # double 5.3977149999999998
	.quad	0x3fd54295a6c5d207              # double 0.33218900000000001
	.quad	0x4011ead7518b0d0f              # double 4.4793370000000001
	.quad	0x401f892d1287c201              # double 7.8839610000000002
	.quad	0x3ffaabb7739f340d              # double 1.6669229999999999
	.quad	0x3fff303d145d8516              # double 1.9492769999999999
	.quad	0x402319f6ec5b078e              # double 9.5507120000000008
	.quad	0x4015d5dd4c76d118              # double 5.4588520000000003
	.quad	0x3fe4ee17a02fb5d0              # double 0.65406399999999998
	.quad	0x40210e8e3ef28416              # double 8.5284289999999991
	.quad	0x3ff222a80064a9ce              # double 1.1334610000000001
	.quad	0x4022a977ea1c68ec              # double 9.3309929999999994
	.quad	0x3fee990d173fb7a6              # double 0.95618300000000001
	.quad	0x4022adc5d6388659              # double 9.3393999999999995
	.quad	0x40179b9baa1511e0              # double 5.901961
	.quad	0x401da8afc47e49b2              # double 7.414733
	.quad	0x3ffdec1f42bb6673              # double 1.870147
	.quad	0x4017add0d8cb07d1              # double 5.9197420000000003
	.quad	0x401b079aae6c8f75              # double 6.7574259999999997
	.quad	0x401ab985ad538ac2              # double 6.6811740000000004
	.quad	0x401221ae2da554b9              # double 4.5328910000000002
	.quad	0x40210ea033e78e19              # double 8.5285659999999996
	.quad	0x401616f7a0b5ed8d              # double 5.5224289999999998
	.quad	0x400d72474538ef35              # double 3.6808000000000001
	.quad	0x3ff081c92ddbdb5e              # double 1.0316860000000001
	.quad	0x400ee4007570c565              # double 3.861329
	.quad	0x4020cd40895d0b74              # double 8.4008830000000003
	.quad	0x3fd331f46ed245b3              # double 0.29992400000000002
	.quad	0x401d681e4712e408              # double 7.3516779999999997
	.quad	0x3fe44aec8d5c7475              # double 0.63414599999999999
	.quad	0x3fe6fffbce4217d3              # double 0.71874800000000005
	.quad	0x4013da52ef911cf3              # double 4.9632069999999997
	.quad	0x4015b3dff3f0fe04              # double 5.4256589999999996
	.quad	0x401eb03d9a95421c              # double 7.67211
	.quad	0x401b2c6c97d8cf3a              # double 6.7933830000000004
	.quad	0x401c4a8b8f14db59              # double 7.0727979999999997
	.quad	0x4014725edd052935              # double 5.1116900000000003
	.quad	0x4010411ba3ca7504              # double 4.0635820000000002
	.quad	0x4021b5ebfa8f7db7              # double 8.8553160000000002
	.quad	0x402034028e4fb97c              # double 8.1015820000000005
	.quad	0x3fdbad42c3c9eecc              # double 0.43245
	.quad	0x3fd7b63d3e4ef028              # double 0.37049799999999999
	.quad	0x40210c3aa79bbadc              # double 8.5238849999999999
	.quad	0x3ff13d1569f49060              # double 1.077413
	.quad	0x4023e5e13b18dac2              # double 9.9489839999999994
	.quad	0x40046dfc5cdd50a9              # double 2.5537040000000002
	.quad	0x3ff6f4a87e38eb03              # double 1.434731
	.quad	0x402091ff2e48e8a7              # double 8.2851499999999998
	.quad	0x4006248d7e02645e              # double 2.7678479999999999
	.quad	0x40231f7121ab4b73              # double 9.5614100000000004
	.quad	0x40207f67903211cb              # double 8.248837
	.quad	0x4021fe514c22ee42              # double 8.9967140000000008
	.quad	0x400038298cc14403              # double 2.0274230000000002
	.quad	0x4017e3f20a73f749              # double 5.9726030000000003
	.quad	0x4001e8787485e3da              # double 2.2385109999999999
	.quad	0x3fdbdeca25529fe0              # double 0.435473
	.quad	0x401e633ebbfd71b0              # double 7.5969189999999998
	.quad	0x401fe25d4a5df224              # double 7.9710590000000003
	.quad	0x4021c02cb20fb225              # double 8.8753410000000006
	.quad	0x4013d81f969e3c97              # double 4.9610580000000004
	.quad	0x4022f7ae3608d089              # double 9.4837509999999998
	.quad	0x3ffd03f811f4f50a              # double 1.813469
	.quad	0x40234f7318fc5048              # double 9.6551749999999998
	.quad	0x4007f4ea8da7f3cf              # double 2.9945879999999998
	.quad	0x401538c5c9a34ca1              # double 5.3054420000000002
	.quad	0x402317e43675ddd3              # double 9.5466630000000005
	.quad	0x40224096787ce960              # double 9.1261480000000006
	.quad	0x401b216e7a311e86              # double 6.782648
	.quad	0x401333608d08919f              # double 4.800173
	.quad	0x4012722d948dc11e              # double 4.6115019999999998
	.quad	0x40206cb09e98dcdb              # double 8.2122849999999996
	.quad	0x401332dc2b0ea183              # double 4.7996679999999996
	.quad	0x4022397d6b65a9a8              # double 9.112285
	.quad	0x3ffac2773e24febd              # double 1.672477
	.quad	0x40236f8d4fdf3b64              # double 9.7178749999999993
	.quad	0x4022c53aa369fcf4              # double 9.3852130000000002
	.quad	0x40226ea3bddfca00              # double 9.2160930000000007
	.quad	0x40218713059641f6              # double 8.7638169999999995
	.quad	0x4022b9129888f862              # double 9.3614700000000006
	.quad	0x401c16e47dc37a3e              # double 7.0223560000000003
	.quad	0x402032a12f901084              # double 8.0988860000000002
	.quad	0x3ff3cc2b51bd61f6              # double 1.2373460000000001
	.quad	0x3ffa43cafb3b7521              # double 1.641551
	.quad	0x40214abf5515054b              # double 8.6459910000000004
	.quad	0x401e68fb00bcbe62              # double 7.6025200000000002
	.quad	0x4021058e219652bd              # double 8.5108499999999996
	.quad	0x4018f7ac3eb7cbb4              # double 6.2418680000000002
	.quad	0x401222a7bd48cb4b              # double 4.5338430000000001
	.quad	0x4023add334c5da6a              # double 9.8395019999999995
	.quad	0x4021a16e158750c2              # double 8.8152930000000005
	.quad	0x3fecb05d95dd4c77              # double 0.89652900000000002
	.quad	0x3fe33302f72b4528              # double 0.59997699999999998
	.quad	0x400bc1ea35935fc4              # double 3.4696850000000001
	.quad	0x401844f2ae07e5a8              # double 6.0673320000000004
	.quad	0x401634f1e4b44a1f              # double 5.551704
	.quad	0x40203faebc408d8f              # double 8.1243800000000004
	.quad	0x401c0cce5f7403de              # double 7.0125060000000001
	.quad	0x3ff7d9b3d07c84b6              # double 1.49065
	.quad	0x402172e18ac9f2fe              # double 8.7243770000000005
	.quad	0x40045f633ce63a5c              # double 2.546576
	.quad	0x4002bc80841ede12              # double 2.3420420000000002
	.quad	0x401f5dad7518b0d1              # double 7.841482
	.quad	0x4011001711947cfa              # double 4.2500879999999999
	.quad	0x40165bf83382e44b              # double 5.5898139999999996
	.quad	0x401bf27136a400fc              # double 6.9867600000000003
	.quad	0x3ffad1244a6223e2              # double 1.6760600000000001
	.quad	0x401802e44b6e935c              # double 6.0028240000000004
	.quad	0x40157d4cfd08d4bb              # double 5.3723640000000001
	.quad	0x4023c4985f06f694              # double 9.8839749999999995
	.quad	0x401f972bcb5fe543              # double 7.897628
	.quad	0x401f9c92ddbdb5d9              # double 7.9029040000000003
	.quad	0x400ac5de9c0229a6              # double 3.346616
	.quad	0x401f5dce39b456b4              # double 7.8416069999999998
	.quad	0x400a4bf5d78811b2              # double 3.2870900000000001
	.quad	0x4019b2bf5515054b              # double 6.4245580000000002
	.quad	0x40146dd441355476              # double 5.1072550000000003
	.quad	0x402121715c63ae25              # double 8.5653179999999995
	.quad	0x401cfb55ac03ff69              # double 7.245444
	.quad	0x401b1984e3ffef39              # double 6.774921
	.quad	0x401fff505d0fa58f              # double 7.9993299999999996
	.quad	0x3fea49b62c77574f              # double 0.82149799999999995
	.quad	0x40224bd9cae21102              # double 9.1481460000000006
	.quad	0x40155f84449dbec2              # double 5.3432779999999998
	.quad	0x4017ab09203a322b              # double 5.917027
	.quad	0x401106876e1deacd              # double 4.2563760000000004
	.quad	0x4013c0bc7b45f17c              # double 4.9382190000000001
	.quad	0x40225a5093964a5a              # double 9.1763960000000004
	.quad	0x3ff7dfe111276fb1              # double 1.4921580000000001
	.quad	0x402090f42fe82518              # double 8.2831130000000002
	.quad	0x3ff045846e8f29d4              # double 1.016972
	.quad	0x40066a6b0d9513f9              # double 2.8019620000000001
	.quad	0x400b48672756861f              # double 3.4103530000000002
	.quad	0x401e83bd5992428d              # double 7.6286519999999997
	.quad	0x401c0e10060780fe              # double 7.0137330000000002
	.quad	0x4008aceaaf35e311              # double 3.0844320000000001
	.quad	0x3fe4bd5bab21815a              # double 0.648115
	.quad	0x4017b2517e77d524              # double 5.9241390000000003
	.quad	0x40109867ad8e4324              # double 4.1488329999999998
	.quad	0x401685a5fc7e6b40              # double 5.6305160000000001
	.quad	0x4014702ababead4f              # double 5.1095379999999997
	.quad	0x40225d052934acb0              # double 9.1816800000000001
	.quad	0x4018da6a012599ed              # double 6.2132949999999996
	.quad	0x40109c100e6afcce              # double 4.1524049999999999
	.quad	0x40223f42352eb5f6              # double 9.1235520000000001
	.quad	0x3fd4fbdad7518b0d              # double 0.327872
	.quad	0x3ffb1de8b3b32053              # double 1.6948019999999999
	.quad	0x40128a012599ed7c              # double 4.6347699999999996
	.quad	0x402319e603d57796              # double 9.5505829999999996
	.quad	0x402249a06a6e32e4              # double 9.1438020000000008
	.quad	0x401104052d666a98              # double 4.2539259999999999
	.quad	0x402398232096787d              # double 9.7971430000000001
	.quad	0x4010925aab474107              # double 4.1429239999999998
	.quad	0x3ff8faa9b499d020              # double 1.5611969999999999
	.quad	0x4005a09fe86833c6              # double 2.70343
	.quad	0x400fd886df82b1f7              # double 3.9807260000000002
	.quad	0x400d324fa8b4bf90              # double 3.6495660000000001
	.quad	0x401283b2dd377e1c              # double 4.6286120000000004
	.quad	0x40226320535c9e67              # double 9.1936060000000008
	.quad	0x401e684a515ce9e6              # double 7.6018460000000001
	.quad	0x3ffea931876188b1              # double 1.916307
	.quad	0x400f804189374bc7              # double 3.9376250000000002
	.quad	0x3fe7b69984a0e411              # double 0.74104000000000003
	.quad	0x400e50b630a91538              # double 3.7894100000000002
	.quad	0x400582bb6672fba0              # double 2.6888339999999999
	.quad	0x400555b0bbf50e34              # double 2.6668409999999998
	.quad	0x40175b5d894812be              # double 5.8392239999999997
	.quad	0x401c8390c9107faa              # double 7.128482
	.quad	0x3fed2eff5c6c11a1              # double 0.91198699999999999
	.quad	0x3ffed6733ebbfd72              # double 1.9273560000000001
	.quad	0x401366b6177ea1c7              # double 4.8503040000000004
	.quad	0x402371a11233df2b              # double 9.7219320000000006
	.quad	0x3ffd6c050bd87b57              # double 1.8388720000000001
	.quad	0x401add30270f3882              # double 6.7160039999999999
	.quad	0x4013a77b395c4220              # double 4.9135559999999998
	.quad	0x40155d477bbf93ff              # double 5.3410929999999999
	.quad	0x401d4da61e0c5a81              # double 7.3258289999999997
	.quad	0x401d82ccb3a2595c              # double 7.3777340000000002
	.quad	0x4019483c6c97d8cf              # double 6.3205429999999998
	.quad	0x4020b79ce8d972cd              # double 8.3586189999999991
	.quad	0x401cca3a08398a65              # double 7.1974869999999997
	.quad	0x40212ce09784ec63              # double 8.5876509999999993
	.quad	0x4001290257c914b1              # double 2.1450239999999998
	.quad	0x3ffe59a52263d817              # double 1.8968860000000001
	.quad	0x401134102ff8ec10              # double 4.3008430000000004
	.quad	0x4014b72c5197a249              # double 5.1788800000000004
	.quad	0x4023dc011d3671ac              # double 9.9296959999999998
	.quad	0x40233c21187e7c07              # double 9.6174400000000002
	.quad	0x40198a8eb463497b              # double 6.3853099999999996
	.quad	0x3fc6745bf26f1dc5              # double 0.175426
	.quad	0x4012f9ad85dfa872              # double 4.7438260000000003
	.quad	0x402059eb851eb852              # double 8.1756250000000001
	.quad	0x4010708b75ea67e8              # double 4.1099069999999998
	.quad	0x3fec50e779207d4e              # double 0.884876
	.quad	0x4004084944ed6fdb              # double 2.5040460000000002
	.quad	0x40152a6a875d56f3              # double 5.2914219999999998
	.quad	0x40119ee30caa326e              # double 4.4051629999999999
	.quad	0x4021c098f605ab3b              # double 8.8761670000000006
	.quad	0x40215fa7a85015c2              # double 8.6868259999999999
	.quad	0x401ce9e01de26916              # double 7.2283939999999998
	.quad	0x4023b2a4766c6de7              # double 9.8489109999999993
	.quad	0x40176db3397dd00f              # double 5.8571289999999996
	.quad	0x400a801c4fc1df33              # double 3.312554
	.quad	0x3ffacc9fb6134ce4              # double 1.674957
	.quad	0x4020d74a771c970f              # double 8.4204899999999991
	.quad	0x3ffd0b9884c6a3be              # double 1.815331
	.quad	0x4022928cdea033e8              # double 9.2862310000000007
	.quad	0x3fedcf00ef1348b2              # double 0.93151899999999999
	.quad	0x402352f512663411              # double 9.6620259999999991
	.quad	0x40111deebb341e15              # double 4.2792310000000002
	.quad	0x3ff92a7ce0fc2eba              # double 1.572873
	.quad	0x4022fcb6a619da9d              # double 9.4935810000000007
	.quad	0x4022c464ba94bbe4              # double 9.3835809999999995
	.quad	0x4014009635610add              # double 5.0005730000000002
	.quad	0x4012fd32830a0b1c              # double 4.7472630000000002
	.quad	0x3ff9a64c2f837b4a              # double 1.6031
	.quad	0x4003aab1d4f9c1f8              # double 2.4583469999999998
	.quad	0x3f8b3bfb58d1526e              # double 0.013298000000000001
	.quad	0x4016290abb44e50c              # double 5.5400799999999997
	.quad	0x401e5830e3cd9a52              # double 7.5861239999999999
	.quad	0x401910d1fa333765              # double 6.2664260000000001
	.quad	0x4014f3f1c75818c6              # double 5.2382270000000002
	.quad	0x401f1e36d22424a2              # double 7.7795059999999996
	.quad	0x40087e707e175d14              # double 3.0617380000000001
	.quad	0x40179a2ad3e920c0              # double 5.9005539999999996
	.quad	0x40075d68c692f6e8              # double 2.9206099999999999
	.quad	0x4007b461b6d43d04              # double 2.9630770000000002
	.quad	0x3feb40ebedfa43fe              # double 0.85167499999999996
	.quad	0x40205a875d56f32c              # double 8.1768140000000002
	.quad	0x4005559791819d24              # double 2.6667930000000002
	.quad	0x4009ebd3c3611340              # double 3.2401499999999999
	.quad	0x400b6e9813879c41              # double 3.429001
	.quad	0x3ff094141e9af5ba              # double 1.036152
	.quad	0x4011a66490a350d3              # double 4.4124930000000004
	.quad	0x4022a98c7e28240b              # double 9.3311499999999992
	.quad	0x401033532e7b3d8e              # double 4.050122
	.quad	0x400fd3e5753a3ec0              # double 3.9784649999999999
	.quad	0x401fcc12f09d8c6d              # double 7.9492909999999996
	.quad	0x401cf69f4906034f              # double 7.2408419999999998
	.quad	0x40090c3760bf5d79              # double 3.1309650000000002
	.quad	0x3fe1e9595feda661              # double 0.55973499999999998
	.quad	0x4015f5c78a6dacac              # double 5.4900190000000002
	.quad	0x401b166772d5e072              # double 6.7718790000000002
	.quad	0x3fccae6c8f755369              # double 0.22407299999999999
	.quad	0x401f5e4abe6a337b              # double 7.8420820000000004
	.quad	0x400ea209aaa3ad19              # double 3.8291200000000001
	.quad	0x3ff7156f32bdc26e              # double 1.442733
	.quad	0x4015bddd2ae8e1d6              # double 5.4354139999999997
	.quad	0x40117c8c5004fb12              # double 4.3716290000000004
	.quad	0x40171ad9274e22a3              # double 5.7762190000000002
	.quad	0x4016c5714b9cb685              # double 5.6928150000000004
	.quad	0x40077dcf893faf42              # double 2.9364309999999998
	.quad	0x3fe7f10667f90d9d              # double 0.74817199999999995
	.quad	0x401686d549731099              # double 5.6316730000000002
	.quad	0x4020ba5e99e94ab2              # double 8.3640030000000003
	.quad	0x401ce2ebe596c82e              # double 7.221603
	.quad	0x3fe9a253111f0c35              # double 0.80106500000000003
	.quad	0x3fe119bd4067cf1c              # double 0.53439199999999998
	.quad	0x400dd6fd21ff2e49              # double 3.729975
	.quad	0x4020021a93293d10              # double 8.0041089999999997
	.quad	0x401485785f8d2e51              # double 5.1303419999999997
	.quad	0x401a6c8b0079a283              # double 6.6059989999999997
	.quad	0x400794aba3875925              # double 2.9475929999999999
	.quad	0x40217787f023e9ea              # double 8.7334589999999999
	.quad	0x3fedea704bc27632              # double 0.93486800000000003
	.quad	0x40227b1422ccb3a2              # double 9.2403879999999994
	.quad	0x4006d7c1376d5497              # double 2.8553489999999999
	.quad	0x4010306c43f5f916              # double 4.047288
	.quad	0x40207afec56d5cfb              # double 8.2402250000000006
	.quad	0x400d6163fdd65a14              # double 3.6725539999999999
	.quad	0x4021cdc443914f48              # double 8.9018879999999996
	.quad	0x400d7994e1a3f466              # double 3.6843659999999998
	.quad	0x401d974aba387592              # double 7.3977459999999997
	.quad	0x4021544d44567126              # double 8.6646520000000002
	.quad	0x3fea3252ce032db2              # double 0.81864300000000001
	.quad	0x402284a8e2e2b8c7              # double 9.2591009999999994
	.quad	0x3fcd50870110a138              # double 0.22902
	.quad	0x4019ec087442c7fc              # double 6.4805010000000003
	.quad	0x3ff14b923a29c77a              # double 1.0809500000000001
	.quad	0x4017029c347e8cce              # double 5.7525490000000001
	.quad	0x3fdc857afea3df6e              # double 0.44564700000000002
	.quad	0x4007669e7fb267c7              # double 2.9251070000000001
	.quad	0x4010b5f6ba0620ab              # double 4.1776989999999996
	.quad	0x3fc3da7b0b391926              # double 0.15510499999999999
	.quad	0x401e9cf7446f9b99              # double 7.6532869999999997
	.quad	0x3ff1bd651b0ccbc0              # double 1.1087389999999999
	.quad	0x401eae2ac3222920              # double 7.6700850000000003
	.quad	0x3fe77e21d96e9bbf              # double 0.73414699999999999
	.quad	0x4017429f9ce8d973              # double 5.8150620000000002
	.quad	0x4023d4842fa50939              # double 9.9150709999999993
	.quad	0x3ff06a68f4b61fe2              # double 1.025979
	.quad	0x4020eeb463497b74              # double 8.4662199999999998
	.quad	0x401f6bf0dc768dfc              # double 7.8554110000000001
	.quad	0x401bb054ef459d99              # double 6.922199
	.quad	0x3fd0e4606748e475              # double 0.26393899999999998
	.quad	0x4014f148344c37e7              # double 5.235627
	.quad	0x400bbc12f09d8c6d              # double 3.4668329999999998
	.quad	0x4014322706d50657              # double 5.0489769999999998
	.quad	0x40215ad6cb535009              # double 8.6774199999999997
	.quad	0x4022f0a808c8259e              # double 9.4700319999999998
	.quad	0x402154f63800218e              # double 8.6659410000000001
	.quad	0x3ff8f252ce032db2              # double 1.559161
	.quad	0x3fd868943e100608              # double 0.38138300000000003
	.quad	0x40193793dd97f62b              # double 6.3042749999999996
	.quad	0x4021f6188b11409a              # double 8.9806559999999998
	.quad	0x4022b97353b4b2fb              # double 9.3622080000000007
	.quad	0x4000c00f345069a5              # double 2.0937790000000001
	.quad	0x401b51044f1a1987              # double 6.8291180000000002
	.quad	0x401d471ef30a4e38              # double 7.3194540000000003
	.quad	0x3ffdd565c2d27807              # double 1.8645989999999999
	.quad	0x401a0d013a92a305              # double 6.5126999999999997
	.quad	0x40017cfc3f811f4f              # double 2.1860279999999999
	.quad	0x40233397785729b3              # double 9.6007650000000008
	.quad	0x3ff3f3df2a9d627c              # double 1.247039
	.quad	0x4013467f0aa21a72              # double 4.8188440000000003
	.quad	0x3fa88ace24bba12b              # double 0.047933999999999997
	.quad	0x401c94df8b157258              # double 7.145384
	.quad	0x400a1826edaa92e6              # double 3.2617929999999999
	.quad	0x4004fad42c3c9eed              # double 2.6224750000000001
	.quad	0x3ff72848beb5b2d5              # double 1.447335
	.quad	0x401b2a4e379b77c0              # double 6.7913139999999999
	.quad	0x4002e07b352a8438              # double 2.35961
	.quad	0x40135d4d4024b33e              # double 4.8411150000000003
	.quad	0x4012035ac8a37260              # double 4.5032759999999996
	.quad	0x3fc30c23fab10ba6              # double 0.148808
	.quad	0x40237439ffd60e95              # double 9.7270050000000001
	.quad	0x40183556084a515d              # double 6.0520860000000001
	.quad	0x4006d4445aa2e3c5              # double 2.8536459999999999
	.quad	0x3febfd21ff2e48e9              # double 0.87465000000000004
	.quad	0x402128f648c7192f              # double 8.5800040000000006
	.quad	0x3fe729da597d49d8              # double 0.72385900000000003
	.quad	0x3ff0375fb2edfe76              # double 1.0135190000000001
	.quad	0x3ff4fc69728a6117              # double 1.3116239999999999
	.quad	0x40210f44d4456712              # double 8.5298219999999993
	.quad	0x401bfacd9e83e426              # double 6.9949250000000003
	.quad	0x401ce7a5f41aef70              # double 7.2262190000000004
	.quad	0x40131ee286727568              # double 4.7801609999999997
	.quad	0x40148c1ce6c093d9              # double 5.1368289999999996
	.quad	0x401394a6223e186a              # double 4.8951650000000004
	.quad	0x401477e996312f4d              # double 5.117102
	.quad	0x3ffa53250b52439a              # double 1.6452990000000001
	.quad	0x40056887229e9079              # double 2.6760389999999998
	.quad	0x40144eff5c6c11a1              # double 5.0771459999999999
	.quad	0x40208defc7a39820              # double 8.2772199999999998
	.quad	0x4019273f316e3715              # double 6.2883269999999998
	.quad	0x3fffbc925785f8d3              # double 1.983538
	.quad	0x401f9e09bb6aa4ba              # double 7.9043340000000004
	.quad	0x400c341b75a74c0a              # double 3.5254430000000001
	.quad	0x3ff0800000000000              # double 1.03125
	.quad	0x3ff6a703afb7e910              # double 1.415775
	.quad	0x401757f27fe4bcae              # double 5.8358860000000004
	.quad	0x4016a2b4528283d3              # double 5.6588909999999997
	.quad	0x401ae97bb7308356              # double 6.7280110000000004
	.quad	0x40190b9bed30f063              # double 6.2613370000000002
	.quad	0x401628fa7a85015c              # double 5.5400179999999999
	.quad	0x40188c3dab5c39bd              # double 6.1369540000000002
	.quad	0x4005c6c226809d49              # double 2.7220499999999999
	.quad	0x40112efdc9c4da90              # double 4.29589
	.quad	0x401ca93ea2d2fe3f              # double 7.1652779999999998
	.quad	0x4004fa5870da5daf              # double 2.622239
	.quad	0x40206e3b256ffc11              # double 8.2152949999999993
	.quad	0x400d5b00bcbe61d0              # double 3.669435
	.quad	0x400150eb24a6a876              # double 2.1645110000000001
	.quad	0x3fdefefbf401c4fc              # double 0.48431299999999999
	.quad	0x3ff394cfd08d4bad              # double 1.2238309999999999
	.quad	0x4007737a80cf9e38              # double 2.9313859999999998
	.quad	0x4007c2aa19439de5              # double 2.9700510000000002
	.quad	0x40141e1ac57e23f2              # double 5.0293989999999997
	.quad	0x4013826d8b1dd5d4              # double 4.8773710000000001
	.quad	0x40228856a37ac3eb              # double 9.2662859999999991
	.quad	0x40154cba30121683              # double 5.324929
	.quad	0x40164e1a8262456f              # double 5.5762729999999996
	.quad	0x3ff82efa1e3eaf68              # double 1.511469
	.quad	0x401dbd65e4606749              # double 7.4349590000000001
	.quad	0x4009e2fcefaa4767              # double 3.2358340000000001
	.quad	0x401af548ecd8dbcf              # double 6.7395360000000002
	.quad	0x400451ae2da554b9              # double 2.5398830000000001
	.quad	0x3ff4827c7c5260f6              # double 1.281857
	.quad	0x3ff2cdf9bdc69f8c              # double 1.175287
	.quad	0x4020b1389b52007e              # double 8.3461350000000003
	.quad	0x3fe4499ae924f228              # double 0.63398500000000002
	.quad	0x4023332f661f18ca              # double 9.599971
	.quad	0x3fff505af6c69b5a              # double 1.9571179999999999
	.quad	0x40014522ea0fd3b3              # double 2.1587580000000002
	.quad	0x400172e8c0485a0c              # double 2.181108
	.quad	0x4018e7eaa2a0a958              # double 6.2264809999999997
	.quad	0x4022720b3d4ae42a              # double 9.2227420000000002
	.quad	0x40205f8290689870              # double 8.1865430000000003
	.quad	0x3ff0c051c9f72f77              # double 1.046953
	.quad	0x4021abd556084a51              # double 8.8356119999999994
	.quad	0x401c3d8e86402081              # double 7.0601139999999996
	.quad	0x3ffaced1bf7ad4b2              # double 1.6754929999999999
	.quad	0x401c64b05b7cfe58              # double 7.0983289999999997
	.quad	0x400d16976bc1effa              # double 3.636031
	.quad	0x400bf2b0a6fc58ac              # double 3.4935010000000002
	.quad	0x400516fb8f57f738              # double 2.6362220000000001
	.quad	0x3ffa7d07c84b5dcc              # double 1.6555249999999999
	.quad	0x401b7b6805a2d730              # double 6.870514
	.quad	0x400ecaf922962cfe              # double 3.8491080000000002
	.quad	0x401f7b1fab96f21f              # double 7.8702379999999996
	.quad	0x40107cb1897a67a5              # double 4.1217709999999999
	.quad	0x401598533b107747              # double 5.3987550000000004
	.quad	0x3ffac4b2b777d0f2              # double 1.673022
	.quad	0x3fe781abd1aa821f              # double 0.73457899999999998
	.quad	0x402103a01eeed890              # double 8.5070809999999994
	.quad	0x402319f623076c05              # double 9.5507059999999999
	.quad	0x3ffee47ecfe9b7bf              # double 1.930785
	.quad	0x402133fdb4cc2507              # double 8.6015449999999998
	.quad	0x401e03ed0f627393              # double 7.5038340000000003
	.quad	0x402251d6adf71eb0              # double 9.1598410000000001
	.quad	0x3ffb4f0e90bc7b46              # double 1.706801
	.quad	0x4013402107b78466              # double 4.8126259999999998
	.quad	0x4008848a58b3f63c              # double 3.0647169999999999
	.quad	0x3f86da87a072d1af              # double 0.011159000000000001
	.quad	0x4018fefdc9c4da90              # double 6.249015
	.quad	0x400271d4738a3b58              # double 2.3055810000000001
	.quad	0x401767a0f9096bba              # double 5.8512000000000004
	.quad	0x402120d9f90539fc              # double 8.5641630000000006
	.quad	0x4019cb851eb851ec              # double 6.4487500000000004
	.quad	0x40123fe4bcad9ad8              # double 4.5623959999999997
	.quad	0x40192f06705c896e              # double 6.2959230000000002
	.quad	0x4010471bcdbbe015              # double 4.0694419999999996
	.quad	0x400b6cbfb15b573f              # double 3.4281000000000001
	.quad	0x401ecebc83a96d4c              # double 7.7018909999999998
	.quad	0x3fcec6de76427c7c              # double 0.24044399999999999
	.quad	0x4013379c842fa509              # double 4.8043079999999998
	.quad	0x401da71865519371              # double 7.4131790000000004
	.quad	0x402332f46aa087ca              # double 9.5995209999999993
	.quad	0x40222262aa19439e              # double 9.0671590000000002
	.quad	0x4015ac14c660a201              # double 5.4180479999999998
	.quad	0x3fd020535c9e6688              # double 0.251973
	.quad	0x4009632f44912989              # double 3.1734300000000002
	.quad	0x4016594a6eb91b3f              # double 5.5871979999999999
	.quad	0x4012e78897e99631              # double 4.7261069999999998
	.quad	0x3ff78f14db59578a              # double 1.472432
	.quad	0x3fcb9ca5bd944aa5              # double 0.21571799999999999
	.quad	0x3ffb899d0203e63f              # double 1.7210970000000001
	.quad	0x400ad4f3fd933e36              # double 3.3539810000000001
	.quad	0x3feb4cdb7ae5796c              # double 0.853132
	.quad	0x4015d6c050bd87b5              # double 5.4597179999999996
	.quad	0x401d10e51d25aab4              # double 7.2664989999999996
	.quad	0x4010768a50507a6c              # double 4.1157620000000001
	.quad	0x4007d819d2391d58              # double 2.980518
	.quad	0x3ffab7c6759ab6d0              # double 1.669867
	.quad	0x400e06eb0b7c3505              # double 3.7533780000000001
	.quad	0x40139a6ce358298d              # double 4.9008060000000002
	.quad	0x4016417b5286b591              # double 5.5639469999999998
	.quad	0x3ff88ac5c13fd0d0              # double 1.5338799999999999
	.quad	0x3fc6c7000431bde8              # double 0.177948
	.quad	0x3ff10a4f440af1cc              # double 1.0650170000000001
	.quad	0x4010fb08dd1e53a8              # double 4.2451509999999999
	.quad	0x401e9f202107b784              # double 7.6553959999999996
	.quad	0x401deb3fa6defc7a              # double 7.4797349999999998
	.quad	0x400a475818c5c9a3              # double 3.2848359999999999
	.quad	0x4022ce75147f1306              # double 9.4032370000000007
	.quad	0x401dc7d06bbdbe3c              # double 7.4451309999999999
	.quad	0x4001d4c016052503              # double 2.228882
	.quad	0x40015e3b03e20cd0              # double 2.171011
	.quad	0x4014936e2eb1c433              # double 5.1439750000000002
	.quad	0x40221ebf01322f27              # double 9.0600509999999996
	.quad	0x4022519029ae4f33              # double 9.1593029999999995
	.quad	0x40213c9de0503750              # double 8.6183920000000001
	.quad	0x40024886162f166e              # double 2.285412
	.quad	0x40122d01c0ca600b              # double 4.543952
	.quad	0x401ceeabbcb1cc96              # double 7.2330769999999998
	.quad	0x400b9b6a1e81cb47              # double 3.4508860000000001
	.quad	0x401f3d44567125dd              # double 7.8098309999999999
	.quad	0x401552413db7f173              # double 5.3303269999999996
	.quad	0x3ffa15b4677b395c              # double 1.6302989999999999
	.quad	0x400623c4b09e98dd              # double 2.7674650000000001
	.quad	0x400e9a49c2c1b110              # double 3.8253360000000001
	.quad	0x3febc8f32378ab0d              # double 0.86828000000000005
	.quad	0x3fa8b9dc2f405f6c              # double 0.048293000000000003
	.quad	0x4017bfecdd0d8cb0              # double 5.9374269999999996
	.quad	0x40217ac7325918a0              # double 8.7398009999999999
	.quad	0x40126d5c74751ce3              # double 4.6067980000000004
	.quad	0x4021dcc89b0ee49f              # double 8.9312179999999994
	.quad	0x402397d75e2046c7              # double 9.7965649999999993
	.quad	0x4020a7d88c1db014              # double 8.3278239999999996
	.quad	0x401fdc4a83b1d0c8              # double 7.9651279999999999
	.quad	0x3fedc3504c48adef              # double 0.93009200000000003
	.quad	0x402085f15a4acf31              # double 8.2616069999999997
	.quad	0x401ced362e903644              # double 7.2316520000000004
	.quad	0x3ffcc33d6c721922              # double 1.797666
	.quad	0x400fbf6ec5b078d9              # double 3.9684729999999999
	.quad	0x3ff039d1b2e59afa              # double 1.014116
	.quad	0x40184181e03f7058              # double 6.0639719999999997
	.quad	0x401640c8cd63cb81              # double 5.5632659999999996
	.quad	0x400cf5ac03ff6901              # double 3.6199569999999999
	.quad	0x4014cdae3e6c4c59              # double 5.2008599999999996
	.quad	0x4022e3cb3e5753a4              # double 9.4449100000000001
	.quad	0x4018f2fe3f359ff5              # double 6.237298
	.quad	0x401e39539b888723              # double 7.5559830000000003
	.quad	0x3ffa25881a1554fc              # double 1.634163
	.quad	0x4020ba8997c3d684              # double 8.3643309999999999
	.quad	0x402203aafff36ac6              # double 9.0071639999999995
	.quad	0x3fe89c2a02320968              # double 0.76906300000000005
	.quad	0x4000fde82d7b634e              # double 2.1239780000000001
	.quad	0x401161c1d6cf850e              # double 4.3454660000000001
	.quad	0x400c33fa6defc7a4              # double 3.5253800000000002
	.quad	0x3ffe0307f23cc8de              # double 1.87574
	.quad	0x3febb165d3996fa8              # double 0.86540499999999998
	.quad	0x402086dd052934ad              # double 8.2634050000000006
	.quad	0x4005a1a2e7f6f4bf              # double 2.7039240000000002
	.quad	0x401f8a012599ed7c              # double 7.8847699999999996
	.quad	0x3fe222036006d0d5              # double 0.56665200000000004
	.quad	0x400d2e2a80064a9d              # double 3.6475420000000001
	.quad	0x4009d9b34a44c7b0              # double 3.2312989999999999
	.quad	0x4020714f69ca9ef5              # double 8.2213089999999998
	.quad	0x40100e5bc87db2b3              # double 4.0140219999999998
	.quad	0x401ce523704790b8              # double 7.2237679999999997
	.quad	0x3fb2f251c193b3a7              # double 0.074010000000000006
	.quad	0x40016c564f97edc8              # double 2.177899
	.quad	0x401f7f32bdc26dce              # double 7.8742169999999998
	.quad	0x401b7574b407032a              # double 6.8647030000000004
	.quad	0x4010a2f0e0a84be4              # double 4.159122
	.quad	0x4004a185058dde7a              # double 2.5788669999999998
	.quad	0x4013d940fecdd0d9              # double 4.9621620000000002
	.quad	0x3fc2de8f6cefed63              # double 0.14741699999999999
	.quad	0x3ff4d46a1a500d5f              # double 1.3018590000000001
	.quad	0x401068a372606fac              # double 4.1021859999999997
	.quad	0x401312f76e6106ab              # double 4.7685219999999999
	.quad	0x3ffd6ee73e681a9c              # double 1.8395760000000001
	.quad	0x401c823571d1d474              # double 7.1271570000000004
	.quad	0x40211fcbf6e3f78c              # double 8.5621030000000004
	.quad	0x400b6876e1deacc9              # double 3.4260079999999999
	.quad	0x4016da6117720c8d              # double 5.7132610000000001
	.quad	0x40222e368f084620              # double 9.0902600000000007
	.quad	0x3fe197e996312f4d              # double 0.549794
	.quad	0x4018f7c1bda5119d              # double 6.2419500000000001
	.quad	0x4012fd81f10667f9              # double 4.747566
	.quad	0x401e19f4906034f4              # double 7.525347
	.quad	0x4011f453d20f2bed              # double 4.4886010000000001
	.quad	0x40043839cd8127b3              # double 2.5274540000000001
	.quad	0x4016643a647fdc59              # double 5.5978789999999998
	.quad	0x40074f1348b22079              # double 2.913611
	.quad	0x4014db54e2b063e0              # double 5.2141909999999996
	.quad	0x3fd89db22d0e5604              # double 0.38462499999999999
	.quad	0x40232b02d59d55e7              # double 9.5840060000000004
	.quad	0x3feaeffe2a3cea6c              # double 0.84179599999999998
	.quad	0x3fd84d8fd5cb7910              # double 0.37973400000000002
	.quad	0x4019f59ee88df373              # double 6.4898639999999999
	.quad	0x4016505f28848388              # double 5.5784880000000001
	.quad	0x402067b97bb73083              # double 8.2025869999999994
	.quad	0x4009457a786c2268              # double 3.158925
	.quad	0x40235b951c5c5719              # double 9.6788720000000001
	.quad	0x401288a936c58eeb              # double 4.6334580000000001
	.quad	0x402366132b55ef20              # double 9.6993650000000002
	.quad	0x3fe4fb634dad31fd              # double 0.65568700000000002
	.quad	0x3fff6e5de15ca6ca              # double 1.964445
	.quad	0x4023e220ddc61954              # double 9.9416569999999993
	.quad	0x4022223cc8de2ac3              # double 9.0668699999999998
	.quad	0x4023caea3161a1dc              # double 9.8963180000000008
	.quad	0x401765fdcdf69878              # double 5.8496009999999998
	.quad	0x40201cf355cd91ef              # double 8.0565440000000006
	.quad	0x400f635dedf1e083              # double 3.9235190000000002
	.quad	0x4015e3c9eecbfb16              # double 5.4724500000000003
	.quad	0x3ff43ea2d2fe3f36              # double 1.2652920000000001
	.quad	0x40236e8f8e7ddca5              # double 9.7159390000000005
	.quad	0x4004f4d7add15f03              # double 2.6195520000000001
	.quad	0x40082ac5c13fd0d0              # double 3.0208849999999998
	.quad	0x3ff03e681a9b8cb9              # double 1.015236
	.quad	0x401f342e12620254              # double 7.8009570000000004
	.quad	0x4005f2ca57a786c2              # double 2.7435499999999999
	.quad	0x401af864cb5bb385              # double 6.742572
	.quad	0x400e5e29307af20f              # double 3.7959770000000002
	.quad	0x3fe86bfa8f7db6e5              # double 0.763181
	.quad	0x40151d9f4d37c137              # double 5.2789279999999996
	.quad	0x3ff562749f0e4da1              # double 1.3365370000000001
	.quad	0x40128d6ece13f4aa              # double 4.6381180000000004
	.quad	0x4002be9ea1405708              # double 2.3430759999999999
	.quad	0x3ff19ee2435696e6              # double 1.1012900000000001
	.quad	0x401a5a4fca42aed1              # double 6.5881949999999998
	.quad	0x40238c3dccea28fe              # double 9.7739089999999997
	.quad	0x3ff7ac8b43958106              # double 1.479625
	.quad	0x4023bbf162ae4b02              # double 9.8670760000000008
	.quad	0x3fe4d87724fa8b4c              # double 0.651424
	.quad	0x4012a567dbb16c1e              # double 4.6615289999999998
	.quad	0x4010b3c792d1287c              # double 4.1755659999999999
	.quad	0x4020065a35d67ba2              # double 8.0124069999999996
	.quad	0x4015e7b395c42203              # double 5.4762709999999997
	.quad	0x40190925fe974a34              # double 6.258934
	.quad	0x400813037d63022e              # double 3.0092840000000001
	.quad	0x400bf3b6cbd987c6              # double 3.4940009999999999
	.quad	0x401641d084e831ad              # double 5.5642719999999999
	.quad	0x401136705c896dd2              # double 4.3031629999999996
	.quad	0x3ff2cc2938de6ddf              # double 1.174844
	.quad	0x401a19d30270f388              # double 6.5252189999999999
	.quad	0x4012c016052502ef              # double 4.6875840000000002
	.quad	0x3ff1873eee525892              # double 1.0955189999999999
	.quad	0x4013ed188f42fe82              # double 4.9815389999999997
	.quad	0x40153ccf6be37de9              # double 5.3093849999999998
	.quad	0x401ad037d63022dd              # double 6.7033379999999996
	.quad	0x401cbd12cadddf44              # double 7.1846420000000002
	.quad	0x40129cd6c2efd439              # double 4.6531630000000002
	.quad	0x401a675cd0bb6ed6              # double 6.6009399999999996
	.quad	0x3fdacfc3f811f4f5              # double 0.418931
	.quad	0x40211a6ce358298d              # double 8.5516120000000004
	.quad	0x401c9afc47e49b20              # double 7.1513530000000003
	.quad	0x4021c0121682f944              # double 8.8751379999999997
	.quad	0x40223ecb31c219eb              # double 9.1226439999999993
	.quad	0x40219c8387df5cf2              # double 8.8056909999999995
	.quad	0x4022568837718655              # double 9.1690079999999998
	.quad	0x401a2aba7b9170d6              # double 6.5417269999999998
	.quad	0x4001256473471f79              # double 2.1432579999999999
	.quad	0x4012f5f633ce63a6              # double 4.7401970000000002
	.quad	0x401d3f8594291750              # double 7.3120329999999996
	.quad	0x400276e264e48627              # double 2.308049
	.quad	0x4000cbe0ded288ce              # double 2.0995499999999998
	.quad	0x4014e49949e8815e              # double 5.2232409999999998
	.quad	0x401fe8e10cf5b1c8              # double 7.9774209999999996
	.quad	0x400cf0d7be9856a3              # double 3.6175989999999998
	.quad	0x401f4c3efae7924b              # double 7.824459
	.quad	0x4004ef62f9ca5bd9              # double 2.6168879999999999
	.quad	0x4010fd1aeb3dd11c              # double 4.2471730000000001
	.quad	0x401a70e560418937              # double 6.6102499999999997
	.quad	0x401b576bc1eff9f8              # double 6.8353719999999996
	.quad	0x400d8aa087ca643d              # double 3.6926890000000001
	.quad	0x401321b9f98b71b9              # double 4.7829360000000003
	.quad	0x3fe14c8ffb8b2639              # double 0.54059599999999997
	.quad	0x400ccc1f42bb6673              # double 3.599669
	.quad	0x40002e17a02fb5d0              # double 2.0225059999999999
	.quad	0x401e20e23af31b15              # double 7.5321129999999998
	.quad	0x40199c22ee41919b              # double 6.4024770000000002
	.quad	0x3fef6049ecb31c22              # double 0.98050400000000004
	.quad	0x40127846e8f29d41              # double 4.6174580000000001
	.quad	0x401e6292817763e5              # double 7.5962620000000002
	.quad	0x401139a027525461              # double 4.3062750000000003
	.quad	0x3feb82ff8ec0f883              # double 0.85974099999999998
	.quad	0x40012f9e3864cb5c              # double 2.1482510000000001
	.quad	0x4012c14b9cb6848c              # double 4.6887650000000001
	.quad	0x40002b4c7f349386              # double 2.0211420000000002
	.quad	0x40211c2a454de7ea              # double 8.5550099999999993
	.quad	0x4020e2b862b27cbf              # double 8.4428129999999992
	.quad	0x3fcb0f49491f2dc3              # double 0.21140400000000001
	.quad	0x3fe6d8969a0ad8a1              # double 0.71393899999999999
	.quad	0x4018fed56b00ffda              # double 6.2488609999999998
	.quad	0x401e4a52ac753e70              # double 7.5725809999999996
	.quad	0x4012b6976bc1effa              # double 4.678312
	.quad	0x4021f6df1e0828c3              # double 8.9821709999999992
	.quad	0x4018c40a2877ee4e              # double 6.1914449999999999
	.quad	0x3fee15faa8a82a56              # double 0.94018299999999999
	.quad	0x40214e40c8472c0e              # double 8.6528379999999991
	.quad	0x401ab854cdb7ae58              # double 6.6800110000000004
	.quad	0x401f7e1975f2cb64              # double 7.8731439999999999
	.quad	0x3ff849331a08bfc2              # double 1.517871
	.quad	0x400759e16d6dc1a4              # double 2.9188869999999998
	.quad	0x400e6a558ea7ce10              # double 3.8019210000000001
	.quad	0x400e4ae429e0a41a              # double 3.7865679999999999
	.quad	0x401a447fdc5931ca              # double 6.5668939999999996
	.quad	0x3ffcbbafd976ff3b              # double 1.795822
	.quad	0x40037038e29f9ce9              # double 2.4297960000000001
	.quad	0x3ffd656eefa1e3eb              # double 1.837264
	.quad	0x401498e2e2b8c75c              # double 5.1493029999999997
	.quad	0x400f776f6d762520              # double 3.9333179999999999
	.quad	0x3fe47559b3d07c85              # double 0.63932500000000003
	.quad	0x400d855d1c3ac92a              # double 3.6901190000000001
	.quad	0x401e56adf71eafee              # double 7.5846479999999996
	.quad	0x3fbbc579f2346562              # double 0.108482
	.quad	0x401ded9a95421c04              # double 7.4820349999999998
	.quad	0x401accaea747d806              # double 6.6998850000000001
	.quad	0x3fe8eb463497b741              # double 0.77871999999999997
	.quad	0x400e5396d0917d6b              # double 3.7908149999999998
	.quad	0x4010967ec7863bef              # double 4.1469680000000002
	.quad	0x4018fe3476295209              # double 6.2482470000000001
	.quad	0x401def1e4b44a1f1              # double 7.4835140000000004
	.quad	0x4002be1eb4202d9d              # double 2.342832
	.quad	0x3fffc404a72ead92              # double 1.9853559999999999
	.quad	0x4023ff28a6117721              # double 9.9983570000000003
	.quad	0x400981248d7e0264              # double 3.1880579999999998
	.quad	0x401fc65ba6efc372              # double 7.9437090000000001
	.quad	0x3fe7f082491afc05              # double 0.74810900000000002
	.quad	0x401d3a237cdcca71              # double 7.3067760000000002
	.quad	0x401c7671ef30a4e3              # double 7.1156689999999996
	.quad	0x402121bc126a65cf              # double 8.5658879999999993
	.quad	0x3fbdc1e7967caea7              # double 0.11624
	.quad	0x40211536501e2585              # double 8.5414300000000001
	.quad	0x4017f2a1b5c7cd8a              # double 5.9869450000000004
	.quad	0x401eeb0fadf2ecf2              # double 7.729552
	.quad	0x400778a43bb40b35              # double 2.933907
	.quad	0x40227eff7dfa00e2              # double 9.2480429999999991
	.quad	0x401ed5058dde7a74              # double 7.7080289999999998
	.quad	0x3fc75714b9cb6849              # double 0.18234500000000001
	.quad	0x40050ededaec4a41              # double 2.6322610000000002
	.quad	0x4008259641f64495              # double 3.0183529999999998
	.quad	0x4022f4102ff8ec10              # double 9.4766860000000008
	.quad	0x401b7973d9ec7000              # double 6.8686059999999998
	.quad	0x4002fa4ce8101f32              # double 2.372217
	.quad	0x401c179314445aa3              # double 7.0230220000000001
	.quad	0x4000fd10b1feeb2d              # double 2.123567
	.quad	0x40230c866a11ec92              # double 9.5244630000000008
	.quad	0x401d021b7e0ac7da              # double 7.2520579999999999
	.quad	0x3ffeb4fa48301a7a              # double 1.919184
	.quad	0x4007b8c197e56473              # double 2.9652129999999999
	.quad	0x40026b841248d7e0              # double 2.3024979999999999
	.quad	0x402216af251c193b              # double 9.0443049999999996
	.quad	0x40154e06d938151a              # double 5.3261979999999998
	.quad	0x40204b04ccee5abc              # double 8.1465209999999999
	.quad	0x401ce054ef459d99              # double 7.219074
	.quad	0x4015294d94078961              # double 5.2903349999999998
	.quad	0x4019e6cb966be7b0              # double 6.4753860000000003
	.quad	0x400f452e72da1230              # double 3.9087800000000001
	.quad	0x4014a99b2c40d0ab              # double 5.1656310000000003
	.quad	0x400dc6887a8d64d8              # double 3.72194
	.quad	0x3ff18fcf80dc3372              # double 1.09761
	.quad	0x4013a780346dc5d6              # double 4.9135749999999998
	.quad	0x400c3e4abe6a337b              # double 3.5304160000000002
	.quad	0x3fd2427418d6909b              # double 0.285306
	.quad	0x4004dbbb62413db8              # double 2.607291
	.quad	0x401d5d10f51ac9b0              # double 7.3408850000000001
	.quad	0x4016b68f8e7ddca5              # double 5.6782820000000003
	.quad	0x4011437d63022dd8              # double 4.3159080000000003
	.quad	0x401a5a39c51dabe2              # double 6.5881109999999996
	.quad	0x40210a1cef240faa              # double 8.5197520000000004
	.quad	0x401342e126202539              # double 4.8153119999999996
	.quad	0x40153c8f32378ab1              # double 5.3091400000000002
	.quad	0x4005dbfc6540cc79              # double 2.732415
	.quad	0x401075cc857f3062              # double 4.1150380000000002
	.quad	0x400687296f6512a9              # double 2.8159969999999999
	.quad	0x4015f764f11b60af              # double 5.4915960000000004
	.quad	0x40153dc93ea2d2fe              # double 5.3103379999999998
	.quad	0x4015500b02928177              # double 5.3281669999999997
	.quad	0x4023e298eda22f6a              # double 9.9425729999999994
	.quad	0x401a11c9f72f76e6              # double 6.5173719999999999
	.quad	0x40202c5fbf83382e              # double 8.0866679999999995
	.quad	0x40230f3519bd4068              # double 9.5297020000000003
	.quad	0x401b84107314ca92              # double 6.8789689999999997
	.quad	0x40069ae7924af0bf              # double 2.825637
	.quad	0x3ffe290eed02cd3a              # double 1.885024
	.quad	0x401a0855970b49e0              # double 6.5081389999999999
	.quad	0x3ffc36c050bd87b5              # double 1.7633669999999999
	.quad	0x401c2aca79357604              # double 7.0417880000000004
	.quad	0x40114b688bda9436              # double 4.3236410000000003
	.quad	0x3fef4d099e0e7360              # double 0.97815399999999996
	.quad	0x4017ecaab8a5ce5b              # double 5.9811199999999998
	.quad	0x3fcfdf6db940fece              # double 0.24900600000000001
	.quad	0x4023ba15336deb96              # double 9.8634430000000002
	.quad	0x40148f5cf2495e18              # double 5.1400030000000001
	.quad	0x401fdc93a7115161              # double 7.9654069999999999
	.quad	0x3fea9d40ee06d938              # double 0.83169599999999999
	.quad	0x40150eedcc20d563              # double 5.2645790000000003
	.quad	0x3fe0a0f4d7add15f              # double 0.519648
	.quad	0x402175495182a993              # double 8.7290749999999999
	.quad	0x4017b5454152b0a7              # double 5.927022
	.quad	0x3ff704e7253da72a              # double 1.4386969999999999
	.quad	0x40205bc36113404f              # double 8.1792250000000006
	.quad	0x4007123f67f4dbe0              # double 2.8839100000000002
	.quad	0x3ff1a3b46fdeb52d              # double 1.1024670000000001
	.quad	0x4000af42784a9479              # double 2.0855760000000001
	.quad	0x40137f623076c051              # double 4.8743980000000002
	.quad	0x40170195464dc22b              # double 5.7515460000000003
	.quad	0x4023c3584b1ab085              # double 9.8815329999999992
	.quad	0x4017487a8d64d7f1              # double 5.8207800000000001
	.quad	0x3ff4446e8f29d40f              # double 1.266707
	.quad	0x40231ee2eb1c432d              # double 9.5603250000000006
	.quad	0x401dedd11be6e654              # double 7.4822430000000004
	.quad	0x40093b634dad31fd              # double 3.1539980000000001
	.quad	0x402177661f18c9fb              # double 8.7332009999999993
	.quad	0x4022397939a7c17b              # double 9.1122530000000008
	.quad	0x40159a39c51dabe2              # double 5.4006109999999996
	.quad	0x3ffdc12dfd694ccb              # double 1.8596630000000001
	.quad	0x3fe6b28d8665e02f              # double 0.70929600000000004
	.quad	0x4013acf91a32b12d              # double 4.9189189999999998
	.quad	0x40181b1dd5d3dc8c              # double 6.0264810000000004
	.quad	0x3ffcbb07075b3e14              # double 1.795661
	.quad	0x401a0bbfd71b0468              # double 6.5114739999999998
	.quad	0x40227138fffbce42              # double 9.2211379999999998
	.quad	0x4021c478854cdb7b              # double 8.8837320000000002
	.quad	0x3fec806d0d49949f              # double 0.89067700000000005
	.quad	0x4018006af46aa088              # double 6.0004080000000002
	.quad	0x4015197a24894c44              # double 5.2748799999999996
	.quad	0x4013f7d2849cb253              # double 4.9920140000000002
	.quad	0x3ffa4b05b7cfe586              # double 1.643316
	.quad	0x400078d8a979e16d              # double 2.0590069999999998
	.quad	0x4000ca6a012599ed              # double 2.0988349999999998
	.quad	0x4021a37cbb3c8191              # double 8.8193110000000008
	.quad	0x3fd45d35653c9abb              # double 0.318189
	.quad	0x40114117f84449dc              # double 4.3135680000000001
	.quad	0x3ffe7e4ef0281ba8              # double 1.905837
	.quad	0x401293d640e9d51b              # double 4.6443719999999997
	.quad	0x401e7dd1a21ea359              # double 7.6228699999999998
	.quad	0x4021ef4c09c3ce21              # double 8.9673770000000008
	.quad	0x402019f2990f301f              # double 8.0506790000000006
	.quad	0x401a6c5479d4d834              # double 6.605791
	.quad	0x3fffdd606317268d              # double 1.991547
	.quad	0x400391eeaa6d2674              # double 2.446256
	.quad	0x4020aafb5d031056              # double 8.3339490000000005
	.quad	0x4017460913a4f872              # double 5.8183939999999996
	.quad	0x4013ee4c942d490e              # double 4.9827139999999996
	.quad	0x4010bfbf83382e45              # double 4.1872540000000003
	.quad	0x4020b514e3bcd35b              # double 8.3536750000000008
	.quad	0x3ffbd1697f1f9ad0              # double 1.738626
	.quad	0x401cb15e39713ad6              # double 7.1732110000000002
	.quad	0x400ce809d495182b              # double 3.6133000000000002
	.quad	0x3ffe20bb2bba98ee              # double 1.8829910000000001
	.quad	0x4018d7db2b346131              # double 6.2107970000000003
	.quad	0x40221632e3821af8              # double 9.0433570000000003
	.quad	0x400d77e996312f4d              # double 3.683551
	.quad	0x4023694ff0025bfb              # double 9.7056880000000003
	.quad	0x3ffbd2fb19e731d3              # double 1.739009
	.quad	0x402087901083dbc2              # double 8.2647709999999996
	.quad	0x40040ff540895d0b              # double 2.5077919999999998
	.quad	0x40065b65ecc3e319              # double 2.7946279999999999
	.quad	0x3fc65892684cf074              # double 0.17457800000000001
	.quad	0x401f7709310129cc              # double 7.8662460000000003
	.quad	0x402005c1c6088d6d              # double 8.0112439999999996
	.quad	0x4008ac215b9a5a8a              # double 3.0840480000000001
	.quad	0x4015f200c0f01fb8              # double 5.4863309999999998
	.quad	0x401a48f648c7192f              # double 6.5712520000000003
	.quad	0x3ff4ee7f6f4be836              # double 1.308227
	.quad	0x40172e6e653868fd              # double 5.7953429999999999
	.quad	0x4022c182a9930be1              # double 9.3779500000000002
	.quad	0x401eb9b3d07c84b6              # double 7.6813500000000001
	.quad	0x401f44712e40852b              # double 7.8168379999999997
	.quad	0x3feb4b48d3ae685e              # double 0.85294000000000003
	.quad	0x3ffc34bf8fcd67fd              # double 1.7628779999999999
	.quad	0x401e5857f3061c7a              # double 7.5862730000000003
	.quad	0x3ffcfa52ac753e70              # double 1.8111139999999999
	.quad	0x40234fa0b5ed8d37              # double 9.6555230000000005
	.quad	0x40236413b9f127f6              # double 9.6954630000000002
	.quad	0x400c5b97bb730835              # double 3.5447229999999998
	.quad	0x401995f78359bc34              # double 6.396452
	.quad	0x3f8d24180d3cff65              # double 0.014229
	.quad	0x401019c49774256c              # double 4.0251640000000002
	.quad	0x401cddbb9cf9a06a              # double 7.2165359999999996
	.quad	0x4012e49949e8815e              # double 4.7232409999999998
	.quad	0x4018723854046413              # double 6.1115430000000002
	.quad	0x40211b3b5393250b              # double 8.5531869999999994
	.quad	0x401610a6fc58ab93              # double 5.5162620000000002
	.quad	0x401d0f5126634118              # double 7.264958
	.quad	0x401cbe18efbb0e5e              # double 7.1856419999999996
	.quad	0x401d2d04e618ce2d              # double 7.2939639999999999
	.quad	0x401de7318fc50481              # double 7.4757749999999996
	.quad	0x4009deec39799e52              # double 3.2338490000000002
	.quad	0x40213d4b6a619daa              # double 8.6197160000000004
	.quad	0x4013c22ee41919ac              # double 4.9396319999999996
	.quad	0x401f33cf2cf95d4f              # double 7.8005950000000003
	.quad	0x401dcf15a4acf313              # double 7.4522310000000003
	.quad	0x402194308feac42f              # double 8.7894330000000007
	.quad	0x3ffe6c508b32ce89              # double 1.9014439999999999
	.quad	0x4023ca919695d91b              # double 9.8956420000000004
	.quad	0x3fefd27e5215768a              # double 0.99444500000000002
	.quad	0x401728b4bf8fcd68              # double 5.789752
	.quad	0x3ff8093d96638434              # double 1.502256
	.quad	0x40038523704790b8              # double 2.4400089999999999
	.quad	0x401c696f6512a950              # double 7.1029640000000001
	.quad	0x3fb5ea465a57646b              # double 0.085606000000000002
	.quad	0x401be32df505d0fa              # double 6.9718549999999997
	.quad	0x40122fe47991bc56              # double 4.5467700000000004
	.quad	0x4018e9ce075f6fd2              # double 6.2283249999999999
	.quad	0x402151424e592967              # double 8.658709
	.quad	0x40227b49e01de269              # double 9.2407979999999998
	.quad	0x40223c12cf0f9d2c              # double 9.117331
	.quad	0x40119c050bd87b57              # double 4.4023630000000002
	.quad	0x400c2e3715400325              # double 3.5225659999999999
	.quad	0x4020cdc8b86b15f9              # double 8.4019220000000008
	.quad	0x4022a6bd9018e758              # double 9.3256650000000007
	.quad	0x401426f71a7e3088              # double 5.0380520000000004
	.quad	0x400dc28672756862              # double 3.719983
	.quad	0x4000ba6ce358298d              # double 2.0910280000000001
	.quad	0x4017492b7fe08af0              # double 5.8214550000000003
	.quad	0x401c4456f75d9a0f              # double 7.066738
	.quad	0x400fbaf5ba2be059              # double 3.9662890000000002
	.quad	0x3fe65fb9389b5200              # double 0.69918499999999995
	.quad	0x401088d64d7f0ed4              # double 4.1336300000000001
	.quad	0x3ffebfb69984a0e4              # double 1.921805
	.quad	0x40127273929ed395              # double 4.6117689999999998
	.quad	0x402370a99b6f5caf              # double 9.7200439999999996
	.quad	0x3fb565907d912557              # double 0.083581000000000003
	.quad	0x4023b2b3aabcd78c              # double 9.8490269999999995
	.quad	0x4015ed527e521577              # double 5.4817600000000004
	.quad	0x4022ae777079e59f              # double 9.3407549999999997
	.quad	0x40121f47735c182f              # double 4.5305460000000002
	.quad	0x40219ab841248d7e              # double 8.802187
	.quad	0x4021c175afaf8594              # double 8.8778509999999997
	.quad	0x401732324c836651              # double 5.7990199999999996
	.quad	0x402140b242070b8d              # double 8.62636
	.quad	0x40071cddd6e04c06              # double 2.8890950000000002
	.quad	0x4004f968d759ee89              # double 2.6217820000000001
	.quad	0x40147d6e47dc37a4              # double 5.1224910000000001
	.quad	0x40232f77af64063a              # double 9.5927100000000003
	.quad	0x3ff34dbad3a604e2              # double 1.206477
	.quad	0x3ff4275360d02470              # double 1.259601
	.quad	0x4016cd61f5be5d9e              # double 5.7005689999999998
	.quad	0x3fe7ea8112ba16e8              # double 0.74737600000000004
	.quad	0x400d58c9fb6134ce              # double 3.6683539999999999
	.quad	0x4021287442c7fbad              # double 8.5790120000000005
	.quad	0x3fe397d6b65a9a80              # double 0.61228499999999997
	.quad	0x400cc407cc7d1bb5              # double 3.5957180000000002
	.quad	0x3fe471d3ed527e52              # double 0.63889499999999999
	.quad	0x40172280ae104923              # double 5.7836939999999997
	.quad	0x3ffaf6fc158fb43e              # double 1.6852990000000001
	.quad	0x40236353f7ced917              # double 9.6940000000000008
	.quad	0x3ff2f2990f301eac              # double 1.1842280000000001
	.quad	0x3ff8819e30014f8b              # double 1.5316449999999999
	.quad	0x401c86113404ea4b              # double 7.1309250000000004
	.quad	0x4021ec7d805e5f31              # double 8.9618950000000002
	.quad	0x4013be1719f7f8cb              # double 4.9356350000000004
	.quad	0x40237309a671ef31              # double 9.7246830000000006
	.quad	0x40011074a771c971              # double 2.133035
	.quad	0x3fe4f3647baa9b4a              # double 0.65471100000000004
	.quad	0x4005492bc2fc6973              # double 2.6607280000000002
	.quad	0x40107a41e57d9dbb              # double 4.1193920000000004
	.quad	0x40200a4894c447c3              # double 8.0200849999999999
	.quad	0x3ff83ffde7210be9              # double 1.5156229999999999
	.quad	0x401e2deb0fadf2ed              # double 7.544842
	.quad	0x40045ddfc9ff92f3              # double 2.5458370000000001
	.quad	0x40150e93e1c9b414              # double 5.2642360000000004
	.quad	0x400da73b42cc2d6b              # double 3.7066560000000002
	.quad	0x3fd36412cf0f9d2c              # double 0.302983
	.quad	0x401f0d41fa765343              # double 7.7629469999999995
	.quad	0x400b6ca36199780c              # double 3.4280460000000001
	.quad	0x40110c6f7a0b5ed9              # double 4.2621440000000002
	.quad	0x4007b803cd141a69              # double 2.9648509999999999
	.quad	0x401aabac2df0d413              # double 6.6676489999999999
	.quad	0x402162a6d2674081              # double 8.692679
	.quad	0x4013a5d249e44fa0              # double 4.9119349999999997
	.quad	0x401e8d3aa369fcf4              # double 7.6379190000000001
	.quad	0x40036d4cb9ecf638              # double 2.428369
	.quad	0x4011acca2db61bb0              # double 4.4187399999999997
	.quad	0x400660f55de58e65              # double 2.7973430000000001
	.quad	0x40143a305532617c              # double 5.0568249999999999
	.quad	0x401f9fa26a22b389              # double 7.9058929999999998
	.quad	0x402393571d1d4739              # double 9.7877740000000006
	.quad	0x402179307af20ea6              # double 8.7366980000000005
	.quad	0x4014d11e85fd04a3              # double 5.204218
	.quad	0x4012e9ad42c3c9ef              # double 4.7282000000000002
	.quad	0x4002c54c55432874              # double 2.3463370000000001
	.quad	0x400d4c4ef88b9778              # double 3.6622599999999998
	.quad	0x401aeb9b66f9335d              # double 6.7300849999999999
	.quad	0x401eee7d566cf41f              # double 7.7328999999999998
	.quad	0x4013a00b45ae5ffa              # double 4.9062929999999998
	.quad	0x401b78b19a415f46              # double 6.8678650000000001
	.quad	0x40226b864cb5bb38              # double 9.2100089999999994
	.quad	0x401bb95af294dd72              # double 6.9310109999999998
	.quad	0x4019c9973d9ec700              # double 6.446866
	.quad	0x400bde2c55c96031              # double 3.4834830000000001
	.quad	0x40236f993d5347a6              # double 9.7179660000000005
	.quad	0x4022532ca57a786c              # double 9.1624499999999997
	.quad	0x4008baa044ae85ba              # double 3.091126
	.quad	0x40235f0de8f6ceff              # double 9.6856530000000002
	.quad	0x401103b4f6167232              # double 4.2536199999999997
	.quad	0x401348027d88c1db              # double 4.820322
	.quad	0x40174f401c4fc1df              # double 5.8273929999999998
	.quad	0x4023f1a9da597d4a              # double 9.9719990000000003
	.quad	0x3ff7c10d7be9856a              # double 1.484632
	.quad	0x401e6ceee0f3cb3e              # double 7.6063799999999997
	.quad	0x4013e2d6ece13f4b              # double 4.9715230000000004
	.quad	0x401f2afd5454152b              # double 7.7919819999999999
	.quad	0x40206542e557de0d              # double 8.1977759999999993
	.quad	0x401f0a08398a6549              # double 7.7597969999999998
	.quad	0x4012cdcfcc5b8dc5              # double 4.7009879999999997
	.quad	0x4013db456b441bb9              # double 4.9641320000000002
	.quad	0x3fe1b68ad6883772              # double 0.55353300000000005
	.quad	0x40112f94855da273              # double 4.2964650000000004
	.quad	0x4000368a50507a6c              # double 2.0266310000000001
	.quad	0x40064a033e78e193              # double 2.7861389999999999
	.quad	0x4018a6045baf533f              # double 6.1621259999999998
	.quad	0x400355f676ea4229              # double 2.4169740000000002
	.quad	0x401897824d4cb9ed              # double 6.147958
	.quad	0x402028626f60e0eb              # double 8.0788759999999993
	.quad	0x401619c27e953155              # double 5.525156
	.quad	0x401ccdd93c46d82c              # double 7.2010240000000003
	.quad	0x402251b4dcebfec1              # double 9.1595829999999996
	.quad	0x3ffbe0c6b484d76b              # double 1.7423770000000001
	.quad	0x3ff98b73d188f430              # double 1.596546
	.quad	0x40097333b96af039              # double 3.1812510000000001
	.quad	0x4018350a45d41fa7              # double 6.0517969999999996
	.quad	0x402176bb341e14be              # double 8.731897
	.quad	0x401ebf2b239a38fc              # double 7.6866880000000002
	.quad	0x3ff35ef416bdb1a7              # double 1.210682
	.quad	0x4013ed7d7c2ca149              # double 4.9819240000000002
	.quad	0x4020ffaa4766c6de              # double 8.4993459999999992
	.quad	0x401497f13059641f              # double 5.1483809999999997
	.quad	0x40119574b407032a              # double 4.3959530000000004
	.quad	0x3fb609bb6aa4b988              # double 0.086085999999999996
	.quad	0x4021fe777079e59f              # double 8.9970049999999997
	.quad	0x401388dfbd6a593a              # double 4.8836659999999998
	.quad	0x4019e78359bc33f8              # double 6.4760869999999997
	.quad	0x3fcbd031055b8994              # double 0.21729100000000001
	.quad	0x400c12f09d8c6d61              # double 3.5092479999999999
	.quad	0x40199accd530489d              # double 6.4011719999999999
	.quad	0x4009a0d66f0cfe15              # double 3.2035339999999999
	.quad	0x40203c1248d7e026              # double 8.1173269999999995
	.quad	0x40022848387df5cf              # double 2.2696689999999999
	.quad	0x401b6a69be09bb6b              # double 6.8539190000000003
	.quad	0x4011fdf47f993d53              # double 4.4980029999999998
	.quad	0x401801d9f4d37c13              # double 6.0018079999999996
	.quad	0x40208f8594291750              # double 8.2803159999999991
	.quad	0x400790c4dec1c1d7              # double 2.9456880000000001
	.quad	0x3fd8ae429e0a41a2              # double 0.38563599999999998
	.quad	0x400ab7531db445ed              # double 3.3395139999999999
	.quad	0x40132ff7164c729f              # double 4.7968409999999997
	.quad	0x40060a19c9d5a188              # double 2.7549320000000002
	.quad	0x40229283d35eb745              # double 9.2861619999999991
	.quad	0x401687d1782d3847              # double 5.6326349999999996
	.quad	0x3ff8ad549731098d              # double 1.5423169999999999
	.quad	0x400931c864883fd5              # double 3.149308
	.quad	0x400d808398a65493              # double 3.687751
	.quad	0x4019c33acd5b6806              # double 6.4406540000000003
	.quad	0x401bfd9c6b053198              # double 6.9976669999999999
	.quad	0x4020869899bf5947              # double 8.2628830000000004
	.quad	0x401b22bbecaab8a6              # double 6.7839200000000002
	.quad	0x400d9eb9e492bc30              # double 3.7025030000000001
	.quad	0x402294864883fd50              # double 9.2900869999999998
	.quad	0x40203fb4c3c18b50              # double 8.1244259999999997
	.quad	0x401092cdc011d367              # double 4.1433629999999999
	.quad	0x402030a6117720c9              # double 8.0950170000000004
	.quad	0x3fe62e770bd017db              # double 0.69317200000000001
	.quad	0x401e657d1782d384              # double 7.5991099999999996
	.quad	0x4020e993f6c2699c              # double 8.4562069999999991
	.quad	0x401db7d912556d1a              # double 7.4295390000000001
	.quad	0x3fdf16e7a311e860              # double 0.48577300000000001
	.quad	0x402293e0370cdc87              # double 9.2888199999999994
	.quad	0x401c288377186552              # double 7.0395640000000004
	.quad	0x3ff291f1cfbb9496              # double 1.160631
	.quad	0x4016ee4de3b8a19d              # double 5.7327190000000003
	.quad	0x401a0c5e6ff7dfa0              # double 6.512079
	.quad	0x4023b6555c52e72e              # double 9.8561200000000007
	.quad	0x3ff02b24a6a875d5              # double 1.0105329999999999
	.quad	0x40046b4a66559f6f              # double 2.5523880000000001
	.quad	0x401f4eca25529fe0              # double 7.826943
	.quad	0x4013a25247cb70ac              # double 4.9085169999999998
	.quad	0x4021720bc382a130              # double 8.7227460000000008
	.quad	0x3fe0609dcf893faf              # double 0.51179399999999997
	.quad	0x4021512f09d8c6d6              # double 8.6585619999999999
	.quad	0x3fff138de6ddf00b              # double 1.9422740000000001
	.quad	0x4021b69707182236              # double 8.8566210000000005
	.quad	0x40239fe34b945309              # double 9.8122810000000004
	.quad	0x401ba40fecdd0d8d              # double 6.9102170000000003
	.quad	0x4012af3a14cec41e              # double 4.6711200000000002
	.quad	0x401f5fd32c625e9a              # double 7.8435790000000001
	.quad	0x3fd434e7685985ad              # double 0.31572899999999998
	.quad	0x40062567125dd096              # double 2.7682630000000001
	.quad	0x4019d6cca2db61bb              # double 6.459765
	.quad	0x401ca5dedf1e0829              # double 7.1619830000000002
	.quad	0x4023e675bc44bf4d              # double 9.9501170000000005
	.quad	0x4020a59e6256366d              # double 8.3234739999999992
	.quad	0x400bd4aec8d5c747              # double 3.4788489999999999
	.quad	0x401455baf533f423              # double 5.0837209999999997
	.quad	0x3fecdcb35f3d7d39              # double 0.90194099999999999
	.quad	0x401bddac258d5843              # double 6.9664770000000003
	.quad	0x400026bf01322f27              # double 2.0189189999999999
	.quad	0x40180a2f8bdec5f4              # double 6.0099470000000004
	.quad	0x401478ba83f4eca7              # double 5.1178990000000004
	.quad	0x4012f77b7c7820a3              # double 4.741682
	.quad	0x4023f4e2f37fbefd              # double 9.9782939999999999
	.quad	0x4015a0dd3fe1975f              # double 5.4070939999999998
	.quad	0x400868de2ac32229              # double 3.0512049999999999
	.quad	0x40039cad14a0a0f5              # double 2.4515020000000001
	.quad	0x3fe37fbce4217d28              # double 0.60934299999999997
	.quad	0x40215a7e0ef99807              # double 8.6767430000000001
	.quad	0x400555eb7457c0b1              # double 2.6669529999999999
	.quad	0x4013d874c8ffb8b2              # double 4.9613829999999997
	.quad	0x40136f3f0fe047d4              # double 4.8586390000000002
	.quad	0x40186acd5b6805a3              # double 6.1042990000000001
	.quad	0x3fed313dfb0d51f8              # double 0.91226099999999999
	.quad	0x4013c5cbbc2b94d9              # double 4.9431599999999998
	.quad	0x4010db42cc2d6a9c              # double 4.2141219999999997
	.quad	0x40110f8594291750              # double 4.2651579999999996
	.quad	0x402321289dadfb50              # double 9.5647629999999992
	.quad	0x400675f3519bd406              # double 2.8075929999999998
	.quad	0x3fe0a363b256ffc1              # double 0.51994499999999999
	.quad	0x4012a0ffda4052d6              # double 4.6572259999999996
	.quad	0x4003ee1a3f4666ed              # double 2.4912610000000002
	.quad	0x40123c61d8622c45              # double 4.558967
	.quad	0x40139a0d77b7c782              # double 4.900442
	.quad	0x401205c2d2780779              # double 4.5056260000000004
	.quad	0x3fec3951c5c5718f              # double 0.88199700000000003
	.quad	0x4014ec4ac6cdaf4b              # double 5.2307540000000001
	.quad	0x401947e889c1b542              # double 6.3202230000000004
	.quad	0x40194b34e7685986              # double 6.3234440000000003
	.quad	0x4012bfcf3dc054ef              # double 4.6873139999999998
	.quad	0x4021e199bb2788db              # double 8.940626
	.quad	0x4002a23bff8a8f3b              # double 2.3292160000000002
	.quad	0x400ad4bcf0b6b6e1              # double 3.3538760000000001
	.quad	0x400e79934efcbd55              # double 3.8093629999999998
	.quad	0x401d9ead0c3d2524              # double 7.4049569999999996
	.quad	0x3ffd922fad6cb535              # double 1.84819
	.quad	0x4012399d883ba344              # double 4.5562649999999998
	.quad	0x401ed84d76ab5808              # double 7.711233
	.quad	0x4012257c914b167f              # double 4.5366080000000002
	.quad	0x4020266ba493c89f              # double 8.0750399999999996
	.quad	0x40199a708ede54b5              # double 6.4008200000000004
	.quad	0x40218e54d61b2a28              # double 8.7779910000000001
	.quad	0x402298a6fc58ab93              # double 9.2981490000000004
	.quad	0x40152a35935fc3b5              # double 5.29122
	.quad	0x400a265d7cb2d906              # double 3.2687330000000001
	.quad	0x401aea7935760392              # double 6.7289779999999997
	.quad	0x4014d89efd86a8fc              # double 5.211544
	.quad	0x3ffe34d056c508b3              # double 1.887894
	.quad	0x3fff78327674d163              # double 1.966845
	.quad	0x4022fcd29131ec0b              # double 9.4937939999999994
	.quad	0x4018135e74299d88              # double 6.0189149999999998
	.quad	0x400866fac6045baf              # double 3.0502829999999999
	.quad	0x40221b3a0407cc7d              # double 9.0531769999999998
	.quad	0x40231a19652bd3c3              # double 9.5509749999999993
	.quad	0x40205f2580c308ff              # double 8.1858330000000006
	.quad	0x3fc2622c45026890              # double 0.143621
	.quad	0x3ffe78db4890928a              # double 1.904506
	.quad	0x401b4bb1af3a14cf              # double 6.8239200000000002
	.quad	0x4012a9042d8c2a45              # double 4.6650549999999997
	.quad	0x40153dbf8b9baa15              # double 5.3103009999999999
	.quad	0x4020f31b79d909f2              # double 8.4748190000000001
	.quad	0x400882278d0cc35d              # double 3.0635520000000001
	.quad	0x3ff7dcbccf28c79f              # double 1.4913909999999999
	.quad	0x401fc550ca1cef24              # double 7.9426909999999999
	.quad	0x400231d9b1b79d91              # double 2.2743410000000002
	.quad	0x402341b6f5caf2d8              # double 9.628349
	.quad	0x401b78a3b57c4e2f              # double 6.8678119999999998
	.quad	0x4016f837f7be121f              # double 5.7424010000000001
	.quad	0x401ce33fc86cebbc              # double 7.2219230000000003
	.quad	0x4019cf127f5e84f1              # double 6.4522190000000004
	.quad	0x40035b573eab367a              # double 2.4196
	.quad	0x3ffe43c5bd0e12e8              # double 1.8915459999999999
	.quad	0x3ff73b7b6bb12902              # double 1.4520219999999999
	.quad	0x401e9a9478c868ba              # double 7.650957
	.quad	0x40210c30f49491f3              # double 8.5238110000000002
	.quad	0x401f7ecf63800219              # double 7.8738380000000001
	.quad	0x4021859103c8e25d              # double 8.7608720000000009
	.quad	0x401e5ccee5abc0e4              # double 7.5906330000000004
	.quad	0x4018ec382a12f901              # double 6.230683
	.quad	0x401aa435ac8a3726              # double 6.660361
	.quad	0x40032b37867f0aa2              # double 2.396102
	.quad	0x3fed49c4da9003ef              # double 0.91525500000000004
	.quad	0x3ffc4c9c90c4dec2              # double 1.7687040000000001
	.quad	0x401b5118c197e564              # double 6.8291959999999996
	.quad	0x4013217dae81882b              # double 4.7827060000000001
	.quad	0x3feec2ca148ba83f              # double 0.96127799999999996
	.quad	0x401d1ba16e7a311f              # double 7.2769830000000004
	.quad	0x4007da93af74cd31              # double 2.9817269999999998
	.quad	0x40155bd4067cf1c3              # double 5.3396759999999999
	.quad	0x401521fe64f54d1f              # double 5.2831970000000004
	.quad	0x40053a21ea359360              # double 2.6533850000000001
	.quad	0x40221fdb8fde2ef5              # double 9.0622220000000002
	.quad	0x4012cb167ec7863c              # double 4.6983280000000001
	.quad	0x401b2645a1cac083              # double 6.7873749999999999
	.quad	0x40188ce7cd035372              # double 6.1376030000000004
	.quad	0x40163de481f53826              # double 5.5604420000000001
	.quad	0x401415f3d7d3910c              # double 5.0214379999999998
	.quad	0x40146f2ecf206424              # double 5.1085770000000004
	.quad	0x40178bb1f255f352              # double 5.8864210000000003
	.quad	0x40238926e978d4fe              # double 9.7678750000000001
	.quad	0x40149c4fc1df3301              # double 5.1526480000000001
	.quad	0x3ff68f81e8a2ec29              # double 1.4100360000000001
	.quad	0x401481deacc92147              # double 5.1268260000000003
	.quad	0x400640e5a35d67ba              # double 2.7816879999999999
	.quad	0x4022856238da3c21              # double 9.2605149999999998
	.quad	0x4016ea1db877ab32              # double 5.7286289999999997
	.quad	0x4017b0ecfa69be0a              # double 5.9227790000000002
	.quad	0x40232d90c0ad03da              # double 9.5889950000000006
	.quad	0x40054f3eccc46951              # double 2.663694
	.quad	0x3fc576ddaceee0f4              # double 0.16769000000000001
	.quad	0x402360f6f08cc576              # double 9.6893840000000004
	.quad	0x4006235c5b4aa971              # double 2.7672659999999998
	.quad	0x3feeb48909289dae              # double 0.959538
	.quad	0x3fc541743e963dc5              # double 0.16606000000000001
	.quad	0x401d12ed783dff3f              # double 7.2684839999999999
	.quad	0x4002dad7518b0d0f              # double 2.3568560000000001
	.quad	0x40167646f1561911              # double 5.6155049999999997
	.quad	0x400e93be22e5de16              # double 3.8221400000000001
	.quad	0x40145ad4b2745bf2              # double 5.0887019999999996
	.quad	0x4016b92428d434a0              # double 5.6808019999999999
	.quad	0x3ff4e3f359ff4fd7              # double 1.305652
	.quad	0x3ff064c0df58c08b              # double 1.0245979999999999
	.quad	0x400650b1feeb2d0a              # double 2.7894019999999999
	.quad	0x40200c2c5e2cdc01              # double 8.0237759999999998
	.quad	0x4006d26fa3fcc9eb              # double 2.8527520000000002
	.quad	0x400c42e2b8c75c4b              # double 3.5326590000000002
	.quad	0x402296cdaf4adbc6              # double 9.2945379999999993
	.quad	0x4016cd3b6cbd987c              # double 5.7004219999999997
	.quad	0x40021acd5b6805a3              # double 2.2630870000000001
	.quad	0x40158e603d577964              # double 5.3890390000000004
	.quad	0x401991bc126a65cf              # double 6.3923189999999996
	.quad	0x4020c6ab5807fed2              # double 8.388026
	.quad	0x4017d8f7985271bd              # double 5.9618820000000001
	.quad	0x3ff77648c7192ea5              # double 1.466378
	.quad	0x3ff511c9f72f76e6              # double 1.316843
	.quad	0x40207c3d89ce4a7b              # double 8.2426569999999995
	.quad	0x3fdbc105186db50f              # double 0.43365599999999999
	.quad	0x401d041d4b6a619e              # double 7.2540180000000003
	.quad	0x401ca4217d2849cb              # double 7.1602839999999999
	.quad	0x3ff18897e996312f              # double 1.0958479999999999
	.quad	0x3fa78e3ac0c62e4d              # double 0.046006999999999999
	.quad	0x401dc37cdcca70d2              # double 7.440906
	.quad	0x3fdc664d3bf2f556              # double 0.44374400000000003
	.quad	0x401d863beec3979a              # double 7.3810880000000001
	.quad	0x40069f1950331e3a              # double 2.8276849999999998
	.quad	0x3fd4d2674080f990              # double 0.32534200000000002
	.quad	0x400c2b673c4f3ba7              # double 3.5211929999999998
	.quad	0x3ffbe7b3d8e00086              # double 1.744068
	.quad	0x4019c125dd095af3              # double 6.4386210000000004
	.quad	0x401484185058dde8              # double 5.1289990000000003
	.quad	0x401bcd7f950b955f              # double 6.9506819999999996
	.quad	0x40176c84f8f8a4c2              # double 5.8559760000000001
	.quad	0x4010a5c03361565c              # double 4.1618659999999998
	.quad	0x4009aad256798959              # double 3.2084090000000001
	.quad	0x401cd58c4bd33d29              # double 7.2085429999999997
	.quad	0x4010a2d16b97fe8f              # double 4.1590020000000001
	.quad	0x3fec4942d490e66d              # double 0.88394300000000003
	.quad	0x401e21b97353b4b3              # double 7.532934
	.quad	0x4012721187e7c06e              # double 4.6113949999999999
	.quad	0x40136b1c0010c6f8              # double 4.8545990000000003
	.quad	0x3ffe67418d6909af              # double 1.900209
	.quad	0x4013ff5fd47bedb7              # double 4.9993889999999999
	.quad	0x402260db2702a348              # double 9.1891719999999992
	.quad	0x401fc4488c60cbf3              # double 7.9416830000000002
	.quad	0x401bde696a26e547              # double 6.9671989999999999
	.quad	0x40197a5a469d7343              # double 6.3694850000000001
	.quad	0x401459f59ccfaeff              # double 5.0878509999999997
	.quad	0x4006697d06bbdbe4              # double 2.8015080000000001
	.quad	0x401e0a116659d12d              # double 7.5098320000000002
	.quad	0x3ffa2aa5c5f7c676              # double 1.6354120000000001
	.quad	0x401aac714fce746d              # double 6.6684010000000002
	.quad	0x4011a2ac753e707e              # double 4.4088609999999999
	.quad	0x3fe0ca25529fe005              # double 0.52467600000000003
	.quad	0x401dc89f83be6602              # double 7.4459210000000002
	.quad	0x400d6670e2c12ad8              # double 3.67502
	.quad	0x4017a2189bd8383b              # double 5.9082970000000001
	.quad	0x401a39be4cd74928              # double 6.5563900000000004
	.quad	0x401bb2dc6e2a8006              # double 6.9246689999999997
	.quad	0x40134edf61240746              # double 4.8270239999999998
	.quad	0x4021cf481b21c476              # double 8.9048470000000002
	.quad	0x4001d6f08cc575c0              # double 2.2299509999999998
	.quad	0x400e3b6aa4b9884c              # double 3.7790119999999998
	.quad	0x401f5089a0275254              # double 7.8286499999999997
	.quad	0x3fe785729b280f13              # double 0.73504000000000003
	.quad	0x400c4122749f0e4e              # double 3.5318040000000002
	.quad	0x3fe06c99f1ae2da5              # double 0.51325699999999996
	.quad	0x3fe23c792d1287c2              # double 0.569882
	.quad	0x401e369a91105e1c              # double 7.5533239999999999
	.quad	0x4023bd1287c200c1              # double 9.8692820000000001
	.quad	0x3ff75095af294dd7              # double 1.457174
	.quad	0x3ff70d1d8a548238              # double 1.4407019999999999
	.quad	0x400a32b6f19934f0              # double 3.2747630000000001
	.quad	0x401654280ae10492              # double 5.5821839999999998
	.quad	0x3ffd8c7d1bb4916d              # double 1.8467990000000001
	.quad	0x40216a63d816aceb              # double 8.7077930000000006
	.quad	0x401412dfd694ccab              # double 5.0184319999999998
	.quad	0x401222363b256ffc              # double 4.5334099999999999
	.quad	0x40035a122fad6cb5              # double 2.4189799999999999
	.quad	0x402382dab9f559b4              # double 9.7555750000000003
	.quad	0x40237862d40aaeb0              # double 9.7351290000000006
	.quad	0x401bda60d4562e0a              # double 6.96326
	.quad	0x3ffa19da9c99285b              # double 1.6313120000000001
	.quad	0x3fe0f69a91105e1c              # double 0.53010299999999999
	.quad	0x401bc5a921ccd962              # double 6.943028
	.quad	0x4018dee73e681a9c              # double 6.2176790000000004
	.quad	0x4020cf67d34df04e              # double 8.4050890000000003
	.quad	0x40208c25d074213a              # double 8.2737259999999999
	.quad	0x400ddcb4f1e4b44a              # double 3.7327669999999999
	.quad	0x40235f5cd0bb6ed6              # double 9.6862549999999992
	.quad	0x4008242e9899bf59              # double 3.0176669999999999
	.quad	0x4006552007dd4413              # double 2.7915649999999999
	.quad	0x401cdb5aea3161a2              # double 7.2142140000000001
	.quad	0x401f70ae10492360              # double 7.8600390000000004
	.quad	0x401651af3a14cec4              # double 5.5797699999999999
	.quad	0x40179093d9663843              # double 5.8911889999999998
	.quad	0x40232de093532e7b              # double 9.5896039999999995
	.quad	0x401e3fd5cb790fb6              # double 7.5623389999999997
	.quad	0x40014c5004fb1184              # double 2.1622620000000001
	.quad	0x4016c824d4cb9ecf              # double 5.6954529999999997
	.quad	0x40131bc33f85510d              # double 4.7771119999999998
	.quad	0x40158fdef8487b9a              # double 5.3904990000000002
	.quad	0x40020237cdcca70d              # double 2.2510829999999999
	.quad	0x3ff86a38b8ae31d7              # double 1.525933
	.quad	0x401d9a569b17481b              # double 7.4007209999999999
	.quad	0x4022d8c8eef1bac3              # double 9.4234080000000002
	.quad	0x4017e39f340d4dc6              # double 5.9722869999999997
	.quad	0x4018531b584b1ab1              # double 6.0811590000000004
	.quad	0x4023330c23fab10c              # double 9.5997020000000006
	.quad	0x401bbc1a8ac5c140              # double 6.9336950000000002
	.quad	0x4010a19157abb880              # double 4.1577809999999999
	.quad	0x4023064b018611fd              # double 9.5122909999999993
	.quad	0x3ff35bed30f062d4              # double 1.209943
	.quad	0x4021d5efe9318762              # double 8.9178460000000008
	.quad	0x40010dcdb37c99af              # double 2.1317400000000002
	.quad	0x40076384ba0e8427              # double 2.9235929999999999
	.quad	0x401ecd273d5bab22              # double 7.7003450000000004
	.quad	0x4021eb4a87e38eb0              # double 8.9595529999999997
	.quad	0x401c0b506dd69d30              # double 7.0110489999999999
	.quad	0x40114f5be5d9e40d              # double 4.3274990000000004
	.quad	0x402216da87a072d2              # double 9.0446360000000006
	.quad	0x3fd343dccea28fe2              # double 0.30101699999999998
	.quad	0x4000a172abef06b3              # double 2.0788319999999998
	.quad	0x4014b6b3fe9fadb0              # double 5.1784210000000002
	.quad	0x40200b92e1ef73c1              # double 8.0226050000000004
	.quad	0x3fd474794ea07703              # double 0.31960899999999998
	.quad	0x40060fe047d3d428              # double 2.757752
	.quad	0x4015c6c3fc43b2dd              # double 5.4441069999999998
	.quad	0x400376be37de939f              # double 2.4329800000000001
	.quad	0x40055178b3700475              # double 2.6647810000000001
	.quad	0x4014a8b9fdbd2fa1              # double 5.1647720000000001
	.quad	0x3ff46e7924af0bf2              # double 1.2769710000000001
	.quad	0x4011ca82a5614df9              # double 4.4477640000000003
	.quad	0x40165487b99d4520              # double 5.5825490000000002
	.quad	0x401039c4113c6866              # double 4.0564119999999999
	.quad	0x402215f6ba0620ab              # double 9.0428979999999992
	.quad	0x4006456d5cfaacda              # double 2.7839
	.quad	0x40104b7f5a5332ad              # double 4.073728
	.quad	0x40124e83e425aee6              # double 4.5766749999999998
	.quad	0x401d71f0c34c1a8b              # double 7.3612700000000002
	.quad	0x40038ad70e6f2e8c              # double 2.442793
	.quad	0x3ff0de71044f1a1a              # double 1.0543070000000001
	.quad	0x4016a5b20b8066c3              # double 5.6618120000000003
	.quad	0x4020a23b7952d235              # double 8.3168600000000001
	.quad	0x3ff8051dabe2717a              # double 1.5012490000000001
	.quad	0x40083dece5710881              # double 3.0302370000000001
	.quad	0x4019051dabe2717a              # double 6.2549960000000002
	.quad	0x401003c85c24c405              # double 4.0036940000000003
	.quad	0x400147e28240b780              # double 2.1600999999999999
	.quad	0x40071905c0336156              # double 2.8872179999999998
	.quad	0x3ffff484d76ab580              # double 1.9971969999999999
	.quad	0x400eaff3ade225fa              # double 3.8359139999999998
	.quad	0x40071d65a14488c6              # double 2.889354
	.quad	0x401a793f290abb45              # double 6.6184050000000001
	.quad	0x40196c1acde19fc3              # double 6.3555710000000003
	.quad	0x4014fb1d0c804103              # double 5.245228
	.quad	0x402095477bbf93ff              # double 8.2915609999999997
	.quad	0x4014c52220bc382a              # double 5.1925129999999999
	.quad	0x4010f6cacd184c27              # double 4.2410079999999999
	.quad	0x3ff8b7985271bcdc              # double 1.5448230000000001
	.quad	0x3ffd6e807bbb6241              # double 1.8394779999999999
	.quad	0x4016d09cc319c5a4              # double 5.7037230000000001
	.quad	0x4008d989df1172ef              # double 3.10622
	.quad	0x4018c40e1719f7f9              # double 6.1914600000000002
	.quad	0x4021097edc7ef178              # double 8.5185460000000006
	.quad	0x4020d5529fe004b8              # double 8.4166460000000001
	.quad	0x4023bdea24cc6823              # double 9.870927
	.quad	0x4020f293d102bc73              # double 8.4737840000000002
	.quad	0x3fffa698bb4d4888              # double 1.978173
	.quad	0x4021c7ab96f21f6d              # double 8.8899810000000006
	.quad	0x4014d1a75cd0bb6f              # double 5.2047400000000001
	.quad	0x4021c15ee136e71d              # double 8.8776770000000003
	.quad	0x400215af294dd723              # double 2.2605879999999998
	.quad	0x401e972580c308ff              # double 7.6476040000000002
	.quad	0x3fe0cec636b09635              # double 0.52524099999999996
	.quad	0x4016d4f82f512663              # double 5.7079779999999998
	.quad	0x401c0d6f112fd32c              # double 7.0131189999999997
	.quad	0x4021c5510d38cda7              # double 8.8853840000000002
	.quad	0x4022ee41d4b6a61a              # double 9.4653460000000003
	.quad	0x3ff22bfa8f7db6e5              # double 1.135737
	.quad	0x4001ae935b91f70e              # double 2.210242
	.quad	0x40225c1e14bdfd26              # double 9.1799169999999997
	.quad	0x4008e6bb55ac03ff              # double 3.1126619999999998
	.quad	0x40110a25d8d79d0a              # double 4.2599099999999996
	.quad	0x4000c8262456f75e              # double 2.0977290000000002
	.quad	0x40193ebe596c82e0              # double 6.3112729999999999
	.quad	0x4014548a159817b9              # double 5.0825579999999997
	.quad	0x401700096feb4a66              # double 5.7500359999999997
	.quad	0x3ffef7574f722e1b              # double 1.9353860000000001
	.quad	0x4017e3fa6defc7a4              # double 5.9726350000000004
	.quad	0x40235355043e5322              # double 9.6627580000000002
	.quad	0x4008dd9ba1b19610              # double 3.1082070000000002
	.quad	0x3ff7740d4dc65c70              # double 1.4658329999999999
	.quad	0x3ff0397891e21533              # double 1.0140309999999999
	.quad	0x3ff8a9a2c669057d              # double 1.541415
	.quad	0x40209c9cf56eac86              # double 8.305885
	.quad	0x4016b8205ff1d81f              # double 5.6798109999999999
	.quad	0x3fe113b18dac258d              # double 0.53365399999999996
	.quad	0x3fe3951e75360d02              # double 0.61195299999999997
	.quad	0x401e0ff3ade225fa              # double 7.5155779999999996
	.quad	0x40013a554b8bef8d              # double 2.153483
	.quad	0x4001456de33269e0              # double 2.1589010000000002
	.quad	0x400ca96787ce95fb              # double 3.5827170000000002
	.quad	0x40134ee17a02fb5d              # double 4.827032
	.quad	0x3ff831572580c309              # double 1.512046
	.quad	0x401cd03ff69014b6              # double 7.2033690000000004
	.quad	0x401dfb31c219eb64              # double 7.4953070000000004
	.quad	0x40203521dda059a7              # double 8.1037739999999996
	.quad	0x40187f69014b599b              # double 6.1244240000000003
	.quad	0x40149070fbeb9e49              # double 5.1410559999999998
	.quad	0x3ff5e2f166e008ea              # double 1.3679060000000001
	.quad	0x4013620e1f7d73c9              # double 4.8457569999999999
	.quad	0x3fcfdfdac68a936c              # double 0.24901899999999999
	.quad	0x400ec0791c4b9021              # double 3.8439809999999999
	.quad	0x4023c887ebf22c02              # double 9.8916620000000002
	.quad	0x40109de7a743a648              # double 4.154204
	.quad	0x40211d245b291b82              # double 8.5569179999999996
	.quad	0x4021825a250f8402              # double 8.7545940000000009
	.quad	0x401f69abf3387161              # double 7.8531950000000003
	.quad	0x3ffc49a9973d9ec7              # double 1.767984
	.quad	0x40054d5d80e496ee              # double 2.662776
	.quad	0x401f287160956c0d              # double 7.7894949999999996
	.quad	0x4007c25e99e94ab2              # double 2.9699070000000001
	.quad	0x40072ddce7cd0353              # double 2.8973939999999998
	.quad	0x4023275ad96a6a01              # double 9.5768649999999997
	.quad	0x3fb556b00ffda405              # double 0.083353999999999998
	.quad	0x40121b599aa60914              # double 4.5267090000000003
	.quad	0x40133de5082cf52c              # double 4.8104440000000004
	.quad	0x400c571865519371              # double 3.5425270000000002
	.quad	0x401732b27cbf6e3f              # double 5.7995089999999996
	.quad	0x400cbd80e496edee              # double 3.5925310000000001
	.quad	0x40117318fc504817              # double 4.3624000000000001
	.quad	0x401b73161a1db878              # double 6.8623890000000003
	.quad	0x400dd274e22a2c23              # double 3.7277619999999998
	.quad	0x400d5536933a0408              # double 3.6666080000000001
	.quad	0x3fe408d8ec95bff0              # double 0.62607999999999997
	.quad	0x3fef97507e9d94d1              # double 0.98722100000000001
	.quad	0x401e5fd86a8fc0d3              # double 7.5935990000000002
	.quad	0x40122c215b9a5a8a              # double 4.5430960000000002
	.quad	0x401657518b0d0edc              # double 5.5852719999999998
	.quad	0x40207c86cebbba56              # double 8.2432160000000003
	.quad	0x4021f079e59f2baa              # double 8.9696800000000003
	.quad	0x3fd690ea9e6eeb70              # double 0.35259499999999999
	.quad	0x4021771172ef0ae5              # double 8.7325549999999996
	.quad	0x4021fd6eac860568              # double 8.9949849999999998
	.quad	0x3fea82eec7c957cd              # double 0.82848299999999997
	.quad	0x400cf56d19dece57              # double 3.619837
	.quad	0x402040919ef954eb              # double 8.1261109999999999
	.quad	0x401ce0b88ca3e7d1              # double 7.2194539999999998
	.quad	0x40135a272862f599              # double 4.8380400000000003
	.quad	0x40220aa305532618              # double 9.0207750000000004
	.quad	0x40226f6c2699c7bd              # double 9.2176220000000004
	.quad	0x4015bf062d40aaeb              # double 5.436547
	.quad	0x401b3e89eba6aca8              # double 6.8110730000000004
	.quad	0x400a17f737da61e1              # double 3.2617020000000001
	.quad	0x4014bfadf2ecf206              # double 5.1871869999999998
	.quad	0x400e1aa68f4b61fe              # double 3.7630129999999999
	.quad	0x3ffc45dc8323358f              # double 1.767056
	.quad	0x400339bb2788db05              # double 2.4031889999999998
	.quad	0x401a5714b9cb6849              # double 6.5850400000000002
	.quad	0x40105b38d60a6330              # double 4.0890839999999997
	.quad	0x3ff93ffbce4217d3              # double 1.5781210000000001
	.quad	0x400c70b178b37004              # double 3.5550259999999998
	.quad	0x4023c3c9eecbfb16              # double 9.8824000000000005
	.quad	0x402360a30db6a1e8              # double 9.6887439999999998
	.quad	0x40161947064ece9a              # double 5.5246849999999998
	.quad	0x4020d8f40e5a35d6              # double 8.4237369999999991
	.quad	0x40197b54195cc858              # double 6.370438
	.quad	0x3ffb82528ae74f2f              # double 1.719317
	.quad	0x4023af316e371540              # double 9.8421739999999999
	.quad	0x400905fd8adab9f5              # double 3.1279249999999998
	.quad	0x4023641f212d7732              # double 9.6955500000000008
	.quad	0x4012ac18b502abac              # double 4.6680630000000001
	.quad	0x3ff2b1e5c0b99913              # double 1.1684319999999999
	.quad	0x401eefcf80dc3372              # double 7.7341899999999999
	.quad	0x4010c5d5b24e9c45              # double 4.1931979999999998
	.quad	0x400fa10060780fdc              # double 3.953614
	.quad	0x3fe395011904b3c4              # double 0.61193900000000001
	.quad	0x40068a8c154c985f              # double 2.81765
	.quad	0x4012e47cfa26a22b              # double 4.7231329999999998
	.quad	0x400223fa2ad3e921              # double 2.2675670000000001
	.quad	0x400de48c7192ea53              # double 3.736596
	.quad	0x3fd827fa1a0cf180              # double 0.37744
	.quad	0x402314e5f7403dde              # double 9.5408170000000005
	.quad	0x3ff5f0c996b7670a              # double 1.371286
	.quad	0x401b18427418d691              # double 6.7736910000000004
	.quad	0x401539491f2dc2b1              # double 5.3059430000000001
	.quad	0x401467add15f02c5              # double 5.1012490000000001
	.quad	0x3ff5dd5a187a4a49              # double 1.366541
	.quad	0x3fc9a493c89f40a3              # double 0.20033500000000001
	.quad	0x4013c15d701d9f4d              # double 4.9388329999999998
	.quad	0x4015482a9930be0e              # double 5.3204750000000001
	.quad	0x4015657603925bb8              # double 5.3490830000000003
	.quad	0x401de0728e92d55a              # double 7.4691869999999998
	.quad	0x401e2f3bea91d9b2              # double 7.5461270000000003
	.quad	0x4021c8a6fc58ab93              # double 8.8918990000000004
	.quad	0x40201e338b47c73f              # double 8.0589870000000001
	.quad	0x4022d708893b7d85              # double 9.4199870000000007
	.quad	0x4018150b0f27bb30              # double 6.0205500000000001
	.quad	0x400d70121682f944              # double 3.6797219999999999
	.quad	0x400e258dde7a743a              # double 3.7683369999999998
	.quad	0x3ff9814d72799a20              # double 1.594068
	.quad	0x40211b352a843809              # double 8.5531400000000009
	.quad	0x400591e75360d024              # double 2.6962419999999998
	.quad	0x3fe74d099e0e7360              # double 0.72815399999999997
	.quad	0x3fdd9884c6a3bde0              # double 0.46243400000000001
	.quad	0x400195d9a0f0a5f0              # double 2.198169
	.quad	0x3fe578183f91e647              # double 0.67091000000000001
	.quad	0x402233526527a205              # double 9.1002379999999992
	.quad	0x4022bb517a46173c              # double 9.3658560000000008
	.quad	0x4008421ea35935fc              # double 3.0322849999999999
	.quad	0x401f7e279dd3bafe              # double 7.8731980000000004
	.quad	0x402366b65a9a8049              # double 9.7006099999999992
	.quad	0x4021969d7342edbb              # double 8.7941699999999994
	.quad	0x40207ba1d323fee3              # double 8.2414690000000004
	.quad	0x3fe0ce1c58255b03              # double 0.52515999999999996
	.quad	0x3fa4b5568e820e63              # double 0.040446000000000003
	.quad	0x3fdf0b1feeb2d0a2              # double 0.48505399999999999
	.quad	0x401f5ab9b23dd54e              # double 7.8385990000000003
	.quad	0x4023638da3c21188              # double 9.6944400000000001
	.quad	0x40215f774aba3876              # double 8.6864570000000008
	.quad	0x40239ad2dcb1465f              # double 9.8023900000000008
	.quad	0x40220294bbe4473d              # double 9.0050410000000003
	.quad	0x40110018611fd588              # double 4.2500929999999997
	.quad	0x40199a3400b88ca4              # double 6.4005890000000001
	.quad	0x401ef4fb97bb7308              # double 7.7392409999999998
	.quad	0x401e5bd09e12a51e              # double 7.5896629999999998
	.quad	0x3fc85aff2a172abf              # double 0.190277
	.quad	0x401fa147ae147ae1              # double 7.9074999999999997
	.quad	0x40232b4d6a161e4f              # double 9.5845749999999991
	.quad	0x401b542a23bff8a9              # double 6.832192
	.quad	0x40027c6195464dc2              # double 2.3107329999999999
	.quad	0x4018b64388ebcc6c              # double 6.1779919999999997
	.quad	0x401d957470eb24a7              # double 7.3959520000000003
	.quad	0x4022a7036c9c0a8d              # double 9.3261979999999998
	.quad	0x4008d76e6106ab15              # double 3.105191
	.quad	0x401ccf6598e10cf6              # double 7.2025360000000003
	.quad	0x400abbd512ec6bcf              # double 3.3417150000000002
	.quad	0x402051f2dc2b0ea2              # double 8.1600560000000009
	.quad	0x4010b759ee88df37              # double 4.1790539999999998
	.quad	0x401f23a53b8e4b88              # double 7.7848100000000002
	.quad	0x40101f01322f2735              # double 4.030278
	.quad	0x4001b99bb2788db0              # double 2.2156289999999998
	.quad	0x401a5650e779207d              # double 6.5842929999999997
	.quad	0x4002c1f080303c08              # double 2.344697
	.quad	0x3ff1acaab8a5ce5b              # double 1.1046549999999999
	.quad	0x3fc989ce4a7b4e55              # double 0.199518
	.quad	0x401b0b2c40d0aaa8              # double 6.7609110000000001
	.quad	0x40203963fdd65a14              # double 8.1120909999999994
	.quad	0x402313d3804534bd              # double 9.5387229999999991
	.quad	0x401c627bb2fec56d              # double 7.0961749999999997
	.quad	0x3fec18fc504816f0              # double 0.87805
	.quad	0x40039fba450acc0c              # double 2.4529920000000001
	.quad	0x400906e32e3821af              # double 3.1283629999999998
	.quad	0x401d812018a43bb4              # double 7.376099
	.quad	0x4014e780346dc5d6              # double 5.2260749999999998
	.quad	0x40045bc2b94d9408              # double 2.5448050000000002
	.quad	0x4023d39085f4a127              # double 9.9132119999999996
	.quad	0x401d9be76c8b4396              # double 7.4022500000000004
	.quad	0x3ff5ab191dde3758              # double 1.3542719999999999
	.quad	0x402233a1b1960fa1              # double 9.1008429999999993
	.quad	0x4015f7839cd8127b              # double 5.4917129999999998
	.quad	0x401dcd6bebe1650a              # double 7.4506069999999998
	.quad	0x3ffe8059210385c6              # double 1.9063349999999999
	.quad	0x4023ca89dadfb507              # double 9.8955830000000002
	.quad	0x3fc5590c0ad03d9b              # double 0.16678000000000001
	.quad	0x401808709741d085              # double 6.0082420000000001
	.quad	0x3ff384cf0739b025              # double 1.219924
	.quad	0x3fff2d06fef7c244              # double 1.948493
	.quad	0x4022974623d0bfa1              # double 9.2954570000000007
	.quad	0x4022258a32f44913              # double 9.0733200000000007
	.quad	0x4013cfae3608d089              # double 4.9528129999999999
	.quad	0x3ffecd141a6937d2              # double 1.925068
	.quad	0x4020800a9de8b3b3              # double 8.2500809999999998
	.quad	0x401b2ad794a6eb92              # double 6.7918380000000003
	.quad	0x3ff4c05b39e279dd              # double 1.2969619999999999
	.quad	0x4010c519bd4067cf              # double 4.1924809999999999
	.quad	0x4022df03d145d851              # double 9.4355759999999992
	.quad	0x40174181e03f7058              # double 5.8139719999999997
	.quad	0x401c7b2702a3486f              # double 7.120266
	.quad	0x401919b0ab2e1694              # double 6.2750880000000002
	.quad	0x401b0e40c8472c0e              # double 6.7639189999999996
	.quad	0x401f83a7daa4fca4              # double 7.8785699999999999
	.quad	0x40063d744f5d3565              # double 2.7800069999999999
	.quad	0x401cf75536933a04              # double 7.241536
	.quad	0x3fe30bd017dae819              # double 0.59519200000000005
	.quad	0x3ff3eb3dd11be6e6              # double 1.2449319999999999
	.quad	0x40155686e7e62dc7              # double 5.3344990000000001
	.quad	0x3feeb9756c93a711              # double 0.96013899999999996
	.quad	0x4012a3fa6defc7a4              # double 4.6601350000000004
	.quad	0x40106919ef954eb1              # double 4.1026379999999998
	.quad	0x401c64c9c90c4dec              # double 7.0984259999999999
	.quad	0x3ff0ab356da0168b              # double 1.0417989999999999
	.quad	0x3ff0a8d434a01abd              # double 1.041218
	.quad	0x3ff984e0daa0cae6              # double 1.5949409999999999
	.quad	0x400d45d95dd4c76d              # double 3.659106
	.quad	0x401f298c3b0c4589              # double 7.7905740000000003
	.quad	0x40227af33ca31e7e              # double 9.2401370000000007
	.quad	0x40063c10d7be9857              # double 2.7793290000000002
	.quad	0x4022a147ae147ae1              # double 9.3149999999999995
	.quad	0x40227821f2990f30              # double 9.2346339999999998
	.quad	0x40235fea5f84cad5              # double 9.6873349999999991
	.quad	0x4000b2b90a782907              # double 2.0872670000000002
	.quad	0x40232bb3c81908e6              # double 9.5853560000000009
	.quad	0x4021af1886df82b2              # double 8.8419840000000001
	.quad	0x4008dfc2a8869c67              # double 3.1092580000000001
	.quad	0x401fc5fd8adab9f5              # double 7.9433499999999996
	.quad	0x40032b838c111ada              # double 2.3962469999999998
	.quad	0x4002410a569b1748              # double 2.281758
	.quad	0x4021a353f7ced917              # double 8.8190000000000008
	.quad	0x401bc4bbe4473cd5              # double 6.9421229999999996
	.quad	0x4004198e10cf5b1d              # double 2.5124780000000002
	.quad	0x401bf4f1e4b44a1f              # double 6.989204
	.quad	0x3ffc997e56473472              # double 1.787474
	.quad	0x4021ce5f5275ee9a              # double 8.9030710000000006
	.quad	0x3febc32a8c9b8455              # double 0.86757399999999996
	.quad	0x3ffda16616b54e2b              # double 1.851904
	.quad	0x4023205f06f69446              # double 9.5632249999999992
	.quad	0x402386935b91f70e              # double 9.7628430000000002
	.quad	0x3fd914445aa2e3c5              # double 0.39186199999999999
	.quad	0x401b4c258d5842b7              # double 6.8243619999999998
	.quad	0x4021131572580c31              # double 8.5372730000000008
	.quad	0x401cfbff04577d95              # double 7.2460899999999997
	.quad	0x401b2c443914f484              # double 6.7932290000000002
	.quad	0x3fe8ae87d2c7b891              # double 0.77130500000000002
	.quad	0x400bb3e2d6238da4              # double 3.4628350000000001
	.quad	0x3fe6ac6cdaf4adbc              # double 0.70854799999999996
	.quad	0x4023eb93ee5eedcc              # double 9.9601129999999997
	.quad	0x40222325b317efe1              # double 9.0686470000000003
	.quad	0x401f46b97fe8ee6c              # double 7.8190670000000004
	.quad	0x4013ee97d06bbdbe              # double 4.9830009999999998
	.quad	0x3ff44cb8e086bdf5              # double 1.2687310000000001
	.quad	0x401eb11233df2a9d              # double 7.6729209999999996
	.quad	0x4021d71ed17c5ef6              # double 8.9201569999999997
	.quad	0x4019f29ae4f33440              # double 6.4869190000000003
	.quad	0x4004632ebe596c83              # double 2.5484290000000001
	.quad	0x4022339d7fd82774              # double 9.1008110000000002
	.quad	0x4020b0420f6f08cc              # double 8.3442539999999993
	.quad	0x4015b5803cd141a7              # double 5.4272470000000004
	.quad	0x3ffce15ca6ca03c5              # double 1.8050200000000001
	.quad	0x400b29d9d3458cd2              # double 3.395435
	.quad	0x40236b0ab2e1693c              # double 9.7090659999999999
	.quad	0x3ffc9bc44bf4cb19              # double 1.7880290000000001
	.quad	0x401dcc5b078d92fb              # double 7.4495659999999999
	.quad	0x4016619ce075f6fd              # double 5.5953249999999999
	.quad	0x4001873c4f3ba776              # double 2.191033
	.quad	0x3fd31bb4916ca46e              # double 0.298566
	.quad	0x40187393682730c6              # double 6.1128669999999996
	.quad	0x4003afa8b4bf8fcd              # double 2.4607709999999998
	.quad	0x4012216052502eec              # double 4.5325939999999996
	.quad	0x4021dcb4aec8d5c7              # double 8.9310659999999995
	.quad	0x4007131a08bfc222              # double 2.8843269999999999
	.quad	0x4004d80c308feac4              # double 2.6054919999999999
	.quad	0x4015812f4cf4a559              # double 5.3761570000000001
	.quad	0x40238582fd75e204              # double 9.7607649999999992
	.quad	0x4017156fb8f57f73              # double 5.7709339999999996
	.quad	0x4019e77ff151e753              # double 6.4760739999999997
	.quad	0x40202ded6ba8c587              # double 8.0897020000000008
	.quad	0x4005a738a3b57c4e              # double 2.7066509999999999
	.quad	0x40189fe60c38f367              # double 6.1561510000000004
	.quad	0x4007717b5286b591              # double 2.9304109999999999
	.quad	0x3ff58abc5154866a              # double 1.346371
	.quad	0x4006c5718eb89507              # double 2.8464079999999998
	.quad	0x4006e5cbbc2b94d9              # double 2.8622049999999999
	.quad	0x4005af6dfc5cdd51              # double 2.7106590000000002
	.quad	0x4013b8ab0c88a47f              # double 4.9303400000000002
	.quad	0x40229c85c24c404a              # double 9.3057079999999992
	.quad	0x400d0c9081c2e33f              # double 3.631135
	.quad	0x4004c86b59146e4c              # double 2.597861
	.quad	0x401a38a47ecfe9b8              # double 6.5553150000000002
	.quad	0x402254cf8d716d2b              # double 9.1656460000000006
	.quad	0x40228d5714b9cb68              # double 9.2760549999999994
	.quad	0x3f92fd75e2046c76              # double 0.018544999999999999
	.quad	0x40225afc2656abde              # double 9.1777049999999996
	.quad	0x4022048abd5dc400              # double 9.0088709999999992
	.quad	0x40041bb517a46174              # double 2.5135290000000001
	.quad	0x4022064649906cca              # double 9.0122549999999997
	.quad	0x4022fd816aceaaf3              # double 9.4951279999999993
	.quad	0x3ff850b30b5aa716              # double 1.5197020000000001
	.quad	0x40105db2702a3487              # double 4.0915010000000001
	.quad	0x40004c36da87a073              # double 2.0372140000000001
	.quad	0x401170589acbc8c1              # double 4.3597130000000002
	.quad	0x40235b430f49491f              # double 9.6782459999999996
	.quad	0x400c09f2fdb8fde3              # double 3.504858
	.quad	0x3fd675536933a040              # double 0.35091099999999997
	.quad	0x4020cd4f5903a754              # double 8.4009959999999992
	.quad	0x4022ac63065f9592              # double 9.3366930000000004
	.quad	0x3fe0fe38eb0318b9              # double 0.53103299999999998
	.quad	0x40221750e3476295              # double 9.0455389999999998
	.quad	0x4012da5efe931876              # double 4.7132529999999999
	.quad	0x400a1f06705c896e              # double 3.2651490000000001
	.quad	0x40139cd35a858794              # double 4.9031500000000001
	.quad	0x4002cfaf85942917              # double 2.3514089999999999
	.quad	0x40104b9f127f5e85              # double 4.0738490000000001
	.quad	0x3ff21e6cd29131ec              # double 1.132428
	.quad	0x3fcea26e5471715c              # double 0.23933199999999999
	.quad	0x401d2604189374bc              # double 7.2871249999999996
	.quad	0x4020842352eb5f5f              # double 8.2580819999999999
	.quad	0x4022453111f0c34c              # double 9.1351399999999998
	.quad	0x4022a6601bc98a22              # double 9.3249519999999997
	.quad	0x400da62cba732df5              # double 3.70614
	.quad	0x4017c5d56f32bdc2              # double 5.9431969999999996
	.quad	0x40182de657b84dba              # double 6.0448240000000002
	.quad	0x400fa8c79f666235              # double 3.9574120000000002
	.quad	0x4009b6d5cfaacd9f              # double 3.2142750000000002
	.quad	0x4001262f5989df11              # double 2.1436449999999998
	.quad	0x4014e32ca57a786c              # double 5.2218499999999999
	.quad	0x4003642fa5093965              # double 2.4239190000000002
	.quad	0x4023e3d61f5be5da              # double 9.9449930000000002
	.quad	0x402374753e707e17              # double 9.7274569999999993
	.quad	0x402257ad6cb53501              # double 9.1712450000000008
	.quad	0x4023e00de4c51117              # double 9.9376060000000006
	.quad	0x401268262456f75e              # double 4.6017080000000004
	.quad	0x402208eb8950763a              # double 9.0174219999999998
	.quad	0x401ce85942917508              # double 7.2269030000000001
	.quad	0x400250d6b228dc98              # double 2.289472
	.quad	0x40100dc1615ebfa9              # double 4.013433
	.quad	0x4020fc6d82ba5a04              # double 8.4930230000000008
	.quad	0x3ff93af859429175              # double 1.576897
	.quad	0x4014540cc78e9f6b              # double 5.0820800000000004
	.quad	0x3fd9e5eedcc20d56              # double 0.40465899999999999
	.quad	0x400a8d256798958e              # double 3.3189190000000002
	.quad	0x400ab0d49949e881              # double 3.3363429999999998
	.quad	0x400e94f0d844d014              # double 3.8227250000000002
	.quad	0x4023b61e4f765fd9              # double 9.8557000000000005
	.quad	0x401f363c31df761d              # double 7.8029640000000002
	.quad	0x401ad6223e186983              # double 6.7091149999999997
	.quad	0x400b800e27e0ef9a              # double 3.4375270000000002
	.quad	0x40083b4784230fd0              # double 3.0289450000000002
	.quad	0x402136a5d6bebe16              # double 8.6067339999999994
	.quad	0x40231a30984e3fff              # double 9.551152
	.quad	0x40232d57de0d66f1              # double 9.5885610000000003
	.quad	0x402285d206c8711d              # double 9.2613679999999992
	.quad	0x40205b9abf338716              # double 8.1789149999999999
	.quad	0x400b9bbd7b2031cf              # double 3.4510450000000001
	.quad	0x4021468ff327aa69              # double 8.6378170000000001
	.quad	0x40183d43d03968d7              # double 6.0598289999999997
	.quad	0x40056772d5e071c5              # double 2.6755119999999999
	.quad	0x4018dd6c72192210              # double 6.216234
	.quad	0x4018febc83a96d4c              # double 6.2487659999999998
	.quad	0x3fbb8487b99d4520              # double 0.107491
	.quad	0x402376b8f9b13166              # double 9.7318800000000003
	.quad	0x3fbda3c21187e7c0              # double 0.11577999999999999
	.quad	0x401cd530489d27c4              # double 7.2081920000000004
	.quad	0x400b761bb05faebc              # double 3.4326699999999999
	.quad	0x4009f87b56b87379              # double 3.2463289999999998
	.quad	0x4012e22f2734f82f              # double 4.7208829999999997
	.quad	0x40226a3b7952d235              # double 9.2074850000000001
	.quad	0x4009b46b26bf876a              # double 3.213095
	.quad	0x40214e97f1f9ad00              # double 8.6535030000000006
	.quad	0x4008f78ab0c88a48              # double 3.12087
	.quad	0x4003f3b96af038e3              # double 2.4940060000000002
	.quad	0x400b5bacb4289119              # double 3.4197630000000001
	.quad	0x401fc39eadd590c1              # double 7.9410350000000002
	.quad	0x400cdc0096feb4a6              # double 3.6074229999999998
	.quad	0x4022aed330941c82              # double 9.3414549999999998
	.quad	0x401bdb5c7cd898b3              # double 6.9642200000000001
	.quad	0x401df959e6256367              # double 7.4935070000000001
	.quad	0x3ffdfaba7b9170d6              # double 1.873713
	.quad	0x4000b8d045fe1112              # double 2.0902409999999998
	.quad	0x401d4528ae74f2f1              # double 7.3175379999999999
	.quad	0x4013ffb1e18efbb1              # double 4.9997020000000001
	.quad	0x400276e371540032              # double 2.3080509999999999
	.quad	0x402369246bf01323              # double 9.705356
	.quad	0x3ff52af89c5e6ff8              # double 1.322991
	.quad	0x40213d2deca2552a              # double 8.619491
	.quad	0x3ffd1cf7878b7a1c              # double 1.819572
	.quad	0x3fe6fd0d0678c005              # double 0.71838999999999997
	.quad	0x40041a0f0a5efe93              # double 2.512724
	.quad	0x40132189374bc6a8              # double 4.7827500000000001
	.quad	0x4005468123810e88              # double 2.6594259999999998
	.quad	0x401442c01e68a0d3              # double 5.0651859999999997
	.quad	0x4013ca2b5a20ddc6              # double 4.9474309999999999
	.quad	0x3fc2387df5cf2496              # double 0.142349
	.quad	0x4023c6147ae147ae              # double 9.8868749999999999
	.quad	0x400ae4b33daf8df8              # double 3.3616700000000002
	.quad	0x3ffa6b4d8ba40d91              # double 1.651197
	.quad	0x40188f3519bd4068              # double 6.1398510000000002
	.quad	0x3fe4a09edbf8b9bb              # double 0.64460700000000004
	.quad	0x3fd4b3c81908e582              # double 0.32347300000000001
	.quad	0x3ffa2cbc8c0ce91d              # double 1.6359220000000001
	.quad	0x402155306a2b1705              # double 8.666385
	.quad	0x40044a077036c9c1              # double 2.5361470000000002
	.quad	0x4023fa2db61bb060              # double 9.9886300000000006
	.quad	0x4015a294573a7979              # double 5.4087690000000004
	.quad	0x401d0d5c74751ce3              # double 7.2630480000000004
	.quad	0x4020a2ce032db1ea              # double 8.3179780000000001
	.quad	0x401484a5df2239e7              # double 5.1295390000000003
	.quad	0x401963f39d1b2e5a              # double 6.3476090000000003
	.quad	0x4020dad080b673c5              # double 8.4273720000000001
	.quad	0x40209f5a964e8b7e              # double 8.3112379999999995
	.quad	0x3ff37a2df9378ee3              # double 1.2173290000000001
	.quad	0x4012cae2541d8e86              # double 4.6981289999999998
	.quad	0x40225909aed56b01              # double 9.173902
	.quad	0x40143bfdf7e8038a              # double 5.058586
	.quad	0x401176dca07f66e8              # double 4.3660759999999996
	.quad	0x3ff5d96e9bbf0dc7              # double 1.3655839999999999
	.quad	0x4018b57470eb24a7              # double 6.1772020000000003
	.quad	0x3fe024acf312b1b3              # double 0.50447699999999995
	.quad	0x3ffec1bfbdf090f7              # double 1.922302
	.quad	0x4022bc6c97d8cf3a              # double 9.3680160000000008
	.quad	0x4016727d88c1db01              # double 5.6118069999999998
	.quad	0x4020a0f5c28f5c29              # double 8.3143750000000001
	.quad	0x3fe4c779a6b50b0f              # double 0.64934999999999998
	.quad	0x40207b9de481f538              # double 8.2414389999999997
	.quad	0x4016c43201040bfe              # double 5.6915969999999998
	.quad	0x4012f77574f722e2              # double 4.7416590000000003
	.quad	0x3ff396249a133c1d              # double 1.224156
	.quad	0x3fb81083dbc23316              # double 0.094002000000000002
	.quad	0x400138c2a454de7f              # double 2.1527150000000002
	.quad	0x402236d71f36262d              # double 9.1071100000000005
	.quad	0x4023b1d68c692f6f              # double 9.8473400000000008
	.quad	0x401ee1187e7c06e2              # double 7.7198200000000003
	.quad	0x4017ed30f062d40b              # double 5.9816320000000003
	.quad	0x3fd639bcba301217              # double 0.34727400000000003
	.quad	0x3ffb0765ba6efc37              # double 1.689306
	.quad	0x400213dc8b86b160              # double 2.2596980000000002
	.quad	0x40216f69a91105e2              # double 8.7176030000000004
	.quad	0x402202f8bdec5f39              # double 9.0058039999999995
	.quad	0x3ffef343fa2ad3e9              # double 1.934391
	.quad	0x3fc7a1a93293d103              # double 0.18462100000000001
	.quad	0x401fa2ed352220bc              # double 7.9091079999999998
	.quad	0x3ff2c254a3c64346              # double 1.172444
	.quad	0x4010dff1d81f1066              # double 4.2186959999999996
	.quad	0x40188677f6b1a2a5              # double 6.1313170000000001
	.quad	0x40183a543f1c7582              # double 6.0569620000000004
	.quad	0x402043eb399f5dff              # double 8.1326540000000005
	.quad	0x401deabc947064ed              # double 7.4792350000000001
	.quad	0x401ee690de093533              # double 7.725162
	.quad	0x40231ca2b9d3cbc5              # double 9.5559290000000007
	.quad	0x3fe2921ee675147f              # double 0.58033699999999999
	.quad	0x4011ff6273929ed4              # double 4.4993990000000004
	.quad	0x401ead3b29a1b9fa              # double 7.6691710000000004
	.quad	0x401dc05ff1d81f10              # double 7.4378659999999996
	.quad	0x401da345069a4df4              # double 7.4094429999999996
	.quad	0x4006a67839cd8128              # double 2.8312840000000001
	.quad	0x3feebd1244a6223e              # double 0.96057999999999999
	.quad	0x401c325aab474107              # double 7.0491739999999998
	.quad	0x402284b252ce032e              # double 9.2591730000000005
	.quad	0x400ab804534bd76f              # double 3.339852
	.quad	0x3fec6a4441787054              # double 0.88797199999999998
	.quad	0x40228e5f0f5a1017              # double 9.2780690000000003
	.quad	0x400c5fc19c17225b              # double 3.5467559999999998
	.quad	0x402035c4c9c90c4e              # double 8.1050170000000001
	.quad	0x3fe5e779207d4e09              # double 0.68450599999999995
	.quad	0x4009d38151a43782              # double 3.2282739999999999
	.quad	0x40194903211cb03a              # double 6.3213010000000001
	.quad	0x401c918def416bdb              # double 7.1421429999999999
	.quad	0x4016d1b79d909f1f              # double 5.7048019999999999
	.quad	0x40195dc4007570c5              # double 6.3415679999999996
	.quad	0x4012b42070b8cfc0              # double 4.6759050000000002
	.quad	0x40180133c1ce6c09              # double 6.0011739999999998
	.quad	0x3fe0cbad7d7c2ca1              # double 0.52486299999999997
	.quad	0x401b45a31a4bdba1              # double 6.8180050000000003
	.quad	0x3fe013f077ccc038              # double 0.50243400000000005
	.quad	0x401d3c0d6f544bb2              # double 7.3086450000000003
	.quad	0x402267f21b3aeee9              # double 9.2030189999999994
	.quad	0x40213dfa658c4bd3              # double 8.6210509999999996
	.quad	0x400cdb9cf9a06a6e              # double 3.6072329999999999
	.quad	0x400b785b5b70691f              # double 3.4337680000000002
	.quad	0x4014110342aa9f7b              # double 5.0166139999999997
	.quad	0x4022bffd1dcd7061              # double 9.3749780000000004
	.quad	0x4023b4f91a32b12d              # double 9.8534629999999996
	.quad	0x3fe7cd466f5019f4              # double 0.74380800000000002
	.quad	0x4021d2a1f8e3ac0c              # double 8.9113919999999993
	.quad	0x401ed93bc0a06ea0              # double 7.7121420000000001
	.quad	0x400f3e6ddf00abf7              # double 3.9054829999999998
	.quad	0x3ffe116ca46e08f2              # double 1.879254
	.quad	0x401e37268d32830a              # double 7.553858
	.quad	0x4011bfd04a2fcefb              # double 4.4373180000000003
	.quad	0x400c554fbdad7519              # double 3.5416560000000001
	.quad	0x4020142c7fbacb43              # double 8.0394020000000008
	.quad	0x40203f9702e6644e              # double 8.1241990000000008
	.quad	0x4020adea24cc6823              # double 8.339677
	.quad	0x401c1a6d26740810              # double 7.0258070000000004
	.quad	0x401765753a3ec02f              # double 5.8490799999999998
	.quad	0x3ff01085f4a1272d              # double 1.0040340000000001
	.quad	0x3fdc93532e7b3d8e              # double 0.446492
	.quad	0x402268e4da09cc32              # double 9.2048710000000007
	.quad	0x3ff35536933a0408              # double 1.208304
	.quad	0x4013e5186db50f41              # double 4.9737260000000001
	.quad	0x3ffd3733a8a3f898              # double 1.825977
	.quad	0x3ff8d18f3eccc469              # double 1.5511619999999999
	.quad	0x401ddcb039ef0f17              # double 7.465516
	.quad	0x400af693c03bc4d2              # double 3.3703989999999999
	.quad	0x3fe560807357e671              # double 0.66803000000000001
	.quad	0x3ff2c42e9899bf59              # double 1.1728959999999999
	.quad	0x401d1c436fc158fb              # double 7.2776009999999998
	.quad	0x4015f7b07075b3e1              # double 5.4918839999999998
	.quad	0x4023c31b79d909f2              # double 9.8810690000000001
	.quad	0x4017dc1333b96af0              # double 5.9649169999999998
	.quad	0x40067a1fd1569f49              # double 2.809631
	.quad	0x401e50a915379fa9              # double 7.5787699999999995
	.quad	0x401cd450efdc9c4e              # double 7.2073400000000003
	.quad	0x401454983d790753              # double 5.0826120000000001
	.quad	0x40209ebce8533b10              # double 8.3100349999999992
	.quad	0x401c4f416bdb1a6d              # double 7.0773979999999996
	.quad	0x3fd98b3f63c31df7              # double 0.39912399999999998
	.quad	0x40175cdee34fc611              # double 5.8406940000000001
	.quad	0x401eef8a0902de01              # double 7.7339250000000001
	.quad	0x400ea54cdb7ae579              # double 3.8307129999999998
	.quad	0x40210700ef1348b2              # double 8.5136789999999998
	.quad	0x400508b11409a240              # double 2.6292439999999999
	.quad	0x4022c1d3ed527e52              # double 9.3785699999999999
	.quad	0x401b8b499d0203e6              # double 6.8860229999999998
	.quad	0x4021b8a5accd5305              # double 8.8606390000000008
	.quad	0x40116d15ad106ee3              # double 4.356528
	.quad	0x400dadeca25529fe              # double 3.709924
	.quad	0x4014737e2c55c960              # double 5.1127859999999998
	.quad	0x401aa0c88a47ecff              # double 6.6570150000000003
	.quad	0x401d3ea5f84cad58              # double 7.3111800000000002
	.quad	0x4019530728e92d56              # double 6.3310820000000003
	.quad	0x4021368a71de69ad              # double 8.6065249999999995
	.quad	0x40212fd7a13c254a              # double 8.5934419999999996
	.quad	0x40205473abc94706              # double 8.1649449999999995
	.quad	0x401917b8d3f1843c              # double 6.2731659999999998
	.quad	0x4021249b41398634              # double 8.5714970000000008
	.quad	0x4021a6a93f290abb              # double 8.8255099999999995
	.quad	0x400e0153bd167664              # double 3.750648
	.quad	0x4001338151a43782              # double 2.1501489999999999
	.quad	0x4014e3810e8858ff              # double 5.2221719999999996
	.quad	0x400f6bf444e0daa1              # double 3.9277120000000001
	.quad	0x401f7c03361565c3              # double 7.8711060000000001
	.quad	0x3ffa77d0f1f57b42              # double 1.6542520000000001
	.quad	0x4013152f3c2dadb8              # double 4.7706879999999998
	.quad	0x4022b91f70de8f6d              # double 9.3615680000000001
	.quad	0x400516102795703f              # double 2.6357729999999999
	.quad	0x4002dcf2cf95d4e9              # double 2.357885
	.quad	0x4020a42396073de2              # double 8.3205840000000002
	.quad	0x40152955714b9cb7              # double 5.2903650000000004
	.quad	0x4006a9ef5232d2bb              # double 2.8329759999999999
	.quad	0x4018c91105e1c151              # double 6.1963540000000004
	.quad	0x40116c2224edf612              # double 4.3555989999999998
	.quad	0x3feadf45e0b4e11e              # double 0.83975500000000003
	.quad	0x401e9256ffc115df              # double 7.6429099999999996
	.quad	0x402168ac9f2fdb90              # double 8.7044420000000002
	.quad	0x401b453f39d1b2e6              # double 6.8176240000000004
	.quad	0x3ffa412dfd694ccb              # double 1.6409130000000001
	.quad	0x3fdc08787485e3da              # double 0.43801699999999999
	.quad	0x401e7c2b94d94079              # double 7.6212600000000003
	.quad	0x400626fbd273d5bb              # double 2.7690350000000001
	.quad	0x401b3e996312f4cf              # double 6.8111319999999997
	.quad	0x40209b77e1b8ed1c              # double 8.303649
	.quad	0x40162d47bedb7282              # double 5.544219
	.quad	0x40238b3508f648c7              # double 9.7718889999999998
	.quad	0x40233771c970f7ba              # double 9.6082900000000002
	.quad	0x402010f66a550870              # double 8.0331299999999999
	.quad	0x3fd245e4e69f05ea              # double 0.28551599999999999
	.quad	0x4013bbe6601bc98a              # double 4.9334959999999999
	.quad	0x4017779c4113c686              # double 5.8668069999999997
	.quad	0x400184e3ffef3908              # double 2.1898879999999998
	.quad	0x401b49baa1511e00              # double 6.8220010000000002
	.quad	0x401b66598e10cf5b              # double 6.8499509999999999
	.quad	0x40233a66dbd72bcb              # double 9.6140659999999993
	.quad	0x401f4dfdac68a937              # double 7.8261630000000002
	.quad	0x4002c5a89b951c5c              # double 2.3465129999999998
	.quad	0x3fe6f08893b7d849              # double 0.716862
	.quad	0x4021b6a78af3e469              # double 8.8567470000000004
	.quad	0x3ff90ec204f2ae08              # double 1.566103
	.quad	0x401db46e8f29d40f              # double 7.4262030000000001
	.quad	0x4019060aa64c2f83              # double 6.2558999999999996
	.quad	0x401aac13b9f127f6              # double 6.6680440000000001
	.quad	0x4011a03bc4d22c88              # double 4.4064779999999999
	.quad	0x4021e28134480629              # double 8.9423919999999999
	.quad	0x400ca3f1c75818c6              # double 3.5800510000000001
	.quad	0x40203018e757928e              # double 8.0939399999999999
	.quad	0x4023b4ea28fe260b              # double 9.8533489999999996
	.quad	0x40128fbe33acd5b7              # double 4.6403740000000004
	.quad	0x401175a89b951c5c              # double 4.3649009999999997
	.quad	0x401a8f1f9acffa7f              # double 6.6397690000000003
	.quad	0x400a0c2b51bd61f6              # double 3.2559420000000001
	.quad	0x402276a6e32e3822              # double 9.2317420000000006
	.quad	0x400e8b07d0aed99d              # double 3.8178860000000001
	.quad	0x4001f12c27a63737              # double 2.2427600000000001
	.quad	0x401b629ae4f33440              # double 6.8462940000000003
	.quad	0x3fc3c58255b035bd              # double 0.15446499999999999
	.quad	0x4021933bb83cf2d0              # double 8.7875650000000007
	.quad	0x3fe1b71971c10d7c              # double 0.55360100000000001
	.quad	0x40136e0c9d9d3459              # double 4.8574700000000002
	.quad	0x401d70e2c12ad81b              # double 7.3602400000000001
	.quad	0x401c7dec5f394b7b              # double 7.1229719999999999
	.quad	0x400cb8d1526d8b1e              # double 3.5902430000000001
	.quad	0x4018bdda8bd230ba              # double 6.1854040000000001
	.quad	0x400cfe215336deb9              # double 3.6240869999999998
	.quad	0x4018cc4eb56fb8f5              # double 6.1995189999999996
	.quad	0x40126cc857f3061c              # double 4.6062329999999996
	.quad	0x4021ca595bbbe879              # double 8.895213
	.quad	0x40187f3e0370cdc8              # double 6.1242599999999996
	.quad	0x402024d0bb6ed677              # double 8.0719049999999992
	.quad	0x3fd10e736049ecb3              # double 0.26650699999999999
	.quad	0x40087fb1e18efbb1              # double 3.062351
	.quad	0x3f94be40420f6f09              # double 0.020257000000000001
	.quad	0x401010d5e8d54110              # double 4.0164410000000004
	.size	.L__constant_4000xf64, 32000

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
