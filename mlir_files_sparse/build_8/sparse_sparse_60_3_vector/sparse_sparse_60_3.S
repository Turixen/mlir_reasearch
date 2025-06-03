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
	.quad	0x413ddd1860dca8e3              # double 1957144.378367
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
	.quad	4000                            # 0xfa0
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4000                            # 0xfa0
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
	lui	a7, %hi(.L__constant_4000xindex)
	addi	a7, a7, %lo(.L__constant_4000xindex)
	lui	t0, %hi(.L__constant_4000xf64)
	addi	t0, t0, %lo(.L__constant_4000xf64)
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
	.quad	95                              # 0x5f
	.quad	135                             # 0x87
	.quad	186                             # 0xba
	.quad	221                             # 0xdd
	.quad	254                             # 0xfe
	.quad	307                             # 0x133
	.quad	339                             # 0x153
	.quad	370                             # 0x172
	.quad	426                             # 0x1aa
	.quad	463                             # 0x1cf
	.quad	501                             # 0x1f5
	.quad	554                             # 0x22a
	.quad	584                             # 0x248
	.quad	622                             # 0x26e
	.quad	673                             # 0x2a1
	.quad	701                             # 0x2bd
	.quad	731                             # 0x2db
	.quad	784                             # 0x310
	.quad	820                             # 0x334
	.quad	849                             # 0x351
	.quad	905                             # 0x389
	.quad	938                             # 0x3aa
	.quad	972                             # 0x3cc
	.quad	1025                            # 0x401
	.quad	1053                            # 0x41d
	.quad	1084                            # 0x43c
	.quad	1142                            # 0x476
	.quad	1167                            # 0x48f
	.quad	1196                            # 0x4ac
	.quad	1249                            # 0x4e1
	.quad	1283                            # 0x503
	.quad	1322                            # 0x52a
	.quad	1382                            # 0x566
	.quad	1417                            # 0x589
	.quad	1440                            # 0x5a0
	.quad	1497                            # 0x5d9
	.quad	1524                            # 0x5f4
	.quad	1551                            # 0x60f
	.quad	1603                            # 0x643
	.quad	1630                            # 0x65e
	.quad	1665                            # 0x681
	.quad	1716                            # 0x6b4
	.quad	1747                            # 0x6d3
	.quad	1780                            # 0x6f4
	.quad	1836                            # 0x72c
	.quad	1874                            # 0x752
	.quad	1906                            # 0x772
	.quad	1970                            # 0x7b2
	.quad	2002                            # 0x7d2
	.quad	2043                            # 0x7fb
	.quad	2099                            # 0x833
	.quad	2131                            # 0x853
	.quad	2162                            # 0x872
	.quad	2220                            # 0x8ac
	.quad	2248                            # 0x8c8
	.quad	2284                            # 0x8ec
	.quad	2345                            # 0x929
	.quad	2378                            # 0x94a
	.quad	2409                            # 0x969
	.quad	2462                            # 0x99e
	.quad	2490                            # 0x9ba
	.quad	2521                            # 0x9d9
	.quad	2576                            # 0xa10
	.quad	2608                            # 0xa30
	.quad	2643                            # 0xa53
	.quad	2704                            # 0xa90
	.quad	2737                            # 0xab1
	.quad	2764                            # 0xacc
	.quad	2816                            # 0xb00
	.quad	2852                            # 0xb24
	.quad	2885                            # 0xb45
	.quad	2948                            # 0xb84
	.quad	2980                            # 0xba4
	.quad	3008                            # 0xbc0
	.quad	3068                            # 0xbfc
	.quad	3093                            # 0xc15
	.quad	3126                            # 0xc36
	.quad	3185                            # 0xc71
	.quad	3211                            # 0xc8b
	.quad	3242                            # 0xcaa
	.quad	3300                            # 0xce4
	.quad	3330                            # 0xd02
	.quad	3357                            # 0xd1d
	.quad	3414                            # 0xd56
	.quad	3448                            # 0xd78
	.quad	3477                            # 0xd95
	.quad	3536                            # 0xdd0
	.quad	3570                            # 0xdf2
	.quad	3599                            # 0xe0f
	.quad	3651                            # 0xe43
	.quad	3682                            # 0xe62
	.quad	3712                            # 0xe80
	.quad	3769                            # 0xeb9
	.quad	3794                            # 0xed2
	.quad	3826                            # 0xef2
	.quad	3888                            # 0xf30
	.quad	3913                            # 0xf49
	.quad	3944                            # 0xf68
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	98                              # 0x62
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	64                              # 0x40
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x4020fd44bb1af3a1              # double 8.4946649999999995
	.quad	0x40231b925bb7b6bb              # double 9.5538509999999998
	.quad	0x4021d3a365cb35f4              # double 8.9133560000000002
	.quad	0x4023616b76709fa5              # double 9.6902729999999994
	.quad	0x4005590d173fb7a6              # double 2.668482
	.quad	0x4022b0242d05f288              # double 9.3440259999999994
	.quad	0x400f2903ea704bc2              # double 3.8950269999999998
	.quad	0x4004d10f51ac9afe              # double 2.6020799999999999
	.quad	0x3fd0e8b3b320535d              # double 0.26420300000000002
	.quad	0x3ff26497fa5d28d0              # double 1.149559
	.quad	0x3fdfc8d9f90539fc              # double 0.49663400000000002
	.quad	0x402039f4906034f4              # double 8.113194
	.quad	0x4023ed807fed2029              # double 9.9638709999999992
	.quad	0x400400e065300581              # double 2.5004279999999999
	.quad	0x401ad02645e4e69f              # double 6.703271
	.quad	0x40124fcefaa4766c              # double 4.5779379999999996
	.quad	0x4023ea7179bfdf7f              # double 9.9578970000000008
	.quad	0x40228d32a497fa5d              # double 9.2757769999999997
	.quad	0x3ffa814b599aa609              # double 1.656566
	.quad	0x400be2c98e53eb3a              # double 3.4857360000000002
	.quad	0x40117ebd09e12a52              # double 4.3737680000000001
	.quad	0x40225edfc5cdd50b              # double 9.1853010000000008
	.quad	0x4015b4ff43419e30              # double 5.426755
	.quad	0x4008c753e707e176              # double 3.0973280000000001
	.quad	0x401cfffd1dcd7061              # double 7.2499890000000002
	.quad	0x402354bab649d389              # double 9.6654870000000006
	.quad	0x4009f41b75a74c0a              # double 3.2441930000000001
	.quad	0x4021b7fd1dcd7061              # double 8.8593530000000005
	.quad	0x4023dda858793dd9              # double 9.9329249999999991
	.quad	0x3fb18266772d5e07              # double 0.068395999999999998
	.quad	0x3ffb3e1a8262456f              # double 1.7026619999999999
	.quad	0x401238ce2d1f1cfc              # double 4.5554740000000002
	.quad	0x4012a353f7ced917              # double 4.6595000000000004
	.quad	0x4014ce11dbca9692              # double 5.2012400000000003
	.quad	0x3fca9d0e991ff716              # double 0.20791799999999999
	.quad	0x400c5dd872f33ca3              # double 3.5458229999999999
	.quad	0x3fef689ca18bd662              # double 0.98151999999999995
	.quad	0x4022683d9a95421c              # double 9.2035949999999999
	.quad	0x40221441bb8c32a9              # double 9.0395640000000004
	.quad	0x40207769014b599b              # double 8.2332230000000006
	.quad	0x401565336deb95e6              # double 5.3488290000000003
	.quad	0x4020fc929aa1d756              # double 8.4933060000000005
	.quad	0x401605842b734b51              # double 5.5053869999999998
	.quad	0x40126d362e903644              # double 4.6066520000000004
	.quad	0x401fca57214f0521              # double 7.9475980000000001
	.quad	0x4006649235f80991              # double 2.7991069999999998
	.quad	0x3ff62afcce1c5825              # double 1.3854949999999999
	.quad	0x40045f4cb1897a68              # double 2.5465330000000002
	.quad	0x4023560221426fe7              # double 9.6679849999999998
	.quad	0x3febde39713ad5bf              # double 0.87087700000000001
	.quad	0x40156106ab14ec20              # double 5.3447519999999997
	.quad	0x40231907d912556d              # double 9.5488879999999998
	.quad	0x401b112d77318fc5              # double 6.766775
	.quad	0x4018bdb9c7368ad7              # double 6.1852790000000004
	.quad	0x4023eb8433d6c722              # double 9.9599930000000008
	.quad	0x3ff89e9d0e991ff7              # double 1.538724
	.quad	0x4008d640e9d51b50              # double 3.104616
	.quad	0x4016d10be9424e59              # double 5.7041469999999999
	.quad	0x40221d944aa53fc0              # double 9.0577719999999999
	.quad	0x40162a47ecfe9b7c              # double 5.54129
	.quad	0x401c4ac710cb295f              # double 7.0730250000000003
	.quad	0x40159cc63f141206              # double 5.4031000000000002
	.quad	0x4022f0140dd3fe19              # double 9.4689029999999991
	.quad	0x401c4c996b7670a0              # double 7.0748040000000003
	.quad	0x40183b65668c2614              # double 6.0580040000000004
	.quad	0x4012912b5e529bae              # double 4.6417669999999998
	.quad	0x40211189bd8383ae              # double 8.5342540000000007
	.quad	0x40213d4562e09fe8              # double 8.6196699999999993
	.quad	0x40201a08e1501190              # double 8.0508489999999995
	.quad	0x40187737da61e0c6              # double 6.1164240000000003
	.quad	0x4005875360d02470              # double 2.6910769999999999
	.quad	0x40125afea3df6db9              # double 4.5888619999999998
	.quad	0x401b77a311e85fd0              # double 6.8668329999999997
	.quad	0x40091a836eb4e981              # double 3.1379459999999999
	.quad	0x3ff5f6c8b4395810              # double 1.3727499999999999
	.quad	0x4014c0de4c51116b              # double 5.1883480000000004
	.quad	0x40210a808c8259e2              # double 8.5205120000000001
	.quad	0x3fd89a0f0a5efe93              # double 0.38440299999999999
	.quad	0x40132d5e8d5410f9              # double 4.7943059999999997
	.quad	0x4008cbcc6c54bcf1              # double 3.0995110000000001
	.quad	0x401d51d0c8041030              # double 7.329898
	.quad	0x4013898f1d3ed528              # double 4.8843350000000001
	.quad	0x401e07f737da61e1              # double 7.5077790000000002
	.quad	0x401f501fb82c2bd8              # double 7.828246
	.quad	0x3ff80ec743201041              # double 1.5036080000000001
	.quad	0x4017a0214ad362e9              # double 5.906377
	.quad	0x401c447fdc5931ca              # double 7.0668939999999996
	.quad	0x3ff60331e3a7daa5              # double 1.37578
	.quad	0x3fed80c9539b8887              # double 0.92197099999999998
	.quad	0x3ffe3c9ff92f2b67              # double 1.8898010000000001
	.quad	0x3feb702602c9081c              # double 0.85743999999999997
	.quad	0x401266f0068db8bb              # double 4.6005250000000002
	.quad	0x3fe38c6f7a0b5ed9              # double 0.61089300000000002
	.quad	0x3ff849129888f862              # double 1.5178400000000001
	.quad	0x40031280f12c27a6              # double 2.3840349999999999
	.quad	0x400ddaac53b0813d              # double 3.7317740000000001
	.quad	0x4008d0728e92d55a              # double 3.1017809999999999
	.quad	0x4000bc536d655e29              # double 2.0919560000000001
	.quad	0x402142f1ed17c5ef              # double 8.6307519999999993
	.quad	0x4017db25f633ce64              # double 5.9640120000000003
	.quad	0x40115fb1183b6028              # double 4.3434489999999997
	.quad	0x40185115592d98bf              # double 6.0791829999999996
	.quad	0x40044a00192a7371              # double 2.536133
	.quad	0x401167c6327ed84d              # double 4.3513419999999998
	.quad	0x3feb02d9cf13ceea              # double 0.84409800000000001
	.quad	0x4006c583e8576cce              # double 2.8464429999999998
	.quad	0x400215d91ab8e8ea              # double 2.2606679999999999
	.quad	0x3fb42be8bc169c24              # double 0.078795000000000004
	.quad	0x402179fa333764f1              # double 8.7382369999999998
	.quad	0x401f1611ba3ca750              # double 7.7715519999999998
	.quad	0x4014234b0e1b4bb6              # double 5.0344660000000001
	.quad	0x3fc5f993d5347a5b              # double 0.171679
	.quad	0x4019a320d9945b6c              # double 6.4093049999999998
	.quad	0x4012c768dfbd6a59              # double 4.6947359999999998
	.quad	0x4016e1f46ed245b3              # double 5.7206590000000004
	.quad	0x3ff68b8e086bdf4c              # double 1.409071
	.quad	0x4020a24bba12b5e5              # double 8.3169839999999997
	.quad	0x3ff5cc6a3bddfca0              # double 1.362406
	.quad	0x4020fae3821af7d3              # double 8.4900169999999999
	.quad	0x4023ebe9c886162f              # double 9.9607679999999998
	.quad	0x40176d5f99c38b05              # double 5.8568100000000003
	.quad	0x40237964628027d9              # double 9.7370940000000008
	.quad	0x40149ee7c49fd7a1              # double 5.1551809999999998
	.quad	0x40228806d0d4994a              # double 9.2656770000000002
	.quad	0x3fe5b2e1693c03bc              # double 0.67808599999999997
	.quad	0x40175d3cff64cf8d              # double 5.8410529999999996
	.quad	0x401b79003eea209b              # double 6.8681650000000003
	.quad	0x40185fd75e2046c7              # double 6.0935949999999997
	.quad	0x4021d451116a8b8f              # double 8.9146809999999999
	.quad	0x4006f35fc3b4f616              # double 2.8688349999999998
	.quad	0x3ff705ee568a5050              # double 1.4389479999999999
	.quad	0x4022620b1bbcf4e8              # double 9.1914909999999991
	.quad	0x40179d50225742dd              # double 5.903626
	.quad	0x3fe8d805e5f30e80              # double 0.77637
	.quad	0x402110c308feac43              # double 8.5327380000000002
	.quad	0x400e14751ce28ed6              # double 3.759989
	.quad	0x400a040d90e23af3              # double 3.251979
	.quad	0x40067cb6848beb5b              # double 2.8108949999999999
	.quad	0x40208b89f83be660              # double 8.2725369999999998
	.quad	0x4022387a072d1aeb              # double 9.1103059999999996
	.quad	0x3ffad7cf5f4e4431              # double 1.6776880000000001
	.quad	0x400fa3201040bfe4              # double 3.9546510000000001
	.quad	0x3feed10d38cda6e7              # double 0.96301899999999995
	.quad	0x402348c9d9d3458d              # double 9.6421650000000003
	.quad	0x3feaa376922d948e              # double 0.83245400000000003
	.quad	0x401512c1b10fd7e4              # double 5.2683169999999997
	.quad	0x3feb2682b6284599              # double 0.84845099999999996
	.quad	0x401b19c7bcc2938e              # double 6.7751760000000001
	.quad	0x4022fcac6cdaf4ae              # double 9.4935030000000005
	.quad	0x400dca2b1704ff43              # double 3.7237149999999999
	.quad	0x401537fa5d28d003              # double 5.3046660000000001
	.quad	0x4000b23aafff36ac              # double 2.0870259999999998
	.quad	0x401a51b9b66f9336              # double 6.5798100000000002
	.quad	0x400480c9d9d3458d              # double 2.5628850000000001
	.quad	0x401303504c48adef              # double 4.7532360000000002
	.quad	0x4017c939a7c17a89              # double 5.9465089999999998
	.quad	0x3ff66dcf4623d0c0              # double 1.4018090000000001
	.quad	0x401a581d3aa369fd              # double 6.586049
	.quad	0x3ffa62a6f3f52fc2              # double 1.6490849999999999
	.quad	0x40129011904b3c3e              # double 4.6406919999999996
	.quad	0x401ad3ec02f2f987              # double 6.7069549999999998
	.quad	0x401530d887ebf22c              # double 5.297701
	.quad	0x400d7afa7221858c              # double 3.6850480000000001
	.quad	0x400aa0ad03d9a954              # double 3.3284549999999999
	.quad	0x3ff1c1c8216c6152              # double 1.10981
	.quad	0x3fe9be4abe6a337b              # double 0.80447900000000006
	.quad	0x400dbfefbf401c50              # double 3.7187190000000001
	.quad	0x4014cf0cfe154435              # double 5.2021980000000001
	.quad	0x402353384fd2a62b              # double 9.6625390000000006
	.quad	0x400531aeb3dd11be              # double 2.6492589999999998
	.quad	0x401d9adc4c9c90c5              # double 7.4012310000000001
	.quad	0x4001786db50f40e6              # double 2.1838030000000002
	.quad	0x3ff6c467381d7dbf              # double 1.4229499999999999
	.quad	0x4020f98b2e9ccb7d              # double 8.4873899999999995
	.quad	0x40234deaee2003ac              # double 9.6521830000000008
	.quad	0x400e46c093d96638              # double 3.7845469999999999
	.quad	0x402078fe260b2c84              # double 8.2363140000000001
	.quad	0x4001c77b395c4220              # double 2.2224029999999999
	.quad	0x40151c93ea2d2fe4              # double 5.277908
	.quad	0x4010ba005c4651f4              # double 4.1816420000000001
	.quad	0x40155c9b41398634              # double 5.3404360000000004
	.quad	0x4000acb07d0aed9a              # double 2.0843210000000001
	.quad	0x4012c5b8561d4307              # double 4.6930860000000001
	.quad	0x401d7728e92d55a4              # double 7.3663670000000003
	.quad	0x400d46833c60029f              # double 3.65943
	.quad	0x40222105186db50f              # double 9.0644919999999995
	.quad	0x4022be2c98e53eb4              # double 9.3714340000000007
	.quad	0x4021837dc7abfb9c              # double 8.7568190000000001
	.quad	0x400d95de58e64b23              # double 3.698178
	.quad	0x40027cac8e68e3ef              # double 2.3108759999999999
	.quad	0x401269d30270f388              # double 4.6033439999999999
	.quad	0x4014b7179bfdf7e8              # double 5.178801
	.quad	0x401db2f901083dbc              # double 7.4247779999999999
	.quad	0x401807e73a365cb3              # double 6.0077179999999997
	.quad	0x4019c41700cd8559              # double 6.4414939999999996
	.quad	0x4007276102795704              # double 2.894228
	.quad	0x4021ef90b8498809              # double 8.9679009999999995
	.quad	0x3fdcf61aa3f034b1              # double 0.45252100000000001
	.quad	0x401149ce4a7b4e55              # double 4.322076
	.quad	0x4004e245f5ad96a7              # double 2.6104850000000002
	.quad	0x3ff6069d7342edbb              # double 1.3766149999999999
	.quad	0x400f31d92b7fe08b              # double 3.89934
	.quad	0x400a1e6ddf00abf7              # double 3.2648579999999998
	.quad	0x40146fee2c98e53f              # double 5.1093070000000003
	.quad	0x40203be425aee632              # double 8.1169750000000001
	.quad	0x3fff2b8305d95dd5              # double 1.948123
	.quad	0x400fae874c8ffb8b              # double 3.9602189999999999
	.quad	0x401837774aba3876              # double 6.0541660000000004
	.quad	0x4012adad31fcd24e              # double 4.6696059999999999
	.quad	0x40165dbbe0157eed              # double 5.5915369999999998
	.quad	0x40102eb7cbb3c819              # double 4.045623
	.quad	0x3ffaf4d48882f0e1              # double 1.6847730000000001
	.quad	0x401ac8d6d3b6cbda              # double 6.6961320000000004
	.quad	0x401f7ce4ead0c3d2              # double 7.8719669999999997
	.quad	0x400861f969e3c969              # double 3.0478390000000002
	.quad	0x402321c2a0232096              # double 9.5659379999999992
	.quad	0x40184e7e1fc08fa8              # double 6.0766530000000003
	.quad	0x3ffe8dc981beb181              # double 1.909616
	.quad	0x400894af4f0d844d              # double 3.0726
	.quad	0x3ff7f9ee02a77a2d              # double 1.498518
	.quad	0x402357f88765ba6f              # double 9.671818
	.quad	0x4023496bfca85cab              # double 9.643402
	.quad	0x40126df7e80389f8              # double 4.6073909999999998
	.quad	0x4016a59ab6d00b46              # double 5.6617230000000003
	.quad	0x40225b1465e89225              # double 9.1778899999999997
	.quad	0x401e853dea465a57              # double 7.6301189999999996
	.quad	0x4013922d5171e29b              # double 4.8927509999999996
	.quad	0x40228f7b17ce52df              # double 9.2802360000000004
	.quad	0x3fe0ee43aa79bbae              # double 0.52908500000000003
	.quad	0x3fef8fe047d3d428              # double 0.98631299999999999
	.quad	0x3feeb2d4d4024b34              # double 0.95933000000000001
	.quad	0x401ccec2ce464990              # double 7.2019149999999996
	.quad	0x4023a30b7c3504c5              # double 9.8184470000000008
	.quad	0x4002a780fdc1615f              # double 2.3317890000000001
	.quad	0x3fc7f6db940fecdd              # double 0.187221
	.quad	0x3ff988e368f08462              # double 1.59592
	.quad	0x401e154c122749f1              # double 7.520798
	.quad	0x401d24180d3cff65              # double 7.2852480000000002
	.quad	0x4022fe4dc22ab25b              # double 9.4966869999999996
	.quad	0x4019fd63022dd7aa              # double 6.4974480000000003
	.quad	0x3ff48970f7b9e061              # double 1.283555
	.quad	0x3ff9b302f72b4528              # double 1.606204
	.quad	0x4023ae9af5ba2be0              # double 9.8410259999999994
	.quad	0x401554c271fff79d              # double 5.3327730000000004
	.quad	0x401c2d45a5fc7e6b              # double 7.0442109999999998
	.quad	0x4016afeeb2d0a244              # double 5.6718089999999997
	.quad	0x40226c23315d701e              # double 9.2112060000000007
	.quad	0x40196475a31a4bdc              # double 6.3481050000000003
	.quad	0x3fe3f31d2e0e3044              # double 0.62342699999999995
	.quad	0x4021fd9018e75793              # double 8.9952400000000008
	.quad	0x401465efe9318762              # double 5.0995480000000004
	.quad	0x3fe41348b220791c              # double 0.62735399999999997
	.quad	0x3feff3a797891e21              # double 0.99849299999999996
	.quad	0x40101ff865d7cb2e              # double 4.0312210000000004
	.quad	0x3ff657763e4abe6a              # double 1.396353
	.quad	0x4006d83be6601bca              # double 2.8555830000000002
	.quad	0x3ffd4b4bf8fcd680              # double 1.830883
	.quad	0x40226f9335d249e4              # double 9.2179199999999994
	.quad	0x3fd51d2178f68be3              # double 0.329903
	.quad	0x401db528f190d174              # double 7.426914
	.quad	0x4022850b0f27bb30              # double 9.2598500000000001
	.quad	0x401935a6c5d206c8              # double 6.3023939999999996
	.quad	0x40124a6d698fe692              # double 4.5726829999999996
	.quad	0x401ba641f644955b              # double 6.9123609999999998
	.quad	0x400bfc0b13597918              # double 3.498068
	.quad	0x400281e03f705858              # double 2.3134160000000001
	.quad	0x4009db320535c9e6              # double 3.2320289999999998
	.quad	0x3fd1df2ecf206424              # double 0.27924700000000002
	.quad	0x401a9de8709741d1              # double 6.6542070000000004
	.quad	0x401d5497b7414a4d              # double 7.3326099999999999
	.quad	0x3ff530db6a1e81cb              # double 1.3244279999999999
	.quad	0x3ff862be0589acbd              # double 1.5241070000000001
	.quad	0x4020e5fb9389b520              # double 8.4491849999999999
	.quad	0x40048d82ba5a0382              # double 2.5690970000000002
	.quad	0x3faa0be5109070fc              # double 0.050872000000000001
	.quad	0x40233c59d99029ae              # double 9.6178729999999995
	.quad	0x4017370e2c12ad82              # double 5.8037650000000003
	.quad	0x401f6083dbc23316              # double 7.8442530000000001
	.quad	0x401ca00abf76a2f5              # double 7.1562910000000004
	.quad	0x401417a4a48f96e1              # double 5.0230889999999997
	.quad	0x401a493ab430f495              # double 6.5715130000000004
	.quad	0x3ff547d805e5f30e              # double 1.3300399999999999
	.quad	0x400d4cc144028e50              # double 3.6624780000000001
	.quad	0x402263c5154866a1              # double 9.1948629999999998
	.quad	0x401028cb4aec8d5c              # double 4.0398379999999996
	.quad	0x401363de1e2de871              # double 4.8475270000000004
	.quad	0x400b306fef7c243e              # double 3.3986510000000001
	.quad	0x4019d48b220791c5              # double 6.4575620000000002
	.quad	0x4021e709310129cc              # double 8.9512420000000005
	.quad	0x4021ceb7457c0b13              # double 8.9037419999999994
	.quad	0x4023089a88ace24c              # double 9.5168040000000004
	.quad	0x401df147ae147ae1              # double 7.4856249999999997
	.quad	0x40213f6e82949a56              # double 8.6238899999999994
	.quad	0x3ff8b0995aaf78ff              # double 1.543115
	.quad	0x401029a415f45e0b              # double 4.0406649999999997
	.quad	0x3ff8a91b823c85c2              # double 1.5412859999999999
	.quad	0x4018b98fe69270b0              # double 6.1812129999999996
	.quad	0x4013fd37c1376d55              # double 4.9972830000000004
	.quad	0x40236dbaf533f423              # double 9.7143169999999994
	.quad	0x401eef301eabbcb2              # double 7.7335820000000002
	.quad	0x4014f219eb6390c9              # double 5.2364269999999999
	.quad	0x401e5af922962cfe              # double 7.5888410000000004
	.quad	0x401dd22a6f3f52fc              # double 7.4552399999999999
	.quad	0x40199f1bef49cf57              # double 6.4053800000000001
	.quad	0x3ff3cd8ba40d90e2              # double 1.2376819999999999
	.quad	0x40203ee5eedcc20d              # double 8.1228479999999994
	.quad	0x40194f3d7d3910c3              # double 6.3273830000000002
	.quad	0x401e4a3ca7503b82              # double 7.5724970000000003
	.quad	0x3fe96cca2db61bb0              # double 0.79452999999999996
	.quad	0x4016eaeb80ecfa6a              # double 5.7294140000000002
	.quad	0x40229bfd933e35c6              # double 9.3046690000000005
	.quad	0x40223363b256ffc1              # double 9.1003699999999998
	.quad	0x401db76a7264a16a              # double 7.4291169999999997
	.quad	0x401a6beb9e492bc3              # double 6.605391
	.quad	0x4023e65929670197              # double 9.9498990000000002
	.quad	0x401dc3b688bda943              # double 7.4411259999999997
	.quad	0x4011508dd1e53a82              # double 4.3286660000000001
	.quad	0x4016dd5f99c38b05              # double 5.7161850000000003
	.quad	0x4022240724b76f6d              # double 9.0703669999999992
	.quad	0x40231e81cb46bacf              # double 9.5595839999999991
	.quad	0x4002b9567dbb16c2              # double 2.340497
	.quad	0x4005105186db50f4              # double 2.632968
	.quad	0x402220ca600b0293              # double 9.0640440000000009
	.quad	0x3fed1ec2ce464990              # double 0.91000499999999995
	.quad	0x40115a27ae9ab29e              # double 4.3380419999999997
	.quad	0x4004b2ae8e1d6495              # double 2.5872470000000001
	.quad	0x4017cad0c3d25248              # double 5.9480620000000002
	.quad	0x3ff76c2efd438d1e              # double 1.4639120000000001
	.quad	0x4001b24fa8b4bf90              # double 2.2120660000000001
	.quad	0x4016e0f49491f2dc              # double 5.7196829999999999
	.quad	0x3fbae4f3343fa2ad              # double 0.105056
	.quad	0x401d8907d912556d              # double 7.3838189999999999
	.quad	0x400a5d76683c297c              # double 3.295636
	.quad	0x4021c03a7546d3fa              # double 8.8754460000000002
	.quad	0x4017af6c69b5a640              # double 5.9213120000000004
	.quad	0x3fce70da5daf07c0              # double 0.237819
	.quad	0x3ffae0ba1f4b1ee2              # double 1.6798649999999999
	.quad	0x400bfb8a19c9d5a2              # double 3.4978220000000002
	.quad	0x401817521144cbe2              # double 6.0227740000000001
	.quad	0x400c9f0c34c1a8ac              # double 3.5776599999999998
	.quad	0x4014460b6f9fcb0c              # double 5.068403
	.quad	0x40220ef2e8c0485a              # double 9.0291969999999999
	.quad	0x40222e3e29307af2              # double 9.0903179999999999
	.quad	0x4011a652bd3c3611              # double 4.4124249999999998
	.quad	0x400aed48882f0e0b              # double 3.3658610000000002
	.quad	0x401a8d6e04c05921              # double 6.638115
	.quad	0x401bbda3c21187e8              # double 6.9351950000000002
	.quad	0x3fec9f644955b467              # double 0.89445699999999995
	.quad	0x3ffa634ca0c282c7              # double 1.649243
	.quad	0x40114d3f1843c3a4              # double 4.3254359999999998
	.quad	0x401ce544bb1af3a1              # double 7.2238949999999997
	.quad	0x40227709528f190d              # double 9.2324929999999998
	.quad	0x3ff4c1ffb480a5ad              # double 1.297363
	.quad	0x400144934267839d              # double 2.1584840000000001
	.quad	0x400bca5df2239e6b              # double 3.4738120000000001
	.quad	0x40207f4dbdf8f473              # double 8.24864
	.quad	0x3fe4bf727136a401              # double 0.64837
	.quad	0x40206ec743201041              # double 8.2163640000000004
	.quad	0x3ff9daf3a14cec42              # double 1.615955
	.quad	0x4023a153dea465a5              # double 9.8150929999999991
	.quad	0x3ff4a32b12d3415b              # double 1.289836
	.quad	0x3fe52072d1aeb3dd              # double 0.66021099999999999
	.quad	0x3fe12a8c9b845565              # double 0.53644400000000003
	.quad	0x4016f6cca2db61bb              # double 5.741015
	.quad	0x40176b8800eae18b              # double 5.8550110000000002
	.quad	0x3ffd4a6eb91b3f21              # double 1.8306720000000001
	.quad	0x40202dabc0e38a7e              # double 8.0892009999999992
	.quad	0x3fd80e0653005815              # double 0.37585600000000002
	.quad	0x40229855757d5a9f              # double 9.2975270000000005
	.quad	0x4015ecb89d6adf72              # double 5.4811730000000001
	.quad	0x401a40c069e7fb26              # double 6.5632339999999996
	.quad	0x4021679591cd1c7e              # double 8.7023130000000002
	.quad	0x401d26d1e108c3f4              # double 7.2879100000000001
	.quad	0x3ffb44d338f79852              # double 1.7043029999999999
	.quad	0x3fc221c044284dfd              # double 0.141655
	.quad	0x3fc803361565c2d2              # double 0.18759799999999999
	.quad	0x4000e5e80bed740c              # double 2.1122589999999999
	.quad	0x40222f05c896dd27              # double 9.0918410000000005
	.quad	0x401e481f53825e14              # double 7.5704320000000003
	.quad	0x3ff7d5cd91eeaa6d              # double 1.489698
	.quad	0x401e371c53f39d1b              # double 7.5538189999999998
	.quad	0x40217bd33d29563b              # double 8.7418460000000007
	.quad	0x40132c6b484d76ab              # double 4.7933779999999997
	.quad	0x4022414a90470a81              # double 9.1275220000000008
	.quad	0x40215e82730c6717              # double 8.6845890000000008
	.quad	0x401af51372a38b8b              # double 6.7393320000000001
	.quad	0x401c00060780fdc1              # double 7.0000229999999997
	.quad	0x401ca24c404a72eb              # double 7.1584940000000001
	.quad	0x40106ae536501e26              # double 4.1043900000000004
	.quad	0x4003198d045fe111              # double 2.3874759999999999
	.quad	0x3ff5d0fc71d60631              # double 1.3635219999999999
	.quad	0x3fefa70d1fa33376              # double 0.98914199999999997
	.quad	0x4021b0ebaade657c              # double 8.8455480000000008
	.quad	0x401eda411c2a0232              # double 7.713139
	.quad	0x3fbe9bae46cfc82a              # double 0.119563
	.quad	0x4022ceff9f87f024              # double 9.4042940000000001
	.quad	0x4022962cdc011d36              # double 9.2933109999999992
	.quad	0x4010d73647baa9b5              # double 4.2101680000000004
	.quad	0x401c1be48a58b3f6              # double 7.0272389999999998
	.quad	0x4010d6bacf7446fa              # double 4.2096970000000002
	.quad	0x401f8f76a2f48c2e              # double 7.8901009999999996
	.quad	0x401f7e9b38d60a63              # double 7.8736389999999998
	.quad	0x40227c302b40f66a              # double 9.2425549999999994
	.quad	0x40231c11a11233df              # double 9.5548219999999997
	.quad	0x40144656eefa1e3f              # double 5.0686910000000003
	.quad	0x400ae400fba8826b              # double 3.3613300000000002
	.quad	0x4023bfce0fc2eba2              # double 9.8746189999999991
	.quad	0x40166e5796bfca86              # double 5.6077560000000002
	.quad	0x4001d2830a0b1bbd              # double 2.227789
	.quad	0x402339a2834d26fa              # double 9.6125679999999996
	.quad	0x401e11b5c7cd898b              # double 7.5172949999999998
	.quad	0x40214db8561d4307              # double 8.6517970000000002
	.quad	0x3ff25aa4fca42aed              # double 1.14713
	.quad	0x3ff10aeb80ecfa6a              # double 1.0651660000000001
	.quad	0x40233fb6134ce3de              # double 9.6244359999999993
	.quad	0x4009d29563a9f384              # double 3.227824
	.quad	0x40139a2a0a958538              # double 4.9005510000000001
	.quad	0x4006f2641b328b6e              # double 2.8683550000000002
	.quad	0x3fee3305100a393f              # double 0.94372800000000001
	.quad	0x3ff365929670196e              # double 1.2122980000000001
	.quad	0x4012d145953586cb              # double 4.7043670000000004
	.quad	0x402245eb52c9d170              # double 9.1365610000000004
	.quad	0x4021846f36ef8056              # double 8.758661
	.quad	0x40128a1cac083127              # double 4.6348750000000001
	.quad	0x40228812dfd694cd              # double 9.2657690000000006
	.quad	0x400afa2403148777              # double 3.3721390000000002
	.quad	0x3fd60589acbc8c0d              # double 0.344088
	.quad	0x40132e679463cfb3              # double 4.7953169999999998
	.quad	0x4008f698fe69270b              # double 3.120409
	.quad	0x40227bae2541d8e8              # double 9.2415629999999993
	.quad	0x40100c33b5393251              # double 4.0119160000000003
	.quad	0x3fec9233df2a9d62              # double 0.89284699999999995
	.quad	0x402234fb97bb7308              # double 9.1034819999999996
	.quad	0x4022abdad7518b0d              # double 9.3356539999999999
	.quad	0x401be15f02c4d65e              # double 6.9700889999999998
	.quad	0x4021a69f2778140e              # double 8.8254330000000003
	.quad	0x3fee3bf0dc768dfc              # double 0.94481700000000001
	.quad	0x4014aa98aa8650e7              # double 5.1665979999999996
	.quad	0x3ff4d184c271fff8              # double 1.3011520000000001
	.quad	0x401dcab7564302b4              # double 7.4479649999999999
	.quad	0x40100dffc5479d4e              # double 4.0136710000000004
	.quad	0x400c0a7ded6ba8c6              # double 3.5051230000000002
	.quad	0x401e905c896dd26b              # double 7.6409779999999996
	.quad	0x401347f4dbdf8f47              # double 4.8202699999999998
	.quad	0x4018b50b0f27bb30              # double 6.1768000000000001
	.quad	0x3fe5610f0e90bc7b              # double 0.66809799999999997
	.quad	0x400e8adcd2d44dcb              # double 3.8178040000000002
	.quad	0x40068df7a4e7ab75              # double 2.8193199999999998
	.quad	0x401da8f9f44d4456              # double 7.4150159999999996
	.quad	0x400e2c0485a0be51              # double 3.771493
	.quad	0x4018b372606fac60              # double 6.1752409999999998
	.quad	0x40229293d102bc73              # double 9.2862840000000002
	.quad	0x4010dbb4916ca46e              # double 4.214556
	.quad	0x3fe3dd052934acb0              # double 0.62073
	.quad	0x4021777596851223              # double 8.7333189999999998
	.quad	0x4012e1ebc83a96d5              # double 4.7206260000000002
	.quad	0x40238f8811b1d92b              # double 9.7803349999999991
	.quad	0x40214f27fe4bcada              # double 8.6546020000000006
	.quad	0x401a924c8366516e              # double 6.6428700000000003
	.quad	0x401e079314445aa3              # double 7.507397
	.quad	0x40218a09aaa3ad19              # double 8.7696050000000003
	.quad	0x401d007f66e86c66              # double 7.2504860000000004
	.quad	0x3fc4efdc9c4da900              # double 0.16356999999999999
	.quad	0x400bb1327243137b              # double 3.461522
	.quad	0x401aeb48d3ae685e              # double 6.7297700000000003
	.quad	0x4005ce23af31b153              # double 2.725654
	.quad	0x4011c92ddbdb5d89              # double 4.4464639999999997
	.quad	0x4022f1209edbf8ba              # double 9.4709520000000005
	.quad	0x4023b1eadd590c0b              # double 9.8474950000000003
	.quad	0x3fe8955f78359bc3              # double 0.76823399999999997
	.quad	0x402073fd933e35c6              # double 8.2265440000000005
	.quad	0x401800c9539b8887              # double 6.0007679999999999
	.quad	0x40125986338b47c7              # double 4.5874259999999998
	.quad	0x4021f5321e603d57              # double 8.9788979999999992
	.quad	0x4008cfe2e6ea8544              # double 3.1015069999999998
	.quad	0x4011e9ae4f3343fa              # double 4.4782039999999999
	.quad	0x4013c8b220791c4c              # double 4.9459920000000004
	.quad	0x3ff0e6d2674080fa              # double 1.0563530000000001
	.quad	0x4023584e831ad213              # double 9.6724739999999993
	.quad	0x3fecfe5c91d14e3c              # double 0.90605000000000002
	.quad	0x4023dad38476f2a6              # double 9.9273950000000006
	.quad	0x3ffcfddb9841aac5              # double 1.8119769999999999
	.quad	0x400538487b99d452              # double 2.652482
	.quad	0x4023a33df2a9d628              # double 9.8188320000000004
	.quad	0x4013bd080b673c4f              # double 4.9346009999999998
	.quad	0x4019b249e44fa051              # double 6.4241099999999998
	.quad	0x3fe4d5f56a7ac81d              # double 0.65111799999999997
	.quad	0x3fc0dab9f559b3d0              # double 0.13167499999999999
	.quad	0x40161330941c8217              # double 5.5187400000000002
	.quad	0x40018b5f5f0b2852              # double 2.1930529999999999
	.quad	0x40220d219a847b24              # double 9.0256469999999993
	.quad	0x401f44cb9ecf6380              # double 7.817183
	.quad	0x401134d2b2bfdb4d              # double 4.3015850000000002
	.quad	0x401e926916440f24              # double 7.6429790000000004
	.quad	0x3fde1aa3f034b0e2              # double 0.47037600000000002
	.quad	0x4009f8887229e908              # double 3.2463540000000002
	.quad	0x400c1f8ec0f88334              # double 3.515409
	.quad	0x4023e9bda5119ce0              # double 9.9565249999999992
	.quad	0x3ff488d9f90539fc              # double 1.2834110000000001
	.quad	0x402102e5bc87db2b              # double 8.5056589999999996
	.quad	0x401ab9e98dcdb37d              # double 6.6815550000000004
	.quad	0x400a7376d5497311              # double 3.3063790000000002
	.quad	0x3fedb0b39192641b              # double 0.92781999999999998
	.quad	0x4023146cb966be7b              # double 9.539892
	.quad	0x401f95536933a040              # double 7.8958259999999996
	.quad	0x40090039abf33871              # double 3.1251099999999998
	.quad	0x400d230b178b3700              # double 3.6421109999999999
	.quad	0x4022ceb399f5dfec              # double 9.4037140000000007
	.quad	0x3fee4cc6822ff089              # double 0.94687200000000005
	.quad	0x400ca1c0ca600b03              # double 3.5789810000000002
	.quad	0x4016a4e09784ec63              # double 5.6610129999999996
	.quad	0x4019d0b0af5fd47c              # double 6.4537990000000001
	.quad	0x3fe0cc61d8622c45              # double 0.524949
	.quad	0x40084a832b990afe              # double 3.0363829999999998
	.quad	0x4016d962cfd8f0c7              # double 5.7122909999999996
	.quad	0x3fdc029ae4f33440              # double 0.43765900000000002
	.quad	0x401a28f4f93bc0a0              # double 6.5399969999999996
	.quad	0x401941fd1569f490              # double 6.3144419999999997
	.quad	0x40027def8487b99d              # double 2.3114919999999999
	.quad	0x3fffc1797cc39ffd              # double 1.9847349999999999
	.quad	0x40070e2089e34331              # double 2.8818980000000001
	.quad	0x3ff86558ea7ce0fc              # double 1.524743
	.quad	0x3fd0e6644d877250              # double 0.26406200000000002
	.quad	0x40228697aeddce7d              # double 9.2628760000000003
	.quad	0x401f5f548ecd8dbd              # double 7.843096
	.quad	0x3ff687c5260f5e42              # double 1.408147
	.quad	0x4014ecac8e68e3ef              # double 5.2311269999999999
	.quad	0x400c290b417ca212              # double 3.520041
	.quad	0x3fea2f72b4528284              # double 0.81829200000000001
	.quad	0x3feebcd9a52263d8              # double 0.96055299999999999
	.quad	0x4020c4e8533b1077              # double 8.3845849999999995
	.quad	0x4012845176145953              # double 4.6292169999999997
	.quad	0x4017c6455eaee200              # double 5.9436239999999998
	.quad	0x4015c294573a7979              # double 5.4400190000000004
	.quad	0x3fc1daceee0f3cb4              # double 0.13949
	.quad	0x402241fd9ba1b196              # double 9.1288879999999999
	.quad	0x400ed8af3e468cac              # double 3.8558029999999999
	.quad	0x3ff043c3a42f1ed1              # double 1.0165439999999999
	.quad	0x3fe0bf8db4890929              # double 0.52338300000000004
	.quad	0x401af5ef1fddebd9              # double 6.74017
	.quad	0x4021e7b9bed30f06              # double 8.9525889999999997
	.quad	0x3fcde4473cd57364              # double 0.23352899999999999
	.quad	0x401dddbdf8f47304              # double 7.466545
	.quad	0x3fcc9bc77143393b              # double 0.22350400000000001
	.quad	0x3fde893b7d84901d              # double 0.47712599999999999
	.quad	0x400c644ae85b9e8c              # double 3.5489709999999999
	.quad	0x40235027525460aa              # double 9.6565499999999993
	.quad	0x4008784ec636b096              # double 3.0587439999999999
	.quad	0x401dccaeea63b689              # double 7.4498860000000002
	.quad	0x402256d80a17b0f7              # double 9.1696170000000006
	.quad	0x400c77204295a6c6              # double 3.5581670000000001
	.quad	0x401baff5c6c11a11              # double 6.9218359999999999
	.quad	0x401c8fc32ebe596d              # double 7.1403930000000004
	.quad	0x40115af4adbc664d              # double 4.3388239999999998
	.quad	0x3fe125918a009f62              # double 0.53583599999999998
	.quad	0x3ff5d0f40e5a35d6              # double 1.3635139999999999
	.quad	0x401a83e07a28bb0a              # double 6.6287859999999998
	.quad	0x40008ac5c13fd0d0              # double 2.0677599999999998
	.quad	0x4013a71044f1a198              # double 4.9131479999999996
	.quad	0x40075fa54c554328              # double 2.9217019999999998
	.quad	0x402105a37ef5a965              # double 8.5110130000000002
	.quad	0x401d8e835dedf1e1              # double 7.3891730000000004
	.quad	0x4017e7685985ad54              # double 5.9759840000000004
	.quad	0x4010edfefbf401c5              # double 4.232418
	.quad	0x4017a8ff75968512              # double 5.9150369999999999
	.quad	0x401ba4f4c6e6d9be              # double 6.9110899999999997
	.quad	0x3fd3dd441355475a              # double 0.31037999999999999
	.quad	0x401488c5436b8f9b              # double 5.1335649999999999
	.quad	0x3ff0d8adab9f559b              # double 1.0528999999999999
	.quad	0x40004ccb3a2595bc              # double 2.0374970000000001
	.quad	0x40230b4b2fa93af7              # double 9.5220579999999994
	.quad	0x4020ae8512231833              # double 8.340859
	.quad	0x3fe3562bf11f926c              # double 0.60426899999999995
	.quad	0x401a067be553ac4f              # double 6.5063319999999996
	.quad	0x402089e42e126202              # double 8.2693189999999994
	.quad	0x40139bebe1650a46              # double 4.9022670000000002
	.quad	0x3ffef05425f20210              # double 1.9336739999999999
	.quad	0x3ff14906034f3fd9              # double 1.080328
	.quad	0x400606ab9b23dd55              # double 2.7532570000000001
	.quad	0x3fde8997c3d68406              # double 0.47714800000000002
	.quad	0x4017e12c27a63737              # double 5.9698950000000002
	.quad	0x401ad117b5286b59              # double 6.7041919999999999
	.quad	0x3ff3b51deefe4ffd              # double 1.2317180000000001
	.quad	0x40202a960b6f9fcb              # double 8.0831759999999999
	.quad	0x4017bcfaeff5c6c1              # double 5.9345509999999999
	.quad	0x4023f28b8f14db59              # double 9.9737209999999993
	.quad	0x3fd6673c4f3ba776              # double 0.350051
	.quad	0x40221a68f4b61fe2              # double 9.0515819999999998
	.quad	0x400444484944ed70              # double 2.5333410000000001
	.quad	0x4009fb56b8737974              # double 3.2477239999999998
	.quad	0x4008acbb7f9d6f11              # double 3.0843419999999999
	.quad	0x40211feb28d8665e              # double 8.562341
	.quad	0x3fd64b4d056c508b              # double 0.34834599999999999
	.quad	0x3ff399ae924f227d              # double 1.22502
	.quad	0x401d6a0b1bbcf4e8              # double 7.3535579999999995
	.quad	0x4002563c31df761d              # double 2.2921070000000001
	.quad	0x401c6bb9cf9a06a7              # double 7.1052010000000001
	.quad	0x4020cb111f0c34c2              # double 8.3966150000000006
	.quad	0x401b0dfb0d51f81a              # double 6.7636529999999997
	.quad	0x3fb4b0af5fd47bee              # double 0.080821000000000003
	.quad	0x401588fcd67fd3f6              # double 5.3837770000000003
	.quad	0x3ff3302602c9081c              # double 1.199255
	.quad	0x401dadf090f733a9              # double 7.4198630000000003
	.quad	0x401878049667b5f2              # double 6.1172050000000002
	.quad	0x4021e6f3d3a1d324              # double 8.951079
	.quad	0x401a9d54da4ce810              # double 6.6536439999999999
	.quad	0x400b4d7518b0d0ee              # double 3.4128210000000001
	.quad	0x402012ea747d805e              # double 8.0369449999999993
	.quad	0x4018d62131a8ef78              # double 6.209111
	.quad	0x401a77d028a1dfb9              # double 6.6170049999999998
	.quad	0x400dbd5bab21815a              # double 3.71746
	.quad	0x402239e9d0e991ff              # double 9.1131119999999992
	.quad	0x3fd04806290eed03              # double 0.25439600000000001
	.quad	0x3fac651f3e89a88b              # double 0.055459000000000001
	.quad	0x3ffc8282c6ef3d3a              # double 1.781863
	.quad	0x40170d7b2031ceaf              # double 5.7631649999999999
	.quad	0x4016c2b841248d7e              # double 5.690156
	.quad	0x3fb1a059a73b42cc              # double 0.068852999999999998
	.quad	0x4022c386f47b677f              # double 9.3818889999999992
	.quad	0x4004bea4ebdd334c              # double 2.5930879999999998
	.quad	0x3ffe941d8e864021              # double 1.9111610000000001
	.quad	0x3ffea749f0e4da0a              # double 1.915842
	.quad	0x400457867f0aa21a              # double 2.5427369999999998
	.quad	0x3ff360945f9df549              # double 1.211079
	.quad	0x4022d4894c447c31              # double 9.4151100000000003
	.quad	0x400144ddb5525cc4              # double 2.1586259999999999
	.quad	0x4019663b256ffc11              # double 6.3498349999999997
	.quad	0x3ff60b87bdcf0308              # double 1.377815
	.quad	0x401f0eff9f87f024              # double 7.7646470000000001
	.quad	0x4015f18e325d4a5e              # double 5.485894
	.quad	0x4001f9096bb98c7e              # double 2.2465999999999999
	.quad	0x4022b0259e1f3a58              # double 9.3440370000000001
	.quad	0x402387c6b8b69553              # double 9.7651880000000002
	.quad	0x4020ba4052d666aa              # double 8.3637720000000009
	.quad	0x402322671ef30a4e              # double 9.5671929999999996
	.quad	0x40216de8b3b32053              # double 8.7146659999999994
	.quad	0x40216575c0767d35              # double 8.6981640000000002
	.quad	0x401fd8a3b57c4e2f              # double 7.9615619999999998
	.quad	0x4016e61a60d4562e              # double 5.72471
	.quad	0x4017d847b24638c9              # double 5.9612109999999996
	.quad	0x4021e6559f6ec5b0              # double 8.9498719999999992
	.quad	0x3fe268533b107747              # double 0.57523500000000005
	.quad	0x3ff45573647baa9b              # double 1.2708619999999999
	.quad	0x3fe17e8ab4fa4830              # double 0.54669699999999999
	.quad	0x40233dcb5781c715              # double 9.620692
	.quad	0x4023784ddb5525cc              # double 9.7349689999999995
	.quad	0x400508a04d12018a              # double 2.6292119999999999
	.quad	0x3fb87182235b4edb              # double 0.095481999999999997
	.quad	0x401dcf954eb13dfb              # double 7.452718
	.quad	0x3ff4adefc7a39820              # double 1.292465
	.quad	0x4017f5efa615a8df              # double 5.9901720000000003
	.quad	0x4007f82fd75e2047              # double 2.9961850000000001
	.quad	0x3ff843b60285ec3e              # double 1.5165310000000001
	.quad	0x4010a1fc8f32378b              # double 4.1581900000000003
	.quad	0x3fe58b8f14db5958              # double 0.67328600000000005
	.quad	0x401a115b573eab36              # double 6.5169499999999996
	.quad	0x4009dd6e04c05921              # double 3.23312
	.quad	0x3fe114ea077036ca              # double 0.53380300000000003
	.quad	0x401cd3b645a1cac1              # double 7.2067500000000004
	.quad	0x40204d31769a9110              # double 8.1507679999999993
	.quad	0x4013928134480629              # double 4.8930709999999999
	.quad	0x40027a22f6a50d6b              # double 2.3096369999999999
	.quad	0x4013285b18548a9c              # double 4.7894100000000002
	.quad	0x40060d362e903644              # double 2.7564510000000002
	.quad	0x3fe3a231832fcac9              # double 0.61354900000000001
	.quad	0x40217093532e7b3e              # double 8.7198740000000008
	.quad	0x40195a7bd48cb4af              # double 6.3383630000000002
	.quad	0x3fe256e8af81626b              # double 0.57310899999999998
	.quad	0x40120f38c5436b90              # double 4.5148650000000004
	.quad	0x3fe3e4430b178b37              # double 0.621614
	.quad	0x401b5f62f9ca5bd9              # double 6.8431509999999998
	.quad	0x401f5d590c0ad03e              # double 7.8411600000000004
	.quad	0x400970667f90d9d7              # double 3.1798829999999998
	.quad	0x4004d91d57ff9b56              # double 2.6060129999999999
	.quad	0x40192d7b634dad32              # double 6.294416
	.quad	0x3ff3064fdb09a672              # double 1.189041
	.quad	0x3ff0ef5989df1173              # double 1.058435
	.quad	0x400d630db6a1e81d              # double 3.6733660000000001
	.quad	0x40231b508f648c72              # double 9.5533490000000008
	.quad	0x401e89a1fd1569f5              # double 7.6344070000000003
	.quad	0x40198c1e7967caea              # double 6.3868349999999996
	.quad	0x4019966be7afa722              # double 6.3968959999999999
	.quad	0x4017e7a311e85fd0              # double 5.9762079999999997
	.quad	0x401766759ab6d00b              # double 5.8500579999999998
	.quad	0x400310385c67dfe3              # double 2.3829199999999999
	.quad	0x40140dc2b0ea1837              # double 5.0134379999999998
	.quad	0x401835321e603d57              # double 6.0519489999999996
	.quad	0x40045f7b5aea3162              # double 2.5466220000000002
	.quad	0x3fd12b7baecd0785              # double 0.26827899999999999
	.quad	0x40000066c2acb85a              # double 2.0001959999999999
	.quad	0x3fffcb8f14db5958              # double 1.9871970000000001
	.quad	0x4010df6d7625204b              # double 4.218191
	.quad	0x401887d34df04ddb              # double 6.1326419999999997
	.quad	0x3fdaeadd590c0ad0              # double 0.42058499999999999
	.quad	0x3ffc3fe7e1fc08fa              # double 1.7656019999999999
	.quad	0x40230f7af640639d              # double 9.5302349999999993
	.quad	0x400465fc7e6b3fea              # double 2.549798
	.quad	0x40198af859429175              # double 6.385713
	.quad	0x3ffce396073de1e3              # double 1.805563
	.quad	0x40072678c0053e2d              # double 2.8937849999999998
	.quad	0x40062018a43bb40b              # double 2.7656719999999999
	.quad	0x400b05d7cb2d905c              # double 3.377853
	.quad	0x4011efa7eb6bf445              # double 4.4840390000000001
	.quad	0x400a4ee84ad794a7              # double 3.288529
	.quad	0x3ff08a71de69ad43              # double 1.0338000000000001
	.quad	0x401ca54ac29bf163              # double 7.1614180000000003
	.quad	0x40194a0d349be8ff              # double 6.3223159999999998
	.quad	0x4021fdf5275ee99a              # double 8.9960109999999993
	.quad	0x4018dffeb074a772              # double 6.2187450000000002
	.quad	0x401b1ccbc05d52c1              # double 6.7781209999999996
	.quad	0x40194dee34fc610f              # double 6.3261039999999999
	.quad	0x3fc6e40852b4d8ba              # double 0.17883399999999999
	.quad	0x4020bb6bf444e0db              # double 8.3660580000000007
	.quad	0x401f266e86c6583f              # double 7.7875310000000004
	.quad	0x4017786338b47c74              # double 5.8675660000000001
	.quad	0x400e5f809917939a              # double 3.7966319999999998
	.quad	0x3ffa469728a61177              # double 1.642234
	.quad	0x401bac80841ede12              # double 6.9184590000000004
	.quad	0x40180bdf4c2b51bd              # double 6.0115939999999997
	.quad	0x3fcdc49fd7a13c25              # double 0.23256299999999999
	.quad	0x4021ce74d1633483              # double 8.9032350000000005
	.quad	0x401f0dde37585be2              # double 7.7635430000000003
	.quad	0x40008a0e410b630b              # double 2.0674100000000002
	.quad	0x3ffafde5082cf52c              # double 1.6869860000000001
	.quad	0x4019b0c73abc9470              # double 6.4226349999999996
	.quad	0x4021cc8a9bcfd4bf              # double 8.8994949999999999
	.quad	0x4016f77ab324851b              # double 5.7416790000000004
	.quad	0x400dc0dd3fe1975f              # double 3.7191719999999999
	.quad	0x3ff02889c1b54196              # double 1.009897
	.quad	0x4016fc6a7ef9db23              # double 5.7465000000000002
	.quad	0x4022d41c1d6cf851              # double 9.4142770000000002
	.quad	0x4021ffc2224edf61              # double 8.9995279999999998
	.quad	0x4008c0a7c5ac471b              # double 3.0940699999999999
	.quad	0x401e02e1ac57e23f              # double 7.5028139999999998
	.quad	0x4023f897635e742a              # double 9.9855300000000007
	.quad	0x4018c7bfa4c61d86              # double 6.1950669999999999
	.quad	0x400d0c55c96030c2              # double 3.6310229999999999
	.quad	0x3ffde679463cfb33              # double 1.868768
	.quad	0x400a7afd113836a8              # double 3.3100529999999999
	.quad	0x40037b5aea3161a2              # double 2.4352320000000001
	.quad	0x401525c5f7c6759b              # double 5.2868880000000003
	.quad	0x4010a630ec311623              # double 4.1622960000000004
	.quad	0x3fff6b00ffda4053              # double 1.963624
	.quad	0x40194ea3df6db941              # double 6.326797
	.quad	0x40230d855970b49e              # double 9.526408
	.quad	0x4006b6e0d23d4f16              # double 2.839296
	.quad	0x3fc80afa2f05a709              # double 0.187835
	.quad	0x400f98a979e16d6e              # double 3.9495420000000001
	.quad	0x400c5991361dc93f              # double 3.5437340000000002
	.quad	0x4001c6b26bf8769f              # double 2.2220200000000001
	.quad	0x401fababa7b9170d              # double 7.9176469999999996
	.quad	0x3fffd35c9e6687f4              # double 1.9891019999999999
	.quad	0x4018e99285a921cd              # double 6.2280980000000001
	.quad	0x3ff4840e1719f7f9              # double 1.28224
	.quad	0x401f559c49774257              # double 7.8336040000000002
	.quad	0x4022044da9003eea              # double 9.0084049999999998
	.quad	0x400c979e9d0e9920              # double 3.574033
	.quad	0x401294acf312b1b3              # double 4.6451909999999996
	.quad	0x401bf0520d130dfa              # double 6.9846880000000002
	.quad	0x40170a1f080303c0              # double 5.7598839999999996
	.quad	0x3fd8b877ab324852              # double 0.38625900000000002
	.quad	0x400819f77292c493              # double 3.0126789999999999
	.quad	0x40190c0fcb4f1e4b              # double 6.2617789999999998
	.quad	0x401486f8ad256799              # double 5.1318080000000004
	.quad	0x3ff3d7d2849cb253              # double 1.240191
	.quad	0x401865ce5b4245f6              # double 6.0994200000000003
	.quad	0x40209eb441bb8c33              # double 8.3099690000000006
	.quad	0x401cbe9856a37ac4              # double 7.1861280000000001
	.quad	0x401632ee41919ac8              # double 5.5497370000000004
	.quad	0x40058f77f27fe4bd              # double 2.6950530000000001
	.quad	0x4014d348f53c579f              # double 5.2063329999999999
	.quad	0x4016868512231833              # double 5.631367
	.quad	0x4023e9899bf5946c              # double 9.9561279999999996
	.quad	0x400d310e453d20f3              # double 3.6489530000000001
	.quad	0x4023682c9081c2e3              # double 9.7034649999999995
	.quad	0x400a6bee807bbb62              # double 3.3027009999999999
	.quad	0x40206c83a96d4c34              # double 8.2119420000000005
	.quad	0x3feee89eba6aca79              # double 0.96589599999999997
	.quad	0x40202aaf1455219b              # double 8.0833670000000009
	.quad	0x3fe0c98a222d5172              # double 0.52460200000000001
	.quad	0x3ff976be37de939f              # double 1.5914900000000001
	.quad	0x40202ab3aabcd78c              # double 8.0834019999999995
	.quad	0x3fe23ac2df0d4131              # double 0.56967299999999998
	.quad	0x40111e1b4bb5e0f8              # double 4.279401
	.quad	0x401e10025bfad29a              # double 7.5156340000000004
	.quad	0x3fe11904b3c3e74b              # double 0.534304
	.quad	0x401ab25fe974a340              # double 6.674194
	.quad	0x4007676d97b30f8c              # double 2.9255019999999998
	.quad	0x402328d5842b734b              # double 9.5797539999999994
	.quad	0x3ff43e6601bc98a2              # double 1.265234
	.quad	0x3fe9a0ba1f4b1ee2              # double 0.80086999999999997
	.quad	0x3fdd8ace24bba12b              # double 0.46159699999999998
	.quad	0x3ff7c5e5f30e7ff6              # double 1.4858150000000001
	.quad	0x401810a782906898              # double 6.0162639999999996
	.quad	0x3fc4fad6cb535009              # double 0.163905
	.quad	0x4000d96af038e2a0              # double 2.1061610000000002
	.quad	0x40142909aed56b01              # double 5.040076
	.quad	0x3fd392c061847f56              # double 0.30583199999999999
	.quad	0x4014ae81882adc4d              # double 5.1704160000000003
	.quad	0x3ff0899bf5946c33              # double 1.033596
	.quad	0x4013e0c9d9d3458d              # double 4.9695200000000002
	.quad	0x400012378ab0c88a              # double 2.0088949999999999
	.quad	0x3fffd9ba1b1960fa              # double 1.990656
	.quad	0x4022a23422467be5              # double 9.3168039999999994
	.quad	0x40017ffa3b9ae0c1              # double 2.1874889999999998
	.quad	0x400474b838c111ae              # double 2.5569920000000002
	.quad	0x3fbb5ac8a3726070              # double 0.106854
	.quad	0x3f9689ca18bd6627              # double 0.022009999999999998
	.quad	0x401080d4562e09ff              # double 4.1258100000000004
	.quad	0x402029c58255b036              # double 8.0815850000000005
	.quad	0x4009174c4cdfaca3              # double 3.1363759999999998
	.quad	0x40109f1172ef0ae5              # double 4.1553399999999998
	.quad	0x3ffe7393ab430f49              # double 1.9032169999999999
	.quad	0x4023e9b823c85c25              # double 9.9564830000000004
	.quad	0x401a87c45cbbc2b9              # double 6.6325849999999997
	.quad	0x4003c2be8bc169c2              # double 2.4700899999999999
	.quad	0x3fb8a771c970f7ba              # double 0.096305000000000001
	.quad	0x40239423fab10ba6              # double 9.7893369999999997
	.quad	0x3ff8bbbd7b2031cf              # double 1.5458350000000001
	.quad	0x401c33a2595bbbe8              # double 7.0504239999999996
	.quad	0x401caeb6390c9108              # double 7.170617
	.quad	0x40135974e65bea0c              # double 4.8373600000000003
	.quad	0x4009c6b1e5c0b999              # double 3.222019
	.quad	0x400180dbad3a604e              # double 2.1879189999999999
	.quad	0x40146b213e3e2930              # double 5.1046189999999996
	.quad	0x4022e4e703afb7e9              # double 9.4470749999999998
	.quad	0x401fa53543aeab7a              # double 7.9113360000000004
	.quad	0x3ff65219a847b246              # double 1.395044
	.quad	0x3ff18232096787cf              # double 1.0942860000000001
	.quad	0x4000d265add9c27f              # double 2.1027330000000002
	.quad	0x3ff0ea5e785b5b70              # double 1.0572189999999999
	.quad	0x4016ef9d2bf55150              # double 5.7339979999999997
	.quad	0x400499c17225b74a              # double 2.5750760000000001
	.quad	0x4019aea704bc2763              # double 6.4205589999999999
	.quad	0x401fa440af1cb89d              # double 7.9104029999999996
	.quad	0x401cd5625a682b63              # double 7.2083830000000004
	.quad	0x4013a638c9752978              # double 4.9123260000000002
	.quad	0x4013a44fa05143bf              # double 4.9104599999999996
	.quad	0x3ffb5f44d4456712              # double 1.7107589999999999
	.quad	0x4020f2253111f0c3              # double 8.4729399999999995
	.quad	0x40031b7ae5796bfd              # double 2.3884180000000002
	.quad	0x401cd779e9d0e992              # double 7.210426
	.quad	0x4005b57abb8800eb              # double 2.7136130000000001
	.quad	0x4021af6a7264a16a              # double 8.8426089999999995
	.quad	0x40105f4be835dedf              # double 4.0930629999999999
	.quad	0x401c95903a7546d4              # double 7.146058
	.quad	0x4010f30c23fab10c              # double 4.2373510000000003
	.quad	0x4012ddb7ae5796c0              # double 4.7165210000000002
	.quad	0x401a7d31769a9110              # double 6.6222589999999997
	.quad	0x400171e215336dec              # double 2.1806070000000002
	.quad	0x401c4fcf80dc3372              # double 7.0779399999999999
	.quad	0x401cd55582129457              # double 7.2083339999999998
	.quad	0x4022fe63a5c1c609              # double 9.4968540000000007
	.quad	0x3ff4d7603925bb7b              # double 1.3025819999999999
	.quad	0x401fe91fb3fa6df0              # double 7.9776600000000002
	.quad	0x3ffb5f202107b784              # double 1.7107239999999999
	.quad	0x40182433d6c72192              # double 6.0353539999999999
	.quad	0x401a4ee525892685              # double 6.5770460000000002
	.quad	0x3ff4bb5d031055b9              # double 1.2957430000000001
	.quad	0x401bbaba7b9170d6              # double 6.9323519999999998
	.quad	0x4006975104d551d7              # double 2.8238850000000002
	.quad	0x401c5deefe4ffc98              # double 7.0917320000000004
	.quad	0x4023ef46cb966be8              # double 9.9673370000000005
	.quad	0x4007c3d1cc100e6b              # double 2.970615
	.quad	0x4018995421c04428              # double 6.1497349999999997
	.quad	0x4020f774aba38759              # double 8.4833119999999997
	.quad	0x40153c51dabe2718              # double 5.3089060000000003
	.quad	0x4019424fa8b4bf90              # double 6.3147570000000002
	.quad	0x400aca925fe974a3              # double 3.3489119999999999
	.quad	0x400a7d5dc4007571              # double 3.3112140000000001
	.quad	0x40217d6ba8c58687              # double 8.7449619999999992
	.quad	0x400ef804534bd76f              # double 3.871102
	.quad	0x40142d9ec7000432              # double 5.0445510000000002
	.quad	0x401dcf2778140dd4              # double 7.452299
	.quad	0x401e32e3821af7d3              # double 7.5496959999999999
	.quad	0x401d0f62b6ae7d56              # double 7.2650249999999996
	.quad	0x401c1eaf251c193b              # double 7.0299649999999998
	.quad	0x4009924c8366516e              # double 3.1964350000000001
	.quad	0x4007a6d612c6ac21              # double 2.9564629999999998
	.quad	0x400815903a7546d4              # double 3.010529
	.quad	0x401176de76427c7c              # double 4.3660829999999997
	.quad	0x402332860dcb9a9e              # double 9.5986790000000006
	.quad	0x3fdbb30b5aa71583              # double 0.43280299999999999
	.quad	0x4000c4816f0068dc              # double 2.0959500000000002
	.quad	0x40117dcbddb9841b              # double 4.3728480000000003
	.quad	0x401bf07d912556d2              # double 6.9848540000000003
	.quad	0x401dd0a84be40421              # double 7.453767
	.quad	0x401104b2b777d0f2              # double 4.254588
	.quad	0x401a2dbc664d3bf3              # double 6.544664
	.quad	0x4022b8ee49f51698              # double 9.361193
	.quad	0x401eb0b5ed8d36b5              # double 7.6725690000000001
	.quad	0x3fa19c9d5a187a4a              # double 0.034397999999999998
	.quad	0x4003b55d5f56a7ad              # double 2.4635570000000002
	.quad	0x3fdc73d9ec700043              # double 0.44457099999999999
	.quad	0x401a7a0ad8a11666              # double 6.6191820000000003
	.quad	0x400652f76e6106ab              # double 2.790511
	.quad	0x401ad0642396073e              # double 6.7035070000000001
	.quad	0x401a1abe6a337a81              # double 6.5261170000000002
	.quad	0x4016b335d249e450              # double 5.6750100000000003
	.quad	0x3ff7f3b42cc2d6aa              # double 1.4969980000000001
	.quad	0x4020df9aae6c8f75              # double 8.4367269999999994
	.quad	0x3fed2a80064a9cdc              # double 0.91143799999999997
	.quad	0x400eb3700474d9c7              # double 3.8376160000000001
	.quad	0x401a7c918e325d4a              # double 6.6216489999999997
	.quad	0x4016c4e9c4545847              # double 5.6922980000000001
	.quad	0x401803a647fdc593              # double 6.0035639999999999
	.quad	0x4020dead2dcb1466              # double 8.4349150000000002
	.quad	0x3fe3332ce89656ef              # double 0.599997
	.quad	0x401b352bd3c36113              # double 6.8019249999999998
	.quad	0x402166c332f01755              # double 8.7007080000000006
	.quad	0x3fec153dea465a57              # double 0.87759299999999996
	.quad	0x40106ebf65dbfceb              # double 4.1081519999999996
	.quad	0x401f3eda66128390              # double 7.8113799999999998
	.quad	0x4016b1287c200c0f              # double 5.673006
	.quad	0x401b6ab191dde376              # double 6.8541930000000004
	.quad	0x40141321e603d578              # double 5.0186840000000004
	.quad	0x402173fb3743632c              # double 8.7265259999999997
	.quad	0x401c2d4562e09fe8              # double 7.0442099999999996
	.quad	0x3fffe8ac5c13fd0d              # double 1.994305
	.quad	0x40188a4a05dd8f93              # double 6.1350480000000003
	.quad	0x3ff4a17c1bda511a              # double 1.289425
	.quad	0x401d3f75536933a0              # double 7.3119709999999998
	.quad	0x3fe6d3f39d1b2e5a              # double 0.71337300000000003
	.quad	0x3fe6d0a67620ee8d              # double 0.71296999999999999
	.quad	0x401fa107b784662c              # double 7.9072560000000003
	.quad	0x4019dd4e8fb00bcc              # double 6.4661200000000001
	.quad	0x3ffff61aa3f034b1              # double 1.997584
	.quad	0x401a6c83a96d4c34              # double 6.6059710000000003
	.quad	0x4021d5da059a73b4              # double 8.9176789999999996
	.quad	0x401e872cd7cf5f4e              # double 7.6320069999999998
	.quad	0x401327b5f1bef49d              # double 4.78878
	.quad	0x3fcbaee631f8a090              # double 0.216275
	.quad	0x4017337d63022dd8              # double 5.8002830000000003
	.quad	0x401734ff0025bfad              # double 5.8017539999999999
	.quad	0x4023c15a294141ea              # double 9.8776410000000006
	.quad	0x40172d894812be49              # double 5.7944690000000003
	.quad	0x401cf87d2c7b890d              # double 7.2426649999999997
	.quad	0x401a975e2046c765              # double 6.6478200000000003
	.quad	0x3ff0b125dd095af3              # double 1.0432490000000001
	.quad	0x401a244b2b777d0f              # double 6.5354429999999999
	.quad	0x401a258afc47e49b              # double 6.5366629999999999
	.quad	0x402142b8e8ea39c5              # double 8.6303169999999998
	.quad	0x4013765fd8adab9f              # double 4.8655999999999997
	.quad	0x400cd7079e59f2bb              # double 3.6049950000000002
	.quad	0x4010ac8cd63cb817              # double 4.1685059999999998
	.quad	0x3fedbbafd976ff3b              # double 0.92916100000000001
	.quad	0x401a60114d2f5dbc              # double 6.5938160000000003
	.quad	0x400f117268d32831              # double 3.8835190000000002
	.quad	0x4004206f262888b5              # double 2.5158369999999999
	.quad	0x3ff07d933e35c5b5              # double 1.0306580000000001
	.quad	0x402212e557de0d67              # double 9.0369060000000001
	.quad	0x401fe1932d6ece14              # double 7.970288
	.quad	0x4021f40314877681              # double 8.9765859999999993
	.quad	0x4007a8f861a60d45              # double 2.9575049999999998
	.quad	0x3fc026fe718a86d7              # double 0.12619
	.quad	0x402180d5e8d54110              # double 8.7516320000000007
	.quad	0x40196efc7a398202              # double 6.3583850000000002
	.quad	0x40013a32b12d3416              # double 2.1534170000000001
	.quad	0x402360cc144028e5              # double 9.689057
	.quad	0x402016b702602c91              # double 8.0443650000000009
	.quad	0x4015697a67a52ac7              # double 5.3530059999999997
	.quad	0x3fcbd0203e63e8de              # double 0.21728900000000001
	.quad	0x402153c2b94d9408              # double 8.6635950000000008
	.quad	0x3ff3f28522ea0fd4              # double 1.2467090000000001
	.quad	0x40041e6ab9b23dd5              # double 2.5148519999999999
	.quad	0x4020bb92e1ef73c1              # double 8.3663550000000004
	.quad	0x40162116ebd4cfd1              # double 5.5323140000000004
	.quad	0x4014342a66dbd72c              # double 5.0509430000000002
	.quad	0x40111c3ac929aa1d              # double 4.2775679999999996
	.quad	0x40225994e1a3f466              # double 9.1749639999999992
	.quad	0x401b9b762d83c6c9              # double 6.9018179999999996
	.quad	0x3ffef16b11c6d1e1              # double 1.93394
	.quad	0x40216aa433508f65              # double 8.7082840000000008
	.quad	0x4022a4a2db61bb06              # double 9.321555
	.quad	0x4020438561d4306e              # double 8.1318769999999994
	.quad	0x4011ba497fa5d28d              # double 4.431921
	.quad	0x4011ddc8b86b15f9              # double 4.4665860000000004
	.quad	0x3fe8a9ae4f3343fa              # double 0.77071299999999998
	.quad	0x4009229d8409e55c              # double 3.141902
	.quad	0x40153e275ab7dc7b              # double 5.3106970000000002
	.quad	0x40178111f0c34c1b              # double 5.8760450000000004
	.quad	0x401d5c5479d4d834              # double 7.340166
	.quad	0x4022154e4c942d49              # double 9.0416129999999999
	.quad	0x4017d0bae89eba6b              # double 5.9538380000000002
	.quad	0x4023376a2f48c2e7              # double 9.6082319999999992
	.quad	0x4020397b7414a4d3              # double 8.1122700000000005
	.quad	0x400cebe1650a45d4              # double 3.6151759999999999
	.quad	0x402375d1a21ea359              # double 9.7301149999999996
	.quad	0x4011f4cf4a558ea8              # double 4.4890720000000002
	.quad	0x4000916659d12cae              # double 2.0709960000000001
	.quad	0x3fea11cb039ef0f1              # double 0.81467199999999995
	.quad	0x401e191b823c85c2              # double 7.5245189999999997
	.quad	0x401674445aa2e3c5              # double 5.6135419999999998
	.quad	0x40239f55bccaf70a              # double 9.8112010000000005
	.quad	0x4016440789613d32              # double 5.5664350000000002
	.quad	0x3ffcf04577d95571              # double 1.8086599999999999
	.quad	0x401980f301eabbcb              # double 6.3759269999999999
	.quad	0x401e1cad57bc7f78              # double 7.5280050000000002
	.quad	0x401b2ef566490a35              # double 6.795858
	.quad	0x401f7564f97edc7f              # double 7.864643
	.quad	0x401ae5b1422ccb3a              # double 6.7243089999999999
	.quad	0x401fd4a7f8012dfd              # double 7.9576719999999996
	.quad	0x400e202fb5d03105              # double 3.7657159999999998
	.quad	0x4015137542a23c00              # double 5.2690020000000004
	.quad	0x3ffb2c2374794ea0              # double 1.6982759999999999
	.quad	0x4018017f4128bf3c              # double 6.0014620000000001
	.quad	0x400f450d6b228dca              # double 3.9087170000000002
	.quad	0x4013360913a4f872              # double 4.8027689999999996
	.quad	0x401dfbf83382e44b              # double 7.4960639999999996
	.quad	0x4001a893b7d84902              # double 2.2073130000000001
	.quad	0x4019ef9096bb98c8              # double 6.4839500000000001
	.quad	0x401c23365881a155              # double 7.0343869999999997
	.quad	0x400c96f19934efcc              # double 3.5737030000000001
	.quad	0x4023916dd26b723f              # double 9.7840410000000002
	.quad	0x3ff0099f1ae2da55              # double 1.0023489999999999
	.quad	0x401729c7bcc2938e              # double 5.7908010000000001
	.quad	0x3ffbe9d40ee06d94              # double 1.7445870000000001
	.quad	0x4022f61932d6ece1              # double 9.4806609999999995
	.quad	0x401502c55c96030c              # double 5.2527059999999999
	.quad	0x40239d62bf11f927              # double 9.8073940000000003
	.quad	0x401c560956c0d6f5              # double 7.0840199999999998
	.quad	0x4023acc059210386              # double 9.8374050000000004
	.quad	0x3fc0870110a137f4              # double 0.12912000000000001
	.quad	0x400a65a921ccd962              # double 3.299639
	.quad	0x4007e4167a95c854              # double 2.9863710000000001
	.quad	0x3ffe438e29f9ce8e              # double 1.8914930000000001
	.quad	0x4022809d0635a427              # double 9.2511980000000005
	.quad	0x401310be51090710              # double 4.7663510000000002
	.quad	0x40224d1d25aab474              # double 9.1506129999999998
	.quad	0x401ceca9ef5232d3              # double 7.2311170000000002
	.quad	0x401675d3dc8b86b1              # double 5.6150659999999997
	.quad	0x401f73c18b502abb              # double 7.8630430000000002
	.quad	0x400f38fe69270b07              # double 3.9028290000000001
	.quad	0x400d69c2c1b10fd8              # double 3.676641
	.quad	0x400f9731098d477c              # double 3.9488240000000001
	.quad	0x40239dbad3a604e2              # double 9.8080660000000002
	.quad	0x400fc3f9a49c2c1b              # double 3.970691
	.quad	0x3fdc5946c332f017              # double 0.44294899999999998
	.quad	0x400f99873ffac1d3              # double 3.9499650000000002
	.quad	0x40186935fc3b4f61              # double 6.1027449999999996
	.quad	0x401fc5a469d7342f              # double 7.9430100000000001
	.quad	0x4020965f5275ee9a              # double 8.2936960000000006
	.quad	0x3fe2193b3a68b19a              # double 0.56557999999999997
	.quad	0x40225ba0620ab713              # double 9.1789579999999997
	.quad	0x40133628027d88c2              # double 4.8028870000000001
	.quad	0x40084da5daf07bfe              # double 3.0379139999999998
	.quad	0x4003c888b545c78a              # double 2.4729169999999998
	.quad	0x40214d06dd69d302              # double 8.6504429999999992
	.quad	0x4017a7eed45e9186              # double 5.9139970000000002
	.quad	0x3fe3e7967caea748              # double 0.62202000000000002
	.quad	0x3fe669e5e2478855              # double 0.70042700000000002
	.quad	0x401adb3bb83cf2d0              # double 6.7140950000000004
	.quad	0x40047d9988d2a1f9              # double 2.561328
	.quad	0x400fbf5d78811b1e              # double 3.9684400000000002
	.quad	0x401ccfd00713f078              # double 7.2029420000000002
	.quad	0x3ff5277e5eaab042              # double 1.3221419999999999
	.quad	0x3fda82278d0cc35d              # double 0.41419400000000001
	.quad	0x401479c1f85d744f              # double 5.1189039999999997
	.quad	0x401f26c6de76427c              # double 7.7878679999999996
	.quad	0x401f135e310dbf05              # double 7.7689139999999996
	.quad	0x3fc928e92d55a3a1              # double 0.19656100000000001
	.quad	0x40205db91f70de8f              # double 8.1830529999999992
	.quad	0x401848fb00bcbe62              # double 6.0712700000000002
	.quad	0x4023f4d72799a1fd              # double 9.9782039999999998
	.quad	0x401b30a2014727dd              # double 6.7974930000000002
	.quad	0x4020e20620ab7132              # double 8.4414529999999992
	.quad	0x3fd3780346dc5d64              # double 0.30420000000000003
	.quad	0x4019077ab324851b              # double 6.2573040000000004
	.quad	0x3ff17c4d22c881e4              # double 1.0928469999999999
	.quad	0x4010830164840e17              # double 4.1279349999999999
	.quad	0x3ffe8fbdad7518b1              # double 1.910093
	.quad	0x401b680fdc1615ec              # double 6.851623
	.quad	0x401b8a94bbe4473d              # double 6.8853330000000001
	.quad	0x4013dbd1676640a7              # double 4.9646660000000002
	.quad	0x4018c2a7bd48cb4b              # double 6.1900930000000001
	.quad	0x401dd165d3996fa8              # double 7.4544899999999998
	.quad	0x3ffab8f7985271bd              # double 1.670158
	.quad	0x402205e4a3832767              # double 9.0115099999999995
	.quad	0x40231e0589acbc8c              # double 9.5586359999999999
	.quad	0x401ba9707182235b              # double 6.9154679999999997
	.quad	0x3ff7a2b3892ee84b              # double 1.477222
	.quad	0x3fcf14c22ee4191a              # double 0.24282100000000001
	.quad	0x400edd6adf71eaff              # double 3.858114
	.quad	0x3ffdbd6f97679032              # double 1.858749
	.quad	0x401d056fb8f57f73              # double 7.2553089999999996
	.quad	0x40217c89f40a2878              # double 8.7432400000000001
	.quad	0x4009aa27f1b69121              # double 3.2080839999999999
	.quad	0x40023909f1f14984              # double 2.2778510000000001
	.quad	0x40236fba450acc0c              # double 9.7182180000000002
	.quad	0x40133615a8deb0fb              # double 4.8028170000000001
	.quad	0x3fefa42d05f28848              # double 0.98879099999999997
	.quad	0x40167113836a832c              # double 5.6104260000000004
	.quad	0x402245f9df548ece              # double 9.1366720000000008
	.quad	0x4012fd7e02645e4e              # double 4.7475509999999996
	.quad	0x40225fe82517e77d              # double 9.1873179999999994
	.quad	0x3fe76cbb7f9d6f11              # double 0.73202299999999998
	.quad	0x40201b21a2e7f6f5              # double 8.0529910000000005
	.quad	0x3fea85a4f00ef135              # double 0.82881400000000005
	.quad	0x401f9e1b4bb5e0f8              # double 7.904401
	.quad	0x401cfde1198aeb81              # double 7.2479290000000001
	.quad	0x3ffe0c48adeebb34              # double 1.877999
	.quad	0x4006da1b9f98b71c              # double 2.8564980000000002
	.quad	0x400a6fb65668c261              # double 3.3045469999999999
	.quad	0x40203d549731098d              # double 8.1197859999999995
	.quad	0x400d2156e264e486              # double 3.6412789999999999
	.quad	0x4010ba704bc27632              # double 4.1820690000000003
	.quad	0x401e6b7132724313              # double 7.6049239999999995
	.quad	0x4021bc2dcf4623d1              # double 8.8675370000000004
	.quad	0x401796cca2db61bb              # double 5.897265
	.quad	0x40229b79b77c02b0              # double 9.3036630000000002
	.quad	0x402246c95bff0457              # double 9.1382549999999991
	.quad	0x3fe91d19157abb88              # double 0.784802
	.quad	0x4023431f46ed245b              # double 9.6310979999999997
	.quad	0x40043d041cc532a5              # double 2.5297930000000002
	.quad	0x400d0a8a82a5614e              # double 3.630147
	.quad	0x401516ffc115df65              # double 5.2724599999999997
	.quad	0x40207182a9930be1              # double 8.2217000000000002
	.quad	0x400207e52157689d              # double 2.2538550000000002
	.quad	0x3ff5c8461f9f01b8              # double 1.3613949999999999
	.quad	0x40196c8bc9cd3e0c              # double 6.3560020000000002
	.quad	0x40133954eb13dfb1              # double 4.8059880000000001
	.quad	0x4010d0fa9c12f09e              # double 4.2040810000000004
	.quad	0x400727a9e2bcf91a              # double 2.8943669999999999
	.quad	0x402018f6ad70e6f3              # double 8.0487570000000002
	.quad	0x40138c4c165907d9              # double 4.8870089999999999
	.quad	0x402132bbcb1cc964              # double 8.5990889999999993
	.quad	0x40124e74f2f123c4              # double 4.5766179999999999
	.quad	0x401a4890d5a5b963              # double 6.5708650000000004
	.quad	0x3ff9c85e3da2f8be              # double 1.611418
	.quad	0x401666c5d206c871              # double 5.6003639999999999
	.quad	0x4014bd37c1376d55              # double 5.1847830000000004
	.quad	0x4010db83cf2cf95d              # double 4.2143699999999997
	.quad	0x401df56473471f79              # double 7.4896409999999997
	.quad	0x40074199780baa58              # double 2.9070309999999999
	.quad	0x4022d4ac29bf162b              # double 9.4153760000000001
	.quad	0x4010e5f633ce63a6              # double 4.2245720000000002
	.quad	0x401b82cc70867ad9              # double 6.8777330000000001
	.quad	0x4014d752da98676a              # double 5.2102769999999996
	.quad	0x4014ee3193f6c26a              # double 5.2326110000000003
	.quad	0x400e5da836eb4e98              # double 3.795731
	.quad	0x4011a5b530ced4e5              # double 4.4118240000000002
	.quad	0x400632c0e7bc3c5c              # double 2.7747820000000001
	.quad	0x400f1159c4977425              # double 3.8834719999999998
	.quad	0x40180378ee286727              # double 6.0033909999999997
	.quad	0x401766da0168b5cc              # double 5.850441
	.quad	0x3ff660fd3b29a1ba              # double 1.398679
	.quad	0x4009e3ad9f0a1be3              # double 3.2361710000000001
	.quad	0x400f441aac53b081              # double 3.9082539999999999
	.quad	0x4004ec3760bf5d79              # double 2.6153400000000002
	.quad	0x401eea854477ff15              # double 7.7290239999999998
	.quad	0x3ffe3cd898b2e9cd              # double 1.8898550000000001
	.quad	0x40157014f8b588e3              # double 5.3594549999999996
	.quad	0x4016ba7f3cf70154              # double 5.6821260000000002
	.quad	0x401884aa10e02214              # double 6.1295549999999999
	.quad	0x40166f36262cba73              # double 5.6086049999999998
	.quad	0x3ffdf314ca925fe9              # double 1.8718459999999999
	.quad	0x40149cf13cee9dd8              # double 5.1532640000000001
	.quad	0x4022a0561d4306e6              # double 9.3131570000000004
	.quad	0x4005d883ba3443d4              # double 2.7307199999999998
	.quad	0x402116bf8769ec2d              # double 8.5444300000000002
	.quad	0x4022afea5f84cad5              # double 9.3435849999999991
	.quad	0x401869563a9f383f              # double 6.102868
	.quad	0x400bcd49949e8816              # double 3.475238
	.quad	0x4011e108c3f3e037              # double 4.46976
	.quad	0x4020e5553ef6b5d4              # double 8.4479159999999993
	.quad	0x3ffa393037d63023              # double 1.638962
	.quad	0x3ff00afa2f05a709              # double 1.00268
	.quad	0x40226ba42f1ed17c              # double 9.2102369999999993
	.quad	0x40045e468cac4b4d              # double 2.546033
	.quad	0x402395e8b3b32053              # double 9.7927909999999993
	.quad	0x40050157eed45e92              # double 2.6256560000000002
	.quad	0x4015cbafd976ff3b              # double 5.4489130000000001
	.quad	0x401dc58969a0ad8a              # double 7.4429069999999999
	.quad	0x400e32d7f950b956              # double 3.774826
	.quad	0x4014ebbcb1cc9646              # double 5.2302119999999999
	.quad	0x3fde023e9ea14057              # double 0.468887
	.quad	0x401263076c050bd8              # double 4.5967079999999996
	.quad	0x3fe906c226809d49              # double 0.78207499999999996
	.quad	0x40207137d1fe64f5              # double 8.2211289999999995
	.quad	0x40147e6106ab14ec              # double 5.1234169999999999
	.quad	0x402212ab68cef673              # double 9.0364640000000005
	.quad	0x4011696c82e019b1              # double 4.3529530000000003
	.quad	0x400c6b76f6d76252              # double 3.552473
	.quad	0x3fbb14983d790753              # double 0.105783
	.quad	0x4021234bd76ee73e              # double 8.5689379999999993
	.quad	0x3ff22e0c17657753              # double 1.136242
	.quad	0x401a810385c67dfe              # double 6.6259899999999998
	.quad	0x400f4c1ca3a4b557              # double 3.9121640000000002
	.quad	0x4012f4c87980f55e              # double 4.7390460000000001
	.quad	0x4004860aa64c2f83              # double 2.5654499999999998
	.quad	0x4013bffda4052d66              # double 4.9374909999999996
	.quad	0x4019de596c82e01a              # double 6.4671380000000003
	.quad	0x40187cc1871e6cd3              # double 6.1218320000000004
	.quad	0x3ff6bbb517a46174              # double 1.4208270000000001
	.quad	0x40064f12c27a6373              # double 2.7886099999999998
	.quad	0x401cb2c493426784              # double 7.1745780000000003
	.quad	0x40126f4517614595              # double 4.6086619999999998
	.quad	0x401da797891e2153              # double 7.4136639999999998
	.quad	0x400143dab5c39bcc              # double 2.1581320000000002
	.quad	0x4012672756861e93              # double 4.6007360000000004
	.quad	0x4020d9db22d0e560              # double 8.4254999999999995
	.quad	0x401c4876188b1141              # double 7.0707630000000004
	.quad	0x4000ccaa326e1156              # double 2.0999340000000002
	.quad	0x4012431ca7d6733f              # double 4.5655390000000002
	.quad	0x400c6ff9f87f023f              # double 3.5546760000000002
	.quad	0x4018f7dae81882ae              # double 6.2420460000000002
	.quad	0x3ff841d8e8640208              # double 1.516076
	.quad	0x40206e7f2c3009b3              # double 8.215814
	.quad	0x40207952b0a6fc59              # double 8.2369590000000006
	.quad	0x4016e1947cfa26a2              # double 5.7202929999999999
	.quad	0x401eee681a9b8cb9              # double 7.7328190000000001
	.quad	0x4005acbea4ebdd33              # double 2.7093479999999999
	.quad	0x4011ddbad3a604e2              # double 4.4665330000000001
	.quad	0x400c65d8d79d0a67              # double 3.5497299999999998
	.quad	0x40187f1bef49cf57              # double 6.1241300000000001
	.quad	0x401152fc69728a61              # double 4.3310409999999999
	.quad	0x3fb65d8d79d0a676              # double 0.087364999999999998
	.quad	0x3ff9ae4c0df58c09              # double 1.6050530000000001
	.quad	0x3fb3f62b6ae7d567              # double 0.077975000000000003
	.quad	0x4009163779e9d0ea              # double 3.1358480000000002
	.quad	0x40114aa821f2990f              # double 4.3229069999999998
	.quad	0x3fee9344806290ef              # double 0.95547700000000002
	.quad	0x401cc27ae9ab29e5              # double 7.1899220000000001
	.quad	0x401b5d6d7e889c1b              # double 6.8412379999999997
	.quad	0x401bff34d6a161e5              # double 6.999225
	.quad	0x40167ada76d97b31              # double 5.619974
	.quad	0x400d522d948dc11e              # double 3.6651259999999999
	.quad	0x40204ce0fc2eba28              # double 8.1501540000000006
	.quad	0x400984a4095f2453              # double 3.1897660000000001
	.quad	0x4004ece703afb7e9              # double 2.615675
	.quad	0x401ddf01fb82c2bd              # double 7.4677809999999996
	.quad	0x3fd1eae18ac9f2fe              # double 0.27996100000000002
	.quad	0x400cab4b72c5197a              # double 3.5836399999999999
	.quad	0x4014c6295208e150              # double 5.1935169999999999
	.quad	0x401d52edfe75bc45              # double 7.3309860000000002
	.quad	0x401482e1ac57e23f              # double 5.1278139999999999
	.quad	0x40207045fe111277              # double 8.219284
	.quad	0x4008b790fb65668c              # double 3.0896319999999999
	.quad	0x400c93293d102bc7              # double 3.5718559999999999
	.quad	0x4020b67b3d8e0008              # double 8.3564089999999993
	.quad	0x40186f038e29f9cf              # double 6.1084120000000004
	.quad	0x401b36ab5807fed2              # double 6.803388
	.quad	0x4021dd0fe8ab4fa5              # double 8.9317620000000009
	.quad	0x4018a77e5eaab042              # double 6.1635679999999997
	.quad	0x4016ad4024b33db0              # double 5.6691900000000004
	.quad	0x4022439b024f6599              # double 9.1320420000000002
	.quad	0x3ff434bb5e0f7fd0              # double 1.2628740000000001
	.quad	0x4020f3f3bea91d9b              # double 8.4764689999999998
	.quad	0x402289ed9dfdac69              # double 9.2693910000000006
	.quad	0x400969906cca2db6              # double 3.176545
	.quad	0x3fdc62aa19439de5              # double 0.44352200000000003
	.quad	0x400e3cc7d1bb4917              # double 3.7796780000000001
	.quad	0x401caddb5525cc42              # double 7.1697819999999997
	.quad	0x4020b6a3161a1db8              # double 8.3567129999999992
	.quad	0x40239f3c0c1fc8f3              # double 9.8110049999999997
	.quad	0x401a30f8c64fdb0a              # double 6.5478240000000003
	.quad	0x4011cc182ecaeea6              # double 4.4493109999999998
	.quad	0x401aa938de6ddf01              # double 6.6652560000000003
	.quad	0x3ffeba4e7ab75643              # double 1.920485
	.quad	0x401c93269df97aab              # double 7.1437020000000002
	.quad	0x401c38cd63cb8173              # double 7.0554709999999998
	.quad	0x4018a12b1b36bd2b              # double 6.1573909999999996
	.quad	0x401416e221c8a7a4              # double 5.0223469999999999
	.quad	0x401e3779207d4e09              # double 7.5541729999999995
	.quad	0x400d958f2e05ccc9              # double 3.6980270000000002
	.quad	0x4020340c1fc8f323              # double 8.1016549999999992
	.quad	0x400a78a116659d13              # double 3.3089010000000001
	.quad	0x400b7672324c8366              # double 3.4328349999999999
	.quad	0x402124bb1af3a14d              # double 8.5717400000000001
	.quad	0x3ff681b003686a4d              # double 1.4066620000000001
	.quad	0x402063bdbe3c1052              # double 8.1948070000000008
	.quad	0x3fe0245d41fa7653              # double 0.50443899999999997
	.quad	0x401248151a437825              # double 4.5703930000000001
	.quad	0x401f4cc8de2ac322              # double 7.8249849999999999
	.quad	0x40231b9de481f538              # double 9.5539389999999997
	.quad	0x401157e56473471f              # double 4.3358359999999996
	.quad	0x40185886df82b1f7              # double 6.0864520000000004
	.quad	0x4023c9a2834d26fa              # double 9.8938179999999996
	.quad	0x400e3a36e2eb1c43              # double 3.7784249999999999
	.quad	0x401d828672756862              # double 7.3774660000000001
	.quad	0x3feb7dbd2fa0d77b              # double 0.85909899999999995
	.quad	0x400cc4f97edc7ef1              # double 3.5961789999999998
	.quad	0x40150d3aa369fcf4              # double 5.2629190000000001
	.quad	0x3ff70723aafff36b              # double 1.4392430000000001
	.quad	0x401957d63022dd7b              # double 6.3357780000000004
	.quad	0x4023c423b7952d23              # double 9.8830849999999994
	.quad	0x3ff9281ecd4aa10e              # double 1.572295
	.quad	0x401c991dde37585c              # double 7.1495280000000001
	.quad	0x4013e78705425f20              # double 4.9761009999999999
	.quad	0x3fb730f8c64fdb0a              # double 0.090591000000000004
	.quad	0x40225f192ea52ef9              # double 9.1857389999999999
	.quad	0x402208ed80a17b0f              # double 9.0174369999999993
	.quad	0x3ff181205bc01a37              # double 1.094025
	.quad	0x4015387f88765ba7              # double 5.3051740000000001
	.quad	0x402060d51f81a587              # double 8.1891259999999999
	.quad	0x4021f195cc857f30              # double 8.9718459999999993
	.quad	0x401e82eba27ae9ab              # double 7.6278519999999998
	.quad	0x401428d002e23290              # double 5.0398560000000003
	.quad	0x3fc119bd4067cf1c              # double 0.13359799999999999
	.quad	0x400e30a45d41fa76              # double 3.7737509999999999
	.quad	0x40184c42a66dbd73              # double 6.0744730000000002
	.quad	0x3ff04ec636b09635              # double 1.0192319999999999
	.quad	0x3ff88433d6c72192              # double 1.532276
	.quad	0x401e98a009f62307              # double 7.6490479999999996
	.quad	0x402321635610adcd              # double 9.5652109999999996
	.quad	0x3fffce64b2314014              # double 1.987889
	.quad	0x4020e224894c447c              # double 8.4416849999999996
	.quad	0x401731897a67a52b              # double 5.7983760000000002
	.quad	0x401a1cf4e874c900              # double 6.5282780000000002
	.quad	0x3ffb30ae536501e2              # double 1.6993849999999999
	.quad	0x400441f3a57eaa2a              # double 2.532203
	.quad	0x4014d70f3882278d              # double 5.210019
	.quad	0x4020d86594af4f0e              # double 8.4226500000000009
	.quad	0x40228198288051ca              # double 9.2531140000000001
	.quad	0x4019ea8262456f76              # double 6.4790130000000001
	.quad	0x3ffb122424a276b8              # double 1.691929
	.quad	0x401c44a59c065b64              # double 7.0670380000000002
	.quad	0x400a0dfb506dd69d              # double 3.2568269999999999
	.quad	0x4021f6aa8eb46349              # double 8.9817699999999991
	.quad	0x402333402d16b980              # double 9.6000990000000002
	.quad	0x4013eeb4a66559f7              # double 4.9831110000000001
	.quad	0x4023e48e68e3ef28              # double 9.9463989999999995
	.quad	0x4021f0f29d40ee07              # double 8.9706010000000003
	.quad	0x401d31cef240fa9c              # double 7.2986409999999999
	.quad	0x402365ab9f559b3d              # double 9.6985749999999999
	.quad	0x3fceef566490a351              # double 0.241679
	.quad	0x400691f1cfbb9496              # double 2.8212619999999999
	.quad	0x4001f0385c67dfe3              # double 2.2422949999999999
	.quad	0x401ad0852b4d8ba4              # double 6.703633
	.quad	0x4013f4e379b77c03              # double 4.9891490000000003
	.quad	0x401d09bc77143394              # double 7.2595080000000003
	.quad	0x40055b66f9335d25              # double 2.6696300000000002
	.quad	0x40219117d6b65a9b              # double 8.7833850000000009
	.quad	0x400988323358f2e0              # double 3.1915019999999998
	.quad	0x3ffbdf44d4456712              # double 1.7420089999999999
	.quad	0x3fe5711947cfa26a              # double 0.67005599999999998
	.quad	0x4023bb80cb6c7a7d              # double 9.8662170000000006
	.quad	0x400bc38a7e73a366              # double 3.4704790000000001
	.quad	0x402144185058dde8              # double 8.6329980000000006
	.quad	0x40185abb8800eae2              # double 6.0886060000000004
	.quad	0x40219357a355043e              # double 8.7877779999999994
	.quad	0x3ff3d0c0ad03d9a9              # double 1.2384649999999999
	.quad	0x4010263cb8173322              # double 4.0373409999999996
	.quad	0x3fcb6c050bd87b57              # double 0.21423400000000001
	.quad	0x4022e8cbaf965b21              # double 9.4546790000000004
	.quad	0x4006d93f6c2699c8              # double 2.8560780000000001
	.quad	0x3ff7711947cfa26a              # double 1.465112
	.quad	0x4023883621fafc8b              # double 9.7660379999999999
	.quad	0x4013f5c67dfe32a0              # double 4.9900149999999996
	.quad	0x40039791819d2392              # double 2.4490080000000001
	.quad	0x401c1a027525460b              # double 7.0254000000000003
	.quad	0x4021c10f301eabbd              # double 8.8770690000000005
	.quad	0x40184c71d6063172              # double 6.0746529999999996
	.quad	0x40112bc0a06e9ff1              # double 4.2927270000000002
	.quad	0x3ffa8868b9fdbd30              # double 1.6583030000000001
	.quad	0x4022f0b39192641b              # double 9.4701199999999996
	.quad	0x401a9c69f8c21e1d              # double 6.6527479999999999
	.quad	0x402223b107746888              # double 9.0697100000000006
	.quad	0x402038e368f08462              # double 8.11111
	.quad	0x400195c9e6687f45              # double 2.1981389999999998
	.quad	0x40002f0ae536501e              # double 2.0229699999999999
	.quad	0x3ff23fb8b26394fb              # double 1.140557
	.quad	0x3fffdbdb5d894813              # double 1.9911760000000001
	.quad	0x402186eae9ee45c3              # double 8.7635109999999994
	.quad	0x3ff7362b6ae7d567              # double 1.450725
	.quad	0x40065479d4d83409              # double 2.791248
	.quad	0x400f59a1fd1569f5              # double 3.9187660000000002
	.quad	0x401547f62b6ae7d5              # double 5.3202749999999996
	.quad	0x4021ded245b291b8              # double 8.9351979999999998
	.quad	0x400de6dce39b456b              # double 3.7377259999999999
	.quad	0x40174df37329c348              # double 5.8261240000000001
	.quad	0x40054b5807fed203              # double 2.6617890000000002
	.quad	0x3feeabae03b3e9a7              # double 0.958457
	.quad	0x40178af07bfe7e20              # double 5.8856830000000002
	.quad	0x401a08a71de69ad4              # double 6.5084499999999998
	.quad	0x4020153da72a7bd5              # double 8.0414860000000008
	.quad	0x4021daff4ba51a00              # double 8.9277289999999993
	.quad	0x3fd87bbb62413db8              # double 0.382552
	.quad	0x4019d8da3c21187e              # double 6.4617699999999996
	.quad	0x4021cf2becedd484              # double 8.9046319999999994
	.quad	0x3ff7166be7afa722              # double 1.442974
	.quad	0x4020aeb2f23033a4              # double 8.3412089999999992
	.quad	0x400ff71da37ef5a9              # double 3.9956619999999998
	.quad	0x4017d86940357a35              # double 5.9613389999999997
	.quad	0x400211f0c34c1a8b              # double 2.2587600000000001
	.quad	0x4003fb8348f53c58              # double 2.4978090000000002
	.quad	0x402332f251c193b4              # double 9.5995050000000006
	.quad	0x4011ecd4ed2cbea5              # double 4.4812810000000001
	.quad	0x4014d2f837b4a234              # double 5.2060250000000003
	.quad	0x4014b723aafff36b              # double 5.1788470000000002
	.quad	0x4016d9e8c47a17f4              # double 5.7128019999999999
	.quad	0x401cbe94ee392e1f              # double 7.186115
	.quad	0x401fb8bf7f06705d              # double 7.9304180000000004
	.quad	0x401e7e9af5ba2be0              # double 7.6236379999999997
	.quad	0x401cfab7995ee137              # double 7.2448410000000001
	.quad	0x40067e4606748e47              # double 2.8116569999999999
	.quad	0x40202bb70ef56649              # double 8.0853809999999999
	.quad	0x4014f9018e757929              # double 5.2431700000000001
	.quad	0x3ffa45271bcdbbe0              # double 1.641883
	.quad	0x4020633eff195033              # double 8.1938399999999998
	.quad	0x4023246f36ef8056              # double 9.571161
	.quad	0x4021419008205ff2              # double 8.6280520000000003
	.quad	0x40154f9767903212              # double 5.3277260000000002
	.quad	0x400cdd816aceaaf3              # double 3.6081569999999998
	.quad	0x4013fa75cd0bb6ed              # double 4.9945899999999996
	.quad	0x400de70b06c43f60              # double 3.7378140000000002
	.quad	0x4012fde1198aeb81              # double 4.7479290000000001
	.quad	0x40226a3c85c24c40              # double 9.2074929999999994
	.quad	0x4021f73e468cac4b              # double 8.9828969999999995
	.quad	0x4006210060780fdc              # double 2.766114
	.quad	0x4017bc79702e6645              # double 5.9340570000000001
	.quad	0x401141055b899392              # double 4.3134969999999999
	.quad	0x40110f483cafb3b7              # double 4.2649239999999997
	.quad	0x40104e4fb97bb731              # double 4.0764760000000004
	.quad	0x4015b70b49e01de2              # double 5.4287539999999996
	.quad	0x401572ca9ac36545              # double 5.362101
	.quad	0x40128aaa7ded6ba9              # double 4.6354160000000002
	.quad	0x402276baf102363b              # double 9.2318949999999997
	.quad	0x400f1d6adf71eaff              # double 3.889364
	.quad	0x3fec24fca42aed14              # double 0.87951500000000004
	.quad	0x3ffb3e08aefb2aae              # double 1.702645
	.quad	0x3fec74afd5454153              # double 0.88924400000000003
	.quad	0x4015255970b49e02              # double 5.2864740000000001
	.quad	0x400802acb85a4f01              # double 3.001306
	.quad	0x4015c4fb97bb7308              # double 5.4423659999999998
	.quad	0x4020356b00ffda40              # double 8.1043319999999994
	.quad	0x40204c29bf162ae5              # double 8.1487560000000006
	.quad	0x3fe5a8e2e2b8c75c              # double 0.67686599999999997
	.quad	0x400c7a2f05a708ee              # double 3.55966
	.quad	0x3ff59cee17a02fb6              # double 1.350813
	.quad	0x4018766f5019f3c7              # double 6.115659
	.quad	0x4021212d98bf7f06              # double 8.5648009999999992
	.quad	0x402202f07bfe7e20              # double 9.0057410000000004
	.quad	0x4014bea4228997c4              # double 5.1861730000000001
	.quad	0x4020f6f08cc575c0              # double 8.4823039999999992
	.quad	0x3f846455eaee2004              # double 0.0099570000000000006
	.quad	0x400f6f544bb1af3a              # double 3.92936
	.quad	0x3ffadae3e6c4c597              # double 1.6784399999999999
	.quad	0x40184b4c3c18b503              # double 6.0735330000000003
	.quad	0x401b7fd86a8fc0d3              # double 6.8748490000000002
	.quad	0x3fb9beb18116ebd5              # double 0.100566
	.quad	0x400c16f08cc575c0              # double 3.5112009999999998
	.quad	0x3fe227008a697aee              # double 0.56726100000000002
	.quad	0x3fe6560e94ee392e              # double 0.69800499999999999
	.quad	0x400cd13059641f64              # double 3.6021429999999999
	.quad	0x400f14cec41dd1a2              # double 3.8851599999999999
	.quad	0x402104dcca70d1fa              # double 8.5094969999999996
	.quad	0x40224482e019b0ab              # double 9.1338109999999997
	.quad	0x3fdec07aaef2c732              # double 0.48049799999999998
	.quad	0x3ff80a4b124d099e              # double 1.502513
	.quad	0x4010cd2849cb252d              # double 4.2003490000000001
	.quad	0x402043320535c9e6              # double 8.1312409999999993
	.quad	0x401b6fba450acc0c              # double 6.8591090000000001
	.quad	0x4022507fcb923a2a              # double 9.1572250000000004
	.quad	0x3ff1d692b3cc4ac7              # double 1.114886
	.quad	0x400094db59578a2b              # double 2.0726840000000002
	.quad	0x401960b49e01de27              # double 6.3444390000000004
	.quad	0x40019b8b26394fad              # double 2.200949
	.quad	0x400b402c0a4a05de              # double 3.4063340000000002
	.quad	0x400e37b395c42203              # double 3.7771979999999998
	.quad	0x4011da05dd8f92b0              # double 4.4629130000000004
	.quad	0x4010c9a52263d817              # double 4.1969190000000003
	.quad	0x4011546fdeb52c9d              # double 4.3324579999999999
	.quad	0x400ae292817763e5              # double 3.3606310000000001
	.quad	0x4021db17ce52deca              # double 8.9279159999999997
	.quad	0x3fc8917d6b65a9a8              # double 0.19194
	.quad	0x401ae5eaab042529              # double 6.7245280000000003
	.quad	0x401f658d1526d8b2              # double 7.8491710000000001
	.quad	0x3fd8c7de5082cf53              # double 0.38719900000000002
	.quad	0x3ff4cb124d099e0e              # double 1.2995779999999999
	.quad	0x4021c1cf13cee9dd              # double 8.8785329999999991
	.quad	0x4014695cc857f306              # double 5.1028929999999999
	.quad	0x4001dbb8c32a8c9c              # double 2.2322860000000002
	.quad	0x40180b18dac258d6              # double 6.0108370000000004
	.quad	0x401ca4b90214ad36              # double 7.1608619999999998
	.quad	0x400fc04c8bc9cd3e              # double 3.968896
	.quad	0x400cdb61bb05faec              # double 3.6071200000000001
	.quad	0x3feba0c6b484d76b              # double 0.86337600000000003
	.quad	0x3f967d34df04ddb5              # double 0.021961999999999999
	.quad	0x401c45f17bd8be73              # double 7.0683040000000004
	.quad	0x401d0230fcf80dc3              # double 7.2521399999999998
	.quad	0x402120d5c74751ce              # double 8.5641309999999997
	.quad	0x3ff9521bc126a65d              # double 1.582546
	.quad	0x4021041871e6cd29              # double 8.5079989999999999
	.quad	0x4019183947496aad              # double 6.2736559999999999
	.quad	0x40100151a437824d              # double 4.0012879999999997
	.quad	0x40174e1c9b413986              # double 5.8262809999999998
	.quad	0x3ff2b380cb6c7a7d              # double 1.1688240000000001
	.quad	0x401fcc660a201472              # double 7.9496079999999996
	.quad	0x3ff0149731098d47              # double 1.0050269999999999
	.quad	0x40125e3de6149c6f              # double 4.5920329999999998
	.quad	0x400880f12c27a637              # double 3.0629599999999999
	.quad	0x4018edde37585be2              # double 6.2322930000000003
	.quad	0x40119d5f138bcdff              # double 4.403683
	.quad	0x401c7534bd76ee74              # double 7.1144590000000001
	.quad	0x401e10c5a8155d5f              # double 7.5163789999999996
	.quad	0x4012c592d98bf7f0              # double 4.6929429999999996
	.quad	0x400e0915379fa97e              # double 3.754435
	.quad	0x400734488c60cbf3              # double 2.9005290000000001
	.quad	0x401bcbdec5f394b8              # double 6.9490920000000003
	.quad	0x4013a6e371540032              # double 4.9129769999999997
	.quad	0x401400b2c83ec893              # double 5.0006820000000003
	.quad	0x4009d29ed3953dea              # double 3.2278419999999999
	.quad	0x400befc9bc771434              # double 3.4920840000000002
	.quad	0x401ec2424a276b7f              # double 7.6897060000000001
	.quad	0x400e4af9a8cdea03              # double 3.7866089999999999
	.quad	0x40105fc0d2c386d3              # double 4.0935090000000001
	.quad	0x4016ff8055fbb518              # double 5.7495130000000003
	.quad	0x40228e9d7342edbb              # double 9.2785449999999994
	.quad	0x3ff486cebbba55d2              # double 1.2829120000000001
	.quad	0x4020f8c2a454de7f              # double 8.4858600000000006
	.quad	0x4018b613d31b9b67              # double 6.17781
	.quad	0x40210a116659d12d              # double 8.5196640000000006
	.quad	0x4021b0f7b9e060fe              # double 8.8456399999999995
	.quad	0x4006e0bd44998d04              # double 2.8597359999999998
	.quad	0x40213693c03bc4d2              # double 8.6065959999999997
	.quad	0x40062730c67168f9              # double 2.769136
	.quad	0x40138be33acd5b68              # double 4.886609
	.quad	0x40213df2ecf20642              # double 8.6209939999999996
	.quad	0x401f2b441bb8c32b              # double 7.7922520000000004
	.quad	0x40228f3d5bab2181              # double 9.2797649999999994
	.quad	0x4008275f6fd21ff3              # double 3.019225
	.quad	0x401d358eeae9ee46              # double 7.3023030000000002
	.quad	0x401b719e30014f8b              # double 6.8609549999999997
	.quad	0x40190cd855970b4a              # double 6.2625440000000001
	.quad	0x3ff18ed3d859c8c9              # double 1.09737
	.quad	0x3ffc81bfbdf090f7              # double 1.781677
	.quad	0x3fc53d102bc72e27              # double 0.16592599999999999
	.quad	0x401d97060bb2bbaa              # double 7.3974840000000004
	.quad	0x401a54467381d7dc              # double 6.5823
	.quad	0x400ba5846e8f29d4              # double 3.455819
	.quad	0x3ffabdf5cf2495e1              # double 1.6713769999999999
	.quad	0x401bd6f2a5a469d7              # double 6.9599099999999998
	.quad	0x401ca5f84cad57bc              # double 7.1620799999999996
	.quad	0x400ac01711947cfa              # double 3.3437939999999999
	.quad	0x4011b6a93f290abb              # double 4.4283799999999998
	.quad	0x3fd48fa376922d95              # double 0.32126700000000002
	.quad	0x401b088bda9435ad              # double 6.7583460000000004
	.quad	0x400b65e1c15097c8              # double 3.424747
	.quad	0x3ff1d393250b5244              # double 1.1141540000000001
	.quad	0x40052406c00da1a9              # double 2.6425909999999999
	.quad	0x40175c54bcf0b6b7              # double 5.8401670000000001
	.quad	0x40225de5d18090b4              # double 9.1833939999999998
	.quad	0x401aabf6a0dbad3a              # double 6.6679329999999997
	.quad	0x401d9999567dbb17              # double 7.3999990000000002
	.quad	0x4020a5d91ab8e8ea              # double 8.3239219999999996
	.quad	0x401eafd113836a83              # double 7.6716959999999998
	.quad	0x3fdc17c1bda5119d              # double 0.43895000000000001
	.quad	0x400f748dc11e42e1              # double 3.9319109999999999
	.quad	0x40205679cc74b839              # double 8.1688980000000004
	.quad	0x40203d810624dd2f              # double 8.1201249999999998
	.quad	0x3fdf82cf52b90a78              # double 0.49235899999999999
	.quad	0x4005db07075b3e14              # double 2.7319469999999999
	.quad	0x4023c3e2d6238da4              # double 9.8825900000000004
	.quad	0x400ee76102795704              # double 3.862978
	.quad	0x4010a253da72a7bd              # double 4.1585229999999997
	.quad	0x4023d77403dddb12              # double 9.9208069999999999
	.quad	0x400fd3c3e74afd54              # double 3.9784009999999999
	.quad	0x401288327674d163              # double 4.6330049999999998
	.quad	0x40177a615a8deb10              # double 5.8695120000000003
	.quad	0x40144242070b8cfc              # double 5.064705
	.quad	0x3ffd332df505d0fa              # double 1.8249949999999999
	.quad	0x3fecd9945b6c3761              # double 0.90156000000000003
	.quad	0x4014130014f8b589              # double 5.0185550000000001
	.quad	0x3ffcaa64c2f837b5              # double 1.7916000000000001
	.quad	0x401da5100a393ee6              # double 7.4111940000000001
	.quad	0x4015d74794ea0770              # double 5.4602339999999998
	.quad	0x401be118c197e564              # double 6.9698209999999996
	.quad	0x401a17f3cf70153c              # double 6.5233910000000002
	.quad	0x3feccd1633482be9              # double 0.90003500000000003
	.quad	0x400dfaf640639d5e              # double 3.7475399999999999
	.quad	0x401b1dc6e2a80065              # double 6.7790790000000003
	.quad	0x4004e3d1cc100e6b              # double 2.61124
	.quad	0x402352d4d4024b34              # double 9.6617800000000002
	.quad	0x3fefa67a52ac753e              # double 0.98907199999999995
	.quad	0x4022f8342aa9f7b6              # double 9.4847730000000006
	.quad	0x4015f102795703f3              # double 5.4853610000000002
	.quad	0x401d0affb04ee7c5              # double 7.2607410000000003
	.quad	0x4008f1eafee6fb4c              # double 3.1181239999999999
	.quad	0x3ff0829cfdd22856              # double 1.0318879999999999
	.quad	0x3ff8e9f383f0bae9              # double 1.5571170000000001
	.quad	0x40221f1fff79c843              # double 9.060791
	.quad	0x4017286fcdee34fc              # double 5.7894889999999997
	.quad	0x40120c5f394b7b29              # double 4.5120820000000004
	.quad	0x40214b630a91537a              # double 8.64724
	.quad	0x40103d6d3b6cbd98              # double 4.0599869999999996
	.quad	0x3fead929670196d9              # double 0.839009
	.quad	0x4015404534bd76ee              # double 5.3127639999999996
	.quad	0x3ff7dc11e42e1262              # double 1.491228
	.quad	0x4021457928e0c9da              # double 8.6356900000000003
	.quad	0x401c085c67dfe32a              # double 7.008165
	.quad	0x402395c853c14834              # double 9.7925439999999994
	.quad	0x4020ee2435696e59              # double 8.4651200000000006
	.quad	0x4016456d5cfaacda              # double 5.5678000000000001
	.quad	0x401867036c9c0a8d              # double 6.1005989999999999
	.quad	0x4012256a37ac3eb8              # double 4.5365380000000002
	.quad	0x40168b5b2d4d4025              # double 5.6360900000000003
	.quad	0x3ffe1f548ecd8dbd              # double 1.882649
	.quad	0x40117bd556084a51              # double 4.3709309999999997
	.quad	0x3ff0495182a9930c              # double 1.0179
	.quad	0x40053691a75cd0bb              # double 2.6516449999999998
	.quad	0x401ae96bb98c7e28              # double 6.7279499999999999
	.quad	0x401236ffc115df65              # double 4.5537099999999997
	.quad	0x40145c970f7b9e06              # double 5.0904199999999999
	.quad	0x400122eb1c432ca5              # double 2.1420499999999998
	.quad	0x401da97e132b55ef              # double 7.4155199999999999
	.quad	0x40133a077036c9c1              # double 4.8066690000000003
	.quad	0x4014ce696a26e547              # double 5.2015739999999999
	.quad	0x402178d9945b6c37              # double 8.7360349999999993
	.quad	0x401d79591cd1c7de              # double 7.3685039999999997
	.quad	0x401fec5eb313be23              # double 7.98083
	.quad	0x40239d7060bb2bbb              # double 9.8074980000000007
	.quad	0x401d607d912556d2              # double 7.3442290000000003
	.quad	0x3ffd4e3ef284167b              # double 1.8316030000000001
	.quad	0x3fed6f0281ba7fc3              # double 0.91980099999999998
	.quad	0x401bb306e5cd4ed3              # double 6.9248310000000002
	.quad	0x401dfae924f227d0              # double 7.4950299999999999
	.quad	0x402208b7e4de3b8a              # double 9.0170279999999998
	.quad	0x401c22b27cbf6e3f              # double 7.0338839999999996
	.quad	0x4014afa333764f12              # double 5.1715210000000003
	.quad	0x4014219220ff5409              # double 5.0327840000000004
	.quad	0x400928b5cbff4773              # double 3.1448779999999998
	.quad	0x401e2cd855970b4a              # double 7.5437940000000001
	.quad	0x401138b19a415f46              # double 4.3053650000000001
	.quad	0x400df15379fa97e1              # double 3.7428349999999999
	.quad	0x40028155d5f56a7b              # double 2.3131520000000001
	.quad	0x3fc5124d099e0e73              # double 0.16462099999999999
	.quad	0x4017c38b8ae31d71              # double 5.9409619999999999
	.quad	0x40216f7186551937              # double 8.7176629999999999
	.quad	0x3ff6873ffac1d29e              # double 1.40802
	.quad	0x401a6e8b3b320536              # double 6.6079530000000002
	.quad	0x402067ef177a7009              # double 8.2029960000000006
	.quad	0x3fea68af81626b2f              # double 0.82527899999999998
	.quad	0x4008537da61e0c5b              # double 3.0407670000000002
	.quad	0x4011e58d1526d8b2              # double 4.4741710000000001
	.quad	0x4014d5fa658c4bd3              # double 5.2089629999999998
	.quad	0x3ff9ea9a3d2d87f9              # double 1.6197760000000001
	.quad	0x40065c8216c61523              # double 2.7951700000000002
	.quad	0x4015778ab0c88a48              # double 5.3667400000000001
	.quad	0x402180fc9363f573              # double 8.7519270000000002
	.quad	0x401a98da3c21187e              # double 6.6492699999999996
	.quad	0x4023a8791c4b9021              # double 9.8290489999999994
	.quad	0x4020896a055757d6              # double 8.2683870000000006
	.quad	0x400868155d5f56a8              # double 3.0508220000000001
	.quad	0x3fe0423fab10ba62              # double 0.50808699999999996
	.quad	0x4023f12d98bf7f06              # double 9.9710509999999992
	.quad	0x4000e586013660e5              # double 2.1120719999999999
	.quad	0x3ff476f19934efcc              # double 1.279039
	.quad	0x401b23800218def4              # double 6.7846679999999999
	.quad	0x401982474538ef35              # double 6.3772250000000001
	.quad	0x4013674d9c6b0532              # double 4.8508820000000004
	.quad	0x4020d0ec0f883340              # double 8.4080510000000004
	.quad	0x4015a290abb44e51              # double 5.4087550000000002
	.quad	0x4018ec144028e4fc              # double 6.2305460000000004
	.quad	0x4015c82adc4c9c91              # double 5.4454760000000002
	.quad	0x3ff5096dd26b723f              # double 1.314802
	.quad	0x3fe9fa786c22680a              # double 0.81182500000000002
	.quad	0x40111d8a116659d1              # double 4.2788469999999998
	.quad	0x4020ec15b1422ccb              # double 8.4611029999999996
	.quad	0x3fdee1ef73c0c1fd              # double 0.48254000000000002
	.quad	0x401caf06f6944674              # double 7.1709250000000004
	.quad	0x401e3c93a7115161              # double 7.5591569999999999
	.quad	0x4018478f68be2f7b              # double 6.0698829999999999
	.quad	0x4017a6eefa1e3eaf              # double 5.9130209999999996
	.quad	0x40026a5614df8b15              # double 2.3019219999999998
	.quad	0x3fff96b441bb8c33              # double 1.9742930000000001
	.quad	0x40212c8a7a41e57e              # double 8.5869940000000007
	.quad	0x401bb479d4d83409              # double 6.9262459999999999
	.quad	0x401458d3f1843c3a              # double 5.0867459999999998
	.quad	0x4012efc19c17225b              # double 4.7341369999999996
	.quad	0x3ff10945f9df548f              # double 1.064764
	.quad	0x40166aa1511dffc5              # double 5.6041309999999998
	.quad	0x4000bcc8de2ac322              # double 2.0921799999999999
	.quad	0x3ffabd61f5be5d9e              # double 1.6712359999999999
	.quad	0x4016a7ab324851a8              # double 5.6637389999999996
	.quad	0x400e301d9f4d37c1              # double 3.7734939999999999
	.quad	0x401a558f2e05ccc9              # double 6.5835540000000004
	.quad	0x40216672fba01eef              # double 8.7000960000000003
	.quad	0x40164072d1aeb3dd              # double 5.5629379999999999
	.quad	0x4009fa4f8726d04e              # double 3.2472219999999998
	.quad	0x401e7d79d0a67621              # double 7.622535
	.quad	0x4022308b32ce8965              # double 9.0948119999999992
	.quad	0x4023e690de093533              # double 9.9503240000000001
	.quad	0x4023c4b1ab0856e7              # double 9.8841680000000007
	.quad	0x401f13d03968d75a              # double 7.7693490000000001
	.quad	0x4023eff609dcf894              # double 9.968674
	.quad	0x40041a7e30878748              # double 2.5129359999999998
	.quad	0x401b4616b54e2b06              # double 6.8184459999999998
	.quad	0x401b326aa8eb4635              # double 6.7992350000000004
	.quad	0x40120fdf7e8038a0              # double 4.5155010000000004
	.quad	0x3ff658ec95bff045              # double 1.3967099999999999
	.quad	0x401e6deacc92146a              # double 7.6073409999999999
	.quad	0x4018eeeed8904f6e              # double 6.233333
	.quad	0x401599b8023a6ce3              # double 5.4001159999999997
	.quad	0x401066362a5e785b              # double 4.0998159999999997
	.quad	0x401e871c10d7be98              # double 7.6319429999999996
	.quad	0x3fd505143bf72713              # double 0.32843499999999998
	.quad	0x401d2974a3400b89              # double 7.2904840000000002
	.quad	0x4010963800218def              # double 4.1466979999999998
	.quad	0x401bb7e670e2c12b              # double 6.9295900000000001
	.quad	0x4016cc4e2f37fbf0              # double 5.6995170000000002
	.quad	0x3ff0496dd26b723f              # double 1.017927
	.quad	0x402244107314ca92              # double 9.1329379999999993
	.quad	0x4007c1733226c3b9              # double 2.9694579999999999
	.quad	0x401d5be37de939eb              # double 7.3397350000000001
	.quad	0x4008e1975f2cb641              # double 3.1101519999999998
	.quad	0x400665510d38cda7              # double 2.799471
	.quad	0x401738f25a250f84              # double 5.805612
	.quad	0x3ff4752da98676a7              # double 1.278608
	.quad	0x40013fd7a13c254a              # double 2.1561729999999999
	.quad	0x40238eb9a176ddad              # double 9.7787600000000001
	.quad	0x400a1ca6ca03c4b1              # double 3.2639900000000002
	.quad	0x401e25a858793dd9              # double 7.5367749999999995
	.quad	0x40230023c85c24c4              # double 9.5002729999999999
	.quad	0x401cc10f94c87981              # double 7.188536
	.quad	0x4020c27bb2fec56d              # double 8.3798499999999994
	.quad	0x401bc7a4e7ab7564              # double 6.9449649999999998
	.quad	0x401d016aceaaf35e              # double 7.2513839999999998
	.quad	0x401151f212d77319              # double 4.330025
	.quad	0x400c90795f676ea4              # double 3.5705439999999999
	.quad	0x4018fab0856e696a              # double 6.2448139999999999
	.quad	0x401e1f19934efcbd              # double 7.5303709999999997
	.quad	0x40216d70c564f97f              # double 8.7137510000000002
	.quad	0x40182b8e4b87bdcf              # double 6.042535
	.quad	0x400f7ce8d972cd7d              # double 3.935991
	.quad	0x401e3f9591cd1c7e              # double 7.5620940000000001
	.quad	0x4013d9d3cbc48f11              # double 4.9627220000000003
	.quad	0x4004a6bacf7446fa              # double 2.5814110000000001
	.quad	0x401a1359791819d2              # double 6.5188959999999998
	.quad	0x401252873bc903ea              # double 4.5805939999999996
	.quad	0x40165b6848beb5b3              # double 5.5892650000000001
	.quad	0x40112bda9435ac8a              # double 4.2928259999999998
	.quad	0x4013609bf9c62a1b              # double 4.8443449999999997
	.quad	0x40129816aceaaf36              # double 4.6485240000000001
	.quad	0x3ff0249e44fa0514              # double 1.0089399999999999
	.quad	0x40239c62a1b5c7ce              # double 9.8054400000000008
	.quad	0x4022b5538ac18f82              # double 9.3541530000000002
	.quad	0x4015c260b2c83ec9              # double 5.4398220000000004
	.quad	0x4016f0578e5c4eb5              # double 5.7347089999999996
	.quad	0x40141285ec3dab5c              # double 5.0180889999999998
	.quad	0x40066c9752977c89              # double 2.803023
	.quad	0x4017cf993d5347a6              # double 5.9527330000000003
	.quad	0x3ffce1650a45d420              # double 1.8050280000000001
	.quad	0x4004a7cf1c3265ae              # double 2.5819380000000001
	.quad	0x3ff52bd9018e7579              # double 1.323205
	.quad	0x4021a30d306a2b17              # double 8.81846
	.quad	0x3fee0d2a1f8e3ac1              # double 0.93910700000000003
	.quad	0x400c0f861a60d456              # double 3.5075799999999999
	.quad	0x40016d0247021d11              # double 2.1782270000000001
	.quad	0x400cf90e23af31b1              # double 3.6216089999999999
	.quad	0x3fe192d1287c200c              # double 0.54917199999999999
	.quad	0x4005c61e0c5a8156              # double 2.7217370000000001
	.quad	0x402145c24c404a73              # double 8.6362480000000001
	.quad	0x3fa44e7253da72a8              # double 0.039661000000000002
	.quad	0x4000993469941850              # double 2.0748069999999998
	.quad	0x4011c8e8a71de69b              # double 4.4462000000000002
	.quad	0x401d929131ec0b56              # double 7.3931319999999996
	.quad	0x40041ff9b56323bc              # double 2.5156130000000001
	.quad	0x3fd52239e6ab9b24              # double 0.33021400000000001
	.quad	0x40203fb1c0010c6f              # double 8.1244029999999992
	.quad	0x400991df761cbccf              # double 3.1962269999999999
	.quad	0x3ff6737a80cf9e38              # double 1.4031929999999999
	.quad	0x400c191e646f1562              # double 3.5122650000000002
	.quad	0x3fea219652bd3c36              # double 0.81659999999999999
	.quad	0x3fee2176ddaceee1              # double 0.94158500000000001
	.quad	0x401f631f46ed245b              # double 7.8467989999999998
	.quad	0x4004c5436b8f9b13              # double 2.59632
	.quad	0x4006b0068db8bac7              # double 2.83595
	.quad	0x3ff24ae74f2f123c              # double 1.1432869999999999
	.quad	0x4020407b139c94f7              # double 8.1259390000000007
	.quad	0x401b8c75818c5c9a              # double 6.8871669999999998
	.quad	0x401be14b167ec786              # double 6.9700129999999998
	.quad	0x402346dfa43fe5c9              # double 9.6384249999999997
	.quad	0x400a0efbb0e5e679              # double 3.2573159999999999
	.quad	0x3fe51e1d2178f68c              # double 0.65992600000000001
	.quad	0x400500a4a05dd8f9              # double 2.6253139999999999
	.quad	0x4010d3f1843c3a43              # double 4.206976
	.quad	0x40217f32df505d10              # double 8.7484350000000006
	.quad	0x401de45f17bd8be7              # double 7.4730189999999999
	.quad	0x400c9f562174c4ce              # double 3.577801
	.quad	0x40138f7b5aea3162              # double 4.8901190000000003
	.quad	0x40016f2a5a469d73              # double 2.1792799999999999
	.quad	0x401bcf2990f301eb              # double 6.9523070000000002
	.quad	0x4012d8405b39e27a              # double 4.7111830000000001
	.quad	0x4012a031ceaf251c              # double 4.6564399999999999
	.quad	0x3ff7ad601ffb480a              # double 1.4798279999999999
	.quad	0x401f93122b7baecd              # double 7.8936239999999999
	.quad	0x400305061416377a              # double 2.377453
	.quad	0x4014ebe9424e5929              # double 5.2303819999999996
	.quad	0x401eac72e275ab7e              # double 7.6684070000000002
	.quad	0x400ec94ccab3edd9              # double 3.8482910000000001
	.quad	0x401dcae7d566cf42              # double 7.44815
	.quad	0x401581ed9dfdac69              # double 5.3768830000000003
	.quad	0x401216d00b45ae60              # double 4.522278
	.quad	0x3ff45e060fe47992              # double 1.2729550000000001
	.quad	0x401d744cbe1eb420              # double 7.3635739999999998
	.quad	0x4010bce789e774ef              # double 4.1844770000000002
	.quad	0x40146f2becedd484              # double 5.1085659999999997
	.quad	0x40031a20ddc61954              # double 2.3877579999999998
	.quad	0x3ffbcb0292817764              # double 1.737063
	.quad	0x4020703e63e8dda5              # double 8.2192260000000008
	.quad	0x40151c169c23b795              # double 5.2774299999999998
	.quad	0x3fc40ab713272431              # double 0.15657699999999999
	.quad	0x401774a2fcefaa47              # double 5.8639029999999996
	.quad	0x40146d7f0ed3d85a              # double 5.1069300000000002
	.quad	0x3fc43e963dc486ad              # double 0.15816
	.quad	0x400f0b2bfdb4cc25              # double 3.880455
	.quad	0x400625e56cd6c2f0              # double 2.7685040000000001
	.quad	0x401711276fb09204              # double 5.7667520000000003
	.quad	0x40218e043a2163fe              # double 8.7773760000000003
	.quad	0x3ff38adff822bbed              # double 1.2214050000000001
	.quad	0x3ffb9d1a21ea3593              # double 1.7258549999999999
	.quad	0x401c74330d73860a              # double 7.1134760000000004
	.quad	0x3ff2600d1b71758e              # double 1.14845
	.quad	0x400e23e5321e603d              # double 3.7675269999999998
	.quad	0x401803061c79b34a              # double 6.0029529999999998
	.quad	0x4016dfa1a0cf1801              # double 5.7183900000000003
	.quad	0x401c830941c8216c              # double 7.1279649999999997
	.quad	0x401824e0114d2f5e              # double 6.0360110000000002
	.quad	0x401e58576cce5f74              # double 7.586271
	.quad	0x400f007c4199fe43              # double 3.8752369999999998
	.quad	0x400c454823854046              # double 3.5338289999999999
	.quad	0x3ffccbd017dae819              # double 1.7997590000000001
	.quad	0x401b5249a133c1ce              # double 6.8303589999999996
	.quad	0x3fb5c0fcb4f1e4b4              # double 0.084975999999999996
	.quad	0x3fcf4ba51a005c46              # double 0.24449599999999999
	.quad	0x400c9f9a49c2c1b1              # double 3.577931
	.quad	0x4018227674d16335              # double 6.0336550000000004
	.quad	0x401e5466f5019f3c              # double 7.5824239999999996
	.quad	0x40171f1bac2df0d4              # double 5.7803789999999999
	.quad	0x3ff591904b3c3e75              # double 1.3480380000000001
	.quad	0x4012f818c5c9a34d              # double 4.7422820000000003
	.quad	0x401849ef5232d2bb              # double 6.0722019999999999
	.quad	0x401f60807357e671              # double 7.8442400000000001
	.quad	0x3ffcef5a964e8b7e              # double 1.8084359999999999
	.quad	0x4003f0aed99cbee8              # double 2.492521
	.quad	0x4019a352eb5f5f0b              # double 6.4094959999999999
	.quad	0x40215eabffcdab19              # double 8.6849059999999998
	.quad	0x400e422dd7a99fa1              # double 3.782314
	.quad	0x4021dbab21815a08              # double 8.9290400000000005
	.quad	0x3fb7f162ae4b0186              # double 0.093526999999999999
	.quad	0x401d19ee45c358b0              # double 7.2753230000000002
	.quad	0x400407a5b0ff10ed              # double 2.5037340000000001
	.quad	0x400b073bc903ea70              # double 3.3785319999999999
	.quad	0x40175dba908a265f              # double 5.8415319999999999
	.quad	0x40235a352eb5f5f1              # double 9.6761870000000005
	.quad	0x3ffd73a14cec41dd              # double 1.84073
	.quad	0x4008ac743201040c              # double 3.084206
	.quad	0x4021073b645a1cac              # double 8.5141249999999999
	.quad	0x4022ef8af3e468cb              # double 9.4678570000000004
	.quad	0x4013a7995ee136e7              # double 4.9136709999999999
	.quad	0x4003aa1dfb9389b5              # double 2.4580649999999999
	.quad	0x4022b6aa4b9884c7              # double 9.3567680000000006
	.quad	0x4011539c0ebedfa4              # double 4.3316499999999998
	.quad	0x401b0515054ac29c              # double 6.7549630000000001
	.quad	0x401052b4959e6256              # double 4.0807669999999998
	.quad	0x400a8ad14a0a0f4d              # double 3.3177819999999998
	.quad	0x40233b7bd05af6c7              # double 9.6161790000000006
	.quad	0x400d40ad03d9a954              # double 3.6565799999999999
	.quad	0x401114284dfce315              # double 4.269685
	.quad	0x401247689ca18bd6              # double 4.5697349999999997
	.quad	0x401b3ce6c093d966              # double 6.8094739999999998
	.quad	0x3ff5c2070b8cfbfc              # double 1.3598699999999999
	.quad	0x400ce770bd017daf              # double 3.6130080000000002
	.quad	0x401526f156191149              # double 5.28803
	.quad	0x401c193c46d82ba6              # double 7.0246440000000003
	.quad	0x401be82e44b6e936              # double 6.9767390000000002
	.quad	0x4007fc896dd26b72              # double 2.9983089999999999
	.quad	0x400c82f8bdec5f39              # double 3.5639509999999999
	.quad	0x400fa63e8dda48b6              # double 3.9561739999999999
	.quad	0x40198261bf37b8d4              # double 6.3773260000000001
	.quad	0x401ebcd20afa2f06              # double 7.6843950000000003
	.quad	0x400b88ec52a411c3              # double 3.4418570000000002
	.quad	0x401dec64ba94bbe4              # double 7.4808529999999998
	.quad	0x400e71950331e3a8              # double 3.8054600000000001
	.quad	0x40060cf4a558ea7d              # double 2.7563260000000001
	.quad	0x4021fc3f811f4f51              # double 8.9926720000000007
	.quad	0x400e26c97d8cf399              # double 3.768939
	.quad	0x402098d64d7f0ed4              # double 8.2985100000000002
	.quad	0x401fe0eae18ac9f3              # double 7.969646
	.quad	0x40205c185058dde8              # double 8.1798730000000006
	.quad	0x4022d33cc4ac6cdb              # double 9.412573
	.quad	0x40228d7c0b135979              # double 9.2763369999999998
	.quad	0x4016b4024b33daf9              # double 5.6757900000000001
	.quad	0x40047fc8f32378ab              # double 2.562395
	.quad	0x4005030caa326e11              # double 2.6264889999999999
	.quad	0x3ff2319a415f45e1              # double 1.1371100000000001
	.quad	0x40076e46cfc829d0              # double 2.9288460000000001
	.quad	0x4000dc55000c953a              # double 2.1075840000000001
	.quad	0x400e92d0a2446306              # double 3.8216869999999998
	.quad	0x401592606fac6046              # double 5.3929460000000002
	.quad	0x401581f926c7eae6              # double 5.3769270000000002
	.quad	0x3fec308bb906466b              # double 0.88092599999999999
	.quad	0x4017aee84ad794a7              # double 5.9208080000000001
	.quad	0x4020ee68e3ef2841              # double 8.4656439999999993
	.quad	0x3ffab9fa97e132b5              # double 1.6704049999999999
	.quad	0x40190694898f605b              # double 6.2564260000000003
	.quad	0x3ffbeffe2a3cea6c              # double 1.746092
	.quad	0x3fda9b3d07c84b5e              # double 0.41572500000000001
	.quad	0x401f5633482be8bc              # double 7.8341799999999999
	.quad	0x4000b1348b220792              # double 2.0865260000000001
	.quad	0x40120501e2584f4c              # double 4.5048899999999996
	.quad	0x400cdb6f5caf2d80              # double 3.6071460000000002
	.quad	0x401fc57abb8800eb              # double 7.9428510000000001
	.quad	0x4021d6325d4a5df2              # double 8.9183529999999998
	.quad	0x4012b7a13c254a3c              # double 4.6793259999999997
	.quad	0x4010ee093532e7b4              # double 4.2324570000000001
	.quad	0x4009d545c78a6dad              # double 3.2291370000000001
	.quad	0x401ebda6a4441787              # double 7.6852059999999999
	.quad	0x402367d75e2046c7              # double 9.7028149999999993
	.quad	0x401faf5b5fa22707              # double 7.9212470000000001
	.quad	0x401aa77531db445f              # double 6.6635330000000002
	.quad	0x4006165668c26139              # double 2.760907
	.quad	0x401bff06705c896e              # double 6.9990480000000002
	.quad	0x4020bf229e90795f              # double 8.3733109999999993
	.quad	0x3fcdac81d3aa36a0              # double 0.23182700000000001
	.quad	0x3ff8771da37ef5a9              # double 1.5290809999999999
	.quad	0x4000dd14e3bcd35b              # double 2.1079500000000002
	.quad	0x401131819d2391d5              # double 4.2983459999999996
	.quad	0x3fea5d3fe1975f2d              # double 0.82388300000000003
	.quad	0x40217b1209edbf8c              # double 8.7403720000000006
	.quad	0x40027c6327ed84d3              # double 2.3107359999999999
	.quad	0x401df31a8ef77f28              # double 7.487406
	.quad	0x4021077b395c4220              # double 8.5146119999999996
	.quad	0x400fcb8ae31d712a              # double 3.974386
	.quad	0x4022df67d34df04e              # double 9.4363390000000003
	.quad	0x3ff24144028e4fb9              # double 1.1409339999999999
	.quad	0x400956366d7a56de              # double 3.1670959999999999
	.quad	0x400201c68ec52a41              # double 2.250867
	.quad	0x40164f8a4c1ebc84              # double 5.5776760000000003
	.quad	0x40208f5dfeb8d823              # double 8.2800139999999995
	.quad	0x4013d07d0aed99cc              # double 4.9536020000000001
	.quad	0x4019d51116a8b8f1              # double 6.4580729999999997
	.quad	0x3ff985260f5e41d5              # double 1.5950070000000001
	.quad	0x401317774aba3876              # double 4.7729160000000004
	.quad	0x4020d5905c033615              # double 8.4171169999999993
	.quad	0x401b594e1a3f4667              # double 6.8372120000000001
	.quad	0x40237bcbc48f10aa              # double 9.7417890000000007
	.quad	0x3fd63382e44b6e93              # double 0.34689399999999998
	.quad	0x3fd343cc07aaef2c              # double 0.30101299999999998
	.quad	0x4009db480a5accd5              # double 3.2320709999999999
	.quad	0x3fd333ce63a5c1c6              # double 0.300037
	.quad	0x40118bf1a5ca2984              # double 4.3866639999999997
	.quad	0x40220c0096feb4a6              # double 9.0234419999999993
	.quad	0x40119d03968d759f              # double 4.4033340000000001
	.quad	0x4001ed16b97fe8ee              # double 2.2407659999999998
	.quad	0x401ba1a5ca29845e              # double 6.9078590000000002
	.quad	0x4018226bb55ac040              # double 6.033614
	.quad	0x4020474a558ea7ce              # double 8.1392389999999999
	.quad	0x3ff0a3b8a19c9d5a              # double 1.039971
	.quad	0x40118296b3354c12              # double 4.3775279999999999
	.quad	0x3fd5e99a62ed3522              # double 0.34238299999999999
	.quad	0x400afa15db3397dd              # double 3.372112
	.quad	0x401dec99ae924f22              # double 7.4810549999999996
	.quad	0x401e941248d7e026              # double 7.6446009999999998
	.quad	0x4020b56861e92924              # double 8.3543120000000001
	.quad	0x3ff3734e7685985b              # double 1.215651
	.quad	0x4006ef07bfe7e1fc              # double 2.866714
	.quad	0x4019e2391d57ff9b              # double 6.4709209999999997
	.quad	0x401d71e7967caea7              # double 7.3612349999999998
	.quad	0x3ffd40f01fb82c2c              # double 1.828354
	.quad	0x401219fb6134ce3e              # double 4.5253730000000001
	.quad	0x4021b8470a808c82              # double 8.8599169999999994
	.quad	0x401cfeddce7cd035              # double 7.2488929999999998
	.quad	0x3fdc163779e9d0ea              # double 0.43885600000000002
	.quad	0x401a816228134480              # double 6.6263509999999997
	.quad	0x40117531db445ed5              # double 4.3644480000000003
	.quad	0x4021b9f05ea24cc7              # double 8.8631620000000009
	.quad	0x401e8fe0ce0b912e              # double 7.6405060000000002
	.quad	0x4015666f0cfe1544              # double 5.3500329999999998
	.quad	0x3ffc66e978d4fdf4              # double 1.7751250000000001
	.quad	0x402391d94d0dcfcc              # double 9.7848609999999993
	.quad	0x401b67589efd86a9              # double 6.850924
	.quad	0x3fe93edfa43fe5c9              # double 0.78892499999999999
	.quad	0x3ff19cca70d1fa33              # double 1.100779
	.quad	0x401a8c764adff823              # double 6.6371700000000002
	.quad	0x4013dbd72bcb5fe5              # double 4.9646879999999998
	.quad	0x402345069a4df480              # double 9.6348160000000007
	.quad	0x401e62eec7c957cd              # double 7.5966139999999997
	.quad	0x4015cd883ba3443d              # double 5.4507149999999998
	.quad	0x3fbb6c69b5a63f9a              # double 0.107123
	.quad	0x3fbedd8b60f1b25f              # double 0.12056799999999999
	.quad	0x4022d72ae07e5a79              # double 9.420249
	.quad	0x401f2e2b8c75c4a8              # double 7.7950879999999997
	.quad	0x3ffc1eabbcb1cc96              # double 1.7574879999999999
	.quad	0x401e1d9274e22a2c              # double 7.5288789999999999
	.quad	0x400d978b3700474e              # double 3.6989960000000002
	.quad	0x40193d0e12e83a11              # double 6.3096240000000003
	.quad	0x40236ccea28fe261              # double 9.7125140000000005
	.quad	0x401139635610adcd              # double 4.3060429999999998
	.quad	0x3ff1eaab042528ae              # double 1.1197919999999999
	.quad	0x4015a43dccea28fe              # double 5.4103919999999999
	.quad	0x401c56e9bbf0dc77              # double 7.0848760000000004
	.quad	0x40191e24bba12b5e              # double 6.2794369999999997
	.quad	0x401a20f733a8a3f9              # double 6.5321930000000004
	.quad	0x4016b71715c63ae2              # double 5.6787989999999997
	.quad	0x402106275ab7dc7b              # double 8.5120190000000004
	.quad	0x40129f66e86c6584              # double 4.6556660000000001
	.quad	0x40230f06b37867f1              # double 9.5293480000000005
	.quad	0x400414128bf3bea9              # double 2.5098009999999999
	.quad	0x4012e5c74751ce29              # double 4.7243930000000001
	.quad	0x401e731f46ed245b              # double 7.6124239999999998
	.quad	0x4010c10e02214270              # double 4.1885300000000001
	.quad	0x40183f2e48e8a71e              # double 6.0617000000000001
	.quad	0x4009944dca8e2e2c              # double 3.1974140000000002
	.quad	0x400672c493426784              # double 2.8060390000000002
	.quad	0x40101f0a1be2b496              # double 4.0303120000000003
	.quad	0x4022fe8f4b61fe22              # double 9.4971870000000003
	.quad	0x4023ea5b749adc90              # double 9.9577290000000005
	.quad	0x40113dc0db2702a3              # double 4.3103059999999997
	.quad	0x4005d7eed45e9186              # double 2.7304360000000001
	.quad	0x40080eec7c957cd4              # double 3.0072869999999998
	.quad	0x3facd2f5dbb9cf9a              # double 0.056297
	.quad	0x4017bd0edc3bd599              # double 5.9346269999999999
	.quad	0x40234f9e7b80a9df              # double 9.6555060000000008
	.quad	0x3ff2409d495182aa              # double 1.1407750000000001
	.quad	0x400d47418d6909af              # double 3.6597930000000001
	.quad	0x40227cf97edc7ef1              # double 9.2440909999999992
	.quad	0x400ce528ae74f2f1              # double 3.6118939999999999
	.quad	0x40140433d6c72192              # double 5.0041039999999999
	.quad	0x3ffc61b6d43d0397              # double 1.7738560000000001
	.quad	0x4002a714fce746cc              # double 2.3315830000000002
	.quad	0x40139511dffc547a              # double 4.8955760000000001
	.quad	0x4014b94e1a3f4667              # double 5.1809620000000001
	.quad	0x3ff6270c1333b96b              # double 1.384533
	.quad	0x401f626f1dc50ce5              # double 7.846127
	.quad	0x40172b2bfdb4cc25              # double 5.79216
	.quad	0x3fe4441fea8112ba              # double 0.63331599999999999
	.quad	0x401bfd9945b6c376              # double 6.997655
	.quad	0x4012013ec460ed81              # double 4.5012160000000003
	.quad	0x3ffe6f73c0c1fc8f              # double 1.90221
	.quad	0x4009be4b44a1f080              # double 3.2179169999999999
	.quad	0x3fe15703f2d3c793              # double 0.54187200000000002
	.quad	0x401d19ff92f2b66b              # double 7.2753889999999997
	.quad	0x4022d194e1a3f466              # double 9.4093389999999992
	.quad	0x4015616052502eec              # double 5.3450939999999996
	.quad	0x401314f69ca9ef52              # double 4.7704719999999998
	.quad	0x4020b32e59af9ebf              # double 8.3499630000000007
	.quad	0x4019efe86833c600              # double 6.4842849999999999
	.quad	0x401b89a38fbca106              # double 6.8844130000000003
	.quad	0x400a2c122749f0e5              # double 3.2715190000000001
	.quad	0x3fea209aaa3ad18d              # double 0.81647999999999998
	.quad	0x401e359ff4fd6d7f              # double 7.5523680000000004
	.quad	0x3ff9c7f455a7d242              # double 1.6113170000000001
	.quad	0x3fe5e7dbb16c1e36              # double 0.68455299999999997
	.quad	0x401a3059a73b42cc              # double 6.5472169999999998
	.quad	0x3fdfd66277c45cbc              # double 0.49746000000000001
	.quad	0x40113f4a98aa8651              # double 4.3118080000000001
	.quad	0x40231240b780346e              # double 9.5356500000000004
	.quad	0x3ffa02b0ea18372e              # double 1.6256569999999999
	.quad	0x401bb5d031055b8a              # double 6.9275520000000004
	.quad	0x4013567f0aa21a72              # double 4.8344690000000003
	.quad	0x400bc582dbe7f2c3              # double 3.471441
	.quad	0x400f46f36ef80560              # double 3.9096440000000001
	.quad	0x40220c1b10fd7e46              # double 9.0236440000000009
	.quad	0x400ecddf86e3b470              # double 3.8505240000000001
	.quad	0x3ffea003ab862b28              # double 1.914066
	.quad	0x401e98194c016052              # double 7.6485339999999997
	.quad	0x40109d08d4bad7d8              # double 4.1533540000000002
	.quad	0x4022f6eae9ee45c3              # double 9.4822609999999993
	.quad	0x4022b4245f5ad96a              # double 9.3518399999999993
	.quad	0x4006e810a569b175              # double 2.8633130000000002
	.quad	0x4023b60ce0b912dc              # double 9.8555670000000006
	.quad	0x402054cd0fe8ab50              # double 8.1656270000000006
	.quad	0x401b8774eebf65dc              # double 6.882282
	.quad	0x4020ed872f33ca32              # double 8.4639220000000002
	.quad	0x3fc6e086bdf4c2b5              # double 0.178727
	.quad	0x40214cf67b1c0011              # double 8.6503180000000004
	.quad	0x40156752977c88e8              # double 5.3509010000000004
	.quad	0x3fd2a5c1c6088d6d              # double 0.29136699999999999
	.quad	0x40121d8a116659d1              # double 4.5288469999999998
	.quad	0x4022f51266341180              # double 9.4786560000000009
	.quad	0x401da26527a20579              # double 7.4085890000000001
	.quad	0x401f7e3a7daa4fca              # double 7.8732699999999998
	.quad	0x40216858ff759685              # double 8.7038039999999999
	.quad	0x4011d7fcb923a29c              # double 4.4609249999999996
	.quad	0x40020ae6c8f75537              # double 2.2553230000000002
	.quad	0x402202acd9e83e42              # double 9.0052249999999994
	.quad	0x402052a6b0d95140              # double 8.1614280000000008
	.quad	0x40098348f53c579f              # double 3.1891039999999999
	.quad	0x40223589acbc8c0d              # double 9.1045660000000002
	.quad	0x4003400d1b71758e              # double 2.4062749999999999
	.quad	0x4021ba19439de482              # double 8.8634740000000001
	.quad	0x400dd26a65cf67b2              # double 3.7277420000000001
	.quad	0x40171940bbb1f256              # double 5.774661
	.quad	0x401658fa7a85015c              # double 5.5868929999999999
	.quad	0x3fd3b1bbcf4e874d              # double 0.30772300000000002
	.quad	0x401171fea8112ba1              # double 4.3613229999999996
	.quad	0x401e3f42352eb5f6              # double 7.5617760000000001
	.quad	0x4012ad490e66cb10              # double 4.6692239999999998
	.quad	0x401195e5f30e7ff6              # double 4.3963850000000004
	.quad	0x401989d2bf551505              # double 6.3845929999999997
	.quad	0x4012654d61b2a27f              # double 4.5989279999999999
	.quad	0x4014379f23465626              # double 5.0543180000000003
	.quad	0x4023caa1d755bccb              # double 9.895766
	.quad	0x3ff2640a6b93ccd1              # double 1.149424
	.quad	0x40228ff2c3009b30              # double 9.2811489999999992
	.quad	0x40217d432873bc90              # double 8.7446529999999996
	.quad	0x4019033f85510d39              # double 6.2531720000000002
	.quad	0x3ff0c0eae18ac9f3              # double 1.047099
	.quad	0x3ff82df82b1f687b              # double 1.511223
	.quad	0x400fac2b51bd61f6              # double 3.9590670000000001
	.quad	0x400f17fe8ee6b830              # double 3.8867159999999998
	.quad	0x4021271f57b41bfc              # double 8.5764110000000002
	.quad	0x40192f262888b546              # double 6.2960440000000002
	.quad	0x3fd2b80a9de8b3b3              # double 0.29248299999999999
	.quad	0x4021033a2595bbbf              # double 8.5063030000000008
	.quad	0x400315f80991793a              # double 2.3857270000000002
	.quad	0x400de135daad6020              # double 3.734966
	.quad	0x401ff3508f648c72              # double 7.9876120000000004
	.quad	0x4016922a2c237479              # double 5.6427389999999997
	.quad	0x40229b3d6c721922              # double 9.3032029999999999
	.quad	0x40218f7531db445f              # double 8.7801910000000003
	.quad	0x3ff197dae81882ae              # double 1.0995740000000001
	.quad	0x400ceeb1c432ca58              # double 3.6165500000000002
	.quad	0x401386e6d9be4cd7              # double 4.8817399999999997
	.quad	0x3fcc49774256bca5              # double 0.22099199999999999
	.quad	0x4013594face67d78              # double 4.837218
	.quad	0x3ffbe1e81cb46bad              # double 1.742653
	.quad	0x3feb119ef954eb14              # double 0.84590100000000001
	.quad	0x3fde263d816aceab              # double 0.471084
	.quad	0x3fc6362a5e785b5b              # double 0.17352799999999999
	.quad	0x40229e3ac0c62e4d              # double 9.3090419999999998
	.quad	0x402116d6ba8c5868              # double 8.5446069999999992
	.quad	0x402323543aeab799              # double 9.5690019999999993
	.quad	0x400792c493426784              # double 2.9466640000000002
	.quad	0x401fd738a3b57c4e              # double 7.9601769999999998
	.quad	0x401dc49949e8815e              # double 7.4419909999999998
	.quad	0x4018f49e8815e397              # double 6.2388859999999999
	.quad	0x401f294e1a3f4667              # double 7.790337
	.quad	0x4018d6744b2b777d              # double 6.2094279999999999
	.quad	0x3ff725a469d7342f              # double 1.44669
	.quad	0x400abbacb4289119              # double 3.3416380000000001
	.quad	0x4022dc156e264e48              # double 9.4298509999999993
	.quad	0x40045d68c692f6e8              # double 2.5456099999999999
	.quad	0x4019cf644955b467              # double 6.4525309999999996
	.quad	0x40116767903211cb              # double 4.350981
	.quad	0x4021c3445ed4a1ad              # double 8.8813809999999993
	.quad	0x4020e26b2f23033a              # double 8.4422239999999995
	.quad	0x3fee82773e24febd              # double 0.953426
	.quad	0x401f0743e963dc48              # double 7.7570949999999996
	.quad	0x401713e78e1932d7              # double 5.7694380000000001
	.quad	0x401b72c9d16fc9bc              # double 6.8620979999999996
	.quad	0x401440d1fa333765              # double 5.0633010000000001
	.quad	0x3fdf1dbca9691a76              # double 0.48619000000000001
	.quad	0x401ba3764f11b60b              # double 6.9096310000000001
	.quad	0x3fa0f776c4827b70              # double 0.033138000000000001
	.quad	0x40217bf11f926c7f              # double 8.7420740000000006
	.quad	0x3fc5924af0bf1a5d              # double 0.16852700000000001
	.quad	0x401eb0578e5c4eb5              # double 7.6722089999999996
	.quad	0x401809d7342edbb6              # double 6.0096100000000003
	.quad	0x40039cc2938de6de              # double 2.451543
	.quad	0x40143c70867ad8e4              # double 5.0590229999999998
	.quad	0x402216bfec13b9f1              # double 9.0444329999999997
	.quad	0x401445dc4007570c              # double 5.0682229999999997
	.quad	0x401c0962cfd8f0c7              # double 7.0091659999999996
	.quad	0x401478f81e8a2ec3              # double 5.1181340000000004
	.quad	0x40199b1897a67a53              # double 6.4014610000000003
	.quad	0x4012e6eb0b7c3505              # double 4.7255060000000002
	.quad	0x3fa6f08cc575c076              # double 0.044803999999999997
	.quad	0x402218e15011904b              # double 9.0485939999999996
	.quad	0x3ff8a08f21709310              # double 1.539199
	.quad	0x400d306034f3fd93              # double 3.6486209999999999
	.quad	0x401a4a65492ff4ba              # double 6.5726519999999997
	.quad	0x4023609613d31b9b              # double 9.6886449999999992
	.quad	0x401cdd462c343b71              # double 7.2160880000000001
	.quad	0x4006f738e6d15ad1              # double 2.870714
	.quad	0x3ff46b97fe8ee6b8              # double 1.276268
	.quad	0x400dbab3aabcd78c              # double 3.7161629999999999
	.quad	0x400d3594f26aec07              # double 3.6511629999999999
	.quad	0x4017a308bb906467              # double 5.9092130000000003
	.quad	0x40234afa0d77b7c8              # double 9.6464390000000008
	.quad	0x3fca5c3dee781840              # double 0.20594000000000001
	.quad	0x4000a33df2a9d628              # double 2.0797080000000001
	.quad	0x3ff04f9a06a6e32e              # double 1.019434
	.quad	0x3fbaffc115df6556              # double 0.105465
	.quad	0x40211c87db2b3461              # double 8.5557239999999997
	.quad	0x400477763e4abe6a              # double 2.5583309999999999
	.quad	0x401a006af46aa088              # double 6.5004080000000002
	.quad	0x4020656777079e5a              # double 8.1980550000000001
	.quad	0x401e09496249a134              # double 7.5090690000000002
	.quad	0x40058c7fbacb4289              # double 2.693603
	.quad	0x3ff246f587d6f976              # double 1.1423239999999999
	.quad	0x400ee299d883ba34              # double 3.8606449999999999
	.quad	0x4022cea487336588              # double 9.4035989999999998
	.quad	0x3ff998bf7f06705d              # double 1.5997920000000001
	.quad	0x4006567125dd095b              # double 2.792208
	.quad	0x40205a20578e5c4f              # double 8.1760280000000005
	.quad	0x3ff1247991bc5586              # double 1.0714049999999999
	.quad	0x4013002fb5d03105              # double 4.7501819999999997
	.quad	0x4021e732bdc26dce              # double 8.9515589999999996
	.quad	0x401bf3a797891e21              # double 6.9879439999999997
	.quad	0x402022bd3c361134              # double 8.0678499999999999
	.quad	0x4022e84901d19158              # double 9.4536820000000005
	.quad	0x4007d2367e414e7f              # double 2.977643
	.quad	0x3fea934699418506              # double 0.83047800000000005
	.quad	0x400ea46412cf0f9d              # double 3.8302689999999999
	.quad	0x401fb8fb43d89ce5              # double 7.9306460000000003
	.quad	0x401ae884406c00da              # double 6.7270669999999999
	.quad	0x4015f5af294dd723              # double 5.4899259999999996
	.quad	0x400ea1dc93ea2d30              # double 3.829034
	.quad	0x40231276b7ed41b7              # double 9.5360619999999993
	.quad	0x3fd48b6d86ec17ec              # double 0.32101000000000002
	.quad	0x4015d28522ea0fd4              # double 5.4555860000000003
	.quad	0x3ffe1f05ea24cc68              # double 1.882574
	.quad	0x402297e62dc6e2a8              # double 9.2966779999999999
	.quad	0x3fee7062d40aaeb0              # double 0.95121900000000004
	.quad	0x4022ba2e7f6f4be8              # double 9.3636359999999996
	.quad	0x400bdf05ea24cc68              # double 3.4838979999999999
	.quad	0x4002952977c88e7a              # double 2.3228330000000001
	.quad	0x4000db317efe0ce1              # double 2.1070280000000001
	.quad	0x401120474d9c6b05              # double 4.2815219999999998
	.quad	0x40101c2dadb8348f              # double 4.0275179999999997
	.quad	0x4020ee086bdf4c2b              # double 8.4649079999999994
	.quad	0x4017dc443914f484              # double 5.9651040000000002
	.quad	0x402290663c74fb55              # double 9.2820300000000007
	.quad	0x400ee913a4f8726d              # double 3.863807
	.quad	0x401099103c8e25c8              # double 4.1494759999999999
	.quad	0x401e5968d759ee89              # double 7.5873140000000001
	.quad	0x402113cb3e5753a4              # double 8.5386600000000001
	.quad	0x4021931ceaf251c2              # double 8.7873300000000008
	.quad	0x4016568a936c58ef              # double 5.5845130000000003
	.quad	0x3ffaaac8605681ed              # double 1.666695
	.quad	0x3fff7ce2089e3433              # double 1.967989
	.quad	0x40225e1dc93ea2d3              # double 9.183821
	.quad	0x3fc410385c67dfe3              # double 0.156745
	.quad	0x40100fdb4cc25072              # double 4.015485
	.quad	0x4010a746887a8d65              # double 4.1633550000000001
	.quad	0x400e6dc011d3671b              # double 3.8035890000000001
	.quad	0x400f31ed17c5ef63              # double 3.899378
	.quad	0x401b0e91c8eabffd              # double 6.7642280000000001
	.quad	0x401ef551d68c692f              # double 7.7395699999999996
	.quad	0x3ffd92b4d8ba40d9              # double 1.848317
	.quad	0x4014c0d5e8d54110              # double 5.1883160000000004
	.quad	0x401ddfab53d640ea              # double 7.4684270000000001
	.quad	0x400a7a311e85fd05              # double 3.3096640000000002
	.quad	0x401efbb0e5e67946              # double 7.7457919999999998
	.quad	0x401550218def416c              # double 5.3282530000000001
	.quad	0x4021ba94ff0025c0              # double 8.8644180000000006
	.quad	0x3f9e9dd7ecbb7f9d              # double 0.029898999999999998
	.quad	0x40040cdc8754f377              # double 2.5062799999999998
	.quad	0x400a9cf91a32b12d              # double 3.3266469999999999
	.quad	0x4023f8b524399b2c              # double 9.9857569999999995
	.quad	0x4014d038194c0160              # double 5.2033389999999997
	.quad	0x3fe7fe6f71a7e308              # double 0.74980899999999995
	.quad	0x3ff5c8fa7a85015c              # double 1.361567
	.quad	0x40112e24bba12b5e              # double 4.2950619999999997
	.quad	0x401c46583e8576cd              # double 7.0686960000000001
	.quad	0x40133a38327674d1              # double 4.8068549999999997
	.quad	0x400d1480a5accd53              # double 3.635011
	.quad	0x402249db22d0e560              # double 9.1442499999999995
	.quad	0x40220c8f32378ab1              # double 9.0245300000000004
	.quad	0x4002e8fa7a85015c              # double 2.3637589999999999
	.quad	0x3ffd141c8216c615              # double 1.81741
	.quad	0x401618d1526d8b1e              # double 5.5242360000000001
	.quad	0x40142cc037931444              # double 5.0437019999999997
	.quad	0x4001b9d2391d5800              # double 2.2157330000000002
	.quad	0x402262355043e532              # double 9.1918129999999998
	.quad	0x3fa22a90cd423d92              # double 0.035480999999999999
	.quad	0x4021efd88c1db014              # double 8.9684489999999996
	.quad	0x401d0ac8a3726070              # double 7.2605310000000003
	.quad	0x3ffcb0ced4e4c943              # double 1.793166
	.quad	0x4005e1e57d9dba91              # double 2.7353010000000002
	.quad	0x401514a6223e186a              # double 5.2701650000000004
	.quad	0x3ff2b1f46ed245b3              # double 1.1684460000000001
	.quad	0x4004bffde7210be9              # double 2.5937459999999999
	.quad	0x3fe37bd273d5bab2              # double 0.60886499999999999
	.quad	0x4009834b0e1b4bb6              # double 3.1891080000000001
	.quad	0x40062f7b17ce52df              # double 2.7731840000000001
	.quad	0x4005bc71d6063172              # double 2.7170139999999998
	.quad	0x40147ebbba55d1c4              # double 5.1237630000000003
	.quad	0x40169d0203e63e8e              # double 5.6533280000000001
	.quad	0x40138f04ddb5525d              # double 4.8896670000000002
	.quad	0x3fdadb402d16b980              # double 0.41963200000000001
	.quad	0x4015b0b39192641b              # double 5.4225599999999998
	.quad	0x3fe5d5da272862f6              # double 0.68235500000000004
	.quad	0x4020e7bb0e5e6794              # double 8.4525989999999993
	.quad	0x3fce522ea0fd3b2a              # double 0.23688300000000001
	.quad	0x3ff5d02363b25700              # double 1.3633150000000001
	.quad	0x400e1aec4a4095f2              # double 3.7631459999999999
	.quad	0x402394ac083126e9              # double 9.7903749999999991
	.quad	0x40143f5771001d5c              # double 5.0618569999999998
	.quad	0x40186b75a74c09c4              # double 6.1049410000000002
	.quad	0x3ffe1e97d06bbdbe              # double 1.8824689999999999
	.quad	0x4020b17c1bda511a              # double 8.3466500000000003
	.quad	0x4020220ff540895d              # double 8.0665279999999999
	.quad	0x40238f09b738e6d1              # double 9.7793709999999993
	.quad	0x4010df01754b05b8              # double 4.2177790000000002
	.quad	0x4016869c66d373b0              # double 5.631456
	.quad	0x401fc5974e65bea1              # double 7.9429600000000002
	.quad	0x400bd1465e892253              # double 3.477185
	.quad	0x401eb2d87f88765c              # double 7.6746540000000003
	.quad	0x3fd84b9884c6a3be              # double 0.37961400000000001
	.quad	0x4021747ef177a701              # double 8.7275310000000008
	.quad	0x40210ab5a20ddc62              # double 8.5209170000000007
	.quad	0x3fddebbba55d1c3b              # double 0.46751300000000001
	.quad	0x40144969a0ad8a11              # double 5.0716919999999996
	.quad	0x40055226c3b927d4              # double 2.6651129999999998
	.quad	0x4017f1b21c475e63              # double 5.9860309999999997
	.quad	0x401e25b4245f5ad9              # double 7.5368199999999996
	.quad	0x40100f1561911490              # double 4.0147300000000001
	.quad	0x4008748d3ae685db              # double 3.0569099999999998
	.quad	0x402384b2314013ec              # double 9.7591719999999995
	.quad	0x3ff087160956c0d7              # double 1.03298
	.quad	0x401e72bf9830e3ce              # double 7.6120590000000004
	.quad	0x4023fa1a500d5e8d              # double 9.9884819999999994
	.quad	0x3ffc0c6d612c6ac2              # double 1.753034
	.quad	0x3fb5c79b34a44c7b              # double 0.085077
	.quad	0x3ff208094e5d5b25              # double 1.126962
	.quad	0x401dd3dc486ad2dd              # double 7.4568950000000003
	.quad	0x400cd9ff4fd6d7e9              # double 3.6064440000000002
	.quad	0x4010061e92923e5c              # double 4.0059760000000004
	.quad	0x4002e443914f483d              # double 2.3614570000000001
	.quad	0x3fb93d859c8c9321              # double 0.098595000000000002
	.quad	0x3fd8e3369b9d7fd8              # double 0.38886799999999999
	.quad	0x4019f214f0520d13              # double 6.486408
	.quad	0x4014efee6fb4c3c2              # double 5.2343080000000004
	.quad	0x40190cf2cf95d4e9              # double 6.262645
	.quad	0x4006a8b2a6b0d951              # double 2.8323719999999999
	.quad	0x4020e5095af294dd              # double 8.4473369999999992
	.quad	0x401a695d4e8fb00c              # double 6.6028950000000002
	.quad	0x4003b74a3400b88d              # double 2.4644970000000002
	.quad	0x3fe250aaa7ded6bb              # double 0.57234700000000005
	.quad	0x402217ab7564302b              # double 9.0462299999999995
	.quad	0x401564e09784ec63              # double 5.3485129999999996
	.quad	0x400f92018a43bb41              # double 3.9462920000000001
	.quad	0x401d46e4c0df58c1              # double 7.3192320000000004
	.quad	0x400f4edbb59ddc1e              # double 3.9135049999999998
	.quad	0x3febf3e681a9b8cc              # double 0.87352300000000004
	.quad	0x3ff66f4384ba0e84              # double 1.402164
	.quad	0x40223f97891e2153              # double 9.1242029999999996
	.quad	0x400d6f06b37867f1              # double 3.6792120000000001
	.quad	0x3fe921b3aeee9574              # double 0.78536399999999995
	.quad	0x40065547e06961c3              # double 2.7916409999999998
	.quad	0x4020ab9abf338716              # double 8.3351649999999999
	.quad	0x40150f99c38b04ab              # double 5.2652349999999997
	.quad	0x401522f5989df117              # double 5.2841399999999998
	.quad	0x401fcd627bf61aa4              # double 7.9505710000000001
	.quad	0x4021ed66cf41f213              # double 8.9636750000000003
	.quad	0x40030f4e0114d2f6              # double 2.3824730000000001
	.quad	0x401728472c0e7bc4              # double 5.7893340000000002
	.quad	0x3fe915b573eab368              # double 0.78390000000000004
	.quad	0x400585cc426351df              # double 2.690331
	.quad	0x40230f91600f3450              # double 9.5304059999999993
	.quad	0x3f93947496aad1d0              # double 0.019120999999999999
	.quad	0x3ffa751efb6dca08              # double 1.653594
	.quad	0x402016e653868fd2              # double 8.0447260000000007
	.quad	0x4013e63b688bda94              # double 4.9748359999999998
	.quad	0x4023cfc9363f572e              # double 9.9058320000000002
	.quad	0x3fca88ce703afb7f              # double 0.20730000000000001
	.quad	0x401bb8259e1f3a58              # double 6.9298310000000001
	.quad	0x4017fe9680e06530              # double 5.998621
	.quad	0x400d56c0d6f544bb              # double 3.66736
	.quad	0x4016edc6e2a80065              # double 5.7322040000000003
	.quad	0x402121bc126a65cf              # double 8.5658879999999993
	.quad	0x3ff4a0285ec3dab6              # double 1.2891010000000001
	.quad	0x401d45eb313be22e              # double 7.3182799999999997
	.quad	0x401320fe8ab4fa48              # double 4.7822209999999998
	.quad	0x40085d40ee06d938              # double 3.045534
	.quad	0x40086c77574f722e              # double 3.052962
	.quad	0x401eddde37585be2              # double 7.7166680000000003
	.quad	0x401ec2c625e99e95              # double 7.6902090000000002
	.quad	0x3fe93b7d84901d19              # double 0.78851199999999999
	.quad	0x401f0009b30728e9              # double 7.7500369999999998
	.quad	0x4008b1dffc5479d5              # double 3.0868530000000001
	.quad	0x40016f0281ba7fc3              # double 2.1792039999999999
	.quad	0x400f7b2edfe75bc4              # double 3.9351479999999999
	.quad	0x4013638b8ae31d71              # double 4.8472119999999999
	.quad	0x402144f893faf428              # double 8.6347090000000009
	.quad	0x4018ca65492ff4ba              # double 6.1976519999999997
	.quad	0x401d4d5f56a7ac82              # double 7.3255590000000002
	.quad	0x402264e3ffef3908              # double 9.1970519999999993
	.quad	0x401cfdf7a4e7ab75              # double 7.2480149999999997
	.quad	0x401fd28bf3bea91e              # double 7.9556120000000004
	.quad	0x401c93929ed3953e              # double 7.1441140000000001
	.quad	0x401946234a87e38f              # double 6.3184940000000003
	.quad	0x401316b3354c1227              # double 4.7721679999999997
	.quad	0x40159a732df505d1              # double 5.40083
	.quad	0x401a484a515ce9e6              # double 6.5705960000000001
	.quad	0x4006c1b3aeee9574              # double 2.8445809999999998
	.quad	0x401166c8b4395810              # double 4.3503749999999997
	.quad	0x3ffe2a52ef911cf3              # double 1.8853329999999999
	.quad	0x40206689eba6aca8              # double 8.2002710000000008
	.quad	0x3feaf56eac860568              # double 0.84245999999999999
	.quad	0x401c0ac4b4d056c5              # double 7.010516
	.quad	0x4020c643ed959a31              # double 8.3872370000000007
	.quad	0x4017632c625e99e9              # double 5.8468489999999997
	.quad	0x3ff5e91ea78af3e4              # double 1.3694139999999999
	.quad	0x4017f54b05b7cfe6              # double 5.9895440000000004
	.quad	0x4013179dd3bafd97              # double 4.7730629999999996
	.quad	0x40218f340d4dc65c              # double 8.7796939999999992
	.quad	0x3ff8ae72da122fad              # double 1.5425899999999999
	.quad	0x401a578cc9a77e5f              # double 6.5854980000000003
	.quad	0x4021fcb599aa6091              # double 8.9935729999999996
	.quad	0x401fc5bff04577d9              # double 7.9431149999999997
	.quad	0x4010a7b99d451fc5              # double 4.1637940000000002
	.quad	0x40162f13cee9dd7f              # double 5.5459740000000002
	.quad	0x4005aa62aa19439e              # double 2.708196
	.quad	0x400d6a4db163baba              # double 3.6769059999999998
	.quad	0x401236e43aa79bbb              # double 4.5536050000000001
	.quad	0x400179bbadc0980b              # double 2.1844399999999999
	.quad	0x4020c2e05ccc89b1              # double 8.3806180000000001
	.quad	0x3fc09e3c968943e1              # double 0.129829
	.quad	0x4011ccc7d1bb4917              # double 4.4499810000000002
	.quad	0x400ea09f623076c0              # double 3.8284289999999999
	.quad	0x400a495b78cc9a78              # double 3.285819
	.quad	0x401eab43526527a2              # double 7.667249
	.quad	0x40226634549b62c7              # double 9.1996179999999992
	.quad	0x4012b4449dbec248              # double 4.6760429999999999
	.quad	0x400fad3f1843c3a4              # double 3.9595929999999999
	.quad	0x3febf0e4da09cc32              # double 0.87315600000000004
	.quad	0x4020dd247cb70ac4              # double 8.4319190000000006
	.quad	0x4019b9cc319c5a3e              # double 6.4314429999999998
	.quad	0x4010b046c764ae00              # double 4.1721450000000004
	.quad	0x40232eb723ee1bd2              # double 9.5912410000000001
	.quad	0x400f9a038194c016              # double 3.950202
	.quad	0x40009bcb1cc96463              # double 2.0760710000000002
	.quad	0x3fc9e7d9988d2a20              # double 0.20238800000000001
	.quad	0x401f8f7f498c3b0c              # double 7.8901339999999998
	.quad	0x4023ff56a7ac81d4              # double 9.9987080000000005
	.quad	0x4020a16db0dd82fd              # double 8.3152899999999992
	.quad	0x4022614f69ca9ef5              # double 9.1900589999999998
	.quad	0x3ffb02df0d413123              # double 1.6882010000000001
	.quad	0x4020d8ca8198f1d4              # double 8.4234200000000001
	.quad	0x3ffea4f227d028a2              # double 1.91527
	.quad	0x4013de924f227d03              # double 4.9673550000000004
	.quad	0x3fecc3f811f4f50a              # double 0.898922
	.quad	0x3ff0fc9cd3e0bd45              # double 1.0616730000000001
	.quad	0x401541c0ca600b03              # double 5.3142120000000004
	.quad	0x3ff3ae3f78bbd380              # double 1.2300409999999999
	.quad	0x3ffc3cff64cf8d71              # double 1.7648919999999999
	.quad	0x40157819d2391d58              # double 5.367286
	.quad	0x40185366516db0de              # double 6.0814450000000004
	.quad	0x3fffa060fe47991c              # double 1.9766550000000001
	.quad	0x4000772f76e6106b              # double 2.0581960000000001
	.quad	0x4014f5c810a569b1              # double 5.2400209999999996
	.quad	0x4023a964628027d9              # double 9.8308440000000008
	.quad	0x4001a1c8a7a41e58              # double 2.2039960000000001
	.quad	0x3fea40b5675579af              # double 0.82039899999999999
	.quad	0x402210ce2d1f1cfc              # double 9.0328230000000004
	.quad	0x3fd9dfe32a0663c7              # double 0.40428999999999998
	.quad	0x401e48d7e02645e5              # double 7.571136
	.quad	0x3fe9fc3d68405b3a              # double 0.81204100000000001
	.quad	0x4017695bff04577e              # double 5.8528900000000004
	.quad	0x4011fec2480e8c8b              # double 4.4987880000000002
	.quad	0x401375ecc3e3193f              # double 4.8651609999999996
	.quad	0x401b4573647baa9b              # double 6.8178229999999997
	.quad	0x3fff6d256798958e              # double 1.9641470000000001
	.quad	0x40121a122fad6cb5              # double 4.5254599999999998
	.quad	0x40213eb5f5f0b285              # double 8.6224819999999998
	.quad	0x3ff94611fd5885d3              # double 1.579607
	.quad	0x4014527136a400fc              # double 5.0805100000000003
	.quad	0x3ffe081d3aa369fd              # double 1.876981
	.quad	0x4023e1ccb7d41744              # double 9.9410150000000001
	.quad	0x4023a0605681ecd5              # double 9.8132350000000005
	.quad	0x402193aa369fcf3e              # double 8.7884080000000004
	.quad	0x400dbe9e1b089a02              # double 3.7180749999999998
	.quad	0x400bf84a9478c869              # double 3.4962360000000001
	.quad	0x3fc1fde7210be942              # double 0.14056099999999999
	.quad	0x4011f5a07b352a84              # double 4.4898699999999998
	.quad	0x3ff7f4f0d844d014              # double 1.4973000000000001
	.quad	0x4000d5fdcdf69878              # double 2.1044879999999999
	.quad	0x40239a2424a276b8              # double 9.8010570000000001
	.quad	0x3ff8f2b990afe60c              # double 1.559259
	.quad	0x40194666a98244e9              # double 6.3187509999999998
	.quad	0x401f2b7f1737542a              # double 7.7924769999999999
	.quad	0x401b1c2a454de7ea              # double 6.7775049999999997
	.quad	0x3feffe28240b7803              # double 0.99977499999999996
	.quad	0x40102e10060780fe              # double 4.0449830000000002
	.quad	0x4011d014f8b588e3              # double 4.4532049999999996
	.quad	0x400994d2f5dbb9d0              # double 3.1976680000000002
	.quad	0x40101cbc05d52c17              # double 4.0280610000000001
	.quad	0x3fe4888509bf9c63              # double 0.64166500000000004
	.quad	0x3ffb7d5454152b0a              # double 1.7180979999999999
	.quad	0x3ffb46f47b677f6b              # double 1.704823
	.quad	0x3fc38d8a979e16d7              # double 0.152757
	.quad	0x401e3c7325918a01              # double 7.5590330000000003
	.quad	0x401951a6d698fe69              # double 6.3297379999999999
	.quad	0x3febe13f4a98aa86              # double 0.87124599999999996
	.quad	0x401d837da61e0c5b              # double 7.3784090000000004
	.quad	0x400236787ce95fab              # double 2.2765970000000002
	.quad	0x401581f9acffa7eb              # double 5.3769289999999996
	.quad	0x4023230ea18372e7              # double 9.5684710000000006
	.quad	0x401fc686e7e62dc7              # double 7.9438740000000001
	.quad	0x4014a2977c88e79b              # double 5.1587810000000003
	.quad	0x4018981a1554fbdb              # double 6.1485370000000001
	.quad	0x4020933b5393250b              # double 8.2875619999999994
	.quad	0x3fda527e5215768a              # double 0.41128500000000001
	.quad	0x3ff228ef77f27fe5              # double 1.1349940000000001
	.quad	0x4001dff151e75361              # double 2.2343470000000001
	.quad	0x40007aecd07852f8              # double 2.060022
	.quad	0x40150d740c4156e2              # double 5.2631379999999996
	.quad	0x3fed3443d46b26c0              # double 0.91263000000000005
	.quad	0x401f71c68ec52a41              # double 7.8611089999999999
	.quad	0x4010bdc981beb181              # double 4.1853389999999999
	.quad	0x401ee45d851654d6              # double 7.7230129999999999
	.quad	0x3ffbbcb70ac3a861              # double 1.733573
	.quad	0x40224ea9a3d2d880              # double 9.1536380000000008
	.quad	0x40190a6f3f52fc26              # double 6.2601899999999997
	.quad	0x40108e3476295209              # double 4.1388720000000001
	.quad	0x400a0399b2c40d0b              # double 3.2517580000000001
	.quad	0x4006e8a2ec28b2a7              # double 2.8635920000000001
	.quad	0x401afd94d0dcfcc6              # double 6.7476380000000002
	.quad	0x400631b1d92b7fe1              # double 2.7742650000000002
	.quad	0x400e4940bbb1f256              # double 3.785768
	.quad	0x400631183b60285f              # double 2.7739720000000001
	.quad	0x40107fa0d77b7c78              # double 4.1246369999999999
	.quad	0x401e2b6c7a7c9de0              # double 7.5424059999999997
	.quad	0x40133c985f06f694              # double 4.8091749999999998
	.quad	0x4023a63beec3979a              # double 9.8246760000000002
	.quad	0x4010ab67c286f8ad              # double 4.1673879999999999
	.quad	0x3fd617720c8cd63d              # double 0.34518100000000002
	.quad	0x401b5fda4052d667              # double 6.8436060000000003
	.quad	0x402345c1a47a9e2c              # double 9.6362430000000003
	.quad	0x40036575c0767d35              # double 2.4245410000000001
	.quad	0x400cac82e019b0ab              # double 3.5842339999999999
	.quad	0x400251f8a0902de0              # double 2.290025
	.quad	0x4015977f27fe4bcb              # double 5.3979460000000001
	.quad	0x3ffad30ced4e4c94              # double 1.676526
	.quad	0x4021b88b9778572a              # double 8.8604400000000005
	.quad	0x4012ab990afe60c4              # double 4.6675760000000004
	.quad	0x4018d82e44b6e936              # double 6.2111140000000002
	.quad	0x40200462a1b5c7ce              # double 8.0085650000000008
	.quad	0x4023897a24894c44              # double 9.7685099999999991
	.quad	0x3ffe48893b7d8490              # double 1.892709
	.quad	0x401b9d028a1dfb94              # double 6.9033300000000004
	.quad	0x401cb2cbea4ebdd3              # double 7.1746059999999998
	.quad	0x40166178705425f2              # double 5.595186
	.quad	0x4014f1d8a5482385              # double 5.2361779999999998
	.quad	0x4000760285ec3dab              # double 2.0576219999999998
	.quad	0x401a91871e6cd291              # double 6.6421169999999998
	.quad	0x4011a4ccab3edd8b              # double 4.4109369999999997
	.quad	0x40208c30f49491f3              # double 8.2738110000000002
	.quad	0x4020ed95bbbe8790              # double 8.4640330000000006
	.quad	0x401b02d87f88765c              # double 6.7527790000000003
	.quad	0x4005874ea8da7f3d              # double 2.691068
	.quad	0x400c1efae7924af1              # double 3.5151270000000001
	.quad	0x3fdf8b3f63c31df7              # double 0.49287399999999998
	.quad	0x3fd12a62aa19439e              # double 0.26821200000000001
	.quad	0x401cacd9e83e425b              # double 7.1688000000000001
	.quad	0x401fe016ce789e77              # double 7.9688369999999997
	.quad	0x401518d6909aed57              # double 5.2742560000000003
	.quad	0x40202aaa5c5f7c67              # double 8.0833309999999994
	.quad	0x401b024d099e0e73              # double 6.7522469999999997
	.quad	0x40140e1b4bb5e0f8              # double 5.013776
	.quad	0x3ff27f0ed3d859c9              # double 1.15602
	.quad	0x3ffcf4eca686e7e6              # double 1.809796
	.quad	0x402096221c8a7a42              # double 8.2932290000000002
	.quad	0x4013be991ff7164c              # double 4.9361309999999996
	.quad	0x4023cd100a393ee6              # double 9.9005130000000001
	.quad	0x4018f897a67a52ac              # double 6.2427659999999996
	.quad	0x402326c0f88333fd              # double 9.5756910000000008
	.quad	0x400d30e7ff583a54              # double 3.6488800000000001
	.quad	0x40052a65492ff4ba              # double 2.6457009999999999
	.quad	0x40025b0c4588a04d              # double 2.294457
	.quad	0x400fbb52007dd441              # double 3.9664649999999999
	.quad	0x4021f94c660a2014              # double 8.9869109999999992
	.quad	0x4023593a92a30553              # double 9.6742749999999997
	.quad	0x401c9ed45e9185cf              # double 7.1551070000000001
	.quad	0x3fed3de3fbbd7b20              # double 0.91380499999999997
	.quad	0x40206ff90d9d7775              # double 8.2186970000000006
	.quad	0x401985c0fcb4f1e5              # double 6.3806190000000003
	.quad	0x3fee37a80cf9e386              # double 0.94429399999999997
	.quad	0x402164845132f87b              # double 8.6963220000000003
	.quad	0x40228ed117b5286b              # double 9.2789389999999994
	.quad	0x4015cb474107314d              # double 5.4485140000000003
	.quad	0x3ff90ac5c13fd0d0              # double 1.5651299999999999
	.quad	0x400a2ec0724b76f7              # double 3.2728280000000001
	.quad	0x4003b5336deb95e6              # double 2.4634770000000001
	.quad	0x4006d7f950b955f8              # double 2.8554560000000002
	.quad	0x402171cc532a4980              # double 8.7222620000000006
	.quad	0x401b72074ea8da7f              # double 6.8613559999999998
	.quad	0x401441da37ef5a96              # double 5.0643089999999997
	.quad	0x402262369fcf3dc0              # double 9.1918229999999994
	.quad	0x4017a8f47304039b              # double 5.9149950000000002
	.quad	0x3ff05dedf1e0828c              # double 1.022932
	.quad	0x4020cfa0d77b7c78              # double 8.4055239999999998
	.quad	0x401eec31593e5fb7              # double 7.7306569999999998
	.quad	0x40156abe27179bfe              # double 5.354241
	.quad	0x40049c74fb549f95              # double 2.5763950000000002
	.quad	0x401f1a2be0589acc              # double 7.7755580000000002
	.quad	0x3ff90e4da09cc31a              # double 1.5659920000000001
	.quad	0x40104aaac1094a2c              # double 4.0729170000000003
	.quad	0x3fe911e42e126202              # double 0.78343399999999996
	.quad	0x400ab183b60285ec              # double 3.3366769999999999
	.quad	0x3ff42054690de093              # double 1.2578929999999999
	.quad	0x400a3db6e503fb37              # double 3.2801339999999999
	.quad	0x40024947064ece9a              # double 2.2857799999999999
	.quad	0x3fd43354c122749f              # double 0.315633
	.quad	0x4001a3bbc6eb0b7c              # double 2.2049479999999999
	.quad	0x3fb69f8c21e1d218              # double 0.088372000000000006
	.quad	0x3fd3558644523f68              # double 0.302095
	.quad	0x401a155bccaf709b              # double 6.5208579999999996
	.quad	0x4005a27d028a1dfc              # double 2.7043400000000002
	.quad	0x4015286338b47c74              # double 5.2894410000000001
	.quad	0x401690ff97247454              # double 5.6416000000000004
	.quad	0x4023a74a3400b88d              # double 9.8267380000000006
	.quad	0x3ff8273929ed3954              # double 1.509576
	.quad	0x4017737867f0aa22              # double 5.8627640000000003
	.quad	0x4018a82c6ef3d3a2              # double 6.1642320000000002
	.quad	0x4009cf46aa087ca6              # double 3.2262089999999999
	.quad	0x3ff23b84db9c7369              # double 1.1395310000000001
	.quad	0x3ff231b9b66f9336              # double 1.13714
	.quad	0x4019e30984e3ffef              # double 6.4717159999999998
	.quad	0x40228a9d8409e55c              # double 9.2707329999999998
	.quad	0x3f9139c94f69ca9f              # double 0.016822
	.quad	0x4023eb0fcf80dc33              # double 9.9591049999999992
	.quad	0x4010d6d4c33b5393              # double 4.2097959999999999
	.quad	0x4016575d13d74d59              # double 5.5853159999999997
	.quad	0x40139ac68a936c59              # double 4.9011480000000001
	.quad	0x401a6f2734f82f51              # double 6.6085479999999999
	.quad	0x3fd9c3eb7cbb3c82              # double 0.40258300000000002
	.quad	0x402032cfd8f0c77e              # double 8.0992420000000003
	.quad	0x401f126b2f23033a              # double 7.7679869999999998
	.quad	0x400727e73a365cb3              # double 2.8944839999999998
	.quad	0x4022d4586876e1df              # double 9.4147370000000005
	.quad	0x3fea2f89c5e6ff7e              # double 0.818303
	.quad	0x3fe43827fa1a0cf2              # double 0.63185500000000006
	.quad	0x400b8087442c7fbb              # double 3.4377580000000001
	.quad	0x40207dc8b86b15f9              # double 8.2456720000000008
	.quad	0x40148d106ee30caa              # double 5.1377579999999998
	.quad	0x3ff1f9e16d6dc1a4              # double 1.1235059999999999
	.quad	0x40055a60d4562e0a              # double 2.66913
	.quad	0x4019ad72799a1fd1              # double 6.4193819999999997
	.quad	0x4015c8feac42e98a              # double 5.4462840000000003
	.quad	0x40213013ec460ed8              # double 8.5939019999999999
	.quad	0x4007f72367e414e8              # double 2.995673
	.quad	0x401bc7b99d451fc5              # double 6.9450440000000002
	.quad	0x3ff67621fafc8b00              # double 1.4038409999999999
	.quad	0x3fe4c50efdc9c4db              # double 0.64905500000000005
	.quad	0x402008eef1bac2df              # double 8.0174479999999999
	.quad	0x4020fadab9f559b4              # double 8.4899500000000003
	.quad	0x3ff45ce18266772d              # double 1.2726759999999999
	.quad	0x4005d094a2b9d3cc              # double 2.7268460000000001
	.quad	0x4020fe2478854cdb              # double 8.4963719999999991
	.quad	0x3ff2f82f51266341              # double 1.185592
	.quad	0x4013679cc74b838c              # double 4.8511839999999999
	.quad	0x3fb60008637bd05b              # double 0.085938000000000001
	.quad	0x401114f8b588e369              # double 4.2704800000000001
	.quad	0x401d12c40d0aaa7e              # double 7.2683260000000001
	.quad	0x3ff5515f02c4d65e              # double 1.3323659999999999
	.quad	0x401186317268d328              # double 4.3810479999999998
	.quad	0x4021c568405b39e2              # double 8.8855609999999992
	.quad	0x3fec697f1f9acffa              # double 0.88787799999999995
	.quad	0x40112b8aa00192a7              # double 4.2925209999999998
	.quad	0x401fffbdad7518b1              # double 7.9997470000000001
	.quad	0x40231c8754f3775c              # double 9.5557200000000008
	.quad	0x3fe134549b62c775              # double 0.53763799999999995
	.quad	0x401d2d823422467c              # double 7.2944420000000001
	.quad	0x3fd0f9767903211d              # double 0.26522600000000002
	.quad	0x402249ea9a3d2d88              # double 9.144368
	.quad	0x3fe0db91f70de8f7              # double 0.52680300000000002
	.quad	0x401d69dcf893faf4              # double 7.3533819999999999
	.quad	0x40145e996312f4cf              # double 5.0923819999999997
	.quad	0x400f19085f4a1273              # double 3.8872230000000001
	.quad	0x401fa964628027d9              # double 7.9154220000000004
	.quad	0x4016852220bc382a              # double 5.6300129999999999
	.quad	0x4005e57a786c2268              # double 2.73705
	.quad	0x40168960fa15db34              # double 5.6341590000000004
	.quad	0x40180cbbc2b94d94              # double 6.012435
	.quad	0x400c76262cba732e              # double 3.55769
	.quad	0x400b785dfa871a3b              # double 3.433773
	.quad	0x401754827b6fe2e7              # double 5.8325290000000001
	.quad	0x401409eba6aca793              # double 5.0096879999999997
	.quad	0x400194a3400b88ca              # double 2.1975769999999999
	.quad	0x4000b6ce789e774f              # double 2.089261
	.quad	0x401d3029ae4f3344              # double 7.297034
	.quad	0x4020db6a400fba88              # double 8.4285449999999997
	.quad	0x401709b38d60a633              # double 5.759474
	.quad	0x402394de19fc2a88              # double 9.7907569999999992
	.quad	0x3fe5a975afaf8594              # double 0.67693599999999998
	.quad	0x4008ee6fb4c3c18b              # double 3.1164239999999999
	.quad	0x3fe48e432441fea8              # double 0.64236599999999999
	.quad	0x402123f61aa3f035              # double 8.5702370000000005
	.quad	0x4023fce26d4801f7              # double 9.9939149999999994
	.quad	0x400f6fe79ee02a78              # double 3.9296410000000002
	.quad	0x40117f583a53b8e5              # double 4.3743600000000002
	.quad	0x3fd4be0ded288ce7              # double 0.3241
	.quad	0x3fea0ab2e1693c04              # double 0.81380600000000002
	.quad	0x40221dee78183f92              # double 9.0584600000000002
	.quad	0x40156af922962cfe              # double 5.3544660000000004
	.quad	0x3ffe036b8f9b1316              # double 1.8758349999999999
	.quad	0x40124e279dd3bafe              # double 4.5763230000000004
	.quad	0x40170779a6b50b0f              # double 5.7572999999999999
	.quad	0x401c7198288051ca              # double 7.110932
	.quad	0x4023a2003ab862b2              # double 9.8164079999999991
	.quad	0x4021b4b4d056c509              # double 8.8529420000000005
	.quad	0x400ba537e2c55c96              # double 3.455673
	.quad	0x3fa295e9e1b089a0              # double 0.036299999999999999
	.quad	0x400a4fdda8bd230c              # double 3.2889970000000002
	.quad	0x400640485a0be511              # double 2.7813880000000002
	.quad	0x401e3ee78183f91e              # double 7.5614299999999997
	.quad	0x401bbf6e3f78bbd4              # double 6.9369440000000004
	.quad	0x3fe2301a79fec99f              # double 0.56837199999999999
	.quad	0x401d4dafd113836b              # double 7.3258660000000004
	.quad	0x3fd5a8f3a9b06812              # double 0.33843699999999999
	.quad	0x401c03608d08919f              # double 7.003298
	.quad	0x4019c0b912dba4d7              # double 6.4382060000000001
	.quad	0x401d1165d3996fa8              # double 7.2669899999999998
	.quad	0x40146bb341e14be0              # double 5.1051760000000002
	.quad	0x4000a49774256bca              # double 2.0803669999999999
	.quad	0x400ccc0485a0be51              # double 3.599618
	.quad	0x4007a9a1b9f98b72              # double 2.9578280000000001
	.quad	0x3ff4ae1bd1ed9dfe              # double 1.2925070000000001
	.quad	0x401f047d805e5f31              # double 7.754385
	.quad	0x401f57a4e7ab7564              # double 7.8355899999999998
	.quad	0x4020e86b37867f0b              # double 8.4539430000000007
	.quad	0x40212611fd5885d3              # double 8.5743559999999999
	.quad	0x3ffd07b24638c975              # double 1.814379
	.quad	0x40213ed5cfaacd9f              # double 8.6227250000000009
	.quad	0x40142ededaec4a41              # double 5.0457720000000004
	.quad	0x3ff049fe86833c60              # double 1.018065
	.quad	0x3ff23059641f6449              # double 1.1368039999999999
	.quad	0x40181d3aa369fcf4              # double 6.0285440000000001
	.quad	0x3ff00192a737110e              # double 1.0003839999999999
	.quad	0x401121394317acc5              # double 4.2824450000000001
	.quad	0x3ffc53ec460ed80a              # double 1.770489
	.quad	0x3f3376d549731099              # double 2.9700000000000001E-4
	.quad	0x4000bf6a93f290ac              # double 2.0934650000000001
	.quad	0x401f7279dd3bafd9              # double 7.8617929999999995
	.quad	0x4022d6a2d2fe3f36              # double 9.4192110000000007
	.quad	0x401acefd00713f07              # double 6.7021369999999996
	.quad	0x401a233764f11b61              # double 6.5343910000000003
	.quad	0x4019f4751ce28ed6              # double 6.4887280000000001
	.quad	0x4023f115592d98bf              # double 9.9708659999999991
	.quad	0x401b8ea4a8c154ca              # double 6.8893000000000004
	.quad	0x4021562174c4cdfb              # double 8.6682240000000004
	.quad	0x40202aff2a172abf              # double 8.0839780000000001
	.quad	0x4010d2ecf2064239              # double 4.2059819999999997
	.quad	0x3fc53f85510d38ce              # double 0.16600100000000001
	.quad	0x4022e9101b003687              # double 9.4552010000000006
	.quad	0x4014c9c51dabe271              # double 5.1970409999999996
	.quad	0x4004cf7e3d1cc101              # double 2.601315
	.quad	0x3fe5f3860999dcb5              # double 0.68597699999999995
	.quad	0x3fcc9b8cb8e086be              # double 0.223497
	.quad	0x401435592d98bf7f              # double 5.052098
	.quad	0x402170880d801b43              # double 8.7197879999999994
	.quad	0x401504d8ba40d90e              # double 5.2547329999999999
	.quad	0x401fe11b60ae9681              # double 7.9698310000000001
	.quad	0x3fd477143393ab43              # double 0.319768
	.quad	0x402321b8023a6ce3              # double 9.5658569999999993
	.quad	0x401a8cff21b3aeef              # double 6.6376920000000004
	.quad	0x3fdb03d9a95421c0              # double 0.42210999999999999
	.quad	0x4017b05ee568a505              # double 5.922237
	.quad	0x3ff9146e4c0df58c              # double 1.567488
	.quad	0x3fe842c5e2cdc012              # double 0.75815100000000002
	.quad	0x400119de481f5382              # double 2.1376309999999998
	.quad	0x401bcee136e71cda              # double 6.9520309999999998
	.quad	0x4020cf9ebe9c8861              # double 8.4055079999999993
	.quad	0x3fe8caeea63b688c              # double 0.77477200000000001
	.quad	0x3fed0d8a979e16d7              # double 0.90790300000000002
	.quad	0x401179cd8127b2cc              # double 4.3689479999999996
	.quad	0x401a1e14bdfd2631              # double 6.5293760000000001
	.quad	0x4019e3c07ee0b0af              # double 6.4724139999999997
	.quad	0x401c75cb35f3d7d4              # double 7.1150330000000004
	.quad	0x40160583e8576cce              # double 5.5053859999999997
	.quad	0x40168903a7546d40              # double 5.6338030000000003
	.quad	0x3fdc22e5de15ca6d              # double 0.43963000000000002
	.quad	0x3ff368deb0fadf2f              # double 1.213103
	.quad	0x40231873bc903ea7              # double 9.5477579999999999
	.quad	0x401dc27136a400fc              # double 7.4398850000000003
	.quad	0x3fff89ba5e353f7d              # double 1.971125
	.quad	0x4023659e1f3a57eb              # double 9.6984720000000006
	.quad	0x40056f694467381d              # double 2.6793999999999998
	.quad	0x3fff03e20ccff21b              # double 1.9384479999999999
	.quad	0x3ff52bdd334c5da7              # double 1.3232090000000001
	.quad	0x401663f4a98aa865              # double 5.5976129999999999
	.quad	0x4009125fe974a340              # double 3.133972
	.quad	0x4006895208e15012              # double 2.8170510000000002
	.quad	0x401ae80346dc5d64              # double 6.7265750000000004
	.quad	0x4005699392189bd8              # double 2.6765509999999999
	.quad	0x401f9da2b5a20ddc              # double 7.9039409999999997
	.quad	0x4023214face67d78              # double 9.565061
	.quad	0x4016b9439de481f5              # double 5.6809219999999998
	.quad	0x4003cdc2b0ea1837              # double 2.4754689999999999
	.quad	0x4022bc73cd573648              # double 9.3680710000000004
	.quad	0x400393d5347a5b10              # double 2.447184
	.quad	0x40183326e115592e              # double 6.0499530000000004
	.quad	0x4022091ba3ca7504              # double 9.0177890000000004
	.quad	0x3ff136da87a072d2              # double 1.0758920000000001
	.quad	0x401d251d68c692f7              # double 7.2862450000000001
	.quad	0x3ffdaf6e82949a56              # double 1.8553299999999999
	.quad	0x4007c732df505d10              # double 2.9722650000000002
	.quad	0x401e69991361dc94              # double 7.6031230000000001
	.quad	0x401a99db22d0e560              # double 6.6502499999999998
	.quad	0x401d041c8216c615              # double 7.2540149999999999
	.quad	0x40227a80cf9e3865              # double 9.2392640000000004
	.quad	0x3fc72b5e529bae47              # double 0.18101100000000001
	.quad	0x401f059ab6d00b46              # double 7.7554730000000003
	.quad	0x400db219a847b246              # double 3.7119629999999999
	.quad	0x3ff00ed2cbea4ebe              # double 1.003619
	.quad	0x40166be1a8262457              # double 5.605353
	.quad	0x40089cd141a6937d              # double 3.0765709999999999
	.quad	0x401bd43201040bfe              # double 6.9572219999999998
	.quad	0x400fddb6e503fb37              # double 3.9832589999999999
	.quad	0x401cc99285a921cd              # double 7.1968480000000001
	.quad	0x40206a745bf26f1e              # double 8.2079190000000004
	.quad	0x4017beb9e492bc30              # double 5.9362560000000002
	.quad	0x4007fd95dd4c76d1              # double 2.998821
	.quad	0x40073f4e4430b179              # double 2.9059110000000001
	.quad	0x4011dafc8b0079a3              # double 4.4638540000000004
	.quad	0x401697521144cbe2              # double 5.6477740000000001
	.quad	0x4022c040e1719f80              # double 9.3754950000000008
	.quad	0x4009d23c42a66dbd              # double 3.2276539999999998
	.quad	0x3fd5ab92c061847f              # double 0.33859699999999998
	.quad	0x401ecc9fb6134ce4              # double 7.6998280000000001
	.quad	0x3fe40eb0318b9347              # double 0.62679300000000004
	.quad	0x3ff589bb6aa4b988              # double 1.3461259999999999
	.quad	0x40207bc0e38a7e74              # double 8.2417060000000006
	.quad	0x3ffd4ae642bf9831              # double 1.830786
	.quad	0x4012343aa79bbadc              # double 4.551005
	.quad	0x400849635610adcd              # double 3.0358339999999999
	.quad	0x401886bd6e8af816              # double 6.1315819999999999
	.quad	0x402335510d38cda7              # double 9.6041340000000001
	.quad	0x3fdfccd962068555              # double 0.49687799999999999
	.quad	0x3fdab88ca3e7d135              # double 0.417514
	.quad	0x402311b328b6d86f              # double 9.5345700000000004
	.quad	0x40037846e8f29d41              # double 2.433729
	.quad	0x3fd996030c23fab1              # double 0.399781
	.quad	0x3fecd712a0ec7432              # double 0.901254
	.quad	0x4021daee84ad794a              # double 8.9276009999999992
	.quad	0x4022b8329802c0a5              # double 9.3597610000000006
	.quad	0x4001f5a426bb55ac              # double 2.244942
	.quad	0x3ff38aa00192a737              # double 1.221344
	.quad	0x3fe5ca03c4b09e99              # double 0.68091000000000002
	.quad	0x40027f75104d551d              # double 2.3122349999999998
	.quad	0x4021bd2391d57ffa              # double 8.8694120000000005
	.quad	0x4015a07b352a8438              # double 5.40672
	.quad	0x40183093964a59c0              # double 6.0474379999999996
	.quad	0x4014e856e696a26e              # double 5.2268939999999997
	.quad	0x3ff8cb97785729b3              # double 1.5497050000000001
	.quad	0x40181cd035371972              # double 6.0281380000000002
	.quad	0x402331f601797cc4              # double 9.5975800000000006
	.quad	0x40134c3504c48adf              # double 4.8244210000000001
	.quad	0x4018e7f27fe4bcae              # double 6.2265110000000004
	.quad	0x3ff8067be553ac4f              # double 1.5015829999999999
	.quad	0x401b3e071c53f39d              # double 6.8105739999999999
	.quad	0x4012a89331a08bfc              # double 4.6646239999999999
	.quad	0x4005fcf355cd91ef              # double 2.7485110000000001
	.quad	0x4014e571d1d4738a              # double 5.2240669999999998
	.quad	0x400031c087442c80              # double 2.0242930000000001
	.quad	0x40202d7603925bb8              # double 8.0887910000000005
	.quad	0x401083c0c1fc8f32              # double 4.1286649999999998
	.quad	0x40229116ebd4cfd1              # double 9.2833780000000008
	.quad	0x401af58cd20afa2f              # double 6.739795
	.quad	0x401d84e1e71044f2              # double 7.3797680000000003
	.quad	0x400b532acfb762d8              # double 3.4156089999999999
	.quad	0x401ff1eb851eb852              # double 7.9862500000000001
	.quad	0x4013142b302f72b4              # double 4.7696959999999997
	.quad	0x401047789a459104              # double 4.0697960000000002
	.quad	0x40142a9435ac8a37              # double 5.0415809999999999
	.quad	0x4014731d2e0e3044              # double 5.1124159999999996
	.quad	0x40224274c09c3ce2              # double 9.1297969999999999
	.quad	0x4018b280ae104923              # double 6.1743189999999997
	.quad	0x401d9d666a98244f              # double 7.4037110000000004
	.quad	0x400758eb0318b934              # double 2.9184169999999998
	.quad	0x3fff83f2d3c792d1              # double 1.969714
	.quad	0x4022051654d61b2a              # double 9.0099359999999997
	.quad	0x40035e33269df97b              # double 2.4209960000000001
	.quad	0x401cf9c0a8d21bc1              # double 7.2438989999999999
	.quad	0x40132e95faa8a82a              # double 4.7954939999999997
	.quad	0x40161c5718eb8950              # double 5.5276759999999996
	.quad	0x40104f8fcd67fd3f              # double 4.0776969999999997
	.quad	0x40215bc9abb01c93              # double 8.6792730000000002
	.quad	0x4014ee33269df97b              # double 5.2326170000000003
	.quad	0x401993547e06961c              # double 6.3938769999999998
	.quad	0x401a58bcdfefbf40              # double 6.5866579999999999
	.quad	0x400a8807357e670e              # double 3.3164199999999999
	.quad	0x4012abacf7446f9c              # double 4.6676520000000004
	.quad	0x4021156eac860568              # double 8.5418599999999998
	.quad	0x401b106a2b1704ff              # double 6.7660299999999998
	.quad	0x40147e8dda48b652              # double 5.1235879999999998
	.quad	0x4011c31d2e0e3044              # double 4.4405409999999996
	.quad	0x40205ec56d5cfaad              # double 8.1851000000000003
	.quad	0x40236f8a2a90cd42              # double 9.7178509999999996
	.quad	0x4018135e74299d88              # double 6.0189149999999998
	.quad	0x401971565c2d2780              # double 6.3606809999999996
	.quad	0x401eee736049ecb3              # double 7.7328619999999999
	.quad	0x4011746fdeb52c9d              # double 4.3637079999999999
	.quad	0x3fe1f9c1f85d744f              # double 0.56173799999999996
	.quad	0x40032d173fb7a5f4              # double 2.397017
	.quad	0x4020b8c564f97edc              # double 8.3608809999999991
	.quad	0x40198b5286b59147              # double 6.3860570000000001
	.quad	0x40198cd9e83e425b              # double 6.3875500000000001
	.quad	0x3ff2e2dc6e2a8006              # double 1.1803859999999999
	.quad	0x4005fb906466b1e6              # double 2.7478340000000001
	.quad	0x3fcee8533b107747              # double 0.24146500000000001
	.quad	0x3fef81b43526527a              # double 0.98458299999999999
	.quad	0x401a7f9ca5bd944b              # double 6.6246210000000003
	.quad	0x401a60fa15db3398              # double 6.5947040000000001
	.quad	0x401c7ee1bd1ed9e0              # double 7.1239080000000001
	.quad	0x401aa6eeb702602d              # double 6.6630200000000004
	.quad	0x401053f42352eb5f              # double 4.0819859999999997
	.quad	0x4020a825e13b18db              # double 8.3284140000000004
	.quad	0x401f3b4677b395c4              # double 7.8078859999999999
	.quad	0x4014e5dfa871a3b1              # double 5.2244859999999997
	.quad	0x3fdd2bc2fc69728a              # double 0.45579599999999998
	.quad	0x3ffcee392e1ef73c              # double 1.80816
	.quad	0x401a6c2699c7bcc3              # double 6.6056160000000004
	.quad	0x3fb0a2ca9ac36545              # double 0.064984
	.quad	0x4011e2dd7a99fa12              # double 4.4715480000000003
	.quad	0x400a0010c6f7a0b6              # double 3.250032
	.quad	0x3ffd8e8c8abd5dc4              # double 1.847302
	.quad	0x40227b5efa615a8e              # double 9.2409590000000001
	.quad	0x400006d0d49949e9              # double 2.0033280000000002
	.quad	0x4016f3b18dac258d              # double 5.7379819999999997
	.quad	0x40072871a3b14a90              # double 2.8947479999999999
	.quad	0x401363bfb58d1527              # double 4.8474110000000001
	.quad	0x4002e488c60cbf2b              # double 2.3615889999999999
	.quad	0x4002a1db877ab325              # double 2.3290320000000002
	.quad	0x40233d549731098d              # double 9.6197859999999995
	.quad	0x3ffc2d41b75a74c1              # double 1.7610490000000001
	.quad	0x4019dc01a36e2eb2              # double 6.4648500000000002
	.quad	0x4003e1ff2e48e8a7              # double 2.4853499999999999
	.quad	0x3ffc29ed3953dea4              # double 1.7602359999999999
	.quad	0x40234016052502ef              # double 9.6251680000000003
	.quad	0x400aed29131ec0b5              # double 3.3658009999999998
	.quad	0x401225d2d01c0ca6              # double 4.536937
	.quad	0x400a65dbfceb7889              # double 3.2997359999999998
	.quad	0x4021168fd199bb28              # double 8.5440660000000008
	.quad	0x3fef0ebaade657b8              # double 0.97054799999999996
	.quad	0x4000d1d9b1b79d91              # double 2.1024660000000002
	.quad	0x400a7466f5019f3c              # double 3.3068369999999998
	.quad	0x401eabcba3012168              # double 7.6677689999999998
	.quad	0x401f29817b95a294              # double 7.7905329999999999
	.quad	0x400fef1561911490              # double 3.9917400000000001
	.quad	0x4009789a459103c9              # double 3.1838880000000001
	.quad	0x401adc46d82ba5a0              # double 6.7151139999999998
	.quad	0x401b547b677f6b1a              # double 6.8325019999999999
	.quad	0x40209ee41919ac79              # double 8.3103339999999992
	.quad	0x401cabda0dfdef85              # double 7.1678240000000004
	.quad	0x400213f20a73f749              # double 2.2597390000000002
	.quad	0x40223480e8c8abd6              # double 9.1025460000000002
	.quad	0x4012bb41bfbdf091              # double 4.682868
	.quad	0x400d4d655e28aa43              # double 3.6627909999999999
	.quad	0x4013075ab7dc7ac0              # double 4.7571820000000002
	.quad	0x401bc4e1e71044f2              # double 6.9422680000000003
	.quad	0x40139fe586013661              # double 4.9061490000000001
	.quad	0x400c446412cf0f9d              # double 3.5333939999999999
	.quad	0x3fff2497fa5d28d0              # double 1.946434
	.quad	0x401a38094e5d5b25              # double 6.5547230000000001
	.quad	0x3ff3bf444e0daa0d              # double 1.2341960000000001
	.quad	0x401ab201040bfe3b              # double 6.673832
	.quad	0x40064cfe9b7bf1e9              # double 2.787595
	.quad	0x3ffaaa582dbe7f2c              # double 1.666588
	.quad	0x40147ff5c6c11a11              # double 5.1249609999999999
	.quad	0x3ff795bab21815a0              # double 1.4740549999999999
	.quad	0x4015c2c386d2ed78              # double 5.4401989999999998
	.quad	0x3ffc523e5b8561d4              # double 1.770079
	.quad	0x402201754b05b7d0              # double 9.0028480000000002
	.quad	0x4020e76427c7c526              # double 8.4519359999999999
	.quad	0x4015531487768167              # double 5.3311330000000003
	.quad	0x401524b5dcc63f14              # double 5.2858499999999999
	.quad	0x4001ebe37de939eb              # double 2.2401800000000001
	.quad	0x3fe9b882278d0cc3              # double 0.80377299999999996
	.quad	0x4018d162ae4b0186              # double 6.2044779999999999
	.quad	0x3fdd9170d62bf120              # double 0.46200200000000002
	.quad	0x3ff1e518f3eccc47              # double 1.1184320000000001
	.quad	0x400ab451fc4c1659              # double 3.338047
	.quad	0x3ff11c422036006d              # double 1.069399
	.quad	0x3ff78d045fe11127              # double 1.4719279999999999
	.quad	0x3ffadf71eafee6fb              # double 1.6795519999999999
	.quad	0x3fe04cb5bb384fd3              # double 0.50936400000000004
	.quad	0x402185857afea3df              # double 8.7607839999999992
	.quad	0x3fd984944ed6fda8              # double 0.39871699999999999
	.quad	0x401ff13165d39970              # double 7.9855400000000003
	.quad	0x400e4d83c6c97d8d              # double 3.787849
	.quad	0x4004249ba5e353f8              # double 2.5178750000000001
	.quad	0x401e6f36262cba73              # double 7.6086049999999998
	.quad	0x401bf87b56b87379              # double 6.9926579999999996
	.quad	0x3fec9d388a8b08dd              # double 0.89419199999999999
	.quad	0x4020ea148ba83f4f              # double 8.4571880000000004
	.quad	0x3fcb6273929ed395              # double 0.21394199999999999
	.quad	0x401e3b7bf1e8e608              # double 7.5580899999999999
	.quad	0x3fe9f88b9778572a              # double 0.81159000000000003
	.quad	0x401e6633482be8bc              # double 7.5998049999999999
	.quad	0x400b9accd530489d              # double 3.4505859999999999
	.quad	0x402289b52007dd44              # double 9.2689599999999998
	.quad	0x400372dcb1465e89              # double 2.4310849999999999
	.quad	0x40033da836eb4e98              # double 2.405106
	.quad	0x3feba6937d1fe64f              # double 0.86408399999999996
	.quad	0x40125805e5f30e80              # double 4.58596
	.quad	0x4012d860999dcb58              # double 4.7113060000000004
	.quad	0x4017c473cd573648              # double 5.9418480000000002
	.quad	0x40194a8bd230b9dc              # double 6.3227989999999998
	.quad	0x40160adc4c9c90c5              # double 5.5106060000000001
	.quad	0x4018248beb5b2d4d              # double 6.0356899999999998
	.quad	0x40226dd00f776c48              # double 9.2144779999999997
	.quad	0x4022fd4067cf1c32              # double 9.4946319999999993
	.quad	0x4003d99806f26289              # double 2.4812470000000002
	.quad	0x4011a50bd87b56b8              # double 4.4111779999999996
	.quad	0x4020711afc04c8bd              # double 8.2209090000000007
	.quad	0x401d1239e6ab9b24              # double 7.2677990000000001
	.quad	0x401d9f83be6601bd              # double 7.4057760000000004
	.quad	0x40176f40a2877ee5              # double 5.8586450000000001
	.quad	0x401135336deb95e6              # double 4.3019540000000003
	.quad	0x400d51676640a6b9              # double 3.6647479999999999
	.quad	0x401a7235f8099179              # double 6.6115339999999998
	.quad	0x3ffff6555c52e72e              # double 1.9976400000000001
	.quad	0x400a2013ec460ed8              # double 3.265663
	.quad	0x4021c7fa7eb6bf44              # double 8.8905829999999994
	.quad	0x40208b2f661f18ca              # double 8.271846
	.quad	0x40211f2d1aeb3dd1              # double 8.5608909999999998
	.quad	0x40168d8a54823854              # double 5.638223
	.quad	0x3ff8b8f041461b6d              # double 1.5451509999999999
	.quad	0x3fd99363f572de44              # double 0.399621
	.quad	0x401ba841aac53b08              # double 6.9143129999999999
	.quad	0x401e4cb7d41743e9              # double 7.5749199999999996
	.quad	0x3ffa6afff36ac647              # double 1.6511229999999999
	.quad	0x4000668a0d349be9              # double 2.050068
	.quad	0x3f8b56b873797460              # double 0.013349
	.quad	0x4020d45a1cac0831              # double 8.4147499999999997
	.quad	0x4023f61f5be5d9e4              # double 9.9807079999999999
	.quad	0x4010d2378ab0c88a              # double 4.2052899999999998
	.quad	0x402252dcd2d44dcb              # double 9.1618410000000008
	.quad	0x401e4d9f0a1be2b5              # double 7.5758020000000003
	.quad	0x4022494a90470a81              # double 9.1431470000000008
	.quad	0x3ff7af8594291750              # double 1.4803519999999999
	.quad	0x40103ab2e1693c04              # double 4.0573230000000002
	.quad	0x4009fd2f1a9fbe77              # double 3.2486250000000001
	.quad	0x401bb5d52c16df40              # double 6.9275710000000004
	.quad	0x3ff68404a72ead92              # double 1.4072309999999999
	.quad	0x4022014e7ee9142b              # double 9.0025519999999997
	.quad	0x3ff5fd88c1db0143              # double 1.374398
	.quad	0x401f228954a7f801              # double 7.7837269999999998
	.quad	0x40224427418d690a              # double 9.1331120000000006
	.quad	0x4022481f75104d55              # double 9.1408649999999998
	.quad	0x4022bc4ac6cdaf4b              # double 9.3677580000000002
	.quad	0x400de49129888f86              # double 3.736605
	.quad	0x401dee2b4959e625              # double 7.4825869999999997
	.quad	0x4017195d0b73d189              # double 5.774769
	.quad	0x4005af71a7e30878              # double 2.7106659999999998
	.quad	0x4019858fb43d89ce              # double 6.3804309999999997
	.quad	0x3fe83db1a6d698fe              # double 0.75753099999999995
	.quad	0x4021724463065f96              # double 8.7231780000000008
	.quad	0x4013018548a9bcfd              # double 4.7514849999999997
	.quad	0x3ffa619c9d5a187a              # double 1.6488309999999999
	.quad	0x40088617c1bda512              # double 3.0654750000000002
	.quad	0x40015f24d8fd5cb8              # double 2.1714570000000002
	.quad	0x40220f1f14983d79              # double 9.0295339999999999
	.quad	0x40014abb44e50c5f              # double 2.1614900000000001
	.quad	0x3fff206961c36977              # double 1.9454130000000001
	.quad	0x3fe40d2c386d2ed8              # double 0.62660800000000005
	.quad	0x4003d9439de481f5              # double 2.4810859999999999
	.quad	0x400035579af1886e              # double 2.026046
	.quad	0x4009366adb402d17              # double 3.1515710000000001
	.quad	0x401d2e132b55ef20              # double 7.2949950000000001
	.quad	0x4013701de2691644              # double 4.8594889999999999
	.quad	0x4023d89eba6aca79              # double 9.9230859999999996
	.quad	0x4020a53f1843c3a4              # double 8.3227469999999996
	.quad	0x4014b62ed352220c              # double 5.1779130000000002
	.quad	0x400d650268900c52              # double 3.6743209999999999
	.quad	0x3fe42209aaa3ad19              # double 0.62915500000000002
	.quad	0x400c8532a497fa5d              # double 3.5650379999999999
	.quad	0x3ff3560956c0d6f5              # double 1.2085049999999999
	.quad	0x4020c0c23fab10ba              # double 8.3764819999999993
	.quad	0x3fc850df15a4acf3              # double 0.189968
	.quad	0x3fed8ce91c8eac00              # double 0.92345100000000002
	.quad	0x40105c8472c0e7bc              # double 4.0903489999999998
	.quad	0x40077b0574b40703              # double 2.9350689999999999
	.quad	0x401ae46d3f9e7b81              # double 6.7230730000000003
	.quad	0x4019554bcf0b6b6e              # double 6.333297
	.quad	0x401ba1cffeb074a7              # double 6.9080199999999996
	.quad	0x4001f35eb7457c0b              # double 2.243833
	.quad	0x3fd5c1615ebfa8f8              # double 0.33992800000000001
	.quad	0x40215fb395c42203              # double 8.6869169999999993
	.quad	0x401231ab8e8ea39c              # double 4.5485059999999997
	.quad	0x4022d6daa92e6213              # double 9.4196369999999998
	.quad	0x3ff5c7b56b873797              # double 1.3612569999999999
	.quad	0x3fe64b70ac3a860e              # double 0.69670900000000002
	.quad	0x4010ee5753a3ec03              # double 4.232755
	.quad	0x40135634dad31fcd              # double 4.8341859999999999
	.quad	0x401c0af294dd7236              # double 7.0106909999999996
	.quad	0x4022e16b3354c122              # double 9.4402709999999992
	.quad	0x400484901d19157b              # double 2.5647280000000001
	.quad	0x3ff6fa8d64d7f0ed              # double 1.4361699999999999
	.quad	0x40196ef6b5d462c3              # double 6.3583629999999998
	.quad	0x40202cfc3f811f4f              # double 8.0878619999999994
	.quad	0x3fe9aa60913a4f87              # double 0.80204799999999998
	.quad	0x40035ab7dc7abfba              # double 2.4192960000000001
	.quad	0x400745c70435efa6              # double 2.909071
	.quad	0x3fd8c70435efa616              # double 0.38714700000000002
	.quad	0x400741a8ac5c13fd              # double 2.90706
	.quad	0x400f3897204295a7              # double 3.9026320000000001
	.quad	0x401cb1654d61b2a2              # double 7.1732379999999996
	.quad	0x400a788765ba6efc              # double 3.3088519999999999
	.quad	0x4012ef76e6106ab1              # double 4.7338519999999997
	.quad	0x402190d0edc3bd5a              # double 8.7828440000000008
	.quad	0x400438e325d4a5df              # double 2.5277769999999999
	.quad	0x4021e47f34938583              # double 8.9462829999999993
	.quad	0x40226b9fba450acc              # double 9.2102029999999999
	.quad	0x40089ac3eb7cbb3d              # double 3.0755690000000002
	.quad	0x4016476ea4228998              # double 5.5697580000000002
	.quad	0x3fb856f75d9a0f0a              # double 0.095076999999999994
	.quad	0x401362174c4cdfad              # double 4.8457920000000003
	.quad	0x3fe94ca70d1fa333              # double 0.79060699999999995
	.quad	0x40228e0589acbc8c              # double 9.2773859999999999
	.quad	0x40189116ebd4cfd1              # double 6.1416890000000004
	.quad	0x401355796bfca85d              # double 4.8334710000000003
	.quad	0x400a7d4067cf1c32              # double 3.3111579999999998
	.quad	0x400e294b380cb6c8              # double 3.7701630000000002
	.quad	0x400accd20afa2f06              # double 3.3500100000000002
	.quad	0x3febe3a5c1c6088d              # double 0.87153899999999995
	.quad	0x401a5b4959e62563              # double 6.5891469999999996
	.quad	0x40208f0e2c12ad82              # double 8.2794050000000006
	.quad	0x402085fdef8487ba              # double 8.2617030000000007
	.quad	0x3fe2518f3eccc469              # double 0.57245599999999996
	.quad	0x400e89a34ca0c283              # double 3.8172060000000001
	.quad	0x4009b9378ee28672              # double 3.2154379999999998
	.quad	0x4021fdee99a62ed3              # double 8.9959609999999994
	.quad	0x40232cfa8b4bf8fd              # double 9.5878490000000002
	.quad	0x401c8a5a038194c0              # double 7.1351089999999999
	.quad	0x40101a7d6733ebc0              # double 4.0258690000000001
	.quad	0x40003621fafc8b00              # double 2.0264319999999998
	.quad	0x4006d3c36113404f              # double 2.8534000000000002
	.quad	0x4023000713f077cd              # double 9.5000540000000004
	.quad	0x3ff30739b024f65a              # double 1.1892640000000001
	.quad	0x3ff46ed02cd39da1              # double 1.2770539999999999
	.quad	0x3fa4dd2f1a9fbe77              # double 0.040750000000000001
	.quad	0x40238ddaceee0f3d              # double 9.7770600000000005
	.quad	0x4020bc61309c7ffe              # double 8.3679290000000002
	.quad	0x401c1e9dd7ecbb80              # double 7.0298990000000003
	.quad	0x402362600b029281              # double 9.6921389999999991
	.quad	0x400c13b7521144cc              # double 3.5096270000000001
	.quad	0x401452a305532618              # double 5.0807000000000002
	.quad	0x40051f2ba9d1f601              # double 2.6402199999999998
	.quad	0x401081a2e7f6f4bf              # double 4.1265980000000004
	.quad	0x400864988094e5d6              # double 3.0491190000000001
	.quad	0x401fd4bf8fcd67fd              # double 7.9577619999999997
	.quad	0x4023a13ad5bee3d6              # double 9.814902
	.quad	0x4010c7db6e503fb3              # double 4.1951729999999996
	.quad	0x40054737110e453d              # double 2.6597729999999999
	.quad	0x401c48c436fc1590              # double 7.0710610000000003
	.quad	0x40223bfdb4cc2507              # double 9.1171699999999998
	.quad	0x40091e1e2de87097              # double 3.1397059999999999
	.quad	0x4022b96f21f6cacd              # double 9.3621759999999998
	.quad	0x4017177531db445f              # double 5.7729080000000002
	.quad	0x4020d2cde19fc2a9              # double 8.4117270000000008
	.quad	0x3fc204189374bc6a              # double 0.14074999999999999
	.quad	0x40088ed02cd39da1              # double 3.0697329999999998
	.quad	0x3fddec0b5675579b              # double 0.467532
	.quad	0x4008f310129cbab6              # double 3.1186829999999999
	.quad	0x3fd521187e7c06e2              # double 0.33014500000000002
	.quad	0x400bc1d8e8640208              # double 3.469652
	.quad	0x40225d4f3775b813              # double 9.182245
	.quad	0x4003749e8815e397              # double 2.431943
	.quad	0x3ffe04955b4677b4              # double 1.8761190000000001
	.quad	0x40238339c0ebedfa              # double 9.7562999999999995
	.quad	0x401348ff327aa68f              # double 4.8212859999999997
	.quad	0x3ffdec7219220ff5              # double 1.8702259999999999
	.quad	0x401232c1f42bb667              # double 4.5495679999999998
	.quad	0x400c9b6b2af14552              # double 3.575888
	.quad	0x40213de28aa43351              # double 8.6208690000000008
	.quad	0x3fbdf78359bc33f8              # double 0.117058
	.quad	0x4002f0d1fa333765              # double 2.367588
	.quad	0x4020695db3397dd0              # double 8.2057929999999999
	.quad	0x400684c165907d91              # double 2.8148219999999999
	.quad	0x402139a1986b9c30              # double 8.6125609999999995
	.quad	0x401bbc98e53eb39a              # double 6.934177
	.quad	0x4021d637bd05af6c              # double 8.9183939999999992
	.quad	0x3ff349f623076c05              # double 1.205557
	.quad	0x4008b2be48a58b3f              # double 3.0872769999999998
	.quad	0x4023746e8f29d40f              # double 9.7274060000000002
	.quad	0x40209687f455a7d2              # double 8.2940059999999995
	.quad	0x400c677f6b1a2a4e              # double 3.5505360000000001
	.quad	0x4011c244a6223e18              # double 4.4397149999999996
	.quad	0x4000e723aafff36b              # double 2.1128610000000001
	.quad	0x40237aa6d2674081              # double 9.739554
	.quad	0x400a8d3f9e7b80aa              # double 3.3189690000000001
	.quad	0x400b47863beec398              # double 3.4099240000000002
	.quad	0x401b21fff79c8430              # double 6.7832030000000003
	.quad	0x3ff0257d9dba908a              # double 1.009153
	.quad	0x40217a6dce39b457              # double 8.7391190000000005
	.quad	0x401d8badc0980b24              # double 7.3864049999999999
	.quad	0x400d44ea4a8c154d              # double 3.6586500000000002
	.quad	0x401d03868fd199bb              # double 7.2534429999999999
	.quad	0x401b2d55e6bc621b              # double 6.7942729999999996
	.quad	0x401d922962cfd8f1              # double 7.3927360000000002
	.quad	0x4011934fc610f0e9              # double 4.393859
	.quad	0x400c6de97d06bbdc              # double 3.553668
	.quad	0x401feac7da1ec4e7              # double 7.9792779999999998
	.quad	0x3ff956db0dd82fd7              # double 1.5837049999999999
	.quad	0x401f7d9ec7000432              # double 7.8726760000000002
	.quad	0x401778969a0ad8a1              # double 5.8677619999999999
	.quad	0x3fd61a3f4666ec9e              # double 0.34535199999999999
	.quad	0x401bc22b3892ee85              # double 6.9396180000000003
	.quad	0x401a81ba7fc32ebe              # double 6.6266879999999997
	.quad	0x401a0e05ccc89b0f              # double 6.5136940000000001
	.quad	0x3fdc711d798d8a98              # double 0.44440400000000002
	.quad	0x3ffcb0a3d70a3d71              # double 1.7931250000000001
	.quad	0x3ff5003254e6e222              # double 1.312548
	.quad	0x401633cff64cf8d7              # double 5.5505979999999999
	.quad	0x401de268900c521e              # double 7.4711020000000001
	.quad	0x4010795b78cc9a78              # double 4.1185130000000001
	.quad	0x4018523315d701da              # double 6.080273
	.quad	0x400720daa0cae643              # double 2.8910420000000001
	.quad	0x4000a4cb5bb384fd              # double 2.0804659999999999
	.quad	0x401236644d877250              # double 4.5531170000000003
	.quad	0x400ebb6dca07f66f              # double 3.8415180000000002
	.quad	0x3fff91e646f15619              # double 1.97312
	.quad	0x40098fdb09a671ef              # double 3.1952419999999999
	.quad	0x400aed330941c821              # double 3.3658199999999998
	.quad	0x3ffa3685985ad539              # double 1.6383110000000001
	.quad	0x4013acd898b2e9cd              # double 4.9187950000000003
	.quad	0x3ffb4b1bbcf4e875              # double 1.705837
	.quad	0x4021232e1693c03c              # double 8.5687110000000004
	.quad	0x4022cb30b5aa7158              # double 9.3968559999999996
	.quad	0x401f0db6a1e81cb4              # double 7.7633919999999996
	.quad	0x401d148301a79fed              # double 7.2700310000000004
	.quad	0x40117c0c62e4d1a6              # double 4.3711409999999997
	.quad	0x4012acee9dd7ecbb              # double 4.6688789999999996
	.quad	0x401c8eec39799e52              # double 7.1395730000000004
	.quad	0x4017d282c6ef3d3a              # double 5.9555769999999999
	.quad	0x401bf6e696a26e54              # double 6.9911139999999996
	.quad	0x40019d0e12e83a11              # double 2.2016870000000002
	.quad	0x3fc7b480a5accd53              # double 0.185196
	.quad	0x40239481908e581d              # double 9.790051
	.quad	0x3ff679f23465625a              # double 1.4047719999999999
	.quad	0x4022e044f1a1986c              # double 9.4380260000000006
	.quad	0x4013c86f8ad2567a              # double 4.9457380000000004
	.quad	0x401e62d3c792d128              # double 7.5965109999999995
	.quad	0x40227eefa1e3eaf7              # double 9.2479220000000009
	.quad	0x4023e4e592967019              # double 9.9470639999999992
	.quad	0x40232d69b17481b2              # double 9.5886969999999998
	.quad	0x400a542784a9478d              # double 3.2910910000000002
	.quad	0x4022e960d887ebf2              # double 9.4558169999999997
	.quad	0x4022a7b09203a323              # double 9.3275190000000006
	.quad	0x402165c70435efa6              # double 8.6987839999999998
	.quad	0x3feb183d790752db              # double 0.84670900000000004
	.quad	0x40238b21815a07b3              # double 9.7717399999999994
	.quad	0x4020d1d3ed527e52              # double 8.4098199999999999
	.quad	0x3fe8bfceb78897ea              # double 0.77341400000000005
	.quad	0x401a745e0b4e11dc              # double 6.6136400000000002
	.quad	0x401323e963dc486b              # double 4.7850700000000002
	.quad	0x401dba13c254a3c6              # double 7.4317159999999998
	.quad	0x401999df548ecd8e              # double 6.4002660000000002
	.quad	0x4016f6cc1ca3a4b5              # double 5.7410129999999997
	.quad	0x402038ea7ce0fc2f              # double 8.1111640000000005
	.quad	0x40143f58c08b75ea              # double 5.0618619999999996
	.quad	0x401c0a41a261bf38              # double 7.0100160000000002
	.quad	0x400eebb1290257c9              # double 3.865084
	.quad	0x3fcf1d3671ac14c6              # double 0.24307899999999999
	.quad	0x402245ddf43c7d5f              # double 9.1364590000000003
	.quad	0x3ff41563a9f383f1              # double 1.2552220000000001
	.quad	0x400cf96a6a01259a              # double 3.621785
	.quad	0x4013bb4528283d36              # double 4.9328810000000001
	.quad	0x4023906338b47c74              # double 9.7820070000000001
	.quad	0x4019854da4ce8102              # double 6.380179
	.quad	0x4014de5e679463d0              # double 5.2171570000000003
	.quad	0x40115606fac6045c              # double 4.3340110000000003
	.quad	0x4021f98d045fe111              # double 8.9874039999999997
	.quad	0x4010c797460242d0              # double 4.1949129999999997
	.quad	0x3fe182d9cf13ceea              # double 0.54722300000000001
	.quad	0x4019d70f7b9e0610              # double 6.4600200000000001
	.quad	0x4015895dd4c76d11              # double 5.3841469999999996
	.quad	0x4012e4007570c565              # double 4.722658
	.quad	0x3ffa000b88ca3e7d              # double 1.625011
	.quad	0x401d74538ef34d6a              # double 7.3635999999999999
	.quad	0x400647168f8e7ddd              # double 2.7847110000000002
	.quad	0x3fdc067cf1c3265b              # double 0.43789600000000001
	.quad	0x40211a1af7d30ad4              # double 8.5509869999999992
	.quad	0x40130a9eb2074ea9              # double 4.7603710000000001
	.quad	0x401ca67b1c0010c7              # double 7.162579
	.quad	0x400af5d35653c9ac              # double 3.3700320000000001
	.quad	0x3ffd62962cfd8f0c              # double 1.8365689999999999
	.quad	0x3ff3e06748e47560              # double 1.242286
	.quad	0x401ac0f0e90bc7b4              # double 6.6884189999999997
	.quad	0x40227c6f587d6f97              # double 9.2430369999999993
	.quad	0x400de350d2806af4              # double 3.7359939999999998
	.quad	0x400564cad57bc7f7              # double 2.6742149999999998
	.quad	0x40100701d9f4d37c              # double 4.0068429999999999
	.quad	0x40186a9de8b3b320              # double 6.1041179999999997
	.quad	0x40146512a94ff002              # double 5.0987039999999997
	.quad	0x401f7f3fd933e35c              # double 7.8742669999999997
	.quad	0x401b55ed4a1ad645              # double 6.8339129999999999
	.quad	0x3fdba22f6a50d6b2              # double 0.43177399999999999
	.quad	0x401350014f8b588e              # double 4.8281299999999998
	.quad	0x401e41b8ed1bf7ad              # double 7.5641819999999997
	.quad	0x3f49eb6390c91080              # double 7.9100000000000004E-4
	.quad	0x401e2b9e492bc2fc              # double 7.5425959999999996
	.quad	0x3ffa31c64ba94bbe              # double 1.6371519999999999
	.quad	0x401775fcc1871e6d              # double 5.8652220000000002
	.quad	0x3fe5378897e99631              # double 0.66302899999999998
	.quad	0x4004cd9e83e425af              # double 2.6004
	.quad	0x4021e9c5c5718eb9              # double 8.9565870000000007
	.quad	0x3ff5c5a2d72ffd1e              # double 1.360751
	.quad	0x3ff20e11dbca9692              # double 1.1284350000000001
	.quad	0x401ed794ea077037              # double 7.7105290000000001
	.quad	0x3ffccc07aaef2c73              # double 1.799812
	.quad	0x40234fd2e9468017              # double 9.6559059999999998
	.quad	0x401f10e7bc3c5bd1              # double 7.7665090000000001
	.quad	0x4010dcd855970b4a              # double 4.2156690000000001
	.quad	0x3f96e37154003255              # double 0.022352
	.quad	0x4016e2107b784663              # double 5.7207660000000002
	.quad	0x3fe5068986fcdee3              # double 0.65704799999999997
	.quad	0x402267c88e79aae7              # double 9.2027020000000004
	.quad	0x400011c864883fd5              # double 2.008683
	.quad	0x401b6b0813cab820              # double 6.8545230000000004
	.quad	0x402265729b280f13              # double 9.1981400000000004
	.quad	0x40235a6cc1ca3a4b              # double 9.6766109999999994
	.quad	0x4016d97aeddce7cd              # double 5.712383
	.quad	0x401e819dece57109              # double 7.6265790000000004
	.quad	0x400075ebfa8f7db7              # double 2.057579
	.quad	0x40167dfd694ccab4              # double 5.6230370000000001
	.quad	0x402009e2584f4c6e              # double 8.0193049999999992
	.quad	0x4011a5fa658c4bd3              # double 4.4120879999999998
	.quad	0x402092a5614df8b1              # double 8.2864179999999994
	.quad	0x4005aa66dbd72bcb              # double 2.7082039999999998
	.quad	0x40212827fa1a0cf2              # double 8.5784300000000009
	.quad	0x4017be2ac3222920              # double 5.9357100000000003
	.quad	0x40187882278d0cc3              # double 6.1176839999999997
	.quad	0x401b3f73c0c1fc8f              # double 6.8119649999999998
	.quad	0x4001568d759ee88e              # double 2.167262
	.quad	0x4015ec9795b35b0c              # double 5.4810470000000002
	.quad	0x4019b9e16d6dc1a4              # double 6.4315239999999996
	.quad	0x4015afeb8d823422              # double 5.4217969999999998
	.quad	0x40036751ce28ed5f              # double 2.425449
	.quad	0x401d9aaf35e310dc              # double 7.4010590000000001
	.quad	0x3ffb1a48b6523704              # double 1.6939169999999999
	.quad	0x40167ff327aa68f5              # double 5.6249510000000003
	.quad	0x401909835158b828              # double 6.25929
	.quad	0x40236d510d38cda7              # double 9.7135090000000001
	.quad	0x3ff93b107746887b              # double 1.5769200000000001
	.quad	0x401ca4f765fd8adb              # double 7.1611000000000002
	.quad	0x4013223897204296              # double 4.7834190000000003
	.quad	0x40199574f722e1ac              # double 6.3959539999999997
	.quad	0x3fe411c4b90214ad              # double 0.62716899999999998
	.quad	0x400548cd63cb8173              # double 2.6605479999999999
	.quad	0x4023b34070329803              # double 9.8501010000000004
	.quad	0x4003cb063e07a28c              # double 2.4741330000000001
	.quad	0x4021cb48d3ae685e              # double 8.8970400000000005
	.quad	0x400c0e1deacc9214              # double 3.5068929999999998
	.quad	0x401cde32a0663c75              # double 7.21699
	.quad	0x401002efd438d1d9              # double 4.0028680000000003
	.quad	0x4000070fbeb9e493              # double 2.0034480000000001
	.quad	0x4020ce9707182236              # double 8.4034960000000005
	.quad	0x4009093ea2d2fe3f              # double 3.1295139999999999
	.quad	0x400f6ea52ef911cf              # double 3.9290259999999999
	.quad	0x40022ce8101f31f4              # double 2.2719269999999998
	.quad	0x3ff2d72cd7cf5f4e              # double 1.1775329999999999
	.quad	0x3fcd71fbc5de9c02              # double 0.230041
	.quad	0x4002a79cc74b838c              # double 2.331842
	.quad	0x401cf8cbd1244a62              # double 7.2429649999999999
	.quad	0x4014cd20296b3355              # double 5.2003180000000002
	.quad	0x4019b3f5b5fa2270              # double 6.4257419999999996
	.quad	0x402065d4845132f8              # double 8.1988869999999991
	.quad	0x3fde64345cfede98              # double 0.47486600000000001
	.quad	0x40237ba365cb35f4              # double 9.7414810000000002
	.quad	0x40121583a53b8e4c              # double 4.5210100000000004
	.quad	0x40211f44d4456712              # double 8.5610719999999993
	.quad	0x40216711f926c7eb              # double 8.7013090000000002
	.quad	0x3ff44e0c9d9d3459              # double 1.269055
	.quad	0x4008ee158750c1b9              # double 3.1162519999999998
	.quad	0x3ff6b8f8a4c1ebc8              # double 1.4201589999999999
	.quad	0x3fda65a9a8049668              # double 0.41245500000000002
	.quad	0x4022582d16b97fe9              # double 9.1722190000000001
	.quad	0x4001d315d701d9f5              # double 2.2280690000000001
	.quad	0x3fdd1704ff43419e              # double 0.45452999999999999
	.quad	0x40152e1deacc9214              # double 5.2950359999999996
	.quad	0x400201aef6f8f041              # double 2.2508219999999999
	.quad	0x3fd0d40aaeafab54              # double 0.26294200000000001
	.quad	0x4012b94a6eb91b3f              # double 4.6809479999999999
	.quad	0x40235e994185058e              # double 9.6847630000000002
	.quad	0x401638d7e02645e5              # double 5.5555110000000001
	.quad	0x40224e7f0aa21a72              # double 9.1533130000000007
	.quad	0x400e910fd7e45804              # double 3.8208310000000001
	.quad	0x3fc88f861a60d456              # double 0.19188
	.quad	0x402053cc6c54bcf1              # double 8.1636690000000005
	.quad	0x4023601e8a2ec28b              # double 9.6877329999999997
	.quad	0x40139a497fa5d28d              # double 4.900671
	.quad	0x40224aa9f7b5aea3              # double 9.1458279999999998
	.quad	0x40227ad1d041cc53              # double 9.2398819999999997
	.quad	0x40079914f483cafb              # double 2.9497469999999999
	.quad	0x4023b22a0a958538              # double 9.8479770000000002
	.quad	0x3fe01cac083126e9              # double 0.50349999999999995
	.quad	0x401594f1e4b44a1f              # double 5.395454
	.quad	0x40108f9830e3cd9a              # double 4.1402289999999997
	.quad	0x4000e19c9d5a187a              # double 2.1101619999999999
	.quad	0x400ad0e12e83a10a              # double 3.3519920000000001
	.quad	0x4002b1a08bfc2225              # double 2.336732
	.quad	0x4021bddd095af295              # double 8.8708270000000002
	.quad	0x40223f48c2e770bd              # double 9.123602
	.quad	0x4020738800eae18b              # double 8.2256470000000004
	.quad	0x4016a234eb9a176e              # double 5.6584050000000001
	.quad	0x40082719b4dcebff              # double 3.0190920000000001
	.quad	0x3ff3ba5b0ff10ecb              # double 1.2329969999999999
	.quad	0x401a5dae81882adc              # double 6.5914859999999997
	.quad	0x4023842aa9f7b5af              # double 9.7581380000000006
	.quad	0x400a7e0bd44998d0              # double 3.3115459999999999
	.quad	0x4000997e56473472              # double 2.074948
	.quad	0x4020e88d6d3b6cbe              # double 8.4542040000000007
	.quad	0x3fff07ffde7210bf              # double 1.9394530000000001
	.quad	0x40194632c1f42bb6              # double 6.3185529999999996
	.quad	0x40015b1d0c804103              # double 2.169489
	.quad	0x3ffae7136a400fbb              # double 1.6814150000000001
	.quad	0x4022c00c0f01fb83              # double 9.3750920000000004
	.quad	0x402252f5fd47bedb              # double 9.1620329999999992
	.quad	0x4015398676a7264a              # double 5.3061769999999999
	.quad	0x401feaa3f034b0e2              # double 7.9791410000000003
	.quad	0x4023506a098915be              # double 9.6570590000000003
	.quad	0x3fa74c8ffb8b2639              # double 0.045505999999999998
	.quad	0x401a0ddebd9018e7              # double 6.5135449999999997
	.quad	0x40111fd8adab9f56              # double 4.2811000000000003
	.quad	0x401263a14cec41dd              # double 4.5972949999999999
	.quad	0x400908893b7d8490              # double 3.1291679999999999
	.quad	0x3ff0e86b59146e4c              # double 1.056743
	.quad	0x40116ce24bba12b6              # double 4.3563320000000001
	.quad	0x401b702f2f987400              # double 6.8595550000000003
	.quad	0x4016e481b21c475e              # double 5.7231509999999997
	.quad	0x4021647f77af6406              # double 8.6962849999999996
	.quad	0x40179ef8055fbb51              # double 5.9052429999999996
	.quad	0x4022ba14ad362e90              # double 9.3634389999999996
	.quad	0x400f0a45d41fa765              # double 3.8800159999999999
	.quad	0x4022efdeb52c9d17              # double 9.468496
	.quad	0x4022b276fb09203a              # double 9.3485639999999997
	.quad	0x40235d2b0a6fc58b              # double 9.6819690000000004
	.quad	0x400b9404ea4a8c15              # double 3.4472749999999999
	.quad	0x400319c27e953155              # double 2.387578
	.quad	0x3feff204295a6c5d              # double 0.99829299999999998
	.quad	0x400bb93037d63023              # double 3.4654240000000001
	.quad	0x40143ee45c358afc              # double 5.0614179999999998
	.quad	0x40005f0dc768dfbd              # double 2.0464129999999998
	.quad	0x401c1f540895d0b7              # double 7.0305939999999998
	.quad	0x3fffc447c30d306a              # double 1.98542
	.quad	0x3fe485be1a826245              # double 0.64132599999999995
	.quad	0x400e1888f861a60d              # double 3.7619799999999999
	.quad	0x4023bee6b8305d96              # double 9.8728540000000002
	.quad	0x401fd1d29dc725c4              # double 7.9549050000000001
	.quad	0x4017ea16e7a311e8              # double 5.9786029999999997
	.quad	0x40155c05d52c16df              # double 5.3398659999999998
	.quad	0x401f5570c564f97f              # double 7.8334380000000001
	.quad	0x40233e7253da72a8              # double 9.6219660000000004
	.quad	0x4014c455a7d24181              # double 5.1917330000000002
	.quad	0x3ffb6c343b70ef56              # double 1.7139169999999999
	.quad	0x4023d7f4dbdf8f47              # double 9.9217899999999996
	.quad	0x40207d1654d61b2a              # double 8.2443109999999997
	.quad	0x400847ac81d3aa37              # double 3.0349970000000002
	.quad	0x40213b9f340d4dc6              # double 8.6164489999999994
	.quad	0x401fea6b0d9513f9              # double 7.9789240000000001
	.quad	0x40149ffa7eb6bf44              # double 5.1562289999999997
	.quad	0x400e567903211cb0              # double 3.7922229999999999
	.quad	0x402033dea465a576              # double 8.1013079999999995
	.quad	0x3ff61c1d6cf850df              # double 1.381864
	.quad	0x4012a595bbbe8790              # double 4.6617040000000003
	.quad	0x40228d1eb851eb85              # double 9.2756249999999998
	.quad	0x4015b6f5caf2d7f9              # double 5.4286719999999997
	.quad	0x3ff82492bc2fc697              # double 1.508929
	.quad	0x40101e8858ff7597              # double 4.0298170000000004
	.quad	0x40161797cc39ffd6              # double 5.5230399999999999
	.quad	0x40232f542a23bff9              # double 9.5924390000000006
	.quad	0x40083c8b86b15f89              # double 3.029563
	.quad	0x400028ee6b8305d9              # double 2.0199859999999998
	.quad	0x401c306ee30caa32              # double 7.0472979999999996
	.quad	0x40117f0a1be2b496              # double 4.3740620000000003
	.quad	0x400049c3ce2089e3              # double 2.0360179999999999
	.quad	0x4007669d7342edbb              # double 2.9251049999999998
	.quad	0x402305b1422ccb3a              # double 9.5111179999999997
	.quad	0x40233781e8a2ec29              # double 9.6084130000000005
	.quad	0x4022e16ebd4cfd09              # double 9.4402980000000003
	.quad	0x4000cb2bfdb4cc25              # double 2.099205
	.quad	0x3fe9ff8ec0f88334              # double 0.812446
	.quad	0x4017864c2f837b4a              # double 5.8811499999999999
	.quad	0x3fd47342edbb59de              # double 0.31953500000000001
	.quad	0x401485710880d802              # double 5.1303140000000003
	.quad	0x40230b19c5a3e39f              # double 9.5216809999999991
	.quad	0x40035f255f3519bd              # double 2.4214579999999999
	.quad	0x401fc326e115592e              # double 7.9405780000000004
	.quad	0x401d3c23315d701e              # double 7.3087280000000003
	.quad	0x401e2e48e8a71de7              # double 7.5452000000000003
	.quad	0x400d07ee0b0af5fd              # double 3.6288719999999999
	.quad	0x40101f9ebe9c8861              # double 4.0308789999999997
	.quad	0x4017780cf9e3864d              # double 5.8672370000000003
	.quad	0x401da325d4a5df22              # double 7.4093239999999998
	.quad	0x3fdc2fcefaa4766c              # double 0.44041799999999998
	.quad	0x3fdb484d76ab5808              # double 0.426288
	.quad	0x4006cb9f559b3d08              # double 2.8494250000000001
	.quad	0x4010b352220bc383              # double 4.1751180000000003
	.quad	0x4016fad31fcd24e1              # double 5.7449459999999997
	.quad	0x40110154866a11ed              # double 4.2512990000000004
	.quad	0x40213dbbe0157eed              # double 8.6205739999999995
	.quad	0x401aba222d5171e3              # double 6.6817710000000003
	.quad	0x3ff339f98b71b8aa              # double 1.201654
	.quad	0x3ffb6e19b90ea9e7              # double 1.71438
	.quad	0x401b71e2de870974              # double 6.8612169999999999
	.quad	0x4001039f77292c49              # double 2.1267689999999999
	.quad	0x3fff99ce075f6fd2              # double 1.97505
	.quad	0x4021027f8012dfd7              # double 8.5048790000000007
	.quad	0x4012ed97f62b6ae8              # double 4.7320250000000001
	.quad	0x3ff7e3c105186db5              # double 1.493104
	.quad	0x4014e35b91f70de9              # double 5.222029
	.quad	0x40104ae3a3a8e714              # double 4.0731339999999996
	.quad	0x4022b4c20d5629d8              # double 9.3530429999999995
	.quad	0x4020654f3775b813              # double 8.19787
	.quad	0x400ee9eb2074ea8e              # double 3.8642180000000002
	.quad	0x40173f4f0d844d01              # double 5.8118249999999998
	.quad	0x3fedf1d81f106680              # double 0.93577200000000005
	.quad	0x40069a1e3eaf6838              # double 2.825253
	.quad	0x401bc21ff2e48e8a              # double 6.9395749999999996
	.quad	0x401124bd33d29564              # double 4.2858780000000003
	.quad	0x4022f411a11233df              # double 9.4766969999999997
	.quad	0x4013bbadc0980b24              # double 4.9332799999999999
	.quad	0x3fc79d7fd82773e2              # double 0.18449399999999999
	.quad	0x401c35e6ff7dfa01              # double 7.0526390000000001
	.quad	0x3fc7fbf83382e44b              # double 0.18737699999999999
	.quad	0x40160eae5bc87db3              # double 5.5143370000000003
	.quad	0x3fb817dae81882ae              # double 0.094114000000000003
	.quad	0x400c00f6f08cc576              # double 3.5004710000000001
	.quad	0x40127c753e707e17              # double 4.6215409999999997
	.quad	0x400e28650e779208              # double 3.7697240000000001
	.quad	0x4021d496ededaec5              # double 8.9152140000000006
	.quad	0x40224fc30d306a2b              # double 9.1557849999999998
	.quad	0x4016d7b7c7820a31              # double 5.7106620000000001
	.quad	0x401c97481b21c476              # double 7.1477360000000001
	.quad	0x40103a2c2374794f              # double 4.0568090000000003
	.quad	0x401a20fcf80dc337              # double 6.5322149999999999
	.quad	0x402204011d3671ac              # double 9.0078209999999998
	.quad	0x401997a17f4128bf              # double 6.3980769999999998
	.quad	0x401e5d4738a3b57c              # double 7.5910919999999997
	.quad	0x400d9e28240b7803              # double 3.7022249999999999
	.quad	0x40184361dc93ea2d              # double 6.0658029999999998
	.quad	0x4022f35ed8d36b4c              # double 9.4753329999999991
	.quad	0x3fc9513f8db48909              # double 0.197792
	.quad	0x4002c2b628459967              # double 2.3450739999999999
	.quad	0x401209335d249e45              # double 4.508985
	.quad	0x3ffecebdd334c5da              # double 1.9254739999999999
	.quad	0x4015ccaa7589efd8              # double 5.4498689999999996
	.quad	0x3ffcc33508f648c7              # double 1.797658
	.quad	0x401de7b2cc70867b              # double 7.4762680000000001
	.quad	0x40214ae5ffa3b9ae              # double 8.6462859999999999
	.quad	0x4001e0ebedfa43fe              # double 2.2348249999999998
	.quad	0x401162391d57ff9b              # double 4.3459209999999997
	.quad	0x3fc3b96af038e2a0              # double 0.15409600000000001
	.quad	0x401544299d883ba3              # double 5.3165649999999998
	.quad	0x4022e061a60d4563              # double 9.4382450000000002
	.quad	0x3fa869e7fb267c6c              # double 0.047683000000000003
	.quad	0x40239bbaba7b9171              # double 9.8041590000000002
	.quad	0x40125f4ba51a005c              # double 4.5930619999999998
	.quad	0x3fbc1040bfe3b03e              # double 0.109623
	.quad	0x3fe03bdbe3c10518              # double 0.50730699999999995
	.quad	0x3fd4bc83a96d4c34              # double 0.32400600000000002
	.quad	0x402054bfd2e94680              # double 8.1655259999999998
	.quad	0x4023f202107b7846              # double 9.9726719999999993
	.quad	0x4022c78af3e468cb              # double 9.3897320000000004
	.quad	0x400e8dfd694ccab4              # double 3.819331
	.quad	0x400406d7a56de332              # double 2.5033409999999998
	.quad	0x4012cfbb9496249a              # double 4.7028639999999999
	.quad	0x3fb61aa3f034b0e2              # double 0.086344000000000004
	.quad	0x4022fe01de269164              # double 9.4961079999999995
	.quad	0x4022ec4588a04d12              # double 9.461468
	.quad	0x400d31bac2df0d41              # double 3.6492819999999999
	.quad	0x401b8eddce7cd035              # double 6.8895179999999998
	.quad	0x40205c6ae3a3a8e7              # double 8.1805029999999999
	.quad	0x4005962f9ca5bd94              # double 2.6983329999999999
	.quad	0x40157ee84ad794a7              # double 5.3739330000000001
	.quad	0x3fcfe6d58c8eef1c              # double 0.24923200000000001
	.quad	0x40161296b3354c12              # double 5.5181529999999999
	.quad	0x4016321c044284e0              # double 5.5489350000000002
	.quad	0x3fbf4d9c6b053198              # double 0.122278
	.quad	0x3fd6857f3061c79b              # double 0.35189799999999999
	.quad	0x40001220791c4b90              # double 2.0088509999999999
	.quad	0x3ff57ecdd0d8cb08              # double 1.343458
	.quad	0x401e8fd0d0678c00              # double 7.6404449999999997
	.quad	0x400a73e707e175d1              # double 3.3065929999999999
	.quad	0x402288f81e8a2ec3              # double 9.2675180000000008
	.quad	0x3fbd65f5275ee99a              # double 0.11483699999999999
	.quad	0x3ff8e76427c7c526              # double 1.556492
	.quad	0x401704b7f5a5332b              # double 5.7546080000000002
	.quad	0x4019e236c15d2d02              # double 6.4709120000000002
	.quad	0x402169565c2d2780              # double 8.7057369999999992
	.quad	0x40215149c6f36ef8              # double 8.658766
	.quad	0x401325cfede97d07              # double 4.7869260000000002
	.quad	0x4018f7b8d3f1843c              # double 6.2419159999999998
	.quad	0x40205f3cb3e5753a              # double 8.1860099999999996
	.quad	0x40239705a708ede5              # double 9.7949649999999994
	.quad	0x4016104b7f5a5333              # double 5.5159130000000003
	.quad	0x401a8f9f44d44567              # double 6.6402559999999999
	.quad	0x401a6562e09fe868              # double 6.5990099999999998
	.quad	0x401268e60807357e              # double 4.6024399999999996
	.quad	0x40104835dedf1e08              # double 4.0705179999999999
	.quad	0x4020833e1437c569              # double 8.2563329999999997
	.quad	0x4001eb06c43f5f91              # double 2.2397589999999998
	.quad	0x4021d88b11409a24              # double 8.9229359999999999
	.quad	0x4005fc1a47a9e2bd              # double 2.748097
	.quad	0x40226cb1897a67a5              # double 9.2122919999999997
	.quad	0x401024024b33daf9              # double 4.0351650000000001
	.quad	0x400660d4562e09ff              # double 2.7972800000000002
	.quad	0x400ef503b81b64e0              # double 3.8696359999999999
	.quad	0x40187774aba38759              # double 6.1166559999999999
	.quad	0x40193304ccee5abc              # double 6.299823
	.quad	0x401efb413986338b              # double 7.7453659999999997
	.quad	0x3fe516cc5fbf8338              # double 0.65903299999999998
	.quad	0x40213cfaeff5c6c1              # double 8.6191019999999998
	.quad	0x3ffeef33ca31e7da              # double 1.9333990000000001
	.quad	0x401e8c9afe1da7b1              # double 7.6373100000000002
	.quad	0x401defd8f0c77dd8              # double 7.4842259999999996
	.quad	0x4013956b00ffda40              # double 4.8959159999999997
	.quad	0x4004e0852b4d8ba4              # double 2.609629
	.quad	0x3fe238d60a633051              # double 0.569438
	.quad	0x400cac6ef3d3a1d3              # double 3.5841959999999999
	.quad	0x40047d883ba3443d              # double 2.5612949999999999
	.quad	0x4012d84230fcf80e              # double 4.7111900000000002
	.quad	0x3fc6af5771001d5c              # double 0.17722599999999999
	.quad	0x4014c9210385c67e              # double 5.196415
	.quad	0x40158bb05faebc41              # double 5.3864150000000004
	.quad	0x400403a4b5568e82              # double 2.501779
	.quad	0x4023fc0639d5e4a4              # double 9.9922350000000008
	.quad	0x4021f856e696a26e              # double 8.9850379999999994
	.quad	0x4020c19285a921cd              # double 8.3780710000000003
	.quad	0x4019ce3d5fdcdf6a              # double 6.4514060000000004
	.quad	0x40076dfa43fe5c92              # double 2.9287000000000001
	.quad	0x40201a83f4eca687              # double 8.0517880000000002
	.quad	0x40185cf41f212d77              # double 6.0907749999999998
	.quad	0x4009632e3821af7d              # double 3.1734279999999999
	.quad	0x3ff5d5aaf78feef6              # double 1.364665
	.quad	0x4020e522ea0fd3b3              # double 8.4475320000000007
	.quad	0x4020a537e2c55c96              # double 8.322692
	.quad	0x3fe03d20f2becedd              # double 0.50746199999999997
	.quad	0x400603dccea28fe2              # double 2.7518859999999998
	.quad	0x40211e1ae70c1334              # double 8.5587990000000004
	.quad	0x400660a958537e2c              # double 2.7971979999999999
	.quad	0x40238056c508b32d              # double 9.7506620000000001
	.quad	0x3ff256b00ffda405              # double 1.146164
	.quad	0x4011016b97fe8ee7              # double 4.2513870000000002
	.quad	0x40122c8259e1f3a5              # double 4.5434659999999996
	.quad	0x40227d028a1dfb94              # double 9.2441600000000008
	.quad	0x4008848b65237048              # double 3.0647190000000002
	.quad	0x401e7a172abef06b              # double 7.6192289999999998
	.quad	0x3fd12bf9830e3cda              # double 0.26830900000000002
	.quad	0x40149410f94c8798              # double 5.1445959999999999
	.quad	0x3ffb1cdc443914f5              # double 1.6945460000000001
	.quad	0x40104e279dd3bafe              # double 4.0763230000000004
	.quad	0x3ff2d86876e1dead              # double 1.177834
	.quad	0x401d350c5eb313be              # double 7.3018049999999999
	.quad	0x40119986338b47c7              # double 4.3999259999999998
	.quad	0x3fda0db6a1e81cb4              # double 0.40708699999999998
	.quad	0x4018dabead4f5904              # double 6.2136180000000003
	.quad	0x40184b9d7fd82774              # double 6.0738430000000001
	.quad	0x400a88b220791c4c              # double 3.3167460000000002
	.quad	0x40208e5710880d80              # double 8.2780079999999998
	.quad	0x40144722e1ac57e2              # double 5.0694689999999998
	.quad	0x40219b2c1f42bb66              # double 8.8030709999999992
	.quad	0x40177373affb04ee              # double 5.8627459999999996
	.quad	0x4012f5a5fc7e6b40              # double 4.7398910000000001
	.quad	0x402151e42e126202              # double 8.6599439999999994
	.quad	0x4016d555c52e72da              # double 5.7083349999999999
	.quad	0x401969c7368ad688              # double 6.3532989999999998
	.quad	0x401bd82e87d2c7b9              # double 6.9611150000000004
	.quad	0x3fdfe453d20f2bed              # double 0.498311
	.quad	0x3ffbb55ac03ff690              # double 1.731776
	.quad	0x40229b7281fd9ba2              # double 9.3036080000000005
	.quad	0x400febf0995aaf79              # double 3.990205
	.quad	0x3ff46e2435696e59              # double 1.2768900000000001
	.quad	0x3ffad4bf0995aaf8              # double 1.6769400000000001
	.quad	0x400b0e72da122fad              # double 3.3820549999999998
	.quad	0x400a459f2ba9d1f6              # double 3.283995
	.quad	0x4022a72a38b8ae32              # double 9.3264940000000003
	.quad	0x3febc855da272863              # double 0.868205
	.quad	0x4022fb8cb8e086be              # double 9.4913080000000001
	.quad	0x401a222467be553b              # double 6.5333420000000002
	.quad	0x402350b2e9ccb7d4              # double 9.6576149999999998
	.quad	0x3fe446b053198288              # double 0.633629
	.quad	0x40209fc5479d4d83              # double 8.3120519999999996
	.quad	0x3feda3bff8a8f3aa              # double 0.92623900000000003
	.quad	0x4000317720c8cd64              # double 2.0241530000000001
	.quad	0x400bbd72bcb5fe54              # double 3.4675039999999999
	.quad	0x4001d34699418506              # double 2.2281620000000002
	.quad	0x3fef6ee957470eb2              # double 0.98228899999999997
	.quad	0x401a20c4588a04d1              # double 6.5319989999999999
	.quad	0x402389a8049667b6              # double 9.7688600000000001
	.quad	0x3fec92684cf0739b              # double 0.892872
	.quad	0x401108d4fdf3b646              # double 4.2586250000000003
	.quad	0x401ac40cc78e9f6b              # double 6.6914550000000004
	.quad	0x3feaea57214f0521              # double 0.84110600000000002
	.quad	0x400328826aa8eb46              # double 2.3947799999999999
	.quad	0x400637cc39ffd60f              # double 2.7772450000000002
	.quad	0x400b9ef416bdb1a7              # double 3.4526140000000001
	.quad	0x401501c58255b036              # double 5.2517300000000002
	.quad	0x40223dd851654d62              # double 9.1207910000000005
	.quad	0x401dfd1f1cfbb949              # double 7.4971889999999996
	.quad	0x401a75c810a569b1              # double 6.6150209999999996
	.quad	0x401d0b923a29c77a              # double 7.2613000000000003
	.quad	0x3feb7cb4f1e4b44a              # double 0.85897299999999999
	.quad	0x4012ed20f2becedd              # double 4.7315709999999997
	.quad	0x3fd151b93037d630              # double 0.27061299999999999
	.quad	0x4007108b32ce8965              # double 2.8830779999999998
	.quad	0x40058c5974e65bea              # double 2.69353
	.quad	0x401886cdf266ba49              # double 6.1316449999999998
	.quad	0x40186bd09e12a51e              # double 6.1052879999999998
	.quad	0x4020f836006d0d4a              # double 8.4847870000000007
	.quad	0x4004aa3b57c4e2f3              # double 2.5831209999999998
	.quad	0x401251d4b6a619db              # double 4.5799130000000003
	.quad	0x3ffeced916872b02              # double 1.9255
	.quad	0x4017a1f85d744f5d              # double 5.9081739999999998
	.quad	0x4021e92a51e321a3              # double 8.9554010000000002
	.quad	0x40157870da5daf08              # double 5.3676180000000002
	.quad	0x400442cb20fb224b              # double 2.5326140000000001
	.quad	0x4012ae9bbf0dc769              # double 4.6705160000000001
	.quad	0x40125a4052d666aa              # double 4.5881360000000004
	.quad	0x401d03996fa82e88              # double 7.2535150000000002
	.quad	0x40150feb4a66559f              # double 5.2655459999999996
	.quad	0x402289dd7ecbb7fa              # double 9.2692680000000003
	.quad	0x4014a7292c493426              # double 5.1632429999999996
	.quad	0x40220735e310dbf0              # double 9.0140829999999994
	.quad	0x4022d81b003686a5              # double 9.4220810000000003
	.quad	0x40212db0142f61ed              # double 8.5892339999999994
	.quad	0x3fdc5510d38cda6e              # double 0.44269199999999997
	.quad	0x3ff0fd2630ec3116              # double 1.061804
	.quad	0x3ff350d6b228dc98              # double 1.207236
	.quad	0x3fed530270f38822              # double 0.91638299999999995
	.quad	0x40149ad5bee3d5fe              # double 5.1512060000000002
	.quad	0x40145ec5f394b7b3              # double 5.0925520000000004
	.quad	0x400e918f3eccc469              # double 3.8210739999999999
	.quad	0x3fd3c768dfbd6a59              # double 0.30904599999999999
	.quad	0x3ffa03ad9f0a1be3              # double 1.6258980000000001
	.quad	0x401ae74d9c6b0532              # double 6.7258820000000004
	.quad	0x400b8fdf3b645a1d              # double 3.4452500000000001
	.quad	0x40215739085f4a12              # double 8.6703569999999992
	.quad	0x402050dd1e53a81e              # double 8.1579370000000004
	.quad	0x3ff3a3fab10ba626              # double 1.2275339999999999
	.quad	0x401b4bc59b8023a7              # double 6.8239960000000002
	.quad	0x3ff3e440f2389720              # double 1.2432259999999999
	.quad	0x4022b0dc55000c95              # double 9.3454309999999996
	.quad	0x401f7c01a36e2eb2              # double 7.8711000000000002
	.quad	0x3fea949c6f36ef80              # double 0.83064099999999996
	.quad	0x4022ce6d15ad106f              # double 9.4031760000000002
	.quad	0x4023e0d2806af46b              # double 9.9391060000000006
	.quad	0x401c9ecd8dbcec85              # double 7.155081
	.quad	0x40123ab649d388a9              # double 4.5573360000000003
	.quad	0x401e14fdf3b645a2              # double 7.5205000000000002
	.quad	0x401c3e9531550ca2              # double 7.0611160000000002
	.quad	0x402383d5dc400757              # double 9.7574909999999999
	.quad	0x400c8de97d06bbdc              # double 3.569293
	.quad	0x401f64141e9af5ba              # double 7.8477329999999998
	.quad	0x3fc61711947cfa27              # double 0.17257900000000001
	.quad	0x3fd63fc43b2dd378              # double 0.34764200000000001
	.quad	0x40206a0902de00d2              # double 8.2071000000000005
	.quad	0x4014e26202539757              # double 5.2210770000000002
	.quad	0x401aca30121682f9              # double 6.6974489999999998
	.quad	0x40078d04e618ce2d              # double 2.9438569999999999
	.quad	0x40237dc93ea2d2fe              # double 9.7456759999999996
	.quad	0x3fca6ba493c89f41              # double 0.20641000000000001
	.quad	0x402354db163baba8              # double 9.6657340000000004
	.quad	0x401d1f6d7625204b              # double 7.280691
	.quad	0x4020541376d54973              # double 8.1642109999999999
	.quad	0x3fd823076c050bd8              # double 0.37713799999999997
	.quad	0x4008eb018611fd59              # double 3.1147490000000002
	.quad	0x401ec705425f2021              # double 7.6943559999999999
	.quad	0x40106695d91ab8e9              # double 4.1001810000000001
	.quad	0x4006a2ae4b018612              # double 2.829434
	.quad	0x3ff4b25f633ce63a              # double 1.2935479999999999
	.quad	0x400e84388ebcc6c5              # double 3.8145609999999999
	.quad	0x4020e328f9f44d44              # double 8.4436719999999994
	.quad	0x3fe987bbb62413db              # double 0.79781899999999994
	.quad	0x401775857afea3df              # double 5.8647669999999996
	.quad	0x40085f30e7ff583a              # double 3.0464799999999999
	.quad	0x401f08151a437825              # double 7.7578930000000001
	.quad	0x4022ebe707e175d1              # double 9.4607469999999995
	.quad	0x401200ac3a860dcc              # double 4.5006570000000004
	.quad	0x40177678c0053e2d              # double 5.8656949999999997
	.quad	0x3fcae9b38d60a633              # double 0.210257
	.quad	0x40015e8ee6b8305e              # double 2.1711710000000002
	.quad	0x40233c96cc5fbf83              # double 9.6183379999999996
	.quad	0x400a70489d27c393              # double 3.3048259999999998
	.quad	0x4018f66cb10342ab              # double 6.2406490000000003
	.quad	0x401c4ffb8b263950              # double 7.0781080000000003
	.quad	0x401fc3c36113404f              # double 7.9411750000000003
	.quad	0x3fef6321a2e7f6f5              # double 0.98085100000000002
	.quad	0x4019724c8366516e              # double 6.3616200000000003
	.quad	0x4011a072085b1855              # double 4.4066850000000004
	.quad	0x4020ccae85b9e8c4              # double 8.3997689999999991
	.quad	0x400b6704bc27631b              # double 3.4253019999999998
	.quad	0x4007fac4f7ec3548              # double 2.9974460000000001
	.quad	0x4013bfc115df6556              # double 4.9372600000000002
	.quad	0x4015cba9d1f60179              # double 5.4488899999999996
	.quad	0x402382ab8a5ce5b4              # double 9.7552149999999997
	.quad	0x3fe028650e779208              # double 0.50493100000000002
	.quad	0x40029b23571d1d47              # double 2.3257509999999999
	.quad	0x401d451efb6dca08              # double 7.317501
	.quad	0x400205c67dfe32a0              # double 2.2528199999999998
	.quad	0x402234245f5ad96a              # double 9.1018399999999993
	.quad	0x401aad5410f94c88              # double 6.6692660000000004
	.quad	0x400664156e264e48              # double 2.7988689999999998
	.quad	0x3ff99309c7ffde72              # double 1.598398
	.quad	0x401945a250f84018              # double 6.3180019999999999
	.quad	0x40225e299524bfd3              # double 9.1839110000000002
	.quad	0x3fff1a74c09c3ce2              # double 1.943959
	.quad	0x40121b56b8737974              # double 4.5266979999999997
	.quad	0x4019df98fa376923              # double 6.4683570000000001
	.quad	0x4023a3a96d4c33b5              # double 9.8196519999999996
	.quad	0x401446709fa54c55              # double 5.0687889999999998
	.quad	0x40086cf7caa7589f              # double 3.053207
	.quad	0x402366ed8904f6e0              # double 9.7010310000000004
	.quad	0x40101066c2acb85a              # double 4.0160169999999997
	.quad	0x40097faf42784a94              # double 3.1873459999999998
	.quad	0x401c9dd3bafd9770              # double 7.154128
	.quad	0x4022e8cc35ce1826              # double 9.4546829999999993
	.quad	0x4007b67ba237cdcd              # double 2.9641030000000002
	.quad	0x4011d75ea67e846a              # double 4.4603219999999997
	.quad	0x401f1ba775fb2ee0              # double 7.7770060000000001
	.quad	0x3fff2aa4b9884c6a              # double 1.9479109999999999
	.quad	0x3ffa038088509bfa              # double 1.6258550000000001
	.quad	0x3ff4bf1c75818c5d              # double 1.2966580000000001
	.quad	0x3fe9b42edbb59ddc              # double 0.80324499999999998
	.quad	0x4023731e5c0b9991              # double 9.7248409999999996
	.quad	0x40230a4f6598e10d              # double 9.520137
	.quad	0x401b89b56323bbc7              # double 6.8844810000000001
	.quad	0x3fe5dea897635e74              # double 0.68342999999999998
	.quad	0x40228304ccee5abc              # double 9.2558959999999999
	.quad	0x401c30ab2e1693c0              # double 7.0475279999999998
	.quad	0x4016425b749adc90              # double 5.5648020000000002
	.quad	0x401ede2b8c75c4a8              # double 7.7169629999999997
	.quad	0x3fdb92f2b66b6178              # double 0.430844
	.quad	0x4017a0f733a8a3f9              # double 5.9071930000000004
	.quad	0x3ff734666ec9e237              # double 1.4502930000000001
	.quad	0x401eda8b4bf8fcd6              # double 7.7134219999999996
	.quad	0x4006e76e1deacc92              # double 2.863003
	.quad	0x401c0cc46950fc72              # double 7.0124680000000001
	.quad	0x3fec69d30270f388              # double 0.88791799999999999
	.quad	0x3fffbbfa4c61d862              # double 1.983393
	.quad	0x3fb0a07f66e86c66              # double 0.064949000000000007
	.quad	0x4022c4c25072085b              # double 9.3842949999999998
	.quad	0x3fbe3810e8858ff7              # double 0.118043
	.quad	0x401c9f7446f9b995              # double 7.1557170000000001
	.quad	0x3fff21b8ed1bf7ad              # double 1.9457329999999999
	.quad	0x400ecf5fd47bedb7              # double 3.8512569999999999
	.quad	0x3fe8bfe3b03e20cd              # double 0.773424
	.quad	0x400a1fb8b26394fb              # double 3.2654890000000001
	.quad	0x3ffdebcb5fe542e5              # double 1.8700669999999999
	.quad	0x401d50a30db6a1e8              # double 7.3287469999999999
	.quad	0x3feb12ddbdb5d895              # double 0.84605300000000006
	.quad	0x401fd70fbeb9e493              # double 7.9600210000000002
	.quad	0x4016b1a21ea35936              # double 5.67347
	.quad	0x4003fb58d1526d8b              # double 2.4977279999999999
	.quad	0x40120a8826aa8eb4              # double 4.5102849999999997
	.quad	0x400bcaed1394317b              # double 3.4740850000000001
	.quad	0x3fcfc8fb86f47b67              # double 0.24832099999999999
	.quad	0x4012ce79aae6c8f7              # double 4.7016359999999997
	.quad	0x3fe3d349be8ff328              # double 0.61954200000000004
	.quad	0x3ff5125785f8d2e5              # double 1.316978
	.quad	0x3fd0d249e44fa051              # double 0.26283499999999999
	.quad	0x3ffd1423d9231c65              # double 1.8174170000000001
	.quad	0x3fd13aa369fcf3dc              # double 0.269204
	.quad	0x401fb8c60cbf2b24              # double 7.9304430000000004
	.quad	0x4020be3c74fb54a0              # double 8.3715550000000007
	.quad	0x400f6f294dd72368              # double 3.929278
	.quad	0x4016ddb6a1e81cb4              # double 5.7165169999999996
	.quad	0x40083d8f92af9a8d              # double 3.0300590000000001
	.quad	0x4016331550ca1cef              # double 5.5498859999999999
	.quad	0x40195cc1871e6cd3              # double 6.3405820000000004
	.quad	0x3f80c23fab10ba62              # double 0.0081829999999999993
	.quad	0x4015a5bd0e12e83a              # double 5.4118539999999999
	.quad	0x402183d3e4ef0282              # double 8.7574760000000005
	.quad	0x400b64e48626f60e              # double 3.424264
	.quad	0x3ffd162281344806              # double 1.817904
	.quad	0x401f659a73b42cc3              # double 7.8492220000000001
	.quad	0x401093504c48adef              # double 4.1438610000000002
	.quad	0x401b303925bb7b6c              # double 6.7970930000000003
	.quad	0x3ff58bdcad14a0a1              # double 1.346646
	.quad	0x4002dcc857f3061c              # double 2.3578039999999998
	.quad	0x3fd5c6fbd273d5bb              # double 0.34027000000000002
	.quad	0x3ffe512ec6bce853              # double 1.8948199999999999
	.quad	0x401c0df82b1f687b              # double 7.0136419999999999
	.quad	0x4023f0af1cb89d6b              # double 9.9700860000000002
	.quad	0x4021ed393250b524              # double 8.9633269999999996
	.quad	0x4023729478c868ba              # double 9.723789
	.quad	0x40194aeff5c6c11a              # double 6.3231809999999999
	.quad	0x402177daa4fca42b              # double 8.7340900000000001
	.quad	0x402393d017dae819              # double 9.7886970000000008
	.quad	0x40179b1d4f9c1f86              # double 5.9014790000000001
	.quad	0x4014e49e8815e397              # double 5.2232609999999999
	.quad	0x3ff315b573eab368              # double 1.1928000000000001
	.quad	0x4023b8130164840e              # double 9.8595199999999998
	.quad	0x40002e736049ecb3              # double 2.022681
	.quad	0x402131aa1d755bcd              # double 8.5970010000000006
	.quad	0x4013e036c9c0a8d2              # double 4.9689589999999999
	.quad	0x400968a372606fac              # double 3.1760929999999998
	.quad	0x3fe5b91d57ff9b56              # double 0.67884699999999998
	.quad	0x401c2d712a0ec743              # double 7.0443769999999999
	.quad	0x40166f5dfeb8d823              # double 5.6087569999999998
	.quad	0x40182323358f2e06              # double 6.0343140000000002
	.quad	0x401072cb20fb224b              # double 4.1121030000000003
	.quad	0x4010413165d39970              # double 4.0636650000000003
	.quad	0x400d504a2fcefaa4              # double 3.6642039999999998
	.quad	0x401a763cb8173322              # double 6.6154659999999996
	.quad	0x3fe590624dd2f1aa              # double 0.673875
	.quad	0x402249a671ef30a5              # double 9.1438480000000002
	.quad	0x3fe72ccf6be37de9              # double 0.72421999999999997
	.quad	0x4008dbce4217d285              # double 3.1073270000000002
	.quad	0x4021ebb5e0f7fcfc              # double 8.9603719999999995
	.quad	0x401093ae2541d8e8              # double 4.1442189999999997
	.quad	0x40043af5ba2be059              # double 2.5287890000000002
	.quad	0x4004741fa7653437              # double 2.5567009999999999
	.quad	0x3fe8a91d9b1b79d9              # double 0.770644
	.quad	0x3ff66a8869c66d37              # double 1.4010089999999999
	.quad	0x4010297aeddce7cd              # double 4.040508
	.quad	0x401fb9310129cbab              # double 7.9308509999999996
	.quad	0x400ccef1bac2df0d              # double 3.6010469999999999
	.quad	0x3ff4780cb6c7a7ca              # double 1.279309
	.quad	0x4023e96cc5fbf834              # double 9.9559080000000008
	.quad	0x401e3f2b239a38fc              # double 7.5616880000000002
	.quad	0x40173920c069e7fb              # double 5.8057889999999999
	.quad	0x401c36dce39b456b              # double 7.0535769999999998
	.quad	0x401e59a88ace24bc              # double 7.5875570000000003
	.quad	0x40212a45d41fa765              # double 8.5825639999999996
	.quad	0x4006d0196d8f4f94              # double 2.8516110000000001
	.quad	0x402075cb9a9da598              # double 8.2300690000000003
	.quad	0x40123b107746887b              # double 4.5576800000000004
	.quad	0x3fe40b8066c2acb8              # double 0.62640399999999996
	.quad	0x401f4d362e903644              # double 7.8254020000000004
	.quad	0x4021daf20ea5b531              # double 8.9276280000000003
	.quad	0x401915b39e279dd4              # double 6.2711930000000002
	.quad	0x4013333acd5b6806              # double 4.8000290000000003
	.quad	0x4023c7160956c0d7              # double 9.88884
	.quad	0x401b54c729f59cd0              # double 6.8327910000000003
	.quad	0x401b5807fed20297              # double 6.8359680000000003
	.quad	0x3ffbb8ceb356da01              # double 1.7326189999999999
	.quad	0x40166316e3715400              # double 5.5967669999999998
	.quad	0x3feb805e5f30e7ff              # double 0.85941999999999996
	.quad	0x400c5c36113404ea              # double 3.5450249999999999
	.quad	0x4022831a6d698fe7              # double 9.2560610000000008
	.quad	0x401ed20ccff21b3b              # double 7.705127
	.quad	0x401bebb1f255f352              # double 6.9801710000000003
	.quad	0x40224098d477bbf9              # double 9.1261659999999996
	.quad	0x40233dfe974a3401              # double 9.6210830000000004
	.quad	0x40228109aed56b01              # double 9.252027
	.quad	0x40147513b5bf6a0e              # double 5.1143330000000002
	.quad	0x401dade2ef4e0115              # double 7.4198110000000002
	.quad	0x400143cc8de2ac32              # double 2.1581049999999999
	.quad	0x402066e0b0af5fd4              # double 8.2009329999999991
	.quad	0x40041db7f1737543              # double 2.5145110000000002
	.quad	0x402011d8409e55c1              # double 8.034853
	.quad	0x401f1f4a98aa8651              # double 7.780558
	.quad	0x401147ae9ab29e4d              # double 4.3200019999999997
	.quad	0x40101e279dd3bafe              # double 4.0294480000000004
	.quad	0x40232b49e01de269              # double 9.5845479999999998
	.quad	0x3fed720ea5b530cf              # double 0.92017300000000002
	.quad	0x40104cb6848beb5b              # double 4.0749149999999998
	.quad	0x3fcd2f6e82949a56              # double 0.22800999999999999
	.quad	0x40186daa92e62132              # double 6.1070960000000003
	.quad	0x4022f1148fd9fd37              # double 9.47086
	.quad	0x3fe337a80cf9e386              # double 0.60054399999999997
	.quad	0x4009452502eec7c9              # double 3.1587619999999998
	.quad	0x40164d2d87f88766              # double 5.5753690000000002
	.quad	0x401755c0b9991362              # double 5.8337430000000001
	.quad	0x40199390c9107faa              # double 6.394107
	.quad	0x40140b530ced4e4d              # double 5.0110590000000004
	.quad	0x401a379aae6c8f75              # double 6.5543009999999997
	.quad	0x4014a51159c49774              # double 5.1611989999999999
	.quad	0x3ffde8ccdd93c46e              # double 1.8693360000000001
	.quad	0x3ff46e72da122fad              # double 1.2769649999999999
	.quad	0x40235022bbecaab9              # double 9.6565150000000006
	.quad	0x3ffb7168f8e7ddca              # double 1.7151879999999999
	.quad	0x40230a539756c93a              # double 9.5201689999999992
	.quad	0x4020b4343b70ef56              # double 8.3519609999999993
	.quad	0x3fd110ecb74ddf87              # double 0.26665800000000001
	.quad	0x400042aa9f7b5aea              # double 2.0325519999999999
	.quad	0x401136a444178705              # double 4.3033609999999998
	.quad	0x40194043e5321e60              # double 6.3127589999999998
	.quad	0x401340485a0be511              # double 4.8127760000000004
	.quad	0x3fd25b899392189c              # double 0.28683700000000001
	.quad	0x4022b5933e35c5b5              # double 9.3546390000000005
	.quad	0x401b7613d31b9b67              # double 6.86531
	.quad	0x401e7451b93037d6              # double 7.6135929999999998
	.quad	0x3fe5a5657fb69985              # double 0.67644000000000004
	.quad	0x402290e68e3ef284              # double 9.2830089999999998
	.quad	0x4023c376b3bb83cf              # double 9.8817649999999996
	.quad	0x40172ad8e4324420              # double 5.7918430000000001
	.quad	0x4022d02d38476f2a              # double 9.4065949999999994
	.quad	0x401cc5d63886594b              # double 7.1932
	.quad	0x40135bce8533b107              # double 4.8396549999999996
	.quad	0x3fdf2278d0cc35ce              # double 0.48647899999999999
	.quad	0x4016f61522a6f3f5              # double 5.7403149999999998
	.quad	0x401f6f623076c051              # double 7.8587730000000002
	.quad	0x4020258c8eef1bac              # double 8.0733379999999996
	.quad	0x40084bfca85caafc              # double 3.0371030000000001
	.quad	0x40085a0f9096bb99              # double 3.0439750000000001
	.quad	0x400ce9435ac8a372              # double 3.6138979999999998
	.quad	0x4015279aae6c8f75              # double 5.2886759999999997
	.quad	0x40124d1d041cc533              # double 4.5753060000000003
	.quad	0x3fd5e29307af20ea              # double 0.34195399999999998
	.quad	0x3ffecc521dda059a              # double 1.9248829999999999
	.quad	0x401834d2f5dbb9d0              # double 6.0515860000000004
	.quad	0x3fed9d1b2e59af9f              # double 0.92542800000000003
	.quad	0x401ea86bdf4c2b52              # double 7.6644740000000002
	.quad	0x40227e5ffa3b9ae1              # double 9.2468260000000004
	.quad	0x40212d6adf71eaff              # double 8.5887060000000002
	.quad	0x4023bc34a01abd1b              # double 9.8675890000000006
	.quad	0x3ffd0b47c73eee52              # double 1.8152539999999999
	.quad	0x4020c4cf0739b025              # double 8.3843920000000001
	.quad	0x401f5949a5657fb7              # double 7.8371950000000003
	.quad	0x40167bdf8f473040              # double 5.6209699999999998
	.quad	0x40169849cb252ce0              # double 5.6487189999999998
	.quad	0x401c5f31f46ed246              # double 7.0929640000000003
	.quad	0x40197459103c8e26              # double 6.3636210000000002
	.quad	0x401ce2a737110e45              # double 7.2213409999999998
	.quad	0x401dc88333fc86cf              # double 7.4458130000000002
	.quad	0x3ffb6cb74ddf86e4              # double 1.7140420000000001
	.quad	0x4000ad5cfaacd9e8              # double 2.0846499999999999
	.quad	0x400236e1deacc921              # double 2.2767979999999999
	.quad	0x400195a7d24180d4              # double 2.1980740000000001
	.size	.L__constant_4000xf64, 32000

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
