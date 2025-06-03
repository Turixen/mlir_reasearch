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
	.quad	0x413329fbd76e6107              # double 1255931.8415280001
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
	.quad	27                              # 0x1b
	.quad	51                              # 0x33
	.quad	79                              # 0x4f
	.quad	100                             # 0x64
	.quad	119                             # 0x77
	.quad	141                             # 0x8d
	.quad	159                             # 0x9f
	.quad	177                             # 0xb1
	.quad	200                             # 0xc8
	.quad	231                             # 0xe7
	.quad	253                             # 0xfd
	.quad	275                             # 0x113
	.quad	305                             # 0x131
	.quad	331                             # 0x14b
	.quad	359                             # 0x167
	.quad	383                             # 0x17f
	.quad	407                             # 0x197
	.quad	427                             # 0x1ab
	.quad	445                             # 0x1bd
	.quad	470                             # 0x1d6
	.quad	496                             # 0x1f0
	.quad	518                             # 0x206
	.quad	542                             # 0x21e
	.quad	562                             # 0x232
	.quad	586                             # 0x24a
	.quad	618                             # 0x26a
	.quad	644                             # 0x284
	.quad	666                             # 0x29a
	.quad	693                             # 0x2b5
	.quad	714                             # 0x2ca
	.quad	742                             # 0x2e6
	.quad	772                             # 0x304
	.quad	797                             # 0x31d
	.quad	818                             # 0x332
	.quad	839                             # 0x347
	.quad	862                             # 0x35e
	.quad	894                             # 0x37e
	.quad	914                             # 0x392
	.quad	942                             # 0x3ae
	.quad	959                             # 0x3bf
	.quad	981                             # 0x3d5
	.quad	1010                            # 0x3f2
	.quad	1041                            # 0x411
	.quad	1071                            # 0x42f
	.quad	1098                            # 0x44a
	.quad	1120                            # 0x460
	.quad	1147                            # 0x47b
	.quad	1173                            # 0x495
	.quad	1204                            # 0x4b4
	.quad	1233                            # 0x4d1
	.quad	1246                            # 0x4de
	.quad	1275                            # 0x4fb
	.quad	1313                            # 0x521
	.quad	1343                            # 0x53f
	.quad	1363                            # 0x553
	.quad	1391                            # 0x56f
	.quad	1416                            # 0x588
	.quad	1439                            # 0x59f
	.quad	1473                            # 0x5c1
	.quad	1496                            # 0x5d8
	.quad	1521                            # 0x5f1
	.quad	1541                            # 0x605
	.quad	1561                            # 0x619
	.quad	1584                            # 0x630
	.quad	1610                            # 0x64a
	.quad	1635                            # 0x663
	.quad	1666                            # 0x682
	.quad	1691                            # 0x69b
	.quad	1714                            # 0x6b2
	.quad	1748                            # 0x6d4
	.quad	1768                            # 0x6e8
	.quad	1791                            # 0x6ff
	.quad	1817                            # 0x719
	.quad	1847                            # 0x737
	.quad	1872                            # 0x750
	.quad	1897                            # 0x769
	.quad	1927                            # 0x787
	.quad	1944                            # 0x798
	.quad	1969                            # 0x7b1
	.quad	1989                            # 0x7c5
	.quad	2015                            # 0x7df
	.quad	2036                            # 0x7f4
	.quad	2061                            # 0x80d
	.quad	2085                            # 0x825
	.quad	2117                            # 0x845
	.quad	2153                            # 0x869
	.quad	2179                            # 0x883
	.quad	2202                            # 0x89a
	.quad	2233                            # 0x8b9
	.quad	2258                            # 0x8d2
	.quad	2280                            # 0x8e8
	.quad	2313                            # 0x909
	.quad	2338                            # 0x922
	.quad	2363                            # 0x93b
	.quad	2380                            # 0x94c
	.quad	2413                            # 0x96d
	.quad	2436                            # 0x984
	.quad	2456                            # 0x998
	.quad	2475                            # 0x9ab
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x4012ad29dc725c3e              # double 4.6691050000000001
	.quad	0x4010e5c896dd26b7              # double 4.2243979999999999
	.quad	0x4020f3d46b26bf87              # double 8.4762299999999993
	.quad	0x401f6e831ad2135e              # double 7.8579220000000003
	.quad	0x3ffca3076c050bd8              # double 1.7898019999999999
	.quad	0x40090acd184c2720              # double 3.130274
	.quad	0x3ff0efa5093964a6              # double 1.0585070000000001
	.quad	0x40053899392189be              # double 2.6526360000000002
	.quad	0x40149a0a0f4d7add              # double 5.1504289999999999
	.quad	0x4020e942f61ed5ae              # double 8.4555889999999998
	.quad	0x3ff4d88c1db0142f              # double 1.3028679999999999
	.quad	0x3ff65930be0ded29              # double 1.3967750000000001
	.quad	0x4015d9f2ba9d1f60              # double 5.4628399999999999
	.quad	0x3ff21b8887229e90              # double 1.1317219999999999
	.quad	0x3ff42a8b8f14db59              # double 1.2603869999999999
	.quad	0x3fc24af922962cfe              # double 0.14291300000000001
	.quad	0x4006836fc158fb44              # double 2.8141780000000001
	.quad	0x401e18765ba6efc3              # double 7.5238889999999996
	.quad	0x401cddaf8df7a4e8              # double 7.2164900000000003
	.quad	0x401056b3bb83cf2d              # double 4.08467
	.quad	0x401f6acb4289118c              # double 7.8542909999999999
	.quad	0x3ff67666234a87e4              # double 1.4039060000000001
	.quad	0x4022455e8d5410f9              # double 9.1354869999999995
	.quad	0x4003083126e978d5              # double 2.379
	.quad	0x4021e080303c07ee              # double 8.9384779999999999
	.quad	0x401ac736049ecb32              # double 6.6945420000000002
	.quad	0x3ff10a697aeddce8              # double 1.065042
	.quad	0x4010f05b39e279dd              # double 4.2347229999999998
	.quad	0x4019d7d88c1db014              # double 6.4607869999999998
	.quad	0x3ffb8346dc5d6388              # double 1.7195499999999999
	.quad	0x4008e20578e5c4eb              # double 3.1103619999999998
	.quad	0x3fe1726f1dc50ce5              # double 0.54521900000000001
	.quad	0x4023769af5ba2be0              # double 9.7316509999999994
	.quad	0x401748919ef954eb              # double 5.8208679999999999
	.quad	0x3ff5b0dd82fd75e2              # double 1.35568
	.quad	0x401ca31c64ba94bc              # double 7.1592880000000001
	.quad	0x40155db8fde2ef4e              # double 5.341526
	.quad	0x401c463baba7b917              # double 7.068587
	.quad	0x400eabba98eda22f              # double 3.8338519999999998
	.quad	0x40216d21dda059a7              # double 8.7131489999999996
	.quad	0x400bbbca9691a75d              # double 3.4666950000000001
	.quad	0x4006463065f9591d              # double 2.7842720000000001
	.quad	0x400dc350d2806af4              # double 3.7203689999999998
	.quad	0x402204347e8ccdd9              # double 9.0082129999999996
	.quad	0x4005eb955f78359c              # double 2.7400310000000001
	.quad	0x40071e6eeb702603              # double 2.8898600000000001
	.quad	0x40170ed1394317ad              # double 5.7644700000000002
	.quad	0x3fd6a3bddfc9ff93              # double 0.353744
	.quad	0x400afa860dcb9a9e              # double 3.3723260000000002
	.quad	0x4001f676ea422899              # double 2.2453439999999998
	.quad	0x401434a9478c868c              # double 5.0514270000000003
	.quad	0x4023655f3519bd40              # double 9.6979919999999992
	.quad	0x40106156191148fe              # double 4.0950550000000003
	.quad	0x401a2b152f3c2dae              # double 6.5420730000000002
	.quad	0x3ff202fc69728a61              # double 1.125729
	.quad	0x400273083558a761              # double 2.306168
	.quad	0x4014d7c73eee5259              # double 5.2107210000000004
	.quad	0x400bdd206c8711d8              # double 3.4829720000000002
	.quad	0x400520168b5cbff4              # double 2.6406679999999998
	.quad	0x40162e44fa05143c              # double 5.545185
	.quad	0x400e294ff0025bfb              # double 3.7701720000000001
	.quad	0x400c2f27bb2fec57              # double 3.5230250000000001
	.quad	0x401a7ed3953dea46              # double 6.6238539999999997
	.quad	0x3fcf24e9c4545847              # double 0.243314
	.quad	0x4005d0c2c5e2cdc0              # double 2.726934
	.quad	0x401db2378ab0c88a              # double 7.4240399999999998
	.quad	0x4010ae6ab9b23dd5              # double 4.1703289999999997
	.quad	0x3fdd1c2e33eff195              # double 0.454845
	.quad	0x4004a90de093532e              # double 2.5825459999999998
	.quad	0x401f3912556d19df              # double 7.8057340000000001
	.quad	0x40225016aceaaf36              # double 9.1564230000000002
	.quad	0x4017a1309c7ffde7              # double 5.9074119999999999
	.quad	0x401f3f41f212d773              # double 7.8117749999999999
	.quad	0x3fc0b13dfb0d51f8              # double 0.130409
	.quad	0x4023c27aa68f4b62              # double 9.879842
	.quad	0x400725c896dd26b7              # double 2.8934489999999999
	.quad	0x4016f8da3c21187e              # double 5.7430199999999996
	.quad	0x4011b284167a95c8              # double 4.4243319999999997
	.quad	0x3fe53e37de939eae              # double 0.66384500000000002
	.quad	0x4020a66f5019f3c7              # double 8.3250679999999999
	.quad	0x4010a04a2fcefaa4              # double 4.1565329999999996
	.quad	0x40015df8f4730404              # double 2.1708850000000002
	.quad	0x401cf1f7d73c9258              # double 7.2362970000000004
	.quad	0x3fefeadf71eafee7              # double 0.997421
	.quad	0x40232f37329c347f              # double 9.5922180000000007
	.quad	0x400994a1272c94b4              # double 3.1975730000000002
	.quad	0x4023c38b47c73eee              # double 9.8819219999999994
	.quad	0x401898d2e514c22f              # double 6.1492420000000001
	.quad	0x4021cf3f52fc2657              # double 8.9047800000000006
	.quad	0x40161619da9c9928              # double 5.5215829999999997
	.quad	0x4022151deefe4ffd              # double 9.0412440000000007
	.quad	0x3fee75579af1886e              # double 0.951824
	.quad	0x3fc3ab53d640e9d5              # double 0.153666
	.quad	0x4005712ec6bce853              # double 2.6802649999999999
	.quad	0x40139f12c27a6373              # double 4.9053449999999996
	.quad	0x4005292b3cc4ac6d              # double 2.6451020000000001
	.quad	0x401aaf7a919695d9              # double 6.6713659999999999
	.quad	0x3ff404c9c90c4dec              # double 1.251169
	.quad	0x4015f61b6d43d039              # double 5.4903389999999996
	.quad	0x3ffa206748e47560              # double 1.632911
	.quad	0x401759830e3cd9a5              # double 5.8374139999999999
	.quad	0x3ff654bcf0b6b6e1              # double 1.395688
	.quad	0x401258f217093101              # double 4.5868609999999999
	.quad	0x40203052502eec7d              # double 8.0943780000000007
	.quad	0x40210ab649d388a9              # double 8.5209220000000006
	.quad	0x4000b7785729b281              # double 2.089585
	.quad	0x40131713ad5bee3d              # double 4.7725359999999997
	.quad	0x4022ca3400b88ca4              # double 9.3949280000000001
	.quad	0x401e95525cc42635              # double 7.6458219999999998
	.quad	0x4006ad7f950b955f              # double 2.8347159999999998
	.quad	0x40077a9d1f601798              # double 2.9348700000000001
	.quad	0x400c7e1650a45d42              # double 3.561566
	.quad	0x4014a57bc7f77af6              # double 5.1616049999999998
	.quad	0x3ff9062b27cbf6e4              # double 1.564006
	.quad	0x3fff3e1eb4202d9d              # double 1.952666
	.quad	0x4020f202d9cf13cf              # double 8.4726780000000002
	.quad	0x4012d08637bd05af              # double 4.7036369999999996
	.quad	0x40040e8101f31f47              # double 2.507082
	.quad	0x3fb20620ab713272              # double 0.070405999999999996
	.quad	0x40179e6c8f755369              # double 5.9047109999999998
	.quad	0x4016cdd82fd75e20              # double 5.7010199999999998
	.quad	0x4020ca3cea6c1a05              # double 8.3949960000000008
	.quad	0x4014a27243137b07              # double 5.158639
	.quad	0x4022f9b5a63f9a4a              # double 9.4877140000000004
	.quad	0x3feca5614df8b157              # double 0.89518799999999998
	.quad	0x400c68bb906466b2              # double 3.551139
	.quad	0x4021183cafb3b752              # double 8.5473379999999999
	.quad	0x401abc41dd1a21ea              # double 6.6838449999999998
	.quad	0x4002b4202d9cf13d              # double 2.337952
	.quad	0x3fb7c3d68405b39e              # double 0.092831999999999997
	.quad	0x3ffc7d028a1dfb94              # double 1.7805200000000001
	.quad	0x401e095f2452c5a0              # double 7.5091520000000003
	.quad	0x401d9a26a22b3893              # double 7.4005380000000001
	.quad	0x402021a11233df2b              # double 8.0656820000000007
	.quad	0x4011e032db1e9f27              # double 4.4689439999999996
	.quad	0x4021a05857afea3e              # double 8.8131740000000001
	.quad	0x40201b19a415f45e              # double 8.0529299999999999
	.quad	0x402036e8f29d40ee              # double 8.107246
	.quad	0x3fc5c886162f166e              # double 0.170182
	.quad	0x401d44cc25072086              # double 7.3171850000000003
	.quad	0x4012225aab474107              # double 4.5335489999999998
	.quad	0x4018a1a650614163              # double 6.1578609999999996
	.quad	0x40239ba1d323fee3              # double 9.8039690000000003
	.quad	0x40231d0917d6b65b              # double 9.5567100000000007
	.quad	0x401cd99d451fc4c1              # double 7.2125139999999996
	.quad	0x3ff6d7efe0ce0b91              # double 1.427719
	.quad	0x401b0eac8605681f              # double 6.7643300000000002
	.quad	0x401d5985271bcdbc              # double 7.3374220000000001
	.quad	0x3fe640746455eaee              # double 0.69536799999999999
	.quad	0x3ff18fa7a85015c2              # double 1.097572
	.quad	0x4002a3e3193f6c27              # double 2.3300230000000002
	.quad	0x40136424a276b7ed              # double 4.8477959999999998
	.quad	0x402115c422036007              # double 8.5425120000000003
	.quad	0x4005419e30014f8b              # double 2.6570399999999998
	.quad	0x4021afe175d13d75              # double 8.8435170000000003
	.quad	0x3fe3c43914f483cb              # double 0.617703
	.quad	0x401908b47c73eee5              # double 6.2585009999999999
	.quad	0x400850a4e379b77c              # double 3.039377
	.quad	0x4022bb9a7c17a893              # double 9.3664129999999996
	.quad	0x4020895e7c8d1959              # double 8.2682990000000007
	.quad	0x4014dc88a47ecfea              # double 5.2153650000000003
	.quad	0x401345cb790fb656              # double 4.8181589999999996
	.quad	0x40186a76d97b30f9              # double 6.1039690000000002
	.quad	0x3fd58dc11e42e126              # double 0.33677699999999999
	.quad	0x4001d89acbc8c0cf              # double 2.2307640000000002
	.quad	0x40188ed7c6fbd274              # double 6.1394950000000001
	.quad	0x4017c1b6d43d0397              # double 5.9391740000000004
	.quad	0x3fd40a0f4d7add16              # double 0.313114
	.quad	0x40200074c8ffb8b2              # double 8.0008909999999993
	.quad	0x4016c5ed8d36b4c8              # double 5.693289
	.quad	0x3fe07f7be121ee67              # double 0.51556199999999996
	.quad	0x401349c4545846e9              # double 4.822038
	.quad	0x401b51ebc83a96d5              # double 6.8300010000000002
	.quad	0x40225559d55e6bc6              # double 9.1667009999999998
	.quad	0x4004844fa05143bf              # double 2.5646049999999998
	.quad	0x4015be219652bd3c              # double 5.4356749999999998
	.quad	0x3fe090ecb74ddf87              # double 0.51769100000000001
	.quad	0x3ff64e1d6494d50f              # double 1.3940710000000001
	.quad	0x4019b3b5bf6a0dbb              # double 6.4254980000000002
	.quad	0x402187a8f7db6e50              # double 8.7649609999999996
	.quad	0x3fe476c2699c7bcc              # double 0.63949699999999998
	.quad	0x400461e71044f1a2              # double 2.5478040000000002
	.quad	0x4005e581cf7878b8              # double 2.7370640000000002
	.quad	0x3fffb8433d6c7219              # double 1.982486
	.quad	0x4005de47991bc558              # double 2.7335349999999998
	.quad	0x4021aae33eff1950              # double 8.8337649999999996
	.quad	0x4015cae85b9e8c48              # double 5.4481520000000003
	.quad	0x40046194c0160525              # double 2.547647
	.quad	0x40042d81adea8976              # double 2.5222199999999999
	.quad	0x401c8e12e83a109d              # double 7.138744
	.quad	0x401cdbd8be7296f6              # double 7.2146939999999997
	.quad	0x3fe25c31593e5fb7              # double 0.57375399999999999
	.quad	0x400114f15e7c8d19              # double 2.1352259999999998
	.quad	0x401c26a4ca4f440b              # double 7.037738
	.quad	0x40138402d16b97ff              # double 4.8789170000000004
	.quad	0x401edc4bd33d2956              # double 7.7151329999999998
	.quad	0x4004b3e89a88ace2              # double 2.5878459999999999
	.quad	0x401ae9af1886df83              # double 6.7282070000000003
	.quad	0x400e0138fffbce42              # double 3.750597
	.quad	0x401ae70fbeb9e493              # double 6.7256460000000002
	.quad	0x40235ba0e8427419              # double 9.6789620000000002
	.quad	0x4014aae07e5a78f2              # double 5.1668719999999997
	.quad	0x4021c876c050bd88              # double 8.8915310000000005
	.quad	0x401225604189374c              # double 4.5365000000000002
	.quad	0x40166cd78c436fc1              # double 5.6062909999999997
	.quad	0x401e51df3300de4c              # double 7.5799529999999997
	.quad	0x4020128e71476af9              # double 8.0362430000000007
	.quad	0x401140ba1f4b1ee2              # double 4.3132099999999998
	.quad	0x3fb3eb5b2d4d4025              # double 0.077810000000000004
	.quad	0x401e789ca18bd662              # double 7.6177849999999996
	.quad	0x4011ffbf401c4fc2              # double 4.4997530000000001
	.quad	0x400ede1e2de87097              # double 3.8584559999999999
	.quad	0x40138c319c5a3e3a              # double 4.886908
	.quad	0x401903acd5b6805a              # double 6.2535889999999998
	.quad	0x4023a2048e043a21              # double 9.8164409999999993
	.quad	0x40235ba3443d46b2              # double 9.6789799999999993
	.quad	0x3ff7f2580c308feb              # double 1.4966660000000001
	.quad	0x4023e719934efcbd              # double 9.9513669999999994
	.quad	0x3ff6294680171194              # double 1.3850769999999999
	.quad	0x3ffd7d7d3910c2c6              # double 1.843137
	.quad	0x4011690d173fb7a6              # double 4.352589
	.quad	0x4005ce115592d98c              # double 2.725619
	.quad	0x402212441fea8113              # double 9.0356760000000005
	.quad	0x400ae6d04e618ce3              # double 3.3627020000000001
	.quad	0x4017a11a543f1c76              # double 5.9073270000000004
	.quad	0x4023dbcd9a52263e              # double 9.9293030000000009
	.quad	0x401a62a843808851              # double 6.5963450000000003
	.quad	0x400f16b11c6d1e11              # double 3.8860800000000002
	.quad	0x3fffd76ee73e681b              # double 1.9900960000000001
	.quad	0x40188e6a76965f52              # double 6.1390779999999996
	.quad	0x4012bc28b2a6b0d9              # double 4.6837489999999997
	.quad	0x3ff8ec39799e518f              # double 1.5576719999999999
	.quad	0x401a4ee17a02fb5d              # double 6.577032
	.quad	0x401b3b4aa9717df2              # double 6.8079020000000003
	.quad	0x400b0c78e9f6a93f              # double 3.3810899999999999
	.quad	0x400c20b3d4ae429e              # double 3.515968
	.quad	0x40120dcdf6987831              # double 4.5134809999999996
	.quad	0x40023cff64cf8d71              # double 2.2797839999999998
	.quad	0x3fd99ae0c1765775              # double 0.40007799999999999
	.quad	0x3ffb30b49e01de27              # double 1.6993910000000001
	.quad	0x401f0d759ee88df3              # double 7.7631439999999996
	.quad	0x402340f733a8a3f9              # double 9.6268860000000007
	.quad	0x4021c7dd00f776c5              # double 8.8903580000000009
	.quad	0x400ce407cc7d1bb5              # double 3.6113430000000002
	.quad	0x4015c3cd9a52263e              # double 5.4412140000000004
	.quad	0x401474df8b157258              # double 5.114134
	.quad	0x4022f65d3996fa83              # double 9.4811800000000001
	.quad	0x4010f14db59578a3              # double 4.2356480000000003
	.quad	0x4021151eb851eb85              # double 8.5412499999999998
	.quad	0x40188b66f9335d25              # double 6.1361350000000003
	.quad	0x40148cc6c54bcf0b              # double 5.1374769999999996
	.quad	0x4021e39799e518f4              # double 8.9445160000000001
	.quad	0x401047b5286b5914              # double 4.0700269999999996
	.quad	0x4015ffc2656abde4              # double 5.499765
	.quad	0x4019163d816aceab              # double 6.271719
	.quad	0x401361d9b1b79d91              # double 4.8455570000000003
	.quad	0x4022352f1a9fbe77              # double 9.1038750000000004
	.quad	0x3ff144bc27631b58              # double 1.0792809999999999
	.quad	0x400cbebf22c01e69              # double 3.5931380000000002
	.quad	0x3ffece9f6a93f291              # double 1.9254450000000001
	.quad	0x400768beb5b2d4d4              # double 2.926145
	.quad	0x401a5d58c8eef1bb              # double 6.5911590000000002
	.quad	0x3ff1902363b25700              # double 1.0976900000000001
	.quad	0x4019c7414a4d2b2c              # double 6.444585
	.quad	0x401c360c38f36695              # double 7.0527810000000004
	.quad	0x40189934efcbd556              # double 6.149616
	.quad	0x400c7f52fc2656ac              # double 3.5621700000000001
	.quad	0x402328a958537e2c              # double 9.5794169999999994
	.quad	0x4023b9641f644956              # double 9.8620920000000005
	.quad	0x40223975afaf8594              # double 9.1122259999999997
	.quad	0x4013030728e92d56              # double 4.7529570000000003
	.quad	0x3ff5c746455eaee2              # double 1.361151
	.quad	0x402394988094e5d6              # double 9.7902260000000005
	.quad	0x401e43d29563a9f4              # double 7.5662330000000004
	.quad	0x401cefbb0e5e6794              # double 7.2341119999999997
	.quad	0x40100a04d12018a4              # double 4.0097839999999998
	.quad	0x3fe5ec99f1ae2da5              # double 0.68513199999999996
	.quad	0x400137b395c42203              # double 2.1521979999999998
	.quad	0x4002bbe6e6538690              # double 2.3417490000000001
	.quad	0x401f65e2478854ce              # double 7.8494960000000003
	.quad	0x40103ac03ff69015              # double 4.0573740000000003
	.quad	0x4017721ea35935fc              # double 5.8614449999999998
	.quad	0x401fb374794ea077              # double 7.9252489999999999
	.quad	0x4022eb7564302b41              # double 9.45988
	.quad	0x4018e12513b5bf6a              # double 6.219868
	.quad	0x400d71a32b12d341              # double 3.6804869999999998
	.quad	0x4021279873ffac1d              # double 8.5773349999999997
	.quad	0x401a6aacd9e83e42              # double 6.6041749999999997
	.quad	0x3fed36b6e0d23d4f              # double 0.91292899999999999
	.quad	0x3fe5cd48882f0e0b              # double 0.68130900000000005
	.quad	0x4011b2bf11f926c8              # double 4.4245570000000001
	.quad	0x401e39e279dd3bb0              # double 7.5565280000000001
	.quad	0x4022cfacc4ef88b9              # double 9.4056149999999991
	.quad	0x3ff75b0ccbc05d53              # double 1.4597290000000001
	.quad	0x401c4afd5454152b              # double 7.073232
	.quad	0x40015851654d61b3              # double 2.1681240000000002
	.quad	0x40203f607c4199fe              # double 8.1237829999999995
	.quad	0x402188dc768dfbd7              # double 8.7673070000000006
	.quad	0x40215aea747d805e              # double 8.6775699999999993
	.quad	0x4014b94680171194              # double 5.1809329999999996
	.quad	0x401784f69ca9ef52              # double 5.8798469999999998
	.quad	0x4021eb6390c91080              # double 8.9597440000000006
	.quad	0x3fb4cb7d41743e96              # double 0.081229999999999996
	.quad	0x3fe55b9e8c47a17f              # double 0.66743399999999997
	.quad	0x40222dad538ac190              # double 9.0892130000000009
	.quad	0x3ff215a4acf312b2              # double 1.1302840000000001
	.quad	0x4018fb8fde2ef4e0              # double 6.2456659999999999
	.quad	0x3ff82d55a3a08399              # double 1.5110680000000001
	.quad	0x4017e325d4a5df22              # double 5.9718239999999998
	.quad	0x4018dfe111276fb1              # double 6.2186320000000004
	.quad	0x4020e4c70867ad8e              # double 8.4468309999999995
	.quad	0x400969930be0ded3              # double 3.1765500000000002
	.quad	0x40178393ee5eedcc              # double 5.8784939999999999
	.quad	0x3ff5f674d1633483              # double 1.3726700000000001
	.quad	0x40063a53b8e4b87c              # double 2.7784800000000001
	.quad	0x4021d2f038e29f9d              # double 8.9119890000000002
	.quad	0x3fdc8194c0160525              # double 0.445409
	.quad	0x40095f2ecf206424              # double 3.1714760000000002
	.quad	0x3ff13f37b8d3f184              # double 1.0779339999999999
	.quad	0x4001008e9b38d60a              # double 2.1252719999999998
	.quad	0x4013106bbdbe3c10              # double 4.7660359999999997
	.quad	0x401a6379b77c02b0              # double 6.5971440000000001
	.quad	0x3fc4c81d3aa369fd              # double 0.162357
	.quad	0x3ff2635f80991794              # double 1.1492610000000001
	.quad	0x400f72dba4d6e47e              # double 3.9310830000000001
	.quad	0x3ff524e48626f60e              # double 1.321507
	.quad	0x3fed04b1ab0856e7              # double 0.90682300000000005
	.quad	0x4002321e603d5779              # double 2.2744719999999998
	.quad	0x3ffc0e13f4a98aa8              # double 1.7534369999999999
	.quad	0x40203188d2a1f8e4              # double 8.0967470000000005
	.quad	0x4016c3d29563a9f4              # double 5.6912330000000004
	.quad	0x4016cb17481b21c4              # double 5.6983309999999996
	.quad	0x40227a07b352a844              # double 9.2383400000000008
	.quad	0x4016d5d851654d62              # double 5.7088330000000003
	.quad	0x40132395810624dd              # double 4.7847499999999998
	.quad	0x401bfb3a68b19a41              # double 6.9953399999999997
	.quad	0x4023122877ee4e27              # double 9.5354650000000003
	.quad	0x4023b251c193b3a7              # double 9.8482800000000008
	.quad	0x402345629d8409e5              # double 9.6355179999999993
	.quad	0x3fe464ead0c3d252              # double 0.63731899999999997
	.quad	0x401ec2c77574f723              # double 7.6902140000000001
	.quad	0x4015ecd141a6937d              # double 5.4812669999999999
	.quad	0x401ba76f2a5a469d              # double 6.9135099999999996
	.quad	0x401093a96d4c33b5              # double 4.1442009999999998
	.quad	0x401f255c52e72da1              # double 7.7864849999999998
	.quad	0x4016b6c093d96638              # double 5.6784689999999998
	.quad	0x40232dadd9c27e95              # double 9.5892169999999996
	.quad	0x40136dee78183f92              # double 4.8573550000000001
	.quad	0x4003e4d87724fa8b              # double 2.4867409999999999
	.quad	0x3fe4db70691ea78b              # double 0.65178700000000001
	.quad	0x3fc45a89b951c5c5              # double 0.15901299999999999
	.quad	0x3f923d0bfa0945fa              # double 0.017811
	.quad	0x40160be4cd749279              # double 5.5116149999999999
	.quad	0x3ff6de54b48d3ae7              # double 1.4292800000000001
	.quad	0x3ff2ed6883771865              # double 1.1829609999999999
	.quad	0x4023dc1bfbdf090f              # double 9.9299009999999992
	.quad	0x400308333fc86cec              # double 2.3790040000000001
	.quad	0x40176fa333764f12              # double 5.8590210000000003
	.quad	0x4010a532617c1bda              # double 4.1613249999999997
	.quad	0x4012889bd8383ada              # double 4.6334070000000001
	.quad	0x40038e525892684d              # double 2.444493
	.quad	0x400825b4aa9717df              # double 3.018411
	.quad	0x40052ccee5abc0e4              # double 2.6468790000000002
	.quad	0x40147a027525460b              # double 5.1191500000000003
	.quad	0x400c2fe82517e77d              # double 3.5233919999999999
	.quad	0x401246f4384ba0e8              # double 4.5692909999999998
	.quad	0x3ff73f3ade225fa6              # double 1.4529369999999999
	.quad	0x4001f4306e5cd4ed              # double 2.2442329999999999
	.quad	0x3ff0796073de1e2e              # double 1.029633
	.quad	0x400b51904b3c3e75              # double 3.4148260000000001
	.quad	0x401ef36deb95e5b0              # double 7.737724
	.quad	0x4017024e9c454584              # double 5.7522529999999996
	.quad	0x400910385c67dfe3              # double 3.1329199999999999
	.quad	0x40128f4dbdf8f473              # double 4.639945
	.quad	0x3fe4338f7985271c              # double 0.63129400000000002
	.quad	0x4014391b3f20a73f              # double 5.0557679999999996
	.quad	0x40224abbcb1cc964              # double 9.1459639999999993
	.quad	0x4022bfb2edfe75bc              # double 9.3744119999999995
	.quad	0x4022d0a5efe93187              # double 9.4075159999999993
	.quad	0x401c020d9945b6c3              # double 7.0020049999999996
	.quad	0x402328a5accd5305              # double 9.5793890000000008
	.quad	0x400b3b82c2bd7f52              # double 3.404058
	.quad	0x40200fe1da7b0b39              # double 8.0310199999999998
	.quad	0x400f4b4d056c508b              # double 3.9117679999999999
	.quad	0x402025d11be6e654              # double 8.0738610000000008
	.quad	0x401f6ddce7cd0353              # double 7.8572879999999996
	.quad	0x400aa7e1fc08fa7b              # double 3.3319740000000002
	.quad	0x40173ac7da1ec4e7              # double 5.8074029999999999
	.quad	0x400b0eee957470eb              # double 3.3822909999999999
	.quad	0x401efaf859429175              # double 7.7450879999999999
	.quad	0x4019a658c4bd33d3              # double 6.4124480000000004
	.quad	0x40172bacf7446f9c              # double 5.7926520000000004
	.quad	0x401d7f1c3265adda              # double 7.3741310000000002
	.quad	0x400db16f4384ba0f              # double 3.7116380000000002
	.quad	0x40169ae642bf9831              # double 5.6512690000000001
	.quad	0x401728cc575c0768              # double 5.7898420000000002
	.quad	0x401d0ecf20642396              # double 7.264462
	.quad	0x401e50c6f7a0b5ee              # double 7.5788840000000004
	.quad	0x3fed48abd5dc4007              # double 0.91512099999999996
	.quad	0x4012dac96cc5fbf8              # double 4.7136589999999998
	.quad	0x4012e5818c5c9a35              # double 4.7241270000000002
	.quad	0x401840fcb4f1e4b4              # double 6.0634639999999997
	.quad	0x40076df82b1f687b              # double 2.928696
	.quad	0x4023af83dff3f0fe              # double 9.842803
	.quad	0x40219f4a1272c94b              # double 8.8111119999999996
	.quad	0x401d6144cbe1eb42              # double 7.344989
	.quad	0x40223e24febd09e1              # double 9.1213759999999997
	.quad	0x400e29107faa044b              # double 3.770051
	.quad	0x40123a4b9884c6a4              # double 4.5569290000000002
	.quad	0x4005af0a5efe9318              # double 2.7104689999999998
	.quad	0x4003f34e7685985b              # double 2.4938020000000001
	.quad	0x401d2d1e96c3fc44              # double 7.2940620000000003
	.quad	0x3fbcbdba0a526959              # double 0.11226999999999999
	.quad	0x4010ae019b0ab2e1              # double 4.1699279999999996
	.quad	0x40222c61d8622c45              # double 9.086684
	.quad	0x40025162ae4b0186              # double 2.289739
	.quad	0x40209ef5232d2bb2              # double 8.3104639999999996
	.quad	0x40001c8d9f9053a0              # double 2.0139420000000001
	.quad	0x400dffeda6612839              # double 3.749965
	.quad	0x3feae965f5275eea              # double 0.84099100000000004
	.quad	0x401f87739f340d4e              # double 7.8822770000000002
	.quad	0x3febb5cbff47735c              # double 0.86594199999999998
	.quad	0x40220202107b7846              # double 9.0039219999999993
	.quad	0x4020605ab3aabcd8              # double 8.1881920000000008
	.quad	0x400abbff8a8f3a9b              # double 3.341796
	.quad	0x401ce5771001d5c3              # double 7.2240869999999999
	.quad	0x40181b15b573eab3              # double 6.0264499999999996
	.quad	0x4019503e20ccff22              # double 6.3283620000000003
	.quad	0x401c8200c0f01fb8              # double 7.1269559999999998
	.quad	0x3ff7a9670196d8f5              # double 1.478858
	.quad	0x401363c4b09e98dd              # double 4.8474300000000001
	.quad	0x4001c6a76965f527              # double 2.2219989999999998
	.quad	0x4012716d6dc1a47b              # double 4.6107690000000003
	.quad	0x4020870e90bc7b46              # double 8.2637830000000001
	.quad	0x3fea81f53825e13b              # double 0.82836399999999999
	.quad	0x401c2bdf090f733b              # double 7.0428430000000004
	.quad	0x40088bef06b37868              # double 3.068327
	.quad	0x402137d2e9468017              # double 8.6090309999999999
	.quad	0x401682817763e4ac              # double 5.6274470000000001
	.quad	0x40233a3e39f77293              # double 9.6137560000000004
	.quad	0x402270ea9e6eeb70              # double 9.2205399999999997
	.quad	0x401f76a6e32e3822              # double 7.8658710000000003
	.quad	0x400329f83be6601c              # double 2.3954930000000001
	.quad	0x40030a2a90cd423e              # double 2.3799640000000002
	.quad	0x401abc08fa7a8501              # double 6.6836279999999997
	.quad	0x4019c58b827fa1a1              # double 6.4429150000000002
	.quad	0x3ff9525fe974a340              # double 1.582611
	.quad	0x40226602c9081c2e              # double 9.1992399999999996
	.quad	0x401864b33daf8df8              # double 6.0983400000000003
	.quad	0x40212d182a9930be              # double 8.5880749999999999
	.quad	0x3ffe39b994e1a3f4              # double 1.8890929999999999
	.quad	0x3febc67168f8e7de              # double 0.86797400000000002
	.quad	0x4023cf4f50a02b84              # double 9.9049019999999998
	.quad	0x40175495e17e34b9              # double 5.8326029999999998
	.quad	0x400bfec918e325d5              # double 3.4994070000000002
	.quad	0x40060222d5171e2a              # double 2.7510430000000001
	.quad	0x3ffd6db2f661f18d              # double 1.8392820000000001
	.quad	0x3fd5646ae3a3a8e7              # double 0.334254
	.quad	0x4005cdad31fcd24e              # double 2.725428
	.quad	0x400356249a133c1d              # double 2.417062
	.quad	0x4011a03ff69014b6              # double 4.4064940000000004
	.quad	0x400c088509bf9c63              # double 3.5041600000000002
	.quad	0x3ff498f2e05ccc8a              # double 1.2873410000000001
	.quad	0x401cac1df3300de5              # double 7.1680830000000002
	.quad	0x40171ef34d6a161e              # double 5.7802249999999997
	.quad	0x40183c07ee0b0af6              # double 6.058624
	.quad	0x401dcc308feac42f              # double 7.4494040000000004
	.quad	0x401dec7192ea52f0              # double 7.4809020000000004
	.quad	0x400977a786c22681              # double 3.1834250000000002
	.quad	0x40145a415f45e0b5              # double 5.0881400000000001
	.quad	0x4014b2d16b97fe8f              # double 5.1746270000000001
	.quad	0x400e490c4dec1c1d              # double 3.7856679999999998
	.quad	0x3ff502c9081c2e34              # double 1.31318
	.quad	0x401dc9dcb5781c71              # double 7.4471309999999997
	.quad	0x4021b6d3b6cbd988              # double 8.8570840000000004
	.quad	0x4014a51ac9afe1da              # double 5.1612349999999996
	.quad	0x400087685985ad54              # double 2.0661170000000002
	.quad	0x4021d01344806291              # double 8.9063970000000001
	.quad	0x400dcc6bce8533b1              # double 3.724815
	.quad	0x401ad1ec918e325d              # double 6.7050039999999997
	.quad	0x3fcfebaf102363b2              # double 0.24937999999999999
	.quad	0x40103c868b9fdbd3              # double 4.059107
	.quad	0x3ff9061522a6f3f5              # double 1.563985
	.quad	0x401a0a3b9ae0c176              # double 6.5099929999999997
	.quad	0x402246ed6777079e              # double 9.1385299999999994
	.quad	0x401cc0ed80a17b0f              # double 7.1884059999999996
	.quad	0x40234bac710cb296              # double 9.6478000000000002
	.quad	0x3ff15a426bb55ac0              # double 1.0845359999999999
	.quad	0x40169296b3354c12              # double 5.6431529999999999
	.quad	0x4020b5efc7a39820              # double 8.3553449999999998
	.quad	0x4021e6c1a048e044              # double 8.9506960000000006
	.quad	0x3ffc40b673c4f3ba              # double 1.7657989999999999
	.quad	0x3fdbf1800a7c5ac4              # double 0.43661499999999998
	.quad	0x401e84484944ed70              # double 7.6291820000000001
	.quad	0x3ff122339c0ebee0              # double 1.0708500000000001
	.quad	0x4006c8bfc2224edf              # double 2.8480219999999998
	.quad	0x4018f3a0c6b484d7              # double 6.2379179999999996
	.quad	0x4023da50d6b228dd              # double 9.9263980000000007
	.quad	0x40055545c78a6dad              # double 2.6666370000000001
	.quad	0x402089465e892253              # double 8.2681149999999999
	.quad	0x3ff18e2b063e07a3              # double 1.0972090000000001
	.quad	0x3ff448259e1f3a58              # double 1.267614
	.quad	0x4010e35d67ba237d              # double 4.2220360000000001
	.quad	0x40232423315d701e              # double 9.5705810000000007
	.quad	0x400df7f27fe4bcae              # double 3.7460680000000002
	.quad	0x4021ea5e13b18dac              # double 8.9577489999999997
	.quad	0x40221eb65a9a8049              # double 9.0599849999999993
	.quad	0x3ff1ebebe1650a46              # double 1.120098
	.quad	0x401f27f993d5347a              # double 7.7890379999999997
	.quad	0x40120b239a38fbca              # double 4.5108779999999999
	.quad	0x4019edc2f405f6ba              # double 6.482189
	.quad	0x400420945f9df549              # double 2.515908
	.quad	0x4014dc17a89331a1              # double 5.2149340000000004
	.quad	0x3ff39ff609dcf894              # double 1.226553
	.quad	0x4001d8cf398e9707              # double 2.230864
	.quad	0x400f435a426bb55b              # double 3.9078870000000001
	.quad	0x4012565d3996fa83              # double 4.5843400000000001
	.quad	0x4007e3c297bfa4c6              # double 2.9862109999999999
	.quad	0x4020d25482385404              # double 8.4108009999999993
	.quad	0x40222acbea4ebdd3              # double 9.0835869999999996
	.quad	0x4015283dff3f0fe0              # double 5.2892989999999998
	.quad	0x400331ba3ca7503c              # double 2.3992810000000002
	.quad	0x4006879a2834d270              # double 2.8162120000000002
	.quad	0x400fdf865d7cb2d9              # double 3.984143
	.quad	0x3fe23b9f127f5e85              # double 0.56977800000000001
	.quad	0x402075c054ef459e              # double 8.2299830000000007
	.quad	0x401097f06705c897              # double 4.1483780000000001
	.quad	0x400c00a6b93ccd10              # double 3.500318
	.quad	0x40026e5929670197              # double 2.3038810000000001
	.quad	0x401c6dd54da4ce81              # double 7.107259
	.quad	0x40213a65492ff4ba              # double 8.6140539999999994
	.quad	0x4011fe95faa8a82a              # double 4.4986189999999997
	.quad	0x3ffbf2441fea8113              # double 1.7466470000000001
	.quad	0x4014e909aed56b01              # double 5.227576
	.quad	0x4011b34efcbd5561              # double 4.4251060000000004
	.quad	0x401e520c8cd63cb8              # double 7.5801259999999999
	.quad	0x4002099e94ab1d50              # double 2.2546970000000002
	.quad	0x4021bf0a808c825a              # double 8.8731270000000002
	.quad	0x40154a33bd9cae21              # double 5.3224629999999999
	.quad	0x4007c55000c9539c              # double 2.9713440000000002
	.quad	0x4016e0a5efe93187              # double 5.7193829999999997
	.quad	0x401d75a78f25a251              # double 7.364897
	.quad	0x402373317efe0ce1              # double 9.7249870000000004
	.quad	0x40196f1e4b44a1f1              # double 6.3585140000000004
	.quad	0x4010d3d96638433d              # double 4.2068839999999996
	.quad	0x401292a843808851              # double 4.6432200000000003
	.quad	0x401d723704790b85              # double 7.3615380000000004
	.quad	0x4011b126a65cf67b              # double 4.4229989999999999
	.quad	0x4021d5ba908a265f              # double 8.9174389999999999
	.quad	0x3fff74784230fcf8              # double 1.965935
	.quad	0x400915f138bcdff0              # double 3.1357140000000001
	.quad	0x400cc16f0068db8c              # double 3.5944500000000001
	.quad	0x3ff4fb84db9c7369              # double 1.3114060000000001
	.quad	0x3ffd8b2745bf26f2              # double 1.846473
	.quad	0x3ffd9c66d373affb              # double 1.850684
	.quad	0x40074c9afe1da7b1              # double 2.9124050000000001
	.quad	0x3fe0605681ecd4aa              # double 0.51175999999999999
	.quad	0x400b3bb9496249a1              # double 3.4041619999999999
	.quad	0x4012194812be48a6              # double 4.5246890000000004
	.quad	0x3fd6977c88e79aae              # double 0.35299599999999998
	.quad	0x3fd89a0ad8a11666              # double 0.38440200000000002
	.quad	0x401518982cb20fb2              # double 5.2740179999999999
	.quad	0x3ff2e4b87bdcf030              # double 1.1808399999999999
	.quad	0x4015b07d912556d2              # double 5.4223540000000003
	.quad	0x400d63465625a683              # double 3.6734740000000001
	.quad	0x3fd66861e92923e6              # double 0.35012100000000002
	.quad	0x4003d495182a9931              # double 2.4788000000000001
	.quad	0x401ef58537e2c55d              # double 7.7397660000000003
	.quad	0x402308bfa0945f9e              # double 9.5170870000000001
	.quad	0x401e2b7e0ac7da1f              # double 7.5424730000000002
	.quad	0x4019210667f90d9d              # double 6.2822509999999996
	.quad	0x3fe6e3800218def4              # double 0.71527099999999999
	.quad	0x401c9f92f2b66b61              # double 7.1558339999999996
	.quad	0x40116784ec636b09              # double 4.3510929999999997
	.quad	0x40219999bb2788db              # double 8.800001
	.quad	0x3fe6fbd8be7296f6              # double 0.71824299999999996
	.quad	0x4016fa77e5eaab04              # double 5.7445979999999999
	.quad	0x4000276102795704              # double 2.019228
	.quad	0x4000251f3e89a88b              # double 2.0181260000000001
	.quad	0x40199b7e4de3b8a2              # double 6.4018490000000003
	.quad	0x4018e29888f861a6              # double 6.221285
	.quad	0x400c5702e6644d87              # double 3.5424859999999998
	.quad	0x3ff65caafbc1acde              # double 1.397624
	.quad	0x4022212bc2fc6973              # double 9.0647870000000008
	.quad	0x3ffcfc968943e100              # double 1.8116669999999999
	.quad	0x3fe7b3e35c5b4aa9              # double 0.74070899999999995
	.quad	0x3fdd26351deefe50              # double 0.455457
	.quad	0x3fdd16c1e364bec6              # double 0.45451399999999997
	.quad	0x3ff4fbd9cae21102              # double 1.3114870000000001
	.quad	0x401fa3e8dda48b65              # double 7.9100679999999998
	.quad	0x40204940fecdd0d9              # double 8.1430740000000004
	.quad	0x401035daad601ffb              # double 4.0525919999999998
	.quad	0x401fc694898f605b              # double 7.9439260000000002
	.quad	0x4022ceeefa1e3eaf              # double 9.4041669999999992
	.quad	0x4012174d9c6b0532              # double 4.5227570000000004
	.quad	0x4000d816aceaaf36              # double 2.1055120000000001
	.quad	0x3fe5b5daad601ffb              # double 0.67844899999999997
	.quad	0x3f93f52fc2656abe              # double 0.01949
	.quad	0x40203c0767d34df0              # double 8.1172439999999995
	.quad	0x3fd0fef7c243dccf              # double 0.26556200000000002
	.quad	0x402021001d5c3159              # double 8.0644539999999996
	.quad	0x401d18c3b0c4588a              # double 7.274184
	.quad	0x40073ce18266772d              # double 2.9047269999999998
	.quad	0x3fe3807357e670e3              # double 0.60943000000000003
	.quad	0x40130e07e5a78f26              # double 4.7637020000000003
	.quad	0x4001eb26394face6              # double 2.2398189999999998
	.quad	0x40203e3da2f8bdec              # double 8.1215639999999993
	.quad	0x3ff977318fc50481              # double 1.5915999999999999
	.quad	0x401b2b47c73eee52              # double 6.7922659999999997
	.quad	0x400ba804102ff8ec              # double 3.457039
	.quad	0x402350327674d163              # double 9.6566349999999996
	.quad	0x4022c798958d9b5f              # double 9.3898360000000007
	.quad	0x400e7832fcac8e69              # double 3.808691
	.quad	0x4018e2ff8ec0f883              # double 6.2216779999999998
	.quad	0x401c482235b4edb3              # double 7.070443
	.quad	0x401ba60780fdc161              # double 6.9121379999999997
	.quad	0x4022ce616b54e2b0              # double 9.4030869999999993
	.quad	0x401a83f8db489093              # double 6.6288790000000004
	.quad	0x40132edc7ef177a7              # double 4.795763
	.quad	0x3ff83f65dbfceb79              # double 1.5154780000000001
	.quad	0x401e13cafb3b7521              # double 7.5193289999999999
	.quad	0x401f45714b9cb685              # double 7.8178150000000004
	.quad	0x401aeb5fe542e558              # double 6.7298580000000001
	.quad	0x40227e9d7342edbb              # double 9.2472949999999994
	.quad	0x40058d013a92a305              # double 2.6938499999999999
	.quad	0x40064aa5c5f7c676              # double 2.7864490000000002
	.quad	0x40186f4f50a02b84              # double 6.1087009999999999
	.quad	0x4018edda48b65237              # double 6.232278
	.quad	0x40212c0181e03f70              # double 8.5859489999999994
	.quad	0x4019dc105186db51              # double 6.464906
	.quad	0x4019b620ab713272              # double 6.4278589999999998
	.quad	0x4014e3293d102bc7              # double 5.2218369999999998
	.quad	0x3ff5547cfa26a22b              # double 1.333127
	.quad	0x3fe913c89f40a287              # double 0.78366499999999994
	.quad	0x3fb1802c0a4a05de              # double 0.068362000000000006
	.quad	0x3ff082c7fbacb429              # double 1.0319290000000001
	.quad	0x4003374ff865d7cb              # double 2.4020079999999999
	.quad	0x40134e3eaf6837f8              # double 4.8264110000000002
	.quad	0x3fffef112fd32c62              # double 1.9958659999999999
	.quad	0x40130326e115592e              # double 4.7530780000000004
	.quad	0x400f3c1bda5119ce              # double 3.90435
	.quad	0x4016d05e1c15097d              # double 5.7034840000000004
	.quad	0x400e846c764adff8              # double 3.8146599999999999
	.quad	0x4023a511be6e6538              # double 9.8224009999999992
	.quad	0x40209cd423d9231c              # double 8.3063059999999993
	.quad	0x400a41754b05b7d0              # double 3.281962
	.quad	0x3ff637121ab4b72c              # double 1.3884449999999999
	.quad	0x4022d804fb1183b6              # double 9.421913
	.quad	0x401acb03e20ccff2              # double 6.6982569999999999
	.quad	0x3ffb2339c0ebedfa              # double 1.6960999999999999
	.quad	0x401c6755bccaf70a              # double 7.1009130000000003
	.quad	0x40173264e48626f6              # double 5.799213
	.quad	0x4013454da4ce8102              # double 4.817679
	.quad	0x402050051c9f72f7              # double 8.1562889999999992
	.quad	0x4020bb4d056c508b              # double 8.3658219999999996
	.quad	0x40131141205bc01a              # double 4.7668499999999998
	.quad	0x3fda6909aed56b01              # double 0.412661
	.quad	0x4023220e410b630b              # double 9.5665150000000007
	.quad	0x40236f0dc768dfbd              # double 9.7169019999999992
	.quad	0x40142bf444e0daa1              # double 5.0429240000000002
	.quad	0x401f69d99029ae4f              # double 7.8533689999999998
	.quad	0x401e176b7ed41b76              # double 7.5228710000000003
	.quad	0x4009793682730c67              # double 3.184186
	.quad	0x40222d4477ff151e              # double 9.0884129999999992
	.quad	0x4021247d5ed06fef              # double 8.5712689999999991
	.quad	0x3ff7bf3061c79b35              # double 1.4841770000000001
	.quad	0x4016fa7a85015c21              # double 5.7446080000000004
	.quad	0x4022bad1287c200c              # double 9.3648769999999998
	.quad	0x401b182cf52b90a8              # double 6.7736090000000004
	.quad	0x40101ca643cc07ab              # double 4.0279780000000001
	.quad	0x401789274e22a2c2              # double 5.8839389999999998
	.quad	0x401f8ac9afe1da7b              # double 7.8855349999999999
	.quad	0x40067523b3636f3b              # double 2.8071969999999999
	.quad	0x4020585a2d72ffd2              # double 8.1725630000000002
	.quad	0x3ff84826aa8eb463              # double 1.5176149999999999
	.quad	0x400d4d549731098d              # double 3.6627589999999999
	.quad	0x40015ed9dfdac68b              # double 2.1713140000000002
	.quad	0x4017ac5931ca7d67              # double 5.9183089999999998
	.quad	0x3fdba7ef9db22d0e              # double 0.43212499999999998
	.quad	0x40109bc664d3bf2f              # double 4.1521239999999997
	.quad	0x401e11c219eb6391              # double 7.5173420000000001
	.quad	0x401d38b652370479              # double 7.305383
	.quad	0x4011691cd1c7de51              # double 4.3526490000000004
	.quad	0x401ee1c0010c6f7a              # double 7.720459
	.quad	0x401c4a93af74cd31              # double 7.0728289999999996
	.quad	0x40111292c4934268              # double 4.2681380000000004
	.quad	0x401ce495e17e34b9              # double 7.2232279999999998
	.quad	0x401fd87bdcf0307f              # double 7.9614099999999998
	.quad	0x4016cac5c13fd0d0              # double 5.6980199999999996
	.quad	0x40187158750c1b97              # double 6.1106889999999998
	.quad	0x40157ac6045baf53              # double 5.3698959999999998
	.quad	0x40201f177a7008a7              # double 8.0607260000000007
	.quad	0x4019b93ea2d2fe3f              # double 6.4309029999999998
	.quad	0x4012605af6c69b5a              # double 4.5940969999999997
	.quad	0x400dc073de1e2de8              # double 3.7189709999999998
	.quad	0x4022fdd63886594b              # double 9.495775
	.quad	0x401455119ce075f7              # double 5.083075
	.quad	0x4012c4c09c3ce209              # double 4.6921410000000003
	.quad	0x401cfb7564302b41              # double 7.245565
	.quad	0x3fc37110e453d20f              # double 0.151888
	.quad	0x401fad44998d0460              # double 7.9192070000000001
	.quad	0x3fed26dce39b456b              # double 0.91099399999999997
	.quad	0x4016692f2b66b617              # double 5.6027189999999996
	.quad	0x401ead6c2efd438d              # double 7.6693579999999998
	.quad	0x4008d3879c4113c7              # double 3.1032860000000002
	.quad	0x4016e40852b4d8ba              # double 5.7226879999999998
	.quad	0x4020a4c8366516db              # double 8.3218399999999999
	.quad	0x40125d81adea8976              # double 4.5913149999999998
	.quad	0x4011b4bf0995aaf8              # double 4.4265100000000004
	.quad	0x3ff5424c404a72eb              # double 1.328686
	.quad	0x4016ece0b912dba5              # double 5.7313260000000001
	.quad	0x3feb745bf26f1dc5              # double 0.85795399999999999
	.quad	0x40046ee9dd7ecbb8              # double 2.554157
	.quad	0x3fda3a0c6b484d77              # double 0.40979300000000002
	.quad	0x401dca7503b81b65              # double 7.4477120000000001
	.quad	0x3ff61081c2e33eff              # double 1.37903
	.quad	0x3fe93fa6defc7a3a              # double 0.78902000000000005
	.quad	0x400ccfd976ff3ade              # double 3.6014889999999999
	.quad	0x4023fdda48b65237              # double 9.9958059999999999
	.quad	0x4021159dba908a26              # double 8.5422189999999993
	.quad	0x4002d8800eae18ad              # double 2.3557130000000002
	.quad	0x401b1b81f969e3c9              # double 6.7768629999999996
	.quad	0x401ac08919ef954f              # double 6.6880230000000003
	.quad	0x401a588db0574b40              # double 6.5864779999999996
	.quad	0x400095b6805a2d73              # double 2.073102
	.quad	0x4022cbd5347a5b10              # double 9.3981110000000001
	.quad	0x40057b4c3c18b503              # double 2.6852040000000001
	.quad	0x40223fd2630ec311              # double 9.1246519999999993
	.quad	0x4023015ce9e5e248              # double 9.5026620000000008
	.quad	0x40135adab9f559b4              # double 4.8387250000000002
	.quad	0x4021e6e8af81626b              # double 8.9509939999999997
	.quad	0x401ed702a3486f05              # double 7.7099710000000003
	.quad	0x4023d167caea747e              # double 9.9089950000000009
	.quad	0x3fd959b3d07c84b6              # double 0.39610000000000001
	.quad	0x401bb901d19157ac              # double 6.9306710000000002
	.quad	0x401bdb10ba6266fd              # double 6.9639309999999996
	.quad	0x4016dcc964628028              # double 5.7156120000000001
	.quad	0x401b92ed352220bc              # double 6.8934829999999998
	.quad	0x40061f162ae4b018              # double 2.7651789999999998
	.quad	0x401df374ff865d7d              # double 7.4877510000000002
	.quad	0x401ac3cbc48f10aa              # double 6.6912070000000003
	.quad	0x400bad9dfdac68a9              # double 3.4597739999999999
	.quad	0x4008949731098d47              # double 3.0725539999999998
	.quad	0x400d19220ff54089              # double 3.6372719999999998
	.quad	0x4012dc3b4f616723              # double 4.7150699999999999
	.quad	0x3ff5c2784a9478c8              # double 1.3599779999999999
	.quad	0x3ff32aa4b9884c6a              # double 1.1979109999999999
	.quad	0x400706612839042e              # double 2.8781150000000002
	.quad	0x401c7f1e4b44a1f1              # double 7.1241390000000004
	.quad	0x4014cf71a7e30878              # double 5.2025819999999996
	.quad	0x400f8a80064a9cdc              # double 3.9426269999999999
	.quad	0x4018565881a15550              # double 6.0843220000000002
	.quad	0x4023fc3137b07076              # double 9.9925630000000005
	.quad	0x401577cf1c3265ae              # double 5.3670010000000001
	.quad	0x4022c31c64ba94bc              # double 9.3810760000000001
	.quad	0x4012ed8ba40d90e2              # double 4.7319779999999998
	.quad	0x402254acaff6d331              # double 9.1653800000000007
	.quad	0x4017fcb6c7a7c9de              # double 5.996791
	.quad	0x40177da1a93293d1              # double 5.872687
	.quad	0x3fed19392189bd84              # double 0.90932900000000005
	.quad	0x40210bead4f5903a              # double 8.5232759999999992
	.quad	0x4015c13ad5bee3d6              # double 5.438701
	.quad	0x3fe8e2ed352220bc              # double 0.77770099999999997
	.quad	0x3fba774eebf65dc0              # double 0.103383
	.quad	0x401ea3269df97aab              # double 7.6593270000000002
	.quad	0x4023fa43137b0707              # double 9.9887929999999993
	.quad	0x401236dc1a47a9e3              # double 4.5535740000000002
	.quad	0x3ffe6ee525892685              # double 1.902074
	.quad	0x4023ab6d655e28aa              # double 9.8348189999999995
	.quad	0x4021f32a27f1b691              # double 8.9749309999999998
	.quad	0x4023c87db2b34613              # double 9.8915839999999999
	.quad	0x401abff9b56323bc              # double 6.6874760000000002
	.quad	0x4017f48a9bcfd4bf              # double 5.98881
	.quad	0x40146d573647baaa              # double 5.1067780000000003
	.quad	0x4014263065f9591d              # double 5.0372940000000002
	.quad	0x4020e1465e892253              # double 8.4399899999999999
	.quad	0x4011cc79f666234b              # double 4.4496840000000004
	.quad	0x400fbb8023a6ce36              # double 3.9665530000000002
	.quad	0x402363d8be7296f6              # double 9.6950129999999994
	.quad	0x40104f2239e6ab9b              # double 4.0772789999999999
	.quad	0x401022c9d16fc9bc              # double 4.0339729999999996
	.quad	0x3ffb944cbe1eb420              # double 1.723706
	.quad	0x401bd34fc610f0e9              # double 6.956359
	.quad	0x4023f20d349be8ff              # double 9.9727569999999996
	.quad	0x400915935fc3b4f6              # double 3.135535
	.quad	0x4021b1ef5232d2bb              # double 8.8475289999999998
	.quad	0x4021893a2df9378f              # double 8.7680220000000002
	.quad	0x401e73fee2c98e54              # double 7.6132770000000001
	.quad	0x4023319ef954eb14              # double 9.5969160000000002
	.quad	0x401ad6edaa92e621              # double 6.7098909999999998
	.quad	0x3ff2bc0a06e9ff0d              # double 1.1709080000000001
	.quad	0x3fec58e64b231401              # double 0.88585199999999997
	.quad	0x3fd1b906466b1e5c              # double 0.276918
	.quad	0x3ffe8beb5b2d4d40              # double 1.90916
	.quad	0x40100d627bf61aa4              # double 4.0130710000000001
	.quad	0x4022d900a393ee5f              # double 9.4238330000000001
	.quad	0x4004c471b4784231              # double 2.59592
	.quad	0x3fb01e4712e40853              # double 0.062962000000000004
	.quad	0x402070e779207d4e              # double 8.2205159999999999
	.quad	0x3ff904ee7c49fd7a              # double 1.563704
	.quad	0x40131e685db76b3c              # double 4.7796950000000002
	.quad	0x3fe0396af038e2a0              # double 0.50700900000000004
	.quad	0x3fc8aed1394317ad              # double 0.19283500000000001
	.quad	0x3fce95182a9930be              # double 0.238925
	.quad	0x40217dfa00e27e0f              # double 8.746048
	.quad	0x401d7fce3150dae4              # double 7.3748100000000001
	.quad	0x4016d9e0e736049f              # double 5.7127720000000002
	.quad	0x4020c0ab2e1693c0              # double 8.3763059999999996
	.quad	0x401800d173fb7a5f              # double 6.0007989999999998
	.quad	0x3fc3778dd616f86a              # double 0.152086
	.quad	0x401c5fcd67fd3f5b              # double 7.0935569999999997
	.quad	0x3ff4ddeacc92146a              # double 1.304179
	.quad	0x4005073471f79421              # double 2.6285180000000001
	.quad	0x4013d56084a515cf              # double 4.9583760000000003
	.quad	0x4000aa65492ff4ba              # double 2.0832009999999999
	.quad	0x4017389118c197e5              # double 5.8052409999999997
	.quad	0x4022245154866a12              # double 9.0709330000000001
	.quad	0x4004d1d92b7fe08b              # double 2.602465
	.quad	0x3fea1d755bccaf71              # double 0.81609600000000004
	.quad	0x40177906466b1e5c              # double 5.868188
	.quad	0x3ffe6cd39da16617              # double 1.9015690000000001
	.quad	0x3ff2bf9e7b80a9df              # double 1.1717820000000001
	.quad	0x40224a9670196d8f              # double 9.1456789999999994
	.quad	0x4003e7d566cf41f2              # double 2.4882
	.quad	0x4004c6a444178705              # double 2.5969929999999999
	.quad	0x4019f38476f2a5a4              # double 6.4878099999999996
	.quad	0x401ca7e889c1b542              # double 7.1639730000000004
	.quad	0x40151e4473cd5736              # double 5.2795579999999998
	.quad	0x40168ba6698bb4d5              # double 5.6363770000000004
	.quad	0x401723cf70153bd1              # double 5.7849709999999996
	.quad	0x402362f33ca31e7e              # double 9.6932620000000007
	.quad	0x400d803d57796399              # double 3.6876169999999999
	.quad	0x401319c4113c6866              # double 4.7751619999999999
	.quad	0x4011572fba01eeee              # double 4.3351430000000004
	.quad	0x401c4c88a47ecfea              # double 7.0747400000000003
	.quad	0x401a2548a9bcfd4c              # double 6.5364100000000001
	.quad	0x4014a3f3e0370cdd              # double 5.1601100000000004
	.quad	0x400c7b7e90ff9724              # double 3.5602999999999998
	.quad	0x401a146ed245b292              # double 6.5199540000000002
	.quad	0x4021406f47b677f7              # double 8.6258490000000005
	.quad	0x401a8dea465a5764              # double 6.6385889999999996
	.quad	0x3fe2e6ff7dfa00e2              # double 0.59069799999999995
	.quad	0x4012d3f4a98aa865              # double 4.7069879999999999
	.quad	0x4011fb990afe60c4              # double 4.4957010000000004
	.quad	0x4021ff98d8a979e1              # double 8.9992129999999992
	.quad	0x401973efae7924af              # double 6.363219
	.quad	0x3fdce28ed5f138bd              # double 0.45132800000000001
	.quad	0x4022fd98bf7f0670              # double 9.4953059999999994
	.quad	0x4005f461b6d43d04              # double 2.7443270000000002
	.quad	0x401c6008205ff1d8              # double 7.0937809999999999
	.quad	0x3fe797c80841ede1              # double 0.73727799999999999
	.quad	0x4001a0af1cb89d6b              # double 2.2034590000000001
	.quad	0x40173d99cbee807c              # double 5.8101570000000002
	.quad	0x401066bd6e8af816              # double 4.1003319999999999
	.quad	0x400553804534bd77              # double 2.665772
	.quad	0x3fddc08fa7a85016              # double 0.46487800000000001
	.quad	0x402226fb2aae2974              # double 9.0761350000000007
	.quad	0x400d28cf7caa758a              # double 3.644927
	.quad	0x401b93482be8bc17              # double 6.8938300000000003
	.quad	0x401dab43d89ce4a8              # double 7.4172510000000002
	.quad	0x401cbe76c8b43958              # double 7.1859999999999999
	.quad	0x4003823c85c24c40              # double 2.4385919999999999
	.quad	0x4023ca0fb224aada              # double 9.8946509999999996
	.quad	0x402025069a4df480              # double 8.0723160000000007
	.quad	0x4023f48711d798d9              # double 9.9775930000000006
	.quad	0x400e9d790752da98              # double 3.8268909999999998
	.quad	0x402335d249e44fa0              # double 9.6051199999999994
	.quad	0x4022c36bd2b6f199              # double 9.3816819999999996
	.quad	0x401c8d4f5903a754              # double 7.1379979999999996
	.quad	0x401f8a0cf1800a7c              # double 7.8848149999999997
	.quad	0x3fa9a9da597d49d8              # double 0.050124000000000002
	.quad	0x401d0f0f9d2bf551              # double 7.2647079999999997
	.quad	0x3fd106fef7c243dd              # double 0.26605200000000001
	.quad	0x40011bd8be7296f6              # double 2.1385969999999999
	.quad	0x40232176ff3ade22              # double 9.5653609999999993
	.quad	0x401d3b317efe0ce1              # double 7.3078060000000002
	.quad	0x402150fc2eba27af              # double 8.6581740000000007
	.quad	0x4022b145b6c3760c              # double 9.346235
	.quad	0x401704c55432873c              # double 5.7546590000000002
	.quad	0x3ff522af5771001d              # double 1.3209679999999999
	.quad	0x4019731d2e0e3044              # double 6.3624159999999996
	.quad	0x40235e87b139c94f              # double 9.6846289999999992
	.quad	0x3ffd509e12a51e32              # double 1.832182
	.quad	0x4020bd76ab5807ff              # double 8.3700460000000003
	.quad	0x3ffed8904f6dfc5d              # double 1.927872
	.quad	0x401dd36ac647778e              # double 7.4564620000000001
	.quad	0x4017be1c58255b03              # double 5.9356549999999997
	.quad	0x4022d1fd7a13c255              # double 9.4101370000000006
	.quad	0x400339e59f2ba9d2              # double 2.40327
	.quad	0x400576d5cfaacd9f              # double 2.6830250000000002
	.quad	0x4015f9b068123811              # double 5.4938370000000001
	.quad	0x3ff4736cdf266ba5              # double 1.2781800000000001
	.quad	0x3ff87c4199fe4367              # double 1.5303359999999999
	.quad	0x400fde1c9b413986              # double 3.9834529999999999
	.quad	0x4021c701b866e43b              # double 8.8886850000000006
	.quad	0x40076f50a02b8412              # double 2.9293529999999999
	.quad	0x4006595e5aff2a17              # double 2.7936369999999999
	.quad	0x400cffc5cdd50a89              # double 3.624889
	.quad	0x4000ca7ded6ba8c6              # double 2.0988730000000002
	.quad	0x4019d0307f23cc8e              # double 6.4533100000000001
	.quad	0x40018d0a24463066              # double 2.193867
	.quad	0x401717bdcf0307f2              # double 5.7731849999999998
	.quad	0x401f9cd63cb81733              # double 7.9031609999999998
	.quad	0x4016e7f737da61e1              # double 5.7265290000000002
	.quad	0x3ff745caafbc1ace              # double 1.454539
	.quad	0x3fc324399b2c40d1              # double 0.14954300000000001
	.quad	0x3ff20cb8e086bdf5              # double 1.1281060000000001
	.quad	0x3fbddf548ecd8dbd              # double 0.116689
	.quad	0x4021a61847f56217              # double 8.8244039999999995
	.quad	0x4010f9435ac8a372              # double 4.2434209999999997
	.quad	0x4015ef5f4e4430b1              # double 5.4837619999999996
	.quad	0x40219eac215b9a5b              # double 8.8099070000000008
	.quad	0x4020c0e10cf5b1c8              # double 8.3767169999999993
	.quad	0x3ff0621ea35935fc              # double 1.0239549999999999
	.quad	0x40228f3ade225fa6              # double 9.2797459999999994
	.quad	0x40212d94af4f0d84              # double 8.5890249999999994
	.quad	0x4023b33269df97ab              # double 9.8499940000000005
	.quad	0x401b5bec679cc74c              # double 6.8397690000000004
	.quad	0x4023853f7ced9168              # double 9.7602499999999992
	.quad	0x401324107314ca92              # double 4.7852189999999997
	.quad	0x401ce30984e3ffef              # double 7.2217159999999998
	.quad	0x3fd55f4a1272c94b              # double 0.33394099999999999
	.quad	0x3fed5028a1dfb939              # double 0.91603500000000004
	.quad	0x401ae310129cbab6              # double 6.7217409999999997
	.quad	0x4022c7e23f24d8fd              # double 9.3903979999999993
	.quad	0x4012703148776816              # double 4.6095629999999996
	.quad	0x400fdbadc0980b24              # double 3.9822649999999999
	.quad	0x402182a9f7b5aea3              # double 8.7552029999999998
	.quad	0x4022709c3ce2089e              # double 9.2199419999999996
	.quad	0x40227094812be48a              # double 9.2198829999999994
	.quad	0x4020fde785b5b707              # double 8.4959070000000008
	.quad	0x40208f1ed17c5ef6              # double 8.2795319999999997
	.quad	0x4022388d4bad7d7c              # double 9.1104529999999996
	.quad	0x3ffd5b445ed4a1ad              # double 1.8347819999999999
	.quad	0x40210947ae147ae1              # double 8.5181249999999995
	.quad	0x400b3ac57e23f24e              # double 3.4036970000000002
	.quad	0x40217222f6a50d6b              # double 8.7229229999999998
	.quad	0x402018f53c579f23              # double 8.0487459999999995
	.quad	0x401d065d7cb2d906              # double 7.2562160000000002
	.quad	0x4019aa24cc6822ff              # double 6.416156
	.quad	0x40176c1ce6c093d9              # double 5.8555789999999996
	.quad	0x4019c6d15ad106ee              # double 6.4441579999999998
	.quad	0x400b033b5393250b              # double 3.3765779999999999
	.quad	0x3ff1496030c23fab              # double 1.080414
	.quad	0x4011d31098d477bc              # double 4.456118
	.quad	0x401db2dbe7f2c301              # double 7.4246670000000003
	.quad	0x4015d2c2bd7f51f0              # double 5.4558210000000003
	.quad	0x401f73fa2ad3e921              # double 7.8632590000000002
	.quad	0x40146bc6a7ef9db2              # double 5.1052499999999998
	.quad	0x4016ddb940fecdd1              # double 5.7165270000000001
	.quad	0x40226f17df19d66b              # double 9.2169790000000003
	.quad	0x401c891819d2391d              # double 7.1338809999999997
	.quad	0x401b3bb3c81908e6              # double 6.8083030000000004
	.quad	0x4021ede6ddf00abf              # double 8.9646519999999992
	.quad	0x4003cd12018a43bb              # double 2.4751319999999999
	.quad	0x40196a4484944ed7              # double 6.353777
	.quad	0x3ff0337542a23c00              # double 1.0125630000000001
	.quad	0x4014296bfca85cab              # double 5.040451
	.quad	0x40146640a6b93ccd              # double 5.0998559999999999
	.quad	0x4021c257214f0521              # double 8.8795710000000003
	.quad	0x4017e79702e6644e              # double 5.9761620000000004
	.quad	0x3f7802c0a4a05dd9              # double 0.005862
	.quad	0x3fed98f81e8a2ec3              # double 0.92492300000000005
	.quad	0x3fe49e9af5ba2be0              # double 0.64436099999999996
	.quad	0x400603a5c1c6088d              # double 2.7517809999999998
	.quad	0x4021635fc3b4f616              # double 8.6940899999999992
	.quad	0x400628438088509c              # double 2.76966
	.quad	0x40192e4a7b4e54f8              # double 6.2952060000000003
	.quad	0x401c4887a8d64d7f              # double 7.0708299999999999
	.quad	0x401246049ecb31c2              # double 4.5683769999999999
	.quad	0x4013d99b6f5caf2d              # double 4.9625069999999996
	.quad	0x40087b14a90470a8              # double 3.060098
	.quad	0x4006c5d206c8711d              # double 2.8465919999999998
	.quad	0x401b6ccff21b3aef              # double 6.8562620000000001
	.quad	0x3ffb071e6cd29132              # double 1.689238
	.quad	0x3ff10e496ededaec              # double 1.0659879999999999
	.quad	0x4014127ed84d338f              # double 5.0180619999999996
	.quad	0x4000d8c75c4a83b2              # double 2.1058490000000001
	.quad	0x4022643d46b26bf8              # double 9.1957799999999991
	.quad	0x3ffed2bc2fc69729              # double 1.9264490000000001
	.quad	0x400275c5b4aa9718              # double 2.3075060000000001
	.quad	0x4012bee675147f13              # double 4.686426
	.quad	0x4016e406c00da1a9              # double 5.7226819999999998
	.quad	0x3ff08528283d35eb              # double 1.0325089999999999
	.quad	0x4023d32e7b3d8e00              # double 9.9124639999999999
	.quad	0x4019efa7221858bc              # double 6.4840359999999997
	.quad	0x4011a0752da98677              # double 4.4066970000000003
	.quad	0x4016f51f81a5870e              # double 5.7393780000000003
	.quad	0x4007554eb13dfb0d              # double 2.9166539999999999
	.quad	0x3fe6d640e9d51b50              # double 0.71365400000000001
	.quad	0x401b55cb790fb656              # double 6.8337839999999996
	.quad	0x401d0884406c00da              # double 7.2583169999999999
	.quad	0x400b6ac42e9899bf              # double 3.4271319999999998
	.quad	0x3ffe4d0cc35ce182              # double 1.8938109999999999
	.quad	0x4000c5d18090b418              # double 2.0965910000000001
	.quad	0x4022c360ae9680e0              # double 9.3815969999999993
	.quad	0x4018b831ad2135db              # double 6.1798770000000003
	.quad	0x3f904fb1183b6028              # double 0.015928999999999999
	.quad	0x4017931055b89939              # double 5.8936169999999999
	.quad	0x401bd8d002e23290              # double 6.9617310000000003
	.quad	0x401aef633ce63a5c              # double 6.7337769999999999
	.quad	0x40069dfc9ff92f2b              # double 2.8271419999999998
	.quad	0x40222ddd095af295              # double 9.0895770000000002
	.quad	0x40072aceaaf35e31              # double 2.895902
	.quad	0x40224d931ca7d673              # double 9.1515129999999996
	.quad	0x401089ea14057082              # double 4.1346819999999997
	.quad	0x4014aeeb2d0a2446              # double 5.1708189999999998
	.quad	0x4022c34e54f7a919              # double 9.3814569999999992
	.quad	0x4013b01b43526528              # double 4.9219790000000003
	.quad	0x3fd1a4766c6de764              # double 0.27566299999999999
	.quad	0x3ff04f13cee9dd7f              # double 1.019306
	.quad	0x402303ba775fb2ee              # double 9.507282
	.quad	0x401e492c061847f5              # double 7.5714569999999996
	.quad	0x40215ccec41dd1a2              # double 8.6812649999999998
	.quad	0x40203f251c193b3a              # double 8.1233299999999993
	.quad	0x400998244e93e1ca              # double 3.1992880000000001
	.quad	0x401ec855da272863              # double 7.69564
	.quad	0x3fdc130df9bdc6a0              # double 0.43866300000000003
	.quad	0x3fe57fb267c6b8b7              # double 0.67183800000000005
	.quad	0x4019c3458cd20afa              # double 6.4406949999999998
	.quad	0x401954db59578a2b              # double 6.3328680000000004
	.quad	0x3ff076709fa54c55              # double 1.0289159999999999
	.quad	0x3ffac60780fdc161              # double 1.6733469999999999
	.quad	0x4020a21016ce789e              # double 8.3165289999999992
	.quad	0x3fd65af6c69b5a64              # double 0.349302
	.quad	0x4006f97c3d68405b              # double 2.8718189999999999
	.quad	0x401e386ad2dcb146              # double 7.5550949999999997
	.quad	0x3ff7fe2a3cea6c1a              # double 1.499552
	.quad	0x400f7e681a9b8cb9              # double 3.9367220000000001
	.quad	0x401ac75a74c09c3d              # double 6.6946810000000001
	.quad	0x401c84f69ca9ef52              # double 7.1298469999999998
	.quad	0x401397e56473471f              # double 4.8983359999999996
	.quad	0x402087b2edfe75bc              # double 8.2650369999999995
	.quad	0x3ff178c9752977c9              # double 1.0919890000000001
	.quad	0x3fd9deacc92146a2              # double 0.40421600000000002
	.quad	0x401f9e2435696e59              # double 7.9044350000000003
	.quad	0x4020e3f11f926c7f              # double 8.4451990000000006
	.quad	0x40017cef240fa9c1              # double 2.1860029999999999
	.quad	0x4019f2f1ed17c5ef              # double 6.4872509999999997
	.quad	0x401a7f5e84f09529              # double 6.6243840000000001
	.quad	0x4021f1b8aa00192a              # double 8.9721119999999992
	.quad	0x4016ee279dd3bafe              # double 5.7325730000000004
	.quad	0x401c155cd91eeaa7              # double 7.0208620000000002
	.quad	0x3febcea6c1a048e0              # double 0.86897599999999997
	.quad	0x401c383382e44b6f              # double 7.0548840000000004
	.quad	0x401c0ca42aed1394              # double 7.0123449999999998
	.quad	0x40232e1262025397              # double 9.5899839999999993
	.quad	0x3fe289289dadfb50              # double 0.57924299999999995
	.quad	0x4015d5b63d3e4ef0              # double 5.4587029999999999
	.quad	0x4019ad14e3bcd35b              # double 6.4190250000000004
	.quad	0x400cfd8622c45027              # double 3.6237910000000002
	.quad	0x401c6322f2734f83              # double 7.096813
	.quad	0x4003abdc26dce39b              # double 2.4589159999999999
	.quad	0x400631212513b5bf              # double 2.7739889999999998
	.quad	0x400e07304039abf3              # double 3.7535099999999999
	.quad	0x4005fd0635a426bb              # double 2.7485469999999999
	.quad	0x3ffae49a133c1ce7              # double 1.6808110000000001
	.quad	0x402177be76c8b439              # double 8.7338749999999994
	.quad	0x400cbe5c91d14e3c              # double 3.5929500000000001
	.quad	0x4020694d72799a20              # double 8.2056690000000003
	.quad	0x400c8db2f661f18d              # double 3.5691890000000002
	.quad	0x401fb8e2e2b8c75c              # double 7.9305529999999997
	.quad	0x4020bc7cfa26a22b              # double 8.3681409999999996
	.quad	0x40014b606b7aa25e              # double 2.1618050000000002
	.quad	0x401c8147ae147ae1              # double 7.1262499999999998
	.quad	0x40128ccdd93c46d8              # double 4.6375039999999998
	.quad	0x40031d00f776c482              # double 2.3891619999999998
	.quad	0x40119bedb7281fda              # double 4.4022740000000002
	.quad	0x4023c370691ea78b              # double 9.881717
	.quad	0x4006d8b8ae31d713              # double 2.8558210000000002
	.quad	0x3fd481f53825e13b              # double 0.32043199999999999
	.quad	0x401a399a1fd1569f              # double 6.5562519999999997
	.quad	0x4014754fbdad7519              # double 5.1145620000000003
	.quad	0x401716249a133c1d              # double 5.7716240000000001
	.quad	0x40225fdd00f776c5              # double 9.1872330000000009
	.quad	0x3ffc38bac710cb29              # double 1.7638499999999999
	.quad	0x40095f5515054ac3              # double 3.1715490000000002
	.quad	0x40181c8323358f2e              # double 6.027844
	.quad	0x40101536933a0408              # double 4.0207160000000002
	.quad	0x401decd39da16617              # double 7.4812760000000003
	.quad	0x401c65aff2a172ac              # double 7.0993040000000001
	.quad	0x4010e507e9d94d0e              # double 4.2236630000000002
	.quad	0x401f45e5f30e7ff6              # double 7.8182600000000004
	.quad	0x40180700474d9c6b              # double 6.006837
	.quad	0x4021b28112ba16e8              # double 8.8486410000000006
	.quad	0x3ff1a3033a4723ab              # double 1.102298
	.quad	0x3ffa8d0cc35ce182              # double 1.6594359999999999
	.quad	0x401783dff3f0fe04              # double 5.8787839999999996
	.quad	0x4016e573215fcc18              # double 5.7240719999999996
	.quad	0x40124649906cca2e              # double 4.5686400000000003
	.quad	0x400ad72799a1fd15              # double 3.3550559999999998
	.quad	0x3fffce9a2c669058              # double 1.98794
	.quad	0x3ffe17204295a6c6              # double 1.880646
	.quad	0x4021e24723aafff3              # double 8.9419489999999993
	.quad	0x402012513b5bf6a1              # double 8.0357760000000003
	.quad	0x4011b7136a400fbb              # double 4.4287850000000004
	.quad	0x401a3ed0b30b5aa7              # double 6.5613429999999999
	.quad	0x3fed6faa4766c6de              # double 0.91988099999999995
	.quad	0x4018cf2becedd484              # double 6.2023159999999997
	.quad	0x402255b1422ccb3a              # double 9.1673679999999997
	.quad	0x401e28a2ec28b2a7              # double 7.5396840000000002
	.quad	0x3ff36df505d0fa59              # double 1.214345
	.quad	0x4009863e07a28bb1              # double 3.1905480000000002
	.quad	0x3ffe3d6f97679032              # double 1.889999
	.quad	0x4023ef0c564f97ee              # double 9.9668910000000004
	.quad	0x3fdeb3e1437c5693              # double 0.47972900000000002
	.quad	0x3fedd1dabe27179c              # double 0.931867
	.quad	0x40223437c5692b3d              # double 9.1019880000000004
	.quad	0x40211502cd39da16              # double 8.5410369999999993
	.quad	0x400f8f0068db8bac              # double 3.9448249999999998
	.quad	0x4020e55cd91eeaa7              # double 8.4479740000000003
	.quad	0x400b5816aceaaf36              # double 3.4180120000000001
	.quad	0x4016fa6b0d9513f9              # double 5.7445490000000001
	.quad	0x401cc1e5c0b99913              # double 7.1893529999999997
	.quad	0x3fef9a4df47f993d              # double 0.98758599999999996
	.quad	0x4012c24b76f6d762              # double 4.6897409999999997
	.quad	0x400ec65a57646ae4              # double 3.8468520000000002
	.quad	0x4021f855970b49e0              # double 8.9850279999999998
	.quad	0x3fe1909d0635a427              # double 0.54890300000000003
	.quad	0x401d43f4666ec9e2              # double 7.3163619999999998
	.quad	0x402161e060fe4799              # double 8.6911649999999998
	.quad	0x4021ed89acbc8c0d              # double 8.9639410000000002
	.quad	0x401d37681669ced1              # double 7.3041080000000003
	.quad	0x40220dfa658c4bd3              # double 9.0273009999999996
	.quad	0x4023c2d27807789a              # double 9.8805119999999995
	.quad	0x401b7eeaa6d26741              # double 6.8739420000000004
	.quad	0x4003f562174c4ce0              # double 2.4948160000000001
	.quad	0x3ff97b8e4b87bdcf              # double 1.592665
	.quad	0x4000757e670e2c13              # double 2.0573700000000001
	.quad	0x4016badf71eafee7              # double 5.682493
	.quad	0x40140789e774eebf              # double 5.0073619999999996
	.quad	0x400fa1a8ac5c13fd              # double 3.953935
	.quad	0x4013dc896dd26b72              # double 4.9653679999999998
	.quad	0x402144286f8ad256              # double 8.6331209999999992
	.quad	0x40034b7d41743e96              # double 2.4118599999999999
	.quad	0x3fe8272c94b380cb              # double 0.75478199999999995
	.quad	0x4015bd5171e29b6b              # double 5.4348809999999999
	.quad	0x3fe5cd6e47dc37a4              # double 0.68132700000000002
	.quad	0x401cd344806290ef              # double 7.2063160000000002
	.quad	0x400b905a708ede55              # double 3.4454850000000001
	.quad	0x4023ee111276fb09              # double 9.9649739999999997
	.quad	0x40174d5d3dc8b86b              # double 5.8255509999999999
	.quad	0x4014732db1e9f278              # double 5.1124790000000004
	.quad	0x400204c942d490e6              # double 2.2523369999999998
	.quad	0x4001003d57796399              # double 2.1251169999999999
	.quad	0x400549afe1da7b0b              # double 2.6609799999999999
	.quad	0x40236bdbe3c10518              # double 9.7106619999999992
	.quad	0x4017febbfd71b047              # double 5.9987640000000004
	.quad	0x4012b54823854046              # double 4.6770329999999998
	.quad	0x4017f0e0eb67c287              # double 5.985233
	.quad	0x40235ae9680e0653              # double 9.6775619999999999
	.quad	0x40177369b9d7fd82              # double 5.8627079999999996
	.quad	0x4012f6fe2e6ea854              # double 4.7412039999999998
	.quad	0x4021a306e5cd4ed3              # double 8.8184120000000004
	.quad	0x4023f1e2bcf91a33              # double 9.9724330000000005
	.quad	0x401027e06961c369              # double 4.0389419999999996
	.quad	0x400faf39085f4a12              # double 3.9605579999999998
	.quad	0x400edef1fddebd90              # double 3.85886
	.quad	0x3fe5ea76965f5276              # double 0.68487100000000001
	.quad	0x40192d556084a516              # double 6.2942710000000002
	.quad	0x4011d4d5d80e496f              # double 4.4578470000000001
	.quad	0x401eaf8b588e368f              # double 7.6714299999999999
	.quad	0x4022c1d5e4a38327              # double 9.3785849999999992
	.quad	0x401546256366d7a5              # double 5.3185019999999996
	.quad	0x401beb50f40e5a36              # double 6.9798010000000001
	.quad	0x3fa27807789a4591              # double 0.036072
	.quad	0x3ff91f1172ef0ae5              # double 1.570085
	.quad	0x3fe8624febd09e13              # double 0.76200100000000004
	.quad	0x400fb3ac4f7ec354              # double 3.9627309999999998
	.quad	0x3ffc2f1886df82b2              # double 1.761498
	.quad	0x400efcd573647bab              # double 3.8734540000000002
	.quad	0x3fe4264a16a48733              # double 0.62967399999999996
	.quad	0x401981fd9ba1b196              # double 6.3769439999999999
	.quad	0x4022aa311e85fd05              # double 9.3324060000000006
	.quad	0x3fff15cfaacd9e84              # double 1.942825
	.quad	0x4023f0ae74f2f124              # double 9.9700810000000004
	.quad	0x4022d5a3e39f7729              # double 9.4172659999999996
	.quad	0x4013359791819d24              # double 4.8023360000000004
	.quad	0x4021efe82517e77d              # double 8.9685679999999994
	.quad	0x400c7897204295a7              # double 3.5588820000000001
	.quad	0x40169ac6045baf53              # double 5.6511459999999998
	.quad	0x4022fc26351deefe              # double 9.4924789999999994
	.quad	0x400bbcb252ce032e              # double 3.4671370000000001
	.quad	0x4019f68e820e6299              # double 6.4907779999999997
	.quad	0x40178296f6512a95              # double 5.877529
	.quad	0x401f340895d0b73d              # double 7.8008139999999999
	.quad	0x401d1886df82b1f7              # double 7.2739520000000004
	.quad	0x3fefd5f78359bc34              # double 0.994869
	.quad	0x4019177ee4e26d48              # double 6.272945
	.quad	0x3fe4c38b04ab606b              # double 0.64886999999999995
	.quad	0x40222dcd2d44dca9              # double 9.0894560000000002
	.quad	0x4020ec35efa615a9              # double 8.4613490000000002
	.quad	0x402392500d5e8d54              # double 9.7857669999999998
	.quad	0x401cb44bf4cb1898              # double 7.1760710000000003
	.quad	0x3ffc7606b7aa25d9              # double 1.778815
	.quad	0x401015a5fc7e6b40              # double 4.0211410000000001
	.quad	0x401521feeb2d0a24              # double 5.2831989999999998
	.quad	0x4013afce746cb967              # double 4.9216860000000002
	.quad	0x40009219220ff541              # double 2.0713370000000002
	.quad	0x401c3af89c5e6ff8              # double 7.0575890000000001
	.quad	0x40205353d640e9d5              # double 8.1627489999999998
	.quad	0x402149085f4a1273              # double 8.6426420000000004
	.quad	0x4023338dc55000c9              # double 9.6006909999999994
	.quad	0x4020cdc7ef177a70              # double 8.4019159999999999
	.quad	0x4020c0a7c5ac471b              # double 8.3762799999999995
	.quad	0x3fdbc77dd872f33d              # double 0.43405100000000002
	.quad	0x401a9ed5f138bce0              # double 6.6551130000000001
	.quad	0x3ff653fe1975f2cb              # double 1.3955059999999999
	.quad	0x401843361565c2d2              # double 6.0656359999999996
	.quad	0x401d9ecbb7f9d6f1              # double 7.4050739999999999
	.quad	0x3ff03d912556d19e              # double 1.015031
	.quad	0x40098998d045fe11              # double 3.192186
	.quad	0x4022c87b99d451fc              # double 9.3915679999999994
	.quad	0x3ffb31b36bd2b6f2              # double 1.6996340000000001
	.quad	0x401364573a797892              # double 4.8479890000000001
	.quad	0x4017b6106ab14ec2              # double 5.927797
	.quad	0x4015965668c26139              # double 5.396814
	.quad	0x4014410624dd2f1b              # double 5.0635000000000003
	.quad	0x4023aa7610279570              # double 9.8329319999999996
	.quad	0x4018ffea3df6db94              # double 6.2499169999999999
	.quad	0x401cc9e8c47a17f4              # double 7.1971769999999999
	.quad	0x401786c6583e8577              # double 5.8816160000000002
	.quad	0x3ff3784662bae03b              # double 1.2168639999999999
	.quad	0x400f49d5a187a4a5              # double 3.9110520000000002
	.quad	0x4019087fcb923a2a              # double 6.2583000000000002
	.quad	0x4013a62c77574f72              # double 4.9122789999999998
	.quad	0x400272d87f88765c              # double 2.3060770000000002
	.quad	0x4021bf7b9e060fe4              # double 8.8739899999999991
	.quad	0x40107dd26b723ee2              # double 4.1228730000000002
	.quad	0x401813d74d594f27              # double 6.0193760000000003
	.quad	0x3ff02b28d8665e03              # double 1.010537
	.quad	0x401ad8359bc33f85              # double 6.7111419999999997
	.quad	0x3fe1778feef5ec81              # double 0.54584500000000002
	.quad	0x400f6036006d0d4a              # double 3.9219780000000002
	.quad	0x400c60589acbc8c1              # double 3.5470440000000001
	.quad	0x40124984e3ffef39              # double 4.571796
	.quad	0x400b990a7829068a              # double 3.4497270000000002
	.quad	0x402261d883ba3444              # double 9.1911050000000003
	.quad	0x401bacd29131ec0b              # double 6.9187719999999997
	.quad	0x4008ad655e28aa43              # double 3.0846659999999999
	.quad	0x40220b7fe08aefb3              # double 9.0224600000000006
	.quad	0x401d7195464dc22b              # double 7.3609210000000003
	.quad	0x4023a341e14bdfd2              # double 9.8188619999999993
	.quad	0x401c767168f8e7de              # double 7.1156670000000002
	.quad	0x3fe9c3b0c4588a05              # double 0.80513800000000002
	.quad	0x40129d7518b0d0ee              # double 4.6537670000000002
	.quad	0x401409d8409e55c1              # double 5.009614
	.quad	0x40228b193f6c269a              # double 9.2716770000000004
	.quad	0x401837ab324851a8              # double 6.0543639999999996
	.quad	0x401edbd44998d046              # double 7.714677
	.quad	0x40191c8259e1f3a5              # double 6.2778409999999996
	.quad	0x3fdc5350092ccf6c              # double 0.44258500000000001
	.quad	0x4020a45953586ca9              # double 8.3209940000000007
	.quad	0x3fe4abb6672fba02              # double 0.64596100000000001
	.quad	0x40183c5c9a34ca0c              # double 6.0589469999999999
	.quad	0x4014d56eefa1e3eb              # double 5.208431
	.quad	0x401f816fc9bc7714              # double 7.8764029999999998
	.quad	0x401a8bfd2e946801              # double 6.6367079999999996
	.quad	0x3fdaee525892684d              # double 0.420796
	.quad	0x400f9908e581cf78              # double 3.9497239999999998
	.quad	0x40175ebbba55d1c4              # double 5.8425130000000003
	.quad	0x4017b46c332f0175              # double 5.9261939999999997
	.quad	0x40006e5ffa3b9ae1              # double 2.0538940000000001
	.quad	0x40164e31d712a0ec              # double 5.5763619999999996
	.quad	0x40184cff64cf8d71              # double 6.0751929999999996
	.quad	0x40200ac79702e664              # double 8.0210539999999994
	.quad	0x401b906e19b90eaa              # double 6.8910450000000001
	.quad	0x3fd796312f4cf4a5              # double 0.36854199999999998
	.quad	0x4020feed02cd39da              # double 8.4979019999999998
	.quad	0x401f76612839042e              # double 7.8656050000000004
	.quad	0x4003a5f41aef6f8f              # double 2.456032
	.quad	0x4004a362a5e785b6              # double 2.5797780000000001
	.quad	0x401406afcce1c582              # double 5.0065299999999997
	.quad	0x4021caab042528ae              # double 8.8958359999999992
	.quad	0x401caaeb3dd11be7              # double 7.1669130000000001
	.quad	0x40029ccfaeff5c6c              # double 2.326568
	.quad	0x3fdaf13059641f64              # double 0.42097099999999998
	.quad	0x401a35d5f56a7ac8              # double 6.5525739999999999
	.quad	0x4019cb5b70691ea8              # double 6.4485910000000004
	.quad	0x402245de15ca6ca0              # double 9.1364599999999996
	.quad	0x402003aba7b9170d              # double 8.0071689999999993
	.quad	0x4015919008205ff2              # double 5.3921510000000001
	.quad	0x40225289331a08c0              # double 9.1612030000000004
	.quad	0x4006971971c10d7c              # double 2.823779
	.quad	0x40155107faa044af              # double 5.3291320000000004
	.quad	0x400b38e3ac0c62e5              # double 3.4027780000000001
	.quad	0x401dbbd1676640a7              # double 7.4334160000000002
	.quad	0x3fd392f6e82949a5              # double 0.30584499999999998
	.quad	0x40013c25d074213a              # double 2.154369
	.quad	0x4022d5f8b1572581              # double 9.4179130000000004
	.quad	0x401710df58c08b76              # double 5.7664770000000001
	.quad	0x3ff8fe9d94d0dcfd              # double 1.5621620000000001
	.quad	0x40069b7a5f41aef7              # double 2.825917
	.quad	0x400a0ff865d7cb2e              # double 3.2577980000000002
	.quad	0x3fdb72da122fad6d              # double 0.42888500000000002
	.quad	0x4007c3e63e8dda49              # double 2.9706540000000001
	.quad	0x4022182e6644d877              # double 9.0472289999999997
	.quad	0x40228dae1cde5d18              # double 9.2767189999999999
	.quad	0x4005398288051c9f              # double 2.6530809999999998
	.quad	0x3ff4e2036006d0d5              # double 1.3051790000000001
	.quad	0x401d79bed30f062d              # double 7.3688919999999998
	.quad	0x400ad1dffc5479d5              # double 3.3524780000000001
	.quad	0x401dc0a958537e2c              # double 7.4381459999999997
	.quad	0x4017038433d6c722              # double 5.7534340000000004
	.quad	0x401cc5e9e1b089a0              # double 7.1932749999999999
	.quad	0x4020e3dd76683c29              # double 8.4450489999999991
	.quad	0x3fe715f2452c59fb              # double 0.72142899999999999
	.quad	0x4020cf11947cfa27              # double 8.4044310000000007
	.quad	0x3ffdb2f9873ffac2              # double 1.856195
	.quad	0x3fcf2a411c2a0232              # double 0.243477
	.quad	0x400e6527a20578e6              # double 3.7993920000000001
	.quad	0x4010d96787ce95fb              # double 4.2123090000000003
	.quad	0x40202f09528f190d              # double 8.0918679999999998
	.quad	0x40234395810624dd              # double 9.6319999999999996
	.quad	0x4023f03a53b8e4b8              # double 9.9691949999999991
	.quad	0x401c1d512ec6bce8              # double 7.0286299999999997
	.quad	0x4010156d5cfaacda              # double 4.0209250000000001
	.quad	0x401545c4a83b1d0d              # double 5.3181330000000004
	.quad	0x4019e1f601797cc4              # double 6.4706650000000003
	.quad	0x4019c571d1d4738a              # double 6.4428169999999998
	.quad	0x401a4901083dbc23              # double 6.5712929999999998
	.quad	0x40009933e35c5b4b              # double 2.0748060000000002
	.quad	0x400869fa54c55433              # double 3.0517470000000002
	.quad	0x40206b17481b21c4              # double 8.2091619999999991
	.quad	0x3ff983c8e25c810a              # double 1.5946739999999999
	.quad	0x4015d4a5df2239e7              # double 5.4576640000000003
	.quad	0x40122ac9afe1da7b              # double 4.541785
	.quad	0x402236889c1b5419              # double 9.1065109999999994
	.quad	0x4022b4bdfd2630ec              # double 9.3530119999999996
	.quad	0x40148a350d2806af              # double 5.1349679999999998
	.quad	0x40228f2becedd484              # double 9.2796319999999994
	.quad	0x4021fd6e8af81627              # double 8.9949840000000005
	.quad	0x401a481908e581cf              # double 6.5704079999999996
	.quad	0x40202ac01e68a0d3              # double 8.0834969999999995
	.quad	0x400a0e9d51b4fe7a              # double 3.257136
	.quad	0x4000708d4bad7d7c              # double 2.0549569999999999
	.quad	0x4023d58f92af9a8d              # double 9.9171110000000002
	.quad	0x4004e0d0aaa7ded7              # double 2.6097730000000001
	.quad	0x4023766e221c8a7a              # double 9.7313089999999995
	.quad	0x401fee6ff7dfa00e              # double 7.9828489999999999
	.quad	0x4022af5d78811b1e              # double 9.3425100000000008
	.quad	0x400c0ea854477ff1              # double 3.5071569999999999
	.quad	0x401f6d83c6c97d8d              # double 7.856948
	.quad	0x3fe0f9b77c02afde              # double 0.53048300000000004
	.quad	0x401c511904b3c3e7              # double 7.0791969999999997
	.quad	0x40235b76922d948e              # double 9.6786390000000004
	.quad	0x3fff67e62dc6e2a8              # double 1.962866
	.quad	0x4022e3a55d1c3ac9              # double 9.4446209999999997
	.quad	0x40063c6a7ef9db23              # double 2.7795000000000001
	.quad	0x3ff2d0ea9e6eeb70              # double 1.176005
	.quad	0x4013f65625a682b6              # double 4.9905629999999999
	.quad	0x400451715c63ae25              # double 2.5397669999999999
	.quad	0x40129834d26fa3fd              # double 4.6486390000000002
	.quad	0x4023a1fd5885d313              # double 9.8163859999999996
	.quad	0x401f6ce703afb7e9              # double 7.8563499999999999
	.quad	0x3fff633eff195033              # double 1.96173
	.quad	0x401739e1f3a57eaa              # double 5.8065259999999999
	.quad	0x3ffb3edc7ef177a7              # double 1.702847
	.quad	0x400d22480e8c8abd              # double 3.6417389999999998
	.quad	0x4021095b35b0bbf5              # double 8.5182739999999999
	.quad	0x3ff272cb641700ce              # double 1.1530260000000001
	.quad	0x4022c5a858793dd9              # double 9.3860499999999991
	.quad	0x400745f30e7ff584              # double 2.9091550000000002
	.quad	0x4021ce9835158b82              # double 8.9035049999999991
	.quad	0x40136b27cbf6e3f8              # double 4.8546440000000004
	.quad	0x401b5ec17ebaf102              # double 6.8425349999999998
	.quad	0x4020cde2478854ce              # double 8.4021170000000005
	.quad	0x4015dc37a3db3bfb              # double 5.4650559999999997
	.quad	0x3feb876188b1140a              # double 0.86027600000000004
	.quad	0x401094a9cdc44391              # double 4.1451789999999997
	.quad	0x4012c162ae4b0186              # double 4.6888529999999999
	.quad	0x401a507f66e86c66              # double 6.5786110000000004
	.quad	0x3ffee392e1ef73c1              # double 1.9305600000000001
	.quad	0x4002553a3ec02f30              # double 2.2916150000000002
	.quad	0x3fec7e6b3fe9fadb              # double 0.890432
	.quad	0x40139b5525cc4263              # double 4.9016919999999997
	.quad	0x40070fe260b2c83f              # double 2.8827560000000001
	.quad	0x4012a4538ef34d6a              # double 4.6604749999999999
	.quad	0x4023fbbd3804534c              # double 9.9916780000000002
	.quad	0x4017939e6ab9b23e              # double 5.8941590000000001
	.quad	0x401bbf71eafee6fb              # double 6.9369579999999997
	.quad	0x3fe27a85015c2092              # double 0.57745599999999997
	.quad	0x3ffd037c5692b3cc              # double 1.8133509999999999
	.quad	0x401d856f32bdc26e              # double 7.3803070000000002
	.quad	0x402044105186db51              # double 8.1329370000000001
	.quad	0x3fe6d97f62b6ae7d              # double 0.71404999999999996
	.quad	0x3fd8564b662fdfc2              # double 0.38026700000000002
	.quad	0x401ec036c9c0a8d2              # double 7.6877089999999999
	.quad	0x40047b59ddc1e796              # double 2.5602299999999998
	.quad	0x401d4d794a6eb91b              # double 7.3256579999999998
	.quad	0x4016fb3f63c31df7              # double 5.7453589999999997
	.quad	0x400c3a46173b85e8              # double 3.528454
	.quad	0x3fde63497b7414a5              # double 0.47481000000000001
	.quad	0x3ff952189bd8383b              # double 1.582543
	.quad	0x4022d6a6e32e3822              # double 9.4192420000000006
	.quad	0x400c0e8fb00bcbe6              # double 3.5071099999999999
	.quad	0x401e03a57eaa2a0b              # double 7.5035610000000003
	.quad	0x4011c73e681a9b8d              # double 4.4445740000000002
	.quad	0x3fba4c0df58c08b7              # double 0.10272299999999999
	.quad	0x401abbe7296f6513              # double 6.6834990000000003
	.quad	0x40228384ba0e8427              # double 9.2568719999999995
	.quad	0x401a4dd616f86a0a              # double 6.5760120000000004
	.quad	0x3fcd74cd31769a91              # double 0.230127
	.quad	0x401123e8dda48b65              # double 4.2850679999999999
	.quad	0x401f21b71758e219              # double 7.7829249999999996
	.quad	0x401c7b97353b4b30              # double 7.1206940000000003
	.quad	0x4011dcc8de2ac322              # double 4.4656099999999999
	.quad	0x4015ec575c0767d3              # double 5.4808019999999997
	.quad	0x400000029f16b11c              # double 2.0000049999999998
	.quad	0x3ff1d9029ae4f334              # double 1.1154809999999999
	.quad	0x402057b24638c975              # double 8.1712819999999997
	.quad	0x3fe098e53eb399f6              # double 0.51866400000000001
	.quad	0x40142ac8e68e3ef3              # double 5.0417820000000004
	.quad	0x40030a369fcf3dc0              # double 2.3799869999999999
	.quad	0x4021e01cb46bacf7              # double 8.9377189999999995
	.quad	0x401a8ad601ffb481              # double 6.6355820000000003
	.quad	0x3ff5dfc2a8869c67              # double 1.367129
	.quad	0x400da8c36da87a07              # double 3.7074039999999999
	.quad	0x40206e2c343b70ef              # double 8.2151809999999994
	.quad	0x40209d4b8bef8ceb              # double 8.3072169999999996
	.quad	0x401d64b33daf8df8              # double 7.3483400000000003
	.quad	0x3fdcb09635610add              # double 0.44827800000000001
	.quad	0x4010755970b49e02              # double 4.1145990000000001
	.quad	0x3ff398255b035bd5              # double 1.224645
	.quad	0x400c6a80064a9cdc              # double 3.5520019999999999
	.quad	0x3fe93b0e5e679464              # double 0.78845900000000002
	.quad	0x3ff4acecc814d728              # double 1.2922180000000001
	.quad	0x3ff2dece5710880e              # double 1.1793960000000001
	.quad	0x400d76b3354c1227              # double 3.6829589999999999
	.quad	0x4011007746887a8d              # double 4.2504549999999997
	.quad	0x4015c3c536d655e3              # double 5.4411820000000004
	.quad	0x4012a049667b5f1c              # double 4.6565300000000001
	.quad	0x4012e8e53eb399f6              # double 4.7274370000000001
	.quad	0x4022ac7f13059642              # double 9.3369070000000001
	.quad	0x3fd2607c4199fe43              # double 0.28713899999999998
	.quad	0x4019f87e7c06e19c              # double 6.4926700000000004
	.quad	0x3fd8f9a06a6e32e4              # double 0.39023600000000003
	.quad	0x3ffce4ef0281ba80              # double 1.8058920000000001
	.quad	0x40218a20578e5c4f              # double 8.7697780000000005
	.quad	0x40094c3dab5c39bd              # double 3.1622270000000001
	.quad	0x401a797f1f9acffa              # double 6.6186489999999996
	.quad	0x402225bc23315d70              # double 9.0737009999999998
	.quad	0x4022a77d0f1f57b4              # double 9.3271259999999998
	.quad	0x4003602afdda8bd2              # double 2.4219569999999999
	.quad	0x402082209aaa3ad2              # double 8.2541550000000008
	.quad	0x40215d058dde7a74              # double 8.6816829999999995
	.quad	0x401a38f4b61fe21e              # double 6.5556210000000004
	.quad	0x4015f93532e7b3d9              # double 5.4933670000000001
	.quad	0x401adb1c864883fd              # double 6.7139759999999997
	.quad	0x4005ec3dab5c39bd              # double 2.7403520000000001
	.quad	0x402272915379fa98              # double 9.2237650000000002
	.quad	0x4011ad805e5f30e8              # double 4.419435
	.quad	0x40211b2b990afe61              # double 8.5530670000000004
	.quad	0x401dc53b4b2fa93b              # double 7.442609
	.quad	0x40171b1c864883fd              # double 5.7764759999999997
	.quad	0x401e790d173fb7a6              # double 7.618214
	.quad	0x3fe2f2f555821294              # double 0.59215799999999996
	.quad	0x40126db61bb05faf              # double 4.6071400000000002
	.quad	0x400d25e02ea960b7              # double 3.643494
	.quad	0x40201286b59146e5              # double 8.0361840000000004
	.quad	0x3fef70435efa615b              # double 0.98245400000000004
	.quad	0x401150bb6ed67770              # double 4.3288399999999996
	.quad	0x400fe6f36ef80560              # double 3.9877690000000001
	.quad	0x401365bc87db2b34              # double 4.8493519999999997
	.quad	0x4022d97204295a6c              # double 9.4246979999999993
	.quad	0x4016779463cfb331              # double 5.6167769999999999
	.quad	0x4001c685db76b3bc              # double 2.2219350000000002
	.quad	0x400cb89e774eebf6              # double 3.5901459999999998
	.quad	0x401a799a62ed3522              # double 6.6187529999999999
	.quad	0x3fe6625204af9229              # double 0.69950199999999996
	.quad	0x402224b7f5a5332b              # double 9.0717160000000003
	.quad	0x3ffebc17a89331a1              # double 1.9209210000000001
	.quad	0x3fef1deefe4ffc98              # double 0.97240400000000004
	.quad	0x3fef042b734b5137              # double 0.96925899999999998
	.quad	0x401b277b7c7820a3              # double 6.788557
	.quad	0x40108f51697f1f9b              # double 4.1399590000000002
	.quad	0x401520468448cf7d              # double 5.2815190000000003
	.quad	0x401ead17c5ef62fa              # double 7.6690360000000002
	.quad	0x401939fdbd2fa0d7              # double 6.3066319999999996
	.quad	0x402107c0b1359792              # double 8.5151420000000009
	.quad	0x4016f116659d12cb              # double 5.7354370000000001
	.quad	0x400e789acbc8c0cf              # double 3.8088890000000002
	.quad	0x401713e7d135115a              # double 5.7694390000000002
	.quad	0x401cb08bb906466b              # double 7.1724079999999999
	.quad	0x402010eed02cd39e              # double 8.0330720000000007
	.quad	0x4020e3a4f8726d05              # double 8.4446180000000002
	.quad	0x4022624a8c154c98              # double 9.1919749999999993
	.quad	0x402218a782906898              # double 9.0481529999999992
	.quad	0x401d52ae4b018612              # double 7.330743
	.quad	0x40203532c625e99f              # double 8.1039030000000007
	.quad	0x4021f372e6a76966              # double 8.9754860000000001
	.quad	0x3ff8d8c7e28240b8              # double 1.5529250000000001
	.quad	0x3ff03382e44b6e93              # double 1.0125759999999999
	.quad	0x3fd55d80e496edee              # double 0.33383200000000002
	.quad	0x400aacfe154434e3              # double 3.3344689999999999
	.quad	0x401ca36199780baa              # double 7.1595519999999997
	.quad	0x4023232617c1bda5              # double 9.5686499999999998
	.quad	0x40012b780346dc5d              # double 2.1462249999999998
	.quad	0x3fd3b3b320535c9e              # double 0.30784299999999998
	.quad	0x3fc953ac4f7ec354              # double 0.19786599999999999
	.quad	0x3feb2615a8deb0fb              # double 0.84839900000000001
	.quad	0x4022ce7dfe32a066              # double 9.4033049999999996
	.quad	0x4023ad56d19dece5              # double 9.8385529999999992
	.quad	0x40168d08d4bad7d8              # double 5.6377290000000002
	.quad	0x4019d7e90ff97247              # double 6.4608499999999998
	.quad	0x4017fa843808850a              # double 5.9946450000000002
	.quad	0x401cd6ac215b9a5b              # double 7.2096410000000004
	.quad	0x400d7bd6a593a2e0              # double 3.6854680000000002
	.quad	0x4023c8a6dacabc51              # double 9.8918979999999994
	.quad	0x4021478b7a1c25d0              # double 8.6397359999999992
	.quad	0x4008f37b07075b3e              # double 3.118887
	.quad	0x4023934d26fa3fcd              # double 9.7876980000000006
	.quad	0x40239a6f60e0eb68              # double 9.8016310000000004
	.quad	0x401ec414a4d2b2c0              # double 7.6914850000000001
	.quad	0x4021759c27e95315              # double 8.7297069999999994
	.quad	0x400ee914b167ec78              # double 3.8638089999999998
	.quad	0x4020cb8305d95dd5              # double 8.3974840000000004
	.quad	0x400c4f31b152f3c3              # double 3.5386690000000001
	.quad	0x3ff0e44e93e1c9b4              # double 1.055739
	.quad	0x4018a0f301eabbcb              # double 6.1571769999999999
	.quad	0x4019ac79b34a44c8              # double 6.4184330000000003
	.quad	0x402034a72ead9275              # double 8.1028380000000002
	.quad	0x4017136d22424a27              # double 5.7689709999999996
	.quad	0x400154d834091c08              # double 2.1664279999999998
	.quad	0x40164c8b0079a283              # double 5.5747489999999997
	.quad	0x401351ab8e8ea39c              # double 4.8297559999999997
	.quad	0x401db4e3ffef3908              # double 7.4266509999999996
	.quad	0x40217835bd512ec7              # double 8.7347850000000005
	.quad	0x3fe3bcc2938de6de              # double 0.61679200000000001
	.quad	0x3ff21b71758e2196              # double 1.1316999999999999
	.quad	0x400fd67d34df04de              # double 3.9797310000000001
	.quad	0x401a44727dcbddba              # double 6.5668430000000004
	.quad	0x4007fe892253111f              # double 2.999285
	.quad	0x401b56f7a0b5ed8d              # double 6.8349289999999998
	.quad	0x401d2566cf41f213              # double 7.2865250000000001
	.quad	0x400a1d074213a0c7              # double 3.2641740000000001
	.quad	0x4012934a01abd1ab              # double 4.6438370000000004
	.quad	0x400666c6de76427c              # double 2.8001839999999998
	.quad	0x401f19cfdd228566              # double 7.775207
	.quad	0x400e43b0c4588a05              # double 3.7830520000000001
	.quad	0x401ed5c31593e5fb              # double 7.7087519999999996
	.quad	0x4005763e4abe6a33              # double 2.6827359999999998
	.quad	0x3fe2e1a8262456f7              # double 0.59004599999999996
	.quad	0x400dc9f40a2877ee              # double 3.7236099999999999
	.quad	0x401ad44955b4677b              # double 6.7073109999999998
	.quad	0x3ff616feb4a6655a              # double 1.380614
	.quad	0x4023368b7e4de3b9              # double 9.6065330000000006
	.quad	0x401dee07e5a78f26              # double 7.4824520000000003
	.quad	0x3ffb0c3d25247cb7              # double 1.690488
	.quad	0x401eadf4c2b51bd6              # double 7.6698789999999999
	.quad	0x401caeacc92146a2              # double 7.1705810000000003
	.quad	0x400a1ebd09e12a52              # double 3.2650090000000001
	.quad	0x4023f52b0a6fc58b              # double 9.9788440000000004
	.quad	0x3fad7c6fbd273d5c              # double 0.057590000000000002
	.quad	0x40118e03f705857b              # double 4.388687
	.quad	0x402390096feb4a66              # double 9.7813219999999994
	.quad	0x401393c07ee0b0af              # double 4.8942889999999997
	.quad	0x4021d9a261bf37b9              # double 8.9250670000000003
	.quad	0x3fd3e43675ddd2af              # double 0.31080400000000002
	.quad	0x400ae0f6f08cc576              # double 3.3598460000000001
	.quad	0x3f983382e44b6e93              # double 0.023633999999999999
	.quad	0x3ffa2707e175d13d              # double 1.6345289999999999
	.quad	0x3fe6be0589acbc8c              # double 0.71069599999999999
	.quad	0x401ac4141e9af5ba              # double 6.6914829999999998
	.quad	0x3ffac346dc5d6388              # double 1.6726749999999999
	.quad	0x400012bfdb4cc250              # double 2.0091549999999998
	.quad	0x40181e6afcce1c58              # double 6.0297049999999999
	.quad	0x4010aa450acc0bdd              # double 4.1662790000000003
	.quad	0x400b023e9ea14057              # double 3.376096
	.quad	0x3ff3756da0168b5d              # double 1.2161690000000001
	.quad	0x40232676c8b43958              # double 9.5751249999999998
	.quad	0x402034ab1d4f9c20              # double 8.1028680000000008
	.quad	0x40206885d31337eb              # double 8.2041459999999997
	.quad	0x402005035371971c              # double 8.0097909999999998
	.quad	0x4012b0f27bb2fec5              # double 4.6727999999999996
	.quad	0x3ff09ad7518b0d0f              # double 1.037803
	.quad	0x400b0a32f4491299              # double 3.3799800000000002
	.quad	0x3fbee7e62dc6e2a8              # double 0.120726
	.quad	0x401917a0b5ed8d37              # double 6.2730740000000003
	.quad	0x401742ddbdb5d895              # double 5.8152990000000004
	.quad	0x40210febd09e12a5              # double 8.5310959999999998
	.quad	0x401e1b8ed1bf7ad5              # double 7.5269120000000002
	.quad	0x4018eff8a8f3a9b0              # double 6.2343469999999996
	.quad	0x401efd38476f2a5a              # double 7.7472849999999998
	.quad	0x3fda3a81dc0db270              # double 0.40982099999999999
	.quad	0x4020882491afc04d              # double 8.2659040000000008
	.quad	0x401743fd0d0678c0              # double 5.816395
	.quad	0x400daa64c2f837b5              # double 3.7082000000000002
	.quad	0x3fe06236c15d2d02              # double 0.51198900000000003
	.quad	0x401c8b4e11dbca97              # double 7.1360400000000004
	.quad	0x4014663e4abe6a33              # double 5.0998469999999996
	.quad	0x4022221dfb9389b5              # double 9.0666349999999998
	.quad	0x402162a80064a9ce              # double 8.6926880000000004
	.quad	0x400842699c7bcc29              # double 3.0324279999999999
	.quad	0x3febbee3d5fdcdf7              # double 0.86705200000000004
	.quad	0x4009fa61e0c5a815              # double 3.2472569999999998
	.quad	0x4014e48ecd8dbced              # double 5.2232010000000004
	.quad	0x402144a2db61bb06              # double 8.634055
	.quad	0x401c400b02928177              # double 7.0625419999999997
	.quad	0x401a3212d77318fc              # double 6.5488999999999997
	.quad	0x4012b28ed5f138bd              # double 4.6743730000000001
	.quad	0x401cd2db1e9f2778              # double 7.2059139999999999
	.quad	0x401189dd3bafd977              # double 4.384633
	.quad	0x40228907314ca926              # double 9.267633
	.quad	0x401f83293d102bc7              # double 7.8780869999999998
	.quad	0x3fd8ef88b9778573              # double 0.38962000000000002
	.quad	0x3ff1cb827fa1a0cf              # double 1.112185
	.quad	0x400a47eb6bf444e1              # double 3.2851170000000001
	.quad	0x40017130df9bdc6a              # double 2.180269
	.quad	0x3ff8039ffd60e94f              # double 1.500885
	.quad	0x40231c75c4a83b1d              # double 9.5555859999999999
	.quad	0x402090b3f63c31df              # double 8.2826229999999992
	.quad	0x40131a9c12f09d8c              # double 4.7759859999999996
	.quad	0x4010f35935fc3b4f              # double 4.2376449999999997
	.quad	0x401b9d66adb402d1              # double 6.9037119999999996
	.quad	0x4011f2007dd44135              # double 4.4863299999999997
	.quad	0x3ff803f0bae89eba              # double 1.5009619999999999
	.quad	0x4002e87229e90796              # double 2.363499
	.quad	0x40146d54da4ce810              # double 5.1067689999999999
	.quad	0x4017822856605ee5              # double 5.8771069999999996
	.quad	0x401f1fb8b26394fb              # double 7.7809780000000001
	.quad	0x40115e74afd54541              # double 4.3422419999999997
	.quad	0x4001f2e3821af7d3              # double 2.243598
	.quad	0x4000d6d6dc1a47aa              # double 2.1049020000000001
	.quad	0x3ff82938de6ddf01              # double 1.5100640000000001
	.quad	0x401eadd1a21ea359              # double 7.6697449999999998
	.quad	0x4002df6c2699c7bd              # double 2.3590930000000001
	.quad	0x401cf7a7008a697b              # double 7.2418480000000001
	.quad	0x401be9e0e736049f              # double 6.9783970000000002
	.quad	0x400de6b69db65ecc              # double 3.7376529999999999
	.quad	0x4006946994185059              # double 2.8224670000000001
	.quad	0x3ff04242d05f2885              # double 1.0161770000000001
	.quad	0x401f51f3a57eaa2a              # double 7.830031
	.quad	0x4022156c93a71151              # double 9.0418439999999993
	.quad	0x402154a9cdc44391              # double 8.6653579999999994
	.quad	0x401c45ab3aabcd79              # double 7.0680360000000002
	.quad	0x401327546d3f9e7c              # double 4.7884080000000004
	.quad	0x400e44606748e475              # double 3.7833869999999998
	.quad	0x40013e9d0e991ff7              # double 2.155573
	.quad	0x4015ab5a20ddc619              # double 5.4173359999999997
	.quad	0x401e6b84db9c7369              # double 7.6049990000000002
	.quad	0x40227c7bedb72820              # double 9.2431330000000003
	.quad	0x40188b8f9b13165d              # double 6.1362899999999998
	.quad	0x4019034b945308bc              # double 6.2532180000000004
	.quad	0x401d5b4fa48301a8              # double 7.3391710000000003
	.quad	0x4003dfa2ad3e920c              # double 2.484197
	.quad	0x3ff1f21e603d5779              # double 1.1216109999999999
	.quad	0x4014f465625a682b              # double 5.2386679999999997
	.quad	0x40216961804d9839              # double 8.7058219999999995
	.quad	0x40137ac4b4d056c5              # double 4.869891
	.quad	0x4021fe1b8ed1bf7b              # double 8.9963040000000003
	.quad	0x400909667b5f1bef              # double 3.1295899999999999
	.quad	0x401d3cdc8754f377              # double 7.3094349999999997
	.quad	0x401b3595feda6613              # double 6.8023300000000004
	.quad	0x401e72007dd44135              # double 7.6113299999999997
	.quad	0x401b0fcd24e160d9              # double 6.7654310000000004
	.quad	0x400743854046412d              # double 2.907969
	.quad	0x4021e253b8e4b87c              # double 8.9420450000000002
	.quad	0x40197656abde3fbc              # double 6.3655650000000001
	.quad	0x4019b01040bfe3b0              # double 6.4219369999999998
	.quad	0x401bdb8066c2acb8              # double 6.9643569999999997
	.quad	0x401aea4ca4f440af              # double 6.7288079999999999
	.quad	0x40210d5714b9cb68              # double 8.5260549999999995
	.quad	0x3ff6ee1bd1ed9dfe              # double 1.4331320000000001
	.quad	0x4007cbd5dc400757              # double 2.974529
	.quad	0x4016958969a0ad8a              # double 5.6460319999999999
	.quad	0x40193b43526527a2              # double 6.307874
	.quad	0x3ff3689656eefa1e              # double 1.2130339999999999
	.quad	0x3fc44883fd502257              # double 0.15846299999999999
	.quad	0x40171358f2e05ccd              # double 5.7688940000000004
	.quad	0x4023a14bdfd2630f              # double 9.8150320000000004
	.quad	0x4023f697aeddce7d              # double 9.9816260000000003
	.quad	0x401d5f4b1ee24357              # double 7.3430600000000004
	.quad	0x40210394face67d7              # double 8.5069959999999991
	.quad	0x400fe223e1869835              # double 3.98542
	.quad	0x400a95a63f9a49c3              # double 3.3230710000000001
	.quad	0x401744228997c3d7              # double 5.8165380000000004
	.quad	0x40106cae642bf983              # double 4.106134
	.quad	0x3fcff5f91600f345              # double 0.249694
	.quad	0x401dca265f0f5a10              # double 7.4474119999999999
	.quad	0x400ba5e80bed740c              # double 3.4560089999999999
	.quad	0x4021107e175d13d7              # double 8.5322119999999995
	.quad	0x400e21d2178f68be              # double 3.7665139999999999
	.quad	0x40110b734b51372a              # double 4.2611819999999998
	.quad	0x4017395e5aff2a17              # double 5.8060239999999999
	.quad	0x4019705e5f30e7ff              # double 6.3597349999999997
	.quad	0x4008675cd0bb6ed6              # double 3.0504699999999998
	.quad	0x3fe47d1bb4916ca4              # double 0.64027199999999995
	.quad	0x4023be10060780fe              # double 9.8712160000000004
	.quad	0x401c6e5b4245f5ae              # double 7.1077700000000004
	.quad	0x4015a75bc44bf4cb              # double 5.4134359999999999
	.quad	0x401c400bcbe61d00              # double 7.0625450000000001
	.quad	0x400e56113404ea4b              # double 3.7920250000000002
	.quad	0x40213ccc46950fc7              # double 8.6187459999999998
	.quad	0x401b5066c2acb85a              # double 6.8285169999999997
	.quad	0x400cad938151a438              # double 3.5847540000000002
	.quad	0x3ff7b6e1deacc921              # double 1.4821489999999999
	.quad	0x4023e7991bc55864              # double 9.9523399999999995
	.quad	0x401fc05bc01a36e3              # double 7.93785
	.quad	0x401f8b6fe2e6ea85              # double 7.8861689999999997
	.quad	0x400bae05ccc89b0f              # double 3.459972
	.quad	0x4023091c4b90214b              # double 9.5177940000000003
	.quad	0x401fc84d338f7985              # double 7.9456069999999998
	.quad	0x40227fb82c2bd7f5              # double 9.2494519999999998
	.quad	0x400524dec1c1d6d0              # double 2.6430030000000002
	.quad	0x4013f8ce2d1f1cfc              # double 4.9929740000000002
	.quad	0x40047334c5da6a44              # double 2.5562529999999999
	.quad	0x4017408b75ea67e8              # double 5.8130319999999998
	.quad	0x3ffbac95bff04578              # double 1.729635
	.quad	0x40022d27807789a4              # double 2.2720479999999998
	.quad	0x401102ac753e707e              # double 4.2526109999999999
	.quad	0x4021d5857afea3df              # double 8.9170339999999992
	.quad	0x40161c2938de6ddf              # double 5.527501
	.quad	0x40089e2478854cdb              # double 3.0772179999999998
	.quad	0x4022ac4b4d056c51              # double 9.3365120000000008
	.quad	0x400a8374794ea077              # double 3.314187
	.quad	0x401000dd82fd75e2              # double 4.000845
	.quad	0x4000f07e9d94d0dd              # double 2.117429
	.quad	0x4021b8e219652bd4              # double 8.8611000000000004
	.quad	0x402173fe5c91d14e              # double 8.7265499999999996
	.quad	0x3ff7cb2c83ec892b              # double 1.4871030000000001
	.quad	0x400e7851eb851eb8              # double 3.8087499999999999
	.quad	0x3fb96fda836eb4ea              # double 0.099363000000000006
	.quad	0x3ff882bf9830e3ce              # double 1.5319210000000001
	.quad	0x4014a2cd39da1661              # double 5.1589859999999996
	.quad	0x401cf22e1ac57e24              # double 7.236504
	.quad	0x401c4bba12b5e52a              # double 7.0739520000000002
	.quad	0x3fe9a1b3aeee9574              # double 0.80098899999999995
	.quad	0x4015e5942917507f              # double 5.4741980000000003
	.quad	0x3fcf5ad96a6a0126              # double 0.24496000000000001
	.quad	0x4015d7ef177a7009              # double 5.4608730000000003
	.quad	0x400e8338b47c73ef              # double 3.814073
	.quad	0x40017a0620ab7132              # double 2.1845819999999998
	.quad	0x4011151c193b3a69              # double 4.2706150000000003
	.quad	0x4013768d759ee88e              # double 4.865774
	.quad	0x401f12fdb8fde2ef              # double 7.7685459999999997
	.quad	0x3ff0950ca1cef241              # double 1.036389
	.quad	0x3fd7e9c0229a5ebb              # double 0.37364199999999997
	.quad	0x401531c8eabffcdb              # double 5.2986180000000003
	.quad	0x4016bd4562e09fe8              # double 5.6848349999999996
	.quad	0x3fe2c8a372606fac              # double 0.58699199999999996
	.quad	0x4014ae43ed959a31              # double 5.1701810000000004
	.quad	0x4023e4abe6a337a8              # double 9.9466239999999999
	.quad	0x401ba3cf2cf95d4f              # double 6.9099700000000004
	.quad	0x3ff2cac6cdaf4adc              # double 1.174506
	.quad	0x3fff64e48626f60e              # double 1.962132
	.quad	0x40167b6d86ec17ec              # double 5.6205350000000003
	.quad	0x4022745f17bd8be7              # double 9.2272879999999997
	.quad	0x4023d4115df6555c              # double 9.9141949999999994
	.quad	0x4008e9a0ad8a1166              # double 3.1140759999999998
	.quad	0x3fc44545846e8f2a              # double 0.158364
	.quad	0x400b447cb70ac3a8              # double 3.4084409999999998
	.quad	0x4016188effe2a3cf              # double 5.5239830000000003
	.quad	0x4004b56f32bdc26e              # double 2.5885910000000001
	.quad	0x3ffcced2cbea4ebe              # double 1.800494
	.quad	0x4011f451b93037d6              # double 4.4885929999999998
	.quad	0x40171d7d7c2ca149              # double 5.7787990000000002
	.quad	0x4010d4af922962d0              # double 4.2077010000000001
	.quad	0x40231a7d6733ebc0              # double 9.5517380000000002
	.quad	0x400692778140dd40              # double 2.8215170000000001
	.quad	0x40047c621b7e0ac8              # double 2.5607340000000001
	.quad	0x401774d61b2a27f2              # double 5.8640980000000003
	.quad	0x4018c55cd91eeaa7              # double 6.1927370000000002
	.quad	0x4021027a63736cdf              # double 8.5048399999999997
	.quad	0x400b58fde2ef4e01              # double 3.418453
	.quad	0x400a357d5a9eb207              # double 3.2761179999999999
	.quad	0x401756cd29131ec1              # double 5.8347670000000003
	.quad	0x3fe593f290abb44e              # double 0.67430999999999996
	.quad	0x4021e83cafb3b752              # double 8.9535879999999999
	.quad	0x401105903a7546d4              # double 4.255433
	.quad	0x40112b267c6b8b69              # double 4.2921389999999997
	.quad	0x401323f85510d38d              # double 4.7851270000000001
	.quad	0x401422ccb3a2595c              # double 5.0339840000000002
	.quad	0x40156f8e3ac0c62e              # double 5.3589409999999997
	.quad	0x4017f7c5692b3cc5              # double 5.9919640000000003
	.quad	0x4021442aa9f7b5af              # double 8.6331380000000006
	.quad	0x4016c40dd3fe1976              # double 5.691459
	.quad	0x3ff302b51bd61f5c              # double 1.188161
	.quad	0x40236218372e6a77              # double 9.6915910000000007
	.quad	0x40184d89ce4a7b4e              # double 6.0757209999999997
	.quad	0x4018f14d2f5dbb9d              # double 6.235646
	.quad	0x40231980b242070c              # double 9.5498100000000007
	.quad	0x40105862f5989df1              # double 4.0863149999999999
	.quad	0x40108652bd3c3611              # double 4.1311749999999998
	.quad	0x40143ea4ebdd334c              # double 5.0611759999999997
	.quad	0x3fdd7ecfe9b7bf1f              # double 0.46086500000000002
	.quad	0x3fe7183f91e646f1              # double 0.72170999999999996
	.quad	0x400660c176577532              # double 2.7972440000000001
	.quad	0x3ff2c1ede1198aec              # double 1.1723460000000001
	.quad	0x400cc14cec41dd1a              # double 3.5943849999999999
	.quad	0x4016dcb31c219eb6              # double 5.7155269999999998
	.quad	0x3fa5ab5c39bcba30              # double 0.042323
	.quad	0x4021076534373f31              # double 8.5144439999999992
	.quad	0x4021fbb01c92ddbe              # double 8.9915780000000005
	.quad	0x400a987ad080b674              # double 3.3244530000000001
	.quad	0x4022dc9dbec2480f              # double 9.4308910000000008
	.quad	0x4022ad06fef7c244              # double 9.3379440000000002
	.quad	0x400dd11ada76d97b              # double 3.7271019999999999
	.quad	0x401db445aa2e3c53              # double 7.4260469999999996
	.quad	0x4023274a98aa8651              # double 9.5767410000000001
	.quad	0x40219f11d798d8a9              # double 8.8106829999999992
	.quad	0x4019a1cf355cd91f              # double 6.4080170000000001
	.quad	0x4004e817fc7607c4              # double 2.613327
	.quad	0x4002e295a6c5d207              # double 2.3606370000000001
	.quad	0x400f8036006d0d4a              # double 3.9376030000000002
	.quad	0x402223a1d323fee3              # double 9.0695940000000004
	.quad	0x4022234091c08744              # double 9.0688519999999996
	.quad	0x4023089656eefa1e              # double 9.5167719999999996
	.quad	0x3fbfe79ee02a77a3              # double 0.124628
	.quad	0x401caa704bc27632              # double 7.1664440000000003
	.quad	0x401c13e9a6f826ee              # double 7.0194460000000003
	.quad	0x4021b1d712a0ec74              # double 8.8473439999999996
	.quad	0x401db015c209246c              # double 7.4219580000000001
	.quad	0x40186ec0b567557a              # double 6.1081570000000003
	.quad	0x40061ca5bd944aa5              # double 2.7639879999999999
	.quad	0x401bd555c52e72da              # double 6.9583349999999999
	.quad	0x3ff0190d173fb7a6              # double 1.006116
	.quad	0x401a56922d948dc1              # double 6.5845419999999999
	.quad	0x400ded948dc11e43              # double 3.7410060000000001
	.quad	0x4006bdfc19c17226              # double 2.8427660000000001
	.quad	0x4019873d5bab2181              # double 6.3820699999999997
	.quad	0x401058ac18f81e8a              # double 4.0865939999999998
	.quad	0x4010b899bf5946c3              # double 4.1802739999999998
	.quad	0x400ef345069a4df4              # double 3.8687839999999998
	.quad	0x4023b190f301eabc              # double 9.8468090000000003
	.quad	0x4006ce50c5eb313c              # double 2.8507400000000001
	.quad	0x401ccd3804534bd7              # double 7.2004089999999996
	.quad	0x4013d2599ed7c6fc              # double 4.9554200000000002
	.quad	0x3fe7303e20ccff22              # double 0.72463900000000003
	.quad	0x402318e820e62995              # double 9.5486459999999997
	.quad	0x401e865e89225311              # double 7.6312199999999998
	.quad	0x4021c8efdc9c4da9              # double 8.892455
	.quad	0x40173e45c358afc4              # double 5.8108129999999996
	.quad	0x4020434373f316e3              # double 8.1313739999999992
	.quad	0x3ff420780fdc1616              # double 1.257927
	.quad	0x3fa7a24894c447c3              # double 0.04616
	.quad	0x4004305e1c15097d              # double 2.5236170000000002
	.quad	0x4020814b599aa609              # double 8.2525279999999999
	.quad	0x4022734bb5e0f7fd              # double 9.225187
	.quad	0x401e2da16616b54e              # double 7.5445609999999999
	.quad	0x4017797c80841ede              # double 5.8686389999999999
	.quad	0x3ffe7fceb78897ea              # double 1.9062030000000001
	.quad	0x400b44f440af1cb9              # double 3.4086690000000002
	.quad	0x4022f46c54bcf0b7              # double 9.4773890000000005
	.quad	0x4011ceed02cd39da              # double 4.4520759999999999
	.quad	0x3ffb61a0cf1800a8              # double 1.7113350000000001
	.quad	0x4018536c58eeae9f              # double 6.0814680000000001
	.quad	0x4017b279dd3bafd9              # double 5.9242929999999996
	.quad	0x4011d7635e74299e              # double 4.4603400000000004
	.quad	0x4005ad338f798527              # double 2.709571
	.quad	0x40162a465a57646b              # double 5.5412840000000001
	.quad	0x40114c5e6ff7dfa0              # double 4.324579
	.quad	0x400d8a0ec7432010              # double 3.6924109999999999
	.quad	0x400814ad362e9036              # double 3.0100959999999999
	.quad	0x40143667f90d9d77              # double 5.0531309999999996
	.quad	0x4004686d71f36263              # double 2.5509900000000001
	.quad	0x401a6e76427c7c52              # double 6.6078729999999997
	.quad	0x401442e33eff1950              # double 5.0653199999999998
	.quad	0x4021f6d97b30f8c6              # double 8.9821279999999994
	.quad	0x40002d4f5903a754              # double 2.0221239999999998
	.quad	0x401238661ae70c13              # double 4.5550769999999998
	.quad	0x401db8fabda0dfdf              # double 7.430644
	.quad	0x3fe44ff64cf8d717              # double 0.63476100000000002
	.quad	0x3fd7b356da0168b6              # double 0.37032100000000001
	.quad	0x401bb5f8d2e514c2              # double 6.9277069999999998
	.quad	0x4023a7f88765ba6f              # double 9.828068
	.quad	0x400ddf644955b467              # double 3.7340779999999998
	.quad	0x40151a7546d3f9e8              # double 5.2758380000000002
	.quad	0x401182c669057d18              # double 4.3777100000000004
	.quad	0x3fd868ad68837718              # double 0.38138899999999998
	.quad	0x4023c25c810a569b              # double 9.8796119999999998
	.quad	0x40224304ee7c49fd              # double 9.1308969999999992
	.quad	0x402126d2aa5c5f7c              # double 8.5758259999999992
	.quad	0x401901c2a0232096              # double 6.2517189999999996
	.quad	0x40060d29131ec0b5              # double 2.7564259999999998
	.quad	0x40154ea2d2fe3f36              # double 5.3267930000000003
	.quad	0x3fe1e61ae70c1334              # double 0.55933900000000003
	.quad	0x402341c779a6b50b              # double 9.6284749999999998
	.quad	0x40023bcdbbe0157f              # double 2.279201
	.quad	0x402389ab8e8ea39c              # double 9.7688869999999994
	.quad	0x401fa6ce789e774f              # double 7.912897
	.quad	0x40238cd9c6b0531a              # double 9.7750990000000009
	.quad	0x3fe798c3b0c4588a              # double 0.737398
	.quad	0x3fda28672756861f              # double 0.40871600000000002
	.quad	0x4015cc07aaef2c73              # double 5.4492479999999999
	.quad	0x4008bdd095af294e              # double 3.0926830000000001
	.quad	0x3ff2aaa4b9884c6a              # double 1.1666609999999999
	.quad	0x40122cde19fc2a88              # double 4.5438159999999996
	.quad	0x40130caafbc1acde              # double 4.7623709999999999
	.quad	0x4000fd616f86a099              # double 2.1237210000000002
	.quad	0x40193f78359bc340              # double 6.3119820000000004
	.quad	0x3fb6f2e8c0485a0c              # double 0.089644000000000001
	.quad	0x4001746801711948              # double 2.1818390000000001
	.quad	0x4011e5ed4a1ad645              # double 4.4745379999999999
	.quad	0x3fdf847f562174c5              # double 0.49246200000000001
	.quad	0x401b6b688bda9436              # double 6.8548910000000003
	.quad	0x3ff380a2877ee4e2              # double 1.2189049999999999
	.quad	0x3ffc3f151e75360d              # double 1.765401
	.quad	0x40145b75ea67e847              # double 5.0893170000000003
	.quad	0x4010d6a444178705              # double 4.2096109999999998
	.quad	0x4005519157abb880              # double 2.664828
	.quad	0x401c1eabbcb1cc96              # double 7.0299519999999998
	.quad	0x4003098b2e9ccb7d              # double 2.3796599999999999
	.quad	0x401aaf1bac2df0d4              # double 6.6710039999999999
	.quad	0x40171cc8de2ac322              # double 5.7781099999999999
	.quad	0x4018156191148fda              # double 6.02088
	.quad	0x3fb2501e2584f4c7              # double 0.071535000000000001
	.quad	0x402283384fd2a62b              # double 9.2562890000000007
	.quad	0x4004c0d23d4f15e8              # double 2.5941510000000001
	.quad	0x401625e9185cee18              # double 5.5370220000000003
	.quad	0x4021622ee41919ac              # double 8.6917639999999991
	.quad	0x3fe3e516db0dd830              # double 0.62171500000000002
	.quad	0x401e5769ec2ce465              # double 7.5853650000000003
	.quad	0x4014ca1b1960fa16              # double 5.1973690000000001
	.quad	0x4003b5c182ecaeea              # double 2.4637479999999998
	.quad	0x4017355219a847b2              # double 5.8020709999999998
	.quad	0x3fef543d03968d76              # double 0.97903300000000004
	.quad	0x4012cb18dac258d6              # double 4.6983370000000004
	.quad	0x401749b1b79d909f              # double 5.8219669999999999
	.quad	0x40236dadd9c27e95              # double 9.7142169999999996
	.quad	0x401f7d12cadddf44              # double 7.8721420000000002
	.quad	0x400a8da0168b5cc0              # double 3.319153
	.quad	0x401f9413986338b4              # double 7.8946059999999996
	.quad	0x4019048a9bcfd4bf              # double 6.254435
	.quad	0x401a8ca36199780c              # double 6.6373420000000003
	.quad	0x4014e42a66dbd72c              # double 5.2228180000000002
	.quad	0x400b2066c2acb85a              # double 3.3908209999999999
	.quad	0x40139b20b8066c2b              # double 4.9014920000000002
	.quad	0x4023146ed245b292              # double 9.5399080000000005
	.quad	0x401a7120e1f7d73d              # double 6.6104770000000004
	.quad	0x4013cad1d041cc53              # double 4.9480659999999999
	.quad	0x400d95d701d9f4d3              # double 3.6981639999999998
	.quad	0x401fa70196d8f4f9              # double 7.9130919999999997
	.quad	0x4023e0909289dae0              # double 9.9386030000000005
	.quad	0x401f29acbc8c0ce9              # double 7.7906979999999999
	.quad	0x3ff1f2c40d0aaa7e              # double 1.121769
	.quad	0x40026469d7342edc              # double 2.2990300000000001
	.quad	0x401eda1be2b4959e              # double 7.7129969999999997
	.quad	0x4022b8bf1a5ca298              # double 9.3608329999999995
	.quad	0x4005b4cb9ecf6380              # double 2.713279
	.quad	0x401d6e73e681a9b9              # double 7.3578640000000002
	.quad	0x40236f80dc33721d              # double 9.7177799999999994
	.quad	0x401cabdcad14a0a1              # double 7.167834
	.quad	0x3fe31ca7d6733ebc              # double 0.597248
	.quad	0x4019341cc532a498              # double 6.300891
	.quad	0x4010597204295a6c              # double 4.0873489999999997
	.quad	0x401d87e9d94d0dd0              # double 7.3827280000000002
	.quad	0x40015203a322af57              # double 2.1650459999999998
	.quad	0x401a99817b95a294              # double 6.6499079999999999
	.quad	0x402319e7d9988d2a              # double 9.5505969999999998
	.quad	0x4011c09edbf8b9bb              # double 4.4381060000000003
	.quad	0x40214bf22c01e68a              # double 8.6483319999999999
	.quad	0x40215b5610adcd2d              # double 8.6783909999999995
	.quad	0x402271741d084e83              # double 9.2215889999999998
	.quad	0x4013a1b7e0ac7da2              # double 4.9079280000000001
	.quad	0x400fdf7be121ee67              # double 3.9841229999999999
	.quad	0x40234aed783dff3f              # double 9.6463429999999998
	.quad	0x401a7f46ed245b29              # double 6.6242939999999999
	.quad	0x400bd383f0bae89f              # double 3.4782790000000001
	.quad	0x401b4d549731098d              # double 6.8255179999999998
	.quad	0x4021226202539757              # double 8.5671540000000004
	.quad	0x401cb001d5c31594              # double 7.1718820000000001
	.quad	0x40217ca3c64345d0              # double 8.7434370000000001
	.quad	0x4007296a26e54717              # double 2.895222
	.quad	0x401fa5996744b2b7              # double 7.9117179999999995
	.quad	0x4021fa40fa9c12f1              # double 8.9887770000000007
	.quad	0x40120f9acffa7eb7              # double 4.5152390000000002
	.quad	0x401ef9146e4c0df6              # double 7.7432420000000004
	.quad	0x3fd80c23fab10ba6              # double 0.37574099999999999
	.quad	0x4012b67e846a5d6c              # double 4.6782170000000001
	.quad	0x400854e0114d2f5e              # double 3.0414430000000001
	.quad	0x4021680c9539b888              # double 8.7032209999999992
	.quad	0x401f076640a6b93d              # double 7.7572260000000001
	.quad	0x400959c842fa5094              # double 3.1688390000000002
	.quad	0x4023b5e1198aeb81              # double 9.8552330000000001
	.quad	0x400c4e47dc37a3db              # double 3.5382229999999999
	.quad	0x3ff70df04ddb5526              # double 1.440903
	.quad	0x401380fadf2ecf20              # double 4.8759569999999997
	.quad	0x4002979a6b50b0f2              # double 2.3240249999999998
	.quad	0x401d195703f2d3c8              # double 7.2747460000000004
	.quad	0x40163c01e68a0d35              # double 5.5586010000000003
	.quad	0x40195b9bed30f063              # double 6.3394620000000002
	.quad	0x3fe2a6bf8769ec2d              # double 0.58285500000000001
	.quad	0x4023e947064ece9a              # double 9.9556199999999997
	.quad	0x401b3f1e4b44a1f1              # double 6.8116390000000004
	.quad	0x3ff2ecc70867ad8e              # double 1.1828069999999999
	.quad	0x402374a4d2b2bfdb              # double 9.7278199999999994
	.quad	0x400af4e65bea0ba2              # double 3.36958
	.quad	0x401e3429e0a41a26              # double 7.5509409999999999
	.quad	0x4015a7ea5f84cad5              # double 5.4139799999999996
	.quad	0x3ff3c6173b85e80c              # double 1.235862
	.quad	0x4021e61693c03bc5              # double 8.9493910000000003
	.quad	0x400cb1b2e59af9ec              # double 3.586767
	.quad	0x401c587160956c0d              # double 7.0863699999999996
	.quad	0x400e2435efa615a9              # double 3.7676810000000001
	.quad	0x4021f3760bf5d788              # double 8.9755099999999999
	.quad	0x401ddf1886df82b2              # double 7.467867
	.quad	0x3ff1078c868b9fdc              # double 1.064343
	.quad	0x40237c5ef62f9ca6              # double 9.7429120000000005
	.quad	0x400a409fe86833c6              # double 3.281555
	.quad	0x401a25e74299d884              # double 6.5370150000000002
	.quad	0x4018cc154c985f07              # double 6.1993
	.quad	0x40199aec0724b76f              # double 6.4012909999999996
	.quad	0x4001de4e69f05ea2              # double 2.2335479999999999
	.quad	0x3fe2682517e77d52              # double 0.57521299999999997
	.quad	0x401829be8ff327aa              # double 6.0407659999999996
	.quad	0x40206de84f09528f              # double 8.2146629999999998
	.quad	0x3feab6006d0d4995              # double 0.83471700000000004
	.quad	0x3fb2367e414e7ee9              # double 0.071143999999999999
	.quad	0x4008fef62f9ca5be              # double 3.1244930000000002
	.quad	0x3fd636f3b213e3e3              # double 0.34710400000000002
	.quad	0x40227b02b40f66a5              # double 9.2402549999999994
	.quad	0x4006dc4fc1df3301              # double 2.8575740000000001
	.quad	0x401844c729f59cd0              # double 6.0671660000000003
	.quad	0x40185a8b08dd1e54              # double 6.0884210000000003
	.quad	0x4011d5a921ccd962              # double 4.458653
	.quad	0x401a23a604e1e710              # double 6.5348129999999998
	.quad	0x4010d4f483cafb3b              # double 4.2079639999999996
	.quad	0x40220199fe43675e              # double 9.0031280000000002
	.quad	0x400373bb83cf2cf9              # double 2.4315099999999998
	.quad	0x3ffd02d490e66cb1              # double 1.813191
	.quad	0x4015218116ebd4d0              # double 5.2827190000000002
	.quad	0x4021cd393250b524              # double 8.9008269999999996
	.quad	0x3fd4aed1394317ad              # double 0.32317000000000001
	.quad	0x4016b791c4b90215              # double 5.6792670000000003
	.quad	0x401dc85b9e8c47a1              # double 7.4456619999999996
	.quad	0x40226e0ef99806f2              # double 9.2149579999999993
	.quad	0x4000f8244e93e1ca              # double 2.1211630000000001
	.quad	0x40130109070fbeba              # double 4.7510110000000001
	.quad	0x401d501eeed8904f              # double 7.3282429999999996
	.quad	0x3ffe22706d506573              # double 1.883408
	.quad	0x4005754c985f06f7              # double 2.6822750000000002
	.quad	0x401b60e6299524c0              # double 6.8446280000000002
	.quad	0x400d151d68c692f7              # double 3.63531
	.quad	0x40003edaec4a4096              # double 2.030691
	.quad	0x4023725accd53049              # double 9.7233490000000006
	.quad	0x40155c35ce182667              # double 5.3400489999999996
	.quad	0x400be450acc0bdcb              # double 3.4864820000000001
	.quad	0x401be17acc4ef88c              # double 6.9701950000000004
	.quad	0x401e1ccff21b3aef              # double 7.528137
	.quad	0x3ffbc589acbc8c0d              # double 1.735727
	.quad	0x40231246e08f2171              # double 9.5356970000000007
	.quad	0x3fc881f53825e13b              # double 0.191466
	.quad	0x400a1f38c5436b90              # double 3.2652450000000002
	.quad	0x401841b93037d630              # double 6.0641829999999999
	.quad	0x402080999dcb5782              # double 8.2511720000000004
	.quad	0x3fb2a80064a9cdc4              # double 0.072875999999999996
	.quad	0x402248dc33721d54              # double 9.1423050000000003
	.quad	0x3fe8e02645e4e69f              # double 0.777362
	.quad	0x4015167125dd095b              # double 5.271916
	.quad	0x4015b8bb4d48882f              # double 5.430402
	.quad	0x4001f8b502ababeb              # double 2.2464390000000001
	.quad	0x4010b90ea9e6eeb7              # double 4.18072
	.quad	0x40093ee136e71cda              # double 3.1557029999999999
	.quad	0x401509185cee17a0              # double 5.2588819999999998
	.quad	0x40184798d8a979e1              # double 6.0699189999999996
	.quad	0x4009ce9d51b4fe7a              # double 3.225886
	.quad	0x40198aac53b0813d              # double 6.3854230000000003
	.quad	0x4021f7dfa00e27e1              # double 8.9841280000000001
	.quad	0x3ff30be9424e5929              # double 1.1904079999999999
	.quad	0x40217f7d955714ba              # double 8.7490050000000004
	.quad	0x3ff1b61bb05faebc              # double 1.1069599999999999
	.quad	0x402005260f5e41d5              # double 8.0100560000000005
	.quad	0x400a28605681ecd5              # double 3.2697150000000001
	.quad	0x4020f8ac5c13fd0d              # double 8.48569
	.quad	0x40107b1ee2435697              # double 4.1202350000000001
	.quad	0x4001cc43f5f91601              # double 2.224739
	.quad	0x3fe9498e53eb399f              # double 0.79022899999999996
	.quad	0x400a120c069e7fb2              # double 3.2588119999999998
	.quad	0x401174e8fb00bcbe              # double 4.3641699999999997
	.quad	0x4023edae3e6c4c59              # double 9.9642199999999991
	.quad	0x40239b1d712a0ec7              # double 9.8029589999999995
	.quad	0x4004c317acc4ef89              # double 2.5952600000000001
	.quad	0x4017e765fd8adaba              # double 5.975975
	.quad	0x3fabdf2a9d627bf6              # double 0.054436999999999999
	.quad	0x4011e562174c4ce0              # double 4.4740070000000003
	.quad	0x402086523704790c              # double 8.2623460000000008
	.quad	0x4019c67f4dbdf8f4              # double 6.4438449999999996
	.quad	0x3fdca57214f0520d              # double 0.447598
	.quad	0x401282eba27ae9ab              # double 4.6278519999999999
	.quad	0x3ff6f6c9c0a8d21c              # double 1.4352510000000001
	.quad	0x4016fd523b3636f4              # double 5.7473840000000003
	.quad	0x40107fe0ce0b912e              # double 4.1248810000000002
	.quad	0x40108f038e29f9cf              # double 4.1396620000000004
	.quad	0x400081fc08fa7a85              # double 2.063469
	.quad	0x401bbf6598e10cf6              # double 6.9369110000000003
	.quad	0x401e6d00b45ae600              # double 7.6064480000000003
	.quad	0x401e4174c4cdfaca              # double 7.5639219999999998
	.quad	0x401a08d3f1843c3a              # double 6.5086209999999998
	.quad	0x4012c6e653868fd2              # double 4.6942380000000004
	.quad	0x40131d7cf5f4e443              # double 4.778797
	.quad	0x3fa4606748e47560              # double 0.039798
	.quad	0x400b6dfefbf401c5              # double 3.428709
	.quad	0x401aa4af4f0d844d              # double 6.660825
	.quad	0x401320431bde82d8              # double 4.7815060000000003
	.quad	0x401acc8e25c810a5              # double 6.6997609999999996
	.quad	0x4021cb81f969e3c9              # double 8.8974759999999993
	.quad	0x4018a92ff4ba51a0              # double 6.165222
	.quad	0x40185e40420f6f09              # double 6.0920420000000002
	.quad	0x4004e9bae46cfc83              # double 2.6141260000000002
	.quad	0x3fe0dd00f776c482              # double 0.52697799999999995
	.quad	0x402393ad18d25edd              # double 9.7884299999999999
	.quad	0x401d20ff540895d1              # double 7.2822240000000003
	.quad	0x401bc766c6de7642              # double 6.9447279999999996
	.quad	0x40039677f6b1a2a5              # double 2.4484710000000001
	.quad	0x4018d6ec5b078d93              # double 6.209886
	.quad	0x40217009d495182b              # double 8.7188250000000007
	.quad	0x4008f57eed45e918              # double 3.1198709999999998
	.quad	0x40233ce7ab756430              # double 9.6189549999999997
	.quad	0x402295aee631f8a1              # double 9.2923500000000008
	.quad	0x401ca6117720c8cd              # double 7.1621759999999997
	.quad	0x3ff48c059210385c              # double 1.2841849999999999
	.quad	0x40193bfb15b573eb              # double 6.3085750000000003
	.quad	0x4017955d1c3ac92a              # double 5.8958630000000003
	.quad	0x401098d0cc35ce18              # double 4.1492339999999999
	.quad	0x4017874299d883ba              # double 5.8820899999999998
	.quad	0x401609392189bd84              # double 5.5090070000000004
	.quad	0x40176a6efc371da3              # double 5.8539389999999996
	.quad	0x3ffd958969a0ad8a              # double 1.849008
	.quad	0x400e9f5a5332acfb              # double 3.8278089999999998
	.quad	0x4009dcc4ac6cdaf5              # double 3.2327970000000001
	.quad	0x3fe1c80a5accd530              # double 0.55566899999999997
	.quad	0x401fd9003eea209b              # double 7.9619150000000002
	.quad	0x400f641a261bf37c              # double 3.9238780000000002
	.quad	0x401a9e9856a37ac4              # double 6.6548780000000001
	.quad	0x40199687f455a7d2              # double 6.3970029999999998
	.quad	0x40023931ca7d6734              # double 2.277927
	.quad	0x3fedd117b5286b59              # double 0.93177399999999999
	.quad	0x40154e97d06bbdbe              # double 5.3267509999999998
	.quad	0x401e522f6a50d6b2              # double 7.5802589999999999
	.quad	0x3fe5278af3e468cb              # double 0.66107700000000003
	.quad	0x4023ba773e24febd              # double 9.8641909999999999
	.quad	0x40100555c52e72da              # double 4.0052099999999999
	.quad	0x40165eb0b7c3504c              # double 5.5924709999999997
	.quad	0x4021c98dcdb37c9a              # double 8.8936600000000006
	.quad	0x401b222fad6cb535              # double 6.783385
	.quad	0x400fc1187e7c06e2              # double 3.9692850000000002
	.quad	0x3fce22ee41919ac8              # double 0.23544100000000001
	.quad	0x4020fec6de76427c              # double 8.4976109999999991
	.quad	0x40233b361565c2d2              # double 9.6156469999999992
	.quad	0x3ffbb8ee28672757              # double 1.7326490000000001
	.quad	0x3ff3a235b4edb2f6              # double 1.2271019999999999
	.quad	0x4006552f3c2dadb8              # double 2.7915939999999999
	.quad	0x401fdbcd78c436fc              # double 7.9646509999999999
	.quad	0x4022b114b167ec78              # double 9.3458609999999993
	.quad	0x401547caa7589efe              # double 5.3201090000000004
	.quad	0x40166359791819d2              # double 5.5970209999999998
	.quad	0x40238427e9531551              # double 9.7581170000000003
	.quad	0x4003cc532a497fa6              # double 2.4747680000000001
	.quad	0x401da4057082491b              # double 7.410177
	.quad	0x4004a8d5410f94c8              # double 2.5824379999999998
	.quad	0x4018b0db6a1e81cb              # double 6.1727119999999998
	.quad	0x401ed2e05ccc89b1              # double 7.705934
	.quad	0x4013aa77e5eaab04              # double 4.9164729999999999
	.quad	0x3fe3bee1bd1ed9e0              # double 0.61705100000000002
	.quad	0x3ff53d8be7296f65              # double 1.327526
	.quad	0x4013bedd8b60f1b2              # double 4.9363919999999997
	.quad	0x3fefedf3f961804e              # double 0.99779700000000005
	.quad	0x4012a59ab6d00b46              # double 4.6617230000000003
	.quad	0x40216c586876e1df              # double 8.7116120000000006
	.quad	0x4022d600b0292817              # double 9.4179739999999991
	.quad	0x400d847f562174c5              # double 3.6896960000000001
	.quad	0x3ff5c9d8c6d612c7              # double 1.3617790000000001
	.quad	0x3fb757f737da61e1              # double 0.091186000000000003
	.quad	0x400f769a91105e1c              # double 3.932912
	.quad	0x3fe593b9f127f5e8              # double 0.67428299999999997
	.quad	0x40000f0739b024f6              # double 2.0073379999999998
	.quad	0x401978cc144028e5              # double 6.367966
	.quad	0x401f20f01fb82c2c              # double 7.7821660000000001
	.quad	0x40204203e63e8dda              # double 8.1289359999999995
	.quad	0x400db85510d38cda              # double 3.7150059999999998
	.quad	0x402280711d798d8b              # double 9.2508630000000007
	.quad	0x3fabfc86cebbba56              # double 0.054661000000000001
	.quad	0x3fbd510d38cda6e7              # double 0.11451799999999999
	.quad	0x401bee53a81dc0db              # double 6.9827409999999999
	.quad	0x401abda1ec4e7254              # double 6.6851880000000001
	.quad	0x402302f09d8c6d61              # double 9.5057419999999996
	.quad	0x3ff5152b0a6fc58b              # double 1.3176680000000001
	.quad	0x3ffed4da4ce8101f              # double 1.926966
	.quad	0x4023f2f7b17ce52e              # double 9.9745460000000001
	.quad	0x3fda7b1c0010c6f8              # double 0.41376400000000002
	.quad	0x3ff6b90c9107faa0              # double 1.4201779999999999
	.quad	0x4002d827fa1a0cf2              # double 2.3555450000000002
	.quad	0x40115ffac1d29dc7              # double 4.3437299999999999
	.quad	0x3ffa273f748a1598              # double 1.634582
	.quad	0x3fe32b0c88a47ed0              # double 0.59900500000000001
	.quad	0x4022a0d79d0a6762              # double 9.3141449999999999
	.quad	0x3ff89a708ede54b5              # double 1.5377050000000001
	.quad	0x3fff70caa326e115              # double 1.9650369999999999
	.quad	0x4005efc8b0079a28              # double 2.7420819999999999
	.quad	0x3ff6433d6c721922              # double 1.391416
	.quad	0x3ffd6450acc0bdcb              # double 1.836991
	.quad	0x40212886162f166e              # double 8.579148
	.quad	0x401648e8ea39c51e              # double 5.5712010000000003
	.quad	0x4011e5e74299d884              # double 4.4745150000000002
	.quad	0x401f7531db445ed5              # double 7.8644480000000003
	.quad	0x400775efa615a8df              # double 2.9325860000000001
	.quad	0x400e84028e4fb97c              # double 3.8144580000000001
	.quad	0x40220b6bd2b6f199              # double 9.0223069999999996
	.quad	0x401315154866a11f              # double 4.7705890000000002
	.quad	0x4006106b37867f0b              # double 2.7580170000000002
	.quad	0x3ff4898a222d5172              # double 1.283579
	.quad	0x401bf7cd898b2e9d              # double 6.9919950000000002
	.quad	0x4013c822bbecaab9              # double 4.9454450000000003
	.quad	0x3fc755ffe6d58c8f              # double 0.182312
	.quad	0x401c724e59296702              # double 7.1116270000000004
	.quad	0x4019f801711947d0              # double 6.4921930000000003
	.quad	0x3fefb39c0ebedfa4              # double 0.99067499999999997
	.quad	0x3ffc79af1886df83              # double 1.7797080000000001
	.quad	0x401b394ccab3edd9              # double 6.8059570000000003
	.quad	0x401cb2ee41919ac8              # double 7.1747370000000004
	.quad	0x3feef9b34a44c7b0              # double 0.96798099999999998
	.quad	0x401bce6e221c8a7a              # double 6.9515919999999998
	.quad	0x4015b761cbccf28c              # double 5.4290839999999996
	.quad	0x40028edd48451330              # double 2.3197580000000002
	.quad	0x3feedad7518b0d0f              # double 0.96421400000000001
	.quad	0x400222e1ac57e23f              # double 2.2670319999999999
	.quad	0x3ffb9b8887229e90              # double 1.7254719999999999
	.quad	0x40201333fc86cebc              # double 8.0375060000000004
	.quad	0x4016419e30014f8b              # double 5.5640799999999997
	.quad	0x4011977d523b3637              # double 4.397939
	.quad	0x40165876e1deacc9              # double 5.5863909999999999
	.quad	0x3ff67089a0275254              # double 1.4024749999999999
	.quad	0x4008b27d45a5fc7e              # double 3.0871529999999998
	.quad	0x4019fbd017dae819              # double 6.4959110000000004
	.quad	0x40098f9767903212              # double 3.1951130000000001
	.quad	0x40064d9dfdac68a9              # double 2.7878989999999999
	.quad	0x401c9674d1633483              # double 7.1469300000000002
	.quad	0x4005513165d39970              # double 2.6646450000000002
	.quad	0x3fe59a3f4666ec9e              # double 0.67507899999999998
	.quad	0x3fb953cddd6e04c0              # double 0.098934999999999995
	.quad	0x402069fd5885d313              # double 8.2070109999999996
	.quad	0x401062602c9081c3              # double 4.0960700000000001
	.quad	0x40154ed352220bc4              # double 5.3269780000000004
	.quad	0x4012cdcb1465e892              # double 4.7009699999999999
	.quad	0x401ca6ce789e774f              # double 7.1628970000000001
	.quad	0x4020431209edbf8c              # double 8.1309970000000006
	.quad	0x402303fee2c98e54              # double 9.5078040000000001
	.quad	0x4021eddd6e04c059              # double 8.9645799999999998
	.quad	0x3ffff985271bcdbc              # double 1.998418
	.quad	0x4013936f3b213e3e              # double 4.8939789999999999
	.quad	0x3ff18dde7a743a64              # double 1.0971359999999999
	.quad	0x3fd0c18b502ababf              # double 0.26181300000000002
	.quad	0x4017a30c23fab10c              # double 5.9092260000000003
	.quad	0x40224c78854cdb7b              # double 9.1493570000000002
	.quad	0x4021ea8c9b845565              # double 8.9581040000000005
	.quad	0x3fc39a8cdea033e8              # double 0.15315400000000001
	.quad	0x402171799e518f3f              # double 8.7216310000000004
	.quad	0x4018064345cfede9              # double 6.0061159999999996
	.quad	0x4021a906466b1e5c              # double 8.8301259999999999
	.quad	0x4012b8adab9f559b              # double 4.6803499999999998
	.quad	0x40214199dcb5781c              # double 8.6281269999999992
	.quad	0x4023451a005c4652              # double 9.6349640000000001
	.quad	0x400a8b2e1693c03c              # double 3.3179590000000001
	.quad	0x3fd8f0995aaf78ff              # double 0.389685
	.quad	0x4015d74d9c6b0532              # double 5.4602570000000004
	.quad	0x401d96cb966be7b0              # double 7.3972610000000003
	.quad	0x3fed0266772d5e07              # double 0.90654299999999999
	.quad	0x3ff40427418d690a              # double 1.2510140000000001
	.quad	0x4017ae2f7b17ce53              # double 5.9201030000000001
	.quad	0x4018a7ff583a53b9              # double 6.1640600000000001
	.quad	0x3feeb88a8b08dd1e              # double 0.96002699999999996
	.quad	0x400458fc504816f0              # double 2.54345
	.quad	0x400f1dda059a73b4              # double 3.8895759999999999
	.quad	0x400a3b139c94f69d              # double 3.2788460000000001
	.quad	0x40220807fed20297              # double 9.0156860000000005
	.quad	0x4013d20ccff21b3b              # double 4.9551270000000001
	.quad	0x4022c1bc33f85511              # double 9.3783890000000003
	.quad	0x4013320ff540895d              # double 4.798889
	.quad	0x401fb8bef8ceb357              # double 7.9304160000000001
	.quad	0x3ff254c660a20147              # double 1.145697
	.quad	0x4012798d477bbf94              # double 4.618703
	.quad	0x3ffc9197a24894c4              # double 1.7855449999999999
	.quad	0x40058259e1f3a57f              # double 2.6886480000000001
	.quad	0x400e2490a350d280              # double 3.7678539999999998
	.quad	0x401df6a055757d5b              # double 7.4908460000000003
	.quad	0x3ff6ebc621b7e0ac              # double 1.4325619999999999
	.quad	0x3fed4c70867ad8e4              # double 0.91558099999999997
	.quad	0x3ffcf5579af1886e              # double 1.809898
	.quad	0x40185243dccea290              # double 6.0803370000000001
	.quad	0x4001a52a411c2a02              # double 2.2056469999999999
	.quad	0x4010651b0ccbc05d              # double 4.0987359999999997
	.quad	0x4021b629b6b2af14              # double 8.8557869999999994
	.quad	0x4014f85122318330              # double 5.2424970000000002
	.quad	0x401c063800218def              # double 7.0060729999999998
	.quad	0x40165fb8b26394fb              # double 5.5934780000000002
	.quad	0x401edeebb341e14c              # double 7.7176960000000001
	.quad	0x4022a90e8858ff76              # double 9.3301890000000007
	.quad	0x4015e33a0407cc7d              # double 5.4719009999999999
	.quad	0x402379c1f85d744f              # double 9.7378079999999993
	.quad	0x3fb7d3c36113404f              # double 0.093075000000000005
	.quad	0x40198ba5a038194c              # double 6.386374
	.quad	0x3ff681d6cf850df1              # double 1.4066989999999999
	.quad	0x4012f7a89331a08c              # double 4.741854
	.quad	0x4018187ca643cc08              # double 6.0239130000000003
	.quad	0x402061cc319c5a3e              # double 8.1910109999999996
	.quad	0x3ff795193708aac9              # double 1.4739009999999999
	.quad	0x400a3c6e2a80064b              # double 3.2795070000000002
	.quad	0x4017da83b1d0c804              # double 5.9633929999999999
	.quad	0x3fe68520d130df9c              # double 0.70375100000000002
	.quad	0x4020e620ab713272              # double 8.4494679999999995
	.quad	0x401895a78f25a251              # double 6.146147
	.quad	0x400735d13d74d595              # double 2.901278
	.quad	0x4019bf3f961804da              # double 6.4367660000000004
	.quad	0x3fceb063e07a28bb              # double 0.239758
	.quad	0x401f32839042d8c3              # double 7.7993300000000003
	.quad	0x4016cad1d041cc53              # double 5.6980659999999999
	.quad	0x3fe2ef2c7325918a              # double 0.591696
	.quad	0x401329a77e5eaab0              # double 4.7906779999999998
	.quad	0x401505ae5ffa3b9b              # double 5.2555480000000001
	.quad	0x40164cdfaca36199              # double 5.5750719999999996
	.quad	0x4011464a59c065b6              # double 4.3186429999999998
	.quad	0x401a25c4651f3e8a              # double 6.5368820000000003
	.quad	0x400e924399b2c40d              # double 3.821418
	.quad	0x401dfa365cb35f3d              # double 7.4943479999999995
	.quad	0x400bdf4dbdf8f473              # double 3.484035
	.quad	0x4019e6b053198288              # double 6.475282
	.quad	0x4022c545846e8f2a              # double 9.3852960000000003
	.quad	0x3fb031487768166a              # double 0.063252000000000003
	.quad	0x400f862b27cbf6e4              # double 3.940512
	.quad	0x401e466adb402d17              # double 7.5687670000000002
	.quad	0x402173163baba7b9              # double 8.7247789999999998
	.quad	0x4021cff972474539              # double 8.9062000000000001
	.quad	0x3fe678e7ddca4b12              # double 0.70225899999999997
	.quad	0x402219be09bb6aa5              # double 9.0502780000000005
	.quad	0x401234dd72367e41              # double 4.5516259999999997
	.quad	0x401e69791819d239              # double 7.6030009999999998
	.quad	0x401bc8f861a60d45              # double 6.9462599999999997
	.quad	0x3fca65625a682b63              # double 0.20621900000000001
	.quad	0x4011ff69ca9ef523              # double 4.4994269999999998
	.quad	0x4016691bc5586445              # double 5.6026449999999999
	.quad	0x3ffd3b23571d1d47              # double 1.826938
	.quad	0x401bafc7a398201d              # double 6.9216600000000001
	.quad	0x401b5f81626b2f23              # double 6.843267
	.quad	0x4006c332f01754b0              # double 2.8453119999999998
	.quad	0x3fc1d72367e414e8              # double 0.139378
	.quad	0x4022a1ed9dfdac69              # double 9.3162660000000006
	.quad	0x40152b96af038e2a              # double 5.292567
	.quad	0x400669eb2074ea8e              # double 2.8017180000000002
	.quad	0x4018c81a5870da5e              # double 6.1954130000000003
	.quad	0x4017930df9bdc6a0              # double 5.8936080000000004
	.quad	0x3ffa645e4e69f05f              # double 1.6495040000000001
	.quad	0x401c59ee02a77a2d              # double 7.0878220000000001
	.quad	0x3fc86efc371da37f              # double 0.190887
	.quad	0x400a5205bc01a36e              # double 3.2900499999999999
	.quad	0x401fa68be2f7b17d              # double 7.912643
	.quad	0x401013ccd0fe8ab5              # double 4.019336
	.quad	0x40032f062d40aaeb              # double 2.397961
	.quad	0x4019ba77e5eaab04              # double 6.4320979999999999
	.quad	0x40232cccee5abc0e              # double 9.5875009999999996
	.quad	0x401a505ff1d81f10              # double 6.5784909999999996
	.quad	0x3fe59dd7ecbb7f9d              # double 0.67551799999999995
	.quad	0x4020007b56b87379              # double 8.0009409999999992
	.quad	0x4010eb4245f5ad97              # double 4.2297450000000003
	.quad	0x40105e24bba12b5e              # double 4.0919369999999997
	.quad	0x4012524dd2f1a9fc              # double 4.5803750000000001
	.quad	0x401ff502eec7c958              # double 7.9892690000000001
	.quad	0x40160e6c8f755369              # double 5.5140859999999998
	.quad	0x40192fadf2ecf206              # double 6.2965619999999998
	.quad	0x400e6bd09e12a51e              # double 3.8026439999999999
	.quad	0x4017534938583622              # double 5.831334
	.quad	0x40215a0ad8a11666              # double 8.6758640000000007
	.quad	0x401739310129cbab              # double 5.8058509999999997
	.quad	0x401781cc96462802              # double 5.8767569999999996
	.quad	0x40019971c10d7bea              # double 2.1999240000000002
	.quad	0x4016c9a91105e1c1              # double 5.6969339999999997
	.quad	0x4022f616d6dc1a48              # double 9.4806430000000005
	.quad	0x3fbd8676a7264a17              # double 0.115333
	.quad	0x401a2309c7ffde72              # double 6.5342169999999999
	.quad	0x402037969e3c9689              # double 8.1085709999999995
	.quad	0x3fe00029f16b11c7              # double 0.50002000000000002
	.quad	0x40095f4666ec9e23              # double 3.1715209999999998
	.quad	0x3ff263736cdf266c              # double 1.1492800000000001
	.quad	0x401af9aaa3ad18d2              # double 6.7438149999999997
	.quad	0x4022b4ecc814d728              # double 9.3533690000000007
	.quad	0x3fc3f7f06705c897              # double 0.156004
	.quad	0x3fe06d99cbee807c              # double 0.51337900000000003
	.quad	0x4009821f2990f302              # double 3.188536
	.quad	0x3fd45c67dfe32a06              # double 0.31813999999999998
	.quad	0x401dbc947064ecea              # double 7.4341600000000003
	.quad	0x401b7d9620685554              # double 6.8726430000000001
	.quad	0x3ffe6c929aa1d756              # double 1.9015070000000001
	.quad	0x401ac871a3b14a90              # double 6.6957459999999998
	.quad	0x3fec3530ced4e4c9              # double 0.88149299999999997
	.quad	0x4020d9b56323bbc7              # double 8.4252120000000001
	.quad	0x401b09335d249e45              # double 6.758985
	.quad	0x3feb74fd6d7e889c              # double 0.85803099999999998
	.quad	0x400cdb54195cc858              # double 3.607094
	.quad	0x3ff02958537e2c56              # double 1.010094
	.quad	0x40206508f648c719              # double 8.1973339999999997
	.quad	0x4004d7cbb3c81909              # double 2.605369
	.quad	0x401f6ecfe9b7bf1f              # double 7.8582150000000003
	.quad	0x4022ac0b5675579b              # double 9.3360240000000001
	.quad	0x4020f94573a79789              # double 8.4868579999999998
	.quad	0x3fb613d31b9b66f9              # double 0.086239999999999997
	.quad	0x40151f13059641f6              # double 5.2803459999999998
	.quad	0x4023602539756c94              # double 9.6877840000000006
	.quad	0x40199185cee17a03              # double 6.392112
	.quad	0x401950f94c87980f              # double 6.3290759999999997
	.quad	0x4021eccccccccccd              # double 8.9625000000000004
	.quad	0x401723c925785f8d              # double 5.7849469999999998
	.quad	0x4011c66666666666              # double 4.4437499999999996
	.quad	0x401a39ee45c358b0              # double 6.5565730000000002
	.quad	0x40160c8b0079a283              # double 5.5122489999999997
	.quad	0x3ffa30b178b37004              # double 1.6368879999999999
	.quad	0x3ff592b4d8ba40d9              # double 1.348317
	.quad	0x3fe852da98676a72              # double 0.76011399999999996
	.quad	0x4023f3458cd20afa              # double 9.9751399999999997
	.quad	0x4011525a250f8402              # double 4.3304220000000004
	.quad	0x4021ddeaab042529              # double 8.9334310000000006
	.quad	0x401132af5771001d              # double 4.2994969999999997
	.quad	0x4012491105e1c151              # double 4.5713540000000004
	.quad	0x3fda7d4e09784ec6              # double 0.41389799999999999
	.quad	0x40235a14ad362e90              # double 9.6759389999999996
	.quad	0x401487b352a84381              # double 5.1325200000000004
	.quad	0x40156b4b72c5197a              # double 5.3547799999999999
	.quad	0x40146ed4e4c942d5              # double 5.1082340000000004
	.quad	0x4023f1dc93ea2d30              # double 9.9723860000000002
	.quad	0x4006b5208e150119              # double 2.838441
	.quad	0x40208d696e58a32f              # double 8.2761949999999995
	.quad	0x4012f4934267839d              # double 4.7388430000000001
	.quad	0x40132a0cf1800a7c              # double 4.7910649999999997
	.quad	0x3fdc764adff822bc              # double 0.44472
	.quad	0x4016884c6a3bddfd              # double 5.6331040000000003
	.quad	0x40118e0589acbc8c              # double 4.388693
	.quad	0x401a1158fb43d89d              # double 6.5169410000000001
	.quad	0x40217294ff0025c0              # double 8.7237930000000006
	.quad	0x4020c5b2702a3487              # double 8.3861270000000001
	.quad	0x400a3e215336deb9              # double 3.2803369999999998
	.quad	0x400ea44e0daa0cae              # double 3.8302269999999998
	.quad	0x3fe264b87bdcf030              # double 0.57479499999999994
	.quad	0x3ffb5ef0f16f4385              # double 1.7106790000000001
	.quad	0x401c6c75818c5c9a              # double 7.1059169999999998
	.quad	0x3ffda03f705857b0              # double 1.851623
	.quad	0x3fe8088f861a60d4              # double 0.75104499999999996
	.quad	0x4016f57928e0c9da              # double 5.7397200000000002
	.quad	0x4012cb90a7829069              # double 4.6987940000000004
	.quad	0x40175ac5c13fd0d0              # double 5.8386449999999996
	.quad	0x4002665625a682b6              # double 2.2999689999999999
	.quad	0x40009d441355475a              # double 2.0767899999999999
	.quad	0x4020137c1376d549              # double 8.0380559999999992
	.quad	0x4020885100a393ee              # double 8.2662429999999993
	.quad	0x401a139d5e4a3832              # double 6.5191549999999996
	.quad	0x400818d823422468              # double 3.0121310000000001
	.quad	0x401c64095f2452c6              # double 7.0976920000000003
	.quad	0x401362becedd4845              # double 4.8464309999999999
	.quad	0x4023f18915bdd767              # double 9.9717490000000008
	.quad	0x40205fa9e2bcf91a              # double 8.1868429999999996
	.quad	0x402008b1bbcf4e87              # double 8.0169809999999995
	.quad	0x402233f1a5ca2984              # double 9.1014529999999993
	.quad	0x3ffdd90f301eabbd              # double 1.8654930000000001
	.quad	0x3ffe0a2db61bb060              # double 1.8774850000000001
	.quad	0x3ff73afa7221858c              # double 1.4518990000000001
	.quad	0x401442c7b890d5a6              # double 5.0652150000000002
	.quad	0x4010bcc144028e50              # double 4.1843310000000002
	.quad	0x4014b36b4c7f3494              # double 5.1752140000000004
	.quad	0x401045c0767d34df              # double 4.068117
	.quad	0x3fa3bddfc9ff92f3              # double 0.038558000000000002
	.quad	0x40216b636f3b213e              # double 8.7097429999999996
	.quad	0x4020072606fac604              # double 8.0139619999999993
	.quad	0x3fc077e5eaab0425              # double 0.128659
	.quad	0x401b772367e414e8              # double 6.8663460000000001
	.quad	0x3fd3f47735c182ed              # double 0.31179600000000002
	.quad	0x400f4173b85e80bf              # double 3.9069590000000001
	.quad	0x4023b397785729b3              # double 9.8507650000000008
	.quad	0x401e778f25a250f8              # double 7.6167569999999997
	.quad	0x401b69c6b0531983              # double 6.8532970000000004
	.quad	0x4009b46d3f9e7b81              # double 3.2130990000000001
	.quad	0x400c5cf4623d0bfa              # double 3.545388
	.quad	0x4015be89a88ace25              # double 5.4360720000000002
	.quad	0x4020e7def8487b9a              # double 8.4528730000000003
	.quad	0x3fec52c7b890d5a6              # double 0.88510500000000003
	.quad	0x400c74a87e38eb03              # double 3.556962
	.quad	0x4013c85510d38cda              # double 4.9456369999999996
	.quad	0x400b6d2135daad60              # double 3.4282859999999999
	.quad	0x4021b9d323fee2ca              # double 8.8629390000000008
	.quad	0x401370e496ededaf              # double 4.8602470000000002
	.quad	0x401b02862f5989df              # double 6.7524649999999999
	.quad	0x401c5e45803cd142              # double 7.0920620000000003
	.quad	0x401d9ea57214f052              # double 7.404928
	.quad	0x400d5ac710cb295f              # double 3.6693250000000002
	.quad	0x40178f240fa9c12f              # double 5.889786
	.quad	0x401ba01cd5f99c39              # double 6.9063600000000003
	.quad	0x40139b65668c2614              # double 4.9017540000000004
	.quad	0x4022e2ce032db1ea              # double 9.4429780000000001
	.quad	0x4018b48e8a71de6a              # double 6.1763250000000003
	.quad	0x4020f8df15a4acf3              # double 8.4860769999999999
	.quad	0x3fb1626b2f23033a              # double 0.067907999999999996
	.quad	0x3fe9113c68661ae7              # double 0.78335399999999999
	.quad	0x4011209246bf0132              # double 4.2818079999999998
	.quad	0x401ee6188b11409a              # double 7.7247029999999999
	.quad	0x40063a8f7db6e504              # double 2.778594
	.quad	0x3ffe35e41d4b6a62              # double 1.8881570000000001
	.quad	0x401136f71a7e3088              # double 4.3036770000000004
	.quad	0x3ff960f0a5efe932              # double 1.5861670000000001
	.quad	0x4015f273929ed395              # double 5.4867689999999998
	.quad	0x40168d3bf2f55582              # double 5.6379239999999999
	.quad	0x400074a90470a809              # double 2.0569630000000001
	.quad	0x40132cf4623d0bfa              # double 4.793901
	.quad	0x402064588a04d120              # double 8.1959879999999998
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
