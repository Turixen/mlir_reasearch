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
	.quad	0x4140340279e681aa              # double 2123780.9523470001
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
	.quad	54                              # 0x36
	.quad	87                              # 0x57
	.quad	118                             # 0x76
	.quad	171                             # 0xab
	.quad	202                             # 0xca
	.quad	231                             # 0xe7
	.quad	283                             # 0x11b
	.quad	313                             # 0x139
	.quad	341                             # 0x155
	.quad	404                             # 0x194
	.quad	438                             # 0x1b6
	.quad	475                             # 0x1db
	.quad	528                             # 0x210
	.quad	554                             # 0x22a
	.quad	580                             # 0x244
	.quad	635                             # 0x27b
	.quad	666                             # 0x29a
	.quad	702                             # 0x2be
	.quad	751                             # 0x2ef
	.quad	782                             # 0x30e
	.quad	814                             # 0x32e
	.quad	864                             # 0x360
	.quad	898                             # 0x382
	.quad	922                             # 0x39a
	.quad	982                             # 0x3d6
	.quad	1012                            # 0x3f4
	.quad	1047                            # 0x417
	.quad	1099                            # 0x44b
	.quad	1133                            # 0x46d
	.quad	1164                            # 0x48c
	.quad	1218                            # 0x4c2
	.quad	1250                            # 0x4e2
	.quad	1291                            # 0x50b
	.quad	1340                            # 0x53c
	.quad	1368                            # 0x558
	.quad	1394                            # 0x572
	.quad	1456                            # 0x5b0
	.quad	1489                            # 0x5d1
	.quad	1526                            # 0x5f6
	.quad	1583                            # 0x62f
	.quad	1619                            # 0x653
	.quad	1645                            # 0x66d
	.quad	1703                            # 0x6a7
	.quad	1748                            # 0x6d4
	.quad	1782                            # 0x6f6
	.quad	1842                            # 0x732
	.quad	1876                            # 0x754
	.quad	1916                            # 0x77c
	.quad	1968                            # 0x7b0
	.quad	2009                            # 0x7d9
	.quad	2044                            # 0x7fc
	.quad	2098                            # 0x832
	.quad	2125                            # 0x84d
	.quad	2160                            # 0x870
	.quad	2209                            # 0x8a1
	.quad	2234                            # 0x8ba
	.quad	2265                            # 0x8d9
	.quad	2324                            # 0x914
	.quad	2363                            # 0x93b
	.quad	2392                            # 0x958
	.quad	2448                            # 0x990
	.quad	2483                            # 0x9b3
	.quad	2519                            # 0x9d7
	.quad	2583                            # 0xa17
	.quad	2611                            # 0xa33
	.quad	2640                            # 0xa50
	.quad	2695                            # 0xa87
	.quad	2727                            # 0xaa7
	.quad	2758                            # 0xac6
	.quad	2811                            # 0xafb
	.quad	2845                            # 0xb1d
	.quad	2883                            # 0xb43
	.quad	2947                            # 0xb83
	.quad	2977                            # 0xba1
	.quad	3010                            # 0xbc2
	.quad	3067                            # 0xbfb
	.quad	3100                            # 0xc1c
	.quad	3134                            # 0xc3e
	.quad	3195                            # 0xc7b
	.quad	3221                            # 0xc95
	.quad	3250                            # 0xcb2
	.quad	3302                            # 0xce6
	.quad	3336                            # 0xd08
	.quad	3361                            # 0xd21
	.quad	3415                            # 0xd57
	.quad	3447                            # 0xd77
	.quad	3470                            # 0xd8e
	.quad	3519                            # 0xdbf
	.quad	3556                            # 0xde4
	.quad	3594                            # 0xe0a
	.quad	3650                            # 0xe42
	.quad	3681                            # 0xe61
	.quad	3711                            # 0xe7f
	.quad	3765                            # 0xeb5
	.quad	3791                            # 0xecf
	.quad	3818                            # 0xeea
	.quad	3877                            # 0xf25
	.quad	3916                            # 0xf4c
	.quad	3946                            # 0xf6a
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	98                              # 0x62
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
	.quad	26                              # 0x1a
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
	.quad	43                              # 0x2b
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
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
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
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
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
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	55                              # 0x37
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	39                              # 0x27
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
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
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
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
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x402255fc19c17226              # double 9.1679390000000005
	.quad	0x40103737da61e0c6              # double 4.0539240000000003
	.quad	0x4011a031055b8994              # double 4.4064370000000004
	.quad	0x40173985271bcdbc              # double 5.8061720000000001
	.quad	0x4022ec3b4f616723              # double 9.4613899999999997
	.quad	0x40231191bc558644              # double 9.5343149999999994
	.quad	0x40225a363b256ffc              # double 9.1761949999999998
	.quad	0x3fc746cb966be7b0              # double 0.18184800000000001
	.quad	0x4018b226809d4952              # double 6.1739750000000004
	.quad	0x401b31fd9ba1b196              # double 6.7988189999999999
	.quad	0x4019a71ac14c660a              # double 6.4131879999999999
	.quad	0x402226c0d6f544bb              # double 9.0756899999999998
	.quad	0x4021cb28b6d86ec1              # double 8.8967949999999991
	.quad	0x3ff668f8e7ddca4b              # double 1.400628
	.quad	0x3fdfcb81733226c4              # double 0.49679600000000002
	.quad	0x401e92278d0cc35d              # double 7.6427290000000001
	.quad	0x4001d3bb83cf2cf9              # double 2.2283849999999998
	.quad	0x4023839085f4a127              # double 9.7569619999999996
	.quad	0x400d15a5b9628cbd              # double 3.63557
	.quad	0x40226ce6c093d966              # double 9.2126979999999996
	.quad	0x4022f7af85942917              # double 9.4837609999999994
	.quad	0x3ffbc11b1d92b7fe              # double 1.734645
	.quad	0x3ffeac647778dd61              # double 1.9170879999999999
	.quad	0x401117bdcf0307f2              # double 4.2731849999999998
	.quad	0x4021f4ac4b4d056c              # double 8.9778769999999994
	.quad	0x3ffaed7b634dad32              # double 1.682979
	.quad	0x402315b2f661f18d              # double 9.5423810000000006
	.quad	0x40206d30f062d40b              # double 8.2132640000000006
	.quad	0x3ff3c6034f3fd934              # double 1.235843
	.quad	0x3ff114d0dcfcc5b9              # double 1.067582
	.quad	0x40130ecc3e3193f7              # double 4.7644510000000002
	.quad	0x401ba735c182ecaf              # double 6.9132910000000001
	.quad	0x40146f11b60ae968              # double 5.108466
	.quad	0x4016e29888f861a6              # double 5.721285
	.quad	0x40216f59253543af              # double 8.7174770000000006
	.quad	0x4011f01cd5f99c39              # double 4.4844850000000003
	.quad	0x3fe2dcd4ed2cbea5              # double 0.58945700000000001
	.quad	0x401b5baf102363b2              # double 6.8395349999999997
	.quad	0x4019e46455eaee20              # double 6.473039
	.quad	0x4020ee0285ec3dab              # double 8.4648629999999994
	.quad	0x3ff7ee2867275686              # double 1.495644
	.quad	0x401735471715c63b              # double 5.8020290000000001
	.quad	0x4020fed0917d6b66              # double 8.4976850000000006
	.quad	0x40129de2ef4e0115              # double 4.6541860000000002
	.quad	0x40223ee525892685              # double 9.1228420000000003
	.quad	0x401c629f59ccfaf0              # double 7.096311
	.quad	0x4023d07bfe7e1fc1              # double 9.9071960000000007
	.quad	0x4022969ced0b30b6              # double 9.2941660000000006
	.quad	0x40129b5fe542e558              # double 4.6517330000000001
	.quad	0x4016cdf04ddb5526              # double 5.7011120000000002
	.quad	0x4018586b59146e4c              # double 6.086347
	.quad	0x400d4be0ded288ce              # double 3.6620499999999998
	.quad	0x401ed72cd7cf5f4e              # double 7.7101319999999998
	.quad	0x3fe5c9731098d478              # double 0.68084100000000003
	.quad	0x4011c2580c308feb              # double 4.4397890000000002
	.quad	0x4012df8ec0f88334              # double 4.718318
	.quad	0x4014578b7a1c25d0              # double 5.0854929999999996
	.quad	0x4020f9f2778140dd              # double 8.4881779999999996
	.quad	0x402182fa2f05a709              # double 8.7558150000000001
	.quad	0x40113f865d7cb2d9              # double 4.312036
	.quad	0x4023bf359ff4fd6d              # double 9.8734559999999991
	.quad	0x40228a5e353f7cee              # double 9.2702500000000008
	.quad	0x4018676b3bb83cf3              # double 6.1009950000000002
	.quad	0x401425f3d7d3910c              # double 5.0370629999999998
	.quad	0x401dbcd9a52263d8              # double 7.4344239999999999
	.quad	0x401a68ceb356da01              # double 6.6023509999999996
	.quad	0x40206e7cd0353719              # double 8.2157959999999992
	.quad	0x40215b22d0e56042              # double 8.6780000000000008
	.quad	0x4007aae7d566cf42              # double 2.95845
	.quad	0x40226dec80c73abd              # double 9.2146950000000007
	.quad	0x4007aadd590c0ad0              # double 2.9584299999999999
	.quad	0x401cf46a1a500d5f              # double 7.2386860000000004
	.quad	0x40063f37329c347f              # double 2.7808670000000002
	.quad	0x4018e4c48adeebb3              # double 6.2234059999999998
	.quad	0x400bbc33f85510d4              # double 3.4668960000000002
	.quad	0x3fb97c0b13597918              # double 0.099548999999999999
	.quad	0x3fd168a936c58eeb              # double 0.272013
	.quad	0x3ffe5e15ca6ca03c              # double 1.8979699999999999
	.quad	0x4012a771c970f7ba              # double 4.6635200000000001
	.quad	0x401106c11a11233e              # double 4.256596
	.quad	0x401c1d89ce4a7b4e              # double 7.0288459999999997
	.quad	0x401d00bcbe61cfff              # double 7.2507200000000003
	.quad	0x400c0c55c96030c2              # double 3.5060229999999999
	.quad	0x401e0f544bb1af3a              # double 7.5149699999999999
	.quad	0x4013764f97edc7ef              # double 4.8655379999999999
	.quad	0x4019f3c36113404f              # double 6.4880500000000003
	.quad	0x40177317efe0ce0c              # double 5.8623960000000004
	.quad	0x40069c01a36e2eb2              # double 2.8261750000000001
	.quad	0x401c84107314ca92              # double 7.1289689999999997
	.quad	0x401c708893b7d849              # double 7.109896
	.quad	0x3ff8bf5a5332acfb              # double 1.5467169999999999
	.quad	0x3fc3b6b2af145522              # double 0.15401300000000001
	.quad	0x4014a4f3343fa2ad              # double 5.1610839999999998
	.quad	0x3fd34b380cb6c7a8              # double 0.30146600000000001
	.quad	0x402018711d798d8b              # double 8.0477380000000007
	.quad	0x401eda5a038194c0              # double 7.7132339999999999
	.quad	0x401e15d80e496edf              # double 7.5213320000000001
	.quad	0x4022cb9d3cbc48f1              # double 9.3976839999999999
	.quad	0x4003cb063e07a28c              # double 2.4741330000000001
	.quad	0x4017d0d1b71758e2              # double 5.9539249999999999
	.quad	0x3ffe1aa3f034b0e2              # double 1.8815040000000001
	.quad	0x4006f54da4ce8102              # double 2.869777
	.quad	0x40143c42e9899bf6              # double 5.0588490000000004
	.quad	0x402298a8b08dd1e5              # double 9.2981619999999996
	.quad	0x401c86d7e889c1b5              # double 7.1316829999999998
	.quad	0x3fe437e6f71a7e31              # double 0.63182400000000005
	.quad	0x401ea533b1077469              # double 7.6613300000000004
	.quad	0x3fe3feb28d8665e0              # double 0.62484099999999998
	.quad	0x40229e4cb5bb3850              # double 9.3091790000000003
	.quad	0x40159d3bafd976ff              # double 5.4035479999999998
	.quad	0x4006151ac9afe1da              # double 2.7603049999999998
	.quad	0x4014cbf338716095              # double 5.1991699999999996
	.quad	0x40237a89331a08c0              # double 9.7393280000000004
	.quad	0x40195672756861e9              # double 6.3344209999999999
	.quad	0x400a70f49491f2dc              # double 3.3051539999999999
	.quad	0x3ffe7c2656abde40              # double 1.9053100000000001
	.quad	0x4017c88377186552              # double 5.9458140000000004
	.quad	0x3ff1cf53c579f234              # double 1.1131169999999999
	.quad	0x401563b42cc2d6aa              # double 5.3473670000000002
	.quad	0x4009d90ea9e6eeb7              # double 3.230985
	.quad	0x401ddb05faebc409              # double 7.4638900000000001
	.quad	0x3fd1e831ad2135db              # double 0.27979700000000002
	.quad	0x401e7f97aaac1095              # double 7.6246020000000003
	.quad	0x401b23e1437c5693              # double 6.7850390000000003
	.quad	0x402310389f83be66              # double 9.531682
	.quad	0x400382c450268901              # double 2.4388510000000001
	.quad	0x40230b2dd377e1b9              # double 9.5218340000000001
	.quad	0x4011b11cb039ef0f              # double 4.4229609999999999
	.quad	0x3fb10e5604189375              # double 0.066625000000000004
	.quad	0x40098d1d8a548238              # double 3.1939039999999999
	.quad	0x3f967c286f8ad256              # double 0.021957999999999998
	.quad	0x4004c7f23cc8de2b              # double 2.5976300000000001
	.quad	0x401cee219652bd3c              # double 7.2325499999999998
	.quad	0x4015f2a90cd423d9              # double 5.4869729999999999
	.quad	0x4009c107b784662c              # double 3.2192530000000001
	.quad	0x3ff18e30446b69db              # double 1.0972139999999999
	.quad	0x3fe2f6577531db44              # double 0.59257099999999996
	.quad	0x3fde399f5dfeb8d8              # double 0.47226699999999999
	.quad	0x3fa6c6bce8533b10              # double 0.044484999999999997
	.quad	0x3fc21c475e6362a6              # double 0.141488
	.quad	0x40128d184c271fff              # double 4.6377879999999996
	.quad	0x4020263da2f8bdec              # double 8.0746889999999993
	.quad	0x401c94c016052503              # double 7.1452640000000001
	.quad	0x4018f0ecfa69be0a              # double 6.2352790000000002
	.quad	0x4020911bc5586445              # double 8.2834149999999998
	.quad	0x4021b2b0a6fc58ac              # double 8.8490040000000007
	.quad	0x40212aef6f8f0414              # double 8.5838579999999993
	.quad	0x40112f27fe4bcada              # double 4.2960510000000003
	.quad	0x3fedaac753e707e1              # double 0.92709699999999995
	.quad	0x400c4fa7a85015c2              # double 3.538894
	.quad	0x3fe3a4af0bf1a5ca              # double 0.61385299999999998
	.quad	0x401257b5f1bef49d              # double 4.585655
	.quad	0x40137f954eb13dfb              # double 4.874593
	.quad	0x4023651569f49060              # double 9.6974289999999996
	.quad	0x401bfb502ababead              # double 6.9954229999999997
	.quad	0x3ff3206e9ff0cbb0              # double 1.1954180000000001
	.quad	0x3ffcf1ec0b567558              # double 1.8090630000000001
	.quad	0x401110a1be2b495a              # double 4.2662420000000001
	.quad	0x402286f4be835dee              # double 9.2635860000000001
	.quad	0x40121639d5e4a383              # double 4.5217049999999999
	.quad	0x401e294141e9af5c              # double 7.5402880000000003
	.quad	0x40237d07852f7f4a              # double 9.7441980000000008
	.quad	0x4015c46994185059              # double 5.4418090000000001
	.quad	0x400c8e84ad794a6f              # double 3.5695890000000001
	.quad	0x401f59003eea209b              # double 7.8369150000000002
	.quad	0x3fea1ea140570825              # double 0.81623900000000005
	.quad	0x4020a9a8ac5c13fd              # double 8.3313649999999999
	.quad	0x40176364388ebcc7              # double 5.8470620000000002
	.quad	0x40175f3f961804da              # double 5.8430160000000004
	.quad	0x401707aa68f4b620              # double 5.7574860000000001
	.quad	0x40172210385c67e0              # double 5.7832650000000001
	.quad	0x402193d20f2becee              # double 8.7887120000000003
	.quad	0x3ff0a1198aeb80ed              # double 1.039331
	.quad	0x3ffd6b5a20ddc619              # double 1.8387089999999999
	.quad	0x3f88afc47e49b1fb              # double 0.012054
	.quad	0x40014d6d3b6cbd98              # double 2.1628059999999998
	.quad	0x401a7c49774256bd              # double 6.6213740000000003
	.quad	0x401afd1e53a81dc1              # double 6.7471860000000001
	.quad	0x401839dc2f405f6c              # double 6.0565040000000003
	.quad	0x400bb8a7e73a365d              # double 3.4651640000000001
	.quad	0x3fc4656abde3fbbd              # double 0.15934499999999999
	.quad	0x40215f76a2f48c2e              # double 8.6864519999999992
	.quad	0x4006908919ef954f              # double 2.8205740000000001
	.quad	0x40172653868fd19a              # double 5.7874280000000002
	.quad	0x40140786c226809d              # double 5.0073499999999997
	.quad	0x40102fa5093964a6              # double 4.0465280000000003
	.quad	0x4019d4fe79ee02a7              # double 6.4580019999999996
	.quad	0x40203c2df0d41312              # double 8.1175379999999997
	.quad	0x40172403dddb120a              # double 5.7851710000000001
	.quad	0x3ff4252263d816ad              # double 1.259066
	.quad	0x4021ee523704790c              # double 8.9654710000000008
	.quad	0x40123e731d2e0e30              # double 4.5609859999999998
	.quad	0x401579f16b11c6d2              # double 5.3690850000000001
	.quad	0x4001aac42e9899bf              # double 2.2083819999999998
	.quad	0x401c83be6601bc99              # double 7.1286560000000003
	.quad	0x3ff0d4013ec460ee              # double 1.0517590000000001
	.quad	0x401401e3eaf6837f              # double 5.0018459999999996
	.quad	0x401ff8cb4aec8d5c              # double 7.9929629999999996
	.quad	0x401d4055757d5a9f              # double 7.3128260000000003
	.quad	0x3fefa148ba83f4ed              # double 0.98843800000000003
	.quad	0x4016b7cbb3c81909              # double 5.6794880000000001
	.quad	0x3ffb22fad6cb5350              # double 1.69604
	.quad	0x40225df17bd8be73              # double 9.1834830000000007
	.quad	0x4016eb6dca07f66f              # double 5.7299110000000004
	.quad	0x40124ec95bff0457              # double 4.5769399999999996
	.quad	0x40213f566490a351              # double 8.6237060000000003
	.quad	0x4013d093964a59c0              # double 4.9536879999999996
	.quad	0x40137c3f3e0370ce              # double 4.8713350000000002
	.quad	0x402001a9973d9ec7              # double 8.003247
	.quad	0x40064d0edc3bd599              # double 2.7876259999999999
	.quad	0x4020a7db09a671ef              # double 8.3278429999999997
	.quad	0x40156375c8d9f905              # double 5.3471289999999998
	.quad	0x401074866a11ec92              # double 4.1137940000000004
	.quad	0x3fee5e56cd6c2efd              # double 0.94901599999999997
	.quad	0x40160d06fef7c244              # double 5.5127220000000001
	.quad	0x4019a79a2834d270              # double 6.4136740000000003
	.quad	0x40047d3a1d323fee              # double 2.5611459999999999
	.quad	0x3ff54014f8b588e3              # double 1.3281449999999999
	.quad	0x400b66412cf0f9d3              # double 3.4249290000000001
	.quad	0x3ff132a0663c74fb              # double 1.0748599999999999
	.quad	0x40192476f2a5a46a              # double 6.2856100000000001
	.quad	0x402311cfbb949625              # double 9.5347880000000007
	.quad	0x40126490a350d280              # double 4.5982079999999996
	.quad	0x400de82cf52b90a8              # double 3.7383670000000002
	.quad	0x401c9cc037931444              # double 7.1530769999999997
	.quad	0x3ff771fff79c8430              # double 1.4653320000000001
	.quad	0x4020695b78cc9a78              # double 8.2057760000000002
	.quad	0x4011352f7f498c3b              # double 4.301939
	.quad	0x40228bcf4e874c90              # double 9.273066
	.quad	0x3ffda5c70435efa6              # double 1.852973
	.quad	0x400663a5c1c6088d              # double 2.7986559999999998
	.quad	0x3fe01d7342edbb5a              # double 0.50359500000000001
	.quad	0x40133c53b0813cac              # double 4.8089130000000004
	.quad	0x400c7c70435efa61              # double 3.5607609999999998
	.quad	0x4020b9dfb9389b52              # double 8.363035
	.quad	0x401cb2ca148ba83f              # double 7.1745989999999997
	.quad	0x3ff61b2d4d4024b3              # double 1.3816349999999999
	.quad	0x400d44a515ce9e5e              # double 3.6585179999999999
	.quad	0x3fe336262cba732e              # double 0.60036
	.quad	0x40222bc925785f8d              # double 9.0855189999999997
	.quad	0x401ffceaf251c194              # double 7.9969900000000003
	.quad	0x40140182ecaeea64              # double 5.0014760000000003
	.quad	0x401d1aafbc1acde2              # double 7.2760610000000003
	.quad	0x3ff110bd87b56b87              # double 1.066587
	.quad	0x401e6512ec6bce85              # double 7.5987049999999998
	.quad	0x40230dac258d5843              # double 9.5267040000000005
	.quad	0x3ff3149949e8815e              # double 1.192529
	.quad	0x3ff410c0ad03d9a9              # double 1.2540899999999999
	.quad	0x40167599aa60913a              # double 5.6148439999999997
	.quad	0x4017d9991361dc94              # double 5.9624980000000001
	.quad	0x3febed7625204af9              # double 0.87273699999999999
	.quad	0x400d6895d0b73d19              # double 3.6760670000000002
	.quad	0x400d6f2e05ccc89b              # double 3.679287
	.quad	0x3fff65d4a5df223a              # double 1.962361
	.quad	0x4016308a265f0f5a              # double 5.5474019999999999
	.quad	0x4021b2fcce1c5825              # double 8.8495849999999994
	.quad	0x3fe9c1ce6c093d96              # double 0.80490799999999996
	.quad	0x401544b124d099e1              # double 5.3170820000000001
	.quad	0x3ffa62da554b8bf0              # double 1.6491340000000001
	.quad	0x3feaaa3cea6c1a05              # double 0.83328100000000005
	.quad	0x4015e6ce789e774f              # double 5.4753970000000001
	.quad	0x4018800cd855970b              # double 6.1250489999999997
	.quad	0x401c6100a393ee5f              # double 7.0947290000000001
	.quad	0x400062a3486f049b              # double 2.0481630000000002
	.quad	0x401bf1ce6c093d96              # double 6.9861389999999997
	.quad	0x400c3fc2a8869c67              # double 3.5311330000000001
	.quad	0x3ff6c229a5ebb774              # double 1.4224030000000001
	.quad	0x401e2a29c779a6b5              # double 7.5411749999999999
	.quad	0x401a59b413986339              # double 6.5876010000000003
	.quad	0x401df719f7f8ca82              # double 7.4913100000000004
	.quad	0x3fdb608d08919ef9              # double 0.42776799999999998
	.quad	0x3fcb9e16d6dc1a48              # double 0.21576200000000001
	.quad	0x4017bb40b34e7686              # double 5.9328640000000004
	.quad	0x4016763800218def              # double 5.6154479999999998
	.quad	0x3fef47a7c9de0503              # double 0.97749699999999994
	.quad	0x40230f94c87980f5              # double 9.5304319999999993
	.quad	0x4009cb912dba4d6e              # double 3.2243979999999999
	.quad	0x402003256ffc115e              # double 8.0061450000000001
	.quad	0x402192dfd694ccab              # double 8.7868639999999996
	.quad	0x401ccbf338716095              # double 7.1991699999999996
	.quad	0x3fdd00431bde82d8              # double 0.45314100000000002
	.quad	0x3fd9ceee0f3cb3e5              # double 0.40325499999999997
	.quad	0x4009a2f7b17ce52e              # double 3.204574
	.quad	0x40228afee6fb4c3c              # double 9.2714759999999998
	.quad	0x400cb7939a7c17a9              # double 3.5896370000000002
	.quad	0x401e7450acc0bdcb              # double 7.6135890000000001
	.quad	0x3fe53fee2c98e53f              # double 0.66405400000000003
	.quad	0x40159d4ed2cbea4f              # double 5.4036210000000002
	.quad	0x4022f3bcd35a8588              # double 9.4760500000000007
	.quad	0x40024b220791c4b9              # double 2.286686
	.quad	0x40233991148fd9fd              # double 9.6124349999999996
	.quad	0x3fff821d10b1feeb              # double 1.969266
	.quad	0x4001bf79c842fa51              # double 2.2184940000000002
	.quad	0x4020dd55e6bc621b              # double 8.4322959999999991
	.quad	0x401ced5dc4007571              # double 7.2318030000000002
	.quad	0x401c56e696a26e54              # double 7.0848639999999996
	.quad	0x4017f8327674d163              # double 5.9923799999999998
	.quad	0x400c591dde37585c              # double 3.5435140000000001
	.quad	0x400dd32bdc26dce4              # double 3.7281110000000002
	.quad	0x402368691ea78af4              # double 9.7039270000000001
	.quad	0x40152d00b45ae600              # double 5.2939480000000003
	.quad	0x4005f6c7a7c9de05              # double 2.745498
	.quad	0x401fa0ba1f4b1ee2              # double 7.9069599999999998
	.quad	0x4006bbd1676640a7              # double 2.8417080000000001
	.quad	0x4022893b3a68b19a              # double 9.2680299999999995
	.quad	0x400f593682730c67              # double 3.918561
	.quad	0x40090cbd1244a622              # double 3.1312199999999999
	.quad	0x3ffd7a1e3eaf6838              # double 1.842314
	.quad	0x3fee667f90d9d777              # double 0.95001199999999997
	.quad	0x4020aaceaaf35e31              # double 8.3336079999999999
	.quad	0x401cbd102bc72e27              # double 7.1846319999999997
	.quad	0x3ff6a6b93ccd0fe9              # double 1.4157040000000001
	.quad	0x40204d247cb70ac4              # double 8.1506690000000006
	.quad	0x401eeecf63800219              # double 7.7332130000000001
	.quad	0x4014d9fd7a13c255              # double 5.2128810000000003
	.quad	0x400c3229e90795f6              # double 3.5244939999999998
	.quad	0x4010eb1704ff4342              # double 4.2295800000000003
	.quad	0x402171e6687f455a              # double 8.7224609999999991
	.quad	0x40202c5f17bd8be7              # double 8.0866629999999997
	.quad	0x401d215ce9e5e248              # double 7.2825810000000004
	.quad	0x3ff5884c6a3bddfd              # double 1.3457760000000001
	.quad	0x4000c9ab29e4d5d8              # double 2.098471
	.quad	0x402222eba27ae9ab              # double 9.0682039999999997
	.quad	0x40204937f38c5437              # double 8.1430050000000005
	.quad	0x4017fbe8ff327aa7              # double 5.9960060000000004
	.quad	0x402002a2c2374795              # double 8.0051480000000002
	.quad	0x400c3bd7b2031ceb              # double 3.52922
	.quad	0x4023fa098915bdd7              # double 9.9883539999999992
	.quad	0x400ae77e5eaab042              # double 3.3630339999999999
	.quad	0x3fb9463cfb3311a5              # double 0.098727999999999996
	.quad	0x402233415b1422cd              # double 9.1001080000000005
	.quad	0x4007eb85a4f00ef1              # double 2.9900009999999999
	.quad	0x4020ecf9e3864cb6              # double 8.4628440000000005
	.quad	0x3ff81ced0b30b5aa              # double 1.5070619999999999
	.quad	0x40129f5f0b28522f              # double 4.6556360000000003
	.quad	0x4019c9dd7ecbb7fa              # double 6.4471340000000001
	.quad	0x3fe831e7d9988d2a              # double 0.75609199999999999
	.quad	0x401d818b0d0edc3c              # double 7.3765070000000001
	.quad	0x401bd353b4b2fa94              # double 6.9563740000000003
	.quad	0x4023ab5ed8d36b4c              # double 9.8347079999999991
	.quad	0x40096b8f9b13165d              # double 3.1775199999999999
	.quad	0x40192a9478c868ba              # double 6.291582
	.quad	0x40226bfec13b9f12              # double 9.2109279999999991
	.quad	0x40133387160956c1              # double 4.8003200000000001
	.quad	0x40223b9da16616b5              # double 9.1164369999999995
	.quad	0x4010e30ced4e4c94              # double 4.2217289999999998
	.quad	0x401c4201040bfe3b              # double 7.064457
	.quad	0x4011f3efae7924af              # double 4.488219
	.quad	0x4016fcba30121683              # double 5.746804
	.quad	0x401a439c94f69caa              # double 6.5660270000000001
	.quad	0x401a50fadf2ecf20              # double 6.5790819999999997
	.quad	0x4016d29e0a41a262              # double 5.7056810000000002
	.quad	0x401c5532a497fa5d              # double 7.0832009999999999
	.quad	0x4020cf0b06c43f60              # double 8.4043810000000008
	.quad	0x4023594c447c30d3              # double 9.6744099999999999
	.quad	0x4020431cc9646280              # double 8.1310789999999997
	.quad	0x401a5a597d49d7ba              # double 6.5882319999999996
	.quad	0x401b90dbad3a604e              # double 6.8914629999999999
	.quad	0x401bac3c9eecbfb1              # double 6.9181999999999997
	.quad	0x402024c144028e50              # double 8.0717870000000005
	.quad	0x40148b96f21f6cad              # double 5.1363180000000002
	.quad	0x401cdef1348b2208              # double 7.2177170000000004
	.quad	0x4021a2cfd8f0c77e              # double 8.8179920000000003
	.quad	0x3ff74754f3775b81              # double 1.454915
	.quad	0x400dbb8b26394fad              # double 3.716574
	.quad	0x401b1d530489d27c              # double 6.7786369999999998
	.quad	0x3fecfe69270b06c4              # double 0.90605599999999997
	.quad	0x4002c5da6a444178              # double 2.3466079999999998
	.quad	0x3fbaceee0f3cb3e5              # double 0.10471999999999999
	.quad	0x400b9083558a7610              # double 3.4455629999999999
	.quad	0x401f3cb2d905c033              # double 7.8092759999999996
	.quad	0x3ffb9c28f5c28f5c              # double 1.725625
	.quad	0x3ffc36273929ed39              # double 1.7632209999999999
	.quad	0x401efc3ac929aa1d              # double 7.7463179999999995
	.quad	0x4016ef5b1c864884              # double 5.733746
	.quad	0x401b8c779a6b50b1              # double 6.887175
	.quad	0x401fea9f383f0baf              # double 7.9791230000000004
	.quad	0x3ffb6365cb35f3d8              # double 1.711767
	.quad	0x4020e4df47f993d5              # double 8.4470159999999996
	.quad	0x402233fc6540cc79              # double 9.1015350000000002
	.quad	0x3ff92111276fb092              # double 1.570573
	.quad	0x401b8882f0e0a84c              # double 6.8833120000000001
	.quad	0x401698bb4d48882f              # double 5.649152
	.quad	0x40236be74afd5454              # double 9.7107489999999998
	.quad	0x40200c64fdb09a67              # double 8.0242079999999998
	.quad	0x40032ffb8b263950              # double 2.3984290000000001
	.quad	0x3fec71fbc5de9c02              # double 0.88891399999999998
	.quad	0x3fc09320d9945b6c              # double 0.12948999999999999
	.quad	0x3fdf4ee7c49fd7a1              # double 0.48919099999999999
	.quad	0x4003ce4d1a650614              # double 2.475733
	.quad	0x40217a19eb6390c9              # double 8.7384789999999999
	.quad	0x4018be30014f8b59              # double 6.1857300000000004
	.quad	0x4020c94cec41dd1a              # double 8.3931649999999998
	.quad	0x4008eb018611fd59              # double 3.1147490000000002
	.quad	0x40233c02d16b97ff              # double 9.6172090000000007
	.quad	0x4013704e1e71044f              # double 4.8596729999999999
	.quad	0x400a3c7820a30db7              # double 3.2795260000000002
	.quad	0x400de9906cca2db6              # double 3.739045
	.quad	0x401641654d61b2a2              # double 5.5638629999999996
	.quad	0x4001ce17a02fb5d0              # double 2.2256309999999999
	.quad	0x4013249c2c1b10fd              # double 4.7857519999999996
	.quad	0x4013617a02fb5d03              # double 4.8451919999999999
	.quad	0x3ffbd655e28aa433              # double 1.7398279999999999
	.quad	0x4009f1055b899392              # double 3.242686
	.quad	0x401aaf5e41d4b6a6              # double 6.6712579999999999
	.quad	0x40118bb9496249a1              # double 4.3864489999999998
	.quad	0x4022b2c7da1ec4e7              # double 9.3491809999999997
	.quad	0x4023d7cbf6e3f78c              # double 9.9214780000000004
	.quad	0x4015f3f20a73f749              # double 5.4882280000000003
	.quad	0x4021e72e05ccc89b              # double 8.9515229999999999
	.quad	0x401e98b827fa1a0d              # double 7.64914
	.quad	0x40210ab1d4f9c1f8              # double 8.5208879999999994
	.quad	0x40236e5a78f25a25              # double 9.7155339999999998
	.quad	0x401dd17614595358              # double 7.4545519999999996
	.quad	0x401e83f85510d38d              # double 7.6288770000000001
	.quad	0x401bff727136a401              # double 6.99946
	.quad	0x3fefb73083558a76              # double 0.99111199999999999
	.quad	0x402047cc1871e6cd              # double 8.1402289999999997
	.quad	0x401b4d93c46d82ba              # double 6.8257589999999997
	.quad	0x401638800eae18ad              # double 5.5551760000000003
	.quad	0x4019cc55000c953a              # double 6.4495430000000002
	.quad	0x401c46876e1deacd              # double 7.0688760000000004
	.quad	0x3fa47d3d4280ae10              # double 0.040017999999999998
	.quad	0x401b7345069a4df4              # double 6.8625679999999996
	.quad	0x401a6959e6256367              # double 6.6028820000000001
	.quad	0x400d7ca3a4b5568f              # double 3.6858590000000002
	.quad	0x4021bd1116a8b8f1              # double 8.8692709999999995
	.quad	0x3fe74d1c7de5082d              # double 0.728163
	.quad	0x401540a2877ee4e2              # double 5.3131199999999996
	.quad	0x4009ec1a048e043a              # double 3.2402839999999999
	.quad	0x3fefd45846e8f29d              # double 0.99467099999999997
	.quad	0x402363a5c1c6088d              # double 9.6946239999999992
	.quad	0x3ff8fbe33acd5b68              # double 1.561496
	.quad	0x401f034b945308bc              # double 7.7532180000000004
	.quad	0x401606605ee568a5              # double 5.506227
	.quad	0x402294afd5454153              # double 9.2904040000000006
	.quad	0x40218622a2c23748              # double 8.7619830000000007
	.quad	0x401685a5332acfb7              # double 5.6305129999999997
	.quad	0x401bb91600f34507              # double 6.9307480000000004
	.quad	0x40165d31fcd24e16              # double 5.591011
	.quad	0x401b7b0fadf2ecf2              # double 6.870177
	.quad	0x401979be09bb6aa5              # double 6.3688890000000002
	.quad	0x4020ecd65e460675              # double 8.4625730000000008
	.quad	0x3fab87df5cf2495e              # double 0.053770999999999999
	.quad	0x4018b09edbf8b9bb              # double 6.1724810000000003
	.quad	0x401c38bb906466b2              # double 7.0554030000000001
	.quad	0x3fb7cd035371971c              # double 0.092971999999999999
	.quad	0x3ff44ca0c282c6ef              # double 1.2687079999999999
	.quad	0x4001d422ccb3a259              # double 2.2285819999999998
	.quad	0x401a1779a6b50b0f              # double 6.5229249999999999
	.quad	0x4022034959e62563              # double 9.0064189999999993
	.quad	0x3fea4347e8ccdd94              # double 0.82071300000000002
	.quad	0x40170ac9f2fdb8fe              # double 5.7605360000000001
	.quad	0x401a8e33acd5b680              # double 6.6388689999999997
	.quad	0x3ff759a95421c044              # double 1.45939
	.quad	0x4011ee1198aeb80f              # double 4.4824890000000002
	.quad	0x3fedf81a5870da5e              # double 0.93653600000000004
	.quad	0x400883571d1d4739              # double 3.0641310000000002
	.quad	0x401682c7325918a0              # double 5.627713
	.quad	0x3f6c66d373affb05              # double 0.003467
	.quad	0x3ffcc6338b47c73f              # double 1.798389
	.quad	0x3ff0fc6c97d8cf3a              # double 1.0616270000000001
	.quad	0x4009cc493426783a              # double 3.2247490000000001
	.quad	0x4018dbef49cf56eb              # double 6.2147800000000002
	.quad	0x401c2ce5710880d8              # double 7.043844
	.quad	0x402126173b85e80c              # double 8.5743960000000001
	.quad	0x401f5ae7924af0bf              # double 7.8387739999999999
	.quad	0x40106878b7a1c25d              # double 4.102023
	.quad	0x4002894f69ca9ef5              # double 2.3170459999999999
	.quad	0x40067d9018e75793              # double 2.8113100000000002
	.quad	0x40216441fea8112c              # double 8.6958160000000006
	.quad	0x400cc69ced0b30b6              # double 3.5969790000000001
	.quad	0x3ff5655193708aad              # double 1.3372360000000001
	.quad	0x400a08461f9f01b8              # double 3.2540399999999998
	.quad	0x3fe4a22f6a50d6b2              # double 0.64479799999999998
	.quad	0x401695bccaf709b7              # double 5.6462279999999998
	.quad	0x3ff57e6d58c8eef2              # double 1.3433660000000001
	.quad	0x4011e2e48e8a71de              # double 4.4715749999999996
	.quad	0x402388b3d4ae429e              # double 9.7669969999999999
	.quad	0x40152b1897a67a53              # double 5.2920860000000003
	.quad	0x4020aea593a2df93              # double 8.3411069999999992
	.quad	0x401033d859c8c932              # double 4.05063
	.quad	0x4001b2a7bd48cb4b              # double 2.212234
	.quad	0x400aab7aa25d8d7a              # double 3.3337300000000001
	.quad	0x401687763e4abe6a              # double 5.6322869999999998
	.quad	0x3fe1a0ee8d10f51b              # double 0.55089500000000002
	.quad	0x4000da6a44417870              # double 2.1066479999999999
	.quad	0x401149b56323bbc7              # double 4.3219810000000001
	.quad	0x4011bfd2630ec311              # double 4.4373259999999997
	.quad	0x40239332acfb762e              # double 9.7874960000000009
	.quad	0x40225aa68f4b61fe              # double 9.1770519999999998
	.quad	0x3ff75147f1305964              # double 1.457344
	.quad	0x4015489331a08bfc              # double 5.3208739999999999
	.quad	0x4020c5074213a0c7              # double 8.3848210000000005
	.quad	0x40181ad688377186              # double 6.0262089999999997
	.quad	0x3ff4874fb549f948              # double 1.2830349999999999
	.quad	0x4016f2f7b17ce52e              # double 5.7372730000000001
	.quad	0x400baff4ba51a006              # double 3.4609160000000001
	.quad	0x40183a1fd1569f49              # double 6.056762
	.quad	0x3f9807bbb62413db              # double 0.023466999999999998
	.quad	0x4019a6a6e32e3822              # double 6.4127460000000003
	.quad	0x402101a95421c044              # double 8.5032449999999997
	.quad	0x4019954cdb7ae579              # double 6.3958009999999996
	.quad	0x400a155475a31a4c              # double 3.2604150000000001
	.quad	0x4023fd935fc3b4f6              # double 9.9952649999999998
	.quad	0x401f655da272862f              # double 7.8489899999999996
	.quad	0x401c0668c2613900              # double 7.006259
	.quad	0x40239d698fe69271              # double 9.8074460000000005
	.quad	0x4012a8a7e73a365d              # double 4.6647030000000003
	.quad	0x4013a6994185058e              # double 4.9126940000000001
	.quad	0x4011b2730c671690              # double 4.4242670000000004
	.quad	0x40164500d5e8d541              # double 5.5673859999999999
	.quad	0x40215c32ca57a787              # double 8.6800750000000004
	.quad	0x401f8db4cc250721              # double 7.8883850000000004
	.quad	0x4023c8301a79feca              # double 9.8909920000000007
	.quad	0x401a290257c914b1              # double 6.5400479999999996
	.quad	0x402098a6fc58ab93              # double 8.2981490000000004
	.quad	0x400db5525cc42635              # double 3.7135359999999999
	.quad	0x3ffdecfb762d83c7              # double 1.870357
	.quad	0x40203079a2834d27              # double 8.094678
	.quad	0x4016afc829cfdd23              # double 5.6716620000000004
	.quad	0x3fe7719934efcbd5              # double 0.73261699999999996
	.quad	0x401aff049a9973da              # double 6.7490410000000001
	.quad	0x4019506dd69d3027              # double 6.3285439999999999
	.quad	0x3ff6b7f5a5332ad0              # double 1.4199120000000001
	.quad	0x4018ec8abd5dc400              # double 6.2309979999999996
	.quad	0x4019790c4dec1c1d              # double 6.3682109999999996
	.quad	0x4017d20e1f7d73c9              # double 5.9551319999999999
	.quad	0x3fece1c36976bc1f              # double 0.902559
	.quad	0x40202e102795703f              # double 8.0899669999999997
	.quad	0x4015e08feac42e99              # double 5.4692990000000004
	.quad	0x400b8757928e0c9e              # double 3.4410850000000002
	.quad	0x400c0c450268900c              # double 3.5059909999999999
	.quad	0x402314408d8ec95c              # double 9.539555
	.quad	0x400b6b2314013ec4              # double 3.4273129999999998
	.quad	0x3fd17d0f1f57b41c              # double 0.273258
	.quad	0x3ff5f5e74299d884              # double 1.3725350000000001
	.quad	0x401fe7b4e54f7a92              # double 7.9762760000000004
	.quad	0x4013826e5471715c              # double 4.8773739999999997
	.quad	0x402003b6aa4b9885              # double 8.0072530000000004
	.quad	0x40223f94855da273              # double 9.1241800000000008
	.quad	0x400d9e8f6cefed63              # double 3.7024219999999999
	.quad	0x401e48bd230b9dc3              # double 7.571034
	.quad	0x401339320d9945b7              # double 4.8058550000000002
	.quad	0x4022a84ba0e84274              # double 9.3287019999999998
	.quad	0x400e57ba6698bb4d              # double 3.7928359999999999
	.quad	0x40205958969a0ad9              # double 8.1745040000000007
	.quad	0x401442d1f1cfbb95              # double 5.0652540000000004
	.quad	0x4009efc1df3300de              # double 3.2420689999999999
	.quad	0x402056fb4c3c18b5              # double 8.169886
	.quad	0x3fef99806f262889              # double 0.98748800000000003
	.quad	0x40101fbe76c8b439              # double 4.0309999999999997
	.quad	0x40047aea3161a1dc              # double 2.5600170000000002
	.quad	0x40162e481f53825e              # double 5.5451969999999999
	.quad	0x3ff33284167a95c8              # double 1.1998329999999999
	.quad	0x3fe6ac42e9899bf6              # double 0.70852800000000005
	.quad	0x401f3f99c38b04ab              # double 7.8121099999999996
	.quad	0x400f188f42fe8251              # double 3.8869919999999998
	.quad	0x40216b430f49491f              # double 8.7094959999999997
	.quad	0x4014d9c065b63d3e              # double 5.2126479999999997
	.quad	0x401e982e87d2c7b9              # double 7.6486150000000003
	.quad	0x400fed1aeb3dd11c              # double 3.990774
	.quad	0x4022b30b5aa71583              # double 9.3496959999999998
	.quad	0x40131f8f041461b7              # double 4.7808190000000002
	.quad	0x3ff836f2a5a469d7              # double 1.513415
	.quad	0x401d555219a847b2              # double 7.3333209999999998
	.quad	0x4023ee2ac3222920              # double 9.9651700000000005
	.quad	0x4021e9704ff4341a              # double 8.9559350000000002
	.quad	0x40121e6ff7dfa00e              # double 4.5297239999999999
	.quad	0x4012fe3ac0c62e4d              # double 4.7482709999999999
	.quad	0x4023a99392189bd8              # double 9.8312039999999996
	.quad	0x401c5c679cc74b84              # double 7.0902390000000004
	.quad	0x40132813cab81f97              # double 4.7891380000000003
	.quad	0x3fde7f4128bf3beb              # double 0.47651700000000002
	.quad	0x40019f52fc2656ac              # double 2.2027950000000001
	.quad	0x40225e5753a3ec03              # double 9.1842600000000001
	.quad	0x400d1d0d8cb07d0b              # double 3.639186
	.quad	0x401d949385836220              # double 7.3950940000000003
	.quad	0x400d00999dcb5782              # double 3.6252930000000001
	.quad	0x40108dc7ef177a70              # double 4.138458
	.quad	0x401cc31098d477bc              # double 7.190493
	.quad	0x4021b7e9d94d0dd0              # double 8.8592060000000004
	.quad	0x4016a26b2f23033a              # double 5.6586119999999998
	.quad	0x40216323dd54da4d              # double 8.6936330000000002
	.quad	0x401a2b56fb8f57f7              # double 6.5423239999999998
	.quad	0x3fe2ebacf7446f9c              # double 0.59126900000000004
	.quad	0x3ff9e052502eec7d              # double 1.6172660000000001
	.quad	0x401e22dba4d6e47e              # double 7.5340410000000002
	.quad	0x3ffb20b2c83ec893              # double 1.6954830000000001
	.quad	0x40096b9baa1511e0              # double 3.177543
	.quad	0x40216a7f1b691212              # double 8.7080009999999994
	.quad	0x4007c2ccb3a2595c              # double 2.9701170000000001
	.quad	0x3fd3f61240746456              # double 0.311894
	.quad	0x3fc62b1704ff4342              # double 0.17319000000000001
	.quad	0x3fc99b5e95b78cca              # double 0.20005400000000001
	.quad	0x4006fe7b80a9de8b              # double 2.8742589999999999
	.quad	0x4016e02a77a2cecd              # double 5.7189120000000004
	.quad	0x401cd752977c88e8              # double 7.2102760000000004
	.quad	0x3ffd25c2d2780779              # double 1.8217190000000001
	.quad	0x3ffb122962cfd8f1              # double 1.691934
	.quad	0x400f03800218def4              # double 3.876709
	.quad	0x4010323e5b8561d4              # double 4.0490659999999998
	.quad	0x4023bb01eabbcb1d              # double 9.8652490000000003
	.quad	0x40235bc48f10a99b              # double 9.6792339999999992
	.quad	0x3ff0dd6adf71eaff              # double 1.054057
	.quad	0x4019adedf1e0828c              # double 6.4198529999999998
	.quad	0x4014cc83a96d4c34              # double 5.1997210000000003
	.quad	0x4002d208e1501190              # double 2.3525559999999999
	.quad	0x401536dca07f66e8              # double 5.3035759999999996
	.quad	0x40014e04c0592104              # double 2.1630950000000002
	.quad	0x40229e4c729f59cd              # double 9.309177
	.quad	0x4022f6bb341e14be              # double 9.481897
	.quad	0x401ba71b0468448d              # double 6.913189
	.quad	0x40134d48cb4aec8d              # double 4.8254729999999997
	.quad	0x40076828c36da87a              # double 2.925859
	.quad	0x4023012fd32c625f              # double 9.5023180000000007
	.quad	0x401ecc319c5a3e3a              # double 7.699408
	.quad	0x4018133f85510d39              # double 6.0187970000000002
	.quad	0x40233105c0336156              # double 9.5957469999999994
	.quad	0x402028a58b3f63c3              # double 8.0793879999999998
	.quad	0x3fe3aecd07852f7f              # double 0.61508799999999997
	.quad	0x4001fe4606748e47              # double 2.2491569999999999
	.quad	0x402342ceee0f3cb4              # double 9.6304850000000001
	.quad	0x400c1826edaa92e6              # double 3.5117929999999999
	.quad	0x401b737b8d3f1844              # double 6.8627760000000002
	.quad	0x3fab61fe21d96e9c              # double 0.053482000000000002
	.quad	0x4021e6bca5375c8e              # double 8.9506580000000007
	.quad	0x4022921986b9c305              # double 9.2853510000000004
	.quad	0x400b5e69ad42c3ca              # double 3.4211
	.quad	0x4012b20c8cd63cb8              # double 4.6738759999999999
	.quad	0x40041a5a89b951c6              # double 2.5128680000000001
	.quad	0x401e55f28848387e              # double 7.583933
	.quad	0x3fea2b6ae7d566cf              # double 0.81779999999999997
	.quad	0x401c441d4b6a619e              # double 7.0665180000000003
	.quad	0x3ffdd2e83a109d06              # double 1.863991
	.quad	0x401d9c7a7c9de050              # double 7.4028109999999998
	.quad	0x401b0dbe3c105187              # double 6.7634210000000001
	.quad	0x4019d26809d49518              # double 6.4554749999999999
	.quad	0x40099164c729f59d              # double 3.1959930000000001
	.quad	0x401269f8c21e1d21              # double 4.6034879999999996
	.quad	0x4007fac2df0d4131              # double 2.9974419999999999
	.quad	0x3fc1310129cbab65              # double 0.13430800000000001
	.quad	0x3fe279702e6644d8              # double 0.57732399999999995
	.quad	0x3fe6c4dca8e2e2b9              # double 0.71153100000000002
	.quad	0x4001d352a8438088              # double 2.2281849999999999
	.quad	0x401b85dcc63f1412              # double 6.880725
	.quad	0x4016aa9f7b5aea31              # double 5.6666239999999997
	.quad	0x3ff1ffdf7e8038a0              # double 1.1249690000000001
	.quad	0x402100fba8826aa9              # double 8.5019200000000001
	.quad	0x4013d93b7d84901d              # double 4.9621409999999999
	.quad	0x401999552e2fbe34              # double 6.3997390000000003
	.quad	0x40216d4de7ea5f85              # double 8.7134850000000004
	.quad	0x40217ac083126e98              # double 8.7397500000000008
	.quad	0x4015f909289dadfb              # double 5.4931989999999997
	.quad	0x3ff66f709b738e6d              # double 1.402207
	.quad	0x401cb2db61bb05fb              # double 7.1746650000000001
	.quad	0x402002656abde3fc              # double 8.0046800000000004
	.quad	0x400ec4217d2849cb              # double 3.8457669999999999
	.quad	0x400a40b0af5fd47c              # double 3.281587
	.quad	0x400e91c8eabffcdb              # double 3.8211840000000001
	.quad	0x4018c9c94f69ca9f              # double 6.197057
	.quad	0x401b52dc2b0ea183              # double 6.8309179999999996
	.quad	0x401c1f7d30ad46f6              # double 7.0307510000000004
	.quad	0x40000d2f5dbb9cfa              # double 2.0064380000000002
	.quad	0x401c434ce3de614a              # double 7.0657230000000002
	.quad	0x4023b83925bb7b6c              # double 9.8598110000000005
	.quad	0x4023b69d30270f39              # double 9.8566680000000008
	.quad	0x400007baa9b499d0              # double 2.0037739999999999
	.quad	0x40116d9ad85dfa87              # double 4.3570359999999999
	.quad	0x3ff2ca3f8982cb21              # double 1.174377
	.quad	0x40120529fe004b7f              # double 4.5050429999999997
	.quad	0x40134617c1bda512              # double 4.8184500000000003
	.quad	0x3fefb8f57f737da6              # double 0.99132799999999999
	.quad	0x4016b3ed959a3098              # double 5.6757109999999997
	.quad	0x4014efcd67fd3f5b              # double 5.2341819999999997
	.quad	0x401f26dc1a47a9e3              # double 7.7879490000000002
	.quad	0x3fc6ca70d1fa3337              # double 0.17805299999999999
	.quad	0x401ed158b827fa1a              # double 7.70444
	.quad	0x4021cefcbd556085              # double 8.9042720000000006
	.quad	0x3ff3659c065b63d4              # double 1.212307
	.quad	0x4022776a93f290ac              # double 9.2332350000000005
	.quad	0x401f440dd3fe1976              # double 7.816459
	.quad	0x4014e655e28aa433              # double 5.2249369999999997
	.quad	0x400d2c61d8622c45              # double 3.646671
	.quad	0x3ffbb4fe79ee02a7              # double 1.7316879999999999
	.quad	0x4010480e06530058              # double 4.0703659999999999
	.quad	0x3fe7ca6a875d56f3              # double 0.74345899999999998
	.quad	0x40204d7cb2d905c0              # double 8.1513419999999996
	.quad	0x4022309b0ee49f51              # double 9.0949329999999993
	.quad	0x40103635e74299d9              # double 4.0529400000000004
	.quad	0x401bf624dd2f1aa0              # double 6.9903750000000002
	.quad	0x40137b2f23033a47              # double 4.8702969999999999
	.quad	0x4012e7739f340d4e              # double 4.7260270000000002
	.quad	0x3ff57dac68a936c6              # double 1.3431820000000001
	.quad	0x3ffec7ef177a7009              # double 1.9238120000000001
	.quad	0x401f93315d701d9f              # double 7.8937429999999997
	.quad	0x40076875d56f32be              # double 2.9260060000000001
	.quad	0x3fffd29aa1d755bd              # double 1.988917
	.quad	0x4011298244e93e1d              # double 4.2905360000000003
	.quad	0x4003f24af0bf1a5d              # double 2.4933070000000002
	.quad	0x400aedafd113836b              # double 3.3660580000000002
	.quad	0x40064ac96cc5fbf8              # double 2.7865169999999999
	.quad	0x4019aec8d5c74752              # double 6.4206880000000002
	.quad	0x400d32bf5515054b              # double 3.6497790000000001
	.quad	0x40210aac1094a2ba              # double 8.5208440000000003
	.quad	0x401eb57ff9b56324              # double 7.6772460000000002
	.quad	0x402298094e5d5b25              # double 9.2969460000000002
	.quad	0x4023a4c037931444              # double 9.8217789999999993
	.quad	0x4010d4ec204f2ae0              # double 4.2079319999999996
	.quad	0x40167afea3df6db9              # double 5.6201119999999998
	.quad	0x4016f805e5f30e80              # double 5.74221
	.quad	0x4000fd1244a6223e              # double 2.12357
	.quad	0x40153bc23315d702              # double 5.3083580000000001
	.quad	0x3ffda7e73a365cb3              # double 1.8534919999999999
	.quad	0x401ec2af5771001d              # double 7.6901219999999996
	.quad	0x4013c3083558a761              # double 4.940461
	.quad	0x3ffdc07fed20296b              # double 1.859497
	.quad	0x4011b5d5f56a7ac8              # double 4.4275739999999999
	.quad	0x3fe19e3eaf6837f8              # double 0.55056700000000003
	.quad	0x4021b2671ef30a4e              # double 8.8484429999999996
	.quad	0x401b9ca31e7d9989              # double 6.9029660000000002
	.quad	0x40061da16616b54e              # double 2.7644679999999999
	.quad	0x4023682b62845996              # double 9.7034559999999992
	.quad	0x40218932b55ef1fe              # double 8.7679650000000002
	.quad	0x402185c358afc47e              # double 8.7612559999999995
	.quad	0x40231b51372a38b9              # double 9.5533540000000005
	.quad	0x4019157c0b135979              # double 6.2709809999999999
	.quad	0x40069dfa00e27e0f              # double 2.827137
	.quad	0x4020b559b3d07c85              # double 8.3542000000000005
	.quad	0x4023621405708249              # double 9.6915589999999998
	.quad	0x400284577d955715              # double 2.3146200000000001
	.quad	0x401009ce8d972cd8              # double 4.0095770000000002
	.quad	0x400227f562174c4d              # double 2.2695110000000001
	.quad	0x4010c5ff609dcf89              # double 4.1933569999999998
	.quad	0x4017f23b7952d235              # double 5.9865550000000001
	.quad	0x401781c193b3a68b              # double 5.8767149999999999
	.quad	0x401f9cd07852f7f5              # double 7.9031390000000003
	.quad	0x402136df82b1f688              # double 8.6071740000000005
	.quad	0x401c02f166e008ea              # double 7.0028740000000003
	.quad	0x400cf6a055757d5b              # double 3.6204230000000002
	.quad	0x4014ecf312b1b36c              # double 5.2313960000000002
	.quad	0x401a0a055757d5aa              # double 6.5097860000000001
	.quad	0x3ffd0f47304039ac              # double 1.81623
	.quad	0x40219c302b40f66a              # double 8.8050549999999994
	.quad	0x4022b1da16616b55              # double 9.3473670000000002
	.quad	0x40207a641b328b6e              # double 8.2390450000000008
	.quad	0x400bf210385c67e0              # double 3.4931950000000001
	.quad	0x4007409edbf8b9bb              # double 2.9065530000000002
	.quad	0x401cf45cbbc2b94e              # double 7.2386350000000004
	.quad	0x4011c640e9d51b50              # double 4.4436070000000001
	.quad	0x400dd32e7b3d8e00              # double 3.728116
	.quad	0x4020f86034f3fd93              # double 8.4851089999999996
	.quad	0x4023e73a14cec41e              # double 9.9516150000000003
	.quad	0x402133879c4113c7              # double 8.6006440000000008
	.quad	0x3f6bb2788db0574b              # double 0.0033809999999999999
	.quad	0x401cc46801711948              # double 7.1918030000000002
	.quad	0x4020997d06bbdbe4              # double 8.2997820000000004
	.quad	0x401711cc96462802              # double 5.7673819999999996
	.quad	0x400a93e4ef0281ba              # double 3.3222139999999998
	.quad	0x40015d188f42fe82              # double 2.1704569999999999
	.quad	0x3ffbe07e5a78f25a              # double 1.742308
	.quad	0x4021b0f94c87980f              # double 8.8456519999999994
	.quad	0x4020e47021d10b20              # double 8.4461680000000001
	.quad	0x401952af9a8cdea0              # double 6.3307479999999998
	.quad	0x4021dcd983947497              # double 8.9313470000000006
	.quad	0x401da05faebc408e              # double 7.4066150000000004
	.quad	0x400d03b2dd377e1c              # double 3.6268060000000002
	.quad	0x4022f6b6e0d23d4f              # double 9.4818639999999998
	.quad	0x4023d5cdb37c99af              # double 9.9175850000000007
	.quad	0x401ef47bedb72820              # double 7.7387540000000001
	.quad	0x4022fc8b0079a283              # double 9.4932479999999994
	.quad	0x3fbcf5903a7546d4              # double 0.113122
	.quad	0x40025c8d9f9053a0              # double 2.2951920000000001
	.quad	0x40004edaa92e6213              # double 2.038503
	.quad	0x400bb17481b21c47              # double 3.4616479999999998
	.quad	0x401c07d1bb4916ca              # double 7.0076359999999998
	.quad	0x401b12c343b70ef5              # double 6.7683229999999996
	.quad	0x4015b985271bcdbc              # double 5.4311720000000001
	.quad	0x402209b328b6d86f              # double 9.0189450000000004
	.quad	0x401c12706d506573              # double 7.0180069999999999
	.quad	0x3ffabb7f9d6f1130              # double 1.670776
	.quad	0x4005321815a07b35              # double 2.6494599999999999
	.quad	0x401445742dcf4624              # double 5.0678260000000002
	.quad	0x3ff8812dfd694ccb              # double 1.5315380000000001
	.quad	0x3ffdf0142f61ed5b              # double 1.871113
	.quad	0x402289b23dd54da5              # double 9.2689380000000003
	.quad	0x400f215ca6ca03c5              # double 3.8912900000000001
	.quad	0x401956d2aa5c5f7c              # double 6.3347879999999996
	.quad	0x401d7b24a6a875d5              # double 7.3702569999999996
	.quad	0x40217cf0520d130e              # double 8.744021
	.quad	0x4001f7353b4b2fa9              # double 2.2457069999999999
	.quad	0x3ff74a350d2806af              # double 1.4556169999999999
	.quad	0x4009f924af0bf1a6              # double 3.2466520000000001
	.quad	0x40026238da3c2118              # double 2.2979599999999998
	.quad	0x4007f9ee88df3733              # double 2.9970370000000002
	.quad	0x4020f02d16b97fe9              # double 8.4690940000000001
	.quad	0x40091892684cf074              # double 3.1369980000000002
	.quad	0x3ff9cf227d028a1e              # double 1.61307
	.quad	0x3ff917f51efb6dca              # double 1.568349
	.quad	0x3ff10f98fa376923              # double 1.066308
	.quad	0x40233ed56b00ffda              # double 9.6227219999999996
	.quad	0x4022d65668c26139              # double 9.418628
	.quad	0x400dbc829cfdd228              # double 3.7170459999999999
	.quad	0x3ff7dee568a50508              # double 1.4919180000000001
	.quad	0x400d973affb04ee8              # double 3.6988430000000001
	.quad	0x401adfd113836a83              # double 6.7185709999999998
	.quad	0x3ffe4f7985271bce              # double 1.8944030000000001
	.quad	0x3ffc7cc8de2ac322              # double 1.780465
	.quad	0x40232e48a58b3f64              # double 9.5903980000000004
	.quad	0x3fd8005814940bbb              # double 0.37502099999999999
	.quad	0x401ef88fc9363f57              # double 7.7427359999999998
	.quad	0x3fde2ae07e5a78f2              # double 0.47136699999999998
	.quad	0x401e57a6bd6e8af8              # double 7.5855969999999999
	.quad	0x3fe11016ce789e77              # double 0.53321399999999997
	.quad	0x400a23779e9d0e99              # double 3.2673179999999999
	.quad	0x40116c01e68a0d35              # double 4.3554760000000003
	.quad	0x40065668c2613900              # double 2.792192
	.quad	0x3f907314ca925fe9              # double 0.016063999999999998
	.quad	0x4010e647baa9b49a              # double 4.2248830000000002
	.quad	0x4017e65dbfceb789              # double 5.9749670000000004
	.quad	0x40223f5f2cb64170              # double 9.1237729999999999
	.quad	0x401ba6299524bfd3              # double 6.9122680000000001
	.quad	0x4022bd6323bbc6eb              # double 9.3698969999999999
	.quad	0x4005a869c66d373b              # double 2.707233
	.quad	0x401136523704790c              # double 4.3030480000000004
	.quad	0x3ff65be3c105186e              # double 1.3974340000000001
	.quad	0x4003e3675ddd2ae9              # double 2.4860370000000001
	.quad	0x40196d099e0e7360              # double 6.3564819999999997
	.quad	0x3ff67c58ab92c062              # double 1.4053580000000001
	.quad	0x40039bd72bcb5fe5              # double 2.4510939999999999
	.quad	0x400fd771001d5c31              # double 3.9801959999999998
	.quad	0x400bb563a9f383f1              # double 3.4635690000000001
	.quad	0x401f1cb70ac3a861              # double 7.7780420000000001
	.quad	0x40179f8e7ddca4b1              # double 5.9058169999999999
	.quad	0x4015c65e02ea960b              # double 5.4437179999999996
	.quad	0x3ff971d3ed527e52              # double 1.59029
	.quad	0x4017caebc408d8ed              # double 5.9481650000000004
	.quad	0x3ffd2595bbbe8790              # double 1.8216760000000001
	.quad	0x401cc924f227d029              # double 7.1964300000000003
	.quad	0x401ea86d2ed783e0              # double 7.664479
	.quad	0x400ebbd1ed9dfdac              # double 3.8417089999999998
	.quad	0x3ffbde2ef4e0114d              # double 1.741744
	.quad	0x3feefb3311a543f2              # double 0.96816400000000002
	.quad	0x4017386833c6002a              # double 5.8050850000000001
	.quad	0x3fe0caf0bf1a5ca3              # double 0.52477300000000004
	.quad	0x3fc1c5d63886594b              # double 0.13885
	.quad	0x3fe4f572de43ed96              # double 0.65496200000000004
	.quad	0x4017d1fb3fa6defc              # double 5.9550599999999996
	.quad	0x4013da237cdcca71              # double 4.9630260000000002
	.quad	0x40090af5fd47bedb              # double 3.1303519999999998
	.quad	0x401a0b8d3f1843c4              # double 6.5112810000000003
	.quad	0x4012c88bda9435ad              # double 4.6958460000000004
	.quad	0x400f3ef9db22d0e5              # double 3.9057499999999998
	.quad	0x401bae1ef73c0c20              # double 6.9200400000000002
	.quad	0x40220753a3ec02f3              # double 9.01431
	.quad	0x401960b524399b2c              # double 6.3444409999999998
	.quad	0x401e5fa0d77b7c78              # double 7.5933869999999998
	.quad	0x3fee4e39b456b442              # double 0.94704900000000003
	.quad	0x400a78afc47e49b2              # double 3.308929
	.quad	0x3fd542fa5093964a              # double 0.33221299999999998
	.quad	0x401c074751ce28ed              # double 7.0071079999999997
	.quad	0x40136b1e9f277814              # double 4.854609
	.quad	0x400ba9ccb7d41744              # double 3.45791
	.quad	0x3ff1f9e8c47a17f4              # double 1.123513
	.quad	0x40207c044284dfce              # double 8.2422199999999997
	.quad	0x40220799e518f3ed              # double 9.0148460000000004
	.quad	0x40229a73d5bab218              # double 9.3016649999999998
	.quad	0x3fd3595bbbe878fb              # double 0.30232900000000001
	.quad	0x400e441dd1a21ea3              # double 3.7832599999999998
	.quad	0x401f48a82a5614e0              # double 7.8209540000000004
	.quad	0x40202a5ca29845dd              # double 8.0827380000000009
	.quad	0x401e8be9c886162f              # double 7.6366339999999999
	.quad	0x400ae5cc426351df              # double 3.362206
	.quad	0x400a8f9e3864cb5c              # double 3.3201260000000001
	.quad	0x3ff415054ac29bf1              # double 1.2551319999999999
	.quad	0x40115b9e060fe47a              # double 4.3394700000000004
	.quad	0x3ff202784a9478c8              # double 1.1256029999999999
	.quad	0x40013e7e1fc08fa8              # double 2.1555140000000002
	.quad	0x3ff90a66559f6ec6              # double 1.5650390000000001
	.quad	0x401d97b41bfbdf09              # double 7.3981479999999999
	.quad	0x4016805a2d72ffd2              # double 5.6253440000000001
	.quad	0x4010d2d1287c200c              # double 4.2058759999999999
	.quad	0x40142474d9c6b053              # double 5.0356019999999999
	.quad	0x40218f7dd872f33d              # double 8.7802570000000006
	.quad	0x3ff6801d5c31593e              # double 1.4062779999999999
	.quad	0x3ff7021c044284e0              # double 1.438015
	.quad	0x4017e4c1a8ac5c14              # double 5.973395
	.quad	0x3ff3381733226c3c              # double 1.2011940000000001
	.quad	0x401862eb5f5f0b28              # double 6.0966009999999997
	.quad	0x401e925742dcf462              # double 7.6429109999999998
	.quad	0x40235522ea0fd3b3              # double 9.6662820000000007
	.quad	0x40043615ebfa8f7e              # double 2.5264090000000001
	.quad	0x401a2fd0d0678c00              # double 6.5466949999999997
	.quad	0x401ca6573215fcc2              # double 7.1624420000000004
	.quad	0x3fe7828c36da87a0              # double 0.73468599999999995
	.quad	0x401714d50ebaade6              # double 5.7703439999999997
	.quad	0x40203499d0203e64              # double 8.1027360000000001
	.quad	0x400a9ff583a53b8e              # double 3.3281049999999999
	.quad	0x4017df2f123c42a6              # double 5.9679529999999996
	.quad	0x40145c3009b30729              # double 5.0900270000000001
	.quad	0x4001f0329802c0a5              # double 2.2422840000000002
	.quad	0x4021f9e68a0d349c              # double 8.9880870000000001
	.quad	0x4014fa3486f049aa              # double 5.2443410000000004
	.quad	0x401521cf355cd91f              # double 5.2830170000000001
	.quad	0x401c8e4755ffe6d6              # double 7.1389440000000004
	.quad	0x3fefd814940bbb1f              # double 0.99512699999999998
	.quad	0x4018187e7c06e19c              # double 6.0239200000000004
	.quad	0x3ffbdb1d92b7fe09              # double 1.7409950000000001
	.quad	0x4001b7e77d523b36              # double 2.2147969999999999
	.quad	0x401c16ea854477ff              # double 7.0223789999999999
	.quad	0x4005cfc0d2c386d3              # double 2.726442
	.quad	0x401b48d79d0a6762              # double 6.8211349999999999
	.quad	0x3ff94b81733226c4              # double 1.5809340000000001
	.quad	0x4011d5bc44bf4cb2              # double 4.4587260000000004
	.quad	0x40139376922d948e              # double 4.8940070000000002
	.quad	0x3fd00489d27c3937              # double 0.25027700000000003
	.quad	0x3fc6d16b97fe8ee7              # double 0.17826600000000001
	.quad	0x401b1441bb8c32a9              # double 6.7697820000000002
	.quad	0x4001038194c01605              # double 2.1267119999999999
	.quad	0x401e2aed56b00ffe              # double 7.5419210000000003
	.quad	0x4020f3bd5992428d              # double 8.4760539999999995
	.quad	0x4013b3c42a66dbd7              # double 4.9255529999999998
	.quad	0x402019f98b71b8aa              # double 8.050732
	.quad	0x4015d6d5cfaacd9f              # double 5.4598000000000004
	.quad	0x400b8fda836eb4ea              # double 3.4452410000000002
	.quad	0x3fdcb1e9f2778141              # double 0.44835900000000001
	.quad	0x3ff3cbd33d29563b              # double 1.2372620000000001
	.quad	0x4020e1a1db877ab3              # double 8.4406879999999997
	.quad	0x4007b41d8e864021              # double 2.9629470000000002
	.quad	0x4023ce68a0d349bf              # double 9.9031420000000007
	.quad	0x40170e69ad42c3ca              # double 5.7640750000000001
	.quad	0x40154d2d87f88766              # double 5.3253690000000002
	.quad	0x4022d32441fea811              # double 9.4123859999999996
	.quad	0x402143c85c24c405              # double 8.6323880000000006
	.quad	0x40138c0724b76f6d              # double 4.8867459999999996
	.quad	0x402246256366d7a5              # double 9.1370039999999992
	.quad	0x4014c1b9f98b71b9              # double 5.1891860000000003
	.quad	0x400deef566490a35              # double 3.741679
	.quad	0x401af9e7fb267c6c              # double 6.7440490000000004
	.quad	0x3fe3aba9d1f60179              # double 0.61470499999999995
	.quad	0x401203c536d655e3              # double 4.5036820000000004
	.quad	0x40016e2b063e07a3              # double 2.1787930000000002
	.quad	0x4018cb04ee7c49fd              # double 6.1982609999999996
	.quad	0x40101e24febd09e1              # double 4.0294379999999999
	.quad	0x3ff57b1c0010c6f8              # double 1.3425560000000001
	.quad	0x400a34330d73860a              # double 3.2754880000000002
	.quad	0x401e56bc1eff9f88              # double 7.584702
	.quad	0x400b3f138bcdfefc              # double 3.405799
	.quad	0x401ed24bfd2e9468              # double 7.7053679999999999
	.quad	0x400bf07182235b4f              # double 3.4924040000000001
	.quad	0x4023d9fe004b7f5a              # double 9.9257659999999994
	.quad	0x4006eb5aa715831f              # double 2.864919
	.quad	0x4000d2b239a38fbd              # double 2.1028790000000002
	.quad	0x401d609741d084e8              # double 7.3443269999999998
	.quad	0x400870d413122b7c              # double 3.0550920000000001
	.quad	0x401e392ea52ef912              # double 7.5558420000000002
	.quad	0x40148f8055fbb518              # double 5.1401380000000003
	.quad	0x400362656abde3fc              # double 2.4230450000000001
	.quad	0x4017001fb82c2bd8              # double 5.750121
	.quad	0x4021fb6cbd987c63              # double 8.9910639999999997
	.quad	0x4022eede76427c7c              # double 9.4665409999999994
	.quad	0x401170a41a261bf3              # double 4.3600009999999996
	.quad	0x401bc7e28240b780              # double 6.9451999999999998
	.quad	0x4021f1be8ff327aa              # double 8.9721569999999993
	.quad	0x40220861e92923e6              # double 9.0163720000000005
	.quad	0x4021e87314ca9260              # double 8.9540030000000002
	.quad	0x401bbc5da6a44418              # double 6.9339510000000004
	.quad	0x3ffd84fb1183b603              # double 1.8449660000000001
	.quad	0x4022eb033a4723ab              # double 9.459009
	.quad	0x400abd7ba6698bb5              # double 3.3425210000000001
	.quad	0x40081f7d73c92578              # double 3.0153759999999998
	.quad	0x3fdb9713ad5bee3d              # double 0.43109599999999998
	.quad	0x401071bf37b8d3f2              # double 4.1110810000000004
	.quad	0x3ffe4096feb4a665              # double 1.8907689999999999
	.quad	0x4015cdbad3a604e2              # double 5.4509080000000001
	.quad	0x400029670196d8f5              # double 2.020216
	.quad	0x40203696c3fc43b3              # double 8.1066190000000002
	.quad	0x4010df8d2e514c23              # double 4.2183120000000001
	.quad	0x40218f48c2e770bd              # double 8.779852
	.quad	0x401d6008205ff1d8              # double 7.3437809999999998
	.quad	0x3ff1bfb267c6b8b7              # double 1.1093010000000001
	.quad	0x400f0308787485e4              # double 3.8764810000000001
	.quad	0x400c993ab430f495              # double 3.5748190000000002
	.quad	0x3fdebb7739f340d5              # double 0.48019200000000001
	.quad	0x4023e2aef2c73259              # double 9.9427409999999998
	.quad	0x401d01c1d6cf850e              # double 7.2517160000000001
	.quad	0x401147a80cf9e386              # double 4.3199769999999997
	.quad	0x401b3a76965f5276              # double 6.8070930000000001
	.quad	0x40141256bca5375d              # double 5.0179090000000004
	.quad	0x3fe085ccc89b0ee5              # double 0.51633300000000004
	.quad	0x401f836e71cda2b6              # double 7.8783510000000003
	.quad	0x4013cdf266ba493d              # double 4.9511200000000004
	.quad	0x3ffc6adc4c9c90c5              # double 1.776089
	.quad	0x40237e2d6238da3c              # double 9.7464399999999997
	.quad	0x4015831e3a7daa50              # double 5.3780450000000002
	.quad	0x401dd01d5c31593e              # double 7.4532369999999997
	.quad	0x4001f455a7d24181              # double 2.2443040000000001
	.quad	0x40201c5308bb9064              # double 8.0553209999999992
	.quad	0x3ffb264c2f837b4a              # double 1.69685
	.quad	0x3fd438583621fafd              # double 0.31593900000000003
	.quad	0x40230874ea8da7f4              # double 9.5165170000000003
	.quad	0x40109fb267c6b8b7              # double 4.1559540000000004
	.quad	0x3ff7e2413db7f173              # double 1.4927379999999999
	.quad	0x3fc30b6b6e0d23d5              # double 0.148786
	.quad	0x4017863baba7b917              # double 5.881087
	.quad	0x4016630d306a2b17              # double 5.59673
	.quad	0x40217a39e6ab9b24              # double 8.7387230000000002
	.quad	0x40038eec7c957cd4              # double 2.4447869999999998
	.quad	0x3febaec6bce8533b              # double 0.86508499999999999
	.quad	0x3fed4a6a875d56f3              # double 0.91533399999999998
	.quad	0x3ff51986b9c304cd              # double 1.318732
	.quad	0x402256ebb341e14c              # double 9.1697670000000002
	.quad	0x40157cdab191dde3              # double 5.3719279999999996
	.quad	0x402268624dd2f1aa              # double 9.203875
	.quad	0x3ffa3dfb0d51f81a              # double 1.6401319999999999
	.quad	0x40141200c0f01fb8              # double 5.0175809999999998
	.quad	0x4012dae89eba6aca              # double 4.7137779999999996
	.quad	0x402290ff327aa68f              # double 9.2831969999999995
	.quad	0x40219432a8c9b845              # double 8.7894489999999994
	.quad	0x4016902c0a4a05de              # double 5.6407930000000004
	.quad	0x3fc7c7f77af64064              # double 0.18579000000000001
	.quad	0x4010190afe60c38f              # double 4.0244559999999998
	.quad	0x401cd3c968943e10              # double 7.206823
	.quad	0x3ff8b2096787ce96              # double 1.543466
	.quad	0x40152336deb95e5b              # double 5.284389
	.quad	0x4015def99806f263              # double 5.4677490000000004
	.quad	0x4021a122749f0e4e              # double 8.8147160000000007
	.quad	0x401f5743201040c0              # double 7.8352170000000001
	.quad	0x4006e1e4f765fd8b              # double 2.8603000000000001
	.quad	0x401607082491afc0              # double 5.5068669999999997
	.quad	0x3fe693bc0a06e9ff              # double 0.70553399999999999
	.quad	0x400f511622813448              # double 3.914593
	.quad	0x3fef1873ffac1d2a              # double 0.97173500000000002
	.quad	0x40199b267c6b8b69              # double 6.4015139999999997
	.quad	0x4006e4abe6a337a8              # double 2.861656
	.quad	0x401e335e74299d88              # double 7.5501649999999997
	.quad	0x401faed8d36b4c7f              # double 7.9207489999999998
	.quad	0x400bff01322f2735              # double 3.499514
	.quad	0x3ff4104e618ce2d2              # double 1.253981
	.quad	0x4013c33fc86cebbc              # double 4.9406730000000003
	.quad	0x4001753b4b2fa93b              # double 2.182242
	.quad	0x40218a0f2becedd5              # double 8.7696470000000009
	.quad	0x3ffd5348b220791c              # double 1.8328329999999999
	.quad	0x401176c1a048e044              # double 4.3659730000000003
	.quad	0x402365eefe4ffc98              # double 9.6990890000000007
	.quad	0x4018ef5c28f5c28f              # double 6.2337499999999997
	.quad	0x3fcad759ee88df37              # double 0.20969699999999999
	.quad	0x400b25742dcf4624              # double 3.3932880000000001
	.quad	0x3fd5a53fc0096feb              # double 0.33821099999999998
	.quad	0x400fcb8066c2acb8              # double 3.9743659999999998
	.quad	0x4005668986fcdee3              # double 2.6750669999999999
	.quad	0x3ff14586876e1deb              # double 1.079474
	.quad	0x400f37e56473471f              # double 3.9022929999999998
	.quad	0x401872eec7c957cd              # double 6.1122389999999998
	.quad	0x4011f56d5cfaacda              # double 4.4896750000000001
	.quad	0x4014617225b749ae              # double 5.0951620000000002
	.quad	0x401e54f3343fa2ad              # double 7.5829589999999997
	.quad	0x3ff35289dadfb507              # double 1.207651
	.quad	0x3fd6cb252ce032db              # double 0.35614899999999999
	.quad	0x4011f96787ce95fb              # double 4.4935590000000003
	.quad	0x4014f1e0828c36db              # double 5.2362080000000004
	.quad	0x4016b739f340d4dc              # double 5.6789319999999996
	.quad	0x3ff8d271bcdbbe01              # double 1.5513779999999999
	.quad	0x40219611fd5885d3              # double 8.7931059999999999
	.quad	0x40225bf83382e44b              # double 9.1796279999999992
	.quad	0x40056c46950fc71d              # double 2.6778689999999998
	.quad	0x401dc96dd26b723f              # double 7.4467080000000001
	.quad	0x4018f25b749adc90              # double 6.2366770000000002
	.quad	0x40020e2003ab862b              # double 2.2568969999999999
	.quad	0x4012ea64c2f837b5              # double 4.7289000000000003
	.quad	0x40154df505d0fa59              # double 5.32613
	.quad	0x3ff917507e9d94d1              # double 1.568192
	.quad	0x4022a9096bb98c7e              # double 9.3301499999999997
	.quad	0x400ef8c2a454de7f              # double 3.8714650000000002
	.quad	0x401c2feda6612839              # double 7.046805
	.quad	0x3ffed86876e1dead              # double 1.927834
	.quad	0x4013e63b688bda94              # double 4.9748359999999998
	.quad	0x401d6738a3b57c4e              # double 7.3508019999999998
	.quad	0x3fc7cf70153bd167              # double 0.18601799999999999
	.quad	0x3ffda88051c9f72f              # double 1.8536379999999999
	.quad	0x40095da1ec4e7254              # double 3.1707190000000001
	.quad	0x401e2a276b7ed41b              # double 7.5411659999999995
	.quad	0x401e028954a7f801              # double 7.5024769999999998
	.quad	0x3ff7ae9468017119              # double 1.4801219999999999
	.quad	0x40196c3b4f616723              # double 6.3556949999999999
	.quad	0x40021c0e38a7e73a              # double 2.2636989999999999
	.quad	0x40074e9c4545846f              # double 2.9133840000000002
	.quad	0x4008825a682b6284              # double 3.0636489999999998
	.quad	0x400ca8a3f8982cb2              # double 3.582344
	.quad	0x401f5f926c7eae5c              # double 7.8433320000000002
	.quad	0x40225bae03b3e9a7              # double 9.1790620000000001
	.quad	0x40222d6c0d6f544c              # double 9.0887150000000005
	.quad	0x4006fb3bfb58d152              # double 2.8726729999999998
	.quad	0x4021c7c5692b3cc5              # double 8.8901780000000006
	.quad	0x3fefe6fd651b0ccc              # double 0.99694700000000002
	.quad	0x401f0cbee807bbb6              # double 7.7624469999999999
	.quad	0x4021c7290abb44e5              # double 8.8889849999999999
	.quad	0x4023c689ca18bd66              # double 9.8877699999999997
	.quad	0x40159d976ff3ade2              # double 5.4038979999999999
	.quad	0x4023cfd7c2ca148c              # double 9.9059430000000006
	.quad	0x40010151a437824d              # double 2.1256439999999999
	.quad	0x401679cbee807bbb              # double 5.6189419999999997
	.quad	0x4010864c729f59cd              # double 4.131151
	.quad	0x401ceaa8a82a5615              # double 7.2291590000000001
	.quad	0x400afd512ec6bce8              # double 3.3736899999999999
	.quad	0x400cf4330d73860a              # double 3.6192380000000002
	.quad	0x3ff52ffe2a3cea6c              # double 1.324217
	.quad	0x401beb0dd82fd75e              # double 6.9795449999999999
	.quad	0x401de35b0bbf50e3              # double 7.4720269999999998
	.quad	0x401c557b41bfbdf1              # double 7.0834780000000004
	.quad	0x40073b19e731d2e1              # double 2.9038580000000001
	.quad	0x4022ea5482385404              # double 9.4576759999999993
	.quad	0x4001e7d4e09784ec              # double 2.2381989999999998
	.quad	0x40128eeed8904f6e              # double 4.639583
	.quad	0x3ff4073cd573647c              # double 1.2517670000000001
	.quad	0x402030c111ada76e              # double 8.0952230000000007
	.quad	0x400e4392e1ef73c1              # double 3.7829950000000001
	.quad	0x401bd73bc903ea70              # double 6.9601889999999997
	.quad	0x4010a112ba16e7a3              # double 4.1572979999999999
	.quad	0x4005d28d002e2329              # double 2.727808
	.quad	0x401f70214ad362e9              # double 7.8595019999999999
	.quad	0x401112ab68cef673              # double 4.2682320000000002
	.quad	0x40201f18c9fb6135              # double 8.0607360000000003
	.quad	0x3ff60094e5d5b24f              # double 1.3751420000000001
	.quad	0x400a68ede54b48d4              # double 3.3012350000000001
	.quad	0x401e892bc2fc6973              # double 7.6339560000000004
	.quad	0x40100c5eb313be23              # double 4.0120800000000001
	.quad	0x40111c84f8f8a4c2              # double 4.2778510000000001
	.quad	0x40134109d0635a42              # double 4.8135139999999996
	.quad	0x401d986338b47c74              # double 7.3988160000000001
	.quad	0x400879b8023a6ce3              # double 3.0594329999999998
	.quad	0x40239c36fc158fb4              # double 9.8051069999999995
	.quad	0x401b5052502eec7d              # double 6.8284390000000004
	.quad	0x401df74cd31769a9              # double 7.4915039999999999
	.quad	0x400b9bfc6540cc79              # double 3.451165
	.quad	0x401e943201040bfe              # double 7.6447219999999998
	.quad	0x400997a7008a697b              # double 3.199049
	.quad	0x401e02be0589acbd              # double 7.5026780000000004
	.quad	0x401dacb039ef0f17              # double 7.418641
	.quad	0x40039471715c63ae              # double 2.4474819999999999
	.quad	0x40206b0af5fd47bf              # double 8.2090680000000003
	.quad	0x401edba16e7a311f              # double 7.7144830000000004
	.quad	0x3ffe9da8bd230b9e              # double 1.9134910000000001
	.quad	0x40166bee807bbb62              # double 5.6054019999999998
	.quad	0x4023142374794ea0              # double 9.5393329999999992
	.quad	0x40114d1394317acc              # double 4.3252699999999997
	.quad	0x3ff5b5d67ba237ce              # double 1.356894
	.quad	0x4002b368ad688377              # double 2.337602
	.quad	0x401998dcdb37c99b              # double 6.3992800000000001
	.quad	0x400819756c93a711              # double 3.0124309999999999
	.quad	0x3ffd0a0f4d7add16              # double 1.814956
	.quad	0x402199c4da9003ef              # double 8.8003300000000007
	.quad	0x40080de1198aeb81              # double 3.006777
	.quad	0x40003a1fd1569f49              # double 2.028381
	.quad	0x401428561d4306e6              # double 5.0393910000000002
	.quad	0x400847229e90795f              # double 3.0347339999999998
	.quad	0x401c494898f605ab              # double 7.0715659999999998
	.quad	0x40064771c970f7ba              # double 2.7848850000000001
	.quad	0x401149a95421c044              # double 4.3219349999999999
	.quad	0x401bf3305100a394              # double 6.9874890000000001
	.quad	0x40215ca4f440af1d              # double 8.6809460000000005
	.quad	0x3ffc4ff0025bfad3              # double 1.7695160000000001
	.quad	0x40137ee0f3cb3e57              # double 4.8739049999999997
	.quad	0x401db23854046413              # double 7.4240430000000002
	.quad	0x40103e7b3d8e0008              # double 4.0610169999999997
	.quad	0x401e7d4bf0995aaf              # double 7.6223599999999995
	.quad	0x401a9b862b27cbf7              # double 6.6518790000000001
	.quad	0x4017460780fdc161              # double 5.8183879999999997
	.quad	0x40226b6b2af14552              # double 9.2098019999999998
	.quad	0x4017cd523b3636f4              # double 5.9505090000000003
	.quad	0x401c607a28bb0a2d              # double 7.0942160000000003
	.quad	0x4002d5bff04577d9              # double 2.3543699999999999
	.quad	0x4014bb5d031055b9              # double 5.1829720000000004
	.quad	0x3fe48900c521dda0              # double 0.64172399999999996
	.quad	0x3ffbccbf2b239a39              # double 1.737487
	.quad	0x4023071c75818c5d              # double 9.5138890000000007
	.quad	0x401e33f034b0e1b5              # double 7.5507210000000002
	.quad	0x4010b7e5a78f25a2              # double 4.1795869999999997
	.quad	0x4009143526527a20              # double 3.1348669999999998
	.quad	0x4023f1de26916441              # double 9.972398
	.quad	0x401bf547e06961c3              # double 6.9895319999999996
	.quad	0x401b8332acfb762e              # double 6.8781230000000004
	.quad	0x3fcf9767903211cb              # double 0.246808
	.quad	0x400fd2630ec31162              # double 3.9777279999999999
	.quad	0x4015e2120e1f7d74              # double 5.4707720000000002
	.quad	0x3ffd90bd87b56b87              # double 1.847837
	.quad	0x401c20164840e172              # double 7.0313350000000003
	.quad	0x3ff86cdd0d8cb07d              # double 1.526578
	.quad	0x4013761cffeb074a              # double 4.8653449999999996
	.quad	0x3fef2cf0f9d2bf55              # double 0.97423599999999999
	.quad	0x3ff125321e603d57              # double 1.0715809999999999
	.quad	0x401d84ca925fe975              # double 7.3796790000000003
	.quad	0x40223bf487fcb924              # double 9.1171000000000006
	.quad	0x4017ab0f6ad70e6f              # double 5.9170509999999998
	.quad	0x400bd9ae0c176577              # double 3.4812889999999999
	.quad	0x401fd275ab7dc7ac              # double 7.955527
	.quad	0x4010d44c37e6f71a              # double 4.2073219999999996
	.quad	0x400e384fd2a62aa2              # double 3.7774960000000002
	.quad	0x40057a7fc32ebe59              # double 2.6848139999999998
	.quad	0x401d06f049a9973e              # double 7.2567760000000003
	.quad	0x4010ab135979181a              # double 4.1670660000000002
	.quad	0x400e709741d084e8              # double 3.8049759999999999
	.quad	0x40213d5bab21815a              # double 8.6198399999999999
	.quad	0x401d1a00e27e0efa              # double 7.2753940000000004
	.quad	0x401b144f1a1986ba              # double 6.7698330000000002
	.quad	0x400f2cf398e97072              # double 3.8969490000000002
	.quad	0x40054cbe1eb4202e              # double 2.6624720000000002
	.quad	0x4009879463cfb331              # double 3.191201
	.quad	0x4022c168d759ee89              # double 9.3777530000000002
	.quad	0x40226fd50225742e              # double 9.2184220000000003
	.quad	0x4014d15831f03d14              # double 5.2044379999999997
	.quad	0x4019463e07a28bb1              # double 6.3185960000000003
	.quad	0x401addcdb37c99af              # double 6.7166050000000004
	.quad	0x401a3940fecdd0d9              # double 6.5559120000000002
	.quad	0x3ff54d4ed2cbea4f              # double 1.3313740000000001
	.quad	0x40125cbfb15b573f              # double 4.5905750000000003
	.quad	0x402255cb35f3d7d4              # double 9.1675660000000007
	.quad	0x4018c2e59af9ebea              # double 6.1903290000000002
	.quad	0x401fad590c0ad03e              # double 7.9192850000000004
	.quad	0x4019bce789e774ef              # double 6.4344770000000002
	.quad	0x401178576cce5f74              # double 4.367521
	.quad	0x40154d2e514c22ee              # double 5.3253719999999998
	.quad	0x40010c69b5a63f9a              # double 2.1310609999999999
	.quad	0x402087f27fe4bcae              # double 8.2655220000000007
	.quad	0x3ff08e10cf5b1c86              # double 1.0346839999999999
	.quad	0x40155edcc20d562a              # double 5.3426390000000001
	.quad	0x4000c31b584b1ab1              # double 2.0952670000000002
	.quad	0x400b531b9b66f933              # double 3.4155799999999998
	.quad	0x401408be2f7b17ce              # double 5.0085379999999997
	.quad	0x402236a1e81cb46c              # double 9.1067040000000005
	.quad	0x400eb7d41743e964              # double 3.8397600000000001
	.quad	0x3fffd9d0203e63e9              # double 1.990677
	.quad	0x402205983947496b              # double 9.0109270000000006
	.quad	0x3fe6b5935fc3b4f6              # double 0.70966499999999999
	.quad	0x401755c31593e5fb              # double 5.8337519999999996
	.quad	0x4004973d9ec70004              # double 2.5738479999999999
	.quad	0x401a3117720c8cd6              # double 6.5479409999999998
	.quad	0x401809e7fb267c6c              # double 6.0096740000000004
	.quad	0x40237c280ae10492              # double 9.7424929999999996
	.quad	0x401b5c7f34938583              # double 6.8403289999999997
	.quad	0x3fe1ba98eda22f6a              # double 0.55402799999999996
	.quad	0x400e00895d0b73d2              # double 3.7502620000000002
	.quad	0x4021df19d66adb40              # double 8.9357439999999996
	.quad	0x3fe590d5a5b9628d              # double 0.67393000000000003
	.quad	0x4015a10dbf0563ed              # double 5.4072789999999999
	.quad	0x40217ccfd08d4bad              # double 8.7437729999999991
	.quad	0x3ffc4509bf9c62a2              # double 1.7668550000000001
	.quad	0x4012f41919ac7970              # double 4.7383769999999998
	.quad	0x4020bf0b06c43f60              # double 8.3731310000000008
	.quad	0x401559389b52007e              # double 5.3371300000000002
	.quad	0x4014abf76a2f48c3              # double 5.1679360000000001
	.quad	0x3fe5be63e8dda48b              # double 0.67949099999999996
	.quad	0x401e5d4c76d117b5              # double 7.5911119999999998
	.quad	0x401684e2b063e07a              # double 5.6297709999999999
	.quad	0x402371635610adcd              # double 9.7214609999999996
	.quad	0x4019a17225b749ae              # double 6.4076620000000002
	.quad	0x3fe32d72ffd1dcd7              # double 0.599298
	.quad	0x4015006705c896dd              # double 5.2503929999999999
	.quad	0x40186291fb3fa6df              # double 6.09626
	.quad	0x400fcdae3e6c4c59              # double 3.9754299999999998
	.quad	0x3ff13574f722e1ac              # double 1.0755509999999999
	.quad	0x400a63e5321e603d              # double 3.2987769999999998
	.quad	0x400f22da554b8bf0              # double 3.8920180000000002
	.quad	0x4013c3c792d1287c              # double 4.9411909999999999
	.quad	0x4012fe308787485e              # double 4.7482319999999998
	.quad	0x402039105e1c1509              # double 8.1114529999999991
	.quad	0x401f9a6c1a048e04              # double 7.9008029999999998
	.quad	0x40041f0bae89eba7              # double 2.5151590000000001
	.quad	0x3fefab367a0f9097              # double 0.98965000000000002
	.quad	0x401bcff4fd6d7e89              # double 6.9530830000000003
	.quad	0x401ea068986fcdee              # double 7.6566489999999998
	.quad	0x4022c92c8c5004fb              # double 9.3929179999999998
	.quad	0x401bfc1ca3a4b557              # double 6.9962030000000004
	.quad	0x40070acb85a4f00f              # double 2.880271
	.quad	0x40232b21a2e7f6f5              # double 9.5842410000000004
	.quad	0x402223cfd4bf0996              # double 9.0699450000000006
	.quad	0x40136cba732df506              # double 4.8561800000000002
	.quad	0x3fe9926e978d4fdf              # double 0.79912499999999997
	.quad	0x402219e646f15619              # double 9.0505849999999999
	.quad	0x3fd200b88ca3e7d1              # double 0.28129399999999999
	.quad	0x3ff4353f7ced9168              # double 1.2629999999999999
	.quad	0x40197c3c18b502ac              # double 6.3713230000000003
	.quad	0x40191036006d0d4a              # double 6.2658310000000004
	.quad	0x402297e52157689d              # double 9.2966700000000007
	.quad	0x3ff2dfd04a2fcefb              # double 1.1796420000000001
	.quad	0x400cfb78cc9a77e6              # double 3.622789
	.quad	0x401ddc77143393ab              # double 7.4652979999999998
	.quad	0x3fcecd4aa10e0221              # double 0.24063999999999999
	.quad	0x40125a3b14a90471              # double 4.5881160000000003
	.quad	0x3fda497b7414a4d3              # double 0.41073500000000002
	.quad	0x3fdd7cc39ffd60e9              # double 0.46073999999999998
	.quad	0x401cd1ceaf251c19              # double 7.2048899999999998
	.quad	0x40213069e7fb267c              # double 8.5945579999999992
	.quad	0x4018601b866e43aa              # double 6.0938549999999996
	.quad	0x3fd248909289dae0              # double 0.28567900000000002
	.quad	0x4017d42bb6672fba              # double 5.957198
	.quad	0x401b7573a797891e              # double 6.8646989999999999
	.quad	0x3ffffef49cf56ead              # double 1.9997450000000001
	.quad	0x400f63422467be55              # double 3.9234659999999999
	.quad	0x40226b660e51d25b              # double 9.2097630000000006
	.quad	0x4021f2ba9d1f6018              # double 8.9740800000000007
	.quad	0x3fc75dbb9cf9a06a              # double 0.18254799999999999
	.quad	0x3f6cc532a497fa5d              # double 0.0035119999999999999
	.quad	0x3ff20b2e9ccb7d41              # double 1.1277299999999999
	.quad	0x3ffb52c061847f56              # double 1.707703
	.quad	0x4022b1a1b9f98b72              # double 9.3469370000000005
	.quad	0x3fcf906466b1e5c1              # double 0.24659400000000001
	.quad	0x4011ed5b6805a2d7              # double 4.4817939999999998
	.quad	0x40202d40ee06d938              # double 8.0883859999999999
	.quad	0x402352ec0724b76f              # double 9.6619569999999992
	.quad	0x3fd9c996b76709fa              # double 0.40292899999999998
	.quad	0x4009bb15b573eab3              # double 3.2163499999999998
	.quad	0x4023c6219652bd3c              # double 9.8869749999999996
	.quad	0x4000bd8b60f1b25f              # double 2.0925509999999998
	.quad	0x4022a5b940fecdd1              # double 9.3236790000000003
	.quad	0x4022e54cb9ecf638              # double 9.4478509999999999
	.quad	0x4022d8b9fdbd2fa1              # double 9.4232940000000002
	.quad	0x4002c2cc2d6a9c56              # double 2.345116
	.quad	0x4009daf07bfe7e20              # double 3.2319040000000001
	.quad	0x40194443d46b26c0              # double 6.3166650000000004
	.quad	0x4014bc97d8cf398f              # double 5.1841730000000004
	.quad	0x401b1ead9274e22a              # double 6.7799589999999998
	.quad	0x40204cd3bf2f5558              # double 8.1500529999999998
	.quad	0x402116a9a3d2d880              # double 8.5442630000000008
	.quad	0x3fe4cfaeff5c6c12              # double 0.65035200000000004
	.quad	0x40163e1262025397              # double 5.5606169999999997
	.quad	0x401dd4399b2c40d1              # double 7.4572510000000003
	.quad	0x402190effe2a3cea              # double 8.7830809999999992
	.quad	0x3ff73210be9424e6              # double 1.4497230000000001
	.quad	0x4011c0a06e9ff0cc              # double 4.4381120000000003
	.quad	0x4000436a832b990b              # double 2.032918
	.quad	0x4023ec7e06961c37              # double 9.9618990000000007
	.quad	0x401d67357e670e2c              # double 7.3507899999999999
	.quad	0x40124d65a14488c6              # double 4.575583
	.quad	0x40214dbee3d5fdce              # double 8.6518470000000001
	.quad	0x4009fbb05faebc41              # double 3.2478950000000002
	.quad	0x3fdb756c93a71151              # double 0.42904199999999998
	.quad	0x4010fc9c4da9003f              # double 4.2466900000000001
	.quad	0x3ff9b4cc25072086              # double 1.6066400000000001
	.quad	0x40165bdbe3c10518              # double 5.5897059999999996
	.quad	0x40006437824d4cba              # double 2.048934
	.quad	0x4017a6634117f844              # double 5.9124879999999997
	.quad	0x3fce020817fc7608              # double 0.23443700000000001
	.quad	0x40197177a7008a69              # double 6.3608079999999996
	.quad	0x4012a7ddca4b124d              # double 4.663932
	.quad	0x3fe1c2eba27ae9ab              # double 0.55504399999999998
	.quad	0x4016591cd1c7de51              # double 5.5870240000000004
	.quad	0x401570be0ded288d              # double 5.3601000000000001
	.quad	0x401cb6937d1fe64f              # double 7.1782969999999997
	.quad	0x40171e108c3f3e03              # double 5.7793599999999996
	.quad	0x3fd668d759ee88df              # double 0.35014899999999999
	.quad	0x4021809118c197e5              # double 8.7511069999999993
	.quad	0x400392f123c42a67              # double 2.4467490000000001
	.quad	0x4023e5097c80841f              # double 9.9473380000000002
	.quad	0x40213294ff0025c0              # double 8.5987930000000006
	.quad	0x3ff12f8f041461b7              # double 1.074111
	.quad	0x3fe78240b780346e              # double 0.73465000000000003
	.quad	0x3ffdb5771001d5c3              # double 1.856803
	.quad	0x40201d084e831ad2              # double 8.0567039999999999
	.quad	0x40027fed20296b33              # double 2.3124639999999999
	.quad	0x3ff5b9d2bf551505              # double 1.3578669999999999
	.quad	0x401418255b035bd5              # double 5.0235799999999999
	.quad	0x4017e8a2a90cd424              # double 5.9771830000000001
	.quad	0x3ffbc04c8bc9cd3e              # double 1.734448
	.quad	0x40224504c48adeec              # double 9.1348020000000005
	.quad	0x4021a014b599aa61              # double 8.8126580000000008
	.quad	0x400c3eecbfb15b57              # double 3.5307249999999999
	.quad	0x4017925f202107b8              # double 5.8929410000000004
	.quad	0x3ff628198f1d3ed5              # double 1.38479
	.quad	0x400e277d523b3637              # double 3.769282
	.quad	0x400e0c48adeebb34              # double 3.7559979999999999
	.quad	0x4023ebf1c75818c6              # double 9.9608290000000004
	.quad	0x4015106e9ff0cbb0              # double 5.2660470000000004
	.quad	0x401a0e158750c1b9              # double 6.5137539999999996
	.quad	0x4018396b3354c122              # double 6.0560729999999996
	.quad	0x4006b37d1fe64f55              # double 2.8376410000000001
	.quad	0x401fd4998d045fe1              # double 7.9576169999999999
	.quad	0x4023f89d27c39368              # double 9.9855739999999997
	.quad	0x40228706705c896e              # double 9.2637210000000003
	.quad	0x40165ed3953dea46              # double 5.5926039999999997
	.quad	0x40228a3c21187e7c              # double 9.2699899999999999
	.quad	0x40189aab47410731              # double 6.1510439999999997
	.quad	0x4021548f32378ab1              # double 8.6651550000000004
	.quad	0x401aba5ce5b4245f              # double 6.6819949999999997
	.quad	0x4020a8de093532e8              # double 8.3298190000000005
	.quad	0x400f0f88b9778573              # double 3.8825850000000002
	.quad	0x3fe06bbdbe3c1052              # double 0.51315200000000005
	.quad	0x402066d02cd39da1              # double 8.2008069999999993
	.quad	0x4004c57a786c2268              # double 2.596425
	.quad	0x4023303d145d8516              # double 9.5942159999999994
	.quad	0x4018c8a761027957              # double 6.195951
	.quad	0x3fef2a5c5f7c675a              # double 0.97392100000000004
	.quad	0x4012e9b951c5c572              # double 4.7282460000000004
	.quad	0x4011e4228997c3d7              # double 4.4727880000000004
	.quad	0x4011657082491afc              # double 4.349062
	.quad	0x3ff48676a7264a17              # double 1.2828280000000001
	.quad	0x4022e33636f3b214              # double 9.4437730000000001
	.quad	0x401074ff0025bfad              # double 4.1142539999999999
	.quad	0x3fd428240b780347              # double 0.31495000000000001
	.quad	0x4015e4a5df2239e7              # double 5.4732890000000003
	.quad	0x4005ee136e71cda3              # double 2.7412480000000001
	.quad	0x3ff3b30d7386099a              # double 1.231214
	.quad	0x3ff9d9439de481f5              # double 1.615543
	.quad	0x400baaa4b9884c6a              # double 3.4583219999999999
	.quad	0x4021a13404ea4a8c              # double 8.8148499999999998
	.quad	0x4012077d955714ba              # double 4.5073150000000002
	.quad	0x3ff912b3cc4ac6ce              # double 1.5670660000000001
	.quad	0x3fff1dd2ae8e1d65              # double 1.9447810000000001
	.quad	0x401b55072085b185              # double 6.8330349999999997
	.quad	0x40234b13be22e5de              # double 9.6466349999999998
	.quad	0x4020929c779a6b51              # double 8.2863500000000005
	.quad	0x4022ca012599ed7c              # double 9.3945399999999992
	.quad	0x4013e5e28aa43351              # double 4.9744970000000004
	.quad	0x3ff6657d9dba908a              # double 1.399778
	.quad	0x40169a2339c0ebee              # double 5.650525
	.quad	0x401405de15ca6ca0              # double 5.0057299999999998
	.quad	0x40143704790b8499              # double 5.0537280000000004
	.quad	0x40231bac710cb296              # double 9.5540500000000002
	.quad	0x3ffbd220ff540896              # double 1.738801
	.quad	0x4020264fdb09a672              # double 8.0748280000000001
	.quad	0x401b273cd573647c              # double 6.7883180000000003
	.quad	0x40217c50efdc9c4e              # double 8.7428050000000006
	.quad	0x400e34cdb7ae5797              # double 3.7757830000000001
	.quad	0x402099930be0ded3              # double 8.2999500000000008
	.quad	0x4023e486ad2dcb14              # double 9.9463399999999992
	.quad	0x4019b217d2849cb2              # double 6.4239189999999997
	.quad	0x4018a2089e34330d              # double 6.1582359999999996
	.quad	0x4023fbac4f7ec354              # double 9.9915489999999991
	.quad	0x3ff1f75104d551d7              # double 1.1228800000000001
	.quad	0x3ff9091c087442c8              # double 1.564724
	.quad	0x400f244d87724fa9              # double 3.8927260000000001
	.quad	0x3ff7e43675ddd2af              # double 1.4932160000000001
	.quad	0x40076b841248d7e0              # double 2.9274979999999999
	.quad	0x400b2a1be2b4959e              # double 3.3955609999999998
	.quad	0x40132db3bfb58d15              # double 4.7946309999999999
	.quad	0x3fd1f1348b220792              # double 0.28034700000000001
	.quad	0x400e5c209246bf01              # double 3.7949839999999999
	.quad	0x4023ae195464dc23              # double 9.8400370000000005
	.quad	0x4012f8b97785729b              # double 4.7428949999999999
	.quad	0x401076ea854477ff              # double 4.1161289999999999
	.quad	0x4020c22db61bb060              # double 8.3792550000000006
	.quad	0x3fdbcd6c2efd438d              # double 0.43441299999999999
	.quad	0x4022e51697f1f9ad              # double 9.447438
	.quad	0x40095c33f85510d4              # double 3.1700210000000002
	.quad	0x40215df9591cd1c8              # double 8.6835430000000002
	.quad	0x3ff5a2a0a958537e              # double 1.352204
	.quad	0x40153701d9f4d37c              # double 5.3037179999999999
	.quad	0x4021e74e4430b179              # double 8.9517690000000005
	.quad	0x4020f4241c3efae8              # double 8.4768380000000008
	.quad	0x4022c9e75360d024              # double 9.3943429999999992
	.quad	0x4023beef5ec80c74              # double 9.8729200000000005
	.quad	0x3ff2a106ab14ec20              # double 1.1643129999999999
	.quad	0x4021e7c9363f572e              # double 8.9527070000000002
	.quad	0x401cb35f80991794              # double 7.1751690000000004
	.quad	0x40202b419e300150              # double 8.0844850000000008
	.quad	0x400c6a4228997c3d              # double 3.5518839999999998
	.quad	0x401a650e779207d5              # double 6.5986880000000001
	.quad	0x3f752c16df3f9618              # double 0.005169
	.quad	0x400923a42f1ed17c              # double 3.1424029999999998
	.quad	0x401f4f5f4e4430b1              # double 7.8275119999999995
	.quad	0x4010d5c896dd26b7              # double 4.2087729999999999
	.quad	0x400c883fd5022574              # double 3.5665279999999999
	.quad	0x3fcd3543aeab7996              # double 0.228188
	.quad	0x3fe628b2a6b0d951              # double 0.69246799999999997
	.quad	0x4015fdb1a6d698fe              # double 5.4977479999999996
	.quad	0x402250c6f7a0b5ee              # double 9.1577680000000008
	.quad	0x401ea0bf5d78811b              # double 7.6569799999999998
	.quad	0x3ff6046950fc71d6              # double 1.376077
	.quad	0x3ff5b294dd72367e              # double 1.3560989999999999
	.quad	0x400dd15f02c4d65e              # double 3.7272319999999999
	.quad	0x4013612cf0f9d2bf              # double 4.8448979999999997
	.quad	0x401d004a2fcefaa4              # double 7.2502829999999996
	.quad	0x3ff9543aeab7995f              # double 1.583064
	.quad	0x402046a1a500d5e9              # double 8.1379520000000003
	.quad	0x4021422f2734f82f              # double 8.6292659999999994
	.quad	0x3ff677e1b8ed1bf8              # double 1.4042680000000001
	.quad	0x400dbf51697f1f9b              # double 3.7184170000000001
	.quad	0x40200aa90cd423d9              # double 8.0208209999999998
	.quad	0x4008c07cc7d1bb49              # double 3.093988
	.quad	0x401883864cb5bb38              # double 6.1284419999999997
	.quad	0x3ff27caea747d806              # double 1.15544
	.quad	0x3fdea17f4128bf3c              # double 0.478607
	.quad	0x40197e7ddca4b125              # double 6.3735270000000002
	.quad	0x3fda441bb8c32a8d              # double 0.41040700000000002
	.quad	0x4002c10c6f7a0b5f              # double 2.3442620000000001
	.quad	0x400685a2d72ffd1e              # double 2.8152520000000001
	.quad	0x40122c48adeebb34              # double 4.5432459999999999
	.quad	0x401b78e368f08462              # double 6.868055
	.quad	0x3ffbd6f976790321              # double 1.739984
	.quad	0x40030ebbba55d1c4              # double 2.3821940000000001
	.quad	0x40068dc8754f3776              # double 2.8192300000000001
	.quad	0x3fc5d97f62b6ae7d              # double 0.17069999999999999
	.quad	0x3fd89fe86833c600              # double 0.38475999999999999
	.quad	0x40237a24463065f9              # double 9.7385579999999993
	.quad	0x400ed64adff822bc              # double 3.854635
	.quad	0x3ff6fdc7abfb9bed              # double 1.436958
	.quad	0x40122e425aee6320              # double 4.5451750000000004
	.quad	0x4013af65dbfceb79              # double 4.9212870000000004
	.quad	0x4014c0cf9e3864cb              # double 5.1882919999999997
	.quad	0x3ff693cddd6e04c0              # double 1.4110849999999999
	.quad	0x4012ef540895d0b7              # double 4.7337189999999998
	.quad	0x4023cfe86833c600              # double 9.9060699999999997
	.quad	0x40077aac53b0813d              # double 2.9348990000000001
	.quad	0x3ff55b9d7fd82774              # double 1.334867
	.quad	0x3ffcb8183f91e647              # double 1.794945
	.quad	0x40137d8f92af9a8d              # double 4.8726180000000001
	.quad	0x40122710880d801b              # double 4.5381489999999998
	.quad	0x4011484ec636b096              # double 4.3206129999999998
	.quad	0x401aa61672324c83              # double 6.6621949999999996
	.quad	0x3ff05f90539fba45              # double 1.023331
	.quad	0x400f3b9f127f5e85              # double 3.904112
	.quad	0x401bf5fbb517a461              # double 6.9902179999999996
	.quad	0x4019e9e16d6dc1a4              # double 6.4783989999999996
	.quad	0x4023badf2ecf2064              # double 9.8649839999999997
	.quad	0x401ebd1958969a0b              # double 7.6846670000000001
	.quad	0x4017d444e0daa0cb              # double 5.9572940000000001
	.quad	0x401eefc8b0079a28              # double 7.7341639999999998
	.quad	0x3fefd269595feda6              # double 0.99443499999999996
	.quad	0x4022f69ea1405708              # double 9.4816789999999997
	.quad	0x4007fd441355475a              # double 2.9986649999999999
	.quad	0x4016ac2ca148ba84              # double 5.668139
	.quad	0x4021d5f41aef6f8f              # double 8.917878
	.quad	0x401a50e51d25aab4              # double 6.5789989999999996
	.quad	0x3ff5a3571d1d4739              # double 1.3523780000000001
	.quad	0x4022d652bd3c3611              # double 9.4185999999999996
	.quad	0x400d2ab5807fed20              # double 3.6458539999999999
	.quad	0x4021a559d55e6bc6              # double 8.8229509999999998
	.quad	0x401aa3dff3f0fe04              # double 6.6600339999999996
	.quad	0x401b32ab68cef673              # double 6.7994820000000002
	.quad	0x401850f9d2bf5515              # double 6.079078
	.quad	0x401fc7807789a459              # double 7.9448259999999999
	.quad	0x401f7fa615a8deb1              # double 7.874657
	.quad	0x40222ee47dc37a3e              # double 9.0915870000000005
	.quad	0x400580b135979182              # double 2.6878380000000002
	.quad	0x4018203a7546d3fa              # double 6.0314730000000001
	.quad	0x4009e435696e58a3              # double 3.2364299999999999
	.quad	0x3ffd24ebdd334c5e              # double 1.8215140000000001
	.quad	0x4020f723aafff36b              # double 8.4826940000000004
	.quad	0x401c73ba3443d46b              # double 7.1130149999999999
	.quad	0x400aa4a9cdc44391              # double 3.3304019999999999
	.quad	0x4006adfc5cdd50a9              # double 2.8349540000000002
	.quad	0x40123045fe111277              # double 4.547142
	.quad	0x40230596638433d7              # double 9.5109130000000003
	.quad	0x3fa71da37ef5a965              # double 0.045148000000000001
	.quad	0x4020c2d87f88765c              # double 8.3805580000000006
	.quad	0x401c8831ad2135db              # double 7.1330020000000003
	.quad	0x401cb2174c4cdfad              # double 7.1739170000000003
	.quad	0x40111a34ca0c282c              # double 4.2755919999999996
	.quad	0x4015c1950331e3a8              # double 5.4390450000000001
	.quad	0x4003fe1c9b413986              # double 2.4990779999999999
	.quad	0x4015fe34fc610f0f              # double 5.4982490000000004
	.quad	0x400ab907d912556d              # double 3.340347
	.quad	0x40151db0142f61ed              # double 5.2789919999999997
	.quad	0x401dd6049ecb31c2              # double 7.4590019999999999
	.quad	0x3fdfcbea4ebdd335              # double 0.49682100000000001
	.quad	0x3fe336113404ea4b              # double 0.60035000000000005
	.quad	0x400a4ecfa69be09c              # double 3.2884820000000001
	.quad	0x3ffe2d81adea8976              # double 1.88611
	.quad	0x4014e3d6c7219221              # double 5.222499
	.quad	0x40206eba0620ab71              # double 8.2162629999999996
	.quad	0x400838c8eef1bac3              # double 3.0277270000000001
	.quad	0x401b8dd6e04c0592              # double 6.8885149999999999
	.quad	0x40166ecedd484513              # double 5.6082109999999998
	.quad	0x4023e55d1c3ac92a              # double 9.9479760000000006
	.quad	0x4008555bccaf709b              # double 3.0416789999999998
	.quad	0x4019e034b0e1b4bb              # double 6.4689509999999997
	.quad	0x4014ae40852b4d8c              # double 5.1701680000000003
	.quad	0x40084e4ead0c3d25              # double 3.0382359999999999
	.quad	0x4017e1d4306e5cd5              # double 5.9705360000000001
	.quad	0x3ff082d38476f2a6              # double 1.0319400000000001
	.quad	0x400f693af74cd317              # double 3.9263819999999998
	.quad	0x4010373d5bab2181              # double 4.0539449999999997
	.quad	0x400ac83a96d4c33b              # double 3.3477679999999999
	.quad	0x40183499d0203e64              # double 6.0513680000000001
	.quad	0x40235dd69d30270f              # double 9.6832779999999996
	.quad	0x401737d0aed99cbf              # double 5.8045070000000001
	.quad	0x40176ed1394317ad              # double 5.8582200000000002
	.quad	0x401871b0ccbc05d5              # double 6.1110259999999998
	.quad	0x4016a3d102bc72e2              # double 5.6599769999999996
	.quad	0x3fdd8130164840e1              # double 0.46100999999999998
	.quad	0x402323f7f06705c9              # double 9.5702510000000007
	.quad	0x401824f1a1986b9c              # double 6.0360779999999998
	.quad	0x401d6fb6dca07f67              # double 7.3590960000000001
	.quad	0x40136335d249e450              # double 4.8468850000000003
	.quad	0x400433543aeab799              # double 2.5250629999999998
	.quad	0x4003c24b33daf8df              # double 2.4698699999999998
	.quad	0x400e31bf7ad4b274              # double 3.7742909999999998
	.quad	0x4013b4fd6d7e889c              # double 4.9267479999999999
	.quad	0x4005d23e5b8561d4              # double 2.7276579999999999
	.quad	0x4022f458cd20afa3              # double 9.4772400000000001
	.quad	0x400da3dddb1209ee              # double 3.7050130000000001
	.quad	0x4020b9b75a74c09c              # double 8.3627269999999995
	.quad	0x4020ab8d1d8a5482              # double 8.3350609999999996
	.quad	0x401dc6512a94ff00              # double 7.4436689999999999
	.quad	0x4013f722e1ac57e2              # double 4.9913439999999998
	.quad	0x3ff51e4d5d80e497              # double 1.319898
	.quad	0x40226f3ade225fa6              # double 9.2172459999999994
	.quad	0x400422dcf4623d0c              # double 2.517023
	.quad	0x4023dd9c49774257              # double 9.9328330000000004
	.quad	0x40061963992c8c50              # double 2.762397
	.quad	0x401857ba237cdcca              # double 6.0856709999999996
	.quad	0x4023b8ff75968512              # double 9.8613239999999998
	.quad	0x402006dc3bd59924              # double 8.0133989999999997
	.quad	0x40171ca18bd66278              # double 5.7779600000000002
	.quad	0x4020397ebaf10236              # double 8.1122949999999996
	.quad	0x401d9fffbce4217d              # double 7.4062489999999999
	.quad	0x40179404ea4a8c15              # double 5.8945499999999997
	.quad	0x40231e75579af188              # double 9.5594889999999992
	.quad	0x4022264ffc9795b3              # double 9.0748289999999994
	.quad	0x4015f88f861a60d4              # double 5.4927349999999997
	.quad	0x3ff34f8d716d2aa6              # double 1.2069220000000001
	.quad	0x402310ba1f4b1ee2              # double 9.5326699999999995
	.quad	0x4004d065f9591cd2              # double 2.6017570000000001
	.quad	0x401d8f31f46ed246              # double 7.3898390000000003
	.quad	0x40204db291b823c8              # double 8.1517529999999994
	.quad	0x3ffe4067cf1c3266              # double 1.8907240000000001
	.quad	0x4004e0e9d51b4fe8              # double 2.6098210000000002
	.quad	0x4015f58d1526d8b2              # double 5.4897960000000001
	.quad	0x4016c1565c2d2780              # double 5.6888059999999996
	.quad	0x400446bd6e8af816              # double 2.5345409999999999
	.quad	0x4023c6cdf266ba49              # double 9.8882899999999995
	.quad	0x40204b0941c8216c              # double 8.1465549999999993
	.quad	0x3fd576a2f48c2e77              # double 0.335366
	.quad	0x40078b4fa48301a8              # double 2.9430230000000002
	.quad	0x4013ff17bd8be729              # double 4.9991139999999996
	.quad	0x3ffeeaa3ad18d25f              # double 1.932285
	.quad	0x40126e6cd29131ec              # double 4.607837
	.quad	0x40190ebf65dbfceb              # double 6.2644019999999996
	.quad	0x3ffc635610adcd2d              # double 1.7742519999999999
	.quad	0x4012c3d70a3d70a4              # double 4.6912500000000001
	.quad	0x401b58a548238540              # double 6.8365679999999998
	.quad	0x400f8e9c4545846f              # double 3.9446340000000002
	.quad	0x3ff8101d19157abc              # double 1.5039340000000001
	.quad	0x3ff874080f98fa37              # double 1.5283279999999999
	.quad	0x401b74f6dfc5cdd5              # double 6.864223
	.quad	0x3ff56bf01322f273              # double 1.3388519999999999
	.quad	0x3fe4592d98bf7f06              # double 0.63588599999999995
	.quad	0x401b87f950b955f8              # double 6.8827870000000004
	.quad	0x400f2f29d40ee06e              # double 3.8980290000000002
	.quad	0x4006b2502eec7c95              # double 2.8370669999999998
	.quad	0x401978f9f44d4456              # double 6.3681409999999996
	.quad	0x4010d867f0aa21a7              # double 4.2113339999999999
	.quad	0x3ff3146a1a500d5f              # double 1.1924840000000001
	.quad	0x401a40a1be2b495a              # double 6.5631170000000001
	.quad	0x4017f4295a6c5d20              # double 5.9884389999999996
	.quad	0x400bfc044284dfce              # double 3.4980549999999999
	.quad	0x40162aed99cbee80              # double 5.5419219999999996
	.quad	0x4017db107746887b              # double 5.9639300000000004
	.quad	0x402167c5ef62f9ca              # double 8.7026819999999994
	.quad	0x4004e793dd97f62b              # double 2.6130749999999998
	.quad	0x3fe571c10d7be985              # double 0.67013599999999995
	.quad	0x401dca6dacabc515              # double 7.4476839999999997
	.quad	0x401d08900c521dda              # double 7.258362
	.quad	0x4007c898f605ab3b              # double 2.9729480000000001
	.quad	0x4003981f10667f91              # double 2.4492780000000001
	.quad	0x400b2fa9c12f09d9              # double 3.3982730000000001
	.quad	0x401a22b0a6fc58ac              # double 6.5338770000000004
	.quad	0x4023433b320535ca              # double 9.6313110000000002
	.quad	0x4002d892ee84ad79              # double 2.3557489999999999
	.quad	0x4018da5df2239e6b              # double 6.2132490000000002
	.quad	0x3fdbedc7ef177a70              # double 0.436388
	.quad	0x4016b133c1ce6c09              # double 5.6730489999999998
	.quad	0x4022370995aaf790              # double 9.1074950000000001
	.quad	0x4022b88461f9f01c              # double 9.3603850000000008
	.quad	0x4005ba450acc0bdd              # double 2.7159520000000001
	.quad	0x3fffc318b9346994              # double 1.985131
	.quad	0x3ff2834e3369b9d8              # double 1.157057
	.quad	0x401032c2374794ea              # double 4.049569
	.quad	0x40212096dd26b724              # double 8.5636510000000001
	.quad	0x3fa6fbd273d5bab2              # double 0.044889999999999999
	.quad	0x40103203e63e8dda              # double 4.0488429999999997
	.quad	0x3fc0748e4755ffe7              # double 0.128557
	.quad	0x3ff1397460242d06              # double 1.076527
	.quad	0x401b1925fe974a34              # double 6.774559
	.quad	0x40083f705857afea              # double 3.0309759999999999
	.quad	0x4006243bb40b34e7              # double 2.7676919999999998
	.quad	0x4019f2f123c42a67              # double 6.4872480000000001
	.quad	0x3febbe0370cdc875              # double 0.86694499999999997
	.quad	0x3ffc0f61672324c8              # double 1.753755
	.quad	0x401a18a936c58eeb              # double 6.5240830000000001
	.quad	0x3fef51ac9afe1da8              # double 0.97872000000000003
	.quad	0x400a3a1c25d07421              # double 3.2783739999999999
	.quad	0x4002f7f9d6f112fd              # double 2.3710819999999999
	.quad	0x40207630a91537a0              # double 8.2308400000000006
	.quad	0x402339e1f3a57eaa              # double 9.6130519999999997
	.quad	0x3fd3787485e3da30              # double 0.30422700000000003
	.quad	0x40032c8f75536934              # double 2.3967580000000002
	.quad	0x4005351372a38b8b              # double 2.6509160000000001
	.quad	0x401d55f9df548ece              # double 7.3339610000000004
	.quad	0x401d8fc158fb43d9              # double 7.3903860000000003
	.quad	0x401f10f345069a4e              # double 7.766553
	.quad	0x40223146c332f017              # double 9.0962429999999994
	.quad	0x402008bfe3b03e21              # double 8.0170890000000004
	.quad	0x401c1a2f05a708ee              # double 7.0255700000000001
	.quad	0x4013a46dc5d63886              # double 4.9105749999999997
	.quad	0x4000963e4abe6a33              # double 2.0733609999999998
	.quad	0x40180ad538ac18f8              # double 6.0105789999999999
	.quad	0x3fe18318b9346994              # double 0.54725299999999999
	.quad	0x3fecd84d338f7985              # double 0.90140399999999998
	.quad	0x40228e54f7a91969              # double 9.2779919999999994
	.quad	0x4011835efa615a8e              # double 4.3782920000000001
	.quad	0x4016d4606748e475              # double 5.7073989999999997
	.quad	0x4004f171e29b6b2b              # double 2.617893
	.quad	0x40228bab430f4949              # double 9.2727909999999998
	.quad	0x4004afd199bb2789              # double 2.5858490000000001
	.quad	0x40205c523f67f4dc              # double 8.1803150000000002
	.quad	0x4011d143bf727137              # double 4.4543600000000003
	.quad	0x40037a67a52ac754              # double 2.434768
	.quad	0x402370919ef954eb              # double 9.7198609999999998
	.quad	0x400fb4141e9af5ba              # double 3.9629289999999999
	.quad	0x40082189374bc6a8              # double 3.016375
	.quad	0x40230039cd8127b3              # double 9.5004410000000003
	.quad	0x3fab8d60a6330510              # double 0.053813
	.quad	0x40226eec9e236c16              # double 9.2166490000000003
	.quad	0x3feb9b36bd2b6f1a              # double 0.86269700000000005
	.quad	0x400341ab4b72c519              # double 2.4070649999999998
	.quad	0x3ffd63161a1db878              # double 1.8366910000000001
	.quad	0x4001894d50ebaade              # double 2.1920419999999998
	.quad	0x4014026aa8eb4635              # double 5.0023600000000004
	.quad	0x40070006d0d4994a              # double 2.875013
	.quad	0x3ffe7acb4289118c              # double 1.904979
	.quad	0x400486bf8769ec2d              # double 2.565795
	.quad	0x4013cbc947064ecf              # double 4.9490100000000004
	.quad	0x400df95bbbe878fb              # double 3.7467570000000001
	.quad	0x4021e58d36b4c7f3              # double 8.9483429999999995
	.quad	0x4020cbdea465a576              # double 8.3981829999999995
	.quad	0x401220a5269595ff              # double 4.5318800000000001
	.quad	0x401d0da61e0c5a81              # double 7.2633289999999997
	.quad	0x3fe66be37de939eb              # double 0.70067000000000002
	.quad	0x401d50e8c8abd5dc              # double 7.3290129999999998
	.quad	0x401a81248d7e0264              # double 6.6261159999999997
	.quad	0x401502085b18548b              # double 5.2519850000000003
	.quad	0x4010312839042d8c              # double 4.0480049999999999
	.quad	0x4023fa0d349be8ff              # double 9.9883819999999996
	.quad	0x40132d8b60f1b25f              # double 4.7944769999999997
	.quad	0x401c61de26916441              # double 7.095574
	.quad	0x400a00fba8826aa9              # double 3.25048
	.quad	0x3ff89987c6327ed8              # double 1.5374829999999999
	.quad	0x401eb757928e0c9e              # double 7.6790450000000003
	.quad	0x4016055e6bc621b8              # double 5.5052430000000001
	.quad	0x402227166e008e9b              # double 9.0763429999999996
	.quad	0x3fe184406c00da1b              # double 0.54739400000000005
	.quad	0x40239c532a497fa6              # double 9.8053220000000003
	.quad	0x40238abdc26dce3a              # double 9.7709790000000005
	.quad	0x400d1eea209aaa3b              # double 3.6400950000000001
	.quad	0x401160f55de58e65              # double 4.3446860000000003
	.quad	0x401907faa044ae86              # double 6.2577920000000002
	.quad	0x401fbba0a5269596              # double 7.93323
	.quad	0x4023ba8ac5c13fd1              # double 9.8643400000000003
	.quad	0x40135cdd0d8cb07d              # double 4.840687
	.quad	0x4018763a5c1c6089              # double 6.1154570000000001
	.quad	0x401a369835158b82              # double 6.5533149999999996
	.quad	0x4016233bd9cae211              # double 5.534408
	.quad	0x40199cdc011d3672              # double 6.4031830000000003
	.quad	0x3fb27924af0bf1a6              # double 0.072161000000000003
	.quad	0x3fa893b7d84901d2              # double 0.048002000000000003
	.quad	0x40000db7ae5796c0              # double 2.0066980000000001
	.quad	0x4005050507a6bd6f              # double 2.6274510000000002
	.quad	0x3ff18096feb4a665              # double 1.0938939999999999
	.quad	0x4003c74d9c6b0532              # double 2.4723160000000002
	.quad	0x3ffa6f587d6f9768              # double 1.6521840000000001
	.quad	0x3ff164f765fd8adb              # double 1.0871500000000001
	.quad	0x4021378a8f3a9b07              # double 8.6084790000000009
	.quad	0x402241e6256366d8              # double 9.1287090000000006
	.quad	0x401d44c7b02d59d5              # double 7.3171679999999997
	.quad	0x401821deefe4ffc9              # double 6.0330769999999996
	.quad	0x3ff4b400b88ca3e8              # double 1.293946
	.quad	0x4016407746887a8d              # double 5.5629549999999997
	.quad	0x3fd325d074213a0c              # double 0.29918299999999998
	.quad	0x40144317268d3283              # double 5.065518
	.quad	0x3ff5d2c16df3f962              # double 1.3639540000000001
	.quad	0x40063ae685db76b4              # double 2.7787600000000001
	.quad	0x400ca26916440f24              # double 3.5793020000000002
	.quad	0x40190829068986fd              # double 6.2579690000000001
	.quad	0x40225b96f21f6cad              # double 9.1788860000000003
	.quad	0x4023856f32bdc26e              # double 9.7606140000000003
	.quad	0x400e50ea18372e6a              # double 3.7895089999999998
	.quad	0x402188535c9e6688              # double 8.7662610000000001
	.quad	0x4002af96e158750c              # double 2.335737
	.quad	0x401a2fd694ccab3f              # double 6.5467170000000001
	.quad	0x40238e368f084620              # double 9.7777600000000007
	.quad	0x3fee4de3b8a19c9d              # double 0.94700799999999996
	.quad	0x401a3cf91a32b12d              # double 6.5595439999999998
	.quad	0x40114c7d5ed06fef              # double 4.3246969999999996
	.quad	0x4020b047b24638c9              # double 8.3442969999999992
	.quad	0x3fedd321e603d578              # double 0.93202300000000005
	.quad	0x3ff66e297396d091              # double 1.4018949999999999
	.quad	0x400b5daf07bfe7e2              # double 3.420744
	.quad	0x40088a67e846a5d7              # double 3.0675810000000001
	.quad	0x4001d953586ca8a0              # double 2.2311160000000001
	.quad	0x4022b567ba237cdd              # double 9.3543070000000003
	.quad	0x4020beaa4b9884c7              # double 8.3723930000000006
	.quad	0x40207573215fcc18              # double 8.2293939999999992
	.quad	0x40111f88333fc86d              # double 4.2807930000000001
	.quad	0x4017098201cd5f9a              # double 5.7592850000000002
	.quad	0x400fc69ced0b30b6              # double 3.9719790000000001
	.quad	0x3ff1604af922962d              # double 1.086009
	.quad	0x40238b6544fe36d2              # double 9.7722569999999997
	.quad	0x402050de6ddf00ac              # double 8.157947
	.quad	0x3ff4d2f5dbb9cf9a              # double 1.301504
	.quad	0x401d383be6601bca              # double 7.3049160000000004
	.quad	0x40116e9f2778140e              # double 4.3580290000000002
	.quad	0x40159fc86cebbba5              # double 5.4060379999999997
	.quad	0x4023a251a005c465              # double 9.8170289999999997
	.quad	0x3ff6c31bde82d7b6              # double 1.422634
	.quad	0x401afe0e736049ed              # double 6.7481020000000003
	.quad	0x401e56594af4f0d8              # double 7.5843249999999997
	.quad	0x3fe6820a30db6a1f              # double 0.70337400000000005
	.quad	0x4021ece67d77fae3              # double 8.9626959999999993
	.quad	0x401d960f1b25f634              # double 7.3965420000000002
	.quad	0x40008cb5350092cd              # double 2.068705
	.quad	0x3fbcd759ee88df37              # double 0.112661
	.quad	0x402167a41e57d9dc              # double 8.7024240000000006
	.quad	0x401391b3aeee9574              # double 4.8922869999999996
	.quad	0x3fe98d73860999dd              # double 0.79851700000000003
	.quad	0x400c771758e21965              # double 3.5581499999999999
	.quad	0x4022ce69f05ea24d              # double 9.4031520000000003
	.quad	0x40238a6ce358298d              # double 9.7703620000000004
	.quad	0x40092a7c5ac471b4              # double 3.1457449999999998
	.quad	0x3ffae29c779a6b51              # double 1.6803250000000001
	.quad	0x40223a19a847b246              # double 9.1134769999999996
	.quad	0x4005ee2867275686              # double 2.7412879999999999
	.quad	0x3ff0aa2c2374794f              # double 1.0415460000000001
	.quad	0x400d8defc7a39820              # double 3.6943049999999999
	.quad	0x4020f9d4d834091c              # double 8.4879519999999999
	.quad	0x402353a5e353f7cf              # double 9.6633750000000002
	.quad	0x401714217d2849cb              # double 5.7696589999999999
	.quad	0x40175ab474107315              # double 5.8385790000000002
	.quad	0x3fd27f4dbdf8f473              # double 0.28902
	.quad	0x3fe18e53eb399f5e              # double 0.548624
	.quad	0x4010afd50225742e              # double 4.1717110000000002
	.quad	0x3ff17f77af64063a              # double 1.09362
	.quad	0x3ff1f75b81301648              # double 1.1228899999999999
	.quad	0x3ff6582dbe7f2c30              # double 1.396528
	.quad	0x40230d0d2806af47              # double 9.5254910000000005
	.quad	0x4013b5604189374c              # double 4.9271250000000002
	.quad	0x4017ae807bbb6241              # double 5.9204119999999998
	.quad	0x4019e18c197e5647              # double 6.4702609999999998
	.quad	0x40188399b2c40d0b              # double 6.1285160000000003
	.quad	0x4023b4d39da16617              # double 9.8531770000000005
	.quad	0x401d321294573a79              # double 7.2988989999999996
	.quad	0x402234d3e0bd449a              # double 9.1031790000000008
	.quad	0x4018e9ab29e4d5d8              # double 6.228192
	.quad	0x40053bd273d5bab2              # double 2.65421
	.quad	0x4015e62d40aaeafb              # double 5.4747820000000003
	.quad	0x4013422ff08893b8              # double 4.8146360000000001
	.quad	0x400b995bbbe878fb              # double 3.4498820000000001
	.quad	0x4020f4193b3a68b2              # double 8.4767550000000007
	.quad	0x401f2acabc515486              # double 7.7917889999999996
	.quad	0x4014d7bd48cb4aed              # double 5.2106830000000004
	.quad	0x401dd4b33daf8df8              # double 7.4577150000000003
	.quad	0x3ff03201040bfe3b              # double 1.012208
	.quad	0x40202ceb13dfb0d5              # double 8.0877309999999998
	.quad	0x3fb10e779207d4e1              # double 0.066627000000000006
	.quad	0x3fe08769ec2ce465              # double 0.51653000000000004
	.quad	0x40237e0828c36da8              # double 9.7461559999999991
	.quad	0x401c2c42e9899bf6              # double 7.0432240000000004
	.quad	0x4012d1fe64f54d1f              # double 4.7050720000000004
	.quad	0x3ff9c18d6909aed5              # double 1.6097539999999999
	.quad	0x4023ec5ae5ffa3ba              # double 9.9616310000000006
	.quad	0x3ffd1be6e6538690              # double 1.819312
	.quad	0x4017e5e6ff7dfa01              # double 5.9745140000000001
	.quad	0x4002be646f156191              # double 2.342965
	.quad	0x4008f0e66cb10343              # double 3.1176270000000001
	.quad	0x400c1ff822bbecab              # double 3.5156100000000001
	.quad	0x401936e47dc37a3e              # double 6.3036060000000003
	.quad	0x401ad41a6937d1fe              # double 6.7071319999999996
	.quad	0x4014e7dc37a3db3c              # double 5.226426
	.quad	0x4010d09aed56b010              # double 4.203716
	.quad	0x3ff46ff08893b7d8              # double 1.2773289999999999
	.quad	0x3fec76c8b4395810              # double 0.88949999999999996
	.quad	0x401155653c9abb02              # double 4.3333940000000002
	.quad	0x4016005857afea3e              # double 5.500337
	.quad	0x3fe187aaef2c7326              # double 0.54781100000000005
	.quad	0x4013e190d173fb7a              # double 4.9702789999999997
	.quad	0x3fe9b37867f0aa22              # double 0.80315800000000004
	.quad	0x4018748beb5b2d4d              # double 6.1138149999999998
	.quad	0x401e7c6c11a11234              # double 7.6215060000000001
	.quad	0x4012bd3a604e1e71              # double 4.684793
	.quad	0x401fdf251c193b3a              # double 7.9679149999999996
	.quad	0x40212684f09528f2              # double 8.5752330000000008
	.quad	0x401350a915379fa9              # double 4.8287699999999996
	.quad	0x400275b70691ea79              # double 2.3074780000000001
	.quad	0x3fce23fab10ba626              # double 0.23547299999999999
	.quad	0x4021fd59b3d07c85              # double 8.9948250000000005
	.quad	0x401c20b73d188f43              # double 7.031949
	.quad	0x401679b2c40d0aaa              # double 5.6188459999999996
	.quad	0x4015deb18116ebd5              # double 5.4674740000000002
	.quad	0x4022d8e2e2b8c75c              # double 9.4236059999999994
	.quad	0x401c6d84901d1915              # double 7.1069509999999996
	.quad	0x3fdb0e8858ff7597              # double 0.42276200000000003
	.quad	0x4006d72ef0ae5365              # double 2.85507
	.quad	0x40222d27a20578e6              # double 9.0881930000000004
	.quad	0x401bd05b39e279dd              # double 6.9534729999999998
	.quad	0x401a4164c729f59d              # double 6.5638610000000002
	.quad	0x4010d62131a8ef78              # double 4.209111
	.quad	0x4010d5f1bef49cf5              # double 4.2089299999999996
	.quad	0x3ff0bc9de0503750              # double 1.046049
	.quad	0x401cce27e0ef9980              # double 7.2013239999999996
	.quad	0x401845154866a11f              # double 6.0674640000000002
	.quad	0x4012a82b62845996              # double 4.6642279999999996
	.quad	0x402098ca3e7d1351              # double 8.2984179999999999
	.quad	0x40090e9f6a93f291              # double 3.1321400000000001
	.quad	0x401462e9899bf594              # double 5.0965939999999996
	.quad	0x4015079b34a44c7b              # double 5.257428
	.quad	0x40186067cf1c3266              # double 6.0941460000000003
	.quad	0x4021c57ecbb7f9d7              # double 8.8857330000000001
	.quad	0x3fe097a46173b85f              # double 0.51851100000000006
	.quad	0x40208b397dd00f77              # double 8.2719229999999992
	.quad	0x4012c5abc0e38a7e              # double 4.6930379999999996
	.quad	0x40235f43e963dc48              # double 9.6860649999999992
	.quad	0x401aa4d87724fa8b              # double 6.6609819999999997
	.quad	0x401ecbdc69f8c21e              # double 7.6990829999999999
	.quad	0x401e5a9e6eeb7026              # double 7.588495
	.quad	0x40097939a7c17a89              # double 3.1841919999999999
	.quad	0x4023bb1e18efbb0e              # double 9.8654639999999993
	.quad	0x4022a3db5d894813              # double 9.3200330000000005
	.quad	0x40233243bb40b34e              # double 9.5981729999999992
	.quad	0x3fc76ba8c586876e              # double 0.182973
	.quad	0x4023ee10060780fe              # double 9.9649660000000004
	.quad	0x3ff8f59578a2a90d              # double 1.559957
	.quad	0x401d640e9d51b4fe              # double 7.3477119999999996
	.quad	0x4002aeb67c286f8b              # double 2.3353090000000001
	.quad	0x400d04da9003eea2              # double 3.62737
	.quad	0x3fef71ef30a4e37a              # double 0.98265800000000003
	.quad	0x401763c3a42f1ed1              # double 5.8474259999999996
	.quad	0x4007835b4edb2f66              # double 2.9391389999999999
	.quad	0x3ff9556f32bdc26e              # double 1.583358
	.quad	0x3ff7faf74cd3176a              # double 1.4987710000000001
	.quad	0x40236debb7739f34              # double 9.7146889999999999
	.quad	0x3ff56c332f01754b              # double 1.338916
	.quad	0x3fe4df45e0b4e11e              # double 0.65225500000000003
	.quad	0x4015fee30caa326e              # double 5.4989129999999999
	.quad	0x401c64a515ce9e5e              # double 7.0982859999999999
	.quad	0x40202dc1615ebfa9              # double 8.0893660000000001
	.quad	0x4022820620ab7132              # double 9.2539529999999992
	.quad	0x401cc76ab5807fed              # double 7.1947429999999999
	.quad	0x400405e02ea960b7              # double 2.502869
	.quad	0x400604f97edc7ef1              # double 2.7524289999999998
	.quad	0x402227e414e7ee91              # double 9.0779119999999995
	.quad	0x40040eeae9ee45c3              # double 2.5072839999999998
	.quad	0x4014feb7cbb3c819              # double 5.248748
	.quad	0x40039d1f601797cc              # double 2.4517199999999999
	.quad	0x4019c3e5753a3ec0              # double 6.4413049999999998
	.quad	0x4020156f75d9a0f1              # double 8.0418660000000006
	.quad	0x4020c3906466b1e6              # double 8.3819610000000004
	.quad	0x401104ff865d7cb3              # double 4.2548810000000001
	.quad	0x401c0b9c304ccee6              # double 7.0113380000000003
	.quad	0x3fff7fae3608d089              # double 1.968672
	.quad	0x402193dddb1209ee              # double 8.7888020000000004
	.quad	0x400c3459d99029ae              # double 3.5255619999999999
	.quad	0x4012619c17225b75              # double 4.5953220000000004
	.quad	0x401884fa48301a7a              # double 6.129861
	.quad	0x4013aed916872b02              # double 4.92075
	.quad	0x40112288ce703afb              # double 4.2837249999999996
	.quad	0x401f58301a79feca              # double 7.8361210000000003
	.quad	0x3ffc018611fd5886              # double 1.750372
	.quad	0x3fe3fb2edfe75bc4              # double 0.62441199999999997
	.quad	0x401b7fc08fa7a850              # double 6.8747579999999999
	.quad	0x4022624d099e0e73              # double 9.1919939999999993
	.quad	0x4004587d6f976790              # double 2.5432079999999999
	.quad	0x401fda3486f049aa              # double 7.9630910000000004
	.quad	0x4011bf0f5a1016ce              # double 4.4365819999999996
	.quad	0x4022615e5aff2a17              # double 9.1901729999999997
	.quad	0x4016ca250f840182              # double 5.6974070000000001
	.quad	0x4021cb5aea3161a2              # double 8.8971780000000003
	.quad	0x400362795703f2d4              # double 2.4230830000000001
	.quad	0x4023466f5019f3c7              # double 9.6375679999999999
	.quad	0x400d173eab367a10              # double 3.6363500000000002
	.quad	0x4021e1ee2435696e              # double 8.9412699999999994
	.quad	0x402039beb18116ec              # double 8.1127830000000002
	.quad	0x40228e0828c36da8              # double 9.2774059999999991
	.quad	0x401b097e56473472              # double 6.759271
	.quad	0x40209dcb5781c715              # double 8.308192
	.quad	0x40091f7dfa00e27e              # double 3.140377
	.quad	0x3fe49f18c9fb6135              # double 0.64442100000000002
	.quad	0x4014ebd48cb4aec9              # double 5.2303030000000001
	.quad	0x3ff4bfcc9ea9a3d3              # double 1.296826
	.quad	0x3fce9b738e6d15ad              # double 0.239119
	.quad	0x3fd5ca8e2e2b8c76              # double 0.34048800000000001
	.quad	0x402072f05a708ede              # double 8.2244899999999994
	.quad	0x3fe263dc486ad2dd              # double 0.57469000000000003
	.quad	0x4013c963992c8c50              # double 4.946669
	.quad	0x401f1b178b370047              # double 7.7764569999999997
	.quad	0x400a2638c9752978              # double 3.2686630000000001
	.quad	0x4012a909289dadfb              # double 4.6650739999999997
	.quad	0x401f83cfb3311a54              # double 7.8787219999999998
	.quad	0x3fd39fa11a975afb              # double 0.306618
	.quad	0x401de3f4eca686e8              # double 7.472614
	.quad	0x402036bca5375c8e              # double 8.1069080000000007
	.quad	0x3fe87d1782d38477              # double 0.76527000000000001
	.quad	0x401c99003eea209b              # double 7.1494150000000003
	.quad	0x400c8ead0c3d2524              # double 3.5696659999999998
	.quad	0x4000fc4a83b1d0c8              # double 2.123189
	.quad	0x4016ee7210be9425              # double 5.7328570000000001
	.quad	0x401c4b0e5e679464              # double 7.0732970000000002
	.quad	0x4012d4020817fc76              # double 4.707039
	.quad	0x401398900c521dda              # double 4.898987
	.quad	0x4011c47a9e2bcf92              # double 4.4418740000000003
	.quad	0x4020585fd04a2fcf              # double 8.172606
	.quad	0x402145a8155d5f57              # double 8.6360480000000006
	.quad	0x400c6c282c6ef3d4              # double 3.5528110000000002
	.quad	0x4012a2bae03b3e9a              # double 4.6589159999999996
	.quad	0x4012f93a2df9378f              # double 4.7433860000000001
	.quad	0x4000fe3b8a19c9d6              # double 2.1241370000000002
	.quad	0x40118101b003686a              # double 4.3759829999999997
	.quad	0x3ff950a782906898              # double 1.5821909999999999
	.quad	0x402375e74299d884              # double 9.7302800000000004
	.quad	0x3f9cf0739b024f66              # double 0.028261000000000001
	.quad	0x40098face67d77fb              # double 3.195154
	.quad	0x4007ce9dd7ecbb80              # double 2.9758870000000002
	.quad	0x4007fcb252ce032e              # double 2.9983870000000001
	.quad	0x40196ba301216830              # double 6.3551140000000004
	.quad	0x40204e9ec2ce464a              # double 8.1535550000000008
	.quad	0x3f9e0ded288ce704              # double 0.029350000000000001
	.quad	0x4021ab5610adcd2d              # double 8.8346409999999995
	.quad	0x40157390c9107faa              # double 5.362857
	.quad	0x4015f1550ca1cef2              # double 5.4856759999999998
	.quad	0x400b825072085b18              # double 3.4386299999999999
	.quad	0x4017e09784ec636b              # double 5.969328
	.quad	0x4021cc906034f3fe              # double 8.8995390000000008
	.quad	0x401a2e75bc44bf4d              # double 6.5453710000000003
	.quad	0x3ff0ed612c6ac216              # double 1.0579540000000001
	.quad	0x40094304ccee5abc              # double 3.157724
	.quad	0x40010d9dfdac68a9              # double 2.1316489999999999
	.quad	0x40130d30270f3882              # double 4.7628789999999999
	.quad	0x401053c36113404f              # double 4.0818000000000003
	.quad	0x3ff1c3009b30728f              # double 1.1101080000000001
	.quad	0x4018244c7b02d59d              # double 6.0354479999999997
	.quad	0x402094e054690de1              # double 8.2907740000000008
	.quad	0x3fc90164840e171a              # double 0.195355
	.quad	0x40186f61aa3f034b              # double 6.108771
	.quad	0x40214ba5a038194c              # double 8.6477479999999999
	.quad	0x3febbf487fcb923a              # double 0.86709999999999998
	.quad	0x401b4cfdd2285660              # double 6.8251869999999997
	.quad	0x402217c88e79aae7              # double 9.0464520000000004
	.quad	0x401fa05a708ede55              # double 7.9065950000000002
	.quad	0x3fe868f8e7ddca4b              # double 0.76281399999999999
	.quad	0x4020f39799e518f4              # double 8.4757660000000001
	.quad	0x401d4b4528283d36              # double 7.3235060000000001
	.quad	0x3ff5b460242d05f3              # double 1.3565370000000001
	.quad	0x40032effe2a3cea7              # double 2.3979490000000001
	.quad	0x401c0a2014727dcc              # double 7.0098880000000001
	.quad	0x400fb3343fa2ad3f              # double 3.9625020000000002
	.quad	0x4020e9b6f5caf2d8              # double 8.456474
	.quad	0x40143b380cb6c7a8              # double 5.0578310000000002
	.quad	0x401069802c0a4a06              # double 4.1030280000000001
	.quad	0x3ffebe34b945308c              # double 1.9214370000000001
	.quad	0x4022608787485e3e              # double 9.1885340000000006
	.quad	0x4012881450efdc9c              # double 4.6328899999999997
	.quad	0x400e077d523b3637              # double 3.753657
	.quad	0x401f65b8dc55000d              # double 7.8493380000000003
	.quad	0x401f3507a6bd6e8b              # double 7.801787
	.quad	0x4013f7a99fa11a97              # double 4.9918579999999997
	.quad	0x3ffafabc947064ed              # double 1.686215
	.quad	0x401a18576cce5f74              # double 6.523771
	.quad	0x3fe5e1565c2d2780              # double 0.68375699999999995
	.quad	0x400950dbf0563ed1              # double 3.164482
	.quad	0x3ff5ed794a6eb91b              # double 1.3704769999999999
	.quad	0x4023bd3868fd199c              # double 9.8695710000000005
	.quad	0x3fe42ae6c8f75537              # double 0.63023700000000005
	.quad	0x40149f63800218df              # double 5.155653
	.quad	0x4017abc48f10a99b              # double 5.9177419999999996
	.quad	0x40216457e23f24d9              # double 8.695983
	.quad	0x4021b4e3bcd35a86              # double 8.8533000000000008
	.quad	0x3ffad234eb9a176e              # double 1.67632
	.quad	0x3fc83f78bbd38045              # double 0.18943699999999999
	.quad	0x40094d1d041cc533              # double 3.1626530000000002
	.quad	0x40230d66277c45cc              # double 9.5261700000000004
	.quad	0x400df15592d98bf8              # double 3.742839
	.quad	0x4016f767903211cb              # double 5.741606
	.quad	0x4009c2f8bdec5f39              # double 3.2202009999999999
	.quad	0x401036ab9b23dd55              # double 4.0533890000000001
	.quad	0x40091bb83cf2cf96              # double 3.1385350000000001
	.quad	0x401bb343fa2ad3e9              # double 6.9250639999999999
	.quad	0x401ea4a59c065b64              # double 7.6607880000000002
	.quad	0x40190730c67168f9              # double 6.2570220000000001
	.quad	0x4010094bbe4473cd              # double 4.0090779999999997
	.quad	0x3ff48096feb4a665              # double 1.2813939999999999
	.quad	0x3ff4505c03361566              # double 1.2696190000000001
	.quad	0x3fb98e10cf5b1c86              # double 0.099823999999999996
	.quad	0x4018fbdb5d894813              # double 6.2459540000000002
	.quad	0x402292d05f288484              # double 9.2867460000000008
	.quad	0x3fe35fb2edfe75bc              # double 0.60543199999999997
	.quad	0x3ff48f96e158750c              # double 1.285056
	.quad	0x402331327243137b              # double 9.5960879999999999
	.quad	0x3ff869b38d60a633              # double 1.525806
	.quad	0x40043cbab649d389              # double 2.5296530000000002
	.quad	0x40147238da3c2118              # double 5.1115449999999996
	.quad	0x4005136e71cda2b6              # double 2.6344880000000002
	.quad	0x40190f6cacd184c2              # double 6.2650629999999996
	.quad	0x3ff9e2b7baecd078              # double 1.6178509999999999
	.quad	0x401a1cfb3311a544              # double 6.528302
	.quad	0x4012982730c67169              # double 4.648587
	.quad	0x40208c4178705426              # double 8.2739370000000001
	.quad	0x401d5dc65c70435f              # double 7.341577
	.quad	0x3fe6a9f9ce8d972d              # double 0.70824900000000002
	.quad	0x401c9cda6e75ff61              # double 7.1531770000000003
	.quad	0x4017a928e0c9d9d3              # double 5.9151949999999998
	.quad	0x4000398e97071822              # double 2.0281039999999999
	.quad	0x4010d800a7c5ac47              # double 4.2109399999999999
	.quad	0x4021e02c6ef3d3a2              # double 8.9378390000000003
	.quad	0x401ff103c8e25c81              # double 7.9853659999999999
	.quad	0x4021d4ac6cdaf4ae              # double 8.9153780000000005
	.quad	0x4014eaa8a82a5615              # double 5.2291590000000001
	.quad	0x4022be30caa326e1              # double 9.3714659999999998
	.quad	0x4020a6327ed84d34              # double 8.3246040000000007
	.quad	0x4007c272862f598a              # double 2.9699450000000001
	.quad	0x4020f3b256ffc116              # double 8.4759700000000002
	.quad	0x3fec1b0ccbc05d53              # double 0.87830200000000003
	.quad	0x4020078982cb20fb              # double 8.0147209999999998
	.quad	0x3fccd74927913e81              # double 0.22531999999999999
	.quad	0x4021a46aa087ca64              # double 8.8211259999999995
	.quad	0x40006c9a77e5eaab              # double 2.053029
	.quad	0x3fb9935fc3b4f616              # double 0.099904999999999993
	.quad	0x4020c4c8de2ac322              # double 8.3843449999999997
	.quad	0x40008da87a072d1b              # double 2.069169
	.quad	0x40104ece9a2c6690              # double 4.0769599999999997
	.quad	0x40130b9baa1511e0              # double 4.761336
	.quad	0x4018a7c5ac471b48              # double 6.1638400000000004
	.quad	0x3ff9db8aa00192a7              # double 1.616099
	.quad	0x3fffb9b994e1a3f4              # double 1.9828429999999999
	.quad	0x3ffca44417870542              # double 1.7901039999999999
	.quad	0x3ff01add9c27e953              # double 1.006559
	.quad	0x401382817763e4ac              # double 4.8774470000000001
	.quad	0x3ffb27c8d195896a              # double 1.6972130000000001
	.quad	0x40188a2b9d3cbc49              # double 6.1349320000000001
	.quad	0x400ba56bca5375c9              # double 3.4557720000000001
	.quad	0x3ff8f1fcd24e160e              # double 1.5590790000000001
	.quad	0x4005e94a2b9d3cbc              # double 2.7389109999999999
	.quad	0x3ffe3d0d0678c005              # double 1.8899049999999999
	.quad	0x4020e958969a0ad9              # double 8.4557540000000007
	.quad	0x3fff45c4651f3e8a              # double 1.9545330000000001
	.quad	0x4021b75d13d74d59              # double 8.8581319999999995
	.quad	0x4011ae5604189375              # double 4.4202500000000002
	.quad	0x4016206d0d49949f              # double 5.5316660000000004
	.quad	0x400b3f3e89a88ace              # double 3.4058809999999999
	.quad	0x3ffdc902de00d1b7              # double 1.861575
	.quad	0x401334845132f87b              # double 4.8012860000000002
	.quad	0x40223baa369fcf3e              # double 9.1165330000000004
	.quad	0x401327fcb923a29c              # double 4.7890499999999996
	.quad	0x3ff49f5ad96a6a01              # double 1.288905
	.quad	0x401a90c38f366949              # double 6.6413710000000004
	.quad	0x3fb330d73860999e              # double 0.074964000000000003
	.quad	0x4006e8cdea033e79              # double 2.8636740000000001
	.quad	0x4008eb1bbcf4e875              # double 3.1147990000000001
	.quad	0x40057e1fc08fa7a8              # double 2.6865839999999999
	.quad	0x401263c21187e7c0              # double 4.5974199999999996
	.quad	0x3fffd03c8e25c811              # double 1.9883390000000001
	.quad	0x4002626cc1ca3a4b              # double 2.2980589999999999
	.quad	0x3fe789f1f14983d8              # double 0.73558900000000005
	.quad	0x4020c444bf4cb189              # double 8.3833369999999992
	.quad	0x3ffd8a7c5ac471b4              # double 1.8463099999999999
	.quad	0x4000d54195cc857f              # double 2.1041289999999999
	.quad	0x401391294573a798              # double 4.8917590000000004
	.quad	0x4012549c2c1b10fd              # double 4.5826269999999996
	.quad	0x4010c08e15011905              # double 4.1880420000000003
	.quad	0x40203b198288051d              # double 8.1154290000000007
	.quad	0x4005a10cf5b1c865              # double 2.7036380000000002
	.quad	0x40006afff36ac647              # double 2.0522459999999998
	.quad	0x40216b06a2b17050              # double 8.7090350000000001
	.quad	0x40051340d4dc65c7              # double 2.634401
	.quad	0x40230dc26dce39b4              # double 9.5268739999999993
	.quad	0x401980e6299524c0              # double 6.3758780000000002
	.quad	0x4006dbc44bf4cb19              # double 2.8573080000000002
	.quad	0x4011cd7b2031ceaf              # double 4.4506649999999999
	.quad	0x401c299a1fd1569f              # double 7.0406269999999997
	.quad	0x401adf88765ba6f0              # double 6.7182940000000002
	.quad	0x3ff0e12839042d8c              # double 1.05497
	.quad	0x4006da42f1ed17c6              # double 2.856573
	.quad	0x400264e50c5eb314              # double 2.2992650000000001
	.quad	0x401534b72c5197a2              # double 5.3014799999999997
	.quad	0x401f998aeb80ecfa              # double 7.8999439999999996
	.quad	0x3fff8fd7e45803cd              # double 1.972618
	.quad	0x40204124af0bf1a6              # double 8.1272330000000004
	.quad	0x401293621fafc8b0              # double 4.643929
	.quad	0x4015e97353b4b2fb              # double 5.4779790000000004
	.quad	0x402001f3c70c996b              # double 8.0038129999999992
	.quad	0x400773c148344c38              # double 2.931521
	.quad	0x4017245bf26f1dc5              # double 5.785507
	.quad	0x4004ff961804d984              # double 2.6247980000000002
	.quad	0x4017c3586ca89fc7              # double 5.9407670000000001
	.quad	0x3fc70c2c5e2cdc01              # double 0.180059
	.quad	0x3fcabdba0a526959              # double 0.20891499999999999
	.quad	0x400fe78e9f6a93f3              # double 3.9880650000000002
	.quad	0x40100e757928e0ca              # double 4.0141200000000001
	.quad	0x4015052e72da1230              # double 5.2550600000000003
	.quad	0x3ffcb1b9b66f9336              # double 1.79339
	.quad	0x401631fe21d96e9c              # double 5.5488210000000002
	.quad	0x4000ec0ce91c8eac              # double 2.115259
	.quad	0x402363d3c3611340              # double 9.6949749999999994
	.quad	0x40145cf0739b024f              # double 5.0907609999999996
	.quad	0x400484db163baba8              # double 2.5648710000000001
	.quad	0x400808ef77f27fe5              # double 3.0043630000000001
	.quad	0x4020372990f301eb              # double 8.1077390000000005
	.quad	0x401a58a979e16d6e              # double 6.5865840000000002
	.quad	0x40239797460242d0              # double 9.7960759999999993
	.quad	0x3ff970f7b9e060fe              # double 1.5900799999999999
	.quad	0x40208d5ed06fef7c              # double 8.2761139999999997
	.quad	0x40182d77fae3608d              # double 6.044403
	.quad	0x4022d11a975afaf8              # double 9.4084059999999993
	.quad	0x401fbe52157689ca              # double 7.9358599999999999
	.quad	0x3ffb018c5c9a34ca              # double 1.687878
	.quad	0x3fe039d1b2e59afa              # double 0.50705800000000001
	.quad	0x40206bb645a1cac1              # double 8.2103750000000009
	.quad	0x4019f30ad46f587d              # double 6.4873459999999996
	.quad	0x4013d21101b00368              # double 4.9551429999999996
	.quad	0x401a795a6c5d206d              # double 6.6185090000000004
	.quad	0x401e425072085b18              # double 7.5647599999999997
	.quad	0x4011e52c59fb1e19              # double 4.4738020000000001
	.quad	0x4011070c1333b96b              # double 4.2568820000000001
	.quad	0x401e2811f4f50a03              # double 7.5391310000000002
	.quad	0x4023621cef240faa              # double 9.6916270000000004
	.quad	0x401f7bab649d388b              # double 7.8707710000000004
	.quad	0x40211c020817fc76              # double 8.5547029999999999
	.quad	0x3fe24ce1c58255b0              # double 0.57188499999999998
	.quad	0x4022e399d451fc4c              # double 9.4445329999999998
	.quad	0x401418cb8e086bdf              # double 5.0242139999999997
	.quad	0x3ff8189efd86a8fc              # double 1.506011
	.quad	0x4021028cbd1244a6              # double 8.5049799999999998
	.quad	0x402059f83be6601c              # double 8.1757220000000003
	.quad	0x4020c4e4c942d491              # double 8.3845580000000002
	.quad	0x401f852007dd4413              # double 7.8800049999999997
	.quad	0x4004bf865d7cb2d9              # double 2.593518
	.quad	0x40128709741d084f              # double 4.6318720000000004
	.quad	0x3fe52cdc011d3672              # double 0.66172600000000004
	.quad	0x3fd6d4e8fb00bcbe              # double 0.35674499999999998
	.quad	0x40119459d99029ae              # double 4.3948739999999997
	.quad	0x401e08b26394face              # double 7.5084929999999996
	.quad	0x40229511dffc547a              # double 9.2911520000000003
	.quad	0x40176ccc03793144              # double 5.8562469999999998
	.quad	0x4020763a9f383f0c              # double 8.2309160000000005
	.quad	0x402395e2cdc011d3              # double 9.7927459999999992
	.quad	0x401c59a06a6e32e4              # double 7.0875260000000004
	.quad	0x40230805e5f30e80              # double 9.5156700000000001
	.quad	0x4011bffc115df655              # double 4.4374849999999997
	.quad	0x40165bc947064ecf              # double 5.5896350000000004
	.quad	0x400a4961c36976bc              # double 3.2858309999999999
	.quad	0x400c311c6d1e108c              # double 3.5239799999999999
	.quad	0x4020b4cd31769a91              # double 8.3531279999999999
	.quad	0x400b70a6fc58ab93              # double 3.4300060000000001
	.quad	0x4009901c0ca600b0              # double 3.1953659999999999
	.quad	0x40214073de1e2de8              # double 8.6258839999999992
	.quad	0x3fdeb69552e2fbe3              # double 0.47989399999999999
	.quad	0x400f17d523b3636f              # double 3.8866369999999999
	.quad	0x4022c1ca7d6733ec              # double 9.3784980000000004
	.quad	0x4023f5043e5321e6              # double 9.978548
	.quad	0x40096d60a6330510              # double 3.178407
	.quad	0x4020977a4e7ab756              # double 8.2958549999999995
	.quad	0x3ff4d0a45d41fa76              # double 1.3009379999999999
	.quad	0x3fe4feb8d8234224              # double 0.65609399999999996
	.quad	0x3ffd7b3d8e000863              # double 1.8425879999999999
	.quad	0x3ff1ce3150dae3e7              # double 1.1128400000000001
	.quad	0x401cf141e9af5ba3              # double 7.2356030000000002
	.quad	0x3fe8e2bae03b3e9a              # double 0.77767699999999995
	.quad	0x401af513f8db4891              # double 6.7393340000000004
	.quad	0x3fe184b5dcc63f14              # double 0.54744999999999999
	.quad	0x401b6c09c3ce208a              # double 6.8555060000000001
	.quad	0x4014a0d6b228dc98              # double 5.1570689999999999
	.quad	0x401782ef0ae53650              # double 5.8778649999999999
	.quad	0x40207bc9eecbfb16              # double 8.2417750000000005
	.quad	0x401a09a8cdea033e              # double 6.5094329999999996
	.quad	0x4022cd7c0b135979              # double 9.4013369999999998
	.quad	0x40136e12a51e321a              # double 4.8574929999999998
	.quad	0x3fff331f46ed245b              # double 1.949981
	.quad	0x4021ec85c24c404a              # double 8.9619579999999992
	.quad	0x40217a22f6a50d6b              # double 8.7385479999999998
	.quad	0x3ff0559817b95a29              # double 1.0208969999999999
	.quad	0x401c852977c88e7a              # double 7.1300410000000003
	.quad	0x402151e215336dec              # double 8.6599280000000007
	.quad	0x3f9393ab430f4949              # double 0.019118
	.quad	0x40189ac36544fe37              # double 6.1511360000000002
	.quad	0x401900b955f7835a              # double 6.2507070000000002
	.quad	0x400adaf5ba2be059              # double 3.3569140000000002
	.quad	0x400d141e14bdfd26              # double 3.6348229999999999
	.quad	0x3febdbec2480e8c9              # double 0.87059600000000004
	.quad	0x4011ab5fa22706d5              # double 4.417357
	.quad	0x4011228a6117720d              # double 4.2837310000000004
	.quad	0x3ffdfb4d48882f0e              # double 1.873853
	.quad	0x4012ee0eb67c2870              # double 4.7324780000000004
	.quad	0x4012eea5f84cad58              # double 4.7330550000000002
	.quad	0x4003a6a22b3892ef              # double 2.4563640000000002
	.quad	0x400778a5ce5b4246              # double 2.93391
	.quad	0x401d2d32c625e99f              # double 7.2941390000000004
	.quad	0x4022f4f4e874c900              # double 9.4784310000000005
	.quad	0x40210ba14cec41dd              # double 8.5227149999999998
	.quad	0x401bda06e9ff0cbb              # double 6.962917
	.quad	0x4023dd4801f75105              # double 9.9321900000000002
	.quad	0x401bee4abe6a337b              # double 6.9827070000000004
	.quad	0x4001c0c069e7fb26              # double 2.2191169999999998
	.quad	0x4020fe996312f4cf              # double 8.4972639999999995
	.quad	0x4023be0ded288ce7              # double 9.8711999999999999
	.quad	0x4022291a32b12d34              # double 9.0802779999999998
	.quad	0x3ffbf67e414e7ee9              # double 1.747679
	.quad	0x40201cfaacd9e83e              # double 8.0565999999999995
	.quad	0x3ffca61bf37b8d3f              # double 1.790554
	.quad	0x4018f4577d955715              # double 6.2386150000000002
	.quad	0x401f4257c914b168              # double 7.814788
	.quad	0x400969dbec2480e9              # double 3.1766890000000001
	.quad	0x402232fa2f05a709              # double 9.0995650000000001
	.quad	0x3ff703bd5992428d              # double 1.4384129999999999
	.quad	0x3fe139cf9a06a6e3              # double 0.53830699999999998
	.quad	0x4022485b9e8c47a1              # double 9.1413239999999991
	.quad	0x4021edb78cc9a77e              # double 8.9642909999999993
	.quad	0x4012ff9db22d0e56              # double 4.749625
	.quad	0x40122fb15b573eab              # double 4.5465749999999998
	.quad	0x400bcc1ca3a4b557              # double 3.4746640000000002
	.quad	0x4011f77a7008a698              # double 4.4916780000000003
	.quad	0x401f759b8023a6ce              # double 7.8648509999999998
	.quad	0x401e52fcefaa4767              # double 7.5810430000000001
	.quad	0x400ccd06fef7c244              # double 3.6001110000000001
	.quad	0x4023b250f840181e              # double 9.848274
	.quad	0x4020ce4ef0281ba8              # double 8.402946
	.quad	0x40161a50d6b228dd              # double 5.5256990000000004
	.quad	0x401ecdc37a3db3c0              # double 7.7009410000000003
	.quad	0x3ff22b6d00b45ae6              # double 1.135602
	.quad	0x40122e108c3f3e03              # double 4.5449849999999996
	.quad	0x400a25cdd50a88f0              # double 3.268459
	.quad	0x402321357603925c              # double 9.5648610000000005
	.quad	0x400ed400b88ca3e8              # double 3.8535170000000001
	.quad	0x40046329802c0a4a              # double 2.548419
	.quad	0x401d0d4dc65c7043              # double 7.2629919999999997
	.quad	0x40216854ef459d99              # double 8.703773
	.quad	0x40233d851654d61b              # double 9.6201559999999997
	.quad	0x40234976ff3ade22              # double 9.6434859999999993
	.quad	0x4006ad423d9231c6              # double 2.8345989999999999
	.quad	0x401201b97353b4b3              # double 4.501684
	.quad	0x40147b07075b3e14              # double 5.1201439999999998
	.quad	0x401dfaaa3ad18d26              # double 7.4947900000000001
	.quad	0x3ff98dc11e42e126              # double 1.597108
	.quad	0x4014a49906cca2db              # double 5.1607399999999997
	.quad	0x4021992ccf6be37e              # double 8.7991700000000002
	.quad	0x3ff71b77c02afddb              # double 1.4442060000000001
	.quad	0x3fffd7785729b281              # double 1.990105
	.quad	0x4004d8c5c9a34ca1              # double 2.6058460000000001
	.quad	0x3ff34113c68661ae              # double 1.2033879999999999
	.quad	0x4006ff327aa68f4b              # double 2.8746079999999998
	.quad	0x3ff542491afc04c9              # double 1.3286830000000001
	.quad	0x3fff4af4f0d844d0              # double 1.9558
	.quad	0x3fe0e62dc6e2a800              # double 0.52809799999999996
	.quad	0x4023d5953586ca8a              # double 9.917154
	.quad	0x40132d2f5dbb9cfa              # double 4.7941260000000003
	.quad	0x401b6452c59fb1e2              # double 6.8479720000000004
	.quad	0x3feba87a072d1aeb              # double 0.86431599999999997
	.quad	0x4009bde15ca6ca04              # double 3.2177150000000001
	.quad	0x4022389b0ee49f51              # double 9.1105579999999993
	.quad	0x3fe061650a45d420              # double 0.51188900000000004
	.quad	0x401cbeee0f3cb3e5              # double 7.1864549999999996
	.quad	0x40111c1094a2b9d4              # double 4.2774070000000002
	.quad	0x401ccf9f87f023ea              # double 7.2027570000000001
	.quad	0x4022ed24e160d888              # double 9.4631720000000001
	.quad	0x400f10acc0bdcad1              # double 3.8831419999999999
	.quad	0x3fa123a29c779a6b              # double 0.033474999999999998
	.quad	0x401622617c1bda51              # double 5.5335749999999999
	.quad	0x4003b3d4ae429e0a              # double 2.4628079999999999
	.quad	0x3faff64cf8d716d3              # double 0.062426000000000002
	.quad	0x40013d5dc4007571              # double 2.1549640000000001
	.quad	0x4022d0df58c08b76              # double 9.4079540000000001
	.quad	0x3ffbb5781c714fce              # double 1.7318039999999999
	.quad	0x3fd2e920c069e7fb              # double 0.29547899999999999
	.quad	0x4018b5fe111276fb              # double 6.177727
	.quad	0x402165d872f33ca3              # double 8.6989169999999998
	.quad	0x40171e2a3cea6c1a              # double 5.779458
	.quad	0x4019b8d7e02645e5              # double 6.4305110000000001
	.quad	0x400b9b107746887b              # double 3.4507150000000002
	.quad	0x4020c17c3d68405b              # double 8.3779009999999996
	.quad	0x40157aa821f2990f              # double 5.3697819999999998
	.quad	0x401e8a2e3c536d65              # double 7.6349419999999996
	.quad	0x40182a0a52695960              # double 6.0410550000000001
	.quad	0x400f13a8a3f8982d              # double 3.8845990000000001
	.quad	0x402288c8cd63cb81              # double 9.2671569999999992
	.quad	0x401c6cb74ddf86e4              # double 7.1061680000000003
	.quad	0x401d357abb8800eb              # double 7.3022260000000001
	.quad	0x4014acd855970b4a              # double 5.1687940000000001
	.quad	0x4021de679463cfb3              # double 8.9343839999999997
	.quad	0x4021862a3cea6c1a              # double 8.762041
	.quad	0x401080d413122b7c              # double 4.1258090000000003
	.quad	0x40111b862b27cbf7              # double 4.2768790000000001
	.quad	0x4016e8e7ddca4b12              # double 5.7274469999999997
	.quad	0x400bc2e87d2c7b89              # double 3.47017
	.quad	0x4019155d1c3ac92a              # double 6.2708630000000003
	.quad	0x40109c98a222d517              # double 4.1529259999999999
	.quad	0x401c60739b024f66              # double 7.0941910000000004
	.quad	0x401bafdac68a936c              # double 6.9217329999999997
	.quad	0x400cb6a487336588              # double 3.589181
	.quad	0x401cbfa3fcc9ea9a              # double 7.1871489999999998
	.quad	0x40201f23aafff36b              # double 8.0608190000000004
	.quad	0x40166d45a5fc7e6b              # double 5.6067109999999998
	.quad	0x400169613d31b9b6              # double 2.1764549999999998
	.quad	0x40049df2239e6aba              # double 2.5771220000000001
	.quad	0x3fba74080f98fa37              # double 0.10333299999999999
	.quad	0x3fd22fe3f359ff50              # double 0.28417300000000001
	.quad	0x3fe0463065f9591d              # double 0.50856800000000002
	.quad	0x401a61bc55864452              # double 6.5954449999999998
	.quad	0x401b573ffac1d29e              # double 6.8352050000000002
	.quad	0x402120e970718223              # double 8.5642809999999994
	.quad	0x40048562e09fe868              # double 2.5651299999999999
	.quad	0x400507b02d59d55e              # double 2.6287539999999998
	.quad	0x3feb314ca925fe97              # double 0.84976799999999997
	.quad	0x4007b00cd855970b              # double 2.9609619999999999
	.quad	0x4018d372606fac60              # double 6.2064909999999998
	.quad	0x3ff8065d7cb2d906              # double 1.5015540000000001
	.quad	0x401cde3b03e20cd0              # double 7.217022
	.quad	0x401744e65bea0ba2              # double 5.817285
	.quad	0x4020ccb44a1f0803              # double 8.399813
	.quad	0x40044ce8101f31f4              # double 2.5375519999999998
	.quad	0x4019b810e8858ff7              # double 6.4297519999999997
	.quad	0x4021f8468448cf7d              # double 8.9849130000000006
	.quad	0x4007f508f648c719              # double 2.9946459999999999
	.quad	0x400506efc371da38              # double 2.628387
	.quad	0x40208db9841aac54              # double 8.2768060000000005
	.quad	0x4020531c0010c6f8              # double 8.1623230000000007
	.quad	0x40233e14bdfd2631              # double 9.6212520000000001
	.quad	0x401335c39bcba301              # double 4.8025039999999999
	.quad	0x40052daf4adbc665              # double 2.6473070000000001
	.quad	0x3fbfeb8d82342246              # double 0.12468799999999999
	.quad	0x4018072e275ab7dc              # double 6.0070119999999996
	.quad	0x4016d9424e592967              # double 5.712167
	.quad	0x4020ddbdb5d89481              # double 8.4330879999999997
	.quad	0x40230ac77574f723              # double 9.5210530000000002
	.quad	0x401c7528283d35eb              # double 7.1144109999999996
	.quad	0x3fd9a9b499d0203e              # double 0.40098299999999998
	.quad	0x3fde1ef30a4e379b              # double 0.47063899999999997
	.quad	0x3ffdfc6759ab6d01              # double 1.8741220000000001
	.quad	0x401558848387df5d              # double 5.336443
	.quad	0x402371253543aeab              # double 9.7209869999999991
	.quad	0x401f1eabbcb1cc96              # double 7.7799519999999998
	.quad	0x40164b4dcebfec14              # double 5.5735390000000002
	.quad	0x3fc9ffe6d58c8eef              # double 0.203122
	.quad	0x400c85a5fc7e6b40              # double 3.565258
	.quad	0x4015b1eeed8904f7              # double 5.4237630000000001
	.quad	0x401c84959e625636              # double 7.1294769999999996
	.quad	0x4023c6ec5b078d93              # double 9.888522
	.quad	0x3feff559b3d07c85              # double 0.99870000000000003
	.quad	0x3fe5038c111ada77              # double 0.65668300000000002
	.quad	0x400eb1f36262cba7              # double 3.8368899999999999
	.quad	0x3ff6f2d1aeb3dd12              # double 1.4342820000000001
	.quad	0x400c621d96e9bbf1              # double 3.5479080000000001
	.quad	0x400e4c996b7670a0              # double 3.7874020000000002
	.quad	0x4019e93ff25e56cd              # double 6.4777829999999996
	.quad	0x400c6371da37ef5b              # double 3.5485570000000002
	.quad	0x401f1183b60285ec              # double 7.7671039999999998
	.quad	0x4010045069a4df48              # double 4.004213
	.quad	0x402348a9de8b3b32              # double 9.641921
	.quad	0x401e6888f861a60d              # double 7.6020849999999997
	.quad	0x40113e9bbf0dc769              # double 4.3111410000000001
	.quad	0x4015dcf7446f9b99              # double 5.4657869999999997
	.quad	0x3feee2ae4b018612              # double 0.965171
	.quad	0x400dbdfc9ff92f2b              # double 3.7177669999999998
	.quad	0x4002904a2fcefaa4              # double 2.3204539999999998
	.quad	0x4016d76c8b439581              # double 5.710375
	.quad	0x3feb9c1f85d744f6              # double 0.86280800000000002
	.quad	0x3ff77a1c25d07421              # double 1.4673119999999999
	.quad	0x400289fe86833c60              # double 2.31738
	.quad	0x3ff1cdb2702a3487              # double 1.112719
	.quad	0x40217174c4cdfaca              # double 8.7215939999999996
	.quad	0x402030d6909aed57              # double 8.0953870000000006
	.quad	0x40045947cfa26a23              # double 2.5435940000000001
	.quad	0x4012fac258d5842b              # double 4.7448819999999996
	.quad	0x3ff146327ed84d34              # double 1.0796380000000001
	.quad	0x402055f3b645a1cb              # double 8.1678750000000004
	.quad	0x401eaf79c842fa51              # double 7.6713630000000003
	.quad	0x3fea0f9f44d44567              # double 0.81440699999999999
	.quad	0x4013c55043e5321e              # double 4.9426889999999997
	.quad	0x401362c4d65e4606              # double 4.8464539999999996
	.quad	0x40085929670196d9              # double 3.043536
	.quad	0x4023d7d0f1f57b42              # double 9.9215160000000004
	.quad	0x401dbabbcb1cc964              # double 7.4323569999999997
	.quad	0x401fb474d9c6b053              # double 7.9262269999999999
	.quad	0x401841b152f3c2db              # double 6.0641530000000001
	.quad	0x40208fcaa7589efe              # double 8.2808430000000008
	.quad	0x4023eedfc5cdd50b              # double 9.9665510000000008
	.quad	0x40166e7ee9142b30              # double 5.6079059999999998
	.quad	0x3facf0d844d013a9              # double 0.056524999999999999
	.quad	0x4023fc9bc7714339              # double 9.9933759999999995
	.quad	0x40011311a543f1c7              # double 2.1343109999999998
	.quad	0x4022eca7d6733ebc              # double 9.462218
	.quad	0x3ff8cb545c78a6db              # double 1.549641
	.quad	0x402130d5e8d54110              # double 8.5953820000000007
	.quad	0x401fd5c4a83b1d0d              # double 7.9587580000000004
	.quad	0x401198fb00bcbe62              # double 4.3993950000000002
	.quad	0x4015317df19d66ae              # double 5.2983320000000003
	.quad	0x3fd12cd7cf5f4e44              # double 0.26836199999999999
	.quad	0x3febc5e0b4e11dbd              # double 0.86790500000000004
	.quad	0x4015c85db76b3bb8              # double 5.4456699999999998
	.quad	0x4016d24d8fd5cb79              # double 5.7053739999999999
	.quad	0x4023216d0917d6b6              # double 9.5652849999999994
	.quad	0x3ff9cebdd334c5da              # double 1.6129739999999999
	.quad	0x401816b8305d95dd              # double 6.0221869999999997
	.quad	0x401f340e1719f7f9              # double 7.8008350000000001
	.quad	0x3feea97e132b55ef              # double 0.95818999999999998
	.quad	0x3fec61240746455f              # double 0.88685800000000004
	.quad	0x4020f8a47ecfe9b8              # double 8.4856300000000005
	.quad	0x402101c3ce2089e3              # double 8.5034469999999995
	.quad	0x40107ba8826aa8eb              # double 4.1207599999999998
	.quad	0x3ff55e9c0229a5ec              # double 1.3355980000000001
	.quad	0x400f0d51f81a5871              # double 3.8815040000000001
	.quad	0x3fd065f5275ee99a              # double 0.25622299999999998
	.quad	0x4019f85c24c404a7              # double 6.4925389999999998
	.quad	0x3fd691afc04c8bca              # double 0.35264200000000001
	.quad	0x3fec5d8d79d0a676              # double 0.88641999999999999
	.quad	0x3ff482c6ef3d3a1d              # double 1.281928
	.quad	0x401be09a24031487              # double 6.9693379999999996
	.quad	0x401805e5f30e7ff6              # double 6.0057600000000004
	.quad	0x4002df4d37c1376d              # double 2.3590339999999999
	.quad	0x3fde238da3c21188              # double 0.47092000000000001
	.quad	0x4022c3cec84f8f8a              # double 9.3824369999999995
	.quad	0x4021dd393250b524              # double 8.9320769999999996
	.quad	0x40176661ae70c133              # double 5.8499819999999998
	.quad	0x3ff543d35eb7457c              # double 1.329059
	.quad	0x401f782adc4c9c91              # double 7.8673510000000002
	.quad	0x4010b1ad6451b930              # double 4.1735129999999998
	.quad	0x400b3b85e80bed74              # double 3.404064
	.quad	0x400b582a9930be0e              # double 3.41805
	.quad	0x400f157f737da61e              # double 3.885497
	.quad	0x400e9c054ef459da              # double 3.8261820000000002
	.quad	0x40154c82e019b0ab              # double 5.3247179999999998
	.quad	0x401c24373f316e37              # double 7.0353669999999999
	.quad	0x40202ba237cdcca7              # double 8.0852219999999999
	.quad	0x3fe6b8b8ae31d713              # double 0.71004900000000004
	.quad	0x401b93d25247cb71              # double 6.8943570000000003
	.quad	0x3fe8def62f9ca5be              # double 0.77721700000000005
	.quad	0x40174d93c46d82ba              # double 5.8257589999999997
	.quad	0x401ef0e38a7e73a3              # double 7.7352429999999996
	.quad	0x400992a7bd48cb4b              # double 3.196609
	.quad	0x4020630be0ded289              # double 8.1934500000000003
	.quad	0x4003961dc93ea2d3              # double 2.448299
	.quad	0x4002e12dfd694ccb              # double 2.3599510000000001
	.quad	0x401e3b7f1737542a              # double 7.5581019999999999
	.quad	0x4012082ecaeea63b              # double 4.5079909999999996
	.quad	0x3ff81b8fde2ef4e0              # double 1.506729
	.quad	0x3fc3cbd556084a51              # double 0.15465799999999999
	.quad	0x4014fa500d5e8d54              # double 5.2444459999999999
	.quad	0x4022b48366516db1              # double 9.3525650000000002
	.quad	0x4021af301eabbcb2              # double 8.8421640000000004
	.quad	0x4001acec41dd1a22              # double 2.209435
	.quad	0x4010134330d73861              # double 4.0188110000000004
	.quad	0x4003effa7eb6bf44              # double 2.4921769999999999
	.quad	0x4015c0d6b228dc98              # double 5.4383189999999999
	.quad	0x400282fd75e2046c              # double 2.3139599999999998
	.quad	0x3fe131c0010c6f7a              # double 0.537323
	.quad	0x3feb753c579f2346              # double 0.85806099999999996
	.quad	0x4020ffe4de3b8a1a              # double 8.4997930000000004
	.quad	0x3ff505d851654d62              # double 1.3139270000000001
	.quad	0x4019f68a50507a6c              # double 6.4907620000000001
	.quad	0x4021d8fe47991bc5              # double 8.9238149999999994
	.quad	0x401221a261bf37b9              # double 4.5328460000000002
	.quad	0x4023c4a3a4b5568f              # double 9.8840610000000008
	.quad	0x40148e92d55a3a08              # double 5.1392319999999998
	.quad	0x401cfdc443914f48              # double 7.2478189999999998
	.quad	0x40093a94bbe4473d              # double 3.1536040000000001
	.quad	0x4009641dd1a21ea3              # double 3.1738849999999998
	.quad	0x401c67b677f6b1a3              # double 7.1012820000000003
	.quad	0x40190d477bbf93ff              # double 6.2629679999999999
	.quad	0x3fef4e11dbca9692              # double 0.97828000000000004
	.quad	0x40084e221c8a7a42              # double 3.038151
	.quad	0x400c95feda661284              # double 3.5732400000000002
	.quad	0x3fe32c929aa1d756              # double 0.59919100000000003
	.quad	0x401f138fffbce421              # double 7.7691039999999995
	.quad	0x4015451e75360d02              # double 5.3174989999999998
	.quad	0x401073358f2e05cd              # double 4.1125090000000002
	.quad	0x3ffbcc9107faa045              # double 1.7374430000000001
	.quad	0x4022227b0b391926              # double 9.0673449999999995
	.quad	0x400352d905c03361              # double 2.4154529999999999
	.quad	0x401968533b107747              # double 6.3518800000000004
	.quad	0x400ef13f077ccc03              # double 3.8677959999999998
	.quad	0x401b1f1561911490              # double 6.7803550000000001
	.quad	0x4008904c48adeebb              # double 3.0704579999999999
	.quad	0x400530d5a5b9628d              # double 2.6488450000000001
	.quad	0x402093a2df9378ee              # double 8.2883519999999997
	.quad	0x40177422ccb3a259              # double 5.8634139999999997
	.quad	0x401a1cd67fd3f5b6              # double 6.528162
	.quad	0x4020df07bfe7e1fc              # double 8.4356059999999999
	.quad	0x40003290abb44e51              # double 2.0246900000000001
	.quad	0x401ec9e7b80a9de9              # double 7.6971730000000002
	.quad	0x401f3f1a1986b9c3              # double 7.8116229999999999
	.quad	0x3fef73d188f42fe8              # double 0.98288799999999998
	.quad	0x3ffd23150dae3e6c              # double 1.8210649999999999
	.quad	0x4019315df6555c53              # double 6.2982100000000001
	.quad	0x4022ac81d3aa36a0              # double 9.3369280000000003
	.quad	0x400f6ba7b9170d63              # double 3.9275660000000001
	.quad	0x401c0269595feda6              # double 7.0023549999999997
	.quad	0x4021393660e51d26              # double 8.6117430000000006
	.quad	0x4004742d490e66cb              # double 2.556727
	.quad	0x401f2d7ecbb7f9d7              # double 7.794429
	.quad	0x40139b1960fa15db              # double 4.9014639999999998
	.quad	0x3fdf240fa9c12f0a              # double 0.48657600000000001
	.quad	0x402274acaff6d331              # double 9.2278800000000007
	.quad	0x4021e7adafd11383              # double 8.9524969999999993
	.quad	0x4021e1c9d5a187a5              # double 8.9409930000000006
	.quad	0x402144e8d972cd7d              # double 8.6345890000000001
	.quad	0x3ff5a4ffc9795b36              # double 1.3527830000000001
	.quad	0x400c12f1a9fbe76d              # double 3.5092500000000002
	.quad	0x40085c1eff9f87f0              # double 3.0449809999999999
	.quad	0x4004f5f88fc9363f              # double 2.6201029999999998
	.quad	0x401b2132b55ef1fe              # double 6.7824200000000001
	.quad	0x4003434b945308bc              # double 2.4078590000000002
	.quad	0x40237eeefa1e3eaf              # double 9.7479169999999992
	.quad	0x40132dea465a5764              # double 4.7948389999999996
	.quad	0x40054878fabda0e0              # double 2.6603870000000001
	.quad	0x4017e77f27fe4bcb              # double 5.9760710000000001
	.quad	0x401aaf284167a95d              # double 6.6710520000000004
	.quad	0x3ff632f123c42a67              # double 1.387437
	.quad	0x401fa7c5692b3cc5              # double 7.9138390000000002
	.quad	0x401a28c9320d9946              # double 6.5398300000000003
	.quad	0x3fc668f4b61fe21e              # double 0.17507800000000001
	.quad	0x40192940357a3550              # double 6.2902839999999998
	.quad	0x3fed03fb3743632c              # double 0.90673599999999998
	.quad	0x4011fa597d49d7ba              # double 4.4944819999999996
	.quad	0x40123f3775b81301              # double 4.5617349999999997
	.quad	0x4016a3dd54da4ce8              # double 5.6600239999999999
	.quad	0x4022244f3ba775fb              # double 9.0709169999999997
	.quad	0x400c98a6dacabc51              # double 3.5745369999999999
	.quad	0x3fed1b52007dd441              # double 0.90958499999999998
	.quad	0x40201056e696a26e              # double 8.0319129999999994
	.quad	0x4014752fc2656abe              # double 5.1144400000000001
	.quad	0x40127056c508b32d              # double 4.6097060000000001
	.quad	0x401582630ec31162              # double 5.3773309999999999
	.quad	0x401df1355475a31a              # double 7.4855549999999997
	.quad	0x401996e4c0df58c1              # double 6.3973570000000004
	.quad	0x401f9d130df9bdc7              # double 7.9033930000000003
	.quad	0x401fa199bb2788db              # double 7.9078129999999999
	.quad	0x401aeab5807fed20              # double 6.7292079999999999
	.quad	0x4021cd0e779207d5              # double 8.9005010000000002
	.quad	0x401d682b62845996              # double 7.3517279999999996
	.quad	0x401149f2ba9d1f60              # double 4.3222149999999999
	.quad	0x401ba603925bb7b7              # double 6.9121230000000002
	.quad	0x4011ef7446f9b995              # double 4.4838420000000001
	.quad	0x40156d0d0678c005              # double 5.3564949999999998
	.quad	0x4019013879c4113c              # double 6.2511919999999996
	.quad	0x400936bf444e0daa              # double 3.151732
	.quad	0x40104ceaf251c194              # double 4.0751150000000003
	.quad	0x3ffb8ee7c49fd7a1              # double 1.7223889999999999
	.quad	0x40105e5796bfca86              # double 4.0921310000000002
	.quad	0x40080aec0724b76f              # double 3.0053329999999998
	.quad	0x400c8e30caa326e1              # double 3.569429
	.quad	0x4003aafe60c38f36              # double 2.4584929999999998
	.quad	0x3fed3c925785f8d3              # double 0.91364400000000001
	.quad	0x3f6c714fce746cb9              # double 0.0034719999999999998
	.quad	0x4017b68cef672b88              # double 5.9282719999999998
	.quad	0x40108b84988094e6              # double 4.1362480000000001
	.quad	0x3ff1d3dc8b86b160              # double 1.1142240000000001
	.quad	0x400e42328f9f44d4              # double 3.7823229999999999
	.quad	0x401fc6c9c0a8d21c              # double 7.9441290000000002
	.quad	0x40201943e1006078              # double 8.0493459999999999
	.quad	0x4017d92e62131a8f              # double 5.962091
	.quad	0x401d47ae5796bfcb              # double 7.3200010000000004
	.quad	0x4022bbad5bee3d60              # double 9.3665570000000002
	.quad	0x40125c92146a1a50              # double 4.590401
	.quad	0x400647cf1c3265ae              # double 2.7850630000000001
	.quad	0x401e55bc87db2b34              # double 7.5837269999999997
	.quad	0x4021e82cd39da166              # double 8.9534669999999998
	.quad	0x40110fcd67fd3f5b              # double 4.2654319999999997
	.quad	0x4010a8b1dd5d3dc9              # double 4.1647410000000002
	.quad	0x3fd6ecf63800218e              # double 0.358213
	.quad	0x4020b0c21e1d2179              # double 8.3452310000000001
	.quad	0x401fc83382e44b6f              # double 7.9455090000000003
	.quad	0x4012acd67fd3f5b6              # double 4.668787
	.quad	0x40200a6e32e3821b              # double 8.0203720000000001
	.quad	0x402066ff9f87f024              # double 8.2011690000000001
	.quad	0x40119f6db940fece              # double 4.4056920000000002
	.quad	0x3ffbbd5992428d43              # double 1.7337279999999999
	.quad	0x401196e5471715c6              # double 4.3973589999999998
	.quad	0x4016d0d73860999e              # double 5.7039460000000002
	.quad	0x4014884d76ab5808              # double 5.133108
	.quad	0x40046fab53d640ea              # double 2.5545260000000001
	.quad	0x4020f8bd66277c46              # double 8.4858200000000004
	.quad	0x401d33d9ec700043              # double 7.3006359999999999
	.quad	0x4011cde69ad42c3d              # double 4.4510750000000003
	.quad	0x401048472c0e7bc4              # double 4.0705840000000002
	.quad	0x3fe82f1455219a84              # double 0.75574699999999994
	.quad	0x3fe7cfb97bb73083              # double 0.74410699999999996
	.quad	0x401e417c1bda511a              # double 7.5639500000000002
	.quad	0x402303de1e2de871              # double 9.5075540000000007
	.quad	0x40205a5bb7b6bb13              # double 8.1764810000000008
	.quad	0x40134e28aa433509              # double 4.826327
	.quad	0x401b50c2c5e2cdc0              # double 6.8288679999999999
	.quad	0x3ff3986ec17ebaf1              # double 1.224715
	.quad	0x4011bc2e770bd018              # double 4.4337710000000001
	.quad	0x4013aa2f05a708ee              # double 4.9161950000000001
	.quad	0x3fe60dac258d5843              # double 0.68916900000000003
	.quad	0x400c7c03361565c3              # double 3.5605530000000001
	.quad	0x401d1911cf355cd9              # double 7.2744819999999999
	.quad	0x4020501e68a0d34a              # double 8.1564820000000005
	.quad	0x40074e71476af89c              # double 2.9133019999999998
	.quad	0x401ec326e115592e              # double 7.6905780000000004
	.quad	0x401ba9f383f0bae9              # double 6.9159680000000003
	.quad	0x4014c118c197e564              # double 5.1885709999999996
	.quad	0x4023ff8df7a4e7ab              # double 9.9991299999999991
	.quad	0x400a9a63f9a49c2c              # double 3.325386
	.quad	0x40002915379fa97e              # double 2.02006
	.quad	0x400668112ba16e7a              # double 2.8008139999999999
	.quad	0x4013d6d43d03968d              # double 4.9597939999999996
	.quad	0x3fd5237cdcca70d2              # double 0.330291
	.quad	0x401b04267839cd81              # double 6.7540529999999999
	.quad	0x402097778dd616f8              # double 8.2958339999999993
	.quad	0x4016b00c521dda06              # double 5.6719220000000004
	.quad	0x4011806530058149              # double 4.3753859999999998
	.quad	0x401badc1e7967caf              # double 6.9196850000000003
	.quad	0x4023cb8cfbfc6541              # double 9.8975600000000003
	.quad	0x4012c0f0e90bc7b4              # double 4.6884189999999997
	.quad	0x400f4fba8826aa8f              # double 3.9139300000000001
	.quad	0x3fff1f340d4dc65c              # double 1.9451179999999999
	.quad	0x401ac435696e58a3              # double 6.6916099999999998
	.quad	0x4011f424e5929670              # double 4.4884219999999999
	.quad	0x4023678897e99631              # double 9.7022139999999996
	.quad	0x3fe93e24febd09e1              # double 0.78883599999999998
	.quad	0x3fd38c0ce91c8eac              # double 0.305423
	.quad	0x3fdc23c85c24c405              # double 0.43968400000000002
	.quad	0x402072deca2552a0              # double 8.2243560000000002
	.quad	0x401642363b256ffc              # double 5.5646599999999999
	.quad	0x4022f393ccd0fe8b              # double 9.4757370000000005
	.quad	0x40168a437824d4cc              # double 5.6350230000000003
	.quad	0x4013ab4289118c19              # double 4.9172459999999996
	.quad	0x3ffea95c853c1483              # double 1.9163479999999999
	.quad	0x401106ab5807fed2              # double 4.256513
	.quad	0x401e2f6512a94ff0              # double 7.546284
	.quad	0x401db03d9a95421c              # double 7.42211
	.quad	0x3ff74371da37ef5b              # double 1.4539660000000001
	.quad	0x3ffcfed30f062d41              # double 1.8122130000000001
	.quad	0x400e0764adff822c              # double 3.7536100000000001
	.quad	0x401257c3504c48ae              # double 4.5857060000000001
	.quad	0x400c59b90ea9e6ef              # double 3.5438100000000001
	.quad	0x402373723ee1bd1f              # double 9.7254810000000002
	.quad	0x40144c97d8cf398f              # double 5.0747980000000004
	.quad	0x3ff9fea3df6db941              # double 1.624668
	.quad	0x40105fb6134ce3de              # double 4.0934679999999997
	.quad	0x401420079a2834d2              # double 5.0312789999999996
	.quad	0x401798726d04e619              # double 5.8988740000000002
	.quad	0x4013b332acfb762e              # double 4.9249980000000004
	.quad	0x40066e10cf5b1c86              # double 2.8037429999999999
	.quad	0x4010a45132f87ad1              # double 4.1604660000000004
	.quad	0x401507e132b55ef2              # double 5.257695
	.quad	0x40124a17f4128bf4              # double 4.5723570000000002
	.quad	0x4011f8305d95dd4c              # double 4.4923719999999996
	.quad	0x40185177a7008a69              # double 6.0795579999999996
	.quad	0x4018864ece9a2c67              # double 6.1311600000000004
	.quad	0x40215c7e28240b78              # double 8.68065
	.quad	0x401bb8893b7d8490              # double 6.9302109999999999
	.quad	0x401bdd373affb04f              # double 6.9660310000000001
	.quad	0x400861ecd4aa10e0              # double 3.0478149999999999
	.quad	0x401c49a91105e1c1              # double 7.0719339999999997
	.quad	0x400279bcba301217              # double 2.3094420000000002
	.quad	0x401c3426bb55ac04              # double 7.050929
	.quad	0x401a61487768166a              # double 6.5950030000000002
	.quad	0x401509bc77143394              # double 5.2595080000000003
	.quad	0x4022b917f84449dc              # double 9.3615110000000001
	.quad	0x400db5696e58a32f              # double 3.7135799999999999
	.quad	0x401ee7481b21c476              # double 7.7258610000000001
	.quad	0x3fe4892253111f0c              # double 0.64173999999999998
	.quad	0x400ff0c804102ff9              # double 3.992569
	.quad	0x4020e6a65cf67b1c              # double 8.4504879999999999
	.quad	0x3ff5552b0a6fc58b              # double 1.3332930000000001
	.quad	0x40237976bc1effa0              # double 9.7372340000000008
	.quad	0x4021d60913a4f872              # double 8.9180379999999992
	.quad	0x4007561ed5ae1cde              # double 2.9170509999999998
	.quad	0x40141d113836a833              # double 5.0283860000000002
	.quad	0x3fcc1aef6f8f0414              # double 0.21957199999999999
	.quad	0x4013d2bc2fc69729              # double 4.9557960000000003
	.quad	0x402236789e774eec              # double 9.106389
	.quad	0x4000a8e8a71de69b              # double 2.0824750000000001
	.quad	0x40199a3875925354              # double 6.4006059999999998
	.quad	0x401f16f7a0b5ed8d              # double 7.7724289999999998
	.quad	0x4016d6801711947d              # double 5.709473
	.quad	0x40123c74b838c112              # double 4.5590390000000003
	.quad	0x401560a0f4d7add1              # double 5.3443639999999997
	.quad	0x40184097c80841ee              # double 6.0630790000000001
	.quad	0x4020dea400fba882              # double 8.4348449999999993
	.quad	0x40151d74927913e8              # double 5.2787649999999999
	.quad	0x4017ff7164c729f6              # double 5.9994560000000003
	.quad	0x3ffebd1244a6223e              # double 1.92116
	.quad	0x402395054ac29bf1              # double 9.7910559999999993
	.quad	0x3ffdbf4666ec9e23              # double 1.8591979999999999
	.quad	0x400856f112fd32c6              # double 3.0424519999999999
	.quad	0x4019e156191148fe              # double 6.4700550000000003
	.quad	0x3fd5156e264e4862              # double 0.32943299999999998
	.quad	0x40069912dba4d6e4              # double 2.8247429999999998
	.quad	0x400cb23465625a68              # double 3.5870139999999999
	.quad	0x40209d6323bbc6eb              # double 8.3073969999999999
	.quad	0x4018e3f077ccc038              # double 6.2225970000000004
	.quad	0x40120c169c23b795              # double 4.5118049999999998
	.quad	0x4011e10385c67dfe              # double 4.4697399999999998
	.quad	0x401138aa00192a73              # double 4.3053359999999996
	.quad	0x402387f2c3009b30              # double 9.7655239999999992
	.quad	0x40218fde0d66f0d0              # double 8.7809910000000002
	.quad	0x40181b2a27f1b691              # double 6.0265279999999999
	.quad	0x3fddb8066c2acb86              # double 0.46435700000000002
	.quad	0x4019aeae9ee45c36              # double 6.4205880000000004
	.quad	0x401b44e2b063e07a              # double 6.8172709999999999
	.quad	0x402360240b780347              # double 9.6877750000000002
	.quad	0x4022b199fe43675e              # double 9.3468780000000002
	.quad	0x4022b68448cf7caa              # double 9.3564779999999992
	.quad	0x400330cdc8754f37              # double 2.3988299999999998
	.quad	0x400844a83b1d0c80              # double 3.0335239999999999
	.quad	0x402105fdcdf69878              # double 8.5117019999999997
	.quad	0x400eb86a098915be              # double 3.8400460000000001
	.quad	0x401a2832b990afe6              # double 6.539256
	.quad	0x3ff9eb5e529bae47              # double 1.619963
	.quad	0x3fddb6b2af145522              # double 0.46427600000000002
	.quad	0x3ff32702a3486f05              # double 1.1970240000000001
	.quad	0x4017e24463065f96              # double 5.9709640000000004
	.quad	0x400c0f41f212d773              # double 3.50745
	.quad	0x40133b9d3cbc48f1              # double 4.808217
	.quad	0x4014c7be553ac4f8              # double 5.1950620000000001
	.quad	0x401a23c42a66dbd7              # double 6.5349279999999998
	.quad	0x4023973647baa9b5              # double 9.7953360000000007
	.quad	0x400ec66dbd72bcb6              # double 3.846889
	.quad	0x40223491d14e3bcd              # double 9.1026749999999996
	.quad	0x4000eae429e0a41a              # double 2.1146929999999999
	.quad	0x402201856a37ac3f              # double 9.0029710000000005
	.quad	0x3fd363497b7414a5              # double 0.30293500000000001
	.quad	0x4021f1815a07b353              # double 8.9716900000000006
	.quad	0x3fe4bd74d594f26b              # double 0.64812700000000001
	.quad	0x402093acd5b6805a              # double 8.2884279999999997
	.quad	0x4014bdec1c1d6cf8              # double 5.1854709999999997
	.quad	0x400729bcfd4bf099              # double 2.8953799999999998
	.quad	0x4023717e34b94531              # double 9.7216660000000008
	.quad	0x401a856191148fda              # double 6.630255
	.quad	0x3ffd52d234eb9a17              # double 1.8327199999999999
	.quad	0x40138aac96cc5fc0              # double 4.8854240000000004
	.quad	0x400d7c371da37ef6              # double 3.6856520000000002
	.quad	0x40127220791c4b90              # double 4.6114519999999999
	.quad	0x3ff01332acfb762e              # double 1.0046870000000001
	.quad	0x40169f96e158750c              # double 5.6558489999999999
	.quad	0x401978448cf7caa7              # double 6.3674489999999997
	.quad	0x3ff2b8fde2ef4e01              # double 1.170164
	.quad	0x3fb088a47ecfe9b8              # double 0.064585000000000004
	.quad	0x40154155d5f56a7b              # double 5.3138040000000002
	.quad	0x401638522ea0fd3b              # double 5.5550009999999999
	.quad	0x4023145aa2e3c537              # double 9.5397540000000002
	.quad	0x401403150dae3e6c              # double 5.0030099999999997
	.quad	0x4020ec5436b8f9b1              # double 8.4615799999999997
	.quad	0x40218b11e85fd04a              # double 8.7716209999999997
	.quad	0x4023aba322af5771              # double 9.8352289999999999
	.quad	0x401868bd230b9dc3              # double 6.102284
	.quad	0x402263fad2999568              # double 9.1952730000000002
	.quad	0x4020a3b4b2fa93af              # double 8.3197379999999992
	.quad	0x400c1504c48adeec              # double 3.5102630000000001
	.quad	0x401a9be1eb4202da              # double 6.6522290000000002
	.quad	0x40204eba8c586877              # double 8.1537670000000002
	.quad	0x40174a2cecc814d7              # double 5.8224369999999999
	.quad	0x4017d77f27fe4bcb              # double 5.9604460000000001
	.quad	0x401ea00f776c4828              # double 7.6563090000000002
	.quad	0x40118a704bc27632              # double 4.3851940000000003
	.quad	0x401434e9c4545847              # double 5.0516730000000001
	.quad	0x401433482be8bc17              # double 5.0500800000000003
	.quad	0x402165ea897635e7              # double 8.6990549999999995
	.quad	0x4011b24894c447c3              # double 4.424105
	.quad	0x3ff7f2096787ce96              # double 1.496591
	.quad	0x4005f2d4d4024b34              # double 2.7435700000000001
	.quad	0x3fff5097c80841ee              # double 1.957176
	.quad	0x4020cbb256ffc116              # double 8.3978450000000002
	.quad	0x40222be48a58b3f6              # double 9.0857279999999996
	.quad	0x400994c22ee4191a              # double 3.1976360000000001
	.quad	0x3ffe89906cca2db6              # double 1.908585
	.quad	0x401297d5a9eb2075              # double 4.6482760000000001
	.quad	0x40102827b6fe2e6f              # double 4.0392140000000003
	.quad	0x401d166ec9e236c1              # double 7.2719069999999997
	.quad	0x4019ebd44998d046              # double 6.480302
	.quad	0x401bc48a58b3f63c              # double 6.9419339999999998
	.quad	0x400ff7f6b1a2a4db              # double 3.996076
	.quad	0x401c2a20ddc61954              # double 7.0411409999999997
	.quad	0x401f2e820e629952              # double 7.7954179999999997
	.quad	0x401058d7e02645e5              # double 4.0867610000000001
	.quad	0x3ff62544fe36d224              # double 1.384099
	.quad	0x40203601797cc3a0              # double 8.10548
	.quad	0x4022e6b52c9d16fd              # double 9.4506010000000006
	.quad	0x40199c36da87a073              # double 6.4025530000000002
	.quad	0x4010a1e215336dec              # double 4.1580890000000004
	.quad	0x4012fec13b9f127f              # double 4.7487839999999997
	.quad	0x3ffe6c625e99e94b              # double 1.9014610000000001
	.quad	0x3ff8e46ae3a3a8e7              # double 1.555766
	.quad	0x401d603254e6e222              # double 7.3439420000000002
	.quad	0x400781d6494d50ec              # double 2.9383970000000001
	.quad	0x3fb8e3369b9d7fd8              # double 0.097216999999999998
	.quad	0x4012b7ee4e26d480              # double 4.6796199999999999
	.quad	0x4015bc5692b3cc4b              # double 5.4339240000000002
	.quad	0x4003f71e29b6b2af              # double 2.495663
	.quad	0x4020b8c1b97353b5              # double 8.3608530000000005
	.quad	0x40203bd61f5be5da              # double 8.1168680000000002
	.quad	0x3ff950e453d20f2c              # double 1.582249
	.quad	0x4016995e9e1b089a              # double 5.649775
	.quad	0x40136698bb4d4888              # double 4.8501919999999998
	.quad	0x401fe2e40852b4d9              # double 7.9715730000000002
	.quad	0x401946f21f6cacd2              # double 6.3192830000000004
	.quad	0x40104ad2dcb1465f              # double 4.0730700000000004
	.quad	0x4023056b65a9a805              # double 9.5105850000000007
	.quad	0x401b98b86b15f890              # double 6.8991410000000002
	.quad	0x40217c13986338b4              # double 8.7423369999999991
	.quad	0x401e67685985ad54              # double 7.6009840000000004
	.quad	0x4020d57eaa2a0a96              # double 8.4169820000000009
	.quad	0x4021fce032db1e9f              # double 8.9938979999999997
	.quad	0x4019c19c9d5a187a              # double 6.4390739999999997
	.quad	0x40039c48f10a99b7              # double 2.451311
	.quad	0x400af9e731d2e0e3              # double 3.372023
	.quad	0x4018a1a1986b9c30              # double 6.1578429999999997
	.quad	0x4014047021d10b20              # double 5.0043340000000001
	.quad	0x400e34e7ee9142b3              # double 3.775833
	.quad	0x4019cea4a8c154ca              # double 6.4518000000000004
	.quad	0x4016ab7bf1e8e608              # double 5.667465
	.quad	0x401c401322f27350              # double 7.0625730000000004
	.quad	0x40021ae924f227d0              # double 2.2631399999999999
	.quad	0x4001aa411c2a0232              # double 2.208132
	.quad	0x4010d28027d88c1e              # double 4.2055670000000003
	.quad	0x400ecf49cf56eac8              # double 3.8512149999999998
	.quad	0x40226f4d37c1376d              # double 9.2173859999999994
	.quad	0x401d8572580c3090              # double 7.3803190000000001
	.quad	0x4012d07fed20296b              # double 4.7036129999999998
	.quad	0x4009bbe6e6538690              # double 3.2167490000000001
	.quad	0x400bc5d18090b418              # double 3.4715910000000001
	.quad	0x40218938de6ddf01              # double 8.7680120000000006
	.quad	0x4018c7292c493426              # double 6.1944929999999996
	.quad	0x40193b1183b60286              # double 6.3076840000000001
	.quad	0x4022fd27807789a4              # double 9.4944419999999993
	.quad	0x400122a66dbd72bd              # double 2.1419190000000001
	.quad	0x40130012dfd694cd              # double 4.7500720000000003
	.quad	0x4019cbb0e5e67946              # double 6.4489169999999998
	.quad	0x400ea0ae9680e065              # double 3.8284579999999999
	.quad	0x4022aef34d6a161e              # double 9.3416999999999994
	.quad	0x4011ff16f4384ba1              # double 4.4991110000000001
	.quad	0x40072a4228997c3d              # double 2.8956339999999998
	.quad	0x4022cc3a2163fdd6              # double 9.3988809999999994
	.quad	0x401f385f8d2e514c              # double 7.8050519999999999
	.quad	0x3ffb5fa76534373f              # double 1.710853
	.quad	0x4022b50635a426bb              # double 9.3535629999999994
	.quad	0x4005d87c6327ed85              # double 2.7307060000000001
	.quad	0x40167fb762d83c6d              # double 5.6247230000000004
	.quad	0x400943704790b84a              # double 3.1579290000000002
	.quad	0x4020f7121ab4b72c              # double 8.4825599999999994
	.quad	0x40231009b30728e9              # double 9.5313239999999996
	.quad	0x401300e1f7d73c92              # double 4.7508619999999997
	.quad	0x400a32d4d4024b34              # double 3.2748200000000001
	.quad	0x4014078feef5ec81              # double 5.0073850000000002
	.quad	0x3fd38ee286727568              # double 0.30559599999999998
	.quad	0x3ff1071e6cd29132              # double 1.064238
	.quad	0x402088d6f544bb1b              # double 8.2672650000000001
	.quad	0x401d9b6b6e0d23d5              # double 7.4017770000000001
	.quad	0x4013ae9c4545846f              # double 4.9205180000000004
	.quad	0x3fd8b6bf444e0daa              # double 0.386154
	.quad	0x40076aa10e022142              # double 2.9270649999999998
	.quad	0x401b48359bc33f85              # double 6.8205169999999997
	.quad	0x4017f297bfa4c61e              # double 5.9869070000000004
	.quad	0x401e73a2595bbbe8              # double 7.6129239999999995
	.quad	0x4015191b3f20a73f              # double 5.2745179999999996
	.quad	0x401a53947496aad2              # double 6.5816210000000002
	.quad	0x400b8f98fa376923              # double 3.4451160000000001
	.quad	0x40237c5a5fc7e6b4              # double 9.742877
	.quad	0x4020f448cf7caa76              # double 8.4771180000000008
	.quad	0x40141e15ca6ca03c              # double 5.0293799999999997
	.quad	0x401c693a2df9378f              # double 7.1027610000000001
	.quad	0x3fe94918e325d4a6              # double 0.79017300000000001
	.quad	0x3fc5139c94f69caa              # double 0.164661
	.quad	0x4022bc22467be554              # double 9.3674490000000005
	.quad	0x401409702e6644d8              # double 5.0092169999999996
	.quad	0x401cc09edbf8b9bb              # double 7.1881060000000003
	.quad	0x401ddd306a2b1705              # double 7.466005
	.quad	0x40155947064ece9a              # double 5.3371849999999998
	.quad	0x400cdba2be0589ad              # double 3.6072440000000001
	.quad	0x4023b815e39713ad              # double 9.8595419999999993
	.quad	0x401391ec4e7253da              # double 4.8925029999999996
	.quad	0x40225c18d6909aed              # double 9.1798769999999994
	.quad	0x3ff16426bb55ac04              # double 1.086951
	.quad	0x3fdc7c243dccea29              # double 0.445077
	.quad	0x401d5d1bb4916ca4              # double 7.3409259999999996
	.quad	0x40181dab191dde37              # double 6.0289729999999997
	.quad	0x402263d4ae429e0a              # double 9.1949819999999995
	.quad	0x3ff8e40c8472c0e8              # double 1.5556760000000001
	.quad	0x401c96805a2d7300              # double 7.1469740000000002
	.quad	0x4017b6d8f4f93bc1              # double 5.9285620000000003
	.quad	0x401c7df19d66adb4              # double 7.122992
	.quad	0x401c2bf1a5ca2984              # double 7.0429139999999997
	.quad	0x4018b3df6db940ff              # double 6.1756570000000002
	.quad	0x401184e3ffef3908              # double 4.3797759999999997
	.quad	0x4020cd3c792d1288              # double 8.4008520000000004
	.quad	0x3fe3bbc903ea704c              # double 0.61667300000000003
	.quad	0x4022ac34e3369b9d              # double 9.3363409999999991
	.quad	0x4011b0d9d7774aba              # double 4.4227059999999998
	.quad	0x4019aa7008a697af              # double 6.4164430000000001
	.quad	0x40222622a2c23748              # double 9.0744830000000007
	.quad	0x4023ec94b380cb6c              # double 9.9620719999999991
	.quad	0x4020bdc3bd599243              # double 8.3706340000000008
	.quad	0x4005d79a6b50b0f2              # double 2.7302749999999998
	.quad	0x4003666666666666              # double 2.4249999999999998
	.quad	0x401aa9dcb5781c71              # double 6.6658809999999997
	.quad	0x401cd2f0e0a84be4              # double 7.205997
	.quad	0x4012030a0b1bbcf5              # double 4.5029680000000001
	.quad	0x400858a65492ff4c              # double 3.0432860000000002
	.quad	0x400dd5caf2d7f951              # double 3.7293910000000001
	.quad	0x40112ac322291fb4              # double 4.29176
	.quad	0x40234529131ec0b5              # double 9.6350789999999992
	.quad	0x4020816ca46e08f2              # double 8.2527819999999998
	.quad	0x400c30c026cc1ca4              # double 3.5238040000000002
	.quad	0x401f00b6b6e0d23d              # double 7.7506969999999997
	.quad	0x4017036f7e3d1cc1              # double 5.753355
	.quad	0x3fb95b4677b395c4              # double 0.099048999999999998
	.quad	0x401f52ecaeea63b7              # double 7.8309810000000004
	.quad	0x4002e8b2a6b0d951              # double 2.3636219999999999
	.quad	0x400cb8b60f1b25f6              # double 3.5901909999999999
	.quad	0x40156f993d5347a6              # double 5.3589830000000003
	.quad	0x3ff4048adeebb342              # double 1.251109
	.quad	0x4012c8d0cc35ce18              # double 4.6961089999999999
	.quad	0x401619a415f45e0b              # double 5.5250399999999997
	.quad	0x40018f32bdc26dce              # double 2.1949209999999999
	.quad	0x402359f3e89a88ad              # double 9.6756890000000002
	.quad	0x3fd2adf71eafee70              # double 0.29186800000000002
	.quad	0x4016a225b749adc9              # double 5.658347
	.quad	0x40159485a0be5109              # double 5.395041
	.quad	0x4021e895d0b73d19              # double 8.9542680000000008
	.quad	0x400c7b38d60a6330              # double 3.5601669999999999
	.quad	0x4015e77b7c7820a3              # double 5.476057
	.quad	0x4021aa350d2806af              # double 8.8324359999999995
	.quad	0x3ffc3bd1676640a7              # double 1.7646040000000001
	.quad	0x4013d6149c6f36f0              # double 4.9590630000000004
	.quad	0x3ffdf882278d0cc3              # double 1.8731709999999999
	.quad	0x40052877681669cf              # double 2.6447590000000001
	.quad	0x4007d475a31a4bdc              # double 2.9787400000000002
	.quad	0x4022bc3760bf5d79              # double 9.3676100000000008
	.quad	0x4014099029ae4f33              # double 5.0093389999999998
	.quad	0x400eecbb7f9d6f11              # double 3.8655919999999999
	.quad	0x4008116c1e364bec              # double 3.0085069999999998
	.quad	0x401e3b92c061847f              # double 7.5581769999999997
	.quad	0x4012fcd35a858794              # double 4.7469000000000001
	.quad	0x3fb7c6759ab6d00b              # double 0.092871999999999996
	.quad	0x401950e5e679463d              # double 6.329002
	.quad	0x401cb1ecd4aa10e0              # double 7.1737549999999999
	.quad	0x4000f62f166e008f              # double 2.1202070000000002
	.quad	0x3ff60f6f08cc575c              # double 1.378768
	.quad	0x3feeeb3fe9fadafd              # double 0.96621699999999999
	.quad	0x4013f147f1305964              # double 4.9856259999999999
	.quad	0x4019282d7b634dad              # double 6.2892359999999998
	.quad	0x3fc9d6adf71eafee              # double 0.20186399999999999
	.quad	0x4021221ea35935fc              # double 8.5666399999999995
	.quad	0x401e401cd5f99c39              # double 7.5626100000000002
	.quad	0x401bdcf0b6b6e0d2              # double 6.9657619999999998
	.quad	0x40109757d5a9eb20              # double 4.1477959999999996
	.quad	0x401a150ebaade658              # double 6.5205640000000002
	.quad	0x4022d45aa2e3c537              # double 9.4147540000000002
	.quad	0x401f01615ebfa8f8              # double 7.7513480000000001
	.quad	0x401e6900c521dda0              # double 7.6025419999999997
	.quad	0x4013c6aceaaf35e3              # double 4.9440189999999999
	.quad	0x40207de84f09528f              # double 8.2459129999999998
	.quad	0x400230142f61ed5b              # double 2.2734760000000001
	.quad	0x400348aa433508f6              # double 2.4104809999999999
	.quad	0x401fde49f51697f2              # double 7.967079
	.quad	0x400162cfd8f0c77e              # double 2.1732480000000001
	.quad	0x401cf37542a23c00              # double 7.2377520000000004
	.quad	0x40183fce746cb967              # double 6.0623110000000002
	.quad	0x4011b9bb2788db05              # double 4.4313779999999996
	.quad	0x4017e00d5e8d5411              # double 5.968801
	.quad	0x4020cb2c625e99e9              # double 8.3968229999999995
	.quad	0x4019fece5710880e              # double 6.4988340000000004
	.quad	0x4009ccb07d0aed9a              # double 3.2249460000000001
	.quad	0x400ac0d6f544bb1b              # double 3.34416
	.quad	0x401dd6b6177ea1c7              # double 7.4596790000000004
	.quad	0x3f8eadd590c0ad04              # double 0.01498
	.quad	0x40217b480a5accd5              # double 8.7407839999999997
	.quad	0x4022dd362e903644              # double 9.4320540000000008
	.quad	0x3ff4dae924f227d0              # double 1.303445
	.quad	0x40152cff21b3aeef              # double 5.2939420000000004
	.quad	0x4002ebe9c886162f              # double 2.365192
	.quad	0x402248639d5e4a38              # double 9.1413849999999996
	.quad	0x4023dc743201040c              # double 9.930574
	.quad	0x400af8b47c73eee5              # double 3.3714379999999999
	.quad	0x401ee59d99029ae5              # double 7.724234
	.quad	0x4011134a44c7b02d              # double 4.2688379999999997
	.quad	0x3ffada88ace24bba              # double 1.678353
	.quad	0x40157a7610279570              # double 5.3695909999999998
	.quad	0x4023581bc98a222d              # double 9.6720869999999994
	.quad	0x3fdc4020817fc760              # double 0.44141399999999997
	.quad	0x3ffc09aed56b0100              # double 1.752364
	.quad	0x402260e68e3ef284              # double 9.1892589999999998
	.quad	0x40201dca6ca03c4b              # double 8.0581849999999999
	.quad	0x3ffc0ace24bba12b              # double 1.7526379999999999
	.quad	0x3fecd1a86940357a              # double 0.90059299999999998
	.quad	0x4012ea31a4bdba0a              # double 4.7287049999999997
	.quad	0x400341e9af5ba2be              # double 2.407184
	.quad	0x4023d560a6330510              # double 9.9167529999999999
	.quad	0x4010353111f0c34c              # double 4.0519449999999999
	.quad	0x3ff5b7143393ab43              # double 1.357197
	.quad	0x401abcdf69878317              # double 6.6844460000000003
	.quad	0x400eb6b8f9b13166              # double 3.8392200000000001
	.quad	0x401b13cea6c1a049              # double 6.7693430000000001
	.quad	0x40006831ad2135db              # double 2.0508760000000001
	.quad	0x4021c32702a3486f              # double 8.881157
	.quad	0x3ffa7a7eb6bf444e              # double 1.654906
	.quad	0x3ffaf967caea747e              # double 1.6858900000000001
	.quad	0x3fbcb32ce89656ef              # double 0.112109
	.quad	0x401969bb2788db05              # double 6.3532529999999996
	.quad	0x400568027d88c1db              # double 2.675786
	.quad	0x401bd5e353f7ced9              # double 6.9588749999999999
	.quad	0x40054e18266772d6              # double 2.6631320000000001
	.quad	0x40153e82949a5658              # double 5.311045
	.quad	0x401daf9a49c2c1b1              # double 7.4214869999999999
	.quad	0x401652e40852b4d9              # double 5.5809480000000002
	.quad	0x401fd209aaa3ad19              # double 7.9551150000000001
	.quad	0x4012d2a305532618              # double 4.7057000000000002
	.quad	0x40037859c8c9320e              # double 2.4337650000000002
	.quad	0x40168b8d82342246              # double 5.6362819999999996
	.quad	0x3ffa5eb313be22e6              # double 1.64812
	.quad	0x401e8d51f81a5871              # double 7.6380080000000001
	.quad	0x401610e90bc7b45f              # double 5.5165139999999999
	.quad	0x3ffc79e6ab9b23dd              # double 1.7797609999999999
	.quad	0x4020f77f06705c89              # double 8.4833909999999992
	.quad	0x400fbd8adab9f55a              # double 3.9675500000000001
	.quad	0x401c1a5d28d002e2              # double 7.0257459999999998
	.quad	0x4019efa0945f9df5              # double 6.4840109999999997
	.quad	0x4015f8ec0f883340              # double 5.4930880000000002
	.quad	0x40054f35e310dbf0              # double 2.6636769999999999
	.quad	0x402393b01c92ddbe              # double 9.7884530000000005
	.quad	0x4021d7fb480a5acd              # double 8.9218390000000003
	.quad	0x3fe0d1b4fe79ee03              # double 0.52559900000000004
	.quad	0x400533e24febd09e              # double 2.650334
	.quad	0x400912ebe596c82e              # double 3.134239
	.quad	0x4021eb382e44b6e9              # double 8.9594129999999996
	.quad	0x4016a14057082492              # double 5.6574720000000003
	.quad	0x4013970153bd1676              # double 4.8974659999999997
	.quad	0x401959b30728e92d              # double 6.3375969999999997
	.quad	0x40184a732df505d1              # double 6.072705
	.quad	0x402389f601797cc4              # double 9.7694550000000006
	.quad	0x4009a432441fea81              # double 3.205174
	.quad	0x40032523f67f4dbe              # double 2.393135
	.quad	0x4005063497b7414a              # double 2.6280299999999999
	.quad	0x400196b8f9b13166              # double 2.1985950000000001
	.quad	0x401c91409a240315              # double 7.1418480000000004
	.quad	0x400f09b499d0203e              # double 3.8797389999999998
	.quad	0x401104bdba0a5269              # double 4.2546299999999997
	.quad	0x3ff20db163baba7c              # double 1.1283430000000001
	.quad	0x40223c3a2163fdd6              # double 9.1176309999999994
	.quad	0x401667268d32830a              # double 5.600733
	.quad	0x40237669270b06c4              # double 9.7312709999999995
	.quad	0x400b9a8d64d7f0ed              # double 3.4504649999999999
	.quad	0x3ff5e9ac36544fe3              # double 1.3695489999999999
	.quad	0x402243e1c9b41398              # double 9.1325819999999993
	.quad	0x4012814b167ec786              # double 4.6262629999999998
	.quad	0x4012bc50ce4ead0c              # double 4.6839019999999998
	.quad	0x3ffc4e24bba12b5e              # double 1.7690779999999999
	.quad	0x4010f9bf9c62a1b6              # double 4.2438950000000002
	.quad	0x401a4a7008a697af              # double 6.5726930000000001
	.quad	0x400884bfd2e94680              # double 3.064819
	.quad	0x40232bcf4e874c90              # double 9.585566
	.quad	0x401614f9c1f85d74              # double 5.5204839999999997
	.quad	0x401cb5aea3161a1e              # double 7.1774240000000002
	.quad	0x4016ddd3fe1975f3              # double 5.7166290000000002
	.quad	0x400d6ff64cf8d717              # double 3.6796690000000001
	.quad	0x400faaec0724b76f              # double 3.9584579999999998
	.quad	0x3fda1e7967caea74              # double 0.40810999999999997
	.quad	0x40201985ad538ac2              # double 8.0498480000000008
	.quad	0x400e1dba908a265f              # double 3.764516
	.quad	0x40142d816aceaaf3              # double 5.0444389999999997
	.quad	0x400c4d7a56de3327              # double 3.5378310000000002
	.quad	0x40206db4cc250721              # double 8.2142700000000008
	.quad	0x4022a122b7baecd0              # double 9.3147179999999992
	.quad	0x4000fde939eadd59              # double 2.12398
	.quad	0x4000e8283d35eb74              # double 2.1133579999999998
	.quad	0x401c3ec99f1ae2da              # double 7.0613159999999997
	.quad	0x4021bbf61aa3f035              # double 8.8671120000000005
	.quad	0x3fff2dea897635e7              # double 1.9487099999999999
	.quad	0x401c2121ab4b72c5              # double 7.0323549999999999
	.quad	0x401dc554b8bef8cf              # double 7.4427060000000003
	.quad	0x4022df340d4dc65c              # double 9.4359439999999992
	.quad	0x3ffef868fd199bb2              # double 1.9356469999999999
	.quad	0x4000694ab1d4f9c2              # double 2.051412
	.quad	0x3fef5b3bfb58d152              # double 0.97988699999999995
	.quad	0x401cdc05d52c16df              # double 7.2148659999999998
	.quad	0x400a550092ccf6be              # double 3.2915049999999999
	.quad	0x3fc28f6cefed6345              # double 0.14500199999999999
	.quad	0x402203a7daa4fca4              # double 9.0071399999999997
	.quad	0x40005b5bf6a0dbad              # double 2.0446089999999999
	.quad	0x3fff3ea0ba1f4b1f              # double 1.95279
	.quad	0x3ff1493faf42784b              # double 1.0803830000000001
	.quad	0x3ffb8b5bb384fd2a              # double 1.7215229999999999
	.quad	0x3ffc546a1a500d5f              # double 1.7706090000000001
	.quad	0x402032f1a9fbe76d              # double 8.0995000000000008
	.quad	0x400ff3ce63a5c1c6              # double 3.994046
	.quad	0x401a0fa2f05a708f              # double 6.5152700000000001
	.quad	0x400ca4b018611fd6              # double 3.5804140000000002
	.quad	0x402351b738e6d15b              # double 9.6596010000000003
	.quad	0x401e58676a7264a1              # double 7.5863319999999996
	.quad	0x40214d907d912557              # double 8.6514930000000003
	.quad	0x4007908aac96cc60              # double 2.9455770000000001
	.quad	0x3ff844241c3efae8              # double 1.5166360000000001
	.quad	0x3ff3f24d8fd5cb79              # double 1.246656
	.quad	0x40189be1a8262457              # double 6.152228
	.quad	0x4023b1e9d0e991ff              # double 9.8474869999999992
	.quad	0x4015b090b417ca21              # double 5.4224269999999999
	.quad	0x3ffff3a2595bbbe8              # double 1.9969809999999999
	.quad	0x3fcd80e496ededaf              # double 0.23049600000000001
	.quad	0x4008f90d9d7774ac              # double 3.1216080000000002
	.quad	0x4023edbab21815a0              # double 9.9643149999999991
	.quad	0x3fca04e1e71044f2              # double 0.20327400000000001
	.quad	0x401b270435efa616              # double 6.7881020000000003
	.quad	0x401069635610adcd              # double 4.1029179999999998
	.quad	0x400c22a3cea6c1a0              # double 3.5169139999999999
	.quad	0x3fda34267839cd81              # double 0.40943299999999999
	.quad	0x40217e7c6b8b6955              # double 8.7470429999999997
	.quad	0x3ff748eabffcdab2              # double 1.4553020000000001
	.quad	0x401c655c52e72da1              # double 7.0989849999999999
	.quad	0x3fa78ceb356da017              # double 0.045997000000000003
	.quad	0x400df16b11c6d1e1              # double 3.74288
	.quad	0x4020e41c6088d6d4              # double 8.4455290000000005
	.quad	0x401cef623076c051              # double 7.2337730000000002
	.quad	0x4022391f4f50a02c              # double 9.1115670000000008
	.quad	0x40234c8b65237048              # double 9.6495010000000007
	.quad	0x4006b50dae3e6c4c              # double 2.8384049999999998
	.quad	0x40163fc0d2c386d3              # double 5.5622590000000001
	.quad	0x400f3bd3804534bd              # double 3.9042119999999998
	.quad	0x4010956de33269e0              # double 4.1459270000000004
	.quad	0x3fefe39713ad5bee              # double 0.99653199999999997
	.quad	0x400b57bfa4c61d86              # double 3.4178459999999999
	.quad	0x4018c19f3c70c997              # double 6.1890840000000003
	.quad	0x402221847f562175              # double 9.0654640000000004
	.quad	0x4023bcf7878b7a1c              # double 9.8690759999999997
	.quad	0x4009ff3ade225fa6              # double 3.2496239999999998
	.quad	0x400d9e43ed959a31              # double 3.7022780000000002
	.quad	0x401bc8ede54b48d4              # double 6.9462200000000003
	.quad	0x3fc60a5accd53049              # double 0.17219100000000001
	.quad	0x401a485122318330              # double 6.5706220000000002
	.quad	0x4012f3226c3b927d              # double 4.7374359999999998
	.quad	0x4012e81e4712e408              # double 4.7266779999999997
	.quad	0x4003b88f42fe8251              # double 2.4651169999999998
	.quad	0x40238a66fd651b0d              # double 9.7703170000000003
	.quad	0x40109d99029ae4f3              # double 4.1539039999999998
	.quad	0x3febc447c30d306a              # double 0.86770999999999998
	.quad	0x401bb465e8922531              # double 6.9261699999999999
	.quad	0x4004c85b18548a9c              # double 2.5978300000000001
	.quad	0x400d19392189bd84              # double 3.6373160000000002
	.quad	0x400cfaeff5c6c11a              # double 3.622528
	.quad	0x4012d8661ae70c13              # double 4.7113269999999998
	.quad	0x3ff345d41fa76534              # double 1.204548
	.quad	0x4022773e681a9b8d              # double 9.2328980000000005
	.quad	0x401f2208e1501190              # double 7.7832369999999997
	.quad	0x401dd32b12d3415b              # double 7.4562189999999999
	.quad	0x3fbcebbba55d1c3b              # double 0.112972
	.quad	0x401adc1ca3a4b557              # double 6.7149530000000004
	.quad	0x3ff6f08893b7d849              # double 1.433724
	.quad	0x4021f342aa9f7b5b              # double 8.9751180000000002
	.quad	0x4022c6b52c9d16fd              # double 9.3881010000000006
	.quad	0x4021fd1f3e89a88b              # double 8.9943790000000003
	.quad	0x40131d38cda6e760              # double 4.778537
	.quad	0x3f91f31f46ed245b              # double 0.017528999999999999
	.quad	0x4014a1832fcac8e7              # double 5.1577270000000004
	.quad	0x4021391cf355cd92              # double 8.6115490000000001
	.quad	0x401d8491afc04c8c              # double 7.3794620000000002
	.quad	0x401d95a858793dd9              # double 7.3961499999999996
	.quad	0x4004736694898f60              # double 2.5563479999999998
	.quad	0x401b10e6f2e8c048              # double 6.7665059999999997
	.quad	0x401fa435ac8a3726              # double 7.910361
	.quad	0x40164aac96cc5fc0              # double 5.5729240000000004
	.quad	0x4005b842b734b513              # double 2.7149709999999998
	.quad	0x3fd52c0e7bc3c5bd              # double 0.330814
	.quad	0x40113f79420b3d4b              # double 4.3119860000000001
	.quad	0x400086e6d9be4cd7              # double 2.0658699999999999
	.quad	0x3ffb1ce4a7b4e54f              # double 1.6945539999999999
	.quad	0x401f89552e2fbe34              # double 7.8841140000000003
	.quad	0x40155afa7221858c              # double 5.3388460000000002
	.quad	0x401adb2af145521a              # double 6.7140310000000003
	.quad	0x3fb0dfaca3619978              # double 0.065912999999999999
	.quad	0x4017e660a2014728              # double 5.9749780000000001
	.quad	0x400147a9e2bcf91a              # double 2.1599919999999999
	.quad	0x400b523810e88590              # double 3.415146
	.quad	0x3ff3ee1bd1ed9dfe              # double 1.2456320000000001
	.quad	0x3fe0c901d19157ac              # double 0.52453700000000003
	.quad	0x40217da964e8b7e5              # double 8.7454330000000002
	.quad	0x401a3ee568a50508              # double 6.5614220000000003
	.quad	0x40160efd86a8fc0d              # double 5.5146389999999998
	.quad	0x40083eb28d8665e0              # double 3.0306139999999999
	.quad	0x401edf92f2b66b61              # double 7.7183339999999995
	.quad	0x3fff0a99b6f5caf3              # double 1.940088
	.quad	0x401e243aa79bbadc              # double 7.53538
	.quad	0x4002d1897a67a52b              # double 2.3523130000000001
	.quad	0x40206552e2fbe33b              # double 8.1978980000000004
	.quad	0x40135a6612839043              # double 4.8382800000000001
	.quad	0x4004eead9274e22a              # double 2.6165419999999999
	.quad	0x4014c5393250b524              # double 5.1926009999999998
	.quad	0x4006eecb74ddf86e              # double 2.8665989999999999
	.quad	0x3ff47c243dccea29              # double 1.280308
	.quad	0x40037785f8d2e515              # double 2.4333610000000001
	.quad	0x3ffe4144028e4fb9              # double 1.8909339999999999
	.quad	0x3ff531a5ca29845e              # double 1.324621
	.quad	0x4011d2c0a4a05dd9              # double 4.455813
	.quad	0x4021f13a4f8726d0              # double 8.9711479999999995
	.quad	0x400d23d70a3d70a4              # double 3.6425000000000001
	.quad	0x3ffc6154434e336a              # double 1.7737620000000001
	.quad	0x4013bc23b7952d23              # double 4.9337299999999997
	.quad	0x401e5e28aa433509              # double 7.591952
	.quad	0x401dd8d1958969a1              # double 7.4617370000000003
	.quad	0x4006128d8665e02f              # double 2.7590590000000002
	.quad	0x401527460242d05f              # double 5.2883529999999999
	.quad	0x40232a31e7d9988d              # double 9.5824119999999997
	.quad	0x3ff54cbc05d52c17              # double 1.331234
	.quad	0x3fbd2ddbdb5d8948              # double 0.113981
	.quad	0x4022347b02d59d56              # double 9.1025010000000002
	.quad	0x401cf2e90364388f              # double 7.2372170000000002
	.quad	0x401977a28bb0a2cb              # double 6.3668310000000004
	.quad	0x400a2ad9274e22a3              # double 3.2709220000000001
	.quad	0x40038814d72799a2              # double 2.441446
	.quad	0x401a24d834091c08              # double 6.5359809999999996
	.quad	0x4023d32bfdb4cc25              # double 9.9124449999999999
	.quad	0x40173281fd9ba1b2              # double 5.7993240000000004
	.quad	0x401c96f4384ba0e8              # double 7.1474159999999998
	.quad	0x4020d86fef7c243e              # double 8.4227290000000004
	.quad	0x4019273a365cb35f              # double 6.2883079999999998
	.quad	0x401a593f6c2699c8              # double 6.5871560000000002
	.quad	0x401ec999567dbb17              # double 7.6968740000000002
	.quad	0x4016381669ced0b3              # double 5.554773
	.quad	0x401031144cbe1eb4              # double 4.0479289999999999
	.quad	0x400e75182a9930be              # double 3.807175
	.quad	0x401f2710cb295e9e              # double 7.7881499999999999
	.quad	0x4009603ab862b27d              # double 3.1719870000000001
	.quad	0x401faccfaeff5c6c              # double 7.9187609999999999
	.quad	0x40027ca9691a75cd              # double 2.31087
	.quad	0x4023dd9c8c9320da              # double 9.9328350000000007
	.quad	0x4021638aa00192a7              # double 8.6944169999999996
	.quad	0x401dbd898b2e9ccb              # double 7.4350949999999996
	.quad	0x4018317a89331a09              # double 6.0483190000000002
	.quad	0x400b9a8b4bf8fcd6              # double 3.4504609999999998
	.quad	0x401f8977c88e79ab              # double 7.884246
	.quad	0x3fde346994185059              # double 0.47194900000000001
	.quad	0x4009bccaf709b739              # double 3.217184
	.quad	0x40204d33d29563aa              # double 8.1507860000000001
	.quad	0x401f60b955f7835a              # double 7.8444570000000002
	.quad	0x4023b799e518f3ed              # double 9.8585960000000003
	.quad	0x3ffb9a8ac5c13fd1              # double 1.72523
	.quad	0x4023b4486ad2dcb1              # double 9.8521149999999995
	.quad	0x3ffec9ea9a3d2d88              # double 1.924296
	.quad	0x40029eb52c9d16fd              # double 2.3274940000000002
	.quad	0x4021d7746887a8d6              # double 8.9208099999999995
	.quad	0x400dc4ead0c3d252              # double 3.7211509999999999
	.quad	0x401651bf7ad4b274              # double 5.5798319999999997
	.quad	0x4021ac5d41fa7653              # double 8.8366489999999995
	.quad	0x401f64c985f06f69              # double 7.8484249999999997
	.quad	0x4000d1ada76d97b3              # double 2.102382
	.quad	0x4021cc77574f722e              # double 8.8993479999999998
	.quad	0x402077041461b6d4              # double 8.2324529999999995
	.quad	0x401c8446f9b994e2              # double 7.1291770000000003
	.quad	0x3ff5a202539756c9              # double 1.3520529999999999
	.quad	0x4005b8d823422468              # double 2.7152560000000001
	.quad	0x4016de492bc2fc69              # double 5.7170759999999996
	.quad	0x4011dc083126e979              # double 4.4648750000000001
	.quad	0x4011859578a2a90d              # double 4.3804530000000002
	.quad	0x40206ce9e5e24788              # double 8.2127219999999994
	.quad	0x40134976ff3ade22              # double 4.8217429999999997
	.quad	0x40013350092ccf6c              # double 2.150055
	.quad	0x4020c93250b5243a              # double 8.3929620000000007
	.quad	0x4005b209edbf8b9c              # double 2.7119330000000001
	.quad	0x3fdfb2b3461309c8              # double 0.495282
	.quad	0x4006b64c729f59cd              # double 2.839013
	.quad	0x4011c8e79aae6c8f              # double 4.4461959999999996
	.quad	0x3fe2dcbbc2b94d94              # double 0.589445
	.quad	0x401295fdcdf69878              # double 4.6464759999999998
	.quad	0x4011e78f25a250f8              # double 4.4761319999999998
	.quad	0x40184224edf61240              # double 6.0645939999999996
	.quad	0x3fd14c76d117b528              # double 0.27029199999999998
	.quad	0x4015e243dccea290              # double 5.4709620000000001
	.quad	0x40235d35eb7457c1              # double 9.6820520000000005
	.quad	0x4016832096787ce9              # double 5.6280539999999997
	.quad	0x4022d5af4adbc665              # double 9.4173530000000003
	.quad	0x4020ace54f7a9197              # double 8.3376870000000007
	.quad	0x40163c14c660a201              # double 5.5586729999999998
	.quad	0x4018d3c7d5ed06ff              # double 6.206817
	.quad	0x40148935fc3b4f61              # double 5.1339949999999996
	.quad	0x4021ae07a28bb0a3              # double 8.8399020000000004
	.quad	0x400b93b5393250b5              # double 3.4471229999999999
	.quad	0x40029fab10ba6267              # double 2.327963
	.quad	0x3fe79ec4e7253da7              # double 0.73813099999999998
	.quad	0x4021cfc243dccea3              # double 8.9057790000000008
	.quad	0x40218d66adb402d1              # double 8.7761739999999993
	.quad	0x3ff6fcb5fe542e55              # double 1.4366969999999999
	.quad	0x401fd94898f605ab              # double 7.9621909999999997
	.quad	0x3fef800eae18ac9f              # double 0.98438199999999997
	.quad	0x40227a7f8012dfd7              # double 9.2392540000000007
	.quad	0x4021ff04ff43419e              # double 8.9980849999999997
	.quad	0x4022388bfc2224ee              # double 9.1104430000000001
	.quad	0x401c696dd26b723f              # double 7.1029580000000001
	.quad	0x3ffe6e3d5fdcdf6a              # double 1.9019140000000001
	.quad	0x401f615f45e0b4e1              # double 7.8450899999999998
	.quad	0x4021432074ea8da8              # double 8.6311070000000001
	.quad	0x4006c50e779207d5              # double 2.8462190000000001
	.quad	0x40122cb295e9e1b1              # double 4.5436500000000004
	.quad	0x401a301e2584f4c7              # double 6.5469900000000001
	.quad	0x40142b9ae0c17657              # double 5.0425829999999996
	.quad	0x400f0ae297396d09              # double 3.880315
	.quad	0x401bbff10ecb74de              # double 6.937443
	.quad	0x400389478c868ba0              # double 2.4420310000000001
	.quad	0x402169a9b8cb8e08              # double 8.7063729999999993
	.quad	0x40156df6db940fed              # double 5.3573870000000001
	.quad	0x3feb479d4d834092              # double 0.85249200000000003
	.quad	0x3fff5a719b4dcec0              # double 1.959581
	.quad	0x4020d5a07b352a84              # double 8.4172399999999996
	.quad	0x40017ed30f062d41              # double 2.1869260000000001
	.quad	0x40132b662fdfc19c              # double 4.7923819999999999
	.quad	0x4018bc7c0f451761              # double 6.1840669999999998
	.quad	0x4007f1105e1c1509              # double 2.9927069999999998
	.quad	0x402147c6540cc78f              # double 8.6401850000000007
	.quad	0x4013f6cf41f212d7              # double 4.9910249999999996
	.quad	0x4016f6b8b69552e3              # double 5.740939
	.quad	0x4023aabbecaab8a6              # double 9.8334650000000003
	.quad	0x400831ceaf251c19              # double 3.0243199999999999
	.quad	0x4001d049a9973d9f              # double 2.2267030000000001
	.quad	0x401b79ed7c6fbd27              # double 6.8690699999999998
	.quad	0x4023753b4b2fa93b              # double 9.728968
	.quad	0x40107516db0dd830              # double 4.1143450000000001
	.quad	0x401b567e846a5d6c              # double 6.8344670000000001
	.quad	0x40115506573215fd              # double 4.3330320000000002
	.quad	0x401c7185cee17a03              # double 7.110862
	.quad	0x401fe7d0aed99cbf              # double 7.976382
	.quad	0x4019c50a45d41fa7              # double 6.4424219999999996
	.quad	0x40104efb6dca07f6              # double 4.0771309999999996
	.quad	0x3ffd09a240314877              # double 1.8148519999999999
	.quad	0x40164deb0fadf2ed              # double 5.576092
	.quad	0x40154bb6ed677708              # double 5.3239400000000003
	.quad	0x4016a8a5ce5b4246              # double 5.664695
	.quad	0x4005a398a65492ff              # double 2.7048809999999999
	.quad	0x400e32edfe75bc45              # double 3.7748680000000001
	.quad	0x3ffbd5cd91eeaa6d              # double 1.739698
	.quad	0x402028c9d9d3458d              # double 8.0796650000000003
	.quad	0x40201a90eed02cd4              # double 8.0518870000000006
	.quad	0x4001ad07852f7f4a              # double 2.2094870000000002
	.quad	0x3fff8cec41dd1a22              # double 1.971905
	.quad	0x40239f2dc2b0ea18              # double 9.8108959999999996
	.quad	0x3ffe27ec7863beec              # double 1.884747
	.quad	0x402388a372606fac              # double 9.7668719999999993
	.quad	0x3ff96cb5350092cd              # double 1.58904
	.quad	0x3fdedd1a21ea3593              # double 0.48224499999999998
	.quad	0x401133a96d4c33b5              # double 4.3004509999999998
	.quad	0x4017bed6ba8c5868              # double 5.9363659999999996
	.quad	0x402146236c15d2d0              # double 8.6369889999999998
	.quad	0x401a02556d19dece              # double 6.5022789999999997
	.quad	0x4022f4c55432873c              # double 9.4780680000000003
	.quad	0x3ff3bf8982cb20fb              # double 1.234262
	.quad	0x401a4675579af188              # double 6.5688069999999996
	.quad	0x400fde4473cd5736              # double 3.9835289999999999
	.quad	0x3fd4ebbfd71b0468              # double 0.32688899999999999
	.quad	0x4012f86a098915be              # double 4.7425920000000001
	.quad	0x40220a7ce0fc2eba              # double 9.0204839999999997
	.quad	0x3fc5b003686a4ca5              # double 0.169434
	.quad	0x401a2374bc6a7efa              # double 6.5346250000000001
	.quad	0x4023d6054690de09              # double 9.9180089999999996
	.quad	0x402253baba7b9171              # double 9.1635340000000003
	.quad	0x4022cec02f2f9874              # double 9.40381
	.quad	0x401d229f9ce8d973              # double 7.2838120000000002
	.quad	0x40138c84f8f8a4c2              # double 4.8872260000000001
	.quad	0x4003dc842fa50939              # double 2.4826739999999998
	.quad	0x40166c56d5cfaace              # double 5.6058000000000003
	.quad	0x401bccde5d18090b              # double 6.9500669999999998
	.quad	0x40203d4690de0935              # double 8.1196789999999996
	.quad	0x3ff1465f9591cd1c              # double 1.0796809999999999
	.quad	0x4017af340d4dc65c              # double 5.9210969999999996
	.quad	0x4023f806d0d4994a              # double 9.9844270000000002
	.quad	0x401a35a2d72ffd1e              # double 6.5523790000000002
	.quad	0x4003a7064ece9a2c              # double 2.4565549999999998
	.quad	0x40021e996312f4cf              # double 2.2649409999999999
	.quad	0x3ffe7315d701d9f5              # double 1.903097
	.quad	0x40138cc100e6afcd              # double 4.8874550000000001
	.quad	0x400c6e5604189375              # double 3.5538750000000001
	.quad	0x40006c4e7253da73              # double 2.0528840000000002
	.quad	0x40134fe1975f2cb6              # double 4.8280089999999998
	.quad	0x4023b7ca2120e1f8              # double 9.8589640000000002
	.quad	0x40227332f01754b0              # double 9.2249979999999994
	.quad	0x400d826edaa92e62              # double 3.688688
	.quad	0x401ef727136a4010              # double 7.7413600000000002
	.quad	0x3fff7547e06961c3              # double 1.9661329999999999
	.quad	0x3ff34714fce746cc              # double 1.2048540000000001
	.quad	0x402166ee73e681aa              # double 8.7010380000000005
	.quad	0x4021bcab3edd8b61              # double 8.8684940000000001
	.quad	0x40200d052934acb0              # double 8.0254300000000001
	.quad	0x400ee323bbc6eb0b              # double 3.8609079999999998
	.quad	0x3fe8c5cdd50a88f0              # double 0.774146
	.quad	0x4016b8b1572580c3              # double 5.680364
	.quad	0x3fe164c0df58c08b              # double 0.54354899999999995
	.quad	0x3fbec5d206c8711d              # double 0.12020599999999999
	.quad	0x401a3b0c026cc1ca              # double 6.5576629999999998
	.quad	0x40118a8cdea033e8              # double 4.3853030000000004
	.quad	0x4012c30b9dc2f406              # double 4.690474
	.quad	0x401f497a24894c44              # double 7.8217549999999996
	.quad	0x40209ed8d36b4c7f              # double 8.3102479999999996
	.quad	0x4014b288ce703afb              # double 5.1743499999999996
	.quad	0x402171ad85dfa872              # double 8.7220270000000006
	.quad	0x3ff86500d5e8d541              # double 1.524659
	.quad	0x4000b3083558a761              # double 2.087418
	.quad	0x40063e89a88ace25              # double 2.7805360000000001
	.quad	0x40137295e9e1b08a              # double 4.8619000000000003
	.quad	0x4023547735c182ed              # double 9.6649720000000005
	.quad	0x400b0f177a7008a7              # double 3.3823690000000002
	.quad	0x4018ed63886594af              # double 6.2318249999999997
	.quad	0x3fbca7503b81b64e              # double 0.111928
	.quad	0x4015c0d8cb07d0af              # double 5.4383270000000001
	.quad	0x3ff3934ce3de614a              # double 1.223462
	.quad	0x3ffbee2435696e59              # double 1.7456400000000001
	.quad	0x401007021d10b1ff              # double 4.0068440000000001
	.quad	0x3ff9cdd93c46d82c              # double 1.6127560000000001
	.quad	0x40051c46d82ba5a0              # double 2.6388069999999999
	.quad	0x401dad16fc9bc771              # double 7.4190329999999998
	.quad	0x400a47ba237cdcca              # double 3.2850229999999998
	.quad	0x3fe5db6c3760bf5d              # double 0.68303499999999995
	.quad	0x401056af46aa087d              # double 4.0846530000000003
	.quad	0x40110a7d6733ebc0              # double 4.2602440000000001
	.quad	0x4012436bd2b6f199              # double 4.5658409999999998
	.quad	0x4023e43b4f616723              # double 9.9457649999999997
	.quad	0x4019682d38476f2a              # double 6.3517349999999997
	.quad	0x40213e7d566cf41f              # double 8.6220499999999998
	.quad	0x4018282b1f687b14              # double 6.0392270000000003
	.quad	0x3fdfedb2f661f18d              # double 0.49888300000000002
	.quad	0x3ffea4e592967019              # double 1.9152579999999999
	.quad	0x400bb3b18dac258d              # double 3.4627409999999998
	.quad	0x401586748e475600              # double 5.3813040000000001
	.quad	0x40139ab68cef672c              # double 4.9010870000000004
	.quad	0x4011b9ac36544fe3              # double 4.4313209999999996
	.quad	0x3ff87cea6c1a048e              # double 1.530497
	.quad	0x401bd0ab2e1693c0              # double 6.9537779999999998
	.quad	0x40220ee4e26d4802              # double 9.0290900000000001
	.quad	0x402053c9cd3e0bd4              # double 8.1636489999999994
	.quad	0x3fe5c662bae03b3f              # double 0.68046700000000004
	.quad	0x40094c58eeae9ee4              # double 3.1622789999999998
	.quad	0x3feee878fabda0e0              # double 0.96587800000000001
	.quad	0x4014e48909289dae              # double 5.223179
	.quad	0x40238a5c810a569b              # double 9.7702369999999998
	.quad	0x4019a904f6dfc5ce              # double 6.4150580000000001
	.quad	0x401682314013ec46              # double 5.6271409999999999
	.quad	0x40077352a8438088              # double 2.9313099999999999
	.quad	0x401ac5a1cac08312              # double 6.6929999999999996
	.quad	0x4020bc35ce182667              # double 8.3675979999999992
	.quad	0x401ea878b7a1c25d              # double 7.6645229999999999
	.quad	0x4021c280064a9cdc              # double 8.8798829999999995
	.quad	0x400af3e35c5b4aa9              # double 3.3690859999999998
	.quad	0x3ffe56e158750c1c              # double 1.8962110000000001
	.quad	0x40231f49adc8fb87              # double 9.561109
	.quad	0x401991fc8f32378b              # double 6.3925650000000003
	.quad	0x3fe9340d4dc65c70              # double 0.78760399999999997
	.quad	0x401dcda6e75ff60a              # double 7.4508320000000001
	.quad	0x400cbeb4202d9cf1              # double 3.5931169999999999
	.quad	0x40087815a07b352b              # double 3.0586350000000002
	.quad	0x4005b085f4a1272d              # double 2.7111930000000002
	.quad	0x4001925edd052935              # double 2.1964700000000001
	.quad	0x40189b8cfbfc6541              # double 6.1519050000000002
	.quad	0x401d9060fe47991c              # double 7.3909950000000002
	.quad	0x3ff6b46887a8d64d              # double 1.4190449999999999
	.quad	0x401fe9274e22a2c2              # double 7.9776889999999998
	.quad	0x401354b0e1b4bb5e              # double 4.8327059999999999
	.quad	0x401399efd86a8fc1              # double 4.9003290000000002
	.quad	0x401cff2a172abef0              # double 7.2491839999999996
	.quad	0x4006d51e75360d02              # double 2.8540619999999999
	.quad	0x401ae17b0f6ad70e              # double 6.7201959999999996
	.quad	0x400c7256798958da              # double 3.5558290000000001
	.quad	0x40200fe75bc44bf5              # double 8.0310620000000004
	.quad	0x400b2e85b9e8c47a              # double 3.397716
	.quad	0x40140115df6555c5              # double 5.0010599999999998
	.quad	0x401198f9b13165d4              # double 4.3993900000000004
	.quad	0x3ffb56c61522a6f4              # double 1.708685
	.quad	0x3fd682b628459967              # double 0.35172799999999999
	.quad	0x401da43d89ce4a7b              # double 7.4103909999999997
	.quad	0x400ea275ab7dc7ac              # double 3.829326
	.quad	0x3ff5fd61f5be5d9e              # double 1.3743609999999999
	.quad	0x3ff93a76534373f3              # double 1.576773
	.quad	0x4017c5d2d01c0ca6              # double 5.943187
	.quad	0x400c80895d0b73d2              # double 3.5627620000000002
	.quad	0x3f883a53b8e4b87c              # double 0.01183
	.quad	0x400af0d9d7774aba              # double 3.3676029999999999
	.quad	0x3ff0ddfdac68a937              # double 1.0541970000000001
	.quad	0x4019197cc39ffd61              # double 6.2748900000000001
	.quad	0x401ca1882adc4c9d              # double 7.1577460000000004
	.quad	0x401293cee9dd7ecc              # double 4.6443440000000002
	.quad	0x3ffc85c358afc47e              # double 1.7826569999999999
	.quad	0x401f2045fe111277              # double 7.781517
	.quad	0x400ae3925bb7b6bb              # double 3.361119
	.quad	0x3ffc4f53c579f234              # double 1.7693669999999999
	.quad	0x4023a85d52c16df4              # double 9.828837
	.quad	0x4020eedca07f66e8              # double 8.4665269999999992
	.quad	0x402039ce8d972cd8              # double 8.1129040000000003
	.quad	0x401e491dde37585c              # double 7.5714030000000001
	.quad	0x401742e33eff1950              # double 5.8153199999999998
	.quad	0x3ff435fb2edfe75c              # double 1.2631790000000001
	.quad	0x4023d40e1719f7f9              # double 9.9141700000000003
	.quad	0x400d86cfc829cfdd              # double 3.6908259999999999
	.quad	0x4022405db76b3bb8              # double 9.1257149999999996
	.quad	0x402188d045fe1112              # double 8.7672139999999992
	.quad	0x400f96a9c560c7c1              # double 3.948566
	.quad	0x40069acc4ef88b97              # double 2.8255849999999998
	.quad	0x40078a6eb91b3f21              # double 2.9425940000000002
	.quad	0x40077b09203a322b              # double 2.935076
	.quad	0x4001e801f75104d5              # double 2.2382849999999999
	.quad	0x4012af566490a351              # double 4.6712280000000002
	.quad	0x400e34fd6d7e889c              # double 3.775874
	.quad	0x40224304ccee5abc              # double 9.1308959999999999
	.quad	0x3ff00b3b320535ca              # double 1.002742
	.quad	0x40123e6d9be4cd75              # double 4.5609650000000004
	.quad	0x4019603fb3743633              # double 6.3439930000000002
	.quad	0x401f56a832b990b0              # double 7.8346260000000001
	.quad	0x4023fe2bf11f926c              # double 9.9964289999999991
	.quad	0x4021e0f6f08cc576              # double 8.9393840000000004
	.quad	0x3fed9040bfe3b03e              # double 0.92385899999999999
	.quad	0x4022c7a2ad3e920c              # double 9.3899129999999999
	.quad	0x4011f36c58eeae9f              # double 4.4877180000000001
	.quad	0x401eb3c148344c38              # double 7.675542
	.quad	0x40187e33269df97b              # double 6.1232420000000003
	.quad	0x4014f26edaa92e62              # double 5.2367509999999999
	.quad	0x4013f9463cfb3312              # double 4.9934320000000003
	.quad	0x40234ef9b994e1a4              # double 9.654249
	.quad	0x3ff5c27b6fe2e6eb              # double 1.3599810000000001
	.quad	0x4022ea44e93e1c9b              # double 9.4575569999999995
	.quad	0x3ffbe367e414e7ef              # double 1.7430190000000001
	.quad	0x4004b950331e3a7e              # double 2.5904850000000001
	.quad	0x3ff96c29bf162ae5              # double 1.5889070000000001
	.quad	0x400ba37de939eadd              # double 3.4548299999999998
	.quad	0x4002788094e5d5b2              # double 2.3088389999999999
	.quad	0x4018760a2014727e              # double 6.1152730000000002
	.quad	0x401867f51efb6dca              # double 6.101521
	.quad	0x4018fc059210385c              # double 6.2461149999999996
	.quad	0x3fb2512a94ff0026              # double 0.071551000000000003
	.quad	0x401958fc9363f573              # double 6.3369010000000001
	.quad	0x401688055fbb517a              # double 5.6328329999999998
	.quad	0x401f4604189374bc              # double 7.8183749999999996
	.quad	0x4016cc226809d495              # double 5.6993499999999999
	.quad	0x401c9bccaf709b74              # double 7.1521480000000004
	.quad	0x401bcf4384ba0e84              # double 6.9524059999999999
	.quad	0x401f256084a515cf              # double 7.7865010000000003
	.quad	0x4023a4fc610f0e91              # double 9.8222380000000004
	.quad	0x400da35f80991794              # double 3.7047720000000002
	.quad	0x3fe426634117f844              # double 0.62968599999999997
	.quad	0x4012a938de6ddf01              # double 4.6652560000000003
	.quad	0x400922938de6ddf0              # double 3.141883
	.quad	0x3ffc002d16b97fe9              # double 1.750043
	.quad	0x401ff21426fe718b              # double 7.9864050000000004
	.quad	0x402073311a543f1c              # double 8.2249839999999991
	.quad	0x4011dd7fd82773e2              # double 4.4663079999999997
	.quad	0x3fedade657b84dba              # double 0.92747800000000002
	.quad	0x4017836eb4e98138              # double 5.8783519999999996
	.quad	0x40239dd63886594b              # double 9.808275
	.quad	0x4022bf26f1dc50ce              # double 9.3733439999999995
	.quad	0x402154e28ed5f139              # double 8.6657910000000005
	.quad	0x40205f1f57b41bfc              # double 8.1857860000000002
	.quad	0x400c726b723ee1bd              # double 3.5558689999999999
	.quad	0x401e804b7f5a5333              # double 7.6252880000000002
	.quad	0x4013f66e43aa79bc              # double 4.9906550000000003
	.quad	0x4002038327674d16              # double 2.2517149999999999
	.quad	0x4013bf405f6ba062              # double 4.936769
	.quad	0x4022996659d12cae              # double 9.2996090000000002
	.quad	0x401179680e065300              # double 4.3685609999999997
	.quad	0x401ddaf2d7f950b9              # double 7.4638169999999997
	.quad	0x3fbee85b9e8c47a1              # double 0.12073299999999999
	.quad	0x4020bc532a497fa6              # double 8.3678220000000003
	.quad	0x4002f14d2f5dbb9d              # double 2.367823
	.quad	0x401fdb1a2a4db164              # double 7.9639670000000002
	.quad	0x4000fc36976bc1f0              # double 2.123151
	.quad	0x3ff5aaf78feef5ed              # double 1.3542400000000001
	.quad	0x40153deebb341e15              # double 5.3104810000000002
	.quad	0x4017018eb8950764              # double 5.7515210000000003
	.quad	0x4021a76d97b30f8c              # double 8.8270079999999992
	.quad	0x401d076534373f31              # double 7.2572219999999996
	.quad	0x40025bbe0157eed4              # double 2.2947959999999998
	.quad	0x4017f4f440af1cb9              # double 5.9892130000000003
	.quad	0x40218efb09203a32              # double 8.7792589999999997
	.quad	0x40125a176ddaceee              # double 4.5879799999999999
	.quad	0x40057e44fa05143c              # double 2.686655
	.quad	0x40127f7b9e060fe4              # double 4.6244949999999996
	.quad	0x40210d8ff7596851              # double 8.5264889999999998
	.quad	0x401236ab5807fed2              # double 4.553388
	.quad	0x3fff8ded288ce704              # double 1.9721500000000001
	.quad	0x4015b44d013a92a3              # double 5.426075
	.quad	0x4014a45ae5ffa3ba              # double 5.1605030000000003
	.quad	0x3ff01f340d4dc65c              # double 1.0076179999999999
	.quad	0x3faea012599ed7c7              # double 0.059815
	.quad	0x400779841aac53b1              # double 2.9343340000000002
	.quad	0x401ff52e72da1230              # double 7.9894350000000003
	.quad	0x4016caeafab53d64              # double 5.6981619999999999
	.quad	0x400bdea465a57647              # double 3.4837120000000001
	.quad	0x3ff029f2778140dd              # double 1.0102409999999999
	.quad	0x4016e42cc2d6a9c5              # double 5.7228269999999997
	.quad	0x4007d009b30728e9              # double 2.9765809999999999
	.quad	0x40221ccad57bc7f7              # double 9.0562349999999991
	.quad	0x40019183b60285ec              # double 2.1960519999999999
	.quad	0x3ffb47cfa26a22b4              # double 1.7050320000000001
	.quad	0x4009821e1d2178f7              # double 3.1885340000000002
	.quad	0x4007e9d8c6d612c7              # double 2.9891830000000001
	.quad	0x40074f0281ba7fc3              # double 2.9135789999999999
	.quad	0x3ffb859a73b42cc3              # double 1.720118
	.quad	0x402006f9335d249e              # double 8.0136199999999995
	.quad	0x3fe4634549b62c77              # double 0.63711799999999996
	.quad	0x400207008a697aee              # double 2.2534190000000001
	.quad	0x400977f1f9acffa8              # double 3.183567
	.quad	0x4018420bc382a130              # double 6.0644980000000004
	.quad	0x400a9986b9c304cd              # double 3.324964
	.quad	0x400dfce746cb966c              # double 3.748488
	.quad	0x40220874a771c971              # double 9.0165150000000001
	.quad	0x401d3ec17ebaf102              # double 7.3112849999999998
	.quad	0x400865daf07bfe7e              # double 3.0497339999999999
	.quad	0x4017851efb6dca08              # double 5.880001
	.quad	0x3ff57395c4220360              # double 1.340719
	.quad	0x4007c49f51697f20              # double 2.9710070000000002
	.quad	0x4017921187e7c06e              # double 5.8926449999999999
	.quad	0x3ff500420f6f08cc              # double 1.3125629999999999
	.quad	0x401ff44523f67f4e              # double 7.9885450000000002
	.quad	0x3ff771bde82d7b63              # double 1.4652689999999999
	.quad	0x40231e6be7afa722              # double 9.5594169999999998
	.quad	0x4008c027d88c1db0              # double 3.093826
	.quad	0x4012062888b545c8              # double 4.5060140000000004
	.quad	0x401368ce703afb7f              # double 4.8523500000000004
	.quad	0x401e98da7f3cf701              # double 7.6492709999999997
	.quad	0x40228a19008205ff              # double 9.2697219999999998
	.quad	0x400e51e85fd04a30              # double 3.7899940000000001
	.quad	0x40147d8adab9f55a              # double 5.1226000000000003
	.quad	0x3fefc9de05037500              # double 0.99339200000000005
	.quad	0x4005686f049a9974              # double 2.6759930000000001
	.quad	0x4018b9591cd1c7de              # double 6.1810039999999997
	.quad	0x40002809d495182b              # double 2.0195500000000002
	.quad	0x4004e76534373f31              # double 2.6129859999999998
	.quad	0x4018076bc1eff9f8              # double 6.0072469999999996
	.quad	0x4010335b0bbf50e3              # double 4.0501519999999998
	.quad	0x4016c401c4fc1df3              # double 5.6914129999999998
	.quad	0x40204849667b5f1c              # double 8.1411850000000001
	.quad	0x3ff802de00d1b717              # double 1.5006999999999999
	.quad	0x4009214163779e9d              # double 3.141238
	.quad	0x4019f75a31a4bdba              # double 6.491555
	.quad	0x4001b6ee73e681aa              # double 2.2143220000000001
	.quad	0x40206d100a393ee6              # double 8.2130130000000001
	.quad	0x401ba723ee1bd1ee              # double 6.9132230000000003
	.quad	0x40119ece13f4a98b              # double 4.4050830000000003
	.quad	0x40207d30f062d40b              # double 8.2445140000000006
	.quad	0x401c1b5d462c343b              # double 7.0267229999999996
	.quad	0x4005eb67c286f8ad              # double 2.7399439999999999
	.quad	0x4004d10ecb74ddf8              # double 2.6020789999999998
	.quad	0x3ff60ac4b4d056c5              # double 1.377629
	.quad	0x401d12b0a6fc58ac              # double 7.2682520000000004
	.quad	0x400db5b4edb2f662              # double 3.713724
	.quad	0x3ffb177fae3608d1              # double 1.6932370000000001
	.quad	0x4022ffb1183b6028              # double 9.4993979999999993
	.quad	0x400b3bbbe878fabe              # double 3.4041670000000002
	.quad	0x40204d35a858793e              # double 8.1508000000000003
	.quad	0x400378ad25679896              # double 2.4339240000000002
	.quad	0x400245c5f7c6759b              # double 2.2840690000000001
	.quad	0x402232d538ac18f8              # double 9.0992829999999998
	.quad	0x3fe9459fb1e18efc              # double 0.78974900000000003
	.quad	0x40215068b9fdbd30              # double 8.6570490000000007
	.quad	0x401479856a37ac3f              # double 5.1186730000000003
	.quad	0x3fea8c23fab10ba6              # double 0.82960699999999998
	.quad	0x4019e7f737da61e1              # double 6.4765290000000002
	.quad	0x4019de03f705857b              # double 6.466812
	.quad	0x40203f53e707e176              # double 8.1236870000000003
	.quad	0x4018c5a187a4a490              # double 6.1929990000000004
	.quad	0x3fd8ee3d5fdcdf6a              # double 0.38954100000000003
	.quad	0x3ffb05f06f694467              # double 1.68895
	.quad	0x4020a34a44c7b02d              # double 8.3189259999999994
	.quad	0x401856ea854477ff              # double 6.0848789999999999
	.quad	0x40142ccccccccccd              # double 5.0437500000000002
	.quad	0x3fd8d9d7774aba38              # double 0.38829599999999997
	.quad	0x40187cb295e9e1b1              # double 6.1217750000000004
	.quad	0x3ff2d946c332f017              # double 1.1780459999999999
	.quad	0x3ff0b21815a07b35              # double 1.04348
	.quad	0x4012f9d0635a426c              # double 4.7439590000000003
	.quad	0x400d09a8049667b6              # double 3.629715
	.quad	0x400a11c193b3a68b              # double 3.25867
	.quad	0x40184d0f1f57b41c              # double 6.075253
	.quad	0x401678e3ef284168              # double 5.6180570000000003
	.quad	0x400adb7a5f41aef7              # double 3.357167
	.quad	0x4015b6a012599ed8              # double 5.4283450000000002
	.quad	0x400acb50b0f27bb3              # double 3.349275
	.quad	0x3fe9fe64f54d1e97              # double 0.81230400000000003
	.quad	0x4011f152f3c2dadc              # double 4.4856680000000004
	.quad	0x4012922d948dc11e              # double 4.6427519999999998
	.quad	0x400d76598e10cf5b              # double 3.682788
	.quad	0x400990f062d40aaf              # double 3.1957710000000001
	.quad	0x402020d36b4c7f35              # double 8.0641130000000008
	.quad	0x401a375b3e1437c5              # double 6.5540589999999996
	.quad	0x40222dcb9a9da598              # double 9.0894440000000003
	.quad	0x3ff5f318fc504817              # double 1.37185
	.quad	0x400f79999999999a              # double 3.9343750000000002
	.quad	0x40032c0bdcad14a1              # double 2.3965070000000002
	.quad	0x402093cd573647bb              # double 8.2886760000000006
	.quad	0x3fe8e3ed0f627393              # double 0.77782300000000004
	.quad	0x3ff62f2d7f950b95              # double 1.3865179999999999
	.quad	0x3fee53b29a1b9f99              # double 0.94771700000000003
	.quad	0x4001893c89f40a28              # double 2.1920099999999998
	.quad	0x40085cd5f99c38b0              # double 3.0453299999999999
	.quad	0x4020f0b2c83ec893              # double 8.4701140000000006
	.quad	0x400525d63886594b              # double 2.643475
	.quad	0x401fe9463cfb3312              # double 7.9778070000000003
	.quad	0x3ff104c5974e65bf              # double 1.0636650000000001
	.quad	0x40208eededaec4a4              # double 8.2791589999999999
	.quad	0x402248307f23cc8e              # double 9.1409950000000002
	.quad	0x40111df9bdc69f8c              # double 4.2792729999999999
	.quad	0x3fb3f811f4f50a03              # double 0.078004000000000004
	.quad	0x4019485cee17a030              # double 6.3206670000000003
	.quad	0x4022cd744f5d3565              # double 9.4012779999999995
	.quad	0x3ff0240d90e23af3              # double 1.008802
	.quad	0x3ff32260b2c83ec9              # double 1.1958930000000001
	.quad	0x400ae4d099e0e736              # double 3.361726
	.quad	0x40069aa044ae85ba              # double 2.825501
	.quad	0x40206238fbca105a              # double 8.1918410000000002
	.quad	0x40239245d41fa765              # double 9.7856889999999996
	.quad	0x400297f6b1a2a4db              # double 2.324201
	.quad	0x40142d7ecbb7f9d7              # double 5.0444290000000001
	.quad	0x4023290f94c87981              # double 9.580197
	.quad	0x400827be553ac4f8              # double 3.019406
	.quad	0x401ecd31337eb28e              # double 7.7003830000000004
	.quad	0x3fcf72ffd1dcd706              # double 0.245697
	.quad	0x4020f69ee45c358b              # double 8.481681
	.quad	0x401bbb5dcc63f141              # double 6.9329749999999999
	.quad	0x401272c061847f56              # double 4.6120619999999999
	.quad	0x400092c59fb1e18f              # double 2.071666
	.quad	0x402184738a3b57c5              # double 8.7586940000000002
	.quad	0x3fc13cbc48f10a9a              # double 0.13466600000000001
	.quad	0x401f349a133c1ce7              # double 7.8013690000000002
	.quad	0x4020559dba908a26              # double 8.1672189999999993
	.quad	0x40113cd9a52263d8              # double 4.3094239999999999
	.quad	0x402116466b1e5c0c              # double 8.5435060000000007
	.quad	0x4010233e35c5b4ab              # double 4.0344170000000004
	.quad	0x400b4601bc98a223              # double 3.4091830000000001
	.quad	0x4016a84cad57bc7f              # double 5.6643549999999996
	.quad	0x3ffe292b3cc4ac6d              # double 1.885051
	.quad	0x400d2bd5dc400757              # double 3.646404
	.quad	0x40219ba42f1ed17c              # double 8.8039869999999993
	.quad	0x3ff93d68405b39e2              # double 1.5774919999999999
	.quad	0x40223fc5479d4d83              # double 9.1245519999999996
	.quad	0x4023d11276fb0920              # double 9.9083439999999996
	.quad	0x40223c63cfb3311a              # double 9.1179489999999994
	.quad	0x401068d4bad7d7c3              # double 4.1023740000000002
	.quad	0x40221b9799e518f4              # double 9.0538910000000001
	.quad	0x40217b6e2eb1c433              # double 8.7410750000000004
	.quad	0x401273b29a1b9f99              # double 4.6129860000000003
	.quad	0x40121c5931ca7d67              # double 4.5276839999999998
	.quad	0x40099fb6134ce3de              # double 3.2029839999999998
	.quad	0x4014c5e9e1b089a0              # double 5.1932749999999999
	.quad	0x3ff1c8605681ecd5              # double 1.1114200000000001
	.quad	0x40207838e29f9ce9              # double 8.2348090000000003
	.quad	0x401143365881a155              # double 4.3156369999999997
	.quad	0x3ffb7baecd07852f              # double 1.7176959999999999
	.quad	0x40233ef2c7325919              # double 9.6229460000000006
	.quad	0x401370bae89eba6b              # double 4.8600880000000002
	.quad	0x401bc88e79aae6c9              # double 6.945856
	.quad	0x4004cf0068db8bac              # double 2.6010749999999998
	.quad	0x3ff50214ad362e90              # double 1.313008
	.quad	0x401785d5f56a7ac8              # double 5.8806989999999999
	.quad	0x40223c1e7967caea              # double 9.1174199999999992
	.quad	0x401af80ae1049236              # double 6.742229
	.quad	0x400044102ff8ec10              # double 2.0332340000000002
	.quad	0x400fc6bf01322f27              # double 3.9720439999999999
	.quad	0x400ffc6759ab6d01              # double 3.9982440000000001
	.quad	0x3ff31c12f09d8c6d              # double 1.1943539999999999
	.quad	0x401ce0f7b9e060fe              # double 7.2196949999999998
	.quad	0x3ff7c2d27807789a              # double 1.4850639999999999
	.quad	0x4019a1240746455f              # double 6.4073640000000003
	.quad	0x4020d7b6bb129025              # double 8.4213159999999991
	.quad	0x4016bc985f06f694              # double 5.6841749999999998
	.quad	0x4009f9cf9a06a6e3              # double 3.2469779999999999
	.quad	0x401e6526527a2058              # double 7.5987790000000003
	.quad	0x401a2880d801b435              # double 6.5395539999999999
	.quad	0x402060ebedfa43fe              # double 8.1892999999999994
	.quad	0x4023e6ab7995ee13              # double 9.9505269999999992
	.quad	0x4010377574f722e2              # double 4.0541590000000003
	.quad	0x3ff811f3e89a88ad              # double 1.504383
	.quad	0x401f1e19b90ea9e7              # double 7.779395
	.quad	0x400664a83b1d0c80              # double 2.7991489999999999
	.quad	0x4020900eae18ac9f              # double 8.2813619999999997
	.quad	0x4010ba8c9b845565              # double 4.1821770000000003
	.quad	0x4012952deca2552a              # double 4.645683
	.quad	0x40109d6a593a2df9              # double 4.1537259999999998
	.quad	0x401244e379b77c03              # double 4.5672740000000003
	.quad	0x3fe8d6451b93037d              # double 0.77615599999999996
	.quad	0x4008f5be5d9e40c8              # double 3.1199919999999999
	.quad	0x4021c789c5e6ff7e              # double 8.889723
	.quad	0x400fc2595bbbe879              # double 3.969897
	.quad	0x40142ed06fef7c24              # double 5.0457169999999998
	.quad	0x4022c65b20b8066c              # double 9.3874139999999997
	.quad	0x4002e480e8c8abd6              # double 2.3615740000000001
	.quad	0x40228673a365cb36              # double 9.2626010000000001
	.quad	0x400673c4f3ba7760              # double 2.8065280000000001
	.quad	0x40146083558a7610              # double 5.0942509999999999
	.quad	0x3f92873bc903ea70              # double 0.018093999999999999
	.quad	0x40119528283d35eb              # double 4.3956609999999996
	.quad	0x3fffc52a411c2a02              # double 1.985636
	.quad	0x3fee3906466b1e5c              # double 0.94446099999999999
	.quad	0x3ff07b55ac03ff69              # double 1.030111
	.quad	0x40216f143393ab43              # double 8.7169509999999999
	.quad	0x40225e3b688bda94              # double 9.1840469999999996
	.quad	0x4010e340d4dc65c7              # double 4.221927
	.quad	0x40056714fce746cc              # double 2.6753330000000002
	.quad	0x401fb9cbee807bbb              # double 7.9314419999999996
	.quad	0x40124fbd273d5bab              # double 4.5778699999999999
	.quad	0x40220fd04a2fcefb              # double 9.0308860000000006
	.quad	0x4004db7414a4d2b3              # double 2.6071550000000001
	.quad	0x4007eab25b317efe              # double 2.989598
	.quad	0x401e04ba0e842742              # double 7.5046160000000004
	.quad	0x3fd9b66b6177ea1c              # double 0.40175899999999998
	.quad	0x3fe6adf0d413122b              # double 0.70873299999999995
	.quad	0x400780a0f4d7add1              # double 2.9378069999999998
	.quad	0x40013591cd1c7de5              # double 2.151157
	.quad	0x401f4bb9496249a1              # double 7.8239489999999998
	.quad	0x40199deb95e5aff3              # double 6.4042190000000003
	.quad	0x3ff4a62ed352220c              # double 1.2905720000000001
	.quad	0x3fe69422ccb3a259              # double 0.70558299999999996
	.quad	0x4023b72b239a38fc              # double 9.8577510000000003
	.quad	0x400ee1932d6ece14              # double 3.860144
	.quad	0x4012009289dadfb5              # double 4.500559
	.quad	0x4008903d9a95421c              # double 3.07043
	.quad	0x401fe925fe974a34              # double 7.977684
	.quad	0x4013b87ebf22c01e              # double 4.9301709999999996
	.quad	0x401628d08919ef95              # double 5.5398579999999997
	.quad	0x4010a82be8bc169c              # double 4.1642299999999999
	.quad	0x40211aa454de7ea6              # double 8.5520350000000001
	.quad	0x3ffd5f138bcdfefc              # double 1.835712
	.quad	0x400891cfbb949625              # double 3.0711970000000002
	.quad	0x40106ea91d9b1b7a              # double 4.1080670000000001
	.quad	0x4008d7d84901d191              # double 3.1053929999999998
	.quad	0x3ffb154c985f06f7              # double 1.6927000000000001
	.quad	0x3fdebefd00713f07              # double 0.48040699999999997
	.quad	0x4023de97aeddce7d              # double 9.9347510000000003
	.quad	0x4011cf4b61fe21d9              # double 4.4524359999999996
	.quad	0x4021b95208e15012              # double 8.8619540000000008
	.quad	0x4023896616b54e2b              # double 9.7683569999999999
	.quad	0x401883fdd65a1449              # double 6.1288980000000004
	.quad	0x4018735dedf1e083              # double 6.1126630000000004
	.quad	0x4021476a7264a16a              # double 8.6394839999999995
	.quad	0x40135b73d188f430              # double 4.8393090000000001
	.quad	0x40107031055b8994              # double 4.1095620000000004
	.quad	0x401aa6f9335d249e              # double 6.6630599999999998
	.quad	0x400aa36976bc1f00              # double 3.3297910000000002
	.quad	0x3ffcc92253111f0c              # double 1.799105
	.quad	0x40023dfe32a0663c              # double 2.2802699999999998
	.quad	0x401e99e90795f677              # double 7.650303
	.quad	0x4007c3a7546d3f9e              # double 2.9705339999999998
	.quad	0x40167631f8a0902e              # double 5.6154250000000001
	.quad	0x400adb4677b395c4              # double 3.3570679999999999
	.quad	0x3fba3193f6c2699c              # double 0.10231899999999999
	.quad	0x402017b80a9de8b4              # double 8.0463260000000005
	.quad	0x40102c9e6687f456              # double 4.0435730000000003
	.quad	0x4015607f23cc8de3              # double 5.3442350000000003
	.quad	0x4016909aaa3ad18d              # double 5.6412149999999999
	.quad	0x401d01b4bb5e0f80              # double 7.2516660000000002
	.quad	0x402120cf5b1c8649              # double 8.5640820000000009
	.quad	0x4019a5f5f0b28523              # double 6.4120710000000001
	.quad	0x4009ed2f5dbb9cfa              # double 3.2408130000000002
	.quad	0x40093df761cbccf3              # double 3.1552570000000002
	.quad	0x40082b039ef0f16f              # double 3.0210029999999999
	.quad	0x3fe4b52eb5f5f0b3              # double 0.64711700000000005
	.quad	0x401fd7110e453d21              # double 7.960026
	.quad	0x3ffca58e64b23140              # double 1.790419
	.quad	0x4005c34091c08744              # double 2.7203379999999999
	.quad	0x4013eabf76a2f48c              # double 4.9792459999999998
	.quad	0x400bdcb6848beb5b              # double 3.4827699999999999
	.quad	0x401aee9b7bf1e8e6              # double 6.733015
	.quad	0x4010c9081c2e33f0              # double 4.1963200000000001
	.quad	0x3ffbee73e681a9b9              # double 1.745716
	.quad	0x400c7b3bfb58d152              # double 3.5601729999999998
	.quad	0x40212508f648c719              # double 8.5723339999999997
	.quad	0x401cfbff8a8f3a9b              # double 7.246092
	.quad	0x400beea077036c9c              # double 3.491517
	.quad	0x4020deb13dfb0d52              # double 8.4349460000000001
	.quad	0x4011db5675579af2              # double 4.4641970000000004
	.quad	0x3ff305953586ca8a              # double 1.188863
	.quad	0x4018053f39d1b2e6              # double 6.0051240000000004
	.quad	0x402382bc2fc69729              # double 9.7553420000000006
	.quad	0x4021c6b873797460              # double 8.8881259999999997
	.quad	0x401d84e8b7e4de3c              # double 7.3797940000000004
	.quad	0x40024f4f0d844d01              # double 2.2887249999999999
	.quad	0x40234ed97b30f8c6              # double 9.6540029999999994
	.quad	0x400ad483cafb3b75              # double 3.3537669999999999
	.quad	0x40230d1bd61f5be6              # double 9.5256030000000003
	.quad	0x3ffc8b502ababead              # double 1.7840119999999999
	.quad	0x4006e398a65492ff              # double 2.8611309999999999
	.quad	0x40168ef177a7008a              # double 5.6395929999999996
	.quad	0x3ff3b4d8ba40d90e              # double 1.231652
	.quad	0x4020cc12f09d8c6d              # double 8.3985819999999993
	.quad	0x401d24794ea07703              # double 7.2856189999999996
	.quad	0x4016d0a9de8b3b32              # double 5.703773
	.quad	0x3fe3c37824d4cb9f              # double 0.61761100000000002
	.quad	0x4021370bae89eba7              # double 8.6075110000000006
	.quad	0x40216b738e6d15ad              # double 8.7098659999999999
	.quad	0x3ff81f6db940fece              # double 1.507673
	.quad	0x4007f585be1a8262              # double 2.9948839999999999
	.quad	0x401109cbee807bbb              # double 4.2595669999999997
	.quad	0x3fc44c51116a8b8f              # double 0.158579
	.quad	0x40175eeb702602c9              # double 5.842695
	.quad	0x40203fc99ae924f2              # double 8.1245849999999997
	.quad	0x3febbb7b6bb12902              # double 0.86663599999999996
	.quad	0x401c8f398e970718              # double 7.1398679999999999
	.quad	0x40175bbe878fabda              # double 5.839594
	.quad	0x40137623d0bfa094              # double 4.8653709999999997
	.quad	0x3ff5802c0a4a05de              # double 1.3437920000000001
	.quad	0x40141e275ab7dc7b              # double 5.0294470000000002
	.quad	0x40104852f7f498c4              # double 4.0706290000000003
	.quad	0x40233be553ac4f7f              # double 9.6169840000000004
	.quad	0x401298feef5ec80c              # double 4.6494099999999996
	.quad	0x40001ec99f1ae2da              # double 2.0150329999999999
	.quad	0x4016a9dbec2480e9              # double 5.6658780000000002
	.quad	0x4003e4ece9a2c669              # double 2.48678
	.quad	0x401de50ca1cef241              # double 7.473681
	.quad	0x401d555ac03ff690              # double 7.3333539999999999
	.quad	0x40147a38fbca105a              # double 5.1193580000000001
	.quad	0x402149ad6451b930              # double 8.6439009999999996
	.quad	0x4012c0746455eaee              # double 4.6879439999999999
	.quad	0x3ff6a9888f861a61              # double 1.41639
	.quad	0x401346c2efd438d2              # double 4.8191030000000001
	.quad	0x400f37e34b945309              # double 3.9022890000000001
	.quad	0x3ff8fccf28c79f66              # double 1.5617209999999999
	.quad	0x4005154fbdad7519              # double 2.6354060000000001
	.quad	0x40145ca2db61bb06              # double 5.090465
	.quad	0x4020364cf8d716d3              # double 8.1060560000000006
	.quad	0x3ff80fc2eba27aea              # double 1.5038480000000001
	.quad	0x400241c3efae7925              # double 2.2821120000000001
	.quad	0x3ffe8a46e08f2171              # double 1.9087590000000001
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
