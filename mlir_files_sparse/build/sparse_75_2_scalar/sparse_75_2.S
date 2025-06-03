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
	.quad	0x414351af38e79aae              # double 2532190.4445679998
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
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
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
	.size	.L__constant_101xindex_0, 808

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

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	50                              # 0x32
	.quad	50                              # 0x32
	.quad	100                             # 0x64
	.quad	100                             # 0x64
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	200                             # 0xc8
	.quad	200                             # 0xc8
	.quad	250                             # 0xfa
	.quad	250                             # 0xfa
	.quad	300                             # 0x12c
	.quad	300                             # 0x12c
	.quad	350                             # 0x15e
	.quad	350                             # 0x15e
	.quad	400                             # 0x190
	.quad	400                             # 0x190
	.quad	450                             # 0x1c2
	.quad	450                             # 0x1c2
	.quad	500                             # 0x1f4
	.quad	500                             # 0x1f4
	.quad	550                             # 0x226
	.quad	550                             # 0x226
	.quad	600                             # 0x258
	.quad	600                             # 0x258
	.quad	650                             # 0x28a
	.quad	650                             # 0x28a
	.quad	700                             # 0x2bc
	.quad	700                             # 0x2bc
	.quad	750                             # 0x2ee
	.quad	750                             # 0x2ee
	.quad	800                             # 0x320
	.quad	800                             # 0x320
	.quad	850                             # 0x352
	.quad	850                             # 0x352
	.quad	900                             # 0x384
	.quad	900                             # 0x384
	.quad	950                             # 0x3b6
	.quad	950                             # 0x3b6
	.quad	1000                            # 0x3e8
	.quad	1000                            # 0x3e8
	.quad	1050                            # 0x41a
	.quad	1050                            # 0x41a
	.quad	1100                            # 0x44c
	.quad	1100                            # 0x44c
	.quad	1150                            # 0x47e
	.quad	1150                            # 0x47e
	.quad	1200                            # 0x4b0
	.quad	1200                            # 0x4b0
	.quad	1250                            # 0x4e2
	.quad	1250                            # 0x4e2
	.quad	1300                            # 0x514
	.quad	1300                            # 0x514
	.quad	1350                            # 0x546
	.quad	1350                            # 0x546
	.quad	1400                            # 0x578
	.quad	1400                            # 0x578
	.quad	1450                            # 0x5aa
	.quad	1450                            # 0x5aa
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.quad	1550                            # 0x60e
	.quad	1550                            # 0x60e
	.quad	1600                            # 0x640
	.quad	1600                            # 0x640
	.quad	1650                            # 0x672
	.quad	1650                            # 0x672
	.quad	1700                            # 0x6a4
	.quad	1700                            # 0x6a4
	.quad	1750                            # 0x6d6
	.quad	1750                            # 0x6d6
	.quad	1800                            # 0x708
	.quad	1800                            # 0x708
	.quad	1850                            # 0x73a
	.quad	1850                            # 0x73a
	.quad	1900                            # 0x76c
	.quad	1900                            # 0x76c
	.quad	1950                            # 0x79e
	.quad	1950                            # 0x79e
	.quad	2000                            # 0x7d0
	.quad	2000                            # 0x7d0
	.quad	2050                            # 0x802
	.quad	2050                            # 0x802
	.quad	2100                            # 0x834
	.quad	2100                            # 0x834
	.quad	2150                            # 0x866
	.quad	2150                            # 0x866
	.quad	2200                            # 0x898
	.quad	2200                            # 0x898
	.quad	2250                            # 0x8ca
	.quad	2250                            # 0x8ca
	.quad	2300                            # 0x8fc
	.quad	2300                            # 0x8fc
	.quad	2350                            # 0x92e
	.quad	2350                            # 0x92e
	.quad	2400                            # 0x960
	.quad	2400                            # 0x960
	.quad	2450                            # 0x992
	.quad	2450                            # 0x992
	.quad	2500                            # 0x9c4
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
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
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x4005e09e55c0fcb5              # double 2.734677
	.quad	0x4020097aeddce7cd              # double 8.018516
	.quad	0x3ff7cef34d6a161e              # double 1.4880249999999999
	.quad	0x3ffe6b2af145521a              # double 1.9011640000000001
	.quad	0x4015e7325918a00a              # double 5.475778
	.quad	0x4016f3e1c9b41398              # double 5.7381659999999997
	.quad	0x40146d3953dea466              # double 5.1066640000000003
	.quad	0x4020cc6c11a11234              # double 8.3992620000000002
	.quad	0x401b70bbf50e3476              # double 6.8600919999999999
	.quad	0x40040558ea7ce0fc              # double 2.5026109999999999
	.quad	0x3fda1ab4b72c5198              # double 0.40788000000000002
	.quad	0x3ff0d9806f262889              # double 1.0531010000000001
	.quad	0x400c23f8982cb210              # double 3.5175640000000001
	.quad	0x401ebcc92146a1a5              # double 7.6843609999999999
	.quad	0x4022df04ddb5525d              # double 9.4355840000000004
	.quad	0x400c2e1719f7f8cb              # double 3.5225050000000002
	.quad	0x400fe89331a08bfc              # double 3.9885619999999999
	.quad	0x4021f719f7f8ca82              # double 8.9826200000000007
	.quad	0x3ff896777079e59f              # double 1.536735
	.quad	0x40148322291fb3fa              # double 5.1280599999999996
	.quad	0x400681a1db877ab3              # double 2.8132969999999999
	.quad	0x3fed66644d877250              # double 0.91874900000000004
	.quad	0x40064915379fa97e              # double 2.785685
	.quad	0x4015fc0d6f544bb2              # double 5.4961450000000003
	.quad	0x401bf6a7ac81d3aa              # double 6.9908739999999998
	.quad	0x3ff582c5e2cdc012              # double 1.344427
	.quad	0x40055a6612839043              # double 2.6691400000000001
	.quad	0x400e2ba83f4eca68              # double 3.7713169999999998
	.quad	0x3ff5100b45ae5ffa              # double 1.3164169999999999
	.quad	0x3ffdb951c5c5718f              # double 1.8577440000000001
	.quad	0x40229cdcca70d1fa              # double 9.3063719999999996
	.quad	0x4020eee6106ab14f              # double 8.4665990000000004
	.quad	0x401fade58e64b231              # double 7.9198209999999997
	.quad	0x3fd2c2bd7f51efb7              # double 0.29313600000000001
	.quad	0x3fef845dc8323359              # double 0.984908
	.quad	0x3fda57de0d66f0d0              # double 0.41161300000000001
	.quad	0x4022f84230fcf80e              # double 9.4848800000000004
	.quad	0x4022360d887ebf23              # double 9.1055720000000004
	.quad	0x40196fea8112ba17              # double 6.3592930000000001
	.quad	0x3fe3a5892684cf07              # double 0.61395699999999997
	.quad	0x400f55e74299d884              # double 3.9169450000000001
	.quad	0x4008a27179bfdf7f              # double 3.0793180000000002
	.quad	0x3f800abf76a2f48c              # double 0.0078329999999999997
	.quad	0x4016346173b85e81              # double 5.5511530000000002
	.quad	0x3ff5f74cd31769a9              # double 1.372876
	.quad	0x400753cddd6e04c0              # double 2.9159199999999998
	.quad	0x3fe984ee7c49fd7a              # double 0.79747699999999999
	.quad	0x400104adff822bbf              # double 2.1272850000000001
	.quad	0x400aea411c2a0232              # double 3.364382
	.quad	0x402389f2fdb8fde3              # double 9.7694320000000001
	.quad	0x40079549731098d4              # double 2.9478939999999998
	.quad	0x3ff3caaeafab53d6              # double 1.2369829999999999
	.quad	0x3ff15fbe76c8b439              # double 1.0858749999999999
	.quad	0x4014d8c111ada76e              # double 5.2116740000000004
	.quad	0x401ef163fdd65a14              # double 7.7357329999999997
	.quad	0x40025d61f5be5d9e              # double 2.2955969999999999
	.quad	0x3ff50057082491b0              # double 1.3125830000000001
	.quad	0x4022c73ffac1d29e              # double 9.3891600000000004
	.quad	0x4010ed42c3c9eecc              # double 4.2317
	.quad	0x3fc3bd6a593a2df9              # double 0.15421799999999999
	.quad	0x4022b20b8066c2ad              # double 9.3477440000000005
	.quad	0x400a1f50e3476295              # double 3.2652909999999999
	.quad	0x3ff9ada661283904              # double 1.604895
	.quad	0x40162cfbfc6540cc              # double 5.5439299999999996
	.quad	0x401a9bcdbbe0157f              # double 6.6521520000000001
	.quad	0x400a3ed17c5ef630              # double 3.2806730000000002
	.quad	0x40004b91b3f20a74              # double 2.036899
	.quad	0x40159fad2999567e              # double 5.4059340000000002
	.quad	0x3ff2bfa5d28d002e              # double 1.171789
	.quad	0x40217264a16a4873              # double 8.7234239999999996
	.quad	0x3ff87587d6f97679              # double 1.528694
	.quad	0x40119abf76a2f48c              # double 4.4011209999999998
	.quad	0x40166d0c3d25247d              # double 5.6064920000000003
	.quad	0x401880589acbc8c1              # double 6.1253380000000002
	.quad	0x40100897635e742a              # double 4.0083900000000003
	.quad	0x3fec6abffcdab192              # double 0.88803100000000001
	.quad	0x401756d655e28aa4              # double 5.8348019999999998
	.quad	0x4018652eb5f5f0b3              # double 6.0988110000000004
	.quad	0x401c9f75104d551d              # double 7.1557199999999996
	.quad	0x401b9db6e503fb37              # double 6.9040179999999998
	.quad	0x4013029b280f12c2              # double 4.7525449999999996
	.quad	0x40144a732df505d1              # double 5.072705
	.quad	0x4010a853c148344c              # double 4.1643819999999998
	.quad	0x3fec8aefb2aae297              # double 0.89195999999999998
	.quad	0x3fee8986fcdee350              # double 0.95428800000000003
	.quad	0x40234bb3e9a6f827              # double 9.6478570000000001
	.quad	0x4012f8b60f1b25f6              # double 4.7428819999999998
	.quad	0x4021ea7dcbddb984              # double 8.9579909999999998
	.quad	0x4013931b584b1ab1              # double 4.8936590000000004
	.quad	0x3fc9d76683c297c0              # double 0.20188600000000001
	.quad	0x4023379a2834d270              # double 9.6085980000000006
	.quad	0x4022c94013ec460f              # double 9.3930670000000002
	.quad	0x4020a61240746456              # double 8.3243580000000001
	.quad	0x401e483be6601bca              # double 7.5705410000000004
	.quad	0x401e50cf9e3864cb              # double 7.5789169999999996
	.quad	0x3fc1d96e9bbf0dc7              # double 0.13944799999999999
	.quad	0x402114b1ee243569              # double 8.5404199999999992
	.quad	0x4021817f1f9acffa              # double 8.7529229999999991
	.quad	0x402149a77e5eaab0              # double 8.6438559999999995
	.quad	0x401dbe0b0af5fd48              # double 7.4355890000000002
	.quad	0x40216b6aa4b9884c              # double 8.7097979999999992
	.quad	0x4011340420f6f08d              # double 4.3007970000000002
	.quad	0x401f4f401c4fc1df              # double 7.8273929999999998
	.quad	0x3ffc8efdc9c4da90              # double 1.78491
	.quad	0x4020ad2f1a9fbe77              # double 8.3382500000000004
	.quad	0x400dfd34df04ddb5              # double 3.7486359999999999
	.quad	0x4002260cbf2b239a              # double 2.2685789999999999
	.quad	0x400d1d7a13c254a4              # double 3.6393930000000001
	.quad	0x3fee95097c80841f              # double 0.95569300000000001
	.quad	0x401f26173b85e80c              # double 7.7871980000000001
	.quad	0x3fea98fe69270b07              # double 0.83117600000000003
	.quad	0x401b710624dd2f1b              # double 6.8603750000000003
	.quad	0x400d62107b784663              # double 3.6728830000000001
	.quad	0x4006ce53eb399f5e              # double 2.850746
	.quad	0x3fe39e3864cb5bb4              # double 0.61306400000000005
	.quad	0x40210e56abde3fbc              # double 8.5280050000000002
	.quad	0x402374c25072085b              # double 9.7280449999999998
	.quad	0x4023a0642396073e              # double 9.8132640000000002
	.quad	0x3fc182ba5a038195              # double 0.13680200000000001
	.quad	0x3ff213da72a7bd49              # double 1.129847
	.quad	0x401824f9c1f85d74              # double 6.0361089999999997
	.quad	0x4008489e34330d74              # double 3.0354580000000002
	.quad	0x4023b28deb0fadf3              # double 9.8487390000000001
	.quad	0x4014967ad8e43244              # double 5.1469529999999999
	.quad	0x4012cd3671ac14c6              # double 4.7004029999999997
	.quad	0x4011010a99b6f5cb              # double 4.251017
	.quad	0x400d74f82f512663              # double 3.6821139999999999
	.quad	0x401c53854046412d              # double 7.0815630000000001
	.quad	0x4017f935fc3b4f61              # double 5.9933699999999996
	.quad	0x4016110f94c87981              # double 5.516661
	.quad	0x40232086162f166e              # double 9.563523
	.quad	0x401e348344c37e6f              # double 7.5512819999999996
	.quad	0x400d4914b167ec78              # double 3.6606839999999998
	.quad	0x3ff57d8be7296f65              # double 1.343151
	.quad	0x3ffba789e774eebf              # double 1.7284029999999999
	.quad	0x4018e56b441bb8c3              # double 6.2240419999999999
	.quad	0x4012f463497b7415              # double 4.7386600000000003
	.quad	0x401afe2b4959e625              # double 6.7482119999999997
	.quad	0x40204cdee34fc611              # double 8.1501380000000001
	.quad	0x40052646f1561911              # double 2.6436899999999999
	.quad	0x4021b17268d32831              # double 8.8465760000000007
	.quad	0x3ffe26aa8eb46349              # double 1.8844399999999999
	.quad	0x3ff53b9e060fe47a              # double 1.3270550000000001
	.quad	0x400eab2e1693c03c              # double 3.8335840000000001
	.quad	0x4020b5b0574b4070              # double 8.3548609999999996
	.quad	0x4020bbf9e7b80a9e              # double 8.3671410000000002
	.quad	0x4017a0c77dd872f3              # double 5.9070109999999998
	.quad	0x400717e02645e4e7              # double 2.8866580000000002
	.quad	0x401421290257c915              # double 5.0323830000000003
	.quad	0x3ffa194d0dcfcc5c              # double 1.6311770000000001
	.quad	0x3ff32d7518b0d0ee              # double 1.1985980000000001
	.quad	0x400d8bf5d78811b2              # double 3.6933400000000001
	.quad	0x4020f97aeddce7cd              # double 8.487266
	.quad	0x40210d182a9930be              # double 8.5255749999999999
	.quad	0x40226e4dc22ab25b              # double 9.2154369999999997
	.quad	0x3fd47a919695d91b              # double 0.31998100000000002
	.quad	0x40097156191148fe              # double 3.1803400000000002
	.quad	0x4000680389f83be6              # double 2.0507879999999998
	.quad	0x4023c2645e4e69f0              # double 9.8796719999999993
	.quad	0x401df55da272862f              # double 7.4896149999999996
	.quad	0x4023151bb4916ca4              # double 9.5412269999999992
	.quad	0x400f8643cc07aaef              # double 3.9405589999999999
	.quad	0x401e9c69f8c21e1d              # double 7.6527479999999998
	.quad	0x4019194dd72367e4              # double 6.2747109999999999
	.quad	0x4015c292c4934268              # double 5.4400130000000004
	.quad	0x401b4a1e3eaf6838              # double 6.822381
	.quad	0x4016f545846e8f2a              # double 5.7395230000000002
	.quad	0x401001a261bf37b9              # double 4.0015960000000002
	.quad	0x40094bfb15b573eb              # double 3.1621000000000001
	.quad	0x401fcda48b652370              # double 7.9508229999999998
	.quad	0x3fc4b124d099e0e7              # double 0.16165599999999999
	.quad	0x4013e4eb9a176ddb              # double 4.9735550000000002
	.quad	0x40221c79d4d83409              # double 9.0556169999999998
	.quad	0x4014293af74cd317              # double 5.0402639999999996
	.quad	0x3fe0e310dbf0563f              # double 0.52771800000000002
	.quad	0x401171cb89d6adf7              # double 4.3611279999999999
	.quad	0x4012aed5ae1cde5d              # double 4.6707369999999999
	.quad	0x40205d887ebf22c0              # double 8.1826819999999998
	.quad	0x401d396cc5fbf834              # double 7.3060790000000004
	.quad	0x3fc521682f944242              # double 0.16508200000000001
	.quad	0x4016aae5bc87db2b              # double 5.6668919999999998
	.quad	0x40017adf2ecf2064              # double 2.1849959999999999
	.quad	0x3fe851e96c3fc43b              # double 0.75999899999999998
	.quad	0x4023970995aaf790              # double 9.7949950000000001
	.quad	0x4022852178f68be3              # double 9.2600210000000001
	.quad	0x402136d9dfdac68b              # double 8.6071310000000008
	.quad	0x40154b302f72b453              # double 5.3234260000000004
	.quad	0x401097bcc2938de7              # double 4.1481810000000001
	.quad	0x401b412d77318fc5              # double 6.81365
	.quad	0x402245e7a743a648              # double 9.136533
	.quad	0x401558f605ab3aac              # double 5.3368760000000002
	.quad	0x4014993b7d84901d              # double 5.1496409999999999
	.quad	0x401a0681ecd4aa11              # double 6.5063550000000001
	.quad	0x3fe8b1b152f3c2db              # double 0.77169100000000002
	.quad	0x40043f6e3f78bbd4              # double 2.5309720000000002
	.quad	0x40129cef672b8844              # double 4.653257
	.quad	0x3ff62ac647778dd6              # double 1.385443
	.quad	0x4023b600d1b71759              # double 9.8554750000000002
	.quad	0x3fee364388ebcc6c              # double 0.94412399999999996
	.quad	0x4021c44fa05143bf              # double 8.8834199999999992
	.quad	0x3ff0bebaf102363b              # double 1.046565
	.quad	0x400e7cb5781c7150              # double 3.8108930000000001
	.quad	0x402133af31b152f4              # double 8.6009460000000004
	.quad	0x401874028e4fb97c              # double 6.1132910000000003
	.quad	0x401a8bf26f1dc50d              # double 6.6366670000000001
	.quad	0x4021042a02320968              # double 8.5081330000000008
	.quad	0x4000418266772d5e              # double 2.031987
	.quad	0x4022a300ffda4053              # double 9.3183670000000003
	.quad	0x4022f290cd423d92              # double 9.4737609999999997
	.quad	0x401458ceb356da01              # double 5.0867259999999996
	.quad	0x40236d634549b62c              # double 9.7136479999999991
	.quad	0x3fc9c6d1e108c3f4              # double 0.20138
	.quad	0x401bd2e33eff1950              # double 6.9559449999999998
	.quad	0x4011de175d13d74d              # double 4.4668859999999997
	.quad	0x3fe83f1a5ca29846              # double 0.75770300000000002
	.quad	0x401f5c9d5a187a4a              # double 7.8404439999999997
	.quad	0x3ffa013a92a30553              # double 1.6253
	.quad	0x4019ca5614df8b15              # double 6.4475939999999996
	.quad	0x402282493c89f40a              # double 9.2544649999999997
	.quad	0x401ee8abd5dc4007              # double 7.7272179999999996
	.quad	0x401a952ac753e708              # double 6.6456710000000001
	.quad	0x40143e154434e337              # double 5.0606280000000003
	.quad	0x401030157eed45e9              # double 4.0469569999999999
	.quad	0x401e0cc78e9f6a94              # double 7.51248
	.quad	0x3ffe7a4b5568e821              # double 1.904857
	.quad	0x3ffd2536501e2585              # double 1.821585
	.quad	0x40053c3265add9c2              # double 2.6543929999999998
	.quad	0x400a90374ff865d8              # double 3.3204180000000001
	.quad	0x3ff1e6d04e618ce3              # double 1.118851
	.quad	0x4020b37952d234ec              # double 8.3505350000000007
	.quad	0x4021e431593e5fb7              # double 8.9456889999999998
	.quad	0x4018393ccd0fe8ab              # double 6.0558959999999997
	.quad	0x3ff3b402d16b97ff              # double 1.2314480000000001
	.quad	0x3ff344c37e6f71a8              # double 1.204288
	.quad	0x400e4851a8694035              # double 3.7853119999999998
	.quad	0x3ff9aeaa6d267408              # double 1.605143
	.quad	0x4015275ab7dc7ac0              # double 5.2884320000000002
	.quad	0x40030c79f666234b              # double 2.3810920000000002
	.quad	0x4016149b1fab96f2              # double 5.5201229999999999
	.quad	0x40172fad6cb53501              # double 5.7965600000000004
	.quad	0x400c764628027d89              # double 3.5577510000000001
	.quad	0x3ffd257fb69984a1              # double 1.821655
	.quad	0x401b012839042d8c              # double 6.7511299999999999
	.quad	0x4022c870329802c1              # double 9.3914810000000006
	.quad	0x3ff2049ba5e353f8              # double 1.126125
	.quad	0x40229281dc0db270              # double 9.2861469999999997
	.quad	0x4014a982cb20fb22              # double 5.1655379999999997
	.quad	0x40198c5f7c6759ab              # double 6.3870829999999996
	.quad	0x4019cb21c475e636              # double 6.4483709999999999
	.quad	0x4010ed0d49949e88              # double 4.2314959999999999
	.quad	0x4021f53c579f2346              # double 8.9789759999999994
	.quad	0x401a4adcd2d44dcb              # double 6.5731080000000004
	.quad	0x40135d3bf2f55582              # double 4.8410489999999999
	.quad	0x40167e3eaf6837f8              # double 5.6232860000000002
	.quad	0x40221daf07bfe7e2              # double 9.057976
	.quad	0x40161a8a3f8982cb              # double 5.5259179999999999
	.quad	0x4013b65b20b8066c              # double 4.9280819999999999
	.quad	0x3fe142f837b4a234              # double 0.53942500000000004
	.quad	0x4023f18fa376922e              # double 9.9717990000000007
	.quad	0x40153a6b0d9513f9              # double 5.3070490000000001
	.quad	0x4014edd0d8cb07d1              # double 5.2322420000000003
	.quad	0x401e8b78cc9a77e6              # double 7.6362030000000001
	.quad	0x4023479ce8d972cd              # double 9.6398689999999991
	.quad	0x40062d9ad85dfa87              # double 2.772268
	.quad	0x4013175818c5c9a3              # double 4.7727969999999997
	.quad	0x402112c083126e98              # double 8.5366250000000008
	.quad	0x4003d0b417ca2121              # double 2.4769060000000001
	.quad	0x3fdbf7b5aea3161a              # double 0.43699399999999999
	.quad	0x4022d9f77292c493              # double 9.4257159999999995
	.quad	0x4018a3e1437c5693              # double 6.1600390000000003
	.quad	0x40230999780baa58              # double 9.5187489999999996
	.quad	0x3fe344934267839d              # double 0.60212100000000002
	.quad	0x3ff9e5375c8d9f90              # double 1.6184609999999999
	.quad	0x40022d9be4cd7492              # double 2.2722699999999998
	.quad	0x401b4783dff3f0fe              # double 6.819839
	.quad	0x4000222d5171e29b              # double 2.0166879999999998
	.quad	0x4017e6adb402d16c              # double 5.9752720000000004
	.quad	0x4023a84e3ffef391              # double 9.8287220000000008
	.quad	0x40228012599ed7c7              # double 9.25014
	.quad	0x400d4bb44e50c5eb              # double 3.6619649999999999
	.quad	0x40206f5dbb9cf9a0              # double 8.2175119999999993
	.quad	0x40138f92f2b66b61              # double 4.8902089999999996
	.quad	0x400b3287c200c0f0              # double 3.3996729999999999
	.quad	0x40174f9bdc69f8c2              # double 5.8277429999999999
	.quad	0x3ffe4359bc33f855              # double 1.891443
	.quad	0x401f72b6f19934f0              # double 7.8620260000000002
	.quad	0x40196d0917d6b65b              # double 6.3564800000000004
	.quad	0x400860fdc1615ec0              # double 3.0473590000000002
	.quad	0x400ba880d801b435              # double 3.4572769999999999
	.quad	0x401a599e94ab1d50              # double 6.5875190000000003
	.quad	0x400a3eff9f87f024              # double 3.280761
	.quad	0x4020566cd29131ec              # double 8.1687989999999999
	.quad	0x4013518dac258d58              # double 4.8296419999999998
	.quad	0x401f0a9f7b5aea31              # double 7.7603739999999996
	.quad	0x4020de3e29307af2              # double 8.4340679999999999
	.quad	0x3ff22fcefaa4766c              # double 1.1366719999999999
	.quad	0x4017b62131a8ef78              # double 5.927861
	.quad	0x4020291233df2a9d              # double 8.0802169999999993
	.quad	0x40174e7e62dc6e2b              # double 5.8266540000000004
	.quad	0x3fef1b068123810f              # double 0.97204900000000005
	.quad	0x4012979463cfb331              # double 4.6480269999999999
	.quad	0x4011474ddf86e3b4              # double 4.3196329999999996
	.quad	0x3fedf49f0e4da09d              # double 0.93611100000000003
	.quad	0x40063debd9018e75              # double 2.7802349999999998
	.quad	0x3ffcb5b4edb2f662              # double 1.794362
	.quad	0x402024e4430b178b              # double 8.0720539999999996
	.quad	0x401067470eb24a6b              # double 4.1008570000000004
	.quad	0x40099e76427c7c52              # double 3.2023739999999998
	.quad	0x3ff94635a426bb56              # double 1.5796410000000001
	.quad	0x4012c28997c3d684              # double 4.689978
	.quad	0x40228fa7c9de0503              # double 9.2805769999999992
	.quad	0x40169c6822ff0889              # double 5.6527409999999998
	.quad	0x3fd442bb6672fba0              # double 0.31657299999999999
	.quad	0x4021d9ac79702e66              # double 8.9251439999999995
	.quad	0x4022f57b2031ceaf              # double 9.4794549999999997
	.quad	0x401d98a7a41e57da              # double 7.3990770000000001
	.quad	0x401e8fed634549b6              # double 7.6405539999999998
	.quad	0x4005233eff195033              # double 2.6422099999999999
	.quad	0x4021e8626f60e0eb              # double 8.9538759999999993
	.quad	0x3ff04393682730c6              # double 1.0164979999999999
	.quad	0x4016f075f6fd21ff              # double 5.7348249999999998
	.quad	0x3fe9b25918a009f6              # double 0.80302099999999998
	.quad	0x401eb3bd5992428d              # double 7.6755269999999997
	.quad	0x400663e29307af21              # double 2.798772
	.quad	0x400ae602c9081c2e              # double 3.3623099999999999
	.quad	0x4018496f6512a950              # double 6.0717140000000001
	.quad	0x4020c75f6fd21ff3              # double 8.3894000000000002
	.quad	0x401b85692b3cc4ac              # double 6.8802839999999996
	.quad	0x402199f79420b3d5              # double 8.8007170000000006
	.quad	0x3ff303cf2cf95d4f              # double 1.1884300000000001
	.quad	0x401a20d9513f8db5              # double 6.5320790000000004
	.quad	0x4007ca93f290abb4              # double 2.9739149999999999
	.quad	0x401effe047d3d428              # double 7.7498789999999999
	.quad	0x4023fb5286b59147              # double 9.9908640000000001
	.quad	0x4001a2374794ea07              # double 2.2042069999999998
	.quad	0x4016853b4b2fa93b              # double 5.630109
	.quad	0x400404020817fc76              # double 2.501957
	.quad	0x4017b49906cca2db              # double 5.9263649999999997
	.quad	0x4016059578a2a90d              # double 5.5054530000000002
	.quad	0x3fdbd75e2046c765              # double 0.43502000000000002
	.quad	0x4003ee779207d4e1              # double 2.4914390000000002
	.quad	0x4011f9784ec636b1              # double 4.4936230000000004
	.quad	0x4018ea02b841248d              # double 6.2285259999999996
	.quad	0x40161353b4b2fa94              # double 5.5188740000000003
	.quad	0x4005a05f6ba0620b              # double 2.7033070000000001
	.quad	0x401e118a009f6230              # double 7.5171279999999996
	.quad	0x3fd2aa1d755bccaf              # double 0.29163299999999998
	.quad	0x400cd15ad106ee31              # double 3.6022240000000001
	.quad	0x401b6a9de8b3b320              # double 6.8541179999999997
	.quad	0x401c8fd75e2046c7              # double 7.1404699999999997
	.quad	0x4018dd8127b2cc71              # double 6.2163130000000004
	.quad	0x4012b4302b40f66a              # double 4.6759649999999997
	.quad	0x3ffccf3dc054ef46              # double 1.8005960000000001
	.quad	0x401fdb7521144cbe              # double 7.9643139999999999
	.quad	0x400d7c23b7952d23              # double 3.6856149999999999
	.quad	0x3fef280cf9e3864d              # double 0.97363900000000003
	.quad	0x4014f4545846e8f3              # double 5.2386030000000003
	.quad	0x402096f0ae536502              # double 8.2948050000000002
	.quad	0x3fed3c8c0ce91c8f              # double 0.91364100000000004
	.quad	0x4004d24180d3cff6              # double 2.6026639999999999
	.quad	0x40219901b003686a              # double 8.7988409999999995
	.quad	0x3fdcd323fee2c98e              # double 0.45038699999999998
	.quad	0x402392e0e30446b7              # double 9.7868720000000006
	.quad	0x401e14755ffe6d59              # double 7.5199790000000001
	.quad	0x401bafb7e90ff972              # double 6.9215999999999998
	.quad	0x3ffdcbaa582dbe7f              # double 1.862223
	.quad	0x401f846a1a500d5f              # double 7.8793110000000003
	.quad	0x4001d77c88e79aae              # double 2.2302179999999998
	.quad	0x40236c521dda059a              # double 9.7115639999999992
	.quad	0x3fe1df71eafee6fb              # double 0.55852599999999997
	.quad	0x4010d40181e03f70              # double 4.2070369999999997
	.quad	0x3fe83acd5b6805a3              # double 0.75717800000000002
	.quad	0x4010ee85fd04a2fd              # double 4.2329330000000001
	.quad	0x4015a446b69db65f              # double 5.4104260000000002
	.quad	0x4023b260f5e41d4b              # double 9.8483959999999992
	.quad	0x4019e0214ad362e9              # double 6.468877
	.quad	0x3faddc8323358f2e              # double 0.058323
	.quad	0x4022751f1cfbb949              # double 9.2287529999999993
	.quad	0x4019fab6d00b45ae              # double 6.4948379999999997
	.quad	0x4023817b95a29414              # double 9.7528959999999997
	.quad	0x40207bfbdf090f73              # double 8.2421559999999996
	.quad	0x3fea436b8f9b1316              # double 0.82072999999999996
	.quad	0x3fecaa737110e454              # double 0.89580700000000001
	.quad	0x40109224aada33be              # double 4.1427180000000003
	.quad	0x40003d07c84b5dcc              # double 2.0297999999999998
	.quad	0x4008a22ee41919ac              # double 3.0791909999999998
	.quad	0x3ff59a6c5d206c87              # double 1.350201
	.quad	0x4023544d22c881e4              # double 9.6646509999999992
	.quad	0x40209203a322af57              # double 8.2851839999999992
	.quad	0x40001e1869835159              # double 2.0146950000000001
	.quad	0x401236a055757d5b              # double 4.5533460000000003
	.quad	0x3fdae5082cf52b91              # double 0.42022900000000002
	.quad	0x401d767dfe32a066              # double 7.3657149999999998
	.quad	0x4003270a808c825a              # double 2.3940630000000001
	.quad	0x40205688bda9435b              # double 8.1690120000000004
	.quad	0x401f013e81450efe              # double 7.7512150000000002
	.quad	0x402049b62c77574f              # double 8.1439679999999992
	.quad	0x401cdab3edd8b60f              # double 7.2135769999999999
	.quad	0x4002aef8055fbb51              # double 2.3354339999999998
	.quad	0x3ff7193b3a68b19a              # double 1.4436599999999999
	.quad	0x3ffe7beb9e492bc3              # double 1.905254
	.quad	0x401550f66a550870              # double 5.3290649999999999
	.quad	0x400ab5104d551d69              # double 3.3384100000000001
	.quad	0x401d0c03ff69014b              # double 7.2617339999999997
	.quad	0x400377be121ee675              # double 2.433468
	.quad	0x3fe893660e51d25b              # double 0.76799300000000004
	.quad	0x401387867f0aa21a              # double 4.8823489999999996
	.quad	0x4019e6d1e108c3f4              # double 6.4754100000000001
	.quad	0x4022708d6d3b6cbe              # double 9.2198290000000007
	.quad	0x40188d556084a516              # double 6.1380210000000002
	.quad	0x402033311a543f1c              # double 8.0999839999999991
	.quad	0x40167899bf5946c3              # double 5.6177739999999998
	.quad	0x40121b0531982880              # double 4.5263869999999997
	.quad	0x401f09524bfd2e94              # double 7.7591029999999996
	.quad	0x4017716a48733659              # double 5.8607570000000004
	.quad	0x400d5884c6a3bde0              # double 3.6682220000000001
	.quad	0x400ea50374ff865d              # double 3.8305729999999998
	.quad	0x401644202d9cf13d              # double 5.5665290000000001
	.quad	0x40183bc0a06e9ff1              # double 6.0583520000000002
	.quad	0x4014dd72ffd1dcd7              # double 5.216259
	.quad	0x3feef913e81450f0              # double 0.96790500000000002
	.quad	0x3ff24baf965b20b8              # double 1.143478
	.quad	0x3ff1f2d3c792d128              # double 1.1217839999999999
	.quad	0x40128bef8ceb356e              # double 4.6366560000000003
	.quad	0x4022e4606748e475              # double 9.4460479999999993
	.quad	0x4023fb14ca925fe9              # double 9.9903929999999991
	.quad	0x4021358bc59b8024              # double 8.6045820000000006
	.quad	0x4022e62e6ea85447              # double 9.4495729999999991
	.quad	0x40229cdcca70d1fa              # double 9.3063719999999996
	.quad	0x4021b4cdb7ae5797              # double 8.8531320000000004
	.quad	0x3fc92dd377e1b8ed              # double 0.196711
	.quad	0x4017df20a73f748a              # double 5.9678979999999999
	.quad	0x4014d1b4bb5e0f80              # double 5.2047910000000002
	.quad	0x401491709310129d              # double 5.1420310000000002
	.quad	0x4011ad7fd82773e2              # double 4.4194329999999997
	.quad	0x400bb3c36113404f              # double 3.4627750000000002
	.quad	0x401c00d5a5b9628d              # double 7.0008150000000002
	.quad	0x4020061e2de87097              # double 8.0119489999999995
	.quad	0x4018cc77dd872f34              # double 6.1996760000000002
	.quad	0x4020dc12ad81adeb              # double 8.4298300000000008
	.quad	0x4000e7fbacb42891              # double 2.113273
	.quad	0x400b26a98244e93e              # double 3.393878
	.quad	0x3ffb7f1737542a24              # double 1.7185280000000001
	.quad	0x40113c4fc1df3301              # double 4.3088980000000001
	.quad	0x400cdff9b56323bc              # double 3.6093630000000001
	.quad	0x4012dcb74ddf86e4              # double 4.7155430000000003
	.quad	0x40216fa3b9ae0c17              # double 8.7180459999999993
	.quad	0x402111715c63ae25              # double 8.5340679999999995
	.quad	0x3fd7e64f54d1e96c              # double 0.37343199999999999
	.quad	0x40165fdda8bd230c              # double 5.5936190000000003
	.quad	0x4019a9835158b828              # double 6.41554
	.quad	0x400df9f0a1be2b49              # double 3.7470409999999998
	.quad	0x3ff9eac96cc5fbf8              # double 1.619821
	.quad	0x3fe373519bd4067d              # double 0.60782700000000001
	.quad	0x4018df965b20b806              # double 6.2183469999999996
	.quad	0x4014638e6d15ad10              # double 5.0972229999999996
	.quad	0x3ffaac083126e979              # double 1.667
	.quad	0x401e703148776816              # double 7.6095629999999996
	.quad	0x40143894c447c30d              # double 5.0552549999999998
	.quad	0x4004d4845132f87b              # double 2.6037680000000001
	.quad	0x400544a2fcefaa47              # double 2.6585139999999998
	.quad	0x40044f8487b99d45              # double 2.5388269999999999
	.quad	0x401a65a8deb0fadf              # double 6.5992769999999998
	.quad	0x3fe5519bd4067cf2              # double 0.66621200000000003
	.quad	0x40233879c4113c68              # double 9.6103039999999992
	.quad	0x400734330d73860a              # double 2.9004880000000002
	.quad	0x401537a28bb0a2cb              # double 5.3043310000000004
	.quad	0x4022061719f7f8cb              # double 9.0118950000000009
	.quad	0x400f0180d3cff64d              # double 3.875734
	.quad	0x401f352c59fb1e19              # double 7.801927
	.quad	0x401687dc7abfb9bf              # double 5.6326770000000002
	.quad	0x401f2e5ffa3b9ae1              # double 7.7952880000000002
	.quad	0x40239c14c660a201              # double 9.8048459999999995
	.quad	0x4006dc371da37ef6              # double 2.8575270000000002
	.quad	0x400916ece13f4a99              # double 3.1361940000000001
	.quad	0x4018d23cc8de2ac3              # double 6.2053099999999999
	.quad	0x4022bb5525cc4263              # double 9.3658839999999994
	.quad	0x4001ad6a9c560c7c              # double 2.209676
	.quad	0x40107abcd78c4370              # double 4.1198610000000002
	.quad	0x4018bdd76683c298              # double 6.1853920000000002
	.quad	0x3fc3852f7f498c3b              # double 0.152502
	.quad	0x3ff80039abf33871              # double 1.5000549999999999
	.quad	0x3ff8d2b5e529bae4              # double 1.5514429999999999
	.quad	0x3feead27807789a4              # double 0.95863699999999996
	.quad	0x3fbfab7564302b41              # double 0.12371
	.quad	0x401eea4f440af1cc              # double 7.7288180000000004
	.quad	0x3fecf765fd8adaba              # double 0.9052
	.quad	0x4019e54823854046              # double 6.4739079999999998
	.quad	0x4022e273929ed395              # double 9.4422879999999995
	.quad	0x3fd356fb8f57f738              # double 0.30218400000000001
	.quad	0x4021790e02214270              # double 8.7364350000000002
	.quad	0x3ff1aa65cf67b1c0              # double 1.104101
	.quad	0x401b4abead4f5904              # double 6.8229930000000003
	.quad	0x4022cfd82773e250              # double 9.4059460000000001
	.quad	0x401a38a0902de00d              # double 6.5552999999999999
	.quad	0x3fdb9fc2a8869c67              # double 0.43162600000000001
	.quad	0x4022725d6bebe165              # double 9.2233689999999999
	.quad	0x4018d59146e4c0df              # double 6.2085619999999997
	.quad	0x401fd811b1d92b80              # double 7.9610050000000001
	.quad	0x40132c79702e6645              # double 4.7934320000000001
	.quad	0x402398e53eb399f6              # double 9.7986240000000002
	.quad	0x401df52e72da1230              # double 7.4894350000000003
	.quad	0x40165c7219220ff5              # double 5.5902789999999998
	.quad	0x40047a0f9096bb99              # double 2.5596000000000001
	.quad	0x3ffbe2cdc011d367              # double 1.742872
	.quad	0x4013e74d1633482c              # double 4.9758800000000001
	.quad	0x3fdd6a6e32e3821b              # double 0.459621
	.quad	0x3feac2bb6672fba0              # double 0.83627099999999998
	.quad	0x4013634b945308bc              # double 4.8469680000000004
	.quad	0x401c7b790fb65669              # double 7.1205790000000002
	.quad	0x402384cdb7ae5797              # double 9.7593820000000004
	.quad	0x40215e1f7d73c925              # double 8.6838339999999992
	.quad	0x4008ca4a05dd8f93              # double 3.0987740000000001
	.quad	0x402373a96d4c33b5              # double 9.7259019999999996
	.quad	0x40116d451fc4c166              # double 4.3567090000000004
	.quad	0x40085acf7446f9ba              # double 3.0443410000000002
	.quad	0x400fee99a62ed352              # double 3.9915039999999999
	.quad	0x4019255d5f56a7ad              # double 6.2864890000000004
	.quad	0x3ff1da5332acfb76              # double 1.115802
	.quad	0x401eda20578e5c4f              # double 7.7130140000000002
	.quad	0x3fd1558a76102795              # double 0.27084599999999998
	.quad	0x40213b9c7368ad69              # double 8.6164280000000009
	.quad	0x4023dcb1ee243569              # double 9.9310449999999992
	.quad	0x400d14916ca46e09              # double 3.635043
	.quad	0x40208c9be8ff327b              # double 8.2746270000000006
	.quad	0x3ff776d7625204b0              # double 1.4665140000000001
	.quad	0x3ffaa0b1bbcf4e87              # double 1.6642319999999999
	.quad	0x4011ceadd590c0ad              # double 4.451835
	.quad	0x40039acffa7eb6bf              # double 2.4505919999999999
	.quad	0x401191615ebfa8f8              # double 4.3919730000000001
	.quad	0x4021c9b2e59af9ec              # double 8.8939430000000001
	.quad	0x4011636da87a072d              # double 4.3470979999999999
	.quad	0x4006cdfd694ccab4              # double 2.850581
	.quad	0x40051b01c92ddbdb              # double 2.6381869999999998
	.quad	0x40102c84f8f8a4c2              # double 4.0434760000000001
	.quad	0x3fd62ad81adea897              # double 0.34636499999999998
	.quad	0x4012728954a7f801              # double 4.6118519999999998
	.quad	0x4016791d57ff9b56              # double 5.6182759999999998
	.quad	0x400055e39713ad5c              # double 2.041938
	.quad	0x3fd16af46aa087ca              # double 0.27215299999999998
	.quad	0x4014cdf1e0828c37              # double 5.2011180000000001
	.quad	0x3fdefa5d28d002e2              # double 0.48403099999999999
	.quad	0x40219fa9e2bcf91a              # double 8.8118429999999996
	.quad	0x401dcafd113836a8              # double 7.4482309999999998
	.quad	0x401a682e44b6e936              # double 6.6017390000000002
	.quad	0x4017ffdb4cc25072              # double 5.99986
	.quad	0x401b8b44e50c5eb3              # double 6.8860049999999999
	.quad	0x40074a4db163baba              # double 2.9112809999999998
	.quad	0x3fed49bc77143394              # double 0.91525100000000003
	.quad	0x3fd1a411c2a02321              # double 0.27563900000000002
	.quad	0x4022c3cec84f8f8a              # double 9.3824369999999995
	.quad	0x402080a32f44912a              # double 8.2512450000000008
	.quad	0x400561461b6d43d0              # double 2.6724969999999999
	.quad	0x40202568405b39e2              # double 8.0730609999999992
	.quad	0x3ff1014f8b588e37              # double 1.0628200000000001
	.quad	0x40089248d7e02646              # double 3.071428
	.quad	0x4016224d099e0e73              # double 5.5334969999999997
	.quad	0x401707589efd86a9              # double 5.757174
	.quad	0x402319f644955b46              # double 9.5507069999999992
	.quad	0x40043cff64cf8d71              # double 2.5297839999999998
	.quad	0x3fdd3a29c779a6b5              # double 0.456675
	.quad	0x4023c911f0c34c1b              # double 9.8927150000000008
	.quad	0x401b1a2be0589acc              # double 6.7755580000000002
	.quad	0x3fee5f809917939a              # double 0.94915799999999995
	.quad	0x401339d55e6bc622              # double 4.8064780000000003
	.quad	0x3ff036262cba732e              # double 1.01322
	.quad	0x4012b3f4666ec9e2              # double 4.6757369999999998
	.quad	0x401eec3265add9c2              # double 7.7306609999999996
	.quad	0x4018f320535c9e67              # double 6.2374280000000004
	.quad	0x4007fbea0ba1f4b2              # double 2.998005
	.quad	0x4006054477ff151e              # double 2.7525719999999998
	.quad	0x3fe135c5b4aa9718              # double 0.53781400000000001
	.quad	0x4020d809d495182b              # double 8.4219500000000007
	.quad	0x4008fed5ae1cde5d              # double 3.124431
	.quad	0x3ffb24840e1719f8              # double 1.696415
	.quad	0x401f744ae85b9e8c              # double 7.8635669999999998
	.quad	0x400acb5d462c343b              # double 3.3492989999999998
	.quad	0x40223c41bb8c32a9              # double 9.1176890000000004
	.quad	0x3fe13f9c62a1b5c8              # double 0.53901500000000002
	.quad	0x401607a52ac753e7              # double 5.507466
	.quad	0x401235870da5daf0              # double 4.5522729999999996
	.quad	0x400b3b24e9c45458              # double 3.4038789999999999
	.quad	0x4021ba497fa5d28d              # double 8.863842
	.quad	0x4014bf21f6cacd18              # double 5.1866529999999997
	.quad	0x40157add9c27e953              # double 5.3699859999999999
	.quad	0x3fe5c4156e264e48              # double 0.68018599999999996
	.quad	0x4018829802c0a4a0              # double 6.1275329999999997
	.quad	0x40207131ec0b5675              # double 8.2210839999999994
	.quad	0x3fe6ecfe9b7bf1e9              # double 0.71643000000000001
	.quad	0x4010bd4306e5cd4f              # double 4.1848260000000002
	.quad	0x400401294573a798              # double 2.5005670000000002
	.quad	0x401c7c6088d6d3b7              # double 7.1214620000000002
	.quad	0x40008d71f36262cc              # double 2.0690650000000002
	.quad	0x40230704577d9557              # double 9.5137049999999998
	.quad	0x4022b7c0096feb4a              # double 9.3588869999999993
	.quad	0x4016348e8a71de6a              # double 5.5513250000000003
	.quad	0x4010f75a74c09c3d              # double 4.2415560000000001
	.quad	0x400e1c087442c7fc              # double 3.7636880000000001
	.quad	0x4014583cafb3b752              # double 5.0861689999999999
	.quad	0x401d93a1d323fee3              # double 7.3941720000000002
	.quad	0x4023722595bbbe88              # double 9.7229430000000007
	.quad	0x402099e364bec67a              # double 8.3005630000000004
	.quad	0x40086e496ededaec              # double 3.0538509999999999
	.quad	0x4020feba8c586877              # double 8.4975170000000002
	.quad	0x40228633269df97b              # double 9.2621090000000006
	.quad	0x3fe0ce8101f31f47              # double 0.52520800000000001
	.quad	0x4018834b51372a39              # double 6.1282170000000002
	.quad	0x4013ed017dae8188              # double 4.9814509999999999
	.quad	0x40231015a07b352b              # double 9.5314150000000008
	.quad	0x402066cfa69be09c              # double 8.2008030000000005
	.quad	0x402257455a7d2418              # double 9.1704509999999999
	.quad	0x4022bf00cd855971              # double 9.3730530000000005
	.quad	0x3fd337a3db3bfb59              # double 0.30027100000000001
	.quad	0x401db67dbb16c1e3              # double 7.4282139999999997
	.quad	0x401f77a63736cdf2              # double 7.8668449999999996
	.quad	0x4017c705425f2021              # double 5.944356
	.quad	0x3faabbcb1cc96463              # double 0.052214000000000003
	.quad	0x4015bf3eccc46951              # double 5.436763
	.quad	0x40226f487fcb923a              # double 9.2173499999999997
	.quad	0x401b1b66b6177ea2              # double 6.7767590000000002
	.quad	0x3ffd48f861a60d45              # double 1.8303149999999999
	.quad	0x4022e1bdc69f8c22              # double 9.4409010000000002
	.quad	0x3ff88b2c83ec892b              # double 1.5339780000000001
	.quad	0x3fd501b866e43aa8              # double 0.32823000000000002
	.quad	0x40106426fe718a87              # double 4.0978050000000001
	.quad	0x4003538d60a63305              # double 2.415797
	.quad	0x3ff0b64cf8d716d3              # double 1.0445070000000001
	.quad	0x4022ed7eaa2a0a96              # double 9.4638570000000009
	.quad	0x401fdbd48cb4aec9              # double 7.9646780000000001
	.quad	0x401b11b4bb5e0f80              # double 6.7672910000000002
	.quad	0x3fedb1b9b66f9336              # double 0.92794500000000002
	.quad	0x4001cde657b84dba              # double 2.2255370000000001
	.quad	0x402273d09e12a51e              # double 9.2262009999999997
	.quad	0x4023a75ab7dc7ac0              # double 9.8268640000000004
	.quad	0x4015d976bc1effa0              # double 5.4623670000000004
	.quad	0x400f655c0fcb4f1e              # double 3.9244919999999999
	.quad	0x3fbcf7a919695d92              # double 0.113154
	.quad	0x400c8ea0fd3b29a2              # double 3.5696430000000001
	.quad	0x3fbadfe75bc44bf5              # double 0.104979
	.quad	0x4022e92ab68cef67              # double 9.4554039999999996
	.quad	0x3ff579591cd1c7de              # double 1.3421259999999999
	.quad	0x400936f6512a94ff              # double 3.151837
	.quad	0x402279d6494d50ec              # double 9.2379630000000005
	.quad	0x4008b3bfb58d1527              # double 3.0877680000000001
	.quad	0x400cb392189bd838              # double 3.5876809999999999
	.quad	0x4022dcd0dcfcc5b9              # double 9.4312810000000002
	.quad	0x4014a0c77dd872f3              # double 5.1570109999999998
	.quad	0x400e89d30270f388              # double 3.8172969999999999
	.quad	0x40107e9d94d0dcfd              # double 4.1236480000000002
	.quad	0x3ff41b4bb5e0f7fd              # double 1.256664
	.quad	0x400aa8e79aae6c8f              # double 3.3324729999999998
	.quad	0x4011f9ae0c176577              # double 4.4938279999999997
	.quad	0x3ff88357a355043e              # double 1.5320659999999999
	.quad	0x40200b53b4b2fa94              # double 8.0221230000000005
	.quad	0x4021ec55432873bd              # double 8.9615880000000008
	.quad	0x40083198288051ca              # double 3.024216
	.quad	0x402141960fa15db3              # double 8.6280979999999996
	.quad	0x40054bfca85caafc              # double 2.6621030000000001
	.quad	0x40115b13dfb0d520              # double 4.3389430000000004
	.quad	0x400098c8eef1bac3              # double 2.0746020000000001
	.quad	0x4014f13059641f64              # double 5.2355359999999997
	.quad	0x40225ba40d90e23b              # double 9.1789860000000001
	.quad	0x401687531db445ed              # double 5.6321529999999997
	.quad	0x4021428049667b5f              # double 8.6298849999999998
	.quad	0x401a137de939eadd              # double 6.5190349999999997
	.quad	0x3fe00ced4e4c942d              # double 0.50157799999999997
	.quad	0x4016c4241c3efae8              # double 5.6915440000000004
	.quad	0x40158de76427c7c5              # double 5.3885779999999999
	.quad	0x400bb07af20ea5b5              # double 3.4611719999999999
	.quad	0x4017d91a75cd0bb7              # double 5.9620150000000001
	.quad	0x40218a539756c93a              # double 8.7701689999999992
	.quad	0x3fd95696e58a32f4              # double 0.39590999999999998
	.quad	0x401021ec918e325d              # double 4.0331289999999997
	.quad	0x401e66bf8769ec2d              # double 7.60034
	.quad	0x402169ce6c093d96              # double 8.7066529999999993
	.quad	0x40155a365cb35f3d              # double 5.3380979999999996
	.quad	0x3ffe77da61e0c5a8              # double 1.904261
	.quad	0x40220ca57a786c22              # double 9.0246999999999993
	.quad	0x4020546c764adff8              # double 8.1648899999999998
	.quad	0x401a1454de7ea5f8              # double 6.5198549999999997
	.quad	0x3fda3f42352eb5f6              # double 0.410111
	.quad	0x401cea116659d12d              # double 7.2285820000000003
	.quad	0x401e58ccdd93c46e              # double 7.5867190000000004
	.quad	0x3ffa4746455eaee2              # double 1.642401
	.quad	0x400130dcfcc5b8dc              # double 2.1488589999999999
	.quad	0x3fc0f16f4384ba0f              # double 0.13236800000000001
	.quad	0x3ffc427fa1a0cf18              # double 1.766235
	.quad	0x3ffdbc3b4f616723              # double 1.858455
	.quad	0x4023cd8644523f68              # double 9.901415
	.quad	0x4013727aa68f4b62              # double 4.861796
	.quad	0x4002c6ab9b23dd55              # double 2.3470070000000001
	.quad	0x3ff86178f68be2f8              # double 1.5237970000000001
	.quad	0x4018c939eadd590c              # double 6.19651
	.quad	0x3ff92044ae85b9e9              # double 1.5703780000000001
	.quad	0x3ffd28576cce5f74              # double 1.822349
	.quad	0x4020a0ce91c8eac0              # double 8.314076
	.quad	0x401bad22856605ee              # double 6.9190769999999997
	.quad	0x4020ece13f4a98ab              # double 8.4626560000000008
	.quad	0x40020ca1cef240fb              # double 2.2561680000000002
	.quad	0x40100cf91a32b12d              # double 4.0126689999999998
	.quad	0x4010030121682f94              # double 4.0029339999999998
	.quad	0x401868205ff1d81f              # double 6.1016859999999999
	.quad	0x400dac918e325d4a              # double 3.7092619999999998
	.quad	0x4016c855da272863              # double 5.69564
	.quad	0x40218d35a858793e              # double 8.7758000000000003
	.quad	0x3ff3fc27631b584b              # double 1.249061
	.quad	0x400930917d6b65aa              # double 3.1487150000000002
	.quad	0x401a51871e6cd291              # double 6.5796169999999998
	.quad	0x4018b47496aad1d0              # double 6.1762259999999998
	.quad	0x4012f3cc07aaef2c              # double 4.7380829999999996
	.quad	0x40176221858bc59c              # double 5.8458310000000004
	.quad	0x4023bbcf2cf95d4f              # double 9.8668150000000007
	.quad	0x3ff20c165907d912              # double 1.1279509999999999
	.quad	0x40226be8bc169c24              # double 9.2107600000000005
	.quad	0x40020949a5657fb7              # double 2.2545350000000002
	.quad	0x40180d31fcd24e16              # double 6.012886
	.quad	0x40229b95a294141f              # double 9.3038760000000007
	.quad	0x401ae4f440af1cb9              # double 6.7235880000000003
	.quad	0x3ff5379b77c02afe              # double 1.326076
	.quad	0x4002985510d38cda              # double 2.3243809999999998
	.quad	0x400e6e581cf7878b              # double 3.8038789999999998
	.quad	0x402339ca9ef5232d              # double 9.6128739999999996
	.quad	0x401ac98e97071822              # double 6.6968329999999998
	.quad	0x3fe1e4cf8d716d2b              # double 0.55918100000000004
	.quad	0x3ff32cb966be7afa              # double 1.1984189999999999
	.quad	0x4022daa2c2374795              # double 9.4270230000000001
	.quad	0x4000c75b3e1437c5              # double 2.0973419999999998
	.quad	0x40169f0f5a1016ce              # double 5.6553319999999996
	.quad	0x3ff7b1f14983d790              # double 1.4809429999999999
	.quad	0x4005639ef0f16f44              # double 2.6736430000000002
	.quad	0x4019f225742dcf46              # double 6.4864709999999999
	.quad	0x4020a5c8fb86f47b              # double 8.3237989999999993
	.quad	0x4015830164840e17              # double 5.3779349999999999
	.quad	0x40226e7fb267c6b9              # double 9.2158180000000005
	.quad	0x40026f3d3a1d3240              # double 2.304316
	.quad	0x4020fab3edd8b60f              # double 8.4896539999999998
	.quad	0x3ff68ff540895d0b              # double 1.4101459999999999
	.quad	0x40214374bc6a7efa              # double 8.6317500000000003
	.quad	0x401715a858793dd9              # double 5.7711499999999996
	.quad	0x3fe1f1c53f39d1b3              # double 0.56076300000000001
	.quad	0x4005476102795704              # double 2.659853
	.quad	0x401fe1a005c4651f              # double 7.9703369999999997
	.quad	0x3ff8a10be9424e59              # double 1.539318
	.quad	0x4017f8958d9b5e96              # double 5.9927580000000003
	.quad	0x4021f6e7e62dc6e3              # double 8.9822380000000006
	.quad	0x40155872f33ca31e              # double 5.3363759999999996
	.quad	0x40210e3fbbd7b203              # double 8.5278299999999998
	.quad	0x3ff024302b40f66a              # double 1.0088349999999999
	.quad	0x4020d73d3a1d3240              # double 8.4203890000000001
	.quad	0x400ef7342edbb59e              # double 3.8707050000000001
	.quad	0x4011aed1394317ad              # double 4.4207200000000002
	.quad	0x40117da0dfdef848              # double 4.3726839999999996
	.quad	0x3ff29d851654d61b              # double 1.163457
	.quad	0x401e1d612c6ac216              # double 7.5286910000000002
	.quad	0x3fc0618ce2d1f1d0              # double 0.12797700000000001
	.quad	0x3ffe0b8e086bdf4c              # double 1.877821
	.quad	0x4016e18a009f6230              # double 5.7202529999999996
	.quad	0x402026351deefe50              # double 8.074624
	.quad	0x401440e453d20f2c              # double 5.0633710000000001
	.quad	0x4021c772f76e6107              # double 8.8895490000000006
	.quad	0x401f1f60e0eb67c3              # double 7.7806430000000004
	.quad	0x4021f2450acc0bdd              # double 8.9731830000000006
	.quad	0x3ffd7521144cbe1f              # double 1.8410960000000001
	.quad	0x3fd10767d34df04e              # double 0.26607700000000001
	.quad	0x4005ae52deca2553              # double 2.7101190000000002
	.quad	0x3ff1fc4b09e98dce              # double 1.1240950000000001
	.quad	0x4020edb9a5a89b95              # double 8.4643069999999998
	.quad	0x400e0c84f8f8a4c2              # double 3.756113
	.quad	0x4011de5e679463d0              # double 4.4671570000000003
	.quad	0x40202de2046c764b              # double 8.0896150000000002
	.quad	0x400e60789613d31c              # double 3.7971050000000002
	.quad	0x3ffcab7995ee136e              # double 1.7918639999999999
	.quad	0x401e30917d6b65aa              # double 7.5474300000000003
	.quad	0x4020ae9ca9ef5233              # double 8.3410390000000003
	.quad	0x40225080f98fa377              # double 9.1572340000000008
	.quad	0x400e1c8323358f2e              # double 3.763922
	.quad	0x40037b3d8e000863              # double 2.4351759999999998
	.quad	0x40088e46cfc829d0              # double 3.0694710000000001
	.quad	0x400f0fa376922d95              # double 3.8826360000000002
	.quad	0x40020734f82f5126              # double 2.2535189999999998
	.quad	0x3ff779c842fa5094              # double 1.4672320000000001
	.quad	0x4019a4d72799a1fd              # double 6.4109769999999999
	.quad	0x400e8dcca70d1fa3              # double 3.8192379999999999
	.quad	0x4013d4e3369b9d80              # double 4.9578980000000001
	.quad	0x40143d33d29563aa              # double 5.059768
	.quad	0x3feb9a261bf37b8d              # double 0.86256699999999997
	.quad	0x401745350092ccf7              # double 5.8175850000000002
	.quad	0x401336fb09203a32              # double 4.8036919999999999
	.quad	0x401c3e3e29307af2              # double 7.0607839999999999
	.quad	0x4020654da4ce8102              # double 8.1978580000000001
	.quad	0x40228a02107b7846              # double 9.2695469999999993
	.quad	0x3fe835935fc3b4f6              # double 0.75653999999999999
	.quad	0x40233a93293d102c              # double 9.6144040000000003
	.quad	0x402010be7296f651              # double 8.0327029999999997
	.quad	0x4006eef6f8f04146              # double 2.866682
	.quad	0x400354ee392e1ef7              # double 2.4164699999999999
	.quad	0x40104e1c15097c81              # double 4.0762790000000004
	.quad	0x40211588a04d1202              # double 8.5420580000000008
	.quad	0x40148470eb24a6a8              # double 5.1293369999999996
	.quad	0x401fd3eb7cbb3c82              # double 7.9569530000000004
	.quad	0x4012182f51266341              # double 4.5236179999999999
	.quad	0x4018319220ff5409              # double 6.0484090000000004
	.quad	0x40102b07075b3e14              # double 4.0420189999999998
	.quad	0x40224445ed4a1ad6              # double 9.1333459999999995
	.quad	0x4017fa393ee5eedd              # double 5.9943590000000002
	.quad	0x4009bccb7d41743f              # double 3.2171850000000002
	.quad	0x40209833c60029f1              # double 8.2972699999999993
	.quad	0x401d9fd5cb790fb6              # double 7.4060889999999997
	.quad	0x40202682517e77d5              # double 8.0752129999999998
	.quad	0x4012cf4a1272c94b              # double 4.7024309999999998
	.quad	0x40115198f1d3ed52              # double 4.3296849999999996
	.quad	0x3ff42ff1950331e4              # double 1.2617050000000001
	.quad	0x40105ae536501e26              # double 4.0887650000000004
	.quad	0x4017dface67d77fb              # double 5.9684330000000001
	.quad	0x401236ddf00abf77              # double 4.5535810000000003
	.quad	0x401bd0ea18372e6a              # double 6.9540179999999996
	.quad	0x4018c30ad46f587d              # double 6.1904709999999996
	.quad	0x401a05479d4d8341              # double 6.5051560000000004
	.quad	0x4010355f3519bd40              # double 4.0521209999999996
	.quad	0x402193abead4f590              # double 8.7884209999999996
	.quad	0x4018cda9435ac8a3              # double 6.2008409999999996
	.quad	0x40225f746887a8d6              # double 9.1864349999999995
	.quad	0x401d42a66dbd72bd              # double 7.3150880000000003
	.quad	0x3fe023422467be55              # double 0.50430399999999997
	.quad	0x401057b5f1bef49d              # double 4.085655
	.quad	0x402314b641700cd8              # double 9.5404529999999994
	.quad	0x4016a9df548ecd8e              # double 5.6658910000000002
	.quad	0x3ff6d26634117f84              # double 1.4263669999999999
	.quad	0x402134560c7c0f45              # double 8.6022189999999998
	.quad	0x4019ad62bf11f927              # double 6.4193220000000002
	.quad	0x40173cf41f212d77              # double 5.8095249999999998
	.quad	0x3fe23a3a8e71476b              # double 0.569608
	.quad	0x4005ed434a01abd2              # double 2.7408510000000001
	.quad	0x400c8e93e1c9b414              # double 3.5696180000000002
	.quad	0x40167a03c4b09e99              # double 5.6191550000000001
	.quad	0x401c863065f9591d              # double 7.1310440000000002
	.quad	0x40138574f722e1ac              # double 4.8803289999999997
	.quad	0x4001d5a964e8b7e5              # double 2.2293270000000001
	.quad	0x3ffc1a4df47f993d              # double 1.7564219999999999
	.quad	0x3ffb56c508b32ce9              # double 1.7086840000000001
	.quad	0x4002f996fa82e87d              # double 2.3718699999999999
	.quad	0x40212fa89331a08c              # double 8.593083
	.quad	0x401265eb7457c0b1              # double 4.5995309999999998
	.quad	0x401a313be22e5de1              # double 6.5480799999999997
	.quad	0x402194549b62c775              # double 8.7897079999999992
	.quad	0x40161814d72799a2              # double 5.523517
	.quad	0x401cd18548a9bcfd              # double 7.2046099999999997
	.quad	0x3ffa8a1ad6451b93              # double 1.658717
	.quad	0x401484167a95c854              # double 5.1289920000000002
	.quad	0x40125adf71eafee7              # double 4.588743
	.quad	0x40216518090b417d              # double 8.6974490000000007
	.quad	0x4017368d759ee88e              # double 5.803274
	.quad	0x401cac319c5a3e3a              # double 7.168158
	.quad	0x40198483cafb3b75              # double 6.3794089999999999
	.quad	0x4015a43dccea28fe              # double 5.4103919999999999
	.quad	0x4003a4851a869403              # double 2.4553319999999998
	.quad	0x40134e978d4fdf3b              # double 4.8267499999999997
	.quad	0x40108fe69270b06c              # double 4.1405279999999998
	.quad	0x40126de093532e7b              # double 4.6073019999999998
	.quad	0x4000de586013660e              # double 2.1085669999999999
	.quad	0x3ff602dadb8348f5              # double 1.3756969999999999
	.quad	0x4021534070329803              # double 8.6626010000000004
	.quad	0x401bbac710cb295f              # double 6.9324000000000003
	.quad	0x40084e5604189375              # double 3.0382500000000001
	.quad	0x40107c37e6f71a7e              # double 4.1213069999999998
	.quad	0x400b23ad9f0a1be3              # double 3.3924210000000001
	.quad	0x40154bc7b45f17be              # double 5.3240040000000004
	.quad	0x4017e7dae81882ae              # double 5.9764210000000002
	.quad	0x400703675ddd2ae9              # double 2.8766620000000001
	.quad	0x3ffcd159c4977425              # double 1.8011109999999999
	.quad	0x4022fdfaca361998              # double 9.4960540000000008
	.quad	0x40176add15f02c4d              # double 5.8543589999999996
	.quad	0x3fd7230b9dc2f406              # double 0.361514
	.quad	0x401ea63736cdf267              # double 7.6623200000000002
	.quad	0x401d0e3f78bbd380              # double 7.2639139999999998
	.quad	0x3fe2519dece57109              # double 0.57246300000000006
	.quad	0x40126e4cd7492791              # double 4.6077149999999998
	.quad	0x4010c799a1fd156a              # double 4.194922
	.quad	0x4004f5cfaacd9e84              # double 2.620025
	.quad	0x3fd585d744f5d356              # double 0.33629399999999998
	.quad	0x40161af74cd3176a              # double 5.5263340000000003
	.quad	0x40130a4a8c154c98              # double 4.7600499999999997
	.quad	0x401dbc968943e100              # double 7.4341679999999997
	.quad	0x402228bd017dae82              # double 9.0795670000000008
	.quad	0x40211fdc5931ca7d              # double 8.5622279999999993
	.quad	0x401dd63a5c1c6089              # double 7.4592070000000001
	.quad	0x3fea2a497fa5d28d              # double 0.817662
	.quad	0x401393bf2f555821              # double 4.8942839999999999
	.quad	0x401de97b7414a4d3              # double 7.4780100000000003
	.quad	0x401d418b502ababf              # double 7.3140080000000003
	.quad	0x3fd17631b584b1ab              # double 0.272839
	.quad	0x4017e64a9cdc4439              # double 5.9748939999999999
	.quad	0x3ff2f85a4f00ef13              # double 1.1856329999999999
	.quad	0x401a6eb6bf444e0e              # double 6.6081190000000003
	.quad	0x3fe9821f2990f302              # double 0.79713400000000001
	.quad	0x4011eed959a30985              # double 4.4832510000000001
	.quad	0x400ae5ae5ffa3b9b              # double 3.3621490000000001
	.quad	0x4015a00cd855970b              # double 5.4062989999999997
	.quad	0x4022ad3d859c8c93              # double 9.3383599999999998
	.quad	0x40186e308787485e              # double 6.1076069999999998
	.quad	0x4020252e0e30446b              # double 8.0726169999999993
	.quad	0x400bbbbadc0980b2              # double 3.4666649999999999
	.quad	0x401b14284dfce315              # double 6.769685
	.quad	0x4000f311a543f1c7              # double 2.1186859999999998
	.quad	0x3ff96ea63b688bdb              # double 1.5895140000000001
	.quad	0x3fd44449dbec2481              # double 0.31666800000000001
	.quad	0x40168662fdfc19c1              # double 5.6312369999999996
	.quad	0x401af8e7ddca4b12              # double 6.7430719999999997
	.quad	0x4006ad794a6eb91b              # double 2.8347039999999999
	.quad	0x3ffb99d99029ae4f              # double 1.725061
	.quad	0x400a01e71044f1a2              # double 3.2509290000000002
	.quad	0x4021a6a4ca4f440b              # double 8.8254760000000001
	.quad	0x3ff5ff0aa21a719b              # double 1.3747659999999999
	.quad	0x4012af2452c59fb2              # double 4.6710370000000001
	.quad	0x40220a4f8726d04e              # double 9.0201379999999993
	.quad	0x402034b790fb6567              # double 8.1029630000000008
	.quad	0x4010ea1be2b4959e              # double 4.2286219999999997
	.quad	0x40201a4e59296702              # double 8.0513790000000007
	.quad	0x40181b3b320535ca              # double 6.0265930000000001
	.quad	0x3fe56cbd987c6328              # double 0.66952400000000001
	.quad	0x40163eeb2d0a2446              # double 5.5614439999999998
	.quad	0x40173304039abf34              # double 5.7998200000000004
	.quad	0x3ff93a6ce358298d              # double 1.5767640000000001
	.quad	0x4018d8383ad9f0a2              # double 6.2111520000000002
	.quad	0x400d7e5eaab04253              # double 3.6867040000000002
	.quad	0x40132d0b30b5aa71              # double 4.7939879999999997
	.quad	0x4010869db65ecc3e              # double 4.1314609999999998
	.quad	0x401deac7da1ec4e7              # double 7.4792779999999999
	.quad	0x401d8dea465a5764              # double 7.3885889999999996
	.quad	0x4001357e670e2c13              # double 2.1511200000000001
	.quad	0x3fea6310dbf0563f              # double 0.82459300000000002
	.quad	0x401b328fe260b2c8              # double 6.7993769999999998
	.quad	0x4020f85186db50f4              # double 8.4849969999999999
	.quad	0x4021eb58f2e05ccd              # double 8.9596630000000008
	.quad	0x40024ad46f587d70              # double 2.2865380000000002
	.quad	0x4021321ec4e7253e              # double 8.5978910000000006
	.quad	0x400b4473cd573648              # double 3.4084240000000001
	.quad	0x3fb51aeb3dd11be7              # double 0.082442000000000001
	.quad	0x4020c519157abb88              # double 8.384957
	.quad	0x3ffbc826aa8eb463              # double 1.7363649999999999
	.quad	0x400a289b0ee49f51              # double 3.2698269999999998
	.quad	0x3ff316b54e2b063e              # double 1.193044
	.quad	0x40212fe670e2c12b              # double 8.5935550000000003
	.quad	0x401ecf4a558ea7ce              # double 7.7024319999999999
	.quad	0x4003fcb46bacf744              # double 2.4983909999999998
	.quad	0x4013c1101b003687              # double 4.9385380000000003
	.quad	0x401fccd141a6937d              # double 7.9500169999999998
	.quad	0x4013986b15f88fc9              # double 4.8988459999999998
	.quad	0x3ffab07e175d13d7              # double 1.6680889999999999
	.quad	0x4018a414e7ee9143              # double 6.1602360000000003
	.quad	0x4007cbf65dbfceb8              # double 2.9745910000000002
	.quad	0x3ff06f049a9973da              # double 1.027104
	.quad	0x3ff1ec39799e518f              # double 1.1201719999999999
	.quad	0x4017b8d6909aed57              # double 5.9305060000000003
	.quad	0x401f5a5375c8d9f9              # double 7.8382089999999999
	.quad	0x4013a049235f8099              # double 4.9065289999999999
	.quad	0x3ff120232096787d              # double 1.070346
	.quad	0x4000d6b8f9b13166              # double 2.1048450000000001
	.quad	0x401e4e9468017119              # double 7.5767379999999997
	.quad	0x40209f2862f5989e              # double 8.3108550000000001
	.quad	0x4017de57d9dba909              # double 5.9671320000000003
	.quad	0x4018567e846a5d6c              # double 6.0844670000000001
	.quad	0x40227639713ad5bf              # double 9.2309070000000002
	.quad	0x4012512ba16e7a31              # double 4.5792679999999999
	.quad	0x4020b3ee3d5fdcdf              # double 8.3514269999999993
	.quad	0x3fe63968d759ee89              # double 0.69450800000000001
	.quad	0x40098fa58f7121ab              # double 3.1951399999999999
	.quad	0x401ad6de76427c7c              # double 6.7098329999999997
	.quad	0x3fd66e264e48626f              # double 0.35047299999999998
	.quad	0x3fff78cb8e086bdf              # double 1.9669909999999999
	.quad	0x401dedefc7a39820              # double 7.4823599999999999
	.quad	0x4011420e6299524c              # double 4.314508
	.quad	0x401819b068123811              # double 6.0250870000000001
	.quad	0x401bc71715c63ae2              # double 6.9444239999999997
	.quad	0x401b98d4fdf3b646              # double 6.8992500000000003
	.quad	0x4005bec7863beec4              # double 2.7181540000000002
	.quad	0x3ff7fb60285ec3db              # double 1.4988710000000001
	.quad	0x40120d1f601797cc              # double 4.5128149999999998
	.quad	0x4011204a2fcefaa4              # double 4.2815329999999996
	.quad	0x4006a3afb7e90ff9              # double 2.8299249999999998
	.quad	0x40228d7689ca18bd              # double 9.2762949999999993
	.quad	0x40002fa15db3397e              # double 2.0232570000000001
	.quad	0x40235efd86a8fc0d              # double 9.6855279999999996
	.quad	0x3fd1833c60029f17              # double 0.27363500000000002
	.quad	0x40113139c94f69cb              # double 4.2980720000000003
	.quad	0x4003abd6e8af8162              # double 2.4589059999999998
	.quad	0x401d05e5f30e7ff6              # double 7.2557600000000004
	.quad	0x4014b277c45cbbc3              # double 5.1742850000000002
	.quad	0x3fb9c5f7c6759ab7              # double 0.100677
	.quad	0x401f025dd095af29              # double 7.7523109999999997
	.quad	0x401feda7f3cf7015              # double 7.9820859999999997
	.quad	0x401e5dab5c39bcba              # double 7.5914739999999998
	.quad	0x4000d1a75cd0bb6f              # double 2.1023700000000001
	.quad	0x400e2a265f0f5a10              # double 3.770581
	.quad	0x401e7333b96af039              # double 7.6125020000000001
	.quad	0x3fc0f4c6e6d9be4d              # double 0.13247
	.quad	0x40109d634549b62c              # double 4.1536989999999996
	.quad	0x40056160d887ebf2              # double 2.6725479999999999
	.quad	0x400a663beec3979a              # double 3.299919
	.quad	0x3ff6a01bc98a222d              # double 1.4140889999999999
	.quad	0x4023b7afa7221859              # double 9.8587620000000004
	.quad	0x400cd8151a437825              # double 3.6055090000000001
	.quad	0x401ac1fc8f32378b              # double 6.6894400000000003
	.quad	0x40122e1c58255b03              # double 4.5450299999999997
	.quad	0x40232e01bc98a223              # double 9.5898570000000002
	.quad	0x40118323bbc6eb0b              # double 4.3780659999999996
	.quad	0x4020466afcce1c58              # double 8.1375349999999997
	.quad	0x4017e647778dd617              # double 5.974882
	.quad	0x401a32efd438d1d9              # double 6.5497430000000003
	.quad	0x4022f4fe58601366              # double 9.4785029999999999
	.quad	0x40207ee9142b302f              # double 8.2478719999999992
	.quad	0x401f75c8d9f9053a              # double 7.865024
	.quad	0x3fedc2352eb5f5f1              # double 0.92995700000000003
	.quad	0x4023028d8665e02f              # double 9.5049860000000006
	.quad	0x401e6172abef06b3              # double 7.5951639999999995
	.quad	0x4023242480e8c8ac              # double 9.5705910000000002
	.quad	0x4013cabef06b3786              # double 4.9479939999999996
	.quad	0x402327c5692b3cc5              # double 9.5776780000000005
	.quad	0x4022b7f8ca8198f2              # double 9.3593200000000003
	.quad	0x400008ff327aa68f              # double 2.0043929999999999
	.quad	0x4010735bd512ec6c              # double 4.1126550000000002
	.quad	0x401eb06317268d33              # double 7.6722530000000004
	.quad	0x400c641f644955b4              # double 3.5488879999999998
	.quad	0x40118ea465a57647              # double 4.3892990000000003
	.quad	0x4014809c3ce2089e              # double 5.1255959999999998
	.quad	0x40055409a2403148              # double 2.6660339999999998
	.quad	0x3ff53c32ebe596c8              # double 1.327197
	.quad	0x3feece39b456b442              # double 0.96267400000000003
	.quad	0x40226135daad6020              # double 9.189864
	.quad	0x400234d6a161e4f7              # double 2.2757999999999998
	.quad	0x3feb6b8950763a19              # double 0.856877
	.quad	0x4023387fcb923a2a              # double 9.6103500000000004
	.quad	0x4022631465e89225              # double 9.1935149999999997
	.quad	0x4001c95d0b73d189              # double 2.223322
	.quad	0x4020c29802c0a4a0              # double 8.3800659999999993
	.quad	0x3ffb3d4f15e7c8d2              # double 1.7024680000000001
	.quad	0x3ffd9a261bf37b8d              # double 1.8501339999999999
	.quad	0x400c003361565c2d              # double 3.5000979999999999
	.quad	0x3ff9d1b2e59af9ec              # double 1.613696
	.quad	0x40113a7eb6bf444e              # double 4.307124
	.quad	0x4010b3076c050bd8              # double 4.1748329999999996
	.quad	0x4009ab074a771c97              # double 3.20851
	.quad	0x400649d627bf61aa              # double 2.7860529999999999
	.quad	0x40066aec8d5c7475              # double 2.8022089999999999
	.quad	0x4015b2c77574f723              # double 5.4245890000000001
	.quad	0x3ffae3c968943e10              # double 1.680612
	.quad	0x4005bce7cd035372              # double 2.7172390000000002
	.quad	0x401fca03c4b09e99              # double 7.9472800000000001
	.quad	0x3fc46bd6e8af8162              # double 0.15954099999999999
	.quad	0x40169544bb1af3a1              # double 5.6457699999999997
	.quad	0x40072ea747d805e6              # double 2.89778
	.quad	0x400991ca7d6733ec              # double 3.1961870000000001
	.quad	0x4022039b8887229f              # double 9.0070460000000008
	.quad	0x4009db845564b663              # double 3.232186
	.quad	0x402358a372606fac              # double 9.6731219999999993
	.quad	0x40191f10667f90da              # double 6.2803360000000001
	.quad	0x40103de33269df98              # double 4.0604370000000003
	.quad	0x40202c19c17225b7              # double 8.0861339999999995
	.quad	0x4020bb4d056c508b              # double 8.3658219999999996
	.quad	0x3ff05099e0e73605              # double 1.0196780000000001
	.quad	0x3fd7b86b15f88fc9              # double 0.37063099999999999
	.quad	0x401312c343b70ef5              # double 4.7683229999999996
	.quad	0x40216869a4df47fa              # double 8.7039310000000008
	.quad	0x400fd7f498c3b0c4              # double 3.9804469999999998
	.quad	0x400ba32ebe596c83              # double 3.4546790000000001
	.quad	0x3fe99d041cc532a5              # double 0.80041700000000005
	.quad	0x401e6fa54c554328              # double 7.6090289999999995
	.quad	0x40208b7824d4cb9f              # double 8.2724010000000003
	.quad	0x400186117720c8cd              # double 2.1904629999999998
	.quad	0x4007e240b780346e              # double 2.9854750000000001
	.quad	0x401621fd1569f490              # double 5.5331919999999997
	.quad	0x4003e97635e7429a              # double 2.4889950000000001
	.quad	0x400010a02b841249              # double 2.0081180000000001
	.quad	0x4021dac6cdaf4adc              # double 8.9272980000000003
	.quad	0x40206b31c219eb64              # double 8.2093640000000007
	.quad	0x3ffa69f59ccfaeff              # double 1.6508689999999999
	.quad	0x401a8405b39e279e              # double 6.6289280000000002
	.quad	0x3fd76d3f9e7b80aa              # double 0.36604300000000001
	.quad	0x401594e22a2c2374              # double 5.3953939999999996
	.quad	0x4022f60ded288ce7              # double 9.4805749999999999
	.quad	0x3fd07110e453d20f              # double 0.25690099999999999
	.quad	0x400bff26f1dc50ce              # double 3.4995859999999999
	.quad	0x401d9111ada76d98              # double 7.3916690000000002
	.quad	0x40215fca42aed139              # double 8.6870899999999995
	.quad	0x401afbf487fcb924              # double 6.7460500000000003
	.quad	0x401ae9d388a8b08e              # double 6.7283460000000002
	.quad	0x40156feb4a66559f              # double 5.3592959999999996
	.quad	0x401f851a437824d5              # double 7.8799830000000001
	.quad	0x40109b9e060fe47a              # double 4.1519700000000004
	.quad	0x40132e3a3a8e7147              # double 4.7951439999999996
	.quad	0x4020285c896dd26b              # double 8.0788309999999992
	.quad	0x401a6fa97e132b56              # double 6.6090450000000001
	.quad	0x40156b662fdfc19c              # double 5.3548819999999999
	.quad	0x400e609c3ce2089e              # double 3.7971729999999999
	.quad	0x400b93b645a1cac1              # double 3.4471250000000002
	.quad	0x401af9c8c9320d99              # double 6.7439299999999998
	.quad	0x402177a93af74cd3              # double 8.7337129999999998
	.quad	0x4002e63beec3979a              # double 2.362419
	.quad	0x3fff78e8ea39c51e              # double 1.9670190000000001
	.quad	0x401fa4f3775b8130              # double 7.9110849999999999
	.quad	0x40194efa1e3eaf68              # double 6.3271259999999998
	.quad	0x3fbbdcad14a0a0f5              # double 0.108836
	.quad	0x4020c26a22b3892f              # double 8.3797160000000002
	.quad	0x40211c2ca148ba84              # double 8.555028
	.quad	0x40126a8c154c985f              # double 4.60405
	.quad	0x4009012ad81adea9              # double 3.1255700000000002
	.quad	0x401e5790b8498809              # double 7.5855129999999997
	.quad	0x3fb6d3c792d1287c              # double 0.089168999999999998
	.quad	0x40181e353f7ced91              # double 6.0294999999999996
	.quad	0x400306b6177ea1c7              # double 2.3782770000000002
	.quad	0x40105aa5c5f7c676              # double 4.0885230000000004
	.quad	0x3fa0a84be40420f7              # double 0.032534
	.quad	0x4011e6644d877250              # double 4.4749920000000003
	.quad	0x4008c348f53c579f              # double 3.0953539999999999
	.quad	0x400d1c4da9003eea              # double 3.6388199999999999
	.quad	0x4013ffd113836a83              # double 4.9998209999999998
	.quad	0x3feada9435ac8a37              # double 0.83918199999999998
	.quad	0x3fe691f2dc2b0ea2              # double 0.70531600000000005
	.quad	0x401de947496aad1d              # double 7.477811
	.quad	0x3ff4244a6223e187              # double 1.2588600000000001
	.quad	0x40224eb15f88fc93              # double 9.1536969999999993
	.quad	0x4020792c49342678              # double 8.2366659999999996
	.quad	0x401e96134ce3de61              # double 7.6465579999999997
	.quad	0x401dd2580c308feb              # double 7.4554140000000002
	.quad	0x3ffaa3d816aceaaf              # double 1.665001
	.quad	0x3ff1f3797460242d              # double 1.121942
	.quad	0x4021ba556d19dece              # double 8.8639329999999994
	.quad	0x4010daac1094a2ba              # double 4.2135470000000002
	.quad	0x3fd3bb6aa4b9884c              # double 0.30831399999999998
	.quad	0x4004e5c5f7c6759b              # double 2.6121940000000001
	.quad	0x401ce78fabda0dfe              # double 7.2261340000000001
	.quad	0x401901ceaf251c19              # double 6.2517649999999998
	.quad	0x3feb841461b6d43d              # double 0.859873
	.quad	0x4023271561911490              # double 9.5763350000000003
	.quad	0x3fc9870da5daf07c              # double 0.199434
	.quad	0x40230274c09c3ce2              # double 9.5047969999999999
	.quad	0x3ff85c3ac929aa1d              # double 1.5225169999999999
	.quad	0x401f9597d49d7ba6              # double 7.8960869999999996
	.quad	0x3fc782cb20fb224b              # double 0.18367900000000001
	.quad	0x3ffb09203a322af5              # double 1.6897279999999999
	.quad	0x4002d14e3bcd35a8              # double 2.3521999999999998
	.quad	0x3ff603afb7e90ff9              # double 1.3758999999999999
	.quad	0x3ff4af5019f3c70d              # double 1.2928010000000001
	.quad	0x4022a1dbec2480e9              # double 9.3161310000000004
	.quad	0x401e2d349be8ff32              # double 7.5441459999999996
	.quad	0x401f2ca8198f1d3f              # double 7.7936100000000001
	.quad	0x402195cbbc2b94d9              # double 8.7925699999999996
	.quad	0x3fdf9c66d373affb              # double 0.493921
	.quad	0x3febd05f28848388              # double 0.86918600000000001
	.quad	0x3fe66fcdee34fc61              # double 0.70114799999999999
	.quad	0x4004c55970b49e02              # double 2.5963620000000001
	.quad	0x3ff4656473471f79              # double 1.2747539999999999
	.quad	0x4003a8123810e886              # double 2.4570660000000002
	.quad	0x400cddeefe4ffc98              # double 3.6083660000000002
	.quad	0x4018ceba27ae9ab3              # double 6.2018820000000003
	.quad	0x4012513d31b9b670              # double 4.5793350000000004
	.quad	0x400c597fe8ee6b83              # double 3.543701
	.quad	0x3ffbb19934efcbd5              # double 1.7308589999999999
	.quad	0x40093a0dfdef8488              # double 3.1533470000000001
	.quad	0x4009529563a9f384              # double 3.165324
	.quad	0x401c3eb7cbb3c819              # double 7.061248
	.quad	0x401b4f91a32b12d3              # double 6.8277039999999998
	.quad	0x40213b2d905c0336              # double 8.6155819999999999
	.quad	0x401d7112ba16e7a3              # double 7.3604229999999999
	.quad	0x3fdd8205ff1d81f1              # double 0.461061
	.quad	0x40233c4567125dd1              # double 9.6177170000000007
	.quad	0x401461715c63ae25              # double 5.0951589999999998
	.quad	0x401c59314445aa2e              # double 7.0871019999999998
	.quad	0x3fade33269df97ab              # double 0.058374000000000002
	.quad	0x4001ded41b75a74c              # double 2.233803
	.quad	0x4020eee75ff609dd              # double 8.4666090000000001
	.quad	0x3ff72dc1a47a9e2c              # double 1.448671
	.quad	0x401115525cc42635              # double 4.2708219999999999
	.quad	0x3fe863369b9d7fd8              # double 0.76211099999999998
	.quad	0x3ff8fda836eb4e98              # double 1.561928
	.quad	0x401342a38b8ae31d              # double 4.8150769999999996
	.quad	0x3ffb07db2b346131              # double 1.6894180000000001
	.quad	0x401f6fe3f359ff50              # double 7.8592680000000001
	.quad	0x3ff81c560c7c0f45              # double 1.506918
	.quad	0x400a718eb8950764              # double 3.3054480000000002
	.quad	0x400d67a8d64d7f0f              # double 3.6756150000000001
	.quad	0x3fd1262888b545c8              # double 0.26795400000000003
	.quad	0x402003dbe3c10518              # double 8.0075369999999992
	.quad	0x40227eef5ec80c74              # double 9.2479200000000005
	.quad	0x400c503b81b64e05              # double 3.5391759999999999
	.quad	0x40183c929aa1d756              # double 6.0591530000000002
	.quad	0x401bf453d20f2bed              # double 6.9886010000000001
	.quad	0x3ff128d8665e02eb              # double 1.0724720000000001
	.quad	0x3fea20902de00d1b              # double 0.81647499999999995
	.quad	0x3fe080d1b71758e2              # double 0.51572499999999999
	.quad	0x4017ff94c87980f5              # double 5.9995909999999997
	.quad	0x4022f947496aad1d              # double 9.4868719999999999
	.quad	0x4015bb649d388a8b              # double 5.433001
	.quad	0x4012a9e7b80a9de9              # double 4.6659230000000003
	.quad	0x40176fc371da37ef              # double 5.8591439999999997
	.quad	0x402080435efa615b              # double 8.2505140000000008
	.quad	0x3ff0e325d4a5df22              # double 1.0554559999999999
	.quad	0x4022387075b3e143              # double 9.1102329999999991
	.quad	0x4016f9f4d37c1377              # double 5.7440980000000001
	.quad	0x400ce4adff822bbf              # double 3.6116600000000001
	.quad	0x40137d3bf2f55582              # double 4.8722989999999999
	.quad	0x401b2ca57a786c22              # double 6.7935999999999996
	.quad	0x40238e40420f6f09              # double 9.7778340000000003
	.quad	0x3ff7aa337a80cf9e              # double 1.479053
	.quad	0x4000daa044ae85ba              # double 2.106751
	.quad	0x402025629d8409e5              # double 8.0730179999999994
	.quad	0x3fee4b790fb65669              # double 0.94671300000000003
	.quad	0x40072807bbb62414              # double 2.8945460000000001
	.quad	0x401e80b30b5aa716              # double 7.6256830000000004
	.quad	0x400fe60fe47991bc              # double 3.9873349999999999
	.quad	0x3ffeb7ac3eb7cbb4              # double 1.919842
	.quad	0x3ffc72074ea8da7f              # double 1.7778389999999999
	.quad	0x4011670fbeb9e493              # double 4.3506460000000002
	.quad	0x401360d130df9bdc              # double 4.8445479999999996
	.quad	0x40226eeb0b7c3505              # double 9.2166370000000004
	.quad	0x401edb38d60a6330              # double 7.7140839999999997
	.quad	0x40196f81a5870da6              # double 6.3588930000000001
	.quad	0x3ffc55bab21815a0              # double 1.7709299999999999
	.quad	0x3ff42c3c9eecbfb1              # double 1.2607999999999999
	.quad	0x4015295421c04428              # double 5.2903599999999997
	.quad	0x401efa936c58eeaf              # double 7.7447030000000003
	.quad	0x40205d1ac9afe1da              # double 8.1818449999999991
	.quad	0x4018d11a975afaf8              # double 6.2042029999999997
	.quad	0x40030427418d690a              # double 2.3770280000000001
	.quad	0x3ff64af4f0d844d0              # double 1.3933
	.quad	0x4016475ab7dc7ac0              # double 5.5696820000000002
	.quad	0x401da08e15011905              # double 7.4067920000000003
	.quad	0x4022c214488c60cc              # double 9.379061
	.quad	0x401c217c1bda511a              # double 7.0327000000000002
	.quad	0x40234c0d90e23af3              # double 9.6485409999999998
	.quad	0x401cab06c43f5f91              # double 7.1670179999999997
	.quad	0x40041731098d477c              # double 2.5113240000000001
	.quad	0x4019932378ab0c89              # double 6.3936900000000003
	.quad	0x3f8b3fa6defc7a3a              # double 0.013305000000000001
	.quad	0x40170b5fa22706d5              # double 5.761107
	.quad	0x4023c16af038e2a0              # double 9.8777690000000007
	.quad	0x401e60aaeafab53d              # double 7.5944019999999996
	.quad	0x3ff585a708ede54b              # double 1.3451299999999999
	.quad	0x401b12a6b0d95140              # double 6.7682140000000004
	.quad	0x401dbf4e0114d2f6              # double 7.4368210000000001
	.quad	0x402160e5a35d67ba              # double 8.6892519999999998
	.quad	0x401c8f36ef8055fc              # double 7.1398580000000003
	.quad	0x4002450ce4ead0c4              # double 2.2837160000000001
	.quad	0x400562c9081c2e34              # double 2.673235
	.quad	0x40205eddce7cd035              # double 8.1852859999999996
	.quad	0x40220febaf102364              # double 9.0310950000000005
	.quad	0x3ff2ec81d3aa36a0              # double 1.182741
	.quad	0x4013bc14c660a201              # double 4.9336729999999998
	.quad	0x402176931876188b              # double 8.7315909999999999
	.quad	0x4022f16228134480              # double 9.4714519999999993
	.quad	0x4012ecefaa4766c7              # double 4.7313830000000001
	.quad	0x40015212d77318fc              # double 2.1650749999999999
	.quad	0x4022f8a6dacabc51              # double 9.4856479999999994
	.quad	0x40222dd744f5d356              # double 9.0895329999999994
	.quad	0x400175b2d4d4024b              # double 2.1824699999999999
	.quad	0x3fe0951a437824d5              # double 0.51820100000000002
	.quad	0x400055011904b3c4              # double 2.041506
	.quad	0x3feb8e6afcce1c58              # double 0.86113499999999998
	.quad	0x400fcedb2f661f19              # double 3.9760040000000001
	.quad	0x401448787485e3da              # double 5.0707719999999998
	.quad	0x4010a9285a921cce              # double 4.1651930000000004
	.quad	0x40159f709b738e6d              # double 5.4057029999999999
	.quad	0x401f1ecfa69be09c              # double 7.7800890000000003
	.quad	0x40216bcf70153bd1              # double 8.7105669999999993
	.quad	0x4020fc050bd87b57              # double 8.4922260000000005
	.quad	0x4019f272c94b380d              # double 6.4867660000000003
	.quad	0x4007a58cd20afa2f              # double 2.955835
	.quad	0x3faf2b4528283d36              # double 0.060877000000000001
	.quad	0x400dca2120e1f7d7              # double 3.7236959999999999
	.quad	0x401fdd8fd5cb7910              # double 7.9663690000000003
	.quad	0x40230f04bc27631b              # double 9.5293329999999993
	.quad	0x3ffff906466b1e5c              # double 1.998297
	.quad	0x3fe62915379fa97e              # double 0.69251499999999999
	.quad	0x401a651f3e89a88b              # double 6.5987520000000002
	.quad	0x400920ea5b530ced              # double 3.1410719999999999
	.quad	0x4012ed7e45803cd1              # double 4.7319269999999998
	.quad	0x401b7c6e2a80064b              # double 6.8715140000000003
	.quad	0x4012e0c5a8155d5f              # double 4.7195039999999997
	.quad	0x40224739b024f65a              # double 9.1391120000000008
	.quad	0x401958b9fdbd2fa1              # double 6.3366470000000001
	.quad	0x402385c2b0ea1837              # double 9.7612509999999996
	.quad	0x3fc09b845564b663              # double 0.129746
	.quad	0x3ff84f63800218df              # double 1.519382
	.quad	0x401ae73c925785f9              # double 6.7258170000000002
	.quad	0x3fce19da9c99285b              # double 0.23516400000000001
	.quad	0x4013c049667b5f1c              # double 4.9377800000000001
	.quad	0x401a1827fa1a0cf2              # double 6.5235900000000004
	.quad	0x3ffd8a0d349be8ff              # double 1.846204
	.quad	0x400214ae429e0a42              # double 2.2600980000000002
	.quad	0x400f5d21ff2e48e9              # double 3.9204750000000002
	.quad	0x401810bed740c415              # double 6.0163529999999996
	.quad	0x4001d85f06f69446              # double 2.2306499999999998
	.quad	0x4023c5f15a4acf31              # double 9.8866069999999997
	.quad	0x40063955714b9cb7              # double 2.7779950000000002
	.quad	0x3fedab1f687b139d              # double 0.92713900000000005
	.quad	0x40129681ecd4aa11              # double 4.6469800000000001
	.quad	0x401460374ff865d8              # double 5.0939610000000002
	.quad	0x4003079cc74b838c              # double 2.378717
	.quad	0x400ebdc26dce39b4              # double 3.8426559999999998
	.quad	0x4019e90abb44e50c              # double 6.4775799999999997
	.quad	0x400e99e9d0e991ff              # double 3.8251529999999998
	.quad	0x400f049a133c1ce7              # double 3.8772470000000001
	.quad	0x401c3fef39085f4a              # double 7.0624359999999999
	.quad	0x3fe556cf850df15a              # double 0.66684699999999997
	.quad	0x401418461f9f01b8              # double 5.0237049999999996
	.quad	0x401bee20ccff21b4              # double 6.9825470000000003
	.quad	0x401babdf090f733b              # double 6.9178430000000004
	.quad	0x40232f44b2b777d1              # double 9.592321
	.quad	0x40176bea91d9b1b8              # double 5.8553870000000003
	.quad	0x40160275ab7dc7ac              # double 5.502402
	.quad	0x4020fd7bc7f77af6              # double 8.4950849999999996
	.quad	0x401256eefa1e3eaf              # double 4.5848959999999996
	.quad	0x4023143ce2089e34              # double 9.5395269999999996
	.quad	0x40142168f8e7ddca              # double 5.0326269999999997
	.quad	0x401343764f11b60b              # double 4.8158810000000001
	.quad	0x4020c4810a569b17              # double 8.3837969999999995
	.quad	0x4008e32a8c9b8455              # double 3.1109209999999998
	.quad	0x3ff50c8259e1f3a5              # double 1.3155539999999999
	.quad	0x401cf07cc7d1bb49              # double 7.2348509999999999
	.quad	0x4017d0999dcb5782              # double 5.9537110000000002
	.quad	0x401ac49e44fa0514              # double 6.6920099999999998
	.quad	0x40186010c6f7a0b6              # double 6.0938140000000001
	.quad	0x4016e1c219eb6391              # double 5.7204670000000002
	.quad	0x3ffa32a7bd48cb4b              # double 1.637367
	.quad	0x4005f490e66cb103              # double 2.7444169999999999
	.quad	0x400968fb00bcbe62              # double 3.1762600000000001
	.quad	0x40128ed41b75a74c              # double 4.639481
	.quad	0x4021205143bf7271              # double 8.5631199999999996
	.quad	0x401217daa4fca42b              # double 4.5232950000000001
	.quad	0x3fec97353b4b2fa9              # double 0.89345799999999997
	.quad	0x4000cbad7d7c2ca1              # double 2.0994519999999999
	.quad	0x400193a2595bbbe8              # double 2.1970869999999998
	.quad	0x4006e41461b6d43d              # double 2.861367
	.quad	0x40166dd2f1a9fbe7              # double 5.6072499999999996
	.quad	0x4022f3fc43b2dd37              # double 9.4765339999999991
	.quad	0x400b8833c60029f1              # double 3.4415049999999998
	.quad	0x40239b1c64ba94bc              # double 9.8029510000000001
	.quad	0x402171e75360d024              # double 8.7224679999999992
	.quad	0x401016e71cda2b5a              # double 4.0223659999999999
	.quad	0x401b7952d234eb9a              # double 6.8684799999999999
	.quad	0x40229ea5d6bebe16              # double 9.3098589999999994
	.quad	0x40222f7143393ab4              # double 9.0926609999999996
	.quad	0x40073003686a4ca5              # double 2.898444
	.quad	0x401febfdb4cc2507              # double 7.9804599999999998
	.quad	0x401be220791c4b90              # double 6.9708269999999999
	.quad	0x40104b7f5a5332ad              # double 4.073728
	.quad	0x40022e496ededaec              # double 2.2726009999999999
	.quad	0x40125526527a2058              # double 4.5831540000000004
	.quad	0x402188dc768dfbd7              # double 8.7673070000000006
	.quad	0x40184712a0ec7432              # double 6.069407
	.quad	0x400be63497b7414a              # double 3.4874049999999999
	.quad	0x3f980ecfa69be09c              # double 0.023494000000000001
	.quad	0x4009173d9ec70004              # double 3.1363479999999999
	.quad	0x4003de27179bfdf8              # double 2.483473
	.quad	0x3fff3f2f55582129              # double 1.9529259999999999
	.quad	0x402001e7967caea7              # double 8.0037199999999995
	.quad	0x40217d117b5286b6              # double 8.7442740000000008
	.quad	0x401fe4b7f5a5332b              # double 7.9733580000000001
	.quad	0x401b9289dadfb507              # double 6.8931040000000001
	.quad	0x4023094727dcbddc              # double 9.5181210000000007
	.quad	0x400dbf4906034f40              # double 3.7184010000000001
	.quad	0x3ffe3a7008a697af              # double 1.889267
	.quad	0x40210091e215336e              # double 8.5011130000000001
	.quad	0x401a66577531db44              # double 6.5999429999999997
	.quad	0x4009f8b502ababeb              # double 3.2464390000000001
	.quad	0x40061dda059a73b4              # double 2.7645759999999999
	.quad	0x401babd72bcb5fe5              # double 6.9178129999999998
	.quad	0x400c86698bb4d489              # double 3.5656310000000002
	.quad	0x40142eb13dfb0d52              # double 5.045598
	.quad	0x40062c3b927d45a6              # double 2.771598
	.quad	0x4016153f7ced9168              # double 5.5207499999999996
	.quad	0x401fe2a2c2374795              # double 7.971324
	.quad	0x4021c9a91105e1c1              # double 8.8938679999999994
	.quad	0x4023f34549b62c77              # double 9.9751379999999993
	.quad	0x4003bcb5fe542e55              # double 2.4671439999999998
	.quad	0x4020bf7be121ee67              # double 8.3739919999999994
	.quad	0x401f6bbf93ff25e5              # double 7.8552229999999996
	.quad	0x4020a937b07075b4              # double 8.3305030000000002
	.quad	0x4003613986338b48              # double 2.4224730000000001
	.quad	0x40232afb19e731d3              # double 9.5839470000000002
	.quad	0x4023da0dfdef8488              # double 9.9258880000000004
	.quad	0x400fe2b27cbf6e3f              # double 3.9856919999999998
	.quad	0x400fc04af922962d              # double 3.968893
	.quad	0x3fe879ca5bd944aa              # double 0.76486699999999996
	.quad	0x4010661f18c9fb61              # double 4.0997279999999998
	.quad	0x40158fcbd556084a              # double 5.3904259999999997
	.quad	0x400e243bb40b34e7              # double 3.7676919999999998
	.quad	0x4015afd08d4bad7d              # double 5.4216939999999996
	.quad	0x4020904e618ce2d2              # double 8.2818480000000001
	.quad	0x4004a1e92923e5b8              # double 2.5790579999999999
	.quad	0x3fff597f62b6ae7d              # double 1.9593499999999999
	.quad	0x3fd08a3b57c4e2f3              # double 0.25843699999999997
	.quad	0x40114e4abe6a337b              # double 4.3264570000000004
	.quad	0x3ff82e71cda2b5a2              # double 1.511339
	.quad	0x3ff91e3c968943e1              # double 1.569882
	.quad	0x401c23a08398a655              # double 7.0347920000000004
	.quad	0x4012616ce789e775              # double 4.5951420000000001
	.quad	0x401f824d8fd5cb79              # double 7.8772489999999999
	.quad	0x3ffda4bdba0a5269              # double 1.8527199999999999
	.quad	0x4014829563a9f384              # double 5.1275230000000001
	.quad	0x3fe9089c1b54195d              # double 0.78230100000000002
	.quad	0x4006929dc725c3df              # double 2.82159
	.quad	0x4012d549731098d4              # double 4.7082879999999996
	.quad	0x401fd4113c68661b              # double 7.957097
	.quad	0x402347a5093964a6              # double 9.6399310000000007
	.quad	0x3faf6c2699c7bcc3              # double 0.061372000000000003
	.quad	0x3fa1103c8e25c811              # double 0.033327000000000002
	.quad	0x3ff0c39cd8127b2d              # double 1.047757
	.quad	0x4011d8f6cefed634              # double 4.4618789999999997
	.quad	0x402042ad3e920c07              # double 8.1302280000000007
	.quad	0x401d5d1394317acc              # double 7.3408949999999997
	.quad	0x3ffeb5a74c09c3ce              # double 1.919349
	.quad	0x4010a5f202107b78              # double 4.1620559999999998
	.quad	0x4015bbb73083558a              # double 5.4333159999999996
	.quad	0x401cefa93af74cd3              # double 7.2340439999999999
	.quad	0x400a2e46cfc829d0              # double 3.2725960000000001
	.quad	0x4000099ae924f228              # double 2.0046900000000001
	.quad	0x3fe1b3e5753a3ec0              # double 0.55320999999999998
	.quad	0x401af3404ea4a8c1              # double 6.7375499999999997
	.quad	0x40173a10e0221427              # double 5.806705
	.quad	0x40215d234eb9a177              # double 8.6819100000000002
	.quad	0x4005d4d7add15f03              # double 2.7289270000000001
	.quad	0x401f1f1e0828c36e              # double 7.7803880000000003
	.quad	0x40150d11be6e6538              # double 5.2627629999999996
	.quad	0x4008cdfbd6a593a3              # double 3.1005780000000001
	.quad	0x3fe2468a936c58ef              # double 0.57111100000000004
	.quad	0x4020024d2b2bfdb5              # double 8.0044950000000004
	.quad	0x40134ac96cc5fbf8              # double 4.8230339999999998
	.quad	0x40164c0a4a05dd90              # double 5.5742580000000004
	.quad	0x401ae28283d35eb7              # double 6.7212009999999998
	.quad	0x4023a75dfeb8d823              # double 9.8268889999999995
	.quad	0x3ff05712a0ec7432              # double 1.021258
	.quad	0x40211200192a7371              # double 8.5351569999999999
	.quad	0x4022500de4c51117              # double 9.1563560000000006
	.quad	0x402161832fcac8e7              # double 8.6904540000000008
	.quad	0x40063834091c0874              # double 2.7774429999999999
	.quad	0x400b9fe8ee6b8306              # double 3.4530810000000001
	.quad	0x3ff6eae8e1d6494d              # double 1.4323509999999999
	.quad	0x4023fdb6c3760bf6              # double 9.9955350000000003
	.quad	0x400a822706d50657              # double 3.3135509999999999
	.quad	0x3fdf3400b88ca3e8              # double 0.48754900000000001
	.quad	0x401de54003254e6e              # double 7.4738769999999999
	.quad	0x400daaf1455219a8              # double 3.7084679999999999
	.quad	0x401b147064ece9a3              # double 6.7699600000000002
	.quad	0x401f76876e1deacd              # double 7.8657510000000003
	.quad	0x401f5584b1ab0857              # double 7.833514
	.quad	0x400af6e0d23d4f16              # double 3.370546
	.quad	0x401985015c209247              # double 6.3798880000000002
	.quad	0x401ec5eedcc20d56              # double 7.6932939999999999
	.quad	0x3ff34ec95bff0457              # double 1.2067349999999999
	.quad	0x4016b07c84b5dcc6              # double 5.6723499999999998
	.quad	0x400f958fb43d89ce              # double 3.9480279999999999
	.quad	0x40170f3f961804da              # double 5.7648910000000004
	.quad	0x400e24e3ffef3908              # double 3.7680129999999998
	.quad	0x4018894ff0025bfb              # double 6.1340940000000002
	.quad	0x401aa99567dbb16c              # double 6.6656089999999999
	.quad	0x3ff60a137f38c543              # double 1.3774599999999999
	.quad	0x40059e1e2de87097              # double 2.7022059999999999
	.quad	0x401215000c9539b9              # double 4.5205080000000004
	.quad	0x3fea38cda6e75ff6              # double 0.819434
	.quad	0x400360a8d21bc127              # double 2.4221970000000002
	.quad	0x4005b8ec0f883340              # double 2.7152940000000001
	.quad	0x3fc531a08bfc2225              # double 0.165577
	.quad	0x4015e11f926c7eae              # double 5.4698469999999997
	.quad	0x4017645132f87ad1              # double 5.8479660000000004
	.quad	0x3feeac55c96030c2              # double 0.95853699999999997
	.quad	0x401f5109070fbeba              # double 7.8291360000000001
	.quad	0x401b1a5fc7e6b3ff              # double 6.7757560000000003
	.quad	0x4001e7064ece9a2c              # double 2.2378049999999998
	.quad	0x4022bbd9ec700043              # double 9.3668969999999998
	.quad	0x400b751697f1f9ad              # double 3.432172
	.quad	0x4023f37824d4cb9f              # double 9.9755260000000003
	.quad	0x401c4789613d31ba              # double 7.0698600000000003
	.quad	0x400e0c25072085b2              # double 3.7559300000000002
	.quad	0x40159a57a786c227              # double 5.4007250000000004
	.quad	0x40234317268d3283              # double 9.6310359999999999
	.quad	0x40166820a30db6a2              # double 5.6016870000000001
	.quad	0x400926a550870111              # double 3.1438700000000002
	.quad	0x40168b5bb384fd2a              # double 5.6360919999999997
	.quad	0x40149a01eeed8905              # double 5.150398
	.quad	0x4001fcbbc2b94d94              # double 2.248405
	.quad	0x40211013a92a3055              # double 8.5313999999999997
	.quad	0x3ff58d31769a9110              # double 1.3469709999999999
	.quad	0x3fce5321e603d578              # double 0.23691200000000001
	.quad	0x4016a34117f8444a              # double 5.6594280000000001
	.quad	0x4015dfb5d031055c              # double 5.4684670000000004
	.quad	0x4013b3736cdf266c              # double 4.9252450000000003
	.quad	0x4010fa400fba8827              # double 4.2443850000000003
	.quad	0x3fecf2756861e929              # double 0.90459699999999998
	.quad	0x4023ab0a915379fb              # double 9.8340650000000007
	.quad	0x3ff700746455eaee              # double 1.437611
	.quad	0x3ffd673e681a9b8d              # double 1.8377060000000001
	.quad	0x401f15a9a8049668              # double 7.7711550000000002
	.quad	0x4023e3f52fc2656b              # double 9.9452300000000004
	.quad	0x401c86577531db44              # double 7.1311929999999997
	.quad	0x402136aca7935760              # double 8.6067859999999996
	.quad	0x40204134acaff6d3              # double 8.1273549999999997
	.quad	0x3ff4b70ef566490a              # double 1.294692
	.quad	0x4023ceef1bac2df1              # double 9.9041680000000003
	.quad	0x40064f14db59578a              # double 2.7886139999999999
	.quad	0x3feaa860dcb9a9da              # double 0.83305399999999996
	.quad	0x40021b2fec56d5d0              # double 2.2632750000000001
	.quad	0x400609aed56b0100              # double 2.7547280000000001
	.quad	0x402177f3061c79b3              # double 8.7342759999999995
	.quad	0x401c334373f316e3              # double 7.0500619999999996
	.quad	0x3f784e3ffef39086              # double 0.005934
	.quad	0x40117d462c343b71              # double 4.3723380000000001
	.quad	0x40157ed3953dea46              # double 5.3738539999999997
	.quad	0x3ff4695faa8a82a5              # double 1.2757259999999999
	.quad	0x400bbba12b5e529c              # double 3.4666160000000001
	.quad	0x401e9a0b1bbcf4e8              # double 7.6504329999999995
	.quad	0x40151c0e38a7e73a              # double 5.2773979999999998
	.quad	0x40103181e03f7058              # double 4.0483469999999997
	.quad	0x40060e2b8c75c4a8              # double 2.7569189999999999
	.quad	0x3feed306a2b17050              # double 0.96326000000000001
	.quad	0x4013bfbacb428912              # double 4.9372360000000004
	.quad	0x3fff61bc126a65cf              # double 1.9613609999999999
	.quad	0x3ff15b91f70de8f7              # double 1.084856
	.quad	0x4022214940bbb1f2              # double 9.0650119999999994
	.quad	0x40171beb9e492bc3              # double 5.777266
	.quad	0x4023bba0407cc7d2              # double 9.8664570000000005
	.quad	0x4012a31f03d145d8              # double 4.6592979999999997
	.quad	0x402164e8fb00bcbe              # double 8.6970899999999993
	.quad	0x4012dda9c99285a9              # double 4.7164679999999999
	.quad	0x4000af7caa7589f0              # double 2.0856870000000001
	.quad	0x3ff57292c4934268              # double 1.3404720000000001
	.quad	0x4015fd6ece13f4aa              # double 5.4974930000000004
	.quad	0x401431c3ac929aa2              # double 5.0485980000000001
	.quad	0x400e8ee49f51697f              # double 3.8197719999999999
	.quad	0x400bd8969a0ad8a1              # double 3.480756
	.quad	0x4018ff4be835dedf              # double 6.2493129999999999
	.quad	0x4001ee4a7b4e54f8              # double 2.2413530000000002
	.quad	0x40078046c764ae00              # double 2.9376350000000002
	.quad	0x3fbe81dc0db2702a              # double 0.119169
	.quad	0x40188de7210be942              # double 6.1385769999999997
	.quad	0x4000739f340d4dc6              # double 2.0564559999999998
	.quad	0x40081d2630ec3116              # double 3.0142329999999999
	.quad	0x401c84dfce3150db              # double 7.1297600000000001
	.quad	0x40093d0a67620ee9              # double 3.1548050000000001
	.quad	0x400a7d1569f49060              # double 3.3110759999999999
	.quad	0x40072c1a8ac5c140              # double 2.8965350000000001
	.quad	0x4018b1f9acffa7eb              # double 6.1738039999999996
	.quad	0x3fed55992428d435              # double 0.91669900000000004
	.quad	0x400ff9f98b71b8aa              # double 3.997058
	.quad	0x402284cc6822ff09              # double 9.2593720000000008
	.quad	0x4004dd31337eb28e              # double 2.6080040000000002
	.quad	0x401e3feef5ec80c7              # double 7.5624349999999997
	.quad	0x401a8fb549f94856              # double 6.6403400000000001
	.quad	0x4021003d35eb7458              # double 8.5004670000000004
	.quad	0x3fec242d05f28848              # double 0.87941599999999998
	.quad	0x40222d4c76d117b5              # double 9.0884739999999997
	.quad	0x4011c19b90ea9e6f              # double 4.4390700000000001
	.quad	0x40209998288051ca              # double 8.2999890000000001
	.quad	0x4015cade657b84dc              # double 5.4481140000000003
	.quad	0x400b3445ed4a1ad6              # double 3.4005239999999999
	.quad	0x3fb524d099e0e736              # double 0.082592999999999999
	.quad	0x4003850c5eb313be              # double 2.4399649999999999
	.quad	0x40175a4e379b77c0              # double 5.8381889999999999
	.quad	0x4021abe5d9e40c84              # double 8.8357379999999992
	.quad	0x401dcd2999567dbb              # double 7.4503539999999999
	.quad	0x401b047e49b1fab9              # double 6.7543879999999996
	.quad	0x400df471f79420b4              # double 3.7443580000000001
	.quad	0x401455f41aef6f8f              # double 5.083939
	.quad	0x40202d7cf5f4e443              # double 8.0888439999999999
	.quad	0x40162756861e9292              # double 5.5384159999999998
	.quad	0x401a585f8d2e514c              # double 6.5863019999999999
	.quad	0x4015740420f6f08d              # double 5.3632970000000002
	.quad	0x401dd4e9c4545847              # double 7.4579230000000001
	.quad	0x4016af45e0b4e11e              # double 5.6711650000000002
	.quad	0x4016bc75c4a83b1d              # double 5.684043
	.quad	0x4016530941c8216c              # double 5.5810899999999997
	.quad	0x40227dca29845dc8              # double 9.2456829999999996
	.quad	0x4020a567125dd096              # double 8.3230520000000006
	.quad	0x3feb4bccf28c79f6              # double 0.85300299999999996
	.quad	0x4023bb558a761028              # double 9.8658870000000007
	.quad	0x401fa4f8f8a4c1ec              # double 7.9111060000000002
	.quad	0x400d21815a07b353              # double 3.6413600000000002
	.quad	0x4009275e6362a5e8              # double 3.1442230000000002
	.quad	0x3ffa05f9df548ece              # double 1.6264590000000001
	.quad	0x401620232096787d              # double 5.5313840000000001
	.quad	0x401971bf7ad4b274              # double 6.3610819999999997
	.quad	0x4021d2658c4bd33d              # double 8.9109309999999997
	.quad	0x3fff9f5f0b28522f              # double 1.9764090000000001
	.quad	0x4000f1a005c4651f              # double 2.1179809999999999
	.quad	0x400420cf1800a7c6              # double 2.5160200000000001
	.quad	0x3ff7ad03d9a95422              # double 1.4797400000000001
	.quad	0x4016b1cfbb949625              # double 5.6736440000000004
	.quad	0x3fb98b71b8aa0019              # double 0.099783999999999998
	.quad	0x4021e47eae5bc87e              # double 8.9462790000000005
	.quad	0x401bd996312f4cf5              # double 6.9624870000000003
	.quad	0x40109999567dbb17              # double 4.1499990000000002
	.quad	0x402100ce703afb7f              # double 8.5015750000000008
	.quad	0x40160a836eb4e981              # double 5.5102669999999998
	.quad	0x401a4fa82e87d2c8              # double 6.5777900000000002
	.quad	0x3fe3b7bf1e8e6080              # double 0.61617999999999995
	.quad	0x3fffeb8a5ce5b424              # double 1.9950049999999999
	.quad	0x4015e3369b9d7fd8              # double 5.4718879999999999
	.quad	0x4020880389f83be6              # double 8.2656519999999993
	.quad	0x40103703f2d3c793              # double 4.0537260000000002
	.quad	0x40207bda2f8bdec6              # double 8.2418990000000001
	.quad	0x3fe2bbba55d1c3ad              # double 0.58541600000000005
	.quad	0x4018ac9539b88872              # double 6.1685379999999999
	.quad	0x40151043a2163fdd              # double 5.2658829999999996
	.quad	0x401d27e175d13d75              # double 7.2889460000000001
	.quad	0x4001c0ed80a17b0f              # double 2.2192029999999998
	.quad	0x4020093682730c67              # double 8.0179939999999998
	.quad	0x4002031e7d9988d3              # double 2.2515230000000002
	.quad	0x402009cb252ce033              # double 8.0191280000000003
	.quad	0x4023fba0c6b484d7              # double 9.9914609999999992
	.quad	0x4013d0a9de8b3b32              # double 4.953773
	.quad	0x401ded57bc7f77af              # double 7.4817799999999997
	.quad	0x4011ea1405708249              # double 4.4785919999999999
	.quad	0x400949b413986339              # double 3.1609880000000001
	.quad	0x3ff0fe43675ddd2b              # double 1.062076
	.quad	0x400430d306a2b170              # double 2.5238399999999999
	.quad	0x3fea34b0e1b4bb5e              # double 0.81893199999999999
	.quad	0x40216b00bcbe61d0              # double 8.70899
	.quad	0x4020d80c308feac4              # double 8.4219679999999996
	.quad	0x3fe25a4acf312b1b              # double 0.57352199999999998
	.quad	0x40052a45d41fa765              # double 2.6456409999999999
	.quad	0x401147c9de050375              # double 4.320106
	.quad	0x40212ec8f7553693              # double 8.5913769999999996
	.quad	0x4015350b0f27bb30              # double 5.3018000000000001
	.quad	0x401b4397dd00f777              # double 6.8160090000000002
	.quad	0x401d6fe8ab4fa483              # double 7.359286
	.quad	0x40136489d27c3937              # double 4.8481820000000004
	.quad	0x4006b1290257c915              # double 2.8365040000000001
	.quad	0x4001c2b734b51373              # double 2.2200760000000002
	.quad	0x4014f4883fd50225              # double 5.2388009999999996
	.quad	0x401610d6b228dc98              # double 5.5164439999999999
	.quad	0x401e07b4e54f7a92              # double 7.5075260000000004
	.quad	0x3ffa57a355043e53              # double 1.646396
	.quad	0x4014bc1d6cf850df              # double 5.1837059999999999
	.quad	0x4016676fb09203a3              # double 5.6010119999999999
	.quad	0x4013257ff9b56324              # double 4.7866210000000002
	.quad	0x3ff00066c2acb85a              # double 1.0000979999999999
	.quad	0x4022e2044ae85b9f              # double 9.4414390000000008
	.quad	0x3ffd1e6256366d7a              # double 1.8199179999999999
	.quad	0x401bd1a500d5e8d5              # double 6.9547309999999998
	.quad	0x3ffc29b6b2af1455              # double 1.760184
	.quad	0x3ff16a6a012599ed              # double 1.0884799999999999
	.quad	0x400a7c7c5260f5e4              # double 3.3107839999999999
	.quad	0x402207292c493426              # double 9.0139859999999992
	.quad	0x4023251d68c692f7              # double 9.5724900000000001
	.quad	0x40059220791c4b90              # double 2.6963509999999999
	.quad	0x402174b51372a38c              # double 8.7279440000000008
	.quad	0x4004b6e0d23d4f16              # double 2.589296
	.quad	0x40208e02a77a2ced              # double 8.2773640000000004
	.quad	0x400ae63f9a49c2c2              # double 3.3624260000000001
	.quad	0x4007f5286b59146e              # double 2.9947059999999999
	.quad	0x3ff6a3e8dda48b65              # double 1.415017
	.quad	0x4022cf3493858362              # double 9.4046979999999998
	.quad	0x3fe85faebc408d8f              # double 0.76168000000000002
	.quad	0x400ed33ca31e7d9a              # double 3.8531430000000002
	.quad	0x3faa8e0c9d9d3459              # double 0.051865000000000001
	.quad	0x40227c5baf533f42              # double 9.2428869999999996
	.quad	0x402192372606fac6              # double 8.785577
	.quad	0x4021b9e53a81dc0e              # double 8.8630770000000005
	.quad	0x401f09dbec2480e9              # double 7.7596280000000001
	.quad	0x4000e84ad794a6ec              # double 2.1134240000000002
	.quad	0x4021eb6bb1290258              # double 8.9598060000000004
	.quad	0x401e3c065b63d3e5              # double 7.558618
	.quad	0x40031e1d2178f68c              # double 2.3897040000000001
	.quad	0x40023ea9a3d2d880              # double 2.2805970000000002
	.quad	0x40072fac6045baf5              # double 2.8982779999999999
	.quad	0x4023a8cc35ce1826              # double 9.8296829999999993
	.quad	0x3fd1ba83f4eca687              # double 0.27700900000000001
	.quad	0x3ffc9ce9e5e24788              # double 1.7883089999999999
	.quad	0x40119a62aa19439e              # double 4.4007670000000001
	.quad	0x40186e1650a45d42              # double 6.107507
	.quad	0x40007b5bf6a0dbad              # double 2.0602339999999999
	.quad	0x3fcd28283d35eb74              # double 0.22778799999999999
	.quad	0x3ff252220bc382a1              # double 1.145052
	.quad	0x4018abd6e8af8162              # double 6.1678119999999996
	.quad	0x40236f61672324c8              # double 9.7175399999999996
	.quad	0x401b63a81dc0db27              # double 6.847321
	.quad	0x402171b66f9335d2              # double 8.7220949999999995
	.quad	0x3ffac877681669cf              # double 1.673942
	.quad	0x3fd735dedf1e0829              # double 0.36266300000000001
	.quad	0x4002476c050bd87b              # double 2.2848739999999998
	.quad	0x40006d1526d8b1dd              # double 2.0532629999999998
	.quad	0x40222e7c286f8ad2              # double 9.0907909999999994
	.quad	0x400be2328f9f44d4              # double 3.4854479999999999
	.quad	0x3ffe29fadafd1138              # double 1.885249
	.quad	0x3fe43111f0c34c1b              # double 0.63099000000000005
	.quad	0x401b3a3b9ae0c176              # double 6.8068679999999997
	.quad	0x3fedcbc27631b585              # double 0.93112300000000003
	.quad	0x3fddcfc829cfdd23              # double 0.46580700000000003
	.quad	0x4023bd5d80e496ee              # double 9.8698540000000001
	.quad	0x40109e5b8561d430              # double 4.1546459999999996
	.quad	0x40078cad57bc7f78              # double 2.9436900000000001
	.quad	0x401b71f46ed245b3              # double 6.8612840000000004
	.quad	0x3fea2ff08893b7d8              # double 0.81835199999999997
	.quad	0x40144efc7a398202              # double 5.0771350000000002
	.quad	0x3ffb98298cc14403              # double 1.7246490000000001
	.quad	0x40116a832b990afe              # double 4.3540159999999997
	.quad	0x4013259d12cadddf              # double 4.7867319999999998
	.quad	0x4008eb673c4f3ba7              # double 3.1149429999999998
	.quad	0x401480be0ded288d              # double 5.1257250000000001
	.quad	0x40202468448cf7cb              # double 8.0711080000000006
	.quad	0x40144346dc5d6388              # double 5.0656999999999996
	.quad	0x40096053e2d6238e              # double 3.1720350000000002
	.quad	0x401f1ce67d77fae3              # double 7.7782229999999996
	.quad	0x401c8212d77318fc              # double 7.1270249999999997
	.quad	0x402153545c78a6db              # double 8.6627530000000004
	.quad	0x40221441dd1a21ea              # double 9.0395649999999996
	.quad	0x40237c280ae10492              # double 9.7424929999999996
	.quad	0x4023a96052502eec              # double 9.8308129999999991
	.quad	0x3febbaf965b20b80              # double 0.86657399999999996
	.quad	0x4019002b841248d8              # double 6.2501660000000001
	.quad	0x3ff60e4da09cc31a              # double 1.3784920000000001
	.quad	0x400f01e3eaf6837f              # double 3.8759229999999998
	.quad	0x40231e5add9c27e9              # double 9.5592869999999994
	.quad	0x3fbdd701d9f4d37c              # double 0.116562
	.quad	0x3ff7312b1b36bd2b              # double 1.4495039999999999
	.quad	0x4011e09c7ffde721              # double 4.469347
	.quad	0x400f2c08b75ea67f              # double 3.8965010000000002
	.quad	0x4021f28eb463497b              # double 8.9737449999999992
	.quad	0x401339c5e6ff7dfa              # double 4.806419
	.quad	0x401cbcdfefbf401c              # double 7.1844479999999997
	.quad	0x402288e30446b69e              # double 9.2673570000000005
	.quad	0x3ff0112ba16e7a31              # double 1.004192
	.quad	0x40186340d4dc65c7              # double 6.096927
	.quad	0x3fef21426fe718a8              # double 0.97280999999999995
	.quad	0x4004d3aabcd78c43              # double 2.6033529999999998
	.quad	0x400b16bb1290257d              # double 3.3860990000000002
	.quad	0x4023bdc63ae2541e              # double 9.8706530000000008
	.quad	0x40195bdb5d894813              # double 6.3397040000000002
	.quad	0x4007045d41fa7653              # double 2.8771309999999999
	.quad	0x3fc8ead9274e22a3              # double 0.19466700000000001
	.quad	0x3fd82d2fe3f359ff              # double 0.37775799999999998
	.quad	0x4001b7542a23bff9              # double 2.2145160000000002
	.quad	0x4023e8767d34df05              # double 9.9540290000000002
	.quad	0x3fbb23aafff36ac6              # double 0.106013
	.quad	0x4021ddfeda661284              # double 8.9335850000000007
	.quad	0x3ffa935b91f70de9              # double 1.660976
	.quad	0x401df1f46ed245b3              # double 7.4862840000000003
	.quad	0x40032a3f8982cb21              # double 2.395629
	.quad	0x3fc3735c182ecaef              # double 0.15195800000000001
	.quad	0x402133c18b502abb              # double 8.6010860000000005
	.quad	0x4012094ab1d4f9c2              # double 4.509074
	.quad	0x4007f79c842fa509              # double 2.9959039999999999
	.quad	0x3fe3913404ea4a8c              # double 0.61147499999999999
	.quad	0x402190f08461f9f0              # double 8.7830849999999998
	.quad	0x3fefe8c0485a0be5              # double 0.99716199999999999
	.quad	0x4023244651f3e89b              # double 9.5708490000000008
	.quad	0x3fe12467be553ac5              # double 0.535694
	.quad	0x4021b0e410b630a9              # double 8.8454899999999999
	.quad	0x401174aa9717df1a              # double 4.3639320000000001
	.quad	0x3fc97bd8be7296f6              # double 0.19909199999999999
	.quad	0x40085ef5232d2bb2              # double 3.0463659999999999
	.quad	0x400939ee88df3733              # double 3.1532870000000002
	.quad	0x4019869552e2fbe3              # double 6.3814289999999998
	.quad	0x40235b90214ad363              # double 9.6788340000000001
	.quad	0x3ff2ebf11f926c7f              # double 1.1826030000000001
	.quad	0x4014e29d8409e55c              # double 5.2213039999999999
	.quad	0x4022b7f90d9d7775              # double 9.3593220000000005
	.quad	0x400b5479d4d83409              # double 3.416248
	.quad	0x401f51c044284dfd              # double 7.8298350000000001
	.quad	0x3fcdfd1dcd7060bb              # double 0.234287
	.quad	0x3fecdb8dc55000c9              # double 0.90180099999999996
	.quad	0x401690cbf2b239a4              # double 5.6414030000000004
	.quad	0x401c4b5c39bcba30              # double 7.0735939999999999
	.quad	0x3fe363fbbd7b2032              # double 0.60595500000000002
	.quad	0x3ff98a46e08f2171              # double 1.5962590000000001
	.quad	0x401a42e7f6f4be83              # double 6.5653379999999997
	.quad	0x4006b8b2e9ccb7d4              # double 2.840185
	.quad	0x40118fbca1059ea5              # double 4.3903679999999996
	.quad	0x4012b8eda22f6a51              # double 4.6805940000000001
	.quad	0x401116e9ff0cbaf9              # double 4.2723769999999996
	.quad	0x3fee12513b5bf6a1              # double 0.93973600000000002
	.quad	0x400df8cfbfc6540d              # double 3.7464900000000001
	.quad	0x4007400da1a93294              # double 2.9062760000000001
	.quad	0x400c8d8e432441ff              # double 3.5691190000000002
	.quad	0x3fe19f9ce8d972cd              # double 0.55073399999999995
	.quad	0x4022729131ec0b56              # double 9.2237639999999992
	.quad	0x3fd4c9cd3e0bd44a              # double 0.32481700000000002
	.quad	0x4016e151e75360d0              # double 5.7200389999999999
	.quad	0x401c403ea704bc27              # double 7.0627389999999997
	.quad	0x401bab4aec8d5c74              # double 6.9172779999999996
	.quad	0x3ff1bf69014b599b              # double 1.1092310000000001
	.quad	0x401c3a3400b88ca4              # double 7.0568390000000001
	.quad	0x3fffd67125dd095b              # double 1.989854
	.quad	0x3ffcdd388a8b08dd              # double 1.804009
	.quad	0x400c955582129457              # double 3.5729169999999999
	.quad	0x4021c818611fd588              # double 8.8908109999999994
	.quad	0x3fefb5b70691ea79              # double 0.99093200000000003
	.quad	0x3fe4a3897204295a              # double 0.64496299999999995
	.quad	0x401831c087442c80              # double 6.0485860000000002
	.quad	0x3fcf00f776c4827b              # double 0.24221699999999999
	.quad	0x4023844da9003eea              # double 9.7584049999999998
	.quad	0x401c1996312f4cf5              # double 7.0249870000000003
	.quad	0x3ffaa2f2734f82f5              # double 1.664782
	.quad	0x401e7b87bdcf0308              # double 7.620635
	.quad	0x400275903a7546d4              # double 2.307404
	.quad	0x40200e5b8561d430              # double 8.0280419999999992
	.quad	0x3ffdc292817763e5              # double 1.8600030000000001
	.quad	0x3ff920c8cd63cb81              # double 1.5705039999999999
	.quad	0x402311f01b866e44              # double 9.5350350000000005
	.quad	0x40238e95d91ab8e9              # double 9.7784870000000001
	.quad	0x401ec64628027d89              # double 7.6936270000000002
	.quad	0x400e30cb295e9e1b              # double 3.773825
	.quad	0x401f0203e63e8dda              # double 7.7519679999999997
	.quad	0x401ad6540cc78e9f              # double 6.7093049999999996
	.quad	0x401d80956c0d6f54              # double 7.3755699999999997
	.quad	0x40201ba08398a655              # double 8.0539590000000008
	.quad	0x40053cd898b2e9cd              # double 2.6547100000000001
	.quad	0x401b130164840e17              # double 6.7685599999999999
	.quad	0x4004e56798958d9b              # double 2.6120139999999998
	.quad	0x401d696030c23fab              # double 7.3529059999999999
	.quad	0x4020c2b649d388a9              # double 8.3802970000000006
	.quad	0x401ef86cebbba55d              # double 7.7426029999999999
	.quad	0x402199d3671ac14c              # double 8.8004409999999992
	.quad	0x401157e8ccdd93c4              # double 4.3358489999999996
	.quad	0x400ae13e3e29307b              # double 3.359982
	.quad	0x401be1ba7fc32ebe              # double 6.9704379999999997
	.quad	0x4006238d1d8a5482              # double 2.7673589999999999
	.quad	0x400c30795f676ea4              # double 3.5236689999999999
	.quad	0x3fdde108c3f3e037              # double 0.46686
	.quad	0x401e5c942d490e67              # double 7.5904090000000001
	.quad	0x4021b5cfaacd9e84              # double 8.8551000000000001
	.quad	0x401b359a73b42cc3              # double 6.8023470000000001
	.quad	0x401573033a4723ab              # double 5.362317
	.quad	0x401433265add9c28              # double 5.0499510000000001
	.quad	0x40158e0828c36da8              # double 5.3887029999999996
	.quad	0x3fe86c95bff04578              # double 0.76325500000000002
	.quad	0x400dcd916872b021              # double 3.7253750000000001
	.quad	0x4012a7ad4b2745bf              # double 4.6637469999999999
	.quad	0x40077ca8e2e2b8c7              # double 2.9358689999999998
	.quad	0x3fd55109070fbeba              # double 0.33307100000000001
	.quad	0x401fbf6f4be835df              # double 7.9369480000000001
	.quad	0x3ff7d4b8bef8ceb3              # double 1.4894339999999999
	.quad	0x400d906e5cd4ed2d              # double 3.6955230000000001
	.quad	0x40233b4fc610f0e9              # double 9.6158429999999999
	.quad	0x400159b56323bbc7              # double 2.168803
	.quad	0x40090d77318fc505              # double 3.1315750000000002
	.quad	0x400f1f1f14983d79              # double 3.890196
	.quad	0x4015647f13059642              # double 5.348141
	.quad	0x4005d5807fed2029              # double 2.7292489999999998
	.quad	0x3ff8183e8576cce6              # double 1.505919
	.quad	0x3fe0ebfa8f7db6e5              # double 0.528806
	.quad	0x40235b79314445aa              # double 9.6786589999999997
	.quad	0x40212b5b0bbf50e3              # double 8.5846789999999995
	.quad	0x4020663a9f383f0c              # double 8.1996660000000005
	.quad	0x3ffe0f11b60ae968              # double 1.878679
	.quad	0x401fbf4cf4a558ea              # double 7.9368169999999996
	.quad	0x40229215db3397dd              # double 9.285323
	.quad	0x3fe3ba450acc0bdd              # double 0.61648800000000004
	.quad	0x401c0af9ebe9c886              # double 7.0107189999999999
	.quad	0x401a5ac2df0d4131              # double 6.5886339999999999
	.quad	0x400c2a4b9884c6a4              # double 3.5206520000000001
	.quad	0x4016c659d12cadde              # double 5.693702
	.quad	0x40104476af89c5e7              # double 4.066859
	.quad	0x4014be1049235f81              # double 5.1856090000000004
	.quad	0x4019f80b242070b9              # double 6.4922300000000002
	.quad	0x402180655193708b              # double 8.7507730000000006
	.quad	0x3fc7138bcdfefbf4              # double 0.180284
	.quad	0x400196bc1eff9f88              # double 2.198601
	.quad	0x4021d8cf9e3864cb              # double 8.9234589999999994
	.quad	0x4012d8e970718223              # double 4.7118279999999997
	.quad	0x40225de8b3b32053              # double 9.1834159999999994
	.quad	0x4011a7cbf6e3f78c              # double 4.4138640000000002
	.quad	0x401bccbfb15b573f              # double 6.9499500000000003
	.quad	0x4012de1da7b0b392              # double 4.7169100000000004
	.quad	0x4004884f8f8a4c1f              # double 2.5665580000000001
	.quad	0x4021a56e8af81627              # double 8.8231090000000005
	.quad	0x4022c78012dfd695              # double 9.3896490000000003
	.quad	0x401fb6f8ad256799              # double 7.9286830000000003
	.quad	0x4014f772d5e071c5              # double 5.2416489999999998
	.quad	0x40046fd2a62aa194              # double 2.5546009999999999
	.quad	0x401344f483cafb3b              # double 4.8173389999999996
	.quad	0x3fe2a94573a79789              # double 0.58316299999999999
	.quad	0x40023d1d4738a3b5              # double 2.2798409999999998
	.quad	0x402286ededaec4a4              # double 9.2635339999999999
	.quad	0x400cbd2630ec3116              # double 3.5923579999999999
	.quad	0x3ff16f3c2dadb835              # double 1.0896570000000001
	.quad	0x3facf312b1b36bd3              # double 0.056542000000000002
	.quad	0x40218c2d05f28848              # double 8.7737809999999996
	.quad	0x4011d4ece9a2c669              # double 4.457935
	.quad	0x402059fa333764f1              # double 8.1757369999999998
	.quad	0x400cc67f90d9d777              # double 3.5969229999999999
	.quad	0x4023519ae924f228              # double 9.6593850000000003
	.quad	0x3ffb2b9e492bc2fc              # double 1.6981489999999999
	.quad	0x402074b7b28954a8              # double 8.2279640000000001
	.quad	0x402048a936c58eeb              # double 8.1419160000000002
	.quad	0x4022d13660e51d26              # double 9.4086180000000006
	.quad	0x3fe3efef7c243dcd              # double 0.62303900000000001
	.quad	0x401f9df82b1f687b              # double 7.9042669999999999
	.quad	0x401a8126634117f8              # double 6.6261229999999998
	.quad	0x4017fc0980b24207              # double 5.99613
	.quad	0x401c0539b888722a              # double 7.0051030000000001
	.quad	0x400961932d6ece14              # double 3.172644
	.quad	0x401234d099e0e736              # double 4.551577
	.quad	0x4013634fc610f0e9              # double 4.846984
	.quad	0x40004dda48b65237              # double 2.038014
	.quad	0x4005141d8e864021              # double 2.6348220000000002
	.quad	0x40081f58c08b75ea              # double 3.0153059999999998
	.quad	0x401ef118c197e564              # double 7.7354459999999996
	.quad	0x401503e1437c5693              # double 5.2537890000000003
	.quad	0x400f989613d31b9b              # double 3.9495049999999998
	.quad	0x401ea8b934699418              # double 7.6647689999999997
	.quad	0x400f97de939eadd6              # double 3.9491550000000002
	.quad	0x3fff42c7fbacb429              # double 1.9538040000000001
	.quad	0x3fe497763e4abe6a              # double 0.64348899999999998
	.quad	0x401f030e3cd9a522              # double 7.7529839999999997
	.quad	0x3fdb739b024f6599              # double 0.42893100000000001
	.quad	0x40143a43fe5c91d1              # double 5.0568999999999997
	.quad	0x400540f12c27a637              # double 2.6567099999999999
	.quad	0x3febe53005814941              # double 0.87172700000000003
	.quad	0x3ff761deacc92147              # double 1.4613940000000001
	.quad	0x400077d3910c2c5e              # double 2.0585089999999999
	.quad	0x40184999567dbb17              # double 6.0718740000000002
	.quad	0x40139e3715400325              # double 4.9045069999999997
	.quad	0x40219106466b1e5c              # double 8.7832509999999999
	.quad	0x401d8c3e74afd545              # double 7.3869569999999998
	.quad	0x4023bf00abf76a2f              # double 9.8730519999999994
	.quad	0x4015638476f2a5a4              # double 5.3471849999999996
	.quad	0x401425aff2a172ac              # double 5.0368040000000001
	.quad	0x40021e0ce0b912dc              # double 2.2646730000000002
	.quad	0x402371ac57e23f25              # double 9.7220180000000002
	.quad	0x4014c74927913e81              # double 5.1946149999999998
	.quad	0x401901333b96af04              # double 6.2511720000000004
	.quad	0x4004668900c521de              # double 2.5500660000000002
	.quad	0x4021cd471715c63b              # double 8.9009330000000002
	.quad	0x4023195208e15012              # double 9.5494540000000008
	.quad	0x4000a3aa79bbadc1              # double 2.0799150000000002
	.quad	0x401e2e6f71a7e308              # double 7.5453469999999995
	.quad	0x40216af09d8c6d61              # double 8.7088669999999997
	.quad	0x40142c204f2ae07e              # double 5.0430919999999997
	.quad	0x402359919ac79703              # double 9.6749390000000001
	.quad	0x4007d9c304ccee5b              # double 2.9813290000000001
	.quad	0x4010aae31d712a0f              # double 4.1668820000000002
	.quad	0x4023c52502eec7c9              # double 9.8850479999999993
	.quad	0x4019177036c9c0a9              # double 6.2728890000000002
	.quad	0x3ffd4a1059ea5721              # double 1.8305819999999999
	.quad	0x400e54d48882f0e1              # double 3.7914210000000002
	.quad	0x401644007570c565              # double 5.566408
	.quad	0x400f3efa615a8deb              # double 3.905751
	.quad	0x402190999dcb5782              # double 8.7824220000000004
	.quad	0x401ba75ff609dcf9              # double 6.9134520000000004
	.quad	0x3fc38ef34d6a161e              # double 0.15279999999999999
	.quad	0x3feaed330941c821              # double 0.84145499999999995
	.quad	0x4021c2e81882adc5              # double 8.8806770000000004
	.quad	0x3fb15b4677b395c4              # double 0.067798999999999998
	.quad	0x3fe3c24e59296702              # double 0.61746900000000005
	.quad	0x4014966ba493c89f              # double 5.1468949999999998
	.quad	0x401c562b6ae7d567              # double 7.0841500000000002
	.quad	0x3fe5df809917939a              # double 0.68353299999999995
	.quad	0x4004beb4a66559f7              # double 2.593118
	.quad	0x40141e3ffef39086              # double 5.029541
	.quad	0x4019d55b89939219              # double 6.4583570000000003
	.quad	0x4020f7922962cfd9              # double 8.4835370000000001
	.quad	0x3fe4e5ffa3b9ae0c              # double 0.65307599999999999
	.quad	0x3fde1fb82c2bd7f5              # double 0.47068599999999999
	.quad	0x401c9d117b5286b6              # double 7.1533870000000004
	.quad	0x400950dd82fd75e2              # double 3.164485
	.quad	0x3fb46f36ef8055fc              # double 0.079822000000000004
	.quad	0x401bfa5ce5b4245f              # double 6.9944949999999997
	.quad	0x401c2edbb59ddc1e              # double 7.0457599999999996
	.quad	0x40213bae685db76b              # double 8.6165649999999996
	.quad	0x4018adc55000c954              # double 6.1696980000000003
	.quad	0x3fb27b5f1bef49cf              # double 0.072194999999999995
	.quad	0x4011e93d102bc72e              # double 4.4777719999999999
	.quad	0x40140d60a6330510              # double 5.013064
	.quad	0x400dde553ac4f7ec              # double 3.7335609999999999
	.quad	0x40207254a3c64346              # double 8.2233020000000003
	.quad	0x3fdbb4d48882f0e1              # double 0.43291200000000002
	.quad	0x401e8c96030c23fb              # double 7.6372910000000002
	.quad	0x401d8e6644d87725              # double 7.389062
	.quad	0x400bdea3df6db941              # double 3.483711
	.quad	0x40084fa0d77b7c78              # double 3.0388809999999999
	.quad	0x40222ba4b5568e82              # double 9.0852409999999999
	.quad	0x401f66ce789e774f              # double 7.850397
	.quad	0x401074e0daa0cae6              # double 4.1141389999999998
	.quad	0x4020e7368ad68837              # double 8.4515879999999992
	.quad	0x40051b7952d234ec              # double 2.6384150000000002
	.quad	0x400f3039ef0f16f4              # double 3.8985479999999999
	.quad	0x400c57a56de3326a              # double 3.5427960000000001
	.quad	0x4021e552e2fbe33b              # double 8.9478980000000004
	.quad	0x401d05a469d7342f              # double 7.2555100000000001
	.quad	0x401ec73d188f42ff              # double 7.6945690000000004
	.quad	0x400490f6ad70e6f3              # double 2.570783
	.quad	0x4023b53a81dc0db2              # double 9.8539619999999992
	.quad	0x4014f29845dc8323              # double 5.2369089999999998
	.quad	0x3ff830025bfad29a              # double 1.5117210000000001
	.quad	0x3ff537ab324851a8              # double 1.3260909999999999
	.quad	0x4020f25accd53049              # double 8.4733490000000007
	.quad	0x401c4400b88ca3e8              # double 7.0664090000000002
	.quad	0x3f8f2a172abef06b              # double 0.015217
	.quad	0x40166edd48451330              # double 5.6082660000000004
	.quad	0x4016cdc443914f48              # double 5.7009439999999998
	.quad	0x401cd38b8ae31d71              # double 7.2065869999999999
	.quad	0x4010cb6e503fb374              # double 4.1986629999999998
	.quad	0x3ffeaa94ff0025c0              # double 1.9166460000000001
	.quad	0x40045b5b70691ea8              # double 2.5446080000000002
	.quad	0x400bc373f316e371              # double 3.4704359999999999
	.quad	0x40076f74cd31769b              # double 2.9294220000000002
	.quad	0x4021520ba1f4b1ee              # double 8.6602449999999997
	.quad	0x401e1283d35eb745              # double 7.5180809999999995
	.quad	0x4023082e6644d877              # double 9.5159789999999997
	.quad	0x401fd85942917508              # double 7.961278
	.quad	0x3fa840181e03f706              # double 0.047364000000000003
	.quad	0x3ff014c985f06f69              # double 1.0050749999999999
	.quad	0x3fc2913a4f8726d0              # double 0.14505699999999999
	.quad	0x4003f992428d434a              # double 2.496861
	.quad	0x401d5c7abfb9bed3              # double 7.3403119999999999
	.quad	0x3fe3b6c58eeae9ee              # double 0.61606099999999997
	.quad	0x40133c393682730c              # double 4.8088119999999996
	.quad	0x401edaa3f034b0e2              # double 7.7135160000000003
	.quad	0x3fd5136a400fba88              # double 0.32930999999999999
	.quad	0x3fe1a176ddaceee1              # double 0.55096000000000001
	.quad	0x4016dce2089e3433              # double 5.715706
	.quad	0x4005586338b47c74              # double 2.668158
	.quad	0x40197653c9abb01d              # double 6.3655540000000004
	.quad	0x401275ebfa8f7db7              # double 4.6151580000000001
	.quad	0x401eea098915bdd7              # double 7.7285519999999996
	.quad	0x3fe8f2452c59fb1e              # double 0.77957399999999999
	.quad	0x40234cda09cc319c              # double 9.6501009999999993
	.quad	0x40206322d0e56042              # double 8.1936250000000008
	.quad	0x401232d6238da3c2              # double 4.5496449999999999
	.quad	0x401ef290257c914b              # double 7.7368779999999999
	.quad	0x4003b9d0203e63e9              # double 2.4657290000000001
	.quad	0x402374768dfbd6a6              # double 9.7274670000000008
	.quad	0x40212a93d102bc73              # double 8.5831590000000002
	.quad	0x401495ac03ff6901              # double 5.1461639999999997
	.quad	0x401b23059641f645              # double 6.7842010000000004
	.quad	0x400be80d801b4352              # double 3.4883069999999998
	.quad	0x4013082278d0cc36              # double 4.7579440000000002
	.quad	0x402109b23dd54da5              # double 8.5189380000000003
	.quad	0x400794c2b51bd61f              # double 2.9476369999999998
	.quad	0x3fa49129888f861a              # double 0.040169999999999997
	.quad	0x40039b7bf1e8e608              # double 2.45092
	.quad	0x401655daf07bfe7e              # double 5.5838429999999999
	.quad	0x4004caac96cc5fc0              # double 2.5989620000000002
	.quad	0x401f677d955714ba              # double 7.8510650000000002
	.quad	0x402163b01c92ddbe              # double 8.6947030000000005
	.quad	0x40137c0c1fc8f323              # double 4.8711399999999996
	.quad	0x4023b6dd48451330              # double 9.8571570000000008
	.quad	0x40052137f38c5437              # double 2.6412200000000001
	.quad	0x40165aab042528ae              # double 5.5885429999999996
	.quad	0x402020c73abc9470              # double 8.0640199999999993
	.quad	0x4013183e8576cce6              # double 4.773676
	.quad	0x4001c0407cc7d1bb              # double 2.2188729999999999
	.quad	0x401ec5eb313be22e              # double 7.6932799999999997
	.quad	0x40165a19008205ff              # double 5.5879859999999999
	.quad	0x401b3ecd4aa10e02              # double 6.8113299999999999
	.quad	0x4011c9374bc6a7f0              # double 4.4465000000000003
	.quad	0x3fd29f05ea24cc68              # double 0.29095599999999999
	.quad	0x40053235f8099179              # double 2.6495169999999999
	.quad	0x3fd44e3ffef39086              # double 0.317276
	.quad	0x401d353d640e9d52              # double 7.3019920000000003
	.quad	0x4010f55475a31a4c              # double 4.2395800000000001
	.quad	0x4020851633482be9              # double 8.2599350000000005
	.quad	0x401a98b5cbff4773              # double 6.6491309999999997
	.quad	0x3fd683c6c97d8cf4              # double 0.35179300000000002
	.quad	0x4019224a6a875d57              # double 6.283487
	.quad	0x400b2012599ed7c7              # double 3.39066
	.quad	0x400d957abb8800eb              # double 3.6979880000000001
	.quad	0x401808055fbb517a              # double 6.0078329999999998
	.quad	0x3fff3e49b1fab96f              # double 1.952707
	.quad	0x40218ae4d1a65061              # double 8.7712769999999995
	.quad	0x4002efd7e45803cd              # double 2.367111
	.quad	0x3fe072ead9274e23              # double 0.51402800000000004
	.quad	0x3fe0aa1d755bccaf              # double 0.52076599999999995
	.quad	0x4013a7b24638c975              # double 4.9137659999999999
	.quad	0x4023b518b0d0edc4              # double 9.8537040000000004
	.quad	0x3fd5f50a02b84125              # double 0.34308100000000002
	.quad	0x3ff06990f301eabc              # double 1.025773
	.quad	0x40125ccd96206855              # double 4.5906279999999997
	.quad	0x40044ccd530489d2              # double 2.5375009999999998
	.quad	0x400d41049235f80a              # double 3.6567470000000002
	.quad	0x3ffb5ca4b124d09a              # double 1.710118
	.quad	0x401f752c59fb1e19              # double 7.864427
	.quad	0x400af733a8a3f898              # double 3.3707039999999999
	.quad	0x4021292ee84ad795              # double 8.5804360000000006
	.quad	0x4015b09a671ef30a              # double 5.4224639999999997
	.quad	0x3ffa06c11a11233e              # double 1.626649
	.quad	0x40014b9f559b3d08              # double 2.1619250000000001
	.quad	0x40138c4ef88b9778              # double 4.8870199999999997
	.quad	0x3feabc3e74afd545              # double 0.83547899999999997
	.quad	0x401f9383ad9f0a1c              # double 7.8940570000000001
	.quad	0x401bae5eaab04253              # double 6.9202830000000004
	.quad	0x402043c169c23b79              # double 8.1323349999999994
	.quad	0x3ffdae019b0ab2e1              # double 1.8549819999999999
	.quad	0x40095435ac8a3726              # double 3.166118
	.quad	0x40197675147f1306              # double 6.3656810000000004
	.quad	0x40116000431bde83              # double 4.3437510000000001
	.quad	0x40227ecdaf4adbc6              # double 9.2476629999999993
	.quad	0x400edcbd556084a5              # double 3.857783
	.quad	0x401d2c78a6dacabc              # double 7.2934289999999997
	.quad	0x40133c7000431bdf              # double 4.8090210000000004
	.quad	0x3ff4853f39d1b2e6              # double 1.2825310000000001
	.quad	0x401fecb9ecf63800              # double 7.9811779999999999
	.quad	0x401546e7e62dc6e3              # double 5.3192440000000003
	.quad	0x3fde899bf5946c33              # double 0.47714899999999999
	.quad	0x40005d5347a5b0ff              # double 2.045569
	.quad	0x3fec2033e78e1933              # double 0.87893100000000002
	.quad	0x40118148ba83f4ed              # double 4.3762540000000003
	.quad	0x40211daa0cae642c              # double 8.557938
	.quad	0x40206f531db445ed              # double 8.2174309999999995
	.quad	0x3ffdf5a858793dd9              # double 1.8724749999999999
	.quad	0x400e23a08398a655              # double 3.7673960000000002
	.quad	0x3fe01e1f3a57eaa3              # double 0.50367700000000004
	.quad	0x402161ebc83a96d5              # double 8.6912520000000004
	.quad	0x40236a1c475e6363              # double 9.7072470000000006
	.quad	0x40159c625e99e94b              # double 5.4027190000000003
	.quad	0x4020a0a0902de00d              # double 8.3137249999999998
	.quad	0x3fda8db0574b4070              # double 0.41489799999999999
	.quad	0x4006b1098d477bc0              # double 2.8364440000000002
	.quad	0x401a51327243137b              # double 6.579294
	.quad	0x401d3affb04ee7c5              # double 7.3076160000000003
	.quad	0x4004a75ddd2ae8e2              # double 2.5817220000000001
	.quad	0x4010256c508b32cf              # double 4.0365460000000004
	.quad	0x401c083be6601bca              # double 7.0080410000000004
	.quad	0x401c9c8472c0e7bc              # double 7.1528489999999998
	.quad	0x40113529fe004b7f              # double 4.3019179999999997
	.quad	0x4019c5e2046c764b              # double 6.4432450000000001
	.quad	0x4000623315d701da              # double 2.047949
	.quad	0x3ff0cafa2f05a709              # double 1.049555
	.quad	0x402090e1b4bb5e0f              # double 8.2829719999999991
	.quad	0x3fc3973d9ec70004              # double 0.15305299999999999
	.quad	0x402010f9f44d4456              # double 8.0331569999999992
	.quad	0x401ea5e95b78cc9a              # double 7.6620229999999996
	.quad	0x4021dab0a6fc58ac              # double 8.9271290000000007
	.quad	0x400b960a63305101              # double 3.4482620000000002
	.quad	0x4012a693c03bc4d2              # double 4.6626729999999998
	.quad	0x401a9a0e8427418d              # double 6.6504459999999996
	.quad	0x3ff29de481f53826              # double 1.163548
	.quad	0x4010a51611ba3ca7              # double 4.1612169999999997
	.quad	0x402160f88333fc87              # double 8.6893960000000003
	.quad	0x401b2feb4a66559f              # double 6.7967959999999996
	.quad	0x3fe3346bacf74470              # double 0.60014900000000004
	.quad	0x401f44adff822bbf              # double 7.8170700000000001
	.quad	0x4019356366d7a56e              # double 6.3021370000000001
	.quad	0x4018d917507e9d95              # double 6.2120030000000002
	.quad	0x401204117f84449e              # double 4.5039730000000002
	.quad	0x4000d45f9df548ed              # double 2.1036980000000001
	.quad	0x401394b72c5197a2              # double 4.8952299999999997
	.quad	0x400757b9e060fe48              # double 2.9178350000000002
	.quad	0x3ff86132b55ef1fe              # double 1.52373
	.quad	0x3ff78f5c28f5c28f              # double 1.4724999999999999
	.quad	0x3ff77bb517a46174              # double 1.4677020000000001
	.quad	0x4023101eeed8904f              # double 9.5314859999999992
	.quad	0x40175d7a99fa11a9              # double 5.8412879999999996
	.quad	0x4021ab76d5497311              # double 8.8348910000000007
	.quad	0x3ffdc72e275ab7dc              # double 1.8611279999999999
	.quad	0x401942bbecaab8a6              # double 6.3151700000000002
	.quad	0x40164300de4c5111              # double 5.5654329999999996
	.quad	0x4004627631b584b2              # double 2.5480770000000001
	.quad	0x4012b82d7b634dad              # double 4.6798609999999998
	.quad	0x3fd193d5347a5b10              # double 0.274648
	.quad	0x401f1d02cd39da16              # double 7.7783309999999997
	.quad	0x401e5c1333b96af0              # double 7.5899169999999998
	.quad	0x4008a3f8982cb210              # double 3.0800640000000001
	.quad	0x4023c645c358afc4              # double 9.8872509999999991
	.quad	0x401b6608d08919f0              # double 6.8496430000000004
	.quad	0x3ffac6540cc78e9f              # double 1.6734199999999999
	.quad	0x401114ead0c3d252              # double 4.2704269999999998
	.quad	0x3ff6a646f1561911              # double 1.4155949999999999
	.quad	0x401ecb4e11dbca97              # double 7.6985400000000003
	.quad	0x400dddf00abf76a3              # double 3.733368
	.quad	0x4015f969e3c96894              # double 5.4935679999999998
	.quad	0x4023afb3b7521145              # double 9.8431680000000003
	.quad	0x400d5d145d851655              # double 3.6704490000000001
	.quad	0x400a0192a737110e              # double 3.2507679999999999
	.quad	0x4018a2ae4b018612              # double 6.158868
	.quad	0x400055ef1fddebd9              # double 2.04196
	.quad	0x4021c0f301eabbcb              # double 8.8768539999999998
	.quad	0x4002cbd5dc400757              # double 2.349529
	.quad	0x401c41ac57e23f25              # double 7.0641340000000001
	.quad	0x4004ab27cbf6e3f8              # double 2.5835720000000002
	.quad	0x40111408d8ec95c0              # double 4.2695650000000001
	.quad	0x40200029ae4f3344              # double 8.000318
	.quad	0x4020dc1a47a9e2bd              # double 8.429888
	.quad	0x3ff760b6f9fcb0c0              # double 1.461112
	.quad	0x400978d25edd0529              # double 3.1839949999999999
	.quad	0x40106b77c02afddb              # double 4.1049490000000004
	.quad	0x4022189246bf0132              # double 9.0479909999999997
	.quad	0x3fe721bc126a65cf              # double 0.72286799999999996
	.quad	0x3ffc74ddf86e3b47              # double 1.778532
	.quad	0x40095096bb98c7e3              # double 3.1643500000000002
	.quad	0x3fd4af9ebe9c8861              # double 0.32321899999999998
	.quad	0x4014002a3486f04a              # double 5.0001610000000003
	.quad	0x401170281ba7fc33              # double 4.3595280000000001
	.quad	0x40046cb9ecf63800              # double 2.5530889999999999
	.quad	0x401654606748e475              # double 5.5823989999999997
	.quad	0x4010873a797891e2              # double 4.1320589999999999
	.quad	0x3fcb76922d948dc1              # double 0.214556
	.quad	0x3fc08a159817b95a              # double 0.129214
	.quad	0x401ce5b91f70de8f              # double 7.2243389999999996
	.quad	0x3fe4589acbc8c0cf              # double 0.63581600000000005
	.quad	0x4022c372a38b8ae3              # double 9.3817339999999997
	.quad	0x3ffd906ee30caa32              # double 1.8477619999999999
	.quad	0x40063d4c76d117b5              # double 2.7799309999999999
	.quad	0x4012327e9531550d              # double 4.5493110000000003
	.quad	0x402246e8d10f51ad              # double 9.1384950000000007
	.quad	0x4020385af6c69b5a              # double 8.1100689999999993
	.quad	0x400ef2f87ad080b6              # double 3.8686379999999998
	.quad	0x401295753a3ec02f              # double 4.6459549999999998
	.quad	0x401ef56f32bdc26e              # double 7.7396820000000002
	.quad	0x401e53d577963993              # double 7.5818690000000001
	.quad	0x3fd57574f722e1ac              # double 0.33529399999999998
	.quad	0x4002636b8f9b1316              # double 2.2985449999999998
	.quad	0x3ff79c8a7a41e57e              # double 1.4757180000000001
	.quad	0x3fe191afc04c8bca              # double 0.54903400000000002
	.quad	0x4015e42396073de2              # double 5.4727920000000001
	.quad	0x4023d4ead0c3d252              # double 9.9158539999999995
	.quad	0x3ff690331e3a7daa              # double 1.4102049999999999
	.quad	0x401c750d2806af47              # double 7.1143080000000003
	.quad	0x4014643e963dc487              # double 5.0978950000000003
	.quad	0x401f80ef1348b220              # double 7.8759119999999996
	.quad	0x3ffebbbf93ff25e5              # double 1.9208369999999999
	.quad	0x4003d15592d98bf8              # double 2.477214
	.quad	0x400acc7fbacb4289              # double 3.349853
	.quad	0x4014a3e63e8dda49              # double 5.1600580000000003
	.quad	0x400c5484d76ab580              # double 3.5412689999999998
	.quad	0x40158a3b9ae0c176              # double 5.3849929999999997
	.quad	0x3fffacacd184c272              # double 1.979657
	.quad	0x401dc53198288052              # double 7.4425720000000002
	.quad	0x4018904d98394749              # double 6.1409209999999996
	.quad	0x402076ab7995ee13              # double 8.2317769999999992
	.quad	0x4022172ef0ae5365              # double 9.04528
	.quad	0x4018d5d7cb2d905c              # double 6.208831
	.quad	0x40204c85e3da2f8c              # double 8.1494590000000002
	.quad	0x4009e3b2dd377e1c              # double 3.2361810000000002
	.quad	0x3fe7b24638c97529              # double 0.74051199999999995
	.quad	0x3ff67fcc9ea9a3d3              # double 1.406201
	.quad	0x40105e46cfc829d0              # double 4.0920670000000001
	.quad	0x401e0209246bf013              # double 7.5019879999999998
	.quad	0x4016d421c044284e              # double 5.70716
	.quad	0x3fdf188f42fe8251              # double 0.48587399999999997
	.quad	0x401b809203a322af              # double 6.8755569999999997
	.quad	0x40053ce63a5c1c61              # double 2.6547360000000002
	.quad	0x4015fd03d9a95422              # double 5.4970850000000002
	.quad	0x40111e88df37329c              # double 4.2798189999999998
	.quad	0x4021eee47dc37a3e              # double 8.9665870000000005
	.quad	0x40236c59103c8e26              # double 9.7116170000000004
	.quad	0x3fe4b4e9813879c4              # double 0.64708399999999999
	.quad	0x401593a53b8e4b88              # double 5.3941850000000002
	.quad	0x3ff2bdda8bd230ba              # double 1.171351
	.quad	0x4013e0bfa0945f9e              # double 4.969481
	.quad	0x3fe2931ec0b56755              # double 0.58045899999999995
	.quad	0x400f907746887a8d              # double 3.9455399999999998
	.quad	0x4011d3c18b502abb              # double 4.4567930000000002
	.quad	0x401c62a23bff8a8f              # double 7.0963219999999998
	.quad	0x40185e8c0485a0be              # double 6.0923309999999997
	.quad	0x4017c968d759ee89              # double 5.9466890000000001
	.quad	0x40236df3300de4c5              # double 9.7147459999999998
	.quad	0x3fe139de481f5382              # double 0.53831399999999996
	.quad	0x4021b2fb7e90ff97              # double 8.8495749999999997
	.quad	0x3ffcf5ac8a372607              # double 1.809979
	.quad	0x3feeb31a08bfc222              # double 0.95936299999999997
	.quad	0x4021790de093532e              # double 8.7364339999999991
	.quad	0x400ef822bbecaab9              # double 3.8711600000000002
	.quad	0x4022785cee17a030              # double 9.2350840000000005
	.quad	0x3fb1929670196d8f              # double 0.068642999999999996
	.quad	0x400d4034f3fd933e              # double 3.6563509999999999
	.quad	0x4020b8b8066c2acc              # double 8.3607790000000008
	.quad	0x40230ffcfc3f811f              # double 9.5312269999999994
	.quad	0x401d34b5568e820e              # double 7.3014729999999997
	.quad	0x3ff0e012599ed7c7              # double 1.054705
	.quad	0x4020515d2d01c0ca              # double 8.1589139999999993
	.quad	0x4007fb8023a6ce36              # double 2.9978030000000002
	.quad	0x3fdf326e115592da              # double 0.48745300000000003
	.quad	0x4008ee81882adc4d              # double 3.1164580000000002
	.quad	0x401271fea8112ba1              # double 4.6113229999999996
	.quad	0x4020cf112fd32c62              # double 8.4044279999999993
	.quad	0x401b0abb8800eae2              # double 6.7604810000000004
	.quad	0x4016b000c9539b89              # double 5.6718780000000004
	.quad	0x40164465a57646ae              # double 5.5667939999999998
	.quad	0x40218e74d1633483              # double 8.7782350000000005
	.quad	0x4016f4f97edc7ef1              # double 5.7392329999999996
	.quad	0x4005025f202107b8              # double 2.6261580000000002
	.quad	0x40231bb9f127f5e8              # double 9.5541529999999994
	.quad	0x401ad315d701d9f5              # double 6.7061380000000002
	.quad	0x4014ed6ece13f4aa              # double 5.2318680000000004
	.quad	0x401a177036c9c0a9              # double 6.5228890000000002
	.quad	0x3ff33cdcca70d1fa              # double 1.202359
	.quad	0x402091344806290f              # double 8.2836020000000001
	.quad	0x401126e696a26e54              # double 4.2879889999999996
	.quad	0x40165f3c70c996b7              # double 5.5930039999999996
	.quad	0x4020c2599ed7c6fc              # double 8.3795900000000003
	.quad	0x401a2bd33d29563b              # double 6.5427980000000003
	.quad	0x40237df4c2b51bd6              # double 9.7460079999999998
	.quad	0x4015309c7ffde721              # double 5.297472
	.quad	0x40043ffa3b9ae0c1              # double 2.5312389999999998
	.quad	0x40219603925bb7b7              # double 8.7929960000000005
	.quad	0x40162f28c79f6662              # double 5.5460539999999998
	.quad	0x40182ce89656eefa              # double 6.0438559999999999
	.quad	0x40232b4289118c19              # double 9.5844919999999991
	.quad	0x402109d6f112fd33              # double 8.5192180000000004
	.quad	0x401a2acc92146a1a              # double 6.5417959999999997
	.quad	0x40100ed56b00ffda              # double 4.0144859999999998
	.quad	0x4021611c2a023209              # double 8.6896679999999993
	.quad	0x401b17414a4d2b2c              # double 6.77271
	.quad	0x40233f69ca9ef523              # double 9.6238539999999996
	.quad	0x400fc7e9531550ca              # double 3.9726129999999999
	.quad	0x3ff5762413db7f17              # double 1.341343
	.quad	0x3fff90b1feeb2d0a              # double 1.972826
	.quad	0x400384230fcf80dc              # double 2.4395199999999999
	.quad	0x4021f35a426bb55b              # double 8.9752980000000004
	.quad	0x3ff6b8476f2a5a47              # double 1.4199900000000001
	.quad	0x400f8f4491298890              # double 3.9449550000000002
	.quad	0x400bad87f88765ba              # double 3.4597319999999998
	.quad	0x400af0e8858ff759              # double 3.3676309999999998
	.quad	0x400f000431bde82d              # double 3.8750079999999998
	.quad	0x401b1ebd09e12a52              # double 6.7800180000000001
	.quad	0x3fe0cc6a3bddfca0              # double 0.524953
	.quad	0x401b7b6b6e0d23d5              # double 6.8705270000000001
	.quad	0x3fd59a49c2c1b110              # double 0.33754200000000001
	.quad	0x401a21eeed8904f7              # double 6.5331380000000001
	.quad	0x401d5fe8ab4fa483              # double 7.343661
	.quad	0x400be9f0e4da09cc              # double 3.4892289999999999
	.quad	0x4023cccff21b3aef              # double 9.9000240000000001
	.quad	0x3ff86dd9c27e9531              # double 1.5268189999999999
	.quad	0x4023380a9de8b3b3              # double 9.6094559999999997
	.quad	0x400c9cac8e68e3ef              # double 3.5765009999999999
	.quad	0x400d4e2435696e59              # double 3.6631550000000002
	.quad	0x4020046f9b994e1a              # double 8.0086639999999996
	.quad	0x4021fa2a4db163bb              # double 8.9886040000000005
	.quad	0x40082fb65668c261              # double 3.0232969999999999
	.quad	0x3fea3b3636f3b214              # double 0.81972800000000001
	.quad	0x4018344e93e1c9b4              # double 6.0510809999999999
	.quad	0x4017d44417870542              # double 5.9572909999999997
	.quad	0x4023919e0e73604a              # double 9.7844090000000001
	.quad	0x40063f66e86c6584              # double 2.780958
	.quad	0x3ff8f3f748a15981              # double 1.5595619999999999
	.quad	0x4017eda0dfdef848              # double 5.9820589999999996
	.quad	0x40149ef5a964e8b8              # double 5.1552340000000001
	.quad	0x40185e4de3b8a19d              # double 6.0920940000000003
	.quad	0x4009259fb1e18efc              # double 3.1433710000000001
	.quad	0x400740157eed45e9              # double 2.906291
	.quad	0x3fdf4e8b7e4de3b9              # double 0.48916900000000002
	.quad	0x4022a4e7253da72a              # double 9.3220759999999991
	.quad	0x401545efa615a8df              # double 5.3182970000000003
	.quad	0x4007e86cebbba55d              # double 2.988489
	.quad	0x4019f27bb2fec56d              # double 6.4867999999999997
	.quad	0x40087beb9e492bc3              # double 3.060508
	.quad	0x4018d47ecfe9b7bf              # double 6.2075149999999999
	.quad	0x4007c19fc2a8869c              # double 2.9695429999999998
	.quad	0x401aef20a73f748a              # double 6.7335229999999999
	.quad	0x4004eb65a9a80496              # double 2.6149399999999998
	.quad	0x400292f901083dbc              # double 2.3217639999999999
	.quad	0x401bcdb2b346130a              # double 6.9508770000000002
	.quad	0x3fe9a76102795704              # double 0.801682
	.quad	0x3ff04da3c21187e8              # double 1.0189550000000001
	.quad	0x40209d38ef34d6a1              # double 8.3070749999999993
	.quad	0x4010f10129cbab65              # double 4.2353560000000003
	.quad	0x3fd068943e100608              # double 0.25638300000000003
	.quad	0x4020c180f55de58e              # double 8.3779369999999993
	.quad	0x40041b1fab96f21f              # double 2.5132439999999998
	.quad	0x401aeb01c92ddbdb              # double 6.7294989999999997
	.quad	0x4022505d0fa58f71              # double 9.1569599999999998
	.quad	0x4018d266772d5e07              # double 6.2054689999999999
	.quad	0x4023a66ba493c89f              # double 9.8250399999999995
	.quad	0x401b9dc1615ebfa9              # double 6.904058
	.quad	0x4015205532617c1c              # double 5.2815750000000001
	.quad	0x402352f1886df82b              # double 9.6619989999999997
	.quad	0x400a95e2046c764b              # double 3.3231850000000001
	.quad	0x3ff4565907d91255              # double 1.2710809999999999
	.quad	0x401f9413db7f1737              # double 7.8946069999999997
	.quad	0x3ff35909f1f14984              # double 1.209238
	.quad	0x4022eae33eff1950              # double 9.4587649999999996
	.quad	0x40138f32bdc26dce              # double 4.8898419999999998
	.quad	0x4023138b47c73eee              # double 9.5381719999999994
	.quad	0x4017a41f212d7732              # double 5.9102750000000004
	.quad	0x3ff5f903211cb03a              # double 1.373294
	.quad	0x3ffb6c81d3aa36a0              # double 1.713991
	.quad	0x4013dd63022dd7aa              # double 4.9661980000000003
	.quad	0x3ff88eeae9ee45c3              # double 1.5348919999999999
	.quad	0x3ffd869b5a63f9a5              # double 1.8453630000000001
	.quad	0x4016fd2dcb1465e9              # double 5.7472450000000004
	.quad	0x401c7a322af57710              # double 7.119332
	.quad	0x3fffa6aa8eb46349              # double 1.9781899999999999
	.quad	0x3fec06f694467382              # double 0.87585000000000002
	.quad	0x401ea34a44c7b02d              # double 7.6594629999999996
	.quad	0x400a30ff97247454              # double 3.2739250000000002
	.quad	0x4009764e8b7e4de4              # double 3.1827670000000001
	.quad	0x401fe383ad9f0a1c              # double 7.9721820000000001
	.quad	0x400b9064ece9a2c6              # double 3.4455049999999998
	.quad	0x4022257060bb2bbb              # double 9.0731230000000007
	.quad	0x401e45f7c6759ab7              # double 7.5683280000000001
	.quad	0x401fef5d78811b1e              # double 7.9837550000000004
	.quad	0x3ff212018a43bb41              # double 1.1293960000000001
	.quad	0x40205ac55c96030c              # double 8.1772869999999997
	.quad	0x401f3584f4c6e6da              # double 7.8022650000000002
	.quad	0x401f83a53b8e4b88              # double 7.8785600000000002
	.quad	0x402257c7820a30db              # double 9.1714439999999993
	.quad	0x4016d0bd44998d04              # double 5.7038469999999997
	.quad	0x400891654d61b2a2              # double 3.0709939999999998
	.quad	0x4021569878316a05              # double 8.6691319999999994
	.quad	0x400016f4be835dee              # double 2.011209
	.quad	0x402081de8b3b3205              # double 8.2536509999999996
	.quad	0x4010333a0407cc7d              # double 4.0500259999999999
	.quad	0x402330da1a93293d              # double 9.5954139999999998
	.quad	0x4023e68f08461f9f              # double 9.9503099999999999
	.quad	0x401f633ebbfd71b0              # double 7.8469189999999998
	.quad	0x400c89b6b2af1455              # double 3.5672429999999999
	.quad	0x40136b1a6d698fe7              # double 4.8545930000000004
	.quad	0x401b2ee78183f91e              # double 6.7958049999999997
	.quad	0x40101ebf22c01e69              # double 4.0300260000000003
	.quad	0x400ce9fe86833c60              # double 3.614255
	.quad	0x4023edaccd53048a              # double 9.9642090000000003
	.quad	0x4016be30446b69db              # double 5.6857309999999996
	.quad	0x3feda6f60e0eb67c              # double 0.92663099999999998
	.quad	0x3ff80d73860999dd              # double 1.5032840000000001
	.quad	0x3ff7ac753e707e17              # double 1.4796039999999999
	.quad	0x40223a0d77b7c782              # double 9.1133839999999999
	.quad	0x401ae320d9945b6c              # double 6.7218049999999998
	.quad	0x3ff8dd4b6a619daa              # double 1.554027
	.quad	0x4020c5bb59ddc1e8              # double 8.3861950000000007
	.quad	0x4017d7e414e7ee91              # double 5.9608309999999998
	.quad	0x4013ed26fa3fcc9f              # double 4.9815940000000003
	.quad	0x40206f6640a6b93d              # double 8.2175770000000004
	.quad	0x401d27b4e54f7a92              # double 7.2887760000000004
	.quad	0x40138a3b9ae0c176              # double 4.8849929999999997
	.quad	0x400cf0ae536501e2              # double 3.6175199999999998
	.quad	0x4007374794ea0770              # double 2.9019919999999999
	.quad	0x40003ef49cf56ead              # double 2.0307400000000002
	.quad	0x401a2fb4c3c18b50              # double 6.5465879999999999
	.quad	0x401f3a57a786c227              # double 7.8069750000000004
	.quad	0x4022c829f16b11c7              # double 9.3909450000000003
	.quad	0x40239a5b0ff10ecb              # double 9.8014759999999991
	.quad	0x400f34dd72367e41              # double 3.9008129999999999
	.quad	0x4019f637bd05af6c              # double 6.4904469999999996
	.quad	0x401edda4052d666b              # double 7.7164460000000003
	.quad	0x4021aaa25d8d79d1              # double 8.8332700000000006
	.quad	0x4015fc2b94d94079              # double 5.4962600000000004
	.quad	0x401db6db0dd82fd7              # double 7.4285699999999997
	.quad	0x3febd0f6273929ed              # double 0.86925799999999998
	.quad	0x4014ff9fcb0c026d              # double 5.2496330000000002
	.quad	0x400f07dcbddb9842              # double 3.8788390000000001
	.quad	0x400178d045fe1112              # double 2.1839909999999998
	.quad	0x40074b6284599674              # double 2.9118089999999999
	.quad	0x402297e47991bc56              # double 9.2966650000000008
	.quad	0x4008969a0ad8a116              # double 3.0735359999999998
	.quad	0x401aac0df58c08b7              # double 6.6680219999999997
	.quad	0x4016ce8b3b320536              # double 5.7017030000000002
	.quad	0x400d178140dd3fe2              # double 3.6364770000000002
	.quad	0x402330f238972043              # double 9.5955980000000007
	.quad	0x401a636c58eeae9f              # double 6.5970930000000001
	.quad	0x3fe2c51fc4c16590              # double 0.58656299999999995
	.quad	0x3ffb24345cfede98              # double 1.696339
	.quad	0x4012ab91b3f20a74              # double 4.667548
	.quad	0x401b9cec84f8f8a5              # double 6.9032460000000002
	.quad	0x4021482a77a2cecd              # double 8.6409490000000009
	.quad	0x40186fa00e27e0f0              # double 6.1090090000000004
	.quad	0x40107543f1c75819              # double 4.1145170000000002
	.quad	0x40213d905c033615              # double 8.6202419999999993
	.quad	0x4010dcf63800218e              # double 4.2157830000000001
	.quad	0x3fa004b7f5a5332b              # double 0.031286000000000001
	.quad	0x3ff92222d5171e2a              # double 1.5708340000000001
	.quad	0x4014b0999dcb5782              # double 5.1724610000000002
	.quad	0x40042b074a771c97              # double 2.52101
	.quad	0x3ff9bae685db76b4              # double 1.6081300000000001
	.quad	0x402014bba12b5e53              # double 8.0404940000000007
	.quad	0x400b25aab4741073              # double 3.393392
	.quad	0x4012433f42352eb6              # double 4.565671
	.quad	0x3fc88f75536933a0              # double 0.19187799999999999
	.quad	0x401e100c9539b888              # double 7.5156729999999996
	.quad	0x401fbf944241c3f0              # double 7.9370890000000003
	.quad	0x40171ad14a0a0f4d              # double 5.7761889999999996
	.quad	0x401061bc55864452              # double 4.0954449999999998
	.quad	0x4020e8854cdb7ae5              # double 8.4541419999999992
	.quad	0x3ffa244d87724fa9              # double 1.6338630000000001
	.quad	0x4019977dd872f33d              # double 6.3979410000000003
	.quad	0x401295885d31337f              # double 4.6460280000000003
	.quad	0x40064fba8826aa8f              # double 2.7889300000000001
	.quad	0x4014bee957470eb2              # double 5.1864369999999997
	.quad	0x4008e221426fe719              # double 3.1104150000000002
	.quad	0x4021def954eb13e0              # double 8.9354960000000005
	.quad	0x4023771348b22079              # double 9.7325689999999998
	.quad	0x40024dbd72bcb5fe              # double 2.2879589999999999
	.quad	0x40097ed527e52157              # double 3.1869299999999998
	.quad	0x4017225c3dee7818              # double 5.7835549999999998
	.quad	0x401c466234a87e39              # double 7.0687340000000001
	.quad	0x400d7b1422ccb3a2              # double 3.6850969999999998
	.quad	0x4022ab5c182ecaef              # double 9.3346870000000006
	.quad	0x3ff99bb16c1e364c              # double 1.600511
	.quad	0x400a30a2ca9ac365              # double 3.2737479999999999
	.quad	0x401c2c5260f5e41d              # double 7.0432829999999997
	.quad	0x3fe7e52157689ca2              # double 0.74672000000000005
	.quad	0x3ffb0a9bcfd4bf0a              # double 1.6900900000000001
	.quad	0x3ff0b4b0e1b4bb5e              # double 1.044114
	.quad	0x400e264a16a48733              # double 3.7686959999999998
	.quad	0x3fe0f0fe047d3d43              # double 0.52941800000000006
	.quad	0x401d40ced4e4c943              # double 7.3132890000000002
	.quad	0x4023280c0f01fb83              # double 9.5782170000000004
	.quad	0x4000ab09e98dcdb3              # double 2.0835149999999998
	.quad	0x40143f345069a4df              # double 5.0617229999999998
	.quad	0x4009c22f6a50d6b2              # double 3.2198169999999999
	.quad	0x401f37e9d94d0dd0              # double 7.8046030000000002
	.quad	0x401425186db50f41              # double 5.0362260000000001
	.quad	0x400140ad8a11665a              # double 2.1565810000000001
	.quad	0x4023c1afe1da7b0b              # double 9.8782949999999996
	.quad	0x400d81e364bec67a              # double 3.6884220000000001
	.quad	0x400e3850df15a4ad              # double 3.777498
	.quad	0x40109e835dedf1e1              # double 4.1547980000000004
	.quad	0x3fd6024f6598e10d              # double 0.343891
	.quad	0x4023727f5e84f095              # double 9.7236279999999997
	.size	.L__constant_2500xf64, 20000

	.section	".note.GNU-stack","",@progbits
