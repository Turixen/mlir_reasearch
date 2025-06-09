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
	.quad	0x411f9d7d524a6a87              # double 517983.33036199998
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
	.quad	999                             # 0x3e7
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	999                             # 0x3e7
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
	lui	a7, %hi(.L__constant_999xindex)
	addi	a7, a7, %lo(.L__constant_999xindex)
	lui	t0, %hi(.L__constant_999xf64)
	addi	t0, t0, %lo(.L__constant_999xf64)
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
	.size	.L__constant_101xindex_0, 808

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

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	101                             # 0x65
	.quad	110                             # 0x6e
	.quad	118                             # 0x76
	.quad	124                             # 0x7c
	.quad	134                             # 0x86
	.quad	151                             # 0x97
	.quad	163                             # 0xa3
	.quad	170                             # 0xaa
	.quad	184                             # 0xb8
	.quad	193                             # 0xc1
	.quad	203                             # 0xcb
	.quad	211                             # 0xd3
	.quad	226                             # 0xe2
	.quad	233                             # 0xe9
	.quad	243                             # 0xf3
	.quad	253                             # 0xfd
	.quad	264                             # 0x108
	.quad	271                             # 0x10f
	.quad	276                             # 0x114
	.quad	291                             # 0x123
	.quad	303                             # 0x12f
	.quad	309                             # 0x135
	.quad	318                             # 0x13e
	.quad	328                             # 0x148
	.quad	336                             # 0x150
	.quad	346                             # 0x15a
	.quad	358                             # 0x166
	.quad	374                             # 0x176
	.quad	382                             # 0x17e
	.quad	394                             # 0x18a
	.quad	400                             # 0x190
	.quad	412                             # 0x19c
	.quad	421                             # 0x1a5
	.quad	434                             # 0x1b2
	.quad	447                             # 0x1bf
	.quad	464                             # 0x1d0
	.quad	478                             # 0x1de
	.quad	484                             # 0x1e4
	.quad	491                             # 0x1eb
	.quad	498                             # 0x1f2
	.quad	507                             # 0x1fb
	.quad	520                             # 0x208
	.quad	534                             # 0x216
	.quad	544                             # 0x220
	.quad	559                             # 0x22f
	.quad	565                             # 0x235
	.quad	577                             # 0x241
	.quad	590                             # 0x24e
	.quad	602                             # 0x25a
	.quad	613                             # 0x265
	.quad	625                             # 0x271
	.quad	630                             # 0x276
	.quad	642                             # 0x282
	.quad	657                             # 0x291
	.quad	665                             # 0x299
	.quad	675                             # 0x2a3
	.quad	681                             # 0x2a9
	.quad	690                             # 0x2b2
	.quad	701                             # 0x2bd
	.quad	711                             # 0x2c7
	.quad	721                             # 0x2d1
	.quad	734                             # 0x2de
	.quad	744                             # 0x2e8
	.quad	754                             # 0x2f2
	.quad	766                             # 0x2fe
	.quad	772                             # 0x304
	.quad	778                             # 0x30a
	.quad	797                             # 0x31d
	.quad	804                             # 0x324
	.quad	813                             # 0x32d
	.quad	824                             # 0x338
	.quad	831                             # 0x33f
	.quad	841                             # 0x349
	.quad	851                             # 0x353
	.quad	860                             # 0x35c
	.quad	875                             # 0x36b
	.quad	884                             # 0x374
	.quad	894                             # 0x37e
	.quad	906                             # 0x38a
	.quad	914                             # 0x392
	.quad	923                             # 0x39b
	.quad	929                             # 0x3a1
	.quad	944                             # 0x3b0
	.quad	950                             # 0x3b6
	.quad	960                             # 0x3c0
	.quad	969                             # 0x3c9
	.quad	978                             # 0x3d2
	.quad	990                             # 0x3de
	.quad	995                             # 0x3e3
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	20                              # 0x14
	.quad	47                              # 0x2f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	3                               # 0x3
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	16                              # 0x10
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	27                              # 0x1b
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	79                              # 0x4f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	77                              # 0x4d
	.quad	95                              # 0x5f
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	19                              # 0x13
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	11                              # 0xb
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	11                              # 0xb
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	86                              # 0x56
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	50                              # 0x32
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	95                              # 0x5f
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	67                              # 0x43
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	46                              # 0x2e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	74                              # 0x4a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	13                              # 0xd
	.quad	40                              # 0x28
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	53                              # 0x35
	.quad	72                              # 0x48
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	56                              # 0x38
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	92                              # 0x5c
	.quad	30                              # 0x1e
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	96                              # 0x60
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	58                              # 0x3a
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	27                              # 0x1b
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	45                              # 0x2d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	95                              # 0x5f
	.quad	15                              # 0xf
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	74                              # 0x4a
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	25                              # 0x19
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	55                              # 0x37
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	50                              # 0x32
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	82                              # 0x52
	.size	.L__constant_999xindex, 7992

	.type	.L__constant_999xf64,@object    # @__constant_999xf64
	.p2align	6, 0x0
