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
	.quad	0x413e03a027875925              # double 1967008.154409
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
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_1999xindex_0)
	addi	a7, a7, %lo(.L__constant_1999xindex_0)
	lui	t0, %hi(.L__constant_1999xf64_0)
	addi	t0, t0, %lo(.L__constant_1999xf64_0)
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
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
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
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
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
	.size	.L__constant_1999xf64_0, 15992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	42                              # 0x2a
	.quad	42                              # 0x2a
	.quad	82                              # 0x52
	.quad	82                              # 0x52
	.quad	127                             # 0x7f
	.quad	127                             # 0x7f
	.quad	169                             # 0xa9
	.quad	169                             # 0xa9
	.quad	207                             # 0xcf
	.quad	207                             # 0xcf
	.quad	247                             # 0xf7
	.quad	247                             # 0xf7
	.quad	291                             # 0x123
	.quad	291                             # 0x123
	.quad	334                             # 0x14e
	.quad	334                             # 0x14e
	.quad	377                             # 0x179
	.quad	377                             # 0x179
	.quad	424                             # 0x1a8
	.quad	424                             # 0x1a8
	.quad	468                             # 0x1d4
	.quad	468                             # 0x1d4
	.quad	505                             # 0x1f9
	.quad	505                             # 0x1f9
	.quad	542                             # 0x21e
	.quad	542                             # 0x21e
	.quad	578                             # 0x242
	.quad	578                             # 0x242
	.quad	616                             # 0x268
	.quad	616                             # 0x268
	.quad	653                             # 0x28d
	.quad	653                             # 0x28d
	.quad	694                             # 0x2b6
	.quad	694                             # 0x2b6
	.quad	732                             # 0x2dc
	.quad	732                             # 0x2dc
	.quad	774                             # 0x306
	.quad	774                             # 0x306
	.quad	814                             # 0x32e
	.quad	814                             # 0x32e
	.quad	855                             # 0x357
	.quad	855                             # 0x357
	.quad	892                             # 0x37c
	.quad	892                             # 0x37c
	.quad	930                             # 0x3a2
	.quad	930                             # 0x3a2
	.quad	970                             # 0x3ca
	.quad	970                             # 0x3ca
	.quad	1013                            # 0x3f5
	.quad	1013                            # 0x3f5
	.quad	1055                            # 0x41f
	.quad	1055                            # 0x41f
	.quad	1098                            # 0x44a
	.quad	1098                            # 0x44a
	.quad	1136                            # 0x470
	.quad	1136                            # 0x470
	.quad	1173                            # 0x495
	.quad	1173                            # 0x495
	.quad	1212                            # 0x4bc
	.quad	1212                            # 0x4bc
	.quad	1251                            # 0x4e3
	.quad	1251                            # 0x4e3
	.quad	1286                            # 0x506
	.quad	1286                            # 0x506
	.quad	1331                            # 0x533
	.quad	1331                            # 0x533
	.quad	1369                            # 0x559
	.quad	1369                            # 0x559
	.quad	1407                            # 0x57f
	.quad	1407                            # 0x57f
	.quad	1446                            # 0x5a6
	.quad	1446                            # 0x5a6
	.quad	1481                            # 0x5c9
	.quad	1481                            # 0x5c9
	.quad	1523                            # 0x5f3
	.quad	1523                            # 0x5f3
	.quad	1560                            # 0x618
	.quad	1560                            # 0x618
	.quad	1602                            # 0x642
	.quad	1602                            # 0x642
	.quad	1644                            # 0x66c
	.quad	1644                            # 0x66c
	.quad	1680                            # 0x690
	.quad	1680                            # 0x690
	.quad	1719                            # 0x6b7
	.quad	1719                            # 0x6b7
	.quad	1761                            # 0x6e1
	.quad	1761                            # 0x6e1
	.quad	1797                            # 0x705
	.quad	1797                            # 0x705
	.quad	1838                            # 0x72e
	.quad	1838                            # 0x72e
	.quad	1879                            # 0x757
	.quad	1879                            # 0x757
	.quad	1919                            # 0x77f
	.quad	1919                            # 0x77f
	.quad	1956                            # 0x7a4
	.quad	1956                            # 0x7a4
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	36                              # 0x24
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	38                              # 0x26
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
	.quad	20                              # 0x14
	.quad	24                              # 0x18
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
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
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
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
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	78                              # 0x4e
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
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	30                              # 0x1e
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
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
	.quad	66                              # 0x42
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
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
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
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
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
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
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
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
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
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
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
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
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	94                              # 0x5e
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	46                              # 0x2e
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x3ff9bcfa26a22b39              # double 1.6086370000000001
	.quad	0x400ecb33daf8df7a              # double 3.8492199999999999
	.quad	0x400054d0dcfcc5b9              # double 2.0414140000000001
	.quad	0x4021b638433d6c72              # double 8.8558979999999998
	.quad	0x401e6ae2541d8e86              # double 7.6043789999999998
	.quad	0x4010aad5bee3d5fe              # double 4.1668310000000002
	.quad	0x3ff1cc5c9a34ca0c              # double 1.112393
	.quad	0x40190d68c692f6e8              # double 6.2630949999999999
	.quad	0x401fe8e7ddca4b12              # double 7.9774469999999997
	.quad	0x3ff9d4855da27286              # double 1.614385
	.quad	0x4012e04189374bc7              # double 4.7190000000000003
	.quad	0x400ace8101f31f47              # double 3.350832
	.quad	0x4003a3632c1f42bb              # double 2.4547789999999998
	.quad	0x401f7252ce032db2              # double 7.8616440000000001
	.quad	0x400573083558a761              # double 2.681168
	.quad	0x400ec3e963dc486b              # double 3.8456600000000001
	.quad	0x3fd1972cd7cf5f4e              # double 0.27485199999999999
	.quad	0x4021d9d7342edbb6              # double 8.9254700000000007
	.quad	0x3fe116e58a32f449              # double 0.53404499999999999
	.quad	0x4007a4c404a72eae              # double 2.9554520000000002
	.quad	0x3ffb19c8c9320d99              # double 1.6937949999999999
	.quad	0x401edd20afa2f05a              # double 7.7159449999999996
	.quad	0x4021c8fa376922d9              # double 8.8925339999999995
	.quad	0x3fe8e6687f455a7d              # double 0.77812599999999998
	.quad	0x400614a01abd1aa8              # double 2.7600709999999999
	.quad	0x400932734f82f512              # double 3.1496339999999998
	.quad	0x401d7fa1a0cf1801              # double 7.3746400000000003
	.quad	0x401eed29563a9f38              # double 7.7316029999999997
	.quad	0x3ff9a27bf61aa3f0              # double 1.602169
	.quad	0x4012efb7e90ff972              # double 4.7340999999999998
	.quad	0x3fdc3c81908e581d              # double 0.441193
	.quad	0x4020110c9107faa0              # double 8.0332989999999995
	.quad	0x400d3571d1d4738a              # double 3.6510959999999999
	.quad	0x401b60d51f81a587              # double 6.844563
	.quad	0x40204bcad9ad85e0              # double 8.1480320000000006
	.quad	0x4022a93122b7baed              # double 9.3304530000000003
	.quad	0x401006534373f317              # double 4.0061770000000001
	.quad	0x40201b059641f645              # double 8.0527770000000007
	.quad	0x4011264bec679cc7              # double 4.2873989999999997
	.quad	0x4022494c01605250              # double 9.1431579999999997
	.quad	0x40165624dd2f1aa0              # double 5.5841250000000002
	.quad	0x401aefd82773e250              # double 6.7342230000000001
	.quad	0x401fa87f88765ba7              # double 7.914549
	.quad	0x401962ff08893b7e              # double 6.3466760000000004
	.quad	0x401835109070fbec              # double 6.0518210000000003
	.quad	0x4001d75b81301648              # double 2.2301549999999999
	.quad	0x3ff0745ae5ffa3ba              # double 1.0284070000000001
	.quad	0x4013200a393ee5ef              # double 4.7812890000000001
	.quad	0x40207087442c7fbb              # double 8.2197820000000004
	.quad	0x400997df19d66adb              # double 3.1991559999999999
	.quad	0x400da5d3996fa82f              # double 3.7059700000000002
	.quad	0x402317dd00f776c5              # double 9.5466080000000008
	.quad	0x401c6e568a50507a              # double 7.1077519999999996
	.quad	0x4023c09635610add              # double 9.8761460000000003
	.quad	0x402203d6e8af8162              # double 9.0074989999999993
	.quad	0x4011c558ea7ce0fc              # double 4.4427219999999998
	.quad	0x40227db573eab368              # double 9.2455250000000006
	.quad	0x4005055432873bc9              # double 2.627602
	.quad	0x400fea77a2cecc81              # double 3.9894859999999999
	.quad	0x40096898f605ab3b              # double 3.1760730000000001
	.quad	0x4004270b8cfbfc65              # double 2.5190649999999999
	.quad	0x4007979f23465626              # double 2.9490340000000002
	.quad	0x4023f8d5410f94c8              # double 9.9860019999999991
	.quad	0x3ff763b9ae0c1765              # double 1.4618469999999999
	.quad	0x3ffa1c725c3dee78              # double 1.631945
	.quad	0x4009704e618ce2d2              # double 3.179837
	.quad	0x4023179d2bf55150              # double 9.5461209999999994
	.quad	0x3fe12849cb252ce0              # double 0.53616799999999998
	.quad	0x3ff091351159c497              # double 1.0354509999999999
	.quad	0x3fad173fb7a5f41b              # double 0.056818
	.quad	0x3fee2f33ca31e7da              # double 0.94326200000000004
	.quad	0x4023cea098915bdd              # double 9.9035689999999991
	.quad	0x40221a74e22a2c23              # double 9.0516729999999992
	.quad	0x4021ae0a2014727e              # double 8.8399210000000004
	.quad	0x3ff35ac68a936c59              # double 1.209662
	.quad	0x4003328f190d1740              # double 2.3996870000000001
	.quad	0x4018e1172ef0ae53              # double 6.2198149999999996
	.quad	0x402334ab81f969e4              # double 9.6028710000000003
	.quad	0x3ff7b3b320535c9e              # double 1.4813719999999999
	.quad	0x401cc74c09c3ce21              # double 7.1946260000000004
	.quad	0x400c77edc7ef177a              # double 3.5585589999999998
	.quad	0x400a9e518f3eccc4              # double 3.3273039999999998
	.quad	0x3fe53708aac96cc6              # double 0.662968
	.quad	0x401625aab4741073              # double 5.5367839999999999
	.quad	0x3ff1f70cdc8754f3              # double 1.1228149999999999
	.quad	0x402112cc2d6a9c56              # double 8.5367139999999999
	.quad	0x4013ce3cd9a52264              # double 4.9514040000000001
	.quad	0x401a0913a4f8726d              # double 6.508864
	.quad	0x3fea0221426fe719              # double 0.81276000000000004
	.quad	0x4011c904f6dfc5ce              # double 4.4463080000000001
	.quad	0x401cb0507a6bd6e9              # double 7.1721820000000003
	.quad	0x4023b3f20a73f749              # double 9.8514560000000006
	.quad	0x3fe032acfb762d84              # double 0.50618600000000002
	.quad	0x4023f4050bd87b57              # double 9.9766010000000004
	.quad	0x4020e5cf2495e17e              # double 8.4488459999999996
	.quad	0x4016265e4606748e              # double 5.5374689999999998
	.quad	0x401b4eb95e5aff2a              # double 6.8268789999999999
	.quad	0x40207db8bac710cb              # double 8.2455499999999997
	.quad	0x3ff43b80a9de8b3b              # double 1.264527
	.quad	0x3fd15cb35f3d7d39              # double 0.271283
	.quad	0x4017d0b955f7835a              # double 5.9538320000000002
	.quad	0x4022a4449dbec248              # double 9.3208359999999998
	.quad	0x3ffadefb6dca07f6              # double 1.6794389999999999
	.quad	0x4004dd3aa369fcf4              # double 2.6080220000000001
	.quad	0x400a0c2d6a9c560c              # double 3.2559459999999998
	.quad	0x40220c8de2ac3223              # double 9.0245200000000008
	.quad	0x402017d50225742e              # double 8.0465470000000003
	.quad	0x4022283dbc23315d              # double 9.0785959999999992
	.quad	0x401bebdb5d894813              # double 6.9803290000000002
	.quad	0x4023985cee17a030              # double 9.7975840000000005
	.quad	0x400436ddaceee0f4              # double 2.5267900000000001
	.quad	0x3fe72ca9ac365450              # double 0.72420200000000001
	.quad	0x401971ba3ca7503c              # double 6.3610620000000004
	.quad	0x4008346801711948              # double 3.0255890000000001
	.quad	0x3fe19b1fab96f21f              # double 0.55018599999999995
	.quad	0x401e25a708ede54b              # double 7.5367699999999997
	.quad	0x4008a84167a95c85              # double 3.0821559999999999
	.quad	0x401b76b484d76ab6              # double 6.8659230000000004
	.quad	0x4004b5c209246bf0              # double 2.588749
	.quad	0x40229eefa1e3eaf7              # double 9.3104220000000009
	.quad	0x400cba97e132b55f              # double 3.59111
	.quad	0x4023b52eb5f5f0b3              # double 9.8538720000000008
	.quad	0x4013b23bff8a8f3b              # double 4.9240570000000004
	.quad	0x401eb2c01e68a0d3              # double 7.6745609999999997
	.quad	0x401dd4fe79ee02a7              # double 7.4580019999999996
	.quad	0x3ffbacdaf4adbc66              # double 1.7297009999999999
	.quad	0x401d01f14983d790              # double 7.2518969999999996
	.quad	0x402290bc59b8023a              # double 9.2826869999999992
	.quad	0x40145ccab3edd8b6              # double 5.0906169999999999
	.quad	0x400d4d05f2884838              # double 3.6626089999999998
	.quad	0x40236a9ed3953dea              # double 9.7082429999999995
	.quad	0x40212efa82e87d2c              # double 8.5917549999999991
	.quad	0x40022a83b1d0c804              # double 2.270759
	.quad	0x401dab845564b663              # double 7.417497
	.quad	0x4023b9f44d445671              # double 9.8631919999999997
	.quad	0x40201eab7995ee13              # double 8.0599019999999992
	.quad	0x402042cf52b90a78              # double 8.1304879999999997
	.quad	0x401471dcd7060bb3              # double 5.1111940000000002
	.quad	0x40196605681ecd4b              # double 6.3496300000000003
	.quad	0x402236820e629952              # double 9.1064609999999995
	.quad	0x3fe32d27807789a4              # double 0.59926199999999996
	.quad	0x40144bc408d8ec96              # double 5.0739900000000002
	.quad	0x3ffd90de093532e8              # double 1.8478680000000001
	.quad	0x40212328b6d86ec1              # double 8.5686699999999991
	.quad	0x400507a52ac753e7              # double 2.628733
	.quad	0x3ff095dd4c76d118              # double 1.0365880000000001
	.quad	0x4012cade225fa659              # double 4.6981130000000002
	.quad	0x40231bb98c7e2824              # double 9.5541499999999999
	.quad	0x4022261804d98394              # double 9.0744019999999991
	.quad	0x401ef3860999dcb5              # double 7.7378159999999995
	.quad	0x400a37dc7abfb9bf              # double 3.2772760000000001
	.quad	0x3ffb20a84be40421              # double 1.695473
	.quad	0x3fdbb0574b407033              # double 0.43263800000000002
	.quad	0x3fee5249e44fa051              # double 0.94754499999999997
	.quad	0x401fe252ce032db2              # double 7.9710190000000001
	.quad	0x3ff4dab5c39bcba3              # double 1.303396
	.quad	0x3ff54f81e8a2ec29              # double 1.3319110000000001
	.quad	0x401db9a88ace24bc              # double 7.4313070000000003
	.quad	0x4016753825e13b19              # double 5.6144720000000001
	.quad	0x3fdf27e0ef99806f              # double 0.48680899999999999
	.quad	0x401217221858bc5a              # double 4.5225910000000002
	.quad	0x401cd9b38d60a633              # double 7.212599
	.quad	0x3fe5c40f23897204              # double 0.68018299999999998
	.quad	0x3ffa824f6598e10d              # double 1.656814
	.quad	0x40237a44c7b02d5a              # double 9.7388060000000003
	.quad	0x3ff6d06cca2db61c              # double 1.4258850000000001
	.quad	0x3fcb08a265f0f5a1              # double 0.211201
	.quad	0x40104651b0ccbc06              # double 4.0686710000000001
	.quad	0x40133cb252ce032e              # double 4.8092740000000003
	.quad	0x40217618ce2d1f1d              # double 8.730658
	.quad	0x40066a832b990afe              # double 2.8020079999999998
	.quad	0x401ac5a921ccd962              # double 6.693028
	.quad	0x3ff8d0aed99cbee8              # double 1.550948
	.quad	0x401a8a78f25a2510              # double 6.6352270000000004
	.quad	0x4010538da3c21188              # double 4.0815950000000001
	.quad	0x4023cdb2702a3487              # double 9.9017520000000001
	.quad	0x401e683e8576cce6              # double 7.601801
	.quad	0x40096c2c5e2cdc01              # double 3.1778189999999999
	.quad	0x401f61ac14c660a2              # double 7.845383
	.quad	0x400b1cf0b6b6e0d2              # double 3.3891309999999999
	.quad	0x4021818efbb0e5e6              # double 8.7530439999999992
	.quad	0x4021069ad42c3c9f              # double 8.5129000000000001
	.quad	0x401e00d38cda6e76              # double 7.500807
	.quad	0x4020878487b99d45              # double 8.2646829999999998
	.quad	0x401dfe4b87bdcf03              # double 7.4983349999999999
	.quad	0x401e67b07075b3e1              # double 7.6012589999999997
	.quad	0x401767f562174c4d              # double 5.8515220000000001
	.quad	0x4010ebddfc9ff92f              # double 4.2303389999999998
	.quad	0x4019ab395c422036              # double 6.417211
	.quad	0x4022defb8f57f738              # double 9.4355130000000002
	.quad	0x401bf422ccb3a259              # double 6.9884139999999997
	.quad	0x4022e44284dfce31              # double 9.4458199999999994
	.quad	0x3fdaebedfa43fe5d              # double 0.42065000000000002
	.quad	0x400c03b03e20ccff              # double 3.5018009999999999
	.quad	0x402222d01c0ca601              # double 9.0679940000000006
	.quad	0x3ffe12da98676a72              # double 1.8796029999999999
	.quad	0x4014974d9c6b0532              # double 5.1477570000000004
	.quad	0x4010d3708aac96cc              # double 4.2064839999999997
	.quad	0x400a9ebd09e12a52              # double 3.3275090000000001
	.quad	0x4023dc22ab25b318              # double 9.9299520000000001
	.quad	0x3fdb6837f7be121f              # double 0.42823600000000001
	.quad	0x3ff268a1dfb9389b              # double 1.1505449999999999
	.quad	0x401a2c864883fd50              # double 6.5434809999999999
	.quad	0x402341c90c4dec1c              # double 9.6284869999999997
	.quad	0x3ff8a6117720c8cd              # double 1.5405439999999999
	.quad	0x401ea193708aac97              # double 7.6577890000000001
	.quad	0x3fd91a0cf1800a7c              # double 0.39221499999999998
	.quad	0x4017a6c4c5974e66              # double 5.9128600000000002
	.quad	0x3fe81335d249e450              # double 0.75234500000000004
	.quad	0x401926a619da9c99              # double 6.2877429999999999
	.quad	0x40176cb5350092cd              # double 5.85616
	.quad	0x400e256d5cfaacda              # double 3.768275
	.quad	0x40105ead4f5903a7              # double 4.0924579999999997
	.quad	0x4020213c89f40a28              # double 8.0649149999999992
	.quad	0x40173bc8c0ce91c9              # double 5.8083830000000001
	.quad	0x40155305532617c2              # double 5.3310750000000002
	.quad	0x4001c08d08919ef9              # double 2.2190189999999999
	.quad	0x4022dfa97e132b56              # double 9.4368400000000001
	.quad	0x3ff444ef88b97785              # double 1.2668299999999999
	.quad	0x3fe64e7253da72a8              # double 0.69707600000000003
	.quad	0x3ff5938583621fb0              # double 1.348516
	.quad	0x402208cb8e086bdf              # double 9.0171779999999995
	.quad	0x4012b4c8bc9cd3e1              # double 4.6765470000000002
	.quad	0x400f2754f3775b81              # double 3.8942049999999999
	.quad	0x4017ba25529fe005              # double 5.9317830000000002
	.quad	0x40086e69f05ea24d              # double 3.0539130000000001
	.quad	0x401e41fa76534374              # double 7.564432
	.quad	0x3ff99bfad2999568              # double 1.600581
	.quad	0x3fd609d0635a426c              # double 0.34434900000000002
	.quad	0x3febbac2df0d4131              # double 0.86654799999999998
	.quad	0x4006857d1782d384              # double 2.8151799999999998
	.quad	0x4022f9b1b79d909f              # double 9.4876839999999997
	.quad	0x40028df0d413122b              # double 2.3193069999999998
	.quad	0x3ffdb08cc575c076              # double 1.8556029999999999
	.quad	0x400573a604e1e710              # double 2.6814689999999999
	.quad	0x3fcd4195cc857f30              # double 0.22856399999999999
	.quad	0x401d50791c4b9021              # double 7.3285869999999997
	.quad	0x400353a71151611c              # double 2.4158460000000002
	.quad	0x40128e8c47a17f41              # double 4.6392069999999999
	.quad	0x4003f5421c044285              # double 2.4947550000000001
	.quad	0x3ff2ef21f6cacd18              # double 1.1833819999999999
	.quad	0x4021307980f55de6              # double 8.5946770000000008
	.quad	0x400fec36544fe36d              # double 3.9903379999999999
	.quad	0x401c67457c0b1359              # double 7.1008509999999996
	.quad	0x401c3d2c7b890d5a              # double 7.0597399999999997
	.quad	0x401f907f66e86c66              # double 7.8911110000000004
	.quad	0x3fe10561d4306e5d              # double 0.53190700000000002
	.quad	0x400e130be0ded289              # double 3.7593000000000001
	.quad	0x401fe3293d102bc7              # double 7.9718369999999998
	.quad	0x401773bfb58d1527              # double 5.8630360000000001
	.quad	0x4003b00abf76a2f5              # double 2.4609580000000002
	.quad	0x40139f444e0daa0d              # double 4.9055340000000003
	.quad	0x3ff55b66f9335d25              # double 1.3348150000000001
	.quad	0x4014d398e9707182              # double 5.2066379999999999
	.quad	0x401659d7fd82773e              # double 5.5877379999999999
	.quad	0x401485c0b9991362              # double 5.1306180000000001
	.quad	0x3fe942b734b51373              # double 0.78939400000000004
	.quad	0x3ffc7122b7baecd0              # double 1.7776209999999999
	.quad	0x4019a59ea57214f0              # double 6.4117379999999997
	.quad	0x4002128848387df6              # double 2.2590490000000001
	.quad	0x402290e2c12ad81b              # double 9.2829800000000002
	.quad	0x40223b4d6a161e4f              # double 9.1158249999999992
	.quad	0x401db6134ce3de61              # double 7.4278079999999997
	.quad	0x3ffc310342aa9f7b              # double 1.7619659999999999
	.quad	0x400f5a16e7a311e8              # double 3.9189889999999998
	.quad	0x40222808205ff1d8              # double 9.0781869999999998
	.quad	0x4001800a7c5ac472              # double 2.1875200000000001
	.quad	0x401185ed4a1ad645              # double 4.3807879999999999
	.quad	0x40130e618ce2d1f2              # double 4.7640440000000002
	.quad	0x400f24d12018a43c              # double 3.8929770000000001
	.quad	0x4022bf5cf2495e18              # double 9.3737560000000001
	.quad	0x4019ae0ac7da1ec5              # double 6.4199630000000001
	.quad	0x40122e4ead0c3d25              # double 4.5452219999999999
	.quad	0x401c2e3c536d655e              # double 7.0451519999999999
	.quad	0x401c7bddb9841aac              # double 7.1209629999999997
	.quad	0x4023c36390c91080              # double 9.8816190000000006
	.quad	0x400cc7b0b3919264              # double 3.597505
	.quad	0x3ff0c35efa615a8e              # double 1.047698
	.quad	0x40183ae924f227d0              # double 6.0575299999999999
	.quad	0x401070ff10ecb74e              # double 4.1103480000000001
	.quad	0x401a68027d88c1db              # double 6.601572
	.quad	0x4010c7574f722e1b              # double 4.1946690000000002
	.quad	0x3ff6b9c51dabe271              # double 1.4203539999999999
	.quad	0x401d473860999dcb              # double 7.3195509999999997
	.quad	0x401ba5197a24894c              # double 6.9112299999999998
	.quad	0x3fffa6fd651b0ccc              # double 1.9782690000000001
	.quad	0x4005d5c28f5c28f6              # double 2.7293750000000001
	.quad	0x4015b3a2df9378ee              # double 5.4254259999999999
	.quad	0x401c9018611fd588              # double 7.1407179999999997
	.quad	0x3ff58055fbb517a4              # double 1.3438319999999999
	.quad	0x3fcd784662bae03b              # double 0.23023299999999999
	.quad	0x4018c604189374bc              # double 6.1933749999999996
	.quad	0x40218832b990afe6              # double 8.7660119999999999
	.quad	0x40045c200c0f01fc              # double 2.5449830000000002
	.quad	0x3ff27a9d1f601798              # double 1.154935
	.quad	0x3ff3777af640639d              # double 1.2166699999999999
	.quad	0x400442d5171e29b7              # double 2.5326330000000001
	.quad	0x4021d1c90c4dec1c              # double 8.9097369999999997
	.quad	0x401707be553ac4f8              # double 5.7575620000000001
	.quad	0x40132e757928e0ca              # double 4.7953700000000001
	.quad	0x402134ba732df506              # double 8.6029850000000003
	.quad	0x3fc758fb43d89ce5              # double 0.18240300000000001
	.quad	0x402156440f238972              # double 8.668488
	.quad	0x4018ce2f7b17ce53              # double 6.2013530000000001
	.quad	0x401df666a98244e9              # double 7.4906259999999997
	.quad	0x40180c21187e7c07              # double 6.0118450000000001
	.quad	0x4019ef15e7c8d196              # double 6.4834820000000004
	.quad	0x4014f6805a2d7300              # double 5.2407240000000002
	.quad	0x4023c0d10f51ac9b              # double 9.876595
	.quad	0x401911c193b3a68b              # double 6.2673399999999999
	.quad	0x4002b21682f94424              # double 2.336957
	.quad	0x401982c9d16fc9bc              # double 6.3777229999999996
	.quad	0x4016c56da0168b5d              # double 5.6928010000000002
	.quad	0x401ef8198f1d3ed5              # double 7.7422849999999998
	.quad	0x402115d76683c298              # double 8.5426590000000004
	.quad	0x4002565fd8adab9f              # double 2.2921749999999999
	.quad	0x40164ba4d6e47dc3              # double 5.5738709999999996
	.quad	0x40212701fb82c2bd              # double 8.5761869999999991
	.quad	0x3ff1c3e74afd5454              # double 1.110328
	.quad	0x401aae92923e5b85              # double 6.6704809999999997
	.quad	0x402384e39b456b44              # double 9.7595489999999998
	.quad	0x3ff2af49cf56eac8              # double 1.1677949999999999
	.quad	0x40215ce95faa8a83              # double 8.6814680000000006
	.quad	0x40143f505d0fa58f              # double 5.0618299999999996
	.quad	0x400c83393ab430f5              # double 3.5640740000000002
	.quad	0x40091fe2a3cea6c2              # double 3.1405690000000002
	.quad	0x3fecc8711d798d8b              # double 0.89946800000000005
	.quad	0x4004f5c0fcb4f1e5              # double 2.6199970000000001
	.quad	0x3fecb01eabbcb1cd              # double 0.89649900000000005
	.quad	0x3ffb610be9424e59              # double 1.711193
	.quad	0x400a0a12f901083e              # double 3.2549190000000001
	.quad	0x3fed7c71d6063172              # double 0.92144099999999995
	.quad	0x40087735c182ecaf              # double 3.058208
	.quad	0x4018e17efe0ce0b9              # double 6.2202109999999999
	.quad	0x3fb08c7192ea52f0              # double 0.064643000000000006
	.quad	0x4023ad3a81dc0db2              # double 9.8383369999999992
	.quad	0x401e826bb55ac040              # double 7.627364
	.quad	0x40236327aa68f4b6              # double 9.6936619999999998
	.quad	0x400adb3e9a6f826f              # double 3.3570530000000001
	.quad	0x40107789613d31ba              # double 4.1167350000000003
	.quad	0x3fc4238da3c21188              # double 0.157335
	.quad	0x4023d2771c970f7c              # double 9.9110650000000006
	.quad	0x401adf826edaa92e              # double 6.7182709999999997
	.quad	0x40052c0df58c08b7              # double 2.6465109999999998
	.quad	0x401bfaeea63b688c              # double 6.9950510000000001
	.quad	0x401b561f9f01b867              # double 6.8341050000000001
	.quad	0x4002631f03d145d8              # double 2.2983989999999999
	.quad	0x400cd1dde37585be              # double 3.602474
	.quad	0x401fa62ed352220c              # double 7.9122880000000002
	.quad	0x3ffb9efa615a8deb              # double 1.726313
	.quad	0x400230ec31162281              # double 2.2738879999999999
	.quad	0x40206df505d0fa59              # double 8.2147600000000001
	.quad	0x40013023e9ea1405              # double 2.1485059999999998
	.quad	0x402338474d9c6b05              # double 9.6099189999999996
	.quad	0x401a533e35c5b4ab              # double 6.5812920000000004
	.quad	0x401e17f498c3b0c4              # double 7.5233939999999997
	.quad	0x401018f32378ab0d              # double 4.0243650000000004
	.quad	0x4000f5fc3b4f6167              # double 2.1201099999999999
	.quad	0x40207a0c282c6ef4              # double 8.2383740000000003
	.quad	0x401596a9c560c7c1              # double 5.397132
	.quad	0x3ffd685db76b3bb8              # double 1.8379799999999999
	.quad	0x400b321815a07b35              # double 3.3994599999999999
	.quad	0x4007127c39368273              # double 2.884026
	.quad	0x4007a8fe260b2c84              # double 2.957516
	.quad	0x402033aeab7995ee              # double 8.1009419999999999
	.quad	0x3ff890a350d2806b              # double 1.535312
	.quad	0x4021424c404a72eb              # double 8.6294880000000003
	.quad	0x4007c5c358afc47e              # double 2.9715639999999999
	.quad	0x40157d9b1b79d90a              # double 5.372662
	.quad	0x4013c241c3efae79              # double 4.9397039999999999
	.quad	0x3ffc7faf42784a94              # double 1.7811729999999999
	.quad	0x40235f25c3dee782              # double 9.6858350000000009
	.quad	0x4013988ace24bba1              # double 4.8989669999999998
	.quad	0x40200307f23cc8de              # double 8.0059199999999997
	.quad	0x3fd71ff7164c729f              # double 0.36132599999999998
	.quad	0x4016662845996745              # double 5.5997630000000003
	.quad	0x3ff9d0f94c87980f              # double 1.6135189999999999
	.quad	0x400d68d64d7f0ed4              # double 3.6761900000000001
	.quad	0x4010e96e158750c2              # double 4.2279590000000002
	.quad	0x3fd469be09bb6aa5              # double 0.31895400000000002
	.quad	0x401da61b2a27f1b7              # double 7.4122130000000004
	.quad	0x4021917a67a52ac7              # double 8.7841369999999994
	.quad	0x3ffb0b6f9fcb0c02              # double 1.6902919999999999
	.quad	0x3fe6473abc947065              # double 0.69619500000000001
	.quad	0x4010cb474107314d              # double 4.1985140000000003
	.quad	0x401bd5a63f9a49c3              # double 6.9586420000000002
	.quad	0x3fe67caa7589efd8              # double 0.70271799999999995
	.quad	0x401d525918a009f6              # double 7.3304179999999999
	.quad	0x3fdff1e0828c36db              # double 0.49913800000000003
	.quad	0x40104405f6ba0621              # double 4.0664290000000003
	.quad	0x401f9a6b0d9513f9              # double 7.9007990000000001
	.quad	0x401f180a5accd530              # double 7.7734769999999997
	.quad	0x4011724af0bf1a5d              # double 4.3616140000000003
	.quad	0x3ff21908e581cf78              # double 1.1311119999999999
	.quad	0x401aecf4a558ea7d              # double 6.7314020000000001
	.quad	0x3ffcc5c78a6dacac              # double 1.7982860000000001
	.quad	0x4021619806f26289              # double 8.6906130000000008
	.quad	0x4001d2ecf2064239              # double 2.2279909999999998
	.quad	0x401f079fa97e132b              # double 7.7574449999999997
	.quad	0x401d88ace24bba13              # double 7.3834720000000003
	.quad	0x400ef6ce789e774f              # double 3.870511
	.quad	0x40203da8deb0fadf              # double 8.1204289999999997
	.quad	0x401fc7a2cecc814d              # double 7.9449569999999996
	.quad	0x4002a55b89939219              # double 2.3307410000000002
	.quad	0x40147ad31fcd24e1              # double 5.1199459999999997
	.quad	0x401105974e65bea1              # double 4.2554600000000002
	.quad	0x4014938de6ddf00b              # double 5.1440960000000002
	.quad	0x40237d47bedb7282              # double 9.744688
	.quad	0x40033ebc83a96d4c              # double 2.4056329999999999
	.quad	0x401539ea14057082              # double 5.3065569999999997
	.quad	0x402303d87b56b873              # double 9.5075109999999991
	.quad	0x40211b43fa2ad3e9              # double 8.5532529999999998
	.quad	0x400f8e8ea39c51db              # double 3.9446080000000001
	.quad	0x401f95e5f30e7ff6              # double 7.8963850000000004
	.quad	0x401023ca31e7d999              # double 4.0349510000000004
	.quad	0x3ff99b0bbf50e347              # double 1.6003529999999999
	.quad	0x401302784a9478c8              # double 4.7524119999999996
	.quad	0x3fe57c3d68405b3a              # double 0.67141600000000001
	.quad	0x401372ecaeea63b7              # double 4.8622310000000004
	.quad	0x4016ae90364388ec              # double 5.6704720000000002
	.quad	0x40042b2a6b0d9514              # double 2.521077
	.quad	0x401e92d948dc11e4              # double 7.6434069999999998
	.quad	0x4018676922d948dc              # double 6.1009869999999999
	.quad	0x400345ccc89b0ee5              # double 2.4090820000000002
	.quad	0x4023a449fd7a13c2              # double 9.8208769999999994
	.quad	0x4021053e0bd44999              # double 8.5102390000000003
	.quad	0x40235fb45f17bd8c              # double 9.6869230000000001
	.quad	0x4011f33333333333              # double 4.4874999999999998
	.quad	0x3ff7fe4bcad9ad86              # double 1.499584
	.quad	0x4022c5a554b8bef9              # double 9.3860270000000003
	.quad	0x3ffa04e1e71044f2              # double 1.6261920000000001
	.quad	0x4022fdc37a3db3c0              # double 9.4956320000000005
	.quad	0x3ffdc4fd2a62aa19              # double 1.8605929999999999
	.quad	0x401405f5f0b28523              # double 5.0058210000000001
	.quad	0x4021e21ea35935fc              # double 8.9416399999999995
	.quad	0x4008a03686a4ca4f              # double 3.0782289999999999
	.quad	0x4000d57ff9b56324              # double 2.1042480000000001
	.quad	0x401c08ed5f138bce              # double 7.008718
	.quad	0x4021f957470eb24a              # double 8.9869939999999993
	.quad	0x401030856e696a27              # double 4.0473840000000001
	.quad	0x401d845f5ad96a6a              # double 7.37927
	.quad	0x3fb59a95421c0443              # double 0.084390000000000007
	.quad	0x3fcd0a137f38c543              # double 0.22686999999999999
	.quad	0x40219c473cd57364              # double 8.8052309999999991
	.quad	0x3fe826b2f23033a4              # double 0.75472399999999995
	.quad	0x40206d7625204af9              # double 8.2137919999999998
	.quad	0x40055f7dfa00e27e              # double 2.671627
	.quad	0x3ff51ecb31c219eb              # double 1.3200179999999999
	.quad	0x3ffa151e75360d02              # double 1.6301559999999999
	.quad	0x401564141e9af5ba              # double 5.3477329999999998
	.quad	0x401add173fb7a5f4              # double 6.7159089999999999
	.quad	0x4021c488c60cbf2b              # double 8.8838559999999998
	.quad	0x40118544fe36d224              # double 4.3801459999999999
	.quad	0x3fc675f6fd21ff2e              # double 0.17547499999999999
	.quad	0x400c42877ee4e26d              # double 3.5324849999999999
	.quad	0x401c68a8f3a9b068              # double 7.1022069999999999
	.quad	0x4012cd19157abb88              # double 4.700291
	.quad	0x401d61c5c5718eb9              # double 7.3454810000000004
	.quad	0x4008f2be48a58b3f              # double 3.1185269999999998
	.quad	0x3fdc074a771c970f              # double 0.43794499999999997
	.quad	0x401ccaafff36ac64              # double 7.1979369999999996
	.quad	0x401c4560c7c0f451              # double 7.0677519999999996
	.quad	0x3ff2d8537e2c55c9              # double 1.1778139999999999
	.quad	0x401b9cdbbe0157ef              # double 6.9031820000000002
	.quad	0x4011b14e7ee9142b              # double 4.4231509999999998
	.quad	0x401220e496ededaf              # double 4.5321220000000002
	.quad	0x40218896bb98c7e3              # double 8.7667750000000009
	.quad	0x3ff8736049ecb31c              # double 1.528168
	.quad	0x402224ee7c49fd7a              # double 9.0721319999999999
	.quad	0x402146e86c6583e8              # double 8.6384919999999994
	.quad	0x3ffb38ae31d712a1              # double 1.701338
	.quad	0x40233afd976ff3ae              # double 9.6152160000000002
	.quad	0x40148052934acaff              # double 5.1253149999999996
	.quad	0x3ff07bf2f5558213              # double 1.0302610000000001
	.quad	0x3fcb25edd052934b              # double 0.21209500000000001
	.quad	0x40210b84db9c7369              # double 8.5224980000000006
	.quad	0x3fe3e07e5a78f25a              # double 0.62115399999999998
	.quad	0x402322413db7f173              # double 9.5669039999999991
	.quad	0x3ff7262131a8ef78              # double 1.446809
	.quad	0x401a2a3f034b0e1b              # double 6.5412559999999997
	.quad	0x400882adc4c9c90c              # double 3.0638079999999999
	.quad	0x3fee08effe2a3cea              # double 0.93859099999999995
	.quad	0x4001724af0bf1a5d              # double 2.1808070000000002
	.quad	0x3fe9b2bdc26dce3a              # double 0.80306900000000003
	.quad	0x4001a5015c209247              # double 2.2055690000000001
	.quad	0x3fd3d4067cf1c326              # double 0.30981599999999998
	.quad	0x4010f82cf52b90a8              # double 4.2423590000000004
	.quad	0x4009f7f950b955f8              # double 3.2460810000000002
	.quad	0x4021a11622813448              # double 8.814622
	.quad	0x3fc23c105186db51              # double 0.142458
	.quad	0x40011f4c2b51bd62              # double 2.140282
	.quad	0x4018cdad31fcd24e              # double 6.2008559999999999
	.quad	0x3fe05b7281fd9ba2              # double 0.51116300000000003
	.quad	0x4014964a59c065b6              # double 5.1467679999999998
	.quad	0x3fb88b97785729b3              # double 0.095880000000000007
	.quad	0x402111615ebfa8f8              # double 8.5339460000000003
	.quad	0x401fbfb2edfe75bc              # double 7.9372059999999998
	.quad	0x3fc27381d7dbf488              # double 0.14415
	.quad	0x400a672862f5989e              # double 3.30037
	.quad	0x40234359146e4c0e              # double 9.6315390000000001
	.quad	0x402192cbc8c0ce92              # double 8.7867110000000004
	.quad	0x400097c6fbd273d6              # double 2.0741100000000001
	.quad	0x4010e0a5accd5305              # double 4.2193820000000004
	.quad	0x4014a9bae46cfc83              # double 5.1657520000000003
	.quad	0x402308574b407033              # double 9.5162910000000007
	.quad	0x40154a450acc0bdd              # double 5.3225290000000003
	.quad	0x4023a97891e21533              # double 9.8309979999999992
	.quad	0x40237969c23b7953              # double 9.7371350000000003
	.quad	0x4019705c03361566              # double 6.3597260000000002
	.quad	0x4012c6ea854477ff              # double 4.6942539999999999
	.quad	0x400bc74c8ffb8b26              # double 3.4723139999999999
	.quad	0x401369b1b79d909f              # double 4.8532169999999999
	.quad	0x3f6f666234a87e39              # double 0.003833
	.quad	0x401a2d12cadddf44              # double 6.5440170000000002
	.quad	0x402281eeed8904f7              # double 9.2537760000000002
	.quad	0x401e132873bc903f              # double 7.5187090000000003
	.quad	0x4021b9c8eabffcdb              # double 8.8628610000000005
	.quad	0x4016c7353b4b2fa9              # double 5.6945389999999998
	.quad	0x40075867f0aa21a7              # double 2.918167
	.quad	0x3ffea435696e58a3              # double 1.91509
	.quad	0x400c913c68661ae7              # double 3.570916
	.quad	0x400cfd56f32bdc27              # double 3.6237010000000001
	.quad	0x402248aa64c2f838              # double 9.1419250000000005
	.quad	0x400135b813016484              # double 2.15123
	.quad	0x401b6792d1287c20              # double 6.851146
	.quad	0x4001c73f748a1598              # double 2.222289
	.quad	0x401866a619da9c99              # double 6.1002429999999999
	.quad	0x400fd39085f4a127              # double 3.9783029999999999
	.quad	0x4017037da61e0c5b              # double 5.7534090000000004
	.quad	0x401951d6cf850df1              # double 6.3299209999999997
	.quad	0x4014f09edbf8b9bb              # double 5.2349810000000003
	.quad	0x400e66efc371da38              # double 3.800262
	.quad	0x4020bcbe40420f6f              # double 8.3686389999999999
	.quad	0x3ff1bcee9dd7ecbb              # double 1.1086259999999999
	.quad	0x4022679702e6644e              # double 9.2023240000000008
	.quad	0x402094a18bd66278              # double 8.2902950000000004
	.quad	0x4020f065f9591cd2              # double 8.4695280000000004
	.quad	0x4015524031487768              # double 5.3303229999999999
	.quad	0x4020c1800a7c5ac4              # double 8.3779299999999992
	.quad	0x3feb47d3d4280ae1              # double 0.852518
	.quad	0x402075a16616b54e              # double 8.2297469999999997
	.quad	0x3fffa503fb374363              # double 1.977787
	.quad	0x3fe652b0a6fc58ac              # double 0.69759400000000005
	.quad	0x4020c813660e51d2              # double 8.3907729999999994
	.quad	0x40184eba6aca7935              # double 6.0768829999999996
	.quad	0x40158bbdbe3c1052              # double 5.3864660000000004
	.quad	0x3ff1669595feda66              # double 1.087545
	.quad	0x40086415f45e0b4e              # double 3.04887
	.quad	0x4022b50678c0053e              # double 9.3535649999999997
	.quad	0x3fc76f3b213e3e29              # double 0.18308199999999999
	.quad	0x4020d8f14db59579              # double 8.4237160000000006
	.quad	0x3fff2bce8533b107              # double 1.9481949999999999
	.quad	0x40229231c64ba94c              # double 9.2855360000000004
	.quad	0x400c05aa2e3c536d              # double 3.5027659999999998
	.quad	0x402334be835dedf2              # double 9.6030160000000002
	.quad	0x400319b90ea9e6ef              # double 2.3875600000000001
	.quad	0x4023bc801f75104d              # double 9.8681649999999994
	.quad	0x40211080d801b435              # double 8.5322329999999997
	.quad	0x3fe1ee2435696e59              # double 0.56032000000000004
	.quad	0x401758398a654930              # double 5.836157
	.quad	0x401ff39192641b33              # double 7.9878600000000004
	.quad	0x4021d5ece5710881              # double 8.9178230000000003
	.quad	0x3fec80431bde82d8              # double 0.89065700000000003
	.quad	0x401a252263d816ad              # double 6.5362640000000001
	.quad	0x400cb76145953587              # double 3.5895410000000001
	.quad	0x4016e522a6f3f530              # double 5.7237650000000002
	.quad	0x400e65ef62f9ca5c              # double 3.7997730000000001
	.quad	0x3ffeaac753e707e1              # double 1.9166939999999999
	.quad	0x3ff224a8c154c986              # double 1.13395
	.quad	0x3fe3433721d53cde              # double 0.60195500000000002
	.quad	0x4016a25460aa64c3              # double 5.658525
	.quad	0x4019431ca7d6733f              # double 6.3155390000000002
	.quad	0x3fd1fcb4f1e4b44a              # double 0.28104899999999999
	.quad	0x40053524bfd2e947              # double 2.6509490000000002
	.quad	0x40192b5393250b52              # double 6.2923109999999998
	.quad	0x401e521dda059a74              # double 7.5801920000000003
	.quad	0x3fd6afa7221858bc              # double 0.35447099999999998
	.quad	0x40091daf07bfe7e2              # double 3.139494
	.quad	0x4019e18dac258d58              # double 6.4702669999999998
	.quad	0x4023b079e59f2baa              # double 9.8446800000000003
	.quad	0x4021bc213a0c6b48              # double 8.8674409999999995
	.quad	0x402016468cac4b4d              # double 8.043507
	.quad	0x40230bda2f8bdec6              # double 9.5231490000000001
	.quad	0x401d7fffbce4217d              # double 7.3749989999999999
	.quad	0x40201de74299d884              # double 8.0584050000000004
	.quad	0x40190fab10ba6267              # double 6.265301
	.quad	0x4016e2339c0ebee0              # double 5.7209000000000003
	.quad	0x401aab70691ea78b              # double 6.667421
	.quad	0x3fe06657b84db9c7              # double 0.51249299999999998
	.quad	0x401e5110a137f38c              # double 7.5791649999999997
	.quad	0x401e981e4712e408              # double 7.6485529999999997
	.quad	0x3fe6d5a187a4a490              # double 0.71357800000000005
	.quad	0x3ff9c8df37329c34              # double 1.6115409999999999
	.quad	0x401db31769a91106              # double 7.4248940000000001
	.quad	0x401463b688bda943              # double 5.0973759999999997
	.quad	0x4019918a86d71f36              # double 6.3921299999999999
	.quad	0x4022849081c2e33f              # double 9.258915
	.quad	0x3fe87f8ec0f88334              # double 0.765571
	.quad	0x4006bd2849cb252d              # double 2.8423620000000001
	.quad	0x4016bd8e0008637c              # double 5.6851120000000002
	.quad	0x401c50379314445b              # double 7.0783370000000003
	.quad	0x3ff6cf9f44d44567              # double 1.425689
	.quad	0x4023f916872b020c              # double 9.9864999999999994
	.quad	0x4003f4a6eb91b3f2              # double 2.494459
	.quad	0x401bf64d3bf2f556              # double 6.9905290000000004
	.quad	0x4017eeb4202d9cf1              # double 5.9831089999999998
	.quad	0x4011aa5bd944aa54              # double 4.416366
	.quad	0x3fd30068db8bac71              # double 0.2969
	.quad	0x401cc27f5e84f095              # double 7.1899389999999999
	.quad	0x400b42dc6e2a8006              # double 3.4076469999999999
	.quad	0x401b8a8869c66d37              # double 6.8852859999999998
	.quad	0x3fc80c1fc8f32379              # double 0.18787000000000001
	.quad	0x3f72eb5f5f0b2852              # double 0.0046189999999999998
	.quad	0x4023743ed959a30a              # double 9.7270420000000009
	.quad	0x4020d50e779207d5              # double 8.4161260000000002
	.quad	0x3fe9253fc0096feb              # double 0.78579699999999997
	.quad	0x401942d83c6c97d9              # double 6.3152780000000002
	.quad	0x401b3177ea1c68ec              # double 6.7983089999999997
	.quad	0x4013a5058dde7a74              # double 4.9111539999999998
	.quad	0x3fafc243dccea290              # double 0.062029000000000001
	.quad	0x401c1c621b7e0ac8              # double 7.0277180000000001
	.quad	0x4022d7f21b3aeee9              # double 9.4217689999999993
	.quad	0x40047cdfefbf401c              # double 2.5609739999999999
	.quad	0x401d79acffa7eb6c              # double 7.368824
	.quad	0x3ff5e75bc44bf4cb              # double 1.368984
	.quad	0x4020e3dab5c39bcc              # double 8.4450280000000006
	.quad	0x40187ec84f8f8a4c              # double 6.1238109999999999
	.quad	0x3fc6496ededaec4a              # double 0.17411599999999999
	.quad	0x4023a97ca2120e1f              # double 9.8310289999999991
	.quad	0x401968aeb80ecfa7              # double 6.3522290000000003
	.quad	0x400d9395c4220360              # double 3.697063
	.quad	0x40236893532e7b3e              # double 9.7042490000000008
	.quad	0x400a0e6d9be4cd75              # double 3.2570450000000002
	.quad	0x401d45e892253112              # double 7.3182700000000001
	.quad	0x3fdf43a647fdc593              # double 0.48850399999999999
	.quad	0x4015939d1b2e59b0              # double 5.3941540000000003
	.quad	0x4013401711947cfa              # double 4.8125879999999999
	.quad	0x4014264a59c065b6              # double 5.0373929999999998
	.quad	0x401574ed6fda836f              # double 5.3641870000000003
	.quad	0x401fb735c182ecaf              # double 7.928916
	.quad	0x3ffbb4299d883ba3              # double 1.7314849999999999
	.quad	0x4006d8db4890928a              # double 2.8558870000000001
	.quad	0x40199ca1059ea572              # double 6.4029579999999999
	.quad	0x401a69f383f0bae9              # double 6.6034680000000003
	.quad	0x3ff7648a58b3f63c              # double 1.462046
	.quad	0x400b0af89c5e6ff8              # double 3.3803570000000001
	.quad	0x4022b841ede1198b              # double 9.3598780000000001
	.quad	0x3fe01a1db877ab32              # double 0.50318799999999997
	.quad	0x400b8858793dd97f              # double 3.4415749999999998
	.quad	0x3fffbdcbddb9841b              # double 1.9838370000000001
	.quad	0x4015801a36e2eb1c              # double 5.3750999999999998
	.quad	0x3ffe3edd8b60f1b2              # double 1.8903479999999999
	.quad	0x4023b70e6f2e8c05              # double 9.8575320000000008
	.quad	0x400c4153bd167664              # double 3.531898
	.quad	0x4020b4fe154434e3              # double 8.3535009999999996
	.quad	0x402043465625a683              # double 8.1313960000000005
	.quad	0x3fe64fd2a62aa194              # double 0.69724399999999997
	.quad	0x400522edbb59ddc2              # double 2.642055
	.quad	0x4022b2ee631f8a09              # double 9.349475
	.quad	0x402255fd04a2fcf0              # double 9.1679460000000006
	.quad	0x4023fd72799a1fd1              # double 9.9950139999999993
	.quad	0x4013539f77292c49              # double 4.8316629999999998
	.quad	0x40120979e16d6dc2              # double 4.5092540000000003
	.quad	0x3fedfadf2ecf2064              # double 0.93687399999999998
	.quad	0x3fe168c8abd5dc40              # double 0.544041
	.quad	0x4018f7ff9b56323c              # double 6.2421860000000002
	.quad	0x40206110e453d20f              # double 8.1895819999999997
	.quad	0x3ff23d50225742dd              # double 1.139969
	.quad	0x3ff45471715c63ae              # double 1.270616
	.quad	0x3fe22fe82517e77d              # double 0.56834799999999996
	.quad	0x4018f391d57ff9b5              # double 6.2378609999999997
	.quad	0x3ffc1a0f0a5efe93              # double 1.756362
	.quad	0x40148bdb1a6d6990              # double 5.1365780000000001
	.quad	0x401972d948dc11e4              # double 6.3621569999999998
	.quad	0x4011382a5614df8b              # double 4.3048489999999999
	.quad	0x400aacc3e3193f6c              # double 3.3343579999999999
	.quad	0x4018fb2dd377e1b9              # double 6.2452920000000001
	.quad	0x40200e15ca6ca03c              # double 8.0275099999999994
	.quad	0x4003a57afea3df6e              # double 2.4558010000000001
	.quad	0x4019276d97b30f8c              # double 6.2885039999999996
	.quad	0x3ff72b7132724313              # double 1.4481059999999999
	.quad	0x4010c71f36262cba              # double 4.1944549999999996
	.quad	0x40045cd24e160d88              # double 2.5453229999999998
	.quad	0x4023a4c61d8622c4              # double 9.8218239999999994
	.quad	0x401e197f62b6ae7d              # double 7.5248999999999997
	.quad	0x40215e33acd5b680              # double 8.6839879999999994
	.quad	0x3fe36a2f48c2e771              # double 0.60671200000000003
	.quad	0x3fefa250f840181e              # double 0.988564
	.quad	0x40125144cbe1eb42              # double 4.579364
	.quad	0x4021e4358afc47e5              # double 8.9457210000000007
	.quad	0x4012e78feef5ec81              # double 4.7261350000000002
	.quad	0x401aca372606fac6              # double 6.697476
	.quad	0x400dd69878316a05              # double 3.7297829999999998
	.quad	0x40233465e8922531              # double 9.6023399999999998
	.quad	0x4010c18e325d4a5e              # double 4.189019
	.quad	0x402083e22e5de15d              # double 8.2575850000000006
	.quad	0x4018063cb8173322              # double 6.0060909999999996
	.quad	0x400a99dc2f405f6c              # double 3.3251270000000002
	.quad	0x4022bd668c261390              # double 9.369923
	.quad	0x4002de5082cf52b9              # double 2.358552
	.quad	0x40126357e670e2c1              # double 4.5970149999999999
	.quad	0x401d4942d490e66d              # double 7.3215440000000003
	.quad	0x40164ab3aabcd78c              # double 5.5729509999999998
	.quad	0x4007364bec679cc7              # double 2.9015119999999999
	.quad	0x3fe4f81e8a2ec28b              # double 0.65528799999999998
	.quad	0x40200a3b9ae0c176              # double 8.0199859999999994
	.quad	0x40216de39713ad5c              # double 8.7146270000000001
	.quad	0x3ff0d86ec17ebaf1              # double 1.05284
	.quad	0x401901c6d1e108c4              # double 6.251735
	.quad	0x4021e91ab8e8ea3a              # double 8.9552820000000004
	.quad	0x401841697f1f9ad0              # double 6.063879
	.quad	0x401f679d909f1f15              # double 7.8511870000000003
	.quad	0x40196817763e4abe              # double 6.3516519999999996
	.quad	0x40149b5d894812be              # double 5.1517239999999997
	.quad	0x4003af9fcb0c026d              # double 2.4607540000000001
	.quad	0x4021fad4f5903a75              # double 8.9899059999999995
	.quad	0x400e2a3161a1db87              # double 3.7706019999999998
	.quad	0x402326019b0ab2e1              # double 9.5742309999999992
	.quad	0x40216eb7cbb3c819              # double 8.7162459999999999
	.quad	0x401f26dacabc5155              # double 7.7879440000000004
	.quad	0x40039660e51d25ab              # double 2.4484270000000001
	.quad	0x400627cbf6e3f78c              # double 2.7694320000000001
	.quad	0x40210af294dd7236              # double 8.5213819999999991
	.quad	0x40180ee78183f91e              # double 6.0145549999999997
	.quad	0x4013cb9baa1511e0              # double 4.948836
	.quad	0x3ff73e76c8b43958              # double 1.45275
	.quad	0x40055e0157eed45f              # double 2.6709010000000002
	.quad	0x3ff516d4c33b5393              # double 1.318074
	.quad	0x4018761565c2d278              # double 6.115316
	.quad	0x400e6d634549b62c              # double 3.8034119999999998
	.quad	0x3febf0d62bf11f92              # double 0.87314899999999995
	.quad	0x4018d1b3aeee9574              # double 6.2047869999999996
	.quad	0x3fd5c165907d9125              # double 0.33992899999999998
	.quad	0x4008c3b2dd377e1c              # double 3.0955560000000002
	.quad	0x40075840181e03f7              # double 2.918091
	.quad	0x401a3b3d8e000863              # double 6.5578519999999996
	.quad	0x40170e41d4b6a61a              # double 5.7639230000000001
	.quad	0x3fe9629307af20ea              # double 0.79328299999999996
	.quad	0x400ddbb0e5e67946              # double 3.7322709999999999
	.quad	0x401bfb54195cc858              # double 6.995438
	.quad	0x401aa8997c3d6840              # double 6.6646479999999997
	.quad	0x401201fddebd9019              # double 4.5019450000000001
	.quad	0x401b76f7a0b5ed8d              # double 6.8661789999999998
	.quad	0x4006819f3c70c997              # double 2.8132920000000001
	.quad	0x4020cd785f8d2e51              # double 8.4013089999999995
	.quad	0x40150b545c78a6db              # double 5.2610640000000002
	.quad	0x4013b871a3b14a90              # double 4.9301209999999998
	.quad	0x40136f02c4d65e46              # double 4.858409
	.quad	0x4003c20bc382a130              # double 2.4697490000000002
	.quad	0x4020a5857afea3df              # double 8.3232839999999992
	.quad	0x401cc556084a515d              # double 7.1927110000000001
	.quad	0x4021055d5f56a7ad              # double 8.5104780000000009
	.quad	0x4023b81040bfe3b0              # double 9.8594989999999996
	.quad	0x3ff2e76102795704              # double 1.181489
	.quad	0x4022442480e8c8ac              # double 9.1330910000000002
	.quad	0x401ec6fcdee34fc6              # double 7.6943239999999999
	.quad	0x3ff7866d373affb0              # double 1.4703189999999999
	.quad	0x4000a4545846e8f3              # double 2.0802390000000002
	.quad	0x400b9a83f4eca687              # double 3.450447
	.quad	0x40150595feda6613              # double 5.2554550000000004
	.quad	0x4011c8366516db0e              # double 4.4455200000000001
	.quad	0x3ff29132f87ad081              # double 1.1604490000000001
	.quad	0x40171c8f75536934              # double 5.7778910000000003
	.quad	0x401cece8101f31f4              # double 7.2313539999999996
	.quad	0x401bab6b2af14552              # double 6.9174009999999999
	.quad	0x3ff62ceee0f3cb3e              # double 1.3859699999999999
	.quad	0x400c7bbf93ff25e5              # double 3.5604239999999998
	.quad	0x3ffb3ae46cfc829d              # double 1.701878
	.quad	0x401e1d03d9a95422              # double 7.5283350000000002
	.quad	0x4020b04c6a3bddfd              # double 8.3443330000000007
	.quad	0x401b561309c7ffde              # double 6.8340569999999996
	.quad	0x3ff6f352a8438088              # double 1.4344049999999999
	.quad	0x4009430a0b1bbcf5              # double 3.157734
	.quad	0x40135c79702e6645              # double 4.8403070000000001
	.quad	0x401a5381d7dbf488              # double 6.58155
	.quad	0x400c9d46b26bf877              # double 3.5767950000000002
	.quad	0x4010a6e653868fd2              # double 4.1629880000000004
	.quad	0x401bf4562e09fe87              # double 6.9886100000000004
	.quad	0x3fe4d0c804102ff9              # double 0.65048600000000001
	.quad	0x3ff821554fbdad75              # double 1.508138
	.quad	0x3fe7568405b39e28              # double 0.72931100000000004
	.quad	0x40232868123810e9              # double 9.5789190000000008
	.quad	0x3fe492ba16e7a312              # double 0.64291100000000001
	.quad	0x3fd7bc23315d701e              # double 0.37085800000000002
	.quad	0x3febaf4f0d844d01              # double 0.86514999999999997
	.quad	0x4004eb3a2595bbbf              # double 2.6148570000000002
	.quad	0x40202c95e17e34b9              # double 8.0870809999999995
	.quad	0x3ff935350092ccf7              # double 1.5754900000000001
	.quad	0x3ff9a58e64b23140              # double 1.602919
	.quad	0x3fd58f96e158750c              # double 0.33688899999999999
	.quad	0x4020383a96d4c33b              # double 8.1098219999999994
	.quad	0x401dfe325d4a5df2              # double 7.4982389999999999
	.quad	0x4006baa8a82a5615              # double 2.8411420000000001
	.quad	0x402101886df82b1f              # double 8.5029939999999993
	.quad	0x402250a45d41fa76              # double 9.1575039999999994
	.quad	0x3ff831bac2df0d41              # double 1.512141
	.quad	0x3ff18c79f666234b              # double 1.0967960000000001
	.quad	0x4007f4cfd08d4bad              # double 2.9945369999999998
	.quad	0x4020d4a8e2e2b8c7              # double 8.4153509999999994
	.quad	0x4023736e2eb1c433              # double 9.7254500000000003
	.quad	0x400cebd6e8af8162              # double 3.6151559999999998
	.quad	0x401e9fb1183b6028              # double 7.6559489999999996
	.quad	0x401bdea140570825              # double 6.9674120000000004
	.quad	0x4020b59231c64ba9              # double 8.3546309999999995
	.quad	0x400a15a07b352a84              # double 3.2605599999999999
	.quad	0x4003a3f359ff4fd7              # double 2.4550540000000001
	.quad	0x3ffb808c8259e1f4              # double 1.7188840000000001
	.quad	0x401d5afbc1acde1a              # double 7.338851
	.quad	0x4015bf2dc2b0ea18              # double 5.4366979999999998
	.quad	0x4018a64628027d89              # double 6.1623770000000002
	.quad	0x40198efae7924af1              # double 6.3896290000000002
	.quad	0x4017c110a137f38c              # double 5.9385399999999997
	.quad	0x3ff436ff3ade2260              # double 1.2634270000000001
	.quad	0x40217fe43675ddd3              # double 8.7497880000000006
	.quad	0x3feb1a38fbca105a              # double 0.84695100000000001
	.quad	0x40211fdfa00e27e1              # double 8.5622530000000001
	.quad	0x400b3e81450efdca              # double 3.4055200000000001
	.quad	0x4011e853c148344c              # double 4.4768819999999998
	.quad	0x40207650a45d41fa              # double 8.2310839999999992
	.quad	0x3fc5c9d5a187a4a5              # double 0.17022200000000001
	.quad	0x401ae05143bf7271              # double 6.7190599999999998
	.quad	0x40116702a3486f05              # double 4.3505960000000004
	.quad	0x4021753cbc48f10b              # double 8.7289790000000007
	.quad	0x40206209cc319c5a              # double 8.1914809999999996
	.quad	0x4015bd77b7c7820a              # double 5.4350269999999998
	.quad	0x3ff0025072085b18              # double 1.0005649999999999
	.quad	0x3ff80b545c78a6db              # double 1.502766
	.quad	0x40237fad6cb53501              # double 9.7493700000000007
	.quad	0x3ffd05f9df548ece              # double 1.8139590000000001
	.quad	0x40086a8c9b845565              # double 3.0520260000000001
	.quad	0x40067f3b645a1cac              # double 2.812125
	.quad	0x401c91b97353b4b3              # double 7.142309
	.quad	0x400ed9ae924f227d              # double 3.85629
	.quad	0x3ff68eb463497b74              # double 1.40984
	.quad	0x4018a98bf7f06706              # double 6.1655730000000002
	.quad	0x3fd5461309c7ffde              # double 0.33240199999999998
	.quad	0x4020b5bfceb78898              # double 8.3549790000000002
	.quad	0x400f9729b280f12c              # double 3.9488099999999999
	.quad	0x400efdb2b346130a              # double 3.8738760000000001
	.quad	0x40177654d61b2a28              # double 5.865558
	.quad	0x4023ab2074ea8da8              # double 9.834232
	.quad	0x4022968c692f6e83              # double 9.2940400000000007
	.quad	0x401341d3671ac14c              # double 4.8142829999999996
	.quad	0x4020db71758e2196              # double 8.4285999999999994
	.quad	0x400644b5568e820e              # double 2.7835489999999998
	.quad	0x3fff3d72bcb5fe54              # double 1.952502
	.quad	0x4005afdb09a671ef              # double 2.7108669999999999
	.quad	0x3fe2e8dfbd6a593a              # double 0.59092699999999998
	.quad	0x401872a5e785b5b7              # double 6.111961
	.quad	0x3ff4dcd91eeaa6d2              # double 1.3039179999999999
	.quad	0x400ebdcb5781c715              # double 3.842673
	.quad	0x401877acc4ef88b9              # double 6.1168699999999996
	.quad	0x3ff3e5a469d7342f              # double 1.243565
	.quad	0x4014736c58eeae9f              # double 5.1127180000000001
	.quad	0x3fff5a6f826edaa9              # double 1.959579
	.quad	0x400aa99ae924f228              # double 3.3328150000000001
	.quad	0x40170b549f94855e              # double 5.7610650000000003
	.quad	0x4022c1550ca1cef2              # double 9.3776019999999995
	.quad	0x40167ef177a7008a              # double 5.6239679999999996
	.quad	0x4021afdf19d66adb              # double 8.8434989999999996
	.quad	0x40043490e66cb103              # double 2.5256669999999999
	.quad	0x3fface496ededaec              # double 1.6753629999999999
	.quad	0x3ff55551d68c692f              # double 1.3333299999999999
	.quad	0x401e4c193b3a68b2              # double 7.5743150000000004
	.quad	0x401b0d08919ef955              # double 6.7627280000000001
	.quad	0x4023835d249e44fa              # double 9.75657
	.quad	0x4005e901d19157ac              # double 2.7387730000000001
	.quad	0x40228f8f8a4c1ebd              # double 9.2803920000000009
	.quad	0x4020b0cdea033e79              # double 8.3453210000000002
	.quad	0x401a3d5e8d5410f9              # double 6.5599309999999997
	.quad	0x3ffc37ac3eb7cbb4              # double 1.763592
	.quad	0x401628216c61522a              # double 5.5391899999999996
	.quad	0x401039e5e2478855              # double 4.0565410000000002
	.quad	0x4008416c61522a6f              # double 3.0319449999999999
	.quad	0x401165d701d9f4d3              # double 4.3494529999999996
	.quad	0x40144d29563a9f38              # double 5.0753529999999998
	.quad	0x40221fa376922d95              # double 9.0617940000000008
	.quad	0x401c58c6d612c6ac              # double 7.0866959999999999
	.quad	0x400d6bc72e275ab8              # double 3.6776260000000001
	.quad	0x4000c142f61ed5ae              # double 2.0943659999999999
	.quad	0x400f75fc3b4f6167              # double 3.9326099999999999
	.quad	0x40109cc2938de6de              # double 4.1530860000000001
	.quad	0x3ff43177a7008a69              # double 1.2620769999999999
	.quad	0x40001846e8f29d41              # double 2.011854
	.quad	0x40006cb20fb224ab              # double 2.0530740000000001
	.quad	0x402368e6f2e8c048              # double 9.7048869999999993
	.quad	0x40018d5a5b9628cc              # double 2.1940200000000001
	.quad	0x4008b5dd4c76d118              # double 3.0888010000000001
	.quad	0x4016e7ef9db22d0e              # double 5.7264999999999997
	.quad	0x4020862888b545c8              # double 8.2620280000000008
	.quad	0x3ff913cab81f969e              # double 1.5673319999999999
	.quad	0x401b4b135979181a              # double 6.8233160000000002
	.quad	0x40202c36976bc1f0              # double 8.086354
	.quad	0x4015fd740c4156e2              # double 5.4975129999999996
	.quad	0x4011bb46fdeb52ca              # double 4.4328880000000002
	.quad	0x3fea4faacd9e83e4              # double 0.82222499999999998
	.quad	0x401e488f42fe8251              # double 7.5708589999999995
	.quad	0x4019e4bec679cc75              # double 6.4733840000000002
	.quad	0x4019fdfa871a3b15              # double 6.4980260000000003
	.quad	0x401fb3033a4723ab              # double 7.924817
	.quad	0x401f4a4a05dd8f93              # double 7.8225480000000002
	.quad	0x4019934d26fa3fcd              # double 6.3938490000000003
	.quad	0x4023993bc0a06ea0              # double 9.7992840000000001
	.quad	0x3ff4742bb6672fba              # double 1.278362
	.quad	0x401c50e5e679463d              # double 7.079002
	.quad	0x401a8289118c197e              # double 6.6274759999999997
	.quad	0x40226c393682730c              # double 9.2113739999999992
	.quad	0x401468d4fdf3b646              # double 5.1023750000000003
	.quad	0x4015ccc25072085b              # double 5.4499599999999999
	.quad	0x40179af5ba2be059              # double 5.9013280000000004
	.quad	0x400a3a76534373f3              # double 3.278546
	.quad	0x40193f4c6e6d9be5              # double 6.3118150000000002
	.quad	0x3fe1c1df3300de4c              # double 0.55491599999999996
	.quad	0x401884edf6124074              # double 6.1298139999999997
	.quad	0x401df7ed41b75a75              # double 7.4921160000000002
	.quad	0x402009d3cbc48f11              # double 8.0191940000000006
	.quad	0x40012c6bce8533b1              # double 2.14669
	.quad	0x4018955c96030c24              # double 6.145861
	.quad	0x3fc5917939a7c17b              # double 0.16850200000000001
	.quad	0x401a36f60e0eb67c              # double 6.5536729999999999
	.quad	0x4020fc964628027e              # double 8.4933340000000008
	.quad	0x401d31bbcf4e874d              # double 7.2985680000000004
	.quad	0x400a15781c714fce              # double 3.2604829999999998
	.quad	0x401a998fa376922e              # double 6.6499620000000004
	.quad	0x40082f0520d130e0              # double 3.0229590000000002
	.quad	0x40232fb45f17bd8c              # double 9.5931730000000001
	.quad	0x40212a4e379b77c0              # double 8.5826279999999997
	.quad	0x40182636b0963561              # double 6.037318
	.quad	0x402076fb6dca07f6              # double 8.2323869999999992
	.quad	0x400a2050374ff866              # double 3.2657780000000001
	.quad	0x401a493ff25e56cd              # double 6.5715329999999996
	.quad	0x40235b85c67dfe33              # double 9.6787550000000006
	.quad	0x401f26d938151a43              # double 7.7879379999999995
	.quad	0x4022f73a797891e2              # double 9.4828679999999999
	.quad	0x3feac63ae2541d8f              # double 0.83669800000000005
	.quad	0x3ff4ecb966be7afa              # double 1.3077939999999999
	.quad	0x3ffa53a92a305532              # double 1.6454249999999999
	.quad	0x3ffcfcdfefbf401c              # double 1.8117369999999999
	.quad	0x40220e64f54d1e97              # double 9.0281140000000004
	.quad	0x400ea78854cdb7ae              # double 3.8318029999999998
	.quad	0x3ffc51105e1c1509              # double 1.7697909999999999
	.quad	0x4021b220ddc61954              # double 8.8479069999999993
	.quad	0x401ac1dc0db2702a              # double 6.6893159999999998
	.quad	0x400d6cb5350092cd              # double 3.67808
	.quad	0x401099595feda661              # double 4.1497549999999999
	.quad	0x3fcf2849cb252ce0              # double 0.24341699999999999
	.quad	0x3fd7e76c8b439581              # double 0.3735
	.quad	0x40094a4f440af1cc              # double 3.1612840000000002
	.quad	0x402114ff21b3aeef              # double 8.5410090000000007
	.quad	0x3fea0d477bbf93ff              # double 0.81412099999999998
	.quad	0x401a0b4e54f7a919              # double 6.5110409999999996
	.quad	0x3ff6325c3dee7818              # double 1.3872949999999999
	.quad	0x400a15c209246bf0              # double 3.260624
	.quad	0x40069b8887229e90              # double 2.8259439999999998
	.quad	0x3ffb1148fd9fd36f              # double 1.6917199999999999
	.quad	0x40232a7ed84d338f              # double 9.5829989999999991
	.quad	0x4017c7d41743e964              # double 5.9451450000000001
	.quad	0x4013d197e5647347              # double 4.9546809999999999
	.quad	0x40109dc7ef177a70              # double 4.154083
	.quad	0x4019f23b7952d235              # double 6.4865550000000001
	.quad	0x401279131ec0b567              # double 4.6182369999999997
	.quad	0x3ff6667e846a5d6c              # double 1.400023
	.quad	0x400dc32d2bb23572              # double 3.7203010000000001
	.quad	0x40007610adcd2d45              # double 2.0576490000000001
	.quad	0x4014bd388a8b08dd              # double 5.1847859999999999
	.quad	0x40213925fe974a34              # double 8.6116179999999999
	.quad	0x4023c14141e9af5c              # double 9.8774510000000006
	.quad	0x401ab91a75cd0bb7              # double 6.6807650000000001
	.quad	0x4003ac39ffd60e95              # double 2.459095
	.quad	0x4013b93dd97f62b7              # double 4.9309000000000003
	.quad	0x400bbe846a5d6bec              # double 3.4680260000000001
	.quad	0x4012a3b8e4b87bdd              # double 4.6598850000000001
	.quad	0x4022961932d6ece1              # double 9.2931609999999996
	.quad	0x40169cebbba55d1c              # double 5.6532429999999998
	.quad	0x4022e554da4ce810              # double 9.4479129999999998
	.quad	0x401d6cc7d1bb4917              # double 7.3562310000000002
	.quad	0x4018d536d655e28b              # double 6.2082170000000003
	.quad	0x4007923fee2c98e5              # double 2.9464109999999999
	.quad	0x40149c579f234656              # double 5.1526779999999999
	.quad	0x4023f1c17225b74a              # double 9.9721790000000006
	.quad	0x40104834091c0874              # double 4.0705109999999998
	.quad	0x3ffc422ee41919ac              # double 1.7661579999999999
	.quad	0x4019aa5ce5b4245f              # double 6.4163699999999997
	.quad	0x4021c7f9f87f023f              # double 8.8905790000000007
	.quad	0x40057aef6f8f0414              # double 2.6850269999999998
	.quad	0x3ff06682b6284599              # double 1.0250269999999999
	.quad	0x401379b413986339              # double 4.8688510000000003
	.quad	0x4013cb6b6e0d23d5              # double 4.9486520000000001
	.quad	0x4013404a72ead927              # double 4.8127839999999997
	.quad	0x4020063779e9d0ea              # double 8.0121420000000008
	.quad	0x4023d58537e2c55d              # double 9.9170320000000007
	.quad	0x401f455f78359bc3              # double 7.8177469999999997
	.quad	0x3fedcaeea63b688c              # double 0.93102200000000001
	.quad	0x400a5dcdf6987831              # double 3.2958029999999998
	.quad	0x4022a0d49949e881              # double 9.3141219999999993
	.quad	0x400e82aa19439de5              # double 3.8138010000000002
	.quad	0x3ffb69d40ee06d94              # double 1.7133370000000001
	.quad	0x401b31dd5d3dc8b8              # double 6.7986959999999996
	.quad	0x402397ed84d338f8              # double 9.7967340000000007
	.quad	0x4019d1a11233df2b              # double 6.4547160000000003
	.quad	0x3ff8634b945308bc              # double 1.5242420000000001
	.quad	0x4019764d7f0ed3d8              # double 6.3655299999999997
	.quad	0x40222a6c3b927d46              # double 9.0828570000000006
	.quad	0x4003f64adff822bc              # double 2.49526
	.quad	0x3ff00f4517614595              # double 1.003728
	.quad	0x4023da28997c3d68              # double 9.9260909999999995
	.quad	0x4010bfba8826aa8f              # double 4.1872350000000003
	.quad	0x4020b7e889c1b542              # double 8.3591960000000007
	.quad	0x40228ea704bc2763              # double 9.2786179999999998
	.quad	0x40167e770bd017db              # double 5.6235010000000001
	.quad	0x4023905c896dd26b              # double 9.7819559999999992
	.quad	0x3fe31e0e736049ed              # double 0.59741900000000003
	.quad	0x4023df9e16d6dc1a              # double 9.9367529999999995
	.quad	0x401ae3dfb0d51f82              # double 6.7225330000000003
	.quad	0x4019d36c15d2d01c              # double 6.456467
	.quad	0x3ff240d1b71758e2              # double 1.140825
	.quad	0x40185f6f4be835df              # double 6.0931980000000001
	.quad	0x40145b0af5fd47bf              # double 5.0889090000000001
	.quad	0x4021f50fc71d6063              # double 8.9786359999999998
	.quad	0x401ec2f837b4a234              # double 7.6904000000000003
	.quad	0x4022e1fa11a975b0              # double 9.4413610000000006
	.quad	0x3f832617c1bda512              # double 0.0093500000000000007
	.quad	0x401266cb5350092d              # double 4.6003850000000002
	.quad	0x40235376f6d76252              # double 9.663017
	.quad	0x400b843b2dd377e2              # double 3.4395660000000001
	.quad	0x402098387df5cf25              # double 8.2973060000000007
	.quad	0x40225b9841aac53b              # double 9.1788959999999999
	.quad	0x3fe2f0a808c8259e              # double 0.59187699999999999
	.quad	0x40200e8e3ef28416              # double 8.0284289999999991
	.quad	0x40200aa62aa1943a              # double 8.0207990000000002
	.quad	0x401dbd199bb2788e              # double 7.4346680000000003
	.quad	0x3feca2df9378ee28              # double 0.89488199999999996
	.quad	0x402020a9de8b3b32              # double 8.063796
	.quad	0x4020f1b584b1ab08              # double 8.4720879999999994
	.quad	0x40001b8130164841              # double 2.0134300000000001
	.quad	0x4022ed0a67620ee9              # double 9.4629700000000003
	.quad	0x4022bb2ebe596c83              # double 9.3655910000000002
	.quad	0x3fc762845996744b              # double 0.182694
	.quad	0x401bdcb923a29c78              # double 6.9655500000000004
	.quad	0x40203efa615a8deb              # double 8.1230039999999999
	.quad	0x4001a8cf7caa758a              # double 2.207427
	.quad	0x400c1bbb62413db8              # double 3.513541
	.quad	0x401ba66277c45cbc              # double 6.9124850000000002
	.quad	0x4020514141e9af5c              # double 8.1587010000000006
	.quad	0x3fe684ea4a8c154d              # double 0.70372500000000004
	.quad	0x401b57db6e503fb3              # double 6.8357979999999996
	.quad	0x40122dd1e53a81dc              # double 4.544746
	.quad	0x40146585be1a8262              # double 5.0991429999999998
	.quad	0x4016992428d434a0              # double 5.6495519999999999
	.quad	0x3ffed4ae429e0a42              # double 1.9269240000000001
	.quad	0x3ff04e4217d2849d              # double 1.0191060000000001
	.quad	0x4019ab8f9b13165d              # double 6.4175399999999998
	.quad	0x40015601ffb480a6              # double 2.1669960000000001
	.quad	0x3fcbcd78c436fc16              # double 0.21720800000000001
	.quad	0x3fc72bf5515054ac              # double 0.181029
	.quad	0x4022c25892684cf0              # double 9.3795819999999992
	.quad	0x4021f4332f01754b              # double 8.976953
	.quad	0x3ff5e36199780baa              # double 1.3680129999999999
	.quad	0x400bb3f52fc2656b              # double 3.4628700000000001
	.quad	0x4013b96851223183              # double 4.9310619999999998
	.quad	0x4019c01eeed8904f              # double 6.4376179999999996
	.quad	0x40038266fd651b0d              # double 2.4386730000000001
	.quad	0x40223dd6e04c0592              # double 9.1207799999999999
	.quad	0x4013c98c3b0c4589              # double 4.9468240000000003
	.quad	0x3ff1453c148344c3              # double 1.0794029999999999
	.quad	0x4013bfe79ee02a78              # double 4.9374070000000003
	.quad	0x4018ed8383ad9f0a              # double 6.2319469999999999
	.quad	0x3ff13d987c6327ee              # double 1.0775380000000001
	.quad	0x4013957d1782d384              # double 4.8959849999999996
	.quad	0x401b4fd5885d3133              # double 6.8279629999999996
	.quad	0x401e4224aada33be              # double 7.5645930000000003
	.quad	0x401460a2877ee4e2              # double 5.0943699999999996
	.quad	0x4020023c64345cff              # double 8.0043670000000002
	.quad	0x402336c93a711516              # double 9.6070039999999999
	.quad	0x400cdfb69984a0e4              # double 3.609235
	.quad	0x3ff6289118c197e5              # double 1.3849039999999999
	.quad	0x3ff52d698fe69271              # double 1.3235870000000001
	.quad	0x4009f8012dfd694d              # double 3.2460960000000001
	.quad	0x402034e032db1e9f              # double 8.1032729999999997
	.quad	0x401b684ad794a6ec              # double 6.8518480000000004
	.quad	0x3ffab154003254e7              # double 1.668293
	.quad	0x4012b1f1cfbb9496              # double 4.6737739999999999
	.quad	0x400dbf212d773190              # double 3.7183250000000001
	.quad	0x401076a93f290abb              # double 4.1158799999999998
	.quad	0x3fd67f1f9acffa7f              # double 0.35150900000000002
	.quad	0x3ff6df28848387df              # double 1.4294819999999999
	.quad	0x3ff23589efd86a90              # double 1.1380710000000001
	.quad	0x401266ed6777079e              # double 4.6005149999999997
	.quad	0x3ff307cb70ac3a86              # double 1.189403
	.quad	0x401746772d5e071c              # double 5.8188139999999997
	.quad	0x4014ef15a4acf313              # double 5.2334810000000003
	.quad	0x400880f3cb3e5754              # double 3.0629650000000002
	.quad	0x3fb6a3cea6c1a049              # double 0.088437000000000002
	.quad	0x4000854a3c64345d              # double 2.065083
	.quad	0x40134f394b7b2895              # double 4.8273669999999997
	.quad	0x4014350ebaade658              # double 5.0518140000000002
	.quad	0x401922be8bc169c2              # double 6.2839299999999998
	.quad	0x40228dfd04a2fcf0              # double 9.2773210000000006
	.quad	0x4010258f2e05ccc9              # double 4.0366790000000004
	.quad	0x4020c935daad6020              # double 8.392989
	.quad	0x401baa5375c8d9f9              # double 6.916334
	.quad	0x3fb2c386d2ed783e              # double 0.073296
	.quad	0x400b7fa658c4bd34              # double 3.4373290000000001
	.quad	0x4006b6976bc1effa              # double 2.839156
	.quad	0x3ffd209edbf8b9bb              # double 1.8204640000000001
	.quad	0x401dfb1704ff4342              # double 7.4952050000000003
	.quad	0x4006de4ffc9795b3              # double 2.8585509999999998
	.quad	0x40136da6e75ff60a              # double 4.8570820000000001
	.quad	0x4020bc3265add9c2              # double 8.3675719999999991
	.quad	0x3fc0343b70ef5665              # double 0.12659400000000001
	.quad	0x400c48ace24bba13              # double 3.5354860000000001
	.quad	0x401ece2ac3222920              # double 7.7013350000000003
	.quad	0x40233e45e4e69f06              # double 9.6216270000000002
	.quad	0x401e9ac258d5842b              # double 7.6511319999999995
	.quad	0x4020481040bfe3b0              # double 8.1407489999999996
	.quad	0x4018927807789a46              # double 6.1430360000000004
	.quad	0x4019d4141e9af5ba              # double 6.4571079999999998
	.quad	0x3ffd5650a45d41fa              # double 1.8335729999999999
	.quad	0x40132326e115592e              # double 4.7843280000000004
	.quad	0x3feaeb24a6a875d5              # double 0.84120399999999995
	.quad	0x401de012599ed7c7              # double 7.46882
	.quad	0x3fed2a5614df8b15              # double 0.91141799999999995
	.quad	0x3ff0c622c4502689              # double 1.048373
	.quad	0x4011ca17f4128bf4              # double 4.4473570000000002
	.quad	0x3ff301e7967caea7              # double 1.1879649999999999
	.quad	0x401351e0c5a8155d              # double 4.8299589999999997
	.quad	0x400835da272862f6              # double 3.0262950000000002
	.quad	0x401b6ed9dfdac68b              # double 6.8582530000000004
	.quad	0x401e48255b035bd5              # double 7.5704549999999999
	.quad	0x40159d66277c45cc              # double 5.4037100000000002
	.quad	0x4021804b3c3e74b0              # double 8.7505740000000003
	.quad	0x3f87396d0917d6b6              # double 0.011339999999999999
	.quad	0x400b5de481f53826              # double 3.4208460000000001
	.quad	0x4011d128bf3bea92              # double 4.4542570000000001
	.quad	0x400559cf13cee9dd              # double 2.6688519999999998
	.quad	0x4015673bc903ea70              # double 5.3508139999999997
	.quad	0x4019623f67f4dbe0              # double 6.3459450000000004
	.quad	0x4023abddb9841aac              # double 9.8356759999999994
	.quad	0x4015c7a5b0ff10ed              # double 5.4449680000000003
	.quad	0x400a1c7368ad6883              # double 3.2638919999999998
	.quad	0x401c3cbccf28c79f              # double 7.0593139999999996
	.quad	0x4022a01626b2f230              # double 9.3126689999999996
	.quad	0x3fe07a80cf9e3865              # double 0.51495400000000002
	.quad	0x400c4249a133c1ce              # double 3.5323669999999998
	.quad	0x40090536d655e28b              # double 3.1275460000000002
	.quad	0x40130d002e2328fa              # double 4.762696
	.quad	0x3fe85f676ea4228a              # double 0.76164600000000005
	.quad	0x4001ddcf0307f23d              # double 2.2333050000000001
	.quad	0x3ffd7068123810e9              # double 1.8399430000000001
	.quad	0x401ed2413db7f173              # double 7.7053269999999995
	.quad	0x4011e0870110a138              # double 4.469265
	.quad	0x3fb4713f077ccc03              # double 0.079852999999999993
	.quad	0x4008c1ff2e48e8a7              # double 3.0947249999999999
	.quad	0x4004b650a45d41fa              # double 2.5890209999999998
	.quad	0x4023629de8b3b320              # double 9.6926109999999994
	.quad	0x4006d56b87379746              # double 2.854209
	.quad	0x4022720ea5b530cf              # double 9.2227680000000003
	.quad	0x401670e8427418d7              # double 5.6102610000000004
	.quad	0x3ffafa0a52695960              # double 1.686045
	.quad	0x40156b9e492bc2fc              # double 5.3550959999999996
	.quad	0x4023de3f141205bc              # double 9.9340749999999999
	.quad	0x401b1566490a350d              # double 6.7708979999999999
	.quad	0x4023360fa15db339              # double 9.6055879999999991
	.quad	0x3fffd0203e63e8de              # double 1.9883120000000001
	.quad	0x3ffb5db877ab3248              # double 1.7103809999999999
	.quad	0x3ff85b09a671ef31              # double 1.5222260000000001
	.quad	0x40210ac9d16fc9bc              # double 8.5210709999999991
	.quad	0x4010b8b588e368f1              # double 4.1803800000000004
	.quad	0x402059efb6dca07f              # double 8.1756569999999993
	.quad	0x40219868986fcdee              # double 8.7976729999999996
	.quad	0x401193ce63a5c1c6              # double 4.394342
	.quad	0x3fd6c9de05037500              # double 0.35607100000000003
	.quad	0x401cf8283d35eb74              # double 7.2423409999999997
	.quad	0x40087300de4c5111              # double 3.0561539999999998
	.quad	0x401ba531db445ed5              # double 6.9113230000000003
	.quad	0x40205ee392e1ef74              # double 8.1853300000000004
	.quad	0x40040fd8f0c77dd8              # double 2.5077379999999998
	.quad	0x401c8d701d9f4d38              # double 7.1381230000000002
	.quad	0x3ff5ed99cbee807c              # double 1.3705080000000001
	.quad	0x401f37824d4cb9ed              # double 7.804208
	.quad	0x40213e82517e77d5              # double 8.6220879999999998
	.quad	0x401b8f6555c52e73              # double 6.8900350000000001
	.quad	0x4010516e7a311e86              # double 4.079523
	.quad	0x400724345cfede98              # double 2.8926780000000001
	.quad	0x401f9fa7eb6bf445              # double 7.9059140000000001
	.quad	0x3f7ecb31c219eb64              # double 0.0075180000000000004
	.quad	0x401bc2bbecaab8a6              # double 6.9401700000000002
	.quad	0x401203a29c779a6b              # double 4.5035499999999997
	.quad	0x4023b21ad6451b93              # double 9.8478609999999999
	.quad	0x400df66d7a56de33              # double 3.7453259999999999
	.quad	0x3ffa96bebe1650a4              # double 1.6618029999999999
	.quad	0x400caa0f4d7add16              # double 3.583037
	.quad	0x4015368661ae70c1              # double 5.3032469999999998
	.quad	0x3ffbe4ece9a2c669              # double 1.74339
	.quad	0x4015429068986fce              # double 5.3150040000000001
	.quad	0x3ff36afee6fb4c3c              # double 1.213622
	.quad	0x4007ff88fc9363f5              # double 2.9997729999999998
	.quad	0x400d39f98b71b8aa              # double 3.653308
	.quad	0x400354528283d35f              # double 2.4161730000000001
	.quad	0x4008aa925fe974a3              # double 3.0832869999999999
	.quad	0x400e94b8bef8ceb3              # double 3.8226179999999998
	.quad	0x401266f47b677f6b              # double 4.6005419999999999
	.quad	0x40138a7829068987              # double 4.885224
	.quad	0x3ff192fb19e731d3              # double 1.098384
	.quad	0x400cb878b7a1c25d              # double 3.590074
	.quad	0x401b763f572de43f              # double 6.8654760000000001
	.quad	0x40227e4c51116a8c              # double 9.2466760000000007
	.quad	0x4013a4a38327674d              # double 4.9107799999999999
	.quad	0x401031c15097c808              # double 4.0485889999999998
	.quad	0x400db9bfdf7e8039              # double 3.7156980000000002
	.quad	0x400dc116659d12cb              # double 3.7192810000000001
	.quad	0x401e90e453d20f2c              # double 7.6414960000000001
	.quad	0x40235a6506141637              # double 9.6765519999999991
	.quad	0x4015565668c26139              # double 5.334314
	.quad	0x4023f9eb4202d9cf              # double 9.9881229999999998
	.quad	0x3fff4e1932d6ece1              # double 1.9565669999999999
	.quad	0x401bf2ec6bce8534              # double 6.9872300000000003
	.quad	0x4020b8dd1e53a81e              # double 8.3610620000000004
	.quad	0x4002930941c8216c              # double 2.3217949999999998
	.quad	0x3ff7687c200c0f02              # double 1.463009
	.quad	0x4017cd25247cb70b              # double 5.9503370000000002
	.quad	0x40212222f6a50d6b              # double 8.5666729999999998
	.quad	0x400ded66f0cfe154              # double 3.7409189999999999
	.quad	0x4014c3d102bc72e2              # double 5.1912269999999996
	.quad	0x401501c864883fd5              # double 5.251741
	.quad	0x4009af733a8a3f8a              # double 3.2106690000000002
	.quad	0x3ff73c32ebe596c8              # double 1.452197
	.quad	0x3fef19bf5946c333              # double 0.971893
	.quad	0x4022d9d6cf850df1              # double 9.4254669999999993
	.quad	0x4023b1bb6aa4b988              # double 9.8471329999999994
	.quad	0x40185d86a8fc0d2c              # double 6.0913339999999998
	.quad	0x3ff05f7a4e7ab756              # double 1.0233099999999999
	.quad	0x3fff70292817763e              # double 1.9648829999999999
	.quad	0x4015a1f3a57eaa2a              # double 5.408156
	.quad	0x40204aef911cf356              # double 8.1463590000000003
	.quad	0x40227eb76709fa55              # double 9.2474930000000004
	.quad	0x3ff48b9991361dc9              # double 1.2840819999999999
	.quad	0x40233bec892ab68d              # double 9.6170390000000001
	.quad	0x4018788094e5d5b2              # double 6.1176779999999997
	.quad	0x4012ed69d30270f4              # double 4.7318490000000004
	.quad	0x400ba8fd199bb279              # double 3.4575140000000002
	.quad	0x401ca986338b47c7              # double 7.1655509999999998
	.quad	0x4002a4edf6124074              # double 2.3305319999999998
	.quad	0x40151c26138fffbd              # double 5.2774890000000001
	.quad	0x40043a3db3bfb58d              # double 2.528438
	.quad	0x401bae7c06e19b91              # double 6.9203950000000001
	.quad	0x4022b008637bd05b              # double 9.3438140000000001
	.quad	0x4008ec2acb85a4f0              # double 3.115316
	.quad	0x4009df034b0e1b4c              # double 3.2338930000000001
	.quad	0x3fbe1650a45d41fa              # double 0.11752799999999999
	.quad	0x40100fd9ba1b1961              # double 4.015479
	.quad	0x401ee4bf8fcd67fd              # double 7.7233869999999997
	.quad	0x4021b85f28848388              # double 8.8601010000000002
	.quad	0x400cdde37585be1b              # double 3.6083440000000002
	.quad	0x3ff5309a671ef30a              # double 1.3243659999999999
	.quad	0x40165c8abd5dc400              # double 5.5903729999999996
	.quad	0x40227d58c8eef1bb              # double 9.2448180000000004
	.quad	0x401ac3b46fdeb52d              # double 6.6911180000000003
	.quad	0x4020f52263d816ad              # double 8.4787780000000001
	.quad	0x4021334a87e38eb0              # double 8.6001779999999997
	.quad	0x401bbbf9830e3cda              # double 6.9335690000000003
	.quad	0x402169d4d834091c              # double 8.7067019999999999
	.quad	0x401d2e757928e0ca              # double 7.2953700000000001
	.quad	0x3fbd4dc65c70435f              # double 0.114468
	.quad	0x4010b589efd86a90              # double 4.1772840000000002
	.quad	0x4013f14b599aa609              # double 4.9856389999999999
	.quad	0x401f83cf70153bd1              # double 7.8787209999999996
	.quad	0x40030679cc74b839              # double 2.3781620000000001
	.quad	0x401fd4662bae03b4              # double 7.9574210000000001
	.quad	0x4022195ebfa8f7db              # double 9.0495509999999992
	.quad	0x400ee68661ae70c1              # double 3.8625609999999999
	.quad	0x3fa73061c79b34a4              # double 0.045290999999999998
	.quad	0x400aec62e4d1a650              # double 3.3654229999999998
	.quad	0x4016c7c80841ede1              # double 5.6950989999999999
	.quad	0x4003f6fb8f57f738              # double 2.4955970000000001
	.quad	0x400d0011d3671ac1              # double 3.6250339999999999
	.quad	0x4022a9f98b71b8aa              # double 9.331982
	.quad	0x4010fe410b630a91              # double 4.2482949999999997
	.quad	0x3ff6b6af89c5e6ff              # double 1.4196009999999999
	.quad	0x401b2fbbd7b2031d              # double 6.7966150000000001
	.quad	0x400e2182ecaeea64              # double 3.7663630000000001
	.quad	0x4001962174c4cdfb              # double 2.1983060000000001
	.quad	0x4013d74107314ca9              # double 4.9602089999999999
	.quad	0x4019bfba450acc0c              # double 6.4372340000000001
	.quad	0x4007a57f3061c79b              # double 2.9558089999999999
	.quad	0x401e73953dea465a              # double 7.6128739999999997
	.quad	0x4010a512231832fd              # double 4.1612020000000003
	.quad	0x4019547cfa26a22b              # double 6.3325079999999998
	.quad	0x4017e7d6733ebbfd              # double 5.9764039999999996
	.quad	0x401a32ae4b018612              # double 6.549493
	.quad	0x4002f61565c2d278              # double 2.370158
	.quad	0x4019d7e8ccdd93c4              # double 6.4608489999999996
	.quad	0x3fda89b951c5c572              # double 0.41465600000000002
	.quad	0x40087c96030c23fb              # double 3.0608330000000001
	.quad	0x401a22cd7cf5f4e4              # double 6.5339869999999998
	.quad	0x4014e0f27bb2fec5              # double 5.2196749999999996
	.quad	0x3fd571c53f39d1b3              # double 0.33506900000000001
	.quad	0x40236eef3d3a1d32              # double 9.7166689999999996
	.quad	0x400169003eea209b              # double 2.1762700000000001
	.quad	0x400dede8f6cefed6              # double 3.7411669999999999
	.quad	0x3ffad29888f861a6              # double 1.676415
	.quad	0x3ff64c1b97353b4b              # double 1.393581
	.quad	0x402348ebcc6c54bd              # double 9.6424240000000001
	.quad	0x4014c0ebedfa43fe              # double 5.1883999999999997
	.quad	0x40190a558ea7ce10              # double 6.2600920000000002
	.quad	0x4018fdd1a21ea359              # double 6.2478699999999998
	.quad	0x4022710624dd2f1b              # double 9.2207500000000007
	.quad	0x40164ea35935fc3b              # double 5.5767949999999997
	.quad	0x4013823aafff36ac              # double 4.8771769999999997
	.quad	0x400199af1886df83              # double 2.2000410000000001
	.quad	0x4020299b90ea9e6f              # double 8.0812650000000001
	.quad	0x3ff4eb21815a07b3              # double 1.3074049999999999
	.quad	0x3ff9c955b4677b39              # double 1.6116539999999999
	.quad	0x401d2b9a9da597d5              # double 7.2925820000000003
	.quad	0x4016632d6ece13f5              # double 5.5968530000000003
	.quad	0x400a65668c261390              # double 3.299512
	.quad	0x40027e774eebf65e              # double 2.3117510000000001
	.quad	0x401da121ee675148              # double 7.407356
	.quad	0x401805a78f25a251              # double 6.005522
	.quad	0x4007cc050bd87b57              # double 2.9746190000000001
	.quad	0x40208cdfaca36199              # double 8.2751439999999992
	.quad	0x40165cc07aaef2c7              # double 5.5905779999999998
	.quad	0x40012e4fb97bb731              # double 2.1476130000000002
	.quad	0x400f4a92e62131a9              # double 3.911413
	.quad	0x401a7ba12b5e529c              # double 6.6207320000000003
	.quad	0x4019555b89939219              # double 6.3333570000000003
	.quad	0x40115234eb9a176e              # double 4.3302800000000001
	.quad	0x400429b6b2af1455              # double 2.5203679999999999
	.quad	0x3ffb1c4fc1df3301              # double 1.694412
	.quad	0x400e1f40a2877ee5              # double 3.7652600000000001
	.quad	0x402021bd4067cf1c              # double 8.0658969999999996
	.quad	0x400584a515ce9e5e              # double 2.6897679999999999
	.quad	0x401e39096bb98c7e              # double 7.5556999999999999
	.quad	0x40035c4eb56fb8f5              # double 2.4200719999999998
	.quad	0x40236be707e175d1              # double 9.7107469999999995
	.quad	0x401743497b7414a5              # double 5.8157100000000002
	.quad	0x4020f3d987c6327f              # double 8.4762690000000003
	.quad	0x3fff73acd5b6805a              # double 1.965741
	.quad	0x4020674107314ca9              # double 8.2016679999999997
	.quad	0x40150bb2fec56d5d              # double 5.261425
	.quad	0x4021bb1df761cbcd              # double 8.8654630000000001
	.quad	0x401ba810624dd2f2              # double 6.9141250000000003
	.quad	0x3ff9cfd199bb2789              # double 1.613237
	.quad	0x40181535c9e6687f              # double 6.0207129999999998
	.quad	0x3fd982773e24febd              # double 0.398588
	.quad	0x3ff2331f46ed245b              # double 1.137481
	.quad	0x3fec0548a9bcfd4c              # double 0.875645
	.quad	0x4015b19c5a3e39f7              # double 5.4234479999999996
	.quad	0x4022484ccee5abc1              # double 9.1412110000000002
	.quad	0x40130e6eeb702603              # double 4.7640950000000002
	.quad	0x3fff0b599aa60914              # double 1.9402710000000001
	.quad	0x4015b9310129cbab              # double 5.4308509999999997
	.quad	0x401ee7d77fae3609              # double 7.7264080000000001
	.quad	0x401557204295a6c6              # double 5.3350840000000002
	.quad	0x401f475cd0bb6ed6              # double 7.8196899999999996
	.quad	0x40026e99a62ed352              # double 2.3040039999999999
	.quad	0x3ffcbd4cfd08d4bb              # double 1.796216
	.quad	0x3ff0d9f6ec5b078e              # double 1.0532140000000001
	.quad	0x4010eb845564b663              # double 4.229997
	.quad	0x40214b3d6c721922              # double 8.6469529999999999
	.quad	0x401eee76c8b43958              # double 7.7328749999999999
	.quad	0x3fcf878316a05575              # double 0.24632299999999999
	.quad	0x401cfe963dc486ad              # double 7.2486199999999998
	.quad	0x401db1a79fec99f2              # double 7.4234910000000003
	.quad	0x40096705c896dd27              # double 3.1753040000000001
	.quad	0x40134ad9f0a1be2b              # double 4.8230969999999997
	.quad	0x3fe76362a5e785b6              # double 0.73088200000000003
	.quad	0x4022e94467381d7e              # double 9.4556000000000004
	.quad	0x3ff8581adea89763              # double 1.5215099999999999
	.quad	0x4010405b39e279dd              # double 4.0628479999999998
	.quad	0x401b453e707e175d              # double 6.8176209999999999
	.quad	0x4008c0c38f366949              # double 3.0941230000000002
	.quad	0x401f2018e757928e              # double 7.781345
	.quad	0x40228b72c5197a25              # double 9.2723600000000008
	.quad	0x40212485c24c404a              # double 8.5713329999999992
	.quad	0x401abbd8be7296f6              # double 6.6834439999999997
	.quad	0x401693ca31e7d999              # double 5.6443260000000004
	.quad	0x4018b881a1554fbe              # double 6.1801820000000003
	.quad	0x3ff9dbfdf7e8038a              # double 1.616209
	.quad	0x40179dc65c70435f              # double 5.904077
	.quad	0x4012938fbca1059f              # double 4.6441030000000003
	.quad	0x3fd34a771c970f7c              # double 0.30142000000000002
	.quad	0x401682a66dbd72bd              # double 5.6275880000000003
	.quad	0x3ffbe97bfa4c61d8              # double 1.7445029999999999
	.quad	0x401a46256366d7a5              # double 6.5685019999999996
	.quad	0x40008fe047d3d428              # double 2.070252
	.quad	0x401cc4c3c18b502b              # double 7.1921530000000002
	.quad	0x400301e57d9dba91              # double 2.3759260000000002
	.quad	0x3ff413b3a68b19a4              # double 1.25481
	.quad	0x4000f926c7eae5bd              # double 2.1216560000000002
	.quad	0x4016c6d4801f7510              # double 5.6941699999999997
	.quad	0x4018ce28aa433509              # double 6.201327
	.quad	0x4021cbc536d655e3              # double 8.8979890000000008
	.quad	0x4019c003686a4ca5              # double 6.437513
	.quad	0x3ff67b4f61672325              # double 1.405105
	.quad	0x402165219a847b24              # double 8.6975219999999993
	.quad	0x400da8d972cd7cf6              # double 3.707446
	.quad	0x4019062f9ca5bd94              # double 6.2560409999999997
	.quad	0x4015742d490e66cb              # double 5.3634539999999999
	.quad	0x40212f6273929ed4              # double 8.5925480000000007
	.quad	0x401f9c9752977c89              # double 7.902921
	.quad	0x4020bc56d5cfaace              # double 8.3678500000000007
	.quad	0x4013e9a38fbca106              # double 4.9781630000000003
	.quad	0x401ff10f94c87981              # double 7.985411
	.quad	0x3ffbe12a51e321a3              # double 1.742472
	.quad	0x4008b201040bfe3b              # double 3.086916
	.quad	0x40189b5d462c343b              # double 6.1517229999999996
	.quad	0x401caabb8800eae2              # double 7.1667310000000004
	.quad	0x40174197e5647347              # double 5.8140559999999999
	.quad	0x401343f52fc2656b              # double 4.8163650000000002
	.quad	0x3ff6498b2e9ccb7d              # double 1.3929549999999999
	.quad	0x3ff48a58b3f63c32              # double 1.283776
	.quad	0x40198703afb7e910              # double 6.38185
	.quad	0x3ff5d9210385c67e              # double 1.36551
	.quad	0x3fd08abd5dc40075              # double 0.25846799999999998
	.quad	0x40043d872f33ca32              # double 2.530043
	.quad	0x3fa2b96f21f6cacd              # double 0.036570999999999999
	.quad	0x3fd68bfc2224edf6              # double 0.352294
	.quad	0x3ff5c68b9fdbd2fa              # double 1.360973
	.quad	0x3fd969270b06c43f              # double 0.39704299999999998
	.quad	0x401e29d27c393682              # double 7.5408419999999996
	.quad	0x40146c2f405f6ba0              # double 5.1056489999999997
	.quad	0x4022789bf9c62a1b              # double 9.2355649999999994
	.quad	0x401f71a048e043a2              # double 7.8609629999999999
	.quad	0x3fd6be6601bc98a2              # double 0.35537099999999999
	.quad	0x4019cd7342edbb5a              # double 6.4506350000000001
	.quad	0x40205fa376922d95              # double 8.1867940000000008
	.quad	0x401fec84f8f8a4c2              # double 7.9809760000000001
	.quad	0x3ff13265add9c27f              # double 1.0748040000000001
	.quad	0x4017ea658c4bd33d              # double 5.9789029999999999
	.quad	0x401d22f4cf4a558f              # double 7.2841370000000003
	.quad	0x401f5fca85caafbc              # double 7.8435459999999999
	.quad	0x401491dcd7060bb3              # double 5.1424440000000002
	.quad	0x40228b17268d3283              # double 9.2716609999999999
	.quad	0x400cb7824d4cb9ed              # double 3.589604
	.quad	0x3fe5d0d8cb07d0af              # double 0.68174400000000002
	.quad	0x40184b26394face6              # double 6.0733879999999996
	.quad	0x4022c3d33d29563b              # double 9.3824710000000006
	.quad	0x4013e0c73abc9470              # double 4.9695099999999996
	.quad	0x4013df3300de4c51              # double 4.9679679999999999
	.quad	0x400fd95cc857f306              # double 3.981134
	.quad	0x3ffc7882278d0cc3              # double 1.7794209999999999
	.quad	0x401ae4070329802c              # double 6.722683
	.quad	0x40201359791819d2              # double 8.0377919999999996
	.quad	0x3fea9496249a133c              # double 0.83063799999999998
	.quad	0x4020fa6527a20579              # double 8.4890530000000002
	.quad	0x40105b530ced4e4d              # double 4.0891840000000004
	.quad	0x4023362c77574f72              # double 9.6058079999999997
	.quad	0x4010dd54da4ce810              # double 4.2161439999999999
	.quad	0x4020583d57796399              # double 8.1723429999999997
	.quad	0x401037d77fae3609              # double 4.0545330000000002
	.quad	0x4009973f316e3715              # double 3.1988509999999999
	.quad	0x4023ce093532e7b4              # double 9.9024140000000002
	.quad	0x40057d99029ae4f3              # double 2.6863269999999999
	.quad	0x3fe5005a2d72ffd2              # double 0.65629300000000002
	.quad	0x4020f084a515ce9e              # double 8.4697619999999993
	.quad	0x401ffca7503b81b6              # double 7.9967319999999997
	.quad	0x400bda908a265f0f              # double 3.4817209999999998
	.quad	0x40158febd09e12a5              # double 5.3905479999999999
	.quad	0x40063989df1172ef              # double 2.778095
	.quad	0x401e41682f944242              # double 7.5638740000000002
	.quad	0x401d2eb851eb851f              # double 7.2956250000000002
	.quad	0x40115b28954a7f80              # double 4.3390219999999999
	.quad	0x4000b166e008e9b4              # double 2.0866220000000002
	.quad	0x401a926f1dc50ce5              # double 6.6430020000000001
	.quad	0x3fefd097c80841ee              # double 0.99421300000000001
	.quad	0x40118725c3dee782              # double 4.3819800000000004
	.quad	0x4023f746887a8d65              # double 9.9829600000000002
	.quad	0x4012d2031ceaf252              # double 4.7050900000000002
	.quad	0x4019ef5be5d9e40d              # double 6.4837490000000004
	.quad	0x401a4d256798958e              # double 6.5753380000000003
	.quad	0x402291c970f7b9e0              # double 9.2847399999999993
	.quad	0x4010569b17481b22              # double 4.0845760000000002
	.quad	0x4013744284dfce31              # double 4.8635349999999997
	.quad	0x3fede16f86a09891              # double 0.93376899999999996
	.quad	0x3ff09e13b18dac26              # double 1.0385930000000001
	.quad	0x40179694ccab3ede              # double 5.8970520000000004
	.quad	0x3fef55821294573a              # double 0.97918799999999995
	.quad	0x3ffc11c5c5718eb9              # double 1.7543390000000001
	.quad	0x4010e63f141205bc              # double 4.22485
	.quad	0x400d0dab9f559b3d              # double 3.631675
	.quad	0x4014d778dd616f87              # double 5.2104220000000003
	.quad	0x401ed72580c308ff              # double 7.7101040000000002
	.quad	0x401ce638433d6c72              # double 7.2248239999999999
	.quad	0x3fcfca3a4b5568e8              # double 0.248359
	.quad	0x3fc8df37329c347f              # double 0.19431200000000001
	.quad	0x400a531876188b11              # double 3.2905739999999999
	.quad	0x4020b27e73a365cb              # double 8.3486209999999996
	.quad	0x4009dbb9496249a1              # double 3.2322869999999999
	.quad	0x40159b1465e89225              # double 5.4014449999999998
	.quad	0x4009631ad2135dab              # double 3.1733910000000001
	.quad	0x3feac371da37ef5b              # double 0.83635800000000005
	.quad	0x40147eff1950331e              # double 5.1240199999999998
	.quad	0x40102b8950763a19              # double 4.042516
	.quad	0x4023a574f722e1ac              # double 9.8231579999999993
	.quad	0x3ff4d154866a11ed              # double 1.3011060000000001
	.quad	0x3ffb6d2ed783dff4              # double 1.714156
	.quad	0x3ff44c2f837b4a23              # double 1.2685999999999999
	.quad	0x401e4897a67a52ac              # double 7.5708909999999996
	.quad	0x40205c8626f60e0f              # double 8.1807110000000005
	.quad	0x401a03b81b64e054              # double 6.5036319999999996
	.quad	0x3fd6b630a91537a0              # double 0.35487000000000002
	.quad	0x40229c1355475a32              # double 9.3048350000000006
	.quad	0x4008a1bc126a65cf              # double 3.0789719999999998
	.quad	0x3ff4017a89331a09              # double 1.2503610000000001
	.quad	0x4021455ed06fef7c              # double 8.6354889999999997
	.quad	0x4013bcac8e68e3ef              # double 4.9342519999999999
	.quad	0x3ffdba53b8e4b87c              # double 1.85799
	.quad	0x3ff25f0a1be2b496              # double 1.1482030000000001
	.quad	0x4009d57928e0c9da              # double 3.2292350000000001
	.quad	0x3fe8b940fecdd0d9              # double 0.77261400000000002
	.quad	0x40231b9713ad5bee              # double 9.5538869999999996
	.quad	0x400fe5bc87db2b34              # double 3.9871759999999998
	.quad	0x401a4691212513b6              # double 6.5689130000000002
	.quad	0x4020a0f062d40aaf              # double 8.3143340000000006
	.quad	0x40238d18f3eccc47              # double 9.7755810000000007
	.quad	0x401e10bae89eba6b              # double 7.5163380000000001
	.quad	0x401205caafbc1ace              # double 4.5056560000000001
	.quad	0x4021568c47a17f41              # double 8.6690389999999997
	.quad	0x4020ac4e93e1c9b4              # double 8.3365369999999998
	.quad	0x40122c9ea9a3d2d8              # double 4.5435739999999996
	.quad	0x401b29aed56b0100              # double 6.7907060000000001
	.quad	0x401c8d3e920c069e              # double 7.1379339999999996
	.quad	0x4008f763e4abe6a3              # double 3.1207959999999999
	.quad	0x401fb5892684cf07              # double 7.9272809999999997
	.quad	0x40143a854477ff15              # double 5.0571489999999999
	.quad	0x40089ec7863beec4              # double 3.0775290000000002
	.quad	0x3ffef214f0520d13              # double 1.934102
	.quad	0x40206d495182a993              # double 8.2134499999999999
	.quad	0x40230ed288ce703b              # double 9.52895
	.quad	0x4010b18090b417ca              # double 4.1733419999999999
	.quad	0x3ff5df58c08b75ea              # double 1.3670279999999999
	.quad	0x40124ef240fa9c13              # double 4.5770960000000001
	.quad	0x40104784230fcf81              # double 4.0698400000000001
	.quad	0x401584d0dcfcc5b9              # double 5.3797030000000001
	.quad	0x3ff146045baf533f              # double 1.0795939999999999
	.quad	0x4014050092ccf6be              # double 5.0048849999999998
	.quad	0x400a9f487fcb923a              # double 3.3277749999999999
	.quad	0x3fdbb50b0f27bb30              # double 0.432925
	.quad	0x400d5cf1c3265ade              # double 3.6703830000000002
	.quad	0x4017c08637bd05af              # double 5.9380119999999996
	.quad	0x400e20ea5b530ced              # double 3.7660719999999999
	.quad	0x3ffeb72c5197a249              # double 1.9197200000000001
	.quad	0x4022dba14cec41dd              # double 9.4289649999999998
	.quad	0x3ff1443c3a42f1ed              # double 1.079159
	.quad	0x4021a96aad1d041d              # double 8.8308920000000004
	.quad	0x3fe58359bc33f855              # double 0.67228399999999999
	.quad	0x400378950763a190              # double 2.433878
	.quad	0x4011b8fe69270b07              # double 4.4306580000000002
	.quad	0x40044c8de2ac3223              # double 2.5373800000000002
	.quad	0x401439f3c70c996b              # double 5.0565939999999996
	.quad	0x40123edbf8b9baa1              # double 4.5613859999999997
	.quad	0x40189aa582dbe7f3              # double 6.1510220000000002
	.quad	0x401d9f3cb3e5753a              # double 7.4055049999999998
	.quad	0x3ff678df7a4e7ab7              # double 1.4045099999999999
	.quad	0x401f9b6e0d23d4f1              # double 7.9017869999999996
	.quad	0x4011702a3486f04a              # double 4.3595360000000003
	.quad	0x3ff3d7b84db9c737              # double 1.2401660000000001
	.quad	0x4000ec3f3e0370ce              # double 2.1153550000000001
	.quad	0x400e903f2d3c792d              # double 3.820433
	.quad	0x401b149cb252ce03              # double 6.7701289999999998
	.quad	0x402384fe154434e3              # double 9.7597509999999996
	.quad	0x40159b341e14bdfd              # double 5.4015659999999999
	.quad	0x4013de9813879c41              # double 4.9673769999999999
	.quad	0x3fc02435696e58a3              # double 0.12610499999999999
	.quad	0x40119eb6390c9108              # double 4.404992
	.quad	0x4008a51b0ccbc05d              # double 3.0806179999999999
	.quad	0x4002db7cfe586013              # double 2.3571719999999998
	.quad	0x4022da5375c8d9f9              # double 9.4264179999999999
	.quad	0x40186cfdd2285660              # double 6.1064369999999997
	.quad	0x401827f455a7d242              # double 6.0390180000000004
	.quad	0x401990edc3bd5992              # double 6.3915319999999998
	.quad	0x3ff65d7774aba387              # double 1.3978189999999999
	.quad	0x401c553c579f2346              # double 7.0832379999999997
	.quad	0x400b2a350d2806af              # double 3.3956089999999999
	.quad	0x4015ec5004fb1184              # double 5.4807740000000003
	.quad	0x4023049129888f86              # double 9.5089199999999998
	.quad	0x40110075b3e1437c              # double 4.2504489999999997
	.quad	0x40219a1c68ec52a4              # double 8.8009979999999998
	.quad	0x402003906466b1e6              # double 8.0069610000000004
	.quad	0x401ca45132f87ad1              # double 7.1604660000000004
	.quad	0x3ffb706a2b1704ff              # double 1.7149449999999999
	.quad	0x401892428d434a02              # double 6.1428320000000003
	.quad	0x401061c4b90214ad              # double 4.0954769999999998
	.quad	0x401afb302f72b453              # double 6.7453010000000004
	.quad	0x4001722c881e4713              # double 2.180749
	.quad	0x401e8694898f605b              # double 7.6314260000000002
	.quad	0x400a38433d6c7219              # double 3.2774719999999999
	.quad	0x3fc00f55de58e64b              # double 0.125468
	.quad	0x4023e7694467381d              # double 9.9519749999999991
	.quad	0x4015ae58e64b2314              # double 5.420261
	.quad	0x401f461d4306e5cd              # double 7.8184709999999997
	.quad	0x40167fd9fd36f7e4              # double 5.6248550000000002
	.quad	0x40238e3cb8173322              # double 9.7778069999999992
	.quad	0x3fcfdb4cc2507208              # double 0.24887999999999999
	.quad	0x401fcfe0ce0b912e              # double 7.9530060000000002
	.quad	0x4020fa5edd052935              # double 8.4890050000000006
	.quad	0x400d96683c297bfa              # double 3.6984409999999999
	.quad	0x401790114d2f5dbc              # double 5.8906910000000003
	.quad	0x3ff40867ad8e4324              # double 1.2520519999999999
	.quad	0x401faeb4e981387a              # double 7.9206120000000002
	.quad	0x400d1ea897635e74              # double 3.6399699999999999
	.quad	0x4004d5cc857f3062              # double 2.6043940000000001
	.quad	0x401fa37718655193              # double 7.9096339999999996
	.quad	0x40175934acaff6d3              # double 5.8371149999999998
	.quad	0x401f1100e6afcce2              # double 7.7666050000000002
	.quad	0x401159cc74b838c1              # double 4.3376939999999999
	.quad	0x401159702e6644d8              # double 4.3373419999999996
	.quad	0x4005d1b79d909f1f              # double 2.727401
	.quad	0x4014b00218def417              # double 5.1718830000000002
	.quad	0x3ff17bf727136a40              # double 1.092765
	.quad	0x401e080303c07ee1              # double 7.5078240000000002
	.quad	0x400800114d2f5dbc              # double 3.0000330000000002
	.quad	0x401520110a137f39              # double 5.2813150000000002
	.quad	0x3ffebb1c0010c6f8              # double 1.9206810000000001
	.quad	0x401ace8ccdd93c47              # double 6.7017090000000001
	.quad	0x401f534c1a8ac5c1              # double 7.8313449999999997
	.quad	0x400d814f0520d131              # double 3.6881390000000001
	.quad	0x4016e29068986fce              # double 5.7212540000000001
	.quad	0x401ac54f3775b813              # double 6.692685
	.quad	0x4018dd905c033615              # double 6.2163709999999996
	.quad	0x4006867839cd8128              # double 2.8156590000000001
	.quad	0x4021a7eac42e989a              # double 8.8279630000000004
	.quad	0x40192a98aa8650e7              # double 6.2915979999999996
	.quad	0x4014befbb0e5e679              # double 5.1865069999999998
	.quad	0x401c569f4906034f              # double 7.0845919999999998
	.quad	0x401835efa615a8df              # double 6.0526720000000003
	.quad	0x401cc31b9b66f933              # double 7.1905349999999997
	.quad	0x40165e8d10f51aca              # double 5.5923350000000003
	.quad	0x401d674b838c111b              # double 7.3508740000000001
	.quad	0x400958194c016052              # double 3.1680169999999999
	.quad	0x4021a2e87d2c7b89              # double 8.8181799999999999
	.quad	0x4023a6a161e4f766              # double 9.82545
	.quad	0x401a6a3f8982cb21              # double 6.603758
	.quad	0x3ff4c7789a459104              # double 1.298699
	.quad	0x401a379c4113c686              # double 6.5543069999999997
	.quad	0x401dfd92fb19e732              # double 7.4976310000000002
	.quad	0x3fda7f4dbdf8f473              # double 0.41402
	.quad	0x401659b2c40d0aaa              # double 5.5875959999999996
	.quad	0x40231d10b1feeb2d              # double 9.5567679999999999
	.quad	0x401644ad794a6eb9              # double 5.5670679999999999
	.quad	0x4017b0c88a47ecff              # double 5.9226400000000003
	.quad	0x4021e5349be8ff32              # double 8.9476669999999991
	.quad	0x4017e17b5286b591              # double 5.9701969999999998
	.quad	0x40163e4430b178b3              # double 5.5608069999999996
	.quad	0x401b88d9f90539fc              # double 6.8836440000000003
	.quad	0x40135e6bc621b7e1              # double 4.8422080000000003
	.quad	0x4012349906cca2db              # double 4.5513649999999997
	.quad	0x40185366d7a56de3              # double 6.0814469999999998
	.quad	0x4019efd933e35c5b              # double 6.4842269999999997
	.quad	0x400d283f4eca686e              # double 3.6446519999999998
	.quad	0x40211fd7c2ca148c              # double 8.5621930000000006
	.quad	0x3ffd573fb7a5f41b              # double 1.833801
	.quad	0x40229c49774256bd              # double 9.3052480000000006
	.quad	0x4011292bc2fc6973              # double 4.2902060000000004
	.quad	0x40179275ee99a62f              # double 5.8930280000000002
	.quad	0x4020842dcf4623d1              # double 8.2581620000000004
	.quad	0x3ff17797460242d0              # double 1.0916969999999999
	.quad	0x4010a119ce075f70              # double 4.1573250000000002
	.quad	0x4016a111f0c34c1b              # double 5.6572950000000004
	.quad	0x3fe4c144028e4fb9              # double 0.64859199999999995
	.quad	0x401949f0a1be2b49              # double 6.3222069999999997
	.quad	0x401fd3250b52439a              # double 7.9561960000000003
	.quad	0x4015ec7c5260f5e4              # double 5.4809429999999999
	.quad	0x401c5f922962cfd9              # double 7.0933310000000001
	.quad	0x401fb47ecfe9b7bf              # double 7.9262649999999998
	.quad	0x4022e4ca4f440af2              # double 9.4468560000000004
	.quad	0x400540b3d4ae429e              # double 2.656593
	.quad	0x4010f6516db0dd83              # double 4.240545
	.quad	0x402142c471b47842              # double 8.6304049999999997
	.quad	0x402140487b99d452              # double 8.625553
	.quad	0x401cadf19d66adb4              # double 7.169867
	.quad	0x401c1c47a17f4129              # double 7.0276170000000002
	.quad	0x400498f2e05ccc8a              # double 2.5746820000000001
	.quad	0x400559cf13cee9dd              # double 2.6688519999999998
	.quad	0x401785b317efe0ce              # double 5.880566
	.quad	0x401380285ec3dab6              # double 4.8751540000000002
	.quad	0x3fcf9c38b04ab607              # double 0.24695500000000001
	.quad	0x401a7aad1d041cc5              # double 6.6198009999999998
	.quad	0x401a043d89ce4a7b              # double 6.5041409999999997
	.quad	0x400ebd4cfd08d4bb              # double 3.8424320000000001
	.quad	0x4011d215336deb96              # double 4.4551590000000001
	.quad	0x402240c26138fffc              # double 9.1264830000000003
	.quad	0x400360713f077ccc              # double 2.422091
	.quad	0x401563b7d84901d2              # double 5.3473810000000004
	.quad	0x40221d8c6d612c6b              # double 9.0577120000000004
	.quad	0x4008faeb3dd11be7              # double 3.122519
	.quad	0x401a7c9539b88872              # double 6.6216629999999999
	.quad	0x4016eec204f2ae08              # double 5.7331620000000001
	.quad	0x400dad0247021d11              # double 3.7094770000000001
	.quad	0x4017db630a91537a              # double 5.964245
	.quad	0x40207db0574b4070              # double 8.2454859999999996
	.quad	0x4020303ba3443d47              # double 8.0942050000000005
	.quad	0x401d9d887ebf22c0              # double 7.4038409999999999
	.quad	0x400218950763a190              # double 2.262003
	.quad	0x401e1756c93a7115              # double 7.5227919999999999
	.quad	0x400d6a87e38eb032              # double 3.6770170000000002
	.quad	0x3ffefea704bc2763              # double 1.937171
	.quad	0x4021d36a832b990b              # double 8.912922
	.quad	0x3ff6fc169c23b795              # double 1.436545
	.quad	0x4011734efcbd5561              # double 4.3626060000000004
	.quad	0x4002058e64b23140              # double 2.252713
	.quad	0x4022aaf09d8c6d61              # double 9.3338669999999997
	.quad	0x400e81abd1aa821f              # double 3.8133159999999999
	.quad	0x4016e14c660a2014              # double 5.7200179999999996
	.quad	0x3ffc5611ba3ca750              # double 1.7710129999999999
	.quad	0x3fe408d8ec95bff0              # double 0.62607999999999997
	.quad	0x40163c51116a8b8f              # double 5.5589029999999999
	.quad	0x4017803afb7e9100              # double 5.8752250000000004
	.quad	0x40120f077ccc0379              # double 4.5146769999999998
	.quad	0x400f229e0a41a262              # double 3.8919030000000001
	.quad	0x400c4f7985271bce              # double 3.5388060000000001
	.quad	0x400bebc1eff9f87f              # double 3.490116
	.quad	0x401d60956c0d6f54              # double 7.3443199999999997
	.quad	0x3ff46da122fad6cb              # double 1.2767649999999999
	.quad	0x401fe4c76d117b53              # double 7.9734170000000004
	.quad	0x4022290667f90d9d              # double 9.0801269999999992
	.quad	0x401900f776c4827b              # double 6.2509439999999996
	.quad	0x401a75c9e6687f45              # double 6.6150279999999997
	.quad	0x400d3851654d61b3              # double 3.6524990000000002
	.quad	0x40056b178b370047              # double 2.6772909999999999
	.quad	0x3fee443f5f91600f              # double 0.94583099999999998
	.quad	0x3fe4cf893faf4278              # double 0.65033399999999997
	.quad	0x401f270a808c825a              # double 7.7881260000000001
	.quad	0x40135ebdd334c5da              # double 4.8425209999999996
	.quad	0x4022517d49d7ba67              # double 9.1591590000000007
	.quad	0x401c04b2745bf26f              # double 7.0045869999999999
	.quad	0x4015015336deb95e              # double 5.2512939999999997
	.quad	0x401b1801f75104d5              # double 6.7734449999999997
	.quad	0x401aa62dc6e2a800              # double 6.6622839999999997
	.quad	0x400315f3d7d3910c              # double 2.3857189999999999
	.quad	0x401516527a20578e              # double 5.2717989999999997
	.quad	0x4010258e64b23140              # double 4.0366759999999999
	.quad	0x4008db1f255f351a              # double 3.1069930000000001
	.quad	0x400be72e275ab7dc              # double 3.4878809999999998
	.quad	0x3fecd249e44fa051              # double 0.90066999999999997
	.quad	0x3fef2c322291fb40              # double 0.97414500000000003
	.quad	0x401015dfeb8d8234              # double 4.0213619999999999
	.quad	0x401fc1697f1f9ad0              # double 7.938879
	.quad	0x4002c8051c9f72f7              # double 2.3476659999999998
	.quad	0x3fe7e3a7daa4fca4              # double 0.74653999999999998
	.quad	0x3ff93065f9591cd2              # double 1.574316
	.quad	0x40236f79420b3d4b              # double 9.7177220000000001
	.quad	0x4018901b866e43aa              # double 6.1407299999999996
	.quad	0x4018f72085b18549              # double 6.2413350000000003
	.quad	0x4022e0b4bf8fcd68              # double 9.438879
	.quad	0x3fe00c1db0142f62              # double 0.50147900000000001
	.quad	0x401ddf9335d249e4              # double 7.4683349999999997
	.quad	0x401cacc100e6afcd              # double 7.1687050000000001
	.quad	0x3feb301c92ddbdb6              # double 0.84962300000000002
	.quad	0x400c2d1e108c3f3e              # double 3.52203
	.quad	0x3ff685d0fa58f712              # double 1.40767
	.quad	0x40187ac083126e98              # double 6.1198750000000004
	.quad	0x4010edcf893faf42              # double 4.2322369999999996
	.quad	0x401e6bb5e0f7fcfc              # double 7.6051859999999998
	.quad	0x40132c892ab68cef              # double 4.7934919999999996
	.quad	0x40194c43f5f91601              # double 6.324478
	.quad	0x4013681f53825e14              # double 4.8516820000000003
	.quad	0x40230b28f9f44d44              # double 9.5217969999999994
	.quad	0x400a5bb83cf2cf96              # double 3.2947850000000001
	.quad	0x402020244e93e1ca              # double 8.0627770000000005
	.quad	0x401ed85942917508              # double 7.711278
	.quad	0x40204d5dc4007571              # double 8.1511060000000004
	.quad	0x3ffd4373f316e371              # double 1.8289679999999999
	.quad	0x3fe0476af89c5e70              # double 0.508718
	.quad	0x3fccf7121ab4b72c              # double 0.22628999999999999
	.quad	0x400dc43b2dd377e2              # double 3.7208160000000001
	.quad	0x40125ed9dfdac68b              # double 4.5926280000000004
	.quad	0x4001fd1676640a6c              # double 2.2485780000000002
	.quad	0x401fa1e53a81dc0e              # double 7.9081010000000003
	.quad	0x400948dc981beb18              # double 3.160577
	.quad	0x401f991ea78af3e4              # double 7.8995309999999996
	.quad	0x4001bd4c76d117b5              # double 2.2174309999999999
	.quad	0x3ff1bb9bed30f063              # double 1.108303
	.quad	0x4020c45e2cdc011d              # double 8.3835309999999996
	.quad	0x3ff742f61ed5ae1d              # double 1.453848
	.quad	0x401ae7ad080b673c              # double 6.7262459999999997
	.quad	0x4001a8f32378ab0d              # double 2.2074950000000002
	.quad	0x400ecfd5454152b1              # double 3.8514810000000002
	.quad	0x3fe2ef954eb13dfb              # double 0.59174599999999999
	.quad	0x400d153b4b2fa93b              # double 3.635367
	.quad	0x3ff055703f2d3c79              # double 1.020859
	.quad	0x4014dd63cb817332              # double 5.2162009999999999
	.quad	0x4020c4488c60cbf3              # double 8.3833660000000005
	.quad	0x4020ee8e1d6494d5              # double 8.4659279999999999
	.quad	0x401479df1172ef0b              # double 5.1190150000000001
	.quad	0x401fecae21101b00              # double 7.9811329999999998
	.quad	0x4006ef56eac86057              # double 2.8668650000000002
	.quad	0x4020b8fa15db3398              # double 8.3612830000000002
	.quad	0x402272602c9081c3              # double 9.2233900000000002
	.quad	0x40204f4ddf86e3b4              # double 8.1548909999999992
	.quad	0x40219035dedf1e08              # double 8.7816609999999997
	.quad	0x4014a562e09fe868              # double 5.1615099999999998
	.quad	0x3fd53cb3e5753a3f              # double 0.33183000000000001
	.quad	0x4012918548a9bcfd              # double 4.6421099999999997
	.quad	0x400664bdba0a5269              # double 2.7991899999999998
	.quad	0x3fe34471b4784231              # double 0.602105
	.quad	0x3ff032c5197a2489              # double 1.0123949999999999
	.quad	0x401290c5a8155d5f              # double 4.6413789999999997
	.quad	0x3ffd8cfaeff5c6c1              # double 1.846919
	.quad	0x401da035371971c1              # double 7.406453
	.quad	0x40045a3a08398a65              # double 2.5440559999999999
	.quad	0x3fd99691a75cd0bb              # double 0.39981499999999998
	.quad	0x4014861c79b34a45              # double 5.1309680000000002
	.quad	0x3fe47bdad7518b0d              # double 0.64011899999999999
	.quad	0x3fe61a437824d4cc              # double 0.69070600000000004
	.quad	0x4022f6cf20642396              # double 9.4820489999999999
	.quad	0x4022cc40f2389720              # double 9.3989329999999995
	.quad	0x4016dc70867ad8e4              # double 5.7152729999999998
	.quad	0x400b47525460aa65              # double 3.4098250000000001
	.quad	0x4020579591cd1c7e              # double 8.1710630000000002
	.quad	0x40215844284dfce3              # double 8.6723949999999999
	.quad	0x400043b688bda943              # double 2.0330629999999998
	.quad	0x4017e1e0c5a8155d              # double 5.9705839999999997
	.quad	0x40029fcf3dc054ef              # double 2.3280319999999999
	.quad	0x4005dc48f10a99b7              # double 2.732561
	.quad	0x401bcb0b39192642              # double 6.9482850000000003
	.quad	0x401754806290eed0              # double 5.8325209999999998
	.quad	0x401293c68661ae71              # double 4.6443120000000002
	.quad	0x401ee7a02fb5d031              # double 7.7261969999999999
	.quad	0x401988359bc33f85              # double 6.3830169999999997
	.quad	0x40135358f2e05ccd              # double 4.8313940000000004
	.quad	0x3feae06317268d33              # double 0.83989100000000005
	.quad	0x402371d2bf551505              # double 9.7223109999999994
	.quad	0x4010f6f0068db8bb              # double 4.2411500000000002
	.quad	0x400933dea465a576              # double 3.1503269999999999
	.quad	0x4011d7460242d05f              # double 4.4602279999999999
	.quad	0x4020d7eb6bf444e1              # double 8.4217180000000003
	.quad	0x40156c69728a6117              # double 5.3558709999999996
	.quad	0x402032003ab862b2              # double 8.0976579999999991
	.quad	0x40207a53fc0096ff              # double 8.2389220000000005
	.quad	0x3fdc5e8d5410f94d              # double 0.44327100000000003
	.quad	0x400851c8eabffcdb              # double 3.0399340000000001
	.quad	0x401e18259e1f3a58              # double 7.523581
	.quad	0x40202a875d56f32c              # double 8.0830640000000002
	.quad	0x400022bc72e275ab              # double 2.0169609999999998
	.quad	0x4021104c6a3bddfd              # double 8.5318330000000007
	.quad	0x401f0998d045fe11              # double 7.7593719999999999
	.quad	0x4017d9b8023a6ce3              # double 5.9626159999999997
	.quad	0x4020ed4c122749f1              # double 8.4634710000000002
	.quad	0x3fac49dbec2480e9              # double 0.055251000000000001
	.quad	0x401fbda7b0b39192              # double 7.9352099999999997
	.quad	0x4022f1fea8112ba1              # double 9.4726459999999992
	.quad	0x401304067cf1c326              # double 4.7539309999999997
	.quad	0x40061ccaf709b739              # double 2.764059
	.quad	0x3fe2e8ec52a411c3              # double 0.59093300000000004
	.quad	0x40234099bf5946c3              # double 9.6261729999999996
	.quad	0x401a3a67a52ac754              # double 6.5570360000000001
	.quad	0x40228d2999567dbb              # double 9.2757079999999998
	.quad	0x4019668986fcdee3              # double 6.3501339999999997
	.quad	0x401b7095af294dd7              # double 6.8599459999999999
	.quad	0x402061146e4c0df6              # double 8.1896090000000008
	.quad	0x4018f0ebaade657c              # double 6.2352740000000004
	.quad	0x401e60029f16b11c              # double 7.5937599999999996
	.quad	0x4019e54f7a919696              # double 6.4739360000000001
	.quad	0x3fdc8f4b61fe21d9              # double 0.44624599999999998
	.quad	0x40225c2f1ed17c5f              # double 9.1800470000000001
	.quad	0x4019bb4a2339c0ec              # double 6.4329000000000001
	.quad	0x401fd39f77292c49              # double 7.9566629999999998
	.quad	0x4023470520d130e0              # double 9.6387110000000007
	.quad	0x40158ca57a786c22              # double 5.3873499999999996
	.quad	0x3fffd6a487336588              # double 1.989903
	.quad	0x4010122749f0e4da              # double 4.017728
	.quad	0x401ce7182235b4ee              # double 7.2256780000000003
	.quad	0x4002f861a60d4563              # double 2.3712800000000001
	.quad	0x3ffe48b75ea67e84              # double 1.8927529999999999
	.quad	0x401e21e8a2ec28b3              # double 7.5331140000000003
	.quad	0x401adb1c864883fd              # double 6.7139759999999997
	.quad	0x3feaa3a29c779a6b              # double 0.83247499999999997
	.quad	0x4006bb5c7cd898b3              # double 2.841485
	.quad	0x400a00eae18ac9f3              # double 3.250448
	.quad	0x401ead4cfd08d4bb              # double 7.6692390000000001
	.quad	0x401f69f3c70c996b              # double 7.8534689999999995
	.quad	0x401a294e5d5b24ea              # double 6.5403380000000002
	.quad	0x40107dd095af294e              # double 4.1228660000000001
	.quad	0x4018192253111f0c              # double 6.0245449999999998
	.quad	0x4001c6e221c8a7a4              # double 2.2221109999999999
	.quad	0x400e9113836a832c              # double 3.8208380000000002
	.quad	0x4022df08aac96cc6              # double 9.435613
	.quad	0x3fcca3a4b5568e82              # double 0.223744
	.quad	0x40228a0663c74fb5              # double 9.2695799999999995
	.quad	0x401603aeee957471              # double 5.5035970000000001
	.quad	0x40207f143393ab43              # double 8.2482009999999999
	.quad	0x40031ae685db76b4              # double 2.3881350000000001
	.quad	0x4006f3a9b0681238              # double 2.868976
	.quad	0x4002054152b0a6fc              # double 2.2525659999999998
	.quad	0x4001aa400fba8827              # double 2.2081300000000001
	.quad	0x4017f827fa1a0cf2              # double 5.9923400000000004
	.quad	0x400334ff865d7cb3              # double 2.4008780000000001
	.quad	0x4006fcd67fd3f5b6              # double 2.873456
	.quad	0x3f9883ba3443d46b              # double 0.023939999999999999
	.quad	0x40172fff79c842fa              # double 5.7968729999999997
	.quad	0x400f0490a350d280              # double 3.8772289999999998
	.quad	0x400972d55a3a083a              # double 3.1810710000000002
	.quad	0x402144c5b8dc5500              # double 8.6343209999999999
	.quad	0x3fd263fdd65a1449              # double 0.28735300000000003
	.quad	0x4005562e09fe8683              # double 2.6670799999999999
	.quad	0x400e69e3c968943e              # double 3.801704
	.quad	0x4008f6dfc5cdd50b              # double 3.1205440000000002
	.quad	0x401c1bead4f5903a              # double 7.0272629999999996
	.quad	0x401821b1960fa15e              # double 6.0329040000000003
	.quad	0x40229c2df0d41312              # double 9.3050379999999997
	.quad	0x3fffde7d9988d2a2              # double 1.991819
	.quad	0x4004281450efdc9c              # double 2.5195699999999999
	.quad	0x400bb420b3d4ae43              # double 3.4629530000000002
	.quad	0x40198214ad362e90              # double 6.3770319999999998
	.quad	0x3fed0f8c64fdb09a              # double 0.90814799999999996
	.quad	0x3fd5d8cb07d0aeda              # double 0.34135700000000002
	.quad	0x40229f294dd72368              # double 9.3108620000000001
	.quad	0x3ffa1b7f1737542a              # double 1.631713
	.quad	0x4017367c6b8b6955              # double 5.8032089999999998
	.quad	0x4012a0e51d25aab4              # double 4.6571239999999996
	.quad	0x4003c41bb8c32a8d              # double 2.4707560000000002
	.quad	0x400862d490e66cb1              # double 3.048257
	.quad	0x4020540357a35504              # double 8.1640879999999995
	.quad	0x3fdfcb7d41743e96              # double 0.49679499999999999
	.quad	0x4022bd4ae429e0a4              # double 9.3697119999999998
	.quad	0x4015ac2a454de7ea              # double 5.4181299999999997
	.quad	0x401a736049ecb31c              # double 6.6126719999999999
	.quad	0x4008a5d9e40c8473              # double 3.0809820000000001
	.quad	0x4018943d03968d76              # double 6.1447640000000003
	.quad	0x4014aefd86a8fc0d              # double 5.1708889999999998
	.quad	0x401b8740c4156e26              # double 6.8820829999999997
	.quad	0x4015cfe931876189              # double 5.4530380000000003
	.quad	0x40010b5c39bcba30              # double 2.130547
	.quad	0x401c523358f2e05d              # double 7.0802740000000002
	.quad	0x40202573eab367a1              # double 8.07315
	.quad	0x3fe6499d0203e63f              # double 0.69648600000000005
	.quad	0x400e121ff2e48e8a              # double 3.7588499999999998
	.quad	0x400918bef8ceb357              # double 3.1370830000000001
	.quad	0x402079cef240fa9c              # double 8.2379069999999998
	.quad	0x401a8407cc7d1bb5              # double 6.6289360000000004
	.quad	0x40078dfa43fe5c92              # double 2.9443250000000001
	.quad	0x3ff499945b6c3761              # double 1.2874950000000001
	.quad	0x401ebb97785729b3              # double 7.6831950000000004
	.quad	0x4010af61ed5ae1ce              # double 4.1712720000000001
	.quad	0x40112057d1782d38              # double 4.2815849999999998
	.quad	0x3fe59361dc93ea2d              # double 0.67424099999999998
	.quad	0x3ff15ec1c1d6cf85              # double 1.085634
	.quad	0x400532b4d8ba40d9              # double 2.649759
	.quad	0x401bc8826aa8eb46              # double 6.9458099999999998
	.quad	0x3ff90cb8e086bdf5              # double 1.5656060000000001
	.quad	0x4016a51f3e89a88b              # double 5.6612520000000002
	.quad	0x3fed9f87f023e9ea              # double 0.92572399999999999
	.quad	0x3fff1a6612839043              # double 1.943945
	.quad	0x40206bbecaab8a5d              # double 8.2104400000000002
	.quad	0x4022725a250f8402              # double 9.2233440000000009
	.quad	0x4020375afaf85943              # double 8.1081160000000008
	.quad	0x3ff625cc426351df              # double 1.384228
	.quad	0x40163388ebcc6c55              # double 5.5503270000000002
	.quad	0x40056b5350092ccf              # double 2.6774049999999998
	.quad	0x400f699e0e73604a              # double 3.926571
	.quad	0x4000d1fddebd9019              # double 2.102535
	.quad	0x401d02e3c536d656              # double 7.2528220000000001
	.quad	0x40099f19d66adb40              # double 3.2026859999999999
	.quad	0x3fe8ee3715400325              # double 0.77907899999999997
	.quad	0x401dd2ca9ac36545              # double 7.455851
	.quad	0x3fbf4fa48301a7a0              # double 0.122309
	.quad	0x4022fb677f6b1a2a              # double 9.4910239999999995
	.quad	0x40041054ac29bf16              # double 2.5079739999999999
	.quad	0x3fd97a4e7ab75643              # double 0.39809
	.quad	0x401a9cf0739b024f              # double 6.6532609999999996
	.quad	0x4009ee66cb10342b              # double 3.2414070000000001
	.quad	0x40232a49a133c1ce              # double 9.5825929999999993
	.quad	0x4001d589efd86a90              # double 2.2292670000000001
	.quad	0x3fd5fc6540cc78ea              # double 0.34353
	.quad	0x4015f01c92ddbdb6              # double 5.4844840000000001
	.quad	0x401ff4a6eb91b3f2              # double 7.988918
	.quad	0x40024861e92923e6              # double 2.2853430000000001
	.quad	0x3ff2522a6f3f52fc              # double 1.14506
	.quad	0x3fe09e774eebf65e              # double 0.51934400000000003
	.quad	0x401e3b81f969e3c9              # double 7.5581129999999996
	.quad	0x402234692f6e8295              # double 9.1023650000000007
	.quad	0x400273a57eaa2a0b              # double 2.3064680000000002
	.quad	0x4017fcd1c7de5083              # double 5.9968940000000002
	.quad	0x3ff254e7ee9142b3              # double 1.145729
	.quad	0x40168c6cdaf4adbc              # double 5.6371339999999996
	.quad	0x400b042f1ed17c5f              # double 3.377043
	.quad	0x4016ded80a17b0f7              # double 5.7176210000000003
	.quad	0x4020e07b99d451fc              # double 8.4384429999999994
	.quad	0x3fffe2f9ca5bd945              # double 1.9929140000000001
	.quad	0x4023bc0f23897204              # double 9.8673029999999997
	.quad	0x400d00ccff21b3af              # double 3.625391
	.quad	0x4018dcce1c58255b              # double 6.21563
	.quad	0x40122b9c7368ad69              # double 4.5425890000000004
	.quad	0x4021ecf206423960              # double 8.9627839999999992
	.quad	0x4009d8a5ce5b4246              # double 3.230785
	.quad	0x40006c165907d912              # double 2.0527769999999999
	.quad	0x3ff9f7d84901d191              # double 1.6230089999999999
	.quad	0x402000f36694898f              # double 8.0018569999999993
	.quad	0x4023913d5347a5b1              # double 9.783671
	.quad	0x40129374ff865d7d              # double 4.6440010000000003
	.quad	0x400809e0a41a261c              # double 3.004823
	.quad	0x4005062a1b5c7cd9              # double 2.6280100000000002
	.quad	0x3ff1d334c5da6a44              # double 1.1140639999999999
	.quad	0x40238aaa3ad18d26              # double 9.7708300000000001
	.quad	0x400daaf6837f7be1              # double 3.7084779999999999
	.quad	0x4012df80dc33721d              # double 4.7182649999999997
	.quad	0x402035edaec4a409              # double 8.1053289999999993
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
