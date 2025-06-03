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
	.quad	0x413a490a78c9b845              # double 1722634.4718279999
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
	.quad	3500                            # 0xdac
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	3500                            # 0xdac
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
	lui	a7, %hi(.L__constant_3500xindex)
	addi	a7, a7, %lo(.L__constant_3500xindex)
	lui	t0, %hi(.L__constant_3500xf64)
	addi	t0, t0, %lo(.L__constant_3500xf64)
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
	.quad	80                              # 0x50
	.quad	113                             # 0x71
	.quad	168                             # 0xa8
	.quad	197                             # 0xc5
	.quad	226                             # 0xe2
	.quad	272                             # 0x110
	.quad	297                             # 0x129
	.quad	317                             # 0x13d
	.quad	373                             # 0x175
	.quad	393                             # 0x189
	.quad	428                             # 0x1ac
	.quad	477                             # 0x1dd
	.quad	512                             # 0x200
	.quad	533                             # 0x215
	.quad	583                             # 0x247
	.quad	612                             # 0x264
	.quad	644                             # 0x284
	.quad	691                             # 0x2b3
	.quad	714                             # 0x2ca
	.quad	741                             # 0x2e5
	.quad	796                             # 0x31c
	.quad	825                             # 0x339
	.quad	848                             # 0x350
	.quad	900                             # 0x384
	.quad	934                             # 0x3a6
	.quad	955                             # 0x3bb
	.quad	1001                            # 0x3e9
	.quad	1031                            # 0x407
	.quad	1057                            # 0x421
	.quad	1117                            # 0x45d
	.quad	1146                            # 0x47a
	.quad	1170                            # 0x492
	.quad	1226                            # 0x4ca
	.quad	1247                            # 0x4df
	.quad	1270                            # 0x4f6
	.quad	1325                            # 0x52d
	.quad	1357                            # 0x54d
	.quad	1388                            # 0x56c
	.quad	1437                            # 0x59d
	.quad	1468                            # 0x5bc
	.quad	1491                            # 0x5d3
	.quad	1538                            # 0x602
	.quad	1563                            # 0x61b
	.quad	1591                            # 0x637
	.quad	1644                            # 0x66c
	.quad	1670                            # 0x686
	.quad	1702                            # 0x6a6
	.quad	1749                            # 0x6d5
	.quad	1783                            # 0x6f7
	.quad	1820                            # 0x71c
	.quad	1874                            # 0x752
	.quad	1898                            # 0x76a
	.quad	1922                            # 0x782
	.quad	1971                            # 0x7b3
	.quad	1996                            # 0x7cc
	.quad	2013                            # 0x7dd
	.quad	2064                            # 0x810
	.quad	2096                            # 0x830
	.quad	2127                            # 0x84f
	.quad	2174                            # 0x87e
	.quad	2201                            # 0x899
	.quad	2224                            # 0x8b0
	.quad	2278                            # 0x8e6
	.quad	2308                            # 0x904
	.quad	2329                            # 0x919
	.quad	2377                            # 0x949
	.quad	2402                            # 0x962
	.quad	2423                            # 0x977
	.quad	2472                            # 0x9a8
	.quad	2494                            # 0x9be
	.quad	2520                            # 0x9d8
	.quad	2566                            # 0xa06
	.quad	2591                            # 0xa1f
	.quad	2619                            # 0xa3b
	.quad	2675                            # 0xa73
	.quad	2707                            # 0xa93
	.quad	2729                            # 0xaa9
	.quad	2784                            # 0xae0
	.quad	2817                            # 0xb01
	.quad	2843                            # 0xb1b
	.quad	2893                            # 0xb4d
	.quad	2908                            # 0xb5c
	.quad	2934                            # 0xb76
	.quad	2982                            # 0xba6
	.quad	3002                            # 0xbba
	.quad	3025                            # 0xbd1
	.quad	3076                            # 0xc04
	.quad	3102                            # 0xc1e
	.quad	3126                            # 0xc36
	.quad	3183                            # 0xc6f
	.quad	3211                            # 0xc8b
	.quad	3237                            # 0xca5
	.quad	3289                            # 0xcd9
	.quad	3320                            # 0xcf8
	.quad	3347                            # 0xd13
	.quad	3400                            # 0xd48
	.quad	3422                            # 0xd5e
	.quad	3454                            # 0xd7e
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
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
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	71                              # 0x47
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
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
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
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
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	62                              # 0x3e
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
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
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
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
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
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
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
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
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
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	89                              # 0x59
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
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
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
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x401758d8a979e16d              # double 5.8367639999999996
	.quad	0x3fedc33f85510d39              # double 0.93008400000000002
	.quad	0x4021198c3b0c4589              # double 8.5498980000000007
	.quad	0x401798f53c579f23              # double 5.8993729999999998
	.quad	0x401d9d080b673c4f              # double 7.4033509999999998
	.quad	0x401f2a80064a9cdc              # double 7.7915039999999998
	.quad	0x402335ca8e2e2b8c              # double 9.6050609999999991
	.quad	0x401c416228134480              # double 7.0638509999999997
	.quad	0x401e88f29d40ee07              # double 7.6337380000000001
	.quad	0x4011d439de481f54              # double 4.4572520000000004
	.quad	0x401c296030c23fab              # double 7.0404059999999999
	.quad	0x401a0704790b8499              # double 6.5068530000000004
	.quad	0x400d415db3397dd0              # double 3.656917
	.quad	0x40187af0bf1a5ca3              # double 6.1200590000000004
	.quad	0x4018442bf9830e3d              # double 6.0665740000000001
	.quad	0x4020cb167ec7863c              # double 8.3966560000000001
	.quad	0x3ff0647778dd6170              # double 1.0245280000000001
	.quad	0x4019aed8904f6dfc              # double 6.4207479999999997
	.quad	0x3ffb3a604e1e7104              # double 1.7017519999999999
	.quad	0x40238f0c1333b96b              # double 9.7793890000000001
	.quad	0x40164da5daf07bfe              # double 5.5758279999999996
	.quad	0x4005d3636f3b213e              # double 2.7282169999999999
	.quad	0x4022ce01797cc3a0              # double 9.402355
	.quad	0x401dded17c5ef630              # double 7.4675960000000003
	.quad	0x3fc1bfb58d1526d9              # double 0.13866300000000001
	.quad	0x40132c53f39d1b2e              # double 4.7932889999999997
	.quad	0x4020e1d4738a3b58              # double 8.4410740000000004
	.quad	0x4020daaa5c5f7c67              # double 8.4270809999999994
	.quad	0x401e9d7d7c2ca149              # double 7.6537990000000002
	.quad	0x4023ef676ea4228a              # double 9.9675860000000007
	.quad	0x3fe734fe79ee02a7              # double 0.72521899999999995
	.quad	0x3fa7ac6045baf534              # double 0.046237
	.quad	0x3fe1b50f40e5a35d              # double 0.55335199999999996
	.quad	0x401f91709310129d              # double 7.8920310000000002
	.quad	0x40113b430f49491f              # double 4.3078729999999998
	.quad	0x40164caff6d33094              # double 5.5748899999999999
	.quad	0x40238219c9d5a188              # double 9.7541030000000006
	.quad	0x4023ce321a2e7f6f              # double 9.9027259999999994
	.quad	0x400a7a6f826edaa9              # double 3.3097829999999999
	.quad	0x4013e5cb35f3d7d4              # double 4.9744080000000004
	.quad	0x4015d884406c00da              # double 5.4614419999999999
	.quad	0x400a1baba7b9170d              # double 3.2635109999999998
	.quad	0x402386f284167a96              # double 9.7635690000000004
	.quad	0x400e10a6fc58ab93              # double 3.7581310000000001
	.quad	0x400938090b417ca2              # double 3.152361
	.quad	0x4009e393682730c6              # double 3.2361209999999998
	.quad	0x4013173c0c1fc8f3              # double 4.7726899999999999
	.quad	0x40106deb95e5aff3              # double 4.1073440000000003
	.quad	0x401db279dd3bafd9              # double 7.4242929999999996
	.quad	0x401f418b0d0edc3c              # double 7.8140070000000001
	.quad	0x401dad031055b899              # double 7.4189569999999998
	.quad	0x4012905c4651f3e9              # double 4.6409770000000004
	.quad	0x4023bdf7c6759ab7              # double 9.8710310000000003
	.quad	0x401f4019f3c70c99              # double 7.8125989999999996
	.quad	0x401a7c80c73abc94              # double 6.6215849999999996
	.quad	0x3fdd530ced4e4c94              # double 0.45819399999999999
	.quad	0x3fcf9c7bcc2938de              # double 0.24696299999999999
	.quad	0x3ff365657fb69985              # double 1.2122550000000001
	.quad	0x4010f60d4562e0a0              # double 4.2402850000000001
	.quad	0x401be90795f676ea              # double 6.9775679999999998
	.quad	0x402137944241c3f0              # double 8.6085530000000006
	.quad	0x3fcc3c9eecbfb15b              # double 0.22059999999999999
	.quad	0x40076b72c5197a25              # double 2.9274650000000002
	.quad	0x402164610f0e90bc              # double 8.6960529999999991
	.quad	0x4007805ff1d81f10              # double 2.9376829999999998
	.quad	0x3ff13d5dc4007571              # double 1.0774820000000001
	.quad	0x3fe4f1cb89d6adf7              # double 0.65451599999999999
	.quad	0x4019bafff36ac647              # double 6.4326169999999996
	.quad	0x4010f645e4e69f06              # double 4.2405010000000001
	.quad	0x3fe0c7e6b3fe9fae              # double 0.52440200000000003
	.quad	0x40061ecbb7f9d6f1              # double 2.765037
	.quad	0x3fc7454152b0a6fc              # double 0.18180099999999999
	.quad	0x4018c1b328b6d86f              # double 6.1891600000000002
	.quad	0x3fe9e60c38f36695              # double 0.80933200000000005
	.quad	0x401d47d34df04ddb              # double 7.3201419999999997
	.quad	0x3ffedc6b05319829              # double 1.9288130000000001
	.quad	0x401df4d5d80e496f              # double 7.4890970000000001
	.quad	0x4022bec82e019b0b              # double 9.3726210000000005
	.quad	0x4010b9aed56b0100              # double 4.1813310000000001
	.quad	0x40225d197a24894c              # double 9.1818349999999995
	.quad	0x3fed7459d99029ae              # double 0.92045299999999997
	.quad	0x401e65e6ff7dfa01              # double 7.5995140000000001
	.quad	0x401bdba732df505d              # double 6.9645049999999999
	.quad	0x400a8cb20fb224ab              # double 3.3186990000000001
	.quad	0x40109003ab862b28              # double 4.1406390000000002
	.quad	0x4022ecb039ef0f17              # double 9.462282
	.quad	0x4022902a77a2cecd              # double 9.2815740000000009
	.quad	0x4017b2d01c0ca601              # double 5.9246220000000003
	.quad	0x4020d76188b1140a              # double 8.4206660000000007
	.quad	0x400393e1c9b41398              # double 2.4472079999999998
	.quad	0x401b85c358afc47e              # double 6.8806279999999997
	.quad	0x400473d188f42fe8              # double 2.5565519999999999
	.quad	0x4021c34677b395c4              # double 8.8813969999999997
	.quad	0x3ff442517e77d524              # double 1.2661910000000001
	.quad	0x40104a6223e18698              # double 4.0726399999999998
	.quad	0x4013f09203a322af              # double 4.9849319999999997
	.quad	0x3fd0aaef2c732592              # double 0.26043300000000003
	.quad	0x4023d1040bfe3b04              # double 9.9082340000000002
	.quad	0x4000777a7008a698              # double 2.0583390000000001
	.quad	0x4016818c197e5647              # double 5.6265109999999998
	.quad	0x3fe3fce95faa8a83              # double 0.62462300000000004
	.quad	0x3fd2e0a84be40421              # double 0.294962
	.quad	0x3ff66b649d388a8b              # double 1.401219
	.quad	0x4014a8ec0f883340              # double 5.1649630000000002
	.quad	0x4003c789e774eebf              # double 2.4724309999999998
	.quad	0x40235a0afa2f05a7              # double 9.6758649999999999
	.quad	0x4006dd0b73d188f4              # double 2.8579319999999999
	.quad	0x40141649906cca2e              # double 5.0217650000000003
	.quad	0x400a698d477bbf94              # double 3.301539
	.quad	0x3fdca1b5c7cd898b              # double 0.44736999999999999
	.quad	0x4020b5f8b1572581              # double 8.3554130000000004
	.quad	0x401f802ababead4f              # double 7.8751629999999996
	.quad	0x4017f593e5fb71fc              # double 5.9898220000000002
	.quad	0x400f0995aaf78fef              # double 3.87968
	.quad	0x401673ade225fa66              # double 5.6129680000000004
	.quad	0x4023450d8cb07d0b              # double 9.6348690000000001
	.quad	0x3fc280841ede1199              # double 0.14454700000000001
	.quad	0x400194dc65c70436              # double 2.197686
	.quad	0x4022d5fa22706d50              # double 9.4179239999999993
	.quad	0x3fe06fc371da37ef              # double 0.51364299999999996
	.quad	0x40237ef566490a35              # double 9.7479659999999999
	.quad	0x40238aaa3ad18d26              # double 9.7708300000000001
	.quad	0x40231b68f08461fa              # double 9.5535350000000001
	.quad	0x40155008637bd05b              # double 5.328157
	.quad	0x4011b6fa3fcc9eaa              # double 4.4286890000000003
	.quad	0x3fef505f28848388              # double 0.97856100000000001
	.quad	0x401973bfb58d1527              # double 6.3630360000000001
	.quad	0x40106cf8d716d2aa              # double 4.1064179999999997
	.quad	0x400843d2d87f8876              # double 3.0331169999999998
	.quad	0x4006894ee392e1ef              # double 2.8170449999999998
	.quad	0x3fd974080f98fa37              # double 0.39770699999999998
	.quad	0x400bf9a415f45e0b              # double 3.4968949999999999
	.quad	0x3ff9a6aca7935760              # double 1.603192
	.quad	0x40085474107314cb              # double 3.0412370000000002
	.quad	0x40117ed634549b63              # double 4.3738640000000002
	.quad	0x40137ab3edd8b60f              # double 4.8698269999999999
	.quad	0x3ffa05f9df548ece              # double 1.6264590000000001
	.quad	0x400f50ed3d859c8d              # double 3.9145150000000002
	.quad	0x40201d2c16df3f96              # double 8.0569769999999998
	.quad	0x400386f262888b54              # double 2.4408919999999998
	.quad	0x401e02fec56d5cfb              # double 7.5029250000000002
	.quad	0x3ff1c22036006d0d              # double 1.1098939999999999
	.quad	0x40231ebb55ac03ff              # double 9.5600229999999992
	.quad	0x3ff7005e5f30e7ff              # double 1.4375899999999999
	.quad	0x40156a47a9e2bcf9              # double 5.3537889999999999
	.quad	0x3fe85bd0e12e83a1              # double 0.761208
	.quad	0x4023b9331a08bfc2              # double 9.8617179999999998
	.quad	0x3ff6383be6601bca              # double 1.3887290000000001
	.quad	0x40211ebe596c82e0              # double 8.5600459999999998
	.quad	0x402196f0cfe15443              # double 8.7948059999999995
	.quad	0x400585cee17a02fb              # double 2.6903359999999998
	.quad	0x401d90232096787d              # double 7.3907590000000001
	.quad	0x4010d6f9b994e1a4              # double 4.209937
	.quad	0x400e568cef672b88              # double 3.7922609999999999
	.quad	0x4012ea36e2eb1c43              # double 4.7287249999999998
	.quad	0x4020f7eaa2a0a958              # double 8.4842119999999994
	.quad	0x40228b9b8887229f              # double 9.2726710000000008
	.quad	0x3fff04a4095f2453              # double 1.9386330000000001
	.quad	0x401786a444178705              # double 5.8814859999999998
	.quad	0x40210fd1dcd7060c              # double 8.5308980000000005
	.quad	0x4013ab402d16b980              # double 4.9172370000000001
	.quad	0x40010b1572580c31              # double 2.1304120000000002
	.quad	0x4010f60bb2bba98f              # double 4.2402790000000001
	.quad	0x3fed89bb6aa4b988              # double 0.92306299999999997
	.quad	0x3ffa023fab10ba62              # double 1.6255489999999999
	.quad	0x3ff18ea39c51dabe              # double 1.097324
	.quad	0x402226fa3fcc9eaa              # double 9.0761280000000006
	.quad	0x4013a529bae46cfd              # double 4.9112920000000004
	.quad	0x4014f0f66a550870              # double 5.2353149999999999
	.quad	0x3fffd26b723ee1bd              # double 1.988872
	.quad	0x401bedc7ef177a70              # double 6.982208
	.quad	0x4022a3e8576cce5f              # double 9.3201319999999992
	.quad	0x4012994e5d5b24ea              # double 4.6497130000000002
	.quad	0x4000f9578a2a90cd              # double 2.1217489999999999
	.quad	0x4014157b84db9c73              # double 5.0209789999999996
	.quad	0x401a379b77c02afe              # double 6.5543040000000001
	.quad	0x402333fb15b573eb              # double 9.6015250000000005
	.quad	0x4019855d1c3ac92a              # double 6.3802380000000003
	.quad	0x4007e2b5a20ddc62              # double 2.9856980000000002
	.quad	0x400c3940fecdd0d9              # double 3.5279560000000001
	.quad	0x40213431bde82d7b              # double 8.6019419999999993
	.quad	0x4010b42f61ed5ae2              # double 4.1759620000000002
	.quad	0x401a6f811f4f50a0              # double 6.6088909999999998
	.quad	0x40162badc0980b24              # double 5.5426549999999999
	.quad	0x3ffd59c38b04ab60              # double 1.8344149999999999
	.quad	0x401bd68f08461f9f              # double 6.95953
	.quad	0x402325fa00e27e0f              # double 9.574173
	.quad	0x40169c25d074213a              # double 5.652488
	.quad	0x401c3cb6848beb5b              # double 7.0592899999999998
	.quad	0x401c22396073de1e              # double 7.0334219999999998
	.quad	0x4006dfc32ebe596d              # double 2.8592590000000002
	.quad	0x40094618ce2d1f1d              # double 3.159227
	.quad	0x4021f662dc6e2a80              # double 8.981223
	.quad	0x3fe39a5ebb7739f3              # double 0.61259399999999997
	.quad	0x40135e9b7bf1e8e6              # double 4.84239
	.quad	0x400b7bde82d7b635              # double 3.4354830000000001
	.quad	0x3ff9c583621fafc9              # double 1.6107210000000001
	.quad	0x401a0ddf43c7d5ed              # double 6.513547
	.quad	0x4014999806f26289              # double 5.1499940000000004
	.quad	0x4005c04a72ead927              # double 2.7188919999999999
	.quad	0x3ff18bc48f10a99b              # double 1.0966229999999999
	.quad	0x3ff5e1f18c9fb613              # double 1.3676619999999999
	.quad	0x401a9fe260b2c83f              # double 6.6561370000000002
	.quad	0x3fd5f5e41d4b6a62              # double 0.34313300000000002
	.quad	0x400e850df15a4acf              # double 3.8149679999999999
	.quad	0x3fe9463ae2541d8f              # double 0.78982300000000005
	.quad	0x4019c5c358afc47e              # double 6.4431279999999997
	.quad	0x4017628ae74f2f12              # double 5.8462329999999998
	.quad	0x4006cfa2f05a708f              # double 2.8513850000000001
	.quad	0x40176905c0336156              # double 5.8525609999999997
	.quad	0x3fc6560c7c0f4517              # double 0.17450099999999999
	.quad	0x400efd25247cb70b              # double 3.8736060000000001
	.quad	0x401b7d859c8c9321              # double 6.8725800000000001
	.quad	0x400f7bb9cf9a06a7              # double 3.935413
	.quad	0x4011d41fa7653437              # double 4.4571519999999998
	.quad	0x4023134699418506              # double 9.5376480000000008
	.quad	0x3fa293d102bc72e2              # double 0.036283999999999997
	.quad	0x4012d381d7dbf488              # double 4.70655
	.quad	0x401cbb606b7aa25e              # double 7.1829850000000004
	.quad	0x400cb0f840181e04              # double 3.586411
	.quad	0x401acc892ab68cef              # double 6.6997419999999996
	.quad	0x4021cd7f51efb6dd              # double 8.9013620000000007
	.quad	0x3feb307075b3e143              # double 0.84966299999999995
	.quad	0x401ca8a8f3a9b068              # double 7.1647069999999999
	.quad	0x4021ff4fd6d7e88a              # double 8.9986560000000004
	.quad	0x400b5633ce63a5c2              # double 3.4170910000000001
	.quad	0x40225088509bf9c6              # double 9.1572899999999997
	.quad	0x40221bcf4e874c90              # double 9.054316
	.quad	0x4008499524bfd2e9              # double 3.0359289999999999
	.quad	0x3fd76d43d03968d7              # double 0.36604399999999998
	.quad	0x3fe0356fb8f57f73              # double 0.50652299999999995
	.quad	0x401ae593a2df9379              # double 6.7241960000000001
	.quad	0x401006559f6ec5b0              # double 4.0061859999999996
	.quad	0x40226fdb8fde2ef5              # double 9.2184720000000002
	.quad	0x401f7332f01754b0              # double 7.8624989999999997
	.quad	0x4008159c49774257              # double 3.0105520000000001
	.quad	0x4018a18b502ababf              # double 6.1577580000000003
	.quad	0x4022a1b8cb8e086c              # double 9.3158630000000002
	.quad	0x401c59899bf5946c              # double 7.0874389999999998
	.quad	0x401df19fc2a8869c              # double 7.4859609999999996
	.quad	0x4012f2007dd44135              # double 4.7363299999999997
	.quad	0x401ea7a13c254a3c              # double 7.6637009999999997
	.quad	0x4013a2f6e82949a5              # double 4.9091449999999996
	.quad	0x401fe3461309c800              # double 7.9719470000000001
	.quad	0x4016038088509bfa              # double 5.5034200000000002
	.quad	0x3fe71522a6f3f530              # double 0.72133000000000003
	.quad	0x3fe669fcf3dc054f              # double 0.70043800000000001
	.quad	0x400b6842fa509396              # double 3.4259089999999999
	.quad	0x401d99d1f601797d              # double 7.4002150000000002
	.quad	0x4022106f8ad2567a              # double 9.0321010000000008
	.quad	0x3fed6b8737974602              # double 0.91937599999999997
	.quad	0x40118daa0cae642c              # double 4.388344
	.quad	0x4001eb074a771c97              # double 2.23976
	.quad	0x4011e4c8366516db              # double 4.47342
	.quad	0x4003ade4c51116a9              # double 2.4599090000000001
	.quad	0x401273df6db940ff              # double 4.6131570000000002
	.quad	0x402319628cbd1245              # double 9.5495800000000006
	.quad	0x40206fe0ef99806f              # double 8.2185129999999997
	.quad	0x40057bba55d1c3ad              # double 2.6854140000000002
	.quad	0x4011d0739b024f66              # double 4.4535660000000004
	.quad	0x3ffe2e1deacc9214              # double 1.8862589999999999
	.quad	0x40184fb82c2bd7f5              # double 6.0778509999999999
	.quad	0x3fff9eb313be22e6              # double 1.976245
	.quad	0x40238aec0724b76f              # double 9.7713319999999992
	.quad	0x40089e0589acbc8c              # double 3.077159
	.quad	0x40024b7baecd0785              # double 2.2868569999999999
	.quad	0x402322d0c3d25248              # double 9.5679990000000003
	.quad	0x40073e9d0e991ff7              # double 2.905573
	.quad	0x4011eca6ca03c4b1              # double 4.4811050000000003
	.quad	0x3fd358298cc14403              # double 0.30225600000000002
	.quad	0x3fe3aa172abef06b              # double 0.61451299999999998
	.quad	0x4016a8fbca1059ea              # double 5.6650229999999997
	.quad	0x400cc3a96d4c33b5              # double 3.5955379999999999
	.quad	0x401c868db8bac711              # double 7.1314000000000002
	.quad	0x4021e81f10667f91              # double 8.9533620000000003
	.quad	0x402150e453d20f2c              # double 8.6579920000000001
	.quad	0x4020dcd65e460675              # double 8.4313230000000008
	.quad	0x401335b5fa22706d              # double 4.8024519999999997
	.quad	0x401e202e2328f9f4              # double 7.5314259999999997
	.quad	0x4010038fffbce421              # double 4.0034789999999996
	.quad	0x402018e043a21640              # double 8.0485860000000002
	.quad	0x3fec97edc7ef177a              # double 0.89354599999999995
	.quad	0x401f268f8e7ddca5              # double 7.7876570000000002
	.quad	0x40015c304ccee5ac              # double 2.1700140000000001
	.quad	0x3fe8ab841248d7e0              # double 0.77093699999999998
	.quad	0x3fdbd77b7c7820a3              # double 0.435027
	.quad	0x4022377531db445f              # double 9.1083160000000003
	.quad	0x40236b343fa2ad3f              # double 9.7093830000000007
	.quad	0x40006d9f0a1be2b5              # double 2.0535260000000002
	.quad	0x40207c384ba0e842              # double 8.2426169999999992
	.quad	0x4000cd898b2e9ccb              # double 2.1003599999999998
	.quad	0x40223061a60d4563              # double 9.0944950000000002
	.quad	0x3ff50f8d716d2aa6              # double 1.3162970000000001
	.quad	0x401a015ce9e5e248              # double 6.5013310000000004
	.quad	0x4022a84f4c6e6d9c              # double 9.3287300000000001
	.quad	0x4015789b951c5c57              # double 5.3677809999999999
	.quad	0x4023e45d63886595              # double 9.9460250000000005
	.quad	0x4011a05d52c16df4              # double 4.406606
	.quad	0x401a9f1bac2df0d4              # double 6.6553789999999999
	.quad	0x3fc064a16a487336              # double 0.12807099999999999
	.quad	0x3ff346d1e108c3f4              # double 1.20479
	.quad	0x4002dcd0bb6ed677              # double 2.3578199999999998
	.quad	0x401360f55de58e65              # double 4.8446860000000003
	.quad	0x40052b1dd5d3dc8c              # double 2.6460530000000002
	.quad	0x400eba6b50b0f27c              # double 3.8410250000000001
	.quad	0x400fc202539756c9              # double 3.9697309999999999
	.quad	0x40214889c1b54196              # double 8.6416760000000004
	.quad	0x401c1e0b912dba4d              # double 7.0293409999999996
	.quad	0x401681aa3f034b0e              # double 5.6266259999999999
	.quad	0x4018c263d816aceb              # double 6.1898340000000003
	.quad	0x401529817b95a294              # double 5.2905329999999999
	.quad	0x401e9894c447c30d              # double 7.6490049999999998
	.quad	0x4021a40bfe3b03e2              # double 8.8204039999999999
	.quad	0x3fea4ac083126e98              # double 0.82162500000000005
	.quad	0x40225a743a647fdc              # double 9.1766679999999993
	.quad	0x40204ae2b8c75c4b              # double 8.1462610000000009
	.quad	0x4015f2cf95d4e8fb              # double 5.48712
	.quad	0x400b91c193b3a68b              # double 3.44617
	.quad	0x400f256eefa1e3eb              # double 3.893278
	.quad	0x401fe9aa1d755bcd              # double 7.9781880000000002
	.quad	0x401a6f4491298890              # double 6.6086600000000004
	.quad	0x400e92b90a782907              # double 3.8216420000000002
	.quad	0x4023b7ab7564302b              # double 9.8587299999999995
	.quad	0x40114c06e19b90eb              # double 4.3242450000000003
	.quad	0x4021b57c914b167f              # double 8.8544660000000004
	.quad	0x3fff879d4d834092              # double 1.9706090000000001
	.quad	0x4020edadb8348f54              # double 8.4642160000000004
	.quad	0x4015175ee99a62ed              # double 5.2728229999999998
	.quad	0x401882ea0fd3b29a              # double 6.1278459999999999
	.quad	0x4023d4c100e6afcd              # double 9.9155350000000002
	.quad	0x3ff4dc28f5c28f5c              # double 1.30375
	.quad	0x4014b5a0be510907              # double 5.1773709999999999
	.quad	0x402354e3de6149c7              # double 9.665801
	.quad	0x401e7004b7f5a533              # double 7.6093929999999998
	.quad	0x3ffadf266ba493c9              # double 1.6794800000000001
	.quad	0x401f7119ce075f70              # double 7.8604500000000002
	.quad	0x3ffc412f09d8c6d6              # double 1.765914
	.quad	0x3ff968aa433508f6              # double 1.5880529999999999
	.quad	0x401f9738a3b57c4e              # double 7.8976769999999998
	.quad	0x40203683a109d063              # double 8.1064729999999994
	.quad	0x3fe9a1af7d30ad47              # double 0.800987
	.quad	0x4022f7a786c22681              # double 9.4837000000000006
	.quad	0x40231158d9b5e95b              # double 9.5338809999999991
	.quad	0x400d6aac96cc5fc0              # double 3.6770870000000002
	.quad	0x3ff0a0dcb9a9da59              # double 1.0392729999999999
	.quad	0x401130d9d7774aba              # double 4.2977059999999998
	.quad	0x4013e12dfd694ccb              # double 4.9699020000000003
	.quad	0x401cf5daad601ffb              # double 7.2400919999999998
	.quad	0x401acc054ef459da              # double 6.6992390000000004
	.quad	0x401b0c5004fb1184              # double 6.7620240000000003
	.quad	0x4022dc1461b6d43d              # double 9.4298429999999999
	.quad	0x4011e62281344806              # double 4.4747409999999999
	.quad	0x40202b7bd05af6c7              # double 8.0849290000000007
	.quad	0x3ffd685553ef6b5d              # double 1.8379719999999999
	.quad	0x3fdeac3a860dcb9b              # double 0.47926200000000002
	.quad	0x40105d2d44dca8e3              # double 4.0909930000000001
	.quad	0x40226b0c23fab10c              # double 9.2090770000000006
	.quad	0x3fccfef7c243dccf              # double 0.22653100000000001
	.quad	0x40204f1886df82b2              # double 8.1544840000000001
	.quad	0x400898066c2acb86              # double 3.0742310000000002
	.quad	0x4019b97e132b55ef              # double 6.4311449999999999
	.quad	0x3fe1c7064ece9a2c              # double 0.55554499999999996
	.quad	0x40168999567dbb17              # double 5.6343740000000002
	.quad	0x401cfb53d640e9d5              # double 7.2454369999999999
	.quad	0x400eacdb7ae5796c              # double 3.834403
	.quad	0x401b306d50657321              # double 6.7972919999999997
	.quad	0x4021e0389f83be66              # double 8.937932
	.quad	0x400c9ce8d972cd7d              # double 3.576616
	.quad	0x401ef160956c0d6f              # double 7.7357199999999997
	.quad	0x3fde8800eae18aca              # double 0.477051
	.quad	0x4017c77531db445f              # double 5.9447830000000002
	.quad	0x400154067cf1c326              # double 2.1660279999999998
	.quad	0x40134f77f27fe4bd              # double 4.8276060000000003
	.quad	0x400cb0cd423d9232              # double 3.5863290000000001
	.quad	0x4011ef672b884407              # double 4.4837920000000002
	.quad	0x4015583cafb3b752              # double 5.3361689999999999
	.quad	0x40046202d9cf13cf              # double 2.547857
	.quad	0x400e170ef566490a              # double 3.7612589999999999
	.quad	0x401bdc5718eb8950              # double 6.9651759999999996
	.quad	0x401d10adcd2d44dd              # double 7.2662880000000003
	.quad	0x401595a89b951c5c              # double 5.3961509999999997
	.quad	0x3fdc8f81e8a2ec29              # double 0.44625900000000002
	.quad	0x401fef47735c182f              # double 7.9836710000000001
	.quad	0x40189a9fbe76c8b4              # double 6.1509999999999998
	.quad	0x40105775fb2edfe7              # double 4.0854109999999997
	.quad	0x40165e6299524bfd              # double 5.5921729999999998
	.quad	0x401574477ff151e7              # double 5.3635539999999997
	.quad	0x3ff406fcdee34fc6              # double 1.251706
	.quad	0x3ff83b8800eae18b              # double 1.514534
	.quad	0x402132806af46aa1              # double 8.5986360000000008
	.quad	0x3ffabe36d22424a2              # double 1.6714389999999999
	.quad	0x401b56d7a56de332              # double 6.8348069999999996
	.quad	0x3ff4007bbb62413e              # double 1.2501180000000001
	.quad	0x4014c06b7aa25d8d              # double 5.1879099999999996
	.quad	0x400ae89656eefa1e              # double 3.3635679999999999
	.quad	0x3ff8062d40aaeafb              # double 1.5015080000000001
	.quad	0x402323abc947064f              # double 9.5696700000000003
	.quad	0x3ff3fd816aceaaf3              # double 1.2493909999999999
	.quad	0x401a2f52fc2656ac              # double 6.5462150000000001
	.quad	0x400d273471f79421              # double 3.6441430000000001
	.quad	0x40216544bb1af3a1              # double 8.6977899999999995
	.quad	0x4015164fdb09a672              # double 5.2717890000000001
	.quad	0x400f7860999dcb58              # double 3.9337780000000002
	.quad	0x401fc5b4245f5ad9              # double 7.9430699999999996
	.quad	0x4020868c47a17f41              # double 8.2627889999999997
	.quad	0x40159b4edb2f661f              # double 5.4016679999999999
	.quad	0x402148848387df5d              # double 8.6416360000000001
	.quad	0x4001cf840181e03f              # double 2.2263259999999998
	.quad	0x4018d78290689870              # double 6.2104590000000002
	.quad	0x3ff6fb634dad31fd              # double 1.436374
	.quad	0x3ff888e4755ffe6d              # double 1.5334209999999999
	.quad	0x4020b15d0b73d189              # double 8.3464130000000001
	.quad	0x3fef1eb2074ea8da              # double 0.97249699999999994
	.quad	0x4022993faf42784b              # double 9.2993140000000007
	.quad	0x401beaceee0f3cb4              # double 6.9793050000000001
	.quad	0x401a0ab29e4d5d81              # double 6.5104470000000001
	.quad	0x402199d712a0ec74              # double 8.8004689999999996
	.quad	0x401671572580c309              # double 5.610684
	.quad	0x3ffd455eaee2003b              # double 1.8294360000000001
	.quad	0x4000828c36da87a0              # double 2.0637439999999998
	.quad	0x4010c265add9c27f              # double 4.1898410000000004
	.quad	0x401454b4d056c509              # double 5.0827210000000003
	.quad	0x401c46940357a355              # double 7.068924
	.quad	0x4016ed8d36b4c7f3              # double 5.7319839999999997
	.quad	0x400904a7b4e54f7b              # double 3.1272730000000002
	.quad	0x4019dcefed63454a              # double 6.4657590000000003
	.quad	0x40157bcc2938de6e              # double 5.3708960000000001
	.quad	0x4012bfc69728a611              # double 4.6872809999999996
	.quad	0x4006a0114d2f5dbc              # double 2.8281580000000002
	.quad	0x40156cbaf965b20c              # double 5.3561820000000004
	.quad	0x3ff64df9bdc69f8c              # double 1.394037
	.quad	0x4022ef52977c88e8              # double 9.4674270000000007
	.quad	0x40163636f3b213e4              # double 5.5529440000000001
	.quad	0x401581e0828c36db              # double 5.3768330000000004
	.quad	0x40053476af89c5e7              # double 2.650617
	.quad	0x3ff6210e02214270              # double 1.38307
	.quad	0x401c4f9ca5bd944b              # double 7.0777460000000003
	.quad	0x4001b4a6eb91b3f2              # double 2.213209
	.quad	0x3ff66ff08893b7d8              # double 1.4023289999999999
	.quad	0x4022ace789e774ef              # double 9.3377040000000004
	.quad	0x4018813c254a3c64              # double 6.1262059999999998
	.quad	0x4021d51e53a81dc1              # double 8.9162470000000003
	.quad	0x4001b4b9cb6848bf              # double 2.2132450000000001
	.quad	0x401aacd78c436fc1              # double 6.6687909999999997
	.quad	0x3fb13ff25e56cd6c              # double 0.067381999999999997
	.quad	0x3ffd626e5471715c              # double 1.8365309999999999
	.quad	0x40204007fed20297              # double 8.1250610000000005
	.quad	0x40222befae7924af              # double 9.0858129999999999
	.quad	0x3ff13342edbb59de              # double 1.0750150000000001
	.quad	0x3ff306d1e108c3f4              # double 1.189165
	.quad	0x402131949e8815e4              # double 8.5968370000000007
	.quad	0x400de2c2bd7f51f0              # double 3.7357230000000001
	.quad	0x3ff648c1db0142f6              # double 1.392763
	.quad	0x401dddf548ecd8dc              # double 7.4667560000000002
	.quad	0x401997f88765ba6f              # double 6.398409
	.quad	0x4003cb5e529bae47              # double 2.4743010000000001
	.quad	0x4021183f0bae89ec              # double 8.5473560000000006
	.quad	0x400a0c9ea9a3d2d8              # double 3.2561619999999998
	.quad	0x4018f0caa326e115              # double 6.2351479999999997
	.quad	0x400531244a6223e2              # double 2.6489950000000002
	.quad	0x40004eba27ae9ab3              # double 2.0384410000000002
	.quad	0x401c65c70435efa6              # double 7.0993919999999999
	.quad	0x4020fc9d16fc9bc7              # double 8.4933859999999992
	.quad	0x4022d12fb19e731d              # double 9.4085669999999996
	.quad	0x401d23686a4ca4f4              # double 7.2845779999999998
	.quad	0x40200bb5393250b5              # double 8.0228669999999997
	.quad	0x401dc2e3c536d656              # double 7.4403220000000001
	.quad	0x4013a84db9c7368b              # double 4.9143590000000001
	.quad	0x401dc434e3369b9d              # double 7.4416079999999996
	.quad	0x40222f6709fa54c5              # double 9.0925829999999994
	.quad	0x401db0cb6c7a7c9e              # double 7.4226510000000001
	.quad	0x4022d46c11a11234              # double 9.4148870000000002
	.quad	0x4007575c8d9f9054              # double 2.9176570000000002
	.quad	0x3fede8576cce5f74              # double 0.93461199999999999
	.quad	0x4023614d2f5dbb9d              # double 9.690042
	.quad	0x4005c5c0b9991362              # double 2.7215590000000001
	.quad	0x3ff3d1ac9afe1da8              # double 1.2386900000000001
	.quad	0x4023c9335d249e45              # double 9.89297
	.quad	0x4010a1bd1ed9dfdb              # double 4.1579480000000002
	.quad	0x401add3aa369fcf4              # double 6.7160440000000001
	.quad	0x4006b304039abf34              # double 2.8374100000000002
	.quad	0x40168af46aa087ca              # double 5.6356979999999997
	.quad	0x4021d07789a45910              # double 8.9071619999999996
	.quad	0x4020e4a18bd66278              # double 8.4465450000000004
	.quad	0x3ff4506cca2db61c              # double 1.2696350000000001
	.quad	0x401e1fe47991bc56              # double 7.5311450000000004
	.quad	0x3fff41ebc83a96d5              # double 1.9535940000000001
	.quad	0x401659c66d373b00              # double 5.5876710000000003
	.quad	0x4003eed4e4c942d5              # double 2.4916170000000002
	.quad	0x3ffcf829068986fd              # double 1.810586
	.quad	0x4017ee3c968943e1              # double 5.982653
	.quad	0x40053a5c1c6088d7              # double 2.6534960000000001
	.quad	0x4011c26c3b927d46              # double 4.4398660000000003
	.quad	0x4013b9c1f85d744f              # double 4.9314039999999997
	.quad	0x401289e1b089a027              # double 4.6346499999999997
	.quad	0x402102031ceaf252              # double 8.5039300000000004
	.quad	0x3ff533cb3e5753a4              # double 1.325145
	.quad	0x3fd0ae147ae147ae              # double 0.260625
	.quad	0x400b6dfbd6a593a3              # double 3.4287030000000001
	.quad	0x40236ca1ad6451b9              # double 9.7121709999999996
	.quad	0x400d37b6bb129025              # double 3.6522039999999998
	.quad	0x4004c33ce63a5c1c              # double 2.5953309999999998
	.quad	0x4015811cf355cd92              # double 5.3760870000000001
	.quad	0x401667820a30db6a              # double 5.6010819999999999
	.quad	0x401bf8372e6a7696              # double 6.9923979999999997
	.quad	0x401a8ea67e846a5d              # double 6.6393069999999996
	.quad	0x4008ec79f666234b              # double 3.1154670000000002
	.quad	0x400aaeed8904f6e0              # double 3.3354140000000001
	.quad	0x3ffae8c79f666235              # double 1.6818310000000001
	.quad	0x400165907d912557              # double 2.1745920000000001
	.quad	0x4012b4f26aec0725              # double 4.6767060000000003
	.quad	0x401cdc68ec52a412              # double 7.2152440000000002
	.quad	0x40064b4289118c19              # double 2.7867479999999998
	.quad	0x4018568cac4b4d05              # double 6.0845209999999996
	.quad	0x401cc7b30f8c64fe              # double 7.1950190000000003
	.quad	0x4010085f06f69446              # double 4.0081749999999996
	.quad	0x3fca30caa326e115              # double 0.20461399999999999
	.quad	0x3fea565a14488c61              # double 0.82304100000000002
	.quad	0x4005f17939a7c17b              # double 2.7429070000000002
	.quad	0x401cb1f85d744f5d              # double 7.1737989999999998
	.quad	0x4012588509bf9c63              # double 4.5864450000000003
	.quad	0x400bcbf3bea91d9b              # double 3.474586
	.quad	0x40227974c4cdfaca              # double 9.2372189999999996
	.quad	0x401021a437824d4d              # double 4.0328530000000002
	.quad	0x4020f1c6d1e108c4              # double 8.47222
	.quad	0x4010a6a93f290abb              # double 4.1627549999999998
	.quad	0x401b4a7c17a89332              # double 6.8227390000000003
	.quad	0x3ff0d04b3c3e74b0              # double 1.050853
	.quad	0x3ff230ae536501e2              # double 1.1368849999999999
	.quad	0x4010ea0be5109071              # double 4.228561
	.quad	0x4022d11622813448              # double 9.4083719999999999
	.quad	0x401ef6bd2b6f1993              # double 7.7409559999999997
	.quad	0x4022cd92b7fe08af              # double 9.40151
	.quad	0x3ffeea91d9b1b79e              # double 1.9322680000000001
	.quad	0x4020e4bbc2b94d94              # double 8.4467449999999999
	.quad	0x40147fc9bc771434              # double 5.1247930000000004
	.quad	0x4014359ddc1e7968              # double 5.0523600000000002
	.quad	0x40072a78af3e468d              # double 2.8957380000000001
	.quad	0x401829f623076c05              # double 6.040978
	.quad	0x3ff5864dc22ab25b              # double 1.345289
	.quad	0x401347fb69984a0e              # double 4.8202949999999998
	.quad	0x3fc7d4ae429e0a42              # double 0.18617800000000001
	.quad	0x401579ef954eb13e              # double 5.369078
	.quad	0x4021b2b777d0f1f5              # double 8.8490559999999991
	.quad	0x40067ebbfd71b047              # double 2.8118820000000002
	.quad	0x4014a37fbefd0071              # double 5.1596669999999998
	.quad	0x4020d379d909f1f1              # double 8.4130389999999995
	.quad	0x40220b7b07075b3e              # double 9.0224229999999999
	.quad	0x3fa8b06c43f5f916              # double 0.048221
	.quad	0x40200408d8ec95c0              # double 8.0078800000000001
	.quad	0x4018488a47ecfe9b              # double 6.0708399999999996
	.quad	0x3feabd1ed9dfdac7              # double 0.83558600000000005
	.quad	0x401c6e5aff2a172b              # double 7.1077690000000002
	.quad	0x40208b5b91f70de9              # double 8.2721830000000001
	.quad	0x401438438088509c              # double 5.054945
	.quad	0x4008068cac4b4d05              # double 3.0031979999999998
	.quad	0x3ff138348f53c57a              # double 1.076222
	.quad	0x3feb7ee9142b302f              # double 0.85924199999999995
	.quad	0x401c37720c8cd63d              # double 7.0541460000000002
	.quad	0x4009c8adeebb341e              # double 3.222988
	.quad	0x4003babda0dfdef8              # double 2.4661819999999999
	.quad	0x4009e322291fb3fa              # double 3.2359049999999998
	.quad	0x4020af88fc9363f5              # double 8.3428419999999992
	.quad	0x3fe76516db0dd830              # double 0.73109000000000002
	.quad	0x3ff60e52deca2553              # double 1.3784970000000001
	.quad	0x40218f672b884407              # double 8.7800840000000004
	.quad	0x40068b91b3f20a74              # double 2.818149
	.quad	0x4022659988d2a1f9              # double 9.1984370000000002
	.quad	0x3fd32bfdb4cc2507              # double 0.29955999999999999
	.quad	0x40218127f5e84f09              # double 8.7522579999999994
	.quad	0x40051d577963992d              # double 2.6393270000000002
	.quad	0x4013e1d8e8640208              # double 4.9705539999999999
	.quad	0x400a04ebdd334c5e              # double 3.2524030000000002
	.quad	0x4006e65061416378              # double 2.8624580000000002
	.quad	0x3ffe7141205bc01a              # double 1.90265
	.quad	0x401e51ce28ed5f14              # double 7.5798880000000004
	.quad	0x40192aec4a4095f2              # double 6.2919169999999998
	.quad	0x40198ab53d640e9d              # double 6.3854569999999997
	.quad	0x3ff9d0880d801b43              # double 1.6134109999999999
	.quad	0x3fd9246bf01322f2              # double 0.39284799999999997
	.quad	0x4013623897204296              # double 4.8459190000000003
	.quad	0x40120583621fafc9              # double 4.5053840000000003
	.quad	0x4015c085b18548aa              # double 5.4380100000000002
	.quad	0x3fc7291b823c85c2              # double 0.18094199999999999
	.quad	0x4005ce5de15ca6ca              # double 2.725765
	.quad	0x4023cb3c3e74afd5              # double 9.8969439999999995
	.quad	0x3fdb0ca1cef240fb              # double 0.42264600000000002
	.quad	0x3ffa544028e4fb98              # double 1.6455690000000001
	.quad	0x40129f2734f82f51              # double 4.6554229999999999
	.quad	0x400b689118c197e5              # double 3.4260579999999998
	.quad	0x402297082491afc0              # double 9.2949839999999994
	.quad	0x400880b912dba4d7              # double 3.062853
	.quad	0x401bea109d0635a4              # double 6.9785789999999999
	.quad	0x401b25b749adc8fc              # double 6.7868320000000004
	.quad	0x3ffd680bed740c41              # double 1.8379019999999999
	.quad	0x40020826aa8eb463              # double 2.2539799999999999
	.quad	0x3fe39aac53b0813d              # double 0.61263100000000004
	.quad	0x401d8784ec636b09              # double 7.3823429999999997
	.quad	0x40029972cd7cf5f5              # double 2.324926
	.quad	0x3ffd4382a12f9011              # double 1.8289820000000001
	.quad	0x40152e514c22ee42              # double 5.2952320000000004
	.quad	0x401a2f01fb82c2bd              # double 6.5459059999999996
	.quad	0x40197d7e889c1b54              # double 6.3725529999999999
	.quad	0x401d103cd141a693              # double 7.2658569999999996
	.quad	0x400bc80cf9e3864d              # double 3.4726810000000001
	.quad	0x3fb62b4959e62563              # double 0.086597999999999994
	.quad	0x4007925edd052935              # double 2.9464700000000001
	.quad	0x4004dd44998d0460              # double 2.6080410000000001
	.quad	0x4010bb71758e2196              # double 4.1830499999999997
	.quad	0x401e4f50e3476295              # double 7.5774569999999998
	.quad	0x4020e7b41bfbdf09              # double 8.4525459999999999
	.quad	0x40180359791819d2              # double 6.0032709999999998
	.quad	0x402146b65a9a8049              # double 8.6381099999999993
	.quad	0x4015202f2f987400              # double 5.2814300000000003
	.quad	0x4023ac7cb70ac3a8              # double 9.8368889999999993
	.quad	0x40139f33ca31e7da              # double 4.9054710000000004
	.quad	0x40006e075f6fd220              # double 2.053725
	.quad	0x4004a95f2452c5a0              # double 2.5827010000000001
	.quad	0x40031e121ee67514              # double 2.3896829999999998
	.quad	0x4015745f9df548ed              # double 5.3636460000000001
	.quad	0x40106b1d4f9c1f86              # double 4.1046040000000001
	.quad	0x3ff27762d83c6c98              # double 1.154147
	.quad	0x4003efe154434e33              # double 2.4921289999999998
	.quad	0x400ad2a172abef07              # double 3.3528470000000001
	.quad	0x401911e85fd04a30              # double 6.2674880000000002
	.quad	0x400f190a7829068a              # double 3.8872270000000002
	.quad	0x4023f60eb67c2870              # double 9.9805810000000008
	.quad	0x3fbf55de58e64b23              # double 0.122404
	.quad	0x4023208f648c7193              # double 9.5635940000000001
	.quad	0x40167441355475a3              # double 5.6135299999999999
	.quad	0x40216ff8ec0f8833              # double 8.7186959999999996
	.quad	0x4012b65c70435efa              # double 4.6780869999999997
	.quad	0x4007d3ce63a5c1c6              # double 2.978421
	.quad	0x3fd28cc9a77e5eab              # double 0.28984300000000002
	.quad	0x3ffb46338b47c73f              # double 1.704639
	.quad	0x4022f31d2e0e3044              # double 9.4748319999999992
	.quad	0x3ffa5cf56eac8605              # double 1.6476949999999999
	.quad	0x4021106d2ed783e0              # double 8.5320830000000001
	.quad	0x4012b600b0292817              # double 4.6777369999999996
	.quad	0x4016082517e77d52              # double 5.5079539999999998
	.quad	0x401073b57c4e2f38              # double 4.112997
	.quad	0x40221d6fb8f57f73              # double 9.0574929999999991
	.quad	0x40232f1b47842310              # double 9.5920050000000003
	.quad	0x401588cc9a77e5eb              # double 5.3835930000000003
	.quad	0x402065a4ce8101f3              # double 8.1985229999999998
	.quad	0x400acf6dfc5cdd51              # double 3.3512840000000002
	.quad	0x4023c0b6f9fcb0c0              # double 9.8763959999999997
	.quad	0x401b7d77fae3608d              # double 6.872528
	.quad	0x4022125269595fee              # double 9.0357850000000006
	.quad	0x40203b8c75c4a83b              # double 8.1163059999999998
	.quad	0x3ffd054cdb7ae579              # double 1.8137939999999999
	.quad	0x4014a50331e3a7db              # double 5.1611450000000003
	.quad	0x4021c90e02214270              # double 8.8926850000000002
	.quad	0x4005b6aa4b9884c7              # double 2.7141920000000002
	.quad	0x3ffab18dac258d58              # double 1.6683479999999999
	.quad	0x4021bd6f112fd32c              # double 8.8699879999999993
	.quad	0x3fe49756c93a7115              # double 0.64347399999999999
	.quad	0x4013e89ca18bd662              # double 4.9771599999999996
	.quad	0x4016ae9899bf5947              # double 5.6705040000000002
	.quad	0x4004f5b573eab368              # double 2.6199750000000002
	.quad	0x40164e46cfc829d0              # double 5.5764420000000001
	.quad	0x40116ec80c73abc9              # double 4.3581849999999998
	.quad	0x4019d2b063e07a29              # double 6.4557510000000002
	.quad	0x40184a9ac36544fe              # double 6.0728559999999998
	.quad	0x40184e74afd54541              # double 6.0766169999999997
	.quad	0x4009933a8a3f8983              # double 3.1968890000000001
	.quad	0x4013dba908a265f1              # double 4.964512
	.quad	0x4023772fba01eeee              # double 9.7327860000000008
	.quad	0x401fd14a90470a81              # double 7.9543860000000004
	.quad	0x401a27ea5f84cad5              # double 6.5389799999999996
	.quad	0x3ff2b6b4c7f34938              # double 1.1696059999999999
	.quad	0x40109dba0a526959              # double 4.1540299999999997
	.quad	0x401bbeccc46950fc              # double 6.9363279999999996
	.quad	0x400f89331a08bfc2              # double 3.9419919999999999
	.quad	0x402298919ef954eb              # double 9.2979859999999999
	.quad	0x4009d48d3ae685db              # double 3.2287849999999998
	.quad	0x4000eb0531982880              # double 2.1147559999999999
	.quad	0x4021a76a0dbad3a6              # double 8.826981
	.quad	0x4007fd8f0c77dd87              # double 2.9988079999999999
	.quad	0x400be30fcf80dc33              # double 3.4858699999999998
	.quad	0x4021b6c5d206c871              # double 8.8569779999999998
	.quad	0x401a2cd07852f7f5              # double 6.5437640000000004
	.quad	0x3ffd192d98bf7f06              # double 1.8186469999999999
	.quad	0x40084f7878b7a1c2              # double 3.0388039999999998
	.quad	0x400d8874c8ffb8b2              # double 3.6916289999999998
	.quad	0x4015b8fcd67fd3f6              # double 5.4306520000000003
	.quad	0x3fcfb2aae297396d              # double 0.24764
	.quad	0x401fc10dbf0563ed              # double 7.9385289999999999
	.quad	0x4012d3ff69014b5a              # double 4.7070290000000004
	.quad	0x402341df97aaac11              # double 9.6286590000000007
	.quad	0x4023b1a176ddacef              # double 9.8469350000000002
	.quad	0x402359a415f45e0b              # double 9.6750799999999994
	.quad	0x3ffa05803cd141a7              # double 1.6263430000000001
	.quad	0x400a822d5171e29b              # double 3.3135629999999998
	.quad	0x4022e14bdfd2630f              # double 9.4400320000000004
	.quad	0x4007f5c6c11a1123              # double 2.9950079999999999
	.quad	0x400c3e718a86d71f              # double 3.5304899999999999
	.quad	0x401785f84cad57bc              # double 5.8808299999999996
	.quad	0x401e1d2e0e30446b              # double 7.5284959999999996
	.quad	0x401fb7fc7607c41a              # double 7.9296740000000003
	.quad	0x40072bc72e275ab8              # double 2.8963760000000001
	.quad	0x4020519ce075f6fd              # double 8.1593999999999998
	.quad	0x40228049cb252ce0              # double 9.2505629999999996
	.quad	0x3ff4bdfb0d51f81a              # double 1.2963819999999999
	.quad	0x400b8e5796bfca86              # double 3.4445030000000001
	.quad	0x4016c900c521dda0              # double 5.6962919999999997
	.quad	0x400b8e58a32f4491              # double 3.4445049999999999
	.quad	0x40226df2a9d627bf              # double 9.2147419999999993
	.quad	0x400ec7e414e7ee91              # double 3.8476029999999999
	.quad	0x4017278c436fc159              # double 5.788621
	.quad	0x40138b940fecdd0e              # double 4.8863070000000004
	.quad	0x400ef30b5aa71583              # double 3.8686739999999999
	.quad	0x401795bd0e12e83a              # double 5.8962289999999999
	.quad	0x401350abb44e50c6              # double 4.8287800000000001
	.quad	0x3ff457fb69984a0e              # double 1.2714799999999999
	.quad	0x4021d1e34330d738              # double 8.9099369999999993
	.quad	0x3fe547c0f4517614              # double 0.66500899999999996
	.quad	0x3ffd450268900c52              # double 1.829348
	.quad	0x4022e06317268d33              # double 9.4382560000000008
	.quad	0x401273369b9d7fd8              # double 4.6125129999999999
	.quad	0x4012c4d056c508b3              # double 4.6922009999999998
	.quad	0x40211ecd29131ec1              # double 8.5601590000000005
	.quad	0x401fa269df97aaac              # double 7.9086069999999999
	.quad	0x400bede657b84dba              # double 3.4911620000000001
	.quad	0x4012e1d10b1feeb3              # double 4.7205240000000002
	.quad	0x400d7e414e7ee914              # double 3.6866479999999999
	.quad	0x3fef0f16f4384ba1              # double 0.97059200000000001
	.quad	0x4013b42bb6672fba              # double 4.925948
	.quad	0x400a03b60285ec3e              # double 3.2518120000000001
	.quad	0x3ff358c9fb6134ce              # double 1.2091769999999999
	.quad	0x400dff7f06705c89              # double 3.7497539999999998
	.quad	0x40105f6b5d462c34              # double 4.0931829999999998
	.quad	0x3fffedc3bd599243              # double 1.9955480000000001
	.quad	0x4011e49e44fa0514              # double 4.4732599999999998
	.quad	0x4009498676a7264a              # double 3.160901
	.quad	0x3ffd424b33daf8df              # double 1.8286849999999999
	.quad	0x4023dd972cd7cf5f              # double 9.9327939999999994
	.quad	0x4008130be0ded289              # double 3.0093000000000001
	.quad	0x4015973d188f42ff              # double 5.3976940000000004
	.quad	0x3ff4503fb3743633              # double 1.2695920000000001
	.quad	0x40185918a009f623              # double 6.087008
	.quad	0x4023d61240746456              # double 9.9181080000000001
	.quad	0x401781fafc8b007a              # double 5.8769340000000003
	.quad	0x4021549fb6134ce4              # double 8.6652810000000002
	.quad	0x402302b990afe60c              # double 9.5053219999999996
	.quad	0x4003d7164c729f5a              # double 2.4800230000000001
	.quad	0x400891fddebd9019              # double 3.071285
	.quad	0x400fb8b60f1b25f6              # double 3.9651909999999999
	.quad	0x40044c41dd1a21ea              # double 2.5372349999999999
	.quad	0x400ee1fea8112ba1              # double 3.8603489999999998
	.quad	0x4016d1fbc5de9c02              # double 5.7050619999999999
	.quad	0x3fe5af038e29f9cf              # double 0.67761400000000005
	.quad	0x4023d6d3b6cbd988              # double 9.9195840000000004
	.quad	0x3ffc9601ffb480a6              # double 1.7866230000000001
	.quad	0x401a52d87f88765c              # double 6.5809040000000003
	.quad	0x40127e503fb37436              # double 4.6233529999999998
	.quad	0x401036ec9e236c16              # double 4.0536370000000002
	.quad	0x4022f9c0229a5ebb              # double 9.4877939999999991
	.quad	0x3fe45c4a83b1d0c8              # double 0.636266
	.quad	0x4023f93e5fb71fbc              # double 9.9868039999999993
	.quad	0x401fe64e48626f61              # double 7.9749080000000001
	.quad	0x4016649e8815e397              # double 5.5982609999999999
	.quad	0x400c851a005c4652              # double 3.564991
	.quad	0x4021fded6ba8c587              # double 8.9959520000000008
	.quad	0x3ffb7b95a294141f              # double 1.7176720000000001
	.quad	0x40146a46e08f2171              # double 5.1037860000000004
	.quad	0x3fd1cb46bacf7447              # double 0.278032
	.quad	0x3fe510d7be9856a3              # double 0.65830599999999995
	.quad	0x40226d54b8bef8cf              # double 9.2135370000000005
	.quad	0x40210255b035bd51              # double 8.5045599999999997
	.quad	0x40234fadd15f02c5              # double 9.6556230000000002
	.quad	0x400a4fbb0e5e6794              # double 3.2889309999999998
	.quad	0x402124245f5ad96a              # double 8.5705899999999993
	.quad	0x40135cd74927913f              # double 4.8406650000000004
	.quad	0x400ff363f572de44              # double 3.993843
	.quad	0x401400435efa615b              # double 5.0002570000000004
	.quad	0x3ff92a9f7b5aea31              # double 1.5729059999999999
	.quad	0x402024fb762d83c7              # double 8.0722310000000004
	.quad	0x401d2ee45c358afc              # double 7.2957929999999998
	.quad	0x3ff0d5faa8a82a56              # double 1.052241
	.quad	0x4000899f1ae2da55              # double 2.0671979999999999
	.quad	0x4018dbeb5b2d4d40              # double 6.2147649999999999
	.quad	0x3ff47b784662bae0              # double 1.2801439999999999
	.quad	0x40144e7afa722186              # double 5.0766410000000004
	.quad	0x40090ee9dd7ecbb8              # double 3.132282
	.quad	0x4013e3fc86cebbba              # double 4.9726429999999997
	.quad	0x4003d9b4dcebfec1              # double 2.4813019999999999
	.quad	0x402169e68a0d349c              # double 8.7068370000000001
	.quad	0x40159ce358298cc1              # double 5.4032109999999998
	.quad	0x402117da1ec4e725              # double 8.5465859999999996
	.quad	0x401feaefb2aae297              # double 7.9794299999999998
	.quad	0x40176b10ba6266fd              # double 5.8545559999999996
	.quad	0x401d877c02afdda9              # double 7.3823090000000002
	.quad	0x3ff4c80d801b4352              # double 1.2988409999999999
	.quad	0x4006078fabda0dfe              # double 2.753692
	.quad	0x3fd5a9c560c7c0f4              # double 0.33848699999999998
	.quad	0x401c1e01de269164              # double 7.0293039999999998
	.quad	0x401a8c5ef62f9ca6              # double 6.6370810000000002
	.quad	0x4021af60e0eb67c3              # double 8.8425360000000008
	.quad	0x40055a0f9096bb99              # double 2.6689750000000001
	.quad	0x402257623076c051              # double 9.1706710000000005
	.quad	0x3ff1f75a74c09c3d              # double 1.122889
	.quad	0x401778a04d12018a              # double 5.8677989999999998
	.quad	0x401daf2734f82f51              # double 7.4210479999999999
	.quad	0x3ff256473471f794              # double 1.146064
	.quad	0x4008c86a4ca4f441              # double 3.0978590000000001
	.quad	0x3fed05faebc408d9              # double 0.90698000000000001
	.quad	0x401f550763a19008              # double 7.8330359999999998
	.quad	0x401a97f950b955f8              # double 6.6484120000000004
	.quad	0x4023ade7ea5f84cb              # double 9.8396600000000002
	.quad	0x4023708c60cbf2b2              # double 9.7198209999999996
	.quad	0x4011a5d91ab8e8ea              # double 4.4119609999999998
	.quad	0x40136da2b5a20ddc              # double 4.8570659999999997
	.quad	0x402330127b2cc708              # double 9.5938909999999992
	.quad	0x4021ba847b24638d              # double 8.8642920000000007
	.quad	0x4020d2f3c2dadb83              # double 8.4120159999999995
	.quad	0x400465fd04a2fcf0              # double 2.5497990000000001
	.quad	0x3fea2480e8c8abd6              # double 0.81695600000000002
	.quad	0x40136f1bef49cf57              # double 4.8585050000000001
	.quad	0x4017a61b2a27f1b7              # double 5.9122130000000004
	.quad	0x4023454306e5cd4f              # double 9.6352770000000003
	.quad	0x401c71af3a14cec4              # double 7.1110199999999999
	.quad	0x3fe3da20ddc61954              # double 0.62037699999999996
	.quad	0x40127a02fb5d0310              # double 4.6191519999999997
	.quad	0x40094d65e4606749              # double 3.162792
	.quad	0x3ff8e674080f98fa              # double 1.556263
	.quad	0x40084101f31f46ed              # double 3.0317419999999999
	.quad	0x3ff7298dcdb37c9a              # double 1.4476450000000001
	.quad	0x40227bb3c81908e6              # double 9.2416060000000009
	.quad	0x401feea3df6db941              # double 7.983047
	.quad	0x401980e90bc7b45f              # double 6.3758889999999999
	.quad	0x3fd3ff7596851223              # double 0.31246699999999999
	.quad	0x40232250d6b228dd              # double 9.5670230000000007
	.quad	0x401bcb69984a0e41              # double 6.948645
	.quad	0x4021e79af1886df8              # double 8.9523539999999997
	.quad	0x40232e01ffb480a6              # double 9.5898590000000006
	.quad	0x4019c77143393ab4              # double 6.4447679999999998
	.quad	0x3fd48954a7f8012e              # double 0.320882
	.quad	0x3fc761aa3f034b0e              # double 0.182668
	.quad	0x400274dbdf8f4730              # double 2.3070599999999999
	.quad	0x4014fc27631b584b              # double 5.2462439999999999
	.quad	0x401ddb4edb2f661f              # double 7.4641679999999999
	.quad	0x401b1446f9b994e2              # double 6.7698020000000003
	.quad	0x401b22a0ec743201              # double 6.783817
	.quad	0x40218e47dc37a3db              # double 8.7778919999999996
	.quad	0x3fd4ff04577d9557              # double 0.328065
	.quad	0x4000cd0dcfcc5b8e              # double 2.1001240000000001
	.quad	0x40169aa6d2674081              # double 5.651027
	.quad	0x4015c8611fd5885d              # double 5.4456829999999998
	.quad	0x4014dd352220bc38              # double 5.2160229999999999
	.quad	0x4014576ab5807fed              # double 5.0853679999999999
	.quad	0x402166abbcb1cc96              # double 8.7005289999999995
	.quad	0x4021e1c1b54195cd              # double 8.9409310000000009
	.quad	0x40142ca7503b81b6              # double 5.0436069999999997
	.quad	0x40076b1cc9646280              # double 2.9273009999999999
	.quad	0x400a4d81adea8976              # double 3.2878449999999999
	.quad	0x3fd7b8b69552e2fc              # double 0.37064900000000001
	.quad	0x4022bfc2ca148ba8              # double 9.3745329999999995
	.quad	0x4017ee54f7a91969              # double 5.9827459999999997
	.quad	0x401fcee30caa326e              # double 7.9520379999999999
	.quad	0x4023ad4fbdad7519              # double 9.8384990000000005
	.quad	0x400bbffa3b9ae0c1              # double 3.4687389999999998
	.quad	0x4021dc308feac42f              # double 8.9300580000000007
	.quad	0x3ffb1d084e831ad2              # double 1.694588
	.quad	0x3fda4727dcbddb98              # double 0.41059299999999999
	.quad	0x4011c97b7414a4d3              # double 4.4467600000000003
	.quad	0x3ff09d6bebe1650a              # double 1.0384329999999999
	.quad	0x4016b41fa7653437              # double 5.6759019999999998
	.quad	0x401904b2745bf26f              # double 6.2545869999999999
	.quad	0x401292352eb5f5f1              # double 4.6427810000000003
	.quad	0x4022656c72192210              # double 9.1980930000000001
	.quad	0x4013cd7d7c2ca149              # double 4.9506740000000002
	.quad	0x4015040d0aaa7ded              # double 5.2539559999999996
	.quad	0x401ac3ed959a3098              # double 6.6913359999999997
	.quad	0x400c0b07d0aed99d              # double 3.5053860000000001
	.quad	0x40217ecbfb15b574              # double 8.7476500000000001
	.quad	0x40231c332f01754b              # double 9.5550779999999999
	.quad	0x401ff9b1fab96f22              # double 7.993843
	.quad	0x3fe452c7b890d5a6              # double 0.63510500000000003
	.quad	0x3ff1a6ddf00abf77              # double 1.1032390000000001
	.quad	0x401da69df97aaac1              # double 7.412712
	.quad	0x3ff96cfe9b7bf1e9              # double 1.58911
	.quad	0x3fed6fc158fb43d9              # double 0.91989200000000004
	.quad	0x3ff83e56473471f8              # double 1.5152190000000001
	.quad	0x3ffef20a73f748a1              # double 1.9340919999999999
	.quad	0x40195f190d173fb8              # double 6.3428690000000003
	.quad	0x3ff9840bfe3b03e2              # double 1.594738
	.quad	0x3ffbc8711d798d8b              # double 1.7364360000000001
	.quad	0x4020835dedf1e083              # double 8.2565760000000008
	.quad	0x4020214c447c30d3              # double 8.065035
	.quad	0x400e8a86d71f3626              # double 3.8176399999999999
	.quad	0x401d6922962cfd8f              # double 7.352671
	.quad	0x3fe69ebc83a96d4c              # double 0.70687699999999998
	.quad	0x40219e54d61b2a28              # double 8.8092410000000001
	.quad	0x401b0a897635e743              # double 6.7602900000000004
	.quad	0x401306cd6c2efd44              # double 4.7566430000000004
	.quad	0x3ff3146e4c0df58c              # double 1.192488
	.quad	0x400753cd573647bb              # double 2.9159190000000001
	.quad	0x401211bb8c32a8ca              # double 4.5173170000000002
	.quad	0x40054e90364388ec              # double 2.6633610000000001
	.quad	0x401909cfdd228566              # double 6.259582
	.quad	0x4018d1aeb3dd11be              # double 6.2047679999999996
	.quad	0x3fc20e38a7e73a36              # double 0.14105899999999999
	.quad	0x4007ed3953dea466              # double 2.9908320000000002
	.quad	0x401a62c2374794ea              # double 6.596444
	.quad	0x4011640420f6f08d              # double 4.3476720000000002
	.quad	0x402143d7d3910c2c              # double 8.6325059999999993
	.quad	0x4016cfee2c98e53f              # double 5.7030570000000003
	.quad	0x40034f251c193b3a              # double 2.4136449999999998
	.quad	0x402334ebfec13b9f              # double 9.6033629999999998
	.quad	0x401d3f4906034f40              # double 7.3118020000000001
	.quad	0x3ffeae392e1ef73c              # double 1.917535
	.quad	0x401f3cf5b1c86488              # double 7.8095309999999997
	.quad	0x40025d4f9c1f85d7              # double 2.2955619999999999
	.quad	0x401ef7503b81b64e              # double 7.741517
	.quad	0x3ff3c307f23cc8de              # double 1.235115
	.quad	0x40214aa80064a9ce              # double 8.6458130000000004
	.quad	0x3ff52044ae85b9e9              # double 1.3203780000000001
	.quad	0x40149044ae85b9e9              # double 5.1408870000000002
	.quad	0x40239bd3804534bd              # double 9.8043479999999991
	.quad	0x400b8ed45e9185cf              # double 3.4447410000000001
	.quad	0x401f31c8eabffcdb              # double 7.7986180000000002
	.quad	0x40144811f4f50a03              # double 5.0703810000000002
	.quad	0x40002fc8b0079a28              # double 2.0233319999999999
	.quad	0x400b6b9f559b3d08              # double 3.4275500000000001
	.quad	0x400ff95e5aff2a17              # double 3.9967619999999999
	.quad	0x401fdbb7739f340d              # double 7.9645669999999997
	.quad	0x400615feda661284              # double 2.7607400000000002
	.quad	0x401d9da4ce8101f3              # double 7.4039489999999999
	.quad	0x3fd9f3a9b0681238              # double 0.405497
	.quad	0x40212990afe60c39              # double 8.5811820000000001
	.quad	0x40053bf7ad4b2746              # double 2.6542810000000001
	.quad	0x401345992428d435              # double 4.8179670000000003
	.quad	0x401f03532e7b3d8e              # double 7.753247
	.quad	0x4022b5983947496b              # double 9.3546770000000005
	.quad	0x40138eb2d0a24463              # double 4.889354
	.quad	0x40164f04ddb5525d              # double 5.5771670000000002
	.quad	0x3ffdff64cf8d716d              # double 1.874852
	.quad	0x4013de368f084620              # double 4.9670050000000003
	.quad	0x4000d96b76709fa5              # double 2.1061619999999999
	.quad	0x400b0a73f748a15a              # double 3.3801040000000002
	.quad	0x400a9242070b8cfc              # double 3.321415
	.quad	0x3ffb0d035371971c              # double 1.690677
	.quad	0x401dcaa4fca42aed              # double 7.4478949999999999
	.quad	0x401827f9d6f112fd              # double 6.0390389999999998
	.quad	0x4010b2c3009b3073              # double 4.1745720000000004
	.quad	0x401eeb59578a2a91              # double 7.7298330000000001
	.quad	0x3fff9791819d2392              # double 1.974504
	.quad	0x4022bc6f587d6f97              # double 9.3680369999999992
	.quad	0x40193ed352220bc4              # double 6.3113530000000004
	.quad	0x401f59d3458cd20b              # double 7.83772
	.quad	0x4011e173b85e80bf              # double 4.4701680000000001
	.quad	0x4023832f44912989              # double 9.7562200000000007
	.quad	0x40229172cd7cf5f5              # double 9.2840790000000002
	.quad	0x400616f32bdc26dd              # double 2.761206
	.quad	0x4009b4c1a8ac5c14              # double 3.21326
	.quad	0x3ff1d9934efcbd55              # double 1.1156189999999999
	.quad	0x400403afb7e90ff9              # double 2.5017999999999998
	.quad	0x40172ff5c6c11a11              # double 5.7968359999999999
	.quad	0x3ff6a90795f676ea              # double 1.4162669999999999
	.quad	0x40175413db7f1737              # double 5.8321069999999997
	.quad	0x3ff7326aec0724b7              # double 1.4498089999999999
	.quad	0x401f9b8e4b87bdcf              # double 7.9019099999999999
	.quad	0x3ff958aeb80ecfa7              # double 1.5841510000000001
	.quad	0x40213e8d972cd7cf              # double 8.6221739999999993
	.quad	0x4014c56605ee568a              # double 5.1927719999999997
	.quad	0x401e529068986fce              # double 7.5806290000000001
	.quad	0x4004075cd0bb6ed6              # double 2.5035949999999998
	.quad	0x4018d0a782906898              # double 6.2037639999999996
	.quad	0x401a8e6cd29131ec              # double 6.639087
	.quad	0x3fe48882f0e0a84c              # double 0.64166400000000001
	.quad	0x3fdb43e100607810              # double 0.42601800000000001
	.quad	0x4013c8bd230b9dc3              # double 4.946034
	.quad	0x401fe44d44567126              # double 7.9729510000000001
	.quad	0x400ef7c80841ede1              # double 3.870987
	.quad	0x4010fad03d9a9542              # double 4.2449349999999999
	.quad	0x4021091c087442c8              # double 8.517792
	.quad	0x4023e431593e5fb7              # double 9.9456889999999997
	.quad	0x3ff669930be0ded3              # double 1.4007750000000001
	.quad	0x3ff1c7bdcf0307f2              # double 1.1112649999999999
	.quad	0x401ae5492ff4ba52              # double 6.7239120000000003
	.quad	0x4009f50c1b97353b              # double 3.2446519999999999
	.quad	0x3ff867b2cc70867b              # double 1.525317
	.quad	0x4011e4fbdad7518b              # double 4.473617
	.quad	0x3fd4046c764adff8              # double 0.31276999999999999
	.quad	0x4002febf22c01e69              # double 2.3743880000000002
	.quad	0x4008b2e3821af7d3              # double 3.087348
	.quad	0x4021139c7368ad69              # double 8.5383030000000009
	.quad	0x4017f6b54e2b063e              # double 5.990926
	.quad	0x400c8ca793576039              # double 3.5686789999999999
	.quad	0x3fe6bdbe3c105187              # double 0.71066200000000002
	.quad	0x400b9dc69f8c21e2              # double 3.4520390000000001
	.quad	0x3feff36ac647778e              # double 0.99846400000000002
	.quad	0x40214ab5e529bae4              # double 8.6459189999999992
	.quad	0x4014a25b317efe0d              # double 5.1585510000000001
	.quad	0x40187161e4f765fe              # double 6.1107250000000004
	.quad	0x3fca768dfbd6a594              # double 0.20674300000000001
	.quad	0x4021a0348f53c57a              # double 8.8129010000000001
	.quad	0x4021e6fdeb52c9d1              # double 8.9511559999999992
	.quad	0x400cfbe7f2c3009b              # double 3.6230009999999999
	.quad	0x401469d3458cd20b              # double 5.103345
	.quad	0x401d0b6390c91080              # double 7.2611220000000003
	.quad	0x4021c775fb2edfe7              # double 8.8895719999999994
	.quad	0x3ffff2b12d3415b1              # double 1.9967509999999999
	.quad	0x3fd4622c45026890              # double 0.318492
	.quad	0x401c33e89a88ace2              # double 7.0506919999999997
	.quad	0x401bd8183f91e647              # double 6.9610300000000001
	.quad	0x3fe1166be7afa722              # double 0.53398699999999999
	.quad	0x40125870110a137f              # double 4.5863649999999998
	.quad	0x3fde5af6c69b5a64              # double 0.474302
	.quad	0x40193142f61ed5ae              # double 6.2981069999999999
	.quad	0x4021f68c26139000              # double 8.9815380000000004
	.quad	0x401fcaa1d755bccb              # double 7.947883
	.quad	0x4017edd052934acb              # double 5.98224
	.quad	0x4021df2606fac604              # double 8.9358369999999993
	.quad	0x401acf583a53b8e5              # double 6.7024850000000002
	.quad	0x4007161fe21d96ea              # double 2.8858030000000001
	.quad	0x401a63c81908e582              # double 6.5974430000000002
	.quad	0x4023bfc5ef62f9ca              # double 9.8745569999999994
	.quad	0x4018f88ebcc6c54c              # double 6.2427320000000002
	.quad	0x3ffbff43419e3001              # double 1.7498199999999999
	.quad	0x40234ed2cbea4ebe              # double 9.6539520000000003
	.quad	0x401623686a4ca4f4              # double 5.5345779999999998
	.quad	0x4018d945b6c3760c              # double 6.21218
	.quad	0x4010d56084a515cf              # double 4.2083760000000003
	.quad	0x4017f9e1f3a57eaa              # double 5.9940259999999999
	.quad	0x40229f296f6512a9              # double 9.3108629999999994
	.quad	0x3fd38112ba16e7a3              # double 0.304753
	.quad	0x4015bdce39b456b4              # double 5.4353569999999998
	.quad	0x3fe7e2541d8e8640              # double 0.74637799999999999
	.quad	0x401b83910c2c5e2d              # double 6.8784830000000001
	.quad	0x400ea75ddd2ae8e2              # double 3.8317220000000001
	.quad	0x4021d3723ee1bd1f              # double 8.9129810000000003
	.quad	0x4017e1bbcf4e874d              # double 5.9704430000000004
	.quad	0x4005254d61b2a27f              # double 2.643214
	.quad	0x40189ce746cb966c              # double 6.1532260000000001
	.quad	0x4015b3fe1975f2cb              # double 5.4257739999999997
	.quad	0x3ffe824d4cb9ecf6              # double 1.906812
	.quad	0x4018316fc9bc7714              # double 6.0482779999999998
	.quad	0x40155e94ee392e1f              # double 5.342365
	.quad	0x4022c82a77a2cecd              # double 9.3909490000000008
	.quad	0x401701650a45d420              # double 5.7513620000000003
	.quad	0x40134cd78c436fc1              # double 4.8250409999999997
	.quad	0x3fe489e55c0fcb4f              # double 0.64183299999999999
	.quad	0x4017553dea465a57              # double 5.8332439999999997
	.quad	0x401c576922d948dc              # double 7.0853619999999999
	.quad	0x4021a7ebf22c01e7              # double 8.8279720000000008
	.quad	0x400c60cae642bf98              # double 3.5472619999999999
	.quad	0x401468bda9435ac9              # double 5.1022860000000003
	.quad	0x40130b16c1e364bf              # double 4.7608290000000002
	.quad	0x40216e008e9b38d6              # double 8.7148479999999999
	.quad	0x4011958e64b23140              # double 4.3960509999999999
	.quad	0x40153094a2b9d3cc              # double 5.2974420000000002
	.quad	0x401c6bcfd4bf0996              # double 7.1052850000000003
	.quad	0x3ffbd92ea52ef912              # double 1.740523
	.quad	0x401cedbe7f2c300a              # double 7.2321720000000003
	.quad	0x3feea01cd5f99c39              # double 0.95704500000000003
	.quad	0x401973b60285ec3e              # double 6.3629990000000003
	.quad	0x4014ac065b63d3e5              # double 5.1679930000000001
	.quad	0x400bd3825e13b18e              # double 3.4782760000000001
	.quad	0x3fea852b4d8ba40e              # double 0.82875600000000005
	.quad	0x401d3c3116228134              # double 7.3087809999999998
	.quad	0x4013fe5109070fbf              # double 4.9983560000000002
	.quad	0x3fe68d79d0a67621              # double 0.70477000000000001
	.quad	0x4015f8848387df5d              # double 5.492693
	.quad	0x401cbc7e6b3fe9fb              # double 7.1840760000000001
	.quad	0x3fc52d44dca8e2e3              # double 0.16544400000000001
	.quad	0x40123453d20f2bed              # double 4.5511010000000001
	.quad	0x402070194c016052              # double 8.2189429999999994
	.quad	0x402310b3b320535d              # double 9.5326210000000006
	.quad	0x4023a3c947064ecf              # double 9.8198950000000007
	.quad	0x4020daf2734f82f5              # double 8.4276309999999999
	.quad	0x401665dc8323358f              # double 5.5994739999999998
	.quad	0x3ff84ec204f2ae08              # double 1.519228
	.quad	0x401a4d6451b93038              # double 6.5755780000000001
	.quad	0x4023d04cf0739b02              # double 9.9068369999999994
	.quad	0x40214e7f6f4be836              # double 8.6533160000000002
	.quad	0x402184cb7d41743f              # double 8.7593650000000007
	.quad	0x4018ff73c0c1fc8f              # double 6.2494649999999998
	.quad	0x401e4e5710880d80              # double 7.5765039999999999
	.quad	0x401255cbff47735c              # double 4.5837859999999999
	.quad	0x4020a4ab3edd8b61              # double 8.3216190000000001
	.quad	0x4019492f2b66b617              # double 6.3214689999999996
	.quad	0x40133cc6822ff089              # double 4.8093510000000004
	.quad	0x3fecc3ed959a3098              # double 0.89891699999999997
	.quad	0x3fbf22c01e68a0d3              # double 0.121624
	.quad	0x4018822ea0fd3b2a              # double 6.1271310000000003
	.quad	0x40202d23b3636f3b              # double 8.0881629999999998
	.quad	0x401427e52157689d              # double 5.0389600000000003
	.quad	0x4023f459fb1e18f0              # double 9.9772490000000005
	.quad	0x40216455eaee2004              # double 8.6959680000000005
	.quad	0x4002464ba94bbe44              # double 2.2843239999999998
	.quad	0x401af5332acfb763              # double 6.7394530000000001
	.quad	0x401e3c9e236c15d3              # double 7.5591970000000001
	.quad	0x401f843fa2ad3e92              # double 7.879149
	.quad	0x3fe034528283d35f              # double 0.50638700000000003
	.quad	0x401f17eed45e9186              # double 7.7733720000000002
	.quad	0x4015746ae3a3a8e7              # double 5.3636889999999999
	.quad	0x4019bfa3fcc9ea9a              # double 6.4371489999999998
	.quad	0x40232511dffc547a              # double 9.5724020000000003
	.quad	0x401715fbb517a461              # double 5.7714679999999996
	.quad	0x4017ded45e9185cf              # double 5.9676070000000001
	.quad	0x4010cb5aea3161a2              # double 4.1985890000000001
	.quad	0x40110a00192a7371              # double 4.2597659999999999
	.quad	0x401567d24180d3d0              # double 5.351388
	.quad	0x40081f809917939a              # double 3.0153819999999998
	.quad	0x4004de19fc2a886a              # double 2.6084480000000001
	.quad	0x4019ccbee807bbb6              # double 6.4499469999999999
	.quad	0x3ff51a921ccd9620              # double 1.3189869999999999
	.quad	0x400e362e09fe8683              # double 3.7764549999999999
	.quad	0x3fb0f13cee9dd7ed              # double 0.066181000000000004
	.quad	0x401419d7fd82773e              # double 5.0252379999999999
	.quad	0x401c47cc39ffd60f              # double 7.0701150000000004
	.quad	0x401f24ab606b7aa2              # double 7.7858099999999997
	.quad	0x40001f9f87f023ea              # double 2.015441
	.quad	0x3ffd5e9185cee17a              # double 1.835588
	.quad	0x401c45cd91eeaa6d              # double 7.0681669999999999
	.quad	0x401e52a6b0d95140              # double 7.5807140000000004
	.quad	0x401fdc7ef177a701              # double 7.9653280000000004
	.quad	0x40004792d1287c20              # double 2.034948
	.quad	0x3fd52c386d2ed784              # double 0.33082400000000001
	.quad	0x40228938bcdfefbf              # double 9.2680109999999996
	.quad	0x3fe1ce24bba12b5e              # double 0.55641399999999996
	.quad	0x4010296f6512a950              # double 4.0404640000000001
	.quad	0x3ff18c5b8dc55001              # double 1.096767
	.quad	0x4022df08893b7d85              # double 9.4356120000000007
	.quad	0x40239eb00ffda405              # double 9.8099369999999996
	.quad	0x4021fd2e94680171              # double 8.9944959999999998
	.quad	0x401151733226c3b9              # double 4.3295409999999999
	.quad	0x3fbaa8438088509c              # double 0.10413
	.quad	0x40023b9ae0c17657              # double 2.2791039999999998
	.quad	0x40143d5b24e9c454              # double 5.0599179999999997
	.quad	0x40209b124d099e0e              # double 8.3028739999999992
	.quad	0x4020c774cd31769b              # double 8.3895630000000008
	.quad	0x401b0e7afa722186              # double 6.7641410000000004
	.quad	0x401c37b84db9c737              # double 7.0544140000000004
	.quad	0x400568dc11e42e12              # double 2.6762009999999998
	.quad	0x402267761cbccf29              # double 9.2020730000000004
	.quad	0x400f733ca31e7d9a              # double 3.9312680000000002
	.quad	0x4023d77db6e503fb              # double 9.9208809999999996
	.quad	0x3ff33f1843c3a42f              # double 1.202904
	.quad	0x4014b60029f16b12              # double 5.1777350000000002
	.quad	0x40051c7368ad6883              # double 2.6388919999999998
	.quad	0x4011e7f38c5436b9              # double 4.476515
	.quad	0x401ec0f062d40aaf              # double 7.6884170000000002
	.quad	0x40027891e215336e              # double 2.308872
	.quad	0x40029fe5c91d14e4              # double 2.3280750000000001
	.quad	0x401b0d64d7f0ed3e              # double 6.7630800000000004
	.quad	0x3fe314b599aa6091              # double 0.59627799999999997
	.quad	0x3ffe7b1183b60286              # double 1.905046
	.quad	0x400256bfca85cab0              # double 2.2923580000000001
	.quad	0x401c05fb2edfe75c              # double 7.0058410000000002
	.quad	0x4013a18c5c9a34ca              # double 4.907762
	.quad	0x4022dbca31e7d999              # double 9.4292770000000007
	.quad	0x4005e9491f2dc2b1              # double 2.738909
	.quad	0x401f97fbacb42891              # double 7.8984209999999999
	.quad	0x4017e7824d4cb9ed              # double 5.976083
	.quad	0x3ff527e414e7ee91              # double 1.3222389999999999
	.quad	0x401ebd6733ebbfd7              # double 7.6849639999999999
	.quad	0x401c4415b1422ccb              # double 7.0664889999999998
	.quad	0x4019f01040bfe3b0              # double 6.4844369999999998
	.quad	0x40214208398a6549              # double 8.6289689999999997
	.quad	0x40188f162ae4b018              # double 6.1397329999999997
	.quad	0x401757253da72a7c              # double 5.8351030000000002
	.quad	0x40200baeee957471              # double 8.0228190000000001
	.quad	0x401f61676640a6b9              # double 7.8451209999999997
	.quad	0x3fdc5fa658c4bd34              # double 0.44333800000000001
	.quad	0x4001984a0e410b63              # double 2.19936
	.quad	0x3fe8c61f9f01b867              # double 0.77418500000000001
	.quad	0x401a86e71cda2b5a              # double 6.6317409999999999
	.quad	0x402338060780fdc1              # double 9.6094209999999993
	.quad	0x40239b0dd82fd75e              # double 9.8028399999999998
	.quad	0x402186a2d2fe3f36              # double 8.7629610000000007
	.quad	0x401fb0746455eaee              # double 7.9223189999999999
	.quad	0x4013e6451b93037d              # double 4.9748729999999997
	.quad	0x40182921ccd96207              # double 6.0401680000000004
	.quad	0x4011db1d0c804103              # double 4.463978
	.quad	0x4004bfb7a5f41aef              # double 2.5936119999999998
	.quad	0x4002a4e93e1c9b41              # double 2.3305229999999999
	.quad	0x4010ca89331a08c0              # double 4.1977890000000002
	.quad	0x4023df3d7d3910c3              # double 9.9360160000000004
	.quad	0x40156e0008637bd0              # double 5.3574219999999997
	.quad	0x3fb1059ea57214f0              # double 0.066491999999999996
	.quad	0x40048a8f3a9b0681              # double 2.5676559999999999
	.quad	0x401c2bfca85caafc              # double 7.0429560000000002
	.quad	0x401cc1287c200c0f              # double 7.188631
	.quad	0x4017d32b12d3415b              # double 5.9562189999999999
	.quad	0x4012e8915bdd7668              # double 4.7271169999999998
	.quad	0x3feec2070b8cfbfc              # double 0.96118499999999995
	.quad	0x4023d7f540895d0b              # double 9.9217929999999991
	.quad	0x4005c16f0068db8c              # double 2.7194500000000001
	.quad	0x4008e645e4e69f06              # double 3.112438
	.quad	0x40203ee43aa79bbb              # double 8.1228350000000002
	.quad	0x4010c0e8427418d7              # double 4.1883860000000004
	.quad	0x4020bc7ecfe9b7bf              # double 8.3681549999999998
	.quad	0x40112f6f08cc575c              # double 4.296322
	.quad	0x4022be4fb97bb731              # double 9.3717020000000008
	.quad	0x401018aac96cc5fc              # double 4.024089
	.quad	0x40170b6805a2d730              # double 5.761139
	.quad	0x3fecfee9142b302f              # double 0.90611699999999995
	.quad	0x401003387160956c              # double 4.003145
	.quad	0x401188eb463497b7              # double 4.3837099999999998
	.quad	0x3ffcfa3b9ae0c176              # double 1.8110919999999999
	.quad	0x4017ed801b435265              # double 5.9819339999999999
	.quad	0x402159bc98a222d5              # double 8.6752669999999998
	.quad	0x3ffa56eac8605682              # double 1.64622
	.quad	0x4015e1ebc83a96d5              # double 5.4706260000000002
	.quad	0x40177bc169c23b79              # double 5.8708549999999997
	.quad	0x40206b61bb05faec              # double 8.2097300000000004
	.quad	0x402290e9b38d60a6              # double 9.2830329999999996
	.quad	0x3ff14e27e0ef9980              # double 1.0815809999999999
	.quad	0x40116ac6cdaf4adc              # double 4.3542740000000002
	.quad	0x40207877ab324852              # double 8.2352880000000006
	.quad	0x4021abe5b8561d43              # double 8.835737
	.quad	0x401c03f42352eb5f              # double 7.0038609999999997
	.quad	0x401dbb76f6d76252              # double 7.433071
	.quad	0x3ffa9dca4b124d0a              # double 1.6635230000000001
	.quad	0x4020423810e88590              # double 8.1293340000000001
	.quad	0x402160dcfcc5b8dc              # double 8.6891859999999994
	.quad	0x4012420535c9e668              # double 4.5644729999999996
	.quad	0x40146c8ffb8b2639              # double 5.1060179999999997
	.quad	0x401b4d3f5b5fa227              # double 6.825437
	.quad	0x3fe705e1c15097c8              # double 0.719468
	.quad	0x3fe0679463cfb331              # double 0.51264399999999999
	.quad	0x400c3028a1dfb939              # double 3.5235150000000002
	.quad	0x3fe46412cf0f9d2c              # double 0.637216
	.quad	0x401559aed56b0100              # double 5.3375810000000001
	.quad	0x3fc1952d234eb9a1              # double 0.13736499999999999
	.quad	0x3ff63a19008205ff              # double 1.389184
	.quad	0x40205de310dbf056              # double 8.1833729999999996
	.quad	0x4023dfa56de3326a              # double 9.9368090000000002
	.quad	0x4022c7d04a2fcefb              # double 9.3902610000000006
	.quad	0x3fe8e40c8472c0e8              # double 0.77783800000000003
	.quad	0x40236a9dc725c3df              # double 9.7082350000000001
	.quad	0x401423d188f42fe8              # double 5.0349789999999999
	.quad	0x4006976577531db4              # double 2.8239239999999999
	.quad	0x4004ac804102ff8f              # double 2.5842290000000001
	.quad	0x4013873eab367a10              # double 4.8820750000000004
	.quad	0x40072de19fc2a887              # double 2.8974030000000002
	.quad	0x3f8aaef2c7325919              # double 0.013029000000000001
	.quad	0x401c8581cf7878b8              # double 7.1303780000000003
	.quad	0x4022f45bf26f1dc5              # double 9.4772639999999999
	.quad	0x4002fe7296f6512b              # double 2.3742420000000002
	.quad	0x400122d6238da3c2              # double 2.14201
	.quad	0x40187211cb039ef1              # double 6.1113960000000001
	.quad	0x401fa316e3715400              # double 7.9092669999999998
	.quad	0x40119e2867275686              # double 4.4044509999999999
	.quad	0x401916a93f290abb              # double 6.2721299999999998
	.quad	0x4013a66ec9e236c1              # double 4.9125319999999997
	.quad	0x3fe2bbadc0980b24              # double 0.58540999999999999
	.quad	0x402028218def416c              # double 8.0783810000000002
	.quad	0x4016dc7e6b3fe9fb              # double 5.7153260000000001
	.quad	0x401153797460242d              # double 4.331518
	.quad	0x4016a4c8bc9cd3e1              # double 5.6609220000000002
	.quad	0x401244f2ae07e5a8              # double 4.5673320000000004
	.quad	0x4011860242d05f29              # double 4.3808680000000004
	.quad	0x4010ce62dc6e2a80              # double 4.201549
	.quad	0x401078858ff75968              # double 4.1176969999999997
	.quad	0x4010699b2c40d0ab              # double 4.1031310000000003
	.quad	0x401e62f1ed17c5ef              # double 7.5966259999999996
	.quad	0x3ff09959a30984e4              # double 1.037439
	.quad	0x400fa5b530ced4e5              # double 3.9559120000000001
	.quad	0x4010d4766c6de764              # double 4.2074829999999999
	.quad	0x401278201cd5f99c              # double 4.6173099999999998
	.quad	0x4010102f72b45283              # double 4.0158060000000004
	.quad	0x40236b790fb65669              # double 9.7099080000000004
	.quad	0x4020cec743201041              # double 8.4038640000000004
	.quad	0x4022f0cac4b4d057              # double 9.4702970000000004
	.quad	0x4017b7442c7fbacb              # double 5.9289709999999998
	.quad	0x401398e8ea39c51e              # double 4.8993260000000003
	.quad	0x402033fab10ba626              # double 8.1015219999999992
	.quad	0x4004d487fcb923a3              # double 2.6037750000000002
	.quad	0x4018f10342aa9f7b              # double 6.2353639999999997
	.quad	0x3ffc728d8665e02f              # double 1.7779670000000001
	.quad	0x3fa05a4f00ef1349              # double 0.031939000000000002
	.quad	0x40131e63a5c1c609              # double 4.7796770000000004
	.quad	0x4018ed59d55e6bc6              # double 6.2317879999999999
	.quad	0x401f66bb98c7e282              # double 7.8503249999999998
	.quad	0x40164bf0995aaf79              # double 5.57416
	.quad	0x4001e7485e3da2f9              # double 2.2379310000000001
	.quad	0x40135769ec2ce465              # double 4.8353650000000004
	.quad	0x4016fdfefbf401c5              # double 5.748043
	.quad	0x3fe45a3e39f77293              # double 0.63601600000000003
	.quad	0x401a3cf5b1c86488              # double 6.5595309999999998
	.quad	0x40131fd8adab9f56              # double 4.7811000000000003
	.quad	0x401a3ca9ef5232d3              # double 6.5592420000000002
	.quad	0x4021e07dd4413554              # double 8.9384599999999991
	.quad	0x402030e79aae6c8f              # double 8.0955169999999992
	.quad	0x401b094e5d5b24ea              # double 6.7590880000000002
	.quad	0x401d770d1fa33376              # double 7.3662609999999997
	.quad	0x400234dad31fcd25              # double 2.2758080000000001
	.quad	0x3ff1f8d1d8a54824              # double 1.1232470000000001
	.quad	0x3fe47e154434e337              # double 0.64039100000000004
	.quad	0x4016216ce789e775              # double 5.5326420000000001
	.quad	0x3fdfe82517e77d52              # double 0.49854399999999999
	.quad	0x40159cd63cb81733              # double 5.4031609999999999
	.quad	0x3ff9b1d0c8041030              # double 1.605912
	.quad	0x3fed70c564f97edc              # double 0.92001599999999994
	.quad	0x3ff94c804102ff8f              # double 1.5811770000000001
	.quad	0x401c69e3864cb5bb              # double 7.1034069999999998
	.quad	0x4001abf5d78811b2              # double 2.2089650000000001
	.quad	0x40061f9e7b80a9df              # double 2.7654390000000002
	.quad	0x400ec1fd1569f490              # double 3.8447209999999998
	.quad	0x40237f1ac14c660a              # double 9.7482509999999998
	.quad	0x4007eb673c4f3ba7              # double 2.9899429999999998
	.quad	0x402147e62dc6e2a8              # double 8.640428
	.quad	0x3ff791aa821f2991              # double 1.473063
	.quad	0x4014e3076c050bd8              # double 5.2217079999999996
	.quad	0x4021dbd5347a5b10              # double 8.9293610000000001
	.quad	0x3ff2eb12d3415b14              # double 1.182391
	.quad	0x401ad799a1fd156a              # double 6.710547
	.quad	0x401b188f861a60d4              # double 6.7739849999999997
	.quad	0x4018e3ec02f2f987              # double 6.2225799999999998
	.quad	0x401166b7aa25d8d8              # double 4.3503100000000003
	.quad	0x4019b8f68be2f7b1              # double 6.4306279999999996
	.quad	0x3fc4f6273929ed39              # double 0.16376199999999999
	.quad	0x4011ae66cb10342b              # double 4.4203140000000003
	.quad	0x401934f93bc0a06f              # double 6.3017320000000003
	.quad	0x402118112ba16e7a              # double 8.5470059999999997
	.quad	0x40095423d9231c65              # double 3.1660840000000001
	.quad	0x3ff156a8b8f14db6              # double 1.0836570000000001
	.quad	0x401667e6f71a7e31              # double 5.6014670000000004
	.quad	0x402079ae924f227d              # double 8.23766
	.quad	0x3ff544b4d056c509              # double 1.3292740000000001
	.quad	0x402037ef9db22d0e              # double 8.1092499999999994
	.quad	0x400df83e8576cce6              # double 3.746213
	.quad	0x4020d12ff4ba51a0              # double 8.408569
	.quad	0x40231c373f316e37              # double 9.5551089999999998
	.quad	0x401f3548ecd8dbcf              # double 7.8020360000000001
	.quad	0x4022361c15097c81              # double 9.1056830000000009
	.quad	0x4010dbbf50e34763              # double 4.2145970000000004
	.quad	0x401c979c4113c686              # double 7.1480569999999997
	.quad	0x40227306c43f5f91              # double 9.2246609999999993
	.quad	0x401c8c853c148345              # double 7.1372270000000002
	.quad	0x401e4c74fb549f95              # double 7.5746650000000004
	.quad	0x40187670e2c12ad8              # double 6.1156649999999999
	.quad	0x40159a67620ee8d1              # double 5.4007849999999999
	.quad	0x3febe38a7e73a366              # double 0.87152600000000002
	.quad	0x402398a7c5ac471b              # double 9.7981549999999995
	.quad	0x401aa8f8a4c1ebc8              # double 6.6650109999999998
	.quad	0x400035b70691ea79              # double 2.0262280000000001
	.quad	0x3fd85803cd141a69              # double 0.38037199999999999
	.quad	0x400c113059641f64              # double 3.5083929999999999
	.quad	0x401b72c061847f56              # double 6.8620619999999999
	.quad	0x4015b7fcfc3f811f              # double 5.4296759999999997
	.quad	0x40146a6e32e3821b              # double 5.103936
	.quad	0x40176a76d97b30f9              # double 5.8539690000000002
	.quad	0x400978f2e05ccc8a              # double 3.1840570000000001
	.quad	0x3fbf1b152f3c2dae              # double 0.121507
	.quad	0x40129b00bcbe61d0              # double 4.65137
	.quad	0x3ff809fd7a13c255              # double 1.5024390000000001
	.quad	0x401866eb4e981388              # double 6.1005070000000003
	.quad	0x400f0b135979181a              # double 3.8804080000000001
	.quad	0x401ae08205ff1d82              # double 6.7192460000000001
	.quad	0x400c1f58c08b75ea              # double 3.5153059999999998
	.quad	0x40220193f6c2699c              # double 9.0030819999999991
	.quad	0x401b029aa1d755bd              # double 6.7525430000000002
	.quad	0x401ac96c3fc43b2e              # double 6.6967020000000002
	.quad	0x402348e10cf5b1c8              # double 9.6423419999999993
	.quad	0x4020b82a5614df8b              # double 8.3596979999999999
	.quad	0x3fde702e6644d877              # double 0.47559699999999999
	.quad	0x401197a8d64d7f0f              # double 4.3981050000000002
	.quad	0x401ff05857afea3e              # double 7.984712
	.quad	0x4021c37e6f71a7e3              # double 8.8818239999999999
	.quad	0x4013836b8f9b1316              # double 4.8783399999999997
	.quad	0x401f8d801b435265              # double 7.8881839999999998
	.quad	0x3ff1ba42f1ed17c6              # double 1.107974
	.quad	0x40238bcfb3311a54              # double 9.7730689999999995
	.quad	0x4015601b003686a5              # double 5.3438530000000002
	.quad	0x4008e660a2014728              # double 3.1124890000000001
	.quad	0x3ff86c6045baf534              # double 1.526459
	.quad	0x40163a1db877ab32              # double 5.5567539999999997
	.quad	0x400ce03c4b09e98e              # double 3.6094900000000001
	.quad	0x3fe4a8a82a5614e0              # double 0.64558800000000005
	.quad	0x3fe32b1b36bd2b6f              # double 0.59901199999999999
	.quad	0x3ff2aecaeea63b69              # double 1.1676740000000001
	.quad	0x4008765fd8adab9f              # double 3.0577999999999999
	.quad	0x4013ba05143bf727              # double 4.9316599999999999
	.quad	0x401913fd933e35c6              # double 6.2695220000000003
	.quad	0x4023897b7414a4d3              # double 9.7685200000000005
	.quad	0x4008e43b2dd377e2              # double 3.1114410000000001
	.quad	0x4021d4fb97bb7308              # double 8.9159819999999996
	.quad	0x401d64e7ee9142b3              # double 7.348541
	.quad	0x401e9d15f02c4d66              # double 7.6534040000000001
	.quad	0x401e1ea033e78e19              # double 7.5299079999999998
	.quad	0x402171afe1da7b0b              # double 8.7220449999999996
	.quad	0x402006aa087ca644              # double 8.0130160000000003
	.quad	0x401f54bc6a7ef9db              # double 7.8327499999999998
	.quad	0x40216c7000431bdf              # double 8.7117920000000009
	.quad	0x4022a4f5d35653ca              # double 9.3221880000000006
	.quad	0x4014e13be22e5de1              # double 5.2199549999999997
	.quad	0x4023a2734f82f512              # double 9.8172859999999993
	.quad	0x402118637bd05af7              # double 8.5476340000000004
	.quad	0x40004ba0e8427419              # double 2.0369280000000001
	.quad	0x3fbc13cab81f969e              # double 0.109677
	.quad	0x3fdb8405b39e279e              # double 0.42993300000000001
	.quad	0x401a6ede1198aeb8              # double 6.6082689999999999
	.quad	0x4008e771c970f7ba              # double 3.1130100000000001
	.quad	0x401e2e52deca2553              # double 7.5452380000000003
	.quad	0x4003f25460aa64c3              # double 2.493325
	.quad	0x401e28661ae70c13              # double 7.5394519999999998
	.quad	0x4020bb2b777d0f1f              # double 8.3655659999999994
	.quad	0x4017a8aa433508f6              # double 5.9147119999999997
	.quad	0x4017bcdab191dde3              # double 5.9344279999999996
	.quad	0x4014f604189374bc              # double 5.2402499999999996
	.quad	0x4014adf7e80389f8              # double 5.1698909999999998
	.quad	0x401dc6199780baa6              # double 7.4434570000000004
	.quad	0x40181707e175d13d              # double 6.0224909999999996
	.quad	0x4003f0edc3bd5992              # double 2.4926409999999999
	.quad	0x3feafa4a48f96e16              # double 0.84305300000000005
	.quad	0x3ffb4d62bf11f927              # double 1.706393
	.quad	0x40220628027d88c2              # double 9.0120240000000003
	.quad	0x4000d2e72da122fb              # double 2.1029800000000001
	.quad	0x4002b3b0813cab82              # double 2.337739
	.quad	0x4018ea369fcf3dc0              # double 6.2287239999999997
	.quad	0x40136bc7b45f17be              # double 4.8552540000000004
	.quad	0x4018fcefaa4766c7              # double 6.2470080000000001
	.quad	0x4020c470c996b767              # double 8.3836729999999999
	.quad	0x4013bf28848387df              # double 4.9366779999999997
	.quad	0x4016eda9435ac8a3              # double 5.7320909999999996
	.quad	0x4022409374bc6a7f              # double 9.126125
	.quad	0x3ff31d0a67620ee9              # double 1.19459
	.quad	0x401b7d206c8711d8              # double 6.8721940000000004
	.quad	0x4015bc8323358f2e              # double 5.434094
	.quad	0x401fae5b8561d430              # double 7.9202709999999996
	.quad	0x40090b24a6a875d5              # double 3.1304409999999998
	.quad	0x400b226f60e0eb68              # double 3.3918140000000001
	.quad	0x401aae7cd0353719              # double 6.6703979999999996
	.quad	0x4007ca46e08f2171              # double 2.9737680000000002
	.quad	0x400b744bb1af3a15              # double 3.4317850000000001
	.quad	0x40140cb1cc964628              # double 5.012397
	.quad	0x3ff1be82517e77d5              # double 1.109011
	.quad	0x401c52a12f901084              # double 7.0806930000000001
	.quad	0x4023f8f51ac9afe2              # double 9.9862450000000003
	.quad	0x402277023e9ea140              # double 9.2324389999999993
	.quad	0x40232f88db0574b4              # double 9.5928409999999999
	.quad	0x3fe56e17a02fb5d0              # double 0.66968899999999998
	.quad	0x4022e17f4128bf3c              # double 9.4404240000000001
	.quad	0x4020d380cb6c7a7d              # double 8.4130920000000007
	.quad	0x4010aacd184c2720              # double 4.166798
	.quad	0x4008fa62ed352221              # double 3.1222590000000001
	.quad	0x4014b0daa0cae643              # double 5.1727090000000002
	.quad	0x4015ec1db0142f62              # double 5.4805820000000001
	.quad	0x4014795faa8a82a5              # double 5.1185289999999997
	.quad	0x3ffe6bc72e275ab8              # double 1.901313
	.quad	0x4021fddb5525cc42              # double 8.9958139999999993
	.quad	0x401be1b2e59af9ec              # double 6.9704090000000001
	.quad	0x4002890257c914b1              # double 2.3168989999999998
	.quad	0x4010e3ae2541d8e8              # double 4.2223439999999997
	.quad	0x40083d976ff3ade2              # double 3.0300739999999999
	.quad	0x40128ca1cef240fb              # double 4.6373360000000003
	.quad	0x40207694ab1d4f9c              # double 8.2316029999999997
	.quad	0x3fff289ca18bd662              # double 1.9474149999999999
	.quad	0x40157e0828c36da8              # double 5.3730779999999996
	.quad	0x40202a34ca0c282c              # double 8.0824339999999992
	.quad	0x401c5965b20b8067              # double 7.0873020000000002
	.quad	0x4016ece52deca255              # double 5.7313429999999999
	.quad	0x40186810a569b175              # double 6.1016260000000004
	.quad	0x400e40ef1348b220              # double 3.7817059999999998
	.quad	0x400a40f0a5efe932              # double 3.2817090000000002
	.quad	0x40187bcec84f8f8a              # double 6.1209059999999997
	.quad	0x4023c7079e59f2bb              # double 9.8887300000000006
	.quad	0x400d633acd5b6806              # double 3.6734520000000002
	.quad	0x401073486f049a99              # double 4.1125809999999996
	.quad	0x3ffc73083558a761              # double 1.778084
	.quad	0x3fda8fbca1059ea5              # double 0.41502299999999998
	.quad	0x402129014b599aa6              # double 8.5800879999999999
	.quad	0x401ba6961c36976c              # double 6.9126820000000002
	.quad	0x4018ea8b4bf8fcd6              # double 6.2290469999999996
	.quad	0x400f518b93469942              # double 3.9148170000000002
	.quad	0x3fe7199dcb5781c7              # double 0.72187699999999999
	.quad	0x3fea49c90c4dec1c              # double 0.82150699999999998
	.quad	0x401e05c358afc47e              # double 7.5056279999999997
	.quad	0x4013baecd07852f8              # double 4.932544
	.quad	0x40151aac53b0813d              # double 5.2760480000000003
	.quad	0x4021214a90470a81              # double 8.5650220000000008
	.quad	0x3fe8c0895d0b73d2              # double 0.77350300000000005
	.quad	0x4009fbe2b4959e62              # double 3.2479909999999999
	.quad	0x401ae03d9a95421c              # double 6.718985
	.quad	0x40153e1437c5692b              # double 5.3106239999999998
	.quad	0x40200c27e9531551              # double 8.0237420000000004
	.quad	0x4011c6bfca85cab0              # double 4.4440910000000002
	.quad	0x4011f23465625a68              # double 4.4865279999999998
	.quad	0x3fffc226809d4952              # double 1.9849000000000001
	.quad	0x4012845b291b823d              # double 4.6292540000000004
	.quad	0x3fe956798958d9b6              # double 0.79180600000000001
	.quad	0x4022f0489d27c393              # double 9.4693039999999992
	.quad	0x4015c68a0d349be9              # double 5.443886
	.quad	0x4004f143393ab431              # double 2.617804
	.quad	0x3fc22cfd8f0c77de              # double 0.14199800000000001
	.quad	0x4016ee97d06bbdbe              # double 5.7330009999999998
	.quad	0x40005d577963992d              # double 2.0455770000000002
	.quad	0x4013d4113c68661b              # double 4.9570970000000001
	.quad	0x400c2b76f6d76252              # double 3.521223
	.quad	0x400084e592967019              # double 2.0648909999999998
	.quad	0x40153bcc6c54bcf1              # double 5.3083970000000003
	.quad	0x3ff286a3bddfca00              # double 1.1578710000000001
	.quad	0x3fcee0b0af5fd47c              # double 0.241232
	.quad	0x4021e161c36976bc              # double 8.9401989999999997
	.quad	0x401f45d56f32bdc2              # double 7.8181969999999996
	.quad	0x400a1bc98a222d51              # double 3.2635679999999998
	.quad	0x4014dc1a8ac5c140              # double 5.2149450000000002
	.quad	0x401d4c9081c2e33f              # double 7.32477
	.quad	0x4001b4d1e96c3fc4              # double 2.2132909999999999
	.quad	0x40170207d4e09785              # double 5.7519830000000001
	.quad	0x402222e87d2c7b89              # double 9.0681799999999999
	.quad	0x4007910f51ac9afe              # double 2.9458299999999999
	.quad	0x3fedf31d2e0e3044              # double 0.93592699999999995
	.quad	0x3ff7f52007dd4413              # double 1.4973449999999999
	.quad	0x401d9e9e5e247885              # double 7.4049009999999997
	.quad	0x401e90d2c386d2ed              # double 7.6414289999999995
	.quad	0x3fe14f1c3265adda              # double 0.54090700000000003
	.quad	0x401dff0f16f4384c              # double 7.4990810000000003
	.quad	0x4015f07789a45910              # double 5.4848309999999998
	.quad	0x3ffba44523f67f4e              # double 1.7276050000000001
	.quad	0x4013db84db9c7369              # double 4.9643740000000003
	.quad	0x4021b6efa1e3eaf7              # double 8.8572970000000009
	.quad	0x3ff1b65fd8adab9f              # double 1.1070249999999999
	.quad	0x4017ffe86833c600              # double 5.9999099999999999
	.quad	0x400156c9c0a8d21c              # double 2.1673770000000001
	.quad	0x40113aec4a4095f2              # double 4.3075419999999998
	.quad	0x4020779c4113c686              # double 8.2336139999999993
	.quad	0x40167089a0275254              # double 5.6098999999999997
	.quad	0x401f1663c74fb54a              # double 7.771865
	.quad	0x3fe34b90214ad363              # double 0.60297400000000001
	.quad	0x4023c8c069e7fb26              # double 9.8920929999999991
	.quad	0x401b4d31769a9110              # double 6.8253839999999997
	.quad	0x4022a92b1b36bd2b              # double 9.3304069999999992
	.quad	0x3fdd74f722e1ac58              # double 0.46026400000000001
	.quad	0x401fe593a2df9379              # double 7.974196
	.quad	0x4023123d4f15e7c9              # double 9.5356240000000003
	.quad	0x401eaa52ef911cf3              # double 7.6663319999999997
	.quad	0x40226189df1172ef              # double 9.1905049999999999
	.quad	0x4011fd9b5e95b78d              # double 4.4976630000000002
	.quad	0x4022435fe542e558              # double 9.1315910000000002
	.quad	0x401154b3c3e74afd              # double 4.3327169999999997
	.quad	0x3ffc9d2391d57ffa              # double 1.7883640000000001
	.quad	0x4023ce9856a37ac4              # double 9.9035060000000001
	.quad	0x4005296f6512a950              # double 2.645232
	.quad	0x40126d872f33ca32              # double 4.6069610000000001
	.quad	0x4014a428d434a01b              # double 5.1603120000000002
	.quad	0x4015dda6e75ff60a              # double 5.4664570000000001
	.quad	0x401b4851654d61b3              # double 6.8206230000000003
	.quad	0x40055970b49e01de              # double 2.6686719999999999
	.quad	0x400d1c99285a921d              # double 3.6389640000000001
	.quad	0x400a4aed99cbee80              # double 3.2865859999999998
	.quad	0x4005edfa43fe5c92              # double 2.7412000000000001
	.quad	0x40225daa0cae642c              # double 9.182938
	.quad	0x401e5b0531982880              # double 7.5888869999999997
	.quad	0x40234b37867f0aa2              # double 9.6469079999999998
	.quad	0x402177e9fadafd11              # double 8.7342069999999996
	.quad	0x401f6993d5347a5b              # double 7.8531029999999999
	.quad	0x40075e57d9dba909              # double 2.9210660000000002
	.quad	0x4022c05ea24cc682              # double 9.3757219999999997
	.quad	0x40023671ac14c661              # double 2.2765840000000002
	.quad	0x40212315b573eab3              # double 8.5685249999999993
	.quad	0x3fd2285a921ccd96              # double 0.28371299999999999
	.quad	0x400fcd80a17b0f6b              # double 3.9753430000000001
	.quad	0x40156167a95c853c              # double 5.3451219999999999
	.quad	0x4011e27913e81451              # double 4.4711650000000001
	.quad	0x3ff43a42f1ed17c6              # double 1.264224
	.quad	0x4019d67125dd095b              # double 6.459416
	.quad	0x400a6b9b23dd54da              # double 3.3025419999999999
	.quad	0x4016960fe47991bc              # double 5.6465449999999997
	.quad	0x4016c06d50657321              # double 5.6879169999999997
	.quad	0x3ff2140357a35504              # double 1.1298859999999999
	.quad	0x4001479ee02a77a3              # double 2.1599710000000001
	.quad	0x401afd15ad106ee3              # double 6.747153
	.quad	0x401a694898f605ab              # double 6.6028159999999998
	.quad	0x4014cac14c660a20              # double 5.1980029999999999
	.quad	0x40054630ec311623              # double 2.6592730000000002
	.quad	0x3fee82d7b634dad3              # double 0.95347199999999999
	.quad	0x400bfb341e14bdfd              # double 3.4976579999999999
	.quad	0x4012fb59146e4c0e              # double 4.745457
	.quad	0x402343aa1511dffc              # double 9.6321569999999994
	.quad	0x4021aa235b4edb2f              # double 8.8323009999999993
	.quad	0x4019142d490e66cb              # double 6.2697039999999999
	.quad	0x4018e2d666a98245              # double 6.2215210000000001
	.quad	0x4021b45ed4a1ad64              # double 8.8522859999999994
	.quad	0x401da634117f8445              # double 7.4123080000000003
	.quad	0x4017b1615ebfa8f8              # double 5.9232230000000001
	.quad	0x4011947f993d5348              # double 4.3950180000000003
	.quad	0x4010947f993d5348              # double 4.1450180000000003
	.quad	0x40086f37fbefd007              # double 3.054306
	.quad	0x401c77f4128bf3bf              # double 7.1171420000000003
	.quad	0x3ff1c5ccc89b0ee5              # double 1.1107910000000001
	.quad	0x4010d317268d3283              # double 4.206143
	.quad	0x401135918a009f62              # double 4.3023129999999998
	.quad	0x401b094bbe4473cd              # double 6.7590779999999997
	.quad	0x3fba1b4bb5e0f7fd              # double 0.101979
	.quad	0x401eee3a7daa4fca              # double 7.7326449999999998
	.quad	0x401e5884c6a3bde0              # double 7.5864440000000002
	.quad	0x402339491f2dc2b1              # double 9.6118860000000001
	.quad	0x40181db163baba7c              # double 6.0289970000000004
	.quad	0x401d03686a4ca4f4              # double 7.2533279999999998
	.quad	0x3ffacb673c4f3ba7              # double 1.6746589999999999
	.quad	0x401697bb73083559              # double 5.6481760000000003
	.quad	0x4017480c308feac4              # double 5.8203589999999998
	.quad	0x4012eddaceee0f3d              # double 4.7322800000000003
	.quad	0x401bab5350092ccf              # double 6.9173099999999996
	.quad	0x4022ed11be6e6538              # double 9.4630259999999992
	.quad	0x40127d5b24e9c454              # double 4.6224179999999997
	.quad	0x402187e38eb0318c              # double 8.7654080000000007
	.quad	0x40143672b884406c              # double 5.053172
	.quad	0x3ff02a53fc0096ff              # double 1.0103340000000001
	.quad	0x4008e9107faa044b              # double 3.113801
	.quad	0x401a721d96e9bbf1              # double 6.6114410000000001
	.quad	0x401ee3df6db940ff              # double 7.7225320000000001
	.quad	0x3ff6afc8b0079a28              # double 1.417916
	.quad	0x40230faf20ea5b53              # double 9.5306329999999999
	.quad	0x3ff937292c493426              # double 1.5759669999999999
	.quad	0x402361a7c17a8933              # double 9.6907329999999998
	.quad	0x3fde06bbdbe3c105              # double 0.46916099999999999
	.quad	0x4003dafc04c8bc9d              # double 2.4819260000000001
	.quad	0x3ff1c72e275ab7dc              # double 1.1111279999999999
	.quad	0x4009db9e8c47a17f              # double 3.2322359999999999
	.quad	0x4021ff8012dfd695              # double 8.9990240000000004
	.quad	0x4020e4aa326e1156              # double 8.4466110000000008
	.quad	0x4004b1ceaf251c19              # double 2.5868199999999999
	.quad	0x401af2b0a6fc58ac              # double 6.7370020000000004
	.quad	0x401da53005814941              # double 7.4113160000000002
	.quad	0x401b8061847f5621              # double 6.8753719999999996
	.quad	0x3fe8ac215b9a5a8a              # double 0.77101200000000003
	.quad	0x401e8076c050bd88              # double 7.6254530000000002
	.quad	0x3ff98094e5d5b24f              # double 1.5938920000000001
	.quad	0x40042c52a411c2a0              # double 2.5216419999999999
	.quad	0x3fff2084a515ce9e              # double 1.9454389999999999
	.quad	0x3fe50446b69db65f              # double 0.65677200000000002
	.quad	0x40176530489d27c4              # double 5.8488170000000004
	.quad	0x3ffe181cf7878b7a              # double 1.880887
	.quad	0x401353a8a3f8982d              # double 4.8316980000000003
	.quad	0x3fdb620685553ef7              # double 0.42785800000000002
	.quad	0x4018d8f1d3ed527e              # double 6.2118599999999997
	.quad	0x400ed13c68661ae7              # double 3.852166
	.quad	0x402325e7ea5f84cb              # double 9.5740350000000002
	.quad	0x400aed77b7c7820a              # double 3.3659509999999999
	.quad	0x4005bcdfefbf401c              # double 2.7172239999999999
	.quad	0x400b57cb2d905c03              # double 3.4178679999999999
	.quad	0x4011b4ea077036ca              # double 4.4266740000000002
	.quad	0x401a9bae03b3e9a7              # double 6.652031
	.quad	0x4010afba8826aa8f              # double 4.1716100000000003
	.quad	0x400606f9b994e1a4              # double 2.753406
	.quad	0x4022bdadb8348f54              # double 9.3704660000000004
	.quad	0x400ffd4067cf1c32              # double 3.9986579999999998
	.quad	0x401350d73860999e              # double 4.8289460000000002
	.quad	0x3ff32ae297396d09              # double 1.19797
	.quad	0x4023fe071c53f39d              # double 9.9961479999999998
	.quad	0x401b1feb8d823422              # double 6.7811719999999998
	.quad	0x40190fafc8b0079a              # double 6.2653189999999999
	.quad	0x401b1e568a50507a              # double 6.7796269999999996
	.quad	0x4020406338b47c74              # double 8.1257570000000001
	.quad	0x401b9077036c9c0b              # double 6.8910790000000004
	.quad	0x401aacefaa4766c7              # double 6.6688830000000001
	.quad	0x401d961b6d43d039              # double 7.3965889999999996
	.quad	0x40002e8d972cd7cf              # double 2.0227309999999998
	.quad	0x4021eb05100a393f              # double 8.9590230000000002
	.quad	0x401e305186db50f4              # double 7.547186
	.quad	0x4020f170d62bf120              # double 8.4715640000000008
	.quad	0x40234ee2eb1c432d              # double 9.6540750000000006
	.quad	0x40213e4ef0281ba8              # double 8.621696
	.quad	0x4006da60d4562e0a              # double 2.85663
	.quad	0x40033b29a1b9f98b              # double 2.4038879999999998
	.quad	0x4018aed3953dea46              # double 6.1707289999999997
	.quad	0x4020175c8d9f9054              # double 8.0456280000000006
	.quad	0x401884a16a487336              # double 6.1295219999999997
	.quad	0x4021ad6b441bb8c3              # double 8.8387089999999997
	.quad	0x40166a686e7e62dc              # double 5.6039139999999996
	.quad	0x401b7671ef30a4e3              # double 6.8656689999999996
	.quad	0x3ffad800a7c5ac47              # double 1.677735
	.quad	0x3fedc31162281345              # double 0.93006200000000006
	.quad	0x4022bba53b8e4b88              # double 9.3664950000000004
	.quad	0x3ff0f65cb35f3d7d              # double 1.060147
	.quad	0x3fe3a95421c04428              # double 0.61441999999999997
	.quad	0x4009f784662bae04              # double 3.2458580000000001
	.quad	0x40191070329802c1              # double 6.2660530000000003
	.quad	0x40124653c9abb01d              # double 4.5686790000000004
	.quad	0x4023f7219220ff54              # double 9.9826779999999999
	.quad	0x401f53d96638433d              # double 7.8318839999999996
	.quad	0x3ff5566f0cfe1544              # double 1.333602
	.quad	0x400217f27fe4bcae              # double 2.2616930000000002
	.quad	0x40151d6cb5350093              # double 5.2787350000000002
	.quad	0x3ff328db8bac710d              # double 1.1974750000000001
	.quad	0x4002014bdfd2630f              # double 2.2506330000000001
	.quad	0x3fe0eddf00abf76a              # double 0.52903699999999998
	.quad	0x3fde4c2b51bd61f6              # double 0.47339900000000001
	.quad	0x400815c5b4aa9718              # double 3.0106310000000001
	.quad	0x402349409a240315              # double 9.6430710000000008
	.quad	0x40166a415f45e0b5              # double 5.6037650000000001
	.quad	0x4014d0f16f4384ba              # double 5.2040459999999999
	.quad	0x400e9110e453d20f              # double 3.8208329999999999
	.quad	0x40135e5a78f25a25              # double 4.8421419999999999
	.quad	0x4020b87f23cc8de3              # double 8.3603450000000006
	.quad	0x40025790fb65668c              # double 2.2927569999999999
	.quad	0x401288a6117720c9              # double 4.6334460000000002
	.quad	0x401097afa7221859              # double 4.1481310000000002
	.quad	0x401b47a5b0ff10ed              # double 6.8199680000000003
	.quad	0x3ffccc62e4d1a650              # double 1.7998989999999999
	.quad	0x40236be20ccff21b              # double 9.7107089999999995
	.quad	0x40031cd4ed2cbea5              # double 2.389078
	.quad	0x4022f02e019b0ab3              # double 9.4691010000000002
	.quad	0x401da2ce032db1ea              # double 7.408989
	.quad	0x4021474b40703298              # double 8.639246
	.quad	0x4023088e15011905              # double 9.5167090000000005
	.quad	0x40120a960b6f9fcb              # double 4.510338
	.quad	0x40191c679cc74b84              # double 6.2777390000000004
	.quad	0x402369f94855da27              # double 9.7069799999999997
	.quad	0x4020cb57a355043e              # double 8.3971529999999994
	.quad	0x3ff77e20ccff21b4              # double 1.4682930000000001
	.quad	0x40237711b60ae968              # double 9.7325569999999999
	.quad	0x3ff7f3d8e0008638              # double 1.4970330000000001
	.quad	0x3fe45dce7cd03537              # double 0.63645099999999999
	.quad	0x3ffad57de0d66f0d              # double 1.677122
	.quad	0x401737f5a5332ad0              # double 5.8046480000000003
	.quad	0x401d095d4e8fb00c              # double 7.2591450000000002
	.quad	0x3ffe76cbd987c632              # double 1.9040029999999999
	.quad	0x3fdd16a8b8f14db6              # double 0.45450800000000002
	.quad	0x4017ee060fe47992              # double 5.9824450000000002
	.quad	0x4019ff42fe82517e              # double 6.4992789999999996
	.quad	0x4016a1a2e7f6f4bf              # double 5.6578480000000004
	.quad	0x3fe7134efcbd5561              # double 0.72110700000000005
	.quad	0x401241feeb2d0a24              # double 4.5644489999999998
	.quad	0x400da8ebcc6c54bd              # double 3.707481
	.quad	0x400ff99cbee807bc              # double 3.9968810000000001
	.quad	0x40001ff69014b59a              # double 2.0156070000000001
	.quad	0x401182e83a109d06              # double 4.3778389999999998
	.quad	0x40032d04e618ce2d              # double 2.3969819999999999
	.quad	0x4013171f79420b3d              # double 4.7725809999999997
	.quad	0x4003680b673c4f3c              # double 2.4258030000000002
	.quad	0x40004ae642bf9831              # double 2.036572
	.quad	0x40217c289118c198              # double 8.7424970000000002
	.quad	0x4016acf398e97072              # double 5.6688980000000004
	.quad	0x4018f5a57646ae3a              # double 6.2398889999999998
	.quad	0x4013bf4d7add15f0              # double 4.9368189999999998
	.quad	0x4021286530058149              # double 8.5788969999999996
	.quad	0x4000d4cfd08d4bad              # double 2.1039119999999998
	.quad	0x401ac4399b2c40d1              # double 6.6916260000000003
	.quad	0x40209b291b823c86              # double 8.3030480000000004
	.quad	0x40227ec97d8cf399              # double 9.2476310000000002
	.quad	0x40200d9c065b63d4              # double 8.0265810000000001
	.quad	0x40079f212d773190              # double 2.9527000000000001
	.quad	0x4015fbc903ea704c              # double 5.4958840000000002
	.quad	0x4012b8383ad9f0a2              # double 4.6799020000000002
	.quad	0x401e223358f2e05d              # double 7.5333990000000001
	.quad	0x4009949a5657fb6a              # double 3.1975600000000002
	.quad	0x400ca50efdc9c4db              # double 3.5805950000000002
	.quad	0x4019c7a80cf9e386              # double 6.4449769999999997
	.quad	0x3ffe1db0142f61ed              # double 1.8822479999999999
	.quad	0x401f63eb7cbb3c82              # double 7.8475780000000004
	.quad	0x4013b7e90ff97247              # double 4.9295999999999998
	.quad	0x4017c49fd7a13c25              # double 5.9420159999999997
	.quad	0x4004e6b0d9513f8e              # double 2.6126420000000001
	.quad	0x40230800c9539b89              # double 9.5156310000000008
	.quad	0x401cbc46950fc71d              # double 7.1838629999999997
	.quad	0x4021d731d2e0e304              # double 8.9203019999999995
	.quad	0x40132a9cdc443915              # double 4.791614
	.quad	0x3ff6bc3b4f616723              # double 1.420955
	.quad	0x402240e51d25aab4              # double 9.1267479999999991
	.quad	0x4021e4bdfd2630ec              # double 8.9467619999999996
	.quad	0x40218c2e33eff195              # double 8.77379
	.quad	0x4013d774256bca53              # double 4.9604039999999996
	.quad	0x400c3d6a593a2df9              # double 3.5299879999999999
	.quad	0x400319988d2a1f8e              # double 2.3874979999999999
	.quad	0x4018850331e3a7db              # double 6.1298950000000003
	.quad	0x400f5e86833c6003              # double 3.9211550000000002
	.quad	0x402326cfe9b7bf1f              # double 9.5758050000000007
	.quad	0x400edc5ef62f9ca6              # double 3.8576030000000001
	.quad	0x40227f0c564f97ee              # double 9.2481410000000004
	.quad	0x3fde01e2584f4c6e              # double 0.46886499999999998
	.quad	0x40171a7bd48cb4af              # double 5.7758630000000002
	.quad	0x40195fc0d2c386d3              # double 6.3435090000000001
	.quad	0x4000ca372606fac6              # double 2.098738
	.quad	0x401a13486f049a99              # double 6.5188309999999996
	.quad	0x401ff39a7c17a893              # double 7.9878939999999998
	.quad	0x4015f680e0653006              # double 5.4907260000000004
	.quad	0x401c6f21b3aeee95              # double 7.1085269999999996
	.quad	0x40047c3a42f1ed18              # double 2.5606580000000001
	.quad	0x401431aeb3dd11be              # double 5.0485179999999996
	.quad	0x3ff8013fd0d0678c              # double 1.500305
	.quad	0x40223a56de33269e              # double 9.113944
	.quad	0x40152795703f2d3c              # double 5.2886559999999996
	.quad	0x40192b00ffda4053              # double 6.2919960000000001
	.quad	0x400b14e0114d2f5e              # double 3.3851930000000001
	.quad	0x40155b4245f5ad97              # double 5.3391200000000003
	.quad	0x401b573b42cc2d6b              # double 6.8351870000000003
	.quad	0x40209532617c1bda              # double 8.2913999999999994
	.quad	0x40176bfe7e1fc090              # double 5.8554630000000003
	.quad	0x40129f177a7008a7              # double 4.6553630000000004
	.quad	0x400dabc8c0ce91c9              # double 3.708879
	.quad	0x40148e40420f6f09              # double 5.1389170000000002
	.quad	0x3fdeb59ddc1e7968              # double 0.47983500000000001
	.quad	0x401d6c59b8023a6d              # double 7.3558110000000001
	.quad	0x4010de3c105186db              # double 4.2170259999999997
	.quad	0x40224849ecb31c22              # double 9.1411890000000007
	.quad	0x40149ded6ba8c587              # double 5.1542260000000004
	.quad	0x3fd2025bfad29995              # double 0.28139399999999998
	.quad	0x400d2b4959e62563              # double 3.6461359999999998
	.quad	0x4005f18eb8950764              # double 2.7429480000000002
	.quad	0x400e7a8deb0fadf3              # double 3.809841
	.quad	0x4008d419e30014f9              # double 3.1035650000000001
	.quad	0x400d8ad601ffb481              # double 3.6927910000000002
	.quad	0x3ff6e1932d6ece14              # double 1.430072
	.quad	0x4015184449dbec25              # double 5.2736980000000004
	.quad	0x40177f26aec0724b              # double 5.8741709999999996
	.quad	0x4018ec2a02320968              # double 6.2306290000000004
	.quad	0x4020acae21101b00              # double 8.3372659999999996
	.quad	0x4019a8a697aeddce              # double 6.4146979999999996
	.quad	0x400a514b9cb6848c              # double 3.289695
	.quad	0x40220b30f8c64fdb              # double 9.0218579999999999
	.quad	0x400368f96e158751              # double 2.4262570000000001
	.quad	0x40216a22706d5065              # double 8.7072939999999992
	.quad	0x402048dc33721d54              # double 8.1423050000000003
	.quad	0x4023baaf9a8cdea0              # double 9.8646209999999996
	.quad	0x402217a63736cdf2              # double 9.0461899999999993
	.quad	0x4021b8fdc1615ec0              # double 8.8613110000000006
	.quad	0x40163c2d2780778a              # double 5.5587660000000003
	.quad	0x3fd8ee8d10f51aca              # double 0.38956000000000002
	.quad	0x400983fbbd7b2032              # double 3.1894450000000001
	.quad	0x40147b6ed677707a              # double 5.1205400000000001
	.quad	0x4009fd8c6d612c6b              # double 3.2488030000000001
	.quad	0x40208c4b4d056c51              # double 8.2740120000000008
	.quad	0x4005aa7ce0fc2eba              # double 2.7082459999999999
	.quad	0x4012bf72b4528284              # double 4.6869610000000002
	.quad	0x4020440b13597918              # double 8.1328969999999998
	.quad	0x401113dc486ad2dd              # double 4.2693950000000003
	.quad	0x40162ed3d859c8c9              # double 5.5457299999999998
	.quad	0x40095debd9018e75              # double 3.1708599999999998
	.quad	0x40221e5d9e40c847              # double 9.0593079999999997
	.quad	0x401841fa76534374              # double 6.064432
	.quad	0x4015f606b7aa25d9              # double 5.4902600000000001
	.quad	0x40175347a5b0ff11              # double 5.8313280000000001
	.quad	0x4004665d7cb2d906              # double 2.5499830000000001
	.quad	0x40076df04ddb5526              # double 2.9286810000000001
	.quad	0x4022f78811b1d92b              # double 9.4834599999999991
	.quad	0x4014027ed84d338f              # double 5.0024369999999996
	.quad	0x4022116744b2b778              # double 9.0339910000000003
	.quad	0x4017d19b90ea9e6f              # double 5.9546950000000001
	.quad	0x400f48b19a415f46              # double 3.9104950000000001
	.quad	0x401ad6f156191149              # double 6.709905
	.quad	0x4012b71f36262cba              # double 4.6788299999999996
	.quad	0x4017bc7c957cd467              # double 5.934069
	.quad	0x4019f079a2834d27              # double 6.484839
	.quad	0x401dc069a4df47fa              # double 7.4379030000000004
	.quad	0x401fb4ed6fda836f              # double 7.9266870000000002
	.quad	0x3ffac2acb85a4f01              # double 1.672528
	.quad	0x401748e64b231401              # double 5.8211909999999998
	.quad	0x40010a30db6a1e82              # double 2.1299760000000001
	.quad	0x4014159c065b63d4              # double 5.0211030000000001
	.quad	0x40093219a847b246              # double 3.1494629999999999
	.quad	0x401bf8c21e1d2179              # double 6.992928
	.quad	0x4014e2c3c9eecbfb              # double 5.2214499999999999
	.quad	0x401c9a6937d1fe65              # double 7.150792
	.quad	0x4008d72de43ed95a              # double 3.1050680000000002
	.quad	0x400accac4b4d056c              # double 3.3499379999999999
	.quad	0x4021e3b2788db057              # double 8.9447209999999995
	.quad	0x4021f24031487768              # double 8.9731459999999998
	.quad	0x401c7da661283904              # double 7.1227049999999998
	.quad	0x401a2c026cc1ca3a              # double 6.5429779999999997
	.quad	0x402055dce7cd0353              # double 8.1677009999999992
	.quad	0x400e4437824d4cba              # double 3.783309
	.quad	0x40201f88765ba6f0              # double 8.0615880000000004
	.quad	0x3fc19e8c47a17f41              # double 0.137651
	.quad	0x3ffa09acbc8c0ce9              # double 1.627362
	.quad	0x4023b4bf0995aaf8              # double 9.8530200000000007
	.quad	0x3fe6220ddc619546              # double 0.69165699999999997
	.quad	0x4012bcaa7589efd8              # double 4.6842439999999996
	.quad	0x4006caae297396d1              # double 2.8489650000000002
	.quad	0x4011c4ccee5abc0e              # double 4.4421879999999998
	.quad	0x4017ff0281ba7fc3              # double 5.9990329999999998
	.quad	0x401aab56fb8f57f7              # double 6.6673239999999998
	.quad	0x401cd8ecd8dbcec8              # double 7.2118409999999997
	.quad	0x4003a4f765fd8adb              # double 2.4555500000000001
	.quad	0x401327253da72a7c              # double 4.7882280000000002
	.quad	0x402335753a3ec02f              # double 9.6044099999999996
	.quad	0x3ff4d604189374bc              # double 1.3022499999999999
	.quad	0x4021bcf893faf428              # double 8.8690840000000009
	.quad	0x401dce7d566cf41f              # double 7.4516499999999999
	.quad	0x400a8e9c4545846f              # double 3.3196340000000002
	.quad	0x4022bbb1290257c9              # double 9.3665859999999998
	.quad	0x401aabe37de939eb              # double 6.6678600000000001
	.quad	0x40231a3db3bfb58d              # double 9.5512519999999998
	.quad	0x401a8085b18548aa              # double 6.6255100000000002
	.quad	0x3fff2396073de1e3              # double 1.946188
	.quad	0x3fe24d0fe8ab4fa5              # double 0.57190700000000005
	.quad	0x402022098915bdd7              # double 8.0664789999999993
	.quad	0x40009ca5bd944aa5              # double 2.0764879999999999
	.quad	0x3ff0dabb01c92ddc              # double 1.053401
	.quad	0x4022c13532e7b3d9              # double 9.3773590000000002
	.quad	0x401a5afc8b0079a3              # double 6.5888540000000004
	.quad	0x3ff28b31c219eb64              # double 1.1589830000000001
	.quad	0x4022a5aa715831f0              # double 9.3235659999999996
	.quad	0x4003d0e6f2e8c048              # double 2.4770029999999998
	.quad	0x3fcdbd1676640a6c              # double 0.23233300000000001
	.quad	0x400b60713f077ccc              # double 3.422091
	.quad	0x3fd494141e9af5ba              # double 0.32153799999999999
	.quad	0x4010e5c13fd0d068              # double 4.2243700000000004
	.quad	0x40033b05faebc409              # double 2.4038200000000001
	.quad	0x401baace67d77fae              # double 6.9168029999999998
	.quad	0x401041b97353b4b3              # double 4.064184
	.quad	0x400e297d8cf398e9              # double 3.7702589999999998
	.quad	0x4005455a7d24180d              # double 2.6588639999999999
	.quad	0x40023d9a95421c04              # double 2.2800799999999999
	.quad	0x4010eaf3e468cac5              # double 4.2294460000000003
	.quad	0x401f0a3f034b0e1b              # double 7.7600059999999997
	.quad	0x4002414488c60cbf              # double 2.2818689999999999
	.quad	0x4011855e6bc621b8              # double 4.3802430000000001
	.quad	0x4012db76709fa54c              # double 4.7143189999999997
	.quad	0x3fecf50c1b97353b              # double 0.90491299999999997
	.quad	0x40227d12018a43bb              # double 9.2442779999999996
	.quad	0x3fa51d68c692f6e8              # double 0.041239999999999999
	.quad	0x4023f738a3b57c4e              # double 9.9828539999999997
	.quad	0x3ff6c4ab606b7aa2              # double 1.4230149999999999
	.quad	0x400ea0aaeafab53d              # double 3.8284509999999998
	.quad	0x401899813879c411              # double 6.1499069999999998
	.quad	0x4022375f91600f34              # double 9.1081509999999994
	.quad	0x3fe9d54da4ce8102              # double 0.80728800000000001
	.quad	0x3fc461a60d4562e1              # double 0.15923000000000001
	.quad	0x401391d4f9c1f85d              # double 4.8924139999999996
	.quad	0x3fe05c5718eb8950              # double 0.51127199999999995
	.quad	0x401e847c30d306a3              # double 7.6293800000000002
	.quad	0x4002820685553ef7              # double 2.3134890000000001
	.quad	0x4010a3571d1d4739              # double 4.1595120000000003
	.quad	0x4020b29c12f09d8c              # double 8.3488469999999992
	.quad	0x4013273a365cb35f              # double 4.7883079999999998
	.quad	0x401570f16f4384ba              # double 5.3602959999999999
	.quad	0x3fe282278d0cc35d              # double 0.57838800000000001
	.quad	0x4010a1fab96f21f7              # double 4.1581830000000002
	.quad	0x401723a96d4c33b5              # double 5.7848259999999998
	.quad	0x40167109d0635a42              # double 5.6103889999999996
	.quad	0x3fff842e9899bf59              # double 1.9697709999999999
	.quad	0x400db4eebf65dbfd              # double 3.713346
	.quad	0x4015053d20f2becf              # double 5.2551160000000001
	.quad	0x400d93ef6b5d462c              # double 3.6972339999999999
	.quad	0x400b38dde7a743a6              # double 3.4027669999999999
	.quad	0x401147aeddce7cd0              # double 4.3200029999999998
	.quad	0x4016d9edbf8b9baa              # double 5.7128209999999999
	.quad	0x3ffa2494d50ebaae              # double 1.633931
	.quad	0x4010c1ee2435696e              # double 4.1893849999999997
	.quad	0x4022604c6a3bddfd              # double 9.1880830000000007
	.quad	0x401736d373affb05              # double 5.8035410000000001
	.quad	0x401bae6299524bfd              # double 6.9202979999999998
	.quad	0x40208f6db940fece              # double 8.2801340000000003
	.quad	0x400a63bf727136a4              # double 3.298705
	.quad	0x4008ed27807789a4              # double 3.1157979999999998
	.quad	0x4018f8b652370479              # double 6.242883
	.quad	0x400f4279dd3bafd9              # double 3.9074589999999998
	.quad	0x401b3e6149c6f36f              # double 6.810918
	.quad	0x402045fb9389b520              # double 8.1366849999999999
	.quad	0x4004051654d61b2a              # double 2.5024839999999999
	.quad	0x40130e82d7b634db              # double 4.7641710000000002
	.quad	0x4021675afaf85943              # double 8.7018660000000008
	.quad	0x40199aaf35e310dc              # double 6.4010590000000001
	.quad	0x402130d6d3b6cbda              # double 8.5953890000000008
	.quad	0x401e12e2328f9f45              # double 7.5184410000000001
	.quad	0x40222c87980f55de              # double 9.0869719999999994
	.quad	0x4020791600f34507              # double 8.2364960000000007
	.quad	0x401353e5b8561d43              # double 4.831931
	.quad	0x3fef18b71b8aa002              # double 0.97176700000000005
	.quad	0x4019d6e503fb3743              # double 6.4598579999999997
	.quad	0x40199acbc8c0ce92              # double 6.4011680000000002
	.quad	0x401f2eeaa6d26741              # double 7.7958170000000004
	.quad	0x40084ae21101b003              # double 3.0365639999999998
	.quad	0x401864e3369b9d80              # double 6.0985230000000001
	.quad	0x3ffea97bfa4c61d8              # double 1.9163779999999999
	.quad	0x40199fa48301a7a0              # double 6.4059010000000001
	.quad	0x4009184d338f7985              # double 3.1368659999999999
	.quad	0x400be5082cf52b91              # double 3.4868320000000002
	.quad	0x400a2ba9d1f60179              # double 3.2713199999999998
	.quad	0x401067acc4ef88b9              # double 4.1012449999999996
	.quad	0x3ff61784ec636b09              # double 1.3807419999999999
	.quad	0x3ffa539fba450acc              # double 1.645416
	.quad	0x400749db65ecc3e3              # double 2.911063
	.quad	0x401f8ed288ce703b              # double 7.889475
	.quad	0x40124ad4f5903a75              # double 4.5730779999999998
	.quad	0x4009837154003255              # double 3.189181
	.quad	0x400a788db0574b40              # double 3.3088639999999998
	.quad	0x40085d05af6c69b6              # double 3.0454210000000002
	.quad	0x400d5dc8323358f3              # double 3.6707920000000001
	.quad	0x3ffdb51efb6dca08              # double 1.856719
	.quad	0x4020aacc0bdcad15              # double 8.3335880000000007
	.quad	0x401cce1049235f81              # double 7.2012340000000004
	.quad	0x401f86d3b6cbd988              # double 7.8816670000000002
	.quad	0x400457ac3eb7cbb4              # double 2.5428090000000001
	.quad	0x40138c9a77e5eaab              # double 4.887308
	.quad	0x4022ca90eed02cd4              # double 9.3956370000000006
	.quad	0x4023374e0114d2f6              # double 9.6080170000000003
	.quad	0x3fd91ab4b72c5198              # double 0.39225500000000002
	.quad	0x3ff4b88ebcc6c54c              # double 1.295058
	.quad	0x4005a24cc6822ff1              # double 2.7042480000000002
	.quad	0x401d844178705426              # double 7.379156
	.quad	0x40181d1a65061416              # double 6.0284209999999998
	.quad	0x401c3dd3fe1975f3              # double 7.0603790000000002
	.quad	0x400e7cd466f5019f              # double 3.8109519999999999
	.quad	0x3ff8b62b6ae7d567              # double 1.544475
	.quad	0x3fea4ac29bf162ae              # double 0.82162599999999997
	.quad	0x4004c62456f75d9a              # double 2.596749
	.quad	0x401839f90539fba4              # double 6.0566139999999997
	.quad	0x4022e34a87e38eb0              # double 9.4439279999999997
	.quad	0x4013fdea897635e7              # double 4.9979649999999998
	.quad	0x40208da0dfdef848              # double 8.2766179999999991
	.quad	0x4010f7ff583a53b9              # double 4.2421850000000001
	.quad	0x4023c2e297396d09              # double 9.8806349999999998
	.quad	0x3fe8711d798d8a98              # double 0.76380800000000004
	.quad	0x400c30be9424e593              # double 3.5238010000000002
	.quad	0x401427136a400fbb              # double 5.0381600000000004
	.quad	0x3ff4f9b34a44c7b0              # double 1.310962
	.quad	0x40025a4f00ef1349              # double 2.2940960000000001
	.quad	0x40110ba1b1960fa1              # double 4.2613589999999997
	.quad	0x400a08ac5c13fd0d              # double 3.254235
	.quad	0x401a5d3415b1422d              # double 6.5910190000000002
	.quad	0x4012231db445ed4a              # double 4.5342929999999999
	.quad	0x4017b0fa58f7121b              # double 5.9228300000000003
	.quad	0x40222b27cbf6e3f8              # double 9.0842880000000008
	.quad	0x4023eb1df761cbcd              # double 9.959213
	.quad	0x40161a033e78e193              # double 5.5254029999999998
	.quad	0x40214972474538ef              # double 8.6434499999999996
	.quad	0x3fd449949e8815e4              # double 0.31699100000000002
	.quad	0x4023f4c165907d91              # double 9.9780379999999997
	.quad	0x401e58a3b57c4e2f              # double 7.5865619999999998
	.quad	0x401ce9e8815e3971              # double 7.2284259999999998
	.quad	0x400a5e2046c764ae              # double 3.29596
	.quad	0x3fe3b1ad2135daad              # double 0.61543899999999996
	.quad	0x3fc878316a055758              # double 0.191168
	.quad	0x3fd008b75ea67e84              # double 0.25053199999999998
	.quad	0x4018847ecfe9b7bf              # double 6.1293899999999999
	.quad	0x401973c579f23465              # double 6.3630579999999997
	.quad	0x401f156084a515cf              # double 7.7708760000000003
	.quad	0x3ffb04e618ce2d1f              # double 1.688696
	.quad	0x4009ffcc9ea9a3d3              # double 3.2499020000000001
	.quad	0x401e9e0c5a8155d6              # double 7.654344
	.quad	0x4002a3be6601bc99              # double 2.3299530000000002
	.quad	0x402163356da0168b              # double 8.6937669999999994
	.quad	0x401b931a08bfc222              # double 6.8936539999999997
	.quad	0x3ff1e87a072d1aeb              # double 1.1192569999999999
	.quad	0x3ffc18b502ababeb              # double 1.756032
	.quad	0x3fecd653c9abb01d              # double 0.90116300000000005
	.quad	0x400c87bbb62413db              # double 3.5662759999999998
	.quad	0x4012ba57eaa2a0a9              # double 4.6819759999999997
	.quad	0x4022e5dbb9cf9a07              # double 9.4489420000000006
	.quad	0x3ffdb9eadd590c0b              # double 1.85789
	.quad	0x3fd40a350d2806af              # double 0.31312299999999998
	.quad	0x400aa580c308feac              # double 3.3308119999999999
	.quad	0x401144b7f5a5332b              # double 4.3171080000000002
	.quad	0x4023f4e6c093d966              # double 9.9783229999999996
	.quad	0x3ff78ce3de6149c7              # double 1.471897
	.quad	0x401876ff3ade2260              # double 6.1162080000000003
	.quad	0x40176785729b280f              # double 5.8510949999999999
	.quad	0x40113b0f27bb2fec              # double 4.3076749999999997
	.quad	0x3fe02fd75e2046c7              # double 0.50583999999999996
	.quad	0x4016727913e81451              # double 5.6117900000000001
	.quad	0x40145ddb5525cc42              # double 5.0916569999999997
	.quad	0x401549ff4fd6d7e9              # double 5.3222630000000004
	.quad	0x3fedfe5eaab04253              # double 0.93730100000000005
	.quad	0x40213df15a4acf31              # double 8.6209819999999997
	.quad	0x40234cfd8f0c77de              # double 9.6503720000000008
	.quad	0x4016aac42e9899bf              # double 5.6667639999999997
	.quad	0x40177dca8e2e2b8c              # double 5.8728429999999996
	.quad	0x401ac5e56cd6c2f0              # double 6.6932580000000002
	.quad	0x401123e78e1932d7              # double 4.2850630000000001
	.quad	0x400a147f993d5348              # double 3.2600090000000002
	.quad	0x3fefa79fec99f1ae              # double 0.98921199999999998
	.quad	0x401903d35eb7457c              # double 6.253736
	.quad	0x402344b7f5a5332b              # double 9.6342160000000003
	.quad	0x402123e4cd749279              # double 8.5701049999999999
	.quad	0x3fcbc5d63886594b              # double 0.216975
	.quad	0x40192008a697aede              # double 6.2812830000000002
	.quad	0x40148cfe58601366              # double 5.137689
	.quad	0x400540b9991361dd              # double 2.6566040000000002
	.quad	0x401612af5771001d              # double 5.5182469999999997
	.quad	0x4023e2096787ce96              # double 9.941478
	.quad	0x4015ac5692b3cc4b              # double 5.4182990000000002
	.quad	0x40228a2c2374794f              # double 9.2698680000000007
	.quad	0x4015a44e0daa0cae              # double 5.4104539999999997
	.quad	0x3ff772580c308feb              # double 1.4654160000000001
	.quad	0x401f001f31f46ed2              # double 7.7501189999999998
	.quad	0x40025fd1dcd7060c              # double 2.2967870000000001
	.quad	0x401dbb24638c9753              # double 7.4327560000000004
	.quad	0x40183a0ec7432010              # double 6.0566969999999998
	.quad	0x4012d0c34c1a8ac6              # double 4.7038700000000002
	.quad	0x40109759ee88df37              # double 4.1478039999999998
	.quad	0x4013d6e5471715c6              # double 4.9598589999999998
	.quad	0x401648ceb356da01              # double 5.5711009999999996
	.quad	0x40119df97aaac109              # double 4.4042719999999997
	.quad	0x4023ad7eaa2a0a96              # double 9.8388570000000009
	.quad	0x3fbb7e2c55c96031              # double 0.107394
	.quad	0x40135eafee6fb4c4              # double 4.8424680000000002
	.quad	0x400fceb78897e996              # double 3.9759359999999999
	.quad	0x400dc75bc44bf4cb              # double 3.722343
	.quad	0x40232d74b407032a              # double 9.5887810000000009
	.quad	0x4010ff3a57eaa2a1              # double 4.2492460000000003
	.quad	0x401a609310129cbb              # double 6.5943110000000003
	.quad	0x3fe7da20ddc61954              # double 0.74537699999999996
	.quad	0x40207c4f7ec3547e              # double 8.242794
	.quad	0x3fef052934acaff7              # double 0.96938000000000001
	.quad	0x401a5b7f5a5332ad              # double 6.589353
	.quad	0x3fe9f57b41bfbdf1              # double 0.81121600000000005
	.quad	0x3fda367e414e7ee9              # double 0.409576
	.quad	0x400b2a7829068987              # double 3.395737
	.quad	0x401b5f4a98aa8651              # double 6.8430580000000001
	.quad	0x3ff13574f722e1ac              # double 1.0755509999999999
	.quad	0x401c888ace24bba1              # double 7.1333419999999998
	.quad	0x4017e6e264e48627              # double 5.975473
	.quad	0x400500852b4d8ba4              # double 2.625254
	.quad	0x3ff4f5771001d5c3              # double 1.309928
	.quad	0x40193686e7e62dc7              # double 6.3032490000000001
	.quad	0x401aa9f127f5e84f              # double 6.665959
	.quad	0x40068d8e432441ff              # double 2.8191190000000002
	.quad	0x401812fb5d031056              # double 6.0185370000000002
	.quad	0x4019db7c7820a30e              # double 6.4643420000000003
	.quad	0x401477fa5d28d003              # double 5.1171660000000001
	.quad	0x401596fac6045baf              # double 5.3974409999999997
	.quad	0x402235ab191dde37              # double 9.1048209999999994
	.quad	0x401ebb1704ff4342              # double 7.6827050000000003
	.quad	0x3ff7d3dea465a576              # double 1.4892259999999999
	.quad	0x4017c7b07075b3e1              # double 5.9450089999999998
	.quad	0x400d35f1bef49cf5              # double 3.6513399999999998
	.quad	0x401951465e892253              # double 6.3293699999999999
	.quad	0x401ca0620ab71327              # double 7.1566239999999999
	.quad	0x400b87b1c0010c6f              # double 3.4412569999999998
	.quad	0x3fd41c10d7be9857              # double 0.31421300000000002
	.quad	0x3febf09fa54c5543              # double 0.87312299999999998
	.quad	0x4022ab3a8a3f8983              # double 9.3344310000000004
	.quad	0x4013e15a8deb0fae              # double 4.970072
	.quad	0x4023ff1da37ef5a9              # double 9.9982729999999992
	.quad	0x4009b8dde7a743a6              # double 3.2152669999999999
	.quad	0x401f14e054690de1              # double 7.7703870000000003
	.quad	0x40169ec9e236c15d              # double 5.6550669999999998
	.quad	0x4019a7c3d68405b4              # double 6.4138330000000003
	.quad	0x401bf3b5bf6a0dbb              # double 6.9879980000000002
	.quad	0x401ffe47991bc558              # double 7.9983199999999996
	.quad	0x4012413dfb0d51f8              # double 4.5637129999999999
	.quad	0x4023a4e67d77fae3              # double 9.8220709999999993
	.quad	0x400ba026cc1ca3a5              # double 3.4531990000000001
	.quad	0x4008348c2e770bd0              # double 3.025658
	.quad	0x4022eef0ae536502              # double 9.4666800000000002
	.quad	0x3ff69a6612839043              # double 1.412695
	.quad	0x4021bc18f81e8a2f              # double 8.8673780000000004
	.quad	0x401ec1333b96af04              # double 7.6886720000000004
	.quad	0x4008c6dce39b456b              # double 3.0971009999999999
	.quad	0x40204a116659d12d              # double 8.1446640000000006
	.quad	0x4022e081e4712e41              # double 9.4384910000000008
	.quad	0x3ffacb9baa1511e0              # double 1.674709
	.quad	0x3ffe849667b5f1bf              # double 1.90737
	.quad	0x402387911cf355ce              # double 9.7647790000000008
	.quad	0x3fbacf2064239607              # double 0.104723
	.quad	0x401d420ccff21b3b              # double 7.3145020000000001
	.quad	0x400afaab47410731              # double 3.3723969999999999
	.quad	0x4023ff49491f2dc3              # double 9.9986060000000005
	.quad	0x4022d0079a2834d2              # double 9.4063079999999992
	.quad	0x401dc2d44dca8e2e              # double 7.4402629999999998
	.quad	0x400971351159c497              # double 3.1802769999999998
	.quad	0x3fc267f90d9d7775              # double 0.14379800000000001
	.quad	0x4011fea0fd3b29a2              # double 4.4986610000000002
	.quad	0x40143ff64cf8d717              # double 5.0624630000000002
	.quad	0x400dea3400b88ca4              # double 3.739357
	.quad	0x400734c7f3493858              # double 2.9007719999999999
	.quad	0x3fff8142f61ed5ae              # double 1.969058
	.quad	0x401f63d74d594f27              # double 7.8475010000000002
	.quad	0x40210a8ae74f2f12              # double 8.5205909999999996
	.quad	0x4014b4a38327674d              # double 5.1764049999999999
	.quad	0x401de02c9081c2e3              # double 7.4689199999999998
	.quad	0x4022c3f37b8d3f18              # double 9.3827169999999995
	.quad	0x400f69a6f826edab              # double 3.9265880000000002
	.quad	0x4022664b44a1f080              # double 9.1997929999999997
	.quad	0x3ff922fad6cb5350              # double 1.57104
	.quad	0x40169d5ed06fef7c              # double 5.6536819999999999
	.quad	0x3ffd29ad42c3c9ef              # double 1.822675
	.quad	0x4022d593c46d82ba              # double 9.4171429999999994
	.quad	0x401abea033e78e19              # double 6.6861579999999998
	.quad	0x40207e9878316a05              # double 8.2472569999999994
	.quad	0x3ff9da5a89b951c6              # double 1.6158090000000001
	.quad	0x40178364bec679cc              # double 5.8783139999999996
	.quad	0x3ff4fb5e0f7fcfc4              # double 1.311369
	.quad	0x3ffdf5a20ddc6195              # double 1.8724689999999999
	.quad	0x40155f1bef49cf57              # double 5.3428800000000001
	.quad	0x3fddf35e310dbf05              # double 0.46797899999999998
	.quad	0x3ff907991bc55864              # double 1.5643549999999999
	.quad	0x4016bde481f53826              # double 5.6854420000000001
	.quad	0x400cc46bf01322f2              # double 3.5959089999999998
	.quad	0x400c6434e3369b9d              # double 3.5489289999999998
	.quad	0x3fc4358298cc1440              # double 0.157883
	.quad	0x401a155de58e64b2              # double 6.5208659999999998
	.quad	0x400cfabf33871609              # double 3.6224349999999998
	.quad	0x4000eb3cc4ac6cdb              # double 2.114862
	.quad	0x401c877186551937              # double 7.132269
	.quad	0x401d25d9a0f0a5f0              # double 7.2869630000000001
	.quad	0x40126b7aa25d8d7a              # double 4.6049600000000002
	.quad	0x400a72f3c2dadb83              # double 3.3061289999999999
	.quad	0x3fbe0b1bbcf4e875              # double 0.117357
	.quad	0x3fe13f26f1dc50ce              # double 0.53895899999999997
	.quad	0x3ffd13825e13b18e              # double 1.8172630000000001
	.quad	0x400ef0e1b4bb5e0f              # double 3.8676179999999998
	.quad	0x40228929cbab649d              # double 9.2678969999999996
	.quad	0x4023de5f0f5a1017              # double 9.9343190000000003
	.quad	0x4004584db9c7368b              # double 2.5431170000000001
	.quad	0x4017fd4738a3b57c              # double 5.9973419999999997
	.quad	0x401ab02de00d1b71              # double 6.6720499999999996
	.quad	0x3ff71ca3a4b5568f              # double 1.4444920000000001
	.quad	0x4014ea65cf67b1c0              # double 5.228904
	.quad	0x4014d54f7a919696              # double 5.2083110000000001
	.quad	0x402060f10a99b6f6              # double 8.1893390000000004
	.quad	0x40222f865d7cb2d9              # double 9.092822
	.quad	0x4004f89ce4a7b4e5              # double 2.6213929999999999
	.quad	0x401bd54ef459d990              # double 6.9583089999999999
	.quad	0x4021c21b5c7cd899              # double 8.8791150000000005
	.quad	0x40069224aada33be              # double 2.8213590000000002
	.quad	0x4010c5158b827fa2              # double 4.1924650000000003
	.quad	0x4021bf97aaac1095              # double 8.8742040000000006
	.quad	0x3ffa1b584b1ab085              # double 1.6316759999999999
	.quad	0x3fe95a33bd9cae21              # double 0.79226099999999999
	.quad	0x3ff5c76e1deacc92              # double 1.361189
	.quad	0x3ff1365a9a804966              # double 1.0757699999999999
	.quad	0x4018b443d46b26c0              # double 6.1760400000000004
	.quad	0x3fb4fe154434e337              # double 0.082002000000000005
	.quad	0x4016cf038e29f9cf              # double 5.7021620000000004
	.quad	0x4021ead666a98245              # double 8.9586670000000002
	.quad	0x40138899392189be              # double 4.8833970000000004
	.quad	0x40133985ad538ac2              # double 4.8061740000000004
	.quad	0x401915d52c16df40              # double 6.2713210000000004
	.quad	0x3ff4a64f54d1e96c              # double 1.2906029999999999
	.quad	0x401ce474d9c6b053              # double 7.2231019999999999
	.quad	0x40100c7d1bb4916d              # double 4.0121960000000003
	.quad	0x4021278982cb20fb              # double 8.5772209999999998
	.quad	0x401ff0c564f97edc              # double 7.9851279999999996
	.quad	0x3ff33d3e4ef0281c              # double 1.2024520000000001
	.quad	0x4012cc0ce91c8eac              # double 4.699268
	.quad	0x401e0807bbb62414              # double 7.5078420000000001
	.quad	0x401828dfbd6a593a              # double 6.0399159999999998
	.quad	0x4011117b0f6ad70e              # double 4.2670709999999996
	.quad	0x40176ff47735c183              # double 5.8593310000000001
	.quad	0x401bc9ef0f16f438              # double 6.9472009999999997
	.quad	0x3ffcd422ccb3a259              # double 1.8017909999999999
	.quad	0x4020433fe9fadafd              # double 8.1313469999999999
	.quad	0x3fd5e8d10f51ac9b              # double 0.342335
	.quad	0x3ffd2d3c792d1288              # double 1.8235440000000001
	.quad	0x400be832b990afe6              # double 3.488378
	.quad	0x4008a5c810a569b1              # double 3.0809479999999998
	.quad	0x401ce539fba450ad              # double 7.2238540000000002
	.quad	0x4012454fbdad7519              # double 4.5676870000000003
	.quad	0x3fff00b5675579af              # double 1.937673
	.quad	0x401b7314ca925fe9              # double 6.8623839999999996
	.quad	0x401fa09203a322af              # double 7.9068069999999996
	.quad	0x400d023a6ce3582a              # double 3.6260880000000002
	.quad	0x401b5c17225b749b              # double 6.8399320000000001
	.quad	0x400d4d7f950b955f              # double 3.6628409999999998
	.quad	0x40237d2b4d8ba40e              # double 9.7444710000000008
	.quad	0x40201ded6ba8c587              # double 8.0584520000000008
	.quad	0x400074a7f8012dfd              # double 2.0569609999999998
	.quad	0x4022cbd9a95421c0              # double 9.3981449999999995
	.quad	0x3fd2af31b152f3c3              # double 0.29194300000000001
	.quad	0x3ff3815d2d01c0ca              # double 1.2190829999999999
	.quad	0x400828aac96cc5fc              # double 3.019857
	.quad	0x3ff8e554b8bef8cf              # double 1.5559890000000001
	.quad	0x40087e1c9b413986              # double 3.0615779999999999
	.quad	0x40227056e696a26e              # double 9.2194129999999994
	.quad	0x400e7cc39ffd60e9              # double 3.8109199999999999
	.quad	0x4013a685985ad539              # double 4.9126190000000003
	.quad	0x3fd6f062d40aaeb0              # double 0.35842200000000002
	.quad	0x3feca80f12c27a63              # double 0.89551499999999995
	.quad	0x40153df19d66adb4              # double 5.310492
	.quad	0x4022479591cd1c7e              # double 9.1398130000000002
	.quad	0x3fe5b0b178b37004              # double 0.67781899999999995
	.quad	0x401199f72f76e610              # double 4.4003569999999996
	.quad	0x4017d40cc78e9f6b              # double 5.9570800000000004
	.quad	0x4017b94ee392e1ef              # double 5.9309649999999996
	.quad	0x401304406c00da1b              # double 4.7541520000000004
	.quad	0x40130456f75d9a0f              # double 4.754238
	.quad	0x401a543e963dc487              # double 6.5822700000000003
	.quad	0x40038ff3ade225fa              # double 2.4452889999999998
	.quad	0x40076a70d1fa3337              # double 2.9269729999999998
	.quad	0x3fff606530058149              # double 1.9610339999999999
	.quad	0x401e2020c49ba5e3              # double 7.5313749999999997
	.quad	0x401d5dfb0d51f81a              # double 7.3417779999999997
	.quad	0x4009aae536501e26              # double 3.2084450000000002
	.quad	0x401d0db65ecc3e32              # double 7.2633910000000004
	.quad	0x400b8a35935fc3b5              # double 3.442485
	.quad	0x40213670e2c12ad8              # double 8.6063299999999998
	.quad	0x4021f1d606317269              # double 8.9723360000000003
	.quad	0x4011497e996312f5              # double 4.3217720000000002
	.quad	0x401c199ed7c6fbd2              # double 7.0250199999999996
	.quad	0x4020b87cc7d1bb49              # double 8.3603269999999998
	.quad	0x4012538d60a63305              # double 4.5815939999999999
	.quad	0x4021caf661f18ca0              # double 8.8964110000000005
	.quad	0x4021c1055b899392              # double 8.8769939999999998
	.quad	0x401a0e219652bd3c              # double 6.5137999999999998
	.quad	0x401abe2a3cea6c1a              # double 6.685708
	.quad	0x40094d59d55e6bc6              # double 3.1627689999999999
	.quad	0x4010a77079e59f2c              # double 4.1635150000000003
	.quad	0x4006c61c79b34a45              # double 2.8467340000000001
	.quad	0x3fe0617a02fb5d03              # double 0.51189899999999999
	.quad	0x3ffe36f6d7625205              # double 1.8884190000000001
	.quad	0x3fd0234eb9a176de              # double 0.25215500000000002
	.quad	0x40238f394b7b2895              # double 9.7797339999999994
	.quad	0x4019e3f52fc2656b              # double 6.4726150000000002
	.quad	0x4021d5e9185cee18              # double 8.9177940000000007
	.quad	0x3ffbfb384fd2a62b              # double 1.7488330000000001
	.quad	0x4008c192a737110e              # double 3.0945179999999999
	.quad	0x402309769a91105e              # double 9.5184829999999998
	.quad	0x400841709310129d              # double 3.0319530000000001
	.quad	0x3ff55f505d0fa58f              # double 1.3357699999999999
	.quad	0x401796fb09203a32              # double 5.8974419999999999
	.quad	0x402367fb8b263950              # double 9.7030910000000006
	.quad	0x401fe9b77c02afde              # double 7.9782390000000003
	.quad	0x402135143bf72713              # double 8.6036699999999993
	.quad	0x3fffcd4cb9ecf638              # double 1.987622
	.quad	0x40188c1df3300de5              # double 6.1368330000000002
	.quad	0x40237c38088509c0              # double 9.7426150000000006
	.quad	0x401e125204af9229              # double 7.5178909999999996
	.quad	0x401f21b2e59af9ec              # double 7.7829090000000001
	.quad	0x401003e0370cdc87              # double 4.0037849999999997
	.quad	0x4023f918a009f623              # double 9.9865159999999999
	.quad	0x3f61bc558644523f              # double 0.0021649999999999998
	.quad	0x4022e526b723ee1c              # double 9.4475610000000003
	.quad	0x4013ba41a261bf38              # double 4.9318910000000002
	.quad	0x4009e1ea35935fc4              # double 3.2353100000000001
	.quad	0x401a2726d04e618d              # double 6.5382340000000001
	.quad	0x401c0503fb374363              # double 7.0048979999999998
	.quad	0x401a1f4b1ee24357              # double 6.5305600000000004
	.quad	0x401d355d1c3ac92a              # double 7.3021130000000003
	.quad	0x402369d323fee2ca              # double 9.7066890000000008
	.quad	0x401fc152b0a6fc59              # double 7.9387920000000002
	.quad	0x4013a6a6e32e3822              # double 4.9127460000000003
	.quad	0x401c7901083dbc23              # double 7.1181679999999998
	.quad	0x400055d80e496edf              # double 2.0419160000000001
	.quad	0x401e4f4491298890              # double 7.5774100000000004
	.quad	0x4023c6e2eb1c432d              # double 9.8884500000000006
	.quad	0x401a1fbc1acde1a0              # double 6.5309910000000002
	.quad	0x401b400474d9c6b0              # double 6.8125169999999997
	.quad	0x3fd16f5caf2d7f95              # double 0.272422
	.quad	0x3fe9302d59d55e6c              # double 0.78713100000000002
	.quad	0x401b2f87ad080b67              # double 6.7964159999999998
	.quad	0x401037dbb16c1e36              # double 4.0545489999999997
	.quad	0x4009decb31c219eb              # double 3.2337859999999998
	.quad	0x40217a72ead9274e              # double 8.7391579999999998
	.quad	0x401462495e17e34c              # double 5.0959830000000004
	.quad	0x40224f0e0a84be40              # double 9.1544039999999995
	.quad	0x401674ccee5abc0e              # double 5.6140629999999998
	.quad	0x40122c6a3bddfca0              # double 4.543374
	.quad	0x4017eeb8950763a2              # double 5.9831260000000004
	.quad	0x40236e9ff0cbaf96              # double 9.7160639999999994
	.quad	0x40125dfb506dd69d              # double 4.5917789999999998
	.quad	0x4010ae536501e258              # double 4.1702399999999997
	.quad	0x40172283d35eb745              # double 5.7837059999999996
	.quad	0x401c26965f5275ef              # double 7.0376830000000004
	.quad	0x400520817fc7607c              # double 2.6408719999999999
	.quad	0x400bd354c122749f              # double 3.478189
	.quad	0x40225ba6698bb4d5              # double 9.1790040000000008
	.quad	0x4007a8cb4aec8d5c              # double 2.9574189999999998
	.quad	0x3ffb76db940fecdd              # double 1.716518
	.quad	0x4014fee1bd1ed9e0              # double 5.2489080000000001
	.quad	0x40029952d234eb9a              # double 2.324865
	.quad	0x40148061847f5621              # double 5.1253719999999996
	.quad	0x3fbee08f21709310              # double 0.120614
	.quad	0x4017419bd4067cf2              # double 5.8140710000000002
	.quad	0x4010dd1cc100e6b0              # double 4.2159300000000002
	.quad	0x4020ed79d0a67621              # double 8.4638200000000001
	.quad	0x4011291c087442c8              # double 4.290146
	.quad	0x402345d72367e415              # double 9.6364070000000001
	.quad	0x3ff76d16b97fe8ee              # double 1.4641329999999999
	.quad	0x401bd62845996745              # double 6.9591380000000003
	.quad	0x3fe3b5a20ddc6195              # double 0.61592199999999997
	.quad	0x3fe2f9b56323bbc7              # double 0.59298200000000001
	.quad	0x40166a72ead9274e              # double 5.6039539999999999
	.quad	0x3fe8890f733a8a40              # double 0.76673100000000005
	.quad	0x4020ed7689ca18bd              # double 8.4637949999999993
	.quad	0x40081fa871a3b14b              # double 3.0154580000000002
	.quad	0x400e7137b07075b4              # double 3.8052820000000001
	.quad	0x4020090b417ca212              # double 8.0176639999999999
	.quad	0x400127fb267c6b8b              # double 2.1445219999999998
	.quad	0x402024ce8101f31f              # double 8.0718879999999995
	.quad	0x401c20c8cd63cb81              # double 7.0320159999999996
	.quad	0x40214193b3a68b1a              # double 8.6280800000000006
	.quad	0x3fffb804534bd76f              # double 1.982426
	.quad	0x4021561975f2cb64              # double 8.6681629999999998
	.quad	0x3ff732b777d0f1f5              # double 1.4498819999999999
	.quad	0x3fd2692f6e82949a              # double 0.28766999999999998
	.quad	0x400a538bcdfefbf4              # double 3.290794
	.quad	0x401b241f212d7732              # double 6.7852750000000004
	.quad	0x401fe8e432441feb              # double 7.9774330000000004
	.quad	0x3fa80f98fa376923              # double 0.046994000000000001
	.quad	0x3ff387a6bd6e8af8              # double 1.220618
	.quad	0x40148710cb295e9e              # double 5.1318999999999999
	.quad	0x3ff1aa1d755bccaf              # double 1.1040319999999999
	.quad	0x401e741d084e831b              # double 7.6133920000000001
	.quad	0x400132cd7cf5f4e4              # double 2.1498059999999999
	.quad	0x3feb259e1f3a57eb              # double 0.84834200000000004
	.quad	0x401ddddca4b124d1              # double 7.4666620000000004
	.quad	0x400b1004fb1183b6              # double 3.382822
	.quad	0x4023add65a14488c              # double 9.8395259999999993
	.quad	0x4011230b178b3700              # double 4.2842219999999998
	.quad	0x400606e19b90ea9e              # double 2.7533599999999998
	.quad	0x401a71b7e0ac7da2              # double 6.6110530000000001
	.quad	0x400d7e7d9988d2a2              # double 3.686763
	.quad	0x400a6e9f6a93f291              # double 3.3040150000000001
	.quad	0x401160168b5cbff4              # double 4.3438359999999996
	.quad	0x40047add9c27e953              # double 2.559993
	.quad	0x3ffa2df82b1f687b              # double 1.636223
	.quad	0x3fea16440f238972              # double 0.815218
	.quad	0x4016475bc44bf4cb              # double 5.5696859999999999
	.quad	0x3fe7161e4f765fd9              # double 0.72145000000000004
	.quad	0x3fd220c069e7fb26              # double 0.28324899999999997
	.quad	0x400e35ed06fef7c2              # double 3.7763309999999999
	.quad	0x3fe3c297bfa4c61e              # double 0.61750400000000005
	.quad	0x401d0f0ae536501e              # double 7.2646899999999999
	.quad	0x3ffb06a098915bdd              # double 1.6891179999999999
	.quad	0x4017a00eae18ac9f              # double 5.9063059999999998
	.quad	0x400b2e2da554b8bf              # double 3.397548
	.quad	0x4011b1f8e3ac0c63              # double 4.4238010000000001
	.quad	0x3fdcd7342edbb59e              # double 0.45063500000000001
	.quad	0x4011a72f76e6106b              # double 4.4132670000000003
	.quad	0x401fda62aa19439e              # double 7.9632670000000001
	.quad	0x400ff2bcb5fe542e              # double 3.9935239999999999
	.quad	0x401f546b69db65ed              # double 7.8324410000000002
	.quad	0x4019265a14488c61              # double 6.2874530000000002
	.quad	0x4013da69be09bb6b              # double 4.9632940000000003
	.quad	0x40210c6d82ba5a04              # double 8.5242730000000008
	.quad	0x4023f93faf42784b              # double 9.9868140000000007
	.quad	0x401308198f1d3ed5              # double 4.7579099999999999
	.quad	0x4011c0bcbe61cfff              # double 4.4382200000000003
	.quad	0x4007c4934267839d              # double 2.9709840000000001
	.quad	0x4021d8121682f944              # double 8.9220129999999997
	.quad	0x401c67a89331a08c              # double 7.101229
	.quad	0x400bfd4738a3b57c              # double 3.4986709999999999
	.quad	0x3fee1309c7ffde72              # double 0.93982399999999999
	.quad	0x401d6912556d19df              # double 7.3526090000000002
	.quad	0x4015737c99ae924f              # double 5.3627799999999999
	.quad	0x40218113a4f8726d              # double 8.752103
	.quad	0x401c5ad9ad85dfa8              # double 7.0887209999999996
	.quad	0x4022fc53b0813cac              # double 9.4928260000000008
	.quad	0x40132bf93ff25e57              # double 4.7929430000000002
	.quad	0x4012ccd7cf5f4e44              # double 4.7000419999999998
	.quad	0x401c65c896dd26b7              # double 7.0993979999999999
	.quad	0x4012cd4562e09fe8              # double 4.7004599999999996
	.quad	0x40201c408d8ec95c              # double 8.05518
	.quad	0x4022d820c49ba5e3              # double 9.4221249999999994
	.quad	0x40089510d38cda6e              # double 3.0727859999999998
	.quad	0x40020827b6fe2e6f              # double 2.2539820000000002
	.quad	0x400bf0fcf80dc337              # double 3.4926699999999999
	.quad	0x40234540aaeafab5              # double 9.6352589999999995
	.quad	0x4002b15592d98bf8              # double 2.336589
	.quad	0x4011a42f1ed17c5f              # double 4.410336
	.quad	0x40220b662fdfc19c              # double 9.0222639999999998
	.quad	0x40178036006d0d4a              # double 5.8752060000000004
	.quad	0x3f7905c03361565c              # double 0.0061089999999999998
	.quad	0x400f13bea91d9b1b              # double 3.8846409999999998
	.quad	0x401abe43aa79bbae              # double 6.6858050000000002
	.quad	0x3ffa941e9af5ba2c              # double 1.661162
	.quad	0x3fb44406c00da1a9              # double 0.079162999999999997
	.quad	0x3fe7bacd5b6805a3              # double 0.74155300000000002
	.quad	0x400d4a4f440af1cc              # double 3.6612840000000002
	.quad	0x3fe9da554b8bef8d              # double 0.80790200000000001
	.quad	0x3ffc1986b9c304cd              # double 1.756232
	.quad	0x40221a860dcb9a9e              # double 9.0518040000000006
	.quad	0x4019cc5eb313be23              # double 6.4495800000000001
	.quad	0x40104177ea1c68ec              # double 4.0639339999999997
	.quad	0x40183a50507a6bd7              # double 6.0569470000000001
	.quad	0x4006085f4a1272c9              # double 2.7540879999999999
	.quad	0x4009dab21815a07b              # double 3.2317849999999999
	.quad	0x4015f9ef0f16f438              # double 5.4940759999999997
	.quad	0x401cb3ec460ed80a              # double 7.1757059999999999
	.quad	0x4011ed794a6eb91b              # double 4.4819079999999998
	.quad	0x4011a54a3c64345d              # double 4.411416
	.quad	0x4012a06a2b1704ff              # double 4.6566549999999998
	.quad	0x3ff5644e93e1c9b4              # double 1.336989
	.quad	0x401dd72cd7cf5f4e              # double 7.4601319999999998
	.quad	0x4011c8f2e05ccc8a              # double 4.4462390000000003
	.quad	0x401e1d8fd5cb7910              # double 7.5288690000000003
	.quad	0x401c1a697aeddce8              # double 7.0257930000000002
	.quad	0x4015e24d099e0e73              # double 5.4709969999999997
	.quad	0x402374f4623d0bfa              # double 9.7284269999999999
	.quad	0x3fddb7dc7abfb9bf              # double 0.46434700000000001
	.quad	0x401b2f9a49c2c1b1              # double 6.7964869999999999
	.quad	0x401aa16d6dc1a47b              # double 6.6576440000000003
	.quad	0x4018f5edd052934b              # double 6.2401650000000002
	.quad	0x40130a61e0c5a815              # double 4.7601389999999997
	.quad	0x402270d801b43526              # double 9.2203979999999994
	.quad	0x401a54d338f79852              # double 6.5828369999999996
	.quad	0x400804577d955715              # double 3.0021200000000001
	.quad	0x4008767903211cb0              # double 3.0578479999999999
	.quad	0x40229ca03c4b09ea              # double 9.3059100000000008
	.quad	0x4023148a58b3f63c              # double 9.5401179999999996
	.quad	0x40206ea5f84cad58              # double 8.2161100000000005
	.quad	0x400b2a50507a6bd7              # double 3.395661
	.quad	0x4021fc5bd0e12e84              # double 8.9928880000000006
	.quad	0x3ffa10ce4ead0c3d              # double 1.629103
	.quad	0x401954a59c065b64              # double 6.3326630000000002
	.quad	0x401379c6b0531983              # double 4.8689220000000004
	.quad	0x3ff456e47dc37a3e              # double 1.2712140000000001
	.quad	0x400ea7852f7f498c              # double 3.8317969999999999
	.quad	0x3fde8d10f51ac9b0              # double 0.47736000000000001
	.quad	0x400b3c1a47a9e2bd              # double 3.404347
	.quad	0x3ff181344806290f              # double 1.094044
	.quad	0x4017f854477ff152              # double 5.9925090000000001
	.quad	0x4022d06c226809d5              # double 9.4070750000000007
	.quad	0x4006d531550ca1cf              # double 2.854098
	.quad	0x3ff353a81dc0db27              # double 1.207924
	.quad	0x40237a85caafbc1b              # double 9.7393020000000003
	.quad	0x401fed0b73d188f4              # double 7.9814889999999998
	.quad	0x3fedd698fe69270b              # double 0.932446
	.quad	0x40039ad85dfa871a              # double 2.4506079999999999
	.quad	0x4021f371fbc5de9c              # double 8.9754789999999999
	.quad	0x3ffef37eb28d8666              # double 1.934447
	.quad	0x40212518090b417d              # double 8.5724490000000007
	.quad	0x400ef2c7b890d5a6              # double 3.8685450000000001
	.quad	0x40197ea8112ba16e              # double 6.3736879999999996
	.quad	0x4022b420f6f08cc5              # double 9.3518139999999992
	.quad	0x4022e6e99a62ed35              # double 9.4510009999999997
	.quad	0x401bf94f69ca9ef5              # double 6.9934669999999999
	.quad	0x4023df9d4d834092              # double 9.9367470000000004
	.quad	0x3fdc9029ae4f3344              # double 0.446299
	.quad	0x3f7212513b5bf6a1              # double 0.0044120000000000001
	.quad	0x4010373365881a15              # double 4.0539069999999997
	.quad	0x3fddd87b56b87379              # double 0.46633799999999997
	.quad	0x401eccc4ef88b978              # double 7.6999700000000004
	.quad	0x400634f0520d130e              # double 2.775849
	.quad	0x401df679cc74b839              # double 7.4906990000000002
	.quad	0x401b16523704790c              # double 6.7717980000000004
	.quad	0x40156cb20fb224ab              # double 5.3561480000000001
	.quad	0x401d529e90795f67              # double 7.3306829999999996
	.quad	0x401df704ff43419e              # double 7.4912299999999998
	.quad	0x3fffa2d72ffd1dcd              # double 1.9772559999999999
	.quad	0x40183e1975f2cb64              # double 6.0606439999999999
	.quad	0x3fcb318fc504816f              # double 0.21245
	.quad	0x401c8d63886594af              # double 7.1380749999999997
	.quad	0x401ea1198aeb80ed              # double 7.657324
	.quad	0x401951e215336dec              # double 6.3299640000000004
	.quad	0x4013c5b78cc9a77e              # double 4.9430829999999997
	.quad	0x400e85ea24cc6823              # double 3.815388
	.quad	0x4020469f4906034f              # double 8.1379339999999996
	.quad	0x4020b6be596c82e0              # double 8.3569209999999998
	.quad	0x401b0d71f36262cc              # double 6.7631300000000003
	.quad	0x401e9dc0980b2420              # double 7.6540549999999996
	.quad	0x40180446f9b994e2              # double 6.0041770000000003
	.quad	0x40233695d91ab8e9              # double 9.6066120000000001
	.quad	0x4020f8b135979182              # double 8.4857270000000007
	.quad	0x3fd825c3dee78184              # double 0.377305
	.quad	0x3fd16db50f40e5a3              # double 0.27232099999999998
	.quad	0x400d180baa582dbe              # double 3.6367409999999998
	.quad	0x400aded634549b63              # double 3.3588070000000001
	.quad	0x40115f1843c3a42f              # double 4.3428659999999999
	.quad	0x4012e20bc382a130              # double 4.7207480000000004
	.quad	0x400ac924f227d029              # double 3.3482150000000002
	.quad	0x400b12ecf2064239              # double 3.3842409999999998
	.quad	0x4006a1c3efae7925              # double 2.8289870000000001
	.quad	0x4023f729b280f12c              # double 9.9827399999999997
	.quad	0x400708deb0fadf2f              # double 2.8793310000000001
	.quad	0x40061733226c3b92              # double 2.7613279999999998
	.quad	0x40142cb74ddf86e4              # double 5.0436680000000003
	.quad	0x401be73ffac1d29e              # double 6.9758300000000002
	.quad	0x401384d26fa3fcca              # double 4.8797090000000001
	.quad	0x401f0759ee88df37              # double 7.7571789999999998
	.quad	0x3faf457c0b135979              # double 0.061076999999999999
	.quad	0x3ff205564b662fe0              # double 1.1263030000000001
	.quad	0x3ff8cea4a8c154ca              # double 1.5504500000000001
	.quad	0x3fd82b020c49ba5e              # double 0.37762499999999999
	.quad	0x4023cec8b4395810              # double 9.9038749999999993
	.quad	0x401ce13b9f127f5f              # double 7.2199540000000004
	.quad	0x40035b3a68b19a41              # double 2.4195449999999998
	.quad	0x401f712513b5bf6a              # double 7.860493
	.quad	0x401abc710cb295ea              # double 6.6840250000000001
	.quad	0x401d39878316a055              # double 7.3061809999999996
	.quad	0x40203315f88fc936              # double 8.0997769999999996
	.quad	0x3ff12d916872b021              # double 1.0736250000000001
	.quad	0x400de9b9d7fd8277              # double 3.7391239999999999
	.quad	0x4003db3bfb58d152              # double 2.4820479999999998
	.quad	0x401b2212513b5bf7              # double 6.7832730000000003
	.quad	0x400e0dd7a99fa11b              # double 3.7567590000000002
	.quad	0x4014de9a2c669058              # double 5.2173850000000002
	.quad	0x4010c03ea704bc27              # double 4.1877389999999997
	.quad	0x3fef9e279dd3bafe              # double 0.98805600000000005
	.quad	0x3fefdb61bb05faec              # double 0.99553000000000002
	.quad	0x401109a77e5eaab0              # double 4.2594279999999998
	.quad	0x3ffb6273929ed395              # double 1.7115359999999999
	.quad	0x402018ecb74ddf87              # double 8.0486810000000002
	.quad	0x4023fd4152b0a6fc              # double 9.9946389999999993
	.quad	0x401bd1a0cf1800a8              # double 6.9547150000000002
	.quad	0x4022cad5171e29b7              # double 9.3961570000000005
	.quad	0x4018628d434a01ac              # double 6.0962420000000002
	.quad	0x400dab5e529bae47              # double 3.7086760000000001
	.quad	0x3fed8ff10ecb74de              # double 0.923821
	.quad	0x400a741aef6f8f04              # double 3.306692
	.quad	0x401cbd377e1b8ed2              # double 7.1847820000000002
	.quad	0x4020e2012599ed7c              # double 8.4414149999999992
	.quad	0x4007d6f86a098916              # double 2.9799660000000001
	.quad	0x4010580dc33721d5              # double 4.0859899999999998
	.quad	0x3fe8ffcdab191dde              # double 0.78122599999999998
	.quad	0x402363a7fc32ebe6              # double 9.6946410000000007
	.quad	0x400b2a1d755bccaf              # double 3.3955639999999998
	.quad	0x3ff5141205bc01a3              # double 1.3173999999999999
	.quad	0x400b674107314ca9              # double 3.4254169999999999
	.quad	0x4000494bbe4473cd              # double 2.0357889999999998
	.quad	0x4003d262888b545c              # double 2.4777269999999998
	.quad	0x4017b278d0cc35ce              # double 5.9242889999999999
	.quad	0x40227ec8d5c74752              # double 9.2476260000000003
	.quad	0x3fe70ebaade657b8              # double 0.72054799999999997
	.quad	0x3fe6fd1fe64f54d2              # double 0.71839900000000001
	.quad	0x40040e1b4bb5e0f8              # double 2.506888
	.quad	0x4005c2eec7c957cd              # double 2.7201819999999999
	.quad	0x3ffdbcbc48f10a9a              # double 1.8585780000000001
	.quad	0x400dd6bca5375c8e              # double 3.7298520000000002
	.quad	0x4019bea1c68ec52a              # double 6.4361639999999998
	.quad	0x40164940357a3550              # double 5.5715339999999998
	.quad	0x40072f87ad080b67              # double 2.8982079999999999
	.quad	0x40188b3f63c31df7              # double 6.1359839999999997
	.quad	0x400dc8509bf9c62a              # double 3.72281
	.quad	0x40024523704790b8              # double 2.2837589999999999
	.quad	0x4014f0ee06d93815              # double 5.2352829999999999
	.quad	0x401fe55475a31a4c              # double 7.9739550000000001
	.quad	0x400e9159c4977425              # double 3.8209719999999998
	.quad	0x401a8b65668c2614              # double 6.6361290000000004
	.quad	0x401fe91ab8e8ea3a              # double 7.9776410000000002
	.quad	0x4021670eb24a6a87              # double 8.7012839999999994
	.quad	0x400b162e09fe8683              # double 3.3858299999999999
	.quad	0x4022c14c87980f56              # double 9.3775370000000002
	.quad	0x3ff24154c985f06f              # double 1.1409499999999999
	.quad	0x40119dddf43c7d5f              # double 4.4041670000000002
	.quad	0x40114e468cac4b4d              # double 4.326441
	.quad	0x401e0a6ce358298d              # double 7.5101810000000002
	.quad	0x3ffd1c33721d53ce              # double 1.819385
	.quad	0x401d45f2452c59fb              # double 7.3183069999999999
	.quad	0x40189cde19fc2a88              # double 6.1531909999999996
	.quad	0x3ffb41adea897636              # double 1.703535
	.quad	0x4016af3e468cac4b              # double 5.6711359999999997
	.quad	0x400e87b45f17bd8c              # double 3.816262
	.quad	0x402173a08398a655              # double 8.7258340000000008
	.quad	0x401122834d26fa40              # double 4.2837040000000002
	.quad	0x3fddb6523704790c              # double 0.46425300000000003
	.quad	0x3fec2bae03b3e9a7              # double 0.880332
	.quad	0x4002cdf9378ee286              # double 2.3505729999999998
	.quad	0x40217806d0d4994a              # double 8.7344270000000002
	.quad	0x40133b5e0f7fcfc4              # double 4.807976
	.quad	0x4022613037d63023              # double 9.1898210000000002
	.quad	0x40112aac96cc5fc0              # double 4.2916740000000004
	.quad	0x4021dd3458cd20b0              # double 8.9320400000000006
	.quad	0x40113dddb1209edc              # double 4.310416
	.quad	0x4018102fb5d03105              # double 6.0158069999999997
	.quad	0x40052f672b884407              # double 2.6481460000000001
	.quad	0x4022a7f6b1a2a4db              # double 9.3280539999999998
	.quad	0x401385275ee99a63              # double 4.8800330000000001
	.quad	0x4023b1704ff4341a              # double 9.8465600000000002
	.quad	0x401cce392e1ef73c              # double 7.20139
	.quad	0x40127d0a24463066              # double 4.622109
	.quad	0x3ffc808205ff1d82              # double 1.781374
	.quad	0x40165440f2389720              # double 5.5822789999999998
	.quad	0x401745675579af19              # double 5.8177770000000004
	.quad	0x40072728e92d55a4              # double 2.8941210000000002
	.quad	0x3fcf8dcdb37c99af              # double 0.24651500000000001
	.quad	0x3ffd1a63f9a49c2c              # double 1.818943
	.quad	0x4014ebff04577d95              # double 5.2304649999999997
	.quad	0x4022a0583621fafd              # double 9.3131730000000008
	.quad	0x3ff64934267839ce              # double 1.3928720000000001
	.quad	0x4000b309c7ffde72              # double 2.087421
	.quad	0x3fe555043e5321e6              # double 0.666628
	.quad	0x4011be3b8a19c9d6              # double 4.4357740000000003
	.quad	0x4015dc01a36e2eb2              # double 5.4648500000000002
	.quad	0x3ffc02070b8cfbfc              # double 1.7504949999999999
	.quad	0x4021b0f96e158751              # double 8.8456530000000004
	.quad	0x401f15caafbc1ace              # double 7.7712810000000001
	.quad	0x401205ff609dcf89              # double 4.5058569999999998
	.quad	0x4012d5e071c53f3a              # double 4.7088640000000002
	.quad	0x401bd075b3e1437c              # double 6.9535739999999997
	.quad	0x400518e0008637bd              # double 2.637146
	.quad	0x401f8f72f76e6107              # double 7.8900870000000002
	.quad	0x4007acdc8754f377              # double 2.9594049999999998
	.quad	0x3fa1971c10d7be98              # double 0.034355999999999998
	.quad	0x3ffcebfa8f7db6e5              # double 1.807612
	.quad	0x400af354c122749f              # double 3.368814
	.quad	0x3ff5e9e1b089a027              # double 1.3695999999999999
	.quad	0x401e9655e28aa433              # double 7.6468119999999997
	.quad	0x40184461309c7ffe              # double 6.0667770000000001
	.quad	0x4004054c55432874              # double 2.5025870000000001
	.quad	0x3ff5504e618ce2d2              # double 1.332106
	.quad	0x40119eeb2d0a2446              # double 4.4051939999999998
	.quad	0x3ff7aca793576039              # double 1.479652
	.quad	0x4018168ec52a411c              # double 6.0220289999999999
	.quad	0x40037ccb7d41743f              # double 2.4359350000000002
	.quad	0x3fe9a9e0a41a261c              # double 0.801987
	.quad	0x402289344806290f              # double 9.2679770000000001
	.quad	0x4018651a86940358              # double 6.0987340000000003
	.quad	0x400af5970b49e01e              # double 3.3699170000000001
	.quad	0x40144247021d10b2              # double 5.064724
	.quad	0x40187cd184c27200              # double 6.121893
	.quad	0x4012274bc6a7ef9e              # double 4.5383750000000003
	.quad	0x400de12f901083dc              # double 3.7349540000000001
	.quad	0x400b766b6177ea1c              # double 3.4328219999999998
	.quad	0x3ff8a005c4651f3f              # double 1.5390680000000001
	.quad	0x401e012d77318fc5              # double 7.5011499999999999
	.quad	0x40145d1676640a6c              # double 5.0909060000000004
	.quad	0x401a62834d26fa40              # double 6.5962040000000002
	.quad	0x400cc801f75104d5              # double 3.5976599999999999
	.quad	0x3ff972a6b0d95140              # double 1.5904910000000001
	.quad	0x4014f3ec02f2f987              # double 5.2382049999999998
	.quad	0x400f38e970718223              # double 3.9027889999999998
	.quad	0x3ffd605ab3aabcd8              # double 1.8360240000000001
	.quad	0x402002b81f969e3d              # double 8.0053110000000007
	.quad	0x3fea17acc4ef88b9              # double 0.81538999999999995
	.quad	0x4023a12d55a3a084              # double 9.8147990000000007
	.quad	0x401f0bd72bcb5fe5              # double 7.7615629999999997
	.quad	0x3ff5a3d1cc100e6b              # double 1.352495
	.quad	0x3ff1ffbdf090f734              # double 1.1249370000000001
	.quad	0x3ff51f623076c051              # double 1.3201620000000001
	.quad	0x4013899bb2788db0              # double 4.8843829999999997
	.quad	0x4002e3f141205bc0              # double 2.3613
	.quad	0x40221ae07e5a78f2              # double 9.0524939999999994
	.quad	0x401a2ba0a5269596              # double 6.542605
	.quad	0x4015de89656eefa2              # double 5.4673210000000001
	.quad	0x400765093964a59c              # double 2.924334
	.quad	0x40222eb723ee1bd2              # double 9.0912410000000001
	.quad	0x400c66ee30caa327              # double 3.5502590000000001
	.quad	0x400bc9c886162f16              # double 3.4735269999999998
	.quad	0x40201def8487b99d              # double 8.0584679999999995
	.quad	0x4017e0ff97247454              # double 5.9697250000000004
	.quad	0x402295af6c69b5a6              # double 9.2923539999999996
	.quad	0x3ff86b6ae7d566cf              # double 1.5262249999999999
	.quad	0x3fe0fcf3dc054ef4              # double 0.53087799999999996
	.quad	0x4019114983d79075              # double 6.2668819999999998
	.quad	0x40238a5b749adc90              # double 9.7702290000000005
	.quad	0x4013d59af9ebe9c9              # double 4.9585990000000004
	.quad	0x3ff68f4623d0bfa1              # double 1.4099790000000001
	.quad	0x3fc55336deb95e5b              # double 0.166602
	.quad	0x4020fd56d19dece5              # double 8.4948029999999992
	.quad	0x40207adcf4623d0c              # double 8.239967
	.quad	0x401c1120e1f7d73d              # double 7.0167270000000004
	.quad	0x401cb3a6ce358299              # double 7.1754410000000002
	.quad	0x4005f5568e820e63              # double 2.7447940000000002
	.quad	0x400a2b0f27bb2fec              # double 3.2710249999999998
	.quad	0x40066cc25072085b              # double 2.803105
	.quad	0x401a3f6b5d462c34              # double 6.5619329999999998
	.quad	0x4020dce26d4801f7              # double 8.4314149999999994
	.quad	0x3ffe06b7aa25d8d8              # double 1.8766400000000001
	.quad	0x401dd32a8c9b8455              # double 7.4562169999999997
	.quad	0x401f4a9c560c7c0f              # double 7.8228619999999997
	.quad	0x401fc8101f31f46f              # double 7.9453740000000001
	.quad	0x402173945308bb90              # double 8.7257409999999993
	.quad	0x3fd8621b7e0ac7da              # double 0.38098799999999999
	.quad	0x40211950b955f783              # double 8.5494439999999994
	.quad	0x3fd25564b662fdfc              # double 0.28646199999999999
	.quad	0x40216bb3a68b19a4              # double 8.7103549999999998
	.quad	0x3feb1dc2f405f6ba              # double 0.847383
	.quad	0x400a78bdec5f394b              # double 3.3089559999999998
	.quad	0x402292497fa5d28d              # double 9.285717
	.quad	0x4022c5c6e2a80065              # double 9.3862830000000005
	.quad	0x40206f839cd8127b              # double 8.2178009999999997
	.quad	0x4011dec7c957cd46              # double 4.4675589999999996
	.quad	0x400ec266772d5e07              # double 3.844922
	.quad	0x400334c985f06f69              # double 2.4007749999999999
	.quad	0x4012313879c4113c              # double 4.5480669999999996
	.quad	0x3fdf4c271fff79c8              # double 0.48902299999999999
	.quad	0x4017f90752da9867              # double 5.9931919999999996
	.quad	0x401846bb98c7e282              # double 6.0690749999999998
	.quad	0x402061b77c02afde              # double 8.1908530000000006
	.quad	0x3fd968a50507a6bd              # double 0.39701199999999998
	.quad	0x401fa114d2f5dbba              # double 7.9073060000000002
	.quad	0x3fef06b15f88fc93              # double 0.96956699999999995
	.quad	0x40191e47dc37a3db              # double 6.2795709999999998
	.quad	0x4013cf2f9873ffac              # double 4.9523299999999999
	.quad	0x4023ef62b6ae7d56              # double 9.9675499999999992
	.quad	0x401354b9cb6848bf              # double 4.8327400000000003
	.quad	0x401972849cb252ce              # double 6.361834
	.quad	0x400c8c57e23f24d9              # double 3.568527
	.quad	0x4014c54c122749f1              # double 5.1926730000000001
	.quad	0x401e65436b8f9b13              # double 7.5988899999999999
	.quad	0x40225c5e2cdc011d              # double 9.1804059999999996
	.quad	0x4004ac84f8f8a4c2              # double 2.584238
	.quad	0x401a559685122318              # double 6.5835819999999998
	.quad	0x4003c5e0b4e11dbd              # double 2.4716200000000002
	.quad	0x4000d39192641b33              # double 2.1033050000000002
	.quad	0x4017f0c521dda05a              # double 5.9851270000000003
	.quad	0x4021389c3ce2089e              # double 8.6105669999999996
	.quad	0x4015b26394face68              # double 5.4242080000000001
	.quad	0x400004e7ab756430              # double 2.0023949999999999
	.quad	0x401948ad25679896              # double 6.3209730000000004
	.quad	0x4022bcb6a619da9d              # double 9.3685810000000007
	.quad	0x4001161d4306e5cd              # double 2.1357979999999999
	.quad	0x40126ac258d5842b              # double 4.6042569999999996
	.quad	0x40218f141205bc02              # double 8.7794500000000006
	.quad	0x400e5850df15a4ad              # double 3.793123
	.quad	0x40196e9ff0cbaf96              # double 6.3580319999999997
	.quad	0x401250ccbc05d52c              # double 4.5789059999999999
	.quad	0x3f943b70ef566491              # double 0.019758000000000001
	.quad	0x401ec7afa7221859              # double 7.6950060000000002
	.quad	0x401038de6ddf00ac              # double 4.055536
	.quad	0x402142704bc27632              # double 8.6297630000000005
	.quad	0x400452d4d4024b34              # double 2.5404450000000001
	.quad	0x401f35f78359bc34              # double 7.802702
	.quad	0x4016eb6390c91080              # double 5.7298720000000003
	.quad	0x3ff3628ed5f138bd              # double 1.211562
	.quad	0x40144b76f6d76252              # double 5.073696
	.quad	0x401522413db7f173              # double 5.2834519999999996
	.quad	0x40237c8ecd8dbced              # double 9.7432770000000008
	.quad	0x40196449129888f8              # double 6.3479349999999997
	.quad	0x3fc6f70153bd1676              # double 0.17941299999999999
	.quad	0x401b078e1932d6ed              # double 6.7573780000000001
	.quad	0x4020f0ee49f51698              # double 8.4705680000000001
	.quad	0x400cf584b1ab0857              # double 3.619882
	.quad	0x4002e507a6bd6e8b              # double 2.361831
	.quad	0x4012d82278d0cc36              # double 4.7110690000000002
	.quad	0x4021ec2b51bd61f6              # double 8.9612680000000005
	.quad	0x3ff168fc0d2c386d              # double 1.088131
	.quad	0x3fe60f301eabbcb2              # double 0.68935400000000002
	.quad	0x40215647baa9b49a              # double 8.6685160000000003
	.quad	0x4015413cee9dd7ed              # double 5.3137090000000002
	.quad	0x40110b7c7820a30e              # double 4.2612170000000003
	.quad	0x400fe33a4723ab00              # double 3.985951
	.quad	0x4022033ca31e7d9a              # double 9.0063220000000008
	.quad	0x400396db0dd82fd7              # double 2.4486599999999998
	.quad	0x401af89ce4a7b4e5              # double 6.7427859999999997
	.quad	0x4023f9a49c2c1b11              # double 9.987584
	.quad	0x4022eca2b9d3cbc5              # double 9.4621790000000007
	.quad	0x3ffd2305532617c2              # double 1.8210500000000001
	.quad	0x3ff8986876e1dead              # double 1.537209
	.quad	0x3fc79fd36f7e3d1d              # double 0.18456500000000001
	.quad	0x401f7cdc8754f377              # double 7.8719349999999996
	.quad	0x40210ef30a4e379b              # double 8.5291979999999992
	.quad	0x4012623e18698351              # double 4.5959399999999997
	.quad	0x3ff0c8d6d3b6cbda              # double 1.0490330000000001
	.quad	0x3fbccec41dd1a21f              # double 0.11253000000000001
	.quad	0x3fcf2253111f0c35              # double 0.24323500000000001
	.quad	0x400012a51e321a2e              # double 2.0091039999999998
	.quad	0x4007a9003eea209b              # double 2.9575200000000001
	.quad	0x4020ef43e963dc48              # double 8.4673149999999993
	.quad	0x4009e1ec4e7253da              # double 3.2353139999999998
	.quad	0x401d8fe79ee02a78              # double 7.3905320000000003
	.quad	0x4017e9b8cb8e086c              # double 5.9782440000000001
	.quad	0x4004f6577531db44              # double 2.6202839999999998
	.quad	0x4001671ac14c660a              # double 2.1753439999999999
	.quad	0x3fe54230fcf80dc3              # double 0.66432999999999998
	.quad	0x401d906c43f5f916              # double 7.391038
	.quad	0x4020022bbecaab8a              # double 8.0042399999999994
	.quad	0x4022fbdee78183f9              # double 9.4919349999999997
	.quad	0x401f494c87980f56              # double 7.8215810000000001
	.quad	0x401a41c432ca57a8              # double 6.5642250000000004
	.quad	0x4010c0b9dc2f405f              # double 4.1882089999999996
	.quad	0x40004131a8ef77f2              # double 2.0318329999999998
	.quad	0x40072ed80a17b0f7              # double 2.8978730000000001
	.quad	0x40171a24cc6822ff              # double 5.775531
	.quad	0x401ca4ee392e1ef7              # double 7.1610649999999998
	.quad	0x401a92ec28b2a6b1              # double 6.6434790000000001
	.quad	0x4023e7f43419e300              # double 9.9530349999999999
	.quad	0x401c69463cfb3312              # double 7.1028070000000003
	.quad	0x40107f18c9fb6135              # double 4.1241180000000002
	.quad	0x400e889d27c39368              # double 3.8167059999999999
	.quad	0x4013c7bb73083559              # double 4.9450510000000003
	.quad	0x3ffb6e6644d87725              # double 1.714453
	.quad	0x3ff7069835158b82              # double 1.4391099999999999
	.quad	0x3fec6c3dab5c39bd              # double 0.88821300000000003
	.quad	0x40131c2c1b10fd7e              # double 4.7775119999999998
	.quad	0x4023c0ca600b0293              # double 9.8765440000000008
	.quad	0x3fde16ebd4cfd08d              # double 0.47014899999999998
	.quad	0x4012faf31b152f3c              # double 4.7450679999999998
	.quad	0x401f42fba01eeed9              # double 7.8154130000000003
	.quad	0x3ffa41e364bec67a              # double 1.641086
	.quad	0x3ffdd8cc144028e5              # double 1.865429
	.quad	0x40110d6ece13f4aa              # double 4.2631180000000004
	.quad	0x3fefdbb59ddc1e79              # double 0.99556999999999995
	.quad	0x400800b135979182              # double 3.0003380000000002
	.quad	0x4015786876e1dead              # double 5.3675860000000002
	.quad	0x400347136a400fbb              # double 2.4097050000000002
	.quad	0x401820913a4f8727              # double 6.0318040000000002
	.quad	0x3fecb76d5497310a              # double 0.89739100000000005
	.quad	0x4010050df15a4acf              # double 4.0049359999999998
	.quad	0x40108641700cd856              # double 4.1311090000000004
	.quad	0x3fda8bc9cd3e0bd4              # double 0.41478199999999998
	.quad	0x402350405b39e27a              # double 9.6567410000000002
	.quad	0x3fd01dfb9389b520              # double 0.25183
	.quad	0x3fdc93682730c671              # double 0.44649699999999998
	.quad	0x40219d7e02645e4e              # double 8.8076019999999993
	.quad	0x3ffe558a76102795              # double 1.8958839999999999
	.quad	0x3fd81b4bb5e0f7fd              # double 0.376666
	.quad	0x3ffa458ab92c0618              # double 1.6419779999999999
	.quad	0x4015fdff3f0fe048              # double 5.4980440000000002
	.quad	0x3fbd8d6909aed56b              # double 0.115439
	.quad	0x4018f6bb55ac03ff              # double 6.2409489999999996
	.quad	0x401e3744b2b777d1              # double 7.553973
	.quad	0x40202a0e6299524c              # double 8.082141
	.quad	0x401880dc768dfbd7              # double 6.1258410000000003
	.quad	0x401a3c475e6362a6              # double 6.5588660000000001
	.quad	0x40164f92af9a8cdf              # double 5.5777080000000003
	.quad	0x3fddf548ecd8dbcf              # double 0.46809600000000001
	.quad	0x401ba1bbcf4e874d              # double 6.9079430000000004
	.quad	0x4000b4877681669d              # double 2.088149
	.quad	0x4023524d6e47dc38              # double 9.6607470000000006
	.quad	0x3fe4c81d3aa369fd              # double 0.64942800000000001
	.quad	0x401a258b827fa1a1              # double 6.5366650000000002
	.quad	0x40167ede97d06bbe              # double 5.6238960000000002
	.quad	0x400f6694898f605b              # double 3.9250880000000001
	.quad	0x401b81a3f4666eca              # double 6.8766020000000001
	.quad	0x401364f82f512663              # double 4.8486029999999998
	.quad	0x4022d725c3dee782              # double 9.4202100000000009
	.quad	0x4014c7807789a459              # double 5.1948259999999999
	.quad	0x3ff7f19c5a3e39f7              # double 1.4964869999999999
	.quad	0x4016683126e978d5              # double 5.60175
	.quad	0x3fe4effc115df655              # double 0.65429499999999996
	.quad	0x3ffe8614163779ea              # double 1.907734
	.quad	0x4023cab191dde376              # double 9.8958860000000008
	.quad	0x3ff6d2c386d2ed78              # double 1.4264559999999999
	.quad	0x40018732df505d10              # double 2.1910150000000002
	.quad	0x3ffebae5796bfca8              # double 1.9206289999999999
	.quad	0x401440cb295e9e1b              # double 5.063275
	.quad	0x3fc3a2c669057d18              # double 0.15340500000000001
	.quad	0x3ff12a5614df8b15              # double 1.0728359999999999
	.quad	0x40066ce703afb7e9              # double 2.803175
	.quad	0x4013bca793576039              # double 4.9342329999999999
	.quad	0x401dbc1094a2b9d4              # double 7.4336570000000002
	.quad	0x4022dafd113836a8              # double 9.4277119999999996
	.quad	0x4016f61b2a27f1b7              # double 5.7403380000000004
	.quad	0x3fd7141a6937d1fe              # double 0.36060199999999998
	.quad	0x4012f5caafbc1ace              # double 4.7400310000000001
	.quad	0x40126da836eb4e98              # double 4.6070869999999999
	.quad	0x4023f446b69db65f              # double 9.9771020000000003
	.quad	0x3ff3f04ff43419e3              # double 1.24617
	.quad	0x402205d80e496edf              # double 9.0114140000000003
	.quad	0x40121c4007570c56              # double 4.5275879999999997
	.quad	0x3feda276b7ed41b7              # double 0.92608199999999996
	.quad	0x40115b6e935b91f7              # double 4.339289
	.quad	0x401e671fff79c843              # double 7.600708
	.quad	0x400b8dd9c27e9531              # double 3.4442629999999999
	.quad	0x40238da22f6a50d7              # double 9.7766280000000005
	.quad	0x40159ebb7739f341              # double 5.4050120000000001
	.quad	0x400fcfc7a398201d              # double 3.9764550000000001
	.quad	0x3fd36f0cfe154435              # double 0.30365300000000001
	.quad	0x40176765fd8adaba              # double 5.850975
	.quad	0x401e2d938151a438              # double 7.5445080000000004
	.quad	0x400fa9a5ebb7739f              # double 3.9578359999999999
	.quad	0x4005af1fddebd902              # double 2.7105100000000002
	.quad	0x40091c33f85510d4              # double 3.1387710000000002
	.quad	0x40105436b8f9b131              # double 4.0822399999999996
	.quad	0x401e17460242d05f              # double 7.5227279999999998
	.quad	0x401330620ab71327              # double 4.7972489999999999
	.quad	0x400834a7f8012dfd              # double 3.0257109999999998
	.quad	0x3faed527e5215769              # double 0.060220000000000003
	.quad	0x400fe2163fdd65a1              # double 3.9853939999999999
	.quad	0x40218bb6aa4b9885              # double 8.7728780000000004
	.quad	0x402143404ea4a8c1              # double 8.6313499999999994
	.quad	0x401efff43419e300              # double 7.7499549999999999
	.quad	0x401800c804102ff9              # double 6.0007630000000001
	.quad	0x401ca7b784662bae              # double 7.163786
	.quad	0x3ff398d8a979e16d              # double 1.2248159999999999
	.quad	0x401aeb8305d95dd5              # double 6.7299920000000002
	.quad	0x401761327243137b              # double 5.844919
	.quad	0x4022b9ed7c6fbd27              # double 9.3631399999999995
	.quad	0x402382ad1d041cc5              # double 9.7552269999999996
	.quad	0x4022647d805e5f31              # double 9.1962700000000002
	.quad	0x3ffbe6fe718a86d7              # double 1.743895
	.quad	0x4017bafaf8594291              # double 5.9325979999999996
	.quad	0x400e4759253543af              # double 3.7848380000000001
	.quad	0x4019e7d523b3636f              # double 6.4763989999999998
	.quad	0x3ff5a122fad6cb53              # double 1.3518399999999999
	.quad	0x401164dc65c70436              # double 4.3484970000000001
	.quad	0x4013d94b7b28954a              # double 4.9622019999999996
	.quad	0x3ff64c2a454de7ea              # double 1.3935949999999999
	.quad	0x4021bcc426351def              # double 8.868684
	.quad	0x400ae7a41e57d9dc              # double 3.3631060000000002
	.quad	0x4004f85271bcdbbe              # double 2.621251
	.quad	0x4011b39a38fbca10              # double 4.4253929999999997
	.quad	0x3fca6cf41f212d77              # double 0.20644999999999999
	.quad	0x402090374ff865d8              # double 8.2816720000000004
	.quad	0x3feb67ddca4b124d              # double 0.856429
	.quad	0x401967e4de3b8a1a              # double 6.3514590000000002
	.quad	0x3ff5982235b4edb3              # double 1.349642
	.quad	0x401b7c29bf162ae5              # double 6.8712530000000003
	.quad	0x40218334e7685986              # double 8.7562630000000006
	.quad	0x40067f4ba51a005c              # double 2.8121559999999999
	.quad	0x40150072d1aeb3dd              # double 5.2504379999999999
	.quad	0x40226a60913a4f87              # double 9.2077679999999997
	.quad	0x40126682f944241c              # double 4.6001089999999998
	.quad	0x4007ef88b9778573              # double 2.9919600000000002
	.quad	0x401e17e56473471f              # double 7.5233359999999995
	.quad	0x401647f27fe4bcae              # double 5.5702610000000004
	.quad	0x402346b0fadf2ecf              # double 9.6380689999999997
	.quad	0x4022da1ccd962068              # double 9.4260009999999994
	.quad	0x3fff23e5b8561d43              # double 1.946264
	.quad	0x401677720c8cd63d              # double 5.6166460000000002
	.quad	0x3ff2b9ee02a77a2d              # double 1.170393
	.quad	0x3fe5c00b88ca3e7d              # double 0.67969299999999999
	.quad	0x4015c09dcf893faf              # double 5.4381019999999998
	.quad	0x40119404ea4a8c15              # double 4.3945499999999997
	.quad	0x40212f1800a7c5ac              # double 8.5919799999999995
	.quad	0x4020e1613d31b9b6              # double 8.4401949999999992
	.quad	0x402287cd67fd3f5b              # double 9.2652389999999993
	.quad	0x400ca437824d4cba              # double 3.580184
	.quad	0x4014f236c15d2d02              # double 5.2365370000000002
	.quad	0x40022b1ee2435697              # double 2.271055
	.quad	0x402318049667b5f2              # double 9.5469100000000005
	.quad	0x3fc82cd39da16617              # double 0.18886800000000001
	.quad	0x401090b39192641b              # double 4.1413099999999998
	.quad	0x4021e5844d013a93              # double 8.9482750000000006
	.quad	0x40080ba16e7a311f              # double 3.0056790000000002
	.quad	0x401155f02c4d65e4              # double 4.3339239999999997
	.quad	0x4015272862f5989e              # double 5.2882400000000001
	.quad	0x40131e30446b69db              # double 4.7794809999999996
	.quad	0x3ff9c3947496aad2              # double 1.610249
	.quad	0x3fdb4649906cca2e              # double 0.42616500000000002
	.quad	0x401173361565c2d2              # double 4.3625109999999996
	.quad	0x401eaf4e0114d2f6              # double 7.6711960000000001
	.quad	0x4021a38a7e73a366              # double 8.8194160000000004
	.quad	0x3ffe744806290eed              # double 1.903389
	.quad	0x3fd18fe69270b06c              # double 0.27440799999999999
	.quad	0x401b8d3953dea466              # double 6.8879140000000003
	.quad	0x40081a543f1c7582              # double 3.0128560000000002
	.quad	0x401db2de8709741d              # double 7.424677
	.quad	0x4020691ff7164c73              # double 8.2053220000000007
	.quad	0x3fe39ad42c3c9eed              # double 0.61265000000000003
	.quad	0x3ff7b5c6c11a1123              # double 1.4818789999999999
	.quad	0x4011faceaaf35e31              # double 4.494929
	.quad	0x4003ba005c4651f4              # double 2.465821
	.quad	0x4022512b3cc4ac6d              # double 9.1585330000000003
	.quad	0x4007dc58ab92c062              # double 2.9825910000000002
	.quad	0x402394f3343fa2ad              # double 9.7909179999999995
	.quad	0x3fefc245f5ad96a7              # double 0.99246500000000004
	.quad	0x400630468448cf7d              # double 2.7735720000000001
	.quad	0x401cb4195cc857f3              # double 7.175878
	.quad	0x3fe848d3ae685db7              # double 0.75888999999999995
	.quad	0x4016c7baecd07853              # double 5.695049
	.quad	0x4023fc6bce8533b1              # double 9.9930099999999999
	.quad	0x4023778811b1d92b              # double 9.7334599999999991
	.quad	0x40203ebaf102363b              # double 8.1225199999999997
	.quad	0x400b6d01c0ca600b              # double 3.428226
	.quad	0x40222ff9b56323bc              # double 9.0937020000000003
	.quad	0x4012daf9a8cdea03              # double 4.7138429999999998
	.quad	0x3ff0976cce5f7404              # double 1.036969
	.quad	0x4022cca9ef5232d3              # double 9.3997340000000004
	.quad	0x3ff7a49b1fab96f2              # double 1.477687
	.quad	0x40171e0d23d4f15e              # double 5.7793469999999996
	.quad	0x4010f6b3bb83cf2d              # double 4.24092
	.quad	0x401ed7e670e2c12b              # double 7.7108400000000001
	.quad	0x401fd96fa82e87d3              # double 7.9623400000000001
	.quad	0x401cf7ef9db22d0e              # double 7.2421249999999997
	.quad	0x40004345cfede97d              # double 2.032848
	.quad	0x401f7f14983d7907              # double 7.8741019999999997
	.quad	0x3ffb8aa433508f65              # double 1.7213480000000001
	.quad	0x400e4849cb252ce0              # double 3.7852969999999999
	.quad	0x40117736049ecb32              # double 4.3664170000000002
	.quad	0x3fde62c77574f723              # double 0.47477900000000001
	.quad	0x40100d955714b9cb              # double 4.0132649999999996
	.quad	0x401aad441355475a              # double 6.6692049999999998
	.quad	0x401c0bc126a65cf6              # double 7.0114789999999996
	.quad	0x40227b1422ccb3a2              # double 9.2403879999999994
	.quad	0x401d9149c6f36ef8              # double 7.3918829999999999
	.quad	0x4020a0ad25679896              # double 8.3138210000000008
	.quad	0x401060a6fc58ab93              # double 4.0943870000000002
	.quad	0x4010eb035bd512ec              # double 4.2295049999999996
	.quad	0x4016107314ca9260              # double 5.5160640000000001
	.quad	0x4020b28cdea033e8              # double 8.3487310000000008
	.quad	0x40055c2c1b10fd7e              # double 2.6700059999999999
	.quad	0x3ff63cf70153bd16              # double 1.3898839999999999
	.quad	0x40149cb5fe542e55              # double 5.1530379999999996
	.quad	0x40232a1b7e0ac7da              # double 9.5822409999999998
	.quad	0x40216bba98eda22f              # double 8.7104079999999993
	.quad	0x400b04ff43419e30              # double 3.37744
	.quad	0x40207527e5215769              # double 8.2288200000000007
	.quad	0x401e728672756862              # double 7.6118410000000001
	.quad	0x400a4339c0ebedfa              # double 3.2828249999999999
	.quad	0x3fff954fbdad7519              # double 1.9739530000000001
	.quad	0x4019b55757d5a9eb              # double 6.4270909999999999
	.quad	0x402186529bae46d0              # double 8.7623490000000004
	.quad	0x3f9ab71327243138              # double 0.026089000000000001
	.quad	0x401ecff43419e300              # double 7.7030799999999999
	.quad	0x4021f03ea704bc27              # double 8.9692279999999993
	.quad	0x4020e60ded288ce7              # double 8.449325
	.quad	0x4010470d62bf11f9              # double 4.0693869999999999
	.quad	0x40223f07182235b5              # double 9.1231010000000001
	.quad	0x4022d8feef5ec80c              # double 9.4238199999999991
	.quad	0x40178573eab367a1              # double 5.880325
	.quad	0x400626a11ec918e3              # double 2.7688619999999999
	.quad	0x4012b3d816aceaaf              # double 4.6756289999999998
	.quad	0x402027ad2999567e              # double 8.0774930000000005
	.quad	0x3ff569003eea209b              # double 1.3381350000000001
	.quad	0x400aa82c6ef3d3a2              # double 3.3321160000000001
	.quad	0x3ff6dd14e3bcd35b              # double 1.4289750000000001
	.quad	0x401101c5c5718eb9              # double 4.2517310000000004
	.quad	0x401169ea9a3d2d88              # double 4.353434
	.quad	0x3fd1ad1d041cc533              # double 0.27619100000000002
	.quad	0x40151b7457c0b136              # double 5.2768110000000004
	.quad	0x400bcf26aec0724b              # double 3.4761479999999998
	.quad	0x4014795b35b0bbf5              # double 5.118512
	.quad	0x4006667be553ac4f              # double 2.8000409999999998
	.quad	0x400ab8c5436b8f9b              # double 3.34022
	.quad	0x3ff803547e06961c              # double 1.500813
	.quad	0x3fe7676a7264a16a              # double 0.73137399999999997
	.quad	0x3fe4fe62dc6e2a80              # double 0.656053
	.quad	0x401cb6922d948dc1              # double 7.1782919999999999
	.quad	0x4007f688bda9435b              # double 2.9953780000000001
	.quad	0x4023febf65dbfceb              # double 9.9975539999999991
	.quad	0x401ed0fc2eba27af              # double 7.7040870000000003
	.quad	0x401d146f587d6f97              # double 7.2699559999999996
	.quad	0x40182b9d7fd82774              # double 6.0425930000000001
	.quad	0x401ce243dccea290              # double 7.2209620000000001
	.quad	0x400690b7c3504c49              # double 2.8206630000000001
	.quad	0x401bd5b573eab368              # double 6.9587000000000003
	.quad	0x40153a8d64d7f0ed              # double 5.3071799999999998
	.quad	0x3fb7177a7008a698              # double 0.090202000000000004
	.quad	0x4017fb1cc9646280              # double 5.9952269999999999
	.quad	0x4023bb15f88fc936              # double 9.8654019999999996
	.quad	0x401c60a782906898              # double 7.0943889999999996
	.quad	0x4020e083126e978d              # double 8.4384999999999994
	.quad	0x401c2a3a8e71476b              # double 7.041239
	.quad	0x4013c3764f11b60b              # double 4.9408810000000001
	.quad	0x4008d81a5870da5e              # double 3.1055190000000001
	.quad	0x3f632b55ef1fddec              # double 0.0023400000000000001
	.quad	0x402081e4f765fd8b              # double 8.2537000000000003
	.quad	0x40109dd8f92af9a9              # double 4.1541480000000002
	.quad	0x40225f45bf26f1dc              # double 9.1860789999999994
	.quad	0x3ffa012be48a58b4              # double 1.625286
	.quad	0x40137f4ba51a005c              # double 4.8743119999999998
	.quad	0x4022da778140dd40              # double 9.4266930000000002
	.quad	0x401ecd2bf5515055              # double 7.7003630000000002
	.quad	0x401c84202d9cf13d              # double 7.1290290000000001
	.quad	0x4000790214ad362f              # double 2.0590860000000002
	.quad	0x40196b484d76ab58              # double 6.354768
	.quad	0x40235251c193b3a7              # double 9.6607800000000008
	.quad	0x401b499524bfd2e9              # double 6.8218579999999998
	.quad	0x3fdae5de15ca6ca0              # double 0.42027999999999999
	.quad	0x4013739eadd590c1              # double 4.8629100000000003
	.quad	0x4021c3897204295a              # double 8.8819079999999992
	.quad	0x40123cb252ce032e              # double 4.5592740000000003
	.quad	0x40218909f1f14984              # double 8.7676540000000002
	.quad	0x40112601797cc3a0              # double 4.287115
	.quad	0x401d26540cc78e9f              # double 7.2874299999999996
	.quad	0x4013a8f041461b6d              # double 4.9149789999999998
	.quad	0x3fcf96b76709fa55              # double 0.24678700000000001
	.quad	0x3ff3c85e3da2f8be              # double 1.236418
	.quad	0x40219a80f12c27a6              # double 8.8017649999999996
	.quad	0x4013198f1d3ed528              # double 4.7749600000000001
	.quad	0x401433122b7baecd              # double 5.049874
	.quad	0x401f59d0203e63e9              # double 7.8377080000000001
	.quad	0x3fd2574b40703298              # double 0.286578
	.quad	0x3fdf06ab14ec204f              # double 0.48478199999999999
	.quad	0x401a4dfdef8487ba              # double 6.5761640000000003
	.quad	0x401f2c22ee41919b              # double 7.7931020000000001
	.quad	0x3ffc3bbe878fabda              # double 1.764586
	.quad	0x4020ef9aae6c8f75              # double 8.4679769999999994
	.quad	0x3fc1a86940357a35              # double 0.13795199999999999
	.quad	0x4023282ff8ec0f88              # double 9.5784909999999996
	.quad	0x3fedc199fe43675e              # double 0.92988300000000002
	.quad	0x401795e529bae46d              # double 5.896382
	.quad	0x3fe0ba6266fd651b              # double 0.52275199999999999
	.quad	0x3fd8a2be0589acbd              # double 0.38493300000000003
	.quad	0x401ca74c09c3ce21              # double 7.1633760000000004
	.quad	0x40126714b9cb6849              # double 4.6006650000000002
	.quad	0x401aff51ac9afe1e              # double 6.7493350000000003
	.quad	0x401e293e1c9b413a              # double 7.5402760000000004
	.quad	0x4016ee8d10f51aca              # double 5.7329600000000003
	.quad	0x400cf8d045fe1112              # double 3.6214909999999998
	.quad	0x4023114b167ec786              # double 9.5337759999999996
	.quad	0x401f65e0f7fcfc40              # double 7.8494910000000004
	.quad	0x401a1c3b0c4588a0              # double 6.5275689999999997
	.quad	0x4020af503b81b64e              # double 8.342409
	.quad	0x4023e04c48adeebb              # double 9.9380819999999996
	.quad	0x400144fd2a62aa19              # double 2.1586859999999999
	.quad	0x400c425204af9229              # double 3.5323829999999998
	.quad	0x4020c9806f262889              # double 8.3935580000000005
	.quad	0x4021df13059641f6              # double 8.9356919999999995
	.quad	0x4020ab2bdc26dce4              # double 8.3343190000000006
	.quad	0x3fe9dd93c46d82ba              # double 0.80829799999999996
	.quad	0x401dca2120e1f7d7              # double 7.4473919999999998
	.quad	0x401b8c23b7952d23              # double 6.8868549999999997
	.quad	0x40147ae9ee45c359              # double 5.1200330000000003
	.quad	0x4010fd85dfa871a4              # double 4.2475810000000003
	.quad	0x401d6b2b3461309c              # double 7.3546569999999996
	.quad	0x40096d0cc35ce182              # double 3.1782469999999998
	.quad	0x400ae0d4562e09ff              # double 3.3597800000000002
	.quad	0x4023f228dc981beb              # double 9.9729679999999998
	.quad	0x3ff2a9728a611772              # double 1.166369
	.quad	0x401b47f77af64064              # double 6.8202800000000003
	.quad	0x401ca14b167ec786              # double 7.1575129999999998
	.quad	0x401cdaa53fc00970              # double 7.2135210000000001
	.quad	0x3fe2d04a2fcefaa4              # double 0.58792599999999995
	.quad	0x400cf9103c8e25c8              # double 3.621613
	.quad	0x401d62ca9ac36545              # double 7.346476
	.quad	0x4021da7cbf6e3f79              # double 8.9267330000000005
	.quad	0x401c288a47ecfe9b              # double 7.0395899999999996
	.quad	0x4000c37c5692b3cc              # double 2.0954519999999999
	.quad	0x4020d9248d7e0264              # double 8.4241069999999993
	.quad	0x4023d488e79aae6d              # double 9.9151070000000007
	.quad	0x401fe54823854046              # double 7.9739079999999998
	.quad	0x401b8393ee5eedcc              # double 6.8784939999999999
	.quad	0x4013da3875925354              # double 4.9631059999999998
	.quad	0x401b5efc371da37f              # double 6.842759
	.quad	0x401b3d8b60f1b25f              # double 6.8101019999999997
	.quad	0x3fdd535c9e6687f4              # double 0.45821299999999998
	.quad	0x3fd07204295a6c5d              # double 0.25695899999999999
	.quad	0x4012dab430f49492              # double 4.713578
	.quad	0x3fecd321e603d578              # double 0.90077300000000005
	.quad	0x4016fa209aaa3ad2              # double 5.7442650000000004
	.quad	0x4017b4e9813879c4              # double 5.9266719999999999
	.quad	0x40116ed8904f6dfc              # double 4.3582479999999997
	.quad	0x40102f062d40aaeb              # double 4.045922
	.quad	0x401af6876e1deacd              # double 6.7407510000000004
	.quad	0x40147c46950fc71d              # double 5.1213629999999997
	.quad	0x400cb522a6f3f530              # double 3.5884450000000001
	.quad	0x4014c794a6eb91b4              # double 5.194903
	.quad	0x3f95271bcdbbe015              # double 0.020656999999999998
	.quad	0x401bd1e3a7daa4fd              # double 6.9549700000000003
	.quad	0x4011c2d6238da3c2              # double 4.4402699999999999
	.quad	0x40233bb1d0c80410              # double 9.6165909999999997
	.quad	0x40239b124d099e0e              # double 9.8028739999999992
	.quad	0x4009783621fafc8b              # double 3.183697
	.quad	0x400c4dd052934acb              # double 3.537995
	.quad	0x4015fe22e5de15ca              # double 5.4981799999999996
	.quad	0x40055f023e9ea140              # double 2.6713909999999998
	.quad	0x4007e228997c3d68              # double 2.9854289999999999
	.quad	0x401f8f2170931013              # double 7.8897760000000003
	.quad	0x401554ebdd334c5e              # double 5.3329310000000003
	.quad	0x4021a70f9d2bf551              # double 8.8262909999999994
	.quad	0x4000aba8c586876e              # double 2.0838179999999999
	.quad	0x401b3e34fc610f0f              # double 6.8107490000000004
	.quad	0x400eabd66277c45d              # double 3.8339050000000001
	.quad	0x3fe5c7368ad68837              # double 0.68056799999999995
	.quad	0x3fefa53543aeab7a              # double 0.98891700000000005
	.quad	0x3ff27227d028a1e0              # double 1.1528700000000001
	.quad	0x400b6a42aed13943              # double 3.426885
	.quad	0x4013775d13d74d59              # double 4.8665659999999997
	.quad	0x401fc2617c1bda51              # double 7.9398249999999999
	.quad	0x40168830a0b1bbcf              # double 5.6329979999999997
	.quad	0x401223bd9cae2110              # double 4.5349029999999999
	.quad	0x400122cdc011d367              # double 2.141994
	.quad	0x401bd4107314ca92              # double 6.9570939999999997
	.quad	0x3ffef0c564f97edc              # double 1.9337819999999999
	.quad	0x40235cafb3b75211              # double 9.6810279999999995
	.quad	0x3fed97f1f9acffa8              # double 0.92479800000000001
	.quad	0x400f97fc7607c41a              # double 3.9492120000000002
	.quad	0x400a5267c6b8b695              # double 3.2902369999999999
	.quad	0x3fccae6c8f755369              # double 0.22407299999999999
	.quad	0x4019804fb1183b60              # double 6.3753039999999999
	.quad	0x401d9afe1da7b0b4              # double 7.4013600000000004
	.quad	0x402145e2ef4e0115              # double 8.6364970000000003
	.quad	0x400a5372a38b8ae3              # double 3.2907459999999999
	.quad	0x401b8f6be37de93a              # double 6.8900600000000001
	.quad	0x3fe50ef566490a35              # double 0.65807599999999999
	.quad	0x40166f39d1b2e59b              # double 5.608619
	.quad	0x401d97ce0fc2eba2              # double 7.3982469999999996
	.quad	0x401ba0cd855970b5              # double 6.9070340000000003
	.quad	0x400d25625a682b63              # double 3.6432540000000002
	.quad	0x40202dabe27179c0              # double 8.0892020000000002
	.quad	0x401e1ddb5525cc42              # double 7.5291569999999997
	.quad	0x4003952eb5f5f0b3              # double 2.4478430000000002
	.quad	0x40178fdeb52c9d17              # double 5.890498
	.quad	0x40116ff4ba51a006              # double 4.3593320000000002
	.quad	0x400aeef672b88440              # double 3.3666809999999998
	.quad	0x3fcf527e5215768a              # double 0.24470500000000001
	.quad	0x4017c32441fea811              # double 5.9405679999999998
	.quad	0x40000d413122b7bb              # double 2.006472
	.quad	0x3ff5ec7863beec39              # double 1.3702319999999999
	.quad	0x3ffcc8e9b38d60a6              # double 1.799051
	.quad	0x3ffe99620685553f              # double 1.912447
	.quad	0x401e030a0b1bbcf5              # double 7.502968
	.quad	0x40037a63736cdf26              # double 2.4347599999999998
	.quad	0x3fc607357e670e2c              # double 0.172095
	.quad	0x3fe7118e325d4a5e              # double 0.72089300000000001
	.quad	0x400435393250b524              # double 2.5259879999999999
	.quad	0x3fd8fc0096feb4a6              # double 0.39038099999999998
	.quad	0x401b7ee17a02fb5d              # double 6.873907
	.quad	0x3ffd4e075f6fd220              # double 1.83155
	.quad	0x4004d86db50f40e6              # double 2.6056780000000002
	.quad	0x4011a90752da9867              # double 4.4150669999999996
	.quad	0x400e063d816aceab              # double 3.753047
	.quad	0x40217f162ae4b018              # double 8.7482159999999993
	.quad	0x401c005681ecd4aa              # double 7.0003299999999999
	.quad	0x4023b417ebaf1023              # double 9.8517449999999993
	.quad	0x4010de557de0d66f              # double 4.217123
	.quad	0x3fcd9bfdf7e8038a              # double 0.231323
	.quad	0x401e03baba7b9171              # double 7.5036420000000001
	.quad	0x4013b27674d16335              # double 4.9242800000000004
	.quad	0x40165133c1ce6c09              # double 5.5792989999999998
	.quad	0x401f307d4e09784f              # double 7.7973530000000002
	.quad	0x401f11da7b0b3919              # double 7.7674349999999998
	.quad	0x4022e69142b302f7              # double 9.4503269999999996
	.quad	0x40233837d63022dd              # double 9.6098009999999991
	.quad	0x400717082491afc0              # double 2.8862459999999999
	.quad	0x40064331e3a7daa5              # double 2.78281
	.quad	0x3ff6f586ca89fc6e              # double 1.4349430000000001
	.quad	0x3ffacc729f59ccfb              # double 1.674914
	.quad	0x401c95efa615a8df              # double 7.1464220000000003
	.quad	0x3fa79df548ecd8dc              # double 0.046127000000000001
	.quad	0x3fdb672324c83665              # double 0.42817
	.quad	0x40195a5ebb7739f3              # double 6.3382519999999998
	.quad	0x4018f594af4f0d84              # double 6.2398249999999997
	.quad	0x40178708ede54b49              # double 5.8818700000000002
	.quad	0x400d45d0fa58f712              # double 3.65909
	.quad	0x4014e4102ff8ec10              # double 5.2227180000000004
	.quad	0x400614b05b7cfe58              # double 2.7601019999999998
	.quad	0x401606084a515cea              # double 5.5058910000000001
	.quad	0x4022ac83cafb3b75              # double 9.3369429999999998
	.quad	0x401fbd19157abb88              # double 7.9346659999999999
	.quad	0x4022d714b9cb6849              # double 9.4200800000000004
	.quad	0x4021cb76922d948e              # double 8.8973890000000004
	.quad	0x4017e836a832b991              # double 5.9767710000000003
	.quad	0x402117d86a8fc0d3              # double 8.5465730000000004
	.quad	0x3fe971843c3a42f2              # double 0.79510700000000001
	.quad	0x40205723465625a7              # double 8.1701910000000009
	.quad	0x40007a2e7f6f4be8              # double 2.0596589999999999
	.quad	0x40122fadf2ecf206              # double 4.5465619999999998
	.quad	0x3ffcdcbddb9841ab              # double 1.8038920000000001
	.quad	0x4023d572ffd1dcd7              # double 9.9168929999999999
	.quad	0x400eeae3a3a8e714              # double 3.8646919999999998
	.quad	0x3ffd22749f0e4da1              # double 1.8209120000000001
	.quad	0x40091b3311a543f2              # double 3.1382810000000001
	.quad	0x401b490afe60c38f              # double 6.8213309999999998
	.quad	0x3ff43d7c2ca148bb              # double 1.2650110000000001
	.quad	0x40239b6c3760bf5d              # double 9.8035599999999991
	.quad	0x400aed25edd05293              # double 3.3657949999999999
	.quad	0x3fb53a4f8726d04e              # double 0.082920999999999994
	.quad	0x4017443bf727136a              # double 5.8166349999999998
	.quad	0x4012db80ecfa69be              # double 4.714359
	.quad	0x40166270f3882279              # double 5.5961340000000002
	.quad	0x3ff6e1e4f765fd8b              # double 1.43015
	.quad	0x4010f6c00da1a933              # double 4.2409670000000004
	.quad	0x3f9e5082cf52b90a              # double 0.029603999999999998
	.quad	0x400d2d6a9c560c7c              # double 3.647176
	.quad	0x401fa9ee45c358b0              # double 7.9159480000000002
	.quad	0x3fe1f08461f9f01c              # double 0.56061000000000005
	.quad	0x401da03a7546d3fa              # double 7.4064730000000001
	.quad	0x401777292c493426              # double 5.8663679999999996
	.quad	0x4022580a9de8b3b3              # double 9.1719559999999998
	.quad	0x4006393c46d82ba6              # double 2.7779470000000002
	.quad	0x3ff86db8348f53c5              # double 1.5267869999999999
	.quad	0x400e4cf4a558ea7d              # double 3.7875760000000001
	.quad	0x40115dedaec4a409              # double 4.3417269999999997
	.quad	0x401e23a8e71476b0              # double 7.5348240000000004
	.quad	0x401e14f9c1f85d74              # double 7.5204839999999997
	.quad	0x401373c9eecbfb16              # double 4.8630750000000003
	.quad	0x3ff6b3fd933e35c6              # double 1.4189430000000001
	.quad	0x401b74f722e1ac58              # double 6.8642240000000001
	.quad	0x40209db0ff10ecb7              # double 8.3079909999999995
	.quad	0x402047304039abf3              # double 8.1390399999999996
	.quad	0x3fe403cf2cf95d4f              # double 0.62546500000000005
	.quad	0x401e967f0aa21a72              # double 7.6469690000000003
	.quad	0x401d37cb2d905c03              # double 7.3044859999999998
	.quad	0x3ff757f0ed3d859d              # double 1.4589700000000001
	.quad	0x401ea992c8c50050              # double 7.6655990000000003
	.quad	0x3fe2d47bedb72820              # double 0.58843800000000002
	.quad	0x40004e6b8305d95e              # double 2.0382910000000001
	.quad	0x4021649a133c1ce7              # double 8.6964880000000004
	.quad	0x3ff089d495182a99              # double 1.03365
	.quad	0x400a01d96e9bbf0e              # double 3.2509030000000001
	.quad	0x401e12b5e529bae4              # double 7.5182719999999996
	.quad	0x4019250dae3e6c4c              # double 6.2861849999999997
	.quad	0x40194296f6512a95              # double 6.315029
	.quad	0x4019261240746456              # double 6.2871790000000001
	.quad	0x3fccc5e2cdc011d3              # double 0.22478899999999999
	.quad	0x401531a9fbe76c8b              # double 5.2984999999999998
	.quad	0x3ffcd9b4dcebfec1              # double 1.8031509999999999
	.quad	0x3feaf735c182ecaf              # double 0.84267700000000001
	.quad	0x3fd839d5e4a38327              # double 0.37852999999999998
	.quad	0x401af1d1d4738a3b              # double 6.7361519999999997
	.quad	0x4000b09289dadfb5              # double 2.086217
	.quad	0x40089d0e991ff716              # double 3.0766879999999999
	.quad	0x4021c8eb67c286f9              # double 8.8924210000000006
	.quad	0x3fcdfc43b2dd377e              # double 0.234261
	.quad	0x4018c2e5de15ca6d              # double 6.1903300000000003
	.quad	0x400a8c5974e65bea              # double 3.31853
	.quad	0x401843da2f8bdec6              # double 6.066262
	.quad	0x401b3bc48f10a99b              # double 6.8083669999999996
	.quad	0x40115f50e3476295              # double 4.3430819999999999
	.quad	0x3ff0d8ba40d90e24              # double 1.0529120000000001
	.quad	0x40141fcb0c026cc2              # double 5.0310480000000002
	.quad	0x3fd45a250f840182              # double 0.31800200000000001
	.quad	0x400c6288051c9f73              # double 3.548111
	.quad	0x4020bb98c7e28241              # double 8.3664000000000005
	.quad	0x40096ee5abc0e38a              # double 3.1791489999999998
	.quad	0x3febc75a31a4bdba              # double 0.868085
	.quad	0x4023850dae3e6c4c              # double 9.7598699999999993
	.quad	0x400906b26bf8769f              # double 3.1282700000000001
	.quad	0x401e98e5c4eb56fc              # double 7.6493140000000004
	.quad	0x3ff03a6bd6e8af81              # double 1.0142629999999999
	.quad	0x401e567f4dbdf8f4              # double 7.5844699999999996
	.quad	0x3fd3f0f16f4384ba              # double 0.311581
	.quad	0x4000fcffeb074a77              # double 2.123535
	.quad	0x400070a45d41fa76              # double 2.0550009999999999
	.quad	0x3ff66b4202d9cf14              # double 1.401186
	.quad	0x401fd579f2346562              # double 7.9584729999999997
	.quad	0x3ffb37d84901d191              # double 1.7011339999999999
	.quad	0x401fe0e7ff583a54              # double 7.9696350000000002
	.quad	0x401d5bd3804534bd              # double 7.3396739999999996
	.quad	0x401f34bad7d7c2ca              # double 7.8014939999999999
	.quad	0x40101fc0d2c386d3              # double 4.0310090000000001
	.quad	0x4008ddccea28fe26              # double 3.108301
	.quad	0x40221a1144cbe1eb              # double 9.0509129999999995
	.quad	0x401299d8c6d612c7              # double 4.6502410000000003
	.quad	0x4021f091e215336e              # double 8.9698630000000001
	.quad	0x401265bd0e12e83a              # double 4.5993539999999999
	.quad	0x402081c27e953155              # double 8.2534369999999999
	.quad	0x4022e161e4f765fe              # double 9.4402000000000008
	.quad	0x3fc3055b89939219              # double 0.14860100000000001
	.quad	0x3fdba6c5d206c871              # double 0.43205399999999999
	.quad	0x401717de939eadd6              # double 5.7733100000000004
	.quad	0x401226ca46e08f21              # double 4.5378809999999996
	.quad	0x4012d7e34b945309              # double 4.7108280000000002
	.quad	0x400ee5a3e39f7729              # double 3.8621289999999999
	.quad	0x3ffa3d438d1d8a55              # double 1.6399570000000001
	.quad	0x3fff1b6d43d03969              # double 1.944196
	.quad	0x401ca3e63e8dda49              # double 7.1600580000000003
	.quad	0x3fed56e47dc37a3e              # double 0.91685700000000003
	.quad	0x3fc101322f2734f8              # double 0.13284899999999999
	.quad	0x40114b21815a07b3              # double 4.3233699999999997
	.quad	0x3febf8140dd3fe19              # double 0.87403299999999995
	.quad	0x402321cf56eac860              # double 9.5660349999999994
	.quad	0x401a82dadb8348f5              # double 6.6277879999999998
	.quad	0x402299e1d2178f69              # double 9.3005510000000005
	.quad	0x4003fb7521144cbe              # double 2.4977819999999999
	.quad	0x3fd18f3eccc46951              # double 0.274368
	.quad	0x402368229a5ebb77              # double 9.7033889999999995
	.quad	0x4014d41cc532a498              # double 5.207141
	.quad	0x40101bf8b9baa151              # double 4.0273159999999999
	.quad	0x4011cdddf43c7d5f              # double 4.4510420000000002
	.quad	0x4005e010c6f7a0b6              # double 2.734407
	.quad	0x401f4c011d3671ac              # double 7.8242229999999999
	.quad	0x4002db5393250b52              # double 2.3570929999999999
	.quad	0x40238998f1d3ed52              # double 9.7687449999999991
	.quad	0x3ffd06317268d328              # double 1.814012
	.quad	0x4017be27179bfdf8              # double 5.9356960000000001
	.quad	0x401daf0307f23cc9              # double 7.4209100000000001
	.quad	0x4005d39756c93a71              # double 2.728316
	.quad	0x401b3bbecaab8a5d              # double 6.8083450000000001
	.quad	0x4020d2a1511dffc5              # double 8.4113869999999995
	.quad	0x4018d9389b52007e              # double 6.2121300000000002
	.quad	0x401cbf049a9973da              # double 7.1865410000000001
	.quad	0x400c57b7414a4d2b              # double 3.5428299999999999
	.quad	0x4011d934efcbd556              # double 4.462116
	.quad	0x3ff98b09e98dcdb3              # double 1.5964449999999999
	.quad	0x4007c333fc86cebc              # double 2.9703140000000001
	.quad	0x3ff203cf2cf95d4f              # double 1.1259300000000001
	.quad	0x3ffe14a5df2239e7              # double 1.8800410000000001
	.quad	0x401541ac57e23f25              # double 5.3141340000000001
	.quad	0x402253e74afd5454              # double 9.1638739999999998
	.quad	0x3ff6b1ec0b567558              # double 1.4184380000000001
	.quad	0x4015e7c6327ed84d              # double 5.4763419999999998
	.quad	0x401707d6733ebbfd              # double 5.7576539999999996
	.quad	0x3fd4ae5796bfca86              # double 0.32314100000000001
	.quad	0x3ff42cdd0d8cb07d              # double 1.260953
	.quad	0x40201b3b96af038e              # double 8.0531889999999997
	.quad	0x40148dc0db2702a3              # double 5.1384309999999997
	.quad	0x4019f852b4d8ba41              # double 6.4925030000000001
	.quad	0x3fe83cfd4bf0995b              # double 0.75744500000000003
	.quad	0x3ffc221fafc8b008              # double 1.7583310000000001
	.quad	0x400a93f077ccc038              # double 3.3222360000000002
	.quad	0x400e16ece13f4a99              # double 3.7611940000000001
	.quad	0x400f4cbfb15b573f              # double 3.9124750000000001
	.quad	0x4018f92f2b66b617              # double 6.2433439999999996
	.quad	0x4003e4b90214ad36              # double 2.4866809999999999
	.quad	0x400f0cd962068555              # double 3.8812739999999999
	.quad	0x40184aa9f7b5aea3              # double 6.0729139999999999
	.quad	0x3fe0b734b51372a4              # double 0.52236400000000005
	.quad	0x40090ee5abc0e38a              # double 3.1322739999999998
	.quad	0x4020fe5e2478854d              # double 8.4968120000000003
	.quad	0x40219ee221c8a7a4              # double 8.8103189999999997
	.quad	0x3fef01d5c31593e6              # double 0.968974
	.quad	0x4017f1144cbe1eb4              # double 5.9854289999999999
	.quad	0x3fec671044f1a198              # double 0.88758099999999995
	.quad	0x400d14efcbd55608              # double 3.6352229999999999
	.quad	0x3ff0b6c58eeae9ee              # double 1.0446219999999999
	.quad	0x40083fe86833c600              # double 3.0312049999999999
	.quad	0x40041623076c050c              # double 2.5108090000000001
	.quad	0x4013a7cc39ffd60f              # double 4.9138650000000004
	.quad	0x401a4ff92f2b66b6              # double 6.5780989999999999
	.quad	0x402237f06705c897              # double 9.1092560000000002
	.quad	0x3fcd98d8a979e16d              # double 0.23122699999999999
	.quad	0x401dbad362e90364              # double 7.4324469999999998
	.quad	0x4006b3abc947064f              # double 2.8377300000000001
	.quad	0x401777778dd616f8              # double 5.8666669999999996
	.quad	0x3fdbd7f51efb6dca              # double 0.435056
	.quad	0x400e3bb59ddc1e79              # double 3.7791549999999998
	.quad	0x3ffc0a03c4b09e99              # double 1.752445
	.quad	0x4009e62fdfc19c17              # double 3.2373959999999999
	.quad	0x40197696e58a32f4              # double 6.3658099999999997
	.quad	0x40037e1c15097c81              # double 2.4365770000000002
	.quad	0x3fed1bb6aa4b9885              # double 0.90963300000000002
	.quad	0x4011a9107faa044b              # double 4.4151020000000001
	.quad	0x4020ab951c5c5719              # double 8.3351220000000001
	.quad	0x401e3b73083558a7              # double 7.5580559999999996
	.quad	0x4023efa5093964a6              # double 9.9680560000000007
	.quad	0x4001969a91105e1c              # double 2.198537
	.quad	0x3fd243526527a205              # double 0.28535899999999997
	.quad	0x3fff8f4e874c8ffc              # double 1.9724870000000001
	.quad	0x3fc0cf52b90a7829              # double 0.131327
	.quad	0x400279a38fbca106              # double 2.3093940000000002
	.quad	0x401441733226c3b9              # double 5.0639159999999999
	.quad	0x4018b6d2ed783dff              # double 6.1785389999999998
	.quad	0x3ff05ab191dde376              # double 1.0221420000000001
	.quad	0x401d349e8815e397              # double 7.3013859999999999
	.quad	0x400c14aec8d5c747              # double 3.5100989999999999
	.quad	0x400bb4e4430b178b              # double 3.4633259999999999
	.quad	0x4022683f4eca686e              # double 9.2036079999999991
	.quad	0x40029f50e3476295              # double 2.3277909999999999
	.quad	0x401050ba6266fd65              # double 4.0788359999999999
	.quad	0x3ff6c31bde82d7b6              # double 1.422634
	.quad	0x3ffd95a8deb0fadf              # double 1.849038
	.quad	0x3fca13ec460ed80a              # double 0.203733
	.quad	0x3fe01578a2a90cd4              # double 0.50262099999999998
	.quad	0x4008d126e978d4fe              # double 3.102125
	.quad	0x40100594af4f0d84              # double 4.0054499999999997
	.quad	0x4018791819d2391d              # double 6.1182559999999997
	.quad	0x3ffc936b4c7f3494              # double 1.7859910000000001
	.quad	0x4023fa6bf8769ec3              # double 9.9891050000000003
	.quad	0x401f7caf2d7f950c              # double 7.8717620000000004
	.quad	0x4001bb224aada33c              # double 2.2163740000000001
	.quad	0x400b1b8023a6ce36              # double 3.3884280000000002
	.quad	0x401a5b9170d62bf1              # double 6.5894219999999999
	.quad	0x4023501b866e43aa              # double 9.6564599999999992
	.quad	0x4022cced916872b0              # double 9.4002499999999998
	.size	.L__constant_3500xf64, 28000

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
