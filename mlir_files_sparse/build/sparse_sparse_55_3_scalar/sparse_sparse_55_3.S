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
	.quad	0x41419eea42a5375d              # double 2309588.5206670002
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
	.quad	4499                            # 0x1193
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4499                            # 0x1193
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
	lui	a7, %hi(.L__constant_4499xindex)
	addi	a7, a7, %lo(.L__constant_4499xindex)
	lui	t0, %hi(.L__constant_4499xf64)
	addi	t0, t0, %lo(.L__constant_4499xf64)
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
	.quad	93                              # 0x5d
	.quad	134                             # 0x86
	.quad	186                             # 0xba
	.quad	223                             # 0xdf
	.quad	260                             # 0x104
	.quad	324                             # 0x144
	.quad	359                             # 0x167
	.quad	400                             # 0x190
	.quad	449                             # 0x1c1
	.quad	493                             # 0x1ed
	.quad	534                             # 0x216
	.quad	596                             # 0x254
	.quad	637                             # 0x27d
	.quad	684                             # 0x2ac
	.quad	744                             # 0x2e8
	.quad	789                             # 0x315
	.quad	830                             # 0x33e
	.quad	885                             # 0x375
	.quad	921                             # 0x399
	.quad	957                             # 0x3bd
	.quad	1016                            # 0x3f8
	.quad	1058                            # 0x422
	.quad	1102                            # 0x44e
	.quad	1163                            # 0x48b
	.quad	1192                            # 0x4a8
	.quad	1233                            # 0x4d1
	.quad	1285                            # 0x505
	.quad	1324                            # 0x52c
	.quad	1364                            # 0x554
	.quad	1420                            # 0x58c
	.quad	1451                            # 0x5ab
	.quad	1483                            # 0x5cb
	.quad	1537                            # 0x601
	.quad	1575                            # 0x627
	.quad	1618                            # 0x652
	.quad	1670                            # 0x686
	.quad	1709                            # 0x6ad
	.quad	1749                            # 0x6d5
	.quad	1810                            # 0x712
	.quad	1848                            # 0x738
	.quad	1886                            # 0x75e
	.quad	1940                            # 0x794
	.quad	1970                            # 0x7b2
	.quad	2007                            # 0x7d7
	.quad	2070                            # 0x816
	.quad	2107                            # 0x83b
	.quad	2147                            # 0x863
	.quad	2207                            # 0x89f
	.quad	2236                            # 0x8bc
	.quad	2279                            # 0x8e7
	.quad	2339                            # 0x923
	.quad	2377                            # 0x949
	.quad	2418                            # 0x972
	.quad	2475                            # 0x9ab
	.quad	2504                            # 0x9c8
	.quad	2545                            # 0x9f1
	.quad	2603                            # 0xa2b
	.quad	2639                            # 0xa4f
	.quad	2680                            # 0xa78
	.quad	2734                            # 0xaae
	.quad	2780                            # 0xadc
	.quad	2808                            # 0xaf8
	.quad	2862                            # 0xb2e
	.quad	2894                            # 0xb4e
	.quad	2933                            # 0xb75
	.quad	2992                            # 0xbb0
	.quad	3033                            # 0xbd9
	.quad	3075                            # 0xc03
	.quad	3136                            # 0xc40
	.quad	3173                            # 0xc65
	.quad	3207                            # 0xc87
	.quad	3260                            # 0xcbc
	.quad	3303                            # 0xce7
	.quad	3341                            # 0xd0d
	.quad	3404                            # 0xd4c
	.quad	3443                            # 0xd73
	.quad	3486                            # 0xd9e
	.quad	3544                            # 0xdd8
	.quad	3586                            # 0xe02
	.quad	3616                            # 0xe20
	.quad	3668                            # 0xe54
	.quad	3702                            # 0xe76
	.quad	3741                            # 0xe9d
	.quad	3798                            # 0xed6
	.quad	3832                            # 0xef8
	.quad	3869                            # 0xf1d
	.quad	3922                            # 0xf52
	.quad	3963                            # 0xf7b
	.quad	4003                            # 0xfa3
	.quad	4069                            # 0xfe5
	.quad	4110                            # 0x100e
	.quad	4154                            # 0x103a
	.quad	4220                            # 0x107c
	.quad	4269                            # 0x10ad
	.quad	4309                            # 0x10d5
	.quad	4364                            # 0x110c
	.quad	4403                            # 0x1133
	.quad	4440                            # 0x1158
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
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
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
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
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
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
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	20                              # 0x14
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
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
	.quad	35                              # 0x23
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
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
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x401ec7ab7564302b              # double 7.6949899999999997
	.quad	0x401b86b5d462c344              # double 6.8815530000000003
	.quad	0x4021b23f8982cb21              # double 8.848141
	.quad	0x4023aa849cb252ce              # double 9.833043
	.quad	0x4014211d3671ac15              # double 5.0323380000000002
	.quad	0x401555cee17a02fb              # double 5.3337969999999997
	.quad	0x40138397dd00f777              # double 4.8785090000000002
	.quad	0x401be76e6106ab15              # double 6.9760070000000001
	.quad	0x401861b584b1ab08              # double 6.0954189999999997
	.quad	0x401fb51697f1f9ad              # double 7.926844
	.quad	0x401480f776c4827b              # double 5.1259439999999996
	.quad	0x3ff53ba12b5e529c              # double 1.3270580000000001
	.quad	0x4001c196d8f4f93c              # double 2.2195260000000001
	.quad	0x4023af294dd72368              # double 9.8421120000000001
	.quad	0x4019346b69db65ed              # double 6.3011910000000002
	.quad	0x400d8031ceaf251c              # double 3.687595
	.quad	0x3fd710adcd2d44dd              # double 0.36039300000000002
	.quad	0x3ff6defd86a8fc0d              # double 1.429441
	.quad	0x4023a8301a79feca              # double 9.8284920000000007
	.quad	0x400499d7774aba38              # double 2.5751179999999998
	.quad	0x4016e2428d434a02              # double 5.7209570000000003
	.quad	0x402165ad31fcd24e              # double 8.6985869999999998
	.quad	0x400f13acd5b6805a              # double 3.8846069999999999
	.quad	0x4017109bf9c62a1b              # double 5.7662199999999997
	.quad	0x3fe23fa4c61d8623              # double 0.57026900000000003
	.quad	0x4008599d451fc4c1              # double 3.0437569999999998
	.quad	0x3ff49a7b0b391926              # double 1.2877149999999999
	.quad	0x401d12a8c9b84556              # double 7.2682219999999997
	.quad	0x4014376640a6b93d              # double 5.0541010000000002
	.quad	0x400c26ddf00abf77              # double 3.5189780000000002
	.quad	0x40171e2478854cdb              # double 5.7794359999999996
	.quad	0x3feb959c49774257              # double 0.86201300000000003
	.quad	0x4017efbefd00713f              # double 5.984127
	.quad	0x400406c11a11233e              # double 2.503298
	.quad	0x402099ebc83a96d5              # double 8.3006270000000004
	.quad	0x4015e64f54d1e96c              # double 5.4749119999999998
	.quad	0x3ff184934267839d              # double 1.094867
	.quad	0x40212526b723ee1c              # double 8.5725610000000003
	.quad	0x400b9245b291b824              # double 3.4464220000000001
	.quad	0x4012d64fdb09a672              # double 4.7092890000000001
	.quad	0x4022cd1244a6223e              # double 9.4005299999999998
	.quad	0x400fe583621fafc9              # double 3.9870670000000001
	.quad	0x4021a0c521dda05a              # double 8.8140040000000006
	.quad	0x4020a4d7060bb2bc              # double 8.3219530000000005
	.quad	0x40154c521dda059a              # double 5.3245319999999996
	.quad	0x401bdfb82c2bd7f5              # double 6.9684759999999999
	.quad	0x4020f5f88fc9363f              # double 8.4804119999999994
	.quad	0x40070050bd87b56c              # double 2.8751540000000002
	.quad	0x4011b4ec204f2ae0              # double 4.4266819999999996
	.quad	0x3fba38327674d163              # double 0.10242
	.quad	0x40189d6ba8c58687              # double 6.1537309999999996
	.quad	0x4022121af7d30ad4              # double 9.0353619999999992
	.quad	0x3fb8178705425f20              # double 0.094108999999999998
	.quad	0x3fca78c868b9fdbd              # double 0.20681099999999999
	.quad	0x40213c4cdfaca362              # double 8.6177740000000007
	.quad	0x3fff7d7f51efb6dd              # double 1.9681390000000001
	.quad	0x3fcc4edf61240746              # double 0.22115699999999999
	.quad	0x402118d1d8a54824              # double 8.5484760000000008
	.quad	0x400c5a5daf07bfe8              # double 3.5441240000000001
	.quad	0x402224e48626f60e              # double 9.0720559999999999
	.quad	0x4013bd7a13c254a4              # double 4.9350360000000002
	.quad	0x401296994185058e              # double 4.6470690000000001
	.quad	0x40147782d38476f3              # double 5.1167100000000003
	.quad	0x400b6cd8dbcec850              # double 3.4281480000000002
	.quad	0x400892135daad602              # double 3.071326
	.quad	0x400210dd82fd75e2              # double 2.258235
	.quad	0x4021a8af81626b2f              # double 8.8294639999999998
	.quad	0x3ff617fa5d28d003              # double 1.380854
	.quad	0x401a2f911cf355ce              # double 6.5464520000000004
	.quad	0x401be331e3a7daa5              # double 6.97187
	.quad	0x4016f01eabbcb1cd              # double 5.7344920000000004
	.quad	0x4012fb9b66f9335d              # double 4.7457099999999999
	.quad	0x4015a9b280f12c28              # double 5.4157200000000003
	.quad	0x4012a74a3400b88d              # double 4.6633690000000003
	.quad	0x3ff41f10667f90da              # double 1.257584
	.quad	0x4014ea69be09bb6b              # double 5.2289190000000003
	.quad	0x401a8f9c1f85d745              # double 6.640244
	.quad	0x3f7cd2d44dca8e2e              # double 0.0070369999999999999
	.quad	0x40119dc37a3db3c0              # double 4.4040660000000003
	.quad	0x400daff5c6c11a11              # double 3.7109179999999999
	.quad	0x3fb5fbd6a593a2e0              # double 0.085874000000000006
	.quad	0x4022590be9424e59              # double 9.1739189999999997
	.quad	0x4002be8815e39714              # double 2.3430330000000001
	.quad	0x40160e76427c7c52              # double 5.5141229999999997
	.quad	0x3ff08a2a90cd423e              # double 1.0337320000000001
	.quad	0x4000fe1e2de87097              # double 2.1240809999999999
	.quad	0x4023d529131ec0b5              # double 9.9163289999999992
	.quad	0x3ff228db8bac710d              # double 1.1349750000000001
	.quad	0x401af4c7f3493858              # double 6.7390439999999998
	.quad	0x401aea847b24638d              # double 6.7290210000000004
	.quad	0x4010bcdaf4adbc66              # double 4.1844289999999997
	.quad	0x4016434f82f51266              # double 5.5657329999999998
	.quad	0x402141b1fab96f22              # double 8.6283110000000001
	.quad	0x402066d82ba5a038              # double 8.2008679999999998
	.quad	0x3ff4da35d67ba238              # double 1.303274
	.quad	0x401ae1d798d8a97a              # double 6.7205490000000001
	.quad	0x401b6e008e9b38d6              # double 6.857424
	.quad	0x4017e800eae18aca              # double 5.976566
	.quad	0x401c44430b178b37              # double 7.066662
	.quad	0x401a65147f130596              # double 6.5987109999999998
	.quad	0x4012918b502ababf              # double 4.6421330000000003
	.quad	0x40050f1cb89d6adf              # double 2.6323789999999998
	.quad	0x400391d92b7fe08b              # double 2.446215
	.quad	0x40146770bd017daf              # double 5.1010160000000004
	.quad	0x40064bacf7446f9c              # double 2.7869510000000002
	.quad	0x3ff41271bcdbbe01              # double 1.2545029999999999
	.quad	0x401334f1a1986b9c              # double 4.8017029999999998
	.quad	0x3ff9baba7b9170d6              # double 1.608088
	.quad	0x401dc352a8438088              # double 7.4407449999999997
	.quad	0x4018421f6cacd185              # double 6.0645730000000002
	.quad	0x3ffa1abd1aa821f3              # double 1.6315280000000001
	.quad	0x401804827b6fe2e7              # double 6.0044040000000001
	.quad	0x4020227008a697af              # double 8.0672610000000002
	.quad	0x4011816ca46e08f2              # double 4.3763909999999999
	.quad	0x401b5d47bedb7282              # double 6.841094
	.quad	0x402174a1272c94b4              # double 8.7277920000000008
	.quad	0x40225cbc27631b58              # double 9.1811229999999994
	.quad	0x4020431b9b66f933              # double 8.1310699999999994
	.quad	0x4019134fc610f0e9              # double 6.268859
	.quad	0x4010bebaade657b8              # double 4.1862589999999997
	.quad	0x401b9b22d0e56042              # double 6.9015000000000004
	.quad	0x3fef7dfa00e27e0f              # double 0.984128
	.quad	0x400aebad7d7c2ca1              # double 3.3650769999999999
	.quad	0x4014b9bae46cfc83              # double 5.1813770000000003
	.quad	0x40113da7b0b39192              # double 4.3102099999999997
	.quad	0x4021f634117f8445              # double 8.9808660000000007
	.quad	0x4017e9ed3953dea4              # double 5.9784439999999996
	.quad	0x3fd2fb6134ce3de6              # double 0.296593
	.quad	0x400fa99a62ed3522              # double 3.9578139999999999
	.quad	0x4016505814940bbb              # double 5.5784609999999999
	.quad	0x4016b1a500d5e8d5              # double 5.6734809999999998
	.quad	0x401fa00474d9c6b0              # double 7.9062669999999997
	.quad	0x4011440b34e7685a              # double 4.3164490000000004
	.quad	0x400a8c636b096356              # double 3.318549
	.quad	0x4003342e557de0d6              # double 2.4004789999999998
	.quad	0x3ff42ffe2a3cea6c              # double 1.261717
	.quad	0x4020e28ef77f27fe              # double 8.4424969999999995
	.quad	0x401714217d2849cb              # double 5.7696589999999999
	.quad	0x3fe7be878fabda0e              # double 0.742008
	.quad	0x40134d2f5dbb9cfa              # double 4.8253760000000003
	.quad	0x3fe739085f4a1273              # double 0.72571200000000002
	.quad	0x40225ef21f6cacd2              # double 9.1854410000000009
	.quad	0x401f6c6f36ef8056              # double 7.855893
	.quad	0x4023ae9a6f826edb              # double 9.8410220000000006
	.quad	0x401dbb93037d6302              # double 7.4331779999999998
	.quad	0x401e1baba7b9170d              # double 7.5270219999999996
	.quad	0x3fbab2e1693c03bc              # double 0.104292
	.quad	0x401ba27fa1a0cf18              # double 6.90869
	.quad	0x3fb870fbeb9e492c              # double 0.095474000000000003
	.quad	0x3fff49f0e4da09cc              # double 1.955552
	.quad	0x402100f8c64fdb0a              # double 8.5018980000000006
	.quad	0x401e0f4e4430b179              # double 7.5149470000000002
	.quad	0x401dff6555c52e73              # double 7.4994100000000001
	.quad	0x4000edf1e0828c37              # double 2.1161840000000001
	.quad	0x400ffcb790fb6567              # double 3.9983970000000002
	.quad	0x40140da1a93293d1              # double 5.013312
	.quad	0x4005cce67d77fae3              # double 2.7250489999999998
	.quad	0x40128bd5992428d4              # double 4.6365569999999998
	.quad	0x401cc1cf355cd91f              # double 7.1892670000000001
	.quad	0x40213cb5fe542e55              # double 8.6185759999999991
	.quad	0x3ff138327674d163              # double 1.07622
	.quad	0x400fd88fc9363f57              # double 3.9807429999999999
	.quad	0x4020b8986fcdee35              # double 8.360538
	.quad	0x3ff1a1d53cddd6e0              # double 1.1020099999999999
	.quad	0x4007104039abf338              # double 2.8829349999999998
	.quad	0x4003ba250f840182              # double 2.4658910000000001
	.quad	0x401854be835dedf2              # double 6.0827580000000001
	.quad	0x3fd46d7e889c1b54              # double 0.31918299999999999
	.quad	0x401a70c4588a04d1              # double 6.6101239999999999
	.quad	0x40148d0edc3bd599              # double 5.1377519999999999
	.quad	0x40188886df82b1f7              # double 6.1333270000000004
	.quad	0x3ff0c87442c7fbad              # double 1.0489390000000001
	.quad	0x4022802773e24fec              # double 9.2503010000000003
	.quad	0x401d90229a5ebb77              # double 7.3907569999999998
	.quad	0x3fef8e820e629952              # double 0.98614599999999997
	.quad	0x400ab87724fa8b4c              # double 3.340071
	.quad	0x3fe37a3fcc9ea9a4              # double 0.60867300000000002
	.quad	0x4023b3b1d0c80410              # double 9.8509659999999997
	.quad	0x40155e4f765fd8ae              # double 5.3421000000000003
	.quad	0x3ffe11782d38476f              # double 1.879265
	.quad	0x4015fd1d041cc533              # double 5.4971810000000003
	.quad	0x400ad6b65a9a8049              # double 3.3548399999999998
	.quad	0x401aff89c5e6ff7e              # double 6.749549
	.quad	0x401aaaba38759253              # double 6.6667259999999997
	.quad	0x40130c9b41398634              # double 4.7623110000000004
	.quad	0x4003b5347a5b0ff1              # double 2.463479
	.quad	0x401116809d495183              # double 4.2719750000000003
	.quad	0x401f117507e9d94d              # double 7.7670479999999999
	.quad	0x40157db6a1e81cb4              # double 5.3727669999999996
	.quad	0x401181a9fbe76c8b              # double 4.3766249999999998
	.quad	0x3ffe8f1a1986b9c3              # double 1.909937
	.quad	0x400238d9b5e95b79              # double 2.2777590000000001
	.quad	0x3ff160370cdc8755              # double 1.08599
	.quad	0x4008e81344806291              # double 3.113318
	.quad	0x401f1c33f85510d4              # double 7.7775420000000004
	.quad	0x4022412684cf073a              # double 9.1272470000000006
	.quad	0x401162a66dbd72bd              # double 4.3463380000000003
	.quad	0x4009fa775fb2edfe              # double 3.2472979999999998
	.quad	0x400468826aa8eb46              # double 2.5510299999999999
	.quad	0x401714f2f123c42a              # double 5.7704579999999996
	.quad	0x400319103c8e25c8              # double 2.387238
	.quad	0x3fc69d51b4fe79ee              # double 0.176676
	.quad	0x4020722014727dcc              # double 8.2229010000000002
	.quad	0x40225d72bcb5fe54              # double 9.1825159999999996
	.quad	0x400144790b849881              # double 2.1584340000000002
	.quad	0x401bcb6cbd987c63              # double 6.9486569999999999
	.quad	0x401f17acc4ef88b9              # double 7.7731199999999995
	.quad	0x401c422f2734f82f              # double 7.0646329999999997
	.quad	0x4022fbaba7b9170d              # double 9.4915439999999993
	.quad	0x400ed0ef566490a3              # double 3.8520189999999999
	.quad	0x3ff082efd438d1d9              # double 1.0319670000000001
	.quad	0x3fdca7503b81b64e              # double 0.447712
	.quad	0x401a130d7386099a              # double 6.5186060000000001
	.quad	0x401e33293d102bc7              # double 7.5499619999999998
	.quad	0x4016149b62c77575              # double 5.520124
	.quad	0x40160cf7caa7589f              # double 5.512664
	.quad	0x4021686c00da1a93              # double 8.7039489999999997
	.quad	0x40023f5c6c11a112              # double 2.2809379999999999
	.quad	0x401866fdeb52c9d1              # double 6.1005779999999996
	.quad	0x4008334df04ddb55              # double 3.0250509999999999
	.quad	0x401cd15b9a5a89b9              # double 7.2044509999999997
	.quad	0x3feb0ced4e4c942d              # double 0.84532799999999997
	.quad	0x4008c3dddb1209ee              # double 3.0956380000000001
	.quad	0x4023e2e0c1765775              # double 9.9431209999999996
	.quad	0x402072e642bf9831              # double 8.2244130000000002
	.quad	0x4011af7fcfc3f812              # double 4.421386
	.quad	0x40142621fafc8b00              # double 5.0372389999999996
	.quad	0x3fe9eadd590c0ad0              # double 0.80991999999999997
	.quad	0x3ff99f340d4dc65c              # double 1.6013679999999999
	.quad	0x401bb55d5f56a7ad              # double 6.9271140000000004
	.quad	0x40107a6a875d56f3              # double 4.1195469999999998
	.quad	0x3fe2feef5ec80c74              # double 0.59362000000000004
	.quad	0x400442e126202539              # double 2.5326559999999998
	.quad	0x4020514812be48a6              # double 8.1587530000000008
	.quad	0x401cb9da16616b55              # double 7.1814960000000001
	.quad	0x400aa33acd5b6806              # double 3.3297020000000002
	.quad	0x3fea2c7b890d5a5c              # double 0.81793000000000004
	.quad	0x401aca9e2bcf91a3              # double 6.6978689999999999
	.quad	0x401705b39e279dd4              # double 5.7555680000000002
	.quad	0x4010f28b2a6b0d95              # double 4.2368589999999999
	.quad	0x401d3d2a1f8e3ac1              # double 7.3097310000000002
	.quad	0x4022fab9f559b3d0              # double 9.4896999999999991
	.quad	0x3f81162281344806              # double 0.0083429999999999997
	.quad	0x3fdb61e0c5a8155d              # double 0.42784899999999998
	.quad	0x401a1f672b884407              # double 6.5306670000000002
	.quad	0x400557e23f24d8fd              # double 2.6679119999999998
	.quad	0x3feed5b035bd512f              # double 0.96358500000000002
	.quad	0x40143536501e2585              # double 5.051965
	.quad	0x4011f7de5082cf53              # double 4.4920590000000002
	.quad	0x401c573fb7a5f41b              # double 7.0852040000000001
	.quad	0x40179c4007570c56              # double 5.9025879999999997
	.quad	0x40235294141e9af6              # double 9.6612860000000005
	.quad	0x4021703eea209aaa              # double 8.7192299999999996
	.quad	0x401b891dde37585c              # double 6.8839030000000001
	.quad	0x400e907e175d13d7              # double 3.8205529999999999
	.quad	0x40178e74afd54541              # double 5.8891169999999997
	.quad	0x40072adddf43c7d6              # double 2.895931
	.quad	0x3fdbbe835dedf1e1              # double 0.43350300000000003
	.quad	0x4022ae0e30446b6a              # double 9.3399520000000003
	.quad	0x401a153111f0c34c              # double 6.5206949999999999
	.quad	0x4012a3076c050bd8              # double 4.6592079999999996
	.quad	0x3ffcc67168f8e7de              # double 1.798448
	.quad	0x3fd02fec56d5cfab              # double 0.25292500000000001
	.quad	0x3ffedb9e8c47a17f              # double 1.9286179999999999
	.quad	0x4019b36fc158fb44              # double 6.4252310000000001
	.quad	0x400ba5ba6efc371e              # double 3.4559220000000002
	.quad	0x4016028dc981beb2              # double 5.5024940000000004
	.quad	0x4011e9aae6c8f755              # double 4.4781909999999998
	.quad	0x4002bb4b2fa93af7              # double 2.3414519999999999
	.quad	0x4005d781c714fce7              # double 2.7302279999999999
	.quad	0x400a3ccc03793144              # double 3.2796859999999999
	.quad	0x401676362a5e785b              # double 5.6154409999999997
	.quad	0x40154790752da986              # double 5.3198869999999996
	.quad	0x401052541d8e8640              # double 4.0803989999999999
	.quad	0x4020f3a9b0681238              # double 8.4759039999999999
	.quad	0x3ff81f06f6944674              # double 1.5075750000000001
	.quad	0x4012336e71cda2b6              # double 4.5502260000000003
	.quad	0x400914a0a0f4d7ae              # double 3.1350720000000001
	.quad	0x3ffb8623d0bfa094              # double 1.7202489999999999
	.quad	0x4007ad035371971c              # double 2.959479
	.quad	0x4008bbe22e5de15d              # double 3.0917400000000002
	.quad	0x40065625a682b628              # double 2.7920639999999999
	.quad	0x4017b39f77292c49              # double 5.9254129999999998
	.quad	0x401507f8012dfd69              # double 5.2577819999999997
	.quad	0x40212916ca46e08f              # double 8.5802519999999998
	.quad	0x3fdf9b52007dd441              # double 0.49385499999999999
	.quad	0x401edf4e874c8ffc              # double 7.7180730000000004
	.quad	0x4018b1fd9ba1b196              # double 6.1738189999999999
	.quad	0x3ffc6eb4e981387a              # double 1.7770280000000001
	.quad	0x3ff3857d1782d384              # double 1.2200899999999999
	.quad	0x3fe9af2f9873ffac              # double 0.80263499999999998
	.quad	0x400644c059210386              # double 2.7835700000000001
	.quad	0x4003e73b42cc2d6b              # double 2.4879060000000002
	.quad	0x40093e7c06e19b91              # double 3.15551
	.quad	0x4022d6d4801f7510              # double 9.4195899999999995
	.quad	0x3ff562fad6cb5350              # double 1.336665
	.quad	0x400c1fdcdf698783              # double 3.515558
	.quad	0x3fc692e62131a8ef              # double 0.17635799999999999
	.quad	0x4023f4a515ce9e5e              # double 9.9778219999999997
	.quad	0x3feb2fd113836a83              # double 0.84958699999999998
	.quad	0x4009efe1da7b0b39              # double 3.24213
	.quad	0x4015d5069a4df480              # double 5.4580330000000004
	.quad	0x40129d2aa5c5f7c6              # double 4.6534829999999996
	.quad	0x4022dbd3a1d323ff              # double 9.4293490000000002
	.quad	0x401338a159817b96              # double 4.8053030000000003
	.quad	0x3fdefff79c842fa5              # double 0.484373
	.quad	0x4012bc0980b24207              # double 4.68363
	.quad	0x3fffe9f9ce8d972d              # double 1.994623
	.quad	0x3fe6ed82ba5a0382              # double 0.71649300000000005
	.quad	0x40212576cce5f740              # double 8.5731719999999996
	.quad	0x401cd1205bc01a37              # double 7.2042250000000001
	.quad	0x401b41476af89c5e              # double 6.8137489999999996
	.quad	0x401bb528283d35eb              # double 6.9269109999999996
	.quad	0x402068079a2834d2              # double 8.2031829999999992
	.quad	0x4015252da98676a7              # double 5.2863069999999999
	.quad	0x400864228997c3d7              # double 3.0488940000000002
	.quad	0x4018841f212d7732              # double 6.1290250000000004
	.quad	0x3fcbe5e2478854ce              # double 0.21795300000000001
	.quad	0x3ffbe536501e2585              # double 1.74346
	.quad	0x40153a0232096788              # double 5.3066490000000002
	.quad	0x400b48e368f08462              # double 3.41059
	.quad	0x4014b6d7a56de332              # double 5.1785569999999996
	.quad	0x40129398e9707182              # double 4.6441379999999999
	.quad	0x4021326b0d9513f9              # double 8.5984730000000003
	.quad	0x4014e54195cc857f              # double 5.2238829999999998
	.quad	0x400b19ffd60e94ee              # double 3.3876949999999999
	.quad	0x40225532a497fa5d              # double 9.1664019999999997
	.quad	0x4022d2ff08893b7e              # double 9.4121020000000009
	.quad	0x400ad6638433d6c7              # double 3.3546819999999999
	.quad	0x400a92ae8e1d6495              # double 3.3216220000000001
	.quad	0x402153cba3012168              # double 8.6636629999999997
	.quad	0x4013e2e0e30446b7              # double 4.9715610000000003
	.quad	0x4020c0cf7caa758a              # double 8.3765830000000001
	.quad	0x4020285985ad538b              # double 8.0788080000000004
	.quad	0x4008acebbba55d1c              # double 3.0844339999999999
	.quad	0x40237618266772d6              # double 9.7306530000000002
	.quad	0x4008139085f4a127              # double 3.0095529999999999
	.quad	0x401e60fc71d60631              # double 7.5947129999999996
	.quad	0x400d079a2834d270              # double 3.6287120000000002
	.quad	0x4011017bd8be7297              # double 4.251449
	.quad	0x3fec18d25edd0529              # double 0.87802999999999998
	.quad	0x40147ffa3b9ae0c1              # double 5.1249779999999996
	.quad	0x4010bd0c80410300              # double 4.1846180000000004
	.quad	0x401c4f68be2f7b18              # double 7.0775480000000002
	.quad	0x4015d033a4723ab0              # double 5.453322
	.quad	0x402336147ae147ae              # double 9.6056249999999999
	.quad	0x3fea4a771c970f7c              # double 0.82159000000000004
	.quad	0x4020f3c6a7ef9db2              # double 8.4761249999999997
	.quad	0x400f3478c868b9fe              # double 3.9006210000000001
	.quad	0x4000e9752977c88e              # double 2.1139929999999998
	.quad	0x40207bafb7e90ff9              # double 8.2415749999999992
	.quad	0x4010c99bb2788db0              # double 4.1968829999999997
	.quad	0x401bf55714b9cb68              # double 6.9895899999999997
	.quad	0x4008c5cee17a02fb              # double 3.0965859999999998
	.quad	0x40236e473471f794              # double 9.7153869999999997
	.quad	0x401f78a0d349be90              # double 7.867801
	.quad	0x3ff842be8bc169c2              # double 1.5162949999999999
	.quad	0x3fc82f48c2e770bd              # double 0.188943
	.quad	0x40208e321a2e7f6f              # double 8.2777259999999995
	.quad	0x402016ac647778dd              # double 8.0442839999999993
	.quad	0x4020e5bc44bf4cb2              # double 8.4487020000000008
	.quad	0x401351600f34506a              # double 4.8294680000000003
	.quad	0x40206f251c193b3a              # double 8.2170799999999993
	.quad	0x4009ee41919ac797              # double 3.241336
	.quad	0x40235c388ebcc6c5              # double 9.6801189999999994
	.quad	0x401df67f90d9d777              # double 7.4907209999999997
	.quad	0x3ff6eac215b9a5a9              # double 1.4323140000000001
	.quad	0x40031491f2dc2b0f              # double 2.3850440000000002
	.quad	0x40129620685553ef              # double 4.6466079999999996
	.quad	0x401cf552e2fbe33b              # double 7.2395740000000002
	.quad	0x402364be1eb4202e              # double 9.6967630000000007
	.quad	0x40143c4ef88b9778              # double 5.0588949999999997
	.quad	0x4012a2934acaff6d              # double 4.6587649999999998
	.quad	0x401d81e68a0d349c              # double 7.3768560000000001
	.quad	0x3fe12c36544fe36d              # double 0.53664699999999999
	.quad	0x401f9d72bcb5fe54              # double 7.9037579999999998
	.quad	0x4022c0b47c73eee5              # double 9.3763769999999997
	.quad	0x40229bc74fb549f9              # double 9.3042549999999995
	.quad	0x401d11ebc83a96d5              # double 7.2675010000000002
	.quad	0x3fff705532617c1c              # double 1.964925
	.quad	0x401aca28fe260b2d              # double 6.6974220000000004
	.quad	0x40088d4dc65c7043              # double 3.0689959999999998
	.quad	0x40214613f4a98aa8              # double 8.6368709999999993
	.quad	0x40111b70ac3a860e              # double 4.2767970000000002
	.quad	0x402234eee0f3cb3e              # double 9.1033849999999994
	.quad	0x4022f1a2834d26fa              # double 9.4719429999999996
	.quad	0x3ff4fe9531550ca2              # double 1.312154
	.quad	0x401c5ef06b37867f              # double 7.092714
	.quad	0x3fbc0b673c4f3ba7              # double 0.10954899999999999
	.quad	0x4022cb25d4a5df22              # double 9.3967729999999996
	.quad	0x400c60c38f366949              # double 3.5472480000000002
	.quad	0x3fe69c4b90214ad3              # double 0.70657899999999996
	.quad	0x4021613a71151612              # double 8.6898990000000005
	.quad	0x400169563a9f383f              # double 2.176434
	.quad	0x4016233226c3b928              # double 5.5343710000000002
	.quad	0x4012045f17bd8be7              # double 4.5042689999999999
	.quad	0x4006744806290eed              # double 2.806778
	.quad	0x4004d098d477bbf9              # double 2.6018539999999999
	.quad	0x4023e7d73c925786              # double 9.952814
	.quad	0x40019ba3ca7503b8              # double 2.200996
	.quad	0x400d87f6f4be835e              # double 3.691389
	.quad	0x40126fc7e6b3fea0              # double 4.6091610000000003
	.quad	0x40000e82949a5658              # double 2.007085
	.quad	0x40124ea18372e6a7              # double 4.5767879999999996
	.quad	0x4003dcfede97d06c              # double 2.4829080000000001
	.quad	0x3ffc5232d2bb2357              # double 1.770068
	.quad	0x400a6705425f2021              # double 3.300303
	.quad	0x3fd9f566490a350d              # double 0.40560299999999999
	.quad	0x3ff1435696e58a33              # double 1.07894
	.quad	0x4022a9fafc8b007a              # double 9.3319930000000006
	.quad	0x400753df2a9d627c              # double 2.915953
	.quad	0x400fbf79c842fa51              # double 3.9684940000000002
	.quad	0x401a7215336deb96              # double 6.6114090000000001
	.quad	0x4013db70691ea78b              # double 4.964296
	.quad	0x40238e4f97edc7ef              # double 9.7779509999999998
	.quad	0x4011980303c07ee1              # double 4.3984490000000003
	.quad	0x3ff44f8e7ddca4b1              # double 1.269423
	.quad	0x3fbdfe64f54d1e97              # double 0.117163
	.quad	0x401694d72799a1fd              # double 5.6453519999999999
	.quad	0x40063da8bd230b9e              # double 2.7801070000000001
	.quad	0x402157ddebd9018e              # double 8.6716149999999992
	.quad	0x4006746aa087ca64              # double 2.8068439999999999
	.quad	0x40225c3dee781840              # double 9.1801600000000007
	.quad	0x401200e6afcce1c6              # double 4.5008800000000004
	.quad	0x4023b97d8cf398e9              # double 9.8622859999999992
	.quad	0x401641ef73c0c1fd              # double 5.5643900000000004
	.quad	0x4020ca65add9c27f              # double 8.3953070000000007
	.quad	0x4022f1c886162f16              # double 9.4722329999999992
	.quad	0x400e3b30728e92d5              # double 3.7789009999999998
	.quad	0x3ff6cd530489d27c              # double 1.425128
	.quad	0x4021be0a84be4042              # double 8.8711739999999999
	.quad	0x4018d3bcd35a8588              # double 6.2067750000000004
	.quad	0x400b3897a67a52ac              # double 3.4026329999999998
	.quad	0x3fffc3d577963993              # double 1.985311
	.quad	0x4020c938bcdfefbf              # double 8.3930109999999996
	.quad	0x401de70da5daf07c              # double 7.475638
	.quad	0x3ff605c358afc47e              # double 1.3764069999999999
	.quad	0x401d56d8f4f93bc1              # double 7.3348120000000003
	.quad	0x401f8c08fa7a8501              # double 7.8867529999999996
	.quad	0x3fea5f56a7ac81d4              # double 0.82413800000000003
	.quad	0x4001699bf5946c33              # double 2.1765669999999999
	.quad	0x3fe2520296b3354c              # double 0.57251099999999999
	.quad	0x400bc38b04ab606b              # double 3.4704799999999998
	.quad	0x400b130d7386099a              # double 3.3843030000000001
	.quad	0x3ff4a7924af0bf1a              # double 1.2909109999999999
	.quad	0x400d46f7a0b5ed8d              # double 3.6596519999999999
	.quad	0x401b1aed99cbee80              # double 6.7762969999999996
	.quad	0x40119b430f49491f              # double 4.4016229999999998
	.quad	0x4020b8e7bc3c5bd1              # double 8.3611430000000002
	.quad	0x401d371c10d7be98              # double 7.3038179999999997
	.quad	0x40205ee675147f13              # double 8.185352
	.quad	0x4020f567fd3f5b60              # double 8.4793090000000007
	.quad	0x40025704ff43419e              # double 2.2924899999999999
	.quad	0x400c3f290abb44e5              # double 3.53084
	.quad	0x401a7060780fdc16              # double 6.6097429999999999
	.quad	0x3fe1f8d2e514c22f              # double 0.56162400000000001
	.quad	0x3ff2b7c88e79aae7              # double 1.169869
	.quad	0x40143327674d1633              # double 5.0499549999999997
	.quad	0x401122e7b3d8e001              # double 4.2840870000000004
	.quad	0x4001f27a20578e5c              # double 2.2433969999999999
	.quad	0x40189a116659d12d              # double 6.1504570000000003
	.quad	0x401610b84988094e              # double 5.5163279999999997
	.quad	0x401ba628027d88c2              # double 6.9122620000000001
	.quad	0x3ff69cf13cee9dd8              # double 1.413316
	.quad	0x3ff713708aac96cc              # double 1.4422459999999999
	.quad	0x402341c2c1b10fd8              # double 9.6284390000000001
	.quad	0x401691a4bdba0a52              # double 5.6422299999999996
	.quad	0x401d7603d577963a              # double 7.3652490000000004
	.quad	0x40234dffc5479d4e              # double 9.6523420000000009
	.quad	0x4023275ea67e846a              # double 9.5768939999999994
	.quad	0x4017cf8a8f3a9b07              # double 5.9526770000000004
	.quad	0x3ff53e047d3d4281              # double 1.3276410000000001
	.quad	0x3fc6f0ae536501e2              # double 0.17921999999999999
	.quad	0x402260bf7f06705d              # double 9.1889610000000008
	.quad	0x401a76e6d9be4cd7              # double 6.6161149999999997
	.quad	0x40107500d5e8d541              # double 4.1142609999999999
	.quad	0x400554013ec460ee              # double 2.6660180000000002
	.quad	0x3fd4ef8ceb356da0              # double 0.327121
	.quad	0x3fe6606fac6045bb              # double 0.699272
	.quad	0x40182304039abf34              # double 6.0341950000000004
	.quad	0x40192e23f24d8fd6              # double 6.2950590000000002
	.quad	0x3ff30c0379314446              # double 1.1904330000000001
	.quad	0x3ffc99b3d07c84b6              # double 1.787525
	.quad	0x4003db09203a322b              # double 2.481951
	.quad	0x4016aa8d21bc126a              # double 5.6665539999999996
	.quad	0x40211993b3a68b1a              # double 8.5499550000000006
	.quad	0x40187aa044ae85ba              # double 6.1197520000000001
	.quad	0x401b5a0232096788              # double 6.8378990000000002
	.quad	0x400937eb28d8665e              # double 3.152304
	.quad	0x4023500ef1348b22              # double 9.6563639999999999
	.quad	0x40216e657b84db9c              # double 8.7156179999999991
	.quad	0x4010122036006d0d              # double 4.0177009999999997
	.quad	0x401b5c02afdda8bd              # double 6.8398539999999999
	.quad	0x40160bfca85caafc              # double 5.5117060000000002
	.quad	0x401a7df1e0828c37              # double 6.6229930000000001
	.quad	0x40066bed740c4157              # double 2.8026990000000001
	.quad	0x400281e2584f4c6e              # double 2.3134199999999998
	.quad	0x401db6be37de939f              # double 7.4284600000000003
	.quad	0x402306e71cda2b5a              # double 9.5134819999999998
	.quad	0x40113295a6c5d207              # double 4.2993990000000002
	.quad	0x4009ae9a2c669058              # double 3.2102550000000001
	.quad	0x401956f0068db8bb              # double 6.3349000000000002
	.quad	0x401c29702e6644d8              # double 7.0404669999999996
	.quad	0x401f4db5525cc426              # double 7.8258869999999998
	.quad	0x400ee947064ece9a              # double 3.8639049999999999
	.quad	0x40216cf97edc7ef1              # double 8.7128409999999992
	.quad	0x4014203b3e9a6f82              # double 5.0314759999999996
	.quad	0x3ff6c97a67a52ac7              # double 1.4241889999999999
	.quad	0x400d4f765fd8adac              # double 3.6638000000000002
	.quad	0x3ff12edaa92e6213              # double 1.073939
	.quad	0x4008f4dd72367e41              # double 3.1195629999999999
	.quad	0x4016054690de0935              # double 5.5051519999999998
	.quad	0x4003d93e5fb71fbc              # double 2.4810759999999998
	.quad	0x3fe8330b5aa71583              # double 0.75623099999999999
	.quad	0x40155dda8bd230ba              # double 5.3416540000000001
	.quad	0x400d0baade657b85              # double 3.6306970000000001
	.quad	0x3febb0468448cf7d              # double 0.86526800000000004
	.quad	0x3fec91b1d92b7fe1              # double 0.89278500000000005
	.quad	0x401cadaf07bfe7e2              # double 7.169613
	.quad	0x4016f012dfd694cd              # double 5.7344470000000003
	.quad	0x40184449dbec2481              # double 6.0666880000000001
	.quad	0x3fe2636f3b213e3e              # double 0.57463799999999998
	.quad	0x4016f2a8c9b84556              # double 5.7369719999999997
	.quad	0x40237ab191dde376              # double 9.7396360000000008
	.quad	0x4021476d7625204b              # double 8.639507
	.quad	0x3ffeb3d3a1d323ff              # double 1.918903
	.quad	0x40211cf7ec3547e0              # double 8.5565789999999993
	.quad	0x40232b4c7f349386              # double 9.5845680000000009
	.quad	0x401a0d6909aed56b              # double 6.513096
	.quad	0x4021933c1ce6c094              # double 8.7875680000000002
	.quad	0x40179c1b54195cc8              # double 5.9024479999999997
	.quad	0x4006738de6ddf00b              # double 2.8064230000000001
	.quad	0x40162e2867275686              # double 5.5450759999999999
	.quad	0x3fbe1b6d43d03969              # double 0.117606
	.quad	0x4004d4a44c7b02d6              # double 2.6038290000000002
	.quad	0x40209ebd4cfd08d5              # double 8.3100380000000005
	.quad	0x40232ef459d9902a              # double 9.5917080000000006
	.quad	0x401896bf8769ec2d              # double 6.1472150000000001
	.quad	0x4001db46fdeb52ca              # double 2.2320690000000001
	.quad	0x400ad8f7121ab4b7              # double 3.3559399999999999
	.quad	0x3ff948c3f3e0370d              # double 1.580265
	.quad	0x401d186876e1dead              # double 7.2738360000000002
	.quad	0x4000268ec52a411c              # double 2.0188269999999999
	.quad	0x3faab430f49491f3              # double 0.052156000000000001
	.quad	0x401bd3ee5eedcc21              # double 6.9569640000000001
	.quad	0x400620c9539b8887              # double 2.7660089999999999
	.quad	0x401fec4c165907d9              # double 7.9807589999999999
	.quad	0x401c75842b734b51              # double 7.1147619999999998
	.quad	0x4017596e158750c2              # double 5.8373340000000002
	.quad	0x4000bb0dd82fd75e              # double 2.0913349999999999
	.quad	0x401cc383ad9f0a1c              # double 7.1909320000000001
	.quad	0x401742d1f1cfbb95              # double 5.8152540000000004
	.quad	0x4011983c6c97d8cf              # double 4.3986679999999998
	.quad	0x4022ce0ded288ce7              # double 9.4024499999999999
	.quad	0x400ac24dd2f1a9fc              # double 3.344875
	.quad	0x4023751bf7ad4b27              # double 9.7287289999999995
	.quad	0x400b7fca85caafbc              # double 3.437398
	.quad	0x40225f3dc054ef46              # double 9.1860180000000007
	.quad	0x4022cf97460242d0              # double 9.4054509999999993
	.quad	0x40216ed3953dea46              # double 8.7164579999999994
	.quad	0x401a064d3bf2f556              # double 6.5061540000000004
	.quad	0x40189e3e29307af2              # double 6.1545339999999999
	.quad	0x401550dfdef8487c              # double 5.3289790000000004
	.quad	0x3ffe80431bde82d8              # double 1.9063140000000001
	.quad	0x4015e08ede54b48d              # double 5.4692949999999998
	.quad	0x4020a85c67dfe32a              # double 8.32883
	.quad	0x4017e24a276b7ed4              # double 5.9709859999999999
	.quad	0x400fb4df8b157258              # double 3.963317
	.quad	0x4011a81344806291              # double 4.4141360000000001
	.quad	0x4020240bdcad14a1              # double 8.0704030000000007
	.quad	0x401695b7cfe58601              # double 5.6462089999999998
	.quad	0x40162d4d834091c1              # double 5.5442410000000004
	.quad	0x3ffc85bc01a36e2f              # double 1.7826500000000001
	.quad	0x4015f13f077ccc03              # double 5.4855919999999996
	.quad	0x401ad6733ebbfd72              # double 6.7094240000000003
	.quad	0x4023c709741d084f              # double 9.8887440000000008
	.quad	0x400ca00000000000              # double 3.578125
	.quad	0x40109c4b09e98dce              # double 4.1526300000000003
	.quad	0x400c2f6cefed6345              # double 3.5231569999999999
	.quad	0x4018c0a8d21bc127              # double 6.1881440000000003
	.quad	0x3ffd1916872b020c              # double 1.8186249999999999
	.quad	0x4022040980b24207              # double 9.0078849999999999
	.quad	0x400572e59af9ebea              # double 2.6811020000000001
	.quad	0x401e07f993d5347a              # double 7.5077879999999997
	.quad	0x40107e8a71de69ad              # double 4.1235749999999998
	.quad	0x402135a2f8bdec5f              # double 8.6047589999999996
	.quad	0x3fdee40852b4d8ba              # double 0.48266799999999999
	.quad	0x3fffa9131ec0b567              # double 1.9787779999999999
	.quad	0x4014092684cf073a              # double 5.0089360000000003
	.quad	0x3ff138d60a633051              # double 1.076376
	.quad	0x400176d549731099              # double 2.1830240000000001
	.quad	0x401e4a81dc0db270              # double 7.5727609999999999
	.quad	0x40224d130df9bdc7              # double 9.1505360000000007
	.quad	0x4015d9752977c88e              # double 5.4623609999999996
	.quad	0x4022945b6c3760bf              # double 9.2897599999999994
	.quad	0x3fff1ab4b72c5198              # double 1.9440200000000001
	.quad	0x401d6d5e071c53f4              # double 7.3568040000000003
	.quad	0x3ff3e8d8665e02eb              # double 1.2443470000000001
	.quad	0x4017a9bf162ae4b0              # double 5.9157679999999999
	.quad	0x3ff633ffac1d29dc              # double 1.3876949999999999
	.quad	0x4001d4d26fa3fcca              # double 2.228917
	.quad	0x401050ccff21b3af              # double 4.0789070000000001
	.quad	0x401b3e0e30446b6a              # double 6.8106010000000001
	.quad	0x402236f672b88440              # double 9.1073489999999992
	.quad	0x402179e492bc2fc7              # double 8.7380720000000007
	.quad	0x4010da2877ee4e27              # double 4.2130450000000002
	.quad	0x401563964a59c066              # double 5.3472530000000003
	.quad	0x400b8d4f5903a754              # double 3.4439989999999998
	.quad	0x40025fb506dd69d3              # double 2.296732
	.quad	0x401c4ac8e68e3ef3              # double 7.0730320000000004
	.quad	0x400aa6f1dc50ce4f              # double 3.3315160000000001
	.quad	0x40134fcfc3f811f5              # double 4.827941
	.quad	0x400a05e13b18dac2              # double 3.2528709999999998
	.quad	0x402192a92e62131b              # double 8.7864470000000008
	.quad	0x4021b462e4d1a650              # double 8.8523169999999993
	.quad	0x40204d6fda836eb5              # double 8.1512440000000002
	.quad	0x40003e718a86d71f              # double 2.0304899999999999
	.quad	0x4022f1a8049667b6              # double 9.4719850000000001
	.quad	0x40229d655e28aa43              # double 9.3074139999999996
	.quad	0x40215a465a57646b              # double 8.6763180000000002
	.quad	0x3fff47b139c94f6a              # double 1.955003
	.quad	0x401a3137b07075b4              # double 6.5480640000000001
	.quad	0x4012acd898b2e9cd              # double 4.6687950000000003
	.quad	0x3ffb1cb252ce032e              # double 1.6945060000000001
	.quad	0x3ff39cc857f3061c              # double 1.2257769999999999
	.quad	0x402251882adc4c9d              # double 9.1592420000000008
	.quad	0x3fe1b9fba450acc1              # double 0.55395300000000003
	.quad	0x4017dfbb0e5e6794              # double 5.9684869999999997
	.quad	0x40235fa2f05a708f              # double 9.6867900000000002
	.quad	0x40217a3875925354              # double 8.7387119999999995
	.quad	0x400eabebe1650a46              # double 3.8339460000000001
	.quad	0x4022f009917939a8              # double 9.4688230000000004
	.quad	0x401ee3b4f6167232              # double 7.7223699999999997
	.quad	0x3ffcfc2eba27ae9b              # double 1.8115680000000001
	.quad	0x3fddf38c5436b8fa              # double 0.46799000000000002
	.quad	0x4023cdbb59ddc1e8              # double 9.9018200000000007
	.quad	0x401b22f8bdec5f39              # double 6.7841519999999997
	.quad	0x40151a8c154c985f              # double 5.275925
	.quad	0x401933250b52439a              # double 6.2999460000000003
	.quad	0x4017d44567125dd1              # double 5.9572960000000004
	.quad	0x401b65718eb89507              # double 6.8490659999999997
	.quad	0x400b9d4f15e7c8d2              # double 3.4518110000000002
	.quad	0x40179c48adeebb34              # double 5.9026209999999999
	.quad	0x40162f6ad70e6f2f              # double 5.5463060000000004
	.quad	0x40081821af7d30ad              # double 3.0117829999999999
	.quad	0x3fec2eba27ae9ab3              # double 0.88070400000000004
	.quad	0x3ff31b4fe79ee02a              # double 1.1941679999999999
	.quad	0x400117e77d523b36              # double 2.1366719999999999
	.quad	0x4022d0e15011904b              # double 9.4079689999999995
	.quad	0x4020a3649d388a8b              # double 8.3191269999999999
	.quad	0x4021799695d91ab9              # double 8.7374770000000002
	.quad	0x4011d5e74299d884              # double 4.4588900000000002
	.quad	0x3fd273365881a155              # double 0.28828199999999998
	.quad	0x4011179463cfb331              # double 4.2730269999999999
	.quad	0x40238cc0bdcad14a              # double 9.7749079999999999
	.quad	0x400d9a4f00ef1349              # double 3.7003460000000001
	.quad	0x401d3a1f4b1ee243              # double 7.3067599999999997
	.quad	0x3fe2cc144028e4fc              # double 0.58741200000000005
	.quad	0x40227967ec7863bf              # double 9.2371210000000001
	.quad	0x401c32795703f2d4              # double 7.0492910000000002
	.quad	0x401cad7dbf487fcc              # double 7.1694250000000004
	.quad	0x400192873bc903ea              # double 2.1965469999999998
	.quad	0x3ffd4f54d1e96c40              # double 1.8318680000000001
	.quad	0x400cc29cfdd22856              # double 3.5950259999999998
	.quad	0x401eda21ea359360              # double 7.7130200000000002
	.quad	0x40135e64b2314014              # double 4.8421810000000001
	.quad	0x40213628cbd1244a              # double 8.6057799999999993
	.quad	0x4023e221a719b4dd              # double 9.9416630000000001
	.quad	0x40235902363b2570              # double 9.673845
	.quad	0x401c400ffda4052d              # double 7.0625609999999996
	.quad	0x4004bc6b8b69552e              # double 2.5920019999999999
	.quad	0x4020c4e789e774ef              # double 8.3845790000000004
	.quad	0x40117af78feef5ed              # double 4.3700850000000004
	.quad	0x40144f52b90a7829              # double 5.077464
	.quad	0x400e26f60e0eb67c              # double 3.7690239999999999
	.quad	0x4005424cc6822ff1              # double 2.6573730000000002
	.quad	0x40191f0b6b6e0d24              # double 6.2803170000000001
	.quad	0x4014fb5ed8d36b4c              # double 5.2454789999999996
	.quad	0x40102e72da122fad              # double 4.0453599999999996
	.quad	0x400c30342aa9f7b6              # double 3.5235370000000001
	.quad	0x401b4a67e846a5d7              # double 6.8226620000000002
	.quad	0x401f74c1a8ac5c14              # double 7.86402
	.quad	0x401de3c42a66dbd7              # double 7.4724279999999998
	.quad	0x402162875d56f32c              # double 8.6924390000000002
	.quad	0x40201529dc725c3e              # double 8.0413350000000001
	.quad	0x401c5eb8950763a2              # double 7.0925010000000004
	.quad	0x4017c9f666234a88              # double 5.9472290000000001
	.quad	0x3fc5171e29b6b2af              # double 0.164768
	.quad	0x4021be789e774eec              # double 8.872014
	.quad	0x3ffa70110a137f39              # double 1.6523600000000001
	.quad	0x4010f102bc72e276              # double 4.2353620000000003
	.quad	0x4022b4bb1af3a14d              # double 9.3529900000000001
	.quad	0x401dba9ac36544fe              # double 7.4322309999999998
	.quad	0x4013ee2ac3222920              # double 4.9825850000000003
	.quad	0x401cfa87e38eb032              # double 7.2446590000000004
	.quad	0x3fea943e10060781              # double 0.830596
	.quad	0x400d27b6fe2e6ea8              # double 3.6443919999999999
	.quad	0x3ff2fc4f3ba775fb              # double 1.186599
	.quad	0x401d3ae7d566cf42              # double 7.307525
	.quad	0x3ff30c729f59ccfb              # double 1.190539
	.quad	0x40212c347e8ccdd9              # double 8.5863379999999996
	.quad	0x4022cec11a11233e              # double 9.4038170000000001
	.quad	0x4013cd9945b6c376              # double 4.95078
	.quad	0x40200bd1244a6224              # double 8.0230800000000002
	.quad	0x402275aaf78feef6              # double 9.2298200000000001
	.quad	0x4011a8ea39c51dac              # double 4.4149560000000001
	.quad	0x4021c30318b9346a              # double 8.8808830000000007
	.quad	0x4013a984e3ffef39              # double 4.915546
	.quad	0x401afb242070b8d0              # double 6.7452550000000002
	.quad	0x401fecd4aa10e022              # double 7.9812799999999999
	.quad	0x4022ba2ec28b2a6b              # double 9.3636379999999999
	.quad	0x40166720c8cd63cc              # double 5.6007110000000004
	.quad	0x4022b886bdf4c2b5              # double 9.3604029999999998
	.quad	0x400b476188b1140a              # double 3.4098540000000002
	.quad	0x3ffeb5286b59146e              # double 1.9192279999999999
	.quad	0x400b095faa8a82a5              # double 3.3795769999999998
	.quad	0x3ffc4ac083126e98              # double 1.7682500000000001
	.quad	0x400c13a68b19a416              # double 3.509595
	.quad	0x401a2b2fa93af74d              # double 6.5421740000000002
	.quad	0x401484463065f959              # double 5.1291739999999999
	.quad	0x400f057214f0520d              # double 3.877659
	.quad	0x401418fbca1059ea              # double 5.0243979999999997
	.quad	0x401dd3f39d1b2e5a              # double 7.4569840000000003
	.quad	0x3ff16c8e68e3ef28              # double 1.0890029999999999
	.quad	0x4011df7a4e7ab756              # double 4.4682399999999998
	.quad	0x402185db76b3bb84              # double 8.7614400000000003
	.quad	0x4021274ff865d7cb              # double 8.5767819999999997
	.quad	0x4015ffd199bb2789              # double 5.4998230000000001
	.quad	0x400faf7f498c3b0c              # double 3.9606919999999999
	.quad	0x3ffe8588a04d1202              # double 1.9076010000000001
	.quad	0x401e28b8f14db595              # double 7.5397679999999995
	.quad	0x401428a19c9d5a18              # double 5.0396789999999996
	.quad	0x3feeb64e054690de              # double 0.959754
	.quad	0x3ffefabb8800eae2              # double 1.9362140000000001
	.quad	0x4002aca8198f1d3f              # double 2.3343050000000001
	.quad	0x40009166e008e9b4              # double 2.0709970000000002
	.quad	0x3ff4476d117b5287              # double 1.2674380000000001
	.quad	0x401a267caea747d8              # double 6.537585
	.quad	0x3fe4969e3c968944              # double 0.64338600000000001
	.quad	0x3fe074cf4a558ea8              # double 0.51425900000000002
	.quad	0x3fe9a7b9170d62bf              # double 0.80172399999999999
	.quad	0x40129d413122b7bb              # double 4.6535690000000001
	.quad	0x401de6c8711d798e              # double 7.4753740000000004
	.quad	0x4021449ecb31c21a              # double 8.6340240000000001
	.quad	0x3fdc768dfbd6a594              # double 0.44473600000000002
	.quad	0x4019e741d084e832              # double 6.4758370000000003
	.quad	0x4013ebba12b5e52a              # double 4.9802020000000002
	.quad	0x4005d6c3fc43b2dd              # double 2.7298659999999999
	.quad	0x3fe85dbb9cf9a06a              # double 0.76144199999999995
	.quad	0x3ffe72dc2b0ea183              # double 1.9030419999999999
	.quad	0x40104620ab713272              # double 4.0684839999999998
	.quad	0x401c6df5cf2495e1              # double 7.1073829999999996
	.quad	0x4019688765ba6efc              # double 6.3520789999999998
	.quad	0x4012e247cb70ac3b              # double 4.7209770000000004
	.quad	0x4017dfa2ad3e920c              # double 5.968394
	.quad	0x3fe422291fb3fa6e              # double 0.62917000000000001
	.quad	0x40128feb8d823422              # double 4.6405469999999998
	.quad	0x400fb3d96638433d              # double 3.9628169999999998
	.quad	0x401781bb8c32a8ca              # double 5.8766920000000002
	.quad	0x40209c25f202107b              # double 8.3049769999999992
	.quad	0x400b5bbe878fabda              # double 3.419797
	.quad	0x401929c4545846e9              # double 6.290788
	.quad	0x400b7d55e6bc621b              # double 3.4361989999999998
	.quad	0x401ba3bb83cf2cf9              # double 6.9098949999999997
	.quad	0x40055daf07bfe7e2              # double 2.670744
	.quad	0x4002f461b6d43d04              # double 2.3693270000000002
	.quad	0x4011a5c52e72da12              # double 4.4118849999999998
	.quad	0x4011eb7952d234ec              # double 4.4799550000000004
	.quad	0x4010c08feac42e99              # double 4.1880490000000004
	.quad	0x40144647fdc5931d              # double 5.0686340000000003
	.quad	0x400585b63d3e4ef0              # double 2.6902889999999999
	.quad	0x4018b76d117b5287              # double 6.1791270000000003
	.quad	0x400f9da7b0b39192              # double 3.9519799999999998
	.quad	0x400630f7b9e060fe              # double 2.7739099999999999
	.quad	0x401f9577d955714c              # double 7.8959650000000003
	.quad	0x40014b4e9813879c              # double 2.1617709999999999
	.quad	0x4023c42c5e2cdc01              # double 9.8831509999999997
	.quad	0x4017332f44912989              # double 5.7999850000000004
	.quad	0x40060945f9df548f              # double 2.7545280000000001
	.quad	0x3ff0e2ac322291fb              # double 1.0553399999999999
	.quad	0x3ffd00ef1348b220              # double 1.8127279999999999
	.quad	0x4022143e963dc487              # double 9.0395400000000006
	.quad	0x400b72ef911cf356              # double 3.4311210000000001
	.quad	0x400f36df3f961805              # double 3.9017930000000001
	.quad	0x4023074ddf86e3b4              # double 9.5142659999999992
	.quad	0x3fd652c9d16fc9bc              # double 0.34880299999999997
	.quad	0x401d18bfc2224edf              # double 7.2741689999999997
	.quad	0x401944f2f123c42a              # double 6.3173329999999996
	.quad	0x4016c0389f83be66              # double 5.687716
	.quad	0x401d6990f301eabc              # double 7.3530920000000002
	.quad	0x4012a9eba6aca793              # double 4.6659379999999997
	.quad	0x3ff43de3fbbd7b20              # double 1.26511
	.quad	0x401eed8409e55c10              # double 7.7319490000000002
	.quad	0x401b4e3eaf6837f8              # double 6.8264110000000002
	.quad	0x401a7b1b36bd2b6f              # double 6.6202209999999999
	.quad	0x400a3c13fd0d0679              # double 3.2793350000000001
	.quad	0x4023af2ae07e5a79              # double 9.842124
	.quad	0x4022d79ca5bd944b              # double 9.4211170000000006
	.quad	0x40141a56de33269e              # double 5.025722
	.quad	0x3fcfc829cfdd2285              # double 0.24829599999999999
	.quad	0x3fd8b6bb1290257d              # double 0.38615300000000002
	.quad	0x4013b1565c2d2780              # double 4.9231809999999996
	.quad	0x3febb250b524399b              # double 0.86551699999999998
	.quad	0x40111dc8fb86f47b              # double 4.2790869999999996
	.quad	0x4010201d9f4d37c1              # double 4.0313629999999998
	.quad	0x4014678bbd380453              # double 5.1011189999999997
	.quad	0x3ff6bd0f1f57b41c              # double 1.421157
	.quad	0x40124bc33f85510d              # double 4.5739869999999998
	.quad	0x40218a61bf37b8d4              # double 8.7702770000000001
	.quad	0x401214acf312b1b3              # double 4.5201909999999996
	.quad	0x401e6440f2389720              # double 7.5979039999999998
	.quad	0x3ff518958d9b5e96              # double 1.3185020000000001
	.quad	0x40110b7a1c25d074              # double 4.2612079999999999
	.quad	0x3ff6029bf162ae4b              # double 1.375637
	.quad	0x401439a8cdea033e              # double 5.0563079999999996
	.quad	0x4022b30c4588a04d              # double 9.3497029999999999
	.quad	0x401fa374bc6a7efa              # double 7.9096250000000001
	.quad	0x4011b3cfb3311a54              # double 4.4255969999999998
	.quad	0x40118fc8b0079a28              # double 4.3904139999999998
	.quad	0x401ca2bd3c361134              # double 7.158925
	.quad	0x3fec2a087ca643cc              # double 0.88013099999999999
	.quad	0x4022e197c3d68406              # double 9.4406110000000005
	.quad	0x4017615ad106ee31              # double 5.8450730000000002
	.quad	0x40233f89e774eebf              # double 9.6240989999999992
	.quad	0x40100e00d1b71759              # double 4.0136750000000001
	.quad	0x401d54ece9a2c669              # double 7.332935
	.quad	0x4020d6ec17ebaf10              # double 8.4197699999999998
	.quad	0x3ff7f9a5a89b951c              # double 1.4984489999999999
	.quad	0x4004602c9081c2e3              # double 2.5469599999999999
	.quad	0x3fdbcf2064239607              # double 0.43451699999999999
	.quad	0x4014162a5e785b5b              # double 5.0216459999999996
	.quad	0x401ad5286b59146e              # double 6.7081619999999997
	.quad	0x4011a0dd82fd75e2              # double 4.407095
	.quad	0x3fd53eea209aaa3b              # double 0.33196500000000001
	.quad	0x4022aea875d56f33              # double 9.3411290000000005
	.quad	0x40141851eb851eb8              # double 5.0237499999999997
	.quad	0x4016f57ff9b56324              # double 5.7397460000000002
	.quad	0x3ff202b734b51373              # double 1.1256630000000001
	.quad	0x40232be89a88ace2              # double 9.5857589999999995
	.quad	0x402226ab14ec204f              # double 9.0755239999999997
	.quad	0x4021dfb4c3c18b50              # double 8.9369259999999997
	.quad	0x40178667f90d9d77              # double 5.8812559999999996
	.quad	0x4009754da4ce8102              # double 3.182277
	.quad	0x401c8a322af57710              # double 7.134957
	.quad	0x401f0f0025bfad2a              # double 7.7646490000000004
	.quad	0x3fe9b80ecfa69be1              # double 0.80371800000000004
	.quad	0x401bb4280ae10492              # double 6.9259339999999998
	.quad	0x4018f48adeebb342              # double 6.2388110000000001
	.quad	0x4022d28e0c9d9d34              # double 9.4112399999999993
	.quad	0x400228fe260b2c84              # double 2.270016
	.quad	0x40129c4e7253da73              # double 4.6526430000000003
	.quad	0x40221ffed20296b3              # double 9.0624909999999996
	.quad	0x402206b702602c91              # double 9.0131150000000009
	.quad	0x40219f2e275ab7dc              # double 8.8108989999999991
	.quad	0x402301eff9f87f02              # double 9.5037839999999996
	.quad	0x400be8e60807357e              # double 3.4887199999999998
	.quad	0x3fe50f57f737da62              # double 0.65812300000000001
	.quad	0x40137cf9e3864cb6              # double 4.8720470000000002
	.quad	0x40180090f733a8a4              # double 6.000553
	.quad	0x402130088509bf9c              # double 8.5938149999999993
	.quad	0x3ff79611ba3ca750              # double 1.4741379999999999
	.quad	0x4020e33ce63a5c1c              # double 8.4438239999999993
	.quad	0x4021cec3b927d45a              # double 8.9038369999999993
	.quad	0x3fd6ecf206423960              # double 0.35821199999999997
	.quad	0x402393968d759ee9              # double 9.7882580000000007
	.quad	0x4014b5bb7b6bb129              # double 5.177473
	.quad	0x4013d52deca2552a              # double 4.958183
	.quad	0x400ae101f31f46ed              # double 3.3598669999999999
	.quad	0x4000900474d9c6b0              # double 2.0703209999999999
	.quad	0x401746c1e364bec6              # double 5.8190989999999996
	.quad	0x401754bd76ee73e7              # double 5.8327540000000004
	.quad	0x3ff1b219220ff541              # double 1.1059810000000001
	.quad	0x40220ae7b3d8e001              # double 9.0212990000000008
	.quad	0x402342dfd694ccab              # double 9.6306139999999995
	.quad	0x4022b21dda059a74              # double 9.3478840000000005
	.quad	0x4014584a0e410b63              # double 5.08622
	.quad	0x4019807faa044ae8              # double 6.3754869999999997
	.quad	0x400ebcf4e874c900              # double 3.8422640000000001
	.quad	0x4008554c122749f1              # double 3.041649
	.quad	0x4016f681669ced0b              # double 5.7407279999999998
	.quad	0x40122804102ff8ec              # double 4.5390779999999999
	.quad	0x401f00e0a84be404              # double 7.7508569999999999
	.quad	0x400a9b8fde2ef4e0              # double 3.325958
	.quad	0x401779d8409e55c1              # double 5.868989
	.quad	0x4018bd43d03968d7              # double 6.1848289999999997
	.quad	0x3fffc9917939a7c1              # double 1.9867109999999999
	.quad	0x4022071bcdbbe015              # double 9.0138839999999991
	.quad	0x401b04a05dd8f92b              # double 6.754518
	.quad	0x4010cafa7221858c              # double 4.1982210000000002
	.quad	0x3ffb218ce2d1f1d0              # double 1.6956910000000001
	.quad	0x4000106b37867f0b              # double 2.0080170000000002
	.quad	0x4021eb250b52439a              # double 8.9592670000000005
	.quad	0x4008f6abde3fbbd8              # double 3.1204450000000001
	.quad	0x40239c91afc04c8c              # double 9.8057990000000003
	.quad	0x3ff1fe0589acbc8c              # double 1.124517
	.quad	0x4023840db2702a35              # double 9.7579170000000008
	.quad	0x40224382e44b6e93              # double 9.1318579999999994
	.quad	0x4022c5d5f56a7ac8              # double 9.3863979999999997
	.quad	0x40113f57f737da62              # double 4.3118590000000001
	.quad	0x4001ed66f0cfe154              # double 2.2409189999999999
	.quad	0x401f755043e5321e              # double 7.8645639999999997
	.quad	0x4006eda98676a726              # double 2.8660459999999999
	.quad	0x4009fa72a7bd48cb              # double 3.2472889999999999
	.quad	0x3ff88467381d7dbf              # double 1.5323249999999999
	.quad	0x3ffb0a58b3f63c32              # double 1.690026
	.quad	0x401d15d9a0f0a5f0              # double 7.2713380000000001
	.quad	0x401e547a9e2bcf92              # double 7.5824990000000003
	.quad	0x400deb0fadf2ecf2              # double 3.739776
	.quad	0x4016ed5bee3d5fdd              # double 5.7317960000000001
	.quad	0x4006741205bc01a3              # double 2.8066749999999998
	.quad	0x3ff093d74d594f27              # double 1.0360940000000001
	.quad	0x4009e49129888f86              # double 3.236605
	.quad	0x400313ad5bee3d60              # double 2.3846080000000001
	.quad	0x400029ec2ce46499              # double 2.02047
	.quad	0x400fb5dc4007570c              # double 3.9637989999999999
	.quad	0x401f78b3700474da              # double 7.8678720000000002
	.quad	0x40230042fa509396              # double 9.5005109999999995
	.quad	0x401f6e9c4545846f              # double 7.8580180000000003
	.quad	0x3ffbd38476f2a5a4              # double 1.7391399999999999
	.quad	0x401db4f97edc7ef1              # double 7.4267329999999996
	.quad	0x4021be115592d98c              # double 8.871226
	.quad	0x4016392c8c5004fb              # double 5.5558339999999999
	.quad	0x400eca5accd53049              # double 3.8488060000000002
	.quad	0x3ff247a28bb0a2cb              # double 1.1424890000000001
	.quad	0x401ef95703f2d3c8              # double 7.7434960000000003
	.quad	0x4013b9129888f862              # double 4.9307350000000003
	.quad	0x401d89f4906034f4              # double 7.384722
	.quad	0x3fe9fe5c91d14e3c              # double 0.81230000000000002
	.quad	0x400064039abf3387              # double 2.048835
	.quad	0x401a9111ada76d98              # double 6.6416690000000003
	.quad	0x4015d7785729b281              # double 5.4604200000000001
	.quad	0x4019d3a42f1ed17c              # double 6.4566809999999997
	.quad	0x4023e1e4f765fd8b              # double 9.9412000000000002
	.quad	0x400bd1e3a7daa4fd              # double 3.4774850000000002
	.quad	0x401354ea8da7f3cf              # double 4.8329259999999996
	.quad	0x401f79c1b54195cd              # double 7.8689030000000004
	.quad	0x3ff568e4fb97bb73              # double 1.338109
	.quad	0x400b906c43f5f916              # double 3.445519
	.quad	0x3ff123465625a683              # double 1.0711120000000001
	.quad	0x400b126e978d4fdf              # double 3.3839999999999999
	.quad	0x3fe7483ec892ab69              # double 0.72756900000000002
	.quad	0x400186a76965f527              # double 2.1907489999999998
	.quad	0x400206516db0dd83              # double 2.253085
	.quad	0x401fbffef39085f5              # double 7.9374960000000003
	.quad	0x4020c60eb67c2870              # double 8.3868310000000008
	.quad	0x400bdcafb3b75211              # double 3.4827569999999999
	.quad	0x401a773c0c1fc8f3              # double 6.6164399999999999
	.quad	0x401f1858793dd97f              # double 7.7737749999999996
	.quad	0x400ae0ed80a17b0f              # double 3.3598279999999998
	.quad	0x40111e004b7f5a53              # double 4.2792979999999998
	.quad	0x3fc6100e6afcce1c              # double 0.17236499999999999
	.quad	0x3ff901355475a31a              # double 1.5627949999999999
	.quad	0x4012824a276b7ed4              # double 4.6272359999999999
	.quad	0x4022ab526527a205              # double 9.3346129999999992
	.quad	0x401177b7414a4d2b              # double 4.3669099999999998
	.quad	0x40204e7dfe32a066              # double 8.1533049999999996
	.quad	0x40235ef39085f4a1              # double 9.6854519999999997
	.quad	0x3fe7d9b3d07c84b6              # double 0.74532500000000002
	.quad	0x3ffc7294dd72367e              # double 1.7779739999999999
	.quad	0x40094cbe1eb4202e              # double 3.1624720000000002
	.quad	0x400e2c471b478423              # double 3.77162
	.quad	0x4019cd87b56b8738              # double 6.4507130000000004
	.quad	0x4006cbe0589acbc9              # double 2.8495490000000001
	.quad	0x40124948dc11e42e              # double 4.5715669999999999
	.quad	0x4021461cffeb074a              # double 8.6369399999999992
	.quad	0x401e32aa9f7b5aea              # double 7.5494789999999998
	.quad	0x401e7a52ef911cf3              # double 7.6194569999999997
	.quad	0x4002ca3c64345cff              # double 2.3487480000000001
	.quad	0x40231f214f0520d1              # double 9.5608009999999996
	.quad	0x40138317acc4ef89              # double 4.8780200000000002
	.quad	0x4023da3ee1bd1eda              # double 9.9262610000000002
	.quad	0x401510b49e01de27              # double 5.2663140000000004
	.quad	0x40211659d12cadde              # double 8.5436540000000001
	.quad	0x401efe56cd6c2efd              # double 7.7483779999999997
	.quad	0x402225d701d9f4d3              # double 9.0739059999999991
	.quad	0x40000ef4e0114d2f              # double 2.0073029999999998
	.quad	0x401f6ec2ce464990              # double 7.8581649999999996
	.quad	0x4023f3de82d7b635              # double 9.9763070000000002
	.quad	0x4018e85b18548a9c              # double 6.2269100000000002
	.quad	0x40210393037d6302              # double 8.5069809999999997
	.quad	0x3ff12a0fd3b29a1c              # double 1.0727690000000001
	.quad	0x400a7cfe58601366              # double 3.311032
	.quad	0x401154388ebcc6c5              # double 4.3322469999999997
	.quad	0x4017f2e48e8a71de              # double 5.9871999999999996
	.quad	0x401487867f0aa21a              # double 5.1323489999999996
	.quad	0x401c20da5daf07c0              # double 7.0320830000000001
	.quad	0x3fe3ebca5375c8da              # double 0.622533
	.quad	0x40127e935b91f70e              # double 4.6236090000000001
	.quad	0x4019e1e85fd04a30              # double 6.4706130000000002
	.quad	0x3fe4193f6c2699c8              # double 0.62808200000000003
	.quad	0x401b7df71eafee70              # double 6.8730130000000003
	.quad	0x40181a9a8049667b              # double 6.0259799999999997
	.quad	0x40155e99a62ed352              # double 5.3423829999999999
	.quad	0x40147596c82e019b              # double 5.114833
	.quad	0x401f4648c7192ea5              # double 7.8186369999999998
	.quad	0x3ff4ca979e16d6dc              # double 1.299461
	.quad	0x4005653eb399f5e0              # double 2.674436
	.quad	0x3ff1676427c7c526              # double 1.087742
	.quad	0x401e67b890d5a5b9              # double 7.6012899999999996
	.quad	0x402344471b478423              # double 9.6333549999999998
	.quad	0x4012738d1d8a5482              # double 4.6128429999999998
	.quad	0x3fff77eb28d8665e              # double 1.966777
	.quad	0x400cc411c2a02321              # double 3.5957370000000002
	.quad	0x401fc79e59f2ba9d              # double 7.9449399999999998
	.quad	0x401f4cd20afa2f06              # double 7.8250200000000003
	.quad	0x3f9893b7d84901d2              # double 0.024001000000000001
	.quad	0x40148ec0724b76f7              # double 5.1394060000000001
	.quad	0x3fd9225fa658c4bd              # double 0.39272299999999999
	.quad	0x4021aff62b6ae7d5              # double 8.8436749999999993
	.quad	0x3ff4d2923e5b8562              # double 1.301409
	.quad	0x3fc62ea0fd3b29a2              # double 0.17329800000000001
	.quad	0x4020782d7b634dad              # double 8.2347219999999997
	.quad	0x4022553d859c8c93              # double 9.1664849999999998
	.quad	0x400c0d3953dea466              # double 3.5064570000000002
	.quad	0x4022c0164840e172              # double 9.3751700000000007
	.quad	0x40104bd1244a6224              # double 4.0740400000000001
	.quad	0x4000304ccee5abc1              # double 2.023584
	.quad	0x401aadf9bdc69f8c              # double 6.6698979999999999
	.quad	0x401dddb402d16b98              # double 7.466507
	.quad	0x4020555f99c38b05              # double 8.1667450000000006
	.quad	0x40156a9f7b5aea31              # double 5.3541239999999997
	.quad	0x401193a322af5771              # double 4.394177
	.quad	0x4017dcc9a77e5eab              # double 5.9656130000000003
	.quad	0x3ffea2cdc011d367              # double 1.914747
	.quad	0x3ffa87f455a7d242              # double 1.6581920000000001
	.quad	0x4015297e996312f5              # double 5.2905220000000002
	.quad	0x3f9ca2db61bb05fb              # double 0.027965
	.quad	0x4005dbf487fcb924              # double 2.7324000000000002
	.quad	0x4020ef455a7d2418              # double 8.4673259999999999
	.quad	0x401f7e892253111f              # double 7.8735699999999999
	.quad	0x3feb5be1a8262457              # double 0.854966
	.quad	0x401edd3e920c069e              # double 7.7160589999999996
	.quad	0x4022796d6dc1a47b              # double 9.2371630000000007
	.quad	0x40087daa4fca42af              # double 3.0613600000000001
	.quad	0x4000dc5cdd50a88f              # double 2.107599
	.quad	0x401e3fe3f359ff50              # double 7.5623930000000001
	.quad	0x401085bff04577d9              # double 4.1306149999999997
	.quad	0x3ff2a239e6ab9b24              # double 1.164606
	.quad	0x4021ff53c579f234              # double 8.9986859999999992
	.quad	0x4017cb4a2339c0ec              # double 5.9485250000000001
	.quad	0x400e2fce746cb967              # double 3.7733430000000001
	.quad	0x4022a23704790b85              # double 9.3168260000000007
	.quad	0x3fbfb320535c9e67              # double 0.12382700000000001
	.quad	0x400b0927913e8145              # double 3.37947
	.quad	0x3fe6116659d12cae              # double 0.68962400000000001
	.quad	0x400c4a62aa19439e              # double 3.536321
	.quad	0x401f83c0c1fc8f32              # double 7.8786649999999998
	.quad	0x4021c2dc0980b242              # double 8.880585
	.quad	0x400b266ba493c89f              # double 3.3937599999999999
	.quad	0x4007e937d1fe64f5              # double 2.9888759999999999
	.quad	0x401000dfdef8487c              # double 4.0008540000000004
	.quad	0x4023764abe6a337b              # double 9.7310390000000008
	.quad	0x40218d771001d5c3              # double 8.7762989999999999
	.quad	0x401b62a023209678              # double 6.8463139999999996
	.quad	0x4022aa17b0f6ad71              # double 9.3322120000000002
	.quad	0x3fee20685553ef6b              # double 0.94145599999999996
	.quad	0x3ff5d76145953587              # double 1.365083
	.quad	0x40027591cd1c7de5              # double 2.307407
	.quad	0x4016d6b69db65ecc              # double 5.7096809999999998
	.quad	0x4019581d7dbf4880              # double 6.3360500000000002
	.quad	0x401d29670196d8f5              # double 7.290432
	.quad	0x3ffcee5de15ca6ca              # double 1.808195
	.quad	0x40090256bca5375d              # double 3.1261420000000002
	.quad	0x3fc0534373f316e3              # double 0.12754099999999999
	.quad	0x401150b9dc2f405f              # double 4.3288339999999996
	.quad	0x40239dd50a88effe              # double 9.8082659999999997
	.quad	0x40224f95d4e8fb01              # double 9.1554400000000005
	.quad	0x4022f6ebd4cfd08d              # double 9.4822679999999994
	.quad	0x4023cca1059ea572              # double 9.8996659999999999
	.quad	0x4021f9ad6451b930              # double 8.9876509999999996
	.quad	0x400fe5425f202108              # double 3.9869430000000001
	.quad	0x401f2d98bf7f0670              # double 7.7945279999999997
	.quad	0x4002f12cadddf43c              # double 2.3677609999999998
	.quad	0x3fe01bf5946c332f              # double 0.503413
	.quad	0x3fd1235b4edb2f66              # double 0.26778299999999999
	.quad	0x40186b03e20ccff2              # double 6.1045069999999999
	.quad	0x4005693faf42784b              # double 2.6763910000000002
	.quad	0x4006c22ee41919ac              # double 2.8448159999999998
	.quad	0x3ffa810f94c87981              # double 1.656509
	.quad	0x40104d3dc8b86b16              # double 4.075431
	.quad	0x401f34fd2a62aa19              # double 7.8017469999999997
	.quad	0x4016efe2e6ea8544              # double 5.7342639999999996
	.quad	0x401dad4738a3b57c              # double 7.4192169999999997
	.quad	0x4010131f46ed245b              # double 4.0186739999999999
	.quad	0x40185cafb3b75211              # double 6.0905139999999998
	.quad	0x3ff5b11f926c7eae              # double 1.3557429999999999
	.quad	0x4012aba6efc371da              # double 4.6676289999999998
	.quad	0x3ff2a3aafff36ac6              # double 1.1649579999999999
	.quad	0x4020d24ce8101f32              # double 8.4107430000000001
	.quad	0x3fdf159c49774257              # double 0.48569400000000001
	.quad	0x3ff7395f676ea423              # double 1.4515070000000001
	.quad	0x401eccf893faf428              # double 7.7001670000000004
	.quad	0x3fff13da72a7bd49              # double 1.942347
	.quad	0x400267021d10b1ff              # double 2.300297
	.quad	0x401238c60cbf2b24              # double 4.5554430000000004
	.quad	0x4020436d22424a27              # double 8.1316919999999993
	.quad	0x4021032fcac8e68e              # double 8.5062239999999996
	.quad	0x40222a9ae4f33440              # double 9.0832130000000006
	.quad	0x40176210be9424e6              # double 5.8457670000000004
	.quad	0x401910bd87b56b87              # double 6.2663479999999998
	.quad	0x40222fcb2d905c03              # double 9.0933469999999996
	.quad	0x3fea6f36ef8055fc              # double 0.82607600000000003
	.quad	0x4022b6a854477ff1              # double 9.3567529999999994
	.quad	0x4007796638433d6c              # double 2.9342769999999998
	.quad	0x4021cab4b72c5198              # double 8.8959100000000007
	.quad	0x3ff719439de481f5              # double 1.443668
	.quad	0x401c323e9ea14057              # double 7.049067
	.quad	0x4022897d49d7ba67              # double 9.2685340000000007
	.quad	0x40001c51dabe2718              # double 2.0138280000000002
	.quad	0x400b539085f4a127              # double 3.4158029999999999
	.quad	0x402026c9c0a8d21c              # double 8.0757580000000004
	.quad	0x4016a8605681ecd5              # double 5.6644300000000003
	.quad	0x4020f8995aaf78ff              # double 8.4855450000000001
	.quad	0x400693b5bf6a0dbb              # double 2.8221240000000001
	.quad	0x4023a5935fc3b4f6              # double 9.8233899999999998
	.quad	0x3ffd97d8cf398e97              # double 1.849572
	.quad	0x401003461309c800              # double 4.0031970000000001
	.quad	0x4012898b71b8aa00              # double 4.6343209999999999
	.quad	0x40076647fdc5931d              # double 2.9249420000000002
	.quad	0x401441b3f20a73f7              # double 5.0641629999999997
	.quad	0x401235e02ea960b7              # double 4.552613
	.quad	0x400dc08fa7a85016              # double 3.7190240000000001
	.quad	0x4014b7c30d306a2b              # double 5.1794549999999999
	.quad	0x4021488d8ec95bff              # double 8.641705
	.quad	0x401c0e63e8dda48b              # double 7.0140529999999996
	.quad	0x400b776f6d762520              # double 3.4333179999999999
	.quad	0x401434623d0bfa09              # double 5.0511559999999998
	.quad	0x4010ea0a958537e3              # double 4.2285560000000002
	.quad	0x3fe393122b7baecd              # double 0.611703
	.quad	0x4016a20685553ef7              # double 5.6582280000000003
	.quad	0x4022b705ea24cc68              # double 9.3574669999999997
	.quad	0x4021e6b8b69552e3              # double 8.950628
	.quad	0x3f9f0aa21a719b4e              # double 0.030314000000000001
	.quad	0x401ad36a400fba88              # double 6.7064599999999999
	.quad	0x400e7f0fe047d3d4              # double 3.8120419999999999
	.quad	0x401f33061c79b34a              # double 7.7998279999999998
	.quad	0x400a3166e008e9b4              # double 3.2741220000000002
	.quad	0x4023937867f0aa22              # double 9.7880280000000006
	.quad	0x3fae920c069e7fb2              # double 0.059707999999999997
	.quad	0x3ff68e8101f31f47              # double 1.409791
	.quad	0x40237e9856a37ac4              # double 9.7472560000000001
	.quad	0x3ff36e99a62ed352              # double 1.214502
	.quad	0x401bc986b9c304cd              # double 6.9468030000000001
	.quad	0x4015077bbf93ff26              # double 5.2573080000000001
	.quad	0x3ff65bd72bcb5fe5              # double 1.3974219999999999
	.quad	0x40134e33269df97b              # double 4.8263670000000003
	.quad	0x401362599ed7c6fc              # double 4.8460450000000002
	.quad	0x401a463e8dda48b6              # double 6.5685979999999997
	.quad	0x4023afbbd7b2031d              # double 9.8432300000000001
	.quad	0x3fec51fc4c165908              # double 0.88500800000000002
	.quad	0x4010bfff79c842fa              # double 4.1874979999999997
	.quad	0x401e4f3d7d3910c3              # double 7.5773830000000002
	.quad	0x3fa92ba16e7a311f              # double 0.049161000000000003
	.quad	0x401334ef88b97785              # double 4.8016949999999996
	.quad	0x3fd4dfaca3619978              # double 0.326152
	.quad	0x401d2c5ef62f9ca6              # double 7.2933310000000002
	.quad	0x4015c3bbc6eb0b7c              # double 5.4411459999999998
	.quad	0x4019cdb37c99ae92              # double 6.4508799999999997
	.quad	0x3faf6dfc5cdd50a9              # double 0.061386000000000003
	.quad	0x40120351deefe500              # double 4.5032420000000002
	.quad	0x401b9a8d64d7f0ed              # double 6.9009299999999998
	.quad	0x4001503211cb039f              # double 2.164158
	.quad	0x4000bb1c864883fd              # double 2.0913629999999999
	.quad	0x401e6b3e5753a3ec              # double 7.60473
	.quad	0x3fe144934267839d              # double 0.53962100000000002
	.quad	0x401c1f14983d7907              # double 7.0303519999999997
	.quad	0x401b1c4d65e46067              # double 6.7776389999999997
	.quad	0x400ac4c51116a8b9              # double 3.346079
	.quad	0x401d0b2e1693c03c              # double 7.2609180000000002
	.quad	0x400e96a26e547171              # double 3.8235519999999998
	.quad	0x4006e11f4f50a02c              # double 2.8599230000000002
	.quad	0x401a01bef49cf56f              # double 6.5017050000000003
	.quad	0x4008f7a99fa11a97              # double 3.1209289999999998
	.quad	0x3fe159ff4fd6d7e9              # double 0.54223600000000005
	.quad	0x4011c9888f861a61              # double 4.4468100000000002
	.quad	0x401f2bd9cae21102              # double 7.7928230000000003
	.quad	0x400a7e7fb267c6b9              # double 3.3117670000000001
	.quad	0x402294154c985f07              # double 9.2892250000000001
	.quad	0x401202d38476f2a6              # double 4.5027600000000003
	.quad	0x401c2a2ad3e920c0              # double 7.0411789999999996
	.quad	0x400a782a9930be0e              # double 3.308675
	.quad	0x4008ecb6c7a7c9de              # double 3.115583
	.quad	0x4020a9a21ea35936              # double 8.331315
	.quad	0x4020b69f6a93f291              # double 8.3566850000000006
	.quad	0x401b294317acc4f0              # double 6.7902950000000004
	.quad	0x40203c1b75a74c0a              # double 8.1173970000000004
	.quad	0x3ff04f69ca9ef523              # double 1.019388
	.quad	0x4022ca0e8427418d              # double 9.3946419999999992
	.quad	0x3fff9cc74b838c11              # double 1.975776
	.quad	0x3ff2fd4bf0995aaf              # double 1.1868399999999999
	.quad	0x3ffb22a3cea6c1a0              # double 1.6959569999999999
	.quad	0x401f949f0e4da09d              # double 7.8951380000000002
	.quad	0x4021d02e019b0ab3              # double 8.9066010000000002
	.quad	0x3fc9f8c21e1d2179              # double 0.202904
	.quad	0x401ecf78feef5ec8              # double 7.7026099999999999
	.quad	0x4012b5a3a08398a6              # double 4.6773819999999997
	.quad	0x4023f63800218def              # double 9.9808959999999995
	.quad	0x401f1089e34330d7              # double 7.7661509999999998
	.quad	0x40211589acbc8c0d              # double 8.5420660000000002
	.quad	0x40103fcc1871e6cd              # double 4.0623019999999999
	.quad	0x3ff6b78feef5ec81              # double 1.419815
	.quad	0x3fe3981e03f70585              # double 0.61231899999999995
	.quad	0x40035cd0bb6ed677              # double 2.4203199999999998
	.quad	0x4012701de2691644              # double 4.6094889999999999
	.quad	0x40073a294141e9af              # double 2.9033989999999998
	.quad	0x40210f9357603926              # double 8.5304210000000005
	.quad	0x3fd4c4c165907d91              # double 0.32450899999999999
	.quad	0x3fe78969a0ad8a11              # double 0.73552399999999996
	.quad	0x3fccf4adbc664d3c              # double 0.226217
	.quad	0x402045a6c5d206c8              # double 8.1360379999999992
	.quad	0x3fead058dde7a744              # double 0.83793300000000003
	.quad	0x400a959817b95a29              # double 3.3230439999999999
	.quad	0x4011551ce28ed5f1              # double 4.3331179999999998
	.quad	0x3fe6bf61aa3f034b              # double 0.71086199999999999
	.quad	0x4021608df37329c3              # double 8.6885829999999995
	.quad	0x400ed0f3882278d1              # double 3.8520270000000001
	.quad	0x4016bd75e2046c76              # double 5.6850199999999997
	.quad	0x4023ac19e30014f9              # double 9.8361350000000005
	.quad	0x40119ffcdab191de              # double 4.4062380000000001
	.quad	0x4017431876188b11              # double 5.8155229999999998
	.quad	0x401e229d8409e55c              # double 7.5338039999999999
	.quad	0x4011d52220bc382a              # double 4.4581379999999999
	.quad	0x4000f19ac79702e6              # double 2.1179709999999998
	.quad	0x4013fd9e83e425af              # double 4.9976750000000001
	.quad	0x4023bba2df9378ee              # double 9.8664769999999997
	.quad	0x400fd5b89939218a              # double 3.9793560000000001
	.quad	0x3ff7fcac8e68e3ef              # double 1.499188
	.quad	0x40074e4c942d490e              # double 2.9132319999999998
	.quad	0x401e4c1a048e043a              # double 7.5743179999999999
	.quad	0x401387c6b8b69553              # double 4.8825940000000001
	.quad	0x401c09e492bc2fc7              # double 7.0096610000000004
	.quad	0x401e2bdcf0307f24              # double 7.5428350000000002
	.quad	0x400c072085b18549              # double 3.5034800000000001
	.quad	0x4022a255b035bd51              # double 9.3170599999999997
	.quad	0x3f8e718a86d71f36              # double 0.014865
	.quad	0x3ff80258d5842b73              # double 1.5005729999999999
	.quad	0x4021cae946801712              # double 8.8963110000000007
	.quad	0x3fff782c2bd7f51f              # double 1.966839
	.quad	0x3fca3914f483cafb              # double 0.20486699999999999
	.quad	0x401095069a4df480              # double 4.1455330000000004
	.quad	0x3fd3a9691a75cd0c              # double 0.30721500000000002
	.quad	0x4016ddc7ef177a70              # double 5.716583
	.quad	0x4023b935b91f70df              # double 9.8617380000000007
	.quad	0x40213f2c3009b307              # double 8.6233839999999997
	.quad	0x3feb5d334c5da6a4              # double 0.85512699999999997
	.quad	0x40089f0bae89eba7              # double 3.0776590000000001
	.quad	0x401b326916440f24              # double 6.7992290000000004
	.quad	0x3fe92ec28b2a6b0e              # double 0.78695800000000005
	.quad	0x401303b46fdeb52d              # double 4.7536180000000003
	.quad	0x401937e0ef99806f              # double 6.3045689999999999
	.quad	0x4010e566cf41f213              # double 4.2240250000000001
	.quad	0x4010c714b9cb6849              # double 4.1944150000000002
	.quad	0x400e2e9813879c41              # double 3.772751
	.quad	0x40218f57f737da62              # double 8.7799680000000002
	.quad	0x40039c5c5718eb89              # double 2.4513479999999999
	.quad	0x3ffa51372a38b8ae              # double 1.644828
	.quad	0x4003101a79fec99f              # double 2.382863
	.quad	0x401f4314445aa2e4              # double 7.8155070000000002
	.quad	0x40134702e6644d87              # double 4.8193469999999996
	.quad	0x40034c6d612c6ac2              # double 2.412318
	.quad	0x4013b328f9f44d44              # double 4.9249609999999997
	.quad	0x401ffc1a8ac5c140              # double 7.9961950000000002
	.quad	0x401804f483cafb3b              # double 6.0048389999999996
	.quad	0x40175dab9f559b3d              # double 5.841475
	.quad	0x4010d7c2ca148ba8              # double 4.2107039999999998
	.quad	0x3fe6d7add15f02c5              # double 0.71382800000000002
	.quad	0x4022d4057082491b              # double 9.414104
	.quad	0x401f1ac18f81e8a3              # double 7.776129
	.quad	0x401e9018a43bb40b              # double 7.6407189999999998
	.quad	0x40040db402d16b98              # double 2.506691
	.quad	0x401fb2873bc903ea              # double 7.9243439999999996
	.quad	0x40009723ee1bd1ee              # double 2.0737990000000002
	.quad	0x4016d8f1d3ed527e              # double 5.7118599999999997
	.quad	0x4022bf4d7add15f0              # double 9.3736379999999997
	.quad	0x401c56bd2b6f1993              # double 7.0847059999999997
	.quad	0x402027603925bb7b              # double 8.0769059999999993
	.quad	0x401f66683c297bfa              # double 7.8500069999999997
	.quad	0x3fa5bff04577d955              # double 0.042479999999999997
	.quad	0x3fe835ce18266773              # double 0.75656800000000002
	.quad	0x400841d3aa369fcf              # double 3.0321419999999999
	.quad	0x401d8a52263d816b              # double 7.3850790000000002
	.quad	0x400ac6bacf7446fa              # double 3.3470360000000001
	.quad	0x3fc50b630a91537a              # double 0.16441
	.quad	0x3feafda4052d666b              # double 0.84346200000000005
	.quad	0x3fc4d2e514c22ee4              # double 0.162686
	.quad	0x3fea8e6afcce1c58              # double 0.82988499999999998
	.quad	0x4022de3e8dda48b6              # double 9.4340709999999994
	.quad	0x401939691a75cd0c              # double 6.3060650000000003
	.quad	0x40134f27fe4bcada              # double 4.8273010000000003
	.quad	0x4006b40f66a55087              # double 2.83792
	.quad	0x400c631055b89939              # double 3.5483709999999999
	.quad	0x401397b1c0010c6f              # double 4.8981389999999996
	.quad	0x40184e9185cee17a              # double 6.076727
	.quad	0x400c4e9c4545846f              # double 3.5383840000000002
	.quad	0x40160be5d9e40c84              # double 5.5116189999999996
	.quad	0x40238d716d2aa5c6              # double 9.7762560000000001
	.quad	0x401a368b5cbff477              # double 6.5532659999999998
	.quad	0x40164fd00713f078              # double 5.5779420000000002
	.quad	0x4006a96f6512a950              # double 2.832732
	.quad	0x4011cea24cc68230              # double 4.4517910000000001
	.quad	0x402331148fd9fd37              # double 9.59586
	.quad	0x40228d4477ff151e              # double 9.2759129999999992
	.quad	0x40200b6b4c7f3494              # double 8.0223030000000008
	.quad	0x3ff6cde8f6cefed6              # double 1.425271
	.quad	0x4019f7521144cbe2              # double 6.4915240000000001
	.quad	0x40116662bae03b3f              # double 4.3499860000000004
	.quad	0x40068d12018a43bb              # double 2.8188819999999999
	.quad	0x401a53b8e4b87bdd              # double 6.5817600000000001
	.quad	0x3fd775bc44bf4cb2              # double 0.36656100000000003
	.quad	0x4019070c564f97ee              # double 6.2568830000000002
	.quad	0x4011b1c36976bc1f              # double 4.423597
	.quad	0x3ff62a6b0d9513f9              # double 1.385356
	.quad	0x3ff75a4df47f993d              # double 1.4595469999999999
	.quad	0x40111d035371971c              # double 4.2783329999999999
	.quad	0x401869a459103c8e              # double 6.1031659999999999
	.quad	0x402303cff64cf8d7              # double 9.5074459999999998
	.quad	0x402341567dbb16c2              # double 9.6276130000000002
	.quad	0x401dd950763a1901              # double 7.4622210000000004
	.quad	0x3feac6e2a80064aa              # double 0.83677800000000002
	.quad	0x401538433d6c7219              # double 5.3049439999999999
	.quad	0x40216f64cf8d716d              # double 8.7175659999999997
	.quad	0x4022bbfa0945f9df              # double 9.3671419999999994
	.quad	0x4014f2224edf6124              # double 5.236459
	.quad	0x4021a53458cd20b0              # double 8.8226650000000006
	.quad	0x40220b443d46b26c              # double 9.022005
	.quad	0x4016f3dff3f0fe04              # double 5.7381589999999996
	.quad	0x4012655b4677b396              # double 4.5989810000000002
	.quad	0x40214c738a3b57c5              # double 8.6493190000000002
	.quad	0x400750cd423d9232              # double 2.9144540000000001
	.quad	0x400b6e685db76b3c              # double 3.4289100000000001
	.quad	0x3facb90214ad362f              # double 0.056099000000000003
	.quad	0x4016bd01c0ca600b              # double 5.684577
	.quad	0x4021a6c2ce464990              # double 8.8257049999999992
	.quad	0x401592c5197a2489              # double 5.3933299999999997
	.quad	0x401871f080303c08              # double 6.1112690000000001
	.quad	0x40140a19439de482              # double 5.009862
	.quad	0x401be86ca89fc6da              # double 6.9769769999999998
	.quad	0x401358be7296f651              # double 4.8366639999999999
	.quad	0x401073a4b5568e82              # double 4.112933
	.quad	0x3ffe131db445ed4a              # double 1.879667
	.quad	0x3fd0754f3775b813              # double 0.25716
	.quad	0x401ac7ded6ba8c58              # double 6.6951859999999996
	.quad	0x3fee6586013660e5              # double 0.94989299999999999
	.quad	0x4002fb1b79d909f2              # double 2.372611
	.quad	0x401ea7ee9142b303              # double 7.663996
	.quad	0x4008deb28d8665e0              # double 3.1087389999999999
	.quad	0x402161eb2074ea8e              # double 8.6912470000000006
	.quad	0x3ffc815a07b352a8              # double 1.7815799999999999
	.quad	0x40238ad40aaeafab              # double 9.7711489999999994
	.quad	0x401467eae5bc87db              # double 5.1014819999999999
	.quad	0x400f621101b00368              # double 3.9228839999999998
	.quad	0x4021479acffa7eb7              # double 8.6398530000000004
	.quad	0x3fe4e8e60807357e              # double 0.65342999999999996
	.quad	0x4014d4ddb5525cc4              # double 5.2078769999999999
	.quad	0x40216b2bba98eda2              # double 8.7093179999999997
	.quad	0x400d8426bb55ac04              # double 3.689527
	.quad	0x401b71a1986b9c30              # double 6.8609679999999997
	.quad	0x3fe7c87db2b34613              # double 0.743224
	.quad	0x3ff98b30b5aa7158              # double 1.596482
	.quad	0x3ff12e43aa79bbae              # double 1.0737950000000001
	.quad	0x3ff3f215fcc1871e              # double 1.2466029999999999
	.quad	0x3fff24a6a875d56f              # double 1.946448
	.quad	0x401b02ac322291fb              # double 6.7526099999999998
	.quad	0x3ff69d80e496edee              # double 1.4134530000000001
	.quad	0x401e37fa5d28d003              # double 7.5546660000000001
	.quad	0x3ff37fb04ee7c4a0              # double 1.218674
	.quad	0x401ead77fae3608d              # double 7.6694029999999999
	.quad	0x401b2647fdc5931d              # double 6.7873840000000003
	.quad	0x400e153586ca89fc              # double 3.7603559999999998
	.quad	0x3fe172c94b380cb7              # double 0.54526200000000002
	.quad	0x3ffa913c68661ae7              # double 1.660458
	.quad	0x400a4b1572580c31              # double 3.2866620000000002
	.quad	0x40011ce28ed5f139              # double 2.1391040000000001
	.quad	0x40116bb0e5e67946              # double 4.3551669999999998
	.quad	0x401b18de2ac32229              # double 6.7742849999999999
	.quad	0x401d80f5e41d4b6a              # double 7.3759379999999997
	.quad	0x401f0fd2a62aa194              # double 7.7654519999999998
	.quad	0x3fd082d7b634dad3              # double 0.25798599999999999
	.quad	0x4005d54f3775b813              # double 2.729155
	.quad	0x3fdc796bfca85cab              # double 0.444911
	.quad	0x4020ca4db163baba              # double 8.3951239999999991
	.quad	0x40234a363b256ffc              # double 9.6449449999999998
	.quad	0x3fee843a2163fdd6              # double 0.95364099999999996
	.quad	0x400c46fd651b0ccc              # double 3.5346630000000001
	.quad	0x3fd084a9478c868c              # double 0.25809700000000002
	.quad	0x3fc3feda66128390              # double 0.15621499999999999
	.quad	0x40128888f861a60d              # double 4.6333349999999998
	.quad	0x4013668943e10060              # double 4.8501329999999996
	.quad	0x4009da3e39f77293              # double 3.2315640000000001
	.quad	0x401e31f9f01b866e              # double 7.5488049999999998
	.quad	0x400e1a35d67ba238              # double 3.7627980000000001
	.quad	0x40193d55e6bc621b              # double 6.3098979999999996
	.quad	0x401a0d44567125dd              # double 6.512956
	.quad	0x401423e5753a3ec0              # double 5.0350549999999998
	.quad	0x4009c0aa64c2f838              # double 3.2190750000000001
	.quad	0x4010eccf6be37de9              # double 4.2312599999999998
	.quad	0x40135ffb04ee7c4a              # double 4.843731
	.quad	0x4023578a4c1ebc84              # double 9.6709770000000006
	.quad	0x4012fc814d72799a              # double 4.7465869999999999
	.quad	0x40101e0828c36da8              # double 4.0293279999999996
	.quad	0x400602ba5a038195              # double 2.7513320000000001
	.quad	0x40157c5931ca7d67              # double 5.3714339999999998
	.quad	0x400171d14e3bcd36              # double 2.1805750000000002
	.quad	0x4009f0728e92d55a              # double 3.2424059999999999
	.quad	0x401a8b97fe8ee6b8              # double 6.6363219999999998
	.quad	0x40139a500d5e8d54              # double 4.9006959999999999
	.quad	0x4022ab15b573eab3              # double 9.3341499999999993
	.quad	0x40085f97aaac1095              # double 3.0466760000000002
	.quad	0x3ff2fa5c1c6088d7              # double 1.186123
	.quad	0x401873d640e9d51b              # double 6.1131219999999997
	.quad	0x401bfb66b6177ea2              # double 6.9955090000000002
	.quad	0x3ff0a53005814941              # double 1.0403290000000001
	.quad	0x401a6a31a4bdba0a              # double 6.6037049999999997
	.quad	0x401be20791c4b902              # double 6.9707319999999999
	.quad	0x401e8513b5bf6a0e              # double 7.6299580000000002
	.quad	0x401e87b28954a7f8              # double 7.6325169999999999
	.quad	0x3fed686e7e62dc6e              # double 0.91899799999999998
	.quad	0x402075b5b70691ea              # double 8.2299019999999992
	.quad	0x3fdc0e1719f7f8cb              # double 0.43836000000000003
	.quad	0x401e77abfb9bed31              # double 7.616867
	.quad	0x4006cc63f141205c              # double 2.8498000000000001
	.quad	0x400ca7852f7f498c              # double 3.5817969999999999
	.quad	0x401520df15a4acf3              # double 5.2821009999999999
	.quad	0x40213388ca3e7d13              # double 8.6006529999999994
	.quad	0x40210edb0dd82fd7              # double 8.5290149999999993
	.quad	0x40230b4b2fa93af7              # double 9.5220579999999994
	.quad	0x400bda1fd1569f49              # double 3.481506
	.quad	0x40200da98676a726              # double 8.0266839999999995
	.quad	0x401843d5bab21816              # double 6.0662450000000003
	.quad	0x4004b86d2ed783e0              # double 2.590052
	.quad	0x401a98fabda0dfdf              # double 6.649394
	.quad	0x4012892684cf073a              # double 4.6339360000000003
	.quad	0x4022743d25247cb7              # double 9.2270289999999999
	.quad	0x4018edf6555c52e7              # double 6.2323849999999998
	.quad	0x40196a2b1704ff43              # double 6.3536799999999998
	.quad	0x40177372606fac60              # double 5.8627409999999998
	.quad	0x40218e503fb37436              # double 8.7779559999999996
	.quad	0x4023b897635e742a              # double 9.8605300000000007
	.quad	0x40058f41f212d773              # double 2.69495
	.quad	0x401ad05a708ede55              # double 6.7034700000000003
	.quad	0x4019d873ffac1d2a              # double 6.4613800000000001
	.quad	0x3fb0cf28c79f6662              # double 0.065660999999999997
	.quad	0x401ffa2a4db163bb              # double 7.9943020000000002
	.quad	0x4004ce2eb1c432ca              # double 2.6006749999999998
	.quad	0x400bb0c2c5e2cdc0              # double 3.461309
	.quad	0x3fd704d551d68c69              # double 0.35966999999999999
	.quad	0x40140c393682730c              # double 5.0119369999999996
	.quad	0x40108aa64c2f837b              # double 4.1353999999999997
	.quad	0x3fc05ae5ffa3b9ae              # double 0.127774
	.quad	0x40198bb62413db7f              # double 6.3864369999999999
	.quad	0x4020cc855da27286              # double 8.3994549999999997
	.quad	0x4012a2f1ed17c5ef              # double 4.6591259999999997
	.quad	0x4001eeb78897e996              # double 2.2415609999999999
	.quad	0x40005764f11b60af              # double 2.0426730000000002
	.quad	0x40050e3b46fdeb53              # double 2.6319490000000001
	.quad	0x400c67b890d5a5b9              # double 3.5506449999999998
	.quad	0x400b4889c1b54196              # double 3.4104190000000001
	.quad	0x4020b0705425f202              # double 8.3446069999999999
	.quad	0x40218d082cf52b91              # double 8.7754530000000006
	.quad	0x4019d6a50d6b228e              # double 6.4596140000000002
	.quad	0x401fcb7bf1e8e608              # double 7.9487149999999999
	.quad	0x4014fc144028e4fc              # double 5.2461710000000004
	.quad	0x400d47c17a89331a              # double 3.660037
	.quad	0x3ff07aeee957470f              # double 1.0300130000000001
	.quad	0x400894256bca5376              # double 3.0723370000000001
	.quad	0x401f5f2e05ccc89b              # double 7.8429489999999999
	.quad	0x401336138fffbce4              # double 4.8028089999999999
	.quad	0x40209c755ffe6d59              # double 8.3055830000000004
	.quad	0x40169514c22ee419              # double 5.6455869999999999
	.quad	0x400afebb7739f341              # double 3.3743810000000001
	.quad	0x400d1ee45c358afc              # double 3.6400839999999999
	.quad	0x3ff87a71151611ba              # double 1.5298929999999999
	.quad	0x400bbd2fa0d77b7c              # double 3.4673759999999998
	.quad	0x401550d6f544bb1b              # double 5.328945
	.quad	0x4011cdf58c08b75f              # double 4.4511320000000003
	.quad	0x40103df82b1f687b              # double 4.0605169999999999
	.quad	0x3ffe5e71044f1a1a              # double 1.8980570000000001
	.quad	0x4014d70ef566490a              # double 5.2100179999999998
	.quad	0x4005406961c36977              # double 2.6564510000000001
	.quad	0x401ce11233df2a9d              # double 7.2197959999999997
	.quad	0x401ea03f2d3c792d              # double 7.6564909999999999
	.quad	0x4019ad8d36b4c7f3              # double 6.4194839999999997
	.quad	0x3fea59988d2a1f8e              # double 0.82343699999999997
	.quad	0x4020aff7164c729f              # double 8.3436819999999994
	.quad	0x400a8d8e432441ff              # double 3.3191190000000002
	.quad	0x400802da554b8bf0              # double 3.0013930000000002
	.quad	0x3ff341fea8112ba1              # double 1.2036119999999999
	.quad	0x40076adc4c9c90c5              # double 2.9271780000000001
	.quad	0x40147deacc92146a              # double 5.1229659999999999
	.quad	0x401dd0b7c3504c49              # double 7.4538260000000003
	.quad	0x3ff20a4095f2452c              # double 1.1275029999999999
	.quad	0x4014e7abb8800eae              # double 5.2262409999999999
	.quad	0x4000eff5c6c11a11              # double 2.1171679999999999
	.quad	0x401c74d48882f0e1              # double 7.1140920000000003
	.quad	0x3fe4e83e425aee63              # double 0.65334999999999999
	.quad	0x40103536933a0408              # double 4.0519660000000002
	.quad	0x4020a5938151a438              # double 8.3233910000000009
	.quad	0x4006b65668c26139              # double 2.839032
	.quad	0x401b6d5c74751ce3              # double 6.8567980000000004
	.quad	0x3feb532e7b3d8e00              # double 0.853904
	.quad	0x4022a43fe5c91d15              # double 9.3208000000000002
	.quad	0x3fdc0ebaade657b8              # double 0.43839899999999998
	.quad	0x3ff748d2a1f8e3ac              # double 1.455279
	.quad	0x4021a16073de1e2e              # double 8.8151890000000002
	.quad	0x3fcb99fe43675ddd              # double 0.215637
	.quad	0x40016e34fc610f0f              # double 2.1788120000000002
	.quad	0x4011b187e7c06e1a              # double 4.4233700000000002
	.quad	0x402120f51ac9afe2              # double 8.5643700000000003
	.quad	0x4020be7c6b8b6955              # double 8.3720429999999997
	.quad	0x400817dc7abfb9bf              # double 3.0116510000000001
	.quad	0x40031851654d61b3              # double 2.3868740000000002
	.quad	0x4014c786c226809d              # double 5.1948499999999997
	.quad	0x3fe689741d084e83              # double 0.70427899999999999
	.quad	0x402317c88e79aae7              # double 9.5464520000000003
	.quad	0x40223173d9ec7000              # double 9.0965869999999995
	.quad	0x40024dd8b60f1b26              # double 2.288011
	.quad	0x3fed25ca29845dc8              # double 0.91086299999999998
	.quad	0x40200babead4f590              # double 8.0227959999999996
	.quad	0x4014e7125dd095af              # double 5.2256559999999999
	.quad	0x4022358a32f44913              # double 9.1045700000000007
	.quad	0x3ff14e29f9ce8d97              # double 1.081583
	.quad	0x40121e5de15ca6ca              # double 4.529655
	.quad	0x40064598e10cf5b2              # double 2.7839830000000001
	.quad	0x40146f483cafb3b7              # double 5.1086739999999997
	.quad	0x40118e7924af0bf2              # double 4.3891340000000003
	.quad	0x3ff6976bc1eff9f8              # double 1.4119679999999999
	.quad	0x400b13c1ce6c093e              # double 3.3846470000000002
	.quad	0x4020942e9899bf59              # double 8.2894179999999995
	.quad	0x40123faeff5c6c12              # double 4.5621910000000003
	.quad	0x40235790539fba45              # double 9.6710229999999999
	.quad	0x4014a52d666a9824              # double 5.1613059999999997
	.quad	0x4005041bb8c32a8d              # double 2.6270060000000002
	.quad	0x3ff2adc2b0ea1837              # double 1.167422
	.quad	0x401cdfae3608d089              # double 7.2184379999999999
	.quad	0x3fbd5f3519bd4068              # double 0.114734
	.quad	0x40223a11233df2aa              # double 9.1134120000000003
	.quad	0x401523f034b0e1b5              # double 5.2850960000000002
	.quad	0x4021febe596c82e0              # double 8.9975459999999998
	.quad	0x400774fdf3b645a2              # double 2.9321250000000001
	.quad	0x40231fdfe32a0664              # double 9.5622550000000003
	.quad	0x401e0d78811b1d93              # double 7.5131550000000002
	.quad	0x4020552ae8e1d649              # double 8.1663429999999995
	.quad	0x401ef198f1d3ed52              # double 7.7359349999999996
	.quad	0x4021e799806f2629              # double 8.9523430000000008
	.quad	0x4000ff9a49c2c1b1              # double 2.124806
	.quad	0x401296f9335d249e              # double 4.6474349999999998
	.quad	0x401927a63736cdf2              # double 6.2887199999999996
	.quad	0x4020811a75cd0bb7              # double 8.2521550000000001
	.quad	0x40223a73929ed395              # double 9.1141629999999996
	.quad	0x401936295208e150              # double 6.3028919999999999
	.quad	0x40194f9378ee2867              # double 6.3277109999999999
	.quad	0x3ffbfeea209aaa3b              # double 1.749735
	.quad	0x401bf51611ba3ca7              # double 6.9893419999999997
	.quad	0x3fdaeea63b688bdb              # double 0.42081600000000002
	.quad	0x400477164c729f5a              # double 2.5581480000000001
	.quad	0x401bd91e646f1562              # double 6.9620300000000004
	.quad	0x401fd65f5275ee9a              # double 7.9593480000000003
	.quad	0x4023bd0331e3a7db              # double 9.8691650000000006
	.quad	0x4012ad230b9dc2f4              # double 4.669079
	.quad	0x3ff6496bb98c7e28              # double 1.392925
	.quad	0x3ff85b3aeee95747              # double 1.522273
	.quad	0x4014d4302b40f66a              # double 5.2072149999999997
	.quad	0x4010fefe0ce0b913              # double 4.2490160000000001
	.quad	0x4009eed2cbea4ebe              # double 3.2416130000000001
	.quad	0x401353df2a9d627c              # double 4.831906
	.quad	0x401c5d8c6d612c6b              # double 7.0913560000000002
	.quad	0x4023a98aeb80ecfa              # double 9.8311379999999993
	.quad	0x3fe3e65bea0ba1f5              # double 0.62187000000000003
	.quad	0x4020ffd4e09784ec              # double 8.4996709999999993
	.quad	0x40126ea5f84cad58              # double 4.6080550000000002
	.quad	0x400c775d9a0f0a5f              # double 3.558284
	.quad	0x400f6841ede1198b              # double 3.925907
	.quad	0x401491e03f705858              # double 5.1424570000000003
	.quad	0x4009793ff25e56cd              # double 3.1842039999999998
	.quad	0x400173198288051d              # double 2.1812010000000002
	.quad	0x400049d94d0dcfcc              # double 2.0360589999999998
	.quad	0x4021b476d117b528              # double 8.8524689999999993
	.quad	0x400820431bde82d8              # double 3.0157530000000001
	.quad	0x4014c083dbc23316              # double 5.1880030000000001
	.quad	0x400f4b52c9d16fca              # double 3.9117790000000001
	.quad	0x400d80b673c4f3ba              # double 3.6878479999999998
	.quad	0x40060fa2f05a708f              # double 2.7576350000000001
	.quad	0x402222b841248d7e              # double 9.067812
	.quad	0x4007b711947cfa27              # double 2.9643890000000002
	.quad	0x3ff22daa92e62132              # double 1.1361490000000001
	.quad	0x40143152b0a6fc59              # double 5.0481670000000003
	.quad	0x4004b08787485e3e              # double 2.5861960000000002
	.quad	0x3ff4d35653c9abb0              # double 1.301596
	.quad	0x401166555c52e72e              # double 4.3499350000000003
	.quad	0x4015fb5aa715831f              # double 5.495463
	.quad	0x3ffddc11e42e1262              # double 1.866228
	.quad	0x401f92491afc04c9              # double 7.8928570000000002
	.quad	0x401f12a023209678              # double 7.7681889999999995
	.quad	0x40212489d27c3937              # double 8.5713640000000009
	.quad	0x4012de147ae147ae              # double 4.7168749999999999
	.quad	0x4012b58d1526d8b2              # double 4.6772960000000001
	.quad	0x400f4ae18ac9f2fe              # double 3.9115630000000001
	.quad	0x3ff031209edbf8ba              # double 1.0119940000000001
	.quad	0x400018c3b0c4588a              # double 2.012092
	.quad	0x3ff2563fdd65a145              # double 1.1460570000000001
	.quad	0x4022286bdf4c2b52              # double 9.0789480000000005
	.quad	0x4021422d5171e29b              # double 8.6292519999999993
	.quad	0x3ff2dbe2b4959e62              # double 1.1786829999999999
	.quad	0x401a49b413986339              # double 6.5719760000000003
	.quad	0x4017fb480a5accd5              # double 5.9953919999999998
	.quad	0x401160d77b7c7821              # double 4.3445720000000003
	.quad	0x4019316db0dd82fd              # double 6.2982699999999996
	.quad	0x401d27d1fe64f54d              # double 7.2888869999999999
	.quad	0x40214fcd466f501a              # double 8.6558630000000001
	.quad	0x401110f301eabbcb              # double 4.2665519999999999
	.quad	0x401537bfe7e1fc09              # double 5.304443
	.quad	0x3fed9083dbc23316              # double 0.92389100000000002
	.quad	0x3fc585ad538ac190              # double 0.16814200000000001
	.quad	0x401cb830e3cd9a52              # double 7.1798739999999999
	.quad	0x400d40e410b630a9              # double 3.656685
	.quad	0x4008099e94ab1d50              # double 3.0046970000000002
	.quad	0x4005b32c625e99e9              # double 2.7124869999999999
	.quad	0x401acb60f1b25f63              # double 6.6986119999999998
	.quad	0x4001fcf0b6b6e0d2              # double 2.2485059999999999
	.quad	0x40221e50a45d41fa              # double 9.0592089999999992
	.quad	0x4019513c68661ae7              # double 6.329332
	.quad	0x4010ebf26f1dc50d              # double 4.2304170000000001
	.quad	0x4021f624bba12b5e              # double 8.9807489999999994
	.quad	0x40117099e0e73605              # double 4.3599620000000003
	.quad	0x40154c6b484d76ab              # double 5.3246279999999997
	.quad	0x3ff2db4245f5ad97              # double 1.1785300000000001
	.quad	0x4011213f8db48909              # double 4.2824689999999999
	.quad	0x4008c2f0e0a84be4              # double 3.095186
	.quad	0x40203ea9e6eeb702              # double 8.1223899999999993
	.quad	0x400a7e43ed959a31              # double 3.3116530000000002
	.quad	0x402289b8ed1bf7ad              # double 9.2689889999999995
	.quad	0x4001455219a847b2              # double 2.1588479999999999
	.quad	0x402054213a0c6b48              # double 8.1643159999999995
	.quad	0x401670e23af31b15              # double 5.6102379999999998
	.quad	0x400d19524bfd2e94              # double 3.6373639999999998
	.quad	0x4021d7c19c17225b              # double 8.9213989999999992
	.quad	0x3ffc5a176ddaceee              # double 1.771995
	.quad	0x4001443cc07aaef3              # double 2.1583190000000001
	.quad	0x4023171e0828c36e              # double 9.5451510000000006
	.quad	0x4022e445aa2e3c53              # double 9.4458439999999992
	.quad	0x4020e5a4052d666b              # double 8.4485170000000007
	.quad	0x401cd506dd69d302              # double 7.2080339999999996
	.quad	0x3ff4599cbee807bc              # double 1.2718780000000001
	.quad	0x402259de05037500              # double 9.1755220000000008
	.quad	0x401d2b60f1b25f63              # double 7.2923619999999998
	.quad	0x3ff8d8c2a454de7f              # double 1.5529200000000001
	.quad	0x401093d5bab21816              # double 4.1443700000000003
	.quad	0x4019a16db0dd82fd              # double 6.4076449999999996
	.quad	0x4018fc332f01754b              # double 6.246289
	.quad	0x401485c0fcb4f1e5              # double 5.1306190000000003
	.quad	0x40202436544fe36d              # double 8.0707269999999998
	.quad	0x4022f5814940bbb2              # double 9.4795020000000001
	.quad	0x4015e9bbf0dc768e              # double 5.478256
	.quad	0x3ff4d7cd466f501a              # double 1.302686
	.quad	0x40029109070fbeba              # double 2.320818
	.quad	0x4017a5c03361565c              # double 5.9118659999999998
	.quad	0x401faacffa7eb6bf              # double 7.9168089999999997
	.quad	0x4001df127f5e84f1              # double 2.2339220000000002
	.quad	0x3fe3a1101b003687              # double 0.61341100000000004
	.quad	0x400f8a1be2b4959e              # double 3.9424359999999998
	.quad	0x4017c008e9b38d61              # double 5.9375340000000003
	.quad	0x40113903ea704bc2              # double 4.3056789999999996
	.quad	0x40220393037d6302              # double 9.0069809999999997
	.quad	0x4021ca12f901083e              # double 8.8946760000000005
	.quad	0x401e5a85015c2092              # double 7.5883979999999998
	.quad	0x3fd14a0a0f4d7add              # double 0.270144
	.quad	0x4003672085b18549              # double 2.4253550000000001
	.quad	0x4007a3d1cc100e6b              # double 2.95499
	.quad	0x4000b42c3c9eecc0              # double 2.0879750000000001
	.quad	0x401867a355043e53              # double 6.1012089999999999
	.quad	0x3ff52d58c8eef1bb              # double 1.3235710000000001
	.quad	0x400bf85e80bed741              # double 3.4962740000000001
	.quad	0x400cf1ceaf251c19              # double 3.6180699999999999
	.quad	0x40121f08893b7d85              # double 4.5303060000000004
	.quad	0x4018a19220ff5409              # double 6.1577840000000004
	.quad	0x402200b934699418              # double 9.0014129999999994
	.quad	0x3fbad56b00ffda40              # double 0.104819
	.quad	0x4018cdcdf6987831              # double 6.2009809999999996
	.quad	0x4013a692f6e8294a              # double 4.9126700000000003
	.quad	0x4019fc10d7be9857              # double 6.4961580000000003
	.quad	0x401170b49e01de27              # double 4.3600640000000004
	.quad	0x3ff0d8a116659d13              # double 1.052888
	.quad	0x400f4e26d4801f75              # double 3.91316
	.quad	0x4018c14a4d2b2bfe              # double 6.1887600000000003
	.quad	0x3fed84790b849881              # double 0.92242100000000005
	.quad	0x4017d1eb4202d9cf              # double 5.9549989999999999
	.quad	0x4007dc7de5082cf5              # double 2.9826619999999999
	.quad	0x401c2288051c9f73              # double 7.033722
	.quad	0x401e5f58c08b75ea              # double 7.5931119999999996
	.quad	0x401cdb4395810625              # double 7.2141250000000001
	.quad	0x4022541ca3a4b557              # double 9.1642810000000008
	.quad	0x4004b539b888722a              # double 2.588489
	.quad	0x4018877bbf93ff26              # double 6.1323080000000001
	.quad	0x40156010c6f7a0b6              # double 5.3438140000000001
	.quad	0x40136d49949e8816              # double 4.8567260000000001
	.quad	0x401e5c8754f3775c              # double 7.5903600000000004
	.quad	0x401a86787ce95fab              # double 6.6313190000000004
	.quad	0x40192712e40852b5              # double 6.2881580000000001
	.quad	0x400fb5fbb517a461              # double 3.9638589999999998
	.quad	0x401106a7264a16a5              # double 4.2564970000000004
	.quad	0x3fd5a033e78e1933              # double 0.33790300000000001
	.quad	0x40206a8bf3bea91e              # double 8.2080990000000007
	.quad	0x3fede2a80064a9ce              # double 0.93391800000000003
	.quad	0x40157dd82fd75e20              # double 5.3728949999999998
	.quad	0x3ff8d717df19d66b              # double 1.552513
	.quad	0x3ff206e6d9be4cd7              # double 1.1266849999999999
	.quad	0x401a24c2b51bd61f              # double 6.5358989999999997
	.quad	0x40230206c8711d7a              # double 9.5039580000000008
	.quad	0x40225790539fba45              # double 9.1710229999999999
	.quad	0x4022ffc4e2f37fbf              # double 9.499549
	.quad	0x4020196c1e364bec              # double 8.0496529999999992
	.quad	0x401f3204295a6c5d              # double 7.7988439999999998
	.quad	0x40132ff1950331e4              # double 4.7968200000000003
	.quad	0x4018e72abef06b38              # double 6.2257490000000004
	.quad	0x40117ebe9c886163              # double 4.3737740000000001
	.quad	0x401f6433508f648c              # double 7.8478519999999996
	.quad	0x401da5b39e279dd4              # double 7.4118180000000002
	.quad	0x400e57a46173b85f              # double 3.7927940000000002
	.quad	0x3ff5e8b2a6b0d951              # double 1.3693109999999999
	.quad	0x401bb512231832fd              # double 6.9268270000000003
	.quad	0x401460752da98677              # double 5.0941970000000003
	.quad	0x401b30247021d10b              # double 6.7970139999999999
	.quad	0x4014fe9ccb7d4174              # double 5.2486449999999998
	.quad	0x4011b1d712a0ec74              # double 4.4236719999999998
	.quad	0x4022682cb20fb225              # double 9.2034660000000006
	.quad	0x400600789613d31c              # double 2.7502300000000002
	.quad	0x4018996744b2b778              # double 6.1498080000000002
	.quad	0x3fd3bf9830e3cd9a              # double 0.30856899999999998
	.quad	0x4005f41e9af5ba2c              # double 2.7441990000000001
	.quad	0x401ce072d1aeb3dd              # double 7.2191879999999999
	.quad	0x40060dc11e42e126              # double 2.7567159999999999
	.quad	0x401ff2cd7cf5f4e4              # double 7.9871119999999998
	.quad	0x3fc01355475a31a5              # double 0.12559000000000001
	.quad	0x4016b47cb70ac3a8              # double 5.6762569999999997
	.quad	0x4001b6d22424a277              # double 2.2142680000000001
	.quad	0x4021ca6eb91b3f21              # double 8.8953760000000006
	.quad	0x401d8352eb5f5f0b              # double 7.3782459999999999
	.quad	0x400c8c9752977c89              # double 3.568648
	.quad	0x4021776c050bd87b              # double 8.7332459999999994
	.quad	0x40104ec5f394b7b3              # double 4.0769270000000004
	.quad	0x400c4897e996312f              # double 3.5354459999999999
	.quad	0x401022541d8e8640              # double 4.0335239999999999
	.quad	0x401c4fb762d83c6d              # double 7.0778480000000004
	.quad	0x401a3a311e85fd05              # double 6.5568280000000003
	.quad	0x4005bff609dcf894              # double 2.718731
	.quad	0x40231c3ac929aa1d              # double 9.5551359999999991
	.quad	0x3fe4a3076c050bd8              # double 0.64490099999999995
	.quad	0x401293a797891e21              # double 4.6441939999999997
	.quad	0x400b6f4d7add15f0              # double 3.4293469999999999
	.quad	0x401c42595bbbe879              # double 7.064794
	.quad	0x3ffd7352a8438088              # double 1.8406549999999999
	.quad	0x4019595d91ab8e8f              # double 6.3372710000000003
	.quad	0x402206d2ed783dff              # double 9.0133279999999996
	.quad	0x401ddc9fb6134ce4              # double 7.4654530000000001
	.quad	0x3ffec6b37867f0aa              # double 1.923511
	.quad	0x4018de939eadd591              # double 6.2173600000000002
	.quad	0x3fecd7cd466f501a              # double 0.90134300000000001
	.quad	0x3ff5315f88fc9364              # double 1.324554
	.quad	0x4016f43bf727136a              # double 5.7385099999999998
	.quad	0x400baa3400b88ca4              # double 3.458107
	.quad	0x3ff5253005814941              # double 1.3215790000000001
	.quad	0x40064726d04e618d              # double 2.7847420000000001
	.quad	0x4023e1c0010c6f7a              # double 9.9409179999999999
	.quad	0x400bf99567dbb16c              # double 3.4968669999999999
	.quad	0x3ff7161804d98394              # double 1.4428939999999999
	.quad	0x40238e48c7192ea5              # double 9.7778989999999996
	.quad	0x401124ed6fda836f              # double 4.2860620000000003
	.quad	0x401e9870da5daf08              # double 7.6488680000000002
	.quad	0x40224c4c7b02d59d              # double 9.1490209999999994
	.quad	0x4009430d306a2b17              # double 3.15774
	.quad	0x3fd284b1ab0856e7              # double 0.28934900000000002
	.quad	0x401cb2ea52ef911d              # double 7.174722
	.quad	0x40036ef5ec80c73b              # double 2.4291800000000001
	.quad	0x400cf14c22ee4192              # double 3.6178210000000002
	.quad	0x4020b3fe7e1fc090              # double 8.3515510000000006
	.quad	0x4023242b0ea18373              # double 9.5706410000000001
	.quad	0x401a6c0f01fb82c3              # double 6.6055260000000002
	.quad	0x40188f9d2bf55150              # double 6.1402479999999997
	.quad	0x401a8178f68be2f8              # double 6.6264380000000003
	.quad	0x4014e88e79aae6c9              # double 5.227106
	.quad	0x40002815e39713ad              # double 2.0195729999999998
	.quad	0x40193cba30121683              # double 6.309304
	.quad	0x3fa3cd141a6937d2              # double 0.038674
	.quad	0x401288e5c4eb56fc              # double 4.6336890000000004
	.quad	0x3fafa24894c447c3              # double 0.061785
	.quad	0x4017cc70435efa61              # double 5.9496469999999997
	.quad	0x40217299d883ba34              # double 8.7238299999999995
	.quad	0x3fdf0a915379fa98              # double 0.48502000000000001
	.quad	0x400a6ceb356da017              # double 3.3031830000000002
	.quad	0x4018c56de33269e0              # double 6.1928020000000004
	.quad	0x4022b90c4dec1c1d              # double 9.3614219999999992
	.quad	0x402254d962068555              # double 9.1657209999999996
	.quad	0x4000b4da4ce8101f              # double 2.0883069999999999
	.quad	0x4003aaf038e29f9d              # double 2.458466
	.quad	0x40091b224aada33c              # double 3.1382490000000001
	.quad	0x4016567ad8e43244              # double 5.5844529999999999
	.quad	0x4023d0adab9f559b              # double 9.9075749999999995
	.quad	0x3ff02327ed84d339              # double 1.008583
	.quad	0x3f8ca6ca03c4b09f              # double 0.013990000000000001
	.quad	0x4022ba7e30878748              # double 9.3642439999999993
	.quad	0x4004403a322af577              # double 2.531361
	.quad	0x4017e8f648c7192f              # double 5.9775020000000003
	.quad	0x4011ffe7e1fc08fa              # double 4.4999079999999996
	.quad	0x4021312ccf6be37e              # double 8.5960450000000002
	.quad	0x3ffef06e5cd4ed2d              # double 1.9336990000000001
	.quad	0x401cbe32a0663c75              # double 7.18574
	.quad	0x4012a3c925785f8d              # double 4.6599469999999998
	.quad	0x3ff201d5c31593e6              # double 1.125448
	.quad	0x4020c1d92b7fe08b              # double 8.3786100000000001
	.quad	0x401d777dd872f33d              # double 7.3666910000000003
	.quad	0x401c442a23bff8a9              # double 7.066567
	.quad	0x400b76145953586d              # double 3.4326560000000002
	.quad	0x4012552fc2656abe              # double 4.5831900000000001
	.quad	0x4020bd65e4606749              # double 8.3699180000000002
	.quad	0x400e5351159c4977              # double 3.7906819999999999
	.quad	0x4006771b8aa00193              # double 2.8081580000000002
	.quad	0x401cca9da597d49d              # double 7.1978669999999996
	.quad	0x401affb3311a543f              # double 6.7497069999999999
	.quad	0x401a40995aaf78ff              # double 6.5630850000000001
	.quad	0x401c514ca925fe97              # double 7.0793939999999997
	.quad	0x4008742aa9f7b5af              # double 3.0567220000000002
	.quad	0x40218ff3cf70153c              # double 8.7811570000000003
	.quad	0x3fe1f7ec3547e069              # double 0.56151399999999996
	.quad	0x402055d9a0f0a5f0              # double 8.1676760000000002
	.quad	0x4014f8c32a8c9b84              # double 5.2429319999999997
	.quad	0x401f65e9185cee18              # double 7.8495220000000003
	.quad	0x40121449129888f8              # double 4.5198099999999997
	.quad	0x401dd4a5df2239e7              # double 7.4576640000000003
	.quad	0x4020883a109d0636              # double 8.2660680000000006
	.quad	0x3fbda133c1ce6c09              # double 0.115741
	.quad	0x40207fe7c06e19b9              # double 8.2498149999999999
	.quad	0x401d0c996b7670a0              # double 7.2623040000000003
	.quad	0x3ff3bcdbbe0157ef              # double 1.233608
	.quad	0x40221adcd2d44dcb              # double 9.0524660000000008
	.quad	0x4019dbc903ea704c              # double 6.4646340000000002
	.quad	0x401a84aa9717df1a              # double 6.6295570000000001
	.quad	0x401c26f544bb1af4              # double 7.0380450000000003
	.quad	0x401438c2e770bd01              # double 5.0554309999999996
	.quad	0x40207c5bd0e12e84              # double 8.2428880000000006
	.quad	0x401cea4873365882              # double 7.2287920000000003
	.quad	0x3ff9d3e3e29307af              # double 1.614231
	.quad	0x400f4d045fe11127              # double 3.9126059999999998
	.quad	0x40147775b8130165              # double 5.1166600000000004
	.quad	0x401208a222d5171e              # double 4.5084309999999999
	.quad	0x401c5a0b5ed8d36b              # double 7.0879339999999997
	.quad	0x4017d095af294dd7              # double 5.9536959999999999
	.quad	0x4012bfae7924af0c              # double 4.687189
	.quad	0x4018ed6adf71eaff              # double 6.2318530000000001
	.quad	0x4020c74927913e81              # double 8.3892299999999995
	.quad	0x3ff22bb1290257c9              # double 1.135667
	.quad	0x3fd639b024f6598e              # double 0.347271
	.quad	0x3fff77a1c25d0742              # double 1.966707
	.quad	0x4021e8268900c522              # double 8.9534190000000002
	.quad	0x4011e953586ca8a0              # double 4.4778570000000002
	.quad	0x3fe2d1116a8b8f15              # double 0.58802100000000002
	.quad	0x4015c56f32bdc26e              # double 5.4428070000000002
	.quad	0x40116028a1dfb939              # double 4.3439050000000003
	.quad	0x3ff2f845564b6630              # double 1.185613
	.quad	0x3ffc3a28bb0a2caa              # double 1.7641990000000001
	.quad	0x400482f2734f82f5              # double 2.563939
	.quad	0x4022bbe707e175d1              # double 9.3669969999999995
	.quad	0x401382cb641700ce              # double 4.8777290000000004
	.quad	0x4005744cbe1eb420              # double 2.6817869999999999
	.quad	0x40017d9988d2a1f9              # double 2.186328
	.quad	0x3fc611e42e126202              # double 0.17242099999999999
	.quad	0x4004daf7d30ad46f              # double 2.6069179999999998
	.quad	0x4019c42396073de2              # double 6.4415420000000001
	.quad	0x4021b937f38c5437              # double 8.8617550000000005
	.quad	0x3fe32a00192a7371              # double 0.59887699999999999
	.quad	0x400c8398201cd5fa              # double 3.5642550000000002
	.quad	0x4016cb0dd82fd75e              # double 5.6982949999999999
	.quad	0x4023360e51d25aab              # double 9.6055779999999995
	.quad	0x4023408d08919ef9              # double 9.6260759999999994
	.quad	0x4005ce7e62dc6e2b              # double 2.7258270000000002
	.quad	0x40021e963dc486ad              # double 2.2649349999999999
	.quad	0x402025fa43fe5c92              # double 8.0741750000000003
	.quad	0x3fd285b5b70691ea              # double 0.28941099999999997
	.quad	0x3ff778fabda0dfdf              # double 1.467036
	.quad	0x401e0d017dae8188              # double 7.5127009999999998
	.quad	0x40123f50e3476295              # double 4.5618319999999999
	.quad	0x400e9651b0ccbc06              # double 3.8233980000000001
	.quad	0x3ff0931876188b11              # double 1.0359119999999999
	.quad	0x40204e4a9cdc4439              # double 8.1529129999999999
	.quad	0x400c5cfaacd9e83e              # double 3.5453999999999999
	.quad	0x400422ea0fd3b29a              # double 2.517048
	.quad	0x400f6c3b927d45a6              # double 3.927848
	.quad	0x401979db65ecc3e3              # double 6.3690009999999999
	.quad	0x4014b4738a3b57c5              # double 5.1762220000000001
	.quad	0x4018da86940357a3              # double 6.2134039999999997
	.quad	0x401fa5d31337eb29              # double 7.9119380000000001
	.quad	0x4011e3cd9a52263e              # double 4.4724640000000004
	.quad	0x400bfa02fb5d0310              # double 3.4970759999999999
	.quad	0x3fe913836a832b99              # double 0.783632
	.quad	0x3fee71e0828c36db              # double 0.95140100000000005
	.quad	0x4019b708aac96cc6              # double 6.428744
	.quad	0x40195a4df47f993d              # double 6.3381879999999997
	.quad	0x401257d955714b9d              # double 4.5857900000000003
	.quad	0x40076454de7ea5f8              # double 2.9239899999999999
	.quad	0x4022aba40d90e23b              # double 9.3352360000000001
	.quad	0x3fdecd63cb817332              # double 0.48128599999999999
	.quad	0x4002994855da2728              # double 2.3248449999999998
	.quad	0x400659cbee807bbb              # double 2.7938459999999998
	.quad	0x40157ccfaeff5c6c              # double 5.3718859999999999
	.quad	0x40222cd24e160d88              # double 9.0875419999999991
	.quad	0x4020d186fcdee350              # double 8.4092330000000004
	.quad	0x4016520e6299524c              # double 5.580133
	.quad	0x4017a05ff1d81f10              # double 5.9066159999999996
	.quad	0x3ffa71cb89d6adf7              # double 1.652782
	.quad	0x3fede2cfd8f0c77e              # double 0.93393700000000002
	.quad	0x4011f205ff1d81f1              # double 4.486351
	.quad	0x400623382e44b6e9              # double 2.7671969999999999
	.quad	0x3fe5ffb69984a0e4              # double 0.68746499999999999
	.quad	0x400796006d0d4995              # double 2.9482430000000002
	.quad	0x401e8946c332f017              # double 7.6340589999999997
	.quad	0x40222fd5ed06fef8              # double 9.0934290000000004
	.quad	0x40027704790b8499              # double 2.3081140000000002
	.quad	0x3fb96a4873365882              # double 0.099278000000000005
	.quad	0x402147f4dbdf8f47              # double 8.6405399999999997
	.quad	0x4018aafab53d640f              # double 6.1669720000000003
	.quad	0x401b4f8a8f3a9b07              # double 6.8276770000000004
	.quad	0x3ff2f8066c2acb86              # double 1.1855530000000001
	.quad	0x40214089e34330d7              # double 8.6260519999999996
	.quad	0x40196feb074a771d              # double 6.3592950000000004
	.quad	0x3ffc3969e3c96894              # double 1.7640169999999999
	.quad	0x3ff993ccd0fe8ab5              # double 1.598584
	.quad	0x401b5bf0995aaf79              # double 6.839785
	.quad	0x401d944fa05143bf              # double 7.3948349999999996
	.quad	0x4020b0e736049ecb              # double 8.3455139999999997
	.quad	0x3ff86eb91b3f20a7              # double 1.5270319999999999
	.quad	0x40145a2a0a958538              # double 5.0880510000000001
	.quad	0x400ad39085f4a127              # double 3.3533029999999999
	.quad	0x400d7cf4e874c900              # double 3.6860140000000001
	.quad	0x40203d4c33b53932              # double 8.1197219999999994
	.quad	0x4020830a915379fb              # double 8.2559400000000007
	.quad	0x40117a32b12d3416              # double 4.3693340000000003
	.quad	0x401e9a8c154c985f              # double 7.6509249999999999
	.quad	0x40098af89c5e6ff8              # double 3.1928570000000001
	.quad	0x401b2e7ab7564303              # double 6.7953900000000003
	.quad	0x3ff23eb074a771c9              # double 1.1403049999999999
	.quad	0x4011748909289dae              # double 4.363804
	.quad	0x3fecf3300de4c511              # double 0.90468599999999999
	.quad	0x401a58bfc2224edf              # double 6.5866689999999997
	.quad	0x3fe3f61aa3f034b1              # double 0.62379200000000001
	.quad	0x4022d4e032db1e9f              # double 9.4157729999999997
	.quad	0x4021b4fa05143bf7              # double 8.8534699999999997
	.quad	0x4021e45176145953              # double 8.9459339999999994
	.quad	0x401a601abd1aa822              # double 6.593852
	.quad	0x4021015ca6ca03c5              # double 8.5026600000000006
	.quad	0x4018eb1a6d698fe7              # double 6.2295930000000004
	.quad	0x3ff27e4de3b8a19d              # double 1.1558360000000001
	.quad	0x401787995ee136e7              # double 5.8824209999999999
	.quad	0x400e5724fa8b4bf9              # double 3.792551
	.quad	0x40221bf76a2f48c3              # double 9.0546220000000002
	.quad	0x40205f52b90a7829              # double 8.186178
	.quad	0x3fe778769ec2ce46              # double 0.73345499999999997
	.quad	0x4015156fb8f57f73              # double 5.2709339999999996
	.quad	0x400489917939a7c1              # double 2.5671719999999998
	.quad	0x4010f3d9ec700043              # double 4.2381359999999999
	.quad	0x4008fcfe58601366              # double 3.123532
	.quad	0x40233c73cd573648              # double 9.6180710000000004
	.quad	0x4022f582ba5a0382              # double 9.4795130000000007
	.quad	0x401d83d8e0008638              # double 7.3787570000000002
	.quad	0x4023983afb7e9100              # double 9.7973250000000007
	.quad	0x3ff2b94c87980f56              # double 1.170239
	.quad	0x4012873eab367a10              # double 4.6320750000000004
	.quad	0x40189e02ea960b70              # double 6.1543080000000003
	.quad	0x400a4f11b60ae968              # double 3.288608
	.quad	0x40207d0ce4ead0c4              # double 8.2442390000000003
	.quad	0x3ffca20ab7132724              # double 1.789561
	.quad	0x4019bf67b1c0010c              # double 6.4369189999999996
	.quad	0x401e3b7132724313              # double 7.5580489999999995
	.quad	0x4021dd1244a6223e              # double 8.9317799999999998
	.quad	0x3fda85015c209247              # double 0.41436800000000001
	.quad	0x4021b07ca643cc08              # double 8.8447010000000006
	.quad	0x40191ffe2a3cea6c              # double 6.2812429999999999
	.quad	0x40238dbe3c105187              # double 9.7768420000000002
	.quad	0x4020338ef34d6a16              # double 8.1006999999999998
	.quad	0x4017636ac647778e              # double 5.8470870000000001
	.quad	0x3fb71151611ba3ca              # double 0.090107999999999993
	.quad	0x3ff33fd71b046845              # double 1.2030860000000001
	.quad	0x400e8e5bc87db2b3              # double 3.8195109999999999
	.quad	0x4020be7168f8e7de              # double 8.3719590000000004
	.quad	0x40238ff4fd6d7e89              # double 9.7811660000000006
	.quad	0x4018e523b3636f3b              # double 6.2237689999999999
	.quad	0x401b462cfd8f0c78              # double 6.8185310000000001
	.quad	0x3feb0bf5d78811b2              # double 0.84521000000000002
	.quad	0x3fef1b1d92b7fe09              # double 0.97206000000000003
	.quad	0x4002591cd1c7de51              # double 2.2935120000000002
	.quad	0x3fb7aebc408d8ec9              # double 0.092509999999999995
	.quad	0x4022798fe69270b0              # double 9.2374259999999992
	.quad	0x401240cf1800a7c6              # double 4.5632900000000003
	.quad	0x3fb0c79f666234a8              # double 0.065545999999999993
	.quad	0x4020a5c70435efa6              # double 8.3237839999999998
	.quad	0x40127383f0bae89f              # double 4.6128080000000002
	.quad	0x4009ff4e4430b179              # double 3.2496610000000001
	.quad	0x402280c7e28240b8              # double 9.2515250000000008
	.quad	0x40007082491afc05              # double 2.0549360000000001
	.quad	0x3ffcec3760bf5d79              # double 1.8076700000000001
	.quad	0x40163093964a59c0              # double 5.5474379999999996
	.quad	0x40082d0f6273929f              # double 3.0220020000000001
	.quad	0x401828ceb356da01              # double 6.0398509999999996
	.quad	0x4016c31ad2135dab              # double 5.6905320000000001
	.quad	0x401ee0a4a05dd8f9              # double 7.7193779999999998
	.quad	0x3fd77485e3da2f8c              # double 0.36648700000000001
	.quad	0x3fffda9435ac8a37              # double 1.990864
	.quad	0x40077903a7546d40              # double 2.9340890000000002
	.quad	0x4017e01f75104d55              # double 5.9688699999999999
	.quad	0x400612513b5bf6a1              # double 2.7589440000000001
	.quad	0x3fd9dea465a57647              # double 0.40421400000000002
	.quad	0x402327df7e8038a0              # double 9.5778770000000009
	.quad	0x400db377e1b8ed1c              # double 3.712631
	.quad	0x401e41af3a14cec4              # double 7.5641449999999999
	.quad	0x40203012599ed7c7              # double 8.09389
	.quad	0x3ff7c22ff08893b8              # double 1.484909
	.quad	0x40237ec95bff0457              # double 9.7476299999999991
	.quad	0x3fe684b7f5a5332b              # double 0.70370100000000002
	.quad	0x3ff1cefbb0e5e679              # double 1.1130329999999999
	.quad	0x40186dc8fb86f47b              # double 6.1072119999999996
	.quad	0x401dc11d3671ac15              # double 7.4385880000000002
	.quad	0x401f85e02ea960b7              # double 7.880738
	.quad	0x401a75f0b28522ea              # double 6.6151759999999999
	.quad	0x4022100d1b71758e              # double 9.0313499999999998
	.quad	0x402385785f8d2e51              # double 9.7606839999999994
	.quad	0x4021b7d0d0678c00              # double 8.8590149999999994
	.quad	0x4018b8e29f9ce8d9              # double 6.1805519999999996
	.quad	0x4011d21d10b1feeb              # double 4.4551889999999998
	.quad	0x4019ce9185cee17a              # double 6.451727
	.quad	0x4020a4c22ee4191a              # double 8.3217940000000006
	.quad	0x40116d1ed9dfdac7              # double 4.3565630000000004
	.quad	0x4012ab18dac258d6              # double 4.6670870000000004
	.quad	0x4013ae71044f1a1a              # double 4.9203530000000004
	.quad	0x3fe99af1886df82b              # double 0.80016399999999999
	.quad	0x3fd1f7a4e7ab7564              # double 0.28073999999999999
	.quad	0x400eb47e06961c37              # double 3.8381310000000002
	.quad	0x4005fdf00abf76a3              # double 2.748993
	.quad	0x3ff6f47c73eee526              # double 1.4346890000000001
	.quad	0x3fba5ecc3e3193f7              # double 0.103009
	.quad	0x40110074213a0c6b              # double 4.2504429999999997
	.quad	0x3fe925bb7b6bb129              # double 0.785856
	.quad	0x400030856e696a27              # double 2.023692
	.quad	0x4011a44dca8e2e2c              # double 4.4104530000000004
	.quad	0x40157120e1f7d73d              # double 5.3604770000000004
	.quad	0x400ba4ab606b7aa2              # double 3.4554049999999998
	.quad	0x402096045baf533f              # double 8.2930019999999995
	.quad	0x4010ee0c5a8155d6              # double 4.232469
	.quad	0x400359d7fd82773e              # double 2.4188689999999999
	.quad	0x3fdf1eff9f87f024              # double 0.486267
	.quad	0x40232097635e742a              # double 9.5636550000000007
	.quad	0x4021eed938151a43              # double 8.9665009999999992
	.quad	0x40231c4ae85b9e8c              # double 9.5552589999999995
	.quad	0x4011c69c23b7952d              # double 4.4439549999999999
	.quad	0x401402f3c2dadb83              # double 5.0028829999999997
	.quad	0x4016fea6c1a048e0              # double 5.7486829999999998
	.quad	0x401214ff865d7cb3              # double 4.5205060000000001
	.quad	0x401949c1b54195cd              # double 6.3220280000000004
	.quad	0x40120b81733226c4              # double 4.5112360000000002
	.quad	0x40092aaa7ded6ba9              # double 3.1458330000000001
	.quad	0x4023f01b866e43aa              # double 9.9689599999999992
	.quad	0x4021b0433d6c7219              # double 8.8442629999999998
	.quad	0x3ff1982ba5a03819              # double 1.0996509999999999
	.quad	0x400ee882f0e0a84c              # double 3.863531
	.quad	0x40215f540895d0b7              # double 8.6861879999999996
	.quad	0x400d600fba8826ab              # double 3.6719050000000002
	.quad	0x40108502eec7c958              # double 4.1298940000000002
	.quad	0x400ce390c9107faa              # double 3.611116
	.quad	0x4022a32f87ad080b              # double 9.3187219999999993
	.quad	0x3fc2a65492ff4ba5              # double 0.145701
	.quad	0x4018a3721d53cddd              # double 6.1596149999999996
	.quad	0x40210852934acaff              # double 8.5162549999999992
	.quad	0x3ff78f7a919695d9              # double 1.472529
	.quad	0x4009b49e01de2691              # double 3.2131919999999998
	.quad	0x401a0bf6e3f78bbd              # double 6.5116839999999998
	.quad	0x401d7fe004b7f5a5              # double 7.3748779999999998
	.quad	0x401ddce789e774ef              # double 7.4657270000000002
	.quad	0x400b86bce8533b10              # double 3.4407899999999998
	.quad	0x3fe4669270b06c44              # double 0.637521
	.quad	0x3f6c6b0531982880              # double 0.0034689999999999999
	.quad	0x400c6827b6fe2e6f              # double 3.5508570000000002
	.quad	0x3ff044db9c7368ad              # double 1.0168109999999999
	.quad	0x401ae877ab324852              # double 6.7270190000000003
	.quad	0x3fe4b211cb039ef1              # double 0.64673700000000001
	.quad	0x4010317bd8be7297              # double 4.048324
	.quad	0x4023a23e18698351              # double 9.8168799999999993
	.quad	0x400b3aa369fcf3dc              # double 3.403632
	.quad	0x401922ab25b317f0              # double 6.2838560000000001
	.quad	0x4021ee7ab7564303              # double 8.9657800000000005
	.quad	0x401394b72c5197a2              # double 4.8952299999999997
	.quad	0x4002b9841aac53b1              # double 2.3405840000000002
	.quad	0x40138897a67a52ac              # double 4.8833909999999996
	.quad	0x40110394face67d7              # double 4.2534979999999996
	.quad	0x40206bf727136a40              # double 8.2108699999999999
	.quad	0x4021fc4c7b02d59d              # double 8.9927709999999994
	.quad	0x3fffaf1ed17c5ef6              # double 1.980254
	.quad	0x3fc3f1737542a23c              # double 0.155806
	.quad	0x4012d0d306a2b170              # double 4.7039299999999997
	.quad	0x400331e18efbb0e6              # double 2.399356
	.quad	0x40224deca25529fe              # double 9.152196
	.quad	0x400c6049ecb31c22              # double 3.5470160000000002
	.quad	0x4020a102de00d1b7              # double 8.3144749999999998
	.quad	0x3f9d199bb2788db0              # double 0.028417999999999999
	.quad	0x4020c359bc33f855              # double 8.3815439999999999
	.quad	0x3ffff4dbdf8f4730              # double 1.9972799999999999
	.quad	0x3feb98c9fb6134ce              # double 0.86240099999999997
	.quad	0x4022bb23bbc6eb0b              # double 9.3655069999999991
	.quad	0x402028ca600b0293              # double 8.0796690000000009
	.quad	0x4017493b7d84901d              # double 5.8215159999999999
	.quad	0x3fec465625a682b6              # double 0.88358599999999998
	.quad	0x3fe5527e5215768a              # double 0.66632000000000002
	.quad	0x401714c09c3ce209              # double 5.7702660000000003
	.quad	0x3ff2638eb0318b93              # double 1.1493059999999999
	.quad	0x3fb659af9ebe9c88              # double 0.087305999999999995
	.quad	0x3ffb14c87980f55e              # double 1.692574
	.quad	0x3ff64f6cefed6345              # double 1.3943909999999999
	.quad	0x4011de33eff19503              # double 4.4669949999999998
	.quad	0x40114473471f7942              # double 4.316846
	.quad	0x401bd266ba493c8a              # double 6.95547
	.quad	0x400614eebf65dbfd              # double 2.760221
	.quad	0x401472c5e2cdc012              # double 5.1120830000000002
	.quad	0x401809d30270f388              # double 6.0095939999999999
	.quad	0x3ffad7603925bb7b              # double 1.6775819999999999
	.quad	0x402090c586876e1e              # double 8.2827570000000001
	.quad	0x401a0130164840e1              # double 6.5011599999999996
	.quad	0x40224b73083558a7              # double 9.1473619999999993
	.quad	0x401d67ba6698bb4d              # double 7.3512969999999997
	.quad	0x401a6b6aa4b9884c              # double 6.6048989999999996
	.quad	0x40153f42784a9479              # double 5.3117770000000002
	.quad	0x3ffb0008637bd05b              # double 1.687508
	.quad	0x400086612839042e              # double 2.0656150000000002
	.quad	0x4004c0e51d25aab4              # double 2.5941869999999998
	.quad	0x4006fdf5cf2495e1              # double 2.8740039999999998
	.quad	0x3feacb7f5a5332ad              # double 0.837341
	.quad	0x4003a79c4113c686              # double 2.4568409999999998
	.quad	0x3fee985271bcdbbe              # double 0.956094
	.quad	0x401a21ab8e8ea39c              # double 6.5328809999999997
	.quad	0x400d8adddf43c7d6              # double 3.692806
	.quad	0x401ee76ab5807fed              # double 7.7259929999999998
	.quad	0x4004ade54b48d3ae              # double 2.5849099999999998
	.quad	0x4017c723aafff36b              # double 5.9444720000000002
	.quad	0x4011ff91a32b12d3              # double 4.4995789999999998
	.quad	0x4023f2e4d1a65061              # double 9.9744019999999995
	.quad	0x40229c5a8155d5f5              # double 9.3053779999999993
	.quad	0x4002a903ea704bc2              # double 2.3325269999999998
	.quad	0x3ff05146e4c0df59              # double 1.0198430000000001
	.quad	0x400729d27c393682              # double 2.8954209999999998
	.quad	0x4012fdaec4a4095f              # double 4.7477369999999999
	.quad	0x401c0e22e5de15ca              # double 7.0138049999999996
	.quad	0x401cece703afb7e9              # double 7.2313499999999999
	.quad	0x4023474ea8da7f3d              # double 9.639272
	.quad	0x401d36933a0407cc              # double 7.3032959999999996
	.quad	0x3ff386d612c6ac21              # double 1.2204189999999999
	.quad	0x4017002c0a4a05de              # double 5.7501680000000004
	.quad	0x40236ff3f0fe047d              # double 9.7186579999999995
	.quad	0x4021fd592d98bf7f              # double 8.994821
	.quad	0x401627c5692b3cc5              # double 5.5388390000000003
	.quad	0x3ffd12ec6bce8534              # double 1.8171200000000001
	.quad	0x40094af35e310dbf              # double 3.161597
	.quad	0x401a017a89331a09              # double 6.5014440000000002
	.quad	0x402194f3dc054ef4              # double 8.7909229999999993
	.quad	0x401409285a921cce              # double 5.0089430000000004
	.quad	0x4014ba176ddaceee              # double 5.1817299999999999
	.quad	0x401ecc5260f5e41d              # double 7.6995329999999997
	.quad	0x3ffd80053e2d6239              # double 1.843755
	.quad	0x3febbdf090f733a9              # double 0.86693600000000004
	.quad	0x40229f9357603926              # double 9.3116710000000005
	.quad	0x3ff7ccb3a2595bbc              # double 1.487476
	.quad	0x401b7bb1290257c9              # double 6.8707929999999999
	.quad	0x4005aaae297396d1              # double 2.7083400000000002
	.quad	0x4016e919695d91ac              # double 5.7276360000000004
	.quad	0x4012526dce39b457              # double 4.5804970000000003
	.quad	0x3ff57ee5eedcc20d              # double 1.3434809999999999
	.quad	0x3ff33f5b5fa22707              # double 1.202968
	.quad	0x4016a78f25a250f8              # double 5.6636319999999998
	.quad	0x401fe8427418d691              # double 7.9768160000000003
	.quad	0x3ff0ed9274e22a2c              # double 1.058001
	.quad	0x3fd2b951c5c5718f              # double 0.29256100000000002
	.quad	0x40042a3df6db9410              # double 2.520626
	.quad	0x401085f3d7d3910c              # double 4.1308129999999998
	.quad	0x3ff11b8bac710cb3              # double 1.0692250000000001
	.quad	0x401575bccaf709b7              # double 5.3649779999999998
	.quad	0x3fc89b7bf1e8e608              # double 0.192245
	.quad	0x4019975c0767d34e              # double 6.3978120000000001
	.quad	0x401434c447c30d30              # double 5.0515299999999996
	.quad	0x4015b6a2f48c2e77              # double 5.428356
	.quad	0x40150918a009f623              # double 5.258883
	.quad	0x40112e43675ddd2b              # double 4.2951790000000001
	.quad	0x4012ce2d1f1cfbb9              # double 4.7013439999999997
	.quad	0x4019d993d5347a5b              # double 6.4624779999999999
	.quad	0x3feca8e71476af8a              # double 0.89561800000000003
	.quad	0x401438ee6b8305d9              # double 5.0555969999999997
	.quad	0x401b6ca57a786c22              # double 6.8560999999999996
	.quad	0x3fcc6f694467381d              # double 0.22214999999999999
	.quad	0x4016f6145953586d              # double 5.7403120000000003
	.quad	0x40016372606fac60              # double 2.1735579999999999
	.quad	0x401fcc91d14e3bcd              # double 7.9497749999999998
	.quad	0x401a6ced4e4c942d              # double 6.6063739999999997
	.quad	0x40201f2862f5989e              # double 8.0608550000000001
	.quad	0x4005fef8487b99d4              # double 2.7494969999999999
	.quad	0x401f37168f8e7ddd              # double 7.8037970000000003
	.quad	0x3ff2487a8d64d7f1              # double 1.142695
	.quad	0x401dd1beb18116ec              # double 7.4548290000000001
	.quad	0x4016d536d655e28b              # double 5.7082170000000003
	.quad	0x4021a5caf2d7f951              # double 8.8238140000000005
	.quad	0x402341cde5d18091              # double 9.6285240000000005
	.quad	0x4010b3a6ce358299              # double 4.1754410000000002
	.quad	0x3ffe0ba0e8427419              # double 1.877839
	.quad	0x400d69068986fcdf              # double 3.676282
	.quad	0x4017a27d45a5fc7e              # double 5.9086809999999996
	.quad	0x401d728b6d86ec18              # double 7.36186
	.quad	0x40042b862b27cbf7              # double 2.521252
	.quad	0x3ff3e327ed84d339              # double 1.242958
	.quad	0x3fe887cc7d1bb491              # double 0.76657699999999995
	.quad	0x402283cd9a52263e              # double 9.2574280000000009
	.quad	0x401b52bc72e275ab              # double 6.8307969999999996
	.quad	0x3fee1a77e5eaab04              # double 0.94073099999999998
	.quad	0x4010474b838c111b              # double 4.0696240000000001
	.quad	0x401a9ad6451b9303              # double 6.6512079999999996
	.quad	0x402391d4b6a619db              # double 9.7848260000000006
	.quad	0x401dd7d3d4280ae1              # double 7.460769
	.quad	0x401a10e0221426fe              # double 6.5164799999999996
	.quad	0x3fbdeeed8904f6e0              # double 0.116927
	.quad	0x401a028240b78034              # double 6.5024499999999996
	.quad	0x401c45aea3161a1e              # double 7.0680490000000002
	.quad	0x3fe2d5f3519bd406              # double 0.58861699999999995
	.quad	0x3ff2daee631f8a09              # double 1.17845
	.quad	0x401d88ffb8b26395              # double 7.383788
	.quad	0x3fd3c42a66dbd72c              # double 0.30884800000000001
	.quad	0x4022b4228997c3d7              # double 9.3518260000000009
	.quad	0x401720268900c522              # double 5.7813970000000001
	.quad	0x401dc61f5be5d9e4              # double 7.443479
	.quad	0x3ff176d97b30f8c6              # double 1.0915159999999999
	.quad	0x40010085b18548aa              # double 2.1252550000000001
	.quad	0x400cf6da0168b5cc              # double 3.620533
	.quad	0x3ff5061d8622c450              # double 1.313993
	.quad	0x40239a363b256ffc              # double 9.8011949999999998
	.quad	0x4016c5b20b8066c3              # double 5.6930620000000003
	.quad	0x4008e44178705426              # double 3.111453
	.quad	0x3ffd06e3b46fdeb5              # double 1.814182
	.quad	0x40128bed30f062d4              # double 4.636647
	.quad	0x4012f83a109d0636              # double 4.7424090000000003
	.quad	0x4018ca9c560c7c0f              # double 6.1978619999999998
	.quad	0x400f3322f2734f83              # double 3.899969
	.quad	0x401a3c49fd7a13c2              # double 6.5588759999999997
	.quad	0x401470d4dc65c704              # double 5.1101869999999998
	.quad	0x4003eb630a91537a              # double 2.489935
	.quad	0x401b390ff9724745              # double 6.8057249999999998
	.quad	0x402185f91600f345              # double 8.761666
	.quad	0x3fef01cb46bacf74              # double 0.96896899999999996
	.quad	0x401e296d8f4f93bc              # double 7.540457
	.quad	0x40224c8bc9cd3e0c              # double 9.1495040000000003
	.quad	0x400648cd63cb8173              # double 2.7855479999999999
	.quad	0x4021f9bfbdf090f7              # double 8.9877909999999996
	.quad	0x40224da57646ae3a              # double 9.1516529999999996
	.quad	0x4023bd8a116659d1              # double 9.8701939999999996
	.quad	0x4007a4ff43419e30              # double 2.955565
	.quad	0x4022153c579f2346              # double 9.0414759999999994
	.quad	0x40228fe82517e77d              # double 9.2810679999999994
	.quad	0x401afbcf4e874c90              # double 6.745908
	.quad	0x4010f332acfb762e              # double 4.2374980000000004
	.quad	0x402000795f676ea4              # double 8.0009259999999997
	.quad	0x4021ad1b4fe79ee0              # double 8.8380989999999997
	.quad	0x4019b63022dd7a9a              # double 6.427918
	.quad	0x400eee1693c03bc5              # double 3.8662540000000001
	.quad	0x400fd009b30728e9              # double 3.9765809999999999
	.quad	0x401e5234eb9a176e              # double 7.5802800000000001
	.quad	0x40230e71476af89c              # double 9.5282079999999993
	.quad	0x4014d241c3efae79              # double 5.2053289999999999
	.quad	0x401fcde37585be1b              # double 7.9510630000000004
	.quad	0x3fefc302b40f66a5              # double 0.99255499999999996
	.quad	0x401618726d04e619              # double 5.5238740000000002
	.quad	0x4008abac710cb296              # double 3.083825
	.quad	0x400e35182a9930be              # double 3.775925
	.quad	0x4021ac5d63886595              # double 8.8366500000000006
	.quad	0x40051b1af3a14cec              # double 2.6382349999999999
	.quad	0x40143c47a17f4129              # double 5.0588670000000002
	.quad	0x4022c28b6d86ec18              # double 9.3799700000000001
	.quad	0x3ff3b2cb641700ce              # double 1.2311510000000001
	.quad	0x3fd27d6733ebbfd7              # double 0.28890399999999999
	.quad	0x402106529bae46d0              # double 8.5123490000000004
	.quad	0x40021d883ba3443d              # double 2.2644199999999999
	.quad	0x401ff6266fd651b1              # double 7.9903810000000001
	.quad	0x401e0b3fa6defc7a              # double 7.5109849999999998
	.quad	0x4010970c564f97ee              # double 4.1475080000000002
	.quad	0x4016488333fc86cf              # double 5.5708130000000002
	.quad	0x401dfc4113c68662              # double 7.4963420000000003
	.quad	0x400479f98b71b8aa              # double 2.559558
	.quad	0x400484f6598e10cf              # double 2.5649229999999998
	.quad	0x3fe0a452c59fb1e2              # double 0.52005900000000005
	.quad	0x3ff45616f86a0989              # double 1.271018
	.quad	0x400e7666234a87e4              # double 3.8078120000000002
	.quad	0x4018ba71151611ba              # double 6.1820719999999998
	.quad	0x4021f779a6b50b0f              # double 8.9833499999999997
	.quad	0x401aff26f1dc50ce              # double 6.7491719999999997
	.quad	0x4011a5e41d4b6a62              # double 4.4120030000000003
	.quad	0x401e62378ab0c88a              # double 7.5959149999999998
	.quad	0x40093c71d6063172              # double 3.1545139999999998
	.quad	0x401eb92923e5b856              # double 7.6808209999999999
	.quad	0x4010d9ae4f3343fa              # double 4.2125789999999999
	.quad	0x3fcb681ecd4aa10e              # double 0.214115
	.quad	0x3ff39b2e59af9ebf              # double 1.2253860000000001
	.quad	0x3f903a322af57710              # double 0.015847
	.quad	0x3ff46917507e9d95              # double 1.275657
	.quad	0x4003c15a8deb0fae              # double 2.469411
	.quad	0x3ff13a311e85fd05              # double 1.0767070000000001
	.quad	0x40054dac258d5843              # double 2.6629260000000001
	.quad	0x4021662046c764ae              # double 8.699465
	.quad	0x4022fcee392e1ef7              # double 9.4940049999999995
	.quad	0x401a11eabbcb1cc9              # double 6.5174969999999997
	.quad	0x401bf992c8c50050              # double 6.9937240000000003
	.quad	0x40071a322af57710              # double 2.887791
	.quad	0x3fe6f7403dddb121              # double 0.71768200000000004
	.quad	0x3fe13b7b6bb12902              # double 0.53851099999999996
	.quad	0x401edf080303c07f              # double 7.7178040000000001
	.quad	0x4013b20ea5b530cf              # double 4.9238840000000001
	.quad	0x40219af2d7f950b9              # double 8.8026339999999994
	.quad	0x3ff472db1e9f2778              # double 1.278041
	.quad	0x40187fda4052d667              # double 6.1248560000000003
	.quad	0x3fe5c7baa9b499d0              # double 0.68063099999999999
	.quad	0x400244c61d8622c4              # double 2.2835809999999999
	.quad	0x400b0c814d72799a              # double 3.3811059999999999
	.quad	0x401b6b524399b2c4              # double 6.854806
	.quad	0x401cb7e80389f83c              # double 7.1795960000000001
	.quad	0x4022bda5daf07bfe              # double 9.3704059999999991
	.quad	0x3febe21101b00368              # double 0.87134599999999995
	.quad	0x4018f601797cc3a0              # double 6.24024
	.quad	0x4017681a9b8cb8e1              # double 5.8516640000000004
	.quad	0x40239143bf727137              # double 9.7837200000000006
	.quad	0x400e324b76f6d762              # double 3.7745579999999999
	.quad	0x3fc9842b734b5137              # double 0.199346
	.quad	0x40222f290abb44e5              # double 9.0921099999999999
	.quad	0x400a5d0e12e83a11              # double 3.2954370000000002
	.quad	0x401a86338b47c73f              # double 6.6310560000000001
	.quad	0x3ffaf0c77dd872f3              # double 1.6837839999999999
	.quad	0x4019d8101f31f46f              # double 6.4609990000000002
	.quad	0x400d5aa821f2990f              # double 3.6692659999999999
	.quad	0x401283558a761028              # double 4.6282560000000004
	.quad	0x400a512dba4d6e48              # double 3.2896380000000001
	.quad	0x402371563a9f383f              # double 9.7213609999999999
	.quad	0x3fce5a4f00ef1349              # double 0.23713100000000001
	.quad	0x3fe48f36694898f6              # double 0.642482
	.quad	0x401b65a4acf312b2              # double 6.8492610000000003
	.quad	0x40212658a32f4491              # double 8.5748949999999997
	.quad	0x400035c28f5c28f6              # double 2.0262500000000001
	.quad	0x3ff9d019f3c70c99              # double 1.6133059999999999
	.quad	0x4016848f10a99b6f              # double 5.6294519999999997
	.quad	0x400c54face67d780              # double 3.5414940000000001
	.quad	0x3fe865dbfceb7889              # double 0.76243399999999995
	.quad	0x40169e12a51e321a              # double 5.6543679999999998
	.quad	0x40059484d76ab580              # double 2.6975189999999998
	.quad	0x401b5c2b51bd61f6              # double 6.8400090000000002
	.quad	0x40229cf9c1f85d74              # double 9.3065929999999994
	.quad	0x40156d173fb7a5f4              # double 5.3565339999999999
	.quad	0x4003266772d5e072              # double 2.3937520000000001
	.quad	0x4012436199780baa              # double 4.5658019999999997
	.quad	0x40233ddb5525cc42              # double 9.6208139999999993
	.quad	0x401bb422ccb3a259              # double 6.9259139999999997
	.quad	0x40018cb1897a67a5              # double 2.1936979999999999
	.quad	0x400007e1fc08fa7b              # double 2.0038490000000002
	.quad	0x401918d434a01abd              # double 6.2742469999999999
	.quad	0x40162186db50f40e              # double 5.5327409999999997
	.quad	0x40231d69b17481b2              # double 9.5574469999999998
	.quad	0x4016f09741d084e8              # double 5.7349519999999998
	.quad	0x40132a7a41e57d9e              # double 4.7914820000000002
	.quad	0x4023202f944241c4              # double 9.5628630000000001
	.quad	0x400959e30014f8b6              # double 3.1688900000000002
	.quad	0x401a47efe0ce0b91              # double 6.5702509999999998
	.quad	0x4013c97d49d7ba67              # double 4.9467670000000004
	.quad	0x401a37c5ef62f9ca              # double 6.5544659999999997
	.quad	0x402157ea5f84cad5              # double 8.6717099999999991
	.quad	0x4023ecadbc664d3c              # double 9.962263
	.quad	0x401ecc8d9f9053a0              # double 7.6997590000000002
	.quad	0x40233fc6fbd273d6              # double 9.6245650000000005
	.quad	0x4004e4fa8b4bf8fd              # double 2.6118060000000001
	.quad	0x3ffb575c0767d34e              # double 1.708828
	.quad	0x40213d41743e963e              # double 8.6196400000000004
	.quad	0x4019a77186551937              # double 6.413519
	.quad	0x40213ee115592d99              # double 8.6228110000000004
	.quad	0x40166925fe974a34              # double 5.602684
	.quad	0x4009418372e6a769              # double 3.1569889999999998
	.quad	0x401a27b9e060fe48              # double 6.5387950000000004
	.quad	0x4017e777d0f1f57b              # double 5.9760429999999998
	.quad	0x4010c771001d5c31              # double 4.1947669999999997
	.quad	0x4000b19bd4067cf2              # double 2.0867230000000001
	.quad	0x40135b242070b8d0              # double 4.8390050000000002
	.quad	0x401d3476295208e1              # double 7.3012319999999997
	.quad	0x3fd9be6601bc98a2              # double 0.40224599999999999
	.quad	0x4021481e4712e408              # double 8.6408559999999994
	.quad	0x401e4e10cf5b1c86              # double 7.5762359999999997
	.quad	0x3ff778bcdfefbf40              # double 1.466977
	.quad	0x401fb1b64e054691              # double 7.9235470000000001
	.quad	0x40231a6351deefe5              # double 9.551539
	.quad	0x4022bcf26aec0725              # double 9.3690370000000005
	.quad	0x4009576b3bb83cf3              # double 3.1676850000000001
	.quad	0x4018461fe21d96ea              # double 6.0684810000000002
	.quad	0x400d94906034f3fe              # double 3.6975410000000002
	.quad	0x400cc5abc0e38a7e              # double 3.5965189999999998
	.quad	0x4005f764f11b60af              # double 2.7457980000000002
	.quad	0x401770f1b25f633d              # double 5.8602970000000001
	.quad	0x40101c39bcba3012              # double 4.0275639999999999
	.quad	0x4007ab3c3e74afd5              # double 2.9586109999999999
	.quad	0x4017b2b020c49ba6              # double 5.9245000000000001
	.quad	0x4012a8e64b231401              # double 4.6649409999999998
	.quad	0x4010175579af1887              # double 4.0227870000000001
	.quad	0x4018cda0168b5cc0              # double 6.200806
	.quad	0x3fc6eb0b7c3504c5              # double 0.17904800000000001
	.quad	0x3fd0d0c3d25247cb              # double 0.26274199999999998
	.quad	0x3fc7661f18c9fb61              # double 0.18280399999999999
	.quad	0x4021c06fef7c243e              # double 8.8758540000000004
	.quad	0x401150110a137f39              # double 4.3281900000000002
	.quad	0x3ff74df47f993d53              # double 1.4565319999999999
	.quad	0x3ffa4f0e90bc7b46              # double 1.644301
	.quad	0x4023682cd39da166              # double 9.7034669999999998
	.quad	0x401e4f0025bfad2a              # double 7.5771490000000004
	.quad	0x3ffff573eab367a1              # double 1.997425
	.quad	0x401ab14bdfd2630f              # double 6.6731410000000002
	.quad	0x4015898e97071822              # double 5.3843329999999998
	.quad	0x402392dcf4623d0c              # double 9.786842
	.quad	0x4023d04c8bc9cd3e              # double 9.9068339999999999
	.quad	0x400ea350d2806af4              # double 3.8297439999999998
	.quad	0x40235ce3150dae3e              # double 9.6814199999999992
	.quad	0x40122a6efc371da3              # double 4.5414389999999996
	.quad	0x4000c428d434a01b              # double 2.0957810000000001
	.quad	0x40222819b0ab2e17              # double 9.0783210000000008
	.quad	0x3fe5711947cfa26a              # double 0.67005599999999998
	.quad	0x401ffc51dabe2718              # double 7.9964060000000003
	.quad	0x401b14091c087443              # double 6.7695660000000002
	.quad	0x40220324638c9753              # double 9.0061370000000007
	.quad	0x40214c33508f648c              # double 8.6488289999999992
	.quad	0x401ffc46950fc71d              # double 7.9963629999999996
	.quad	0x4016122ee41919ac              # double 5.5177569999999996
	.quad	0x3fed5d872f33ca32              # double 0.91766700000000001
	.quad	0x3ff2b877ab324852              # double 1.1700360000000001
	.quad	0x401e11d323fee2ca              # double 7.5174070000000004
	.quad	0x40081b10fd7e4580              # double 3.0132159999999999
	.quad	0x401f010d7be9856a              # double 7.7510279999999998
	.quad	0x3fd22014727dcbde              # double 0.28320800000000002
	.quad	0x400ca9435ac8a372              # double 3.5826479999999998
	.quad	0x4019969b9d7fd827              # double 6.3970779999999996
	.quad	0x400c762f9ca5bd94              # double 3.5577079999999999
	.quad	0x401e1af46aa087ca              # double 7.5263229999999997
	.quad	0x40214644b6e935b9              # double 8.6372429999999998
	.quad	0x400efc4007570c56              # double 3.8731689999999999
	.quad	0x4013b96fa82e87d3              # double 4.9310900000000002
	.quad	0x401dc8f9b13165d4              # double 7.4462650000000004
	.quad	0x4008bbd9cae21102              # double 3.0917240000000001
	.quad	0x4016edca07f66e87              # double 5.7322160000000002
	.quad	0x400b7e39713ad5bf              # double 3.436633
	.quad	0x400089ff0cbaf966              # double 2.0673810000000001
	.quad	0x401b8cb252ce032e              # double 6.8873990000000003
	.quad	0x4023f0841ede1199              # double 9.9697580000000005
	.quad	0x401bdc75c4a83b1d              # double 6.965293
	.quad	0x40211e79ee02a77a              # double 8.5595239999999997
	.quad	0x400ed760bf5d7881              # double 3.855165
	.quad	0x3ff28cdfaca36199              # double 1.1593929999999999
	.quad	0x4011bdbec2480e8d              # double 4.4352980000000004
	.quad	0x402056115592d98c              # double 8.168101
	.quad	0x401bbd8b1dd5d3dd              # double 6.9351010000000004
	.quad	0x4020c19008205ff2              # double 8.3780520000000003
	.quad	0x40214afb7e90ff97              # double 8.6464499999999997
	.quad	0x4015609cc319c5a4              # double 5.3443480000000001
	.quad	0x401bea8deb0fadf3              # double 6.9790570000000001
	.quad	0x401eab28954a7f80              # double 7.6671469999999999
	.quad	0x400b33b645a1cac1              # double 3.4002500000000002
	.quad	0x3fe1f9f44d445671              # double 0.56176199999999998
	.quad	0x400f4b11c6d1e109              # double 3.9116550000000001
	.quad	0x401e4c44bf4cb189              # double 7.5744809999999995
	.quad	0x3fe3a6698bb4d489              # double 0.61406400000000005
	.quad	0x400478e64b231401              # double 2.5590329999999999
	.quad	0x401f4805e5f30e80              # double 7.820335
	.quad	0x400bfc4e2f37fbf0              # double 3.4981960000000001
	.quad	0x3ff934245f5ad96a              # double 1.5752299999999999
	.quad	0x4010a3ff25e56cd7              # double 4.1601530000000002
	.quad	0x401c26e008e9b38d              # double 7.0379639999999997
	.quad	0x4010fe6afcce1c58              # double 4.2484549999999999
	.quad	0x4020586ec17ebaf1              # double 8.17272
	.quad	0x402348cd63cb8173              # double 9.6421919999999996
	.quad	0x402216e49f51697f              # double 9.0447129999999998
	.quad	0x4022a9e3864cb5bb              # double 9.3318139999999996
	.quad	0x4023a6266fd651b1              # double 9.8245120000000003
	.quad	0x4012ced4e4c942d5              # double 4.7019840000000004
	.quad	0x4017617b0f6ad70e              # double 5.8451959999999996
	.quad	0x3ff53d71b0468449              # double 1.327501
	.quad	0x3fff220791c4b902              # double 1.945808
	.quad	0x3ffb2faa4766c6de              # double 1.6991369999999999
	.quad	0x401e16544fe36d22              # double 7.5218059999999998
	.quad	0x400201d4306e5cd5              # double 2.250893
	.quad	0x40059159c4977425              # double 2.6959719999999998
	.quad	0x40232c2e557de0d6              # double 9.5862909999999992
	.quad	0x4017c5e80bed740c              # double 5.9432679999999998
	.quad	0x4020182b841248d8              # double 8.0472070000000002
	.quad	0x401212a1f8e3ac0c              # double 4.5181959999999997
	.quad	0x40081c4b90214ad3              # double 3.0138159999999998
	.quad	0x4012c8151a437825              # double 4.6953930000000001
	.quad	0x402269bc126a65cf              # double 9.2065129999999993
	.quad	0x3fff2832b990afe6              # double 1.947314
	.quad	0x40066c5da6a44418              # double 2.8029130000000002
	.quad	0x4005538ef34d6a16              # double 2.6657999999999999
	.quad	0x4020d32a0663c750              # double 8.4124300000000005
	.quad	0x4018fdd72367e415              # double 6.2478910000000001
	.quad	0x400545308bb90646              # double 2.6587839999999998
	.quad	0x40188d50ebaade65              # double 6.1380039999999996
	.quad	0x402285b7f1737543              # double 9.2611690000000007
	.quad	0x4018be28ed5f138c              # double 6.1857030000000002
	.quad	0x4016dc0724b76f6d              # double 5.7148709999999996
	.quad	0x40019b5d894812be              # double 2.2008619999999999
	.quad	0x4010de38eb0318b9              # double 4.2170139999999998
	.quad	0x4021a1ef0f16f438              # double 8.8162769999999995
	.quad	0x4023109e34330d74              # double 9.5324570000000008
	.quad	0x3ff78e5c4eb56fb9              # double 1.472256
	.quad	0x400b5c0980b24207              # double 3.41994
	.quad	0x4011f0685553ef6b              # double 4.4847729999999997
	.quad	0x400e18f3eccc4695              # double 3.762184
	.quad	0x40024ddce7cd0353              # double 2.2880189999999998
	.quad	0x40122f45e0b4e11e              # double 4.5461650000000002
	.quad	0x4005c12a51e321a3              # double 2.719319
	.quad	0x4020e4297bfa4c62              # double 8.4456290000000003
	.quad	0x40106cffeb074a77              # double 4.1064449999999999
	.quad	0x4016d4fd2a62aa19              # double 5.7079969999999998
	.quad	0x401c5167ec7863bf              # double 7.0794980000000001
	.quad	0x3ff4173fb7a5f41b              # double 1.255676
	.quad	0x3ff7da8bd230b9dc              # double 1.490856
	.quad	0x4011daa7ded6ba8c              # double 4.4635309999999997
	.quad	0x4022f1bb2788db05              # double 9.4721309999999991
	.quad	0x402054a3400b88ca              # double 8.1653079999999996
	.quad	0x402024536d655e29              # double 8.0709490000000006
	.quad	0x3fe6fb480a5accd5              # double 0.71817399999999998
	.quad	0x4001eaf1455219a8              # double 2.2397179999999999
	.quad	0x400c91dbca9691a7              # double 3.5712199999999998
	.quad	0x401163e9ea140571              # double 4.3475720000000004
	.quad	0x4017729f9ce8d973              # double 5.8619370000000002
	.quad	0x4004abd9018e7579              # double 2.5839099999999999
	.quad	0x401b9c8754f3775c              # double 6.9028600000000004
	.quad	0x400a985e80bed741              # double 3.3243990000000001
	.quad	0x400537342edbb59e              # double 2.6519550000000001
	.quad	0x400ec6c6de76427c              # double 3.8470589999999998
	.quad	0x40032e2c12ad81ae              # double 2.397545
	.quad	0x40174f8b1572580c              # double 5.8276789999999998
	.quad	0x401eba41e57d9dbb              # double 7.6818920000000003
	.quad	0x4006ff87f023e9ea              # double 2.874771
	.quad	0x40089946c332f017              # double 3.0748419999999999
	.quad	0x400a102363b25700              # double 3.2578800000000001
	.quad	0x401a042cc2d6a9c5              # double 6.5040769999999997
	.quad	0x40067131ec0b5675              # double 2.8052709999999998
	.quad	0x4011654a7f8012e0              # double 4.3489170000000001
	.quad	0x402145338f798527              # double 8.6351589999999998
	.quad	0x400584430b178b37              # double 2.689581
	.quad	0x40222f6683c297c0              # double 9.0925790000000006
	.quad	0x401d4a7d6733ebc0              # double 7.3227440000000001
	.quad	0x400f1854046412cf              # double 3.886879
	.quad	0x4015ed14e3bcd35b              # double 5.4815250000000004
	.quad	0x4006f2f555821294              # double 2.8686319999999998
	.quad	0x40236a53543aeab8              # double 9.7076670000000007
	.quad	0x3fde0374ff865d7d              # double 0.46896100000000002
	.quad	0x402198303c07ee0b              # double 8.7972429999999999
	.quad	0x40115737da61e0c6              # double 4.3351740000000003
	.quad	0x401f0da61e0c5a81              # double 7.7633289999999997
	.quad	0x40181629d8409e56              # double 6.0216440000000002
	.quad	0x400da253111f0c35              # double 3.7042600000000001
	.quad	0x401eb137b07075b4              # double 7.6730640000000001
	.quad	0x4019721a2e7f6f4c              # double 6.3614280000000001
	.quad	0x400616523704790c              # double 2.7608990000000002
	.quad	0x402097ec13b9f128              # double 8.2967230000000001
	.quad	0x401c19107faa044b              # double 7.0244770000000001
	.quad	0x40088e3150dae3e7              # double 3.0694300000000001
	.quad	0x400858201cd5f99c              # double 3.0430299999999999
	.quad	0x4023ac940bbb1f25              # double 9.8370669999999993
	.quad	0x3ff457c0b1359792              # double 1.2714240000000001
	.quad	0x401db641f644955b              # double 7.4279859999999998
	.quad	0x40044b2314013ec4              # double 2.5366879999999998
	.quad	0x40101cf0307f23cd              # double 4.0282600000000004
	.quad	0x3ff5d5379fa97e13              # double 1.364555
	.quad	0x402354bec679cc75              # double 9.6655180000000004
	.quad	0x40159e8101f31f47              # double 5.4047890000000001
	.quad	0x401c81f2dc2b0ea2              # double 7.1269030000000004
	.quad	0x3fa71a7e30878748              # double 0.045123999999999997
	.quad	0x401f2ea91d9b1b7a              # double 7.7955670000000001
	.quad	0x40151de76427c7c5              # double 5.2792029999999999
	.quad	0x3ff8544aa53fc009              # double 1.5205789999999999
	.quad	0x3ff5ecf206423960              # double 1.3703479999999999
	.quad	0x40210e1a8262456f              # double 8.5275459999999992
	.quad	0x3fd300c0f01fb82c              # double 0.29692099999999999
	.quad	0x401fff77f27fe4bd              # double 7.9994810000000002
	.quad	0x3ffafd46b26bf877              # double 1.6868350000000001
	.quad	0x40052427418d690a              # double 2.6426530000000001
	.quad	0x401fd015c209246c              # double 7.9532080000000001
	.quad	0x4009b77079e59f2c              # double 3.2145700000000001
	.quad	0x400ac66e43aa79bc              # double 3.3468900000000001
	.quad	0x402306bdf4c2b51c              # double 9.5131680000000002
	.quad	0x4016029ed3953dea              # double 5.5025589999999998
	.quad	0x3fc06c43f5f91601              # double 0.128304
	.quad	0x40233dc22ab25b31              # double 9.6206219999999991
	.quad	0x4020884fd2a62aa2              # double 8.2662340000000007
	.quad	0x40234d6d3b6cbd98              # double 9.6512239999999991
	.quad	0x402095dc1e7967cb              # double 8.2926950000000001
	.quad	0x400ada038194c016              # double 3.356452
	.quad	0x4010698b71b8aa00              # double 4.1030709999999999
	.quad	0x400b37f7be121ee6              # double 3.4023279999999998
	.quad	0x4013e63cfb3311a5              # double 4.9748419999999998
	.quad	0x4014ec3c9eecbfb1              # double 5.2306999999999997
	.quad	0x40129b66f9335d25              # double 4.6517600000000003
	.quad	0x401e6917507e9d95              # double 7.6026280000000001
	.quad	0x401ac5fbf83382e4              # double 6.6933439999999997
	.quad	0x4020ed0b955f7836              # double 8.4629790000000007
	.quad	0x40223d33f42352eb              # double 9.1195369999999993
	.quad	0x4002a6c97d8cf399              # double 2.331439
	.quad	0x400dd6ba0620ab71              # double 3.7298469999999999
	.quad	0x4012d3ca31e7d999              # double 4.7068260000000004
	.quad	0x401ea7e4de3b8a1a              # double 7.6639590000000002
	.quad	0x401f33fb3743632c              # double 7.8007629999999999
	.quad	0x401f3525460aa64c              # double 7.8018999999999998
	.quad	0x4021fe931876188b              # double 8.9972159999999999
	.quad	0x3feb34677b395c42              # double 0.85014699999999999
	.quad	0x3fd6fdfc19c17226              # double 0.35925200000000002
	.quad	0x4019df9b13165d3a              # double 6.4683650000000004
	.quad	0x401bb76b7ed41b76              # double 6.9291210000000003
	.quad	0x400e687ebf22c01e              # double 3.8010229999999998
	.quad	0x4020a1bcfd4bf099              # double 8.3158949999999994
	.quad	0x3ff7a45f5ad96a6a              # double 1.47763
	.quad	0x4019c9c5e6ff7dfa              # double 6.447044
	.quad	0x401b897e132b55ef              # double 6.8842699999999999
	.quad	0x401cdc58ab92c062              # double 7.2151820000000004
	.quad	0x4021ef284167a95d              # double 8.9671040000000009
	.quad	0x4001bb8887229e90              # double 2.2165689999999998
	.quad	0x3fe76fe2e6ea8544              # double 0.73240799999999995
	.quad	0x4020b66a98244e94              # double 8.3562820000000002
	.quad	0x400ab46cb966be7b              # double 3.338098
	.quad	0x3ff81d5a187a4a49              # double 1.507166
	.quad	0x4010b7182235b4ee              # double 4.1788030000000003
	.quad	0x4019f636b0963561              # double 6.490443
	.quad	0x400f11ee2435696e              # double 3.8837549999999998
	.quad	0x40211cb89d6adf72              # double 8.5560960000000001
	.quad	0x402048247021d10b              # double 8.1409029999999998
	.quad	0x401d868661ae70c1              # double 7.3813719999999998
	.quad	0x40219b59146e4c0e              # double 8.8034140000000001
	.quad	0x4008a16b54e2b064              # double 3.0788180000000001
	.quad	0x401ebc447c30d307              # double 7.6838550000000003
	.quad	0x401ab821294573a8              # double 6.6798140000000004
	.quad	0x3fc91e9f2778140e              # double 0.196247
	.quad	0x4021eee008e9b38d              # double 8.9665529999999993
	.quad	0x402240d2c386d2ed              # double 9.1266079999999992
	.quad	0x4011e82d38476f2a              # double 4.4767349999999997
	.quad	0x4023bf6dfc5cdd51              # double 9.8738860000000006
	.quad	0x40117d07c84b5dcc              # double 4.3720999999999997
	.quad	0x402012c14c660a20              # double 8.0366309999999999
	.quad	0x4009c6cb966be7b0              # double 3.2220680000000002
	.quad	0x4011127d028a1dfc              # double 4.2680550000000004
	.quad	0x4020d594af4f0d84              # double 8.4171499999999994
	.quad	0x401d90d7be9856a3              # double 7.3914479999999996
	.quad	0x40006b8a5ce5b424              # double 2.0525099999999998
	.quad	0x400761ba7fc32ebe              # double 2.9227189999999998
	.quad	0x4022411fd5885d31              # double 9.1271959999999996
	.quad	0x402196f5caf2d7f9              # double 8.7948439999999994
	.quad	0x4011bb29e4d5d80e              # double 4.4327769999999997
	.quad	0x401b0616b54e2b06              # double 6.7559459999999998
	.quad	0x401a907e9d94d0dd              # double 6.641108
	.quad	0x4022345e9185cee1              # double 9.1022839999999992
	.quad	0x40152cc6822ff089              # double 5.2937260000000004
	.quad	0x3fef7646ae3a3a8e              # double 0.98318799999999995
	.quad	0x40143a077036c9c1              # double 5.0566690000000003
	.quad	0x4023badfb506dd6a              # double 9.8649880000000003
	.quad	0x4021f40639d5e4a4              # double 8.9766100000000008
	.quad	0x40207886df82b1f7              # double 8.2354040000000008
	.quad	0x401a2d8a116659d1              # double 6.5444719999999998
	.quad	0x40214a2ccb3a2596              # double 8.6448730000000005
	.quad	0x4022c1f383f0bae9              # double 9.3788110000000006
	.quad	0x401fa7c5692b3cc5              # double 7.9138390000000002
	.quad	0x401257b8d3f1843c              # double 4.5856659999999998
	.quad	0x4002c06a6e32e382              # double 2.343953
	.quad	0x4019ef65dbfceb79              # double 6.4837870000000004
	.quad	0x400050ff10ecb74e              # double 2.0395490000000001
	.quad	0x40223e266fd651b1              # double 9.1213870000000004
	.quad	0x40209ac01e68a0d3              # double 8.3022469999999995
	.quad	0x3fc0c3a860dcb9aa              # double 0.130971
	.quad	0x3ff00a04d12018a4              # double 1.0024459999999999
	.quad	0x401e29b8023a6ce3              # double 7.5407409999999996
	.quad	0x401dc685553ef6b6              # double 7.4438680000000002
	.quad	0x4007b74eebf65dc0              # double 2.9645060000000001
	.quad	0x4013eb267c6b8b69              # double 4.9796389999999997
	.quad	0x4023a6ee0f3cb3e5              # double 9.8260349999999991
	.quad	0x40010eda22f6a50d              # double 2.1322519999999998
	.quad	0x4013fbf7ad4b2746              # double 4.9960620000000002
	.quad	0x4021b7609dcf8940              # double 8.8581590000000006
	.quad	0x4006c04c8bc9cd3e              # double 2.843896
	.quad	0x40010f5dbb9cf9a0              # double 2.1325029999999998
	.quad	0x3fdb6e5471715c64              # double 0.42860900000000002
	.quad	0x3ff978b69552e2fc              # double 1.591971
	.quad	0x40239ce592967019              # double 9.8064389999999992
	.quad	0x4015a710cb295e9e              # double 5.4131499999999999
	.quad	0x4012baf965b20b80              # double 4.6825919999999996
	.quad	0x4016b7d88c1db014              # double 5.6795369999999998
	.quad	0x3fd946a5d6bebe16              # double 0.39493699999999998
	.quad	0x3fe8a8e0c9d9d346              # double 0.77061500000000005
	.quad	0x3fae94ccab3edd8b              # double 0.059728999999999997
	.quad	0x4020bbad18d25edd              # double 8.366555
	.quad	0x401e987ca643cc08              # double 7.6489130000000002
	.quad	0x3ff1d1c087442c80              # double 1.1137090000000001
	.quad	0x401cec1fc8f32379              # double 7.2305900000000003
	.quad	0x4011bfbeb9e492bc              # double 4.4372509999999998
	.quad	0x40091dd5d3dc8b87              # double 3.1395680000000001
	.quad	0x3fddcbfb15b573eb              # double 0.46557500000000002
	.quad	0x401e4873365881a1              # double 7.5707519999999997
	.quad	0x40153b923a29c77a              # double 5.3081750000000003
	.quad	0x4015a7778dd616f8              # double 5.4135419999999996
	.quad	0x3ffac180d3cff64d              # double 1.672242
	.quad	0x40009813879c4114              # double 2.0742560000000001
	.quad	0x4018b9142b302f73              # double 6.1807410000000003
	.quad	0x402100dcfcc5b8dc              # double 8.5016859999999994
	.quad	0x3fa84e3ffef39086              # double 0.047472
	.quad	0x4020667cf1c3265b              # double 8.2001720000000002
	.quad	0x4009e1b43526527a              # double 3.2352069999999999
	.quad	0x4012aa22706d5065              # double 4.6661469999999996
	.quad	0x3ff24d9f90539fba              # double 1.1439509999999999
	.quad	0x3fd3b5fe542e557e              # double 0.30798300000000001
	.quad	0x3ff79e4a38327675              # double 1.476145
	.quad	0x4011c2ed352220bc              # double 4.4403579999999998
	.quad	0x3fdc2a6f3f52fc26              # double 0.44008999999999998
	.quad	0x3fc6ac4b4d056c51              # double 0.17713300000000001
	.quad	0x3ff5ef6e82949a56              # double 1.3709549999999999
	.quad	0x40088299d883ba34              # double 3.0637699999999999
	.quad	0x3fe6467dfe32a066              # double 0.69610499999999997
	.quad	0x4016ae1198aeb80f              # double 5.6699890000000002
	.quad	0x40211b2441fea811              # double 8.5530109999999997
	.quad	0x4014419b90ea9e6f              # double 5.0640700000000001
	.quad	0x4011aecdd0d8cb08              # double 4.4207070000000002
	.quad	0x4014620ccff21b3b              # double 5.0957520000000001
	.quad	0x4023d36f3b213e3e              # double 9.9129579999999997
	.quad	0x3ff907af20ea5b53              # double 1.564376
	.quad	0x40145e974a3400b9              # double 5.0923740000000004
	.quad	0x401e1cb5fe542e55              # double 7.5280379999999995
	.quad	0x3ff40d2d44dca8e3              # double 1.253217
	.quad	0x4011861e0c5a8156              # double 4.3809740000000001
	.quad	0x4015fa51e321a2e8              # double 5.494453
	.quad	0x3ff1a34117f8444a              # double 1.102357
	.quad	0x4014ea027525460b              # double 5.2285250000000003
	.quad	0x401189efd86a8fc1              # double 4.3847040000000002
	.quad	0x4010e565c2d27807              # double 4.2240209999999996
	.quad	0x4022c689656eefa2              # double 9.3877670000000002
	.quad	0x40221a7a85015c21              # double 9.0517160000000008
	.quad	0x3fe1c903ea704bc2              # double 0.55578799999999995
	.quad	0x40231b9da16616b5              # double 9.5539369999999994
	.quad	0x4016700218def417              # double 5.6093830000000002
	.quad	0x4020997268d32831              # double 8.2997010000000007
	.quad	0x3ffe02784a9478c8              # double 1.8756029999999999
	.quad	0x4010f61b2a27f1b7              # double 4.2403380000000004
	.quad	0x4020813c89f40a28              # double 8.2524149999999992
	.quad	0x401ebd64d7f0ed3e              # double 7.6849550000000004
	.quad	0x401bdb1290257c91              # double 6.9639379999999997
	.quad	0x401b4dab5c39bcba              # double 6.8258489999999998
	.quad	0x40113baf533f4235              # double 4.3082859999999998
	.quad	0x40201c50268900c5              # double 8.0552989999999998
	.quad	0x4023d1dc0db2702a              # double 9.9098819999999996
	.quad	0x3ff5e8c154c985f0              # double 1.3693249999999999
	.quad	0x4013afe82517e77d              # double 4.9217839999999997
	.quad	0x400536922d948dc1              # double 2.6516459999999999
	.quad	0x4023389f1f14983d              # double 9.6105889999999991
	.quad	0x4015c21f6cacd185              # double 5.4395730000000002
	.quad	0x3fff3cdfefbf401c              # double 1.9523619999999999
	.quad	0x4022e6308787485e              # double 9.4495889999999996
	.quad	0x40014b15f88fc936              # double 2.1616629999999999
	.quad	0x3fd3a9e2bcf91a33              # double 0.30724400000000002
	.quad	0x400aab7ed41b75a7              # double 3.3337379999999999
	.quad	0x4007f07b784662bb              # double 2.9924230000000001
	.quad	0x401f0bea0ba1f4b2              # double 7.7616350000000001
	.quad	0x40159ed5ae1cde5d              # double 5.4051119999999999
	.quad	0x401c844fa05143bf              # double 7.1292099999999996
	.quad	0x3ff6507e9d94d0dd              # double 1.394652
	.quad	0x3ff81fc4c165907e              # double 1.5077560000000001
	.quad	0x400716c93a711516              # double 2.886126
	.quad	0x400ef08f648c7193              # double 3.867461
	.quad	0x3fbc858ff7596851              # double 0.111413
	.quad	0x401f9dc93ea2d2fe              # double 7.9040879999999998
	.quad	0x3ff6f83cf2cf95d5              # double 1.435605
	.quad	0x4008baaac1094a2c              # double 3.0911460000000002
	.quad	0x402055a187a4a490              # double 8.1672480000000007
	.quad	0x4020cb89b52007dd              # double 8.3975349999999995
	.quad	0x401549cfdd228566              # double 5.322082
	.quad	0x4020d9b3aeee9574              # double 8.4251989999999992
	.quad	0x400577774aba3876              # double 2.6833330000000002
	.quad	0x401625c0767d34df              # double 5.536867
	.quad	0x40095939a7c17a89              # double 3.1685669999999999
	.quad	0x400b152220bc382a              # double 3.385319
	.quad	0x4018fbabead4f590              # double 6.2457729999999998
	.quad	0x4000d0b73d188f43              # double 2.101912
	.quad	0x4010573d188f42ff              # double 4.0851940000000004
	.quad	0x4008fc15097c8084              # double 3.1230869999999999
	.quad	0x4010a3cf2cf95d4f              # double 4.1599700000000004
	.quad	0x401e19118c197e56              # double 7.5244809999999998
	.quad	0x3ffbdfcb0c026cc2              # double 1.742137
	.quad	0x4007bcfc3f811f4f              # double 2.9672779999999999
	.quad	0x4019777292c49342              # double 6.3666479999999996
	.quad	0x401201b823c85c25              # double 4.5016790000000002
	.quad	0x4010412fd32c625f              # double 4.0636590000000004
	.quad	0x402200dbad3a604e              # double 9.0016759999999998
	.quad	0x3fdba5e785b5b707              # double 0.43200100000000002
	.quad	0x401b004a72ead927              # double 6.7502839999999997
	.quad	0x401a91c6d1e108c4              # double 6.64236
	.quad	0x3ff7f94ea077036d              # double 1.4983660000000001
	.quad	0x3ffcd81f10667f91              # double 1.802764
	.quad	0x401d9b5286b59147              # double 7.4016820000000001
	.quad	0x3ff8dab0856e696a              # double 1.553391
	.quad	0x401a25a964e8b7e5              # double 6.5367790000000001
	.quad	0x401764b380cb6c7a              # double 5.8483409999999996
	.quad	0x401b82f0e0a84be4              # double 6.877872
	.quad	0x3fdd9513f8db4891              # double 0.46222400000000002
	.quad	0x401318461f9f01b8              # double 4.7737049999999996
	.quad	0x40189c1c1d6cf851              # double 6.1524510000000001
	.quad	0x400586c00da1a933              # double 2.6907960000000002
	.quad	0x3ff821ab4b72c519              # double 1.5082199999999999
	.quad	0x4021e95f2452c5a0              # double 8.9558040000000005
	.quad	0x401ec6249a133c1d              # double 7.693499
	.quad	0x400d9ade225fa659              # double 3.7006190000000001
	.quad	0x40191ffeb074a772              # double 6.2812450000000002
	.quad	0x4011f449dbec2481              # double 4.4885630000000001
	.quad	0x3fd822e1ac57e23f              # double 0.37712899999999999
	.quad	0x4017174c09c3ce21              # double 5.7727510000000004
	.quad	0x400579bf5946c333              # double 2.684447
	.quad	0x40110327674d1633              # double 4.2530799999999997
	.quad	0x400eee7253da72a8              # double 3.8664290000000001
	.quad	0x4023e5b940fecdd1              # double 9.9486790000000002
	.quad	0x40057d3dc8b86b16              # double 2.686153
	.quad	0x3ff3b320535c9e67              # double 1.2312320000000001
	.quad	0x400a9183b60285ec              # double 3.3210519999999999
	.quad	0x400b4f7c243dccea              # double 3.4138109999999999
	.quad	0x3fe4ecf206423960              # double 0.65392399999999995
	.quad	0x4003d8d36b4c7f35              # double 2.4808720000000002
	.quad	0x40149ed740c4156e              # double 5.1551179999999999
	.quad	0x400b80232096787d              # double 3.437567
	.quad	0x40116283d35eb745              # double 4.3462059999999996
	.quad	0x400ded0fe8ab4fa5              # double 3.7407530000000002
	.quad	0x4023787b139c94f7              # double 9.7353140000000006
	.quad	0x400f9beb18116ebd              # double 3.9511319999999999
	.quad	0x400db09741d084e8              # double 3.7112259999999999
	.quad	0x401ace358298cc14              # double 6.7013759999999998
	.quad	0x401e0102bc72e276              # double 7.5009870000000003
	.quad	0x40107fbe76c8b439              # double 4.1247499999999997
	.quad	0x4022ded117b5286b              # double 9.4351889999999993
	.quad	0x4007c5c810a569b1              # double 2.9715729999999998
	.quad	0x4001de15ca6ca03c              # double 2.2334399999999999
	.quad	0x4023662d6238da3c              # double 9.6995649999999997
	.quad	0x401c54ed6fda836f              # double 7.0829370000000003
	.quad	0x400a972d5e071c54              # double 3.323817
	.quad	0x400ae1cb46bacf74              # double 3.3602509999999999
	.quad	0x401abce032db1e9f              # double 6.6844489999999999
	.quad	0x401979da9c99285b              # double 6.3689980000000004
	.quad	0x4022472170931013              # double 9.1389270000000007
	.quad	0x4020b633acd5b680              # double 8.3558629999999994
	.quad	0x3ffc9c58255b035c              # double 1.78817
	.quad	0x4016cad4b2745bf2              # double 5.6980769999999996
	.quad	0x401a8bf01322f273              # double 6.6366579999999997
	.quad	0x400eeeaa6d267408              # double 3.866536
	.quad	0x4018c43d03968d76              # double 6.1916390000000003
	.quad	0x4014703ea704bc27              # double 5.1096139999999997
	.quad	0x401d4d8127b2cc71              # double 7.3256880000000004
	.quad	0x3ff403d35eb7457c              # double 1.250934
	.quad	0x400175f88fc9363f              # double 2.1826029999999998
	.quad	0x40208e4ead0c3d25              # double 8.2779439999999997
	.quad	0x3fc2a5b530ced4e5              # double 0.14568200000000001
	.quad	0x40219f06b37867f1              # double 8.8105980000000006
	.quad	0x40237369552e2fbe              # double 9.7254129999999996
	.quad	0x4022fb4a87e38eb0              # double 9.4908029999999997
	.quad	0x4003a813cab81f97              # double 2.4570690000000002
	.quad	0x400546d82ba5a038              # double 2.659592
	.quad	0x3fd0f92af9a8cdea              # double 0.265208
	.quad	0x4017fb6e935b91f7              # double 5.995539
	.quad	0x40010f284167a95d              # double 2.1324010000000002
	.quad	0x401cc41e57d9dba9              # double 7.191522
	.quad	0x3fb9b7e0ac7da1ec              # double 0.100462
	.quad	0x3fdf4a7b4e54f7a9              # double 0.48892099999999999
	.quad	0x401fb6d549731099              # double 7.9285480000000001
	.quad	0x400ac82278d0cc36              # double 3.3477220000000001
	.quad	0x400ec1a2e7f6f4bf              # double 3.8445490000000002
	.quad	0x40227a4bba12b5e5              # double 9.2388589999999997
	.quad	0x40162dabe27179c0              # double 5.5446010000000001
	.quad	0x4014bdc1e7967caf              # double 5.1853100000000003
	.quad	0x3ffebe38eb0318b9              # double 1.921441
	.quad	0x400c723f67f4dbe0              # double 3.5557850000000002
	.quad	0x4023ebfd2e946801              # double 9.9609159999999992
	.quad	0x4018f09aed56b010              # double 6.234966
	.quad	0x4019083d790752db              # double 6.2580470000000004
	.quad	0x402036c4e7253da7              # double 8.1069709999999997
	.quad	0x401b266cb10342ab              # double 6.7875240000000003
	.quad	0x400e5be22e5de15d              # double 3.7948650000000002
	.quad	0x402226b78897e996              # double 9.0756189999999997
	.quad	0x401ec75360d02470              # double 7.6946539999999999
	.quad	0x40239f2085b18549              # double 9.8107950000000005
	.quad	0x3fc20f55de58e64b              # double 0.141093
	.quad	0x4002d887ebf22c02              # double 2.355728
	.quad	0x4023ceaa087ca644              # double 9.9036410000000003
	.quad	0x401f986f049a9974              # double 7.8988610000000001
	.quad	0x4022f8c5c9a34ca1              # double 9.4858840000000004
	.quad	0x40104e0c17657753              # double 4.0762179999999999
	.quad	0x40049a0b5ed8d36b              # double 2.5752169999999999
	.quad	0x40162ad2dcb1465f              # double 5.5418200000000004
	.quad	0x4012cc4113c68662              # double 4.6994670000000003
	.quad	0x401725f5f0b28523              # double 5.7870710000000001
	.quad	0x400890a02b841249              # double 3.0706180000000001
	.quad	0x4004830a0b1bbcf5              # double 2.563984
	.quad	0x40002a2d2fe3f35a              # double 2.020594
	.quad	0x40211786c226809d              # double 8.5459499999999995
	.quad	0x400c9bf8b9baa151              # double 3.5761579999999999
	.quad	0x4011d3bb40b34e77              # double 4.4567690000000004
	.quad	0x4002d9b90ea9e6ef              # double 2.3563100000000001
	.quad	0x401c94c87980f55e              # double 7.1452960000000001
	.quad	0x3febd759ee88df37              # double 0.87003799999999998
	.quad	0x4005727f5e84f095              # double 2.6809069999999999
	.quad	0x40225fc08fa7a850              # double 9.1870159999999998
	.quad	0x402308eb0318b934              # double 9.5174179999999992
	.quad	0x3fed22f48c2e770c              # double 0.91051700000000002
	.quad	0x400e7ef9db22d0e5              # double 3.8119999999999998
	.quad	0x401f1fe718a86d72              # double 7.781155
	.quad	0x40214bf5b5fa2270              # double 8.6483589999999992
	.quad	0x400cea62aa19439e              # double 3.614446
	.quad	0x401b362e90364389              # double 6.8029120000000001
	.quad	0x401ec2452c59fb1e              # double 7.6897169999999999
	.quad	0x4019aab0856e696a              # double 6.4166889999999999
	.quad	0x40135bcd35a85879              # double 4.8396499999999998
	.quad	0x400e2f9e3864cb5c              # double 3.7732510000000001
	.quad	0x4009a64a16a48733              # double 3.2061959999999998
	.quad	0x4007bc69728a6117              # double 2.9669979999999998
	.quad	0x400ef61f5be5d9e4              # double 3.870177
	.quad	0x4012c7f8012dfd69              # double 4.6952819999999997
	.quad	0x4023aea161e4f766              # double 9.841075
	.quad	0x4013fa1986b9c305              # double 4.9942380000000002
	.quad	0x401edd42c3c9eecc              # double 7.716075
	.quad	0x3fd5784ec636b096              # double 0.33546799999999999
	.quad	0x400cb39b024f6599              # double 3.5876980000000001
	.quad	0x400dccc92146a1a5              # double 3.724993
	.quad	0x3ff3eb24a6a875d5              # double 1.2449079999999999
	.quad	0x4012b0efdc9c4da9              # double 4.67279
	.quad	0x40181aec8d5c7475              # double 6.0262929999999999
	.quad	0x400c00db2702a348              # double 3.5004179999999998
	.quad	0x3ffba8d759ee88df              # double 1.728721
	.quad	0x401e33547e06961c              # double 7.5501269999999998
	.quad	0x4023c328954a7f80              # double 9.8811689999999999
	.quad	0x401f4970b49e01de              # double 7.8217189999999999
	.quad	0x40211640a6b93ccd              # double 8.5434619999999999
	.quad	0x4021603f91e646f1              # double 8.6879849999999994
	.quad	0x401813ca31e7d999              # double 6.0193260000000004
	.quad	0x40132f661f18c9fb              # double 4.7962879999999997
	.quad	0x401abdf090f733a9              # double 6.6854880000000003
	.quad	0x401b151b0ccbc05d              # double 6.7706109999999997
	.quad	0x3ff1d03ea704bc27              # double 1.1133409999999999
	.quad	0x4018ae1e71044f1a              # double 6.1700379999999999
	.quad	0x401718fb86f47b67              # double 5.7743969999999996
	.quad	0x401a86f826edaa93              # double 6.6318060000000001
	.quad	0x400a5a4d6e47dc38              # double 3.2940930000000002
	.quad	0x40131e364bec679d              # double 4.7795040000000002
	.quad	0x3ffc32074ea8da7f              # double 1.7622139999999999
	.quad	0x402139bc33f85511              # double 8.6127640000000003
	.quad	0x401cf944aa53fc01              # double 7.2434260000000004
	.quad	0x4021b1d1b2e59afa              # double 8.8473030000000001
	.quad	0x3fd10da1a93293d1              # double 0.266457
	.quad	0x4023af8d716d2aa6              # double 9.8428760000000004
	.quad	0x4020af2ead9274e2              # double 8.3421529999999997
	.quad	0x3fe727c17a89331a              # double 0.723603
	.quad	0x3ff48b380cb6c7a8              # double 1.283989
	.quad	0x401923a4b5568e82              # double 6.284808
	.quad	0x4005b32b55ef1fde              # double 2.712485
	.quad	0x40232f0691ea78af              # double 9.5918469999999995
	.quad	0x401ededc3bd59924              # double 7.7176369999999999
	.quad	0x401120a4e379b77c              # double 4.281879
	.quad	0x4023d8bef8ceb357              # double 9.9233320000000002
	.quad	0x4017f4202d9cf13d              # double 5.9884040000000001
	.quad	0x402114c8366516db              # double 8.5405899999999999
	.quad	0x401a740357a35504              # double 6.6132939999999998
	.quad	0x4013759f2ba9d1f6              # double 4.864865
	.quad	0x4021c8348f53c57a              # double 8.8910260000000001
	.quad	0x40216f204295a6c6              # double 8.7170430000000003
	.quad	0x4020821f4b1ee243              # double 8.2541449999999994
	.quad	0x4011660a2014727e              # double 4.3496480000000002
	.quad	0x3fdaff1950331e3a              # double 0.42181999999999997
	.quad	0x3fff9baa1511dffc              # double 1.9755039999999999
	.quad	0x40180aa6d2674081              # double 6.010402
	.quad	0x4020631c864883fd              # double 8.1935769999999994
	.quad	0x401ee7531db445ed              # double 7.7259029999999997
	.quad	0x3fd30b39192641b3              # double 0.29755999999999999
	.quad	0x40216fc829cfdd23              # double 8.7183240000000009
	.quad	0x3ff7e1693c03bc4d              # double 1.492532
	.quad	0x402364662bae03b4              # double 9.6960920000000001
	.quad	0x3ff6f1572580c309              # double 1.433921
	.quad	0x3ff0beb9e492bc30              # double 1.046564
	.quad	0x4013d935b91f70df              # double 4.9621190000000004
	.quad	0x40151640639d5e4a              # double 5.2717299999999998
	.quad	0x3fef58be7296f651              # double 0.97958299999999998
	.quad	0x40130a99b6f5caf3              # double 4.7603520000000001
	.quad	0x400fcf63800218df              # double 3.976264
	.quad	0x40216fa4c61d8623              # double 8.7180540000000004
	.quad	0x4002ad716d2aa5c6              # double 2.334689
	.quad	0x4005071f79420b3d              # double 2.6284779999999999
	.quad	0x401719a7c17a8933              # double 5.7750539999999999
	.quad	0x401ccc1b54195cc8              # double 7.1993229999999997
	.quad	0x4003e368f08461fa              # double 2.48604
	.quad	0x401199e40c8472c1              # double 4.4002840000000001
	.quad	0x4011667f0aa21a72              # double 4.3500940000000003
	.quad	0x3ffead6cb5350093              # double 1.91734
	.quad	0x4015edef8487b99d              # double 5.4823589999999998
	.quad	0x4023bf1f57b41bfc              # double 9.8732860000000002
	.quad	0x4015116052502eec              # double 5.2669689999999996
	.quad	0x3fe6d5cd91eeaa6d              # double 0.71359899999999998
	.quad	0x401e21a8ef77f280              # double 7.5328710000000001
	.quad	0x401f63d577963993              # double 7.8474940000000001
	.quad	0x40079649d388a8b1              # double 2.9483830000000002
	.quad	0x4021184901d19158              # double 8.5474320000000006
	.quad	0x400e26d8b1dd5d3e              # double 3.7689680000000001
	.quad	0x3ff5612b5e529bae              # double 1.3362229999999999
	.quad	0x3ff06cc92146a1a5              # double 1.026559
	.quad	0x40163db0142f61ed              # double 5.5602419999999997
	.quad	0x3fe1cf7ec3547e07              # double 0.55657900000000005
	.quad	0x40140398a65492ff              # double 5.0035119999999997
	.quad	0x40021e97d06bbdbe              # double 2.2649379999999999
	.quad	0x40232c7d1bb4916d              # double 9.5868920000000006
	.quad	0x4021f6a854477ff1              # double 8.9817529999999994
	.quad	0x401714528283d35f              # double 5.7698460000000003
	.quad	0x40027423d9231c65              # double 2.3067090000000001
	.quad	0x4022509aed56b010              # double 9.157432
	.quad	0x3ff13a89331a08c0              # double 1.0767910000000001
	.quad	0x400c514445aa2e3c              # double 3.5396809999999999
	.quad	0x401c1fb09203a323              # double 7.0309470000000003
	.quad	0x400a829e90795f67              # double 3.3137789999999998
	.quad	0x40220dcaf2d7f951              # double 9.0269390000000005
	.quad	0x4005921ff2e48e8a              # double 2.6963499999999998
	.quad	0x4015c5379fa97e13              # double 5.4425949999999998
	.quad	0x4011f0520d130dfa              # double 4.4846880000000002
	.quad	0x40126d245b291b82              # double 4.6065839999999998
	.quad	0x4017c0f345069a4e              # double 5.938428
	.quad	0x400a1a7b0b391926              # double 3.2629299999999999
	.quad	0x4023a0ea7ce0fc2f              # double 9.8142890000000004
	.quad	0x401d59f2fdb8fde3              # double 7.3378410000000001
	.quad	0x3ff8f8c0053e2d62              # double 1.56073
	.quad	0x4021262f9ca5bd94              # double 8.5745819999999994
	.quad	0x401d3c75818c5c9a              # double 7.3090419999999998
	.quad	0x4020e3860999dcb5              # double 8.4443819999999992
	.quad	0x402006e696a26e54              # double 8.0134779999999992
	.quad	0x4007df6ba0620ab7              # double 2.984092
	.quad	0x401715e071c53f3a              # double 5.7713640000000002
	.quad	0x40118042528ae74f              # double 4.3752529999999998
	.quad	0x401f90d5629d840a              # double 7.8914390000000001
	.quad	0x3ff577d73c925786              # double 1.341758
	.quad	0x40204a172abef06b              # double 8.1447079999999996
	.quad	0x40187965f5275eea              # double 6.1185530000000004
	.quad	0x4019a19c17225b75              # double 6.4078220000000004
	.quad	0x401906e58a32f449              # double 6.2567349999999999
	.quad	0x40113f2734f82f51              # double 4.3116729999999999
	.quad	0x4019b72324c83665              # double 6.4288449999999999
	.quad	0x3ffd6e09fe86833c              # double 1.8393649999999999
	.quad	0x40065a82e87d2c7c              # double 2.7941950000000002
	.quad	0x40059490e66cb103              # double 2.6975419999999999
	.quad	0x40209e12839042d9              # double 8.3087350000000004
	.quad	0x401eeaa3ad18d25f              # double 7.7291400000000001
	.quad	0x4007a0221426fe72              # double 2.9531900000000002
	.quad	0x401ab234eb9a176e              # double 6.6740300000000001
	.quad	0x4020fc0229a5ebb7              # double 8.4922039999999992
	.quad	0x3fe4cb2d905c0336              # double 0.64980199999999999
	.quad	0x40204bd2b6f19935              # double 8.1480920000000001
	.quad	0x4020b25bfad29995              # double 8.3483579999999993
	.quad	0x4023fdd074213a0c              # double 9.9957309999999992
	.quad	0x4014ac91d14e3bcd              # double 5.1685249999999998
	.quad	0x401a4e89656eefa2              # double 6.5766960000000001
	.quad	0x401d6bfb15b573eb              # double 7.3554500000000003
	.quad	0x40055cb923a29c78              # double 2.6702750000000002
	.quad	0x4007bbc903ea704c              # double 2.9666920000000001
	.quad	0x401afd3996fa82e8              # double 6.7472899999999996
	.quad	0x401921dffc5479d5              # double 6.2830810000000001
	.quad	0x40223e45c358afc4              # double 9.1216259999999991
	.quad	0x4022b38c5436b8fa              # double 9.3506800000000005
	.quad	0x400b5b9c7368ad69              # double 3.4197320000000002
	.quad	0x401ae571d1d4738a              # double 6.7240669999999998
	.quad	0x400db8fabda0dfdf              # double 3.715322
	.quad	0x4022d3d89ce4a7b5              # double 9.4137620000000001
	.quad	0x400555935fc3b4f6              # double 2.666785
	.quad	0x4019043f5f91600f              # double 6.2541479999999998
	.quad	0x4021f6586013660e              # double 8.9811429999999994
	.quad	0x3ff36d634549b62c              # double 1.2142059999999999
	.quad	0x400f9d65a14488c6              # double 3.951854
	.quad	0x40214a715831f03d              # double 8.6453959999999999
	.quad	0x401be9d30270f388              # double 6.9783439999999999
	.quad	0x3fa9552e2fbe33ad              # double 0.049478000000000001
	.quad	0x401b62c625e99e95              # double 6.8464590000000003
	.quad	0x401173fe1975f2cb              # double 4.3632739999999997
	.quad	0x4014d3eea209aaa4              # double 5.2069650000000003
	.quad	0x3ff17acc4ef88b97              # double 1.0924799999999999
	.quad	0x4021b169c23b7953              # double 8.8465100000000003
	.quad	0x401b61b9f98b71b9              # double 6.8454360000000003
	.quad	0x3fd238c5436b8f9b              # double 0.284715
	.quad	0x3fbb88333fc86cec              # double 0.107547
	.quad	0x40207092ccf6be38              # double 8.2198700000000002
	.quad	0x4019bb77c02afddb              # double 6.4330740000000004
	.quad	0x401881511dffc548              # double 6.1262860000000003
	.quad	0x4002675cd0bb6ed6              # double 2.3004699999999998
	.quad	0x40205cd056c508b3              # double 8.1812769999999997
	.quad	0x40185b0e5e679464              # double 6.0889220000000002
	.quad	0x400db6f976790321              # double 3.714343
	.quad	0x4013527a63736cdf              # double 4.8305449999999999
	.quad	0x4015831f46ed245b              # double 5.3780489999999999
	.quad	0x401b582d38476f2a              # double 6.8361099999999997
	.quad	0x401a23ba3443d46b              # double 6.5348899999999999
	.quad	0x4016c84406c00da2              # double 5.6955720000000003
	.quad	0x40234d199bb2788e              # double 9.6505860000000006
	.quad	0x40123d4a1ad6451c              # double 4.5598530000000004
	.quad	0x4019e7a4a48f96e1              # double 6.4762139999999997
	.quad	0x40212bef06b37868              # double 8.5858080000000001
	.quad	0x401a80f7b9e060fe              # double 6.6259449999999998
	.quad	0x401999b280f12c28              # double 6.4000950000000003
	.quad	0x3ffdf7d523b3636f              # double 1.8730059999999999
	.quad	0x4000af5989df1173              # double 2.08562
	.quad	0x4015e6cfc829cfdd              # double 5.4754019999999999
	.quad	0x3ff8dbb384fd2a63              # double 1.5536380000000001
	.quad	0x40160b4070329803              # double 5.5109880000000002
	.quad	0x3ff10a9478c868ba              # double 1.065083
	.quad	0x3fffc198f1d3ed52              # double 1.9847649999999999
	.quad	0x40034e642bf9830e              # double 2.4132769999999999
	.quad	0x400ef6d2aa5c5f7c              # double 3.8705189999999998
	.quad	0x401b8bfa4c61d862              # double 6.8866969999999998
	.quad	0x4011c2ba9d1f6018              # double 4.4401650000000004
	.quad	0x4023f77318fc5048              # double 9.9832999999999998
	.quad	0x4023da3d70a3d70a              # double 9.9262499999999996
	.quad	0x401a7ed80a17b0f7              # double 6.6238710000000003
	.quad	0x400ed7b07075b3e1              # double 3.8553169999999999
	.quad	0x40189688bda9435b              # double 6.1470060000000002
	.quad	0x4014c2b302f72b45              # double 5.1901359999999999
	.quad	0x4006393dd97f62b7              # double 2.7779500000000001
	.quad	0x3ff969c560c7c0f4              # double 1.5883229999999999
	.quad	0x400a4bf01322f273              # double 3.2870789999999999
	.quad	0x401935b8dc55000d              # double 6.3024630000000004
	.quad	0x4019d008a697aede              # double 6.4531580000000002
	.quad	0x400c534df04ddb55              # double 3.5406759999999999
	.quad	0x402006f34d6a161e              # double 8.0135749999999994
	.quad	0x40219aa68f4b61fe              # double 8.8020519999999998
	.quad	0x40043e1869835159              # double 2.5303200000000001
	.quad	0x4020b486ad2dcb14              # double 8.3525899999999992
	.quad	0x4011f7381d7dbf48              # double 4.4914249999999996
	.quad	0x4015e1a719b4dcec              # double 5.470364
	.quad	0x401141f969e3c969              # double 4.3144280000000004
	.quad	0x401cf7d2c7b890d6              # double 7.2420150000000003
	.quad	0x40128c68a936c58f              # double 4.6371180000000001
	.quad	0x401457b5f1bef49d              # double 5.085655
	.quad	0x3fef03ec892ab68d              # double 0.969229
	.quad	0x40061c6fbd273d5c              # double 2.7638850000000001
	.quad	0x40179d3d4280ae10              # double 5.9035539999999997
	.quad	0x40028c083126e979              # double 2.3183750000000001
	.quad	0x4020483e20ccff22              # double 8.1410990000000005
	.quad	0x402124df266ba494              # double 8.5720150000000003
	.quad	0x400f867a52ac753e              # double 3.9406629999999998
	.quad	0x402084d4024b33db              # double 8.25943
	.quad	0x401a28e3ac0c62e5              # double 6.5399310000000002
	.quad	0x401f6a32f4491299              # double 7.8537100000000004
	.quad	0x402233315d701d9f              # double 9.0999859999999995
	.quad	0x401abbd556084a51              # double 6.6834309999999997
	.quad	0x4021522a0a958538              # double 8.6604770000000002
	.quad	0x4019c8750c1b9735              # double 6.4457589999999998
	.quad	0x401cc1f36262cba7              # double 7.1894049999999998
	.quad	0x4020828198f1d3ed              # double 8.2548949999999994
	.quad	0x401b762d40aaeafb              # double 6.8654070000000003
	.quad	0x401a81b4784230fd              # double 6.626665
	.quad	0x40203455c96030c2              # double 8.1022169999999996
	.quad	0x3ff73671ac14c661              # double 1.4507920000000001
	.quad	0x40149831f03d145e              # double 5.1486280000000004
	.quad	0x40192ef459d9902a              # double 6.2958540000000003
	.quad	0x3fd5f666234a87e4              # double 0.34316400000000002
	.quad	0x4001052b4d8ba40e              # double 2.1275240000000002
	.quad	0x40233c5dc8323359              # double 9.617903
	.quad	0x4010cbedb7281fda              # double 4.1991490000000002
	.quad	0x4011a99b6f5caf2d              # double 4.4156319999999996
	.quad	0x401e8ef49cf56ead              # double 7.6396050000000004
	.quad	0x4019bee2c98e53eb              # double 6.4364119999999998
	.quad	0x400619f87f023e9f              # double 2.7626810000000002
	.quad	0x402104070329802c              # double 8.5078659999999999
	.quad	0x3feaf2a9d627bf62              # double 0.84212200000000004
	.quad	0x4004733333333333              # double 2.5562499999999999
	.quad	0x400fad8665e02ea9              # double 3.9597289999999998
	.quad	0x4010b89656eefa1e              # double 4.1802609999999998
	.quad	0x401ceba7fc32ebe6              # double 7.2301330000000004
	.quad	0x3fe1ac16df3f9618              # double 0.552257
	.quad	0x401facce1c58255b              # double 7.9187549999999999
	.quad	0x4001cb8b69552e30              # double 2.2243870000000001
	.quad	0x40212df78359bc34              # double 8.589779
	.quad	0x401bd4f15e7c8d19              # double 6.9579519999999997
	.quad	0x3ff2b66e86c6583f              # double 1.1695390000000001
	.quad	0x400a19d3cbc48f11              # double 3.2626110000000001
	.quad	0x4023622c669057d1              # double 9.6917449999999991
	.quad	0x4011d4727dcbddba              # double 4.4574680000000004
	.quad	0x401f8b32ce89656f              # double 7.885936
	.quad	0x4011d5db76b3bb84              # double 4.4588450000000002
	.quad	0x400ac012599ed7c7              # double 3.343785
	.quad	0x3fe850e12e83a10a              # double 0.75987300000000002
	.quad	0x40141ef2c7325919              # double 5.0302230000000003
	.quad	0x3ff2e20578e5c4eb              # double 1.1801809999999999
	.quad	0x400c78266772d5e0              # double 3.5586669999999998
	.quad	0x401bafff36ac6477              # double 6.9218719999999996
	.quad	0x4012de3c536d655e              # double 4.7170269999999999
	.quad	0x40105aa5c5f7c676              # double 4.0885230000000004
	.quad	0x3ff226e221c8a7a4              # double 1.134493
	.quad	0x4022e281dc0db270              # double 9.4423969999999997
	.quad	0x400add76683c297c              # double 3.358136
	.quad	0x40081681ecd4aa11              # double 3.0109900000000001
	.quad	0x4004559791819d24              # double 2.5417930000000002
	.quad	0x400e244a6223e187              # double 3.7677200000000002
	.quad	0x400296555c52e72e              # double 2.3234050000000002
	.quad	0x4019254823854046              # double 6.2864079999999998
	.quad	0x402200201cd5f99c              # double 9.0002449999999996
	.quad	0x4019b132b55ef1fe              # double 6.4230450000000001
	.quad	0x4001b3f5b5fa2270              # double 2.2128709999999998
	.quad	0x4021082c4d65e460              # double 8.5159629999999993
	.quad	0x3ff45debd9018e75              # double 1.2729299999999999
	.quad	0x3ff8e11ec918e326              # double 1.554961
	.quad	0x4001ddbdb5d89481              # double 2.2332719999999999
	.quad	0x4001e9df97aaac11              # double 2.2391960000000002
	.quad	0x4019be27179bfdf8              # double 6.4356960000000001
	.quad	0x4011bb66b6177ea2              # double 4.4330090000000002
	.quad	0x40008a0a958537e3              # double 2.0674030000000001
	.quad	0x401940bd017dae82              # double 6.3132210000000004
	.quad	0x4022d455432873bd              # double 9.4147130000000007
	.quad	0x401cfcf7446f9b99              # double 7.2470369999999997
	.quad	0x40199601ffb480a6              # double 6.3964920000000003
	.quad	0x401937546d3f9e7c              # double 6.3040330000000004
	.quad	0x400e166f9335d24a              # double 3.760955
	.quad	0x40095a6defc7a398              # double 3.1691549999999999
	.quad	0x401f3bf76a2f48c3              # double 7.808561
	.quad	0x40239353d640e9d5              # double 9.7877489999999998
	.quad	0x40142811b1d92b80              # double 5.0391300000000001
	.quad	0x4020379463cfb331              # double 8.1085539999999998
	.quad	0x3ffc81a1554fbdad              # double 1.7816479999999999
	.quad	0x40221433d6c72192              # double 9.0394579999999998
	.quad	0x3ffeff10ecb74de0              # double 1.9372720000000001
	.quad	0x3ff6220ff540895d              # double 1.383316
	.quad	0x3ffcd210385c67e0              # double 1.801285
	.quad	0x40228d1633482be9              # double 9.2755600000000005
	.quad	0x4021edb573eab368              # double 8.9642750000000007
	.quad	0x3ff751c2a0232096              # double 1.4574609999999999
	.quad	0x40059b18dac258d6              # double 2.7007310000000002
	.quad	0x4021ba877ee4e26d              # double 8.8643149999999995
	.quad	0x400aad173fb7a5f4              # double 3.334517
	.quad	0x401a8fc4c165907e              # double 6.6403990000000004
	.quad	0x401aa779a6b50b0f              # double 6.6635499999999999
	.quad	0x3fea34245f5ad96a              # double 0.81886499999999995
	.quad	0x401794a0a0f4d7ae              # double 5.8951440000000002
	.quad	0x40215031ad2135db              # double 8.6566290000000006
	.quad	0x400bd4ec204f2ae0              # double 3.4789659999999998
	.quad	0x40239db3bfb58d15              # double 9.8080119999999997
	.quad	0x3fe475a74c09c3ce              # double 0.63936199999999999
	.quad	0x401f4008637bd05b              # double 7.812532
	.quad	0x401662a3cea6c1a0              # double 5.5963279999999997
	.quad	0x3ffd539756c93a71              # double 1.832908
	.quad	0x401f4c6b05319829              # double 7.8246270000000004
	.quad	0x400de9dd7ecbb7fa              # double 3.7391920000000001
	.quad	0x40077476af89c5e7              # double 2.931867
	.quad	0x40032bac710cb296              # double 2.396325
	.quad	0x40008b7c3504c48b              # double 2.0681080000000001
	.quad	0x401fac1ca3a4b557              # double 7.9180780000000003
	.quad	0x4021af7a7008a698              # double 8.8427310000000006
	.quad	0x40193adb402d16b9              # double 6.3074769999999996
	.quad	0x3fe27a69be09bb6b              # double 0.57744300000000004
	.quad	0x401481348b220792              # double 5.1261770000000002
	.quad	0x400062a3486f049b              # double 2.0481630000000002
	.quad	0x3fe58aaa7ded6ba9              # double 0.67317700000000003
	.quad	0x40174d41b75a74c1              # double 5.8254460000000003
	.quad	0x4011002f2f987400              # double 4.2501800000000003
	.quad	0x402029333b96af04              # double 8.0804690000000007
	.quad	0x400cb991361dc93f              # double 3.5906090000000002
	.quad	0x400bb6aceaaf35e3              # double 3.464197
	.quad	0x40212a435696e58a              # double 8.5825449999999996
	.quad	0x3fe6c08b75ea67e8              # double 0.71100399999999997
	.quad	0x4001b79a6b50b0f2              # double 2.2146499999999998
	.quad	0x40138c0f01fb82c3              # double 4.8867760000000002
	.quad	0x400d19c4113c6866              # double 3.637581
	.quad	0x4022dc6f9b994e1a              # double 9.4305389999999996
	.quad	0x40187661f18c9fb6              # double 6.1156079999999999
	.quad	0x4020c9170d62bf12              # double 8.392754
	.quad	0x40108e7a743a6480              # double 4.1391390000000001
	.quad	0x401581a21ea35936              # double 5.376595
	.quad	0x4010012dfd694ccb              # double 4.0011520000000003
	.quad	0x40060c7000431bdf              # double 2.7560730000000002
	.quad	0x40021389b52007dd              # double 2.2595399999999999
	.quad	0x3fe07c1376d54973              # double 0.51514599999999999
	.quad	0x4003ad887ebf22c0              # double 2.4597329999999999
	.quad	0x4020a084a515ce9e              # double 8.3135119999999993
	.quad	0x40164ec84f8f8a4c              # double 5.5769359999999999
	.quad	0x401264955b4677b4              # double 4.5982260000000004
	.quad	0x3ff6aa433508f649              # double 1.416568
	.quad	0x40213ede97d06bbe              # double 8.6227920000000005
	.quad	0x3fc77481b21c475e              # double 0.18324299999999999
	.quad	0x3fae9856a37ac3eb              # double 0.059755999999999997
	.quad	0x401e3587d6f97679              # double 7.5522759999999999
	.quad	0x401b434a87e38eb0              # double 6.8157139999999998
	.quad	0x3fd359f2ba9d1f60              # double 0.30236499999999999
	.quad	0x3ff007ce95faa8a8              # double 1.001906
	.quad	0x3fdfc25d074213a1              # double 0.49623800000000001
	.quad	0x400c006e19b90eaa              # double 3.50021
	.quad	0x40222958d9b5e95b              # double 9.0807559999999992
	.quad	0x3fe99cffeb074a77              # double 0.80041499999999999
	.quad	0x4017245fe1112770              # double 5.7855220000000003
	.quad	0x400bc04b7f5a5333              # double 3.4688940000000001
	.quad	0x4003ea25d8d79d0a              # double 2.4893299999999998
	.quad	0x400f0b50b0f27bb3              # double 3.880525
	.quad	0x4012b7a99fa11a97              # double 4.6793579999999997
	.quad	0x401290e0eb67c287              # double 4.641483
	.quad	0x4015f4a01abd1aa8              # double 5.4888919999999999
	.quad	0x40107441bb8c32a9              # double 4.1135320000000002
	.quad	0x4023795c853c1483              # double 9.7370339999999995
	.quad	0x3ffe4285ec3dab5c              # double 1.8912409999999999
	.quad	0x4023ea858793dd98              # double 9.95805
	.quad	0x401fb5b573eab368              # double 7.9274500000000003
	.quad	0x4014c342aa9f7b5b              # double 5.1906840000000001
	.quad	0x4018f6494d50ebab              # double 6.2405140000000001
	.quad	0x401fc34b945308bc              # double 7.9407180000000004
	.quad	0x401c3e01de269164              # double 7.0605539999999998
	.quad	0x3ff4144ed6fda837              # double 1.254958
	.quad	0x400d3e7210be9425              # double 3.655491
	.quad	0x3fbb5ec80c73abc9              # double 0.106915
	.quad	0x401bd146a1a500d6              # double 6.9543710000000001
	.quad	0x3fe9e79463cfb331              # double 0.80951899999999999
	.quad	0x3f847b677f6b1a2a              # double 0.010000999999999999
	.quad	0x4021c9f9acffa7eb              # double 8.8944829999999993
	.quad	0x40051cac083126e9              # double 2.6389999999999998
	.quad	0x40163baba7b9170d              # double 5.5582719999999997
	.quad	0x4015d687f455a7d2              # double 5.4595029999999998
	.quad	0x400d62a0a958537e              # double 3.6731579999999999
	.quad	0x402370b912dba4d7              # double 9.7201620000000001
	.quad	0x400481f75104d552              # double 2.5634600000000001
	.quad	0x401a2c7f77af6406              # double 6.5434549999999998
	.quad	0x4014217b5286b591              # double 5.0326969999999998
	.quad	0x40154e18266772d6              # double 5.3262640000000001
	.quad	0x4012fd206c8711d8              # double 4.7471940000000004
	.quad	0x400d65da6a444178              # double 3.6747329999999998
	.quad	0x400e455000c9539c              # double 3.7838440000000002
	.quad	0x400fb2799a1fd157              # double 3.9621460000000002
	.quad	0x4011f19e731d2e0e              # double 4.4859559999999998
	.quad	0x3ff0aa8c9b845565              # double 1.0416380000000001
	.quad	0x4005390ea9e6eeb7              # double 2.65286
	.quad	0x40070b6e935b91f7              # double 2.880582
	.quad	0x3fe74c6c54bcf0b7              # double 0.72807900000000003
	.quad	0x40017d92b7fe08af              # double 2.186315
	.quad	0x4012ebdec5f394b8              # double 4.7303420000000003
	.quad	0x40216b6ed677707a              # double 8.7098300000000002
	.quad	0x40142ec0f88333fd              # double 5.0456580000000004
	.quad	0x401ecb0a6fc58ab9              # double 7.6982819999999998
	.quad	0x3fc0ab2e1693c03c              # double 0.13022400000000001
	.quad	0x40099c9c4da9003f              # double 3.20147
	.quad	0x400b4fd00713f078              # double 3.4139710000000001
	.quad	0x4013c580c308feac              # double 4.9428739999999998
	.quad	0x3fa25b0ff10ecb75              # double 0.035851000000000001
	.quad	0x4019bab6d00b45ae              # double 6.4323379999999997
	.quad	0x40157ffac1d29dc7              # double 5.3749799999999999
	.quad	0x40198f56eac86057              # double 6.3899800000000004
	.quad	0x401afbc9cd3e0bd4              # double 6.7458869999999997
	.quad	0x40213b1e3a7daa50              # double 8.6154650000000004
	.quad	0x3fea4eb9a176ddad              # double 0.82211000000000001
	.quad	0x402321871e6cd291              # double 9.5654839999999996
	.quad	0x3ff32bbcb1cc9646              # double 1.198178
	.quad	0x401ab7d41743e964              # double 6.6795200000000001
	.quad	0x3fe4265061416378              # double 0.62967700000000004
	.quad	0x401e8c79b34a44c8              # double 7.6371830000000002
	.quad	0x401c91fbc5de9c02              # double 7.1425619999999999
	.quad	0x3fdcc169c23b7953              # double 0.44930500000000001
	.quad	0x40199c0724b76f6d              # double 6.4023709999999996
	.quad	0x3fc06d58c8eef1bb              # double 0.12833700000000001
	.quad	0x40154ec99f1ae2da              # double 5.3269409999999997
	.quad	0x402305de15ca6ca0              # double 9.5114599999999996
	.quad	0x400753f316e37154              # double 2.915991
	.quad	0x400f43f91e646f15              # double 3.9081899999999998
	.quad	0x400348d759ee88df              # double 2.4105669999999999
	.quad	0x3fedff5e84f09529              # double 0.93742300000000001
	.quad	0x4020d5a836eb4e98              # double 8.4172989999999999
	.quad	0x401ef9b56323bbc7              # double 7.743856
	.quad	0x4002ccc5fbf83383              # double 2.349987
	.quad	0x400105004fb1183b              # double 2.1274419999999998
	.quad	0x4021cc4b09e98dce              # double 8.8990100000000005
	.quad	0x401135260f5e41d5              # double 4.3019030000000003
	.quad	0x400559d6f112fd33              # double 2.6688670000000001
	.quad	0x3ff23867f0aa21a7              # double 1.138771
	.quad	0x4010c67903211cb0              # double 4.1938209999999998
	.quad	0x401a82ab68cef673              # double 6.6276070000000002
	.quad	0x40223674299d883c              # double 9.1063550000000006
	.quad	0x4014b83c6c97d8cf              # double 5.1799179999999998
	.quad	0x40094f3dc054ef46              # double 3.1636920000000002
	.quad	0x40175aed99cbee80              # double 5.8387969999999996
	.quad	0x401a137f7be121ee              # double 6.5190409999999996
	.quad	0x3fdfbc1eff9f87f0              # double 0.49585699999999999
	.quad	0x4015401a36e2eb1c              # double 5.3125999999999998
	.quad	0x4023ff95b35b0bbf              # double 9.9991889999999994
	.quad	0x3fd439c0ebedfa44              # double 0.316025
	.quad	0x4021f3b688bda943              # double 8.9760019999999994
	.quad	0x40047bc2b94d9408              # double 2.5604300000000002
	.quad	0x4013ae1d6494d50f              # double 4.9200340000000002
	.quad	0x4022b230fcf80dc3              # double 9.3480299999999996
	.quad	0x3ff4b0b9dc2f405f              # double 1.2931459999999999
	.quad	0x3feb64cd74927914              # double 0.85605500000000001
	.quad	0x3ff6fcab81f969e4              # double 1.436687
	.quad	0x40206306c43f5f91              # double 8.1934109999999993
	.quad	0x401da67dfe32a066              # double 7.4125899999999998
	.quad	0x3fe7a8848387df5d              # double 0.73932100000000001
	.quad	0x400195a07b352a84              # double 2.1980599999999999
	.quad	0x401384c5974e65bf              # double 4.8796600000000003
	.quad	0x3ffdec322291fb40              # double 1.8701650000000001
	.quad	0x401b071715c63ae2              # double 6.7569239999999997
	.quad	0x4019f4c9c90c4dec              # double 6.4890509999999999
	.quad	0x40011d2e0e30446b              # double 2.1392479999999998
	.quad	0x3feda0168b5cbff4              # double 0.92579199999999994
	.quad	0x401b83953dea465a              # double 6.8784989999999997
	.quad	0x40208c6c54bcf0b7              # double 8.2742640000000005
	.quad	0x401c26a65cf67b1c              # double 7.037744
	.quad	0x4023ead18d25edd0              # double 9.9586299999999994
	.quad	0x4020eb779e9d0e99              # double 8.4598969999999998
	.quad	0x3feb296d4c33b539              # double 0.84880699999999998
	.quad	0x40209ede1198aeb8              # double 8.3102879999999999
	.quad	0x4015c7cc7d1bb491              # double 5.4451159999999996
	.quad	0x4003ded8d36b4c7f              # double 2.4838119999999999
	.quad	0x3fdfca4b124d099e              # double 0.496722
	.quad	0x402279f31f46ed24              # double 9.2381829999999993
	.quad	0x401f954c985f06f7              # double 7.8958000000000003
	.quad	0x4011877143393ab4              # double 4.3822679999999998
	.quad	0x40022308feac42ea              # double 2.2671070000000002
	.quad	0x4014c275ee99a62f              # double 5.1899030000000002
	.quad	0x401a664c729f59cd              # double 6.599901
	.quad	0x40223bd33d29563b              # double 9.1168460000000007
	.quad	0x3ffed2e514c22ee4              # double 1.926488
	.quad	0x4011deb399f5dfec              # double 4.4674820000000004
	.quad	0x4019584dfce3150e              # double 6.3362350000000003
	.quad	0x4022ec9b41398634              # double 9.4621220000000008
	.quad	0x4010728672756862              # double 4.1118410000000001
	.quad	0x40229e8a936c58ef              # double 9.3096510000000006
	.quad	0x3fb7b5f1bef49cf5              # double 0.092619999999999994
	.quad	0x4021b6f4384ba0e8              # double 8.8573319999999995
	.quad	0x400d5532617c1bda              # double 3.6665999999999999
	.quad	0x402186f8ceb356da              # double 8.763617
	.quad	0x401e2dcdb37c99af              # double 7.5447300000000003
	.quad	0x402067caa7589efe              # double 8.2027180000000008
	.quad	0x3ffbe68a0d349be9              # double 1.743784
	.quad	0x401a6676a7264a17              # double 6.6000620000000003
	.quad	0x3ff546317268d328              # double 1.329637
	.quad	0x40014bc382a12f90              # double 2.161994
	.quad	0x40144cd3e0bd449a              # double 5.0750270000000004
	.quad	0x4020d2e924f227d0              # double 8.4119349999999997
	.quad	0x3ff3785e80bed741              # double 1.2168870000000001
	.quad	0x4007f52c16df3f96              # double 2.994713
	.quad	0x3fbb797460242d06              # double 0.107322
	.quad	0x4004b7e889c1b542              # double 2.5897990000000002
	.quad	0x3fef3d8e0008637c              # double 0.97626400000000002
	.quad	0x3fd76e978d4fdf3b              # double 0.36612499999999998
	.quad	0x4013d5e17e34b945              # double 4.9588679999999998
	.quad	0x402251b328b6d86f              # double 9.1595700000000004
	.quad	0x40020396073de1e3              # double 2.2517510000000001
	.quad	0x4016e2923e5b8562              # double 5.7212610000000002
	.quad	0x401fe3968d759ee9              # double 7.9722540000000003
	.quad	0x400628112ba16e7a              # double 2.7695639999999999
	.quad	0x401325332acfb763              # double 4.7863280000000001
	.quad	0x402299b21c475e63              # double 9.3001869999999993
	.quad	0x4013f05681ecd4aa              # double 4.9847049999999999
	.quad	0x4021c567fd3f5b60              # double 8.8855590000000007
	.quad	0x40196f78bbd38045              # double 6.3588589999999998
	.quad	0x400dccc78e9f6a94              # double 3.72499
	.quad	0x3f95e8d5410f94c8              # double 0.021395999999999998
	.quad	0x3fdf1e0c5a8155d6              # double 0.486209
	.quad	0x4022346ac215b9a6              # double 9.1023770000000006
	.quad	0x3ffb3ed41b75a74c              # double 1.702839
	.quad	0x4022bbfc86cebbba              # double 9.3671609999999994
	.quad	0x40211720c8cd63cc              # double 8.5451720000000008
	.quad	0x401eec16df3f9618              # double 7.7305559999999999
	.quad	0x402078ad46f587d7              # double 8.235697
	.quad	0x3fe38fa15db3397e              # double 0.61128300000000002
	.quad	0x3ff959fb1e18efbb              # double 1.584468
	.quad	0x40118193b3a68b1a              # double 4.3765400000000003
	.quad	0x3ff4791c4b90214b              # double 1.279568
	.quad	0x3feffea1c68ec52a              # double 0.99983299999999997
	.quad	0x3ff5829bf162ae4b              # double 1.344387
	.quad	0x400084534bd76ee7              # double 2.0646119999999999
	.quad	0x401fa8aefb2aae29              # double 7.9147299999999995
	.quad	0x40077607c4199fe4              # double 2.9326319999999999
	.quad	0x3ff5f8e1932d6ece              # double 1.373262
	.quad	0x4020b0bed740c415              # double 8.3452059999999992
	.quad	0x40229f329c347e8d              # double 9.3109330000000003
	.quad	0x3fd44f0520d130e0              # double 0.31732300000000002
	.quad	0x3ffa5ff1d81f1066              # double 1.6484239999999999
	.quad	0x401a3cefed63454a              # double 6.5595090000000003
	.quad	0x4019a27525460aa6              # double 6.4086499999999997
	.quad	0x401494fca42aed14              # double 5.1454950000000004
	.quad	0x40156baf965b20b8              # double 5.355162
	.quad	0x4001c474d9c6b053              # double 2.220926
	.quad	0x3ff537e6f71a7e31              # double 1.3261480000000001
	.quad	0x3ffc0eb0318b9347              # double 1.7535860000000001
	.quad	0x40224988b11409a2              # double 9.1436209999999996
	.quad	0x3f6b4784230fcf81              # double 0.0033300000000000001
	.quad	0x401fb4228997c3d7              # double 7.9259130000000004
	.quad	0x3fe7039042d8c2a4              # double 0.71918499999999996
	.quad	0x3ff8ebc2fc69728a              # double 1.5575589999999999
	.quad	0x4021a9ee675147f1              # double 8.8318969999999997
	.quad	0x401b8c1a47a9e2bd              # double 6.886819
	.quad	0x3fc76cacd184c272              # double 0.183004
	.quad	0x40158b9cf9a06a6e              # double 5.3863409999999998
	.quad	0x4010ed573647baaa              # double 4.2317780000000003
	.quad	0x400f108893b7d849              # double 3.883073
	.quad	0x3ffe79496249a134              # double 1.9046110000000001
	.quad	0x401b4103c8e25c81              # double 6.813491
	.quad	0x3fd136d655e28aa4              # double 0.26897199999999999
	.quad	0x40234c306e5cd4ed              # double 9.6488069999999996
	.quad	0x401362990f301eac              # double 4.8462870000000002
	.quad	0x4023c85271bcdbbe              # double 9.891254
	.quad	0x3fa46da4484944ed              # double 0.039898999999999997
	.quad	0x401568c7e28240b8              # double 5.3523250000000004
	.quad	0x400b6e703afb7e91              # double 3.428925
	.quad	0x4016c72324c83665              # double 5.6944699999999999
	.quad	0x4004703d9a95421c              # double 2.554805
	.quad	0x40073654d61b2a28              # double 2.901529
	.quad	0x4017988effe2a3cf              # double 5.8989830000000003
	.quad	0x40228b04ab606b7b              # double 9.2715200000000006
	.quad	0x4010d6f976790321              # double 4.2099359999999999
	.quad	0x4011593bc0a06ea0              # double 4.3371420000000001
	.quad	0x401966f47b677f6b              # double 6.3505419999999999
	.quad	0x3feb6412cf0f9d2c              # double 0.855966
	.quad	0x4021580c73abc947              # double 8.67197
	.quad	0x4015dd462c343b71              # double 5.4660880000000001
	.quad	0x4014cd3cff64cf8d              # double 5.2004279999999996
	.quad	0x401ca8a3f8982cb2              # double 7.1646879999999999
	.quad	0x40145f4f50a02b84              # double 5.0930759999999999
	.quad	0x4022ecc9ea9a3d2e              # double 9.4624780000000008
	.quad	0x4019e3c148344c38              # double 6.4724170000000001
	.quad	0x4016f8de2ac32229              # double 5.7430349999999999
	.quad	0x401d32f33ca31e7e              # double 7.2997560000000004
	.quad	0x3ff0ce4755ffe6d6              # double 1.0503610000000001
	.quad	0x40210cefcbd55608              # double 8.5252669999999995
	.quad	0x40020e054690de09              # double 2.2568459999999999
	.quad	0x402340ace24bba13              # double 9.6263190000000005
	.quad	0x3fe1029ae4f33440              # double 0.53156800000000004
	.quad	0x40234f8f041461b7              # double 9.6553880000000003
	.quad	0x4011d78854cdb7ae              # double 4.4604809999999997
	.quad	0x3ff5443914f483cb              # double 1.329156
	.quad	0x401c2199780baa58              # double 7.0328119999999998
	.quad	0x40086b0292817764              # double 3.052251
	.quad	0x401c6899392189be              # double 7.1021470000000004
	.quad	0x40233d5757d5a9eb              # double 9.6198069999999997
	.quad	0x401cda2c2374794f              # double 7.2130590000000003
	.quad	0x4016c18c197e5647              # double 5.6890109999999998
	.quad	0x4011bb8f57f737da              # double 4.4331639999999997
	.quad	0x40222ac061847f56              # double 9.0834989999999998
	.quad	0x4017b3acd5b6805a              # double 5.9254639999999998
	.quad	0x401476c1e364bec6              # double 5.1159739999999996
	.quad	0x40201cdc011d3672              # double 8.0563660000000006
	.quad	0x401153f20a73f749              # double 4.3319780000000003
	.quad	0x4001d23fee2c98e5              # double 2.2276609999999999
	.quad	0x4012fa8eb463497b              # double 4.7446849999999996
	.quad	0x4019d11f0c34c1a9              # double 6.4542200000000003
	.quad	0x4019df6598e10cf6              # double 6.4681610000000003
	.quad	0x4021e52aa5c5f7c6              # double 8.9475909999999992
	.quad	0x3ff4e376922d948e              # double 1.3055330000000001
	.quad	0x40226f83382e44b7              # double 9.2177980000000002
	.quad	0x4009766adb402d17              # double 3.1828210000000001
	.quad	0x400dd6c3760bf5d8              # double 3.7298650000000002
	.quad	0x3ff193ad5bee3d60              # double 1.098554
	.quad	0x400e3341e14bdfd2              # double 3.7750279999999998
	.quad	0x40161ab21815a07b              # double 5.5260699999999998
	.quad	0x40106fd9ba1b1961              # double 4.109229
	.quad	0x4015f8d4fdf3b646              # double 5.4930000000000003
	.quad	0x3f9c1d29dc725c3e              # double 0.027455
	.quad	0x401e5e308787485e              # double 7.5919819999999998
	.quad	0x400c80999dcb5782              # double 3.5627930000000001
	.quad	0x3fc7a74c09c3ce21              # double 0.18479300000000001
	.quad	0x401ff866e43aa79c              # double 7.9925800000000002
	.quad	0x400cb780346dc5d6              # double 3.5895999999999999
	.quad	0x40135f748a159818              # double 4.8432180000000002
	.quad	0x40026345cfede97d              # double 2.298473
	.quad	0x4022dcb5bb384fd3              # double 9.4310740000000006
	.quad	0x40201276534373f3              # double 8.0360589999999998
	.quad	0x401656e0d23d4f16              # double 5.5848420000000001
	.quad	0x4019b070329802c1              # double 6.4223030000000003
	.quad	0x40144b1c864883fd              # double 5.0733509999999997
	.quad	0x4021e92c27a63737              # double 8.9554150000000003
	.quad	0x4022efd06bbdbe3c              # double 9.4683869999999998
	.quad	0x3fbddaf07bfe7e20              # double 0.116622
	.quad	0x40050fdc1615ebfb              # double 2.6327440000000002
	.quad	0x4020ee1672324c83              # double 8.4650149999999993
	.quad	0x40210824d4cb9ecf              # double 8.5159059999999993
	.quad	0x40229443d46b26c0              # double 9.2895800000000008
	.quad	0x40112fd438d1d8a5              # double 4.2967079999999997
	.quad	0x4014b897a67a52ac              # double 5.1802659999999996
	.quad	0x4020545176145953              # double 8.1646839999999994
	.quad	0x401ba6c8b4395810              # double 6.9128749999999997
	.quad	0x400adb877ab32485              # double 3.357192
	.quad	0x3fd92806af46aa08              # double 0.39306799999999997
	.quad	0x4008170a3d70a3d7              # double 3.01125
	.quad	0x40169db5d894812c              # double 5.6540140000000001
	.quad	0x4022a511be6e6538              # double 9.3224009999999992
	.quad	0x4014e39c0ebedfa4              # double 5.2222749999999998
	.quad	0x4023786317268d33              # double 9.7351310000000008
	.quad	0x4019c2ebe596c82e              # double 6.440353
	.quad	0x401c39670196d8f5              # double 7.056057
	.quad	0x3fb110c2c5e2cdc0              # double 0.066661999999999999
	.quad	0x401153aa79bbadc1              # double 4.3317050000000004
	.quad	0x3feece789e774eec              # double 0.962704
	.quad	0x3fd12a7bd48cb4af              # double 0.26821800000000001
	.quad	0x3fd22e7b3d8e0008              # double 0.28408699999999998
	.quad	0x402139dadfb506dd              # double 8.6129979999999993
	.quad	0x3fb95feda6612839              # double 0.09912
	.quad	0x4000ba81dc0db270              # double 2.0910679999999999
	.quad	0x400bc0bf5d78811b              # double 3.4691149999999999
	.quad	0x4013ef5ec80c73ac              # double 4.9837600000000002
	.quad	0x400142fd75e2046c              # double 2.1577099999999998
	.quad	0x4023bc89f40a2878              # double 9.8682400000000001
	.quad	0x3fd3f1c3265add9c              # double 0.31163099999999999
	.quad	0x401abc1c1d6cf851              # double 6.6837010000000001
	.quad	0x401746638433d6c7              # double 5.8187389999999999
	.quad	0x400879b1b79d909f              # double 3.0594209999999999
	.quad	0x401e0de26916440f              # double 7.5135589999999998
	.quad	0x3ffe314445aa2e3c              # double 1.8870279999999999
	.quad	0x401bf534bd76ee74              # double 6.9894590000000001
	.quad	0x3fe0fbf61aa3f035              # double 0.53075700000000003
	.quad	0x400037fc7607c41a              # double 2.0273370000000002
	.quad	0x3fec305faebc408e              # double 0.88090500000000005
	.quad	0x4005633c60029f17              # double 2.6734550000000001
	.quad	0x401897396d0917d7              # double 6.1476800000000003
	.quad	0x3fe169ee45c358b0              # double 0.54418100000000003
	.quad	0x400028c7192ea52f              # double 2.019911
	.quad	0x40127d35653c9abb              # double 4.622274
	.quad	0x400c83d577963993              # double 3.5643720000000001
	.quad	0x401aec7b890d5a5c              # double 6.7309400000000004
	.quad	0x400063be6601bc99              # double 2.0487030000000002
	.quad	0x4018beaee2003ab8              # double 6.1862139999999997
	.quad	0x40165679cc74b839              # double 5.5844490000000002
	.quad	0x40188b0c4588a04d              # double 6.1357889999999999
	.quad	0x400776f32bdc26dd              # double 2.933081
	.quad	0x3fff1b10fd7e4580              # double 1.9441079999999999
	.quad	0x4000ef112fd32c62              # double 2.1167319999999998
	.quad	0x402075816aceaaf3              # double 8.2295029999999993
	.quad	0x3fe0ced916872b02              # double 0.52524999999999999
	.quad	0x400b37824d4cb9ed              # double 3.402104
	.quad	0x4007cd4d4024b33e              # double 2.9752450000000001
	.quad	0x402291b584b1ab08              # double 9.2845879999999993
	.quad	0x4002b6640a6b93cd              # double 2.3390580000000001
	.quad	0x400bb2617c1bda51              # double 3.4621
	.quad	0x401e856a37ac3eb8              # double 7.6302880000000001
	.quad	0x3fe85fb2edfe75bc              # double 0.76168199999999997
	.quad	0x4011f4245f5ad96a              # double 4.4884199999999996
	.quad	0x4011a941c8216c61              # double 4.4152899999999997
	.quad	0x401dc0a3d70a3d71              # double 7.4381250000000003
	.quad	0x401ff6b59146e4c1              # double 7.9909270000000001
	.quad	0x4022aac59fb1e18f              # double 9.333539
	.quad	0x401002c386d2ed78              # double 4.0026989999999998
	.quad	0x40053d955714b9cb              # double 2.6550699999999998
	.quad	0x3ff77671ac14c661              # double 1.4664170000000001
	.quad	0x4021d69b9d7fd827              # double 8.9191559999999992
	.quad	0x4023a74ddf86e3b4              # double 9.8267659999999992
	.quad	0x3ff903afb7e90ff9              # double 1.5633999999999999
	.quad	0x4015005bc01a36e3              # double 5.2503500000000001
	.quad	0x3fc60a17b0f6ad71              # double 0.172183
	.quad	0x40013607c4199fe4              # double 2.1513819999999999
	.quad	0x4023b7327aa68f4b              # double 9.8578069999999993
	.quad	0x4017d713f077ccc0              # double 5.9600369999999998
	.quad	0x4007ffae3608d089              # double 2.999844
	.quad	0x4021ff5cf2495e18              # double 8.9987560000000002
	.quad	0x3ff3a266fd651b0d              # double 1.227149
	.quad	0x40115a133c1ce6c1              # double 4.3379640000000004
	.quad	0x40167200c0f01fb8              # double 5.6113309999999998
	.quad	0x400e7f01b866e43b              # double 3.8120150000000002
	.quad	0x402111dc725c3dee              # double 8.5348849999999992
	.quad	0x400cee086bdf4c2b              # double 3.6162269999999999
	.quad	0x40114b780346dc5d              # double 4.3236999999999997
	.quad	0x3ffeab356da0168b              # double 1.9167989999999999
	.quad	0x3ff8b83cf2cf95d5              # double 1.54498
	.quad	0x402102b367a0f909              # double 8.5052749999999993
	.quad	0x400f00fa9c12f09e              # double 3.8754780000000002
	.quad	0x401667b28954a7f8              # double 5.601267
	.quad	0x402102af9a8cdea0              # double 8.5052459999999996
	.quad	0x40107cedd4845133              # double 4.122001
	.quad	0x402294914b167ec8              # double 9.2901710000000008
	.quad	0x40211a7264a16a48              # double 8.5516539999999992
	.quad	0x4019197a67a52ac7              # double 6.2748809999999997
	.quad	0x3fe97d71b0468449              # double 0.79656300000000002
	.quad	0x401af938583621fb              # double 6.743379
	.quad	0x3feb6d86ec17ebaf              # double 0.85711999999999999
	.quad	0x40190db0142f61ed              # double 6.2633669999999997
	.quad	0x3fdd8997c3d68406              # double 0.46152300000000002
	.quad	0x4009c9ac36544fe3              # double 3.2234729999999998
	.quad	0x3ff7807fed20296b              # double 1.468872
	.quad	0x4023ce77d523b363              # double 9.9032579999999992
	.quad	0x40131ba237cdcca7              # double 4.776986
	.quad	0x4004036b09635611              # double 2.5016690000000001
	.quad	0x400dee12e83a109d              # double 3.741247
	.quad	0x401bff954eb13dfb              # double 6.999593
	.quad	0x40229d549731098d              # double 9.3072859999999995
	.quad	0x4001703a7546d3fa              # double 2.179799
	.quad	0x4012a0281ba7fc33              # double 4.6564030000000001
	.quad	0x4021cf5d9a0f0a5f              # double 8.905011
	.quad	0x401908a2ec28b2a7              # double 6.2584340000000003
	.quad	0x40208cd8fd5cb791              # double 8.275093
	.quad	0x401e7eeb702602c9              # double 7.6239449999999999
	.quad	0x40187ed5ae1cde5d              # double 6.1238619999999999
	.quad	0x4021bba1b1960fa1              # double 8.8664679999999993
	.quad	0x3feaa413db7f1737              # double 0.83252899999999996
	.quad	0x400b27e1fc08fa7b              # double 3.3944740000000002
	.quad	0x401fb88c60cbf2b2              # double 7.9302229999999998
	.quad	0x40194bffcdab191e              # double 6.3242180000000001
	.quad	0x3fe0759685122318              # double 0.51435399999999998
	.quad	0x4022ab063e07a28c              # double 9.3340320000000005
	.quad	0x401da425f202107b              # double 7.4103009999999996
	.quad	0x3fd633d6c7219221              # double 0.346914
	.quad	0x401396b6e0d23d4f              # double 4.8971819999999999
	.quad	0x3fd402de00d1b717              # double 0.31267499999999998
	.quad	0x4010161b6d43d039              # double 4.0215889999999996
	.quad	0x400efe718a86d71f              # double 3.8742399999999999
	.quad	0x3ff745479d4d8341              # double 1.4544140000000001
	.quad	0x4001348ba83f4eca              # double 2.1506569999999998
	.quad	0x4006b717df19d66b              # double 2.8394010000000001
	.quad	0x40234144aa53fc01              # double 9.6274770000000007
	.quad	0x4006017ebaf10236              # double 2.7507299999999999
	.quad	0x3fffedaa92e62132              # double 1.9955240000000001
	.quad	0x4018d0f55de58e65              # double 6.2040610000000003
	.quad	0x4003fd49d7ba6699              # double 2.4986760000000001
	.quad	0x3f7ccfaeff5c6c12              # double 0.0070340000000000003
	.quad	0x402126f976790321              # double 8.5761219999999998
	.quad	0x400e098fe69270b0              # double 3.7546689999999998
	.quad	0x402097162ae4b018              # double 8.2950909999999993
	.quad	0x40189ec0f88333fd              # double 6.1550330000000004
	.quad	0x40191bf11f926c7f              # double 6.2772870000000003
	.quad	0x401d8b4bb5e0f7fd              # double 7.386031
	.quad	0x401b2ca925fe974a              # double 6.7936139999999998
	.quad	0x40099e6687f455a8              # double 3.2023440000000001
	.quad	0x401c1711947cfa27              # double 7.0225280000000003
	.quad	0x4020ddc209246bf0              # double 8.4331209999999999
	.quad	0x4000f16e37154003              # double 2.1178859999999999
	.quad	0x3fffe7f1b6912125              # double 1.994127
	.quad	0x402321aa60913a50              # double 9.5657530000000008
	.quad	0x4013e572580c3090              # double 4.9740690000000001
	.quad	0x4019d8db4890928a              # double 6.4617740000000001
	.quad	0x40236b7867f0aa22              # double 9.7099030000000006
	.quad	0x401b7bcad9ad85e0              # double 6.8708910000000003
	.quad	0x400779f666234a88              # double 2.934552
	.quad	0x3fe1ce032db1e9f2              # double 0.55639799999999995
	.quad	0x40152b76b3bb83cf              # double 5.2924449999999998
	.quad	0x4015e377e1b8ed1c              # double 5.472137
	.quad	0x402280800eae18ad              # double 9.2509770000000007
	.quad	0x40105741d084e832              # double 4.0852120000000003
	.quad	0x40113197e5647347              # double 4.2984309999999999
	.quad	0x401f8f9db22d0e56              # double 7.89025
	.quad	0x401ef6950fc71d60              # double 7.7408029999999997
	.quad	0x40067afc04c8bc9d              # double 2.8100510000000001
	.quad	0x4012312513b5bf6a              # double 4.547993
	.quad	0x4013f5e4606748e4              # double 4.9901289999999996
	.quad	0x402284806290eed0              # double 9.2587919999999997
	.quad	0x40210476af89c5e7              # double 8.508718
	.quad	0x401f8678c0053e2d              # double 7.8813199999999996
	.quad	0x40085340d4dc65c7              # double 3.040651
	.quad	0x4023e00e496ededb              # double 9.9376090000000001
	.quad	0x40170d2e94680171              # double 5.7628729999999999
	.quad	0x3fff9f15a4acf313              # double 1.9763390000000001
	.quad	0x401a58fa7a85015c              # double 6.5868929999999999
	.quad	0x4023c034091c0874              # double 9.8753969999999995
	.quad	0x400ab3a4f8726d05              # double 3.337717
	.quad	0x401291322f2734f8              # double 4.6417929999999998
	.quad	0x40215728c79f6662              # double 8.6702329999999996
	.quad	0x40215252ce032db2              # double 8.6607880000000002
	.quad	0x4008fd8c6d612c6b              # double 3.1238030000000001
	.quad	0x3fff64febd09e12a              # double 1.9621569999999999
	.quad	0x4015932e3821af7d              # double 5.3937309999999998
	.quad	0x4015fa8112ba16e8              # double 5.4946330000000003
	.quad	0x40019276fb09203a              # double 2.1965159999999999
	.quad	0x40105612839042d9              # double 4.0840550000000002
	.quad	0x4019fd9b1b79d90a              # double 6.497662
	.quad	0x401ecdb0142f61ed              # double 7.7008669999999996
	.quad	0x401b2dd6e04c0592              # double 6.7947649999999999
	.quad	0x401c18854cdb7ae5              # double 7.0239459999999996
	.quad	0x4001e38b8ae31d71              # double 2.2361059999999999
	.quad	0x402185f090f733a9              # double 8.7616010000000006
	.quad	0x3fee5350092ccf6c              # double 0.94767000000000001
	.quad	0x401c2c886162f167              # double 7.0434890000000001
	.quad	0x401293e1437c5693              # double 4.6444140000000003
	.quad	0x40228d4845132f88              # double 9.2759420000000005
	.quad	0x3ff9fb4b2fa93af7              # double 1.6238509999999999
	.quad	0x40192dbdf8f47304              # double 6.29467
	.quad	0x400db7b9e060fe48              # double 3.7147100000000002
	.quad	0x3fe8ca16a4873366              # double 0.77466900000000005
	.quad	0x40239a36e2eb1c43              # double 9.8011999999999996
	.quad	0x4023c9e6eeb70260              # double 9.8943399999999997
	.quad	0x401761d3ed527e52              # double 5.8455349999999999
	.quad	0x4016299a62ed3522              # double 5.5406279999999999
	.quad	0x40235025bfad2999              # double 9.6565379999999993
	.quad	0x400f36073de1e2df              # double 3.9013810000000002
	.quad	0x4009b1fff79c8430              # double 3.2119140000000002
	.quad	0x400cbc9a34ca0c28              # double 3.5920909999999999
	.quad	0x401c8d538ac18f82              # double 7.1380140000000001
	.quad	0x401e4d39da16616b              # double 7.5754159999999997
	.quad	0x40222e0ae9680e06              # double 9.0899269999999994
	.quad	0x4008e20d5629d841              # double 3.1103770000000002
	.quad	0x3fef3ac710cb295f              # double 0.97592500000000004
	.quad	0x3fcc7dbb16c1e365              # double 0.22258700000000001
	.quad	0x3fe9c4e50c5eb314              # double 0.80528500000000002
	.quad	0x401f998aeb80ecfa              # double 7.8999439999999996
	.quad	0x40237aa0cae642c0              # double 9.7395080000000007
	.quad	0x400f5c5f7c6759ab              # double 3.9201039999999998
	.quad	0x3fd1816f0068db8c              # double 0.27352500000000002
	.quad	0x4015a23e9ea14057              # double 5.408442
	.quad	0x40184be27179bfdf              # double 6.0741059999999996
	.quad	0x400c065e02ea960b              # double 3.5031089999999998
	.quad	0x4020b10e23af31b1              # double 8.3458109999999994
	.quad	0x401ff96e58a32f45              # double 7.9935850000000003
	.quad	0x400f214a4d2b2bfe              # double 3.8912550000000001
	.quad	0x4013469d30270f39              # double 4.8189590000000004
	.quad	0x40140c126a65cf68              # double 5.0117890000000003
	.quad	0x400e9baf533f4235              # double 3.8260179999999999
	.quad	0x40040db7281fd9ba              # double 2.506697
	.quad	0x4018eb994e1a3f46              # double 6.2300769999999996
	.quad	0x4013058255b035bd              # double 4.7553799999999997
	.quad	0x400882a23bff8a8f              # double 3.0637859999999999
	.quad	0x4018751654d61b2a              # double 6.1143429999999999
	.quad	0x4019b8aeb80ecfa7              # double 6.4303540000000003
	.quad	0x4004cb039ef0f16f              # double 2.5991279999999999
	.quad	0x4019e81733226c3c              # double 6.4766510000000004
	.quad	0x401255a78f25a251              # double 4.583647
	.quad	0x3fe14f8726d04e62              # double 0.54095800000000005
	.quad	0x4020495b35b0bbf5              # double 8.1432739999999999
	.quad	0x4017214b599aa609              # double 5.7825139999999999
	.quad	0x402211b0ee49f517              # double 9.0345530000000007
	.quad	0x4021a19c7bcc2939              # double 8.8156470000000002
	.quad	0x402377e4ffc9795b              # double 9.7341689999999996
	.quad	0x4002f46c332f0175              # double 2.3693469999999999
	.quad	0x40166e525892684d              # double 5.6077360000000001
	.quad	0x4010f903211cb03a              # double 4.2431760000000001
	.quad	0x4022837995ee136e              # double 9.2567869999999992
	.quad	0x4013b65c70435efa              # double 4.9280869999999997
	.quad	0x4010c37ef5a964e9              # double 4.1909140000000003
	.quad	0x400028027d88c1db              # double 2.019536
	.quad	0x400d8ca03c4b09ea              # double 3.6936650000000002
	.quad	0x4023926dce39b457              # double 9.7859940000000005
	.quad	0x40124b0d9513f8db              # double 4.5732939999999997
	.quad	0x401cf4af922962d0              # double 7.2389510000000001
	.quad	0x4022bf93ff25e56d              # double 9.3741760000000002
	.quad	0x3fee749491f2dc2b              # double 0.95173099999999999
	.quad	0x4011375d56f32bdc              # double 4.3040669999999999
	.quad	0x4003a78e9f6a93f3              # double 2.4568150000000002
	.quad	0x3ff7c2ea960b6fa0              # double 1.485087
	.quad	0x4023e087ebf22c02              # double 9.9385370000000002
	.quad	0x4011837c99ae924f              # double 4.3784049999999999
	.quad	0x4023bad3a604e1e7              # double 9.8648959999999998
	.quad	0x401522b6f19934f0              # double 5.2839010000000002
	.quad	0x401c95c28f5c28f6              # double 7.1462500000000002
	.quad	0x4016c661ae70c133              # double 5.6937319999999998
	.quad	0x40086ed02cd39da1              # double 3.0541079999999998
	.quad	0x4011aee5abc0e38a              # double 4.4207979999999996
	.quad	0x4022aaa4b9884c6a              # double 9.3332879999999996
	.quad	0x4020f3a5e353f7cf              # double 8.4758750000000003
	.quad	0x3fd740d4dc65c704              # double 0.36333199999999999
	.quad	0x4011822ff08893b8              # double 4.3771360000000001
	.quad	0x3fd52ae07e5a78f2              # double 0.33074199999999998
	.quad	0x4013e344c37e6f72              # double 4.9719420000000003
	.quad	0x4023fd844d013a93              # double 9.9951500000000006
	.quad	0x3fb37af640639d5e              # double 0.076094999999999996
	.quad	0x401b69a62ed35222              # double 6.853173
	.quad	0x3ffdcef34d6a161e              # double 1.8630249999999999
	.quad	0x401f88d5410f94c8              # double 7.8836259999999995
	.quad	0x401d6d017dae8188              # double 7.3564509999999998
	.quad	0x402102df9378ee28              # double 8.5056119999999993
	.quad	0x4021225d6bebe165              # double 8.5671189999999999
	.quad	0x3fe67444e0daa0cb              # double 0.70169300000000001
	.quad	0x4020219220ff5409              # double 8.0655680000000007
	.quad	0x400e1be4473cd573              # double 3.7636189999999998
	.quad	0x3ff29461b6d43d04              # double 1.1612260000000001
	.quad	0x401a709a671ef30a              # double 6.6099639999999997
	.quad	0x3ff391aa821f2991              # double 1.223063
	.quad	0x400aeafee6fb4c3c              # double 3.364744
	.quad	0x3fbf01a79fec99f2              # double 0.121119
	.quad	0x40212e00b0292817              # double 8.5898489999999992
	.quad	0x401a52c1b10fd7e4              # double 6.5808169999999997
	.quad	0x402076b4c7f34938              # double 8.2318479999999994
	.quad	0x40032a37ac3eb7cc              # double 2.3956140000000001
	.quad	0x4015abd76ee73e68              # double 5.4178139999999999
	.quad	0x3ff472c1f42bb667              # double 1.278017
	.quad	0x4009ea979e16d6dc              # double 3.239547
	.quad	0x3fc9256ffc115df6              # double 0.19645499999999999
	.quad	0x402028476f2a5a47              # double 8.0786700000000007
	.quad	0x4022e84449dbec25              # double 9.4536460000000008
	.quad	0x401e9fc9bc771434              # double 7.6560430000000004
	.quad	0x401e6685553ef6b6              # double 7.6001180000000002
	.quad	0x40236c0d4dc65c70              # double 9.7110389999999995
	.quad	0x4004fd0bfa0945fa              # double 2.6235580000000001
	.quad	0x4011b37ac3eb7cbb              # double 4.4252729999999998
	.quad	0x3ff0b0574b407033              # double 1.0430520000000001
	.quad	0x400261733226c3b9              # double 2.2975829999999999
	.quad	0x401daeb7cbb3c819              # double 7.420623
	.quad	0x4017165add9c27e9              # double 5.7718309999999997
	.quad	0x400e2b313be22e5e              # double 3.7710900000000001
	.quad	0x400ba238da3c2118              # double 3.4542099999999998
	.quad	0x3fd98997c3d68406              # double 0.39902300000000002
	.quad	0x40006d04e618ce2d              # double 2.0532319999999999
	.quad	0x4010bd05f2884838              # double 4.1845929999999996
	.quad	0x400348fd9fd36f7e              # double 2.4106399999999999
	.quad	0x3fdf4a90470a808d              # double 0.48892600000000003
	.quad	0x3f97c1bda5119ce0              # double 0.023199999999999998
	.quad	0x4000386c226809d5              # double 2.0275500000000002
	.quad	0x401d922b3892ee85              # double 7.3927430000000003
	.quad	0x4023c4da4ce8101f              # double 9.8844779999999996
	.quad	0x401e39cbab649d39              # double 7.5564410000000004
	.quad	0x4003d21d53cddd6e              # double 2.477595
	.quad	0x40214cb662fdfc1a              # double 8.6498290000000004
	.quad	0x401426034f3fd934              # double 5.0371220000000001
	.quad	0x3ffb0f68be2f7b18              # double 1.691262
	.quad	0x4006ba6937d1fe65              # double 2.841021
	.quad	0x3ffe78c5436b8f9b              # double 1.904485
	.quad	0x4010ffcbd556084a              # double 4.2498009999999997
	.quad	0x40109fe8ee6b8306              # double 4.1561620000000001
	.quad	0x401078a86d71f362              # double 4.1178299999999997
	.quad	0x4020d146a1a500d6              # double 8.4087420000000002
	.quad	0x401507f6b1a2a4db              # double 5.2577769999999999
	.quad	0x400f011e42e12620              # double 3.8755459999999999
	.quad	0x401c3eaee2003ab8              # double 7.0612139999999997
	.quad	0x4022e641700cd856              # double 9.4497180000000007
	.quad	0x4015209d495182aa              # double 5.2818500000000004
	.quad	0x40196a02b841248d              # double 6.3535259999999996
	.quad	0x401eb82adc4c9c91              # double 7.6798510000000002
	.quad	0x4013286e7e62dc6e              # double 4.7894839999999999
	.quad	0x402195e093532e7b              # double 8.7927289999999996
	.quad	0x4014f9a4df47f994              # double 5.2437930000000001
	.quad	0x3fc88f08461f9f02              # double 0.19186500000000001
	.quad	0x3fc85931ca7d6734              # double 0.190222
	.quad	0x40237b7c1376d549              # double 9.7411809999999992
	.quad	0x4022606df82b1f68              # double 9.1883389999999991
	.quad	0x40203e9d51b4fe7a              # double 8.1222940000000001
	.quad	0x401a70a67620ee8d              # double 6.6100099999999999
	.quad	0x40223900e6afcce2              # double 9.1113350000000004
	.quad	0x4012487db2b34613              # double 4.570792
	.quad	0x400ece2b063e07a3              # double 3.8506680000000002
	.quad	0x40205fbdcf0307f2              # double 8.1869949999999996
	.quad	0x4020437b07075b3e              # double 8.1317979999999999
	.quad	0x40175bae89eba6ad              # double 5.8395330000000003
	.quad	0x400a9017dae81883              # double 3.3203580000000001
	.quad	0x401ab128bf3bea92              # double 6.6730070000000001
	.quad	0x401e4da16616b54e              # double 7.5758109999999999
	.quad	0x4023d51f81a5870e              # double 9.9162560000000006
	.quad	0x3ff010a244630660              # double 1.0040610000000001
	.quad	0x4003dd35eb7457c1              # double 2.4830130000000001
	.quad	0x4012007570c564f9              # double 4.5004479999999996
	.quad	0x4010c631f8a0902e              # double 4.1935500000000001
	.quad	0x4011af76a2f48c2e              # double 4.4213509999999996
	.quad	0x4012d116a8b8f14e              # double 4.7041880000000003
	.quad	0x401b40dc768dfbd7              # double 6.8133410000000003
	.quad	0x4020527546d3f9e8              # double 8.1610510000000005
	.quad	0x402018f6f08cc576              # double 8.0487590000000004
	.quad	0x4009d74794ea0770              # double 3.2301169999999999
	.quad	0x40002c729f59ccfb              # double 2.021703
	.quad	0x401c9eab367a0f91              # double 7.1549500000000004
	.quad	0x40142d9cf13cee9e              # double 5.0445440000000001
	.quad	0x400e8d490e66cb10              # double 3.8189869999999999
	.quad	0x3ff2a670e2c12ad8              # double 1.165635
	.quad	0x3faef6512a94ff00              # double 0.060472999999999999
	.quad	0x40056eddce7cd035              # double 2.6791339999999999
	.quad	0x401eae518f3eccc4              # double 7.6702329999999996
	.quad	0x4021e191bc558644              # double 8.9405649999999994
	.quad	0x402035c50ce4ead1              # double 8.1050190000000004
	.quad	0x4022a25e56cd6c2f              # double 9.317126
	.quad	0x4019c6e0d23d4f16              # double 6.4442170000000001
	.quad	0x3fd98ed5f138bce0              # double 0.399343
	.quad	0x400b187160956c0d              # double 3.3869349999999998
	.quad	0x4018b0bcbe61cfff              # double 6.1725950000000003
	.quad	0x401140e8427418d7              # double 4.3133860000000004
	.quad	0x40103495182a9931              # double 4.0513500000000002
	.quad	0x3ff7fe1437c5692b              # double 1.4995309999999999
	.quad	0x4012e3226c3b927d              # double 4.7218109999999998
	.quad	0x40217c64fdb09a67              # double 8.7429579999999998
	.quad	0x4006306b37867f0b              # double 2.7736420000000002
	.quad	0x4022c48f96e15875              # double 9.3839079999999999
	.quad	0x401f4a0e410b630b              # double 7.8223200000000003
	.quad	0x4023a63e8dda48b6              # double 9.8246959999999994
	.quad	0x3ffc8c3e3193f6c2              # double 1.7842389999999999
	.quad	0x402320aa433508f6              # double 9.5637989999999995
	.quad	0x3ffaf3f748a15981              # double 1.6845619999999999
	.quad	0x40100f5515054ac3              # double 4.0149730000000003
	.quad	0x401a119c17225b75              # double 6.5171970000000004
	.quad	0x40192e0d23d4f15e              # double 6.2949719999999996
	.quad	0x3ffa663c74fb54a0              # double 1.6499600000000001
	.quad	0x3ff9616a48733659              # double 1.5862830000000001
	.quad	0x401c81001d5c3159              # double 7.1259769999999998
	.quad	0x40224164840e171a              # double 9.1277200000000001
	.quad	0x4022431fab96f21f              # double 9.1311009999999992
	.quad	0x40222ef60e0eb67c              # double 9.0917209999999997
	.quad	0x401c97585be1a826              # double 7.1477979999999999
	.quad	0x4023c1d0a67620ef              # double 9.8785450000000007
	.quad	0x3fd8f9a49c2c1b11              # double 0.390237
	.quad	0x40191f2e05ccc89b              # double 6.2804489999999999
	.quad	0x3ff81bcfd4bf0996              # double 1.5067900000000001
	.quad	0x401bf02ea960b6fa              # double 6.984553
	.quad	0x3fc31359791819d2              # double 0.14902799999999999
	.quad	0x4017bdfc5cdd50a9              # double 5.9355330000000004
	.quad	0x401f0193708aac97              # double 7.7515390000000001
	.quad	0x40232c5b291b823d              # double 9.5866330000000008
	.quad	0x400243cc07aaef2c              # double 2.2831039999999998
	.quad	0x4023825bd944aa54              # double 9.754607
	.quad	0x402053b2dd377e1c              # double 8.1634740000000007
	.quad	0x4012baa2e3c536d6              # double 4.6822619999999997
	.quad	0x401a8a055757d5aa              # double 6.6347860000000001
	.quad	0x3fd70cd423d9231c              # double 0.36015799999999998
	.quad	0x40137c12f09d8c6d              # double 4.8711659999999997
	.quad	0x4018fa908a265f0f              # double 6.2446919999999997
	.quad	0x401500752da98677              # double 5.2504470000000003
	.quad	0x3ff2a555c52e72da              # double 1.165365
	.quad	0x4019c57d9dba908a              # double 6.4428619999999999
	.quad	0x40219c63cfb3311a              # double 8.8054489999999994
	.quad	0x4023e961a1db877b              # double 9.9558230000000005
	.quad	0x4009011dbca9691a              # double 3.1255449999999998
	.quad	0x4001773a797891e2              # double 2.183217
	.quad	0x3ff3796bfca85cab              # double 1.217144
	.quad	0x401d6e7ddca4b125              # double 7.3579020000000002
	.quad	0x400e0a6223e18698              # double 3.7550699999999999
	.quad	0x3feb66234a87e38f              # double 0.85621800000000003
	.quad	0x402228ca8198f1d4              # double 9.0796700000000001
	.quad	0x3fef5308bb906467              # double 0.97888600000000003
	.quad	0x3fd18b4bf8fcd680              # double 0.27412700000000001
	.quad	0x40236574b407032a              # double 9.6981560000000009
	.quad	0x400060d1b71758e2              # double 2.047275
	.quad	0x40207b93ab430f49              # double 8.2413609999999995
	.quad	0x4010927b6fe2e6eb              # double 4.1430490000000004
	.quad	0x401fd0807357e671              # double 7.9536150000000001
	.quad	0x4018aa24cc6822ff              # double 6.166156
	.quad	0x40208956191148fe              # double 8.2682350000000007
	.quad	0x4015b2d234eb9a17              # double 5.4246299999999996
	.quad	0x4021c202b841248d              # double 8.8789269999999991
	.quad	0x401f52fe82517e78              # double 7.8310490000000001
	.quad	0x400a1b317efe0ce1              # double 3.2632780000000001
	.quad	0x40129bd5dc400757              # double 4.652183
	.quad	0x40181ffeb074a772              # double 6.0312450000000002
	.quad	0x3ff24649906cca2e              # double 1.1421600000000001
	.quad	0x4011280841ede11a              # double 4.2890940000000004
	.quad	0x401db0c7c0f45176              # double 7.4226369999999999
	.quad	0x40208fee0b0af5fd              # double 8.2811129999999995
	.quad	0x401fdab324851a87              # double 7.9635740000000003
	.quad	0x3ff901fea8112ba1              # double 1.5629869999999999
	.quad	0x401bcaade657b84e              # double 6.9479290000000002
	.quad	0x401adcc964628028              # double 6.7156120000000001
	.quad	0x401cf6d22424a277              # double 7.2410360000000003
	.quad	0x402361e59f2ba9d2              # double 9.6912050000000001
	.quad	0x3ff437ccc0379314              # double 1.2636229999999999
	.quad	0x3fe154bad7d7c2ca              # double 0.54159299999999999
	.quad	0x3faeab367a0f9097              # double 0.059900000000000002
	.quad	0x4008878b7a1c25d0              # double 3.0661839999999998
	.quad	0x4021bf559b3d07c8              # double 8.8736999999999995
	.quad	0x3ffd4db8bac710cb              # double 1.831475
	.quad	0x401f8257c914b168              # double 7.877288
	.quad	0x400771f3e89a88ad              # double 2.9306410000000001
	.quad	0x3ff693e3e29307af              # double 1.411106
	.quad	0x4012f67620ee8d11              # double 4.740685
	.quad	0x4003c7ca643cc07b              # double 2.4725540000000001
	.quad	0x3ff6e95a6c5d206d              # double 1.4319710000000001
	.quad	0x401bd2517e77d524              # double 6.9553890000000003
	.quad	0x400b9284167a95c8              # double 3.4465409999999999
	.quad	0x402175b09a671ef3              # double 8.7298629999999999
	.quad	0x3fff9ad7518b0d0f              # double 1.975303
	.quad	0x402354bab649d389              # double 9.6654870000000006
	.quad	0x4020b814d72799a2              # double 8.359534
	.quad	0x40103f8769ec2ce4              # double 4.0620399999999997
	.quad	0x401b1516db0dd830              # double 6.7705950000000001
	.quad	0x400c618e757928e1              # double 3.5476350000000001
	.quad	0x3fe761a1db877ab3              # double 0.73066799999999998
	.quad	0x40132c4a83b1d0c8              # double 4.793253
	.quad	0x400d722749f0e4da              # double 3.680739
	.quad	0x401f0502ababead5              # double 7.754893
	.quad	0x401c80d77b7c7821              # double 7.1258220000000003
	.quad	0x4010ab456b441bb9              # double 4.1672570000000002
	.quad	0x3ff46116659d12cb              # double 1.273703
	.quad	0x40136ad106ee30cb              # double 4.8543130000000003
	.quad	0x3fd350d2806af46b              # double 0.30180800000000002
	.quad	0x400ebd8622c45027              # double 3.8425410000000002
	.quad	0x40102189bd8383ae              # double 4.0327520000000003
	.quad	0x3fd5f96e158750c2              # double 0.34334900000000002
	.quad	0x400eeda7f3cf7015              # double 3.8660429999999999
	.quad	0x40192849cb252ce0              # double 6.2893439999999998
	.quad	0x3fe4e748e4755ffe              # double 0.65323299999999995
	.quad	0x401d2c01a36e2eb2              # double 7.2929750000000002
	.quad	0x3fd4193708aac96d              # double 0.31403900000000001
	.quad	0x4021dff6f4be835e              # double 8.9374310000000001
	.quad	0x4012acabc5154867              # double 4.6686240000000003
	.quad	0x3ff28678c0053e2d              # double 1.1578299999999999
	.quad	0x400e14e1a3f4666f              # double 3.7601960000000001
	.quad	0x4018dab3aabcd78c              # double 6.2135759999999998
	.quad	0x401530a06e9ff0cc              # double 5.2974870000000003
	.quad	0x4019a85dfa871a3b              # double 6.4144209999999999
	.quad	0x401f285553ef6b5d              # double 7.7893879999999997
	.quad	0x40009cd141a6937d              # double 2.0765709999999999
	.quad	0x401911b6d43d0397              # double 6.2672990000000004
	.quad	0x40230b73f316e371              # double 9.5223689999999994
	.quad	0x3ffacc0ad03d9a95              # double 1.6748149999999999
	.quad	0x4013122467be553b              # double 4.7677170000000002
	.quad	0x40067e73a365cb36              # double 2.811744
	.quad	0x4020fae62131a8ef              # double 8.4900369999999992
	.quad	0x3fd89c5a3e39f773              # double 0.38454300000000002
	.quad	0x401415831f03d146              # double 5.0210080000000001
	.quad	0x401406861e92923e              # double 5.0063709999999997
	.quad	0x4023e155714b9cb7              # double 9.9401050000000008
	.quad	0x401cf1294573a798              # double 7.2355090000000004
	.quad	0x400f6c3f3e0370ce              # double 3.9278550000000001
	.quad	0x400d7b9bed30f063              # double 3.6853560000000001
	.quad	0x401b9d948dc11e43              # double 6.9038870000000001
	.quad	0x4022d30c67168f8e              # double 9.4122039999999991
	.quad	0x400de30a915379fb              # double 3.7358600000000002
	.quad	0x3ff71697f1f9ad00              # double 1.4430160000000001
	.quad	0x400e8478854cdb7b              # double 3.814683
	.quad	0x40087f0e4da09cc3              # double 3.062039
	.quad	0x4020c9afe1da7b0b              # double 8.3939199999999996
	.quad	0x401c1caf709b738e              # double 7.0280129999999996
	.quad	0x401a654a3c64345d              # double 6.598916
	.quad	0x4009abffcdab191e              # double 3.2089840000000001
	.quad	0x40154038194c0160              # double 5.3127139999999997
	.quad	0x402001cc532a4980              # double 8.0035120000000006
	.quad	0x40147ac4b4d056c5              # double 5.119891
	.quad	0x40212d72bcb5fe54              # double 8.5887659999999996
	.quad	0x4023641db0142f62              # double 9.6955390000000001
	.quad	0x3ff3db3bfb58d152              # double 1.2410239999999999
	.quad	0x40186cd423d9231c              # double 6.1062779999999997
	.quad	0x400444a9478c868c              # double 2.5335260000000002
	.quad	0x400bb4d4024b33db              # double 3.463295
	.quad	0x40231de8b3b32053              # double 9.5584159999999993
	.quad	0x401308387df5cf25              # double 4.7580280000000004
	.quad	0x401cfd12cadddf44              # double 7.2471420000000002
	.quad	0x40167214f0520d13              # double 5.611408
	.quad	0x400fc82be8bc169c              # double 3.9727399999999999
	.quad	0x400a39c17225b74a              # double 3.2782010000000001
	.quad	0x401376f0cfe15443              # double 4.8661529999999997
	.quad	0x40123c3f811f4f51              # double 4.5588360000000003
	.quad	0x401857cfa26a22b4              # double 6.0857530000000004
	.quad	0x401353d03968d75a              # double 4.8318490000000001
	.quad	0x4014ee785b5b7069              # double 5.2328809999999999
	.quad	0x40231ca90470a809              # double 9.5559770000000003
	.quad	0x4022bb84db9c7369              # double 9.3662480000000005
	.quad	0x40068111276fb092              # double 2.813021
	.quad	0x4003ddc2f405f6ba              # double 2.483282
	.quad	0x400651116a8b8f15              # double 2.7895840000000001
	.quad	0x400107e5a78f25a2              # double 2.1288559999999999
	.quad	0x401ede770bd017db              # double 7.717251
	.quad	0x4011afa7a85015c2              # double 4.421538
	.quad	0x401eac15097c8084              # double 7.6680489999999999
	.quad	0x401124ccee5abc0e              # double 4.2859379999999998
	.quad	0x40146b0ea18372e7              # double 5.1045480000000003
	.quad	0x401da24b33daf8df              # double 7.4084899999999996
	.quad	0x4022bfb41bfbdf09              # double 9.3744209999999998
	.quad	0x4008f4046412cf10              # double 3.1191490000000002
	.quad	0x4019380303c07ee1              # double 6.3046990000000003
	.quad	0x4008c8c7192ea52f              # double 3.098036
	.quad	0x40074d4bad7d7c2d              # double 2.9127420000000002
	.quad	0x4011cdacabc51548              # double 4.4508539999999996
	.quad	0x4008e475e6362a5e              # double 3.1115529999999998
	.quad	0x3ff0da16616b54e3              # double 1.0532440000000001
	.quad	0x401d15260f5e41d5              # double 7.2706530000000003
	.quad	0x401e3efb2aae2974              # double 7.5615050000000004
	.quad	0x40217c99285a921d              # double 8.7433560000000003
	.quad	0x40166845132f87ad              # double 5.601826
	.quad	0x40192cb10342aa9f              # double 6.2936439999999996
	.quad	0x401c67f7be121ee6              # double 7.1015309999999996
	.quad	0x3ffd4ad256798959              # double 1.830767
	.quad	0x3fedc63ae2541d8f              # double 0.93044800000000005
	.quad	0x401c8e73e681a9b9              # double 7.1391140000000002
	.quad	0x4021b384ba0e8427              # double 8.8506219999999995
	.quad	0x40100e707e175d14              # double 4.0141010000000001
	.quad	0x40064d0dcfcc5b8e              # double 2.7876240000000001
	.quad	0x40132578e5c4eb57              # double 4.786594
	.quad	0x4010c8a04d12018a              # double 4.1959239999999998
	.quad	0x3fb526a65cf67b1c              # double 0.082621
	.quad	0x4013d4723aafff37              # double 4.9574670000000003
	.quad	0x4007a7485e3da2f9              # double 2.9566810000000001
	.quad	0x4023f230121682f9              # double 9.9730229999999995
	.quad	0x4005b7d84901d191              # double 2.7147679999999998
	.quad	0x402085ff609dcf89              # double 8.2617139999999996
	.quad	0x4011648e8a71de6a              # double 4.3482000000000003
	.quad	0x4001006b7aa25d8d              # double 2.1252049999999998
	.quad	0x3fefc0d2c386d2ed              # double 0.99228799999999994
	.quad	0x4016a8ac9f2fdb90              # double 5.6647210000000001
	.quad	0x401ccd199bb2788e              # double 7.2002930000000003
	.quad	0x3ff599fa11a975b0              # double 1.3500920000000001
	.quad	0x401285204af92296              # double 4.6300059999999998
	.quad	0x401415bfad299956              # double 5.0212389999999996
	.quad	0x401e93dc486ad2dd              # double 7.6443950000000002
	.quad	0x400d73986338b47c              # double 3.6814429999999998
	.quad	0x40159bdba0a52696              # double 5.4022050000000004
	.quad	0x400fc2bcf91a32b1              # double 3.9700869999999999
	.quad	0x4016f9fadafd1138              # double 5.7441209999999998
	.quad	0x401894f7a919695e              # double 6.1454760000000004
	.quad	0x401e566490a350d3              # double 7.5843680000000004
	.quad	0x4022efeeb2d0a244              # double 9.4686179999999993
	.quad	0x3fe2280f12c27a63              # double 0.56738999999999995
	.quad	0x400d5b3636f3b214              # double 3.669537
	.quad	0x401ceee9dd7ecbb8              # double 7.233314
	.quad	0x40207e92f6e8294a              # double 8.2472150000000006
	.quad	0x3fd400c521dda05a              # double 0.31254700000000002
	.quad	0x401b50828c36da88              # double 6.8286230000000003
	.quad	0x400643ef284167a9              # double 2.7831709999999998
	.quad	0x400319042d8c2a45              # double 2.3872149999999999
	.quad	0x401445caafbc1ace              # double 5.0681560000000001
	.quad	0x401a0ef0f16f4385              # double 6.5145910000000002
	.quad	0x401c7a3fcc9ea9a4              # double 7.1193840000000002
	.quad	0x3fef6c918e325d4a              # double 0.98200299999999996
	.quad	0x400243526527a205              # double 2.2828719999999998
	.quad	0x40229ad794a6eb92              # double 9.3024260000000005
	.quad	0x4017851deefe4ffd              # double 5.8799970000000004
	.quad	0x3fdd28954a7f8013              # double 0.45560200000000001
	.quad	0x4004504ddb5525cc              # double 2.5392109999999999
	.quad	0x3fdcfcc9ea9a3d2e              # double 0.45292900000000003
	.quad	0x402255a1ec4e7254              # double 9.1672510000000002
	.quad	0x400b5fcd24e160d9              # double 3.4217780000000002
	.quad	0x4018cbf338716095              # double 6.1991699999999996
	.quad	0x401d57b99d451fc5              # double 7.3356690000000002
	.quad	0x400019aa60913a50              # double 2.0125320000000002
	.quad	0x3fe7f403dddb120a              # double 0.74853700000000001
	.quad	0x401ab6aad1d041cc              # double 6.6783859999999997
	.quad	0x400ae03ab862b27d              # double 3.3594870000000001
	.quad	0x400bac32a8c9b845              # double 3.4590809999999999
	.quad	0x40203ffd60e94ee4              # double 8.1249800000000007
	.quad	0x3fe91c53f39d1b2e              # double 0.78470799999999996
	.quad	0x40149d1b2e59af9f              # double 5.1534240000000002
	.quad	0x401e858b827fa1a1              # double 7.6304150000000001
	.quad	0x4019fc1d6cf850df              # double 6.4962059999999999
	.quad	0x401d9b39e279dd3c              # double 7.4015880000000003
	.quad	0x40170d6e8af81627              # double 5.7631170000000003
	.quad	0x401c47ba237cdcca              # double 7.0700459999999996
	.quad	0x401eadf2ecf20642              # double 7.6698719999999998
	.quad	0x4014369d7342edbb              # double 5.0533349999999997
	.quad	0x402143e8bc169c24              # double 8.6326350000000005
	.quad	0x3fd3e7253da72a7c              # double 0.31098300000000001
	.quad	0x3fea279fec99f1ae              # double 0.81733699999999998
	.quad	0x4022aec13b9f127f              # double 9.3413179999999993
	.quad	0x400c677f6b1a2a4e              # double 3.5505360000000001
	.quad	0x40172b96f21f6cad              # double 5.7925680000000002
	.quad	0x3fd174a3400b88ca              # double 0.27274399999999999
	.quad	0x400e5a8ac5c13fd1              # double 3.7942100000000001
	.quad	0x4017d965f5275eea              # double 5.9623030000000004
	.quad	0x40150987c6327ed8              # double 5.2593069999999997
	.quad	0x40183d25aab47410              # double 6.0597139999999996
	.quad	0x4015929ed3953dea              # double 5.3931839999999998
	.quad	0x401fb4e54f7a9197              # double 7.9266560000000003
	.quad	0x40000958537e2c56              # double 2.0045630000000001
	.quad	0x4020e1187e7c06e2              # double 8.4396400000000007
	.quad	0x4022dee2eb1c432d              # double 9.4353250000000006
	.quad	0x401e12fe82517e78              # double 7.5185490000000001
	.quad	0x40229bc5de9c022a              # double 9.3042440000000006
	.quad	0x3ffbe098915bdd76              # double 1.7423329999999999
	.quad	0x400b1d8f92af9a8d              # double 3.3894340000000001
	.quad	0x3ff7ad14a0a0f4d8              # double 1.4797560000000001
	.quad	0x400efca3a4b5568f              # double 3.8733590000000002
	.quad	0x3f9ccf28c79f6662              # double 0.028133999999999999
	.quad	0x40029487fcb923a3              # double 2.3225250000000002
	.quad	0x40233fc1376d5497              # double 9.6245209999999996
	.quad	0x3fe1a9973d9ec700              # double 0.551952
	.quad	0x402388c26138fffc              # double 9.7671080000000003
	.quad	0x4021ae260b2c83ed              # double 8.8401340000000008
	.quad	0x400426527a20578e              # double 2.5187119999999998
	.quad	0x400fb402d16b97ff              # double 3.9628960000000002
	.quad	0x3fe1e785b5b70692              # double 0.55951200000000001
	.quad	0x4023b48472c0e7bc              # double 9.8525729999999995
	.quad	0x4017f75b3e1437c5              # double 5.9915589999999996
	.quad	0x40231b061c79b34a              # double 9.5527809999999995
	.quad	0x4015426c3b927d46              # double 5.3148660000000003
	.quad	0x401e11758e219653              # double 7.5170500000000002
	.quad	0x40171295208e1501              # double 5.7681469999999999
	.quad	0x40205597f62b6ae8              # double 8.1671750000000003
	.quad	0x4014f7a5b0ff10ed              # double 5.2418430000000003
	.quad	0x400341f212d77319              # double 2.4072
	.quad	0x4006c30d306a2b17              # double 2.84524
	.quad	0x4016a7d5ed06fef8              # double 5.6639020000000002
	.quad	0x4004db3aeee95747              # double 2.607046
	.quad	0x40236d4e6e221c8a              # double 9.7134889999999992
	.quad	0x3fffec929aa1d756              # double 1.9952570000000001
	.quad	0x401a33d74d594f27              # double 6.5506260000000003
	.quad	0x40217566277c45cc              # double 8.7292950000000004
	.quad	0x40192e2ac3222920              # double 6.2950850000000003
	.quad	0x4010ad759ee88df3              # double 4.1693939999999996
	.quad	0x402036d3b6cbd988              # double 8.1070840000000004
	.quad	0x40223343b70ef566              # double 9.1001259999999995
	.quad	0x400d8ec636b09635              # double 3.6947139999999998
	.quad	0x401bcb90214ad363              # double 6.9487920000000001
	.quad	0x401cf2a411c2a023              # double 7.2369539999999999
	.quad	0x401d74c0df58c08b              # double 7.3640169999999996
	.quad	0x4003b9a2834d26fa              # double 2.4656419999999999
	.quad	0x3ff4589bd8383ada              # double 1.271633
	.quad	0x401316bfca85cab0              # double 4.7722160000000002
	.quad	0x40152a4e379b77c0              # double 5.2913139999999999
	.quad	0x4011c2fdb8fde2ef              # double 4.4404209999999997
	.quad	0x4021a3dbc23315d7              # double 8.820036
	.quad	0x4014dda3c21187e8              # double 5.2164450000000002
	.quad	0x400e912dba4d6e48              # double 3.8208880000000001
	.quad	0x401ecd5b24e9c454              # double 7.7005429999999997
	.quad	0x401ac2435696e58a              # double 6.6897099999999998
	.quad	0x40144bed30f062d4              # double 5.074147
	.quad	0x401a59dece571088              # double 6.587764
	.quad	0x402229569f490603              # double 9.0807389999999995
	.quad	0x3fdc0ee49f51697f              # double 0.43840899999999999
	.quad	0x4004d64bec679cc7              # double 2.6046369999999999
	.quad	0x40189a87e38eb032              # double 6.1509090000000004
	.quad	0x4022e595bbbe8790              # double 9.4484080000000006
	.quad	0x3ff2ae31d712a0ec              # double 1.1675279999999999
	.quad	0x401b37939a7c17a9              # double 6.8042740000000004
	.quad	0x4018268b19a415f4              # double 6.0376399999999997
	.quad	0x3ff691d57ff9b563              # double 1.410604
	.quad	0x4010176fb09203a3              # double 4.0228869999999999
	.quad	0x4022946ac215b9a6              # double 9.2898770000000006
	.quad	0x401c8ebb341e14be              # double 7.139386
	.quad	0x3fd7e92923e5b856              # double 0.37360599999999999
	.quad	0x4023c7090f733a8a              # double 9.8887409999999996
	.quad	0x4022542d490e66cb              # double 9.1644079999999999
	.quad	0x40187851654d61b3              # double 6.1174980000000003
	.quad	0x40187522ea0fd3b3              # double 6.1143910000000004
	.quad	0x3ff28c88a47ecfea              # double 1.1593100000000001
	.quad	0x402175b61bb05faf              # double 8.7299050000000005
	.quad	0x401e493af74cd317              # double 7.5715139999999996
	.quad	0x401c4a5d6bebe165              # double 7.072622
	.quad	0x40069e61cffeb075              # double 2.8273350000000002
	.quad	0x40219797891e2153              # double 8.7960779999999996
	.quad	0x4002cea960b6f9fd              # double 2.3509090000000001
	.quad	0x400fd6598e10cf5b              # double 3.979663
	.quad	0x3fef68ea39c51dac              # double 0.98155700000000001
	.quad	0x402355206c8711d8              # double 9.6662630000000007
	.quad	0x3ff65b3bfb58d152              # double 1.3972739999999999
	.quad	0x3ff80d8cb07d0aee              # double 1.5033080000000001
	.quad	0x4021013d31b9b670              # double 8.5024200000000008
	.quad	0x40195657b84db9c7              # double 6.3343189999999998
	.quad	0x3fbdf1e0828c36db              # double 0.11697200000000001
	.quad	0x401b5a52263d816b              # double 6.8382040000000002
	.quad	0x400e7b0b39192642              # double 3.8100800000000001
	.quad	0x3ffcfe86833c6003              # double 1.8121400000000001
	.quad	0x401cfe8fb00bcbe6              # double 7.2485949999999999
	.quad	0x400d5a3f4666ec9e              # double 3.6690659999999999
	.quad	0x4010c7ffde7210bf              # double 4.1953120000000004
	.quad	0x401f1db22d0e5604              # double 7.7789999999999999
	.quad	0x402293671ac14c66              # double 9.2878959999999999
	.quad	0x401471183b60285f              # double 5.1104440000000002
	.quad	0x4011ff6d330941c8              # double 4.4994399999999999
	.quad	0x401ce14c660a2014              # double 7.2200179999999996
	.quad	0x3ff78ff21b3aeee9              # double 1.4726429999999999
	.quad	0x40196a604e1e7104              # double 6.3538829999999997
	.quad	0x401f82b90a782907              # double 7.8776590000000004
	.quad	0x4017096249a133c2              # double 5.7591640000000002
	.quad	0x401fb93469941850              # double 7.9308639999999997
	.quad	0x3fc2c050bd87b56c              # double 0.14649400000000001
	.quad	0x401e5abb44e50c5f              # double 7.5886050000000002
	.quad	0x3fde1b4784230fd0              # double 0.47041500000000003
	.quad	0x4020a9fdbd2fa0d7              # double 8.3320139999999991
	.quad	0x40229ede54b48d3b              # double 9.3102900000000002
	.quad	0x401fafe08aefb2ab              # double 7.9217550000000001
	.quad	0x40077513f8db4891              # double 2.9321670000000002
	.quad	0x4023090880d801b4              # double 9.5176429999999996
	.quad	0x401a6fdda8bd230c              # double 6.6092440000000003
	.quad	0x401307e06961c369              # double 4.7576919999999996
	.quad	0x40178c8f32378ab1              # double 5.8872650000000002
	.quad	0x401096f112fd32c6              # double 4.1474039999999999
	.quad	0x4021a58a979e16d7              # double 8.8233230000000002
	.quad	0x400d80817fc7607c              # double 3.6877469999999999
	.quad	0x40085c80841ede12              # double 3.0451670000000002
	.quad	0x400090ef566490a3              # double 2.0707689999999999
	.quad	0x400217342edbb59e              # double 2.2613300000000001
	.quad	0x401dd6c332f01755              # double 7.4597290000000003
	.quad	0x4012e15f88fc9364              # double 4.720091
	.quad	0x400644901d19157b              # double 2.7834780000000001
	.quad	0x400ecfebd09e12a5              # double 3.8515239999999999
	.quad	0x4023d31ceaf251c2              # double 9.9123300000000008
	.quad	0x40152d4f15e7c8d2              # double 5.2942470000000004
	.quad	0x4017890c0ad03d9b              # double 5.8838350000000004
	.quad	0x40218599cbee807c              # double 8.7609390000000004
	.quad	0x400f83e4abe6a338              # double 3.9394010000000002
	.quad	0x40106f601797cc3a              # double 4.108765
	.quad	0x40180d6ba8c58687              # double 6.0131059999999996
	.quad	0x401aabda0dfdef85              # double 6.6678240000000004
	.quad	0x3ff4641700cd8559              # double 1.2744359999999999
	.quad	0x400d88c47a17f413              # double 3.6917810000000002
	.quad	0x40167d64d7f0ed3e              # double 5.6224550000000004
	.quad	0x3ffe0f041461b6d4              # double 1.8786659999999999
	.quad	0x40216c3fc43b2dd3              # double 8.7114239999999992
	.quad	0x401e3c7a7c9de050              # double 7.5590609999999998
	.quad	0x4015cd18d25edd05              # double 5.4502899999999999
	.quad	0x3fe7aa8eb463497b              # double 0.73956999999999995
	.quad	0x3fda4430b178b370              # double 0.410412
	.quad	0x401fdca42aed1394              # double 7.9654699999999998
	.quad	0x400e081a9b8cb8e1              # double 3.7539570000000002
	.quad	0x401ad4d44567125e              # double 6.7078410000000002
	.quad	0x4003c2cf52b90a78              # double 2.4701219999999999
	.quad	0x4016c87980f55de6              # double 5.6957760000000004
	.quad	0x4015804e618ce2d2              # double 5.375299
	.quad	0x40009249e44fa051              # double 2.0714299999999999
	.quad	0x402384dd50a88f00              # double 9.7595010000000002
	.quad	0x3ffd6b606b7aa25e              # double 1.8387150000000001
	.quad	0x40188f0d844d013b              # double 6.1397000000000004
	.quad	0x40072d7e02645e4e              # double 2.8972129999999998
	.quad	0x401c4d6909aed56b              # double 7.075596
	.quad	0x4002be7c06e19b91              # double 2.34301
	.quad	0x4008836eb4e98138              # double 3.0641759999999998
	.quad	0x3ffcf6e2eb1c432d              # double 1.8102750000000001
	.quad	0x3ffed9e40c8472c1              # double 1.928196
	.quad	0x3fff645a1cac0831              # double 1.962
	.quad	0x4021913af74cd317              # double 8.7836529999999993
	.quad	0x402317d86a8fc0d3              # double 9.5465730000000004
	.quad	0x3f61c087442c7fbb              # double 0.0021670000000000001
	.quad	0x4006ea83b1d0c804              # double 2.864509
	.quad	0x400dc3d35eb7457c              # double 3.720618
	.quad	0x400859999999999a              # double 3.0437500000000002
	.quad	0x4011c0bfe3b03e21              # double 4.4382320000000002
	.quad	0x40217a42aed13943              # double 8.7387899999999998
	.quad	0x4017796b76709fa5              # double 5.8685739999999997
	.quad	0x4008d712a0ec7432              # double 3.105016
	.quad	0x4002be518f3eccc4              # double 2.3429289999999998
	.quad	0x40110bdb1a6d6990              # double 4.2615780000000001
	.quad	0x40059e57d9dba909              # double 2.7023160000000002
	.quad	0x40220f7a0b5ed8d3              # double 9.0302279999999993
	.quad	0x40007845564b6630              # double 2.0587260000000001
	.quad	0x40211a9003eea20a              # double 8.5518800000000006
	.quad	0x401b4f69014b599b              # double 6.8275490000000003
	.quad	0x401f6ffc115df655              # double 7.8593599999999996
	.quad	0x4021c084a515ce9e              # double 8.8760119999999993
	.quad	0x4012b09c3ce2089e              # double 4.6724709999999998
	.quad	0x40192b0b39192642              # double 6.2920350000000003
	.quad	0x401cd13a4f8726d0              # double 7.2043239999999997
	.quad	0x3fffe615a8deb0fb              # double 1.993673
	.quad	0x401220307f23cc8e              # double 4.5314350000000001
	.quad	0x401e2544bb1af3a1              # double 7.5363949999999997
	.quad	0x40210d3e920c069e              # double 8.5258679999999991
	.quad	0x401d1aca36199781              # double 7.2761620000000002
	.quad	0x3ffff87ad080b674              # double 1.9981640000000001
	.quad	0x401707000431bde8              # double 5.7568359999999998
	.quad	0x40079df43c7d5ed0              # double 2.9521259999999998
	.quad	0x400a95e95b78cc9a              # double 3.3231989999999998
	.quad	0x40150ad106ee30cb              # double 5.2605630000000003
	.quad	0x4023dacd7cf5f4e4              # double 9.9273489999999995
	.quad	0x4020e6d8f4f93bc1              # double 8.4508740000000007
	.quad	0x4017ca19439de482              # double 5.947362
	.quad	0x4020755eaee2003b              # double 8.2292380000000005
	.quad	0x4021b01eabbcb1cd              # double 8.8439840000000007
	.quad	0x402290e64b231401              # double 9.2830069999999996
	.quad	0x401af9baa1511e00              # double 6.7438760000000002
	.quad	0x400c2cf41f212d77              # double 3.5219499999999999
	.quad	0x401001e29b6b2af1              # double 4.0018409999999998
	.quad	0x400783c297bfa4c6              # double 2.9393359999999999
	.quad	0x4013644b6e935b92              # double 4.847944
	.quad	0x4022dc9c6f36ef80              # double 9.4308809999999994
	.quad	0x401611212513b5bf              # double 5.5167279999999996
	.quad	0x400c65b9628cbd12              # double 3.5496699999999999
	.quad	0x3ff96adb402d16b9              # double 1.5885879999999999
	.quad	0x401d7d04a2fcefaa              # double 7.3720879999999998
	.quad	0x3fe5b8a19c9d5a18              # double 0.67878799999999995
	.quad	0x40201a1e3eaf6838              # double 8.0510120000000001
	.quad	0x402301c6f36ef805              # double 9.5034709999999993
	.quad	0x4018bcf206423960              # double 6.1845169999999996
	.quad	0x4008a0eb67c286f9              # double 3.0785740000000001
	.quad	0x4020ffa80cf9e386              # double 8.4993289999999995
	.quad	0x401f6f2a172abef0              # double 7.8585589999999996
	.quad	0x4015732830a0b1bc              # double 5.3624580000000002
	.quad	0x3ff0c0ae10492360              # double 1.0470410000000001
	.quad	0x402085a682b62846              # double 8.2610360000000007
	.quad	0x4020d04c271fff7a              # double 8.4068310000000004
	.quad	0x4013f3cea6c1a049              # double 4.9880930000000001
	.quad	0x402108eb24a6a876              # double 8.5174190000000003
	.quad	0x401ee1d4738a3b58              # double 7.7205370000000002
	.quad	0x4016b3947496aad2              # double 5.6753710000000002
	.quad	0x40237432ebe596c8              # double 9.7269509999999996
	.quad	0x4010d3e7d135115a              # double 4.2069390000000002
	.quad	0x400e56f3b213e3e3              # double 3.7924570000000002
	.quad	0x4016240bbb1f255f              # double 5.5352009999999998
	.quad	0x4023df6555c52e73              # double 9.9363200000000002
	.quad	0x3feb317acc4ef88c              # double 0.84979000000000004
	.quad	0x40101a9c560c7c0f              # double 4.0259869999999998
	.quad	0x401081e364bec67a              # double 4.1268440000000002
	.quad	0x3fcc5da6a4441787              # double 0.221608
	.quad	0x40186abb01c92ddc              # double 6.1042290000000001
	.quad	0x401829bbadc0980b              # double 6.0407549999999999
	.quad	0x3fcb0867ad8e4324              # double 0.21119399999999999
	.quad	0x401a19331a08bfc2              # double 6.5246089999999999
	.quad	0x4010173cd573647c              # double 4.0226930000000003
	.quad	0x401c2bec2480e8c9              # double 7.0428930000000003
	.quad	0x401e0c2ce4649907              # double 7.5118900000000001
	.quad	0x4014e94b7b28954a              # double 5.2278269999999996
	.quad	0x3fe8cf7ec3547e07              # double 0.77532900000000005
	.quad	0x401126801711947d              # double 4.287598
	.quad	0x40185d44567125dd              # double 6.091081
	.quad	0x402071e1f3a57eaa              # double 8.2224269999999997
	.quad	0x4000779d0a67620f              # double 2.058405
	.quad	0x401c8f1cfbb94962              # double 7.1397589999999997
	.quad	0x4018323e18698351              # double 6.0490649999999997
	.quad	0x40210f5afaf85943              # double 8.5299910000000008
	.quad	0x3ff3c07dd4413554              # double 1.2344949999999999
	.quad	0x4023a03d790752db              # double 9.8129690000000007
	.quad	0x401d165dbfceb789              # double 7.2718420000000004
	.quad	0x3ff3bec56d5cfaad              # double 1.234075
	.quad	0x401818b502ababeb              # double 6.0241280000000001
	.quad	0x400bc7f23cc8de2b              # double 3.4726300000000001
	.quad	0x3fd81709310129cc              # double 0.37640600000000002
	.quad	0x40232b6b4c7f3494              # double 9.5848030000000008
	.quad	0x40055673c4f3ba77              # double 2.6672129999999998
	.quad	0x4019e7d63022dd7b              # double 6.4764030000000004
	.quad	0x3fc874d9c6b0531a              # double 0.19106600000000001
	.quad	0x40143258d5842b73              # double 5.0491669999999997
	.quad	0x4015cbbe878fabda              # double 5.448969
	.quad	0x400bdc610f0e90bc              # double 3.4826069999999998
	.quad	0x401602d7b634dad3              # double 5.5027759999999999
	.quad	0x4023f7292c493426              # double 9.9827359999999992
	.quad	0x40229a53b8e4b87c              # double 9.3014200000000002
	.quad	0x3ffe2909aed56b01              # double 1.885019
	.quad	0x401534fe36d22425              # double 5.3017510000000003
	.quad	0x4006bead4f5903a7              # double 2.8431039999999999
	.quad	0x3ff2a7e0ef99806f              # double 1.165986
	.quad	0x3fc6c985f06f6944              # double 0.17802499999999999
	.quad	0x4022c0112ba16e7a              # double 9.3751309999999997
	.quad	0x4020a5b940fecdd1              # double 8.3236790000000003
	.quad	0x3fd9a64c2f837b4a              # double 0.40077499999999999
	.quad	0x4015b1cffeb074a7              # double 5.4236449999999996
	.quad	0x4019e2be0589acbd              # double 6.4714280000000004
	.quad	0x402109491f2dc2b1              # double 8.5181360000000002
	.quad	0x4013ad3671ac14c6              # double 4.9191529999999997
	.quad	0x3f86d00b45ae5ffa              # double 0.011139
	.quad	0x40204e160d887ebf              # double 8.1525119999999998
	.quad	0x401ef215b9a5a89c              # double 7.7364110000000004
	.quad	0x4010d4195cc857f3              # double 4.207128
	.size	.L__constant_4499xf64, 35992

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
