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
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
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
	.cfi_offset s11, -104
	li	t6, 0
	ld	a6, 424(sp)
	ld	t0, 416(sp)
	ld	t1, 408(sp)
	ld	t2, 400(sp)
	ld	t3, 392(sp)
	ld	t5, 384(sp)
	ld	t4, 376(sp)
	ld	s4, 144(sp)
	ld	s5, 304(sp)
	ld	s6, 224(sp)
	ld	s7, 264(sp)
	csrr	a4, vlenb
	li	s2, 99
	slli	s11, a4, 3
	vsetvli	a1, zero, e32, m4, ta, ma
	vid.v	v4
	li	s3, 800
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	t6, t6, 1
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_8 Depth 3
	blt	s2, t6, .LBB1_11
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	slli	a1, t6, 3
	add	a1, a1, a2
	lwu	a3, 4(a1)
	lwu	a5, 0(a1)
	lwu	s0, 12(a1)
	lwu	a1, 8(a1)
	slli	a3, a3, 32
	or	s9, a3, a5
	slli	s0, s0, 32
	or	s8, s0, a1
	mul	ra, t6, s3
	add	ra, ra, t5
	j	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	addi	s9, s9, 1
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
	bge	s9, s8, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	slli	a1, s9, 3
	add	a3, a7, a1
	lwu	a5, 0(a3)
	lwu	a3, 4(a3)
	slli	a5, a5, 3
	slli	a3, a3, 35
	or	a3, a3, a5
	add	a3, a3, s6
	lwu	a5, 0(a3)
	lwu	s0, 4(a3)
	lwu	s1, 8(a3)
	lwu	a3, 12(a3)
	add	a1, a1, s4
	fld	fa5, 0(a1)
	slli	s0, s0, 32
	slli	a3, a3, 32
	or	s0, s0, a5
	or	s10, a3, s1
	slli	a3, s0, 3
	add	a5, s5, a3
	add	a3, a3, s7
	sub	a1, s10, s0
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vx	v0, v4, s1
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v8, 0
	vmv.v.i	v24, 0
	vle64.v	v24, (a3), v0.t
	vmv.v.i	v16, 0
	vsll.vi	v24, v24, 3
	vluxei64.v	v16, (ra), v24, v0.t
	vle64.v	v8, (a5), v0.t
	vfmul.vf	v8, v8, fa5
	vfadd.vv	v8, v16, v8
	vsoxei64.v	v8, (ra), v24, v0.t
	add	s0, s0, a4
	add	a3, a3, s11
	add	a5, a5, s11
	sub	a1, a1, a4
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	s0, s10, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	s1, a4
	blt	a4, a1, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	s1, a1
	j	.LBB1_7
