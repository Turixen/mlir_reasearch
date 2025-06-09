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
	.quad	0x4147f614491b3f21              # double 3140648.5711440002
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
	.quad	57                              # 0x39
	.quad	91                              # 0x5b
	.quad	153                             # 0x99
	.quad	169                             # 0xa9
	.quad	233                             # 0xe9
	.quad	254                             # 0xfe
	.quad	320                             # 0x140
	.quad	345                             # 0x159
	.quad	411                             # 0x19b
	.quad	439                             # 0x1b7
	.quad	503                             # 0x1f7
	.quad	525                             # 0x20d
	.quad	589                             # 0x24d
	.quad	621                             # 0x26d
	.quad	685                             # 0x2ad
	.quad	719                             # 0x2cf
	.quad	784                             # 0x310
	.quad	809                             # 0x329
	.quad	873                             # 0x369
	.quad	904                             # 0x388
	.quad	968                             # 0x3c8
	.quad	994                             # 0x3e2
	.quad	1057                            # 0x421
	.quad	1079                            # 0x437
	.quad	1147                            # 0x47b
	.quad	1175                            # 0x497
	.quad	1241                            # 0x4d9
	.quad	1258                            # 0x4ea
	.quad	1321                            # 0x529
	.quad	1352                            # 0x548
	.quad	1410                            # 0x582
	.quad	1439                            # 0x59f
	.quad	1502                            # 0x5de
	.quad	1532                            # 0x5fc
	.quad	1598                            # 0x63e
	.quad	1617                            # 0x651
	.quad	1672                            # 0x688
	.quad	1698                            # 0x6a2
	.quad	1764                            # 0x6e4
	.quad	1792                            # 0x700
	.quad	1859                            # 0x743
	.quad	1888                            # 0x760
	.quad	1949                            # 0x79d
	.quad	1975                            # 0x7b7
	.quad	2044                            # 0x7fc
	.quad	2070                            # 0x816
	.quad	2135                            # 0x857
	.quad	2168                            # 0x878
	.quad	2234                            # 0x8ba
	.quad	2262                            # 0x8d6
	.quad	2328                            # 0x918
	.quad	2349                            # 0x92d
	.quad	2416                            # 0x970
	.quad	2445                            # 0x98d
	.quad	2511                            # 0x9cf
	.quad	2535                            # 0x9e7
	.quad	2600                            # 0xa28
	.quad	2618                            # 0xa3a
	.quad	2685                            # 0xa7d
	.quad	2711                            # 0xa97
	.quad	2777                            # 0xad9
	.quad	2807                            # 0xaf7
	.quad	2872                            # 0xb38
	.quad	2895                            # 0xb4f
	.quad	2959                            # 0xb8f
	.quad	2979                            # 0xba3
	.quad	3041                            # 0xbe1
	.quad	3063                            # 0xbf7
	.quad	3123                            # 0xc33
	.quad	3146                            # 0xc4a
	.quad	3212                            # 0xc8c
	.quad	3241                            # 0xca9
	.quad	3303                            # 0xce7
	.quad	3341                            # 0xd0d
	.quad	3404                            # 0xd4c
	.quad	3428                            # 0xd64
	.quad	3490                            # 0xda2
	.quad	3516                            # 0xdbc
	.quad	3586                            # 0xe02
	.quad	3619                            # 0xe23
	.quad	3683                            # 0xe63
	.quad	3708                            # 0xe7c
	.quad	3777                            # 0xec1
	.quad	3803                            # 0xedb
	.quad	3863                            # 0xf17
	.quad	3887                            # 0xf2f
	.quad	3948                            # 0xf6c
	.quad	3971                            # 0xf83
	.quad	4029                            # 0xfbd
	.quad	4051                            # 0xfd3
	.quad	4110                            # 0x100e
	.quad	4138                            # 0x102a
	.quad	4202                            # 0x106a
	.quad	4236                            # 0x108c
	.quad	4296                            # 0x10c8
	.quad	4322                            # 0x10e2
	.quad	4386                            # 0x1122
	.quad	4413                            # 0x113d
	.quad	4476                            # 0x117c
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
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
	.quad	39                              # 0x27
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	31                              # 0x1f
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
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	35                              # 0x23
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
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
	.quad	53                              # 0x35
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
	.quad	73                              # 0x49
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	45                              # 0x2d
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
	.quad	67                              # 0x43
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
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
	.quad	41                              # 0x29
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
	.quad	65                              # 0x41
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	97                              # 0x61
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
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
	.quad	73                              # 0x49
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
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
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	57                              # 0x39
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
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
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
	.quad	19                              # 0x13
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	46                              # 0x2e
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
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
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
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	97                              # 0x61
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
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	61                              # 0x3d
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
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	59                              # 0x3b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
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
	.quad	15                              # 0xf
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	63                              # 0x3f
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
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	97                              # 0x61
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
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
	.quad	17                              # 0x11
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
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
	.quad	19                              # 0x13
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
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
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	75                              # 0x4b
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	17                              # 0x11
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
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
	.quad	19                              # 0x13
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
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	53                              # 0x35
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
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
	.quad	37                              # 0x25
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
	.quad	71                              # 0x47
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	2                               # 0x2
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
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
	.quad	65                              # 0x41
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
	.quad	82                              # 0x52
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
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
	.quad	19                              # 0x13
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
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
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x400b6ba1f4b1ee24              # double 3.4275549999999999
	.quad	0x40134f644955b467              # double 4.8275309999999996
	.quad	0x401cc3a9b0681238              # double 7.1910769999999999
	.quad	0x401ce59ddc1e7968              # double 7.2242350000000002
	.quad	0x4022c4013ec460ee              # double 9.3828220000000009
	.quad	0x3fff25abc0e38a7e              # double 1.9466969999999999
	.quad	0x4011046ae3a3a8e7              # double 4.2543139999999999
	.quad	0x4008ba5e353f7cee              # double 3.0910000000000002
	.quad	0x402029dd1a21ea36              # double 8.0817650000000008
	.quad	0x400a937a80cf9e38              # double 3.3220109999999998
	.quad	0x40075709b738e6d1              # double 2.9174989999999998
	.quad	0x3fc67e9531550ca2              # double 0.17573800000000001
	.quad	0x4011bc68661ae70c              # double 4.4339919999999999
	.quad	0x4023f7df19d66adb              # double 9.9841239999999995
	.quad	0x40132fadafd11383              # double 4.7965609999999996
	.quad	0x400e707314ca9260              # double 3.804907
	.quad	0x4018cae81882adc5              # double 6.1981510000000002
	.quad	0x4021543504c48adf              # double 8.6644670000000001
	.quad	0x400a152c9d16fc9c              # double 3.2603390000000001
	.quad	0x3ff7351697f1f9ad              # double 1.450461
	.quad	0x3ff3e0be51090710              # double 1.2423690000000001
	.quad	0x40100a7589efd86b              # double 4.0102140000000004
	.quad	0x402340329802c0a5              # double 9.6253860000000006
	.quad	0x401fee32e3821af8              # double 7.9826160000000001
	.quad	0x40106aaf78feef5f              # double 4.1041850000000002
	.quad	0x3ff7ef0e0a84be40              # double 1.4958629999999999
	.quad	0x401c30f98fa37692              # double 7.0478269999999998
	.quad	0x4012cd67ba237cdd              # double 4.7005910000000002
	.quad	0x3ff85a133c1ce6c1              # double 1.5219910000000001
	.quad	0x40200d6323bbc6eb              # double 8.0261469999999999
	.quad	0x4016a8f7985271bd              # double 5.6650070000000001
	.quad	0x40096f733a8a3f8a              # double 3.1794190000000002
	.quad	0x40105c81d3aa36a0              # double 4.0903390000000002
	.quad	0x401f59d51b4fe79f              # double 7.8377270000000001
	.quad	0x4017c19c9d5a187a              # double 5.9390739999999997
	.quad	0x401ce605681ecd4b              # double 7.2246300000000003
	.quad	0x400f25eedcc20d56              # double 3.8935219999999999
	.quad	0x4020c7dae81882ae              # double 8.3903420000000004
	.quad	0x401b6c9fb6134ce4              # double 6.8560780000000001
	.quad	0x400e3c9e6687f456              # double 3.7795990000000002
	.quad	0x401595f394b7b289              # double 5.3964369999999997
	.quad	0x4018e86c226809d5              # double 6.2269750000000004
	.quad	0x40141e4c51116a8c              # double 5.0295880000000004
	.quad	0x40149da16616b54e              # double 5.1539359999999999
	.quad	0x4020dab606b7aa26              # double 8.4271700000000003
	.quad	0x400534ab1d4f9c20              # double 2.6507170000000002
	.quad	0x4020ea50d6b228dd              # double 8.4576480000000007
	.quad	0x401add601ffb480a              # double 6.7161869999999997
	.quad	0x3ff369ccb7d41744              # double 1.21333
	.quad	0x3feb45baf533f423              # double 0.85226199999999996
	.quad	0x4023368ab4fa4830              # double 9.6065269999999998
	.quad	0x40183ae46cfc829d              # double 6.057512
	.quad	0x3fe6de2cdc011d36              # double 0.71462099999999995
	.quad	0x40129320d9945b6c              # double 4.6436799999999998
	.quad	0x3fa334a44c7b02d6              # double 0.037511000000000003
	.quad	0x40013442c7fbacb4              # double 2.1505179999999999
	.quad	0x4019411233df2a9d              # double 6.3135459999999997
	.quad	0x401bb2cbea4ebdd3              # double 6.9246059999999998
	.quad	0x3fdab45ae5ffa3ba              # double 0.41725800000000002
	.quad	0x400871f79420b3d5              # double 3.0556480000000001
	.quad	0x4019f84ba0e84274              # double 6.4924759999999999
	.quad	0x400c9cffeb074a77              # double 3.57666
	.quad	0x401b871c10d7be98              # double 6.8819429999999997
	.quad	0x401c8e60c38f3669              # double 7.1390409999999997
	.quad	0x3fca7d45a5fc7e6b              # double 0.20694799999999999
	.quad	0x400d2cd31769a911              # double 3.646887
	.quad	0x401a422a2c237479              # double 6.5646139999999997
	.quad	0x4021fe013660e51d              # double 8.9961029999999997
	.quad	0x400f3d15f02c4d66              # double 3.904827
	.quad	0x400f48cd63cb8173              # double 3.9105479999999999
	.quad	0x401307681669ced1              # double 4.7572330000000003
	.quad	0x3fe124c1ebc83a97              # double 0.53573700000000002
	.quad	0x401523c36113404f              # double 5.2849250000000003
	.quad	0x401c39f59ccfaeff              # double 7.0566009999999997
	.quad	0x4019bbe835dedf1e              # double 6.433503
	.quad	0x4019899dcb5781c7              # double 6.3843909999999999
	.quad	0x400ba03f705857b0              # double 3.453246
	.quad	0x400d76f112fd32c6              # double 3.6830769999999999
	.quad	0x3ff43b24638c9753              # double 1.2644390000000001
	.quad	0x4022afaacd9e83e4              # double 9.3430999999999997
	.quad	0x3ffc874107314ca9              # double 1.783021
	.quad	0x40126e69f05ea24d              # double 4.6078260000000002
	.quad	0x401b92a843808851              # double 6.8932200000000003
	.quad	0x40193fb7a5f41aef              # double 6.3122239999999996
	.quad	0x401d4a515ce9e5e2              # double 7.3225759999999998
	.quad	0x401aa3bb40b34e77              # double 6.6598940000000004
	.quad	0x4018f3e3e29307af              # double 6.2381739999999999
	.quad	0x3fec4e9813879c41              # double 0.88459399999999999
	.quad	0x400afbd3804534bd              # double 3.3729619999999998
	.quad	0x4012a8ed5f138bce              # double 4.664968
	.quad	0x400c467e846a5d6c              # double 3.534421
	.quad	0x3feb80d1b71758e2              # double 0.85947499999999999
	.quad	0x401b7f1a9fbe76c9              # double 6.8741250000000003
	.quad	0x3ffa1f86e3b46fdf              # double 1.6326970000000001
	.quad	0x401fd3e0370cdc87              # double 7.9569099999999997
	.quad	0x3fee8af1cb89d6ae              # double 0.954461
	.quad	0x4019a832fcac8e69              # double 6.4142570000000001
	.quad	0x400ee7e9531550ca              # double 3.8632379999999999
	.quad	0x401aab0c4588a04d              # double 6.6670389999999999
	.quad	0x4020d5f80991793a              # double 8.4179080000000006
	.quad	0x401ac70c1333b96b              # double 6.6943820000000001
	.quad	0x401163e8576cce5f              # double 4.3475659999999996
	.quad	0x40020aa087ca643d              # double 2.2551890000000001
	.quad	0x40213e779207d4e1              # double 8.6220060000000007
	.quad	0x401d8f23033a4724              # double 7.3897820000000003
	.quad	0x4014c55ffe6d58c9              # double 5.1927490000000001
	.quad	0x400bd0b84988094e              # double 3.4769139999999998
	.quad	0x400109bb6aa4b988              # double 2.1297519999999999
	.quad	0x4005ec5004fb1184              # double 2.7403870000000001
	.quad	0x402222e90364388f              # double 9.0681840000000005
	.quad	0x401f690eed02cd3a              # double 7.8525960000000001
	.quad	0x4017fdb50f40e5a3              # double 5.9977609999999997
	.quad	0x3ff2c4577d955715              # double 1.1729350000000001
	.quad	0x4022e682b6284599              # double 9.4502159999999992
	.quad	0x40034f1b25f633ce              # double 2.4136259999999998
	.quad	0x4010af43c7d5ed07              # double 4.171157
	.quad	0x40214333fc86cebc              # double 8.6312560000000004
	.quad	0x40153b673c4f3ba7              # double 5.3080109999999996
	.quad	0x40228a6a65cf67b2              # double 9.2703430000000004
	.quad	0x4022f481d3aa36a0              # double 9.4775530000000003
	.quad	0x401867314ca925ff              # double 6.1007740000000004
	.quad	0x3fd0f93ff25e56cd              # double 0.26521299999999998
	.quad	0x40208bbc2b94d940              # double 8.2729199999999992
	.quad	0x400d927a20578e5c              # double 3.6965219999999999
	.quad	0x401d9cf4a558ea7d              # double 7.4032770000000001
	.quad	0x401e1afd5454152b              # double 7.5263569999999999
	.quad	0x4013f66277c45cbc              # double 4.9906100000000002
	.quad	0x40170e23f24d8fd6              # double 5.7638090000000002
	.quad	0x400e8a454de7ea60              # double 3.8175150000000002
	.quad	0x40137da554b8bef9              # double 4.8727010000000002
	.quad	0x40128468448cf7cb              # double 4.6293040000000003
	.quad	0x4020d6534373f317              # double 8.4186040000000002
	.quad	0x401c34488c60cbf3              # double 7.0510580000000003
	.quad	0x40087a08bfc2224f              # double 3.0595870000000001
	.quad	0x401577d73c925786              # double 5.367032
	.quad	0x402143d9cae21102              # double 8.6325210000000006
	.quad	0x400be16616b54e2b              # double 3.485058
	.quad	0x4002f644955b4678              # double 2.3702480000000001
	.quad	0x40121fbb517a4617              # double 4.5309879999999998
	.quad	0x40193bf9c62a1b5c              # double 6.3085699999999996
	.quad	0x400349f383f0bae9              # double 2.4111090000000002
	.quad	0x400700064a9cdc44              # double 2.8750119999999999
	.quad	0x40235bedd8b60f1b              # double 9.6795489999999997
	.quad	0x3ff68f32378ab0c9              # double 1.4099600000000001
	.quad	0x402004ff21b3aeef              # double 8.0097590000000007
	.quad	0x4022ab92c061847f              # double 9.3351039999999994
	.quad	0x4021297481b21c47              # double 8.5809669999999993
	.quad	0x4015269ca9ef5233              # double 5.2877070000000002
	.quad	0x4015bb242070b8d0              # double 5.4327550000000002
	.quad	0x40155a960b6f9fcb              # double 5.338463
	.quad	0x401593d145d85165              # double 5.3943529999999997
	.quad	0x3fe226c7eae5bc88              # double 0.56723400000000002
	.quad	0x4013033721d53cde              # double 4.7531400000000001
	.quad	0x401f62c7fbacb429              # double 7.8464660000000003
	.quad	0x400278cc9a77e5eb              # double 2.3089840000000001
	.quad	0x400f96eb4e981388              # double 3.9486910000000002
	.quad	0x3ff66b65a9a80496              # double 1.4012199999999999
	.quad	0x401dbd538ac18f82              # double 7.4348890000000001
	.quad	0x4010a487b99d4520              # double 4.1606740000000002
	.quad	0x4016816a48733659              # double 5.6263820000000004
	.quad	0x4022e5c9a34ca0c3              # double 9.4488040000000008
	.quad	0x4000abf8fcd67fd4              # double 2.083971
	.quad	0x401e94f3343fa2ad              # double 7.6454589999999997
	.quad	0x401394840e1719f8              # double 4.895035
	.quad	0x401b5f8d716d2aa6              # double 6.8433130000000002
	.quad	0x4012d107746887a9              # double 4.7041300000000001
	.quad	0x40105ba83f4eca68              # double 4.0895089999999996
	.quad	0x402002465a57646b              # double 8.0044430000000002
	.quad	0x3ff99ab5c39bcba3              # double 1.600271
	.quad	0x4000ec9539b88872              # double 2.1155189999999999
	.quad	0x4008489f40a2877f              # double 3.03546
	.quad	0x4010fb313be22e5e              # double 4.2453050000000001
	.quad	0x3ffdff21b3aeee95              # double 1.8747879999999999
	.quad	0x4021635c5b4aa971              # double 8.6940639999999991
	.quad	0x401638a8f3a9b068              # double 5.5553319999999999
	.quad	0x4009bd67ba237cdd              # double 3.2174830000000001
	.quad	0x401c89efd86a8fc1              # double 7.1347040000000002
	.quad	0x4023f188f42fe825              # double 9.9717479999999998
	.quad	0x40189c9ff92f2b67              # double 6.1529540000000003
	.quad	0x401834fa05143bf7              # double 6.0517349999999999
	.quad	0x4011917507e9d94d              # double 4.392048
	.quad	0x400f9e48a58b3f64              # double 3.9522870000000001
	.quad	0x400d2f605ab3aabd              # double 3.6481330000000001
	.quad	0x3ff305681ecd4aa1              # double 1.18882
	.quad	0x3ffde6256366d7a5              # double 1.8686879999999999
	.quad	0x40229c8c0ce91c8f              # double 9.3057560000000006
	.quad	0x400ff003eea209ab              # double 3.9921950000000002
	.quad	0x3ffdfe5109070fbf              # double 1.8745890000000001
	.quad	0x401aaa5bd944aa54              # double 6.666366
	.quad	0x4023d9c0229a5ebb              # double 9.9252939999999991
	.quad	0x3fddd99cbee807bc              # double 0.46640700000000002
	.quad	0x40016e3e6c4c5975              # double 2.17883
	.quad	0x4012c4b9cb6848bf              # double 4.6921150000000003
	.quad	0x400efeedcc20d563              # double 3.8744770000000002
	.quad	0x3ffa2670e2c12ad8              # double 1.634385
	.quad	0x40068bc05d52c16e              # double 2.818238
	.quad	0x401d71d8e8640208              # double 7.3611789999999999
	.quad	0x40185e2c98e53eb4              # double 6.0919670000000004
	.quad	0x40188709741d084f              # double 6.1318720000000004
	.quad	0x401fa518b0d0edc4              # double 7.9112270000000002
	.quad	0x401ca759253543af              # double 7.1634260000000003
	.quad	0x4019bfdd22856606              # double 6.4373670000000001
	.quad	0x40005757d5a9eb20              # double 2.0426479999999998
	.quad	0x4015e290eed02cd4              # double 5.4712560000000003
	.quad	0x4001238088509bfa              # double 2.1423350000000001
	.quad	0x3ff51d13d74d594f              # double 1.319599
	.quad	0x3fe1ef4384ba0e84              # double 0.56045699999999998
	.quad	0x401dc1ada76d97b3              # double 7.4391389999999999
	.quad	0x401955a964e8b7e5              # double 6.3336540000000001
	.quad	0x40086f7985271bce              # double 3.0544310000000001
	.quad	0x401231aeb3dd11be              # double 4.5485179999999996
	.quad	0x4005149491f2dc2b              # double 2.635049
	.quad	0x4021c572367e414e              # double 8.8856369999999991
	.quad	0x3ff6dbf26f1dc50d              # double 1.428698
	.quad	0x4003e4c1ebc83a97              # double 2.4866980000000001
	.quad	0x3fff3877ab324852              # double 1.9512860000000001
	.quad	0x400a689f40a2877f              # double 3.301085
	.quad	0x401ac64883fd5022              # double 6.6936359999999997
	.quad	0x400db4cc25072086              # double 3.7132800000000001
	.quad	0x40211fc5479d4d83              # double 8.5620519999999996
	.quad	0x3fefb46994185059              # double 0.99077300000000001
	.quad	0x3fe78ad46f587d70              # double 0.73569700000000005
	.quad	0x4019f45b6c3760bf              # double 6.4886299999999997
	.quad	0x40192c059210385c              # double 6.2929899999999996
	.quad	0x401e657b84db9c73              # double 7.5991039999999996
	.quad	0x3fe87da836eb4e98              # double 0.76533899999999999
	.quad	0x40120c5479d4d834              # double 4.512041
	.quad	0x3fd30a24463065f9              # double 0.29749399999999998
	.quad	0x40078fbeb9e492bc              # double 2.9451879999999999
	.quad	0x400f6cd29131ec0b              # double 3.9281359999999999
	.quad	0x40153b50f40e5a36              # double 5.3079260000000001
	.quad	0x4021d81abd1aa822              # double 8.9220790000000001
	.quad	0x4011ec176577531e              # double 4.4805580000000003
	.quad	0x3ff590cb295e9e1b              # double 1.34785
	.quad	0x401aead70e6f2e8c              # double 6.729336
	.quad	0x4011b5696e58a32f              # double 4.4271599999999998
	.quad	0x4020bcce5f7403de              # double 8.3687620000000003
	.quad	0x4016f5daf07bfe7e              # double 5.7400929999999999
	.quad	0x401575e6bc621b7e              # double 5.365138
	.quad	0x40196693c03bc4d2              # double 6.3501729999999998
	.quad	0x4002b55b4677b396              # double 2.3385530000000001
	.quad	0x3ff4ef7d30ad46f6              # double 1.3084690000000001
	.quad	0x401c2635610adcd3              # double 7.0373130000000002
	.quad	0x3fff2136e71cda2b              # double 1.9456089999999999
	.quad	0x401b30c23fab10ba              # double 6.7976159999999997
	.quad	0x401560bdcad14a0a              # double 5.3444739999999999
	.quad	0x401a406f69446738              # double 6.5629249999999999
	.quad	0x401637963992c8c5              # double 5.554284
	.quad	0x400720817fc7607c              # double 2.8908719999999999
	.quad	0x400a62328f9f44d4              # double 3.2979479999999999
	.quad	0x401e5c5692b3cc4b              # double 7.5901740000000001
	.quad	0x3ffb309a671ef30a              # double 1.6993659999999999
	.quad	0x3fff43137b07075b              # double 1.9538759999999999
	.quad	0x40045ffcdab191de              # double 2.546869
	.quad	0x400b49289dadfb50              # double 3.4107219999999998
	.quad	0x401aff42784a9479              # double 6.7492770000000002
	.quad	0x401a5c714fce746d              # double 6.5902760000000002
	.quad	0x40178b45f17bd8be              # double 5.8860089999999996
	.quad	0x4017b0431bde82d8              # double 5.9221310000000003
	.quad	0x40176cd74927913f              # double 5.8562900000000004
	.quad	0x3ff880ce91c8eac0              # double 1.531447
	.quad	0x40115ea9a3d2d880              # double 4.3424440000000004
	.quad	0x40160fd32c625e9a              # double 5.5154540000000001
	.quad	0x40088e94ee392e1f              # double 3.06962
	.quad	0x401815058dde7a74              # double 6.0205289999999998
	.quad	0x4020c150b955f783              # double 8.3775689999999994
	.quad	0x40233b1c219eb639              # double 9.6154489999999999
	.quad	0x3fc05f7403dddb12              # double 0.127913
	.quad	0x402344a1cef240fb              # double 9.6340470000000006
	.quad	0x400edb139c94f69d              # double 3.8569710000000001
	.quad	0x3ff413a1d323fee3              # double 1.254793
	.quad	0x3fe16b5f5f0b2852              # double 0.54435699999999998
	.quad	0x3fe9df30e7ff583a              # double 0.80849499999999996
	.quad	0x402097ba6698bb4d              # double 8.2963439999999995
	.quad	0x4006f3f63c31df76              # double 2.869122
	.quad	0x4008a1e8a2ec28b3              # double 3.0790570000000002
	.quad	0x4012740cc78e9f6b              # double 4.6133300000000004
	.quad	0x3fe1b1e5c0b99913              # double 0.55296599999999996
	.quad	0x4022d4b9a9da597d              # double 9.4154789999999994
	.quad	0x3ffb5ef30a4e379b              # double 1.7106809999999999
	.quad	0x401fa7c02afdda8c              # double 7.9138190000000002
	.quad	0x4023c297396d0918              # double 9.8800600000000002
	.quad	0x3fd4cc100e6afcce              # double 0.32495499999999999
	.quad	0x4021e1b0ee49f517              # double 8.9408030000000007
	.quad	0x401f4ee2003ab863              # double 7.8270340000000002
	.quad	0x401e01c9f72f76e6              # double 7.5017469999999999
	.quad	0x40209b66f9335d25              # double 8.3035200000000007
	.quad	0x40176fd75e2046c7              # double 5.8592199999999997
	.quad	0x400235d0b73d188f              # double 2.2762769999999999
	.quad	0x4023e3c23315d702              # double 9.9448410000000003
	.quad	0x40096b69db65ecc4              # double 3.1774480000000001
	.quad	0x4014c7a52ac753e7              # double 5.194966
	.quad	0x400faaaf35e310dc              # double 3.958342
	.quad	0x4014c6b6e0d23d4f              # double 5.1940569999999999
	.quad	0x401afc7f34938583              # double 6.7465789999999997
	.quad	0x40182a35d67ba238              # double 6.0412210000000002
	.quad	0x4014bfc71d606317              # double 5.1872829999999999
	.quad	0x4013ca35935fc3b5              # double 4.94747
	.quad	0x402056b8d8234224              # double 8.1693789999999992
	.quad	0x401d768b5cbff477              # double 7.3657659999999998
	.quad	0x4020ba1426fe718b              # double 8.3634350000000008
	.quad	0x3fee8ac5c13fd0d0              # double 0.95443999999999996
	.quad	0x3ffef84662bae03b              # double 1.9356139999999999
	.quad	0x40174eb0fadf2ecf              # double 5.8268469999999999
	.quad	0x4023d9ac36544fe3              # double 9.9251419999999992
	.quad	0x4020aebb341e14be              # double 8.341272
	.quad	0x3fe00c2a454de7ea              # double 0.50148499999999996
	.quad	0x3ff6a6644d877250              # double 1.4156230000000001
	.quad	0x401dc160d887ebf2              # double 7.4388459999999998
	.quad	0x3ff6132e7b3d8e00              # double 1.379683
	.quad	0x4023bdea897635e7              # double 9.8709299999999995
	.quad	0x4007ebe37de939eb              # double 2.9901800000000001
	.quad	0x40004ded288ce704              # double 2.0380500000000001
	.quad	0x400fa456f75d9a0f              # double 3.955244
	.quad	0x3ffaacdd0d8cb07d              # double 1.667203
	.quad	0x4021d2413db7f173              # double 8.9106539999999992
	.quad	0x40202c384ba0e842              # double 8.0863669999999992
	.quad	0x4022da6916440f24              # double 9.4265830000000008
	.quad	0x4017ff4517614595              # double 5.9992869999999998
	.quad	0x40015137b07075b4              # double 2.1646570000000001
	.quad	0x40203a027525460b              # double 8.1133000000000006
	.quad	0x401da3f9e7b80a9e              # double 7.4101330000000001
	.quad	0x40225081c2e33eff              # double 9.1572399999999998
	.quad	0x4019f854cdb7ae58              # double 6.4925110000000004
	.quad	0x40187531550ca1cf              # double 6.114446
	.quad	0x4004b79314445aa3              # double 2.589636
	.quad	0x400ad754b05b7cfe              # double 3.3551419999999998
	.quad	0x401ea66277c45cbc              # double 7.6624850000000002
	.quad	0x4021fc883fd50225              # double 8.9932269999999992
	.quad	0x3fdd9f0e4da09cc3              # double 0.46283299999999999
	.quad	0x3fe310fd7e45803d              # double 0.59582400000000002
	.quad	0x40047d113836a833              # double 2.5610680000000001
	.quad	0x4016ed512ec6bce8              # double 5.7317549999999997
	.quad	0x402325cfaacd9e84              # double 9.5738500000000001
	.quad	0x40144c625e99e94b              # double 5.0745940000000003
	.quad	0x3fd9f2d3c792d128              # double 0.40544599999999997
	.quad	0x401101ad6451b930              # double 4.2516379999999998
	.quad	0x40209a5fc7e6b3ff              # double 8.3015120000000007
	.quad	0x401e176683c297c0              # double 7.5228520000000003
	.quad	0x4023c5a708ede54b              # double 9.8860399999999994
	.quad	0x400e3ed288ce703b              # double 3.780675
	.quad	0x3fe009f83be6601c              # double 0.50121700000000002
	.quad	0x4014b24e59296702              # double 5.1741270000000004
	.quad	0x401908d36b4c7f35              # double 6.2586190000000004
	.quad	0x4003f3bb83cf2cf9              # double 2.4940099999999998
	.quad	0x401399f6ec5b078e              # double 4.9003560000000004
	.quad	0x401343882278d0cc              # double 4.8159489999999998
	.quad	0x3ffa122856605ee5              # double 1.6294329999999999
	.quad	0x3ff73f6e3f78bbd4              # double 1.4529860000000001
	.quad	0x401aa2146a1a500d              # double 6.6582809999999997
	.quad	0x3ff4ce1932d6ece1              # double 1.3003169999999999
	.quad	0x401fe9fc2a8869c6              # double 7.9785009999999996
	.quad	0x4006d687b139c94f              # double 2.8547509999999998
	.quad	0x3fee224031487768              # double 0.94168099999999999
	.quad	0x40179d2a62aa1944              # double 5.9034820000000003
	.quad	0x400c318655193709              # double 3.5241820000000001
	.quad	0x400c398bf7f06706              # double 3.5280990000000001
	.quad	0x4014f04295a6c5d2              # double 5.234629
	.quad	0x4007ecef672b8844              # double 2.990691
	.quad	0x3fe9f48a159817b9              # double 0.81110099999999996
	.quad	0x4018ac5ef62f9ca6              # double 6.1683310000000002
	.quad	0x400822699c7bcc29              # double 3.0168029999999999
	.quad	0x4008a6bce8533b10              # double 3.0814149999999998
	.quad	0x40165ed4e4c942d5              # double 5.5926090000000004
	.quad	0x3fed32a0663c74fb              # double 0.91242999999999996
	.quad	0x3fe752fe3f359ff5              # double 0.728881
	.quad	0x401acaf102363b25              # double 6.6981849999999996
	.quad	0x401c6e74f2f123c4              # double 7.1078679999999999
	.quad	0x3fd66088d6d3b6cc              # double 0.34964200000000001
	.quad	0x40199d972cd7cf5f              # double 6.4038969999999997
	.quad	0x4005f9702e6644d8              # double 2.7467959999999998
	.quad	0x4018a8c197e56473              # double 6.1648009999999998
	.quad	0x400b082517e77d52              # double 3.3789769999999999
	.quad	0x4019106c8711d799              # double 6.2660390000000001
	.quad	0x40204cb89d6adf72              # double 8.1498460000000001
	.quad	0x40048385c67dfe33              # double 2.5642200000000002
	.quad	0x401bf42917507e9e              # double 6.9884380000000004
	.quad	0x401738266772d5e0              # double 5.8048339999999996
	.quad	0x401a3b8bac710cb3              # double 6.5581500000000004
	.quad	0x4021da51a005c465              # double 8.9264039999999998
	.quad	0x400c64d5d80e496f              # double 3.5492360000000001
	.quad	0x400f24816f0068dc              # double 3.8928250000000002
	.quad	0x40208035371971c1              # double 8.2504059999999999
	.quad	0x400ae770bd017daf              # double 3.3630080000000002
	.quad	0x401e76eb4e981388              # double 7.6161320000000003
	.quad	0x402194da09cc319c              # double 8.7907259999999993
	.quad	0x4019a13f8db48909              # double 6.4074689999999999
	.quad	0x4021b43c3a42f1ed              # double 8.8520219999999998
	.quad	0x4012f7253da72a7c              # double 4.7413530000000002
	.quad	0x401d7f69878316a0              # double 7.3744259999999997
	.quad	0x3fd865881a1554fc              # double 0.38119700000000001
	.quad	0x400baab367a0f909              # double 3.4583499999999998
	.quad	0x401fce90795f676f              # double 7.9517230000000003
	.quad	0x40232242aed13943              # double 9.5669149999999998
	.quad	0x4020ec02afdda8bd              # double 8.4609579999999998
	.quad	0x4022998c9fb6134d              # double 9.2999010000000002
	.quad	0x4016dec80c73abc9              # double 5.7175599999999998
	.quad	0x3fd81049235f8099              # double 0.37599399999999999
	.quad	0x4014716052502eec              # double 5.1107189999999996
	.quad	0x3febf75b81301648              # double 0.87394499999999997
	.quad	0x3fbf3fc86cebbba5              # double 0.12206699999999999
	.quad	0x401eb89331a08bfc              # double 7.6802489999999999
	.quad	0x4000afe1da7b0b39              # double 2.08588
	.quad	0x4018ee90364388ec              # double 6.2329720000000002
	.quad	0x401eee050374ff86              # double 7.7324409999999997
	.quad	0x402133365881a155              # double 8.6000239999999994
	.quad	0x40200833a4723ab0              # double 8.016019
	.quad	0x401f43526527a205              # double 7.8157439999999995
	.quad	0x400fb14ec204f2ae              # double 3.961576
	.quad	0x400d11c75818c5ca              # double 3.6336810000000002
	.quad	0x4014754f7a919696              # double 5.1145610000000001
	.quad	0x3fe0a1c25d074214              # double 0.51974600000000004
	.quad	0x400823c4b09e98dd              # double 3.0174650000000001
	.quad	0x4000699ae924f228              # double 2.0515650000000001
	.quad	0x4006b62ae4b01861              # double 2.8389489999999999
	.quad	0x4011f2da98676a72              # double 4.4871619999999997
	.quad	0x40234fe5a78f25a2              # double 9.6560489999999994
	.quad	0x4021ce3e4abe6a33              # double 8.9028189999999991
	.quad	0x401f480ecfa69be1              # double 7.8203690000000003
	.quad	0x4010877c45cbbc2c              # double 4.1323100000000004
	.quad	0x401da31f46ed245b              # double 7.4092989999999999
	.quad	0x3ff3cfe260b2c83f              # double 1.238253
	.quad	0x4004e7bc3c5bd0e1              # double 2.6131519999999999
	.quad	0x4021e6c5b078d930              # double 8.9507270000000005
	.quad	0x401d904a2fcefaa4              # double 7.3909079999999996
	.quad	0x40153cb8e086bdf5              # double 5.3092990000000002
	.quad	0x400f65bb7b6bb129              # double 3.924674
	.quad	0x4017909635610add              # double 5.8911980000000002
	.quad	0x400aafa93af74cd3              # double 3.335772
	.quad	0x402395c67dfe32a0              # double 9.7925299999999993
	.quad	0x4022b6514c22ee42              # double 9.3560890000000008
	.quad	0x4005e93f290abb45              # double 2.73889
	.quad	0x401fa5e8d5410f95              # double 7.9120210000000001
	.quad	0x401a912d3415b142              # double 6.6417739999999998
	.quad	0x4002a9a3d2d87f88              # double 2.3328319999999998
	.quad	0x4011dbcbe61cffeb              # double 4.464645
	.quad	0x3fdc20d9945b6c37              # double 0.43950499999999998
	.quad	0x400ca0c7c0f45176              # double 3.578506
	.quad	0x402223acf7446f9c              # double 9.0696790000000007
	.quad	0x401dc4f722e1ac58              # double 7.4423490000000001
	.quad	0x40204f7ea1c68ec5              # double 8.1552629999999997
	.quad	0x4023dae44b6e935c              # double 9.9275230000000007
	.quad	0x401e6a6e32e3821b              # double 7.603936
	.quad	0x4020db677f6b1a2a              # double 8.4285239999999995
	.quad	0x4019abb44e50c5eb              # double 6.4176799999999998
	.quad	0x4022e453d20f2bed              # double 9.4459520000000001
	.quad	0x40066175d13d74d6              # double 2.7975880000000002
	.quad	0x401046195464dc23              # double 4.0684560000000003
	.quad	0x40074b945308bb90              # double 2.9119039999999998
	.quad	0x401322291fb3fa6e              # double 4.7833600000000001
	.quad	0x401feea747d805e6              # double 7.98306
	.quad	0x40154484d76ab580              # double 5.3169129999999996
	.quad	0x4001c56a37ac3eb8              # double 2.2213940000000001
	.quad	0x3fff97a46173b85f              # double 1.9745220000000001
	.quad	0x40209cee392e1ef7              # double 8.3065049999999996
	.quad	0x40050f8f041461b7              # double 2.6325970000000001
	.quad	0x3ff2f126e978d4fe              # double 1.183875
	.quad	0x3fe5a018a43bb40b              # double 0.67579299999999998
	.quad	0x3fe25b7cfe586013              # double 0.57366799999999996
	.quad	0x4010ec47a17f4129              # double 4.2307420000000002
	.quad	0x4018fa6e75ff609e              # double 6.2445620000000002
	.quad	0x4017d07faa044ae8              # double 5.9536119999999997
	.quad	0x4014c262cba732df              # double 5.1898299999999997
	.quad	0x401b0e6c093d9664              # double 6.7640840000000004
	.quad	0x401674cec41dd1a2              # double 5.6140699999999999
	.quad	0x40150bc83a96d4c3              # double 5.2615059999999998
	.quad	0x401130a4e379b77c              # double 4.297504
	.quad	0x401c13ca7503b81b              # double 7.0193269999999997
	.quad	0x4020812b1b36bd2b              # double 8.2522819999999992
	.quad	0x4023130fcf80dc33              # double 9.5372299999999992
	.quad	0x4008d79bfdf7e804              # double 3.1052780000000002
	.quad	0x3fc8a22b3892ee85              # double 0.19244900000000001
	.quad	0x401ddc70435efa61              # double 7.4652719999999997
	.quad	0x3fcaecaeea63b689              # double 0.21034800000000001
	.quad	0x40237ed30f062d41              # double 9.7477040000000005
	.quad	0x3fec149a5657fb6a              # double 0.87751500000000004
	.quad	0x401548fcd67fd3f6              # double 5.3212770000000003
	.quad	0x3f7e529bae46cfc8              # double 0.0074029999999999999
	.quad	0x401629741d084e83              # double 5.5404819999999999
	.quad	0x3fd07c80841ede12              # double 0.25759900000000002
	.quad	0x3ffe4cbe1eb4202e              # double 1.8937360000000001
	.quad	0x40196f3ba775fb2f              # double 6.3586260000000001
	.quad	0x400bbbbcf4e874c9              # double 3.466669
	.quad	0x4020c260b2c83ec9              # double 8.3796440000000008
	.quad	0x401931bda5119ce0              # double 6.2985749999999996
	.quad	0x3ffa806290eed02d              # double 1.656344
	.quad	0x402213a604e1e710              # double 9.0383759999999995
	.quad	0x401b80e410b630a9              # double 6.8758699999999999
	.quad	0x3ffd3ba55d1c3ac9              # double 1.827062
	.quad	0x3ff7810624dd2f1b              # double 1.4690000000000001
	.quad	0x4023b2f8df7a4e7b              # double 9.8495550000000005
	.quad	0x401286ae3a3a8e71              # double 4.6315239999999998
	.quad	0x401e73a7546d3f9e              # double 7.6129429999999996
	.quad	0x3fb226f60e0eb67c              # double 0.070906999999999998
	.quad	0x4006b00ef1348b22              # double 2.835966
	.quad	0x40092dddf43c7d5f              # double 3.1473960000000001
	.quad	0x400c9063e07a28bb              # double 3.570503
	.quad	0x3ff380fcb4f1e4b4              # double 1.2189909999999999
	.quad	0x4023da84167a95c8              # double 9.9267889999999994
	.quad	0x40204afb19e731d3              # double 8.1464470000000002
	.quad	0x4022930ec3116228              # double 9.2872219999999998
	.quad	0x40127308787485e4              # double 4.6123370000000001
	.quad	0x3fe356a9c560c7c1              # double 0.60432900000000001
	.quad	0x40136886594af4f1              # double 4.8520750000000001
	.quad	0x40063039ef0f16f4              # double 2.7735479999999999
	.quad	0x400b36e3f78bbd38              # double 3.401802
	.quad	0x3ff839756c93a711              # double 1.5140279999999999
	.quad	0x401f0d9c6b053198              # double 7.7632919999999998
	.quad	0x4015cfc43b2dd378              # double 5.4528970000000001
	.quad	0x402115130df9bdc7              # double 8.5411610000000007
	.quad	0x4011ad70a3d70a3d              # double 4.4193749999999996
	.quad	0x3ff5cfa8b4bf8fcd              # double 1.3631979999999999
	.quad	0x401c3a6223e18698              # double 7.0570149999999998
	.quad	0x3fb9a88ace24bba1              # double 0.100228
	.quad	0x401610f9096bb98c              # double 5.5165749999999996
	.quad	0x400331244a6223e2              # double 2.3989950000000002
	.quad	0x402070f42fe82518              # double 8.2206130000000002
	.quad	0x4020233d8e000863              # double 8.0688289999999991
	.quad	0x401df07a28bb0a2d              # double 7.4848410000000002
	.quad	0x3fedaba9d1f60179              # double 0.92720499999999995
	.quad	0x4008f10b1feeb2d1              # double 3.1176970000000002
	.quad	0x3f760c7c0f451761              # double 0.0053829999999999998
	.quad	0x401371b64e054691              # double 4.8610470000000001
	.quad	0x401f32f9873ffac2              # double 7.7997800000000002
	.quad	0x40194a6fc58ab92c              # double 6.322692
	.quad	0x4016d600f345069a              # double 5.7089879999999997
	.quad	0x401160b780346dc6              # double 4.3444500000000001
	.quad	0x4019e49a9973d9ec              # double 6.4732459999999996
	.quad	0x401ba6f4384ba0e8              # double 6.9130409999999998
	.quad	0x3ffbb01754b05b7d              # double 1.730491
	.quad	0x40237fb43d89ce4a              # double 9.7494219999999991
	.quad	0x401b66922d948dc1              # double 6.8501669999999999
	.quad	0x3ff29ab8e8ea39c5              # double 1.162774
	.quad	0x400a3bfdf7e8038a              # double 3.279293
	.quad	0x4020d8997c3d6840              # double 8.4230459999999994
	.quad	0x401ca80baa582dbe              # double 7.1641069999999996
	.quad	0x3ff2a8522ea0fd3b              # double 1.166094
	.quad	0x40228ae946801712              # double 9.2713110000000007
	.quad	0x40169985ad538ac2              # double 5.6499240000000004
	.quad	0x400884f3ba775fb3              # double 3.064918
	.quad	0x40073c98a222d517              # double 2.9045879999999999
	.quad	0x3fc2484944ed6fdb              # double 0.14283100000000001
	.quad	0x400360791c4b9021              # double 2.4221059999999999
	.quad	0x4021de872b020c4a              # double 8.9346250000000005
	.quad	0x4010664a59c065b6              # double 4.0998929999999998
	.quad	0x3fa9ee02a77a2ced              # double 0.050644000000000002
	.quad	0x3fa791c4b90214ad              # double 0.046033999999999999
	.quad	0x40229ea7ac81d3aa              # double 9.3098729999999996
	.quad	0x40184158fb43d89d              # double 6.0638160000000001
	.quad	0x402237d60e94ee39              # double 9.1090549999999997
	.quad	0x4013b68be2f7b17d              # double 4.9282680000000001
	.quad	0x40184991ff7164c7              # double 6.0718459999999999
	.quad	0x40100018611fd588              # double 4.0000929999999997
	.quad	0x40033765fd8adaba              # double 2.40205
	.quad	0x4022c51116a8b8f1              # double 9.3848959999999994
	.quad	0x3fe8fd45a5fc7e6b              # double 0.78091699999999997
	.quad	0x4010ba20578e5c4f              # double 4.1817640000000003
	.quad	0x402272f837b4a234              # double 9.2245500000000006
	.quad	0x3ff26686e7e62dc7              # double 1.150031
	.quad	0x4022a26a012599ed              # double 9.3172149999999991
	.quad	0x400e21bc126a65cf              # double 3.7664719999999998
	.quad	0x4020cd5f138bcdff              # double 8.401116
	.quad	0x3fd53a4723aafff3              # double 0.33168199999999998
	.quad	0x401a8a2d72ffd1dd              # double 6.6349390000000001
	.quad	0x400d61c36976bc1f              # double 3.672736
	.quad	0x401fb5e41d4b6a62              # double 7.9276280000000003
	.quad	0x4021a1c7368ad688              # double 8.8159729999999996
	.quad	0x401b79830e3cd9a5              # double 6.8686639999999999
	.quad	0x400812dba4d6e47e              # double 3.0092080000000001
	.quad	0x400d2478854cdb7b              # double 3.642808
	.quad	0x4023e716d2aa5c5f              # double 9.9513459999999991
	.quad	0x4016408dd1e53a82              # double 5.5630410000000001
	.quad	0x3f9a09cc319c5a3e              # double 0.025427999999999999
	.quad	0x4023d49ea9a3d2d8              # double 9.9152729999999991
	.quad	0x3fd9a686e7e62dc7              # double 0.40078900000000001
	.quad	0x401c8d2c7b890d5a              # double 7.1378649999999997
	.quad	0x4020cbcd78c436fc              # double 8.3980519999999998
	.quad	0x4013869270b06c44              # double 4.881418
	.quad	0x40166aa3f034b0e2              # double 5.6041410000000003
	.quad	0x40179566490a350d              # double 5.8958979999999999
	.quad	0x4006e218def416be              # double 2.8603990000000001
	.quad	0x401f0a88effe2a3d              # double 7.760288
	.quad	0x4016c3293d102bc7              # double 5.6905869999999998
	.quad	0x4003801e68a0d34a              # double 2.4375580000000001
	.quad	0x40146ae536501e26              # double 5.1043900000000004
	.quad	0x40196d5410f94c88              # double 6.3567660000000004
	.quad	0x4023df036c9c0a8d              # double 9.9355729999999997
	.quad	0x40126ddf86e3b470              # double 4.6072980000000001
	.quad	0x3ff5f161a1db877b              # double 1.3714310000000001
	.quad	0x3ff672db1e9f2778              # double 1.403041
	.quad	0x400f07bfe7e1fc09              # double 3.878784
	.quad	0x4015eb7457c0b136              # double 5.4799360000000004
	.quad	0x4016eb1465e89225              # double 5.7295699999999998
	.quad	0x402041f3a57eaa2a              # double 8.1288119999999999
	.quad	0x3ffe1f383f0bae8a              # double 1.882622
	.quad	0x40151550870110a1              # double 5.2708149999999998
	.quad	0x40233e707e175d14              # double 9.6219520000000002
	.quad	0x3fc28dc11e42e126              # double 0.144951
	.quad	0x3fc62e9899bf5947              # double 0.17329700000000001
	.quad	0x4022de1b4bb5e0f8              # double 9.433802
	.quad	0x400b7df00abf76a3              # double 3.436493
	.quad	0x4022ad75e2046c76              # double 9.3387899999999995
	.quad	0x401f96013660e51d              # double 7.8964889999999998
	.quad	0x4013b0ded288ce70              # double 4.9227249999999998
	.quad	0x4016bcce1c58255b              # double 5.68438
	.quad	0x401e3ba83f4eca68              # double 7.5582589999999996
	.quad	0x3fe1bc70c996b767              # double 0.554253
	.quad	0x4006d972474538ef              # double 2.8561749999999999
	.quad	0x4014e90f301eabbd              # double 5.2275970000000003
	.quad	0x4010c8e432441feb              # double 4.1961830000000004
	.quad	0x4017c949e8815e39              # double 5.9465709999999996
	.quad	0x400afdcf0307f23d              # double 3.3739300000000001
	.quad	0x401cc2c2bd7f51f0              # double 7.1901960000000003
	.quad	0x4016166f0cfe1544              # double 5.5219079999999998
	.quad	0x3ff4412599ed7c70              # double 1.2659050000000001
	.quad	0x401c4c054ef459da              # double 7.0742390000000004
	.quad	0x4012d2c0a4a05dd9              # double 4.705813
	.quad	0x4017b7b7c7820a31              # double 5.9294120000000001
	.quad	0x401ac2c669057d18              # double 6.6902100000000004
	.quad	0x4005834330d73861              # double 2.6890930000000002
	.quad	0x4020677318fc5048              # double 8.2020499999999998
	.quad	0x40199774aba38759              # double 6.3979059999999999
	.quad	0x401889cc74b838c1              # double 6.1345689999999999
	.quad	0x3fef71fff79c8430              # double 0.98266600000000004
	.quad	0x3ffac3e963dc486b              # double 1.67283
	.quad	0x40222e34117f8445              # double 9.0902410000000007
	.quad	0x40001769a91105e2              # double 2.0114320000000001
	.quad	0x400abca8e2e2b8c7              # double 3.3421189999999998
	.quad	0x4020a89dadfb506e              # double 8.3293280000000003
	.quad	0x3fdcbbd3804534bd              # double 0.44896399999999997
	.quad	0x40131f10ecb74de0              # double 4.7803380000000004
	.quad	0x402338aac96cc5fc              # double 9.610678
	.quad	0x3ff76595bbbe8790              # double 1.4623010000000001
	.quad	0x400695c52e72da12              # double 2.8231299999999999
	.quad	0x401c28cf7caa758a              # double 7.0398540000000001
	.quad	0x40193b39e279dd3c              # double 6.3078380000000003
	.quad	0x4013b5d67ba237ce              # double 4.9275760000000002
	.quad	0x401f1f8594291750              # double 7.7807829999999996
	.quad	0x4020527829068987              # double 8.161073
	.quad	0x401e2b702602c908              # double 7.5424199999999999
	.quad	0x3ff19af4adbc664d              # double 1.1003309999999999
	.quad	0x400f282385404641              # double 3.8945989999999999
	.quad	0x3fe1a60d4562e0a0              # double 0.55152000000000001
	.quad	0x4016c7ce52deca25              # double 5.6951229999999997
	.quad	0x40188ad7518b0d0f              # double 6.1355870000000001
	.quad	0x40006e2435696e59              # double 2.0537800000000002
	.quad	0x3fdc52d234eb9a17              # double 0.44255499999999998
	.quad	0x4020e775fb2edfe7              # double 8.4520719999999994
	.quad	0x401d399f5dfeb8d8              # double 7.3062719999999999
	.quad	0x401fa72d5e071c54              # double 7.913259
	.quad	0x40214fb07075b3e1              # double 8.6556429999999995
	.quad	0x3fb4e5d5b24e9c45              # double 0.081631999999999996
	.quad	0x400fdca85caafbc2              # double 3.9827430000000001
	.quad	0x4011467a0f9096bc              # double 4.3188250000000004
	.quad	0x400b833721d53cde              # double 3.4390700000000001
	.quad	0x3ff18810a569b175              # double 1.0957190000000001
	.quad	0x3ff5ebc2fc69728a              # double 1.3700589999999999
	.quad	0x401848049667b5f2              # double 6.0703300000000002
	.quad	0x4012126cc1ca3a4b              # double 4.5179929999999997
	.quad	0x400009e0a41a261c              # double 2.004823
	.quad	0x402000ec0f883340              # double 8.0018010000000004
	.quad	0x4020b679aae6c8f7              # double 8.3563969999999994
	.quad	0x3fdcfe69270b06c4              # double 0.45302799999999999
	.quad	0x3f9182a9930be0df              # double 0.017100000000000001
	.quad	0x401b014f0520d131              # double 6.7512780000000001
	.quad	0x401e210f51ac9afe              # double 7.5322849999999999
	.quad	0x4015f461309c7ffe              # double 5.4886520000000001
	.quad	0x40212ea960b6f9fd              # double 8.5911360000000005
	.quad	0x400988848387df5d              # double 3.191659
	.quad	0x3fdd795703f2d3c8              # double 0.46053100000000002
	.quad	0x4000cab0c88a47ed              # double 2.09897
	.quad	0x401a4461b6d43d04              # double 6.5667790000000004
	.quad	0x4013f5946c332f01              # double 4.9898239999999996
	.quad	0x401ce5a294141e9b              # double 7.224253
	.quad	0x40200e6f0cfe1544              # double 8.0281909999999996
	.quad	0x3fc7f71eafee6fb5              # double 0.18722900000000001
	.quad	0x3ff2240852b4d8ba              # double 1.1337969999999999
	.quad	0x4014a491f2dc2b0f              # double 5.1607130000000003
	.quad	0x4020e746aa087ca6              # double 8.4517109999999995
	.quad	0x4023baf294dd7236              # double 9.8651319999999991
	.quad	0x4018555e28aa4335              # double 6.083367
	.quad	0x3ffdeea960b6f9fd              # double 1.8707670000000001
	.quad	0x4018137ef5a964e9              # double 6.0190390000000003
	.quad	0x3fdff359ff4fd6d8              # double 0.49922800000000001
	.quad	0x402194f5b1c86488              # double 8.7909369999999996
	.quad	0x402012cbc8c0ce92              # double 8.0367110000000004
	.quad	0x401cde1b089a0275              # double 7.2168999999999999
	.quad	0x401078f2e05ccc8a              # double 4.1181140000000003
	.quad	0x40172805a2d72ffd              # double 5.7890839999999999
	.quad	0x401595a8deb0fadf              # double 5.3961519999999998
	.quad	0x4016d9628cbd1245              # double 5.7122900000000003
	.quad	0x4011cc5ac471b478              # double 4.4495649999999998
	.quad	0x3fd90867ad8e4324              # double 0.39113799999999999
	.quad	0x4021e04816f0068e              # double 8.9380500000000005
	.quad	0x401b392c49342678              # double 6.8058329999999998
	.quad	0x4018b7867f0aa21a              # double 6.1792239999999996
	.quad	0x4010fb5393250b52              # double 4.2454359999999998
	.quad	0x400d99c4113c6866              # double 3.700081
	.quad	0x401be1c64ba94bbe              # double 6.9704829999999998
	.quad	0x4020f69a6f826edb              # double 8.4816470000000006
	.quad	0x4006e2c343b70ef5              # double 2.8607239999999998
	.quad	0x3ffffdc69f8c21e2              # double 1.999457
	.quad	0x4012421fafc8b008              # double 4.5645740000000004
	.quad	0x4014a41743e963dc              # double 5.1602449999999997
	.quad	0x3ff16133c1ce6c09              # double 1.0862309999999999
	.quad	0x4022b0c1333b96af              # double 9.345224
	.quad	0x4022294898f605ab              # double 9.0806319999999996
	.quad	0x4023bccdfaca361a              # double 9.8687590000000007
	.quad	0x4017ccda2b5a20de              # double 5.9500510000000002
	.quad	0x401649b52007dd44              # double 5.5719799999999999
	.quad	0x401162a6b0d95140              # double 4.3463390000000004
	.quad	0x40221f021d10b1ff              # double 9.0605630000000001
	.quad	0x402034443914f484              # double 8.1020830000000003
	.quad	0x40239682517e77d5              # double 9.7939629999999997
	.quad	0x400e3bca9691a75d              # double 3.7791950000000001
	.quad	0x40175c44bf4cb189              # double 5.8401059999999996
	.quad	0x4012dd912556d19e              # double 4.7163740000000001
	.quad	0x4008c6a875d56f33              # double 3.0970010000000001
	.quad	0x4004b78897e99631              # double 2.5896159999999999
	.quad	0x3ffa5056c508b32d              # double 1.644614
	.quad	0x4002dbdf090f733b              # double 2.3573590000000002
	.quad	0x3ffa3b1d0c804103              # double 1.639432
	.quad	0x401ceecd8dbcec85              # double 7.233206
	.quad	0x40106228dc981beb              # double 4.0958589999999999
	.quad	0x401101fcd24e160e              # double 4.2519410000000004
	.quad	0x40197c88a47ecfea              # double 6.3716150000000003
	.quad	0x401448c111ada76e              # double 5.0710490000000004
	.quad	0x40155e3f78bbd380              # double 5.3420389999999998
	.quad	0x401fac0724b76f6d              # double 7.9179959999999995
	.quad	0x400a24a276b7ed42              # double 3.2678880000000001
	.quad	0x40205662bae03b3f              # double 8.1687220000000007
	.quad	0x3feeee9ff0cbaf96              # double 0.96662899999999996
	.quad	0x400151704ff4341a              # double 2.1647650000000001
	.quad	0x40159e6ea8544780              # double 5.4047190000000001
	.quad	0x3fdd1f31f46ed246              # double 0.45502900000000002
	.quad	0x4022cbd577963993              # double 9.3981130000000003
	.quad	0x400ca8198f1d3ed5              # double 3.5820799999999999
	.quad	0x401106a7ac81d3aa              # double 4.2564989999999998
	.quad	0x4016c72324c83665              # double 5.6944699999999999
	.quad	0x400e4445aa2e3c53              # double 3.7833359999999998
	.quad	0x3fe015f02c4d65e4              # double 0.50267799999999996
	.quad	0x4019bc0c1fc8f323              # double 6.4336399999999996
	.quad	0x401b46809d495183              # double 6.8188500000000003
	.quad	0x3ffc014e7ee9142b              # double 1.750319
	.quad	0x3ff5511cf355cd92              # double 1.332303
	.quad	0x402131ba7fc32ebe              # double 8.5971259999999994
	.quad	0x4000c6a4ca4f440b              # double 2.096994
	.quad	0x4020466c2acb85a5              # double 8.1375440000000001
	.quad	0x40168b51372a38b9              # double 5.6360520000000003
	.quad	0x40022c3116228134              # double 2.2715779999999999
	.quad	0x4022b7325918a00a              # double 9.3578060000000001
	.quad	0x4021a7345069a4df              # double 8.8265709999999995
	.quad	0x40131e34fc610f0f              # double 4.7794990000000004
	.quad	0x401529ed3953dea4              # double 5.2909439999999996
	.quad	0x401920fb224aada3              # double 6.2822079999999998
	.quad	0x401bc9d30270f388              # double 6.9470939999999999
	.quad	0x40048dee34fc610f              # double 2.569302
	.quad	0x401742a80064a9ce              # double 5.8150940000000002
	.quad	0x3f932830a0b1bbcf              # double 0.018707999999999999
	.quad	0x4008bca7503b81b6              # double 3.0921159999999999
	.quad	0x3ffde6e221c8a7a4              # double 1.868868
	.quad	0x4004b7036c9c0a8d              # double 2.5893619999999999
	.quad	0x3ff78e3de6149c6f              # double 1.472227
	.quad	0x401bb2ec6bce8534              # double 6.9247300000000003
	.quad	0x400c4f4a558ea7ce              # double 3.538716
	.quad	0x401a9b98c7e28241              # double 6.6519500000000003
	.quad	0x4023f2a5a469d734              # double 9.9739199999999996
	.quad	0x4019ad40aaeafab5              # double 6.4191919999999998
	.quad	0x4016cef911cf355d              # double 5.7021220000000001
	.quad	0x4009234f3fd933e3              # double 3.1422409999999998
	.quad	0x401261e75360d024              # double 4.5956089999999996
	.quad	0x4015777e1b8ed1bf              # double 5.3666919999999996
	.quad	0x40213e8900c521de              # double 8.6221390000000007
	.quad	0x4018d2c061847f56              # double 6.2058119999999999
	.quad	0x4022fbbf727136a4              # double 9.4916949999999999
	.quad	0x40208c1fc8f32379              # double 8.2736800000000006
	.quad	0x4021fc9be8ff327b              # double 8.9933770000000006
	.quad	0x40118137b07075b4              # double 4.3761890000000001
	.quad	0x40139825e13b18db              # double 4.8985820000000002
	.quad	0x3fddd2fe3f359ff5              # double 0.466003
	.quad	0x4022df0f16f4384c              # double 9.4356620000000006
	.quad	0x401c2bdc26dce39b              # double 7.0428319999999998
	.quad	0x40238ee8d10f51ad              # double 9.7791200000000007
	.quad	0x4002471e6cd29132              # double 2.284726
	.quad	0x401c706a6e32e382              # double 7.1097809999999999
	.quad	0x40180da3c21187e8              # double 6.0133200000000002
	.quad	0x40196a2cecc814d7              # double 6.3536869999999999
	.quad	0x40098cde19fc2a88              # double 3.1937829999999998
	.quad	0x401ce5bb384fd2a6              # double 7.2243469999999999
	.quad	0x4023d045996744b3              # double 9.9067810000000005
	.quad	0x4013f42d490e66cb              # double 4.9884539999999999
	.quad	0x3ffff67903211cb0              # double 1.9976739999999999
	.quad	0x40108ba5a038194c              # double 4.136374
	.quad	0x401c93edd8b60f1b              # double 7.1444619999999999
	.quad	0x400b646e08f21709              # double 3.4240379999999999
	.quad	0x3ffe87d6f9767903              # double 1.908164
	.quad	0x4004c2cc2d6a9c56              # double 2.595116
	.quad	0x3ff116df3f961805              # double 1.068084
	.quad	0x4012ddc7abfb9bed              # double 4.7165819999999998
	.quad	0x401655347a5b0ff1              # double 5.5832079999999999
	.quad	0x40117c4eb56fb8f5              # double 4.3713939999999996
	.quad	0x402137b5f1bef49d              # double 8.6088100000000001
	.quad	0x401bc442c7fbacb4              # double 6.9416609999999999
	.quad	0x3ffce84dfce3150e              # double 1.8067150000000001
	.quad	0x3ff42afff36ac647              # double 1.2604979999999999
	.quad	0x4015d9a2c669057d              # double 5.4625349999999999
	.quad	0x401f76c3760bf5d8              # double 7.8659800000000004
	.quad	0x4023608bda9435ad              # double 9.6885670000000008
	.quad	0x3fe4d9620685553f              # double 0.651536
	.quad	0x401077caea747d80              # double 4.1169849999999997
	.quad	0x40178f6598e10cf6              # double 5.8900360000000003
	.quad	0x40211ba08398a655              # double 8.5539590000000008
	.quad	0x40112db445ed4a1b              # double 4.2946330000000001
	.quad	0x40236493a7115161              # double 9.6964389999999998
	.quad	0x3ff4df6ec5b078d9              # double 1.304549
	.quad	0x400a6b88ca3e7d13              # double 3.3025069999999999
	.quad	0x402056909aed56b0              # double 8.1690719999999999
	.quad	0x400fc9e236c15d2d              # double 3.973576
	.quad	0x400f6729f59ccfaf              # double 3.925373
	.quad	0x4010c5f5f0b28523              # double 4.1933210000000001
	.quad	0x3fe00cd20afa2f06              # double 0.50156500000000004
	.quad	0x4020f9a91105e1c1              # double 8.4876179999999994
	.quad	0x40124249e44fa051              # double 4.5647349999999998
	.quad	0x400910f94c87980f              # double 3.1332879999999999
	.quad	0x401ee3abc947064f              # double 7.7223350000000001
	.quad	0x4018aac29bf162ae              # double 6.1667579999999997
	.quad	0x3fe2dba6efc371da              # double 0.58931299999999998
	.quad	0x4020635a426bb55b              # double 8.1940480000000004
	.quad	0x3fdd42cc2d6a9c56              # double 0.457202
	.quad	0x3fa7548ecd8dbced              # double 0.045567000000000003
	.quad	0x402333cbc48f10aa              # double 9.6011640000000007
	.quad	0x401f5487fcb923a3              # double 7.8325500000000003
	.quad	0x401cf362e9036439              # double 7.2376820000000004
	.quad	0x40158666234a87e4              # double 5.3812490000000004
	.quad	0x40209fe175d13d75              # double 8.3122670000000003
	.quad	0x3ff298a65492ff4c              # double 1.1622680000000001
	.quad	0x401291cfbb949625              # double 4.6423940000000004
	.quad	0x400589118c197e56              # double 2.6919279999999999
	.quad	0x40011883ba3443d4              # double 2.1369699999999998
	.quad	0x4009fd50225742dd              # double 3.248688
	.quad	0x3fcfdc4007570c56              # double 0.24890899999999999
	.quad	0x40194dd82fd75e20              # double 6.3260199999999998
	.quad	0x3ff9af23033a4724              # double 1.6052580000000001
	.quad	0x401a744417870542              # double 6.6135409999999997
	.quad	0x3ffbd905c0336156              # double 1.7404839999999999
	.quad	0x400888a04d12018a              # double 3.0667119999999999
	.quad	0x3ffd497e996312f5              # double 1.830443
	.quad	0x3fcd08feac42e98a              # double 0.22683700000000001
	.quad	0x400eb9620685553f              # double 3.840519
	.quad	0x401155ca6ca03c4b              # double 4.33378
	.quad	0x402012f81626b2f2              # double 8.0370489999999997
	.quad	0x40068d7e889c1b54              # double 2.819089
	.quad	0x401b58fcd67fd3f6              # double 6.8369020000000003
	.quad	0x401fa35696e58a33              # double 7.90951
	.quad	0x401401f5be5d9e41              # double 5.0019140000000002
	.quad	0x4010664f54d1e96c              # double 4.0999119999999998
	.quad	0x402071ccd9620685              # double 8.2222659999999994
	.quad	0x3fed8b9346994185              # double 0.923288
	.quad	0x40023631b584b1ab              # double 2.276462
	.quad	0x40221846c764ae00              # double 9.0474150000000008
	.quad	0x401004e160d887ec              # double 4.004766
	.quad	0x3ffff3e681a9b8cc              # double 1.9970460000000001
	.quad	0x3fde6638433d6c72              # double 0.47498899999999999
	.quad	0x4008fe63e8dda48b              # double 3.1242139999999998
	.quad	0x4007e5e9185cee18              # double 2.9872610000000002
	.quad	0x4014786b15f88fc9              # double 5.1175959999999998
	.quad	0x4021f817b95a2941              # double 8.9845559999999995
	.quad	0x40091f961804d984              # double 3.1404230000000002
	.quad	0x4012111947cfa26a              # double 4.5166979999999999
	.quad	0x3fda31e7d9988d2a              # double 0.40929599999999999
	.quad	0x3ffba502eec7c958              # double 1.727786
	.quad	0x401e54cf0739b025              # double 7.582821
	.quad	0x3fdcdaa0cae642c0              # double 0.45084400000000002
	.quad	0x401c8d9c6b053198              # double 7.1382919999999999
	.quad	0x401ef9320d9945b7              # double 7.7433550000000002
	.quad	0x402093dd334c5da7              # double 8.2887970000000006
	.quad	0x40217363b256ffc1              # double 8.7253699999999998
	.quad	0x3ff8956191148fda              # double 1.53647
	.quad	0x4012ef190d173fb8              # double 4.7334940000000003
	.quad	0x4005a513b5bf6a0e              # double 2.7056040000000001
	.quad	0x401af9c23b7952d2              # double 6.7439049999999998
	.quad	0x401c831ec0b56755              # double 7.1280469999999996
	.quad	0x40209809917939a8              # double 8.2969480000000004
	.quad	0x4020055821294574              # double 8.0104380000000006
	.quad	0x400b01672324c836              # double 3.3756849999999998
	.quad	0x3ff3995bbbe878fb              # double 1.2249410000000001
	.quad	0x400577ee4e26d480              # double 2.6835599999999999
	.quad	0x40228b95c4220360              # double 9.272627
	.quad	0x40236dc209246bf0              # double 9.7143709999999999
	.quad	0x401c151116a8b8f1              # double 7.0205729999999997
	.quad	0x401abd26b723ee1c              # double 6.6847180000000002
	.quad	0x401211e4712e4085              # double 4.5174729999999998
	.quad	0x4018b1cac083126f              # double 6.1736250000000004
	.quad	0x40113ca8e2e2b8c7              # double 4.3092379999999997
	.quad	0x4016660d887ebf23              # double 5.5996610000000002
	.quad	0x4016f51c9f72f76e              # double 5.7393669999999997
	.quad	0x3ff21daceee0f3cb              # double 1.1322449999999999
	.quad	0x40225498a222d517              # double 9.1652269999999998
	.quad	0x4016a8a47ecfe9b8              # double 5.6646900000000002
	.quad	0x3fea393037d63023              # double 0.81948100000000001
	.quad	0x402158b97785729b              # double 8.6732899999999997
	.quad	0x4023228c586876e2              # double 9.5674770000000002
	.quad	0x401da0c34c1a8ac6              # double 7.4069950000000002
	.quad	0x4017e2fe3f359ff5              # double 5.971673
	.quad	0x4017a740c4156e26              # double 5.9133329999999997
	.quad	0x4014648e043a2164              # double 5.098198
	.quad	0x401f512a94ff0026              # double 7.8292640000000002
	.quad	0x400b96d19dece571              # double 3.448642
	.quad	0x401f1f416bdb1a6d              # double 7.7805229999999996
	.quad	0x4012da2ad3e920c0              # double 4.7130539999999996
	.quad	0x401342e3c536d656              # double 4.8153220000000001
	.quad	0x401dc438d1d8a548              # double 7.4416229999999998
	.quad	0x4005d6d2aa5c5f7c              # double 2.7298939999999998
	.quad	0x4013efbdad7518b1              # double 4.9841220000000002
	.quad	0x3ffc161b2a27f1b7              # double 1.7553970000000001
	.quad	0x4014585f4a1272c9              # double 5.0863009999999997
	.quad	0x40239f9fa97e132b              # double 9.8117649999999994
	.quad	0x4002f18c9fb6134d              # double 2.367944
	.quad	0x4016c2b7baecd078              # double 5.6901539999999997
	.quad	0x3febe53eb399f5e0              # double 0.871734
	.quad	0x40190ef8487b99d4              # double 6.2646189999999997
	.quad	0x400505b18548a9bd              # double 2.62778
	.quad	0x401f54d3bf2f5558              # double 7.8328389999999998
	.quad	0x401be9f77292c493              # double 6.9784829999999998
	.quad	0x4023299ac79702e6              # double 9.5812589999999993
	.quad	0x40219e075f6fd220              # double 8.8086500000000001
	.quad	0x401b57f4dbdf8f47              # double 6.8358949999999998
	.quad	0x401d4fecdd0d8cb0              # double 7.3280519999999996
	.quad	0x40144c6e6d9be4cd              # double 5.0746399999999996
	.quad	0x40061876188b1141              # double 2.7619440000000002
	.quad	0x4020549c4da9003f              # double 8.1652550000000002
	.quad	0x4001a2235b4edb2f              # double 2.2041689999999998
	.quad	0x4021195aaf78feef              # double 8.5495199999999993
	.quad	0x40137d99029ae4f3              # double 4.8726539999999998
	.quad	0x4023ea1d323fee2d              # double 9.9572540000000007
	.quad	0x400aa055fbb517a4              # double 3.3282889999999998
	.quad	0x40112a2df9378ee3              # double 4.2911910000000004
	.quad	0x4010931832fcac8e              # double 4.1436469999999996
	.quad	0x401b9f1561911490              # double 6.9053550000000001
	.quad	0x40230359791819d2              # double 9.5065419999999996
	.quad	0x40020c5fbf83382e              # double 2.2560419999999999
	.quad	0x402276a704bc2763              # double 9.2317429999999998
	.quad	0x4017e5eaab042529              # double 5.9745280000000003
	.quad	0x400ff5f80991793a              # double 3.9951020000000002
	.quad	0x3ff3066c2acb85a5              # double 1.189068
	.quad	0x4015a84a0e410b63              # double 5.414345
	.quad	0x401c241bb8c32a8d              # double 7.0352620000000003
	.quad	0x4002c39713ad5bee              # double 2.3455029999999999
	.quad	0x40239778bbd38045              # double 9.7958429999999996
	.quad	0x401d5cc575c0767d              # double 7.3405969999999998
	.quad	0x3fe750dcfcc5b8dc              # double 0.72862099999999996
	.quad	0x40127c0724b76f6d              # double 4.6211209999999996
	.quad	0x4023bab862b27cbf              # double 9.8646879999999992
	.quad	0x401b8b8d3f1843c4              # double 6.8862810000000003
	.quad	0x4009640852b4d8ba              # double 3.1738439999999999
	.quad	0x401600114d2f5dbc              # double 5.5000660000000003
	.quad	0x3ffa662456f75d9a              # double 1.649937
	.quad	0x3fe87138bcdfefbf              # double 0.76382099999999997
	.quad	0x3ff3262456f75d9a              # double 1.196812
	.quad	0x4006a96cc5fbf834              # double 2.8327270000000002
	.quad	0x401215e3da2f8bdf              # double 4.5213770000000002
	.quad	0x3fff18c6d612c6ac              # double 1.943549
	.quad	0x4015ee5eaab04253              # double 5.4827830000000004
	.quad	0x40047ac0c62e4d1a              # double 2.5599379999999998
	.quad	0x401bbcdaf4adbc66              # double 6.9344289999999997
	.quad	0x4014a72474538ef3              # double 5.1632249999999997
	.quad	0x401a49f666234a88              # double 6.5722290000000001
	.quad	0x401dd67d77fae361              # double 7.4594630000000004
	.quad	0x401e059af9ebe9c9              # double 7.5054740000000004
	.quad	0x3fd6e1650a45d420              # double 0.35750700000000002
	.quad	0x40046cdfaca36199              # double 2.5531609999999998
	.quad	0x4005c642bf9830e4              # double 2.7218070000000001
	.quad	0x401ab8dfbd6a593a              # double 6.6805409999999998
	.quad	0x400fe1f2990f301f              # double 3.9853260000000001
	.quad	0x3fd9285a921ccd96              # double 0.39308799999999999
	.quad	0x401d00379314445b              # double 7.2502120000000003
	.quad	0x401e11355475a31a              # double 7.5168049999999997
	.quad	0x4015fa21a719b4dd              # double 5.4942690000000001
	.quad	0x3fe6e9e1b089a027              # double 0.71604999999999996
	.quad	0x401f051deefe4ffd              # double 7.7549970000000003
	.quad	0x3ff773e9a6f826ee              # double 1.4657990000000001
	.quad	0x401fbe3821af7d31              # double 7.9357610000000002
	.quad	0x3ff7a1be2b4959e6              # double 1.476988
	.quad	0x4019a29f9ce8d973              # double 6.4088120000000002
	.quad	0x3fecc534bd76ee74              # double 0.89907300000000001
	.quad	0x401af27674d16335              # double 6.7367800000000004
	.quad	0x40171fe931876189              # double 5.7811630000000003
	.quad	0x401edf6a0dbad3a6              # double 7.718178
	.quad	0x40201a8ae74f2f12              # double 8.0518409999999996
	.quad	0x3ff09b845564b663              # double 1.037968
	.quad	0x40103d51f81a5871              # double 4.0598830000000001
	.quad	0x4023e4057082491b              # double 9.945354
	.quad	0x4017fc08b75ea67f              # double 5.9961270000000004
	.quad	0x3ff45e2cdc011d36              # double 1.2729919999999999
	.quad	0x4002499bf5946c33              # double 2.2859419999999999
	.quad	0x4021735f80991794              # double 8.7253380000000007
	.quad	0x401db0ab71327243              # double 7.4225289999999999
	.quad	0x401ad66516db0dd8              # double 6.7093699999999998
	.quad	0x400a7c8b86b15f89              # double 3.310813
	.quad	0x4004604af922962d              # double 2.547018
	.quad	0x400a8f32bdc26dce              # double 3.3199209999999999
	.quad	0x4023ac09e55c0fcb              # double 9.8360129999999994
	.quad	0x4020c584901d1915              # double 8.3857769999999991
	.quad	0x3ff4c197e5647347              # double 1.297264
	.quad	0x4011a4eb9a176ddb              # double 4.4110550000000002
	.quad	0x4013018a43bb40b3              # double 4.7515039999999997
	.quad	0x3fe0caf0bf1a5ca3              # double 0.52477300000000004
	.quad	0x40223f0f3882278d              # double 9.1231629999999999
	.quad	0x3fc0d38cda6e75ff              # double 0.13145599999999999
	.quad	0x401202b239a38fbd              # double 4.5026330000000003
	.quad	0x4020dc998d045fe1              # double 8.4308589999999999
	.quad	0x40210fe2e6ea8544              # double 8.5310279999999991
	.quad	0x401773bd1676640a              # double 5.8630259999999996
	.quad	0x400b54bc6a7ef9db              # double 3.4163749999999999
	.quad	0x400ed1800a7c5ac4              # double 3.8522949999999998
	.quad	0x4016b503b81b64e0              # double 5.6767719999999997
	.quad	0x40106c6d1e108c3f              # double 4.1058849999999998
	.quad	0x400fdcb923a29c78              # double 3.9827750000000002
	.quad	0x40156b59ddc1e796              # double 5.3548349999999996
	.quad	0x400bbe3c105186db              # double 3.4678879999999999
	.quad	0x401192834d26fa40              # double 4.3930790000000002
	.quad	0x40075fe2a3cea6c2              # double 2.9218190000000002
	.quad	0x4014b23e5b8561d4              # double 5.1740659999999998
	.quad	0x3fe2b6d655e28aa4              # double 0.58481899999999998
	.quad	0x4020831769a91106              # double 8.2560380000000002
	.quad	0x4005e5ba6efc371e              # double 2.7371720000000002
	.quad	0x400b4c532a497fa6              # double 3.4122680000000001
	.quad	0x401fdc73eee52589              # double 7.9652859999999998
	.quad	0x401c95ac8a372607              # double 7.146166
	.quad	0x4010fd783dff3f10              # double 4.2475290000000001
	.quad	0x402029b77c02afde              # double 8.0814780000000006
	.quad	0x401caf77f27fe4bd              # double 7.1713560000000003
	.quad	0x40213b84db9c7369              # double 8.6162480000000006
	.quad	0x3ff09c0767d34df0              # double 1.0380929999999999
	.quad	0x4012c339c0ebedfa              # double 4.6906499999999998
	.quad	0x401ee03d57796399              # double 7.7189839999999998
	.quad	0x3ffad39da16616b5              # double 1.6766639999999999
	.quad	0x401119b6f5caf2d8              # double 4.275112
	.quad	0x4021bef6512a94ff              # double 8.872973
	.quad	0x3ff58128bf3bea92              # double 1.344033
	.quad	0x40195464dc22ab26              # double 6.3324160000000003
	.quad	0x402334e3150dae3e              # double 9.6032949999999992
	.quad	0x40196ed02cd39da1              # double 6.3582159999999996
	.quad	0x401748e92d55a3a1              # double 5.8212020000000004
	.quad	0x401a09da9c99285b              # double 6.5096230000000004
	.quad	0x3fb38c436fc158fb              # double 0.076358999999999996
	.quad	0x4021aa6506141637              # double 8.8328019999999992
	.quad	0x3fd780841ede1199              # double 0.36721900000000002
	.quad	0x401042491afc04c9              # double 4.0647320000000002
	.quad	0x4023e657b84db9c7              # double 9.9498879999999996
	.quad	0x4020277c88e79aae              # double 8.0771219999999992
	.quad	0x4001d0de093532e8              # double 2.2269860000000001
	.quad	0x40104c4cdfaca362              # double 4.0745120000000004
	.quad	0x4011e5308bb90646              # double 4.4738179999999996
	.quad	0x4018acae21101b00              # double 6.1686329999999998
	.quad	0x4021c2b2bfdb4cc2              # double 8.8802699999999994
	.quad	0x401f197b7414a4d3              # double 7.7748850000000002
	.quad	0x40236c4d44567126              # double 9.7115270000000002
	.quad	0x4020522467be553b              # double 8.1604340000000004
	.quad	0x3ffe117614595358              # double 1.8792629999999999
	.quad	0x4020a9cd8127b2cc              # double 8.3316459999999992
	.quad	0x400a1e44fa05143c              # double 3.26478
	.quad	0x40238570a3d70a3d              # double 9.7606249999999992
	.quad	0x4018aca03c4b09ea              # double 6.1685800000000004
	.quad	0x401228116ebd4cfd              # double 4.539129
	.quad	0x401328561d4306e6              # double 4.7893910000000002
	.quad	0x4002e73a365cb35f              # double 2.3629039999999999
	.quad	0x4003d34d6a161e4f              # double 2.4781749999999998
	.quad	0x40129a8e2e2b8c76              # double 4.6509330000000002
	.quad	0x4015edb76b3bb83d              # double 5.482145
	.quad	0x4009c6adb402d16c              # double 3.2220110000000002
	.quad	0x40080e3d5fdcdf6a              # double 3.0069530000000002
	.quad	0x3ff32379b77c02b0              # double 1.196161
	.quad	0x401019d1f601797d              # double 4.0252150000000002
	.quad	0x4023f18fe69270b0              # double 9.9718009999999992
	.quad	0x401b2acc92146a1a              # double 6.7917959999999997
	.quad	0x40160f644955b467              # double 5.5150309999999996
	.quad	0x4017c0ac3a860dcc              # double 5.9381570000000004
	.quad	0x4022fdcbff47735c              # double 9.4956969999999998
	.quad	0x3ffecd24e160d888              # double 1.925084
	.quad	0x3f632b55ef1fddec              # double 0.0023400000000000001
	.quad	0x400d1b0b39192642              # double 3.6382050000000001
	.quad	0x40236db035bd512f              # double 9.7142350000000003
	.quad	0x3ffaf301eabbcb1d              # double 1.684328
	.quad	0x400a84cb5bb384fd              # double 3.3148409999999999
	.quad	0x40135480e8c8abd6              # double 4.8325230000000001
	.quad	0x40139ff21b3aeee9              # double 4.9061969999999997
	.quad	0x400b547304039abf              # double 3.4162349999999999
	.quad	0x4014f90b84988095              # double 5.2432080000000001
	.quad	0x40204c9a5657fb6a              # double 8.1496150000000007
	.quad	0x401bcd66adb402d1              # double 6.9505869999999996
	.quad	0x401e66640a6b93cd              # double 7.5999910000000001
	.quad	0x40227cf8d716d2aa              # double 9.2440859999999994
	.quad	0x3ff80f3343fa2ad4              # double 1.503711
	.quad	0x40009201040bfe3b              # double 2.071291
	.quad	0x40177b3fa6defc7a              # double 5.8703599999999998
	.quad	0x4020cdf394b7b289              # double 8.4022489999999994
	.quad	0x40202167a95c853c              # double 8.0652439999999998
	.quad	0x4003b3458cd20afa              # double 2.4625349999999999
	.quad	0x3fef0c7c0f451761              # double 0.97027399999999996
	.quad	0x4015cb9dc2f405f7              # double 5.4488440000000002
	.quad	0x40236e8815e39714              # double 9.7158820000000005
	.quad	0x4015f91c087442c8              # double 5.493271
	.quad	0x400c6365cb35f3d8              # double 3.5485340000000001
	.quad	0x40058dc33721d53d              # double 2.6942200000000001
	.quad	0x401cc2018a43bb41              # double 7.1894590000000003
	.quad	0x3ffc793037d63023              # double 1.779587
	.quad	0x4013906705c896dd              # double 4.8910179999999999
	.quad	0x4021ab912dba4d6e              # double 8.8350919999999995
	.quad	0x401fd3ad18d25edd              # double 7.9567149999999999
	.quad	0x400eda261bf37b8d              # double 3.8565179999999999
	.quad	0x4015a11be6e65387              # double 5.4073330000000004
	.quad	0x400ad97785729b28              # double 3.356185
	.quad	0x401d2bb05faebc41              # double 7.2926650000000004
	.quad	0x40145904f6dfc5ce              # double 5.0869330000000001
	.quad	0x402079220ff54089              # double 8.2365879999999994
	.quad	0x4021c2d70e6f2e8c              # double 8.8805469999999999
	.quad	0x4017dbf26f1dc50d              # double 5.9647920000000001
	.quad	0x3ffeb81d7dbf4880              # double 1.91995
	.quad	0x4005ce991ff7164c              # double 2.7258779999999998
	.quad	0x40206d62bf11f927              # double 8.2136440000000004
	.quad	0x40186f1b69121251              # double 6.1085029999999998
	.quad	0x400944189374bc6a              # double 3.1582499999999998
	.quad	0x3ff2ae924f227d03              # double 1.1676200000000001
	.quad	0x4009a1e2584f4c6e              # double 3.2040449999999998
	.quad	0x401927b30f8c64fe              # double 6.2887690000000003
	.quad	0x4010dbc2fc69728a              # double 4.2146109999999997
	.quad	0x3fe5f5afaf859429              # double 0.68624099999999999
	.quad	0x40139618ce2d1f1d              # double 4.896579
	.quad	0x4013a28522ea0fd4              # double 4.9087110000000003
	.quad	0x3ff13b2fec56d5d0              # double 1.0769500000000001
	.quad	0x4014c9c5e6ff7dfa              # double 5.197044
	.quad	0x401d817f84449dbf              # double 7.3764630000000002
	.quad	0x3ff315f02c4d65e4              # double 1.1928559999999999
	.quad	0x4016aaa8650e7792              # double 5.666658
	.quad	0x401fbbb8800eae19              # double 7.9333210000000002
	.quad	0x40196d0bfa0945fa              # double 6.3564910000000001
	.quad	0x401b8ea8da7f3cf7              # double 6.889316
	.quad	0x4015c4dcebfec13c              # double 5.4422490000000003
	.quad	0x4011732ce89656ef              # double 4.362476
	.quad	0x40109d9cae21101b              # double 4.153918
	.quad	0x4001f13836a832ba              # double 2.2427830000000002
	.quad	0x3feb334e7685985b              # double 0.85001300000000002
	.quad	0x4017a25f202107b8              # double 5.9085660000000004
	.quad	0x401451d9f4d37c13              # double 5.0799329999999996
	.quad	0x4023bc11a11233df              # double 9.8673219999999997
	.quad	0x40020e9b38d60a63              # double 2.2571319999999999
	.quad	0x401e5000c9539b89              # double 7.5781280000000004
	.quad	0x3febecc5fbf83383              # double 0.87265300000000001
	.quad	0x401e9a0c282c6ef4              # double 7.6504370000000002
	.quad	0x401f91f6cacd184c              # double 7.8925429999999999
	.quad	0x4013171f79420b3d              # double 4.7725809999999997
	.quad	0x40163c9f72f76e61              # double 5.559202
	.quad	0x401e48e0c9d9d346              # double 7.5711700000000004
	.quad	0x4021aeebb341e14c              # double 8.8416420000000002
	.quad	0x4022192a51e321a3              # double 9.0491510000000002
	.quad	0x4011a9a415f45e0b              # double 4.4156649999999997
	.quad	0x4016a4028e4fb97c              # double 5.6601660000000003
	.quad	0x4008ebe37de939eb              # double 3.1151800000000001
	.quad	0x400531a4bdba0a52              # double 2.6492399999999998
	.quad	0x400128f9f44d4456              # double 2.1450079999999998
	.quad	0x4012ceccc46950fc              # double 4.7019529999999996
	.quad	0x40033791819d2392              # double 2.4021330000000001
	.quad	0x401664b44a1f0803              # double 5.598344
	.quad	0x400d6abd5dc40075              # double 3.6771189999999998
	.quad	0x3fc7aa821f2990f3              # double 0.184891
	.quad	0x4021d64de3b8a19d              # double 8.9185630000000007
	.quad	0x40178ea747d805e6              # double 5.88931
	.quad	0x3fe23bf50e347629              # double 0.56981899999999996
	.quad	0x40182f01754b05b8              # double 6.0459040000000002
	.quad	0x4014e570c564f97f              # double 5.2240630000000001
	.quad	0x40159c03ff69014b              # double 5.4023589999999997
	.quad	0x4016b4245f5ad96a              # double 5.6759199999999996
	.quad	0x3fd7e0b4e11dbca9              # double 0.37308999999999998
	.quad	0x4022f844ae85b9e9              # double 9.4848990000000004
	.quad	0x40152d85dfa871a4              # double 5.2944560000000003
	.quad	0x4015995faa8a82a5              # double 5.3997789999999997
	.quad	0x40108ab367a0f909              # double 4.1354499999999996
	.quad	0x4013158fb43d89ce              # double 4.7710559999999997
	.quad	0x3f9f0e0a84be4042              # double 0.030327
	.quad	0x40191eff5c6c11a1              # double 6.2802709999999999
	.quad	0x4002c2278d0cc35d              # double 2.3448020000000001
	.quad	0x401b2bc8c0ce91c9              # double 6.7927580000000001
	.quad	0x4016e26f1dc50ce5              # double 5.7211270000000001
	.quad	0x4014464a16a48733              # double 5.0686419999999996
	.quad	0x402050a30db6a1e8              # double 8.1574939999999998
	.quad	0x4023285d95dd4c77              # double 9.5788390000000003
	.quad	0x401c9e3821af7d31              # double 7.1545110000000003
	.quad	0x3ffb69014b599aa6              # double 1.713136
	.quad	0x4019dee30caa326e              # double 6.4676629999999999
	.quad	0x40049f9d6f112fd3              # double 2.5779369999999999
	.quad	0x4017fed8904f6dfc              # double 5.9988729999999997
	.quad	0x401478f217093101              # double 5.1181109999999999
	.quad	0x402114e8d972cd7d              # double 8.5408390000000001
	.quad	0x40180d855970b49e              # double 6.013204
	.quad	0x4015283b1d0c8041              # double 5.289288
	.quad	0x3ff59b413986338b              # double 1.3504039999999999
	.quad	0x40040b0a6fc58ab9              # double 2.5053909999999999
	.quad	0x40174821294573a8              # double 5.8204390000000004
	.quad	0x3fe031f687b139c9              # double 0.50609899999999997
	.quad	0x4012dbb73083558a              # double 4.7145659999999996
	.quad	0x4020000b45ae5ffa              # double 8.0000859999999996
	.quad	0x3feb57f3061c79b3              # double 0.85448599999999997
	.quad	0x40206f0995aaf790              # double 8.2168700000000001
	.quad	0x3fe1f0e90bc7b45f              # double 0.56065799999999999
	.quad	0x40003239a38fbca1              # double 2.024524
	.quad	0x4023a30984e3ffef              # double 9.8184319999999996
	.quad	0x40213a085b18548b              # double 8.6133450000000007
	.quad	0x40162528f190d174              # double 5.536289
	.quad	0x400a2b35f3d7d391              # double 3.271099
	.quad	0x4006f2ed783dff3f              # double 2.868617
	.quad	0x401174d013a92a30              # double 4.3640749999999997
	.quad	0x4013a085f4a1272d              # double 4.9067610000000004
	.quad	0x3fcf19b4dcebfec1              # double 0.24297199999999999
	.quad	0x402398d4562e09ff              # double 9.7984950000000008
	.quad	0x4021ad9d12cadddf              # double 8.8390889999999995
	.quad	0x3ff28cf28c79f666              # double 1.159411
	.quad	0x40184e820e629952              # double 6.0766679999999997
	.quad	0x40096aef2c732592              # double 3.1772140000000002
	.quad	0x4002571327243138              # double 2.2925170000000001
	.quad	0x400f9a415f45e0b5              # double 3.9503200000000001
	.quad	0x4018e70329802c0a              # double 6.2255979999999997
	.quad	0x3ffbf6577531db44              # double 1.7476419999999999
	.quad	0x3ff4fc4c165907d9              # double 1.311596
	.quad	0x40188ada76d97b31              # double 6.135599
	.quad	0x401a8b7521144cbe              # double 6.6361889999999999
	.quad	0x4003946455eaee20              # double 2.447457
	.quad	0x3ff33608d08919f0              # double 1.2006920000000001
	.quad	0x40170ea1c68ec52a              # double 5.7642889999999998
	.quad	0x3ff9a1d6494d50ec              # double 1.6020110000000001
	.quad	0x40130cb7d41743e9              # double 4.7624199999999997
	.quad	0x4006813879c4113c              # double 2.8130959999999998
	.quad	0x401117de939eadd6              # double 4.2733100000000004
	.quad	0x3ff7d7939a7c17a9              # double 1.4901310000000001
	.quad	0x401ead83c6c97d8d              # double 7.669448
	.quad	0x400cf8bd66277c46              # double 3.6214550000000001
	.quad	0x3fe065b63d3e4ef0              # double 0.51241599999999998
	.quad	0x400fee58a32f4491              # double 3.9913799999999999
	.quad	0x3fbb9db22d0e5604              # double 0.107875
	.quad	0x4017ca2b5a20ddc6              # double 5.9474309999999999
	.quad	0x4020e9b71758e219              # double 8.4564749999999993
	.quad	0x40188b56fb8f57f7              # double 6.1360739999999998
	.quad	0x4003e44417870542              # double 2.4864579999999998
	.quad	0x400a784901d19158              # double 3.3087330000000001
	.quad	0x401d02328f9f44d4              # double 7.2521459999999998
	.quad	0x3ffcadb0dd82fd76              # double 1.792405
	.quad	0x400b89539b888723              # double 3.4420540000000002
	.quad	0x40138f3343fa2ad4              # double 4.8898440000000001
	.quad	0x400de6b053198288              # double 3.737641
	.quad	0x40048b252ce032db              # double 2.5679419999999999
	.quad	0x4016e5d78811b1d9              # double 5.7244549999999998
	.quad	0x40214de6149c6f37              # double 8.6521460000000001
	.quad	0x3fe20e496ededaec              # double 0.56424399999999997
	.quad	0x401feff3ade225fa              # double 7.9843279999999996
	.quad	0x4016c04ab606b7aa              # double 5.6877849999999999
	.quad	0x40106a3f8982cb21              # double 4.103758
	.quad	0x4021f301c92ddbdb              # double 8.9746229999999994
	.quad	0x4021de013660e51d              # double 8.9336029999999997
	.quad	0x3fd02157689ca18c              # double 0.25203500000000001
	.quad	0x4017de1932d6ece1              # double 5.9668929999999998
	.quad	0x401e434c1a8ac5c1              # double 7.5657199999999997
	.quad	0x3fff7cc2938de6de              # double 1.967959
	.quad	0x401f7cc7d1bb4917              # double 7.8718560000000001
	.quad	0x4011e65e02ea960b              # double 4.4749679999999996
	.quad	0x4021620c069e7fb2              # double 8.6914979999999993
	.quad	0x4022460dcb9a9da6              # double 9.1368240000000007
	.quad	0x4003ec2efd438d1e              # double 2.4903240000000002
	.quad	0x401803a797891e21              # double 6.0035689999999997
	.quad	0x4007ae5471715c64              # double 2.9601220000000001
	.quad	0x40229bec460ed80a              # double 9.3045369999999998
	.quad	0x40023635e74299d9              # double 2.2764700000000002
	.quad	0x40106567dbb16c1e              # double 4.0990289999999998
	.quad	0x40006a39c51dabe2              # double 2.0518679999999998
	.quad	0x40106e07e5a78f26              # double 4.1074520000000003
	.quad	0x3ffc9a30984e3fff              # double 1.787644
	.quad	0x4023141b328b6d87              # double 9.5392700000000001
	.quad	0x40210e08aefb2aae              # double 8.5274099999999997
	.quad	0x3febcdb9c7368ad7              # double 0.86886300000000005
	.quad	0x40152202107b7846              # double 5.2832109999999997
	.quad	0x4020e77f27fe4bcb              # double 8.4521420000000003
	.quad	0x3feefb15b573eab3              # double 0.96814999999999995
	.quad	0x4021d4fe36d22425              # double 8.9160020000000006
	.quad	0x3f92e87d2c7b890d              # double 0.018464999999999999
	.quad	0x40021eff9f87f024              # double 2.265136
	.quad	0x400c70995aaf78ff              # double 3.55498
	.quad	0x401eff3f0fe047d4              # double 7.7492640000000002
	.quad	0x3ff72f954eb13dfb              # double 1.449117
	.quad	0x4010c9c8c9320d99              # double 4.1970549999999998
	.quad	0x401c8044284dfce3              # double 7.1252599999999999
	.quad	0x40026f94c87980f5              # double 2.3044829999999998
	.quad	0x401eb54a3c64345d              # double 7.677041
	.quad	0x4019cf02c4d65e46              # double 6.452159
	.quad	0x3ffeb8e8ea39c51e              # double 1.9201440000000001
	.quad	0x3ff02c54bcf0b6b7              # double 1.010823
	.quad	0x4012c9707182235b              # double 4.6967179999999997
	.quad	0x401a3deca25529fe              # double 6.560473
	.quad	0x40169e785b5b7069              # double 5.6547559999999999
	.quad	0x3ff5a0a0f4d7add1              # double 1.3517159999999999
	.quad	0x3fd235c5b4aa9718              # double 0.28453200000000001
	.quad	0x4021712e1ef73c0c              # double 8.7210549999999997
	.quad	0x400d4c55432873bd              # double 3.6622720000000002
	.quad	0x401cb0aaeafab53d              # double 7.1725269999999997
	.quad	0x3fda0a06e9ff0cbb              # double 0.406862
	.quad	0x401411b79d909f1f              # double 5.0173019999999999
	.quad	0x401c0312f4cf4a56              # double 7.0030020000000004
	.quad	0x401dc2231832fcad              # double 7.4395870000000004
	.quad	0x40229f6cefed6345              # double 9.3113779999999995
	.quad	0x401f21ed17c5ef63              # double 7.783131
	.quad	0x401b8a63736cdf26              # double 6.8851449999999996
	.quad	0x4003bc4fc1df3301              # double 2.4669490000000001
	.quad	0x4011a2d666a98245              # double 4.4090210000000001
	.quad	0x400a895d91ab8e8f              # double 3.3170730000000002
	.quad	0x401a72f405f6ba06              # double 6.6122589999999999
	.quad	0x4017044f1a1986ba              # double 5.7542080000000002
	.quad	0x40194a2595bbbe88              # double 6.3224090000000004
	.quad	0x3fea48216c61522a              # double 0.82130499999999995
	.quad	0x3fee2d3e920c069e              # double 0.94302299999999994
	.quad	0x4015456323bbc6eb              # double 5.317761
	.quad	0x4006e5015c209247              # double 2.8618190000000001
	.quad	0x400eb12d3415b142              # double 3.8365119999999999
	.quad	0x4021f64b662fdfc2              # double 8.9810440000000007
	.quad	0x40238ed0d49949e9              # double 9.7789370000000008
	.quad	0x3fff846e8f29d40f              # double 1.969832
	.quad	0x3fe8ace032db1e9f              # double 0.77110299999999998
	.quad	0x3ff3b30a4e379b78              # double 1.2312110000000001
	.quad	0x40156069e7fb267c              # double 5.3441539999999996
	.quad	0x4020b26634117f84              # double 8.3484359999999995
	.quad	0x4020baeee957470f              # double 8.3651040000000005
	.quad	0x402284fb549f9485              # double 9.2597299999999994
	.quad	0x400623e5b8561d43              # double 2.767528
	.quad	0x4019c71bcdbbe015              # double 6.4444419999999996
	.quad	0x4008ccf28c79f666              # double 3.1000719999999999
	.quad	0x402189270b06c43f              # double 8.7678759999999993
	.quad	0x4018f95d91ab8e8f              # double 6.2435210000000003
	.quad	0x40138cbf6e3f78bc              # double 4.8874490000000002
	.quad	0x4001e50ce4ead0c4              # double 2.2368410000000001
	.quad	0x40234e8640208180              # double 9.6533680000000004
	.quad	0x4020be933a0407cc              # double 8.3722169999999991
	.quad	0x3fecf41d084e831b              # double 0.90479900000000002
	.quad	0x400f18a7e73a365d              # double 3.8870390000000001
	.quad	0x4023ffb549f94856              # double 9.9994300000000003
	.quad	0x402321bbadc0980b              # double 9.5658849999999997
	.quad	0x3fe7e4628027d88c              # double 0.74662899999999999
	.quad	0x3ff7ac4827b6fe2e              # double 1.4795609999999999
	.quad	0x3ffcbb71fbc5de9c              # double 1.795763
	.quad	0x40163bda5119ce07              # double 5.5584499999999997
	.quad	0x3fe9b059641f6449              # double 0.80277699999999996
	.quad	0x4020f3ad5bee3d60              # double 8.4759320000000002
	.quad	0x400ef3b85e80bed7              # double 3.8690039999999999
	.quad	0x40238f40c4156e26              # double 9.7797909999999995
	.quad	0x400646d58c8eef1c              # double 2.7845870000000001
	.quad	0x401371704ff4341a              # double 4.8607800000000001
	.quad	0x3fb9d8f92af9a8ce              # double 0.100967
	.quad	0x4021346822ff0889              # double 8.6023569999999996
	.quad	0x40046561d4306e5d              # double 2.5495030000000001
	.quad	0x3ff64c176577531e              # double 1.3935770000000001
	.quad	0x3ffdc8cc575c0768              # double 1.861523
	.quad	0x3fe50b39192641b3              # double 0.65761999999999998
	.quad	0x4021a2bdc26dce3a              # double 8.8178540000000005
	.quad	0x4011eee286727568              # double 4.4832859999999997
	.quad	0x402117d8cf398e97              # double 8.546576
	.quad	0x401c781beb18116f              # double 7.1172940000000002
	.quad	0x4000dd495182a993              # double 2.10805
	.quad	0x3fe440767d34df05              # double 0.63286900000000001
	.quad	0x400c37e0ac7da1ec              # double 3.5272839999999999
	.quad	0x400af3ade225fa66              # double 3.3689840000000002
	.quad	0x4022dad0e5604189              # double 9.4273749999999996
	.quad	0x4000b0984e3ffef4              # double 2.0862280000000002
	.quad	0x401a6c2a8869c66d              # double 6.6056309999999998
	.quad	0x4020f792d1287c20              # double 8.4835419999999999
	.quad	0x401eb3e0bd44998d              # double 7.6756619999999999
	.quad	0x4021ab02b40f66a5              # double 8.8340049999999994
	.quad	0x4019418efbb0e5e6              # double 6.3140219999999996
	.quad	0x4023fd2ae8e1d649              # double 9.9944679999999994
	.quad	0x4010035eb7457c0b              # double 4.0032909999999999
	.quad	0x401404b4d056c509              # double 5.0045960000000003
	.quad	0x3fdca2f05a708ede              # double 0.44744499999999998
	.quad	0x401c594185058dde              # double 7.0871639999999996
	.quad	0x40201157cd466f50              # double 8.0338729999999998
	.quad	0x402212c12ad81adf              # double 9.0366300000000006
	.quad	0x3ffd33d188f42fe8              # double 1.825151
	.quad	0x3fa79ebe9c886163              # double 0.046133
	.quad	0x402084727dcbddba              # double 8.2586860000000009
	.quad	0x4009e4aa53fc0097              # double 3.236653
	.quad	0x40216130164840e1              # double 8.6898199999999992
	.quad	0x3ff5829ae4f33440              # double 1.3443860000000001
	.quad	0x401973e5fb71fbc6              # double 6.3631820000000001
	.quad	0x4020c35e74299d88              # double 8.3815799999999996
	.quad	0x4021dc3fe5c91d15              # double 8.9301750000000002
	.quad	0x400d53d8e0008638              # double 3.6659410000000001
	.quad	0x401e131ceaf251c2              # double 7.5186650000000004
	.quad	0x4022e58e64b23140              # double 9.4483519999999998
	.quad	0x3fe5f2f555821294              # double 0.68590799999999996
	.quad	0x4010c8127b2cc708              # double 4.1953829999999996
	.quad	0x3fefa56bca5375c9              # double 0.98894300000000001
	.quad	0x401e927d45a5fc7e              # double 7.6430559999999996
	.quad	0x40153bc6a7ef9db2              # double 5.3083749999999998
	.quad	0x401652adc4c9c90c              # double 5.5807409999999997
	.quad	0x3fe2a80f12c27a63              # double 0.58301499999999995
	.quad	0x4002973eab367a10              # double 2.3238500000000002
	.quad	0x4021eb30f8c64fdb              # double 8.9593579999999999
	.quad	0x3fe84916ca46e08f              # double 0.75892199999999999
	.quad	0x4022b8e581cf7879              # double 9.3611260000000005
	.quad	0x40137d8dbcec84f9              # double 4.872611
	.quad	0x4015d6bb1290257d              # double 5.4596980000000004
	.quad	0x3feabd9a95421c04              # double 0.83564499999999997
	.quad	0x4009a3c31df761cc              # double 3.2049620000000001
	.quad	0x4019b6d7e889c1b5              # double 6.4285579999999998
	.quad	0x402287b71fbc5dea              # double 9.2650690000000004
	.quad	0x3fe9a76b7ed41b76              # double 0.80168700000000004
	.quad	0x3ff3c4c6a3bddfca              # double 1.235541
	.quad	0x401d3ca1cef240fb              # double 7.3092110000000003
	.quad	0x4000b2cf95d4e8fb              # double 2.08731
	.quad	0x4003eaada33bd9cb              # double 2.4895890000000001
	.quad	0x4004844d87724fa9              # double 2.5646010000000001
	.quad	0x4001d2799a1fd157              # double 2.2277710000000002
	.quad	0x3fff8b2fa93af74d              # double 1.971481
	.quad	0x400d8158fb43d89d              # double 3.688158
	.quad	0x4014349f94855da2              # double 5.0513899999999996
	.quad	0x40122c100e6afcce              # double 4.5430299999999999
	.quad	0x4018e797cc39ffd6              # double 6.2261649999999999
	.quad	0x4022ae56eefa1e3f              # double 9.3405070000000006
	.quad	0x401125d13d74d595              # double 4.286931
	.quad	0x3ffcd7b41bfbdf09              # double 1.802662
	.quad	0x3ff33f6a0dbad3a6              # double 1.202982
	.quad	0x3fa4a3c64345cfee              # double 0.040312000000000001
	.quad	0x3fe3e6e221c8a7a4              # double 0.62193399999999999
	.quad	0x4003d7aeddce7cd0              # double 2.4803139999999999
	.quad	0x3ffb34a87e38eb03              # double 1.700356
	.quad	0x3fe6359578a2a90d              # double 0.69404100000000002
	.quad	0x40138b65668c2614              # double 4.8861290000000004
	.quad	0x402186a033e78e19              # double 8.7629409999999996
	.quad	0x4020f993f6c2699c              # double 8.4874569999999991
	.quad	0x3ff1f80346dc5d64              # double 1.1230500000000001
	.quad	0x3fcbc610f0e90bc8              # double 0.21698200000000001
	.quad	0x400e878a6dacabc5              # double 3.816182
	.quad	0x401872ac753e707e              # double 6.1119859999999999
	.quad	0x401e6d87f88765ba              # double 7.6069639999999996
	.quad	0x3ff1ab67c286f8ad              # double 1.104347
	.quad	0x400e644955b4677b              # double 3.7989679999999999
	.quad	0x401953cc07aaef2c              # double 6.3318329999999996
	.quad	0x40119879c4113c68              # double 4.3989019999999996
	.quad	0x3ff2aa7ce0fc2eba              # double 1.166623
	.quad	0x4016491f70de8f6d              # double 5.5714090000000001
	.quad	0x3fff8acaff6d3309              # double 1.9713849999999999
	.quad	0x3ff3e355043e5322              # double 1.243001
	.quad	0x3ff89eecbfb15b57              # double 1.5387999999999999
	.quad	0x3ff389ea9a3d2d88              # double 1.221171
	.quad	0x3ff6508919ef954f              # double 1.3946620000000001
	.quad	0x3fc5f1e0828c36db              # double 0.17144400000000001
	.quad	0x400f2644523f67f5              # double 3.8936850000000001
	.quad	0x40215f8feef5ec81              # double 8.6866450000000004
	.quad	0x3ffce3d2d87f8876              # double 1.8056209999999999
	.quad	0x3ff011ada76d97b3              # double 1.004316
	.quad	0x40202d5000c9539c              # double 8.0885010000000008
	.quad	0x40219092684cf074              # double 8.7823670000000007
	.quad	0x3fb316a055757d5b              # double 0.074564000000000005
	.quad	0x3fd2d556084a515d              # double 0.294271
	.quad	0x40171a715831f03d              # double 5.7758229999999999
	.quad	0x4022d86d938151a4              # double 9.4227109999999996
	.quad	0x401110f301eabbcb              # double 4.2665519999999999
	.quad	0x401a91d2178f68be              # double 6.6424029999999998
	.quad	0x402081b54195cc85              # double 8.2533359999999991
	.quad	0x401da8815e39713b              # double 7.4145560000000001
	.quad	0x40224742fe82517e              # double 9.1391829999999992
	.quad	0x40108e0d23d4f15e              # double 4.1387219999999996
	.quad	0x400dc6a8fc0d2c38              # double 3.7220019999999998
	.quad	0x4018321ee675147f              # double 6.0489459999999999
	.quad	0x400b33fe9fadafd1              # double 3.400388
	.quad	0x4021f9e321a2e7f7              # double 8.9880610000000001
	.quad	0x40222a074ea8da7f              # double 9.0820869999999996
	.quad	0x4021435c182ecaef              # double 8.6315620000000006
	.quad	0x3ff548d3ae685db7              # double 1.3302799999999999
	.quad	0x40146f0281ba7fc3              # double 5.1084079999999998
	.quad	0x401a7dd65a14488c              # double 6.6228879999999997
	.quad	0x4022ef31d2e0e304              # double 9.4671769999999995
	.quad	0x402097bd8be7296f              # double 8.2963679999999993
	.quad	0x3ff8f23033a4723b              # double 1.5591280000000001
	.quad	0x4023a1b738e6d15b              # double 9.8158510000000003
	.quad	0x3fe783e20ccff21b              # double 0.73484899999999997
	.quad	0x40151605ee568a50              # double 5.2715069999999997
	.quad	0x40172303c07ee0b1              # double 5.7841940000000003
	.quad	0x4004ded740c4156e              # double 2.6088089999999999
	.quad	0x3fd898fa376922d9              # double 0.38433699999999998
	.quad	0x402397878b7a1c26              # double 9.7959560000000003
	.quad	0x40173211cb039ef1              # double 5.7988960000000001
	.quad	0x400846e3b46fdeb5              # double 3.0346139999999999
	.quad	0x401020ee8d10f51b              # double 4.0321600000000002
	.quad	0x40023841aac53b08              # double 2.277469
	.quad	0x4008344cbe1eb420              # double 3.0255369999999999
	.quad	0x3fe4c8c7192ea52f              # double 0.649509
	.quad	0x40021aa1511dffc5              # double 2.2630029999999999
	.quad	0x40055843c3a42f1f              # double 2.6680980000000001
	.quad	0x40137925785f8d2e              # double 4.8683069999999997
	.quad	0x40222a5aab474107              # double 9.0827229999999997
	.quad	0x3fb566be7afa7222              # double 0.083599000000000006
	.quad	0x3fd8573eab367a10              # double 0.38032500000000002
	.quad	0x401eae6c4c5974e6              # double 7.6703349999999997
	.quad	0x401ddc09c3ce208a              # double 7.4648810000000001
	.quad	0x3fc63cd141a6937d              # double 0.173731
	.quad	0x401a8b7952d234ec              # double 6.6362050000000004
	.quad	0x401e05625a682b63              # double 7.5052580000000004
	.quad	0x3ff7a7381d7dbf48              # double 1.4783249999999999
	.quad	0x401787b41bfbdf09              # double 5.8825229999999999
	.quad	0x400da2f1ed17c5ef              # double 3.7045629999999998
	.quad	0x3ff2087fcb923a2a              # double 1.127075
	.quad	0x401d5c98e53eb39a              # double 7.340427
	.quad	0x4020089289dadfb5              # double 8.016743
	.quad	0x4016ab62c77574f7              # double 5.6673689999999999
	.quad	0x402037b2031ceaf2              # double 8.1087799999999994
	.quad	0x40151118c197e564              # double 5.2666959999999996
	.quad	0x4008452bd3c36113              # double 3.0337749999999999
	.quad	0x3ff6b7f06705c897              # double 1.419907
	.quad	0x402103e20ccff21b              # double 8.5075839999999996
	.quad	0x400b3e9856a37ac4              # double 3.405564
	.quad	0x400510af5fd47bee              # double 2.6331470000000001
	.quad	0x4021156cd6c2efd4              # double 8.5418459999999996
	.quad	0x401d9840181e03f7              # double 7.398682
	.quad	0x40157e0a41a261bf              # double 5.3730859999999998
	.quad	0x40129c059210385c              # double 4.6523649999999996
	.quad	0x3ff8a8a0d349be90              # double 1.541169
	.quad	0x40065206c8711d7a              # double 2.7900520000000002
	.quad	0x4020f5fdcdf69878              # double 8.4804519999999997
	.quad	0x40224a20bc382a13              # double 9.144781
	.quad	0x3fce9f2fdb8fde2f              # double 0.239233
	.quad	0x40178e3c968943e1              # double 5.888903
	.quad	0x40174831ad2135db              # double 5.8205020000000003
	.quad	0x3ff457ff9b56323c              # double 1.2714840000000001
	.quad	0x3fd915ca6ca03c4b              # double 0.391955
	.quad	0x402178583621fafd              # double 8.7350480000000008
	.quad	0x40003ed5ae1cde5d              # double 2.030681
	.quad	0x3ff05231c64ba94c              # double 1.0200670000000001
	.quad	0x3ff397d2849cb253              # double 1.224566
	.quad	0x3fde1327243137b0              # double 0.46991899999999998
	.quad	0x4009d7cd466f501a              # double 3.230372
	.quad	0x3fd039abf3387161              # double 0.25352000000000002
	.quad	0x402336d373affb05              # double 9.6070820000000001
	.quad	0x40234eca46e08f21              # double 9.6538869999999992
	.quad	0x4010a3558a761028              # double 4.1595060000000004
	.quad	0x401348b8ae31d713              # double 4.8210170000000003
	.quad	0x402361da7b0b3919              # double 9.6911199999999997
	.quad	0x3fc013c254a3c643              # double 0.12560299999999999
	.quad	0x4021119e731d2e0e              # double 8.5344119999999997
	.quad	0x401a4266fd651b0d              # double 6.5648460000000002
	.quad	0x401af8fe260b2c84              # double 6.7431570000000001
	.quad	0x4020e23f67f4dbe0              # double 8.4418900000000008
	.quad	0x3ffda7903211cb04              # double 1.8534090000000001
	.quad	0x40140ea140570825              # double 5.0142870000000004
	.quad	0x40006b46bacf7447              # double 2.052381
	.quad	0x401c985058dde7a7              # double 7.1487439999999998
	.quad	0x3ff522af5771001d              # double 1.3209679999999999
	.quad	0x401fe148344c37e7              # double 7.970002
	.quad	0x40103581cf7878b8              # double 4.0522530000000003
	.quad	0x3fe0dba2be0589ad              # double 0.52681100000000003
	.quad	0x4023c082278d0cc3              # double 9.8759929999999993
	.quad	0x401f8e779207d4e1              # double 7.8891280000000003
	.quad	0x4020c6f88b977857              # double 8.3886149999999997
	.quad	0x3fa1f3a57eaa2a0b              # double 0.035062000000000003
	.quad	0x4015f8cac4b4d057              # double 5.4929610000000002
	.quad	0x40053083558a7610              # double 2.6486879999999999
	.quad	0x401cb57ff9b56324              # double 7.1772460000000002
	.quad	0x4013d9a38fbca106              # double 4.9625380000000003
	.quad	0x402115b18548a9bd              # double 8.54237
	.quad	0x4017cab7995ee137              # double 5.9479660000000001
	.quad	0x400c6bddb9841aac              # double 3.5526689999999999
	.quad	0x3feb5f30e7ff583a              # double 0.85536999999999996
	.quad	0x401049cb252ce033              # double 4.0720640000000001
	.quad	0x4019a5d78811b1d9              # double 6.4119549999999998
	.quad	0x3ffd2c493426783a              # double 1.823312
	.quad	0x400a0cdd0d8cb07d              # double 3.256281
	.quad	0x40048ce5710880d8              # double 2.568797
	.quad	0x402341ed9dfdac69              # double 9.6287660000000006
	.quad	0x3ffc0fcb4f1e4b45              # double 1.7538560000000001
	.quad	0x400a91d1d4738a3b              # double 3.3212009999999998
	.quad	0x40027bf50e347629              # double 2.3105259999999999
	.quad	0x3ffc5fbe76c8b439              # double 1.7733749999999999
	.quad	0x400c5b60ae9680e0              # double 3.5446179999999998
	.quad	0x4019ffa11a975afb              # double 6.499638
	.quad	0x40137cd0fe8ab4fa              # double 4.8718909999999997
	.quad	0x3fca7bcc2938de6e              # double 0.206903
	.quad	0x3ffee9af5ba2be06              # double 1.9320520000000001
	.quad	0x4021d56e04c05921              # double 8.916855
	.quad	0x3ff697abb8800eae              # double 1.412029
	.quad	0x4020badab9f559b4              # double 8.3649500000000003
	.quad	0x401f297bb7308356              # double 7.7905110000000004
	.quad	0x3ff31ec4e7253da7              # double 1.195012
	.quad	0x4014dcc144028e50              # double 5.2155810000000002
	.quad	0x401a586a098915be              # double 6.5863420000000001
	.quad	0x3fad360d0247021d              # double 0.057053
	.quad	0x400e4915bdd76684              # double 3.7856860000000001
	.quad	0x40220600b0292817              # double 9.0117239999999992
	.quad	0x40048ff1950331e4              # double 2.5702850000000002
	.quad	0x400fca10e0221427              # double 3.973665
	.quad	0x400609d8409e55c1              # double 2.754807
	.quad	0x4023f87852f7f499              # double 9.9852930000000004
	.quad	0x4020be5668c26139              # double 8.371753
	.quad	0x4022bdd0d8cb07d1              # double 9.3707340000000005
	.quad	0x4011bf06f6944674              # double 4.4365500000000004
	.quad	0x400175a7d24180d4              # double 2.1824490000000001
	.quad	0x3fea5bab21815a08              # double 0.82369000000000003
	.quad	0x401ba003eea209ab              # double 6.9062650000000003
	.quad	0x401ce265add9c27f              # double 7.2210910000000004
	.quad	0x40051a08398a6549              # double 2.6377109999999999
	.quad	0x3fe8566277c45cbc              # double 0.76054500000000002
	.quad	0x401f7a7ded6ba8c6              # double 7.8696210000000004
	.quad	0x400e085985ad538b              # double 3.7540770000000001
	.quad	0x4016df0d413122b8              # double 5.7178240000000002
	.quad	0x3fe5b033a4723ab0              # double 0.677759
	.quad	0x4022787d4e09784f              # double 9.2353310000000004
	.quad	0x40200b12f4cf4a56              # double 8.0216290000000008
	.quad	0x40200f080303c07f              # double 8.0293580000000002
	.quad	0x3fec75360d024702              # double 0.88930799999999999
	.quad	0x4018dda37ef5a965              # double 6.2164440000000001
	.quad	0x4005b19ac79702e6              # double 2.7117209999999998
	.quad	0x401727d24180d3d0              # double 5.788888
	.quad	0x40096661ae70c133              # double 3.1749909999999999
	.quad	0x4001338e6d15ad10              # double 2.1501739999999998
	.quad	0x3ff4b240fa9c12f1              # double 1.2935190000000001
	.quad	0x401c4a74c09c3ce2              # double 7.072711
	.quad	0x4011146c332f0175              # double 4.2699439999999997
	.quad	0x400086edaa92e621              # double 2.0658829999999999
	.quad	0x4008e43a2163fdd6              # double 3.1114389999999998
	.quad	0x4006d7e56473471f              # double 2.8554179999999998
	.quad	0x400be3ce2089e343              # double 3.4862329999999999
	.quad	0x3fd5b43d89ce4a7b              # double 0.33912599999999998
	.quad	0x4001ba8a3f8982cb              # double 2.2160839999999999
	.quad	0x401c33061c79b34a              # double 7.0498279999999998
	.quad	0x401c354cdb7ae579              # double 7.0520509999999996
	.quad	0x4023f220ddc61954              # double 9.9729069999999993
	.quad	0x4023f781c714fce7              # double 9.9834119999999995
	.quad	0x4017d3ee5eedcc21              # double 5.9569640000000001
	.quad	0x4004d49cf56eac86              # double 2.603815
	.quad	0x4023202e6644d877              # double 9.5628539999999997
	.quad	0x401712cba732df50              # double 5.7683549999999997
	.quad	0x401ab18d25edd053              # double 6.6733900000000004
	.quad	0x401471611ba3ca75              # double 5.110722
	.quad	0x400f888509bf9c63              # double 3.9416600000000002
	.quad	0x4022513dfb0d51f8              # double 9.1586759999999998
	.quad	0x40215b0b9dc2f406              # double 8.6778230000000001
	.quad	0x40056828c36da87a              # double 2.675859
	.quad	0x3ff72003ab862b28              # double 1.445316
	.quad	0x3fd78fe69270b06c              # double 0.36815799999999999
	.quad	0x40086cec41dd1a22              # double 3.053185
	.quad	0x40203b836a832b99              # double 8.1162369999999999
	.quad	0x3fb16744b2b777d1              # double 0.067982000000000001
	.quad	0x400bfb9f98b71b8b              # double 3.4978630000000002
	.quad	0x40010bb7739f340d              # double 2.1307209999999999
	.quad	0x4011a604e1e71045              # double 4.412128
	.quad	0x3febe9b38d60a633              # double 0.872278
	.quad	0x401f40813cab81f9              # double 7.8129929999999996
	.quad	0x4010d7a17f4128bf              # double 4.2105769999999998
	.quad	0x3fe56a747d805e5f              # double 0.66924499999999998
	.quad	0x400748abd5dc4007              # double 2.9104839999999998
	.quad	0x4011ce27e0ef9980              # double 4.4513239999999996
	.quad	0x4007e28aa433508f              # double 2.9856159999999998
	.quad	0x40229be37de939eb              # double 9.3044700000000002
	.quad	0x4010dfa43fe5c91d              # double 4.2183999999999999
	.quad	0x40149886162f166e              # double 5.148949
	.quad	0x400fb4128bf3bea9              # double 3.9629259999999999
	.quad	0x3ff505b18548a9bd              # double 1.31389
	.quad	0x4009367ba237cdcd              # double 3.1516030000000002
	.quad	0x4022a1e12a51e322              # double 9.3161710000000006
	.quad	0x4017650374ff865d              # double 5.8486459999999996
	.quad	0x3ff60fa7a85015c2              # double 1.378822
	.quad	0x400145ce5b4245f6              # double 2.1590850000000001
	.quad	0x3ff1149f94855da2              # double 1.0675349999999999
	.quad	0x401f0d7fd82773e2              # double 7.7631829999999997
	.quad	0x3fef2bd3c3611340              # double 0.97409999999999996
	.quad	0x40235052502eec7d              # double 9.6568780000000007
	.quad	0x4002b4c016052503              # double 2.338257
	.quad	0x4011c2a9930be0df              # double 4.4401000000000002
	.quad	0x401a282b62845996              # double 6.5392279999999996
	.quad	0x401c25dc8323358f              # double 7.0369739999999998
	.quad	0x4020232617c1bda5              # double 8.0686499999999999
	.quad	0x4011a81cf7878b7a              # double 4.4141729999999999
	.quad	0x40104fe9b7bf1e8e              # double 4.0780399999999997
	.quad	0x401f896c3fc43b2e              # double 7.8842020000000002
	.quad	0x3ffb5dcc63f14120              # double 1.7103999999999999
	.quad	0x4006db6b2af14552              # double 2.857138
	.quad	0x402079c5e6ff7dfa              # double 8.237838
	.quad	0x40189171e29b6b2b              # double 6.1420360000000001
	.quad	0x402088bbb1f255f3              # double 8.2670569999999994
	.quad	0x3ffd5de9c0229a5f              # double 1.8354280000000001
	.quad	0x4013e14d2f5dbb9d              # double 4.970021
	.quad	0x3ff9721c475e6363              # double 1.5903590000000001
	.quad	0x401a0c0ce91c8eac              # double 6.511768
	.quad	0x401eb3bc903ea705              # double 7.6755240000000002
	.quad	0x40117991ff7164c7              # double 4.3687209999999999
	.quad	0x400901908e581cf8              # double 3.1257640000000002
	.quad	0x3ff0a266fd651b0d              # double 1.039649
	.quad	0x401c43293d102bc7              # double 7.0655869999999998
	.quad	0x401860a0b1bbcf4f              # double 6.0943630000000004
	.quad	0x400eeed1bf7ad4b2              # double 3.8666109999999998
	.quad	0x40120ec41dd1a21f              # double 4.5144200000000003
	.quad	0x4021387f23cc8de3              # double 8.6103450000000006
	.quad	0x4014f846a5d6bebe              # double 5.2424569999999999
	.quad	0x4006b60ae9680e06              # double 2.8388879999999999
	.quad	0x400c47b99d451fc5              # double 3.5350220000000001
	.quad	0x4011ca2cecc814d7              # double 4.4474369999999999
	.quad	0x401b71287c200c0f              # double 6.860506
	.quad	0x3ff6abe48a58b3f6              # double 1.4169659999999999
	.quad	0x3fc71e215336deb9              # double 0.18060699999999999
	.quad	0x400ebac2df0d4131              # double 3.8411919999999999
	.quad	0x3fb5ba5e353f7cee              # double 0.084875000000000005
	.quad	0x400ea8c36da87a07              # double 3.8324039999999999
	.quad	0x40236cac083126e9              # double 9.7122499999999991
	.quad	0x40176405b39e279e              # double 5.8476780000000002
	.quad	0x4005d15f88fc9364              # double 2.727233
	.quad	0x401317e7c06e19b9              # double 4.7733449999999999
	.quad	0x400ac7d912556d1a              # double 3.3475820000000001
	.quad	0x401ace1f3a57eaa3              # double 6.7012910000000003
	.quad	0x4012916fc9bc7714              # double 4.6420279999999998
	.quad	0x4018439799e518f4              # double 6.0660080000000001
	.quad	0x401486b8f9b13166              # double 5.1315650000000002
	.quad	0x40076582dbe7f2c3              # double 2.924566
	.quad	0x40208eaab042528b              # double 8.2786460000000002
	.quad	0x4012605d52c16df4              # double 4.594106
	.quad	0x4012f91a32b12d34              # double 4.7432639999999999
	.quad	0x40121c814d72799a              # double 4.5278369999999999
	.quad	0x400ed041cc532a49              # double 3.8516879999999998
	.quad	0x3f91c53f39d1b2e6              # double 0.017354000000000001
	.quad	0x4021f96f21f6cacd              # double 8.9871759999999998
	.quad	0x401951aa3f034b0e              # double 6.3297509999999999
	.quad	0x401a4335d249e450              # double 6.5656350000000003
	.quad	0x3ff0a27ae9ab29e5              # double 1.039668
	.quad	0x401ffc04c8bc9cd4              # double 7.9961120000000001
	.quad	0x4010690795f676ea              # double 4.1025679999999998
	.quad	0x3feac814d72799a2              # double 0.836924
	.quad	0x40156c70c996b767              # double 5.355899
	.quad	0x401659fcb0c026cc              # double 5.5878779999999999
	.quad	0x4001a7d5ed06fef8              # double 2.2069510000000001
	.quad	0x3fe34b72c5197a25              # double 0.60296000000000005
	.quad	0x4010428b2a6b0d95              # double 4.0649839999999999
	.quad	0x401b958969a0ad8a              # double 6.8960319999999999
	.quad	0x4010edcb1465e892              # double 4.2322199999999999
	.quad	0x401389e3c968943e              # double 4.8846579999999999
	.quad	0x4013c2bcb5fe542e              # double 4.9401729999999997
	.quad	0x4022d4a8e2e2b8c7              # double 9.4153509999999993
	.quad	0x40126c5692b3cc4b              # double 4.6057990000000002
	.quad	0x3ff8d93d5347a5b1              # double 1.553037
	.quad	0x3ff8ea93f290abb4              # double 1.5572699999999999
	.quad	0x401e26fe2e6ea854              # double 7.5380789999999998
	.quad	0x3ff7384ec636b096              # double 1.451247
	.quad	0x4017c33eff195033              # double 5.9406699999999999
	.quad	0x4020d1e55c0fcb4f              # double 8.4099529999999998
	.quad	0x401607b677f6b1a3              # double 5.5075320000000003
	.quad	0x3ff86c5c13fd0d06              # double 1.5264549999999999
	.quad	0x402062131a8ef77f              # double 8.1915519999999997
	.quad	0x401aabbadc0980b2              # double 6.6677049999999998
	.quad	0x400da440f2389720              # double 3.7052019999999999
	.quad	0x400eefe0ce0b912e              # double 3.8671280000000001
	.quad	0x401f67f1f9acffa8              # double 7.851509
	.quad	0x40202e5881a15550              # double 8.0905190000000005
	.quad	0x3fae631f8a0902de              # double 0.05935
	.quad	0x40233111276fb092              # double 9.595834
	.quad	0x3ff0afcefaa4766c              # double 1.0429219999999999
	.quad	0x40147ce7cd035372              # double 5.1219780000000004
	.quad	0x3ff489fd7a13c255              # double 1.2836890000000001
	.quad	0x4021c9f01b866e44              # double 8.8944100000000005
	.quad	0x401ae7a743a647fe              # double 6.7262240000000002
	.quad	0x4021ce04189374bc              # double 8.9023749999999992
	.quad	0x4021032acfb762d8              # double 8.5061859999999996
	.quad	0x40138867ad8e4324              # double 4.8832079999999998
	.quad	0x401e21c36976bc1f              # double 7.532972
	.quad	0x3ff8539da16616b5              # double 1.5204139999999999
	.quad	0x4017e77e1b8ed1bf              # double 5.9760669999999996
	.quad	0x401576c1a048e044              # double 5.3659730000000003
	.quad	0x40117535c9e6687f              # double 4.3644629999999998
	.quad	0x401729a8cdea033e              # double 5.7906829999999996
	.quad	0x401f5a4e7ab75643              # double 7.8381899999999999
	.quad	0x401f95810624dd2f              # double 7.8959999999999999
	.quad	0x400f6a42aed13943              # double 3.926885
	.quad	0x4010fa6bd6e8af81              # double 4.2445519999999997
	.quad	0x401abc99f1ae2da5              # double 6.6841809999999997
	.quad	0x40100afdda8bd231              # double 4.0107340000000002
	.quad	0x401cd15592d98bf8              # double 7.2044280000000001
	.quad	0x401c72c1f42bb667              # double 7.1120679999999998
	.quad	0x3fe21e108c3f3e03              # double 0.56616999999999995
	.quad	0x3ffba960b6f9fcb1              # double 1.7288520000000001
	.quad	0x402248dc55000c95              # double 9.1423059999999996
	.quad	0x401f32fa0d77b7c8              # double 7.7997820000000004
	.quad	0x4011e82b1f687b14              # double 4.4767270000000003
	.quad	0x401c4566490a350d              # double 7.0677729999999999
	.quad	0x4012acbf2b239a39              # double 4.668698
	.quad	0x40156b5568e820e6              # double 5.3548179999999999
	.quad	0x4001dff0cbaf965b              # double 2.2343459999999999
	.quad	0x4010284662bae03b              # double 4.0393309999999998
	.quad	0x3ff482bc72e275ab              # double 1.2819179999999999
	.quad	0x4014dd1ed9dfdac7              # double 5.2159380000000004
	.quad	0x400b8d035371971c              # double 3.443854
	.quad	0x4021f8e25c810a57              # double 8.9861020000000007
	.quad	0x4020850ce4ead0c4              # double 8.2598640000000003
	.quad	0x4018e2873bc903ea              # double 6.2212189999999996
	.quad	0x4017fb2d0a244630              # double 5.9952889999999996
	.quad	0x402398c308feac43              # double 9.7983630000000001
	.quad	0x401060eae18ac9f3              # double 4.094646
	.quad	0x400def416bdb1a6d              # double 3.7418239999999998
	.quad	0x401f166f0cfe1544              # double 7.7719079999999998
	.quad	0x400077dd00f776c5              # double 2.0585270000000002
	.quad	0x401a7b8cfbfc6541              # double 6.6206550000000002
	.quad	0x4011ff1cb89d6adf              # double 4.4991329999999996
	.quad	0x40117c47a17f4129              # double 4.3713670000000002
	.quad	0x4018a18e325d4a5e              # double 6.157769
	.quad	0x3fdefeb4a66559f7              # double 0.484296
	.quad	0x40076527a20578e6              # double 2.9243920000000001
	.quad	0x4009d91cd1c7de51              # double 3.2310120000000002
	.quad	0x401c2281fd9ba1b2              # double 7.0336990000000004
	.quad	0x40035e603d577964              # double 2.4210820000000002
	.quad	0x400daeeb702602c9              # double 3.71041
	.quad	0x40207ccd74927914              # double 8.2437550000000001
	.quad	0x4023f5b50f40e5a3              # double 9.9798969999999993
	.quad	0x4011b336deb95e5b              # double 4.425014
	.quad	0x4023965a9a804966              # double 9.7936599999999991
	.quad	0x400c020e6299524c              # double 3.501004
	.quad	0x4015b28dc981beb2              # double 5.4243690000000004
	.quad	0x4020383a322af577              # double 8.1098189999999999
	.quad	0x3ff16c95bff04578              # double 1.08901
	.quad	0x4022e7efbf401c50              # double 9.4530010000000004
	.quad	0x4017c8a6117720c9              # double 5.9459460000000002
	.quad	0x40002f4cf4a558ea              # double 2.0230959999999998
	.quad	0x401df530489d27c4              # double 7.4894420000000004
	.quad	0x4003a98cc144028e              # double 2.4577879999999999
	.quad	0x4023ebf811f4f50a              # double 9.960877
	.quad	0x40186e4c942d490e              # double 6.1077139999999996
	.quad	0x401ebbd1aa821f2a              # double 7.6834170000000004
	.quad	0x401c5bd7b2031ceb              # double 7.08969
	.quad	0x3ffeb47304039abf              # double 1.919055
	.quad	0x4017d15fcc1871e7              # double 5.9544670000000002
	.quad	0x3fec92c6ac215b9a              # double 0.89291699999999996
	.quad	0x40122586013660e5              # double 4.5366439999999999
	.quad	0x40222b1ad2135dab              # double 9.0841890000000003
	.quad	0x3feefe49b1fab96f              # double 0.96854099999999998
	.quad	0x4010b8323358f2e0              # double 4.1798789999999997
	.quad	0x40215a47ecfe9b7c              # double 8.67633
	.quad	0x402056634117f844              # double 8.1687259999999994
	.quad	0x3fef392c061847f5              # double 0.97572899999999995
	.quad	0x400f5ab191dde376              # double 3.9192840000000002
	.quad	0x4022088feac42e99              # double 9.0167230000000007
	.quad	0x3fa3f444e0daa0cb              # double 0.038973000000000001
	.quad	0x401d5bbf0dc768e0              # double 7.3395960000000002
	.quad	0x40227fa69be09bb7              # double 9.2493180000000006
	.quad	0x4010dd028a1dfb94              # double 4.2158300000000004
	.quad	0x4015438d1d8a5482              # double 5.3159679999999998
	.quad	0x401901ef73c0c1fd              # double 6.2518900000000004
	.quad	0x400eb393ab430f49              # double 3.8376839999999999
	.quad	0x3feaf292c4934268              # double 0.84211100000000005
	.quad	0x401d98c5436b8f9b              # double 7.3991899999999999
	.quad	0x400888ea39c51dac              # double 3.0668530000000001
	.quad	0x40047b85e80bed74              # double 2.560314
	.quad	0x4018aada33bd9cae              # double 6.1668479999999999
	.quad	0x400c03fa2ad3e921              # double 3.5019420000000001
	.quad	0x40238d7625204af9              # double 9.7762919999999997
	.quad	0x401eecbd987c6328              # double 7.731192
	.quad	0x40174b2d905c0336              # double 5.8234159999999999
	.quad	0x4003e374ff865d7d              # double 2.4860630000000001
	.quad	0x4009fb994e1a3f46              # double 3.2478509999999998
	.quad	0x400f19e30014f8b6              # double 3.8876400000000002
	.quad	0x3fe9cb4289118c19              # double 0.80606199999999995
	.quad	0x4022a061a60d4563              # double 9.3132450000000002
	.quad	0x400ee856e696a26e              # double 3.8634469999999999
	.quad	0x4013da32f4491299              # double 4.9630850000000004
	.quad	0x401cbbc6a7ef9db2              # double 7.1833749999999998
	.quad	0x400555410f94c87a              # double 2.6666280000000002
	.quad	0x401046d3b6cbd988              # double 4.0691670000000002
	.quad	0x4022ff91c4b90215              # double 9.4991590000000005
	.quad	0x3fe2ca03c4b09e99              # double 0.58716000000000002
	.quad	0x400ce25aee631f8a              # double 3.610525
	.quad	0x400f67807789a459              # double 3.925538
	.quad	0x3ffd6e7e62dc6e2b              # double 1.8394760000000001
	.quad	0x3fa40d90e23af31b              # double 0.039165999999999999
	.quad	0x3ff4e62888b545c8              # double 1.3061910000000001
	.quad	0x400b6a41a261bf38              # double 3.4268830000000001
	.quad	0x3ff6826138fffbce              # double 1.4068309999999999
	.quad	0x3fd092253111f0c3              # double 0.25891999999999998
	.quad	0x3fe82b4959e62563              # double 0.75528399999999996
	.quad	0x401c05831f03d146              # double 7.0053830000000001
	.quad	0x4011b023a6ce3583              # double 4.4220110000000004
	.quad	0x3ff3cda7f3cf7015              # double 1.2377089999999999
	.quad	0x40222c727dcbddba              # double 9.0868110000000009
	.quad	0x4012f20d5629d841              # double 4.7363790000000003
	.quad	0x401de8a0d349be90              # double 7.477176
	.quad	0x401c9e3cd9a52264              # double 7.1545290000000001
	.quad	0x400d7eef5ec80c74              # double 3.6869800000000001
	.quad	0x4022d2d080b673c5              # double 9.411747
	.quad	0x4020afe80389f83c              # double 8.3435670000000001
	.quad	0x4018637ef5a964e9              # double 6.0971640000000003
	.quad	0x401c3da72a7bd48d              # double 7.0602080000000003
	.quad	0x401d729dc725c3df              # double 7.3619300000000001
	.quad	0x400465742dcf4624              # double 2.5495380000000001
	.quad	0x40200289118c197e              # double 8.0049519999999994
	.quad	0x3fef5781c714fce7              # double 0.97943199999999996
	.quad	0x401eba0407cc7d1c              # double 7.6816560000000003
	.quad	0x4019e14df8b15726              # double 6.4700240000000004
	.quad	0x3ff7907a6bd6e8b0              # double 1.4727730000000001
	.quad	0x40000564f97edc7f              # double 2.002634
	.quad	0x40230c5953586ca9              # double 9.5241190000000006
	.quad	0x4010b4ba0e842742              # double 4.1764910000000004
	.quad	0x3ff21286b59146e5              # double 1.1295230000000001
	.quad	0x40069606b7aa25d9              # double 2.8232550000000001
	.quad	0x4018a6edaa92e621              # double 6.1630159999999998
	.quad	0x400d378f68be2f7b              # double 3.652129
	.quad	0x40189925bb7b6bb1              # double 6.1495579999999999
	.quad	0x40129788db0574b4              # double 4.647983
	.quad	0x4014aa9c560c7c0f              # double 5.1666119999999998
	.quad	0x4012dc9c4da9003f              # double 4.7154400000000001
	.quad	0x3ff4703afb7e9100              # double 1.2774000000000001
	.quad	0x4022fd3dc8b86b16              # double 9.4946120000000001
	.quad	0x3ff1881e4712e408              # double 1.0957319999999999
	.quad	0x40202d371971c10d              # double 8.0883109999999991
	.quad	0x4018f4f6598e10cf              # double 6.2392209999999997
	.quad	0x40215ed00b45ae60              # double 8.685181
	.quad	0x3ffd251c193b3a69              # double 1.8215600000000001
	.quad	0x3ffcf775b8130165              # double 1.8104150000000001
	.quad	0x40239f6ee73e681b              # double 9.8113930000000006
	.quad	0x3ffcc69835158b82              # double 1.7984849999999999
	.quad	0x4020349b845564b6              # double 8.1027489999999993
	.quad	0x3fe140767d34df05              # double 0.53911900000000001
	.quad	0x40017807fed20297              # double 2.1836090000000001
	.quad	0x4011180c73abc947              # double 4.273485
	.quad	0x401b70c1333b96af              # double 6.860112
	.quad	0x402000f2becedd48              # double 8.0018519999999995
	.quad	0x4001c194c0160525              # double 2.219522
	.quad	0x4021e25332acfb76              # double 8.9420409999999997
	.quad	0x401e4117f84449dc              # double 7.5635680000000001
	.quad	0x401948b75ea67e84              # double 6.3210119999999996
	.quad	0x3fccffeb074a771d              # double 0.22656000000000001
	.quad	0x4017f8461f9f01b8              # double 5.9924549999999996
	.quad	0x4018528b6d86ec18              # double 6.0806100000000001
	.quad	0x402231d0203e63e9              # double 9.0972910000000002
	.quad	0x3ff626eeb702602d              # double 1.3845050000000001
	.quad	0x4020d4f67b1c0011              # double 8.4159430000000004
	.quad	0x4019f9b994e1a3f4              # double 6.4938719999999996
	.quad	0x4020f02a12f90108              # double 8.4690709999999996
	.quad	0x4017608398a65493              # double 5.844252
	.quad	0x40211d06fef7c244              # double 8.5566940000000002
	.quad	0x4010d07dd4413554              # double 4.2036049999999996
	.quad	0x40150796bfca85cb              # double 5.2574110000000003
	.quad	0x401f36cbd987c632              # double 7.8035119999999996
	.quad	0x402354916ca46e09              # double 9.665172
	.quad	0x400cd8266772d5e0              # double 3.6055419999999998
	.quad	0x401e7ea747d805e6              # double 7.623685
	.quad	0x401e39a5a89b951c              # double 7.5562959999999997
	.quad	0x402370ab2e1693c0              # double 9.7200559999999995
	.quad	0x400f4ededaec4a41              # double 3.9135110000000002
	.quad	0x3ff2d392189bd838              # double 1.1766529999999999
	.quad	0x4016b3e78e1932d7              # double 5.6756880000000001
	.quad	0x40169a272862f599              # double 5.6505400000000003
	.quad	0x4020d5b3e1437c57              # double 8.4173880000000008
	.quad	0x3ff4569c23b7952d              # double 1.271145
	.quad	0x4016ed4ed2cbea4f              # double 5.7317460000000002
	.quad	0x400ee98dcdb37c9a              # double 3.8640400000000001
	.quad	0x401b6a5d28d002e2              # double 6.8538709999999998
	.quad	0x4012bbc126a65cf6              # double 4.6833539999999996
	.quad	0x400e42eb1c432ca5              # double 3.7826749999999998
	.quad	0x4018d675ddd2ae8e              # double 6.2094339999999999
	.quad	0x40099c4b09e98dce              # double 3.2013150000000001
	.quad	0x40111d790752da98              # double 4.2787819999999996
	.quad	0x401e4aa9f7b5aea3              # double 7.5729139999999999
	.quad	0x4011ea1a0cf1800a              # double 4.4786149999999996
	.quad	0x401292ef4e0114d3              # double 4.643491
	.quad	0x400b273929ed3954              # double 3.3941520000000001
	.quad	0x400c93083558a761              # double 3.571793
	.quad	0x3ff34e4ead0c3d25              # double 1.206618
	.quad	0x4014436fc158fb44              # double 5.0658560000000001
	.quad	0x401fa16db0dd82fd              # double 7.9076449999999995
	.quad	0x40220145308bb906              # double 9.0024809999999995
	.quad	0x3ff78b9baa1511e0              # double 1.471584
	.quad	0x40235ae7b3d8e001              # double 9.6775490000000008
	.quad	0x3ff90534bd76ee74              # double 1.563771
	.quad	0x40173bc7f77af640              # double 5.8083799999999997
	.quad	0x3ffcecd9e83e425b              # double 1.807825
	.quad	0x40195a88effe2a3d              # double 6.3384130000000001
	.quad	0x4005747a5b0ff10f              # double 2.6818740000000001
	.quad	0x401e03700474d9c7              # double 7.5033570000000002
	.quad	0x4014a09a671ef30a              # double 5.1568389999999997
	.quad	0x3fd6e111276fb092              # double 0.357487
	.quad	0x3ffee5a038194c01              # double 1.9310609999999999
	.quad	0x401787296f6512a9              # double 5.8819939999999997
	.quad	0x40167e4b44a1f080              # double 5.6233339999999998
	.quad	0x401ef31bde82d7b6              # double 7.7374109999999998
	.quad	0x400cc9edbf8b9baa              # double 3.598598
	.quad	0x401f974e65bea0ba              # double 7.8977599999999999
	.quad	0x3ff7f5275ee99a63              # double 1.497352
	.quad	0x402170d3cff64cf9              # double 8.7203660000000003
	.quad	0x40139cde19fc2a88              # double 4.9031909999999996
	.quad	0x3fdb56605ee568a5              # double 0.427147
	.quad	0x3fd1d99cbee807bc              # double 0.27890700000000002
	.quad	0x3fe5a786c226809d              # double 0.67669999999999997
	.quad	0x40229b3764f11b61              # double 9.3031570000000006
	.quad	0x401f60fd7e45803d              # double 7.8447170000000001
	.quad	0x40220823e9ea1405              # double 9.0158989999999992
	.quad	0x400cfced0b30b5aa              # double 3.6234989999999998
	.quad	0x402238a30db6a1e8              # double 9.1106189999999998
	.quad	0x40200b953dea465a              # double 8.0226229999999994
	.quad	0x3ff819a415f45e0b              # double 1.5062599999999999
	.quad	0x40100fe08aefb2ab              # double 4.0155050000000001
	.quad	0x401b5eb91b3f20a7              # double 6.8425029999999998
	.quad	0x4015c3fcc9ea9a3d              # double 5.4413939999999998
	.quad	0x4023893708aac96d              # double 9.7679980000000004
	.quad	0x401c98cc144028e5              # double 7.149216
	.quad	0x40217515054ac29c              # double 8.7286760000000001
	.quad	0x401edf572de43ed9              # double 7.7181059999999996
	.quad	0x4014b5b9628cbd12              # double 5.1774649999999998
	.quad	0x40031a2be0589acc              # double 2.3877790000000001
	.quad	0x40104f17bd8be729              # double 4.0772389999999996
	.quad	0x401e3816aceaaf36              # double 7.5547740000000001
	.quad	0x401df7c17a89331a              # double 7.491949
	.quad	0x401db8dd616f86a1              # double 7.4305320000000004
	.quad	0x40064e12e83a109d              # double 2.788122
	.quad	0x4020572ffd1dcd70              # double 8.1702879999999993
	.quad	0x400461240746455f              # double 2.5474320000000001
	.quad	0x4015831d712a0ec7              # double 5.3780419999999998
	.quad	0x3ff06ff1950331e4              # double 1.0273300000000001
	.quad	0x4011349f94855da2              # double 4.3013899999999996
	.quad	0x402135accd53048a              # double 8.6048340000000003
	.quad	0x401c4b2f661f18ca              # double 7.073423
	.quad	0x4022bfded6ba8c58              # double 9.3747469999999992
	.quad	0x401722c27a63736d              # double 5.7839450000000001
	.quad	0x4018302ea960b6fa              # double 6.047053
	.quad	0x3fcf7e45803cd142              # double 0.24604100000000001
	.quad	0x401a2fe718a86d72              # double 6.54678
	.quad	0x3ffb589acbc8c0cf              # double 1.7091320000000001
	.quad	0x4000f8eb8950763a              # double 2.121543
	.quad	0x3fe61856a37ac3eb              # double 0.69047099999999995
	.quad	0x40220b3e5753a3ec              # double 9.0219599999999999
	.quad	0x401eedd65a14488c              # double 7.7322629999999997
	.quad	0x3ff1b83ad9f0a1be              # double 1.107478
	.quad	0x4018da35d67ba238              # double 6.2130960000000002
	.quad	0x40214fb890d5a5b9              # double 8.6557049999999993
	.quad	0x401685a9eb2074eb              # double 5.6305310000000004
	.quad	0x40219cb6848beb5b              # double 8.8060799999999997
	.quad	0x40142339c0ebedfa              # double 5.0343999999999998
	.quad	0x3ff363e8dda48b65              # double 1.211892
	.quad	0x400b06ddf00abf77              # double 3.3783530000000002
	.quad	0x401886ac215b9a5b              # double 6.1315160000000004
	.quad	0x3ff8c30e3cd9a522              # double 1.5476209999999999
	.quad	0x402372c083126e98              # double 9.7241250000000007
	.quad	0x3ffd40a9de8b3b32              # double 1.828287
	.quad	0x402005d56f32bdc2              # double 8.0113939999999992
	.quad	0x401bcd58c8eef1bb              # double 6.9505340000000002
	.quad	0x4012e86f47b677f7              # double 4.7269870000000003
	.quad	0x4014220817fc7608              # double 5.0332340000000002
	.quad	0x3fe17c04c8bc9cd4              # double 0.54638900000000001
	.quad	0x3ffb5831f03d145e              # double 1.7090320000000001
	.quad	0x401d129e4d5d80e5              # double 7.2681820000000004
	.quad	0x40179027525460aa              # double 5.8907749999999997
	.quad	0x401b1f709b738e6d              # double 6.7807029999999999
	.quad	0x4009b78f68be2f7b              # double 3.214629
	.quad	0x3fcaaf922962cfd9              # double 0.208483
	.quad	0x4020abc558644524              # double 8.33549
	.quad	0x40230f26aec0724b              # double 9.5295919999999991
	.quad	0x40230585be1a8262              # double 9.5107859999999995
	.quad	0x4003365a9a804966              # double 2.4015399999999998
	.quad	0x401a5ca8e2e2b8c7              # double 6.5904879999999997
	.quad	0x3fd64ee7c49fd7a1              # double 0.34856599999999999
	.quad	0x401a3532a497fa5d              # double 6.5519509999999999
	.quad	0x3fe139cb6848beb6              # double 0.53830500000000003
	.quad	0x40147060bb2bba99              # double 5.1097440000000001
	.quad	0x4010d35a426bb55b              # double 4.2063990000000002
	.quad	0x4018819c5a3e39f7              # double 6.1265729999999996
	.quad	0x40215d0203e63e8e              # double 8.6816560000000003
	.quad	0x40021e49b1fab96f              # double 2.2647889999999999
	.quad	0x3ff981e57d9dba91              # double 1.5942130000000001
	.quad	0x402119363f572de4              # double 8.5492419999999995
	.quad	0x40091c254a3c6434              # double 3.1387429999999998
	.quad	0x40220860dcb9a9da              # double 9.0163639999999994
	.quad	0x4017a1f1cfbb9496              # double 5.9081489999999999
	.quad	0x4000b2873bc903ea              # double 2.0871719999999998
	.quad	0x40137af533f42353              # double 4.8700760000000001
	.quad	0x4019072b4528283d              # double 6.2570009999999998
	.quad	0x4004319934efcbd5              # double 2.5242179999999999
	.quad	0x3ff0a1272c94b381              # double 1.039344
	.quad	0x401eb1b9f98b71b9              # double 7.6735610000000002
	.quad	0x4006982d38476f2a              # double 2.8243049999999998
	.quad	0x4021fa2df9378ee3              # double 8.9886320000000008
	.quad	0x40057d76683c297c              # double 2.686261
	.quad	0x400612f555821294              # double 2.7592569999999998
	.quad	0x401a9b395c422036              # double 6.651586
	.quad	0x4018e566cf41f213              # double 6.2240250000000001
	.quad	0x40230e4c729f59cd              # double 9.527927
	.quad	0x400b81eeed8904f7              # double 3.4384440000000001
	.quad	0x400bc71476af89c6              # double 3.472207
	.quad	0x401399999999999a              # double 4.9000000000000004
	.quad	0x401b4af31b152f3c              # double 6.8231929999999998
	.quad	0x402216054690de09              # double 9.0430089999999996
	.quad	0x3fd158750c1b9735              # double 0.27102399999999999
	.quad	0x4014f2a172abef07              # double 5.2369440000000003
	.quad	0x4011d7ebf22c01e7              # double 4.4608610000000004
	.quad	0x401bdac322291fb4              # double 6.963635
	.quad	0x401f40d2c386d2ed              # double 7.8133039999999995
	.quad	0x4010866559f6ec5b              # double 4.131246
	.quad	0x40078c8d5c74751d              # double 2.9436290000000001
	.quad	0x3fff975afaf85943              # double 1.9744520000000001
	.quad	0x40192fd8adab9f56              # double 6.2967250000000003
	.quad	0x4014116616b54e2b              # double 5.016991
	.quad	0x401e129802c0a4a0              # double 7.5181579999999997
	.quad	0x401aa16f0068db8c              # double 6.6576500000000003
	.quad	0x4021bf049a9973da              # double 8.8730820000000001
	.quad	0x402374c5974e65bf              # double 9.7280700000000006
	.quad	0x40160664d3bf2f55              # double 5.5062439999999997
	.quad	0x4019c914b167ec78              # double 6.4463679999999997
	.quad	0x401a7d2849cb252d              # double 6.6222240000000001
	.quad	0x4022bba647fdc593              # double 9.3665029999999998
	.quad	0x401f1917507e9d95              # double 7.7745030000000001
	.quad	0x401e73fc43b2dd37              # double 7.6132669999999995
	.quad	0x40215f7596851223              # double 8.6864439999999998
	.quad	0x40054563ed0f6274              # double 2.6588820000000002
	.quad	0x3fc5ffef39085f4a              # double 0.171873
	.quad	0x4017561ae70c1334              # double 5.8340870000000002
	.quad	0x40189a9b8cb8e087              # double 6.1509840000000002
	.quad	0x401c4eea209aaa3b              # double 7.0770650000000002
	.quad	0x3ffce95d91ab8e8f              # double 1.8069740000000001
	.quad	0x4015634eb9a176de              # double 5.3469800000000003
	.quad	0x40229ccaf709b739              # double 9.3062360000000002
	.quad	0x4020909dadfb506e              # double 8.2824530000000003
	.quad	0x3f70eed02cd39da1              # double 0.0041339999999999997
	.quad	0x3f43cab81f969e3d              # double 6.0400000000000004E-4
	.quad	0x401139c7ffde7211              # double 4.3064270000000002
	.quad	0x4010a6f1dc50ce4f              # double 4.1630320000000003
	.quad	0x401aad10f51ac9b0              # double 6.6690100000000001
	.quad	0x4017a8b69552e2fc              # double 5.9147590000000001
	.quad	0x401aca32f4491299              # double 6.6974600000000004
	.quad	0x400d078f25a250f8              # double 3.6286909999999999
	.quad	0x401a174e65bea0ba              # double 6.5227599999999999
	.quad	0x4016a8259e1f3a58              # double 5.6642060000000001
	.quad	0x3fd3a5a038194c01              # double 0.30698399999999998
	.quad	0x40138923a29c779a              # double 4.8839249999999996
	.quad	0x3fdbd9a0f0a5efe9              # double 0.43515799999999999
	.quad	0x4010b9220ff54089              # double 4.1807939999999997
	.quad	0x402167fb69984a0e              # double 8.7030899999999995
	.quad	0x4004a96feb4a6656              # double 2.5827330000000002
	.quad	0x4022006c43f5f916              # double 9.000826
	.quad	0x40162f3e468cac4b              # double 5.5461359999999997
	.quad	0x401321f57b41bfbe              # double 4.7831630000000001
	.quad	0x401a9d72799a1fd1              # double 6.6537569999999997
	.quad	0x3ffd97bd8be7296f              # double 1.8495459999999999
	.quad	0x40065640639d5e4a              # double 2.7921149999999999
	.quad	0x4011dda661283904              # double 4.4664549999999998
	.quad	0x40229b34a44c7b03              # double 9.3031360000000003
	.quad	0x3fff9db1209edbf9              # double 1.9759990000000001
	.quad	0x3ffa28fc0d2c386d              # double 1.635006
	.quad	0x40168c111ada76d9              # double 5.6367839999999996
	.quad	0x4021dae9899bf594              # double 8.9275629999999992
	.quad	0x4013619a415f45e1              # double 4.8453150000000003
	.quad	0x401a7883ba3443d4              # double 6.6176899999999996
	.quad	0x3ff5e78af3e468cb              # double 1.3690290000000001
	.quad	0x3ff0086bdf4c2b52              # double 1.0020560000000001
	.quad	0x3fe32038194c0160              # double 0.59768299999999996
	.quad	0x40201950763a1901              # double 8.0494420000000009
	.quad	0x40115353f7ced917              # double 4.3313750000000004
	.quad	0x40186d79d0a67621              # double 6.1069100000000001
	.quad	0x4018f3a5c1c6088d              # double 6.2379369999999996
	.quad	0x3ff2c0d5e8d54110              # double 1.1720790000000001
	.quad	0x3ffce4052d666a98              # double 1.805669
	.quad	0x40097859c8c9320e              # double 3.1837650000000002
	.quad	0x401f6f1561911490              # double 7.8584800000000001
	.quad	0x402078cd423d9232              # double 8.2359410000000004
	.quad	0x401188915bdd7668              # double 4.3833669999999998
	.quad	0x4019dc286f8ad256              # double 6.4649979999999996
	.quad	0x4005f2a51e321a2e              # double 2.7434789999999998
	.quad	0x3fee9eafee6fb4c4              # double 0.95687100000000002
	.quad	0x4021e183f91e646f              # double 8.9404599999999999
	.quad	0x3f6210385c67dfe3              # double 0.0022049999999999999
	.quad	0x4016d6523704790c              # double 5.7092980000000004
	.quad	0x4014334938583622              # double 5.050084
	.quad	0x401d27ff9b56323c              # double 7.2890610000000002
	.quad	0x401ec41cc532a498              # double 7.691516
	.quad	0x4013225aab474107              # double 4.7835489999999998
	.quad	0x4011572abef06b38              # double 4.3351240000000004
	.quad	0x4021511947cfa26a              # double 8.6583959999999998
	.quad	0x3fc1c254a3c64346              # double 0.13874300000000001
	.quad	0x3ff5ba9f383f0baf              # double 1.3580620000000001
	.quad	0x3fcb8ba40d90e23b              # double 0.215199
	.quad	0x3ff88cbc05d52c17              # double 1.534359
	.quad	0x40137f1bef49cf57              # double 4.8741300000000001
	.quad	0x401b73ffef39085f              # double 6.8632809999999997
	.quad	0x4019b09f623076c0              # double 6.4224829999999997
	.quad	0x4013e2178f68be2f              # double 4.9707929999999996
	.quad	0x3ff57444e0daa0cb              # double 1.340886
	.quad	0x4006ff90d9d7774b              # double 2.8747880000000001
	.quad	0x4022bff2e48e8a72              # double 9.3749000000000002
	.quad	0x3ff4b21815a07b35              # double 1.29348
	.quad	0x3ff0b6922d948dc1              # double 1.044573
	.quad	0x401b827bf61aa3f0              # double 6.8774259999999998
	.quad	0x4018e74107314ca9              # double 6.2258339999999999
	.quad	0x40163dba0a526959              # double 5.5602799999999997
	.quad	0x3fff5256798958da              # double 1.9576020000000001
	.quad	0x4022a5b6c3760bf6              # double 9.3236600000000003
	.quad	0x401ab285a921ccd9              # double 6.6743379999999997
	.quad	0x4018c7518b0d0edc              # double 6.1946469999999998
	.quad	0x4018a4cdb7ae5797              # double 6.1609410000000002
	.quad	0x400f0957470eb24a              # double 3.8795609999999998
	.quad	0x401f6f57b41bfbdf              # double 7.8587329999999999
	.quad	0x400f9e18efbb0e5e              # double 3.9521959999999998
	.quad	0x401ab03ff69014b6              # double 6.6721190000000004
	.quad	0x3ffe60a30db6a1e8              # double 1.898593
	.quad	0x3fd663ae2541d8e8              # double 0.34983399999999998
	.quad	0x401ac32a0663c750              # double 6.6905900000000003
	.quad	0x4019cec0f88333fd              # double 6.4519080000000004
	.quad	0x3febb8583621fafd              # double 0.86625300000000005
	.quad	0x3fe91682f944241c              # double 0.78399799999999997
	.quad	0x400f2596c82e019b              # double 3.893354
	.quad	0x4020e5b7f1737543              # double 8.4486690000000007
	.quad	0x40235fc829cfdd23              # double 9.6870740000000008
	.quad	0x4013384f4c6e6d9c              # double 4.8049900000000001
	.quad	0x4012eb45f17bd8be              # double 4.7297589999999996
	.quad	0x4020c6c7000431be              # double 8.3882370000000002
	.quad	0x401253ee1bd1ed9e              # double 4.581963
	.quad	0x401298f7db6e5040              # double 4.6493830000000003
	.quad	0x4007b984a0e410b6              # double 2.9655849999999999
	.quad	0x401c11c432ca57a8              # double 7.0173500000000004
	.quad	0x4022e9c0a8d21bc1              # double 9.4565479999999997
	.quad	0x3ff03e0ce0b912dc              # double 1.0151490000000001
	.quad	0x401f34d2f5dbb9d0              # double 7.8015860000000004
	.quad	0x4000714e3bcd35a8              # double 2.0553249999999998
	.quad	0x400c7097c80841ee              # double 3.5549770000000001
	.quad	0x3ffe9b3e1437c569              # double 1.912901
	.quad	0x4019f59817b95a29              # double 6.4898379999999998
	.quad	0x40214a7b9170d62c              # double 8.6454740000000001
	.quad	0x4021b83ad9f0a1be              # double 8.8598239999999997
	.quad	0x40023e6a337a80d0              # double 2.2804760000000002
	.quad	0x400d2c77dd872f34              # double 3.6467130000000001
	.quad	0x401ac1116a8b8f15              # double 6.6885430000000001
	.quad	0x3ff92a5d6bebe165              # double 1.572843
	.quad	0x4017c22467be553b              # double 5.9395920000000002
	.quad	0x400dacb966be7afa              # double 3.7093379999999998
	.quad	0x401be358298cc144              # double 6.972016
	.quad	0x4017e1fcd24e160e              # double 5.9706910000000004
	.quad	0x401bf49a133c1ce7              # double 6.9888690000000002
	.quad	0x401a282d38476f2a              # double 6.5392349999999997
	.quad	0x401deba8c586876e              # double 7.4801359999999999
	.quad	0x3ff2e72324c83665              # double 1.18143
	.quad	0x401029389b52007e              # double 4.0402550000000002
	.quad	0x3fe41f6a93f290ac              # double 0.62883500000000003
	.quad	0x40080ff5c6c11a11              # double 3.0077929999999999
	.quad	0x40063caea747d806              # double 2.77963
	.quad	0x40235e69057d1783              # double 9.6843950000000003
	.quad	0x401c10880d801b43              # double 7.0161439999999997
	.quad	0x3ffaa0c069e7fb26              # double 1.6642459999999999
	.quad	0x401b2c779a6b50b1              # double 6.793425
	.quad	0x40147da4ce8101f3              # double 5.1226989999999999
	.quad	0x4003caa19439de48              # double 2.4739409999999999
	.quad	0x3ff4832441fea811              # double 1.282017
	.quad	0x402032b53d640e9d              # double 8.0990389999999994
	.quad	0x401c389b52007dd4              # double 7.0552799999999998
	.quad	0x4014639cd8127b2d              # double 5.0972780000000002
	.quad	0x401ee34373f316e3              # double 7.7219369999999996
	.quad	0x400dcca3e7d13511              # double 3.7249219999999998
	.quad	0x40175dc93ea2d2fe              # double 5.8415879999999998
	.quad	0x400d5d82fd75e204              # double 3.6706599999999998
	.quad	0x401e4bbf50e34763              # double 7.5739720000000003
	.quad	0x4002cb2b777d0f1f              # double 2.3492039999999998
	.quad	0x401451337eb28d86              # double 5.0792979999999996
	.quad	0x40214ee9bbf0dc77              # double 8.6541270000000008
	.quad	0x400cba2df9378ee3              # double 3.5909080000000002
	.quad	0x40010cc1ca3a4b55              # double 2.1312289999999998
	.quad	0x4023e1fe43675ddd              # double 9.9413929999999997
	.quad	0x3fe85c486ad2dcb1              # double 0.76126499999999997
	.quad	0x3ffb5f7403dddb12              # double 1.710804
	.quad	0x40221c36fc158fb4              # double 9.0551069999999995
	.quad	0x400548dc11e42e12              # double 2.6605759999999998
	.quad	0x401e6b2bba98eda2              # double 7.6046589999999998
	.quad	0x401df702a3486f05              # double 7.4912210000000003
	.quad	0x40111e0f7fcfc3f8              # double 4.2793559999999999
	.quad	0x40223fad8e432442              # double 9.124371
	.quad	0x4015ce1fc08fa7a8              # double 5.4512929999999997
	.quad	0x3ff50ce2d1f1cfbc              # double 1.3156460000000001
	.quad	0x3ffcdb38d60a6330              # double 1.8035209999999999
	.quad	0x400ed74794ea0770              # double 3.8551169999999999
	.quad	0x3fec5e2ac3222920              # double 0.88649500000000003
	.quad	0x40075a9003eea20a              # double 2.9192200000000001
	.quad	0x40049013a92a3055              # double 2.5703499999999999
	.quad	0x401caa76534373f3              # double 7.1664669999999999
	.quad	0x3ffd60c38f366949              # double 1.8361240000000001
	.quad	0x4013b9ec7000431c              # double 4.9315660000000001
	.quad	0x402275530489d27c              # double 9.2291489999999996
	.quad	0x4023ee922d948dc1              # double 9.9659589999999997
	.quad	0x401b43f0fe047d3d              # double 6.8163489999999998
	.quad	0x401c3c9d16fc9bc7              # double 7.0591929999999996
	.quad	0x401712cba732df50              # double 5.7683549999999997
	.quad	0x400b05a57646ae3a              # double 3.3777569999999999
	.quad	0x40235aeafab53d64              # double 9.6775739999999998
	.quad	0x4010321b3aeee957              # double 4.0489319999999998
	.quad	0x4021ac75c4a83b1d              # double 8.8368359999999999
	.quad	0x400f475d56f32bdc              # double 3.9098459999999999
	.quad	0x402170e3cd9a5226              # double 8.7204879999999996
	.quad	0x400d2ac322291fb4              # double 3.64588
	.quad	0x40216e8be2f7b17d              # double 8.7159110000000002
	.quad	0x3fe9278d0cc35ce2              # double 0.78607800000000005
	.quad	0x400d7f8982cb20fb              # double 3.6872739999999999
	.quad	0x400bbab649d388a9              # double 3.4661680000000001
	.quad	0x3fa1cdc443914f48              # double 0.034772999999999998
	.quad	0x4009dc1acde19fc3              # double 3.2324730000000002
	.quad	0x3ffb6a9717df19d6              # double 1.7135229999999999
	.quad	0x4004cab4fa48301a              # double 2.5989779999999998
	.quad	0x401d85bd944aa540              # double 7.3806060000000002
	.quad	0x400f7f2a9d627bf6              # double 3.937093
	.quad	0x400564b018611fd6              # double 2.6741640000000002
	.quad	0x40118122b7baecd0              # double 4.3761089999999996
	.quad	0x4022f776e6106ab1              # double 9.4833289999999994
	.quad	0x3fffe2962cfd8f0c              # double 1.9928189999999999
	.quad	0x40229b897204295a              # double 9.3037829999999992
	.quad	0x4021a9c2a0232096              # double 8.8315629999999992
	.quad	0x4002ae68e3ef2841              # double 2.3351609999999998
	.quad	0x401b5163fdd65a14              # double 6.8294829999999997
	.quad	0x4018411a975afaf8              # double 6.0635779999999997
	.quad	0x4008f1fcd24e160e              # double 3.1181580000000002
	.quad	0x401c74adbc664d3c              # double 7.113944
	.quad	0x4003e24463065f96              # double 2.4854820000000002
	.quad	0x3fb4298cc144028e              # double 0.078758999999999995
	.quad	0x3fe10afc47e49b20              # double 0.53259100000000004
	.quad	0x3f913986338b47c7              # double 0.016820999999999999
	.quad	0x4005505186db50f4              # double 2.664218
	.quad	0x402310dfdef8487c              # double 9.5329580000000007
	.quad	0x4020b838c111ada7              # double 8.3598079999999992
	.quad	0x400d1b8b26394fad              # double 3.638449
	.quad	0x4010c2b40f66a551              # double 4.1901400000000004
	.quad	0x4005d4e0114d2f5e              # double 2.7289430000000001
	.quad	0x401e19691a75cd0c              # double 7.5248150000000003
	.quad	0x401aeacc92146a1a              # double 6.7292959999999997
	.quad	0x4023dfbe33acd5b7              # double 9.9369980000000008
	.quad	0x4021b4c9c90c4dec              # double 8.8531019999999998
	.quad	0x3ff339baa1511e00              # double 1.2015940000000001
	.quad	0x401386b3fe9fadb0              # double 4.8815460000000002
	.quad	0x401b09717df19d67              # double 6.7592220000000003
	.quad	0x3fe8d0fa58f7121b              # double 0.77551000000000003
	.quad	0x40021e707e175d14              # double 2.2648630000000001
	.quad	0x40011d29563a9f38              # double 2.1392389999999999
	.quad	0x4018f1950331e3a8              # double 6.2359200000000001
	.quad	0x3ff4701c92ddbdb6              # double 1.277371
	.quad	0x401bbf04577d9557              # double 6.9365399999999999
	.quad	0x401b04a98aa8650e              # double 6.7545529999999996
	.quad	0x4001387f88765ba7              # double 2.152587
	.quad	0x400ae8a265f0f5a1              # double 3.363591
	.quad	0x3ff4624bba12b5e5              # double 1.273998
	.quad	0x40239986b9c304cd              # double 9.7998560000000001
	.quad	0x40054e568a50507a              # double 2.6632509999999998
	.quad	0x401a163a5c1c6089              # double 6.5217070000000001
	.quad	0x40209304ab606b7b              # double 8.2871450000000006
	.quad	0x401046e6106ab14f              # double 4.0692370000000002
	.quad	0x40197d69d30270f4              # double 6.3724740000000004
	.quad	0x400d80f0a5efe932              # double 3.6879590000000002
	.quad	0x4021393cee9dd7ed              # double 8.6117930000000005
	.quad	0x4001721ccd962068              # double 2.1807189999999999
	.quad	0x400c759ccfaeff5c              # double 3.5574279999999998
	.quad	0x400f1abc0e38a7e7              # double 3.8880539999999999
	.quad	0x4000a4ef0281ba80              # double 2.0805340000000001
	.quad	0x3fee57afea3df6dc              # double 0.94820400000000004
	.quad	0x401b0576cce5f740              # double 6.7553359999999998
	.quad	0x4014ac319c5a3e3a              # double 5.168158
	.quad	0x4002598a65492ff5              # double 2.2937210000000001
	.quad	0x3f96ca03c4b09e99              # double 0.022255
	.quad	0x4015919d2391d580              # double 5.392201
	.quad	0x401f6a0c282c6ef4              # double 7.8535620000000002
	.quad	0x40108420b3d4ae43              # double 4.1290310000000003
	.quad	0x400d363d3e4ef028              # double 3.651484
	.quad	0x3fe367296f6512a9              # double 0.60634299999999997
	.quad	0x401830f98fa37692              # double 6.0478269999999998
	.quad	0x4023466cf41f212d              # double 9.6375499999999991
	.quad	0x4021c45baf533f42              # double 8.8835119999999996
	.quad	0x400d3b3743632c1f              # double 3.6539139999999999
	.quad	0x4023784d12018a44              # double 9.7349630000000004
	.quad	0x3fed4016052502ef              # double 0.91407300000000002
	.quad	0x4019f095f2452c5a              # double 6.484947
	.quad	0x40015b63d3e4ef03              # double 2.1696240000000002
	.quad	0x4007bb35b0bbf50e              # double 2.9664109999999999
	.quad	0x4019c786c226809d              # double 6.4448499999999997
	.quad	0x4019e7521144cbe2              # double 6.4758990000000001
	.quad	0x40226e544fe36d22              # double 9.2154869999999995
	.quad	0x401d3f09d8c6d613              # double 7.3115610000000002
	.quad	0x400f840639d5e4a4              # double 3.9394650000000002
	.quad	0x40185c6c97d8cf3a              # double 6.0902580000000004
	.quad	0x40174bbfd71b0468              # double 5.8239739999999998
	.quad	0x401bdd2e514c22ee              # double 6.9659969999999998
	.quad	0x401df65cb35f3d7d              # double 7.4905879999999998
	.quad	0x4021fcd61b2a27f2              # double 8.9938210000000005
	.quad	0x40236285ec3dab5c              # double 9.6924279999999995
	.quad	0x40068682b6284599              # double 2.8156789999999998
	.quad	0x401e56ea4228997c              # double 7.5848779999999998
	.quad	0x4019dfb09203a323              # double 6.4684470000000003
	.quad	0x401ca3b645a1cac1              # double 7.1598750000000004
	.quad	0x4011bcf893faf428              # double 4.4345420000000004
	.quad	0x400121a9b8cb8e08              # double 2.1414369999999998
	.quad	0x401023cea6c1a049              # double 4.0349680000000001
	.quad	0x400d3963992c8c50              # double 3.653022
	.quad	0x4023dc122749f0e5              # double 9.9298260000000002
	.quad	0x401459531550ca1d              # double 5.0872310000000001
	.quad	0x3fcbadd9c27e9531              # double 0.21624299999999999
	.quad	0x4021e9a7c17a8933              # double 8.9563579999999998
	.quad	0x400ac2b734b51373              # double 3.3450760000000002
	.quad	0x4023cc8adeebb342              # double 9.8994970000000002
	.quad	0x400117acc4ef88b9              # double 2.1365599999999998
	.quad	0x3fe6051654d61b2a              # double 0.68812099999999998
	.quad	0x40022b1d4f9c1f86              # double 2.2710520000000001
	.quad	0x400d3ec7000431be              # double 3.655653
	.quad	0x401adbd87b56b873              # double 6.7146929999999996
	.quad	0x3ff419d12cadddf4              # double 1.2563029999999999
	.quad	0x3ffe1f5cf2495e18              # double 1.882657
	.quad	0x40184df6555c52e7              # double 6.0761349999999998
	.quad	0x4022bd0374ff865d              # double 9.3691669999999991
	.quad	0x4015260a2014727e              # double 5.2871480000000002
	.quad	0x3fd272474538ef35              # double 0.28822500000000001
	.quad	0x3ffbede00d1b7176              # double 1.7455750000000001
	.quad	0x401de1e71044f1a2              # double 7.4706080000000004
	.quad	0x400689b9d7fd8277              # double 2.8172489999999999
	.quad	0x400a809d495182aa              # double 3.3128000000000002
	.quad	0x4021707357e670e3              # double 8.7196300000000004
	.quad	0x4022b69f4906034f              # double 9.3566839999999995
	.quad	0x4021791105e1c151              # double 8.7364580000000007
	.quad	0x40193c7607c419a0              # double 6.3090440000000001
	.quad	0x401a2ba6698bb4d5              # double 6.5426270000000004
	.quad	0x3ff2ce68e3ef2841              # double 1.1753929999999999
	.quad	0x400c6957cd466f50              # double 3.551437
	.quad	0x4021f5d4c76d117b              # double 8.9801389999999994
	.quad	0x401a08fabda0dfdf              # double 6.508769
	.quad	0x4011590fb65668c2              # double 4.3369739999999997
	.quad	0x3ffad7b95a294142              # double 1.677667
	.quad	0x4009df39d1b2e59b              # double 3.233997
	.quad	0x4022b6d9dfdac68b              # double 9.3571310000000007
	.quad	0x4012008a265f0f5a              # double 4.5005269999999999
	.quad	0x400e9017dae81883              # double 3.8203580000000001
	.quad	0x4011d60fa15db339              # double 4.4590439999999996
	.quad	0x3ffd7397dd00f777              # double 1.8407210000000001
	.quad	0x4000acbc8c0ce91d              # double 2.0843440000000002
	.quad	0x4022a473471f7942              # double 9.3211919999999999
	.quad	0x401cf3eee5258927              # double 7.2382160000000004
	.quad	0x4014b9abb01c92de              # double 5.1813190000000002
	.quad	0x402125d1a21ea359              # double 8.5738649999999996
	.quad	0x401f49d66adb402d              # double 7.8221069999999999
	.quad	0x3fe13721d53cddd7              # double 0.53798000000000001
	.quad	0x4006c74c09c3ce21              # double 2.8473130000000002
	.quad	0x3fe12f1455219a84              # double 0.53699699999999995
	.quad	0x40155dbad3a604e2              # double 5.3415330000000001
	.quad	0x40093e553ac4f7ec              # double 3.1554359999999999
	.quad	0x3fe953b29a1b9f99              # double 0.79146700000000003
	.quad	0x3fb009d495182a99              # double 0.062649999999999997
	.quad	0x400f77df19d66adb              # double 3.9335309999999999
	.quad	0x402398eed02cd39e              # double 9.7986970000000007
	.quad	0x3ff11ea35935fc3b              # double 1.0699799999999999
	.quad	0x4017aff7164c729f              # double 5.9218409999999997
	.quad	0x400d518548a9bcfd              # double 3.6648049999999999
	.quad	0x40166c4e2f37fbf0              # double 5.6057670000000002
	.quad	0x402134371da37ef6              # double 8.6019830000000006
	.quad	0x400ffd9018e75793              # double 3.9988100000000002
	.quad	0x401c32b734b51373              # double 7.0495270000000003
	.quad	0x401ef8ed1bf7ad4b              # double 7.7430919999999998
	.quad	0x402124ab81f969e4              # double 8.5716210000000003
	.quad	0x40145e5796bfca86              # double 5.0921310000000002
	.quad	0x4015ac1376d54973              # double 5.4180429999999999
	.quad	0x401e982ecaeea63b              # double 7.6486159999999996
	.quad	0x40233fcb923a29c7              # double 9.6245999999999991
	.quad	0x400575592d98bf7f              # double 2.682299
	.quad	0x3fe13f42352eb5f6              # double 0.53897200000000001
	.quad	0x4016f0a2014727dd              # double 5.7349930000000002
	.quad	0x3fc246173b85e80c              # double 0.142764
	.quad	0x4016693532e7b3d9              # double 5.6027420000000001
	.quad	0x400c68a7a41e57da              # double 3.5511010000000001
	.quad	0x4020701b21c475e6              # double 8.2189569999999996
	.quad	0x40157e75360d0247              # double 5.373494
	.quad	0x401700fd7e45803d              # double 5.7509670000000002
	.quad	0x40203343d89ce4a8              # double 8.1001270000000005
	.quad	0x4021042224edf612              # double 8.5080729999999996
	.quad	0x4021d5f8b1572581              # double 8.9179130000000004
	.quad	0x402346cc5fbf8338              # double 9.6382779999999996
	.quad	0x400a176d5497310a              # double 3.2614390000000002
	.quad	0x4013a7f455a7d242              # double 4.9140180000000004
	.quad	0x401bd4dd72367e41              # double 6.9578759999999997
	.quad	0x4018f91afc04c8bd              # double 6.2432670000000003
	.quad	0x4009e8d4bad7d7c3              # double 3.2386870000000001
	.quad	0x4023cb2f44912989              # double 9.8968450000000007
	.quad	0x402060da5daf07c0              # double 8.1891660000000002
	.quad	0x400263aeab7995ee              # double 2.298673
	.quad	0x4020a1ee02a77a2d              # double 8.3162690000000001
	.quad	0x400bd294dd72367e              # double 3.4778229999999999
	.quad	0x4002b9eb6390c910              # double 2.3407809999999998
	.quad	0x401c4f6e82949a56              # double 7.0775699999999997
	.quad	0x40216d011904b3c4              # double 8.7128990000000001
	.quad	0x40217a19220ff541              # double 8.7384730000000008
	.quad	0x401a360d4562e0a0              # double 6.5527850000000001
	.quad	0x3fdb13660e51d25b              # double 0.42305900000000002
	.quad	0x40239742bb6672fc              # double 9.7954310000000006
	.quad	0x400cfa8155d5f56a              # double 3.6223169999999998
	.quad	0x4023ce5de15ca6ca              # double 9.90306
	.quad	0x401df61d8622c450              # double 7.4903469999999999
	.quad	0x4001c39cd8127b2d              # double 2.2205140000000001
	.quad	0x3ff2e0807357e671              # double 1.17981
	.quad	0x3fbe93e1c9b41398              # double 0.11944399999999999
	.quad	0x4014c3d9a95421c0              # double 5.1912599999999998
	.quad	0x4015eeffe2a3cea7              # double 5.4833980000000002
	.quad	0x4019d6a055757d5b              # double 6.4595960000000003
	.quad	0x3ff53e1869835159              # double 1.3276600000000001
	.quad	0x40207ff3ade225fa              # double 8.2499059999999993
	.quad	0x400bd7c80841ede1              # double 3.480362
	.quad	0x4015b8904f6dfc5d              # double 5.4302380000000001
	.quad	0x4015ab44e50c5eb3              # double 5.4172549999999999
	.quad	0x40135e76427c7c52              # double 4.8422479999999997
	.quad	0x4021c31c0010c6f8              # double 8.8810730000000007
	.quad	0x4018a4a44c7b02d6              # double 6.1607830000000003
	.quad	0x400296a93f290abb              # double 2.3235649999999999
	.quad	0x3ff4e919695d91ac              # double 1.3069090000000001
	.quad	0x400d906466b1e5c1              # double 3.6955040000000001
	.quad	0x4023135f80991794              # double 9.5378380000000007
	.quad	0x40085b0d51f81a58              # double 3.0444589999999998
	.quad	0x3fe5c8f32378ab0d              # double 0.68078000000000005
	.quad	0x401edf7a4e7ab756              # double 7.7182399999999998
	.quad	0x402253b0e5e67946              # double 9.1634589999999996
	.quad	0x3ffc5b23dd54da4d              # double 1.772251
	.quad	0x3fe80b49e01de269              # double 0.75137799999999999
	.quad	0x400fa1dc93ea2d30              # double 3.954034
	.quad	0x401ef692f6e8294a              # double 7.7407950000000003
	.quad	0x3fe3b62a5e785b5b              # double 0.61598699999999995
	.quad	0x40085dc69f8c21e2              # double 3.0457890000000001
	.quad	0x3fff9e95b78cc9a7              # double 1.9762169999999999
	.quad	0x3fbc241c3efae792              # double 0.109926
	.quad	0x401031a2e7f6f4bf              # double 4.0484730000000004
	.quad	0x4020bc0fa9c12f0a              # double 8.3673070000000003
	.quad	0x4012f25c810a569b              # double 4.7366809999999999
	.quad	0x401f3ea3df6db941              # double 7.811172
	.quad	0x402076e2c98e53eb              # double 8.2321989999999996
	.quad	0x3ff528900c521dda              # double 1.322403
	.quad	0x3fe1d1ed9dfdac69              # double 0.55687600000000004
	.quad	0x4021cbce8533b107              # double 8.8980599999999992
	.quad	0x401bbd334c5da6a4              # double 6.9347659999999998
	.quad	0x4003fede1198aeb8              # double 2.499447
	.quad	0x40078cba732df506              # double 2.9437150000000001
	.quad	0x4016b326e115592e              # double 5.6749530000000004
	.quad	0x40075fb3743632c2              # double 2.921729
	.quad	0x4021dbf63c31df76              # double 8.9296129999999998
	.quad	0x401c9fb2edfe75bc              # double 7.1559559999999998
	.quad	0x400eb41c8216c615              # double 3.8379449999999999
	.quad	0x400bd4a44c7b02d6              # double 3.4788290000000002
	.quad	0x4010aa43fe5c91d1              # double 4.1662749999999997
	.quad	0x3ffe7a0d77b7c782              # double 1.904798
	.quad	0x3ffa248a58b3f63c              # double 1.633921
	.quad	0x4021218aeb80ecfa              # double 8.5655129999999993
	.quad	0x4014e984a0e410b6              # double 5.2280449999999998
	.quad	0x401dd17720c8cd64              # double 7.4545560000000002
	.quad	0x3ff66ee957470eb2              # double 1.4020779999999999
	.quad	0x4022c4c985f06f69              # double 9.3843499999999995
	.quad	0x402288507a6bd6e9              # double 9.2662390000000006
	.quad	0x4012d039abf33871              # double 4.7033449999999997
	.quad	0x401077c02afdda8c              # double 4.1169440000000002
	.quad	0x401f595aaf78feef              # double 7.8372599999999996
	.quad	0x401b44db59578a2b              # double 6.8172430000000004
	.quad	0x40177756861e9292              # double 5.8665409999999998
	.quad	0x401facf2495e17e3              # double 7.9188929999999997
	.quad	0x40140b399f5dfeb9              # double 5.0109620000000001
	.quad	0x4010caf74cd3176a              # double 4.1982090000000003
	.quad	0x4002a46f9b994e1a              # double 2.3302909999999999
	.quad	0x4014a55bccaf709b              # double 5.1614829999999996
	.quad	0x3fb4386d2ed783e0              # double 0.078986000000000001
	.quad	0x4021dc7f13059642              # double 8.9306570000000001
	.quad	0x402398bb4d48882f              # double 9.7983039999999999
	.quad	0x401d50d0edc3bd5a              # double 7.3289220000000004
	.quad	0x4003407bbb62413e              # double 2.4064860000000001
	.quad	0x3fc124e9c4545847              # double 0.133939
	.quad	0x4014473b42cc2d6b              # double 5.0695620000000003
	.quad	0x3ff3a39713ad5bee              # double 1.2274389999999999
	.quad	0x40073ff822bbecab              # double 2.9062350000000001
	.quad	0x402385d67ba237ce              # double 9.7614020000000004
	.quad	0x401de69d30270f39              # double 7.4752090000000004
	.quad	0x400a61f6cacd184c              # double 3.2978339999999999
	.quad	0x40087984a0e410b6              # double 3.0593349999999999
	.quad	0x3ff7f1348b220792              # double 1.4963880000000001
	.quad	0x40124ba908a265f1              # double 4.573887
	.quad	0x4020ce3b03e20cd0              # double 8.4027940000000001
	.quad	0x401ea0841ede1199              # double 7.6567540000000002
	.quad	0x40110078d92fb19e              # double 4.2504609999999996
	.quad	0x4014f86013660e52              # double 5.2425540000000002
	.quad	0x401d17bb73083559              # double 7.2731760000000003
	.quad	0x400a060807357e67              # double 3.252945
	.quad	0x401bfbec2480e8c9              # double 6.9960180000000003
	.quad	0x40113b851eb851ec              # double 4.3081250000000004
	.quad	0x3ff3785729b280f1              # double 1.21688
	.quad	0x4021cfc32ebe596d              # double 8.9057860000000009
	.quad	0x4019c687b139c94f              # double 6.4438769999999996
	.quad	0x4022d41dd1a21ea3              # double 9.4142899999999993
	.quad	0x400f9ab53d640e9d              # double 3.9505409999999999
	.quad	0x3fe21cb252ce032e              # double 0.56600300000000003
	.quad	0x400de625e99e94ab              # double 3.7373769999999999
	.quad	0x3ffbc24e59296702              # double 1.7349380000000001
	.quad	0x40217d9103c8e25d              # double 8.7452470000000009
	.quad	0x3ff0c6e6d9be4cd7              # double 1.0485599999999999
	.quad	0x3ff63304039abf34              # double 1.3874550000000001
	.quad	0x401338f7985271bd              # double 4.8056320000000001
	.quad	0x40020b67c286f8ad              # double 2.2555689999999999
	.quad	0x4018a929ed3953df              # double 6.1651990000000003
	.quad	0x401663eaf6837f7c              # double 5.5975760000000001
	.quad	0x40212c7304039abf              # double 8.5868149999999996
	.quad	0x401b776cce5f7404              # double 6.8666260000000001
	.quad	0x3fd98fffbce4217d              # double 0.39941399999999999
	.quad	0x4019345f17bd8be7              # double 6.3011439999999999
	.quad	0x40205c176577531e              # double 8.1798660000000005
	.quad	0x40069f4b1ee24357              # double 2.8277800000000002
	.quad	0x40233f9bbadc0981              # double 9.6242350000000005
	.quad	0x3ff31c779a6b50b1              # double 1.19445
	.quad	0x4017833ce63a5c1c              # double 5.8781619999999997
	.quad	0x402007c4e2f37fbf              # double 8.015174
	.quad	0x40108641f644955b              # double 4.1311109999999998
	.quad	0x3ffd5696e58a32f4              # double 1.8336399999999999
	.quad	0x401e3322f2734f83              # double 7.549938
	.quad	0x4001ae4f3343fa2b              # double 2.2101120000000001
	.quad	0x401e7015c209246c              # double 7.6094580000000001
	.quad	0x4022946e4c0df58c              # double 9.2899039999999999
	.quad	0x3fdd6a6e32e3821b              # double 0.459621
	.quad	0x40175b9e060fe47a              # double 5.8394700000000004
	.quad	0x3fd719bd4067cf1c              # double 0.36094599999999999
	.quad	0x40096adbc664d3bf              # double 3.1771769999999999
	.quad	0x400ee407cc7d1bb5              # double 3.8613430000000002
	.quad	0x4011430f062d40ab              # double 4.3154870000000001
	.quad	0x4009d50dae3e6c4c              # double 3.2290299999999998
	.quad	0x3fcc46cfc829cfdd              # double 0.220911
	.quad	0x4018872a38b8ae32              # double 6.1319970000000001
	.quad	0x40197fdfc19c1722              # double 6.3748769999999997
	.quad	0x4009e0f345069a4e              # double 3.234839
	.quad	0x4018ffc3b4f61672              # double 6.2497699999999998
	.quad	0x4023d5197a24894c              # double 9.9162099999999995
	.quad	0x40055764f11b60af              # double 2.6676730000000002
	.quad	0x4018d3da2f8bdec6              # double 6.206887
	.quad	0x40013b5fa22706d5              # double 2.153991
	.quad	0x401a5f062d40aaeb              # double 6.592797
	.quad	0x40176bed740c4157              # double 5.8553980000000001
	.quad	0x4015ed816aceaaf3              # double 5.4819389999999997
	.quad	0x401c4e358298cc14              # double 7.0763759999999998
	.quad	0x4010e068986fcdee              # double 4.2191489999999998
	.quad	0x3ff707746887a8d6              # double 1.4393199999999999
	.quad	0x4019e6312f4cf4a5              # double 6.4747969999999997
	.quad	0x401eb26dce39b457              # double 7.6742470000000002
	.quad	0x4021322163fdd65a              # double 8.5979109999999999
	.quad	0x401de426fe718a87              # double 7.4728050000000001
	.quad	0x3fe5ae7b3d8e0008              # double 0.67754899999999996
	.quad	0x4023eccbe1eb4203              # double 9.9624930000000002
	.quad	0x3fe1ae642bf9830e              # double 0.55253799999999997
	.quad	0x40203f296f6512a9              # double 8.1233629999999994
	.quad	0x4017a3b46fdeb52d              # double 5.9098680000000003
	.quad	0x40031d8f92af9a8d              # double 2.3894340000000001
	.quad	0x4023a3499d0203e6              # double 9.8189209999999996
	.quad	0x3ff806c8711d798e              # double 1.5016560000000001
	.quad	0x401cc91b823c85c2              # double 7.1963939999999997
	.quad	0x3fe1c382a12f9011              # double 0.55511600000000005
	.quad	0x3ffc1bcec84f8f8a              # double 1.7567889999999999
	.quad	0x40237d577963992d              # double 9.7448080000000008
	.quad	0x401d19d1f601797d              # double 7.2752150000000002
	.quad	0x40227df9bdc69f8c              # double 9.2460459999999997
	.quad	0x401619ce4a7b4e55              # double 5.525201
	.quad	0x3ffa0cda6e75ff61              # double 1.6281380000000001
	.quad	0x40196bf26f1dc50d              # double 6.3554170000000001
	.quad	0x401c10bed740c415              # double 7.0163529999999996
	.quad	0x4020c6a960b6f9fd              # double 8.3880110000000005
	.quad	0x4015a70b49e01de2              # double 5.4131289999999996
	.quad	0x4016abf11f926c7f              # double 5.6679120000000003
	.quad	0x401c5fbe76c8b439              # double 7.0934999999999997
	.quad	0x400b6fd9fd36f7e4              # double 3.4296150000000001
	.quad	0x402284393682730c              # double 9.2582489999999992
	.quad	0x3ffbdeabbcb1cc96              # double 1.7418629999999999
	.quad	0x4002c68e3ef28416              # double 2.3469509999999998
	.quad	0x3fe34b35f3d7d391              # double 0.60293099999999999
	.quad	0x3fb67c5ac471b478              # double 0.087834999999999996
	.quad	0x3fc66759ab6d00b4              # double 0.17502899999999999
	.quad	0x4014dc692f6e8295              # double 5.2152450000000004
	.quad	0x4013a5a5b9628cbd              # double 4.9117649999999999
	.quad	0x40126b60f1b25f63              # double 4.6048619999999998
	.quad	0x401e44aa10e02214              # double 7.5670549999999999
	.quad	0x4023f66490a350d3              # double 9.9812360000000008
	.quad	0x3fc5346994185059              # double 0.165662
	.quad	0x402261d96e9bbf0e              # double 9.1911120000000004
	.quad	0x40081631b584b1ab              # double 3.010837
	.quad	0x4020dee008e9b38d              # double 8.4353029999999993
	.quad	0x40214f72b4528284              # double 8.6551720000000003
	.quad	0x4017abd4067cf1c3              # double 5.9178009999999999
	.quad	0x4002546ed245b292              # double 2.2912270000000001
	.quad	0x401afca5375c8da0              # double 6.7467240000000004
	.quad	0x3fff19a73b42cc2d              # double 1.9437629999999999
	.quad	0x401f48f7db6e5040              # double 7.8212580000000003
	.quad	0x40170cd39da16617              # double 5.7625260000000003
	.quad	0x401ea49ecb31c21a              # double 7.6607620000000001
	.quad	0x4019129845dc8323              # double 6.2681589999999998
	.quad	0x402373a40d90e23b              # double 9.725861
	.quad	0x401061bb4916ca47              # double 4.0954410000000001
	.quad	0x401afc4da9003eea              # double 6.7463899999999999
	.quad	0x3fd27a28bb0a2caa              # double 0.28870600000000002
	.quad	0x400319b77c02afde              # double 2.3875570000000002
	.quad	0x40208965d3996fa8              # double 8.2683549999999997
	.quad	0x3f8b5b70691ea78b              # double 0.013358
	.quad	0x40143357603925bb              # double 5.0501379999999996
	.quad	0x4010c5197a24894c              # double 4.1924799999999998
	.quad	0x401f7796bfca85cb              # double 7.8667860000000002
	.quad	0x40193e9f6a93f291              # double 6.3111550000000003
	.quad	0x3fe22e90364388ec              # double 0.56818400000000002
	.quad	0x4022c9f2778140dd              # double 9.3944279999999995
	.quad	0x4013b80b673c4f3c              # double 4.9297310000000003
	.quad	0x40136f86e3b46fdf              # double 4.8589130000000003
	.quad	0x3fff7d1676640a6c              # double 1.9680390000000001
	.quad	0x3ff63a6efc371da3              # double 1.3892659999999999
	.quad	0x401e83ce2089e343              # double 7.6287159999999998
	.quad	0x401dbefed634549b              # double 7.4365189999999997
	.quad	0x401cae95b78cc9a7              # double 7.1704929999999996
	.quad	0x401ff3c18b502abb              # double 7.9880430000000002
	.quad	0x400d86da4484944f              # double 3.6908460000000001
	.quad	0x3fec18eb8950763a              # double 0.87804199999999999
	.quad	0x401f00789613d31c              # double 7.7504600000000003
	.quad	0x401209830e3cd9a5              # double 4.5092889999999999
	.quad	0x401bb008205ff1d8              # double 6.9219059999999999
	.quad	0x3fa5e39713ad5bee              # double 0.042751999999999998
	.quad	0x400c6c9ea9a3d2d8              # double 3.5530369999999998
	.quad	0x3ff6ba13c254a3c6              # double 1.4204289999999999
	.quad	0x40196b55ef1fddec              # double 6.3548200000000001
	.quad	0x401bb9289dadfb50              # double 6.9308189999999996
	.quad	0x4020d4b662fdfc1a              # double 8.4154540000000004
	.quad	0x3ffc2fc58ab92c06              # double 1.761663
	.quad	0x400634ad362e9036              # double 2.7757209999999999
	.quad	0x401ebe2eb1c432ca              # double 7.6857249999999997
	.quad	0x401c702795703f2d              # double 7.1095259999999998
	.quad	0x40210b9c0ebedfa4              # double 8.5226749999999995
	.quad	0x3feb87b352a84381              # double 0.86031500000000005
	.quad	0x40229f89613d31ba              # double 9.3115950000000005
	.quad	0x4005e48b65237048              # double 2.7365940000000002
	.quad	0x401656b1a2a4db16              # double 5.5846619999999998
	.quad	0x3fb07bedb7281fda              # double 0.064391000000000004
	.quad	0x4020e5c7cd898b2f              # double 8.4487900000000007
	.quad	0x401d3cb20fb224ab              # double 7.3092730000000001
	.quad	0x401aca8bd230b9dc              # double 6.6977989999999998
	.quad	0x3fd486833c60029f              # double 0.32071
	.quad	0x4012f6a832b990b0              # double 4.7408760000000001
	.quad	0x40079b0d51f81a58              # double 2.9507089999999998
	.quad	0x3fc5d1676640a6b9              # double 0.17045299999999999
	.quad	0x401221d9b1b79d91              # double 4.5330570000000003
	.quad	0x402097bf1e8e6080              # double 8.2963799999999992
	.quad	0x4012be308787485e              # double 4.6857319999999998
	.quad	0x40202826aa8eb463              # double 8.0784199999999995
	.quad	0x3fc753cddd6e04c0              # double 0.18224499999999999
	.quad	0x401aa9ac36544fe3              # double 6.6656959999999996
	.quad	0x40168718eb895076              # double 5.6319309999999998
	.quad	0x3ffd34a558ea7ce1              # double 1.825353
	.quad	0x401f9ccccccccccd              # double 7.9031250000000001
	.quad	0x4022f9f644955b46              # double 9.4882069999999992
	.quad	0x401e3450268900c5              # double 7.5510869999999998
	.quad	0x40181d6fda836eb5              # double 6.0287470000000001
	.quad	0x400b9305100a393f              # double 3.446787
	.quad	0x3feaedbf8b9baa15              # double 0.84152199999999999
	.quad	0x4021e44007570c56              # double 8.9458009999999994
	.quad	0x4011e100a393ee5f              # double 4.4697290000000001
	.quad	0x401ad183f91e646f              # double 6.7046049999999999
	.quad	0x3fa5204af922962d              # double 0.041262
	.quad	0x401e299bf5946c33              # double 7.5406339999999998
	.quad	0x4013a91d9b1b79d9              # double 4.915152
	.quad	0x40150fd7a13c254a              # double 5.2654709999999998
	.quad	0x4004c7bbb62413db              # double 2.5975259999999998
	.quad	0x4004c359bc33f855              # double 2.595386
	.quad	0x3feaccd74927913f              # double 0.83750500000000005
	.quad	0x4000f2d905c03361              # double 2.1185779999999999
	.quad	0x4012eff151e75361              # double 4.7343190000000002
	.quad	0x40117afb7e90ff97              # double 4.3700999999999999
	.quad	0x401ada6defc7a398              # double 6.7133099999999999
	.quad	0x4005778cc9a77e5f              # double 2.6833740000000001
	.quad	0x3ff6499bf5946c33              # double 1.392971
	.quad	0x3ff6093c89f40a28              # double 1.3772549999999999
	.quad	0x3ffb976577531db4              # double 1.7244619999999999
	.quad	0x4020f39ef0f16f44              # double 8.4758220000000008
	.quad	0x401c7c610f0e90bc              # double 7.1214639999999996
	.quad	0x40120bef49cf56eb              # double 4.5116550000000002
	.quad	0x4016e2e1ac57e23f              # double 5.7215639999999999
	.quad	0x4023059a73b42cc3              # double 9.5109440000000002
	.quad	0x401111bac2df0d41              # double 4.2673139999999998
	.quad	0x4020ad8ea7ce0fc3              # double 8.3389790000000001
	.quad	0x4022db35b0bbf50e              # double 9.4281439999999996
	.quad	0x40043911cf355cd9              # double 2.5278659999999999
	.quad	0x4013cd3e0bd44999              # double 4.9504320000000002
	.quad	0x400e5c31df761cbd              # double 3.7950170000000001
	.quad	0x400a83cafb3b7521              # double 3.314352
	.quad	0x401b2a048e043a21              # double 6.7910329999999997
	.quad	0x4016595dd4c76d11              # double 5.5872719999999996
	.quad	0x402222ee631f8a09              # double 9.068225
	.quad	0x40204b92c061847f              # double 8.1476039999999994
	.quad	0x4011c26bb55ac040              # double 4.439864
	.quad	0x4011c5432873bc90              # double 4.4426389999999998
	.quad	0x4020d32e1693c03c              # double 8.4124610000000004
	.quad	0x4013b46ae3a3a8e7              # double 4.9261889999999999
	.quad	0x4017c1b97353b4b3              # double 5.939184
	.quad	0x4012b59a30984e40              # double 4.677346
	.quad	0x4006dbb517a46174              # double 2.8572790000000001
	.quad	0x4017134efcbd5561              # double 5.7688560000000004
	.quad	0x401c7b24e9c45458              # double 7.1202579999999998
	.quad	0x4013884e831ad213              # double 4.8831119999999997
	.quad	0x3fbf2b777d0f1f58              # double 0.121757
	.quad	0x4013ed601ffb480a              # double 4.9818119999999997
	.quad	0x4023508d2a1f8e3b              # double 9.6573270000000004
	.quad	0x4010622a6f3f52fc              # double 4.0958649999999999
	.quad	0x400f490470a808c8              # double 3.9106529999999999
	.quad	0x3ff3fad2999567dc              # double 1.2487360000000001
	.quad	0x401963476295208e              # double 6.3469519999999999
	.quad	0x400e8fcdee34fc61              # double 3.820217
	.quad	0x402172074ea8da7f              # double 8.7227119999999996
	.quad	0x3ff972f33ca31e7e              # double 1.5905640000000001
	.quad	0x3ffbf30b5aa71583              # double 1.746837
	.quad	0x40126343b70ef566              # double 4.5969379999999997
	.quad	0x4014977186551937              # double 5.147894
	.quad	0x402235e9e1b089a0              # double 9.1052999999999997
	.quad	0x4020c6d4c33b5393              # double 8.3883419999999997
	.quad	0x4006dd084e831ad2              # double 2.857926
	.quad	0x401e1c9ea9a3d2d8              # double 7.5279489999999995
	.quad	0x4020317a46173b86              # double 8.0966360000000002
	.quad	0x4017b35daad60200              # double 5.9251620000000003
	.quad	0x3fd8fe2e6ea85447              # double 0.39051399999999997
	.quad	0x40205d66490a350d              # double 8.1824209999999997
	.quad	0x401d5fab53d640ea              # double 7.3434270000000001
	.quad	0x4001384e3ffef391              # double 2.1524930000000002
	.quad	0x400ec7d1351159c5              # double 3.8475670000000002
	.quad	0x40213506fef7c244              # double 8.6035690000000002
	.quad	0x3fecfefe0ce0b913              # double 0.90612700000000002
	.quad	0x4016369d30270f39              # double 5.5533340000000004
	.quad	0x401d1318b9346994              # double 7.2686489999999999
	.quad	0x3fc2e6299524bfd3              # double 0.147649
	.quad	0x40160b7bf1e8e608              # double 5.511215
	.quad	0x4020785bc01a36e3              # double 8.2350750000000001
	.quad	0x401b018efbb0e5e6              # double 6.7515219999999996
	.quad	0x40210731f46ed246              # double 8.5140530000000005
	.quad	0x40187cfcc5b8dc55              # double 6.122058
	.quad	0x4021402c0a4a05de              # double 8.6253360000000008
	.quad	0x401bc1550ca1cef2              # double 6.9388009999999998
	.quad	0x40211d2999567dbb              # double 8.5569579999999998
	.quad	0x4021cb5a858793de              # double 8.8971750000000007
	.quad	0x4000a0de4c51116b              # double 2.0785490000000002
	.quad	0x401f9ac8605681ed              # double 7.9011550000000001
	.quad	0x4020f987a4a48f97              # double 8.4873630000000002
	.quad	0x401631083dbc2331              # double 5.5478829999999997
	.quad	0x4019ffb43d89ce4a              # double 6.4997109999999996
	.quad	0x3ff6c3ba3443d46b              # double 1.422785
	.quad	0x3fc53f748a159818              # double 0.16599900000000001
	.quad	0x3ff995c74751ce29              # double 1.599067
	.quad	0x401fc123810e8859              # double 7.938612
	.quad	0x3feb65dbfceb7889              # double 0.85618399999999995
	.quad	0x40217b81b64e0547              # double 8.7412240000000008
	.quad	0x40157159817b95a3              # double 5.3606930000000004
	.quad	0x4017c7b7c7820a31              # double 5.9450370000000001
	.quad	0x3ff9148fd9fd36f8              # double 1.56752
	.quad	0x40219bd9018e7579              # double 8.8043899999999997
	.quad	0x4023d34edb2f661f              # double 9.9127109999999998
	.quad	0x4020ec0420f6f08d              # double 8.4609690000000004
	.quad	0x401b6262cba732df              # double 6.8460799999999997
	.quad	0x401ff5aaf78feef6              # double 7.9899100000000001
	.quad	0x401ac7a9e2bcf91a              # double 6.6949839999999998
	.quad	0x401cc30e7ff583a5              # double 7.1904849999999998
	.quad	0x4018f1c6d1e108c4              # double 6.23611
	.quad	0x401363d4f15e7c8d              # double 4.8474919999999999
	.quad	0x40205069e7fb267c              # double 8.1570579999999992
	.quad	0x3ff6913d74d594f2              # double 1.4104589999999999
	.quad	0x401170c49ba5e354              # double 4.360125
	.quad	0x4023bd3d4280ae10              # double 9.8696079999999995
	.quad	0x401dd47b24638c97              # double 7.4575009999999997
	.quad	0x401b4958537e2c56              # double 6.8216260000000002
	.quad	0x4006a115df6555c5              # double 2.8286549999999999
	.quad	0x401633d35eb7457c              # double 5.550611
	.quad	0x40056a465a57646b              # double 2.676892
	.quad	0x401a272fba01eeee              # double 6.5382680000000004
	.quad	0x40181a91d9b1b79e              # double 6.0259470000000004
	.quad	0x401556e935b91f71              # double 5.3348740000000001
	.quad	0x401b85657fb69985              # double 6.8802700000000003
	.quad	0x401d495b78cc9a78              # double 7.321638
	.quad	0x3fef065d7cb2d906              # double 0.96952700000000003
	.quad	0x400edf9f01b866e4              # double 3.8591899999999999
	.quad	0x401216833c60029f              # double 4.5219849999999999
	.quad	0x4017d9ed7c6fbd27              # double 5.9628199999999998
	.quad	0x40239f8d92fb19e7              # double 9.8116269999999996
	.quad	0x400fae21101b0037              # double 3.9600240000000002
	.quad	0x4009bcd1c7de5083              # double 3.2171970000000001
	.quad	0x4020f3dfd2630ec3              # double 8.4763169999999999
	.quad	0x401317325918a00a              # double 4.772653
	.quad	0x3ff5660b2c83ec89              # double 1.337413
	.quad	0x4018961a1db877ab              # double 6.1465839999999998
	.quad	0x401334b7f5a5332b              # double 4.8014830000000002
	.quad	0x4010a77af640639d              # double 4.1635549999999997
	.quad	0x4012b605681ecd4b              # double 4.6777550000000003
	.quad	0x400f6ad256798959              # double 3.9271590000000001
	.quad	0x401bbad256798959              # double 6.9324430000000001
	.quad	0x3fef0153bd167664              # double 0.96891199999999999
	.quad	0x400181ad6451b930              # double 2.1883189999999999
	.quad	0x40009b3a68b19a41              # double 2.0757949999999998
	.quad	0x3ff368cbd1244a62              # double 1.213085
	.quad	0x40228bdf4c2b51bd              # double 9.2731879999999993
	.quad	0x40214958d9b5e95b              # double 8.6432559999999992
	.quad	0x4015c55d5f56a7ad              # double 5.4427390000000004
	.quad	0x400bb62d83c6c97e              # double 3.4639540000000002
	.quad	0x3ffdd681ecd4aa11              # double 1.86487
	.quad	0x401dd8900c521dda              # double 7.461487
	.quad	0x4011dddb1209edc0              # double 4.4666560000000004
	.quad	0x400a0d8b1dd5d3dd              # double 3.2566130000000002
	.quad	0x4007cc27a63736ce              # double 2.974685
	.quad	0x401e74f6598e10cf              # double 7.6142209999999996
	.quad	0x401de26b723ee1bd              # double 7.4711129999999999
	.quad	0x4020e0140dd3fe19              # double 8.4376529999999992
	.quad	0x4023a8726d04e619              # double 9.8289980000000003
	.quad	0x400c11cb039ef0f1              # double 3.5086879999999998
	.quad	0x40046d099e0e7360              # double 2.5532409999999999
	.quad	0x40173035371971c1              # double 5.797078
	.quad	0x401ae6fa3fcc9eaa              # double 6.7255640000000003
	.quad	0x40206eba27ae9ab3              # double 8.2162640000000007
	.quad	0x3fe36a63b688bda9              # double 0.60673699999999997
	.quad	0x4022af37542a23c0              # double 9.342219
	.quad	0x402102d16b97fe8f              # double 8.5055040000000002
	.quad	0x3ffc242e12620254              # double 1.7588330000000001
	.quad	0x402077589efd86a9              # double 8.233098
	.quad	0x4022fa9a5ebb773a              # double 9.4894590000000001
	.quad	0x4000169a91105e1c              # double 2.011037
	.quad	0x3ffff4f3fd933e36              # double 1.9973030000000001
	.quad	0x400b1af102363b25              # double 3.3881549999999998
	.quad	0x4016adc1a47a9e2c              # double 5.6696840000000002
	.quad	0x4017f3947496aad2              # double 5.9878710000000002
	.quad	0x401cf9ae924f227d              # double 7.24383
	.quad	0x40001aeee957470f              # double 2.0131510000000001
	.quad	0x401ad68a50507a6c              # double 6.7095120000000001
	.quad	0x4000521ff2e48e8a              # double 2.0400999999999998
	.quad	0x400839f44d445671              # double 3.0282979999999999
	.quad	0x3ff10112ba16e7a3              # double 1.062762
	.quad	0x4005aa05dd8f92b0              # double 2.7080190000000002
	.quad	0x3fff2e74f2f123c4              # double 1.948842
	.quad	0x401872999567dbb1              # double 6.1119139999999996
	.quad	0x401f1d655e28aa43              # double 7.7787069999999998
	.quad	0x4007dd76683c297c              # double 2.983136
	.quad	0x4015821a2e7f6f4c              # double 5.3770530000000001
	.quad	0x401f0e4b018611fd              # double 7.7639579999999996
	.quad	0x3ffc4b790fb65669              # double 1.7684260000000001
	.quad	0x4016432df505d0fa              # double 5.5656049999999997
	.quad	0x4003546c332f0175              # double 2.4162219999999999
	.quad	0x3fffb1c53f39d1b3              # double 1.980901
	.quad	0x3fdb830a0b1bbcf5              # double 0.42987300000000001
	.quad	0x40116b8e086bdf4c              # double 4.3550339999999998
	.quad	0x3fde6cd29131ec0b              # double 0.47539199999999998
	.quad	0x401850e5a35d67ba              # double 6.0790009999999999
	.quad	0x401430995aaf78ff              # double 5.0474600000000001
	.quad	0x401510cc78e9f6a9              # double 5.2664049999999998
	.quad	0x402085bdb5d89481              # double 8.2612129999999997
	.quad	0x4009d0025bfad29a              # double 3.2265670000000002
	.quad	0x4023d5dfc9ff92f3              # double 9.9177230000000005
	.quad	0x4010856b87379746              # double 4.130293
	.quad	0x4004882385404641              # double 2.5664739999999999
	.quad	0x402114c7d1bb4917              # double 8.5405870000000004
	.quad	0x401c2fc0096feb4a              # double 7.0466309999999996
	.quad	0x400474e4430b178b              # double 2.5570759999999999
	.quad	0x400a8f5558212945              # double 3.3199869999999998
	.quad	0x400d2005c4651f3f              # double 3.6406360000000002
	.quad	0x4020a1656eefa1e4              # double 8.3152270000000001
	.quad	0x401e6a6266fd651b              # double 7.6038909999999999
	.quad	0x402002cc70867ad9              # double 8.0054660000000002
	.quad	0x40163ff8a8f3a9b0              # double 5.5624719999999996
	.quad	0x401f5b1ab0856e69              # double 7.8389689999999996
	.quad	0x400c07a5b0ff10ed              # double 3.5037340000000001
	.quad	0x3fff29c23b7952d2              # double 1.947695
	.quad	0x40017862b27cbf6e              # double 2.1837819999999999
	.quad	0x402135f43c7d5ed0              # double 8.6053789999999992
	.quad	0x4010a2cc70867ad9              # double 4.1589830000000001
	.quad	0x3ffcd47064ece9a3              # double 1.801865
	.quad	0x40016ac9f2fdb8fe              # double 2.1771430000000001
	.quad	0x4007902de00d1b71              # double 2.9453999999999998
	.quad	0x3fec315f88fc9364              # double 0.881027
	.quad	0x401e34c1ebc83a97              # double 7.5515210000000001
	.quad	0x4023e6149c6f36f0              # double 9.9493760000000009
	.quad	0x401b8774eebf65dc              # double 6.882282
	.quad	0x4014cbea91d9b1b8              # double 5.1991370000000003
	.quad	0x40167bda9435ac8a              # double 5.6209509999999998
	.quad	0x401363f141205bc0              # double 4.8475999999999999
	.quad	0x401135d5b24e9c45              # double 4.3025729999999998
	.quad	0x40081d987c6327ee              # double 3.0144510000000002
	.quad	0x4000851eb851eb85              # double 2.0649999999999999
	.quad	0x3fe3724d8fd5cb79              # double 0.60770299999999999
	.quad	0x401a7e991ff7164c              # double 6.6236309999999996
	.quad	0x3fef156e264e4862              # double 0.97136599999999995
	.quad	0x40169e696a26e547              # double 5.6546989999999999
	.quad	0x4023bac5e2cdc012              # double 9.8647910000000003
	.quad	0x40126aeee957470f              # double 4.6044270000000003
	.quad	0x4023a50bd87b56b8              # double 9.8223559999999991
	.quad	0x401a1559f6ec5b08              # double 6.5208510000000004
	.quad	0x401a0e79aae6c8f7              # double 6.5141359999999997
	.quad	0x3ffa03dbc23315d7              # double 1.625942
	.quad	0x401a4154866a11ed              # double 6.5637990000000004
	.quad	0x401b5f8ad2567989              # double 6.8433029999999997
	.quad	0x40074c7da1ec4e72              # double 2.9123489999999999
	.quad	0x40154de8f6cefed6              # double 5.3260839999999998
	.quad	0x401a49731098d478              # double 6.5717280000000002
	.quad	0x40106f2ecf206424              # double 4.1085770000000004
	.quad	0x402369357603925c              # double 9.7054860000000005
	.quad	0x3fd6ace24bba12b6              # double 0.35430200000000001
	.quad	0x401b0635610adcd3              # double 6.7560630000000002
	.quad	0x3fdf35daad601ffb              # double 0.48766199999999998
	.quad	0x4018adea033e78e2              # double 6.1698380000000004
	.quad	0x3fcf7b6bb1290258              # double 0.24595400000000001
	.quad	0x3ff57cac8e68e3ef              # double 1.342938
	.quad	0x4018252e72da1230              # double 6.0363100000000003
	.quad	0x401008bfc2224edf              # double 4.0085439999999997
	.quad	0x40206cfede97d06c              # double 8.2128820000000004
	.quad	0x40130d948dc11e43              # double 4.7632620000000001
	.quad	0x40209087ca643cc0              # double 8.2822859999999991
	.quad	0x401e8692b3cc4ac7              # double 7.6314190000000001
	.quad	0x3ff516ce789e774f              # double 1.318068
	.quad	0x40010c94b380cb6c              # double 2.1311429999999998
	.quad	0x401b8116a8b8f14e              # double 6.8760630000000003
	.quad	0x40149846a5d6bebe              # double 5.1487069999999999
	.quad	0x40205d2c9d16fc9c              # double 8.1819810000000003
	.quad	0x40221324e9c45458              # double 9.0373909999999995
	.quad	0x401cb8123810e886              # double 7.1797570000000004
	.quad	0x4004f3519bd4067d              # double 2.618808
	.quad	0x402080201cd5f99c              # double 8.2502449999999996
	.quad	0x3fe9e8f29d40ee07              # double 0.80968600000000002
	.quad	0x3fe67c4e2f37fbf0              # double 0.70267400000000002
	.quad	0x40220552c16df3f9              # double 9.0103969999999993
	.quad	0x3fcac98e53eb399f              # double 0.20927599999999999
	.quad	0x401667a0b5ed8d37              # double 5.6011990000000003
	.quad	0x4010e03ff69014b6              # double 4.2189940000000004
	.quad	0x4012d854046412cf              # double 4.7112579999999999
	.quad	0x40031aa4766c6de7              # double 2.3880089999999998
	.quad	0x400857edc7ef177a              # double 3.0429339999999998
	.quad	0x401ceebaf102363b              # double 7.2331349999999999
	.quad	0x4010026e5471715c              # double 4.0023739999999997
	.quad	0x40121042528ae74f              # double 4.5158779999999998
	.quad	0x4022baf46aa087ca              # double 9.3651459999999993
	.quad	0x40238074ea8da7f4              # double 9.7508920000000003
	.quad	0x4020c1c92ddbdb5e              # double 8.3784880000000008
	.quad	0x401d6e47991bc558              # double 7.3576949999999996
	.quad	0x4017b2278d0cc35d              # double 5.9239790000000001
	.quad	0x400a1fcb0c026cc2              # double 3.2655240000000001
	.quad	0x402334d6a161e4f7              # double 9.6031999999999992
	.quad	0x401fa820e6299525              # double 7.9141880000000002
	.quad	0x402196fe2e6ea854              # double 8.7949079999999995
	.quad	0x3fce271fff79c843              # double 0.235569
	.quad	0x4023c743a647fdc6              # double 9.8891880000000008
	.quad	0x3ff7a008e9b38d61              # double 1.4765710000000001
	.quad	0x40116ca1cef240fb              # double 4.3560860000000003
	.quad	0x4022e9743e963dc5              # double 9.4559650000000008
	.quad	0x3ffad8bf7f06705d              # double 1.6779170000000001
	.quad	0x400dafdd22856606              # double 3.710871
	.quad	0x40201f92af9a8cdf              # double 8.0616660000000007
	.quad	0x3fe52e21101b0037              # double 0.66188100000000005
	.quad	0x401a1fb86f47b678              # double 6.530977
	.quad	0x401369b1b79d909f              # double 4.8532169999999999
	.quad	0x400dbef177a7008a              # double 3.7182339999999998
	.quad	0x40120135daad6020              # double 4.501182
	.quad	0x3ff7a83c297bfa4c              # double 1.4785729999999999
	.quad	0x4020337132724313              # double 8.1004729999999991
	.quad	0x401a28b439581062              # double 6.5397499999999997
	.quad	0x3ffca1b1960fa15e              # double 1.7894760000000001
	.quad	0x3ffea273929ed395              # double 1.9146609999999999
	.quad	0x4014179b77c02afe              # double 5.0230540000000001
	.quad	0x401730ae10492360              # double 5.7975390000000004
	.quad	0x4023dd1761459536              # double 9.9318190000000008
	.quad	0x400500e94ee392e2              # double 2.625445
	.quad	0x401ad30c67168f8e              # double 6.7061019999999996
	.quad	0x3fb968943e100608              # double 0.099252000000000007
	.quad	0x400171c4b90214ad              # double 2.1805509999999999
	.quad	0x401af7a46173b85f              # double 6.7418380000000004
	.quad	0x3fdd7dfa00e27e0f              # double 0.460814
	.quad	0x400fb27bb2fec56d              # double 3.9621499999999998
	.quad	0x4000217dae81882b              # double 2.0163530000000001
	.quad	0x4020121f8e3ac0c6              # double 8.0353969999999997
	.quad	0x40138d6dc1a47a9e              # double 4.8881139999999998
	.quad	0x40187bd6a593a2e0              # double 6.1209360000000004
	.quad	0x40113121682f9442              # double 4.2979789999999998
	.quad	0x401d0ee136e71cda              # double 7.2645309999999998
	.quad	0x402119b4bb5e0f80              # double 8.5502070000000003
	.quad	0x40154ac8e68e3ef3              # double 5.3230320000000004
	.quad	0x3ffab8130164840e              # double 1.66994
	.quad	0x4023e3c46d82ba5a              # double 9.944858
	.quad	0x4020f54b05b7cfe6              # double 8.4790880000000008
	.quad	0x4021819bf5946c33              # double 8.7531429999999997
	.quad	0x4016ddb0574b4070              # double 5.7164929999999998
	.quad	0x401e76a65cf67b1c              # double 7.615869
	.quad	0x40227cfbb949624a              # double 9.2441080000000007
	.quad	0x402274044284dfce              # double 9.2265949999999997
	.quad	0x3ffaf9e16d6dc1a4              # double 1.6860059999999999
	.quad	0x4013cccd96206855              # double 4.9500029999999997
	.quad	0x40110c85c24c404a              # double 4.2622289999999996
	.quad	0x4017830a4e379b78              # double 5.8779690000000002
	.quad	0x40037bd48cb4aec9              # double 2.4354640000000001
	.quad	0x40056bf11f926c7f              # double 2.6777060000000001
	.quad	0x4020f4e7253da72a              # double 8.4783259999999991
	.quad	0x3f92291fb3fa6df0              # double 0.017735000000000001
	.quad	0x402210183f91e647              # double 9.0314350000000001
	.quad	0x3fe1fd82773e24ff              # double 0.56219600000000003
	.quad	0x401c3a3a8e71476b              # double 7.056864
	.quad	0x40231c16df3f9618              # double 9.5548619999999999
	.quad	0x40142394317acc4f              # double 5.034745
	.quad	0x3fe8a6916440f239              # double 0.77033300000000005
	.quad	0x3fee33f20a73f749              # double 0.94384100000000004
	.quad	0x401d865e4606748e              # double 7.3812189999999998
	.quad	0x401b07c17a89331a              # double 6.757574
	.quad	0x401079a5657fb69a              # double 4.1187950000000004
	.quad	0x4012df09d8c6d613              # double 4.7178110000000002
	.quad	0x4022b71e6cd29132              # double 9.3576540000000001
	.quad	0x40070a73f748a15a              # double 2.8801040000000002
	.quad	0x40211c03dddb120a              # double 8.5547170000000001
	.quad	0x401188255b035bd5              # double 4.3829549999999999
	.quad	0x40223b6113404ea5              # double 9.1159750000000006
	.quad	0x4003e8e3ef284168              # double 2.4887160000000002
	.quad	0x3fecd6ffc115df65              # double 0.90124499999999996
	.quad	0x4019eda554b8bef9              # double 6.4820760000000002
	.quad	0x401c4118c197e564              # double 7.0635709999999996
	.quad	0x400d80cf9e3864cb              # double 3.6878959999999998
	.quad	0x400ca40c8472c0e8              # double 3.5801020000000001
	.quad	0x401ef2189bd8383b              # double 7.7364220000000001
	.quad	0x401c09d66adb402d              # double 7.0096069999999999
	.quad	0x4021471a7e308787              # double 8.6388739999999995
	.quad	0x3ff00dbbe0157eed              # double 1.0033529999999999
	.quad	0x40232fb2aae29739              # double 9.5931599999999992
	.quad	0x3ff8c0cf9e3864cb              # double 1.5470729999999999
	.quad	0x40187d44dca8e2e3              # double 6.1223330000000002
	.quad	0x40220bb7d84901d2              # double 9.0228870000000008
	.quad	0x3ffd974c4cdfaca3              # double 1.8494379999999999
	.quad	0x40226069c66d373b              # double 9.188307
	.quad	0x3fd5e48626f60e0f              # double 0.34207300000000002
	.quad	0x40060c9d9d3458cd              # double 2.7561599999999999
	.quad	0x4020365aff2a172b              # double 8.1061630000000005
	.quad	0x401e0cc20d5629d8              # double 7.5124589999999997
	.quad	0x4021c0672756861f              # double 8.8757870000000008
	.quad	0x401781b089a02752              # double 5.8766499999999997
	.quad	0x4010d513b5bf6a0e              # double 4.2080830000000002
	.quad	0x40214d4d834091c1              # double 8.6509820000000008
	.quad	0x401b09f127f5e84f              # double 6.759709
	.quad	0x401743faf42784a9              # double 5.8163869999999998
	.quad	0x401bf91b823c85c2              # double 6.9932689999999997
	.quad	0x3ff5aaf46aa087ca              # double 1.3542369999999999
	.quad	0x40202fc06e19b90f              # double 8.0932650000000006
	.quad	0x400e0084a515ce9e              # double 3.7502529999999998
	.quad	0x401ba0a6b93ccd10              # double 6.9068860000000001
	.quad	0x3fc3fc43b2dd377e              # double 0.156136
	.quad	0x4023d9cbab649d39              # double 9.9253820000000008
	.quad	0x4020089741d084e8              # double 8.0167789999999997
	.quad	0x3fd84046412cf0fa              # double 0.37892300000000001
	.quad	0x3fe035807fed2029              # double 0.50653099999999995
	.quad	0x401b60e1b4bb5e0f              # double 6.8446109999999996
	.quad	0x401101fb82c2bd7f              # double 4.2519359999999997
	.quad	0x40206c4998d045fe              # double 8.2114989999999999
	.quad	0x3ff064e592967019              # double 1.0246329999999999
	.quad	0x4006f0a4e379b77c              # double 2.867502
	.quad	0x401f483ec892ab69              # double 7.8205520000000001
	.quad	0x400e66fac6045baf              # double 3.8002829999999999
	.quad	0x40070ef672b88440              # double 2.8823059999999998
	.quad	0x40100b7d41743e96              # double 4.0112199999999998
	.quad	0x401e53fdd65a1449              # double 7.5820230000000004
	.quad	0x401266ee73e681aa              # double 4.6005190000000002
	.quad	0x400df86c226809d5              # double 3.7463000000000002
	.quad	0x4020ba58b3f63c32              # double 8.3639580000000002
	.quad	0x401843fe5c91d14e              # double 6.0663999999999998
	.quad	0x401e4dbc664d3bf3              # double 7.575914
	.quad	0x3fd6bd09e12a51e3              # double 0.35528799999999999
	.quad	0x3fff29d1f601797d              # double 1.9477100000000001
	.quad	0x3ff02a3bddfc9ff9              # double 1.010311
	.quad	0x401337d24180d3d0              # double 4.804513
	.quad	0x40081d7e45803cd1              # double 3.0144009999999999
	.quad	0x401bef544bb1af3a              # double 6.9837199999999999
	.quad	0x4014580bed740c41              # double 5.0859829999999997
	.quad	0x401a40b029281776              # double 6.5631719999999998
	.quad	0x4021d055b8993922              # double 8.9069040000000008
	.quad	0x3f971f79420b3d4b              # double 0.022581
	.quad	0x3ff3f777d0f1f57b              # double 1.2479169999999999
	.quad	0x402072acfb762d84              # double 8.2239760000000003
	.quad	0x3ff1d86013660e52              # double 1.115326
	.quad	0x401de89118c197e5              # double 7.4771159999999997
	.quad	0x3fff999dcb5781c7              # double 1.975004
	.quad	0x401e6ba7fc32ebe6              # double 7.6051330000000004
	.quad	0x4002718b0d0edc3c              # double 2.3054410000000001
	.quad	0x4018e21a719b4dcf              # double 6.2208040000000002
	.quad	0x40180ce95faa8a83              # double 6.0126090000000003
	.quad	0x4013433e35c5b4ab              # double 4.8156670000000004
	.quad	0x40213373affb04ee              # double 8.6004919999999991
	.quad	0x401ea45c358afc48              # double 7.660508
	.quad	0x4011e621fafc8b00              # double 4.4747389999999996
	.quad	0x40152b291b823c86              # double 5.2921490000000002
	.quad	0x3ff8aa8da7f3cf70              # double 1.541639
	.quad	0x3fffddc4007570c5              # double 1.9916419999999999
	.quad	0x401250b3d4ae429e              # double 4.578811
	.quad	0x3ff6a17a02fb5d03              # double 1.414423
	.quad	0x4021b79314445aa3              # double 8.8585440000000002
	.quad	0x400251233df2a9d6              # double 2.2896179999999999
	.quad	0x4008e713f077ccc0              # double 3.1128309999999999
	.quad	0x3ff976bc1eff9f88              # double 1.591488
	.quad	0x401ef2d6ece13f4b              # double 7.7371480000000003
	.quad	0x4020226ce358298d              # double 8.0672370000000004
	.quad	0x40141ea78af3e469              # double 5.0299360000000002
	.quad	0x40114f5019f3c70d              # double 4.3274540000000004
	.quad	0x3fdca326e115592e              # double 0.44745800000000002
	.quad	0x40081b280f12c27a              # double 3.0132599999999998
	.quad	0x4012f33b96af038e              # double 4.7375319999999999
	.quad	0x3ff0adc4c9c90c4e              # double 1.042424
	.quad	0x3ff854e5d5b24e9c              # double 1.5207269999999999
	.quad	0x4012bc5b8dc55001              # double 4.6839430000000002
	.quad	0x40106f7878b7a1c2              # double 4.1088579999999997
	.quad	0x4007ba37ef5a964f              # double 2.9659270000000002
	.quad	0x40224108c3f3e037              # double 9.1270199999999999
	.quad	0x40239f416bdb1a6d              # double 9.8110459999999992
	.quad	0x4022390b1feeb2d1              # double 9.1114130000000007
	.quad	0x3f99841aac53b081              # double 0.024917999999999999
	.quad	0x3fd32cfd8f0c77de              # double 0.29962100000000003
	.quad	0x4021ec5a5fc7e6b4              # double 8.961627
	.quad	0x4016c393ab430f49              # double 5.6909929999999997
	.quad	0x400463cb81733227              # double 2.5487280000000001
	.quad	0x3fd51a048e043a21              # double 0.32971299999999998
	.quad	0x4001d38f7985271c              # double 2.2283010000000001
	.quad	0x40124aeb3dd11be7              # double 4.5731630000000001
	.quad	0x40134e57d9dba909              # double 4.8265070000000003
	.quad	0x40136225fa658c4c              # double 4.8458480000000002
	.quad	0x3ff9496030c23fab              # double 1.580414
	.quad	0x401dfb2031ceaf25              # double 7.4952399999999999
	.quad	0x401a09f8c21e1d21              # double 6.5097379999999996
	.quad	0x40181d5c31593e60              # double 6.0286720000000003
	.quad	0x3febe772d5e071c5              # double 0.87200299999999997
	.quad	0x400c349a5657fb6a              # double 3.5256850000000002
	.quad	0x400186b26bf8769f              # double 2.1907700000000001
	.quad	0x40216d8f4f93bc0a              # double 8.713984
	.quad	0x3ff34b4aec8d5c74              # double 1.2058819999999999
	.quad	0x401655f5275ee99a              # double 5.5839429999999997
	.quad	0x40110a860dcb9a9e              # double 4.2602770000000003
	.quad	0x4016fda3c21187e8              # double 5.7476950000000002
	.quad	0x40211094c447c30d              # double 8.5323849999999997
	.quad	0x4007123e5b8561d4              # double 2.8839079999999999
	.quad	0x40209e358298cc14              # double 8.3090019999999995
	.quad	0x400adb30728e92d5              # double 3.3570259999999998
	.quad	0x4010c93532e7b3d9              # double 4.1964920000000001
	.quad	0x401705fc7e6b3fea              # double 5.755846
	.quad	0x3ff1329802c0a4a0              # double 1.0748519999999999
	.quad	0x4011f1ede1198aec              # double 4.4862590000000004
	.quad	0x400f8c8b43958106              # double 3.9436249999999999
	.quad	0x401aa453d20f2bed              # double 6.6604760000000001
	.quad	0x4023dc7fbacb4289              # double 9.9306619999999998
	.quad	0x4023eed8f4f93bc1              # double 9.9664990000000006
	.quad	0x400fe5cee17a02fb              # double 3.9872109999999998
	.quad	0x3ff942e44b6e935c              # double 1.5788310000000001
	.quad	0x40232a314013ec46              # double 9.5824069999999999
	.quad	0x401de0be51090710              # double 7.4694760000000002
	.quad	0x4013ad30270f3882              # double 4.9191289999999999
	.quad	0x3ff994c87980f55e              # double 1.598824
	.quad	0x40162a2403148777              # double 5.5411530000000004
	.quad	0x40231615a8deb0fb              # double 9.5431340000000002
	.quad	0x401ee9e8815e3971              # double 7.7284259999999997
	.quad	0x3ff7ee78183f91e6              # double 1.4957199999999999
	.quad	0x4021e872b020c49c              # double 8.9540000000000006
	.quad	0x400341869835158c              # double 2.4069950000000002
	.quad	0x3fdcf8fcd67fd3f6              # double 0.45269700000000002
	.quad	0x3fef1a7e30878748              # double 0.97198399999999995
	.quad	0x4011c9b413986339              # double 4.4469760000000003
	.quad	0x40237f7985271bce              # double 9.7489740000000005
	.quad	0x4011a51761459536              # double 4.4112220000000004
	.quad	0x402162f33ca31e7e              # double 8.6932620000000007
	.quad	0x401a3112fd32c626              # double 6.5479240000000001
	.quad	0x401fbec743201041              # double 7.9363070000000002
	.quad	0x402230c0053e2d62              # double 9.0952149999999996
	.quad	0x4020317a89331a09              # double 8.0966380000000004
	.quad	0x40239951a437824d              # double 9.7994509999999994
	.quad	0x400cb14b167ec786              # double 3.5865689999999999
	.quad	0x3fed123810e88590              # double 0.908474
	.quad	0x3fed14b167ec7864              # double 0.90877600000000002
	.quad	0x400974bdfd2630ec              # double 3.1820029999999999
	.quad	0x401b63f4666ec9e2              # double 6.8476119999999998
	.quad	0x4004f635610adcd3              # double 2.6202190000000001
	.quad	0x3fd75842b734b513              # double 0.36476199999999998
	.quad	0x40200536501e2585              # double 8.0101800000000001
	.quad	0x40047f8e3ac0c62e              # double 2.5622829999999999
	.quad	0x3fc7b84db9c7368b              # double 0.185312
	.quad	0x3ffa78bef8ceb357              # double 1.654479
	.quad	0x400a5e2de8709742              # double 3.2959860000000001
	.quad	0x401a7ff7164c729f              # double 6.6249659999999997
	.quad	0x3fbefb6dca07f66f              # double 0.12102400000000001
	.quad	0x3fff292f6e82949a              # double 1.9475549999999999
	.quad	0x4013ad1782d38477              # double 4.919035
	.quad	0x401e969d30270f39              # double 7.6470840000000004
	.quad	0x40226dc358afc47e              # double 9.2143809999999995
	.quad	0x4011fefe93187619              # double 4.4990180000000004
	.quad	0x401cf9d40ee06d94              # double 7.2439730000000004
	.quad	0x3fef91ada76d97b3              # double 0.98653299999999999
	.quad	0x3fe378a2a90cd424              # double 0.60847600000000002
	.quad	0x3ff7c36eb4e98138              # double 1.4852129999999999
	.quad	0x402331a88ace24bc              # double 9.5969890000000006
	.quad	0x40209155714b9cb7              # double 8.2838550000000009
	.quad	0x40213b910c2c5e2d              # double 8.6163410000000002
	.quad	0x3ff58d1c7de5082d              # double 1.346951
	.quad	0x40155a4ebdd334c6              # double 5.3381910000000001
	.quad	0x40235e8b3b320536              # double 9.6846560000000004
	.quad	0x4021e19d0203e63f              # double 8.9406510000000008
	.quad	0x40041118c197e564              # double 2.5083479999999998
	.quad	0x401177b352a84381              # double 4.3668950000000004
	.quad	0x4012cca7d6733ebc              # double 4.699859
	.quad	0x40138bcf91a32b13              # double 4.8865340000000002
	.quad	0x401097a0b5ed8d37              # double 4.1480740000000003
	.quad	0x3fff1c37a3db3bfb              # double 1.9443889999999999
	.quad	0x3ff9291ea78af3e4              # double 1.5725389999999999
	.quad	0x4020fec95bff0457              # double 8.4976299999999991
	.quad	0x4013b933e35c5b4b              # double 4.9308620000000003
	.quad	0x4011d70435efa616              # double 4.4599770000000003
	.quad	0x401b8dea033e78e2              # double 6.8885880000000004
	.quad	0x401e6f2ae07e5a79              # double 7.608562
	.quad	0x401657542a23bff9              # double 5.5852820000000003
	.quad	0x401d920d130df9be              # double 7.3926280000000002
	.quad	0x4014798958d9b5e9              # double 5.1186879999999997
	.quad	0x4000398958d9b5e9              # double 2.0280939999999998
	.quad	0x400e1c3504c48adf              # double 3.763773
	.quad	0x4013d6ac647778dd              # double 4.9596419999999997
	.quad	0x40237ba109d0635a              # double 9.7414629999999995
	.quad	0x4012d720c8cd63cc              # double 4.7100860000000004
	.quad	0x400bf27a20578e5c              # double 3.4933969999999999
	.quad	0x401c4eebb341e14c              # double 7.0770710000000001
	.quad	0x4011e2ee84ad794a              # double 4.4716129999999996
	.quad	0x3ff73fef39085f4a              # double 1.453109
	.quad	0x4005d50e34762952              # double 2.729031
	.quad	0x4012721f6cacd185              # double 4.6114480000000002
	.quad	0x4019c0d887ebf22c              # double 6.438326
	.quad	0x400d13f52fc2656b              # double 3.6347450000000001
	.quad	0x40073935fc3b4f61              # double 2.9029349999999998
	.quad	0x400b1b93037d6302              # double 3.3884639999999999
	.quad	0x401005171e29b6b3              # double 4.0049710000000003
	.quad	0x4019d91dde37585c              # double 6.4620280000000001
	.quad	0x401bef02c4d65e46              # double 6.983409
	.quad	0x40102e121ee67514              # double 4.0449909999999996
	.quad	0x40094bc0e38a7e74              # double 3.1619890000000002
	.quad	0x4014aeb0b7c3504c              # double 5.1705959999999997
	.quad	0x3fedbeec39799e52              # double 0.92955600000000005
	.quad	0x4013c990f301eabc              # double 4.9468420000000002
	.quad	0x401d4b31c219eb64              # double 7.3234320000000004
	.quad	0x4010a62cfd8f0c78              # double 4.1622810000000001
	.quad	0x401faf83382e44b7              # double 7.921399
	.quad	0x3ffe298bb4d48883              # double 1.885143
	.quad	0x400c0a35935fc3b5              # double 3.504985
	.quad	0x401e2cb1897a67a5              # double 7.5436459999999998
	.quad	0x40005466f5019f3c              # double 2.0412119999999998
	.quad	0x40179c25072085b2              # double 5.9024850000000004
	.quad	0x40187e9d0e991ff7              # double 6.1236459999999999
	.quad	0x40133b34a44c7b03              # double 4.8078180000000001
	.quad	0x4011d3bff8a8f3aa              # double 4.4567870000000003
	.quad	0x4020a5eb52c9d170              # double 8.3240610000000004
	.quad	0x40141708ede54b49              # double 5.0224950000000002
	.quad	0x4020d7f3ade225fa              # double 8.4217809999999993
	.quad	0x3ff3b45f17bd8be7              # double 1.231536
	.quad	0x401b632d6ece13f5              # double 6.8468530000000003
	.quad	0x4023e22e1ac57e24              # double 9.941758
	.quad	0x400364c61d8622c4              # double 2.4242059999999999
	.quad	0x3ffb12f5dbb9cf9a              # double 1.692129
	.quad	0x4022b7a41e57d9dc              # double 9.3586740000000006
	.quad	0x401d236b4c7f3494              # double 7.2845890000000004
	.quad	0x3ff67ea91d9b1b7a              # double 1.405923
	.quad	0x401dfec3547e0696              # double 7.4987919999999999
	.quad	0x3ff39c65c70435f0              # double 1.2256830000000001
	.quad	0x40229e75ddd2ae8e              # double 9.3094929999999998
	.quad	0x4011ee6f71a7e308              # double 4.4828469999999996
	.quad	0x401a636f3b213e3e              # double 6.5971039999999999
	.quad	0x4021759f6ec5b079              # double 8.7297320000000003
	.quad	0x4019e1e29b6b2af1              # double 6.4705909999999998
	.quad	0x401ccec918e325d5              # double 7.2019390000000003
	.quad	0x401a567e846a5d6c              # double 6.5844670000000001
	.quad	0x400b7668c2613900              # double 3.432817
	.quad	0x4012af926c7eae5c              # double 4.6714570000000002
	.quad	0x3fc4a8da7f3cf701              # double 0.16140299999999999
	.quad	0x40149ae9ee45c359              # double 5.1512830000000003
	.quad	0x40041316e3715400              # double 2.5093209999999999
	.quad	0x3ffc733b96af038e              # double 1.778133
	.quad	0x3fb0754f3775b813              # double 0.06429
	.quad	0x40199033e78e1933              # double 6.3908230000000001
	.quad	0x4017af648c7192ea              # double 5.9212819999999997
	.quad	0x4023e347a5b0ff11              # double 9.9439060000000001
	.quad	0x4020aa2ad3e920c0              # double 8.3323579999999993
	.quad	0x4010970ac3a860dd              # double 4.1475020000000002
	.quad	0x401886f3b213e3e3              # double 6.1317890000000004
	.quad	0x4002245803cd141a              # double 2.2677459999999998
	.quad	0x400c3fc2224edf61              # double 3.5311319999999999
	.quad	0x40091b83cf2cf95d              # double 3.1384349999999999
	.quad	0x3fea074ea8da7f3d              # double 0.813392
	.quad	0x4015f82a5614df8b              # double 5.4923489999999999
	.quad	0x3ff1affe2a3cea6c              # double 1.105467
	.quad	0x4003948a159817b9              # double 2.4475289999999998
	.quad	0x4009699bf5946c33              # double 3.1765669999999999
	.quad	0x4013bf1737542a24              # double 4.9366120000000002
	.quad	0x401169bf9c62a1b6              # double 4.3532700000000002
	.quad	0x4020dcf850df15a5              # double 8.4315820000000006
	.quad	0x3fe12862f5989df1              # double 0.53617999999999999
	.quad	0x3ff81b1d92b7fe09              # double 1.5066200000000001
	.quad	0x3fa6529bae46cfc8              # double 0.043598999999999999
	.quad	0x3ff7dd8e86402081              # double 1.4915909999999999
	.quad	0x3ff74fadf2ecf206              # double 1.4569529999999999
	.quad	0x3fd6d6b228dc981c              # double 0.356854
	.quad	0x3fa4dc443914f484              # double 0.040743000000000001
	.quad	0x4022fdee568a5050              # double 9.4959589999999992
	.quad	0x40219e045baf533f              # double 8.8086269999999995
	.quad	0x400c71bef49cf56f              # double 3.5555400000000001
	.quad	0x40167afee6fb4c3c              # double 5.6201129999999999
	.quad	0x401eb43ed959a30a              # double 7.6760210000000004
	.quad	0x3fed8e7bc3c5bd0e              # double 0.92364299999999999
	.quad	0x40216a5f202107b8              # double 8.7077570000000009
	.quad	0x4015e34f82f51266              # double 5.4719829999999998
	.quad	0x3ff13e3b03e20cd0              # double 1.077693
	.quad	0x4019598b2e9ccb7d              # double 6.3374449999999998
	.quad	0x4013d234a87e38eb              # double 4.955279
	.quad	0x400d853c9abb01c9              # double 3.6900569999999999
	.quad	0x4023f90cb295e9e2              # double 9.9864250000000006
	.quad	0x3ff7a61f18c9fb61              # double 1.478057
	.quad	0x4023f6b15f88fc93              # double 9.9818219999999993
	.quad	0x400eb3804534bd77              # double 3.837647
	.quad	0x40091efd86a8fc0d              # double 3.1401319999999999
	.quad	0x3fce988094e5d5b2              # double 0.23902899999999999
	.quad	0x4009d728a6117721              # double 3.2300580000000001
	.quad	0x3fd1cb1465e89225              # double 0.27801999999999999
	.quad	0x4019257d1782d384              # double 6.2866099999999996
	.quad	0x401498fabda0dfdf              # double 5.149394
	.quad	0x400a058793dd97f6              # double 3.2526999999999999
	.quad	0x4021941df3300de5              # double 8.7892910000000004
	.quad	0x40114e0e736049ed              # double 4.3262270000000003
	.quad	0x4019af9fcb0c026d              # double 6.4215080000000002
	.quad	0x40139f0f16f4384c              # double 4.9053310000000003
	.quad	0x401c61fc08fa7a85              # double 7.095688
	.quad	0x4021b60fe47991bc              # double 8.8555899999999994
	.quad	0x3ff8396073de1e2e              # double 1.514008
	.quad	0x4020f641919ac797              # double 8.480969
	.quad	0x400baf965b20b806              # double 3.4607359999999998
	.quad	0x4017eba5a038194c              # double 5.980124
	.quad	0x40153f498c3b0c46              # double 5.3118040000000004
	.quad	0x3ff2ee70c1333b97              # double 1.1832130000000001
	.quad	0x3fc973f316e37154              # double 0.198851
	.quad	0x400d8f3a14cec41e              # double 3.6949350000000001
	.quad	0x4023a566490a350d              # double 9.8230459999999997
	.quad	0x401afa1d755bccaf              # double 6.7442529999999996
	.quad	0x40157fc829cfdd23              # double 5.3747870000000004
	.quad	0x3fe986f049a9973e              # double 0.79772200000000004
	.quad	0x400829cdc443914f              # double 3.0204119999999999
	.quad	0x3fe95a37ef5a964f              # double 0.79226300000000005
	.quad	0x3fb693d102bc72e2              # double 0.088192999999999993
	.quad	0x4015d780fdc1615f              # double 5.4604530000000002
	.quad	0x4023363eaf6837f8              # double 9.6059470000000004
	.quad	0x3fc080389f83be66              # double 0.128913
	.quad	0x401e662888b545c8              # double 7.5997640000000004
	.quad	0x401087dbf487fcb9              # double 4.1326749999999999
	.quad	0x4020b36b6e0d23d5              # double 8.3504290000000001
	.quad	0x401c974a3400b88d              # double 7.1477440000000003
	.quad	0x4013da4a48f96e16              # double 4.9631740000000004
	.quad	0x4019856323bbc6eb              # double 6.380261
	.quad	0x401df0e065300581              # double 7.4852309999999997
	.quad	0x4001f2e1ef73c0c2              # double 2.243595
	.quad	0x400296dc1a47a9e3              # double 2.3236620000000001
	.quad	0x400b4aceaaf35e31              # double 3.411527
	.quad	0x400ac7f4dbdf8f47              # double 3.3476349999999999
	.quad	0x40036323bbc6eb0b              # double 2.4234079999999998
	.quad	0x402195c3dee78184              # double 8.79251
	.quad	0x3ff3b458cd20afa3              # double 1.23153
	.quad	0x401c1a4fca42aed1              # double 7.0256949999999998
	.quad	0x3ffd56bfca85cab0              # double 1.8336790000000001
	.quad	0x4020b2fd976ff3ae              # double 8.3495910000000002
	.quad	0x4014601322f27350              # double 5.0938230000000004
	.quad	0x40219b31e3a7daa5              # double 8.803115
	.quad	0x3fb8d1e96c3fc43b              # double 0.096952999999999998
	.quad	0x4019e9813879c411              # double 6.4780319999999998
	.quad	0x3fed311e85fd04a3              # double 0.912246
	.quad	0x40151b55ef1fddec              # double 5.2766950000000001
	.quad	0x4022904e3ffef391              # double 9.2818470000000008
	.quad	0x4017cbe40420f6f1              # double 5.9491120000000004
	.quad	0x401b4682f944241c              # double 6.8188589999999998
	.quad	0x4021f126c7eae5bd              # double 8.9709990000000008
	.quad	0x401b7d0c3d25247d              # double 6.8721170000000003
	.quad	0x3fea3e5d9e40c847              # double 0.82011299999999998
	.quad	0x4009105425f20210              # double 3.1329729999999998
	.quad	0x400c803148776816              # double 3.5625939999999998
	.quad	0x4021e7db2b346131              # double 8.9528440000000007
	.quad	0x4002e7607c4199fe              # double 2.3629769999999999
	.quad	0x40150b3bfb58d152              # double 5.2609709999999996
	.quad	0x4016ce7ee9142b30              # double 5.7016559999999998
	.quad	0x40066ea39c51dabe              # double 2.8040229999999999
	.quad	0x40025992428d434a              # double 2.293736
	.quad	0x401be0535c9e6688              # double 6.969068
	.quad	0x400449acbc8c0ce9              # double 2.535974
	.quad	0x3ffd1db22d0e5604              # double 1.81975
	.quad	0x402373f6e3f78bbd              # double 9.7264929999999996
	.quad	0x401b8d940789613d              # double 6.8882599999999998
	.quad	0x3fbe81344806290f              # double 0.119159
	.quad	0x401d2422036006d1              # double 7.2852860000000002
	.quad	0x4009a0157eed45e9              # double 3.203166
	.quad	0x40039f70de8f6cf0              # double 2.452852
	.quad	0x40224519bd4067cf              # double 9.1349619999999998
	.quad	0x4004a56798958d9b              # double 2.5807639999999998
	.quad	0x401350635a426bb5              # double 4.8285039999999997
	.quad	0x400d08eb463497b7              # double 3.6293549999999999
	.quad	0x4021bbde1e2de871              # double 8.8669290000000007
	.quad	0x400080242d05f288              # double 2.0625689999999999
	.quad	0x401aa2e90364388f              # double 6.6590920000000002
	.quad	0x3fe08cc35ce18266              # double 0.51718299999999995
	.quad	0x40022947064ece9a              # double 2.2701549999999999
	.quad	0x40217e79463cfb33              # double 8.7470189999999999
	.quad	0x400a1653c9abb01d              # double 3.2609020000000002
	.quad	0x4016aa99b6f5caf3              # double 5.6666020000000001
	.quad	0x4012983771865519              # double 4.6486489999999998
	.quad	0x40072e1e71044f1a              # double 2.897519
	.quad	0x3ff41991361dc93f              # double 1.2562420000000001
	.quad	0x40120b7f1737542a              # double 4.5112269999999999
	.quad	0x4005b8537e2c55c9              # double 2.7150029999999998
	.quad	0x4022cf7574f722e2              # double 9.4051930000000006
	.quad	0x4012e35c9e6687f4              # double 4.7220329999999997
	.quad	0x401f148e4755ffe7              # double 7.7700740000000001
	.quad	0x40197e5c4eb56fb9              # double 6.373399
	.quad	0x401d0807bbb62414              # double 7.2578420000000001
	.quad	0x400f442bf9830e3d              # double 3.9082870000000001
	.quad	0x4016b37154003255              # double 5.6752370000000001
	.quad	0x401d3d666a98244f              # double 7.3099610000000004
	.quad	0x402240984e3ffef4              # double 9.1261620000000007
	.quad	0x40142674d1633483              # double 5.0375550000000002
	.quad	0x3ff7134373f316e3              # double 1.4422029999999999
	.quad	0x4014a54f7a919696              # double 5.1614360000000001
	.quad	0x4014ab6c3760bf5d              # double 5.1674049999999996
	.quad	0x401122b66b6177ea              # double 4.2838989999999999
	.quad	0x40202c04a72ead92              # double 8.0859729999999992
	.quad	0x4020dcf6dfc5cdd5              # double 8.4315709999999999
	.quad	0x4014473471f79421              # double 5.0695360000000003
	.quad	0x3ffad9029ae4f334              # double 1.6779809999999999
	.quad	0x401e1a426bb55ac0              # double 7.5256439999999998
	.quad	0x4003fde5082cf52c              # double 2.4989720000000002
	.quad	0x40233d0ce4ead0c4              # double 9.6192390000000003
	.quad	0x4001d0142f61ed5b              # double 2.2266010000000001
	.quad	0x401327c99ae924f2              # double 4.7888549999999999
	.quad	0x4014389eba6aca79              # double 5.0552929999999998
	.quad	0x4010e6e8f29d40ee              # double 4.225498
	.quad	0x4008530270f38822              # double 3.0405319999999998
	.quad	0x402059513f8db489              # double 8.1744479999999999
	.quad	0x4004422706d50657              # double 2.5323009999999999
	.quad	0x40050bdcad14a0a1              # double 2.630792
	.quad	0x401aa85dfa871a3b              # double 6.6644209999999999
	.quad	0x4021fd4a7f8012e0              # double 8.9947090000000003
	.quad	0x400c638759253544              # double 3.5485980000000001
	.quad	0x40102e47991bc558              # double 4.0451949999999997
	.quad	0x3fec2c1f42bb6673              # double 0.880386
	.quad	0x4023a44c165907d9              # double 9.8208929999999998
	.quad	0x3fd140e1719f7f8d              # double 0.26958500000000002
	.quad	0x40232ea0dbad3a60              # double 9.5910709999999995
	.quad	0x40214fcb2d905c03              # double 8.6558469999999996
	.quad	0x4023ed1bf7ad4b27              # double 9.9631039999999995
	.quad	0x3ffb0d1526d8b1dd              # double 1.6906939999999999
	.quad	0x4020be3e8dda48b6              # double 8.3715709999999994
	.quad	0x4019322c45026890              # double 6.298997
	.quad	0x4000fd73c9257860              # double 2.1237560000000002
	.quad	0x40235bcd573647bb              # double 9.6793010000000005
	.quad	0x3ff6bb6aa4b9884c              # double 1.4207559999999999
	.quad	0x4013c33df2a9d628              # double 4.9406660000000002
	.quad	0x3ff2c0d801b43526              # double 1.1720809999999999
	.quad	0x401c565d3996fa83              # double 7.0843400000000001
	.quad	0x40214dcdf6987831              # double 8.6519619999999993
	.quad	0x40100b2f23033a47              # double 4.0109219999999999
	.quad	0x40222db37c99ae92              # double 9.0892599999999995
	.quad	0x401332e83a109d06              # double 4.7997139999999998
	.quad	0x40223082491afc05              # double 9.0947440000000004
	.quad	0x4001b564b662fdfc              # double 2.213571
	.quad	0x3ffab503b81b64e0              # double 1.6691929999999999
	.quad	0x40147467be553ac5              # double 5.113677
	.quad	0x3ff3a7a0f9096bba              # double 1.2284250000000001
	.quad	0x4015292b7fe08af0              # double 5.2902050000000003
	.quad	0x400cf102bc72e276              # double 3.6176810000000001
	.quad	0x3fbe02b841248d7e              # double 0.117229
	.quad	0x402112d666a98245              # double 8.5367920000000002
	.quad	0x4022d6e47dc37a3e              # double 9.4197120000000005
	.quad	0x3fd191600f34506a              # double 0.27449800000000002
	.quad	0x401439563a9f383f              # double 5.055993
	.quad	0x4019fe24febd09e1              # double 6.4981879999999999
	.quad	0x3fff56dd26b723ee              # double 1.958707
	.quad	0x400a6807357e670e              # double 3.3007949999999999
	.quad	0x40187e90ff972474              # double 6.1235999999999997
	.quad	0x4020b2f5771001d6              # double 8.3495290000000004
	.quad	0x3ffea950fc71d606              # double 1.916337
	.quad	0x401893675ddd2ae9              # double 6.1439490000000001
	.quad	0x3fd09ba5e353f7cf              # double 0.25950000000000001
	.quad	0x401ba64e48626f61              # double 6.9124080000000001
	.quad	0x40133ac710cb295f              # double 4.8074000000000003
	.quad	0x3fea85e1c15097c8              # double 0.828843
	.quad	0x401c1bf8769ec2ce              # double 7.0273149999999998
	.quad	0x40207a747d805e5f              # double 8.2391699999999997
	.quad	0x4017aca2120e1f7d              # double 5.9185869999999996
	.quad	0x4021976a50d6b229              # double 8.7957330000000002
	.quad	0x40130f2becedd484              # double 4.7648159999999997
	.quad	0x40118304039abf34              # double 4.3779450000000004
	.quad	0x40188d7625204af9              # double 6.1381459999999999
	.quad	0x3fd3c0f88333fc87              # double 0.30865300000000001
	.quad	0x40068a7ce0fc2eba              # double 2.8176209999999999
	.quad	0x401d84003254e6e2              # double 7.3789069999999999
	.quad	0x401675ae5ffa3b9b              # double 5.6149230000000001
	.quad	0x4023f2786c22680a              # double 9.9735750000000003
	.quad	0x402132474538ef35              # double 8.5982000000000003
	.quad	0x401cf77e5eaab042              # double 7.2416929999999997
	.quad	0x3fed5e225fa658c5              # double 0.91774100000000003
	.quad	0x40135db0dd82fd76              # double 4.8414950000000001
	.quad	0x400c9aaef2c73259              # double 3.575529
	.quad	0x401bfde15ca6ca04              # double 6.9979300000000002
	.quad	0x3febf355cd91eeaa              # double 0.87345399999999995
	.quad	0x4008d3b18dac258d              # double 3.1033659999999998
	.quad	0x3fe2aff6d330941d              # double 0.58398000000000005
	.quad	0x4023dc3201040bfe              # double 9.9300689999999996
	.quad	0x40087fe3b03e20cd              # double 3.062446
	.quad	0x3ff86529bae46cfd              # double 1.5246980000000001
	.quad	0x401cda658c4bd33d              # double 7.2132779999999999
	.quad	0x3fe764b018611fd6              # double 0.73104100000000005
	.quad	0x40036b3edd8b60f2              # double 2.4273660000000001
	.quad	0x4010dca686e7e62e              # double 4.2154790000000002
	.quad	0x4001a9d94d0dcfcc              # double 2.2079339999999998
	.quad	0x401282b51bd61f5c              # double 4.6276440000000001
	.quad	0x40157d75e2046c76              # double 5.3725199999999997
	.quad	0x4022fe3e6c4c5975              # double 9.4965700000000001
	.quad	0x4011e0ee8d10f51b              # double 4.4696600000000002
	.quad	0x4010dbcf4e874c90              # double 4.214658
	.quad	0x401b691afc04c8bd              # double 6.8526420000000003
	.quad	0x3ffb4d92fb19e732              # double 1.706439
	.quad	0x400f4fd438d1d8a5              # double 3.9139789999999999
	.quad	0x3fec5885d31337eb              # double 0.88580599999999998
	.quad	0x40153ab6d00b45ae              # double 5.3073379999999997
	.quad	0x40009e39713ad5bf              # double 2.077258
	.quad	0x4021fd6798958d9b              # double 8.9949309999999993
	.quad	0x40216acb4289118c              # double 8.7085819999999998
	.quad	0x401ac7d63022dd7b              # double 6.6951530000000004
	.quad	0x401e38d25edd0529              # double 7.5554899999999998
	.quad	0x4000e6e8f29d40ee              # double 2.112749
	.quad	0x401b1c56d5cfaace              # double 6.7776750000000003
	.quad	0x4005fa29c779a6b5              # double 2.74715
	.quad	0x4007c5efe9318762              # double 2.9716490000000002
	.quad	0x40016737110e453d              # double 2.1753979999999999
	.quad	0x3ff40d173fb7a5f4              # double 1.253196
	.quad	0x3fc1fea8112ba16e              # double 0.14058399999999999
	.quad	0x40124025bfad2999              # double 4.5626439999999997
	.quad	0x3ff3bb46fdeb52ca              # double 1.233222
	.quad	0x401dc5696e58a32f              # double 7.4427849999999998
	.quad	0x40164f559b3d07c8              # double 5.5774749999999997
	.quad	0x402168db6a1e81cb              # double 8.7047989999999995
	.quad	0x3fffa177ea1c68ec              # double 1.9769209999999999
	.quad	0x400da0fb224aada3              # double 3.7036039999999999
	.quad	0x40153abbcb1cc964              # double 5.3073569999999997
	.quad	0x40039dd00f776c48              # double 2.4520569999999999
	.quad	0x40136f10667f90da              # double 4.8584610000000001
	.quad	0x400fada9003eea21              # double 3.9597950000000002
	.quad	0x401737e175d13d75              # double 5.8045710000000001
	.quad	0x401ad1a0cf1800a8              # double 6.7047150000000002
	.quad	0x3ff5e030c23fab11              # double 1.3672340000000001
	.quad	0x401201522a6f3f53              # double 4.50129
	.quad	0x401d97485e3da2f9              # double 7.3977370000000002
	.quad	0x401f99146e4c0df6              # double 7.8994920000000004
	.quad	0x3fefe683c297bfa5              # double 0.99688900000000002
	.quad	0x40063fceb78897ea              # double 2.7811560000000002
	.quad	0x401d5f748a159818              # double 7.3432180000000002
	.quad	0x402396008e9b38d6              # double 9.7929729999999999
	.quad	0x401529b8023a6ce3              # double 5.2907409999999997
	.quad	0x400436ce789e774f              # double 2.526761
	.quad	0x4010431b584b1ab1              # double 4.0655340000000004
	.quad	0x4020f1e646f15619              # double 8.4724599999999999
	.quad	0x4012df4f0d844d01              # double 4.7180749999999998
	.quad	0x4008952c9d16fc9c              # double 3.0728390000000001
	.quad	0x401e5ab53d640e9d              # double 7.5885819999999997
	.quad	0x3fef4ec84f8f8a4c              # double 0.97836699999999998
	.quad	0x401ab29802c0a4a0              # double 6.6744079999999997
	.quad	0x400363d35eb7457c              # double 2.423743
	.quad	0x4023f95b35b0bbf5              # double 9.9870239999999999
	.quad	0x3fe2c8d9f90539fc              # double 0.58701800000000004
	.quad	0x3ff750880d801b43              # double 1.4571609999999999
	.quad	0x400f63358f2e05cd              # double 3.9234420000000001
	.quad	0x40140f9c62a1b5c8              # double 5.0152450000000002
	.quad	0x402346deb95e5aff              # double 9.6384179999999997
	.quad	0x40233d2cbea4ebdd              # double 9.6194819999999996
	.quad	0x40056c0df58c08b7              # double 2.6777609999999998
	.quad	0x40119a43bb40b34e              # double 4.4006489999999996
	.quad	0x3ff23d5dc4007571              # double 1.1399820000000001
	.quad	0x4020aa7e30878748              # double 8.3329939999999993
	.quad	0x401d99e6687f455a              # double 7.4002929999999996
	.quad	0x4016f9784ec636b1              # double 5.7436230000000004
	.quad	0x401087b95a294142              # double 4.1325430000000001
	.quad	0x40019d2e94680171              # double 2.201749
	.quad	0x4015eee2003ab863              # double 5.4832840000000003
	.quad	0x3ff70d32830a0b1c              # double 1.4407220000000001
	.quad	0x401c0fdfc19c1722              # double 7.0155019999999997
	.quad	0x3ffb96c93a711516              # double 1.724313
	.quad	0x401735e5f30e7ff6              # double 5.8026350000000004
	.quad	0x401645614df8b157              # double 5.5677539999999999
	.quad	0x401dbf2a9d627bf6              # double 7.4366859999999999
	.quad	0x3fd54806290eed03              # double 0.33252100000000001
	.quad	0x401e6d2c386d2ed8              # double 7.6066140000000004
	.quad	0x401449abf3387161              # double 5.0719450000000004
	.quad	0x401fc7f498c3b0c4              # double 7.9452689999999997
	.quad	0x40092cf28c79f666              # double 3.1469469999999999
	.quad	0x4020a9b23dd54da5              # double 8.3314380000000003
	.quad	0x400b029845dc8323              # double 3.3762669999999999
	.quad	0x401dcfd933e35c5b              # double 7.4529769999999997
	.quad	0x402259eafee6fb4c              # double 9.1756209999999995
	.quad	0x4012c4228997c3d7              # double 4.6915380000000004
	.quad	0x4023bc67381d7dbf              # double 9.8679749999999994
	.quad	0x4009c398a65492ff              # double 3.2205059999999999
	.quad	0x40108dbc23315d70              # double 4.1384129999999999
	.quad	0x3fa40096feb4a665              # double 0.039066999999999998
	.quad	0x40061df19d66adb4              # double 2.764621
	.quad	0x40096d10f51ac9b0              # double 3.1782550000000001
	.quad	0x4012e6ed6777079e              # double 4.7255149999999997
	.quad	0x4003fdcbddb9841b              # double 2.4989240000000001
	.quad	0x4015e80fdc1615ec              # double 5.476623
	.quad	0x401b8ae9ee45c359              # double 6.8856580000000003
	.quad	0x4012dc35ce182667              # double 4.7150489999999996
	.quad	0x3fc9360d0247021d              # double 0.196962
	.quad	0x3ffe5f1f14983d79              # double 1.898223
	.quad	0x401eaf63c31df762              # double 7.6712790000000002
	.quad	0x4007dda836eb4e98              # double 2.983231
	.quad	0x401bfdb402d16b98              # double 6.997757
	.quad	0x4014176c4827b6fe              # double 5.0228739999999998
	.quad	0x400cdc49fd7a13c2              # double 3.6075629999999999
	.quad	0x4009af2cf95d4e90              # double 3.2105350000000001
	.quad	0x40239ec226809d49              # double 9.8100749999999994
	.quad	0x4006612599ed7c70              # double 2.7974350000000001
	.quad	0x4019bb2e59af9ebf              # double 6.4327940000000003
	.quad	0x400603f67f4dbdf9              # double 2.751935
	.quad	0x40029bb1f255f352              # double 2.3260230000000002
	.quad	0x401cbed959a30985              # double 7.1863760000000001
	.quad	0x4022debc408d8ec9              # double 9.4350299999999993
	.quad	0x4016f5bdd76683c3              # double 5.7399820000000004
	.quad	0x40037c11e42e1262              # double 2.435581
	.quad	0x4019f7a7008a697b              # double 6.4918480000000001
	.quad	0x3ffe043d46b26bf8              # double 1.8760349999999999
	.quad	0x401199185cee17a0              # double 4.3995069999999998
	.quad	0x4018fbf7ad4b2746              # double 6.2460620000000002
	.quad	0x40191255f3519bd4              # double 6.267906
	.quad	0x40232807fed20297              # double 9.5781860000000005
	.quad	0x3ffd64e054690de1              # double 1.8371280000000001
	.quad	0x4005d4eebf65dbfd              # double 2.728971
	.quad	0x40003afd976ff3ae              # double 2.0288040000000001
	.quad	0x401d97b784662bae              # double 7.398161
	.quad	0x3fe729d627bf61aa              # double 0.72385699999999997
	.quad	0x401d99029ae4f334              # double 7.3994239999999998
	.quad	0x4012d68ec52a411c              # double 4.7095289999999999
	.quad	0x40150d527e521577              # double 5.2630100000000004
	.quad	0x401e2af1455219a8              # double 7.5419359999999997
	.quad	0x401c11d9f4d37c13              # double 7.0174329999999996
	.quad	0x4016fb24a6a875d5              # double 5.7452569999999996
	.quad	0x401ded67ba237cdd              # double 7.4818410000000002
	.quad	0x402280079a2834d2              # double 9.2500579999999992
	.quad	0x401a8c5974e65bea              # double 6.63706
	.quad	0x401b75b5fa22706d              # double 6.8649519999999997
	.quad	0x4010a7b4a2339c0f              # double 4.1637750000000002
	.quad	0x400fecf7caa7589f              # double 3.990707
	.quad	0x3ff99bb9cf9a06a7              # double 1.600519
	.quad	0x402116caab8a5ce6              # double 8.5445150000000005
	.quad	0x400398359bc33f85              # double 2.4493209999999999
	.quad	0x40120a58f7121ab5              # double 4.5101050000000003
	.quad	0x400426cf41f212d7              # double 2.5189499999999998
	.quad	0x40188883fd502257              # double 6.1333159999999998
	.quad	0x3ff84e94ee392e1f              # double 1.519185
	.quad	0x401d0784ec636b09              # double 7.2573429999999997
	.quad	0x402282be0589acbd              # double 9.2553560000000008
	.quad	0x402151059ea57215              # double 8.6582460000000001
	.quad	0x3ffda658c4bd33d3              # double 1.8531120000000001
	.quad	0x4018ff893faf4278              # double 6.2495469999999997
	.quad	0x400cfe225fa658c5              # double 3.6240890000000001
	.quad	0x401a5475e6362a5e              # double 6.5824809999999996
	.quad	0x3fe26115592d98bf              # double 0.57435099999999994
	.quad	0x400318969a0ad8a1              # double 2.387006
	.quad	0x40202bf5d78811b2              # double 8.0858600000000003
	.quad	0x401554d1a6506141              # double 5.3328309999999997
	.quad	0x4011679c4113c686              # double 4.3511819999999997
	.quad	0x4022889ce4a7b4e5              # double 9.2668219999999994
	.quad	0x40101aa087ca643d              # double 4.0260030000000002
	.quad	0x4020d6e631f8a090              # double 8.4197249999999997
	.quad	0x3fd63b8a19c9d5a2              # double 0.34738400000000003
	.quad	0x4018ccc426351def              # double 6.199967
	.quad	0x3ffb97a786c22681              # double 1.7245250000000001
	.quad	0x40214afa5093964a              # double 8.6464409999999994
	.quad	0x4021e72d3c792d13              # double 8.9515170000000008
	.quad	0x3ffba9fbe76c8b44              # double 1.7290000000000001
	.quad	0x3ffe6c16df3f9618              # double 1.901389
	.quad	0x401d5a116659d12d              # double 7.3379570000000003
	.quad	0x4006493964a59c06              # double 2.7857539999999998
	.quad	0x400e7d3dc8b86b16              # double 3.811153
	.quad	0x4023893f290abb45              # double 9.7680600000000001
	.quad	0x4016baf35e310dbf              # double 5.682569
	.quad	0x3fcc0f4d7add15f0              # double 0.219217
	.quad	0x4021dd2e94680171              # double 8.9319959999999998
	.quad	0x401abd4280ae1049              # double 6.6848239999999999
	.quad	0x401c4463065f9592              # double 7.0667840000000002
	.quad	0x3fc0a1f080303c08              # double 0.129942
	.quad	0x3fe916ededaec4a4              # double 0.78404899999999999
	.quad	0x40204ca3c64345d0              # double 8.1496870000000001
	.quad	0x3fff746455eaee20              # double 1.965916
	.quad	0x401fbdbbe0157eed              # double 7.9352869999999997
	.quad	0x3fdcc10d7be9856a              # double 0.44928299999999999
	.quad	0x3ff025b0ff10ecb7              # double 1.0092019999999999
	.quad	0x401ae06748e47560              # double 6.719144
	.quad	0x40194daf8df7a4e8              # double 6.3258650000000003
	.quad	0x40222b8a19c9d5a2              # double 9.0850380000000008
	.quad	0x3fe28c282c6ef3d4              # double 0.57960900000000004
	.quad	0x400f6dee34fc610f              # double 3.928677
	.quad	0x4008d16db0dd82fd              # double 3.1022599999999998
	.quad	0x401bb4cdb7ae5797              # double 6.9265660000000002
	.quad	0x40205609dcf893fb              # double 8.1680440000000001
	.quad	0x402168abf76a2f49              # double 8.7044370000000004
	.quad	0x401d776ee73e681b              # double 7.3666340000000003
	.quad	0x402382d6238da3c2              # double 9.7555399999999999
	.quad	0x40213510d38cda6e              # double 8.6036439999999992
	.quad	0x400b54ab1d4f9c20              # double 3.4163420000000002
	.quad	0x40128738e6d15ad1              # double 4.632053
	.quad	0x401d8113836a832c              # double 7.3760510000000004
	.quad	0x400351f03d145d85              # double 2.415009
	.quad	0x3fd9bef49cf56ead              # double 0.40228000000000003
	.quad	0x4017a7f0ed3d859d              # double 5.9140050000000004
	.quad	0x4018a09f623076c0              # double 6.1568579999999997
	.quad	0x4019aa4d2b2bfdb5              # double 6.4163100000000002
	.quad	0x3ffcaeb91b3f20a7              # double 1.7926569999999999
	.quad	0x40237ef566490a35              # double 9.7479659999999999
	.quad	0x3ffa9f0b28522ea1              # double 1.663829
	.quad	0x400974fd6d7e889c              # double 3.182124
	.quad	0x40228a40d90e23af              # double 9.2700259999999997
	.quad	0x40122202d9cf13cf              # double 4.5332140000000001
	.quad	0x4006078af3e468cb              # double 2.7536830000000001
	.quad	0x40129a493c89f40a              # double 4.6506699999999999
	.quad	0x401acdd15f02c4d6              # double 6.7009939999999997
	.quad	0x4023bb1876188b11              # double 9.8654209999999995
	.quad	0x40189d0fe8ab4fa5              # double 6.1533810000000004
	.quad	0x40107e9f6a93f291              # double 4.1236550000000003
	.quad	0x3ffaf97aaac1094a              # double 1.685908
	.quad	0x4005106705c896dd              # double 2.6330089999999999
	.quad	0x4022ceec5b078d93              # double 9.404147
	.quad	0x400eeed352220bc4              # double 3.8666140000000002
	.quad	0x4008be731d2e0e30              # double 3.0929929999999999
	.quad	0x401806612839042e              # double 6.0062300000000004
	.quad	0x4001c5dd095af295              # double 2.2216130000000001
	.quad	0x4023c4b407032980              # double 9.8841859999999997
	.quad	0x4010bff04577d955              # double 4.1874399999999996
	.quad	0x401209da9c99285b              # double 4.5096230000000004
	.quad	0x400a08d8ec95bff0              # double 3.2543199999999999
	.quad	0x4023086573215fcc              # double 9.5163989999999998
	.quad	0x3fc2202d9cf13cef              # double 0.14160700000000001
	.quad	0x3ff969d1f601797d              # double 1.5883350000000001
	.quad	0x400532fba01eeed9              # double 2.6498940000000002
	.quad	0x3ffc0165907d9125              # double 1.7503409999999999
	.quad	0x401607caea747d80              # double 5.5076099999999997
	.quad	0x3ff889310129cbab              # double 1.5334939999999999
	.quad	0x3ff1b59bc33f8551              # double 1.106838
	.quad	0x4015ba1c25d07421              # double 5.4317479999999998
	.quad	0x4000f0092ccf6be3              # double 2.1172049999999998
	.quad	0x3fca11233df2a9d6              # double 0.203648
	.quad	0x3ff12503fb374363              # double 1.071537
	.quad	0x3fe05d031055b899              # double 0.51135399999999998
	.quad	0x40221a9eb2074ea9              # double 9.0519920000000003
	.quad	0x4003cb96f21f6cad              # double 2.4744090000000001
	.quad	0x400f9355475a31a5              # double 3.9469400000000001
	.quad	0x40236098f605ab3b              # double 9.6886670000000005
	.quad	0x4019c03dddb1209f              # double 6.4377360000000001
	.quad	0x4021771151611ba4              # double 8.7325540000000003
	.quad	0x4000d09bf9c62a1b              # double 2.1018599999999998
	.quad	0x4018fbae46cfc82a              # double 6.2457820000000002
	.quad	0x4018d8b3700474da              # double 6.2116220000000002
	.quad	0x4020311904b3c3e7              # double 8.0958939999999995
	.quad	0x400c9a8c586876e2              # double 3.5754630000000001
	.quad	0x402339a93293d103              # double 9.6126190000000004
	.quad	0x3fd8516db0dd82fd              # double 0.37996999999999997
	.quad	0x40102a0d77b7c782              # double 4.041067
	.quad	0x401773aa79bbadc1              # double 5.8629550000000004
	.quad	0x4023d8e68e3ef284              # double 9.9236339999999998
	.quad	0x3fa69ca9ef5232d3              # double 0.044164000000000002
	.quad	0x401e536b4c7f3494              # double 7.5814640000000004
	.quad	0x4004ce23af31b153              # double 2.600654
	.quad	0x4020edf2ecf20642              # double 8.4647439999999996
	.quad	0x40003906466b1e5c              # double 2.027844
	.quad	0x401dc1bd1ed9dfdb              # double 7.4391980000000002
	.quad	0x401f121858bc59b8              # double 7.7676709999999999
	.quad	0x4010466cf41f212d              # double 4.0687749999999996
	.quad	0x401f30995aaf78ff              # double 7.79746
	.quad	0x3fd55f676ea4228a              # double 0.33394800000000002
	.quad	0x40115f6837f7be12              # double 4.3431709999999999
	.quad	0x401330e3cd9a5226              # double 4.7977439999999998
	.quad	0x3fc0f8f8a4c1ebc8              # double 0.13259799999999999
	.quad	0x4015e157eed45e92              # double 5.4700620000000004
	.quad	0x4006ef7e3d1cc101              # double 2.86694
	.quad	0x3fe28a71de69ad43              # double 0.57940000000000003
	.quad	0x3fbaa4873365881a              # double 0.104073
	.quad	0x40220d1e53a81dc1              # double 9.0256220000000003
	.quad	0x402263ed30f062d4              # double 9.1951689999999999
	.quad	0x3fe415f02c4d65e4              # double 0.62767799999999996
	.quad	0x402323ffac1d29dc              # double 9.5703099999999992
	.quad	0x401667168f8e7ddd              # double 5.6006720000000003
	.quad	0x3ff29337eb28d866              # double 1.1609419999999999
	.quad	0x40214d32617c1bda              # double 8.6507749999999994
	.quad	0x3ffcc9e44fa05144              # double 1.7992900000000001
	.quad	0x4019e39d1b2e59b0              # double 6.4722790000000003
	.quad	0x4009a0da1a93293d              # double 3.203541
	.quad	0x402345cdd50a88f0              # double 9.636336
	.quad	0x4023cbe29307af21              # double 9.8982130000000001
	.quad	0x40085a176ddaceee              # double 3.04399
	.quad	0x4006e933a0407cc8              # double 2.8638680000000001
	.quad	0x3ffbc59a73b42cc3              # double 1.735743
	.quad	0x40176670e2c12ad8              # double 5.8500399999999999
	.quad	0x40156e7685985ad5              # double 5.3578739999999998
	.quad	0x40192e047d3d4281              # double 6.2949390000000003
	.quad	0x4019f8ca8198f1d4              # double 6.4929600000000001
	.quad	0x401d9d19157abb88              # double 7.4034159999999999
	.quad	0x401106aceaaf35e3              # double 4.2565189999999999
	.quad	0x3fe0ff9f87f023ea              # double 0.53120400000000001
	.quad	0x3ff031fddebd9019              # double 1.012205
	.quad	0x40183d61f5be5d9e              # double 6.0599439999999998
	.quad	0x40148a0a0f4d7add              # double 5.1348039999999999
	.quad	0x4021483be6601bca              # double 8.6410820000000008
	.quad	0x401b8657fb69984a              # double 6.881195
	.quad	0x4020a6432441fea8              # double 8.3247309999999999
	.quad	0x400d39c7368ad688              # double 3.6532119999999999
	.quad	0x40132008e9b38d61              # double 4.7812840000000003
	.quad	0x401e5f13059641f6              # double 7.5928459999999998
	.quad	0x401f9d373affb04f              # double 7.903531
	.quad	0x401d1f36694898f6              # double 7.280481
	.quad	0x3fe41220ff540896              # double 0.62721300000000002
	.quad	0x401a4eaa2a0a9585              # double 6.5768209999999998
	.quad	0x401aa7a46173b85f              # double 6.6637130000000004
	.quad	0x4015953bd1676641              # double 5.3957360000000003
	.quad	0x3ff521858bc59b80              # double 1.320684
	.quad	0x40216f694467381d              # double 8.7175999999999991
	.quad	0x400af6aa4b9884c7              # double 3.3704420000000002
	.quad	0x400c838e29f9ce8e              # double 3.5642360000000002
	.quad	0x400f704ee7c49fd8              # double 3.9298380000000002
	.quad	0x40142785f8d2e515              # double 5.0385970000000002
	.quad	0x401b4578e5c4eb57              # double 6.817844
	.quad	0x3fea79a6b50b0f28              # double 0.82735000000000003
	.quad	0x4017f3eb7cbb3c82              # double 5.9882030000000004
	.quad	0x402142c9f2fdb8fe              # double 8.6304470000000002
	.quad	0x40032efd438d1d8a              # double 2.3979439999999999
	.quad	0x40107dcd7060bb2c              # double 4.1228540000000002
	.quad	0x401fc146a1a500d6              # double 7.9387460000000001
	.quad	0x4016d0164840e172              # double 5.7032100000000003
	.quad	0x4016ffe974a3400c              # double 5.7499140000000004
	.quad	0x3fef30014f8b588e              # double 0.97460999999999998
	.quad	0x4017553c148344c3              # double 5.8332369999999996
	.quad	0x3ff060370cdc8755              # double 1.02349
	.quad	0x4003178dd616f86a              # double 2.386501
	.quad	0x3fc73b96af038e2a              # double 0.181506
	.quad	0x4010a137b07075b4              # double 4.1574390000000001
	.quad	0x40056fdda8bd230c              # double 2.6796220000000002
	.quad	0x40025e4bcad9ad86              # double 2.2960430000000001
	.quad	0x4003c8259e1f3a58              # double 2.472728
	.quad	0x4022edf505d0fa59              # double 9.46476
	.quad	0x3fc0c6c54bcf0b6b              # double 0.13106599999999999
	.quad	0x4004cef0281ba7fc              # double 2.6010439999999999
	.quad	0x401e2821af7d30ad              # double 7.5391909999999997
	.quad	0x4011779207d4e098              # double 4.3667680000000004
	.quad	0x40222d74f722e1ac              # double 9.0887829999999993
	.quad	0x4000b1958969a0ae              # double 2.0867110000000002
	.quad	0x4016942c7fbacb43              # double 5.6447010000000004
	.quad	0x4022358644523f68              # double 9.1045400000000001
	.quad	0x3fd4e4da09cc319c              # double 0.32646799999999998
	.quad	0x4012424399b2c40d              # double 4.564711
	.quad	0x4023a7a17f4128bf              # double 9.8274039999999995
	.quad	0x400fc71a3b14a904              # double 3.9722179999999998
	.quad	0x402390ae536501e2              # double 9.7825799999999994
	.quad	0x4004cae18ac9f2fe              # double 2.5990630000000001
	.quad	0x3ff460ccff21b3af              # double 1.273633
	.quad	0x401e17e34b945309              # double 7.5233280000000002
	.quad	0x401201b5c7cd898b              # double 4.5016699999999998
	.quad	0x4011a49e8815e397              # double 4.4107609999999999
	.quad	0x40178561d4306e5d              # double 5.8802560000000001
	.quad	0x40144ad8a116659d              # double 5.0730919999999999
	.quad	0x400d90196d8f4f94              # double 3.6953610000000001
	.quad	0x3ff8ebacf7446f9c              # double 1.5575380000000001
	.quad	0x40133c679cc74b84              # double 4.8089890000000004
	.quad	0x4020da22f6a50d6b              # double 8.4260479999999998
	.quad	0x400bf6bebe1650a4              # double 3.4954809999999998
	.quad	0x400c03e6c4c5974e              # double 3.5019049999999998
	.quad	0x3fe860e30446b69e              # double 0.76182700000000003
	.quad	0x402278c1db0142f6              # double 9.2358539999999998
	.quad	0x401072d666a98245              # double 4.1121460000000001
	.quad	0x3ffebb3a68b19a41              # double 1.9207099999999999
	.quad	0x40094aeafab53d64              # double 3.161581
	.quad	0x401df6cefed63455              # double 7.4910240000000003
	.quad	0x4020cf04bc27631b              # double 8.4043329999999994
	.quad	0x3fe98fbca1059ea5              # double 0.79879599999999995
	.quad	0x3fe79fc4c165907e              # double 0.73825300000000005
	.quad	0x400e9fb267c6b8b7              # double 3.8279770000000002
	.quad	0x401bbf35e310dbf0              # double 6.9367289999999997
	.quad	0x401425515054ac2a              # double 5.0364430000000002
	.quad	0x3ff9971c10d7be98              # double 1.5993919999999999
	.quad	0x3ffb17f4128bf3bf              # double 1.6933480000000001
	.quad	0x4005247a9e2bcf92              # double 2.6428120000000002
	.quad	0x40152794a6eb91b4              # double 5.288653
	.quad	0x3ffe37585be1a826              # double 1.888512
	.quad	0x402182ac53b0813d              # double 8.7552210000000006
	.quad	0x401abb86b15f88fd              # double 6.6831310000000004
	.quad	0x40225dadd9c27e95              # double 9.1829669999999997
	.quad	0x4000d910c2c5e2ce              # double 2.1059890000000001
	.quad	0x401de7b24638c975              # double 7.4762659999999999
	.quad	0x401b5215336deb96              # double 6.8301590000000001
	.quad	0x3ff8b4fa48301a7a              # double 1.544184
	.quad	0x40000ccbc05d52c1              # double 2.0062479999999998
	.quad	0x401c05f0b28522ea              # double 7.0058009999999999
	.quad	0x4022bd019f3c70ca              # double 9.3691530000000007
	.quad	0x4021fb78cc9a77e6              # double 8.9911560000000001
	.quad	0x402093b213e3e293              # double 8.2884679999999999
	.quad	0x4022f63da2f8bdec              # double 9.4809389999999993
	.quad	0x40206fa89331a08c              # double 8.218083
	.quad	0x402117ff583a53b9              # double 8.5468700000000002
	.quad	0x401f657fb69984a1              # double 7.84912
	.quad	0x40224a474538ef35              # double 9.1450750000000003
	.quad	0x4009825742dcf462              # double 3.1886429999999999
	.quad	0x401a242aed139431              # double 6.5353199999999996
	.quad	0x4002f016ce789e77              # double 2.3672309999999999
	.quad	0x401908f96e158751              # double 6.2587640000000002
	.quad	0x40222dc768dfbd6a              # double 9.0894119999999994
	.quad	0x4010e0eed02cd39e              # double 4.2196610000000003
	.quad	0x401ec4f09528f191              # double 7.6923240000000001
	.quad	0x401074bc27631b58              # double 4.1139989999999997
	.quad	0x4009a98fe69270b0              # double 3.2077939999999998
	.quad	0x400a74d6a161e4f7              # double 3.3070499999999998
	.quad	0x40188856a37ac3eb              # double 6.1331429999999996
	.quad	0x3ff8d5bbbe878fac              # double 1.552181
	.quad	0x3ffe526fa3fcc9eb              # double 1.8951260000000001
	.quad	0x4017f76b3bb83cf3              # double 5.9916200000000002
	.quad	0x3ff8fb69984a0e41              # double 1.56138
	.quad	0x401571593e5fb720              # double 5.3606920000000002
	.quad	0x401714cfd08d4bad              # double 5.7703239999999996
	.quad	0x401be83f4eca686e              # double 6.9768039999999996
	.quad	0x4020a745bf26f1dc              # double 8.3267039999999994
	.quad	0x40225d0678c0053e              # double 9.1816899999999997
	.quad	0x400e303afb7e9100              # double 3.7735500000000002
	.quad	0x401446540cc78e9f              # double 5.0686799999999996
	.quad	0x4006a37585be1a82              # double 2.8298139999999998
	.quad	0x401ab43bb40b34e7              # double 6.6760089999999996
	.quad	0x40190f1bef49cf57              # double 6.2647550000000001
	.quad	0x400ccc39ffd60e95              # double 3.59972
	.quad	0x400a7ed3953dea46              # double 3.3119269999999998
	.quad	0x401bf158fb43d89d              # double 6.9856910000000001
	.quad	0x401aaedaa92e6213              # double 6.6707559999999999
	.quad	0x4021ae4ef0281ba8              # double 8.840446
	.quad	0x40193e481f53825e              # double 6.3108219999999999
	.quad	0x400c9bc44bf4cb19              # double 3.5760580000000002
	.quad	0x401c03f39d1b2e5a              # double 7.0038590000000003
	.quad	0x4022002385404641              # double 9.0002709999999997
	.quad	0x3ff296c2efd438d2              # double 1.161807
	.quad	0x3feb62fdfc19c172              # double 0.85583399999999998
	.quad	0x40062ea747d805e6              # double 2.77278
	.quad	0x4022a05681ecd4aa              # double 9.3131599999999999
	.quad	0x40162803cd141a69              # double 5.5390769999999998
	.quad	0x4023ce18266772d6              # double 9.9025280000000002
	.quad	0x4012785c24c404a7              # double 4.6175389999999998
	.quad	0x40133b384fd2a62b              # double 4.8078320000000003
	.quad	0x4011d3c85c24c405              # double 4.4568190000000003
	.quad	0x3ff7a295208e1501              # double 1.477193
	.quad	0x4012edd9c27e9531              # double 4.7322759999999997
	.quad	0x40030e06d938151a              # double 2.3818489999999999
	.quad	0x3ff9d4c22ee4191a              # double 1.6144430000000001
	.quad	0x401264317acc4ef9              # double 4.5978450000000004
	.quad	0x4023cde6362a5e78              # double 9.9021469999999993
	.quad	0x401c122a2c237479              # double 7.0177389999999997
	.quad	0x40194a18bd66277c              # double 6.3223599999999998
	.quad	0x401cd02afdda8bd2              # double 7.2032889999999998
	.quad	0x40192fdc1615ebfb              # double 6.2967380000000004
	.quad	0x401fde019b0ab2e1              # double 7.9668029999999996
	.quad	0x4019e2528ae74f2f              # double 6.4710179999999999
	.quad	0x4020c3d7d3910c2c              # double 8.3825059999999993
	.quad	0x401f134a44c7b02d              # double 7.7688379999999996
	.quad	0x3fecc4d22c881e47              # double 0.89902599999999999
	.quad	0x4001fac81d3aa36a              # double 2.247452
	.quad	0x401a323aafff36ac              # double 6.5490519999999997
	.quad	0x40101648c7192ea5              # double 4.0217619999999998
	.quad	0x3fb2553ac4f7ec35              # double 0.071612999999999996
	.quad	0x400c00303c07ee0b              # double 3.500092
	.quad	0x400213a92a305532              # double 2.2595999999999998
	.quad	0x4020f072d1aeb3dd              # double 8.4696259999999999
	.quad	0x4018090e66cb1034              # double 6.0088439999999999
	.quad	0x400dbc2ca148ba84              # double 3.716882
	.quad	0x4020f40b5675579b              # double 8.4766490000000001
	.quad	0x401b3a93293d102c              # double 6.8072020000000002
	.quad	0x4018cedb2f661f19              # double 6.2020080000000002
	.quad	0x3ffa5ba7fc32ebe6              # double 1.6473770000000001
	.quad	0x4021ea7b6fe2e6eb              # double 8.9579730000000009
	.quad	0x3fee473eee525892              # double 0.94619699999999995
	.quad	0x401c6543aeab7996              # double 7.0988910000000001
	.quad	0x401c9cdee34fc611              # double 7.1531940000000001
	.quad	0x4021f5ad538ac190              # double 8.9798380000000009
	.quad	0x400d8ae21101b003              # double 3.6928139999999998
	.quad	0x3ff9b09741d084e8              # double 1.605613
	.quad	0x3fbc04102ff8ec10              # double 0.10943700000000001
	.quad	0x400cfc842fa50939              # double 3.6232989999999998
	.quad	0x40098f12c27a6373              # double 3.1948599999999998
	.quad	0x400064295a6c5d20              # double 2.0489069999999998
	.quad	0x4022383cd141a693              # double 9.1098389999999991
	.quad	0x3ff1be9fadafd114              # double 1.1090390000000001
	.quad	0x4010373c4f3ba776              # double 4.053941
	.quad	0x402192deebb341e1              # double 8.7868569999999995
	.quad	0x3fd03faf42784a94              # double 0.25388699999999997
	.quad	0x40167d07852f7f4a              # double 5.6220990000000004
	.quad	0x4009f63e4abe6a33              # double 3.2452359999999998
	.quad	0x4015bf4666ec9e23              # double 5.4367919999999996
	.quad	0x4012a3e78e1932d7              # double 4.6600630000000001
	.quad	0x402053ce4217d285              # double 8.1636830000000007
	.quad	0x400afa95421c0443              # double 3.3723550000000002
	.quad	0x401da99c7bcc2939              # double 7.4156360000000001
	.quad	0x3ff81cbddb9841ab              # double 1.5070170000000001
	.quad	0x40168cd2d44dca8e              # double 5.6375229999999998
	.quad	0x4020c355475a31a5              # double 8.3815100000000005
	.quad	0x4023376cacd184c2              # double 9.6082509999999992
	.quad	0x401e4f1b25f633ce              # double 7.5772519999999997
	.quad	0x401b1172abef06b3              # double 6.7670389999999996
	.quad	0x4008766a55087011              # double 3.05782
	.quad	0x401d78655193708b              # double 7.3675740000000003
	.quad	0x401200ba6266fd65              # double 4.5007109999999999
	.quad	0x3ff173aabcd78c43              # double 1.0907389999999999
	.quad	0x401108c7192ea52f              # double 4.258572
	.quad	0x3ff55b52007dd441              # double 1.334795
	.quad	0x401350ce4ead0c3d              # double 4.8289119999999999
	.quad	0x40027bf9c62a1b5c              # double 2.3105349999999998
	.quad	0x3ff60386d2ed783e              # double 1.375861
	.quad	0x4023783dbc23315d              # double 9.7348459999999992
	.quad	0x401259f44d445671              # double 4.5878459999999999
	.quad	0x3fdbf9c1f85d744f              # double 0.43711899999999998
	.quad	0x3ffd9d3fe1975f2d              # double 1.8508910000000001
	.quad	0x402378fe047d3d43              # double 9.7363130000000008
	.quad	0x4000b19c5a3e39f7              # double 2.0867239999999998
	.quad	0x401e9b2d0a244630              # double 7.6515389999999996
	.quad	0x40051d70a3d70a3d              # double 2.6393749999999998
	.quad	0x401582c6ef3d3a1d              # double 5.3777119999999998
	.quad	0x400c5682730c6717              # double 3.5422410000000002
	.quad	0x400cede54b48d3ae              # double 3.6161599999999998
	.quad	0x40206c855da27286              # double 8.2119549999999997
	.quad	0x4004e0ddc6195465              # double 2.6097980000000001
	.quad	0x40117a2db61bb060              # double 4.3693150000000003
	.quad	0x3fac33d6c7219221              # double 0.055083
	.quad	0x4010b20ff540895d              # double 4.173889
	.quad	0x40078d3d859c8c93              # double 2.9439649999999999
	.quad	0x4021417e996312f5              # double 8.6279190000000003
	.quad	0x4020cc2656abde40              # double 8.3987300000000005
	.quad	0x40101722e1ac57e2              # double 4.0225939999999998
	.quad	0x400fdbd2fa0d77b8              # double 3.9823360000000001
	.quad	0x3ffe07f88765ba6f              # double 1.876946
	.quad	0x3fefd657fb69984a              # double 0.99491499999999999
	.quad	0x401d2818c5c9a34d              # double 7.2891570000000003
	.quad	0x4016b348b220791c              # double 5.6750819999999997
	.quad	0x40126adfb506dd6a              # double 4.6043690000000002
	.quad	0x4023b2c7fbacb429              # double 9.8491820000000007
	.quad	0x3fe73b8800eae18b              # double 0.72601700000000002
	.quad	0x4011c2be48a58b3f              # double 4.4401789999999997
	.quad	0x40197a8c586876e2              # double 6.3696760000000001
	.quad	0x401df40f23897204              # double 7.4883389999999999
	.quad	0x40139e963dc486ad              # double 4.9048699999999998
	.quad	0x400c537b8d3f1844              # double 3.5407630000000001
	.quad	0x402032107b784663              # double 8.0977820000000005
	.quad	0x4005063b688bda94              # double 2.6280429999999999
	.quad	0x401960e27e0ef998              # double 6.344614
	.quad	0x40157e02a77a2ced              # double 5.3730570000000002
	.quad	0x3ffcf899392189be              # double 1.8106930000000001
	.quad	0x40020ad0c3d25248              # double 2.2552810000000001
	.quad	0x4021a1a88ace24bc              # double 8.8157390000000006
	.quad	0x4017d8ba40d90e24              # double 5.9616480000000003
	.quad	0x4006ec61522a6f3f              # double 2.8654199999999999
	.quad	0x40041ed3953dea46              # double 2.5150519999999998
	.quad	0x4020a91b823c85c2              # double 8.3302879999999995
	.quad	0x402302c27a63736d              # double 9.5053900000000002
	.quad	0x401e4ae31d712a0f              # double 7.5731320000000001
	.quad	0x4019ff41f212d773              # double 6.4992749999999999
	.quad	0x401cc191dde37586              # double 7.1890330000000002
	.quad	0x3fa61d2178f68be3              # double 0.043191
	.quad	0x401fa9813879c411              # double 7.9155319999999997
	.quad	0x4004cd1aeb3dd11c              # double 2.600149
	.quad	0x4012b57eed45e918              # double 4.6772419999999997
	.quad	0x40223eda66128390              # double 9.1227599999999995
	.quad	0x4021366f5019f3c7              # double 8.6063179999999999
	.quad	0x400278676a7264a1              # double 2.3087909999999998
	.quad	0x3ff82c3fc43b2dd3              # double 1.5108029999999999
	.quad	0x3fe39ad85dfa871a              # double 0.61265199999999997
	.quad	0x40210efe4ffc9796              # double 8.5292840000000005
	.quad	0x40202869c66d373b              # double 8.078932
	.quad	0x401852b4d8ba40d9              # double 6.080768
	.quad	0x401104fc1df3300e              # double 4.2548680000000001
	.quad	0x3fda3cf2cf95d4e9              # double 0.40997
	.quad	0x4018a129888f861a              # double 6.1573849999999997
	.quad	0x401656088d6d3b6d              # double 5.5840170000000002
	.quad	0x400a91bef49cf56f              # double 3.3211650000000001
	.quad	0x400bfa554b8bef8d              # double 3.497233
	.quad	0x40069327aa68f4b6              # double 2.8218529999999999
	.quad	0x402096ad9274e22a              # double 8.2942929999999997
	.quad	0x3ffbf7caa7589efe              # double 1.7479960000000001
	.quad	0x401e4446b69db65f              # double 7.5666760000000001
	.quad	0x3ff8f80a9de8b3b3              # double 1.560557
	.quad	0x402023e1437c5693              # double 8.0700780000000005
	.quad	0x400f7a37ef5a964f              # double 3.9346770000000002
	.quad	0x400f4ebfec13b9f1              # double 3.9134519999999999
	.quad	0x4016ddc1e7967caf              # double 5.7165600000000003
	.quad	0x4014ab34e7685986              # double 5.1671940000000003
	.quad	0x401c7062d40aaeb0              # double 7.1097520000000003
	.quad	0x400dd9192641b329              # double 3.7310050000000001
	.quad	0x3fd9e80389f83be6              # double 0.40478599999999998
	.quad	0x3fe40d1d8a548238              # double 0.62660099999999996
	.quad	0x4010a3f4eca686e8              # double 4.1601140000000001
	.quad	0x400c75fb2edfe75c              # double 3.5576080000000001
	.quad	0x400030b28522ea10              # double 2.0237780000000001
	.quad	0x4004fb749adc8fb8              # double 2.6227809999999998
	.quad	0x3fed8a65492ff4ba              # double 0.92314399999999996
	.quad	0x3fdb2f944241c3f0              # double 0.42477900000000002
	.quad	0x40038203e63e8dda              # double 2.4384839999999999
	.quad	0x40025ec918e325d5              # double 2.2962820000000002
	.quad	0x40110dc2b0ea1837              # double 4.2634379999999998
	.quad	0x400a6768dfbd6a59              # double 3.3004929999999999
	.quad	0x400a65625a682b63              # double 3.2995040000000002
	.quad	0x400d73aabcd78c43              # double 3.6814779999999998
	.quad	0x3fe8bb23571d1d47              # double 0.77284399999999998
	.quad	0x3fb7f1d81f106680              # double 0.093534000000000006
	.quad	0x40200055970b49e0              # double 8.0006529999999998
	.quad	0x3fed69f6a93f290b              # double 0.91918500000000003
	.quad	0x40049c1c6088d6d4              # double 2.5762260000000001
	.quad	0x401bc304ccee5abc              # double 6.940448
	.quad	0x4022d3892ee84ad8              # double 9.4131560000000007
	.quad	0x4021eb4a87e38eb0              # double 8.9595529999999997
	.quad	0x3fbcb2314013ec46              # double 0.112094
	.quad	0x4017ac13fd0d0679              # double 5.9180450000000002
	.quad	0x4013f5d9a0f0a5f0              # double 4.9900880000000001
	.quad	0x4018e59d99029ae5              # double 6.224234
	.quad	0x40114e8e1d6494d5              # double 4.3267139999999999
	.quad	0x40089fa3b9ae0c17              # double 3.0779489999999998
	.quad	0x400108cf7caa758a              # double 2.129302
	.quad	0x400560d801b43526              # double 2.6722869999999999
	.quad	0x400ad33ca31e7d9a              # double 3.3531430000000002
	.quad	0x40199bf83382e44b              # double 6.4023139999999996
	.quad	0x401e2e43ed959a31              # double 7.5451810000000003
	.quad	0x400c70aaa7ded6bb              # double 3.5550130000000002
	.quad	0x40111fed20296b33              # double 4.2811779999999997
	.quad	0x401cf7939a7c17a9              # double 7.2417740000000004
	.quad	0x401d50fc2eba27af              # double 7.3290870000000004
	.quad	0x401fc443914f483d              # double 7.9416640000000002
	.quad	0x40056d490e66cb10              # double 2.6783619999999999
	.quad	0x3ffccc176577531e              # double 1.7998270000000001
	.quad	0x401196544fe36d22              # double 4.3968059999999998
	.quad	0x40154aca36199781              # double 5.3230370000000002
	.quad	0x4021736c3760bf5d              # double 8.7254349999999992
	.quad	0x401c7b06c43f5f91              # double 7.1201429999999997
	.quad	0x3fbfb7e90ff97247              # double 0.1239
	.quad	0x401220a7c5ac471b              # double 4.5318899999999998
	.quad	0x4017ce3de6149c6f              # double 5.9514079999999998
	.quad	0x3feb20ad8a11665a              # double 0.84773900000000002
	.quad	0x400e0c7b890d5a5c              # double 3.7560950000000002
	.quad	0x4002d7b84db9c737              # double 2.3553320000000002
	.quad	0x40157540895d0b74              # double 5.3645040000000002
	.quad	0x3ffb2ebd4cfd08d5              # double 1.6989110000000001
	.quad	0x40168f2d7f950b95              # double 5.6398219999999997
	.quad	0x401f5f23465625a7              # double 7.8429080000000004
	.quad	0x4005138f7985271c              # double 2.6345510000000001
	.quad	0x401d524fa8b4bf90              # double 7.3303820000000002
	.quad	0x40136bf5515054ac              # double 4.8554279999999999
	.quad	0x4021d95d701d9f4d              # double 8.9245409999999996
	.quad	0x401103c5bd0e12e8              # double 4.2536839999999998
	.quad	0x401760157eed45e9              # double 5.8438319999999999
	.quad	0x3ffa8a18bd66277c              # double 1.6587149999999999
	.quad	0x4019e09d495182aa              # double 6.4693500000000004
	.quad	0x401e97891e215337              # double 7.6479840000000001
	.quad	0x4015464d7f0ed3d8              # double 5.3186549999999997
	.quad	0x400ca84944ed6fdb              # double 3.5821710000000002
	.quad	0x401ad6bacf7446fa              # double 6.7096970000000002
	.quad	0x40101b8800eae18b              # double 4.0268860000000002
	.quad	0x3fcddcdf69878317              # double 0.23330300000000001
	.quad	0x400dd2e05ccc89b1              # double 3.727967
	.quad	0x40210de17e34b945              # double 8.5271109999999997
	.quad	0x3ff3bfda4052d667              # double 1.2343390000000001
	.quad	0x401d07d45a5fc7e7              # double 7.2576460000000003
	.quad	0x40123a1016ce789e              # double 4.5567019999999996
	.quad	0x40225af78feef5ed              # double 9.1776700000000009
	.quad	0x4023565d18090b41              # double 9.6686789999999991
	.quad	0x3ff0b0dc768dfbd7              # double 1.0431790000000001
	.quad	0x3ff75ee78183f91e              # double 1.4606699999999999
	.quad	0x401dcbf0563ed0f6              # double 7.4491589999999999
	.quad	0x400b318090b417ca              # double 3.3991709999999999
	.quad	0x40205cf312b1b36c              # double 8.1815420000000003
	.quad	0x401d24057082491b              # double 7.285177
	.quad	0x3fe7ea8da7f3cf70              # double 0.74738199999999999
	.quad	0x40105947496aad1d              # double 4.087186
	.quad	0x401b5bff47735c18              # double 6.8398409999999998
	.quad	0x40212bd017dae819              # double 8.5855720000000009
	.quad	0x4018c48ba83f4eca              # double 6.1919389999999996
	.quad	0x4014c612839042d9              # double 5.1934300000000002
	.quad	0x402343ef6b5d462c              # double 9.6326859999999996
	.quad	0x3fc3be33acd5b680              # double 0.15424199999999999
	.quad	0x4022af94ea077037              # double 9.3429330000000004
	.quad	0x401b0bdf090f733b              # double 6.7615930000000004
	.quad	0x3fb7a5c1c6088d6d              # double 0.092372999999999997
	.quad	0x401aa5fe974a3401              # double 6.6621040000000002
	.quad	0x402310be0ded288d              # double 9.5327000000000001
	.quad	0x4018e38ef34d6a16              # double 6.2222249999999999
	.quad	0x402260548a9bcfd5              # double 9.1881450000000005
	.quad	0x400488b2a6b0d951              # double 2.5667469999999999
	.quad	0x40231eaceaaf35e3              # double 9.5599129999999998
	.quad	0x3ff7c3bd5992428d              # double 1.4852879999999999
	.quad	0x4008fc6d1e108c3f              # double 3.1232549999999999
	.quad	0x3fc1f43419e30015              # double 0.140265
	.quad	0x400de30caa326e11              # double 3.7358639999999999
	.quad	0x4023748fb86f47b6              # double 9.7276589999999992
	.quad	0x401809107faa044b              # double 6.0088520000000001
	.quad	0x4010edf3b645a1cb              # double 4.2323750000000002
	.quad	0x402159ac9afe1da8              # double 8.6751450000000006
	.quad	0x3ff6a26c3b927d46              # double 1.4146540000000001
	.quad	0x40218d55c52e72da              # double 8.7760449999999999
	.quad	0x3fd5a34ca0c282c7              # double 0.338092
	.quad	0x400161c714fce747              # double 2.1727430000000001
	.quad	0x3ff3ae6fb4c3c18b              # double 1.2300869999999999
	.quad	0x402258b26394face              # double 9.1732359999999993
	.quad	0x401ce0f0e90bc7b4              # double 7.2196689999999997
	.quad	0x40133950b955f783              # double 4.8059719999999997
	.quad	0x4002c7e9d94d0dd0              # double 2.3476140000000001
	.quad	0x40210afd32c625ea              # double 8.5214630000000007
	.quad	0x402099fa11a975b0              # double 8.3007360000000006
	.quad	0x400c09e01de26916              # double 3.5048219999999999
	.quad	0x40155fb97bb73083              # double 5.3434809999999997
	.quad	0x3fa1c27e9531550d              # double 0.034687000000000003
	.quad	0x401383c18b502abb              # double 4.8786680000000002
	.quad	0x4016d553ac4f7ec3              # double 5.7083269999999997
	.quad	0x4023b47496aad1d0              # double 9.8524519999999995
	.quad	0x4005e3c7d5ed06ff              # double 2.736221
	.quad	0x4011e439de481f54              # double 4.4728770000000004
	.quad	0x4022c7fbce4217d3              # double 9.3905930000000008
	.quad	0x4015b02bc72e275b              # double 5.4220420000000003
	.quad	0x3ff0eb95e5aff2a1              # double 1.0575159999999999
	.quad	0x40105b13165d3997              # double 4.08894
	.quad	0x4005d462c343b70f              # double 2.728704
	.quad	0x4022209fe86833c6              # double 9.06372
	.quad	0x401504217d2849cb              # double 5.2540339999999999
	.quad	0x4019e65a57646ae4              # double 6.4749540000000003
	.quad	0x401923bddfc9ff93              # double 6.284904
	.quad	0x4021ef14983d7907              # double 8.9669539999999994
	.quad	0x401aa112fd32c626              # double 6.6572990000000001
	.quad	0x4022a83c8e25c811              # double 9.3285870000000006
	.quad	0x40168a038194c016              # double 5.634779
	.quad	0x3fc3cf1c3265adda              # double 0.15475800000000001
	.quad	0x4012454823854046              # double 4.5676579999999998
	.quad	0x401a2009b30728e9              # double 6.5312869999999998
	.quad	0x40185f5e41d4b6a6              # double 6.0931329999999999
	.quad	0x3ffd62467be553ac              # double 1.8364929999999999
	.quad	0x4015d8b60f1b25f6              # double 5.4616319999999998
	.quad	0x4009fae7924af0bf              # double 3.247512
	.quad	0x40168be3c105186e              # double 5.6366110000000003
	.quad	0x40094ba0620ab713              # double 3.1619269999999999
	.quad	0x400a82339c0ebee0              # double 3.3135750000000002
	.quad	0x40168c9abb01c92e              # double 5.6373090000000001
	.quad	0x4009d05af6c69b5a              # double 3.2267359999999998
	.quad	0x4018498e53eb399f              # double 6.0718319999999997
	.quad	0x4015119f7f8ca81a              # double 5.2672100000000004
	.quad	0x4017251b4fe79ee0              # double 5.7862369999999999
	.quad	0x4017db2d905c0336              # double 5.9640409999999999
	.quad	0x4022410667f90d9d              # double 9.1270019999999992
	.quad	0x3fca05681ecd4aa1              # double 0.20329
	.quad	0x4022d40053e2d624              # double 9.4140650000000007
	.quad	0x40123d00b45ae600              # double 4.5595730000000003
	.quad	0x400ba4955b4677b4              # double 3.4553630000000002
	.quad	0x401df8140dd3fe19              # double 7.4922639999999995
	.quad	0x400ca343b70ef566              # double 3.5797189999999999
	.quad	0x3fe35cbbc2b94d94              # double 0.60507
	.quad	0x4014c92b3cc4ac6d              # double 5.1964540000000001
	.quad	0x401ad5c4eb56fb8f              # double 6.7087589999999997
	.quad	0x401f547e49b1fab9              # double 7.8325129999999996
	.quad	0x400e535b0bbf50e3              # double 3.7907009999999999
	.quad	0x4011fb19e731d2e1              # double 4.4952160000000001
	.quad	0x400db27e5215768a              # double 3.7121550000000001
	.quad	0x401e79c7368ad688              # double 7.6189239999999998
	.quad	0x3ff7c2d9cf13ceea              # double 1.485071
	.quad	0x40214587d6f97679              # double 8.635802
	.quad	0x4007adc33721d53d              # double 2.9598450000000001
	.quad	0x40162185058dde7a              # double 5.5327339999999996
	.quad	0x4021c16e58a32f45              # double 8.8777950000000008
	.quad	0x4014ccdcca70d1fa              # double 5.2000609999999998
	.quad	0x4018bb1d0c804103              # double 6.182728
	.quad	0x3ffa96da0168b5cc              # double 1.661829
	.quad	0x4011e6bf01322f27              # double 4.4753379999999998
	.quad	0x401def4ba51a005c              # double 7.4836869999999998
	.quad	0x400b310f51ac9afe              # double 3.3989549999999999
	.quad	0x40155f94855da273              # double 5.3433400000000004
	.quad	0x4011e1eeed8904f7              # double 4.4706380000000001
	.quad	0x40040abc5154866a              # double 2.505242
	.quad	0x4022e9626b2f2303              # double 9.4558289999999995
	.quad	0x4018c408d8ec95c0              # double 6.1914400000000001
	.quad	0x40095c0b13597918              # double 3.169943
	.quad	0x3feb07314ca925ff              # double 0.84462800000000005
	.quad	0x4022fb24a6a875d5              # double 9.4905139999999992
	.quad	0x3ffb1fb6134ce3de              # double 1.6952419999999999
	.quad	0x4003f008a697aede              # double 2.4922040000000001
	.quad	0x402062aa5c5f7c67              # double 8.1927059999999994
	.quad	0x40120786c226809d              # double 4.5073499999999997
	.quad	0x4022f45fbf83382e              # double 9.4772929999999995
	.quad	0x4021daecd07852f8              # double 8.9275880000000001
	.quad	0x401e7e503fb37436              # double 7.6233529999999998
	.quad	0x3fabfa0945f9df55              # double 0.054642000000000003
	.quad	0x40230a4e160d887f              # double 9.5201270000000004
	.quad	0x401c2836a832b991              # double 7.0392710000000003
	.quad	0x4016da05143bf727              # double 5.7129099999999999
	.quad	0x4017478c868b9fdc              # double 5.8198720000000002
	.quad	0x400ba5109070fbec              # double 3.4555980000000002
	.quad	0x3ff163da2f8bdec6              # double 1.086878
	.quad	0x3ff85ac36544fe37              # double 1.522159
	.quad	0x40226313be22e5de              # double 9.1935099999999998
	.quad	0x401bfb78897e9963              # double 6.9955769999999999
	.quad	0x3fe537b07075b3e1              # double 0.66304799999999997
	.quad	0x4011b7c3504c48ae              # double 4.4294560000000001
	.quad	0x401798deb0fadf2f              # double 5.8992870000000002
	.quad	0x4021785532617c1c              # double 8.7350250000000002
	.quad	0x4020d53868fd199c              # double 8.4164460000000005
	.quad	0x3f94fce746cb966c              # double 0.020496
	.quad	0x400ab888f861a60d              # double 3.3401049999999999
	.quad	0x4014926e5471715c              # double 5.1429989999999997
	.quad	0x401c8bf61aa3f035              # double 7.1366810000000003
	.quad	0x400eeeb78897e996              # double 3.8665609999999999
	.quad	0x4003741d084e831b              # double 2.4316960000000001
	.quad	0x40209066c2acb85a              # double 8.2820339999999995
	.quad	0x401e34bad7d7c2ca              # double 7.5514939999999999
	.quad	0x4015b5529fe004b8              # double 5.427073
	.quad	0x401914d6a161e4f7              # double 6.2703499999999996
	.quad	0x3fe14fe79ee02a78              # double 0.54100400000000004
	.quad	0x40191e9b38d60a63              # double 6.2798889999999998
	.quad	0x40136ab862b27cbf              # double 4.8542189999999996
	.quad	0x400341fa76534374              # double 2.407216
	.quad	0x401bb57b41bfbdf1              # double 6.9272280000000004
	.quad	0x40207e4dc22ab25b              # double 8.2466869999999997
	.quad	0x4023ab6284599674              # double 9.8347359999999994
	.quad	0x3fff16e04c059210              # double 1.943085
	.quad	0x40145301a79fec9a              # double 5.081061
	.quad	0x3fffc87ca643cc08              # double 1.9864470000000001
	.quad	0x3ffa9e9af5ba2be0              # double 1.6637219999999999
	.quad	0x4020bae33eff1950              # double 8.3650149999999996
	.quad	0x401aef21b3aeee95              # double 6.7335269999999996
	.quad	0x4019f9baa1511e00              # double 6.4938760000000002
	.quad	0x401b5b3aabcd78c4              # double 6.8390909999999998
	.quad	0x4009a47ecfe9b7bf              # double 3.2053199999999999
	.quad	0x401fa234eb9a176e              # double 7.9084050000000001
	.quad	0x400664217d2849cb              # double 2.7988919999999999
	.quad	0x400c9d4e09784ec6              # double 3.5768089999999999
	.quad	0x3fed62f166e008ea              # double 0.91832800000000003
	.quad	0x3fd428f190d173fb              # double 0.31499899999999997
	.quad	0x4007be40c8472c0e              # double 2.9678969999999998
	.quad	0x400ef77292c49342              # double 3.8708239999999998
	.quad	0x3fe84da2b5a20ddc              # double 0.75947699999999995
	.quad	0x4021d51eb851eb85              # double 8.9162499999999998
	.quad	0x400b83f141205bc0              # double 3.439425
	.quad	0x401f8b6f5caf2d80              # double 7.8861670000000004
	.quad	0x4022e89f1f14983d              # double 9.4543389999999991
	.quad	0x3ff4d41c8216c615              # double 1.301785
	.quad	0x3fdc92253111f0c3              # double 0.44641999999999998
	.quad	0x4021dad2999567dc              # double 8.9273880000000005
	.quad	0x3ff7101b003686a5              # double 1.441432
	.quad	0x4010feff5c6c11a1              # double 4.2490209999999999
	.quad	0x3ff93f583a53b8e5              # double 1.5779650000000001
	.quad	0x40143db8fde2ef4e              # double 5.060276
	.quad	0x40151ccb7d41743f              # double 5.2781200000000004
	.quad	0x4023c29c347e8cce              # double 9.8800980000000003
	.quad	0x401d2fb82c2bd7f5              # double 7.2966009999999999
	.quad	0x40090a619da9c993              # double 3.1300690000000002
	.quad	0x3ff8025f202107b8              # double 1.5005790000000001
	.quad	0x40108329802c0a4a              # double 4.128088
	.quad	0x400b19873ffac1d3              # double 3.3874650000000002
	.quad	0x3fe112f6e82949a5              # double 0.53356499999999996
	.quad	0x4004fe30014f8b59              # double 2.6241150000000002
	.quad	0x40091f961804d984              # double 3.1404230000000002
	.quad	0x3fdf3315d701d9f5              # double 0.48749300000000001
	.quad	0x400ea215336deb96              # double 3.829142
	.quad	0x401ece3d1cc100e7              # double 7.7014050000000002
	.quad	0x402265e37585be1b              # double 9.1990010000000009
	.quad	0x402172ba7b9170d6              # double 8.7240789999999997
	.quad	0x401fc6c11a11233e              # double 7.944096
	.quad	0x3fe6c27e9531550d              # double 0.71124200000000004
	.quad	0x402167aeddce7cd0              # double 8.7025059999999996
	.quad	0x40165cd1c7de5083              # double 5.5906440000000002
	.quad	0x3ff935bd512ec6bd              # double 1.57562
	.quad	0x3ff88a8198f1d3ed              # double 1.5338149999999999
	.quad	0x402155f1172ef0ae              # double 8.6678549999999994
	.quad	0x402327ffbce4217d              # double 9.5781229999999997
	.quad	0x4016da51e321a2e8              # double 5.713203
	.quad	0x40168948dc11e42e              # double 5.6340669999999999
	.quad	0x401ebaf965b20b80              # double 7.6825919999999996
	.quad	0x401215c03361565c              # double 4.5212409999999998
	.quad	0x4020733f42352eb6              # double 8.2250920000000001
	.quad	0x3fee4bf4cb1897a6              # double 0.94677199999999995
	.quad	0x4018bece9a2c6690              # double 6.1863349999999997
	.quad	0x40007dda059a73b4              # double 2.0614509999999999
	.quad	0x3ff52109d0635a42              # double 1.3205659999999999
	.quad	0x400292d4d4024b34              # double 2.3216950000000001
	.quad	0x40232dc1c6088d6d              # double 9.5893689999999995
	.quad	0x401b235eb7457c0b              # double 6.7845409999999999
	.quad	0x400edc38b04ab607              # double 3.8575300000000001
	.quad	0x400ddf9a49c2c1b1              # double 3.734181
	.quad	0x4011466e86c6583f              # double 4.3187810000000004
	.quad	0x401f6e33269df97b              # double 7.8576170000000002
	.quad	0x4008e82c6ef3d3a2              # double 3.1133660000000001
	.quad	0x3fcca5ce5b4245f6              # double 0.22381000000000001
	.quad	0x3fd9413986338b48              # double 0.39460600000000001
	.quad	0x3fbbe5c91d14e3bd              # double 0.108975
	.quad	0x401a99d40ee06d94              # double 6.6502230000000004
	.quad	0x400358140dd3fe19              # double 2.4180069999999998
	.quad	0x401662f05a708ede              # double 5.5966199999999997
	.quad	0x4021886e7e62dc6e              # double 8.7664679999999997
	.quad	0x402331a2e7f6f4bf              # double 9.5969460000000008
	.quad	0x3ffd65742dcf4624              # double 1.837269
	.quad	0x40099a81dc0db270              # double 3.2004429999999999
	.quad	0x400dc6b59146e4c1              # double 3.7220260000000001
	.quad	0x3ffec1711947cfa2              # double 1.9222269999999999
	.quad	0x40181e05ccc89b0f              # double 6.0293190000000001
	.quad	0x401781df761cbccf              # double 5.8768289999999999
	.quad	0x4006b6e82949a565              # double 2.8393099999999998
	.quad	0x40103a48301a79ff              # double 4.0569160000000002
	.quad	0x40116a6c5d206c87              # double 4.3539289999999999
	.quad	0x40205a0e410b630b              # double 8.1758900000000008
	.quad	0x40180a8c154c985f              # double 6.0103
	.quad	0x4010444e0daa0cae              # double 4.0667039999999997
	.quad	0x401610d7be9856a3              # double 5.5164479999999996
	.quad	0x4011ce7b3d8e0008              # double 4.4516419999999997
	.quad	0x40049ef177a7008a              # double 2.5776089999999998
	.quad	0x401dfaca79357604              # double 7.4949130000000004
	.quad	0x4008b2f4cf4a558f              # double 3.0873810000000002
	.quad	0x3ffa991148fd9fd3              # double 1.6623699999999999
	.quad	0x3fef30fcf80dc337              # double 0.97472999999999998
	.quad	0x4022dbdddb1209ee              # double 9.4294270000000004
	.quad	0x4012155ef1fddebe              # double 4.5208700000000004
	.quad	0x3fe3f922962cfd8f              # double 0.62416199999999999
	.quad	0x401224c87980f55e              # double 4.5359210000000001
	.quad	0x40231163779e9d0f              # double 9.5339620000000007
	.quad	0x4010c11b60ae9681              # double 4.1885810000000001
	.quad	0x401707296f6512a9              # double 5.7569939999999997
	.quad	0x402191b0ab2e1694              # double 8.7845510000000004
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
