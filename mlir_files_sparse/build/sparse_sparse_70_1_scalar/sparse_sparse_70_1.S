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
	.quad	0x413769e78ba33376              # double 1534439.5454589999
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
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
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
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
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
	.quad	36                              # 0x24
	.quad	68                              # 0x44
	.quad	89                              # 0x59
	.quad	117                             # 0x75
	.quad	150                             # 0x96
	.quad	176                             # 0xb0
	.quad	206                             # 0xce
	.quad	232                             # 0xe8
	.quad	257                             # 0x101
	.quad	281                             # 0x119
	.quad	310                             # 0x136
	.quad	342                             # 0x156
	.quad	369                             # 0x171
	.quad	400                             # 0x190
	.quad	426                             # 0x1aa
	.quad	449                             # 0x1c1
	.quad	476                             # 0x1dc
	.quad	507                             # 0x1fb
	.quad	538                             # 0x21a
	.quad	567                             # 0x237
	.quad	599                             # 0x257
	.quad	631                             # 0x277
	.quad	670                             # 0x29e
	.quad	697                             # 0x2b9
	.quad	727                             # 0x2d7
	.quad	753                             # 0x2f1
	.quad	780                             # 0x30c
	.quad	809                             # 0x329
	.quad	851                             # 0x353
	.quad	879                             # 0x36f
	.quad	913                             # 0x391
	.quad	942                             # 0x3ae
	.quad	975                             # 0x3cf
	.quad	1009                            # 0x3f1
	.quad	1041                            # 0x411
	.quad	1070                            # 0x42e
	.quad	1100                            # 0x44c
	.quad	1133                            # 0x46d
	.quad	1170                            # 0x492
	.quad	1200                            # 0x4b0
	.quad	1233                            # 0x4d1
	.quad	1261                            # 0x4ed
	.quad	1289                            # 0x509
	.quad	1322                            # 0x52a
	.quad	1349                            # 0x545
	.quad	1376                            # 0x560
	.quad	1401                            # 0x579
	.quad	1428                            # 0x594
	.quad	1463                            # 0x5b7
	.quad	1505                            # 0x5e1
	.quad	1532                            # 0x5fc
	.quad	1561                            # 0x619
	.quad	1590                            # 0x636
	.quad	1618                            # 0x652
	.quad	1649                            # 0x671
	.quad	1677                            # 0x68d
	.quad	1709                            # 0x6ad
	.quad	1742                            # 0x6ce
	.quad	1777                            # 0x6f1
	.quad	1798                            # 0x706
	.quad	1825                            # 0x721
	.quad	1860                            # 0x744
	.quad	1887                            # 0x75f
	.quad	1917                            # 0x77d
	.quad	1955                            # 0x7a3
	.quad	1984                            # 0x7c0
	.quad	2014                            # 0x7de
	.quad	2044                            # 0x7fc
	.quad	2082                            # 0x822
	.quad	2113                            # 0x841
	.quad	2140                            # 0x85c
	.quad	2171                            # 0x87b
	.quad	2205                            # 0x89d
	.quad	2240                            # 0x8c0
	.quad	2265                            # 0x8d9
	.quad	2289                            # 0x8f1
	.quad	2322                            # 0x912
	.quad	2359                            # 0x937
	.quad	2384                            # 0x950
	.quad	2422                            # 0x976
	.quad	2456                            # 0x998
	.quad	2483                            # 0x9b3
	.quad	2516                            # 0x9d4
	.quad	2544                            # 0x9f0
	.quad	2568                            # 0xa08
	.quad	2597                            # 0xa25
	.quad	2628                            # 0xa44
	.quad	2658                            # 0xa62
	.quad	2687                            # 0xa7f
	.quad	2716                            # 0xa9c
	.quad	2743                            # 0xab7
	.quad	2767                            # 0xacf
	.quad	2801                            # 0xaf1
	.quad	2830                            # 0xb0e
	.quad	2859                            # 0xb2b
	.quad	2887                            # 0xb47
	.quad	2911                            # 0xb5f
	.quad	2940                            # 0xb7c
	.quad	2973                            # 0xb9d
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x40231147064ece9a              # double 9.5337449999999997
	.quad	0x401e52e019b0ab2e              # double 7.5809329999999999
	.quad	0x3fe81c219eb6390d              # double 0.75343400000000005
	.quad	0x401ac12513b5bf6a              # double 6.688618
	.quad	0x40232a27d028a1e0              # double 9.5823350000000005
	.quad	0x3ffa0536d655e28b              # double 1.6262730000000001
	.quad	0x401ad5bb7b6bb129              # double 6.708723
	.quad	0x40238b55043e5322              # double 9.7721330000000002
	.quad	0x4012876534373f31              # double 4.6322219999999996
	.quad	0x4023cbda5119ce07              # double 9.8981499999999993
	.quad	0x3ff2af47b677f6b2              # double 1.1677930000000001
	.quad	0x3ff520902de00d1b              # double 1.3204499999999999
	.quad	0x4014d2e7f6f4be83              # double 5.2059629999999997
	.quad	0x4023978b3700474e              # double 9.7959840000000007
	.quad	0x4008d87d6f976790              # double 3.1057079999999999
	.quad	0x4012d36199780baa              # double 4.7064269999999997
	.quad	0x401cdfcc9ea9a3d3              # double 7.2185540000000001
	.quad	0x3fe3265cf67b1c00              # double 0.59843299999999999
	.quad	0x3ff883126e978d50              # double 1.532
	.quad	0x3fd55b6805a2d730              # double 0.333704
	.quad	0x4023e63ac0c62e4d              # double 9.9496669999999998
	.quad	0x4014af69014b599b              # double 5.1712990000000003
	.quad	0x401d35bc87db2b34              # double 7.3024769999999997
	.quad	0x40207b1769a91106              # double 8.2404130000000002
	.quad	0x40204715c63ae254              # double 8.1388379999999997
	.quad	0x401e2fb267c6b8b7              # double 7.5465790000000003
	.quad	0x4019a8576cce5f74              # double 6.414396
	.quad	0x3fc66b0531982880              # double 0.17514099999999999
	.quad	0x40119903211cb03a              # double 4.3994260000000001
	.quad	0x400ff670196d8f50              # double 3.9953310000000002
	.quad	0x400c40fcb4f1e4b4              # double 3.5317319999999999
	.quad	0x3ff840e065300581              # double 1.5158389999999999
	.quad	0x4007525cc426351e              # double 2.915216
	.quad	0x3fe3b2fa93af74cd              # double 0.61559799999999998
	.quad	0x40112cb5781c7150              # double 4.2936610000000002
	.quad	0x400f99d451fc4c16              # double 3.9501119999999998
	.quad	0x4022a86c8711d799              # double 9.3289530000000003
	.quad	0x4021b631d712a0ec              # double 8.8558489999999991
	.quad	0x401fb74751ce28ed              # double 7.9289829999999996
	.quad	0x4018643632c1f42c              # double 6.0978630000000003
	.quad	0x400320db2702a348              # double 2.3910429999999998
	.quad	0x401d877036c9c0a9              # double 7.3822640000000002
	.quad	0x400946994185058e              # double 3.1594720000000001
	.quad	0x401d2d68405b39e2              # double 7.2943429999999996
	.quad	0x40151989df1172ef              # double 5.27494
	.quad	0x401bb1511dffc548              # double 6.9231610000000003
	.quad	0x4010525a250f8402              # double 4.0804220000000004
	.quad	0x401f0394317acc4f              # double 7.753495
	.quad	0x3ff86120e1f7d73d              # double 1.5237130000000001
	.quad	0x3fd4b39192641b33              # double 0.32346000000000003
	.quad	0x40222f3cd573647c              # double 9.0922610000000005
	.quad	0x3fc206e9ff0cbaf9              # double 0.14083599999999999
	.quad	0x400a2a3c64345cff              # double 3.2706230000000001
	.quad	0x401cce39f77292c5              # double 7.2013930000000004
	.quad	0x40201ec6de76427c              # double 8.0601109999999991
	.quad	0x3fd53d4280ae1049              # double 0.33186399999999999
	.quad	0x3fc2bc27631b584b              # double 0.146367
	.quad	0x3ff55b7e0ac7da1f              # double 1.3348370000000001
	.quad	0x4009eead0c3d2524              # double 3.2415409999999998
	.quad	0x40008c9c0a8d21bc              # double 2.068657
	.quad	0x4003c8344c37e6f7              # double 2.472756
	.quad	0x402374a9ac365450              # double 9.7278570000000002
	.quad	0x402059b8cb8e086c              # double 8.1752380000000002
	.quad	0x401ade0b912dba4d              # double 6.7168409999999996
	.quad	0x40152d9ec7000432              # double 5.2945510000000002
	.quad	0x401ef11233df2a9d              # double 7.7354209999999996
	.quad	0x400869949e8815e4              # double 3.0515530000000002
	.quad	0x401b56c1e364bec6              # double 6.8347239999999996
	.quad	0x4013d44567125dd1              # double 4.9572960000000004
	.quad	0x40135cb2d905c033              # double 4.8405259999999997
	.quad	0x3fe4e5e892253112              # double 0.65306500000000001
	.quad	0x3fd9964628027d89              # double 0.39979700000000001
	.quad	0x400c407f66e86c66              # double 3.5314930000000002
	.quad	0x3fe4f0d62bf11f92              # double 0.65439899999999995
	.quad	0x40193d73c9257860              # double 6.3100120000000004
	.quad	0x3fe9b660e51d25ab              # double 0.80351300000000003
	.quad	0x40063ad96a6a0126              # double 2.7787350000000002
	.quad	0x401bf900c521dda0              # double 6.9931669999999997
	.quad	0x3fd285058dde7a74              # double 0.28936899999999999
	.quad	0x402388e325d4a5df              # double 9.7673579999999997
	.quad	0x40140d0c80410300              # double 5.0127430000000004
	.quad	0x4013d7cfa26a22b4              # double 4.9607530000000004
	.quad	0x401d92d77318fc50              # double 7.3933999999999997
	.quad	0x3fd189c5e6ff7dfa              # double 0.274034
	.quad	0x3ffc8243dccea290              # double 1.781803
	.quad	0x40198167a95c853c              # double 6.3763719999999999
	.quad	0x4021bd3671ac14c6              # double 8.8695559999999993
	.quad	0x40218a70b06c43f6              # double 8.770391
	.quad	0x4000510b1feeb2d1              # double 2.0395720000000002
	.quad	0x400d18a2a90cd424              # double 3.6370290000000001
	.quad	0x40219ecd6c2efd44              # double 8.8101610000000007
	.quad	0x4023dce7cd035372              # double 9.9314560000000007
	.quad	0x4020f4c89b0ee49f              # double 8.4780929999999994
	.quad	0x3fb03382e44b6e93              # double 0.063285999999999995
	.quad	0x3fe8da059a73b42d              # double 0.77661400000000003
	.quad	0x4016fad362e90364              # double 5.7449469999999998
	.quad	0x40177767d34df04e              # double 5.8666070000000001
	.quad	0x3ff5bb1f255f351a              # double 1.3581840000000001
	.quad	0x4020c570e6f2e8c0              # double 8.3856269999999995
	.quad	0x4018f19008205ff2              # double 6.2359010000000001
	.quad	0x402353ad5bee3d60              # double 9.6634320000000002
	.quad	0x401e4d40aaeafab5              # double 7.5754419999999997
	.quad	0x401f0867ad8e4324              # double 7.7582079999999998
	.quad	0x40238947ae147ae1              # double 9.7681249999999995
	.quad	0x3fea5d206c8711d8              # double 0.82386800000000004
	.quad	0x401636a76965f527              # double 5.5533729999999997
	.quad	0x3ff6bb1e18efbb0e              # double 1.4206829999999999
	.quad	0x400ca49235f80991              # double 3.5803569999999998
	.quad	0x40178d4e09784ec6              # double 5.8879929999999998
	.quad	0x4010fc68ec52a412              # double 4.2464940000000002
	.quad	0x401c4bc1acde19fc              # double 7.0739809999999999
	.quad	0x4023631df761cbcd              # double 9.693588
	.quad	0x401db840181e03f7              # double 7.429932
	.quad	0x3fff035dedf1e083              # double 1.9383220000000001
	.quad	0x4023bac881e4712e              # double 9.8648109999999996
	.quad	0x4021580000000000              # double 8.671875
	.quad	0x40059c7e6b3fe9fb              # double 2.7014130000000001
	.quad	0x402386fa3fcc9eaa              # double 9.7636280000000006
	.quad	0x3ff66338b47c73ef              # double 1.399224
	.quad	0x3fdf790b84988095              # double 0.49176300000000001
	.quad	0x402145b1422ccb3a              # double 8.6361179999999997
	.quad	0x4012ab018611fd59              # double 4.6669980000000004
	.quad	0x400cad234eb9a177              # double 3.5845400000000001
	.quad	0x4016fde4c51116a9              # double 5.7479430000000002
	.quad	0x40195d46b26bf877              # double 6.3410900000000003
	.quad	0x40128dd69d30270f              # double 4.6385139999999998
	.quad	0x401e42a843808851              # double 7.5650950000000003
	.quad	0x40237d35a858793e              # double 9.7445500000000003
	.quad	0x4011d5c853c14834              # double 4.4587719999999997
	.quad	0x401a80a30db6a1e8              # double 6.6256219999999999
	.quad	0x4009ed8a979e16d7              # double 3.2409870000000001
	.quad	0x4022109fa54c5543              # double 9.0324679999999997
	.quad	0x4015dbdcf0307f24              # double 5.4647100000000002
	.quad	0x401009e16d6dc1a4              # double 4.0096489999999996
	.quad	0x4007e7ca643cc07b              # double 2.9881790000000001
	.quad	0x40154d694ccab3ee              # double 5.3255970000000001
	.quad	0x401feda554b8bef9              # double 7.9820760000000001
	.quad	0x4015c886594af4f1              # double 5.4458250000000001
	.quad	0x4016353f7ced9168              # double 5.5519999999999996
	.quad	0x4013610d38cda6e7              # double 4.8447769999999997
	.quad	0x4020245931ca7d67              # double 8.0709929999999996
	.quad	0x400a6d5842b734b5              # double 3.303391
	.quad	0x40008481f53825e1              # double 2.0647009999999999
	.quad	0x4014f69fcf3dc055              # double 5.2408440000000001
	.quad	0x401e9a1be2b4959e              # double 7.6504969999999997
	.quad	0x4020aa93af74cd31              # double 8.3331579999999992
	.quad	0x3fd8a48301a79fed              # double 0.38504100000000002
	.quad	0x4008ab6523704791              # double 3.0836890000000001
	.quad	0x401405dc8323358f              # double 5.0057239999999998
	.quad	0x3fe3002e2328f9f4              # double 0.59377199999999997
	.quad	0x4001223af31b152f              # double 2.1417139999999999
	.quad	0x4012f76fb09203a3              # double 4.7416369999999999
	.quad	0x401b2de3b8a19c9d              # double 6.7948139999999997
	.quad	0x4008aa4ebdd334c6              # double 3.0831580000000001
	.quad	0x3ff48b86b15f88fd              # double 1.2840640000000001
	.quad	0x401d787ce95faa8b              # double 7.3676640000000004
	.quad	0x4006142bb6672fba              # double 2.759849
	.quad	0x3fe1083fd5022574              # double 0.53225699999999998
	.quad	0x3fea15dd4c76d118              # double 0.81516900000000003
	.quad	0x40087b70ef566491              # double 3.0602740000000002
	.quad	0x400c2d9dfdac68a9              # double 3.5222739999999999
	.quad	0x40226b8b69552e30              # double 9.2100480000000005
	.quad	0x402295cd91eeaa6d              # double 9.2925839999999997
	.quad	0x401eececc814d728              # double 7.7313720000000003
	.quad	0x4007687a072d1aeb              # double 2.9260139999999999
	.quad	0x40227c2480e8c8ac              # double 9.2424660000000002
	.quad	0x3fe298f81e8a2ec3              # double 0.58117300000000005
	.quad	0x400bd34938583622              # double 3.478167
	.quad	0x4011721f2990f302              # double 4.3614470000000001
	.quad	0x40112bde82d7b635              # double 4.2928410000000001
	.quad	0x40009b15b573eab3              # double 2.0757249999999998
	.quad	0x4003576922d948dc              # double 2.417681
	.quad	0x402225a7b0b39192              # double 9.0735449999999993
	.quad	0x40122f0ae536501e              # double 4.5459399999999999
	.quad	0x401a53fe5c91d14e              # double 6.5820249999999998
	.quad	0x401879802c0a4a06              # double 6.1186530000000001
	.quad	0x3fd762f9ca5bd945              # double 0.36541600000000002
	.quad	0x401b880ecfa69be1              # double 6.8828690000000003
	.quad	0x40203349e01de269              # double 8.1001729999999998
	.quad	0x401495b813016484              # double 5.14621
	.quad	0x4012e88a04d12019              # double 4.7270890000000003
	.quad	0x400d0ab474107315              # double 3.6302270000000001
	.quad	0x401b91dd1a21ea36              # double 6.8924450000000004
	.quad	0x4017b1fa76534374              # double 5.923807
	.quad	0x400e6189bd8383ae              # double 3.7976260000000002
	.quad	0x4019d702e6644d87              # double 6.4599719999999996
	.quad	0x4020e63c74fb54a0              # double 8.4496800000000007
	.quad	0x4001c4e379b77c03              # double 2.2211370000000001
	.quad	0x400fac868b9fdbd3              # double 3.959241
	.quad	0x3ff957eaa2a0a958              # double 1.5839639999999999
	.quad	0x401b632c1f42bb66              # double 6.8468479999999996
	.quad	0x4009de047d3d4281              # double 3.2334070000000001
	.quad	0x4021c1a21ea35936              # double 8.87819
	.quad	0x40213d1bd61f5be6              # double 8.6193530000000003
	.quad	0x4017c8feac42e98a              # double 5.9462840000000003
	.quad	0x3fe63b14a90470a8              # double 0.694712
	.quad	0x3ffa638fbca1059f              # double 1.6493070000000001
	.quad	0x3fc9cb9a9da597d5              # double 0.20152600000000001
	.quad	0x4013ea4b9884c6a4              # double 4.9788040000000002
	.quad	0x3fe2c4199fe43676              # double 0.58643800000000001
	.quad	0x4019b3daf8df7a4e              # double 6.4256399999999996
	.quad	0x401815e679463cfb              # double 6.0213869999999998
	.quad	0x3ffe2137f38c5437              # double 1.8831100000000001
	.quad	0x401b7cdbbe0157ef              # double 6.8719320000000002
	.quad	0x40235a9bf162ae4b              # double 9.6769709999999999
	.quad	0x400e78ef34d6a162              # double 3.80905
	.quad	0x4018c6aa4b9884c7              # double 6.1940090000000003
	.quad	0x4023154c33b53932              # double 9.5415969999999994
	.quad	0x4018dca5bd944aa5              # double 6.2154759999999998
	.quad	0x4023b20d130df9be              # double 9.8477560000000004
	.quad	0x4017695182a9930c              # double 5.8528500000000001
	.quad	0x401e4b9e8c47a17f              # double 7.5738469999999997
	.quad	0x40038e31d712a0ec              # double 2.4444309999999998
	.quad	0x401f570329802c0a              # double 7.8349729999999997
	.quad	0x400f167a95c853c1              # double 3.8859759999999999
	.quad	0x3fe68a6dacabc515              # double 0.70439799999999997
	.quad	0x3ffe6466b1e5c0ba              # double 1.8995120000000001
	.quad	0x401f4a8ac5c13fd1              # double 7.8227950000000001
	.quad	0x40233a2df9378ee3              # double 9.6136320000000008
	.quad	0x40014c929aa1d756              # double 2.1623890000000001
	.quad	0x40160fa69be09bb7              # double 5.5152840000000003
	.quad	0x4022a64c729f59cd              # double 9.324802
	.quad	0x401e5694898f605b              # double 7.5845510000000002
	.quad	0x4020c3165d3996fb              # double 8.3810300000000009
	.quad	0x3fcfe07a28bb0a2d              # double 0.24903800000000001
	.quad	0x402186daec4a4096              # double 8.7633890000000001
	.quad	0x3ff5a58a32f44913              # double 1.3529150000000001
	.quad	0x4018185d31337eb3              # double 6.0237930000000004
	.quad	0x4015af0b6b6e0d24              # double 5.4209420000000001
	.quad	0x402047a43fe5c91d              # double 8.1399249999999999
	.quad	0x4019955432873bc9              # double 6.395829
	.quad	0x401047cd03537197              # double 4.0701179999999999
	.quad	0x4005f9f0a1be2b49              # double 2.7470409999999998
	.quad	0x401527a56de3326a              # double 5.2887170000000001
	.quad	0x400db35d249e44fa              # double 3.71258
	.quad	0x3ff20d60a6330510              # double 1.128266
	.quad	0x4010d25d074213a1              # double 4.2054330000000002
	.quad	0x3ffa2352eb5f5f0b              # double 1.633624
	.quad	0x3ff3d44028e4fb98              # double 1.2393190000000001
	.quad	0x4000286594af4f0e              # double 2.0197250000000002
	.quad	0x40207b2ebe596c83              # double 8.2405910000000002
	.quad	0x3ff644cbe1eb4203              # double 1.391796
	.quad	0x400fd112fd32c626              # double 3.977087
	.quad	0x4001d165d3996fa8              # double 2.2272449999999999
	.quad	0x4023c40b9991361e              # double 9.8829010000000004
	.quad	0x400e2d72ffd1dcd7              # double 3.772192
	.quad	0x3fe48c308feac42f              # double 0.64211300000000004
	.quad	0x402244faeff5c6c1              # double 9.1347269999999998
	.quad	0x4021970ef566490a              # double 8.7950359999999996
	.quad	0x400e3d76683c297c              # double 3.780011
	.quad	0x4011b7fb69984a0e              # double 4.4296699999999998
	.quad	0x3ffcf02f72b45283              # double 1.8086390000000001
	.quad	0x401dd864883fd502              # double 7.4613209999999999
	.quad	0x4020701754b05b7d              # double 8.218928
	.quad	0x401efbc23315d702              # double 7.7458580000000001
	.quad	0x4017ab9ecf638002              # double 5.9175979999999999
	.quad	0x401e3c60cbf2b23a              # double 7.5589630000000003
	.quad	0x401142aa5c5f7c67              # double 4.3151029999999997
	.quad	0x400f44c404a72eae              # double 3.9085770000000002
	.quad	0x4014a49a5657fb6a              # double 5.1607450000000004
	.quad	0x4015457603925bb8              # double 5.3178330000000003
	.quad	0x4020aad59d55e6bc              # double 8.3336609999999993
	.quad	0x4010dbc05d52c16e              # double 4.214601
	.quad	0x40209747304039ac              # double 8.295465
	.quad	0x401334c48adeebb3              # double 4.8015309999999998
	.quad	0x401bb5fd8adab9f5              # double 6.9277249999999997
	.quad	0x4007a9930be0ded3              # double 2.9578000000000002
	.quad	0x401fdd9018e75793              # double 7.9663700000000003
	.quad	0x401ab99e518f3ecd              # double 6.6812680000000002
	.quad	0x400e5b83cf2cf95d              # double 3.7946849999999999
	.quad	0x4001f1f03d145d85              # double 2.243134
	.quad	0x3ff087de5082cf53              # double 1.0331710000000001
	.quad	0x401abd694ccab3ee              # double 6.6849720000000001
	.quad	0x3ff81423d9231c65              # double 1.5049170000000001
	.quad	0x401ed2502eec7c95              # double 7.7053839999999995
	.quad	0x3ff87fa0945f9df5              # double 1.5311589999999999
	.quad	0x4018ff1886df82b2              # double 6.249117
	.quad	0x4021ae4da09cc31a              # double 8.8404360000000004
	.quad	0x4015b08d8ec95bff              # double 5.422415
	.quad	0x3ff726a76965f527              # double 1.4469369999999999
	.quad	0x4019dc5f394b7b29              # double 6.4652070000000004
	.quad	0x4017ae093532e7b4              # double 5.9199570000000001
	.quad	0x3ff9cb4070329803              # double 1.6121220000000001
	.quad	0x4022a9ac57e23f25              # double 9.3313930000000003
	.quad	0x400f3da0dfdef848              # double 3.9050919999999998
	.quad	0x401e799e0e73604a              # double 7.6187670000000001
	.quad	0x4013823bff8a8f3b              # double 4.8771820000000004
	.quad	0x3ff2eac322291fb4              # double 1.182315
	.quad	0x4018941743e963dc              # double 6.1446199999999997
	.quad	0x401397dcbddb9842              # double 4.8983030000000003
	.quad	0x401a81a8262456f7              # double 6.6266179999999997
	.quad	0x3ffa088a47ecfe9b              # double 1.6270849999999999
	.quad	0x40143814d72799a2              # double 5.054767
	.quad	0x3ff1902eec7c957d              # double 1.097701
	.quad	0x40050279dd3bafd9              # double 2.6262089999999998
	.quad	0x3fb5df2239e6ab9b              # double 0.085435999999999998
	.quad	0x4022694a4d2b2bfe              # double 9.2056450000000005
	.quad	0x3fe4e685db76b3bc              # double 0.65314000000000005
	.quad	0x4006010be9424e59              # double 2.7505109999999999
	.quad	0x400d9aad601ffb48              # double 3.700526
	.quad	0x3fff61c36976bc1f              # double 1.961368
	.quad	0x3f772ffd1dcd7061              # double 0.0056610000000000002
	.quad	0x3fecbccf28c79f66              # double 0.89804799999999996
	.quad	0x4008a1b8ed1bf7ad              # double 3.0789659999999999
	.quad	0x40107f51efb6dca0              # double 4.1243359999999996
	.quad	0x3ff5da6937d1fe65              # double 1.365823
	.quad	0x4016ebb7b6bb1290              # double 5.7301929999999999
	.quad	0x40220dbee3d5fdce              # double 9.0268470000000001
	.quad	0x3ff899578a2a90cd              # double 1.5374369999999999
	.quad	0x401b62ac322291fb              # double 6.8463599999999998
	.quad	0x4013453e2d6238da              # double 4.8176199999999998
	.quad	0x402263ccd0fe8ab5              # double 9.194922
	.quad	0x401900f0e90bc7b4              # double 6.2509189999999997
	.quad	0x4017a87fcb923a2a              # double 5.9145500000000002
	.quad	0x3fef39b8887229e9              # double 0.97579599999999999
	.quad	0x3ff563ffef39085f              # double 1.3369139999999999
	.quad	0x3ff3c9795b35b0bc              # double 1.236688
	.quad	0x3fccf112fd32c626              # double 0.226107
	.quad	0x401a2713ad5bee3d              # double 6.5381609999999997
	.quad	0x3fee59a0f0a5efe9              # double 0.94844099999999998
	.quad	0x3ff96c9c0a8d21bc              # double 1.589016
	.quad	0x400d6199780baa58              # double 3.6726559999999999
	.quad	0x3fe2e7b1c0010c6f              # double 0.59078299999999995
	.quad	0x3fd5666a98244e94              # double 0.33437600000000001
	.quad	0x40196ae147ae147b              # double 6.3543750000000001
	.quad	0x4019664a9cdc4439              # double 6.3498939999999999
	.quad	0x3ff2b0f27bb2fec5              # double 1.1681999999999999
	.quad	0x4023fa5657fb6998              # double 9.9889399999999994
	.quad	0x401beed5f138bce0              # double 6.9832380000000001
	.quad	0x40010964e8b7e4de              # double 2.1295869999999999
	.quad	0x4020d75558212945              # double 8.4205729999999992
	.quad	0x40046ec8d5c74752              # double 2.5540940000000001
	.quad	0x4020d54e6e221c8a              # double 8.4166139999999992
	.quad	0x4020bf6b5d462c34              # double 8.3738659999999995
	.quad	0x4010f33e35c5b4ab              # double 4.2375420000000004
	.quad	0x401a9105e1c15098              # double 6.6416240000000002
	.quad	0x401e77a355043e53              # double 7.6168339999999998
	.quad	0x3feabcff64cf8d71              # double 0.83557099999999995
	.quad	0x40133fef7c243dcd              # double 4.8124370000000001
	.quad	0x401efb55ac03ff69              # double 7.7454439999999999
	.quad	0x3fe69a2834d26fa4              # double 0.706318
	.quad	0x401aff034b0e1b4c              # double 6.7490360000000003
	.quad	0x4019c4057082491b              # double 6.441427
	.quad	0x3fee8fba8826aa8f              # double 0.95504500000000003
	.quad	0x3ffa1bc33f85510d              # double 1.631778
	.quad	0x3fabc7f77af64064              # double 0.054260000000000003
	.quad	0x3fffe51e321a2e7f              # double 1.9934369999999999
	.quad	0x400eb6ebd4cfd08d              # double 3.8393169999999999
	.quad	0x401ce7603925bb7b              # double 7.2259529999999996
	.quad	0x3ff6f5781c714fce              # double 1.4349289999999999
	.quad	0x3ff5e5aab4741073              # double 1.368571
	.quad	0x3ff8fe79ee02a77a              # double 1.562128
	.quad	0x402131f42bb66730              # double 8.5975660000000005
	.quad	0x401d076709fa54c5              # double 7.2572289999999997
	.quad	0x4021d5dd2ae8e1d6              # double 8.9177029999999995
	.quad	0x401e2afff36ac647              # double 7.5419919999999995
	.quad	0x401a56940357a355              # double 6.584549
	.quad	0x3fdaa78af3e468cb              # double 0.41647600000000001
	.quad	0x40229805e5f30e80              # double 9.2969200000000001
	.quad	0x401a4ac96cc5fbf8              # double 6.5730339999999998
	.quad	0x4007b2923e5b8562              # double 2.9621930000000001
	.quad	0x401c86fdeb52c9d1              # double 7.1318279999999996
	.quad	0x40146a94ff0025c0              # double 5.1040840000000003
	.quad	0x4018aed352220bc4              # double 6.1707280000000004
	.quad	0x40116b0531982880              # double 4.3545119999999997
	.quad	0x40230d592d98bf7f              # double 9.5260709999999999
	.quad	0x4022d45996744b2b              # double 9.4147459999999991
	.quad	0x4021e33f85510d39              # double 8.9438440000000003
	.quad	0x401764295a6c5d20              # double 5.8478139999999996
	.quad	0x400c2af89c5e6ff8              # double 3.5209820000000001
	.quad	0x4010293f6c2699c8              # double 4.0402810000000002
	.quad	0x4013f8b7e4de3b8a              # double 4.9928889999999999
	.quad	0x3fe5a14057082492              # double 0.67593400000000003
	.quad	0x400c5d0d0678c005              # double 3.5454349999999999
	.quad	0x401388ff327aa68f              # double 4.8837859999999997
	.quad	0x3ff4dfc3b4f61672              # double 1.30463
	.quad	0x401eb520d130df9c              # double 7.6768830000000001
	.quad	0x40207582ba5a0382              # double 8.2295130000000007
	.quad	0x3fe255629d8409e5              # double 0.57292299999999996
	.quad	0x401203dccea28fe2              # double 4.5037719999999997
	.quad	0x40208449129888f8              # double 8.2583699999999993
	.quad	0x4010d2949a5657fb              # double 4.2056449999999996
	.quad	0x3fbde4a38327674d              # double 0.11677
	.quad	0x400c597b30f8c650              # double 3.5436920000000001
	.quad	0x3fde3edd8b60f1b2              # double 0.47258699999999998
	.quad	0x4021ae5cb35f3d7d              # double 8.8405509999999996
	.quad	0x4008e8398a654930              # double 3.113391
	.quad	0x400a951a437824d5              # double 3.3228040000000001
	.quad	0x40180edbb59ddc1e              # double 6.0145099999999996
	.quad	0x401ee8cd20afa2f0              # double 7.7273449999999997
	.quad	0x402010f6273929ed              # double 8.0331279999999996
	.quad	0x400410691ea78af4              # double 2.508013
	.quad	0x4007587bdcf0307f              # double 2.9182049999999999
	.quad	0x40229e601bc98a22              # double 9.3093269999999997
	.quad	0x402044866a11ec92              # double 8.1338380000000008
	.quad	0x400d06ba493c89f4              # double 3.628285
	.quad	0x3ff0807bbb62413e              # double 1.0313680000000001
	.quad	0x401ea9b1b79d909f              # double 7.6657169999999998
	.quad	0x4013aa23bff8a8f4              # double 4.9161520000000003
	.quad	0x40220976ddaceee1              # double 9.0184850000000001
	.quad	0x3ff2b6e0d23d4f16              # double 1.169648
	.quad	0x401a636e2eb1c433              # double 6.5971000000000002
	.quad	0x40206827d88c1db0              # double 8.2034289999999999
	.quad	0x4022a0b3b320535d              # double 9.3138710000000007
	.quad	0x40151514c22ee419              # double 5.2705869999999999
	.quad	0x4018759ee88df373              # double 6.1148639999999999
	.quad	0x3ffcd464dc22ab26              # double 1.8018540000000001
	.quad	0x4013707af20ea5b5              # double 4.8598439999999998
	.quad	0x40220cd099e0e736              # double 9.025029
	.quad	0x3fe5a4ca4f440af2              # double 0.67636600000000002
	.quad	0x4022cf5558212945              # double 9.4049479999999991
	.quad	0x401686d8b1dd5d3e              # double 5.6316860000000002
	.quad	0x4023ebb4916ca46e              # double 9.9603619999999999
	.quad	0x401baeb56fb8f57f              # double 6.9206139999999996
	.quad	0x4002e4d44567125e              # double 2.3617330000000001
	.quad	0x3ff8b4330d73860a              # double 1.5439940000000001
	.quad	0x402138c436fc1590              # double 8.6108720000000005
	.quad	0x4023bb8ed1bf7ad5              # double 9.8663240000000005
	.quad	0x401672bd7f51efb7              # double 5.6120510000000001
	.quad	0x40198938583621fb              # double 6.384004
	.quad	0x3ffc2cce5f7403de              # double 1.760939
	.quad	0x40117a48b6523704              # double 4.3694179999999996
	.quad	0x4022e63b03e20cd0              # double 9.4496690000000001
	.quad	0x400cd309c7ffde72              # double 3.603046
	.quad	0x401482b8c75c4a84              # double 5.1276580000000003
	.quad	0x3ffb39702e6644d8              # double 1.7015229999999999
	.quad	0x4023065d3996fa83              # double 9.5124300000000001
	.quad	0x4002ba12b5e529bb              # double 2.340856
	.quad	0x3ffc4fe047d3d428              # double 1.769501
	.quad	0x3fddd3b29a1b9f99              # double 0.46604600000000002
	.quad	0x40021308bb906467              # double 2.2592940000000001
	.quad	0x402376cb5350092d              # double 9.7320200000000003
	.quad	0x4015d704ff43419e              # double 5.4599799999999998
	.quad	0x3ffcadfb506dd69d              # double 1.792476
	.quad	0x400e2491afc04c8c              # double 3.7678560000000001
	.quad	0x4021f332acfb762e              # double 8.9749960000000009
	.quad	0x4021f33b7521144d              # double 8.9750630000000005
	.quad	0x3fe9b4bf8fcd67fd              # double 0.80331399999999997
	.quad	0x40031ca29845dc83              # double 2.3889819999999999
	.quad	0x4012e512a94ff002              # double 4.7237039999999997
	.quad	0x40113a1a500d5e8d              # double 4.3067409999999997
	.quad	0x40239ee45c358afc              # double 9.8103359999999995
	.quad	0x4008d08c3f3e0371              # double 3.1018300000000001
	.quad	0x4022f75cd0bb6ed6              # double 9.4831299999999992
	.quad	0x3fd0ad2135daad60              # double 0.26056699999999999
	.quad	0x4021c25482385404              # double 8.8795509999999993
	.quad	0x40191e7ee9142b30              # double 6.2797809999999998
	.quad	0x400e0df1e0828c37              # double 3.7568090000000001
	.quad	0x40050b55ef1fddec              # double 2.6305350000000001
	.quad	0x40013656eefa1e3f              # double 2.1515330000000001
	.quad	0x400a4cf4a558ea7d              # double 3.2875760000000001
	.quad	0x401d6f87f023e9ea              # double 7.3589169999999999
	.quad	0x3ff2b9dd3bafd977              # double 1.170377
	.quad	0x4011d4f61672324d              # double 4.4579700000000004
	.quad	0x3feaebb1290257c9              # double 0.84127099999999999
	.quad	0x3ffb9056c508b32d              # double 1.722739
	.quad	0x4015ebad7d7c2ca1              # double 5.4801539999999997
	.quad	0x4023d063beec397a              # double 9.9070110000000007
	.quad	0x3ff125892684cf07              # double 1.0716639999999999
	.quad	0x400ef77186551937              # double 3.870822
	.quad	0x400a1badc0980b24              # double 3.2635149999999999
	.quad	0x4010d029f16b11c7              # double 4.2032850000000002
	.quad	0x401777e5a78f25a2              # double 5.8670869999999997
	.quad	0x3ff219513f8db489              # double 1.131181
	.quad	0x401bc18ac9f2fdb9              # double 6.939006
	.quad	0x4019096787ce95fb              # double 6.2591840000000003
	.quad	0x401100fcf80dc337              # double 4.2509649999999999
	.quad	0x401f733333333333              # double 7.8624999999999998
	.quad	0x400d91233df2a9d6              # double 3.6958679999999999
	.quad	0x4000f9ff4fd6d7e9              # double 2.1220690000000002
	.quad	0x4013cd3bafd976ff              # double 4.9504229999999998
	.quad	0x3fdad640e9d51b50              # double 0.41932700000000001
	.quad	0x3f9372a38b8ae31d              # double 0.018991999999999998
	.quad	0x4010bf6f8f041462              # double 4.1869490000000003
	.quad	0x4019cbe76c8b4396              # double 6.4491250000000004
	.quad	0x3ffde28240b78034              # double 1.8677999999999999
	.quad	0x401b690f733a8a40              # double 6.8525980000000004
	.quad	0x400d67325918a00a              # double 3.675389
	.quad	0x401a9c1333b96af0              # double 6.6524169999999998
	.quad	0x4022e1ede1198aec              # double 9.4412680000000008
	.quad	0x40229c3ac929aa1d              # double 9.3051359999999992
	.quad	0x402200b08dd1e53b              # double 9.0013470000000009
	.quad	0x3fee57060bb2bbaa              # double 0.94812300000000005
	.quad	0x4015f9991361dc94              # double 5.4937480000000001
	.quad	0x3ff0bf06705c896e              # double 1.046637
	.quad	0x3fdb72abef06b378              # double 0.42887399999999998
	.quad	0x4020aec2699c7bcc              # double 8.3413269999999997
	.quad	0x4012e146e4c0df59              # double 4.7199970000000002
	.quad	0x4000d39eadd590c1              # double 2.1033300000000001
	.quad	0x401ecc6f7a0b5ed9              # double 7.6996440000000001
	.quad	0x3ff287d0aed99cbf              # double 1.158158
	.quad	0x4008b310129cbab6              # double 3.0874329999999999
	.quad	0x401ff26b2f23033a              # double 7.9867369999999998
	.quad	0x401ca7f77af64064              # double 7.1640300000000003
	.quad	0x401e6393250b5244              # double 7.5972410000000004
	.quad	0x400c857d9dba908a              # double 3.5651809999999999
	.quad	0x4021834330d73861              # double 8.7563720000000007
	.quad	0x401f9a619da9c993              # double 7.9007630000000004
	.quad	0x402027a54c554328              # double 8.0774329999999992
	.quad	0x401b895b35b0bbf5              # double 6.884137
	.quad	0x4021c6a5b530ced5              # double 8.8879830000000002
	.quad	0x402145c443914f48              # double 8.6362629999999996
	.quad	0x402324e8101f31f4              # double 9.5720829999999992
	.quad	0x3ffeb0d306a2b170              # double 1.9181699999999999
	.quad	0x401bf725c3dee782              # double 6.9913550000000004
	.quad	0x401b53fbbd7b2032              # double 6.8320150000000002
	.quad	0x401f64b90214ad36              # double 7.8483619999999998
	.quad	0x3f8999999999999a              # double 0.012500000000000001
	.quad	0x401b71a6d698fe69              # double 6.8609879999999999
	.quad	0x400b01b2a27f1b69              # double 3.375829
	.quad	0x40085f3e0370cdc8              # double 3.0465049999999998
	.quad	0x4015d00a393ee5ef              # double 5.4531640000000001
	.quad	0x3feb81f75104d552              # double 0.85961500000000002
	.quad	0x4018a4fa48301a7a              # double 6.161111
	.quad	0x3fb67503b81b64e0              # double 0.087722999999999995
	.quad	0x4020130ced4e4c94              # double 8.0372079999999996
	.quad	0x402380288051c9f7              # double 9.7503089999999996
	.quad	0x400343f141205bc0              # double 2.408175
	.quad	0x400347746887a8d6              # double 2.4098899999999999
	.quad	0x4019f4a276b7ed42              # double 6.4889010000000003
	.quad	0x40161b8bef8ceb35              # double 5.5269009999999996
	.quad	0x402185604189374c              # double 8.7605000000000003
	.quad	0x401ce148ba83f4ed              # double 7.2200040000000003
	.quad	0x400a71055b899392              # double 3.305186
	.quad	0x3fe4f8f68be2f7b1              # double 0.65539099999999995
	.quad	0x400606045baf533f              # double 2.7529379999999999
	.quad	0x402086731d2e0e30              # double 8.2625969999999995
	.quad	0x40172b367a0f9097              # double 5.7922000000000002
	.quad	0x401cc8405b39e27a              # double 7.1955580000000001
	.quad	0x401f2e9424e59296              # double 7.7954869999999996
	.quad	0x401a8a3c64345cff              # double 6.6349960000000001
	.quad	0x3fe1602a77a2cecd              # double 0.54298900000000005
	.quad	0x401e30bfa0945f9e              # double 7.547606
	.quad	0x3ffb70068db8bac7              # double 1.71485
	.quad	0x3fde735c182ecaef              # double 0.47579100000000002
	.quad	0x3ff66c01e68a0d35              # double 1.4013690000000001
	.quad	0x4014a130df9bdc6a              # double 5.157413
	.quad	0x400ad61dc93ea2d3              # double 3.354549
	.quad	0x4023833764f11b61              # double 9.7562820000000005
	.quad	0x3ffdf127f5e84f09              # double 1.8713759999999999
	.quad	0x4021ef8897e99631              # double 8.9678389999999997
	.quad	0x400a0ad57bc7f77b              # double 3.25529
	.quad	0x400f46822ff08894              # double 3.9094280000000001
	.quad	0x4023dced4e4c942d              # double 9.9314979999999994
	.quad	0x4003bd095af294dd              # double 2.4673029999999998
	.quad	0x400386afcce1c582              # double 2.4407649999999999
	.quad	0x40204f6b7ed41b76              # double 8.1551170000000006
	.quad	0x401b2c5154866a12              # double 6.7932790000000001
	.quad	0x400f62a66dbd72bd              # double 3.9231690000000001
	.quad	0x401c272862f5989e              # double 7.0382400000000001
	.quad	0x4018aa74c09c3ce2              # double 6.166461
	.quad	0x4021e315d701d9f5              # double 8.9435260000000003
	.quad	0x400360ee8d10f51b              # double 2.4223300000000001
	.quad	0x4010406d938151a4              # double 4.0629179999999998
	.quad	0x400b44f6dfc5cdd5              # double 3.408674
	.quad	0x4012371e29b6b2af              # double 4.5538259999999999
	.quad	0x40213351372a38b9              # double 8.6002290000000006
	.quad	0x3fe4327674d16335              # double 0.63116000000000005
	.quad	0x4021543f5f91600f              # double 8.6645459999999996
	.quad	0x4021cb7e4de3b8a2              # double 8.8974480000000007
	.quad	0x4021b4892ab68cef              # double 8.8526089999999993
	.quad	0x4022cd872f33ca32              # double 9.4014220000000002
	.quad	0x3ffd0877681669cf              # double 1.814567
	.quad	0x401f272474538ef3              # double 7.7882249999999997
	.quad	0x4010885b5b70691f              # double 4.1331610000000003
	.quad	0x401223c3a42f1ed1              # double 4.5349259999999996
	.quad	0x4021d6c28b2a6b0e              # double 8.9194530000000007
	.quad	0x3ffc44dec1c1d6d0              # double 1.7668140000000001
	.quad	0x401a3c304ccee5ac              # double 6.5587780000000002
	.quad	0x4020d1eff9f87f02              # double 8.4100339999999996
	.quad	0x40209bdf6db940ff              # double 8.3044390000000003
	.quad	0x40148d0edc3bd599              # double 5.1377519999999999
	.quad	0x401e817b5286b591              # double 7.6264469999999997
	.quad	0x4013e8c5004fb118              # double 4.9773139999999998
	.quad	0x4009faaa3ad18d26              # double 3.247395
	.quad	0x401378fcd67fd3f6              # double 4.8681520000000003
	.quad	0x4019fe9813879c41              # double 6.4986269999999999
	.quad	0x4023018a65492ff5              # double 9.5030090000000004
	.quad	0x3fff9dd1a21ea359              # double 1.97603
	.quad	0x3fffc20f6f08cc57              # double 1.9848779999999999
	.quad	0x401a7fb1e18efbb1              # double 6.6247020000000001
	.quad	0x401b9fd2a62aa194              # double 6.9060769999999998
	.quad	0x402382b302f72b45              # double 9.7552719999999997
	.quad	0x4017a1aa3f034b0e              # double 5.9078759999999999
	.quad	0x40203a0a0f4d7add              # double 8.1133579999999998
	.quad	0x40237f865d7cb2d9              # double 9.7490719999999999
	.quad	0x4022d136c58eeaea              # double 9.4086210000000001
	.quad	0x4009e111ada76d98              # double 3.2348970000000001
	.quad	0x4020cccb3a2595bc              # double 8.3999880000000004
	.quad	0x4014efec13b9f128              # double 5.234299
	.quad	0x4018210342aa9f7b              # double 6.0322389999999997
	.quad	0x3fece33269df97ab              # double 0.90273400000000004
	.quad	0x401693c03bc4d22d              # double 5.6442880000000004
	.quad	0x4018c29d8409e55c              # double 6.1900539999999999
	.quad	0x4014784dfce3150e              # double 5.1174850000000003
	.quad	0x40182b841248d7e0              # double 6.0424959999999999
	.quad	0x4009a9d388a8b08e              # double 3.2079230000000001
	.quad	0x3fc18bac710cb296              # double 0.137075
	.quad	0x40037e939eadd591              # double 2.4368050000000001
	.quad	0x4022355000c9539c              # double 9.1041260000000008
	.quad	0x4014749235f80991              # double 5.1138389999999996
	.quad	0x3ffc7f88765ba6f0              # double 1.7811360000000001
	.quad	0x4021746540cc78ea              # double 8.7273350000000001
	.quad	0x400e9ed84d338f7a              # double 3.8275610000000002
	.quad	0x3fffd39eadd590c1              # double 1.9891650000000001
	.quad	0x4010531df761cbcd              # double 4.081169
	.quad	0x401c44484944ed70              # double 7.0666820000000001
	.quad	0x3ffb17cb2d905c03              # double 1.693309
	.quad	0x3ff4f2b55ef1fddf              # double 1.3092550000000001
	.quad	0x400c04588a04d120              # double 3.502122
	.quad	0x3fe7f182235b4edb              # double 0.74823099999999998
	.quad	0x4010d076c050bd88              # double 4.2035780000000003
	.quad	0x3ff2e61cffeb074a              # double 1.1811799999999999
	.quad	0x3fd297edc7ef177a              # double 0.29052299999999998
	.quad	0x401a76abde3fbbd8              # double 6.6158900000000003
	.quad	0x400ed62cfd8f0c78              # double 3.8545780000000001
	.quad	0x40223e3c31df761d              # double 9.1215530000000005
	.quad	0x4010a2d2fe3f35a0              # double 4.159008
	.quad	0x40206e7a743a6480              # double 8.2157780000000002
	.quad	0x400c34bc6a7ef9db              # double 3.5257499999999999
	.quad	0x3fe2a14f0520d131              # double 0.58219100000000001
	.quad	0x4022ad097c80841f              # double 9.3379630000000002
	.quad	0x401fe29670196d8f              # double 7.9712769999999997
	.quad	0x4018c1a005c4651f              # double 6.1890869999999998
	.quad	0x401a516a055757d6              # double 6.5795060000000003
	.quad	0x400c2645e4e69f06              # double 3.518688
	.quad	0x40222b4df04ddb55              # double 9.0845789999999997
	.quad	0x40098e019b0ab2e1              # double 3.1943389999999998
	.quad	0x401cb4c87980f55e              # double 7.1765460000000001
	.quad	0x3ff0b62a5e785b5b              # double 1.0444739999999999
	.quad	0x401b31fa333764f1              # double 6.7988059999999999
	.quad	0x40109ef2c7325919              # double 4.1552230000000003
	.quad	0x4015ac72e275ab7e              # double 5.4184070000000002
	.quad	0x401a7382a12f9011              # double 6.6128030000000004
	.quad	0x4018d034b0e1b4bb              # double 6.2033259999999997
	.quad	0x40234e05ee568a50              # double 9.6523889999999994
	.quad	0x40221d75e2046c76              # double 9.0575399999999995
	.quad	0x401d17e175d13d75              # double 7.2733210000000001
	.quad	0x400610318b934699              # double 2.7579069999999999
	.quad	0x4022300eae18ac9f              # double 9.0938619999999997
	.quad	0x4011e1272c94b381              # double 4.4698760000000002
	.quad	0x3ff0d653c9abb01d              # double 1.0523260000000001
	.quad	0x40220b2ebe596c83              # double 9.0218410000000002
	.quad	0x401052480e8c8abd              # double 4.0803529999999997
	.quad	0x40038618ce2d1f1d              # double 2.440477
	.quad	0x3fed556084a515cf              # double 0.91667200000000004
	.quad	0x4004e25f202107b8              # double 2.6105330000000002
	.quad	0x40201e3ed0f62739              # double 8.0590729999999997
	.quad	0x401b4753e707e176              # double 6.8196560000000002
	.quad	0x4016c845132f87ad              # double 5.695576
	.quad	0x4023f9424e592967              # double 9.9868339999999999
	.quad	0x4001214c660a2014              # double 2.1412589999999998
	.quad	0x401f4a57214f0521              # double 7.8225980000000001
	.quad	0x401cb985f06f6944              # double 7.1811749999999996
	.quad	0x40111caeea63b689              # double 4.2780110000000002
	.quad	0x40226bf93ff25e57              # double 9.2108860000000004
	.quad	0x401e68a0d349be90              # double 7.602176
	.quad	0x40130c1ce6c093d9              # double 4.7618289999999996
	.quad	0x401b3bcba3012168              # double 6.8083939999999998
	.quad	0x40215236e2eb1c43              # double 8.6605749999999997
	.quad	0x401c34ca4f440af2              # double 7.0515530000000002
	.quad	0x401d24d8ba40d90e              # double 7.2859829999999999
	.quad	0x3fd013ad5bee3d60              # double 0.25120100000000001
	.quad	0x3ff8db37c99ae925              # double 1.55352
	.quad	0x3fffcd90e23af31b              # double 1.987687
	.quad	0x4020176555c52e73              # double 8.0456950000000003
	.quad	0x40239653868fd19a              # double 9.7936060000000005
	.quad	0x3fce69835158b828              # double 0.237595
	.quad	0x40189b80a9de8b3b              # double 6.1518579999999998
	.quad	0x4022d9e18efbb0e6              # double 9.4255490000000002
	.quad	0x401df77963992c8c              # double 7.4916739999999997
	.quad	0x401c4158b827fa1a              # double 7.063815
	.quad	0x401090307f23cc8e              # double 4.1408100000000001
	.quad	0x401414c2f837b4a2              # double 5.0202749999999998
	.quad	0x402109d5c31593e6              # double 8.519209
	.quad	0x40063f8b9baa1512              # double 2.7810280000000001
	.quad	0x4006a00e27e0ef9a              # double 2.8281520000000002
	.quad	0x400b6ee5abc0e38a              # double 3.4291489999999998
	.quad	0x4022153005814941              # double 9.0413820000000005
	.quad	0x3ffc32d1aeb3dd12              # double 1.7624070000000001
	.quad	0x401e5f2d3c792d13              # double 7.5929460000000004
	.quad	0x3fe97ebd09e12a52              # double 0.79672100000000001
	.quad	0x4004b58fb43d89ce              # double 2.5886529999999999
	.quad	0x4017a3836a832b99              # double 5.909681
	.quad	0x4004507c84b5dcc6              # double 2.5392999999999999
	.quad	0x400ea9f05ea24cc7              # double 3.8329780000000002
	.quad	0x40127e71044f1a1a              # double 4.6234780000000004
	.quad	0x3fff03526527a205              # double 1.9383109999999999
	.quad	0x4023eb9d3cbc48f1              # double 9.9601839999999999
	.quad	0x401e1d6777079e5a              # double 7.528715
	.quad	0x4022e3c925785f8d              # double 9.4448939999999996
	.quad	0x4017071715c63ae2              # double 5.7569239999999997
	.quad	0x4001809a24031487              # double 2.1877939999999998
	.quad	0x40134fca42aed139              # double 4.8279199999999998
	.quad	0x4020b1e03f705858              # double 8.3474140000000006
	.quad	0x4021c4692f6e8295              # double 8.8836150000000007
	.quad	0x4020362867275686              # double 8.1057769999999998
	.quad	0x40213abbecaab8a6              # double 8.6147150000000003
	.quad	0x4019fe047d3d4281              # double 6.4980640000000003
	.quad	0x400d3878b7a1c25d              # double 3.652574
	.quad	0x402204e032db1e9f              # double 9.0095229999999997
	.quad	0x401832163fdd65a1              # double 6.0489129999999998
	.quad	0x4005c229a5ebb774              # double 2.7198060000000002
	.quad	0x401b7527e5215769              # double 6.8644100000000003
	.quad	0x4012a1815a07b353              # double 4.6577200000000003
	.quad	0x3ff0c473cd573648              # double 1.0479620000000001
	.quad	0x401a0ec8d5c74752              # double 6.5144380000000002
	.quad	0x3fee720c8cd63cb8              # double 0.95142199999999998
	.quad	0x401463b14a90470b              # double 5.0973560000000004
	.quad	0x40046fe69270b06c              # double 2.5546389999999999
	.quad	0x4023182e019b0ab3              # double 9.5472260000000002
	.quad	0x402312abef06b378              # double 9.5364679999999992
	.quad	0x3fe4a8fc0d2c386d              # double 0.64562799999999998
	.quad	0x400b5fdf7e8038a0              # double 3.4218130000000002
	.quad	0x3fc9c1c6088d6d3b              # double 0.20122599999999999
	.quad	0x3f97d63022dd7a9a              # double 0.023278
	.quad	0x4012e1487768166a              # double 4.7200030000000002
	.quad	0x4020447735c182ed              # double 8.1337220000000006
	.quad	0x400ec64cb5bb3850              # double 3.8468260000000001
	.quad	0x401fcae297396d09              # double 7.9481299999999999
	.quad	0x3fee1a2403148777              # double 0.94069100000000005
	.quad	0x4022be3a19008206              # double 9.371537
	.quad	0x401ac3eee5258927              # double 6.6913410000000004
	.quad	0x40124360d0247022              # double 4.5657990000000002
	.quad	0x40127d0dcfcc5b8e              # double 4.6221230000000002
	.quad	0x40037beb18116ebd              # double 2.4355069999999999
	.quad	0x400d40f0a5efe932              # double 3.6567090000000002
	.quad	0x4014754046412cf1              # double 5.114503
	.quad	0x3fd307aaef2c7326              # double 0.29734300000000002
	.quad	0x3fed1deacc92146a              # double 0.90990199999999999
	.quad	0x401d202539756c94              # double 7.2813920000000003
	.quad	0x4019a94af4f0d845              # double 6.4153250000000002
	.quad	0x40161ce24bba12b6              # double 5.5282070000000001
	.quad	0x4017904c48adeebb              # double 5.8909159999999998
	.quad	0x400179c065b63d3e              # double 2.1844489999999999
	.quad	0x40213320d9945b6c              # double 8.5998599999999996
	.quad	0x3fe77811f4f50a03              # double 0.73340700000000003
	.quad	0x40209c779a6b50b1              # double 8.3056000000000001
	.quad	0x40174d0d49949e88              # double 5.8252459999999999
	.quad	0x4017f09b738e6d16              # double 5.9849680000000003
	.quad	0x401a123cc8de2ac3              # double 6.5178099999999999
	.quad	0x3ffebbeb9e492bc3              # double 1.920879
	.quad	0x401ebc46d82ba5a0              # double 7.6838639999999998
	.quad	0x401295abc0e38a7e              # double 4.6461629999999996
	.quad	0x40070a7ded6ba8c6              # double 2.8801230000000002
	.quad	0x402212d87f88765c              # double 9.0368080000000006
	.quad	0x4021ace7ee9142b3              # double 8.837707
	.quad	0x400fc09b30728e93              # double 3.9690460000000001
	.quad	0x401f432f01754b06              # double 7.8156090000000003
	.quad	0x401a58b71b8aa002              # double 6.5866360000000004
	.quad	0x3ff5f675ddd2ae8e              # double 1.372671
	.quad	0x40202accb3a2595c              # double 8.0835930000000004
	.quad	0x3fe50e3476295209              # double 0.65798400000000001
	.quad	0x400d87820a30db6a              # double 3.6911659999999999
	.quad	0x40083f57b41bfbdf              # double 3.030929
	.quad	0x4010e43b2dd377e2              # double 4.2228820000000002
	.quad	0x400f3ed0f627392a              # double 3.905672
	.quad	0x3fe30d4bad7d7c2d              # double 0.59537300000000004
	.quad	0x4019b76a2f48c2e7              # double 6.4291159999999996
	.quad	0x3ffab51efb6dca08              # double 1.669219
	.quad	0x3ff7f0f5a1016ce8              # double 1.4963280000000001
	.quad	0x4020d148ba83f4ed              # double 8.4087580000000006
	.quad	0x401cf148344c37e7              # double 7.235627
	.quad	0x40214930164840e1              # double 8.6429449999999992
	.quad	0x40178b5b2d4d4025              # double 5.8860900000000003
	.quad	0x3ff230bae89eba6b              # double 1.136897
	.quad	0x40221f08cc575c07              # double 9.0606139999999993
	.quad	0x401f55c24c404a73              # double 7.833749
	.quad	0x3fdfaf294dd72368              # double 0.49506600000000001
	.quad	0x4022432bba98eda2              # double 9.1311929999999997
	.quad	0x400d3d755bccaf71              # double 3.6550090000000002
	.quad	0x3ffab66b6177ea1c              # double 1.6695359999999999
	.quad	0x3ff6aa76965f5276              # double 1.416617
	.quad	0x4020beedcc20d563              # double 8.3729080000000007
	.quad	0x400e919bd4067cf2              # double 3.8210980000000001
	.quad	0x401c5baba7b9170d              # double 7.0895219999999997
	.quad	0x3ffa28661ae70c13              # double 1.634863
	.quad	0x40113aff2a172abf              # double 4.3076140000000001
	.quad	0x4011d909f1f14984              # double 4.4619520000000001
	.quad	0x3ff0884944ed6fdb              # double 1.0332730000000001
	.quad	0x401a19e774eebf66              # double 6.5252970000000001
	.quad	0x4006622c45026890              # double 2.797936
	.quad	0x3ffdf5bf6a0dbad4              # double 1.8724970000000001
	.quad	0x401d754de7ea5f85              # double 7.3645550000000002
	.quad	0x3fe17aaef2c73259              # double 0.54622599999999999
	.quad	0x40147cbc8c0ce91d              # double 5.1218130000000004
	.quad	0x401aa84d338f7985              # double 6.6643569999999999
	.quad	0x4009423e9ea14057              # double 3.157346
	.quad	0x4009fc33f85510d4              # double 3.2481460000000002
	.quad	0x4003f6f75d9a0f0a              # double 2.4955889999999998
	.quad	0x3fbc443914f483cb              # double 0.110416
	.quad	0x4022961b4bb5e0f8              # double 9.293177
	.quad	0x3fc4e22a2c237479              # double 0.16315199999999999
	.quad	0x402067566490a351              # double 8.2018310000000003
	.quad	0x3ffdab841248d7e0              # double 1.854374
	.quad	0x3fe4bcf2cf95d4e9              # double 0.648065
	.quad	0x4018687ebf22c01e              # double 6.1020459999999996
	.quad	0x400b83f9a49c2c1b              # double 3.439441
	.quad	0x40228c2f837b4a23              # double 9.2737999999999996
	.quad	0x4010831fcd24e161              # double 4.1280510000000001
	.quad	0x3fc07ce0fc2eba28              # double 0.12881100000000001
	.quad	0x401bf7afea3df6dc              # double 6.9918820000000004
	.quad	0x40164d5b6805a2d7              # double 5.5755439999999998
	.quad	0x400db3647baa9b4a              # double 3.7125940000000002
	.quad	0x4005177d955714ba              # double 2.6364700000000001
	.quad	0x3fe44743201040c0              # double 0.63369900000000001
	.quad	0x3ffd7ec99f1ae2da              # double 1.8434539999999999
	.quad	0x4002bd5347a5b0ff              # double 2.342444
	.quad	0x3fe1a5aab4741073              # double 0.55147299999999999
	.quad	0x402043cea6c1a049              # double 8.1324360000000002
	.quad	0x4020d30c23fab10c              # double 8.4122020000000006
	.quad	0x401a44c2b51bd61f              # double 6.5671489999999997
	.quad	0x401618950763a190              # double 5.524006
	.quad	0x401fcdbca9691a76              # double 7.9509150000000002
	.quad	0x4018846cfc829cfe              # double 6.1293220000000002
	.quad	0x4014c71ac14c660a              # double 5.1944379999999999
	.quad	0x401d53608d08919f              # double 7.331423
	.quad	0x4020aa5dd095af29              # double 8.3327469999999995
	.quad	0x401ec6b053198288              # double 7.6940319999999999
	.quad	0x4023f5b2f661f18d              # double 9.9798810000000006
	.quad	0x3ff0d0214ad362e9              # double 1.050813
	.quad	0x40129856e696a26e              # double 4.6487689999999997
	.quad	0x4018eec0b567557a              # double 6.2331570000000003
	.quad	0x40215bc925785f8d              # double 8.6792689999999997
	.quad	0x4022d9d4306e5cd5              # double 9.4254470000000001
	.quad	0x40218a497fa5d28d              # double 8.770092
	.quad	0x3ff4c2be8bc169c2              # double 1.2975449999999999
	.quad	0x402251bbcf4e874d              # double 9.1596360000000008
	.quad	0x4019ef672b884407              # double 6.4837920000000002
	.quad	0x3fee74794ea07703              # double 0.95171799999999995
	.quad	0x400f843fe5c91d15              # double 3.939575
	.quad	0x40209222b3892ee8              # double 8.2854209999999995
	.quad	0x40211bcea6c1a049              # double 8.5543110000000002
	.quad	0x40236cbddb9841ab              # double 9.7123860000000004
	.quad	0x4007a2478854cdb8              # double 2.9542380000000001
	.quad	0x3fb0b30b5aa71583              # double 0.065231999999999998
	.quad	0x4020790eed02cd3a              # double 8.2364420000000003
	.quad	0x40204c934267839d              # double 8.1495610000000003
	.quad	0x401884c8366516db              # double 6.12967
	.quad	0x40160dc33721d53d              # double 5.5134400000000001
	.quad	0x400fbfe9fadafd11              # double 3.9687079999999999
	.quad	0x401b8c868b9fdbd3              # double 6.887232
	.quad	0x40235491d14e3bcd              # double 9.6651749999999996
	.quad	0x4020b5aa2e3c536d              # double 8.3548139999999993
	.quad	0x401358909289dae0              # double 4.8364890000000003
	.quad	0x40224dd249e44fa0              # double 9.1519949999999994
	.quad	0x401000ee49f51698              # double 4.000909
	.quad	0x4013d8b60f1b25f6              # double 4.9616319999999998
	.quad	0x40238f10667f90da              # double 9.7794220000000003
	.quad	0x40098cad57bc7f78              # double 3.1936900000000001
	.quad	0x401a7c12ad81adeb              # double 6.6211650000000004
	.quad	0x402224942d490e67              # double 9.0714430000000004
	.quad	0x40216540cc78e9f7              # double 8.6977600000000006
	.quad	0x3ff3e8fe260b2c84              # double 1.244383
	.quad	0x40237c538ef34d6a              # double 9.7428249999999998
	.quad	0x4021a8624dd2f1aa              # double 8.828875
	.quad	0x40215dcfaacd9e84              # double 8.6832250000000001
	.quad	0x4014bcf1800a7c5b              # double 5.1845150000000002
	.quad	0x4014843fa2ad3e92              # double 5.129149
	.quad	0x401434a16a487336              # double 5.0513969999999997
	.quad	0x40147cc5fbf83383              # double 5.1218490000000001
	.quad	0x3fd36ea854477ff1              # double 0.30362899999999998
	.quad	0x4019fa26a22b3893              # double 6.4942880000000001
	.quad	0x40168a376922d949              # double 5.6349770000000001
	.quad	0x40133626b2f23034              # double 4.8028820000000003
	.quad	0x3ffdfce63a5c1c61              # double 1.8742430000000001
	.quad	0x4007d43e10060781              # double 2.978634
	.quad	0x401fcbaf533f4235              # double 7.9489109999999998
	.quad	0x3fbb0ac3a860dcba              # double 0.105633
	.quad	0x4013ee89a88ace25              # double 4.9829470000000002
	.quad	0x40013d5347a5b0ff              # double 2.154944
	.quad	0x401aad0cc35ce182              # double 6.6689939999999996
	.quad	0x3ff864873365881a              # double 1.524543
	.quad	0x40203378ab0c88a4              # double 8.1005299999999991
	.quad	0x400b8682b6284599              # double 3.4406789999999998
	.quad	0x3ff804ee7c49fd7a              # double 1.501204
	.quad	0x401cc3037d63022e              # double 7.1904430000000001
	.quad	0x4023f3404ea4a8c1              # double 9.9750999999999994
	.quad	0x40107c4e7253da73              # double 4.1213930000000003
	.quad	0x3ffb8ed5f138bce0              # double 1.722372
	.quad	0x4022c411e42e1262              # double 9.382949
	.quad	0x400f8180d3cff64d              # double 3.938234
	.quad	0x401b3a2d72ffd1dd              # double 6.8068140000000001
	.quad	0x4020843efae7924b              # double 8.2582930000000001
	.quad	0x4023ca4dd2f1a9fc              # double 9.8951250000000001
	.quad	0x401c53b9f127f5e8              # double 7.0817639999999997
	.quad	0x4023c97396d0917d              # double 9.8934599999999992
	.quad	0x4012495c42203600              # double 4.5716409999999996
	.quad	0x40224c08fa7a8501              # double 9.1485059999999994
	.quad	0x3fe5d5ffe6d58c8f              # double 0.68237300000000001
	.quad	0x4015a5653c9abb02              # double 5.4115190000000002
	.quad	0x40052280ae104923              # double 2.6418469999999998
	.quad	0x3ffb81c2e33eff19              # double 1.7191799999999999
	.quad	0x4023c203e63e8dda              # double 9.8789359999999995
	.quad	0x401243dea465a576              # double 4.5662789999999998
	.quad	0x401b9f8df7a4e7ab              # double 6.9058149999999996
	.quad	0x4011ffb15b573eab              # double 4.4996999999999998
	.quad	0x3ffc300ffda4052d              # double 1.7617339999999999
	.quad	0x402291b7bf1e8e61              # double 9.2846050000000009
	.quad	0x402054445aa2e3c5              # double 8.1645839999999996
	.quad	0x401354712e40852b              # double 4.8324629999999997
	.quad	0x401ae476295208e1              # double 6.7231069999999997
	.quad	0x40042960b6f9fcb1              # double 2.5202040000000001
	.quad	0x400ff41fa7653437              # double 3.9942009999999999
	.quad	0x3ffdffc115df6556              # double 1.8749400000000001
	.quad	0x4003124d8fd5cb79              # double 2.383937
	.quad	0x40141b6dca07f66f              # double 5.0267860000000004
	.quad	0x4021623443d46b27              # double 8.6918050000000004
	.quad	0x4010d5247cb70ac4              # double 4.2081470000000003
	.quad	0x40224f1455219a84              # double 9.1544519999999991
	.quad	0x4007d266ba493c8a              # double 2.977735
	.quad	0x401e06f4be835dee              # double 7.506793
	.quad	0x401904d50ebaade6              # double 6.2547189999999997
	.quad	0x3feaf8f25a250f84              # double 0.84288899999999999
	.quad	0x402132fd113836a8              # double 8.5995869999999996
	.quad	0x402091e90795f677              # double 8.2849810000000002
	.quad	0x4021c23810e88590              # double 8.8793340000000001
	.quad	0x400b58b3f63c31df              # double 3.4183119999999998
	.quad	0x4021543aa79bbadc              # double 8.6645099999999999
	.quad	0x4019da25d8d79d0a              # double 6.4630349999999996
	.quad	0x3ffc8a0e410b630b              # double 1.7837050000000001
	.quad	0x401a373a797891e2              # double 6.5539339999999999
	.quad	0x40186a13c254a3c6              # double 6.1035909999999998
	.quad	0x4021cbef49cf56eb              # double 8.8983100000000004
	.quad	0x401df42f61ed5ae2              # double 7.4884620000000002
	.quad	0x401d77b634dad320              # double 7.3669060000000002
	.quad	0x4014994573a79789              # double 5.1496789999999999
	.quad	0x401b5f972474538f              # double 6.84335
	.quad	0x40157e8ea39c51db              # double 5.3735910000000002
	.quad	0x3fb093964a59c066              # double 0.064752000000000004
	.quad	0x401eda5accd53049              # double 7.7132370000000003
	.quad	0x4017a27525460aa6              # double 5.9086499999999997
	.quad	0x40234606317268d3              # double 9.6367659999999997
	.quad	0x4002ab734b51372a              # double 2.3337159999999999
	.quad	0x4022626cc1ca3a4b              # double 9.1922359999999994
	.quad	0x401a614a90470a81              # double 6.5950110000000004
	.quad	0x4011f9c7368ad688              # double 4.4939239999999998
	.quad	0x3fe2d16fc9bc7714              # double 0.58806599999999998
	.quad	0x400c7baecd07852f              # double 3.5603919999999998
	.quad	0x401a5660e51d25ab              # double 6.5843540000000003
	.quad	0x3fc44c2f837b4a23              # double 0.15857499999999999
	.quad	0x4016825892684cf0              # double 5.6272909999999996
	.quad	0x4014cfe9fadafd11              # double 5.2030409999999998
	.quad	0x402129e94ab1d4fa              # double 8.5818580000000004
	.quad	0x400be26e5471715c              # double 3.4855619999999998
	.quad	0x3fd3d14a0a0f4d7b              # double 0.30964900000000001
	.quad	0x401a3afcce1c5825              # double 6.5576049999999997
	.quad	0x4018b12d77318fc5              # double 6.173025
	.quad	0x40020064a9cdc444              # double 2.2501920000000002
	.quad	0x401d3d4801f75105              # double 7.3098450000000001
	.quad	0x4019bfd08d4bad7d              # double 6.4373189999999996
	.quad	0x3ffe56d0917d6b66              # double 1.8961950000000001
	.quad	0x4023b558ea7ce0fc              # double 9.8541939999999996
	.quad	0x40169abead4f5904              # double 5.6511180000000003
	.quad	0x3fb2f262888b545c              # double 0.074010999999999993
	.quad	0x3fd375360d024702              # double 0.30402899999999999
	.quad	0x40160aac96cc5fc0              # double 5.5104240000000004
	.quad	0x40210cb3e5753a3f              # double 8.5248100000000004
	.quad	0x4005ea5482385404              # double 2.7394189999999998
	.quad	0x4007786338b47c74              # double 2.933783
	.quad	0x4016f2fbe33acd5b              # double 5.7372889999999996
	.quad	0x401d8effe2a3cea7              # double 7.3896480000000002
	.quad	0x401666ad70e6f2e9              # double 5.6002710000000002
	.quad	0x3fed890b417ca212              # double 0.92297899999999999
	.quad	0x401f36c7219220ff              # double 7.8034939999999997
	.quad	0x401ab698fe69270b              # double 6.678318
	.quad	0x3fec3ff25e56cd6c              # double 0.88280599999999997
	.quad	0x3fcf2f01754b05b8              # double 0.24362200000000001
	.quad	0x3fec8ecb74ddf86e              # double 0.89243099999999997
	.quad	0x40144ee525892685              # double 5.0770460000000002
	.quad	0x3ff5d230b9dc2f40              # double 1.3638159999999999
	.quad	0x401783e4abe6a338              # double 5.8788020000000003
	.quad	0x4020b5894812be49              # double 8.3545630000000006
	.quad	0x4011c9a1b9f98b72              # double 4.4469060000000002
	.quad	0x400a01bc98a222d5              # double 3.250848
	.quad	0x400e0e3150dae3e7              # double 3.7569300000000001
	.quad	0x4016d0c73abc9470              # double 5.7038849999999996
	.quad	0x4011b95ee136e71d              # double 4.4310260000000001
	.quad	0x401b812e83a109d0              # double 6.8761539999999997
	.quad	0x3ffe7b5aea3161a2              # double 1.905116
	.quad	0x3fa87bbb62413db8              # double 0.047819
	.quad	0x401d0e9680e06530              # double 7.264246
	.quad	0x3fe8577963992c8c              # double 0.76067799999999996
	.quad	0x3ff2f1d81f106680              # double 1.1840440000000001
	.quad	0x401025bd512ec6bd              # double 4.0368550000000001
	.quad	0x401bb40357a35504              # double 6.9257939999999998
	.quad	0x4009281d3aa369fd              # double 3.144587
	.quad	0x402269bfbdf090f7              # double 9.2065409999999996
	.quad	0x40237aa7ded6ba8c              # double 9.7395619999999993
	.quad	0x40140d21bc126a66              # double 5.0128240000000002
	.quad	0x402342d3a604e1e7              # double 9.6305209999999998
	.quad	0x401681e29b6b2af1              # double 5.6268409999999998
	.quad	0x40217f91600f3450              # double 8.7491559999999993
	.quad	0x400da7bdcf0307f2              # double 3.7069049999999999
	.quad	0x401d08255b035bd5              # double 7.2579549999999999
	.quad	0x40021da48b652370              # double 2.2644739999999999
	.quad	0x40095599aa60913a              # double 3.1667969999999999
	.quad	0x4020f2ba9d1f6018              # double 8.4740800000000007
	.quad	0x401f76f544bb1af4              # double 7.8661700000000003
	.quad	0x3ff5e1e92923e5b8              # double 1.3676539999999999
	.quad	0x402260fb224aada3              # double 9.1894159999999996
	.quad	0x3fe49389b52007dd              # double 0.64300999999999997
	.quad	0x401d4a69be09bb6b              # double 7.3226690000000003
	.quad	0x400d14fc610f0e91              # double 3.6352470000000001
	.quad	0x4011b154c985f06f              # double 4.4231749999999996
	.quad	0x40196a0cf1800a7c              # double 6.3535649999999997
	.quad	0x4015e3458cd20afa              # double 5.4719449999999998
	.quad	0x40119bab21815a08              # double 4.4020200000000003
	.quad	0x401ae9289dadfb50              # double 6.7276939999999996
	.quad	0x401f1d594f26aec0              # double 7.7786609999999996
	.quad	0x400f03c8e25c810a              # double 3.8768479999999998
	.quad	0x402114845132f87b              # double 8.5400720000000003
	.quad	0x3ff12f33ca31e7da              # double 1.0740240000000001
	.quad	0x400f83a53b8e4b88              # double 3.9392800000000001
	.quad	0x3ff54f8d716d2aa6              # double 1.3319220000000001
	.quad	0x400cf8b3f63c31df              # double 3.6214369999999998
	.quad	0x4017a55b89939219              # double 5.9114820000000003
	.quad	0x4018105ea24cc682              # double 6.0159859999999998
	.quad	0x4005a535c9e6687f              # double 2.7056689999999999
	.quad	0x40200d1b93037d63              # double 8.025601
	.quad	0x40169afc8b0079a3              # double 5.6513540000000004
	.quad	0x3fd2c99285a921cd              # double 0.29355300000000001
	.quad	0x40212883fd502257              # double 8.5791319999999995
	.quad	0x4017a3a68b19a416              # double 5.909815
	.quad	0x3ff30b124d099e0e              # double 1.1902029999999999
	.quad	0x400ca51b0ccbc05d              # double 3.5806179999999999
	.quad	0x4002ef2b66b6177f              # double 2.3667820000000002
	.quad	0x4022d1c99285a922              # double 9.4097410000000004
	.quad	0x4014decaab8a5ce6              # double 5.2175700000000003
	.quad	0x4022ece5b4245f5b              # double 9.4626900000000002
	.quad	0x40209d2fe3f359ff              # double 8.3070059999999994
	.quad	0x402322bae03b3e9a              # double 9.5678319999999992
	.quad	0x3fe4fcbf6e3f78bc              # double 0.65585300000000002
	.quad	0x402016136e71cda3              # double 8.0431170000000005
	.quad	0x3febb91d57ff9b56              # double 0.86634699999999998
	.quad	0x401f3df4c2b51bd6              # double 7.8105039999999999
	.quad	0x40055f212d773190              # double 2.6714500000000001
	.quad	0x4021a587724fa8b5              # double 8.8232990000000004
	.quad	0x4023154cdb7ae579              # double 9.5416019999999992
	.quad	0x3fea7d3b29a1b9fa              # double 0.82778700000000005
	.quad	0x3fe98a99b6f5caf3              # double 0.79816900000000002
	.quad	0x400a7bc7f77af640              # double 3.3104399999999998
	.quad	0x401619cf13cee9dd              # double 5.5252039999999996
	.quad	0x401598e5c4eb56fc              # double 5.3993140000000004
	.quad	0x4011ffb267c6b8b7              # double 4.4997040000000004
	.quad	0x3fccd013a92a3055              # double 0.22509999999999999
	.quad	0x401433dc486ad2dd              # double 5.0506450000000003
	.quad	0x400a04ce8101f31f              # double 3.2523469999999999
	.quad	0x4020348fb86f47b6              # double 8.1026589999999992
	.quad	0x3fc3676ea4228998              # double 0.15159400000000001
	.quad	0x4017113f4a98aa86              # double 5.7668429999999997
	.quad	0x4015943a2163fdd6              # double 5.3947529999999997
	.quad	0x4013012a51e321a3              # double 4.7511380000000001
	.quad	0x400c2db59578a2a9              # double 3.522319
	.quad	0x4021ffd8f0c77dd8              # double 8.9997019999999992
	.quad	0x4003ace67d77fae3              # double 2.4594239999999998
	.quad	0x4018b2c1f42bb667              # double 6.1745679999999998
	.quad	0x4006466666666666              # double 2.7843749999999998
	.quad	0x4018f75ab7dc7ac0              # double 6.2415570000000002
	.quad	0x4020b9d495182a99              # double 8.3629499999999997
	.quad	0x402078984e3ffef4              # double 8.2355370000000007
	.quad	0x401610232096787d              # double 5.5157590000000001
	.quad	0x4020ab124d099e0e              # double 8.3341239999999992
	.quad	0x4015575147f13059              # double 5.3352709999999997
	.quad	0x4010fb49e01de269              # double 4.2453989999999999
	.quad	0x401e87f4dbdf8f47              # double 7.6327699999999998
	.quad	0x40166083dbc23316              # double 5.5942530000000001
	.quad	0x402088b75ea67e84              # double 8.2670239999999992
	.quad	0x401996b15f88fc93              # double 6.3971609999999997
	.quad	0x4023dc504816f007              # double 9.9303000000000007
	.quad	0x3fff3c664d3bf2f5              # double 1.9522459999999999
	.quad	0x401c9f1e8e608073              # double 7.1553899999999997
	.quad	0x40145e8709741d08              # double 5.0923119999999997
	.quad	0x40049c810a569b17              # double 2.5764179999999999
	.quad	0x400d75946c332f01              # double 3.6824119999999998
	.quad	0x4023b75a74c09c3d              # double 9.8581120000000002
	.quad	0x4022edd54da4ce81              # double 9.4645179999999999
	.quad	0x4009aa5269595fee              # double 3.2081650000000002
	.quad	0x4023150d49949e88              # double 9.5411169999999998
	.quad	0x3fe2b8e29f9ce8d9              # double 0.58506899999999995
	.quad	0x40158a27ae9ab29e              # double 5.3849169999999997
	.quad	0x401f66612839042e              # double 7.8499800000000004
	.quad	0x401ece8709741d08              # double 7.7016869999999997
	.quad	0x400f6115592d98bf              # double 3.9224039999999998
	.quad	0x4020def08cc575c0              # double 8.4354289999999992
	.quad	0x3fe4adcd2d44dca9              # double 0.64621600000000001
	.quad	0x3fe5e06d938151a4              # double 0.68364599999999998
	.quad	0x401e51ebc83a96d5              # double 7.5800010000000002
	.quad	0x3ffa506bbdbe3c10              # double 1.6446339999999999
	.quad	0x4021aa1f4b1ee243              # double 8.8322699999999994
	.quad	0x4017e0cb6c7a7c9e              # double 5.9695260000000001
	.quad	0x401e651f3e89a88b              # double 7.5987520000000001
	.quad	0x401f88d3f1843c3a              # double 7.8836209999999998
	.quad	0x40116f8df7a4e7ab              # double 4.3589399999999996
	.quad	0x401dfcdb7ae5796c              # double 7.496931
	.quad	0x401ae153bd167664              # double 6.720046
	.quad	0x4021eb059641f645              # double 8.9590270000000007
	.quad	0x3ff996adf71eafee              # double 1.5992869999999999
	.quad	0x40058b92c061847f              # double 2.6931509999999999
	.quad	0x4020a79d909f1f15              # double 8.3273740000000007
	.quad	0x3ff32ee30caa326e              # double 1.198947
	.quad	0x400d0fa0d77b7c78              # double 3.6326309999999999
	.quad	0x4003dd3d4280ae10              # double 2.4830269999999999
	.quad	0x401acb5350092ccf              # double 6.6985599999999996
	.quad	0x4020b9ada76d97b3              # double 8.3626529999999999
	.quad	0x4022523af31b152f              # double 9.1606059999999996
	.quad	0x4020e4e65bea0ba2              # double 8.4470700000000001
	.quad	0x400c82dcf4623d0c              # double 3.563898
	.quad	0x3fe6a57eaa2a0a96              # double 0.70770200000000005
	.quad	0x3fe3e70196d8f4f9              # double 0.62194899999999997
	.quad	0x40175be5d9e40c84              # double 5.8397439999999996
	.quad	0x4013e46887a8d64d              # double 4.9730549999999996
	.quad	0x3fed50a45d41fa76              # double 0.91609399999999996
	.quad	0x402059f18c9fb613              # double 8.1756709999999995
	.quad	0x401e848b220791c5              # double 7.6294370000000002
	.quad	0x4014d744f5d35654              # double 5.2102240000000002
	.quad	0x401c1dad7518b0d1              # double 7.0289820000000001
	.quad	0x40004484944ed6fe              # double 2.0334560000000002
	.quad	0x3fe57a52ac753e70              # double 0.67118199999999995
	.quad	0x3ff6efbf401c4fc2              # double 1.433532
	.quad	0x4009272e275ab7dc              # double 3.1441309999999998
	.quad	0x3fea1b4bb5e0f7fd              # double 0.815832
	.quad	0x3ffdefd75e2046c7              # double 1.8710549999999999
	.quad	0x401aed7a56de3327              # double 6.7319120000000003
	.quad	0x3fea55a187a4a490              # double 0.82295300000000005
	.quad	0x40110ddce7cd0353              # double 4.2635379999999996
	.quad	0x40139e2478854cdb              # double 4.9044359999999996
	.quad	0x401b24f6598e10cf              # double 6.7860959999999997
	.quad	0x4021df00abf76a2f              # double 8.9355519999999995
	.quad	0x3ff9244fa05143bf              # double 1.5713649999999999
	.quad	0x3fb9cfcc5b8dc550              # double 0.100827
	.quad	0x4016d9ac36544fe3              # double 5.7125709999999996
	.quad	0x4020e8b630a91538              # double 8.4545150000000007
	.quad	0x4015abd8be7296f6              # double 5.4178189999999997
	.quad	0x4008667b5f1bef4a              # double 3.0500400000000001
	.quad	0x40215a69be09bb6b              # double 8.6765880000000006
	.quad	0x3fd10d887ebf22c0              # double 0.26645099999999999
	.quad	0x4020a30af5fd47bf              # double 8.3184430000000003
	.quad	0x402249d7774aba38              # double 9.1442219999999991
	.quad	0x4001cc6cdaf4adbc              # double 2.2248169999999998
	.quad	0x3fd2d6adf71eafee              # double 0.29435299999999998
	.quad	0x402319f51697f1fa              # double 9.5506980000000006
	.quad	0x401c63ff25e56cd7              # double 7.0976530000000002
	.quad	0x4015fc9d16fc9bc7              # double 5.4966929999999996
	.quad	0x3fff7d577963992d              # double 1.9681010000000001
	.quad	0x400f19ee88df3733              # double 3.8876620000000002
	.quad	0x402135aad601ffb5              # double 8.6048190000000009
	.quad	0x3ffc7e8dda48b652              # double 1.780897
	.quad	0x401fdd9c27e95315              # double 7.9664159999999997
	.quad	0x4010edfdac68a937              # double 4.2324130000000002
	.quad	0x3ff1ee45c358afc4              # double 1.1206719999999999
	.quad	0x402384ac6cdaf4ae              # double 9.7591280000000005
	.quad	0x4015674080f98fa3              # double 5.3508319999999996
	.quad	0x401854840e1719f8              # double 6.082535
	.quad	0x400f1fa658c4bd34              # double 3.8904540000000001
	.quad	0x400075bdd76683c3              # double 2.0574910000000002
	.quad	0x4022258dde7a743a              # double 9.0733479999999993
	.quad	0x400d2321a2e7f6f5              # double 3.6421540000000001
	.quad	0x4003315f88fc9364              # double 2.399108
	.quad	0x4020a9185cee17a0              # double 8.3302639999999997
	.quad	0x401d974794ea0770              # double 7.3977339999999998
	.quad	0x400fb9f666234a88              # double 3.965802
	.quad	0x4013d5f0f5a1016d              # double 4.9589270000000001
	.quad	0x401300cc35ce1826              # double 4.7507789999999996
	.quad	0x4023f9bcdbbe0158              # double 9.9877690000000001
	.quad	0x40180d1394317acc              # double 6.0127699999999997
	.quad	0x3ff22fa82e87d2c8              # double 1.1366350000000001
	.quad	0x402071c7ffde7211              # double 8.2222290000000005
	.quad	0x400f6620ab713272              # double 3.9248669999999999
	.quad	0x4023bbccd0fe8ab5              # double 9.866797
	.quad	0x400705881a1554fc              # double 2.8777010000000001
	.quad	0x40165536933a0408              # double 5.5832160000000002
	.quad	0x401549eb6390c910              # double 5.3221869999999996
	.quad	0x401168d64d7f0ed4              # double 4.3523800000000001
	.quad	0x40234699e94ab1d5              # double 9.637893
	.quad	0x4023a94fce746cb9              # double 9.8306869999999992
	.quad	0x40203ce18266772d              # double 8.1189079999999993
	.quad	0x4010b93ea2d2fe3f              # double 4.1809029999999998
	.quad	0x40127a5f41aef6f9              # double 4.6195040000000001
	.quad	0x4013deefa1e3eaf7              # double 4.9677110000000004
	.quad	0x4020c8c1fc8f3238              # double 8.3921050000000008
	.quad	0x3ffdeee41919ac79              # double 1.8708229999999999
	.quad	0x3fbc64ba94bbe447              # double 0.110912
	.quad	0x40223d912556d19e              # double 9.1202480000000001
	.quad	0x4011434efcbd5561              # double 4.3157310000000004
	.quad	0x40156e3369b9d7fe              # double 5.3576180000000004
	.quad	0x401672817763e4ac              # double 5.6118220000000001
	.quad	0x400209e6eeb70260              # double 2.2548349999999999
	.quad	0x4010e8f57f737da6              # double 4.2274989999999999
	.quad	0x4008adb9c7368ad7              # double 3.0848270000000002
	.quad	0x402288cdea033e79              # double 9.2671960000000002
	.quad	0x3ff3a542e557de0d              # double 1.2278469999999999
	.quad	0x401f3a58b3f63c32              # double 7.8069790000000001
	.quad	0x401c8086bdf4c2b5              # double 7.1255139999999999
	.quad	0x4018d4152b0a6fc6              # double 6.2071120000000004
	.quad	0x3fe161198aeb80ed              # double 0.543103
	.quad	0x40233bad18d25edd              # double 9.6165549999999999
	.quad	0x401a00a6fc58ab93              # double 6.5006370000000002
	.quad	0x3fe3417225b749ae              # double 0.60173900000000002
	.quad	0x4013e658c4bd33d3              # double 4.9749480000000004
	.quad	0x4020408bfc2224ee              # double 8.1260680000000001
	.quad	0x3fe181beb18116ec              # double 0.54708800000000002
	.quad	0x3fdd84988094e5d6              # double 0.46121800000000002
	.quad	0x40176833c60029f1              # double 5.8517599999999996
	.quad	0x401d6aa60913a4f8              # double 7.3541489999999996
	.quad	0x3ff693e920c069e8              # double 1.411111
	.quad	0x4018d24f6598e10d              # double 6.205381
	.quad	0x401568e3ef284168              # double 5.3524320000000003
	.quad	0x3ff2261cffeb074a              # double 1.1343049999999999
	.quad	0x400b297bfa4c61d8              # double 3.3952559999999998
	.quad	0x401afc9b41398634              # double 6.7466860000000004
	.quad	0x3fc0f20ea5b530cf              # double 0.132387
	.quad	0x402369d6f112fd33              # double 9.7067180000000004
	.quad	0x3f9da3c21187e7c0              # double 0.028944999999999999
	.quad	0x400c2a02b841248d              # double 3.5205129999999998
	.quad	0x401acec2ce464990              # double 6.7019149999999996
	.quad	0x4014a907d912556d              # double 5.1650689999999999
	.quad	0x4023244827b6fe2e              # double 9.5708629999999992
	.quad	0x401b85f3d7d3910c              # double 6.8808129999999998
	.quad	0x401549b77c02afde              # double 5.3219890000000003
	.quad	0x4019a2af5771001d              # double 6.4088719999999997
	.quad	0x402392d57bc7f77b              # double 9.786785
	.quad	0x400404284dfce315              # double 2.50203
	.quad	0x40040da0168b5cc0              # double 2.506653
	.quad	0x4013ec8216c61523              # double 4.9809650000000003
	.quad	0x3ff10d25edd05293              # double 1.0657099999999999
	.quad	0x401c42f661f18ca0              # double 7.0653930000000003
	.quad	0x4006ab1feeb2d0a2              # double 2.8335569999999999
	.quad	0x40238642bf9830e4              # double 9.7622280000000003
	.quad	0x400a1ccd0fe8ab50              # double 3.2640630000000002
	.quad	0x4001762d83c6c97e              # double 2.1827040000000002
	.quad	0x4003e733ebbfd71b              # double 2.487892
	.quad	0x4015b5436b8f9b13              # double 5.4270149999999999
	.quad	0x4019d63cb8173322              # double 6.4592159999999996
	.quad	0x40039b17481b21c4              # double 2.4507279999999998
	.quad	0x40146ebaf102363b              # double 5.1081349999999999
	.quad	0x400527ca643cc07b              # double 2.6444290000000001
	.quad	0x4016354bcf0b6b6e              # double 5.552047
	.quad	0x4023309528f190d1              # double 9.5948879999999991
	.quad	0x3ffb84284dfce315              # double 1.719765
	.quad	0x4021967d566cf41f              # double 8.7939249999999998
	.quad	0x400665a14488c60d              # double 2.7996240000000001
	.quad	0x401878848387df5d              # double 6.117693
	.quad	0x400a2004b7f5a533              # double 3.2656339999999999
	.quad	0x3fd3d20afa2f05a7              # double 0.309695
	.quad	0x401cd0d413122b7c              # double 7.2039340000000003
	.quad	0x40234a95208e1501              # double 9.6456689999999998
	.quad	0x401ce4a3c64345d0              # double 7.2232810000000001
	.quad	0x4007319e731d2e0e              # double 2.8992279999999999
	.quad	0x4018ba8b08dd1e54              # double 6.1821710000000003
	.quad	0x4015d178f68be2f8              # double 5.4545630000000003
	.quad	0x4016994ee392e1ef              # double 5.6497149999999996
	.quad	0x40124bc664d3bf2f              # double 4.5739989999999997
	.quad	0x4017533acd5b6806              # double 5.8312790000000003
	.quad	0x401cd85e3da2f8be              # double 7.2112970000000001
	.quad	0x401e4baf533f4235              # double 7.5739109999999998
	.quad	0x401b54289118c198              # double 6.8321860000000001
	.quad	0x3fd057e670e2c12b              # double 0.25536500000000001
	.quad	0x3ffd8a6eb91b3f21              # double 1.8462970000000001
	.quad	0x4021e86d938151a4              # double 8.9539609999999996
	.quad	0x401e9e2435696e59              # double 7.6544350000000003
	.quad	0x400e0e503fb37436              # double 3.7569889999999999
	.quad	0x4011392bc2fc6973              # double 4.3058310000000004
	.quad	0x40130e920c069e80              # double 4.7642290000000003
	.quad	0x400e0661ae70c133              # double 3.7531159999999999
	.quad	0x4001b07f23cc8de3              # double 2.2111800000000001
	.quad	0x401599c2c1b10fd8              # double 5.4001570000000001
	.quad	0x4018fcba30121683              # double 6.246804
	.quad	0x4002229bf162ae4b              # double 2.266899
	.quad	0x400241b97353b4b3              # double 2.282092
	.quad	0x400d33b9f127f5e8              # double 3.6502569999999999
	.quad	0x4021c5614df8b157              # double 8.8855079999999997
	.quad	0x40184cb4f1e4b44a              # double 6.0749089999999999
	.quad	0x401741d4738a3b58              # double 5.8142870000000002
	.quad	0x400d719ac79702e6              # double 3.6804709999999998
	.quad	0x40135cb5bb384fd3              # double 4.8405370000000003
	.quad	0x3fe1eb8305d95dd5              # double 0.55999900000000002
	.quad	0x401d6426fe718a87              # double 7.3478050000000001
	.quad	0x400d4fb224aada34              # double 3.6639140000000001
	.quad	0x401a097f62b6ae7d              # double 6.5092749999999997
	.quad	0x3f86a2f48c2e770c              # double 0.011053
	.quad	0x3fe75e5f30e7ff58              # double 0.73026999999999997
	.quad	0x4009265300581494              # double 3.143713
	.quad	0x401699c0ebedfa44              # double 5.65015
	.quad	0x4013c9f94855da27              # double 4.9472399999999999
	.quad	0x3fed64bcad9ad85e              # double 0.918547
	.quad	0x4003095b78cc9a78              # double 2.379569
	.quad	0x400555b573eab368              # double 2.6668500000000002
	.quad	0x3fa702602c9081c3              # double 0.044940000000000001
	.quad	0x3fb3c3e74afd5454              # double 0.077207999999999999
	.quad	0x401af0e2c12ad81b              # double 6.7352400000000001
	.quad	0x400578fc504816f0              # double 2.684075
	.quad	0x40179e685db76b3c              # double 5.9046950000000002
	.quad	0x401b6dc486ad2dcb              # double 6.8571949999999999
	.quad	0x4023892cadddf43c              # double 9.7679189999999991
	.quad	0x40208e00f345069a              # double 8.2773509999999995
	.quad	0x4021199524bfd2e9              # double 8.5499659999999995
	.quad	0x4010bc96cc5fbf83              # double 4.1841689999999998
	.quad	0x40092ba40d90e23b              # double 3.146309
	.quad	0x402136cefed63455              # double 8.6070480000000007
	.quad	0x4023515bbbe878fb              # double 9.6589030000000004
	.quad	0x40159abc947064ed              # double 5.4011100000000001
	.quad	0x401df16a8b8f14db              # double 7.4857579999999996
	.quad	0x4006efe9b7bf1e8e              # double 2.8671449999999998
	.quad	0x3fd5fa871a3b14a9              # double 0.343416
	.quad	0x40153e5796bfca86              # double 5.3108810000000002
	.quad	0x400d8fe3f359ff50              # double 3.6952590000000001
	.quad	0x40172fce3150dae4              # double 5.7966850000000001
	.quad	0x401d11f9acffa7eb              # double 7.2675539999999996
	.quad	0x4019ce2fbe33acd6              # double 6.4513540000000003
	.quad	0x401bf6705c896dd2              # double 6.9906629999999996
	.quad	0x40113d66277c45cc              # double 4.3099600000000002
	.quad	0x401913a9f383f0bb              # double 6.2692030000000001
	.quad	0x402329fc8f32378b              # double 9.5820050000000005
	.quad	0x4014822467be553b              # double 5.1270920000000002
	.quad	0x40150fee6fb4c3c2              # double 5.2655580000000004
	.quad	0x3fde17f4128bf3bf              # double 0.47021200000000002
	.quad	0x40193a62aa19439e              # double 6.3070170000000001
	.quad	0x40214aa8eb463498              # double 8.6458200000000005
	.quad	0x4009714c22ee4192              # double 3.1803210000000002
	.quad	0x4013465b63d3e4ef              # double 4.818708
	.quad	0x4022182afdda8bd2              # double 9.0472029999999997
	.quad	0x40008e89eba6aca8              # double 2.0695990000000002
	.quad	0x3fc877ccc0379314              # double 0.19115599999999999
	.quad	0x4002dae924f227d0              # double 2.3568899999999999
	.quad	0x4013a219a847b246              # double 4.9083009999999998
	.quad	0x4010040bfe3b03e2              # double 4.003952
	.quad	0x4002e00e27e0ef9a              # double 2.3594020000000002
	.quad	0x3ffb1a76d97b30f9              # double 1.6939610000000001
	.quad	0x4009da89b951c5c5              # double 3.2317079999999998
	.quad	0x40231259c065b63d              # double 9.5358409999999995
	.quad	0x3ff4aa7ded6ba8c6              # double 1.2916240000000001
	.quad	0x400173122b7baecd              # double 2.181187
	.quad	0x4006f8d477bbf940              # double 2.871499
	.quad	0x400730bbf50e3476              # double 2.8987959999999999
	.quad	0x4019b48e043a2164              # double 6.426323
	.quad	0x3fe1ea2d2fe3f35a              # double 0.559836
	.quad	0x40117a7f3cf70154              # double 4.3696260000000002
	.quad	0x400c06da4484944f              # double 3.5033460000000001
	.quad	0x402128e8a71de69b              # double 8.5799000000000003
	.quad	0x402050eef1bac2df              # double 8.1580729999999999
	.quad	0x40177638433d6c72              # double 5.8654489999999999
	.quad	0x4013fa3df6db9410              # double 4.9943770000000001
	.quad	0x4023068986fcdee3              # double 9.5127679999999994
	.quad	0x4005bbccaf709b74              # double 2.7166990000000002
	.quad	0x40197b2e9ccb7d41              # double 6.3702949999999996
	.quad	0x400b464ece9a2c67              # double 3.4093300000000002
	.quad	0x40229889c1b54196              # double 9.2979260000000004
	.quad	0x401b8e9468017119              # double 6.8892379999999998
	.quad	0x401094acaff6d331              # double 4.1451900000000004
	.quad	0x3ff4f2c0e7bc3c5c              # double 1.309266
	.quad	0x40092ef1bac2df0d              # double 3.1479219999999999
	.quad	0x4021dc2c5e2cdc01              # double 8.9300259999999998
	.quad	0x3ff28e30446b69db              # double 1.1597139999999999
	.quad	0x40011a9003eea20a              # double 2.1379700000000001
	.quad	0x3fe119f3c70c996b              # double 0.53441799999999995
	.quad	0x401f9bc4d22c881e              # double 7.9021179999999998
	.quad	0x3ffe075f6fd21ff3              # double 1.8768
	.quad	0x40205ecedd484513              # double 8.1851719999999997
	.quad	0x401abe74afd54541              # double 6.6859919999999997
	.quad	0x3ffcb4b838c111ae              # double 1.7941210000000001
	.quad	0x3fbb9170d62bf120              # double 0.10768800000000001
	.quad	0x400eb8b3f63c31df              # double 3.8401869999999998
	.quad	0x401a137a3db3bfb6              # double 6.5190210000000004
	.quad	0x3fea341bfbdf090f              # double 0.81886099999999995
	.quad	0x401874af922962d0              # double 6.1139510000000001
	.quad	0x4022cb024f6598e1              # double 9.3965019999999999
	.quad	0x4021fa9a3d2d87f9              # double 8.9894580000000008
	.quad	0x3ff2020a30db6a1f              # double 1.1254980000000001
	.quad	0x4005784e3ffef391              # double 2.6837430000000002
	.quad	0x400ffb445ed4a1ad              # double 3.9976889999999998
	.quad	0x401713dc054ef45a              # double 5.7693940000000001
	.quad	0x4013149491f2dc2b              # double 4.7700979999999999
	.quad	0x401461a2a4db163c              # double 5.0953470000000003
	.quad	0x401a028954a7f801              # double 6.5024769999999998
	.quad	0x401d194a6eb91b3f              # double 7.2746979999999999
	.quad	0x4021cbc8e25c810a              # double 8.8980169999999994
	.quad	0x401316e47dc37a3e              # double 4.7723560000000003
	.quad	0x3fe0bc947064ecea              # double 0.52302000000000004
	.quad	0x3ff00f40e5a35d68              # double 1.0037240000000001
	.quad	0x4018c145d851654d              # double 6.1887429999999997
	.quad	0x401cb1cd1c7de508              # double 7.1736339999999998
	.quad	0x3ff24f1b25f633ce              # double 1.1443129999999999
	.quad	0x402090c9fb6134ce              # double 8.2827909999999996
	.quad	0x4023a90060780fdc              # double 9.8300809999999998
	.quad	0x402103845564b663              # double 8.506869
	.quad	0x4018e7d9dba908a2              # double 6.2264169999999996
	.quad	0x4021685f28848388              # double 8.7038510000000002
	.quad	0x4020b0b0af5fd47c              # double 8.3450980000000001
	.quad	0x4021f1960fa15db3              # double 8.9718479999999996
	.quad	0x3ffc4d573647baaa              # double 1.7688820000000001
	.quad	0x40238a4f8726d04e              # double 9.7701379999999993
	.quad	0x4001be835dedf1e1              # double 2.2180240000000002
	.quad	0x4012ca6defc7a398              # double 4.6976849999999999
	.quad	0x3fe6ecbd987c6328              # double 0.71639900000000001
	.quad	0x4021938ac18f81e9              # double 8.7881680000000006
	.quad	0x400a57dd00f776c5              # double 3.2929020000000002
	.quad	0x4022d131ec0b5675              # double 9.4085839999999993
	.quad	0x402167ae147ae148              # double 8.7025000000000006
	.quad	0x4020e922fad6cb53              # double 8.4553449999999994
	.quad	0x401f21f4f50a02b8              # double 7.7831609999999997
	.quad	0x3fd57f13059641f6              # double 0.33588099999999999
	.quad	0x40099b09a671ef31              # double 3.2007020000000002
	.quad	0x4013e9973d9ec700              # double 4.978116
	.quad	0x4023e27d028a1dfc              # double 9.9423600000000007
	.quad	0x3ff09cd3e0bd449a              # double 1.0382880000000001
	.quad	0x3ffb3a48301a79ff              # double 1.701729
	.quad	0x3ffef6f19934efcc              # double 1.935289
	.quad	0x40115244a6223e18              # double 4.3303399999999996
	.quad	0x40008f911cf355ce              # double 2.0701010000000002
	.quad	0x40239fdd00f776c5              # double 9.8122330000000008
	.quad	0x401e016ce789e775              # double 7.501392
	.quad	0x4011090e23af31b1              # double 4.2588429999999997
	.quad	0x3ffd8cf0739b024f              # double 1.8469089999999999
	.quad	0x3ff2c20c49ba5e35              # double 1.1723749999999999
	.quad	0x3fdf6c8711d798d9              # double 0.49099900000000002
	.quad	0x40207072b020c49c              # double 8.2196250000000006
	.quad	0x3ff55697f1f9ad00              # double 1.3336410000000001
	.quad	0x3fdbf4f0d844d014              # double 0.43682500000000002
	.quad	0x400cb220ff540896              # double 3.5869770000000001
	.quad	0x401033d29563a9f4              # double 4.0506080000000004
	.quad	0x4009e08aefb2aae3              # double 3.2346400000000002
	.quad	0x40208332ce89656f              # double 8.2562470000000001
	.quad	0x40127ac57e23f24e              # double 4.6198940000000004
	.quad	0x3ffb602a77a2cecd              # double 1.7109780000000001
	.quad	0x40055819d2391d58              # double 2.668018
	.quad	0x40217f08cc575c07              # double 8.7481139999999993
	.quad	0x400e2e032db1e9f2              # double 3.7724669999999998
	.quad	0x4004a94e5d5b24ea              # double 2.5826690000000001
	.quad	0x401fdc779a6b50b1              # double 7.9653
	.quad	0x400a0d8665e02ea9              # double 3.2566039999999998
	.quad	0x40053fee2c98e53f              # double 2.6562160000000001
	.quad	0x401b16833c60029f              # double 6.7719849999999999
	.quad	0x401d3e4712e40853              # double 7.3108180000000003
	.quad	0x3fdf7d49d7ba6699              # double 0.49202200000000001
	.quad	0x3ffa8cd423d9231c              # double 1.6593819999999999
	.quad	0x40127db9841aac54              # double 4.6227780000000003
	.quad	0x4023321fd1569f49              # double 9.5978989999999999
	.quad	0x401940bae89eba6b              # double 6.3132130000000002
	.quad	0x4017e23897204296              # double 5.9709190000000003
	.quad	0x400b31fa333764f1              # double 3.399403
	.quad	0x401214f227d028a2              # double 4.5204550000000001
	.quad	0x401f9cfaeff5c6c1              # double 7.9033009999999999
	.quad	0x400b0cdaf4adbc66              # double 3.3812769999999999
	.quad	0x3f723704790b8499              # double 0.0044470000000000004
	.quad	0x401ba4c8ffb8b264              # double 6.9109230000000004
	.quad	0x4003774ddf86e3b4              # double 2.4332539999999998
	.quad	0x3fe4343b70ef5665              # double 0.63137600000000005
	.quad	0x4015d3df6db940ff              # double 5.4569070000000002
	.quad	0x4013ce43675ddd2b              # double 4.9514290000000001
	.quad	0x3fe2a459103c8e26              # double 0.58256200000000002
	.quad	0x401d9e08f2170931              # double 7.404331
	.quad	0x401ad09246bf0132              # double 6.7036829999999998
	.quad	0x401cee23af31b153              # double 7.232558
	.quad	0x4021e4d8dbcec850              # double 8.9469670000000008
	.quad	0x4010db3b320535ca              # double 4.2140930000000001
	.quad	0x3fdef42fe82517e7              # double 0.48365399999999997
	.quad	0x401077c914b167ec              # double 4.1169779999999996
	.quad	0x40136368f08461fa              # double 4.8470800000000001
	.quad	0x400cc50ce4ead0c4              # double 3.5962160000000001
	.quad	0x3fd44d5d80e496ee              # double 0.317222
	.quad	0x4012713122b7baed              # double 4.6105390000000002
	.quad	0x4022169057d1782d              # double 9.0440699999999996
	.quad	0x402129cdc443914f              # double 8.5816479999999995
	.quad	0x4023f81de2691644              # double 9.9846029999999998
	.quad	0x401d904f6dfc5cdd              # double 7.3909279999999997
	.quad	0x4009637f7be121ee              # double 3.1735829999999998
	.quad	0x4012edcb1465e892              # double 4.7322199999999999
	.quad	0x400ea9b8cb8e086c              # double 3.8328720000000001
	.quad	0x401f4813879c4114              # double 7.8203870000000002
	.quad	0x400d95d13d74d595              # double 3.698153
	.quad	0x40200f37fbefd007              # double 8.0297239999999999
	.quad	0x40103c7192ea52f0              # double 4.0590270000000004
	.quad	0x400ab4dc65c70436              # double 3.338311
	.quad	0x4014b656eefa1e3f              # double 5.1780660000000003
	.quad	0x4022449795b35b0c              # double 9.1339690000000004
	.quad	0x4000fa48301a79ff              # double 2.1222080000000001
	.quad	0x40205768dfbd6a59              # double 8.1707219999999996
	.quad	0x4005856605ee568a              # double 2.6901359999999999
	.quad	0x400808472c0e7bc4              # double 3.0040420000000001
	.quad	0x401ae705c896dd27              # double 6.7256080000000003
	.quad	0x401ca4c1a8ac5c14              # double 7.160895
	.quad	0x4006c940357a3550              # double 2.8482669999999999
	.quad	0x401ed9e236c15d2d              # double 7.7127769999999999
	.quad	0x401abc39ffd60e95              # double 6.6838150000000001
	.quad	0x3fef395e5aff2a17              # double 0.97575299999999998
	.quad	0x40023211cb039ef1              # double 2.274448
	.quad	0x4019075d56f32bdc              # double 6.2571919999999999
	.quad	0x4007723f67f4dbe0              # double 2.9307850000000002
	.quad	0x40204c845132f87b              # double 8.1494470000000003
	.quad	0x4015f9d55e6bc622              # double 5.4939780000000003
	.quad	0x401b8e17e34b9453              # double 6.888763
	.quad	0x4011f8bda9435ac9              # double 4.4929110000000003
	.quad	0x3fe3327cbf6e3f79              # double 0.59991300000000003
	.quad	0x3fff851dabe2717a              # double 1.9699990000000001
	.quad	0x4021995182a9930c              # double 8.7994500000000002
	.quad	0x4014f7b07075b3e1              # double 5.2418839999999998
	.quad	0x40207f164c729f5a              # double 8.2482170000000004
	.quad	0x3ff9aa11ec918e32              # double 1.6040209999999999
	.quad	0x4009f0fa58f7121b              # double 3.2426650000000001
	.quad	0x4022a0d92fb19e73              # double 9.3141569999999998
	.quad	0x3ffe0a42aed13943              # double 1.877505
	.quad	0x4009fb09a671ef31              # double 3.2475770000000002
	.quad	0x4002381626b2f230              # double 2.2773859999999999
	.quad	0x4014116440f23897              # double 5.0169839999999999
	.quad	0x4022dbf6a0dbad3a              # double 9.4296159999999993
	.quad	0x4014aae46cfc829d              # double 5.166887
	.quad	0x40209e86c6583e85              # double 8.3096219999999992
	.quad	0x402299f44d445671              # double 9.3006919999999997
	.quad	0x3ffaf6cacd184c27              # double 1.685252
	.quad	0x400e31ac14c660a2              # double 3.774254
	.quad	0x4021c358afc47e4a              # double 8.8815360000000005
	.quad	0x4020b7b1e18efbb1              # double 8.3587790000000002
	.quad	0x40227e74d1633483              # double 9.2469850000000005
	.quad	0x4023dc5069a4df48              # double 9.930301
	.quad	0x401b6696a26e5471              # double 6.8501839999999996
	.quad	0x3ff828e0c9d9d346              # double 1.5099800000000001
	.quad	0x4023774d1633482c              # double 9.7330100000000001
	.quad	0x401f26a055757d5b              # double 7.7877210000000003
	.quad	0x401d2b2c83ec892b              # double 7.2921620000000003
	.quad	0x4004a93c89f40a28              # double 2.5826349999999998
	.quad	0x40152c968943e100              # double 5.2935429999999997
	.quad	0x40105d9fd36f7e3d              # double 4.0914299999999999
	.quad	0x40093b384fd2a62b              # double 3.1539160000000002
	.quad	0x4002086b59146e4c              # double 2.254111
	.quad	0x401ec13a0c6b484d              # double 7.6886979999999995
	.quad	0x401475536933a040              # double 5.1145759999999996
	.quad	0x3fe52e8e1d6494d5              # double 0.66193299999999999
	.quad	0x402362617c1bda51              # double 9.6921499999999998
	.quad	0x4015d3db3bfb58d1              # double 5.4568909999999997
	.quad	0x4002f5653c9abb02              # double 2.3698220000000001
	.quad	0x401ff9a91105e1c1              # double 7.9938089999999997
	.quad	0x401493f52fc2656b              # double 5.1444900000000002
	.quad	0x3ff82d549731098d              # double 1.5110669999999999
	.quad	0x4003050374ff865d              # double 2.3774479999999998
	.quad	0x401c067f4dbdf8f4              # double 7.0063449999999996
	.quad	0x401eb02ea960b6fa              # double 7.672053
	.quad	0x400baebc408d8ec9              # double 3.4603199999999998
	.quad	0x4004db3e9a6f826f              # double 2.6070530000000001
	.quad	0x40100e4c942d490e              # double 4.0139639999999996
	.quad	0x401a2c304ccee5ac              # double 6.5431530000000002
	.quad	0x4016fb64e054690e              # double 5.7455020000000001
	.quad	0x3fdb2a2c2374794f              # double 0.42444900000000002
	.quad	0x4022b807bbb62414              # double 9.3594340000000002
	.quad	0x401443dc8b86b160              # double 5.0662710000000004
	.quad	0x40001886df82b1f7              # double 2.0119760000000002
	.quad	0x4007590214ad362f              # double 2.9184610000000002
	.quad	0x4023edefc7a39820              # double 9.9647199999999998
	.quad	0x401f7a109d0635a4              # double 7.8692039999999999
	.quad	0x4010f67e414e7ee9              # double 4.2407159999999999
	.quad	0x400052c625e99e95              # double 2.0404170000000001
	.quad	0x400f3a9435ac8a37              # double 3.9036029999999999
	.quad	0x4003694ccab3edd9              # double 2.4264160000000001
	.quad	0x400a73825e13b18e              # double 3.3064010000000001
	.quad	0x40129cce5f7403de              # double 4.6531310000000001
	.quad	0x401d74c985f06f69              # double 7.3640499999999998
	.quad	0x401b2c0724b76f6d              # double 6.7929959999999996
	.quad	0x401d3dba908a265f              # double 7.3102819999999999
	.quad	0x4013114445aa2e3c              # double 4.7668619999999997
	.quad	0x3ff2c8beb5b2d4d4              # double 1.17401
	.quad	0x3fd777ea1c68ec53              # double 0.36669400000000002
	.quad	0x4003ccdd93c46d83              # double 2.4750320000000001
	.quad	0x400e8f8d716d2aa6              # double 3.8200940000000001
	.quad	0x3ffb32862f5989df              # double 1.699835
	.quad	0x4012dd352220bc38              # double 4.7160229999999999
	.quad	0x401af3860999dcb5              # double 6.7378159999999996
	.quad	0x401cb07bfe7e1fc1              # double 7.1723480000000004
	.quad	0x40145973d9ec7000              # double 5.0873559999999998
	.quad	0x402385fa658c4bd3              # double 9.7616759999999995
	.quad	0x40218f7c243dccea              # double 8.7802439999999997
	.quad	0x400c076e1deacc92              # double 3.503628
	.quad	0x3fff30164840e172              # double 1.9492400000000001
	.quad	0x401393df2a9d627c              # double 4.894406
	.quad	0x4020acf80dc33722              # double 8.3378300000000003
	.quad	0x401cf2dba4d6e47e              # double 7.2371660000000002
	.quad	0x402250e8a71de69b              # double 9.1580250000000003
	.quad	0x40216e1e71044f1a              # double 8.7150759999999998
	.quad	0x400f0a79bbadc098              # double 3.880115
	.quad	0x401c2c3ce2089e34              # double 7.0432009999999998
	.quad	0x40163c3dee781840              # double 5.5588300000000004
	.quad	0x40223739085f4a12              # double 9.1078569999999992
	.quad	0x3fe894573a797892              # double 0.76810800000000001
	.quad	0x401bf4fa48301a7a              # double 6.989236
	.quad	0x4004390d173fb7a6              # double 2.527857
	.quad	0x402085f45e0b4e12              # double 8.2616300000000003
	.quad	0x40225a33bd9cae21              # double 9.1761759999999999
	.quad	0x40152f4517614595              # double 5.2961619999999998
	.quad	0x3fdcf8012dfd694d              # double 0.45263700000000001
	.quad	0x402343497b7414a5              # double 9.6314200000000003
	.quad	0x401ff3d790752daa              # double 7.9881270000000004
	.quad	0x401b114cec41dd1a              # double 6.7668949999999999
	.quad	0x3fc72a7bd48cb4af              # double 0.18098400000000001
	.quad	0x400a8dea897635e7              # double 3.3192949999999999
	.quad	0x4020931af3a14cec              # double 8.2873149999999995
	.quad	0x4019876295208e15              # double 6.382212
	.quad	0x40155df266ba493d              # double 5.3417450000000004
	.quad	0x3fb65cd4ed2cbea5              # double 0.087354000000000001
	.quad	0x3ffcda63f9a49c2c              # double 1.803318
	.quad	0x402003486f049a99              # double 8.0064119999999992
	.quad	0x4021d2415f45e0b5              # double 8.9106550000000002
	.quad	0x401b08b08dd1e53b              # double 6.7584860000000004
	.quad	0x3ffc7a8b4bf8fcd6              # double 1.7799179999999999
	.quad	0x4020e4da9003eea2              # double 8.4469799999999999
	.quad	0x3ff0eb67c286f8ad              # double 1.057472
	.quad	0x40207ed2ed783dff              # double 8.2477029999999996
	.quad	0x401ab0ae536501e2              # double 6.6725399999999997
	.quad	0x401a21b79d909f1f              # double 6.5329269999999999
	.quad	0x3fe67a1a0cf1800a              # double 0.70240499999999995
	.quad	0x4009546d3f9e7b81              # double 3.1662240000000001
	.quad	0x401a53e29307af21              # double 6.5819190000000001
	.quad	0x4016b694898f605b              # double 5.6783010000000003
	.quad	0x4023a5462c343b71              # double 9.8228010000000001
	.quad	0x4001d2a1f8e3ac0c              # double 2.2278479999999998
	.quad	0x3ffe7e878fabda0e              # double 1.905891
	.quad	0x40071c73eee52589              # double 2.8888929999999999
	.quad	0x3ff5da059a73b42d              # double 1.3657280000000001
	.quad	0x3fffa187a4a48f97              # double 1.976936
	.quad	0x4015a7985271bcdc              # double 5.4136670000000002
	.quad	0x400933764f11b60b              # double 3.150128
	.quad	0x401529cdc443914f              # double 5.2908239999999997
	.quad	0x40185d99029ae4f3              # double 6.0914039999999998
	.quad	0x402338ee8d10f51b              # double 9.6111950000000003
	.quad	0x4020ee63a5c1c609              # double 8.4656040000000008
	.quad	0x4004bddb1209edc0              # double 2.5927030000000002
	.quad	0x400f6ec39799e519              # double 3.929084
	.quad	0x40222b00bcbe61d0              # double 9.08399
	.quad	0x402035f0f5a1016d              # double 8.1053540000000002
	.quad	0x401825ebb7739f34              # double 6.037032
	.quad	0x401be045fe111277              # double 6.969017
	.quad	0x40168d288ce703b0              # double 5.6378500000000003
	.quad	0x3feda75ab7dc7ac0              # double 0.92667900000000003
	.quad	0x40239b90c9107faa              # double 9.803839
	.quad	0x40007f10667f90da              # double 2.0620430000000001
	.quad	0x401b842070b8cfc0              # double 6.8790300000000002
	.quad	0x400d5cc9ea9a3d2e              # double 3.6703070000000002
	.quad	0x3ffc1feb8d823422              # double 1.7577929999999999
	.quad	0x401d841e9af5ba2c              # double 7.3790230000000001
	.quad	0x4019d9f3c70c996b              # double 6.4628439999999996
	.quad	0x402350b4e11dbca9              # double 9.6576299999999992
	.quad	0x400d099bf5946c33              # double 3.6296919999999999
	.quad	0x400f92e05ccc89b1              # double 3.946717
	.quad	0x40059e15ca6ca03c              # double 2.7021899999999999
	.quad	0x4007df1b69121251              # double 2.9839389999999999
	.quad	0x4021ebc87db2b346              # double 8.9605139999999999
	.quad	0x3fccfe8ab4fa4830              # double 0.226518
	.quad	0x4012ca8ef77f27fe              # double 4.6978109999999997
	.quad	0x3fc5590c0ad03d9b              # double 0.16678000000000001
	.quad	0x40208753a3ec02f3              # double 8.26431
	.quad	0x40176f7d73c92578              # double 5.8588769999999997
	.quad	0x4015a3d4280ae105              # double 5.4099890000000004
	.quad	0x401e7ec13b9f127f              # double 7.6237839999999996
	.quad	0x3ff90c39ffd60e95              # double 1.565485
	.quad	0x3ff3fcdab191dde3              # double 1.2492319999999999
	.quad	0x40032cd8dbcec850              # double 2.3968980000000002
	.quad	0x3ff9afba01eeed89              # double 1.605402
	.quad	0x3fc4d530489d27c4              # double 0.16275600000000001
	.quad	0x4000ba4f00ef1349              # double 2.0909710000000001
	.quad	0x4014f95af294dd72              # double 5.2435109999999998
	.quad	0x40194f9f01b866e4              # double 6.3277549999999998
	.quad	0x3fd432a8c9b84556              # double 0.31559199999999998
	.quad	0x40008005c4651f3f              # double 2.0625110000000002
	.quad	0x3ffdc0d90e23af32              # double 1.8595820000000001
	.quad	0x4018d52ac753e708              # double 6.2081710000000001
	.quad	0x4013fbaecd07852f              # double 4.9957839999999996
	.quad	0x3ff693e3e29307af              # double 1.411106
	.quad	0x4014d99f5dfeb8d8              # double 5.2125219999999999
	.quad	0x401ee923e5b8561d              # double 7.7276759999999997
	.quad	0x3fa3934699418506              # double 0.038233000000000003
	.quad	0x401a6e1b4bb5e0f8              # double 6.607526
	.quad	0x4023aa6506141637              # double 9.8328019999999991
	.quad	0x40051079e59f2baa              # double 2.6330450000000001
	.quad	0x401564d22c881e47              # double 5.3484579999999999
	.quad	0x4006918548a9bcfd              # double 2.8210549999999999
	.quad	0x4015eb14ec204f2b              # double 5.4795720000000001
	.quad	0x401cf30f8c64fdb1              # double 7.2373640000000004
	.quad	0x40238320535c9e67              # double 9.7561060000000008
	.quad	0x3ff5dab191dde376              # double 1.3658920000000001
	.quad	0x400b6e432441fea8              # double 3.428839
	.quad	0x401b8cf0739b024f              # double 6.8876359999999996
	.quad	0x40215aa2e3c536d6              # double 8.6770239999999994
	.quad	0x3ff273fb7a5f41af              # double 1.153316
	.quad	0x4008f8fcd67fd3f6              # double 3.1215760000000001
	.quad	0x3fe78e432441fea8              # double 0.73611599999999999
	.quad	0x401f9efe4ffc9796              # double 7.9052670000000003
	.quad	0x402316ed6777079e              # double 9.5447799999999994
	.quad	0x3fe8438088509bfa              # double 0.75824000000000003
	.quad	0x400c5c62a1b5c7ce              # double 3.5451100000000002
	.quad	0x401ff38583621fb0              # double 7.9878140000000002
	.quad	0x400e5260f5e41d4b              # double 3.7902239999999998
	.quad	0x401701af7d30ad47              # double 5.751646
	.quad	0x4010e896dd26b724              # double 4.2271380000000001
	.quad	0x400832e62131a8ef              # double 3.0248529999999998
	.quad	0x3ff456db0dd82fd7              # double 1.2712049999999999
	.quad	0x400f93836a832b99              # double 3.947028
	.quad	0x400461847f562175              # double 2.5476160000000001
	.quad	0x3ff5edb0dd82fd76              # double 1.37053
	.quad	0x40239be920c069e8              # double 9.804513
	.quad	0x4015d63992c8c500              # double 5.4592039999999997
	.quad	0x4018b568a50507a7              # double 6.1771570000000002
	.quad	0x3fb7d816aceaaf36              # double 0.093141000000000001
	.quad	0x401bac90c4dec1c2              # double 6.9185210000000001
	.quad	0x40139c6ac215b9a6              # double 4.9027510000000003
	.quad	0x4021b073bc903ea7              # double 8.844633
	.quad	0x40104a109d0635a4              # double 4.0723289999999999
	.quad	0x400bb4983d790753              # double 3.4631810000000001
	.quad	0x401d2cffa7eb6bf4              # double 7.2939439999999998
	.quad	0x401b1625e99e94ab              # double 6.7716289999999999
	.quad	0x401fb5aaf78feef6              # double 7.9274100000000001
	.quad	0x3fff88abd5dc4007              # double 1.9708669999999999
	.quad	0x3fe2586ec17ebaf1              # double 0.573295
	.quad	0x4022a2af9a8cdea0              # double 9.3177459999999996
	.quad	0x3fe9a9f9ce8d972d              # double 0.80199900000000002
	.quad	0x401e1f562174c4ce              # double 7.530602
	.quad	0x3fec12e62131a8ef              # double 0.87730699999999995
	.quad	0x400d5ad080b673c5              # double 3.669343
	.quad	0x3fd926a22b3892ef              # double 0.39298300000000003
	.quad	0x3ff96db50f40e5a3              # double 1.5892839999999999
	.quad	0x3fef7bfe7e1fc090              # double 0.98388600000000004
	.quad	0x402346c7863beec4              # double 9.6382410000000007
	.quad	0x401dc5ab3aabcd79              # double 7.4430360000000002
	.quad	0x4009fe236c15d2d0              # double 3.249091
	.quad	0x400f7c88e79aae6d              # double 3.9358080000000002
	.quad	0x401655cd0bb6ed67              # double 5.5837899999999996
	.quad	0x400da17ebaf10236              # double 3.7038549999999999
	.quad	0x400c250ce4ead0c4              # double 3.5180910000000001
	.quad	0x4010d502ababead5              # double 4.208018
	.quad	0x40214b91f70de8f7              # double 8.6475980000000003
	.quad	0x40112b52007dd441              # double 4.2923049999999998
	.quad	0x3ff218b827fa1a0d              # double 1.131035
	.quad	0x40162a619da9c993              # double 5.5413880000000004
	.quad	0x400f2d6451b93038              # double 3.8971640000000001
	.quad	0x3ff9e3db3bfb58d1              # double 1.6181289999999999
	.quad	0x4017a81beb18116f              # double 5.9141690000000002
	.quad	0x40210c6887a8d64d              # double 8.5242349999999991
	.quad	0x3fef96249a133c1d              # double 0.98707800000000001
	.quad	0x40010d0b30b5aa71              # double 2.1313689999999998
	.quad	0x401c7c16df3f9618              # double 7.121181
	.quad	0x4011f22af5771002              # double 4.4864920000000001
	.quad	0x3fe9c182ecaeea64              # double 0.80487200000000003
	.quad	0x4013252b4d8ba40e              # double 4.7862980000000004
	.quad	0x3ff3bb60285ec3db              # double 1.2332460000000001
	.quad	0x40226ca46e08f217              # double 9.2121919999999999
	.quad	0x401141b3f20a73f7              # double 4.3141629999999997
	.quad	0x40102d6dc1a47a9e              # double 4.0443639999999998
	.quad	0x4023cdc486ad2dcb              # double 9.9018899999999998
	.quad	0x3ff2a075f6fd21ff              # double 1.164175
	.quad	0x4022f6e58a32f449              # double 9.4822199999999998
	.quad	0x40190554b8bef8cf              # double 6.2552060000000003
	.quad	0x401084070329802c              # double 4.128933
	.quad	0x400e4181e03f7058              # double 3.7819859999999998
	.quad	0x3ff8b6fc158fb43e              # double 1.5446740000000001
	.quad	0x3ffab9e16d6dc1a4              # double 1.6703809999999999
	.quad	0x400484dca8e2e2b9              # double 2.5648740000000001
	.quad	0x3fff9882adc4c9c9              # double 1.974734
	.quad	0x4022b246173b85e8              # double 9.3481909999999999
	.quad	0x40225c5803cd141a              # double 9.1803589999999993
	.quad	0x4008851b93037d63              # double 3.064994
	.quad	0x401d4c69728a6117              # double 7.3246209999999996
	.quad	0x4013ceb356da0169              # double 4.9518560000000003
	.quad	0x4021928155d5f56a              # double 8.7861429999999991
	.quad	0x400cf2b0a6fc58ac              # double 3.6185010000000002
	.quad	0x4013dfe1975f2cb6              # double 4.9686339999999998
	.quad	0x4010445c78a6dacb              # double 4.0667590000000002
	.quad	0x4022f3d48cb4aec9              # double 9.4762310000000002
	.quad	0x3fd76f262888b546              # double 0.36615900000000001
	.quad	0x402257c6fbd273d6              # double 9.1714400000000005
	.quad	0x40201d31769a9110              # double 8.0570179999999993
	.quad	0x400df184c271fff8              # double 3.7429290000000002
	.quad	0x401622b51bd61f5c              # double 5.5338940000000001
	.quad	0x3ffe9d82fd75e204              # double 1.9134549999999999
	.quad	0x4005771865519371              # double 2.6831520000000002
	.quad	0x40131ee49f51697f              # double 4.7801689999999999
	.quad	0x400010995aaf78ff              # double 2.008105
	.quad	0x3ff0ad71f36262cc              # double 1.0423450000000001
	.quad	0x4003529c347e8cce              # double 2.4153370000000001
	.quad	0x3fe1e2f5989df117              # double 0.55895499999999998
	.quad	0x4021fce65bea0ba2              # double 8.9939450000000001
	.quad	0x401b848b220791c5              # double 6.8794370000000002
	.quad	0x3fd8b63d3e4ef028              # double 0.38612299999999999
	.quad	0x401f41693c03bc4d              # double 7.8138779999999998
	.quad	0x40047f4e4430b179              # double 2.5621610000000001
	.quad	0x4017a219eb6390c9              # double 5.9083019999999999
	.quad	0x3fe3b8d1d8a54824              # double 0.61631100000000005
	.quad	0x4020caf01754b05b              # double 8.3963629999999991
	.quad	0x3fdf37fbefd00714              # double 0.487792
	.quad	0x3fff49cd3e0bd44a              # double 1.9555180000000001
	.quad	0x401834484944ed70              # double 6.0510570000000001
	.quad	0x401102f48c2e770c              # double 4.2528860000000002
	.quad	0x4023640c4156e265              # double 9.6954060000000001
	.quad	0x3fe4421c044284e0              # double 0.63307000000000002
	.quad	0x402098b5cbff4773              # double 8.2982619999999994
	.quad	0x4009f038e29f9ce9              # double 3.2422960000000001
	.quad	0x400e1c115df6555c              # double 3.7637049999999999
	.quad	0x4017c63cfb3311a5              # double 5.9435919999999998
	.quad	0x3ff9775a74c09c3d              # double 1.591639
	.quad	0x4009e11a11233df3              # double 3.2349130000000001
	.quad	0x401e03315d701d9f              # double 7.5031179999999997
	.quad	0x40211a5f202107b8              # double 8.5515070000000009
	.quad	0x4011778f68be2f7b              # double 4.3667579999999999
	.quad	0x4007f93b3a68b19a              # double 2.9966949999999999
	.quad	0x401df8b934699418              # double 7.4928939999999997
	.quad	0x40212127913e8145              # double 8.5647549999999999
	.quad	0x3fd8228134480629              # double 0.377106
	.quad	0x400d23fb3743632c              # double 3.6425689999999999
	.quad	0x4009105a708ede55              # double 3.1329850000000001
	.quad	0x400146f156191149              # double 2.15964
	.quad	0x400143947496aad2              # double 2.1579980000000001
	.quad	0x401dbbcdfefbf402              # double 7.4334030000000002
	.quad	0x4016fd68c692f6e8              # double 5.7474699999999999
	.quad	0x40221ab063e07a29              # double 9.0521270000000005
	.quad	0x3fd0b4e54f7a9197              # double 0.26104100000000002
	.quad	0x400ab61565c2d278              # double 3.338908
	.quad	0x4021f474d9c6b053              # double 8.9774539999999998
	.quad	0x4011374c4cdfaca3              # double 4.3040019999999997
	.quad	0x3fda13836a832b99              # double 0.407441
	.quad	0x401884d983947497              # double 6.1297360000000003
	.quad	0x4021428f7db6e504              # double 8.630001
	.quad	0x3ffb91569f490603              # double 1.7229829999999999
	.quad	0x401f68bef8ceb357              # double 7.8522910000000001
	.quad	0x401fe1f70de8f6cf              # double 7.970669
	.quad	0x401cc718eb895076              # double 7.1944309999999998
	.quad	0x4021504816f0068e              # double 8.6568000000000005
	.quad	0x402078ee28672757              # double 8.2361920000000008
	.quad	0x400b438f36694899              # double 3.407988
	.quad	0x40111cb35f3d7d39              # double 4.2780279999999999
	.quad	0x4003da37ef5a964f              # double 2.4815520000000002
	.quad	0x4016e790752da986              # double 5.7261369999999996
	.quad	0x401c6557de0d66f1              # double 7.0989680000000002
	.quad	0x3ffa48e15011904b              # double 1.6427929999999999
	.quad	0x4008ddd095af294e              # double 3.1083080000000001
	.quad	0x401307b2cc70867b              # double 4.7575180000000001
	.quad	0x4014255bccaf709b              # double 5.0364829999999996
	.quad	0x40210a00e27e0efa              # double 8.5195380000000007
	.quad	0x40094a5375c8d9f9              # double 3.161292
	.quad	0x40162f7d30ad46f6              # double 5.5463760000000004
	.quad	0x400ce5da6a444178              # double 3.6122329999999998
	.quad	0x3fe9bdfb0d51f81a              # double 0.80444099999999996
	.quad	0x4023b9103c8e25c8              # double 9.8614519999999998
	.quad	0x401f07646ae3a3a9              # double 7.757219
	.quad	0x402002d5e071c53f              # double 8.0055379999999996
	.quad	0x3ffd426edaa92e62              # double 1.828719
	.quad	0x401262a9930be0df              # double 4.5963500000000002
	.quad	0x40201defe9318762              # double 8.0584710000000008
	.quad	0x401640ecb74ddf87              # double 5.5634030000000001
	.quad	0x40017084e831ad21              # double 2.1799409999999999
	.quad	0x3ffbf219220ff541              # double 1.7466060000000001
	.quad	0x40066642396073de              # double 2.7999309999999999
	.quad	0x401e1121ab4b72c5              # double 7.5167299999999999
	.quad	0x401dbf09528f190d              # double 7.4365589999999999
	.quad	0x40098bc382a12f90              # double 3.193244
	.quad	0x40132f41aef6f8f0              # double 4.7961489999999998
	.quad	0x3fed43bb40b34e77              # double 0.91451800000000005
	.quad	0x4023eeba0620ab71              # double 9.9662629999999996
	.quad	0x3ff47192ea52ef91              # double 1.277728
	.quad	0x401ddff69014b59a              # double 7.4687140000000003
	.quad	0x3ffbcf0739b024f6              # double 1.7380439999999999
	.quad	0x3fafbbf93ff25e57              # double 0.061981000000000001
	.quad	0x4016b7e73a365cb3              # double 5.6795929999999997
	.quad	0x4002a1db877ab325              # double 2.3290320000000002
	.quad	0x3fe06553ac4f7ec3              # double 0.51236899999999996
	.quad	0x4022cac0e7bc3c5c              # double 9.3960030000000003
	.quad	0x40122798958d9b5f              # double 4.5386680000000004
	.quad	0x401e6de1198aeb81              # double 7.607304
	.quad	0x401ec73cd573647c              # double 7.6945680000000003
	.quad	0x4011c280ae104923              # double 4.4399439999999997
	.quad	0x402284d9a52263d8              # double 9.2594729999999998
	.quad	0x3ff9ca5accd53049              # double 1.6119030000000001
	.quad	0x401160af1cb89d6b              # double 4.3444180000000001
	.quad	0x4023a53aa369fcf4              # double 9.8227130000000002
	.quad	0x400f0ccf6be37de9              # double 3.8812549999999999
	.quad	0x401cb78811b1d92b              # double 7.1792299999999996
	.quad	0x4001fd97f62b6ae8              # double 2.2488250000000001
	.quad	0x4021b875f6fd21ff              # double 8.8602749999999997
	.quad	0x402252c68a936c59              # double 9.1616710000000001
	.quad	0x4022f685db76b3bc              # double 9.4814900000000008
	.quad	0x40086af1455219a8              # double 3.0522179999999999
	.quad	0x401f322ff08893b8              # double 7.7990110000000001
	.quad	0x401adaa3f034b0e2              # double 6.7135160000000003
	.quad	0x401c8a2339c0ebee              # double 7.1349
	.quad	0x401d6a39c51dabe2              # double 7.3537359999999996
	.quad	0x4010038b04ab606b              # double 4.0034599999999996
	.quad	0x4022f9c90c4dec1c              # double 9.4878619999999997
	.quad	0x40100116a8b8f14e              # double 4.0010630000000003
	.quad	0x4009d1e646f15619              # double 3.22749
	.quad	0x401020f5a1016ce8              # double 4.0321870000000004
	.quad	0x402117a80cf9e386              # double 8.5462039999999995
	.quad	0x401b8eb80ecfa69c              # double 6.8893740000000001
	.quad	0x4010d4473cd57364              # double 4.2073029999999996
	.quad	0x4023232a27f1b691              # double 9.5686809999999997
	.quad	0x4023a291d9b1b79e              # double 9.8175190000000008
	.quad	0x4019bf7ad4b2745c              # double 6.436992
	.quad	0x3ff0000a7c5ac472              # double 1.0000100000000001
	.quad	0x40201b07f23cc8de              # double 8.0527949999999997
	.quad	0x4012c78a6dacabc5              # double 4.6948639999999999
	.quad	0x4014937585be1a82              # double 5.1440029999999997
	.quad	0x3ff65314445aa2e4              # double 1.3952830000000001
	.quad	0x3ff4a830a0b1bbcf              # double 1.2910619999999999
	.quad	0x3ff019eb6390c910              # double 1.0063279999999999
	.quad	0x40206644d87724fb              # double 8.1997440000000008
	.quad	0x3fd91e3a7daa4fca              # double 0.39246999999999999
	.quad	0x401e0111f0c34c1b              # double 7.5010450000000004
	.quad	0x40186d4e8fb00bcc              # double 6.1067450000000001
	.quad	0x3ff66396073de1e3              # double 1.399313
	.quad	0x4009c2b40f66a551              # double 3.2200700000000002
	.quad	0x3fc952d234eb9a17              # double 0.19783999999999999
	.quad	0x3fe09ba5e353f7cf              # double 0.51900000000000002
	.quad	0x4023b0de8f6cefed              # double 9.8454479999999993
	.quad	0x4006115592d98bf8              # double 2.758464
	.quad	0x40214a60b2c83ec9              # double 8.6452690000000008
	.quad	0x40162d50225742dd              # double 5.544251
	.quad	0x40068adcd2d44dcb              # double 2.8178040000000002
	.quad	0x40224d5fbb517a46              # double 9.1511209999999998
	.quad	0x3fead4ae429e0a42              # double 0.83846200000000004
	.quad	0x402210cb8e086bdf              # double 9.0328029999999995
	.quad	0x401dbb97785729b3              # double 7.4331950000000004
	.quad	0x4017a4b407032980              # double 5.9108429999999998
	.quad	0x4011681908e581cf              # double 4.3516579999999996
	.quad	0x3fe081626b2f2303              # double 0.51579399999999997
	.quad	0x400771a75cd0bb6f              # double 2.9304950000000001
	.quad	0x401fbb634dad31fd              # double 7.9329960000000001
	.quad	0x4019d7d2c7b890d6              # double 6.4607650000000003
	.quad	0x40088f5ec80c73ac              # double 3.0700050000000001
	.quad	0x3fe66601bc98a223              # double 0.69995200000000002
	.quad	0x401cc2d01c0ca601              # double 7.1902470000000003
	.quad	0x3fe56a098915bdd7              # double 0.66919399999999996
	.quad	0x3fdea1b1960fa15e              # double 0.47861900000000002
	.quad	0x4012088e368f0846              # double 4.5083549999999999
	.quad	0x40208f5f91600f34              # double 8.2800259999999994
	.quad	0x3ff9dc087442c7fc              # double 1.6162190000000001
	.quad	0x4021af3ffac1d29e              # double 8.8422850000000004
	.quad	0x4015a92ee84ad795              # double 5.4152180000000003
	.quad	0x401a34185058dde8              # double 6.5508740000000003
	.quad	0x402211b34a44c7b0              # double 9.0345709999999997
	.quad	0x3fdb0724b76f6d76              # double 0.42231099999999999
	.quad	0x400895e8d5410f95              # double 3.0731980000000001
	.quad	0x40052892253111f1              # double 2.6448100000000001
	.quad	0x40186af4f0d844d0              # double 6.1044499999999999
	.quad	0x40039163baba7b91              # double 2.4459909999999998
	.quad	0x400398c08b75ea68              # double 2.449586
	.quad	0x3ff91796bfca85cb              # double 1.5682590000000001
	.quad	0x401c9ebb341e14be              # double 7.155011
	.quad	0x40120e7a743a6480              # double 4.5141390000000001
	.quad	0x401759aa60913a50              # double 5.8375640000000004
	.quad	0x4016c642bf9830e4              # double 5.6936140000000002
	.quad	0x4009a3361565c2d2              # double 3.2046929999999998
	.quad	0x3fde3343fa2ad3e9              # double 0.47187899999999999
	.quad	0x402273bea91d9b1b              # double 9.2260639999999992
	.quad	0x3fec3e468cac4b4d              # double 0.882602
	.quad	0x3fe41526d8b1dd5d              # double 0.62758199999999997
	.quad	0x401216c2efd438d2              # double 4.5222280000000001
	.quad	0x401e616872b020c5              # double 7.5951250000000003
	.quad	0x3ffd29717df19d67              # double 1.8226180000000001
	.quad	0x401f934dad31fcd2              # double 7.8938509999999997
	.quad	0x4019525aee631f8a              # double 6.330425
	.quad	0x40206e6dbd72bcb6              # double 8.215681
	.quad	0x4022dccc25072086              # double 9.4312450000000005
	.quad	0x40235f952d234eba              # double 9.6866850000000007
	.quad	0x4016afec13b9f128              # double 5.671799
	.quad	0x4017602a3486f04a              # double 5.8439110000000003
	.quad	0x401b20bd87b56b87              # double 6.7819729999999998
	.quad	0x401fc4bad7d7c2ca              # double 7.9421189999999999
	.quad	0x40215469d7342edc              # double 8.6648700000000005
	.quad	0x400b575fb2edfe76              # double 3.4176630000000001
	.quad	0x40004a19c9d5a188              # double 2.0361820000000002
	.quad	0x40214cc1ca3a4b55              # double 8.6499159999999993
	.quad	0x401cf672756861e9              # double 7.2406709999999999
	.quad	0x3ff728af81626b2f              # double 1.447433
	.quad	0x3ff751eeaa6d2674              # double 1.457503
	.quad	0x400e5d74d594f26b              # double 3.795633
	.quad	0x4022f69142b302f7              # double 9.4815769999999996
	.quad	0x4022b9709310129d              # double 9.3621870000000004
	.quad	0x4018f1105e1c1509              # double 6.2354139999999996
	.quad	0x4006c32ca57a786c              # double 2.8452999999999999
	.quad	0x401e71422ccb3a26              # double 7.6106040000000004
	.quad	0x40100a133c1ce6c1              # double 4.0098390000000004
	.quad	0x3ff88cdd93c46d83              # double 1.5343910000000001
	.quad	0x4018fd31337eb28e              # double 6.2472580000000004
	.quad	0x3fefad3c792d1288              # double 0.98989700000000002
	.quad	0x40237db9c7368ad7              # double 9.7455580000000008
	.quad	0x3fe10b8066c2acb8              # double 0.53265399999999996
	.quad	0x4007b40b34e7685a              # double 2.9629120000000002
	.quad	0x4014f59ab6d00b46              # double 5.2398480000000003
	.quad	0x40106b2c83ec892b              # double 4.1046620000000003
	.quad	0x4022efa2f05a708f              # double 9.4680400000000002
	.quad	0x4014e202539756c9              # double 5.2207119999999998
	.quad	0x40170cebbba55d1c              # double 5.7626179999999998
	.quad	0x401a30d6f544bb1b              # double 6.547695
	.quad	0x40165e160d887ebf              # double 5.5918809999999999
	.quad	0x40114455eaee2004              # double 4.3167340000000003
	.quad	0x401f707af20ea5b5              # double 7.8598439999999998
	.quad	0x401ba4677b395c42              # double 6.9105509999999999
	.quad	0x4014d7c957cd466f              # double 5.2107289999999997
	.quad	0x402238d0edc3bd5a              # double 9.1109690000000008
	.quad	0x401158d25edd0529              # double 4.3367399999999998
	.quad	0x4014c3f4a98aa865              # double 5.1913629999999999
	.quad	0x4013f70a3d70a3d7              # double 4.99125
	.quad	0x4007d69a0ad8a116              # double 2.9797859999999998
	.quad	0x3ff19d0a67620ee9              # double 1.10084
	.quad	0x3fde8140dd3fe197              # double 0.47663899999999998
	.quad	0x401e2381d7dbf488              # double 7.534675
	.quad	0x401cf98c7e28240b              # double 7.2436999999999996
	.quad	0x401513a7daa4fca4              # double 5.2691949999999999
	.quad	0x4012e56084a515cf              # double 4.7240010000000003
	.quad	0x3ff4c0bbb1f255f3              # double 1.2970539999999999
	.quad	0x40061d60e94ee393              # double 2.7643450000000001
	.quad	0x400d558afc47e49b              # double 3.6667689999999999
	.quad	0x401031c970f7b9e0              # double 4.0486199999999997
	.quad	0x401b63eea209aaa4              # double 6.8475900000000003
	.quad	0x40186bba55d1c3ad              # double 6.1052030000000004
	.quad	0x400be8cbd1244a62              # double 3.4886699999999999
	.quad	0x401938c3b0c4588a              # double 6.305434
	.quad	0x401b9320d9945b6c              # double 6.8936799999999998
	.quad	0x3fe2836a832b990b              # double 0.578542
	.quad	0x40221ae81882adc5              # double 9.0525520000000004
	.quad	0x400540f2becedd48              # double 2.6567129999999999
	.quad	0x3fe07e21d96e9bbf              # double 0.51539699999999999
	.quad	0x4022e38433d6c722              # double 9.4443680000000008
	.quad	0x401a54c271fff79d              # double 6.5827730000000004
	.quad	0x40146bb2788db057              # double 5.1051729999999997
	.quad	0x4017e75f2cb64170              # double 5.975949
	.quad	0x3feb37995ee136e7              # double 0.85053699999999999
	.quad	0x3ffff5e84f09528f              # double 1.997536
	.quad	0x4019ec68ec52a412              # double 6.4808690000000002
	.quad	0x4011285058dde7a7              # double 4.2893689999999998
	.quad	0x400220ce0b912dba              # double 2.2660179999999999
	.quad	0x4015d528ae74f2f1              # double 5.4581629999999999
	.quad	0x4015fb37c99ae925              # double 5.49533
	.quad	0x400667192ea52ef9              # double 2.800341
	.quad	0x3fe68e3476295209              # double 0.70485900000000001
	.quad	0x401d67521144cbe2              # double 7.3508990000000001
	.quad	0x3ffe96084a515cea              # double 1.911629
	.quad	0x401c108fa7a85016              # double 7.0161730000000002
	.quad	0x3feb3d2fa0d77b7c              # double 0.85121899999999994
	.quad	0x400c327d45a5fc7e              # double 3.5246529999999998
	.quad	0x401bca159817b95a              # double 6.9473479999999999
	.quad	0x4016183621fafc8b              # double 5.523644
	.quad	0x4004ec9d16fc9bc7              # double 2.6155339999999998
	.quad	0x401f447f562174c5              # double 7.8168920000000001
	.quad	0x3ff89802c0a4a05e              # double 1.537112
	.quad	0x4012ea554b8bef8d              # double 4.7288410000000001
	.quad	0x4004d2b3cc4ac6ce              # double 2.6028820000000001
	.quad	0x40200ab3aabcd78c              # double 8.0209019999999995
	.quad	0x4001b50331e3a7db              # double 2.2133850000000002
	.quad	0x400036598e10cf5b              # double 2.026538
	.quad	0x3fc26195464dc22b              # double 0.14360300000000001
	.quad	0x4003faccd530489d              # double 2.4974609999999999
	.quad	0x3fe4814b599aa609              # double 0.64078299999999999
	.quad	0x4005c02e2328f9f4              # double 2.7188379999999999
	.quad	0x3fe23461309c7ffe              # double 0.56889400000000001
	.quad	0x40134fcc5b8dc550              # double 4.827928
	.quad	0x400e8282c6ef3d3a              # double 3.8137259999999999
	.quad	0x4019e9613d31b9b6              # double 6.4779099999999996
	.quad	0x402266b4a66559f7              # double 9.2005970000000001
	.quad	0x40195f8f041461b7              # double 6.3433190000000002
	.quad	0x401a57d24180d3d0              # double 6.585763
	.quad	0x401e8ce5b4245f5b              # double 7.6375950000000001
	.quad	0x400a4af9a8cdea03              # double 3.2866089999999999
	.quad	0x3fef204af922962d              # double 0.972692
	.quad	0x3fc7f51697f1f9ad              # double 0.187167
	.quad	0x40174863beec397a              # double 5.8206930000000003
	.quad	0x4021e0a5269595ff              # double 8.9387600000000003
	.quad	0x4022b6e696a26e54              # double 9.3572279999999992
	.quad	0x4008d58b827fa1a1              # double 3.1042700000000001
	.quad	0x400e46cd29131ec1              # double 3.7845710000000001
	.quad	0x400e6dec1c1d6cf8              # double 3.8036729999999999
	.quad	0x401a2336deb95e5b              # double 6.534389
	.quad	0x400dd0092ccf6be3              # double 3.7265799999999998
	.quad	0x4023cd8f92af9a8d              # double 9.9014860000000002
	.quad	0x401efccee5abc0e4              # double 7.7468830000000004
	.quad	0x400234b72c5197a2              # double 2.2757399999999999
	.quad	0x401706a444178705              # double 5.7564859999999998
	.quad	0x401829b52007dd44              # double 6.0407299999999999
	.quad	0x401993a4f8726d05              # double 6.3941840000000001
	.quad	0x40207cdd72367e41              # double 8.2438769999999995
	.quad	0x40101822bbecaab9              # double 4.0235700000000003
	.quad	0x4015dc21187e7c07              # double 5.4649700000000001
	.quad	0x40150c6b484d76ab              # double 5.2621279999999997
	.quad	0x401cf6f32bdc26dd              # double 7.2411620000000001
	.quad	0x3fd850d2806af46b              # double 0.37993300000000002
	.quad	0x4020a73d3a1d3240              # double 8.3266390000000001
	.quad	0x400114ff0025bfad              # double 2.1352519999999999
	.quad	0x4014e450268900c5              # double 5.2229619999999999
	.quad	0x4016e408d8ec95c0              # double 5.7226900000000001
	.quad	0x3fdfad5bee3d5fdd              # double 0.49495600000000001
	.quad	0x400d2b838c111ada              # double 3.6462469999999998
	.quad	0x4022aaad3e920c07              # double 9.3333530000000007
	.quad	0x40177bb44e50c5eb              # double 5.8708049999999998
	.quad	0x4001b662fdfc19c1              # double 2.2140559999999998
	.quad	0x3ffa7215fcc1871e              # double 1.6528529999999999
	.quad	0x401a439bcba30121              # double 6.5660239999999996
	.quad	0x3fc3040bfe3b03e2              # double 0.148561
	.quad	0x40204d3415b1422d              # double 8.1507880000000004
	.quad	0x401c78e3ac0c62e5              # double 7.1180560000000002
	.quad	0x4020037585be1a82              # double 8.0067559999999993
	.quad	0x400f7463cfb3311a              # double 3.9318309999999999
	.quad	0x40218d48a9bcfd4c              # double 8.7759450000000001
	.quad	0x400cb68405b39e28              # double 3.5891190000000002
	.quad	0x4014b58c4bd33d29              # double 5.1772929999999997
	.quad	0x400fd8a19c9d5a18              # double 3.9807769999999998
	.quad	0x401a15610adcd2d4              # double 6.5208779999999997
	.quad	0x4017a99fa11a975b              # double 5.915648
	.quad	0x40237650c5eb313c              # double 9.7310850000000002
	.quad	0x4023f2630ec31162              # double 9.9734119999999997
	.quad	0x3ffd0e8533b10774              # double 1.8160449999999999
	.quad	0x401c62b841248d7e              # double 7.096406
	.quad	0x4014baf7d30ad46f              # double 5.1825859999999997
	.quad	0x4008c16f86a09891              # double 3.0944509999999998
	.quad	0x4020791ea78af3e4              # double 8.2365619999999992
	.quad	0x401cddc981beb181              # double 7.2165889999999999
	.quad	0x400f83c7d5ed06ff              # double 3.939346
	.quad	0x40113a1fd1569f49              # double 4.306762
	.quad	0x4005356c0d6f544c              # double 2.6510850000000001
	.quad	0x4015a9806f262889              # double 5.4155290000000003
	.quad	0x401cf606748e4756              # double 7.240259
	.quad	0x3fe7483a96d4c33b              # double 0.72756699999999996
	.quad	0x4021fa8650e77920              # double 8.9893059999999991
	.quad	0x3fcea25529fe004b              # double 0.23932899999999999
	.quad	0x4022f114d2f5dbba              # double 9.4708620000000003
	.quad	0x401fdee6fb4c3c19              # double 7.9676780000000002
	.quad	0x401b94851a869403              # double 6.8950389999999997
	.quad	0x40226dff1d81f106              # double 9.2148369999999993
	.quad	0x4004255219a847b2              # double 2.5182229999999999
	.quad	0x3ff1cfadf2ecf206              # double 1.1132029999999999
	.quad	0x40227c9a9973d9ec              # double 9.2433669999999992
	.quad	0x400d33a365cb35f4              # double 3.6502140000000001
	.quad	0x3fdde3da2f8bdec6              # double 0.467032
	.quad	0x40143f9096bb98c8              # double 5.0620750000000001
	.quad	0x3ff20705425f2021              # double 1.126714
	.quad	0x400bf8548a9bcfd5              # double 3.4962550000000001
	.quad	0x40122892ab68cef6              # double 4.5396219999999996
	.quad	0x4020c9fc08fa7a85              # double 8.394501
	.quad	0x3ff0a133c1ce6c09              # double 1.0393559999999999
	.quad	0x4019b4712e40852b              # double 6.4262129999999997
	.quad	0x40239de19fc2a887              # double 9.8083620000000006
	.quad	0x4022f3d3804534bd              # double 9.4762229999999991
	.quad	0x40197e468cac4b4d              # double 6.373316
	.quad	0x401480b28522ea10              # double 5.1256810000000002
	.quad	0x400749f9ce8d972d              # double 2.9111210000000001
	.quad	0x401cc6573215fcc2              # double 7.1936920000000004
	.quad	0x3fd3087442c7fbad              # double 0.29739100000000002
	.quad	0x402319437c5692b4              # double 9.5493430000000003
	.quad	0x4016679bbadc0981              # double 5.6011800000000003
	.quad	0x401f3bb7f9d6f113              # double 7.808319
	.quad	0x401269c94f69ca9f              # double 4.603307
	.quad	0x40079f3519bd4068              # double 2.9527380000000001
	.quad	0x40229457e23f24d9              # double 9.289733
	.quad	0x4022e7a3db3bfb59              # double 9.4524220000000003
	.quad	0x40141bdd334c5da7              # double 5.0272110000000003
	.quad	0x4018d58298cc1440              # double 6.2085059999999999
	.quad	0x4022da1c25d07421              # double 9.4259959999999995
	.quad	0x4011d66a11ec918e              # double 4.4593889999999998
	.quad	0x3ff6085e3da2f8be              # double 1.377043
	.quad	0x3fd47c2ca148ba84              # double 0.320079
	.quad	0x3ff27c903ea704bc              # double 1.155411
	.quad	0x4022aaa6d2674081              # double 9.333304
	.quad	0x3fe10a915379fa98              # double 0.53254000000000001
	.quad	0x3fdaf2ba9d1f6018              # double 0.42106500000000002
	.quad	0x4010de13f4a98aa8              # double 4.2168729999999996
	.quad	0x400fba027525460b              # double 3.9658250000000002
	.quad	0x401abda5daf07bfe              # double 6.6852029999999996
	.quad	0x400b5e4de3b8a19d              # double 3.4210470000000002
	.quad	0x400ad702602c9082              # double 3.3549850000000001
	.quad	0x40106e492bc2fc69              # double 4.1077009999999996
	.quad	0x401696c4827b6fe3              # double 5.6472340000000001
	.quad	0x4007a9b738e6d15b              # double 2.9578690000000001
	.quad	0x400b44e69f05ea25              # double 3.4086430000000001
	.quad	0x40072b1572580c31              # double 2.8960370000000002
	.quad	0x3fe4d24e160d887f              # double 0.65067200000000003
	.quad	0x3ff008fc9363f573              # double 1.002194
	.quad	0x4020490ecb74ddf8              # double 8.1426909999999992
	.quad	0x4011f26e115592da              # double 4.4867480000000004
	.quad	0x4022288919ef954f              # double 9.0791710000000005
	.quad	0x4022e56451b93038              # double 9.4480310000000002
	.quad	0x4019aa4db163baba              # double 6.4163119999999996
	.quad	0x40231dc03361565c              # double 9.5581069999999996
	.quad	0x402065e9185cee18              # double 8.1990440000000007
	.quad	0x4013daf709b738e7              # double 4.9638330000000002
	.quad	0x40205bfc43b2dd37              # double 8.1796589999999991
	.quad	0x401b32b7baecd078              # double 6.7995289999999997
	.quad	0x400fdf950b955f78              # double 3.9841709999999999
	.quad	0x4016839c94f69caa              # double 5.6285270000000001
	.quad	0x401a9b0d0edc3bd6              # double 6.6514170000000004
	.quad	0x40160b2e9ccb7d41              # double 5.5109199999999996
	.quad	0x4022c73eee525892              # double 9.3891519999999993
	.quad	0x40228e9ff0cbaf96              # double 9.2785639999999994
	.quad	0x4003d0cbaf965b21              # double 2.4769510000000001
	.quad	0x401d7fc32ebe596d              # double 7.3747680000000004
	.quad	0x4015d9c5e6ff7dfa              # double 5.462669
	.quad	0x40232506fef7c244              # double 9.5723190000000002
	.quad	0x3ff8a6fe718a86d7              # double 1.54077
	.quad	0x401db543f1c75819              # double 7.4270170000000002
	.quad	0x4005969a0ad8a116              # double 2.6985359999999998
	.quad	0x400ab03d145d8516              # double 3.3360539999999999
	.quad	0x40073de5082cf52c              # double 2.9052220000000002
	.quad	0x4004e6b7aa25d8d8              # double 2.6126550000000002
	.quad	0x4012f4f3fd933e36              # double 4.7392120000000002
	.quad	0x40031821af7d30ad              # double 2.3867829999999999
	.quad	0x40239d28f190d174              # double 9.806953
	.quad	0x401af0c282c6ef3d              # double 6.7351169999999998
	.quad	0x4022afd6f9767903              # double 9.3434369999999998
	.quad	0x402129e236c15d2d              # double 8.581804
	.quad	0x3feb052934acaff7              # double 0.84438000000000002
	.quad	0x3ffaa6f1dc50ce4f              # double 1.6657580000000001
	.quad	0x400fba94bbe4473d              # double 3.9661040000000001
	.quad	0x400002cd39da1661              # double 2.0013679999999998
	.quad	0x401858da7f3cf701              # double 6.0867709999999997
	.quad	0x3fff54855da27286              # double 1.958135
	.quad	0x402002478854cdb8              # double 8.0044520000000006
	.quad	0x3fe8b3b7521144cc              # double 0.77193800000000001
	.quad	0x400e3aade657b84e              # double 3.7786520000000001
	.quad	0x4020168858ff7597              # double 8.0440090000000009
	.quad	0x401678d10f51ac9b              # double 5.617985
	.quad	0x400a6fb762d83c6d              # double 3.3045490000000002
	.quad	0x40173d9945b6c376              # double 5.810155
	.quad	0x402056a033e78e19              # double 8.1691909999999996
	.quad	0x401a3d1e53a81dc1              # double 6.5596860000000001
	.quad	0x3ff186759ab6d00b              # double 1.0953269999999999
	.quad	0x4000514e3bcd35a8              # double 2.0396999999999998
	.quad	0x401918be7296f651              # double 6.2741639999999999
	.quad	0x40229b5b4edb2f66              # double 9.3034309999999998
	.quad	0x3fdac84f8f8a4c1f              # double 0.41847600000000001
	.quad	0x3fe1182a9930be0e              # double 0.53420000000000001
	.quad	0x401a5574b407032a              # double 6.5834530000000004
	.quad	0x4021c0f0c77dd873              # double 8.8768370000000001
	.quad	0x3fef4e18266772d6              # double 0.97828300000000001
	.quad	0x40213fbb0e5e6794              # double 8.6244739999999993
	.quad	0x4018c20bc382a130              # double 6.1894980000000004
	.quad	0x3ffbb2c40d0aaa7e              # double 1.731144
	.quad	0x4023911904b3c3e7              # double 9.7833939999999994
	.quad	0x40234516db0dd830              # double 9.6349400000000003
	.quad	0x40040da4484944ed              # double 2.5066609999999998
	.quad	0x401679ced0b30b5b              # double 5.6189530000000003
	.quad	0x4020e0826aa8eb46              # double 8.4384949999999996
	.quad	0x40235885f4a1272d              # double 9.6728970000000007
	.quad	0x3fdcc9f72f76e610              # double 0.44982699999999998
	.quad	0x400aa9203a322af5              # double 3.3325809999999998
	.quad	0x40130ed17c5ef630              # double 4.7644710000000003
	.quad	0x40074ccc46950fc7              # double 2.9124989999999999
	.quad	0x4011353ef6b5d463              # double 4.3019980000000002
	.quad	0x3fdccdfaca361998              # double 0.45007200000000003
	.quad	0x4016ef8db4890929              # double 5.7339390000000003
	.quad	0x3fd59d7fd82773e2              # double 0.33773799999999998
	.quad	0x40201da9435ac8a3              # double 8.0579319999999992
	.quad	0x4016c589acbc8c0d              # double 5.6929080000000001
	.quad	0x4022047192ea52f0              # double 9.0086790000000008
	.quad	0x40132c8216c61523              # double 4.7934650000000003
	.quad	0x4013d87980f55de6              # double 4.9614010000000004
	.quad	0x4023e5e8f6cefed6              # double 9.9490429999999996
	.quad	0x3ffc470fbeb9e493              # double 1.7673490000000001
	.quad	0x4021e4da9003eea2              # double 8.9469799999999999
	.quad	0x401579f94855da27              # double 5.3691149999999999
	.quad	0x4023badd590c0ad0              # double 9.8649699999999996
	.quad	0x401ec199fe43675e              # double 7.6890640000000001
	.quad	0x4019a262cba732df              # double 6.4085799999999997
	.quad	0x401cb84230fcf80e              # double 7.1799400000000002
	.quad	0x3fe63940fecdd0d9              # double 0.69448900000000002
	.quad	0x401cd5454152b0a7              # double 7.208272
	.quad	0x4018fa9c560c7c0f              # double 6.2447369999999998
	.quad	0x3fdf6ae7d566cf42              # double 0.4909
	.quad	0x3ffca698bb4d4888              # double 1.790673
	.quad	0x400e0a67620ee8d1              # double 3.75508
	.quad	0x400821d084e831ad              # double 3.0165109999999999
	.quad	0x402143dee78183f9              # double 8.6325599999999998
	.quad	0x4010e454152b0a70              # double 4.2229770000000002
	.quad	0x3fff153ef6b5d463              # double 1.9426870000000001
	.quad	0x4010f2923e5b8562              # double 4.2368860000000002
	.quad	0x40207afcefaa4767              # double 8.2402110000000004
	.quad	0x401d0b11409a2403              # double 7.2608079999999999
	.quad	0x401140029f16b11c              # double 4.3125099999999996
	.quad	0x4023b586876e1deb              # double 9.8545420000000003
	.quad	0x400e873de1e2de87              # double 3.816036
	.quad	0x4014eb7132724313              # double 5.2299239999999996
	.quad	0x401cf45176145953              # double 7.2385919999999997
	.quad	0x40230c864883fd50              # double 9.5244619999999998
	.quad	0x40209517a46173b8              # double 8.2911959999999993
	.quad	0x3feb10c4dec1c1d7              # double 0.84579700000000002
	.quad	0x40168620ab713272              # double 5.6309839999999998
	.quad	0x4023e5a2b5a20ddc              # double 9.9485069999999993
	.quad	0x40003b1b79d909f2              # double 2.028861
	.quad	0x4003cb6d00b45ae6              # double 2.474329
	.quad	0x3fde2fdb8fde2ef5              # double 0.47167100000000001
	.quad	0x401c1d413122b7bb              # double 7.0285690000000001
	.quad	0x400791372a38b8ae              # double 2.9459059999999999
	.quad	0x4018f671ac14c661              # double 6.2406680000000003
	.quad	0x3fd7becedd484513              # double 0.37102099999999999
	.quad	0x4020af2c7325918a              # double 8.342136
	.quad	0x401f9855da272863              # double 7.898765
	.quad	0x401b61e108c3f3e0              # double 6.8455849999999998
	.quad	0x3fe0a86b59146e4c              # double 0.52055899999999999
	.quad	0x4012a02a3486f04a              # double 4.6564110000000003
	.quad	0x400ed66f0cfe1544              # double 3.8547039999999999
	.quad	0x401be9e0a41a261c              # double 6.978396
	.quad	0x4013920f2becedd5              # double 4.8926360000000004
	.quad	0x4020f44e7253da73              # double 8.4771610000000006
	.quad	0x401a2e71476af89c              # double 6.5453539999999997
	.quad	0x4020020be5109071              # double 8.003997
	.quad	0x400cada4484944ed              # double 3.5847859999999998
	.quad	0x401b274538ef34d7              # double 6.7883500000000003
	.quad	0x4015dd07c84b5dcc              # double 5.4658499999999997
	.quad	0x401ba107746887a9              # double 6.9072550000000001
	.quad	0x3ffc6a9717df19d6              # double 1.7760229999999999
	.quad	0x4003cb5f5f0b2852              # double 2.4743029999999999
	.quad	0x40016806290eed03              # double 2.1757930000000001
	.quad	0x40049cf1c3265ade              # double 2.5766330000000002
	.quad	0x3f998958d9b5e95b              # double 0.024937999999999998
	.quad	0x40229d9791819d24              # double 9.3077970000000007
	.quad	0x4007e9abb01c92de              # double 2.9890970000000001
	.quad	0x401d60b7c3504c49              # double 7.3444510000000003
	.quad	0x401a08f47304039b              # double 6.5087450000000002
	.quad	0x4020357f51efb6dd              # double 8.1044870000000007
	.quad	0x4015629670196d8f              # double 5.3462769999999997
	.quad	0x400be405b39e279e              # double 3.4863390000000001
	.quad	0x40149ed84d338f7a              # double 5.1551220000000004
	.quad	0x401ad297bfa4c61e              # double 6.7056570000000004
	.quad	0x400952a62aa1943a              # double 3.1653560000000001
	.quad	0x400469a9973d9ec7              # double 2.551593
	.quad	0x40217e0008637bd0              # double 8.7460939999999994
	.quad	0x4017e9e1f3a57eaa              # double 5.9784009999999999
	.quad	0x3ff9b10667f90d9d              # double 1.6057189999999999
	.quad	0x40093d640e9d51b5              # double 3.154976
	.quad	0x3fdd997c3d68405b              # double 0.46249299999999999
	.quad	0x401dbcfc829cfdd2              # double 7.4345569999999999
	.quad	0x4017ef2734f82f51              # double 5.9835479999999999
	.quad	0x401e7cd39da16617              # double 7.6219010000000002
	.quad	0x40033286b59146e5              # double 2.3996710000000001
	.quad	0x4020465aff2a172b              # double 8.1374130000000005
	.quad	0x4019f0589acbc8c1              # double 6.4847130000000002
	.quad	0x401382c59fb1e18f              # double 4.877707
	.quad	0x4016468c692f6e83              # double 5.5688950000000004
	.quad	0x4009dd6adf71eaff              # double 3.233114
	.quad	0x40021c864883fd50              # double 2.2639279999999999
	.quad	0x40103b5e529bae47              # double 4.0579770000000002
	.quad	0x40140e2de8709742              # double 5.0138470000000002
	.quad	0x40146f82f5126634              # double 5.1088979999999999
	.quad	0x4018f756c93a7115              # double 6.2415419999999999
	.quad	0x4001e5ffa3b9ae0c              # double 2.237304
	.quad	0x3ffb9d712a0ec743              # double 1.725938
	.quad	0x401f8d616f86a099              # double 7.8880670000000003
	.quad	0x40233a7d24180d3d              # double 9.614236
	.quad	0x4015706a2b1704ff              # double 5.3597799999999998
	.quad	0x401b9fe79ee02a78              # double 6.9061570000000003
	.quad	0x4020bff4dbdf8f47              # double 8.3749149999999997
	.quad	0x400110b84988094e              # double 2.1331639999999998
	.quad	0x4018a26b2f23033a              # double 6.1586119999999998
	.quad	0x4020335a20ddc619              # double 8.1002969999999994
	.quad	0x4019b1afc04c8bca              # double 6.4235220000000002
	.quad	0x40079059641f6449              # double 2.9454829999999999
	.quad	0x40179c9bc7714339              # double 5.9029379999999998
	.quad	0x3fef9a0cf1800a7c              # double 0.98755499999999996
	.quad	0x3faaf6837f7be122              # double 0.052662
	.quad	0x4005b886df82b1f7              # double 2.7151010000000002
	.quad	0x401c34373f316e37              # double 7.0509919999999999
	.quad	0x401e4f4491298890              # double 7.5774100000000004
	.quad	0x401d4106ab14ec20              # double 7.3135019999999997
	.quad	0x40157c2c5e2cdc01              # double 5.3712629999999999
	.quad	0x3ff92605ee568a50              # double 1.5717829999999999
	.quad	0x3ffafc9363f572de              # double 1.6866639999999999
	.quad	0x401f8acabc515486              # double 7.8855389999999996
	.quad	0x4005a452c59fb1e2              # double 2.7052360000000002
	.quad	0x401b715831f03d14              # double 6.8606879999999997
	.quad	0x401ad2a62aa1943a              # double 6.7057120000000001
	.quad	0x40239b8dc55000c9              # double 9.8038159999999994
	.quad	0x401e77e77d523b36              # double 7.6170939999999998
	.quad	0x401aab24e9c45458              # double 6.6671329999999998
	.quad	0x401917e0ef99806f              # double 6.2733189999999999
	.quad	0x401208d6909aed57              # double 4.5086310000000003
	.quad	0x4003c76534373f31              # double 2.4723609999999998
	.quad	0x4017e47735c182ed              # double 5.9731110000000003
	.quad	0x3fe0e9185cee17a0              # double 0.52845399999999998
	.quad	0x3ff4c01c4fc1df33              # double 1.296902
	.quad	0x3fed176145953587              # double 0.90910400000000002
	.quad	0x40185f1cfbb94962              # double 6.0928839999999997
	.quad	0x400effb3fa6defc8              # double 3.8748550000000002
	.quad	0x4011ad9e40c8472c              # double 4.4195489999999999
	.quad	0x4020998b93469942              # double 8.2998930000000009
	.quad	0x3ffa48d1958969a1              # double 1.6427780000000001
	.quad	0x400c957eed45e918              # double 3.5729959999999998
	.quad	0x4017ea20ddc61954              # double 5.9786409999999997
	.quad	0x401a6fab53d640ea              # double 6.6090520000000001
	.quad	0x40172ee4e26d4802              # double 5.795795
	.quad	0x4010860a63305101              # double 4.1308990000000003
	.quad	0x3fe0d4a5df2239e7              # double 0.52595800000000004
	.quad	0x401db09dcf893faf              # double 7.4224769999999998
	.quad	0x3fe230d73860999e              # double 0.56846200000000002
	.quad	0x40019da72a7bd48d              # double 2.2019790000000001
	.quad	0x400634ff865d7cb3              # double 2.7758780000000001
	.quad	0x4011b4bcf0b6b6e1              # double 4.4265020000000002
	.quad	0x4016c4f765fd8adb              # double 5.6923500000000002
	.quad	0x3ffbfd3f5b5fa227              # double 1.749328
	.quad	0x40223b897204295a              # double 9.1162829999999992
	.quad	0x40215a66dbd72bcb              # double 8.6765659999999993
	.quad	0x401ec51ac9afe1da              # double 7.6924849999999996
	.quad	0x4021cb3e5753a3ec              # double 8.8969599999999999
	.quad	0x4020178b1572580c              # double 8.0459829999999996
	.quad	0x402399c7de5082cf              # double 9.8003529999999994
	.quad	0x4015e5c209246bf0              # double 5.4743729999999999
	.quad	0x401d58ec0f883340              # double 7.3368380000000002
	.quad	0x3fecfb6fe2e6ea85              # double 0.90569299999999997
	.quad	0x4021522a6f3f52fc              # double 8.6604799999999997
	.quad	0x4007113b5bf6a0dc              # double 2.8834140000000001
	.quad	0x400e260cbf2b239a              # double 3.7685789999999999
	.quad	0x3fe234549b62c775              # double 0.56888799999999995
	.quad	0x4006f0a02b841249              # double 2.8674930000000001
	.quad	0x4014ba6e75ff609e              # double 5.1820620000000002
	.quad	0x4021532bba98eda2              # double 8.6624429999999997
	.quad	0x40217edbd72bcb60              # double 8.7477710000000002
	.quad	0x3ffb1fa871a3b14b              # double 1.6952290000000001
	.quad	0x3fdf10c2c5e2cdc0              # double 0.485398
	.quad	0x40117563ed0f6274              # double 4.3646390000000004
	.quad	0x4021ce8f6cefed63              # double 8.9034379999999995
	.quad	0x40040425aee631f9              # double 2.5020250000000002
	.quad	0x40171a044ae85b9f              # double 5.7754070000000004
	.quad	0x400a5a9da597d49d              # double 3.2942459999999998
	.quad	0x401797ccc0379314              # double 5.8982419999999998
	.quad	0x3ff722b5a20ddc62              # double 1.4459740000000001
	.quad	0x40189bb4d48882f1              # double 6.1520570000000001
	.quad	0x3feb574b40703298              # double 0.854406
	.quad	0x401b140e1719f7f9              # double 6.7695850000000002
	.quad	0x4014ca187a4a48f9              # double 5.1973589999999996
	.quad	0x3ff7ccea28fe260b              # double 1.487528
	.quad	0x402048ed3d859c8d              # double 8.1424350000000008
	.quad	0x40016958537e2c56              # double 2.1764380000000001
	.quad	0x3ff0f10cb295e9e2              # double 1.0588500000000001
	.quad	0x3fe3c56f75d9a0f1              # double 0.61785100000000004
	.quad	0x3ffc267b5f1bef4a              # double 1.759395
	.quad	0x4021fe4adff822bc              # double 8.9966650000000001
	.quad	0x4021ae3baba7b917              # double 8.8402989999999999
	.quad	0x3fd24a276b7ed41b              # double 0.28577599999999997
	.quad	0x4015527807789a46              # double 5.3305360000000004
	.quad	0x4020a8ae31d712a1              # double 8.3294540000000001
	.quad	0x3fe48fc504816f00              # double 0.64254999999999995
	.quad	0x40234339e279dd3c              # double 9.6313010000000005
	.quad	0x401baab96f21f6cb              # double 6.9167230000000002
	.quad	0x4006dc23315d701e              # double 2.8574890000000002
	.quad	0x3fcec532a497fa5d              # double 0.240393
	.quad	0x401bb16a8b8f14db              # double 6.9232579999999997
	.quad	0x40146b2b3461309c              # double 5.1046569999999996
	.quad	0x3ff15a469d7342ee              # double 1.0845400000000001
	.quad	0x400c3d851654d61b              # double 3.5300389999999999
	.quad	0x3ff525269595feda              # double 1.3215699999999999
	.quad	0x3fe92085b18548aa              # double 0.78522000000000003
	.quad	0x4022d185271bcdbc              # double 9.4092190000000002
	.quad	0x4023b177a7008a69              # double 9.8466159999999991
	.quad	0x401d2c521dda059a              # double 7.2932819999999996
	.quad	0x400f1103c8e25c81              # double 3.883308
	.quad	0x401db4bc27631b58              # double 7.4264989999999997
	.quad	0x4004f302f72b4528              # double 2.6186579999999999
	.quad	0x40084ab4fa48301a              # double 3.0364779999999998
	.quad	0x4019aad3e920c06a              # double 6.4168240000000001
	.quad	0x4009ad41b75a74c1              # double 3.2095980000000002
	.quad	0x4005eb0c88a47ed0              # double 2.73977
	.quad	0x400b150a02b84125              # double 3.3852730000000002
	.quad	0x400cd4256bca5376              # double 3.6035870000000001
	.quad	0x4006b709310129cc              # double 2.8393730000000001
	.quad	0x4004b590c0ad03da              # double 2.5886550000000002
	.quad	0x3ff5621101b00368              # double 1.3364419999999999
	.quad	0x40124c829cfdd228              # double 4.5747169999999997
	.quad	0x4019fb5c39bcba30              # double 6.4954689999999999
	.quad	0x40219ae2b8c75c4b              # double 8.8025110000000009
	.quad	0x4020a80f776c4828              # double 8.3282430000000005
	.quad	0x4004d4d834091c08              # double 2.6039279999999998
	.quad	0x3ffd19806f262889              # double 1.8187260000000001
	.quad	0x400f06a65cf67b1c              # double 3.878247
	.quad	0x4018de518f3eccc4              # double 6.2171079999999996
	.quad	0x4021cec764adff82              # double 8.9038649999999997
	.quad	0x3fff2698bb4d4888              # double 1.946923
	.quad	0x3fef1c4113c68662              # double 0.97219900000000004
	.quad	0x401476d0917d6b66              # double 5.1160300000000003
	.quad	0x401b5538ac18f81f              # double 6.8332240000000004
	.quad	0x4022ba1a2e7f6f4c              # double 9.3634810000000001
	.quad	0x40199318fc504817              # double 6.3936500000000001
	.quad	0x3fe0b19c5a3e39f7              # double 0.52168099999999995
	.quad	0x400fd47f13059642              # double 3.978758
	.quad	0x3ffd208e15011905              # double 1.8204480000000001
	.quad	0x40107288051c9f73              # double 4.111847
	.quad	0x40147f79420b3d4b              # double 5.1244860000000001
	.quad	0x3fe3b111f0c34c1b              # double 0.61536500000000005
	.quad	0x3f78a76102795704              # double 0.006019
	.quad	0x4023520945f9df55              # double 9.6602270000000007
	.quad	0x3ff408637bd05af7              # double 1.252048
	.quad	0x401924b1ee243569              # double 6.2858349999999996
	.quad	0x40153cc2938de6de              # double 5.3093360000000001
	.quad	0x40165ba387592535              # double 5.5894909999999998
	.quad	0x401b1e3821af7d31              # double 6.7795110000000003
	.quad	0x4021ee63c74fb54a              # double 8.965605
	.quad	0x40110d1d4738a3b5              # double 4.2628069999999996
	.quad	0x40200b31a08bfc22              # double 8.0218629999999997
	.quad	0x400b7b927d45a5fc              # double 3.4353379999999998
	.quad	0x402242c215b9a5a9              # double 9.1303870000000007
	.quad	0x4011c741d084e832              # double 4.4445870000000003
	.quad	0x4005263b688bda94              # double 2.6436679999999999
	.quad	0x4019a6ca46e08f21              # double 6.4128809999999996
	.quad	0x4022ce5c4eb56fb9              # double 9.403048
	.quad	0x401cb0dae3e6c4c6              # double 7.1727100000000004
	.quad	0x400ff4bdfd2630ec              # double 3.9945029999999999
	.quad	0x401b352deca2552a              # double 6.801933
	.quad	0x401f09b17481b21c              # double 7.7594659999999998
	.quad	0x40206771a7e30878              # double 8.2020389999999992
	.quad	0x4022ff6837f7be12              # double 9.4988419999999998
	.quad	0x3fff8e5b4245f5ae              # double 1.9722550000000001
	.quad	0x3ff2f31d2e0e3044              # double 1.1843539999999999
	.quad	0x402125caf2d7f951              # double 8.5738140000000005
	.quad	0x4015023033a4723b              # double 5.2521370000000003
	.quad	0x400c0ff08893b7d8              # double 3.5077829999999999
	.quad	0x4016ff8ca8198f1d              # double 5.7495599999999998
	.quad	0x400652873bc903ea              # double 2.7902969999999998
	.quad	0x40192cb89d6adf72              # double 6.2936730000000001
	.quad	0x40227432ebe596c8              # double 9.2269509999999996
	.quad	0x4011e98d477bbf94              # double 4.478078
	.quad	0x3ff427e0ef99806f              # double 1.259736
	.quad	0x3ff5bfe8ee6b8306              # double 1.359353
	.quad	0x3fd5dfeb8d823422              # double 0.34179199999999998
	.quad	0x4005a690de093533              # double 2.706331
	.quad	0x4023c4842fa50939              # double 9.8838209999999993
	.quad	0x400286bce8533b10              # double 2.3157899999999998
	.quad	0x401bc5ed8d36b4c8              # double 6.943289
	.quad	0x3ffdd068986fcdee              # double 1.863381
	.quad	0x3feec6cfc829cfdd              # double 0.96176899999999998
	.quad	0x40215422ab25b318              # double 8.6643270000000001
	.quad	0x401f907182235b4f              # double 7.8910580000000001
	.quad	0x4022ee1d4306e5cd              # double 9.4650669999999994
	.quad	0x402319884c6a3bde              # double 9.549868
	.quad	0x40223911276fb092              # double 9.111459
	.quad	0x401848b11409a240              # double 6.0709879999999998
	.quad	0x4013d868fd199bb2              # double 4.9613379999999996
	.quad	0x401010b5675579af              # double 4.0163169999999999
	.quad	0x3fea3671ac14c661              # double 0.81914600000000004
	.quad	0x40149d5885d31338              # double 5.1536580000000001
	.quad	0x40119e7967caea74              # double 4.4047599999999996
	.quad	0x3fe65a8deb0fadf3              # double 0.69855400000000001
	.quad	0x3fd580c73abc9470              # double 0.33598499999999998
	.quad	0x400a74ab1d4f9c20              # double 3.3069670000000002
	.quad	0x4022ac49fd7a13c2              # double 9.3365019999999994
	.quad	0x401ff04534bd76ee              # double 7.9846389999999996
	.quad	0x3fc1e37de939eadd              # double 0.13975499999999999
	.quad	0x401ce245b291b824              # double 7.2209690000000002
	.quad	0x40201d24bfd2e947              # double 8.0569210000000009
	.quad	0x40186532a497fa5d              # double 6.0988259999999999
	.quad	0x40174638c9752978              # double 5.8185760000000002
	.quad	0x4011f704bc27631b              # double 4.4912289999999997
	.quad	0x4019133269df97ab              # double 6.2687470000000003
	.quad	0x40046fa58f7121ab              # double 2.5545149999999999
	.quad	0x3fbcede54b48d3ae              # double 0.11300499999999999
	.quad	0x40204be09bb6aa4c              # double 8.1481980000000007
	.quad	0x4006bb5d894812be              # double 2.8414869999999999
	.quad	0x401767e996312f4d              # double 5.851477
	.quad	0x400bcd4a1ad6451c              # double 3.4752390000000002
	.quad	0x4002d81a5870da5e              # double 2.3555190000000001
	.quad	0x401f5364388ebcc7              # double 7.8314370000000002
	.quad	0x3fc58ac18f81e8a3              # double 0.168297
	.quad	0x400fefc9363f572e              # double 3.992083
	.quad	0x401f77507e9d94d1              # double 7.8665180000000001
	.quad	0x401582cfd8f0c77e              # double 5.3777460000000001
	.quad	0x4023b5f3300de4c5              # double 9.8553709999999998
	.quad	0x402206c204f2ae08              # double 9.0131990000000002
	.quad	0x40223f56861e9292              # double 9.1237069999999996
	.quad	0x400fc0fb224aada3              # double 3.9692289999999999
	.quad	0x4001c32e3821af7d              # double 2.2203029999999999
	.quad	0x3fcf102bc72e275b              # double 0.24268100000000001
	.quad	0x400a1b6e503fb374              # double 3.2633939999999999
	.quad	0x3ff32e7c49fd7a14              # double 1.1988490000000001
	.quad	0x400a2c07aaef2c73              # double 3.2714989999999999
	.quad	0x3fff2771c970f7ba              # double 1.94713
	.quad	0x401cf81c714fce74              # double 7.2422959999999996
	.quad	0x4008d8854cdb7ae5              # double 3.1057229999999998
	.quad	0x40189165d3996fa8              # double 6.1419899999999998
	.quad	0x401e12730c671690              # double 7.5180170000000004
	.quad	0x4021b89f1f14983d              # double 8.8605889999999992
	.quad	0x4010f958d9b5e95b              # double 4.2435029999999996
	.quad	0x3ff6a8d10f51ac9b              # double 1.416215
	.quad	0x401b49f4906034f4              # double 6.822222
	.quad	0x3fd21f42bb6672fc              # double 0.28315800000000002
	.quad	0x401cfdbd2fa0d77b              # double 7.2477919999999996
	.quad	0x401a7647fdc5931d              # double 6.6155090000000003
	.quad	0x401c72e3821af7d3              # double 7.112196
	.quad	0x3fe2542c3c9eecc0              # double 0.57277500000000003
	.quad	0x3f4c6088d6d3b6cc              # double 8.6600000000000002E-4
	.quad	0x40103a82a5614df9              # double 4.0571390000000003
	.quad	0x3ff6dc38b04ab607              # double 1.4287650000000001
	.quad	0x40172e3e6c4c5975              # double 5.7951600000000001
	.quad	0x401a87064ece9a2c              # double 6.6318599999999996
	.quad	0x40122a65cf67b1c0              # double 4.541404
	.quad	0x40221aa92e62131b              # double 9.0520720000000008
	.quad	0x401226c2acb85a4f              # double 4.537852
	.quad	0x401324959e625636              # double 4.7857269999999996
	.quad	0x3ffa73311a543f1c              # double 1.6531229999999999
	.quad	0x4016e33df2a9d628              # double 5.7219160000000002
	.quad	0x401fc74a3400b88d              # double 7.9446190000000003
	.quad	0x3ffc5506573215fd              # double 1.7707580000000001
	.quad	0x4020954f5903a754              # double 8.2916209999999992
	.quad	0x3fbee74f2f123c43              # double 0.120717
	.quad	0x402099f9ce8d972d              # double 8.3007340000000003
	.quad	0x40088c9fb6134ce4              # double 3.0686640000000001
	.quad	0x40237b8f7985271c              # double 9.7413290000000003
	.quad	0x401db6cacd184c27              # double 7.4285079999999999
	.quad	0x4021929e90795f67              # double 8.7863659999999992
	.quad	0x4021cb03c07ee0b1              # double 8.8965130000000006
	.quad	0x3ffda919695d91ac              # double 1.8537840000000001
	.quad	0x4012456c508b32cf              # double 4.5677960000000004
	.quad	0x3fea3d273d5bab22              # double 0.81996500000000005
	.quad	0x4014d0f12c27a637              # double 5.2040449999999998
	.quad	0x3fe481abd1aa821f              # double 0.64082899999999998
	.quad	0x40204f05857afea4              # double 8.1543390000000002
	.quad	0x40238bdc69f8c21e              # double 9.7731659999999998
	.quad	0x4022dad5bee3d5fe              # double 9.4274120000000003
	.quad	0x401f53f811f4f50a              # double 7.832001
	.quad	0x40113f1bac2df0d4              # double 4.3116289999999999
	.quad	0x401ca06c00da1a93              # double 7.1566619999999999
	.quad	0x400e81c475e6362a              # double 3.8133629999999998
	.quad	0x40015f127f5e84f1              # double 2.1714220000000002
	.quad	0x4021c1ac9afe1da8              # double 8.8782700000000006
	.quad	0x40124f1e4b44a1f1              # double 4.5772640000000004
	.quad	0x402284267839cd81              # double 9.2581059999999997
	.quad	0x401a73300de4c511              # double 6.6124879999999999
	.quad	0x40063fb9bed30f06              # double 2.7811159999999999
	.quad	0x4017cbd3804534bd              # double 5.9490489999999996
	.quad	0x40022a936c58eeaf              # double 2.2707890000000002
	.quad	0x401c31fd1569f490              # double 7.0488169999999997
	.quad	0x3ffac409e55c0fcb              # double 1.6728609999999999
	.quad	0x3ffbd0d2806af46b              # double 1.7384820000000001
	.quad	0x40230ca8198f1d3f              # double 9.5247200000000002
	.quad	0x3fec030e3cd9a522              # double 0.87537299999999996
	.quad	0x400843bcd35a8588              # double 3.0330750000000002
	.quad	0x401859cb6848beb6              # double 6.0876900000000003
	.quad	0x4015f765ba6efc37              # double 5.4915989999999999
	.quad	0x402182bc947064ed              # double 8.7553450000000002
	.quad	0x4001431df761cbcd              # double 2.157772
	.quad	0x4001d51ce28ed5f1              # double 2.2290589999999999
	.quad	0x401b0586ca89fc6e              # double 6.7553970000000003
	.quad	0x3ffbb549f94855da              # double 1.73176
	.quad	0x4023be6c4c5974e6              # double 9.8719199999999994
	.quad	0x3fe2c241c3efae79              # double 0.58621299999999998
	.quad	0x40107bdc69f8c21e              # double 4.1209579999999999
	.quad	0x4020ca797891e215              # double 8.3954579999999996
	.quad	0x3ffed60d887ebf23              # double 1.9272590000000001
	.quad	0x4018f2f09d8c6d61              # double 6.2372459999999998
	.quad	0x4015f6eb91b3f20a              # double 5.4911329999999996
	.quad	0x3ff61b0ee49f5169              # double 1.3816059999999999
	.quad	0x3ff0f33ca31e7d9a              # double 1.0593840000000001
	.quad	0x4013830446b69db6              # double 4.8779459999999997
	.quad	0x3fee246173b85e81              # double 0.94194100000000003
	.quad	0x4022a063beec397a              # double 9.3132610000000007
	.quad	0x4012a7a0f9096bba              # double 4.6637000000000004
	.quad	0x40186254a3c64346              # double 6.0960260000000002
	.quad	0x4018954195cc857f              # double 6.1457579999999998
	.quad	0x401fa7efe0ce0b91              # double 7.9140009999999998
	.quad	0x4023b7d3d4280ae1              # double 9.8590379999999999
	.quad	0x4021f38151a43782              # double 8.9755959999999995
	.quad	0x401d9b18548a9bd0              # double 7.4014600000000002
	.quad	0x401a21e75360d024              # double 6.5331089999999996
	.quad	0x4009b3be22e5de16              # double 3.2127650000000001
	.quad	0x401873a5c1c6088d              # double 6.1129369999999996
	.quad	0x402273dfd2630ec3              # double 9.2263169999999999
	.quad	0x3fece1b089a02752              # double 0.90254999999999996
	.quad	0x400c89717df19d67              # double 3.5671110000000001
	.quad	0x401df8cf398e9707              # double 7.4929779999999999
	.quad	0x401f76bebe1650a4              # double 7.8659619999999997
	.quad	0x3fda10d7be9856a3              # double 0.40727799999999997
	.quad	0x3ff28b2c83ec892b              # double 1.1589780000000001
	.quad	0x4021d325d4a5df22              # double 8.9123979999999996
	.quad	0x40109cb4aec8d5c7              # double 4.1530329999999998
	.quad	0x401bd446b69db65f              # double 6.9573010000000002
	.quad	0x3ff267381d7dbf48              # double 1.1501999999999999
	.quad	0x3fdbc31162281345              # double 0.43378100000000003
	.quad	0x4015efd976ff3ade              # double 5.4842279999999999
	.quad	0x401cd92b7fe08af0              # double 7.2120800000000003
	.quad	0x4002bb445ed4a1ad              # double 2.3414389999999998
	.quad	0x401c97fe8ee6b830              # double 7.1484319999999997
	.quad	0x400e33586ca89fc7              # double 3.7750710000000001
	.quad	0x40163ec892ab68cf              # double 5.561312
	.quad	0x3fe780713f077ccc              # double 0.734429
	.quad	0x4017eaf3e468cac5              # double 5.9794460000000003
	.quad	0x3ff81816aceaaf36              # double 1.505881
	.quad	0x40092c80c73abc94              # double 3.1467299999999998
	.quad	0x401d302539756c94              # double 7.2970170000000003
	.quad	0x4019a1b2a27f1b69              # double 6.4079079999999999
	.quad	0x4014a030c23fab11              # double 5.1564360000000002
	.quad	0x40230fb6bb129025              # double 9.5306909999999991
	.quad	0x4004099524bfd2e9              # double 2.5046789999999999
	.quad	0x401f497353b4b2fb              # double 7.8217290000000003
	.quad	0x3ff2090b417ca212              # double 1.127208
	.quad	0x4007b3061c79b34a              # double 2.9624139999999999
	.quad	0x4014ce47dc37a3db              # double 5.2014459999999998
	.quad	0x4011d584b1ab0857              # double 4.4585140000000001
	.quad	0x4012ff5d35653c9b              # double 4.7493790000000002
	.quad	0x401732fcac8e68e4              # double 5.7997920000000001
	.quad	0x4019c506dd69d302              # double 6.4424089999999996
	.quad	0x4007fe68a0d349bf              # double 2.9992230000000002
	.quad	0x4018381d7dbf4880              # double 6.0548000000000002
	.quad	0x3ff2541b75a74c0a              # double 1.1455340000000001
	.quad	0x4011f33508f648c7              # double 4.4875069999999999
	.quad	0x3ffa9af1886df82b              # double 1.662828
	.quad	0x40226c985f06f694              # double 9.2120999999999995
	.quad	0x40234f64adff822c              # double 9.6550650000000004
	.quad	0x4003b5653c9abb02              # double 2.4635720000000001
	.quad	0x401d25269595feda              # double 7.2862799999999996
	.quad	0x401d18f81e8a2ec3              # double 7.2743840000000004
	.quad	0x4021f7ca85caafbc              # double 8.9839669999999998
	.quad	0x401c127bb2fec56d              # double 7.0180499999999997
	.quad	0x4015d2ccf6be37df              # double 5.4558600000000004
	.quad	0x40127c0a8d21bc12              # double 4.6211339999999996
	.quad	0x3ff9835ce1826677              # double 1.594571
	.quad	0x3fdfa91d9b1b79d9              # double 0.494697
	.quad	0x3ff3a523704790b8              # double 1.2278169999999999
	.quad	0x4019819934efcbd5              # double 6.3765609999999997
	.quad	0x3fd6a732df505d10              # double 0.35395500000000002
	.quad	0x4006eced4e4c942d              # double 2.8656869999999999
	.quad	0x3ff73ad2999567dc              # double 1.4518610000000001
	.quad	0x401b6f33ca31e7da              # double 6.8585960000000004
	.quad	0x3ffd1a4484944ed7              # double 1.818913
	.quad	0x4020cd892684cf07              # double 8.4014369999999996
	.quad	0x3ffd676102795704              # double 1.837739
	.quad	0x401f9da122fad6cb              # double 7.9039349999999997
	.quad	0x3fc40f5e41d4b6a6              # double 0.156719
	.quad	0x3ff4e71ef30a4e38              # double 1.3064260000000001
	.quad	0x401dd8fa7a85015c              # double 7.4618929999999999
	.quad	0x3ff1f810e8858ff7              # double 1.1230629999999999
	.quad	0x400a0a222d5171e3              # double 3.2549480000000002
	.quad	0x40112eb52c9d16fd              # double 4.2956130000000003
	.quad	0x401b080b242070b9              # double 6.7578550000000002
	.quad	0x4010a6f2e8c0485a              # double 4.163036
	.quad	0x3fff5c779a6b50b1              # double 1.960075
	.quad	0x400326772d5e071c              # double 2.3937819999999999
	.quad	0x3fee6f60e0eb67c3              # double 0.95109600000000005
	.quad	0x401fa54c122749f1              # double 7.911423
	.quad	0x4022dc68cac4b4d0              # double 9.4304869999999994
	.quad	0x4000dce2089e3433              # double 2.107853
	.quad	0x3fec777af640639d              # double 0.88958499999999996
	.quad	0x3fe94866a11ec919              # double 0.79008800000000001
	.quad	0x4016afb7e90ff972              # double 5.6715999999999998
	.quad	0x401b5b65ecc3e319              # double 6.8392559999999998
	.quad	0x40225f075b3e1438              # double 9.1856030000000004
	.quad	0x400a043aa79bbadc              # double 3.252065
	.quad	0x4007284be40420f7              # double 2.894676
	.quad	0x401cc487fcb923a3              # double 7.1919250000000003
	.quad	0x4014c4e93e1c9b41              # double 5.1922959999999998
	.quad	0x401d19a95421c044              # double 7.2750599999999999
	.quad	0x401cf583e8576cce              # double 7.2397609999999997
	.quad	0x4012c8051c9f72f7              # double 4.6953319999999996
	.quad	0x4003b859c8c9320e              # double 2.4650150000000002
	.quad	0x400d4468448cf7cb              # double 3.6584020000000002
	.quad	0x4022a9a4df47f994              # double 9.3313360000000002
	.quad	0x4021e6d916872b02              # double 8.9508749999999999
	.quad	0x4019807d4e09784f              # double 6.3754780000000002
	.quad	0x3ffc4c55432873bd              # double 1.7686360000000001
	.quad	0x4017265e02ea960b              # double 5.7874679999999996
	.quad	0x40023c58255b035c              # double 2.2794650000000001
	.quad	0x4018eb024f6598e1              # double 6.229501
	.quad	0x401138661ae70c13              # double 4.3050769999999998
	.quad	0x4003ddcad14a0a0f              # double 2.4832969999999999
	.quad	0x40209c1d6cf850df              # double 8.3049119999999998
	.quad	0x3fe67162ae4b0186              # double 0.70134099999999999
	.quad	0x400dc2f2734f82f5              # double 3.720189
	.quad	0x40209b0dd82fd75e              # double 8.3028399999999998
	.quad	0x401e532d2bb23572              # double 7.5812270000000002
	.quad	0x400b86a98244e93e              # double 3.440753
	.quad	0x400fe25a682b6284              # double 3.9855239999999998
	.quad	0x3fe4daa4fca42aed              # double 0.65168999999999999
	.quad	0x400549a671ef30a5              # double 2.660962
	.quad	0x401383f034b0e1b5              # double 4.8788460000000002
	.quad	0x401ffd50ebaade65              # double 7.9973789999999995
	.quad	0x4002d7457c0b1359              # double 2.3551129999999998
	.quad	0x4013d5cd91eeaa6d              # double 4.9587919999999999
	.quad	0x4021b2a821f2990f              # double 8.8489389999999997
	.quad	0x40089b003686a4ca              # double 3.0756839999999999
	.quad	0x3ffa8667f90d9d77              # double 1.6578139999999999
	.quad	0x400b0c6c54bcf0b7              # double 3.3810660000000001
	.quad	0x40049fac1d29dc72              # double 2.5779649999999998
	.quad	0x4023dcce5f7403de              # double 9.9312620000000003
	.quad	0x40225d0fc71d6063              # double 9.1817609999999998
	.quad	0x3ffd7d08d4bad7d8              # double 1.8430260000000001
	.quad	0x4023c3a01eeed890              # double 9.8820809999999994
	.quad	0x3fe236bd2b6f1993              # double 0.56918199999999997
	.quad	0x3ff2d6bdb1a6d699              # double 1.177427
	.quad	0x401edd527e521577              # double 7.7161350000000004
	.quad	0x401f9549b62c7757              # double 7.8957889999999997
	.quad	0x4001b6b2af145522              # double 2.2142080000000002
	.quad	0x401c7f901083dbc2              # double 7.1245729999999998
	.quad	0x401946030c23fab1              # double 6.318371
	.quad	0x4010b2f9ca5bd945              # double 4.1747810000000003
	.quad	0x4021b9876188b114              # double 8.8623609999999999
	.quad	0x4013d8bb4d48882f              # double 4.961652
	.quad	0x4020409f623076c0              # double 8.1262159999999994
	.quad	0x40133c8b43958106              # double 4.8091249999999999
	.quad	0x401c5b1422ccb3a2              # double 7.0889439999999997
	.quad	0x40216ef30a4e379b              # double 8.7166979999999992
	.quad	0x4018b45ed4a1ad64              # double 6.1761429999999997
	.quad	0x40079a3a8e71476b              # double 2.950307
	.quad	0x401f63cbc48f10aa              # double 7.8474570000000003
	.quad	0x40062bf0995aaf79              # double 2.771455
	.quad	0x40220bcf91a32b13              # double 9.0230680000000003
	.quad	0x40171229e90795f6              # double 5.7677379999999996
	.quad	0x3ff8a8dda48b6523              # double 1.5412269999999999
	.quad	0x401a379b34a44c7b              # double 6.554303
	.quad	0x4022dbbc2b94d940              # double 9.4291699999999991
	.quad	0x3f7a719b4dcebfec              # double 0.0064559999999999999
	.quad	0x4019809d495182aa              # double 6.3756000000000004
	.quad	0x4001c20b3d4ae42a              # double 2.2197480000000001
	.quad	0x401e6476f2a5a46a              # double 7.5981100000000001
	.quad	0x401da7079e59f2bb              # double 7.4131150000000003
	.quad	0x40205c64dc22ab26              # double 8.1804570000000005
	.quad	0x401af0a1be2b495a              # double 6.7349920000000001
	.quad	0x4015693a71151612              # double 5.3527620000000002
	.quad	0x40078e5604189375              # double 2.9445000000000001
	.quad	0x3ff2f3d9ec700043              # double 1.184534
	.quad	0x402152f20ea5b531              # double 8.6620030000000003
	.quad	0x40081c53f39d1b2e              # double 3.0138319999999998
	.quad	0x4018bc0767d34df0              # double 6.1836219999999997
	.quad	0x3fe41d2e0e30446b              # double 0.62856199999999995
	.quad	0x4012ff666234a87e              # double 4.7494139999999998
	.quad	0x40092301a79fec9a              # double 3.142093
	.quad	0x401d02df505d0fa6              # double 7.2528050000000004
	.quad	0x400dab356da0168b              # double 3.7085979999999998
	.quad	0x401dda4acf312b1b              # double 7.4631759999999998
	.quad	0x400f8b990afe60c4              # double 3.9431630000000002
	.quad	0x40015743e963dc48              # double 2.1676099999999998
	.quad	0x401b933a8a3f8983              # double 6.8937780000000002
	.quad	0x3fff24a48f96e158              # double 1.9464459999999999
	.quad	0x400b7383f0bae89f              # double 3.4314040000000001
	.quad	0x400c08815e39713b              # double 3.5041530000000001
	.quad	0x400e9dd334c5da6a              # double 3.8270629999999999
	.quad	0x400fa927913e8145              # double 3.957595
	.quad	0x3fe43cbc48f10a9a              # double 0.63241400000000003
	.quad	0x3ff459e518f3eccc              # double 1.2719469999999999
	.quad	0x40007d438d1d8a55              # double 2.0611640000000002
	.quad	0x4008d9210385c67e              # double 3.10602
	.quad	0x4008101322f27350              # double 3.0078490000000002
	.quad	0x40097e74299d883c              # double 3.1867450000000002
	.quad	0x400380d77b7c7821              # double 2.4379110000000002
	.quad	0x3fe28956c0d6f545              # double 0.57926500000000003
	.quad	0x4004ba3e39f77293              # double 2.5909390000000001
	.quad	0x4019583dff3f0fe0              # double 6.3361739999999998
	.quad	0x4014e0a63305100a              # double 5.2193839999999998
	.quad	0x4004aacfb762d83c              # double 2.5834039999999998
	.quad	0x4015f1cd1c7de508              # double 5.4861339999999998
	.quad	0x401290984e3ffef4              # double 4.6412060000000004
	.quad	0x402050f16f4384ba              # double 8.1580919999999999
	.quad	0x3ff58cb9ecf63800              # double 1.346857
	.quad	0x40224cdb7ae5796c              # double 9.150112
	.quad	0x3fe7d8a548238540              # double 0.74519599999999997
	.quad	0x401a810f94c87981              # double 6.626036
	.quad	0x3fedb1b36bd2b6f2              # double 0.92794200000000004
	.quad	0x400e497b7414a4d3              # double 3.7858800000000001
	.quad	0x400c23d1cc100e6b              # double 3.51749
	.quad	0x401a672de43ed95a              # double 6.6007610000000003
	.quad	0x4003995f676ea423              # double 2.4498890000000002
	.quad	0x400d938bcdfefbf4              # double 3.697044
	.quad	0x3ff2ec6de76427c8              # double 1.1827220000000001
	.quad	0x402196a78af3e469              # double 8.7942470000000004
	.quad	0x402005cd91eeaa6d              # double 8.0113339999999997
	.quad	0x40098877ee4e26d5              # double 3.1916350000000002
	.quad	0x40215239e6ab9b24              # double 8.6605980000000002
	.quad	0x400e80f776c4827b              # double 3.8129719999999998
	.quad	0x40142e47dc37a3db              # double 5.0451959999999998
	.quad	0x4022bb5b2d4d4025              # double 9.3659300000000005
	.quad	0x3fde16d2aa5c5f7c              # double 0.47014299999999998
	.quad	0x4002521e603d5779              # double 2.2900969999999998
	.quad	0x3fe46db940fecdd1              # double 0.63839400000000002
	.quad	0x40213ac450268901              # double 8.6147790000000004
	.quad	0x3fb086f049a9973e              # double 0.064559000000000005
	.quad	0x401cba4df47f993d              # double 7.1819379999999997
	.quad	0x3ffc51276fb09204              # double 1.7698130000000001
	.quad	0x4007a96cc5fbf834              # double 2.9577270000000002
	.quad	0x401e92d905c03361              # double 7.6434059999999997
	.quad	0x4023dbb0813cab82              # double 9.929081
	.quad	0x40070cd855970b4a              # double 2.8812720000000001
	.quad	0x4014a99f1ae2da55              # double 5.1656459999999997
	.quad	0x401f8ec17ebaf102              # double 7.8894099999999998
	.quad	0x401592bc2fc69729              # double 5.3932960000000003
	.quad	0x400918d477bbf940              # double 3.137124
	.quad	0x4022374623d0bfa1              # double 9.1079570000000007
	.quad	0x40201cd20afa2f06              # double 8.0562900000000006
	.quad	0x401aca7f3cf70154              # double 6.6977510000000002
	.quad	0x3fe2fb8d3f1843c4              # double 0.59320700000000004
	.quad	0x402094ee5abc0e39              # double 8.2908810000000006
	.quad	0x401636bce8533b10              # double 5.5534549999999996
	.quad	0x4023506705c896dd              # double 9.6570359999999997
	.quad	0x3fd736501e2584f5              # double 0.36269000000000001
	.quad	0x4018b26e978d4fdf              # double 6.1742499999999998
	.quad	0x401137281fd9ba1b              # double 4.3038639999999999
	.quad	0x40049f1cfbb94962              # double 2.5776919999999999
	.quad	0x4021f329802c0a4a              # double 8.974926
	.quad	0x401c3f0e0a84be40              # double 7.0615769999999998
	.quad	0x402267b395c42203              # double 9.2025419999999993
	.quad	0x4023daa433508f65              # double 9.9270340000000008
	.quad	0x4022af1348b22079              # double 9.3419439999999998
	.quad	0x4007d80f55de58e6              # double 2.9804979999999999
	.quad	0x40069436b8f9b131              # double 2.8223699999999998
	.quad	0x40095800a7c5ac47              # double 3.16797
	.quad	0x40239212f901083e              # double 9.7853010000000005
	.quad	0x401080f7b9e060fe              # double 4.1259449999999998
	.quad	0x40170bad7d7c2ca1              # double 5.7614039999999997
	.quad	0x40196c957cd466f5              # double 6.356039
	.quad	0x400a047c30d306a3              # double 3.2521900000000001
	.quad	0x40208a83d35eb745              # double 8.2705369999999991
	.quad	0x4017da8f3a9b0681              # double 5.9634369999999999
	.quad	0x401e102a3486f04a              # double 7.5157860000000003
	.quad	0x401239210385c67e              # double 4.55579
	.quad	0x401c7f2a5a469d73              # double 7.1241849999999998
	.quad	0x3ffb753d640e9d52              # double 1.7161230000000001
	.quad	0x3fd7193f6c2699c8              # double 0.36091600000000001
	.quad	0x40089b6b2af14552              # double 3.075888
	.quad	0x4017de9ccb7d4174              # double 5.9673949999999998
	.quad	0x3ff3433d6c721922              # double 1.203916
	.quad	0x4021fa6f3f52fc26              # double 8.9891299999999994
	.quad	0x401d2538ac18f81f              # double 7.2863490000000004
	.quad	0x4009e47c30d306a3              # double 3.2365650000000001
	.quad	0x4021de195464dc23              # double 8.9337870000000006
	.quad	0x400b72f01754b05b              # double 3.4311219999999998
	.quad	0x4018c8e368f08462              # double 6.19618
	.quad	0x400ac46e8f29d40f              # double 3.3459140000000001
	.quad	0x4012ed3f5b5fa227              # double 4.731687
	.quad	0x4021d654d61b2a28              # double 8.9186160000000001
	.quad	0x400bd929670196d9              # double 3.481036
	.quad	0x400c0b838c111ada              # double 3.5056219999999998
	.quad	0x401f8af42784a948              # double 7.8856970000000004
	.quad	0x400cba3ec02f2f98              # double 3.5909399999999998
	.quad	0x40166e121ee67514              # double 5.6074909999999996
	.quad	0x402257c19c17225b              # double 9.1713989999999992
	.quad	0x3fb8b0e1b4bb5e0f              # double 0.096448999999999993
	.quad	0x400942773e24febd              # double 3.157454
	.quad	0x401d0759ee88df37              # double 7.2571789999999998
	.quad	0x401ebf57f737da62              # double 7.6868590000000001
	.quad	0x401d3efe0ce0b913              # double 7.3115160000000001
	.quad	0x401e6b762d83c6c9              # double 7.6049429999999995
	.quad	0x3fcc8366516db0de              # double 0.22276000000000001
	.quad	0x3ffcda5ebb7739f3              # double 1.8033129999999999
	.quad	0x400a61709310129d              # double 3.2975780000000001
	.quad	0x4018281d3aa369fd              # double 6.039174
	.quad	0x4004959578a2a90d              # double 2.5730390000000001
	.quad	0x40202243137b0707              # double 8.0669179999999994
	.quad	0x401e1dc65c70435f              # double 7.529077
	.quad	0x4023576ec5b078d9              # double 9.6707669999999996
	.quad	0x40216d64f97edc7f              # double 8.7136610000000001
	.quad	0x401c91a2e7f6f4bf              # double 7.1422230000000004
	.quad	0x3ff48866a11ec919              # double 1.283301
	.quad	0x4002fb7ae5796bfd              # double 2.3727930000000002
	.quad	0x3ff4675147f13059              # double 1.2752239999999999
	.quad	0x400499207d4e0978              # double 2.5747689999999999
	.quad	0x40156ccf6be37de9              # double 5.3562599999999998
	.quad	0x4012808398a65493              # double 4.625502
	.quad	0x40126a569b17481b              # double 4.6038459999999999
	.quad	0x4000ce0221426fe7              # double 2.10059
	.quad	0x4021c97f1f9acffa              # double 8.8935479999999991
	.quad	0x3ff41510d38cda6e              # double 1.2551429999999999
	.quad	0x4002533a8a3f8983              # double 2.2906390000000001
	.quad	0x40040357a355043e              # double 2.5016319999999999
	.quad	0x40028dc0980b2420              # double 2.3192149999999998
	.quad	0x40117e4f765fd8ae              # double 4.3733500000000003
	.quad	0x400c47de5082cf53              # double 3.5350920000000001
	.quad	0x3fc919a415f45e0b              # double 0.19609499999999999
	.quad	0x401d96f694467382              # double 7.3974250000000001
	.quad	0x40053e58e64b2314              # double 2.655443
	.quad	0x3ff17c69728a6117              # double 1.0928739999999999
	.quad	0x400d072324c83665              # double 3.628485
	.quad	0x402339dd5d3dc8b8              # double 9.6130169999999992
	.quad	0x4019a07f23cc8de3              # double 6.4067350000000003
	.quad	0x4016bcd573647bab              # double 5.6844080000000003
	.quad	0x40177ca9ef5232d3              # double 5.8717420000000002
	.quad	0x40231b93ab430f49              # double 9.5538609999999994
	.quad	0x4021c8f51ac9afe2              # double 8.8924950000000003
	.quad	0x400699ca5bd944aa              # double 2.8250929999999999
	.quad	0x40162bb8800eae19              # double 5.5426960000000003
	.quad	0x4006853e2d6238da              # double 2.8150599999999999
	.quad	0x3fe2b83cf2cf95d5              # double 0.58499000000000001
	.quad	0x3ff390f0e90bc7b4              # double 1.2228859999999999
	.quad	0x3fef13b5bf6a0dbb              # double 0.97115600000000001
	.quad	0x4015a178f68be2f8              # double 5.4076880000000003
	.quad	0x4020b4af0bf1a5ca              # double 8.3528979999999997
	.quad	0x3fc9e1b8ed1bf7ad              # double 0.20220099999999999
	.quad	0x3ff1ba16e7a311e8              # double 1.1079319999999999
	.quad	0x400518d4fdf3b646              # double 2.6371250000000002
	.quad	0x3fedb26394face68              # double 0.92802600000000002
	.quad	0x3ffda0c38f366949              # double 1.8517490000000001
	.quad	0x4018dec892ab68cf              # double 6.217562
	.quad	0x4017525072085b18              # double 5.8303849999999997
	.quad	0x4006e1ecd4aa10e0              # double 2.8603149999999999
	.quad	0x3ff2433f85510d39              # double 1.141418
	.quad	0x40153c12ad81adeb              # double 5.3086650000000004
	.quad	0x401935eedcc20d56              # double 6.3026689999999999
	.quad	0x3ffc4ca70d1fa333              # double 1.7687139999999999
	.quad	0x4022fb2702a3486f              # double 9.4905319999999999
	.quad	0x3fb2ab7995ee136e              # double 0.072928999999999994
	.quad	0x4022a65e679463d0              # double 9.3249390000000005
	.quad	0x3ff82b59146e4c0e              # double 1.510583
	.quad	0x3ff1e8d434a01abd              # double 1.119343
	.quad	0x4012d0b6b6e0d23d              # double 4.7038219999999997
	.quad	0x401ba090f733a8a4              # double 6.906803
	.quad	0x3ff7d5ca6ca03c4b              # double 1.489695
	.quad	0x4019be1e2de87097              # double 6.4356619999999998
	.quad	0x4013237e6f71a7e3              # double 4.784662
	.quad	0x3fd1e02ea960b6fa              # double 0.279308
	.quad	0x400a1c209246bf01              # double 3.2637339999999999
	.quad	0x401cec26138fffbd              # double 7.2306140000000001
	.quad	0x401eeab4fa48301a              # double 7.7292059999999996
	.quad	0x4021b86ab14ec205              # double 8.8601890000000001
	.quad	0x3ff2dee99a62ed35              # double 1.179422
	.quad	0x400f0958537e2c56              # double 3.8795630000000001
	.quad	0x401ccdb445ed4a1b              # double 7.2008830000000001
	.quad	0x401d9151a437824d              # double 7.3919129999999997
	.size	.L__constant_3000xf64, 24000

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