.L__constant_999xf64:
	.quad	0x4023f2a715831f04              # double 9.9739310000000003
	.quad	0x3fecb07075b3e143              # double 0.89653799999999995
	.quad	0x3fff413660e51d26              # double 1.9534210000000001
	.quad	0x3ff137143393ab43              # double 1.075947
	.quad	0x4018aee0b0af5fd4              # double 6.1707789999999996
	.quad	0x4022e258d5842b73              # double 9.4420839999999994
	.quad	0x4014c6c6583e8577              # double 5.1941160000000002
	.quad	0x4003773083558a76              # double 2.433198
	.quad	0x402379db22d0e560              # double 9.7379999999999995
	.quad	0x4021c0268900c522              # double 8.8752940000000002
	.quad	0x4010d9f6ec5b078e              # double 4.2128560000000004
	.quad	0x3ff32e82949a5658              # double 1.198855
	.quad	0x4016a48e8a71de6a              # double 5.6607000000000003
	.quad	0x3fff37d523b3636f              # double 1.9511309999999999
	.quad	0x3ff35f83be6601bd              # double 1.2108190000000001
	.quad	0x4012e0e3cd9a5226              # double 4.7196189999999998
	.quad	0x4010053825e13b19              # double 4.0050970000000001
	.quad	0x40154b827fa1a0cf              # double 5.3237399999999999
	.quad	0x4011ca79bbadc098              # double 4.44773
	.quad	0x4007199f5dfeb8d8              # double 2.8875109999999999
	.quad	0x401e2f5a964e8b7e              # double 7.5462439999999997
	.quad	0x40212b55043e5322              # double 8.5846330000000002
	.quad	0x3fb6f9ebe9c88616              # double 0.089750999999999997
	.quad	0x4008b31fcd24e161              # double 3.0874630000000001
	.quad	0x40230c1615ebfa8f              # double 9.5236059999999991
	.quad	0x3fc4647778dd6170              # double 0.15931600000000001
	.quad	0x3ff0c102ff8ec0f9              # double 1.0471220000000001
	.quad	0x4016ada8bd230b9e              # double 5.6695890000000002
	.quad	0x401d14a72ead9275              # double 7.2701690000000001
	.quad	0x401f901040bfe3b0              # double 7.8906869999999998
	.quad	0x4023b98372e6a769              # double 9.8623309999999992
	.quad	0x401eabedb7281fda              # double 7.6678990000000002
	.quad	0x401a2a3f8982cb21              # double 6.541258
	.quad	0x401c5af4adbc664d              # double 7.0888239999999998
	.quad	0x40127f666234a87e              # double 4.6244139999999998
	.quad	0x3ff8fabead4f5904              # double 1.5612170000000001
	.quad	0x4016303148776816              # double 5.5470629999999996
	.quad	0x3ff5c5d52c16df40              # double 1.3607990000000001
	.quad	0x401fd4bf0995aaf8              # double 7.9577600000000003
	.quad	0x4014548909289dae              # double 5.082554
	.quad	0x401074e4c942d491              # double 4.1141540000000001
	.quad	0x40179f5d35653c9b              # double 5.9056290000000002
	.quad	0x40201740c4156e26              # double 8.0454159999999995
	.quad	0x402398d5629d840a              # double 9.7985030000000002
	.quad	0x401283393ab430f5              # double 4.6281480000000004
	.quad	0x40219d3a81dc0db2              # double 8.8070869999999992
	.quad	0x402097cb923a29c7              # double 8.2964749999999992
	.quad	0x4015540895d0b73d              # double 5.3320639999999999
	.quad	0x4006aec636b09635              # double 2.8353389999999998
	.quad	0x4021da276b7ed41b              # double 8.9260819999999992
	.quad	0x4020b8d306a2b170              # double 8.3609849999999994
	.quad	0x401029595feda661              # double 4.0403799999999999
	.quad	0x3fe75b1209edbf8c              # double 0.72986700000000004
	.quad	0x400fa06e9ff0cbb0              # double 3.9533360000000002
	.quad	0x401c86dca07f66e8              # double 7.1317009999999996
	.quad	0x401f2606fac6045c              # double 7.7871360000000003
	.quad	0x40217474538ef34d              # double 8.7274499999999993
	.quad	0x4021a239c51dabe2              # double 8.8168469999999992
	.quad	0x4023d442c7fbacb4              # double 9.9145719999999997
	.quad	0x40230e60a2014728              # double 9.5280810000000002
	.quad	0x401ad4f722e1ac58              # double 6.7079740000000001
	.quad	0x400fe6c97d8cf399              # double 3.987689
	.quad	0x3fb5272c94b380cb              # double 0.082628999999999994
	.quad	0x4015b807357e670e              # double 5.4297149999999998
	.quad	0x400d985f8d2e514c              # double 3.6994009999999999
	.quad	0x401010ee06d93815              # double 4.0165329999999999
	.quad	0x401c0a715831f03d              # double 7.0101979999999999
	.quad	0x40197f7d73c92578              # double 6.3745019999999997
	.quad	0x401c53b256ffc116              # double 7.0817350000000001
	.quad	0x4023cbad18d25edd              # double 9.8978049999999999
	.quad	0x3ff8fe0589acbc8c              # double 1.562017
	.quad	0x400bb1244a6223e2              # double 3.4614950000000002
	.quad	0x401cd947cfa26a23              # double 7.2121880000000003
	.quad	0x401bbabef06b3786              # double 6.9323689999999996
	.quad	0x3fe80b1572580c31              # double 0.75135300000000005
	.quad	0x40208896feb4a665              # double 8.2667769999999994
	.quad	0x4017ba3b57c4e2f3              # double 5.9318669999999996
	.quad	0x40106e41d4b6a61a              # double 4.1076730000000001
	.quad	0x4021e4fc1df3300e              # double 8.9472360000000002
	.quad	0x4017d812be48a58b              # double 5.9610089999999998
	.quad	0x400fbe9e1b089a02              # double 3.9680749999999998
	.quad	0x4002b9096bb98c7e              # double 2.3403499999999999
	.quad	0x4016326e5471715c              # double 5.5492489999999997
	.quad	0x4021f1782d38476f              # double 8.9716199999999997
	.quad	0x402090880d801b43              # double 8.2822879999999994
	.quad	0x40011a7fc32ebe59              # double 2.1379389999999998
	.quad	0x401578909289dae0              # double 5.3677390000000003
	.quad	0x40128b0c026cc1ca              # double 4.6357879999999998
	.quad	0x402180e8ea39c51e              # double 8.7517770000000006
	.quad	0x402212dcf4623d0c              # double 9.036842
	.quad	0x4021317939a7c17b              # double 8.5966280000000008
	.quad	0x3fbcc7e28240b780              # double 0.112425
	.quad	0x40193b4b2fa93af7              # double 6.3079039999999997
	.quad	0x3ff0e3e8dda48b65              # double 1.055642
	.quad	0x4020d4e7ab756430              # double 8.4158299999999997
	.quad	0x4010f089a0275254              # double 4.2348999999999997
	.quad	0x40155c2f405f6ba0              # double 5.3400239999999997
	.quad	0x40012a98aa8650e7              # double 2.1457989999999998
	.quad	0x4023d96af038e2a0              # double 9.9246440000000007
	.quad	0x4019902b841248d8              # double 6.3907910000000001
	.quad	0x400bd361dc93ea2d              # double 3.4782139999999999
	.quad	0x3ffba06748e47560              # double 1.726661
	.quad	0x3ff2d0d2806af46b              # double 1.1759820000000001
	.quad	0x401994f93bc0a06f              # double 6.3954820000000003
	.quad	0x40054f5771001d5c              # double 2.6637409999999999
	.quad	0x401e5c37a3db3bfb              # double 7.5900559999999996
	.quad	0x401d1fb15b573eab              # double 7.2809499999999998
	.quad	0x401af60e51d25aab              # double 6.7402889999999998
	.quad	0x4019aceee0f3cb3e              # double 6.4188799999999997
	.quad	0x401f6e785b5b7069              # double 7.8578809999999998
	.quad	0x400063e20ccff21b              # double 2.0487709999999999
	.quad	0x401d2dba0a526959              # double 7.2946549999999997
	.quad	0x40157bd4cfd08d4c              # double 5.3709290000000003
	.quad	0x4005b4d6a161e4f7              # double 2.7132999999999998
	.quad	0x402106cf63800219              # double 8.5133010000000002
	.quad	0x401675f4a1272c95              # double 5.6151910000000003
	.quad	0x4012cf648c7192ea              # double 4.7025319999999997
	.quad	0x3fe0f39085f4a127              # double 0.52973199999999998
	.quad	0x401b233d29563a9f              # double 6.7844129999999998
	.quad	0x401ef62cba732df5              # double 7.7404049999999999
	.quad	0x3ff1f3f961804d98              # double 1.122064
	.quad	0x40110154003254e7              # double 4.2512970000000001
	.quad	0x401cfdda8bd230ba              # double 7.2479040000000001
	.quad	0x4003901b866e43aa              # double 2.4453649999999998
	.quad	0x4021ac02afdda8bd              # double 8.8359579999999998
	.quad	0x4022b9210385c67e              # double 9.36158
	.quad	0x3ff342f837b4a234              # double 1.2038500000000001
	.quad	0x4007037ef5a964e9              # double 2.8767070000000001
	.quad	0x4022451e96c3fc44              # double 9.1349990000000005
	.quad	0x401b0fc0d2c386d3              # double 6.7653840000000001
	.quad	0x4023ee07a28bb0a3              # double 9.9649020000000003
	.quad	0x4013ca1d323fee2d              # double 4.9473770000000004
	.quad	0x401ae16df3f96180              # double 6.7201459999999997
	.quad	0x401bb64388ebcc6c              # double 6.9279919999999997
	.quad	0x3ff3084a515ce9e6              # double 1.189524
	.quad	0x4021e13532e7b3d9              # double 8.9398590000000002
	.quad	0x40079bdad7518b0d              # double 2.951101
	.quad	0x4022ebb906466b1e              # double 9.4603959999999994
	.quad	0x401caed0b30b5aa7              # double 7.1707179999999999
	.quad	0x4022634784230fd0              # double 9.1939050000000009
	.quad	0x3ff673882278d0cc              # double 1.403206
	.quad	0x402006af038e29fa              # double 8.0130540000000003
	.quad	0x400642938de6ddf0              # double 2.782508
	.quad	0x3fe04ee392e1ef74              # double 0.50963000000000003
	.quad	0x401ab790752da986              # double 6.6792619999999996
	.quad	0x4012273365881a15              # double 4.5382819999999997
	.quad	0x401ab8405b39e27a              # double 6.6799330000000001
	.quad	0x40155ac3a860dcba              # double 5.3386370000000003
	.quad	0x40166a47a9e2bcf9              # double 5.6037889999999999
	.quad	0x3ffb84fc1df3300e              # double 1.719967
	.quad	0x3fe90d8665e02ea9              # double 0.78290099999999996
	.quad	0x40226ced2cbea4ec              # double 9.2127470000000002
	.quad	0x3ff70c5a8155d5f5              # double 1.4405159999999999
	.quad	0x3fb544fe36d22425              # double 0.083084000000000005
	.quad	0x40235d9253543aeb              # double 9.6827570000000005
	.quad	0x4013e6a26e547171              # double 4.9752289999999997
	.quad	0x4010419ac79702e6              # double 4.0640669999999997
	.quad	0x401d9cf67b1c0011              # double 7.4032840000000002
	.quad	0x4023c52ae8e1d649              # double 9.8850929999999994
	.quad	0x401ed16d6dc1a47b              # double 7.7045190000000003
	.quad	0x3fd91f03d145d851              # double 0.39251799999999998
	.quad	0x4019400c0f01fb83              # double 6.3125460000000002
	.quad	0x40127c55432873bd              # double 4.6214190000000004
	.quad	0x402006a161e4f766              # double 8.01295
	.quad	0x3ff07f08893b7d85              # double 1.0310140000000001
	.quad	0x4004b5410f94c87a              # double 2.5885030000000002
	.quad	0x400da76188b1140a              # double 3.7067290000000002
	.quad	0x40059559b3d07c85              # double 2.6979250000000001
	.quad	0x4019397cc39ffd61              # double 6.3061400000000001
	.quad	0x401f4e8ab4fa4830              # double 7.8267009999999999
	.quad	0x400af673c4f3ba77              # double 3.3703379999999998
	.quad	0x402338f041461b6d              # double 9.6112079999999995
	.quad	0x400e834c1a8ac5c1              # double 3.8141099999999999
	.quad	0x40124b18116ebd4d              # double 4.573334
	.quad	0x401a0c5260f5e41d              # double 6.5120329999999997
	.quad	0x4013c3e89a88ace2              # double 4.9413169999999997
	.quad	0x400d128b6d86ec18              # double 3.634055
	.quad	0x4019a4c61d8622c4              # double 6.4109119999999997
	.quad	0x3fee9cd5f99c38b0              # double 0.95664499999999997
	.quad	0x4011c6117720c8cd              # double 4.4434259999999997
	.quad	0x4021a8bdcad14a0a              # double 8.8295729999999999
	.quad	0x4020318116ebd4d0              # double 8.0966880000000003
	.quad	0x4007514445aa2e3c              # double 2.9146809999999999
	.quad	0x401b58e757928e0d              # double 6.8368200000000003
	.quad	0x40150b9ae0c17657              # double 5.2613329999999996
	.quad	0x4012aa4095f2452c              # double 4.6662619999999997
	.quad	0x402229b866e43aa8              # double 9.0814850000000007
	.quad	0x401028665e02ea96              # double 4.039453
	.quad	0x4014bf2f55582129              # double 5.1867039999999998
	.quad	0x4009832ca57a786c              # double 3.1890499999999999
	.quad	0x4014952d666a9824              # double 5.1456809999999997
	.quad	0x40025e889c1b5419              # double 2.2961589999999998
	.quad	0x4002d7154003254e              # double 2.3550209999999998
	.quad	0x3ff4ee5ffa3b9ae1              # double 1.3081970000000001
	.quad	0x401eac4e7253da73              # double 7.6682680000000003
	.quad	0x400c5b1fab96f21f              # double 3.5444939999999998
	.quad	0x3ff332170931012a              # double 1.199729
	.quad	0x3fdc8d9f90539fba              # double 0.44614399999999999
	.quad	0x4010062ae4b01861              # double 4.0060229999999999
	.quad	0x400680ff540895d1              # double 2.8129870000000001
	.quad	0x3fd46d82ba5a0382              # double 0.31918400000000002
	.quad	0x4023aa938de6ddf0              # double 9.8331569999999999
	.quad	0x4009a792d1287c20              # double 3.206823
	.quad	0x40130980f55de58e              # double 4.7592809999999997
	.quad	0x401a43e29307af21              # double 6.5662940000000001
	.quad	0x4000cb24a6a875d5              # double 2.0991909999999998
	.quad	0x4010495b78cc9a78              # double 4.0716380000000001
	.quad	0x4023cb7ac3eb7cbb              # double 9.8974209999999995
	.quad	0x3ff0b5ac8a372607              # double 1.044354
	.quad	0x4022c4b018611fd6              # double 9.3841560000000008
	.quad	0x4023854e8fb00bcc              # double 9.7603650000000001
	.quad	0x3ff05a038194c016              # double 1.021976
	.quad	0x401b74cec41dd1a2              # double 6.8640699999999999
	.quad	0x401822d3415b1423              # double 6.0340090000000002
	.quad	0x40009eabbcb1cc96              # double 2.0774759999999999
	.quad	0x40156f5f91600f34              # double 5.3587629999999997
	.quad	0x401611db877ab325              # double 5.5174390000000004
	.quad	0x401ac6c093d96638              # double 6.6940939999999998
	.quad	0x40168b03e20ccff2              # double 5.6357569999999999
	.quad	0x3fff8f4623d0bfa1              # double 1.9724790000000001
	.quad	0x4023f9e3eaf6837f              # double 9.9880669999999991
	.quad	0x40027a2163fdd65a              # double 2.309634
	.quad	0x40205d7603925bb8              # double 8.1825410000000005
	.quad	0x4002bb4245f5ad97              # double 2.3414350000000002
	.quad	0x401dfba5a038194c              # double 7.495749
	.quad	0x401aa14488c60cbf              # double 6.6574879999999999
	.quad	0x40088ae21101b003              # double 3.0678139999999998
	.quad	0x3ff8a3e39f77292c              # double 1.5400119999999999
	.quad	0x4021d27bf61aa3f0              # double 8.9111019999999996
	.quad	0x3ff0ad99cbee807c              # double 1.0423830000000001
	.quad	0x4020d3d61f5be5da              # double 8.4137430000000002
	.quad	0x401995ec80c73abd              # double 6.3964100000000004
	.quad	0x401efbf4cb1897a6              # double 7.7460509999999996
	.quad	0x402346bbdbe3c105              # double 9.6381519999999998
	.quad	0x400254e0114d2f5e              # double 2.2914430000000001
	.quad	0x4020a0ed1bf7ad4b              # double 8.3143089999999997
	.quad	0x401c4f11b60ae968              # double 7.077216
	.quad	0x3fc7bf83382e44b7              # double 0.185532
	.quad	0x3fda725c3dee7818              # double 0.41322999999999999
	.quad	0x4022224febd09e13              # double 9.0670160000000006
	.quad	0x4017d21187e7c06e              # double 5.9551449999999999
	.quad	0x401350e6299524c0              # double 4.8290030000000002
	.quad	0x4018f0a9de8b3b32              # double 6.235023
	.quad	0x401f683a96d4c33b              # double 7.8517859999999997
	.quad	0x40225bd1cc100e6b              # double 9.179335
	.quad	0x4007af51ac9afe1e              # double 2.9606050000000002
	.quad	0x4019daa7ded6ba8c              # double 6.4635309999999997
	.quad	0x40092e568a50507a              # double 3.1476259999999998
	.quad	0x401bc3e63e8dda49              # double 6.9413080000000003
	.quad	0x400d8fb19e731d2e              # double 3.695163
	.quad	0x3ffe4ed4e4c942d5              # double 1.8942460000000001
	.quad	0x401aad7add15f02c              # double 6.6694139999999997
	.quad	0x402066234a87e38f              # double 8.1994880000000006
	.quad	0x4018cf1b25f633ce              # double 6.2022519999999997
	.quad	0x3ffd5d8622c45027              # double 1.8353330000000001
	.quad	0x401154463065f959              # double 4.3322989999999999
	.quad	0x4023c89246bf0132              # double 9.8917409999999997
	.quad	0x3ff24b662fdfc19c              # double 1.143408
	.quad	0x4020fe542e557de1              # double 8.4967360000000003
	.quad	0x4016fc968943e100              # double 5.7466679999999997
	.quad	0x3ff913f4a98aa865              # double 1.567372
	.quad	0x401295fa22706d50              # double 4.6464619999999996
	.quad	0x401dbc8472c0e7bc              # double 7.4340989999999998
	.quad	0x401b61da7b0b3919              # double 6.8455599999999999
	.quad	0x4003259d12cadddf              # double 2.3933659999999999
	.quad	0x4022adee99a62ed3              # double 9.3397109999999994
	.quad	0x40200262aa19439e              # double 8.0046590000000002
	.quad	0x400cc5faebc408d9              # double 3.59667
	.quad	0x401531a93293d103              # double 5.2984970000000002
	.quad	0x402384bd1244a622              # double 9.7592549999999996
	.quad	0x4012279e59f2ba9d              # double 4.5386899999999999
	.quad	0x40202258f7121ab5              # double 8.0670850000000005
	.quad	0x40159694ccab3ede              # double 5.3970520000000004
	.quad	0x3fd4ae1cde5d1809              # double 0.323127
	.quad	0x3ffc619fc2a8869c              # double 1.7738339999999999
	.quad	0x4011e1c4b90214ad              # double 4.4704769999999998
	.quad	0x401c9da37ef5a965              # double 7.1539440000000001
	.quad	0x4005164b662fdfc2              # double 2.6358860000000002
	.quad	0x401c135b0bbf50e3              # double 7.0189019999999998
	.quad	0x401a54a90470a809              # double 6.5826760000000002
	.quad	0x4010710342aa9f7b              # double 4.1103639999999997
	.quad	0x40005841aac53b08              # double 2.043094
	.quad	0x4015205a708ede55              # double 5.2815950000000003
	.quad	0x4020a54b05b7cfe6              # double 8.3228380000000008
	.quad	0x4020092f09d8c6d6              # double 8.0179369999999999
	.quad	0x401285accd53048a              # double 4.6305420000000002
	.quad	0x4013711c2a023209              # double 4.8604589999999996
	.quad	0x400bbfc8f32378ab              # double 3.468645
	.quad	0x4007f1d68c692f6f              # double 2.9930850000000002
	.quad	0x401c9de1198aeb81              # double 7.1541790000000001
	.quad	0x3fc812f901083dbc              # double 0.188079
	.quad	0x3fff98d8a979e16d              # double 1.9748159999999999
	.quad	0x400f10a5efe93187              # double 3.8831289999999998
	.quad	0x402085204af92296              # double 8.2600119999999997
	.quad	0x400d72cf95d4e8fb              # double 3.68106
	.quad	0x401138e60807357e              # double 4.3055649999999996
	.quad	0x40000495e17e34b9              # double 2.0022389999999999
	.quad	0x401773cb81733227              # double 5.8630810000000002
	.quad	0x40134953dea465a5              # double 4.8216089999999996
	.quad	0x401bf1d6cf850df1              # double 6.9861709999999997
	.quad	0x401396cdf266ba49              # double 4.8972699999999998
	.quad	0x4014f494d50ebaae              # double 5.2388490000000001
	.quad	0x4016797a67a52ac7              # double 5.6186309999999997
	.quad	0x4021eaeddce7cd03              # double 8.9588459999999994
	.quad	0x400532a94ff0025c              # double 2.649737
	.quad	0x401ddfceb78897ea              # double 7.4685620000000004
	.quad	0x40084c111ada76d9              # double 3.0371419999999998
	.quad	0x40103d14a0a0f4d8              # double 4.0596490000000003
	.quad	0x400606490a350d28              # double 2.753069
	.quad	0x401919f0a1be2b49              # double 6.2753319999999997
	.quad	0x3fea91a75cd0bb6f              # double 0.83028000000000002
	.quad	0x4017a2b4528283d3              # double 5.9088909999999997
	.quad	0x400f16b09635610b              # double 3.8860790000000001
	.quad	0x4008ed1f1cfbb949              # double 3.1157819999999998
	.quad	0x4007851654d61b2a              # double 2.9399839999999999
	.quad	0x401894c7f3493858              # double 6.1452939999999998
	.quad	0x401b7a7ef9db22d1              # double 6.8696250000000001
	.quad	0x3fe089310129cbab              # double 0.51674699999999996
	.quad	0x3fbdaf3a14cec41e              # double 0.115955
	.quad	0x4006e2dc6e2a8006              # double 2.8607719999999999
	.quad	0x40058a2877ee4e27              # double 2.6924600000000001
	.quad	0x3ffdcb2314013ec4              # double 1.8620939999999999
	.quad	0x400400bdcad14a0a              # double 2.500362
	.quad	0x401395aee631f8a1              # double 4.8961750000000004
	.quad	0x400d09de8b3b3205              # double 3.6298189999999999
	.quad	0x4023b3df2a9d627c              # double 9.851312
	.quad	0x4016eb73083558a7              # double 5.7299309999999997
	.quad	0x400d4f398e970718              # double 3.6636839999999999
	.quad	0x40213c144028e4fc              # double 8.6173420000000007
	.quad	0x40219f922962cfd9              # double 8.8116620000000001
	.quad	0x4021fca686e7e62e              # double 8.9934580000000004
	.quad	0x401b4bf9830e3cda              # double 6.8241940000000003
	.quad	0x3f9807789a459104              # double 0.023466000000000001
	.quad	0x3fb26ea854477ff1              # double 0.072000999999999996
	.quad	0x40205d718eb89507              # double 8.1825069999999993
	.quad	0x401ccf1348b22079              # double 7.2022219999999999
	.quad	0x4017dcef240fa9c1              # double 5.9657559999999998
	.quad	0x3ff326fd651b0ccc              # double 1.1970190000000001
	.quad	0x4002c54046412cf1              # double 2.346314
	.quad	0x3ff095fbb517a461              # double 1.0366169999999999
	.quad	0x400d5e0ce0b912dc              # double 3.6709230000000002
	.quad	0x4008f5a07b352a84              # double 3.1199349999999999
	.quad	0x3fd4e88df37329c3              # double 0.32669399999999998
	.quad	0x3ffe0e9a2c669058              # double 1.878565
	.quad	0x4019bdd7ecbb7f9d              # double 6.4353939999999996
	.quad	0x402159f7b5aea316              # double 8.6757179999999998
	.quad	0x40169aa582dbe7f3              # double 5.6510220000000002
	.quad	0x3fb77110e453d20f              # double 0.091568999999999998
	.quad	0x4010e76577531db4              # double 4.2259729999999998
	.quad	0x4014cb3dd11be6e6              # double 5.1984779999999997
	.quad	0x4018c61bb05faebc              # double 6.1934649999999998
	.quad	0x4020763b688bda94              # double 8.2309219999999996
	.quad	0x4021cf8b1572580c              # double 8.9053579999999996
	.quad	0x3ff9a8f8e7ddca4b              # double 1.603753
	.quad	0x401068f5c28f5c29              # double 4.1025
	.quad	0x4004611a11233df3              # double 2.5474130000000001
	.quad	0x40214ff13059641f              # double 8.6561369999999993
	.quad	0x3fbc22036006d0d5              # double 0.10989400000000001
	.quad	0x4019e934efcbd556              # double 6.477741
	.quad	0x402176fc9bc77143              # double 8.7323959999999996
	.quad	0x3fe68ab2e1693c04              # double 0.70443100000000003
	.quad	0x40090b356da0168b              # double 3.1304729999999998
	.quad	0x400fa4988094e5d6              # double 3.9553690000000001
	.quad	0x3fe28d25edd05293              # double 0.57972999999999997
	.quad	0x4022f750c1b97354              # double 9.4830380000000005
	.quad	0x4013f0cc35ce1826              # double 4.9851539999999996
	.quad	0x4022fbf487fcb924              # double 9.4921000000000006
	.quad	0x40225c80c73abc94              # double 9.1806699999999992
	.quad	0x3fd0083dbc23315d              # double 0.25050299999999998
	.quad	0x3fdbbf8b9baa1512              # double 0.43356600000000001
	.quad	0x3fe2c228997c3d68              # double 0.58620099999999997
	.quad	0x400173ccd0fe8ab5              # double 2.181543
	.quad	0x400fc15b9a5a89b9              # double 3.9694129999999999
	.quad	0x40229bd556084a51              # double 9.3043619999999994
	.quad	0x401c29185cee17a0              # double 7.0401319999999998
	.quad	0x40140435696e58a3              # double 5.0041099999999998
	.quad	0x40187e9dd7ecbb80              # double 6.1236490000000003
	.quad	0x4022f553cddd6e05              # double 9.4791550000000004
	.quad	0x402255cb9a9da598              # double 9.1675690000000003
	.quad	0x40091de0d66f0cfe              # double 3.139589
	.quad	0x4011926d8b1dd5d4              # double 4.3929960000000001
	.quad	0x401a8350092ccf6c              # double 6.6282350000000001
	.quad	0x401983f0fe047d3d              # double 6.3788489999999998
	.quad	0x4004fa0d77b7c782              # double 2.622096
	.quad	0x401ff8d25edd0529              # double 7.9929899999999998
	.quad	0x4011722424a276b8              # double 4.3614660000000001
	.quad	0x4022d449774256bd              # double 9.4146230000000006
	.quad	0x4020a10e23af31b1              # double 8.3145609999999994
	.quad	0x401a28183f91e647              # double 6.5391550000000001
	.quad	0x40229a2af5771002              # double 9.3011090000000003
	.quad	0x40183782d38476f3              # double 6.0542100000000003
	.quad	0x401dd1f4f50a02b8              # double 7.4550359999999997
	.quad	0x4018ae97d06bbdbe              # double 6.1705009999999998
	.quad	0x40192e6fb4c3c18b              # double 6.2953479999999997
	.quad	0x3fff1841aac53b08              # double 1.943422
	.quad	0x40202a2e5de15ca7              # double 8.0823850000000004
	.quad	0x4022af6c69b5a640              # double 9.3426240000000007
	.quad	0x400bb15054ac29bf              # double 3.461579
	.quad	0x4002d7f1f9acffa8              # double 2.355442
	.quad	0x4003d8359bc33f85              # double 2.4805709999999999
	.quad	0x4018abf2f5558213              # double 6.1679190000000004
	.quad	0x4023b65cf67b1c00              # double 9.8561779999999999
	.quad	0x3feccf2cf95d4e90              # double 0.90029000000000003
	.quad	0x40127ec460ed80a1              # double 4.6237959999999996
	.quad	0x4022688205ff1d82              # double 9.2041170000000001
	.quad	0x402139e279dd3bb0              # double 8.6130560000000003
	.quad	0x401a69a7c17a8933              # double 6.6031789999999999
	.quad	0x40109646ae3a3a8e              # double 4.1467539999999996
	.quad	0x4005f9620685553f              # double 2.746769
	.quad	0x4018a5b530ced4e5              # double 6.1618240000000002
	.quad	0x40238b5e0f7fcfc4              # double 9.772202
	.quad	0x4021c6672fba01ef              # double 8.8875060000000001
	.quad	0x3fe65072085b1855              # double 0.69732000000000005
	.quad	0x401cd0e6299524c0              # double 7.2040030000000002
	.quad	0x4022b2311e85fd05              # double 9.3480310000000006
	.quad	0x3fe05f6db940fece              # double 0.51164900000000002
	.quad	0x4023b310342aa9f8              # double 9.8497330000000005
	.quad	0x400976cce5f7403e              # double 3.1830080000000001
	.quad	0x401f6442c7fbacb4              # double 7.8479109999999999
	.quad	0x401d336a832b990b              # double 7.300211
	.quad	0x4004458c4bd33d29              # double 2.5339589999999999
	.quad	0x4010d982cb20fb22              # double 4.2124129999999997
	.quad	0x400f5f1e0828c36e              # double 3.9214440000000002
	.quad	0x401a448e8a71de6a              # double 6.5669500000000003
	.quad	0x401c6454152b0a70              # double 7.0979770000000002
	.quad	0x4019235935fc3b4f              # double 6.2845199999999997
	.quad	0x400d419fc2a8869c              # double 3.6570429999999998
	.quad	0x401109a9da597d4a              # double 4.2594370000000001
	.quad	0x3fb67fe4bcad9ad8              # double 0.087888999999999995
	.quad	0x4022f53b8e4b87be              # double 9.4789700000000003
	.quad	0x3fe6df15a4acf313              # double 0.71473200000000003
	.quad	0x4011c07314ca9260              # double 4.4379390000000001
	.quad	0x3ff69691a75cd0bb              # double 1.4117599999999999
	.quad	0x4017435b0bbf50e3              # double 5.8157769999999998
	.quad	0x4023abca5375c8da              # double 9.835528
	.quad	0x4017b523b3636f3b              # double 5.9268939999999999
	.quad	0x401af40ee06d9381              # double 6.7383379999999997
	.quad	0x3fbdc1a47a9e2bd0              # double 0.11623600000000001
	.quad	0x401891ebc83a96d5              # double 6.1425010000000002
	.quad	0x3ff8baeee957470f              # double 1.5456380000000001
	.quad	0x3fff615336deb95e              # double 1.9612609999999999
	.quad	0x4015bd1ed9dfdac7              # double 5.4346880000000004
	.quad	0x4010d67f4dbdf8f4              # double 4.2094699999999996
	.quad	0x40022f0e90bc7b46              # double 2.272977
	.quad	0x4015744a6223e187              # double 5.3635650000000004
	.quad	0x40197f748a159818              # double 6.3744680000000002
	.quad	0x3ff1183a53b8e4b8              # double 1.0684149999999999
	.quad	0x4004a02645e4e69f              # double 2.578198
	.quad	0x401c250ebaade658              # double 7.0361890000000002
	.quad	0x40103d0e56041893              # double 4.0596249999999996
	.quad	0x401be093964a59c0              # double 6.9693129999999996
	.quad	0x3fb82f72b4528284              # double 0.094474000000000002
	.quad	0x3fe0d29dc725c3df              # double 0.52571000000000001
	.quad	0x401d6f444e0daa0d              # double 7.3586590000000003
	.quad	0x401efc8de2ac3223              # double 7.7466350000000003
	.quad	0x3ffdde4e69f05ea2              # double 1.8667739999999999
	.quad	0x3ff95a1cac083127              # double 1.5845
	.quad	0x4023d12428d434a0              # double 9.9084789999999998
	.quad	0x4007c1b8ed1bf7ad              # double 2.9695909999999999
	.quad	0x4018d58644523f68              # double 6.20852
	.quad	0x40219f2474538ef3              # double 8.8108249999999995
	.quad	0x3fefc0fcb4f1e4b4              # double 0.99230799999999996
	.quad	0x40138dc1a47a9e2c              # double 4.8884340000000002
	.quad	0x3fffa0bd44998d04              # double 1.9767429999999999
	.quad	0x3ff1d5da272862f6              # double 1.1147100000000001
	.quad	0x40216a95208e1501              # double 8.7081689999999998
	.quad	0x400ba77e5eaab042              # double 3.4567839999999999
	.quad	0x3fe63edfa43fe5c9              # double 0.69517499999999999
	.quad	0x3fe7b0a915379fa9              # double 0.74031499999999995
	.quad	0x402399fcf3dc054f              # double 9.800758
	.quad	0x400131b79d909f1f              # double 2.149276
	.quad	0x4021a81b43526528              # double 8.8283330000000007
	.quad	0x400a0af1cb89d6ae              # double 3.255344
	.quad	0x400aa05a2d72ffd2              # double 3.3282970000000001
	.quad	0x401c36ea4228997c              # double 7.0536279999999998
	.quad	0x3fecf4d1633482bf              # double 0.90488500000000005
	.quad	0x4021efe49b1fab97              # double 8.9685410000000001
	.quad	0x401561c2e33eff19              # double 5.3454699999999997
	.quad	0x3fffedefc7a39820              # double 1.99559
	.quad	0x401d49949e8815e4              # double 7.3218560000000004
	.quad	0x401b9f61aa3f034b              # double 6.905646
	.quad	0x3fda6ad70e6f2e8c              # double 0.412771
	.quad	0x400940aaeafab53d              # double 3.1565759999999998
	.quad	0x3fd540f66a550870              # double 0.33209
	.quad	0x402114d013a92a30              # double 8.5406499999999994
	.quad	0x40206cab606b7aa2              # double 8.2122449999999994
	.quad	0x4011458537e2c55d              # double 4.3178910000000004
	.quad	0x40191ecd07852f7f              # double 6.2800789999999997
	.quad	0x4020d4a771c970f8              # double 8.4153400000000005
	.quad	0x401e6c0ca600b029              # double 7.6055169999999998
	.quad	0x3ff88a3e7d135116              # double 1.5337510000000001
	.quad	0x401156644d877250              # double 4.3343670000000003
	.quad	0x400760620ab71327              # double 2.9220619999999999
	.quad	0x40192fbd273d5bab              # double 6.2966199999999999
	.quad	0x400dcc1a8ac5c140              # double 3.7246600000000001
	.quad	0x3ff1a4d3bf2f5558              # double 1.102741
	.quad	0x4013eca925fe974a              # double 4.9811139999999998
	.quad	0x3fc82f8bdec5f395              # double 0.18895100000000001
	.quad	0x40221e43675ddd2b              # double 9.0591080000000002
	.quad	0x401db6d19dece571              # double 7.428534
	.quad	0x40204cf3ba775fb3              # double 8.1502970000000001
	.quad	0x400098e64b231401              # double 2.0746579999999999
	.quad	0x401e7cee17a02fb6              # double 7.6220020000000002
	.quad	0x4020da37ef5a964f              # double 8.4262080000000008
	.quad	0x40099d32c625e99f              # double 3.2017570000000002
	.quad	0x3fc097fa5d28d003              # double 0.129638
	.quad	0x400b503f2d3c792d              # double 3.414183
	.quad	0x4006c142f61ed5ae              # double 2.8443659999999999
	.quad	0x4016c8e3ef284168              # double 5.6961820000000003
	.quad	0x40185a5a89b951c6              # double 6.0882360000000002
	.quad	0x4022d2a023209678              # double 9.4113779999999991
	.quad	0x401362396073de1e              # double 4.8459219999999998
	.quad	0x4012592641b328b7              # double 4.5870600000000001
	.quad	0x3ff6506034f3fd93              # double 1.3946229999999999
	.quad	0x4022d29d627bf61b              # double 9.4113570000000006
	.quad	0x400398023a6ce358              # double 2.4492229999999999
	.quad	0x401a5418d6909aed              # double 6.5821259999999997
	.quad	0x401701450efdc9c5              # double 5.7512400000000001
	.quad	0x3fd9858793dd97f6              # double 0.39877499999999999
	.quad	0x4012be4473cd5736              # double 4.6858079999999998
	.quad	0x401bf84b5dcc63f1              # double 6.9924749999999998
	.quad	0x3fe72e2328f9f44d              # double 0.72438199999999997
	.quad	0x3fd5eedcc20d562a              # double 0.34270400000000001
	.quad	0x4005a8d002e23290              # double 2.7074280000000002
	.quad	0x3ff33ad4b2745bf2              # double 1.2018629999999999
	.quad	0x401c71098d477bc0              # double 7.1103880000000004
	.quad	0x402107eaa2a0a958              # double 8.5154619999999994
	.quad	0x401f1d19157abb88              # double 7.7784159999999999
	.quad	0x3fe71ce075f6fd22              # double 0.722275
	.quad	0x4001463d816aceab              # double 2.159297
	.quad	0x4022c65881a15550              # double 9.3873940000000005
	.quad	0x3ffe578d4fdf3b64              # double 1.8963749999999999
	.quad	0x401eb30728e92d56              # double 7.6748320000000003
	.quad	0x40109d512ec6bce8              # double 4.1536299999999997
	.quad	0x40056496ededaec5              # double 2.6741160000000002
	.quad	0x3fd874538ef34d6a              # double 0.3821
	.quad	0x40205a64c2f837b5              # double 8.1765500000000007
	.quad	0x401f8b52007dd441              # double 7.8860549999999998
	.quad	0x4019acb81733226c              # double 6.4186709999999998
	.quad	0x401c29057d1782d4              # double 7.0400600000000004
	.quad	0x401ec3254e6e221d              # double 7.6905720000000004
	.quad	0x401b3f5f91600f34              # double 6.8118879999999997
	.quad	0x3ff24564f97edc7f              # double 1.141942
	.quad	0x401407735c182ecb              # double 5.0072760000000001
	.quad	0x4018b530ced4e4c9              # double 6.1769439999999998
	.quad	0x400ab363f572de44              # double 3.337593
	.quad	0x3fe6239e6ab9b23e              # double 0.69184800000000002
	.quad	0x4023ef7b5aea3162              # double 9.9677380000000007
	.quad	0x4016fa925fe974a3              # double 5.7446989999999998
	.quad	0x3fea2cb85a4f00ef              # double 0.81795899999999999
	.quad	0x4020c5286b59146e              # double 8.3850739999999995
	.quad	0x401e1bb6aa4b9885              # double 7.5270640000000001
	.quad	0x40209fcfc3f811f5              # double 8.3121320000000001
	.quad	0x40188e55c0fcb4f2              # double 6.1389990000000001
	.quad	0x4001034a01abd1ab              # double 2.1266060000000002
	.quad	0x4009c3886594af4f              # double 3.220475
	.quad	0x400c3154866a11ed              # double 3.5240870000000002
	.quad	0x4011337a80cf9e38              # double 4.3002719999999997
	.quad	0x401ee28283d35eb7              # double 7.7212009999999997
	.quad	0x3ff73e0ef99806f2              # double 1.4526509999999999
	.quad	0x4021ea24cc6822ff              # double 8.9573119999999999
	.quad	0x400c68e043a21640              # double 3.5512090000000001
	.quad	0x4014f80b673c4f3c              # double 5.2422310000000003
	.quad	0x4003f36ac647778e              # double 2.4938560000000001
	.quad	0x4009f66490a350d3              # double 3.2453090000000002
	.quad	0x4013684662bae03b              # double 4.8518309999999998
	.quad	0x40097656eefa1e3f              # double 3.1827830000000001
	.quad	0x400e99bf5946c333              # double 3.825072
	.quad	0x400bf1782d38476f              # double 3.4929049999999999
	.quad	0x4006b63c31df761d              # double 2.8389820000000001
	.quad	0x40232adc0980b242              # double 9.58371
	.quad	0x3ff9140dd3fe1976              # double 1.567396
	.quad	0x401484a66559f6ec              # double 5.1295409999999997
	.quad	0x4019e691ea78af3e              # double 6.4751659999999998
	.quad	0x40040bdec5f394b8              # double 2.5057960000000001
	.quad	0x4000b8ce2d1f1cfc              # double 2.0902370000000001
	.quad	0x4013a8cc144028e5              # double 4.914841
	.quad	0x4005b1feeb2d0a24              # double 2.7119119999999999
	.quad	0x4023c09a24031487              # double 9.8761759999999991
	.quad	0x40201ae7b3d8e001              # double 8.0525490000000008
	.quad	0x3fe19183b60285ec              # double 0.54901299999999997
	.quad	0x4021450ca1cef241              # double 8.634862
	.quad	0x40190465e8922531              # double 6.2542949999999999
	.quad	0x401d02dc6e2a8006              # double 7.2527939999999997
	.quad	0x3f76366d7a56de33              # double 0.0054229999999999999
	.quad	0x40233cee9dd7ecbb              # double 9.6190079999999991
	.quad	0x4020c9db0142f61f              # double 8.3942490000000003
	.quad	0x401dd02b40f66a55              # double 7.45329
	.quad	0x4023d8abd5dc4007              # double 9.9231859999999993
	.quad	0x401af957cd466f50              # double 6.7434989999999999
	.quad	0x4020e945308bb906              # double 8.4556059999999995
	.quad	0x3ff4b2becedd4845              # double 1.293639
	.quad	0x401bd34df04ddb55              # double 6.9563519999999999
	.quad	0x401391ad2135daad              # double 4.8922619999999997
	.quad	0x401c8437c5692b3d              # double 7.1291190000000002
	.quad	0x401cf01bc98a222d              # double 7.2344809999999997
	.quad	0x402049c0a8d21bc1              # double 8.1440479999999997
	.quad	0x400ca10e02214270              # double 3.57864
	.quad	0x4012d6a93f290abb              # double 4.7096299999999998
	.quad	0x401a1e9b7bf1e8e6              # double 6.52989
	.quad	0x401dacb3a2595bbc              # double 7.4186540000000001
	.quad	0x401b2f76a2f48c2e              # double 6.7963509999999996
	.quad	0x3fd9e2435696e58a              # double 0.40443499999999999
	.quad	0x4023fd30489d27c4              # double 9.9945090000000007
	.quad	0x3ff25c52e72da123              # double 1.14754
	.quad	0x40224194c0160525              # double 9.128088
	.quad	0x401157bb2fec56d6              # double 4.3356750000000002
	.quad	0x4006cf70153bd167              # double 2.8512879999999998
	.quad	0x3fca0a4a05dd8f93              # double 0.20343900000000001
	.quad	0x4006be78e1932d6f              # double 2.8430040000000001
	.quad	0x4010afba8826aa8f              # double 4.1716100000000003
	.quad	0x40212e9b5a63f9a5              # double 8.5910290000000007
	.quad	0x400dd1a32b12d341              # double 3.7273619999999998
	.quad	0x400081f080303c08              # double 2.063447
	.quad	0x4022e1dd5d3dc8b8              # double 9.4411419999999992
	.quad	0x40054b9a176ddacf              # double 2.661915
	.quad	0x4023bd4690de0935              # double 9.8696789999999996
	.quad	0x40143925785f8d2e              # double 5.0558069999999997
	.quad	0x3fee2f6e82949a56              # double 0.94328999999999996
	.quad	0x3fe47ecfe9b7bf1f              # double 0.64048000000000005
	.quad	0x401172328f9f44d4              # double 4.3615209999999998
	.quad	0x401c8d51f81a5871              # double 7.1380080000000001
	.quad	0x401354bfd2e94680              # double 4.8327629999999999
	.quad	0x40177365cb35f3d8              # double 5.8626930000000002
	.quad	0x4015f8e15011904b              # double 5.4930469999999998
	.quad	0x40076bd87b56b873              # double 2.9276589999999998
	.quad	0x4021c6b5f5f0b285              # double 8.8881069999999998
	.quad	0x40176af81626b2f2              # double 5.8544619999999998
	.quad	0x4021ce1d8622c450              # double 8.9025689999999997
	.quad	0x4018ea6f826edaa9              # double 6.2289409999999998
	.quad	0x4020cdf91600f345              # double 8.402291
	.quad	0x401bf46cfc829cfe              # double 6.9886970000000002
	.quad	0x4003a80e8c8abd5e              # double 2.4570590000000001
	.quad	0x4020e81e68a0d34a              # double 8.4533570000000005
	.quad	0x4013a60e94ee392e              # double 4.9121649999999999
	.quad	0x40122bd09e12a51e              # double 4.5427879999999998
	.quad	0x40081db1a6d698fe              # double 3.0144989999999998
	.quad	0x4004830d306a2b17              # double 2.56399
	.quad	0x40112504c48adeec              # double 4.2861510000000003
	.quad	0x3fa7b02d59d55e6c              # double 0.046266000000000002
	.quad	0x401af6034f3fd934              # double 6.7402470000000001
	.quad	0x3fe0927f5e84f095              # double 0.51788299999999998
	.quad	0x3fd0c46d82ba5a04              # double 0.26198900000000003
	.quad	0x4015508dd1e53a82              # double 5.3286660000000001
	.quad	0x4002e2396073de1e              # double 2.3604609999999999
	.quad	0x40227c2fa5093965              # double 9.2425510000000006
	.quad	0x401afa9d1f601798              # double 6.7447400000000002
	.quad	0x4016a2a80064a9ce              # double 5.6588440000000002
	.quad	0x400fb992c8c50050              # double 3.9656120000000001
	.quad	0x3ff5470a808c825a              # double 1.329844
	.quad	0x4021bce592967019              # double 8.8689389999999992
	.quad	0x4021cbd48cb4aec9              # double 8.8981060000000003
	.quad	0x40212fdda8bd230c              # double 8.5934880000000006
	.quad	0x3fec2e59af9ebe9d              # double 0.88065800000000005
	.quad	0x40175eb80ecfa69c              # double 5.8424990000000001
	.quad	0x4013b858bc59b802              # double 4.9300259999999998
	.quad	0x3ff5133b10774688              # double 1.3171949999999999
	.quad	0x4017120b8066c2ad              # double 5.7676220000000002
	.quad	0x40002178705425f2              # double 2.016343
	.quad	0x401f6b5a63f9a49c              # double 7.8548369999999998
	.quad	0x4023b426351deefe              # double 9.8518539999999994
	.quad	0x400d144aa53fc009              # double 3.6349079999999998
	.quad	0x401a181b21c475e6              # double 6.5235409999999998
	.quad	0x40085b3397dd00f7              # double 3.0445319999999998
	.quad	0x40159fe931876189              # double 5.4061630000000003
	.quad	0x401e6cbe1eb4202e              # double 7.6061940000000003
	.quad	0x401988a979e16d6e              # double 6.3834590000000002
	.quad	0x400829c347e8ccde              # double 3.0203920000000002
	.quad	0x402124a9691a75cd              # double 8.5716049999999999
	.quad	0x401426b0d9513f8e              # double 5.0377840000000003
	.quad	0x4023c01de2691644              # double 9.8752279999999998
	.quad	0x402126c764adff82              # double 8.5757399999999997
	.quad	0x400c6e3c536d655e              # double 3.5538259999999999
	.quad	0x40007f37329c347f              # double 2.0621170000000002
	.quad	0x3fdd01c92ddbdb5e              # double 0.45323400000000003
	.quad	0x400da27e9531550d              # double 3.7043430000000002
	.quad	0x3ff52173b85e80bf              # double 1.320667
	.quad	0x3fda32617c1bda51              # double 0.40932499999999999
	.quad	0x401174c1a8ac5c14              # double 4.36402
	.quad	0x4008181adea89763              # double 3.0117699999999998
	.quad	0x4012f4dec1c1d6d0              # double 4.7391310000000004
	.quad	0x401b631a4bdba0a5              # double 6.8467799999999999
	.quad	0x4015fa8049667b5f              # double 5.4946299999999999
	.quad	0x3feaaa94ff0025c0              # double 0.83332300000000004
	.quad	0x401ffb0ff10ecb75              # double 7.9951780000000001
	.quad	0x401d730f49491f2e              # double 7.3623630000000002
	.quad	0x4009224febd09e13              # double 3.1417540000000002
	.quad	0x3fff5e0d66f0cfe1              # double 1.9604619999999999
	.quad	0x3ffe1f8d2e514c23              # double 1.882703
	.quad	0x40010f32378ab0c9              # double 2.1324200000000002
	.quad	0x4021e834f3fd933e              # double 8.9535289999999996
	.quad	0x4021a479f666234b              # double 8.8212430000000008
	.quad	0x400f1d8f92af9a8d              # double 3.8894340000000001
	.quad	0x401ed9717df19d67              # double 7.7123470000000002
	.quad	0x40104ff7164c729f              # double 4.0780909999999997
	.quad	0x40111bfca85caafc              # double 4.2773310000000002
	.quad	0x4006a0b45ae5ffa4              # double 2.8284690000000001
	.quad	0x401d7ae5796bfca8              # double 7.3700159999999996
	.quad	0x401e1d031055b899              # double 7.5283319999999998
	.quad	0x3fe36147ae147ae1              # double 0.60562499999999997
	.quad	0x401405f45e0b4e12              # double 5.0058150000000001
	.quad	0x4023affd1dcd7061              # double 9.8437280000000004
	.quad	0x400d7778dd616f87              # double 3.6833360000000002
	.quad	0x3fd086ad2dcb1466              # double 0.25822000000000001
	.quad	0x40223226a22b3893              # double 9.0979510000000001
	.quad	0x4020d174a3400b89              # double 8.4090930000000004
	.quad	0x401ec9b738e6d15b              # double 7.6969880000000001
	.quad	0x4021564755ffe6d6              # double 8.6685130000000008
	.quad	0x3fef690364388ebd              # double 0.98156900000000002
	.quad	0x400ef4b51372a38c              # double 3.8694860000000002
	.quad	0x40075a658c4bd33d              # double 2.9191389999999999
	.quad	0x3ff7f39192641b33              # double 1.4969650000000001
	.quad	0x401a41b4bb5e0f80              # double 6.5641660000000002
	.quad	0x402250ab71327243              # double 9.1575579999999999
	.quad	0x3ff13e132b55ef20              # double 1.077655
	.quad	0x3fe07d73c9257860              # double 0.51531400000000005
	.quad	0x40202f6709fa54c5              # double 8.0925829999999994
	.quad	0x3ffd4382a12f9011              # double 1.8289820000000001
	.quad	0x3fca030c23fab10c              # double 0.20321800000000001
	.quad	0x400b4765ba6efc37              # double 3.4098619999999999
	.quad	0x40176e21d96e9bbf              # double 5.857551
	.quad	0x3fe5ecb31c219eb6              # double 0.68514399999999998
	.quad	0x401276323bbc6eb1              # double 4.6154260000000003
	.quad	0x40143f383f0bae8a              # double 5.0617380000000001
	.quad	0x3fe9d000c9539b89              # double 0.80664100000000005
	.quad	0x40162fa2f05a708f              # double 5.5465200000000001
	.quad	0x401cb46ed245b292              # double 7.1762040000000002
	.quad	0x3fe757518b0d0edc              # double 0.72940899999999997
	.quad	0x40150d4dc65c7043              # double 5.2629919999999997
	.quad	0x40158cc70867ad8e              # double 5.3874779999999998
	.quad	0x4016e3d31b9b66f9              # double 5.7224849999999998
	.quad	0x3ffcfe47991bc558              # double 1.8120799999999999
	.quad	0x402168b6d86ec17f              # double 8.7045200000000005
	.quad	0x3ff98b2b777d0f1f              # double 1.5964769999999999
	.quad	0x3fd71c475e6362a6              # double 0.36110100000000001
	.quad	0x4019318e757928e1              # double 6.2983950000000002
	.quad	0x3fd4329802c0a4a0              # double 0.31558799999999998
	.quad	0x40199a01abd1aa82              # double 6.4003969999999999
	.quad	0x4012d407cc7d1bb5              # double 4.7070610000000004
	.quad	0x4011092af9a8cdea              # double 4.258953
	.quad	0x40067585be1a8262              # double 2.8073839999999999
	.quad	0x4012bf5e84f09529              # double 4.6868840000000001
	.quad	0x401c72699c7bcc29              # double 7.1117309999999998
	.quad	0x4023e1f2778140dd              # double 9.9413029999999995
	.quad	0x4019bcc857f3061c              # double 6.4343579999999996
	.quad	0x40229c15d2d01c0d              # double 9.3048540000000006
	.quad	0x3ff73a2163fdd65a              # double 1.451692
	.quad	0x4023c8f4d7add15f              # double 9.8924929999999999
	.quad	0x400c1bfbdf090f73              # double 3.5136639999999999
	.quad	0x4023bcb124d099e1              # double 9.8685390000000001
	.quad	0x4017a96bfca85cab              # double 5.915451
	.quad	0x4002c33acd5b6806              # double 2.3453270000000002
	.quad	0x400e888c60cbf2b2              # double 3.8166739999999999
	.quad	0x40010d5f138bcdff              # double 2.131529
	.quad	0x40209a2877ee4e27              # double 8.3010900000000003
	.quad	0x402331244a6223e2              # double 9.5959800000000008
	.quad	0x40133dca8e2e2b8c              # double 4.8103429999999996
	.quad	0x3fc95b8130164841              # double 0.198105
	.quad	0x4021b192ea52ef91              # double 8.8468239999999998
	.quad	0x3ff293faf42784a9              # double 1.1611279999999999
	.quad	0x3fde8fa7a85015c2              # double 0.477518
	.quad	0x3ffe21294573a798              # double 1.8830960000000001
	.quad	0x401091359791819d              # double 4.1418059999999999
	.quad	0x4010e1d4b6a619db              # double 4.2205380000000003
	.quad	0x40059e8815e39714              # double 2.7024080000000001
	.quad	0x401c1408d8ec95c0              # double 7.0195650000000001
	.quad	0x401f02adc4c9c90c              # double 7.7526159999999997
	.quad	0x3fdc0f7b9e060fe4              # double 0.43844499999999997
	.quad	0x402154c5fbf83383              # double 8.6655730000000002
	.quad	0x4007c6f587d6f976              # double 2.9721479999999998
	.quad	0x401285ad538ac190              # double 4.6305440000000004
	.quad	0x4016e934267839ce              # double 5.7277380000000004
	.quad	0x4017c51d68c692f7              # double 5.9424950000000001
	.quad	0x3ff35df548ecd8dc              # double 1.210439
	.quad	0x401b77c6fbd273d6              # double 6.8669700000000002
	.quad	0x400fad794a6eb91b              # double 3.9597039999999999
	.quad	0x4020b80a393ee5ef              # double 8.3594530000000002
	.quad	0x3fbe362a5e785b5b              # double 0.11801399999999999
	.quad	0x40083d3cbc48f10b              # double 3.0299010000000002
	.quad	0x4019acd9e83e425b              # double 6.4188000000000001
	.quad	0x400de67a52ac753e              # double 3.7375379999999998
	.quad	0x3fd9884c6a3bddfd              # double 0.39894400000000002
	.quad	0x3ff2fa1b1960fa16              # double 1.186061
	.quad	0x4021234e7685985b              # double 8.5689580000000003
	.quad	0x3fff693e1c9b413a              # double 1.9631940000000001
	.quad	0x40229b9085f4a127              # double 9.3038369999999997
	.quad	0x3ff21b7ae5796bfd              # double 1.1317090000000001
	.quad	0x4012383621fafc8b              # double 4.554894
	.quad	0x400eafc9bc771434              # double 3.8358340000000002
	.quad	0x402133fb3743632c              # double 8.6015259999999997
	.quad	0x402124f1800a7c5b              # double 8.5721550000000004
	.quad	0x3ffaf3a14cec41dd              # double 1.68448
	.quad	0x40051125dd095af3              # double 2.6333730000000002
	.quad	0x3ff00bd230b9dc2f              # double 1.0028859999999999
	.quad	0x402332398201cd60              # double 9.5980950000000007
	.quad	0x4020afc243dccea3              # double 8.3432790000000008
	.quad	0x4016f5831f03d146              # double 5.7397580000000001
	.quad	0x40235571f36262cc              # double 9.6668850000000006
	.quad	0x40202d08919ef955              # double 8.0879560000000001
	.quad	0x40100ec2480e8c8b              # double 4.0144130000000002
	.quad	0x401b1950763a1901              # double 6.7747210000000004
	.quad	0x400a4cc814d7279a              # double 3.2874910000000002
	.quad	0x40180d666a98244f              # double 6.0130860000000004
	.quad	0x4001aad2dcb1465f              # double 2.2084100000000002
	.quad	0x40126cd3e0bd449a              # double 4.6062770000000004
	.quad	0x401a4a8b8f14db59              # double 6.5727979999999997
	.quad	0x3faff6d330941c82              # double 0.062429999999999999
	.quad	0x40216c6801711948              # double 8.7117310000000003
	.quad	0x4023c8ba1f4b1ee2              # double 9.8920449999999995
	.quad	0x40084cd7cf5f4e44              # double 3.0375209999999999
	.quad	0x400e07b1c0010c6f              # double 3.7537569999999998
	.quad	0x40224d31fcd24e16              # double 9.1507719999999999
	.quad	0x4022a9a671ef30a5              # double 9.3313480000000002
	.quad	0x4001b7f5a5332ad0              # double 2.2148240000000001
	.quad	0x4021af6427c7c526              # double 8.8425609999999999
	.quad	0x4023128650e77920              # double 9.5361809999999991
	.quad	0x3ffa279dd3bafd97              # double 1.6346719999999999
	.quad	0x402381f98b71b8aa              # double 9.753857
	.quad	0x401d9a01abd1aa82              # double 7.4003969999999999
	.quad	0x40222ccf6be37de9              # double 9.0875199999999996
	.quad	0x4003e323bbc6eb0b              # double 2.4859079999999998
	.quad	0x3ff7f2af1455219b              # double 1.4967490000000001
	.quad	0x4020c5a2d72ffd1e              # double 8.3860080000000004
	.quad	0x401a3d1526d8b1dd              # double 6.5596509999999997
	.quad	0x401006034f3fd934              # double 4.0058720000000001
	.quad	0x4019766dbd72bcb6              # double 6.365653
	.quad	0x40206d4a7f8012e0              # double 8.2134590000000003
	.quad	0x40233f355cd91eeb              # double 9.6234540000000006
	.quad	0x40137a786c22680a              # double 4.8696000000000002
	.quad	0x4014f38583621fb0              # double 5.2378140000000002
	.quad	0x40204fa3fcc9ea9a              # double 8.1555479999999996
	.quad	0x4017f0e2c12ad81b              # double 5.9852400000000001
	.quad	0x401150d49949e881              # double 4.3289359999999997
	.quad	0x3ffcc789613d31ba              # double 1.7987150000000001
	.quad	0x401c111cb039ef0f              # double 7.0167109999999999
	.quad	0x401ee0014f8b588e              # double 7.7187549999999998
	.quad	0x3fee84f09528f191              # double 0.95372800000000002
	.quad	0x402206dd26b723ee              # double 9.0134059999999998
	.quad	0x3fe85e892253111f              # double 0.76153999999999999
	.quad	0x4022b8e6afcce1c6              # double 9.3611350000000009
	.quad	0x401c99f6ec5b078e              # double 7.1503560000000004
	.quad	0x4022925657fb6998              # double 9.2858149999999994
	.quad	0x40206e1a8262456f              # double 8.2150459999999992
	.quad	0x400be9be09bb6aa5              # double 3.4891320000000001
	.quad	0x3fe728d64d7f0ed4              # double 0.72373500000000002
	.quad	0x40135a14cec41dd2              # double 4.8379700000000003
	.quad	0x401e5165d3996fa8              # double 7.5794899999999998
	.quad	0x4012a1e75360d024              # double 4.6581089999999996
	.quad	0x40084864883fd502              # double 3.0353479999999999
	.quad	0x40232a4cc6822ff1              # double 9.5826170000000008
	.quad	0x3ffd2bead4f5903a              # double 1.8232219999999999
	.quad	0x40239b5d031055b9              # double 9.8034440000000007
	.quad	0x401c8ddd6e04c059              # double 7.1385399999999999
	.quad	0x4020d7e7c06e19b9              # double 8.4216899999999999
	.quad	0x4005c5df2239e6ac              # double 2.7216170000000002
	.quad	0x4002bb456b441bb9              # double 2.3414410000000001
	.quad	0x3ff970c67168f8e8              # double 1.590033
	.quad	0x401cbb302f72b453              # double 7.1828010000000004
	.quad	0x3ff8803361565c2d              # double 1.531299
	.quad	0x401a5164840e171a              # double 6.579485
	.quad	0x402095306a2b1705              # double 8.291385
	.quad	0x400c43dff3f0fe04              # double 3.5331419999999998
	.quad	0x401ce647fdc5931d              # double 7.2248840000000003
	.quad	0x40142dd2f1a9fbe7              # double 5.0447499999999996
	.quad	0x3ffbcb1572580c31              # double 1.7370810000000001
	.quad	0x4021baa00192a737              # double 8.8645019999999999
	.quad	0x3ff2b4a98aa8650e              # double 1.1691069999999999
	.quad	0x401288a19c9d5a18              # double 4.6334289999999996
	.quad	0x400df242070b8cfc              # double 3.74329
	.quad	0x401779335d249e45              # double 5.86836
	.quad	0x40180491afc04c8c              # double 6.0044620000000002
	.quad	0x4011e04bc27631b6              # double 4.4690390000000004
	.quad	0x40038b8d82342246              # double 2.4431409999999998
	.quad	0x3feb8a84be40420f              # double 0.86065899999999995
	.quad	0x401948e4fb97bb73              # double 6.321186
	.quad	0x40234810624dd2f2              # double 9.6407500000000006
	.quad	0x400eb7c5ef62f9ca              # double 3.8397329999999998
	.quad	0x4010c3361565c2d2              # double 4.1906359999999996
	.quad	0x4022ed410f94c87a              # double 9.4633870000000009
	.quad	0x3fff52ec6bce8534              # double 1.9577450000000001
	.quad	0x40219cd8dbcec850              # double 8.8063420000000008
	.quad	0x3ff2916fc9bc7714              # double 1.160507
	.quad	0x4020525614df8b15              # double 8.1608129999999992
	.quad	0x401eace67d77fae3              # double 7.6688479999999996
	.quad	0x400f835ac8a37260              # double 3.9391379999999998
	.quad	0x401f8147f1305964              # double 7.8762509999999999
	.quad	0x4022e587b56b8738              # double 9.4483010000000007
	.quad	0x40151f138bcdfefc              # double 5.280348
	.quad	0x3ffcb471f79420b4              # double 1.794054
	.quad	0x3ff24522ea0fd3b3              # double 1.1418790000000001
	.quad	0x401a4490a350d280              # double 6.5669579999999996
	.quad	0x3fe3124af0bf1a5d              # double 0.59598300000000004
	.quad	0x4014bfe2a3cea6c2              # double 5.1873880000000003
	.quad	0x3fa75b8130164841              # double 0.045620000000000001
	.quad	0x4019cd099e0e7360              # double 6.4502319999999997
	.quad	0x4020745cdd50a88f              # double 8.227271
	.quad	0x3ff0779fa97e132b              # double 1.0292049999999999
	.quad	0x401ffbb5e0f7fcfc              # double 7.9958109999999998
	.quad	0x4016201fb82c2bd8              # double 5.531371
	.quad	0x400a9935fc3b4f61              # double 3.3248099999999998
	.quad	0x401e55b035bd512f              # double 7.5836800000000001
	.quad	0x401fb8c8eef1bac3              # double 7.9304540000000001
	.quad	0x4010f0b5675579af              # double 4.2350669999999999
	.quad	0x401524003254e6e2              # double 5.2851569999999999
	.quad	0x40154aca79357604              # double 5.3230380000000004
	.quad	0x401de450acc0bdcb              # double 7.4729640000000002
	.quad	0x4020e45c9a34ca0c              # double 8.4460189999999997
	.quad	0x40089bcf4e874c90              # double 3.076079
	.quad	0x4002d9357603925c              # double 2.3560590000000001
	.quad	0x400c25bd0e12e83a              # double 3.518427
	.quad	0x3fe0dcbff47735c2              # double 0.52694700000000005
	.quad	0x40091c8c0ce91c8f              # double 3.1389390000000001
	.quad	0x40163539b888722a              # double 5.5519780000000001
	.quad	0x401b82fdfc19c172              # double 6.8779219999999999
	.quad	0x4019acd7060bb2bc              # double 6.4187890000000003
	.quad	0x401656df82b1f688              # double 5.5848370000000003
	.quad	0x3ffb536f7e3d1cc1              # double 1.70787
	.quad	0x402253280f12c27a              # double 9.1624149999999993
	.quad	0x4023793836a832ba              # double 9.7367570000000008
	.quad	0x4020a75104d551d7              # double 8.3267900000000008
	.quad	0x401968826aa8eb46              # double 6.3520599999999998
	.quad	0x401ca529fe004b7f              # double 7.1612929999999997
	.quad	0x4023990e8858ff76              # double 9.7989390000000007
	.quad	0x401d05c67dfe32a0              # double 7.2556399999999996
	.quad	0x400effe5c91d14e4              # double 3.8749500000000001
	.quad	0x40211f0110a137f4              # double 8.5605550000000008
	.quad	0x4021c76be37de93a              # double 8.8894950000000001
	.quad	0x402078ac5c13fd0d              # double 8.23569
	.quad	0x4020c86c8711d799              # double 8.3914530000000003
	.quad	0x400f726394face68              # double 3.9308540000000001
	.quad	0x4009fbdcf0307f24              # double 3.2479800000000001
	.quad	0x40208b83f0bae89f              # double 8.2724910000000005
	.quad	0x3f9e71cda2b5a20e              # double 0.029731
	.quad	0x401dd70fbeb9e493              # double 7.4600210000000002
	.quad	0x400c9aa715831f04              # double 3.5755140000000001
	.quad	0x40208b0142f61ed6              # double 8.2714940000000006
	.quad	0x4021409b0ee49f51              # double 8.6261829999999993
	.quad	0x4013074ea8da7f3d              # double 4.757136
	.quad	0x4007bbf0563ed0f6              # double 2.9667669999999999
	.quad	0x401b09691a75cd0c              # double 6.7591900000000003
	.quad	0x4019a65bea0ba1f5              # double 6.4124600000000003
	.quad	0x4016fb7521144cbe              # double 5.7455639999999999
	.quad	0x402385918a009f62              # double 9.7608759999999997
	.quad	0x401c3584b1ab0857              # double 7.0522640000000001
	.quad	0x4004c4d3bf2f5558              # double 2.5961069999999999
	.quad	0x40134dc9c4da9004              # double 4.8259650000000001
	.quad	0x40016ed6fda836eb              # double 2.1791209999999999
	.quad	0x400ea426351deefe              # double 3.8301509999999999
	.quad	0x3feb8b0af5fd47bf              # double 0.86072300000000002
	.quad	0x3fd3f8012dfd694d              # double 0.31201200000000001
	.quad	0x4013c27bb2fec56d              # double 4.9399249999999997
	.quad	0x4017e19439de481f              # double 5.9702919999999997
	.quad	0x4021792ee84ad795              # double 8.7366860000000006
	.quad	0x4020ec07cc7d1bb5              # double 8.4609970000000008
	.quad	0x4011fa1d755bccaf              # double 4.4942529999999996
	.quad	0x3ff8a7bc3c5bd0e1              # double 1.540951
	.quad	0x40121c2f405f6ba0              # double 4.5275239999999997
	.quad	0x4023d8112ba16e7a              # double 9.9220059999999997
	.quad	0x400be698bb4d4888              # double 3.4875959999999999
	.quad	0x401f5312b1b36bd3              # double 7.8311260000000002
	.quad	0x4018dd4e09784ec6              # double 6.2161179999999998
	.quad	0x4004f9a30984e400              # double 2.621893
	.quad	0x4022e4d91eeaa6d2              # double 9.4469689999999993
	.quad	0x3ff8fc04c8bc9cd4              # double 1.561528
	.quad	0x4019e155d5f56a7b              # double 6.4700540000000002
	.quad	0x401a7dd6e04c0592              # double 6.6228899999999999
	.quad	0x402364a36199780c              # double 9.6965590000000005
	.quad	0x40061cbab649d389              # double 2.7640280000000002
	.quad	0x40057b9cf9a06a6e              # double 2.6853579999999999
	.quad	0x401e189e34330d74              # double 7.5240410000000004
	.quad	0x3fe23b42cc2d6a9c              # double 0.56973399999999996
	.quad	0x4018b54f7a919696              # double 6.1770610000000001
	.quad	0x4021de34549b62c7              # double 8.9339929999999992
	.quad	0x400ce8ce703afb7f              # double 3.6136750000000002
	.quad	0x402274f398e97072              # double 9.2284210000000009
	.quad	0x401b7332acfb762e              # double 6.8624980000000004
	.quad	0x402280d9f90539fc              # double 9.2516630000000006
	.quad	0x400baa86d71f3626              # double 3.4582649999999999
	.quad	0x401255b078d92fb2              # double 4.5836810000000003
	.quad	0x40046b6e0d23d4f1              # double 2.5524559999999998
	.quad	0x3fa0ee8d10f51aca              # double 0.033070000000000002
	.quad	0x400ee080f98fa377              # double 3.8596210000000002
	.quad	0x4015a95208e15012              # double 5.4153520000000004
	.quad	0x4013217939a7c17b              # double 4.7826890000000004
	.quad	0x402262715831f03d              # double 9.1922709999999999
	.quad	0x4013f3571d1d4739              # double 4.9876370000000003
	.quad	0x402070aeb80ecfa7              # double 8.2200830000000007
	.quad	0x402063ae89eba6ad              # double 8.1946910000000006
	.quad	0x4015cd5bee3d5fdd              # double 5.4505460000000001
	.quad	0x4013f854477ff152              # double 4.9925090000000001
	.quad	0x400db04c48adeebb              # double 3.7110829999999999
	.quad	0x3fe67f36ac647779              # double 0.70302900000000002
	.quad	0x401893b213e3e293              # double 6.144234
	.quad	0x3fb7121ab4b72c52              # double 0.090120000000000005
	.quad	0x40200c039abf3387              # double 8.0234649999999998
	.quad	0x4010c11f926c7eae              # double 4.1885969999999997
	.quad	0x401868d1d8a54824              # double 6.1023630000000004
	.quad	0x40230036a832b991              # double 9.5004170000000005
	.quad	0x3fd4ce9a2c669058              # double 0.32511000000000001
	.size	.L__constant_999xf64, 7992

	.section	".note.GNU-stack","",@progbits