.LBB1_11:
	sd	t4, 0(a0)
	sd	t5, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
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
	.cfi_restore s11
	addi	sp, sp, 112
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	sparse_sparse_matmul, .Lfunc_end1-sparse_sparse_matmul
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI2_0:
	.quad	0x414668ebf77403de              # double 2937303.9332280001
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
	.quad	56                              # 0x38
	.quad	75                              # 0x4b
	.quad	126                             # 0x7e
	.quad	139                             # 0x8b
	.quad	196                             # 0xc4
	.quad	207                             # 0xcf
	.quad	266                             # 0x10a
	.quad	273                             # 0x111
	.quad	330                             # 0x14a
	.quad	348                             # 0x15c
	.quad	407                             # 0x197
	.quad	422                             # 0x1a6
	.quad	482                             # 0x1e2
	.quad	490                             # 0x1ea
	.quad	544                             # 0x220
	.quad	549                             # 0x225
	.quad	604                             # 0x25c
	.quad	614                             # 0x266
	.quad	671                             # 0x29f
	.quad	686                             # 0x2ae
	.quad	746                             # 0x2ea
	.quad	765                             # 0x2fd
	.quad	819                             # 0x333
	.quad	828                             # 0x33c
	.quad	887                             # 0x377
	.quad	898                             # 0x382
	.quad	959                             # 0x3bf
	.quad	969                             # 0x3c9
	.quad	1027                            # 0x403
	.quad	1038                            # 0x40e
	.quad	1096                            # 0x448
	.quad	1109                            # 0x455
	.quad	1164                            # 0x48c
	.quad	1177                            # 0x499
	.quad	1230                            # 0x4ce
	.quad	1238                            # 0x4d6
	.quad	1297                            # 0x511
	.quad	1312                            # 0x520
	.quad	1369                            # 0x559
	.quad	1384                            # 0x568
	.quad	1439                            # 0x59f
	.quad	1453                            # 0x5ad
	.quad	1510                            # 0x5e6
	.quad	1522                            # 0x5f2
	.quad	1575                            # 0x627
	.quad	1588                            # 0x634
	.quad	1647                            # 0x66f
	.quad	1659                            # 0x67b
	.quad	1714                            # 0x6b2
	.quad	1724                            # 0x6bc
	.quad	1780                            # 0x6f4
	.quad	1795                            # 0x703
	.quad	1852                            # 0x73c
	.quad	1866                            # 0x74a
	.quad	1923                            # 0x783
	.quad	1942                            # 0x796
	.quad	2001                            # 0x7d1
	.quad	2015                            # 0x7df
	.quad	2075                            # 0x81b
	.quad	2086                            # 0x826
	.quad	2141                            # 0x85d
	.quad	2155                            # 0x86b
	.quad	2215                            # 0x8a7
	.quad	2232                            # 0x8b8
	.quad	2286                            # 0x8ee
	.quad	2296                            # 0x8f8
	.quad	2354                            # 0x932
	.quad	2365                            # 0x93d
	.quad	2421                            # 0x975
	.quad	2434                            # 0x982
	.quad	2490                            # 0x9ba
	.quad	2505                            # 0x9c9
	.quad	2561                            # 0xa01
	.quad	2571                            # 0xa0b
	.quad	2629                            # 0xa45
	.quad	2642                            # 0xa52
	.quad	2695                            # 0xa87
	.quad	2717                            # 0xa9d
	.quad	2776                            # 0xad8
	.quad	2791                            # 0xae7
	.quad	2846                            # 0xb1e
	.quad	2861                            # 0xb2d
	.quad	2915                            # 0xb63
	.quad	2932                            # 0xb74
	.quad	2991                            # 0xbaf
	.quad	3006                            # 0xbbe
	.quad	3064                            # 0xbf8
	.quad	3078                            # 0xc06
	.quad	3133                            # 0xc3d
	.quad	3147                            # 0xc4b
	.quad	3208                            # 0xc88
	.quad	3222                            # 0xc96
	.quad	3280                            # 0xcd0
	.quad	3292                            # 0xcdc
	.quad	3345                            # 0xd11
	.quad	3359                            # 0xd1f
	.quad	3415                            # 0xd57
	.quad	3433                            # 0xd69
	.quad	3487                            # 0xd9f
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
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
	.quad	47                              # 0x2f
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
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
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	83                              # 0x53
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	84                              # 0x54
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
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
	.quad	56                              # 0x38
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
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
	.quad	41                              # 0x29
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
	.quad	67                              # 0x43
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	83                              # 0x53
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
	.quad	51                              # 0x33
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	24                              # 0x18
	.quad	47                              # 0x2f
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
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
	.quad	50                              # 0x32
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
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	66                              # 0x42
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
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	57                              # 0x39
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
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	69                              # 0x45
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	81                              # 0x51
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
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	46                              # 0x2e
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
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
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	22                              # 0x16
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
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
	.quad	34                              # 0x22
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	17                              # 0x11
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
	.quad	57                              # 0x39
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
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
	.quad	39                              # 0x27
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
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	90                              # 0x5a
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	31                              # 0x1f
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
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	97                              # 0x61
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
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
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
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
	.quad	19                              # 0x13
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
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
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	70                              # 0x46
	.quad	90                              # 0x5a
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
	.quad	49                              # 0x31
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	21                              # 0x15
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
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
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
	.quad	9                               # 0x9
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	7                               # 0x7
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
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
	.quad	43                              # 0x2b
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
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
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
	.quad	81                              # 0x51
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
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
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
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	89                              # 0x59
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
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
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x3ffa05e5f30e7ff6              # double 1.6264400000000001
	.quad	0x3fef1f77292c4934              # double 0.97259099999999998
	.quad	0x4019ab34a44c7b03              # double 6.4171930000000001
	.quad	0x400f750ebaade658              # double 3.9321570000000001
	.quad	0x4013b35610adcd2d              # double 4.9251329999999998
	.quad	0x400edc0ebedfa440              # double 3.85745
	.quad	0x40169a61e0c5a815              # double 5.6507639999999997
	.quad	0x4020fff609dcf894              # double 8.499924
	.quad	0x4020cba604e1e710              # double 8.3977509999999995
	.quad	0x3ff869835158b828              # double 1.52576
	.quad	0x4022574906034f40              # double 9.1704790000000002
	.quad	0x3ff819d12cadddf4              # double 1.5063029999999999
	.quad	0x400d60817fc7607c              # double 3.6721219999999999
	.quad	0x40042d983947496b              # double 2.5222630000000001
	.quad	0x401d94484944ed70              # double 7.3948070000000001
	.quad	0x40170c358afc47e5              # double 5.7619230000000003
	.quad	0x40139c460ed80a18              # double 4.9026110000000003
	.quad	0x40216f8e9f6a93f3              # double 8.7178850000000008
	.quad	0x400f862131a8ef78              # double 3.940493
	.quad	0x4016c18090b417ca              # double 5.6889669999999999
	.quad	0x400e00b912dba4d7              # double 3.750353
	.quad	0x4016d2606fac6046              # double 5.7054460000000002
	.quad	0x3ffec9235f809918              # double 1.9241060000000001
	.quad	0x401e193964a59c06              # double 7.5246329999999997
	.quad	0x400411e8e6080735              # double 2.5087449999999998
	.quad	0x3fdfba51a005c465              # double 0.49574699999999999
	.quad	0x4012beb78897e996              # double 4.6862469999999998
	.quad	0x402310b5aa715832              # double 9.5326360000000001
	.quad	0x402275017dae8188              # double 9.2285269999999997
	.quad	0x40180c48f10a99b7              # double 6.011997
	.quad	0x401776b3bb83cf2d              # double 5.86592
	.quad	0x4010ad30f062d40b              # double 4.1691320000000003
	.quad	0x3ff96031ceaf251c              # double 1.585985
	.quad	0x3fd78e6d15ad106f              # double 0.36806800000000001
	.quad	0x3ff5f94317acc4f0              # double 1.3733550000000001
	.quad	0x3fe07ec99f1ae2da              # double 0.51547699999999996
	.quad	0x401469e6256366d8              # double 5.1034170000000003
	.quad	0x401a4be8bc169c24              # double 6.5741300000000003
	.quad	0x40042008e9b38d61              # double 2.5156420000000002
	.quad	0x3ff7ac6ef3d3a1d3              # double 1.479598
	.quad	0x3ff3ee3b46fdeb53              # double 1.245662
	.quad	0x401229a176ddacef              # double 4.5406550000000001
	.quad	0x40080d3f9e7b80aa              # double 3.0064690000000001
	.quad	0x4014a49cf56eac86              # double 5.160755
	.quad	0x4020817b5286b591              # double 8.2528939999999995
	.quad	0x40170230b9dc2f40              # double 5.7521389999999997
	.quad	0x3fd8894c447c30d3              # double 0.38338
	.quad	0x4023750aed99cbef              # double 9.7285990000000008
	.quad	0x401fa85553ef6b5d              # double 7.9143879999999997
	.quad	0x3ffcedaec4a4095f              # double 1.808028
	.quad	0x40043249e44fa051              # double 2.5245549999999999
	.quad	0x4019fb56323bbc6f              # double 6.4954460000000003
	.quad	0x40173de093532e7b              # double 5.8104269999999998
	.quad	0x400bf17df19d66ae              # double 3.4929160000000001
	.quad	0x4018ffc9ff92f2b6              # double 6.2497939999999996
	.quad	0x4012df7be121ee67              # double 4.7182459999999997
	.quad	0x400beb19a415f45e              # double 3.489795
	.quad	0x40209fad4b2745bf              # double 8.3118689999999997
	.quad	0x40061b2f661f18ca              # double 2.763274
	.quad	0x40114fafc8b0079a              # double 4.3278189999999999
	.quad	0x401af610adcd2d45              # double 6.7402980000000001
	.quad	0x400b6656abde3fbc              # double 3.4249700000000001
	.quad	0x3ffd0b20fb224aae              # double 1.8152170000000001
	.quad	0x4006152d234eb9a1              # double 2.7603399999999998
	.quad	0x400c5c4b90214ad3              # double 3.5450659999999998
	.quad	0x401f69c9d5a187a5              # double 7.8533090000000003
	.quad	0x4020729d8409e55c              # double 8.2238579999999998
	.quad	0x402396cc1ca3a4b5              # double 9.7945259999999993
	.quad	0x40222ad44dca8e2e              # double 9.0836509999999997
	.quad	0x40088e28ed5f138c              # double 3.0694140000000001
	.quad	0x40069bc77143393b              # double 2.8260640000000001
	.quad	0x401dea600b029281              # double 7.4788819999999996
	.quad	0x40187e685db76b3c              # double 6.1234450000000002
	.quad	0x4014cc88a47ecfea              # double 5.1997400000000003
	.quad	0x4021ff53a3ec02f3              # double 8.998685
	.quad	0x401b76ba493c89f4              # double 6.865945
	.quad	0x3ffdff0995aaf790              # double 1.874765
	.quad	0x401de5a4f00ef135              # double 7.4742620000000004
	.quad	0x3ff14a88effe2a3d              # double 1.080697
	.quad	0x40200a41a261bf38              # double 8.0200320000000005
	.quad	0x400a7c37a3db3bfb              # double 3.3106529999999998
	.quad	0x401287e6f71a7e31              # double 4.6327170000000004
	.quad	0x40232f91e646f156              # double 9.5929099999999998
	.quad	0x3ff2a6e978d4fdf4              # double 1.1657500000000001
	.quad	0x40085b69984a0e41              # double 3.044635
	.quad	0x401f26a593a2df93              # double 7.7877409999999995
	.quad	0x400f530f8c64fdb1              # double 3.9155570000000002
	.quad	0x40076e789e774eec              # double 2.928941
	.quad	0x3ff2ba2f05a708ee              # double 1.170455
	.quad	0x3ffb90c804102ff9              # double 1.722847
	.quad	0x40182d7fd82773e2              # double 6.0444329999999997
	.quad	0x400108fa7a85015c              # double 2.1293839999999999
	.quad	0x40101a8e2e2b8c76              # double 4.0259330000000002
	.quad	0x40055d25247cb70b              # double 2.6704810000000001
	.quad	0x400eab7baecd0785              # double 3.8337319999999999
	.quad	0x3ff938ab0c88a47f              # double 1.576335
	.quad	0x3fe1244a6223e187              # double 0.53568000000000005
	.quad	0x40110820e6299525              # double 4.2579380000000002
	.quad	0x3fc4aad1d041cc53              # double 0.161463
	.quad	0x401a3ae07e5a78f2              # double 6.5574969999999997
	.quad	0x4021c07b99d451fc              # double 8.8759429999999994
	.quad	0x3ff457e77d523b36              # double 1.271461
	.quad	0x401096605ee568a5              # double 4.146852
	.quad	0x40170a450acc0bdd              # double 5.7600290000000003
	.quad	0x40166ea6c1a048e0              # double 5.6080579999999998
	.quad	0x40225ac0e7bc3c5c              # double 9.1772530000000003
	.quad	0x40222d1a65061416              # double 9.0880919999999996
	.quad	0x4017b88a47ecfe9b              # double 5.9302149999999996
	.quad	0x4022796df3f96180              # double 9.2371669999999995
	.quad	0x401f9198aeb80ed0              # double 7.8921840000000003
	.quad	0x4022f907314ca926              # double 9.486383
	.quad	0x40212effc115df65              # double 8.5917949999999994
	.quad	0x4010ecc319c5a3e4              # double 4.2312130000000003
	.quad	0x4021f04988094e5d              # double 8.9693109999999994
	.quad	0x3fed75d35653c9ac              # double 0.92063300000000003
	.quad	0x400685e2478854ce              # double 2.8153730000000001
	.quad	0x4009f5f56a7ac81d              # double 3.2450969999999999
	.quad	0x40069d33d29563aa              # double 2.826759
	.quad	0x400e2d46f587d6f9              # double 3.7721079999999998
	.quad	0x3fff2d634549b62c              # double 1.9485809999999999
	.quad	0x3ffc22e1ac57e23f              # double 1.758516
	.quad	0x3fbae1bd1ed9dfdb              # double 0.105007
	.quad	0x400022174c4cdfad              # double 2.0166460000000002
	.quad	0x401f2b6cbd987c63              # double 7.7924069999999998
	.quad	0x4021f417225b749b              # double 8.9767390000000002
	.quad	0x400144167a95c854              # double 2.1582460000000001
	.quad	0x402386c7a7c9de05              # double 9.7632419999999999
	.quad	0x401c9a7221858bc6              # double 7.1508260000000003
	.quad	0x4007f17e77d523b3              # double 2.9929169999999998
	.quad	0x3ff0a7967caea748              # double 1.040915
	.quad	0x4020086e3b46fdeb              # double 8.0164659999999994
	.quad	0x4023aede97d06bbe              # double 9.8415420000000005
	.quad	0x4020858750c1b973              # double 8.2607979999999994
	.quad	0x40157aa7ded6ba8c              # double 5.3697809999999997
	.quad	0x3fd9d6e47dc37a3e              # double 0.40374100000000002
	.quad	0x40103865d7cb2d90              # double 4.0550759999999997
	.quad	0x40021df2a9d627bf              # double 2.2646229999999998
	.quad	0x3fc49a5ebb7739f3              # double 0.16096099999999999
	.quad	0x4012f09dcf893faf              # double 4.7349769999999998
	.quad	0x401309c0a8d21bc1              # double 4.7595239999999999
	.quad	0x401b8a1a500d5e8d              # double 6.8848659999999997
	.quad	0x3fe1313be22e5de1              # double 0.53725999999999996
	.quad	0x402175dbb9cf9a07              # double 8.7301920000000006
	.quad	0x400ab44a1f080304              # double 3.3380320000000001
	.quad	0x3fc05692b3cc4ac7              # double 0.12764200000000001
	.quad	0x4018d2b3461309c8              # double 6.205762
	.quad	0x400de0a06e9ff0cc              # double 3.7346810000000001
	.quad	0x401a0d2b2bfdb4cc              # double 6.5128599999999999
	.quad	0x40200267620ee8d1              # double 8.0046949999999999
	.quad	0x400d3f6db940fece              # double 3.6559710000000001
	.quad	0x401f069c66d373b0              # double 7.756456
	.quad	0x4013a01e68a0d34a              # double 4.9063660000000002
	.quad	0x4022f87229e90796              # double 9.4852460000000001
	.quad	0x3fa1df548ecd8dbd              # double 0.034907000000000001
	.quad	0x40228cdf266ba494              # double 9.2751400000000003
	.quad	0x401acf3300de4c51              # double 6.7023429999999999
	.quad	0x4013503e20ccff22              # double 4.8283620000000003
	.quad	0x400eb4e65bea0ba2              # double 3.83833
	.quad	0x401ea1eff9f87f02              # double 7.6581419999999998
	.quad	0x401bd88b545c78a7              # double 6.9614690000000001
	.quad	0x4023ee9a0ad8a116              # double 9.9660189999999993
	.quad	0x40175a7f8012dfd7              # double 5.8383770000000004
	.quad	0x4007222f6a50d6b2              # double 2.8916919999999999
	.quad	0x4022e9fcd24e160e              # double 9.4570070000000008
	.quad	0x4022d9743e963dc5              # double 9.4247150000000008
	.quad	0x4021ae8ec52a411c              # double 8.8409329999999997
	.quad	0x3ff6dcd91eeaa6d2              # double 1.4289179999999999
	.quad	0x4015e5a4f00ef135              # double 5.4742620000000004
	.quad	0x3ff77ba55d1c3ac9              # double 1.467687
	.quad	0x402354c2d6a9c561              # double 9.6655490000000003
	.quad	0x401dc532e7b3d8e0              # double 7.442577
	.quad	0x4022151782d38477              # double 9.0411950000000001
	.quad	0x401ddfd0d0678c00              # double 7.4685699999999997
	.quad	0x4013688ebcc6c54c              # double 4.8521070000000002
	.quad	0x4016af2e05ccc89b              # double 5.6710739999999999
	.quad	0x401bae2eb1c432ca              # double 6.9200999999999997
	.quad	0x401a40079a2834d2              # double 6.5625289999999996
	.quad	0x40203add377e1b8f              # double 8.1149690000000003
	.quad	0x401498eda22f6a51              # double 5.1493440000000001
	.quad	0x400385942917507f              # double 2.4402240000000002
	.quad	0x3fdd23b7952d234f              # double 0.45530500000000002
	.quad	0x3fe07225b749adc9              # double 0.513934
	.quad	0x40216676640a6b94              # double 8.7001220000000003
	.quad	0x3ffe373c0c1fc8f3              # double 1.888485
	.quad	0x40080b884406c00e              # double 3.0056310000000002
	.quad	0x401cbce52deca255              # double 7.1844679999999999
	.quad	0x40091759ee88df37              # double 3.1364019999999999
	.quad	0x4021d0c49ba5e354              # double 8.90775
	.quad	0x3fcaee9dd7ecbb80              # double 0.21040700000000001
	.quad	0x40125cfe154434e3              # double 4.5908129999999998
	.quad	0x3ff0616f86a09891              # double 1.0237879999999999
	.quad	0x400403c5bd0e12e8              # double 2.5018419999999999
	.quad	0x401e9f8b9baa1512              # double 7.6558060000000001
	.quad	0x4020ef5b5fa22707              # double 8.4674940000000003
	.quad	0x401d6fb2edfe75bc              # double 7.3590809999999998
	.quad	0x4005c2c669057d18              # double 2.7201050000000002
	.quad	0x3fe63b9f127f5e85              # double 0.69477800000000001
	.quad	0x40145113404ea4a9              # double 5.0791750000000002
	.quad	0x4001c7b9170d62bf              # double 2.222521
	.quad	0x3ff06b399f5dfeb9              # double 1.026178
	.quad	0x40220e1c15097c81              # double 9.0275580000000009
	.quad	0x401ec18d25edd053              # double 7.6890150000000003
	.quad	0x402339600f34506a              # double 9.6120610000000006
	.quad	0x4005a76e1deacc92              # double 2.706753
	.quad	0x401057db6e503fb3              # double 4.0857979999999996
	.quad	0x4010a5b35b0bbf51              # double 4.1618170000000001
	.quad	0x4015f23076c050be              # double 5.4865130000000004
	.quad	0x4014f7221858bc5a              # double 5.2413410000000002
	.quad	0x4018dcc78e9f6a94              # double 6.215605
	.quad	0x400cb3e2d6238da4              # double 3.5878350000000001
	.quad	0x400d1fa333764f12              # double 3.6404480000000001
	.quad	0x4013c177a7008a69              # double 4.9389329999999996
	.quad	0x402130af3e468cac              # double 8.5950869999999994
	.quad	0x40224dc9e6687f45              # double 9.1519309999999994
	.quad	0x4020dbcbc48f10aa              # double 8.4292890000000007
	.quad	0x3fffcdbf0563ed0f              # double 1.9877309999999999
	.quad	0x4022ab1550ca1cef              # double 9.3341469999999997
	.quad	0x4016aaabcd78c437              # double 5.666671
	.quad	0x40113a1059ea5721              # double 4.3067029999999997
	.quad	0x401960d62bf11f92              # double 6.3445669999999996
	.quad	0x40173d30270f3882              # double 5.8097539999999999
	.quad	0x401c7e82517e77d5              # double 7.1235439999999999
	.quad	0x400158b502ababeb              # double 2.1683140000000001
	.quad	0x4020185b39e279dd              # double 8.0475709999999996
	.quad	0x4016439c94f69caa              # double 5.5660270000000001
	.quad	0x3fde7caa7589efd8              # double 0.47635899999999998
	.quad	0x4021b8a958537e2c              # double 8.8606669999999994
	.quad	0x4011dcba30121683              # double 4.465554
	.quad	0x4007d37eb28d8666              # double 2.9782690000000001
	.quad	0x3f8dadfb506dd69d              # double 0.014492
	.quad	0x4023185510d38cda              # double 9.5475239999999992
	.quad	0x4005f4eca686e7e6              # double 2.7445919999999999
	.quad	0x4023e27f3cf70154              # double 9.9423770000000004
	.quad	0x400d437154003255              # double 3.657931
	.quad	0x3ffa1a2403148777              # double 1.6313820000000001
	.quad	0x3ff87ae46cfc829d              # double 1.530003
	.quad	0x3fff36ff3ade2260              # double 1.9509270000000001
	.quad	0x400b7bae46cfc82a              # double 3.4353910000000001
	.quad	0x4023fc16bdb1a6d7              # double 9.9923610000000007
	.quad	0x3fafc49fd7a13c25              # double 0.062046999999999998
	.quad	0x3fe02cd39da16617              # double 0.50547200000000003
	.quad	0x40108a93f290abb4              # double 4.1353299999999997
	.quad	0x401e997fe8ee6b83              # double 7.6499019999999999
	.quad	0x4011d35158b827fa              # double 4.4563649999999999
	.quad	0x401b676ab5807fed              # double 6.8509929999999999
	.quad	0x4001b1dbca9691a7              # double 2.2118449999999998
	.quad	0x4013f4b945308bb9              # double 4.988988
	.quad	0x401961975f2cb641              # double 6.3453039999999996
	.quad	0x4008783e8576cce6              # double 3.058713
	.quad	0x400d50539fba450b              # double 3.6642220000000001
	.quad	0x3fda84662bae03b4              # double 0.414331
	.quad	0x400cda1a0cf1800a              # double 3.6064949999999998
	.quad	0x40160115592d98bf              # double 5.5010579999999996
	.quad	0x3fe61fcb0c026cc2              # double 0.69138100000000002
	.quad	0x4011a8c8abd5dc40              # double 4.414828
	.quad	0x40121f3b645a1cac              # double 4.5305
	.quad	0x401b24d48882f0e1              # double 6.7859670000000003
	.quad	0x4006ac2a454de7ea              # double 2.8340649999999998
	.quad	0x401fcea52ef911cf              # double 7.9518019999999998
	.quad	0x402066ec5b078d93              # double 8.201022
	.quad	0x401e8102bc72e276              # double 7.6259870000000003
	.quad	0x401987c3d68405b4              # double 6.3825830000000003
	.quad	0x3ff515d80e496edf              # double 1.317833
	.quad	0x40021d1bb4916ca4              # double 2.2642129999999998
	.quad	0x40130c647778dd61              # double 4.7621019999999996
	.quad	0x401b465d3996fa83              # double 6.8187150000000001
	.quad	0x4020a9ed3953dea4              # double 8.3318879999999992
	.quad	0x401e348882f0e0a8              # double 7.5513019999999997
	.quad	0x3fd7d4024b33daf9              # double 0.37231500000000001
	.quad	0x401b8d35653c9abb              # double 6.887899
	.quad	0x400d002c0a4a05de              # double 3.6250840000000002
	.quad	0x4023d7487fcb923a              # double 9.9204749999999997
	.quad	0x4006475ddd2ae8e2              # double 2.7848470000000001
	.quad	0x40115ee6b8305d96              # double 4.3426770000000001
	.quad	0x40239477143393ab              # double 9.7899709999999995
	.quad	0x402252ccd530489d              # double 9.1617189999999997
	.quad	0x40119b04ee7c49fd              # double 4.4013859999999996
	.quad	0x40217ffcdab191de              # double 8.7499760000000002
	.quad	0x401757763e4abe6a              # double 5.8354119999999998
	.quad	0x4021ce9ca9ef5233              # double 8.9035390000000003
	.quad	0x3fe604230fcf80dc              # double 0.68800499999999998
	.quad	0x4020b3e37de939eb              # double 8.3513450000000002
	.quad	0x40163fbe33acd5b7              # double 5.5622490000000004
	.quad	0x400c38a5ce5b4246              # double 3.52766
	.quad	0x4010a50d6b228dca              # double 4.1611840000000004
	.quad	0x40228d130df9bdc7              # double 9.2755360000000007
	.quad	0x40004c2c5e2cdc01              # double 2.0371939999999999
	.quad	0x4005af3eccc46951              # double 2.710569
	.quad	0x401150a73f748a16              # double 4.3287630000000004
	.quad	0x401b760956c0d6f5              # double 6.8652699999999998
	.quad	0x40207e536501e258              # double 8.2467299999999994
	.quad	0x4019e99567dbb16c              # double 6.4781089999999999
	.quad	0x401b5f6db940fece              # double 6.8431920000000002
	.quad	0x40154d25edd05293              # double 5.3253399999999997
	.quad	0x400f51b0ccbc05d5              # double 3.9148879999999999
	.quad	0x4003326fa3fcc9eb              # double 2.3996270000000002
	.quad	0x401067ec7863beec              # double 4.1014879999999998
	.quad	0x40031a908a265f0f              # double 2.3879709999999998
	.quad	0x401b1ab8e8ea39c5              # double 6.7760959999999999
	.quad	0x4022a023422467be              # double 9.3127689999999994
	.quad	0x3fff68bc169c23b8              # double 1.9630700000000001
	.quad	0x401fb660e51d25ab              # double 7.9281040000000002
	.quad	0x400af5d701d9f4d3              # double 3.3700389999999998
	.quad	0x401a9400fba8826b              # double 6.6445350000000003
	.quad	0x40190c9107faa045              # double 6.2622720000000003
	.quad	0x400f263e8dda48b6              # double 3.8936739999999999
	.quad	0x40237b6f7e3d1cc1              # double 9.7410849999999999
	.quad	0x401dacf9e3864cb6              # double 7.4189220000000002
	.quad	0x4022da6506141637              # double 9.4265519999999991
	.quad	0x4004291f2dc2b0ea              # double 2.520079
	.quad	0x3ff3f4906034f3fe              # double 1.2472080000000001
	.quad	0x4012be5abc0e38a8              # double 4.6858930000000001
	.quad	0x4020fe7ad8e43244              # double 8.4970309999999997
	.quad	0x40133a4095f2452c              # double 4.8068869999999997
	.quad	0x402155fd8adab9f5              # double 8.6679499999999994
	.quad	0x4023766a76965f52              # double 9.7312809999999992
	.quad	0x40214b461309c800              # double 8.6470190000000002
	.quad	0x40089d1d4738a3b5              # double 3.0767159999999998
	.quad	0x401d8a326e115593              # double 7.3849580000000001
	.quad	0x3fe2d63022dd7a9a              # double 0.588646
	.quad	0x3fd7ed0f6273929f              # double 0.37384400000000001
	.quad	0x40090da76d97b310              # double 3.1316670000000002
	.quad	0x40155118c197e564              # double 5.3291959999999996
	.quad	0x401626d0917d6b66              # double 5.5379050000000003
	.quad	0x402228d349be8ff3              # double 9.0797369999999997
	.quad	0x400892bba98eda23              # double 3.071647
	.quad	0x3ff698e53eb399f6              # double 1.412328
	.quad	0x4020402539756c94              # double 8.1252840000000006
	.quad	0x402185a1ec4e7254              # double 8.7610010000000002
	.quad	0x401724e9813879c4              # double 5.7860469999999999
	.quad	0x3ff6dd7cb2d905c0              # double 1.429074
	.quad	0x40214f56a7ac81d4              # double 8.6549580000000005
	.quad	0x401383022dd7a9a0              # double 4.8779380000000003
	.quad	0x4022bf398e970718              # double 9.3734859999999997
	.quad	0x400087525460aa65              # double 2.0660750000000001
	.quad	0x4017a32873bc903f              # double 5.9093340000000003
	.quad	0x3fcedacabc515486              # double 0.24105199999999999
	.quad	0x40217839abf33871              # double 8.7348149999999993
	.quad	0x40237a9f9ce8d973              # double 9.7394990000000003
	.quad	0x40133d4f9c1f85d7              # double 4.8098739999999998
	.quad	0x4000c17f4128bf3c              # double 2.094481
	.quad	0x400f87eae5bc87db              # double 3.9413659999999999
	.quad	0x40200fabfb9bed31              # double 8.0306090000000001
	.quad	0x401e212dba4d6e48              # double 7.5324010000000001
	.quad	0x3ffba321a2e7f6f5              # double 1.7273270000000001
	.quad	0x3fe4d53ac4f7ec35              # double 0.65102899999999997
	.quad	0x40202dc4eb56fb8f              # double 8.0893929999999994
	.quad	0x401d313fd0d0678c              # double 7.298095
	.quad	0x3ff29f70de8f6cf0              # double 1.163926
	.quad	0x3ff286e5cd4ed2cc              # double 1.157934
	.quad	0x4010c317efe0ce0c              # double 4.1905210000000004
	.quad	0x401624c729f59cd0              # double 5.5359160000000003
	.quad	0x4020194317acc4f0              # double 8.0493400000000008
	.quad	0x40180a86d71f3626              # double 6.0102799999999998
	.quad	0x401f6d68405b39e2              # double 7.8568429999999996
	.quad	0x40182f562174c4ce              # double 6.046227
	.quad	0x4001e9f623076c05              # double 2.239239
	.quad	0x40204eb7457c0b13              # double 8.1537419999999994
	.quad	0x4016f5a63f9a49c3              # double 5.7398920000000002
	.quad	0x3ff6bc69728a6117              # double 1.4209989999999999
	.quad	0x4014df6124074645              # double 5.2181439999999997
	.quad	0x401d86e696a26e54              # double 7.3817389999999996
	.quad	0x401722acfb762d84              # double 5.7838630000000002
	.quad	0x401c6dd54da4ce81              # double 7.107259
	.quad	0x40229a6bf8769ec3              # double 9.3016050000000003
	.quad	0x4020abcc2938de6e              # double 8.3355420000000002
	.quad	0x4012e8e043a21640              # double 4.7274180000000001
	.quad	0x40198175d13d74d6              # double 6.3764260000000004
	.quad	0x401de623076c050c              # double 7.4747430000000001
	.quad	0x3fe3bbb40b34e768              # double 0.61666299999999996
	.quad	0x40135fab53d640ea              # double 4.8434270000000001
	.quad	0x40185201040bfe3b              # double 6.080082
	.quad	0x40070c61522a6f3f              # double 2.8810449999999999
	.quad	0x3fe59a671ef30a4e              # double 0.67509799999999998
	.quad	0x40131f5771001d5c              # double 4.7806069999999998
	.quad	0x400739d99029ae4f              # double 2.9032469999999999
	.quad	0x3fe7d338f7985272              # double 0.74453400000000003
	.quad	0x3fe2d0e12e83a10a              # double 0.58799800000000002
	.quad	0x40127d1aa821f299              # double 4.6221719999999999
	.quad	0x3ff80da6e75ff60a              # double 1.503333
	.quad	0x401541450efdc9c5              # double 5.3137400000000001
	.quad	0x40032d6777079e5a              # double 2.39717
	.quad	0x4017553111f0c34c              # double 5.8331949999999999
	.quad	0x401b43c03bc4d22d              # double 6.8161630000000004
	.quad	0x4006a92d55a3a084              # double 2.8326060000000002
	.quad	0x400b3249e44fa051              # double 3.3995549999999999
	.quad	0x40200913c68661ae              # double 8.0177289999999992
	.quad	0x3fd062e90364388f              # double 0.25603700000000001
	.quad	0x4019622af5771002              # double 6.3458670000000001
	.quad	0x4020606530058149              # double 8.1882719999999996
	.quad	0x401b62096787ce96              # double 6.845739
	.quad	0x4023ebe22e5de15d              # double 9.9607100000000006
	.quad	0x3ffd9ef8487b99d4              # double 1.8513109999999999
	.quad	0x400b48d3ae685db7              # double 3.4105599999999998
	.quad	0x4003363f572de43f              # double 2.4014880000000001
	.quad	0x3fc43b57c4e2f380              # double 0.15806100000000001
	.quad	0x4014cdab5c39bcba              # double 5.2008489999999998
	.quad	0x402142c1b10fd7e4              # double 8.6303839999999993
	.quad	0x3fd5edf612407464              # double 0.34264899999999998
	.quad	0x4012b66f9335d24a              # double 4.6781600000000001
	.quad	0x3fd864840e1719f8              # double 0.381135
	.quad	0x400410c564f97edc              # double 2.5081889999999998
	.quad	0x401ceaf709b738e7              # double 7.2294580000000002
	.quad	0x401d014a4d2b2bfe              # double 7.2512600000000003
	.quad	0x3ff58b8066c2acb8              # double 1.3465579999999999
	.quad	0x401ba8d2e514c22f              # double 6.9148670000000001
	.quad	0x3ff2ff5946c332f0              # double 1.187341
	.quad	0x4019b059210385c6              # double 6.4222149999999996
	.quad	0x401fb2bc72e275ab              # double 7.9245469999999995
	.quad	0x4020d78f25a250f8              # double 8.4210139999999996
	.quad	0x4020ef0cdc8754f3              # double 8.4668949999999992
	.quad	0x401219d3458cd20b              # double 4.52522
	.quad	0x4014a742dcf4623d              # double 5.163341
	.quad	0x40091b6a1e81cb47              # double 3.1383860000000001
	.quad	0x40235ac83ec892ab              # double 9.6773089999999992
	.quad	0x400be6833c60029f              # double 3.487555
	.quad	0x40171243dccea290              # double 5.7678370000000001
	.quad	0x4013e39192641b33              # double 4.9722350000000004
	.quad	0x3fd4c4156e264e48              # double 0.32446799999999998
	.quad	0x401988f81e8a2ec3              # double 6.3837590000000004
	.quad	0x40133c4ef88b9778              # double 4.8088949999999997
	.quad	0x4023c97ce52deca2              # double 9.8935309999999994
	.quad	0x3fb2cadddf43c7d6              # double 0.073408000000000001
	.quad	0x3fe0d5cd91eeaa6d              # double 0.52609899999999998
	.quad	0x3ff7d2ddbdb5d895              # double 1.4889810000000001
	.quad	0x4013a41f212d7732              # double 4.9102750000000004
	.quad	0x3ff90d07852f7f4a              # double 1.5656810000000001
	.quad	0x400b76d00b45ae60              # double 3.433014
	.quad	0x3ff694af4f0d844d              # double 1.4113
	.quad	0x4016b3c36113404f              # double 5.6755500000000003
	.quad	0x400fccedd4845133              # double 3.975063
	.quad	0x40172841248d7e02              # double 5.7893109999999997
	.quad	0x3fa702c4d65e4606              # double 0.044942999999999997
	.quad	0x400703b03e20ccff              # double 2.8768009999999999
	.quad	0x3fe2c96cc5fbf834              # double 0.58708800000000005
	.quad	0x401ad8a71de69ad4              # double 6.7115749999999998
	.quad	0x40203a8262456f76              # double 8.1142760000000003
	.quad	0x400718b9baa1511e              # double 2.887073
	.quad	0x402260c88a47ecff              # double 9.1890300000000007
	.quad	0x40237ca3e7d13511              # double 9.7434379999999993
	.quad	0x4012407b352a8438              # double 4.56297
	.quad	0x401751843c3a42f2              # double 5.8296060000000001
	.quad	0x4016d7b634dad320              # double 5.7106560000000002
	.quad	0x40223327674d1633              # double 9.0999099999999995
	.quad	0x40227939eadd590c              # double 9.2367699999999999
	.quad	0x401e9939a7c17a89              # double 7.6496339999999998
	.quad	0x3fb141b75a74c09c              # double 0.067408999999999997
	.quad	0x40193a0902de00d2              # double 6.3066750000000003
	.quad	0x40131e5604189375              # double 4.7796250000000002
	.quad	0x4002321ee675147f              # double 2.274473
	.quad	0x400a4ab9b23dd54e              # double 3.2864870000000002
	.quad	0x4019f0d90e23af32              # double 6.4852030000000003
	.quad	0x401f1810a569b175              # double 7.7735010000000004
	.quad	0x40053a78f25a2510              # double 2.6535510000000002
	.quad	0x4006db5b70691ea8              # double 2.8571080000000002
	.quad	0x401d4b91f70de8f7              # double 7.3237990000000002
	.quad	0x4015ef2cf95d4e90              # double 5.4835700000000003
	.quad	0x40128345cfede97d              # double 4.628196
	.quad	0x400bccd0fe8ab4fa              # double 3.4750079999999999
	.quad	0x3feec204f2ae07e6              # double 0.96118400000000004
	.quad	0x3ff4c9a88ace24bc              # double 1.2992330000000001
	.quad	0x401df5c0fcb4f1e5              # double 7.4899940000000002
	.quad	0x4017a5eb313be22e              # double 5.9120299999999997
	.quad	0x401a27f9d6f112fd              # double 6.5390389999999998
	.quad	0x4023f797460242d0              # double 9.9835759999999993
	.quad	0x4020a7b3311a543f              # double 8.3275389999999998
	.quad	0x4021b334a44c7b03              # double 8.8500110000000003
	.quad	0x40141ae5796bfca8              # double 5.0262659999999997
	.quad	0x400f4d2c386d2ed8              # double 3.9126820000000002
	.quad	0x4007d81f10667f91              # double 2.9805280000000001
	.quad	0x401618f8a4c1ebc8              # double 5.5243859999999998
	.quad	0x3fefd7518b0d0edc              # double 0.99503399999999997
	.quad	0x4022fcaada33bd9d              # double 9.4934910000000005
	.quad	0x3ff80373f316e371              # double 1.5008429999999999
	.quad	0x3fed529131ec0b56              # double 0.91632899999999995
	.quad	0x401aed188f42fe82              # double 6.7315389999999997
	.quad	0x401a06d6dc1a47aa              # double 6.5066790000000001
	.quad	0x401abcfd4bf0995b              # double 6.6845600000000003
	.quad	0x4021657cf5f4e443              # double 8.6982189999999999
	.quad	0x400818b0d0edc3bd              # double 3.0120559999999998
	.quad	0x401a9ca42aed1394              # double 6.6529699999999998
	.quad	0x3fe5861847f56217              # double 0.67261899999999997
	.quad	0x401c9acde19fc2a9              # double 7.1511760000000004
	.quad	0x4011d69728a61177              # double 4.4595609999999999
	.quad	0x3fd651f81a5870da              # double 0.34875299999999998
	.quad	0x4013c441bb8c32a9              # double 4.9416570000000002
	.quad	0x3ff6a7b5f1bef49d              # double 1.415945
	.quad	0x4014a753e707e176              # double 5.1634060000000002
	.quad	0x401211b8ed1bf7ad              # double 4.5173069999999997
	.quad	0x3fe84c89b0ee49f5              # double 0.75934299999999999
	.quad	0x402239c9d5a187a5              # double 9.1128680000000006
	.quad	0x40097e60c38f3669              # double 3.1867079999999999
	.quad	0x401f548e043a2164              # double 7.832573
	.quad	0x40215d1244a6223e              # double 8.6817799999999998
	.quad	0x40237d4cfd08d4bb              # double 9.7447280000000002
	.quad	0x402225b5d894812c              # double 9.0736530000000001
	.quad	0x402182ee84ad794a              # double 8.7557259999999992
	.quad	0x4016e441355475a3              # double 5.7229049999999999
	.quad	0x401ff4bcf0b6b6e1              # double 7.9890020000000001
	.quad	0x3ff6a79aae6c8f75              # double 1.4159189999999999
	.quad	0x40093bba55d1c3ad              # double 3.1541640000000002
	.quad	0x401178576cce5f74              # double 4.367521
	.quad	0x3ff85daf07bfe7e2              # double 1.522872
	.quad	0x3ffc71f36262cba7              # double 1.77782
	.quad	0x40212839042d8c2a              # double 8.5785599999999995
	.quad	0x402039628cbd1245              # double 8.1120800000000006
	.quad	0x400270d73860999e              # double 2.3050980000000001
	.quad	0x3fc7fb58d1526d8b              # double 0.187358
	.quad	0x4018aaa1d755bccb              # double 6.166633
	.quad	0x401a345176145953              # double 6.5510919999999997
	.quad	0x4012ca4db163baba              # double 4.6975619999999996
	.quad	0x40093934efcbd556              # double 3.152933
	.quad	0x400b59f98b71b8aa              # double 3.418933
	.quad	0x40019d2630ec3116              # double 2.2017329999999999
	.quad	0x40237ad2bb23571d              # double 9.7398889999999997
	.quad	0x3fd4823422467be5              # double 0.32044699999999998
	.quad	0x4012b049ecb31c22              # double 4.6721570000000003
	.quad	0x401a0b1572580c31              # double 6.5108240000000004
	.quad	0x4023df0de8f6ceff              # double 9.9356530000000002
	.quad	0x40071b40b34e7686              # double 2.8883070000000002
	.quad	0x401765f56a7ac81d              # double 5.8495689999999998
	.quad	0x3fdbc5fbf83382e4              # double 0.43395899999999998
	.quad	0x3fb6b69db65ecc3e              # double 0.088723999999999997
	.quad	0x40110fd7e45803cd              # double 4.2654719999999999
	.quad	0x4008602c9081c2e3              # double 3.0469599999999999
	.quad	0x4023c2f2734f82f5              # double 9.8807559999999998
	.quad	0x4005f1c864883fd5              # double 2.743058
	.quad	0x401fd9003eea209b              # double 7.9619150000000002
	.quad	0x4021c2fd75e2046c              # double 8.8808399999999991
	.quad	0x40239610060780fe              # double 9.7930910000000004
	.quad	0x4020aab841248d7e              # double 8.333437
	.quad	0x4019a699c7bcc294              # double 6.4126960000000004
	.quad	0x4023c1bd61f5be5e              # double 9.8783980000000007
	.quad	0x40107307f23cc8de              # double 4.1123349999999999
	.quad	0x401f1b5ed8d36b4c              # double 7.7767289999999996
	.quad	0x4017ef40a2877ee5              # double 5.9836450000000001
	.quad	0x4023b25e99e94ab2              # double 9.8483780000000003
	.quad	0x40224f69a91105e2              # double 9.1551030000000004
	.quad	0x4005e68900c521de              # double 2.7375660000000002
	.quad	0x4016a634549b62c7              # double 5.6623089999999996
	.quad	0x3ff781b64e054691              # double 1.469168
	.quad	0x4004f0d6b228dc98              # double 2.617597
	.quad	0x401af1b2a27f1b69              # double 6.7360329999999999
	.quad	0x40143a033e78e193              # double 5.0566529999999998
	.quad	0x4001daee631f8a09              # double 2.2319
	.quad	0x4007e558ea7ce0fc              # double 2.9869859999999999
	.quad	0x400554213a0c6b48              # double 2.6660789999999999
	.quad	0x401b65db76b3bb84              # double 6.8494700000000002
	.quad	0x4016ce568a50507a              # double 5.7015019999999996
	.quad	0x401ebd1aa821f299              # double 7.6846719999999999
	.quad	0x3ffefcfe58601366              # double 1.936766
	.quad	0x400eff7c6759ab6d              # double 3.874749
	.quad	0x3ffc92f7f498c3b1              # double 1.7858810000000001
	.quad	0x4012918548a9bcfd              # double 4.6421099999999997
	.quad	0x4020e1f9acffa7eb              # double 8.4413579999999993
	.quad	0x401caf39d1b2e59b              # double 7.171119
	.quad	0x3fc5aa582dbe7f2c              # double 0.16926099999999999
	.quad	0x401b56117720c8cd              # double 6.8340509999999997
	.quad	0x401827f950b955f8              # double 6.0390370000000004
	.quad	0x3ff64abb44e50c5f              # double 1.3932450000000001
	.quad	0x40214c3201040bfe              # double 8.6488189999999996
	.quad	0x401aa6d4c33b5393              # double 6.6629209999999999
	.quad	0x400c4c5da6a44418              # double 3.5372880000000002
	.quad	0x3ff4c4fe36d22425              # double 1.2980940000000001
	.quad	0x4014a1a21ea35936              # double 5.157845
	.quad	0x4012f1e03f705858              # double 4.7362070000000003
	.quad	0x4020e006af46aa08              # double 8.4375509999999991
	.quad	0x401e6fa05143bf72              # double 7.6090099999999996
	.quad	0x3fd390afe60c38f3              # double 0.30570599999999998
	.quad	0x401f3b5c39bcba30              # double 7.8079689999999999
	.quad	0x3ff79a4ce8101f32              # double 1.475171
	.quad	0x400a180cb6c7a7ca              # double 3.2617430000000001
	.quad	0x401cc9307af20ea6              # double 7.1964740000000003
	.quad	0x4007074c09c3ce21              # double 2.8785630000000002
	.quad	0x40117147ae147ae1              # double 4.3606249999999998
	.quad	0x400efe43675ddd2b              # double 3.874152
	.quad	0x3ff4ae71cda2b5a2              # double 1.292589
	.quad	0x400f0979e16d6dc2              # double 3.8796270000000002
	.quad	0x4015557cd466f502              # double 5.3334840000000003
	.quad	0x40132a83f4eca687              # double 4.7915190000000001
	.quad	0x40234b07f23cc8de              # double 9.6465449999999997
	.quad	0x3fe9fa0d77b7c782              # double 0.811774
	.quad	0x3fe212146a1a500d              # double 0.56470699999999996
	.quad	0x402132dd9c27e953              # double 8.5993469999999999
	.quad	0x40104a68f4b61fe2              # double 4.0726659999999999
	.quad	0x401e01c1d6cf850e              # double 7.5017160000000001
	.quad	0x400fe191148fd9fd              # double 3.9851399999999999
	.quad	0x401c989f83be6602              # double 7.1490460000000002
	.quad	0x40200161804d9839              # double 8.0026969999999995
	.quad	0x402144de5d18090b              # double 8.6345089999999995
	.quad	0x401f03aabcd78c43              # double 7.7535809999999996
	.quad	0x400b2f32bdc26dce              # double 3.3980459999999999
	.quad	0x40008e5710880d80              # double 2.069502
	.quad	0x4016ec81d3aa36a0              # double 5.7309640000000002
	.quad	0x401da3e81450efdd              # double 7.4100650000000003
	.quad	0x40036aab8a5ce5b4              # double 2.4270849999999999
	.quad	0x4016dab25b317efe              # double 5.713571
	.quad	0x4016ff75536933a0              # double 5.7494709999999998
	.quad	0x3ff7ad27807789a4              # double 1.4797739999999999
	.quad	0x40188292c4934268              # double 6.1275130000000004
	.quad	0x401061f5be5d9e41              # double 4.0956640000000002
	.quad	0x402394955b4677b4              # double 9.7902020000000007
	.quad	0x401dd7807789a459              # double 7.4604509999999999
	.quad	0x40214b02f72b4528              # double 8.6465069999999997
	.quad	0x400ff63ed0f62739              # double 3.9952369999999999
	.quad	0x40207db1c8648840              # double 8.2454970000000003
	.quad	0x401b4fbce4217d28              # double 6.8278689999999997
	.quad	0x401151c6088d6d3b              # double 4.3298569999999996
	.quad	0x4015e50d6b228dca              # double 5.4736840000000004
	.quad	0x400302bbecaab8a6              # double 2.3763350000000001
	.quad	0x401c9e4e69f05ea2              # double 7.1545959999999997
	.quad	0x4018e73471f79421              # double 6.2257860000000003
	.quad	0x3fee7f79c842fa51              # double 0.95306100000000005
	.quad	0x4017a374794ea077              # double 5.909624
	.quad	0x401f7c5b8dc55001              # double 7.8714430000000001
	.quad	0x401fbbbe4473cd57              # double 7.9333429999999998
	.quad	0x40047ee6fb4c3c19              # double 2.5619640000000001
	.quad	0x402088157eed45e9              # double 8.2657889999999998
	.quad	0x400ab5cd91eeaa6d              # double 3.3387709999999999
	.quad	0x401bd6950fc71d60              # double 6.9595529999999997
	.quad	0x401e590ff9724745              # double 7.5869749999999998
	.quad	0x40217f16d2aa5c5f              # double 8.7482209999999991
	.quad	0x400e7037d63022dd              # double 3.8047939999999998
	.quad	0x40145cf91a32b12d              # double 5.0907939999999998
	.quad	0x4002b02795703f2d              # double 2.3360129999999999
	.quad	0x4022a8d5c74751ce              # double 9.3297559999999997
	.quad	0x400751526d8b1dd6              # double 2.9147080000000001
	.quad	0x401392fb5d031056              # double 4.8935370000000002
	.quad	0x401336a1a500d5e9              # double 4.8033510000000001
	.quad	0x4019217507e9d94d              # double 6.282673
	.quad	0x40051ec0b567557a              # double 2.6400160000000001
	.quad	0x401bca2ec28b2a6b              # double 6.947444
	.quad	0x401674abe6a337a8              # double 5.613937
	.quad	0x4019b7589efd86a9              # double 6.429049
	.quad	0x401593586ca89fc7              # double 5.3938920000000001
	.quad	0x400026a012599ed8              # double 2.0188600000000001
	.quad	0x4021ed640e9d51b5              # double 8.963654
	.quad	0x4005377f27fe4bcb              # double 2.6520980000000001
	.quad	0x400a3a3443d46b27              # double 3.2784200000000001
	.quad	0x401a549fd7a13c25              # double 6.5826409999999997
	.quad	0x3ff0b6a832b990b0              # double 1.044594
	.quad	0x4023603e20ccff22              # double 9.6879740000000005
	.quad	0x401950da5daf07c0              # double 6.3289580000000001
	.quad	0x40163ce789e774ef              # double 5.5594770000000002
	.quad	0x4015ec2efd438d1e              # double 5.4806480000000004
	.quad	0x40219088d6d3b6cc              # double 8.7822940000000002
	.quad	0x4006aff5c6c11a11              # double 2.8359179999999999
	.quad	0x40083c23b7952d23              # double 3.0293649999999999
	.quad	0x400c360285ec3dab              # double 3.5263719999999998
	.quad	0x401b504577d95571              # double 6.8283899999999997
	.quad	0x401e60292817763e              # double 7.5939069999999997
	.quad	0x40144cb31c219eb6              # double 5.0749019999999998
	.quad	0x4011a6c8b4395810              # double 4.4128749999999997
	.quad	0x4022b8a5269595ff              # double 9.3606350000000002
	.quad	0x4018cf31f46ed246              # double 6.2023390000000003
	.quad	0x401fe60c7c0f4517              # double 7.9746569999999996
	.quad	0x3ffacb502ababead              # double 1.6746369999999999
	.quad	0x3f943d89ce4a7b4e              # double 0.019765999999999999
	.quad	0x3ff0c9b30728e92d              # double 1.0492429999999999
	.quad	0x40064f6ad70e6f2f              # double 2.7887780000000002
	.quad	0x400b1e29b6b2af14              # double 3.3897279999999999
	.quad	0x3ffa37e5eaab0425              # double 1.638647
	.quad	0x4008c4a6a875d56f              # double 3.0960209999999999
	.quad	0x4012d37ef5a964e9              # double 4.7065390000000003
	.quad	0x4006148a9bcfd4bf              # double 2.76003
	.quad	0x3ffd45d31337eb29              # double 1.829547
	.quad	0x402227bd05af6c6a              # double 9.0776140000000005
	.quad	0x401a209741d084e8              # double 6.5318269999999998
	.quad	0x3fffc71b47842310              # double 1.98611
	.quad	0x40180d2f1a9fbe77              # double 6.0128750000000002
	.quad	0x3ff0a5907d912557              # double 1.040421
	.quad	0x402166b0b7c3504c              # double 8.7005669999999994
	.quad	0x4023336e0d23d4f1              # double 9.6004489999999993
	.quad	0x3fffde82d7b634db              # double 1.991824
	.quad	0x40180b8561d4306e              # double 6.0112509999999997
	.quad	0x4023fdb877ab3248              # double 9.9955479999999994
	.quad	0x3fe406fac6045baf              # double 0.62585199999999996
	.quad	0x401e4005c4651f3f              # double 7.5625220000000004
	.quad	0x4016ca6b93ccd0ff              # double 5.6976760000000004
	.quad	0x3ff75233df2a9d62              # double 1.4575689999999999
	.quad	0x4012ec47a17f4129              # double 4.7307420000000002
	.quad	0x3fe0bfb9bed30f06              # double 0.52340399999999998
	.quad	0x40152d8e432441ff              # double 5.2944880000000003
	.quad	0x401c7f776c4827b7              # double 7.124479
	.quad	0x4011599aa60913a5              # double 4.337504
	.quad	0x401a6903a7546d40              # double 6.6025530000000003
	.quad	0x400015ad106ee30d              # double 2.0105840000000001
	.quad	0x400f1713ad5bee3d              # double 3.8862679999999998
	.quad	0x401ec0364388ebcc              # double 7.6877069999999996
	.quad	0x40214817b95a2941              # double 8.6408059999999995
	.quad	0x3ff35f3a57eaa2a1              # double 1.2107490000000001
	.quad	0x4012ed627bf61aa4              # double 4.7318210000000001
	.quad	0x401211476af89c5e              # double 4.5168739999999996
	.quad	0x4008260913a4f872              # double 3.0185719999999998
	.quad	0x4016782e019b0ab3              # double 5.6173630000000001
	.quad	0x402054cec41dd1a2              # double 8.1656399999999998
	.quad	0x3fe3519157abb880              # double 0.60370699999999999
	.quad	0x402084202d9cf13d              # double 8.2580580000000001
	.quad	0x40175198aeb80ed0              # double 5.8296840000000003
	.quad	0x3fef370cdc8754f3              # double 0.97546999999999994
	.quad	0x401feda4052d666b              # double 7.9820710000000003
	.quad	0x401fa1016ce789e7              # double 7.9072319999999995
	.quad	0x4020c89e55c0fcb5              # double 8.3918330000000001
	.quad	0x40132899392189be              # double 4.7896470000000004
	.quad	0x400756134ce3de61              # double 2.9170289999999999
	.quad	0x401935a89b951c5c              # double 6.3024009999999997
	.quad	0x3fab09635610adcd              # double 0.052805999999999999
	.quad	0x401edba3443d46b2              # double 7.7144899999999996
	.quad	0x4018d6073de1e2df              # double 6.2090120000000004
	.quad	0x401a7e9707182236              # double 6.6236230000000003
	.quad	0x401fcf16f4384ba1              # double 7.952236
	.quad	0x401d89b17481b21c              # double 7.3844659999999998
	.quad	0x401e91e85fd04a30              # double 7.6424880000000002
	.quad	0x3fb9e34330d73861              # double 0.10112400000000001
	.quad	0x3ff8bdbe3c105187              # double 1.546324
	.quad	0x40172e81cb46bacf              # double 5.7954169999999996
	.quad	0x40107306a2b17050              # double 4.11233
	.quad	0x4021734f82f51266              # double 8.7252159999999996
	.quad	0x401d18a5ce5b4246              # double 7.27407
	.quad	0x4022281b866e43aa              # double 9.0783349999999992
	.quad	0x3fffa33482be8bc1              # double 1.9773449999999999
	.quad	0x401bfbcad9ad85e0              # double 6.9958910000000003
	.quad	0x3feef3d3a1d323ff              # double 0.96726400000000001
	.quad	0x40226a36c15d2d02              # double 9.2074490000000004
	.quad	0x401746202539756d              # double 5.8184820000000004
	.quad	0x3fffae221c8a7a42              # double 1.980013
	.quad	0x4021a3d3804534bd              # double 8.8199729999999992
	.quad	0x400b898cc144028e              # double 3.4421629999999999
	.quad	0x4009ecfaeff5c6c1              # double 3.240713
	.quad	0x3ff2d06ee30caa32              # double 1.1758869999999999
	.quad	0x4021e75d9a0f0a5f              # double 8.951886
	.quad	0x3ff68c1871e6cd29              # double 1.409203
	.quad	0x40098de225fa658c              # double 3.1942789999999999
	.quad	0x4003ba6698bb4d49              # double 2.4660160000000002
	.quad	0x3ff0b29a1b9f98b7              # double 1.043604
	.quad	0x4012455da272862f              # double 4.5677399999999997
	.quad	0x401e601d9f4d37c1              # double 7.5938629999999998
	.quad	0x401f5256366d7a57              # double 7.8304070000000001
	.quad	0x4023523875925354              # double 9.6605869999999995
	.quad	0x400e95d1c3ac929b              # double 3.8231540000000002
	.quad	0x3fd41d2e0e30446b              # double 0.31428099999999998
	.quad	0x4023ac55219a847b              # double 9.8365869999999997
	.quad	0x4013d07d4e09784f              # double 4.9536030000000002
	.quad	0x40039a31a4bdba0a              # double 2.4502899999999999
	.quad	0x40149b98c7e28241              # double 5.1519500000000003
	.quad	0x401fedf3f961804e              # double 7.9823760000000004
	.quad	0x4018808aac96cc60              # double 6.1255290000000002
	.quad	0x401d84ea4a8c154d              # double 7.3798000000000004
	.quad	0x40060a35935fc3b5              # double 2.754985
	.quad	0x401eb0c804102ff9              # double 7.672638
	.quad	0x4022ced19dece571              # double 9.4039429999999999
	.quad	0x401c1ddf00abf76a              # double 7.0291709999999998
	.quad	0x400e5cd1c7de5083              # double 3.7953220000000001
	.quad	0x401a29129888f862              # double 6.5401100000000003
	.quad	0x40166be1a8262457              # double 5.605353
	.quad	0x4022900ffda4052d              # double 9.2813719999999993
	.quad	0x401650b73d188f43              # double 5.578824
	.quad	0x40007db4cc250721              # double 2.0613800000000002
	.quad	0x40203bfa0945f9df              # double 8.1171419999999994
	.quad	0x4008d6d7625204b0              # double 3.1049030000000002
	.quad	0x400ffbcec84f8f8a              # double 3.9979529999999999
	.quad	0x4018c77e5eaab042              # double 6.1948179999999997
	.quad	0x402146f3f52fc265              # double 8.6385799999999993
	.quad	0x401f35c28f5c28f6              # double 7.8025000000000002
	.quad	0x3feb003ab862b27d              # double 0.84377800000000003
	.quad	0x40233b3cc4ac6cdb              # double 9.615698
	.quad	0x3fe3809d495182aa              # double 0.60945000000000005
	.quad	0x40148a08398a6549              # double 5.1347969999999998
	.quad	0x3fe0329c347e8cce              # double 0.50617800000000002
	.quad	0x4011c6638433d6c7              # double 4.4437389999999999
	.quad	0x401ec6bacf7446fa              # double 7.6940720000000002
	.quad	0x4013f2324c836651              # double 4.9865199999999996
	.quad	0x400c04ebdd334c5e              # double 3.5024030000000002
	.quad	0x4006369a91105e1c              # double 2.776662
	.quad	0x3ff5fc36113404ea              # double 1.3740749999999999
	.quad	0x3ff10b51372a38b9              # double 1.0652630000000001
	.quad	0x400306d0d49949e9              # double 2.3783280000000002
	.quad	0x4016f4117f84449e              # double 5.7383480000000002
	.quad	0x401e12784a9478c8              # double 7.5180369999999996
	.quad	0x4005d0079a2834d2              # double 2.7265769999999998
	.quad	0x400bf796bfca85cb              # double 3.4958930000000001
	.quad	0x40068cc92146a1a5              # double 2.818743
	.quad	0x402379ee45c358b0              # double 9.7381460000000004
	.quad	0x400ee09dcf893faf              # double 3.8596759999999999
	.quad	0x401f79e0a41a261c              # double 7.869021
	.quad	0x4021e6aa087ca644              # double 8.9505160000000003
	.quad	0x40219a2d72ffd1dd              # double 8.8011280000000003
	.quad	0x4019456e696a26e5              # double 6.3178039999999998
	.quad	0x402074660a201472              # double 8.2273409999999991
	.quad	0x4003dd9988d2a1f9              # double 2.483203
	.quad	0x401907763e4abe6a              # double 6.2572869999999998
	.quad	0x3fa6b8b69552e2fc              # double 0.044378000000000001
	.quad	0x400e7c8e25c810a5              # double 3.8108179999999998
	.quad	0x4016a3beec39799e              # double 5.6599079999999997
	.quad	0x4023836c9c0a8d22              # double 9.7566880000000005
	.quad	0x400c7baf533f4235              # double 3.5603929999999999
	.quad	0x4010b102795703f3              # double 4.1728610000000002
	.quad	0x4020f14ff0025bfb              # double 8.4713130000000003
	.quad	0x4017c5bc44bf4cb2              # double 5.9431010000000004
	.quad	0x400d5646ae3a3a8e              # double 3.6671269999999998
	.quad	0x3ff1d5475a31a4be              # double 1.1145700000000001
	.quad	0x40148635610adcd3              # double 5.1310630000000002
	.quad	0x402346c508b32ce9              # double 9.6382220000000007
	.quad	0x4009e8f217093101              # double 3.2387429999999999
	.quad	0x401e1beb5b2d4d40              # double 7.5272649999999999
	.quad	0x400cc0d2c386d2ed              # double 3.5941519999999998
	.quad	0x4001b116a8b8f14e              # double 2.2114690000000001
	.quad	0x3ff4ea65cf67b1c0              # double 1.307226
	.quad	0x4000ca012599ed7c              # double 2.0986349999999998
	.quad	0x4009c4f765fd8adb              # double 3.2211750000000001
	.quad	0x4010dc5fbf83382e              # double 4.2152089999999998
	.quad	0x401cde15011904b4              # double 7.2168770000000002
	.quad	0x4013634267839cd8              # double 4.8469329999999999
	.quad	0x40158f3a9b068124              # double 5.3898720000000004
	.quad	0x40022158750c1b97              # double 2.2662819999999999
	.quad	0x400080f7fcfc3f81              # double 2.0629729999999999
	.quad	0x401bcd5a9eb2074f              # double 6.9505410000000003
	.quad	0x4013769ec2ce464a              # double 4.8658400000000004
	.quad	0x40216c30b178b370              # double 8.711309
	.quad	0x40115c0980b24207              # double 4.33988
	.quad	0x40171dc93ea2d2fe              # double 5.7790879999999998
	.quad	0x401b20e736049ecb              # double 6.7821319999999998
	.quad	0x40210ca1f080303c              # double 8.5246729999999999
	.quad	0x40126eea209aaa3b              # double 4.6083150000000002
	.quad	0x40233b7521144cbe              # double 9.6161279999999998
	.quad	0x401a146cfc829cfe              # double 6.5199470000000002
	.quad	0x401223bc903ea705              # double 4.5348990000000002
	.quad	0x4023d8d1958969a1              # double 9.9234740000000005
	.quad	0x400826d4801f7510              # double 3.0189599999999999
	.quad	0x400cdddf43c7d5ed              # double 3.608336
	.quad	0x401b44eb56fb8f58              # double 6.817304
	.quad	0x4005af041461b6d4              # double 2.7104569999999999
	.quad	0x401fdad03d9a9542              # double 7.9636849999999999
	.quad	0x3ffd76d22424a277              # double 1.8415090000000001
	.quad	0x4017b18def416bdb              # double 5.9233929999999999
	.quad	0x4015b903a7546d40              # double 5.4306780000000003
	.quad	0x40222e3d5fdcdf6a              # double 9.0903120000000008
	.quad	0x402139e6eeb70260              # double 8.6130899999999997
	.quad	0x402260a17b0f6ad7              # double 9.1887319999999999
	.quad	0x4021c56605ee568a              # double 8.8855439999999994
	.quad	0x3fe0d0bd87b56b87              # double 0.52548099999999998
	.quad	0x3ff7602c9081c2e3              # double 1.4609799999999999
	.quad	0x402296583e8576cd              # double 9.2936420000000002
	.quad	0x4009b9fc2a8869c6              # double 3.2158129999999998
	.quad	0x401ad6ac647778dd              # double 6.7096419999999997
	.quad	0x3ff77723ee1bd1ee              # double 1.4665870000000001
	.quad	0x40227f33226c3b92              # double 9.2484369999999991
	.quad	0x4021ae6d9be4cd75              # double 8.8406800000000008
	.quad	0x401f45c2d2780779              # double 7.8181260000000003
	.quad	0x3ff4ffab10ba6267              # double 1.312419
	.quad	0x3fed687b139c94f7              # double 0.91900400000000004
	.quad	0x4022177143393ab4              # double 9.0457859999999996
	.quad	0x3ff34a57a786c227              # double 1.2056500000000001
	.quad	0x401c6cff64cf8d71              # double 7.1064429999999996
	.quad	0x4020ffee2c98e53f              # double 8.4998640000000005
	.quad	0x4006ba41e57d9dbb              # double 2.8409460000000002
	.quad	0x40079aa821f2990f              # double 2.9505159999999999
	.quad	0x401ac563a9f383f1              # double 6.6927630000000002
	.quad	0x40201a13c254a3c6              # double 8.0509319999999995
	.quad	0x40194f42fe82517e              # double 6.3274039999999996
	.quad	0x40102b2a6b0d9514              # double 4.042154
	.quad	0x40206c9afe1da7b1              # double 8.2121200000000005
	.quad	0x3ff85f623076c051              # double 1.5232870000000001
	.quad	0x4018a692f6e8294a              # double 6.1626700000000003
	.quad	0x402396c7219220ff              # double 9.7944879999999994
	.quad	0x401f54a4d2b2bfdb              # double 7.8326599999999997
	.quad	0x40184b43d89ce4a8              # double 6.0735010000000003
	.quad	0x4019dc957cd466f5              # double 6.465414
	.quad	0x3fdde7d1351159c5              # double 0.46727400000000002
	.quad	0x3fc6199fe43675de              # double 0.172657
	.quad	0x4010ff7d73c92578              # double 4.2495019999999997
	.quad	0x401d4ccb7d41743f              # double 7.3249950000000004
	.quad	0x401ce00b88ca3e7d              # double 7.2187939999999999
	.quad	0x4023255cb790fb65              # double 9.5729729999999992
	.quad	0x40068f440af1cb8a              # double 2.8199540000000001
	.quad	0x400abf2f55582129              # double 3.3433519999999999
	.quad	0x401d13f7ced91687              # double 7.2694999999999999
	.quad	0x4016927cbf6e3f79              # double 5.6430540000000002
	.quad	0x3fe651eb851eb852              # double 0.69750000000000001
	.quad	0x4020bfa355043e53              # double 8.3742929999999998
	.quad	0x4023bdcaafbc1ace              # double 9.8706870000000002
	.quad	0x4008640b780346dc              # double 3.0488499999999998
	.quad	0x4007bccf28c79f66              # double 2.9671919999999998
	.quad	0x401c8ce89656eefa              # double 7.1376059999999999
	.quad	0x401b1ecaab8a5ce6              # double 6.7800700000000003
	.quad	0x4004abd987c6327f              # double 2.5839110000000001
	.quad	0x3fcc48c7192ea52f              # double 0.220971
	.quad	0x3fd5f82f51266341              # double 0.34327299999999999
	.quad	0x40176e603d577964              # double 5.8577890000000004
	.quad	0x401d69b30728e92d              # double 7.3532219999999997
	.quad	0x4022ae00f345069a              # double 9.3398509999999995
	.quad	0x40230832fcac8e69              # double 9.5160140000000001
	.quad	0x401c076b3bb83cf3              # double 7.0072450000000002
	.quad	0x402345814940bbb2              # double 9.6357520000000001
	.quad	0x4021d61ae70c1334              # double 8.9181740000000004
	.quad	0x40110ebaf102363b              # double 4.2643849999999999
	.quad	0x400133f63c31df76              # double 2.150372
	.quad	0x4021e8bae89eba6b              # double 8.9545510000000004
	.quad	0x4014232d2bb23572              # double 5.0343520000000002
	.quad	0x40199832fcac8e69              # double 6.3986320000000001
	.quad	0x40190378ee286727              # double 6.2533909999999997
	.quad	0x401389c7368ad688              # double 4.8845489999999998
	.quad	0x4004738583621fb0              # double 2.5564070000000001
	.quad	0x3fe15f6db940fece              # double 0.54289900000000002
	.quad	0x40149e2de8709742              # double 5.1544720000000002
	.quad	0x401af2aae297396d              # double 6.73698
	.quad	0x4015fea4228997c4              # double 5.4986730000000001
	.quad	0x40190e653868fd1a              # double 6.2640580000000003
	.quad	0x401cf336deb95e5b              # double 7.237514
	.quad	0x4018b2684cf0739b              # double 6.174226
	.quad	0x4018b9fadafd1138              # double 6.1816209999999998
	.quad	0x4023dcbf0995aaf8              # double 9.9311450000000007
	.quad	0x4001f127f5e84f09              # double 2.2427519999999999
	.quad	0x40197093d9663843              # double 6.3599389999999998
	.quad	0x40201eccc46950fc              # double 8.0601559999999992
	.quad	0x4017f09cc319c5a4              # double 5.9849730000000001
	.quad	0x401550d77b7c7821              # double 5.3289470000000003
	.quad	0x401a650a45d41fa7              # double 6.5986719999999996
	.quad	0x4023a8b49e01de27              # double 9.8295030000000007
	.quad	0x4018ebad3a604e1e              # double 6.2301529999999996
	.quad	0x3ffbc81c2e33eff2              # double 1.7363550000000001
	.quad	0x400b1cea6c1a048e              # double 3.389119
	.quad	0x40115c6f7a0b5ed9              # double 4.3402690000000002
	.quad	0x401884c76d117b53              # double 6.1296670000000004
	.quad	0x4008cb86b15f88fd              # double 3.0993780000000002
	.quad	0x4022d0307f23cc8e              # double 9.4066200000000002
	.quad	0x401cb08d8ec95bff              # double 7.172415
	.quad	0x400350cfe154434e              # double 2.4144589999999999
	.quad	0x401570fb65668c26              # double 5.3603339999999999
	.quad	0x4015ac853c148345              # double 5.4184770000000002
	.quad	0x401bfccee5abc0e4              # double 6.9968830000000004
	.quad	0x4022596d2aa5c5f8              # double 9.1746610000000003
	.quad	0x401c39c62a1b5c7d              # double 7.0564200000000001
	.quad	0x40219cb72c5197a2              # double 8.8060849999999995
	.quad	0x4019c333b96af039              # double 6.4406270000000001
	.quad	0x4010db1bbcf4e875              # double 4.2139730000000002
	.quad	0x4023c7c19c17225b              # double 9.8901489999999991
	.quad	0x401f381a9b8cb8e1              # double 7.8047890000000004
	.quad	0x400c7214f0520d13              # double 3.555704
	.quad	0x4012b122b7baecd0              # double 4.6729839999999996
	.quad	0x401016c7eae5bc88              # double 4.0222470000000001
	.quad	0x3ff95bb6aa4b9885              # double 1.584891
	.quad	0x4016d82773e24fec              # double 5.7110880000000002
	.quad	0x401c7e8101f31f47              # double 7.1235390000000001
	.quad	0x401d6baf102363b2              # double 7.3551599999999997
	.quad	0x3ffbe098915bdd76              # double 1.7423329999999999
	.quad	0x40082e136e71cda3              # double 3.0224980000000001
	.quad	0x401e78298cc14403              # double 7.6173460000000003
	.quad	0x401b986ca89fc6da              # double 6.8988519999999998
	.quad	0x40156477ff151e75              # double 5.3481139999999998
	.quad	0x400dc83c297bfa4c              # double 3.7227709999999998
	.quad	0x3fc1f562174c4ce0              # double 0.14030100000000001
	.quad	0x400624d551d68c69              # double 2.7679849999999999
	.quad	0x401c54c87980f55e              # double 7.0827960000000001
	.quad	0x400336a50d6b228e              # double 2.4016820000000001
	.quad	0x40136822bbecaab9              # double 4.8516950000000003
	.quad	0x40217ede76427c7c              # double 8.7477909999999994
	.quad	0x401cb01d9f4d37c1              # double 7.1719879999999998
	.quad	0x3f6c3265add9c27f              # double 0.0034420000000000002
	.quad	0x401ef496ededaec5              # double 7.7388570000000003
	.quad	0x3fd6cd9a52263d81              # double 0.35629899999999998
	.quad	0x401e1881e4712e41              # double 7.5239330000000004
	.quad	0x400c174cd31769a9              # double 3.511377
	.quad	0x400dd207d4e09785              # double 3.727554
	.quad	0x3ff6a6d373affb05              # double 1.415729
	.quad	0x40227a934acaff6d              # double 9.2394049999999996
	.quad	0x401f69057d1782d4              # double 7.8525600000000004
	.quad	0x40205422ccb3a259              # double 8.1643279999999994
	.quad	0x400f971327243138              # double 3.9487670000000001
	.quad	0x4020788effe2a3cf              # double 8.2354660000000006
	.quad	0x3fc2efd438d1d8a5              # double 0.14794399999999999
	.quad	0x400f104ff43419e3              # double 3.882965
	.quad	0x3fff59c49774256c              # double 1.959416
	.quad	0x400d3eef5ec80c74              # double 3.6557300000000001
	.quad	0x4019412839042d8c              # double 6.3136299999999999
	.quad	0x4023ba6e32e3821b              # double 9.864122
	.quad	0x4015fcff21b3aeef              # double 5.4970670000000004
	.quad	0x3fe76fbb0e5e6794              # double 0.73238899999999996
	.quad	0x4012255f78359bc3              # double 4.5364969999999998
	.quad	0x40012006d0d4994a              # double 2.140638
	.quad	0x40218eedaa92e621              # double 8.7791569999999997
	.quad	0x4020e7635e74299e              # double 8.4519300000000008
	.quad	0x401a175e2046c765              # double 6.5228200000000003
	.quad	0x40133def8487b99d              # double 4.8104839999999998
	.quad	0x401b681669ced0b3              # double 6.851648
	.quad	0x40141a9f383f0baf              # double 5.0259980000000004
	.quad	0x401777baecd07853              # double 5.866924
	.quad	0x401d9f737da61e0c              # double 7.4057139999999997
	.quad	0x40197c1a8ac5c140              # double 6.3711950000000002
	.quad	0x400feb6848beb5b3              # double 3.9899450000000001
	.quad	0x40238b6f7e3d1cc1              # double 9.7723349999999999
	.quad	0x4004c272862f598a              # double 2.5949450000000001
	.quad	0x401406d373affb05              # double 5.0066660000000001
	.quad	0x4017f0c804102ff9              # double 5.9851380000000001
	.quad	0x3ff89bc44bf4cb19              # double 1.5380290000000001
	.quad	0x401273f2d3c792d1              # double 4.6132309999999999
	.quad	0x3fdf24d8fd5cb791              # double 0.486624
	.quad	0x3ffe1b30728e92d5              # double 1.8816379999999999
	.quad	0x401b1be4473cd573              # double 6.7772379999999997
	.quad	0x402117b0b3919264              # double 8.5462699999999998
	.quad	0x4021007a8d64d7f1              # double 8.5009350000000001
	.quad	0x4012e5cdd50a88f0              # double 4.724418
	.quad	0x401f7fca85caafbc              # double 7.8747959999999999
	.quad	0x4022368f29d40ee0              # double 9.1065609999999992
	.quad	0x4016dd9dfdac68a9              # double 5.7164229999999998
	.quad	0x3ff932acfb762d84              # double 1.574872
	.quad	0x40026c636b096356              # double 2.302924
	.quad	0x3fea23ad18d25edd              # double 0.816855
	.quad	0x4011697e996312f5              # double 4.3530220000000002
	.quad	0x3ff47c74fb549f95              # double 1.2803850000000001
	.quad	0x40214ac68a936c59              # double 8.6460460000000001
	.quad	0x4000728f190d1740              # double 2.0559370000000001
	.quad	0x40205eb5f5f0b285              # double 8.1849819999999998
	.quad	0x4007ea3a4b5568e8              # double 2.9893689999999999
	.quad	0x4020de4b2314013f              # double 8.4341670000000004
	.quad	0x401cb47a9e2bcf92              # double 7.1762490000000003
	.quad	0x400078a3b57c4e2f              # double 2.0589059999999999
	.quad	0x401b9d512ec6bce8              # double 6.9036299999999997
	.quad	0x4015d14e7ee9142b              # double 5.4544009999999998
	.quad	0x400ac7cf1c3265ae              # double 3.3475630000000001
	.quad	0x400c13c89f40a287              # double 3.5096599999999998
	.quad	0x40195733a8a3f898              # double 6.3351579999999998
	.quad	0x3ff87c6da4484945              # double 1.530378
	.quad	0x4011a8387df5cf25              # double 4.4142780000000004
	.quad	0x400ca53f39d1b2e6              # double 3.5806870000000002
	.quad	0x3ff6cdf9bdc69f8c              # double 1.425287
	.quad	0x4018447021d10b20              # double 6.0668340000000001
	.quad	0x4020fe27179bfdf8              # double 8.4963920000000002
	.quad	0x40035265add9c27f              # double 2.4152330000000002
	.quad	0x40200af4cf4a558f              # double 8.0213990000000006
	.quad	0x401381b97353b4b3              # double 4.876684
	.quad	0x4004d057d1782d38              # double 2.6017299999999999
	.quad	0x40162e58e64b2314              # double 5.545261
	.quad	0x400c665e89225311              # double 3.5499849999999999
	.quad	0x401f0e846a5d6bec              # double 7.7641770000000001
	.quad	0x400e0d3e0bd44999              # double 3.7564660000000001
	.quad	0x3ff4d26527a20579              # double 1.301366
	.quad	0x3ff630079a2834d2              # double 1.3867259999999999
	.quad	0x3fffea1c68ec52a4              # double 1.994656
	.quad	0x40205530ced4e4c9              # double 8.1663879999999995
	.quad	0x401a30a915379fa9              # double 6.5475199999999996
	.quad	0x3fd85471715c63ae              # double 0.38015399999999999
	.quad	0x4018101754b05b7d              # double 6.015714
	.quad	0x3fd42e83a109d063              # double 0.31533899999999998
	.quad	0x401a5c2b94d94079              # double 6.5900100000000004
	.quad	0x401e63137b07075b              # double 7.5967539999999997
	.quad	0x402003e78e1932d7              # double 8.0076260000000001
	.quad	0x4020107c6327ed85              # double 8.0321990000000003
	.quad	0x40143fd438d1d8a5              # double 5.0623329999999997
	.quad	0x4007ddbfceb78898              # double 2.983276
	.quad	0x402019f3a57eaa2a              # double 8.0506869999999999
	.quad	0x401134790b849881              # double 4.3012430000000004
	.quad	0x40225c16bdb1a6d7              # double 9.1798610000000007
	.quad	0x40215263305100a4              # double 8.6609130000000007
	.quad	0x4023756a161e4f76              # double 9.7293249999999993
	.quad	0x401189de481f5382              # double 4.3846369999999997
	.quad	0x401f587df5cf2496              # double 7.8364180000000001
	.quad	0x401b67a072d1aeb4              # double 6.8511980000000001
	.quad	0x401d87d0f1f57b42              # double 7.3826330000000002
	.quad	0x3ff81774256bca53              # double 1.5057259999999999
	.quad	0x4016c27674d16335              # double 5.6899050000000004
	.quad	0x4020dc74107314cb              # double 8.4305730000000008
	.quad	0x402081e4712e4085              # double 8.2536959999999997
	.quad	0x3ff1dadfb506dd6a              # double 1.115936
	.quad	0x3fe8758c08b75ea6              # double 0.76434899999999995
	.quad	0x40087dd8f92af9a9              # double 3.0614490000000001
	.quad	0x3ff5a19b90ea9e6f              # double 1.351955
	.quad	0x401e5d5cfaacd9e8              # double 7.5911749999999997
	.quad	0x401c0ce6c093d966              # double 7.0125989999999998
	.quad	0x4020223f67f4dbe0              # double 8.0668900000000008
	.quad	0x400ea06290eed02d              # double 3.8283130000000001
	.quad	0x40098ef88b977857              # double 3.1948099999999999
	.quad	0x40169836a832b991              # double 5.6486460000000003
	.quad	0x401ed526527a2058              # double 7.7081540000000003
	.quad	0x401a4bda0dfdef85              # double 6.5740740000000004
	.quad	0x4023533b10774688              # double 9.6625599999999991
	.quad	0x4000f9b024f6598e              # double 2.121918
	.quad	0x4020f8aa21a719b5              # double 8.4856730000000002
	.quad	0x400166fac6045baf              # double 2.1752829999999999
	.quad	0x4014e4d61b2a27f2              # double 5.2234730000000003
	.quad	0x401058b0079a2835              # double 4.0866090000000002
	.quad	0x3ffa01754b05b7d0              # double 1.625356
	.quad	0x401e7bb6aa4b9885              # double 7.6208140000000001
	.quad	0x40239f2a172abef0              # double 9.8108679999999993
	.quad	0x3ff559d12cadddf4              # double 1.3344279999999999
	.quad	0x40003c6f36ef8056              # double 2.029509
	.quad	0x401d30746455eaee              # double 7.2973189999999999
	.quad	0x4005e5479d4d8341              # double 2.7369530000000002
	.quad	0x401bb821294573a8              # double 6.9298140000000004
	.quad	0x401011c714fce747              # double 4.0173610000000002
	.quad	0x3fe2a9fbe76c8b44              # double 0.58325000000000005
	.quad	0x400f82dc6e2a8006              # double 3.9388969999999999
	.quad	0x3ff2fe963dc486ad              # double 1.187155
	.quad	0x40192a7eb6bf444e              # double 6.291499
	.quad	0x4020f9a240314877              # double 8.4875659999999993
	.quad	0x4009dda9435ac8a3              # double 3.2332329999999998
	.quad	0x4016eecaab8a5ce6              # double 5.7331950000000003
	.quad	0x401ceec4e7253da7              # double 7.2331729999999999
	.quad	0x40205d64302b40f6              # double 8.1824049999999993
	.quad	0x3fe570bae89eba6b              # double 0.67001100000000002
	.quad	0x4016780303c07ee1              # double 5.6171990000000003
	.quad	0x40127ddd2ae8e1d6              # double 4.6229139999999997
	.quad	0x400e6dc33721d53d              # double 3.8035950000000001
	.quad	0x4011b146a1a500d6              # double 4.4231210000000001
	.quad	0x3ffd5b738e6d15ad              # double 1.834827
	.quad	0x3ffcd45d851654d6              # double 1.801847
	.quad	0x3fff141fa7653437              # double 1.9424129999999999
	.quad	0x402235798d8a979e              # double 9.1044429999999998
	.quad	0x3fffbad7d7c2ca15              # double 1.9831160000000001
	.quad	0x4023664302b40f67              # double 9.6997300000000006
	.quad	0x40208ec8b4395810              # double 8.2788749999999993
	.quad	0x3feeb0014f8b588e              # double 0.95898499999999998
	.quad	0x4022039884c6a3be              # double 9.0070230000000002
	.quad	0x4007383be6601bca              # double 2.9024580000000002
	.quad	0x4020dd7add15f02c              # double 8.4325779999999994
	.quad	0x400c35885d31337f              # double 3.5261390000000001
	.quad	0x3ff593c9abb01c93              # double 1.348581
	.quad	0x40188ca25529fe00              # double 6.1373379999999997
	.quad	0x4018baa79bbadc0a              # double 6.1822800000000004
	.quad	0x400d9d5454152b0a              # double 3.7018209999999998
	.quad	0x401382b063e07a29              # double 4.8776260000000002
	.quad	0x400fd987c6327ed8              # double 3.9812159999999999
	.quad	0x4016b8637bd05af7              # double 5.6800670000000002
	.quad	0x4016504d98394749              # double 5.5784209999999996
	.quad	0x4011716c1e364bec              # double 4.3607639999999996
	.quad	0x4009f72474538ef3              # double 3.2456749999999999
	.quad	0x400ea331e3a7daa5              # double 3.829685
	.quad	0x400bcadb402d16b9              # double 3.4740509999999998
	.quad	0x4005ad38cda6e760              # double 2.709581
	.quad	0x40048379b77c02b0              # double 2.5641970000000001
	.quad	0x4019fbab649d388b              # double 6.4957710000000004
	.quad	0x4010d07bbb62413e              # double 4.2035970000000002
	.quad	0x4021d8563ed0f627              # double 8.9225329999999996
	.quad	0x3ff8e42e12620254              # double 1.5557080000000001
	.quad	0x4017dfbbd7b2031d              # double 5.9684900000000001
	.quad	0x4010b82f0e0a84be              # double 4.1798669999999998
	.quad	0x3fbe8b19a415f45e              # double 0.11931
	.quad	0x40231d6cf850df16              # double 9.5574720000000006
	.quad	0x4011ffc9795b35b1              # double 4.4997920000000002
	.quad	0x4016d27a20578e5c              # double 5.7055439999999997
	.quad	0x40210d0efdc9c4db              # double 8.5255050000000008
	.quad	0x400cf1d4738a3b58              # double 3.6180810000000001
	.quad	0x401b86b441bb8c33              # double 6.8815470000000003
	.quad	0x40210bc7d5ed06ff              # double 8.5230090000000001
	.quad	0x400d9446f9b994e2              # double 3.6974010000000002
	.quad	0x401ea3e920c069e8              # double 7.660069
	.quad	0x400ee7f2c3009b30              # double 3.8632559999999998
	.quad	0x3fe8cd26fa3fcc9f              # double 0.77504300000000004
	.quad	0x40163817fc7607c4              # double 5.5547789999999999
	.quad	0x4019a0fd3b29a1ba              # double 6.407216
	.quad	0x401de2795703f2d4              # double 7.4711660000000002
	.quad	0x4013f9c49774256c              # double 4.9939140000000002
	.quad	0x401f27e4de3b8a1a              # double 7.7889590000000002
	.quad	0x3fc2990f301eabbd              # double 0.14529600000000001
	.quad	0x400236ad70e6f2e9              # double 2.2766980000000001
	.quad	0x401ee3c81908e582              # double 7.7224430000000002
	.quad	0x4011c7d9988d2a20              # double 4.4451660000000004
	.quad	0x4005ea65cf67b1c0              # double 2.739452
	.quad	0x401d37dfa00e27e1              # double 7.3045640000000001
	.quad	0x4022c4319c5a3e3a              # double 9.3831910000000001
	.quad	0x40010bfb9bed30f0              # double 2.1308509999999998
	.quad	0x401898ac18f81e8a              # double 6.1490939999999998
	.quad	0x40200ebf444e0daa              # double 8.0288029999999999
	.quad	0x4021578c868b9fdc              # double 8.6709940000000003
	.quad	0x4021abf316e37154              # double 8.8358389999999999
	.quad	0x3ff95e2584f4c6e7              # double 1.585485
	.quad	0x400c4731d2e0e304              # double 3.5347629999999999
	.quad	0x3fff515592d98bf8              # double 1.957357
	.quad	0x400191fd5885d313              # double 2.1962839999999999
	.quad	0x3feeae03b3e9a6f8              # double 0.95874199999999998
	.quad	0x4021ef26aec0724b              # double 8.9670919999999992
	.quad	0x4010e72324c83665              # double 4.2257199999999999
	.quad	0x401cf996fa82e87d              # double 7.2437399999999998
	.quad	0x400e01719f7f8ca8              # double 3.750705
	.quad	0x3fe2d22c881e4713              # double 0.58815600000000001
	.quad	0x400a18c9752977c9              # double 3.2621030000000002
	.quad	0x3fe9ac2374794ea0              # double 0.80226299999999994
	.quad	0x4003a49774256bca              # double 2.4553669999999999
	.quad	0x401b044b6e935b92              # double 6.754194
	.quad	0x401f1f70153bd167              # double 7.7807009999999996
	.quad	0x40223d6c93a71151              # double 9.1199689999999993
	.quad	0x4017a83f0bae89ec              # double 5.9143030000000003
	.quad	0x40051c896dd26b72              # double 2.6389339999999999
	.quad	0x400c8effe2a3cea7              # double 3.5698240000000001
	.quad	0x4022c2b6d00b45ae              # double 9.3803009999999993
	.quad	0x4012b9e59f2ba9d2              # double 4.68154
	.quad	0x400d8ee17a02fb5d              # double 3.694766
	.quad	0x401d0a5b9628cbd1              # double 7.2601149999999999
	.quad	0x401f05d6bebe1651              # double 7.7557020000000003
	.quad	0x40056face67d77fb              # double 2.679529
	.quad	0x401e91ad2135daad              # double 7.6422619999999996
	.quad	0x40169b99d451fc4c              # double 5.6519539999999999
	.quad	0x401a4974a3400b89              # double 6.5717340000000002
	.quad	0x40159bc0e38a7e74              # double 5.4021030000000003
	.quad	0x4016e183f91e646f              # double 5.7202299999999999
	.quad	0x3fe3fcdcca70d1fa              # double 0.62461699999999998
	.quad	0x4014904fb1183b60              # double 5.1409289999999999
	.quad	0x3ff00ffeb074a772              # double 1.003905
	.quad	0x4005758d1526d8b2              # double 2.6823980000000001
	.quad	0x4020e72f55582129              # double 8.4515329999999995
	.quad	0x3fe6ba7546d3f9e8              # double 0.71026100000000003
	.quad	0x40137095f2452c5a              # double 4.859947
	.quad	0x40050b0318b9346a              # double 2.6303770000000002
	.quad	0x40187297bfa4c61e              # double 6.1119070000000004
	.quad	0x40104d0d49949e88              # double 4.0752459999999999
	.quad	0x400609917939a7c1              # double 2.7546719999999998
	.quad	0x401d67774aba3876              # double 7.3510410000000004
	.quad	0x4007d5b573eab368              # double 2.9793500000000002
	.quad	0x401d3647fdc5931d              # double 7.3030090000000003
	.quad	0x401e81d5c31593e6              # double 7.626792
	.quad	0x4001fcb70ac3a861              # double 2.2483960000000001
	.quad	0x40202b3c81908e58              # double 8.0844459999999998
	.quad	0x4020a88377186552              # double 8.3291280000000008
	.quad	0x3fd1c2d27807789a              # double 0.27751599999999998
	.quad	0x4018eb474107314d              # double 6.2297640000000003
	.quad	0x4020589eba6aca79              # double 8.1730859999999996
	.quad	0x3fd467168f8e7ddd              # double 0.31879200000000002
	.quad	0x4018ef0e90bc7b46              # double 6.2334540000000001
	.quad	0x4021ca38327674d1              # double 8.8949599999999993
	.quad	0x40217a671ef30a4e              # double 8.7390679999999996
	.quad	0x4018e91ab8e8ea3a              # double 6.2276410000000002
	.quad	0x401ed3dea465a576              # double 7.7069039999999998
	.quad	0x402088a137f38c54              # double 8.2668549999999996
	.quad	0x40102cea6c1a048e              # double 4.043863
	.quad	0x40098c4588a04d12              # double 3.193492
	.quad	0x40227f7446f9b995              # double 9.2489340000000002
	.quad	0x3ffc34bb5e0f7fd0              # double 1.7628740000000001
	.quad	0x4014824e9c454584              # double 5.1272529999999996
	.quad	0x4021dcad14a0a0f5              # double 8.9310080000000003
	.quad	0x3fd8615a8deb0fae              # double 0.380942
	.quad	0x3fc5a975afaf8594              # double 0.169234
	.quad	0x3fd222749f0e4da1              # double 0.28335300000000002
	.quad	0x3fd7dbbe0157eed4              # double 0.37278699999999998
	.quad	0x4013655cd91eeaa7              # double 4.8489870000000002
	.quad	0x4016422f2734f82f              # double 5.5646329999999997
	.quad	0x4023fd96c82e019b              # double 9.9952909999999999
	.quad	0x4020a849667b5f1c              # double 8.3286850000000001
	.quad	0x4004c3c5bd0e12e8              # double 2.5955919999999999
	.quad	0x3ffc4443914f483d              # double 1.7666660000000001
	.quad	0x4020868448cf7caa              # double 8.2627279999999992
	.quad	0x4012cf0563ed0f62              # double 4.7021689999999996
	.quad	0x40205cc46950fc72              # double 8.1811860000000003
	.quad	0x400cde5e2478854d              # double 3.6085780000000001
	.quad	0x40051c286f8ad256              # double 2.6387489999999998
	.quad	0x400319b90ea9e6ef              # double 2.3875600000000001
	.quad	0x3ffc2a5e785b5b70              # double 1.7603439999999999
	.quad	0x40109a012599ed7c              # double 4.1503949999999996
	.quad	0x400d0dcc20d5629e              # double 3.6317370000000002
	.quad	0x401fc918a009f623              # double 7.9463829999999999
	.quad	0x400c23d68405b39e              # double 3.5174989999999999
	.quad	0x40124e1fc08fa7a8              # double 4.5762929999999997
	.quad	0x3fecaf166e008e9b              # double 0.89637299999999998
	.quad	0x40182404a72ead92              # double 6.0351739999999996
	.quad	0x4023efc200c0f020              # double 9.9682770000000005
	.quad	0x40116fd75e2046c7              # double 4.3592199999999997
	.quad	0x3ff27a919695d91b              # double 1.1549240000000001
	.quad	0x4013a4ea8da7f3cf              # double 4.9110509999999996
	.quad	0x4011a6d5cfaacd9f              # double 4.4129250000000004
	.quad	0x3ff279873ffac1d3              # double 1.1546700000000001
	.quad	0x4016dd5171e29b6b              # double 5.7161309999999999
	.quad	0x4013bee3d5fdcdf7              # double 4.9364160000000004
	.quad	0x4016f9b068123811              # double 5.7438370000000001
	.quad	0x40035dd3bafd9770              # double 2.420814
	.quad	0x400867ed84d338f8              # double 3.0507460000000002
	.quad	0x3faa2424a276b7ed              # double 0.051056999999999998
	.quad	0x401c5d338f798527              # double 7.0910169999999999
	.quad	0x40154970b49e01de              # double 5.3217189999999999
	.quad	0x3ff3505af6c69b5a              # double 1.2071179999999999
	.quad	0x4014ff65dbfceb79              # double 5.2494120000000004
	.quad	0x40190578e5c4eb57              # double 6.255344
	.quad	0x400ee325d4a5df22              # double 3.8609119999999999
	.quad	0x40023dba908a265f              # double 2.280141
	.quad	0x4009ce147ae147ae              # double 3.225625
	.quad	0x402149307af20ea6              # double 8.6429480000000005
	.quad	0x400a68943e100608              # double 3.3010640000000002
	.quad	0x40237f63a1900820              # double 9.7488069999999993
	.quad	0x4022cb4e7685985b              # double 9.3970830000000002
	.quad	0x3ffe68c47a17f413              # double 1.9005780000000001
	.quad	0x40151148fd9fd36f              # double 5.2668799999999996
	.quad	0x4019ce7685985ad5              # double 6.4516239999999998
	.quad	0x4020b256798958da              # double 8.3483160000000005
	.quad	0x40082534bd76ee74              # double 3.018167
	.quad	0x400401c8216c6152              # double 2.5008699999999999
	.quad	0x401bf3b81b64e054              # double 6.9880069999999996
	.quad	0x40211e8fb00bcbe6              # double 8.5596899999999998
	.quad	0x402079d6f112fd33              # double 8.2379680000000004
	.quad	0x401d11cc100e6afd              # double 7.2673800000000002
	.quad	0x401440a6b93ccd10              # double 5.0631360000000001
	.quad	0x3fecefaa4766c6de              # double 0.90425599999999995
	.quad	0x400f8ebc408d8ec9              # double 3.9446949999999998
	.quad	0x401836da87a072d2              # double 6.0535680000000003
	.quad	0x40057723ee1bd1ee              # double 2.6831740000000002
	.quad	0x3ffb45baf533f423              # double 1.7045239999999999
	.quad	0x3feb1f212d773190              # double 0.84755000000000003
	.quad	0x3ff9abfa8f7db6e5              # double 1.604487
	.quad	0x40030c5a8155d5f5              # double 2.3810319999999998
	.quad	0x3ff4b02602c9081c              # double 1.293005
	.quad	0x3fef882adc4c9c91              # double 0.98537200000000002
	.quad	0x4010933b10774688              # double 4.1437799999999996
	.quad	0x401ca76c050bd87b              # double 7.1634979999999997
	.quad	0x3ffab301eabbcb1d              # double 1.668703
	.quad	0x401055c31593e5fb              # double 4.0837519999999996
	.quad	0x3fe792ee84ad794a              # double 0.73668599999999995
	.quad	0x400c8b6177ea1c69              # double 3.568057
	.quad	0x402354ec636b0963              # double 9.6658659999999994
	.quad	0x4006d75c0767d34e              # double 2.855156
	.quad	0x4022fdf6db940fed              # double 9.4960240000000002
	.quad	0x40064f8f041461b7              # double 2.7888470000000001
	.quad	0x3ff5c7b677f6b1a3              # double 1.3612580000000001
	.quad	0x400f4164840e171a              # double 3.90693
	.quad	0x401bd43419e30015              # double 6.95723
	.quad	0x401dd940357a3550              # double 7.4621589999999998
	.quad	0x3ff5dce5b4245f5b              # double 1.36643
	.quad	0x4014bc8216c61523              # double 5.1840900000000003
	.quad	0x401897d8cf398e97              # double 6.148288
	.quad	0x40200a76965f5276              # double 8.0204360000000001
	.quad	0x3fd9df0d413122b8              # double 0.40423900000000001
	.quad	0x400bfe5eaab04253              # double 3.4992040000000002
	.quad	0x3fed224463065f96              # double 0.91043300000000005
	.quad	0x40048679463cfb33              # double 2.565661
	.quad	0x4010c26c3b927d46              # double 4.1898660000000003
	.quad	0x401361af7d30ad47              # double 4.845396
	.quad	0x40045355475a31a5              # double 2.5406900000000001
	.quad	0x3ff89b877ab32485              # double 1.537971
	.quad	0x4015fc792d1287c2              # double 5.496556
	.quad	0x4021dab9b23dd54e              # double 8.9271980000000006
	.quad	0x4002b76ee73e681b              # double 2.3395670000000002
	.quad	0x40024e75ff609dd0              # double 2.2883110000000002
	.quad	0x3fe02f7f498c3b0c              # double 0.50579799999999997
	.quad	0x4010b81beb18116f              # double 4.1797940000000002
	.quad	0x3ff15d8b60f1b25f              # double 1.0853379999999999
	.quad	0x401740895d0b73d2              # double 5.8130240000000004
	.quad	0x4014f03fb3743633              # double 5.2346180000000002
	.quad	0x40220e95d91ab8e9              # double 9.0284870000000002
	.quad	0x400999fdbd2fa0d7              # double 3.2001909999999998
	.quad	0x40239a72a7bd48cb              # double 9.8016559999999994
	.quad	0x401e1bfc6540cc79              # double 7.52733
	.quad	0x40235e646f156191              # double 9.6843599999999998
	.quad	0x401091c9f72f76e6              # double 4.1423719999999999
	.quad	0x3fd49595feda6613              # double 0.32163000000000003
	.quad	0x3ff18eabffcdab19              # double 1.097332
	.quad	0x3fff2f76e6106ab1              # double 1.9490879999999999
	.quad	0x4016466f0cfe1544              # double 5.5687829999999998
	.quad	0x3fb5471715c63ae2              # double 0.083115999999999995
	.quad	0x401476805a2d7300              # double 5.1157240000000002
	.quad	0x3fd151eb851eb852              # double 0.270625
	.quad	0x3ffaed16b97fe8ee              # double 1.6828829999999999
	.quad	0x401f404b7f5a5333              # double 7.8127880000000002
	.quad	0x4018e4267839cd81              # double 6.2228029999999999
	.quad	0x3f660fa15db3397e              # double 0.0026930000000000001
	.quad	0x3ffd88c3f3e0370d              # double 1.84589
	.quad	0x400177995ee136e7              # double 2.1833979999999999
	.quad	0x40116fc7607c419a              # double 4.359159
	.quad	0x3ff4973860999dcb              # double 1.2869189999999999
	.quad	0x4013d8a58b3f63c3              # double 4.9615689999999999
	.quad	0x4007cd6451b93038              # double 2.9752890000000001
	.quad	0x40084ca600b02928              # double 3.037426
	.quad	0x40069992428d434a              # double 2.824986
	.quad	0x4003f8288051c9f7              # double 2.4961709999999999
	.quad	0x3ff043e963dc486b              # double 1.01658
	.quad	0x401ef92d55a3a084              # double 7.7433370000000004
	.quad	0x401b263dc486ad2e              # double 6.7873450000000002
	.quad	0x3ff7b57f737da61e              # double 1.481811
	.quad	0x400d0998d045fe11              # double 3.629686
	.quad	0x4022495bbbe878fb              # double 9.1432780000000005
	.quad	0x40078bea4ebdd335              # double 2.9433180000000001
	.quad	0x40201f1561911490              # double 8.0607100000000003
	.quad	0x40218dd15f02c4d6              # double 8.7769879999999993
	.quad	0x3fff8055fbb517a4              # double 1.9688319999999999
	.quad	0x3fef314445aa2e3c              # double 0.97476399999999996
	.quad	0x401ea088509bf9c6              # double 7.6567699999999999
	.quad	0x401e13621fafc8b0              # double 7.518929
	.quad	0x3ff96a843808850a              # double 1.5885050000000001
	.quad	0x400cfc422036006d              # double 3.623173
	.quad	0x40087916872b020c              # double 3.0591249999999999
	.quad	0x40186b50f40e5a36              # double 6.1048010000000001
	.quad	0x401020c3d25247cb              # double 4.0319969999999996
	.quad	0x4012068405b39e28              # double 4.5063630000000003
	.quad	0x401142bcf91a32b1              # double 4.3151739999999998
	.quad	0x4021b999780baa58              # double 8.8624989999999997
	.quad	0x3feb50ebaade657c              # double 0.85362800000000005
	.quad	0x4020c7f822bbecab              # double 8.3905650000000005
	.quad	0x401a073de1e2de87              # double 6.507072
	.quad	0x40033e1c9b413986              # double 2.4053279999999999
	.quad	0x4019619220ff5409              # double 6.3452840000000004
	.quad	0x4012dd944aa53fc0              # double 4.716386
	.quad	0x40072a2b1704ff43              # double 2.8955899999999999
	.quad	0x401b1491afc04c8c              # double 6.7700870000000002
	.quad	0x3fb41e03f705857b              # double 0.078583
	.quad	0x40128932d6ece13f              # double 4.6339829999999997
	.quad	0x4014f85c24c404a7              # double 5.2425389999999998
	.quad	0x4020ead2fe3f35a0              # double 8.4586410000000001
	.quad	0x401a9bab649d388b              # double 6.6520210000000004
	.quad	0x401d95bff04577d9              # double 7.3962399999999997
	.quad	0x401635e7c8d19589              # double 5.5526419999999996
	.quad	0x40177185cee17a03              # double 5.860862
	.quad	0x4010cd41fa765343              # double 4.2004469999999996
	.quad	0x4021d88e581cf788              # double 8.9229610000000008
	.quad	0x3fd41db0142f61ed              # double 0.31431199999999998
	.quad	0x4007cf1bac2df0d4              # double 2.976127
	.quad	0x4019f3fab10ba626              # double 6.4882609999999996
	.quad	0x401a917e34b94531              # double 6.6420830000000004
	.quad	0x3ff269f383f0bae9              # double 1.1508670000000001
	.quad	0x40208c2f61ed5ae2              # double 8.2737990000000003
	.quad	0x3ff3db9f98b71b8b              # double 1.2411190000000001
	.quad	0x400dfebe9c886163              # double 3.749387
	.quad	0x40232f0307f23cc9              # double 9.5918200000000002
	.quad	0x4020f897635e742a              # double 8.4855300000000007
	.quad	0x401852cf0f9d2bf5              # double 6.0808679999999997
	.quad	0x40106361dc93ea2d              # double 4.0970529999999998
	.quad	0x40123275ab7dc7ac              # double 4.549277
	.quad	0x3ff5fb906466b1e6              # double 1.3739170000000001
	.quad	0x402278a2014727dd              # double 9.2356110000000005
	.quad	0x400d2fa7a85015c2              # double 3.648269
	.quad	0x40165d2bf5515055              # double 5.5909880000000003
	.quad	0x402308d6909aed57              # double 9.5172620000000005
	.quad	0x40186364bec679cc              # double 6.0970639999999996
	.quad	0x3fd8c5ac471b4784              # double 0.38706499999999999
	.quad	0x40234a18372e6a77              # double 9.6447160000000007
	.quad	0x4022fa7e0ef99807              # double 9.489243
	.quad	0x40129317268d3283              # double 4.643643
	.quad	0x402068fc0d2c386d              # double 8.2050479999999997
	.quad	0x3ff943aa79bbadc1              # double 1.5790200000000001
	.quad	0x400cf7ff9b56323c              # double 3.6210930000000001
	.quad	0x4023a288ace24bba              # double 9.8174489999999999
	.quad	0x4018f965f5275eea              # double 6.2435530000000004
	.quad	0x4021159b8023a6ce              # double 8.5422019999999996
	.quad	0x4018640e5a35d67c              # double 6.0977110000000003
	.quad	0x401976616b54e2b0              # double 6.3656059999999997
	.quad	0x4000639ef0f16f44              # double 2.0486430000000002
	.quad	0x3fe97d805e5f30e8              # double 0.79657
	.quad	0x40219ff69014b59a              # double 8.8124280000000006
	.quad	0x4015541fa7653437              # double 5.3321519999999998
	.quad	0x4001ec9c0a8d21bc              # double 2.240532
	.quad	0x4018cf4be835dedf              # double 6.2024379999999999
	.quad	0x400effdbd2fa0d78              # double 3.8749310000000001
	.quad	0x401f0f31f46ed246              # double 7.7648390000000003
	.quad	0x401b155bccaf709b              # double 6.7708579999999996
	.quad	0x401325a426bb55ac              # double 4.786759
	.quad	0x4011cb74ddf86e3b              # double 4.4486879999999998
	.quad	0x40236a37ac3eb7cc              # double 9.7074560000000005
	.quad	0x401386f694467382              # double 4.8818000000000001
	.quad	0x4018143a647fdc59              # double 6.0197539999999998
	.quad	0x401912b628459967              # double 6.2682729999999998
	.quad	0x40198e2c98e53eb4              # double 6.3888420000000004
	.quad	0x3fe07b352a843809              # double 0.51504000000000005
	.quad	0x4018b28d002e2329              # double 6.174366
	.quad	0x4014e529bae46cfd              # double 5.2237920000000004
	.quad	0x400172734f82f512              # double 2.1808839999999998
	.quad	0x400222e44b6e935c              # double 2.2670370000000002
	.quad	0x401146fef7c243dd              # double 4.3193320000000002
	.quad	0x40021d41fa765343              # double 2.2642859999999998
	.quad	0x400ae5c70435efa6              # double 3.362196
	.quad	0x3fec7168f8e7ddca              # double 0.88884399999999997
	.quad	0x3fc03760bf5d7881              # double 0.12669
	.quad	0x401a4ce4a7b4e54f              # double 6.5750909999999996
	.quad	0x4022c5c69f8c21e2              # double 9.3862810000000003
	.quad	0x401a9a5ebb7739f3              # double 6.6507519999999998
	.quad	0x4020bb797460242d              # double 8.366161
	.quad	0x401dddf47f993d53              # double 7.4667529999999998
	.quad	0x4020297b0f6ad70e              # double 8.0810169999999992
	.quad	0x402291ec918e325d              # double 9.2850079999999995
	.quad	0x401d74202d9cf13d              # double 7.3634040000000001
	.quad	0x4021cad01c0ca601              # double 8.8961190000000006
	.quad	0x4019be73a365cb36              # double 6.435988
	.quad	0x3fd1ac083126e979              # double 0.27612500000000001
	.quad	0x4014132a0663c750              # double 5.0187150000000003
	.quad	0x4019e86e7e62dc6e              # double 6.4769839999999999
	.quad	0x3fff4df47f993d53              # double 1.9565319999999999
	.quad	0x40136ddaceee0f3d              # double 4.8572800000000003
	.quad	0x3fe3845132f87ad1              # double 0.60990200000000006
	.quad	0x40082e6ea8544780              # double 3.022672
	.quad	0x401cd88effe2a3cf              # double 7.2114830000000003
	.quad	0x401995bd0e12e83a              # double 6.3962289999999999
	.quad	0x4013272756861e93              # double 4.7882360000000004
	.quad	0x3ff04477ff151e75              # double 1.016716
	.quad	0x401c22bf9830e3ce              # double 7.0339340000000004
	.quad	0x4015a4eebf65dbfd              # double 5.4110670000000001
	.quad	0x3f9cfcc5b8dc5500              # double 0.028308
	.quad	0x40213b46bacf7447              # double 8.615774
	.quad	0x401bb7ac3eb7cbb4              # double 6.9293680000000002
	.quad	0x401a00153bd16766              # double 6.5000809999999998
	.quad	0x4020d50c3d25247d              # double 8.4161090000000005
	.quad	0x400f69a2c669057d              # double 3.92658
	.quad	0x40122d5a5b9628cc              # double 4.5442900000000002
	.quad	0x401a1fa7221858bc              # double 6.5309109999999997
	.quad	0x401f2deca25529fe              # double 7.794848
	.quad	0x3feeca4d2b2bfdb5              # double 0.96219500000000002
	.quad	0x4019acde5d18090b              # double 6.4188169999999998
	.quad	0x4022691ea78af3e4              # double 9.2053119999999992
	.quad	0x3ff276b2af145522              # double 1.1539790000000001
	.quad	0x40200cfe9b7bf1e9              # double 8.0253800000000002
	.quad	0x400867913e81450f              # double 3.05057
	.quad	0x401133059641f645              # double 4.2998260000000004
	.quad	0x4002d78140dd3fe2              # double 2.3552270000000002
	.quad	0x3feb4ec41dd1a21f              # double 0.85336500000000004
	.quad	0x4012bc03ff69014b              # double 4.6836089999999997
	.quad	0x4020f43d03968d76              # double 8.4770280000000007
	.quad	0x3ff01654d61b2a28              # double 1.005452
	.quad	0x40058c6a3bddfca0              # double 2.693562
	.quad	0x401f81554fbdad75              # double 7.8763019999999999
	.quad	0x4003aa79bbadc098              # double 2.45824
	.quad	0x4014135696e58a33              # double 5.018885
	.quad	0x4021355dc4007571              # double 8.6042310000000004
	.quad	0x4014c156e264e486              # double 5.1888079999999999
	.quad	0x3ff3145953586ca9              # double 1.1924680000000001
	.quad	0x4020f89edbf8b9bb              # double 8.4855870000000007
	.quad	0x4017872bcb5fe543              # double 5.8820030000000001
	.quad	0x4008ac1ca3a4b557              # double 3.0840390000000002
	.quad	0x400ddb3d8e000863              # double 3.7320509999999998
	.quad	0x401e6fe974a3400c              # double 7.6092890000000004
	.quad	0x4022c5a2d72ffd1e              # double 9.3860080000000004
	.quad	0x3ff3359146e4c0df              # double 1.2005779999999999
	.quad	0x3fff6f46aa087ca6              # double 1.9646669999999999
	.quad	0x40141caff6d33094              # double 5.0280149999999999
	.quad	0x4017e2dc6e2a8006              # double 5.9715439999999997
	.quad	0x4020a7feb074a772              # double 8.3281150000000004
	.quad	0x4014bb994e1a3f46              # double 5.1832019999999996
	.quad	0x4013c1b8aa00192a              # double 4.9391809999999996
	.quad	0x40193acd5b6805a3              # double 6.3074240000000001
	.quad	0x3fe313cee9dd7ecc              # double 0.59616800000000003
	.quad	0x4012eadeebb341e1              # double 4.7293659999999997
	.quad	0x4005ff41aef6f8f0              # double 2.7496369999999999
	.quad	0x3fd2c02afdda8bd2              # double 0.29297899999999999
	.quad	0x4017bae5bc87db2b              # double 5.9325169999999998
	.quad	0x4021b91d798d8a98              # double 8.8615530000000007
	.quad	0x401767e3d1cc100e              # double 5.8514549999999996
	.quad	0x400f1709b738e6d1              # double 3.8862489999999998
	.quad	0x401f8709fa54c554              # double 7.8818739999999998
	.quad	0x40228235935fc3b5              # double 9.2543150000000001
	.quad	0x3f3b003686a4ca4f              # double 4.1199999999999999E-4
	.quad	0x401077e80389f83c              # double 4.1170960000000001
	.quad	0x4009da72a7bd48cb              # double 3.2316639999999999
	.quad	0x401cfb75a74c09c4              # double 7.2455660000000002
	.quad	0x401e599029ae4f33              # double 7.5874639999999997
	.quad	0x401575c9a34ca0c3              # double 5.3650270000000004
	.quad	0x40164b79d909f1f1              # double 5.5737069999999997
	.quad	0x40184c88a47ecfea              # double 6.0747400000000003
	.quad	0x3fdb05d52c16df40              # double 0.42223100000000002
	.quad	0x401ac8ebcc6c54bd              # double 6.6962120000000001
	.quad	0x4010cd86a8fc0d2c              # double 4.2007089999999998
	.quad	0x4021e01f10667f91              # double 8.9377370000000003
	.quad	0x4014af2b66b6177f              # double 5.1710640000000003
	.quad	0x400d6f8726d04e62              # double 3.6794570000000002
	.quad	0x401a731769a91106              # double 6.6123940000000001
	.quad	0x4000587f023e9ea1              # double 2.0432109999999999
	.quad	0x40220f401c4fc1df              # double 9.0297859999999996
	.quad	0x40025beb9e492bc3              # double 2.294883
	.quad	0x3fe794bbe4473cd5              # double 0.73690599999999995
	.quad	0x400b6223e1869835              # double 3.42292
	.quad	0x400f9161a1db877b              # double 3.9459870000000001
	.quad	0x3fb73860999dcb58              # double 0.090704000000000007
	.quad	0x400d2d794a6eb91b              # double 3.6472039999999999
	.quad	0x4021cb61dc93ea2d              # double 8.8972309999999997
	.quad	0x400d0b0e1b4bb5e1              # double 3.630398
	.quad	0x401293a7546d3f9e              # double 4.6441929999999996
	.quad	0x401e2c2bd7f51efb              # double 7.5431359999999996
	.quad	0x40080a465a57646b              # double 3.005017
	.quad	0x4000beb4202d9cf1              # double 2.0931169999999999
	.quad	0x40084c450268900c              # double 3.0372409999999999
	.quad	0x4001aaefb2aae297              # double 2.2084649999999999
	.quad	0x4020318676a7264a              # double 8.0967289999999998
	.quad	0x40178164c729f59d              # double 5.8763610000000002
	.quad	0x3fdea67e846a5d6c              # double 0.478912
	.quad	0x40215673c4f3ba77              # double 8.6688519999999993
	.quad	0x3ffb90bc7b45f17c              # double 1.722836
	.quad	0x400da0df58c08b76              # double 3.703551
	.quad	0x401f8b0468448cf8              # double 7.8857590000000001
	.quad	0x40184a22706d5065              # double 6.0723969999999996
	.quad	0x4022c5b5525cc426              # double 9.3861489999999996
	.quad	0x40226c02d16b97ff              # double 9.2109590000000008
	.quad	0x40223b8194c01605              # double 9.1162229999999997
	.quad	0x4015fc432ca57a78              # double 5.4963499999999996
	.quad	0x3fd265ecc3e3193f              # double 0.28747099999999998
	.quad	0x401ffaffb04ee7c5              # double 7.9951160000000003
	.quad	0x40202fad080b673c              # double 8.0931169999999994
	.quad	0x40162d206c8711d8              # double 5.5440690000000004
	.quad	0x3ffae72756861e93              # double 1.6814340000000001
	.quad	0x4006225f202107b8              # double 2.7667830000000002
	.quad	0x401a3201040bfe3b              # double 6.548832
	.quad	0x400289bb6aa4b988              # double 2.3172519999999999
	.quad	0x401f3897a67a52ac              # double 7.8052659999999996
	.quad	0x401ba186db50f40e              # double 6.9077409999999997
	.quad	0x4021c69e1b089a02              # double 8.8879249999999992
	.quad	0x3ff0ed71f36262cc              # double 1.0579700000000001
	.quad	0x3fe3b6049ecb31c2              # double 0.61596899999999999
	.quad	0x3ff473c4f3ba7760              # double 1.2782640000000001
	.quad	0x4011b79357603926              # double 4.4292730000000002
	.quad	0x4002712a94ff0026              # double 2.3052570000000001
	.quad	0x400db75536933a04              # double 3.714518
	.quad	0x4018312c6ac215ba              # double 6.0480210000000003
	.quad	0x401d3ca25529fe00              # double 7.3092129999999997
	.quad	0x3ffa0d8a979e16d7              # double 1.628306
	.quad	0x400755f2cb641701              # double 2.9169670000000001
	.quad	0x3ffb749cf56eac86              # double 1.71597
	.quad	0x4010b5ffe6d58c8f              # double 4.1777340000000001
	.quad	0x3febf9fec99f1ae3              # double 0.87426700000000002
	.quad	0x3fc70f1f57b41bfc              # double 0.180149
	.quad	0x400ee68fd199bb28              # double 3.8625790000000002
	.quad	0x4022c50df15a4acf              # double 9.3848719999999996
	.quad	0x40062751ce28ed5f              # double 2.769199
	.quad	0x4021e931a8ef77f2              # double 8.9554569999999991
	.quad	0x401205fc3b4f6167              # double 4.5058449999999999
	.quad	0x40157def416bdb1a              # double 5.3729829999999996
	.quad	0x4015916f0068db8c              # double 5.3920250000000003
	.quad	0x4021399392189bd8              # double 8.6124539999999996
	.quad	0x401356dca07f66e8              # double 4.8348259999999996
	.quad	0x401d705d0fa58f71              # double 7.3597299999999999
	.quad	0x4012814d72799a20              # double 4.6262720000000002
	.quad	0x400b5bdbe3c10518              # double 3.4198529999999998
	.quad	0x4019636da87a072d              # double 6.3470979999999999
	.quad	0x4020ed4a5df2239e              # double 8.4634579999999993
	.quad	0x40159ec2480e8c8b              # double 5.4050380000000002
	.quad	0x4016aebaf102363b              # double 5.6706349999999999
	.quad	0x4012500c9539b888              # double 4.5781729999999996
	.quad	0x4018d4467381d7dc              # double 6.2073
	.quad	0x400a8ddf86e3b470              # double 3.3192740000000001
	.quad	0x401b1ecf20642396              # double 6.780087
	.quad	0x40230468ec52a412              # double 9.5086130000000004
	.quad	0x4018a01fb82c2bd8              # double 6.156371
	.quad	0x40210147064ece9a              # double 8.5024949999999997
	.quad	0x40093cc8de2ac322              # double 3.1546799999999999
	.quad	0x400794a7f8012dfd              # double 2.9475859999999998
	.quad	0x3fda7dcbddb9841b              # double 0.41392800000000002
	.quad	0x40188a400fba8827              # double 6.1350100000000003
	.quad	0x4023e1ccb7d41744              # double 9.9410150000000001
	.quad	0x400175e84f09528f              # double 2.182572
	.quad	0x3ff385d744f5d356              # double 1.2201759999999999
	.quad	0x3fee52aa5c5f7c67              # double 0.94759099999999996
	.quad	0x3fee49ecb31c219f              # double 0.94652400000000003
	.quad	0x3fcefcac8e68e3ef              # double 0.242086
	.quad	0x40162a732df505d1              # double 5.541455
	.quad	0x402207ed634549b6              # double 9.0154829999999997
	.quad	0x3fe99986b9c304cd              # double 0.79999100000000001
	.quad	0x400e3a0dfdef8488              # double 3.7783470000000001
	.quad	0x3ff149df1172ef0b              # double 1.080535
	.quad	0x400ff38a3b57c4e3              # double 3.993916
	.quad	0x3ffc4aa21a719b4e              # double 1.768221
	.quad	0x4013c9d5a187a4a5              # double 4.9471040000000004
	.quad	0x4022d1a95421c044              # double 9.4094949999999997
	.quad	0x40066d0f6273929f              # double 2.8032520000000001
	.quad	0x40066b10ba6266fd              # double 2.8022779999999998
	.quad	0x401f84cf4a558ea8              # double 7.8796970000000001
	.quad	0x401c59d6f112fd33              # double 7.0877340000000002
	.quad	0x40233efda836eb4f              # double 9.6230290000000007
	.quad	0x4000eaf4f0d844d0              # double 2.114725
	.quad	0x40219b01eabbcb1d              # double 8.8027490000000004
	.quad	0x4023becbfb15b574              # double 9.8726500000000001
	.quad	0x4018a1e96c3fc43b              # double 6.1581169999999998
	.quad	0x4006cb5807fed203              # double 2.8492890000000002
	.quad	0x3fcd4ef459d9902a              # double 0.22897200000000001
	.quad	0x402245855970b49e              # double 9.135783
	.quad	0x4023e12e83a109d0              # double 9.9398079999999993
	.quad	0x4012885122318330              # double 4.6331220000000002
	.quad	0x401241d8e8640208              # double 4.5643039999999999
	.quad	0x402365dfeb8d8234              # double 9.6989739999999997
	.quad	0x3ff5226a22b3892f              # double 1.320902
	.quad	0x401b0106ee30caa3              # double 6.7510029999999999
	.quad	0x40216ed58c8eef1c              # double 8.7164730000000005
	.quad	0x40146852f7f498c4              # double 5.1018790000000003
	.quad	0x401b2e7c8d195897              # double 6.7953970000000004
	.quad	0x400280980b242071              # double 2.3127900000000001
	.quad	0x3fd738f7985271bd              # double 0.36285200000000001
	.quad	0x40127ababead4f59              # double 4.619853
	.quad	0x3fe556366d7a56de              # double 0.66677399999999998
	.quad	0x3ff5ca9691a75cd1              # double 1.3619600000000001
	.quad	0x4018ec39bcba3012              # double 6.2306889999999999
	.quad	0x3fce9f2fdb8fde2f              # double 0.239233
	.quad	0x401e2f3bea91d9b2              # double 7.5461270000000003
	.quad	0x401475011904b3c4              # double 5.1142620000000001
	.quad	0x4020314ea077036d              # double 8.0963030000000007
	.quad	0x40219d1e108c3f3e              # double 8.80687
	.quad	0x3ff4eafee6fb4c3c              # double 1.307372
	.quad	0x3ff8478854cdb7ae              # double 1.5174639999999999
	.quad	0x4023708787485e3e              # double 9.7197840000000006
	.quad	0x3ff7018611fd5886              # double 1.437872
	.quad	0x3ff2f456b441bb8c              # double 1.184653
	.quad	0x401a3a0d77b7c782              # double 6.556692
	.quad	0x3ff44a7610279570              # double 1.2681789999999999
	.quad	0x4023f17ca2120e1f              # double 9.9716539999999991
	.quad	0x4020f57b634dad32              # double 8.479457
	.quad	0x3ff57c126a65cf68              # double 1.3427910000000001
	.quad	0x3ffc79b994e1a3f4              # double 1.7797179999999999
	.quad	0x4022fd132f87ad08              # double 9.4942869999999999
	.quad	0x4009a3b60285ec3e              # double 3.2049370000000001
	.quad	0x40115cbd987c6328              # double 4.3405670000000001
	.quad	0x400b3f87f023e9ea              # double 3.406021
	.quad	0x401f704ccee5abc1              # double 7.859668
	.quad	0x4017805faebc408e              # double 5.8753650000000004
	.quad	0x400cfe0589acbc8c              # double 3.624034
	.quad	0x400d892923e5b856              # double 3.6919729999999999
	.quad	0x4013cdac68a936c6              # double 4.9508530000000004
	.quad	0x4018b7785729b281              # double 6.1791700000000001
	.quad	0x4019f6bdf4c2b51c              # double 6.4909590000000001
	.quad	0x40230770bd017daf              # double 9.5145320000000008
	.quad	0x40224c521dda059a              # double 9.1490639999999992
	.quad	0x3ff4048387df5cf2              # double 1.2511019999999999
	.quad	0x40207d1a005c4652              # double 8.2443390000000001
	.quad	0x401c23443d46b26c              # double 7.03444
	.quad	0x400007839cd8127b              # double 2.0036689999999999
	.quad	0x40223216c61522a7              # double 9.0978300000000001
	.quad	0x4023a724fa8b4bf9              # double 9.826454
	.quad	0x3feff95d4e8fb00c              # double 0.99919000000000002
	.quad	0x40180706d5065732              # double 6.0068619999999999
	.quad	0x4013e8d002e23290              # double 4.9773560000000003
	.quad	0x4012fbb98c7e2824              # double 4.745825
	.quad	0x4013916e7a311e86              # double 4.892023
	.quad	0x40037d590c0ad03e              # double 2.4362050000000002
	.quad	0x401622e6a76965f5              # double 5.5340829999999999
	.quad	0x401abf572de43ed9              # double 6.6868559999999997
	.quad	0x401b266a11ec918e              # double 6.7875139999999998
	.quad	0x4011bd9231c64ba9              # double 4.4351279999999997
	.quad	0x401a83632c1f42bb              # double 6.6283079999999996
	.quad	0x401cf482be8bc16a              # double 7.2387800000000002
	.quad	0x4021e894812be48a              # double 8.9542579999999994
	.quad	0x3ff8681dc0db2703              # double 1.5254190000000001
	.quad	0x4020fa9e90795f67              # double 8.4894909999999992
	.quad	0x401aae878fabda0e              # double 6.670439
	.quad	0x401607457c0b1359              # double 5.5071009999999996
	.quad	0x401aa2a6f3f52fc2              # double 6.6588399999999996
	.quad	0x400e0c11a11233df              # double 3.7558929999999999
	.quad	0x4023294b167ec786              # double 9.5806509999999996
	.quad	0x3ffa80c1fc8f3238              # double 1.6564350000000001
	.quad	0x402291f601797cc4              # double 9.2850800000000006
	.quad	0x401be62dc6e2a800              # double 6.9747839999999997
	.quad	0x3feaf6e3f78bbd38              # double 0.842638
	.quad	0x40195446f9b994e2              # double 6.3323020000000003
	.quad	0x400e193ff25e56cd              # double 3.7623289999999998
	.quad	0x400e21815a07b353              # double 3.7663600000000002
	.quad	0x3fc20b34e7685986              # double 0.14096700000000001
	.quad	0x401cfadf71eafee7              # double 7.244993
	.quad	0x4021e229c779a6b5              # double 8.9417249999999999
	.quad	0x401bdab324851a87              # double 6.9635740000000004
	.quad	0x401987268d32830a              # double 6.381983
	.quad	0x40215d601ffb480a              # double 8.6823739999999994
	.quad	0x4002013a92a30553              # double 2.2505999999999999
	.quad	0x4006dc80841ede12              # double 2.8576670000000002
	.quad	0x4012b1d96e9bbf0e              # double 4.6736810000000002
	.quad	0x401fd94ccab3edd9              # double 7.9622070000000002
	.quad	0x401b142e12620254              # double 6.7697070000000004
	.quad	0x4022a93122b7baed              # double 9.3304530000000003
	.quad	0x40177c4eb56fb8f5              # double 5.8713939999999996
	.quad	0x3f81dcd7060bb2bc              # double 0.0087220000000000006
	.quad	0x401fb385c67dfe33              # double 7.9253150000000003
	.quad	0x3fb98e64b2314014              # double 0.099829000000000001
	.quad	0x4012b5f5275ee99a              # double 4.6776929999999997
	.quad	0x3f915fcc1871e6cd              # double 0.016966999999999999
	.quad	0x400f5f1a5ca29846              # double 3.9214370000000001
	.quad	0x3fea6494d50ebaae              # double 0.82477800000000001
	.quad	0x400bd22291fb3fa7              # double 3.4776050000000001
	.quad	0x3fa1efd86a8fc0d3              # double 0.035033000000000002
	.quad	0x401377b7c7820a31              # double 4.8669120000000001
	.quad	0x401b31409a240315              # double 6.7980980000000004
	.quad	0x40217a16c61522a7              # double 8.7384550000000001
	.quad	0x4017783126e978d5              # double 5.867375
	.quad	0x4004f0e6f2e8c048              # double 2.6176279999999998
	.quad	0x3fe7d0225742dcf4              # double 0.74415699999999996
	.quad	0x4006b19c5a3e39f7              # double 2.8367239999999998
	.quad	0x4013170b06c43f60              # double 4.7725030000000004
	.quad	0x4022511233df2a9d              # double 9.1583419999999993
	.quad	0x400696544fe36d22              # double 2.8234029999999999
	.quad	0x3ff01d3cbc48f10b              # double 1.0071380000000001
	.quad	0x3fd07f84449dbec2              # double 0.25778299999999998
	.quad	0x4018386876e1dead              # double 6.0550860000000002
	.quad	0x402240438088509c              # double 9.125515
	.quad	0x3fc94128bf3bea92              # double 0.197301
	.quad	0x4017818a009f6230              # double 5.8765029999999996
	.quad	0x3fe4b1ab0856e697              # double 0.64668800000000004
	.quad	0x402169dd1a21ea36              # double 8.7067650000000008
	.quad	0x3fc53996fa82e87d              # double 0.16582
	.quad	0x4014e1919ac79703              # double 5.2202820000000001
	.quad	0x401cd1ff7164c72a              # double 7.205076
	.quad	0x3ff834784230fcf8              # double 1.51281
	.quad	0x3ff75522a6f3f530              # double 1.4582850000000001
	.quad	0x3fe1231e7d9988d3              # double 0.53553700000000004
	.quad	0x4016148b65237048              # double 5.5200630000000004
	.quad	0x40230163dc486ad3              # double 9.5027150000000002
	.quad	0x401f0151611ba3ca              # double 7.7512869999999996
	.quad	0x40229caa10e02214              # double 9.3059849999999997
	.quad	0x4020df154003254e              # double 8.4357089999999992
	.quad	0x402204289118c198              # double 9.0081220000000002
	.quad	0x401dd6a65cf67b1c              # double 7.459619
	.quad	0x40083a8cdea033e8              # double 3.0285890000000002
	.quad	0x3fb9f81a5870da5e              # double 0.101442
	.quad	0x4013ab59146e4c0e              # double 4.917332
	.quad	0x4003cbda0dfdef85              # double 2.4745370000000002
	.quad	0x4021d8285ec3dab6              # double 8.9221830000000004
	.quad	0x4020adde15ca6ca0              # double 8.3395849999999996
	.quad	0x400d1ecaab8a5ce6              # double 3.6400350000000001
	.quad	0x40142d2ed783dff4              # double 5.0441240000000001
	.quad	0x40120e050374ff86              # double 4.5136909999999997
	.quad	0x4005f851654d61b3              # double 2.7462490000000002
	.quad	0x3ff9033a4723ab00              # double 1.563288
	.quad	0x4019c661f18c9fb6              # double 6.4437329999999999
	.quad	0x4019e594af4f0d84              # double 6.4741999999999997
	.quad	0x4022a66d373affb0              # double 9.3250519999999995
	.quad	0x400d5a426bb55ac0              # double 3.6690719999999999
	.quad	0x4020f0e92d55a3a1              # double 8.4705290000000009
	.quad	0x3ffa3bca1059ea57              # double 1.639597
	.quad	0x401e2ff5c6c11a11              # double 7.5468359999999998
	.quad	0x3ff185da6a444178              # double 1.0951789999999999
	.quad	0x4013b6a161e4f766              # double 4.92835
	.quad	0x400c2dafd113836b              # double 3.5223080000000002
	.quad	0x40218971c10d7bea              # double 8.7684460000000009
	.quad	0x4023775c0767d34e              # double 9.7331240000000001
	.quad	0x402301a500d5e8d5              # double 9.5032119999999995
	.quad	0x4014ac88e79aae6d              # double 5.1684910000000004
	.quad	0x4023a4cd530489d2              # double 9.8218789999999991
	.quad	0x3feef80baa582dbe              # double 0.96777899999999994
	.quad	0x401dc8101f31f46f              # double 7.4453740000000002
	.quad	0x400dddec5f394b7b              # double 3.7333609999999999
	.quad	0x3fde915bdd76683c              # double 0.47762199999999999
	.quad	0x4020d87357e670e3              # double 8.4227550000000004
	.quad	0x40192868b9fdbd30              # double 6.2894620000000003
	.quad	0x3fd07b07075b3e14              # double 0.25750899999999999
	.quad	0x3fed8b5675579af2              # double 0.92325900000000005
	.quad	0x4010812a51e321a3              # double 4.1261380000000001
	.quad	0x401f26dc1a47a9e3              # double 7.7879490000000002
	.quad	0x402040509bf9c62a              # double 8.1256149999999998
	.quad	0x401a3e27e0ef9980              # double 6.5606989999999996
	.quad	0x4020a3571d1d4739              # double 8.3190240000000006
	.quad	0x3fe6fc9bc7714339              # double 0.71833599999999997
	.quad	0x3fe3021d10b1feeb              # double 0.59400799999999998
	.quad	0x40140a3443d46b27              # double 5.0099650000000002
	.quad	0x400e080bed740c41              # double 3.7539289999999998
	.quad	0x401f6b780346dc5d              # double 7.8549499999999996
	.quad	0x4006efadf2ecf206              # double 2.8670309999999999
	.quad	0x400fbc8c9320d994              # double 3.9670649999999998
	.quad	0x4012e2456f75d9a1              # double 4.7209680000000001
	.quad	0x3fdf295a6c5d206d              # double 0.48689900000000003
	.quad	0x4002b8feef5ec80c              # double 2.3403299999999998
	.quad	0x4014376188b1140a              # double 5.0540830000000003
	.quad	0x401a75f4e4430b18              # double 6.6151920000000004
	.quad	0x40231bddb9841aac              # double 9.5544259999999994
	.quad	0x400163632c1f42bb              # double 2.1735289999999998
	.quad	0x401ded2a1f8e3ac1              # double 7.4816060000000002
	.quad	0x4016024399b2c40d              # double 5.502211
	.quad	0x401e7d15f02c4d66              # double 7.6221540000000001
	.quad	0x4008476e1deacc92              # double 3.034878
	.quad	0x4004cb6f19934efd              # double 2.5993330000000001
	.quad	0x401cec810a569b17              # double 7.2309609999999997
	.quad	0x401444230fcf80dc              # double 5.0665399999999998
	.quad	0x401f0e76427c7c52              # double 7.7641229999999997
	.quad	0x401bbf7e80389f84              # double 6.9370060000000002
	.quad	0x3ff2c8cd63cb8173              # double 1.174024
	.quad	0x4012c4fd6d7e889c              # double 4.6923729999999999
	.quad	0x3ff3ece032db1e9f              # double 1.245331
	.quad	0x401fe5d80e496edf              # double 7.9744570000000001
	.quad	0x402193b8800eae19              # double 8.7885170000000006
	.quad	0x401b102539756c94              # double 6.7657670000000003
	.quad	0x4021b1ada76d97b3              # double 8.8470279999999999
	.quad	0x401f1d6f112fd32c              # double 7.7787439999999997
	.quad	0x3ff55b3e1437c569              # double 1.334776
	.quad	0x40147b341e14bdfd              # double 5.1203159999999999
	.quad	0x401e6931876188b1              # double 7.6027279999999999
	.quad	0x402027e6b3fe9fae              # double 8.0779320000000006
	.quad	0x4013df5e41d4b6a6              # double 4.9681329999999999
	.quad	0x4023ffa2cecc814d              # double 9.9992889999999992
	.quad	0x40190acb85a4f00f              # double 6.2605420000000001
	.quad	0x402002c94b380cb7              # double 8.0054420000000004
	.quad	0x401a0fe5c91d14e4              # double 6.5155250000000002
	.quad	0x3fe083a96d4c33b5              # double 0.51607199999999998
	.quad	0x3fda0d62bf11f927              # double 0.40706700000000001
	.quad	0x40238a148ba83f4f              # double 9.7696880000000003
	.quad	0x401ed163baba7b91              # double 7.7044819999999996
	.quad	0x3ff809bc77143394              # double 1.5023770000000001
	.quad	0x3ff582de00d1b717              # double 1.3444499999999999
	.quad	0x40213192c8c50050              # double 8.5968230000000005
	.quad	0x401dc182a9930be1              # double 7.4389750000000001
	.quad	0x3ff51a2e7f6f4be8              # double 1.318892
	.quad	0x40223bc536d655e3              # double 9.1167390000000008
	.quad	0x402347c5479d4d83              # double 9.6401769999999995
	.quad	0x4022d7562174c4ce              # double 9.420579
	.quad	0x4015d369b9d7fd82              # double 5.4564579999999996
	.quad	0x4022b3cff64cf8d7              # double 9.3511959999999998
	.quad	0x401c16c11a11233e              # double 7.022221
	.quad	0x401a7644955b4678              # double 6.6154960000000003
	.quad	0x40235390ea9e6eeb              # double 9.6632149999999992
	.quad	0x401b173bc903ea70              # double 6.7726889999999997
	.quad	0x3fe19ea57214f052              # double 0.55061599999999999
	.quad	0x400b2a7ce0fc2eba              # double 3.3957459999999999
	.quad	0x401a6379fa97e133              # double 6.5971450000000003
	.quad	0x400462fd75e2046c              # double 2.5483349999999998
	.quad	0x4007d67a0f9096bc              # double 2.9797250000000002
	.quad	0x3fed08398a654930              # double 0.907254
	.quad	0x3ff7c894c447c30d              # double 1.48647
	.quad	0x3fdeaa21a719b4dd              # double 0.479134
	.quad	0x4023e6d82ba5a038              # double 9.9508679999999998
	.quad	0x3fe2f785729b280f              # double 0.59271499999999999
	.quad	0x4017e435ac8a3726              # double 5.972861
	.quad	0x401466317268d328              # double 5.0997979999999998
	.quad	0x401f5a337a80cf9e              # double 7.8380869999999998
	.quad	0x3ffec54690de0935              # double 1.923163
	.quad	0x402017ab53d640ea              # double 8.0462290000000003
	.quad	0x4021714f69ca9ef5              # double 8.7213089999999998
	.quad	0x4020e8e496ededaf              # double 8.4548690000000004
	.quad	0x3ffa70d1fa333765              # double 1.652544
	.quad	0x401ebde8b3b32053              # double 7.6854579999999996
	.quad	0x401fa0fa15db3398              # double 7.9072040000000001
	.quad	0x40111830e3cd9a52              # double 4.2736239999999999
	.quad	0x40199738e6d15ad1              # double 6.397678
	.quad	0x4013782b62845996              # double 4.8673529999999996
	.quad	0x40205f7fae3608d1              # double 8.1865210000000008
	.quad	0x4017f1f31f46ed24              # double 5.9862789999999997
	.quad	0x40187f138bcdfefc              # double 6.124098
	.quad	0x3ff69942917507ea              # double 1.412417
	.quad	0x4017b6aad1d041cc              # double 5.9283859999999997
	.quad	0x402066963dc486ad              # double 8.2003649999999997
	.quad	0x400c73647baa9b4a              # double 3.5563440000000002
	.quad	0x3ff0a47cb70ac3a8              # double 1.0401579999999999
	.quad	0x3ff03be121ee6751              # double 1.0146189999999999
	.quad	0x3ff08a5482385404              # double 1.0337719999999999
	.quad	0x3fea7be121ee6751              # double 0.82762199999999997
	.quad	0x402144f6598e10cf              # double 8.6346919999999994
	.quad	0x400e6575c0767d35              # double 3.7995410000000001
	.quad	0x40235c768dfbd6a6              # double 9.6805920000000008
	.quad	0x3ffbc0de4c51116b              # double 1.7345870000000001
	.quad	0x40201633269df97b              # double 8.0433590000000006
	.quad	0x40128cfb3311a544              # double 4.637677
	.quad	0x4020a68f08461f9f              # double 8.32531
	.quad	0x4018af8a0902de01              # double 6.1714250000000002
	.quad	0x400c654690de0935              # double 3.5494509999999999
	.quad	0x401c6ca8e2e2b8c7              # double 7.1061129999999997
	.quad	0x401335286b59146e              # double 4.8019119999999997
	.quad	0x4019f71f79420b3d              # double 6.4913309999999997
	.quad	0x4022dda63f9a49c3              # double 9.4329090000000004
	.quad	0x402013721d53cddd              # double 8.0379799999999992
	.quad	0x401a02328f9f44d4              # double 6.5021459999999998
	.quad	0x3ff5a503fb374363              # double 1.352787
	.quad	0x40119a3f034b0e1b              # double 4.4006309999999997
	.quad	0x4005ed6a9c560c7c              # double 2.740926
	.quad	0x3fe32e7924af0bf2              # double 0.59942300000000004
	.quad	0x401fe7f5e84f0953              # double 7.9765240000000003
	.quad	0x3ff499a847b24639              # double 1.287514
	.quad	0x400fd3636f3b213e              # double 3.9782169999999999
	.quad	0x40187e7a311e85fd              # double 6.123513
	.quad	0x4022e2272862f599              # double 9.4417050000000006
	.quad	0x4021779702e6644e              # double 8.7335740000000008
	.quad	0x40067e30014f8b59              # double 2.8116150000000002
	.quad	0x400f9fc32ebe596d              # double 3.9530090000000002
	.quad	0x40230f11b60ae968              # double 9.5294319999999999
	.quad	0x400ca75818c5c9a3              # double 3.5817109999999999
	.quad	0x401fdcfbfc6540cc              # double 7.9658049999999996
	.quad	0x3ffe0c0f01fb82c3              # double 1.8779440000000001
	.quad	0x40163a497fa5d28d              # double 5.556921
	.quad	0x40223ca6ca03c4b1              # double 9.1184600000000007
	.quad	0x402052c1f42bb667              # double 8.1616359999999997
	.quad	0x4023d9376d549731              # double 9.9242509999999999
	.quad	0x40189c03ff69014b              # double 6.1523589999999997
	.quad	0x4019293e5fb71fbc              # double 6.2902769999999997
	.quad	0x40211030e3cd9a52              # double 8.5316229999999997
	.quad	0x3fe66b15f88fc936              # double 0.70057199999999997
	.quad	0x401d17d6733ebbfd              # double 7.2732789999999996
	.quad	0x3ff1edc4c9c90c4e              # double 1.120549
	.quad	0x3ff3aec7c957cd46              # double 1.2301709999999999
	.quad	0x401854dc65c70436              # double 6.0828720000000001
	.quad	0x4008f1ec0b567558              # double 3.1181260000000002
	.quad	0x4023163b46fdeb53              # double 9.5434210000000003
	.quad	0x3fe8cdc443914f48              # double 0.77511799999999997
	.quad	0x40227ab324851a87              # double 9.2396480000000007
	.quad	0x4021066f9335d24a              # double 8.5125700000000002
	.quad	0x4013cc804102ff8f              # double 4.9497080000000002
	.quad	0x400bd389b52007dd              # double 3.4782899999999999
	.quad	0x40120007570c5650              # double 4.5000280000000004
	.quad	0x4011088a47ecfe9b              # double 4.2583399999999996
	.quad	0x3fe265061416377a              # double 0.57483200000000001
	.quad	0x401178cf7caa758a              # double 4.3679790000000001
	.quad	0x401f4d47bedb7282              # double 7.825469
	.quad	0x401a39d8c6d612c7              # double 6.5564910000000003
	.quad	0x401b0d698fe69271              # double 6.7630980000000003
	.quad	0x4021984f8f8a4c1f              # double 8.7974820000000005
	.quad	0x401f2075f6fd21ff              # double 7.7816999999999998
	.quad	0x401f01b9b66f9336              # double 7.7516850000000002
	.quad	0x401b176f2a5a469d              # double 6.7728849999999996
	.quad	0x3fd50e5a35d67ba2              # double 0.32900099999999999
	.quad	0x4022e3a4723aafff              # double 9.4446139999999996
	.quad	0x40238a7bf61aa3f0              # double 9.7704769999999996
	.quad	0x3ff72b5e529bae47              # double 1.448088
	.quad	0x401805675579af19              # double 6.0052770000000004
	.quad	0x401c5d9f4d37c137              # double 7.0914279999999996
	.quad	0x3ff57b2031ceaf25              # double 1.34256
	.quad	0x40208ed30f062d41              # double 8.2789540000000006
	.quad	0x402311f255f3519c              # double 9.5350520000000003
	.quad	0x4021e30dd82fd75e              # double 8.9434649999999998
	.quad	0x40174638c9752978              # double 5.8185760000000002
	.quad	0x40104ccab3edd8b6              # double 4.0749919999999999
	.quad	0x3ff2018611fd5886              # double 1.125372
	.quad	0x4005cc5c13fd0d06              # double 2.7247849999999998
	.quad	0x40022713f077ccc0              # double 2.2690809999999999
	.quad	0x4014f7ab324851a8              # double 5.2418639999999996
	.quad	0x3fdc38b8ae31d713              # double 0.44096200000000002
	.quad	0x401ea2bfdb4cc250              # double 7.6589349999999996
	.quad	0x4007d8d8a979e16d              # double 2.9808819999999998
	.quad	0x400231212513b5bf              # double 2.2739889999999998
	.quad	0x3feda778140dd3fe              # double 0.92669299999999999
	.quad	0x400554267839cd81              # double 2.6660889999999999
	.quad	0x400410f27bb2fec5              # double 2.5082749999999998
	.quad	0x402341d6cf850df1              # double 9.6285919999999993
	.quad	0x400291e646f15619              # double 2.32124
	.quad	0x40123cd5b6805a2d              # double 4.5594089999999996
	.quad	0x400b9951c5c5718f              # double 3.4498630000000001
	.quad	0x3fcd2e275ab7dc7b              # double 0.22797100000000001
	.quad	0x3ff373d188f42fe8              # double 1.215776
	.quad	0x40235d158b827fa2              # double 9.6818050000000007
	.quad	0x40144be6a337a80d              # double 5.074122
	.quad	0x4022aa209aaa3ad2              # double 9.3322800000000008
	.quad	0x40225e0ce0b912dc              # double 9.1836920000000006
	.quad	0x40192eee52589268              # double 6.2958309999999997
	.quad	0x3ff3a8b6d86ec17f              # double 1.2286900000000001
	.quad	0x400bb020c49ba5e3              # double 3.4609999999999999
	.quad	0x3fdfa72a7bd48cb5              # double 0.49457800000000002
	.quad	0x401a667381d7dbf5              # double 6.6000500000000004
	.quad	0x4023a8fa9c12f09e              # double 9.8300370000000008
	.quad	0x3fefa7136a400fbb              # double 0.98914500000000005
	.quad	0x400f7d8e86402081              # double 3.9363069999999998
	.quad	0x400e4014f8b588e3              # double 3.7812899999999998
	.quad	0x40052dcca70d1fa3              # double 2.6473629999999999
	.quad	0x400bb47f993d5348              # double 3.4631340000000002
	.quad	0x3ff7f4acaff6d331              # double 1.4972350000000001
	.quad	0x40228948fd9fd36f              # double 9.2681349999999991
	.quad	0x401bad1394317acc              # double 6.9190199999999997
	.quad	0x40001b7d84901d19              # double 2.013423
	.quad	0x4021216a26e54717              # double 8.5652629999999998
	.quad	0x400cb970b49e01de              # double 3.5905469999999999
	.quad	0x40096f6f08cc575c              # double 3.179411
	.quad	0x3fecbafd976ff3ae              # double 0.89782600000000001
	.quad	0x3ff7acb20fb224ab              # double 1.479662
	.quad	0x3ff1fc5154866a12              # double 1.124101
	.quad	0x4020a915df6555c5              # double 8.3302449999999997
	.quad	0x401d5e9899bf5947              # double 7.3423790000000002
	.quad	0x3fa104d551d68c69              # double 0.033239999999999999
	.quad	0x4007ab324851a869              # double 2.9585919999999999
	.quad	0x4020d67d1351159c              # double 8.4189229999999994
	.quad	0x4020737a5f41aef7              # double 8.225543
	.quad	0x401cc33764f11b61              # double 7.1906410000000003
	.quad	0x401e7be0ded288ce              # double 7.6209749999999996
	.quad	0x40145e9af5ba2be0              # double 5.0923879999999997
	.quad	0x401780999dcb5782              # double 5.8755860000000002
	.quad	0x401b21e5c0b99913              # double 6.7831029999999997
	.quad	0x3ff543f0bae89eba              # double 1.3290869999999999
	.quad	0x401beef240fa9c13              # double 6.9833460000000001
	.quad	0x3ff6b572de43ed96              # double 1.4192990000000001
	.quad	0x4014225b317efe0d              # double 5.0335510000000001
	.quad	0x401658958d9b5e96              # double 5.5865080000000003
	.quad	0x4017672ef0ae5365              # double 5.850765
	.quad	0x402126d3f9e7b80b              # double 8.5758360000000007
	.quad	0x4020543ac929aa1d              # double 8.1645109999999992
	.quad	0x3fd0e4abe6a337a8              # double 0.263957
	.quad	0x4008c07cc7d1bb49              # double 3.093988
	.quad	0x40237a10385c67e0              # double 9.7384050000000002
	.quad	0x402110999dcb5782              # double 8.5324220000000004
	.quad	0x3ff5a3476295208e              # double 1.352363
	.quad	0x3fe6794ea077036d              # double 0.70230800000000004
	.quad	0x3fd7a3161a1db878              # double 0.36932900000000002
	.quad	0x40219aa8650e7792              # double 8.8020659999999999
	.quad	0x400dd4d9c6b0531a              # double 3.7289310000000002
	.quad	0x400ab46c332f0175              # double 3.3380969999999999
	.quad	0x4022ee82d7b634db              # double 9.4658420000000003
	.quad	0x401f8f5dfeb8d823              # double 7.8900069999999997
	.quad	0x4022311eeaa6d267              # double 9.0959389999999996
	.quad	0x4011047fdc5931ca              # double 4.2543939999999996
	.quad	0x3ff06784a9478c87              # double 1.0252730000000001
	.quad	0x402171784ec636b1              # double 8.7216210000000007
	.quad	0x4013270fbeb9e493              # double 4.7881460000000002
	.quad	0x4009fe718a86d71f              # double 3.2492399999999999
	.quad	0x40231e17a02fb5d0              # double 9.5587739999999997
	.quad	0x40090c99f1ae2da5              # double 3.1311529999999999
	.quad	0x4014256798958d9b              # double 5.0365279999999997
	.quad	0x40218c54152b0a70              # double 8.7740790000000004
	.quad	0x401d607e9d94d0dd              # double 7.344233
	.quad	0x4013d0d73860999e              # double 4.9539460000000002
	.quad	0x4018d269595feda6              # double 6.2054799999999997
	.quad	0x4021ebfbdf090f73              # double 8.9609059999999996
	.quad	0x401b2c6fbd273d5c              # double 6.7933950000000003
	.quad	0x3fdd17a02fb5d031              # double 0.454567
	.quad	0x400b4d173fb7a5f4              # double 3.412642
	.quad	0x401978d5842b734b              # double 6.3680019999999997
	.quad	0x400b3a9eb2074ea9              # double 3.4036230000000001
	.quad	0x4005ed413122b7bb              # double 2.740847
	.quad	0x401f265cf67b1c00              # double 7.7874639999999999
	.quad	0x400c570ac3a860dd              # double 3.5425010000000001
	.quad	0x40053a88ace24bba              # double 2.653581
	.quad	0x4020c925dd095af3              # double 8.3928670000000007
	.quad	0x401088c75c4a83b2              # double 4.1335730000000002
	.quad	0x40189a1f080303c0              # double 6.1505089999999996
	.quad	0x40216fc8f32378ab              # double 8.7183299999999999
	.quad	0x40193d2ae8e1d649              # double 6.3097339999999997
	.quad	0x40135dc4007570c5              # double 4.8415679999999996
	.quad	0x4000035f80991794              # double 2.0016470000000002
	.quad	0x4013004bc27631b6              # double 4.7502890000000004
	.quad	0x40217682b6284599              # double 8.7314659999999993
	.quad	0x40236c8472c0e7bc              # double 9.7119479999999995
	.quad	0x40219f4adbc664d4              # double 8.8111180000000004
	.quad	0x40217cebfec13b9f              # double 8.7439879999999999
	.quad	0x401b12e05ccc89b1              # double 6.7684340000000001
	.quad	0x4005bfb9389b5200              # double 2.7186149999999998
	.quad	0x40212d109070fbec              # double 8.5880170000000006
	.quad	0x40219d9dba908a26              # double 8.8078439999999993
	.quad	0x402280a6b93ccd10              # double 9.2512720000000002
	.quad	0x4020c0e0a84be404              # double 8.3767139999999997
	.quad	0x401c4ae03b3e9a70              # double 7.0731210000000004
	.quad	0x401185421c044285              # double 4.3801350000000001
	.quad	0x400e91b2e59af9ec              # double 3.821142
	.quad	0x3fd25add9c27e953              # double 0.286796
	.quad	0x402341d40ee06d94              # double 9.6285710000000008
	.quad	0x401e03009b30728f              # double 7.5029320000000003
	.quad	0x3ffe0bbe4473cd57              # double 1.877867
	.quad	0x3fd90e94ee392e1f              # double 0.391515
	.quad	0x4000ed940789613d              # double 2.1160049999999999
	.quad	0x3ffb05b291b823c8              # double 1.6888909999999999
	.quad	0x402070431bde82d8              # double 8.2192620000000005
	.quad	0x40224a2ff08893b8              # double 9.1448970000000002
	.quad	0x4020ade481f53826              # double 8.3396340000000002
	.quad	0x3fa33c81908e581d              # double 0.037571
	.quad	0x4021acc22ee4191a              # double 8.8374190000000006
	.quad	0x3ff1867f0aa21a72              # double 1.0953360000000001
	.quad	0x40217388ca3e7d13              # double 8.7256529999999994
	.quad	0x4019886cebbba55d              # double 6.3832279999999999
	.quad	0x4014b37d1fe64f55              # double 5.1752820000000002
	.quad	0x4022052178f68be3              # double 9.0100210000000001
	.quad	0x401c3a8e71476af9              # double 7.0571840000000003
	.quad	0x401c39713ad5bee4              # double 7.0560960000000001
	.quad	0x3ff7dcfaacd9e83e              # double 1.4914499999999999
	.quad	0x400ebcf3dc054ef4              # double 3.8422619999999998
	.quad	0x400fad21bc126a66              # double 3.9595370000000001
	.quad	0x4018e0ae10492360              # double 6.2194140000000004
	.quad	0x3ff45c1e7967caea              # double 1.2724899999999999
	.quad	0x4023638887229e90              # double 9.6944009999999992
	.quad	0x401e2c508b32ce89              # double 7.5432759999999996
	.quad	0x4017bce63a5c1c61              # double 5.9344720000000004
	.quad	0x401bcec56d5cfaad              # double 6.9519250000000001
	.quad	0x4021e2539756c93a              # double 8.9420439999999992
	.quad	0x401811b089a02752              # double 6.0172749999999997
	.quad	0x4014b9b23dd54da5              # double 5.1813440000000002
	.quad	0x3ffc4140dd3fe197              # double 1.7659309999999999
	.quad	0x4011fa2d72ffd1dd              # double 4.4943140000000001
	.quad	0x40221e2845996745              # double 9.0589010000000005
	.quad	0x3fd01f79420b3d4b              # double 0.25192100000000001
	.quad	0x400bade8f6cefed6              # double 3.4599169999999999
	.quad	0x400d9e9d0e991ff7              # double 3.702448
	.quad	0x40202fe7e1fc08fa              # double 8.0935659999999991
	.quad	0x40134e3ef284167b              # double 4.8264120000000004
	.quad	0x4023fe40420f6f09              # double 9.9965840000000003
	.quad	0x402389314445aa2e              # double 9.7679539999999996
	.quad	0x4018ba658c4bd33d              # double 6.1820279999999999
	.quad	0x4014a93250b5243a              # double 5.1652310000000003
	.quad	0x402062dbe7f2c301              # double 8.1930840000000007
	.quad	0x40109b46bacf7447              # double 4.151637
	.quad	0x400bfbefd00713f0              # double 3.4980159999999998
	.quad	0x400041cde5d18091              # double 2.0321310000000001
	.quad	0x4018aa71151611ba              # double 6.1664469999999998
	.quad	0x4012a3de6149c6f3              # double 4.6600279999999996
	.quad	0x4020308dd1e53a82              # double 8.0948320000000002
	.quad	0x40210c78854cdb7b              # double 8.5243570000000002
	.quad	0x3fd843ed959a3098              # double 0.37914599999999998
	.quad	0x40083c5692b3cc4b              # double 3.0294620000000001
	.quad	0x3ff0adf612407464              # double 1.0424709999999999
	.quad	0x40206b076c050bd8              # double 8.2090409999999991
	.quad	0x4014c7c914b167ec              # double 5.1951029999999996
	.quad	0x4020c28198f1d3ed              # double 8.3798949999999994
	.quad	0x40160ef06b37867f              # double 5.514589
	.quad	0x402234202d9cf13d              # double 9.1018080000000001
	.quad	0x4022165753a3ec03              # double 9.0436350000000001
	.quad	0x3ffdefaf85942917              # double 1.8710169999999999
	.quad	0x4022bf5360d02470              # double 9.3736829999999998
	.quad	0x4021e4d0fe8ab4fa              # double 8.9469069999999995
	.quad	0x40209a8b4bf8fcd6              # double 8.3018439999999991
	.quad	0x40006205ff1d81f1              # double 2.047863
	.quad	0x4014bb239a38fbca              # double 5.1827529999999999
	.quad	0x3ffeb70153bd1676              # double 1.9196789999999999
	.quad	0x401c457a355043e5              # double 7.0678489999999998
	.quad	0x4019563b256ffc11              # double 6.3342099999999997
	.quad	0x4022fbfd50225743              # double 9.4921670000000002
	.quad	0x400f2dad31fcd24e              # double 3.897303
	.quad	0x401662c625e99e95              # double 5.5964590000000003
	.quad	0x4012e1e18efbb0e6              # double 4.7205870000000001
	.quad	0x4020707e9d94d0dd              # double 8.219716
	.quad	0x3ff724fa8b4bf8fd              # double 1.446528
	.quad	0x3fec7c9363f572de              # double 0.89020699999999997
	.quad	0x4009238e29f9ce8e              # double 3.1423610000000002
	.quad	0x4010d9656eefa1e4              # double 4.2123010000000001
	.quad	0x4016d45cbbc2b94e              # double 5.7073850000000004
	.quad	0x401ea7dcbddb9842              # double 7.6639280000000003
	.quad	0x40188da37ef5a965              # double 6.1383190000000001
	.quad	0x3fd87f62b6ae7d56              # double 0.38277499999999998
	.quad	0x4016e3e35c5b4aa9              # double 5.7225469999999996
	.quad	0x40063fab96f21f6d              # double 2.7810890000000001
	.quad	0x40183ef1fddebd90              # double 6.0614699999999999
	.quad	0x40117c2f837b4a23              # double 4.3712749999999998
	.quad	0x40102317efe0ce0c              # double 4.0342710000000004
	.quad	0x401762ddbdb5d895              # double 5.8465490000000004
	.quad	0x3fe32f46aa087ca6              # double 0.59952099999999997
	.quad	0x40196e21d96e9bbf              # double 6.357551
	.quad	0x3ff7ae264e48626f              # double 1.4800169999999999
	.quad	0x4000dd1aa821f299              # double 2.107961
	.quad	0x400f441fea8112ba              # double 3.908264
	.quad	0x3fb3fb8b26394fad              # double 0.078057000000000001
	.quad	0x4012e62888b545c8              # double 4.7247640000000004
	.quad	0x4012f677b395c422              # double 4.740691
	.quad	0x3ff73302f72b4528              # double 1.449954
	.quad	0x3fe4eff7dfa00e28              # double 0.65429300000000001
	.quad	0x402107f4128bf3bf              # double 8.5155340000000006
	.quad	0x3fe652502eec7c95              # double 0.69754799999999995
	.quad	0x4021d26aa8eb4635              # double 8.9109700000000007
	.quad	0x3fe46f5232d2bb23              # double 0.63858899999999996
	.quad	0x4016fcb1465e8922              # double 5.7467699999999997
	.quad	0x4015ef3ba775fb2f              # double 5.4836260000000001
	.quad	0x4019628bf3bea91e              # double 6.3462370000000004
	.quad	0x400390d844d013a9              # double 2.4457249999999999
	.quad	0x401c9ef240fa9c13              # double 7.1552210000000001
	.quad	0x4021cf9ca5bd944b              # double 8.9054920000000006
	.quad	0x3fe78b2e9ccb7d41              # double 0.73573999999999995
	.quad	0x4003c5ba6efc371e              # double 2.4715470000000002
	.quad	0x401d94dca8e2e2b9              # double 7.3953730000000002
	.quad	0x401728e820e62995              # double 5.7899479999999999
	.quad	0x40233e8e1d6494d5              # double 9.6221779999999998
	.quad	0x4004156d19dece57              # double 2.510462
	.quad	0x40144c6822ff0889              # double 5.0746159999999998
	.quad	0x402010c6b484d76b              # double 8.0327660000000005
	.quad	0x4020c1f3a57eaa2a              # double 8.3788119999999999
	.quad	0x400e85974e65bea1              # double 3.8152300000000001
	.quad	0x40206337c99ae925              # double 8.1937850000000001
	.quad	0x40224d590c0ad03e              # double 9.1510700000000007
	.quad	0x401a07121ab4b72c              # double 6.5069049999999997
	.quad	0x4020aba5e353f7cf              # double 8.3352500000000003
	.quad	0x4017226809d49518              # double 5.7835999999999999
	.quad	0x4018acd6c2efd439              # double 6.1687880000000002
	.quad	0x401251fb3fa6defc              # double 4.5800599999999996
	.quad	0x4001acbaf965b20c              # double 2.2093410000000002
	.quad	0x400c7d616f86a099              # double 3.5612210000000002
	.quad	0x3ffec647778dd617              # double 1.923408
	.quad	0x40141b1b79d909f2              # double 5.0264720000000001
	.quad	0x401a97325918a00a              # double 6.647653
	.quad	0x4019e73c0c1fc8f3              # double 6.4758149999999999
	.quad	0x4017d7f7be121ee6              # double 5.9609059999999996
	.quad	0x400d7feeb2d0a244              # double 3.6874669999999998
	.quad	0x40057f86e3b46fdf              # double 2.6872690000000001
	.quad	0x3ff9bac929aa1d75              # double 1.6081019999999999
	.quad	0x40217593e5fb71fc              # double 8.7296440000000004
	.quad	0x401badeebb341e15              # double 6.9198560000000002
	.quad	0x401fd2efd438d1d9              # double 7.9559930000000003
	.quad	0x4023edebfa8f7db7              # double 9.9646910000000001
	.quad	0x401d2f47735c182f              # double 7.2961710000000002
	.quad	0x40128a9691a75cd1              # double 4.6353400000000002
	.quad	0x40156a48f96e1587              # double 5.3537939999999997
	.quad	0x4010986d2ed783e0              # double 4.148854
	.quad	0x4007d5aaf78feef6              # double 2.97933
	.quad	0x4017e354c122749f              # double 5.972003
	.quad	0x3fe9486ad2dcb146              # double 0.79008999999999996
	.quad	0x40215944028e4fb9              # double 8.6743469999999991
	.quad	0x400017518b0d0edc              # double 2.0113859999999999
	.quad	0x3fffbd9a95421c04              # double 1.9837899999999999
	.quad	0x3ff2c91c087442c8              # double 1.174099
	.quad	0x401a056473471f79              # double 6.5052659999999998
	.quad	0x400df3882278d0cc              # double 3.7439119999999999
	.quad	0x4022221c25d07421              # double 9.0666209999999996
	.quad	0x400b45b8dc55000d              # double 3.4090440000000002
	.quad	0x401e9e62dc6e2a80              # double 7.654674
	.quad	0x3fbdd712a0ec7432              # double 0.116563
	.quad	0x40117f12c27a6373              # double 4.3740949999999996
	.quad	0x4007516ebd4cfd09              # double 2.9147620000000001
	.quad	0x401b9a3b9ae0c176              # double 6.9006179999999997
	.quad	0x401f3e50c5eb313c              # double 7.8108550000000001
	.quad	0x400c2c319c5a3e3a              # double 3.521579
	.quad	0x3fd9ba9d1f601798              # double 0.40201500000000001
	.quad	0x401b5f0ed3d859c9              # double 6.8428300000000002
	.quad	0x401d220b3d4ae42a              # double 7.2832460000000001
	.quad	0x4020679591cd1c7e              # double 8.2023130000000002
	.quad	0x400c9da597d49d7c              # double 3.5769760000000002
	.quad	0x4023724d099e0e73              # double 9.7232439999999993
	.quad	0x401aa857f3061c7a              # double 6.6643980000000003
	.quad	0x4016711f926c7eae              # double 5.6104719999999997
	.quad	0x4020adf99c38b04b              # double 8.3397950000000005
	.quad	0x400b008d08919ef9              # double 3.3752689999999999
	.quad	0x401cfaf3a14cec42              # double 7.2450700000000001
	.quad	0x400492a497fa5d29              # double 2.5716030000000001
	.quad	0x4017ce5aff2a172b              # double 5.9515190000000002
	.quad	0x40237b1c0010c6f8              # double 9.7404480000000006
	.quad	0x401e439c0ebedfa4              # double 7.5660249999999998
	.quad	0x402383269df97aab              # double 9.7561540000000004
	.quad	0x401ebf1800a7c5ac              # double 7.6866149999999998
	.quad	0x3fe61e492bc2fc69              # double 0.69119699999999995
	.quad	0x400c8af1455219a8              # double 3.5678429999999999
	.quad	0x3ff2585058dde7a7              # double 1.1465609999999999
	.quad	0x4021abc46d82ba5a              # double 8.835483
	.quad	0x3ff1ea9c560c7c0f              # double 1.1197779999999999
	.quad	0x4015f17fc7607c42              # double 5.4858390000000004
	.quad	0x4023b2975afaf859              # double 9.8488109999999995
	.quad	0x401f3777d0f1f57b              # double 7.8041679999999997
	.quad	0x4009bf24d8fd5cb8              # double 3.2183320000000002
	.quad	0x40200373083558a7              # double 8.0067369999999993
	.quad	0x40099d5f56a7ac82              # double 3.2018420000000001
	.quad	0x4021f71348b22079              # double 8.9825689999999998
	.quad	0x40125f2e8c0485a1              # double 4.5929510000000002
	.quad	0x40017451fc4c1659              # double 2.181797
	.quad	0x4022c72606fac604              # double 9.3889619999999993
	.quad	0x401cd0b955f7835a              # double 7.2038320000000002
	.quad	0x4016eaa326e11559              # double 5.7291379999999998
	.quad	0x400b7bf61aa3f035              # double 3.4355280000000001
	.quad	0x400b027fa1a0cf18              # double 3.37622
	.quad	0x401211a500d5e8d5              # double 4.5172309999999998
	.quad	0x4022031b584b1ab1              # double 9.0060680000000009
	.quad	0x3fef641b328b6d87              # double 0.98097
	.quad	0x4006dca18bd66278              # double 2.8577300000000001
	.quad	0x3fd42f837b4a233a              # double 0.31540000000000001
	.quad	0x401cf1f4f50a02b8              # double 7.2362859999999998
	.quad	0x40100545846e8f2a              # double 4.0051480000000002
	.quad	0x4022a82ba5a03819              # double 9.3284579999999995
	.quad	0x400e2b81f969e3c9              # double 3.7712439999999998
	.quad	0x401013ae685db76b              # double 4.0192199999999998
	.quad	0x4023d8323358f2e0              # double 9.9222579999999994
	.quad	0x4021dc05f6ba0621              # double 8.9297330000000006
	.quad	0x4009e70196d8f4f9              # double 3.2377959999999999
	.quad	0x40161aee2003ab86              # double 5.5262989999999999
	.quad	0x4020fef544bb1af4              # double 8.4979650000000006
	.quad	0x3ffcd6d19dece571              # double 1.802446
	.quad	0x3ff166a875d56f33              # double 1.0875630000000001
	.quad	0x40239f6f2a5a469d              # double 9.8113949999999992
	.quad	0x401eb333fc86cebc              # double 7.6750030000000002
	.quad	0x4016ded3953dea46              # double 5.7176039999999997
	.quad	0x401bcdf505d0fa59              # double 6.95113
	.quad	0x4022af9cc74b838c              # double 9.3429929999999998
	.quad	0x401ffc1a8ac5c140              # double 7.9961950000000002
	.quad	0x4021e69b9d7fd827              # double 8.9504059999999992
	.quad	0x401a2f5ec80c73ac              # double 6.5462600000000002
	.quad	0x401fe487fcb923a3              # double 7.9731750000000003
	.quad	0x40208b5daad60200              # double 8.2721990000000005
	.quad	0x40234728848387df              # double 9.6389809999999993
	.quad	0x4023ea5e13b18dac              # double 9.9577489999999997
	.quad	0x401849420b3d4ae4              # double 6.0715409999999999
	.quad	0x3ff9672a7bd48cb5              # double 1.5876870000000001
	.quad	0x40185e492bc2fc69              # double 6.0920759999999996
	.quad	0x401020c0ad03d9a9              # double 4.0319849999999997
	.quad	0x401bb7f1f9acffa8              # double 6.9296340000000001
	.quad	0x4021c2a94ff0025c              # double 8.880198
	.quad	0x401b5e0653005815              # double 6.8418210000000004
	.quad	0x4020e24e160d887f              # double 8.4420020000000005
	.quad	0x401ab52ac753e708              # double 6.6769210000000001
	.quad	0x40017f623076c051              # double 2.1871990000000001
	.quad	0x400189289dadfb50              # double 2.1919719999999998
	.quad	0x40182b6c7a7c9de0              # double 6.0424059999999997
	.quad	0x401c769984a0e411              # double 7.1158200000000003
	.quad	0x401586dfc5cdd50b              # double 5.3817130000000004
	.quad	0x4013b3a71151611c              # double 4.9254420000000003
	.quad	0x401ecfd0d0678c00              # double 7.7029449999999997
	.quad	0x3ff21842b734b513              # double 1.1309229999999999
	.quad	0x4006aab474107315              # double 2.8333520000000001
	.quad	0x3ff7ed03d9a95422              # double 1.4953650000000001
	.quad	0x4000c3b2dd377e1c              # double 2.0955560000000002
	.quad	0x3ff3bda836eb4e98              # double 1.233803
	.quad	0x3ff3202fb5d03105              # double 1.1953579999999999
	.quad	0x3ff330ac3a860dcc              # double 1.1993830000000001
	.quad	0x3ffb3aa79bbadc0a              # double 1.7018200000000001
	.quad	0x40001f7164c729f6              # double 2.0153530000000002
	.quad	0x401f6fa3fcc9ea9a              # double 7.8590239999999998
	.quad	0x40151e73a365cb36              # double 5.279738
	.quad	0x401bbd0b30b5aa71              # double 6.9346129999999997
	.quad	0x401de6744b2b777d              # double 7.4750529999999999
	.quad	0x401d261ed5ae1cde              # double 7.2872269999999997
	.quad	0x3fc4c8f75536933a              # double 0.162383
	.quad	0x402068205ff1d81f              # double 8.2033719999999999
	.quad	0x401bad0635a426bb              # double 6.9189689999999997
	.quad	0x40183ea704bc2763              # double 6.0611839999999999
	.quad	0x4020f8140dd3fe19              # double 8.4845279999999992
	.quad	0x401d92fb19e731d3              # double 7.3935360000000001
	.quad	0x3ff0967a95c853c1              # double 1.0367379999999999
	.quad	0x3fd8f5c28f5c28f6              # double 0.39000000000000001
	.quad	0x4017aff1950331e4              # double 5.9218200000000003
	.quad	0x401f244d87724fa9              # double 7.7854520000000002
	.quad	0x400ee410b630a915              # double 3.8613599999999999
	.quad	0x401c877fae3608d1              # double 7.1323230000000004
	.quad	0x4022c67125dd095b              # double 9.387582
	.quad	0x40105ee73e681a9c              # double 4.0926790000000004
	.quad	0x4011506ee30caa32              # double 4.3285479999999996
	.quad	0x3ffde8b6d86ec17f              # double 1.8693150000000001
	.quad	0x3ffaf7c5692b3cc5              # double 1.6854910000000001
	.quad	0x401deb40f66a5508              # double 7.4797399999999996
	.quad	0x4015b8869c66d374              # double 5.4302010000000003
	.quad	0x40090ff5c6c11a11              # double 3.1327929999999999
	.quad	0x4023e347a5b0ff11              # double 9.9439060000000001
	.quad	0x401beca1059ea572              # double 6.9810829999999999
	.quad	0x40016be1650a45d4              # double 2.1776759999999999
	.quad	0x4022e8c7e28240b8              # double 9.4546500000000008
	.quad	0x4023d198288051ca              # double 9.9093640000000001
	.quad	0x400a11e321a2e7f7              # double 3.258734
	.quad	0x4017f2f9ca5bd945              # double 5.9872810000000003
	.quad	0x4016956b00ffda40              # double 5.6459159999999997
	.quad	0x401d372a7bd48cb5              # double 7.3038730000000003
	.quad	0x400da736049ecb32              # double 3.7066460000000001
	.quad	0x4004b7b84db9c737              # double 2.5897070000000002
	.quad	0x40069988d2a1f8e4              # double 2.8249680000000001
	.quad	0x4001392f2b66b617              # double 2.1529219999999998
	.quad	0x4022efbf1e8e6080              # double 9.4682549999999992
	.quad	0x4000daeb3dd11be7              # double 2.106894
	.quad	0x40109bd5dc400757              # double 4.152183
	.quad	0x4001c4e7253da72a              # double 2.2211439999999998
	.quad	0x4013245cfede97d0              # double 4.7855109999999996
	.quad	0x402343faf42784a9              # double 9.6327739999999995
	.quad	0x3fd90c282c6ef3d4              # double 0.39136700000000002
	.quad	0x3fba73e681a9b8cc              # double 0.10333100000000001
	.quad	0x401be522ea0fd3b3              # double 6.9737660000000004
	.quad	0x40043ace67d77fae              # double 2.5287139999999999
	.quad	0x4020e50d6b228dca              # double 8.4473680000000009
	.quad	0x3fe7800431bde82d              # double 0.73437699999999995
	.quad	0x40097c91d14e3bcd              # double 3.1858249999999999
	.quad	0x40175563ed0f6274              # double 5.8333890000000004
	.quad	0x402234896dd26b72              # double 9.1026109999999996
	.quad	0x401e633fc86cebbc              # double 7.5969230000000003
	.quad	0x40219c6ac215b9a6              # double 8.8055020000000006
	.quad	0x40079b5bf6a0dbad              # double 2.9508589999999999
	.quad	0x3ff87b320535c9e6              # double 1.5300769999999999
	.quad	0x40172ed352220bc4              # double 5.7957280000000004
	.quad	0x402381b36bd2b6f2              # double 9.7533220000000007
	.quad	0x4014883a109d0636              # double 5.1330340000000003
	.quad	0x4023838c75c4a83b              # double 9.7569309999999997
	.quad	0x3fff50d6b228dc98              # double 1.957236
	.quad	0x3ff91ed8d36b4c7f              # double 1.570031
	.quad	0x401a6c981beb1811              # double 6.6060489999999996
	.quad	0x40197e0fc2eba27b              # double 6.3731070000000001
	.quad	0x401e9e41d4b6a61a              # double 7.6545480000000001
	.quad	0x40211ac42e9899bf              # double 8.5522779999999994
	.quad	0x401f6c725c3dee78              # double 7.8559049999999999
	.quad	0x3fffc20e6299524c              # double 1.984877
	.quad	0x3feb83621fafc8b0              # double 0.859788
	.quad	0x3fe8660c38f36695              # double 0.76245700000000005
	.quad	0x40221a1c25d07421              # double 9.0509959999999996
	.quad	0x4004db17ce52deca              # double 2.6069789999999999
	.quad	0x4007ca0663c74fb5              # double 2.9736449999999999
	.quad	0x400f080064a9cdc4              # double 3.8789069999999999
	.quad	0x4002a775fb2edfe7              # double 2.3317679999999998
	.quad	0x4022430dd82fd75e              # double 9.1309649999999998
	.quad	0x4023cc199fe43676              # double 9.8986330000000002
	.quad	0x401486a550870111              # double 5.1314900000000003
	.quad	0x4023700f55de58e6              # double 9.7188669999999995
	.quad	0x4013ff850df15a4b              # double 4.9995310000000002
	.quad	0x40228247ecfe9b7c              # double 9.254455
	.quad	0x401ea005c4651f3f              # double 7.6562720000000004
	.quad	0x40079f43419e3001              # double 2.9527649999999999
	.quad	0x40239b16a055757d              # double 9.8029069999999993
	.quad	0x4013926e978d4fdf              # double 4.8929999999999998
	.quad	0x402177f66e86c658              # double 8.7343019999999996
	.quad	0x401bba261bf37b8d              # double 6.9317859999999998
	.quad	0x4022c7d50225742e              # double 9.3902970000000003
	.quad	0x40066f9a06a6e32e              # double 2.8044929999999999
	.quad	0x4022b90abb44e50c              # double 9.3614099999999993
	.quad	0x40235b69fcf3dc05              # double 9.6785429999999994
	.quad	0x400833b320535c9e              # double 3.0252439999999998
	.quad	0x3ff7300de4c51117              # double 1.4492320000000001
	.quad	0x4014266a55087011              # double 5.037515
	.quad	0x4001350a88effe2a              # double 2.1508989999999999
	.quad	0x4023ddfc3b4f6167              # double 9.9335649999999997
	.quad	0x401550d4562e09ff              # double 5.3289350000000004
	.quad	0x40219745bf26f1dc              # double 8.7954539999999994
	.quad	0x3ff5b06b37867f0b              # double 1.3555710000000001
	.quad	0x4008f46c332f0175              # double 3.1193469999999999
	.quad	0x3fe1403361565c2d              # double 0.53908699999999998
	.quad	0x4008f3a14cec41dd              # double 3.11896
	.quad	0x401d3e132b55ef20              # double 7.3106200000000001
	.quad	0x4016968a936c58ef              # double 5.6470130000000003
	.quad	0x3fd6ac647778dd61              # double 0.35427199999999998
	.quad	0x400d75fe542e557e              # double 3.6826140000000001
	.quad	0x3fcdb2031ceaf252              # double 0.23199500000000001
	.quad	0x3fe0f84a9478c869              # double 0.53030900000000003
	.quad	0x400eca23bff8a8f4              # double 3.8487010000000001
	.quad	0x401f3ccc89b0ee4a              # double 7.809374
	.quad	0x401d2d4cb9ecf638              # double 7.294238
	.quad	0x400f5112fd32c626              # double 3.914587
	.quad	0x4010b5fd47bedb73              # double 4.1777240000000004
	.quad	0x400576aceaaf35e3              # double 2.682947
	.quad	0x4018747064ece9a3              # double 6.1137100000000002
	.quad	0x401bd82adc4c9c91              # double 6.9611010000000002
	.quad	0x4012fff69014b59a              # double 4.7499640000000003
	.quad	0x3fe603dbc23315d7              # double 0.687971
	.quad	0x4020dc9235f80991              # double 8.4308029999999992
	.quad	0x401dd0713f077ccc              # double 7.453557
	.quad	0x400c458d5842b735              # double 3.5339610000000001
	.quad	0x40203407ee0b0af6              # double 8.101623
	.quad	0x3fed55c0fcb4f1e5              # double 0.91671800000000003
	.quad	0x3ff9410a569b1748              # double 1.578379
	.quad	0x4021d00000000000              # double 8.90625
	.quad	0x3ff0c158fb43d89d              # double 1.047204
	.quad	0x4016af0307f23cc9              # double 5.6709100000000001
	.quad	0x401a3ddb9841aac5              # double 6.5604079999999998
	.quad	0x40114bebe1650a46              # double 4.3241420000000002
	.quad	0x4017f77a7008a698              # double 5.9916780000000003
	.quad	0x3ff1e779207d4e09              # double 1.1190119999999999
	.quad	0x40153757928e0c9e              # double 5.3040450000000003
	.quad	0x3fc368ad68837718              # double 0.15163199999999999
	.quad	0x3fec4426351deefe              # double 0.88331899999999997
	.quad	0x401b9ffda4052d66              # double 6.9062409999999996
	.quad	0x3fe0f8e1932d6ece              # double 0.53038099999999999
	.quad	0x3ffb77e6f71a7e31              # double 1.7167730000000001
	.quad	0x401968e219652bd4              # double 6.3524250000000002
	.quad	0x401311c68ec52a41              # double 4.7673589999999999
	.quad	0x4020457c0b135979              # double 8.1357119999999998
	.quad	0x401d0025bfad2999              # double 7.2501439999999997
	.quad	0x3feb924f227d028a              # double 0.86160999999999999
	.quad	0x4020617bd8be7297              # double 8.1903980000000001
	.quad	0x3fbd8383ad9f0a1c              # double 0.115288
	.quad	0x40128f7d30ad46f6              # double 4.6401260000000004
	.quad	0x400da8d434a01abd              # double 3.707436
	.quad	0x3ff1dab3aabcd78c              # double 1.1158939999999999
	.quad	0x3fd7409a24031487              # double 0.36331799999999997
	.quad	0x40228cc09c3ce209              # double 9.2749070000000007
	.quad	0x401077cdcca70d20              # double 4.1169960000000003
	.quad	0x3fe887d0aed99cbf              # double 0.76657900000000001
	.quad	0x40166c0ca600b029              # double 5.6055169999999999
	.quad	0x40233c7dc37a3db4              # double 9.6181470000000004
	.quad	0x402274b4289118c2              # double 9.2279370000000007
	.quad	0x3ff239af1886df83              # double 1.1390830000000001
	.quad	0x3fefeadb402d16b9              # double 0.99741899999999994
	.quad	0x400b3a27ae9ab29e              # double 3.4033959999999999
	.quad	0x40236c7fdc5931ca              # double 9.7119129999999991
	.quad	0x4021b167ec7863bf              # double 8.8464960000000001
	.quad	0x400273671ac14c66              # double 2.306349
	.quad	0x401dadd00f776c48              # double 7.4197389999999998
	.quad	0x4012f82235b4edb3              # double 4.742318
	.quad	0x40104dbc23315d70              # double 4.0759129999999999
	.quad	0x401c682c2bd7f51f              # double 7.101731
	.quad	0x4020e394317acc4f              # double 8.4444900000000001
	.quad	0x4005d9c9d5a187a5              # double 2.7313420000000002
	.quad	0x400da7d912556d1a              # double 3.7069570000000001
	.quad	0x4006241248d7e026              # double 2.7676129999999999
	.quad	0x4022bf7be121ee67              # double 9.3739919999999994
	.quad	0x401e1586876e1deb              # double 7.5210210000000001
	.quad	0x401baef954eb13e0              # double 6.9208730000000003
	.quad	0x3ffebcc39ffd60e9              # double 1.9210849999999999
	.quad	0x4023204167a95c85              # double 9.5629989999999995
	.quad	0x3fea1511dffc547a              # double 0.81507200000000002
	.quad	0x402047585be1a826              # double 8.1393459999999997
	.quad	0x400a613ec460ed81              # double 3.2974830000000002
	.quad	0x4006c3a42f1ed17c              # double 2.8455279999999998
	.quad	0x4012669ec2ce464a              # double 4.6002150000000004
	.quad	0x3f95ea67e846a5d7              # double 0.021402000000000001
	.quad	0x4021cc0bfe3b03e2              # double 8.8985289999999999
	.quad	0x401c732441fea811              # double 7.1124429999999998
	.quad	0x40109640a6b93ccd              # double 4.1467309999999999
	.quad	0x4010299c38b04ab6              # double 4.040635
	.quad	0x4019fd9cae21101b              # double 6.497668
	.quad	0x402296f62f9ca5be              # double 9.2948470000000007
	.quad	0x402104b5fe542e55              # double 8.5092009999999991
	.quad	0x401f4b03e20ccff2              # double 7.8232569999999999
	.quad	0x3f8d701d9f4d37c1              # double 0.014374
	.quad	0x402171886df82b1f              # double 8.7217439999999993
	.quad	0x4020d9e53a81dc0e              # double 8.4255770000000005
	.quad	0x40061f3ade225fa6              # double 2.7652489999999998
	.quad	0x4020b629d8409e56              # double 8.3557880000000004
	.quad	0x4019ffe2a3cea6c2              # double 6.4998880000000003
	.quad	0x401bb69595feda66              # double 6.9283049999999999
	.quad	0x400f8fa7221858bc              # double 3.9451429999999998
	.quad	0x40106e7fb267c6b9              # double 4.1079090000000003
	.quad	0x400ba4ed6fda836f              # double 3.4555310000000001
	.quad	0x400c894141e9af5c              # double 3.5670190000000002
	.quad	0x3ff4b1fddebd9019              # double 1.293455
	.quad	0x401b39707182235b              # double 6.8060929999999997
	.quad	0x40085c43b2dd377e              # double 3.045051
	.quad	0x4019fc1a47a9e2bd              # double 6.496194
	.quad	0x400288eabffcdab2              # double 2.3168540000000002
	.quad	0x4019913c68661ae7              # double 6.391832
	.quad	0x401ecb2fec56d5d0              # double 7.6984250000000003
	.quad	0x3ff2304ab606b7aa              # double 1.13679
	.quad	0x4018c33482be8bc1              # double 6.1906299999999996
	.quad	0x4019d7f06705c897              # double 6.4608780000000001
	.quad	0x4016801c0ca600b0              # double 5.6251069999999999
	.quad	0x3ff6fbb62413db7f              # double 1.436453
	.quad	0x400f56dd26b723ee              # double 3.917414
	.quad	0x4021011eeaa6d267              # double 8.5021889999999996
	.quad	0x4015fe49f51697f2              # double 5.498329
	.quad	0x400d3d53cddd6e05              # double 3.6549450000000001
	.quad	0x4013699ae924f228              # double 4.8531300000000002
	.quad	0x400dea6eb91b3f21              # double 3.7394690000000002
	.quad	0x40231b0f6ad70e6f              # double 9.5528519999999996
	.quad	0x40055078d92fb19e              # double 2.6642929999999998
	.quad	0x4023dc070329802c              # double 9.9297409999999999
	.quad	0x40218a1dda059a74              # double 8.7697590000000005
	.quad	0x4012c8fde2ef4e01              # double 4.6962809999999999
	.quad	0x40142577531db446              # double 5.0365880000000001
	.quad	0x401042424a276b7f              # double 4.0647060000000002
	.quad	0x40153890d5a5b963              # double 5.3052400000000004
	.quad	0x402241afe1da7b0b              # double 9.1282949999999996
	.quad	0x4023bc10b630a915              # double 9.8673149999999996
	.quad	0x3fe6a9973d9ec700              # double 0.708202
	.quad	0x4015dd48882f0e0b              # double 5.4660970000000004
	.quad	0x401fdaf6837f7be1              # double 7.9638309999999998
	.quad	0x401c5b3bb83cf2d0              # double 7.0890950000000004
	.quad	0x3fe60897e996312f              # double 0.68854899999999997
	.quad	0x3fb922856605ee57              # double 0.098183000000000006
	.quad	0x402165e2478854ce              # double 8.6989920000000005
	.quad	0x401eaebbba55d1c4              # double 7.6706380000000003
	.quad	0x4017eb28d8665e03              # double 5.9796480000000001
	.quad	0x401dea1b5c7cd899              # double 7.4786200000000003
	.quad	0x40229969c23b7953              # double 9.2996350000000003
	.quad	0x3fdf7cfe58601366              # double 0.492004
	.quad	0x4015180b242070b9              # double 5.2734800000000002
	.quad	0x401a7a9c99285a92              # double 6.6197379999999999
	.quad	0x40113f151e75360d              # double 4.311604
	.quad	0x400b2730c67168f9              # double 3.394136
	.quad	0x40223d13d74d594f              # double 9.1192919999999997
	.quad	0x400cf1cfbb949625              # double 3.6180720000000002
	.quad	0x40119d9f0a1be2b5              # double 4.4039270000000004
	.quad	0x400089717df19d67              # double 2.0671110000000001
	.quad	0x40209f1865519371              # double 8.3107330000000008
	.quad	0x401effdd22856606              # double 7.7498670000000001
	.quad	0x3ffc851761459536              # double 1.7824930000000001
	.quad	0x401c40cae642bf98              # double 7.0632739999999998
	.quad	0x401aa700474d9c6b              # double 6.663087
	.quad	0x3fea2a305532617c              # double 0.81764999999999998
	.quad	0x40234af89c5e6ff8              # double 9.6464280000000002
	.quad	0x3fe63b7f9d6f1130              # double 0.69476300000000002
	.quad	0x4013f83dbc23315d              # double 4.9924229999999996
	.quad	0x401e29a8049667b6              # double 7.54068
	.quad	0x4012bd35653c9abb              # double 4.684774
	.quad	0x401fbf98b71b8aa0              # double 7.937106
	.quad	0x401c27cbf6e3f78c              # double 7.0388640000000002
	.quad	0x3fead744f5d35654              # double 0.83877800000000002
	.quad	0x3feb9741d084e832              # double 0.86221400000000004
	.quad	0x4021349cf56eac86              # double 8.60276
	.quad	0x3feabaa79bbadc0a              # double 0.83528500000000006
	.quad	0x3fd87681669ced0b              # double 0.38223299999999999
	.quad	0x400fdc7cd898b2ea              # double 3.9826600000000001
	.quad	0x4023899285a921cd              # double 9.7686960000000002
	.quad	0x401c328f190d1740              # double 7.0493740000000003
	.quad	0x40210de0f7fcfc40              # double 8.5271070000000009
	.quad	0x4014e9c12f09d8c7              # double 5.2282760000000001
	.quad	0x400eaa369fcf3dc0              # double 3.8331119999999999
	.quad	0x4014a98cc144028e              # double 5.1655759999999997
	.quad	0x4022d1bc55864452              # double 9.4096399999999996
	.quad	0x402306f672b88440              # double 9.5135989999999992
	.quad	0x40230ea0dbad3a60              # double 9.5285709999999995
	.quad	0x401f73beec39799e              # double 7.8630329999999997
	.quad	0x4023f7ebaf102364              # double 9.9842200000000005
	.quad	0x3fe0bdb1a6d698fe              # double 0.52315599999999995
	.quad	0x402372b734b51373              # double 9.7240540000000006
	.quad	0x400935b813016484              # double 3.15123
	.quad	0x401e10068db8bac7              # double 7.5156499999999999
	.quad	0x402017b1183b6028              # double 8.0462729999999993
	.quad	0x401a84b0e1b4bb5e              # double 6.6295809999999999
	.quad	0x3fe7c07ee0b0af60              # double 0.74224800000000001
	.quad	0x4015f56d19dece57              # double 5.4896739999999999
	.quad	0x4009744998d045fe              # double 3.181781
	.quad	0x40231b1e5c0b9991              # double 9.5529659999999996
	.quad	0x40132ac4f7ec3548              # double 4.7917670000000001
	.quad	0x4017fd6883771865              # double 5.9974689999999997
	.quad	0x40120e4f3343fa2b              # double 4.5139740000000002
	.quad	0x3fef3c3a42f1ed18              # double 0.97610200000000002
	.quad	0x4013993c89f40a28              # double 4.8996449999999996
	.quad	0x40222906ee30caa3              # double 9.0801309999999997
	.quad	0x401f5e379b77c02b              # double 7.842009
	.quad	0x3fbd08e581cf7879              # double 0.113417
	.quad	0x3ff545e0b4e11dbd              # double 1.3295600000000001
	.quad	0x4021beec7c957cd4              # double 8.8728979999999992
	.quad	0x3ff01782d38476f3              # double 1.0057400000000001
	.quad	0x401bbc8216c61523              # double 6.9340900000000003
	.quad	0x3fba1bd1ed9dfdac              # double 0.10198699999999999
	.quad	0x3fe12b649d388a8b              # double 0.536547
	.quad	0x40106726d04e618d              # double 4.1007340000000001
	.quad	0x40039a5f41aef6f9              # double 2.450377
	.quad	0x401a77763e4abe6a              # double 6.6166619999999998
	.quad	0x401d9573eab367a1              # double 7.39595
	.quad	0x40166c5479d4d834              # double 5.605791
	.quad	0x401a806e9ff0cbb0              # double 6.6254220000000004
	.quad	0x4013e62fdfc19c17              # double 4.9747919999999999
	.quad	0x402221a38fbca106              # double 9.0657010000000007
	.quad	0x400a30c4dec1c1d7              # double 3.2738130000000001
	.quad	0x4023c192c8c50050              # double 9.8780730000000005
	.quad	0x3fc7081c2e33eff2              # double 0.17993500000000001
	.quad	0x4019104790b84988              # double 6.265898
	.quad	0x400f4b167ec7863c              # double 3.911664
	.quad	0x40031864cb5bb385              # double 2.386911
	.quad	0x40227db4edb2f662              # double 9.2455210000000001
	.quad	0x401a50841ede1199              # double 6.5786290000000003
	.quad	0x401cb7a4a48f96e1              # double 7.1793389999999997
	.quad	0x40006f33ca31e7da              # double 2.0542980000000002
	.quad	0x3ff45c0a8d21bc12              # double 1.2724709999999999
	.quad	0x4018536262cba733              # double 6.0814300000000001
	.quad	0x3fe50a7829068987              # double 0.657528
	.quad	0x400d872da122fad7              # double 3.6910050000000001
	.quad	0x401a1080f98fa377              # double 6.5161170000000004
	.quad	0x401e29841aac53b1              # double 7.5405430000000004
	.quad	0x3ff508051c9f72f7              # double 1.3144579999999999
	.quad	0x40227a311e85fd05              # double 9.2386560000000006
	.quad	0x3fc4d87724fa8b4c              # double 0.162856
	.quad	0x40220829ae4f3344              # double 9.015943
	.quad	0x3fff64766c6de764              # double 1.962027
	.quad	0x40082b9baa1511e0              # double 3.021293
	.quad	0x4018c4039abf3387              # double 6.1914199999999999
	.quad	0x401e42d98bf7f067              # double 7.5652829999999999
	.quad	0x401bebf8769ec2ce              # double 6.9804399999999998
	.quad	0x400e691a75cd0bb7              # double 3.80132
	.quad	0x401c1dc33721d53d              # double 7.0290650000000001
	.quad	0x3ff3048e043a2164              # double 1.188612
	.quad	0x4016350d2806af47              # double 5.5518080000000003
	.quad	0x4003755de58e64b2              # double 2.4323079999999999
	.quad	0x3ff427b5f1bef49d              # double 1.259695
	.quad	0x401c32ea52ef911d              # double 7.049722
	.quad	0x401f12817763e4ac              # double 7.7680720000000001
	.quad	0x4004ad573647baaa              # double 2.5846390000000001
	.quad	0x401d9f13cee9dd7f              # double 7.4053490000000002
	.quad	0x401c14fd2a62aa19              # double 7.0204969999999998
	.quad	0x3fdd055fbb517a46              # double 0.45345299999999999
	.quad	0x3fd7e557de0d66f1              # double 0.37337300000000001
	.quad	0x3ffbe9014b599aa6              # double 1.744386
	.quad	0x401f18eb8950763a              # double 7.7743359999999999
	.quad	0x4022d7e154434e33              # double 9.4216409999999992
	.quad	0x4013f8dde7a743a6              # double 4.9930339999999998
	.quad	0x4018dd4801f75105              # double 6.2160950000000001
	.quad	0x4011b4873365881a              # double 4.4262969999999999
	.quad	0x401748b04ab606b8              # double 5.8209850000000003
	.quad	0x402061a86940357a              # double 8.1907379999999996
	.quad	0x3ff7716f4384ba0f              # double 1.4651940000000001
	.quad	0x4016c602c9081c2e              # double 5.6933699999999998
	.quad	0x40200297396d0918              # double 8.0050600000000003
	.quad	0x40076a6a012599ed              # double 2.9269599999999998
	.quad	0x400e3e889c1b5419              # double 3.7805339999999998
	.quad	0x400e8dacabc51548              # double 3.8191769999999998
	.quad	0x401b121858bc59b8              # double 6.767671
	.quad	0x4004fcb6848beb5b              # double 2.6233949999999999
	.quad	0x40143e3476295209              # double 5.0607470000000001
	.quad	0x40220dba2be0589b              # double 9.0268110000000004
	.quad	0x402280b4bf8fcd68              # double 9.251379
	.quad	0x3ff14d8ec95bff04              # double 1.0814349999999999
	.quad	0x40154379fa97e133              # double 5.3158950000000003
	.quad	0x400bb7b395c42203              # double 3.4646979999999998
	.quad	0x40135260b2c83ec9              # double 4.8304470000000004
	.quad	0x4015729ae4f33440              # double 5.3619190000000003
	.quad	0x3fbce92d55a3a084              # double 0.11293300000000001
	.quad	0x401c08c79f666235              # double 7.0085740000000003
	.quad	0x4020f3ea2d2fe3f3              # double 8.4763959999999994
	.quad	0x4012c997c3d68406              # double 4.6968680000000003
	.quad	0x4000e3f91e646f15              # double 2.1113149999999998
	.quad	0x4019eba732df505d              # double 6.4801299999999999
	.quad	0x3fe41ed7c6fbd274              # double 0.62876500000000002
	.quad	0x40175ee49f51697f              # double 5.8426689999999999
	.quad	0x400865553ef6b5d4              # double 3.0494789999999998
	.quad	0x401eaf32bdc26dce              # double 7.6710919999999998
	.quad	0x3ff8be1650a45d42              # double 1.546408
	.quad	0x400cad1d041cc533              # double 3.5845280000000002
	.quad	0x400bf24638c97529              # double 3.4932979999999998
	.quad	0x4023e9b499d0203e              # double 9.9564559999999993
	.quad	0x401fdc804102ff8f              # double 7.9653330000000002
	.quad	0x4021f0793dd97f63              # double 8.9696750000000005
	.quad	0x400a2b8bef8ceb35              # double 3.2712629999999998
	.quad	0x3fd3b71758e21965              # double 0.30804999999999999
	.quad	0x3ff9b55bccaf709b              # double 1.6067769999999999
	.quad	0x4023e27b4e54f7a9              # double 9.9423469999999998
	.quad	0x4022a476295208e1              # double 9.3212139999999994
	.quad	0x401beae3e6c4c597              # double 6.9793849999999997
	.quad	0x400d30520d130dfa              # double 3.6485940000000001
	.quad	0x401231e0c5a8155d              # double 4.5487089999999997
	.quad	0x4021bd82dbe7f2c3              # double 8.870139
	.quad	0x400193e468cac4b5              # double 2.1972130000000001
	.quad	0x40214fc86cebbba5              # double 8.6558259999999994
	.quad	0x401aa6a7264a16a5              # double 6.6627470000000004
	.quad	0x4001bf5d78811b1e              # double 2.2184400000000002
	.quad	0x4018cf6837f7be12              # double 6.2025459999999999
	.quad	0x40218c94f69ca9ef              # double 8.7745739999999994
	.quad	0x4010503254e6e222              # double 4.0783170000000002
	.quad	0x40215f720c8cd63d              # double 8.6864170000000005
	.quad	0x3ff9af661f18c9fb              # double 1.6053219999999999
	.quad	0x3ff200d0aaa7ded7              # double 1.1251990000000001
	.quad	0x3f9312f4cf4a558f              # double 0.018627000000000001
	.quad	0x400691c5c5718eb9              # double 2.8211780000000002
	.quad	0x401f36bd6e8af816              # double 7.8034569999999999
	.quad	0x40087955714b9cb7              # double 3.0592450000000002
	.quad	0x3ffb8842fa509396              # double 1.7207669999999999
	.quad	0x4013866c2acb85a5              # double 4.8812720000000001
	.quad	0x400526c332f01755              # double 2.6439270000000001
	.quad	0x40185656eefa1e3f              # double 6.0843160000000003
	.quad	0x401c21c15097c808              # double 7.0329639999999998
	.quad	0x40106bc83a96d4c3              # double 4.1052559999999998
	.quad	0x4000023fab10ba62              # double 2.0010979999999998
	.quad	0x3fe76a5b530ced4e              # double 0.73173299999999997
	.quad	0x401530c4156e264e              # double 5.2976229999999997
	.quad	0x401c389f83be6602              # double 7.0552960000000002
	.quad	0x3fdd395810624dd3              # double 0.456625
	.quad	0x3ff88f4c6e6d9be5              # double 1.534985
	.quad	0x4006f269595feda6              # double 2.8683649999999998
	.quad	0x3ff53e9b7bf1e8e6              # double 1.327785
	.quad	0x401afec17ebaf102              # double 6.7487849999999998
	.quad	0x3fd4def8487b99d4              # double 0.32610899999999998
	.quad	0x401da0589acbc8c1              # double 7.4065880000000002
	.quad	0x401d59752977c88e              # double 7.3373609999999996
	.quad	0x3fefeb8f9b13165d              # double 0.99750499999999997
	.quad	0x400756d2aa5c5f7c              # double 2.9173939999999998
	.quad	0x40214be7d135115a              # double 8.6482530000000004
	.quad	0x3fc98b69552e2fbe              # double 0.19956699999999999
	.quad	0x40030d14a0a0f4d8              # double 2.3813870000000001
	.quad	0x401380ee06d93815              # double 4.8759079999999999
	.quad	0x4023ae98fe69270b              # double 9.8410109999999999
	.quad	0x4002bba237cdcca7              # double 2.341618
	.quad	0x40166a0dfdef8488              # double 5.6035690000000002
	.quad	0x4002675a31a4bdba              # double 2.300465
	.quad	0x401226b9c304ccee              # double 4.5378179999999997
	.quad	0x401e8899bf5946c3              # double 7.6333989999999998
	.quad	0x4020e47219220ff5              # double 8.4461829999999996
	.quad	0x4021f8de8f6cefed              # double 8.9860729999999993
	.quad	0x40060a63b688bda9              # double 2.7550729999999999
	.quad	0x3fe19e1f3a57eaa3              # double 0.55055200000000004
	.quad	0x40090b3dd11be6e6              # double 3.1304889999999999
	.quad	0x401697f9d6f112fd              # double 5.6484139999999998
	.quad	0x401f459641f64495              # double 7.8179559999999996
	.quad	0x401ebb03e20ccff2              # double 7.6826319999999999
	.quad	0x3fcdd7fd82773e25              # double 0.233154
	.quad	0x4000e9731098d478              # double 2.1139890000000001
	.quad	0x401ccababead4f59              # double 7.197978
	.quad	0x3fde25fe974a3401              # double 0.47106900000000002
	.quad	0x401344bf0995aaf8              # double 4.8171350000000004
	.quad	0x3ffc9aa92e62131b              # double 1.7877590000000001
	.quad	0x4018c44241c3efae              # double 6.1916589999999996
	.quad	0x400cfdb1a6d698fe              # double 3.6238739999999998
	.quad	0x3ff6c9eba6aca793              # double 1.4242969999999999
	.quad	0x4003a841ede1198b              # double 2.457157
	.quad	0x3fe5345f17bd8be7              # double 0.66264299999999998
	.quad	0x3fd5ab21815a07b3              # double 0.33856999999999998
	.quad	0x40216b4f82f51266              # double 8.7095909999999996
	.quad	0x4016030ec3116228              # double 5.5029859999999999
	.quad	0x4007ef07bfe7e1fc              # double 2.991714
	.quad	0x40077b34a44c7b03              # double 2.9351590000000001
	.quad	0x40143807789a4591              # double 5.054716
	.quad	0x4018d7724fa8b4c0              # double 6.2103970000000004
	.quad	0x402238a82a5614e0              # double 9.1106580000000008
	.quad	0x40016d5ae1cde5d2              # double 2.1783960000000002
	.quad	0x3fc2abc5154866a1              # double 0.145867
	.quad	0x40114fafc8b0079a              # double 4.3278189999999999
	.quad	0x40231e957470eb25              # double 9.5597340000000006
	.quad	0x40132b239a38fbca              # double 4.7921279999999999
	.quad	0x401c5fe9fadafd11              # double 7.0936659999999998
	.quad	0x401387518b0d0edc              # double 4.8821469999999998
	.quad	0x3ff30d9945b6c376              # double 1.19082
	.quad	0x401f0be6601bc98a              # double 7.7616209999999999
	.quad	0x4010e583e8576cce              # double 4.2241359999999997
	.quad	0x401ff5add9c27e95              # double 7.9899209999999998
	.quad	0x4022b2ea0fd3b29a              # double 9.3494419999999998
	.quad	0x3ff9cfcb4f1e4b45              # double 1.6132310000000001
	.quad	0x402058a697aeddce              # double 8.1731459999999991
	.quad	0x4018dc79702e6645              # double 6.2153070000000001
	.quad	0x401e414b167ec786              # double 7.5637629999999998
	.quad	0x3ff6a0fd3b29a1ba              # double 1.414304
	.quad	0x40153b524399b2c4              # double 5.307931
	.quad	0x400006c332f01755              # double 2.0033020000000001
	.quad	0x401de84b1ab0856e              # double 7.4768489999999996
	.quad	0x4008587724fa8b4c              # double 3.043196
	.quad	0x3fed3b8c32a8c9b8              # double 0.91351899999999997
	.quad	0x4020d3884406c00e              # double 8.4131490000000007
	.quad	0x4021dc92ff4ba51a              # double 8.930809
	.quad	0x4018d2de00d1b717              # double 6.2059249999999997
	.quad	0x4008e7b890d5a5b9              # double 3.1131449999999998
	.quad	0x401c6d30f062d40b              # double 7.1066320000000003
	.quad	0x40205c113c68661b              # double 8.1798190000000002
	.quad	0x3fea4baf965b20b8              # double 0.821739
	.quad	0x4020f19fa11a975b              # double 8.471921
	.quad	0x402297f822bbecab              # double 9.2968150000000005
	.quad	0x3fd35d462c343b71              # double 0.302568
	.quad	0x400bedf266ba493d              # double 3.4911850000000002
	.quad	0x4010e4107314ca92              # double 4.2227189999999997
	.quad	0x3fe3c47e49b1fab9              # double 0.61773599999999995
	.quad	0x4006d9146e4c0df6              # double 2.8559960000000002
	.quad	0x40203b9baa1511e0              # double 8.116422
	.quad	0x401feb641700cd85              # double 7.9798739999999996
	.quad	0x40182af294dd7236              # double 6.0419409999999996
	.quad	0x401d87d34df04ddb              # double 7.3826419999999997
	.quad	0x4002c503fb374363              # double 2.3461989999999999
	.quad	0x401ec90e66cb1034              # double 7.6963439999999999
	.quad	0x3fd4a6937d1fe64f              # double 0.32266699999999998
	.quad	0x4019f4f3fd933e36              # double 6.4892120000000002
	.quad	0x4019da41a261bf38              # double 6.4631410000000002
	.quad	0x4019286b15f88fc9              # double 6.2894709999999998
	.quad	0x4023f2d080b673c5              # double 9.974247
	.quad	0x3ff4c34091c08744              # double 1.297669
	.quad	0x4015ffbeb9e492bc              # double 5.4997509999999998
	.quad	0x3ff0f78dd616f86a              # double 1.060438
	.quad	0x4005a681a9b8cb8e              # double 2.706302
	.quad	0x400197f8ca8198f2              # double 2.1992050000000001
	.quad	0x40066eed02cd39da              # double 2.804163
	.quad	0x400a3c148344c37e              # double 3.2793359999999998
	.quad	0x401512806af46aa1              # double 5.2680680000000004
	.quad	0x4023c455eaee2004              # double 9.8834680000000005
	.quad	0x3ff3731f46ed245b              # double 1.215606
	.quad	0x40160e6e221c8a7a              # double 5.5140919999999998
	.quad	0x4013e09d0635a427              # double 4.9693490000000002
	.quad	0x3ff4c5b291b823c8              # double 1.2982659999999999
	.quad	0x400bf0fc71d60631              # double 3.4926689999999998
	.quad	0x401869ecf6380022              # double 6.1034430000000004
	.quad	0x4001e42070b8cfc0              # double 2.2363900000000001
	.quad	0x4017a25e56cd6c2f              # double 5.908563
	.quad	0x3ff16baade657b85              # double 1.088786
	.quad	0x40233d6798958d9b              # double 9.6199309999999993
	.quad	0x40023ee78183f91e              # double 2.2807149999999998
	.quad	0x400284dec1c1d6d0              # double 2.3148780000000002
	.quad	0x400758b588e368f1              # double 2.9183150000000002
	.quad	0x40164e6d15ad106f              # double 5.5765880000000001
	.quad	0x4015b62e09fe8683              # double 5.4279099999999998
	.quad	0x400a85271bcdbbe0              # double 3.315016
	.quad	0x4015efb8b26394fb              # double 5.4841030000000002
	.quad	0x4019bbf37b8d3f18              # double 6.4335459999999998
	.quad	0x4003124638c97529              # double 2.3839229999999998
	.quad	0x3feab7995ee136e7              # double 0.83491199999999999
	.quad	0x4023828ef77f27fe              # double 9.7549969999999995
	.quad	0x3f89d12cadddf43c              # double 0.012605999999999999
	.quad	0x40118b1897a67a53              # double 4.3858360000000003
	.quad	0x3fd53ade225fa659              # double 0.33171800000000001
	.quad	0x40101dc8fb86f47b              # double 4.0290869999999996
	.quad	0x3fea5bc87db2b346              # double 0.82370399999999999
	.quad	0x4012b9dece571088              # double 4.681514
	.quad	0x4021435d462c343b              # double 8.6315709999999992
	.quad	0x401d49f72f76e610              # double 7.3222319999999996
	.quad	0x3ffa6e7e62dc6e2b              # double 1.6519760000000001
	.quad	0x401602da98676a72              # double 5.5027869999999997
	.quad	0x3fe9e273929ed395              # double 0.80889299999999997
	.quad	0x4015e0e7bc3c5bd1              # double 5.4696340000000001
	.quad	0x40228bf11f926c7f              # double 9.2733240000000006
	.quad	0x4016f1c25d074214              # double 5.7360930000000003
	.quad	0x402313ae89eba6ad              # double 9.5384410000000006
	.quad	0x3ff833482be8bc17              # double 1.5125200000000001
	.quad	0x3ffa0999dcb5781c              # double 1.6273439999999999
	.quad	0x4001f7fbefd00714              # double 2.246086
	.quad	0x3ff018c3b0c4588a              # double 1.006046
	.quad	0x4004bbdad7518b0d              # double 2.591726
	.quad	0x3fe1dbe1a8262457              # double 0.558091
	.quad	0x401e3be121ee6751              # double 7.5584759999999997
	.quad	0x4010bde1198aeb81              # double 4.1854290000000001
	.quad	0x401706e503fb3743              # double 5.7567329999999997
	.quad	0x40036dd0d8cb07d1              # double 2.4286210000000001
	.quad	0x4013800c0f01fb83              # double 4.8750460000000002
	.quad	0x401ca546d3f9e7b8              # double 7.161403
	.quad	0x4023d71a7e308787              # double 9.9201239999999994
	.quad	0x3fc744f5d35653ca              # double 0.18179200000000001
	.quad	0x4005f4cb1897a67a              # double 2.7445279999999999
	.quad	0x400dc5bb7b6bb129              # double 3.721549
	.quad	0x40115647baa9b49a              # double 4.3342580000000002
	.quad	0x401ba54b05b7cfe6              # double 6.9114190000000004
	.quad	0x4017c9a62ed35222              # double 5.946923
	.quad	0x4008ec8cd63cb817              # double 3.1155029999999999
	.quad	0x3fe038800eae18ad              # double 0.50689700000000004
	.quad	0x3fedeb7cbb3c8191              # double 0.93499600000000005
	.quad	0x4004ddbe3c105187              # double 2.6082730000000001
	.quad	0x40207192641b328b              # double 8.2218199999999992
	.quad	0x3ff5aaaf35e310dc              # double 1.354171
	.quad	0x40204c4b6e935b92              # double 8.1490130000000001
	.quad	0x3ff5c41fea8112ba              # double 1.360382
	.quad	0x401a496feb4a6656              # double 6.5717160000000003
	.quad	0x3ff1d1654d61b2a2              # double 1.1136219999999999
	.quad	0x401094fa05143bf7              # double 4.1454849999999999
	.quad	0x4022c409a2403148              # double 9.3828859999999991
	.quad	0x4020dd14a0a0f4d8              # double 8.4317980000000006
	.quad	0x400d99f98b71b8aa              # double 3.700183
	.quad	0x4015e9463cfb3312              # double 5.4778070000000003
	.quad	0x400ae58a32f44913              # double 3.3620800000000002
	.quad	0x4017314df8b15726              # double 5.7981490000000004
	.quad	0x40134a6b50b0f27c              # double 4.8226750000000003
	.quad	0x402171a5ca29845e              # double 8.7219680000000004
	.quad	0x400b0639d5e4a383              # double 3.3780399999999999
	.quad	0x400417fcfc3f811f              # double 2.5117129999999999
	.quad	0x3fd504577d955715              # double 0.32839000000000002
	.quad	0x3ff39b9d7fd82774              # double 1.225492
	.quad	0x4021f11e646f1562              # double 8.9709350000000008
	.quad	0x4021e7bd05af6c6a              # double 8.9526140000000005
	.quad	0x40200e616b54e2b0              # double 8.0280869999999993
	.quad	0x401785260f5e41d5              # double 5.8800280000000003
	.quad	0x40232954c985f06f              # double 9.5807249999999992
	.quad	0x4022a2e924f227d0              # double 9.3181849999999997
	.quad	0x401b3f58c08b75ea              # double 6.8118619999999996
	.quad	0x402181be09bb6aa5              # double 8.7534030000000005
	.quad	0x40046996b76709fa              # double 2.5515569999999999
	.quad	0x40205770de8f6cf0              # double 8.1707830000000001
	.quad	0x40221f4cd31769a9              # double 9.0611329999999999
	.quad	0x4020180389f83be6              # double 8.0469019999999993
	.quad	0x401a068b19a415f4              # double 6.5063899999999997
	.quad	0x40117fea3df6db94              # double 4.3749169999999999
	.quad	0x401742778140dd40              # double 5.8149090000000001
	.quad	0x3ffa619fc2a8869c              # double 1.6488339999999999
	.quad	0x40229bda72a7bd49              # double 9.3044010000000004
	.quad	0x401514a7b4e54f7b              # double 5.2701710000000004
	.quad	0x400defc58ab92c06              # double 3.742076
	.quad	0x401ce2c59fb1e18f              # double 7.221457
	.quad	0x3fd23f9a49c2c1b1              # double 0.285132
	.quad	0x3ff7e9d7342edbb6              # double 1.4945900000000001
	.quad	0x3ff92b239a38fbca              # double 1.573032
	.quad	0x4022c185271bcdbc              # double 9.3779690000000002
	.quad	0x401873508f648c72              # double 6.1126120000000004
	.quad	0x40042542e557de0d              # double 2.5181939999999998
	.quad	0x40123aeb80ecfa6a              # double 4.5575390000000002
	.quad	0x40087c1a47a9e2bd              # double 3.060597
	.quad	0x400626ce358298cc              # double 2.768948
	.quad	0x401e562cba732df5              # double 7.5841549999999999
	.quad	0x3fdbf51efb6dca08              # double 0.436836
	.quad	0x4011551b4fe79ee0              # double 4.3331119999999999
	.quad	0x4022a89df1172ef1              # double 9.3293300000000006
	.quad	0x3fdeff2e48e8a71e              # double 0.48432500000000001
	.quad	0x4007426e5471715c              # double 2.9074369999999998
	.quad	0x40197980f55de58e              # double 6.3686559999999997
	.quad	0x3ff58e30446b69db              # double 1.3472139999999999
	.quad	0x4017635c9e6687f4              # double 5.8470329999999997
	.quad	0x3feaa5aab4741073              # double 0.83272299999999999
	.quad	0x3ffd6e653868fd1a              # double 1.8394520000000001
	.quad	0x4021d03dddb1209f              # double 8.9067220000000002
	.quad	0x4006927cbf6e3f79              # double 2.8215270000000001
	.quad	0x4015ca0945f9df55              # double 5.4473010000000004
	.quad	0x40207512cadddf44              # double 8.2286590000000003
	.quad	0x40229ce8101f31f4              # double 9.3064579999999992
	.quad	0x4022684f6dfc5cdd              # double 9.2037309999999994
	.quad	0x4018ccb4f1e4b44a              # double 6.1999089999999999
	.quad	0x3fc069270b06c43f              # double 0.12820899999999999
	.quad	0x401bc8f0c77dd873              # double 6.946231
	.quad	0x4012ef61672324c8              # double 4.7337699999999998
	.quad	0x402089e42e126202              # double 8.2693189999999994
	.quad	0x4000dc297bfa4c62              # double 2.1075010000000001
	.quad	0x400789b62c77574f              # double 2.9422419999999998
	.quad	0x402253dc26dce39b              # double 9.1637889999999995
	.quad	0x3ff160d0247021d1              # double 1.086136
	.quad	0x40200140bbb1f256              # double 8.0024470000000001
	.quad	0x4012fd4c76d117b5              # double 4.7473619999999999
	.quad	0x4020cc8de2ac3223              # double 8.3995200000000008
	.quad	0x3fe407746887a8d6              # double 0.62590999999999997
	.quad	0x401f4c308feac42f              # double 7.8244040000000003
	.quad	0x401a0fc71d606317              # double 6.5154079999999999
	.quad	0x3fe457e45803cd14              # double 0.63572899999999999
	.quad	0x4008a56f75d9a0f1              # double 3.0807790000000002
	.quad	0x40179374ff865d7d              # double 5.8940010000000003
	.quad	0x4014f44b6e935b92              # double 5.238569
	.quad	0x3fe3a1101b003687              # double 0.61341100000000004
	.quad	0x401a5b6177ea1c69              # double 6.5892390000000001
	.quad	0x4023a20f9096bb99              # double 9.8165250000000003
	.quad	0x3ffff6d117b5286b              # double 1.9977579999999999
	.quad	0x4022a9cc100e6afd              # double 9.3316350000000003
	.quad	0x3ffeb9830e3cd9a5              # double 1.920291
	.quad	0x3fb1107faa044ae8              # double 0.066657999999999995
	.quad	0x401968f2e05ccc8a              # double 6.3524890000000003
	.quad	0x40191bb23571d1d4              # double 6.2770469999999996
	.quad	0x401f32ad3e920c07              # double 7.7994890000000003
	.quad	0x40155ff822bbecab              # double 5.3437200000000002
	.quad	0x3ff99130df9bdc6a              # double 1.597947
	.quad	0x4006236113404ea5              # double 2.7672750000000002
	.quad	0x4021ad57bc7f77af              # double 8.8385599999999993
	.quad	0x3ffd9d93c46d82ba              # double 1.8509709999999999
	.quad	0x400d7e308787485e              # double 3.6866159999999999
	.quad	0x40056e9ee45c358b              # double 2.679014
	.quad	0x3ffc162e09fe8683              # double 1.7554149999999999
	.quad	0x4023103dddb1209f              # double 9.5317220000000002
	.quad	0x4022d87b56b87379              # double 9.4228159999999991
	.quad	0x4002de603d577964              # double 2.3585820000000002
	.quad	0x4015832096787ce9              # double 5.3780539999999997
	.quad	0x401b5c52e72da123              # double 6.84016
	.quad	0x4013c203a322af57              # double 4.9394669999999996
	.quad	0x40208ae09fe86834              # double 8.2712450000000004
	.quad	0x3ff8f42bb6672fba              # double 1.559612
	.quad	0x3ffa36d117b5286b              # double 1.6383829999999999
	.quad	0x40205b18b9346994              # double 8.1779229999999998
	.quad	0x3fcf3c81908e581d              # double 0.244034
	.quad	0x4020ae7ea5f84cad              # double 8.3408099999999994
	.quad	0x4019dc382a12f901              # double 6.465058
	.quad	0x402134985f06f694              # double 8.6027249999999995
	.quad	0x3ff455bab21815a0              # double 1.2709299999999999
	.quad	0x401d5c985f06f694              # double 7.3404249999999998
	.quad	0x4021106b37867f0b              # double 8.5320680000000007
	.quad	0x3fe126aca7935760              # double 0.53597099999999998
	.quad	0x401bd7f90d9d7775              # double 6.9609110000000003
	.quad	0x4011dfcac8e68e3f              # double 4.468547
	.quad	0x4015d8d8a979e16d              # double 5.4617639999999996
	.quad	0x3fe3368f08461f9f              # double 0.60041
	.quad	0x3ff719fd36f7e3d2              # double 1.443845
	.quad	0x4021d21ccd962068              # double 8.9103759999999994
	.quad	0x400a59e1f3a57eaa              # double 3.2938879999999999
	.quad	0x40161a6e32e3821b              # double 5.525811
	.quad	0x400aaac18f81e8a3              # double 3.333377
	.quad	0x3fc2e1ef73c0c1fd              # double 0.14752000000000001
	.quad	0x40221c016052502f              # double 9.0546980000000001
	.quad	0x401339a6b50b0f28              # double 4.8063000000000002
	.quad	0x402307dfe32a0664              # double 9.5153800000000003
	.quad	0x3fef2a9f7b5aea31              # double 0.97395299999999995
	.quad	0x4014d47e49b1fab9              # double 5.2075129999999996
	.quad	0x401a0033a4723ab0              # double 6.500197
	.quad	0x3ff4c357a355043e              # double 1.2976909999999999
	.quad	0x4022ab08787485e4              # double 9.3340490000000002
	.quad	0x401b22b239a38fbd              # double 6.7838830000000003
	.quad	0x4023e6bc408d8ec9              # double 9.9506549999999993
	.quad	0x400f3d5c31593e60              # double 3.9049610000000001
	.quad	0x400a96295208e150              # double 3.323321
	.quad	0x40170183b60285ec              # double 5.7514789999999998
	.quad	0x4013c3f8982cb210              # double 4.9413780000000003
	.quad	0x40209659f2ba9d1f              # double 8.2936549999999993
	.quad	0x4011288f42fe8251              # double 4.2896089999999996
	.quad	0x401ccc942d490e67              # double 7.1997840000000002
	.quad	0x40236d5432873bc9              # double 9.7135329999999999
	.quad	0x3ffdc752da98676a              # double 1.8611629999999999
	.quad	0x4010a27e5215768a              # double 4.1586850000000002
	.quad	0x3ff6b9591cd1c7de              # double 1.4202509999999999
	.quad	0x401705e0f7fcfc40              # double 5.7557410000000004
	.quad	0x4004c413db7f1737              # double 2.5957409999999999
	.quad	0x3ff50a558ea7ce10              # double 1.3150230000000001
	.quad	0x401ba925bb7b6bb1              # double 6.9151829999999999
	.quad	0x400f5b068123810f              # double 3.9194460000000002
	.quad	0x40185f36ac647779              # double 6.0929820000000001
	.quad	0x3fe3176577531db4              # double 0.59660599999999997
	.quad	0x4018cec0f88333fd              # double 6.2019080000000004
	.quad	0x400cd0bb6ed67770              # double 3.6019199999999998
	.quad	0x40119588e368f084              # double 4.3960299999999997
	.quad	0x4013b64bec679cc7              # double 4.9280239999999997
	.quad	0x401f1e7d566cf41f              # double 7.7797749999999998
	.quad	0x40239a8ef77f27fe              # double 9.8018719999999995
	.quad	0x401db6c8f7553693              # double 7.4285009999999998
	.quad	0x40172b890d5a5b96              # double 5.7925149999999999
	.quad	0x4017d831f03d145e              # double 5.9611280000000004
	.quad	0x40221a19eb6390c9              # double 9.0509789999999999
	.quad	0x402170cf7caa758a              # double 8.7203330000000001
	.quad	0x4012de6c4c5974e6              # double 4.7172099999999997
	.quad	0x4001b5219a847b24              # double 2.2134429999999998
	.quad	0x4019b17e77d523b3              # double 6.4233339999999997
	.quad	0x4013a716d2aa5c5f              # double 4.9131729999999996
	.quad	0x3ff402bf9830e3ce              # double 1.2506710000000001
	.quad	0x40198c3ac929aa1d              # double 6.3869429999999996
	.quad	0x4004a8997c3d6840              # double 2.5823239999999998
	.quad	0x400e41fa76534374              # double 3.782216
	.quad	0x401c765d3996fa83              # double 7.1155900000000001
	.quad	0x40002289118c197e              # double 2.0168629999999999
	.quad	0x3ff17986338b47c7              # double 1.0921689999999999
	.quad	0x401abe4217d2849d              # double 6.6857990000000003
	.quad	0x401bc0225742dcf4              # double 6.9376309999999997
	.quad	0x40119d6883771865              # double 4.4037189999999997
	.quad	0x402164fe9b7bf1e9              # double 8.6972550000000002
	.quad	0x4019084449dbec25              # double 6.2580730000000004
	.quad	0x400f24295a6c5d20              # double 3.8926569999999998
	.quad	0x3ff25b76b3bb83cf              # double 1.14733
	.quad	0x4023569014b599aa              # double 9.6690679999999993
	.quad	0x3fe49a11233df2aa              # double 0.64380700000000002
	.quad	0x4013fcd466f5019f              # double 4.9969039999999998
	.quad	0x40097af31b152f3c              # double 3.1850339999999999
	.quad	0x40013fbce4217d28              # double 2.1561219999999999
	.quad	0x40229a84be40420f              # double 9.3017939999999992
	.quad	0x4022ac6759ab6d01              # double 9.3367260000000005
	.quad	0x4023288094e5d5b2              # double 9.5791059999999995
	.quad	0x4009064a9cdc4439              # double 3.128072
	.quad	0x4022c1949e8815e4              # double 9.3780870000000007
	.quad	0x40217de17e34b945              # double 8.7458609999999997
	.quad	0x4020310a7829068a              # double 8.0957830000000008
	.quad	0x4006a29068986fce              # double 2.829377
	.quad	0x401c9223e1869835              # double 7.1427149999999999
	.quad	0x40112daf4adbc665              # double 4.2946140000000002
	.quad	0x401816e71cda2b5a              # double 6.0223659999999999
	.quad	0x40231a8f7db6e504              # double 9.551876
	.quad	0x402398ca8198f1d4              # double 9.7984200000000001
	.quad	0x40212a2424a276b8              # double 8.5823070000000001
	.quad	0x40225e931876188b              # double 9.1847159999999999
	.quad	0x40142daf4adbc665              # double 5.0446140000000002
	.quad	0x40132d7a13c254a4              # double 4.7944110000000002
	.quad	0x400e615f45e0b4e1              # double 3.7975449999999999
	.quad	0x401979c38b04ab60              # double 6.3689099999999996
	.quad	0x4018dc8a7a41e57e              # double 6.2153720000000003
	.quad	0x40108f7e80389f84              # double 4.1401310000000002
	.quad	0x4015e355043e5322              # double 5.4720040000000001
	.quad	0x401cbeb313be22e6              # double 7.1862300000000001
	.quad	0x401e27852f7f498c              # double 7.5385939999999998
	.quad	0x3fd4ca1059ea5721              # double 0.32483299999999998
	.quad	0x4019a27e5215768a              # double 6.4086850000000002
	.quad	0x401bc80389f83be6              # double 6.9453259999999997
	.quad	0x4010e10f51ac9afe              # double 4.2197849999999999
	.quad	0x401546640a6b93cd              # double 5.3187410000000002
	.quad	0x3fdb1986b9c304cd              # double 0.423433
	.quad	0x401b13632c1f42bb              # double 6.7689329999999996
	.quad	0x400ebbd4067cf1c3              # double 3.8417129999999999
	.quad	0x4022601908e581cf              # double 9.1876909999999992
	.quad	0x4023231f46ed245b              # double 9.5685979999999997
	.quad	0x400bc0b9991361dd              # double 3.4691040000000002
	.quad	0x4016808aefb2aae3              # double 5.6255300000000004
	.quad	0x4021c79af1886df8              # double 8.8898539999999997
	.quad	0x400459c17225b74a              # double 2.5438260000000001
	.quad	0x3fe574d37c1376d5              # double 0.67051099999999997
	.quad	0x401cdc1a8ac5c140              # double 7.2149450000000002
	.quad	0x40200f980f55de59              # double 8.0304570000000002
	.quad	0x4014f5f99c38b04b              # double 5.2402100000000003
	.quad	0x400ad5a9eb2074eb              # double 3.3543280000000002
	.quad	0x4008e72a7bd48cb5              # double 3.1128740000000001
	.quad	0x3ffa89e55c0fcb4f              # double 1.658666
	.quad	0x401e0578a2a90cd4              # double 7.5053429999999999
	.quad	0x40234ecb74ddf86e              # double 9.6538959999999996
	.quad	0x4020f531fcd24e16              # double 8.4788969999999999
	.quad	0x4006e1f42bb66730              # double 2.8603290000000001
	.quad	0x40221b8bef8ceb35              # double 9.0538019999999992
	.quad	0x4019af727136a401              # double 6.421335
	.quad	0x3ff1a935b91f70df              # double 1.1038110000000001
	.quad	0x4021359620685554              # double 8.6046610000000001
	.quad	0x401e931c64ba94bc              # double 7.6436630000000001
	.quad	0x4012a72580c308ff              # double 4.6632290000000003
	.quad	0x401359e7b80a9de9              # double 4.8377980000000003
	.quad	0x4012325b317efe0d              # double 4.5491760000000001
	.quad	0x401093882278d0cc              # double 4.1440739999999998
	.quad	0x401b3211cb039ef1              # double 6.7988960000000001
	.quad	0x3ff97914f483cafb              # double 1.5920609999999999
	.quad	0x401db3886594af4f              # double 7.425325
	.quad	0x40026be6a337a80d              # double 2.302686
	.quad	0x4020f28ed5f138bd              # double 8.4737460000000002
	.quad	0x400a1a71151611ba              # double 3.2629109999999999
	.quad	0x401126134ce3de61              # double 4.2871829999999997
	.quad	0x3ff3244a6223e187              # double 1.1963600000000001
	.quad	0x401c20e453d20f2c              # double 7.0321210000000001
	.quad	0x401dfa697aeddce8              # double 7.4945430000000001
	.quad	0x4012e54c55432874              # double 4.7239240000000002
	.quad	0x40217fa00e27e0f0              # double 8.7492680000000007
	.quad	0x402068e7ff583a54              # double 8.2048950000000004
	.quad	0x4016bbaecd07852f              # double 5.6832839999999996
	.quad	0x401433305100a394              # double 5.0499890000000001
	.quad	0x401d72b66b6177ea              # double 7.3620239999999999
	.quad	0x401c41055b899392              # double 7.0634969999999999
	.quad	0x4023de23af31b153              # double 9.933866
	.quad	0x400d5d8383ad9f0a              # double 3.670661
	.quad	0x401d01d755bccaf7              # double 7.251798
	.quad	0x401e0e3ffef39086              # double 7.513916
	.quad	0x4013f77963992c8c              # double 4.9916739999999997
	.quad	0x401766f112fd32c6              # double 5.8505289999999999
	.quad	0x401f2d256798958e              # double 7.7940880000000003
	.quad	0x3fffe2f2734f82f5              # double 1.992907
	.quad	0x3ff25f394b7b2895              # double 1.1482479999999999
	.quad	0x40190243137b0707              # double 6.2522089999999997
	.quad	0x4014d548ecd8dbcf              # double 5.2082860000000002
	.quad	0x3fd9e83a109d0636              # double 0.40479900000000002
	.quad	0x40141a3b9ae0c176              # double 5.0256179999999997
	.quad	0x401479b738e6d15b              # double 5.1188630000000002
	.quad	0x402195de15ca6ca0              # double 8.7927099999999996
	.quad	0x40175ee49f51697f              # double 5.8426689999999999
	.quad	0x400632df505d0fa6              # double 2.7748400000000002
	.quad	0x3ff74eaaf35e310e              # double 1.4567060000000001
	.quad	0x4006e3137b07075b              # double 2.8608769999999999
	.quad	0x3ffe727aa68f4b62              # double 1.902949
	.quad	0x401bf0c23fab10ba              # double 6.9851159999999997
	.quad	0x4023058c08b75ea6              # double 9.5108339999999991
	.quad	0x4009d959a30984e4              # double 3.231128
	.quad	0x4012258ea7ce0fc3              # double 4.5366770000000001
	.quad	0x3ff4f143393ab431              # double 1.308902
	.quad	0x4014cba5a038194c              # double 5.198874
	.quad	0x402371e59f2ba9d2              # double 9.7224550000000001
	.quad	0x40225149e8815e39              # double 9.1587669999999992
	.quad	0x3ffe8fe260b2c83f              # double 1.910128
	.quad	0x3ffad80e496ededb              # double 1.677748
	.quad	0x40040644523f67f5              # double 2.5030600000000001
	.quad	0x4006a1975f2cb641              # double 2.8289019999999998
	.quad	0x3ffaf6295208e150              # double 1.685098
	.quad	0x40216cf0b6b6e0d2              # double 8.7127739999999996
	.quad	0x3fde28a6117720c9              # double 0.47123100000000001
	.quad	0x40209a33df2a9d62              # double 8.3011769999999991
	.quad	0x4000842e12620254              # double 2.0645410000000002
	.quad	0x401846c61522a6f4              # double 6.069115
	.quad	0x402355f37329c348              # double 9.6678730000000001
	.quad	0x3ffd9d8b60f1b25f              # double 1.8509629999999999
	.quad	0x400828cf7caa758a              # double 3.019927
	.quad	0x40218b42cc2d6a9c              # double 8.7719939999999994
	.quad	0x4018741e14bdfd26              # double 6.1133959999999998
	.quad	0x402037a9e2bcf91a              # double 8.1087179999999996
	.quad	0x400ea90f733a8a40              # double 3.8325490000000002
	.quad	0x40191b827fa1a0cf              # double 6.2768649999999999
	.quad	0x400e66e9ff0cbaf9              # double 3.8002509999999998
	.quad	0x40203465c70435f0              # double 8.1023390000000006
	.quad	0x401ff6da4484944f              # double 7.9910670000000001
	.quad	0x4010ad3ed527e521              # double 4.1691849999999997
	.quad	0x40154e5bc87db2b3              # double 5.3265219999999998
	.quad	0x401638b827fa1a0d              # double 5.5553900000000001
	.quad	0x40231c8344c37e6f              # double 9.5556889999999992
	.quad	0x4020f9f70de8f6cf              # double 8.488213
	.quad	0x400c8371da37ef5b              # double 3.5641820000000002
	.quad	0x40232ba55d1c3ac9              # double 9.5852459999999997
	.quad	0x401d231fcd24e161              # double 7.2843010000000001
	.quad	0x401e2c8de2ac3223              # double 7.5435100000000003
	.quad	0x401f8959a30984e4              # double 7.884131
	.quad	0x40204727dcbddb98              # double 8.1389759999999995
	.quad	0x401faf07bfe7e1fc              # double 7.920928
	.quad	0x4020ffcd24e160d9              # double 8.4996120000000008
	.quad	0x4014993b7d84901d              # double 5.1496409999999999
	.quad	0x3fe684b1ab0856e7              # double 0.70369800000000005
	.quad	0x4017448adeebb342              # double 5.8169360000000001
	.quad	0x4002eb70ac3a860e              # double 2.3649610000000001
	.quad	0x40209ea619da9c99              # double 8.3098609999999997
	.quad	0x40106f03d145d851              # double 4.1084129999999996
	.quad	0x401d821294573a79              # double 7.3770239999999996
	.quad	0x4022ccc35ce18266              # double 9.3999279999999992
	.quad	0x3fce61f18c9fb613              # double 0.23736399999999999
	.quad	0x401206d5cfaacd9f              # double 4.5066750000000004
	.quad	0x4017e123810e8859              # double 5.969862
	.quad	0x4003d2934acaff6d              # double 2.4778199999999999
	.quad	0x4020a5a31a4bdba1              # double 8.3235100000000006
	.quad	0x4000002c0a4a05de              # double 2.0000840000000002
	.quad	0x400051c970f7b9e0              # double 2.0399349999999998
	.quad	0x4007df7be121ee67              # double 2.9841229999999999
	.quad	0x4001dc4007570c56              # double 2.2325439999999999
	.quad	0x4020d432ebe596c8              # double 8.4144509999999997
	.quad	0x401fa7cf1c3265ae              # double 7.9138760000000001
	.quad	0x40208a500d5e8d54              # double 8.2701419999999998
	.quad	0x400ba33269df97ab              # double 3.4546860000000001
	.quad	0x401de992c8c50050              # double 7.4780990000000003
	.quad	0x3ff25ca29845dc83              # double 1.147616
	.quad	0x4022cd3198288052              # double 9.4007690000000004
	.quad	0x401a1f3a57eaa2a1              # double 6.5304960000000003
	.quad	0x4019f75818c5c9a3              # double 6.4915469999999997
	.quad	0x400d6393ee5eedcc              # double 3.6736219999999999
	.quad	0x40155541d8e86402              # double 5.333259
	.quad	0x3fd597f62b6ae7d5              # double 0.33739999999999998
	.quad	0x400fccbe1eb4202e              # double 3.9749720000000002
	.quad	0x4012280d3cff64d0              # double 4.5391130000000004
	.quad	0x40214db61bb05faf              # double 8.6517800000000005
	.quad	0x4000cccee5abc0e4              # double 2.1000040000000002
	.quad	0x3ff18d62bf11f927              # double 1.097018
	.quad	0x4021f98a222d5172              # double 8.9873820000000002
	.quad	0x4013bcad14a0a0f5              # double 4.9342540000000001
	.quad	0x3ff28450268900c5              # double 1.157303
	.quad	0x40216aeb80ecfa6a              # double 8.7088280000000005
	.quad	0x4023320232096788              # double 9.5976730000000003
	.quad	0x4023fd970b49e01e              # double 9.9952930000000002
	.quad	0x4003c646f1561911              # double 2.4718149999999999
	.quad	0x3ff3ad288ce703b0              # double 1.2297750000000001
	.quad	0x400fb3215fcc1872              # double 3.962466
	.quad	0x4007e5e5f30e7ff6              # double 2.9872550000000002
	.quad	0x401c0eeaa6d26741              # double 7.0145670000000004
	.quad	0x401f1fb58d1526d9              # double 7.7809660000000002
	.quad	0x401fa116a8b8f14e              # double 7.9073130000000003
	.quad	0x401e9492bc2fc697              # double 7.6450909999999998
	.quad	0x400bf5f3d7d3910c              # double 3.4950939999999999
	.quad	0x401b6c3ac929aa1d              # double 6.8556929999999996
	.quad	0x401b82938de6ddf0              # double 6.877516
	.quad	0x3ff58a5ce5b4245f              # double 1.3462799999999999
	.quad	0x40232e1a8262456f              # double 9.5900459999999991
	.quad	0x401ff31db445ed4a              # double 7.9874179999999999
	.quad	0x40126a9eb2074ea9              # double 4.6041210000000001
	.quad	0x401d57a89331a08c              # double 7.335604
	.quad	0x4009a85a921ccd96              # double 3.2072039999999999
	.quad	0x40143f559b3d07c8              # double 5.0618499999999997
	.quad	0x400ce241c3efae79              # double 3.6104769999999999
	.quad	0x4003f9d5e4a38327              # double 2.4969899999999998
	.quad	0x402125e58e64b231              # double 8.5740169999999996
	.quad	0x401ba8644523f67f              # double 6.9144449999999997
	.quad	0x401fea27ae9ab29e              # double 7.9786669999999997
	.quad	0x3fffea18372e6a77              # double 1.9946520000000001
	.quad	0x401bc17763e4abe7              # double 6.9389320000000003
	.quad	0x400a7254e6e221c9              # double 3.3058260000000002
	.quad	0x3fd74e11dbca9692              # double 0.36414000000000002
	.quad	0x40225f6f6d762520              # double 9.1863969999999995
	.quad	0x4012d580c308feac              # double 4.7084989999999998
	.quad	0x40211e279dd3bafe              # double 8.5588960000000007
	.quad	0x40229f7121ab4b73              # double 9.3114100000000004
	.quad	0x4012dd5b24e9c454              # double 4.7161679999999997
	.quad	0x3fea47a398201cd6              # double 0.821245
	.quad	0x4017b6c050bd87b5              # double 5.9284679999999996
	.quad	0x40135e2541d8e864              # double 4.841939
	.quad	0x3ffcb845564b6630              # double 1.794988
	.quad	0x401d752fc2656abe              # double 7.3644400000000001
	.quad	0x3ff2820817fc7608              # double 1.1567460000000001
	.quad	0x402375fc5cdd50a9              # double 9.7304410000000007
	.quad	0x401bd7928e0c9d9d              # double 6.9605199999999998
	.quad	0x3f991ab8e8ea39c5              # double 0.024516
	.quad	0x40200927d45a5fc8              # double 8.0178820000000002
	.quad	0x4019f9d5a187a4a5              # double 6.4939790000000004
	.quad	0x40235d0d2806af47              # double 9.6817410000000005
	.quad	0x3fe312556d19dece              # double 0.59598799999999996
	.quad	0x3facb6c7a7c9de05              # double 0.056082
	.quad	0x3ff4d94c01605250              # double 1.303051
	.quad	0x3ffb2a18372e6a77              # double 1.6977770000000001
	.quad	0x401eb2a5e785b5b7              # double 7.6744609999999999
	.quad	0x3fe23cf70153bd16              # double 0.56994199999999995
	.quad	0x401aecf13cee9dd8              # double 6.7313890000000001
	.quad	0x4008fa20ddc61954              # double 3.1221329999999998
	.quad	0x40125625a682b628              # double 4.5841279999999998
	.quad	0x40138d6e47dc37a4              # double 4.8881160000000001
	.quad	0x4012c46f587d6f97              # double 4.6918309999999996
	.quad	0x3ffe6edcc20d562a              # double 1.902066
	.quad	0x3fe68f14db59578a              # double 0.70496599999999998
	.quad	0x40203f4b61fe21d9              # double 8.1236219999999992
	.quad	0x401a5a9b06812381              # double 6.5884819999999999
	.quad	0x4003a960b6f9fcb1              # double 2.4577040000000001
	.quad	0x401f9863beec397a              # double 7.8988180000000003
	.quad	0x3ff647075b3e1438              # double 1.3923410000000001
	.quad	0x4012190e66cb1034              # double 4.5244689999999999
	.quad	0x401c193e5fb71fbc              # double 7.0246519999999997
	.quad	0x4017c8650e779208              # double 5.9456980000000001
	.quad	0x4017a9a4df47f994              # double 5.9156680000000001
	.quad	0x4012974b40703298              # double 4.647748
	.quad	0x401c4be5d9e40c84              # double 7.0741189999999996
	.quad	0x402372352eb5f5f1              # double 9.7230620000000005
	.quad	0x4012c88051c9f72f              # double 4.6958019999999996
	.quad	0x4007afc04c8bc9cd              # double 2.9608159999999999
	.quad	0x401c43879c4113c7              # double 7.0659470000000004
	.quad	0x4013e95703f2d3c8              # double 4.9778710000000004
	.quad	0x3fe6d464dc22ab26              # double 0.71342700000000003
	.quad	0x4010e1cef240fa9c              # double 4.2205159999999999
	.quad	0x4018f394317acc4f              # double 6.23787
	.quad	0x40076dec1c1d6cf8              # double 2.9286729999999999
	.quad	0x3fd8f53825e13b19              # double 0.38996700000000001
	.quad	0x400a808e9b38d60a              # double 3.3127719999999998
	.quad	0x4005e40852b4d8ba              # double 2.7363439999999999
	.quad	0x401703e1c9b41398              # double 5.7537909999999997
	.quad	0x400c3cdee34fc611              # double 3.529722
	.quad	0x4001302c4d65e460              # double 2.1485219999999998
	.quad	0x3ff494ff0025bfad              # double 1.286376
	.quad	0x401c97403dddb121              # double 7.1477060000000003
	.quad	0x4014c70fbeb9e493              # double 5.1943960000000002
	.quad	0x4021d264e48626f6              # double 8.9109259999999999
	.quad	0x400a5fe542e557de              # double 3.296824
	.quad	0x3ff2f8b26394face              # double 1.1857169999999999
	.quad	0x3ff1e2ea0fd3b29a              # double 1.117899
	.quad	0x40145ae5796bfca8              # double 5.0887659999999997
	.quad	0x4017ec0a8d21bc12              # double 5.9805089999999996
	.quad	0x4020f52a1f8e3ac1              # double 8.4788370000000004
	.quad	0x3ffcd3eb399f5dff              # double 1.8017380000000001
	.quad	0x4023131f255f351a              # double 9.5373470000000005
	.quad	0x3fef2934acaff6d3              # double 0.97377999999999997
	.quad	0x401a796ededaec4a              # double 6.6185869999999998
	.quad	0x40092a3f8982cb21              # double 3.145629
	.quad	0x3fe8fb6dca07f66f              # double 0.78069200000000005
	.quad	0x4020fefcdee34fc6              # double 8.4980229999999999
	.quad	0x402339d96e9bbf0e              # double 9.6129870000000004
	.quad	0x401e9d2999567dbb              # double 7.6534789999999999
	.quad	0x40109210be9424e6              # double 4.1426420000000004
	.quad	0x3fd8c3dab5c39bcc              # double 0.38695400000000002
	.quad	0x4023998288051c9f              # double 9.7998239999999992
	.quad	0x400a753f7ced9168              # double 3.3072499999999998
	.quad	0x4004c766c6de7642              # double 2.5973639999999998
	.quad	0x4011bd566cf41f21              # double 4.4348999999999998
	.quad	0x3fe09d6f112fd32c              # double 0.51921799999999996
	.quad	0x402074460ed80a18              # double 8.2270970000000005
	.quad	0x3fe029d8409e55c1              # double 0.505108
	.quad	0x400d4ce1c58255b0              # double 3.6625399999999999
	.quad	0x400c0c9d16fc9bc7              # double 3.5061589999999998
	.quad	0x3ff8dd76683c297c              # double 1.554068
	.quad	0x3fd3df1e0828c36e              # double 0.31049300000000002
	.quad	0x3fe054eb13dfb0d5              # double 0.51036599999999999
	.quad	0x402398d477bbf940              # double 9.798496
	.quad	0x400bf18090b417ca              # double 3.4929209999999999
	.quad	0x3fc02ff8ec0f8833              # double 0.12646399999999999
	.quad	0x40232d5065732160              # double 9.5885040000000004
	.quad	0x40164603925bb7b7              # double 5.5683730000000002
	.quad	0x401f7f9a8cdea034              # double 7.8746130000000001
	.quad	0x400c0bb6ed677708              # double 3.5057200000000002
	.quad	0x401e18ed1bf7ad4b              # double 7.5243419999999998
	.quad	0x4007fe6ff7dfa00e              # double 2.9992369999999999
	.quad	0x40146ee2003ab863              # double 5.1082840000000003
	.quad	0x3fecbd66277c45cc              # double 0.89812000000000002
	.quad	0x4016d90b84988095              # double 5.7119580000000001
	.quad	0x4004858b3f63c31e              # double 2.565207
	.quad	0x4008244955b4677b              # double 3.0177179999999999
	.quad	0x3fbc43914f483cb0              # double 0.110406
	.quad	0x400a0bca5375c8da              # double 3.255757
	.quad	0x4021cfe154434e33              # double 8.9060159999999993
	.quad	0x4004b0068db8bac7              # double 2.58595
	.quad	0x4018509a24031487              # double 6.0787129999999996
	.quad	0x40154675ddd2ae8e              # double 5.3188089999999999
	.quad	0x3feb18f3eccc4695              # double 0.84679599999999999
	.quad	0x40124532e7b3d8e0              # double 4.567577
	.quad	0x4023995d91ab8e8f              # double 9.7995420000000006
	.quad	0x40108761cbccf28c              # double 4.1322089999999996
	.quad	0x40027270b06c43f6              # double 2.305879
	.quad	0x3ffce2d40aaeafab              # double 1.8053779999999999
	.quad	0x3ff655831f03d146              # double 1.395877
	.quad	0x400905c78a6dacac              # double 3.1278220000000001
	.quad	0x400cb37c99ae924f              # double 3.5876399999999999
	.quad	0x4019c7a24894c448              # double 6.4449550000000002
	.quad	0x4018cbee3d5fdcdf              # double 6.1991509999999996
	.quad	0x4021a97ca2120e1f              # double 8.8310289999999991
	.quad	0x4000e5a250f84018              # double 2.1121259999999999
	.quad	0x4018fb317efe0ce1              # double 6.2453060000000002
	.quad	0x401594ce8101f31f              # double 5.3953189999999998
	.quad	0x40177b5568e820e6              # double 5.8704429999999999
	.quad	0x4022fc7820a30db7              # double 9.4931040000000006
	.quad	0x400d6f8d716d2aa6              # double 3.6794690000000001
	.quad	0x400931572580c309              # double 3.149092
	.quad	0x401f5d42c3c9eecc              # double 7.841075
	.quad	0x40213ac9f2fdb8fe              # double 8.6148220000000002
	.quad	0x4004031df761cbcd              # double 2.501522
	.quad	0x3ff874a1272c94b4              # double 1.5284740000000001
	.quad	0x40120b324851a869              # double 4.5109339999999998
	.quad	0x401ca50331e3a7db              # double 7.1611450000000003
	.quad	0x401534a44c7b02d6              # double 5.3014080000000003
	.quad	0x40122674d1633483              # double 4.5375550000000002
	.quad	0x40001d89ce4a7b4e              # double 2.0144229999999999
	.quad	0x400634e7685985ad              # double 2.7758319999999999
	.quad	0x401115de58e64b23              # double 4.2713559999999999
	.quad	0x401a75fa22706d50              # double 6.6152119999999996
	.quad	0x400cf4efcbd55608              # double 3.6195979999999999
	.quad	0x40203f4cf4a558ea              # double 8.1236339999999991
	.quad	0x3fe2b0318b934699              # double 0.58400799999999997
	.quad	0x4015a46ed245b292              # double 5.4105790000000002
	.quad	0x4016523d4f15e7c9              # double 5.5803120000000002
	.quad	0x402255462c343b71              # double 9.1665510000000001
	.quad	0x40186dc2f405f6ba              # double 6.107189
	.quad	0x3fcc9db65ecc3e32              # double 0.22356300000000001
	.quad	0x40136ca925fe974a              # double 4.8561139999999998
	.quad	0x400f3c5479d4d834              # double 3.904458
	.quad	0x401aa75a31a4bdba              # double 6.66343
	.quad	0x4022e453d20f2bed              # double 9.4459520000000001
	.quad	0x4013d744b2b777d1              # double 4.960223
	.quad	0x40186c6ef3d3a1d3              # double 6.1058919999999999
	.quad	0x4011307852f7f499              # double 4.2973340000000002
	.quad	0x402226e807bbb624              # double 9.0759889999999998
	.quad	0x402124f355cd91ef              # double 8.5721690000000006
	.quad	0x40234888f861a60d              # double 9.6416699999999995
	.quad	0x4017c84dfce3150e              # double 5.9456100000000003
	.quad	0x400653d102bc72e2              # double 2.7909259999999998
	.quad	0x401c7f0d844d013b              # double 7.1240750000000004
	.quad	0x401a9100e6afcce2              # double 6.6416050000000002
	.quad	0x40102769a91105e2              # double 4.0384890000000002
	.quad	0x401408c8eef1bac3              # double 5.0085790000000001
	.quad	0x40061a5b0ff10ecb              # double 2.7628689999999998
	.quad	0x4011b7a3db3bfb59              # double 4.4293360000000002
	.quad	0x40086e4c0df58c09              # double 3.0538560000000001
	.quad	0x401a904d98394749              # double 6.6409209999999996
	.size	.L__constant_3500xf64, 28000

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
