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
	.quad	0x4148e168e768e821              # double 3261137.807889
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
	.quad	71                              # 0x47
	.quad	103                             # 0x67
	.quad	167                             # 0xa7
	.quad	208                             # 0xd0
	.quad	277                             # 0x115
	.quad	321                             # 0x141
	.quad	389                             # 0x185
	.quad	415                             # 0x19f
	.quad	480                             # 0x1e0
	.quad	515                             # 0x203
	.quad	581                             # 0x245
	.quad	607                             # 0x25f
	.quad	673                             # 0x2a1
	.quad	702                             # 0x2be
	.quad	771                             # 0x303
	.quad	797                             # 0x31d
	.quad	865                             # 0x361
	.quad	898                             # 0x382
	.quad	966                             # 0x3c6
	.quad	999                             # 0x3e7
	.quad	1061                            # 0x425
	.quad	1098                            # 0x44a
	.quad	1162                            # 0x48a
	.quad	1193                            # 0x4a9
	.quad	1257                            # 0x4e9
	.quad	1284                            # 0x504
	.quad	1350                            # 0x546
	.quad	1378                            # 0x562
	.quad	1446                            # 0x5a6
	.quad	1486                            # 0x5ce
	.quad	1548                            # 0x60c
	.quad	1574                            # 0x626
	.quad	1640                            # 0x668
	.quad	1673                            # 0x689
	.quad	1739                            # 0x6cb
	.quad	1775                            # 0x6ef
	.quad	1837                            # 0x72d
	.quad	1872                            # 0x750
	.quad	1935                            # 0x78f
	.quad	1968                            # 0x7b0
	.quad	2031                            # 0x7ef
	.quad	2056                            # 0x808
	.quad	2127                            # 0x84f
	.quad	2173                            # 0x87d
	.quad	2245                            # 0x8c5
	.quad	2274                            # 0x8e2
	.quad	2337                            # 0x921
	.quad	2368                            # 0x940
	.quad	2431                            # 0x97f
	.quad	2471                            # 0x9a7
	.quad	2542                            # 0x9ee
	.quad	2567                            # 0xa07
	.quad	2634                            # 0xa4a
	.quad	2672                            # 0xa70
	.quad	2732                            # 0xaac
	.quad	2762                            # 0xaca
	.quad	2831                            # 0xb0f
	.quad	2864                            # 0xb30
	.quad	2927                            # 0xb6f
	.quad	2965                            # 0xb95
	.quad	3034                            # 0xbda
	.quad	3080                            # 0xc08
	.quad	3145                            # 0xc49
	.quad	3174                            # 0xc66
	.quad	3245                            # 0xcad
	.quad	3277                            # 0xccd
	.quad	3344                            # 0xd10
	.quad	3385                            # 0xd39
	.quad	3452                            # 0xd7c
	.quad	3486                            # 0xd9e
	.quad	3562                            # 0xdea
	.quad	3602                            # 0xe12
	.quad	3665                            # 0xe51
	.quad	3694                            # 0xe6e
	.quad	3760                            # 0xeb0
	.quad	3798                            # 0xed6
	.quad	3869                            # 0xf1d
	.quad	3890                            # 0xf32
	.quad	3948                            # 0xf6c
	.quad	3981                            # 0xf8d
	.quad	4051                            # 0xfd3
	.quad	4091                            # 0xffb
	.quad	4155                            # 0x103b
	.quad	4188                            # 0x105c
	.quad	4255                            # 0x109f
	.quad	4285                            # 0x10bd
	.quad	4361                            # 0x1109
	.quad	4390                            # 0x1126
	.quad	4459                            # 0x116b
	.quad	4485                            # 0x1185
	.quad	4555                            # 0x11cb
	.quad	4584                            # 0x11e8
	.quad	4649                            # 0x1229
	.quad	4683                            # 0x124b
	.quad	4757                            # 0x1295
	.quad	4790                            # 0x12b6
	.quad	4858                            # 0x12fa
	.quad	4893                            # 0x131d
	.quad	4964                            # 0x1364
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
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
	.quad	25                              # 0x19
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
	.quad	59                              # 0x3b
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
	.quad	75                              # 0x4b
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	47                              # 0x2f
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
	.quad	75                              # 0x4b
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	29                              # 0x1d
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
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
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
	.quad	81                              # 0x51
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	15                              # 0xf
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
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
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	43                              # 0x2b
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
	.quad	81                              # 0x51
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	71                              # 0x47
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	21                              # 0x15
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
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
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	19                              # 0x13
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	81                              # 0x51
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	51                              # 0x33
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	45                              # 0x2d
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	15                              # 0xf
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	73                              # 0x49
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
	.quad	3                               # 0x3
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	71                              # 0x47
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
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
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	99                              # 0x63
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	59                              # 0x3b
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	75                              # 0x4b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	39                              # 0x27
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x401ffdd0d8cb07d1              # double 7.9978670000000002
	.quad	0x4007b3986338b47c              # double 2.9626929999999998
	.quad	0x401fac02f2f98740              # double 7.91798
	.quad	0x4016974ea8da7f3d              # double 5.647761
	.quad	0x40238232d2bb2357              # double 9.7542939999999997
	.quad	0x401c8c1b54195cc8              # double 7.1368229999999997
	.quad	0x4003c8c8abd5dc40              # double 2.473039
	.quad	0x402312b1d4f9c1f8              # double 9.5365129999999993
	.quad	0x40156f18c9fb6135              # double 5.3584930000000002
	.quad	0x3ff5b60f1b25f634              # double 1.356948
	.quad	0x400c790d9d7774ac              # double 3.5591080000000002
	.quad	0x400cd344806290ef              # double 3.6031580000000001
	.quad	0x401bc595bbbe8790              # double 6.9429540000000003
	.quad	0x400e67b56b873797              # double 3.8006389999999999
	.quad	0x401880713f077ccc              # double 6.125432
	.quad	0x40105bf2b239a390              # double 4.0897930000000002
	.quad	0x3ff6ac29bf162ae5              # double 1.4170320000000001
	.quad	0x401f0b0fadf2ecf2              # double 7.760802
	.quad	0x4023993bc0a06ea0              # double 9.7992840000000001
	.quad	0x3ff2a0296b3354c1              # double 1.164102
	.quad	0x3ff74d7060bb2bbb              # double 1.4564060000000001
	.quad	0x401987724fa8b4c0              # double 6.3822720000000004
	.quad	0x400e8ab9b23dd54e              # double 3.8177370000000002
	.quad	0x3fff173b85e80bed              # double 1.9431719999999999
	.quad	0x3ffb2a8869c66d37              # double 1.6978839999999999
	.quad	0x3ffd87852f7f498c              # double 1.8455859999999999
	.quad	0x401448b26394face              # double 5.0709929999999996
	.quad	0x40238df548ecd8dc              # double 9.7772620000000003
	.quad	0x40235e43cc07aaef              # double 9.6841109999999996
	.quad	0x3ffcaf3e468cac4b              # double 1.7927839999999999
	.quad	0x400741c8a7a41e58              # double 2.9071210000000001
	.quad	0x3fde2e5de15ca6ca              # double 0.47158
	.quad	0x401ccea24cc68230              # double 7.2017910000000001
	.quad	0x402099a3b14a9047              # double 8.3000769999999999
	.quad	0x40202234eb9a176e              # double 8.0668100000000003
	.quad	0x401b3bafd976ff3b              # double 6.8082880000000001
	.quad	0x40028a44c7b02d5a              # double 2.3175140000000001
	.quad	0x40217464ba94bbe4              # double 8.7273309999999995
	.quad	0x401b2dda059a73b4              # double 6.7947769999999998
	.quad	0x4018ea604e1e7104              # double 6.2288829999999997
	.quad	0x40046ad8a116659d              # double 2.552171
	.quad	0x400a84649906cca3              # double 3.3146450000000001
	.quad	0x4012663f141205bc              # double 4.59985
	.quad	0x401cd66772d5e072              # double 7.2093790000000002
	.quad	0x40214ca2120e1f7d              # double 8.6496739999999992
	.quad	0x401c239d1b2e59b0              # double 7.0347790000000003
	.quad	0x4016f0fbeb9e492c              # double 5.7353360000000002
	.quad	0x400bc0053e2d6239              # double 3.4687600000000001
	.quad	0x4019d8ebcc6c54bd              # double 6.4618370000000001
	.quad	0x400868448cf7caa7              # double 3.0509119999999998
	.quad	0x401cb4f483cafb3b              # double 7.1767139999999996
	.quad	0x4015e1e4f765fd8b              # double 5.4706000000000001
	.quad	0x3fcd916872b020c5              # double 0.23100000000000001
	.quad	0x400e7851eb851eb8              # double 3.8087499999999999
	.quad	0x3fe5fd1dcd7060bb              # double 0.68714799999999998
	.quad	0x4019c22dd7a99fa1              # double 6.4396279999999999
	.quad	0x3fe0ff1d81f10668              # double 0.531142
	.quad	0x3ffd8d9e83e425af              # double 1.847075
	.quad	0x4021c99b90ea9e6f              # double 8.8937650000000001
	.quad	0x402062ff08893b7e              # double 8.1933520000000009
	.quad	0x40182222d5171e2a              # double 6.0333360000000003
	.quad	0x4014e2291fb3fa6e              # double 5.2208600000000001
	.quad	0x40201880303c07ee              # double 8.0478529999999999
	.quad	0x401aa9988d2a1f8e              # double 6.6656209999999998
	.quad	0x4016c0014f8b588e              # double 5.6875049999999998
	.quad	0x40165a9930be0ded              # double 5.5884749999999999
	.quad	0x400d0cb85a4f00ef              # double 3.631211
	.quad	0x3fef63886594af4f              # double 0.98089999999999999
	.quad	0x3ff5443d46b26bf8              # double 1.3291599999999999
	.quad	0x4022396db0dd82fd              # double 9.1121649999999992
	.quad	0x4017040aaeafab54              # double 5.7539470000000001
	.quad	0x40138a8d21bc126a              # double 4.8853039999999996
	.quad	0x4004144a1f080304              # double 2.5099070000000001
	.quad	0x3ff903201040bfe4              # double 1.5632630000000001
	.quad	0x40207c49dbec2481              # double 8.2427510000000002
	.quad	0x400b1e39713ad5bf              # double 3.389758
	.quad	0x3fe171348b220792              # double 0.54506900000000003
	.quad	0x40218448f10a99b7              # double 8.7583690000000001
	.quad	0x401c69635610adcd              # double 7.1029179999999998
	.quad	0x400c909b738e6d16              # double 3.5706090000000001
	.quad	0x4012b2d6ece13f4b              # double 4.6746480000000004
	.quad	0x3ff24e6f2e8c0486              # double 1.1441490000000001
	.quad	0x402004128bf3bea9              # double 8.0079539999999998
	.quad	0x400666876e1deacd              # double 2.8000630000000002
	.quad	0x3ff7f54f3775b813              # double 1.49739
	.quad	0x4020b36bd2b6f199              # double 8.3504319999999996
	.quad	0x4020cee7e62dc6e3              # double 8.4041130000000006
	.quad	0x401e09fc2a8869c6              # double 7.5097509999999996
	.quad	0x4003065492ff4ba5              # double 2.378091
	.quad	0x4022ef93ff25e56d              # double 9.4679260000000002
	.quad	0x4017fec679cc74b8              # double 5.9988039999999998
	.quad	0x401643ab862b27cc              # double 5.566084
	.quad	0x402219d16fc9bc77              # double 9.0504259999999999
	.quad	0x401479235f809918              # double 5.1182990000000004
	.quad	0x4011c095f2452c5a              # double 4.438072
	.quad	0x3ffd1adb8348f53c              # double 1.8190569999999999
	.quad	0x400b145ae5ffa3ba              # double 3.3849390000000001
	.quad	0x40182cdbbe0157ef              # double 6.0438070000000002
	.quad	0x3fcb955714b9cb68              # double 0.21549499999999999
	.quad	0x4008c26a22b3892f              # double 3.094929
	.quad	0x400cbd5fdcdf6988              # double 3.5924680000000002
	.quad	0x40149dffc5479d4e              # double 5.1542960000000004
	.quad	0x400d580ecfa69be1              # double 3.6679970000000002
	.quad	0x4020346c11a11234              # double 8.1023870000000002
	.quad	0x402084cdb7ae5797              # double 8.2593820000000004
	.quad	0x400ee842fa509396              # double 3.8634089999999999
	.quad	0x4020fb28b6d86ec1              # double 8.4905449999999991
	.quad	0x402291f7b5aea316              # double 9.2850929999999998
	.quad	0x401c66694898f606              # double 7.1000110000000003
	.quad	0x401a193ea2d2fe3f              # double 6.5246529999999998
	.quad	0x400d7ff92f2b66b6              # double 3.687487
	.quad	0x40115841248d7e02              # double 4.3361859999999997
	.quad	0x401719d1b2e59afa              # double 5.7752140000000001
	.quad	0x401a01e71044f1a2              # double 6.5018580000000004
	.quad	0x3ff49e364bec679d              # double 1.288626
	.quad	0x3fedda14488c60cc              # double 0.932871
	.quad	0x3ff353b7d84901d2              # double 1.2079390000000001
	.quad	0x3ff8cb1feeb2d0a2              # double 1.5495909999999999
	.quad	0x3ffaef3b213e3e29              # double 1.683406
	.quad	0x402152ff4ba51a00              # double 8.6621039999999994
	.quad	0x401d584406c00da2              # double 7.3361970000000003
	.quad	0x401c92b777d0f1f5              # double 7.1432779999999996
	.quad	0x40220bc27631b585              # double 9.0229680000000005
	.quad	0x400d115ad106ee31              # double 3.6334740000000001
	.quad	0x40189709310129cc              # double 6.1474960000000003
	.quad	0x400f8ec41dd1a21f              # double 3.9447100000000002
	.quad	0x400fa155d5f56a7b              # double 3.9537770000000001
	.quad	0x401bff8982cb20fb              # double 6.9995479999999999
	.quad	0x401c0cd39da16617              # double 7.0125260000000003
	.quad	0x3ff441e03f705858              # double 1.2660830000000001
	.quad	0x401a1a09cc319c5a              # double 6.5254279999999998
	.quad	0x40232a5e785b5b70              # double 9.5827519999999993
	.quad	0x40133d9d7774aba4              # double 4.8101710000000004
	.quad	0x401f47f993d5347a              # double 7.8202879999999997
	.quad	0x40099c0e38a7e73a              # double 3.2011989999999999
	.quad	0x3ffc3afea3df6db9              # double 1.7644029999999999
	.quad	0x401d3451b93037d6              # double 7.3010929999999998
	.quad	0x401d3ffd1dcd7061              # double 7.3124890000000002
	.quad	0x400b424dd2f1a9fc              # double 3.407375
	.quad	0x401fd9a95421c044              # double 7.9625599999999999
	.quad	0x400a1f0f5a1016ce              # double 3.2651659999999998
	.quad	0x4021d540895d0b74              # double 8.9165080000000003
	.quad	0x3ff62ef8055fbb51              # double 1.3864669999999999
	.quad	0x400d65814940bbb2              # double 3.674563
	.quad	0x401736e653868fd2              # double 5.8036130000000004
	.quad	0x402392582dbe7f2c              # double 9.7858289999999996
	.quad	0x401e291c8eabffce              # double 7.5401480000000003
	.quad	0x401111c9f72f76e6              # double 4.2673719999999999
	.quad	0x4022e628240b7803              # double 9.4495249999999995
	.quad	0x4002b05c896dd26b              # double 2.3361139999999998
	.quad	0x400638c111ada76e              # double 2.7777120000000002
	.quad	0x4010b598e10cf5b2              # double 4.1773410000000002
	.quad	0x3fdf4ba0e8427419              # double 0.48899100000000001
	.quad	0x402258e10cf5b1c8              # double 9.1735919999999993
	.quad	0x40232230121682f9              # double 9.5667729999999995
	.quad	0x40221cc5fbf83383              # double 9.0561980000000002
	.quad	0x4018413059641f64              # double 6.0636609999999997
	.quad	0x40129a4c1ebc83a9              # double 4.6506809999999996
	.quad	0x402245ba2be0589b              # double 9.1361860000000004
	.quad	0x3fecec093d966384              # double 0.90381299999999997
	.quad	0x4018a113c68661ae              # double 6.1573019999999996
	.quad	0x3ffcc34091c08744              # double 1.797669
	.quad	0x4007b3d859c8c932              # double 2.962815
	.quad	0x4018e365cb35f3d8              # double 6.2220680000000002
	.quad	0x40195db50f40e5a3              # double 6.3415109999999997
	.quad	0x40038a65cf67b1c0              # double 2.442577
	.quad	0x40104dc65c70435f              # double 4.075952
	.quad	0x4020e682f944241c              # double 8.4502179999999995
	.quad	0x4005ed81adea8976              # double 2.7409699999999999
	.quad	0x400b492253111f0c              # double 3.4107099999999999
	.quad	0x401c31be6e653869              # double 7.048578
	.quad	0x3ff7b54b05b7cfe6              # double 1.4817610000000001
	.quad	0x40239bb0c4588a05              # double 9.8040830000000003
	.quad	0x40073ec7863beec4              # double 2.9056540000000002
	.quad	0x400784a72ead9275              # double 2.9397720000000001
	.quad	0x401a6a847b24638d              # double 6.6040210000000004
	.quad	0x40122c27e9531551              # double 4.5431210000000002
	.quad	0x400e129e4d5d80e5              # double 3.7590910000000002
	.quad	0x4023a90e02214270              # double 9.8301850000000002
	.quad	0x400ef1697f1f9ad0              # double 3.867877
	.quad	0x3fc8f77f27fe4bcb              # double 0.195053
	.quad	0x40007b78cc9a77e6              # double 2.060289
	.quad	0x402214b51372a38c              # double 9.0404440000000008
	.quad	0x401be493c89f40a3              # double 6.9732200000000004
	.quad	0x3ffab8c5436b8f9b              # double 1.67011
	.quad	0x40060e66cb10342b              # double 2.7570320000000001
	.quad	0x4013c708aac96cc6              # double 4.944369
	.quad	0x3ff8bf3ade225fa6              # double 1.5466869999999999
	.quad	0x40124c43b2dd377e              # double 4.5744769999999999
	.quad	0x401e85daf07bfe7e              # double 7.6307179999999999
	.quad	0x4016621ccd962068              # double 5.5958129999999997
	.quad	0x3ffb960a63305101              # double 1.7241310000000001
	.quad	0x400a7fce3150dae4              # double 3.312405
	.quad	0x4020c05ad538ac19              # double 8.3756930000000001
	.quad	0x402247e414e7ee91              # double 9.1404119999999995
	.quad	0x4002de553ac4f7ec              # double 2.3585609999999999
	.quad	0x4023bc7f993d5348              # double 9.8681610000000006
	.quad	0x400be882f0e0a84c              # double 3.488531
	.quad	0x3ff70826aa8eb463              # double 1.4394899999999999
	.quad	0x3ff0735d249e44fa              # double 1.028165
	.quad	0x3fa7d976ff3ade22              # double 0.046580999999999997
	.quad	0x4015881c714fce74              # double 5.3829209999999996
	.quad	0x401f0ec99f1ae2da              # double 7.7644409999999997
	.quad	0x40187b77c02afddb              # double 6.1205740000000004
	.quad	0x3feacd3bf2f55582              # double 0.83755299999999999
	.quad	0x40225b2af145521a              # double 9.1780620000000006
	.quad	0x4002c55193708aad              # double 2.3463470000000002
	.quad	0x4022147f562174c5              # double 9.0400340000000003
	.quad	0x4012a82f0e0a84be              # double 4.6642419999999998
	.quad	0x4001bc3ce2089e34              # double 2.2169129999999999
	.quad	0x400ebaef6f8f0414              # double 3.8412769999999998
	.quad	0x40229e64b2314014              # double 9.3093620000000001
	.quad	0x40119616f86a0989              # double 4.3965719999999999
	.quad	0x40146b80ecfa69be              # double 5.104984
	.quad	0x401b70e8427418d7              # double 6.8602610000000004
	.quad	0x401d8049ecb31c22              # double 7.3752820000000003
	.quad	0x40234c1aac53b081              # double 9.6486409999999995
	.quad	0x4018ab3fe9fadafd              # double 6.1672359999999999
	.quad	0x3ff2bc83a96d4c34              # double 1.1710240000000001
	.quad	0x401a07a9e2bcf91a              # double 6.5074839999999998
	.quad	0x3ff08488c60cbf2b              # double 1.032357
	.quad	0x401e50079a2834d2              # double 7.5781539999999996
	.quad	0x4010142b734b5137              # double 4.0196969999999999
	.quad	0x4013a94d0dcfcc5c              # double 4.9153330000000004
	.quad	0x401cb850df15a4ad              # double 7.179996
	.quad	0x40130e23af31b153              # double 4.763808
	.quad	0x3f89ca5bd944aa54              # double 0.012593
	.quad	0x4016366f9335d24a              # double 5.5531600000000001
	.quad	0x4013022e1ac57e24              # double 4.752129
	.quad	0x40189cd423d9231c              # double 6.1531529999999997
	.quad	0x401bfe08aefb2aae              # double 6.9980799999999999
	.quad	0x400806a3bddfca00              # double 3.0032420000000002
	.quad	0x4019c1a08bfc2225              # double 6.4390890000000001
	.quad	0x3ff915af294dd723              # double 1.5677939999999999
	.quad	0x40239ad7b634dad3              # double 9.8024269999999997
	.quad	0x4012e0f6f08cc576              # double 4.7196920000000002
	.quad	0x401bf295208e1501              # double 6.9868969999999999
	.quad	0x4021c4d2d44dca8e              # double 8.8844209999999997
	.quad	0x3ff0e7b9170d62bf              # double 1.056573
	.quad	0x4004d3415b1422cd              # double 2.6031520000000001
	.quad	0x3ff8f4adbc664d3c              # double 1.559736
	.quad	0x401ba07746887a8d              # double 6.9067049999999997
	.quad	0x4020bca07f66e86c              # double 8.3684119999999992
	.quad	0x40001d9ba1b19610              # double 2.0144570000000002
	.quad	0x3fdf4c985f06f694              # double 0.48904999999999998
	.quad	0x3ff79327243137b0              # double 1.4734259999999999
	.quad	0x4002e3400b88ca3e              # double 2.3609619999999998
	.quad	0x3fde225742dcf462              # double 0.47084599999999999
	.quad	0x400840303c07ee0b              # double 3.031342
	.quad	0x401428e60807357e              # double 5.0399399999999996
	.quad	0x401abafa7221858c              # double 6.6825960000000002
	.quad	0x401bc290eed02cd4              # double 6.9400060000000003
	.quad	0x4019e7fcb923a29c              # double 6.4765499999999996
	.quad	0x400ba33acd5b6806              # double 3.4547020000000002
	.quad	0x4013d90a350d2807              # double 4.9619530000000003
	.quad	0x400e7be553ac4f7f              # double 3.8104960000000001
	.quad	0x401e93b29a1b9f99              # double 7.6442360000000002
	.quad	0x4010182278d0cc36              # double 4.0235690000000002
	.quad	0x401e202e6644d877              # double 7.5314269999999998
	.quad	0x401e64199fe43676              # double 7.5977540000000001
	.quad	0x40239a771c970f7c              # double 9.8016900000000006
	.quad	0x3fe618e325d4a5df              # double 0.69053799999999999
	.quad	0x3fd8ce4217d2849d              # double 0.38758900000000002
	.quad	0x401645a038194c01              # double 5.5679939999999997
	.quad	0x4017f918e325d4a6              # double 5.9932590000000001
	.quad	0x4008cd86ec17ebaf              # double 3.100355
	.quad	0x400c48c8abd5dc40              # double 3.535539
	.quad	0x3fff4c7192ea52f0              # double 1.9561630000000001
	.quad	0x4019025d4a5df224              # double 6.2523090000000003
	.quad	0x401341a3b14a9047              # double 4.814101
	.quad	0x4021c724fa8b4bf9              # double 8.888954
	.quad	0x40066c8605681ecd              # double 2.8029899999999999
	.quad	0x40069552e2fbe33b              # double 2.8229120000000001
	.quad	0x4010ed0678c0053e              # double 4.2314699999999998
	.quad	0x40222723aafff36b              # double 9.0764440000000004
	.quad	0x40189b6284599674              # double 6.1517429999999997
	.quad	0x3ff9ff0bae89eba7              # double 1.6247670000000001
	.quad	0x3ff0ec8c5004fb12              # double 1.0577510000000001
	.quad	0x4002d6b4c7f34938              # double 2.3548369999999998
	.quad	0x3fc1f705857afea4              # double 0.140351
	.quad	0x4023628f7db6e504              # double 9.692501
	.quad	0x400b590e23af31b1              # double 3.4184839999999999
	.quad	0x401a928e0c9d9d34              # double 6.6431199999999997
	.quad	0x401bb433508f648c              # double 6.9259769999999996
	.quad	0x4003c553ac4f7ec3              # double 2.4713509999999999
	.quad	0x401b35c422036007              # double 6.8025060000000002
	.quad	0x3fc86efc371da37f              # double 0.190887
	.quad	0x401dfdd441355476              # double 7.4978800000000003
	.quad	0x402246d00b45ae60              # double 9.138306
	.quad	0x4004e0b3d4ae429e              # double 2.609718
	.quad	0x400ab785f8d2e515              # double 3.3396110000000001
	.quad	0x4022a0f9b13165d4              # double 9.3144050000000007
	.quad	0x3ff2d92641b328b7              # double 1.178015
	.quad	0x3fe3a224edf61240              # double 0.61354299999999995
	.quad	0x40174a4b9884c6a4              # double 5.8225540000000002
	.quad	0x40122eab7995ee13              # double 4.5455759999999996
	.quad	0x3fae34fc610f0e91              # double 0.058998000000000002
	.quad	0x4009ea43bb40b34e              # double 3.2393869999999998
	.quad	0x3fc1ebfa8f7db6e5              # double 0.140014
	.quad	0x3fc813986338b47c              # double 0.18809799999999999
	.quad	0x3fb4fd7e45803cd1              # double 0.081992999999999996
	.quad	0x3f95c24c404a72eb              # double 0.021249000000000001
	.quad	0x4017790364388ebd              # double 5.8681770000000002
	.quad	0x4001dd627bf61aa4              # double 2.233098
	.quad	0x4016ea80064a9cdc              # double 5.7290039999999998
	.quad	0x4012ab838c111ada              # double 4.6674939999999996
	.quad	0x3fe732f23033a472              # double 0.72496899999999997
	.quad	0x3ffdc9203a322af5              # double 1.8616029999999999
	.quad	0x401377d955714b9d              # double 4.8670400000000003
	.quad	0x400076d117b5286b              # double 2.0580159999999998
	.quad	0x401f5d3e0bd44999              # double 7.8410570000000001
	.quad	0x400f4d940789613d              # double 3.9128799999999999
	.quad	0x4010296d0917d6b6              # double 4.0404549999999997
	.quad	0x3fccd0fe8ab4fa48              # double 0.22512799999999999
	.quad	0x4002ea9478c868ba              # double 2.364541
	.quad	0x401650574b407033              # double 5.5784580000000004
	.quad	0x4009fe8709741d08              # double 3.2492809999999999
	.quad	0x3fea7d6733ebbfd7              # double 0.82780799999999999
	.quad	0x4020393be22e5de1              # double 8.1117849999999994
	.quad	0x3fe25410f94c8798              # double 0.57276199999999999
	.quad	0x40011884c6a3bde0              # double 2.1369720000000001
	.quad	0x4011fb18116ebd4d              # double 4.495209
	.quad	0x4004c35bd512ec6c              # double 2.5953900000000001
	.quad	0x402343c7d5ed06ff              # double 9.632384
	.quad	0x40213e28cbd1244a              # double 8.6214049999999993
	.quad	0x3ffa1dbca9691a76              # double 1.63226
	.quad	0x3ff5f5fb2edfe75c              # double 1.3725540000000001
	.quad	0x40134fa7eb6bf445              # double 4.8277890000000001
	.quad	0x40238224cc6822ff              # double 9.7541869999999999
	.quad	0x401a0dc6195464dc              # double 6.5134509999999999
	.quad	0x4018fbc27631b585              # double 6.2458590000000003
	.quad	0x4010bd50ebaade65              # double 4.1848789999999996
	.quad	0x40213ae4d1a65061              # double 8.6150269999999995
	.quad	0x3ff0ea5b530ced4e              # double 1.0572159999999999
	.quad	0x40212403dddb120a              # double 8.5703420000000001
	.quad	0x4020fb8a7e73a366              # double 8.4912910000000004
	.quad	0x40184f66e86c6584              # double 6.0775410000000001
	.quad	0x4009747e8ccdd93c              # double 3.1818819999999999
	.quad	0x400372a737110e45              # double 2.4309829999999999
	.quad	0x4015a5821294573a              # double 5.4116289999999996
	.quad	0x400a822d5171e29b              # double 3.3135629999999998
	.quad	0x40219f33226c3b92              # double 8.8109369999999991
	.quad	0x40237778140dd3fe              # double 9.7333379999999998
	.quad	0x4012b0ac3a860dcc              # double 4.6725320000000004
	.quad	0x4011edf6555c52e7              # double 4.4823849999999998
	.quad	0x4022a28826aa8eb4              # double 9.3174449999999993
	.quad	0x3fdca9e6eeb70260              # double 0.44786999999999999
	.quad	0x4007e0bb2bba98ee              # double 2.9847320000000002
	.quad	0x401f79d7774aba38              # double 7.8689859999999995
	.quad	0x4016b9774256bca5              # double 5.6811189999999998
	.quad	0x4022b7292c493426              # double 9.3577359999999992
	.quad	0x4013c6a2f48c2e77              # double 4.943981
	.quad	0x40200c4a4095f245              # double 8.0240039999999997
	.quad	0x40058c625e99e94b              # double 2.6935470000000001
	.quad	0x3fff705a708ede55              # double 1.9649300000000001
	.quad	0x4003d0ff97247454              # double 2.4770500000000002
	.quad	0x3ff8cacd184c2720              # double 1.549512
	.quad	0x40166dacabc51548              # double 5.6071039999999996
	.quad	0x3f972e6a76965f52              # double 0.022637999999999998
	.quad	0x3fe68405b39e279e              # double 0.70361600000000002
	.quad	0x4021c08b11409a24              # double 8.8760609999999999
	.quad	0x4008b5e2046c764b              # double 3.0888100000000001
	.quad	0x3fce261bf37b8d3f              # double 0.235538
	.quad	0x4019ccf8d716d2aa              # double 6.4501679999999997
	.quad	0x3fc646ae3a3a8e71              # double 0.17403199999999999
	.quad	0x4019505100a393ee              # double 6.3284339999999997
	.quad	0x401bdbf1a5ca2984              # double 6.9647889999999997
	.quad	0x4005c9374bc6a7f0              # double 2.7232500000000002
	.quad	0x401e1a7610279570              # double 7.5258409999999998
	.quad	0x40169784a9478c87              # double 5.6479670000000004
	.quad	0x3feb84b3c3e74afd              # double 0.85994899999999996
	.quad	0x40236d184c271fff              # double 9.7130759999999991
	.quad	0x40129e83a109d063              # double 4.6547989999999997
	.quad	0x401703400b88ca3e              # double 5.7531739999999996
	.quad	0x400c8c226809d495              # double 3.568425
	.quad	0x3ffffb97bb730835              # double 1.9989239999999999
	.quad	0x40123087ca643cc0              # double 4.5473929999999996
	.quad	0x4017f699c7bcc294              # double 5.9908210000000004
	.quad	0x3fe7dff3f0fe047d              # double 0.74608799999999997
	.quad	0x4006f0268900c522              # double 2.8672610000000001
	.quad	0x401c68da3c21187e              # double 7.1023949999999996
	.quad	0x401eb5953586ca8a              # double 7.677327
	.quad	0x4014c1e2584f4c6e              # double 5.1893399999999996
	.quad	0x3ffca26e5471715c              # double 1.7896559999999999
	.quad	0x4020e7585be1a826              # double 8.4518459999999997
	.quad	0x4013fcc46950fc72              # double 4.9968430000000001
	.quad	0x4006717d6b65a9a8              # double 2.805415
	.quad	0x40208bccd0fe8ab5              # double 8.273047
	.quad	0x400f677b395c4220              # double 3.9255279999999999
	.quad	0x3fee44f3ba775fb3              # double 0.94591700000000001
	.quad	0x401ed6273929ed39              # double 7.7091339999999997
	.quad	0x40206cd1a6506141              # double 8.2125369999999993
	.quad	0x4020dd5d5f56a7ad              # double 8.4323530000000009
	.quad	0x4022a6598e10cf5b              # double 9.3249019999999998
	.quad	0x4015bd8d36b4c7f3              # double 5.4351089999999997
	.quad	0x400264e618ce2d1f              # double 2.2992669999999999
	.quad	0x4022b384988094e6              # double 9.3506210000000003
	.quad	0x402020a0b1bbcf4f              # double 8.0637260000000008
	.quad	0x4014bed30f062d41              # double 5.1863520000000003
	.quad	0x4008960d887ebf23              # double 3.0732680000000001
	.quad	0x402265916872b021              # double 9.1983750000000004
	.quad	0x3fd98b32ce89656f              # double 0.399121
	.quad	0x400dfa78f25a2510              # double 3.7473010000000002
	.quad	0x4005ce52deca2553              # double 2.7257440000000002
	.quad	0x3fe871172ef0ae53              # double 0.76380499999999996
	.quad	0x3fc042aed1394318              # double 0.12703500000000001
	.quad	0x3fecdf6fd21ff2e5              # double 0.90227500000000005
	.quad	0x401ab1b36bd2b6f2              # double 6.6735360000000004
	.quad	0x401d686d71f36263              # double 7.3519800000000002
	.quad	0x3fdadc1a47a9e2bd              # double 0.419684
	.quad	0x4016f60e94ee392e              # double 5.7402899999999999
	.quad	0x4022ac04ea4a8c15              # double 9.3359749999999995
	.quad	0x401205846e8f29d4              # double 4.5053879999999999
	.quad	0x400d1151611ba3ca              # double 3.6334559999999998
	.quad	0x401cc693c03bc4d2              # double 7.1939229999999998
	.quad	0x4002d49e8815e397              # double 2.353818
	.quad	0x4010d58afc47e49b              # double 4.2085379999999999
	.quad	0x4021e24d4cb9ecf6              # double 8.9419959999999996
	.quad	0x40194baecd07852f              # double 6.3239089999999996
	.quad	0x4022da29c779a6b5              # double 9.4260999999999999
	.quad	0x40202c0e38a7e73a              # double 8.0860459999999996
	.quad	0x400be9d8c6d612c7              # double 3.4891830000000001
	.quad	0x40184f8ca8198f1d              # double 6.0776849999999998
	.quad	0x3ff3319d66adb403              # double 1.199613
	.quad	0x401ea07314ca9260              # double 7.6566890000000001
	.quad	0x400b331098d477bc              # double 3.399934
	.quad	0x401c05aea3161a1e              # double 7.0055490000000002
	.quad	0x402210982cb20fb2              # double 9.0324109999999997
	.quad	0x400eba98eda22f6a              # double 3.8411119999999999
	.quad	0x3ff02a897635e743              # double 1.0103850000000001
	.quad	0x401a1a3d2d87f887              # double 6.5256239999999996
	.quad	0x401a2a400fba8827              # double 6.5412600000000003
	.quad	0x4012720535c9e668              # double 4.6113479999999996
	.quad	0x4014260e94ee392e              # double 5.0371649999999999
	.quad	0x4023a8726d04e619              # double 9.8289980000000003
	.quad	0x4018520535c9e668              # double 6.0800979999999996
	.quad	0x3fc6fbeb9e492bc3              # double 0.179563
	.quad	0x4013e26f1dc50ce5              # double 4.9711270000000001
	.quad	0x3ff0615db3397dd0              # double 1.023771
	.quad	0x3ff0a757928e0c9e              # double 1.0408550000000001
	.quad	0x4006a2291fb3fa6e              # double 2.82918
	.quad	0x401e356eac860568              # double 7.5521799999999998
	.quad	0x401e7d14a0a0f4d8              # double 7.6221490000000002
	.quad	0x4011b2131a8ef77f              # double 4.4239009999999999
	.quad	0x3fa8ce2d1f1cfbb9              # double 0.048447999999999998
	.quad	0x401027079e59f2bb              # double 4.0381150000000003
	.quad	0x4012f858ff759685              # double 4.7425269999999999
	.quad	0x3fd49a62ed352221              # double 0.32192300000000001
	.quad	0x4010cf7d73c92578              # double 4.2026269999999997
	.quad	0x4010b4fb549f9485              # double 4.1767399999999997
	.quad	0x3fed0c47a17f4129              # double 0.90774900000000003
	.quad	0x401db5d4e8fb00bd              # double 7.4275700000000002
	.quad	0x401edef0f16f4385              # double 7.7177160000000002
	.quad	0x4008f06e5cd4ed2d              # double 3.1173980000000001
	.quad	0x4020789f1f14983d              # double 8.2355889999999992
	.quad	0x3fff9c432ca57a78              # double 1.9756499999999999
	.quad	0x4016469595feda66              # double 5.5689299999999999
	.quad	0x4019e220791c4b90              # double 6.4708269999999999
	.quad	0x4010e52a84380885              # double 4.223795
	.quad	0x40005635610adcd3              # double 2.0420940000000001
	.quad	0x4020ebbe878fabda              # double 8.4604379999999999
	.quad	0x4021dd1244a6223e              # double 8.9317799999999998
	.quad	0x40204478a6dacabc              # double 8.1337329999999994
	.quad	0x4015a1083dbc2331              # double 5.4072579999999997
	.quad	0x4020d59146e4c0df              # double 8.4171239999999994
	.quad	0x402248b26394face              # double 9.1419859999999993
	.quad	0x3ffd6917507e9d95              # double 1.838157
	.quad	0x4020bd63ed0f6274              # double 8.3699030000000007
	.quad	0x40127dfd694ccab4              # double 4.6230370000000001
	.quad	0x400a12b7fe08aefb              # double 3.2591399999999999
	.quad	0x3fe0d04816f0068e              # double 0.52542500000000003
	.quad	0x40099acb4289118c              # double 3.200583
	.quad	0x4022530bbf50e347              # double 9.1621989999999993
	.quad	0x4014db6b2af14552              # double 5.2142759999999999
	.quad	0x401460f16f4384ba              # double 5.0946709999999999
	.quad	0x40057b56b8737974              # double 2.6852239999999998
	.quad	0x4018a867ad8e4324              # double 6.1644579999999998
	.quad	0x400c493af74cd317              # double 3.5357569999999998
	.quad	0x401721ed5ae1cde6              # double 5.7831320000000002
	.quad	0x401be0cfe154434e              # double 6.9695429999999998
	.quad	0x40206964840e171a              # double 8.2058450000000001
	.quad	0x4020bcfdd2285660              # double 8.3691239999999993
	.quad	0x4006262c343b70ef              # double 2.7686389999999999
	.quad	0x4002393469941850              # double 2.2779319999999998
	.quad	0x4020e4b295e9e1b1              # double 8.4466750000000008
	.quad	0x4019bfe8ee6b8306              # double 6.4374120000000001
	.quad	0x4011c6cce5f7403e              # double 4.4441410000000001
	.quad	0x402202e429e0a41a              # double 9.0056469999999997
	.quad	0x4002d83f0bae89ec              # double 2.3555890000000002
	.quad	0x4022a2af5771001d              # double 9.3177439999999994
	.quad	0x40215af640639d5e              # double 8.6776599999999995
	.quad	0x3ff71308bb906467              # double 1.4421470000000001
	.quad	0x3ffc0fbeb9e492bc              # double 1.753844
	.quad	0x40127b76f6d76252              # double 4.620571
	.quad	0x3ff161437c5692b4              # double 1.086246
	.quad	0x3ffa225d8d79d0a6              # double 1.6333899999999999
	.quad	0x3fd0dbec2480e8c9              # double 0.26342300000000002
	.quad	0x401aa7c0b1359792              # double 6.6638210000000004
	.quad	0x401323393ab430f5              # double 4.7843980000000004
	.quad	0x401f15e5f30e7ff6              # double 7.7713850000000004
	.quad	0x40171fb3311a543f              # double 5.7809569999999999
	.quad	0x40196c1c6088d6d4              # double 6.3555770000000003
	.quad	0x401cca250f840182              # double 7.1974070000000001
	.quad	0x4018d205ff1d81f1              # double 6.205101
	.quad	0x400a78e6d15ad107              # double 3.309034
	.quad	0x3ffb40d3cff64cf9              # double 1.703327
	.quad	0x401b9115df6555c5              # double 6.8916849999999998
	.quad	0x400c9947cfa26a23              # double 3.5748440000000001
	.quad	0x401f88f96e158751              # double 7.8837640000000002
	.quad	0x4020474d7add15f0              # double 8.1392629999999997
	.quad	0x401822b0ea18372e              # double 6.0338779999999996
	.quad	0x401738b4bf8fcd68              # double 5.805377
	.quad	0x3fd91a1554fbdad7              # double 0.39221699999999998
	.quad	0x4021f03f705857b0              # double 8.9692340000000002
	.quad	0x402057e260b2c83f              # double 8.1716490000000004
	.quad	0x4009ce47dc37a3db              # double 3.2257229999999999
	.quad	0x3fe5a48f96e15875              # double 0.67633799999999999
	.quad	0x4021167e414e7ee9              # double 8.5439319999999999
	.quad	0x401759307af20ea6              # double 5.8370990000000003
	.quad	0x4011a5a294141e9b              # double 4.411753
	.quad	0x40154c792d1287c2              # double 5.324681
	.quad	0x3fc4c4cdfaca361a              # double 0.16225600000000001
	.quad	0x40018915bdd76684              # double 2.1919360000000001
	.quad	0x400d1052934acaff              # double 3.6329699999999998
	.quad	0x4020460c7c0f4517              # double 8.1368139999999993
	.quad	0x4020b56f75d9a0f1              # double 8.3543660000000006
	.quad	0x3fcd3e1c9b413986              # double 0.22845799999999999
	.quad	0x402359a60d4562e1              # double 9.6750950000000006
	.quad	0x401e5e5de15ca6ca              # double 7.592155
	.quad	0x3fdf078d92fb19e7              # double 0.48483599999999999
	.quad	0x4020714f8b588e37              # double 8.2213100000000008
	.quad	0x401a1014f8b588e3              # double 6.5157049999999996
	.quad	0x401f1265add9c27f              # double 7.7679660000000003
	.quad	0x400f7fba450acc0c              # double 3.9373670000000001
	.quad	0x4020c3fdf7e8038a              # double 8.3827970000000001
	.quad	0x402153d987c6327f              # double 8.6637690000000003
	.quad	0x402013b645a1cac1              # double 8.0385000000000009
	.quad	0x3ffafacf7446f9ba              # double 1.6862330000000001
	.quad	0x4000d3cd573647bb              # double 2.1034190000000001
	.quad	0x40168f7121ab4b73              # double 5.6400800000000002
	.quad	0x401112d7f950b956              # double 4.268402
	.quad	0x401d2970b49e01de              # double 7.2904689999999999
	.quad	0x4017d1aa821f2991              # double 5.954752
	.quad	0x4016a068123810e9              # double 5.6566470000000004
	.quad	0x4011dcbfb15b573f              # double 4.4655750000000003
	.quad	0x401291b60ae9680e              # double 4.642296
	.quad	0x3ff945931ca7d673              # double 1.5794859999999999
	.quad	0x40175f21b3aeee95              # double 5.8429019999999996
	.quad	0x3fe34538ef34d6a1              # double 0.60219999999999996
	.quad	0x4021445974e65bea              # double 8.6334949999999999
	.quad	0x4015f166e008e9b4              # double 5.4857440000000004
	.quad	0x3fe9be5109070fbf              # double 0.80448200000000003
	.quad	0x40104a95421c0443              # double 4.0728350000000004
	.quad	0x401a9435efa615a9              # double 6.6447370000000001
	.quad	0x4005c055fbb517a4              # double 2.7189139999999998
	.quad	0x40014bdec5f394b8              # double 2.1620460000000001
	.quad	0x401abc25072085b2              # double 6.6837350000000004
	.quad	0x4021b6c0724b76f7              # double 8.8569370000000003
	.quad	0x401593ae2541d8e8              # double 5.3942189999999997
	.quad	0x3fed953dea465a57              # double 0.92446799999999996
	.quad	0x3ff55c810a569b17              # double 1.3350839999999999
	.quad	0x4009d363f572de44              # double 3.228218
	.quad	0x4014d07cc7d1bb49              # double 5.2036009999999999
	.quad	0x3ffba7fc32ebe597              # double 1.728512
	.quad	0x4019c4d834091c08              # double 6.4422309999999996
	.quad	0x40018a5df2239e6b              # double 2.1925620000000001
	.quad	0x3ffe091d14e3bcd3              # double 1.8772249999999999
	.quad	0x4022e62f9ca5bd94              # double 9.4495819999999994
	.quad	0x4020e5c725c3dee8              # double 8.4487850000000009
	.quad	0x3fffbf0995aaf790              # double 1.98414
	.quad	0x4010e2a80064a9ce              # double 4.2213440000000002
	.quad	0x4023232bdc26dce4              # double 9.5686940000000006
	.quad	0x401a50fa9c12f09e              # double 6.5790810000000004
	.quad	0x4008aa9d627bf61b              # double 3.0833080000000002
	.quad	0x3fe5b4c5da6a4441              # double 0.67831699999999995
	.quad	0x4022b30856e696a2              # double 9.3496729999999992
	.quad	0x401dc9dfdac68a93              # double 7.4471429999999996
	.quad	0x4021d2aa19439de5              # double 8.9114540000000009
	.quad	0x3fc02917507e9d95              # double 0.12625400000000001
	.quad	0x3ffe1c087442c7fc              # double 1.8818440000000001
	.quad	0x40225aeff5c6c11a              # double 9.1776119999999999
	.quad	0x4016762d40aaeafb              # double 5.6154070000000003
	.quad	0x401e367a0f9096bc              # double 7.5532000000000004
	.quad	0x40215aa715831f04              # double 8.6770560000000003
	.quad	0x400ed6c4827b6fe3              # double 3.854867
	.quad	0x3fe26e6fb4c3c18b              # double 0.57598099999999997
	.quad	0x3ff0b8fabda0dfdf              # double 1.045161
	.quad	0x3ff8df5be5d9e40d              # double 1.5545310000000001
	.quad	0x3fc5360d0247021d              # double 0.165712
	.quad	0x400e758c08b75ea6              # double 3.8073959999999998
	.quad	0x401725e28aa43351              # double 5.7869970000000004
	.quad	0x4020e10060780fdc              # double 8.4394559999999998
	.quad	0x40187d7d3910c2c6              # double 6.1225480000000001
	.quad	0x401ab939eadd590c              # double 6.680885
	.quad	0x40083116a8b8f14e              # double 3.0239690000000001
	.quad	0x3ff4b2b239a38fbd              # double 1.2936270000000001
	.quad	0x40203981beb18117              # double 8.1123180000000001
	.quad	0x4013a808c8259e1f              # double 4.9140959999999998
	.quad	0x401db327674d1633              # double 7.4249549999999997
	.quad	0x401a39eecbfb15b5              # double 6.5565749999999996
	.quad	0x401c76034f3fd934              # double 7.1152470000000001
	.quad	0x40094686e7e62dc7              # double 3.1594370000000001
	.quad	0x40210f5d56f32bdc              # double 8.5300089999999997
	.quad	0x401d2a8d64d7f0ed              # double 7.2915549999999998
	.quad	0x40212dcdb37c99af              # double 8.5894600000000008
	.quad	0x40094bb6672fba02              # double 3.161969
	.quad	0x40230999567dbb17              # double 9.5187480000000004
	.quad	0x400d01709310129d              # double 3.6257030000000001
	.quad	0x40201deb0fadf2ed              # double 8.0584340000000001
	.quad	0x3fee6ec5b078d930              # double 0.95102200000000003
	.quad	0x3ff8aac647778dd6              # double 1.541693
	.quad	0x4011758ff7596851              # double 4.3648069999999999
	.quad	0x40228603b3e9a6f8              # double 9.2617469999999997
	.quad	0x400d80379314445b              # double 3.6876060000000002
	.quad	0x401c8aa53fc00970              # double 7.1353960000000001
	.quad	0x400774a87e38eb03              # double 2.931962
	.quad	0x3ff582656abde3fc              # double 1.3443350000000001
	.quad	0x401610a5accd5305              # double 5.5162570000000004
	.quad	0x3fec94c87980f55e              # double 0.89316200000000001
	.quad	0x401e002ea960b6fa              # double 7.500178
	.quad	0x3fe8738e6d15ad10              # double 0.76410599999999995
	.quad	0x4020195592d98bf8              # double 8.0494810000000001
	.quad	0x3fa0ab2e1693c03c              # double 0.032556000000000002
	.quad	0x4015e7c286f8ad25              # double 5.4763279999999996
	.quad	0x4021f572ffd1dcd7              # double 8.979393
	.quad	0x402108a02b841249              # double 8.5168470000000003
	.quad	0x401337995ee136e7              # double 4.8042959999999999
	.quad	0x40119d3aa369fcf4              # double 4.4035440000000001
	.quad	0x4013e3a4723aafff              # double 4.9723069999999998
	.quad	0x3fc0f86a098915be              # double 0.132581
	.quad	0x401493608d08919f              # double 5.143923
	.quad	0x401afde00d1b7176              # double 6.7479250000000004
	.quad	0x40118a2834d26fa4              # double 4.384919
	.quad	0x3ffd0d2d44dca8e3              # double 1.815717
	.quad	0x400e1a93293d102c              # double 3.7629760000000001
	.quad	0x4023bf774aba3876              # double 9.8739570000000008
	.quad	0x4020ba97396d0918              # double 8.3644350000000003
	.quad	0x401f1fd36f7e3d1d              # double 7.7810800000000002
	.quad	0x4022a0e4fb97bb73              # double 9.3142469999999999
	.quad	0x401a70bb6ed67770              # double 6.6100899999999996
	.quad	0x400ac9b5a63f9a4a              # double 3.3484910000000001
	.quad	0x40132fd9ba1b1961              # double 4.796729
	.quad	0x4019baed56b00ffe              # double 6.4325460000000003
	.quad	0x4001651654d61b2a              # double 2.1743589999999999
	.quad	0x4011003c8e25c811              # double 4.2502310000000003
	.quad	0x40144507a6bd6e8b              # double 5.067412
	.quad	0x3fe81b413986338b              # double 0.75332699999999997
	.quad	0x3ff2efe2e6ea8544              # double 1.1835659999999999
	.quad	0x40143c764adff823              # double 5.0590450000000002
	.quad	0x3fe33db3bfb58d15              # double 0.60128199999999998
	.quad	0x40127471b4784231              # double 4.613715
	.quad	0x3fe54d50ebaade65              # double 0.66568799999999995
	.quad	0x401b8622c4502689              # double 6.880992
	.quad	0x401765c4651f3e8a              # double 5.8493820000000003
	.quad	0x3fe09aef6f8f0414              # double 0.51891299999999996
	.quad	0x400b098fe69270b0              # double 3.3796689999999998
	.quad	0x3fc7fb506dd69d30              # double 0.187357
	.quad	0x3fe01fd7a13c254a              # double 0.50388699999999997
	.quad	0x401ee76a2f48c2e7              # double 7.7259909999999996
	.quad	0x3fea235d67ba237d              # double 0.81681700000000002
	.quad	0x40066e0c9d9d3459              # double 2.8037350000000001
	.quad	0x400ade60c38f3669              # double 3.3585829999999999
	.quad	0x4015f3886594af4f              # double 5.487825
	.quad	0x401761711947cfa2              # double 5.8451579999999996
	.quad	0x402374ca925fe975              # double 9.7281080000000006
	.quad	0x4018668fd199bb28              # double 6.1001580000000004
	.quad	0x401442599ed7c6fc              # double 5.0647950000000002
	.quad	0x401a0c20d5629d84              # double 6.511844
	.quad	0x40148f901083dbc2              # double 5.1401979999999998
	.quad	0x401bda07f66e86c6              # double 6.9629209999999997
	.quad	0x401c0ce6c093d966              # double 7.0125989999999998
	.quad	0x40209d7625204af9              # double 8.3075419999999998
	.quad	0x40139f5903a7546d              # double 4.9056129999999998
	.quad	0x402111240746455f              # double 8.5334780000000006
	.quad	0x400ed9ee88df3733              # double 3.8564120000000002
	.quad	0x4019bc70867ad8e4              # double 6.4340229999999998
	.quad	0x401ee5d67ba237ce              # double 7.7244510000000002
	.quad	0x40196d84d338f798              # double 6.3569519999999997
	.quad	0x401e6efe4ffc9796              # double 7.6083920000000003
	.quad	0x40200c449dbec248              # double 8.0239609999999999
	.quad	0x400c33882278d0cc              # double 3.5251619999999999
	.quad	0x400c07735c182ecb              # double 3.503638
	.quad	0x401dcfea8112ba17              # double 7.4530430000000001
	.quad	0x4015b060bb2bba99              # double 5.4222440000000001
	.quad	0x3ff6fded6ba8c587              # double 1.4369940000000001
	.quad	0x401c40de4c51116b              # double 7.0633480000000004
	.quad	0x40176f83be6601bd              # double 5.8589010000000004
	.quad	0x4020e89289dadfb5              # double 8.454243
	.quad	0x3ff06523704790b8              # double 1.0246919999999999
	.quad	0x4001e1083dbc2331              # double 2.2348789999999998
	.quad	0x40120d5347a5b0ff              # double 4.5130129999999999
	.quad	0x40180b677f6b1a2a              # double 6.0111369999999997
	.quad	0x4013770c564f97ee              # double 4.8662580000000002
	.quad	0x400b1fb7a5f41aef              # double 3.3904869999999998
	.quad	0x401d73d70a3d70a4              # double 7.3631250000000001
	.quad	0x40144795b35b0bbf              # double 5.0699069999999997
	.quad	0x400c3e29b6b2af14              # double 3.5303529999999999
	.quad	0x4017c5e56cd6c2f0              # double 5.9432580000000002
	.quad	0x400b5378ee286727              # double 3.4157579999999998
	.quad	0x3ff74a4c1ebc83a9              # double 1.4556389999999999
	.quad	0x3ffdf865d7cb2d90              # double 1.8731439999999999
	.quad	0x401250739b024f66              # double 4.5785660000000004
	.quad	0x400ca9f8c21e1d21              # double 3.5829939999999998
	.quad	0x401a30667f90d9d7              # double 6.5472659999999996
	.quad	0x400de62a1b5c7cd9              # double 3.7373850000000002
	.quad	0x400e71a32b12d341              # double 3.8054869999999998
	.quad	0x4010f586ca89fc6e              # double 4.2397720000000003
	.quad	0x4023417e77d523b3              # double 9.6279179999999993
	.quad	0x401e0c903ea704bc              # double 7.5122689999999999
	.quad	0x4021e7c0d2c386d3              # double 8.9526430000000001
	.quad	0x4009987d6f976790              # double 3.1994579999999999
	.quad	0x40182e874c8ffb8b              # double 6.0454379999999999
	.quad	0x4016e81626b2f230              # double 5.7266469999999998
	.quad	0x400ed8904f6dfc5d              # double 3.8557440000000001
	.quad	0x4013da11a975afb0              # double 4.9629580000000004
	.quad	0x401b81858bc59b80              # double 6.8764859999999999
	.quad	0x40089e84f09528f2              # double 3.0774020000000002
	.quad	0x3ff939ee02a77a2d              # double 1.576643
	.quad	0x401ab5c422036007              # double 6.6775060000000002
	.quad	0x40015c0b13597918              # double 2.169943
	.quad	0x401be33e78e1932d              # double 6.9719179999999996
	.quad	0x3fffbeb4a66559f7              # double 1.984059
	.quad	0x3ff2a77f6b1a2a4e              # double 1.1658930000000001
	.quad	0x3fed381b64e05469              # double 0.91309899999999999
	.quad	0x4023159a30984e40              # double 9.542192
	.quad	0x4019ce889c1b5419              # double 6.4516929999999997
	.quad	0x40146589efd86a90              # double 5.0991590000000002
	.quad	0x401dbbef49cf56eb              # double 7.4335300000000002
	.quad	0x401672b1b36bd2b7              # double 5.612006
	.quad	0x400eabead4f5903a              # double 3.8339439999999998
	.quad	0x3ff8bfb267c6b8b7              # double 1.5468010000000001
	.quad	0x402165bd944aa540              # double 8.6987120000000004
	.quad	0x40210bf4666ec9e2              # double 8.5233489999999996
	.quad	0x40091bde82d7b635              # double 3.1386080000000001
	.quad	0x40225812dfd694cd              # double 9.1720190000000006
	.quad	0x40227e7b1c0010c7              # double 9.2470330000000001
	.quad	0x40231a2c881e4713              # double 9.5511210000000001
	.quad	0x3ffa5a048e043a21              # double 1.6469769999999999
	.quad	0x400ef10129cbab65              # double 3.8676780000000002
	.quad	0x40220f251c193b3a              # double 9.0295799999999993
	.quad	0x40230888509bf9c6              # double 9.5166649999999997
	.quad	0x4002705c896dd26b              # double 2.3048639999999998
	.quad	0x402163352a843809              # double 8.6937650000000009
	.quad	0x3ff92af038e29f9d              # double 1.572983
	.quad	0x401aed0aed99cbef              # double 6.7314870000000004
	.quad	0x401a6e8ccdd93c47              # double 6.6079590000000001
	.quad	0x4019964b2314013f              # double 6.3967710000000002
	.quad	0x3ff7f779e9d0e992              # double 1.497919
	.quad	0x4006e651f3e89a89              # double 2.8624610000000001
	.quad	0x402362c42e9899bf              # double 9.6929029999999993
	.quad	0x4002286162f166e0              # double 2.269717
	.quad	0x40133e846a5d6bec              # double 4.8110520000000001
	.quad	0x40211886594af4f1              # double 8.5479000000000003
	.quad	0x4022e6d9be4cd749              # double 9.4508799999999997
	.quad	0x401553d9ec700043              # double 5.3318859999999999
	.quad	0x4020a2b8e8ea39c5              # double 8.3178169999999998
	.quad	0x4014c2c2bd7f51f0              # double 5.1901960000000003
	.quad	0x40216c98c3b0c459              # double 8.7121030000000008
	.quad	0x40055971c10d7bea              # double 2.6686740000000002
	.quad	0x3ff1b0be0ded288d              # double 1.10565
	.quad	0x401330c804102ff9              # double 4.7976380000000001
	.quad	0x400c52378ab0c88a              # double 3.5401449999999999
	.quad	0x3fe2f01fb82c2bd8              # double 0.591812
	.quad	0x4022b8f6f08cc576              # double 9.3612590000000004
	.quad	0x401fdba7b9170d63              # double 7.9645070000000002
	.quad	0x40149df3300de4c5              # double 5.1542479999999999
	.quad	0x40053ad7518b0d0f              # double 2.6537310000000001
	.quad	0x3ff7a69270b06c44              # double 1.478167
	.quad	0x3ff9cf5903a7546d              # double 1.6131219999999999
	.quad	0x3fc42cdc011d3672              # double 0.15761900000000001
	.quad	0x401a829d8409e55c              # double 6.6275539999999999
	.quad	0x4023ffea8112ba17              # double 9.9998360000000001
	.quad	0x4006d44a1f080304              # double 2.8536570000000001
	.quad	0x401279f1ae2da555              # double 4.6190860000000002
	.quad	0x40207ad2999567dc              # double 8.2398880000000005
	.quad	0x400fd4f0d844d014              # double 3.9789750000000002
	.quad	0x4020bd9b1b79d90a              # double 8.3703240000000001
	.quad	0x4004f2220bc382a1              # double 2.6182289999999999
	.quad	0x40181b24638c9753              # double 6.0265060000000004
	.quad	0x400cb38ac18f81e9              # double 3.5876670000000002
	.quad	0x3fea49ba5e353f7d              # double 0.82150000000000001
	.quad	0x40006e74f2f123c4              # double 2.0539339999999999
	.quad	0x4004424edf612407              # double 2.5323769999999999
	.quad	0x4017febb7739f341              # double 5.9987620000000001
	.quad	0x4019d80064a9cdc4              # double 6.4609389999999998
	.quad	0x4011a0c49ba5e354              # double 4.407
	.quad	0x3fee7d63022dd7aa              # double 0.95280600000000004
	.quad	0x4006ef2d7f950b95              # double 2.8667859999999998
	.quad	0x401acabf33871609              # double 6.6979949999999997
	.quad	0x3f7016ce789e774f              # double 0.0039280000000000001
	.quad	0x401544373f316e37              # double 5.3166169999999999
	.quad	0x4007fcc74b838c11              # double 2.998427
	.quad	0x3fe67aacd9e83e42              # double 0.70247499999999996
	.quad	0x3fc43be6601bc98a              # double 0.158078
	.quad	0x4016e18b93469942              # double 5.7202590000000004
	.quad	0x40236f61672324c8              # double 9.7175399999999996
	.quad	0x4011613c68661ae7              # double 4.344957
	.quad	0x4022e53111f0c34c              # double 9.4476399999999998
	.quad	0x40088f6837f7be12              # double 3.0700229999999999
	.quad	0x40206eff1950331e              # double 8.2167899999999996
	.quad	0x401f7fe4bcad9ad8              # double 7.8748959999999996
	.quad	0x4016682f0e0a84be              # double 5.6017419999999998
	.quad	0x401fff8bdec5f395              # double 7.9995570000000002
	.quad	0x40209e5b8561d430              # double 8.3092919999999992
	.quad	0x3ff36a62aa19439e              # double 1.213473
	.quad	0x40137c9539b88872              # double 4.8716629999999999
	.quad	0x401e3f74cd31769b              # double 7.5619690000000003
	.quad	0x4015fd3d4280ae10              # double 5.4973039999999997
	.quad	0x40201ac710cb295f              # double 8.0523000000000007
	.quad	0x401b786ad2dcb146              # double 6.8675949999999997
	.quad	0x4023b06961c36977              # double 9.8445540000000004
	.quad	0x4023b9a47a9e2bd0              # double 9.8625830000000008
	.quad	0x4013eb95a294141f              # double 4.9800630000000004
	.quad	0x401c2d88c1db0143              # double 7.044467
	.quad	0x400b9463497b7415              # double 3.4474550000000002
	.quad	0x4006909203a322af              # double 2.8205909999999998
	.quad	0x4018c9b6b2af1455              # double 6.1969859999999999
	.quad	0x400f2df1e0828c37              # double 3.8974340000000001
	.quad	0x3ff94fa69be09bb7              # double 1.5819460000000001
	.quad	0x400acd62bf11f927              # double 3.3502860000000001
	.quad	0x400c5310129cbab6              # double 3.5405579999999999
	.quad	0x401b16f3f52fc265              # double 6.7724149999999996
	.quad	0x400a3c5931ca7d67              # double 3.2794669999999999
	.quad	0x40030d2806af46aa              # double 2.381424
	.quad	0x400ffcf4623d0bfa              # double 3.998513
	.quad	0x4022094d72799a20              # double 9.0181690000000003
	.quad	0x40217367e414e7ef              # double 8.7254020000000008
	.quad	0x401d69cfdd228566              # double 7.353332
	.quad	0x40223e8cef672b88              # double 9.1221689999999995
	.quad	0x4015d428d434a01b              # double 5.4571870000000002
	.quad	0x401af76534373f31              # double 6.7415969999999996
	.quad	0x4010d219220ff541              # double 4.2051740000000004
	.quad	0x3fd7e18efbb0e5e6              # double 0.37314199999999997
	.quad	0x4023980ae1049236              # double 9.7969580000000001
	.quad	0x401282a38b8ae31d              # double 4.6275769999999996
	.quad	0x40166b645a1cac08              # double 5.6048749999999998
	.quad	0x401f548387df5cf2              # double 7.8325329999999997
	.quad	0x40062ebfec13b9f1              # double 2.7728269999999999
	.quad	0x4009ea6223e18698              # double 3.2394449999999999
	.quad	0x40109a3c64345cff              # double 4.1506210000000001
	.quad	0x3ff8f761cbccf28c              # double 1.5603959999999999
	.quad	0x400f5c4199fe4367              # double 3.9200469999999998
	.quad	0x3ffb45e5f30e7ff6              # double 1.7045650000000001
	.quad	0x4021b4d12018a43c              # double 8.8531580000000005
	.quad	0x4015a400b88ca3e8              # double 5.4101590000000002
	.quad	0x40224de00d1b7176              # double 9.1521000000000008
	.quad	0x40133ac6045baf53              # double 4.8073959999999998
	.quad	0x4023afd1351159c5              # double 9.8433930000000007
	.quad	0x401ec69b5a63f9a5              # double 7.6939520000000003
	.quad	0x4016cc48f10a99b7              # double 5.699497
	.quad	0x4021a87e38eb0319              # double 8.8290880000000005
	.quad	0x4020a67839cd8128              # double 8.3251360000000005
	.quad	0x402393380cb6c7a8              # double 9.7875370000000003
	.quad	0x400a572c5197a249              # double 3.2925650000000002
	.quad	0x3ffa890e66cb1034              # double 1.658461
	.quad	0x4007c073de1e2de8              # double 2.9689709999999998
	.quad	0x4016ff43419e3001              # double 5.7492799999999997
	.quad	0x4022cd33b1077469              # double 9.4007850000000008
	.quad	0x3fecf3eccc469510              # double 0.90477600000000002
	.quad	0x401e9284dfce3151              # double 7.6430850000000001
	.quad	0x402267d113836a83              # double 9.2027669999999997
	.quad	0x40231c0379314446              # double 9.5547140000000006
	.quad	0x401a0cf56eac8605              # double 6.5126549999999996
	.quad	0x400e2eae9ee45c36              # double 3.7727940000000002
	.quad	0x4015f11a543f1c76              # double 5.4854520000000004
	.quad	0x40078f6d7625204b              # double 2.945033
	.quad	0x400039463cfb3312              # double 2.0279660000000002
	.quad	0x401947314ca925ff              # double 6.3195240000000004
	.quad	0x3ff348e15011904b              # double 1.2052929999999999
	.quad	0x40104afa7221858c              # double 4.0732210000000002
	.quad	0x400645aff2a172ac              # double 2.784027
	.quad	0x401139f87f023e9f              # double 4.3066120000000003
	.quad	0x401b1b738e6d15ad              # double 6.7768079999999999
	.quad	0x401c3c903ea704bc              # double 7.0591439999999999
	.quad	0x4018747735c182ed              # double 6.1137360000000003
	.quad	0x401b212a94ff0026              # double 6.7823890000000002
	.quad	0x401efb0a2ca9ac36              # double 7.7451559999999997
	.quad	0x3fe06e221c8a7a42              # double 0.51344400000000001
	.quad	0x401b78fd5cb790fb              # double 6.8681539999999996
	.quad	0x40025b8348f53c58              # double 2.2946840000000002
	.quad	0x400f60b673c4f3ba              # double 3.9222229999999998
	.quad	0x400b4a4f440af1cc              # double 3.4112840000000002
	.quad	0x40115f5903a7546d              # double 4.3431129999999998
	.quad	0x402014fb3311a544              # double 8.040979
	.quad	0x401f55a0be510907              # double 7.8336209999999999
	.quad	0x4017e38f7985271c              # double 5.9722270000000002
	.quad	0x4022a6ae3a3a8e71              # double 9.3255479999999995
	.quad	0x3fcc2d1f1cfbb949              # double 0.22012699999999999
	.quad	0x40075f0cbaf965b2              # double 2.921411
	.quad	0x3ff5bf562174c4ce              # double 1.359213
	.quad	0x402127c5260f5e42              # double 8.5776760000000003
	.quad	0x401cd75e6362a5e8              # double 7.2103210000000004
	.quad	0x3fede013660e51d2              # double 0.93360299999999996
	.quad	0x3fd1577963992c8c              # double 0.27096399999999998
	.quad	0x3ffa6e85b9e8c47a              # double 1.651983
	.quad	0x401ce53005814941              # double 7.2238160000000002
	.quad	0x4010bcf9a06a6e33              # double 4.1845460000000001
	.quad	0x4023b9906cca2db6              # double 9.8624299999999998
	.quad	0x400a386d2ed783e0              # double 3.277552
	.quad	0x400d66bf8769ec2d              # double 3.67517
	.quad	0x401699ced0b30b5b              # double 5.6502030000000003
	.quad	0x401324827b6fe2e7              # double 4.7856540000000001
	.quad	0x3fc2f5dbb9cf9a07              # double 0.14812800000000001
	.quad	0x4019ca176ddaceee              # double 6.4473549999999999
	.quad	0x401bac9e6687f456              # double 6.9185730000000003
	.quad	0x3ffd1a964e8b7e4e              # double 1.818991
	.quad	0x40047dddb1209edc              # double 2.561458
	.quad	0x3fff15bab21815a0              # double 1.9428049999999999
	.quad	0x401890431bde82d8              # double 6.1408810000000003
	.quad	0x401a3ed4a1ad6452              # double 6.5613580000000002
	.quad	0x400fcff08893b7d8              # double 3.9765329999999999
	.quad	0x3ff0780a9de8b3b3              # double 1.029307
	.quad	0x40207b150dae3e6c              # double 8.2403949999999994
	.quad	0x401118112ba16e7a              # double 4.2735029999999998
	.quad	0x4006680064a9cdc4              # double 2.8007819999999999
	.quad	0x40226b75ea67e847              # double 9.2098840000000006
	.quad	0x4003dd859c8c9321              # double 2.4831650000000001
	.quad	0x401f58db4890928a              # double 7.8367740000000001
	.quad	0x40162b035bd512ec              # double 5.5420049999999996
	.quad	0x401bc8b934699418              # double 6.9460189999999997
	.quad	0x3fd5292c49342678              # double 0.33063799999999999
	.quad	0x400b5b280f12c27a              # double 3.4195099999999998
	.quad	0x4016922291fb3fa7              # double 5.6427100000000001
	.quad	0x401c5fcd67fd3f5b              # double 7.0935569999999997
	.quad	0x401485fd47bedb73              # double 5.1308490000000004
	.quad	0x4018f90c0ad03d9b              # double 6.2432100000000004
	.quad	0x401bf4e4c942d491              # double 6.9891540000000001
	.quad	0x401c0d80e496edee              # double 7.0131870000000003
	.quad	0x402288f9f44d4456              # double 9.2675319999999992
	.quad	0x3ffd4342aa9f7b5b              # double 1.828921
	.quad	0x400778066c2acb86              # double 2.9336060000000002
	.quad	0x4017bc219eb6390d              # double 5.9337220000000004
	.quad	0x4011c2d87f88765c              # double 4.4402790000000003
	.quad	0x40216fc4e2f37fbf              # double 8.718299
	.quad	0x401815d95dd4c76d              # double 6.0213369999999999
	.quad	0x401d01116a8b8f15              # double 7.2510430000000001
	.quad	0x3f85a5332acfb763              # double 0.010569
	.quad	0x401f0e9c4545846f              # double 7.7642680000000003
	.quad	0x400c7a8155d5f56a              # double 3.5598169999999998
	.quad	0x401aef1455219a84              # double 6.7334759999999996
	.quad	0x401cd4052d666a98              # double 7.2070509999999999
	.quad	0x4008be60c38f3669              # double 3.0929579999999999
	.quad	0x402255028a1dfb94              # double 9.1660350000000008
	.quad	0x401fea57646ae3a4              # double 7.9788490000000003
	.quad	0x400608a9bcfd4bf1              # double 2.7542300000000002
	.quad	0x3ffd9141a6937d20              # double 1.847963
	.quad	0x401cfdfaca361998              # double 7.2480270000000004
	.quad	0x4004f2428d434a02              # double 2.6182910000000001
	.quad	0x3ff21b4784230fd0              # double 1.1316600000000001
	.quad	0x402180644523f67f              # double 8.7507649999999995
	.quad	0x401c216b54e2b064              # double 7.0326360000000001
	.quad	0x40149c03bc4d22c9              # double 5.1523580000000004
	.quad	0x40236adc2b0ea183              # double 9.7087109999999992
	.quad	0x400730c2c5e2cdc0              # double 2.898809
	.quad	0x4012e467381d7dbf              # double 4.7230499999999997
	.quad	0x401195193708aac9              # double 4.3956039999999996
	.quad	0x4013378feef5ec81              # double 4.8042600000000002
	.quad	0x40061bed30f062d4              # double 2.763636
	.quad	0x40147ee9dd7ecbb8              # double 5.123939
	.quad	0x3ff6a16e7a311e86              # double 1.414412
	.quad	0x401a00cf5b1c8649              # double 6.5007910000000004
	.quad	0x401ebff7164c729f              # double 7.6874659999999996
	.quad	0x400367d1351159c5              # double 2.4256920000000002
	.quad	0x3ff9d306a2b17050              # double 1.61402
	.quad	0x402082d46f587d70              # double 8.2555270000000007
	.quad	0x400cab89d6adf71f              # double 3.5837590000000001
	.quad	0x4018e623076c050c              # double 6.2247430000000001
	.quad	0x3fd07c3504c48adf              # double 0.257581
	.quad	0x40171cb35f3d7d39              # double 5.7780279999999999
	.quad	0x40086520d130df9c              # double 3.0493790000000001
	.quad	0x3fdcc4c165907d91              # double 0.44950899999999999
	.quad	0x400ae522ea0fd3b3              # double 3.3618830000000002
	.quad	0x40080bffcdab191e              # double 3.0058590000000001
	.quad	0x402158c5eb313be2              # double 8.6733849999999997
	.quad	0x400d5aeddce7cd03              # double 3.6693989999999999
	.quad	0x401042a5a469d734              # double 4.0650849999999998
	.quad	0x401ba5f84cad57bc              # double 6.9120799999999996
	.quad	0x401bc1094a2b9d3d              # double 6.9385120000000002
	.quad	0x3ff521d53cddd6e0              # double 1.3207599999999999
	.quad	0x4022520168b5cbff              # double 9.1601669999999995
	.quad	0x4003f7ef5a964e8b              # double 2.4960619999999998
	.quad	0x400ed574f722e1ac              # double 3.8542269999999998
	.quad	0x3fde2e6ea8544780              # double 0.471584
	.quad	0x401a773c925785f9              # double 6.6164420000000002
	.quad	0x401d0f8b9baa1512              # double 7.2651810000000001
	.quad	0x4023722ca9ac3654              # double 9.7229969999999994
	.quad	0x3ffb2f9b994e1a3f              # double 1.6991229999999999
	.quad	0x401c8dbd2fa0d77b              # double 7.1384169999999996
	.quad	0x4019e04102ff8ec1              # double 6.468998
	.quad	0x4021f8999dcb5782              # double 8.9855470000000004
	.quad	0x3ff28b827fa1a0cf              # double 1.15906
	.quad	0x401f489e34330d74              # double 7.8209160000000004
	.quad	0x401421fd5885d313              # double 5.0331929999999998
	.quad	0x400b03e74afd5454              # double 3.376906
	.quad	0x4020c799c38b04ab              # double 8.3898449999999993
	.quad	0x3ffaf5dfeb8d8234              # double 1.685028
	.quad	0x3fce00c9539b8887              # double 0.234399
	.quad	0x40199a398201cd60              # double 6.4006100000000004
	.quad	0x4021db83f0bae89f              # double 8.9287410000000005
	.quad	0x4013eb51bd61f5be              # double 4.9798039999999997
	.quad	0x40090d938151a438              # double 3.1316290000000002
	.quad	0x4022c5031055b899              # double 9.3847889999999996
	.quad	0x400c4d86ec17ebaf              # double 3.537855
	.quad	0x4018497aaac1094a              # double 6.0717569999999998
	.quad	0x4023a0c197e56473              # double 9.8139769999999995
	.quad	0x400bf83e8576cce6              # double 3.496213
	.quad	0x4016404816f0068e              # double 5.5627750000000002
	.quad	0x400263c21187e7c0              # double 2.2987099999999998
	.quad	0x400c039c51dabe27              # double 3.501763
	.quad	0x4022f15182a9930c              # double 9.4713250000000002
	.quad	0x3fde601bc98a222d              # double 0.47461599999999998
	.quad	0x40099ac79702e664              # double 3.2005759999999999
	.quad	0x401dc5479d4d8341              # double 7.4426560000000004
	.quad	0x401f2112ba16e7a3              # double 7.7822979999999999
	.quad	0x402298aa433508f6              # double 9.2981739999999995
	.quad	0x3ff1ae4e26d4801f              # double 1.1050549999999999
	.quad	0x401c8c4d65e46067              # double 7.1370139999999997
	.quad	0x40147bd87b56b873              # double 5.1209429999999996
	.quad	0x401b9e0f3cb3e575              # double 6.9043549999999998
	.quad	0x3fd5e22e5de15ca7              # double 0.34193000000000001
	.quad	0x400e7b341e14bdfd              # double 3.8101579999999999
	.quad	0x402207cb4f1e4b45              # double 9.0152230000000007
	.quad	0x401e149ecb31c21a              # double 7.5201370000000001
	.quad	0x40156e1719f7f8cb              # double 5.3575100000000004
	.quad	0x4021e7d06bbdbe3c              # double 8.9527619999999998
	.quad	0x3ff36fbb0e5e6794              # double 1.2147779999999999
	.quad	0x400fd2314013ec46              # double 3.977633
	.quad	0x4017f0008637bd06              # double 5.9843770000000003
	.quad	0x3ffd912231832fcb              # double 1.847933
	.quad	0x4020ddad31fcd24e              # double 8.4329619999999998
	.quad	0x3ff1bfaa044ae85c              # double 1.1092930000000001
	.quad	0x4017ec8605681ecd              # double 5.9809799999999997
	.quad	0x401db20c8cd63cb8              # double 7.4238759999999999
	.quad	0x3febec1e364bec68              # double 0.87257300000000004
	.quad	0x4012d8c21e1d2179              # double 4.711678
	.quad	0x402181539b888723              # double 8.7525910000000007
	.quad	0x4018075e2046c765              # double 6.0071950000000003
	.quad	0x4011ae8c0485a0be              # double 4.4204559999999997
	.quad	0x3ffe2d9ad85dfa87              # double 1.886134
	.quad	0x40211390214ad363              # double 8.5382090000000002
	.quad	0x402232fa5093964a              # double 9.0995659999999994
	.quad	0x402002569b17481b              # double 8.0045669999999998
	.quad	0x3ffc968f8e7ddca5              # double 1.7867580000000001
	.quad	0x40100abcd78c4370              # double 4.0104860000000002
	.quad	0x3ff64d759ee88df3              # double 1.3939109999999999
	.quad	0x3ff9c446b69db65f              # double 1.610419
	.quad	0x401541e8a2ec28b3              # double 5.3143640000000003
	.quad	0x3ff3e6e5471715c6              # double 1.2438709999999999
	.quad	0x4013d940bbb1f256              # double 4.962161
	.quad	0x40200e74f2f123c4              # double 8.0282359999999997
	.quad	0x3ff96fa5093964a6              # double 1.5897570000000001
	.quad	0x3fe3d5e6bc621b7e              # double 0.619861
	.quad	0x40233d4f5903a754              # double 9.6197459999999992
	.quad	0x402111003eea209b              # double 8.5332050000000006
	.quad	0x4022f5173fb7a5f4              # double 9.4786929999999998
	.quad	0x401548151a437825              # double 5.3203930000000001
	.quad	0x40215f394b7b2895              # double 8.6859839999999995
	.quad	0x3feeb721d53cddd7              # double 0.95985500000000001
	.quad	0x3ff6377af640639d              # double 1.3885449999999999
	.quad	0x3fde6c61522a6f3f              # double 0.47536499999999998
	.quad	0x4022ed2bb23571d2              # double 9.4632240000000003
	.quad	0x4014453fc0096feb              # double 5.0676259999999997
	.quad	0x401c6eba6aca7935              # double 7.1081329999999996
	.quad	0x401c8a1fd1569f49              # double 7.134887
	.quad	0x4014fd0c3d25247d              # double 5.2471170000000003
	.quad	0x40010cdf266ba494              # double 2.1312850000000001
	.quad	0x401a6b06c43f5f91              # double 6.6045179999999997
	.quad	0x4016a4b662fdfc1a              # double 5.6608520000000002
	.quad	0x4020788a47ecfe9b              # double 8.2354299999999991
	.quad	0x401a0cb4289118c2              # double 6.5124060000000004
	.quad	0x40167875d56f32be              # double 5.6176370000000002
	.quad	0x400f89ca9ef5232d              # double 3.9422809999999999
	.quad	0x4005a7ee0b0af5fd              # double 2.7069969999999999
	.quad	0x4014dd759ee88df3              # double 5.2162689999999996
	.quad	0x3ff98348f53c579f              # double 1.594552
	.quad	0x4019ad75e2046c76              # double 6.4193949999999997
	.quad	0x3faca5bd944aa540              # double 0.055952000000000002
	.quad	0x4021c9103c8e25c8              # double 8.8927019999999999
	.quad	0x3fbd63dc486ad2dd              # double 0.114805
	.quad	0x40202a6e75ff609e              # double 8.0828740000000003
	.quad	0x401c2dcad14a0a0f              # double 7.0447189999999997
	.quad	0x40179c65c70435f0              # double 5.9027320000000003
	.quad	0x40034e7685985ad5              # double 2.4133119999999999
	.quad	0x400c2e2328f9f44d              # double 3.5225279999999999
	.quad	0x402044de19fc2a88              # double 8.1345069999999993
	.quad	0x3ff115821294573a              # double 1.0677509999999999
	.quad	0x3ff501e4712e4085              # double 1.312962
	.quad	0x3fe9257eaa2a0a96              # double 0.78582700000000005
	.quad	0x4023607075b3e143              # double 9.6883579999999991
	.quad	0x4006a0b912dba4d7              # double 2.828478
	.quad	0x40181d5f99c38b05              # double 6.0286850000000003
	.quad	0x4019e0cb6c7a7c9e              # double 6.4695260000000001
	.quad	0x3fffe7a63736cdf2              # double 1.9940549999999999
	.quad	0x4020630318b9346a              # double 8.1933830000000007
	.quad	0x40133352eb5f5f0b              # double 4.8001209999999999
	.quad	0x4013848a58b3f63c              # double 4.8794339999999998
	.quad	0x3fe34712e40852b5              # double 0.60242600000000002
	.quad	0x401c3c23fab10ba6              # double 7.0587309999999999
	.quad	0x3fda014f8b588e37              # double 0.40633000000000002
	.quad	0x4017f5b6c3760bf6              # double 5.9899550000000001
	.quad	0x4020ab6ef8055fbb              # double 8.3348309999999994
	.quad	0x402383779e9d0e99              # double 9.7567719999999997
	.quad	0x4006786ec17ebaf1              # double 2.808805
	.quad	0x3ff12b66b6177ea2              # double 1.073096
	.quad	0x40159c779a6b50b1              # double 5.4028
	.quad	0x401d0bfad2999568              # double 7.2616990000000001
	.quad	0x3ffb42b302f72b45              # double 1.703784
	.quad	0x40110d1f1cfbb949              # double 4.2628139999999997
	.quad	0x3ff25e2478854cdb              # double 1.1479839999999999
	.quad	0x3fddd80e496ededb              # double 0.466312
	.quad	0x401ea53543aeab7a              # double 7.6613360000000004
	.quad	0x3ff9b443d46b26c0              # double 1.6065100000000001
	.quad	0x4006c672756861e9              # double 2.8468979999999999
	.quad	0x401443d4f15e7c8d              # double 5.0662419999999999
	.quad	0x40134fd1569f4906              # double 4.827947
	.quad	0x401d3105186db50f              # double 7.2978709999999998
	.quad	0x3fc9e8dda48b6523              # double 0.20241899999999999
	.quad	0x40213a0d77b7c782              # double 8.6133839999999999
	.quad	0x401a9d24180d3cff              # double 6.6534579999999997
	.quad	0x401f9c9e236c15d3              # double 7.9029470000000001
	.quad	0x401861e81cb46bad              # double 6.095612
	.quad	0x401ad15e7c8d1959              # double 6.7044620000000004
	.quad	0x40053f2239e6ab9b              # double 2.6558269999999999
	.quad	0x401aacf13cee9dd8              # double 6.6688890000000001
	.quad	0x401f41ef73c0c1fd              # double 7.8143900000000003
	.quad	0x3fed3a6aca793576              # double 0.913381
	.quad	0x400e12af9a8cdea0              # double 3.7591239999999999
	.quad	0x4013fdcc20d5629e              # double 4.9978490000000004
	.quad	0x401c339192641b33              # double 7.0503600000000004
	.quad	0x40235483cafb3b75              # double 9.6650679999999997
	.quad	0x400e60ef1348b220              # double 3.7973309999999998
	.quad	0x40235d072085b185              # double 9.6816949999999994
	.quad	0x3fdf474538ef34d7              # double 0.48872500000000002
	.quad	0x4023a4edd4845133              # double 9.822127
	.quad	0x40104a60913a4f87              # double 4.0726339999999999
	.quad	0x3fe3949e8815e397              # double 0.61189199999999999
	.quad	0x3ffda085b18548aa              # double 1.8516900000000001
	.quad	0x40092e3c536d655e              # double 3.1475759999999999
	.quad	0x4017e41ede1198af              # double 5.9727740000000002
	.quad	0x3fc9a786c226809d              # double 0.20042499999999999
	.quad	0x401d92e40852b4d9              # double 7.3934480000000002
	.quad	0x4015fb97785729b3              # double 5.4956950000000004
	.quad	0x401d2db65ecc3e32              # double 7.2946410000000004
	.quad	0x3fe6f38a3b57c4e3              # double 0.71722900000000001
	.quad	0x4022c38194c01605              # double 9.3818479999999997
	.quad	0x402076e978d4fdf4              # double 8.2322500000000005
	.quad	0x40131f56a7ac81d4              # double 4.7806040000000003
	.quad	0x40236009f623076c              # double 9.6875759999999999
	.quad	0x4020ae33acd5b680              # double 8.3402379999999994
	.quad	0x401c74c09c3ce209              # double 7.1140160000000003
	.quad	0x3fe63cad9ad85dfb              # double 0.69490700000000005
	.quad	0x3ff04f52b90a7829              # double 1.019366
	.quad	0x401c61e0828c36db              # double 7.0955830000000004
	.quad	0x3fd9d8a979e16d6e              # double 0.40384900000000001
	.quad	0x40112751ce28ed5f              # double 4.2883979999999999
	.quad	0x3ff173d188f42fe8              # double 1.090776
	.quad	0x401e2e6ab9b23dd5              # double 7.5453289999999997
	.quad	0x4022c3af965b20b8              # double 9.3821989999999999
	.quad	0x3fdb8c36da87a073              # double 0.43043300000000001
	.quad	0x3fbae5cd4ed2cbea              # double 0.105069
	.quad	0x400dda5f41aef6f9              # double 3.731627
	.quad	0x3ff1c94e5d5b24ea              # double 1.1116470000000001
	.quad	0x4002067839cd8128              # double 2.2531590000000001
	.quad	0x4022f621101b0037              # double 9.4807210000000008
	.quad	0x4016b0639d5e4a38              # double 5.6722549999999998
	.quad	0x3fc6bac710cb295f              # double 0.17757500000000001
	.quad	0x40239818611fd588              # double 9.7970609999999993
	.quad	0x400f9f19d66adb40              # double 3.9526859999999999
	.quad	0x40046637bd05af6c              # double 2.5499109999999998
	.quad	0x4021c9af7d30ad47              # double 8.8939170000000001
	.quad	0x400b984901d19158              # double 3.4493580000000001
	.quad	0x401991af3a14cec4              # double 6.3922699999999999
	.quad	0x3ff14327674d1633              # double 1.0788949999999999
	.quad	0x4019b0fa9c12f09e              # double 6.4228310000000004
	.quad	0x3fe42ffb04ee7c4a              # double 0.630857
	.quad	0x3ffd68fd199bb279              # double 1.8381320000000001
	.quad	0x40200a8fe260b2c8              # double 8.0206289999999996
	.quad	0x3fe1e4e26d4801f7              # double 0.55918999999999996
	.quad	0x4001f7a56de3326a              # double 2.2459210000000001
	.quad	0x4011605d0fa58f71              # double 4.3441049999999999
	.quad	0x4023bdb39e279dd4              # double 9.8705110000000004
	.quad	0x401ffd12cadddf44              # double 7.9971420000000002
	.quad	0x40238d02cd39da16              # double 9.7754119999999993
	.quad	0x401945953586ca8a              # double 6.317952
	.quad	0x3ff0f5d9a0f0a5f0              # double 1.060022
	.quad	0x3fe943aeab7995ee              # double 0.78951199999999999
	.quad	0x40122c219eb6390d              # double 4.5430970000000004
	.quad	0x4022db6b8f9b1316              # double 9.4285549999999994
	.quad	0x401f448d3ae685db              # double 7.8169449999999995
	.quad	0x401a07df19d66adb              # double 6.5076869999999998
	.quad	0x4023651efb6dca08              # double 9.697502
	.quad	0x400754091c087443              # double 2.9160330000000001
	.quad	0x4022e0afe60c38f3              # double 9.4388419999999992
	.quad	0x40169a9c12f09d8c              # double 5.6509859999999996
	.quad	0x40000151a437824d              # double 2.0006439999999999
	.quad	0x400f31deefe4ffc9              # double 3.8993509999999998
	.quad	0x40119ceee0f3cb3e              # double 4.4032549999999997
	.quad	0x40227e0f1b25f634              # double 9.2462090000000003
	.quad	0x4012388f861a60d4              # double 4.5552349999999997
	.quad	0x402375ffc5479d4e              # double 9.7304670000000009
	.quad	0x4015884fd2a62aa2              # double 5.3831170000000004
	.quad	0x400f3e8e60807358              # double 3.905545
	.quad	0x3fcbdf00abf76a2f              # double 0.21774299999999999
	.quad	0x401c545b291b823d              # double 7.0823790000000004
	.quad	0x401348090b417ca2              # double 4.8203469999999999
	.quad	0x401b3d82773e24ff              # double 6.8100680000000002
	.quad	0x40208a3f034b0e1b              # double 8.2700119999999995
	.quad	0x400b9aaa3ad18d26              # double 3.45052
	.quad	0x3fff418611fd5886              # double 1.953497
	.quad	0x401c2156e264e486              # double 7.0325579999999999
	.quad	0x3fca13a92a305532              # double 0.20372499999999999
	.quad	0x3ffc0fb97bb73083              # double 1.7538389999999999
	.quad	0x3ff203d03968d75a              # double 1.125931
	.quad	0x4022f765ba6efc37              # double 9.4831979999999997
	.quad	0x4020dc8cb4aec8d6              # double 8.4307610000000004
	.quad	0x400bc7de5082cf53              # double 3.4725920000000001
	.quad	0x40090766c6de7642              # double 3.1286139999999998
	.quad	0x4020c4d338f79852              # double 8.3844239999999992
	.quad	0x401af8305d95dd4c              # double 6.7423719999999996
	.quad	0x3fd2109070fbeb9e              # double 0.28226099999999998
	.quad	0x4012ac8de2ac3223              # double 4.6685100000000004
	.quad	0x4017b64628027d89              # double 5.9280020000000002
	.quad	0x400aaa8650e77920              # double 3.3332639999999998
	.quad	0x4009eb9a9da597d5              # double 3.2400410000000002
	.quad	0x401379b13165d399              # double 4.8688399999999996
	.quad	0x401dd769a91105e2              # double 7.4603640000000002
	.quad	0x4000ae379b77c02b              # double 2.085067
	.quad	0x3fef0982cb20fb22              # double 0.96991099999999997
	.quad	0x40236b2dd377e1b9              # double 9.7093340000000001
	.quad	0x402324460ed80a18              # double 9.5708470000000005
	.quad	0x4006f74e65bea0ba              # double 2.8707549999999999
	.quad	0x401103c89f40a287              # double 4.2536949999999996
	.quad	0x401f8f9acffa7eb7              # double 7.8902390000000002
	.quad	0x40074db1e9f27781              # double 2.9129369999999999
	.quad	0x4020df1f14983d79              # double 8.4357839999999999
	.quad	0x4019f903ea704bc2              # double 6.4931789999999996
	.quad	0x400abf8d2e514c23              # double 3.343531
	.quad	0x3ff33b42cc2d6a9c              # double 1.2019679999999999
	.quad	0x4020f5d72367e415              # double 8.4801570000000002
	.quad	0x402325e7c8d19589              # double 9.5740339999999992
	.quad	0x4016724a276b7ed4              # double 5.6116109999999999
	.quad	0x400983d9a95421c0              # double 3.1893799999999999
	.quad	0x400d4797891e2153              # double 3.6599569999999999
	.quad	0x400b55afaf859429              # double 3.416839
	.quad	0x4020a9c1b54195cd              # double 8.3315560000000009
	.quad	0x4016077143393ab4              # double 5.5072679999999998
	.quad	0x4021383b1d0c8041              # double 8.609826
	.quad	0x400630ff10ecb74e              # double 2.7739240000000001
	.quad	0x3fe1a5b530ced4e5              # double 0.55147800000000002
	.quad	0x4023a7dae81882ae              # double 9.8278420000000004
	.quad	0x40218b6dca07f66f              # double 8.7723220000000008
	.quad	0x400fddb3bfb58d15              # double 3.9832529999999999
	.quad	0x400eca16a4873366              # double 3.8486760000000002
	.quad	0x40036ebd4cfd08d5              # double 2.4290720000000001
	.quad	0x4012797353b4b2fb              # double 4.6186040000000004
	.quad	0x401aa19c5a3e39f7              # double 6.6578229999999996
	.quad	0x40158072d1aeb3dd              # double 5.3754379999999999
	.quad	0x401961550ca1cef2              # double 6.3450509999999998
	.quad	0x3ff931c219eb6391              # double 1.574648
	.quad	0x40202e7a95c853c1              # double 8.0907789999999995
	.quad	0x40052a5c5f7c675a              # double 2.6456840000000001
	.quad	0x401a63fb3743632c              # double 6.5976379999999999
	.quad	0x3fa01040bfe3b03e              # double 0.031373999999999999
	.quad	0x4022cf7ad4b2745c              # double 9.405234
	.quad	0x40227b0ee49f5169              # double 9.2403479999999991
	.quad	0x40162311a543f1c7              # double 5.5342469999999997
	.quad	0x3fcaf6512a94ff00              # double 0.210642
	.quad	0x400e0d1394317acc              # double 3.7563849999999999
	.quad	0x4020f69ab29e4d5e              # double 8.4816490000000009
	.quad	0x401ff649906cca2e              # double 7.9905150000000003
	.quad	0x4023dfb56b873797              # double 9.9369309999999995
	.quad	0x4007ea65492ff4ba              # double 2.9894509999999999
	.quad	0x3fdaab191dde3758              # double 0.41669299999999998
	.quad	0x4020b8c7e28240b8              # double 8.3609000000000009
	.quad	0x4016c6a6a012599f              # double 5.6939950000000001
	.quad	0x401b251761459536              # double 6.7862220000000004
	.quad	0x400c128f190d1740              # double 3.5090620000000001
	.quad	0x40239bfe7e1fc090              # double 9.8046760000000006
	.quad	0x402312908a265f0f              # double 9.5362589999999993
	.quad	0x40144c4c9c90c4df              # double 5.0745110000000002
	.quad	0x4020a0be51090710              # double 8.3139520000000005
	.quad	0x400949973d9ec700              # double 3.160933
	.quad	0x4019a030c23fab11              # double 6.4064360000000002
	.quad	0x40125c215b9a5a8a              # double 4.5899710000000002
	.quad	0x4010fd29563a9f38              # double 4.2472279999999998
	.quad	0x401f31455219a848              # double 7.7981160000000002
	.quad	0x401d199aa60913a5              # double 7.275004
	.quad	0x40052b6ae7d566cf              # double 2.6461999999999999
	.quad	0x40177fadf2ecf206              # double 5.8746869999999998
	.quad	0x4022d772b4528284              # double 9.4207970000000003
	.quad	0x40186fd21ff2e48f              # double 6.1092000000000004
	.quad	0x401766113404ea4b              # double 5.8496750000000004
	.quad	0x3ffc0ee6b8305d96              # double 1.753638
	.quad	0x3fd225a682b62846              # double 0.28354800000000002
	.quad	0x4021810c0ad03d9b              # double 8.7520450000000007
	.quad	0x4005126d04e618ce              # double 2.6339969999999999
	.quad	0x400fee503fb37436              # double 3.9913639999999999
	.quad	0x4013aa276b7ed41b              # double 4.9161659999999996
	.quad	0x40150719b4dcebff              # double 5.2569340000000002
	.quad	0x400258ac9f2fdb90              # double 2.2932980000000001
	.quad	0x4005d885d31337eb              # double 2.7307239999999999
	.quad	0x3ff6b8a2a90cd424              # double 1.420077
	.quad	0x402044070329802c              # double 8.1328659999999999
	.quad	0x400c3145d851654d              # double 3.5240589999999998
	.quad	0x401649ef5232d2bb              # double 5.5722019999999999
	.quad	0x40181aa715831f04              # double 6.0260280000000002
	.quad	0x4018e4c3c18b502b              # double 6.2234030000000002
	.quad	0x400605b7cfe58601              # double 2.7527919999999999
	.quad	0x401b0fb69984a0e4              # double 6.7653449999999999
	.quad	0x401cfa6266fd651b              # double 7.244516
	.quad	0x401609ca9ef5232d              # double 5.5095619999999998
	.quad	0x4002c9fd7a13c255              # double 2.3486280000000002
	.quad	0x4011045d41fa7653              # double 4.2542619999999998
	.quad	0x4016301b866e43aa              # double 5.5469799999999996
	.quad	0x4022420685553ef7              # double 9.1289560000000005
	.quad	0x400ae5d851654d62              # double 3.3622290000000001
	.quad	0x401f94e50c5eb314              # double 7.8954050000000002
	.quad	0x400141693c03bc4d              # double 2.1569389999999999
	.quad	0x40037b03e20ccff2              # double 2.435066
	.quad	0x3fd19ffd60e94ee4              # double 0.27539000000000002
	.quad	0x3ff7d36e71cda2b6              # double 1.4891190000000001
	.quad	0x3fee1463cfb3311a              # double 0.93998899999999996
	.quad	0x401b721dda059a74              # double 6.8614420000000003
	.quad	0x4020fecc814d727a              # double 8.4976540000000007
	.quad	0x401771697f1f9ad0              # double 5.860754
	.quad	0x3ff8479f666234a8              # double 1.5174859999999999
	.quad	0x40006ccb3a2595bc              # double 2.0531220000000001
	.quad	0x400131feeb2d0a24              # double 2.1494119999999999
	.quad	0x4023725870da5daf              # double 9.7233309999999999
	.quad	0x401d61aef6f8f041              # double 7.3453939999999998
	.quad	0x402140e560418937              # double 8.6267499999999995
	.quad	0x4017508a697aeddd              # double 5.8286530000000001
	.quad	0x3ff1c6ca89fc6da4              # double 1.1110329999999999
	.quad	0x400b42856605ee57              # double 3.4074810000000002
	.quad	0x4016ee221c8a7a42              # double 5.7325520000000001
	.quad	0x4001019a847b2464              # double 2.1257830000000002
	.quad	0x4021a630a91537a0              # double 8.8245900000000006
	.quad	0x401501290257c915              # double 5.2511330000000003
	.quad	0x4011431b584b1ab1              # double 4.3155340000000004
	.quad	0x401612424a276b7f              # double 5.5178310000000002
	.quad	0x4023cbe63e8dda49              # double 9.8982410000000005
	.quad	0x401cfd7be9856a38              # double 7.2475430000000003
	.quad	0x401d97a7008a697b              # double 7.3980980000000001
	.quad	0x401d89eecbfb15b5              # double 7.3846999999999996
	.quad	0x402031c68ec52a41              # double 8.0972179999999998
	.quad	0x3ff8f444e0daa0cb              # double 1.559636
	.quad	0x400e8ba51a005c46              # double 3.8181859999999999
	.quad	0x4008dbe22e5de15d              # double 3.1073650000000002
	.quad	0x40192e8d5410f94d              # double 6.2954610000000004
	.quad	0x3ffee52ac753e708              # double 1.930949
	.quad	0x401519b1b79d909f              # double 5.2750919999999999
	.quad	0x401b5d51f81a5871              # double 6.8411330000000001
	.quad	0x401b0afb7e90ff97              # double 6.7607249999999999
	.quad	0x400bf143393ab431              # double 3.492804
	.quad	0x4020bb08bb906467              # double 8.3653010000000005
	.quad	0x402374df69878317              # double 9.7282670000000006
	.quad	0x401405100a393ee6              # double 5.0049440000000001
	.quad	0x40040bf22c01e68a              # double 2.505833
	.quad	0x3fe09f83be6601bd              # double 0.51947200000000004
	.quad	0x40162704bc27631b              # double 5.5381039999999997
	.quad	0x3fef23c21187e7c0              # double 0.97311499999999995
	.quad	0x40168a6c1a048e04              # double 5.6351779999999998
	.quad	0x3fc8db8348f53c58              # double 0.19419900000000001
	.quad	0x40236ad1f1cfbb95              # double 9.7086330000000007
	.quad	0x4008adb8348f53c5              # double 3.0848239999999998
	.quad	0x401bb913a4f8726d              # double 6.930739
	.quad	0x401449cfdd228566              # double 5.072082
	.quad	0x4021f07a072d1aeb              # double 8.9696809999999996
	.quad	0x4013e43675ddd2af              # double 4.9728640000000004
	.quad	0x4011d01b43526528              # double 4.4532290000000003
	.quad	0x400192da98676a72              # double 2.1967059999999998
	.quad	0x40106d2d01c0ca60              # double 4.106617
	.quad	0x400f0aefb2aae297              # double 3.8803399999999999
	.quad	0x40129c2bd7f51efb              # double 4.6525109999999996
	.quad	0x401f2be6601bc98a              # double 7.7928709999999999
	.quad	0x400639db22d0e560              # double 2.7782499999999999
	.quad	0x3ff3ba67a52ac754              # double 1.233009
	.quad	0x4019f2a94ff0025c              # double 6.486974
	.quad	0x401b75058dde7a74              # double 6.8642789999999998
	.quad	0x4016b3083558a761              # double 5.674836
	.quad	0x400d9e56473471f8              # double 3.7023130000000002
	.quad	0x40202fd2a62aa194              # double 8.0934039999999995
	.quad	0x4008c1bb8c32a8ca              # double 3.0945960000000001
	.quad	0x3ffe9cc63f141206              # double 1.9132750000000001
	.quad	0x402169ca3a4b5569              # double 8.7066210000000002
	.quad	0x3fe779a49c2c1b11              # double 0.733599
	.quad	0x400fb09528f190d1              # double 3.9612219999999998
	.quad	0x3ff7e05dd8f92afa              # double 1.4922770000000001
	.quad	0x3fe1ddf43c7d5ed0              # double 0.55834399999999995
	.quad	0x401d76733ebbfd72              # double 7.3656740000000003
	.quad	0x3fef30d306a2b170              # double 0.97470999999999997
	.quad	0x3fd74388ebcc6c55              # double 0.36349700000000001
	.quad	0x40059413986338b4              # double 2.6973029999999998
	.quad	0x4023a22ab25b317f              # double 9.816732
	.quad	0x3ff975568e820e63              # double 1.5911470000000001
	.quad	0x4020f4c4cdfaca36              # double 8.4780639999999998
	.quad	0x40235a57214f0521              # double 9.6764460000000003
	.quad	0x4013bd9d7774aba4              # double 4.9351710000000004
	.quad	0x4012aeaa6d267408              # double 4.6705719999999999
	.quad	0x40211e4c2f837b4a              # double 8.5591749999999998
	.quad	0x401cd906466b1e5c              # double 7.211938
	.quad	0x40213ece13f4a98b              # double 8.6226660000000006
	.quad	0x3fffbd9fd36f7e3d              # double 1.983795
	.quad	0x3ff46bfec13b9f12              # double 1.2763659999999999
	.quad	0x401e54545846e8f3              # double 7.5823530000000003
	.quad	0x3fe1b7d1fe64f54d              # double 0.55368899999999999
	.quad	0x3ffd10bc7b45f17c              # double 1.816586
	.quad	0x401ef0342aa9f7b6              # double 7.7345740000000003
	.quad	0x401a4c1b10fd7e46              # double 6.5743220000000004
	.quad	0x400be0abf76a2f49              # double 3.4847030000000001
	.quad	0x4007f95a294141ea              # double 2.9967540000000001
	.quad	0x3ff6ee297396d091              # double 1.4331449999999999
	.quad	0x3ff6b1f14983d790              # double 1.4184429999999999
	.quad	0x4017d2d77318fc50              # double 5.9558999999999997
	.quad	0x401aacfc3f811f4f              # double 6.6689309999999997
	.quad	0x4021c438d1d8a548              # double 8.8832459999999998
	.quad	0x401e3ed3d859c8c9              # double 7.5613549999999998
	.quad	0x400cbda37ef5a965              # double 3.592597
	.quad	0x40019be3c105186e              # double 2.2011180000000001
	.quad	0x3fd2af5ba2be058a              # double 0.29195300000000002
	.quad	0x40098be0ded288ce              # double 3.1932999999999998
	.quad	0x40207a7ae9ab29e5              # double 8.2392190000000003
	.quad	0x3ff68f13cee9dd7f              # double 1.409931
	.quad	0x3fe45117b5286b59              # double 0.63489899999999999
	.quad	0x400be9cb252ce033              # double 3.4891570000000001
	.quad	0x3fd2e94ee392e1ef              # double 0.29548999999999997
	.quad	0x40114f8c21e1d218              # double 4.3276830000000004
	.quad	0x40098ec4a4095f24              # double 3.1947109999999999
	.quad	0x40040c0379314446              # double 2.5058660000000001
	.quad	0x4014741700cd8559              # double 5.1133689999999996
	.quad	0x3ff08f2495e17e35              # double 1.0349470000000001
	.quad	0x401e044e0daa0cae              # double 7.5042039999999997
	.quad	0x401abe1e71044f1a              # double 6.6856629999999999
	.quad	0x4018d78183f91e64              # double 6.2104549999999996
	.quad	0x4021f21be2b4959e              # double 8.9728689999999993
	.quad	0x4019ba14488c60cc              # double 6.431718
	.quad	0x4003aa5efe931876              # double 2.458189
	.quad	0x3fec4bc8c0ce91c9              # double 0.88425100000000001
	.quad	0x401d47c4199fe436              # double 7.3200839999999996
	.quad	0x4020b65796bfca86              # double 8.3561370000000004
	.quad	0x4009a9e4d5d80e49              # double 3.2079559999999998
	.quad	0x40029e81cb46bacf              # double 2.3273959999999998
	.quad	0x3fff725d4a5df224              # double 1.9654210000000001
	.quad	0x40156188f42fe825              # double 5.3452489999999999
	.quad	0x3fc852157689ca19              # double 0.19000500000000001
	.quad	0x3ff03af859429175              # double 1.014397
	.quad	0x401e276c050bd87b              # double 7.5384979999999996
	.quad	0x4022bde7ea5f84cb              # double 9.3709100000000002
	.quad	0x4019c8919ef954eb              # double 6.4458679999999999
	.quad	0x40203ad83c6c97d9              # double 8.1149310000000003
	.quad	0x401c3d1dcd7060bb              # double 7.0596839999999998
	.quad	0x3fdfc450268900c5              # double 0.49635699999999999
	.quad	0x40218b3bb83cf2d0              # double 8.7719400000000007
	.quad	0x401a4460ed80a17b              # double 6.5667759999999999
	.quad	0x3ffd4c51116a8b8f              # double 1.831132
	.quad	0x401b984ba0e84274              # double 6.8987259999999999
	.quad	0x4010c0b3d4ae429e              # double 4.188186
	.quad	0x4003897a67a52ac7              # double 2.4421279999999999
	.quad	0x3ffe431162281345              # double 1.8913740000000001
	.quad	0x3ff42b5a20ddc619              # double 1.2605839999999999
	.quad	0x4021cae44b6e935c              # double 8.8962730000000007
	.quad	0x3feccaec8d5c7475              # double 0.89977099999999999
	.quad	0x40136aa68f4b61fe              # double 4.8541509999999999
	.quad	0x4023237521144cbe              # double 9.5692529999999998
	.quad	0x4012cc18b502abac              # double 4.6993130000000001
	.quad	0x4022e89aed56b010              # double 9.454307
	.quad	0x400508198f1d3ed5              # double 2.6289549999999999
	.quad	0x401d49b52007dd44              # double 7.3219799999999999
	.quad	0x4021e0f81e8a2ec3              # double 8.9393930000000008
	.quad	0x40205dcc857f3062              # double 8.1832010000000004
	.quad	0x4010a606317268d3              # double 4.1621329999999999
	.quad	0x4020d103211cb03a              # double 8.4082270000000001
	.quad	0x4019bf9df548ecd9              # double 6.4371260000000001
	.quad	0x40212b545c78a6db              # double 8.5846280000000004
	.quad	0x4023d97d8cf398e9              # double 9.9247859999999992
	.quad	0x40149b1f687b139d              # double 5.1514870000000004
	.quad	0x4017ba53b8e4b87c              # double 5.9319600000000001
	.quad	0x401efdcc20d5629e              # double 7.7478490000000004
	.quad	0x3ff8e00f345069a5              # double 1.554702
	.quad	0x3fe94d20afa2f05a              # double 0.79066499999999995
	.quad	0x401deb5f5f0b2852              # double 7.4798559999999998
	.quad	0x4021eef75d9a0f0a              # double 8.9667309999999993
	.quad	0x4023adf30e7ff584              # double 9.8397450000000006
	.quad	0x3fff23b46fdeb52d              # double 1.9462170000000001
	.quad	0x400e82e4d1a65061              # double 3.8139129999999999
	.quad	0x3fdd9029ae4f3344              # double 0.461924
	.quad	0x40109b738e6d15ad              # double 4.1518079999999999
	.quad	0x3fd18e9707182236              # double 0.27432800000000002
	.quad	0x40129681669ced0b              # double 4.6469779999999998
	.quad	0x401381ef73c0c1fd              # double 4.8768900000000004
	.quad	0x40134d31337eb28e              # double 4.8253830000000004
	.quad	0x401ab6da4484944f              # double 6.6785670000000001
	.quad	0x400672ff4ba51a00              # double 2.8061509999999998
	.quad	0x401215019f3c70ca              # double 4.5205140000000004
	.quad	0x40055ad31fcd24e1              # double 2.6693479999999998
	.quad	0x40126052934acaff              # double 4.5940649999999996
	.quad	0x3ff683382e44b6e9              # double 1.407036
	.quad	0x40165f8fcd67fd3f              # double 5.5933219999999997
	.quad	0x400d4c1d29dc725c              # double 3.6621649999999999
	.quad	0x401c8413122b7baf              # double 7.1289790000000002
	.quad	0x3ff073abc947064f              # double 1.02824
	.quad	0x4023d9d7774aba38              # double 9.9254719999999991
	.quad	0x401853e63e8dda49              # double 6.0819330000000003
	.quad	0x4014c0d9945b6c37              # double 5.1883299999999997
	.quad	0x4007ebc5154866a1              # double 2.9901219999999999
	.quad	0x3feb893faf42784b              # double 0.86050400000000005
	.quad	0x40131b0b39192642              # double 4.7764100000000003
	.quad	0x401b30385c67dfe3              # double 6.7970899999999999
	.quad	0x4018c23e18698351              # double 6.1896899999999997
	.quad	0x3fecc3ed959a3098              # double 0.89891699999999997
	.quad	0x40148288ce703afb              # double 5.1274749999999996
	.quad	0x401343edd8b60f1b              # double 4.8163369999999999
	.quad	0x401b7ee2003ab863              # double 6.8739090000000003
	.quad	0x401ef9e9d0e991ff              # double 7.7440559999999996
	.quad	0x3fe55cf67b1c0011              # double 0.66759800000000002
	.quad	0x400bcf7caa7589f0              # double 3.4763120000000001
	.quad	0x40218ee653868fd2              # double 8.7791010000000007
	.quad	0x400f3cd898b2e9cd              # double 3.9047100000000001
	.quad	0x401e362b27cbf6e4              # double 7.552899
	.quad	0x3ffcd64b662fdfc2              # double 1.8023180000000001
	.quad	0x401ae368ad688377              # double 6.7220789999999999
	.quad	0x4003f3198288051d              # double 2.4937010000000002
	.quad	0x401c505d0fa58f71              # double 7.0784799999999999
	.quad	0x401bacb252ce032e              # double 6.9186490000000003
	.quad	0x4003f993d5347a5b              # double 2.496864
	.quad	0x3ffd4cd74927913f              # double 1.8312600000000001
	.quad	0x40116954a7f8012e              # double 4.352862
	.quad	0x3ffcc1b328b6d86f              # double 1.7972900000000001
	.quad	0x3fef4c814d72799a              # double 0.97808899999999999
	.quad	0x3fc70318b9346994              # double 0.179782
	.quad	0x4022e0e25c810a57              # double 9.4392270000000007
	.quad	0x3ff94909289dadfb              # double 1.5803309999999999
	.quad	0x401c668f08461f9f              # double 7.100155
	.quad	0x4021367903211cb0              # double 8.6063919999999996
	.quad	0x3ff735ff609dcf89              # double 1.4506829999999999
	.quad	0x3ff7dcb252ce032e              # double 1.4913810000000001
	.quad	0x401458344c37e6f7              # double 5.0861369999999999
	.quad	0x4014435f3d7d3911              # double 5.0657930000000002
	.quad	0x4006bd8adab9f55a              # double 2.8425500000000001
	.quad	0x3ff3a3af31b152f4              # double 1.2274620000000001
	.quad	0x4019bdce7cd03537              # double 6.4353579999999999
	.quad	0x3fc6fadf2ecf2064              # double 0.179531
	.quad	0x3ff90f861a60d456              # double 1.56629
	.quad	0x3ffe6275ab7dc7ac              # double 1.899038
	.quad	0x402046111276fb09              # double 8.1368489999999998
	.quad	0x401ae2ef4e0114d3              # double 6.721616
	.quad	0x4014365dbfceb789              # double 5.0530920000000004
	.quad	0x400a696d4c33b539              # double 3.3014779999999999
	.quad	0x40146e17e34b9453              # double 5.107513
	.quad	0x402383bc2b94d940              # double 9.7572949999999991
	.quad	0x400f368dfbd6a594              # double 3.9016380000000002
	.quad	0x40095cf893faf428              # double 3.1703960000000002
	.quad	0x402285d590c0ad04              # double 9.2613950000000002
	.quad	0x4018bd7342edbb5a              # double 6.1850100000000001
	.quad	0x401bfa57214f0521              # double 6.9944730000000002
	.quad	0x40226288051c9f73              # double 9.1924440000000001
	.quad	0x3fd5be4cd7492791              # double 0.33973999999999999
	.quad	0x3fd0946c332f0175              # double 0.25905899999999998
	.quad	0x4010f702e6644d87              # double 4.2412219999999996
	.quad	0x400ea0895d0b73d2              # double 3.8283870000000002
	.quad	0x4023999806f26289              # double 9.7999880000000008
	.quad	0x40050031ceaf251c              # double 2.625095
	.quad	0x400edb24638c9753              # double 3.8570030000000002
	.quad	0x401ae0b029281776              # double 6.7194219999999998
	.quad	0x3fbbb6fe2e6ea854              # double 0.108261
	.quad	0x402362deca2552a0              # double 9.6931060000000002
	.quad	0x3fd60014f8b588e3              # double 0.34375499999999998
	.quad	0x40171d9ad85dfa87              # double 5.7789109999999999
	.quad	0x4013e24bba12b5e5              # double 4.9709919999999999
	.quad	0x40211776c4827b70              # double 8.5458280000000002
	.quad	0x3fdaa3161a1db878              # double 0.41620400000000002
	.quad	0x401cbc148344c37e              # double 7.1836719999999996
	.quad	0x4000143a647fdc59              # double 2.0098769999999999
	.quad	0x4016422d5171e29b              # double 5.5646259999999996
	.quad	0x4016ebaade657b85              # double 5.7301440000000001
	.quad	0x4020df38e6d15ad1              # double 8.435981
	.quad	0x4020d799806f2629              # double 8.4210930000000008
	.quad	0x401c1775b8130165              # double 7.0229100000000004
	.quad	0x401a2c16df3f9618              # double 6.543056
	.quad	0x401ac99a62ed3522              # double 6.6968779999999999
	.quad	0x4002709e12a51e32              # double 2.304989
	.quad	0x4007498eda22f6a5              # double 2.910917
	.quad	0x401b89ae0c176577              # double 6.8844529999999997
	.quad	0x40236cab81f969e4              # double 9.7122460000000003
	.quad	0x4020f8ad46f587d7              # double 8.485697
	.quad	0x4014a25785f8d2e5              # double 5.1585369999999999
	.quad	0x400ede3da2f8bdec              # double 3.8585159999999998
	.quad	0x3febec332f01754b              # double 0.872583
	.quad	0x3ff39959a30984e4              # double 1.224939
	.quad	0x40195bd72bcb5fe5              # double 6.3396879999999998
	.quad	0x400b603cd141a693              # double 3.4219909999999998
	.quad	0x3fd70c34c1a8ac5c              # double 0.36012
	.quad	0x3ff6d8e864020818              # double 1.427956
	.quad	0x400138897e996313              # double 2.152606
	.quad	0x3fff36512a94ff00              # double 1.950761
	.quad	0x3ff005814940bbb2              # double 1.001344
	.quad	0x401c2000c9539b89              # double 7.0312530000000004
	.quad	0x401f10b28522ea10              # double 7.7663060000000002
	.quad	0x40235b3a0407cc7d              # double 9.6781769999999998
	.quad	0x3ff6fe8ee6b8305e              # double 1.4371480000000001
	.quad	0x400429c90c4dec1c              # double 2.5204029999999999
	.quad	0x401545fa22706d50              # double 5.3183369999999996
	.quad	0x40046cd6c2efd439              # double 2.5531440000000001
	.quad	0x4010b540cc78e9f7              # double 4.1770050000000003
	.quad	0x4022c191dde37586              # double 9.3780660000000005
	.quad	0x401b1c53b0813cac              # double 6.7776630000000004
	.quad	0x40111f68be2f7b18              # double 4.2806730000000002
	.quad	0x4007771758e21965              # double 2.9331499999999999
	.quad	0x4002a3f78bbd3804              # double 2.3300619999999999
	.quad	0x3f9a79357603925c              # double 0.025853000000000001
	.quad	0x401bdaa087ca643d              # double 6.9635030000000002
	.quad	0x401c193f6c2699c8              # double 7.0246560000000002
	.quad	0x4021de12e83a109d              # double 8.933738
	.quad	0x4016a5f394b7b289              # double 5.6620619999999997
	.quad	0x4002630caa326e11              # double 2.2983639999999999
	.quad	0x401d1aee631f8a09              # double 7.2763
	.quad	0x40138f416bdb1a6d              # double 4.8898979999999996
	.quad	0x4022b6b228dc981c              # double 9.3568280000000001
	.quad	0x401d21d3aa369fcf              # double 7.2830339999999998
	.quad	0x4021ddb5525cc426              # double 8.9330239999999996
	.quad	0x4016cb1af3a14cec              # double 5.6983449999999998
	.quad	0x4006e9dcf893faf4              # double 2.8641909999999999
	.quad	0x401b7c026cc1ca3a              # double 6.8711029999999997
	.quad	0x40094d55a3a08399              # double 3.1627610000000002
	.quad	0x3ff9cb6d86ec17ec              # double 1.6121650000000001
	.quad	0x40164797cc39ffd6              # double 5.5699149999999999
	.quad	0x40221e8ec52a411c              # double 9.0596829999999997
	.quad	0x40072edc3bd59924              # double 2.8978809999999999
	.quad	0x40074d20296b3355              # double 2.9126590000000001
	.quad	0x4010b6b3bb83cf2d              # double 4.17842
	.quad	0x4019d876188b1141              # double 6.4613880000000004
	.quad	0x401e46ea4228997c              # double 7.5692529999999998
	.quad	0x401d738151a43782              # double 7.3627979999999997
	.quad	0x402246c3760bf5d8              # double 9.1382100000000008
	.quad	0x4012144284dfce31              # double 4.5197849999999997
	.quad	0x3ff28e51d25aab47              # double 1.1597459999999999
	.quad	0x401e8777d0f1f57b              # double 7.6322929999999997
	.quad	0x401cae84f09528f2              # double 7.1704290000000004
	.quad	0x4018cca89fc6da45              # double 6.1998620000000004
	.quad	0x4003fc4c9c90c4df              # double 2.4981930000000001
	.quad	0x401374c016052503              # double 4.8640140000000001
	.quad	0x400fce8858ff7597              # double 3.9758460000000002
	.quad	0x400affab10ba6267              # double 3.374838
	.quad	0x401db9949e8815e4              # double 7.4312310000000004
	.quad	0x402258433d6c7219              # double 9.1723879999999998
	.quad	0x4000658255b035bd              # double 2.0495649999999999
	.quad	0x40191d6a161e4f76              # double 6.2787249999999997
	.quad	0x3ff0284be40420f7              # double 1.009838
	.quad	0x40159d5f56a7ac82              # double 5.4036840000000002
	.quad	0x401f9016ce789e77              # double 7.8907119999999997
	.quad	0x4015c0c38f366949              # double 5.4382460000000004
	.quad	0x3ff4b2b020c49ba6              # double 1.293625
	.quad	0x401353736cdf266c              # double 4.8314950000000003
	.quad	0x3ffb38a19c9d5a18              # double 1.7013259999999999
	.quad	0x401a5772d5e071c5              # double 6.5853989999999998
	.quad	0x4002c237cdcca70d              # double 2.3448329999999999
	.quad	0x3fea97a89331a08c              # double 0.831013
	.quad	0x4015341205bc01a3              # double 5.3008499999999996
	.quad	0x401847531db445ed              # double 6.0696529999999997
	.quad	0x4023b107746887a9              # double 9.8457600000000002
	.quad	0x3fed8e6afcce1c58              # double 0.92363499999999998
	.quad	0x4015a7b395c42203              # double 5.4137709999999997
	.quad	0x4008ae8d972cd7cf              # double 3.0852309999999998
	.quad	0x3ff4b66b6177ea1c              # double 1.2945359999999999
	.quad	0x40006a0a0f4d7add              # double 2.051777
	.quad	0x4012eda76d97b310              # double 4.7320840000000004
	.quad	0x401b00285ec3dab6              # double 6.7501540000000002
	.quad	0x3fd4d9dba908a266              # double 0.325797
	.quad	0x3fbed42c3c9eecc0              # double 0.120425
	.quad	0x401be8aa433508f6              # double 6.9772119999999997
	.quad	0x4006f4bad7d7c2ca              # double 2.869497
	.quad	0x40169ff43419e300              # double 5.6562049999999999
	.quad	0x401d5e80389f83be              # double 7.3422859999999996
	.quad	0x3ffb415f45e0b4e1              # double 1.70346
	.quad	0x4001c39ffd60e94f              # double 2.22052
	.quad	0x40109a133c1ce6c1              # double 4.1504640000000004
	.quad	0x3fc4414e7ee9142b              # double 0.15824299999999999
	.quad	0x401dfa8f3a9b0681              # double 7.4946869999999998
	.quad	0x3fe938bcdfefbf40              # double 0.78817599999999999
	.quad	0x401806cdaf4adbc6              # double 6.0066439999999997
	.quad	0x4021d71de69ad42c              # double 8.9201499999999995
	.quad	0x401675e84f09528f              # double 5.6151439999999999
	.quad	0x40225a48f96e1587              # double 9.1763379999999994
	.quad	0x3ff993543aeab799              # double 1.5984689999999999
	.quad	0x4012474927913e81              # double 4.5696149999999998
	.quad	0x4016fc3eb7cbb3c8              # double 5.7463329999999999
	.quad	0x400ab1ada76d97b3              # double 3.336757
	.quad	0x40119b98c7e28241              # double 4.4019500000000003
	.quad	0x40109b71758e2196              # double 4.1517999999999997
	.quad	0x402061f05ea24cc7              # double 8.1912870000000009
	.quad	0x401dee631f8a0903              # double 7.4828000000000001
	.quad	0x3ff7e846a5d6bebe              # double 1.494208
	.quad	0x4022f343fa2ad3e9              # double 9.4751279999999997
	.quad	0x3ffdcba40d90e23b              # double 1.862217
	.quad	0x400e51f255f3519c              # double 3.7900130000000001
	.quad	0x400e68c26138fffc              # double 3.8011520000000001
	.quad	0x400d605dd8f92afa              # double 3.6720540000000002
	.quad	0x401e38f32378ab0d              # double 7.5556150000000004
	.quad	0x40057aec4a4095f2              # double 2.6850209999999999
	.quad	0x40201d7a56de3327              # double 8.0575740000000007
	.quad	0x4016ed9fd36f7e3d              # double 5.7320549999999999
	.quad	0x400e39d5e4a38327              # double 3.7782399999999998
	.quad	0x4014f4395810624e              # double 5.2385000000000002
	.quad	0x401f34299d883ba3              # double 7.8009399999999997
	.quad	0x401aa43c7d5ed070              # double 6.6603870000000001
	.quad	0x4016ff2778140dd4              # double 5.749174
	.quad	0x3fe204fd2a62aa19              # double 0.56310899999999997
	.quad	0x40217e1ed5ae1cde              # double 8.7463289999999994
	.quad	0x4010ae21101b0037              # double 4.1700480000000004
	.quad	0x4018db2edfe75bc4              # double 6.2140459999999997
	.quad	0x400df4d2f5dbb9d0              # double 3.7445430000000002
	.quad	0x4015414f0520d131              # double 5.3137780000000001
	.quad	0x4019fad70e6f2e8c              # double 6.494961
	.quad	0x401cb2324c836651              # double 7.1740199999999996
	.quad	0x3ff35477bbf93ff2              # double 1.2081219999999999
	.quad	0x4019f70bd017dae8              # double 6.4912559999999999
	.quad	0x401cbf69ca9ef523              # double 7.1869269999999998
	.quad	0x401b368e820e6299              # double 6.8032779999999997
	.quad	0x401fc4a38327674d              # double 7.9420299999999999
	.quad	0x400de5197a24894c              # double 3.7368649999999999
	.quad	0x401fa904f6dfc5ce              # double 7.9150580000000001
	.quad	0x4022ab8d3f1843c4              # double 9.3350620000000006
	.quad	0x40078bd1244a6224              # double 2.9432700000000001
	.quad	0x401ef039abf33871              # double 7.7345949999999996
	.quad	0x4011b45132f87ad1              # double 4.4260910000000004
	.quad	0x401a5417ca2120e2              # double 6.582122
	.quad	0x40218f76a2f48c2e              # double 8.7802019999999992
	.quad	0x3fc80d349be8ff32              # double 0.18790299999999999
	.quad	0x3ff5f86d2ed783e0              # double 1.373151
	.quad	0x4021b14a4d2b2bfe              # double 8.8462700000000005
	.quad	0x4009f7ff151e7536              # double 3.246092
	.quad	0x401df600b0292817              # double 7.4902369999999995
	.quad	0x40180289dadfb507              # double 6.0024790000000001
	.quad	0x401004c942d490e6              # double 4.0046739999999996
	.quad	0x4003845aa2e3c537              # double 2.4396260000000001
	.quad	0x4018ca98aa8650e7              # double 6.1978479999999996
	.quad	0x3ff550ecb74ddf87              # double 1.332257
	.quad	0x4012aa03c4b09e99              # double 4.6660300000000001
	.quad	0x3fefc05d52c16df4              # double 0.992232
	.quad	0x400800dd3fe1975f              # double 3.0004219999999999
	.quad	0x4009991e646f1562              # double 3.1997650000000002
	.quad	0x401c6e3a3a8e7147              # double 7.1076439999999996
	.quad	0x4010ce3ffef39086              # double 4.201416
	.quad	0x401006dd26b723ee              # double 4.0067029999999999
	.quad	0x4021cc4199fe4367              # double 8.8989379999999993
	.quad	0x40228b2e9ccb7d41              # double 9.2718399999999992
	.quad	0x4012e6455eaee200              # double 4.7248739999999998
	.quad	0x401b2ee9142b302f              # double 6.7958109999999996
	.quad	0x4002c05ab3aabcd8              # double 2.3439230000000002
	.quad	0x401b0547e06961c3              # double 6.7551569999999996
	.quad	0x4016c73647baa9b5              # double 5.6945430000000004
	.quad	0x401d087e38eb0319              # double 7.2582940000000002
	.quad	0x400f2516db0dd830              # double 3.8931100000000001
	.quad	0x3fe140af1cb89d6b              # double 0.53914600000000001
	.quad	0x3ffe15de58e64b23              # double 1.880339
	.quad	0x401b1a21a719b4dd              # double 6.7755190000000001
	.quad	0x401e38e15011904b              # double 7.5555469999999997
	.quad	0x3ff5a1101b003687              # double 1.3518220000000001
	.quad	0x4012fb97fe8ee6b8              # double 4.7456969999999998
	.quad	0x4018db1d4f9c1f86              # double 6.2139790000000001
	.quad	0x40234c4b09e98dce              # double 9.6490100000000005
	.quad	0x4017ecdd50a88f00              # double 5.9813130000000001
	.quad	0x40150feef5ec80c7              # double 5.2655599999999998
	.quad	0x3ff0f572de43ed96              # double 1.0599240000000001
	.quad	0x402218a8f3a9b068              # double 9.0481639999999999
	.quad	0x4004aaf46aa087ca              # double 2.5834739999999998
	.quad	0x402031cd1c7de508              # double 8.0972679999999997
	.quad	0x400ca3161a1db878              # double 3.5796320000000001
	.quad	0x4021b4d0bb6ed677              # double 8.8531549999999992
	.quad	0x4022c61198aeb80f              # double 9.3868530000000003
	.quad	0x3fe409f83be6601c              # double 0.62621700000000002
	.quad	0x400254af4f0d844d              # double 2.29135
	.quad	0x4022bd72ffd1dcd7              # double 9.3700179999999999
	.quad	0x400f9950331e3a7e              # double 3.9498600000000001
	.quad	0x400d461cffeb074a              # double 3.6592349999999998
	.quad	0x4021004c271fff7a              # double 8.5005810000000004
	.quad	0x4020b1847f562175              # double 8.3467140000000004
	.quad	0x4017b0ac3a860dcc              # double 5.9225320000000004
	.quad	0x401794c8366516db              # double 5.895295
	.quad	0x4012cd9be4cd7492              # double 4.7007899999999996
	.quad	0x3fff278d0cc35ce2              # double 1.9471560000000001
	.quad	0x40082b1b36bd2b6f              # double 3.021048
	.quad	0x4003ac282c6ef3d4              # double 2.4590610000000002
	.quad	0x3fd2a98aa8650e78              # double 0.29159800000000002
	.quad	0x40159bc2fc69728a              # double 5.4021109999999997
	.quad	0x4001ae28ed5f138c              # double 2.2100390000000001
	.quad	0x401a08b7e4de3b8a              # double 6.5085139999999999
	.quad	0x40197952d234eb9a              # double 6.3684799999999999
	.quad	0x4018bf9ebe9c8861              # double 6.1871289999999997
	.quad	0x401be93dd97f62b7              # double 6.9777750000000003
	.quad	0x4016af901083dbc2              # double 5.6714479999999998
	.quad	0x4006fac929aa1d75              # double 2.8724539999999998
	.quad	0x4018b65e4606748e              # double 6.1780939999999998
	.quad	0x40178680e0653006              # double 5.8813510000000004
	.quad	0x4013c5e4606748e4              # double 4.9432539999999996
	.quad	0x4018b72367e414e8              # double 6.1788460000000001
	.quad	0x401de3a14cec41dd              # double 7.4722949999999999
	.quad	0x3fe7bdba0a526959              # double 0.74190999999999996
	.quad	0x40046dddf43c7d5f              # double 2.5536460000000001
	.quad	0x4011f1287c200c0f              # double 4.485506
	.quad	0x401de5e529bae46d              # double 7.474507
	.quad	0x401709ce8d972cd8              # double 5.7595770000000002
	.quad	0x40198a07f66e86c6              # double 6.3847959999999997
	.quad	0x3fe2b08787485e3e              # double 0.58404900000000004
	.quad	0x40152084a515ce9e              # double 5.2817559999999997
	.quad	0x401381e3eaf6837f              # double 4.8768459999999996
	.quad	0x4012dbf444e0daa1              # double 4.7147990000000002
	.quad	0x40053f66e86c6584              # double 2.655958
	.quad	0x4021d1d57ff9b563              # double 8.9098319999999998
	.quad	0x40045e364bec679d              # double 2.5460020000000001
	.quad	0x40043a72a7bd48cb              # double 2.5285389999999999
	.quad	0x40171b328b6d86ec              # double 5.7765599999999999
	.quad	0x3ffecd7e02645e4e              # double 1.9251689999999999
	.quad	0x401fd185cee17a03              # double 7.954612
	.quad	0x40237c2c3c9eecc0              # double 9.7425250000000005
	.quad	0x3ffdd54a7f8012e0              # double 1.864573
	.quad	0x401b9ec7863beec4              # double 6.9050580000000004
	.quad	0x401a6fa333764f12              # double 6.6090210000000003
	.quad	0x400bf5c8d9f9053a              # double 3.495012
	.quad	0x402057dd44135547              # double 8.1716099999999994
	.quad	0x40201ac9f2fdb8fe              # double 8.0523220000000002
	.quad	0x400541eeed8904f7              # double 2.6571940000000001
	.quad	0x400a7e90795f676f              # double 3.3117990000000002
	.quad	0x3ffa76ae7d566cf4              # double 1.653975
	.quad	0x4023970b06c43f60              # double 9.7950060000000008
	.quad	0x4000204fb1183b60              # double 2.0157769999999999
	.quad	0x40057d5f56a7ac82              # double 2.6862170000000001
	.quad	0x4022b92d98bf7f06              # double 9.3616759999999992
	.quad	0x40234a72c94b380d              # double 9.6454070000000005
	.quad	0x40090325d4a5df22              # double 3.1265369999999999
	.quad	0x40006638c9752978              # double 2.0499130000000001
	.quad	0x3ffb2eba27ae9ab3              # double 1.6989080000000001
	.quad	0x401b743a2163fdd6              # double 6.8635029999999997
	.quad	0x40157e26916440f2              # double 5.3731939999999998
	.quad	0x40100e931876188b              # double 4.0142329999999999
	.quad	0x40170fab53d640ea              # double 5.7653020000000001
	.quad	0x3ffa430c23fab10c              # double 1.6413690000000001
	.quad	0x400c80cf1800a7c6              # double 3.5628950000000001
	.quad	0x3ff1baa044ae85ba              # double 1.108063
	.quad	0x401730c4588a04d1              # double 5.7976239999999999
	.quad	0x3ff40f9c1f85d745              # double 1.253811
	.quad	0x401a29d6f112fd33              # double 6.5408590000000002
	.quad	0x4015b0f0e90bc7b4              # double 5.4227939999999997
	.quad	0x3ffcc66d373affb0              # double 1.7984439999999999
	.quad	0x40019d651b0ccbc0              # double 2.2018529999999998
	.quad	0x3ff02b4528283d36              # double 1.010564
	.quad	0x40021bde82d7b635              # double 2.2636080000000001
	.quad	0x40134585be1a8262              # double 4.8178929999999998
	.quad	0x400e205143bf7271              # double 3.7657799999999999
	.quad	0x4014b6b97fe8ee6c              # double 5.1784420000000004
	.quad	0x400e1756c93a7115              # double 3.761396
	.quad	0x4010e028a1dfb939              # double 4.2189050000000003
	.quad	0x401e14b5568e820e              # double 7.5202229999999997
	.quad	0x401917c0f4517614              # double 6.2731969999999997
	.quad	0x3fe0a3e39f77292c              # double 0.52000599999999997
	.quad	0x4011d376d5497311              # double 4.4565080000000004
	.quad	0x401f6f240fa9c12f              # double 7.8585359999999999
	.quad	0x401ed498c3b0c459              # double 7.7076140000000004
	.quad	0x401608333fc86cec              # double 5.5080080000000002
	.quad	0x402041fc08fa7a85              # double 8.128876
	.quad	0x40030b9a176ddacf              # double 2.380665
	.quad	0x401e1215fcc1871e              # double 7.5176619999999996
	.quad	0x40205961c36976bc              # double 8.1745739999999997
	.quad	0x401f2f75536933a0              # double 7.7963459999999998
	.quad	0x4010bca686e7e62e              # double 4.1842290000000002
	.quad	0x40060301a79fec9a              # double 2.751468
	.quad	0x40161301a79fec9a              # double 5.518561
	.quad	0x4021adf0b28522ea              # double 8.8397269999999999
	.quad	0x3ff66e8af81626b3              # double 1.401988
	.quad	0x3fef577fae3608d1              # double 0.97943100000000005
	.quad	0x40060ccff21b3aef              # double 2.756256
	.quad	0x4013fe26916440f2              # double 4.9981939999999998
	.quad	0x401b6c69f8c21e1d              # double 6.8558729999999999
	.quad	0x40059d25247cb70b              # double 2.7017310000000001
	.quad	0x40092f416bdb1a6d              # double 3.1480739999999998
	.quad	0x40121ed634549b63              # double 4.5301140000000002
	.quad	0x4021eb167ec7863c              # double 8.9591560000000001
	.quad	0x4020aaab68cef673              # double 8.3333390000000005
	.quad	0x401bb9539b888723              # double 6.9309830000000003
	.quad	0x400a24ba94bbe447              # double 3.2679339999999999
	.quad	0x4015767dfe32a066              # double 5.3657149999999998
	.quad	0x401f3a897635e743              # double 7.8071650000000003
	.quad	0x401768240b780347              # double 5.8517000000000001
	.quad	0x3fe9b797460242d0              # double 0.80366099999999996
	.quad	0x401d27ea1c68ec53              # double 7.2889790000000003
	.quad	0x3fd91a8262456f76              # double 0.39224300000000001
	.quad	0x3ff127bc3c5bd0e1              # double 1.072201
	.quad	0x400919bfdf7e8039              # double 3.1375730000000002
	.quad	0x401af42070b8cfc0              # double 6.7384050000000002
	.quad	0x400a9574f722e1ac              # double 3.3229769999999998
	.quad	0x40230ae9899bf594              # double 9.5213129999999992
	.quad	0x3ff5103d9a95421c              # double 1.316465
	.quad	0x400a0f95d4e8fb01              # double 3.2576100000000001
	.quad	0x40226b0813cab820              # double 9.2090460000000007
	.quad	0x4012f3ca7503b81b              # double 4.7380769999999997
	.quad	0x4009512556d19ded              # double 3.164622
	.quad	0x402123677f6b1a2a              # double 8.5691489999999995
	.quad	0x4021d5e225fa658c              # double 8.9177409999999994
	.quad	0x40225267839cd812              # double 9.1609459999999991
	.quad	0x402153721d53cddd              # double 8.6629799999999992
	.quad	0x3ff9358298cc1440              # double 1.575564
	.quad	0x40080baa582dbe7f              # double 3.0056959999999999
	.quad	0x400d3cb1465e8922              # double 3.6546349999999999
	.quad	0x40154983947496ab              # double 5.3217910000000002
	.quad	0x400d60d0247021d1              # double 3.672272
	.quad	0x40153528ae74f2f1              # double 5.3019129999999999
	.quad	0x402178d0678c0054              # double 8.7359650000000002
	.quad	0x401c0b01c92ddbdb              # double 7.0107489999999997
	.quad	0x40083060bb2bba99              # double 3.023622
	.quad	0x401b500e27e0ef9a              # double 6.8281790000000004
	.quad	0x402189782d38476f              # double 8.7684949999999997
	.quad	0x401d0a0dbad3a605              # double 7.2598180000000001
	.quad	0x4021accbc05d52c1              # double 8.8374919999999992
	.quad	0x4022ba456f75d9a1              # double 9.3638110000000001
	.quad	0x4017977a7008a698              # double 5.8979280000000003
	.quad	0x401d32b4959e6256              # double 7.2995169999999998
	.quad	0x400b7927d45a5fc8              # double 3.434158
	.quad	0x401ff2b0ea18372e              # double 7.9870029999999996
	.quad	0x4011d51c193b3a69              # double 4.4581150000000003
	.quad	0x401eb03148776816              # double 7.6720629999999996
	.quad	0x4013e4666ec9e237              # double 4.9730470000000002
	.quad	0x3ffa523b3636f3b2              # double 1.645076
	.quad	0x4003cf6273929ed4              # double 2.4762620000000002
	.quad	0x4020eb5dedf1e083              # double 8.4597010000000008
	.quad	0x400d3a658c4bd33d              # double 3.6535139999999999
	.quad	0x401ca960b6f9fcb1              # double 7.1654080000000002
	.quad	0x3fee6787ce95faa9              # double 0.95013800000000004
	.quad	0x3ff757aeddce7cd0              # double 1.458907
	.quad	0x4022d841cc532a49              # double 9.4223769999999991
	.quad	0x401f3374ff865d7d              # double 7.8002510000000002
	.quad	0x40126faa8a82a561              # double 4.6090489999999997
	.quad	0x3fbfc64345cfede9              # double 0.12411899999999999
	.quad	0x401ab12018a43bb4              # double 6.672974
	.quad	0x4006bd7b2031ceaf              # double 2.8425199999999999
	.quad	0x401ffde19fc2a887              # double 7.9979310000000003
	.quad	0x3fe700218def416c              # double 0.71876600000000002
	.quad	0x4023b75b1c864884              # double 9.858117
	.quad	0x3fe3e20ab7132724              # double 0.62134299999999998
	.quad	0x4017fea0ba1f4b1f              # double 5.9986600000000001
	.quad	0x3fd46d7a56de3327              # double 0.31918200000000002
	.quad	0x40191a5d6bebe165              # double 6.275747
	.quad	0x3fd81b43526527a2              # double 0.376664
	.quad	0x401897f6f4be835e              # double 6.1484030000000001
	.quad	0x400eed57bc7f77af              # double 3.8658899999999998
	.quad	0x4008a66cb10342ab              # double 3.0812620000000002
	.quad	0x400178dbcec84f90              # double 2.1840130000000002
	.quad	0x3ffccda09cc319c6              # double 1.8002020000000001
	.quad	0x4014521d53cddd6e              # double 5.08019
	.quad	0x400a77d63022dd7b              # double 3.3085140000000002
	.quad	0x3fbc342aa9f7b5af              # double 0.11017100000000001
	.quad	0x3ffea46173b85e81              # double 1.9151320000000001
	.quad	0x3ffbb2cc70867ad9              # double 1.731152
	.quad	0x3feeb84db9c7368b              # double 0.95999800000000001
	.quad	0x3ff7b7329c347e8d              # double 1.482226
	.quad	0x40106af2d7f950b9              # double 4.1044419999999997
	.quad	0x3fe1d2e514c22ee4              # double 0.55699399999999999
	.quad	0x3fe03f077ccc0379              # double 0.50769399999999998
	.quad	0x40006d184c271fff              # double 2.0532689999999998
	.quad	0x4005738151a43782              # double 2.6813989999999999
	.quad	0x401d42a51e321a2e              # double 7.3150829999999996
	.quad	0x400a508dd1e53a82              # double 3.2893330000000001
	.quad	0x4020bbbb62413db8              # double 8.3666640000000001
	.quad	0x40144cda6e75ff61              # double 5.0750520000000003
	.quad	0x400b6809d495182b              # double 3.4258000000000002
	.quad	0x401896f5caf2d7f9              # double 6.1474219999999997
	.quad	0x3ff470a3d70a3d71              # double 1.2775000000000001
	.quad	0x40120130df9bdc6a              # double 4.501163
	.quad	0x3ffd9e215336deb9              # double 1.8511059999999999
	.quad	0x400cabac710cb296              # double 3.583825
	.quad	0x401df318fc504817              # double 7.4874
	.quad	0x4020e9c6d1e108c4              # double 8.456595
	.quad	0x4019a127f5e84f09              # double 6.4073789999999997
	.quad	0x3ff996a593a2df93              # double 1.5992789999999999
	.quad	0x402202ff4ba51a00              # double 9.0058539999999993
	.quad	0x4016f23b7952d235              # double 5.7365550000000001
	.quad	0x4014093d96638434              # double 5.0090240000000001
	.quad	0x3feb0fd5cb790fb6              # double 0.84568299999999996
	.quad	0x3ff19af7d30ad46f              # double 1.1003339999999999
	.quad	0x4017c01c0ca600b0              # double 5.9376069999999999
	.quad	0x40159c193b3a68b2              # double 5.4024400000000004
	.quad	0x40212c6c11a11234              # double 8.5867620000000002
	.quad	0x3ff2e6edaa92e621              # double 1.181379
	.quad	0x4020e9deacc92147              # double 8.4567770000000007
	.quad	0x401464e22a2c2374              # double 5.0985189999999996
	.quad	0x3feb40fcb4f1e4b4              # double 0.85168299999999996
	.quad	0x3ff4d3543aeab799              # double 1.3015939999999999
	.quad	0x3fef959e6256366d              # double 0.98701399999999994
	.quad	0x401ec2ec6bce8534              # double 7.6903550000000003
	.quad	0x402030f1d3ed527e              # double 8.0955949999999994
	.quad	0x401800f345069a4e              # double 6.000928
	.quad	0x401de8a6117720c9              # double 7.4771960000000002
	.quad	0x401eccd20afa2f06              # double 7.7000200000000003
	.quad	0x4021efbacb428912              # double 8.9682220000000008
	.quad	0x4020a576683c297c              # double 8.323169
	.quad	0x4007dc2dadb8348f              # double 2.9825089999999999
	.quad	0x40232defc7a39820              # double 9.5897199999999998
	.quad	0x40125dfa43fe5c92              # double 4.5917750000000002
	.quad	0x40205ad905c03361              # double 8.1774369999999994
	.quad	0x4019aef416bdb1a7              # double 6.4208530000000001
	.quad	0x3fd69246bf01322f              # double 0.35267799999999999
	.quad	0x4023fe1804d98394              # double 9.9962769999999991
	.quad	0x40217c5846e8f29d              # double 8.7428609999999995
	.quad	0x3fc2f0e90bc7b45f              # double 0.147977
	.quad	0x401127c914b167ec              # double 4.2888529999999996
	.quad	0x400c5225b749adc9              # double 3.540111
	.quad	0x3ff8b445ed4a1ad6              # double 1.5440119999999999
	.quad	0x3ff8dcdf69878317              # double 1.5539240000000001
	.quad	0x40208252ef911cf3              # double 8.2545389999999994
	.quad	0x40225de02ea960b7              # double 9.183351
	.quad	0x4023776ad70e6f2f              # double 9.7332370000000008
	.quad	0x40010dcf4623d0c0              # double 2.1317430000000002
	.quad	0x40027b3a68b19a41              # double 2.3101699999999998
	.quad	0x4012ca376922d949              # double 4.6974770000000001
	.quad	0x40194be9856a37ac              # double 6.3241329999999998
	.quad	0x4016e9bc77143394              # double 5.7282580000000003
	.quad	0x40139576cce5f740              # double 4.8959609999999998
	.quad	0x402017f23cc8de2b              # double 8.0467700000000004
	.quad	0x400ddfe1975f2cb6              # double 3.7343169999999999
	.quad	0x401105b20b8066c3              # double 4.2555620000000003
	.quad	0x401c354b05b7cfe6              # double 7.0520440000000004
	.quad	0x40161df00abf76a3              # double 5.529236
	.quad	0x400f35ae1cde5d18              # double 3.901211
	.quad	0x4008087229e90796              # double 3.004124
	.quad	0x402023502ababead              # double 8.0689709999999994
	.quad	0x401fe0752da98677              # double 7.9691970000000003
	.quad	0x4008ae64b2314014              # double 3.085153
	.quad	0x400b3f151e75360d              # double 3.405802
	.quad	0x3fd5c918e325d4a6              # double 0.34039900000000001
	.quad	0x402336add590c0ad              # double 9.6067949999999999
	.quad	0x401aa8ea39c51dac              # double 6.6649560000000001
	.quad	0x3fe39d1d4738a3b5              # double 0.61292899999999995
	.quad	0x40234dd5d3dc8b87              # double 9.6520220000000005
	.quad	0x401a51f2990f301f              # double 6.5800270000000003
	.quad	0x400c5e9856a37ac4              # double 3.546189
	.quad	0x4018370b06c43f60              # double 6.0537530000000004
	.quad	0x4016e471b4784231              # double 5.72309
	.quad	0x4008424bba12b5e5              # double 3.0323709999999999
	.quad	0x40227f80346dc5d6              # double 9.2490249999999996
	.quad	0x4011f2c061847f56              # double 4.4870619999999999
	.quad	0x4023178c868b9fdc              # double 9.5459940000000003
	.quad	0x400338fb43d89ce5              # double 2.4028230000000002
	.quad	0x401069131ec0b567              # double 4.1026119999999997
	.quad	0x3fc776922d948dc1              # double 0.183306
	.quad	0x401340b135979182              # double 4.8131760000000003
	.quad	0x40001afaf8594291              # double 2.0131739999999998
	.quad	0x401b896a6a01259a              # double 6.8841950000000001
	.quad	0x4022f584b1ab0857              # double 9.4795280000000001
	.quad	0x4012749731098d47              # double 4.6138579999999996
	.quad	0x40082266fd651b0d              # double 3.0167980000000001
	.quad	0x4006585271bcdbbe              # double 2.793126
	.quad	0x40128195464dc22b              # double 4.6265460000000003
	.quad	0x401f52517e77d524              # double 7.8303890000000003
	.quad	0x4023a740a2877ee5              # double 9.8266650000000002
	.quad	0x4023f4aa10e02214              # double 9.9778599999999997
	.quad	0x3ff3aa1c68ec52a4              # double 1.229031
	.quad	0x4017275968512232              # double 5.7884270000000004
	.quad	0x3fe845a3e39f7729              # double 0.75850099999999998
	.quad	0x3ff52c3fc43b2dd3              # double 1.3233029999999999
	.quad	0x401c8733ebbfd71b              # double 7.132034
	.quad	0x401656bc1eff9f88              # double 5.5847020000000001
	.quad	0x3fe8b4d48882f0e1              # double 0.77207400000000004
	.quad	0x4017356eac860568              # double 5.8021799999999999
	.quad	0x401e35fb2edfe75c              # double 7.5527160000000002
	.quad	0x3ffbc37824d4cb9f              # double 1.735222
	.quad	0x4013b5193708aac9              # double 4.9268539999999996
	.quad	0x3fe02bcb5fe542e5              # double 0.50534599999999996
	.quad	0x4018867dbb16c1e3              # double 6.1313389999999997
	.quad	0x400fc6f47b677f6b              # double 3.972146
	.quad	0x4013286876e1dead              # double 4.7894610000000002
	.quad	0x401677991bc55864              # double 5.6167949999999998
	.quad	0x401159b6f5caf2d8              # double 4.337612
	.quad	0x4016104af922962d              # double 5.515911
	.quad	0x401110e779207d4e              # double 4.266508
	.quad	0x4005c867ad8e4324              # double 2.7228539999999999
	.quad	0x3fc26583e8576cce              # double 0.14372299999999999
	.quad	0x401a03825e13b18e              # double 6.5034270000000003
	.quad	0x401c1bef8ceb356e              # double 7.0272810000000003
	.quad	0x4022a70e90bc7b46              # double 9.3262830000000001
	.quad	0x3fe15c853c148345              # double 0.54254400000000003
	.quad	0x401a35d9e40c8473              # double 6.5525890000000002
	.quad	0x4022bc3d46b26bf8              # double 9.3676549999999991
	.quad	0x3ff86933a0407cc8              # double 1.525684
	.quad	0x40177fb9bed30f06              # double 5.8747319999999998
	.quad	0x40218dc4007570c5              # double 8.7768859999999993
	.quad	0x400920d4dc65c704              # double 3.1410309999999999
	.quad	0x4022acdc22ab25b3              # double 9.3376169999999998
	.quad	0x40239740e5a35d68              # double 9.7954170000000004
	.quad	0x40213c5ae5ffa3ba              # double 8.6178810000000006
	.quad	0x40232beff1950332              # double 9.5858150000000002
	.quad	0x40124196d8f4f93c              # double 4.5640520000000002
	.quad	0x401a21ff2e48e8a7              # double 6.5331999999999999
	.quad	0x40011beb18116ebd              # double 2.1386319999999999
	.quad	0x3fee72a5a469d734              # double 0.95149499999999997
	.quad	0x3fe79d5e4a383276              # double 0.73795999999999995
	.quad	0x4021652a411c2a02              # double 8.6975879999999997
	.quad	0x401308fa376922d9              # double 4.7587669999999997
	.quad	0x401356cefed63455              # double 4.8347740000000003
	.quad	0x401d8af3a14cec42              # double 7.3856950000000001
	.quad	0x4021ef778dd616f8              # double 8.9677089999999993
	.quad	0x3ffb9753a3ec02f3              # double 1.724445
	.quad	0x4019189118c197e5              # double 6.2739909999999997
	.quad	0x4020faeea63b688c              # double 8.4901020000000002
	.quad	0x401d9aa1d755bccb              # double 7.401008
	.quad	0x40235efc58ab92c0              # double 9.6855189999999993
	.quad	0x3fe8f43e963dc487              # double 0.77981500000000004
	.quad	0x40201e61cffeb075              # double 8.0593400000000006
	.quad	0x40194cba732df506              # double 6.3249300000000002
	.quad	0x40190bb2788db057              # double 6.2614229999999997
	.quad	0x40146714fce746cc              # double 5.1006660000000004
	.quad	0x401a5c804102ff8f              # double 6.5903330000000002
	.quad	0x40187862b27cbf6e              # double 6.1175639999999998
	.quad	0x40214d668c261390              # double 8.651173
	.quad	0x3ff32b1f687b139d              # double 1.1980280000000001
	.quad	0x4020618f605ab3ab              # double 8.1905470000000005
	.quad	0x4021b3e0bd44998d              # double 8.851324
	.quad	0x4000ef3e468cac4b              # double 2.1168179999999999
	.quad	0x40209d859c8c9321              # double 8.3076600000000003
	.quad	0x40212cecc814d728              # double 8.5877440000000007
	.quad	0x4014d9cd3e0bd44a              # double 5.2126970000000004
	.quad	0x401d933b10774688              # double 7.3937799999999995
	.quad	0x3ff191c3ac929aa2              # double 1.098087
	.quad	0x401492d2fe3f35a0              # double 5.143383
	.quad	0x401ede1d2178f68c              # double 7.7169080000000001
	.quad	0x401b462cba732df5              # double 6.81853
	.quad	0x401bff4ba51a005c              # double 6.9993119999999998
	.quad	0x4020bc47a17f4129              # double 8.3677340000000004
	.quad	0x4014c40ee06d9381              # double 5.1914629999999997
	.quad	0x3ff8338a3b57c4e3              # double 1.512583
	.quad	0x4000a1c36976bc1f              # double 2.078986
	.quad	0x4020bb821af7d30b              # double 8.3662270000000003
	.quad	0x40069aeddce7cd03              # double 2.8256489999999999
	.quad	0x4019d6fef7c243dd              # double 6.4599570000000002
	.quad	0x401c00f733a8a3f9              # double 7.0009430000000004
	.quad	0x4013826634117f84              # double 4.8773429999999998
	.quad	0x402363ec679cc74c              # double 9.6951630000000008
	.quad	0x4012844806290eed              # double 4.629181
	.quad	0x4023d13f8db48909              # double 9.9086879999999997
	.quad	0x3fee90be9424e593              # double 0.95516900000000005
	.quad	0x401ff5fb2edfe75c              # double 7.9902160000000002
	.quad	0x4006ce0c17657753              # double 2.8506089999999999
	.quad	0x40148bc903ea704c              # double 5.1365090000000002
	.quad	0x4021b59af9ebe9c9              # double 8.8546980000000008
	.quad	0x40209fca85caafbc              # double 8.3120919999999998
	.quad	0x40049fa7eb6bf445              # double 2.5779570000000001
	.quad	0x401056f8f041461b              # double 4.0849339999999996
	.quad	0x3fc5caa7589efd87              # double 0.17024700000000001
	.quad	0x401dbe97d06bbdbe              # double 7.4361259999999998
	.quad	0x401d411276fb0920              # double 7.3135469999999998
	.quad	0x402321f59ccfaeff              # double 9.5663269999999993
	.quad	0x4020cd4c122749f1              # double 8.4009710000000002
	.quad	0x402108c8abd5dc40              # double 8.5171559999999999
	.quad	0x4004eeb80ecfa69c              # double 2.6165620000000001
	.quad	0x401438ca3e7d1351              # double 5.0554589999999999
	.quad	0x400f33c1ce6c093e              # double 3.9002720000000002
	.quad	0x402259dde37585be              # double 9.1755209999999998
	.quad	0x3ff39e29b6b2af14              # double 1.2261139999999999
	.quad	0x40163fd36f7e3d1d              # double 5.5623300000000002
	.quad	0x4023b661f18c9fb6              # double 9.8562159999999999
	.quad	0x3fcb6ffc115df655              # double 0.21435499999999999
	.quad	0x40194f4906034f40              # double 6.3274270000000001
	.quad	0x4023738f57f737da              # double 9.7257029999999993
	.quad	0x401f63aa369fcf3e              # double 7.8473290000000002
	.quad	0x40167a12b5e529bb              # double 5.6192120000000001
	.quad	0x402119e774eebf66              # double 8.5505940000000002
	.quad	0x4017b5347a5b0ff1              # double 5.9269579999999999
	.quad	0x4019625e13b18dac              # double 6.3460619999999999
	.quad	0x40093034b0e1b4bb              # double 3.1485379999999998
	.quad	0x3ff71d3ed527e521              # double 1.4446399999999999
	.quad	0x40190f0c34c1a8ac              # double 6.2646949999999997
	.quad	0x3fe7ea78af3e468d              # double 0.74737200000000004
	.quad	0x401f99f0e4da09cc              # double 7.9003329999999998
	.quad	0x400de3ad9f0a1be3              # double 3.7361710000000001
	.quad	0x40120644523f67f5              # double 4.5061200000000001
	.quad	0x4014fa365cb35f3d              # double 5.2443479999999996
	.quad	0x4013956366d7a56e              # double 4.8958870000000001
	.quad	0x402169f4906034f4              # double 8.706944
	.quad	0x4013f63779e9d0ea              # double 4.9904460000000004
	.quad	0x3fffccc6822ff089              # double 1.9874940000000001
	.quad	0x40001554fbdad752              # double 2.0104160000000002
	.quad	0x3ffbd5379fa97e13              # double 1.739555
	.quad	0x401ac9ddc1e7967d              # double 6.6971350000000003
	.quad	0x4017145176145953              # double 5.7698419999999997
	.quad	0x400e91b60ae9680e              # double 3.821148
	.quad	0x3ff616733ebbfd72              # double 1.3804810000000001
	.quad	0x400c18fd5cb790fb              # double 3.5122019999999998
	.quad	0x4014f6aa4b9884c7              # double 5.2408840000000003
	.quad	0x401ea9abb01c92de              # double 7.6656940000000002
	.quad	0x4020a1ca9ef5232d              # double 8.3159989999999997
	.quad	0x401e53300de4c511              # double 7.5812379999999999
	.quad	0x40023864cb5bb385              # double 2.277536
	.quad	0x40186c0d2c386d2f              # double 6.1055190000000001
	.quad	0x3ff23ec56d5cfaad              # double 1.140325
	.quad	0x401b79c5a3e39f77              # double 6.8689179999999999
	.quad	0x4023aa85015c2092              # double 9.8330459999999995
	.quad	0x3ff9aa9b499d0204              # double 1.604152
	.quad	0x401e45fd47bedb73              # double 7.5683490000000004
	.quad	0x40232443f5f91601              # double 9.570831
	.quad	0x4023fb70cdc8754f              # double 9.9910949999999996
	.quad	0x401e8b384fd2a62b              # double 7.6359570000000003
	.quad	0x402175130df9bdc7              # double 8.7286610000000007
	.quad	0x402014df266ba494              # double 8.0407650000000003
	.quad	0x400b8d551d68c693              # double 3.44401
	.quad	0x4006c617c1bda512              # double 2.8467250000000002
	.quad	0x3ff3be889c1b5419              # double 1.2340169999999999
	.quad	0x40238a3d4f15e7c9              # double 9.7699990000000003
	.quad	0x40046305532617c2              # double 2.5483500000000001
	.quad	0x3ff701248d7e0264              # double 1.4377789999999999
	.quad	0x4012afb1e18efbb1              # double 4.6715770000000001
	.quad	0x4012df7c243dccea              # double 4.7182469999999999
	.quad	0x4020118dac258d58              # double 8.0342839999999995
	.quad	0x402147f7be121ee6              # double 8.6405619999999992
	.quad	0x40204d5c31593e60              # double 8.1510940000000005
	.quad	0x400f7f3387160957              # double 3.9371100000000001
	.quad	0x4007c6412cf0f9d3              # double 2.9718040000000001
	.quad	0x4015896aad1d041d              # double 5.3841960000000002
	.quad	0x3ff72d80a17b0f6b              # double 1.448609
	.quad	0x401e848cb4aec8d6              # double 7.6294430000000002
	.quad	0x400b260913a4f872              # double 3.3935719999999998
	.quad	0x3ff65dd2ae8e1d65              # double 1.3979060000000001
	.quad	0x4017e93a2df9378f              # double 5.9777610000000001
	.quad	0x401d963dc486ad2e              # double 7.3967200000000002
	.quad	0x3ff44eb67c286f8b              # double 1.269217
	.quad	0x4010878b7a1c25d0              # double 4.1323679999999996
	.quad	0x3f9d530489d27c39              # double 0.028636999999999999
	.quad	0x4019d0f2becedd48              # double 6.4540509999999998
	.quad	0x402130d3ae685db7              # double 8.5953649999999993
	.quad	0x4006721144cbe1eb              # double 2.8056969999999999
	.quad	0x4018caf965b20b80              # double 6.1982169999999996
	.quad	0x401ad52ce032db1f              # double 6.7081790000000003
	.quad	0x40080e1ac57e23f2              # double 3.0068869999999999
	.quad	0x3fdd24c8366516db              # double 0.45537
	.quad	0x4022310c0ad03d9b              # double 9.0957950000000007
	.quad	0x3ffa34ca0c282c6f              # double 1.637888
	.quad	0x4023e79b77c02afe              # double 9.9523580000000003
	.quad	0x400207c393682731              # double 2.2537910000000001
	.quad	0x4005b2a6b0d95140              # double 2.7122320000000002
	.quad	0x3ff4b81e8a2ec28b              # double 1.294951
	.quad	0x3ffc4dd93c46d82c              # double 1.7690060000000001
	.quad	0x40214a5a038194c0              # double 8.6452179999999998
	.quad	0x401880029f16b11c              # double 6.1250099999999996
	.quad	0x3fe106c226809d49              # double 0.53207499999999996
	.quad	0x3ff974677b395c42              # double 1.590919
	.quad	0x401b068ad6883772              # double 6.7563890000000004
	.quad	0x40219749491f2dc3              # double 8.7954810000000005
	.quad	0x40215a788db0574b              # double 8.6767009999999996
	.quad	0x401c3d03968d759f              # double 7.0595840000000001
	.quad	0x401c3e2003ab862b              # double 7.0606689999999999
	.quad	0x401f69c0a8d21bc1              # double 7.8532739999999998
	.quad	0x401f10b5aa715832              # double 7.7663180000000001
	.quad	0x400b0d0b30b5aa71              # double 3.3813689999999998
	.quad	0x4021e7b784662bae              # double 8.952572
	.quad	0x4010acbf6e3f78bc              # double 4.1686990000000002
	.quad	0x40238fc6b8b69553              # double 9.7808130000000002
	.quad	0x4000153586ca89fc              # double 2.0103559999999998
	.quad	0x3ffd3353b4b2fa94              # double 1.8250310000000001
	.quad	0x3fb557689ca18bd6              # double 0.083364999999999994
	.quad	0x401c4ad03d9a9542              # double 7.0730599999999999
	.quad	0x4022d950331e3a7e              # double 9.4244400000000006
	.quad	0x4017c965f5275eea              # double 5.9466780000000004
	.quad	0x400f45985ad538ac              # double 3.908982
	.quad	0x40234cac29bf162b              # double 9.6497510000000001
	.quad	0x401baeec7c957cd4              # double 6.9208239999999996
	.quad	0x3ffe59146e4c0df6              # double 1.8967480000000001
	.quad	0x402076653868fd1a              # double 8.2312410000000007
	.quad	0x4023286dd69d3027              # double 9.5789629999999998
	.quad	0x40169e1ac57e23f2              # double 5.6543989999999997
	.quad	0x400c5a8bd230b9dc              # double 3.5442119999999999
	.quad	0x3f5b0ccbc05d52c1              # double 0.0016509999999999999
	.quad	0x401615785f8d2e51              # double 5.5209669999999997
	.quad	0x400864d3bf2f5558              # double 3.0492319999999999
	.quad	0x402104fede97d06c              # double 8.5097570000000004
	.quad	0x4020e870b8cfbfc6              # double 8.4539849999999994
	.quad	0x401dca57eaa2a0a9              # double 7.4476009999999997
	.quad	0x40215ccdb7ae5797              # double 8.6812570000000004
	.quad	0x3fe723af31b152f4              # double 0.72310600000000003
	.quad	0x402080c9752977c9              # double 8.2515370000000008
	.quad	0x4020f38151a43782              # double 8.4755959999999995
	.quad	0x400378e432441feb              # double 2.4340290000000002
	.quad	0x40103bedb7281fda              # double 4.0585240000000002
	.quad	0x401e50c73abc9470              # double 7.5788849999999996
	.quad	0x4002efa9c12f09d9              # double 2.3670230000000001
	.quad	0x401d8438088509c0              # double 7.3791200000000003
	.quad	0x400181a6937d1fe6              # double 2.1883059999999999
	.quad	0x3fff39496249a134              # double 1.9514860000000001
	.quad	0x3fde3d145d851655              # double 0.47247800000000001
	.quad	0x4013bcca70d1fa33              # double 4.9343659999999998
	.quad	0x401e194f26aec072              # double 7.5247159999999997
	.quad	0x4007c653868fd19a              # double 2.9718390000000001
	.quad	0x40156323fee2c98e              # double 5.3468169999999997
	.quad	0x4019d76427c7c526              # double 6.4603429999999999
	.quad	0x40230f47b677f6b2              # double 9.5298440000000006
	.quad	0x4009a4ccee5abc0e              # double 3.2054689999999999
	.quad	0x4023e4115df6555c              # double 9.9454449999999994
	.quad	0x401d76e2eb1c432d              # double 7.3661000000000003
	.quad	0x400b076c050bd87b              # double 3.3786239999999998
	.quad	0x40006c75c4a83b1d              # double 2.052959
	.quad	0x40144c34c1a8ac5c              # double 5.0744199999999999
	.quad	0x4019a2584f4c6e6e              # double 6.4085400000000003
	.quad	0x3fc5771001d5c316              # double 0.16769600000000001
	.quad	0x4006244d013a92a3              # double 2.767725
	.quad	0x3fe3549b62c77575              # double 0.604078
	.quad	0x3ffc5986b9c304cd              # double 1.771857
	.quad	0x40117ddd2ae8e1d6              # double 4.3729139999999997
	.quad	0x4022a39d1b2e59b0              # double 9.3195580000000007
	.quad	0x401766312f4cf4a5              # double 5.8497969999999997
	.quad	0x401a97cbf6e3f78c              # double 6.6482390000000002
	.quad	0x400a3b7c7820a30e              # double 3.2790460000000001
	.quad	0x40082e503fb37436              # double 3.0226139999999999
	.quad	0x4014bb662fdfc19c              # double 5.1830069999999999
	.quad	0x401e627d028a1dfc              # double 7.5961800000000004
	.quad	0x4020d5a469d7342f              # double 8.4172700000000003
	.quad	0x4009d1a4bdba0a52              # double 3.2273649999999998
	.quad	0x4020adfa00e27e0f              # double 8.339798
	.quad	0x40158ce7cd035372              # double 5.3876030000000004
	.quad	0x40239e8640208180              # double 9.8096180000000004
	.quad	0x40052a0232096788              # double 2.6455120000000001
	.quad	0x40060cec41dd1a22              # double 2.75631
	.quad	0x40211da8155d5f57              # double 8.5579230000000006
	.quad	0x401c8182a9930be1              # double 7.1264750000000001
	.quad	0x40214011d3671ac1              # double 8.6251359999999995
	.quad	0x3ffa1947cfa26a23              # double 1.6311720000000001
	.quad	0x401c75bf26f1dc51              # double 7.1149870000000002
	.quad	0x40111a3fcc9ea9a4              # double 4.2756340000000002
	.quad	0x3ff6de7a743a6480              # double 1.429316
	.quad	0x4022ec660a201472              # double 9.4617159999999991
	.quad	0x4013bdd3fe1975f3              # double 4.9353790000000002
	.quad	0x401f96a11ec918e3              # double 7.8970989999999998
	.quad	0x3ffce0370cdc8755              # double 1.80474
	.quad	0x3fdc949a5657fb6a              # double 0.44657000000000002
	.quad	0x401c1f1a5ca29846              # double 7.0303740000000001
	.quad	0x40170bfceb78897f              # double 5.7617070000000004
	.quad	0x402189096bb98c7e              # double 8.7676499999999997
	.quad	0x4021618dcdb37c9a              # double 8.6905350000000006
	.quad	0x4015f109d0635a42              # double 5.4853889999999996
	.quad	0x4023dfbeb9e492bc              # double 9.9370019999999996
	.quad	0x4019662aa19439de              # double 6.3497719999999997
	.quad	0x4021d3f85510d38d              # double 8.9140040000000003
	.quad	0x4018f06573215fcc              # double 6.2347619999999999
	.quad	0x401fbbf50e347629              # double 7.9335519999999997
	.quad	0x3fce958537e2c55d              # double 0.23893800000000001
	.quad	0x401ce93708aac96d              # double 7.2277490000000002
	.quad	0x400a7f0d413122b8              # double 3.3120370000000001
	.quad	0x402022e1ac57e23f              # double 8.0681279999999997
	.quad	0x4010dce8101f31f4              # double 4.2157289999999996
	.quad	0x401bd889c1b54196              # double 6.9614630000000002
	.quad	0x4021bce1a3f4666f              # double 8.8689090000000004
	.quad	0x400ec6f9335d249e              # double 3.8471549999999999
	.quad	0x401bffe3f359ff50              # double 6.9998930000000001
	.quad	0x402110b2c83ec893              # double 8.5326140000000006
	.quad	0x401d516f86a09891              # double 7.3295269999999997
	.quad	0x4014678c436fc159              # double 5.101121
	.quad	0x40218ae514c22ee4              # double 8.7712789999999998
	.quad	0x401833508f648c72              # double 6.0501120000000004
	.quad	0x4018d28240b78034              # double 6.2055749999999996
	.quad	0x4017f841aac53b08              # double 5.9924379999999999
	.quad	0x3fe4c57e23f24d90              # double 0.64910800000000002
	.quad	0x401c7c6a7ef9db23              # double 7.1215000000000002
	.quad	0x401587403dddb121              # double 5.3820810000000003
	.quad	0x401d324e59296702              # double 7.2991270000000004
	.quad	0x4021eb1ad2135dab              # double 8.9591890000000003
	.quad	0x4008d9f4d37c1377              # double 3.1064240000000001
	.quad	0x401079b456b441bc              # double 4.1188520000000004
	.quad	0x4009add3fe1975f3              # double 3.2098770000000001
	.quad	0x400c575d13d74d59              # double 3.5426579999999999
	.quad	0x401940e4da09cc32              # double 6.3133730000000003
	.quad	0x40066a62aa19439e              # double 2.801946
	.quad	0x3fcba9a8049667b6              # double 0.216115
	.quad	0x4017729131ec0b56              # double 5.8618819999999996
	.quad	0x3fba432441fea811              # double 0.102587
	.quad	0x40214cb33daf8df8              # double 8.6498050000000006
	.quad	0x4019fd940789613d              # double 6.4976349999999998
	.quad	0x400807c393682731              # double 3.0037910000000001
	.quad	0x4020484ec636b096              # double 8.1412259999999996
	.quad	0x3ffacf36694898f6              # double 1.675589
	.quad	0x3ff29c0010c6f7a1              # double 1.1630860000000001
	.quad	0x401599bb2788db05              # double 5.4001279999999996
	.quad	0x4023c18bf7f06706              # double 9.8780210000000004
	.quad	0x40144f08461f9f02              # double 5.0771800000000002
	.quad	0x401f0c065b63d3e5              # double 7.761743
	.quad	0x4013f1c193b3a68b              # double 4.9860899999999999
	.quad	0x3ff293fd0d0678c0              # double 1.16113
	.quad	0x3fe783968d759ee9              # double 0.73481300000000005
	.quad	0x40224fdd65a14489              # double 9.1559860000000004
	.quad	0x400d469057d1782d              # double 3.6594549999999999
	.quad	0x401b0d79d0a67621              # double 6.7631600000000001
	.quad	0x401d5c050bd87b57              # double 7.3398630000000002
	.quad	0x40171dc55000c954              # double 5.7790730000000003
	.quad	0x401b3628027d88c2              # double 6.8028870000000001
	.quad	0x4021d2b239a38fbd              # double 8.9115160000000007
	.quad	0x401984df47f993d5              # double 6.3797579999999998
	.quad	0x402093b517a46174              # double 8.2884910000000004
	.quad	0x4001e80f12c27a63              # double 2.2383099999999998
	.quad	0x400fb7bbf93ff25e              # double 3.9647139999999998
	.quad	0x4015263800218def              # double 5.2873229999999998
	.quad	0x40239c80e8c8abd6              # double 9.8056710000000002
	.quad	0x400944f440af1cb9              # double 3.1586690000000002
	.quad	0x3fc7b23571d1d474              # double 0.18512600000000001
	.quad	0x40203145d851654d              # double 8.0962359999999993
	.quad	0x4005e8a936c58eeb              # double 2.738604
	.quad	0x3fe4b810e8858ff7              # double 0.64746899999999996
	.quad	0x402029813879c411              # double 8.0810639999999996
	.quad	0x40085bc558644524              # double 3.04481
	.quad	0x3fff85553ef6b5d4              # double 1.9700519999999999
	.quad	0x4014c12b1b36bd2b              # double 5.1886409999999996
	.quad	0x40204563ed0f6274              # double 8.1355280000000007
	.quad	0x4002ad32830a0b1c              # double 2.3345690000000001
	.quad	0x40224f353b4b2fa9              # double 9.1547029999999996
	.quad	0x3ff6c014f8b588e3              # double 1.4218949999999999
	.quad	0x400ae433508f648c              # double 3.3614259999999998
	.quad	0x4021ea27f1b69121              # double 8.9573359999999997
	.quad	0x401e2d14a0a0f4d8              # double 7.5440240000000002
	.quad	0x4021e4f765fd8adb              # double 8.9472000000000005
	.quad	0x40106d8be7296f65              # double 4.1069789999999999
	.quad	0x400df0b06c43f5f9              # double 3.742524
	.quad	0x3fe26772d5e071c5              # double 0.57512799999999997
	.quad	0x3ff2b822bbecaab9              # double 1.1699550000000001
	.quad	0x4013a0e38a7e73a3              # double 4.9071179999999996
	.quad	0x4013d1c8a7a41e58              # double 4.9548670000000001
	.quad	0x40089d15f02c4d66              # double 3.076702
	.quad	0x4014e5532617c1be              # double 5.2239500000000003
	.quad	0x4015eea465a57647              # double 5.4830490000000003
	.quad	0x40142c1376d54973              # double 5.0430429999999999
	.quad	0x401053779e9d0e99              # double 4.0815109999999999
	.quad	0x40138089a0275254              # double 4.8755249999999997
	.quad	0x40024e67d77fae36              # double 2.288284
	.quad	0x4023f57518b0d0ee              # double 9.9794090000000004
	.quad	0x40180fcac8e68e3f              # double 6.015422
	.quad	0x401a87e9d94d0dd0              # double 6.6327280000000002
	.quad	0x40211d4d4024b33e              # double 8.5572300000000006
	.quad	0x40238aa00192a737              # double 9.7707519999999998
	.quad	0x40059540895d0b74              # double 2.6978770000000001
	.quad	0x401b3d68405b39e2              # double 6.8099679999999996
	.quad	0x401107f88765ba6f              # double 4.257784
	.quad	0x4017b2b7baecd078              # double 5.9245289999999997
	.quad	0x402026aa4b9884c7              # double 8.0755180000000006
	.quad	0x401edf01fb82c2bd              # double 7.7177809999999995
	.quad	0x3fe1ad905c033615              # double 0.55243699999999996
	.quad	0x40204ac0a4a05dd9              # double 8.146001
	.quad	0x3fe8f6640a6b93cd              # double 0.78007700000000002
	.quad	0x401ba60ae9680e06              # double 6.9121509999999997
	.quad	0x401c31904b3c3e75              # double 7.0484020000000003
	.quad	0x4023a5f2452c59fb              # double 9.8241139999999997
	.quad	0x40221cb20fb224ab              # double 9.0560460000000003
	.quad	0x400eee8a71de69ad              # double 3.8664749999999999
	.quad	0x3fe7294ff0025bfb              # double 0.72379300000000002
	.quad	0x400f534938583622              # double 3.915667
	.quad	0x3fea102795703f2d              # double 0.81447199999999997
	.quad	0x400c2dcd2d44dca9              # double 3.5223640000000001
	.quad	0x3ffd11e321a2e7f7              # double 1.816867
	.quad	0x400ff9a62ed35222              # double 3.996899
	.quad	0x401d74f5d35653ca              # double 7.3642190000000003
	.quad	0x402304e1a3f4666f              # double 9.5095340000000003
	.quad	0x400b12745bf26f1e              # double 3.3840110000000001
	.quad	0x3fe2dbf8b9baa151              # double 0.58935199999999999
	.quad	0x4018902b841248d8              # double 6.1407910000000001
	.quad	0x40197e5c4eb56fb9              # double 6.373399
	.quad	0x4003c241c3efae79              # double 2.4698519999999999
	.quad	0x40220ad3e920c06a              # double 9.0211480000000002
	.quad	0x3ffc526634117f84              # double 1.7701169999999999
	.quad	0x401ca72de43ed95a              # double 7.1632610000000003
	.quad	0x3fef940dd3fe1976              # double 0.98682300000000001
	.quad	0x4016359b3d07c84b              # double 5.5523499999999997
	.quad	0x401e74fb1183b603              # double 7.6142390000000004
	.quad	0x3fe27d06bbdbe3c1              # double 0.577762
	.quad	0x401be4f2f123c42a              # double 6.9735829999999996
	.quad	0x401014ccee5abc0e              # double 4.0203129999999998
	.quad	0x40216eb463497b74              # double 8.7162199999999998
	.quad	0x4021af64adff822c              # double 8.8425650000000004
	.quad	0x4020f33e5753a3ec              # double 8.4750849999999999
	.quad	0x3fdb5c28f5c28f5c              # double 0.42749999999999999
	.quad	0x402028225742dcf4              # double 8.0783869999999993
	.quad	0x4006d4a3c64345d0              # double 2.853828
	.quad	0x3ffde994185058de              # double 1.869526
	.quad	0x3fffa25a682b6284              # double 1.9771369999999999
	.quad	0x401530d77b7c7821              # double 5.2976970000000003
	.quad	0x4011cd00713f077d              # double 4.4501970000000002
	.quad	0x4020a7c9de050375              # double 8.327712
	.quad	0x4023be2ae4b01861              # double 9.8714209999999997
	.quad	0x4014e5b291b823c8              # double 5.2243139999999997
	.quad	0x401cd7cb70ac3a86              # double 7.210737
	.quad	0x402159b2e59af9ec              # double 8.6751930000000001
	.quad	0x40100af102363b25              # double 4.0106849999999996
	.quad	0x401ce3ebbfd71b04              # double 7.2225789999999996
	.quad	0x4001678854cdb7ae              # double 2.1755529999999998
	.quad	0x4022312f901083dc              # double 9.0960660000000004
	.quad	0x4023a603d577963a              # double 9.8242480000000008
	.quad	0x4013c3ab862b27cc              # double 4.941084
	.quad	0x401eadcca70d1fa3              # double 7.6697259999999998
	.quad	0x401cab0292817764              # double 7.1670020000000001
	.quad	0x401529f44d445671              # double 5.2909709999999999
	.quad	0x3fffe5918a009f62              # double 1.993547
	.quad	0x401c09cbab649d39              # double 7.0095660000000004
	.quad	0x3fe11389b52007dd              # double 0.53363499999999997
	.quad	0x3ffcdff822bbecab              # double 1.8046800000000001
	.quad	0x4021d5438d1d8a55              # double 8.9165310000000009
	.quad	0x401e10bb6ed67770              # double 7.5163399999999996
	.quad	0x401b172ffd1dcd70              # double 6.7726439999999997
	.quad	0x40238e3c968943e1              # double 9.7778059999999999
	.quad	0x4020cd1bd61f5be6              # double 8.4006030000000003
	.quad	0x401009b62c77574f              # double 4.0094839999999996
	.quad	0x4021e8f8e7ddca4b              # double 8.9550239999999999
	.quad	0x4016a5dc8323358f              # double 5.6619739999999998
	.quad	0x400d996bfca85cab              # double 3.699913
	.quad	0x401916102795703f              # double 6.2715459999999998
	.quad	0x3fdfcf91a32b12d3              # double 0.49704399999999999
	.quad	0x401b9a2120e1f7d7              # double 6.9005169999999998
	.quad	0x3ff03864cb5bb385              # double 1.013768
	.quad	0x4022680c521dda06              # double 9.2032190000000007
	.quad	0x4002a711d798d8a9              # double 2.3315769999999998
	.quad	0x4022fb14ca925fe9              # double 9.4903929999999991
	.quad	0x401d06145953586d              # double 7.2559370000000003
	.quad	0x4001c314013ec461              # double 2.220253
	.quad	0x401078c8abd5dc40              # double 4.117953
	.quad	0x4004b7d8cf398e97              # double 2.589769
	.quad	0x40134fab96f21f6d              # double 4.8278030000000003
	.quad	0x400badce39b456b4              # double 3.4598659999999999
	.quad	0x4007e5b6c3760bf6              # double 2.9871650000000001
	.quad	0x401ecc610f0e90bc              # double 7.6995889999999996
	.quad	0x401d08d25edd0529              # double 7.2586149999999998
	.quad	0x4023b985058dde7a              # double 9.8623429999999992
	.quad	0x3fe031209edbf8ba              # double 0.50599700000000003
	.quad	0x400c67607c4199fe              # double 3.5504769999999999
	.quad	0x4015ba04d12018a4              # double 5.4316589999999998
	.quad	0x4007b47c73eee526              # double 2.9631280000000002
	.quad	0x40231a686e7e62dc              # double 9.5515779999999992
	.quad	0x400f7356da0168b6              # double 3.9313180000000001
	.quad	0x4014d601797cc3a0              # double 5.20899
	.quad	0x3ff21a30984e3fff              # double 1.131394
	.quad	0x3ffa5c5931ca7d67              # double 1.647546
	.quad	0x40106845132f87ad              # double 4.101826
	.quad	0x401b62a8869c66d3              # double 6.8463459999999996
	.quad	0x40035a42f1ed17c6              # double 2.419073
	.quad	0x401bfc02afdda8bd              # double 6.9961039999999999
	.quad	0x4010aa0cf1800a7c              # double 4.1660649999999997
	.quad	0x40202be4ef0281ba              # double 8.0857309999999991
	.quad	0x4010e3cab81f969e              # double 4.2224529999999998
	.quad	0x401fb13a92a30553              # double 7.9230749999999998
	.quad	0x401d40303c07ee0b              # double 7.312684
	.quad	0x3ff3dc55000c953a              # double 1.2412920000000001
	.quad	0x401ef4c51116a8b9              # double 7.739033
	.quad	0x4022d9f2778140dd              # double 9.4256779999999995
	.quad	0x3fe7ed41b75a74c1              # double 0.74771200000000004
	.quad	0x401258409e55c0fd              # double 4.5861840000000003
	.quad	0x3ffd6326e115592e              # double 1.8367070000000001
	.quad	0x40198611fd5885d3              # double 6.3809279999999999
	.quad	0x40227229c779a6b5              # double 9.2229749999999999
	.quad	0x401c483771865519              # double 7.0705239999999998
	.quad	0x400ced959a30984e              # double 3.6160079999999999
	.quad	0x3feba7221858bc5a              # double 0.86415200000000003
	.quad	0x40234625e99e94ab              # double 9.6370079999999997
	.quad	0x401b64da9003eea2              # double 6.84849
	.quad	0x401c9a93af74cd31              # double 7.1509539999999996
	.quad	0x401a6f0520d130e0              # double 6.6084180000000003
	.quad	0x40087e19fc2a886a              # double 3.0615730000000001
	.quad	0x3fe01335d249e450              # double 0.50234500000000004
	.quad	0x3fedb3cc4ac6cdaf              # double 0.92819799999999997
	.quad	0x40103a1dfb9389b5              # double 4.0567549999999999
	.quad	0x3fac3b70ef566491              # double 0.055141000000000003
	.quad	0x401423ec02f2f987              # double 5.0350799999999998
	.quad	0x400421e9af5ba2be              # double 2.516559
	.quad	0x401195ed8d36b4c8              # double 4.396414
	.quad	0x401d73aa369fcf3e              # double 7.3629540000000002
	.quad	0x400ae9a2c669057d              # double 3.36408
	.quad	0x400befe8ab4fa483              # double 3.492143
	.quad	0x40221d3b8e4b87be              # double 9.0570950000000003
	.quad	0x401daeee0f3cb3e5              # double 7.4208299999999996
	.quad	0x401ddb5d462c343b              # double 7.4642229999999996
	.quad	0x40017737542a23c0              # double 2.183211
	.quad	0x3ff1a849cb252ce0              # double 1.103586
	.quad	0x401bacb31c219eb6              # double 6.9186519999999998
	.quad	0x401e43005814940c              # double 7.5654310000000002
	.quad	0x3ff99b2e59af9ebf              # double 1.6003860000000001
	.quad	0x401922da122fad6d              # double 6.2840350000000003
	.quad	0x401c4b71fbc5de9c              # double 7.073677
	.quad	0x3fe286a6e32e3822              # double 0.57893700000000003
	.quad	0x4001eb8305d95dd5              # double 2.2399960000000001
	.quad	0x3ff312f3c2dadb83              # double 1.1921269999999999
	.quad	0x401ed02363b25700              # double 7.7032600000000002
	.quad	0x40108666a98244e9              # double 4.1312509999999998
	.quad	0x402172528ae74f2f              # double 8.7232859999999999
	.quad	0x4022742938de6ddf              # double 9.226877
	.quad	0x400189d388a8b08e              # double 2.1922980000000001
	.quad	0x4020996b97fe8ee7              # double 8.2996490000000005
	.quad	0x400443a5c1c6088d              # double 2.5330309999999998
	.quad	0x400102a3486f049b              # double 2.1262880000000002
	.quad	0x400fc259e1f3a57f              # double 3.9698980000000001
	.quad	0x4012e035bd512ec7              # double 4.7189550000000002
	.quad	0x401353c792d1287c              # double 4.8318159999999999
	.quad	0x40212a7f8012dfd7              # double 8.5830040000000007
	.quad	0x400012b990afe60c              # double 2.0091429999999999
	.quad	0x40192f1c3265adda              # double 6.2960060000000002
	.quad	0x4015d213a0c6b485              # double 5.4551530000000001
	.quad	0x40152e0653005815              # double 5.2949460000000004
	.quad	0x4023bf11d798d8a9              # double 9.8731829999999991
	.quad	0x4017a9bcfd4bf099              # double 5.9157599999999997
	.quad	0x400ff3bf2f555821              # double 3.9940169999999999
	.quad	0x4008e5b20b8066c3              # double 3.1121560000000001
	.quad	0x4021b6f976790321              # double 8.8573719999999998
	.quad	0x4022d5bec2480e8d              # double 9.4174710000000008
	.quad	0x401196266fd651b1              # double 4.3966310000000002
	.quad	0x3ff189eba6aca793              # double 1.0961719999999999
	.quad	0x400b10b6b6e0d23d              # double 3.3831609999999999
	.quad	0x402236134ce3de61              # double 9.1056159999999995
	.quad	0x3ff474784230fcf8              # double 1.278435
	.quad	0x3fb3fa5d28d002e2              # double 0.078038999999999997
	.quad	0x4006f4c7f3493858              # double 2.8695219999999999
	.quad	0x3fd070867ad8e432              # double 0.25686799999999999
	.quad	0x4023350b955f7836              # double 9.6036040000000007
	.quad	0x4009dca7d6733ebc              # double 3.232742
	.quad	0x4010f4f54d1e96c4              # double 4.239217
	.quad	0x40038cdaf4adbc66              # double 2.4437769999999999
	.quad	0x4017375c4a83b1d1              # double 5.8040630000000002
	.quad	0x402261830e3cd9a5              # double 9.1904529999999998
	.quad	0x401f9ae7924af0bf              # double 7.9012739999999999
	.quad	0x401cb80064a9cdc4              # double 7.1796889999999998
	.quad	0x3fffbfd82773e250              # double 1.984337
	.quad	0x400980578e5c4eb5              # double 3.1876669999999998
	.quad	0x4003fb13165d3997              # double 2.497595
	.quad	0x3ff4499392189bd8              # double 1.267963
	.quad	0x4016396bb98c7e28              # double 5.5560749999999999
	.quad	0x40181033e78e1933              # double 6.0158230000000001
	.quad	0x401e833a8a3f8983              # double 7.6281530000000001
	.quad	0x40087995ee136e72              # double 3.0593680000000001
	.quad	0x3ffc8e10cf5b1c86              # double 1.7846839999999999
	.quad	0x401a4a3b57c4e2f3              # double 6.5724919999999996
	.quad	0x4023bfc7e6b3fea0              # double 9.8745720000000006
	.quad	0x3ffb5103c8e25c81              # double 1.707279
	.quad	0x401b65004fb1183b              # double 6.8486339999999997
	.quad	0x3ffba09bb6aa4b99              # double 1.7267110000000001
	.quad	0x400e90b9dc2f405f              # double 3.8206669999999998
	.quad	0x4022254477ff151e              # double 9.0727879999999992
	.quad	0x401d1aacd9e83e42              # double 7.2760499999999997
	.quad	0x400618be7296f651              # double 2.7620819999999999
	.quad	0x40207175afaf8594              # double 8.2216009999999997
	.quad	0x401ee63f572de43f              # double 7.7248510000000001
	.quad	0x3fee9bcba3012168              # double 0.95651799999999997
	.quad	0x401228b9fdbd2fa1              # double 4.5397720000000001
	.quad	0x3fe4fbfa4c61d862              # double 0.65575899999999998
	.quad	0x4017c8ebcc6c54bd              # double 5.9462120000000001
	.quad	0x401b3c7219220ff5              # double 6.8090289999999998
	.quad	0x4023537a1c25d074              # double 9.6630409999999997
	.quad	0x4010b3d188f42fe8              # double 4.1756039999999999
	.quad	0x4018006034f3fd93              # double 6.0003669999999998
	.quad	0x400715b70691ea79              # double 2.8856030000000001
	.quad	0x4023517a89331a09              # double 9.6591380000000004
	.quad	0x4020c9fff79c8430              # double 8.3945310000000006
	.quad	0x400e0743201040c0              # double 3.753546
	.quad	0x401dcf6dfc5cdd51              # double 7.4525680000000003
	.quad	0x40054807357e670e              # double 2.6601699999999999
	.quad	0x40203d0268900c52              # double 8.1191589999999998
	.quad	0x4021b83925bb7b6c              # double 8.8598110000000005
	.quad	0x4020a3b256ffc116              # double 8.3197200000000002
	.quad	0x401329d0e991ff71              # double 4.7908359999999997
	.quad	0x401aba45d41fa765              # double 6.6819069999999998
	.quad	0x401e79635610adcd              # double 7.6185429999999998
	.quad	0x40130be76c8b4396              # double 4.7616250000000004
	.quad	0x3fa9a79fec99f1ae              # double 0.050106999999999999
	.quad	0x4010e21bc126a65d              # double 4.220809
	.quad	0x4022e39b66f9335d              # double 9.4445449999999997
	.quad	0x4016d95d4e8fb00c              # double 5.7122700000000002
	.quad	0x4016e5f6ba0620ab              # double 5.7245739999999996
	.quad	0x4019ec12f09d8c6d              # double 6.4805409999999997
	.quad	0x40202370ac3a860e              # double 8.0692190000000004
	.quad	0x3fd8ffda4052d667              # double 0.39061600000000002
	.quad	0x3fe60e29f9ce8d97              # double 0.68922899999999998
	.quad	0x3fe2219a847b2464              # double 0.56660200000000005
	.quad	0x401befd8f0c77dd8              # double 6.9842259999999996
	.quad	0x3fa81d9f4d37c137              # double 0.047100999999999997
	.quad	0x40057ae03b3e9a70              # double 2.6849980000000002
	.quad	0x4013e3443d46b26c              # double 4.97194
	.quad	0x40100497b7414a4d              # double 4.0044849999999999
	.quad	0x3fd614c660a20147              # double 0.34501799999999999
	.quad	0x400a1dcb5781c715              # double 3.264548
	.quad	0x3ff44f15e7c8d196              # double 1.2693080000000001
	.quad	0x401a534549b62c77              # double 6.5813189999999997
	.quad	0x4017adff3f0fe048              # double 5.9199190000000002
	.quad	0x3fed21815a07b353              # double 0.91034000000000004
	.quad	0x400c2fd5cb790fb6              # double 3.5233569999999999
	.quad	0x400fb593e5fb71fc              # double 3.9636610000000001
	.quad	0x3ff98d7f0ed3d85a              # double 1.597045
	.quad	0x400d704b3c3e74b0              # double 3.6798310000000001
	.quad	0x4003b3da72a7bd49              # double 2.4628190000000001
	.quad	0x400260baa582dbe8              # double 2.297231
	.quad	0x3ff743d790752daa              # double 1.4540630000000001
	.quad	0x4006981f969e3c97              # double 2.8242790000000002
	.quad	0x401e335a426bb55b              # double 7.5501490000000002
	.quad	0x4021af739f340d4e              # double 8.8426790000000004
	.quad	0x40041dd334c5da6a              # double 2.5145629999999999
	.quad	0x401b0ea077036c9c              # double 6.764284
	.quad	0x3ffa784449dbec25              # double 1.6543620000000001
	.quad	0x4016328a1dfb938a              # double 5.5493550000000003
	.quad	0x4015a859c8c9320e              # double 5.4144050000000004
	.quad	0x400f96312f4cf4a5              # double 3.9483359999999998
	.quad	0x3fe64955b4677b39              # double 0.69645199999999996
	.quad	0x401dda797891e215              # double 7.4633539999999998
	.quad	0x4016b8665e02ea96              # double 5.680078
	.quad	0x3fd59df97aaac109              # double 0.33776699999999998
	.quad	0x3ffe084b5dcc63f1              # double 1.8770249999999999
	.quad	0x401d9c8c9320d994              # double 7.4028799999999997
	.quad	0x40214cbccf28c79f              # double 8.6498779999999993
	.quad	0x4009b681ecd4aa11              # double 3.2141150000000001
	.quad	0x4011e25e99e94ab2              # double 4.4710640000000001
	.quad	0x40124bb4916ca46e              # double 4.573931
	.quad	0x4011838759253544              # double 4.3784460000000003
	.quad	0x4020f68900c521de              # double 8.4815140000000007
	.quad	0x4010b6c2efd438d2              # double 4.1784780000000001
	.quad	0x400a2ec0724b76f7              # double 3.2728280000000001
	.quad	0x3ff8d87a4a48f96e              # double 1.552851
	.quad	0x401d86e7a311e860              # double 7.3817430000000002
	.quad	0x3ffb8e5a35d67ba2              # double 1.722254
	.quad	0x402136cbfb15b574              # double 8.6070250000000001
	.quad	0x4017c17df19d66ae              # double 5.9389570000000003
	.quad	0x3ffa9d35653c9abb              # double 1.663381
	.quad	0x40073c88e79aae6d              # double 2.9045580000000002
	.quad	0x401fc49d388a8b09              # double 7.9420060000000001
	.quad	0x401cabb8800eae19              # double 7.1676960000000003
	.quad	0x400ef0a569b17482              # double 3.8675030000000001
	.quad	0x40213d08919ef955              # double 8.6192060000000001
	.quad	0x4009dd566cf41f21              # double 3.2330749999999999
	.quad	0x4015a810e8858ff7              # double 5.4141269999999997
	.quad	0x3fabb7952d234eba              # double 0.054135000000000003
	.quad	0x400ccf0281ba7fc3              # double 3.6010789999999999
	.quad	0x4012c9ac79702e66              # double 4.6969469999999998
	.quad	0x401195657fb69985              # double 4.3958950000000003
	.quad	0x4022b2d7518b0d0f              # double 9.3492990000000002
	.quad	0x3fe25c26dce39b45              # double 0.57374899999999995
	.quad	0x401a5c49fd7a13c2              # double 6.5901259999999997
	.quad	0x400de9e6687f455a              # double 3.7392089999999998
	.quad	0x401408f36694898f              # double 5.0087409999999997
	.quad	0x4013b1409a240315              # double 4.9230980000000004
	.quad	0x400fdff36ac64778              # double 3.9843510000000002
	.quad	0x3ff91c779a6b50b1              # double 1.56945
	.quad	0x40207c0746455eaf              # double 8.2422430000000002
	.quad	0x40083c158fb43d8a              # double 3.0293380000000001
	.quad	0x3fe67ffde7210be9              # double 0.70312399999999997
	.quad	0x3ff2b4f61672324d              # double 1.1691800000000001
	.quad	0x4020673eccc46951              # double 8.201651
	.quad	0x402076fd86a8fc0d              # double 8.2324029999999997
	.quad	0x3ffdd57eed45e918              # double 1.8646229999999999
	.quad	0x401571e81cb46bad              # double 5.361237
	.quad	0x3ff0bd87b56b8738              # double 1.0462720000000001
	.quad	0x402165260f5e41d5              # double 8.6975560000000005
	.quad	0x4000a0a2877ee4e2              # double 2.0784349999999998
	.quad	0x3ff5d5208e150119              # double 1.364533
	.quad	0x40236db35b0bbf51              # double 9.7142590000000001
	.quad	0x3fe02a51e321a2e8              # double 0.505166
	.quad	0x3fec9fc8f32378ab              # double 0.89450499999999999
	.quad	0x4010745ae5ffa3ba              # double 4.1136280000000003
	.quad	0x40216fdc37a3db3c              # double 8.718477
	.quad	0x401c7e1a8262456f              # double 7.1231479999999996
	.quad	0x401d88882f0e0a85              # double 7.3833320000000002
	.quad	0x4003e40e9d51b4fe              # double 2.4863559999999998
	.quad	0x4020c4d39da16617              # double 8.3844270000000005
	.quad	0x40129714b9cb6849              # double 4.6475400000000002
	.quad	0x3fe6fd21ff2e48e9              # double 0.71840000000000004
	.quad	0x3ffd1c33721d53ce              # double 1.819385
	.quad	0x401071719f7f8ca8              # double 4.1107849999999999
	.quad	0x40026f123c42a66e              # double 2.3042340000000001
	.quad	0x4012ca54c5543287              # double 4.6975889999999998
	.quad	0x40173ce24bba12b6              # double 5.8094570000000001
	.quad	0x402183a14cec41dd              # double 8.7570899999999998
	.quad	0x401271244a6223e2              # double 4.6104900000000004
	.quad	0x40206b5b2d4d4025              # double 8.2096800000000005
	.quad	0x4022eee75ff609dd              # double 9.466609
	.quad	0x4023cb15f88fc936              # double 9.8966519999999996
	.quad	0x40131252ce032db2              # double 4.7678940000000001
	.quad	0x4010cab713272431              # double 4.1979639999999998
	.quad	0x400dea0dbad3a605              # double 3.7392840000000001
	.quad	0x4001746801711948              # double 2.1818390000000001
	.quad	0x4006c400fba8826b              # double 2.8457050000000002
	.quad	0x4022cf0025bfad2a              # double 9.4042980000000007
	.quad	0x40201b7b4a2339c1              # double 8.0536750000000001
	.quad	0x4021b4725c3dee78              # double 8.8524349999999998
	.quad	0x3ff9b0d0edc3bd5a              # double 1.6056680000000001
	.quad	0x40217c0aaeafab54              # double 8.7422690000000002
	.quad	0x40135322af577100              # double 4.8311869999999999
	.quad	0x3fe6d8afc47e49b2              # double 0.713951
	.quad	0x4009943d03968d76              # double 3.1973820000000002
	.quad	0x401d655fbb517a46              # double 7.3489979999999999
	.quad	0x4019326a65cf67b2              # double 6.2992340000000002
	.quad	0x3ffa5c53f39d1b2e              # double 1.6475409999999999
	.quad	0x4008af5a964e8b7e              # double 3.0856219999999999
	.quad	0x4013eb074a771c97              # double 4.9795199999999999
	.quad	0x3fff7a775fb2edfe              # double 1.9673989999999999
	.quad	0x4013688a04d12019              # double 4.8520890000000003
	.quad	0x3fec48ecd8dbcec8              # double 0.88390199999999997
	.quad	0x40047d11be6e6538              # double 2.5610689999999998
	.quad	0x4018f1f926c7eae6              # double 6.2363020000000002
	.quad	0x4007c474d9c6b053              # double 2.970926
	.quad	0x4018081908e581cf              # double 6.0079079999999996
	.quad	0x4022346b484d76ab              # double 9.1023809999999994
	.quad	0x401d70f98fa37692              # double 7.3603269999999998
	.quad	0x400a2a25d8d79d0a              # double 3.2705799999999998
	.quad	0x400792495e17e34c              # double 2.9464290000000002
	.quad	0x4022b843a2163fdd              # double 9.3598909999999992
	.quad	0x400d335653c9abb0              # double 3.650067
	.quad	0x4014bbf8b9baa151              # double 5.1835659999999999
	.quad	0x4013d8ee6b8305d9              # double 4.9618469999999997
	.quad	0x4020b61e4f765fd9              # double 8.3557000000000006
	.quad	0x401f339f77292c49              # double 7.8004129999999998
	.quad	0x400e802afdda8bd2              # double 3.8125819999999999
	.quad	0x4020ef14db59578a              # double 8.4669559999999997
	.quad	0x401fc2d44dca8e2e              # double 7.9402629999999998
	.quad	0x4012b99c7bcc2939              # double 4.6812610000000001
	.quad	0x3ff9a1eb4202d9cf              # double 1.602031
	.quad	0x4016ed67ba237cdd              # double 5.7318410000000002
	.quad	0x3ff92fd5454152b1              # double 1.5741780000000001
	.quad	0x4014e90d173fb7a6              # double 5.227589
	.quad	0x401beb91f70de8f7              # double 6.9800490000000002
	.quad	0x401875336deb95e6              # double 6.1144540000000003
	.quad	0x3ff68e4649906cca              # double 1.409735
	.quad	0x4022ec0485a0be51              # double 9.4609719999999999
	.quad	0x40217ea897635e74              # double 8.7473799999999997
	.quad	0x4016d9c49774256c              # double 5.7126640000000002
	.quad	0x401ea2c77574f723              # double 7.6589640000000001
	.quad	0x3ff4098c3b0c4589              # double 1.2523310000000001
	.quad	0x4021b6b00ffda405              # double 8.8568119999999997
	.quad	0x4019208d08919ef9              # double 6.2817879999999997
	.quad	0x401401f0c34c1a8b              # double 5.0018950000000002
	.quad	0x4016f3d640e9d51b              # double 5.7381219999999997
	.quad	0x400654812be48a59              # double 2.7912620000000001
	.quad	0x401d855de58e64b2              # double 7.3802409999999998
	.quad	0x4003e1693c03bc4d              # double 2.4850639999999999
	.quad	0x401a2034f3fd933e              # double 6.5314519999999998
	.quad	0x400b17b07075b3e1              # double 3.3865669999999999
	.quad	0x3fe219f5dfeb8d82              # double 0.56566899999999998
	.quad	0x40202c197e564734              # double 8.0861319999999992
	.quad	0x4013c85d31337eb3              # double 4.9456680000000004
	.quad	0x4023ac6b484d76ab              # double 9.8367559999999993
	.quad	0x400d2d1e96c3fc44              # double 3.6470310000000001
	.quad	0x40155262888b545c              # double 5.3304539999999996
	.quad	0x40120932d6ece13f              # double 4.5089829999999997
	.quad	0x401b00913a4f8727              # double 6.7505540000000002
	.quad	0x4013d58bc59b8024              # double 4.9585410000000003
	.quad	0x4013ad56b00ffda4              # double 4.919276
	.quad	0x4013aea465a57647              # double 4.9205490000000003
	.quad	0x4006294c447c30d3              # double 2.770165
	.quad	0x3ff59f548ecd8dbd              # double 1.351399
	.quad	0x4012ce40852b4d8c              # double 4.7014180000000003
	.quad	0x400be6d58c8eef1c              # double 3.4877120000000001
	.quad	0x4015b4b9884c6a3c              # double 5.4264890000000001
	.quad	0x40220f08cc575c07              # double 9.0293639999999993
	.quad	0x4014adfb9389b520              # double 5.169905
	.quad	0x4017dd612c6ac216              # double 5.9661910000000002
	.quad	0x4022b3d6c7219221              # double 9.351248
	.quad	0x40146bc72e275ab8              # double 5.1052520000000001
	.quad	0x40118e0b4e11dbcb              # double 4.3887150000000004
	.quad	0x4012063f141205bc              # double 4.5061
	.quad	0x4005f4013ec460ee              # double 2.7441430000000002
	.quad	0x401341b79d909f1f              # double 4.8141769999999999
	.quad	0x40105020817fc760              # double 4.0782489999999996
	.quad	0x401c7c0a4a05dd90              # double 7.1211330000000004
	.quad	0x401f44df04ddb552              # double 7.8172569999999997
	.quad	0x3ffcdf383f0bae8a              # double 1.804497
	.quad	0x401df23bff8a8f3b              # double 7.4865570000000003
	.quad	0x401b368123810e88              # double 6.8032269999999997
	.quad	0x3ffaf1327243137b              # double 1.683886
	.quad	0x4021dfff79c842fa              # double 8.9374959999999994
	.quad	0x3fe1ec0724b76f6d              # double 0.56006199999999995
	.quad	0x401186f6512a94ff              # double 4.381799
	.quad	0x40088f4517614595              # double 3.0699559999999999
	.quad	0x401b1fd60e94ee39              # double 6.7810899999999998
	.quad	0x401dbeabbcb1cc96              # double 7.4362019999999998
	.quad	0x3ff979e59f2ba9d2              # double 1.59226
	.quad	0x3fefad080b673c4f              # double 0.98987199999999997
	.quad	0x4012dabc0e38a7e7              # double 4.7136079999999998
	.quad	0x401e0532617c1bda              # double 7.5050749999999997
	.quad	0x401c887d6f976790              # double 7.1332909999999998
	.quad	0x4021ad379fa97e13              # double 8.8383149999999997
	.quad	0x40219bcddd6e04c0              # double 8.8043049999999994
	.quad	0x3ffd0c0ce91c8eac              # double 1.815442
	.quad	0x400235c4a83b1d0d              # double 2.2762540000000002
	.quad	0x4023ec393682730c              # double 9.9613739999999992
	.quad	0x3ff684d87724fa8b              # double 1.4074329999999999
	.quad	0x40175de82d7b634e              # double 5.8417060000000003
	.quad	0x3ffb0d141a6937d2              # double 1.690693
	.quad	0x400fa1eff9f87f02              # double 3.9540709999999999
	.quad	0x3fffe4ce8101f31f              # double 1.9933609999999999
	.quad	0x3ff035d031055b8a              # double 1.0131380000000001
	.quad	0x402354460ed80a18              # double 9.6645970000000005
	.quad	0x3fa28ef77f27fe4c              # double 0.036247000000000001
	.quad	0x4015bb53d640e9d5              # double 5.4329369999999999
	.quad	0x4005563ed0f62739              # double 2.6671119999999999
	.quad	0x3fe8988b11409a24              # double 0.76862099999999999
	.quad	0x4022bf68be2f7b18              # double 9.3738460000000003
	.quad	0x402343d577963993              # double 9.6324880000000003
	.quad	0x3fe3168f8e7ddca5              # double 0.59650400000000003
	.quad	0x4013d74751ce28ed              # double 4.9602329999999997
	.quad	0x401c4a86940357a3              # double 7.0727789999999997
	.quad	0x401232e2b8c75c4b              # double 4.5496930000000004
	.quad	0x3fdbc13b9f127f5f              # double 0.43366900000000003
	.quad	0x40143b4aa9717df2              # double 5.0579020000000003
	.quad	0x4015a41b75a74c0a              # double 5.4102610000000002
	.quad	0x40202306e5cd4ed3              # double 8.0684120000000004
	.quad	0x40084a0e410b630b              # double 3.0361600000000002
	.quad	0x40207d3005814941              # double 8.2445070000000005
	.quad	0x401765004fb1183b              # double 5.8486339999999997
	.quad	0x402257c115df6556              # double 9.1713950000000004
	.quad	0x401c81950331e3a8              # double 7.1265450000000001
	.quad	0x401f16659d12cade              # double 7.7718720000000001
	.quad	0x4023aa95e9e1b08a              # double 9.8331750000000007
	.quad	0x401fd40789613d32              # double 7.9570600000000002
	.quad	0x40134ca29845dc83              # double 4.8248389999999999
	.quad	0x401e3d634549b62c              # double 7.5599489999999996
	.quad	0x400854794ea07703              # double 3.0412469999999998
	.quad	0x4018104a2fcefaa4              # double 6.0159079999999996
	.quad	0x400731e18efbb0e6              # double 2.899356
	.quad	0x4023121b3aeee957              # double 9.5353639999999995
	.quad	0x40030586013660e5              # double 2.3776969999999999
	.quad	0x401d10d9945b6c37              # double 7.2664549999999997
	.quad	0x401318d08919ef95              # double 4.7742329999999997
	.quad	0x40224854ef459d99              # double 9.141273
	.quad	0x401705247cb70ac4              # double 5.7550220000000003
	.quad	0x4005ebfb15b573eb              # double 2.7402250000000001
	.quad	0x4016ae5b8561d430              # double 5.6702709999999996
	.quad	0x400fce8d10f51aca              # double 3.9758550000000001
	.quad	0x4002e70a808c825a              # double 2.3628130000000001
	.quad	0x40189e36d22424a2              # double 6.1545059999999996
	.quad	0x40058ebedfa43fe6              # double 2.6947000000000001
	.quad	0x4001b2d2bb23571d              # double 2.2123159999999999
	.quad	0x400d2b1572580c31              # double 3.6460370000000002
	.quad	0x3fd0167a95c853c1              # double 0.25137199999999998
	.quad	0x400c75af294dd723              # double 3.5574629999999998
	.quad	0x3ff9cd035371971c              # double 1.612552
	.quad	0x401826f19934efcc              # double 6.0380310000000001
	.quad	0x40026020817fc760              # double 2.2969369999999998
	.quad	0x4019376a7264a16a              # double 6.3041169999999997
	.quad	0x400ede56cd6c2efd              # double 3.8585639999999999
	.quad	0x4023dc180d3cff65              # double 9.9298710000000003
	.quad	0x3fe88e3476295209              # double 0.76735900000000001
	.quad	0x4023505caafbc1ad              # double 9.6569570000000002
	.quad	0x40025fcb923a29c7              # double 2.2967749999999998
	.quad	0x40230d8d36b4c7f3              # double 9.5264679999999994
	.quad	0x402093b96af038e3              # double 8.2885240000000007
	.quad	0x40079db8fde2ef4e              # double 2.952013
	.quad	0x3fffac0a4a05dd90              # double 1.9795020000000001
	.quad	0x400c91cc100e6afd              # double 3.5711900000000001
	.quad	0x3ff7ee957470eb25              # double 1.4957480000000001
	.quad	0x3fb21fc08fa7a850              # double 0.070796999999999999
	.quad	0x400cae264e48626f              # double 3.5850339999999998
	.quad	0x4017bbe76c8b4396              # double 5.9335000000000004
	.quad	0x400d7af07bfe7e20              # double 3.6850290000000001
	.quad	0x401285cb790fb656              # double 4.6306589999999996
	.quad	0x4022da8e0c9d9d34              # double 9.4268649999999993
	.quad	0x401e6e11dbca9692              # double 7.6074900000000003
	.quad	0x40205658e64b2314              # double 8.1686469999999999
	.quad	0x40236c528283d35f              # double 9.7115670000000005
	.quad	0x3ffc8289118c197e              # double 1.7818689999999999
	.quad	0x4018d5cb790fb656              # double 6.2087839999999996
	.quad	0x40070a71de69ad43              # double 2.8801000000000001
	.quad	0x4020edc1a47a9e2c              # double 8.4643680000000003
	.quad	0x3fe500841ede1199              # double 0.65631300000000004
	.quad	0x3ff7499bf5946c33              # double 1.455471
	.quad	0x401cf4a1ad6451b9              # double 7.2388979999999998
	.quad	0x4001e975afaf8594              # double 2.2389939999999999
	.quad	0x400b88a7a41e57da              # double 3.4417260000000001
	.quad	0x3feb620685553ef7              # double 0.85571600000000003
	.quad	0x4020d22036006d0d              # double 8.4104019999999995
	.quad	0x401f3be4473cd573              # double 7.8084879999999996
	.quad	0x4022e5ce7cd03537              # double 9.4488409999999998
	.quad	0x3fc4ffa7eb6bf445              # double 0.164052
	.quad	0x3fd3d5171e29b6b3              # double 0.30988100000000002
	.quad	0x401ae7fe8ee6b830              # double 6.7265569999999997
	.quad	0x401aeb224aada33c              # double 6.7296230000000001
	.quad	0x401413cf2cf95d4f              # double 5.0193450000000004
	.quad	0x4009cd0c3d25247d              # double 3.2251210000000001
	.quad	0x40071b530ced4e4d              # double 2.8883420000000002
	.quad	0x3ffda89ca18bd662              # double 1.8536649999999999
	.quad	0x3fd08c32a8c9b845              # double 0.25855699999999998
	.quad	0x40221ce48626f60e              # double 9.0564309999999999
	.quad	0x400185e13b18dac2              # double 2.1903709999999998
	.quad	0x4022ee90364388ec              # double 9.4659440000000003
	.quad	0x402361960fa15db3              # double 9.6905979999999996
	.quad	0x401b2d0dcfcc5b8e              # double 6.7939980000000002
	.quad	0x4023f3929ed3953e              # double 9.9757280000000002
	.quad	0x4021f7f865d7cb2e              # double 8.9843170000000008
	.quad	0x3ff03f3bea91d9b2              # double 1.0154380000000001
	.quad	0x4004c45803cd141a              # double 2.5958709999999998
	.quad	0x4008986b15f88fc9              # double 3.0744229999999999
	.quad	0x4013197bfa4c61d8              # double 4.7748869999999997
	.quad	0x4022eccb1897a67a              # double 9.4624869999999994
	.quad	0x40113765ba6efc37              # double 4.3040989999999999
	.quad	0x400dff6a0dbad3a6              # double 3.749714
	.quad	0x40212a71fff79c84              # double 8.5829009999999996
	.quad	0x4022185db76b3bb8              # double 9.0475899999999996
	.quad	0x401b715a8deb0fae              # double 6.860697
	.quad	0x401ae54b05b7cfe6              # double 6.7239190000000004
	.quad	0x3fe236fe2e6ea854              # double 0.56921299999999997
	.quad	0x400e8003254e6e22              # double 3.812506
	.quad	0x40212aae297396d1              # double 8.5833600000000008
	.quad	0x4021ed22c881e471              # double 8.9631559999999997
	.quad	0x40052ec8d5c74752              # double 2.6478440000000001
	.quad	0x3ff01107faa044af              # double 1.0041580000000001
	.quad	0x400451151611ba3d              # double 2.5395910000000002
	.quad	0x4015db5a63f9a49c              # double 5.4642119999999998
	.quad	0x40204999567dbb17              # double 8.1437480000000004
	.quad	0x40198d6777079e5a              # double 6.38809
	.quad	0x3fd5d2bf5515054b              # double 0.34098800000000001
	.quad	0x4020d138bcdfefbf              # double 8.4086359999999996
	.quad	0x40019adea897635e              # double 2.2006199999999998
	.quad	0x400c41dfb9389b52              # double 3.532165
	.quad	0x4022ca491afc04c9              # double 9.3950890000000004
	.quad	0x4009a8f6cefed634              # double 3.2075019999999999
	.quad	0x40084b3fe9fadafd              # double 3.036743
	.quad	0x40003ea8112ba16e              # double 2.0305939999999998
	.quad	0x40223b8da3c21188              # double 9.1163150000000002
	.quad	0x40193ffda4052d66              # double 6.3124909999999996
	.quad	0x4013f1682f944242              # double 4.9857490000000002
	.quad	0x3ff0a599ed7c6fbd              # double 1.04043
	.quad	0x40184c560c7c0f45              # double 6.0745469999999999
	.quad	0x40083aa2e3c536d6              # double 3.0286309999999999
	.quad	0x401556f5019f3c71              # double 5.3349190000000002
	.quad	0x4000e5b749adc8fc              # double 2.1121660000000002
	.quad	0x3fdef0b6b6e0d23d              # double 0.48344199999999998
	.quad	0x3fdeed45e9185cee              # double 0.48323199999999999
	.quad	0x400fa2cb20fb224b              # double 3.9544890000000001
	.quad	0x3ffd769984a0e411              # double 1.8414550000000001
	.quad	0x4013b5579af1886e              # double 4.927092
	.quad	0x40233335d249e450              # double 9.6000200000000007
	.quad	0x401e8917939a7c18              # double 7.6338790000000003
	.quad	0x401f4a6bd6e8af81              # double 7.8226769999999996
	.quad	0x4008939f340d4dc6              # double 3.0720809999999998
	.quad	0x3fff023c85c24c40              # double 1.9380459999999999
	.quad	0x401fc79b77c02afe              # double 7.9449290000000001
	.quad	0x4017b6f049a9973e              # double 5.9286510000000003
	.quad	0x4012f4c5974e65bf              # double 4.7390350000000003
	.quad	0x3ff9cb7e4de3b8a2              # double 1.6121810000000001
	.quad	0x4014420bc382a130              # double 5.0644980000000004
	.quad	0x3ff3e1f080303c08              # double 1.242661
	.quad	0x3ff05c2e33eff195              # double 1.022505
	.quad	0x4004eba7b9170d63              # double 2.6150660000000001
	.quad	0x3fe34c7f34938583              # double 0.60308799999999996
	.quad	0x3ff373ebbfd71b04              # double 1.2158009999999999
	.quad	0x4019c7585be1a826              # double 6.4446729999999999
	.quad	0x4020a8489d27c393              # double 8.3286789999999993
	.quad	0x400e5519bd4067cf              # double 3.791553
	.quad	0x401daba6aca79357              # double 7.4176279999999997
	.quad	0x3ffb1731098d477c              # double 1.6931620000000001
	.quad	0x401cc29b6b2af145              # double 7.1900459999999997
	.quad	0x3fdf19695d91ab8f              # double 0.48592600000000002
	.quad	0x3fdbcd7cf5f4e443              # double 0.434417
	.quad	0x40001fa76534373f              # double 2.0154559999999999
	.quad	0x3fff5f2990f301eb              # double 1.9607330000000001
	.quad	0x4016e7b45f17bd8c              # double 5.7262740000000001
	.quad	0x3fece412cf0f9d2c              # double 0.902841
	.quad	0x3febfbc5de9c022a              # double 0.87448400000000004
	.quad	0x3ff5ea91d9b1b79e              # double 1.3697680000000001
	.quad	0x401246c8f7553693              # double 4.5691259999999998
	.quad	0x40053f0995aaf790              # double 2.65578
	.quad	0x40200c95bff04578              # double 8.0245800000000003
	.quad	0x40119341e14bdfd2              # double 4.3938059999999997
	.quad	0x401c7a847b24638d              # double 7.1196460000000004
	.quad	0x3fdef7ced916872b              # double 0.483875
	.quad	0x4006a95182a9930c              # double 2.8326750000000001
	.quad	0x401f6c6cdaf4adbc              # double 7.8558839999999996
	.quad	0x401147f3061c79b3              # double 4.3202629999999997
	.quad	0x3ffb40e065300581              # double 1.7033389999999999
	.quad	0x40075a99fa11a976              # double 2.9192390000000001
	.quad	0x3ff76d1aeb3dd11c              # double 1.464137
	.quad	0x40128cc100e6afcd              # double 4.6374550000000001
	.quad	0x3fed02c6ef3d3a1d              # double 0.90658899999999998
	.quad	0x3fddc33b5393250b              # double 0.46504099999999998
	.quad	0x3ffc3151e75360d0              # double 1.762041
	.quad	0x400995bff04577d9              # double 3.1981199999999999
	.quad	0x3ffc138bcdfefbf4              # double 1.754772
	.quad	0x402281f1cfbb9496              # double 9.2537979999999997
	.quad	0x3fd73acd5b6805a3              # double 0.36296400000000001
	.quad	0x4020534b2fa93af7              # double 8.1626829999999995
	.quad	0x40236a8a82a5614e              # double 9.7080880000000001
	.quad	0x4019d76295208e15              # double 6.460337
	.quad	0x40032a32f4491299              # double 2.3956050000000002
	.quad	0x402312d77318fc50              # double 9.5367999999999995
	.quad	0x3fcb97353b4b2fa9              # double 0.21555199999999999
	.quad	0x400b4b2074ea8da8              # double 3.411683
	.quad	0x401968dfbd6a593a              # double 6.3524159999999998
	.quad	0x40011abda0dfdef8              # double 2.1380569999999999
	.quad	0x401ca62456f75d9a              # double 7.1622479999999999
	.quad	0x3ff2c00a7c5ac472              # double 1.1718850000000001
	.quad	0x40229f9335d249e4              # double 9.3116699999999994
	.quad	0x4016f0d5a5b9628d              # double 5.7351900000000002
	.quad	0x4016075f2cb64170              # double 5.507199
	.quad	0x40055574f722e1ac              # double 2.6667269999999998
	.quad	0x40146a808c8259e2              # double 5.104006
	.quad	0x40138649906cca2e              # double 4.8811400000000003
	.quad	0x401a62c2374794ea              # double 6.596444
	.quad	0x3ffaf9ae0c176577              # double 1.6859569999999999
	.quad	0x400b63419e300150              # double 3.4234650000000002
	.quad	0x3ff04a4a05dd8f93              # double 1.0181370000000001
	.quad	0x402392b302f72b45              # double 9.7865219999999997
	.quad	0x4023fe81a9b8cb8e              # double 9.9970829999999999
	.quad	0x400fb420b3d4ae43              # double 3.9629530000000002
	.quad	0x401b4a5657fb6998              # double 6.8225949999999997
	.quad	0x40045bf8b9baa151              # double 2.5449079999999999
	.quad	0x400d5dda8bd230ba              # double 3.6708270000000001
	.quad	0x40102bc408d8ec96              # double 4.0427400000000002
	.quad	0x400a533a8a3f8983              # double 3.2906390000000001
	.quad	0x401bf2cc70867ad9              # double 6.9871080000000001
	.quad	0x4007edd26b723ee2              # double 2.9911240000000001
	.quad	0x3fc718a009f62307              # double 0.18043899999999999
	.quad	0x4018e4152b0a6fc6              # double 6.2227370000000004
	.quad	0x401a6d55a3a08399              # double 6.6067720000000003
	.quad	0x401c50ecfa69be0a              # double 7.0790290000000002
	.quad	0x401d66a444178705              # double 7.3502359999999998
	.quad	0x4005bf4d37c1376d              # double 2.7184089999999999
	.quad	0x400c5cba30121683              # double 3.545277
	.quad	0x401ec8feef5ec80c              # double 7.6962849999999996
	.quad	0x40207c21c044284e              # double 8.242445
	.quad	0x401e4e978d4fdf3b              # double 7.5767499999999996
	.quad	0x3ffce9595feda661              # double 1.80697
	.quad	0x400084dec1c1d6d0              # double 2.0648780000000002
	.quad	0x4020f437a3db3bfb              # double 8.4769869999999994
	.quad	0x40012acb85a4f00f              # double 2.145896
	.quad	0x402031d3cbc48f11              # double 8.0973190000000006
	.quad	0x401c84a38327674d              # double 7.1295299999999999
	.quad	0x40139fb43d89ce4a              # double 4.9059609999999996
	.quad	0x3feaa2595bbbe879              # double 0.832318
	.quad	0x401b71c2a0232096              # double 6.8610939999999996
	.quad	0x401131600f34506a              # double 4.2982180000000003
	.quad	0x3ff2d9c27e953155              # double 1.178164
	.quad	0x40103cc63f141206              # double 4.0593500000000002
	.quad	0x40131c7ffde7210c              # double 4.7778320000000001
	.quad	0x4000228cbd1244a6              # double 2.0168699999999999
	.quad	0x3ff57eb9e492bc30              # double 1.343439
	.quad	0x3ff46cbea4ebdd33              # double 1.2765489999999999
	.quad	0x40183d4f5903a754              # double 6.0598729999999996
	.quad	0x3ff7f57f737da61e              # double 1.497436
	.quad	0x3ffaf48909289dae              # double 1.684701
	.quad	0x401de275ee99a62f              # double 7.4711530000000002
	.quad	0x40098fcdee34fc61              # double 3.195217
	.quad	0x40058feb4a66559f              # double 2.6952729999999998
	.quad	0x402127ae5796bfcb              # double 8.5775020000000008
	.quad	0x3ff86e4e26d4801f              # double 1.5269299999999999
	.quad	0x401f618f81e8a2ec              # double 7.8452739999999999
	.quad	0x401f868db8bac711              # double 7.8814000000000001
	.quad	0x4011fbe33acd5b68              # double 4.495984
	.quad	0x400047d3d4280ae1              # double 2.035072
	.quad	0x4022255f3519bd40              # double 9.0729919999999992
	.quad	0x400d10cdc8754f37              # double 3.6332049999999998
	.quad	0x40220779207d4e09              # double 9.0145959999999992
	.quad	0x401bf8c5c9a34ca1              # double 6.9929420000000002
	.quad	0x401d03ee1bd1ed9e              # double 7.253838
	.quad	0x400139e16d6dc1a4              # double 2.1532619999999998
	.quad	0x40036425aee631f9              # double 2.4239000000000002
	.quad	0x401e9f01754b05b8              # double 7.6552790000000001
	.quad	0x3fcba2cecc814d72              # double 0.21590599999999999
	.quad	0x4023efb71fbc5dea              # double 9.9681940000000004
	.quad	0x4020f2839042d8c3              # double 8.4736600000000006
	.quad	0x40202e2f5989df11              # double 8.0902049999999992
	.quad	0x4021b3e425aee632              # double 8.8513500000000001
	.quad	0x4022560b2c83ec89              # double 9.1680539999999997
	.quad	0x3fca43914f483cb0              # double 0.20518700000000001
	.quad	0x3fff25bd944aa540              # double 1.9467140000000001
	.quad	0x3ff8b2a27f1b6912              # double 1.543612
	.quad	0x4020082d16b97fe9              # double 8.0159690000000001
	.quad	0x40223468ec52a412              # double 9.1023630000000004
	.quad	0x3fdef9a8cdea033e              # double 0.48398799999999997
	.quad	0x4020616228134480              # double 8.1902019999999993
	.quad	0x4016c7d73c925786              # double 5.695157
	.quad	0x3ffb4c2e770bd018              # double 1.706099
	.quad	0x3fd1c3bd5992428d              # double 0.27757199999999999
	.quad	0x402006fd86a8fc0d              # double 8.0136529999999997
	.quad	0x4013630caa326e11              # double 4.8467279999999997
	.quad	0x4021ab51372a38b9              # double 8.8346040000000006
	.quad	0x400293a81dc0db27              # double 2.322098
	.quad	0x4023ab4dcebfec14              # double 9.8345780000000004
	.quad	0x401bf6da87a072d2              # double 6.9910680000000003
	.quad	0x4008e108c3f3e037              # double 3.10988
	.quad	0x401fdabda0dfdef8              # double 7.9636139999999997
	.quad	0x400231df761cbccf              # double 2.2743519999999999
	.quad	0x401e54a9cdc44391              # double 7.5826789999999997
	.quad	0x400d43d89ce4a7b5              # double 3.658128
	.quad	0x400eb9463cfb3312              # double 3.8404660000000002
	.quad	0x40231f81a5870da6              # double 9.5615360000000003
	.quad	0x40120919695d91ac              # double 4.5088860000000004
	.quad	0x4022b0f53c579f23              # double 9.3456209999999995
	.quad	0x3fe83f5b5fa22707              # double 0.75773400000000002
	.quad	0x400ce6a550870111              # double 3.6126200000000002
	.quad	0x4014ffcbd556084a              # double 5.2498009999999997
	.quad	0x3fe126394face67d              # double 0.53591599999999995
	.quad	0x4021909e34330d74              # double 8.7824570000000008
	.quad	0x4008431d712a0ec7              # double 3.0327709999999999
	.quad	0x4018488b11409a24              # double 6.070843
	.quad	0x401a953111f0c34c              # double 6.6456949999999999
	.quad	0x3ff0b090f733a8a4              # double 1.043107
	.quad	0x4022e9b0468448cf              # double 9.4564229999999991
	.quad	0x4022c964e8b7e4de              # double 9.3933479999999996
	.quad	0x401b81a2a4db163c              # double 6.8765970000000003
	.quad	0x402149a8ac5c13fd              # double 8.6438649999999999
	.quad	0x3fd29524bfd2e947              # double 0.29035300000000003
	.quad	0x401e9c9107faa045              # double 7.6528970000000002
	.quad	0x401177ed41b75a75              # double 4.3671160000000002
	.quad	0x4010a8c436fc1590              # double 4.1648110000000003
	.quad	0x400e14690de09353              # double 3.7599659999999999
	.quad	0x40233d67125dd096              # double 9.6199270000000006
	.quad	0x4013cea465a57647              # double 4.9517990000000003
	.quad	0x4021bc996b7670a0              # double 8.8683580000000006
	.quad	0x40226889a0275254              # double 9.2041749999999993
	.quad	0x4022f7820a30db6a              # double 9.4834139999999998
	.quad	0x40172f1a5ca29846              # double 5.7959990000000001
	.quad	0x400235dfeb8d8234              # double 2.2763059999999999
	.quad	0x402284942d490e67              # double 9.2589430000000004
	.quad	0x401bf9ff92f2b66b              # double 6.9941389999999997
	.quad	0x3fe26fd00713f078              # double 0.57614900000000002
	.quad	0x401dece8101f31f4              # double 7.4813539999999996
	.quad	0x40031dd54da4ce81              # double 2.389567
	.quad	0x400a58f0c77dd873              # double 3.293428
	.quad	0x4010692c8c5004fb              # double 4.1027089999999999
	.quad	0x3fee3e6601bc98a2              # double 0.94511699999999998
	.quad	0x400aee85b9e8c47a              # double 3.366466
	.quad	0x401f5b5393250b52              # double 7.8391859999999998
	.quad	0x3fe954c985f06f69              # double 0.79159999999999997
	.quad	0x40049913e81450f0              # double 2.5747450000000001
	.quad	0x4023e536b4c7f349              # double 9.9476829999999996
	.quad	0x3fcd59e6256366d8              # double 0.22930600000000001
	.quad	0x4023f0a5269595ff              # double 9.9700100000000002
	.quad	0x401cf259e1f3a57f              # double 7.2366710000000003
	.quad	0x402025512ec6bce8              # double 8.0728849999999994
	.quad	0x400abf64cf8d716d              # double 3.3434539999999999
	.quad	0x3ff92e536501e258              # double 1.5738099999999999
	.quad	0x4003d5807fed2029              # double 2.4792489999999998
	.quad	0x3fecb8066c2acb86              # double 0.89746400000000004
	.quad	0x40120857f3061c7a              # double 4.5081480000000003
	.quad	0x4002eb2e9ccb7d41              # double 2.3648349999999998
	.quad	0x3fe9e42396073de2              # double 0.80909900000000001
	.quad	0x401206df3f961805              # double 4.5067110000000001
	.quad	0x401b89802c0a4a06              # double 6.8842780000000001
	.quad	0x4017f6e04c059210              # double 5.9910899999999998
	.quad	0x4017d06bbdbe3c10              # double 5.9535359999999997
	.quad	0x40237aada33bd9cb              # double 9.7396060000000002
	.quad	0x401004de3b8a19ca              # double 4.0047540000000001
	.quad	0x40154f58c08b75ea              # double 5.3274869999999996
	.quad	0x40167a67620ee8d1              # double 5.6195349999999999
	.quad	0x402284f0b6b6e0d2              # double 9.2596489999999996
	.quad	0x401dc636f3b213e4              # double 7.4435690000000001
	.quad	0x401019392189bd84              # double 4.0246320000000004
	.quad	0x3f78cc144028e4fc              # double 0.0060540000000000004
	.quad	0x400b326e115592da              # double 3.3996240000000002
	.quad	0x4020870867ad8e43              # double 8.2637359999999997
	.quad	0x401b99129888f862              # double 6.8994850000000003
	.quad	0x40214cb33daf8df8              # double 8.6498050000000006
	.quad	0x4020da3897204296              # double 8.4262130000000006
	.quad	0x401f8c0db2702a35              # double 7.8867710000000004
	.quad	0x3ff99a78f25a2510              # double 1.6002130000000001
	.quad	0x4022125d4a5df224              # double 9.0358680000000006
	.quad	0x401f9f20ea5b530d              # double 7.905399
	.quad	0x4021f0589acbc8c1              # double 8.9694260000000003
	.quad	0x400952849cb252ce              # double 3.165292
	.quad	0x401ccfd2e9468017              # double 7.2029529999999999
	.quad	0x4013ee8427418d69              # double 4.982926
	.quad	0x400efca643cc07ab              # double 3.873364
	.quad	0x402307b71fbc5dea              # double 9.5150690000000004
	.quad	0x4022ee746cb966be              # double 9.4657319999999991
	.quad	0x4010acbab649d389              # double 4.1686810000000003
	.quad	0x40121d27807789a4              # double 4.5284709999999997
	.quad	0x3ff390c9107faa04              # double 1.2228479999999999
	.quad	0x401fa980f55de58e              # double 7.9155309999999997
	.quad	0x4013b7564302b40f              # double 4.9290399999999996
	.quad	0x401c9878316a0557              # double 7.1488959999999997
	.quad	0x3ff9ab649d388a8b              # double 1.604344
	.quad	0x401485675579af19              # double 5.1302770000000004
	.quad	0x4017e7268d32830a              # double 5.975733
	.quad	0x401a31611ba3ca75              # double 6.548222
	.quad	0x40170fdfc19c1722              # double 5.7655019999999997
	.quad	0x4014ce3715400325              # double 5.2013819999999997
	.quad	0x4022c60653005815              # double 9.3867670000000007
	.quad	0x4023ebef6b5d462c              # double 9.9608109999999996
	.quad	0x4020f205ff1d81f1              # double 8.472702
	.quad	0x401add373affb04f              # double 6.7160310000000001
	.quad	0x4010d4178705425f              # double 4.2071209999999999
	.quad	0x400b4e3f78bbd380              # double 3.4132069999999999
	.quad	0x3ff5e2120e1f7d74              # double 1.367693
	.quad	0x400eadd377e1b8ed              # double 3.834876
	.quad	0x4009327fe4bcad9b              # double 3.1496580000000001
	.quad	0x40135b8348f53c58              # double 4.8393680000000003
	.quad	0x3fe021e603d57796              # double 0.50413799999999998
	.quad	0x401fcde82d7b634e              # double 7.9510810000000003
	.quad	0x4020272389720429              # double 8.0764429999999994
	.quad	0x3fb925785f8d2e51              # double 0.098227999999999996
	.quad	0x40150aa9f7b5aea3              # double 5.2604139999999999
	.quad	0x4023cd653c9abb02              # double 9.9011630000000004
	.quad	0x402013cf70153bd1              # double 8.0386919999999993
	.quad	0x3fc711be6e653869              # double 0.180229
	.quad	0x400200a958537e2c              # double 2.2503229999999999
	.quad	0x4001b33f42352eb6              # double 2.212523
	.quad	0x400f9ab10ba62670              # double 3.9505330000000001
	.quad	0x401b5a06a6e32e38              # double 6.8379159999999999
	.quad	0x401e85b18548a9bd              # double 7.63056
	.quad	0x401383b0c4588a05              # double 4.8786040000000002
	.quad	0x40124e61cffeb075              # double 4.5765450000000003
	.quad	0x4011e2fc2656abde              # double 4.4716649999999998
	.quad	0x40044fa93af74cd3              # double 2.538897
	.quad	0x3ff3a9b5a63f9a4a              # double 1.2289330000000001
	.quad	0x4011bb734b51372a              # double 4.4330569999999998
	.quad	0x401fa8650e779208              # double 7.9144480000000001
	.quad	0x4018151eb851eb85              # double 6.0206249999999999
	.quad	0x400dac7325918a01              # double 3.7092040000000002
	.quad	0x401a0a582dbe7f2c              # double 6.5101019999999998
	.quad	0x40214b44806290ef              # double 8.6470070000000003
	.quad	0x4023d0b5675579af              # double 9.9076339999999998
	.quad	0x3ff9ad8b1dd5d3dd              # double 1.6048690000000001
	.quad	0x400baed1bf7ad4b2              # double 3.4603609999999998
	.quad	0x4008e6c332f01755              # double 3.1126770000000001
	.quad	0x400e415b1422ccb4              # double 3.7819120000000002
	.quad	0x4021b8f062d40aaf              # double 8.8612090000000006
	.quad	0x40230c17225b749b              # double 9.5236140000000002
	.quad	0x4020ac050bd87b57              # double 8.3359760000000005
	.quad	0x401764c9c90c4dec              # double 5.8484259999999999
	.quad	0x40132ae21101b003              # double 4.7918779999999996
	.quad	0x3ff11b62c77574f7              # double 1.069186
	.quad	0x3ff383361565c2d2              # double 1.2195339999999999
	.quad	0x3fe5191dde37585c              # double 0.65931600000000001
	.quad	0x4021b3702602c908              # double 8.8504649999999998
	.quad	0x400e374927913e81              # double 3.7769949999999999
	.quad	0x3f98be7296f6512b              # double 0.024164000000000001
	.quad	0x401268dda48b6523              # double 4.6024079999999996
	.quad	0x4013e12f901083dc              # double 4.9699080000000002
	.quad	0x3ff05130df9bdc6a              # double 1.019822
	.quad	0x3ff0245a1cac0831              # double 1.008875
	.quad	0x40127a1f8e3ac0c6              # double 4.6192609999999998
	.quad	0x402063c925785f8d              # double 8.1948939999999997
	.quad	0x401832756861e929              # double 6.0492759999999999
	.quad	0x4002fa0620ab7132              # double 2.3720819999999998
	.quad	0x4000046412cf0f9d              # double 2.0021439999999999
	.quad	0x4021d83f91e646f1              # double 8.9223599999999994
	.quad	0x4009149f94855da2              # double 3.1350699999999998
	.quad	0x401e02c061847f56              # double 7.5026869999999999
	.quad	0x402017eae5bc87db              # double 8.0467139999999997
	.quad	0x402290b71b8aa002              # double 9.2826470000000008
	.quad	0x4014e7aa68f4b620              # double 5.2262360000000001
	.quad	0x401ae7c4199fe436              # double 6.7263339999999996
	.quad	0x401c44d3bf2f5558              # double 7.0672139999999999
	.quad	0x3ff676c3760bf5d8              # double 1.4039950000000001
	.quad	0x40208da63f9a49c3              # double 8.2766590000000004
	.quad	0x4008866b1e5c0b9a              # double 3.0656340000000002
	.quad	0x402091552e2fbe34              # double 8.2838530000000005
	.quad	0x401a20dcfcc5b8dc              # double 6.5320929999999997
	.quad	0x4015bb29a1b9f98b              # double 5.4327759999999996
	.quad	0x3fdce39713ad5bee              # double 0.45139099999999999
	.quad	0x400b0fbeb9e492bc              # double 3.3826879999999999
	.quad	0x3fe85f090f733a8a              # double 0.76160099999999997
	.quad	0x4009b82ba5a03819              # double 3.2149269999999999
	.quad	0x4006df2ba9d1f601              # double 2.8589699999999998
	.quad	0x401a1543f1c75819              # double 6.5207670000000002
	.quad	0x3ff538ef34d6a162              # double 1.3264
	.quad	0x40175d113836a833              # double 5.8408860000000002
	.quad	0x401dfb6dca07f66f              # double 7.4955360000000004
	.quad	0x40143906cca2db62              # double 5.0556900000000002
	.quad	0x3ff064ba94bbe447              # double 1.0245919999999999
	.quad	0x401aa7f0aa21a71a              # double 6.6640040000000003
	.quad	0x40214252ce032db2              # double 8.6295380000000002
	.quad	0x400f99b66f9335d2              # double 3.9500549999999999
	.quad	0x400f58372e6a7696              # double 3.9180739999999998
	.quad	0x401b61d4738a3b58              # double 6.8455370000000002
	.quad	0x4023491e646f1562              # double 9.6428100000000008
	.quad	0x4013c1beb18116ec              # double 4.9392040000000001
	.quad	0x4022d4a8e2e2b8c7              # double 9.4153509999999993
	.quad	0x400b8027d88c1db0              # double 3.437576
	.quad	0x4021ba30db6a1e82              # double 8.8636540000000004
	.quad	0x40110b691212513b              # double 4.2611429999999997
	.quad	0x40200882278d0cc3              # double 8.0166179999999994
	.quad	0x3ffb4473cd573648              # double 1.7042120000000001
	.quad	0x400def09528f190d              # double 3.741717
	.quad	0x40102995aaf78fef              # double 4.04061
	.quad	0x401628dde7a743a6              # double 5.5399089999999998
	.quad	0x40200a01040bfe3b              # double 8.019539
	.quad	0x40207ccbe1eb4203              # double 8.2437430000000003
	.quad	0x4006220f6f08cc57              # double 2.7666309999999998
	.quad	0x4001d6d19dece571              # double 2.229892
	.quad	0x40200284167a95c8              # double 8.0049139999999994
	.quad	0x4023fdd462c343b7              # double 9.9957609999999998
	.quad	0x4023f7d2849cb253              # double 9.9840280000000003
	.quad	0x401e746cb966be7b              # double 7.613696
	.quad	0x4021db4d056c508b              # double 8.9283219999999996
	.quad	0x3fff9ea78af3e469              # double 1.976234
	.quad	0x4019c0f27bb2fec5              # double 6.4384249999999996
	.quad	0x401abdbca9691a76              # double 6.6852900000000002
	.quad	0x4013e73647baa9b5              # double 4.9757930000000004
	.quad	0x4010d983947496ab              # double 4.2124160000000002
	.quad	0x3ff1e876e1deacc9              # double 1.119254
	.quad	0x4007dfab96f21f6d              # double 2.9842140000000001
	.quad	0x40161ca2db61bb06              # double 5.527965
	.quad	0x401901ed5ae1cde6              # double 6.2518820000000002
	.quad	0x4003e39d5e4a3832              # double 2.4861399999999998
	.quad	0x40089124d099e0e7              # double 3.0708709999999999
	.quad	0x40128777d0f1f57b              # double 4.6322929999999998
	.quad	0x401650b4e11dbca9              # double 5.5788149999999996
	.quad	0x401fc9a73b42cc2d              # double 7.9469269999999996
	.quad	0x40193455a7d24181              # double 6.3011080000000002
	.quad	0x401205bff04577d9              # double 4.5056149999999997
	.quad	0x3ff58dc011d3671b              # double 1.3471070000000001
	.quad	0x40154e40420f6f09              # double 5.3264170000000002
	.quad	0x40032560c7c0f451              # double 2.3932509999999998
	.quad	0x3fcb7b5286b59147              # double 0.214701
	.quad	0x401313f3e0370cdd              # double 4.7694850000000004
	.quad	0x3fea38d60a633051              # double 0.819438
	.quad	0x400973fa6defc7a4              # double 3.1816300000000002
	.quad	0x4018e168b5cbff47              # double 6.2201259999999996
	.quad	0x40037ae2541d8e86              # double 2.4350019999999999
	.quad	0x401d6cc8de2ac322              # double 7.3562349999999999
	.quad	0x40238b75ea67e847              # double 9.7723840000000006
	.quad	0x4005c272862f598a              # double 2.7199450000000001
	.quad	0x3febb53b4b2fa93b              # double 0.865873
	.quad	0x402099059ea57215              # double 8.2988710000000001
	.quad	0x4021a68b5cbff477              # double 8.8252819999999996
	.quad	0x402382f1a9fbe76d              # double 9.7557500000000008
	.quad	0x401d204534bd76ee              # double 7.2815139999999996
	.quad	0x401108f08461f9f0              # double 4.2587299999999999
	.quad	0x4023a0c8472c0e7c              # double 9.8140280000000004
	.quad	0x401904152b0a6fc6              # double 6.2539870000000004
	.quad	0x401c3b4a66559f6f              # double 7.0579010000000002
	.quad	0x401d1a32b12d3416              # double 7.2755840000000003
	.quad	0x4021458c08b75ea6              # double 8.6358339999999991
	.quad	0x4019f63800218def              # double 6.4904479999999998
	.quad	0x401ff4f8b588e369              # double 7.98923
	.quad	0x3ff8f3387160956c              # double 1.55938
	.quad	0x401764873365881a              # double 5.8481719999999999
	.quad	0x401f05ab7dc7abfc              # double 7.7555370000000003
	.quad	0x400be8af81626b2f              # double 3.4886159999999999
	.quad	0x3fd310d38cda6e76              # double 0.297902
	.quad	0x40052d23d4f15e7d              # double 2.6470410000000002
	.quad	0x401d2240fa9c12f1              # double 7.2834510000000003
	.quad	0x4021de5e89225311              # double 8.9343149999999998
	.quad	0x4022a295c853c148              # double 9.3175489999999996
	.quad	0x4013c22b7baecd08              # double 4.9396190000000004
	.quad	0x400f206530058149              # double 3.8908179999999999
	.quad	0x4021a92d77318fc5              # double 8.830425
	.quad	0x4003e2a80064a9ce              # double 2.4856720000000001
	.quad	0x4022467903211cb0              # double 9.1376419999999996
	.quad	0x400ac1a261bf37b9              # double 3.3445480000000001
	.quad	0x4017501c4fc1df33              # double 5.828233
	.quad	0x4011256191148fda              # double 4.286505
	.quad	0x400f5a35d67ba238              # double 3.9190480000000001
	.quad	0x4023558298cc1440              # double 9.6670119999999997
	.quad	0x401659c2c1b10fd8              # double 5.5876570000000001
	.quad	0x3ffdd71c10d7be98              # double 1.8650169999999999
	.quad	0x402041f10667f90e              # double 8.1287920000000007
	.quad	0x4012240c4156e265              # double 4.5352030000000001
	.quad	0x401a70c1333b96af              # double 6.610112
	.quad	0x400a1e86833c6003              # double 3.2649050000000002
	.quad	0x4016636eb4e98138              # double 5.5971019999999996
	.quad	0x4021c00e8c8abd5e              # double 8.8751110000000004
	.quad	0x4004c01711947cfa              # double 2.5937939999999999
	.quad	0x3ff554f8b588e369              # double 1.333245
	.quad	0x4020f689a88ace25              # double 8.4815190000000005
	.quad	0x4022a74fd6d7e88a              # double 9.3267810000000004
	.quad	0x40051e132b55ef20              # double 2.6396850000000001
	.quad	0x401ca195464dc22b              # double 7.1577960000000003
	.quad	0x400f29e44fa05144              # double 3.8954550000000001
	.quad	0x401f1b3892ee84ad              # double 7.7765829999999995
	.quad	0x400e6533b1077469              # double 3.7994150000000002
	.quad	0x401e48094e5d5b25              # double 7.570348
	.quad	0x401b624399b2c40d              # double 6.845961
	.quad	0x4010db413986338b              # double 4.2141159999999998
	.quad	0x3fea894a2b9d3cbc              # double 0.82925899999999996
	.quad	0x40212e5cb35f3d7d              # double 8.5905509999999996
	.quad	0x3fedcfbdad7518b1              # double 0.93160900000000002
	.quad	0x4021058d9b5e95b8              # double 8.5108460000000008
	.quad	0x400e436c15d2d01c              # double 3.782921
	.quad	0x40085f737da61e0c              # double 3.0466069999999998
	.quad	0x4000e0a06e9ff0cc              # double 2.1096810000000001
	.quad	0x401bb4449dbec248              # double 6.9260429999999999
	.quad	0x3ffabad2999567dc              # double 1.6706110000000001
	.quad	0x402019670196d8f5              # double 8.049614
	.quad	0x40187012dfd694cd              # double 6.1094470000000003
	.quad	0x400150614163779f              # double 2.1642480000000002
	.quad	0x3fe7ad7f950b955f              # double 0.73992899999999995
	.quad	0x401d37c1bda5119d              # double 7.3044500000000001
	.quad	0x40238a24cc6822ff              # double 9.7698119999999999
	.quad	0x3ff9b1b584b1ab08              # double 1.6058859999999999
	.quad	0x3ff1369fcf3dc055              # double 1.075836
	.quad	0x401b80ba1f4b1ee2              # double 6.8757099999999998
	.quad	0x4021e840e1719f80              # double 8.9536200000000008
	.quad	0x3ff7764adff822bc              # double 1.46638
	.quad	0x3ffcf4a87e38eb03              # double 1.809731
	.quad	0x400231a005c4651f              # double 2.2742309999999999
	.quad	0x4000c95bff04577e              # double 2.0983200000000002
	.quad	0x400c2ea8da7f3cf7              # double 3.522783
	.quad	0x40235243dccea290              # double 9.6606740000000002
	.quad	0x4010d01d19157abc              # double 4.2032360000000004
	.quad	0x4019b107314ca926              # double 6.422879
	.quad	0x4017b4295a6c5d20              # double 5.9259389999999996
	.quad	0x3ff7a4873365881a              # double 1.477668
	.quad	0x4020cc25072085b2              # double 8.3987200000000009
	.quad	0x4022712af9a8cdea              # double 9.221031
	.quad	0x400cee84ad794a6f              # double 3.6164640000000001
	.quad	0x40076ec4a4095f24              # double 2.9290859999999999
	.quad	0x4022233b320535ca              # double 9.0688110000000002
	.quad	0x3ff1bf0cbaf965b2              # double 1.109143
	.quad	0x4023d7ce0fc2eba2              # double 9.9214939999999991
	.quad	0x401eb83558a76102              # double 7.6798909999999996
	.quad	0x4021bd55a3a08399              # double 8.8697940000000006
	.quad	0x40139ffbce4217d3              # double 4.9062340000000004
	.quad	0x40132f6e82949a56              # double 4.7963199999999997
	.quad	0x4021d541fa765343              # double 8.9165189999999992
	.quad	0x401b1bbe4473cd57              # double 6.7770929999999998
	.quad	0x40174a2e3c536d65              # double 5.8224419999999997
	.quad	0x3ffc6aca79357604              # double 1.7760720000000001
	.quad	0x401781116a8b8f15              # double 5.8760430000000001
	.quad	0x4012abb16c1e364c              # double 4.6676690000000001
	.quad	0x3fe8488e79aae6c9              # double 0.758857
	.quad	0x40160d75e2046c76              # double 5.5131449999999997
	.quad	0x40166355043e5322              # double 5.5970040000000001
	.quad	0x4020184a2fcefaa4              # double 8.0474409999999991
	.quad	0x400ebced0b30b5aa              # double 3.8422489999999998
	.quad	0x401bffbce4217d28              # double 6.9997439999999997
	.quad	0x401b8374ff865d7d              # double 6.8783760000000003
	.quad	0x401c6307f23cc8de              # double 7.0967099999999999
	.quad	0x401c0100e6afcce2              # double 7.0009800000000002
	.quad	0x401a0e0f7fcfc3f8              # double 6.5137309999999999
	.quad	0x3feef4afd5454153              # double 0.96736900000000003
	.quad	0x3ff86915379fa97e              # double 1.525655
	.quad	0x4018c07075b3e143              # double 6.1879289999999996
	.quad	0x401eaf922962cfd9              # double 7.671456
	.quad	0x400d39389b52007e              # double 3.6529400000000001
	.quad	0x4009fff79c842fa5              # double 3.249984
	.quad	0x3fc0b75ea67e846a              # double 0.13059599999999999
	.quad	0x3f9887ebf22c01e7              # double 0.023956000000000002
	.quad	0x401645158b827fa2              # double 5.5674650000000003
	.quad	0x401dc36c58eeae9f              # double 7.4408430000000001
	.quad	0x40131b923a29c77a              # double 4.7769250000000003
	.quad	0x4021ce195464dc23              # double 8.9025370000000006
	.quad	0x3fd4fec56d5cfaad              # double 0.32805000000000001
	.quad	0x3ff9d90f301eabbd              # double 1.6154930000000001
	.quad	0x3ffca5881a1554fc              # double 1.790413
	.quad	0x401f3ea24cc68230              # double 7.8111660000000001
	.quad	0x3fc58e086bdf4c2b              # double 0.16839699999999999
	.quad	0x4004a0f7fcfc3f81              # double 2.5785979999999999
	.quad	0x401153854046412d              # double 4.3315630000000001
	.quad	0x401cb927913e8145              # double 7.1808149999999999
	.quad	0x40125d9f0a1be2b5              # double 4.5914270000000004
	.quad	0x3ff816ebd4cfd08d              # double 1.5055959999999999
	.quad	0x4016e5f84cad57bc              # double 5.7245799999999996
	.quad	0x402215d63886594b              # double 9.0426500000000001
	.quad	0x401a122f6a50d6b2              # double 6.5177589999999999
	.quad	0x400a13892ee84ad8              # double 3.2595390000000002
	.quad	0x3fefbc1eff9f87f0              # double 0.99171399999999998
	.quad	0x4020b90e453d20f3              # double 8.3614370000000005
	.quad	0x3fc085c24c404a73              # double 0.129082
	.quad	0x401a76a337a80cfa              # double 6.6158570000000001
	.quad	0x40232005a2d72ffd              # double 9.5625429999999997
	.quad	0x4021142374794ea0              # double 8.5393329999999992
	.quad	0x400371da37ef5a96              # double 2.4305919999999999
	.quad	0x40168cbff47735c2              # double 5.6374510000000004
	.quad	0x4019e2a0a958537e              # double 6.4713159999999998
	.quad	0x4013bea3df6db941              # double 4.936172
	.quad	0x40210d004fb1183b              # double 8.5253929999999993
	.quad	0x401fe31a8ef77f28              # double 7.971781
	.quad	0x401d0a5b530ced4e              # double 7.2601139999999997
	.quad	0x4023342c7fbacb43              # double 9.6019020000000008
	.quad	0x401e01dd5d3dc8b8              # double 7.5018209999999996
	.quad	0x400936073de1e2df              # double 3.1513810000000002
	.quad	0x4015aa6d698fe692              # double 5.4164329999999996
	.quad	0x3fc2916440f23897              # double 0.145062
	.quad	0x4003c220bc382a13              # double 2.469789
	.quad	0x401cd40bbb1f255f              # double 7.2070759999999998
	.quad	0x4012bf42bb6672fc              # double 4.6867780000000003
	.quad	0x4016efc0096feb4a              # double 5.7341309999999996
	.quad	0x3fd31d084e831ad2              # double 0.298647
	.quad	0x401f8b8cfbfc6541              # double 7.8862800000000001
	.quad	0x4018129cfdd22856              # double 6.0181769999999997
	.quad	0x3fed395810624dd3              # double 0.91325000000000001
	.quad	0x400d636976bc1f00              # double 3.6735410000000002
	.quad	0x3fe4865300581494              # double 0.64139699999999999
	.quad	0x4012d58a76102795              # double 4.7085359999999996
	.quad	0x3fea4d1a65061416              # double 0.82191199999999998
	.quad	0x40121841ede1198b              # double 4.5236890000000001
	.quad	0x40043a49c2c1b110              # double 2.5284610000000001
	.quad	0x400f4cbea4ebdd33              # double 3.9124729999999999
	.quad	0x400aa045baf533f4              # double 3.3282579999999999
	.quad	0x401385e5f30e7ff6              # double 4.8807600000000004
	.quad	0x40175ec84f8f8a4c              # double 5.8425609999999999
	.quad	0x3ff3168512231833              # double 1.192998
	.quad	0x401b73d20f2becee              # double 6.8631060000000002
	.quad	0x40102b4c7f349386              # double 4.0422840000000004
	.quad	0x3ff60578e5c4eb57              # double 1.376336
	.quad	0x4007fe33269df97b              # double 2.9991210000000001
	.quad	0x402339deacc92147              # double 9.6130270000000006
	.quad	0x402077f5e84f0953              # double 8.2342980000000008
	.quad	0x3fd5bbba55d1c3ad              # double 0.33958300000000002
	.quad	0x400642f837b4a234              # double 2.7827000000000002
	.quad	0x40172d00713f077d              # double 5.7939470000000002
	.quad	0x3ff50868b9fdbd30              # double 1.3145530000000001
	.quad	0x401e5ffb8b263950              # double 7.5937330000000003
	.quad	0x3ff225061416377a              # double 1.134039
	.quad	0x4020ee9ee45c358b              # double 8.466056
	.quad	0x401ed9620685553f              # double 7.712288
	.quad	0x4005cf9db22d0e56              # double 2.726375
	.quad	0x40222563a9f383f1              # double 9.0730260000000005
	.quad	0x401bcc1b54195cc8              # double 6.9493229999999997
	.quad	0x40187a6698bb4d49              # double 6.1195320000000004
	.quad	0x401d6d4cfd08d4bb              # double 7.3567390000000001
	.quad	0x4008d1a21ea35936              # double 3.10236
	.quad	0x401f088db0574b40              # double 7.7583529999999996
	.quad	0x4019c8c8eef1bac3              # double 6.4460790000000001
	.quad	0x3feae4dc22ab25b3              # double 0.84043699999999999
	.quad	0x4015113ad5bee3d6              # double 5.266826
	.quad	0x4012464d7f0ed3d8              # double 4.5686549999999997
	.quad	0x3fd89b413986338b              # double 0.38447599999999998
	.quad	0x3fc859d12cadddf4              # double 0.19024099999999999
	.quad	0x400c128bf3bea91e              # double 3.5090560000000002
	.quad	0x3fe89eadd590c0ad              # double 0.76937
	.quad	0x4008eda9003eea21              # double 3.1160450000000002
	.quad	0x40080d887ebf22c0              # double 3.0066079999999999
	.quad	0x3fe0367a0f9096bc              # double 0.50665000000000004
	.quad	0x402277ce95faa8a8              # double 9.2339979999999997
	.quad	0x4020fdfbb517a461              # double 8.4960609999999992
	.quad	0x401cf757928e0c9e              # double 7.2415450000000003
	.quad	0x4021b7f6d330941d              # double 8.8593050000000009
	.quad	0x400bc7f1b6912125              # double 3.472629
	.quad	0x4019d36bd2b6f199              # double 6.4564659999999998
	.quad	0x3fa9691a75cd0bb7              # double 0.049630000000000001
	.quad	0x400806ee30caa327              # double 3.0033840000000001
	.quad	0x4004aac083126e98              # double 2.5833750000000002
	.quad	0x402134be1eb4202e              # double 8.6030130000000007
	.quad	0x40176c486ad2dcb1              # double 5.8557449999999998
	.quad	0x401c162281344806              # double 7.0216159999999999
	.quad	0x3ff329435ac8a372              # double 1.1975739999999999
	.quad	0x40136de9c0229a5f              # double 4.8573370000000002
	.quad	0x3fec9af5ba2be059              # double 0.89391600000000004
	.quad	0x3ff8163022dd7a9a              # double 1.505417
	.quad	0x3fc578c436fc1590              # double 0.16774800000000001
	.quad	0x402182f6e82949a5              # double 8.7557899999999993
	.quad	0x3fee835bd512ec6c              # double 0.95353500000000002
	.quad	0x401295143bf72713              # double 4.6455849999999996
	.quad	0x4021edb2f661f18d              # double 8.9642560000000007
	.quad	0x4007b992c8c50050              # double 2.9656120000000001
	.quad	0x4020cabf9830e3ce              # double 8.3959930000000007
	.quad	0x4001c78183f91e64              # double 2.2224149999999998
	.quad	0x401c73f85510d38d              # double 7.1132520000000001
	.quad	0x4023315379fa97e1              # double 9.5963399999999996
	.quad	0x3fb3840181e03f70              # double 0.076232999999999995
	.quad	0x40172d15ad106ee3              # double 5.794028
	.quad	0x401701ae70c1333c              # double 5.7516420000000004
	.quad	0x3ff820d349be8ff3              # double 1.508014
	.quad	0x3fecfd955714b9cb              # double 0.90595499999999995
	.quad	0x401450fa9c12f09e              # double 5.0790810000000004
	.quad	0x40152a9691a75cd1              # double 5.2915900000000002
	.quad	0x3fee1600f345069a              # double 0.94018599999999997
	.quad	0x4011e2ff08893b7e              # double 4.4716760000000004
	.quad	0x40145ecbb7f9d6f1              # double 5.0925739999999999
	.quad	0x4001dc504816f007              # double 2.2325750000000002
	.quad	0x40201df97aaac109              # double 8.0585439999999995
	.quad	0x4023794dd72367e4              # double 9.7369219999999998
	.quad	0x3ff5c25aee631f8a              # double 1.35995
	.quad	0x400c3b05faebc409              # double 3.5288200000000001
	.quad	0x4022ff1ac14c660a              # double 9.4982509999999998
	.quad	0x40108ec5f394b7b3              # double 4.1394270000000004
	.quad	0x401786a0dbad3a60              # double 5.8814729999999997
	.quad	0x400e8cc9a77e5eab              # double 3.8187440000000001
	.quad	0x3fe987d4e09784ec              # double 0.79783099999999995
	.quad	0x401f2f67f4dbdf8f              # double 7.7962949999999997
	.quad	0x4018c5bd944aa540              # double 6.1931060000000002
	.quad	0x401819a2c669057d              # double 6.0250349999999999
	.quad	0x4020db9a7c17a893              # double 8.4289129999999997
	.quad	0x3fd1fb3fa6defc7a              # double 0.28095999999999999
	.quad	0x4002285c24c404a7              # double 2.2697069999999999
	.quad	0x4023d887229e9079              # double 9.9229059999999993
	.quad	0x4020621f2990f302              # double 8.1916440000000001
	.quad	0x400ea4c2f837b4a2              # double 3.8304499999999999
	.quad	0x401508055fbb517a              # double 5.2578329999999998
	.quad	0x3ff49d0203e63e8e              # double 1.288332
	.quad	0x401e9f1348b22079              # double 7.6553469999999999
	.quad	0x401f353c9abb01c9              # double 7.8019889999999998
	.quad	0x401eb88b11409a24              # double 7.680218
	.quad	0x401a5862b27cbf6e              # double 6.5863139999999998
	.quad	0x4001571eafee6fb5              # double 2.1675390000000001
	.quad	0x401e39595feda661              # double 7.5560049999999998
	.quad	0x401ed6d698fe6927              # double 7.7098029999999999
	.quad	0x3ffd1cb6848beb5b              # double 1.81951
	.quad	0x4004755ffe6d58c9              # double 2.557312
	.quad	0x401c02d98bf7f067              # double 7.002783
	.quad	0x4022d60bb2bba98f              # double 9.4180580000000002
	.quad	0x4016c8c32a8c9b84              # double 5.6960569999999997
	.quad	0x401bb4f0d844d014              # double 6.9267000000000003
	.quad	0x401cd7ddca4b124d              # double 7.210807
	.quad	0x3fff8b5fe542e558              # double 1.971527
	.quad	0x401a7e3f359ff4fd              # double 6.6232879999999996
	.quad	0x4016f04ea4a8c155              # double 5.7346750000000002
	.quad	0x401e3ef0ae536502              # double 7.5614650000000001
	.quad	0x3fdc5cbff47735c2              # double 0.44316100000000003
	.quad	0x3fb9c6088d6d3b6d              # double 0.100678
	.quad	0x4020a5573647baaa              # double 8.3229310000000005
	.quad	0x40142db9841aac54              # double 5.0446530000000003
	.quad	0x40237f143393ab43              # double 9.7482009999999998
	.quad	0x3fffd285a921ccd9              # double 1.9888969999999999
	.quad	0x40204183947496ab              # double 8.1279570000000003
	.quad	0x4015dd63cb817332              # double 5.4662009999999999
	.quad	0x3fe3615011904b3c              # double 0.60562899999999997
	.quad	0x4022e7fe08aefb2b              # double 9.4531100000000005
	.quad	0x4014316ca46e08f2              # double 5.0482659999999999
	.quad	0x401bbeb18116ebd5              # double 6.9362240000000002
	.quad	0x401ff1e96c3fc43b              # double 7.9862419999999998
	.quad	0x40211ae3821af7d3              # double 8.5525169999999999
	.quad	0x4023027546d3f9e8              # double 9.5048010000000004
	.quad	0x40145bdb1a6d6990              # double 5.0897030000000001
	.quad	0x3ffaaf3d3a1d3240              # double 1.667783
	.quad	0x4002988e368f0846              # double 2.3244899999999999
	.quad	0x4014e944ed6fda83              # double 5.2278019999999996
	.quad	0x4013d64c729f59cd              # double 4.959276
	.quad	0x401e72df505d0fa6              # double 7.6121800000000004
	.quad	0x4013619bd4067cf2              # double 4.8453210000000002
	.quad	0x3fd9ae4f3343fa2b              # double 0.40126400000000001
	.quad	0x400a0dc22ab25b31              # double 3.2567179999999998
	.quad	0x40042612839042d9              # double 2.5185900000000001
	.quad	0x401047b9e060fe48              # double 4.0700450000000004
	.quad	0x3ff4ae71cda2b5a2              # double 1.292589
	.quad	0x401ff75ab7dc7ac0              # double 7.9915570000000002
	.quad	0x40138b3743632c1f              # double 4.8859529999999998
	.quad	0x3ff697add15f02c5              # double 1.412031
	.quad	0x4023fc5f17bd8be7              # double 9.9929129999999997
	.quad	0x4002fe82d7b634db              # double 2.3742730000000001
	.quad	0x4009e0e51d25aab4              # double 3.2348119999999998
	.quad	0x4020fa37ac3eb7cc              # double 8.4887060000000005
	.quad	0x4014371476af89c6              # double 5.0537890000000001
	.quad	0x4010e236c15d2d02              # double 4.2209120000000002
	.quad	0x4021249a5657fb6a              # double 8.5714900000000007
	.quad	0x40235de28aa43351              # double 9.6833690000000007
	.quad	0x401a0b702602c908              # double 6.5111699999999999
	.quad	0x40033caa7589efd8              # double 2.4046219999999998
	.quad	0x3fdcea0fd3b29a1c              # double 0.45178600000000002
	.quad	0x401093bafd976ff4              # double 4.1442680000000003
	.quad	0x3fe011fb3fa6defc              # double 0.50219499999999995
	.quad	0x3fd09d6f112fd32c              # double 0.25960899999999998
	.quad	0x401424ab1d4f9c20              # double 5.0358090000000004
	.quad	0x4021bebbdbe3c105              # double 8.8725269999999998
	.quad	0x40029bf487fcb924              # double 2.3261500000000002
	.quad	0x401592003ab862b2              # double 5.3925789999999996
	.quad	0x4020e1c3265add9c              # double 8.4409419999999997
	.quad	0x400a6ae429e0a41a              # double 3.3021929999999999
	.quad	0x4023dd30270f3882              # double 9.9320079999999997
	.quad	0x4010de7c06e19b91              # double 4.2172700000000001
	.quad	0x402043265add9c28              # double 8.1311520000000002
	.quad	0x4013285caafbc1ad              # double 4.7894160000000001
	.quad	0x4013edb2b346130a              # double 4.9821270000000002
	.quad	0x4020e9e6cd29131f              # double 8.4568390000000004
	.quad	0x401e52480e8c8abd              # double 7.5803529999999996
	.quad	0x3fddac3a860dcb9b              # double 0.46363700000000002
	.quad	0x4002b40895d0b73d              # double 2.337907
	.quad	0x4011d1800a7c5ac4              # double 4.4545899999999996
	.quad	0x4023389c5e6ff7e0              # double 9.6105680000000007
	.quad	0x401920b673c4f3ba              # double 6.2819459999999996
	.quad	0x401a365c70435efa              # double 6.5530869999999997
	.quad	0x4023161a60d4562e              # double 9.5431699999999999
	.quad	0x40167bd4067cf1c3              # double 5.6209259999999999
	.quad	0x40213736694898f6              # double 8.607837
	.quad	0x401b9a38327674d1              # double 6.9006049999999997
	.quad	0x3ffef4f93bc0a06f              # double 1.9348080000000001
	.quad	0x400d966516db0dd8              # double 3.6984349999999999
	.quad	0x401694189374bc6a              # double 5.6446249999999996
	.quad	0x4019eeb6390c9108              # double 6.483117
	.quad	0x4011bf5989df1173              # double 4.4368650000000001
	.quad	0x40211989bd8383ae              # double 8.5498790000000007
	.quad	0x3ffd8198f1d3ed52              # double 1.8441399999999999
	.quad	0x401ec205ff1d81f1              # double 7.6894759999999999
	.quad	0x40206eb3fe9fadb0              # double 8.2162170000000003
	.quad	0x4015abbcb1cc9646              # double 5.4177119999999999
	.quad	0x40127990f301eabc              # double 4.6187170000000002
	.quad	0x40124f1cfbb94962              # double 4.5772589999999997
	.quad	0x401eea0b1bbcf4e8              # double 7.7285579999999995
	.quad	0x40160b1b79d909f2              # double 5.5108470000000001
	.quad	0x3fe6324638c97529              # double 0.69363699999999995
	.quad	0x40218a4fa8b4bf90              # double 8.7701390000000004
	.quad	0x40075f98b71b8aa0              # double 2.921678
	.quad	0x3ff9da76d97b30f9              # double 1.6158360000000001
	.quad	0x4020e75e2046c765              # double 8.4518900000000006
	.quad	0x4017e2917507e9d9              # double 5.9712579999999997
	.quad	0x4014732acfb762d8              # double 5.1124679999999998
	.quad	0x400b83a322af5771              # double 3.439276
	.quad	0x40157f56eac86057              # double 5.3743550000000004
	.quad	0x401ca1cc100e6afd              # double 7.1580050000000002
	.quad	0x400b2c3b0c4588a0              # double 3.3965969999999999
	.quad	0x4002f7edc7ef177a              # double 2.3710589999999998
	.quad	0x4017fe74299d883c              # double 5.9984900000000003
	.quad	0x3ff6cad46f587d70              # double 1.4245190000000001
	.quad	0x401738dcdb37c99b              # double 5.8055300000000001
	.quad	0x40196192a737110e              # double 6.3452859999999998
	.quad	0x3fc6d4562e09fe87              # double 0.17835500000000001
	.quad	0x401799d2bf551505              # double 5.9002179999999997
	.quad	0x4019e0d887ebf22c              # double 6.469576
	.quad	0x3ff65e071c53f39d              # double 1.397956
	.quad	0x3fe8877ab324851b              # double 0.76653800000000005
	.quad	0x4015698244e93e1d              # double 5.3530360000000003
	.quad	0x40083c903ea704bc              # double 3.0295719999999999
	.quad	0x3fe7447c30d306a3              # double 0.72711000000000003
	.quad	0x40057841248d7e02              # double 2.6837179999999998
	.quad	0x401cff1348b22079              # double 7.2490969999999999
	.quad	0x4018d0bbb1f255f3              # double 6.2038409999999997
	.quad	0x3ffb123e5b8561d4              # double 1.691954
	.quad	0x400cf785729b280f              # double 3.62086
	.quad	0x4000fbc1acde19fc              # double 2.1229279999999999
	.quad	0x4016cdab191dde37              # double 5.7008479999999997
	.quad	0x3ff5b6cbd987c632              # double 1.3571279999999999
	.quad	0x4020a3bc4d22c882              # double 8.3197960000000002
	.quad	0x4017885d744f5d35              # double 5.8831689999999996
	.quad	0x40192b8cb8e086be              # double 6.292529
	.quad	0x40223caa53fc0097              # double 9.118487
	.quad	0x3f407314ca925fe9              # double 5.0199999999999995E-4
	.quad	0x3ff8bd955714b9cb              # double 1.5462849999999999
	.quad	0x401b6544fe36d224              # double 6.8488959999999999
	.quad	0x4008b1c087442c80              # double 3.0867930000000001
	.quad	0x3fe46149c6f36ef8              # double 0.636876
	.quad	0x4011fbe4473cd573              # double 4.4959879999999997
	.quad	0x40080239e6ab9b24              # double 3.0010870000000001
	.quad	0x3ffcc4be40420f6f              # double 1.798033
	.quad	0x402029676640a6b9              # double 8.0808669999999996
	.quad	0x401d4376d5497311              # double 7.3158830000000004
	.quad	0x400ec22d5171e29b              # double 3.8448129999999998
	.quad	0x400953f39d1b2e5a              # double 3.1659920000000001
	.quad	0x40077b8561d4306e              # double 2.9353129999999998
	.quad	0x402264f9e3864cb6              # double 9.1972190000000005
	.quad	0x3ff9024c404a72eb              # double 1.563061
	.quad	0x3f8e2d6238da3c21              # double 0.014735
	.quad	0x40118305d95dd4c7              # double 4.3779519999999996
	.quad	0x3f9600b029281776              # double 0.021486999999999999
	.quad	0x3fdd70ac3a860dcc              # double 0.46000200000000002
	.quad	0x3fdb13db7f173754              # double 0.42308699999999999
	.quad	0x4002cf94c87980f5              # double 2.3513579999999998
	.quad	0x400e6e1719f7f8cb              # double 3.8037550000000002
	.quad	0x40212a60b2c83ec9              # double 8.5827690000000008
	.quad	0x4002d5171e29b6b3              # double 2.3540480000000001
	.quad	0x40108a93293d102c              # double 4.1353270000000002
	.quad	0x40152490e66cb103              # double 5.2857089999999998
	.quad	0x3fef53dea465a576              # double 0.97898799999999997
	.quad	0x4013a27fe4bcad9b              # double 4.9086910000000001
	.quad	0x401494e831ad2136              # double 5.1454170000000001
	.quad	0x400113f63c31df76              # double 2.134747
	.quad	0x401922888b545c79              # double 6.2837240000000003
	.quad	0x4020a33c1ce6c094              # double 8.3188180000000002
	.quad	0x3ff5df40a2877ee5              # double 1.367005
	.quad	0x40174344c37e6f72              # double 5.8156920000000003
	.quad	0x4008c196d8f4f93c              # double 3.0945260000000001
	.quad	0x401efe2e2b8c75c5              # double 7.7482230000000003
	.quad	0x3ffd29a5ebb7739f              # double 1.822668
	.quad	0x40124b78897e9963              # double 4.5737019999999999
	.quad	0x401511b584b1ab08              # double 5.2672939999999997
	.quad	0x4003aed2cbea4ebe              # double 2.4603630000000001
	.quad	0x3ff41a89b951c5c5              # double 1.2564789999999999
	.quad	0x4013fa0dfdef8488              # double 4.9941940000000002
	.quad	0x4010f45bf26f1dc5              # double 4.238632
	.quad	0x402382dfb506dd6a              # double 9.7556130000000003
	.quad	0x402245e6362a5e78              # double 9.1365219999999993
	.quad	0x4022ab1487768167              # double 9.3341410000000007
	.quad	0x402311da597d49d8              # double 9.5348690000000004
	.quad	0x400ce19a847b2464              # double 3.6101580000000002
	.quad	0x401b31858bc59b80              # double 6.7983609999999999
	.quad	0x401b4f20ea5b530d              # double 6.8272740000000001
	.quad	0x400ffe17e34b9453              # double 3.999069
	.quad	0x3ff275d56f32bdc2              # double 1.1537679999999999
	.quad	0x4021b83cf2cf95d5              # double 8.8598400000000002
	.quad	0x40004c692f6e8295              # double 2.0373100000000002
	.quad	0x3fd01f8a0902de01              # double 0.25192500000000001
	.quad	0x4009b77c02afdda9              # double 3.2145920000000001
	.quad	0x4008a931876188b1              # double 3.082614
	.quad	0x3f9935b91f70de8f              # double 0.024618999999999999
	.quad	0x3fc8028e4fb97bb7              # double 0.18757799999999999
	.quad	0x401e16427c7c5261              # double 7.521738
	.quad	0x4005b40357a35504              # double 2.7128969999999999
	.quad	0x4017907075b3e143              # double 5.8910539999999996
	.quad	0x4008fed84d338f7a              # double 3.1244360000000002
	.quad	0x401979dbec2480e9              # double 6.3690030000000002
	.quad	0x400789f94855da27              # double 2.9423699999999999
	.quad	0x40117abcd78c4370              # double 4.3698610000000002
	.quad	0x400fc53f39d1b2e6              # double 3.9713120000000002
	.quad	0x401cc214f0520d13              # double 7.189533
	.quad	0x401e48e043a21640              # double 7.5711680000000001
	.quad	0x40223761cbccf28c              # double 9.1081679999999991
	.quad	0x4017ee6e221c8a7a              # double 5.9828419999999998
	.quad	0x4023cce358298cc1              # double 9.9001719999999995
	.quad	0x3ffb077036c9c0a9              # double 1.689316
	.quad	0x40040cad57bc7f78              # double 2.5061900000000001
	.quad	0x3ffeb122b7baecd0              # double 1.9182459999999999
	.quad	0x401668c197e56473              # double 5.6023009999999998
	.quad	0x3fd4b69984a0e411              # double 0.32364500000000002
	.quad	0x40047eac42e9899c              # double 2.561852
	.quad	0x3ff20ee9dd7ecbb8              # double 1.128641
	.quad	0x40142c857f3061c8              # double 5.0434780000000003
	.quad	0x400a23c6c97d8cf4              # double 3.2674690000000002
	.quad	0x4015c6abde3fbbd8              # double 5.4440150000000003
	.quad	0x4015502b40f66a55              # double 5.32829
	.quad	0x4011aa22706d5065              # double 4.4161469999999996
	.quad	0x400aa54b48d3ae68              # double 3.3307099999999998
	.quad	0x3ff98192a737110e              # double 1.5941339999999999
	.quad	0x401512d40aaeafab              # double 5.2683869999999997
	.quad	0x40207f8ad2567989              # double 8.2491059999999994
	.quad	0x40156a27f1b69121              # double 5.3536679999999999
	.quad	0x3ffe5ebb7739f341              # double 1.898128
	.quad	0x4006c9bd8383ad9f              # double 2.848506
	.quad	0x401d793ea2d2fe3f              # double 7.3684029999999998
	.quad	0x4020c8c9107faa04              # double 8.3921589999999994
	.quad	0x40168f6e82949a56              # double 5.6400699999999997
	.quad	0x40148746887a8d65              # double 5.1321050000000001
	.quad	0x400e5d9fd36f7e3d              # double 3.795715
	.quad	0x40152530489d27c4              # double 5.2863170000000004
	.quad	0x4011bb884406c00e              # double 4.4331370000000003
	.quad	0x40016055fbb517a4              # double 2.1720389999999998
	.quad	0x3ff53221858bc59c              # double 1.3247390000000001
	.quad	0x401d38dbcec84f90              # double 7.3055260000000004
	.quad	0x4004bd69d30270f4              # double 2.5924870000000002
	.quad	0x3fd69e1b089a0275              # double 0.35339999999999999
	.quad	0x400e47bd48cb4aed              # double 3.7850290000000002
	.quad	0x3ffe9321e603d578              # double 1.9109210000000001
	.quad	0x40104f893faf4278              # double 4.0776719999999997
	.quad	0x3fe473519bd4067d              # double 0.63907700000000001
	.quad	0x4015dc4c165907d9              # double 5.4651339999999999
	.quad	0x40193ad5bee3d5fe              # double 6.3074560000000002
	.quad	0x401152dd7a99fa12              # double 4.3309230000000003
	.quad	0x4010b5fcc1871e6d              # double 4.1777220000000002
	.quad	0x4012af92af9a8cdf              # double 4.6714580000000003
	.quad	0x3ff2e06c8711d799              # double 1.179791
	.quad	0x4012abbecaab8a5d              # double 4.6677200000000001
	.quad	0x4022609dadfb506e              # double 9.1887030000000003
	.quad	0x4020e5abe27179c0              # double 8.4485770000000002
	.quad	0x401e9b2d0a244630              # double 7.6515389999999996
	.quad	0x4002f441bb8c32a9              # double 2.3692660000000001
	.quad	0x4021e182cb20fb22              # double 8.9404509999999995
	.quad	0x401d530014f8b589              # double 7.3310550000000001
	.quad	0x40221cf54d1e96c4              # double 9.056559
	.quad	0x4013c23897204296              # double 4.9396690000000003
	.quad	0x4020bf38c5436b90              # double 8.3734800000000007
	.quad	0x40225e672fba01ef              # double 9.1843810000000001
	.quad	0x401f63e5321e603d              # double 7.8475539999999996
	.quad	0x401d59c23b7952d2              # double 7.3376549999999998
	.quad	0x40206b93ee5eedcc              # double 8.2101129999999997
	.quad	0x3ff8572367e414e8              # double 1.521274
	.quad	0x400e2fbfc6540cc8              # double 3.7733150000000002
	.quad	0x4022cca3c64345d0              # double 9.3996870000000001
	.quad	0x3f95a682b6284599              # double 0.021142999999999999
	.quad	0x401261ccd9620685              # double 4.5955079999999997
	.quad	0x40110d651b0ccbc0              # double 4.2630809999999997
	.quad	0x4022ea5742dcf462              # double 9.4576969999999996
	.quad	0x3fcd780baa582dbe              # double 0.23022599999999999
	.quad	0x400e7b28954a7f80              # double 3.810136
	.quad	0x40216e5bea0ba1f5              # double 8.7155450000000005
	.quad	0x40074f5989df1173              # double 2.913745
	.quad	0x3fef53b29a1b9f99              # double 0.97896700000000003
	.quad	0x4019e355cd91eeaa              # double 6.4720069999999996
	.quad	0x400f9cc2938de6de              # double 3.951543
	.quad	0x401ccd6f544bb1af              # double 7.2006199999999998
	.quad	0x401eb522a6f3f530              # double 7.6768900000000002
	.quad	0x40218a21426fe719              # double 8.7697850000000006
	.quad	0x4019f2b94d940789              # double 6.4870349999999997
	.quad	0x3fff004b7f5a5333              # double 1.9375720000000001
	.quad	0x3fe3bf2d3c792d13              # double 0.61708700000000005
	.quad	0x401ec4e160d887ec              # double 7.692266
	.quad	0x4018ffe36d22424a              # double 6.2498909999999999
	.quad	0x401d0ab21815a07b              # double 7.2604449999999998
	.quad	0x401f6d4738a3b57c              # double 7.8567169999999997
	.quad	0x40129f46ed245b29              # double 4.6555439999999999
	.quad	0x4014662e09fe8683              # double 5.0997849999999998
	.quad	0x40049830e3cd9a52              # double 2.5743119999999999
	.quad	0x4021053ae685db77              # double 8.5102150000000005
	.quad	0x4013b0a569b17482              # double 4.9225060000000003
	.quad	0x4020570153bd1676              # double 8.1699319999999993
	.quad	0x401421fc8f32378b              # double 5.0331900000000003
	.quad	0x3fed99f7f8ca8199              # double 0.92504500000000001
	.quad	0x400816f21f6cacd2              # double 3.0112040000000002
	.quad	0x40017b906466b1e6              # double 2.1853340000000001
	.quad	0x3fe58870110a137f              # double 0.67290499999999998
	.quad	0x4021c60157eed45f              # double 8.8867290000000008
	.quad	0x4023363de6149c6f              # double 9.6059409999999996
	.quad	0x4021e649d388a8b1              # double 8.9497820000000008
	.quad	0x4019be26916440f2              # double 6.4356939999999998
	.quad	0x400a74be835dedf2              # double 3.3070040000000001
	.quad	0x3ff8449ecb31c21a              # double 1.516753
	.quad	0x3ffd214488c60cbf              # double 1.820622
	.quad	0x4022450c1b97353b              # double 9.1348579999999995
	.quad	0x401a1fa26a22b389              # double 6.5308929999999998
	.quad	0x4017ff7b5aea3162              # double 5.9994940000000003
	.quad	0x40239a8dc981beb2              # double 9.8018630000000009
	.quad	0x4018ae1198aeb80f              # double 6.1699890000000002
	.quad	0x4020b65fb71fbc5e              # double 8.3561990000000002
	.quad	0x3fea71715c63ae25              # double 0.82634799999999997
	.quad	0x3fcab52c9d16fc9c              # double 0.20865400000000001
	.quad	0x3fbfd640e9d51b50              # double 0.124363
	.quad	0x40226569b17481b2              # double 9.1980719999999998
	.quad	0x3fd686f47b677f6b              # double 0.35198699999999999
	.quad	0x401f1d6c2efd438d              # double 7.7787329999999998
	.quad	0x3ffae4c729f59cd0              # double 1.6808540000000001
	.quad	0x40088f4e0114d2f6              # double 3.0699730000000001
	.quad	0x400c18a979e16d6e              # double 3.5120420000000001
	.quad	0x400a4a57a786c227              # double 3.2863000000000002
	.quad	0x402308bd66277c46              # double 9.5170700000000004
	.quad	0x400dfad6451b9303              # double 3.7474789999999998
	.quad	0x400a437f7be121ee              # double 3.2829579999999998
	.quad	0x4021cbef6b5d462c              # double 8.8983109999999996
	.quad	0x401ca640639d5e4a              # double 7.1623549999999998
	.quad	0x3ff16921ccd96207              # double 1.0881670000000001
	.quad	0x402209f31f46ed24              # double 9.0194329999999993
	.quad	0x401e03ac4f7ec354              # double 7.5035869999999996
	.quad	0x401292f2b66b6178              # double 4.6435040000000001
	.quad	0x4014299c38b04ab6              # double 5.040635
	.quad	0x3ff834edb2f661f2              # double 1.5129220000000001
	.quad	0x40231d1116a8b8f1              # double 9.5567709999999994
	.quad	0x4020b6115592d98c              # double 8.355601
	.quad	0x4013a5de9c0229a6              # double 4.9119820000000001
	.quad	0x4020c7de7210be94              # double 8.3903689999999997
	.quad	0x400485061416377a              # double 2.564953
	.quad	0x401eb26e5471715c              # double 7.6742489999999997
	.quad	0x401bf05143bf7271              # double 6.9846849999999998
	.quad	0x3ffae89eba6aca79              # double 1.681792
	.quad	0x3fea0c026cc1ca3a              # double 0.81396599999999997
	.quad	0x401f2abc947064ed              # double 7.791735
	.quad	0x400f3c98a222d517              # double 3.9045879999999999
	.quad	0x3ff2641b328b6d87              # double 1.14944
	.quad	0x400687f349385836              # double 2.8163819999999999
	.quad	0x401057cf1c3265ae              # double 4.0857510000000001
	.quad	0x401a997460242d06              # double 6.649858
	.quad	0x3ffd7f4666ec9e23              # double 1.8435729999999999
	.quad	0x4010c3458cd20afa              # double 4.1906949999999998
	.quad	0x3fdd00c521dda05a              # double 0.45317200000000002
	.quad	0x40214d3e4ef0281c              # double 8.6508660000000006
	.quad	0x4018b2778140dd40              # double 6.1742840000000001
	.quad	0x3fe81dbca9691a76              # double 0.75363000000000002
	.quad	0x401a4eb074a771c9              # double 6.5768449999999996
	.quad	0x3f903c8e25c810a5              # double 0.015855999999999999
	.quad	0x3fff7866e43aa79c              # double 1.9668950000000001
	.quad	0x4023b50917d6b65b              # double 9.8535850000000007
	.quad	0x40192f1172ef0ae5              # double 6.2959649999999998
	.quad	0x3fe8d6f112fd32c6              # double 0.77623799999999998
	.quad	0x3fec40b34e768598              # double 0.88289799999999996
	.quad	0x4011f52d234eb9a1              # double 4.4894299999999996
	.quad	0x4023f62dc6e2a800              # double 9.9808179999999993
	.quad	0x3fe7fd0d0678c005              # double 0.74963999999999997
	.quad	0x3fff09dbec2480e9              # double 1.939907
	.quad	0x401f7e40420f6f09              # double 7.8732920000000001
	.quad	0x400dc019b0ab2e17              # double 3.7187990000000002
	.quad	0x400c5daceee0f3cb              # double 3.5457399999999999
	.quad	0x4001cd00b45ae600              # double 2.2250990000000002
	.quad	0x401747824d4cb9ed              # double 5.819833
	.quad	0x4022709a671ef30a              # double 9.2199279999999995
	.quad	0x3ff55b4677b395c4              # double 1.334784
	.quad	0x3ffa0b70ac3a860e              # double 1.627793
	.quad	0x40028d0e56041893              # double 2.3188749999999998
	.quad	0x40209da5332acfb7              # double 8.3079009999999993
	.quad	0x4016735a858793de              # double 5.6126500000000004
	.quad	0x3fa65a78f25a2510              # double 0.043659000000000003
	.quad	0x401e138a7e73a366              # double 7.5190830000000002
	.quad	0x400424fb97bb7308              # double 2.5180579999999999
	.quad	0x4021acebfec13b9f              # double 8.8377379999999999
	.quad	0x40079a072d1aeb3e              # double 2.9502090000000001
	.quad	0x3ffb546c332f0175              # double 1.7081109999999999
	.quad	0x4012f548ecd8dbcf              # double 4.7395360000000002
	.quad	0x401b1d3a1d323fee              # double 6.7785419999999998
	.quad	0x401c12eba27ae9ab              # double 7.0184769999999999
	.quad	0x40129d5a187a4a49              # double 4.653664
	.quad	0x4023218b71b8aa00              # double 9.5655169999999998
	.quad	0x400c0f2495e17e35              # double 3.5073940000000001
	.quad	0x3fc1b62413db7f17              # double 0.13837099999999999
	.quad	0x400acdbb59ddc1e8              # double 3.3504550000000002
	.quad	0x40037198288051ca              # double 2.430466
	.quad	0x3fd95fdcdf698783              # double 0.396476
	.quad	0x4016a1d2178f68be              # double 5.6580279999999998
	.quad	0x4014e164840e171a              # double 5.22011
	.quad	0x3fb94280ae104923              # double 0.098670999999999995
	.quad	0x3ff58eb356da0169              # double 1.3473390000000001
	.quad	0x3ff0fa67a52ac754              # double 1.061134
	.quad	0x4019791c8eabffce              # double 6.3682730000000003
	.quad	0x3ff84edc3bd59924              # double 1.519253
	.quad	0x401f2529bae46cfd              # double 7.7862920000000004
	.quad	0x400c536501e2584f              # double 3.5407199999999999
	.quad	0x3fb11276fb09203a              # double 0.066687999999999997
	.quad	0x4011a514c22ee419              # double 4.4112119999999999
	.quad	0x3fdaadc4c9c90c4e              # double 0.416856
	.quad	0x402291de481f5382              # double 9.2848989999999993
	.quad	0x400497ba6698bb4d              # double 2.5740859999999999
	.quad	0x3ff148dc11e42e12              # double 1.0802879999999999
	.quad	0x40190efbf401c4fc              # double 6.2646329999999999
	.quad	0x4011b86ad2dcb146              # double 4.4300949999999997
	.quad	0x401cb7da1ec4e725              # double 7.1795429999999998
	.quad	0x3f5b4bb5e0f7fcfc              # double 0.0016659999999999999
	.quad	0x40196c9eecbfb15b              # double 6.3560749999999997
	.quad	0x4018dc5479d4d834              # double 6.215166
	.quad	0x3f835b91f70de8f7              # double 0.0094520000000000003
	.quad	0x401de7f84449dbec              # double 7.4765329999999999
	.quad	0x40216c4156e264e5              # double 8.7114360000000008
	.quad	0x4023ab1e7d9988d3              # double 9.8342170000000006
	.quad	0x401183e707e175d1              # double 4.3788109999999998
	.quad	0x40165f7d30ad46f6              # double 5.5932510000000004
	.quad	0x3fe48ed80a17b0f7              # double 0.64243700000000004
	.quad	0x40226e45c358afc4              # double 9.2153759999999991
	.quad	0x402142148ba83f4f              # double 8.6290630000000004
	.quad	0x401f3ffe6d58c8ef              # double 7.812494
	.quad	0x401ba2afdda8bd23              # double 6.908874
	.quad	0x3fb2cfa69be09bb7              # double 0.073481000000000005
	.quad	0x40232d1deefe4ffd              # double 9.5881190000000007
	.quad	0x401115de58e64b23              # double 4.2713559999999999
	.quad	0x401a3afd976ff3ae              # double 6.5576080000000001
	.quad	0x402036b95e5aff2a              # double 8.1068829999999998
	.quad	0x4005f3f85510d38d              # double 2.7441260000000001
	.quad	0x402354e50c5eb314              # double 9.6658100000000004
	.quad	0x3ff2cd141a6937d2              # double 1.175068
	.quad	0x401a9aee2003ab86              # double 6.6512989999999999
	.quad	0x4020152b4d8ba40e              # double 8.0413460000000008
	.quad	0x401efdbec2480e8d              # double 7.7477980000000004
	.quad	0x40053bcc2938de6e              # double 2.6541980000000001
	.quad	0x3fd7df04ddb5525d              # double 0.37298700000000001
	.quad	0x401012f33ca31e7e              # double 4.0185060000000004
	.quad	0x40060a159817b95a              # double 2.7549239999999999
	.quad	0x3ffa4918e325d4a6              # double 1.642846
	.quad	0x40070e1b4bb5e0f8              # double 2.881888
	.quad	0x40217b3333333333              # double 8.7406249999999996
	.quad	0x402064b2745bf26f              # double 8.1966739999999998
	.quad	0x400cd8b04ab606b8              # double 3.6058050000000001
	.quad	0x4000de0c5a8155d6              # double 2.108422
	.quad	0x401d23860999dcb5              # double 7.2846909999999996
	.quad	0x3ffc6317268d3283              # double 1.774192
	.quad	0x400aeb60f1b25f63              # double 3.3649309999999999
	.quad	0x3ff498ac9f2fdb90              # double 1.287274
	.quad	0x3ff88a276b7ed41b              # double 1.5337289999999999
	.quad	0x4021a13122b7baed              # double 8.8148280000000003
	.quad	0x400e54d8ba40d90e              # double 3.7914289999999999
	.quad	0x3fc649667b5f1bef              # double 0.17411499999999999
	.quad	0x3fff4636b0963561              # double 1.954642
	.quad	0x401747f38c5436b9              # double 5.820265
	.quad	0x401a733226c3b928              # double 6.6124960000000002
	.quad	0x401f26494d50ebab              # double 7.7873890000000001
	.quad	0x401ffd790752da98              # double 7.9975319999999996
	.quad	0x4018e3968d759ee9              # double 6.2222540000000004
	.quad	0x3fff1f8a0902de01              # double 1.9452
	.quad	0x40153e7ddca4b125              # double 5.3110270000000002
	.quad	0x400caf0cfe154435              # double 3.585474
	.quad	0x40045288ce703afb              # double 2.5402999999999998
	.quad	0x3fd3ab3edd8b60f2              # double 0.30732700000000002
	.quad	0x3fe411ada76d97b3              # double 0.62715799999999999
	.quad	0x400fa2ff08893b7e              # double 3.9545880000000002
	.quad	0x401947d3d4280ae1              # double 6.320144
	.quad	0x3fc1d63022dd7a9a              # double 0.139349
	.quad	0x4023a617a02fb5d0              # double 9.8243989999999997
	.quad	0x401e8d6f112fd32c              # double 7.6381189999999997
	.quad	0x4003fe2bcf91a32b              # double 2.499107
	.quad	0x400b75b2d4d4024b              # double 3.4324699999999999
	.quad	0x400e7b3c81908e58              # double 3.8101739999999999
	.quad	0x3fffd57bc7f77af6              # double 1.9896199999999999
	.quad	0x4011e3b81b64e054              # double 4.4723819999999996
	.quad	0x3fd27c6759ab6d01              # double 0.28884300000000002
	.quad	0x40201faa68f4b620              # double 8.0618470000000002
	.quad	0x4020e67bc3c5bd0e              # double 8.4501629999999999
	.quad	0x4010f6f47b677f6b              # double 4.2411669999999999
	.quad	0x4014177dd872f33d              # double 5.0229410000000003
	.quad	0x4004fb0ccbc05d53              # double 2.6225830000000001
	.quad	0x402197d199bb2789              # double 8.7965210000000003
	.quad	0x4009179420b3d4ae              # double 3.1365129999999999
	.quad	0x400b61932d6ece14              # double 3.422644
	.quad	0x401c691d14e3bcd3              # double 7.1026499999999997
	.quad	0x4022ff88db0574b4              # double 9.4990909999999999
	.quad	0x401cbd0fa58f7122              # double 7.1846300000000003
	.quad	0x401b12bcf91a32b1              # double 6.7682989999999998
	.quad	0x4012595f2452c5a0              # double 4.5872770000000003
	.quad	0x40218b6bd2b6f199              # double 8.7723069999999996
	.quad	0x4007c0379314445b              # double 2.9688560000000002
	.quad	0x401d8ca7503b81b6              # double 7.3873569999999997
	.quad	0x3fff910e453d20f3              # double 1.9729140000000001
	.quad	0x3fee6ee0f3cb3e57              # double 0.95103499999999996
	.quad	0x4013762456f75d9a              # double 4.8653729999999999
	.quad	0x40159da22f6a50d7              # double 5.4039390000000003
	.quad	0x40205841461b6d44              # double 8.1723730000000003
	.quad	0x40140e57d9dba909              # double 5.0140070000000003
	.quad	0x400d536694898f60              # double 3.6657229999999998
	.quad	0x4000f710880d801b              # double 2.1206369999999999
	.quad	0x40200ee2435696e6              # double 8.0290700000000008
	.quad	0x40119f0ed3d859c9              # double 4.4053300000000002
	.quad	0x4022c7e3b03e20cd              # double 9.390409
	.quad	0x4004f6c4827b6fe3              # double 2.620492
	.quad	0x401f7ca1cef240fb              # double 7.8717110000000003
	.quad	0x400e06efc371da38              # double 3.753387
	.quad	0x4005d33fc86cebbc              # double 2.7281490000000002
	.quad	0x402021e68a0d349c              # double 8.0662120000000001
	.quad	0x400ddcdfefbf401c              # double 3.7328489999999999
	.quad	0x4013d0257c914b16              # double 4.9532679999999996
	.quad	0x402336af6837f7be              # double 9.6068069999999999
	.quad	0x40192c1c1d6cf851              # double 6.2930760000000001
	.quad	0x401353aeab7995ee              # double 4.8317209999999999
	.quad	0x4022d67685985ad5              # double 9.4188729999999996
	.quad	0x40177aa5c5f7c676              # double 5.8697730000000004
	.quad	0x40205a715831f03d              # double 8.1766459999999999
	.quad	0x4021d16616b54e2b              # double 8.908982
	.quad	0x4021e541d8e86402              # double 8.9477679999999999
	.quad	0x400882938de6ddf0              # double 3.063758
	.quad	0x3ff41572580c3090              # double 1.255236
	.quad	0x40201d43d03968d7              # double 8.0571579999999994
	.quad	0x400006defc7a3982              # double 2.003355
	.quad	0x401fd53f7ced9168              # double 7.9582499999999996
	.quad	0x401fe76b3bb83cf3              # double 7.9759950000000001
	.quad	0x40080c6de76427c8              # double 3.0060690000000001
	.quad	0x3fa8f5e41d4b6a62              # double 0.048751000000000003
	.quad	0x402262a411c2a023              # double 9.1926579999999998
	.quad	0x4022e57f0ed3d85a              # double 9.4482350000000004
	.quad	0x4015b1960fa15db3              # double 5.4234239999999998
	.quad	0x40101057d1782d38              # double 4.0159599999999998
	.quad	0x4022dcb6e935b91f              # double 9.4310829999999992
	.quad	0x3ff7bda4052d666b              # double 1.4837990000000001
	.quad	0x401f7dd26b723ee2              # double 7.8728730000000002
	.quad	0x401eabbf93ff25e5              # double 7.6677229999999996
	.quad	0x3fe3276102795704              # double 0.59855700000000001
	.quad	0x401a51ffb480a5ad              # double 6.5800770000000002
	.quad	0x3ffd4f97edc7ef17              # double 1.8319319999999999
	.quad	0x3fa3b6672fba01ef              # double 0.038501000000000001
	.quad	0x401d1e0114d2f5dc              # double 7.2793010000000002
	.quad	0x401c5970b49e01de              # double 7.0873439999999999
	.quad	0x3ffdc76d117b5287              # double 1.8611880000000001
	.quad	0x4018c3161a1db878              # double 6.1905140000000003
	.quad	0x401de0f49491f2dc              # double 7.4696829999999999
	.quad	0x40073014b599aa61              # double 2.8984770000000002
	.quad	0x4019d87d6f976790              # double 6.4614159999999998
	.quad	0x401f717614595358              # double 7.8608019999999996
	.quad	0x3fe6f125dd095af3              # double 0.71693700000000005
	.quad	0x4020b0880d801b43              # double 8.3447879999999994
	.quad	0x401aaea6c1a048e0              # double 6.6705579999999998
	.quad	0x40173ad2999567dc              # double 5.8074440000000003
	.quad	0x4010cba9d1f60179              # double 4.1988899999999996
	.quad	0x4019d6e4c0df58c1              # double 6.4598570000000004
	.quad	0x40189bd5dc400757              # double 6.152183
	.quad	0x3ff95512ec6bce85              # double 1.58327
	.quad	0x401b2f7b17ce52df              # double 6.7963680000000002
	.quad	0x4002857c914b167f              # double 2.3151790000000001
	.quad	0x4018a3ab862b27cc              # double 6.159834
	.quad	0x4021fb691212513b              # double 8.9910359999999994
	.quad	0x4022bdca6ca03c4b              # double 9.3706849999999999
	.quad	0x3ff1d8cc144028e5              # double 1.115429
	.quad	0x401352018a43bb41              # double 4.8300840000000003
	.quad	0x401f61290257c915              # double 7.8448830000000002
	.quad	0x401ce7a398201cd6              # double 7.22621
	.quad	0x3fd8cdee34fc610f              # double 0.387569
	.quad	0x400f8a1272c94b38              # double 3.942418
	.quad	0x3ff3bc4199fe4367              # double 1.2334609999999999
	.quad	0x4008a32ca57a786c              # double 3.0796749999999999
	.quad	0x401b811f4f50a02c              # double 6.8760960000000004
	.quad	0x400db8bac710cb29              # double 3.7151999999999998
	.quad	0x400f1421c044284e              # double 3.88483
	.quad	0x3ffcee297396d091              # double 1.8081449999999999
	.quad	0x401710f7fcfc3f81              # double 5.7665709999999999
	.quad	0x401be4b6e935b91f              # double 6.9733539999999996
	.quad	0x400d5e8ccdd93c47              # double 3.6711670000000001
	.quad	0x4023ff7d523b3637              # double 9.999003
	.quad	0x401a7ea18372e6a7              # double 6.6236629999999996
	.quad	0x4022e0c77dd872f3              # double 9.4390219999999995
	.quad	0x400e854de7ea5f85              # double 3.8150900000000001
	.quad	0x3fef6e3b46fdeb53              # double 0.98220600000000002
	.quad	0x4014691ea78af3e4              # double 5.1026559999999996
	.quad	0x3ff9f672b884406c              # double 1.622668
	.quad	0x3ff89d68c692f6e8              # double 1.53843
	.quad	0x401c924aada33bda              # double 7.1428630000000002
	.quad	0x400f5965b20b8067              # double 3.9186510000000001
	.quad	0x401984e26d4801f7              # double 6.3797699999999997
	.quad	0x400e58c0053e2d62              # double 3.7933349999999999
	.quad	0x4014eeaa6d267408              # double 5.2330719999999999
	.quad	0x40210737329c347f              # double 8.5140930000000008
	.quad	0x4015594a2b9d3cbc              # double 5.3371969999999997
	.quad	0x401271c2e33eff19              # double 4.6110949999999997
	.quad	0x401e95058dde7a74              # double 7.6455289999999998
	.quad	0x40124d71f36262cc              # double 4.5756300000000003
	.quad	0x4022914ad362e903              # double 9.2837739999999993
	.quad	0x401ab48301a79fed              # double 6.6762810000000004
	.quad	0x3ff261672324c836              # double 1.1487799999999999
	.quad	0x4013ebc7b45f17be              # double 4.9802540000000004
	.quad	0x40225ac8e68e3ef3              # double 9.1773140000000009
	.quad	0x4023e72e6a76965f              # double 9.9515259999999994
	.quad	0x3ff3dbb7b6bb1290              # double 1.241142
	.quad	0x40222cf80dc33722              # double 9.0878300000000003
	.quad	0x3ffa2d1aeb3dd11c              # double 1.636012
	.quad	0x3ff9d7891e215337              # double 1.615121
	.quad	0x3fd1b87bdcf0307f              # double 0.27688499999999999
	.quad	0x400f1f9ce8d972cd              # double 3.8904359999999998
	.quad	0x3ff3ecabc5154867              # double 1.2452810000000001
	.quad	0x4022a2b4d8ba40d9              # double 9.3177859999999999
	.quad	0x401a204bc27631b6              # double 6.5315390000000004
	.quad	0x40007e3193f6c26a              # double 2.0616180000000002
	.quad	0x401ba9efd86a8fc1              # double 6.9159540000000002
	.quad	0x400210fb65668c26              # double 2.258292
	.quad	0x4019de09fe86833c              # double 6.4668349999999997
	.quad	0x3fa64bec679cc74c              # double 0.043548000000000003
	.quad	0x40234c1d4b6a619e              # double 9.6486610000000006
	.quad	0x401dfb1572580c31              # double 7.4951990000000003
	.quad	0x400624345cfede98              # double 2.7676780000000001
	.quad	0x4007bc44bf4cb189              # double 2.9669279999999998
	.quad	0x401ada73f748a15a              # double 6.7133330000000004
	.quad	0x401efad57bc7f77b              # double 7.744955
	.quad	0x40233bf39d1b2e5a              # double 9.6170930000000006
	.quad	0x4014b8372e6a7696              # double 5.1798979999999997
	.quad	0x40172366d7a56de3              # double 5.7845719999999998
	.quad	0x40205bc9eecbfb16              # double 8.1792750000000005
	.quad	0x401e0a350d2806af              # double 7.5099679999999997
	.quad	0x400aab7564302b41              # double 3.33372
	.quad	0x4020ea08e1501190              # double 8.4570989999999995
	.quad	0x40116c9f72f76e61              # double 4.356077
	.quad	0x400cfefbf401c4fc              # double 3.6245039999999999
	.quad	0x401adcb4aec8d5c7              # double 6.7155329999999998
	.quad	0x4012030941c8216c              # double 4.5029649999999997
	.quad	0x3fb1d2f1a9fbe76d              # double 0.069625000000000006
	.quad	0x40224dafd113836b              # double 9.1517320000000009
	.quad	0x4021c59513f8db49              # double 8.8859030000000008
	.quad	0x402285f8d2e514c2              # double 9.2616639999999997
	.quad	0x401ad7292c493426              # double 6.7101179999999996
	.quad	0x4017bfa658c4bd34              # double 5.9371580000000002
	.quad	0x40235385c67dfe33              # double 9.6631300000000006
	.quad	0x4018a85db76b3bb8              # double 6.1644199999999998
	.quad	0x401a4caff6d33094              # double 6.5748899999999999
	.quad	0x40185618ce2d1f1d              # double 6.084079
	.quad	0x401aef2f123c42a6              # double 6.7335779999999996
	.quad	0x40101d423d9231c6              # double 4.0285729999999997
	.quad	0x400df8665e02ea96              # double 3.746289
	.quad	0x402374970f7b9e06              # double 9.7277149999999999
	.quad	0x400df800218def41              # double 3.7460939999999998
	.quad	0x401345a57646ae3a              # double 4.8180139999999998
	.quad	0x4014557fb69984a1              # double 5.0834950000000001
	.quad	0x3fefc0e7bc3c5bd1              # double 0.99229800000000001
	.quad	0x402061a75cd0bb6f              # double 8.1907300000000003
	.quad	0x40191534373f316e              # double 6.2707069999999998
	.quad	0x400dbc1bda5119ce              # double 3.71685
	.quad	0x400c2d5d80e496ee              # double 3.522151
	.quad	0x40066d80a17b0f6b              # double 2.8034680000000001
	.quad	0x400e07ce95faa8a8              # double 3.7538119999999999
	.quad	0x401fb83fd5022574              # double 7.9299309999999998
	.quad	0x4021ba0d130df9be              # double 8.8633810000000004
	.quad	0x3fea56a7ac81d3aa              # double 0.82307799999999998
	.quad	0x4021dccc03793144              # double 8.9312439999999995
	.quad	0x400cadd26b723ee2              # double 3.5848740000000001
	.quad	0x401961044f1a1987              # double 6.3447430000000002
	.quad	0x3ffa7c89f40a2878              # double 1.655405
	.quad	0x40201d1244a6223e              # double 8.0567799999999998
	.quad	0x40015d640e9d51b5              # double 2.170601
	.quad	0x401155097c80841f              # double 4.3330440000000001
	.quad	0x3ff417f1f9acffa8              # double 1.255846
	.quad	0x4023cec99f1ae2da              # double 9.9038819999999994
	.quad	0x4021c45aa2e3c537              # double 8.8835040000000003
	.quad	0x4013415b573eab36              # double 4.8138249999999996
	.quad	0x401d8c1c6088d6d4              # double 7.3868270000000003
	.quad	0x401a15929670196e              # double 6.5210670000000004
	.quad	0x400034aec8d5c747              # double 2.0257239999999999
	.quad	0x4011e1758e219653              # double 4.4701750000000002
	.quad	0x400945ff1d81f106              # double 3.1591779999999998
	.quad	0x3ff2670196d8f4f9              # double 1.1501479999999999
	.quad	0x40000187a4a48f97              # double 2.0007470000000001
	.quad	0x4007f45953586ca9              # double 2.9943110000000002
	.quad	0x401697fbacb42891              # double 5.6484209999999999
	.quad	0x40178dd22856605f              # double 5.8884970000000001
	.quad	0x3fe6835158b827fa              # double 0.70352999999999999
	.quad	0x40126be37de939eb              # double 4.6053600000000001
	.quad	0x40211bd4ae429e0a              # double 8.5543569999999995
	.quad	0x40234d5043e5321e              # double 9.6510029999999993
	.quad	0x3fb976ee73e681aa              # double 0.099471000000000003
	.quad	0x4003fdd22856605f              # double 2.498936
	.quad	0x4017b7ddca4b124d              # double 5.929557
	.quad	0x3fec8e0221426fe7              # double 0.89233499999999999
	.quad	0x400f90d1fa333765              # double 3.945713
	.quad	0x3fae4abe6a337a81              # double 0.059164000000000001
	.quad	0x400e26f1dc50ce4f              # double 3.7690160000000001
	.quad	0x4023c36e0d23d4f1              # double 9.8816989999999993
	.quad	0x4021c41d8e864021              # double 8.8830380000000009
	.quad	0x402258583621fafd              # double 9.1725480000000008
	.quad	0x3ff2b7eb28d8665e              # double 1.169902
	.quad	0x3fffb9884c6a3bde              # double 1.982796
	.quad	0x401a232e3821af7d              # double 6.5343559999999998
	.quad	0x4017a4db59578a2b              # double 5.9109930000000004
	.quad	0x40216dd872f33ca3              # double 8.7145419999999998
	.quad	0x40184ab10ba62670              # double 6.0729410000000001
	.quad	0x3fe925e785b5b707              # double 0.78587700000000005
	.quad	0x3fe3ff0cbaf965b2              # double 0.624884
	.quad	0x40211bd07c84b5dd              # double 8.5543250000000004
	.quad	0x4017c8aefb2aae29              # double 5.9459799999999996
	.quad	0x4000698b2e9ccb7d              # double 2.0515349999999999
	.quad	0x401adefb6dca07f6              # double 6.7177559999999996
	.quad	0x3fd34fd2a62aa194              # double 0.30174699999999999
	.quad	0x3fef8765ba6efc37              # double 0.98527799999999998
	.quad	0x4011c3886594af4f              # double 4.44095
	.quad	0x40212b36deb95e5b              # double 8.584403
	.quad	0x3f7f8b1572580c31              # double 0.0077010000000000004
	.quad	0x4015b790b8498809              # double 5.4292629999999997
	.quad	0x3ff3c68661ae70c1              # double 1.235968
	.quad	0x3fe407db2b346131              # double 0.62595900000000004
	.quad	0x4007e72da122fad7              # double 2.9878800000000001
	.quad	0x4016f8b11409a240              # double 5.7428629999999998
	.quad	0x401fb6616b54e2b0              # double 7.9281059999999997
	.quad	0x401ab6273929ed39              # double 6.6778839999999997
	.quad	0x40169424a276b7ed              # double 5.6446709999999998
	.quad	0x4023aa393ee5eedd              # double 9.8324680000000004
	.quad	0x4001ec2374794ea0              # double 2.2403019999999998
	.quad	0x40216a4c8366516e              # double 8.7076150000000005
	.quad	0x3fa633eff1950332              # double 0.043365000000000001
	.quad	0x4019f66b6177ea1c              # double 6.4906439999999996
	.quad	0x3fc2fa93af74cd31              # double 0.14827199999999999
	.quad	0x401fad8cb07d0aee              # double 7.9194820000000004
	.quad	0x4020f74be835dedf              # double 8.4830009999999998
	.quad	0x3ffc4dbdf8f47304              # double 1.76898
	.quad	0x4020ef51efb6dca0              # double 8.4674219999999991
	.quad	0x40232d113836a833              # double 9.5880220000000004
	.quad	0x400334aa10e02214              # double 2.4007149999999999
	.quad	0x402008203e63e8de              # double 8.0158710000000006
	.quad	0x3ff588893b7d8490              # double 1.345834
	.quad	0x40209cac6cdaf4ae              # double 8.3060030000000005
	.quad	0x40198d51f81a5871              # double 6.3880080000000001
	.quad	0x400f060ed80a17b1              # double 3.877958
	.quad	0x401c724399b2c40d              # double 7.111586
	.quad	0x40166bd230b9dc2f              # double 5.6052939999999998
	.quad	0x3fecae5796bfca86              # double 0.89628200000000002
	.quad	0x400963a322af5771              # double 3.173651
	.quad	0x4005cf965b20b806              # double 2.7263609999999998
	.quad	0x3fc6059210385c68              # double 0.172045
	.quad	0x4020f67381d7dbf5              # double 8.4813500000000008
	.quad	0x400acfe36d22424a              # double 3.3515079999999999
	.quad	0x401fd710cb295e9e              # double 7.9600249999999999
	.quad	0x402378f238972043              # double 9.7362230000000007
	.quad	0x40018a5ce5b4245f              # double 2.1925599999999998
	.quad	0x400552e275ab7dc8              # double 2.6654710000000001
	.quad	0x40231492146a1a50              # double 9.5401769999999999
	.quad	0x40206496249a133c              # double 8.1964579999999997
	.quad	0x402399d909f1f14a              # double 9.8004840000000009
	.quad	0x4020c880d801b435              # double 8.3916079999999997
	.quad	0x4023cd5b6805a2d7              # double 9.9010879999999996
	.quad	0x3fe5a7179bfdf7e8              # double 0.676647
	.quad	0x401d2471715c63ae              # double 7.2855889999999999
	.quad	0x401086e9bbf0dc77              # double 4.1317510000000004
	.quad	0x4013e9f1f14983d8              # double 4.9784620000000004
	.quad	0x3fe3304ccee5abc1              # double 0.59964600000000001
	.quad	0x401c5c7cd898b2ea              # double 7.0903200000000002
	.quad	0x400a85b749adc8fc              # double 3.3152910000000002
	.quad	0x401f1a704bc27632              # double 7.7758190000000003
	.quad	0x401910d66f0cfe15              # double 6.2664429999999998
	.quad	0x401a89220ff54089              # double 6.6339189999999997
	.quad	0x3feb8ec95bff0457              # double 0.86117999999999995
	.quad	0x3fea904b3c3e74b0              # double 0.83011400000000002
	.quad	0x4022c3313be22e5e              # double 9.3812350000000002
	.quad	0x40000f7121ab4b73              # double 2.0075400000000001
	.quad	0x3ffe48c8259e1f3a              # double 1.8927689999999999
	.quad	0x40218f76a2f48c2e              # double 8.7802019999999992
	.quad	0x4017348adeebb342              # double 5.8013110000000001
	.quad	0x3fee50df15a4acf3              # double 0.94737199999999999
	.quad	0x400d875ee99a62ed              # double 3.6910989999999999
	.quad	0x401e1b7ed41b75a7              # double 7.5268509999999997
	.quad	0x400a87778dd616f8              # double 3.3161459999999998
	.quad	0x40170564302b40f6              # double 5.7552649999999996
	.quad	0x401ff0507a6bd6e9              # double 7.9846820000000002
	.quad	0x401dc13ec460ed81              # double 7.4387160000000003
	.quad	0x4022230318b9346a              # double 9.0683830000000007
	.quad	0x4017588ce703afb8              # double 5.8364750000000001
	.quad	0x401fc04102ff8ec1              # double 7.937748
	.quad	0x400617110e453d21              # double 2.761263
	.quad	0x4022560cbf2b239a              # double 9.1680659999999996
	.quad	0x4006af2e8c0485a1              # double 2.8355380000000001
	.quad	0x3ff02b356da0168b              # double 1.0105489999999999
	.quad	0x40095ba8826aa8eb              # double 3.1697549999999999
	.quad	0x40164e56cd6c2efd              # double 5.5765029999999998
	.quad	0x4011c37ef5a964e9              # double 4.4409140000000003
	.quad	0x4018db1af3a14cec              # double 6.2139699999999998
	.quad	0x401dcb5d462c343b              # double 7.4485979999999996
	.quad	0x3ffe6d7f950b955f              # double 1.9017329999999999
	.quad	0x40226a5785f8d2e5              # double 9.2076989999999999
	.quad	0x4014b8a32f44912a              # double 5.1803100000000004
	.quad	0x3fe7a630ec311623              # double 0.73903700000000005
	.quad	0x40191b139c94f69d              # double 6.2764420000000003
	.quad	0x3ffaf0f27bb2fec5              # double 1.6838249999999999
	.quad	0x400d6fcac8e68e3f              # double 3.679586
	.quad	0x400a67a311e85fd0              # double 3.3006039999999999
	.quad	0x401ebc804102ff8f              # double 7.6840830000000002
	.quad	0x4000ab502ababead              # double 2.0836489999999999
	.quad	0x4023f5bb59ddc1e8              # double 9.9799450000000007
	.quad	0x4002b10d38cda6e7              # double 2.3364509999999998
	.quad	0x3ff3e5eedcc20d56              # double 1.243636
	.quad	0x4016397396d0917d              # double 5.5561049999999996
	.quad	0x40195bbb62413db8              # double 6.3395820000000001
	.quad	0x401b2fbdf090f734              # double 6.7966230000000003
	.quad	0x4011c4202d9cf13d              # double 4.4415290000000001
	.quad	0x4004e7db2b346131              # double 2.6132110000000002
	.quad	0x4023cb9fdbd2fa0d              # double 9.8977039999999991
	.quad	0x40235a465a57646b              # double 9.6763180000000001
	.quad	0x4020df01322f2735              # double 8.4355560000000001
	.quad	0x401c568b5cbff477              # double 7.0845159999999998
	.quad	0x4019fef3d3a1d324              # double 6.498977
	.quad	0x401d04ddf86e3b47              # double 7.254753
	.quad	0x4022c4a771c970f8              # double 9.3840900000000004
	.quad	0x40029f05ea24cc68              # double 2.3276479999999999
	.quad	0x40182a4df47f993d              # double 6.0413129999999997
	.quad	0x401141db877ab325              # double 4.3143140000000004
	.quad	0x3fd7a40d90e23af3              # double 0.36938799999999999
	.quad	0x4021ed1f601797cc              # double 8.9631299999999995
	.quad	0x4015baf0bf1a5ca3              # double 5.4325590000000004
	.quad	0x4021d00cf9e3864d              # double 8.9063490000000005
	.quad	0x40103bcba3012168              # double 4.0583939999999998
	.quad	0x40226c17ca2120e2              # double 9.2111190000000001
	.quad	0x401b78ffb8b26395              # double 6.868163
	.quad	0x40218ef4e0114d2f              # double 8.7792119999999993
	.quad	0x401681bac2df0d41              # double 5.6266889999999998
	.quad	0x40221d9ad85dfa87              # double 9.0578219999999998
	.quad	0x40144caeea63b689              # double 5.0748860000000002
	.quad	0x401d1917939a7c18              # double 7.2745040000000003
	.quad	0x401d27d4e09784ec              # double 7.2888979999999997
	.quad	0x4014756cd6c2efd4              # double 5.1146729999999998
	.quad	0x3fd72e1693c03bc5              # double 0.36218800000000001
	.quad	0x40198ea6c1a048e0              # double 6.3893079999999998
	.quad	0x40104a9da597d49d              # double 4.0728669999999996
	.quad	0x3fff61c68ec52a41              # double 1.961371
	.quad	0x3fedf4213a0c6b48              # double 0.93605099999999996
	.quad	0x40184af533f42353              # double 6.0732010000000001
	.quad	0x4021b159a30984e4              # double 8.846387
	.quad	0x400fa77ff151e753              # double 3.9567869999999998
	.quad	0x4023da78d0cc35ce              # double 9.9267029999999998
	.quad	0x401917724fa8b4c0              # double 6.2728970000000004
	.quad	0x4010c0b242070b8d              # double 4.18818
	.quad	0x400886d15ad106ee              # double 3.0658289999999999
	.quad	0x40150c6540cc78ea              # double 5.262105
	.quad	0x400704217d2849cb              # double 2.8770169999999999
	.quad	0x3fc603e63e8dda49              # double 0.17199400000000001
	.quad	0x400a793f6c2699c8              # double 3.3092030000000001
	.quad	0x3ffcdfb6134ce3de              # double 1.8046169999999999
	.quad	0x401d6bab649d388b              # double 7.3551460000000004
	.quad	0x3fe1e429e0a41a26              # double 0.55910199999999999
	.quad	0x40149c11a11233df              # double 5.1524109999999999
	.quad	0x40235c5fbf83382e              # double 9.6804179999999995
	.quad	0x3ffc4588a04d1202              # double 1.7669760000000001
	.quad	0x401345a74c09c3ce              # double 4.8180209999999999
	.quad	0x3feba25529fe004b              # double 0.86356599999999994
	.quad	0x40046d045fe11127              # double 2.5532309999999998
	.quad	0x3fee5a5b9628cbd1              # double 0.94852999999999998
	.quad	0x401f9d0e12e83a11              # double 7.9033740000000003
	.quad	0x400e750d2806af47              # double 3.8071540000000001
	.quad	0x3ffc14057082491b              # double 1.754888
	.quad	0x3fe30fa15db3397e              # double 0.59565800000000002
	.quad	0x401418a936c58eeb              # double 5.0240830000000001
	.quad	0x401b932acfb762d8              # double 6.8937179999999998
	.quad	0x401949b994e1a3f4              # double 6.3219969999999996
	.quad	0x401aaac215b9a5a9              # double 6.6667560000000003
	.quad	0x40086316a055757d              # double 3.0483829999999998
	.quad	0x4014777292c49342              # double 5.1166479999999996
	.quad	0x4011e9ba1b1960fa              # double 4.4782489999999999
	.quad	0x4012483558a76102              # double 4.5705159999999996
	.quad	0x3fc6bf2b239a38fc              # double 0.17770900000000001
	.quad	0x4022ba0232096788              # double 9.3632980000000003
	.quad	0x400398f8a4c1ebc8              # double 2.4496929999999999
	.quad	0x3ffb9f88fc9363f5              # double 1.7264489999999999
	.quad	0x3ff25f00abf76a2f              # double 1.1481939999999999
	.quad	0x402048383ad9f0a2              # double 8.1410540000000005
	.quad	0x3fe8b2df505d0fa6              # double 0.77183500000000005
	.quad	0x4023e4295a6c5d20              # double 9.9456279999999992
	.quad	0x401081d4b6a619db              # double 4.1267880000000003
	.quad	0x4021029691a75cd1              # double 8.5050550000000005
	.quad	0x40229ac6cdaf4adc              # double 9.3022980000000003
	.quad	0x3fe2597b30f8c650              # double 0.57342300000000002
	.quad	0x3fea760e0eb67c28              # double 0.82691099999999995
	.quad	0x401e6e963dc486ad              # double 7.6079949999999998
	.quad	0x3ff178ad25679896              # double 1.0919620000000001
	.quad	0x40117a847b24638d              # double 4.3696460000000004
	.quad	0x401f76c2699c7bcc              # double 7.8659759999999999
	.quad	0x401ace108c3f3e03              # double 6.7012349999999996
	.quad	0x4018e64a9cdc4439              # double 6.2248939999999999
	.quad	0x400b36db940fecdd              # double 3.401786
	.quad	0x3fe864f765fd8adb              # double 0.76232500000000003
	.quad	0x4023fa6b93ccd0ff              # double 9.9891020000000008
	.quad	0x401282830a0b1bbd              # double 4.627453
	.quad	0x40119cb20fb224ab              # double 4.4030230000000001
	.quad	0x4014499aa60913a5              # double 5.071879
	.quad	0x401c48dbcec84f90              # double 7.0711510000000004
	.quad	0x4022a42f1ed17c5f              # double 9.3206720000000001
	.quad	0x40187b2e1693c03c              # double 6.1202930000000002
	.quad	0x400685aee631f8a1              # double 2.8152750000000002
	.quad	0x4009f6134ce3de61              # double 3.2451539999999999
	.quad	0x4013ceac42e9899c              # double 4.951829
	.quad	0x400c70f6ad70e6f3              # double 3.555158
	.quad	0x40186935fc3b4f61              # double 6.1027449999999996
	.quad	0x400dc795703f2d3c              # double 3.7224529999999998
	.quad	0x4021007852f7f499              # double 8.5009180000000004
	.quad	0x4021adcebfec13ba              # double 8.8394680000000001
	.quad	0x401efe924f227d03              # double 7.7486050000000004
	.quad	0x3fccedcc20d5629e              # double 0.22600700000000001
	.quad	0x4005ff69878316a0              # double 2.7497129999999999
	.quad	0x40143f9b994e1a3f              # double 5.0621169999999998
	.quad	0x401155db76b3bb84              # double 4.3338450000000002
	.quad	0x4021c04db9c7368b              # double 8.8755930000000003
	.quad	0x40021c393682730c              # double 2.2637809999999998
	.quad	0x401e06b1e5c0b999              # double 7.5065379999999999
	.quad	0x400263b8a19c9d5a              # double 2.298692
	.quad	0x400636922d948dc1              # double 2.7766459999999999
	.quad	0x400211290257c915              # double 2.2583790000000001
	.quad	0x401f9a9ac36544fe              # double 7.9009809999999998
	.quad	0x400731ac9afe1da8              # double 2.8992550000000001
	.quad	0x4012d54c985f06f7              # double 4.7083000000000004
	.quad	0x400dc97635e7429a              # double 3.7233700000000001
	.quad	0x400b6994185058de              # double 3.426552
	.quad	0x4016a013ec460ed8              # double 5.656326
	.quad	0x402259f969e3c969              # double 9.1757310000000007
	.quad	0x40070cbc8c0ce91d              # double 2.8812190000000002
	.quad	0x3ffe3ea3df6db941              # double 1.890293
	.quad	0x40212dc8b86b15f9              # double 8.5894220000000008
	.quad	0x3ff2f220791c4b90              # double 1.184113
	.quad	0x40035f5f91600f34              # double 2.4215689999999999
	.quad	0x402161d4d834091c              # double 8.6910769999999999
	.quad	0x40182542e557de0d              # double 6.0363879999999996
	.quad	0x4018fd8a116659d1              # double 6.2475969999999998
	.quad	0x401f38a4c1ebc83b              # double 7.8053160000000003
	.quad	0x4015eb37c99ae925              # double 5.479705
	.quad	0x40201e19fc2a886a              # double 8.0587920000000004
	.quad	0x40005da1ec4e7254              # double 2.0457190000000001
	.quad	0x3ffcdb20b8066c2b              # double 1.803498
	.quad	0x4017626809d49518              # double 5.8460999999999999
	.quad	0x401c3655193708ab              # double 7.0530590000000002
	.quad	0x3ffe2d86ec17ebaf              # double 1.886115
	.quad	0x3fea573eab367a10              # double 0.82315000000000005
	.quad	0x3ff85081c2e33eff              # double 1.519655
	.quad	0x4021fc27631b584b              # double 8.9924879999999998
	.quad	0x401dc73bc903ea70              # double 7.4445639999999997
	.quad	0x400c2875d56f32be              # double 3.5197560000000001
	.quad	0x400edc49fd7a13c2              # double 3.8575629999999999
	.quad	0x4020cb52c9d16fca              # double 8.3971160000000005
	.quad	0x3fff4d834091c087              # double 1.9564239999999999
	.quad	0x4021f1b75a74c09c              # double 8.9721019999999995
	.quad	0x401543482be8bc17              # double 5.3157050000000003
	.quad	0x3ffb9d27c3936827              # double 1.725868
	.quad	0x4018003f2d3c792d              # double 6.0002409999999999
	.quad	0x40220ae2fbe33acd              # double 9.0212629999999994
	.quad	0x4009fe41d4b6a61a              # double 3.2491490000000001
	.quad	0x400dd82a9930be0e              # double 3.73055
	.quad	0x40229583c6c97d8d              # double 9.2920210000000001
	.quad	0x3fd708893b7d8490              # double 0.35989599999999999
	.quad	0x402016957470eb25              # double 8.0441090000000006
	.quad	0x4014a7b5286b5914              # double 5.1637769999999996
	.quad	0x4004638d1d8a5482              # double 2.5486089999999999
	.quad	0x3ff592dcb1465e89              # double 1.348355
	.quad	0x4010cf51efb6dca0              # double 4.2024609999999996
	.quad	0x400d08e3ef284168              # double 3.6293410000000002
	.quad	0x401a370e6f2e8c05              # double 6.5537660000000004
	.quad	0x4009b948dc11e42e              # double 3.215471
	.quad	0x401a90221426fe72              # double 6.6407550000000004
	.quad	0x401502d83c6c97d9              # double 5.2527780000000002
	.quad	0x401016b723ee1bd2              # double 4.0221830000000001
	.quad	0x4020e6f71a7e3088              # double 8.4511040000000008
	.quad	0x401a3cf41f212d77              # double 6.5595249999999998
	.quad	0x400d00d801b43526              # double 3.6254119999999999
	.quad	0x401769f0a1be2b49              # double 5.8534569999999997
	.quad	0x4022945bd0e12e84              # double 9.2897630000000006
	.quad	0x400df069a4df47fa              # double 3.7423890000000002
	.quad	0x40201dc74751ce29              # double 8.0581610000000001
	.quad	0x4021c704790b8499              # double 8.8887060000000009
	.quad	0x4012e545c78a6dad              # double 4.7238990000000003
	.quad	0x3fd173860999dcb5              # double 0.27267599999999997
	.quad	0x3ffa93f6c2699c7c              # double 1.661124
	.quad	0x401697be553ac4f8              # double 5.6481870000000001
	.quad	0x4022108f861a60d4              # double 9.0323449999999994
	.quad	0x402134345cfede98              # double 8.6019620000000003
	.quad	0x401cdc31df761cbd              # double 7.2150340000000002
	.quad	0x401a9416bdb1a6d7              # double 6.6446180000000004
	.quad	0x3ffd093b7d84901d              # double 1.814754
	.quad	0x4010503d57796399              # double 4.0783589999999998
	.quad	0x40225f8e9f6a93f3              # double 9.1866350000000008
	.quad	0x3ff4885f4a1272c9              # double 1.2832939999999999
	.quad	0x4015d545846e8f2a              # double 5.4582730000000002
	.quad	0x401504007570c565              # double 5.253908
	.quad	0x4010be07a28bb0a3              # double 4.1855760000000002
	.quad	0x401c5026cc1ca3a5              # double 7.0782730000000003
	.quad	0x400d0ff3ade225fa              # double 3.6327889999999998
	.quad	0x3ffa3f5f91600f34              # double 1.6404719999999999
	.quad	0x3ff9519ac79702e6              # double 1.5824229999999999
	.quad	0x40218c4651f3e89b              # double 8.7739740000000008
	.quad	0x40149f06705c896e              # double 5.1552980000000002
	.quad	0x3ff7ad71f36262cc              # double 1.4798450000000001
	.quad	0x4011d8cc9a77e5eb              # double 4.4617180000000003
	.quad	0x4006d1dbca9691a7              # double 2.8524699999999998
	.quad	0x401108f3a9b06812              # double 4.2587419999999998
	.quad	0x3ff49344806290ef              # double 1.285954
	.quad	0x40233c2df0d41312              # double 9.6175379999999997
	.quad	0x401bc759ab6d00b4              # double 6.9446779999999997
	.quad	0x401ebdb7f1737543              # double 7.6852720000000003
	.quad	0x400e85f30e7ff584              # double 3.8154050000000002
	.quad	0x40127143393ab431              # double 4.610608
	.quad	0x40202b532e7b3d8e              # double 8.084619
	.quad	0x3ffc8e68e3ef2841              # double 1.7847679999999999
	.quad	0x4020950dcfcc5b8e              # double 8.2911210000000004
	.quad	0x401c1df43c7d5ed0              # double 7.0292519999999996
	.quad	0x40083329c347e8cd              # double 3.0249820000000001
	.quad	0x401c156861e92924              # double 7.0209060000000001
	.quad	0x3ffa2bedfa43fe5d              # double 1.6357250000000001
	.quad	0x4018ab09a671ef31              # double 6.1670290000000003
	.quad	0x4023279c1f85d745              # double 9.577363
	.quad	0x40064c6e6d9be4cd              # double 2.7873199999999998
	.quad	0x401840b5aa715832              # double 6.0631930000000001
	.quad	0x401fddabe27179c0              # double 7.9664760000000001
	.quad	0x401db6b59146e4c1              # double 7.4284270000000001
	.quad	0x400473b3a68b19a4              # double 2.556495
	.quad	0x40002e5eedcc20d5              # double 2.0226419999999998
	.quad	0x3fcae40852b4d8ba              # double 0.21008399999999999
	.quad	0x40206465c70435f0              # double 8.1960890000000006
	.quad	0x4019129cbab649d4              # double 6.2681760000000004
	.quad	0x3ff3d041cc532a49              # double 1.2383439999999999
	.quad	0x40196ff1d81f1066              # double 6.3593209999999996
	.quad	0x401363de6149c6f3              # double 4.8475279999999996
	.quad	0x4022a701754b05b8              # double 9.3261830000000003
	.quad	0x400d1c7d5ed06fef              # double 3.6389109999999998
	.quad	0x4005e8db8bac710d              # double 2.7387000000000001
	.quad	0x401d63b927d45a60              # double 7.3473860000000002
	.quad	0x3fff7da836eb4e98              # double 1.968178
	.quad	0x4018f108c3f3e037              # double 6.235385
	.quad	0x4013bf0e0a84be40              # double 4.9365769999999998
	.quad	0x401f051266341180              # double 7.7549530000000004
	.quad	0x3ff50cc89b0ee49f              # double 1.3156209999999999
	.quad	0x4016f3964a59c066              # double 5.7378780000000003
	.quad	0x401f57564302b40f              # double 7.8352899999999996
	.quad	0x4016534a44c7b02d              # double 5.5813379999999997
	.quad	0x40171d113836a833              # double 5.7783860000000002
	.quad	0x401eddfb9389b520              # double 7.71678
	.quad	0x3ffab2b990afe60c              # double 1.668634
	.quad	0x40226fefbf401c50              # double 9.2186260000000004
	.quad	0x40070ff21b3aeee9              # double 2.8827859999999998
	.quad	0x3fca1a2e7f6f4be8              # double 0.20392399999999999
	.quad	0x3fb3a6698bb4d489              # double 0.076758000000000007
	.quad	0x40229475818c5c9a              # double 9.2899589999999996
	.quad	0x4014113b5bf6a0dc              # double 5.0168280000000003
	.quad	0x400edeeed8904f6e              # double 3.858854
	.quad	0x400ed9524bfd2e94              # double 3.8561139999999998
	.quad	0x40112dc011d3671b              # double 4.2946780000000002
	.quad	0x400f5bbb62413db8              # double 3.919791
	.quad	0x400b9ad9f0a1be2b              # double 3.4506109999999999
	.quad	0x401b80e8427418d7              # double 6.8758860000000004
	.quad	0x4005bf63c31df762              # double 2.7184520000000001
	.quad	0x3fff3dc26dce39b4              # double 1.9525779999999999
	.quad	0x40232d8298cc1440              # double 9.5888869999999997
	.quad	0x4011ac981beb1811              # double 4.4185489999999996
	.quad	0x4019c3f67f4dbdf9              # double 6.44137
	.quad	0x4002e558644523f6              # double 2.3619849999999998
	.quad	0x4009660f5e41d4b7              # double 3.1748340000000002
	.quad	0x3ff99781c714fce7              # double 1.5994889999999999
	.quad	0x4010c1ab0856e697              # double 4.1891290000000003
	.quad	0x4003287229e90796              # double 2.394749
	.quad	0x40201a0dbad3a605              # double 8.0508860000000002
	.quad	0x401762b4d8ba40d9              # double 5.846393
	.quad	0x4017caafff36ac64              # double 5.9479369999999996
	.quad	0x40200799c38b04ab              # double 8.0148449999999993
	.quad	0x4021dc4aa53fc009              # double 8.9302569999999992
	.quad	0x40104f2f123c42a6              # double 4.0773279999999996
	.quad	0x4023ddf9378ee286              # double 9.9335419999999992
	.quad	0x4021c5193708aac9              # double 8.8849579999999992
	.quad	0x4023caa8c9b84556              # double 9.8958189999999995
	.quad	0x40218d3b0813cab8              # double 8.7758409999999998
	.quad	0x3ff4c887229e9079              # double 1.2989569999999999
	.quad	0x401777531db445ed              # double 5.8665279999999997
	.quad	0x402398d716d2aa5c              # double 9.7985159999999993
	.quad	0x401c5c11a11233df              # double 7.0899109999999999
	.quad	0x400b80064a9cdc44              # double 3.4375119999999999
	.quad	0x4005d5ed8d36b4c8              # double 2.729457
	.quad	0x3ff05fd7a13c254a              # double 1.0233989999999999
	.quad	0x400f7f4f50a02b84              # double 3.937163
	.quad	0x400229741d084e83              # double 2.270241
	.quad	0x400a47168f8e7ddd              # double 3.2847110000000002
	.quad	0x4019d14ec204f2ae              # double 6.454402
	.quad	0x3feaa3443d46b26c              # double 0.83243
	.quad	0x400c597d49d7ba67              # double 3.5436960000000002
	.quad	0x4019858bc59b8024              # double 6.3804160000000003
	.quad	0x3fe92fc69728a611              # double 0.78708199999999995
	.quad	0x401fd337a80cf9e4              # double 7.9562670000000004
	.quad	0x401b5193f6c2699c              # double 6.8296659999999996
	.quad	0x3ffe68e92d55a3a1              # double 1.9006130000000001
	.quad	0x40184234a87e38eb              # double 6.064654
	.quad	0x3f842fe82517e77d              # double 0.0098569999999999994
	.quad	0x3fef1f7d73c92578              # double 0.97259399999999995
	.quad	0x3ff07d556084a516              # double 1.030599
	.quad	0x4010669595feda66              # double 4.1001799999999999
	.quad	0x401a00c564f97edc              # double 6.5007529999999996
	.quad	0x4023f4ae85b9e8c4              # double 9.9778939999999991
	.quad	0x4015e8bb0a2ca9ac              # double 5.4772759999999998
	.quad	0x4021b013a92a3055              # double 8.8438999999999997
	.quad	0x40049380cb6c7a7d              # double 2.5720230000000002
	.quad	0x4020f2938de6ddf0              # double 8.4737819999999999
	.quad	0x4013190fb65668c2              # double 4.7744739999999997
	.quad	0x4015c9e9d0e991ff              # double 5.4471809999999996
	.quad	0x401a12278d0cc35d              # double 6.5177290000000001
	.quad	0x4020b2849cb252ce              # double 8.348668
	.quad	0x3fc76c3fc43b2dd3              # double 0.18299099999999999
	.quad	0x3ff00bbd3804534c              # double 1.002866
	.quad	0x4010ae89a88ace25              # double 4.1704470000000002
	.quad	0x3fe255e8d5410f95              # double 0.57298700000000002
	.quad	0x401f1b4c3c18b503              # double 7.7766580000000002
	.quad	0x40102fa11a975afb              # double 4.046513
	.quad	0x4000107314ca9260              # double 2.008032
	.quad	0x4021289e34330d74              # double 8.5793320000000008
	.quad	0x40035125dd095af3              # double 2.4146230000000002
	.quad	0x4011a9d51b4fe79f              # double 4.4158520000000001
	.quad	0x3ff7ed82ba5a0382              # double 1.4954860000000001
	.quad	0x4015afea8112ba17              # double 5.4217930000000001
	.quad	0x3ff213ec460ed80a              # double 1.129864
	.quad	0x401172c669057d18              # double 4.3620850000000004
	.quad	0x40168ddebd9018e7              # double 5.6385449999999997
	.quad	0x3fe18b45ae5ffa3c              # double 0.54825100000000004
	.quad	0x40163513b5bf6a0e              # double 5.5518330000000002
	.quad	0x400037eaa2a0a958              # double 2.0273029999999999
	.quad	0x4022462e90364389              # double 9.1370740000000001
	.quad	0x40239d8969a0ad8a              # double 9.8076889999999999
	.quad	0x401e182c6ef3d3a2              # double 7.5236070000000002
	.quad	0x402357fb267c6b8b              # double 9.6718379999999992
	.quad	0x401a2fcb4f1e4b45              # double 6.5466740000000003
	.quad	0x401e04e7ee9142b3              # double 7.5047909999999999
	.quad	0x4014f9a88ace24bc              # double 5.2438070000000003
	.quad	0x401fda03c4b09e99              # double 7.9629050000000001
	.quad	0x3ff48e3369b9d7fe              # double 1.2847170000000001
	.quad	0x3ffb2646f1561911              # double 1.6968449999999999
	.quad	0x40087fa11a975afb              # double 3.062319
	.quad	0x401e344284dfce31              # double 7.5510349999999997
	.quad	0x401de91ab8e8ea3a              # double 7.4776410000000002
	.quad	0x3febf689ca18bd66              # double 0.87384499999999998
	.quad	0x400436a593a2df93              # double 2.5266829999999998
	.quad	0x401b5e4cd7492791              # double 6.8420899999999998
	.quad	0x400c6112ba16e7a3              # double 3.547399
	.quad	0x4022a71dc50ce4eb              # double 9.3263990000000003
	.quad	0x4001a7d77fae3609              # double 2.2069540000000001
	.quad	0x3fde78d4fdf3b646              # double 0.47612500000000002
	.quad	0x3fabe9424e592967              # double 0.054514
	.quad	0x4017e13f4a98aa86              # double 5.9699679999999997
	.quad	0x402078dd1e53a81e              # double 8.2360620000000004
	.quad	0x40181b62c77574f7              # double 6.0267439999999999
	.quad	0x402207f540895d0b              # double 9.0155429999999992
	.quad	0x3fffcf6cefed6345              # double 1.9881409999999999
	.quad	0x401965885d31337f              # double 6.3491530000000003
	.quad	0x4015a3a1d323fee3              # double 5.4097970000000002
	.quad	0x40228634b945308c              # double 9.2621210000000004
	.quad	0x3fd243c3a42f1ed1              # double 0.28538599999999997
	.quad	0x4018a4523f67f4dc              # double 6.1604700000000001
	.quad	0x3fef4100e6afcce2              # double 0.97668500000000003
	.quad	0x40214938583621fb              # double 8.643008
	.quad	0x3ff69835158b8280              # double 1.4121600000000001
	.quad	0x4002572f76e6106b              # double 2.2925710000000001
	.quad	0x4016970e6f2e8c05              # double 5.6475160000000004
	.quad	0x4005cfb5d031055c              # double 2.7264210000000002
	.quad	0x4015d35d249e44fa              # double 5.45641
	.quad	0x401ba08aac96cc60              # double 6.9067790000000002
	.quad	0x40230398c7e28241              # double 9.5070250000000005
	.quad	0x400ecea5b530ced5              # double 3.850902
	.quad	0x401b672324c83665              # double 6.8507199999999999
	.quad	0x401baa92a3055326              # double 6.9165749999999999
	.quad	0x401447824d4cb9ed              # double 5.069833
	.quad	0x401707d5a9eb2075              # double 5.7576510000000001
	.quad	0x400a9d028a1dfb94              # double 3.3266650000000002
	.quad	0x3ff136ac647778dd              # double 1.0758479999999999
	.quad	0x40116949a5657fb7              # double 4.3528200000000004
	.quad	0x4010f21c475e6363              # double 4.2364360000000003
	.quad	0x3ff811361dc93ea3              # double 1.504202
	.quad	0x3ffcad538ac18f82              # double 1.792316
	.quad	0x3feab7521144cbe2              # double 0.83487800000000001
	.quad	0x3fdb9a73b42cc2d7              # double 0.43130200000000002
	.quad	0x402137e64f54d1e9              # double 8.6091789999999992
	.quad	0x401d1fc3b4f61672              # double 7.2810199999999998
	.quad	0x401534fa05143bf7              # double 5.3017349999999999
	.quad	0x400973f5b5fa2270              # double 3.1816209999999998
	.quad	0x3fe9be3c105186db              # double 0.80447199999999996
	.quad	0x401b3f11f926c7eb              # double 6.8115920000000001
	.quad	0x401572e87d2c7b89              # double 5.362215
	.quad	0x40032f4e0114d2f6              # double 2.3980980000000001
	.quad	0x4021072f76e6106b              # double 8.5140340000000005
	.quad	0x3fe24ce5f7403dde              # double 0.57188700000000003
	.quad	0x40141dce39b456b4              # double 5.0291069999999998
	.quad	0x4014879c842fa509              # double 5.1324329999999998
	.quad	0x402121f70de8f6cf              # double 8.566338
	.quad	0x40201a745bf26f1e              # double 8.0516690000000004
	.quad	0x402319f42bb66730              # double 9.5506910000000005
	.quad	0x401d81d8622c4502              # double 7.3768019999999996
	.quad	0x40202daf07bfe7e2              # double 8.089226
	.quad	0x402005ea24cc6823              # double 8.011552
	.quad	0x3ff3982a9930be0e              # double 1.22465
	.quad	0x402338dc981beb18              # double 9.6110579999999998
	.quad	0x3ff07033a4723ab0              # double 1.027393
	.quad	0x4021a04406c00da2              # double 8.8130190000000006
	.quad	0x401b97e80389f83c              # double 6.8983460000000001
	.quad	0x3fef514e3bcd35a8              # double 0.97867499999999996
	.quad	0x40217451dabe2718              # double 8.7271870000000007
	.quad	0x4011b92a30553261              # double 4.4308249999999996
	.quad	0x400f2279dd3bafd9              # double 3.8918339999999998
	.quad	0x4014863800218def              # double 5.1310729999999998
	.quad	0x401d9bba12b5e52a              # double 7.4020770000000002
	.quad	0x400d67e175d13d75              # double 3.6757230000000001
	.quad	0x4022871da37ef5a9              # double 9.2638979999999993
	.quad	0x401e3aa79bbadc0a              # double 7.5572800000000004
	.quad	0x3ff7df644955b467              # double 1.4920389999999999
	.quad	0x401fe6e7e62dc6e3              # double 7.9754940000000003
	.quad	0x40179d8e0008637c              # double 5.9038620000000002
	.quad	0x4017944ae85b9e8c              # double 5.8948169999999998
	.quad	0x401e494898f605ab              # double 7.5715659999999997
	.quad	0x4022216d0917d6b6              # double 9.0652849999999994
	.quad	0x400bbf7403dddb12              # double 3.468483
	.quad	0x3ff366e653868fd2              # double 1.2126220000000001
	.quad	0x401c590c4dec1c1d              # double 7.0869609999999996
	.quad	0x4022d683e425aee6              # double 9.4189749999999997
	.quad	0x40228ee0d23d4f16              # double 9.2790590000000002
	.quad	0x3ffc12253111f0c3              # double 1.7544299999999999
	.quad	0x4016b62845996745              # double 5.6778880000000003
	.quad	0x4020f70e0a84be40              # double 8.4825289999999995
	.quad	0x401c143a647fdc59              # double 7.0197539999999998
	.quad	0x400376b5d462c344              # double 2.4329640000000001
	.quad	0x3fcc75c4a83b1d0d              # double 0.22234400000000001
	.quad	0x40134f97edc7ef17              # double 4.8277279999999996
	.quad	0x40210fc2224edf61              # double 8.5307779999999998
	.quad	0x40170ac710cb295f              # double 5.7605250000000003
	.quad	0x3fdda47a9e2bcf92              # double 0.46316400000000002
	.quad	0x40120f69ca9ef523              # double 4.5150519999999998
	.quad	0x401f574f2f123c43              # double 7.8352630000000003
	.quad	0x4021af02a3486f05              # double 8.8418170000000007
	.quad	0x3ff260157eed45e9              # double 1.148458
	.quad	0x4001557928e0c9da              # double 2.1667350000000001
	.quad	0x4010bf60e0eb67c3              # double 4.1868930000000004
	.quad	0x4010cb28522ea0fd              # double 4.1983959999999998
	.quad	0x3fe3cafd5454152b              # double 0.618529
	.quad	0x4023e7b224aada34              # double 9.9525310000000004
	.quad	0x401f1ff759685122              # double 7.7812169999999998
	.quad	0x4013cf4e0114d2f6              # double 4.9524460000000001
	.quad	0x4021baf102363b25              # double 8.8651199999999992
	.quad	0x401e28bdec5f394b              # double 7.5397869999999995
	.quad	0x4012304a2fcefaa4              # double 4.5471579999999996
	.quad	0x40236ac6cdaf4adc              # double 9.7085480000000003
	.quad	0x4012d3f7ced91687              # double 4.7069999999999999
	.quad	0x401c7247021d10b2              # double 7.111599
	.quad	0x400299cae21101b0              # double 2.325094
	.quad	0x400537c5ef62f9ca              # double 2.6522329999999998
	.quad	0x4011788a47ecfe9b              # double 4.3677149999999996
	.quad	0x401c2cf56eac8605              # double 7.0439049999999996
	.quad	0x4022e8667f90d9d7              # double 9.4539069999999991
	.quad	0x3fdc39192641b329              # double 0.44098500000000002
	.quad	0x40199315d701d9f5              # double 6.3936380000000002
	.quad	0x3ff17a237cdcca71              # double 1.092319
	.quad	0x400cab07d0aed99d              # double 3.5835110000000001
	.quad	0x402043d76ee73e68              # double 8.1325029999999998
	.quad	0x401a70ae10492360              # double 6.6100390000000004
	.quad	0x40051fd933e35c5b              # double 2.6405509999999999
	.quad	0x40234e075f6fd220              # double 9.6524000000000001
	.quad	0x4013a25e13b18dac              # double 4.9085619999999999
	.quad	0x3ff609dbec2480e9              # double 1.377407
	.quad	0x4020f20e8427418d              # double 8.4727669999999993
	.quad	0x3f8d6a593a2df938              # double 0.014363000000000001
	.quad	0x401ec3886594af4f              # double 7.6909499999999999
	.quad	0x40203c62e4d1a650              # double 8.1179419999999993
	.quad	0x4012f124d099e0e7              # double 4.7354919999999998
	.quad	0x3fea0f648c7192ea              # double 0.81437899999999996
	.quad	0x402222e3a3a8e714              # double 9.0681429999999991
	.quad	0x3ffe37c99ae924f2              # double 1.88862
	.quad	0x3fc6b191dde37586              # double 0.17729400000000001
	.quad	0x3ff3bade225fa659              # double 1.2331220000000001
	.quad	0x400c00807357e671              # double 3.5002450000000001
	.quad	0x4023e771c970f7ba              # double 9.9520400000000002
	.quad	0x3fe6a3443d46b26c              # double 0.70743
	.quad	0x4013c1f79420b3d5              # double 4.9394210000000003
	.quad	0x40128aeff5c6c11a              # double 4.6356809999999999
	.quad	0x4003af6a50d6b229              # double 2.4606520000000001
	.quad	0x3fec0b502ababead              # double 0.87638099999999997
	.quad	0x401d853d640e9d52              # double 7.3801170000000003
	.quad	0x400f504ab606b7aa              # double 3.9142049999999999
	.quad	0x402024afd5454153              # double 8.0716540000000006
	.quad	0x401ae3c68661ae71              # double 6.7224370000000002
	.quad	0x40231330728e92d5              # double 9.5374789999999993
	.quad	0x4022d5434a01abd2              # double 9.4165290000000006
	.quad	0x40147e115592d98c              # double 5.123113
	.quad	0x3ff45233df2a9d62              # double 1.2700689999999999
	.quad	0x40176fe8ee6b8306              # double 5.8592870000000001
	.quad	0x4023eb4efcbd5561              # double 9.9595870000000008
	.quad	0x4023c3484d76ab58              # double 9.8814109999999999
	.quad	0x4018d4f3ba775fb3              # double 6.2079610000000001
	.quad	0x400f94b167ec7864              # double 3.9476040000000001
	.quad	0x401dcf94855da273              # double 7.4527150000000004
	.quad	0x4012f5271bcdbbe0              # double 4.7394069999999999
	.quad	0x400522e557de0d67              # double 2.642039
	.quad	0x4017f17e34b94531              # double 5.9858330000000004
	.quad	0x401aea35935fc3b5              # double 6.72872
	.quad	0x401d3240746455eb              # double 7.2990740000000001
	.quad	0x401840a73f748a16              # double 6.0631380000000004
	.quad	0x401bc268900c521e              # double 6.9398520000000001
	.quad	0x3ffaa09fe86833c6              # double 1.664215
	.quad	0x3fd69691a75cd0bb              # double 0.35293999999999998
	.quad	0x400d21bc98a222d5              # double 3.641473
	.quad	0x40218e353f7ced91              # double 8.7777499999999993
	.quad	0x401a190f301eabbd              # double 6.5244720000000003
	.quad	0x4014fc1c1d6cf851              # double 5.2462010000000001
	.quad	0x40144718a86d71f3              # double 5.0694299999999997
	.quad	0x4012233721d53cde              # double 4.5343900000000001
	.quad	0x400addcf893faf42              # double 3.3583059999999998
	.quad	0x40132cb8e086bdf5              # double 4.7936740000000002
	.quad	0x402011ef954eb13e              # double 8.035031
	.quad	0x40132add590c0ad0              # double 4.7918599999999998
	.quad	0x4021120c8cd63cb8              # double 8.5352519999999998
	.quad	0x3ff09b97353b4b30              # double 1.0379860000000001
	.quad	0x3fe6820e6299524c              # double 0.703376
	.quad	0x4010306466b1e5c1              # double 4.0472580000000002
	.quad	0x400ac247021d10b2              # double 3.344862
	.quad	0x3ffbecb20fb224ab              # double 1.745287
	.quad	0x401ccb9389b52008              # double 7.1988050000000001
	.quad	0x400c00fa15db3398              # double 3.5004770000000001
	.quad	0x4019cbe7f2c3009b              # double 6.4491269999999998
	.quad	0x3fd182fd75e2046c              # double 0.27361999999999997
	.quad	0x3ff090d2806af46b              # double 1.0353570000000001
	.quad	0x400d0787ce95faa9              # double 3.6286770000000002
	.quad	0x402174690de09353              # double 8.7273639999999997
	.quad	0x401a4b2e59af9ebf              # double 6.5734190000000003
	.quad	0x400c3f51efb6dca0              # double 3.5309179999999998
	.quad	0x4003812ad81adea9              # double 2.4380700000000002
	.quad	0x3ff4c3bd5992428d              # double 1.2977879999999999
	.quad	0x4015b6aa4b9884c7              # double 5.4283840000000003
	.quad	0x4023878811b1d92b              # double 9.7647099999999991
	.quad	0x3fc2111ada76d97b              # double 0.14114699999999999
	.quad	0x3fe09eabbcb1cc96              # double 0.51936899999999997
	.quad	0x40198e8ff327aa69              # double 6.389221
	.quad	0x4021ee3d1cc100e7              # double 8.9653100000000006
	.quad	0x4015846e4c0df58c              # double 5.379327
	.quad	0x4011558644523f68              # double 4.33352
	.quad	0x40207f10880d801b              # double 8.2481729999999995
	.quad	0x401cf531550ca1cf              # double 7.239446
	.quad	0x4022507789a45910              # double 9.1571619999999996
	.quad	0x3ff2d9b1b79d909f              # double 1.178148
	.quad	0x401ac65c70435efa              # double 6.6937119999999997
	.quad	0x4002ba2cecc814d7              # double 2.3409059999999999
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
