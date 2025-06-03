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
	.quad	0x41384e8e823c536d              # double 1592974.5087329999
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
	.quad	25                              # 0x19
	.quad	46                              # 0x2e
	.quad	74                              # 0x4a
	.quad	97                              # 0x61
	.quad	124                             # 0x7c
	.quad	146                             # 0x92
	.quad	172                             # 0xac
	.quad	201                             # 0xc9
	.quad	225                             # 0xe1
	.quad	253                             # 0xfd
	.quad	282                             # 0x11a
	.quad	310                             # 0x136
	.quad	347                             # 0x15b
	.quad	375                             # 0x177
	.quad	409                             # 0x199
	.quad	438                             # 0x1b6
	.quad	472                             # 0x1d8
	.quad	502                             # 0x1f6
	.quad	536                             # 0x218
	.quad	564                             # 0x234
	.quad	596                             # 0x254
	.quad	621                             # 0x26d
	.quad	650                             # 0x28a
	.quad	685                             # 0x2ad
	.quad	714                             # 0x2ca
	.quad	739                             # 0x2e3
	.quad	767                             # 0x2ff
	.quad	796                             # 0x31c
	.quad	825                             # 0x339
	.quad	852                             # 0x354
	.quad	880                             # 0x370
	.quad	917                             # 0x395
	.quad	948                             # 0x3b4
	.quad	983                             # 0x3d7
	.quad	1013                            # 0x3f5
	.quad	1042                            # 0x412
	.quad	1069                            # 0x42d
	.quad	1100                            # 0x44c
	.quad	1129                            # 0x469
	.quad	1164                            # 0x48c
	.quad	1191                            # 0x4a7
	.quad	1218                            # 0x4c2
	.quad	1244                            # 0x4dc
	.quad	1276                            # 0x4fc
	.quad	1301                            # 0x515
	.quad	1342                            # 0x53e
	.quad	1378                            # 0x562
	.quad	1408                            # 0x580
	.quad	1442                            # 0x5a2
	.quad	1470                            # 0x5be
	.quad	1503                            # 0x5df
	.quad	1537                            # 0x601
	.quad	1564                            # 0x61c
	.quad	1594                            # 0x63a
	.quad	1614                            # 0x64e
	.quad	1650                            # 0x672
	.quad	1684                            # 0x694
	.quad	1715                            # 0x6b3
	.quad	1745                            # 0x6d1
	.quad	1773                            # 0x6ed
	.quad	1805                            # 0x70d
	.quad	1838                            # 0x72e
	.quad	1866                            # 0x74a
	.quad	1901                            # 0x76d
	.quad	1935                            # 0x78f
	.quad	1951                            # 0x79f
	.quad	1987                            # 0x7c3
	.quad	2019                            # 0x7e3
	.quad	2046                            # 0x7fe
	.quad	2073                            # 0x819
	.quad	2111                            # 0x83f
	.quad	2153                            # 0x869
	.quad	2183                            # 0x887
	.quad	2215                            # 0x8a7
	.quad	2244                            # 0x8c4
	.quad	2278                            # 0x8e6
	.quad	2315                            # 0x90b
	.quad	2343                            # 0x927
	.quad	2372                            # 0x944
	.quad	2407                            # 0x967
	.quad	2437                            # 0x985
	.quad	2464                            # 0x9a0
	.quad	2492                            # 0x9bc
	.quad	2517                            # 0x9d5
	.quad	2548                            # 0x9f4
	.quad	2577                            # 0xa11
	.quad	2607                            # 0xa2f
	.quad	2642                            # 0xa52
	.quad	2669                            # 0xa6d
	.quad	2704                            # 0xa90
	.quad	2731                            # 0xaab
	.quad	2758                            # 0xac6
	.quad	2798                            # 0xaee
	.quad	2836                            # 0xb14
	.quad	2866                            # 0xb32
	.quad	2889                            # 0xb49
	.quad	2918                            # 0xb66
	.quad	2950                            # 0xb86
	.quad	2978                            # 0xba2
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x40236054ac29bf16              # double 9.6881459999999997
	.quad	0x3ff844449dbec248              # double 1.516667
	.quad	0x401aeacaff6d3309              # double 6.7292899999999998
	.quad	0x401a5ad106ee30cb              # double 6.5886880000000003
	.quad	0x402099f969e3c969              # double 8.3007310000000007
	.quad	0x400fd1ef30a4e37a              # double 3.9775070000000001
	.quad	0x3ff8c44f1a1986ba              # double 1.5479270000000001
	.quad	0x40230ba190082060              # double 9.5227170000000001
	.quad	0x3fe45e679463cfb3              # double 0.63652399999999998
	.quad	0x400158055fbb517a              # double 2.1679789999999999
	.quad	0x400645e1c15097c8              # double 2.784122
	.quad	0x3fea157eed45e918              # double 0.81512399999999996
	.quad	0x4022bfff583a53b9              # double 9.3749950000000001
	.quad	0x4009b22d948dc11e              # double 3.2120009999999999
	.quad	0x4023391e85fd04a3              # double 9.611561
	.quad	0x400313b6cbd987c6              # double 2.3846259999999999
	.quad	0x401a9792d1287c20              # double 6.648021
	.quad	0x3fe5b311a543f1c7              # double 0.67810899999999996
	.quad	0x4020063d3e4ef028              # double 8.0121859999999998
	.quad	0x40146eae5bc87db3              # double 5.1080870000000003
	.quad	0x401fcbd5992428d4              # double 7.9490569999999998
	.quad	0x40111e67d77fae36              # double 4.279693
	.quad	0x402020f9d2bf5515              # double 8.064406
	.quad	0x4003ed173fb7a5f4              # double 2.490767
	.quad	0x401e28a265f0f5a1              # double 7.5396819999999999
	.quad	0x402273b4d48882f1              # double 9.2259890000000002
	.quad	0x4011b01c92ddbdb6              # double 4.4219840000000001
	.quad	0x40239897204295a7              # double 9.7980280000000004
	.quad	0x401de9f0a1be2b49              # double 7.4784569999999997
	.quad	0x400b98c9752977c9              # double 3.4496030000000002
	.quad	0x4020fe1975f2cb64              # double 8.4962879999999998
	.quad	0x4021de935b91f70e              # double 8.9347180000000002
	.quad	0x3f9c92ddbdb5d895              # double 0.027904000000000002
	.quad	0x3fd315db3397dd01              # double 0.298209
	.quad	0x401fffcd67fd3f5b              # double 7.9998069999999996
	.quad	0x4018b5471715c63b              # double 6.1770290000000001
	.quad	0x3fe74256bca5375d              # double 0.72684800000000005
	.quad	0x401c17c9de050375              # double 7.023231
	.quad	0x3fe8bda0dfdef848              # double 0.77314799999999995
	.quad	0x40069dcb5781c715              # double 2.827048
	.quad	0x3ff02ec28b2a6b0e              # double 1.0114160000000001
	.quad	0x400222c12ad81adf              # double 2.2669700000000002
	.quad	0x402161389b52007e              # double 8.6898850000000003
	.quad	0x40229729b280f12c              # double 9.2952399999999997
	.quad	0x40141e57d9dba909              # double 5.0296320000000003
	.quad	0x3fd669e7fb267c6c              # double 0.35021400000000003
	.quad	0x3ff55a7b0b391926              # double 1.3345899999999999
	.quad	0x3ffe88e15011904b              # double 1.9084179999999999
	.quad	0x3ff4fd2d87f88766              # double 1.3118110000000001
	.quad	0x4011e7b28954a7f8              # double 4.476267
	.quad	0x4018c1f0c34c1a8b              # double 6.1893950000000002
	.quad	0x401ce193f6c2699c              # double 7.2202909999999996
	.quad	0x400e4e75ff609dd0              # double 3.7883110000000002
	.quad	0x4020eab884406c01              # double 8.4584390000000003
	.quad	0x400c91e6cd29131f              # double 3.5712410000000001
	.quad	0x401ddebb341e14be              # double 7.467511
	.quad	0x40029a42f1ed17c6              # double 2.325323
	.quad	0x40228041cc532a49              # double 9.2505019999999991
	.quad	0x4015d8b9fdbd2fa1              # double 5.4616470000000001
	.quad	0x4020186f69446738              # double 8.0477249999999998
	.quad	0x401d257d9dba908a              # double 7.2866119999999999
	.quad	0x401093ec460ed80a              # double 4.1444559999999999
	.quad	0x3fe4749f0e4da09d              # double 0.63923600000000003
	.quad	0x40144305100a393f              # double 5.0654490000000001
	.quad	0x401f30e6299524c0              # double 7.7977530000000002
	.quad	0x401df1fb82c2bd7f              # double 7.4863109999999997
	.quad	0x4007743aeab7995f              # double 2.9317530000000001
	.quad	0x401b55b6c3760bf6              # double 6.8337050000000001
	.quad	0x40205df3300de4c5              # double 8.1834959999999999
	.quad	0x4018eed06fef7c24              # double 6.2332169999999998
	.quad	0x401529fe86833c60              # double 5.29101
	.quad	0x4016206ab14ec205              # double 5.531657
	.quad	0x401040bfa0945f9e              # double 4.063231
	.quad	0x400295ce18266773              # double 2.3231470000000001
	.quad	0x4013c4d7add15f03              # double 4.9422290000000002
	.quad	0x401173f0bae89eba              # double 4.3632229999999996
	.quad	0x40224b7d84901d19              # double 9.1474419999999999
	.quad	0x4020843dee781840              # double 8.2582850000000008
	.quad	0x401686d330941c82              # double 5.6316649999999999
	.quad	0x40058b75ea67e847              # double 2.6930960000000002
	.quad	0x3fe19af9ebe9c886              # double 0.55016799999999999
	.quad	0x4022af7531db445f              # double 9.3426910000000003
	.quad	0x40059038e29f9ce9              # double 2.6954210000000001
	.quad	0x3fda96aad1d041cc              # double 0.41544599999999998
	.quad	0x3fd4f2b239a38fbd              # double 0.32731300000000002
	.quad	0x400c823b7952d235              # double 3.56359
	.quad	0x40200ebd4cfd08d5              # double 8.0287880000000005
	.quad	0x40210eb1a2a4db16              # double 8.5286989999999996
	.quad	0x3ff9dd92b7fe08af              # double 1.616595
	.quad	0x3ff4b9f77292c493              # double 1.2954019999999999
	.quad	0x401b38fd5cb790fb              # double 6.8056539999999996
	.quad	0x3fdd8533b1077469              # double 0.46125500000000003
	.quad	0x4002261ae70c1334              # double 2.2686060000000001
	.quad	0x400562f7b17ce52e              # double 2.673324
	.quad	0x3ff0d000c9539b89              # double 1.0507820000000001
	.quad	0x402382db402d16b9              # double 9.7555789999999991
	.quad	0x401d4158750c1b97              # double 7.3138139999999998
	.quad	0x401956d7625204b0              # double 6.3348060000000004
	.quad	0x40195ee7c49fd7a1              # double 6.3426809999999998
	.quad	0x400e0a46e08f2171              # double 3.7550180000000002
	.quad	0x4023e91212513b5c              # double 9.955216
	.quad	0x401e9f661f18c9fb              # double 7.6556629999999996
	.quad	0x400789be09bb6aa5              # double 2.9422570000000001
	.quad	0x3fd52d8c2a454de8              # double 0.330905
	.quad	0x401229dd3bafd977              # double 4.540883
	.quad	0x401cf60c7c0f4517              # double 7.2402819999999997
	.quad	0x4012e61565c2d278              # double 4.724691
	.quad	0x401111db877ab325              # double 4.2674390000000004
	.quad	0x401edfe43675ddd3              # double 7.7186440000000002
	.quad	0x4018a225742dcf46              # double 6.1583459999999999
	.quad	0x4022788f648c7193              # double 9.2354690000000002
	.quad	0x40168b0531982880              # double 5.6357619999999997
	.quad	0x401bc7c8d195896a              # double 6.9451020000000003
	.quad	0x4016bd91ab8e8ea4              # double 5.6851260000000003
	.quad	0x3ff0d031055b8994              # double 1.0508280000000001
	.quad	0x4023645154866a12              # double 9.6959330000000001
	.quad	0x401dfe82d7b634db              # double 7.4985460000000001
	.quad	0x4021ff1fbc5de9c0              # double 8.9982889999999997
	.quad	0x40066a7f8012dfd7              # double 2.8020010000000002
	.quad	0x4022a2d70e6f2e8c              # double 9.3180469999999999
	.quad	0x40183a272862f599              # double 6.0567900000000003
	.quad	0x3ffaf97edc7ef178              # double 1.6859120000000001
	.quad	0x40234b7110e453d2              # double 9.6473469999999999
	.quad	0x4023956733ebbfd7              # double 9.7918029999999998
	.quad	0x4010de9813879c41              # double 4.2173769999999999
	.quad	0x4022c362413db7f1              # double 9.3816089999999991
	.quad	0x401d04c9c90c4dec              # double 7.2546759999999999
	.quad	0x401f1df4c2b51bd6              # double 7.7792539999999999
	.quad	0x401d41db877ab325              # double 7.3143140000000004
	.quad	0x4014f0b73d188f43              # double 5.235074
	.quad	0x402369ea14057082              # double 9.7068639999999995
	.quad	0x402026f47b677f6b              # double 8.0760839999999998
	.quad	0x3fe0c20f6f08cc57              # double 0.52368899999999996
	.quad	0x3ffb2ffd1dcd7061              # double 1.6992160000000001
	.quad	0x4023874f722e1ac5              # double 9.7642779999999991
	.quad	0x3fd4160d887ebf23              # double 0.31384600000000001
	.quad	0x4003efc9bc771434              # double 2.4920840000000002
	.quad	0x401e9d6777079e5a              # double 7.653715
	.quad	0x400d8bac710cb296              # double 3.6932
	.quad	0x40006484944ed6fe              # double 2.0490810000000002
	.quad	0x4010d752977c88e8              # double 4.2102760000000004
	.quad	0x40203ca3400b88ca              # double 8.1184329999999996
	.quad	0x40237669f05ea24d              # double 9.7312770000000003
	.quad	0x401d76bce8533b10              # double 7.3659549999999996
	.quad	0x3ffaeed56b00ffda              # double 1.6833089999999999
	.quad	0x3fc46bacf7446f9c              # double 0.15953600000000001
	.quad	0x400305785f8d2e51              # double 2.3776709999999999
	.quad	0x4020cd4c33b53932              # double 8.4009719999999994
	.quad	0x401ca80e8c8abd5e              # double 7.1641180000000002
	.quad	0x4015afbefd00713f              # double 5.421627
	.quad	0x3ffcc1083dbc2331              # double 1.7971269999999999
	.quad	0x401008c692f6e829              # double 4.0085699999999997
	.quad	0x401ad38d1d8a5482              # double 6.7065929999999998
	.quad	0x401a41f36262cba7              # double 6.5644049999999998
	.quad	0x4000c2ab25b317f0              # double 2.0950530000000001
	.quad	0x402291b8ed1bf7ad              # double 9.2846139999999995
	.quad	0x400a0a83b1d0c804              # double 3.255134
	.quad	0x4023881cd5f99c39              # double 9.7658450000000005
	.quad	0x40132cf7446f9b99              # double 4.7939119999999997
	.quad	0x40138adddf43c7d6              # double 4.8856120000000001
	.quad	0x402039c0ca600b03              # double 8.1127990000000008
	.quad	0x40017db09a671ef3              # double 2.186372
	.quad	0x3ffe8b3b320535ca              # double 1.908992
	.quad	0x400a888377186552              # double 3.3166570000000002
	.quad	0x3fc02424a276b7ed              # double 0.12610299999999999
	.quad	0x401202018a43bb41              # double 4.5019590000000003
	.quad	0x3fd332873bc903ea              # double 0.29995899999999998
	.quad	0x4004e89a88ace24c              # double 2.6135760000000001
	.quad	0x4021362f9ca5bd94              # double 8.6058319999999994
	.quad	0x4012bd20afa2f05a              # double 4.6846949999999996
	.quad	0x3ff36da33bd9cae2              # double 1.214267
	.quad	0x40043570c564f97f              # double 2.5260940000000001
	.quad	0x4013c7210be9424e              # double 4.9444619999999997
	.quad	0x402004299d883ba3              # double 8.0081299999999995
	.quad	0x402056c5b078d930              # double 8.1694770000000005
	.quad	0x400b91276fb09204              # double 3.4458760000000002
	.quad	0x40203a4a05dd8f93              # double 8.1138460000000006
	.quad	0x3fe5be0157eed45f              # double 0.67944400000000005
	.quad	0x4022a131a8ef77f2              # double 9.3148319999999991
	.quad	0x40231dbad3a604e2              # double 9.5580660000000002
	.quad	0x4014b9f6ec5b078e              # double 5.1816060000000004
	.quad	0x401035fd04a2fcf0              # double 4.0527230000000003
	.quad	0x4016e7c4199fe436              # double 5.7263339999999996
	.quad	0x4020f57eed45e918              # double 8.4794839999999994
	.quad	0x3ffcf416bdb1a6d7              # double 1.8095920000000001
	.quad	0x40235ff1950331e4              # double 9.6873900000000006
	.quad	0x4022f94c660a2014              # double 9.4869109999999992
	.quad	0x3ffd1f2cb641700d              # double 1.820111
	.quad	0x4003644523f67f4e              # double 2.4239600000000001
	.quad	0x3ff9b8a4c1ebc83b              # double 1.6075790000000001
	.quad	0x3f9a6ce358298cc1              # double 0.025805999999999999
	.quad	0x4019afca42aed139              # double 6.4216699999999998
	.quad	0x4022a6b7cbb3c819              # double 9.3256209999999999
	.quad	0x402360d1526d8b1e              # double 9.6890970000000003
	.quad	0x40103188f42fe825              # double 4.0483739999999999
	.quad	0x402112cf7446f9ba              # double 8.5367390000000007
	.quad	0x40237e82730c6717              # double 9.7470890000000007
	.quad	0x402036a4a8c154ca              # double 8.1067250000000008
	.quad	0x4005656473471f79              # double 2.6745079999999999
	.quad	0x40155f10a99b6f5d              # double 5.3428370000000003
	.quad	0x401883bc4d22c882              # double 6.1286480000000001
	.quad	0x4023b1deefe4ffc9              # double 9.8474039999999991
	.quad	0x4014278e9f6a93f3              # double 5.0386300000000004
	.quad	0x40218244c7b02d5a              # double 8.7544310000000003
	.quad	0x401cc71e6cd29132              # double 7.1944520000000001
	.quad	0x4023b7d1351159c5              # double 9.8590180000000007
	.quad	0x4006465d7cb2d906              # double 2.7843580000000001
	.quad	0x3ff245af6c69b5a6              # double 1.1420129999999999
	.quad	0x401af38d1d8a5482              # double 6.7378429999999998
	.quad	0x3fefce5710880d80              # double 0.99393799999999999
	.quad	0x401a2c1615ebfa8f              # double 6.5430529999999996
	.quad	0x4002380a9de8b3b3              # double 2.2773639999999999
	.quad	0x400e056c508b32cf              # double 3.7526480000000002
	.quad	0x400121f644955b46              # double 2.1415829999999998
	.quad	0x4021f12c6ac215ba              # double 8.9710420000000006
	.quad	0x4018d9713ad5bee4              # double 6.2123460000000001
	.quad	0x3fe24e054690de09              # double 0.57202399999999998
	.quad	0x3fee24723aafff37              # double 0.94194900000000004
	.quad	0x40070eb463497b74              # double 2.88218
	.quad	0x401507bcc2938de7              # double 5.2575560000000001
	.quad	0x40175d6bebe1650a              # double 5.8412319999999998
	.quad	0x4017e3a57eaa2a0b              # double 5.9723110000000004
	.quad	0x401bef398e970718              # double 6.9836179999999999
	.quad	0x4020a079a2834d27              # double 8.313428
	.quad	0x40163c4007570c56              # double 5.5588379999999997
	.quad	0x4003c2c343b70ef5              # double 2.4700989999999998
	.quad	0x3fd69d30270f3882              # double 0.35334399999999999
	.quad	0x4005e2120e1f7d74              # double 2.7353860000000001
	.quad	0x40176d6d7e889c1b              # double 5.8568629999999997
	.quad	0x40096433d6c72192              # double 3.1739269999999999
	.quad	0x40146cd63cb81733              # double 5.1062859999999999
	.quad	0x4018934fc610f0e9              # double 6.143859
	.quad	0x401d10153bd16766              # double 7.2657059999999998
	.quad	0x4001c5553ef6b5d4              # double 2.2213539999999998
	.quad	0x4003bbd3804534bd              # double 2.4667119999999998
	.quad	0x401d87281fd9ba1b              # double 7.3819889999999999
	.quad	0x3ff4100713f077cd              # double 1.2539130000000001
	.quad	0x4000da5b0ff10ecb              # double 2.1066189999999998
	.quad	0x3fc3502ababead4f              # double 0.15088399999999999
	.quad	0x40111bc126a65cf6              # double 4.2771039999999996
	.quad	0x400d37a67a52ac75              # double 3.6521729999999999
	.quad	0x3ff13aa9b499d020              # double 1.0768219999999999
	.quad	0x401e9e93e1c9b414              # double 7.6548610000000004
	.quad	0x400ec7ce0fc2eba2              # double 3.8475609999999998
	.quad	0x4015067b5f1bef4a              # double 5.2563300000000002
	.quad	0x4022fa3465625a68              # double 9.4886809999999996
	.quad	0x40149d013a92a305              # double 5.1533249999999997
	.quad	0x400a3100a393ee5f              # double 3.273927
	.quad	0x4018e872b020c49c              # double 6.2270000000000003
	.quad	0x3ff8ec050bd87b57              # double 1.5576220000000001
	.quad	0x4008414057082492              # double 3.0318610000000001
	.quad	0x4023277574f722e2              # double 9.5770680000000006
	.quad	0x3fa7f62b6ae7d567              # double 0.046800000000000001
	.quad	0x4019e37e6f71a7e3              # double 6.472162
	.quad	0x400a7413122b7baf              # double 3.3066770000000001
	.quad	0x3fcca63b688bda94              # double 0.22382299999999999
	.quad	0x400f5fa1a0cf1801              # double 3.9216950000000002
	.quad	0x4023bed1394317ad              # double 9.8726900000000004
	.quad	0x4013a30f49491f2e              # double 4.9092380000000002
	.quad	0x400205d28d002e23              # double 2.2528429999999999
	.quad	0x3ffdb50092ccf6be              # double 1.85669
	.quad	0x3fdd19157abb8801              # double 0.454656
	.quad	0x3fd7d2135daad602              # double 0.372197
	.quad	0x401328e325d4a5df              # double 4.7899289999999999
	.quad	0x401f00ae10492360              # double 7.7506640000000004
	.quad	0x401616b053198288              # double 5.522157
	.quad	0x3faa2b5a20ddc619              # double 0.051111999999999998
	.quad	0x40233c26351deefe              # double 9.6174789999999994
	.quad	0x4018394d0dcfcc5c              # double 6.0559580000000004
	.quad	0x401fdbbd3804534c              # double 7.9645890000000001
	.quad	0x40075fd04a2fcefb              # double 2.9217840000000002
	.quad	0x4014cfab96f21f6d              # double 5.2028030000000003
	.quad	0x4007d735c182ecaf              # double 2.980083
	.quad	0x3ff513f39d1b2e5a              # double 1.3173710000000001
	.quad	0x4007622ccb3a2596              # double 2.9229370000000001
	.quad	0x4010294bbe4473cd              # double 4.0403279999999997
	.quad	0x400c8cdd0d8cb07d              # double 3.568781
	.quad	0x4010b94e5d5b24ea              # double 4.1809630000000002
	.quad	0x400d46748e475600              # double 3.659402
	.quad	0x4010a151611ba3ca              # double 4.1575369999999996
	.quad	0x4012ab62c77574f7              # double 4.6673689999999999
	.quad	0x401e5f62f9ca5bd9              # double 7.5931509999999997
	.quad	0x401523fd0d0678c0              # double 5.285145
	.quad	0x401d0fdbd2fa0d78              # double 7.2654870000000003
	.quad	0x401f2e21d96e9bbf              # double 7.7950509999999999
	.quad	0x401e2c8cd63cb817              # double 7.5435059999999998
	.quad	0x401467b2031ceaf2              # double 5.1012649999999997
	.quad	0x4013f7fb267c6b8b              # double 4.9921689999999996
	.quad	0x401958d477bbf940              # double 6.336748
	.quad	0x4001615b1422ccb4              # double 2.1725370000000002
	.quad	0x400e9d09e12a51e3              # double 3.8266789999999999
	.quad	0x3ffa157bc7f77af6              # double 1.6302449999999999
	.quad	0x4023ea26c3b927d4              # double 9.9573269999999993
	.quad	0x401d7cb31c219eb6              # double 7.3717769999999998
	.quad	0x400f611fd5885d31              # double 3.9224239999999999
	.quad	0x3fe8f1e8e6080735              # double 0.77952999999999995
	.quad	0x401b70d4562e09ff              # double 6.8601850000000004
	.quad	0x4016aad5bee3d5fe              # double 5.6668310000000002
	.quad	0x3ff4106cca2db61c              # double 1.2540100000000001
	.quad	0x3fd11c8eabffcdab              # double 0.26736799999999999
	.quad	0x3ff6993e5fb71fbc              # double 1.4124129999999999
	.quad	0x4019f0aed99cbee8              # double 6.485042
	.quad	0x401d9d97b30f8c65              # double 7.403899
	.quad	0x401bccbe61cffeb0              # double 6.9499449999999996
	.quad	0x401308f92af9a8ce              # double 4.7587630000000001
	.quad	0x40229034d26fa3fd              # double 9.2816530000000004
	.quad	0x4020e9f8c21e1d21              # double 8.4569759999999992
	.quad	0x3fe9ef2a5a469d73              # double 0.81044499999999997
	.quad	0x4019b20ccff21b3b              # double 6.4238770000000001
	.quad	0x402073f39d1b2e5a              # double 8.2264680000000006
	.quad	0x400951950331e3a8              # double 3.1648350000000001
	.quad	0x3fffd14e3bcd35a8              # double 1.9885999999999999
	.quad	0x4007bddc1e7967cb              # double 2.967705
	.quad	0x40236668e3ef2841              # double 9.7000189999999992
	.quad	0x401127e9531550ca              # double 4.2889759999999999
	.quad	0x3fffb8327674d163              # double 1.98247
	.quad	0x401991b1960fa15e              # double 6.3922790000000003
	.quad	0x4011c67fd3f5b5fa              # double 4.4438469999999999
	.quad	0x401c4bce4217d285              # double 7.0740290000000003
	.quad	0x4019e5e4e69f05ea              # double 6.4745059999999999
	.quad	0x3ffc39f77292c493              # double 1.7641519999999999
	.quad	0x401573b7d84901d2              # double 5.3630060000000004
	.quad	0x3fdf07570c564f98              # double 0.484823
	.quad	0x4018ce6eeb702603              # double 6.2015950000000002
	.quad	0x3ffe11f81a5870da              # double 1.8793869999999999
	.quad	0x3fc006d938151a43              # double 0.12520899999999999
	.quad	0x4001aeff5c6c11a1              # double 2.210448
	.quad	0x4014979e16d6dc1a              # double 5.1480639999999998
	.quad	0x401c5a7935760392              # double 7.0883529999999997
	.quad	0x40142a0ba1f4b1ee              # double 5.0410599999999999
	.quad	0x400d82acb85a4f01              # double 3.688806
	.quad	0x40106f84cad57bc8              # double 4.108905
	.quad	0x4023d3e3c105186e              # double 9.9138470000000005
	.quad	0x3fe7dc2b0ea18373              # double 0.74562600000000001
	.quad	0x3fb2ee0f3cb3e575              # double 0.073944999999999997
	.quad	0x40142991bc558644              # double 5.0405949999999997
	.quad	0x401739695d91ab8f              # double 5.8060660000000004
	.quad	0x400159e30014f8b6              # double 2.1688900000000002
	.quad	0x3ff07d5992428d43              # double 1.0306029999999999
	.quad	0x400b11bd61f5be5e              # double 3.3836620000000002
	.quad	0x4018ac01a36e2eb2              # double 6.1679750000000002
	.quad	0x40111f81626b2f23              # double 4.280767
	.quad	0x401633aa369fcf3e              # double 5.5504540000000002
	.quad	0x40055d68405b39e2              # double 2.6706089999999998
	.quad	0x4005bf609dcf8940              # double 2.7184460000000001
	.quad	0x4012d131ec0b5675              # double 4.7042919999999997
	.quad	0x4011f5171e29b6b3              # double 4.4893460000000003
	.quad	0x4015330f49491f2e              # double 5.2998630000000002
	.quad	0x401bffc71d606317              # double 6.9997829999999999
	.quad	0x40208b0d0edc3bd6              # double 8.2715840000000007
	.quad	0x40068616b54e2b06              # double 2.8154729999999999
	.quad	0x401d674c4cdfaca3              # double 7.3508769999999997
	.quad	0x401caddf00abf76a              # double 7.1697959999999998
	.quad	0x400604de3b8a19ca              # double 2.7523770000000001
	.quad	0x4004c352eb5f5f0b              # double 2.5953729999999999
	.quad	0x3fff6bebe1650a46              # double 1.963848
	.quad	0x401960a17b0f6ad7              # double 6.3443659999999999
	.quad	0x401f7aade657b84e              # double 7.8698040000000002
	.quad	0x401e8849cb252ce0              # double 7.6330939999999998
	.quad	0x401b7a46e08f2171              # double 6.8694110000000004
	.quad	0x400f33e468cac4b5              # double 3.9003380000000001
	.quad	0x401dee9f2778140e              # double 7.4830290000000002
	.quad	0x3ff1808d8ec95bff              # double 1.093885
	.quad	0x4019ffa2ad3e920c              # double 6.499644
	.quad	0x4014b6ec17ebaf10              # double 5.1786349999999999
	.quad	0x400e878a6dacabc5              # double 3.816182
	.quad	0x4003237ac3eb7cbb              # double 2.3923239999999999
	.quad	0x40209b4ce3de614a              # double 8.3033210000000004
	.quad	0x401a2d5e071c53f4              # double 6.5443040000000003
	.quad	0x4020b5bd944aa540              # double 8.3549620000000004
	.quad	0x400cfa79fec99f1b              # double 3.6223030000000001
	.quad	0x40107be121ee6751              # double 4.1209759999999998
	.quad	0x40220465a57646ae              # double 9.0085879999999996
	.quad	0x401871c087442c80              # double 6.1110860000000002
	.quad	0x401a684c271fff7a              # double 6.6018530000000002
	.quad	0x401cfc0724b76f6d              # double 7.2461209999999996
	.quad	0x401f816e7a311e86              # double 7.876398
	.quad	0x401c17efe0ce0b91              # double 7.0233759999999998
	.quad	0x401982517e77d524              # double 6.3772640000000003
	.quad	0x4013bbc72e275ab8              # double 4.9333770000000001
	.quad	0x401a15b4edb2f662              # double 6.5211980000000001
	.quad	0x4011bcebfec13b9f              # double 4.4344939999999999
	.quad	0x4012a8982cb20fb2              # double 4.6646429999999999
	.quad	0x4022cd2cbea4ebdd              # double 9.4007319999999996
	.quad	0x4007ecfaeff5c6c1              # double 2.990713
	.quad	0x401b5df612407464              # double 6.8417589999999997
	.quad	0x400ce1c4fc1df330              # double 3.610239
	.quad	0x40180e41d4b6a61a              # double 6.0139230000000001
	.quad	0x4015ed25247cb70b              # double 5.4815870000000002
	.quad	0x400ffc981beb1811              # double 3.9983369999999998
	.quad	0x400519bb2788db05              # double 2.6375639999999998
	.quad	0x4019af2734f82f51              # double 6.4210479999999999
	.quad	0x4019cdac68a936c6              # double 6.4508530000000004
	.quad	0x402122f07bfe7e20              # double 8.5682410000000004
	.quad	0x3ffcfe27179bfdf8              # double 1.812049
	.quad	0x40195327243137b0              # double 6.3312039999999996
	.quad	0x4017bcea28fe260b              # double 5.9344869999999998
	.quad	0x3fee75caf2d7f951              # double 0.95187900000000003
	.quad	0x4007d0b8cfbfc654              # double 2.976915
	.quad	0x401ef59af9ebe9c9              # double 7.7398490000000004
	.quad	0x3fda5c03361565c3              # double 0.41186600000000001
	.quad	0x3ff51be8ff327aa7              # double 1.3193140000000001
	.quad	0x4023615c209246bf              # double 9.6901559999999999
	.quad	0x3fb80980b242070c              # double 0.093895000000000006
	.quad	0x40124e308787485e              # double 4.5763569999999998
	.quad	0x401e14d8fd5cb791              # double 7.520359
	.quad	0x400110be0ded288d              # double 2.133175
	.quad	0x3ff94ca4f440af1d              # double 1.5812120000000001
	.quad	0x40019e3eaf6837f8              # double 2.2022680000000001
	.quad	0x4022efc5ef62f9ca              # double 9.4683069999999994
	.quad	0x4002592a737110e4              # double 2.2935379999999999
	.quad	0x400a2e3c536d655e              # double 3.2725759999999999
	.quad	0x4021489c7ffde721              # double 8.6418189999999999
	.quad	0x4012adc2b0ea1837              # double 4.6696879999999998
	.quad	0x401429bf162ae4b0              # double 5.0407679999999999
	.quad	0x4017f876188b1141              # double 5.9926380000000004
	.quad	0x401628472c0e7bc4              # double 5.5393340000000002
	.quad	0x4020545e4e69f05f              # double 8.1647820000000007
	.quad	0x3fc447cb70ac3a86              # double 0.158441
	.quad	0x4012b441355475a3              # double 4.6760299999999999
	.quad	0x401d1a4052d666aa              # double 7.2756360000000004
	.quad	0x4006d9103c8e25c8              # double 2.855988
	.quad	0x40158f59ccfaeff6              # double 5.3899910000000002
	.quad	0x3fecaec8d5c74752              # double 0.89633600000000002
	.quad	0x3ffbc47f562174c5              # double 1.735473
	.quad	0x40099f8a0902de01              # double 3.2029000000000001
	.quad	0x4020b22b5a20ddc6              # double 8.3479869999999998
	.quad	0x3fe78943e1006078              # double 0.73550599999999999
	.quad	0x4022c1df1172ef0b              # double 9.3786550000000001
	.quad	0x3fd8ea0fd3b29a1c              # double 0.38928600000000002
	.quad	0x402375e3da2f8bdf              # double 9.7302540000000004
	.quad	0x40231e8cef672b88              # double 9.5596689999999995
	.quad	0x401211333b96af04              # double 4.5167970000000004
	.quad	0x3ff38fe69270b06c              # double 1.2226319999999999
	.quad	0x4016cdf9378ee286              # double 5.7011459999999996
	.quad	0x401f1df2ecf20642              # double 7.7792469999999998
	.quad	0x4022ee74299d883c              # double 9.4657300000000006
	.quad	0x3fe2d24399b2c40d              # double 0.588167
	.quad	0x40173b69db65ecc4              # double 5.8080210000000001
	.quad	0x400f9692b3cc4ac7              # double 3.9485220000000001
	.quad	0x401b2a37ef5a964f              # double 6.7912290000000004
	.quad	0x401997c200c0f020              # double 6.3982010000000002
	.quad	0x4022e6d330941c82              # double 9.4508299999999998
	.quad	0x400bffddebd9018e              # double 3.4999349999999998
	.quad	0x400fe1cbccf28c7a              # double 3.985252
	.quad	0x4013a16e37154003              # double 4.9076469999999999
	.quad	0x400d019220ff5409              # double 3.6257670000000002
	.quad	0x402097be553ac4f8              # double 8.2963740000000001
	.quad	0x40131b50b0f27bb3              # double 4.776675
	.quad	0x4008c215b9a5a89c              # double 3.0947680000000002
	.quad	0x401dc9bbf0dc768e              # double 7.447006
	.quad	0x401c88effe2a3cea              # double 7.1337279999999996
	.quad	0x4013da6c1a048e04              # double 4.9633029999999998
	.quad	0x4013f4bba12b5e53              # double 4.9889970000000003
	.quad	0x4022374b1ee24357              # double 9.1079950000000007
	.quad	0x4023afa9e2bcf91a              # double 9.8430929999999996
	.quad	0x40199301a79fec9a              # double 6.393561
	.quad	0x4018dddaceee0f3d              # double 6.2166550000000003
	.quad	0x4021b91361dc93ea              # double 8.8614759999999997
	.quad	0x400d5f02c4d65e46              # double 3.671392
	.quad	0x400df905c0336156              # double 3.7465929999999998
	.quad	0x4003e1e8a2ec28b3              # double 2.4853070000000002
	.quad	0x4021acf3343fa2ad              # double 8.8377929999999996
	.quad	0x3fe8278af3e468cb              # double 0.75482700000000003
	.quad	0x3fc72641b328b6d8              # double 0.18085499999999999
	.quad	0x40207d80a17b0f6b              # double 8.2451220000000003
	.quad	0x4014f159817b95a3              # double 5.2356930000000004
	.quad	0x3fd393682730c671              # double 0.30587199999999998
	.quad	0x3fdec58eeae9ee46              # double 0.48080800000000001
	.quad	0x4004146dc5d63886              # double 2.5099749999999998
	.quad	0x40062b7e4de3b8a2              # double 2.7712370000000002
	.quad	0x40121f3061c79b35              # double 4.5304580000000003
	.quad	0x3fe435935fc3b4f6              # double 0.63153999999999999
	.quad	0x3ffec0cc78e9f6a9              # double 1.9220699999999999
	.quad	0x3fc414488c60cbf3              # double 0.15686900000000001
	.quad	0x4009d589efd86a90              # double 3.2292670000000001
	.quad	0x401d60fa9c12f09e              # double 7.3447060000000004
	.quad	0x4023a19a62ed3522              # double 9.8156309999999998
	.quad	0x4014ef4f0d844d01              # double 5.2336999999999998
	.quad	0x4012fc322291fb40              # double 4.7462850000000003
	.quad	0x40237a32096787cf              # double 9.7386630000000007
	.quad	0x3ffbd9641f644956              # double 1.7405740000000001
	.quad	0x4010c94f26aec072              # double 4.1965909999999997
	.quad	0x401cd425aee631f9              # double 7.2071750000000003
	.quad	0x3fcf12018a43bb41              # double 0.24273700000000001
	.quad	0x40206aa38b8ae31d              # double 8.2082789999999992
	.quad	0x40146193b3a68b1a              # double 5.0952900000000003
	.quad	0x3ff208f217093101              # double 1.127184
	.quad	0x401c4c36544fe36d              # double 7.0744259999999999
	.quad	0x401db069a4df47fa              # double 7.4222780000000004
	.quad	0x3fec95421c044285              # double 0.89322000000000001
	.quad	0x401effb7e90ff972              # double 7.7497249999999998
	.quad	0x401967e28240b780              # double 6.3514499999999998
	.quad	0x401a94d0dcfcc5b9              # double 6.6453280000000001
	.quad	0x3f411276fb09203a              # double 5.2099999999999998E-4
	.quad	0x400ef2e62131a8ef              # double 3.8686029999999998
	.quad	0x4015b2a66dbd72bd              # double 5.4244630000000003
	.quad	0x4020a5afd113836b              # double 8.3236070000000009
	.quad	0x4000b54c985f06f7              # double 2.0885250000000002
	.quad	0x4009776f6d762520              # double 3.1833179999999999
	.quad	0x3fff3da0dfdef848              # double 1.9525459999999999
	.quad	0x401b0bc5154866a1              # double 6.7614939999999999
	.quad	0x401a0131ec0b5675              # double 6.5011669999999997
	.quad	0x3fdb651b0ccbc05d              # double 0.42804599999999998
	.quad	0x3fcfd09e12a51e32              # double 0.248554
	.quad	0x401f1a6aca793576              # double 7.775798
	.quad	0x400283736cdf266c              # double 2.3141850000000002
	.quad	0x4013d29e4d5d80e5              # double 4.9556820000000004
	.quad	0x4005ee503fb37436              # double 2.7413639999999999
	.quad	0x3fd5e78e1932d6ed              # double 0.34225800000000001
	.quad	0x401cef75d9a0f0a6              # double 7.2338480000000001
	.quad	0x4001f672324c8366              # double 2.2453349999999999
	.quad	0x40210d6d3b6cbd98              # double 8.5262239999999991
	.quad	0x400af1df761cbccf              # double 3.3681019999999999
	.quad	0x3ffcbfa7eb6bf445              # double 1.796791
	.quad	0x3fd0780baa582dbe              # double 0.25732699999999997
	.quad	0x400dce74f2f123c4              # double 3.7258089999999999
	.quad	0x402151c886162f16              # double 8.6597329999999992
	.quad	0x3ff69744f5d35654              # double 1.411931
	.quad	0x4011dc743201040c              # double 4.465287
	.quad	0x4021730dd82fd75e              # double 8.7247149999999998
	.quad	0x4017a73f316e3715              # double 5.9133269999999998
	.quad	0x4019b219652bd3c3              # double 6.4239249999999997
	.quad	0x3fd64934267839ce              # double 0.34821800000000003
	.quad	0x40174afff36ac647              # double 5.8232419999999996
	.quad	0x4014d856605ee569              # double 5.2112670000000003
	.quad	0x400a0ec0724b76f7              # double 3.2572030000000001
	.quad	0x401eff3ba775fb2f              # double 7.7492510000000001
	.quad	0x4010cd0f1f57b41c              # double 4.200253
	.quad	0x401e8ab14ec204f3              # double 7.6354420000000002
	.quad	0x401fb378ee286727              # double 7.9252659999999996
	.quad	0x3fe6d4024b33daf9              # double 0.71338000000000001
	.quad	0x402169cbab649d39              # double 8.7066320000000008
	.quad	0x40234cc660a20147              # double 9.6499509999999997
	.quad	0x400cc6bdf4c2b51c              # double 3.5970420000000001
	.quad	0x4023c9159c497742              # double 9.8927429999999994
	.quad	0x3fe1e8ff327aa68f              # double 0.55969199999999997
	.quad	0x401a81650a45d420              # double 6.6263620000000003
	.quad	0x3fe8ee5eedcc20d5              # double 0.77909799999999996
	.quad	0x4014c5b530ced4e5              # double 5.1930740000000002
	.quad	0x4022dd206c8711d8              # double 9.4318880000000007
	.quad	0x3ff6d5f3519bd406              # double 1.4272339999999999
	.quad	0x3ff4966be7afa722              # double 1.286724
	.quad	0x4002278c0053e2d6              # double 2.2693099999999999
	.quad	0x40062cfb762d83c7              # double 2.7719640000000001
	.quad	0x4020256a9c560c7c              # double 8.0730789999999998
	.quad	0x400d2887229e9079              # double 3.6447889999999998
	.quad	0x4017f1322f2734f8              # double 5.9855429999999998
	.quad	0x3fd9b1ab0856e697              # double 0.40146900000000002
	.quad	0x3fdbf1455219a848              # double 0.43660100000000002
	.quad	0x40209b5371971c11              # double 8.3033710000000003
	.quad	0x400013111f0c34c2              # double 2.0093100000000002
	.quad	0x3fd316b11c6d1e11              # double 0.29826000000000003
	.quad	0x4014ababa7b9170d              # double 5.1676469999999997
	.quad	0x3fe0e876e1deacc9              # double 0.52837699999999999
	.quad	0x401efc8fb86f47b6              # double 7.7466419999999996
	.quad	0x4021ae4c0df58c09              # double 8.8404240000000005
	.quad	0x40097a2cecc814d7              # double 3.1846559999999999
	.quad	0x401f96b69db65ecc              # double 7.8971809999999998
	.quad	0x4020594b380cb6c8              # double 8.1744020000000006
	.quad	0x3ff3eff6d330941d              # double 1.2460850000000001
	.quad	0x3fdce5082cf52b91              # double 0.45147900000000002
	.quad	0x4022132bba98eda2              # double 9.0374429999999997
	.quad	0x400855171e29b6b3              # double 3.0415480000000001
	.quad	0x4012937e2c55c960              # double 4.6440359999999998
	.quad	0x401f8c4545846e8f              # double 7.8869829999999998
	.quad	0x401d9602c9081c2e              # double 7.3964949999999998
	.quad	0x3fd675818c5c9a35              # double 0.35092200000000001
	.quad	0x401f7e2b063e07a3              # double 7.8732110000000004
	.quad	0x401d6309c7ffde72              # double 7.3467169999999999
	.quad	0x4012626bf8769ec3              # double 4.5961150000000002
	.quad	0x3fe59f9ce8d972cd              # double 0.67573399999999995
	.quad	0x40189ed3d859c8c9              # double 6.1551049999999998
	.quad	0x400bd131ec0b5675              # double 3.4771459999999998
	.quad	0x400872378ab0c88a              # double 3.0557699999999999
	.quad	0x4016668a0d349be9              # double 5.600136
	.quad	0x40017dd76683c298              # double 2.1864460000000001
	.quad	0x40094f30a4e379b7              # double 3.1636669999999998
	.quad	0x40009fa333764f12              # double 2.0779480000000001
	.quad	0x4020eb1db445ed4a              # double 8.4592109999999998
	.quad	0x40227303e20ccff2              # double 9.2246389999999998
	.quad	0x401c406b37867f0b              # double 7.0629090000000003
	.quad	0x402293804534bd77              # double 9.2880880000000001
	.quad	0x3ff948333fc86cec              # double 1.5801270000000001
	.quad	0x401bfc8bc9cd3e0c              # double 6.9966270000000002
	.quad	0x401e9fca85caafbc              # double 7.6560459999999999
	.quad	0x4022ab161a1db878              # double 9.3341530000000005
	.quad	0x40096fe8ab4fa483              # double 3.179643
	.quad	0x40178c21187e7c07              # double 5.8868450000000001
	.quad	0x3ff4941743e963dc              # double 1.2861549999999999
	.quad	0x40225a30db6a1e82              # double 9.1761540000000004
	.quad	0x4023bbe39f77292c              # double 9.8669709999999994
	.quad	0x3fe573cd573647bb              # double 0.67038600000000004
	.quad	0x401677cfe5860136              # double 5.6170039999999997
	.quad	0x40199b5b70691ea8              # double 6.4017160000000004
	.quad	0x40207528ae74f2f1              # double 8.2288259999999998
	.quad	0x40221045132f87ad              # double 9.0317769999999999
	.quad	0x4023c9e8e6080735              # double 9.8943549999999991
	.quad	0x4020e7603925bb7b              # double 8.4519059999999993
	.quad	0x4023e12f901083dc              # double 9.9398160000000004
	.quad	0x4014d7d4e09784ec              # double 5.2107729999999997
	.quad	0x40070f2e05ccc89b              # double 2.882412
	.quad	0x4021be2cba732df5              # double 8.871435
	.quad	0x400effb6134ce3de              # double 3.8748589999999998
	.quad	0x4019eb04ee7c49fd              # double 6.4795109999999996
	.quad	0x4009c7a398201cd6              # double 3.22248
	.quad	0x4014cbd6a593a2e0              # double 5.1990610000000004
	.quad	0x40227495182a9931              # double 9.2277000000000005
	.quad	0x4020e9d6f112fd33              # double 8.4567180000000004
	.quad	0x4023855ac03ff690              # double 9.7604579999999999
	.quad	0x40159648c7192ea5              # double 5.3967619999999998
	.quad	0x402297b352a84381              # double 9.2962900000000008
	.quad	0x401f783f91e646f1              # double 7.8674299999999997
	.quad	0x401fad1aeb3dd11c              # double 7.9190480000000001
	.quad	0x40030bab649d388b              # double 2.3806980000000002
	.quad	0x4002478fabda0dfe              # double 2.284942
	.quad	0x3fea85ee568a5050              # double 0.82884899999999995
	.quad	0x3ff1d337eb28d866              # double 1.1140669999999999
	.quad	0x401fcd413122b7bb              # double 7.950444
	.quad	0x4016070de8f6ceff              # double 5.5068890000000001
	.quad	0x400b5d028a1dfb94              # double 3.4204150000000002
	.quad	0x4009f150dae3e6c5              # double 3.2428300000000001
	.quad	0x401147ce0fc2eba2              # double 4.3201219999999996
	.quad	0x4010accf28c79f66              # double 4.1687589999999997
	.quad	0x401961fd1569f490              # double 6.3456919999999997
	.quad	0x3fe288ebcc6c54bd              # double 0.57921400000000001
	.quad	0x4015a3bb40b34e77              # double 5.4098940000000004
	.quad	0x4021d020e6299525              # double 8.9065010000000004
	.quad	0x401e2733a8a3f898              # double 7.5382829999999998
	.quad	0x3fed40e1719f7f8d              # double 0.91417000000000004
	.quad	0x401cf8d21bc126a6              # double 7.2429889999999997
	.quad	0x401efa63b688bda9              # double 7.7445209999999997
	.quad	0x3ff1b6598e10cf5b              # double 1.107019
	.quad	0x40126531550ca1cf              # double 4.598821
	.quad	0x4022688051c9f72f              # double 9.2041039999999992
	.quad	0x40176dba908a265f              # double 5.8571569999999999
	.quad	0x401dcc3bd5992429              # double 7.4494470000000002
	.quad	0x4018668db8bac711              # double 6.1001500000000002
	.quad	0x4017d1eeaa6d2674              # double 5.955012
	.quad	0x4016a349be8ff328              # double 5.6594610000000003
	.quad	0x40149c165907d912              # double 5.1524289999999997
	.quad	0x40046355043e5322              # double 2.548502
	.quad	0x4022afa54c554328              # double 9.3430579999999991
	.quad	0x40094e9707182236              # double 3.1633740000000001
	.quad	0x3ffd1ce8d972cd7d              # double 1.819558
	.quad	0x4007c949a5657fb7              # double 2.9732850000000002
	.quad	0x40030fdda8bd230c              # double 2.3827470000000002
	.quad	0x401105d249e44fa0              # double 4.2556849999999997
	.quad	0x4002ded06fef7c24              # double 2.3587959999999999
	.quad	0x401df07d0aed99cc              # double 7.4848520000000001
	.quad	0x40234b2fa93af74d              # double 9.6468480000000003
	.quad	0x400bcd256798958e              # double 3.4751690000000002
	.quad	0x400be1d19157abb9              # double 3.4852630000000002
	.quad	0x4016967b5f1bef4a              # double 5.6469550000000002
	.quad	0x4021f2363b256ffc              # double 8.9730699999999998
	.quad	0x4023e061e92923e6              # double 9.9382470000000005
	.quad	0x4012871b0468448d              # double 4.631939
	.quad	0x401c6b1af3a14cec              # double 7.1045949999999998
	.quad	0x3fe45d701d9f4d38              # double 0.63640600000000003
	.quad	0x401648800eae18ad              # double 5.5708010000000003
	.quad	0x401901287c200c0f              # double 6.251131
	.quad	0x400da164840e171a              # double 3.703805
	.quad	0x3fee8fd199bb2789              # double 0.95505600000000002
	.quad	0x401fdc964628027e              # double 7.9654170000000004
	.quad	0x4022359f4d37c137              # double 9.1047309999999992
	.quad	0x40218c254a3c6434              # double 8.7737219999999993
	.quad	0x401b904d551d68c7              # double 6.8909200000000004
	.quad	0x4023fe846a5d6bec              # double 9.9971040000000002
	.quad	0x4023a8f3882278d1              # double 9.8299830000000003
	.quad	0x40207e22a2c23748              # double 8.2463580000000007
	.quad	0x402142dd15f02c4d              # double 8.6305929999999993
	.quad	0x401ab1f2990f301f              # double 6.6737770000000003
	.quad	0x40080586876e1deb              # double 3.0026980000000001
	.quad	0x3fecaff8ec0f8833              # double 0.89648099999999997
	.quad	0x4002b2bdc26dce3a              # double 2.3372760000000001
	.quad	0x402396b00ffda405              # double 9.7943119999999996
	.quad	0x4008d0c3d25247cb              # double 3.1019359999999998
	.quad	0x400bbe8ccdd93c47              # double 3.4680420000000001
	.quad	0x4021ec0a06e9ff0d              # double 8.9610140000000005
	.quad	0x3fe09274e22a2c23              # double 0.51787799999999995
	.quad	0x402249d96e9bbf0e              # double 9.1442370000000004
	.quad	0x3fefd8665e02ea96              # double 0.995166
	.quad	0x4008a39042d8c2a4              # double 3.0798649999999999
	.quad	0x401331c8a7a41e58              # double 4.7986170000000001
	.quad	0x4016d4898f605ab4              # double 5.7075560000000003
	.quad	0x3ffc4f3eccc46951              # double 1.769347
	.quad	0x4019c0270f388228              # double 6.4376490000000004
	.quad	0x3feaf0867ad8e432              # double 0.84186099999999997
	.quad	0x40014f709b738e6d              # double 2.163789
	.quad	0x40155bec2480e8c9              # double 5.3397680000000003
	.quad	0x40220d6f97679032              # double 9.0262419999999999
	.quad	0x4013110a137f38c5              # double 4.7666399999999998
	.quad	0x40069f8b1572580c              # double 2.8279019999999999
	.quad	0x400463da2f8bdec6              # double 2.548756
	.quad	0x40112f6db940fece              # double 4.2963170000000002
	.quad	0x40170bc5154866a1              # double 5.7614939999999999
	.quad	0x401992263d816acf              # double 6.3927240000000003
	.quad	0x4016dd4fdf3b645a              # double 5.7161249999999999
	.quad	0x40106b46fdeb52ca              # double 4.1047630000000002
	.quad	0x400ba5c3dee78184              # double 3.45594
	.quad	0x4012370e6f2e8c05              # double 4.5537660000000004
	.quad	0x401ff0ccbc05d52c              # double 7.9851559999999999
	.quad	0x3fffa490a350d280              # double 1.9776769999999999
	.quad	0x3fec9029ae4f3344              # double 0.892598
	.quad	0x40208b6cdf266ba5              # double 8.2723150000000008
	.quad	0x3fe845aa2e3c536d              # double 0.75850399999999996
	.quad	0x3ff3414940bbb1f2              # double 1.2034389999999999
	.quad	0x401e63a1d323fee3              # double 7.5972970000000001
	.quad	0x401cf6c54bcf0b6b              # double 7.2409869999999996
	.quad	0x4004f99029ae4f33              # double 2.6218569999999999
	.quad	0x40035123c42a66dc              # double 2.4146190000000001
	.quad	0x401cac981beb1811              # double 7.1685489999999996
	.quad	0x40209084406c00da              # double 8.2822589999999998
	.quad	0x4021256d5cfaacda              # double 8.5731000000000002
	.quad	0x4005e1c8a7a41e58              # double 2.7352460000000001
	.quad	0x3ff67e9fadafd114              # double 1.4059140000000001
	.quad	0x40231ac55c96030c              # double 9.5522869999999997
	.quad	0x4015927136a400fc              # double 5.3930100000000003
	.quad	0x40216ae3a3a8e714              # double 8.7087679999999991
	.quad	0x40093492ff4ba51a              # double 3.150671
	.quad	0x401a0aec0724b76f              # double 6.5106659999999996
	.quad	0x40152c460ed80a18              # double 5.2932360000000003
	.quad	0x40087c93ea2d2fe4              # double 3.060829
	.quad	0x4001a0a5accd5305              # double 2.2034410000000002
	.quad	0x400b0258d5842b73              # double 3.3761459999999999
	.quad	0x4010268a0d349be9              # double 4.037636
	.quad	0x4006ea59c065b63d              # double 2.8644289999999999
	.quad	0x400821d4b6a619db              # double 3.0165190000000002
	.quad	0x4011f9dece571088              # double 4.494014
	.quad	0x401e4dc0db2702a3              # double 7.5759309999999997
	.quad	0x4001ab4959e62563              # double 2.2086359999999998
	.quad	0x400ff7ad4b2745bf              # double 3.9959359999999999
	.quad	0x4008d07d912556d2              # double 3.1018020000000002
	.quad	0x401cc656abde3fbc              # double 7.1936900000000001
	.quad	0x401d772d5e071c54              # double 7.366384
	.quad	0x40107e7ff583a53c              # double 4.1235350000000004
	.quad	0x400011001d5c3159              # double 2.0083009999999999
	.quad	0x3fd45d0b73d188f4              # double 0.31817899999999999
	.quad	0x3fe642224edf6124              # double 0.695573
	.quad	0x3ff85bcdbbe0157f              # double 1.522413
	.quad	0x3fdaeb4202d9cf14              # double 0.42060900000000001
	.quad	0x40208ef284167a96              # double 8.2791940000000004
	.quad	0x400949fd7a13c255              # double 3.1611280000000002
	.quad	0x4021b52b0a6fc58b              # double 8.8538440000000005
	.quad	0x401be4651f3e89a9              # double 6.9730420000000004
	.quad	0x400a7ae147ae147b              # double 3.3100000000000001
	.quad	0x401f023897204296              # double 7.7521690000000003
	.quad	0x40198ca3e7d13511              # double 6.3873439999999997
	.quad	0x4019c17720c8cd64              # double 6.4389310000000002
	.quad	0x400b5068123810e9              # double 3.4142610000000002
	.quad	0x3ff5839de481f538              # double 1.344633
	.quad	0x401d88d8a979e16d              # double 7.3836389999999996
	.quad	0x401a77ce52deca25              # double 6.6169979999999997
	.quad	0x3fd94906034f3fd9              # double 0.39508199999999999
	.quad	0x4017fd45a5fc7e6b              # double 5.9973359999999998
	.quad	0x4020a8348f53c57a              # double 8.3285260000000001
	.quad	0x402329f1ae2da555              # double 9.5819220000000004
	.quad	0x4010534b0e1b4bb6              # double 4.0813410000000001
	.quad	0x4016028240b78034              # double 5.5024499999999996
	.quad	0x40182ff0cbaf965b              # double 6.0468169999999999
	.quad	0x40146ff0cbaf965b              # double 5.1093169999999999
	.quad	0x40201a237cdcca71              # double 8.0510520000000003
	.quad	0x3fafcd898b2e9ccb              # double 0.062114999999999997
	.quad	0x4022acd37c1376d5              # double 9.3375509999999995
	.quad	0x401a2993d5347a5b              # double 6.5406029999999999
	.quad	0x3ff66e5abc0e38a8              # double 1.401942
	.quad	0x401960917d6b65aa              # double 6.3443050000000003
	.quad	0x3ff1d37c1376d549              # double 1.1141319999999999
	.quad	0x4008cab3edd8b60f              # double 3.098976
	.quad	0x3fe00e1d6494d50f              # double 0.50172300000000003
	.quad	0x401eb8522ea0fd3b              # double 7.6800009999999998
	.quad	0x40223f4d594f26af              # double 9.1236370000000004
	.quad	0x40080815e39713ad              # double 3.0039479999999998
	.quad	0x400284d3bf2f5558              # double 2.3148569999999999
	.quad	0x401c98e25c810a57              # double 7.1493010000000004
	.quad	0x401f547b677f6b1a              # double 7.8325019999999999
	.quad	0x401fb657fb69984a              # double 7.92807
	.quad	0x401aa5d67ba237ce              # double 6.6619510000000002
	.quad	0x40026e2867275686              # double 2.3037879999999999
	.quad	0x40099ab21815a07b              # double 3.2005349999999999
	.quad	0x3fef18090b417ca2              # double 0.97168399999999999
	.quad	0x40230064ece9a2c6              # double 9.5007699999999993
	.quad	0x4021a2efb2aae297              # double 8.8182349999999996
	.quad	0x40210ecacd184c27              # double 8.5288909999999998
	.quad	0x4009b2c7325918a0              # double 3.212294
	.quad	0x401e0c436fc158fb              # double 7.5119759999999997
	.quad	0x3ff9ac6cdaf4adbc              # double 1.6045959999999999
	.quad	0x4017da9ac36544fe              # double 5.9634809999999998
	.quad	0x401ec051c9f72f77              # double 7.687812
	.quad	0x402105da48b65237              # double 8.511431
	.quad	0x400f87160956c0d7              # double 3.94096
	.quad	0x40165df82b1f687b              # double 5.5917669999999999
	.quad	0x3ffe4357a355043e              # double 1.8914409999999999
	.quad	0x3ffd4d87724fa8b5              # double 1.8314280000000001
	.quad	0x4019407fed20296b              # double 6.3129879999999998
	.quad	0x401432178f68be2f              # double 5.0489179999999996
	.quad	0x4003dffb480a5acd              # double 2.4843660000000001
	.quad	0x3ff55baa1511dffc              # double 1.3348789999999999
	.quad	0x4023bffeb074a772              # double 9.8749900000000004
	.quad	0x4021720f9096bb99              # double 8.7227750000000004
	.quad	0x400ec4d4cb9ecf64              # double 3.8461090000000002
	.quad	0x3fdf381d7dbf4880              # double 0.48780000000000001
	.quad	0x4019cf345069a4df              # double 6.4523479999999998
	.quad	0x401e9afc04c8bc9d              # double 7.6513520000000001
	.quad	0x402107b267c6b8b7              # double 8.5150330000000007
	.quad	0x4009ac1db0142f62              # double 3.209041
	.quad	0x401eb6887a8d64d8              # double 7.678255
	.quad	0x40161347a5b0ff11              # double 5.5188280000000001
	.quad	0x4022f7863beec398              # double 9.4834460000000007
	.quad	0x4017af12c27a6373              # double 5.9209699999999996
	.quad	0x3ffcc79f666234a8              # double 1.7987359999999999
	.quad	0x3fdffc86cebbba56              # double 0.49978800000000001
	.quad	0x3ffca69df97aaac1              # double 1.790678
	.quad	0x40238629b6b2af14              # double 9.7620369999999994
	.quad	0x40036f911cf355ce              # double 2.4294760000000002
	.quad	0x3fd007af20ea5b53              # double 0.250469
	.quad	0x40175112fd32c626              # double 5.8291740000000001
	.quad	0x4000c35f80991794              # double 2.0953970000000002
	.quad	0x4022317b95a29414              # double 9.0966459999999997
	.quad	0x400d8d0dcfcc5b8e              # double 3.6938740000000001
	.quad	0x3fcccf28c79f6662              # double 0.22507199999999999
	.quad	0x4017f50331e3a7db              # double 5.9892700000000003
	.quad	0x401164373f316e37              # double 4.3478669999999999
	.quad	0x3fddbe7296f6512b              # double 0.46474900000000002
	.quad	0x3fe84e5d5b24e9c4              # double 0.75956599999999996
	.quad	0x4023a9bda5119ce0              # double 9.8315249999999992
	.quad	0x401115d52c16df40              # double 4.2713210000000004
	.quad	0x40190894812be48a              # double 6.2583789999999997
	.quad	0x400afc71d6063172              # double 3.3732639999999998
	.quad	0x401782b734b51373              # double 5.8776520000000003
	.quad	0x402054fa69be09bb              # double 8.1659729999999993
	.quad	0x4015f31c64ba94bc              # double 5.4874130000000001
	.quad	0x4001a80389f83be6              # double 2.2070379999999998
	.quad	0x40182461309c7ffe              # double 6.0355270000000001
	.quad	0x401851919ac79703              # double 6.0796570000000001
	.quad	0x40212da22f6a50d7              # double 8.5891280000000005
	.quad	0x3ffbb0c88a47ecff              # double 1.7306600000000001
	.quad	0x4008fcddd6e04c06              # double 3.1234700000000002
	.quad	0x400824638c975297              # double 3.0177679999999998
	.quad	0x3ffaa931876188b1              # double 1.666307
	.quad	0x4019cf901083dbc2              # double 6.4526979999999998
	.quad	0x40173c22ee41919b              # double 5.8087270000000002
	.quad	0x3fcaa9cdc443914f              # double 0.20830699999999999
	.quad	0x3ffb887ebf22c01e              # double 1.7208239999999999
	.quad	0x4017cc5ac471b478              # double 5.9495649999999998
	.quad	0x401391a437824d4d              # double 4.8922280000000002
	.quad	0x40011a48301a79ff              # double 2.1378330000000001
	.quad	0x4015a8140dd3fe19              # double 5.4141389999999996
	.quad	0x4013613c68661ae7              # double 4.844957
	.quad	0x4015d8d9f90539fc              # double 5.4617690000000003
	.quad	0x401071fafc8b007a              # double 4.1113090000000003
	.quad	0x401aa4a3c64345d0              # double 6.6607810000000001
	.quad	0x4013bb1d4f9c1f86              # double 4.9327290000000001
	.quad	0x3ff7fdfd2630ec31              # double 1.499509
	.quad	0x400e56c508b32ce9              # double 3.7923680000000002
	.quad	0x401374fdf3b645a2              # double 4.8642500000000002
	.quad	0x401ffb9ecf638002              # double 7.9957229999999999
	.quad	0x40145bebe1650a46              # double 5.0897670000000002
	.quad	0x4023c43a647fdc59              # double 9.8832579999999996
	.quad	0x4013c36f3b213e3e              # double 4.9408539999999999
	.quad	0x40137920c069e7fb              # double 4.8682889999999999
	.quad	0x3fe24febd09e12a5              # double 0.57225599999999999
	.quad	0x4012e33e78e1932d              # double 4.7219179999999996
	.quad	0x3feb530f062d40ab              # double 0.85388900000000001
	.quad	0x4002114f483cafb4              # double 2.2584520000000001
	.quad	0x402198a5ce5b4246              # double 8.7981400000000001
	.quad	0x40237a355043e532              # double 9.7386879999999998
	.quad	0x3ff50af2d7f950b9              # double 1.3151729999999999
	.quad	0x3fdf333764f11b61              # double 0.48750100000000002
	.quad	0x4020a38cfbfc6541              # double 8.3194350000000004
	.quad	0x40217b3e1437c569              # double 8.7407079999999997
	.quad	0x400b0a686e7e62dc              # double 3.3800819999999998
	.quad	0x400f3ba8826aa8eb              # double 3.9041299999999999
	.quad	0x40155a647fdc5932              # double 5.3382740000000002
	.quad	0x3ff8c026cc1ca3a5              # double 1.5469120000000001
	.quad	0x3fe5845564b662fe              # double 0.672404
	.quad	0x4008ad573647baaa              # double 3.0846390000000001
	.quad	0x401d0b9170d62bf1              # double 7.2612969999999999
	.quad	0x401b5e43aa79bbae              # double 6.8420550000000002
	.quad	0x40229ebe1650a45d              # double 9.3100439999999995
	.quad	0x401a2e878fabda0e              # double 6.545439
	.quad	0x401e0c1f42bb6673              # double 7.511838
	.quad	0x40227c6fbd273d5c              # double 9.2430400000000005
	.quad	0x4023c83f705857b0              # double 9.8911090000000002
	.quad	0x3fd42f661f18c9fb              # double 0.31539299999999998
	.quad	0x4011242cc2d6a9c5              # double 4.2853269999999997
	.quad	0x4020c26aca793576              # double 8.379721
	.quad	0x4020b931876188b1              # double 8.3617059999999999
	.quad	0x3ff1ee17a02fb5d0              # double 1.120628
	.quad	0x400194d834091c08              # double 2.1976779999999998
	.quad	0x40091a26a22b3893              # double 3.137769
	.quad	0x4020151244a6223e              # double 8.0411549999999998
	.quad	0x400422b0ea18372e              # double 2.5169389999999998
	.quad	0x4017a6a161e4f766              # double 5.912725
	.quad	0x40041fd71b046845              # double 2.5155470000000002
	.quad	0x40124d8904f6dfc6              # double 4.5757180000000002
	.quad	0x3fe607faa044ae86              # double 0.68847400000000003
	.quad	0x400e050268900c52              # double 3.7524459999999999
	.quad	0x40159341e14bdfd2              # double 5.3938059999999997
	.quad	0x3ff64f722e1ac57e              # double 1.394396
	.quad	0x402383838c111ada              # double 9.7568629999999992
	.quad	0x4012ef61aa3f034b              # double 4.733771
	.quad	0x401de42f61ed5ae2              # double 7.4728370000000002
	.quad	0x400a85143bf72713              # double 3.3149799999999998
	.quad	0x4023f3ff04577d95              # double 9.9765549999999993
	.quad	0x4016d07f23cc8de3              # double 5.7036100000000003
	.quad	0x3ffc1aad601ffb48              # double 1.756513
	.quad	0x40107ca25529fe00              # double 4.1217129999999997
	.quad	0x40109e957470eb25              # double 4.1548670000000003
	.quad	0x400d54fd6d7e889c              # double 3.666499
	.quad	0x3ffe9f86e3b46fdf              # double 1.9139470000000001
	.quad	0x401ba7f6f4be835e              # double 6.9140280000000001
	.quad	0x400877481b21c476              # double 3.058243
	.quad	0x40232f1e29b6b2af              # double 9.5920269999999998
	.quad	0x3ffb3901083dbc23              # double 1.701417
	.quad	0x3fcaacb85a4f00ef              # double 0.208396
	.quad	0x401624cad57bc7f7              # double 5.5359299999999996
	.quad	0x40000dcca70d1fa3              # double 2.0067379999999999
	.quad	0x401ac6394face67d              # double 6.6935779999999996
	.quad	0x4020fdf8f4730404              # double 8.4960400000000007
	.quad	0x3ff48638c9752978              # double 1.282769
	.quad	0x4012c85f06f69446              # double 4.6956749999999996
	.quad	0x4015dba908a265f1              # double 5.464512
	.quad	0x4018aaa3f034b0e2              # double 6.1666410000000003
	.quad	0x4000db9bed30f063              # double 2.1072310000000001
	.quad	0x4020230e1b4bb5e1              # double 8.0684670000000001
	.quad	0x401029e16d6dc1a4              # double 4.0408989999999996
	.quad	0x40212561f5be5d9e              # double 8.5730129999999996
	.quad	0x40061ad18d25edd0              # double 2.7630949999999999
	.quad	0x401d48dfbd6a593a              # double 7.3211659999999998
	.quad	0x40239006f262888b              # double 9.7813029999999994
	.quad	0x4015ff1a1986b9c3              # double 5.499123
	.quad	0x3fe84bcf0b6b6e0d              # double 0.75925399999999998
	.quad	0x401b225742dcf462              # double 6.7835359999999998
	.quad	0x3fc8109d0635a427              # double 0.18800700000000001
	.quad	0x40180433d6c72192              # double 6.0041039999999999
	.quad	0x4000562e09fe8683              # double 2.0420799999999999
	.quad	0x3fe738d3f1843c3a              # double 0.72568699999999997
	.quad	0x401b6134ce3de615              # double 6.8449280000000003
	.quad	0x400d138cda6e75ff              # double 3.6345459999999998
	.quad	0x401c07d06bbdbe3c              # double 7.0076309999999999
	.quad	0x4020c3e35c5b4aa9              # double 8.3825939999999992
	.quad	0x402161003eea209b              # double 8.6894550000000006
	.quad	0x400b3e40420f6f09              # double 3.4053960000000001
	.quad	0x401f587379746024              # double 7.8363779999999998
	.quad	0x400616e158750c1c              # double 2.7611720000000002
	.quad	0x402108605681ecd5              # double 8.5163600000000006
	.quad	0x4014c1efb6dca07f              # double 5.1893909999999996
	.quad	0x3fd297396d0917d7              # double 0.29048000000000002
	.quad	0x400bd3d6c7219221              # double 3.478437
	.quad	0x400717396d0917d7              # double 2.8863400000000001
	.quad	0x4000f434a01abd1b              # double 2.1192410000000002
	.quad	0x4021319bf5946c33              # double 8.5968929999999997
	.quad	0x401a937c1376d549              # double 6.6440279999999996
	.quad	0x4021c047b24638c9              # double 8.8755469999999992
	.quad	0x4020f18dac258d58              # double 8.4717839999999995
	.quad	0x4008eb8d82342246              # double 3.1150159999999998
	.quad	0x4011a544bb1af3a1              # double 4.4113949999999997
	.quad	0x3ff20f13cee9dd7f              # double 1.128681
	.quad	0x40061928e0c9d9d3              # double 2.7622849999999999
	.quad	0x40151c31593e5fb7              # double 5.2775319999999999
	.quad	0x402288c5a8155d5f              # double 9.2671329999999994
	.quad	0x4006b72474538ef3              # double 2.8394249999999999
	.quad	0x401d538f36694899              # double 7.331601
	.quad	0x401f02aa5c5f7c67              # double 7.7526029999999996
	.quad	0x401daa0dbad3a605              # double 7.4160680000000001
	.quad	0x40182bab649d388b              # double 6.0426460000000004
	.quad	0x401d090abb44e50c              # double 7.2588299999999997
	.quad	0x3fe60763a1900820              # double 0.68840199999999996
	.quad	0x401211dda059a73b              # double 4.5174469999999998
	.quad	0x401313c74fb549f9              # double 4.7693149999999997
	.quad	0x40205838e29f9ce9              # double 8.1723090000000003
	.quad	0x40203a9e90795f67              # double 8.1144909999999992
	.quad	0x4019953b4b2fa93b              # double 6.395734
	.quad	0x401b74a558ea7ce1              # double 6.863912
	.quad	0x4010b21ea35935fc              # double 4.1739449999999998
	.quad	0x401c9b499d0203e6              # double 7.1516479999999998
	.quad	0x40216c1e14bdfd26              # double 8.7111669999999997
	.quad	0x4015d4db59578a2b              # double 5.4578680000000004
	.quad	0x40227adcd2d44dcb              # double 9.2399660000000008
	.quad	0x4018d37154003255              # double 6.2064870000000001
	.quad	0x4020baec4a4095f2              # double 8.3650839999999995
	.quad	0x3fd50bb6ed677708              # double 0.32884000000000002
	.quad	0x401e0bde82d7b635              # double 7.5115910000000001
	.quad	0x40088df47f993d53              # double 3.0693139999999999
	.quad	0x4002259fb1e18efc              # double 2.2683710000000001
	.quad	0x401bc606748e4756              # double 6.943384
	.quad	0x3fc79f23465625a7              # double 0.18454400000000001
	.quad	0x3fc26801711947d0              # double 0.14379900000000001
	.quad	0x4018450acc0bdcad              # double 6.0674239999999999
	.quad	0x4003f409a2403148              # double 2.4941589999999998
	.quad	0x4001120c8cd63cb8              # double 2.133813
	.quad	0x4017a274e22a2c23              # double 5.9086489999999996
	.quad	0x40206e70c1333b97              # double 8.2157040000000006
	.quad	0x3ff97743632c1f43              # double 1.5916170000000001
	.quad	0x400e75bff04577d9              # double 3.8074949999999999
	.quad	0x400c7558a7610279              # double 3.5572979999999998
	.quad	0x40011a48301a79ff              # double 2.1378330000000001
	.quad	0x401133fe9fadafd1              # double 4.3007759999999999
	.quad	0x402001b413986339              # double 8.0033270000000005
	.quad	0x40084daa0cae642c              # double 3.037922
	.quad	0x40230589ce4a7b4e              # double 9.5108169999999994
	.quad	0x401e20728e92d55a              # double 7.5316869999999998
	.quad	0x401327952d234eba              # double 4.7886550000000003
	.quad	0x3fe83543aeab7996              # double 0.75650200000000001
	.quad	0x40120e2d1f1cfbb9              # double 4.5138439999999997
	.quad	0x401718a86d71f362              # double 5.7740799999999997
	.quad	0x4023a5a72a7bd48d              # double 9.8235410000000005
	.quad	0x40157c7eae5bc87e              # double 5.3715770000000003
	.quad	0x3ff541b10fd7e458              # double 1.328538
	.quad	0x40217ec1e364bec6              # double 8.7475729999999992
	.quad	0x40180d15ad106ee3              # double 6.012778
	.quad	0x400ff0caa326e115              # double 3.9925739999999998
	.quad	0x400c5d33d29563aa              # double 3.545509
	.quad	0x40110804534bd76f              # double 4.2578290000000001
	.quad	0x40221bf1e8e60807              # double 9.0545799999999996
	.quad	0x40217fe47991bc56              # double 8.7497900000000008
	.quad	0x4016cdac258d5843              # double 5.7008520000000003
	.quad	0x40164ba5e353f7cf              # double 5.5738750000000001
	.quad	0x4021b8def416bdb2              # double 8.8610760000000006
	.quad	0x401ee49ecb31c21a              # double 7.7232620000000001
	.quad	0x3fd71dcd7060bb2c              # double 0.36119400000000002
	.quad	0x401a0fba01eeed89              # double 6.515358
	.quad	0x40090a5f84cad57c              # double 3.1300650000000001
	.quad	0x401acdfa43fe5c92              # double 6.7011500000000002
	.quad	0x400acbbd3804534c              # double 3.3494820000000001
	.quad	0x401d56d2674080fa              # double 7.3347870000000004
	.quad	0x3ffbe2d83c6c97d9              # double 1.742882
	.quad	0x3ff84a1059ea5721              # double 1.5180819999999999
	.quad	0x402193cee9dd7ecc              # double 8.7886880000000004
	.quad	0x401a317d2849cb25              # double 6.5483289999999998
	.quad	0x402260848387df5d              # double 9.1885110000000001
	.quad	0x4016e4c0df58c08b              # double 5.7233919999999996
	.quad	0x401b641d084e831b              # double 6.8477670000000002
	.quad	0x402069513f8db489              # double 8.2056979999999999
	.quad	0x3ff4442fa5093965              # double 1.2666470000000001
	.quad	0x40013000c9539b89              # double 2.1484390000000002
	.quad	0x40203369b9d7fd82              # double 8.1004159999999992
	.quad	0x401d9f6cacd184c2              # double 7.4056879999999996
	.quad	0x4021b2413db7f173              # double 8.8481539999999992
	.quad	0x4002176922d948dc              # double 2.261431
	.quad	0x3ffb4944ed6fda83              # double 1.7053879999999999
	.quad	0x40055edaec4a4096              # double 2.671316
	.quad	0x4017df483cafb3b7              # double 5.9680489999999997
	.quad	0x4007a6defc7a3982              # double 2.95648
	.quad	0x401d6b8f57f737da              # double 7.3550389999999997
	.quad	0x3fd129bae46cfc83              # double 0.26817200000000002
	.quad	0x401892e557de0d67              # double 6.1434530000000001
	.quad	0x40216ee0b0af5fd4              # double 8.7165579999999991
	.quad	0x400bdd5e4a383276              # double 3.4830899999999998
	.quad	0x40112767d34df04e              # double 4.2884820000000001
	.quad	0x4004508cc575c076              # double 2.5393309999999998
	.quad	0x401d7c8eef1bac2e              # double 7.3716390000000001
	.quad	0x401a2a24cc6822ff              # double 6.541156
	.quad	0x400b46d2674080fa              # double 3.4095810000000002
	.quad	0x402316f3d3a1d324              # double 9.544829
	.quad	0x400cf28ae74f2f12              # double 3.6184289999999999
	.quad	0x401caf15a4acf313              # double 7.1709810000000003
	.quad	0x3fece8ad68837718              # double 0.90340299999999996
	.quad	0x400ccdca07f66e87              # double 3.6004830000000001
	.quad	0x40230a747d805e5f              # double 9.5204199999999996
	.quad	0x4000421fafc8b008              # double 2.0322870000000002
	.quad	0x4015da0663c74fb5              # double 5.4629149999999997
	.quad	0x40150990afe60c39              # double 5.259341
	.quad	0x3fd440bfe3b03e21              # double 0.31645200000000001
	.quad	0x400b7bb0e5e67946              # double 3.4353959999999999
	.quad	0x4019ff06705c896e              # double 6.4990480000000002
	.quad	0x4021438c111ada77              # double 8.6319280000000003
	.quad	0x40045340d4dc65c7              # double 2.540651
	.quad	0x4004350f40e5a35d              # double 2.5259079999999998
	.quad	0x3ff99c38b04ab607              # double 1.6006400000000001
	.quad	0x4011abf6a0dbad3a              # double 4.4179329999999997
	.quad	0x3ffccd4dc65c7043              # double 1.8001229999999999
	.quad	0x40207c1a048e043a              # double 8.2423859999999998
	.quad	0x4006862ed352220c              # double 2.8155190000000001
	.quad	0x401979f51697f1fa              # double 6.3690990000000003
	.quad	0x401615f30e7ff584              # double 5.5214350000000003
	.quad	0x40110c23315d701e              # double 4.2618530000000003
	.quad	0x401278bcdfefbf40              # double 4.6179079999999999
	.quad	0x40162ba237cdcca7              # double 5.542611
	.quad	0x4000c046c764ae00              # double 2.0938850000000002
	.quad	0x40232b88a8b08dd2              # double 9.5850270000000002
	.quad	0x4011f4c016052503              # double 4.4890140000000001
	.quad	0x3fed1426fe718a87              # double 0.90871000000000002
	.quad	0x40046dfce3150dae              # double 2.5537049999999999
	.quad	0x40204c17ca2120e2              # double 8.1486190000000001
	.quad	0x40018b6d86ec17ec              # double 2.1930800000000001
	.quad	0x4003434c1a8ac5c1              # double 2.4078599999999999
	.quad	0x4021e79fcb0c026d              # double 8.9523910000000004
	.quad	0x40153efc7a398202              # double 5.3115100000000002
	.quad	0x4021e6c8f7553693              # double 8.9507519999999996
	.quad	0x4021705985ad538b              # double 8.7194330000000004
	.quad	0x3ff60f68be2f7b18              # double 1.378762
	.quad	0x40070dd052934acb              # double 2.881745
	.quad	0x402207ae7924af0c              # double 9.015003
	.quad	0x400fc1c79b34a44c              # double 3.9696189999999998
	.quad	0x4022dfd34df04ddb              # double 9.4371589999999994
	.quad	0x400911c2a0232096              # double 3.1336719999999998
	.quad	0x4012244955b4677b              # double 4.5354359999999998
	.quad	0x401e3f74cd31769b              # double 7.5619690000000003
	.quad	0x4013a4b838c111ae              # double 4.9108590000000003
	.quad	0x400679192641b329              # double 2.8091300000000001
	.quad	0x402270ba1f4b1ee2              # double 9.2201699999999995
	.quad	0x4002f7531db445ed              # double 2.3707639999999999
	.quad	0x401c18e8a71de69b              # double 7.0243250000000002
	.quad	0x400fa96ededaec4a              # double 3.9577309999999999
	.quad	0x4022154cb9ecf638              # double 9.041601
	.quad	0x402008644523f67f              # double 8.0163899999999995
	.quad	0x40121591cd1c7de5              # double 4.521064
	.quad	0x4021dd82dbe7f2c3              # double 8.932639
	.quad	0x400110f6ad70e6f3              # double 2.133283
	.quad	0x401291704ff4341a              # double 4.6420300000000001
	.quad	0x401a70e6299524c0              # double 6.6102530000000002
	.quad	0x40068cc25072085b              # double 2.81873
	.quad	0x400e6a1f8e3ac0c6              # double 3.8018179999999999
	.quad	0x40121a76534373f3              # double 4.5258419999999999
	.quad	0x4006321815a07b35              # double 2.7744599999999999
	.quad	0x40106161a1db877b              # double 4.0950990000000003
	.quad	0x4002e467be553ac5              # double 2.361526
	.quad	0x401248b5cbff4773              # double 4.5710059999999997
	.quad	0x4003b439de481f54              # double 2.4630010000000002
	.quad	0x400332b884406c01              # double 2.3997660000000001
	.quad	0x4020f396af038e2a              # double 8.475759
	.quad	0x3ffbba20578e5c4f              # double 1.7329410000000001
	.quad	0x3ff5a59f2ba9d1f6              # double 1.352935
	.quad	0x401c3eed02cd39da              # double 7.0614509999999999
	.quad	0x4018e3d03968d75a              # double 6.2224740000000001
	.quad	0x40064a57a786c227              # double 2.7863000000000002
	.quad	0x40229a64a16a4873              # double 9.3015489999999996
	.quad	0x4023d0b524399b2c              # double 9.9076319999999995
	.quad	0x3fe635f5f0b28523              # double 0.69408700000000001
	.quad	0x401bd764adff822c              # double 6.9603450000000002
	.quad	0x3ff59c714fce746d              # double 1.3506940000000001
	.quad	0x401b11dabe27179c              # double 6.767436
	.quad	0x40149a2163fdd65a              # double 5.1505179999999999
	.quad	0x4021826aa8eb4635              # double 8.7547200000000007
	.quad	0x401169fc6da44849              # double 4.3535019999999998
	.quad	0x4012a929670196d9              # double 4.665197
	.quad	0x4022fadadb8348f5              # double 9.4899509999999995
	.quad	0x401cb9fe86833c60              # double 7.181635
	.quad	0x40143c9ff92f2b67              # double 5.0592040000000003
	.quad	0x4020aa3c64345cff              # double 8.3324920000000002
	.quad	0x4023af1f57b41bfc              # double 9.8420360000000002
	.quad	0x401c4d73c9257860              # double 7.0756370000000004
	.quad	0x40175af89c5e6ff8              # double 5.8388390000000001
	.quad	0x4006f40fecdd0d8d              # double 2.8691710000000001
	.quad	0x3fd83eb399f5dfec              # double 0.37882700000000002
	.quad	0x40238946a1a500d6              # double 9.7681170000000002
	.quad	0x4010a15ce9e5e248              # double 4.1575810000000004
	.quad	0x4023f2e642bf9831              # double 9.9744130000000001
	.quad	0x401126390c9107fb              # double 4.2873270000000003
	.quad	0x401a3d9b1b79d90a              # double 6.560162
	.quad	0x3fdc460ed80a17b1              # double 0.441776
	.quad	0x401f1b56b8737974              # double 7.7766979999999997
	.quad	0x400c76fd21ff2e49              # double 3.5581
	.quad	0x401ea4d1a6506141              # double 7.6609559999999996
	.quad	0x3ff59bc44bf4cb19              # double 1.3505290000000001
	.quad	0x4021273e89a88ace              # double 8.5766489999999997
	.quad	0x40223fb5286b5914              # double 9.1244289999999992
	.quad	0x40206038e29f9ce9              # double 8.1879340000000003
	.quad	0x402188f4b61fe21e              # double 8.7674920000000007
	.quad	0x4017af53825e13b2              # double 5.9212170000000004
	.quad	0x400e89835158b828              # double 3.817145
	.quad	0x400de032db1e9f27              # double 3.7344719999999998
	.quad	0x4020afc4e2f37fbf              # double 8.343299
	.quad	0x40141b7c7820a30e              # double 5.0268420000000003
	.quad	0x4020026117720c8d              # double 8.0046470000000003
	.quad	0x401db35935fc3b4f              # double 7.4251449999999997
	.quad	0x3feb55757d5a9eb2              # double 0.854182
	.quad	0x401ca0fdc1615ec0              # double 7.1572180000000003
	.quad	0x3fe55db1209edbf9              # double 0.66768700000000003
	.quad	0x401ebd7e45803cd1              # double 7.6850519999999997
	.quad	0x3fe2fe32a0663c75              # double 0.59353
	.quad	0x4010dc0f88333fc8              # double 4.2149029999999996
	.quad	0x3ff9b68cef672b88              # double 1.6070679999999999
	.quad	0x4009cae31d712a0f              # double 3.2240660000000001
	.quad	0x401c537ef5a964e9              # double 7.0815390000000003
	.quad	0x4017461f5be5d9e4              # double 5.818479
	.quad	0x4020b716d2aa5c5f              # double 8.3575959999999991
	.quad	0x3ffa1011904b3c3e              # double 1.6289229999999999
	.quad	0x3ff338e6d15ad107              # double 1.201392
	.quad	0x402059142b302f73              # double 8.1739820000000005
	.quad	0x3ff6a088d6d3b6cc              # double 1.414193
	.quad	0x4011d42f1ed17c5f              # double 4.457211
	.quad	0x401e560285ec3dab              # double 7.5839939999999996
	.quad	0x4023116052502eec              # double 9.5339379999999991
	.quad	0x401d88919ef954eb              # double 7.3833679999999999
	.quad	0x4010e92684cf073a              # double 4.2276860000000003
	.quad	0x401c61acde19fc2b              # double 7.0953860000000004
	.quad	0x401cff5558212945              # double 7.2493489999999996
	.quad	0x4003310ba6266fd6              # double 2.3989479999999999
	.quad	0x3fe142efd438d1d9              # double 0.53942100000000004
	.quad	0x4000565ecc3e3194              # double 2.042173
	.quad	0x401ab214f0520d13              # double 6.673908
	.quad	0x4022eb061c79b34a              # double 9.4590309999999995
	.quad	0x3ff941beb18116ec              # double 1.578551
	.quad	0x4019b821af7d30ad              # double 6.4298159999999998
	.quad	0x4004cc332f01754b              # double 2.599707
	.quad	0x4015cca5bd944aa5              # double 5.4498509999999998
	.quad	0x40227cee9dd7ecbb              # double 9.2440079999999991
	.quad	0x4006ea2ec28b2a6b              # double 2.864347
	.quad	0x40178a5f84cad57c              # double 5.8851300000000002
	.quad	0x400e82a5614df8b1              # double 3.8137919999999998
	.quad	0x4021adef1fddebd9              # double 8.839715
	.quad	0x40232861c79b34a4              # double 9.5788709999999994
	.quad	0x3ffb0f2becedd484              # double 1.6912039999999999
	.quad	0x3fc306c43f5f9160              # double 0.148644
	.quad	0x400d8d477bbf93ff              # double 3.6939839999999999
	.quad	0x401a030caa326e11              # double 6.5029779999999997
	.quad	0x402387e889c1b542              # double 9.7654460000000007
	.quad	0x40143f77f27fe4bd              # double 5.0619810000000003
	.quad	0x4012a6e19b90ea9e              # double 4.6629699999999996
	.quad	0x40023e8ee6b8305e              # double 2.2805460000000002
	.quad	0x400cc26c3b927d46              # double 3.5949330000000002
	.quad	0x4023c31e3a7daa50              # double 9.8810900000000004
	.quad	0x4008b1b36bd2b6f2              # double 3.0867680000000002
	.quad	0x401ba571d1d4738a              # double 6.9115669999999998
	.quad	0x401a8f0307f23cc9              # double 6.6396600000000001
	.quad	0x3ff32e2a80064a9d              # double 1.198771
	.quad	0x3ffc880d801b4352              # double 1.7832159999999999
	.quad	0x40179dcbddb9841b              # double 5.9040980000000003
	.quad	0x401266a93f290abb              # double 4.6002549999999998
	.quad	0x4005560d0247021d              # double 2.667017
	.quad	0x3fd2a04d12018a44              # double 0.29103400000000001
	.quad	0x40204acba732df50              # double 8.1460849999999994
	.quad	0x401346976bc1effa              # double 4.818937
	.quad	0x3ff32e85b9e8c47a              # double 1.198858
	.quad	0x3ffb574d594f26af              # double 1.7088140000000001
	.quad	0x40053bf8b9baa151              # double 2.6542829999999999
	.quad	0x400940e27e0ef998              # double 3.156682
	.quad	0x40122aa1511dffc5              # double 4.5416309999999998
	.quad	0x4017fafd5454152b              # double 5.995107
	.quad	0x401d4a8869c66d37              # double 7.3227859999999998
	.quad	0x4023d56da0168b5d              # double 9.9168520000000004
	.quad	0x4022ccf0307f23cd              # double 9.4002700000000007
	.quad	0x401cb11f4f50a02c              # double 7.1729710000000004
	.quad	0x401c23c4f3ba7760              # double 7.0349310000000003
	.quad	0x3ff9c96249a133c2              # double 1.611666
	.quad	0x40226817dae81883              # double 9.2033070000000006
	.quad	0x40225ed549731099              # double 9.1852210000000003
	.quad	0x40068008e9b38d61              # double 2.8125170000000002
	.quad	0x400f0b20fb224aae              # double 3.8804340000000002
	.quad	0x4007fb677f6b1a2a              # double 2.9977559999999999
	.quad	0x4007e5803cd141a7              # double 2.9870610000000002
	.quad	0x40058bc83a96d4c3              # double 2.6932529999999999
	.quad	0x40205f7c02afdda9              # double 8.1864930000000005
	.quad	0x3f7a6612839042d9              # double 0.0064450000000000002
	.quad	0x400c41d4b6a619db              # double 3.5321440000000002
	.quad	0x401e0bc59b8023a7              # double 7.5114960000000001
	.quad	0x40026025bfad2999              # double 2.2969469999999998
	.quad	0x400c930b5aa71583              # double 3.5717989999999999
	.quad	0x3fe07036c9c0a8d2              # double 0.51369799999999999
	.quad	0x3ffcbc98a222d517              # double 1.796044
	.quad	0x401ae0b73d188f43              # double 6.719449
	.quad	0x4020ec8c5004fb12              # double 8.4620080000000009
	.quad	0x400e7256798958da              # double 3.8058290000000001
	.quad	0x3fc6121682f94424              # double 0.172427
	.quad	0x4014ecc35ce18266              # double 5.2312139999999996
	.quad	0x402093c0c1fc8f32              # double 8.2885799999999996
	.quad	0x3fd7c25072085b18              # double 0.37123499999999998
	.quad	0x3fee43009b30728f              # double 0.94567900000000005
	.quad	0x402275f5cf2495e1              # double 9.2303909999999991
	.quad	0x4002487f455a7d24              # double 2.285399
	.quad	0x40104185cee17a03              # double 4.063987
	.quad	0x4017de1da7b0b392              # double 5.9669100000000004
	.quad	0x40220e0bb2bba98f              # double 9.0274330000000003
	.quad	0x400b41882adc4c9d              # double 3.4069980000000002
	.quad	0x400cca1c68ec52a4              # double 3.598687
	.quad	0x40071ae4f3343fa3              # double 2.8881320000000001
	.quad	0x4022b266ba493c8a              # double 9.3484400000000001
	.quad	0x401e6bd512ec6bcf              # double 7.6053050000000004
	.quad	0x3fd2029f16b11c6d              # double 0.28140999999999999
	.quad	0x402191641f644956              # double 8.7839670000000005
	.quad	0x400f3157abb8800f              # double 3.8990930000000001
	.quad	0x401735cd4ed2cbea              # double 5.8025409999999997
	.quad	0x3ff1daeb3dd11be7              # double 1.115947
	.quad	0x4023a96851223183              # double 9.8308739999999996
	.quad	0x4020a1ffd60e94ee              # double 8.3164049999999996
	.quad	0x4023a68c692f6e83              # double 9.8252900000000007
	.quad	0x4021e533f42352eb              # double 8.9476619999999993
	.quad	0x401779e492bc2fc7              # double 5.8690360000000004
	.quad	0x3ff32222d5171e2a              # double 1.1958340000000001
	.quad	0x40203250b524399b              # double 8.0982719999999997
	.quad	0x4019e1f8a0902de0              # double 6.470675
	.quad	0x40131b4c7f349386              # double 4.7766590000000004
	.quad	0x4023906b15f88fc9              # double 9.7820669999999996
	.quad	0x4014c4ab606b7aa2              # double 5.1920599999999997
	.quad	0x401460edc3bd5992              # double 5.0946569999999998
	.quad	0x40229f0a808c825a              # double 9.3106270000000002
	.quad	0x3ff66759ab6d00b4              # double 1.4002319999999999
	.quad	0x3fe6189374bc6a7f              # double 0.6905
	.quad	0x4017c233df2a9d62              # double 5.9396509999999996
	.quad	0x3fe459d55e6bc622              # double 0.63596600000000003
	.quad	0x400e4d3bf2f55582              # double 3.787712
	.quad	0x400036fb8f57f738              # double 2.0268470000000001
	.quad	0x4020a32db1e9f278              # double 8.3187080000000009
	.quad	0x4020aedcc20d562a              # double 8.3415280000000003
	.quad	0x40108f4491298890              # double 4.1399100000000004
	.quad	0x401caad96a6a0126              # double 7.1668450000000004
	.quad	0x4014facfb762d83c              # double 5.2449329999999996
	.quad	0x400db8b60f1b25f6              # double 3.7151909999999999
	.quad	0x3fee3a98eda22f6a              # double 0.94465299999999996
	.quad	0x40234e412cf0f9d3              # double 9.6528410000000004
	.quad	0x4000938c5436b8fa              # double 2.0720450000000001
	.quad	0x3fe53f487fcb923a              # double 0.66397499999999998
	.quad	0x4021c7b2aae29739              # double 8.8900349999999992
	.quad	0x401b8885d31337eb              # double 6.8833229999999999
	.quad	0x4008a1d3aa369fcf              # double 3.0790169999999999
	.quad	0x3ffbed7518b0d0ee              # double 1.7454730000000001
	.quad	0x402184d099e0e736              # double 8.759404
	.quad	0x400fbee2c98e53eb              # double 3.9682059999999999
	.quad	0x401c96ca46e08f21              # double 7.1472559999999996
	.quad	0x40119a5bd944aa54              # double 4.400741
	.quad	0x40200833c60029f1              # double 8.0160199999999993
	.quad	0x40054d5b6805a2d7              # double 2.6627719999999999
	.quad	0x402195c1c6088d6d              # double 8.7924939999999996
	.quad	0x4019cc929aa1d756              # double 6.4497780000000002
	.quad	0x402351b1b79d909f              # double 9.6595589999999997
	.quad	0x4017acf91a32b12d              # double 5.9189189999999998
	.quad	0x400b4d2f5dbb9cfa              # double 3.4126880000000002
	.quad	0x4006a73797460243              # double 2.8316490000000001
	.quad	0x40017b95a294141f              # double 2.1853440000000002
	.quad	0x4011d867f0aa21a7              # double 4.4613339999999999
	.quad	0x401213519bd4067d              # double 4.518866
	.quad	0x4003d9767903211d              # double 2.4811830000000001
	.quad	0x4022c57c0b135979              # double 9.3857119999999998
	.quad	0x40221054477ff152              # double 9.0318930000000002
	.quad	0x4007dca7d6733ebc              # double 2.982742
	.quad	0x400910678c0053e3              # double 3.1330100000000001
	.quad	0x400c878af3e468cb              # double 3.5661830000000001
	.quad	0x4011e8eb463497b7              # double 4.4774599999999998
	.quad	0x401f674ddf86e3b4              # double 7.8508829999999996
	.quad	0x4019aab5807fed20              # double 6.4167079999999999
	.quad	0x4015b4545846e8f3              # double 5.4261030000000003
	.quad	0x40202c46f9b994e2              # double 8.0864790000000006
	.quad	0x400cb85f06f69446              # double 3.5900249999999998
	.quad	0x4020c0c1333b96af              # double 8.376474
	.quad	0x3ff3bcd141a6937d              # double 1.233598
	.quad	0x401252bd3c361134              # double 4.5808
	.quad	0x402052cf95d4e8fb              # double 8.16174
	.quad	0x400ab72474538ef3              # double 3.3394249999999999
	.quad	0x401280789613d31c              # double 4.6254600000000003
	.quad	0x40239e9ca9ef5233              # double 9.8097890000000003
	.quad	0x401aa1deacc92147              # double 6.6580760000000003
	.quad	0x40236378ee286727              # double 9.6942819999999993
	.quad	0x4017fe646f156191              # double 5.9984299999999999
	.quad	0x40128ccff21b3aef              # double 4.6375120000000001
	.quad	0x3fbd1372a38b8ae3              # double 0.113578
	.quad	0x401782acb85a4f01              # double 5.8776120000000001
	.quad	0x3fb6f62f9ca5bd94              # double 0.089693999999999996
	.quad	0x400e065b63d3e4ef              # double 3.753104
	.quad	0x40036d56b00ffda4              # double 2.428388
	.quad	0x400b2ffeb074a772              # double 3.3984350000000001
	.quad	0x3fd1e3193f6c269a              # double 0.27948600000000001
	.quad	0x3fe328d434a01abd              # double 0.59873399999999999
	.quad	0x40210ee525892685              # double 8.5290920000000003
	.quad	0x4020068a936c58ef              # double 8.0127760000000006
	.quad	0x3ffdff39d1b2e59b              # double 1.874811
	.quad	0x401d9a5c5f7c675a              # double 7.4007430000000003
	.quad	0x4022e0cdea033e79              # double 9.4390710000000002
	.quad	0x3fd6797cc39ffd61              # double 0.351165
	.quad	0x40208ee5cd4ed2cc              # double 8.2790970000000001
	.quad	0x402003606b7aa25e              # double 8.0065950000000008
	.quad	0x40171d07852f7f4a              # double 5.7783490000000004
	.quad	0x40205dcca70d1fa3              # double 8.1832019999999996
	.quad	0x3ff7854152b0a6fc              # double 1.4700329999999999
	.quad	0x401a490d5a5b9629              # double 6.5713400000000002
	.quad	0x401c531b9b66f933              # double 7.0811599999999997
	.quad	0x4023bbae03b3e9a7              # double 9.866562
	.quad	0x4018eaab8a5ce5b4              # double 6.2291699999999999
	.quad	0x40137268d32830a1              # double 4.8617280000000003
	.quad	0x3ffd3ad8e4324420              # double 1.826867
	.quad	0x3ff8f0691ea78af4              # double 1.558694
	.quad	0x4012bc2656abde40              # double 4.6837400000000002
	.quad	0x4022fe87d2c7b891              # double 9.4971300000000002
	.quad	0x402211ec2ce46499              # double 9.035005
	.quad	0x401cc14e7ee9142b              # double 7.1887759999999998
	.quad	0x3fd5425f202107b8              # double 0.33217600000000003
	.quad	0x401e6660e51d25ab              # double 7.5999790000000002
	.quad	0x40064a4ca4f440af              # double 2.786279
	.quad	0x3ffa20d9945b6c37              # double 1.6330199999999999
	.quad	0x40239a9973d9ec70              # double 9.801952
	.quad	0x4010975e6362a5e8              # double 4.1478210000000004
	.quad	0x3fdb3c4f3ba775fb              # double 0.42555599999999999
	.quad	0x401209d2391d5800              # double 4.5095910000000003
	.quad	0x40028e3150dae3e7              # double 2.3194300000000001
	.quad	0x3fcedf2ecf206424              # double 0.24118600000000001
	.quad	0x400319e731d2e0e3              # double 2.387648
	.quad	0x40094a80064a9cdc              # double 3.1613769999999999
	.quad	0x40228710667f90da              # double 9.2637970000000003
	.quad	0x401a1731098d477c              # double 6.5226480000000002
	.quad	0x3fa1c6d1e108c3f4              # double 0.034720000000000001
	.quad	0x40225044284dfce3              # double 9.1567699999999999
	.quad	0x40210bea4ebdd335              # double 8.5232720000000004
	.quad	0x401b56cdaf4adbc6              # double 6.8347689999999997
	.quad	0x401e4afa2f05a709              # double 7.57322
	.quad	0x40126acb4289118c              # double 4.6042909999999999
	.quad	0x3ff89475a31a4bdc              # double 1.5362450000000001
	.quad	0x401ba3cd9a52263e              # double 6.9099640000000004
	.quad	0x401c1450268900c5              # double 7.0198369999999999
	.quad	0x40236fb5d031055c              # double 9.7181840000000008
	.quad	0x4021e6c5f394b7b3              # double 8.9507290000000008
	.quad	0x401172f5989df117              # double 4.3622649999999998
	.quad	0x400b918e325d4a5e              # double 3.446072
	.quad	0x3fca10adcd2d44dd              # double 0.20363400000000001
	.quad	0x3ffd1c864883fd50              # double 1.819464
	.quad	0x4013e21294573a79              # double 4.9707739999999996
	.quad	0x400e82c7fbacb429              # double 3.8138580000000002
	.quad	0x40217dc4c9c90c4e              # double 8.7456420000000001
	.quad	0x401c0d6cf850df16              # double 7.0131110000000003
	.quad	0x4021ce7ba237cdcd              # double 8.9032870000000006
	.quad	0x401d45271bcdbbe0              # double 7.3175319999999999
	.quad	0x401cd3b7952d234f              # double 7.2067550000000002
	.quad	0x400022bf11f926c8              # double 2.016966
	.quad	0x40075510d38cda6e              # double 2.9165359999999998
	.quad	0x40115096787ce960              # double 4.3286990000000003
	.quad	0x401d342784a9478d              # double 7.3009320000000004
	.quad	0x4018d4d6a161e4f7              # double 6.2078499999999996
	.quad	0x401717ef5a964e8b              # double 5.7733739999999996
	.quad	0x400a284dfce3150e              # double 3.2696800000000001
	.quad	0x3feea517e77d523b              # double 0.95765299999999998
	.quad	0x40134f05a708ede5              # double 4.8271699999999997
	.quad	0x4011bf46ed245b29              # double 4.4367939999999999
	.quad	0x400fa2b063e07a29              # double 3.9544380000000001
	.quad	0x4005ac1094a2b9d4              # double 2.7090160000000001
	.quad	0x4013fd48882f0e0b              # double 4.9973470000000004
	.quad	0x40233ba3ca7503b8              # double 9.6164839999999998
	.quad	0x40222b29a1b9f98b              # double 9.0843019999999992
	.quad	0x40211878fabda0e0              # double 8.5477980000000002
	.quad	0x400e490abb44e50c              # double 3.7856649999999998
	.quad	0x4019d8605681ecd5              # double 6.4613050000000003
	.quad	0x401bf14cec41dd1a              # double 6.9856449999999999
	.quad	0x401b31db0142f61f              # double 6.7986870000000001
	.quad	0x4020f025bfad2999              # double 8.4690379999999994
	.quad	0x401b6358f2e05ccd              # double 6.8470190000000004
	.quad	0x40100dd7a99fa11b              # double 4.0135180000000004
	.quad	0x401897304039abf3              # double 6.1476449999999998
	.quad	0x40031fff79c842fa              # double 2.3906239999999999
	.quad	0x3fe9d755bccaf70a              # double 0.80753600000000003
	.quad	0x40136ba450acc0be              # double 4.8551190000000002
	.quad	0x3fdb8116ebd4cfd1              # double 0.42975400000000002
	.quad	0x4023b1a0cf1800a8              # double 9.8469300000000004
	.quad	0x3fe6a7b9170d62bf              # double 0.70797399999999999
	.quad	0x401aa28f190d1740              # double 6.6587490000000003
	.quad	0x4010b822ff08893b              # double 4.1798209999999996
	.quad	0x3fbefd651b0ccbc0              # double 0.12105399999999999
	.quad	0x4012c7ba6698bb4d              # double 4.6950469999999997
	.quad	0x4020a4a9ac365450              # double 8.3216070000000002
	.quad	0x4022d607e5a78f26              # double 9.4180290000000007
	.quad	0x3fb82b51bd61f5be              # double 0.094410999999999994
	.quad	0x4012be0ef99806f2              # double 4.6856039999999997
	.quad	0x401cc6fe2e6ea854              # double 7.1943289999999998
	.quad	0x40073c0e38a7e73a              # double 2.9043239999999999
	.quad	0x401e7d3ae685db77              # double 7.6222950000000002
	.quad	0x4023c9a240314877              # double 9.8938159999999992
	.quad	0x3fe8e30446b69db6              # double 0.77771199999999996
	.quad	0x4020f51ce28ed5f1              # double 8.4787359999999996
	.quad	0x402096d15ad106ee              # double 8.2945659999999997
	.quad	0x4016363f572de43f              # double 5.5529760000000001
	.quad	0x401e695c42203600              # double 7.6028909999999996
	.quad	0x401597b5aea3161a              # double 5.3981539999999999
	.quad	0x40002ec4a4095f24              # double 2.0228359999999999
	.quad	0x4015224638c97529              # double 5.2834709999999996
	.quad	0x401b2feda6612839              # double 6.796805
	.quad	0x4021093e5fb71fbc              # double 8.5180539999999993
	.quad	0x4001faf42784a948              # double 2.2475360000000002
	.quad	0x4023436049ecb31c              # double 9.6315939999999997
	.quad	0x4017258e64b23140              # double 5.7866759999999999
	.quad	0x4015ef13cee9dd7f              # double 5.4834740000000002
	.quad	0x4011ed96638433d7              # double 4.4820190000000002
	.quad	0x4017ed9274e22a2c              # double 5.9820039999999999
	.quad	0x3ffa6c8711d798d9              # double 1.6514960000000001
	.quad	0x402122ddbdb5d895              # double 8.5680980000000009
	.quad	0x40110aada33bd9cb              # double 4.2604280000000001
	.quad	0x40213645e4e69f06              # double 8.6060020000000002
	.quad	0x40227114d2f5dbba              # double 9.2208620000000003
	.quad	0x400700d130df9bdc              # double 2.8753989999999998
	.quad	0x401868d3f1843c3a              # double 6.1023709999999998
	.quad	0x40219c5c9a34ca0c              # double 8.8053939999999997
	.quad	0x4016c936c58eeaea              # double 5.6964980000000001
	.quad	0x40170064a9cdc444              # double 5.7503840000000004
	.quad	0x400606fcdee34fc6              # double 2.753412
	.quad	0x400eb17bd8be7297              # double 3.836662
	.quad	0x3fe176427c7c5261              # double 0.545686
	.quad	0x401d122ee41919ac              # double 7.2677569999999996
	.quad	0x402058e25c810a57              # double 8.1736020000000007
	.quad	0x4005e2d490e66cb1              # double 2.735757
	.quad	0x3fef109070fbeb9e              # double 0.97077199999999997
	.quad	0x40168f3343fa2ad4              # double 5.6398440000000001
	.quad	0x402282c4f7ec3548              # double 9.2554090000000002
	.quad	0x3fd1eac8605681ed              # double 0.27995500000000001
	.quad	0x3ff1f4299d883ba3              # double 1.1221099999999999
	.quad	0x4022516e37154003              # double 9.1590439999999997
	.quad	0x4020ed06573215fd              # double 8.4629390000000004
	.quad	0x3feab3a4723aafff              # double 0.83442899999999998
	.quad	0x401712839042d8c3              # double 5.7680800000000003
	.quad	0x401d90d0edc3bd5a              # double 7.3914220000000004
	.quad	0x401f14c6e6d9be4d              # double 7.7702900000000001
	.quad	0x400633fe1975f2cb              # double 2.7753869999999998
	.quad	0x4016dc79f666234b              # double 5.7153090000000004
	.quad	0x40141ed8d36b4c7f              # double 5.0301239999999998
	.quad	0x400069a027525461              # double 2.0515750000000001
	.quad	0x3ffd5832fcac8e69              # double 1.834033
	.quad	0x40135f251c193b3a              # double 4.8429149999999996
	.quad	0x401ea922d948dc12              # double 7.6651720000000001
	.quad	0x4003b40d4dc65c70              # double 2.4629159999999999
	.quad	0x4012d8e10cf5b1c8              # double 4.7117959999999997
	.quad	0x3ffcc655193708ab              # double 1.798421
	.quad	0x4017be03f705857b              # double 5.935562
	.quad	0x3fde4c76d117b528              # double 0.47341699999999998
	.quad	0x40117b9ae0c17657              # double 4.3707079999999996
	.quad	0x40125e158750c1b9              # double 4.5918789999999996
	.quad	0x3fe6e4e8b7e4de3c              # double 0.71544300000000005
	.quad	0x3fee7a43fe5c91d1              # double 0.95242499999999997
	.quad	0x4003eb242070b8d0              # double 2.4898150000000001
	.quad	0x3fe891105e1c1509              # double 0.76770799999999995
	.quad	0x400dd25bb7b6bb13              # double 3.7277140000000002
	.quad	0x40191ffc9795b35b              # double 6.281237
	.quad	0x401abb9cb6848beb              # double 6.6832149999999997
	.quad	0x401abfaf85942917              # double 6.6871929999999997
	.quad	0x40184200c0f01fb8              # double 6.0644559999999998
	.quad	0x4000aa50d6b228dd              # double 2.0831620000000002
	.quad	0x40188e5604189375              # double 6.1390000000000002
	.quad	0x401d420b3d4ae42a              # double 7.3144960000000001
	.quad	0x4012a779a6b50b0f              # double 4.6635499999999999
	.quad	0x3ff927f1b6912125              # double 1.572252
	.quad	0x400ea9478c868ba0              # double 3.8326560000000001
	.quad	0x4012f678c0053e2d              # double 4.7406949999999997
	.quad	0x402289d9d3458cd2              # double 9.2692399999999999
	.quad	0x40184364bec679cc              # double 6.0658139999999996
	.quad	0x3fdfe054690de093              # double 0.49806699999999998
	.quad	0x4023120578e5c4eb              # double 9.5351979999999993
	.quad	0x40049b691212513b              # double 2.5758839999999998
	.quad	0x3fd76f4384ba0e84              # double 0.36616599999999999
	.quad	0x40214d87724fa8b5              # double 8.6514240000000004
	.quad	0x4020f82539756c94              # double 8.4846590000000006
	.quad	0x3fe5633eff195033              # double 0.66836499999999999
	.quad	0x4021a9f01b866e44              # double 8.8319100000000005
	.quad	0x400364840e1719f8              # double 2.42408
	.quad	0x4020894e5d5b24ea              # double 8.2681760000000004
	.quad	0x401ea24e160d887f              # double 7.6585010000000002
	.quad	0x4011f5c5718eb895              # double 4.490011
	.quad	0x4017ba8869c66d37              # double 5.9321609999999998
	.quad	0x401f69103c8e25c8              # double 7.8526009999999999
	.quad	0x402060d0aaa7ded7              # double 8.1890920000000005
	.quad	0x401a92018a43bb41              # double 6.6425840000000003
	.quad	0x401d6ce8533b1077              # double 7.3563549999999998
	.quad	0x40135e18266772d6              # double 4.8418890000000001
	.quad	0x400588cac4b4d057              # double 2.6917930000000001
	.quad	0x401ffbeb18116ebd              # double 7.9960139999999997
	.quad	0x401d4d9cf13cee9e              # double 7.3257940000000001
	.quad	0x4021bb4a01abd1ab              # double 8.8657990000000009
	.quad	0x400da1eff9f87f02              # double 3.7040709999999999
	.quad	0x3ff0278c0053e2d6              # double 1.009655
	.quad	0x401855ce5b4245f6              # double 6.0837950000000003
	.quad	0x4018cf37fbefd007              # double 6.2023619999999999
	.quad	0x401e7ed4a1ad6452              # double 7.6238580000000002
	.quad	0x401c5c2a454de7ea              # double 7.0900049999999997
	.quad	0x3fa1287c200c0f02              # double 0.033512
	.quad	0x4022470025bfad2a              # double 9.1386730000000007
	.quad	0x401f63cd9a52263e              # double 7.8474640000000004
	.quad	0x40131cbab649d389              # double 4.7780560000000003
	.quad	0x3ff840d3cff64cf9              # double 1.515827
	.quad	0x40169b649d388a8b              # double 5.651751
	.quad	0x401467f5a5332ad0              # double 5.1015230000000003
	.quad	0x3fd7370cdc8754f3              # double 0.36273499999999997
	.quad	0x4020992e83a109d0              # double 8.2991829999999993
	.quad	0x401e5701d9f4d37c              # double 7.5849679999999999
	.quad	0x40219561d4306e5d              # double 8.7917620000000003
	.quad	0x3ff9b821af7d30ad              # double 1.6074539999999999
	.quad	0x40062d477bbf93ff              # double 2.7721089999999999
	.quad	0x40021b65668c2614              # double 2.2633770000000002
	.quad	0x401b6c1615ebfa8f              # double 6.8555529999999996
	.quad	0x40067e62dc6e2a80              # double 2.811712
	.quad	0x4011b4f6dfc5cdd5              # double 4.426723
	.quad	0x3fcc22e5de15ca6d              # double 0.21981500000000001
	.quad	0x40186d84d338f798              # double 6.1069519999999997
	.quad	0x4022186705c896dd              # double 9.0476609999999997
	.quad	0x4011316ce789e775              # double 4.2982670000000001
	.quad	0x4021129d40ee06d9              # double 8.5363559999999996
	.quad	0x3ff44e6299524bfd              # double 1.269137
	.quad	0x3fd38954a7f8012e              # double 0.305257
	.quad	0x4009655a7d24180d              # double 3.1744889999999999
	.quad	0x401fccfb3311a544              # double 7.950177
	.quad	0x401d598201cd5f9a              # double 7.3374100000000002
	.quad	0x3fda337a80cf9e38              # double 0.40939199999999998
	.quad	0x40113ec9e236c15d              # double 4.3113169999999998
	.quad	0x40223496030c23fb              # double 9.1027070000000005
	.quad	0x4019ae80389f83be              # double 6.4204109999999996
	.quad	0x40116082cf52b90a              # double 4.3442489999999996
	.quad	0x401f4b2e59af9ebf              # double 7.8234190000000003
	.quad	0x400a7ea033e78e19              # double 3.3118289999999999
	.quad	0x401cf5ad106ee30d              # double 7.2399180000000003
	.quad	0x4007fddfc9ff92f3              # double 2.9989620000000001
	.quad	0x3ffafd5cb790fb65              # double 1.6868559999999999
	.quad	0x3ff79c0010c6f7a1              # double 1.4755860000000001
	.quad	0x4013c44cbe1eb420              # double 4.9416989999999998
	.quad	0x401c05942917507f              # double 7.0054480000000003
	.quad	0x3fe2f89c5e6ff7e0              # double 0.59284800000000004
	.quad	0x400ca5d851654d62              # double 3.5809790000000001
	.quad	0x4023f9a2a4db163c              # double 9.9875690000000005
	.quad	0x40204b6bb1290258              # double 8.1473060000000004
	.quad	0x402169ba7fc32ebe              # double 8.7065009999999994
	.quad	0x401919f83be6601c              # double 6.2753610000000002
	.quad	0x3ffaa2c77574f723              # double 1.664741
	.quad	0x401cdbcbe61cffeb              # double 7.214645
	.quad	0x3ffc31172ef0ae53              # double 1.7619849999999999
	.quad	0x401aaeb7cbb3c819              # double 6.670623
	.quad	0x3ff1a6cf41f212d7              # double 1.1032249999999999
	.quad	0x40174af8df7a4e7b              # double 5.8232150000000003
	.quad	0x401c796787ce95fb              # double 7.1185590000000003
	.quad	0x40009f4a1272c94b              # double 2.0777779999999999
	.quad	0x4018d78d0cc35ce2              # double 6.2104990000000004
	.quad	0x40201b7da61e0c5b              # double 8.0536930000000009
	.quad	0x401f3c1db0142f62              # double 7.8087070000000001
	.quad	0x4005e800eae18aca              # double 2.738283
	.quad	0x400ba111276fb092              # double 3.453646
	.quad	0x3ffbe4a16a487336              # double 1.7433179999999999
	.quad	0x4013d2f512663411              # double 4.9560129999999996
	.quad	0x3ffd15432873bc90              # double 1.8176909999999999
	.quad	0x401d56030c23fab1              # double 7.333996
	.quad	0x3febee7a311e85fd              # double 0.872861
	.quad	0x4020d63b688bda94              # double 8.4184219999999996
	.quad	0x4022b60a63305101              # double 9.3555480000000006
	.quad	0x40203219439de482              # double 8.0978490000000001
	.quad	0x3ff58b167ec7863c              # double 1.346457
	.quad	0x401e046fdeb52c9d              # double 7.5043329999999999
	.quad	0x40236151611ba3ca              # double 9.6900739999999992
	.quad	0x401ef7eaa2a0a958              # double 7.7421059999999997
	.quad	0x400b5634dad31fcd              # double 3.4170929999999999
	.quad	0x3ff84003254e6e22              # double 1.515628
	.quad	0x400e9cb790fb6567              # double 3.8265220000000002
	.quad	0x40198195464dc22b              # double 6.3765460000000003
	.quad	0x40220b42edbb59de              # double 9.0219950000000004
	.quad	0x402134039abf3387              # double 8.6015899999999998
	.quad	0x4014ec2ca148ba84              # double 5.230639
	.quad	0x401905100a393ee6              # double 6.2549440000000001
	.quad	0x4009de5d9e40c847              # double 3.2335769999999999
	.quad	0x40210a1144cbe1eb              # double 8.5196629999999995
	.quad	0x400b86afcce1c582              # double 3.4407649999999999
	.quad	0x40209bde82d7b635              # double 8.3044320000000003
	.quad	0x3fe9c46b69db65ed              # double 0.80522700000000003
	.quad	0x401037d8cf398e97              # double 4.054538
	.quad	0x400702ad3e920c07              # double 2.8763070000000002
	.quad	0x4020c615a8deb0fb              # double 8.3868840000000002
	.quad	0x4015965300581494              # double 5.396801
	.quad	0x402095bee3d5fdce              # double 8.2924720000000001
	.quad	0x4011b5c91d14e3bd              # double 4.4275250000000002
	.quad	0x3ffc4a148ba83f4f              # double 1.768086
	.quad	0x4021ebf727136a40              # double 8.9608699999999998
	.quad	0x401f7b17481b21c4              # double 7.8702059999999996
	.quad	0x4013017fc7607c42              # double 4.7514640000000004
	.quad	0x400a33daf8df7a4e              # double 3.2753199999999998
	.quad	0x4009cabffcdab192              # double 3.2239990000000001
	.quad	0x4022037ef5a964e9              # double 9.0068280000000005
	.quad	0x401e7affb04ee7c5              # double 7.6201160000000003
	.quad	0x40171d0a24463066              # double 5.778359
	.quad	0x3ff690e0221426fe              # double 1.4103699999999999
	.quad	0x402033d556084a51              # double 8.1012369999999994
	.quad	0x400337d1782d3847              # double 2.4022549999999998
	.quad	0x400b3839cd8127b3              # double 3.4024540000000001
	.quad	0x40002d0678c0053e              # double 2.0219849999999999
	.quad	0x401f3aeb80ecfa6a              # double 7.8075390000000002
	.quad	0x4023e7b6bb129025              # double 9.9525659999999991
	.quad	0x401a1446b69db65f              # double 6.5198010000000002
	.quad	0x40028ea7ce0fc2ec              # double 2.3196560000000002
	.quad	0x401d08151a437825              # double 7.2578930000000001
	.quad	0x401b38811b1d92b8              # double 6.80518
	.quad	0x4006a05ccc89b0ee              # double 2.8283019999999999
	.quad	0x40177517e77d523b              # double 5.8643489999999998
	.quad	0x4017beef5ec80c74              # double 5.9364600000000003
	.quad	0x3fff65753a3ec02f              # double 1.96227
	.quad	0x4016fc17a89331a1              # double 5.7461840000000004
	.quad	0x3ffbaa1a500d5e8d              # double 1.7290289999999999
	.quad	0x3fe2445ed4a1ad64              # double 0.57084599999999996
	.quad	0x40119ed8904f6dfc              # double 4.4051229999999997
	.quad	0x401148ed5f138bce              # double 4.321218
	.quad	0x401347d0aed99cbf              # double 4.8201320000000001
	.quad	0x3fdc68c26138fffc              # double 0.44389400000000001
	.quad	0x402313ccf28c79f6              # double 9.5386729999999993
	.quad	0x4012dddc6195464e              # double 4.7166610000000002
	.quad	0x401e03ef6b5d462c              # double 7.5038429999999998
	.quad	0x4014c355cd91eeaa              # double 5.1907569999999996
	.quad	0x400e8c5004fb1184              # double 3.8185120000000001
	.quad	0x4023b4b662fdfc1a              # double 9.8529540000000004
	.quad	0x400d0d9b5e95b78d              # double 3.6316440000000001
	.quad	0x4010292ab68cef67              # double 4.0402019999999998
	.quad	0x40060bd66277c45d              # double 2.7557800000000001
	.quad	0x401ad085f4a1272d              # double 6.7036360000000004
	.quad	0x4021485e80bed741              # double 8.6413460000000004
	.quad	0x401326fa3fcc9eaa              # double 4.7880640000000003
	.quad	0x4010468f4b61fe22              # double 4.0689060000000001
	.quad	0x40235e8fb00bcbe6              # double 9.6846899999999998
	.quad	0x40068111ada76d98              # double 2.8130220000000001
	.quad	0x4020f9ffd60e94ee              # double 8.4882799999999996
	.quad	0x4017a2ec6bce8534              # double 5.9091050000000003
	.quad	0x401f2e89eba6aca8              # double 7.7954480000000003
	.quad	0x401da049235f8099              # double 7.4065289999999999
	.quad	0x3fe70fffbce4217d              # double 0.72070299999999998
	.quad	0x40098fe3f359ff50              # double 3.1952590000000001
	.quad	0x4021cf95703f2d3c              # double 8.9054369999999991
	.quad	0x401a6adea897635e              # double 6.6043649999999996
	.quad	0x400977995ee136e7              # double 3.1833979999999999
	.quad	0x400e6db61bb05faf              # double 3.8035700000000001
	.quad	0x4021daa8a82a5615              # double 8.9270680000000002
	.quad	0x401139ae924f227d              # double 4.30633
	.quad	0x4000cc929aa1d756              # double 2.0998890000000001
	.quad	0x3fdaf66a55087011              # double 0.42129
	.quad	0x4019e22bbecaab8a              # double 6.4708699999999997
	.quad	0x4008c57fb69984a1              # double 3.096435
	.quad	0x4022918def416bdb              # double 9.2842859999999998
	.quad	0x401c30ac3a860dcc              # double 7.0475320000000004
	.quad	0x4016fa261bf37b8d              # double 5.7442859999999998
	.quad	0x40201a5e353f7cee              # double 8.0515000000000008
	.quad	0x40042295208e1501              # double 2.516886
	.quad	0x4010dc6e6d9be4cd              # double 4.2152649999999996
	.quad	0x4021108765ba6efc              # double 8.5322829999999996
	.quad	0x4005922c01e68a0d              # double 2.6963729999999999
	.quad	0x3fd6b33daf8df7a5              # double 0.35469000000000001
	.quad	0x400094a558ea7ce1              # double 2.072581
	.quad	0x400d1fcb923a29c7              # double 3.6405249999999998
	.quad	0x4019db178b370047              # double 6.4639569999999997
	.quad	0x401c0cb9ecf63800              # double 7.0124279999999999
	.quad	0x40170434a01abd1b              # double 5.7541070000000003
	.quad	0x4020590d7be9856a              # double 8.1739309999999996
	.quad	0x401285b5b70691ea              # double 4.6305759999999996
	.quad	0x3ffbb79b77c02afe              # double 1.732326
	.quad	0x4020d155b4677b39              # double 8.4088569999999994
	.quad	0x4017df765fd8adac              # double 5.9682250000000003
	.quad	0x4015db1a2a4db164              # double 5.4639670000000002
	.quad	0x3ff187ecfe9b7bf2              # double 1.095685
	.quad	0x401921dffc5479d5              # double 6.2830810000000001
	.quad	0x401d2d4bf0995aaf              # double 7.2942349999999996
	.quad	0x40217f9b56323bbc              # double 8.7492319999999992
	.quad	0x40208eef5ec80c74              # double 8.2791700000000005
	.quad	0x4005c14488c60cbf              # double 2.7193689999999999
	.quad	0x400aa08aefb2aae3              # double 3.3283900000000002
	.quad	0x3feb8b8cfbfc6541              # double 0.86078500000000002
	.quad	0x401be6b0d9513f8e              # double 6.9752840000000003
	.quad	0x4018cf1f14983d79              # double 6.202267
	.quad	0x4010aacd184c2720              # double 4.166798
	.quad	0x40013e731d2e0e30              # double 2.1554929999999999
	.quad	0x402154a925fe974a              # double 8.6653529999999996
	.quad	0x4019689331a08bfc              # double 6.3521239999999999
	.quad	0x4003cdf3f961804e              # double 2.4755630000000002
	.quad	0x40210a7d45a5fc7e              # double 8.5204869999999993
	.quad	0x4016f438088509c0              # double 5.7384950000000003
	.quad	0x3ff2163baba7b917              # double 1.130428
	.quad	0x4009657c914b167f              # double 3.1745540000000001
	.quad	0x402322e147ae147b              # double 9.5681250000000002
	.quad	0x40207801711947d0              # double 8.2343860000000006
	.quad	0x3ff42d02cd39da16              # double 1.2609889999999999
	.quad	0x40218dba6efc371e              # double 8.7768130000000006
	.quad	0x40142f559b3d07c8              # double 5.0462249999999997
	.quad	0x4018fdb9841aac54              # double 6.2477780000000003
	.quad	0x3ff542730c671690              # double 1.3287230000000001
	.quad	0x40141b945308bb90              # double 5.0269329999999997
	.quad	0x40102e84ad794a6f              # double 4.0454280000000002
	.quad	0x3fe61858bc59b802              # double 0.69047199999999997
	.quad	0x401cc7a6bd6e8af8              # double 7.1949719999999999
	.quad	0x4020f2ab042528ae              # double 8.4739609999999992
	.quad	0x3ffc962cfd8f0c78              # double 1.786664
	.quad	0x401cfab042528ae7              # double 7.2448129999999997
	.quad	0x3fd3b4dcebfec13c              # double 0.30791400000000002
	.quad	0x401932c386d2ed78              # double 6.2995739999999998
	.quad	0x3fdefa376922d949              # double 0.48402200000000001
	.quad	0x401870e6f2e8c048              # double 6.1102559999999997
	.quad	0x401226fb09203a32              # double 4.5380669999999999
	.quad	0x400fcd05f2884838              # double 3.9751089999999998
	.quad	0x4022e5b0dd82fd76              # double 9.4486150000000002
	.quad	0x4018f3e9ea140571              # double 6.2381970000000004
	.quad	0x40006454de7ea5f8              # double 2.0489899999999999
	.quad	0x401936523704790c              # double 6.3030480000000004
	.quad	0x40067beec39799e5              # double 2.810514
	.quad	0x3ffa16feb4a6655a              # double 1.630614
	.quad	0x400bd81b64e05469              # double 3.480521
	.quad	0x40168680e0653006              # double 5.6313510000000004
	.quad	0x3fe37156191148fe              # double 0.60758500000000004
	.quad	0x4003a605ee568a50              # double 2.4560659999999999
	.quad	0x400a2ac322291fb4              # double 3.27088
	.quad	0x401c3829068986fd              # double 7.0548440000000001
	.quad	0x40143e2c12ad81ae              # double 5.0607150000000001
	.quad	0x3ff5febd09e12a52              # double 1.374692
	.quad	0x4018471b0468448d              # double 6.069439
	.quad	0x4010309917939a7c              # double 4.0474589999999999
	.quad	0x401b8be3c105186e              # double 6.8866110000000003
	.quad	0x4020cca0e410b631              # double 8.3996650000000006
	.quad	0x4023fc4bb1af3a15              # double 9.9927650000000003
	.quad	0x3ff5b2bcb5fe542e              # double 1.3561369999999999
	.quad	0x3fe1b191dde37586              # double 0.55292600000000003
	.quad	0x3fed1172ef0ae536              # double 0.90837999999999997
	.quad	0x3fd1e61cffeb074a              # double 0.27966999999999997
	.quad	0x4023d8f55de58e65              # double 9.9237470000000005
	.quad	0x4001ebcd78c436fc              # double 2.240138
	.quad	0x4004db352a843809              # double 2.6070350000000002
	.quad	0x4022ddf0b28522ea              # double 9.4334769999999999
	.quad	0x3ffa33f63c31df76              # double 1.637686
	.quad	0x4000d8b71b8aa002              # double 2.1058180000000002
	.quad	0x4014939b456b441c              # double 5.1441470000000002
	.quad	0x400435c63ae2541e              # double 2.5262570000000002
	.quad	0x400cb65f5275ee9a              # double 3.5890490000000002
	.quad	0x4020567381d7dbf5              # double 8.1688500000000008
	.quad	0x40035ee2435696e6              # double 2.4213300000000002
	.quad	0x4021f83f0bae89ec              # double 8.9848560000000006
	.quad	0x401e3c55432873bd              # double 7.5589190000000003
	.quad	0x400e611a11233df3              # double 3.7974130000000001
	.quad	0x401306940357a355              # double 4.756424
	.quad	0x4015c11dffc5479d              # double 5.4385909999999997
	.quad	0x400f8c0a4a05dd90              # double 3.9433790000000002
	.quad	0x40106bbfd71b0468              # double 4.1052239999999998
	.quad	0x4023e6160d887ebf              # double 9.9493869999999997
	.quad	0x401b902363b25700              # double 6.8907600000000002
	.quad	0x4004f5219a847b24              # double 2.6196929999999998
	.quad	0x402237e23f24d8fd              # double 9.1091479999999994
	.quad	0x4010d67e414e7ee9              # double 4.2094659999999999
	.quad	0x4016ea1b5c7cd899              # double 5.7286200000000003
	.quad	0x3fe107d4e09784ec              # double 0.53220599999999996
	.quad	0x401fed0678c0053e              # double 7.9814699999999998
	.quad	0x402378e368f08462              # double 9.73611
	.quad	0x3ffbbb7952d234ec              # double 1.7332700000000001
	.quad	0x401d8ce0fc2eba28              # double 7.3875770000000002
	.quad	0x400f1649d388a8b1              # double 3.8858830000000002
	.quad	0x4021b2c98e53eb3a              # double 8.8491940000000007
	.quad	0x4022c65d9e40c847              # double 9.3874329999999996
	.quad	0x3ffa2c258d5842b7              # double 1.635778
	.quad	0x401764988094e5d6              # double 5.8482380000000003
	.quad	0x401d2cfb762d83c7              # double 7.2939280000000002
	.quad	0x3ff2568405b39e28              # double 1.1461220000000001
	.quad	0x3fe1197c3d68405b              # double 0.53436099999999997
	.quad	0x4019f4a6a875d56f              # double 6.4889169999999998
	.quad	0x4012435a426bb55b              # double 4.5657740000000002
	.quad	0x3ff4c53198288052              # double 1.298143
	.quad	0x40210ca558ea7ce1              # double 8.524699
	.quad	0x40037e108c3f3e03              # double 2.4365549999999998
	.quad	0x401e2e2fbe33acd6              # double 7.5451040000000003
	.quad	0x40107f62b6ae7d56              # double 4.1243999999999996
	.quad	0x401890cc78e9f6a9              # double 6.1414049999999998
	.quad	0x3ff9f945308bb906              # double 1.6233569999999999
	.quad	0x4022490afe60c38f              # double 9.1426619999999996
	.quad	0x401dd870da5daf08              # double 7.4613680000000002
	.quad	0x4021f84f09528f19              # double 8.9849779999999999
	.quad	0x40160bb6ed677708              # double 5.5114400000000003
	.quad	0x4022cf0bae89eba7              # double 9.4043860000000005
	.quad	0x3fe6381d7dbf4880              # double 0.69435000000000002
	.quad	0x401d0ce3150dae3e              # double 7.2625849999999996
	.quad	0x3ff0e2003ab862b2              # double 1.0551759999999999
	.quad	0x40213bc6eb0b7c35              # double 8.616752
	.quad	0x4021802ff8ec0f88              # double 8.7503659999999996
	.quad	0x40107328b6d86ec1              # double 4.1124599999999996
	.quad	0x4012131ec0b56755              # double 4.5186719999999996
	.quad	0x4011004f6dfc5cdd              # double 4.2503029999999997
	.quad	0x4011bbadc0980b24              # double 4.4332799999999999
	.quad	0x4023e43265add9c2              # double 9.9456969999999991
	.quad	0x3ffcccad57bc7f78              # double 1.7999700000000001
	.quad	0x40124c9539b88872              # double 4.5747879999999999
	.quad	0x40215cda9003eea2              # double 8.6813549999999999
	.quad	0x401ae41e57d9dba9              # double 6.722772
	.quad	0x40130cffa7eb6bf4              # double 4.7626939999999998
	.quad	0x400f04ef88b97785              # double 3.8774099999999998
	.quad	0x4008986013660e52              # double 3.0744020000000001
	.quad	0x401e0049ecb31c22              # double 7.5002820000000003
	.quad	0x3ff27c88e79aae6d              # double 1.1554040000000001
	.quad	0x4003023c85c24c40              # double 2.3760919999999999
	.quad	0x3ff47a0945f9df55              # double 1.2797940000000001
	.quad	0x3fe0005a2d72ffd2              # double 0.50004300000000002
	.quad	0x3febf49adc8fb86f              # double 0.87360899999999997
	.quad	0x401354a558ea7ce1              # double 4.832662
	.quad	0x3febad666a98244f              # double 0.86491700000000005
	.quad	0x401a720ea5b530cf              # double 6.6113840000000001
	.quad	0x4022faf5ba2be059              # double 9.4901560000000007
	.quad	0x3ffe398b71b8aa00              # double 1.889049
	.quad	0x40149a376922d949              # double 5.1506020000000001
	.quad	0x3ff8fbe22e5de15d              # double 1.5614950000000001
	.quad	0x401d8fc2656abde4              # double 7.39039
	.quad	0x3fe061b089a02752              # double 0.51192499999999996
	.quad	0x3ffca392e1ef73c1              # double 1.7899350000000001
	.quad	0x3ff5f3cb3e5753a4              # double 1.37202
	.quad	0x40172e63e8dda48b              # double 5.7953029999999996
	.quad	0x40208e7c06e19b91              # double 8.2782900000000001
	.quad	0x3ffec046412cf0fa              # double 1.921942
	.quad	0x40106b039ef0f16f              # double 4.1045059999999998
	.quad	0x4016dfff79c842fa              # double 5.7187479999999997
	.quad	0x3fd856d5cfaacd9f              # double 0.38030000000000003
	.quad	0x40223c27418d690a              # double 9.1174870000000006
	.quad	0x40051d52c16df3f9              # double 2.6393179999999998
	.quad	0x40186b6805a2d730              # double 6.104889
	.quad	0x401452f3c2dadb83              # double 5.0810079999999997
	.quad	0x400d9101b003686a              # double 3.6958039999999999
	.quad	0x400cdd9a0f0a5eff              # double 3.6082040000000002
	.quad	0x4020b57214f0520d              # double 8.3543859999999999
	.quad	0x4011aff43419e300              # double 4.4218299999999999
	.quad	0x3ffd94a4d2b2bfdb              # double 1.8487899999999999
	.quad	0x400edbc3c5bd0e13              # double 3.857307
	.quad	0x40144baf102363b2              # double 5.0739099999999997
	.quad	0x401a8687b139c94f              # double 6.6313769999999996
	.quad	0x4023a7969e3c9689              # double 9.8273209999999995
	.quad	0x400af20a73f748a1              # double 3.3681839999999998
	.quad	0x402178f5c28f5c29              # double 8.7362500000000001
	.quad	0x40012c4e7253da73              # double 2.1466340000000002
	.quad	0x4022276709fa54c5              # double 9.0769579999999994
	.quad	0x401163860999dcb5              # double 4.3471909999999996
	.quad	0x401c9e91c8eabffd              # double 7.1548530000000001
	.quad	0x4009100474d9c6b0              # double 3.1328209999999999
	.quad	0x3fce1ede1198aeb8              # double 0.235317
	.quad	0x401f5a5daf07bfe8              # double 7.8382480000000001
	.quad	0x400e6031ceaf251c              # double 3.79697
	.quad	0x400a864ece9a2c67              # double 3.3155800000000002
	.quad	0x3ff54f0e90bc7b46              # double 1.331801
	.quad	0x4021fdfe32a0663c              # double 8.9960799999999991
	.quad	0x402320dcfcc5b8dc              # double 9.5641859999999994
	.quad	0x3fe0a68b19a415f4              # double 0.52032999999999996
	.quad	0x401a0962cfd8f0c7              # double 6.5091659999999996
	.quad	0x4010fb7aa25d8d7a              # double 4.2455850000000002
	.quad	0x402236f911cf355d              # double 9.1073690000000003
	.quad	0x40198d9513f8db49              # double 6.3882640000000004
	.quad	0x3feb396d0917d6b6              # double 0.85075999999999996
	.quad	0x4013a884406c00da              # double 4.9145669999999999
	.quad	0x3fe3ea7ce0fc2eba              # double 0.62237399999999998
	.quad	0x40147ad96a6a0126              # double 5.1199700000000004
	.quad	0x4023a1b38d60a633              # double 9.8158229999999999
	.quad	0x400e5293d102bc73              # double 3.7903210000000001
	.quad	0x4021de3d1cc100e7              # double 8.9340600000000006
	.quad	0x401e2899392189be              # double 7.5396470000000004
	.quad	0x4011b469d7342edc              # double 4.4261850000000003
	.quad	0x401b424cc6822ff1              # double 6.8147460000000004
	.quad	0x4022f55da272862f              # double 9.4792299999999993
	.quad	0x401bf264a16a4873              # double 6.9867119999999998
	.quad	0x4020249e8815e397              # double 8.0715219999999999
	.quad	0x40131f548ecd8dbd              # double 4.7805960000000001
	.quad	0x400c76b76709fa55              # double 3.5579670000000001
	.quad	0x4021a893964a59c0              # double 8.8292509999999993
	.quad	0x40227674d1633483              # double 9.2313600000000005
	.quad	0x4020328c586876e2              # double 8.0987270000000002
	.quad	0x400079cb6848beb6              # double 2.0594700000000001
	.quad	0x3ffa020e6299524c              # double 1.625502
	.quad	0x4022e5a7b0b39192              # double 9.4485449999999993
	.quad	0x401100af5fd47bee              # double 4.2506690000000003
	.quad	0x3fded184c271fff8              # double 0.48153800000000002
	.quad	0x3fe5a684cf0739b0              # double 0.67657699999999998
	.quad	0x401af2cf0f9d2bf5              # double 6.7371179999999997
	.quad	0x402197995ee136e7              # double 8.7960919999999998
	.quad	0x3fe858cb07d0aeda              # double 0.76083900000000004
	.quad	0x4020f75e84f09529              # double 8.4831430000000001
	.quad	0x40169bb7739f340d              # double 5.6520669999999997
	.quad	0x4020d90fd7e45804              # double 8.4239490000000003
	.quad	0x40232079a2834d27              # double 9.563428
	.quad	0x4011782b62845996              # double 4.3673529999999996
	.quad	0x4021c5db5525cc42              # double 8.8864389999999993
	.quad	0x401a88101f31f46f              # double 6.6328740000000002
	.quad	0x400d91fc4c165908              # double 3.6962820000000001
	.quad	0x3fe46c0724b76f6d              # double 0.63818699999999995
	.quad	0x401267253da72a7c              # double 4.6007280000000002
	.quad	0x401dd1b4bb5e0f80              # double 7.4547910000000002
	.quad	0x3ffac4fe36d22425              # double 1.6730940000000001
	.quad	0x401ca764f11b60af              # double 7.1634710000000004
	.quad	0x40153c4b09e98dce              # double 5.3088800000000003
	.quad	0x40100ef06b37867f              # double 4.014589
	.quad	0x40226a46bf01322f              # double 9.2075709999999997
	.quad	0x402267df5cf2495e              # double 9.2028759999999998
	.quad	0x401517f737da61e1              # double 5.2734040000000002
	.quad	0x3ff52c55c96030c2              # double 1.3233239999999999
	.quad	0x4022c407ee0b0af6              # double 9.382873
	.quad	0x40178d5347a5b0ff              # double 5.8880129999999999
	.quad	0x401add23d4f15e7d              # double 6.7159570000000004
	.quad	0x3f7f548ecd8dbced              # double 0.0076490000000000004
	.quad	0x40171fa43fe5c91d              # double 5.7808999999999999
	.quad	0x400610c34c1a8ac6              # double 2.7581850000000001
	.quad	0x40048f88333fc86d              # double 2.570084
	.quad	0x4005b9b77c02afde              # double 2.7156820000000002
	.quad	0x3fc6d8e432441feb              # double 0.17849400000000001
	.quad	0x4014d3059641f645              # double 5.2060760000000004
	.quad	0x4021b40639d5e4a4              # double 8.8516100000000008
	.quad	0x400d3953586ca8a0              # double 3.6529910000000001
	.quad	0x3ff4b079e59f2baa              # double 1.293085
	.quad	0x40105ca07f66e86c              # double 4.0904559999999996
	.quad	0x40108d230b9dc2f4              # double 4.137829
	.quad	0x40106de8f6cefed6              # double 4.1073339999999998
	.quad	0x4020e0ad8a11665a              # double 8.4388240000000003
	.quad	0x40201b8bcdfefbf4              # double 8.0538009999999999
	.quad	0x4015c57abb8800eb              # double 5.4428510000000001
	.quad	0x3fc6130164840e17              # double 0.172455
	.quad	0x402316d3f9e7b80b              # double 9.5445860000000006
	.quad	0x3ff955d701d9f4d3              # double 1.5834569999999999
	.quad	0x4023f7fcfc3f811f              # double 9.9843519999999994
	.quad	0x4018f8c8abd5dc40              # double 6.242953
	.quad	0x4000eb0af5fd47bf              # double 2.1147670000000001
	.quad	0x40214c70435efa61              # double 8.6492939999999994
	.quad	0x3fd380e8c8abd5dc              # double 0.30474299999999999
	.quad	0x401bd7314ca925ff              # double 6.9601490000000004
	.quad	0x40003455a7d24181              # double 2.0255540000000001
	.quad	0x40213230984e3fff              # double 8.5980270000000001
	.quad	0x401cf99ed7c6fbd2              # double 7.2437699999999996
	.quad	0x401d50b9dc2f405f              # double 7.3288339999999996
	.quad	0x3ff76604e1e71045              # double 1.462407
	.quad	0x4008ddb2b346130a              # double 3.1082510000000001
	.quad	0x400b4cf206423960              # double 3.4125709999999998
	.quad	0x4022a3660e51d25b              # double 9.3191380000000006
	.quad	0x40160733ebbfd71b              # double 5.507034
	.quad	0x401e4c36976bc1f0              # double 7.574427
	.quad	0x3ff77cc7d1bb4917              # double 1.467964
	.quad	0x400499f4d37c1377              # double 2.5751740000000001
	.quad	0x4017eb5dcc63f141              # double 5.9798499999999999
	.quad	0x4018b29a5ebb773a              # double 6.174417
	.quad	0x401b0f640639d5e5              # double 6.7650300000000003
	.quad	0x3fd82eb5f5f0b285              # double 0.37785099999999999
	.quad	0x40225b126e978d50              # double 9.1778750000000002
	.quad	0x4015588c1db0142f              # double 5.3364719999999997
	.quad	0x3fe5f1c75818c5ca              # double 0.68576400000000004
	.quad	0x4017d5f41aef6f8f              # double 5.958939
	.quad	0x40208a67620ee8d1              # double 8.2703199999999999
	.quad	0x3fa67a52ac753e70              # double 0.043901999999999997
	.quad	0x400846a22b3892ef              # double 3.0344890000000002
	.quad	0x4020913165d39970              # double 8.2835800000000006
	.quad	0x3fde5f4a1272c94b              # double 0.47456599999999999
	.quad	0x40194effe2a3cea7              # double 6.3271480000000002
	.quad	0x4021e7aaef2c7326              # double 8.9524760000000008
	.quad	0x3fed8c111ada76d9              # double 0.92334799999999995
	.quad	0x40087f1d81f10668              # double 3.062068
	.quad	0x3ffc3f8db4890929              # double 1.7655160000000001
	.quad	0x401e25b2d4d4024b              # double 7.5368149999999998
	.quad	0x4011890ff9724745              # double 4.3838499999999998
	.quad	0x401af772d5e071c5              # double 6.7416489999999998
	.quad	0x400bd8dde7a743a6              # double 3.4808919999999999
	.quad	0x4018a6f112fd32c6              # double 6.1630289999999999
	.quad	0x401281882adc4c9d              # double 4.6264960000000004
	.quad	0x40178de481f53826              # double 5.8885670000000001
	.quad	0x4015ab2d905c0336              # double 5.4171659999999999
	.quad	0x4016327f5e84f095              # double 5.5493139999999999
	.quad	0x3ff3b91e646f1562              # double 1.2326950000000001
	.quad	0x3fed6e675147f130              # double 0.91972699999999996
	.quad	0x4007cd5ae1cde5d2              # double 2.9752710000000002
	.quad	0x4017a9c1f85d744f              # double 5.9157789999999997
	.quad	0x40215844284dfce3              # double 8.6723949999999999
	.quad	0x4017f302b40f66a5              # double 5.9873149999999997
	.quad	0x4019c573eab367a1              # double 6.442825
	.quad	0x3fc30ff10ecb74de              # double 0.148924
	.quad	0x40220df1172ef0ae              # double 9.0272299999999994
	.quad	0x4020ba7546d3f9e8              # double 8.3641760000000005
	.quad	0x4008e8ec52a411c3              # double 3.1137320000000002
	.quad	0x4011fd9d7774aba4              # double 4.4976710000000004
	.quad	0x401379802c0a4a06              # double 4.8686530000000001
	.quad	0x401bd65cf67b1c00              # double 6.9593389999999999
	.quad	0x401cb58537e2c55d              # double 7.1772660000000004
	.quad	0x4015fc182ecaeea6              # double 5.4961859999999998
	.quad	0x4016b968d759ee89              # double 5.6810640000000001
	.quad	0x40157965b20b8067              # double 5.3685520000000002
	.quad	0x401315a4f00ef135              # double 4.7711370000000004
	.quad	0x4019f7d5ed06fef8              # double 6.4920270000000002
	.quad	0x401cfb0fadf2ecf2              # double 7.245177
	.quad	0x401c8f5a5332acfb              # double 7.1399929999999996
	.quad	0x401c7506dd69d302              # double 7.1142839999999996
	.quad	0x40166113404ea4a9              # double 5.5948000000000002
	.quad	0x401d73ba775fb2ee              # double 7.363016
	.quad	0x401323f0fe047d3d              # double 4.7850989999999998
	.quad	0x4013118e757928e1              # double 4.7671450000000002
	.quad	0x40120e8e60807358              # double 4.5142150000000001
	.quad	0x4016982a5614df8b              # double 5.6485989999999999
	.quad	0x3ff180053e2d6239              # double 1.093755
	.quad	0x3ff8f9a7c17a8933              # double 1.560951
	.quad	0x3fe4d9b5e95b78cd              # double 0.65157600000000004
	.quad	0x4003b63b256ffc11              # double 2.4639799999999998
	.quad	0x4013195af294dd72              # double 4.7747609999999998
	.quad	0x3fb4ad14a0a0f4d8              # double 0.080766000000000004
	.quad	0x3fd19e518f3eccc4              # double 0.27528799999999998
	.quad	0x4010b0a7c5ac471b              # double 4.1725149999999998
	.quad	0x400e3b163baba7b9              # double 3.778851
	.quad	0x400247f455a7d242              # double 2.2851340000000002
	.quad	0x3feb7f64cf8d716d              # double 0.85930099999999998
	.quad	0x3fdfb7521144cbe2              # double 0.495564
	.quad	0x400b3945b6c3760c              # double 3.402965
	.quad	0x4022ff2ba9d1f601              # double 9.4983799999999991
	.quad	0x40114f3c70c996b7              # double 4.3273789999999996
	.quad	0x4014773d5bab2181              # double 5.1164449999999997
	.quad	0x4023469270b06c44              # double 9.637836
	.quad	0x401f04b1ee243569              # double 7.7545849999999996
	.quad	0x400a741aef6f8f04              # double 3.306692
	.quad	0x3ff095ac03ff6901              # double 1.0365409999999999
	.quad	0x402354aa9717df1a              # double 9.6653640000000003
	.quad	0x401012f901083dbc              # double 4.0185279999999999
	.quad	0x4021ac93c89f40a3              # double 8.8370650000000008
	.quad	0x4010ff041461b6d4              # double 4.2490389999999998
	.quad	0x401643269df97aab              # double 5.5655770000000002
	.quad	0x40154752da98676a              # double 5.3196519999999996
	.quad	0x40164b82c2bd7f52              # double 5.5737410000000001
	.quad	0x40154c3b0c4588a0              # double 5.3244439999999997
	.quad	0x400851654d61b2a2              # double 3.0397439999999998
	.quad	0x401280a808c8259e              # double 4.6256409999999999
	.quad	0x4006a495e17e34b9              # double 2.8303639999999999
	.quad	0x4021913a2df9378f              # double 8.7836470000000002
	.quad	0x3ffa200c0f01fb83              # double 1.6328240000000001
	.quad	0x3fe72caff6d33094              # double 0.72420499999999999
	.quad	0x4023b143e1006078              # double 9.8462209999999998
	.quad	0x4022fe74afd54541              # double 9.4969839999999994
	.quad	0x4007e5072085b185              # double 2.9868299999999999
	.quad	0x40124e2a3cea6c1a              # double 4.576333
	.quad	0x3fcc2845996744b3              # double 0.21997900000000001
	.quad	0x401ce4b09e98dcdb              # double 7.2233299999999998
	.quad	0x4018509e12a51e32              # double 6.0787279999999999
	.quad	0x3fd8cf80dc33721d              # double 0.38766499999999998
	.quad	0x40226d07852f7f4a              # double 9.2129480000000008
	.quad	0x40224942917507ea              # double 9.1430860000000003
	.quad	0x4022fefb6dca07f6              # double 9.4980119999999992
	.quad	0x400ce8f75536933a              # double 3.613753
	.quad	0x400ca40fa9c12f0a              # double 3.5801080000000001
	.quad	0x4012ad844d013a93              # double 4.6694500000000003
	.quad	0x40132008a697aede              # double 4.7812830000000002
	.quad	0x4021e97c5ef62f9d              # double 8.9560270000000006
	.quad	0x4021643632c1f42c              # double 8.6957260000000005
	.quad	0x3fed32df505d0fa6              # double 0.91246000000000005
	.quad	0x4022f331a08bfc22              # double 9.4749879999999997
	.quad	0x40094a2e3c536d65              # double 3.1612209999999998
	.quad	0x40183f6124074645              # double 6.0618939999999997
	.quad	0x40160a0232096788              # double 5.5097740000000002
	.quad	0x4021ff4afd545415              # double 8.9986189999999997
	.quad	0x401e51a5870da5db              # double 7.579733
	.quad	0x400427903211cb04              # double 2.5193180000000002
	.quad	0x4020afb352a84381              # double 8.3431650000000008
	.quad	0x3fe9064883fd5022              # double 0.78201699999999996
	.quad	0x40214cdca8e2e2b9              # double 8.6501210000000004
	.quad	0x4021323df6db9410              # double 8.5981290000000001
	.quad	0x401cdafe60c38f36              # double 7.2138609999999996
	.quad	0x401831c432ca57a8              # double 6.0486000000000004
	.quad	0x4016c4b90214ad36              # double 5.6921119999999998
	.quad	0x3ff80408d8ec95c0              # double 1.500985
	.quad	0x40033357e670e2c1              # double 2.4000699999999999
	.quad	0x4013542d05f28848              # double 4.8322029999999998
	.quad	0x40238a4edf612407              # double 9.7701329999999995
	.quad	0x4012887a8d64d7f1              # double 4.6332800000000001
	.quad	0x400a85197a24894c              # double 3.3149899999999999
	.quad	0x3fd82f5126634118              # double 0.377888
	.quad	0x4011c7952d234eba              # double 4.4449050000000003
	.quad	0x3ffe2faa4766c6de              # double 1.8866369999999999
	.quad	0x40179877ab324852              # double 5.8988940000000003
	.quad	0x401d3f284167a95d              # double 7.3116770000000004
	.quad	0x40178486ad2dcb14              # double 5.8794199999999996
	.quad	0x401ebfa22706d506              # double 7.6871419999999997
	.quad	0x400343369b9d7fd8              # double 2.4078189999999999
	.quad	0x40120bc5154866a1              # double 4.5114939999999999
	.quad	0x40131d95dd4c76d1              # double 4.7788919999999999
	.quad	0x4011623f67f4dbe0              # double 4.3459450000000004
	.quad	0x40161b97fe8ee6b8              # double 5.5269469999999998
	.quad	0x4012e1233df2a9d6              # double 4.7198609999999999
	.quad	0x400de9b5a63f9a4a              # double 3.7391160000000001
	.quad	0x400b4e043a2163fe              # double 3.4130940000000001
	.quad	0x401478eb0318b934              # double 5.1180839999999996
	.quad	0x401842830a0b1bbd              # double 6.064953
	.quad	0x3ff7b86d2ed783e0              # double 1.482526
	.quad	0x3fff5df97aaac109              # double 1.9604429999999999
	.quad	0x3ffbcbb2bba98eda              # double 1.737231
	.quad	0x3ff5a2f6a50d6b23              # double 1.3522860000000001
	.quad	0x40227f90b8498809              # double 9.2491509999999995
	.quad	0x401f68e581cf7879              # double 7.8524380000000002
	.quad	0x40211eb053198288              # double 8.559939
	.quad	0x401344c3c18b502b              # double 4.8171530000000002
	.quad	0x40167e6ff7dfa00e              # double 5.6234739999999999
	.quad	0x3fe1c1b10fd7e458              # double 0.554894
	.quad	0x400c4792d1287c20              # double 3.534948
	.quad	0x40106844d013a92a              # double 4.1018249999999998
	.quad	0x401250060780fdc1              # double 4.5781479999999997
	.quad	0x400dee24bba12b5e              # double 3.7412809999999999
	.quad	0x401c82c83ec892ab              # double 7.1277169999999996
	.quad	0x401084dc65c70436              # double 4.1297470000000001
	.quad	0x401fd8637bd05af7              # double 7.9613170000000001
	.quad	0x40032d4562e09fe8              # double 2.3971049999999998
	.quad	0x3ff789dadfb506dd              # double 1.4711559999999999
	.quad	0x3fdae76c8b439581              # double 0.420375
	.quad	0x4011839b024f6599              # double 4.3785210000000001
	.quad	0x400786aa087ca644              # double 2.9407540000000001
	.quad	0x4014ef77f27fe4bd              # double 5.2338560000000003
	.quad	0x401418b3b320535d              # double 5.0241230000000003
	.quad	0x401225425f202108              # double 4.5363860000000003
	.quad	0x4021f8815e39713b              # double 8.9853620000000003
	.quad	0x40197a4a05dd8f93              # double 6.3694230000000003
	.quad	0x3f7af7d30ad46f58              # double 0.0065839999999999996
	.quad	0x40190ee9dd7ecbb8              # double 6.264564
	.quad	0x400823d9a95421c0              # double 3.0175049999999999
	.quad	0x4008eb1e5c0b9991              # double 3.1148039999999999
	.quad	0x4017774cd31769a9              # double 5.8665039999999999
	.quad	0x40017cb2d905c033              # double 2.1858879999999998
	.quad	0x4021a1a719b4dcec              # double 8.815728
	.quad	0x4014671d60631727              # double 5.1006980000000004
	.quad	0x40228401e68a0d35              # double 9.2578270000000007
	.quad	0x402289de05037500              # double 9.2692720000000008
	.quad	0x3fd4a52ac753e708              # double 0.32258100000000001
	.quad	0x40200ae0e30446b7              # double 8.0212470000000007
	.quad	0x4018c167ec7863bf              # double 6.1888730000000001
	.quad	0x400b9f676ea4228a              # double 3.4528340000000002
	.quad	0x401fea172abef06b              # double 7.9786039999999998
	.quad	0x40120eff9f87f024              # double 4.5146470000000001
	.quad	0x400ae317acc4ef89              # double 3.3608850000000001
	.quad	0x401542ab25b317f0              # double 5.3151060000000001
	.quad	0x401712ff8ec0f883              # double 5.7685529999999998
	.quad	0x4020d20620ab7132              # double 8.4102029999999992
	.quad	0x40206e451b93037d              # double 8.2153709999999993
	.quad	0x4000e5e6ff7dfa01              # double 2.1122570000000001
	.quad	0x40222ee392e1ef74              # double 9.0915800000000004
	.quad	0x400b82e5de15ca6d              # double 3.4389150000000002
	.quad	0x4022c164a59c065b              # double 9.3777209999999993
	.quad	0x401742eb1c432ca5              # double 5.8153499999999996
	.quad	0x4012a872b020c49c              # double 4.6645000000000003
	.quad	0x4003717f84449dbf              # double 2.4304190000000001
	.quad	0x400375f3d7d3910c              # double 2.4325939999999999
	.quad	0x401ebf9830e3cd9a              # double 7.6871039999999997
	.quad	0x400cd1715c63ae25              # double 3.6022669999999999
	.quad	0x40165ca5bd944aa5              # double 5.5904759999999998
	.quad	0x4004563a9f383f0c              # double 2.5421040000000001
	.quad	0x40151a45d41fa765              # double 5.2756569999999998
	.quad	0x401186b873797460              # double 4.3815629999999999
	.quad	0x40113c981beb1811              # double 4.3091739999999996
	.quad	0x3fbc7607c4199fe4              # double 0.111176
	.quad	0x401de7c3504c48ae              # double 7.4763310000000001
	.quad	0x401a747baa9b499d              # double 6.613753
	.quad	0x4022ef891e215337              # double 9.4678430000000002
	.quad	0x400ce7820a30db6a              # double 3.6130409999999999
	.quad	0x402090e94ee392e2              # double 8.2830300000000001
	.quad	0x40166cd78c436fc1              # double 5.6062909999999997
	.quad	0x3ff19e8815e39714              # double 1.1012040000000001
	.quad	0x402255a16616b54e              # double 9.1672469999999997
	.quad	0x40095b61bb05faec              # double 3.1696200000000001
	.quad	0x4010f3d9a95421c0              # double 4.2381349999999998
	.quad	0x401f3d62bf11f927              # double 7.8099470000000001
	.quad	0x3fe7e96a26e54717              # double 0.74724299999999999
	.quad	0x4009fb4677b395c4              # double 3.2476929999999999
	.quad	0x400f6a72ead9274e              # double 3.9269769999999999
	.quad	0x3fa474751ce28ed6              # double 0.039951
	.quad	0x3ffa3689ca18bd66              # double 1.638315
	.quad	0x3ff65e518f3eccc4              # double 1.3980269999999999
	.quad	0x400ad646ae3a3a8e              # double 3.3546269999999998
	.quad	0x400bfc0b13597918              # double 3.498068
	.quad	0x401dcb9f559b3d08              # double 7.4488500000000001
	.quad	0x4013b0a41a261bf3              # double 4.9225009999999996
	.quad	0x3ff4568512231833              # double 1.271123
	.quad	0x40204dff822bbecb              # double 8.1523400000000006
	.quad	0x40003bbadc0980b2              # double 2.0291649999999999
	.quad	0x401e7806af46aa08              # double 7.6172129999999995
	.quad	0x400a107bfe7e1fc1              # double 3.2580490000000002
	.quad	0x401d5cd141a6937d              # double 7.3406419999999999
	.quad	0x4020e65492ff4ba5              # double 8.4498639999999998
	.quad	0x3ffbf34b51372a39              # double 1.7468980000000001
	.quad	0x3fffc127b2cc7086              # double 1.9846569999999999
	.quad	0x4022cce5f7403dde              # double 9.4001920000000005
	.quad	0x401207bcc2938de7              # double 4.5075560000000001
	.quad	0x4013bedb7281fd9c              # double 4.9363840000000003
	.quad	0x400228b86b15f890              # double 2.2698830000000001
	.quad	0x400cf40aaeafab54              # double 3.6191610000000001
	.quad	0x40231cdca8e2e2b9              # double 9.5563710000000003
	.quad	0x401bdcb10342aa9f              # double 6.9655189999999996
	.quad	0x4021990de093532e              # double 8.7989339999999991
	.quad	0x4019fdfc5cdd50a9              # double 6.4980330000000004
	.quad	0x4015a09c3ce2089e              # double 5.4068459999999998
	.quad	0x401b875b81301648              # double 6.8821849999999998
	.quad	0x4022fffde7210be9              # double 9.4999839999999995
	.quad	0x40225841248d7e02              # double 9.1723719999999993
	.quad	0x4007e23c85c24c40              # double 2.9854669999999999
	.quad	0x4020a379b77c02b0              # double 8.3192880000000002
	.quad	0x40218d080b673c4f              # double 8.7754519999999996
	.quad	0x400b5bb9cf9a06a7              # double 3.419788
	.quad	0x4010edbbe0157eed              # double 4.2321619999999998
	.quad	0x400cb635610adcd3              # double 3.5889690000000001
	.quad	0x3ffc0769ec2ce465              # double 1.7518100000000001
	.quad	0x3fe29af5ba2be059              # double 0.58141600000000004
	.quad	0x401050c4156e264e              # double 4.0788729999999997
	.quad	0x4002299bf5946c33              # double 2.2703169999999999
	.quad	0x40069a9da597d49d              # double 2.8254959999999998
	.quad	0x401e88815e39713b              # double 7.6333060000000001
	.quad	0x401429dd7ecbb7fa              # double 5.0408840000000001
	.quad	0x4021bf12e40852b5              # double 8.8731910000000003
	.quad	0x402126df82b1f688              # double 8.5759240000000005
	.quad	0x4020ade4606748e4              # double 8.3396329999999991
	.quad	0x40006a9cdc443915              # double 2.052057
	.quad	0x40126f709b738e6d              # double 4.6088279999999999
	.quad	0x402088f2becedd48              # double 8.2674769999999995
	.quad	0x4021aa424a276b7f              # double 8.8325370000000003
	.quad	0x400766223e186983              # double 2.9248699999999999
	.quad	0x400bffbefd00713f              # double 3.499876
	.quad	0x4012bcb039ef0f17              # double 4.684266
	.quad	0x3ff860945f9df549              # double 1.523579
	.quad	0x40187c25072085b2              # double 6.1212350000000004
	.quad	0x401c64de3b8a19ca              # double 7.0985040000000001
	.quad	0x3fc5538ac18f81e9              # double 0.16661200000000001
	.quad	0x4023b451fc4c1659              # double 9.8521879999999999
	.quad	0x40230f5dbb9cf9a0              # double 9.5300119999999993
	.quad	0x40028c33b5393251              # double 2.3184580000000001
	.quad	0x402324d594f26aec              # double 9.5719419999999999
	.quad	0x40225e15ebfa8f7e              # double 9.1837610000000005
	.quad	0x4017c8fe260b2c84              # double 5.9462820000000001
	.quad	0x40217549f94855da              # double 8.7290799999999997
	.quad	0x401cf4f765fd8adb              # double 7.2392250000000002
	.quad	0x401e53964a59c066              # double 7.5816280000000003
	.quad	0x401f37ca643cc07b              # double 7.8044830000000002
	.quad	0x4021340ad03d9a95              # double 8.6016449999999995
	.quad	0x400494d6a161e4f7              # double 2.5726749999999998
	.quad	0x40111cf4623d0bfa              # double 4.278276
	.quad	0x401f1ee392e1ef74              # double 7.7801650000000002
	.quad	0x3fe832af1455219b              # double 0.75618700000000005
	.quad	0x3fe632af1455219b              # double 0.69368700000000005
	.quad	0x400fd11d798d8a98              # double 3.9771070000000002
	.quad	0x3fd6f212d77318fc              # double 0.35852499999999998
	.quad	0x402367774aba3876              # double 9.7020820000000008
	.quad	0x401365f3519bd406              # double 4.8495609999999996
	.quad	0x4021ffff9b56323c              # double 8.9999970000000004
	.quad	0x401d49ff92f2b66b              # double 7.3222639999999997
	.quad	0x40220c98e53eb39a              # double 9.0246040000000001
	.quad	0x4014a19c9d5a187a              # double 5.1578239999999997
	.quad	0x3fe1886594af4f0e              # double 0.54790000000000005
	.quad	0x402184f3fd933e36              # double 8.7596740000000004
	.quad	0x4000285122318330              # double 2.0196860000000001
	.quad	0x3fd38387df5cf249              # double 0.30490299999999998
	.quad	0x40239cdd0d8cb07d              # double 9.8063739999999999
	.quad	0x3fd922291fb3fa6e              # double 0.39271
	.quad	0x401aa8672756861f              # double 6.6644560000000004
	.quad	0x400b0d2b2bfdb4cc              # double 3.3814299999999999
	.quad	0x40041fab96f21f6d              # double 2.5154640000000001
	.quad	0x3fff942c3c9eecc0              # double 1.9736750000000001
	.quad	0x401aee260b2c83ed              # double 6.7325670000000004
	.quad	0x3ff886f049a9973e              # double 1.5329440000000001
	.quad	0x401bf743a647fdc6              # double 6.9914690000000004
	.quad	0x4020f132f87ad081              # double 8.4710920000000005
	.quad	0x4014380b242070b9              # double 5.0547300000000002
	.quad	0x4009366b6177ea1c              # double 3.1515719999999998
	.quad	0x4020db280f12c27a              # double 8.4280399999999993
	.quad	0x4022515af294dd72              # double 9.1588969999999996
	.quad	0x4020e9a500d5e8d5              # double 8.4563369999999995
	.quad	0x3ffb3d77fae3608d              # double 1.702507
	.quad	0x401d037d63022dd8              # double 7.2534080000000003
	.quad	0x3fef75cf2495e17e              # double 0.98313099999999998
	.quad	0x400b4cdf266ba494              # double 3.4125350000000001
	.quad	0x3ffdf7dfa00e27e1              # double 1.873016
	.quad	0x40131f294dd72368              # double 4.7804310000000001
	.quad	0x40208fe52157689d              # double 8.2810450000000007
	.quad	0x4017ec0c1fc8f323              # double 5.9805149999999996
	.quad	0x401f6992c8c50050              # double 7.8530990000000003
	.quad	0x401dee1198aeb80f              # double 7.4824890000000002
	.quad	0x4018195ee136e71d              # double 6.0247760000000001
	.quad	0x4021d34e3369b9d8              # double 8.912706
	.quad	0x401250c996b7670a              # double 4.578894
	.quad	0x40074e653868fd1a              # double 2.9132790000000002
	.quad	0x4022e8bfc2224edf              # double 9.4545879999999993
	.quad	0x3fa23e9ea1405708              # double 0.035633999999999999
	.quad	0x402000bfa0945f9e              # double 8.0014620000000001
	.quad	0x401b2e3f78bbd380              # double 6.7951639999999998
	.quad	0x4020a3c72e275ab8              # double 8.3198790000000002
	.quad	0x400eda4a48f96e16              # double 3.8565870000000002
	.quad	0x3fd3eac8605681ed              # double 0.31120500000000001
	.quad	0x4009e440f2389720              # double 3.2364519999999999
	.quad	0x4010b8f605ab3aac              # double 4.1806260000000002
	.quad	0x401e58bef8ceb357              # double 7.5866660000000001
	.quad	0x3fe941919ac79703              # double 0.78925400000000001
	.quad	0x401f37c243dccea3              # double 7.8044520000000003
	.quad	0x400a9fe4bcad9ad8              # double 3.3280729999999998
	.quad	0x40203a0e1f7d73c9              # double 8.1133889999999997
	.quad	0x3ff860d9945b6c37              # double 1.5236449999999999
	.quad	0x402311c51dabe271              # double 9.5347069999999991
	.quad	0x4015962b6ae7d567              # double 5.3966500000000002
	.quad	0x401878bf7f06705d              # double 6.1179180000000004
	.quad	0x40113724fa8b4bf9              # double 4.303852
	.quad	0x401db6dfc5cdd50b              # double 7.4285880000000004
	.quad	0x4006a1bb05faebc4              # double 2.82897
	.quad	0x40131d7cb2d905c0              # double 4.7787959999999998
	.quad	0x400f0e3476295209              # double 3.8819360000000001
	.quad	0x40179b8ae31d712a              # double 5.9018969999999999
	.quad	0x4005cac53b0813cb              # double 2.7240090000000001
	.quad	0x3ffe9728a6117721              # double 1.911904
	.quad	0x3ffbe72ead9274e2              # double 1.743941
	.quad	0x4021dd0e34762952              # double 8.9317489999999999
	.quad	0x40224f21b3aeee95              # double 9.1545539999999992
	.quad	0x4022315d91ab8e8f              # double 9.0964170000000006
	.quad	0x4016a85ec3dab5c4              # double 5.6644240000000003
	.quad	0x401d9c78e9f6a93f              # double 7.4028049999999999
	.quad	0x3ff6bdc1615ebfa9              # double 1.421327
	.quad	0x4023f7fed20296b3              # double 9.9843659999999996
	.quad	0x400c37c6759ab6d0              # double 3.527234
	.quad	0x40219ab862b27cbf              # double 8.8021879999999992
	.quad	0x4021e8ccff21b3af              # double 8.9546890000000001
	.quad	0x40121ef8ceb356da              # double 4.530246
	.quad	0x4014dfb0d51f81a6              # double 5.2184480000000004
	.quad	0x401a1b827fa1a0cf              # double 6.5268649999999999
	.quad	0x401bdda87a072d1b              # double 6.9664630000000001
	.quad	0x4017bca3a4b5568f              # double 5.9342180000000004
	.quad	0x3fa125dd095af295              # double 0.033492000000000001
	.quad	0x400c5810624dd2f2              # double 3.5430000000000001
	.quad	0x402145c7abfb9bed              # double 8.6362889999999997
	.quad	0x4002479ee02a77a3              # double 2.2849710000000001
	.quad	0x401f9b068123810f              # double 7.9013920000000004
	.quad	0x4018974a771c970f              # double 6.1477449999999996
	.quad	0x400da07357e670e3              # double 3.7033450000000001
	.quad	0x401dc6909aed56b0              # double 7.4439109999999999
	.quad	0x3fffaf73c0c1fc8f              # double 1.980335
	.quad	0x4006819008205ff2              # double 2.8132630000000001
	.quad	0x3fde5db76b3bb83d              # double 0.47447
	.quad	0x4014a9613d31b9b6              # double 5.1654099999999996
	.quad	0x3ff34c23fab10ba6              # double 1.206089
	.quad	0x40098323bbc6eb0b              # double 3.1890329999999998
	.quad	0x3fef0e0221426fe7              # double 0.97045999999999998
	.quad	0x40231d410f94c87a              # double 9.5571370000000009
	.quad	0x400393a2595bbbe8              # double 2.4470869999999998
	.quad	0x400a892f6e82949a              # double 3.3169849999999999
	.quad	0x4017414940bbb1f2              # double 5.8137559999999997
	.quad	0x401965b035bd512f              # double 6.3493050000000002
	.quad	0x401b801a79fec99f              # double 6.8751009999999999
	.quad	0x4012ddeca25529fe              # double 4.716723
	.quad	0x3fa3ebbfd71b0468              # double 0.038907999999999998
	.quad	0x400cca0902de00d2              # double 3.5986500000000001
	.quad	0x3ffd87c5260f5e42              # double 1.845647
	.quad	0x40108311e85fd04a              # double 4.1279979999999998
	.quad	0x4022b32b55ef1fde              # double 9.3499400000000001
	.quad	0x401e8b955f78359c              # double 7.6363120000000002
	.quad	0x4013c042528ae74f              # double 4.9377529999999998
	.quad	0x402319b79d909f1f              # double 9.5502289999999998
	.quad	0x4020a4b1cc964628              # double 8.321669
	.quad	0x4014b98c7e28240b              # double 5.1811999999999996
	.quad	0x40142546d3f9e7b8              # double 5.036403
	.quad	0x400a323bbc6eb0b8              # double 3.2745280000000001
	.quad	0x3ffec938583621fb              # double 1.924126
	.quad	0x402200a86d71f362              # double 9.0012849999999993
	.quad	0x400266cd29131ec1              # double 2.3001960000000001
	.quad	0x401cdad9ad85dfa8              # double 7.2137209999999996
	.quad	0x40220ada98676a72              # double 9.0211989999999993
	.quad	0x4016cdc93ea2d2fe              # double 5.7009629999999998
	.quad	0x400db8e086bdf4c3              # double 3.7152720000000001
	.quad	0x4016bf9e7b80a9df              # double 5.6871280000000004
	.quad	0x40015c829cfdd228              # double 2.1701709999999999
	.quad	0x400a18327674d163              # double 3.2618149999999999
	.quad	0x4022e13964a59c06              # double 9.4398909999999994
	.quad	0x4012d55eaee2003b              # double 4.7083690000000002
	.quad	0x4022c9b2a27f1b69              # double 9.3939409999999998
	.quad	0x401a1eabbcb1cc96              # double 6.5299519999999998
	.quad	0x40014a737110e454              # double 2.1613530000000001
	.quad	0x3ff605015c209247              # double 1.3762220000000001
	.quad	0x40217e89656eefa2              # double 8.7471420000000002
	.quad	0x400ef0bae89eba6b              # double 3.8675440000000001
	.quad	0x4002c1e92923e5b8              # double 2.3446829999999999
	.quad	0x40177acc92146a1a              # double 5.8699209999999997
	.quad	0x3fcd78b3700474da              # double 0.23024600000000001
	.quad	0x3ff3b70ac3a860dd              # double 1.2321880000000001
	.quad	0x40208f5f91600f34              # double 8.2800259999999994
	.quad	0x401aecddd6e04c06              # double 6.7313150000000004
	.quad	0x4021ad50225742dd              # double 8.8385020000000001
	.quad	0x401560fe47991bc5              # double 5.3447199999999997
	.quad	0x401d11248d7e0264              # double 7.2667409999999997
	.quad	0x4012b90b84988095              # double 4.6807080000000001
	.quad	0x400f212599ed7c70              # double 3.8911850000000001
	.quad	0x401f5cc037931444              # double 7.8405769999999997
	.quad	0x4019b0c4588a04d1              # double 6.4226239999999999
	.quad	0x3ffc335d249e44fa              # double 1.76254
	.quad	0x4023ba554b8bef8d              # double 9.8639320000000001
	.quad	0x4020034c1a8ac5c1              # double 8.0064399999999996
	.quad	0x3fd1ba5a038194c0              # double 0.276999
	.quad	0x40178214f0520d13              # double 5.877033
	.quad	0x4014d96e9bbf0dc7              # double 5.2123359999999996
	.quad	0x402265bee3d5fdce              # double 9.1987220000000001
	.quad	0x401610f9096bb98c              # double 5.5165749999999996
	.quad	0x3ff3a1bc126a65cf              # double 1.2269859999999999
	.quad	0x3fe882a5614df8b1              # double 0.76594799999999996
	.quad	0x3ff395757d5a9eb2              # double 1.223989
	.quad	0x400ae3150dae3e6c              # double 3.3608799999999999
	.quad	0x4019a21d96e9bbf1              # double 6.4083160000000001
	.quad	0x4016d490e66cb103              # double 5.7075839999999998
	.quad	0x4018ff70153bd167              # double 6.2494509999999996
	.quad	0x401b03c60029f16b              # double 6.7536849999999999
	.quad	0x400bcf4adbc664d4              # double 3.4762170000000001
	.quad	0x3fcaf5b1c8648840              # double 0.210623
	.quad	0x3fefbb107746887b              # double 0.99158500000000004
	.quad	0x4006287ebf22c01e              # double 2.7697729999999998
	.quad	0x401032c27a63736d              # double 4.0495700000000001
	.quad	0x402335b5d894812c              # double 9.6049030000000001
	.quad	0x4017986b9c304ccf              # double 5.8988480000000001
	.quad	0x40223aeee957470f              # double 9.1151040000000005
	.quad	0x401f5c6d1e108c3f              # double 7.8402599999999997
	.quad	0x40232498c3b0c459              # double 9.5714780000000008
	.quad	0x4020c5f676ea4229              # double 8.3866460000000007
	.quad	0x3fffcf0307f23cc9              # double 1.98804
	.quad	0x3ffa74784230fcf8              # double 1.653435
	.quad	0x401d2b53d640e9d5              # double 7.2923119999999999
	.quad	0x4022c298cc144029              # double 9.3800720000000001
	.quad	0x40180647fdc5931d              # double 6.0061340000000003
	.quad	0x401ec075b3e1437c              # double 7.6879489999999997
	.quad	0x401733db3bfb58d1              # double 5.8006409999999997
	.quad	0x4007f42a23bff8a9              # double 2.994221
	.quad	0x4014f3b8a19c9d5a              # double 5.2380089999999999
	.quad	0x3fea8bf1a5ca2984              # double 0.82958299999999995
	.quad	0x4000e438088509c0              # double 2.1114350000000002
	.quad	0x4019f29888f861a6              # double 6.48691
	.quad	0x401f9a2163fdd65a              # double 7.9005179999999999
	.quad	0x400767e8ccdd93c4              # double 2.9257369999999998
	.quad	0x4018720d130df9be              # double 6.1113780000000002
	.quad	0x402278663c74fb55              # double 9.2351550000000007
	.quad	0x3fff7bb40b34e768              # double 1.9677009999999999
	.quad	0x40126b49e01de269              # double 4.6047739999999999
	.quad	0x401d71f080303c08              # double 7.361269
	.quad	0x4005899c7bcc2939              # double 2.6921930000000001
	.quad	0x4019f45b6c3760bf              # double 6.4886299999999997
	.quad	0x3ffc937f38c5436c              # double 1.7860100000000001
	.quad	0x4000dc9363f572de              # double 2.1077029999999999
	.quad	0x3fee0e4da09cc31a              # double 0.93924600000000003
	.quad	0x400081d19157abb9              # double 2.0633880000000002
	.quad	0x4014260a63305101              # double 5.0371490000000003
	.quad	0x40131559f6ec5b08              # double 4.7708510000000004
	.quad	0x3ffaa2c343b70ef5              # double 1.6647369999999999
	.quad	0x4010a6b93ccd0fe9              # double 4.1628160000000003
	.quad	0x3ff353b5bf6a0dbb              # double 1.207937
	.quad	0x4009f8f1d3ed527e              # double 3.2465549999999999
	.quad	0x402353c72e275ab8              # double 9.6636290000000002
	.quad	0x4020edfb2edfe75c              # double 8.4648070000000004
	.quad	0x3fdd9d4d834091c1              # double 0.46272600000000003
	.quad	0x3ff0b3c81908e582              # double 1.043892
	.quad	0x4007dcc857f3061c              # double 2.9828039999999998
	.quad	0x401b47f7be121ee6              # double 6.8202809999999996
	.quad	0x4021c529131ec0b5              # double 8.8850789999999993
	.quad	0x401de443d46b26c0              # double 7.4729150000000004
	.quad	0x4011116d6dc1a47b              # double 4.2670190000000003
	.quad	0x40114486f049a997              # double 4.3169209999999998
	.quad	0x400f13b213e3e293              # double 3.884617
	.quad	0x400377739f340d4e              # double 2.4333260000000001
	.quad	0x4017c26a65cf67b2              # double 5.9398590000000002
	.quad	0x40202cf50a02b841              # double 8.0878069999999997
	.quad	0x40196d844d013a93              # double 6.3569500000000003
	.quad	0x401816f049a9973e              # double 6.0224010000000003
	.quad	0x3fd05cb790fb6567              # double 0.25565900000000003
	.quad	0x400f6333fc86cebc              # double 3.9234390000000001
	.quad	0x401f6ec2ce464990              # double 7.8581649999999996
	.quad	0x40228e8dda48b652              # double 9.2784259999999996
	.quad	0x4013c814d72799a2              # double 4.945392
	.quad	0x401e10d73860999e              # double 7.5164460000000002
	.quad	0x400e8234a87e38eb              # double 3.813577
	.quad	0x3fdb127f5e84f095              # double 0.42300399999999999
	.quad	0x401dcb43d89ce4a8              # double 7.4485010000000002
	.quad	0x40101fa658c4bd34              # double 4.0309080000000002
	.quad	0x4014b6fdeb52c9d1              # double 5.1787029999999996
	.quad	0x4004a007570c5650              # double 2.5781390000000002
	.quad	0x401af43419e30015              # double 6.73848
	.quad	0x401f6746cb966be8              # double 7.8508560000000002
	.quad	0x3ff85e68a0d349bf              # double 1.5230490000000001
	.quad	0x3ffa669270b06c44              # double 1.650042
	.quad	0x3fe824db163baba8              # double 0.75449900000000003
	.quad	0x401cb814940bbb1f              # double 7.1797659999999999
	.quad	0x40225d536933a040              # double 9.1822769999999991
	.quad	0x401e0e06961c3697              # double 7.5136969999999996
	.quad	0x401235c63ae2541e              # double 4.5525140000000004
	.quad	0x40107500d5e8d541              # double 4.1142609999999999
	.quad	0x4012db630a91537a              # double 4.714245
	.quad	0x401df7c3d68405b4              # double 7.4919580000000003
	.quad	0x3fdfeca25529fe00              # double 0.49881799999999998
	.quad	0x40059ab324851a87              # double 2.7005370000000002
	.quad	0x401b51e53a81dc0e              # double 6.8299760000000003
	.quad	0x40061cdab191dde3              # double 2.7640889999999998
	.quad	0x401430d3cff64cf9              # double 5.0476830000000001
	.quad	0x40213ade43ed959a              # double 8.6149769999999997
	.quad	0x40021f3061c79b35              # double 2.2652290000000002
	.quad	0x40044b4e11dbca97              # double 2.5367700000000002
	.quad	0x3ffd5d590c0ad03e              # double 1.8352900000000001
	.quad	0x401555fe111276fb              # double 5.333977
	.quad	0x401a75742dcf4624              # double 6.6147010000000002
	.quad	0x401e5319c5a3e39f              # double 7.5811529999999995
	.quad	0x40155a6698bb4d49              # double 5.3382820000000004
	.quad	0x3fcca3161a1db878              # double 0.22372700000000001
	.quad	0x4001e2541d8e8640              # double 2.2355119999999999
	.quad	0x400c8ff9f87f023f              # double 3.5703010000000002
	.quad	0x4023b0ce703afb7f              # double 9.8453250000000007
	.quad	0x40201cefed63454a              # double 8.0565180000000005
	.quad	0x40123b845564b663              # double 4.558122
	.quad	0x4015d0e30446b69e              # double 5.4539910000000003
	.quad	0x3fe69a49c2c1b110              # double 0.70633400000000002
	.quad	0x401d968837718655              # double 7.3970039999999999
	.quad	0x4021193ab430f495              # double 8.5492760000000008
	.quad	0x400ce1a1db877ab3              # double 3.6101719999999999
	.quad	0x401c8fd5454152b1              # double 7.1404620000000003
	.quad	0x401785b4245f5ad9              # double 5.8805699999999996
	.quad	0x4016db70ac3a860e              # double 5.7142970000000002
	.quad	0x4006f8b3700474da              # double 2.8714360000000001
	.quad	0x4017488b9778572a              # double 5.8208450000000003
	.quad	0x3fde178f68be2f7b              # double 0.47018799999999999
	.quad	0x402395510d38cda7              # double 9.7916340000000001
	.quad	0x401ba1ea35935fc4              # double 6.9081200000000003
	.quad	0x4023d55c96030c24              # double 9.916722
	.quad	0x4018fc18b502abac              # double 6.2461880000000001
	.quad	0x401a6e2b4959e625              # double 6.6075869999999997
	.quad	0x3ff9fe9c886162f1              # double 1.6246609999999999
	.quad	0x401f7faa044ae85c              # double 7.8746720000000003
	.quad	0x40010e88df37329c              # double 2.1320969999999999
	.quad	0x401c75f0f5a1016d              # double 7.1151770000000001
	.quad	0x401230c5a8155d5f              # double 4.5476289999999997
	.quad	0x4022171cda2b5a21              # double 9.0451420000000002
	.quad	0x40181ee3d5fdcdf7              # double 6.0301660000000004
	.quad	0x40230cf9a06a6e33              # double 9.5253420000000001
	.quad	0x40116ca925fe974a              # double 4.3561139999999998
	.quad	0x3ff72a5e785b5b70              # double 1.4478439999999999
	.quad	0x40205514e3bcd35b              # double 8.1661750000000008
	.quad	0x3fe8004102ff8ec1              # double 0.750031
	.quad	0x401b0115df6555c5              # double 6.7510599999999998
	.quad	0x401303f63c31df76              # double 4.7538689999999999
	.quad	0x4012e231c64ba94c              # double 4.7208930000000002
	.quad	0x4019452b0a6fc58b              # double 6.3175470000000002
	.quad	0x4020297481b21c47              # double 8.0809669999999993
	.quad	0x402177a0b5ed8d37              # double 8.7336480000000005
	.quad	0x40133fe69270b06c              # double 4.8124029999999998
	.quad	0x40177f7fcfc3f812              # double 5.874511
	.quad	0x40203295e9e1b08a              # double 8.0988000000000007
	.quad	0x401db46ae3a3a8e7              # double 7.4261889999999999
	.quad	0x4018307af20ea5b5              # double 6.0473439999999998
	.quad	0x40233b2cc70867ae              # double 9.6155760000000008
	.quad	0x3ff75118c197e564              # double 1.4572989999999999
	.quad	0x3fe09e96c3fc43b3              # double 0.51935900000000002
	.quad	0x401ce979e16d6dc2              # double 7.2280040000000003
	.quad	0x40191a5b0ff10ecb              # double 6.2757379999999996
	.quad	0x4021c4ce8101f31f              # double 8.8843879999999995
	.quad	0x402054447c30d307              # double 8.1645850000000006
	.quad	0x401f111947cfa26a              # double 7.7666979999999999
	.quad	0x401ab6a2b1704ff4              # double 6.6783549999999998
	.quad	0x400b3d72bcb5fe54              # double 3.4050039999999999
	.quad	0x4005163a19008206              # double 2.635853
	.quad	0x4010107d4e09784f              # double 4.0161030000000002
	.quad	0x400b958c08b75ea6              # double 3.4480209999999998
	.quad	0x3fd415ad106ee30d              # double 0.31382300000000002
	.quad	0x3ffb763a19008206              # double 1.716364
	.quad	0x4020fe6f5019f3c7              # double 8.4969429999999999
	.quad	0x40225b020c49ba5e              # double 9.1777499999999996
	.quad	0x3ff3c6dd69d30271              # double 1.236051
	.quad	0x3fd5415b1422ccb4              # double 0.33211400000000002
	.quad	0x401c44ccab3edd8b              # double 7.0671869999999997
	.quad	0x400191af3a14cec4              # double 2.1961349999999999
	.quad	0x401be6fc58ab92c0              # double 6.9755719999999997
	.quad	0x401f05e5f30e7ff6              # double 7.7557600000000004
	.quad	0x4000421426fe718b              # double 2.0322650000000002
	.quad	0x402255a87a072d1b              # double 9.1673010000000001
	.quad	0x3fa19b4dcebfec14              # double 0.034388000000000002
	.quad	0x401aa6da4484944f              # double 6.6629420000000001
	.quad	0x402331cf13cee9dd              # double 9.5972829999999991
	.quad	0x3fdae89656eefa1e              # double 0.42044599999999999
	.quad	0x400ae7bf61aa3f03              # double 3.3631579999999999
	.quad	0x40170fb7a5f41aef              # double 5.7653489999999996
	.quad	0x4008d10c2c5e2cdc              # double 3.102074
	.quad	0x4020c2799a1fd157              # double 8.3798340000000007
	.quad	0x4003712231832fcb              # double 2.4302410000000001
	.quad	0x4004be29307af20f              # double 2.5928520000000002
	.quad	0x4018383b1d0c8041              # double 6.054913
	.quad	0x3fd776d549731099              # double 0.36662800000000001
	.quad	0x401c2b890d5a5b96              # double 7.0425149999999999
	.quad	0x3ffe479b34a44c7b              # double 1.892482
	.quad	0x3ff001376d549731              # double 1.000297
	.quad	0x401fc42bf9830e3d              # double 7.9415740000000001
	.quad	0x401f26a6a012599f              # double 7.7877450000000001
	.quad	0x3fe477b7c7820a31              # double 0.63961400000000002
	.quad	0x4016ff2778140dd4              # double 5.749174
	.quad	0x401f71e8e6080735              # double 7.8612399999999995
	.quad	0x4020e43d46b26bf8              # double 8.4457799999999992
	.quad	0x40026b69552e2fbe              # double 2.3024469999999999
	.quad	0x4013b042528ae74f              # double 4.9221279999999998
	.quad	0x4023de0e51d25aab              # double 9.9337029999999995
	.quad	0x40024107314ca926              # double 2.281752
	.quad	0x3ff614445aa2e3c5              # double 1.379948
	.quad	0x401fc474538ef34d              # double 7.9418499999999996
	.quad	0x401ae719b4dcebff              # double 6.7256840000000002
	.quad	0x400f71737542a23c              # double 3.930396
	.quad	0x40116fa8b4bf8fcd              # double 4.3590419999999996
	.quad	0x40237d460aa64c30              # double 9.7446750000000009
	.quad	0x3fa7a8f7db6e5040              # double 0.046211000000000002
	.quad	0x40057547e06961c3              # double 2.6822659999999998
	.quad	0x401ad9320d9945b7              # double 6.7121050000000002
	.quad	0x400a0527a20578e6              # double 3.2525170000000001
	.quad	0x3ff1b7dd872f33ca              # double 1.107389
	.quad	0x3fe4f355cd91eeaa              # double 0.65470399999999995
	.quad	0x401cae746cb966be              # double 7.1703659999999996
	.quad	0x4016d2fa5093964a              # double 5.7060329999999997
	.quad	0x4023c1eb6390c910              # double 9.8787489999999991
	.quad	0x3fcf67ec7863beec              # double 0.24535899999999999
	.quad	0x3ff61fbf83382e45              # double 1.3827510000000001
	.quad	0x401ddde37585be1b              # double 7.4666880000000004
	.quad	0x3ffd1f8f4730403a              # double 1.8202050000000001
	.quad	0x4022fb9e8c47a17f              # double 9.4914439999999995
	.quad	0x4015ce71476af89c              # double 5.4516039999999997
	.quad	0x40110f98fa376923              # double 4.2652320000000001
	.quad	0x4022dc0485a0be51              # double 9.4297219999999999
	.quad	0x40092cefed63454a              # double 3.1469420000000001
	.quad	0x4020e4714fce746d              # double 8.4461770000000005
	.quad	0x401acee17a02fb5d              # double 6.702032
	.quad	0x3fccaf922962cfd9              # double 0.224108
	.quad	0x40021410f94c8798              # double 2.259798
	.quad	0x4022faecd07852f8              # double 9.490088
	.quad	0x401db7221858bc5a              # double 7.4288410000000002
	.quad	0x4004970bd017dae8              # double 2.573753
	.quad	0x4023d1efd86a8fc1              # double 9.9100330000000003
	.quad	0x4022de2a1b5c7cd9              # double 9.4339150000000007
	.quad	0x40223ca18bd66278              # double 9.1184200000000004
	.quad	0x40235c9c2c1b10fd              # double 9.6808789999999991
	.quad	0x4021c41c3efae792              # double 8.8830279999999995
	.quad	0x40059f50e3476295              # double 2.7027909999999999
	.quad	0x400dc0e6299524c0              # double 3.7191890000000001
	.quad	0x3fe422fcefaa4767              # double 0.62927100000000002
	.quad	0x40217fe1b8ed1bf8              # double 8.7497690000000006
	.quad	0x400e784ec636b096              # double 3.8087439999999999
	.quad	0x401140203e63e8de              # double 4.3126230000000003
	.quad	0x400a874107314ca9              # double 3.3160419999999999
	.quad	0x3fe5ed20296b3355              # double 0.68519600000000003
	.quad	0x401c4f26f1dc50ce              # double 7.0772969999999997
	.quad	0x4013bf13cee9dd7f              # double 4.9365990000000002
	.quad	0x4013cc842fa50939              # double 4.9497229999999997
	.quad	0x4013e14013ec460f              # double 4.9699710000000001
	.quad	0x4012588ace24bba1              # double 4.5864669999999998
	.quad	0x401146d7625204b0              # double 4.3191810000000004
	.quad	0x4021875019f3c70d              # double 8.7642830000000007
	.quad	0x400b1ed959a30985              # double 3.390063
	.quad	0x4022c21ad6451b93              # double 9.3791109999999999
	.quad	0x3ff34d1e96c3fc44              # double 1.2063280000000001
	.quad	0x3fe063022dd7a9a0              # double 0.51208600000000004
	.quad	0x401ac15db3397dd0              # double 6.6888339999999999
	.quad	0x4021985681ecd4aa              # double 8.7975349999999999
	.quad	0x401ae44c37e6f71a              # double 6.7229469999999996
	.quad	0x401d88e1932d6ece              # double 7.3836729999999999
	.quad	0x4016b070329802c1              # double 5.6723030000000003
	.quad	0x400892b4d8ba40d9              # double 3.071634
	.quad	0x40180ab0856e696a              # double 6.0104389999999999
	.quad	0x4020e29bf162ae4b              # double 8.442596
	.quad	0x4018b494d50ebaae              # double 6.1763490000000001
	.quad	0x4022c276534373f3              # double 9.3798089999999998
	.quad	0x4021dfd60e94ee39              # double 8.9371799999999997
	.quad	0x40174c9ea9a3d2d8              # double 5.8248239999999996
	.quad	0x401fb71a7e308787              # double 7.9288119999999997
	.quad	0x4005fb0bbf50e347              # double 2.7475809999999998
	.quad	0x401b078ee2867275              # double 6.7573809999999996
	.quad	0x401dd5c13fd0d068              # double 7.4587450000000004
	.quad	0x401efddce7cd0353              # double 7.7479129999999996
	.quad	0x4005803bc4d22c88              # double 2.6876139999999999
	.quad	0x4023808509bf9c63              # double 9.7510150000000006
	.quad	0x402221656eefa1e4              # double 9.0652270000000001
	.quad	0x400fba0f9096bb99              # double 3.9658500000000001
	.quad	0x402189363f572de4              # double 8.7679919999999995
	.quad	0x40099d495182a993              # double 3.2018
	.quad	0x400d5c8d9f9053a0              # double 3.6701920000000001
	.quad	0x3fe5553ac4f7ec35              # double 0.66665399999999997
	.quad	0x40220f9bdc69f8c2              # double 9.0304859999999998
	.quad	0x401f65000c9539b9              # double 7.8486330000000004
	.quad	0x4001df94855da273              # double 2.2341700000000002
	.quad	0x3ff76b8950763a19              # double 1.463754
	.quad	0x40228c4bd33d2956              # double 9.2740159999999996
	.quad	0x4009ac0f88333fc8              # double 3.2090139999999998
	.quad	0x4013f5d63886594b              # double 4.990075
	.quad	0x4011da5e785b5b70              # double 4.4632509999999996
	.quad	0x4019dab25b317efe              # double 6.463571
	.quad	0x3ff890f94c87980f              # double 1.5353939999999999
	.quad	0x400552a7bd48cb4b              # double 2.665359
	.quad	0x4003c877ee4e26d5              # double 2.4728850000000002
	.quad	0x40134b7f1737542a              # double 4.8237269999999999
	.quad	0x4023e2539756c93a              # double 9.9420439999999992
	.quad	0x400a03af31b152f4              # double 3.2517990000000001
	.quad	0x401da54003254e6e              # double 7.4113769999999999
	.quad	0x4016ac319c5a3e3a              # double 5.668158
	.quad	0x4017b5bd0e12e83a              # double 5.9274789999999999
	.quad	0x40142486ad2dcb14              # double 5.0356699999999996
	.quad	0x4007bd2fa0d77b7c              # double 2.9673759999999998
	.quad	0x4015e3033a4723ab              # double 5.471692
	.quad	0x4001221858bc59b8              # double 2.141648
	.quad	0x3fcb538ac18f81e9              # double 0.21348700000000001
	.quad	0x400a1c27e9531551              # double 3.2637480000000001
	.quad	0x400fc95c853c1483              # double 3.9733209999999999
	.quad	0x4014aae6c8f75537              # double 5.1668960000000004
	.quad	0x4013871c970f7b9e              # double 4.881945
	.quad	0x3ff8131876188b11              # double 1.5046619999999999
	.quad	0x40024077036c9c0b              # double 2.2814770000000002
	.quad	0x401852706d506573              # double 6.0805069999999999
	.quad	0x4000cb0b7c3504c5              # double 2.0991430000000002
	.quad	0x4014f625204af923              # double 5.2403760000000004
	.quad	0x401c72d0a2446306              # double 7.1121239999999997
	.quad	0x4017eddaceee0f3d              # double 5.9822800000000003
	.quad	0x4022953f9e7b80aa              # double 9.2915010000000002
	.quad	0x40222b951c5c5719              # double 9.0851220000000001
	.quad	0x3fc424f6598e10cf              # double 0.15737799999999999
	.quad	0x3fd053c579f23465              # double 0.25511299999999998
	.quad	0x4003081ba7fc32ec              # double 2.378959
	.quad	0x3ffc78a6dacabc51              # double 1.7794559999999999
	.quad	0x400e7fa0945f9df5              # double 3.8123179999999999
	.quad	0x4019b079e59f2baa              # double 6.4223400000000002
	.quad	0x4022b52b2bfdb4cc              # double 9.3538449999999997
	.quad	0x40091b70691ea78b              # double 3.138398
	.quad	0x401bd82cf52b90a8              # double 6.9611090000000004
	.quad	0x4022d538476f2a5a              # double 9.4164449999999995
	.quad	0x400f10ecb74ddf87              # double 3.883264
	.quad	0x3ffe8bb3c81908e6              # double 1.9091070000000001
	.quad	0x40137d49949e8816              # double 4.8723510000000001
	.quad	0x3fe06976bc1effa0              # double 0.51287400000000005
	.quad	0x3ff181c92ddbdb5e              # double 1.0941860000000001
	.quad	0x3fff2db402d16b98              # double 1.948658
	.quad	0x4021e19fe43675de              # double 8.9406730000000003
	.quad	0x4023a484d76ab580              # double 9.8213259999999991
	.quad	0x3ff97291b823c85c              # double 1.590471
	.quad	0x401002f05a708ede              # double 4.0028699999999997
	.quad	0x401307d2c7b890d6              # double 4.7576400000000003
	.quad	0x401f5e681a9b8cb9              # double 7.8421940000000001
	.quad	0x400567bbb62413db              # double 2.6756509999999998
	.quad	0x4013559b3d07c84b              # double 4.8335999999999997
	.quad	0x3feaffe2a3cea6c2              # double 0.84373600000000004
	.quad	0x400f250e779207d5              # double 3.8930940000000001
	.quad	0x400b6cb10342aa9f              # double 3.4280719999999998
	.quad	0x3ff31b5fa22706d5              # double 1.194183
	.quad	0x4011ac0e38a7e73a              # double 4.4180229999999998
	.quad	0x40203df80991793a              # double 8.1210330000000006
	.quad	0x401ff39e6ab9b23e              # double 7.9879090000000001
	.quad	0x4021beabde3fbbd8              # double 8.8724050000000005
	.quad	0x3ff914cdb7ae5797              # double 1.5675790000000001
	.quad	0x40164bf8b9baa151              # double 5.5741909999999999
	.quad	0x401442367e414e7f              # double 5.0646610000000001
	.quad	0x4012285a921ccd96              # double 4.5394079999999999
	.quad	0x40177794a6eb91b4              # double 5.866778
	.quad	0x40222ffd3f5b5fa2              # double 9.0937289999999997
	.quad	0x4016c033e78e1933              # double 5.6876980000000001
	.quad	0x3fcfd86a8fc0d2c4              # double 0.24879200000000001
	.quad	0x4015ab6d86ec17ec              # double 5.4174100000000003
	.quad	0x3ffb4ab4fa48301a              # double 1.7057389999999999
	.quad	0x4019d746cb966be8              # double 6.4602310000000003
	.quad	0x4019b1ed9dfdac69              # double 6.4237580000000003
	.quad	0x4017b75c8d9f9054              # double 5.9290640000000003
	.quad	0x4021da411c2a0232              # double 8.9262779999999999
	.quad	0x4014cabfb9bed30f              # double 5.197997
	.quad	0x4021f7c9795b35b1              # double 8.9839590000000005
	.quad	0x4007451fc4c16590              # double 2.9087519999999998
	.quad	0x400336aad1d041cc              # double 2.4016929999999999
	.quad	0x3ff9b5cbff47735c              # double 1.606884
	.quad	0x401297de939eadd6              # double 4.6483100000000004
	.quad	0x401374549b62c775              # double 4.8636039999999996
	.quad	0x4018a0092ccf6be3              # double 6.1562849999999996
	.quad	0x40234a4ca4f440af              # double 9.6451159999999998
	.quad	0x40149f85510d38ce              # double 5.1557820000000003
	.quad	0x3fb78f14db59578a              # double 0.092026999999999997
	.quad	0x3fff26bc621b7e0b              # double 1.946957
	.quad	0x3ff16536501e2585              # double 1.08721
	.quad	0x4020d89374bc6a7f              # double 8.423
	.quad	0x401fc856605ee569              # double 7.9456420000000003
	.quad	0x401d562888b545c8              # double 7.3341390000000004
	.quad	0x4021c4e0114d2f5e              # double 8.8845220000000005
	.quad	0x3fcd9b5e95b78cca              # double 0.23130400000000001
	.quad	0x401d00e347629521              # double 7.2508670000000004
	.quad	0x4017f3e1437c5693              # double 5.9881640000000003
	.quad	0x401b703d145d8516              # double 6.8596079999999997
	.quad	0x3ff8a043a2163fdd              # double 1.5391269999999999
	.quad	0x401c754477ff151e              # double 7.1145189999999996
	.quad	0x401515e4606748e4              # double 5.2713789999999996
	.quad	0x3ffe04545846e8f3              # double 1.8760570000000001
	.quad	0x401045ea67e846a6              # double 4.0682770000000001
	.quad	0x40119422ccb3a259              # double 4.3946639999999997
	.quad	0x40017ca1059ea572              # double 2.185854
	.quad	0x4009b063e07a28bb              # double 3.211128
	.quad	0x4022c7e7e1fc08fa              # double 9.3904409999999991
	.quad	0x401bf85ec3dab5c4              # double 6.9925490000000003
	.quad	0x402292bef06b3786              # double 9.2866129999999991
	.quad	0x3ff1671151611ba4              # double 1.087663
	.quad	0x401a9cd7cf5f4e44              # double 6.6531669999999998
	.quad	0x4000ceac8605681f              # double 2.1009150000000001
	.quad	0x401d6f46aa087ca6              # double 7.3586679999999998
	.quad	0x4019f601bc98a223              # double 6.4902410000000001
	.quad	0x3fa68709741d084f              # double 0.043999000000000003
	.quad	0x3ff4589df1172ef1              # double 1.2716350000000001
	.quad	0x4012dde7ea5f84cb              # double 4.7167050000000001
	.quad	0x401e48a58b3f63c3              # double 7.5709439999999998
	.quad	0x3ff447c30d306a2b              # double 1.26752
	.quad	0x401214ffc9795b36              # double 4.5205070000000003
	.quad	0x401b26b053198288              # double 6.787782
	.quad	0x3fef6fb6dca07f67              # double 0.98238700000000001
	.quad	0x401af5c896dd26b7              # double 6.7400229999999999
	.quad	0x3ff24a57a786c227              # double 1.1431500000000001
	.quad	0x400e915ce9e5e248              # double 3.8209780000000002
	.quad	0x401406f4384ba0e8              # double 5.0067909999999998
	.quad	0x3fd8ff79c842fa51              # double 0.39059300000000002
	.quad	0x400b31f36262cba7              # double 3.3993899999999999
	.quad	0x4014c2e275ab7dc8              # double 5.1903170000000003
	.quad	0x40096a8c154c985f              # double 3.177025
	.quad	0x401fa014727dcbde              # double 7.9063280000000002
	.quad	0x3ff8790fb65668c2              # double 1.5295559999999999
	.quad	0x40183273d5bab218              # double 6.0492699999999999
	.quad	0x3fdca11ec918e326              # double 0.44733400000000001
	.quad	0x401d1494d50ebaae              # double 7.2700990000000001
	.quad	0x3ff2df090f733a8a              # double 1.1794519999999999
	.quad	0x4005782a12f90108              # double 2.6836739999999999
	.quad	0x402017ee2c98e53f              # double 8.0467390000000005
	.quad	0x402285c39bcba301              # double 9.2612579999999998
	.quad	0x3fef1c27e9531551              # double 0.97218700000000002
	.quad	0x401706d938151a43              # double 5.7566879999999996
	.quad	0x3fe28f5e41d4b6a6              # double 0.58000099999999999
	.quad	0x3ffcf31e3a7daa50              # double 1.809355
	.quad	0x401cc1094a2b9d3d              # double 7.1885120000000002
	.quad	0x400012bf5515054b              # double 2.0091540000000001
	.quad	0x401fc7d1bb4916ca              # double 7.9451359999999998
	.quad	0x3febf574f722e1ac              # double 0.87371299999999996
	.quad	0x3fa29cdc443914f5              # double 0.036353000000000003
	.quad	0x401c396bb98c7e28              # double 7.0560749999999999
	.quad	0x4016a196d8f4f93c              # double 5.6578020000000002
	.quad	0x401cf9bbf0dc768e              # double 7.243881
	.quad	0x4006f4f7a919695e              # double 2.8696130000000002
	.quad	0x3ff95ede1198aeb8              # double 1.585661
	.quad	0x4015f6b8b69552e3              # double 5.490939
	.quad	0x4000965d3996fa83              # double 2.07342
	.quad	0x4019ce4712e40853              # double 6.4514430000000003
	.quad	0x40090178705425f2              # double 3.125718
	.quad	0x40204d98e10cf5b2              # double 8.1515570000000004
	.quad	0x4015b8ea7ce0fc2f              # double 5.4305820000000002
	.quad	0x40220c58255b035c              # double 9.0241100000000002
	.quad	0x40100003eea209ab              # double 4.0000150000000003
	.quad	0x402023b6aa4b9885              # double 8.0697530000000004
	.quad	0x40010183f91e646f              # double 2.12574
	.quad	0x4012ede15ca6ca04              # double 4.7323050000000002
	.quad	0x3fd45bf26f1dc50d              # double 0.31811200000000001
	.quad	0x40153cd63cb81733              # double 5.3094109999999999
	.quad	0x400231de69ad42c4              # double 2.2743500000000001
	.quad	0x400db085f4a1272d              # double 3.7111930000000002
	.quad	0x401f60064a9cdc44              # double 7.8437739999999998
	.quad	0x3ff8451a86940358              # double 1.5168710000000001
	.quad	0x40102c52e72da123              # double 4.043285
	.quad	0x3fe75f91600f3450              # double 0.73041599999999995
	.quad	0x3ffe823b7952d235              # double 1.906795
	.quad	0x4007c0fd3b29a1ba              # double 2.969233
	.quad	0x40192d8f0c77dd87              # double 6.2944909999999998
	.quad	0x3fd7fcdab191dde3              # double 0.37480799999999997
	.quad	0x4012000cd855970b              # double 4.5000489999999997
	.quad	0x400a2cdf266ba494              # double 3.2719100000000001
	.quad	0x4015b1800a7c5ac4              # double 5.4233399999999996
	.quad	0x3f9157eed45e9186              # double 0.016937000000000001
	.quad	0x3fffe059a73b42cc              # double 1.992273
	.quad	0x4016ecc7d1bb4917              # double 5.7312310000000002
	.quad	0x3fefe0c38f366949              # double 0.99618700000000004
	.quad	0x4007a311e85fd04a              # double 2.9546239999999999
	.quad	0x402063302f72b453              # double 8.1937270000000009
	.quad	0x40056960b6f9fcb1              # double 2.6764540000000001
	.quad	0x40222a2b1704ff43              # double 9.0823599999999995
	.quad	0x401cf6dd69d30271              # double 7.241079
	.quad	0x400ffc8c0ce91c8f              # double 3.9983140000000001
	.quad	0x400abfeb074a771d              # double 3.3437100000000002
	.quad	0x3fe13f316e371540              # double 0.538964
	.quad	0x4005888a47ecfe9b              # double 2.6916699999999998
	.quad	0x401da2ae07e5a78f              # double 7.4088669999999999
	.quad	0x3ffb86bce8533b10              # double 1.7203949999999999
	.quad	0x40230ece789e774f              # double 9.5289190000000001
	.quad	0x400bf8c5436b8f9b              # double 3.49647
	.quad	0x402090333fc86cec              # double 8.2816410000000004
	.quad	0x400653708aac96cc              # double 2.7907419999999998
	.quad	0x401018a761027957              # double 4.024076
	.quad	0x3ff3926b723ee1bd              # double 1.223247
	.quad	0x3fc9a109d0635a42              # double 0.20022699999999999
	.quad	0x4005b4bcf0b6b6e1              # double 2.7132510000000001
	.quad	0x401064866a11ec92              # double 4.0981690000000004
	.quad	0x4022be2f9ca5bd94              # double 9.3714569999999994
	.quad	0x401f8d2630ec3116              # double 7.8878409999999999
	.quad	0x401760a63305100a              # double 5.8443839999999998
	.quad	0x4010cc8b43958106              # double 4.1997499999999999
	.quad	0x4021c694ee392e1f              # double 8.8878550000000001
	.quad	0x400879ec7000431c              # double 3.0595330000000001
	.quad	0x401ae67a95c853c1              # double 6.7250769999999997
	.quad	0x4019f39eadd590c1              # double 6.4879100000000003
	.quad	0x3fe208787485e3da              # double 0.56353399999999998
	.quad	0x40209f33ebbfd71b              # double 8.310943
	.quad	0x4021c3775b813016              # double 8.8817699999999995
	.quad	0x4021255eaee2003b              # double 8.5729880000000005
	.quad	0x40152b48d3ae685e              # double 5.2922700000000003
	.quad	0x40211f9e16d6dc1a              # double 8.5617529999999995
	.quad	0x4002e8893b7d8490              # double 2.3635429999999999
	.quad	0x40114d0a24463066              # double 4.325234
	.quad	0x402230d21bc126a6              # double 9.0953529999999994
	.quad	0x4020adab7dc7abfc              # double 8.3391990000000006
	.quad	0x3ff0a27d028a1dfc              # double 1.0396700000000001
	.quad	0x402318eb8950763a              # double 9.5486719999999998
	.quad	0x4022484a515ce9e6              # double 9.1411920000000002
	.quad	0x400f0a350d2806af              # double 3.8799839999999999
	.quad	0x401a50f0a5efe932              # double 6.5790430000000004
	.quad	0x3fcb59a30984e400              # double 0.213673
	.quad	0x4015a769ec2ce465              # double 5.4134900000000004
	.quad	0x3ff1c00c9539b888              # double 1.1093869999999999
	.quad	0x4021dce160d887ec              # double 8.931407
	.quad	0x4022e2c7325918a0              # double 9.4429259999999999
	.quad	0x401c7f8487b99d45              # double 7.1245289999999999
	.quad	0x4014e5171e29b6b3              # double 5.2237210000000003
	.quad	0x3ffe45197a24894c              # double 1.8918699999999999
	.quad	0x402149f44d445671              # double 8.6444419999999997
	.quad	0x4017ce9b38d60a63              # double 5.9517639999999998
	.quad	0x400a8e358298cc14              # double 3.3194379999999999
	.quad	0x4017c05ab3aabcd8              # double 5.9378460000000004
	.quad	0x3fe7d8a32f44912a              # double 0.74519500000000005
	.quad	0x3ff4106dd69d3027              # double 1.254011
	.quad	0x401572a1f8e3ac0c              # double 5.3619459999999997
	.quad	0x3fe346d3f9e7b80b              # double 0.60239600000000004
	.quad	0x402398cac4b4d057              # double 9.7984220000000004
	.quad	0x4005355475a31a4c              # double 2.6510400000000001
	.quad	0x401b58fde2ef4e01              # double 6.8369059999999999
	.quad	0x400000c176577532              # double 2.0003690000000001
	.quad	0x400c11455219a848              # double 3.5084330000000001
	.quad	0x40099d9b1b79d90a              # double 3.201956
	.quad	0x40191c8f32378ab1              # double 6.2778900000000002
	.quad	0x4020d0e779207d4e              # double 8.4080159999999999
	.quad	0x3fd7074ea8da7f3d              # double 0.359821
	.quad	0x402065c31593e5fb              # double 8.1987539999999992
	.quad	0x3ff6101f31f46ed2              # double 1.3789359999999999
	.quad	0x400208882f0e0a85              # double 2.2541660000000001
	.quad	0x401c5d66277c45cc              # double 7.0912100000000002
	.quad	0x3ffe6ea209aaa3ad              # double 1.90201
	.quad	0x401a370c1333b96b              # double 6.5537570000000001
	.quad	0x401057b352a84381              # double 4.0856450000000004
	.quad	0x401815393250b524              # double 6.0207259999999998
	.quad	0x400dde4473cd5736              # double 3.7335289999999999
	.quad	0x401d0a53fc0096ff              # double 7.2600860000000003
	.quad	0x400d8159817b95a3              # double 3.6881590000000002
	.quad	0x4012d851eb851eb8              # double 4.7112499999999997
	.quad	0x401f86a875d56f33              # double 7.8815020000000002
	.quad	0x40189b749adc8fb8              # double 6.1518119999999996
	.size	.L__constant_3000xf64, 24000

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
