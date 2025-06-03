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
	.quad	0x413fe3fd38a2b9d4              # double 2089981.221233
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
	.quad	55                              # 0x37
	.quad	87                              # 0x57
	.quad	111                             # 0x6f
	.quad	170                             # 0xaa
	.quad	202                             # 0xca
	.quad	232                             # 0xe8
	.quad	283                             # 0x11b
	.quad	310                             # 0x136
	.quad	351                             # 0x15f
	.quad	407                             # 0x197
	.quad	440                             # 0x1b8
	.quad	469                             # 0x1d5
	.quad	536                             # 0x218
	.quad	569                             # 0x239
	.quad	605                             # 0x25d
	.quad	658                             # 0x292
	.quad	689                             # 0x2b1
	.quad	726                             # 0x2d6
	.quad	777                             # 0x309
	.quad	810                             # 0x32a
	.quad	852                             # 0x354
	.quad	908                             # 0x38c
	.quad	943                             # 0x3af
	.quad	967                             # 0x3c7
	.quad	1022                            # 0x3fe
	.quad	1046                            # 0x416
	.quad	1075                            # 0x433
	.quad	1137                            # 0x471
	.quad	1167                            # 0x48f
	.quad	1196                            # 0x4ac
	.quad	1255                            # 0x4e7
	.quad	1281                            # 0x501
	.quad	1317                            # 0x525
	.quad	1370                            # 0x55a
	.quad	1396                            # 0x574
	.quad	1432                            # 0x598
	.quad	1481                            # 0x5c9
	.quad	1515                            # 0x5eb
	.quad	1546                            # 0x60a
	.quad	1598                            # 0x63e
	.quad	1628                            # 0x65c
	.quad	1665                            # 0x681
	.quad	1718                            # 0x6b6
	.quad	1754                            # 0x6da
	.quad	1785                            # 0x6f9
	.quad	1839                            # 0x72f
	.quad	1875                            # 0x753
	.quad	1904                            # 0x770
	.quad	1963                            # 0x7ab
	.quad	1993                            # 0x7c9
	.quad	2018                            # 0x7e2
	.quad	2074                            # 0x81a
	.quad	2106                            # 0x83a
	.quad	2138                            # 0x85a
	.quad	2201                            # 0x899
	.quad	2237                            # 0x8bd
	.quad	2262                            # 0x8d6
	.quad	2322                            # 0x912
	.quad	2344                            # 0x928
	.quad	2377                            # 0x949
	.quad	2428                            # 0x97c
	.quad	2463                            # 0x99f
	.quad	2491                            # 0x9bb
	.quad	2544                            # 0x9f0
	.quad	2587                            # 0xa1b
	.quad	2618                            # 0xa3a
	.quad	2674                            # 0xa72
	.quad	2710                            # 0xa96
	.quad	2741                            # 0xab5
	.quad	2794                            # 0xaea
	.quad	2827                            # 0xb0b
	.quad	2856                            # 0xb28
	.quad	2909                            # 0xb5d
	.quad	2941                            # 0xb7d
	.quad	2980                            # 0xba4
	.quad	3037                            # 0xbdd
	.quad	3069                            # 0xbfd
	.quad	3101                            # 0xc1d
	.quad	3158                            # 0xc56
	.quad	3189                            # 0xc75
	.quad	3223                            # 0xc97
	.quad	3278                            # 0xcce
	.quad	3311                            # 0xcef
	.quad	3339                            # 0xd0b
	.quad	3390                            # 0xd3e
	.quad	3420                            # 0xd5c
	.quad	3456                            # 0xd80
	.quad	3512                            # 0xdb8
	.quad	3541                            # 0xdd5
	.quad	3582                            # 0xdfe
	.quad	3636                            # 0xe34
	.quad	3660                            # 0xe4c
	.quad	3695                            # 0xe6f
	.quad	3757                            # 0xead
	.quad	3795                            # 0xed3
	.quad	3832                            # 0xef8
	.quad	3887                            # 0xf2f
	.quad	3913                            # 0xf49
	.quad	3944                            # 0xf68
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
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
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
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
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x3fd36ca03c4b09ea              # double 0.30350500000000002
	.quad	0x3ffcbc99ae924f22              # double 1.7960449999999999
	.quad	0x400c226f60e0eb68              # double 3.5168140000000001
	.quad	0x3fe8255f3519bd40              # double 0.75456199999999995
	.quad	0x402095ba2be0589b              # double 8.2924360000000004
	.quad	0x40066176ddaceee1              # double 2.79759
	.quad	0x40174c06e19b90eb              # double 5.8242450000000003
	.quad	0x3ffaac083126e979              # double 1.667
	.quad	0x4006a5ef62f9ca5c              # double 2.8310230000000001
	.quad	0x401041a9b8cb8e08              # double 4.0641239999999996
	.quad	0x4020b96db0dd82fd              # double 8.3621649999999992
	.quad	0x402001b13165d399              # double 8.0033049999999992
	.quad	0x401ce21682f94424              # double 7.2207889999999999
	.quad	0x401fb685553ef6b6              # double 7.9282430000000002
	.quad	0x401f1e542e557de1              # double 7.7796180000000001
	.quad	0x3ff5812599ed7c70              # double 1.3440300000000001
	.quad	0x3f5800a7c5ac471b              # double 0.0014649999999999999
	.quad	0x3fefc152b0a6fc59              # double 0.99234900000000003
	.quad	0x3fe4c18f81e8a2ec              # double 0.64862799999999998
	.quad	0x4003e12599ed7c70              # double 2.4849350000000001
	.quad	0x400c1d0203e63e8e              # double 3.5141640000000001
	.quad	0x3fc10cbaf965b20c              # double 0.13320100000000001
	.quad	0x3fe0b77e1b8ed1bf              # double 0.52239899999999995
	.quad	0x4023d3dc054ef45a              # double 9.9137880000000003
	.quad	0x3ff010092ccf6be3              # double 1.0039149999999999
	.quad	0x402273a732df505d              # double 9.2258849999999999
	.quad	0x3ffa180e496ededb              # double 1.630873
	.quad	0x4016110060780fdc              # double 5.5166029999999999
	.quad	0x3fe6291b823c85c2              # double 0.69251799999999997
	.quad	0x401e9a95c853c148              # double 7.6509619999999998
	.quad	0x401bc070b8cfbfc6              # double 6.9379299999999997
	.quad	0x4020173c4f3ba776              # double 8.045382
	.quad	0x40115bc33f85510d              # double 4.3396119999999998
	.quad	0x402120b029281776              # double 8.5638439999999996
	.quad	0x402281409a240315              # double 9.2524460000000008
	.quad	0x402085e8d5410f95              # double 8.2615420000000004
	.quad	0x400f18dcdb37c99b              # double 3.88714
	.quad	0x400af12a94ff0026              # double 3.3677570000000001
	.quad	0x4011fa1b9f98b71c              # double 4.4942460000000004
	.quad	0x401ffcd35a858794              # double 7.9969000000000001
	.quad	0x40219a456f75d9a1              # double 8.8013110000000001
	.quad	0x4011466cf41f212d              # double 4.3187749999999996
	.quad	0x401e010cf5b1c865              # double 7.5010260000000004
	.quad	0x4021bd992428d435              # double 8.8703090000000007
	.quad	0x3feba003ab862b28              # double 0.86328300000000002
	.quad	0x4013312be48a58b4              # double 4.798019
	.quad	0x4023a957eed45e92              # double 9.8307490000000008
	.quad	0x4020d0e7bc3c5bd1              # double 8.4080180000000002
	.quad	0x400b8c3b927d45a6              # double 3.443473
	.quad	0x40109d2a1f8e3ac1              # double 4.1534810000000002
	.quad	0x4020ac903ea704bc              # double 8.3370379999999997
	.quad	0x401b33111f0c34c2              # double 6.7998700000000003
	.quad	0x4023daead9274e23              # double 9.9275730000000006
	.quad	0x400c225204af9229              # double 3.5167579999999998
	.quad	0x401c08897e996313              # double 7.008337
	.quad	0x40031c1615ebfa8f              # double 2.3887139999999998
	.quad	0x40138de225fa658c              # double 4.8885579999999997
	.quad	0x401a2689ca18bd66              # double 6.5376349999999999
	.quad	0x40007e80389f83be              # double 2.0617679999999998
	.quad	0x3fda6c4827b6fe2e              # double 0.41285899999999998
	.quad	0x4011a2a8869c66d3              # double 4.4088459999999996
	.quad	0x40221917f84449dc              # double 9.0490110000000001
	.quad	0x4020c6f112fd32c6              # double 8.3885579999999997
	.quad	0x401071ed9dfdac69              # double 4.1112580000000003
	.quad	0x3ff3e467be553ac5              # double 1.243263
	.quad	0x4022a951a437824d              # double 9.3307009999999995
	.quad	0x400767e414e7ee91              # double 2.9257279999999999
	.quad	0x401ef2c01e68a0d3              # double 7.7370609999999997
	.quad	0x3fdf81ecd4aa10e0              # double 0.49230499999999999
	.quad	0x4011c46b26bf876a              # double 4.4418150000000001
	.quad	0x4004d8fde2ef4e01              # double 2.605953
	.quad	0x4017a6b97fe8ee6c              # double 5.9128170000000004
	.quad	0x401763f1c75818c6              # double 5.8476020000000002
	.quad	0x4002a0b912dba4d7              # double 2.328478
	.quad	0x401e4d5c31593e60              # double 7.5755470000000003
	.quad	0x3fc128954a7f8013              # double 0.134051
	.quad	0x3fd1461b6d43d039              # double 0.26990399999999998
	.quad	0x3ff528e60807357e              # double 1.3224849999999999
	.quad	0x3ff6ac1a048e043a              # double 1.417017
	.quad	0x401b667dbb16c1e3              # double 6.8500889999999997
	.quad	0x400b84ff43419e30              # double 3.43994
	.quad	0x401263dc486ad2dd              # double 4.5975200000000003
	.quad	0x401665dedf1e0829              # double 5.5994830000000002
	.quad	0x4002b0b955f7835a              # double 2.3362910000000001
	.quad	0x400a64b2314013ec              # double 3.2991679999999999
	.quad	0x401266598e10cf5b              # double 4.5999509999999999
	.quad	0x3fe8ba6698bb4d49              # double 0.77275400000000005
	.quad	0x401dd27b6fe2e6eb              # double 7.4555490000000004
	.quad	0x3ff7ea497fa5d28d              # double 1.494699
	.quad	0x400bf826edaa92e6              # double 3.4961679999999999
	.quad	0x4006daa715831f04              # double 2.8567640000000001
	.quad	0x3fa109d0635a426c              # double 0.033278000000000002
	.quad	0x4008d505d0fa58f7              # double 3.104015
	.quad	0x40125301a79fec9a              # double 4.581061
	.quad	0x3fff72f449129889              # double 1.965565
	.quad	0x401fd6034f3fd934              # double 7.9589970000000001
	.quad	0x401d69b413986339              # double 7.3532260000000003
	.quad	0x4007619d2391d580              # double 2.922663
	.quad	0x40169d56b00ffda4              # double 5.653651
	.quad	0x3fa87f88765ba6f0              # double 0.047848000000000002
	.quad	0x401c6b906466b1e6              # double 7.1050430000000002
	.quad	0x40100a250f840182              # double 4.0099070000000001
	.quad	0x40207d056c508b33              # double 8.2441820000000003
	.quad	0x402369ec0b567558              # double 9.7068790000000007
	.quad	0x401a697460242d06              # double 6.602983
	.quad	0x3ff1e62fdfc19c17              # double 1.118698
	.quad	0x4017c92d1287c201              # double 5.9464610000000002
	.quad	0x4014a014727dcbde              # double 5.1563280000000002
	.quad	0x400380420f6f08cc              # double 2.4376259999999998
	.quad	0x3fdd366d7a56de33              # double 0.45644699999999999
	.quad	0x401b040af1cb89d7              # double 6.7539480000000003
	.quad	0x402248509bf9c62a              # double 9.1412399999999998
	.quad	0x3fcef51ac9afe1da              # double 0.24185499999999999
	.quad	0x402088685553ef6b              # double 8.2664209999999994
	.quad	0x4018fbd4067cf1c3              # double 6.2459259999999999
	.quad	0x401987d49d7ba66a              # double 6.3826470000000004
	.quad	0x401afbc3c5bd0e13              # double 6.7458640000000001
	.quad	0x402180f301eabbcb              # double 8.7518539999999998
	.quad	0x400cf085f4a1272d              # double 3.6174430000000002
	.quad	0x4021277a2cecc815              # double 8.5771040000000003
	.quad	0x3fa036c9c0a8d21c              # double 0.031668000000000002
	.quad	0x4019c7bf1e8e6080              # double 6.4450649999999996
	.quad	0x40167f45e0b4e11e              # double 5.6242900000000002
	.quad	0x4016af605ab3aabd              # double 5.6712660000000001
	.quad	0x401f5a6aca793576              # double 7.838298
	.quad	0x400ca7b139c94f6a              # double 3.5818810000000001
	.quad	0x401c54febd09e12a              # double 7.0830029999999997
	.quad	0x4010d4373f316e37              # double 4.2072419999999999
	.quad	0x4020332d905c0336              # double 8.0999569999999999
	.quad	0x400be687f455a7d2              # double 3.4875639999999999
	.quad	0x400699b5e95b78cd              # double 2.8250540000000002
	.quad	0x4019f4b0e1b4bb5e              # double 6.4889559999999999
	.quad	0x4021157d3910c2c6              # double 8.5419710000000002
	.quad	0x4015d9d7fd82773e              # double 5.4627379999999999
	.quad	0x401c8ad6cb535009              # double 7.1355849999999998
	.quad	0x401709314445aa2e              # double 5.7589769999999998
	.quad	0x4021ff85d744f5d3              # double 8.9990679999999994
	.quad	0x4012ec54bcf0b6b7              # double 4.7307920000000001
	.quad	0x3fe5799e518f3ecd              # double 0.67109600000000003
	.quad	0x4021c976577531db              # double 8.8934809999999995
	.quad	0x4016ad9a0f0a5eff              # double 5.6695330000000004
	.quad	0x40161649d388a8b1              # double 5.5217660000000004
	.quad	0x401f4e2fbe33acd6              # double 7.8263540000000003
	.quad	0x401517c5ef62f9ca              # double 5.2732159999999997
	.quad	0x4014d4245f5ad96a              # double 5.2071699999999996
	.quad	0x401f48e9b38d60a6              # double 7.8212039999999998
	.quad	0x4022210624dd2f1b              # double 9.0645000000000007
	.quad	0x401a363c74fb54a0              # double 6.5529650000000004
	.quad	0x3ffd82b1f687b13a              # double 1.844408
	.quad	0x3fe09b8cb8e086be              # double 0.518988
	.quad	0x401bf978d4fdf3b6              # double 6.9936249999999998
	.quad	0x4012891c087442c8              # double 4.633896
	.quad	0x3fdc02b841248d7e              # double 0.437666
	.quad	0x4019c4c1a8ac5c14              # double 6.442145
	.quad	0x3fca1d5c31593e60              # double 0.20402100000000001
	.quad	0x3fe6a76fb09203a3              # double 0.70793899999999998
	.quad	0x3ffa86994185058e              # double 1.657861
	.quad	0x3f8df7e80389f83c              # double 0.014633
	.quad	0x4020b36f5caf2d80              # double 8.3504590000000007
	.quad	0x400eee642bf9830e              # double 3.8664019999999999
	.quad	0x4017d6c6583e8577              # double 5.9597410000000002
	.quad	0x40141f93ff25e56d              # double 5.0308380000000001
	.quad	0x40206845baf533f4              # double 8.2036569999999997
	.quad	0x3fee1e98dcdb37ca              # double 0.94123500000000004
	.quad	0x401f672c5197a249              # double 7.8507550000000003
	.quad	0x402325db76b3bb84              # double 9.5739400000000003
	.quad	0x3ff950bc7b45f17c              # double 1.582211
	.quad	0x4010e17720c8cd64              # double 4.2201810000000002
	.quad	0x4005a03ff69014b6              # double 2.7032470000000002
	.quad	0x4020e6d00b45ae60              # double 8.450806
	.quad	0x402108b49e01de27              # double 8.5170030000000008
	.quad	0x400a783dff3f0fe0              # double 3.3087119999999999
	.quad	0x401c978a2a90cd42              # double 7.1479879999999998
	.quad	0x401348954a7f8013              # double 4.8208820000000001
	.quad	0x40193f2f55582129              # double 6.3117039999999998
	.quad	0x3ffbe553ac4f7ec3              # double 1.7434879999999999
	.quad	0x4023c9b0ccbc05d5              # double 9.8939269999999996
	.quad	0x402244fa05143bf7              # double 9.1347199999999997
	.quad	0x3ffea8262456f75e              # double 1.9160520000000001
	.quad	0x40143fcc1871e6cd              # double 5.0623019999999999
	.quad	0x401a3da48b652370              # double 6.5601979999999998
	.quad	0x4002687229e90796              # double 2.300999
	.quad	0x4016bacabc515486              # double 5.6824139999999996
	.quad	0x401ab8887229e908              # double 6.6802080000000004
	.quad	0x4023e443b2dd377e              # double 9.9458289999999998
	.quad	0x4000a01d5c31593e              # double 2.0781809999999998
	.quad	0x4023d905e1c15098              # double 9.9238730000000003
	.quad	0x4019d6698bb4d489              # double 6.4593870000000004
	.quad	0x4015ae8c47a17f41              # double 5.4204569999999999
	.quad	0x3ffeed7b634dad32              # double 1.932979
	.quad	0x4014e7e23f24d8fd              # double 5.2264489999999997
	.quad	0x40158705425f2021              # double 5.381856
	.quad	0x401cf5931ca7d673              # double 7.2398189999999998
	.quad	0x40111b5f5f0b2852              # double 4.2767309999999998
	.quad	0x4018da38327674d1              # double 6.2131049999999997
	.quad	0x40112d816aceaaf3              # double 4.2944389999999997
	.quad	0x4012a6f3b213e3e3              # double 4.6630390000000004
	.quad	0x3ffa82ca148ba83f              # double 1.6569309999999999
	.quad	0x401ef225fa658c4c              # double 7.7364730000000002
	.quad	0x40154b4c3c18b503              # double 5.3235330000000003
	.quad	0x3feffe7e1fc08fa8              # double 0.99981600000000003
	.quad	0x401c5c1fc8f32379              # double 7.0899650000000003
	.quad	0x401a9a9003eea20a              # double 6.6509400000000003
	.quad	0x4011b5d52c16df40              # double 4.4275710000000004
	.quad	0x4018ce0157eed45f              # double 6.2011770000000004
	.quad	0x401a67bfe7e1fc09              # double 6.601318
	.quad	0x3ff4068448cf7caa              # double 1.2515909999999999
	.quad	0x4021dfb04ee7c4a0              # double 8.9368920000000003
	.quad	0x4020ca2c2374794f              # double 8.3948680000000007
	.quad	0x40170d3f9e7b80aa              # double 5.7629380000000001
	.quad	0x4022fb4091c08744              # double 9.4907269999999996
	.quad	0x40221ffa3b9ae0c1              # double 9.0624559999999992
	.quad	0x4006a88a47ecfe9b              # double 2.8322949999999998
	.quad	0x401a0ffc9795b35b              # double 6.515612
	.quad	0x40048bd7f51efb6e              # double 2.5682830000000001
	.quad	0x401e5b9496249a13              # double 7.5894339999999997
	.quad	0x4017333e78e1932d              # double 5.8000429999999996
	.quad	0x40030177ea1c68ec              # double 2.3757169999999999
	.quad	0x4002f097c80841ee              # double 2.3674770000000001
	.quad	0x4014bc7c957cd467              # double 5.184069
	.quad	0x401bfa62ed352221              # double 6.9945180000000002
	.quad	0x402380b934699418              # double 9.7514129999999994
	.quad	0x401aecfe9b7bf1e9              # double 6.7314400000000001
	.quad	0x4012877ccc037931              # double 4.6323119999999998
	.quad	0x40123cf3dc054ef4              # double 4.5595239999999997
	.quad	0x4021e333764f11b6              # double 8.9437519999999999
	.quad	0x401d1305100a393f              # double 7.2685740000000001
	.quad	0x400256d00b45ae60              # double 2.292389
	.quad	0x3fe75182a9930be1              # double 0.72870000000000001
	.quad	0x3fe9b5675579af19              # double 0.80339400000000005
	.quad	0x40166a4ebdd334c6              # double 5.6038160000000001
	.quad	0x3fd5d18d25edd053              # double 0.34091500000000002
	.quad	0x4006daf8df7a4e7b              # double 2.8569200000000001
	.quad	0x40216da22f6a50d7              # double 8.7141280000000005
	.quad	0x401d11af3a14cec4              # double 7.2672699999999999
	.quad	0x400111c970f7b9e0              # double 2.1336849999999998
	.quad	0x401bf5c5f7c6759b              # double 6.9900130000000003
	.quad	0x3fc5f4ba51a005c4              # double 0.17153099999999999
	.quad	0x401a2093964a59c0              # double 6.5318129999999996
	.quad	0x402371ae70c1333c              # double 9.7220340000000007
	.quad	0x402186abde3fbbd8              # double 8.7630300000000005
	.quad	0x4022c3ee807bbb62              # double 9.3826789999999995
	.quad	0x40061ff8a8f3a9b0              # double 2.7656109999999998
	.quad	0x3fd46965f5275eea              # double 0.31893300000000002
	.quad	0x400d9fe9fadafd11              # double 3.7030829999999999
	.quad	0x3fe34577d955714c              # double 0.60223000000000004
	.quad	0x3fe1fbbb62413db8              # double 0.56197900000000001
	.quad	0x3fc0e4fb97bb7308              # double 0.13198799999999999
	.quad	0x3ffd9791819d2392              # double 1.849504
	.quad	0x401ad8d3f1843c3a              # double 6.7117459999999998
	.quad	0x4002da2f8bdec5f4              # double 2.3565360000000002
	.quad	0x4011bf6f4be835df              # double 4.4369480000000001
	.quad	0x4021add82fd75e20              # double 8.8395399999999995
	.quad	0x401e417939a7c17b              # double 7.5639390000000004
	.quad	0x40104bbd3804534c              # double 4.0739640000000001
	.quad	0x4016a733ebbfd71b              # double 5.663284
	.quad	0x3ffe134acaff6d33              # double 1.87971
	.quad	0x40100f290abb44e5              # double 4.014805
	.quad	0x400742962cfd8f0c              # double 2.9075129999999998
	.quad	0x400719c7bcc2938e              # double 2.887588
	.quad	0x400a879bbadc0981              # double 3.3162150000000001
	.quad	0x4023adf4e4430b18              # double 9.8397590000000008
	.quad	0x4018d2e4d1a65061              # double 6.2059509999999998
	.quad	0x400771372a38b8ae              # double 2.9302809999999999
	.quad	0x4023437329c347e9              # double 9.6317380000000003
	.quad	0x40227f2085b18549              # double 9.2482950000000006
	.quad	0x4008d3a4f8726d05              # double 3.103342
	.quad	0x4013d06317268d33              # double 4.9535030000000004
	.quad	0x4022eef0ae536502              # double 9.4666800000000002
	.quad	0x400264894c447c31              # double 2.2990900000000001
	.quad	0x3ffd79bfdf7e8039              # double 1.8422240000000001
	.quad	0x3ffd57b5286b5914              # double 1.8339129999999999
	.quad	0x400978bd66277c46              # double 3.1839550000000001
	.quad	0x401f866e008e9b39              # double 7.8812790000000001
	.quad	0x40062bdc26dce39b              # double 2.7714159999999999
	.quad	0x4021f3bdbe3c1052              # double 8.9760570000000008
	.quad	0x4003417763e4abe7              # double 2.4069660000000002
	.quad	0x3ffe86e4c0df58c1              # double 1.9079330000000001
	.quad	0x401258769ec2ce46              # double 4.5863899999999997
	.quad	0x400d8b97785729b3              # double 3.6931600000000002
	.quad	0x401cd843c3a42f1f              # double 7.2111960000000002
	.quad	0x3ffc2732df505d10              # double 1.7595700000000001
	.quad	0x40158f26aec0724b              # double 5.3897959999999996
	.quad	0x3ff866cb10342aaa              # double 1.525096
	.quad	0x4021d848e043a216              # double 8.9224309999999996
	.quad	0x40185a821f2990f3              # double 6.088387
	.quad	0x3ffbd0b0f27bb2ff              # double 1.7384500000000001
	.quad	0x40222baa9b499d02              # double 9.085286
	.quad	0x401cd0e0a84be404              # double 7.2039819999999999
	.quad	0x40226716f4384ba1              # double 9.2013470000000002
	.quad	0x400a7c4e2f37fbf0              # double 3.3106960000000001
	.quad	0x40184f6cacd184c2              # double 6.0775629999999996
	.quad	0x4020c32617c1bda5              # double 8.3811499999999999
	.quad	0x4004b4bb5e0f7fd0              # double 2.5882480000000001
	.quad	0x4020ad184c271fff              # double 8.3380759999999992
	.quad	0x4019d6052502eec8              # double 6.4590040000000002
	.quad	0x400ef2c40d0aaa7e              # double 3.868538
	.quad	0x4022cc08d8ec95c0              # double 9.3985050000000001
	.quad	0x4003c9fd7a13c255              # double 2.4736280000000002
	.quad	0x40146c68ec52a412              # double 5.1058690000000002
	.quad	0x402052856605ee57              # double 8.1611740000000008
	.quad	0x40238514e3bcd35b              # double 9.7599250000000008
	.quad	0x3fd61d9f4d37c137              # double 0.34555799999999998
	.quad	0x4023f30bbf50e347              # double 9.9746989999999993
	.quad	0x4022823b7952d235              # double 9.2543600000000001
	.quad	0x4017b779e9d0e992              # double 5.929176
	.quad	0x400f8e1c58255b03              # double 3.9443899999999998
	.quad	0x4010c589acbc8c0d              # double 4.1929080000000001
	.quad	0x4021b9728a611772              # double 8.8622019999999999
	.quad	0x3fdaac8e68e3ef28              # double 0.41678199999999999
	.quad	0x4023aa437824d4cc              # double 9.8325460000000006
	.quad	0x401d6167ec7863bf              # double 7.3451230000000001
	.quad	0x3fe859ba1b1960fa              # double 0.76095299999999999
	.quad	0x401f5d983947496b              # double 7.8414010000000002
	.quad	0x40102ce95faa8a83              # double 4.0438590000000003
	.quad	0x4022bf7878b7a1c2              # double 9.3739659999999994
	.quad	0x4000172367e414e8              # double 2.011298
	.quad	0x400810cd423d9232              # double 3.0082040000000001
	.quad	0x4018b2b1704ff434              # double 6.1745049999999999
	.quad	0x3fdecab81f969e3d              # double 0.48112300000000002
	.quad	0x4022c0090b417ca2              # double 9.3750689999999999
	.quad	0x4010d49c6f36ef80              # double 4.2076279999999997
	.quad	0x401ae8b5cbff4773              # double 6.7272559999999997
	.quad	0x401a76527a20578e              # double 6.6155489999999997
	.quad	0x401351697f1f9ad0              # double 4.829504
	.quad	0x401516a550870111              # double 5.2721150000000003
	.quad	0x401f3ca686e7e62e              # double 7.8092290000000002
	.quad	0x3fbb76b3bb83cf2d              # double 0.10728
	.quad	0x4022e4bee807bbb6              # double 9.4467689999999997
	.quad	0x402114b1ee243569              # double 8.5404199999999992
	.quad	0x3feed0e560418937              # double 0.96299999999999996
	.quad	0x401d41f969e3c969              # double 7.3144280000000004
	.quad	0x402044c8de2ac322              # double 8.1343449999999997
	.quad	0x401cdb11c6d1e109              # double 7.2139350000000002
	.quad	0x4017ee55c0fcb4f2              # double 5.9827490000000001
	.quad	0x40013b291b823c86              # double 2.1538870000000001
	.quad	0x401e4582dbe7f2c3              # double 7.5678819999999999
	.quad	0x40008731d2e0e304              # double 2.0660129999999999
	.quad	0x3ff66b474107314d              # double 1.4011910000000001
	.quad	0x401b369ec2ce464a              # double 6.8033400000000004
	.quad	0x4023a977ea1c68ec              # double 9.8309929999999994
	.quad	0x3ffea40852b4d8ba              # double 1.9150469999999999
	.quad	0x40226e1975f2cb64              # double 9.2150379999999998
	.quad	0x401cc21a719b4dcf              # double 7.1895540000000002
	.quad	0x3fedaf07bfe7e1fc              # double 0.92761599999999999
	.quad	0x40204589acbc8c0d              # double 8.1358160000000002
	.quad	0x40009933e35c5b4b              # double 2.0748060000000002
	.quad	0x4016f36a400fba88              # double 5.7377099999999999
	.quad	0x4018340181e03f70              # double 6.0507869999999997
	.quad	0x3ff77a29c779a6b5              # double 1.467325
	.quad	0x4021805ea24cc682              # double 8.7507219999999997
	.quad	0x4018e85cee17a030              # double 6.2269170000000003
	.quad	0x3ff6cc25072085b2              # double 1.4248400000000001
	.quad	0x40234265add9c27f              # double 9.6296820000000007
	.quad	0x40073355475a31a5              # double 2.9000650000000001
	.quad	0x400e16c9c0a8d21c              # double 3.7611270000000001
	.quad	0x40016f7c243dccea              # double 2.1794359999999999
	.quad	0x3fefe21b7e0ac7da              # double 0.99635099999999999
	.quad	0x3ff1bab862b27cbf              # double 1.1080859999999999
	.quad	0x401224873365881a              # double 4.5356719999999999
	.quad	0x3ff202b94d940789              # double 1.1256649999999999
	.quad	0x401db07f66e86c66              # double 7.4223610000000004
	.quad	0x3fa87e175d13d74d              # double 0.047836999999999998
	.quad	0x400a95b24e9c4546              # double 3.3230940000000002
	.quad	0x3ff509d7ba6698bb              # double 1.3149029999999999
	.quad	0x3ff24113c68661ae              # double 1.1408879999999999
	.quad	0x401b1f12c27a6373              # double 6.7803449999999996
	.quad	0x4020f455c96030c2              # double 8.4772169999999996
	.quad	0x4018bd7b634dad32              # double 6.185041
	.quad	0x4014c774eebf65dc              # double 5.194782
	.quad	0x3fc3c7607c4199fe              # double 0.15452199999999999
	.quad	0x3feb74aba3875925              # double 0.85799199999999998
	.quad	0x4001d460242d05f3              # double 2.2286990000000002
	.quad	0x401da686a4ca4f44              # double 7.412623
	.quad	0x40095d3fe1975f2d              # double 3.1705320000000001
	.quad	0x40239ebfa8f7db6e              # double 9.8100559999999994
	.quad	0x401fbc432ca57a78              # double 7.9338499999999996
	.quad	0x4020ae0d23d4f15e              # double 8.3399439999999991
	.quad	0x3ffed63779e9d0ea              # double 1.9272990000000001
	.quad	0x4008ea0a0f4d7add              # double 3.114277
	.quad	0x4019f635610adcd3              # double 6.4904380000000002
	.quad	0x40155a59c065b63d              # double 5.3382329999999998
	.quad	0x3ff9d3c68661ae71              # double 1.6142030000000001
	.quad	0x401704080f98fa37              # double 5.7539369999999996
	.quad	0x40172ee5abc0e38a              # double 5.7957979999999996
	.quad	0x40114a0fd3b29a1c              # double 4.3223260000000003
	.quad	0x40215e39713ad5bf              # double 8.6840320000000002
	.quad	0x4008ddbb9cf9a06a              # double 3.1082679999999998
	.quad	0x4020941b54195cc8              # double 8.2892709999999994
	.quad	0x401c31bd61f5be5e              # double 7.0485740000000003
	.quad	0x401b33fb7a5f41af              # double 6.800764
	.quad	0x40228b9cb6848beb              # double 9.2726799999999994
	.quad	0x401297f0ed3d859d              # double 4.6483800000000004
	.quad	0x3fe6f78359bc33f8              # double 0.71771399999999996
	.quad	0x4000fe07a28bb0a3              # double 2.1240380000000001
	.quad	0x4002a549b62c7757              # double 2.3307069999999999
	.quad	0x4020890f733a8a40              # double 8.2676960000000008
	.quad	0x400d73797460242d              # double 3.681384
	.quad	0x40218df1172ef0ae              # double 8.7772299999999994
	.quad	0x4020b75a1016ce79              # double 8.3581090000000007
	.quad	0x401a49578a2a90cd              # double 6.5716229999999998
	.quad	0x402062f837b4a234              # double 8.1933000000000006
	.quad	0x4022dd75e2046c76              # double 9.4325399999999995
	.quad	0x4022b94a4d2b2bfe              # double 9.3618950000000005
	.quad	0x40013784ec636b09              # double 2.1521089999999998
	.quad	0x401aa6fac6045baf              # double 6.6630659999999997
	.quad	0x4019b0535c9e6688              # double 6.422193
	.quad	0x400bc44178705426              # double 3.470828
	.quad	0x401cb7807789a459              # double 7.1792009999999999
	.quad	0x3fdfe54f7a919696              # double 0.49837100000000001
	.quad	0x400c35970b49e01e              # double 3.5261670000000001
	.quad	0x40046702a3486f05              # double 2.5502980000000002
	.quad	0x402168c36da87a07              # double 8.7046159999999997
	.quad	0x4002dc25d074213a              # double 2.357494
	.quad	0x3ff3fb395c422036              # double 1.248834
	.quad	0x3fe207df5cf2495e              # double 0.56346099999999999
	.quad	0x401cf4070329802c              # double 7.238308
	.quad	0x400f7c08fa7a8501              # double 3.9355639999999998
	.quad	0x401df7dbf487fcb9              # double 7.4920499999999998
	.quad	0x3fd2046c764adff8              # double 0.28151999999999999
	.quad	0x40238d96e9bbf0dc              # double 9.7765419999999991
	.quad	0x401e1327243137b0              # double 7.5187039999999996
	.quad	0x402025113836a833              # double 8.0723970000000005
	.quad	0x40198f82f5126634              # double 6.3901479999999999
	.quad	0x40175569f4906035              # double 5.833412
	.quad	0x40233b25b317efe1              # double 9.6155220000000003
	.quad	0x4010c27d028a1dfc              # double 4.1899300000000004
	.quad	0x40140ca7503b81b6              # double 5.0123569999999997
	.quad	0x401ee912556d19df              # double 7.7276090000000001
	.quad	0x4017bc5004fb1184              # double 5.9338990000000003
	.quad	0x3fe69adea897635e              # double 0.70640499999999995
	.quad	0x40138b191dde3758              # double 4.8858379999999997
	.quad	0x400de2e7f6f4be83              # double 3.7357939999999998
	.quad	0x4010950dae3e6c4c              # double 4.1455599999999997
	.quad	0x400f1b8c32a8c9b8              # double 3.8884509999999999
	.quad	0x401c3ddd6e04c059              # double 7.0604149999999999
	.quad	0x401a228027d88c1e              # double 6.5336920000000003
	.quad	0x4010f125dd095af3              # double 4.2354960000000004
	.quad	0x40190c9539b88872              # double 6.2622879999999999
	.quad	0x400b57e90ff97247              # double 3.4179249999999999
	.quad	0x40172b7d84901d19              # double 5.7924709999999999
	.quad	0x401a039de481f538              # double 6.5035319999999999
	.quad	0x4018f92d55a3a084              # double 6.2433370000000004
	.quad	0x4022e5f88fc9363f              # double 9.4491619999999993
	.quad	0x400b9a5657fb6998              # double 3.4503599999999999
	.quad	0x402185e8d5410f95              # double 8.7615420000000004
	.quad	0x401c73ad9f0a1be3              # double 7.1129670000000003
	.quad	0x401b9ca4f440af1d              # double 6.9029730000000002
	.quad	0x401f5f05a708ede5              # double 7.8427949999999997
	.quad	0x401a7042528ae74f              # double 6.6096279999999998
	.quad	0x40037d5f56a7ac82              # double 2.4362170000000001
	.quad	0x401c7d6451b93038              # double 7.1224530000000001
	.quad	0x40208a32d2bb2357              # double 8.2699189999999998
	.quad	0x4012c3076c050bd8              # double 4.6904579999999996
	.quad	0x4022d55a5b9628cc              # double 9.4167050000000003
	.quad	0x40225c9f0e4da09d              # double 9.1809010000000004
	.quad	0x401f79a847b24639              # double 7.8688060000000001
	.quad	0x4016ca63f9a49c2c              # double 5.6976469999999999
	.quad	0x400c2133c1ce6c09              # double 3.5162119999999999
	.quad	0x401733419e300150              # double 5.8000550000000004
	.quad	0x40178743e963dc48              # double 5.8820949999999996
	.quad	0x4017dc23315d701e              # double 5.9649780000000003
	.quad	0x3fd8dd1a21ea3593              # double 0.38849499999999998
	.quad	0x4001dd1c3ac929aa              # double 2.2329639999999999
	.quad	0x40163ad03d9a9542              # double 5.5574349999999999
	.quad	0x4012ed3ae685db77              # double 4.7316700000000003
	.quad	0x40032edfe75bc44c              # double 2.397888
	.quad	0x400aebcb5fe542e5              # double 3.3651339999999998
	.quad	0x40151bb55ac03ff7              # double 5.2770590000000004
	.quad	0x401f5d6f97679032              # double 7.8412459999999999
	.quad	0x401ba9c51dabe271              # double 6.9157909999999996
	.quad	0x3ff7ecacd184c272              # double 1.495282
	.quad	0x401d1d141a6937d2              # double 7.278397
	.quad	0x3ff58e6c093d9664              # double 1.3472710000000001
	.quad	0x40168ddfc9ff92f3              # double 5.6385490000000003
	.quad	0x4023379dd3bafd97              # double 9.6086259999999992
	.quad	0x3ff9920296b3354c              # double 1.598147
	.quad	0x4012136deb95e5b0              # double 4.518974
	.quad	0x40111570c564f97f              # double 4.2709380000000001
	.quad	0x3ffbfc7b45f17bd9              # double 1.7491410000000001
	.quad	0x401025b1422ccb3a              # double 4.0368089999999999
	.quad	0x40222f901083dbc2              # double 9.0928959999999996
	.quad	0x4011b4dbdf8f4730              # double 4.4266199999999998
	.quad	0x40105fdf7e8038a0              # double 4.0936260000000004
	.quad	0x401495a35d67ba23              # double 5.1461309999999996
	.quad	0x401db5ba2be0589b              # double 7.4274680000000002
	.quad	0x4021095464dc22ab              # double 8.5182219999999997
	.quad	0x3fed299fa11a975b              # double 0.911331
	.quad	0x401856162f166e01              # double 6.0840690000000004
	.quad	0x40136430b178b370              # double 4.847842
	.quad	0x402044d76ab58080              # double 8.1344560000000001
	.quad	0x40053ca2120e1f7d              # double 2.6546059999999998
	.quad	0x3fd8e59af9ebe9c9              # double 0.38901400000000003
	.quad	0x401b310f51ac9afe              # double 6.7979099999999999
	.quad	0x40233155714b9cb7              # double 9.5963550000000008
	.quad	0x401d7bfd71b04684              # double 7.3710839999999997
	.quad	0x3fd1038e29f9ce8e              # double 0.26584200000000002
	.quad	0x3ff172af1455219b              # double 1.0904990000000001
	.quad	0x401874c37e6f71a8              # double 6.1140270000000001
	.quad	0x4019eda9c99285a9              # double 6.4820929999999999
	.quad	0x40172b3b7521144d              # double 5.7922190000000002
	.quad	0x401dd375c8d9f905              # double 7.4565039999999998
	.quad	0x401abf7f498c3b0c              # double 6.6870089999999998
	.quad	0x4016c26dce39b457              # double 5.6898720000000003
	.quad	0x3ffba6a550870111              # double 1.7281850000000001
	.quad	0x4009962d83c6c97e              # double 3.1983290000000002
	.quad	0x40195b44e50c5eb3              # double 6.3391299999999999
	.quad	0x401535a682b62846              # double 5.3023930000000004
	.quad	0x40025fb6134ce3de              # double 2.2967339999999998
	.quad	0x402070ddc6195465              # double 8.2204420000000002
	.quad	0x400e6fd113836a83              # double 3.8045979999999999
	.quad	0x401b7dcdb37c99af              # double 6.8728550000000004
	.quad	0x3fe01a1fd1569f49              # double 0.503189
	.quad	0x4013e9289dadfb50              # double 4.9776939999999996
	.quad	0x401ad0e410b630a9              # double 6.7039949999999999
	.quad	0x4020a0d5e8d54110              # double 8.3141320000000007
	.quad	0x4012cafa7221858c              # double 4.6982210000000002
	.quad	0x4005fd5e4a383276              # double 2.7487149999999998
	.quad	0x4014f810624dd2f2              # double 5.2422500000000003
	.quad	0x4010eff8ec0f8833              # double 4.2343479999999998
	.quad	0x402021e646f15619              # double 8.0662099999999999
	.quad	0x4007e43f5f91600f              # double 2.9864489999999999
	.quad	0x3fcf17720c8cd63d              # double 0.24290300000000001
	.quad	0x40074b78897e9963              # double 2.911851
	.quad	0x401a0083dbc23316              # double 6.5005030000000001
	.quad	0x4019e78c0053e2d6              # double 6.4761199999999999
	.quad	0x400d7ef8ceb356da              # double 3.686998
	.quad	0x4019698aa8650e78              # double 6.3530680000000004
	.quad	0x40155398201cd5fa              # double 5.3316350000000003
	.quad	0x400266b50b0f27bb              # double 2.3001499999999999
	.quad	0x3ffc549c6f36ef80              # double 1.7706569999999999
	.quad	0x40204998aeb80ed0              # double 8.1437430000000006
	.quad	0x3ff68386d2ed783e              # double 1.407111
	.quad	0x40071b96af038e2a              # double 2.888471
	.quad	0x402231fa97e132b5              # double 9.0976149999999993
	.quad	0x4006323a29c779a7              # double 2.7745250000000001
	.quad	0x400deb72c5197a25              # double 3.7399650000000002
	.quad	0x4015a27c39368273              # double 5.408677
	.quad	0x3ff37533f42352eb              # double 1.2161139999999999
	.quad	0x4010f4f4c6e6d9be              # double 4.2392149999999997
	.quad	0x40221fb58d1526d9              # double 9.0619320000000005
	.quad	0x401a0c0ad03d9a95              # double 6.5117599999999998
	.quad	0x40205f8769ec2ce4              # double 8.1865799999999993
	.quad	0x402019d388a8b08e              # double 8.0504420000000003
	.quad	0x3fe8b37a80cf9e38              # double 0.77190899999999996
	.quad	0x40217e7ee9142b30              # double 8.7470619999999997
	.quad	0x401f8ba98eda22f7              # double 7.8863890000000003
	.quad	0x401f1dca8e2e2b8c              # double 7.7790929999999996
	.quad	0x4012f3af31b152f4              # double 4.7379730000000002
	.quad	0x3ff5d996744b2b77              # double 1.3656219999999999
	.quad	0x3fe1e2a5e785b5b7              # double 0.558917
	.quad	0x4020fb7e90ff9724              # double 8.4911999999999991
	.quad	0x3ffbfe8dda48b652              # double 1.749647
	.quad	0x4013c25247cb70ac              # double 4.9397669999999998
	.quad	0x40227d6191148fda              # double 9.244885
	.quad	0x4017ee34330d7386              # double 5.982621
	.quad	0x401456f75d9a0f0a              # double 5.0849279999999997
	.quad	0x40038fc0d2c386d3              # double 2.445192
	.quad	0x400d6f648c7192ea              # double 3.6793909999999999
	.quad	0x4021d90e453d20f3              # double 8.9239370000000005
	.quad	0x4009fd54da4ce810              # double 3.2486969999999999
	.quad	0x3fb4c21e1d2178f7              # double 0.081087000000000006
	.quad	0x4011bf13cee9dd7f              # double 4.4365990000000002
	.quad	0x40114b05faebc409              # double 4.3232650000000001
	.quad	0x40225737110e453d              # double 9.1703419999999998
	.quad	0x401d1de7ea5f84cb              # double 7.2792050000000001
	.quad	0x401d2d92b7fe08af              # double 7.294505
	.quad	0x40222df548ecd8dc              # double 9.0897620000000003
	.quad	0x401501c3265add9c              # double 5.2517209999999999
	.quad	0x3fe1880b673c4f3c              # double 0.54785700000000004
	.quad	0x3fdd9ef5232d2bb2              # double 0.46282699999999999
	.quad	0x4020c5a89b951c5c              # double 8.3860519999999993
	.quad	0x4012f3b18dac258d              # double 4.7379819999999997
	.quad	0x40203f102363b257              # double 8.12317
	.quad	0x4003421101b00368              # double 2.4072589999999998
	.quad	0x401ae41aac53b081              # double 6.7227579999999998
	.quad	0x401f34a72ead9275              # double 7.8014190000000001
	.quad	0x400b636da87a072d              # double 3.423549
	.quad	0x4014c5ba6efc371e              # double 5.1930940000000003
	.quad	0x3fed9351159c4977              # double 0.92423299999999997
	.quad	0x3ff55081c2e33eff              # double 1.332155
	.quad	0x40139d245b291b82              # double 4.9034589999999998
	.quad	0x4018e7dc37a3db3c              # double 6.226426
	.quad	0x401dd5054ac29bf1              # double 7.4580279999999997
	.quad	0x401d7b003686a4ca              # double 7.3701179999999997
	.quad	0x4007016bdb1a6d6a              # double 2.8756940000000002
	.quad	0x40205e31d712a0ec              # double 8.1839739999999991
	.quad	0x401a1558ea7ce0fc              # double 6.5208469999999998
	.quad	0x401da1554fbdad75              # double 7.4075519999999999
	.quad	0x400ed55ac03ff690              # double 3.854177
	.quad	0x3fd5bb23571d1d47              # double 0.33954699999999999
	.quad	0x401f004e1e71044f              # double 7.7502979999999999
	.quad	0x401f53471f79420b              # double 7.8313259999999997
	.quad	0x401e017763e4abe7              # double 7.5014320000000003
	.quad	0x4011e91a32b12d34              # double 4.4776389999999999
	.quad	0x400f954f3775b813              # double 3.947905
	.quad	0x4015480a5accd530              # double 5.3203519999999997
	.quad	0x400f6bc2fc69728a              # double 3.9276179999999998
	.quad	0x4000cffb04ee7c4a              # double 2.101553
	.quad	0x3fda168b5cbff477              # double 0.40762599999999999
	.quad	0x401481c92ddbdb5e              # double 5.1267440000000004
	.quad	0x40214294bbe4473d              # double 8.6300410000000003
	.quad	0x401e8a365cb35f3d              # double 7.6349729999999995
	.quad	0x40206fa26a22b389              # double 8.2180359999999997
	.quad	0x400f1d377e1b8ed2              # double 3.8892660000000001
	.quad	0x4010aad794a6eb92              # double 4.1668380000000003
	.quad	0x40238d744f5d3565              # double 9.7762779999999995
	.quad	0x4007210385c67dfe              # double 2.8911199999999999
	.quad	0x4016b65a57646ae4              # double 5.6780790000000003
	.quad	0x401b8a9ac36544fe              # double 6.8853559999999998
	.quad	0x3fddd184c271fff8              # double 0.46591300000000002
	.quad	0x4023810752da9867              # double 9.7520089999999992
	.quad	0x4018a2a23bff8a8f              # double 6.1588219999999998
	.quad	0x401fc0a958537e2c              # double 7.9381459999999997
	.quad	0x4005b5011904b3c4              # double 2.713381
	.quad	0x400e92e9ccb7d417              # double 3.8217349999999999
	.quad	0x401d2ba7fc32ebe6              # double 7.2926330000000004
	.quad	0x40140f20a73f748a              # double 5.0147729999999999
	.quad	0x3fff095bff04577e              # double 1.9397850000000001
	.quad	0x40144c3d68405b3a              # double 5.0744530000000001
	.quad	0x401bb268d32830a1              # double 6.9242280000000003
	.quad	0x3ff88be0ded288ce              # double 1.5341499999999999
	.quad	0x3fd9e935b91f70df              # double 0.40485900000000002
	.quad	0x4012b8b934699418              # double 4.6803939999999997
	.quad	0x40042404a72ead92              # double 2.5175869999999998
	.quad	0x3fdf30984e3ffef4              # double 0.48734100000000002
	.quad	0x4021a192428d434a              # double 8.815569
	.quad	0x401db1fea8112ba1              # double 7.4238229999999996
	.quad	0x401214ca4f440af2              # double 4.5203030000000002
	.quad	0x402276e78183f91e              # double 9.2322349999999993
	.quad	0x401f2264e48626f6              # double 7.783588
	.quad	0x401b41cde5d18091              # double 6.8142620000000003
	.quad	0x401c76d612c6ac21              # double 7.1160509999999997
	.quad	0x40176db6e503fb37              # double 5.8571429999999998
	.quad	0x400dbdf548ecd8dc              # double 3.7177530000000001
	.quad	0x40137309c7ffde72              # double 4.8623419999999999
	.quad	0x401f64d8fd5cb791              # double 7.848484
	.quad	0x3fc5784ec636b096              # double 0.16773399999999999
	.quad	0x401a45d4e8fb00bd              # double 6.5681950000000002
	.quad	0x401152d55a3a083a              # double 4.3308920000000004
	.quad	0x3fe725a469d7342f              # double 0.72334500000000002
	.quad	0x4011b567125dd096              # double 4.4271510000000003
	.quad	0x401c9da1ec4e7254              # double 7.1539380000000001
	.quad	0x401a900218def417              # double 6.6406330000000002
	.quad	0x3ff96fe3f359ff50              # double 1.589817
	.quad	0x402236a7264a16a5              # double 9.1067440000000008
	.quad	0x40032916ca46e08f              # double 2.3950629999999999
	.quad	0x401136d4c33b5393              # double 4.3035459999999999
	.quad	0x4015137e2c55c960              # double 5.2690359999999998
	.quad	0x401332ccb3a2595c              # double 4.7996090000000002
	.quad	0x40230e1bb05faebc              # double 9.5275549999999995
	.quad	0x401f6064ece9a2c6              # double 7.8441349999999996
	.quad	0x40200b0f49491f2e              # double 8.0216010000000004
	.quad	0x401614712e40852b              # double 5.5199629999999997
	.quad	0x402013b03e20ccff              # double 8.0384539999999998
	.quad	0x400a74128bf3bea9              # double 3.3066759999999999
	.quad	0x3fe5049ecb31c21a              # double 0.65681400000000001
	.quad	0x3ffd60a73f748a16              # double 1.8360970000000001
	.quad	0x4009a160d887ebf2              # double 3.2037979999999999
	.quad	0x401836c508b32ce9              # double 6.0534860000000004
	.quad	0x4021d52b4d8ba40e              # double 8.9163460000000008
	.quad	0x4018af294dd72368              # double 6.1710560000000001
	.quad	0x40231138151a4378              # double 9.5336309999999997
	.quad	0x4011d08e581cf788              # double 4.4536680000000004
	.quad	0x4020e97b30f8c650              # double 8.4560180000000003
	.quad	0x3feeb22d0e560419              # double 0.95925000000000004
	.quad	0x40170c6da4484945              # double 5.7621370000000001
	.quad	0x3ffe79d6f112fd33              # double 1.9047460000000001
	.quad	0x3ffb0ece9a2c6690              # double 1.6911149999999999
	.quad	0x400c736bd2b6f199              # double 3.5563579999999999
	.quad	0x401efb28954a7f80              # double 7.7452719999999999
	.quad	0x401fd3eea209aaa4              # double 7.9569650000000003
	.quad	0x3ffc3c3e74afd545              # double 1.7647079999999999
	.quad	0x400859a8cdea033e              # double 3.0437789999999998
	.quad	0x3ff777d955714b9d              # double 1.4667600000000001
	.quad	0x401316ba493c89f4              # double 4.772195
	.quad	0x3fe5157abb8800eb              # double 0.65887200000000001
	.quad	0x40161e2fbe33acd6              # double 5.5294790000000003
	.quad	0x3ffdd0dae3e6c4c6              # double 1.8634900000000001
	.quad	0x400b9e59f2ba9d1f              # double 3.4523199999999998
	.quad	0x4022c85dfa871a3b              # double 9.3913419999999998
	.quad	0x40209344c37e6f72              # double 8.2876340000000006
	.quad	0x4014122c01e68a0d              # double 5.0177459999999998
	.quad	0x4016f4167a95c854              # double 5.7383670000000002
	.quad	0x4017b8be7296f651              # double 5.9304139999999999
	.quad	0x4020d41d8e864021              # double 8.4142880000000009
	.quad	0x400785f30e7ff584              # double 2.9404050000000002
	.quad	0x3fdeb7cbb3c81909              # double 0.47996800000000001
	.quad	0x3ff4c1376d549731              # double 1.297172
	.quad	0x401a98c9320d9946              # double 6.6492050000000003
	.quad	0x4001824bba12b5e5              # double 2.1886209999999999
	.quad	0x3fffd05e1c15097d              # double 1.9883710000000001
	.quad	0x401fce8ccdd93c47              # double 7.9517090000000001
	.quad	0x400d31d1d4738a3b              # double 3.6493259999999998
	.quad	0x3fd5f7e3d1cc100e              # double 0.34325499999999998
	.quad	0x3febd7f950b955f8              # double 0.87011400000000005
	.quad	0x4010bae147ae147b              # double 4.1825000000000001
	.quad	0x401083c9eecbfb16              # double 4.1287000000000003
	.quad	0x400d74b51372a38c              # double 3.6819860000000002
	.quad	0x400c6759253543af              # double 3.5504630000000001
	.quad	0x3fe1f2606fac6046              # double 0.56083700000000003
	.quad	0x4009dc2d2780778a              # double 3.2325080000000002
	.quad	0x401d91f9acffa7eb              # double 7.3925539999999996
	.quad	0x401631a86940357a              # double 5.5484939999999998
	.quad	0x401de2778140dd40              # double 7.4711590000000001
	.quad	0x4023214b380cb6c8              # double 9.5650270000000006
	.quad	0x4001d814940bbb1f              # double 2.2305079999999999
	.quad	0x401d2532a497fa5d              # double 7.2863259999999999
	.quad	0x40227dd76683c298              # double 9.2457840000000004
	.quad	0x401ae61672324c83              # double 6.7246949999999996
	.quad	0x40211b269df97aab              # double 8.5530290000000004
	.quad	0x3ffb7d6733ebbfd7              # double 1.718116
	.quad	0x3fe3ee6d9be4cd75              # double 0.62285500000000005
	.quad	0x401d2f27bb2fec57              # double 7.2960500000000001
	.quad	0x401cd7a072d1aeb4              # double 7.2105730000000001
	.quad	0x4023f7023e9ea140              # double 9.9824389999999993
	.quad	0x40128193f6c2699c              # double 4.6265409999999996
	.quad	0x4002aee8d10f51ad              # double 2.3354050000000002
	.quad	0x400bb6b2af145522              # double 3.4642080000000002
	.quad	0x401c95e6bc621b7e              # double 7.146388
	.quad	0x3ff52d655e28aa43              # double 1.323583
	.quad	0x4016dec5b078d930              # double 5.7175510000000003
	.quad	0x400162a0a958537e              # double 2.1731579999999999
	.quad	0x4020bc0df58c08b7              # double 8.3672939999999993
	.quad	0x4022f2fe82517e78              # double 9.4745980000000002
	.quad	0x4014810342aa9f7b              # double 5.1259889999999997
	.quad	0x401c9615a8deb0fb              # double 7.1465670000000001
	.quad	0x40067e7fb267c6b9              # double 2.8117670000000001
	.quad	0x401170ff540895d1              # double 4.3603490000000003
	.quad	0x401e1386d2ed783e              # double 7.519069
	.quad	0x4019c3b0c4588a05              # double 6.4411040000000002
	.quad	0x3fe128997c3d6840              # double 0.53620599999999996
	.quad	0x3ff5643dccea28fe              # double 1.336973
	.quad	0x402228e8858ff759              # double 9.0798989999999993
	.quad	0x401b3bdcad14a0a1              # double 6.808459
	.quad	0x402344e0fc2eba28              # double 9.6345290000000005
	.quad	0x40208da72a7bd48d              # double 8.2766660000000005
	.quad	0x4015dfe1da7b0b39              # double 5.4686349999999999
	.quad	0x4005ee7924af0bf2              # double 2.7414420000000002
	.quad	0x4018150ebaade658              # double 6.0205640000000002
	.quad	0x3ff035e0f7fcfc40              # double 1.0131540000000001
	.quad	0x40040ec17ebaf102              # double 2.5072049999999999
	.quad	0x40080f7fcfc3f812              # double 3.007568
	.quad	0x3ffafe681a9b8cb9              # double 1.687111
	.quad	0x4020913964a59c06              # double 8.2836409999999994
	.quad	0x3ffe002c0a4a05de              # double 1.8750420000000001
	.quad	0x400d682517e77d52              # double 3.6758519999999999
	.quad	0x3ff15887ebf22c02              # double 1.084114
	.quad	0x3f858ea7ce0fc2ec              # double 0.010526000000000001
	.quad	0x4001d033a4723ab0              # double 2.226661
	.quad	0x401f4a0168b5cbff              # double 7.8222709999999997
	.quad	0x4010890eed02cd3a              # double 4.1338460000000001
	.quad	0x401305c9a34ca0c3              # double 4.7556520000000004
	.quad	0x4023ad58c8eef1bb              # double 9.8385680000000004
	.quad	0x40231fc9de050375              # double 9.562087
	.quad	0x401e70b6f9fcb0c0              # double 7.6100729999999999
	.quad	0x4012a72abef06b38              # double 4.6632490000000004
	.quad	0x401d1528283d35eb              # double 7.2706609999999996
	.quad	0x400b938e6d15ad10              # double 3.4470489999999998
	.quad	0x3fe59c25d074213a              # double 0.67531099999999999
	.quad	0x400f688509bf9c63              # double 3.9260350000000002
	.quad	0x400661059ea57215              # double 2.797374
	.quad	0x401629e6ab9b23dd              # double 5.5409189999999997
	.quad	0x4019f6837f7be122              # double 6.4907360000000001
	.quad	0x400ff96b76709fa5              # double 3.9967869999999999
	.quad	0x400088909289dae0              # double 2.0666820000000001
	.quad	0x4023837c3504c48b              # double 9.7568070000000002
	.quad	0x40011ff47735c183              # double 2.140603
	.quad	0x400641e0c5a8155d              # double 2.7821669999999998
	.quad	0x401d843e963dc487              # double 7.3791450000000003
	.quad	0x4023f3b688bda943              # double 9.9760019999999993
	.quad	0x3fe518aeb80ecfa7              # double 0.65926300000000004
	.quad	0x4020242374794ea0              # double 8.0705829999999992
	.quad	0x3fe06cfe9b7bf1e9              # double 0.51330500000000001
	.quad	0x40070350d2806af4              # double 2.8766189999999998
	.quad	0x4022b2ee2003ab86              # double 9.3494729999999997
	.quad	0x4016319b90ea9e6f              # double 5.5484450000000001
	.quad	0x3ffac6e5cd4ed2cc              # double 1.673559
	.quad	0x40204f40c4156e26              # double 8.1547909999999995
	.quad	0x401645faa8a82a56              # double 5.5683389999999999
	.quad	0x3ff0bcd035371972              # double 1.0460970000000001
	.quad	0x3ff1c574b407032a              # double 1.1107070000000001
	.quad	0x3fd40025bfad2999              # double 0.31250899999999998
	.quad	0x402072fee6fb4c3c              # double 8.2246009999999998
	.quad	0x401ef057082491b0              # double 7.7347070000000002
	.quad	0x401e118a86d71f36              # double 7.5171299999999999
	.quad	0x400029f2fdb8fde3              # double 2.020483
	.quad	0x4018b141a6937d20              # double 6.1731020000000001
	.quad	0x3ff57a6defc7a398              # double 1.34239
	.quad	0x4021f1c5a3e39f77              # double 8.9722109999999997
	.quad	0x401ff4be40420f6f              # double 7.9890069999999999
	.quad	0x40226a8b2a6b0d95              # double 9.2080929999999999
	.quad	0x400c52239e6ab9b2              # double 3.5401069999999999
	.quad	0x3ffd236d22424a27              # double 1.8211489999999999
	.quad	0x40109035371971c1              # double 4.140828
	.quad	0x40161a32b12d3416              # double 5.5255840000000003
	.quad	0x40107f3d7d3910c3              # double 4.1242580000000002
	.quad	0x4023f0cc35ce1826              # double 9.9703079999999993
	.quad	0x40208521bc126a66              # double 8.2600230000000003
	.quad	0x401f70e453d20f2c              # double 7.8602460000000001
	.quad	0x4020ac0b5675579b              # double 8.3360240000000001
	.quad	0x3fecaf922962cfd9              # double 0.89643200000000001
	.quad	0x40138dcc20d5629e              # double 4.8884740000000004
	.quad	0x4002446ae3a3a8e7              # double 2.283407
	.quad	0x3ff8ab4c7f349386              # double 1.5418210000000001
	.quad	0x402126aaf35e310e              # double 8.5755230000000005
	.quad	0x401eee40420f6f09              # double 7.7326670000000001
	.quad	0x400c7422ccb3a259              # double 3.5567069999999998
	.quad	0x4005cbd4cfd08d4c              # double 2.7245270000000001
	.quad	0x40021c4eb56fb8f5              # double 2.2638219999999998
	.quad	0x401a5829cfdd2285              # double 6.5860969999999996
	.quad	0x401e661b6d43d039              # double 7.5997139999999996
	.quad	0x401043b57c4e2f38              # double 4.066122
	.quad	0x3fa705c896dd26b7              # double 0.044965999999999999
	.quad	0x40189969a0ad8a11              # double 6.1498169999999996
	.quad	0x40215026cc1ca3a5              # double 8.6565460000000005
	.quad	0x4002bf7164c729f6              # double 2.3434780000000002
	.quad	0x4013a69ad42c3c9f              # double 4.9127000000000001
	.quad	0x40189ae297396d09              # double 6.1512549999999999
	.quad	0x4012fb3d4ae429e1              # double 4.7453510000000003
	.quad	0x402310ee49f51698              # double 9.533068
	.quad	0x401120ba6266fd65              # double 4.2819609999999999
	.quad	0x4023420e410b630b              # double 9.6290150000000007
	.quad	0x4018c96bfca85cab              # double 6.196701
	.quad	0x40142a63b688bda9              # double 5.0413959999999998
	.quad	0x3ff40b26394face6              # double 1.2527219999999999
	.quad	0x400e39029ae4f334              # double 3.7778369999999999
	.quad	0x400dcd6dc1a47a9e              # double 3.7253069999999999
	.quad	0x400e1d3910c2c5e3              # double 3.7642690000000001
	.quad	0x401b1fabda0dfdf0              # double 6.7809290000000004
	.quad	0x40239fffde7210bf              # double 9.8124990000000007
	.quad	0x4001a2efd438d1d9              # double 2.2045590000000002
	.quad	0x4010b96c3fc43b2e              # double 4.1810770000000002
	.quad	0x3ff9d97a24894c44              # double 1.6155949999999999
	.quad	0x401283d577963993              # double 4.6287440000000002
	.quad	0x4019caa4b9884c6a              # double 6.4478939999999998
	.quad	0x40065db3397dd00f              # double 2.7957519999999998
	.quad	0x4016837154003255              # double 5.6283620000000001
	.quad	0x4023ba30984e3fff              # double 9.863652
	.quad	0x4000cb60f1b25f63              # double 2.0993059999999999
	.quad	0x4004e40c8472c0e8              # double 2.6113520000000001
	.quad	0x4002651d25aab474              # double 2.299372
	.quad	0x400e2116659d12cb              # double 3.7661560000000001
	.quad	0x3ffac1b97353b4b3              # double 1.672296
	.quad	0x40047c044284dfce              # double 2.5605549999999999
	.quad	0x400531569f490603              # double 2.6490909999999999
	.quad	0x401037e90ff97247              # double 4.0545999999999998
	.quad	0x4019ed3cff64cf8d              # double 6.4816779999999996
	.quad	0x4017e953dea465a5              # double 5.9778589999999996
	.quad	0x4023448f75536934              # double 9.6339070000000006
	.quad	0x401b288fc9363f57              # double 6.7896109999999998
	.quad	0x40096a4095f2452c              # double 3.1768809999999998
	.quad	0x40062b0856e696a2              # double 2.7710119999999998
	.quad	0x400278b69552e2fc              # double 2.308942
	.quad	0x400e2a209aaa3ad2              # double 3.7705700000000002
	.quad	0x4009af48c2e770bd              # double 3.210588
	.quad	0x3fe122424a276b7f              # double 0.53543200000000002
	.quad	0x3feaab4fa48301a8              # double 0.83341200000000004
	.quad	0x401e7f359ff4fd6d              # double 7.6242279999999995
	.quad	0x401a7b178b370047              # double 6.6202069999999997
	.quad	0x40115976ff3ade22              # double 4.3373679999999997
	.quad	0x4018f3f705857aff              # double 6.2382470000000003
	.quad	0x4022888b75ea67e8              # double 9.2666889999999995
	.quad	0x4015b743632c1f43              # double 5.4289680000000002
	.quad	0x3fe33ae46cfc829d              # double 0.600939
	.quad	0x3fdeaec4a4095f24              # double 0.47941699999999998
	.quad	0x3fe329bae46cfc83              # double 0.59884400000000004
	.quad	0x400fa6a875d56f33              # double 3.9563760000000001
	.quad	0x4023e152f3c2dadc              # double 9.9400860000000008
	.quad	0x40165cfbfc6540cc              # double 5.5908049999999996
	.quad	0x40127fd976ff3ade              # double 4.6248529999999999
	.quad	0x40148ab53d640e9d              # double 5.1354569999999997
	.quad	0x401cfe086bdf4c2b              # double 7.2480789999999997
	.quad	0x4018e16ebd4cfd09              # double 6.2201490000000002
	.quad	0x401cae95b78cc9a7              # double 7.1704929999999996
	.quad	0x3fe9005c4651f3e9              # double 0.78129400000000004
	.quad	0x40200fd0aed99cbf              # double 8.0308890000000002
	.quad	0x40106a63305100a4              # double 4.1038940000000004
	.quad	0x40135046c764ae00              # double 4.8283950000000004
	.quad	0x40085775b8130165              # double 3.0427050000000002
	.quad	0x401087991bc55864              # double 4.1324199999999998
	.quad	0x4023317e77d523b3              # double 9.5966679999999993
	.quad	0x40201eb91b3f20a7              # double 8.0600059999999996
	.quad	0x40153615ebfa8f7e              # double 5.3028180000000003
	.quad	0x401c41e9f2778141              # double 7.0643690000000001
	.quad	0x4000b50870110a13              # double 2.0883949999999998
	.quad	0x401afc5004fb1184              # double 6.7463990000000003
	.quad	0x400c76c93a711516              # double 3.558001
	.quad	0x3ff8405e5f30e7ff              # double 1.5157149999999999
	.quad	0x3ffebcefaa4766c7              # double 1.921127
	.quad	0x4016311b60ae9681              # double 5.5479560000000001
	.quad	0x401bbc66d373affb              # double 6.933986
	.quad	0x400287cbf6e3f78c              # double 2.3163070000000001
	.quad	0x40196f2ecf206424              # double 6.3585770000000004
	.quad	0x3fe8ac5c13fd0d06              # double 0.77103999999999995
	.quad	0x3ffaa72c94b380cb              # double 1.6658139999999999
	.quad	0x401c1e1bd1ed9dfe              # double 7.0294030000000003
	.quad	0x4010d1e215336dec              # double 4.2049640000000004
	.quad	0x3ffd6e770bd017db              # double 1.839469
	.quad	0x3fdb964e8b7e4de4              # double 0.43104900000000002
	.quad	0x4013be047d3d4281              # double 4.9355640000000003
	.quad	0x401bd868fd199bb2              # double 6.9613379999999996
	.quad	0x40223cc6e6d9be4d              # double 9.1187050000000003
	.quad	0x401e030f062d40ab              # double 7.502987
	.quad	0x401a2601797cc3a0              # double 6.537115
	.quad	0x3ff288adeebb341e              # double 1.158369
	.quad	0x401a3e5fb71fbc5e              # double 6.5609120000000001
	.quad	0x4022c06748e47560              # double 9.375788
	.quad	0x4020d32e7b3d8e00              # double 8.4124639999999999
	.quad	0x401f8fdeb52c9d17              # double 7.890498
	.quad	0x4010ea569b17481b              # double 4.2288459999999999
	.quad	0x4022bfe45803cd14              # double 9.3747889999999998
	.quad	0x3ff8f661f18c9fb6              # double 1.560152
	.quad	0x4019b178f68be2f8              # double 6.4233130000000003
	.quad	0x4012cdd82fd75e20              # double 4.7010199999999998
	.quad	0x40194feb8d823422              # double 6.3280469999999998
	.quad	0x400e220ff540895d              # double 3.766632
	.quad	0x3ff64622c4502689              # double 1.392123
	.quad	0x3ff20f4b61fe21d9              # double 1.1287339999999999
	.quad	0x3fe35cca70d1fa33              # double 0.60507699999999998
	.quad	0x3ff9054477ff151e              # double 1.5637859999999999
	.quad	0x4010766d7a56de33              # double 4.1156519999999999
	.quad	0x3feb260913a4f872              # double 0.84839299999999995
	.quad	0x4004d9e7b80a9de9              # double 2.6063990000000001
	.quad	0x400ec51d25aab474              # double 3.846247
	.quad	0x3fcc85db76b3bb84              # double 0.22283500000000001
	.quad	0x3ff1d232d2bb2357              # double 1.113818
	.quad	0x3feb62c77574f723              # double 0.85580800000000001
	.quad	0x40224308787485e4              # double 9.1309240000000002
	.quad	0x4008fc9bc7714339              # double 3.1233439999999999
	.quad	0x401029ad85dfa872              # double 4.0407010000000003
	.quad	0x4023a8a159817b96              # double 9.8293560000000006
	.quad	0x3fe65df6555c52e7              # double 0.69896999999999998
	.quad	0x40108c67dfe32a06              # double 4.1371149999999997
	.quad	0x4010c8826aa8eb46              # double 4.1958099999999998
	.quad	0x3fe6867f0aa21a72              # double 0.70391800000000004
	.quad	0x3ffae02d9cf13cef              # double 1.6797310000000001
	.quad	0x40214b01c92ddbdb              # double 8.6464979999999994
	.quad	0x400006490a350d28              # double 2.003069
	.quad	0x40223c9abb01c92e              # double 9.1183680000000003
	.quad	0x40223750a02b8412              # double 9.1080369999999995
	.quad	0x4013a231c64ba94c              # double 4.9083930000000002
	.quad	0x40124790fb65668c              # double 4.5698889999999999
	.quad	0x400cd6ef8055fbb5              # double 3.604949
	.quad	0x4018432873bc903f              # double 6.0655840000000003
	.quad	0x3ff997082491afc0              # double 1.5993729999999999
	.quad	0x402178ced4e4c943              # double 8.7359530000000003
	.quad	0x4011e2c77574f723              # double 4.4714640000000001
	.quad	0x40141a66559f6ec6              # double 5.0257810000000003
	.quad	0x3fe8caba38759253              # double 0.77474699999999996
	.quad	0x402056b28d8665e0              # double 8.1693309999999997
	.quad	0x4015409917939a7c              # double 5.3130839999999999
	.quad	0x3ffeecb31c219eb6              # double 1.932788
	.quad	0x4001a3e39f77292c              # double 2.2050239999999999
	.quad	0x401e72eec7c957cd              # double 7.6122389999999997
	.quad	0x3fdda5375c8d9f90              # double 0.46320899999999998
	.quad	0x3ff56bfb9bed30f0              # double 1.3388629999999999
	.quad	0x401b434e3369b9d8              # double 6.815728
	.quad	0x40228031f03d145e              # double 9.2503810000000009
	.quad	0x3ff870984e3ffef4              # double 1.5274890000000001
	.quad	0x40191b7ae5796bfd              # double 6.2768360000000003
	.quad	0x401774ae85b9e8c4              # double 5.8639469999999996
	.quad	0x401ecd46b26bf877              # double 7.7004650000000003
	.quad	0x4021a50763a19008              # double 8.8223219999999998
	.quad	0x401ed4cc6822ff09              # double 7.7078110000000004
	.quad	0x4023f2e2fbe33acd              # double 9.9743879999999993
	.quad	0x400c2c79f666234b              # double 3.5217170000000002
	.quad	0x40188bcb1cc96463              # double 6.1365170000000004
	.quad	0x4015217bd8be7297              # double 5.282699
	.quad	0x3ff14fd5cb790fb6              # double 1.0819909999999999
	.quad	0x400cdaaa3ad18d26              # double 3.60677
	.quad	0x40222634fc610f0f              # double 9.0746230000000008
	.quad	0x40217adc6e2a8006              # double 8.7399629999999995
	.quad	0x400b2d72ffd1dcd7              # double 3.397192
	.quad	0x4021e31fab96f21f              # double 8.9436009999999992
	.quad	0x4021f02c0a4a05de              # double 8.9690860000000008
	.quad	0x40100cf398e97072              # double 4.0126480000000004
	.quad	0x401f7dbf487fcb92              # double 7.8727999999999998
	.quad	0x4021e6b7ed41b75a              # double 8.9506219999999992
	.quad	0x402124b4aec8d5c7              # double 8.5716909999999995
	.quad	0x4014704b3c3e74b0              # double 5.1096620000000001
	.quad	0x3fd9d87f88765ba7              # double 0.403839
	.quad	0x401514588a04d120              # double 5.2698689999999999
	.quad	0x401b206530058149              # double 6.7816359999999998
	.quad	0x401e1c99f1ae2da5              # double 7.5279309999999997
	.quad	0x4017cade657b84dc              # double 5.9481140000000003
	.quad	0x3fe766d7a56de332              # double 0.73130399999999995
	.quad	0x401c823aafff36ac              # double 7.1271769999999997
	.quad	0x400bacbc8c0ce91d              # double 3.4593440000000002
	.quad	0x401784f5d35653ca              # double 5.8798440000000003
	.quad	0x401290b30b5aa716              # double 4.6413080000000004
	.quad	0x3fd3d916872b020c              # double 0.31012499999999998
	.quad	0x3fcab5675579af19              # double 0.20866100000000001
	.quad	0x40214637585be1a8              # double 8.6371409999999997
	.quad	0x3ff4b632c1f42bb6              # double 1.2944819999999999
	.quad	0x402252ae07e5a78f              # double 9.1614839999999997
	.quad	0x401fee9a6f826edb              # double 7.9830110000000003
	.quad	0x4020c3e1a8262457              # double 8.3825810000000001
	.quad	0x401377d5a9eb2075              # double 4.8670260000000001
	.quad	0x4021ac7f993d5348              # double 8.8369110000000006
	.quad	0x40135367e414e7ef              # double 4.8314510000000004
	.quad	0x3ff3207f66e86c66              # double 1.1954340000000001
	.quad	0x401abbd4cfd08d4c              # double 6.6834290000000003
	.quad	0x4011ed3c792d1288              # double 4.4816760000000002
	.quad	0x401af70c1333b96b              # double 6.7412570000000001
	.quad	0x402322bf76a2f48c              # double 9.5678669999999996
	.quad	0x4000fce95faa8a83              # double 2.1234920000000002
	.quad	0x4002bfc2a8869c67              # double 2.3436330000000001
	.quad	0x3ff9a0ff540895d1              # double 1.6018060000000001
	.quad	0x4012f9bf9c62a1b6              # double 4.7438950000000002
	.quad	0x3fd3045baf533f42              # double 0.29714099999999999
	.quad	0x3fe2f5104d551d69              # double 0.59241500000000002
	.quad	0x40222ffde7210be9              # double 9.0937339999999995
	.quad	0x40047ebe1650a45d              # double 2.5618859999999999
	.quad	0x402389c51dabe271              # double 9.7690819999999991
	.quad	0x3fd20c1b97353b4b              # double 0.28198899999999999
	.quad	0x4021c7ede97d06bc              # double 8.8904870000000002
	.quad	0x3feeddaad601ffb5              # double 0.96455900000000005
	.quad	0x401daef6b5d462c3              # double 7.4208629999999998
	.quad	0x401b73397dd00f77              # double 6.8625239999999996
	.quad	0x3ff21f9ce8d972cd              # double 1.1327179999999999
	.quad	0x40089824d4cb9ecf              # double 3.0742889999999998
	.quad	0x4015083be6601bca              # double 5.2580410000000004
	.quad	0x401082c493426784              # double 4.1277030000000003
	.quad	0x401eb1fc08fa7a85              # double 7.6738129999999999
	.quad	0x4017456eefa1e3eb              # double 5.817806
	.quad	0x401f80fcb4f1e4b4              # double 7.8759639999999997
	.quad	0x40183751ce28ed5f              # double 6.0540229999999999
	.quad	0x3fee7ca643cc07ab              # double 0.95271600000000001
	.quad	0x400a70cf5b1c8649              # double 3.3050830000000002
	.quad	0x3f6fd36f7e3d1cc1              # double 0.003885
	.quad	0x4021d6473471f794              # double 8.9185119999999997
	.quad	0x400e2e3369b9d7fe              # double 3.7725590000000002
	.quad	0x4016477c45cbbc2c              # double 5.5698100000000004
	.quad	0x400a9d32c625e99f              # double 3.3267570000000002
	.quad	0x3fb253eb399f5dff              # double 0.071593000000000004
	.quad	0x4010b288051c9f73              # double 4.174347
	.quad	0x4001868db8bac711              # double 2.1907000000000001
	.quad	0x40186837b4a2339c              # double 6.1017749999999999
	.quad	0x400679af9ebe9c88              # double 2.8094169999999998
	.quad	0x401a41715c63ae25              # double 6.5639089999999998
	.quad	0x40013ab862b27cbf              # double 2.1536719999999998
	.quad	0x40069d701d9f4d38              # double 2.8268740000000001
	.quad	0x402272dd377e1b8f              # double 9.2243440000000003
	.quad	0x4020d0f08461f9f0              # double 8.4080849999999998
	.quad	0x401762e87d2c7b89              # double 5.84659
	.quad	0x4009998958d9b5e9              # double 3.1999689999999998
	.quad	0x4012e4da4ce8101f              # double 4.7234889999999998
	.quad	0x400043076c050bd8              # double 2.0327289999999998
	.quad	0x401300b88ca3e7d1              # double 4.7507039999999998
	.quad	0x4017073d188f42ff              # double 5.7570690000000004
	.quad	0x40231a69be09bb6b              # double 9.5515880000000006
	.quad	0x3ff29b530ced4e4d              # double 1.1629210000000001
	.quad	0x400bd607c4199fe4              # double 3.4795069999999999
	.quad	0x4017863886594af5              # double 5.8810750000000001
	.quad	0x3ffc5e8d5410f94d              # double 1.7730840000000001
	.quad	0x401825796bfca85d              # double 6.0365960000000003
	.quad	0x401d40064a9cdc44              # double 7.3125239999999998
	.quad	0x400d18e086bdf4c3              # double 3.6371470000000001
	.quad	0x401f366666666666              # double 7.8031249999999996
	.quad	0x3ffa1df548ecd8dc              # double 1.632314
	.quad	0x401f6c34c1a8ac5c              # double 7.8556699999999999
	.quad	0x4003d48a159817b9              # double 2.4787789999999998
	.quad	0x3fdae0828c36da88              # double 0.41995300000000002
	.quad	0x4013122b7baecd08              # double 4.7677440000000004
	.quad	0x400b37bb73083559              # double 3.4022130000000002
	.quad	0x400201f8e3ac0c63              # double 2.250963
	.quad	0x402082fab53d640f              # double 8.2558190000000007
	.quad	0x4016478d92fb19e7              # double 5.5698759999999998
	.quad	0x3feec6d82ba5a038              # double 0.96177299999999998
	.quad	0x4022973519bd4068              # double 9.2953270000000003
	.quad	0x3ffe728d8665e02f              # double 1.9029670000000001
	.quad	0x401e5cb252ce032e              # double 7.5905240000000003
	.quad	0x401ae0e560418937              # double 6.7196249999999997
	.quad	0x4022c99285a921cd              # double 9.3936960000000002
	.quad	0x3fe00a0d349be8ff              # double 0.50122699999999998
	.quad	0x40106b70ef566491              # double 4.1049230000000003
	.quad	0x400fe80f12c27a63              # double 3.9883099999999998
	.quad	0x3feede1198aeb80f              # double 0.96460800000000002
	.quad	0x3ff2c4c37e6f71a8              # double 1.173038
	.quad	0x400e3b70ef566491              # double 3.7790240000000002
	.quad	0x400736fb09203a32              # double 2.9018459999999999
	.quad	0x401def04577d9557              # double 7.4834149999999999
	.quad	0x40236ad9f0a1be2b              # double 9.7086939999999994
	.quad	0x401726ece13f4a99              # double 5.7880130000000003
	.quad	0x3ff7b6cdf266ba49              # double 1.4821299999999999
	.quad	0x3ff48e086bdf4c2b              # double 1.2846759999999999
	.quad	0x40015519bd4067cf              # double 2.166553
	.quad	0x3ffd519ce075f6fd              # double 1.832425
	.quad	0x400523f141205bc0              # double 2.64255
	.quad	0x4011ac63ae2541d9              # double 4.4183490000000001
	.quad	0x4022827c5ac471b4              # double 9.2548549999999991
	.quad	0x3fd52e9ccb7d4174              # double 0.33096999999999999
	.quad	0x40047233df2a9d62              # double 2.5557629999999998
	.quad	0x4020a4308feac42f              # double 8.3206830000000007
	.quad	0x40192ebbfd71b047              # double 6.2956390000000004
	.quad	0x4010fd551d68c693              # double 4.247395
	.quad	0x3ff64bc05d52c16e              # double 1.393494
	.quad	0x3ff748c5004fb118              # double 1.4552659999999999
	.quad	0x3ff3b6cdf266ba49              # double 1.2321299999999999
	.quad	0x401ee566cf41f213              # double 7.7240250000000001
	.quad	0x401aa2799a1fd157              # double 6.6586670000000003
	.quad	0x401cc03d9a95421c              # double 7.187735
	.quad	0x40128209246bf013              # double 4.6269879999999999
	.quad	0x3fdfd606317268d3              # double 0.49743799999999999
	.quad	0x402388d32830a0b2              # double 9.7672360000000005
	.quad	0x40212bbdbe3c1052              # double 8.5854320000000008
	.quad	0x4011a750c1b97354              # double 4.4133940000000003
	.quad	0x402222b324851a87              # double 9.0677730000000007
	.quad	0x40117b549f94855e              # double 4.3704400000000003
	.quad	0x40071a9c99285a92              # double 2.887994
	.quad	0x3fbff8982cb20fb2              # double 0.124887
	.quad	0x4021c2c7fbacb429              # double 8.8804320000000008
	.quad	0x3fe90dae3e6c4c59              # double 0.78291999999999995
	.quad	0x400c258a32f44913              # double 3.5183300000000002
	.quad	0x40160f2239e6ab9b              # double 5.5147789999999999
	.quad	0x4021e59ea57214f0              # double 8.9484759999999994
	.quad	0x3ff492b0a6fc58ac              # double 1.2858130000000001
	.quad	0x3fe13eb7cbb3c819              # double 0.538906
	.quad	0x401ec75ddd2ae8e2              # double 7.6946940000000001
	.quad	0x4020124ebdd334c6              # double 8.0357570000000003
	.quad	0x400ff80a17b0f6ad              # double 3.9961129999999998
	.quad	0x400505072085b185              # double 2.6274549999999999
	.quad	0x4015a8fe69270b07              # double 5.4150330000000002
	.quad	0x401f7855970b49e0              # double 7.8675139999999999
	.quad	0x4007cbb341e14be0              # double 2.9744630000000001
	.quad	0x3fa43526527a2058              # double 0.039468000000000003
	.quad	0x40135976bc1effa0              # double 4.8373670000000004
	.quad	0x401c031098d477bc              # double 7.002993
	.quad	0x4015efa2ad3e920c              # double 5.484019
	.quad	0x4015ad2a1f8e3ac1              # double 5.4191060000000002
	.quad	0x401749d27c393682              # double 5.8220919999999996
	.quad	0x4009c051c9f72f77              # double 3.218906
	.quad	0x402037ceb78897ea              # double 8.1089990000000007
	.quad	0x400081b7e0ac7da2              # double 2.063339
	.quad	0x401d350f40e5a35d              # double 7.3018159999999996
	.quad	0x3ff9a582dbe7f2c3              # double 1.602908
	.quad	0x40121e136e71cda3              # double 4.5293710000000003
	.quad	0x4022b33e35c5b4ab              # double 9.3500840000000007
	.quad	0x401eb4ed2cbea4ec              # double 7.6766860000000001
	.quad	0x4020330728e92d56              # double 8.0996640000000006
	.quad	0x40208486f049a997              # double 8.2588419999999996
	.quad	0x3ff96f60e0eb67c3              # double 1.5896920000000001
	.quad	0x4022fe5b4245f5ae              # double 9.4967900000000007
	.quad	0x4017cf77f27fe4bd              # double 5.9526060000000003
	.quad	0x3ffb1d9e40c8472c              # double 1.694731
	.quad	0x401a77ee4e26d480              # double 6.6171199999999999
	.quad	0x40185079a2834d27              # double 6.078589
	.quad	0x3febfba01eeed890              # double 0.87446599999999997
	.quad	0x400ee6833c60029f              # double 3.862555
	.quad	0x4009f66490a350d3              # double 3.2453090000000002
	.quad	0x4021b3d25247cb71              # double 8.8512140000000006
	.quad	0x400264aada33bd9d              # double 2.2991540000000001
	.quad	0x400e59aa60913a50              # double 3.7937820000000002
	.quad	0x401181e1d2178f69              # double 4.3768380000000002
	.quad	0x401adba450acc0be              # double 6.7144940000000002
	.quad	0x4018b2378ab0c88a              # double 6.1740399999999998
	.quad	0x40224422467be554              # double 9.1330740000000005
	.quad	0x3fe4c6045baf533f              # double 0.64917199999999997
	.quad	0x4007cd6cb5350093              # double 2.9753050000000001
	.quad	0x40113b00bcbe61d0              # double 4.30762
	.quad	0x3ff41909f1f14984              # double 1.256113
	.quad	0x400ae8e2e2b8c75c              # double 3.3637139999999999
	.quad	0x4022c5a038194c01              # double 9.3859879999999993
	.quad	0x3ff2e46f15619115              # double 1.1807700000000001
	.quad	0x402114983d790753              # double 8.5402240000000003
	.quad	0x4020f81626b2f230              # double 8.4845439999999996
	.quad	0x4015bec460ed80a1              # double 5.4362959999999996
	.quad	0x401e597353b4b2fb              # double 7.5873540000000003
	.quad	0x402017d3d4280ae1              # double 8.046538
	.quad	0x4006724851a86940              # double 2.8058019999999999
	.quad	0x401d1d44998d0460              # double 7.2785820000000001
	.quad	0x400c0d8665e02ea9              # double 3.5066039999999998
	.quad	0x401ef29cfdd22856              # double 7.7369269999999997
	.quad	0x3ffa9565c2d27807              # double 1.6614739999999999
	.quad	0x401926117720c8cd              # double 6.2871759999999997
	.quad	0x4016ec4b09e98dce              # double 5.7307550000000003
	.quad	0x4006bf22c01e68a1              # double 2.8433280000000001
	.quad	0x400e9fc9795b35b1              # double 3.8280210000000001
	.quad	0x401c360ae9680e06              # double 7.0527759999999997
	.quad	0x3ff7f3647baa9b4a              # double 1.4969220000000001
	.quad	0x4021f44b4d056c51              # double 8.9771370000000008
	.quad	0x40211de43ed959a3              # double 8.5583819999999999
	.quad	0x400dba1b1960fa16              # double 3.7158720000000001
	.quad	0x40074c9752977c89              # double 2.912398
	.quad	0x3ff7abf8769ec2ce              # double 1.4794849999999999
	.quad	0x4012fa5accd53049              # double 4.7444870000000003
	.quad	0x3ffbbdc69f8c21e2              # double 1.733832
	.quad	0x3ff6d413122b7baf              # double 1.426776
	.quad	0x3ff8f545c78a6dad              # double 1.5598810000000001
	.quad	0x401e766516db0dd8              # double 7.6156199999999998
	.quad	0x3ff3aaae297396d1              # double 1.2291700000000001
	.quad	0x401068aefb2aae29              # double 4.1022299999999996
	.quad	0x3fd3cf355cd91eeb              # double 0.30952200000000002
	.quad	0x3ffe58383ad9f0a2              # double 1.8965380000000001
	.quad	0x401bb1a2a4db163c              # double 6.9234720000000003
	.quad	0x401b002cd39da166              # double 6.7501709999999999
	.quad	0x401aa6634117f844              # double 6.6624879999999997
	.quad	0x40217cb252ce032e              # double 8.7435480000000005
	.quad	0x4011b727dcbddb98              # double 4.4288629999999998
	.quad	0x3feac34e3369b9d8              # double 0.836341
	.quad	0x401d6b502ababead              # double 7.3547979999999997
	.quad	0x400aae9f6a93f291              # double 3.3352650000000001
	.quad	0x40220a93293d102c              # double 9.0206540000000003
	.quad	0x3fff4710cb295e9e              # double 1.95485
	.quad	0x40194d976ff3ade2              # double 6.3257729999999999
	.quad	0x40165fb9bed30f06              # double 5.5934819999999998
	.quad	0x401b253586ca89fc              # double 6.7863369999999996
	.quad	0x4020f96ebd4cfd09              # double 8.4871730000000003
	.quad	0x4005ea832b990afe              # double 2.7395079999999998
	.quad	0x3ff2f78140dd3fe2              # double 1.1854260000000001
	.quad	0x3fc065d7cb2d905c              # double 0.128108
	.quad	0x3ff1d331a08bfc22              # double 1.114061
	.quad	0x4005b56a7ac81d3b              # double 2.7135820000000002
	.quad	0x3ff5e13c254a3c64              # double 1.367489
	.quad	0x4019ef62f9ca5bd9              # double 6.4837759999999998
	.quad	0x3feeec918e325d4a              # double 0.96637799999999996
	.quad	0x4020d8c5eb313be2              # double 8.4233849999999997
	.quad	0x4013fad42c3c9eed              # double 4.9949500000000002
	.quad	0x3feea1c25d074214              # double 0.95724600000000004
	.quad	0x401f34fca42aed14              # double 7.8017450000000004
	.quad	0x4000df0aa21a719b              # double 2.1089069999999999
	.quad	0x401808b439581062              # double 6.0084999999999997
	.quad	0x40156f30a4e379b7              # double 5.3585839999999996
	.quad	0x40141e2b8c75c4a8              # double 5.0294629999999998
	.quad	0x40213a4463065f96              # double 8.6138030000000008
	.quad	0x40127c304ccee5ac              # double 4.6212780000000002
	.quad	0x3ff4168c692f6e83              # double 1.2555050000000001
	.quad	0x40238cac29bf162b              # double 9.7747510000000001
	.quad	0x4020bbdcf0307f24              # double 8.3669200000000003
	.quad	0x3ffb2e6106ab14ec              # double 1.698823
	.quad	0x4014832b55ef1fde              # double 5.1280950000000001
	.quad	0x40205ee2435696e6              # double 8.1853200000000008
	.quad	0x40214b3700474d9c              # double 8.6469039999999992
	.quad	0x4019a9e44fa05144              # double 6.4159100000000002
	.quad	0x4010ff08893b7d85              # double 4.2490560000000004
	.quad	0x400ff5feda661284              # double 3.9951150000000002
	.quad	0x3fd58eabffcdab19              # double 0.33683299999999999
	.quad	0x402061932d6ece14              # double 8.190576
	.quad	0x401256512a94ff00              # double 4.5842939999999999
	.quad	0x4014fcac4b4d056c              # double 5.2467509999999997
	.quad	0x40149be9856a37ac              # double 5.1522579999999998
	.quad	0x3fe4ee696a26e547              # double 0.65410299999999999
	.quad	0x4008e326e115592e              # double 3.1109140000000002
	.quad	0x40037b54195cc858              # double 2.435219
	.quad	0x40239edd052934ad              # double 9.8102800000000005
	.quad	0x401e6321a2e7f6f5              # double 7.5968080000000002
	.quad	0x4014ce6f71a7e308              # double 5.2015969999999996
	.quad	0x401f2edd8b60f1b2              # double 7.7957669999999997
	.quad	0x40030f7caa7589f0              # double 2.3825620000000001
	.quad	0x401f458255b035bd              # double 7.8178799999999997
	.quad	0x4017d0b8066c2acc              # double 5.9538270000000004
	.quad	0x401641b75a74c09c              # double 5.5641759999999998
	.quad	0x3fd2961c36976bc2              # double 0.290412
	.quad	0x3fbe8b19a415f45e              # double 0.11931
	.quad	0x3fc9221858bc59b8              # double 0.196353
	.quad	0x401365821294573a              # double 4.8491289999999996
	.quad	0x4015462a1b5c7cd9              # double 5.3185200000000004
	.quad	0x402271f98b71b8aa              # double 9.222607
	.quad	0x3ff5141c8216c615              # double 1.31741
	.quad	0x401fe73c0c1fc8f3              # double 7.9758149999999998
	.quad	0x40195df3f961804e              # double 6.3417510000000004
	.quad	0x400f697635e7429a              # double 3.9264950000000001
	.quad	0x4023e7c9bc771434              # double 9.9527110000000007
	.quad	0x4001a4e50c5eb314              # double 2.2055150000000001
	.quad	0x401b7d234eb9a177              # double 6.8722050000000001
	.quad	0x4010b7939a7c17a9              # double 4.1792740000000004
	.quad	0x4022009aaa3ad18d              # double 9.0011799999999997
	.quad	0x4017569ced0b30b6              # double 5.8345830000000003
	.quad	0x3ff7942f61ed5ae2              # double 1.473678
	.quad	0x40213474fb549f95              # double 8.6024550000000009
	.quad	0x40170fe154434e33              # double 5.7655079999999996
	.quad	0x3fee54738a3b57c5              # double 0.94780900000000001
	.quad	0x4010a42f1ed17c5f              # double 4.160336
	.quad	0x401d8d4a1ad6451c              # double 7.3879780000000004
	.quad	0x40226337eb28d866              # double 9.1937859999999993
	.quad	0x40105e53eb399f5e              # double 4.092117
	.quad	0x401a60203e63e8de              # double 6.5938730000000003
	.quad	0x4010eb56b8737974              # double 4.2298229999999997
	.quad	0x3fbcd78c436fc159              # double 0.112664
	.quad	0x4023c9ee2435696e              # double 9.8943949999999994
	.quad	0x40203d1b4fe79ee0              # double 8.1193489999999997
	.quad	0x401236290eed02cd              # double 4.5528909999999998
	.quad	0x402304f93bc0a06f              # double 9.5097140000000006
	.quad	0x40223d8e219652bd              # double 9.1202249999999996
	.quad	0x40190fa6defc7a3a              # double 6.2652850000000004
	.quad	0x4000ea5d6bebe165              # double 2.114436
	.quad	0x400d1a133c1ce6c1              # double 3.6377320000000002
	.quad	0x3fe29a4df47f993d              # double 0.58133599999999996
	.quad	0x4020cf1044f1a198              # double 8.4044209999999993
	.quad	0x4010ba73f748a15a              # double 4.1820830000000004
	.quad	0x40205c32a8c9b845              # double 8.1800739999999994
	.quad	0x400951105e1c1509              # double 3.1645819999999998
	.quad	0x401a6eaf251c193b              # double 6.6080899999999998
	.quad	0x4013a600f345069a              # double 4.9121129999999997
	.quad	0x3fdc5c0767d34df0              # double 0.44311699999999998
	.quad	0x400b47b4e54f7a92              # double 3.4100130000000002
	.quad	0x40199dd76683c298              # double 6.4041420000000002
	.quad	0x4010eb2745bf26f2              # double 4.2296420000000001
	.quad	0x3fb87bfe7e1fc090              # double 0.095642000000000004
	.quad	0x40103b2cc70867ae              # double 4.0577880000000004
	.quad	0x400ef6f08cc575c0              # double 3.8705759999999998
	.quad	0x40178f4d7add15f0              # double 5.8899439999999998
	.quad	0x3ff37deb52c9d170              # double 1.218242
	.quad	0x401f7066c2acb85a              # double 7.8597669999999997
	.quad	0x402153e8ff327aa7              # double 8.6638870000000008
	.quad	0x3fca82491afc04c9              # double 0.20710100000000001
	.quad	0x3ff9235d67ba237d              # double 1.571134
	.quad	0x4023a78290689870              # double 9.8271680000000003
	.quad	0x40234116ca46e08f              # double 9.6271269999999997
	.quad	0x40152c53f39d1b2e              # double 5.2932889999999997
	.quad	0x3fe4a1d323fee2ca              # double 0.64475400000000005
	.quad	0x401376d506573216              # double 4.866047
	.quad	0x4023ea0685553ef7              # double 9.9570810000000005
	.quad	0x3fd50ad46f587d70              # double 0.32878600000000002
	.quad	0x3fd4a7d24180d3d0              # double 0.322743
	.quad	0x4022fe8db8bac711              # double 9.4971750000000003
	.quad	0x3fd6c050bd87b56c              # double 0.35548800000000003
	.quad	0x400c926d8b1dd5d4              # double 3.5714980000000001
	.quad	0x3ffb3a19008205ff              # double 1.701684
	.quad	0x3ff050870110a138              # double 1.01966
	.quad	0x40003c06e19b90eb              # double 2.0293100000000002
	.quad	0x4022fef8f041461b              # double 9.4979929999999992
	.quad	0x3ff59dd5d3dc8b87              # double 1.3510340000000001
	.quad	0x3ffb0297bfa4c61e              # double 1.6881330000000001
	.quad	0x401224d5d80e496f              # double 4.5359720000000001
	.quad	0x4019e59c065b63d4              # double 6.4742280000000001
	.quad	0x4020c1f1cfbb9496              # double 8.3787979999999997
	.quad	0x4012bba83f4eca68              # double 4.6832589999999996
	.quad	0x401cbe8e1d6494d5              # double 7.1860889999999999
	.quad	0x40130fbe33acd5b7              # double 4.7653740000000004
	.quad	0x401d9f7878b7a1c2              # double 7.4057329999999997
	.quad	0x4005597cc39ffd61              # double 2.668695
	.quad	0x401eb9c99285a922              # double 7.6814330000000002
	.quad	0x40231ad2135daad6              # double 9.552384
	.quad	0x40208ab4d8ba40d9              # double 8.2709109999999999
	.quad	0x4019ab702602c908              # double 6.4174199999999999
	.quad	0x401cc66a98244e94              # double 7.1937660000000001
	.quad	0x401b98a7e73a365d              # double 6.8990780000000003
	.quad	0x401228d1526d8b1e              # double 4.5398610000000001
	.quad	0x4017f2ee84ad794a              # double 5.9872379999999996
	.quad	0x3ffde0fd3b29a1ba              # double 1.867429
	.quad	0x40141ccf28c79f66              # double 5.0281339999999997
	.quad	0x401c670196d8f4f9              # double 7.1005919999999998
	.quad	0x401a084dfce3150e              # double 6.5081100000000003
	.quad	0x400671f3e89a88ad              # double 2.8056410000000001
	.quad	0x4022dfdfa00e27e1              # double 9.4372530000000001
	.quad	0x4023ba14ad362e90              # double 9.8634389999999996
	.quad	0x4022f15182a9930c              # double 9.4713250000000002
	.quad	0x4019e7acc4ef88b9              # double 6.4762449999999996
	.quad	0x401299aae6c8f755              # double 4.6500659999999998
	.quad	0x401b9eaf6837f7be              # double 6.9049659999999999
	.quad	0x401139cc319c5a3e              # double 4.3064429999999998
	.quad	0x401f5add9c27e953              # double 7.8387359999999999
	.quad	0x4012bf76a2f48c2e              # double 4.6869759999999996
	.quad	0x40134a0d77b7c782              # double 4.822317
	.quad	0x401c7df7a4e7ab75              # double 7.1230149999999997
	.quad	0x4020d9c92ddbdb5e              # double 8.4253630000000008
	.quad	0x4011eaf1cb89d6ae              # double 4.479438
	.quad	0x401041a8262456f7              # double 4.0641179999999997
	.quad	0x4009ab00ffda4053              # double 3.2084980000000001
	.quad	0x400cf6e47dc37a3e              # double 3.6205530000000001
	.quad	0x4020fc9fb6134ce4              # double 8.4934060000000002
	.quad	0x401972b0a6fc58ac              # double 6.3620020000000004
	.quad	0x4015a2263d816acf              # double 5.4083490000000003
	.quad	0x40157906cca2db62              # double 5.3681900000000002
	.quad	0x3ff3484c6a3bddfd              # double 1.2051510000000001
	.quad	0x3fc4fb549f94855e              # double 0.16392000000000001
	.quad	0x400ea922d948dc12              # double 3.832586
	.quad	0x40192003ab862b28              # double 6.2812640000000002
	.quad	0x402091a77e5eaab0              # double 8.2844809999999995
	.quad	0x3fea55ef1fddebd9              # double 0.82299
	.quad	0x401f2ccc46950fc7              # double 7.7937479999999998
	.quad	0x401a6b1e5c0b9991              # double 6.6046079999999998
	.quad	0x401da7ce95faa8a8              # double 7.4138739999999998
	.quad	0x401fdc197e564734              # double 7.9649409999999996
	.quad	0x3fe0a97e132b55ef              # double 0.52068999999999999
	.quad	0x4022a1a543f1c758              # double 9.3157139999999998
	.quad	0x401c10e12e83a10a              # double 7.0164840000000002
	.quad	0x3ff9e90470a808c8              # double 1.619389
	.quad	0x4010d9068986fcdf              # double 4.2119390000000001
	.quad	0x401acf3387160957              # double 6.7023450000000002
	.quad	0x4003d31876188b11              # double 2.4780739999999999
	.quad	0x3ff439a8cdea033e              # double 1.2640769999999999
	.quad	0x400e23cc07aaef2c              # double 3.7674789999999998
	.quad	0x401e01f4f50a02b8              # double 7.5019109999999997
	.quad	0x402253387160956c              # double 9.1625399999999999
	.quad	0x402271c7ffde7211              # double 9.2222290000000005
	.quad	0x400cbbf83382e44b              # double 3.5917819999999998
	.quad	0x401fecc2938de6de              # double 7.9812110000000001
	.quad	0x4007e5aab4741073              # double 2.987142
	.quad	0x4023cd1cc100e6b0              # double 9.9006100000000004
	.quad	0x4015cc5a3e39f773              # double 5.4495630000000004
	.quad	0x40148e353f7ced91              # double 5.1388749999999996
	.quad	0x4019745b6c3760bf              # double 6.3636299999999997
	.quad	0x400ac85caafbc1ad              # double 3.3478330000000001
	.quad	0x402346ec9e236c16              # double 9.6385240000000003
	.quad	0x4011cd330941c821              # double 4.4503899999999996
	.quad	0x3ff2d64a59c065b6              # double 1.1773169999999999
	.quad	0x402342a68f4b61fe              # double 9.6301769999999998
	.quad	0x3fbd78e5c4eb56fc              # double 0.11512600000000001
	.quad	0x40202c1bfbdf090f              # double 8.0861509999999992
	.quad	0x401795a682b62846              # double 5.8961430000000004
	.quad	0x3ff767cbf6e3f78c              # double 1.4628410000000001
	.quad	0x401ee11e85fd04a3              # double 7.719843
	.quad	0x401a0c6f7a0b5ed9              # double 6.5121440000000002
	.quad	0x4006751611ba3ca7              # double 2.8071709999999999
	.quad	0x3fe947c5260f5e42              # double 0.79001100000000002
	.quad	0x4023ecadddf43c7d              # double 9.9622639999999993
	.quad	0x401dcdaa92e62132              # double 7.4508460000000003
	.quad	0x4020653ac4f7ec35              # double 8.1977139999999995
	.quad	0x4018905186db50f4              # double 6.140936
	.quad	0x4004aad0c3d25248              # double 2.5834060000000001
	.quad	0x400a0f61672324c8              # double 3.2575099999999999
	.quad	0x40128da5119ce076              # double 4.638325
	.quad	0x4010e87c6327ed85              # double 4.2270370000000002
	.quad	0x40201343fa2ad3e9              # double 8.0376279999999998
	.quad	0x401c01fd9ba1b196              # double 7.0019439999999999
	.quad	0x3ff44bdfd2630ec3              # double 1.268524
	.quad	0x4022e9d451fc4c16              # double 9.4566979999999994
	.quad	0x4012ea90470a808d              # double 4.7290660000000004
	.quad	0x4007d1feeb2d0a24              # double 2.9775369999999999
	.quad	0x4018d9a0f0a5efe9              # double 6.2125279999999998
	.quad	0x40189a9e2bcf91a3              # double 6.1509939999999999
	.quad	0x4016060e94ee392e              # double 5.5059149999999999
	.quad	0x4017e5718eb89507              # double 5.9740659999999997
	.quad	0x3fcf74794ea07703              # double 0.24574199999999999
	.quad	0x401f9d9e83e425af              # double 7.903925
	.quad	0x4018d6c93a711516              # double 6.2097519999999999
	.quad	0x401e11172ef0ae53              # double 7.5166899999999996
	.quad	0x40232175d13d74d6              # double 9.5653520000000007
	.quad	0x3fec4918e325d4a6              # double 0.88392300000000001
	.quad	0x4022297b95a29414              # double 9.0810209999999997
	.quad	0x400f8de8f6cefed6              # double 3.9442919999999999
	.quad	0x3fec42b51bd61f5c              # double 0.88314300000000001
	.quad	0x401df9463cfb3312              # double 7.4934320000000003
	.quad	0x401d4220ff540896              # double 7.3145790000000002
	.quad	0x4017b4d551d68c69              # double 5.9265949999999998
	.quad	0x3fd35eaab042528b              # double 0.30265300000000001
	.quad	0x4006001abd1aa822              # double 2.750051
	.quad	0x4011a2795703f2d4              # double 4.4086660000000002
	.quad	0x4021fe093532e7b4              # double 8.9961640000000002
	.quad	0x4013486b59146e4c              # double 4.820722
	.quad	0x40098b8a5ce5b424              # double 3.1931349999999998
	.quad	0x400b25ee568a5050              # double 3.3935209999999998
	.quad	0x40049b5aea3161a2              # double 2.5758570000000001
	.quad	0x402206d3953dea46              # double 9.0133329999999994
	.quad	0x4000c0296b3354c1              # double 2.0938289999999999
	.quad	0x400c9ff25e56cd6c              # double 3.5780989999999999
	.quad	0x3ff8e5093964a59c              # double 1.555917
	.quad	0x401642f76e6106ab              # double 5.5653969999999999
	.quad	0x4001a73c4f3ba776              # double 2.206658
	.quad	0x3ff29be4cd749279              # double 1.16306
	.quad	0x401523f748a15981              # double 5.2851229999999996
	.quad	0x4019663d816aceab              # double 6.349844
	.quad	0x400a5079e59f2baa              # double 3.2892950000000001
	.quad	0x40203a23bff8a8f4              # double 8.1135540000000005
	.quad	0x401fb96e58a32f45              # double 7.9310850000000003
	.quad	0x401b0c4da9003eea              # double 6.7620149999999999
	.quad	0x4023a9d3671ac14c              # double 9.8316909999999992
	.quad	0x402005275ee99a63              # double 8.0100660000000001
	.quad	0x3fdb5ad538ac18f8              # double 0.42741899999999999
	.quad	0x4018ca22706d5065              # double 6.1973969999999996
	.quad	0x401c98d25edd0529              # double 7.1492399999999998
	.quad	0x4022b71044f1a198              # double 9.3575459999999992
	.quad	0x400d8af038e29f9d              # double 3.692841
	.quad	0x4023df4299d883ba              # double 9.9360549999999996
	.quad	0x400292b55ef1fddf              # double 2.3216350000000001
	.quad	0x4000cebf65dbfceb              # double 2.1009509999999998
	.quad	0x4022114e1a3f4667              # double 9.0337990000000001
	.quad	0x4018f17e34b94531              # double 6.2358330000000004
	.quad	0x401d4ad03d9a9542              # double 7.3230599999999999
	.quad	0x401627b7c7820a31              # double 5.5387870000000001
	.quad	0x401ced1d041cc533              # double 7.2315560000000003
	.quad	0x400343f0bae89eba              # double 2.4081739999999998
	.quad	0x3ffdfd4ae429e0a4              # double 1.874339
	.quad	0x4012ca4ebdd334c6              # double 4.6975660000000001
	.quad	0x40228ef8487b99d4              # double 9.2792379999999994
	.quad	0x4019d6a444178705              # double 6.4596109999999998
	.quad	0x401a96b2af145522              # double 6.6471660000000004
	.quad	0x401eea53fc0096ff              # double 7.7288360000000002
	.quad	0x402209b2c40d0aaa              # double 9.0189419999999991
	.quad	0x401b512f09d8c6d6              # double 6.8292809999999999
	.quad	0x40011f444e0daa0d              # double 2.1402670000000001
	.quad	0x402176264e48626f              # double 8.7307609999999993
	.quad	0x3fe539a9da597d4a              # double 0.66328900000000002
	.quad	0x4002b23cc8de2ac3              # double 2.3370299999999999
	.quad	0x4014c53bd1676641              # double 5.1926110000000003
	.quad	0x402092137f38c543              # double 8.2853049999999993
	.quad	0x40148e939eadd591              # double 5.1392350000000002
	.quad	0x4005ac9ea9a3d2d8              # double 2.7092869999999998
	.quad	0x401491f5be5d9e41              # double 5.1425390000000002
	.quad	0x40192563ed0f6274              # double 6.2865140000000004
	.quad	0x40141a9eb2074ea9              # double 5.0259960000000001
	.quad	0x4002b2f5dbb9cf9a              # double 2.337383
	.quad	0x4002b2e83a109d06              # double 2.3373569999999999
	.quad	0x4006aa1be2b4959e              # double 2.8330609999999998
	.quad	0x3fecb5d67ba237ce              # double 0.89719700000000002
	.quad	0x40175ebdd334c5da              # double 5.8425209999999996
	.quad	0x40188c79702e6645              # double 6.1371820000000001
	.quad	0x3ff7e09edbf8b9bb              # double 1.4923390000000001
	.quad	0x400e826b2f23033a              # double 3.8136809999999999
	.quad	0x400690cb295e9e1b              # double 2.8207
	.quad	0x401fa0b780346dc6              # double 7.9069500000000001
	.quad	0x400001682f944242              # double 2.0006870000000001
	.quad	0x40111a5efe931876              # double 4.2757529999999999
	.quad	0x402389c1b54195cd              # double 9.7690560000000008
	.quad	0x401de7735c182ecb              # double 7.4760260000000001
	.quad	0x402050cfe154434e              # double 8.1578359999999996
	.quad	0x40232ffe08aefb2b              # double 9.5937350000000005
	.quad	0x401bad2aa5c5f7c6              # double 6.9191079999999996
	.quad	0x40212bca1059ea57              # double 8.5855259999999998
	.quad	0x4021a9287c200c0f              # double 8.830387
	.quad	0x400a68abd5dc4007              # double 3.3011089999999998
	.quad	0x400adb45f17bd8be              # double 3.3570669999999998
	.quad	0x4012a710880d801b              # double 4.6631489999999998
	.quad	0x3facb7f5a5332ad0              # double 0.056091000000000002
	.quad	0x4010151e321a2e7f              # double 4.0206229999999996
	.quad	0x4023ad1782d38477              # double 9.83807
	.quad	0x401188116ebd4cfd              # double 4.382879
	.quad	0x3ff95b8dc55000c9              # double 1.5848519999999999
	.quad	0x40074d9513f8db49              # double 2.9128820000000002
	.quad	0x4002c492bc2fc697              # double 2.3459829999999999
	.quad	0x4003d2c061847f56              # double 2.4779059999999999
	.quad	0x401ecacd184c2720              # double 7.698048
	.quad	0x40126e3ac0c62e4d              # double 4.6076459999999999
	.quad	0x4019c036c9c0a8d2              # double 6.4377089999999999
	.quad	0x3fd1b599aa60913a              # double 0.27670899999999998
	.quad	0x3ff062c55c96030c              # double 1.024114
	.quad	0x40023cd035371972              # double 2.2796940000000001
	.quad	0x4004ad887ebf22c0              # double 2.5847329999999999
	.quad	0x401676594af4f0d8              # double 5.6155749999999998
	.quad	0x40162332acfb762e              # double 5.5343730000000004
	.quad	0x4023296ebd4cfd09              # double 9.5809230000000003
	.quad	0x3ff776c3760bf5d8              # double 1.4664950000000001
	.quad	0x4019cb1704ff4342              # double 6.4483300000000003
	.quad	0x3ff32dfb506dd69d              # double 1.198726
	.quad	0x4013f4c3c18b502b              # double 4.9890280000000002
	.quad	0x4022d203e63e8dda              # double 9.4101859999999995
	.quad	0x4018281ecd4aa10e              # double 6.03918
	.quad	0x3ff10f1b25f633ce              # double 1.0661879999999999
	.quad	0x4003fb45f17bd8be              # double 2.4976919999999998
	.quad	0x400ab894812be48a              # double 3.3401269999999998
	.quad	0x401bba7b4e54f7a9              # double 6.9321109999999999
	.quad	0x40192deb0fadf2ed              # double 6.294842
	.quad	0x4020ca24aada33be              # double 8.3948110000000007
	.quad	0x401afe581cf7878b              # double 6.7483829999999996
	.quad	0x4001521d53cddd6e              # double 2.165095
	.quad	0x3ff8c1aac53b0814              # double 1.547282
	.quad	0x40087e1437c5692b              # double 3.0615619999999999
	.quad	0x3fe8fafa7221858c              # double 0.78063700000000002
	.quad	0x4014d66fd651b0cd              # double 5.2094110000000002
	.quad	0x400834185058dde8              # double 3.0254370000000002
	.quad	0x3fd24070329802c1              # double 0.28518300000000002
	.quad	0x4020aab042528ae7              # double 8.3333759999999995
	.quad	0x4022e154eb13dfb1              # double 9.4401010000000002
	.quad	0x401a6f5ba2be058a              # double 6.6087480000000003
	.quad	0x4013b347e8ccdd94              # double 4.9250790000000002
	.quad	0x4010d13d74d594f2              # double 4.2043359999999996
	.quad	0x401bfd052934acb0              # double 6.99709
	.quad	0x402395d031055b8a              # double 9.7926040000000008
	.quad	0x4011ceeae9ee45c3              # double 4.4520679999999997
	.quad	0x40048c36da87a073              # double 2.5684640000000001
	.quad	0x40221b98e9707182              # double 9.0539009999999998
	.quad	0x4013af7f498c3b0c              # double 4.9213839999999998
	.quad	0x400da1b21c475e63              # double 3.7039529999999998
	.quad	0x400b1f77292c4934              # double 3.3903639999999999
	.quad	0x3fd1619da9c99286              # double 0.27158300000000002
	.quad	0x401f764adff822bc              # double 7.8655200000000001
	.quad	0x401871fff79c8430              # double 6.1113280000000003
	.quad	0x4015ba658c4bd33d              # double 5.4320279999999999
	.quad	0x40160b2a6b0d9514              # double 5.510904
	.quad	0x402273430f49491f              # double 9.2251209999999997
	.quad	0x4013311409a24031              # double 4.7979279999999997
	.quad	0x4022b36b8f9b1316              # double 9.3504299999999994
	.quad	0x401117eaa2a0a958              # double 4.2733559999999997
	.quad	0x4012d58f2e05ccc9              # double 4.7085540000000004
	.quad	0x40163f2ba9d1f601              # double 5.5616899999999996
	.quad	0x3ff344534bd76ee7              # double 1.2041809999999999
	.quad	0x40210597b30f8c65              # double 8.510923
	.quad	0x4017830f8c64fdb1              # double 5.8779890000000004
	.quad	0x40182b3cc4ac6cdb              # double 6.042224
	.quad	0x400a48eef1bac2df              # double 3.285612
	.quad	0x4008dd49d7ba6699              # double 3.1080510000000001
	.quad	0x4016af24d8fd5cb8              # double 5.6710390000000004
	.quad	0x401d2e7f2c3009b3              # double 7.295407
	.quad	0x4020dff7164c729f              # double 8.4374319999999994
	.quad	0x4008824febd09e13              # double 3.0636290000000002
	.quad	0x4021b700474d9c6b              # double 8.857424
	.quad	0x3fe18487b99d4520              # double 0.54742800000000003
	.quad	0x3fdd29c347e8ccde              # double 0.45567400000000002
	.quad	0x40127306a2b17050              # double 4.61233
	.quad	0x40190b51bd61f5be              # double 6.2610539999999997
	.quad	0x4020d0142f61ed5b              # double 8.4064040000000002
	.quad	0x4009caa64c2f837b              # double 3.2239499999999999
	.quad	0x401fc710880d801b              # double 7.9443989999999997
	.quad	0x3ffd4271fff79c84              # double 1.828722
	.quad	0x401b79dd7ecbb7fa              # double 6.8690090000000001
	.quad	0x40119e6b8305d95e              # double 4.4047070000000001
	.quad	0x401830c0f01fb82c              # double 6.0476109999999998
	.quad	0x4019318e757928e1              # double 6.2983950000000002
	.quad	0x40207744f5d35654              # double 8.2329480000000003
	.quad	0x401807620ee8d10f              # double 6.0072099999999997
	.quad	0x4008788fc9363f57              # double 3.0588679999999999
	.quad	0x401d0c054ef459da              # double 7.2617390000000004
	.quad	0x4011a4a771c970f8              # double 4.4107950000000002
	.quad	0x3fbe147ae147ae14              # double 0.11749999999999999
	.quad	0x40155c1acde19fc3              # double 5.3399460000000003
	.quad	0x3fd0e3f359ff4fd7              # double 0.26391300000000001
	.quad	0x400b8239e6ab9b24              # double 3.4385870000000001
	.quad	0x40195597d49d7ba6              # double 6.3335869999999996
	.quad	0x4007df6a0dbad3a6              # double 2.984089
	.quad	0x402228941c8216c6              # double 9.0792549999999999
	.quad	0x4020bd084e831ad2              # double 8.3692039999999999
	.quad	0x4022549a77e5eaab              # double 9.165241
	.quad	0x3feeb838c111ada7              # double 0.95998799999999995
	.quad	0x4012782a9930be0e              # double 4.6173500000000001
	.quad	0x401358b3f63c31df              # double 4.8366239999999996
	.quad	0x401ed6601bc98a22              # double 7.7093509999999998
	.quad	0x402108ee28672757              # double 8.5174420000000008
	.quad	0x400257bd8be7296f              # double 2.2928419999999998
	.quad	0x3fb6c5d206c8711d              # double 0.088955999999999993
	.quad	0x400436694898f606              # double 2.5265680000000001
	.quad	0x3fe000bcbe61cfff              # double 0.50009000000000003
	.quad	0x40100d7be9856a38              # double 4.0131680000000003
	.quad	0x40013b384fd2a62b              # double 2.1539160000000002
	.quad	0x3fd4d362e9036439              # double 0.32540200000000002
	.quad	0x4000e56b441bb8c3              # double 2.1120209999999999
	.quad	0x4003294c447c30d3              # double 2.395165
	.quad	0x40217a83d35eb745              # double 8.7392869999999991
	.quad	0x40220b4373f316e3              # double 9.0219989999999992
	.quad	0x4008b47cfa26a22b              # double 3.0881289999999999
	.quad	0x40086bc59b8023a7              # double 3.0526230000000001
	.quad	0x400ad60bf5d78812              # double 3.3545150000000001
	.quad	0x4011ad1d8a548238              # double 4.4190579999999997
	.quad	0x40120b7995ee136e              # double 4.5112059999999996
	.quad	0x3fbc662bae03b3ea              # double 0.110934
	.quad	0x4008bb71758e2196              # double 3.0915249999999999
	.quad	0x4023091a11233df3              # double 9.5177770000000005
	.quad	0x401906b7aa25d8d8              # double 6.2565600000000003
	.quad	0x4015c48f96e15875              # double 5.441954
	.quad	0x40137d47bedb7282              # double 4.872344
	.quad	0x4021004be40420f7              # double 8.5005790000000001
	.quad	0x4018181f969e3c97              # double 6.0235580000000004
	.quad	0x4020a53d859c8c93              # double 8.3227349999999998
	.quad	0x401c484dfce3150e              # double 7.0706100000000003
	.quad	0x40169aeddce7cd03              # double 5.6512979999999997
	.quad	0x400b1e79ee02a77a              # double 3.3898809999999999
	.quad	0x401f7b649d388a8b              # double 7.8705009999999999
	.quad	0x4018a521dda059a7              # double 6.1612619999999998
	.quad	0x400a5308bb906467              # double 3.2905440000000001
	.quad	0x401d550f40e5a35d              # double 7.3330659999999996
	.quad	0x400345a57646ae3a              # double 2.4090069999999999
	.quad	0x4020a8c6f7a0b5ee              # double 8.3296430000000008
	.quad	0x4013922ea0fd3b2a              # double 4.8927560000000003
	.quad	0x40028507a6bd6e8b              # double 2.314956
	.quad	0x402152c4b4d056c5              # double 8.6616569999999999
	.quad	0x4008fd51b4fe79ee              # double 3.123691
	.quad	0x401ff0d3cff64cf9              # double 7.9851830000000001
	.quad	0x4023c618ce2d1f1d              # double 9.886908
	.quad	0x402137a99fa11a97              # double 8.6087159999999994
	.quad	0x3fff39799e518f3f              # double 1.951532
	.quad	0x3ffc3ffcdab191de              # double 1.765622
	.quad	0x40186c8cd63cb817              # double 6.1060059999999998
	.quad	0x40010488c60cbf2b              # double 2.1272139999999999
	.quad	0x3ff98b04ab606b7b              # double 1.5964400000000001
	.quad	0x4020f4f82f512663              # double 8.4784559999999995
	.quad	0x401743b256ffc116              # double 5.8161100000000001
	.quad	0x402311274e22a2c2              # double 9.5335029999999996
	.quad	0x4012525d074213a1              # double 4.5804330000000002
	.quad	0x4003eba0620ab713              # double 2.4900519999999999
	.quad	0x3fe0a2ea0fd3b29a              # double 0.51988699999999999
	.quad	0x4008cdd8b60f1b26              # double 3.100511
	.quad	0x402289170d62bf12              # double 9.267754
	.quad	0x3ff9be8dda48b652              # double 1.609022
	.quad	0x40199126a65cf67b              # double 6.3917489999999999
	.quad	0x4011d6f7e3d1cc10              # double 4.4599299999999999
	.quad	0x3ff3e3b03e20ccff              # double 1.243088
	.quad	0x40184d63022dd7aa              # double 6.0755730000000003
	.quad	0x402000895d0b73d2              # double 8.0010480000000008
	.quad	0x3ff9c17ebaf10236              # double 1.6097399999999999
	.quad	0x4020fcd6e47dc37a              # double 8.4938269999999996
	.quad	0x3ff1f52c9d16fc9c              # double 1.122357
	.quad	0x40200c679cc74b84              # double 8.0242280000000008
	.quad	0x401fc44dca8e2e2c              # double 7.9417030000000004
	.quad	0x402079b8023a6ce3              # double 8.2377319999999994
	.quad	0x4021f201eeed8905              # double 8.9726710000000001
	.quad	0x4020dddfeb8d8234              # double 8.4333489999999997
	.quad	0x400cd242070b8cfc              # double 3.602665
	.quad	0x401d4a0fd3b29a1c              # double 7.3223260000000003
	.quad	0x4017621c8a7a41e5              # double 5.8458119999999996
	.quad	0x4008844523f67f4e              # double 3.0645850000000001
	.quad	0x400ae51a005c4652              # double 3.361866
	.quad	0x3fdb461309c7ffde              # double 0.42615199999999998
	.quad	0x400fc0d6f544bb1b              # double 3.96916
	.quad	0x40182fee2c98e53f              # double 6.0468070000000003
	.quad	0x4009daf8df7a4e7b              # double 3.2319200000000001
	.quad	0x4016998c3b0c4589              # double 5.6499490000000003
	.quad	0x401670dae3e6c4c6              # double 5.6102100000000004
	.quad	0x40172e4a7b4e54f8              # double 5.7952060000000003
	.quad	0x3fe309289dadfb50              # double 0.59486799999999995
	.quad	0x400eaa8c154c985f              # double 3.833275
	.quad	0x402192fad6cb5350              # double 8.7870699999999999
	.quad	0x400d5178b3700475              # double 3.6647810000000001
	.quad	0x400c76d8f4f93bc1              # double 3.5580310000000002
	.quad	0x3ffea90364388ebd              # double 1.916263
	.quad	0x40027049235f8099              # double 2.304827
	.quad	0x401d4ab10ba62670              # double 7.3229410000000001
	.quad	0x3ff8fc5260f5e41d              # double 1.5616019999999999
	.quad	0x400fa9af5ba2be06              # double 3.9578540000000002
	.quad	0x4011e3f67f4dbdf9              # double 4.47262
	.quad	0x400dd26e978d4fdf              # double 3.7277499999999999
	.quad	0x401845e9185cee18              # double 6.0682720000000003
	.quad	0x3fb90d0678c0053e              # double 0.097854999999999997
	.quad	0x3fc4202d9cf13cef              # double 0.15723200000000001
	.quad	0x4020f1817b95a294              # double 8.4716909999999998
	.quad	0x401268b2e9ccb7d4              # double 4.6022449999999999
	.quad	0x3ff8c5814940bbb2              # double 1.548219
	.quad	0x400c4c18f81e8a2f              # double 3.5371570000000001
	.quad	0x3ffbf225b749adc9              # double 1.746618
	.quad	0x3ff5775d9a0f0a5f              # double 1.341642
	.quad	0x4012dfcd24e160d9              # double 4.7185560000000004
	.quad	0x4021b014f8b588e3              # double 8.8439099999999993
	.quad	0x40113a9435ac8a37              # double 4.3072059999999999
	.quad	0x40147fa3b9ae0c17              # double 5.1246479999999996
	.quad	0x40232bf6e3f78bbd              # double 9.5858679999999996
	.quad	0x40140a5a038194c0              # double 5.0101089999999999
	.quad	0x3fc2a50507a6bd6f              # double 0.14566100000000001
	.quad	0x3ffa9c79b34a44c8              # double 1.6632020000000001
	.quad	0x401a41209edbf8ba              # double 6.5636010000000002
	.quad	0x401df1212513b5bf              # double 7.4854779999999996
	.quad	0x3fceb242070b8cfc              # double 0.239815
	.quad	0x401f7ab474107315              # double 7.8698290000000001
	.quad	0x4020b29b280f12c2              # double 8.3488399999999992
	.quad	0x40234832fcac8e69              # double 9.6410140000000001
	.quad	0x4015f1e3a7daa4fd              # double 5.4862200000000003
	.quad	0x402223295e9e1b09              # double 9.0686750000000007
	.quad	0x3ff03b107746887b              # double 1.0144200000000001
	.quad	0x4022086b37867f0b              # double 9.0164430000000007
	.quad	0x400bc5796bfca85d              # double 3.4714230000000001
	.quad	0x40032620ab713272              # double 2.3936169999999999
	.quad	0x4014e706d5065732              # double 5.2256119999999999
	.quad	0x400a52f123c42a67              # double 3.2904990000000001
	.quad	0x3fea1e2bcf91a32b              # double 0.81618299999999999
	.quad	0x4022d6ad2dcb1466              # double 9.4192900000000002
	.quad	0x4022fe5907d91255              # double 9.4967729999999992
	.quad	0x3feb3f4eca686e7e              # double 0.85147799999999996
	.quad	0x400378fa376922d9              # double 2.4340709999999999
	.quad	0x4020efb784662bae              # double 8.468197
	.quad	0x401646eb0b7c3505              # double 5.5692560000000002
	.quad	0x402134dca8e2e2b9              # double 8.6032460000000004
	.quad	0x4013727b6fe2e6eb              # double 4.8617990000000004
	.quad	0x4012fa99b6f5caf3              # double 4.7447270000000001
	.quad	0x40157457c0b13598              # double 5.3636160000000004
	.quad	0x4003d4c09c3ce209              # double 2.4788830000000002
	.quad	0x402337aa68f4b620              # double 9.6087220000000002
	.quad	0x401442135daad602              # double 5.064527
	.quad	0x3fe56a0fd3b29a1c              # double 0.66919700000000004
	.quad	0x40105cfd4bf0995b              # double 4.0908100000000003
	.quad	0x40116d10b1feeb2d              # double 4.356509
	.quad	0x402063d44998d046              # double 8.194979
	.quad	0x40112184c271fff8              # double 4.2827330000000003
	.quad	0x401db9eb2074ea8e              # double 7.4315610000000003
	.quad	0x401811d5c31593e6              # double 6.017417
	.quad	0x40237fa8b4bf8fcd              # double 9.7493339999999992
	.quad	0x4023d1cae21101b0              # double 9.909751
	.quad	0x4014272cd7cf5f4e              # double 5.0382569999999998
	.quad	0x4015951ac9afe1da              # double 5.3956099999999996
	.quad	0x3fa65cd4ed2cbea5              # double 0.043677000000000001
	.quad	0x4015fce24bba12b6              # double 5.4969570000000001
	.quad	0x4017ff3775b81301              # double 5.9992349999999997
	.quad	0x402192ca36199781              # double 8.7866990000000005
	.quad	0x40076c39799e518f              # double 2.9278439999999999
	.quad	0x401afbef8ceb356e              # double 6.7460310000000003
	.quad	0x4014f5aa2e3c536d              # double 5.2399069999999996
	.quad	0x3fc4af709b738e6d              # double 0.161604
	.quad	0x400e8ade657b84dc              # double 3.8178070000000002
	.quad	0x401cbf5c28f5c28f              # double 7.1868749999999997
	.quad	0x401babe2b4959e62              # double 6.9178569999999997
	.quad	0x400df05c03361566              # double 3.7423630000000001
	.quad	0x40200371758e2196              # double 8.0067249999999994
	.quad	0x401c4d29dc725c3e              # double 7.0753550000000001
	.quad	0x40015198aeb80ed0              # double 2.1648420000000002
	.quad	0x400e4091c087442c              # double 3.7815279999999998
	.quad	0x4020f9eb6390c910              # double 8.4881239999999991
	.quad	0x401d28a2ec28b2a7              # double 7.2896840000000003
	.quad	0x3f8e6c4c5974e65c              # double 0.014855
	.quad	0x401134f3ba775fb3              # double 4.3017110000000001
	.quad	0x4022a06b9c304ccf              # double 9.3133210000000002
	.quad	0x401cc26cc1ca3a4b              # double 7.1898679999999997
	.quad	0x40162a4f00ef1349              # double 5.5413170000000003
	.quad	0x4017c305d95dd4c7              # double 5.9404519999999996
	.quad	0x40123d44567125dd              # double 4.559831
	.quad	0x401b83eee5258927              # double 6.8788410000000004
	.quad	0x4022a3a7546d3f9e              # double 9.3196359999999991
	.quad	0x4022b6dc7ef177a7              # double 9.3571509999999999
	.quad	0x401a959685122318              # double 6.6460819999999998
	.quad	0x4019d413db7f1737              # double 6.4571069999999997
	.quad	0x401c59ef0f16f438              # double 7.0878259999999997
	.quad	0x4020b222b3892ee8              # double 8.3479209999999995
	.quad	0x400e28beb5b2d4d4              # double 3.769895
	.quad	0x401fb1ad6451b930              # double 7.9235129999999998
	.quad	0x4023096df3f96180              # double 9.5184169999999995
	.quad	0x40055a4df47f993d              # double 2.6690939999999999
	.quad	0x402392873bc903ea              # double 9.7861879999999992
	.quad	0x4012602ff8ec0f88              # double 4.5939329999999998
	.quad	0x400147e06961c369              # double 2.1600959999999998
	.quad	0x4021ad3f7ced9168              # double 8.8383749999999992
	.quad	0x40007f9d6f112fd3              # double 2.0623119999999999
	.quad	0x401ce54046412cf1              # double 7.223878
	.quad	0x40211f49491f2dc3              # double 8.5611060000000005
	.quad	0x3ffebfc0096feb4a              # double 1.9218139999999999
	.quad	0x40229fe4de3b8a1a              # double 9.3122930000000004
	.quad	0x40222b990afe60c4              # double 9.0851520000000007
	.quad	0x400815e8d5410f95              # double 3.0106980000000001
	.quad	0x40204fbe33acd5b7              # double 8.1557480000000009
	.quad	0x4001e523704790b8              # double 2.2368839999999999
	.quad	0x402396eae9ee45c3              # double 9.7947609999999993
	.quad	0x40002d24e160d888              # double 2.022043
	.quad	0x3fefdba0a5269596              # double 0.99556
	.quad	0x402362046c764ae0              # double 9.6914400000000001
	.quad	0x40137906466b1e5c              # double 4.868188
	.quad	0x3fb85308bb906467              # double 0.095017000000000004
	.quad	0x4018a6bb98c7e282              # double 6.1628249999999998
	.quad	0x4013d6c3760bf5d8              # double 4.9597300000000004
	.quad	0x401052f61ed5ae1d              # double 4.0810170000000001
	.quad	0x3fa86b7aa25d8d7a              # double 0.047695000000000001
	.quad	0x402309f01b866e44              # double 9.5194100000000005
	.quad	0x40062a222d5171e3              # double 2.7705730000000002
	.quad	0x401555931ca7d673              # double 5.3335689999999998
	.quad	0x4021d37154003255              # double 8.9129740000000002
	.quad	0x3f629888f861a60d              # double 0.0022699999999999999
	.quad	0x401bc697f1f9ad00              # double 6.9439390000000003
	.quad	0x4022444fa05143bf              # double 9.1334199999999992
	.quad	0x4009ba71151611ba              # double 3.2160359999999999
	.quad	0x400ed82fd75e2047              # double 3.8555600000000001
	.quad	0x4006944b2b777d0f              # double 2.8224089999999999
	.quad	0x4015a6e978d4fdf4              # double 5.4130000000000003
	.quad	0x4018c01b43526528              # double 6.1876040000000003
	.quad	0x400ea73d5bab2181              # double 3.8316599999999998
	.quad	0x4022e730e7ff583a              # double 9.4515449999999994
	.quad	0x3fff1fc8f32378ab              # double 1.94526
	.quad	0x40209c33b5393251              # double 8.3050820000000005
	.quad	0x40083cb9a9da597d              # double 3.0296509999999999
	.quad	0x400ca674080f98fa              # double 3.5812759999999999
	.quad	0x4018b506dd69d302              # double 6.1767839999999996
	.quad	0x3ff477a1c25d0742              # double 1.279207
	.quad	0x402322d8c2a454de              # double 9.5680599999999991
	.quad	0x400d6ed5f138bce0              # double 3.679119
	.quad	0x40141ad106ee30cb              # double 5.0261880000000003
	.quad	0x402036c311622813              # double 8.1069569999999995
	.quad	0x4019b266ba493c8a              # double 6.42422
	.quad	0x401a8105e1c15098              # double 6.6259990000000002
	.quad	0x4020d82a77a2cecd              # double 8.4221990000000009
	.quad	0x3ff1eb8950763a19              # double 1.120004
	.quad	0x3fe0c113c68661ae              # double 0.52356899999999995
	.quad	0x4017448dc11e42e1              # double 5.8169469999999999
	.quad	0x40035c67dfe32a06              # double 2.4201199999999998
	.quad	0x400edda61e0c5a81              # double 3.8582269999999999
	.quad	0x400cfcfd4bf0995b              # double 3.6235300000000001
	.quad	0x400613ee5eedcc21              # double 2.7597320000000001
	.quad	0x401db600f345069a              # double 7.4277379999999997
	.quad	0x400fc296b3354c12              # double 3.9700139999999999
	.quad	0x401d06a7ef9db22d              # double 7.2565
	.quad	0x4019113e81450efe              # double 6.2668400000000002
	.quad	0x4019d82ecaeea63b              # double 6.4611159999999996
	.quad	0x401827314ca925ff              # double 6.0382740000000004
	.quad	0x401cdd2cbea4ebdd              # double 7.2159909999999998
	.quad	0x3ffdbd1782d38477              # double 1.858665
	.quad	0x3ff8fc32ebe596c8              # double 1.561572
	.quad	0x4010fea0fd3b29a2              # double 4.2486610000000002
	.quad	0x40212db4677b395c              # double 8.5892669999999995
	.quad	0x4009beff1950331e              # double 3.2182599999999999
	.quad	0x401c457c4e2f37fc              # double 7.0678570000000001
	.quad	0x40115b0e1b4bb5e1              # double 4.338921
	.quad	0x40220a795703f2d4              # double 9.0204570000000003
	.quad	0x402011f05ea24cc7              # double 8.0350370000000009
	.quad	0x401c504ea4a8c155              # double 7.0784250000000002
	.quad	0x3ff9578d4fdf3b64              # double 1.5838749999999999
	.quad	0x4022f97fa5d28d00              # double 9.4873019999999997
	.quad	0x40164a6c5d206c87              # double 5.5726789999999999
	.quad	0x402071847f562175              # double 8.2217140000000004
	.quad	0x400025a57646ae3a              # double 2.0183819999999999
	.quad	0x4011eda5119ce076              # double 4.482075
	.quad	0x400033d6c7219221              # double 2.025312
	.quad	0x402346edaa92e621              # double 9.6385319999999996
	.quad	0x3ffe3d9cae21101b              # double 1.890042
	.quad	0x401195afaf859429              # double 4.3961779999999999
	.quad	0x401c99b0ee49f517              # double 7.1500890000000004
	.quad	0x4020adca07f66e87              # double 8.3394320000000004
	.quad	0x4013a67620ee8d11              # double 4.91256
	.quad	0x4016247304039abf              # double 5.5355949999999998
	.quad	0x40189d373affb04f              # double 6.1535310000000001
	.quad	0x3ffeb5ddd2ae8e1d              # double 1.9194009999999999
	.quad	0x401f61800a7c5ac4              # double 7.8452149999999996
	.quad	0x401314a558ea7ce1              # double 4.770162
	.quad	0x3ff8e2f48c2e770c              # double 1.555409
	.quad	0x400999f77292c493              # double 3.2001789999999999
	.quad	0x4011dbe0ded288ce              # double 4.4647249999999996
	.quad	0x3ff01d28d002e233              # double 1.0071190000000001
	.quad	0x4015c92c8c5004fb              # double 5.4464589999999999
	.quad	0x401a37d6f9767903              # double 6.5545309999999999
	.quad	0x40239c6d82ba5a04              # double 9.8055230000000008
	.quad	0x40168b96af038e2a              # double 5.636317
	.quad	0x401cc1654d61b2a2              # double 7.1888629999999996
	.quad	0x400af79fa97e132b              # double 3.3709099999999999
	.quad	0x4014fd7cb2d905c0              # double 5.2475459999999998
	.quad	0x401b2361dc93ea2d              # double 6.7845529999999998
	.quad	0x4017d7a63736cdf2              # double 5.9605949999999996
	.quad	0x4003c7685985ad54              # double 2.4723670000000002
	.quad	0x401b26c7eae5bc88              # double 6.7878720000000001
	.quad	0x401989f2778140dd              # double 6.3847139999999998
	.quad	0x3fe2b5f5f0b28523              # double 0.58471200000000001
	.quad	0x401e97daa4fca42b              # double 7.648295
	.quad	0x40225403ff69014b              # double 9.1640929999999994
	.quad	0x4010e99e0e73604a              # double 4.2281420000000001
	.quad	0x3ff9a58e64b23140              # double 1.602919
	.quad	0x40132bc7b45f17be              # double 4.7927540000000004
	.quad	0x40120a8869c66d37              # double 4.5102859999999998
	.quad	0x3fe905729b280f13              # double 0.78191500000000003
	.quad	0x3ff7c91e215336df              # double 1.4866010000000001
	.quad	0x3fdc115592d98bf8              # double 0.438558
	.quad	0x4003da1e3eaf6838              # double 2.481503
	.quad	0x40204148fd9fd36f              # double 8.1275099999999991
	.quad	0x3ff86c18f81e8a2f              # double 1.5263910000000001
	.quad	0x40208558644523f6              # double 8.2604399999999991
	.quad	0x400fc698bb4d4888              # double 3.9719709999999999
	.quad	0x40216aaa3ad18d26              # double 8.7083300000000001
	.quad	0x401fb2df9378ee28              # double 7.9246809999999996
	.quad	0x40101ba6efc371da              # double 4.0270039999999998
	.quad	0x4018fac81d3aa36a              # double 6.244904
	.quad	0x40228345069a4df4              # double 9.2563859999999991
	.quad	0x402234eebf65dbfd              # double 9.1033840000000001
	.quad	0x401128d5c74751ce              # double 4.2898779999999999
	.quad	0x4020e0d51f81a587              # double 8.4391259999999999
	.quad	0x401bb0bbf50e3476              # double 6.9225919999999999
	.quad	0x400b1c5cdd50a88f              # double 3.388849
	.quad	0x4012bf765fd8adac              # double 4.6869750000000003
	.quad	0x3ff1024a276b7ed4              # double 1.063059
	.quad	0x4020456abde3fbbd              # double 8.1355799999999991
	.quad	0x4004698cc144028e              # double 2.5515379999999999
	.quad	0x401ecf138bcdfefc              # double 7.702223
	.quad	0x40190c7ffde7210c              # double 6.2622070000000001
	.quad	0x4021f5653c9abb02              # double 8.9792880000000004
	.quad	0x3fe0cbf2b239a390              # double 0.52489600000000003
	.quad	0x40091ea897635e74              # double 3.1399699999999999
	.quad	0x40189bb0a2ca9ac3              # double 6.1520409999999996
	.quad	0x3fff13660e51d25b              # double 1.9422360000000001
	.quad	0x3fe252cbea4ebdd3              # double 0.57260699999999998
	.quad	0x402367bd6a593a2e              # double 9.702617
	.quad	0x40227f3ba775fb2f              # double 9.2485020000000002
	.quad	0x3f90ded288ce703b              # double 0.016475
	.quad	0x40238ad4f5903a75              # double 9.7711559999999995
	.quad	0x4014079bbadc0981              # double 5.0074300000000003
	.quad	0x401570f733a8a3f9              # double 5.3603180000000004
	.quad	0x4018634eb9a176de              # double 6.0969800000000003
	.quad	0x400bc448cf7caa76              # double 3.4708420000000002
	.quad	0x4023d236e2eb1c43              # double 9.9105749999999996
	.quad	0x3fe0c58eeae9ee46              # double 0.52411600000000003
	.quad	0x401c8fd2630ec311              # double 7.1404509999999997
	.quad	0x4021034528283d36              # double 8.5063870000000001
	.quad	0x40177105e1c15098              # double 5.8603740000000002
	.quad	0x4021c8ae536501e2              # double 8.8919549999999994
	.quad	0x3fc4763a19008206              # double 0.159858
	.quad	0x4020df162ae4b018              # double 8.4357159999999993
	.quad	0x401fc7ef5a964e8b              # double 7.9452489999999995
	.quad	0x401aba1272c94b38              # double 6.681711
	.quad	0x401b9ed0f627392a              # double 6.9050940000000001
	.quad	0x4013dcaf709b738e              # double 4.9655129999999996
	.quad	0x4012e49dbec2480f              # double 4.7232580000000004
	.quad	0x3ff8892684cf073a              # double 1.5334840000000001
	.quad	0x3fd5281344806291              # double 0.330571
	.quad	0x4019f9cf9a06a6e3              # double 6.4939559999999998
	.quad	0x4020db804534bd77              # double 8.4287130000000001
	.quad	0x4018a073de1e2de8              # double 6.1566919999999996
	.quad	0x402016a11ec918e3              # double 8.0441979999999997
	.quad	0x401429bfdf7e8039              # double 5.0407710000000003
	.quad	0x3fedcc1ca3a4b557              # double 0.93116600000000005
	.quad	0x40121958d9b5e95b              # double 4.5247529999999996
	.quad	0x401e4b1ab0856e69              # double 7.5733439999999996
	.quad	0x4011ffb0d51f81a6              # double 4.4996980000000004
	.quad	0x4021ed63ed0f6274              # double 8.9636530000000007
	.quad	0x3fd481a5870da5db              # double 0.320413
	.quad	0x4002871fff79c843              # double 2.315979
	.quad	0x3fe250ce4ead0c3d              # double 0.57236399999999998
	.quad	0x401df6a9c560c7c1              # double 7.490882
	.quad	0x40081668c2613900              # double 3.010942
	.quad	0x3fe2a7913e81450f              # double 0.582955
	.quad	0x4005d9fe43675ddd              # double 2.7314419999999999
	.quad	0x4001d9524bfd2e94              # double 2.2311139999999998
	.quad	0x40137033e78e1933              # double 4.8595730000000001
	.quad	0x4011484ec636b096              # double 4.3206129999999998
	.quad	0x40206ff972474539              # double 8.2187000000000001
	.quad	0x4015bb23dd54da4d              # double 5.4327540000000001
	.quad	0x3fde4e7ab7564303              # double 0.47354000000000002
	.quad	0x401be86c6583e857              # double 6.9769759999999996
	.quad	0x401960589acbc8c1              # double 6.3440880000000002
	.quad	0x3fe59531550ca1cf              # double 0.67446200000000001
	.quad	0x401751709310129d              # double 5.8295310000000002
	.quad	0x402036a6a012599f              # double 8.1067400000000003
	.quad	0x3ff43a7b9170d62c              # double 1.264278
	.quad	0x4021bceaf251c194              # double 8.8689800000000005
	.quad	0x400d7a7546d3f9e8              # double 3.6847940000000001
	.quad	0x40061415b1422ccb              # double 2.7598069999999999
	.quad	0x4019f027525460aa              # double 6.4845249999999997
	.quad	0x3fe56451b93037d6              # double 0.66849599999999998
	.quad	0x4007e485a0be5109              # double 2.986583
	.quad	0x4002600431bde82d              # double 2.2968829999999998
	.quad	0x401fce8709741d08              # double 7.9516869999999997
	.quad	0x4020272e6a76965f              # double 8.0765259999999994
	.quad	0x4022f2dddf43c7d6              # double 9.4743490000000001
	.quad	0x4017f59d55e6bc62              # double 5.9898579999999999
	.quad	0x401ee278d0cc35ce              # double 7.7211639999999999
	.quad	0x3ffb1ff609dcf894              # double 1.695303
	.quad	0x4002605681ecd4aa              # double 2.29704
	.quad	0x40011a1e3eaf6838              # double 2.137753
	.quad	0x3fff6b367a0f9097              # double 1.9636750000000001
	.quad	0x40206dc6c11a1123              # double 8.2144069999999996
	.quad	0x40239ebc1eff9f88              # double 9.8100290000000001
	.quad	0x4021dfc610f0e90c              # double 8.9370580000000003
	.quad	0x400bc0c176577532              # double 3.4691190000000001
	.quad	0x3ffea991ff7164c7              # double 1.916399
	.quad	0x4023d85faebc408e              # double 9.9226050000000008
	.quad	0x40098f102363b257              # double 3.194855
	.quad	0x400f6cdb7ae5796c              # double 3.928153
	.quad	0x4004657b84db9c73              # double 2.5495519999999998
	.quad	0x4022b57e670e2c13              # double 9.3544800000000005
	.quad	0x4021854cdb7ae579              # double 8.7603519999999993
	.quad	0x401f1d1351159c49              # double 7.7783939999999995
	.quad	0x40213713059641f6              # double 8.6075669999999995
	.quad	0x40212d59d55e6bc6              # double 8.5885759999999998
	.quad	0x4020d39cb6848beb              # double 8.4133049999999994
	.quad	0x401d93393ab430f5              # double 7.3937730000000004
	.quad	0x4009b110e453d20f              # double 3.2114579999999999
	.quad	0x4010bf1fddebd902              # double 4.1866450000000004
	.quad	0x3ff01529fe004b7f              # double 1.0051669999999999
	.quad	0x4012166e86c6583f              # double 4.5219060000000004
	.quad	0x3fe7f0739b024f66              # double 0.74810200000000004
	.quad	0x401dca09cc319c5a              # double 7.4473029999999998
	.quad	0x40091590c0ad03da              # double 3.1355300000000002
	.quad	0x3fe8f202107b7846              # double 0.77954199999999996
	.quad	0x3fedc12cf0f9d2bf              # double 0.92983099999999996
	.quad	0x3fd9d44567125dd1              # double 0.40358100000000002
	.quad	0x400a4aa9717df19d              # double 3.2864559999999998
	.quad	0x3ff7c052d666a982              # double 1.4844539999999999
	.quad	0x40230a333764f11b              # double 9.5199219999999993
	.quad	0x4021043f811f4f51              # double 8.5082970000000007
	.quad	0x3fd9c768dfbd6a59              # double 0.40279599999999999
	.quad	0x3fe01f5be5d9e40d              # double 0.50382800000000005
	.quad	0x3fff5a2b5a20ddc6              # double 1.959514
	.quad	0x4009bf583a53b8e5              # double 3.2184300000000001
	.quad	0x3ff52b484d76ab58              # double 1.323067
	.quad	0x40204795b35b0bbf              # double 8.1398139999999994
	.quad	0x4016f54a7f8012e0              # double 5.7395420000000001
	.quad	0x3feaad1f1cfbb949              # double 0.83363299999999996
	.quad	0x401b0f7caa7589f0              # double 6.7651240000000001
	.quad	0x4004119934efcbd5              # double 2.5085929999999999
	.quad	0x4021b9bc55864452              # double 8.8627649999999996
	.quad	0x4013e2ae8e1d6495              # double 4.9713690000000001
	.quad	0x4000a2ca9ac36545              # double 2.079488
	.quad	0x4014b562174c4ce0              # double 5.1771320000000003
	.quad	0x40171466b1e5c0ba              # double 5.7699230000000004
	.quad	0x4014c3bddfc9ff93              # double 5.191154
	.quad	0x4020034bb5e0f7fd              # double 8.006437
	.quad	0x401ff055757d5a9f              # double 7.9847010000000002
	.quad	0x4004379bfdf7e804              # double 2.5271530000000002
	.quad	0x4023596249a133c2              # double 9.6745780000000003
	.quad	0x40234f2de43ed95a              # double 9.6546470000000006
	.quad	0x4011711c6d1e108c              # double 4.3604599999999998
	.quad	0x4000133ebbfd71b0              # double 2.0093969999999999
	.quad	0x401c6c8f75536934              # double 7.1060160000000003
	.quad	0x40201835bd512ec7              # double 8.0472850000000005
	.quad	0x40130ffc5479d4d8              # double 4.7656109999999998
	.quad	0x4015e9c304ccee5b              # double 5.4782830000000002
	.quad	0x3fd02b1704ff4342              # double 0.25263000000000002
	.quad	0x401655b813016484              # double 5.58371
	.quad	0x4020c0ced4e4c943              # double 8.3765780000000003
	.quad	0x401da77b395c4220              # double 7.4135559999999998
	.quad	0x401716a4ca4f440b              # double 5.772113
	.quad	0x401e6b673c4f3ba7              # double 7.6048859999999995
	.quad	0x40206bde3fbbd7b2              # double 8.21068
	.quad	0x4020da743a647fdc              # double 8.4266679999999993
	.quad	0x400f0d8b1dd5d3dd              # double 3.8816130000000002
	.quad	0x40172a48b6523704              # double 5.7912929999999996
	.quad	0x400b186013660e52              # double 3.3869020000000001
	.quad	0x401462e946801712              # double 5.0965930000000004
	.quad	0x4017454046412cf1              # double 5.817628
	.quad	0x4021ac0a6b93ccd1              # double 8.836017
	.quad	0x4022e18fa376922e              # double 9.4405490000000007
	.quad	0x40006254a3c64346              # double 2.0480130000000001
	.quad	0x401195e95b78cc9a              # double 4.3963979999999996
	.quad	0x40119b9a9da597d5              # double 4.4019570000000003
	.quad	0x4019faa9f7b5aea3              # double 6.4947889999999999
	.quad	0x3fea13db7f173754              # double 0.81492399999999998
	.quad	0x401ec55cd91eeaa7              # double 7.6927370000000001
	.quad	0x3ff9c0b45ae5ffa4              # double 1.6095470000000001
	.quad	0x401510e4da09cc32              # double 5.2664980000000003
	.quad	0x400f06f8ad256799              # double 3.8784040000000002
	.quad	0x4021a3fe1975f2cb              # double 8.8202979999999993
	.quad	0x40187dc65c70435f              # double 6.122827
	.quad	0x3fed5286b59146e5              # double 0.91632400000000003
	.quad	0x400ced948dc11e43              # double 3.6160060000000001
	.quad	0x4006ee4d1a650614              # double 2.866358
	.quad	0x401ddbac2df0d413              # double 7.4645239999999999
	.quad	0x401a8f0aa21a719b              # double 6.6396889999999997
	.quad	0x4023507b99d451fc              # double 9.6571929999999994
	.quad	0x401db7928e0c9d9d              # double 7.4292699999999998
	.quad	0x4021110c2c5e2cdc              # double 8.5332959999999999
	.quad	0x401bc8c692f6e829              # double 6.9460699999999997
	.quad	0x4020d10cf5b1c865              # double 8.4083020000000008
	.quad	0x4003e8b19a415f46              # double 2.4886200000000001
	.quad	0x4002b9702e6644d8              # double 2.3405459999999998
	.quad	0x4020558ab92c0618              # double 8.1670739999999995
	.quad	0x400e58d79d0a6762              # double 3.79338
	.quad	0x40113c2938de6ddf              # double 4.308751
	.quad	0x4023f93d102bc72e              # double 9.9867939999999997
	.quad	0x40109ff9f87f023f              # double 4.1562270000000003
	.quad	0x40001ece5710880e              # double 2.0150420000000002
	.quad	0x400a10995aaf78ff              # double 3.258105
	.quad	0x401fd64345cfede9              # double 7.9592409999999995
	.quad	0x401d08387df5cf25              # double 7.2580280000000004
	.quad	0x401c1f9db22d0e56              # double 7.030875
	.quad	0x4020a3482be8bc17              # double 8.3189100000000007
	.quad	0x40200d8e64b23140              # double 8.0264769999999999
	.quad	0x402228759253543b              # double 9.0790220000000001
	.quad	0x3ff2210e02214270              # double 1.13307
	.quad	0x401c2009b30728e9              # double 7.0312869999999998
	.quad	0x4017a80e06530058              # double 5.9141159999999999
	.quad	0x401e39563a9f383f              # double 7.5559929999999999
	.quad	0x3f9b6a619da9c993              # double 0.026773000000000002
	.quad	0x3ffdeb7564302b41              # double 1.869985
	.quad	0x400a28c586876e1e              # double 3.269908
	.quad	0x3feec9d16fc9bc77              # double 0.96213599999999999
	.quad	0x3ff760ded288ce70              # double 1.4611499999999999
	.quad	0x400f758e219652bd              # double 3.9323999999999999
	.quad	0x401e62f6a50d6b23              # double 7.5966440000000003
	.quad	0x40135d0bb6ed6777              # double 4.840865
	.quad	0x400e59c7368ad688              # double 3.7938369999999999
	.quad	0x4020868cef672b88              # double 8.2627939999999995
	.quad	0x4022ffee9142b303              # double 9.499867
	.quad	0x4022263fdd65a145              # double 9.0747060000000008
	.quad	0x401db91bc5586445              # double 7.4307699999999999
	.quad	0x401a27852f7f498c              # double 6.5385939999999998
	.quad	0x401a3c4a4095f245              # double 6.5588769999999998
	.quad	0x40219b63f572de44              # double 8.8034970000000001
	.quad	0x40234a597d49d7ba              # double 9.6452139999999993
	.quad	0x401ed7403dddb121              # double 7.7102060000000003
	.quad	0x401412f405f6ba06              # double 5.0185089999999999
	.quad	0x3feaef954eb13dfb              # double 0.84174599999999999
	.quad	0x3ffe86833c60029f              # double 1.90784
	.quad	0x4021da58b3f63c32              # double 8.9264580000000002
	.quad	0x402188667f90d9d7              # double 8.7664069999999992
	.quad	0x40087e8815e39714              # double 3.0617830000000001
	.quad	0x4017437da61e0c5b              # double 5.8159090000000004
	.quad	0x401a8ce703afb7e9              # double 6.6375999999999999
	.quad	0x400f331e3a7daa50              # double 3.8999600000000001
	.quad	0x401dbf20a73f748a              # double 7.4366479999999999
	.quad	0x4021861869835159              # double 8.7619050000000005
	.quad	0x401d5f17bd8be729              # double 7.3428639999999996
	.quad	0x4014bf2f123c42a6              # double 5.1867029999999996
	.quad	0x40220c9ecb31c21a              # double 9.0246490000000001
	.quad	0x40182ebc83a96d4c              # double 6.0456409999999998
	.quad	0x401cadb5525cc426              # double 7.1696369999999998
	.quad	0x4002b7dbf487fcb9              # double 2.3397749999999999
	.quad	0x40146673c4f3ba77              # double 5.1000509999999997
	.quad	0x3ff28766c6de7642              # double 1.1580569999999999
	.quad	0x4020be6c6de76428              # double 8.3719210000000004
	.quad	0x400eca9cdc443915              # double 3.848932
	.quad	0x3ffccec636b09635              # double 1.8004819999999999
	.quad	0x401ede264e48626f              # double 7.7169429999999996
	.quad	0x400ca3f572de43ee              # double 3.5800580000000002
	.quad	0x4001f44bb1af3a15              # double 2.2442850000000001
	.quad	0x40201f06d5065732              # double 8.0605989999999998
	.quad	0x4010f551d68c692f              # double 4.2395699999999996
	.quad	0x40211528f190d174              # double 8.541328
	.quad	0x4012c37ef5a964e9              # double 4.6909140000000003
	.quad	0x4021b83c297bfa4c              # double 8.8598339999999993
	.quad	0x4014b0d1b71758e2              # double 5.1726749999999999
	.quad	0x3fb73c81908e581d              # double 0.090767
	.quad	0x401b929e0a41a262              # double 6.8931810000000002
	.quad	0x3fe7c2e557de0d67              # double 0.74254100000000001
	.quad	0x400e7573647baa9b              # double 3.8073489999999999
	.quad	0x40045068123810e9              # double 2.5392610000000002
	.quad	0x4023dba387592535              # double 9.9289819999999995
	.quad	0x4021ab04ab606b7b              # double 8.8340200000000006
	.quad	0x3fff842fa5093965              # double 1.9697720000000001
	.quad	0x40114b940fecdd0e              # double 4.3238070000000004
	.quad	0x3fa4d9c6b0531983              # double 0.040724000000000003
	.quad	0x3fe14d4cb9ecf638              # double 0.540686
	.quad	0x4010a24f227d028a              # double 4.1585049999999999
	.quad	0x3ff70be61cffeb07              # double 1.4404049999999999
	.quad	0x3fb1abf338716095              # double 0.069029999999999994
	.quad	0x40128b7739f340d5              # double 4.6361970000000001
	.quad	0x40226173d9ec7000              # double 9.1903369999999995
	.quad	0x400207296f6512a9              # double 2.2534969999999999
	.quad	0x4012389118c197e5              # double 4.5552409999999997
	.quad	0x3ff5d461b6d43d04              # double 1.3643510000000001
	.quad	0x4006f2d0a2446306              # double 2.8685619999999998
	.quad	0x3ff49e7210be9425              # double 1.288683
	.quad	0x402071f83be6601c              # double 8.2225970000000003
	.quad	0x3fef98a65492ff4c              # double 0.98738400000000003
	.quad	0x3fecc81b21c475e6              # double 0.89942699999999998
	.quad	0x4010f488c60cbf2b              # double 4.2388029999999999
	.quad	0x401cdc8323358f2e              # double 7.215344
	.quad	0x4017601f75104d55              # double 5.8438699999999999
	.quad	0x401216e75ff609dd              # double 4.522367
	.quad	0x400f502eec7c957d              # double 3.9141520000000001
	.quad	0x400d6ebc408d8ec9              # double 3.6790699999999998
	.quad	0x400bde1a8262456f              # double 3.4834489999999998
	.quad	0x3ff310cd423d9232              # double 1.1916020000000001
	.quad	0x4021631e3a7daa50              # double 8.6935900000000004
	.quad	0x401c35aab4741073              # double 7.0524089999999999
	.quad	0x40037456b441bb8c              # double 2.4318059999999999
	.quad	0x4003069ced0b30b6              # double 2.3782290000000001
	.quad	0x400a4e63a5c1c609              # double 3.2882760000000002
	.quad	0x401c30c5eb313be2              # double 7.0476299999999998
	.quad	0x40140b688bda9436              # double 5.0111410000000003
	.quad	0x3ff79d249e44fa05              # double 1.475865
	.quad	0x40184c55432873bd              # double 6.0745440000000004
	.quad	0x40133d66277c45cc              # double 4.8099600000000002
	.quad	0x3ff6f6d655e28aa4              # double 1.435263
	.quad	0x3ff6ecb20fb224ab              # double 1.432787
	.quad	0x3fe39ee675147f13              # double 0.613147
	.quad	0x3fffffdc5931ca7d              # double 1.9999659999999999
	.quad	0x40160c33f85510d4              # double 5.5119170000000004
	.quad	0x402229d19157abb9              # double 9.0816770000000009
	.quad	0x4021e07b99d451fc              # double 8.9384429999999994
	.quad	0x4021c194c0160525              # double 8.878088
	.quad	0x40203409a2403148              # double 8.1016359999999992
	.quad	0x3fde3baba7b9170d              # double 0.47239199999999998
	.quad	0x3fbb8b26394face6              # double 0.10759199999999999
	.quad	0x4016af6c69b5a640              # double 5.6713120000000004
	.quad	0x401d34d8ba40d90e              # double 7.3016079999999999
	.quad	0x3ffad07e9d94d0dd              # double 1.675902
	.quad	0x401c10f7fcfc3f81              # double 7.0165709999999999
	.quad	0x400d3e42e1262025              # double 3.6554009999999999
	.quad	0x401e35bf6a0dbad4              # double 7.5524880000000003
	.quad	0x401e86b00ffda405              # double 7.6315309999999998
	.quad	0x4023bbd6a593a2e0              # double 9.8668720000000008
	.quad	0x401b37f950b955f8              # double 6.8046620000000004
	.quad	0x40119c0a4a05dd90              # double 4.4023830000000004
	.quad	0x400f5e308787485e              # double 3.9209909999999999
	.quad	0x40047909f1f14984              # double 2.5591010000000001
	.quad	0x400b96b441bb8c33              # double 3.4485860000000002
	.quad	0x3ff25e4d5d80e497              # double 1.148023
	.quad	0x40158aa3f034b0e2              # double 5.3853910000000003
	.quad	0x400885692b3cc4ac              # double 3.0651419999999998
	.quad	0x3fe0b3acd5b6805a              # double 0.52193299999999998
	.quad	0x40013ef954eb13e0              # double 2.1557490000000001
	.quad	0x401713e81450efdd              # double 5.7694400000000003
	.quad	0x401661f4f50a02b8              # double 5.5956609999999998
	.quad	0x4023a1fa333764f1              # double 9.8163619999999998
	.quad	0x4023db33b96af039              # double 9.9281290000000002
	.quad	0x4023c1f53825e13b              # double 9.8788239999999998
	.quad	0x40132bc3c5bd0e13              # double 4.7927390000000001
	.quad	0x4011ae40852b4d8c              # double 4.4201680000000003
	.quad	0x40058d1c7de5082d              # double 2.693902
	.quad	0x401e40eb24a6a876              # double 7.5633970000000001
	.quad	0x4021b398a65492ff              # double 8.8507739999999995
	.quad	0x3fffd5054ac29bf1              # double 1.9895069999999999
	.quad	0x40225d93e5fb71fc              # double 9.1827690000000004
	.quad	0x4004204e1e71044f              # double 2.515774
	.quad	0x4010e99e94ab1d50              # double 4.2281440000000003
	.quad	0x3ff75dcc63f14120              # double 1.4603999999999999
	.quad	0x40213ef049a9973e              # double 8.6229270000000007
	.quad	0x40230582ba5a0382              # double 9.5107630000000007
	.quad	0x4000ad4024b33db0              # double 2.0845950000000002
	.quad	0x4020d7d9ba1b1961              # double 8.421583
	.quad	0x4016109d0635a427              # double 5.5162240000000002
	.quad	0x401b75286b59146e              # double 6.8644119999999997
	.quad	0x40211d63a9f383f1              # double 8.5574010000000005
	.quad	0x402069991361dc94              # double 8.2062460000000001
	.quad	0x401b673cd573647c              # double 6.8508180000000003
	.quad	0x401f80d6b228dc98              # double 7.8758189999999999
	.quad	0x4019ea116659d12d              # double 6.4785820000000003
	.quad	0x402365de37585be2              # double 9.6989610000000006
	.quad	0x40212281fd9ba1b2              # double 8.5673980000000007
	.quad	0x401063e39f77292c              # double 4.0975479999999997
	.quad	0x3fc365cb35f3d7d4              # double 0.15154400000000001
	.quad	0x401689f340d4dc66              # double 5.6347170000000002
	.quad	0x40149414e7ee9143              # double 5.1446110000000003
	.quad	0x401895d95dd4c76d              # double 6.1463369999999999
	.quad	0x402371cb6848beb6              # double 9.7222550000000005
	.quad	0x401eab4e9813879c              # double 7.6672919999999998
	.quad	0x3fffc111ada76d98              # double 1.9846360000000001
	.quad	0x3ffb94855da27286              # double 1.72376
	.quad	0x400af1f1cfbb9496              # double 3.3681369999999999
	.quad	0x402303e2d6238da4              # double 9.5075900000000004
	.quad	0x3fcd613d31b9b670              # double 0.22953000000000001
	.quad	0x4019607314ca9260              # double 6.3441890000000001
	.quad	0x40024fa26a22b389              # double 2.2888839999999999
	.quad	0x4013e877681669cf              # double 4.9770180000000002
	.quad	0x401c4d46b26bf877              # double 7.0754650000000003
	.quad	0x3ff5cad8a116659d              # double 1.362023
	.quad	0x400e2eb78897e996              # double 3.7728109999999999
	.quad	0x3fc3e39f77292c49              # double 0.15538399999999999
	.quad	0x40177b3bb83cf2d0              # double 5.8703450000000004
	.quad	0x4013e6188b11409a              # double 4.9747029999999999
	.quad	0x401d50880d801b43              # double 7.3286439999999997
	.quad	0x400a5edbf8b9baa1              # double 3.2963179999999999
	.quad	0x400fb2a497fa5d29              # double 3.9622280000000001
	.quad	0x401eefa26a22b389              # double 7.7340179999999998
	.quad	0x3ff2bcf3dc054ef4              # double 1.1711309999999999
	.quad	0x4003df00abf76a2f              # double 2.4838879999999999
	.quad	0x402094b2fa93af75              # double 8.2904280000000004
	.quad	0x4002a7f0aa21a71a              # double 2.3320020000000001
	.quad	0x40126659d12cadde              # double 4.599952
	.quad	0x4012043d03968d76              # double 4.5041390000000003
	.quad	0x4014250507a6bd6f              # double 5.0361520000000004
	.quad	0x4023993ea2d2fe3f              # double 9.7993059999999996
	.quad	0x402374215b9a5a8a              # double 9.7268170000000005
	.quad	0x4021c8fc504816f0              # double 8.89255
	.quad	0x40235dbb59ddc1e8              # double 9.6830700000000007
	.quad	0x40207e8b5cbff477              # double 8.2471569999999996
	.quad	0x40084e820e629952              # double 3.0383339999999999
	.quad	0x4021f5b1209edbf9              # double 8.9798670000000005
	.quad	0x401ac6f9b994e1a4              # double 6.694312
	.quad	0x4017baab8a5ce5b4              # double 5.9322949999999999
	.quad	0x4019fdac258d5843              # double 6.4977270000000003
	.quad	0x3ff4d4c660a20147              # double 1.301947
	.quad	0x401113868fd199bb              # double 4.2690679999999999
	.quad	0x40238512cadddf44              # double 9.7599090000000003
	.quad	0x40100fbefd00713f              # double 4.015377
	.quad	0x401ed6084a515cea              # double 7.7090160000000001
	.quad	0x401869930be0ded3              # double 6.1031000000000004
	.quad	0x40152a8650e77920              # double 5.2915279999999996
	.quad	0x40168b65ecc3e319              # double 5.6361309999999998
	.quad	0x4004b98e10cf5b1d              # double 2.5906030000000002
	.quad	0x4022fecb966be7b0              # double 9.4976470000000006
	.quad	0x40221dd6e04c0592              # double 9.0582799999999999
	.quad	0x400cdfe4bcad9ad8              # double 3.6093229999999998
	.quad	0x401e83de1e2de871              # double 7.6287770000000003
	.quad	0x4023f203e63e8dda              # double 9.9726859999999995
	.quad	0x4018a08a697aeddd              # double 6.1567780000000001
	.quad	0x401e1dd6e04c0592              # double 7.5291399999999999
	.quad	0x4008fe06961c3697              # double 3.1240359999999998
	.quad	0x401898b2a6b0d951              # double 6.1491189999999998
	.quad	0x3f4f18c9fb6134ce              # double 9.4899999999999997E-4
	.quad	0x401c24738a3b57c5              # double 7.0355970000000001
	.quad	0x40239cfc610f0e91              # double 9.8066130000000004
	.quad	0x4008bd7a99fa11a9              # double 3.0925189999999998
	.quad	0x401e1fd04a2fcefb              # double 7.5310680000000003
	.quad	0x4014d8c79f666235              # double 5.2116990000000003
	.quad	0x4012e2c6ac215b9a              # double 4.7214609999999997
	.quad	0x400834f69ca9ef52              # double 3.0258609999999999
	.quad	0x40124f3300de4c51              # double 4.5773429999999999
	.quad	0x40050f893faf4278              # double 2.6325859999999999
	.quad	0x3facd9a52263d817              # double 0.056348000000000002
	.quad	0x4013fcff64cf8d71              # double 4.9970679999999996
	.quad	0x4010998201cd5f9a              # double 4.1499100000000002
	.quad	0x401bd92e62131a8f              # double 6.962091
	.quad	0x3fb3ce2089e34331              # double 0.077364000000000002
	.quad	0x40074a52ef911cf3              # double 2.9112909999999999
	.quad	0x3fe1e75bc44bf4cb              # double 0.55949199999999999
	.quad	0x401b37e889c1b542              # double 6.8045980000000004
	.quad	0x3ffdc92ff4ba51a0              # double 1.861618
	.quad	0x40120765fd8adaba              # double 4.507225
	.quad	0x400b2ba94bbe4474              # double 3.3963190000000001
	.quad	0x401085f4e4430b18              # double 4.1308170000000004
	.quad	0x4005a1eabbcb1cc9              # double 2.7040609999999998
	.quad	0x402244ea28fe260b              # double 9.1345989999999997
	.quad	0x4022772cf95d4e90              # double 9.2327650000000006
	.quad	0x3feec86ad2dcb146              # double 0.96196499999999996
	.quad	0x3ff9ebc1eff9f87f              # double 1.620058
	.quad	0x4002033acd5b6806              # double 2.2515770000000002
	.quad	0x4023163baba7b917              # double 9.5434239999999999
	.quad	0x401abb3edd8b60f2              # double 6.6828570000000003
	.quad	0x401604538ef34d6a              # double 5.5042249999999999
	.quad	0x3ff1321d53cddd6e              # double 1.074735
	.quad	0x3ff730f3882278d1              # double 1.449451
	.quad	0x4015652fc2656abe              # double 5.3488150000000001
	.quad	0x3ff4c73365881a15              # double 1.2986329999999999
	.quad	0x40220f27136a4010              # double 9.0295950000000005
	.quad	0x3fd479aae6c8f755              # double 0.31992599999999999
	.quad	0x40216bc36113404f              # double 8.7104750000000006
	.quad	0x401b54b662fdfc1a              # double 6.8327270000000002
	.quad	0x3ff1406e19b90eaa              # double 1.07823
	.quad	0x3fff22a2c2374795              # double 1.945956
	.quad	0x40195d28d002e233              # double 6.3409760000000004
	.quad	0x3f97a28bb0a2ca9b              # double 0.023081000000000001
	.quad	0x4021bc23b7952d23              # double 8.8674599999999995
	.quad	0x401f6cdfefbf401c              # double 7.8563229999999997
	.quad	0x4023d22ff08893b8              # double 9.9105220000000002
	.quad	0x3ff10448cf7caa76              # double 1.0635460000000001
	.quad	0x3ffdab0d9513f8db              # double 1.8542609999999999
	.quad	0x400e98ad25679896              # double 3.8245490000000002
	.quad	0x401589791819d239              # double 5.3842509999999999
	.quad	0x40022a593a2df938              # double 2.2706780000000002
	.quad	0x3ff2784ec636b096              # double 1.154372
	.quad	0x4007c55970b49e02              # double 2.9713620000000001
	.quad	0x401100db2702a348              # double 4.2508359999999996
	.quad	0x4003c9057d1782d4              # double 2.4731550000000002
	.quad	0x40162fef7c243dcd              # double 5.5468120000000001
	.quad	0x3ff88be7296f6513              # double 1.5341560000000001
	.quad	0x401cacf9a06a6e33              # double 7.1689210000000001
	.quad	0x4013d954a7f8012e              # double 4.962237
	.quad	0x4023b4204f2ae07e              # double 9.8518089999999994
	.quad	0x40144e5cd4ed2cbf              # double 5.0765260000000003
	.quad	0x401c315d701d9f4d              # double 7.0482079999999998
	.quad	0x40151b9cf9a06a6e              # double 5.2769659999999998
	.quad	0x4001da1cac083127              # double 2.2315
	.quad	0x4023aed56b00ffda              # double 9.8414719999999996
	.quad	0x401df804534bd76f              # double 7.492204
	.quad	0x4022d948fd9fd36f              # double 9.4243849999999991
	.quad	0x401a5564b662fdfc              # double 6.5833919999999999
	.quad	0x400c84ca4f440af2              # double 3.5648390000000001
	.quad	0x40107a01abd1aa82              # double 4.1191469999999999
	.quad	0x4014745ae5ffa3ba              # double 5.1136280000000003
	.quad	0x401ba8fb00bcbe62              # double 6.9150200000000002
	.quad	0x4022cd1782d38477              # double 9.40057
	.quad	0x40139862f5989df1              # double 4.8988149999999999
	.quad	0x40225b3743632c1f              # double 9.1781559999999995
	.quad	0x3ffaeedfe75bc44c              # double 1.683319
	.quad	0x4015d862b27cbf6e              # double 5.4613139999999998
	.quad	0x4000e33ce63a5c1c              # double 2.1109559999999998
	.quad	0x4020c6be1650a45d              # double 8.3881689999999995
	.quad	0x4016776965f5275f              # double 5.6166130000000001
	.quad	0x3fdb3bb40b34e768              # double 0.42551899999999998
	.quad	0x4022924c61d8622c              # double 9.2857389999999995
	.quad	0x40150d90e23af31b              # double 5.2632479999999999
	.quad	0x40185c42e9899bf6              # double 6.0900990000000004
	.quad	0x4016377bbf93ff26              # double 5.5541830000000001
	.quad	0x40095dabe27179c0              # double 3.1707380000000001
	.quad	0x3ff4b0b8cfbfc654              # double 1.293145
	.quad	0x401835f1bef49cf5              # double 6.0526799999999996
	.quad	0x40223b3ce63a5c1c              # double 9.1156989999999993
	.quad	0x400ddd1351159c49              # double 3.7329469999999998
	.quad	0x3fcf8f0c77dd872f              # double 0.24655299999999999
	.quad	0x401e16b723ee1bd2              # double 7.5221830000000001
	.quad	0x40205fcaea747d80              # double 8.1870949999999993
	.quad	0x401c60e0eb67c287              # double 7.094608
	.quad	0x40142fc2656abde4              # double 5.04664
	.quad	0x4000728d002e2329              # double 2.055933
	.quad	0x401c75dedf1e0829              # double 7.1151080000000002
	.quad	0x402368986fcdee35              # double 9.704288
	.quad	0x3fc92d234eb9a177              # double 0.19669
	.quad	0x4020fb9c51dabe27              # double 8.4914269999999998
	.quad	0x400cc26351deefe5              # double 3.594916
	.quad	0x3fe27601797cc3a0              # double 0.576905
	.quad	0x400544bec679cc75              # double 2.6585670000000001
	.quad	0x3fee3f141205bc02              # double 0.94520000000000004
	.quad	0x4011b23571d1d474              # double 4.4240320000000004
	.quad	0x4018f553ef6b5d46              # double 6.2395779999999998
	.quad	0x3fe0d7f51efb6dca              # double 0.526362
	.quad	0x40046917d6b65a9b              # double 2.5513150000000002
	.quad	0x3fbac508b32ce896              # double 0.104569
	.quad	0x3fd2690de093532e              # double 0.28766199999999997
	.quad	0x40175f73c0c1fc8f              # double 5.8432149999999998
	.quad	0x4017272c94b380cb              # double 5.7882559999999996
	.quad	0x4023f6ae9ee45c36              # double 9.9818010000000008
	.quad	0x40145e1437c5692b              # double 5.0918739999999998
	.quad	0x40152d9d7774aba4              # double 5.2945460000000004
	.quad	0x400c10342aa9f7b6              # double 3.5079120000000001
	.quad	0x3ff9db43526527a2              # double 1.616031
	.quad	0x400ad8ba40d90e24              # double 3.3558240000000001
	.quad	0x3fee9a459103c8e2              # double 0.95633199999999996
	.quad	0x401820c564f97edc              # double 6.0320029999999996
	.quad	0x3ff68f840181e03f              # double 1.4100379999999999
	.quad	0x40009fee2c98e53f              # double 2.0780910000000001
	.quad	0x4012a17f84449dbf              # double 4.6577130000000002
	.quad	0x4022e1d2178f68be              # double 9.4410559999999997
	.quad	0x401aab573eab367a              # double 6.6673249999999999
	.quad	0x400d2ebbba55d1c4              # double 3.6478190000000001
	.quad	0x401a9e111276fb09              # double 6.6543619999999999
	.quad	0x401021bbcf4e874d              # double 4.0329430000000004
	.quad	0x402087327aa68f4b              # double 8.2640569999999993
	.quad	0x4022c566f0cfe154              # double 9.3855509999999995
	.quad	0x401539dfdac68a93              # double 5.3065179999999996
	.quad	0x40229c2480e8c8ac              # double 9.3049660000000002
	.quad	0x401dec3e3193f6c2              # double 7.4807059999999996
	.quad	0x3fe04e0b912dba4d              # double 0.50952699999999995
	.quad	0x401258c692f6e829              # double 4.5866949999999997
	.quad	0x401dd04189374bc7              # double 7.4533750000000003
	.quad	0x3ff12605ee568a50              # double 1.0717829999999999
	.quad	0x401266a593a2df93              # double 4.6002409999999996
	.quad	0x4009edc5d6388659              # double 3.2410999999999999
	.quad	0x40202f0e0a84be40              # double 8.0919039999999995
	.quad	0x401d8e31d712a0ec              # double 7.3888619999999996
	.quad	0x4010cd3bf2f55582              # double 4.2004239999999999
	.quad	0x4021a59ee88df373              # double 8.8234779999999997
	.quad	0x402048950763a190              # double 8.1417619999999999
	.quad	0x3ff262dd7a99fa12              # double 1.1491370000000001
	.quad	0x4016666559f6ec5b              # double 5.599996
	.quad	0x401f13b3e9a6f827              # double 7.769241
	.quad	0x4011e98c7e28240b              # double 4.4780749999999996
	.quad	0x3fc7a73b42cc2d6b              # double 0.18479100000000001
	.quad	0x400d8712e40852b5              # double 3.6909540000000001
	.quad	0x402394bec679cc75              # double 9.7905180000000004
	.quad	0x4020d06ab14ec205              # double 8.4070640000000001
	.quad	0x3ff6958537e2c55d              # double 1.4115040000000001
	.quad	0x4015fe86833c6003              # double 5.4985600000000003
	.quad	0x40112f67f4dbdf8f              # double 4.2962949999999998
	.quad	0x4004a91e215336df              # double 2.5825770000000001
	.quad	0x3ffd95e39713ad5c              # double 1.849094
	.quad	0x401c68a50507a6bd              # double 7.1021919999999996
	.quad	0x40150b28d8665e03              # double 5.2608980000000001
	.quad	0x4022bc069e7fb268              # double 9.3672380000000003
	.quad	0x4019624e160d887f              # double 6.3460010000000002
	.quad	0x40209c332f01754b              # double 8.305078
	.quad	0x402160aaeafab53d              # double 8.6888039999999993
	.quad	0x4011ccd07852f7f5              # double 4.4500140000000004
	.quad	0x4019c07852f7f499              # double 6.4379590000000002
	.quad	0x40213a2856605ee5              # double 8.6135889999999993
	.quad	0x40123975afaf8594              # double 4.5561129999999999
	.quad	0x402050f81e8a2ec3              # double 8.1581430000000008
	.quad	0x401f2959a30984e4              # double 7.790381
	.quad	0x401ffc4da9003eea              # double 7.9963899999999999
	.quad	0x40239685fd04a2fd              # double 9.7939910000000001
	.quad	0x4010b63b256ffc11              # double 4.1779599999999997
	.quad	0x4023892fd32c625f              # double 9.7679430000000007
	.quad	0x4020266a76965f52              # double 8.0750309999999992
	.quad	0x401647c286f8ad25              # double 5.5700779999999996
	.quad	0x4013c4784230fcf8              # double 4.941865
	.quad	0x3ff0366c6de76428              # double 1.013287
	.quad	0x40130552e2fbe33b              # double 4.7551990000000002
	.quad	0x4023883a96d4c33b              # double 9.7660719999999994
	.quad	0x400a632b990afe61              # double 3.2984230000000001
	.quad	0x3ff9ba450acc0bdd              # double 1.6079760000000001
	.quad	0x402186d0917d6b66              # double 8.7633100000000006
	.quad	0x3fe4397353b4b2fb              # double 0.63201300000000005
	.quad	0x401bd44178705426              # double 6.957281
	.quad	0x401a303a7546d3fa              # double 6.5470980000000001
	.quad	0x3fed165f5275ee9a              # double 0.90898100000000004
	.quad	0x400d32a843808851              # double 3.6497350000000002
	.quad	0x4006c0e0eb67c287              # double 2.844179
	.quad	0x401502dd377e1b8f              # double 5.2527970000000002
	.quad	0x401286d82ba5a038              # double 4.6316839999999999
	.quad	0x4020b4df8b157258              # double 8.3532679999999999
	.quad	0x3fa29e90795f676f              # double 0.036366000000000002
	.quad	0x3fcfb18548a9bcfd              # double 0.24760499999999999
	.quad	0x40187446f9b994e2              # double 6.1135520000000003
	.quad	0x401c1a009f623077              # double 7.0253930000000002
	.quad	0x4021e4a66559f6ec              # double 8.9465819999999993
	.quad	0x3ff3fd1676640a6c              # double 1.2492890000000001
	.quad	0x40231068db8bac71              # double 9.5320499999999999
	.quad	0x401b41ebc83a96d5              # double 6.8143760000000002
	.quad	0x3ff866e86c6583e8              # double 1.5251239999999999
	.quad	0x401a1f0739b024f6              # double 6.5303009999999997
	.quad	0x400abeb074a771c9              # double 3.3431099999999998
	.quad	0x40016c386d2ed784              # double 2.1778420000000001
	.quad	0x40185a643cc07aaf              # double 6.088273
	.quad	0x4023efa58f7121ab              # double 9.9680599999999994
	.quad	0x401a8c49ba5e353f              # double 6.6369999999999996
	.quad	0x3ff7c6e2a80064aa              # double 1.486056
	.quad	0x3ff7438d1d8a5482              # double 1.453992
	.quad	0x3ff1c74538ef34d7              # double 1.1111500000000001
	.quad	0x401b68982cb20fb2              # double 6.8521429999999999
	.quad	0x3fbd50fc71d60631              # double 0.11451699999999999
	.quad	0x401c956191148fda              # double 7.14588
	.quad	0x3ff4213c254a3c64              # double 1.258114
	.quad	0x40149532617c1bda              # double 5.1456999999999997
	.quad	0x4020613c03bc4d23              # double 8.1899110000000004
	.quad	0x402280244e93e1ca              # double 9.2502770000000005
	.quad	0x3fe917f62b6ae7d5              # double 0.78417499999999996
	.quad	0x401f860d0247021d              # double 7.8809089999999999
	.quad	0x402246c00da1a933              # double 9.1381840000000008
	.quad	0x3ff852dba4d6e47e              # double 1.5202290000000001
	.quad	0x4004f9e518f3eccc              # double 2.6220189999999999
	.quad	0x4023169f8c21e1d2              # double 9.5441859999999998
	.quad	0x402249856a37ac3f              # double 9.1435960000000005
	.quad	0x3ff3bacd5b6805a3              # double 1.233106
	.quad	0x3ff213293d102bc7              # double 1.129678
	.quad	0x400eea747d805e5f              # double 3.8644799999999999
	.quad	0x400c097d8cf398e9              # double 3.5046339999999998
	.quad	0x3fef35e310dbf056              # double 0.97532799999999997
	.quad	0x4000337867f0aa22              # double 2.0251320000000002
	.quad	0x3fc39146e4c0df59              # double 0.15287100000000001
	.quad	0x3ff77fbbd7b2031d              # double 1.468685
	.quad	0x3ff950539fba450b              # double 1.582111
	.quad	0x400a28d7e02645e5              # double 3.269943
	.quad	0x400eadd50a88effe              # double 3.8348789999999999
	.quad	0x4022ab81733226c4              # double 9.3349720000000004
	.quad	0x40210bfe7e1fc090              # double 8.5234260000000006
	.quad	0x4014054da4ce8102              # double 5.005179
	.quad	0x4012e43b70ef5665              # double 4.7228830000000004
	.quad	0x40200fe60c38f367              # double 8.0310520000000007
	.quad	0x40221e72756861e9              # double 9.0594669999999997
	.quad	0x4019182adc4c9c91              # double 6.2736010000000002
	.quad	0x4018bd38cda6e760              # double 6.184787
	.quad	0x4010d2c386d2ed78              # double 4.2058239999999998
	.quad	0x400a6d8b1dd5d3dd              # double 3.3034880000000002
	.quad	0x4023a78359bc33f8              # double 9.8271739999999994
	.quad	0x40009782d38476f3              # double 2.0739800000000002
	.quad	0x40015703f2d3c793              # double 2.1674880000000001
	.quad	0x40068b1c432ca57a              # double 2.8179249999999998
	.quad	0x4013c9014b599aa6              # double 4.946294
	.quad	0x3fdf4102ff8ec0f9              # double 0.48834300000000003
	.quad	0x40003ac929aa1d75              # double 2.0287039999999998
	.quad	0x401c97f5e84f0953              # double 7.1483990000000004
	.quad	0x4005428ed5f138bd              # double 2.6574990000000001
	.quad	0x4016071ac14c660a              # double 5.5069379999999999
	.quad	0x40141805e5f30e80              # double 5.02346
	.quad	0x4023b5ca6ca03c4b              # double 9.8550599999999999
	.quad	0x401e1c24c404a72f              # double 7.5274840000000002
	.quad	0x3fe5be4ef0281ba8              # double 0.679481
	.quad	0x400b03358f2e05cd              # double 3.3765670000000001
	.quad	0x400087c17a89331a              # double 2.066287
	.quad	0x401baa2a0a958538              # double 6.9161760000000001
	.quad	0x402219001d5c3159              # double 9.0488289999999996
	.quad	0x4021eaf6e82949a5              # double 8.9589149999999993
	.quad	0x401c522467be553b              # double 7.0802170000000002
	.quad	0x4016cf36ef8055fc              # double 5.7023580000000003
	.quad	0x3ffca516db0dd830              # double 1.790305
	.quad	0x40209646ae3a3a8e              # double 8.2935079999999992
	.quad	0x400b93d4280ae105              # double 3.4471820000000002
	.quad	0x40112d77318fc505              # double 4.2944000000000004
	.quad	0x401277a17f4128bf              # double 4.6168269999999998
	.quad	0x40021b96af038e2a              # double 2.263471
	.quad	0x4015f507e9d94d0e              # double 5.4892880000000002
	.quad	0x3ffddc422036006d              # double 1.866274
	.quad	0x400b33415b1422cd              # double 3.4000270000000001
	.quad	0x401950ef1348b220              # double 6.3290369999999996
	.quad	0x4013984be40420f7              # double 4.8987270000000001
	.quad	0x402265b1e9f27781              # double 9.1986229999999995
	.quad	0x402347359ff4fd6d              # double 9.6390809999999991
	.quad	0x402060a5269595ff              # double 8.1887600000000003
	.quad	0x400bf5a1016ce78a              # double 3.494936
	.quad	0x40026edf61240746              # double 2.3041369999999999
	.quad	0x4023ae91a75cd0bb              # double 9.8409549999999992
	.quad	0x3fe762845996744b              # double 0.73077599999999998
	.quad	0x401d92d1287c200c              # double 7.3933759999999999
	.quad	0x400368522ea0fd3b              # double 2.4259379999999999
	.quad	0x3ffcf6d117b5286b              # double 1.8102579999999999
	.quad	0x40225928e0c9d9d3              # double 9.1741399999999995
	.quad	0x401f996fa82e87d3              # double 7.8998400000000001
	.quad	0x40097aaa3ad18d26              # double 3.184895
	.quad	0x401ba3eab367a0f9              # double 6.910075
	.quad	0x400bb2452c59fb1e              # double 3.462046
	.quad	0x401d7ef8ceb356da              # double 7.373996
	.quad	0x4003fe84f09528f2              # double 2.4992770000000002
	.quad	0x3fa4812be48a58b4              # double 0.040048
	.quad	0x400c2ace24bba12b              # double 3.5209009999999998
	.quad	0x3ff43c87db2b3461              # double 1.264778
	.quad	0x401d671d1d4738a4              # double 7.3506970000000003
	.quad	0x4022e2f23033a472              # double 9.4432539999999996
	.quad	0x3fe49dd5d3dc8b87              # double 0.64426700000000003
	.quad	0x401adf587d6f9768              # double 6.7181110000000004
	.quad	0x4007d3cb3e5753a4              # double 2.978415
	.quad	0x40083d944aa53fc0              # double 3.030068
	.quad	0x400565f84cad57bc              # double 2.6747899999999998
	.quad	0x3ffed1f70de8f6cf              # double 1.926261
	.quad	0x4000d127f5e84f09              # double 2.1021269999999999
	.quad	0x401bb21ccd962068              # double 6.9239379999999997
	.quad	0x401c7c99f1ae2da5              # double 7.1216809999999997
	.quad	0x402347fa3b9ae0c1              # double 9.6405809999999991
	.quad	0x4009e4f11b60ae97              # double 3.2367880000000002
	.quad	0x4012bdc37a3db3c0              # double 4.6853160000000003
	.quad	0x40232102ff8ec0f9              # double 9.5644760000000008
	.quad	0x3ffe5371971c10d8              # double 1.8953720000000001
	.quad	0x40232d6238da3c21              # double 9.5886399999999998
	.quad	0x402359dd7ecbb7fa              # double 9.6755180000000003
	.quad	0x3ff5344d44567126              # double 1.325269
	.quad	0x4015a779a6b50b0f              # double 5.4135499999999999
	.quad	0x40035f51efb6dca0              # double 2.4215429999999998
	.quad	0x401b8122749f0e4e              # double 6.8761080000000003
	.quad	0x3feea70b06c43f60              # double 0.95789100000000004
	.quad	0x401aa3ce2089e343              # double 6.6599659999999998
	.quad	0x40226c2528ae74f3              # double 9.2112210000000001
	.quad	0x3ff151efb6dca07f              # double 1.0825039999999999
	.quad	0x40156d045fe11127              # double 5.3564619999999996
	.quad	0x4004dfbe76c8b439              # double 2.6092499999999998
	.quad	0x4020ff2c7325918a              # double 8.498386
	.quad	0x3fe49dd3bafd9770              # double 0.64426600000000001
	.quad	0x40059867f0aa21a7              # double 2.699417
	.quad	0x4021862867275686              # double 8.7620269999999998
	.quad	0x4018610b630a9153              # double 6.0947699999999996
	.quad	0x3fff63bff8a8f3aa              # double 1.9618530000000001
	.quad	0x400430c34c1a8ac6              # double 2.5238100000000001
	.quad	0x4014aefb2aae2974              # double 5.1708800000000004
	.quad	0x3fe56df82b1f687b              # double 0.66967399999999999
	.quad	0x401fcde1198aeb81              # double 7.951054
	.quad	0x400ad44bb1af3a15              # double 3.3536600000000001
	.quad	0x401b94af922962d0              # double 6.8952010000000001
	.quad	0x4001759685122318              # double 2.1824159999999999
	.quad	0x4004805d52c16df4              # double 2.562678
	.quad	0x40176269595feda6              # double 5.8461049999999997
	.quad	0x400a97c4e2f37fbf              # double 3.324106
	.quad	0x400f9d4280ae1049              # double 3.9517869999999999
	.quad	0x4021661198aeb80f              # double 8.6993530000000003
	.quad	0x4020749129888f86              # double 8.2276699999999998
	.quad	0x4015bcfe58601366              # double 5.434564
	.quad	0x4005fb1e9f277814              # double 2.747617
	.quad	0x4022d50e779207d5              # double 9.4161260000000002
	.quad	0x3fd418a86d71f362              # double 0.31400499999999998
	.quad	0x4020c056a37ac3eb              # double 8.3756609999999991
	.quad	0x401cf20791c4b902              # double 7.2363569999999999
	.quad	0x4010355000c9539c              # double 4.0520630000000004
	.quad	0x3fde63f572de43ee              # double 0.47485100000000002
	.quad	0x40197ad57bc7f77b              # double 6.369955
	.quad	0x401727fbacb42891              # double 5.7890459999999999
	.quad	0x400e4c215b9a5a8a              # double 3.7871730000000001
	.quad	0x40223478854cdb7b              # double 9.1024820000000002
	.quad	0x400be288051c9f73              # double 3.485611
	.quad	0x4022afd34df04ddb              # double 9.3434089999999994
	.quad	0x40146e0157eed45f              # double 5.1074270000000004
	.quad	0x401a20c5eb313be2              # double 6.5320049999999998
	.quad	0x401ec4b599aa6091              # double 7.6920989999999997
	.quad	0x4000dc8216c61523              # double 2.1076700000000002
	.quad	0x40210821d10b1fef              # double 8.5158830000000005
	.quad	0x40207bd8be7296f6              # double 8.2418879999999994
	.quad	0x3f84e0114d2f5dbc              # double 0.010193000000000001
	.quad	0x401abda4052d666b              # double 6.6851960000000004
	.quad	0x3ff3f4aa9717df1a              # double 1.247233
	.quad	0x402077db09a671ef              # double 8.2340929999999997
	.quad	0x4023e895f2452c5a              # double 9.954269
	.quad	0x40224f559b3d07c8              # double 9.1549499999999994
	.quad	0x40205b1cc9646280              # double 8.1779539999999997
	.quad	0x4015b656eefa1e3f              # double 5.4280660000000003
	.quad	0x3ff47b0e5e679464              # double 1.280043
	.quad	0x401494588a04d120              # double 5.1448689999999999
	.quad	0x4010344aa53fc009              # double 4.0510659999999996
	.quad	0x40203dd8b60f1b26              # double 8.1207940000000001
	.quad	0x3feca5204af92296              # double 0.89515699999999998
	.quad	0x3ff09a294141e9af              # double 1.0376369999999999
	.quad	0x401a470b8cfbfc65              # double 6.5693799999999998
	.quad	0x3ffb0e8b7e4de3b9              # double 1.6910510000000001
	.quad	0x40114841248d7e02              # double 4.3205609999999997
	.quad	0x3ff63c86cebbba56              # double 1.389777
	.quad	0x3ff32fc2656abde4              # double 1.19916
	.quad	0x40154fd75e2046c7              # double 5.3279699999999997
	.quad	0x400df10c2c5e2cdc              # double 3.742699
	.quad	0x4017eef5232d2bb2              # double 5.9833569999999998
	.quad	0x4009ff5cf2495e18              # double 3.249689
	.quad	0x4007e36b8f9b1316              # double 2.9860449999999998
	.quad	0x400a80ef1348b220              # double 3.3129559999999998
	.quad	0x40189890d5a5b963              # double 6.1489900000000004
	.quad	0x4016fef1bac2df0d              # double 5.7489689999999998
	.quad	0x4006312d3415b142              # double 2.7740119999999999
	.quad	0x40185c17ebaf1023              # double 6.0899349999999997
	.quad	0x3ffce2dc6e2a8006              # double 1.8053859999999999
	.quad	0x400af566cf41f213              # double 3.3698250000000001
	.quad	0x3fdf220bc382a130              # double 0.48645300000000002
	.quad	0x4000fb5a63f9a49c              # double 2.1227309999999999
	.quad	0x400d54003254e6e2              # double 3.6660159999999999
	.quad	0x4012cbd9018e7579              # double 4.6990699999999999
	.quad	0x4015b8f7db6e5040              # double 5.4306330000000003
	.quad	0x40150a5c1c6088d7              # double 5.2601170000000002
	.quad	0x3ff3b05857afea3e              # double 1.230553
	.quad	0x401c569be09bb6aa              # double 7.0845789999999997
	.quad	0x3ff8c09a24031487              # double 1.5470219999999999
	.quad	0x401155271bcdbbe0              # double 4.3331569999999999
	.quad	0x40116b549f94855e              # double 4.3548150000000003
	.quad	0x40115ed245b291b8              # double 4.3425989999999999
	.quad	0x4011847f562174c5              # double 4.3793920000000002
	.quad	0x401e1e8533b10774              # double 7.5298049999999996
	.quad	0x40211728c79f6662              # double 8.5452329999999996
	.quad	0x3ffbd7c3d68405b4              # double 1.7401770000000001
	.quad	0x3feddb163baba7b9              # double 0.93299399999999999
	.quad	0x400d4de1198aeb81              # double 3.663027
	.quad	0x40178f97aaac1095              # double 5.8902270000000003
	.quad	0x40237a8a3f8982cb              # double 9.7393359999999997
	.quad	0x3fefee3715400325              # double 0.99782899999999996
	.quad	0x4016a0bd44998d04              # double 5.6569719999999997
	.quad	0x4016d1e8a2ec28b3              # double 5.7049890000000003
	.quad	0x40062925785f8d2e              # double 2.7700909999999999
	.quad	0x402306aa8eb46349              # double 9.5130199999999991
	.quad	0x402368f3882278d1              # double 9.7049830000000003
	.quad	0x400cc6b8305d95dd              # double 3.5970309999999999
	.quad	0x4004f7a7008a697b              # double 2.620924
	.quad	0x4009cb884406c00e              # double 3.2243810000000002
	.quad	0x3fe5ed5cfaacd9e8              # double 0.68522499999999997
	.quad	0x4023024f00ef1349              # double 9.5045090000000005
	.quad	0x40231ced6fda836f              # double 9.5564990000000005
	.quad	0x400619c9d5a187a5              # double 2.7625920000000002
	.quad	0x4021f234eb9a176e              # double 8.9730600000000003
	.quad	0x400bba8ac5c13fd1              # double 3.4660850000000001
	.quad	0x401b99845dc83233              # double 6.8999189999999997
	.quad	0x40201b14ca925fe9              # double 8.0528929999999992
	.quad	0x4016e64dc22ab25b              # double 5.7249059999999998
	.quad	0x3fef50f40e5a35d6              # double 0.97863199999999995
	.quad	0x401586149c6f36f0              # double 5.3809380000000004
	.quad	0x401560a8d21bc127              # double 5.3443940000000003
	.quad	0x4023a88df37329c3              # double 9.8292079999999995
	.quad	0x3ff6eb0b7c3504c5              # double 1.4323840000000001
	.quad	0x4009b9e9d0e991ff              # double 3.2157779999999998
	.quad	0x3ff788509bf9c62a              # double 1.47078
	.quad	0x3fe92bb8800eae19              # double 0.78658700000000004
	.quad	0x401a8bff04577d95              # double 6.6367149999999997
	.quad	0x40111dc4007570c5              # double 4.2790679999999996
	.quad	0x401b02c9081c2e34              # double 6.7527200000000001
	.quad	0x3fe9cf483cafb3b7              # double 0.80655299999999996
	.quad	0x401d21cda2b5a20e              # double 7.2830110000000001
	.quad	0x3fd2578e5c4eb570              # double 0.28659400000000002
	.quad	0x3ffc9c03361565c3              # double 1.788089
	.quad	0x401d6788db0574b4              # double 7.351108
	.quad	0x400c0561d4306e5d              # double 3.5026280000000001
	.quad	0x3ffc0ec636b09635              # double 1.7536069999999999
	.quad	0x400800ce0b912dba              # double 3.0003929999999999
	.quad	0x40232c122749f0e5              # double 9.5860760000000002
	.quad	0x4011e42cc2d6a9c5              # double 4.4728269999999997
	.quad	0x3fbdf623076c050c              # double 0.117037
	.quad	0x401e20d5629d840a              # double 7.5320640000000001
	.quad	0x4002f996744b2b77              # double 2.3718689999999998
	.quad	0x4023beedcc20d563              # double 9.8729080000000006
	.quad	0x4002725bb7b6bb13              # double 2.3058390000000002
	.quad	0x40208f640639d5e5              # double 8.2800600000000006
	.quad	0x401253821af7d30b              # double 4.5815510000000002
	.quad	0x402291550ca1cef2              # double 9.2838519999999995
	.quad	0x40214b83ad9f0a1c              # double 8.6474890000000002
	.quad	0x4005522fad6cb535              # double 2.66513
	.quad	0x4012b6de33269df9              # double 4.6785819999999996
	.quad	0x401da996312f4cf5              # double 7.4156120000000003
	.quad	0x4013ade15ca6ca04              # double 4.9198050000000002
	.quad	0x4019629aa1d755bd              # double 6.3462930000000002
	.quad	0x401402014727dcbe              # double 5.0019580000000001
	.quad	0x401b0775b8130165              # double 6.7572850000000004
	.quad	0x40207be7f2c3009b              # double 8.2420039999999997
	.quad	0x4015f7d912556d1a              # double 5.4920390000000001
	.quad	0x401a21dabe27179c              # double 6.533061
	.quad	0x40151b9f127f5e85              # double 5.2769740000000001
	.quad	0x401fc951c5c5718f              # double 7.9466010000000002
	.quad	0x4022df4517614595              # double 9.4360739999999996
	.quad	0x4016b1272c94b381              # double 5.6730010000000002
	.quad	0x401da2fb19e731d3              # double 7.4091610000000001
	.quad	0x401310053e2d6239              # double 4.7656450000000001
	.quad	0x401f7ccdd93c46d8              # double 7.8718789999999998
	.quad	0x40099d084e831ad2              # double 3.201676
	.quad	0x40105fe9b7bf1e8e              # double 4.0936649999999997
	.quad	0x401877689ca18bd6              # double 6.1166099999999997
	.quad	0x4007b214f0520d13              # double 2.961954
	.quad	0x4002b198aeb80ed0              # double 2.3367170000000002
	.quad	0x401a36191148fda0              # double 6.5528300000000002
	.quad	0x401bd6177ea1c68f              # double 6.9590740000000002
	.quad	0x402294f67b1c0011              # double 9.2909430000000004
	.quad	0x3ff79323fee2c98e              # double 1.4734229999999999
	.quad	0x3fc721e603d57796              # double 0.18072199999999999
	.quad	0x3fee8da5daf07bfe              # double 0.95479099999999995
	.quad	0x40184c5c13fd0d06              # double 6.0745699999999996
	.quad	0x401446fef7c243dd              # double 5.0693320000000002
	.quad	0x401c27e73a365cb3              # double 7.0389679999999997
	.quad	0x401a101cd5f99c39              # double 6.5157350000000003
	.quad	0x400969ea14057082              # double 3.1767159999999999
	.quad	0x4011252263d816ad              # double 4.2862640000000001
	.quad	0x401a4bb7739f340d              # double 6.5739419999999997
	.quad	0x4003258c4bd33d29              # double 2.3933339999999999
	.quad	0x4023bec6bce8533b              # double 9.8726099999999998
	.quad	0x400d247fdc5931ca              # double 3.6428219999999998
	.quad	0x4019a5ed8d36b4c8              # double 6.412039
	.quad	0x40197a3f8982cb21              # double 6.369383
	.quad	0x401bcedc7ef177a7              # double 6.952013
	.quad	0x4020235a20ddc619              # double 8.0690469999999994
	.quad	0x3fcdde050374ff86              # double 0.23333799999999999
	.quad	0x4011b91f2dc2b0ea              # double 4.4307829999999999
	.quad	0x40224b0e7ff583a5              # double 9.1465949999999996
	.quad	0x401bd36c15d2d01c              # double 6.956467
	.quad	0x3fd0a38759253544              # double 0.25998100000000002
	.quad	0x40117e2c12ad81ae              # double 4.3732150000000001
	.quad	0x4008d5b4677b395c              # double 3.1043479999999999
	.quad	0x400d6e62131a8ef7              # double 3.6788979999999998
	.quad	0x402361aae6c8f755              # double 9.6907569999999996
	.quad	0x4023763ae2541d8f              # double 9.7309180000000008
	.quad	0x3fdbd0d8cb07d0af              # double 0.43462200000000001
	.quad	0x4022c1bc55864452              # double 9.3783899999999996
	.quad	0x40107c6195464dc2              # double 4.1214659999999999
	.quad	0x400236d6dc1a47aa              # double 2.2767770000000001
	.quad	0x401b7004fb1183b6              # double 6.859394
	.quad	0x4017ce0b912dba4d              # double 5.9512159999999996
	.quad	0x4000af6c69b5a640              # double 2.0856560000000002
	.quad	0x400e20791c4b9021              # double 3.7658559999999999
	.quad	0x3ff1a7d34df04ddb              # double 1.1034729999999999
	.quad	0x401339e8c47a17f4              # double 4.8065519999999999
	.quad	0x3fae675147f13059              # double 0.059381999999999997
	.quad	0x401ed2749f0e4da1              # double 7.7055230000000003
	.quad	0x40122419e30014f9              # double 4.5352550000000003
	.quad	0x40196dd93c46d82c              # double 6.3572740000000003
	.quad	0x40182fe542e557de              # double 6.046773
	.quad	0x4004213d31b9b670              # double 2.5162300000000002
	.quad	0x400a46ab9b23dd55              # double 3.2845070000000001
	.quad	0x40164eb5b2d4d402              # double 5.5768649999999997
	.quad	0x4014ddcf893faf42              # double 5.2166119999999996
	.quad	0x4001f70d62bf11f9              # double 2.2456309999999999
	.quad	0x402296b0fadf2ecf              # double 9.2943189999999998
	.quad	0x3ff9bfeb074a771d              # double 1.6093550000000001
	.quad	0x401404577d955715              # double 5.0042400000000002
	.quad	0x4009063497b7414a              # double 3.1280299999999999
	.quad	0x4019710cb295e9e2              # double 6.3604000000000003
	.quad	0x3ff75273d5bab218              # double 1.45763
	.quad	0x400c209e55c0fcb5              # double 3.515927
	.quad	0x401fc31ceaf251c2              # double 7.9405400000000004
	.quad	0x40223871a3b14a90              # double 9.1102419999999995
	.quad	0x401113c70c996b76              # double 4.2693139999999996
	.quad	0x3ff804ee7c49fd7a              # double 1.501204
	.quad	0x3f904b3c3e74afd5              # double 0.015911999999999999
	.quad	0x400b9c2224edf612              # double 3.4512369999999999
	.quad	0x401524b7b28954a8              # double 5.285857
	.quad	0x3ffa942e557de0d6              # double 1.6611769999999999
	.quad	0x401fb5ad538ac190              # double 7.9274190000000004
	.quad	0x40095371971c10d8              # double 3.1657440000000001
	.quad	0x40173f6598e10cf6              # double 5.8119110000000003
	.quad	0x4013505e1c15097d              # double 4.8284840000000004
	.quad	0x401b45082cf52b91              # double 6.8174140000000003
	.quad	0x3feed1efb6dca07f              # double 0.96312699999999995
	.quad	0x4018b7064ece9a2c              # double 6.1787349999999996
	.quad	0x3ff7ea0dbad3a605              # double 1.494642
	.quad	0x401ff985271bcdbc              # double 7.9936720000000001
	.quad	0x3ff2926b723ee1bd              # double 1.160747
	.quad	0x402252ef0ae53650              # double 9.1619799999999998
	.quad	0x3ffc68db8bac710d              # double 1.7756000000000001
	.quad	0x4022cf6598e10cf6              # double 9.4050720000000005
	.quad	0x400213e24febd09e              # double 2.259709
	.quad	0x4015be297396d091              # double 5.4357049999999996
	.quad	0x40228d7c4e2f37fc              # double 9.2763390000000001
	.quad	0x400e2ab25b317efe              # double 3.770848
	.quad	0x40132baf102363b2              # double 4.7926599999999997
	.quad	0x4004205ee568a505              # double 2.515806
	.quad	0x402143eab367a0f9              # double 8.6326499999999999
	.quad	0x4022ee8c47a17f41              # double 9.4659139999999997
	.quad	0x400c8a4b9884c6a4              # double 3.5675270000000001
	.quad	0x4017c6bb1290257d              # double 5.9440730000000004
	.quad	0x401b3cdab191dde3              # double 6.8094279999999996
	.quad	0x4011d5d851654d62              # double 4.4588330000000003
	.quad	0x40136bf6a0dbad3a              # double 4.8554329999999997
	.quad	0x4020570f5a1016ce              # double 8.1700389999999992
	.quad	0x40175d905c033615              # double 5.8413709999999996
	.quad	0x40066b9cb6848beb              # double 2.8025449999999998
	.quad	0x3fdc68b19a415f46              # double 0.44389000000000001
	.quad	0x4019d132b55ef1fe              # double 6.4542950000000001
	.quad	0x402339463cfb3312              # double 9.6118640000000006
	.quad	0x4023c2b713272431              # double 9.8803029999999996
	.quad	0x400b2ec95bff0457              # double 3.3978449999999998
	.quad	0x40214130df9bdc6a              # double 8.6273260000000001
	.quad	0x40232bc2b94d9408              # double 9.5854700000000008
	.quad	0x4001dd20f2becedd              # double 2.2329729999999999
	.quad	0x40171f24d8fd5cb8              # double 5.7804140000000004
	.quad	0x4021eee3b46fdeb5              # double 8.9665809999999997
	.quad	0x40000e5abc0e38a8              # double 2.007009
	.quad	0x40200cb90214ad36              # double 8.0248489999999997
	.quad	0x401ef4898f605ab4              # double 7.7388060000000003
	.quad	0x3ff9905af6c69b5a              # double 1.5977429999999999
	.quad	0x401c08140dd3fe19              # double 7.0078889999999996
	.quad	0x4006d7774aba3876              # double 2.8552080000000002
	.quad	0x40014d834091c087              # double 2.1628479999999999
	.quad	0x3ffb60b6f9fcb0c0              # double 1.711112
	.quad	0x4017d5eb313be22e              # double 5.9589049999999997
	.quad	0x4023654c122749f1              # double 9.6978460000000001
	.quad	0x3ffa8f7ec3547e07              # double 1.6600330000000001
	.quad	0x401f202602c9081c              # double 7.7813949999999998
	.quad	0x3ff3e56bca5375c9              # double 1.243511
	.quad	0x400f72b7fe08aefb              # double 3.9310149999999999
	.quad	0x4017e7e77d523b36              # double 5.9764689999999998
	.quad	0x401d0aa8650e7792              # double 7.260408
	.quad	0x400116273929ed39              # double 2.1358169999999999
	.quad	0x401091b43526527a              # double 4.1422889999999999
	.quad	0x4021e38759253544              # double 8.9443920000000005
	.quad	0x400ab74ff865d7cb              # double 3.3395079999999999
	.quad	0x4016a6b7ed41b75a              # double 5.6628109999999996
	.quad	0x401771016ce789e7              # double 5.8603569999999996
	.quad	0x40038756861e9292              # double 2.4410829999999999
	.quad	0x4000226cc1ca3a4b              # double 2.0168089999999999
	.quad	0x401ac3e1c9b41398              # double 6.6912909999999997
	.quad	0x401c7c95bff04578              # double 7.1216650000000001
	.quad	0x3fcb9af1886df82b              # double 0.215666
	.quad	0x401415204af92296              # double 5.0206309999999998
	.quad	0x4014188df37329c3              # double 5.0239789999999998
	.quad	0x400612fba01eeed9              # double 2.7592690000000002
	.quad	0x402168b912dba4d7              # double 8.7045370000000002
	.quad	0x3fe9e496ededaec5              # double 0.80915400000000004
	.quad	0x4017fab5807fed20              # double 5.9948329999999999
	.quad	0x401eb56b441bb8c3              # double 7.6771669999999998
	.quad	0x4021479357603926              # double 8.6397960000000005
	.quad	0x4018bc34c1a8ac5c              # double 6.1837949999999999
	.quad	0x4001bcca70d1fa33              # double 2.2171829999999999
	.quad	0x40238746887a8d65              # double 9.7642100000000002
	.quad	0x401bd8344c37e6f7              # double 6.9611369999999999
	.quad	0x4000afdda8bd230c              # double 2.0858720000000002
	.quad	0x3ff285af6c69b5a6              # double 1.1576379999999999
	.quad	0x3fd05fa658c4bd34              # double 0.25583800000000001
	.quad	0x401692fa93af74cd              # double 5.6435339999999998
	.quad	0x4021716d2aa5c5f8              # double 8.7215360000000004
	.quad	0x40231851a8694035              # double 9.5474979999999991
	.quad	0x400d262bae03b3ea              # double 3.6436380000000002
	.quad	0x4010a3a3a8e71477              # double 4.1598040000000003
	.quad	0x401a25885d31337f              # double 6.5366530000000003
	.quad	0x4023e77f6b1a2a4e              # double 9.9521440000000005
	.quad	0x4023ccd573647bab              # double 9.9000660000000006
	.quad	0x3ff035e2046c764b              # double 1.013155
	.quad	0x401aad512ec6bce8              # double 6.6692549999999997
	.quad	0x4020afed634549b6              # double 8.3436079999999997
	.quad	0x4021786d2ed783e0              # double 8.7352080000000001
	.quad	0x401e7c8c0ce91c8f              # double 7.6216280000000002
	.quad	0x4023d38fbca1059f              # double 9.9132060000000006
	.quad	0x3ff04ed0b30b5aa7              # double 1.019242
	.quad	0x4017be7ff583a53c              # double 5.9360350000000004
	.quad	0x3ffd8fe9b7bf1e8e              # double 1.8476349999999999
	.quad	0x401bbf97edc7ef17              # double 6.9371029999999996
	.quad	0x3ff3e3c536d655e3              # double 1.2431080000000001
	.quad	0x4015af8b588e368f              # double 5.42143
	.quad	0x3fe40db8bac710cb              # double 0.62667499999999998
	.quad	0x40097f5b5fa22707              # double 3.1871860000000001
	.quad	0x40223c46950fc71d              # double 9.1177259999999993
	.quad	0x40207d9f4d37c137              # double 8.2453559999999992
	.quad	0x401d31cd1c7de508              # double 7.2986339999999998
	.quad	0x4005fbb2788db057              # double 2.7478989999999999
	.quad	0x4005eb60f1b25f63              # double 2.7399309999999999
	.quad	0x4006d79af1886df8              # double 2.8552759999999999
	.quad	0x4014d625a682b628              # double 5.2091279999999998
	.quad	0x3ffd3e09bb6aa4ba              # double 1.8276460000000001
	.quad	0x4020dcb018611fd6              # double 8.4310310000000008
	.quad	0x4020250a24463066              # double 8.072343
	.quad	0x402226358298cc14              # double 9.0746269999999995
	.quad	0x4018148b65237048              # double 6.0200630000000004
	.quad	0x401dd369b9d7fd82              # double 7.4564579999999996
	.quad	0x4010a943e1006078              # double 4.1652979999999999
	.quad	0x402173fee2c98e54              # double 8.7265540000000001
	.quad	0x40118b024f6598e1              # double 4.385751
	.quad	0x3ff99c93ea2d2fe4              # double 1.600727
	.quad	0x40197003686a4ca5              # double 6.359388
	.quad	0x40207a5529fe004b              # double 8.2389309999999991
	.quad	0x40058cf4a558ea7d              # double 2.6938260000000001
	.quad	0x401ca2fcefaa4767              # double 7.1591680000000002
	.quad	0x401eddebd9018e75              # double 7.7167199999999995
	.quad	0x401a2ab3aabcd78c              # double 6.5417009999999998
	.quad	0x4021d0dfbd6a593a              # double 8.9079569999999997
	.quad	0x401130ef566490a3              # double 4.2977879999999997
	.quad	0x40096f345069a4df              # double 3.1792989999999999
	.quad	0x402099b8023a6ce3              # double 8.3002319999999994
	.quad	0x4020b08c8259e1f4              # double 8.3448220000000006
	.quad	0x401bb27243137b07              # double 6.924264
	.quad	0x4020e5d9a0f0a5f0              # double 8.4489260000000002
	.quad	0x4011c1394317acc5              # double 4.4386950000000001
	.quad	0x4023778487b99d45              # double 9.7334329999999997
	.quad	0x400bfe6ab9b23dd5              # double 3.4992269999999999
	.quad	0x4015004ee7c49fd8              # double 5.2503010000000003
	.quad	0x4020ef8c868b9fdc              # double 8.4678690000000003
	.quad	0x401f2077036c9c0b              # double 7.7817040000000003
	.quad	0x400752e9ccb7d417              # double 2.9154849999999999
	.quad	0x4023b23bff8a8f3b              # double 9.8481140000000007
	.quad	0x40163d8a54823854              # double 5.560098
	.quad	0x40154e1a3f4666ed              # double 5.3262720000000003
	.quad	0x401aef123c42a66e              # double 6.7334680000000002
	.quad	0x401b074a771c970f              # double 6.7571199999999996
	.quad	0x400efab9f559b3d0              # double 3.8724249999999998
	.quad	0x401e2cd4ed2cbea5              # double 7.543781
	.quad	0x4020025ce5b4245f              # double 8.0046149999999994
	.quad	0x40186fe3f359ff50              # double 6.1092680000000001
	.quad	0x40228311a543f1c7              # double 9.2559939999999994
	.quad	0x402346a52ef911cf              # double 9.6379789999999996
	.quad	0x402235dd095af295              # double 9.1052020000000002
	.quad	0x3fffd97c3d68405b              # double 1.9905969999999999
	.quad	0x4011085fd04a2fcf              # double 4.258178
	.quad	0x4011f360d0247022              # double 4.4876740000000002
	.quad	0x3ff42c13b9f127f6              # double 1.260761
	.quad	0x3fd783ec892ab68d              # double 0.367427
	.quad	0x4004bdfeb8d82342              # double 2.5927709999999999
	.quad	0x4013d3ee1bd1ed9e              # double 4.956963
	.quad	0x4023a92d3415b142              # double 9.8304229999999997
	.quad	0x4014bff8a8f3a9b0              # double 5.1874719999999996
	.quad	0x401ad501e2584f4c              # double 6.7080149999999996
	.quad	0x4021b8d0aaa7ded7              # double 8.8609670000000005
	.quad	0x401fb073de1e2de8              # double 7.9223169999999996
	.quad	0x401818ce703afb7f              # double 6.0242250000000004
	.quad	0x40148a0902de00d2              # double 5.1348000000000003
	.quad	0x401ad98fe69270b0              # double 6.7124629999999996
	.quad	0x3ff6b5ec80c73abd              # double 1.4194150000000001
	.quad	0x40030fba8826aa8f              # double 2.3826800000000001
	.quad	0x3fffabce8533b107              # double 1.9794449999999999
	.quad	0x40224dce5b4245f6              # double 9.1519650000000006
	.quad	0x4013a54eb13dfb0d              # double 4.9114329999999997
	.quad	0x40152bcc6c54bcf1              # double 5.2927720000000003
	.quad	0x4013d4d4cb9ecf64              # double 4.9578430000000004
	.quad	0x4013f8f7db6e5040              # double 4.9931330000000003
	.quad	0x401d16a5d6bebe16              # double 7.2721169999999997
	.quad	0x400ad05faebc408e              # double 3.3517450000000002
	.quad	0x400453b645a1cac1              # double 2.5408750000000002
	.quad	0x401d27763e4abe6a              # double 7.2885369999999998
	.quad	0x3fff7b8b26394fad              # double 1.967662
	.quad	0x4002675c4a83b1d1              # double 2.3004690000000001
	.quad	0x4009d04816f0068e              # double 3.2267000000000001
	.quad	0x40238dbf6a0dbad4              # double 9.7768510000000006
	.quad	0x402281611ba3ca75              # double 9.252694
	.quad	0x4005755582129457              # double 2.6822919999999999
	.quad	0x40170198aeb80ed0              # double 5.7515590000000003
	.quad	0x3fe0496249a133c2              # double 0.50895800000000002
	.quad	0x401bb7c06e19b90f              # double 6.9294450000000003
	.quad	0x401e74f93bc0a06f              # double 7.6142320000000003
	.quad	0x3ff503d46b26bf87              # double 1.3134349999999999
	.quad	0x40021eb313be22e6              # double 2.2649900000000001
	.quad	0x4022015aaf78feef              # double 9.0026449999999993
	.quad	0x401c428dc981beb2              # double 7.0649940000000004
	.quad	0x3ffeda0be5109071              # double 1.928234
	.quad	0x401ceb59578a2a91              # double 7.2298330000000002
	.quad	0x402241ee2435696e              # double 9.1287699999999994
	.quad	0x40105251c193b3a7              # double 4.0803900000000004
	.quad	0x40218d3e707e175d              # double 8.7758669999999999
	.quad	0x3ffd683f4eca686e              # double 1.8379509999999999
	.quad	0x40208642bf9830e4              # double 8.2622280000000003
	.quad	0x40206e44b6e935b9              # double 8.2153679999999998
	.quad	0x4020c96db0dd82fd              # double 8.3934149999999992
	.quad	0x3ff06b042528ae75              # double 1.026127
	.quad	0x40111c8d9f9053a0              # double 4.2778840000000002
	.quad	0x4021f66516db0dd8              # double 8.9812399999999997
	.quad	0x4009bb54195cc858              # double 3.216469
	.quad	0x4020000a7c5ac472              # double 8.0000800000000005
	.quad	0x4018eef99806f263              # double 6.2333740000000004
	.quad	0x4012dbc7b45f17be              # double 4.7146290000000004
	.quad	0x4021f1478c868ba0              # double 8.9712490000000003
	.quad	0x401643953dea465a              # double 5.5659989999999997
	.quad	0x40051f52fc2656ac              # double 2.6402950000000001
	.quad	0x40144e5bc87db2b3              # double 5.0765219999999998
	.quad	0x40054f95d4e8fb01              # double 2.6638600000000001
	.quad	0x4020e5d3bafd9770              # double 8.4488810000000001
	.quad	0x4022f5b8348f53c5              # double 9.4799209999999991
	.quad	0x4023d470eb24a6a8              # double 9.9149239999999991
	.quad	0x4013f21144cbe1eb              # double 4.9863939999999998
	.quad	0x401a5234eb9a176e              # double 6.5802800000000001
	.quad	0x401a91b2e59af9ec              # double 6.6422840000000001
	.quad	0x40140b3e1437c569              # double 5.0109789999999998
	.quad	0x401de447c30d306a              # double 7.4729299999999999
	.quad	0x400265492ff4ba52              # double 2.2994560000000002
	.quad	0x40008acd9e83e426              # double 2.0677750000000001
	.quad	0x401a222749f0e4da              # double 6.533353
	.quad	0x4020bc8f75536934              # double 8.3682820000000006
	.quad	0x4001185f06f69446              # double 2.1368999999999998
	.quad	0x401f2c5b078d92fb              # double 7.7933159999999999
	.quad	0x401fb0be0ded288d              # double 7.9226
	.quad	0x401574901d19157b              # double 5.3638310000000002
	.quad	0x40170f398e970718              # double 5.7648679999999999
	.quad	0x401235742dcf4624              # double 4.5522010000000002
	.quad	0x3fd3fbb0e5e67946              # double 0.31223699999999999
	.quad	0x401bfe757928e0ca              # double 6.9984950000000001
	.quad	0x401c739da16616b5              # double 7.1129059999999997
	.quad	0x401809c0ebedfa44              # double 6.009525
	.quad	0x3fd1b5e0f7fcfc40              # double 0.27672600000000003
	.quad	0x4017b72b020c49ba              # double 5.9288749999999997
	.quad	0x4011c0917d6b65aa              # double 4.4380550000000003
	.quad	0x402145e3b8a19c9d              # double 8.6365029999999994
	.quad	0x4004164b662fdfc2              # double 2.5108860000000002
	.quad	0x4019016b54e2b064              # double 6.2513860000000001
	.quad	0x3fef747d805e5f31              # double 0.98297000000000001
	.quad	0x402048dda48b6523              # double 8.1423159999999992
	.quad	0x3fea96f0068db8bb              # double 0.83092500000000002
	.quad	0x400bc34a01abd1ab              # double 3.4703560000000002
	.quad	0x401e3974a3400b89              # double 7.5561090000000001
	.quad	0x4016db4c3c18b503              # double 5.7141580000000003
	.quad	0x3ff138f68be2f7b1              # double 1.0764069999999999
	.quad	0x4022b3317efe0ce1              # double 9.3499870000000005
	.quad	0x400fc2b94d940789              # double 3.9700799999999998
	.quad	0x401dacd5f99c38b0              # double 7.4187849999999997
	.quad	0x401f0b6fe2e6ea85              # double 7.7611689999999997
	.quad	0x40164d3aa369fcf4              # double 5.5754190000000001
	.quad	0x3fd706748e475600              # double 0.35976900000000001
	.quad	0x401ce7625204af92              # double 7.2259609999999999
	.quad	0x40146f8f041461b7              # double 5.1089440000000002
	.quad	0x400dbb82c2bd7f52              # double 3.716558
	.quad	0x401d7ff4ba51a006              # double 7.3749570000000002
	.quad	0x3ff50e9813879c41              # double 1.316063
	.quad	0x4023e6683c297bfa              # double 9.9500139999999995
	.quad	0x400dc04534bd76ee              # double 3.7188819999999998
	.quad	0x401e6f0f16f4384c              # double 7.6084560000000003
	.quad	0x40134c200c0f01fc              # double 4.8243410000000004
	.quad	0x4021cb4acaff6d33              # double 8.8970549999999999
	.quad	0x3fde7d77fae3608d              # double 0.476408
	.quad	0x402034fe9b7bf1e9              # double 8.1035050000000002
	.quad	0x40115216c61522a7              # double 4.330165
	.quad	0x40087606317268d3              # double 3.0576289999999999
	.quad	0x4021404ff43419e3              # double 8.62561
	.quad	0x4020f96db0dd82fd              # double 8.4871649999999992
	.quad	0x401e946bf01322f2              # double 7.6449429999999996
	.quad	0x40130687f455a7d2              # double 4.7563779999999998
	.quad	0x4020eeb7ed41b75a              # double 8.4662469999999992
	.quad	0x4013cf56eac86057              # double 4.9524800000000004
	.quad	0x40146e8c8abd5dc4              # double 5.107958
	.quad	0x40162c3c9eecbfb1              # double 5.5431999999999997
	.quad	0x4011b77079e59f2c              # double 4.4291400000000003
	.quad	0x401ab3358f2e05cd              # double 6.6750090000000002
	.quad	0x40102dba908a265f              # double 4.0446569999999999
	.quad	0x400027381d7dbf48              # double 2.0191499999999998
	.quad	0x401aed0aaa7ded6c              # double 6.7314860000000003
	.quad	0x4003ff6124074645              # double 2.4996969999999998
	.quad	0x3fff21650a45d420              # double 1.9456530000000001
	.quad	0x40210f0fe047d3d4              # double 8.5294179999999997
	.quad	0x3ffedb8dc55000c9              # double 1.9286019999999999
	.quad	0x400e0fd5cb790fb6              # double 3.7577319999999999
	.quad	0x402112c322291fb4              # double 8.536645
	.quad	0x401ac969e3c96894              # double 6.6966929999999998
	.quad	0x40218e3a19008206              # double 8.777787
	.quad	0x3fa9fa97e132b55f              # double 0.05074
	.quad	0x40107e529bae46d0              # double 4.1233620000000002
	.quad	0x401f77967caea748              # double 7.8667850000000001
	.quad	0x40135a858793dd98              # double 4.8384
	.quad	0x40061676640a6b94              # double 2.7609680000000001
	.quad	0x400118f57f737da6              # double 2.1371869999999999
	.quad	0x3fff7f151e75360d              # double 1.968526
	.quad	0x3fed2f901083dbc2              # double 0.91205599999999998
	.quad	0x4011bfadf2ecf206              # double 4.4371869999999998
	.quad	0x3fe6c0b34e768598              # double 0.71102299999999996
	.quad	0x3fe4678c0053e2d6              # double 0.63763999999999998
	.quad	0x4021d285a921ccd9              # double 8.9111759999999993
	.quad	0x4011941e14bdfd26              # double 4.3946459999999998
	.quad	0x4009614488c60cbf              # double 3.1724939999999999
	.quad	0x4004b3fa6defc7a4              # double 2.5878800000000002
	.quad	0x401708dac258d584              # double 5.7586469999999998
	.quad	0x400717e02645e4e7              # double 2.8866580000000002
	.quad	0x3fd7cfe154434e33              # double 0.37206299999999998
	.quad	0x40034a2b1704ff43              # double 2.4112149999999999
	.quad	0x4016224bba12b5e5              # double 5.5334919999999999
	.quad	0x40224196fa82e87d              # double 9.1281049999999997
	.quad	0x401427268d32830a              # double 5.038233
	.quad	0x402016e0f3cb3e57              # double 8.0446849999999994
	.quad	0x3fea27aa68f4b620              # double 0.81734200000000001
	.quad	0x3fc5044f1a1986ba              # double 0.16419400000000001
	.quad	0x4021f8bcdfefbf40              # double 8.9858159999999998
	.quad	0x4020cbe100607810              # double 8.3982010000000002
	.quad	0x3fdaa03c4b09e98e              # double 0.41603000000000001
	.quad	0x3ff01ca4b124d09a              # double 1.006993
	.quad	0x3fd3d413122b7baf              # double 0.30981900000000001
	.quad	0x4019f223e1869835              # double 6.4864649999999999
	.quad	0x3fe677d955714b9d              # double 0.70213000000000003
	.quad	0x4019e8c3b0c4588a              # double 6.477309
	.quad	0x40112235b4edb2f6              # double 4.2834079999999997
	.quad	0x401f0af3a14cec42              # double 7.7606950000000001
	.quad	0x3ff8fcb4f1e4b44a              # double 1.561696
	.quad	0x3ff21983947496ab              # double 1.131229
	.quad	0x4015a8066c2acb86              # double 5.4140870000000003
	.quad	0x401b4eb9e492bc30              # double 6.8268810000000002
	.quad	0x4012566be7afa722              # double 4.5843959999999999
	.quad	0x401b58c47a17f413              # double 6.8366870000000004
	.quad	0x4020baa3ad18d25f              # double 8.3645300000000002
	.quad	0x400afcfede97d06c              # double 3.3735330000000001
	.quad	0x3faa452c59fb1e19              # double 0.051309
	.quad	0x401f56c58eeae9ee              # double 7.8347379999999998
	.quad	0x3fd1affb04ee7c4a              # double 0.276366
	.quad	0x400c42c55c96030c              # double 3.5326029999999999
	.quad	0x402129ed17c5ef63              # double 8.581887
	.quad	0x400d1bf61aa3f035              # double 3.6386530000000001
	.quad	0x4005234f3fd933e3              # double 2.6422409999999998
	.quad	0x40152416bdb1a6d7              # double 5.2852430000000004
	.quad	0x4021789f1f14983d              # double 8.7355889999999992
	.quad	0x40081738e6d15ad1              # double 3.011339
	.quad	0x402201b43526527a              # double 9.0033279999999998
	.quad	0x401790614163779f              # double 5.8909960000000003
	.quad	0x4020dc1cc532a498              # double 8.429907
	.quad	0x4012173eab367a10              # double 4.5227000000000004
	.quad	0x4000606748e47560              # double 2.047072
	.quad	0x3fcedeca25529fe0              # double 0.241174
	.quad	0x400499357603925c              # double 2.5748090000000001
	.quad	0x4008dae2541d8e86              # double 3.1068769999999999
	.quad	0x401dd1d4738a3b58              # double 7.4549120000000002
	.quad	0x40130aa7ded6ba8c              # double 4.7604059999999997
	.quad	0x4010020d130df9be              # double 4.0020030000000002
	.quad	0x4022d45069a4df48              # double 9.414676
	.quad	0x4021b9791819d239              # double 8.8622519999999998
	.quad	0x4023085db76b3bb8              # double 9.5163399999999995
	.quad	0x400d4fda836eb4ea              # double 3.6639910000000002
	.quad	0x3ff6542917507e9e              # double 1.3955470000000001
	.quad	0x4015c097c80841ee              # double 5.4380790000000001
	.quad	0x400cff340d4dc65c              # double 3.6246109999999998
	.quad	0x401ed55193708aad              # double 7.7083190000000003
	.quad	0x3ff4323ee1bd1eda              # double 1.262267
	.quad	0x3fc6840e1719f7f9              # double 0.17590500000000001
	.quad	0x401bbbe6601bc98a              # double 6.9334959999999999
	.quad	0x4012d4f765fd8adb              # double 4.7079750000000002
	.quad	0x3fea278290689870              # double 0.81732300000000002
	.quad	0x402034e89656eefa              # double 8.1033369999999998
	.quad	0x40199b86b15f88fd              # double 6.4018810000000004
	.quad	0x401e89a2834d26fa              # double 7.6344089999999998
	.quad	0x4002f27dcbddb984              # double 2.368404
	.quad	0x40021e29b6b2af14              # double 2.2647279999999999
	.quad	0x4022bc7c73eee526              # double 9.3681370000000008
	.quad	0x4017a90470a808c8              # double 5.9150559999999999
	.quad	0x401e49f94855da27              # double 7.5722399999999998
	.quad	0x3ff70a5accd53049              # double 1.4400280000000001
	.quad	0x40019fa97e132b56              # double 2.20296
	.quad	0x401179003eea209b              # double 4.3681650000000003
	.quad	0x3ffc152c16df3f96              # double 1.755169
	.quad	0x40110440af1cb89d              # double 4.2541529999999996
	.quad	0x4018fb851eb851ec              # double 6.2456250000000004
	.quad	0x4011881cb46bacf7              # double 4.3829219999999998
	.quad	0x400fd9620685553f              # double 3.981144
	.quad	0x40011ae1cde5d181              # double 2.1381260000000002
	.quad	0x3fff55e9e1b089a0              # double 1.958475
	.quad	0x40163fce3150dae4              # double 5.5623100000000001
	.quad	0x3ff0ea369fcf3dc0              # double 1.0571809999999999
	.quad	0x40204e9813879c41              # double 8.1535039999999999
	.quad	0x40170c8cd63cb817              # double 5.7622559999999998
	.quad	0x3fe54868b9fdbd30              # double 0.66508900000000004
	.quad	0x400775fd47bedb73              # double 2.9326120000000002
	.quad	0x3ff7eababead4f59              # double 1.494807
	.quad	0x400207ef177a7009              # double 2.2538740000000002
	.quad	0x401c69949e8815e4              # double 7.1031060000000004
	.quad	0x3ff1656abde3fbbd              # double 1.0872599999999999
	.quad	0x40039d7d3910c2c6              # double 2.4518990000000001
	.quad	0x4023f0d9b5e95b79              # double 9.9704110000000003
	.quad	0x401fe314ca925fe9              # double 7.9717589999999995
	.quad	0x4011a322f2734f83              # double 4.409313
	.quad	0x40029b5286b59147              # double 2.325841
	.quad	0x4022e0902de00d1b              # double 9.4385999999999992
	.quad	0x40108298cc144029              # double 4.1275360000000001
	.quad	0x402128fcf80dc337              # double 8.5800549999999998
	.quad	0x400aa0dbad3a604e              # double 3.3285439999999999
	.quad	0x40188e7ab7564303              # double 6.1391400000000003
	.quad	0x40225a9e2bcf91a3              # double 9.1769879999999997
	.quad	0x3fe83a9d1f601798              # double 0.75715500000000002
	.quad	0x401f9ccf6be37de9              # double 7.9031349999999997
	.quad	0x3ff85f36262cba73              # double 1.523245
	.quad	0x400a4759ab6d00b4              # double 3.2848389999999998
	.quad	0x4013fa3bddfc9ff9              # double 4.9943689999999998
	.quad	0x4023d4105186db51              # double 9.914187
	.quad	0x4016ef47304039ac              # double 5.73367
	.quad	0x3ffb9b9841aac53b              # double 1.725487
	.quad	0x401ece69f05ea24d              # double 7.7015760000000001
	.quad	0x401216612839042e              # double 4.5218550000000004
	.quad	0x40068d01c0ca600b              # double 2.818851
	.quad	0x400c6f4f93bc0a07              # double 3.554351
	.quad	0x3fdcba51a005c465              # double 0.44887199999999999
	.quad	0x40223a656abde3fc              # double 9.1140550000000004
	.quad	0x401632ec28b2a6b1              # double 5.5497290000000001
	.quad	0x400af5a294141e9b              # double 3.369939
	.quad	0x4007758ea7ce0fc3              # double 2.932401
	.quad	0x401a79656eefa1e4              # double 6.6185510000000001
	.quad	0x4018f6f049a9973e              # double 6.2411510000000003
	.quad	0x401432a2c2374795              # double 5.0494490000000001
	.quad	0x401dca1ec4e7253e              # double 7.4473830000000003
	.quad	0x4012e771c970f7ba              # double 4.7260200000000001
	.quad	0x401e6a9003eea20a              # double 7.6040650000000003
	.quad	0x4005096f6512a950              # double 2.629607
	.quad	0x401c41cffeb074a7              # double 7.0642699999999996
	.quad	0x40176ce5710880d8              # double 5.856344
	.quad	0x40102452c59fb1e2              # double 4.0354720000000004
	.quad	0x4021048d5c74751d              # double 8.5088910000000002
	.quad	0x401369a2c669057d              # double 4.8531599999999999
	.quad	0x4009e43fe5c91d15              # double 3.23645
	.quad	0x400cda71151611ba              # double 3.6066609999999999
	.quad	0x400975935fc3b4f6              # double 3.18241
	.quad	0x4017d3b9f127f5e8              # double 5.9567639999999997
	.quad	0x400076262cba732e              # double 2.05769
	.quad	0x40123eb9a176ddad              # double 4.5612550000000001
	.quad	0x4023db499d0203e6              # double 9.9282959999999996
	.quad	0x4003d712a0ec7432              # double 2.480016
	.quad	0x4020cf77079e59f3              # double 8.4052050000000005
	.quad	0x402144330d73860a              # double 8.6332020000000007
	.quad	0x4003ee7ee9142b30              # double 2.4914529999999999
	.quad	0x40137e525892684d              # double 4.8733610000000001
	.quad	0x3fe86d3d859c8c93              # double 0.76333499999999999
	.quad	0x401d6bb9cf9a06a7              # double 7.3552010000000001
	.quad	0x400431f46ed245b3              # double 2.5243920000000002
	.quad	0x4010c5fb71fbc5df              # double 4.1933420000000003
	.quad	0x3fe0f6555c52e72e              # double 0.53007000000000004
	.quad	0x3fd4a18bd66277c4              # double 0.32235999999999998
	.quad	0x400307a8d64d7f0f              # double 2.3787400000000001
	.quad	0x4022d1a49c2c1b11              # double 9.409459
	.quad	0x3ffa2e6b8305d95e              # double 1.636333
	.quad	0x40000efdc9c4da90              # double 2.00732
	.quad	0x4023a601ffb480a6              # double 9.8242340000000006
	.quad	0x40215c4567125dd1              # double 8.6802170000000007
	.quad	0x400895454152b0a7              # double 3.072886
	.quad	0x4019c6202539756d              # double 6.4434820000000004
	.quad	0x3fd85b5b70691ea8              # double 0.38057600000000003
	.quad	0x3fdf938583621fb0              # double 0.49337900000000001
	.quad	0x4016003f2d3c792d              # double 5.5002409999999999
	.quad	0x4018dd36f7e3d1cc              # double 6.2160299999999999
	.quad	0x400005abc0e38a7e              # double 2.0027689999999998
	.quad	0x40186de82d7b634e              # double 6.1073310000000003
	.quad	0x4011e29802c0a4a0              # double 4.4712829999999997
	.quad	0x4020e5f45e0b4e12              # double 8.4491300000000003
	.quad	0x3ff7da1db877ab32              # double 1.4907509999999999
	.quad	0x40219efcbd556085              # double 8.8105220000000006
	.quad	0x401279a2c669057d              # double 4.6187849999999999
	.quad	0x401bf8548a9bcfd5              # double 6.9925100000000002
	.quad	0x400a24bd33d29564              # double 3.2679390000000001
	.quad	0x401a45929670196e              # double 6.5679420000000004
	.quad	0x401b8897204295a7              # double 6.8833890000000002
	.quad	0x3fcf384fd2a62aa2              # double 0.24390600000000001
	.quad	0x401c4725c3dee782              # double 7.0694800000000004
	.quad	0x401609e7fb267c6c              # double 5.5096740000000004
	.quad	0x4018e2b990afe60c              # double 6.2214109999999998
	.quad	0x40047495182a9931              # double 2.5569250000000001
	.quad	0x400e116ebd4cfd09              # double 3.7585120000000001
	.quad	0x3ff5213d31b9b670              # double 1.3206150000000001
	.quad	0x40081a91105e1c15              # double 3.012972
	.quad	0x3fd7958d9b5e95b8              # double 0.36850300000000002
	.quad	0x401a04f54d1e96c4              # double 6.504842
	.quad	0x3ff24bc382a12f90              # double 1.143497
	.quad	0x3fe041c3efae7925              # double 0.50802800000000004
	.quad	0x4005446b69db65ed              # double 2.6584080000000001
	.quad	0x3ff3de3864cb5bb4              # double 1.2417530000000001
	.quad	0x40024eafab53d641              # double 2.288421
	.quad	0x4005daf533f42353              # double 2.731913
	.quad	0x3ff6371b8aa00193              # double 1.3884540000000001
	.quad	0x401e0d8f92af9a8d              # double 7.5132430000000001
	.quad	0x401f574d1633482c              # double 7.8352550000000001
	.quad	0x40234710880d801b              # double 9.6387979999999995
	.quad	0x3fbc8e4755ffe6d6              # double 0.11154600000000001
	.quad	0x4014874afd545415              # double 5.1321219999999999
	.quad	0x40183342aa9f7b5b              # double 6.0500590000000001
	.quad	0x3fc86ca89fc6da45              # double 0.19081600000000001
	.quad	0x4001636c15d2d01c              # double 2.173546
	.quad	0x3fd7a8155d5f56a8              # double 0.36963400000000002
	.quad	0x4010e9ccb7d41744              # double 4.2283200000000001
	.quad	0x3fff0dd3fe1975f3              # double 1.940876
	.quad	0x3ffd04102ff8ec10              # double 1.8134920000000001
	.quad	0x4011f4a98aa8650e              # double 4.4889279999999996
	.quad	0x40003fb506dd69d3              # double 2.031107
	.quad	0x4004098fe69270b0              # double 2.5046689999999998
	.quad	0x400a54c2b51bd61f              # double 3.2913869999999998
	.quad	0x4002cf416bdb1a6d              # double 2.3511989999999998
	.quad	0x401c5be9424e5929              # double 7.0897569999999996
	.quad	0x3ff2802afdda8bd2              # double 1.156291
	.quad	0x40217693e1c9b414              # double 8.7315970000000007
	.quad	0x401f37c3504c48ae              # double 7.8044560000000001
	.quad	0x40179d6fda836eb5              # double 5.9037470000000001
	.quad	0x3ffcccf8d716d2aa              # double 1.8000419999999999
	.quad	0x4022096659d12cae              # double 9.0183590000000002
	.quad	0x3ff5c80e8c8abd5e              # double 1.3613420000000001
	.quad	0x402189001d5c3159              # double 8.7675789999999996
	.quad	0x4022da77c45cbbc3              # double 9.4266950000000004
	.quad	0x401a4dc981beb181              # double 6.5759639999999999
	.quad	0x3fffebce8533b107              # double 1.9950699999999999
	.quad	0x4002c7839cd8127b              # double 2.3474189999999999
	.quad	0x4021e2b25b317efe              # double 8.9427669999999999
	.quad	0x4012646801711948              # double 4.5980530000000002
	.quad	0x3ffabc829cfdd228              # double 1.6710229999999999
	.quad	0x400c76bb98c7e282              # double 3.5579749999999999
	.quad	0x40149a36199780bb              # double 5.1505970000000003
	.quad	0x40106fbd6a593a2e              # double 4.109121
	.quad	0x402189f2778140dd              # double 8.7694279999999996
	.quad	0x3f902795703f2d3c              # double 0.015775999999999998
	.quad	0x402354b1465e8922              # double 9.6654149999999994
	.quad	0x40050af1455219a8              # double 2.6303429999999999
	.quad	0x4008ead3e920c06a              # double 3.114662
	.quad	0x400fd8b47c73eee5              # double 3.9808129999999999
	.quad	0x402036a78af3e469              # double 8.1067470000000004
	.quad	0x3fe31acde19fc2a9              # double 0.59702200000000005
	.quad	0x3ff00dbf0563ed0f              # double 1.0033559999999999
	.quad	0x402333994e1a3f46              # double 9.6007789999999993
	.quad	0x4022e7062d40aaeb              # double 9.451219
	.quad	0x4008bf972474538f              # double 3.09355
	.quad	0x4022e8b029281776              # double 9.4544689999999996
	.quad	0x40222ab3cc4ac6ce              # double 9.0834030000000006
	.quad	0x401f109aed56b010              # double 7.766216
	.quad	0x400dc5accd53048a              # double 3.7215210000000001
	.quad	0x4019ce9dd7ecbb80              # double 6.4517740000000003
	.quad	0x40130be9c886162f              # double 4.7616339999999999
	.quad	0x400b342bb6672fba              # double 3.400474
	.quad	0x3ff9e16f86a09891              # double 1.6175379999999999
	.quad	0x3ff8b23dd54da4cf              # double 1.5435160000000001
	.quad	0x3feba7d88c1db014              # double 0.86423899999999997
	.quad	0x401df29dc725c3df              # double 7.48693
	.quad	0x401d920e6299524c              # double 7.392633
	.quad	0x400f490f733a8a40              # double 3.9106740000000002
	.quad	0x4016bfd9fd36f7e4              # double 5.6873550000000002
	.quad	0x3fe016c1e364bec6              # double 0.50277799999999995
	.quad	0x4017aa2f48c2e771              # double 5.9161960000000002
	.quad	0x401ab1d4b6a619db              # double 6.6736630000000003
	.quad	0x401735d894812be5              # double 5.8025840000000004
	.quad	0x4021cab042528ae7              # double 8.8958759999999995
	.quad	0x401e054d1e96c3fc              # double 7.5051769999999998
	.quad	0x4014e7bedb7281fe              # double 5.2263140000000003
	.quad	0x401f7208e1501190              # double 7.8613619999999997
	.quad	0x402007a56de3326a              # double 8.0149340000000002
	.quad	0x3fffa830a0b1bbcf              # double 1.9785619999999999
	.quad	0x402370e0a84be404              # double 9.7204639999999997
	.quad	0x40194f36262cba73              # double 6.3273549999999998
	.quad	0x401ebcd9a52263d8              # double 7.6844239999999999
	.quad	0x3ff1dddd2ae8e1d6              # double 1.1166659999999999
	.quad	0x400fe6088d6d3b6d              # double 3.9873210000000001
	.quad	0x401358e29f9ce8d9              # double 4.8368019999999996
	.quad	0x3fb3b7d84901d191              # double 0.077023999999999995
	.quad	0x402311b1d92b7fe1              # double 9.5345600000000008
	.quad	0x401dd26138fffbce              # double 7.4554489999999998
	.quad	0x401cc144cbe1eb42              # double 7.188739
	.quad	0x400a89bb6aa4b988              # double 3.3172519999999999
	.quad	0x3fff269be09bb6aa              # double 1.9469259999999999
	.quad	0x40237fc45cbbc2b9              # double 9.7495449999999994
	.quad	0x40230b929ed3953e              # double 9.5226030000000002
	.quad	0x400b31f1cfbb9496              # double 3.3993869999999999
	.quad	0x3ff77020c49ba5e3              # double 1.4648749999999999
	.quad	0x4017a9057d1782d4              # double 5.9150600000000004
	.quad	0x3ff434f50a02b841              # double 1.262929
	.quad	0x401034b018611fd6              # double 4.0514530000000004
	.quad	0x4003437824d4cb9f              # double 2.4079440000000001
	.quad	0x4006f84a9478c869              # double 2.8712360000000001
	.quad	0x400cb96f21f6cacd              # double 3.590544
	.quad	0x4015dd03d9a95422              # double 5.4658350000000002
	.quad	0x3ff4e8ac5c13fd0d              # double 1.306805
	.quad	0x3fe90b49e01de269              # double 0.78262799999999999
	.quad	0x40116427418d690a              # double 4.3478060000000003
	.quad	0x3fb3a5093964a59c              # double 0.076737
	.quad	0x40128d14e3bcd35b              # double 4.6377750000000004
	.quad	0x40155e79aae6c8f7              # double 5.3422609999999997
	.quad	0x401637ded6ba8c58              # double 5.5545609999999996
	.quad	0x401e9c70c996b767              # double 7.6527739999999999
	.quad	0x401dc75536933a04              # double 7.444661
	.quad	0x3ff5e68a0d349be9              # double 1.368784
	.quad	0x401f7086bdf4c2b5              # double 7.8598889999999999
	.quad	0x401775b573eab368              # double 5.8649500000000003
	.quad	0x400fbd51b4fe79ee              # double 3.967441
	.quad	0x40232c20d5629d84              # double 9.5861879999999999
	.quad	0x4023c2eba27ae9ab              # double 9.8807039999999997
	.quad	0x40108380cb6c7a7d              # double 4.1284210000000003
	.quad	0x402084c964628028              # double 8.2593490000000003
	.quad	0x4023d313165d3997              # double 9.912255
	.quad	0x401cf34d26fa3fcd              # double 7.2375990000000003
	.quad	0x400e8c215b9a5a8a              # double 3.8184230000000001
	.quad	0x401165011904b3c4              # double 4.3486370000000001
	.quad	0x4002a85e3da2f8be              # double 2.332211
	.quad	0x3fe387cc7d1bb491              # double 0.61032699999999995
	.quad	0x401fd479d4d83409              # double 7.9574959999999999
	.quad	0x401d271b0468448d              # double 7.288189
	.quad	0x40235baafff36ac6              # double 9.6790389999999995
	.quad	0x4018feb78897e996              # double 6.2487469999999998
	.quad	0x4019cf926c7eae5c              # double 6.4527070000000002
	.quad	0x401772502eec7c95              # double 5.8616339999999996
	.quad	0x401590aed99cbee8              # double 5.391292
	.quad	0x3ff5c906034f3fd9              # double 1.361578
	.quad	0x401b563beec3979a              # double 6.8342130000000001
	.quad	0x40166c47a17f4129              # double 5.6057420000000002
	.quad	0x401cfcb966be7afa              # double 7.2468009999999996
	.quad	0x40105d8127b2cc71              # double 4.0913130000000004
	.quad	0x401295c0fcb4f1e5              # double 4.6462440000000003
	.quad	0x3fec70068db8bac7              # double 0.88867499999999999
	.quad	0x40230a6c7eae5bc8              # double 9.5203589999999991
	.quad	0x4002c66ec9e236c1              # double 2.3468909999999998
	.quad	0x40113b0f27bb2fec              # double 4.3076749999999997
	.quad	0x4011ac69f8c21e1d              # double 4.4183729999999999
	.quad	0x40178fa5093964a6              # double 5.8902780000000003
	.quad	0x40226a830a0b1bbd              # double 9.2080310000000001
	.quad	0x4021ea31a4bdba0a              # double 8.9574099999999994
	.quad	0x3fe820817fc7607c              # double 0.75396799999999997
	.quad	0x401076f71a7e3088              # double 4.1161770000000004
	.quad	0x400f07fc32ebe597              # double 3.8788990000000001
	.quad	0x4011012be48a58b4              # double 4.251144
	.quad	0x3ffc0e3ac0c62e4d              # double 1.753474
	.quad	0x3ff38b0af5fd47bf              # double 1.221446
	.quad	0x401aa9de481f5382              # double 6.6658869999999997
	.quad	0x40236cc8de2ac322              # double 9.7124699999999997
	.quad	0x40000941c8216c61              # double 2.0045199999999999
	.quad	0x3fe8ec0f88333fc8              # double 0.77881599999999995
	.quad	0x40059cb46bacf744              # double 2.7015159999999998
	.quad	0x4014e985271bcdbc              # double 5.2280470000000001
	.quad	0x401366a098915bdd              # double 4.8502219999999996
	.quad	0x3fdccd9e83e425af              # double 0.45005000000000001
	.quad	0x40193d4ae429e0a4              # double 6.3098559999999999
	.quad	0x401372c27a63736d              # double 4.8620700000000001
	.quad	0x4016b7c88e79aae7              # double 5.6794760000000002
	.quad	0x401195ad106ee30d              # double 4.3961680000000003
	.quad	0x3fd4ec3dab5c39bd              # double 0.32691900000000002
	.quad	0x402178dd1e53a81e              # double 8.7360620000000004
	.quad	0x4019efc71d606317              # double 6.4841579999999999
	.quad	0x3fd709e55c0fcb4f              # double 0.35997899999999999
	.quad	0x40190543f1c75819              # double 6.2551420000000002
	.quad	0x401c6c9107faa045              # double 7.1060220000000003
	.quad	0x3fffb51372a38b8b              # double 1.981708
	.quad	0x400cd80b242070b9              # double 3.6054900000000001
	.quad	0x40104314445aa2e4              # double 4.0655070000000002
	.quad	0x3ff0900713f077cd              # double 1.0351630000000001
	.quad	0x3ffc1a33bd9cae21              # double 1.756397
	.quad	0x400e25942917507f              # double 3.7683490000000002
	.quad	0x4014cb3a2595bbbf              # double 5.1984640000000004
	.quad	0x4013afb09203a323              # double 4.9215720000000003
	.quad	0x401d8d0edc3bd599              # double 7.3877519999999999
	.quad	0x4023becb966be7b0              # double 9.8726470000000006
	.quad	0x401dbea7ce0fc2ec              # double 7.4361870000000003
	.quad	0x4007c97fa5d28d00              # double 2.9733879999999999
	.quad	0x40214c1e9af5ba2c              # double 8.6486710000000002
	.quad	0x3fdfee2435696e59              # double 0.49891000000000002
	.quad	0x40222d7ba6698bb5              # double 9.0888340000000003
	.quad	0x3ff9b1c970f7b9e0              # double 1.6059049999999999
	.quad	0x4015d1958969a0ae              # double 5.4546720000000004
	.quad	0x4020dec5f394b7b3              # double 8.4351040000000008
	.quad	0x40226f446f9b994e              # double 9.2173189999999998
	.quad	0x4022ff8b3700474e              # double 9.4991090000000007
	.quad	0x40049271bcdbbe01              # double 2.5715059999999998
	.quad	0x3fda7221858bc59c              # double 0.41321600000000003
	.quad	0x401e9586ca89fc6e              # double 7.6460220000000003
	.quad	0x401240a2014727dd              # double 4.5631180000000002
	.quad	0x401cf3c9eecbfb16              # double 7.2380750000000003
	.quad	0x401bffe9b7bf1e8e              # double 6.9999149999999997
	.quad	0x401e3164840e171a              # double 7.548235
	.quad	0x40197410f94c8798              # double 6.3633459999999999
	.quad	0x3fe1ecebbba55d1c              # double 0.56017099999999997
	.quad	0x4010cf8ceb356da0              # double 4.2026859999999999
	.quad	0x4023a88c3f3e0371              # double 9.8291950000000003
	.quad	0x40147c792d1287c2              # double 5.121556
	.quad	0x4011743b2dd377e2              # double 4.3635070000000002
	.quad	0x401e494317acc4f0              # double 7.5715450000000004
	.quad	0x4016cb239a38fbca              # double 5.6983779999999999
	.quad	0x400a7dd334c5da6a              # double 3.3114379999999999
	.quad	0x40129534373f316e              # double 4.6457069999999998
	.quad	0x3fef0112ba16e7a3              # double 0.96888099999999999
	.quad	0x401e6d716d2aa5c6              # double 7.606878
	.quad	0x401a7811f4f50a03              # double 6.6172560000000002
	.quad	0x40204f77d0f1f57b              # double 8.1552109999999995
	.quad	0x40201261bf37b8d4              # double 8.0359020000000001
	.quad	0x401e1540895d0b74              # double 7.5207540000000002
	.quad	0x4022f93c68661ae7              # double 9.4867889999999999
	.quad	0x402100142f61ed5b              # double 8.5001540000000002
	.quad	0x40063b5e95b78cca              # double 2.7789890000000002
	.quad	0x401babc8c0ce91c9              # double 6.9177580000000001
	.quad	0x401e7f4a1272c94b              # double 7.6243059999999998
	.quad	0x401a483126e978d5              # double 6.5705
	.quad	0x40169897e996312f              # double 5.6490169999999997
	.quad	0x401a2111276fb092              # double 6.532292
	.quad	0x3fd1e9f6a93f290b              # double 0.27990500000000001
	.quad	0x40148c1acde19fc3              # double 5.1368210000000003
	.quad	0x4016ab83cf2cf95d              # double 5.6674949999999997
	.quad	0x3ffb2cc0bdcad14a              # double 1.698426
	.quad	0x40139e5fb71fbc5e              # double 4.9046620000000001
	.quad	0x400be95faa8a82a5              # double 3.4889519999999998
	.quad	0x40138ba3443d46b2              # double 4.8863649999999996
	.quad	0x400b2e19b90ea9e7              # double 3.39751
	.quad	0x4004292253111f0c              # double 2.5200849999999999
	.quad	0x3ff061b3aeee9574              # double 1.0238529999999999
	.quad	0x40210a962cfd8f0c              # double 8.5206769999999991
	.quad	0x401e5536933a0408              # double 7.5832160000000001
	.quad	0x40227a5aee631f8a              # double 9.2389749999999999
	.quad	0x3fa2ea3161a1db87              # double 0.036942999999999997
	.quad	0x4016b345cfede97d              # double 5.675071
	.quad	0x3fe4ed245b291b82              # double 0.65394799999999997
	.quad	0x400e3ce52deca255              # double 3.7797339999999999
	.quad	0x40201ddaceee0f3d              # double 8.0583100000000005
	.quad	0x401147f9d6f112fd              # double 4.3202889999999998
	.quad	0x4015f3f077ccc038              # double 5.4882220000000004
	.quad	0x400814cd31769a91              # double 3.010157
	.quad	0x40201606fac6045c              # double 8.0430220000000005
	.quad	0x402223996fa82e88              # double 9.0695300000000003
	.quad	0x400d45d41fa76534              # double 3.6590959999999999
	.quad	0x400f12606fac6046              # double 3.8839730000000001
	.quad	0x4012b83c297bfa4c              # double 4.6799169999999997
	.quad	0x4010b6a22b3892ef              # double 4.1783530000000004
	.quad	0x4019a42cc2d6a9c5              # double 6.4103269999999997
	.quad	0x3fef24acf312b1b3              # double 0.97322699999999995
	.quad	0x3f93dd54da4ce810              # double 0.019399
	.quad	0x4014fb9389b52008              # double 5.2456800000000001
	.quad	0x401458e0008637bd              # double 5.086792
	.quad	0x4019933333333333              # double 6.3937499999999998
	.quad	0x3ffd58a43bb40b35              # double 1.834141
	.quad	0x4020257e23f24d90              # double 8.0732280000000003
	.quad	0x3fb9bb4916ca46e1              # double 0.10051400000000001
	.quad	0x400e6f694467381d              # double 3.8043999999999998
	.quad	0x401fafb6dca07f67              # double 7.921596
	.quad	0x40198afe60c38f36              # double 6.3857359999999996
	.quad	0x3fa1c0ebedfa43fe              # double 0.034674999999999997
	.quad	0x3fd1f3d3a1d323ff              # double 0.28050700000000001
	.quad	0x4023225d8d79d0a6              # double 9.5671199999999992
	.quad	0x4015c48b65237048              # double 5.4419380000000004
	.quad	0x401603636f3b213e              # double 5.5033089999999998
	.quad	0x40003d41fa765343              # double 2.0299109999999998
	.quad	0x3ffa71e4b44a1f08              # double 1.652806
	.quad	0x40087891e215336e              # double 3.058872
	.quad	0x400d3f79c842fa51              # double 3.6559940000000002
	.quad	0x40161b9c7368ad69              # double 5.5269640000000004
	.quad	0x401e6b1dd5d3dc8c              # double 7.6046060000000004
	.quad	0x4002360e0eb67c28              # double 2.2763939999999998
	.quad	0x3ffd968512231833              # double 1.849248
	.quad	0x4023568837718655              # double 9.6690079999999998
	.quad	0x3fee4ab81f969e3d              # double 0.94662100000000005
	.quad	0x4022dd9b3d07c84b              # double 9.4328249999999993
	.quad	0x3fddd2dcb1465e89              # double 0.46599499999999999
	.quad	0x4017fd173fb7a5f4              # double 5.9971589999999999
	.quad	0x40191c093d966384              # double 6.2773789999999998
	.quad	0x3ff7e6dbd72bcb60              # double 1.493862
	.quad	0x3febb18dac258d58              # double 0.86542399999999997
	.quad	0x402023cd573647bb              # double 8.0699260000000006
	.quad	0x40117096787ce960              # double 4.3599490000000003
	.quad	0x401433369b9d7fd8              # double 5.0500129999999999
	.quad	0x3ff8770ac3a860dd              # double 1.5290630000000001
	.quad	0x4002e3608d08919f              # double 2.361024
	.quad	0x3ff8afa93af74cd3              # double 1.542886
	.quad	0x4012b7481b21c476              # double 4.6789860000000001
	.quad	0x401ef4845132f87b              # double 7.7387860000000001
	.quad	0x40199b31c219eb64              # double 6.4015570000000004
	.quad	0x4023da007dd44135              # double 9.9257849999999994
	.quad	0x40104ba7b9170d63              # double 4.0738820000000002
	.quad	0x3ff87b5e0f7fcfc4              # double 1.530119
	.quad	0x400e9dd7ecbb7f9d              # double 3.8270719999999998
	.quad	0x4023db52c9d16fca              # double 9.9283660000000005
	.quad	0x3fef98eb8950763a              # double 0.98741699999999999
	.quad	0x4011e114d2f5dbba              # double 4.4698060000000002
	.quad	0x40012c9107faa045              # double 2.1467610000000001
	.quad	0x40024c647778dd61              # double 2.2873009999999998
	.quad	0x40112355475a31a5              # double 4.2845050000000002
	.quad	0x40110fd2a62aa194              # double 4.2654519999999998
	.quad	0x400772ea52ef911d              # double 2.931111
	.quad	0x400f6cd31769a911              # double 3.928137
	.quad	0x4023f9cc74b838c1              # double 9.9878879999999998
	.quad	0x401a26ec17ebaf10              # double 6.5380099999999999
	.quad	0x4001496787ce95fb              # double 2.1608420000000002
	.quad	0x4019e0c521dda05a              # double 6.4695020000000003
	.quad	0x4008ddeacc92146a              # double 3.108358
	.quad	0x40143a56de33269e              # double 5.056972
	.quad	0x400698a19c9d5a18              # double 2.8245269999999998
	.quad	0x401b3a8b4bf8fcd6              # double 6.8071719999999996
	.quad	0x40187a172abef06b              # double 6.1192289999999998
	.quad	0x40194614df8b1572              # double 6.3184389999999997
	.quad	0x400a90468448cf7d              # double 3.3204470000000001
	.quad	0x400e273471f79421              # double 3.7691430000000001
	.quad	0x3fe1eab14ec204f3              # double 0.55989900000000004
	.quad	0x3ff180ad03d9a954              # double 1.093915
	.quad	0x3ff701d7dbf487fd              # double 1.4379500000000001
	.quad	0x3ffa383f0bae89ec              # double 1.6387320000000001
	.quad	0x401f62480e8c8abd              # double 7.8459779999999996
	.quad	0x40216e605ee568a5              # double 8.715579
	.quad	0x401c2575c0767d35              # double 7.0365820000000001
	.quad	0x4012b1e9af5ba2be              # double 4.673743
	.quad	0x4021ffb3743632c2              # double 8.9994160000000001
	.quad	0x401f4e392e1ef73c              # double 7.82639
	.quad	0x4021ca917507e9d9              # double 8.8956409999999995
	.quad	0x400e2c0485a0be51              # double 3.771493
	.quad	0x3fd2c4ac6cdaf4ae              # double 0.29325400000000001
	.quad	0x4016b8c5c9a34ca1              # double 5.6804420000000002
	.quad	0x400ac5af6c69b5a6              # double 3.3465259999999999
	.quad	0x4016a411c2a02321              # double 5.6602240000000004
	.quad	0x3ff6350a02b84125              # double 1.3879490000000001
	.quad	0x4021687d4e09784f              # double 8.7040810000000004
	.quad	0x4017b0a2ca9ac365              # double 5.9224959999999998
	.quad	0x400e3b6cbd987c63              # double 3.7790159999999999
	.quad	0x3fcfd68405b39e28              # double 0.24873400000000001
	.quad	0x4015869984a0e411              # double 5.3814450000000003
	.quad	0x400657646ae3a3a9              # double 2.792672
	.quad	0x3ffb1f548ecd8dbd              # double 1.695149
	.quad	0x3ffc63d2d87f8876              # double 1.7743709999999999
	.quad	0x40136113c68661ae              # double 4.8448019999999996
	.quad	0x400fec96cc5fbf83              # double 3.9905219999999999
	.quad	0x400a40e38a7e73a3              # double 3.2816839999999998
	.quad	0x400a1668c2613900              # double 3.260942
	.quad	0x400971c6d1e108c4              # double 3.180555
	.quad	0x40194d3c36113405              # double 6.3254250000000001
	.quad	0x3fe93e78e1932d6f              # double 0.78887600000000002
	.quad	0x4021b57e23f24d90              # double 8.8544780000000003
	.quad	0x401c7fb71fbc5dea              # double 7.1247220000000002
	.quad	0x4016f35935fc3b4f              # double 5.7376449999999997
	.quad	0x402093d3c3611340              # double 8.2887249999999995
	.quad	0x40107ff1950331e4              # double 4.1249450000000003
	.quad	0x401c8f85510d38ce              # double 7.1401570000000003
	.quad	0x402241b866e43aa8              # double 9.1283600000000007
	.quad	0x4022404ddb5525cc              # double 9.1255939999999995
	.quad	0x401b269c66d373b0              # double 6.787706
	.quad	0x3ff4cc319c5a3e3a              # double 1.299852
	.quad	0x4007f268d32830a1              # double 2.9933640000000001
	.quad	0x401602aae297396d              # double 5.502605
	.quad	0x40205709741d084f              # double 8.1699940000000009
	.quad	0x4006d695d91ab8e9              # double 2.854778
	.quad	0x4006387a4a48f96e              # double 2.777577
	.quad	0x401caa5093964a5a              # double 7.1663230000000002
	.quad	0x4011149dbec2480f              # double 4.2701330000000004
	.quad	0x3fe292817763e4ac              # double 0.58038400000000001
	.quad	0x3ff969a0ad8a1166              # double 1.5882879999999999
	.quad	0x40234ac5197a2489              # double 9.6460349999999994
	.quad	0x4019283f91e646f1              # double 6.2893049999999997
	.quad	0x4006e3369b9d7fd8              # double 2.8609439999999999
	.quad	0x40156cd63cb81733              # double 5.3562859999999999
	.quad	0x4019b0b4e11dbca9              # double 6.4225649999999996
	.quad	0x4021542f405f6ba0              # double 8.6644229999999993
	.quad	0x40199aaac1094a2c              # double 6.4010420000000003
	.quad	0x40022231832fcac9              # double 2.266696
	.quad	0x4022fc5fe1112770              # double 9.4929190000000006
	.quad	0x400c428bb0a2ca9b              # double 3.5324930000000001
	.quad	0x401edd423d9231c6              # double 7.7160729999999997
	.quad	0x4021afb9e060fe48              # double 8.8432150000000007
	.quad	0x4021c31a08bfc222              # double 8.8810579999999995
	.quad	0x4006b5c853c14834              # double 2.8387609999999999
	.quad	0x4020ce1049235f81              # double 8.4024680000000007
	.quad	0x4019896c82e019b1              # double 6.3842030000000003
	.quad	0x401bf0c176577532              # double 6.9851130000000001
	.quad	0x40109b90ea9e6eeb              # double 4.1519199999999996
	.quad	0x4023e93be22e5de1              # double 9.9555349999999993
	.quad	0x4011a861a60d4563              # double 4.4144350000000001
	.quad	0x3fff7b0d51f81a58              # double 1.9675419999999999
	.quad	0x4023fdb22d0e5604              # double 9.9954999999999998
	.quad	0x400b617d2849cb25              # double 3.4226019999999999
	.quad	0x400c1c297bfa4c62              # double 3.5137510000000001
	.quad	0x4013f301eabbcb1d              # double 4.9873120000000002
	.quad	0x40154d07c84b5dcc              # double 5.3252249999999997
	.quad	0x402149f94855da27              # double 8.6444799999999997
	.quad	0x401ff9a176ddacef              # double 7.9937800000000001
	.quad	0x4022ff4080f98fa3              # double 9.4985389999999991
	.quad	0x4020e11dde37585c              # double 8.4396810000000002
	.quad	0x40179f01754b05b8              # double 5.9052790000000002
	.quad	0x4012eeb5f5f0b285              # double 4.7331159999999999
	.quad	0x3fca6d9be4cd7492              # double 0.20646999999999999
	.quad	0x400c8e69f05ea24d              # double 3.5695380000000001
	.quad	0x40226be6c4c5974e              # double 9.2107449999999993
	.quad	0x3fec795703f2d3c8              # double 0.88981200000000005
	.quad	0x4021e9a719b4dcec              # double 8.956353
	.quad	0x3fd5218def416bdb              # double 0.33017299999999999
	.quad	0x4020e299d883ba34              # double 8.4425799999999995
	.quad	0x3fe83504c48adeec              # double 0.75647200000000003
	.quad	0x400acbbc2b94d940              # double 3.3494799999999998
	.quad	0x4007ec9107faa045              # double 2.9905110000000001
	.quad	0x401e42374794ea07              # double 7.5646639999999996
	.quad	0x3fa55821294573a8              # double 0.041688000000000003
	.quad	0x3ffd469d7342edbb              # double 1.8297399999999999
	.quad	0x4019b14ec204f2ae              # double 6.423152
	.quad	0x3faedca07f66e86c              # double 0.060276999999999997
	.quad	0x3ff7cc79f666234b              # double 1.4874210000000001
	.quad	0x401dfe6ddf00abf7              # double 7.4984659999999996
	.quad	0x3fe1237cdcca70d2              # double 0.535582
	.quad	0x3fc1f2990f301eac              # double 0.14021600000000001
	.quad	0x40204441fea8112c              # double 8.1333160000000006
	.quad	0x40083fb3fa6defc8              # double 3.0311050000000002
	.quad	0x40215ff822bbecab              # double 8.6874400000000005
	.quad	0x40121a415f45e0b5              # double 4.5256400000000001
	.quad	0x4023fc68cac4b4d0              # double 9.9929869999999994
	.quad	0x400a6044ae85b9e9              # double 3.2970060000000001
	.quad	0x4022f126634117f8              # double 9.4709959999999995
	.quad	0x3ff5e6698bb4d489              # double 1.3687530000000001
	.quad	0x402345549731098d              # double 9.6354109999999995
	.quad	0x4015356a37ac3eb8              # double 5.3021630000000002
	.quad	0x4013b40a6b93ccd1              # double 4.925821
	.quad	0x4015438c111ada77              # double 5.3159640000000001
	.quad	0x4019a9e59f2ba9d2              # double 6.415915
	.quad	0x40006df9378ee286              # double 2.0536979999999998
	.quad	0x40220480841ede12              # double 9.0087930000000007
	.quad	0x402239633482be8c              # double 9.1120850000000004
	.quad	0x4023013a4f8726d0              # double 9.5023979999999995
	.quad	0x400b266cb10342ab              # double 3.3937620000000002
	.quad	0x4013c3b9ae0c1765              # double 4.9411379999999996
	.quad	0x4022164c729f59cd              # double 9.043552
	.quad	0x4012d5f0f5a1016d              # double 4.7089270000000001
	.quad	0x40130c358afc47e5              # double 4.7619230000000003
	.quad	0x3ff6e53868fd199c              # double 1.4309620000000001
	.quad	0x400ad7878b7a1c26              # double 3.3552390000000001
	.quad	0x400b3f572de43ed9              # double 3.4059279999999998
	.quad	0x401b1aca79357604              # double 6.7761630000000004
	.quad	0x3feb572367e414e8              # double 0.85438700000000001
	.quad	0x40149c58255b035c              # double 5.1526800000000001
	.quad	0x40098292817763e5              # double 3.1887560000000001
	.quad	0x3ffd416ce789e775              # double 1.828473
	.quad	0x400a3769a91105e2              # double 3.2770570000000001
	.quad	0x3ffe6f2d7f950b95              # double 1.9021429999999999
	.quad	0x4015478bbd380453              # double 5.3198689999999997
	.quad	0x40217ea4ca4f440b              # double 8.7473510000000001
	.quad	0x402052737110e454              # double 8.1610370000000003
	.quad	0x40009fd04a2fcefb              # double 2.0780340000000002
	.quad	0x3fe11efd86a8fc0d              # double 0.53503299999999998
	.quad	0x4009cdc2b0ea1837              # double 3.2254689999999999
	.quad	0x402356d7e889c1b5              # double 9.6696159999999995
	.quad	0x4013a4d1633482bf              # double 4.9109550000000004
	.quad	0x400dacc9a77e5eab              # double 3.7093690000000001
	.quad	0x4020017353b4b2fb              # double 8.0028330000000008
	.quad	0x4010771e6cd29132              # double 4.1163270000000001
	.quad	0x401ec4a1f080303c              # double 7.692024
	.quad	0x3ff74cd855970b4a              # double 1.456261
	.quad	0x3ffe64d099e0e736              # double 1.899613
	.quad	0x40164d4bf0995aaf              # double 5.5754849999999996
	.quad	0x401af7625204af92              # double 6.7415859999999999
	.quad	0x4014922d948dc11e              # double 5.1427519999999998
	.quad	0x3ff48b2e9ccb7d41              # double 1.2839799999999999
	.quad	0x4020813e1c9b413a              # double 8.2524270000000008
	.quad	0x3fe83749adc8fb87              # double 0.756749
	.quad	0x3fff4815e39713ad              # double 1.9550989999999999
	.quad	0x400a7fbf83382e45              # double 3.3123770000000001
	.quad	0x400a40f776c4827b              # double 3.2817219999999998
	.quad	0x40061c69f8c21e1d              # double 2.7638739999999999
	.quad	0x40203e0b912dba4d              # double 8.1211819999999992
	.quad	0x40197b530ced4e4d              # double 6.3704340000000004
	.quad	0x401eef4906034f40              # double 7.7336770000000001
	.quad	0x40119fc19c17225b              # double 4.4060119999999996
	.quad	0x400acd82ba5a0382              # double 3.3503470000000002
	.quad	0x40187e10cf5b1c86              # double 6.1231109999999997
	.quad	0x40228e86c6583e85              # double 9.2783719999999992
	.quad	0x3fd4455219a847b2              # double 0.31673099999999998
	.quad	0x40205bdc69f8c21e              # double 8.1794159999999998
	.quad	0x3fe327b0b3919264              # double 0.59859499999999999
	.quad	0x40188acb4289118c              # double 6.1355409999999999
	.quad	0x3fe68155d5f56a7b              # double 0.70328800000000002
	.quad	0x4002b09fa54c5543              # double 2.3362419999999999
	.quad	0x401ebb4d056c508b              # double 7.6829109999999998
	.quad	0x4015e51a86940358              # double 5.4737340000000003
	.quad	0x3ff631843c3a42f2              # double 1.387089
	.quad	0x401ffd8d36b4c7f3              # double 7.9976089999999997
	.quad	0x4015e4ac6cdaf4ae              # double 5.4733140000000002
	.quad	0x4008f58e219652bd              # double 3.1198999999999999
	.quad	0x401062c83ec892ab              # double 4.0964669999999996
	.quad	0x401b093ee5eedcc2              # double 6.759029
	.quad	0x402053be22e5de16              # double 8.1635600000000004
	.quad	0x400534a5df2239e7              # double 2.6507070000000001
	.quad	0x400c9c8323358f2e              # double 3.576422
	.quad	0x401ede30caa326e1              # double 7.7169829999999999
	.quad	0x4020dbcc6c54bcf1              # double 8.4292940000000005
	.quad	0x4002cefdc9c4da90              # double 2.35107
	.quad	0x401cfb4916ca46e1              # double 7.2453960000000004
	.quad	0x4019c6145953586d              # double 6.4434370000000003
	.quad	0x4012cfcb923a29c7              # double 4.7029249999999996
	.quad	0x40060ce91c8eac00              # double 2.7563040000000001
	.quad	0x4002f6cd6c2efd44              # double 2.3705090000000002
	.quad	0x400cd8487b99d452              # double 3.605607
	.quad	0x401b5967caea747e              # double 6.8373100000000004
	.quad	0x4007aa93f290abb4              # double 2.9582899999999999
	.quad	0x4008ad9be4cd7492              # double 3.0847699999999998
	.quad	0x401fd29fe004b7f6              # double 7.9556880000000003
	.quad	0x401f85186db50f41              # double 7.879976
	.quad	0x3fe5d816aceaaf36              # double 0.68262800000000001
	.quad	0x401fcc98e53eb39a              # double 7.949802
	.quad	0x401a9311a543f1c7              # double 6.6436219999999997
	.quad	0x402102897635e743              # double 8.5049550000000007
	.quad	0x401db14a90470a81              # double 7.4231360000000004
	.quad	0x401df806f262888b              # double 7.4922139999999997
	.quad	0x4022fe275ab7dc7b              # double 9.4963940000000004
	.quad	0x400d6d938151a438              # double 3.6785040000000002
	.quad	0x3fed8e3cd9a52264              # double 0.92361300000000001
	.quad	0x400804a6223e186a              # double 3.0022700000000002
	.quad	0x3ff77ebd09e12a52              # double 1.468442
	.quad	0x3fc4a465a57646ae              # double 0.16126699999999999
	.quad	0x4018a791c4b90215              # double 6.1636420000000003
	.quad	0x400c80d5629d840a              # double 3.562907
	.quad	0x4019bfac6045baf5              # double 6.4371809999999998
	.quad	0x400b5851eb851eb8              # double 3.4181249999999999
	.quad	0x400cd27136a400fc              # double 3.6027550000000002
	.quad	0x3ff74a67620ee8d1              # double 1.455665
	.quad	0x400a185dfa871a3b              # double 3.261898
	.quad	0x3ff3427b6fe2e6eb              # double 1.2037310000000001
	.quad	0x4016f5b1c8648840              # double 5.7399360000000001
	.quad	0x3ff3f470eb24a6a8              # double 1.2471779999999999
	.quad	0x40057d24180d3cff              # double 2.6861039999999998
	.quad	0x3fe184a72ead9275              # double 0.54744300000000001
	.quad	0x4011511a975afaf8              # double 4.3292029999999997
	.quad	0x40028b80ecfa69be              # double 2.318117
	.quad	0x3fdffe43675ddd2b              # double 0.49989400000000001
	.quad	0x4012b6ab9b23dd55              # double 4.6783890000000001
	.quad	0x40199e55c0fcb4f2              # double 6.4046240000000001
	.quad	0x40214d4cfd08d4bb              # double 8.6509780000000003
	.quad	0x3fae6f9335d249e4              # double 0.059444999999999998
	.quad	0x401826c93a711516              # double 6.0378769999999999
	.quad	0x40059c126a65cf68              # double 2.7012070000000001
	.quad	0x401a67c5260f5e42              # double 6.6013380000000002
	.quad	0x4014863ae2541d8f              # double 5.1310840000000004
	.quad	0x40039b3d07c84b5e              # double 2.4508000000000001
	.quad	0x402318d73860999e              # double 9.5485170000000004
	.quad	0x4017348fd9fd36f8              # double 5.8013300000000001
	.quad	0x401fc0f7fcfc3f81              # double 7.9384459999999998
	.quad	0x4000b1e646f15619              # double 2.086865
	.quad	0x3ffb79c7368ad688              # double 1.717231
	.quad	0x4020e5e353f7ced9              # double 8.4489999999999998
	.quad	0x402229aa821f2991              # double 9.0813790000000001
	.quad	0x40121904b3c3e74b              # double 4.524432
	.quad	0x3ff7a2b1704ff434              # double 1.47722
	.quad	0x401e0b599aa60914              # double 7.5110840000000003
	.quad	0x4016d20c069e7fb2              # double 5.7051239999999996
	.quad	0x4022dcfede97d06c              # double 9.4316320000000004
	.quad	0x400a50acc0bdcad1              # double 3.2893919999999999
	.quad	0x40034a0902de00d2              # double 2.4111500000000001
	.quad	0x3ff871183b60285f              # double 1.5276110000000001
	.quad	0x40007789a459103d              # double 2.0583680000000002
	.quad	0x4021ea0cf1800a7c              # double 8.9571299999999993
	.quad	0x401e83e468cac4b5              # double 7.6288010000000001
	.quad	0x3fcde6a337a80cfa              # double 0.233601
	.quad	0x401b7fe542e557de              # double 6.874898
	.quad	0x401978800eae18ad              # double 6.3676760000000003
	.quad	0x4022778290689870              # double 9.2334180000000003
	.quad	0x40191e45c358afc4              # double 6.2795629999999996
	.quad	0x4021e6351deefe50              # double 8.949624
	.quad	0x401ad8dac258d584              # double 6.7117719999999998
	.quad	0x401cbc0a4a05dd90              # double 7.1836330000000004
	.quad	0x3ff9cc857f3061c8              # double 1.6124320000000001
	.quad	0x401f0b5fa22706d5              # double 7.7611069999999999
	.quad	0x4019a9e2bcf91a33              # double 6.4159040000000003
	.quad	0x401ad847f562174c              # double 6.7112119999999997
	.quad	0x3fd82deca25529fe              # double 0.377803
	.quad	0x4020aa834d26fa40              # double 8.3330330000000004
	.quad	0x40034c447c30d307              # double 2.4122400000000002
	.quad	0x40073af9ebe9c886              # double 2.903797
	.quad	0x4023d90752da9867              # double 9.9238839999999992
	.quad	0x4023e06530058149              # double 9.9382719999999995
	.quad	0x40222c24e5929670              # double 9.0862189999999998
	.quad	0x400a8947064ece9a              # double 3.3170299999999999
	.quad	0x401e0c74b838c112              # double 7.5121640000000003
	.quad	0x3fe5fdb6e503fb37              # double 0.68722099999999997
	.quad	0x4017a7d45a5fc7e7              # double 5.9138960000000003
	.quad	0x4006ee1693c03bc5              # double 2.8662540000000001
	.quad	0x3fe962dc6e2a8006              # double 0.79331799999999997
	.quad	0x401d85b573eab368              # double 7.3805750000000003
	.quad	0x4004e63736cdf267              # double 2.6124100000000001
	.quad	0x3ffcd15379fa97e1              # double 1.801105
	.quad	0x3ffef720c8cd63cc              # double 1.9353340000000001
	.quad	0x401b8a072d1aeb3e              # double 6.8847930000000002
	.quad	0x402224cdfaca361a              # double 9.0718840000000007
	.quad	0x400e2c0f01fb82c3              # double 3.7715130000000001
	.quad	0x400b0efbb0e5e679              # double 3.3823159999999999
	.quad	0x4019fa31e7d9988d              # double 6.4943309999999999
	.quad	0x401ca62b27cbf6e4              # double 7.162274
	.quad	0x3ffc97eed45e9186              # double 1.787093
	.quad	0x401aa4b662fdfc1a              # double 6.6608520000000002
	.quad	0x401b7d3f5b5fa227              # double 6.872312
	.quad	0x3ffafe78e1932d6f              # double 1.687127
	.quad	0x400e86e115592d99              # double 3.8158590000000001
	.quad	0x401bb01d19157abc              # double 6.9219860000000004
	.quad	0x4023bc7192ea52f0              # double 9.8680540000000008
	.quad	0x40046b042528ae75              # double 2.552254
	.quad	0x3ff960a41a261bf3              # double 1.5860939999999999
	.quad	0x401065bee3d5fdce              # double 4.099361
	.quad	0x3fdc2a1f8e3ac0c6              # double 0.44007099999999999
	.quad	0x402272231832fcad              # double 9.2229240000000008
	.quad	0x4020529b499d0204              # double 8.1613410000000001
	.quad	0x401e2c4a83b1d0c8              # double 7.5432529999999999
	.quad	0x400c370c564f97ee              # double 3.5268790000000001
	.quad	0x40171809d495182b              # double 5.7734750000000004
	.quad	0x4003dbff04577d95              # double 2.4824199999999998
	.quad	0x40150d17c5ef62fa              # double 5.2627860000000002
	.quad	0x401273affb04ee7c              # double 4.6129759999999997
	.quad	0x40013524399b2c41              # double 2.1509480000000001
	.quad	0x40154f0520d130e0              # double 5.3271680000000003
	.quad	0x40237cc144028e50              # double 9.7436620000000005
	.quad	0x400550eed02cd39e              # double 2.6645180000000002
	.quad	0x400bf37f38c5436c              # double 3.4938950000000002
	.quad	0x4023785a2d72ffd2              # double 9.7350630000000002
	.quad	0x400c8b0856e696a2              # double 3.5678869999999998
	.quad	0x401441769a91105e              # double 5.0639289999999999
	.quad	0x3fda88a04d12018a              # double 0.41458899999999999
	.size	.L__constant_4000xf64, 32000

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
